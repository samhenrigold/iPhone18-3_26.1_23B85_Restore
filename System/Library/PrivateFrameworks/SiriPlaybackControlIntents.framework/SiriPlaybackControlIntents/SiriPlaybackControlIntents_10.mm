void sub_2689A51F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();
  [a3 setTargetBundleIdentifier_];
}

void sub_2689A5248(uint64_t a1, void *a2, uint64_t (*a3)(void), SEL *a4)
{
  a3(0);
  v6 = sub_268B37CE4();
  [a2 *a4];
}

void *sub_2689A52C0(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v15 = type metadata accessor for AnalyticsServiceImpl();
  v16 = &off_2879539D0;
  v14[0] = a1;
  type metadata accessor for ContextUtil();
  v7 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v10 = OUTLINED_FUNCTION_78_3(v9);
  v11(v10);
  v12 = sub_2689A5578(*v3, a2, a3, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return v12;
}

uint64_t sub_2689A5424()
{

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2689A5470(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 472))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_2689A54B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 472) = 1;
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

    *(result + 472) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2689A5578(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  v8 = sub_268B376A4();
  v9 = MEMORY[0x277D5F928];
  a4[15] = v8;
  a4[16] = v9;
  a4[12] = a3;
  a4[5] = type metadata accessor for AnalyticsServiceImpl();
  a4[6] = &off_2879539D0;
  a4[2] = a1;
  a4[17] = &unk_28794F398;
  a4[18] = &unk_28794F3D8;
  sub_2688E6514(a2, (a4 + 7));
  return a4;
}

uint64_t objectdestroy_18Tm()
{
  v1 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 488) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_2689A57B0()
{
  OUTLINED_FUNCTION_29_5();
  v2 = sub_268B35494();
  OUTLINED_FUNCTION_19_0(v2);
  OUTLINED_FUNCTION_28_7();
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v1 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v1 + v5);

  return v11(v0, v1 + 16, v1 + v3, v7, v8, v9);
}

uint64_t sub_2689A585C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2689A5894()
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();

  v0 = OUTLINED_FUNCTION_57_2();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2689A58E8()
{
  sub_268B36FD4();
  OUTLINED_FUNCTION_11_13();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_2689A598C(uint64_t a1, unint64_t a2)
{
  v5 = sub_268B36FD4();
  OUTLINED_FUNCTION_19_0(v5);
  OUTLINED_FUNCTION_28_7();
  v8 = *(v2 + v7);
  v9 = v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_2689A3630(a1, a2, v2 + v6, v8, v10, v11);
}

uint64_t sub_2689A5A68(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), void *a5, uint64_t a6)
{
  v119 = a3;
  v120 = a6;
  v128 = a4;
  v118 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  MEMORY[0x28223BE20](v8 - 8);
  v111 = &v109 - v9;
  v112 = sub_268B371E4();
  v115 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v11 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_268B37A54();
  v13 = *(v12 - 1);
  v14 = MEMORY[0x28223BE20](v12);
  v117 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v109 = &v109 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v110 = &v109 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  i = &v109 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v116 = &v109 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v109 - v25;
  if (qword_2802A4F30 != -1)
  {
LABEL_55:
    swift_once();
  }

  v27 = __swift_project_value_buffer(v12, qword_2802CDA10);
  v28 = *(v13 + 16);
  v122 = v27;
  v123 = v28;
  v124 = v13 + 16;
  v28(v26);
  v29 = a1;
  v30 = sub_268B37A34();
  v31 = sub_268B37F04();

  v32 = os_log_type_enabled(v30, v31);
  v130 = v12;
  v127 = v13;
  v113 = i;
  v114 = v11;
  if (v32)
  {
    v33 = a5;
    v34 = v13;
    v35 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v131[0] = v12;
    *v35 = 136315138;
    swift_getObjectType();
    v36 = sub_268B385B4();
    v11 = v37;
    v38 = sub_26892CDB8(v36, v37, v131);

    *(v35 + 4) = v38;
    _os_log_impl(&dword_2688BB000, v30, v31, "Smart selecting devices for intent: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x26D6266E0](v12, -1, -1);
    MEMORY[0x26D6266E0](v35, -1, -1);

    v39 = v34;
    a5 = v33;
    v126 = *(v39 + 8);
    v126(v26, v130);
  }

  else
  {

    v126 = *(v13 + 8);
    v126(v26, v12);
  }

  v40 = sub_268B18100(v29);
  v41 = MEMORY[0x277D84F90];
  if (v40)
  {
    v13 = v40;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v121 = v29;
  v42 = sub_268B18140(v29);
  if (v42)
  {
    v43 = v42;
  }

  else
  {
    v43 = v41;
  }

  v125 = v43;
  v44 = sub_2688EFD0C();
  v129 = a5;
  if (v44 == 1 && sub_2688EFD0C())
  {
    sub_2688EFD10();
    if ((v13 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x26D625BD0](0, v13);
    }

    else
    {
      v45 = *(v13 + 32);
    }

    v46 = v45;
    v47 = v117;
    v48 = sub_26892D418(v45);
    if (v49)
    {
      v50 = v48;
      v51 = v49;

      v52 = v130;
      v123(v47, v122, v130);

      v53 = sub_268B37A34();
      v54 = sub_268B37F04();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v131[0] = v56;
        *v55 = 136315138;
        v57 = sub_26892CDB8(v50, v51, v131);

        *(v55 + 4) = v57;
        _os_log_impl(&dword_2688BB000, v53, v54, "Intent already has device with destinationDeviceId: %s, returning it", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v56);
        MEMORY[0x26D6266E0](v56, -1, -1);
        MEMORY[0x26D6266E0](v55, -1, -1);
      }

      else
      {
      }

      v126(v47, v52);
      sub_268983D74(v125);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_268B3BBA0;
      *(v99 + 32) = v46;
      v100 = v46;
      v128(v99, 0);
    }
  }

  a1 = sub_2688EFD0C();
  for (i = 0; a1 != i; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x26D625BD0](i, v13);
    }

    else
    {
      if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v58 = *(v13 + 8 * i + 32);
    }

    a5 = v58;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v11 = [v58 isPreResolved];
    v26 = sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
    v59 = sub_268B38054();
    v12 = v59;
    if (v11)
    {
      v26 = sub_268B38074();

      if (v26)
      {

        v76 = v116;
        v77 = v130;
        v123(v116, v122, v130);

        v78 = sub_268B37A34();
        v79 = sub_268B37F04();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v131[0] = v81;
          *v80 = 136315138;
          v82 = type metadata accessor for Device();
          v83 = MEMORY[0x26D6256F0](v13, v82);
          v85 = sub_26892CDB8(v83, v84, v131);

          *(v80 + 4) = v85;
          _os_log_impl(&dword_2688BB000, v78, v79, "Devices are pre-resolved, skipping smart selection, and returning devices: %s", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v81);
          MEMORY[0x26D6266E0](v81, -1, -1);
          MEMORY[0x26D6266E0](v80, -1, -1);
        }

        v126(v76, v77);
        v128(v13, 0);
      }
    }

    else
    {
    }
  }

  v60 = v121;
  if (sub_268921060())
  {
    v61 = sub_268B18120(v60);
    v63 = v128;
    v62 = v129;
    if (v61)
    {
      v64 = v61;
      v65 = v110;
      v66 = v130;
      v123(v110, v122, v130);
      v67 = sub_268B37A34();
      v68 = sub_268B37F04();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v131[0] = v70;
        *v69 = 136315138;
        v71 = type metadata accessor for DeviceQuery();
        v72 = MEMORY[0x26D6256F0](v64, v71);
        v74 = sub_26892CDB8(v72, v73, v131);

        *(v69 + 4) = v74;
        _os_log_impl(&dword_2688BB000, v67, v68, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v70);
        MEMORY[0x26D6266E0](v70, -1, -1);
        MEMORY[0x26D6266E0](v69, -1, -1);

        v75 = v110;
      }

      else
      {

        v75 = v65;
      }

      v126(v75, v66);
      sub_268920A60();

      v108 = swift_allocObject();
      *(v108 + 16) = v63;
      *(v108 + 24) = v62;

      sub_2688F80CC();
    }

    else
    {

      v102 = v109;
      v123(v109, v122, v130);
      v103 = sub_268B37A34();
      v104 = sub_268B37EE4();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_2688BB000, v103, v104, "DeviceSelectingUtil#smartSelect WHA request, but could not get any deviceQueries in the intent.", v105, 2u);
        MEMORY[0x26D6266E0](v105, -1, -1);
      }

      v126(v102, v130);
      return v63(0, 2);
    }
  }

  else
  {
    v86 = v113;
    v87 = v130;
    v123(v113, v122, v130);
    v88 = sub_268B37A34();
    v89 = sub_268B37F04();
    v90 = os_log_type_enabled(v88, v89);
    v92 = v128;
    v91 = v129;
    if (v90)
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_2688BB000, v88, v89, "DeviceSelectingUtil#smartSelect intent has no target entities. Going down the select route", v93, 2u);
      MEMORY[0x26D6266E0](v93, -1, -1);
    }

    v126(v86, v87);
    v94 = sub_268B18120(v60);
    v96 = v114;
    v95 = v115;
    if (v94)
    {
      v131[0] = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B58, &unk_268B3C660);
      sub_268918DC0();
      sub_2689A7B24(&qword_2802A5B68, type metadata accessor for DeviceQuery, &protocol conformance descriptor for DeviceQuery);
      v97 = v111;
      sub_268B37E84();

      v98 = v112;
      __swift_storeEnumTagSinglePayload(v97, 0, 1, v112);
      (*(v95 + 32))(v96, v97, v98);
    }

    else
    {
      v106 = v111;
      v98 = v112;
      __swift_storeEnumTagSinglePayload(v111, 1, 1, v112);
      sub_268B37164();
      if (__swift_getEnumTagSinglePayload(v106, 1, v98) != 1)
      {
        sub_2689A7CD8(v106, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    v107 = swift_allocObject();
    *(v107 + 16) = v92;
    *(v107 + 24) = v91;

    sub_2688F4CD4();

    return (*(v95 + 8))(v96, v98);
  }
}

uint64_t sub_2689A6840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v11 = &off_2879539D0;
  v9[0] = a2;

  sub_268AD488C();
  sub_268AD54B8(a1, v5);
  v7 = v6;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  sub_2688EFD0C();

  sub_2688EFD0C();
  sub_26894AE34();

  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  return v7;
}

uint64_t sub_2689A6974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v73 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v72 = &v71 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v71 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v81 = &v71 - v19;
  v88 = type metadata accessor for AnalyticsServiceImpl();
  v89 = &off_2879539D0;
  v87[0] = a2;
  v20 = *__swift_project_boxed_opaque_existential_1(v87, v88);

  v21 = a3;
  v22 = v18;
  v23 = sub_2689A6840(a1, v20, v21);
  v86 = MEMORY[0x277D84F90];
  v24 = sub_2688EFD0C();
  v25 = 0;
  v83 = v23 & 0xC000000000000001;
  v84 = v24;
  v82 = v23 & 0xFFFFFFFFFFFFFF8;
  v26 = (v8 + 16);
  v80 = (v8 + 8);
  *&v27 = 136315138;
  v77 = v27;
  v75 = v23;
  v76 = v7;
  v74 = (v8 + 16);
  v78 = v18;
  v79 = v14;
  while (v84 != v25)
  {
    if (v83)
    {
      v28 = MEMORY[0x26D625BD0](v25, v23);
    }

    else
    {
      if (v25 >= *(v82 + 16))
      {
        goto LABEL_38;
      }

      v28 = *(v23 + 8 * v25 + 32);
    }

    v3 = v28;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
LABEL_31:
      v63 = __swift_project_value_buffer(v7, qword_2802CDA10);
      (*v26)(v3, v63, v7);
      v53 = sub_268B37A34();
      v54 = sub_268B37EC4();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v86 = v56;
        *v55 = v77;
        v64 = type metadata accessor for DeviceContext();

        v66 = MEMORY[0x26D6256F0](v65, v64);
        v68 = v67;

        v69 = sub_26892CDB8(v66, v68, &v86);

        *(v55 + 4) = v69;
        v62 = "Selecting most recent resumable deviceContexts: %s";
LABEL_33:
        _os_log_impl(&dword_2688BB000, v53, v54, v62, v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v56);
        MEMORY[0x26D6266E0](v56, -1, -1);
        MEMORY[0x26D6266E0](v55, -1, -1);
      }

      goto LABEL_35;
    }

    v29 = [v28 nowPlayingTimestamp];
    if (v29)
    {
      v30 = v29;
      sub_268B345D4();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = sub_268B34614();
    __swift_storeEnumTagSinglePayload(v22, v31, 1, v32);
    v33 = v81;
    sub_2688EF3EC(v22, v81);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v32);
    sub_2689A7CD8(v33, &unk_2802A7350, qword_268B3FF10);
    if (EnumTagSinglePayload == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v7, qword_2802CDA10);
      (*v26)(v14, v35, v7);
      v3 = v3;
      v36 = sub_268B37A34();
      v37 = sub_268B37EE4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v85 = v39;
        *v38 = v77;
        v40 = [v3 description];
        v41 = sub_268B37BF4();
        v43 = v42;

        v44 = sub_26892CDB8(v41, v43, &v85);
        v45 = v80;
        v23 = v75;

        *(v38 + 4) = v44;
        v26 = v74;
        _os_log_impl(&dword_2688BB000, v36, v37, "Item: %s has invalid timestamp. Discarding...", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        MEMORY[0x26D6266E0](v39, -1, -1);
        v46 = v38;
        v7 = v76;
        MEMORY[0x26D6266E0](v46, -1, -1);

        (*v45)(v79, v7);
        v14 = v79;
      }

      else
      {

        (*v80)(v14, v7);
      }

      v22 = v78;
    }

    else
    {
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    ++v25;
  }

  if (sub_2688EFD0C())
  {

    v86 = sub_268AE11A4(v47);
    sub_2689A4164(&v86);

    v48 = v86;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v48 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x26D625BD0](0, v48);
      }

      else
      {
        v49 = *(v48 + 32);
      }

      v50 = v49;
      v86 = v49;
      MEMORY[0x28223BE20](v49);
      *(&v71 - 2) = &v86;
      sub_2688C8F30(sub_2689A7CA0, (&v71 - 4), v48);
      v23 = v51;
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    v3 = v73;
    if (qword_2802A4F30 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v52 = __swift_project_value_buffer(v7, qword_2802CDA10);
  v3 = v72;
  (*v26)(v72, v52, v7);

  v53 = sub_268B37A34();
  v54 = sub_268B37F04();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v86 = v56;
    *v55 = v77;
    v57 = type metadata accessor for DeviceContext();
    v58 = MEMORY[0x26D6256F0](v23, v57);
    v60 = v59;

    v61 = sub_26892CDB8(v58, v60, &v86);

    *(v55 + 4) = v61;
    v62 = "Found no resumable contexts with valid timestamps. Returning all resumable without timestamp filtration: %s";
    goto LABEL_33;
  }

LABEL_35:
  (*v80)(v3, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  return v23;
}

uint64_t sub_2689A7230()
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();

  return MEMORY[0x2821FE8E8](v0, 504, 7);
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 504) & ~v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2689A737C()
{
  OUTLINED_FUNCTION_29_5();
  v2 = sub_268B35494();
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v1 + 488);
  v5 = *(v1 + 496);
  v6 = v1 + ((*(v3 + 80) + 504) & ~*(v3 + 80));

  return v8(v0, v1 + 16, v4, v5, v6);
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(type metadata accessor for MediaPlayerIntent(0) - 8);
  v2 = *(v1 + 80);
  v32 = *(v1 + 64);
  v3 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v6 = *(v4 + 80);
  v31 = *(v7 + 64);
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();
  v8 = sub_268B35984();
  if (!OUTLINED_FUNCTION_18_5(v8))
  {
    OUTLINED_FUNCTION_16_10();
    v9 = OUTLINED_FUNCTION_46_4();
    v10(v9);
  }

  v11 = sub_268B37924();
  if (!OUTLINED_FUNCTION_18_5(v11))
  {
    OUTLINED_FUNCTION_16_10();
    v12 = OUTLINED_FUNCTION_46_4();
    v13(v12);
  }

  v14 = sub_268B37124();
  if (!OUTLINED_FUNCTION_18_5(v14))
  {
    OUTLINED_FUNCTION_16_10();
    v15 = OUTLINED_FUNCTION_46_4();
    v16(v15);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  if (!OUTLINED_FUNCTION_18_5(v17))
  {
    OUTLINED_FUNCTION_16_10();
    v18 = OUTLINED_FUNCTION_46_4();
    v19(v18);
  }

  v20 = sub_268B37464();
  if (!OUTLINED_FUNCTION_18_5(v20))
  {
    OUTLINED_FUNCTION_16_10();
    v21 = OUTLINED_FUNCTION_46_4();
    v22(v21);
  }

  v23 = sub_268B37034();
  if (!OUTLINED_FUNCTION_18_5(v23))
  {
    OUTLINED_FUNCTION_16_10();
    v24 = OUTLINED_FUNCTION_46_4();
    v25(v24);
  }

  v26 = sub_268B378F4();
  if (!OUTLINED_FUNCTION_18_5(v26))
  {
    OUTLINED_FUNCTION_16_10();
    v27 = OUTLINED_FUNCTION_46_4();
    v28(v27);
  }

  v29 = (((v32 + ((v2 + 488) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6;

  (*(v5 + 8))(v0 + v29, v3);

  return MEMORY[0x2821FE8E8](v0, ((v31 + v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v6 | 7);
}

uint64_t sub_2689A779C()
{
  v2 = OUTLINED_FUNCTION_29_5();
  v3 = type metadata accessor for MediaPlayerIntent(v2);
  OUTLINED_FUNCTION_19_0(v3);
  v5 = (*(v4 + 80) + 488) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_268B35494();
  OUTLINED_FUNCTION_19_0(v8);
  OUTLINED_FUNCTION_28_7();
  v10 = *(v1 + v7);
  v12 = (v1 + v11);
  v13 = *v12;
  v14 = v12[1];

  return v16(v0, v1 + 16, v1 + v5, v10, v1 + v9, v13, v14);
}

uint64_t objectdestroy_55Tm()
{
  v1 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 496) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t sub_2689A798C()
{
  v0 = sub_268B35494();
  OUTLINED_FUNCTION_19_0(v0);
  OUTLINED_FUNCTION_28_7();
  v1 = OUTLINED_FUNCTION_52_4();

  return sub_26899E978(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_2689A7A18()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 168));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 248));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 288));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 328));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 368));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 408));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 464));

  v1 = OUTLINED_FUNCTION_57_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2689A7AD0()
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();

  v1 = OUTLINED_FUNCTION_57_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2689A7B24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2689A7B6C()
{
  v0 = sub_268B35494();
  OUTLINED_FUNCTION_19_0(v0);
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_52_4();
  sub_26899F21C();
}

uint64_t sub_2689A7BE4()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 25);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 30);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 35);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 40);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 45);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 50);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 57);

  return MEMORY[0x2821FE8E8](v0, 504, 7);
}

void sub_2689A7CC0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2689A7CD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11_13();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_85Tm()
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_42_2();

  return MEMORY[0x2821FE8E8](v0, 488, 7);
}

unint64_t sub_2689A7D70(unint64_t result)
{
  if (!(result >> 62))
  {
  }

  return result;
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

uint64_t sub_2689A7DE4()
{
  OUTLINED_FUNCTION_29_5();
  v0 = sub_268B37A24();
  OUTLINED_FUNCTION_19_0(v0);
  v1 = OUTLINED_FUNCTION_34_2();

  return v2(v1);
}

uint64_t objectdestroy_6Tm_0()
{
  sub_268B37A24();
  OUTLINED_FUNCTION_11_13();
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

uint64_t sub_2689A7EF8()
{
  OUTLINED_FUNCTION_29_5();
  v0 = sub_268B37A24();
  OUTLINED_FUNCTION_19_0(v0);
  v1 = OUTLINED_FUNCTION_34_2();

  return v2(v1);
}

uint64_t OUTLINED_FUNCTION_1_24()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);
}

uint64_t OUTLINED_FUNCTION_6_15()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
}

uint64_t OUTLINED_FUNCTION_18_5(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_33_5()
{
  v1 = *(v0 - 104);
  __swift_project_boxed_opaque_existential_1((v0 - 128), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_36_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_268B379F4();
}

uint64_t OUTLINED_FUNCTION_40_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_2()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 440));
}

uint64_t OUTLINED_FUNCTION_50_3(uint64_t a1)
{

  return sub_268B37FF4();
}

uint64_t OUTLINED_FUNCTION_60_1()
{
  result = v0;
  *(v2 - 112) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_67_2(uint64_t a1)
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_79_2(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

void *OUTLINED_FUNCTION_80_3(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 192), 0x1D8uLL);
}

uint64_t sub_2689A8424()
{
  sub_268B36314();
  if (!v3)
  {
    return 26;
  }

  v0 = sub_268B35EC4();

  if (!v0)
  {
    return 26;
  }

  v1 = sub_268A6A3CC();

  return v1;
}

uint64_t sub_2689A848C()
{
  sub_268B36314();
  if (v3 && (v0 = sub_26893B978(), , (v0 & 1) != 0))
  {
    v1 = 1;
  }

  else
  {
    sub_268B36314();
    if (v3)
    {
      v1 = sub_26893BA00();
    }

    else
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

Swift::String_optional __swiftcall UsoTask_shuffle_common_MediaItem.verb()()
{
  v0 = 0x656C6666756873;
  v1 = 0xE700000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_shuffle_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
      }

      sub_268B35B44();

      return v2;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2689A85FC()
{
  v0 = sub_2689A8424();
  if (v0 == 26)
  {
    goto LABEL_11;
  }

  if (sub_268942D54(v0) == 0x636973756DLL && v1 == 0xE500000000000000)
  {
  }

  else
  {
    v3 = sub_268B38444();

    if ((v3 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_268B36314();
  if (!v6)
  {
LABEL_11:
    v4 = 0;
    return v4 & 1;
  }

  v4 = sub_26893B978();

  return v4 & 1;
}

uint64_t sub_2689A8718(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2689A876C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2689A87C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689A8814(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689A8868(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689A88BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689A8910(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689A8964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689A89C8(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689A8A1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689A8A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689A8AE4(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689A8B48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2689A8BAC(uint64_t a1)
{
  result = sub_2689A8C58(&qword_2802A6978, &protocol conformance descriptor for UsoTask_shuffle_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689A8C58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B361E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2689A8C9C(uint64_t a1)
{
  v2 = v1;
  sub_2689A8E58(a1);
  sub_2689A9194(a1, v2);
  sub_2689A9558(a1);
  v4 = type metadata accessor for MediaPlayerIntent(0);
  v5 = 0;
  v6 = 0;
  if (*(a1 + v4[12]) != 26)
  {
    v5 = sub_268942D54(*(a1 + v4[12]));
  }

  [v2 setMediaType_];
  if (*(a1 + v4[26] + 8))
  {
    v7 = sub_268B37BC4();
  }

  else
  {
    v7 = 0;
  }

  [v2 setTargetBundleIdentifier_];

  v8 = *(a1 + v4[14]);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for ControlsSettingAttribute();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = (v8 + 32);
    do
    {
      v13 = *v12++;
      v14 = objc_allocWithZone(ObjCClassFromMetadata);
      v15 = sub_26893A824(0, 0, 0, 0xE000000000000000);
      if (v13)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      [v15 setSettingName_];
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      --v9;
    }

    while (v9);
    v10 = v17;
  }

  sub_2689828C4(v10, v2);
}

uint64_t sub_2689A8E58(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MediaPlayerIntent(0);
  v22 = sub_2689A9870(&qword_2802A56B0, &unk_268B3E7C0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  sub_268946C8C(a1, boxed_opaque_existential_1);
  sub_2689A9870(&qword_2802A58E0, &unk_268B3E718);
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_268B37A34();
    v9 = sub_268B37F04();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2688BB000, v8, v9, "Found home automation nodes, attempting to map them to SiriKit intent", v10, 2u);
      MEMORY[0x26D6266E0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_268B3BBA0;
    v12 = __swift_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v12);
    v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14);
    *(v11 + 32) = sub_268A91478(v14);
    v16 = off_287959E70;
    v17 = type metadata accessor for ResumeMediaIntent();
    v16(v11, v17, &off_287959E50);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}

void sub_2689A9194(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = var50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MediaPlayerIntent(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v11);
  v12 = &v11[*(v9 + 100)];
  v14 = *v12;
  v13 = v12[1];

  sub_2688C2F6C(v11);
  if (v13)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v7, v15, v4);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Found destination device id in the intent. parsing the routes and setting disambiguated to true", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19 = sub_268B18100(a2);
    if (v19)
    {
      v20 = v19;
      if (sub_2688EFD0C())
      {
        sub_2688EFD10();
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x26D625BD0](0, v20);
        }

        else
        {
          v21 = *(v20 + 32);
        }

        v22 = v21;

        v23 = sub_268B37BC4();

        [v22 setRouteId_];

        sub_2688C063C();
        v24 = sub_268B38054();
        [v22 setDisambiguated_];

        goto LABEL_13;
      }
    }

    type metadata accessor for Device();
    LOBYTE(v31) = 0;
    sub_268983F14(v14, v13, 0, 0, 0, 0, 0, 0, 0, v31, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], vars8);
    v26 = v25;
    sub_2688C063C();
    v27 = sub_268B38054();
    [v26 setDisambiguated_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268B3BBA0;
    *(v28 + 32) = v26;
    v29 = off_287959E70;
    v30 = type metadata accessor for ResumeMediaIntent();
    v24 = v26;
    v29(v28, v30, &off_287959E50);
LABEL_13:
  }
}

void sub_2689A9558(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v8);
  sub_2689A9870(&qword_2802A58E0, &unk_268B3E718);
  v9 = sub_268B37854();
  sub_2688C2F6C(v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v11 = v9 + 32;
    do
    {
      sub_26890C900(v11, v21);
      sub_26890C900(v21, v20);
      sub_268AC88F0(v20);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v11 += 40;
      --v10;
    }

    while (v10);

    v12 = v22;
    v13 = off_28795BAF8;
    v14 = type metadata accessor for ResumeMediaIntent();
    v13(v12, v14, &off_28795BAE8);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37ED4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Home Automation entities are empty, skip adding to intent.", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_2689A9870(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MediaPlayerIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2689A98CC(uint64_t a1)
{
  result = sub_2689ABAD4(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_2689ABB14(result, v3, 0, a1);
  }
}

id sub_2689A994C(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_268B382A4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_2688EFD10();
  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x26D625BD0](0, a1);
  }

  else
  {
    return *(a1 + 32);
  }
}

double sub_2689A99C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_26890C900(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2689A9A04(uint64_t a1, uint64_t (*a2)(void))
{
  result = sub_2689ABB90(a1);
  if (v6)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return a2();
  }
}

uint64_t sub_2689A9A8C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t HomeAutomationCapableIntent.homeName.getter()
{
  if (qword_2802A4D90 != -1)
  {
    swift_once();
  }

  sub_268B35C64();
  return v1;
}

uint64_t sub_2689A9C70(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  return sub_268B35C74();
}

uint64_t HomeAutomationCapableIntent.fromEntities.getter(char *a1, unint64_t a2)
{
  v96 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6138, &qword_268B3E820);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v3);
  v5 = &v74 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6140, &qword_268B3E828);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  v90 = &v74 - v8;
  v91 = sub_268B37054();
  OUTLINED_FUNCTION_1();
  v88 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v81 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v74 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6148, &qword_268B3E830);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20_0();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA0, qword_268B3DE28);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v25);
  v27 = &v74 - v26;
  v94 = sub_268B37074();
  OUTLINED_FUNCTION_1();
  v82 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_20_0();
  v80 = (v30 - v31);
  MEMORY[0x28223BE20](v32);
  v79 = &v74 - v33;
  v98 = sub_268B35B14();
  OUTLINED_FUNCTION_1();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v39 = v38 - v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6150, qword_268B412C0);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v41);
  v43 = &v74 - v42;
  v44 = sub_268B35C14();
  OUTLINED_FUNCTION_1();
  v84 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_0();
  v83 = v48 - v47;
  if (qword_2802A4DB8 != -1)
  {
LABEL_26:
    swift_once();
  }

  sub_268B35C54();
  if (__swift_getEnumTagSinglePayload(v43, 1, v44) != 1)
  {
    v93 = v20;
    v89 = v15;
    v87 = v5;
    v50 = *(v84 + 32);
    v97 = v44;
    v50(v83, v43, v44);
    v43 = sub_268B35C04();
    v15 = 0;
    v95 = v35 + 16;
    v96 = *(v43 + 2);
    v86 = (v88 + 32);
    v76 = (v88 + 16);
    v92 = *MEMORY[0x277D5E5C8];
    v85 = (v88 + 8);
    v20 = (v35 + 8);
    v75 = (v82 + 32);
    v88 = MEMORY[0x277D84F90];
    v5 = v94;
    while (1)
    {
      v51 = v97;
      if (v96 == v15)
      {

        (*(v84 + 8))(v83, v51);
        return v88;
      }

      if (v15 >= *(v43 + 2))
      {
        __break(1u);
        goto LABEL_26;
      }

      (*(v35 + 16))(v39, &v43[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v15], v98);
      sub_268B35A64();
      v52 = sub_268B35A44();
      v44 = 1;
      if (__swift_getEnumTagSinglePayload(v23, 1, v52) != 1)
      {
        break;
      }

LABEL_14:
      __swift_storeEnumTagSinglePayload(v27, v44, 1, v5);
      sub_2688EF38C(v23, &qword_2802A6148, &qword_268B3E830);
      (*v20)(v39, v98);
      if (__swift_getEnumTagSinglePayload(v27, 1, v5) == 1)
      {
        sub_2688EF38C(v27, &qword_2802A5FA0, qword_268B3DE28);
        ++v15;
      }

      else
      {
        v68 = *v75;
        (*v75)(v79, v27, v5);
        v78 = v68;
        v68(v80, v79, v5);
        v69 = v88;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2689874FC();
          v69 = v72;
        }

        v44 = *(v69 + 16);
        v70 = *(v69 + 24);
        v88 = v69;
        if (v44 >= v70 >> 1)
        {
          sub_2689874FC();
          v88 = v73;
        }

        ++v15;
        v71 = v88;
        *(v88 + 16) = v44 + 1;
        v78(v71 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v44, v80, v5);
      }
    }

    sub_2689AB648(v23, v93);
    v53 = OUTLINED_FUNCTION_179();
    v55 = v54(v53);
    if (v55 == v92)
    {
      v56 = OUTLINED_FUNCTION_179();
      v57(v56);
      v58 = v90;
      sub_268B37044();
      v59 = v91;
      if (__swift_getEnumTagSinglePayload(v58, 1, v91) == 1)
      {
        sub_2688EF38C(v58, &qword_2802A6140, &qword_268B3E828);
      }

      else
      {
        (*v86)(v89, v58, v59);
        v62 = v87;
        sub_268B359E4();
        v63 = v59;
        v64 = sub_268B359C4();
        if (__swift_getEnumTagSinglePayload(v62, 1, v64) != 1)
        {
          v78 = sub_268B359B4();
          v77 = v65;
          (*(*(v64 - 8) + 8))(v62, v64);
          (*v76)(v81, v89, v91);
          sub_268B37064();
          v66 = OUTLINED_FUNCTION_179();
          v67(v66);
          v44 = 0;
          goto LABEL_13;
        }

        sub_2688EF38C(v62, &qword_2802A6138, &qword_268B3E820);
        (*v85)(v89, v63);
      }
    }

    else
    {
      v60 = OUTLINED_FUNCTION_179();
      v61(v60);
    }

    v44 = 1;
LABEL_13:
    v5 = v94;
    goto LABEL_14;
  }

  sub_2688EF38C(v43, &qword_2802A6150, qword_268B412C0);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2689AA64C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  return sub_268B35C64();
}

uint64_t HomeAutomationCapableIntent.destinationDeviceId.getter()
{
  v0 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  if (qword_2802A4DC8 != -1)
  {
    swift_once();
  }

  sub_268B35C64();
  v7 = v16;
  if (v17)
  {
    sub_2689AB6B8();
    OUTLINED_FUNCTION_0_3();
    v8 = swift_allocObject();
    *(v8 + 16) = v16;
    *(v8 + 24) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A80, &qword_268B42590);
    sub_268B38024();

    if (!v16 || (v7 = sub_2689A9A04(v16, sub_2689ABA58), v10 = v9, , !v10))
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v11 = __swift_project_value_buffer(v0, qword_2802CDA10);
      (*(v2 + 16))(v6, v11, v0);
      v12 = sub_268B37A34();
      v13 = sub_268B37EE4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2688BB000, v12, v13, "Failed to decode destinationDeviceId", v14, 2u);
        MEMORY[0x26D6266E0](v14, -1, -1);
      }

      (*(v2 + 8))(v6, v0);
      return 0;
    }
  }

  return v7;
}

uint64_t HomeAutomationCapableIntent.reference.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_268B37924();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_2689AA9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_268B374D4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_0_3();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  sub_268B374C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_268B3BBC0;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;

  sub_268B374B4();

  return (*(v10 + 8))(v14, v8);
}

uint64_t sub_2689AAB04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_6_16(18, v1);
  qword_2802A6990 = result;
  return result;
}

uint64_t sub_2689AAB7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(18, v1);
  qword_2802A6998 = result;
  return result;
}

uint64_t sub_2689AABF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_6_16(18, v1);
  qword_2802A69A0 = result;
  return result;
}

uint64_t sub_2689AAC6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_6_16(27, v1);
  qword_2802A69A8 = result;
  return result;
}

uint64_t sub_2689AACE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_6_16(25, v1);
  qword_2802A69B0 = result;
  return result;
}

uint64_t sub_2689AAD5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(26, v1);
  qword_2802A69B8 = result;
  return result;
}

uint64_t sub_2689AADD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(24, v1);
  qword_2802A69C0 = result;
  return result;
}

uint64_t sub_2689AAE4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AA0, &unk_268B4B530);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_6_16(30, v1);
  qword_2802A69C8 = result;
  return result;
}

uint64_t sub_2689AAEC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(19, v1);
  qword_2802A69D0 = result;
  return result;
}

uint64_t sub_2689AAF3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A98, &unk_268B414C0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_6_16(28, v1);
  qword_2802A69D8 = result;
  return result;
}

uint64_t sub_2689AAFB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A90, &qword_268B4B540);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(23, v1);
  qword_2802A69E0 = result;
  return result;
}

uint64_t sub_2689AB02C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2689AB078(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D5F748];
  v5 = sub_2689ABC4C(&qword_2802A6A70, MEMORY[0x277D5F748], &protocol conformance descriptor for DeviceType);
  v6 = sub_2689ABC4C(&qword_2802A6A78, v4, MEMORY[0x277D5F768]);
  v7 = sub_2689ABC4C(&qword_2802A6A80, v4, MEMORY[0x277D5F760]);

  return MEMORY[0x2821C21F8](a1, a2, v5, v6, v7);
}

uint64_t sub_2689AB168(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D5F9D0];
  v5 = sub_2689ABC4C(&qword_2802A6A58, MEMORY[0x277D5F9D0], &protocol conformance descriptor for PlaceHint);
  v6 = sub_2689ABC4C(&qword_2802A6A60, v4, MEMORY[0x277D5F9F0]);
  v7 = sub_2689ABC4C(&qword_2802A6A68, v4, MEMORY[0x277D5F9E8]);

  return MEMORY[0x2821C21F8](a1, a2, v5, v6, v7);
}

uint64_t sub_2689AB258(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D5F880];
  v5 = sub_2689ABC4C(&qword_2802A6A40, MEMORY[0x277D5F880], &protocol conformance descriptor for DeviceQuantifier);
  v6 = sub_2689ABC4C(&qword_2802A6A48, v4, MEMORY[0x277D5F8A0]);
  v7 = sub_2689ABC4C(&qword_2802A6A50, v4, MEMORY[0x277D5F898]);

  return MEMORY[0x2821C21F8](a1, a2, v5, v6, v7);
}

uint64_t sub_2689AB348(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D5FA18];
  v5 = sub_2689ABC4C(&qword_2802A6A28, MEMORY[0x277D5FA18], &protocol conformance descriptor for Reference);
  v6 = sub_2689ABC4C(&qword_2802A6A30, v4, MEMORY[0x277D5FA38]);
  v7 = sub_2689ABC4C(&qword_2802A6A38, v4, MEMORY[0x277D5FA30]);

  return MEMORY[0x2821C21F8](a1, a2, v5, v6, v7);
}

uint64_t sub_2689AB4A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v24 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = *(*(result + 48) + 16 * v12);
    v15 = (*(result + 56) + 16 * v12);
    v17 = *v15;
    v16 = v15[1];

    v18 = sub_268A75754(v14);
    v20 = v19;

    if ((v20 & 1) == 0)
    {

      return 0;
    }

    v21 = (*(a2 + 56) + 16 * v18);
    if (*v21 == v17 && v21[1] == v16)
    {

      result = v13;
      v7 = v24;
    }

    else
    {
      v23 = sub_268B38444();

      result = v13;
      v7 = v24;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v24 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2689AB648(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6148, &qword_268B3E830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2689AB6B8()
{
  result = qword_2802A5C90;
  if (!qword_2802A5C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A5C90);
  }

  return result;
}

uint64_t sub_2689AB6FC()
{

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

_BYTE *storeEnumTagSinglePayload for HomeAutomationNodes(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2689ABA20);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2689ABA58(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2689ABB14(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2689ABBD0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2689ABC4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2689ABC94()
{

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_6_16(uint64_t a1, uint64_t a2)
{

  return sub_268B35784();
}

uint64_t OUTLINED_FUNCTION_7_13(uint64_t a1, uint64_t a2)
{

  return sub_268B35784();
}

unint64_t sub_2689ABD04()
{
  OUTLINED_FUNCTION_71_3();
  v0 = sub_268B382F4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2689ABD4C(unsigned __int8 a1)
{
  if (a1 >= 5u)
  {
    return 3;
  }

  else
  {
    return (0x102000303uLL >> (8 * a1));
  }
}

uint64_t sub_2689ABE3C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_14(a1);
  OUTLINED_FUNCTION_1_26(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_268B37C54();
  return sub_268B38544();
}

uint64_t sub_2689ABF08(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_14(a1);
  sub_268B37C54();
  return sub_268B38544();
}

uint64_t sub_2689ABFA4(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_11_14(a1);
  a2(v5, a1);
  return sub_268B38544();
}

uint64_t sub_2689ABFEC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_14(a1);
  OUTLINED_FUNCTION_1_26(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_268B37C54();
  return sub_268B38544();
}

uint64_t sub_2689AC064(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_11_14(a1);
  v4 = a2(a1);
  OUTLINED_FUNCTION_12_11(v4, v5, v6);

  return sub_268B38544();
}

uint64_t sub_2689AC0C4(uint64_t a1)
{
  OUTLINED_FUNCTION_11_14(a1);
  MEMORY[0x26D625F10](a1);
  return sub_268B38544();
}

uint64_t sub_2689AC104(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_4_14();
  }

  else
  {
    OUTLINED_FUNCTION_7_14();
  }

  sub_268B37C54();
}

uint64_t sub_2689AC1A4(uint64_t a1, unsigned __int8 a2)
{
  sub_268B37C54();
}

uint64_t sub_2689AC234(uint64_t a1, char a2)
{
  sub_268B37C54();
}

uint64_t sub_2689AC28C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_7_14();
      break;
    default:
      break;
  }

  sub_268B37C54();
}

uint64_t sub_2689AC350(uint64_t a1, unsigned __int8 a2)
{
  sub_268B37C54();
}

uint64_t sub_2689AC3C4(uint64_t a1, char a2)
{
  sub_268B37C54();
}

uint64_t sub_2689AC440(uint64_t a1, char a2)
{
  sub_268B37C54();
}

uint64_t sub_2689AC4A8(uint64_t a1, char a2)
{
  sub_268B37C54();
}

uint64_t sub_2689AC55C(uint64_t a1, unsigned __int8 a2)
{
  sub_268B37C54();
}

uint64_t sub_2689AC5E0(uint64_t a1, char a2)
{
  sub_268B37C54();
}

uint64_t sub_2689AC6D0(uint64_t a1, char a2)
{
  sub_268B37C54();
}

uint64_t sub_2689AC738(uint64_t a1, char a2)
{
  sub_268B37C54();
}

uint64_t sub_2689AC84C(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_14_8();
  }

  sub_268B37C54();
}

uint64_t sub_2689AC8C8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_16_11();
      break;
    default:
      break;
  }

  sub_268B37C54();
}

uint64_t sub_2689AC978(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_3_18();
  }

  sub_268B37C54();
}

uint64_t sub_2689AC9FC(uint64_t a1, char a2)
{
  sub_268B37C54();
}

uint64_t sub_2689ACA70(uint64_t a1, char a2)
{
  sub_268B37C54();
}

uint64_t sub_2689ACBA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_268B37C54();
}

uint64_t sub_2689ACC6C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_11(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 6647407;
    }

    else
    {
      v5 = 7105633;
    }
  }

  else
  {
    v5 = 1701736302;
  }

  OUTLINED_FUNCTION_6_17(v3, v5, v4);

  return sub_268B38544();
}

uint64_t sub_2689ACCE4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_11(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x6165705365766F6DLL;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_18();
  }

  OUTLINED_FUNCTION_6_17(v3, v5, v4);

  return sub_268B38544();
}

uint64_t sub_2689ACD84(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_11(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x6563696F76;
    }

    else
    {
      v5 = 0x707954616964656DLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_8();
  }

  OUTLINED_FUNCTION_6_17(v3, v5, v4);

  return sub_268B38544();
}

uint64_t sub_2689ACE4C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_11(a1, a2);
  if (v2)
  {
    v5 = 0x746F6C5F61;
  }

  else
  {
    v5 = 0x656C7474696C5F61;
  }

  OUTLINED_FUNCTION_6_17(v3, v5, v4);

  return sub_268B38544();
}

uint64_t sub_2689ACEB8(uint64_t a1)
{
  v1 = sub_268B38514();
  OUTLINED_FUNCTION_1_26(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_268B37C54();
  return sub_268B38544();
}

uint64_t sub_2689ACF34(uint64_t a1, char a2)
{
  v3 = sub_268B38514();
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x746174735F746567;
    }

    else
    {
      v5 = 0x6174735F646C6F68;
    }
  }

  else
  {
    v5 = 0x746174735F746573;
  }

  OUTLINED_FUNCTION_6_17(v3, v5, v4);

  return sub_268B38544();
}

uint64_t sub_2689ACFE4(uint64_t a1, char a2)
{
  sub_268B38514();
  sub_268B37C54();

  return sub_268B38544();
}

uint64_t sub_2689AD060(uint64_t a1)
{
  v1 = sub_268B38514();
  OUTLINED_FUNCTION_1_26(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_268B37C54();
  return sub_268B38544();
}

uint64_t sub_2689AD0AC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_11(a1, a2);
  if (v2)
  {
    v5 = 0x676E69646E65;
  }

  else
  {
    v5 = 0x6E69616761;
  }

  OUTLINED_FUNCTION_6_17(v3, v5, v4);

  return sub_268B38544();
}

uint64_t sub_2689AD114(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_11(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 28526;
    }

    else
    {
      v5 = 0x6C65636E6163;
    }
  }

  else
  {
    v5 = 7562617;
  }

  OUTLINED_FUNCTION_6_17(v3, v5, v4);

  return sub_268B38544();
}

uint64_t sub_2689AD1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268B38514();
  sub_268B37C54();
  return sub_268B38544();
}

uint64_t sub_2689AD208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_268B38514();
  a3(v6, a2);
  return sub_268B38544();
}

uint64_t sub_2689AD254(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_11(a1, a2);
  if (v2)
  {
    v5 = 6710895;
  }

  else
  {
    v5 = 28271;
  }

  OUTLINED_FUNCTION_6_17(v3, v5, v4);

  return sub_268B38544();
}

uint64_t sub_2689AD2B0(uint64_t a1, char a2)
{
  sub_268B38514();
  sub_268B37C54();

  return sub_268B38544();
}

uint64_t sub_2689AD354(uint64_t a1, uint64_t a2)
{
  sub_268B38514();
  MEMORY[0x26D625F10](a2);
  return sub_268B38544();
}

uint64_t sub_2689AD3B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_268B38514();
  v5 = a3(a2);
  OUTLINED_FUNCTION_12_11(v5, v6, v7);

  return sub_268B38544();
}

uint64_t sub_2689AD404(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_11(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_4_14();
  }

  else
  {
    OUTLINED_FUNCTION_7_14();
  }

  OUTLINED_FUNCTION_6_17(v3, v4, v5);

  return sub_268B38544();
}

uint64_t sub_2689AD4A4()
{
  OUTLINED_FUNCTION_71_3();
  v0 = sub_268B382F4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2689AD4F0(char a1)
{
  if (a1)
  {
    return 0x79616C70726961;
  }

  else
  {
    return 0x6465657073;
  }
}

unint64_t sub_2689AD524(char a1)
{
  result = 0x656C746974627573;
  switch(a1)
  {
    case 1:
      result = 25443;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0x6F69647561;
      break;
    case 4:
      result = 25697;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2689AD5C0()
{
  OUTLINED_FUNCTION_71_3();
  v0 = sub_268B382F4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2689AD608(uint64_t a1, uint64_t a2, void *a3)
{
  v52[0] = a1;
  v52[1] = a2;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v8 = sub_268B36F64();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v9 = sub_268B36F54();
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v7, v10, v4);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109376;
    *(v13 + 4) = v8 & 1;
    *(v13 + 8) = 1024;
    *(v13 + 10) = v9 & 1;
    _os_log_impl(&dword_2688BB000, v11, v12, "isSiriXEnabled: %{BOOL}d, isSiriXv2Enabled: %{BOOL}d", v13, 0xEu);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AB8, &qword_268B41688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3DE10;
  strcpy((inited + 32), "uso_NoEntity");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AC0, &qword_268B41690);
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_13_9(v15, xmmword_268B414D0);
  v16[2].n128_u64[0] = v17;
  v16[2].n128_u64[1] = 0xE600000000000000;
  v16[3].n128_u8[0] = v8 & 1;
  v16[3].n128_u64[1] = 1886352499;
  v16[4].n128_u64[0] = 0xE400000000000000;
  v16[4].n128_u8[8] = v8 & 1;
  v16[5].n128_u64[0] = 0x6573756170;
  v16[5].n128_u64[1] = 0xE500000000000000;
  v16[6].n128_u8[0] = v8 & 1;
  v16[6].n128_u64[1] = 0x77726F4670696B73;
  v16[7].n128_u64[0] = 0xEB00000000647261;
  v16[7].n128_u8[8] = v8 & 1;
  strcpy(&v16[8], "skipBackward");
  v16[8].n128_u8[13] = 0;
  v16[8].n128_u16[7] = -5120;
  v16[9].n128_u8[0] = v8 & 1;
  v16[9].n128_u64[1] = 0x656C6666756873;
  v16[10].n128_u64[0] = 0xE700000000000000;
  v18 = v9 & 1;
  v16[10].n128_u8[8] = v18;
  OUTLINED_FUNCTION_8_11();
  *(v19 + 176) = v20;
  *(v19 + 184) = 0xE600000000000000;
  *(v19 + 192) = v18;
  OUTLINED_FUNCTION_17_9();
  *(v21 + 200) = v22;
  *(v21 + 208) = v23;
  *(v21 + 216) = v18;
  *(v21 + 224) = 2036427888;
  *(v21 + 232) = v24;
  *(v21 + 240) = v18;
  OUTLINED_FUNCTION_0_22();
  *(inited + 48) = v25;
  *(inited + 56) = v26;
  *(inited + 64) = v27;
  v28 = swift_allocObject();
  v29 = OUTLINED_FUNCTION_13_9(v28, xmmword_268B414E0);
  v29[2].n128_u64[0] = v30;
  v29[2].n128_u64[1] = 0xE600000000000000;
  v29[3].n128_u8[0] = v8 & 1;
  v29[3].n128_u64[1] = 0x6573756170;
  v29[4].n128_u64[0] = 0xE500000000000000;
  v29[4].n128_u8[8] = v8 & 1;
  v29[5].n128_u64[0] = 0x77726F4670696B73;
  v29[5].n128_u64[1] = 0xEB00000000647261;
  v29[6].n128_u8[0] = v8 & 1;
  strcpy(&v29[6].n128_i8[8], "skipBackward");
  v29[7].n128_u8[5] = 0;
  v29[7].n128_u16[3] = -5120;
  v29[7].n128_u8[8] = v8 & 1;
  v29[8].n128_u64[0] = 0x6F546B656573;
  v29[8].n128_u64[1] = 0xE600000000000000;
  v29[9].n128_u8[0] = v18;
  strcpy(&v29[9].n128_i8[8], "seekBackward");
  v29[10].n128_u8[5] = 0;
  v29[10].n128_u16[3] = -5120;
  v29[10].n128_u8[8] = v18;
  v29[11].n128_u64[0] = 0x77726F466B656573;
  v29[11].n128_u64[1] = 0xEB00000000647261;
  v29[12].n128_u8[0] = v18;
  v29[12].n128_u64[1] = 0x627265566F6ELL;
  v29[13].n128_u64[0] = 0xE600000000000000;
  v29[13].n128_u8[8] = v8 & 1;
  v29[14].n128_u64[0] = 2036427888;
  v29[14].n128_u64[1] = 0xE400000000000000;
  v29[15].n128_u8[0] = v18;
  OUTLINED_FUNCTION_8_11();
  *(v31 + 248) = v32;
  *(v31 + 256) = 0xE600000000000000;
  *(v31 + 264) = v18;
  OUTLINED_FUNCTION_17_9();
  *(v33 + 272) = v34;
  *(v33 + 280) = 0xE700000000000000;
  *(v33 + 288) = v18;
  *(v33 + 296) = 0x726566736E617274;
  *(v33 + 304) = 0xE800000000000000;
  *(v33 + 312) = v18;
  *(v33 + 320) = 0x657461647075;
  *(v33 + 328) = 0xE600000000000000;
  *(v33 + 336) = v18;
  OUTLINED_FUNCTION_5_6();
  *(v36 + 344) = v35 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
  *(v36 + 352) = 0xED0000676E697474;
  *(v36 + 360) = v18;
  strcpy((v36 + 368), "disableSetting");
  *(v36 + 383) = -18;
  *(v36 + 384) = v18;
  *(v36 + 392) = 1886352499;
  *(v36 + 400) = v37;
  *(v36 + 408) = v18;
  *(v36 + 416) = 0x736972616D6D7573;
  *(v36 + 424) = 0xE900000000000065;
  *(v36 + 432) = v18;
  *(v36 + 440) = 0x74736575716572;
  *(v36 + 448) = v38;
  *(v36 + 456) = v18;
  *(v36 + 464) = 0x7365757165726E75;
  *(v36 + 472) = 0xE900000000000074;
  *(v36 + 480) = v18;
  *(v36 + 488) = 1701079400;
  *(v36 + 496) = v37;
  *(v36 + 504) = v18;
  OUTLINED_FUNCTION_15_11();
  *(inited + 72) = v39;
  *(inited + 80) = v40;
  *(inited + 88) = v41;
  *(swift_allocObject() + 16) = xmmword_268B3C0C0;
  OUTLINED_FUNCTION_5_6();
  *(v42 + 32) = v43;
  *(v42 + 40) = 0xE600000000000000;
  *(v42 + 48) = v18;
  *(v42 + 56) = 0x656C6261736964;
  *(v42 + 64) = 0xE700000000000000;
  *(v42 + 72) = v18;
  OUTLINED_FUNCTION_16_11();
  *(v45 + 80) = v44 + 2309;
  *(v45 + 88) = 0xEA00000000007942;
  *(v45 + 96) = v18;
  *(v45 + 104) = v44;
  *(v45 + 112) = 0xEA00000000007942;
  *(v45 + 120) = v18;
  *(v45 + 128) = 0x627265566F6ELL;
  *(v45 + 136) = 0xE600000000000000;
  *(v45 + 144) = v18;
  *(v45 + 152) = 0x65626D754E746573;
  *(v45 + 160) = 0xE900000000000072;
  *(v45 + 168) = v18;
  OUTLINED_FUNCTION_0_22();
  *(inited + 96) = v47;
  *(inited + 104) = v46 | 3;
  *(inited + 112) = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_268B3BBC0;
  *(v49 + 32) = 0x656C6261736964;
  *(v49 + 40) = 0xE700000000000000;
  *(v49 + 48) = v18;
  *(inited + 120) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AC8, &qword_268B41698);
  sub_268B37B84();
  v50 = sub_26892E7B4();

  if (v50)
  {
    return v50;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2689ADC68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
  result = sub_268B37B84();
  qword_2802CD938 = result;
  return result;
}

uint64_t sub_2689ADCB8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v3 = sub_268B36F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AB8, &qword_268B41688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBD0;
  OUTLINED_FUNCTION_0_22();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AC0, &qword_268B41690);
  *(swift_allocObject() + 16) = xmmword_268B3BBC0;
  OUTLINED_FUNCTION_8_11();
  *(v9 + 32) = v8 & 0xFFFFFFFFFFFFLL | 0x7541000000000000;
  *(v9 + 40) = 0xEB000000006F6964;
  v3 &= 1u;
  *(v9 + 48) = v3;
  OUTLINED_FUNCTION_15_11();
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  *(inited + 64) = 0xEE00676E69747465;
  *(swift_allocObject() + 16) = xmmword_268B3DE10;
  OUTLINED_FUNCTION_5_6();
  *(v12 + 32) = v13;
  *(v12 + 40) = 0xE600000000000000;
  *(v12 + 48) = v3;
  *(v12 + 56) = 0x656C6261736964;
  *(v12 + 64) = 0xE700000000000000;
  *(v12 + 72) = v3;
  *(v12 + 80) = 0x627265566F6ELL;
  *(v12 + 88) = 0xE600000000000000;
  *(v12 + 96) = v3;
  *(v12 + 104) = 7628147;
  *(v12 + 112) = 0xE300000000000000;
  *(v12 + 120) = v3;
  *(inited + 72) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AC8, &qword_268B41698);
  sub_268B37B84();
  v14 = sub_26892E7B4();

  if (v14)
  {
    return v14;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2689ADE94(char a1)
{
  if (a1)
  {
    return 0x707954616964656DLL;
  }

  else
  {
    return 0x656D756C6F76;
  }
}

uint64_t sub_2689ADEF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2689AD4A4();
  *a1 = result;
  return result;
}

uint64_t sub_2689ADF28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2689AD4F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

SiriPlaybackControlIntents::Domain_optional __swiftcall Domain.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_71_3();
  v2 = v1;
  v3 = sub_268B382F4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Domain.rawValue.getter()
{
  v1 = 0x616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x73676E6974746573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616C50616964656DLL;
  }
}

unint64_t sub_2689AE01C()
{
  result = qword_2802A6AA8;
  if (!qword_2802A6AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6AA8);
  }

  return result;
}

uint64_t sub_2689AE094@<X0>(uint64_t *a1@<X8>)
{
  result = Domain.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Domain(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2689AE188);
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

_BYTE *storeEnumTagSinglePayload for UsoMediaSettingName(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2689AE28CLL);
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

unint64_t sub_2689AE2C8()
{
  result = qword_2802A6AB0;
  if (!qword_2802A6AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6AB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_17(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_268B37C54();
}

void *OUTLINED_FUNCTION_9_11(uint64_t a1, uint64_t a2, ...)
{

  return sub_268B38514();
}

void *OUTLINED_FUNCTION_11_14(uint64_t a1, ...)
{

  return sub_268B38514();
}

uint64_t OUTLINED_FUNCTION_12_11(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_268B37C54();
}

unint64_t sub_2689AE4EC(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_2689AE524(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33[2] = a7;
  v34 = a1;
  v38 = a5;
  v39 = a4;
  v37 = a11;
  v35 = a3;
  v36 = a9;
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v20 = __swift_project_value_buffer(v14, qword_2802CDA10);
  (*(v16 + 16))(v19, v20, v14);

  v21 = sub_268B37A34();
  v22 = sub_268B37F04();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_172_0();
    v33[1] = a8;
    v24 = v23;
    v25 = OUTLINED_FUNCTION_173_0();
    v33[0] = a12;
    v26 = v25;
    v40 = v25;
    *v24 = 136446210;
    v27 = v34;
    *(v24 + 4) = sub_26892CDB8(v34, a2, &v40);
    _os_log_impl(&dword_2688BB000, v21, v22, "Setting sash applicationBundleIdentifier to: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v28 = OUTLINED_FUNCTION_138();
    v29(v28);
  }

  else
  {

    v30 = OUTLINED_FUNCTION_138();
    v31(v30);
    v27 = v34;
  }

  v32 = v35;
  sub_268AEBF54(v27, a2, v35);
  [v39 setSash_];
  sub_268AEC3BC();
}

uint64_t sub_2689AE780(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);

  sub_268B36DB4();
}

uint64_t sub_2689AE868()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2689AE8A0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_2689AE8D8(uint64_t a1, uint8_t *a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t), uint64_t a7, void *a8)
{
  v82 = a8;
  v89 = a6;
  v90 = a7;
  v87 = a5;
  v88 = a4;
  v78 = type metadata accessor for SnippetModelContext(0);
  MEMORY[0x28223BE20](v78);
  v77 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B36A54();
  OUTLINED_FUNCTION_1();
  v91 = v13;
  v92 = v12;
  v14 = MEMORY[0x28223BE20](v12);
  v81 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v15;
  MEMORY[0x28223BE20](v14);
  v93 = &v75 - v16;
  v17 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  v21 = MEMORY[0x28223BE20](v20);
  v79 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v75 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v75 - v26;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v76 = v25;
  v28 = __swift_project_value_buffer(v17, qword_2802CDA10);
  v29 = *(v19 + 16);
  v83 = v28;
  v84 = v29;
  (v29)(v27);

  v30 = sub_268B37A34();
  v31 = sub_268B37F04();

  v32 = os_log_type_enabled(v30, v31);
  v86 = v19;
  if (v32)
  {
    v33 = OUTLINED_FUNCTION_172_0();
    v85 = a3;
    v34 = v33;
    v35 = v19;
    v36 = OUTLINED_FUNCTION_173_0();
    *&v95[0] = v36;
    *v34 = 136446210;
    *(v34 + 4) = sub_26892CDB8(a1, a2, v95);
    _os_log_impl(&dword_2688BB000, v30, v31, "MediaControlsViewProvider.mediaPlayerSnippetModel creating mediaPlayerModel snippet with applicationBundleIdentifier: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    OUTLINED_FUNCTION_12();
    a3 = v85;
    OUTLINED_FUNCTION_12();

    v37 = *(v35 + 8);
  }

  else
  {

    v37 = *(v19 + 8);
  }

  v38 = OUTLINED_FUNCTION_138();
  v37(v38);
  v39 = v93;
  v40 = v88;
  sub_2689AF054(a1, a2, a3, v93);
  v41 = v87;
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  if (sub_268B34C84())
  {
    v42 = v76;
    v84(v76, v83, v17);
    v43 = sub_268B37A34();
    v44 = sub_268B37ED4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "MediaControlsViewProvider.mediaPlayerSnippetModel retuning snippet and no correspondingSessionID for xrOS", v45, 2u);
      OUTLINED_FUNCTION_12();
    }

    (v37)(v42, v17);
    v46 = v91;
    v47 = v77;
    v48 = v39;
    v49 = v39;
    v50 = v92;
    (*(v91 + 16))(v77, v48, v92);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v50);
    v51 = (v47 + *(v78 + 20));
    *v51 = 0;
    v51[1] = 0;
    v89(v47);
    sub_2689B0974(v47);
    return (*(v46 + 8))(v49, v50);
  }

  sub_268B36C54();
  if (sub_268B36C24() == a3 && v53 == v40)
  {

    goto LABEL_17;
  }

  v55 = sub_268B38444();

  if (v55)
  {
LABEL_17:
    a3 = sub_268B37BF4();
    v40 = v56;
    goto LABEL_18;
  }

LABEL_18:
  v57 = a3;
  v58 = v79;
  v84(v79, v83, v17);

  v59 = sub_268B37A34();
  v60 = sub_268B37ED4();

  v61 = os_log_type_enabled(v59, v60);
  v85 = v57;
  if (v61)
  {
    v62 = v58;
    v63 = OUTLINED_FUNCTION_172_0();
    v64 = OUTLINED_FUNCTION_173_0();
    *&v95[0] = v64;
    *v63 = 136315138;
    *(v63 + 4) = sub_26892CDB8(v57, v40, v95);
    _os_log_impl(&dword_2688BB000, v59, v60, "MediaControlsViewProvider.mediaPlayerSnippetModel routeId: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v65 = v62;
  }

  else
  {

    v65 = v58;
  }

  (v37)(v65, v17);
  v66 = v82;
  v67 = v82[3];
  v88 = v82[4];
  __swift_project_boxed_opaque_existential_1(v82, v67);
  sub_26890C900(v41, v95);
  sub_26890C900(v66, v94);
  v69 = v91;
  v68 = v92;
  v70 = v81;
  v71 = v93;
  (*(v91 + 16))(v81, v93, v92);
  v72 = (*(v69 + 80) + 112) & ~*(v69 + 80);
  v73 = swift_allocObject();
  sub_2688E6514(v95, v73 + 16);
  sub_2688E6514(v94, v73 + 56);
  v74 = v90;
  *(v73 + 96) = v89;
  *(v73 + 104) = v74;
  (*(v69 + 32))(v73 + v72, v70, v68);

  sub_268B36DF4();

  return (*(v69 + 8))(v71, v68);
}

uint64_t sub_2689AF054@<X0>(uint64_t a1@<X0>, uint8_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v48 = a5;
  v5 = sub_268B36A84();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B36AD4();
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AD0, &qword_268B416A8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AD8, &qword_268B416B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v41 - v15;
  v17 = sub_268B37A54();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  if (sub_2689B006C())
  {
    v24 = v8;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v17, qword_2802CDA10);
    (*(v18 + 16))(v23, v25, v17);
    v26 = sub_268B37A34();
    v27 = sub_268B37ED4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "MediaControlsViewProvider.mediaPlayerSnippet creating empty media player snippet", v28, 2u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    (*(v18 + 8))(v23, v17);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v24);
    v29 = sub_268B36A64();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v29);
    v30 = v48;
    sub_268B36A74();
  }

  else
  {

    sub_2689AFCA0(v42, v43);
    sub_268B36AC4();
    v31 = v45;
    (*(v45 + 16))(v16, v10, v8);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v8);
    v32 = sub_268B36A64();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v32);
    sub_268B36A74();
    v33 = v8;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v17, qword_2802CDA10);
    (*(v18 + 16))(v21, v34, v17);
    v35 = sub_268B37A34();
    v36 = sub_268B37ED4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2688BB000, v35, v36, "MediaControlsViewProvider.mediaPlayerSnippet creating media player snippet", v37, 2u);
      MEMORY[0x26D6266E0](v37, -1, -1);
    }

    (*(v18 + 8))(v21, v17);
    (*(v31 + 8))(v10, v33);
    v30 = v48;
    (*(v46 + 32))(v48, v7, v47);
  }

  v38 = *MEMORY[0x277D55548];
  v39 = sub_268B36A54();
  return (*(*(v39 - 8) + 104))(v30, v38, v39);
}

uint64_t sub_2689AF5F4(char a1, void *a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v45 = a6;
  v46 = a5;
  v10 = type metadata accessor for SnippetModelContext(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_268B37A54();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  if ((a1 & 1) != 0 && (v20 = sub_2689AFA98(1, a2, a3), v21))
  {
    v22 = v21;
    v44 = v20;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v13, qword_2802CDA10);
    (*(v14 + 16))(v19, v23, v13);

    v24 = sub_268B37A34();
    v25 = sub_268B37ED4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = a4;
      v28 = v27;
      v47 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_26892CDB8(v44, v22, &v47);
      _os_log_impl(&dword_2688BB000, v24, v25, "MediaControlsViewProvider.mediaPlayerSnippetModel returning snippet with sessionID: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      v29 = v28;
      a4 = v43;
      MEMORY[0x26D6266E0](v29, -1, -1);
      MEMORY[0x26D6266E0](v26, -1, -1);

      v30 = v44;
      (*(v14 + 8))(v19, v13);
    }

    else
    {

      (*(v14 + 8))(v19, v13);
      v30 = v44;
    }

    v39 = sub_268B36A54();
    (*(*(v39 - 8) + 16))(v12, v45, v39);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v39);
    v40 = &v12[*(v10 + 20)];
    *v40 = v30;
    v40[1] = v22;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v13, qword_2802CDA10);
    (*(v14 + 16))(v17, v31, v13);
    v32 = sub_268B37A34();
    v33 = sub_268B37ED4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = a4;
      v35 = swift_slowAlloc();
      *v35 = 67109120;
      *(v35 + 4) = a1 & 1;
      _os_log_impl(&dword_2688BB000, v32, v33, "MediaControlsViewProvider.mediaPlayerSnippetModel returning snippet and no correspondingSessionID. Either shouldSuppress is set to false or Siri failed to acquire UIAssertion. shouldSuppress: %{BOOL}d", v35, 8u);
      v36 = v35;
      a4 = v34;
      MEMORY[0x26D6266E0](v36, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    v37 = sub_268B36A54();
    (*(*(v37 - 8) + 16))(v12, v45, v37);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v37);
    v38 = &v12[*(v10 + 20)];
    *v38 = 0;
    *(v38 + 1) = 0;
  }

  a4(v12);
  return sub_2689B0974(v12);
}

uint64_t sub_2689AFA98(char a1, void *a2, void *a3)
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (sub_268B34C84())
  {
    return 0;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_268B37A34();
  v12 = sub_268B37ED4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_2688BB000, v11, v12, "MediaControlsViewProvider#fetchSessionIDIfNeeded shouldSuppressSnippet: %{BOOL}d", v13, 8u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_268B36E04();
}

uint64_t sub_2689AFCA0(uint64_t a1, uint8_t *a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  if (qword_2802A4F40 != -1)
  {
    swift_once();
  }

  v11 = qword_2802CDA30;
  if (a2)
  {
    v12 = qword_2802CDA30 == a1 && *algn_2802CDA38 == a2;
    if (v12 || (sub_268B38444() & 1) != 0)
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v4, qword_2802CDA10);
      (*(v5 + 16))(v10, v13, v4);
      v8 = sub_268B37A34();
      a1 = sub_268B37ED4();
      if (os_log_type_enabled(v8, a1))
      {
        a2 = swift_slowAlloc();
        *a2 = 0;
        _os_log_impl(&dword_2688BB000, v8, a1, "PlayMediaIOSSnippetModelProvider#getBundleIdForSnippet returning MediaRemote system media application identifier for apple music.", a2, 2u);
        MEMORY[0x26D6266E0](a2, -1, -1);
      }

      v14 = *(v5 + 8);
      v5 += 8;
      v14(v10, v4);
      v15 = *MEMORY[0x277D27E58];
      if (*MEMORY[0x277D27E58])
      {
        goto LABEL_27;
      }

      __break(1u);
    }
  }

  if (qword_2802A4F48 == -1)
  {
    if (a2)
    {
      goto LABEL_17;
    }

LABEL_30:

    return v11;
  }

  swift_once();
  if (!a2)
  {
    goto LABEL_30;
  }

LABEL_17:
  v16 = qword_2802CDA40 == a1 && *algn_2802CDA48 == a2;
  if (!v16 && (sub_268B38444() & 1) == 0)
  {

    return a1;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v8, v17, v4);
  v18 = sub_268B37A34();
  v19 = sub_268B37ED4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "PlayMediaIOSSnippetModelProvider#getBundleIdForSnippet returning MediaRemote system podcast application identifier for apple podcast.", v20, 2u);
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  result = (*(v5 + 8))(v8, v4);
  v15 = *MEMORY[0x277D27E60];
  if (*MEMORY[0x277D27E60])
  {
LABEL_27:
    v22 = v15;
    return sub_268B37C14();
  }

  __break(1u);
  return result;
}

uint64_t sub_2689B006C()
{
  v0 = sub_268B37A54();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() isSystemApertureAvailable];
  sub_268B36754();
  if (sub_268B36734())
  {
    sub_268B36714();

    v5 = sub_268B36B04();
  }

  else
  {
    v5 = 0;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_2802CDA10);
  (*(v1 + 16))(v3, v6, v0);
  v7 = sub_268B37A34();
  v8 = sub_268B37ED4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v4;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v5 & 1;
    _os_log_impl(&dword_2688BB000, v7, v8, "MediaControlsViewProvider.isSystemApertureEnabledOrIsInAmbient isSystemApertureEnabled = %{BOOL}d, isInAmbient = %{BOOL}d", v9, 0xEu);
    MEMORY[0x26D6266E0](v9, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return (v4 | v5) & 1;
}

uint64_t sub_2689B0288(char a1, void *a2, void *a3, void *a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v57 = a6;
  v58 = a5;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  v19 = sub_2689AFA98(a1, a2, a3);
  if (v20)
  {
    sub_2689B071C(v19, v20, a4);
    sub_268AEBEF0(0xD000000000000016, 0x8000000268B59110, a4);
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v21 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v55 = *(v12 + 16);
  v55(v18, v21, v10);
  v22 = a4;
  v23 = sub_268B37A34();
  v24 = sub_268B37F04();
  v59 = v22;

  v25 = os_log_type_enabled(v23, v24);
  v56 = v12;
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_172_0();
    v54 = v21;
    v27 = v26;
    v28 = OUTLINED_FUNCTION_173_0();
    v60 = v28;
    *v27 = 136315138;
    v29 = sub_2689B0780(v59);
    if (!v30)
    {
      v29 = 7104878;
    }

    v31 = v10;
    v32 = v16;
    if (v30)
    {
      v33 = v30;
    }

    else
    {
      v33 = 0xE300000000000000;
    }

    v34 = sub_26892CDB8(v29, v33, &v60);
    v16 = v32;
    v10 = v31;

    *(v27 + 4) = v34;
    _os_log_impl(&dword_2688BB000, v23, v24, "MediaControlsViewProvider#suppressSnippetIfNeeded snippet sessionID: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    v35 = v56;
    OUTLINED_FUNCTION_12();
    v21 = v54;
    OUTLINED_FUNCTION_12();

    v36 = *(v35 + 8);
    v36(v18, v31);
  }

  else
  {

    v36 = *(v12 + 8);
    v37 = OUTLINED_FUNCTION_138();
    v36(v37, v38);
  }

  v55(v16, v21, v10);
  v39 = v59;
  v40 = sub_268B37A34();
  v41 = sub_268B37F04();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_172_0();
    v43 = OUTLINED_FUNCTION_173_0();
    v60 = v43;
    *v42 = 136315138;
    v44 = sub_268AEBFAC(v39);
    if (!v45)
    {
      v44 = 7104878;
    }

    v46 = v16;
    if (v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = 0xE300000000000000;
    }

    v48 = sub_26892CDB8(v44, v47, &v60);

    *(v42 + 4) = v48;
    _os_log_impl(&dword_2688BB000, v40, v41, "MediaControlsViewProvider#suppressSnippetIfNeeded snippet viewId: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v49 = v46;
  }

  else
  {

    v49 = v16;
  }

  v36(v49, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_268B3BBA0;
  *(v50 + 32) = v39;
  v51 = v39;
  v58(v50, 0);
}

uint64_t sub_2689B068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = a2;
  if (!a2)
  {

    a1 = a3;
    v7 = a4;
  }

  a5(a1, v7);
}

void sub_2689B071C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();

  [a3 setCorrespondingSessionID_];
}

uint64_t sub_2689B0780(void *a1)
{
  v1 = [a1 correspondingSessionID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37BF4();

  return v3;
}

uint64_t type metadata accessor for SnippetModelContext(uint64_t a1)
{
  result = qword_2802A6AE8;
  if (!qword_2802A6AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2689B0830()
{
  v1 = sub_268B36A54();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 112) & ~v4;
  v7 = *(v6 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2689B08F8(char a1)
{
  v3 = *(sub_268B36A54() - 8);
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1 + ((*(v3 + 80) + 112) & ~*(v3 + 80));

  return sub_2689AF5F4(a1, v1 + 2, v1 + 7, v4, v5, v6);
}

uint64_t sub_2689B0974(uint64_t a1)
{
  v2 = type metadata accessor for SnippetModelContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2689B09E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AE0, qword_268B416B8);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_2689B0AC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AE0, qword_268B416B8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_2689B0B78(uint64_t a1)
{
  sub_2689B0BFC(319);
  if (v1 <= 0x3F)
  {
    sub_2689B0C54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2689B0BFC(uint64_t a1)
{
  if (!qword_2802A6AF8)
  {
    sub_268B36A54();
    v1 = sub_268B380A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2802A6AF8);
    }
  }
}

void sub_2689B0C54()
{
  if (!qword_2802A5E50)
  {
    v0 = sub_268B380A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2802A5E50);
    }
  }
}

id sub_2689B0CA4()
{
  if (qword_2802A4F00 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9E0;
  qword_2802CD940 = qword_2802CD9E0;

  return v1;
}

void sub_2689B0D08()
{
  OUTLINED_FUNCTION_26();
  v124 = v0;
  v125 = v1;
  v120 = v2;
  v121 = v3;
  v118 = v4;
  v119 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v6 - 8);
  v111 = &v104 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_20_0();
  v109 = v9 - v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  v116 = &v104 - v12;
  OUTLINED_FUNCTION_9();
  v110 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v115 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v114 = v15;
  OUTLINED_FUNCTION_9();
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v105 = v17;
  v106 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v104 = v18;
  OUTLINED_FUNCTION_9();
  v19 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_0();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18();
  v108 = v27;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  v107 = v29;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18();
  v32 = v31;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v34 = __swift_project_value_buffer(v19, qword_2802CDA10);
  v35 = *(v21 + 16);
  v122 = v34;
  v123 = v35;
  (v35)(v0);
  v36 = sub_268B37A34();
  v37 = sub_268B37ED4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_14();
    *v38 = 0;
    _os_log_impl(&dword_2688BB000, v36, v37, "AddSpeakerHandleIntentStrategy.makeIntentHandledResponse() called", v38, 2u);
    OUTLINED_FUNCTION_12();
  }

  v39 = *(v21 + 8);
  v39(v0, v19);
  v40 = sub_268B0F7F4(v125);
  if (v40)
  {
    v116 = v40;
    sub_268B36754();
    v41 = sub_268B36734();
    if (!v41)
    {
      v41 = sub_268B36744();
    }

    v42 = v41;
    v43 = v32;
    v123(v32, v122, v19);

    v44 = sub_268B37A34();
    v45 = sub_268B37ED4();

    v46 = os_log_type_enabled(v44, v45);
    v112 = v39;
    v113 = v21 + 8;
    v117 = v19;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v114 = v43;
      v115 = v42;
      v48 = v47;
      v49 = swift_slowAlloc();
      v141[0] = v49;
      *v48 = 136315138;
      sub_268B36714();
      v50 = v104;
      sub_268B36B14();

      v51 = sub_268B36784();
      v53 = v52;
      (*(v105 + 8))(v50, v106);
      v54 = sub_26892CDB8(v51, v53, v141);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_2688BB000, v44, v45, "AddSpeakerHandleIntentStrategy.makeIntentHandledResponse cached responseMode = %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      OUTLINED_FUNCTION_12();
      v42 = v115;
      OUTLINED_FUNCTION_12();

      v112(v114, v19);
    }

    else
    {

      v39(v43, v19);
    }

    v65 = v124;
    v66 = v120;
    v67 = swift_allocObject();
    v67[2] = v42;
    v67[3] = v65;
    v68 = v125;
    v70 = v118;
    v69 = v119;
    v67[4] = v125;
    v67[5] = v70;
    v67[6] = v66;
    v67[7] = v69;
    v71 = v116;
    v67[8] = v121;
    v67[9] = v71;
    v72 = OBJC_IVAR___AddSpeakerIntentResponse_code;
    swift_beginAccess();
    if (*&v70[v72] == 100)
    {
      v73 = v107;
      v123(v107, v122, v117);

      v68;
      v74 = v70;

      v75 = sub_268B37A34();
      v76 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v76))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_22_6(&dword_2688BB000, v77, v78, "Requested to add speaker from phone/iOS device which resulted in a moveSpeaker operation instead. Returning moveSpeaker dialog");
        OUTLINED_FUNCTION_12();
      }

      v112(v73, v117);
      OUTLINED_FUNCTION_6_18();
      sub_2689B5C10(v140);
      if (OUTLINED_FUNCTION_8_12())
      {
        sub_268A63D80();
      }

      OUTLINED_FUNCTION_15_12(v141);
      v79 = OUTLINED_FUNCTION_5_7();
      sub_268AB22F8(v79, v80, v81, v82, v83, v84, v85, v86, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);

      OUTLINED_FUNCTION_15_12(&v127);
      sub_2689B5C10(&v127);
    }

    else
    {
      v87 = v108;
      v123(v108, v122, v117);

      v68;
      v88 = v70;

      v89 = sub_268B37A34();
      v90 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v90))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_22_6(&dword_2688BB000, v91, v92, "Returning default response dialog for add speaker.");
        OUTLINED_FUNCTION_12();
      }

      v112(v87, v117);
      OUTLINED_FUNCTION_6_18();
      sub_2689B5BBC(v140);
      if (OUTLINED_FUNCTION_8_12())
      {
        sub_268A647E4();
      }

      OUTLINED_FUNCTION_15_12(v141);
      v93 = OUTLINED_FUNCTION_5_7();
      sub_268ABE228(v93, v94, v95, v96, v97, v98, v99, v100, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);

      OUTLINED_FUNCTION_15_12(&v127);
      sub_2689B5BBC(&v127);
    }
  }

  else
  {
    v123(v25, v122, v19);
    v55 = sub_268B37A34();
    v56 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v56))
    {
      v57 = OUTLINED_FUNCTION_14();
      *v57 = 0;
      _os_log_impl(&dword_2688BB000, v55, v56, "Unable to find any destinations in the intent. Returning a failure", v57, 2u);
      OUTLINED_FUNCTION_12();
    }

    v39(v25, v19);
    sub_268B36E84();
    v58 = v111;
    v59 = v109;
    if (!v60)
    {
      sub_268947F08();
    }

    v61 = v110;
    __swift_project_boxed_opaque_existential_1((v124 + 144), *(v124 + 168));
    (*(v115 + 104))(v114, *MEMORY[0x277D5BC00], v61);
    v62 = sub_268B350F4();
    v63 = v116;
    __swift_storeEnumTagSinglePayload(v116, 1, 1, v62);
    v64 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v58, 1, 1, v64);
    sub_2688F1FA4(v63, v59, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v59, 1, v62) == 1)
    {
      sub_2688C058C(v59, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v62 - 8) + 8))(v59, v62);
    }

    v101 = v114;
    sub_2688E3180();

    sub_2688C058C(v58, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v116, &unk_2802A57B0, &unk_268B3CE00);
    (*(v115 + 8))(v101, v61);
    sub_2688C2ECC();
    v102 = swift_allocError();
    *v103 = 19;
    v141[0] = v102;
    v142 = 1;
    v119(v141);
    sub_2688C058C(v141, &unk_2802A57C0, &qword_268B3BE00);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689B180C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id *), uint64_t a7, uint64_t a8)
{
  v25[0] = a4;
  v25[1] = a8;
  v26 = a6;
  v27 = a7;
  v25[2] = a3;
  v25[3] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v16);
  v18 = (v25 - v17);
  sub_2688F1FA4(a1, v25 - v17, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28[0] = *v18;
    v19 = v28[0];
    v29 = 1;
    v20 = v28[0];
    v26(v28);

    return sub_2688C058C(v28, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v18, v15);
    __swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
    v22 = sub_268B36FA4();
    sub_2688F1FA4(v15, v13, &unk_2802A56E0, &unk_268B3CDF0);
    v23 = *&v13[*(v10 + 48)];
    if (v22)
    {
      sub_2689B1A9C();
    }

    else
    {
      sub_2689B29DC();
    }

    sub_2688C058C(v15, &unk_2802A56E0, &unk_268B3CDF0);
    v24 = sub_268B350F4();
    return (*(*(v24 - 8) + 8))(v13, v24);
  }
}

void sub_2689B1A9C()
{
  OUTLINED_FUNCTION_26();
  *(&v92 + 1) = v0;
  v98 = v1;
  v99 = v2;
  v97 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_268B35044();
  OUTLINED_FUNCTION_1();
  v101 = v11;
  v102 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v100 = v12;
  OUTLINED_FUNCTION_9();
  v13 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_0();
  v91 = v17 - v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v90 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1();
  v103 = v23;
  v25 = MEMORY[0x28223BE20](v24);
  v94 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v104 = &v85 - v28;
  v93 = v29;
  MEMORY[0x28223BE20](v27);
  v31 = &v85 - v30;
  v32 = sub_268B350F4();
  v95 = *(v32 - 8);
  v96 = v32;
  v33 = v9;
  v34 = v22;
  (*(v95 + 16))(v31, v33);
  v35 = *(v22 + 48);
  v105 = v31;
  *&v31[v35] = v7;
  v36 = qword_2802A4F30;
  v37 = v7;
  if (v36 != -1)
  {
LABEL_34:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v38 = __swift_project_value_buffer(v13, qword_2802CDA10);
  v39 = v15;
  v41 = *(v15 + 16);
  v15 += 16;
  v40 = v41;
  *&v92 = v38;
  v41(v0);
  v42 = sub_268B37A34();
  v43 = sub_268B37ED4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_14();
    *v44 = 0;
    _os_log_impl(&dword_2688BB000, v42, v43, "AddSpeakerHandleIntentStrategy#intentHandledResponse...", v44, 2u);
    OUTLINED_FUNCTION_12();
  }

  v45 = *(v39 + 8);
  v45(v0, v13);
  v46 = [v5 source];
  if (v46 && (v47 = sub_2689B56E0(v46)) != 0)
  {
    v48 = v47;
    v86 = v40;
    v87 = v45;
    v88 = v34;
    v89 = v5;
    v49 = sub_2688EFD0C();
    v5 = 0;
    do
    {
      if (v49 == v5)
      {

        v5 = v89;
        v34 = v88;
        v45 = v87;
        v40 = v86;
        goto LABEL_16;
      }

      if ((v48 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x26D625BD0](v5, v48);
      }

      else
      {
        if (v5 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v50 = *(v48 + 8 * v5 + 32);
      }

      v0 = v50;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v34 = sub_268983434(v50);

      ++v5;
    }

    while ((v34 & 1) == 0);

    v86(v90, v92, v13);
    v77 = sub_268B37A34();
    v78 = sub_268B37ED4();
    if (os_log_type_enabled(v77, v78))
    {
      v80 = OUTLINED_FUNCTION_14();
      *v80 = 0;
      _os_log_impl(&dword_2688BB000, v77, v78, "AddSpeakerHandleIntentStrategy#intentHandledResponse using local routeId", v80, 2u);
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_46_2();
    v81();
    sub_268B36C54();
    v91 = sub_268B36C24();
    *&v92 = v82;
    v5 = v89;
    v59 = v105;
    v55 = *(&v92 + 1);
    v60 = v103;
    v34 = v88;
  }

  else
  {
LABEL_16:
    v51 = v91;
    v40(v91, v92, v13);
    v52 = sub_268B37A34();
    v53 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_196(v53))
    {
      v54 = OUTLINED_FUNCTION_14();
      *v54 = 0;
      _os_log_impl(&dword_2688BB000, v52, v53, "AddSpeakerHandleIntentStrategy#intentHandledResponse using destination routeId", v54, 2u);
      OUTLINED_FUNCTION_12();
    }

    v45(v51, v13);
    v55 = *(&v92 + 1);
    sub_268A581C0(*(*(&v92 + 1) + 304));
    if (v56[2])
    {
      v58 = v56[4];
      v57 = v56[5];
      v91 = v58;
      *&v92 = v57;
    }

    else
    {

      v91 = 0;
      *&v92 = 0xE000000000000000;
    }

    v59 = v105;
    v60 = v103;
  }

  sub_26890C900((v55 + 33), v106);
  v88 = v108;
  v89 = v107;
  *(&v92 + 1) = __swift_project_boxed_opaque_existential_1(v106, v107);
  v61 = v104;
  sub_2688F1FA4(v59, v104, &unk_2802A56E0, &unk_268B3CDF0);
  v90 = *(v61 + *(v34 + 48));
  v62 = *__swift_project_boxed_opaque_existential_1(v55 + 28, v55[31]);
  if (v62)
  {
    v63 = OUTLINED_FUNCTION_28_1();
    LODWORD(v103) = [v62 BOOLForKey_];
  }

  else
  {
    LODWORD(v103) = 0;
  }

  __swift_project_boxed_opaque_existential_1(v55 + 3, v55[6]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_268B3BBA0;
    *(v64 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v64 = MEMORY[0x277D84F90];
  }

  v65 = v100;
  sub_268A82B50(v5, v100);
  v66 = sub_2689F0948();
  v67 = v94;
  sub_2688F1FA4(v59, v94, &unk_2802A56E0, &unk_268B3CDF0);
  v68 = (*(v60 + 80) + 40) & ~*(v60 + 80);
  v69 = (v93 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = v5;
  v71 = swift_allocObject();
  v71[2] = v70;
  v71[3] = v55;
  v71[4] = v98;
  sub_2689186C8(v67, v71 + v68);
  v72 = (v71 + v69);
  v73 = v99;
  *v72 = v97;
  v72[1] = v73;
  v74 = v70;

  LOBYTE(v83) = v66 & 1;
  v75 = v104;
  v76 = v90;
  sub_268A83648(v104, v90, v91, v92, v103, v64, v65, (v55 + 13), v83, sub_2689B5A6C, v71, v89, v88, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);

  (*(v101 + 8))(v65, v102);
  sub_2688C058C(v105, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v95 + 8))(v75, v96);
  __swift_destroy_boxed_opaque_existential_0Tm(v106);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689B2320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v55 = a7;
  v56 = a6;
  v52 = a4;
  v61 = a2;
  v62 = a3;
  v54 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = v46 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  MEMORY[0x28223BE20](v47);
  v11 = v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v46 - v16;
  v18 = sub_268B34E24();
  v58 = *(v18 - 8);
  v59 = v18;
  MEMORY[0x28223BE20](v18);
  v57 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_268B37A54();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v51 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v46 - v24;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v49 = *(v21 + 16);
  v50 = v26;
  v49(v25);
  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v53 = v11;
    v30 = a5;
    v31 = v21;
    v32 = v29;
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "AddSpeakerHandleIntentStrategy#intentHandledResponse output has been created.", v29, 2u);
    v33 = v32;
    v21 = v31;
    a5 = v30;
    v11 = v53;
    MEMORY[0x26D6266E0](v33, -1, -1);
  }

  v34 = *(v21 + 8);
  v53 = (v21 + 8);
  v48 = v34;
  v34(v25, v20);
  sub_268947F08();
  v46[1] = v35;
  __swift_project_boxed_opaque_existential_1((v62 + 144), *(v62 + 168));
  (*(v58 + 104))(v57, *MEMORY[0x277D5BC10], v59);
  sub_2688F1FA4(a5, v11, &unk_2802A56E0, &unk_268B3CDF0);

  v36 = sub_268B350F4();
  v37 = *(v36 - 8);
  (*(v37 + 32))(v17, v11, v36);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v36);
  v38 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v38);
  sub_2688F1FA4(v17, v15, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v15, 1, v36) == 1)
  {
    sub_2688C058C(v15, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v37 + 8))(v15, v36);
  }

  v39 = v57;
  v40 = v60;
  sub_2688E3180();

  sub_2688C058C(v40, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v17, &unk_2802A57B0, &unk_268B3CE00);
  (*(v58 + 8))(v39, v59);
  __swift_project_boxed_opaque_existential_1((v62 + 144), *(v62 + 168));
  sub_26894B450();
  v41 = v51;
  (v49)(v51, v50, v20);
  v42 = sub_268B37A34();
  v43 = sub_268B37ED4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2688BB000, v42, v43, "AddSpeakerHandleIntentStrategy#intentHandledResponse returning output", v44, 2u);
    MEMORY[0x26D6266E0](v44, -1, -1);
  }

  v48(v41, v20);
  return v56(v54);
}

void sub_2689B29DC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v67 = v3;
  v68 = v2;
  v64 = v4;
  v61 = v5;
  v7 = v6;
  v66 = v8;
  v10 = v9;
  v12 = v11;
  v13 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v20 = v19 - 8;
  v62 = *(v19 - 8);
  v21 = *(v62 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v63 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v25 + 16))(v24, v12);
  v26 = *(v20 + 56);
  v65 = v24;
  *&v24[v26] = v10;
  v27 = qword_2802A4F30;
  v28 = v10;
  if (v27 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v29 = __swift_project_value_buffer(v13, qword_2802CDA10);
  (*(v15 + 16))(v18, v29, v13);
  v30 = sub_268B37A34();
  v31 = sub_268B37ED4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_14();
    *v32 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "AddSpeakerHandleIntentStrategy#legacyHandledResponse...", v32, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v15 + 8))(v18, v13);
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_268B3BBA0;
    v34 = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
    v60 = v33;
    *(v33 + 32) = v34;
  }

  else
  {
    v60 = MEMORY[0x277D84F90];
  }

  sub_268B0DEEC();
  v36 = v35;
  if (sub_2688EFD0C())
  {
    sub_2688EFD10();
    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x26D625BD0](0, v36);
    }

    else
    {
      v37 = *(v36 + 32);
    }

    v38 = v37;

    v59 = sub_268B0F784(v38);
    v61 = v39;
  }

  else
  {

    v59 = 0;
    v61 = 0;
  }

  v40 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v41 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  if (v41)
  {
    v42 = v41;
    v43 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v58) = [v42 BOOLForKey_];
  }

  else
  {
    HIDWORD(v58) = 0;
  }

  v57 = v1 + 13;
  v44 = v65;
  v45 = v63;
  sub_2688F1FA4(v65, v63, &unk_2802A56E0, &unk_268B3CDF0);
  v46 = (*(v62 + 80) + 40) & ~*(v62 + 80);
  v47 = (v21 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = v66;
  v49[2] = v66;
  v49[3] = v1;
  v49[4] = v7;
  sub_2689186C8(v45, v49 + v46);
  v51 = (v49 + v47);
  v53 = v67;
  v52 = v68;
  *v51 = v64;
  v51[1] = v53;
  *(v49 + v48) = v60;
  *(v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8)) = v52;
  v54 = *__swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
  v55 = v50;

  v56 = v52;
  sub_268AED0F0(v55, v59, v61, 0, 0, HIDWORD(v58), (v1 + 3), (v1 + 8), v57, v54, sub_2689B5880, v49, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);

  sub_2688C058C(v44, &unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689B2F04(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, unint64_t a9, uint64_t a10)
{
  v80 = a8;
  v81 = a7;
  v86 = a6;
  v79 = a5;
  v84 = a4;
  v87 = a3;
  LODWORD(v77) = a2;
  v82 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = &v70 - v11;
  v76 = sub_268B35044();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v72 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v71 = &v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v70 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v70 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v70 - v33;
  v35 = sub_268B34E24();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v78 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v70 - v40;
  v85 = v39;
  v83 = v36;
  if (v77)
  {
    v42 = v17;
    v43 = v84;
    v44 = v86;
    v45 = sub_268B36E84();
    if (v46)
    {
      v77 = v45;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v77 = v60;
    }

    v61 = v85;
    v62 = v72;
    __swift_project_boxed_opaque_existential_1(v43 + 18, v43[21]);
    (*(v83 + 104))(v78, *MEMORY[0x277D5BC00], v61);
    sub_2688F1FA4(v44, v20, &unk_2802A56E0, &unk_268B3CDF0);

    v63 = sub_268B350F4();
    v64 = *(v63 - 8);
    (*(v64 + 32))(v29, v20, v63);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v63);
    v65 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v62, 1, 1, v65);
    sub_2688F1FA4(v29, v26, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v26, 1, v63) == 1)
    {
      sub_2688C058C(v26, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v64 + 8))(v26, v63);
    }

    v66 = v78;
    sub_2688E3180();

    sub_2688C058C(v62, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v29, &unk_2802A57B0, &unk_268B3CE00);
    (*(v83 + 8))(v66, v85);
    v90[0] = v82;
    v93 = 1;
    v67 = v82;
  }

  else
  {
    v78 = a9;
    sub_268947F08();
    v77 = v47;
    __swift_project_boxed_opaque_existential_1(v84 + 18, v84[21]);
    (*(v36 + 104))(v41, *MEMORY[0x277D5BC10], v35);
    sub_2688F1FA4(v86, v22, &unk_2802A56E0, &unk_268B3CDF0);

    v48 = sub_268B350F4();
    v49 = *(v48 - 8);
    (*(v49 + 32))(v34, v22, v48);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v48);
    v50 = sub_268B34B94();
    v51 = v71;
    __swift_storeEnumTagSinglePayload(v71, 1, 1, v50);
    sub_2688F1FA4(v34, v32, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v32, 1, v48) == 1)
    {
      sub_2688C058C(v32, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v49 + 8))(v32, v48);
    }

    v52 = v87;
    sub_2688E3180();

    sub_2688C058C(v51, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v34, &unk_2802A57B0, &unk_268B3CE00);
    (*(v83 + 8))(v41, v85);
    v53 = v84;
    __swift_project_boxed_opaque_existential_1(v84 + 18, v84[21]);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v90[0] = v82;

    sub_268948494(v90);
    sub_2688C058C(v90, &byte_2802A6450, &byte_268B3BE10);
    v54 = v73;
    sub_268A82B50(v52, v73);
    if (v78 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      v69 = sub_268B38294();

      v78 = v69;
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    v91 = sub_268B354F4();
    v92 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v90);
    v55 = 0;
    if (sub_2689F0948())
    {
      v55 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v56 = sub_268B38064();
      [v55 setMinimumAutoDismissalTimeInMs_];

      [v55 setPremptivelyResumeMedia_];
    }

    __swift_project_boxed_opaque_existential_1(v53 + 3, v53[6]);
    sub_268B34CA4();
    v57 = v74;
    v58 = v75;
    v59 = v76;
    (*(v74 + 16))(v75, v54, v76);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v59);
    v89 = 0;
    memset(v88, 0, sizeof(v88));
    sub_268B34EF4();

    sub_2688C058C(v88, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v58, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v57 + 8))(v54, v59);
    v93 = 0;
  }

  v81(v90);
  return sub_2688C058C(v90, &unk_2802A57C0, &qword_268B3BE00);
}

void *sub_2689B3A84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __src[0] = 0;
  __src[1] = 0;
  __src[2] = 1;
  memset(&__src[3], 0, 57);
  memcpy(__dst, __src, 0x51uLL);
  sub_2689B5664(__dst);
  LODWORD(__src[0]) = 0;
  memset(&__src[1], 0, 72);
  LOBYTE(__src[10]) = 1;
  if (sub_268B0F7F4(a1))
  {
    sub_268A65248();
  }

  return memcpy(a2, __src, 0x51uLL);
}

void sub_2689B3B40()
{
  OUTLINED_FUNCTION_26();
  v56 = v0;
  v57 = v1;
  v53 = v2;
  v59 = v3;
  v54 = v4;
  v55 = v5;
  v50 = sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v49 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v48 = v8;
  OUTLINED_FUNCTION_9();
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v58 = v13 - v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v16 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v17 = *(v11 + 16);
  v17(v0, v16, v9);
  v18 = sub_268B37A34();
  v19 = sub_268B37ED4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_14();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "AddSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse() called", v20, 2u);
    OUTLINED_FUNCTION_12();
  }

  v52 = *(v11 + 8);
  v52(v0, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v22 = OBJC_IVAR___AddSpeakerIntentResponse_code;
  swift_beginAccess();
  v51 = v22;
  v60[0] = *(v59 + v22);
  sub_268B38404();
  v23 = sub_268B36E94();
  v25 = v24;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v23;
  *(inited + 56) = v25;
  sub_268B37B84();
  sub_268B36754();
  v26 = sub_268B36734();
  if (!v26)
  {
    v26 = sub_268B36744();
  }

  v27 = v26;
  v17(v58, v16, v9);

  v28 = sub_268B37A34();
  v29 = sub_268B37ED4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v60[0] = v31;
    *v30 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v32 = sub_268B36784();
    v34 = v33;
    (*(v49 + 8))(v48, v50);
    v35 = sub_26892CDB8(v32, v34, v60);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_2688BB000, v28, v29, "AddSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

  v52(v58, v9);
  swift_allocObject();
  OUTLINED_FUNCTION_46_2();
  v36[2] = v27;
  v36[3] = v37;
  v36[4] = v54;
  v36[5] = v56;
  v36[6] = v55;
  v36[7] = v53;
  v36[8] = v57;
  v38 = *(v37 + v51);
  if (v38 == 102)
  {
    OUTLINED_FUNCTION_16_12(*(v56 + 16));
    OUTLINED_FUNCTION_46_2();
    v43 = v42;
    v44 = v54;

    OUTLINED_FUNCTION_3_19();
  }

  else
  {
    if (v38 != 101)
    {

      OUTLINED_FUNCTION_46_2();
      v46 = v45;
      v47 = v54;

      sub_2689B3A84(v47, v60);
      sub_268AB2900();

      sub_2689B5664(v60);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_16_12(*(v56 + 16));
    OUTLINED_FUNCTION_46_2();
    v40 = v39;
    v41 = v54;

    OUTLINED_FUNCTION_3_19();
  }

LABEL_16:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689B4220(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v119 = a7;
  v117 = a5;
  v118 = a6;
  v120 = a4;
  v121 = a3;
  v113 = a2;
  v110 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v7 - 8);
  v109 = &v100 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v9 = MEMORY[0x28223BE20](v116);
  v108 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v104 = &v100 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v100 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v115 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v106 = &v100 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v105 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v114 = &v100 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v102 = &v100 - v25;
  MEMORY[0x28223BE20](v24);
  v103 = (&v100 - v26);
  v27 = sub_268B34E24();
  v122 = *(v27 - 8);
  v123 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v112 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v111 = &v100 - v30;
  v31 = sub_268B37A54();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v107 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v100 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v100 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v40);
  v42 = (&v100 - v41);
  sub_2688F1FA4(v110, &v100 - v41, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v116 = *v42;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v31, qword_2802CDA10);
    v44 = v32;
    (*(v32 + 16))(v39, v43, v31);
    v45 = sub_268B37A34();
    v46 = sub_268B37EE4();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v120;
    v49 = v103;
    if (v47)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "AddSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v50, 2u);
      v51 = v50;
      v44 = v32;
      MEMORY[0x26D6266E0](v51, -1, -1);
    }

    (*(v44 + 8))(v39, v31);
    sub_268B36E84();
    if (!v52)
    {
      sub_268947F08();
    }

    v53 = v52;
    v54 = v106;
    __swift_project_boxed_opaque_existential_1(v48 + 18, v48[21]);
    (*(v122 + 104))(v111, *MEMORY[0x277D5BC00], v123);
    v55 = sub_268B350F4();
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v55);
    v56 = *MEMORY[0x277D5B8E0];
    v57 = sub_268B34B94();
    (*(*(v57 - 8) + 104))(v54, v56, v57);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v57);
    v58 = v102;
    sub_2688F1FA4(v49, v102, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v58, 1, v55) == 1)
    {
      sub_2688C058C(v58, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      v115 = v53;
      sub_268B350B4();
      (*(*(v55 - 8) + 8))(v58, v55);
    }

    v69 = v111;
    sub_2688E3180();

    sub_2688C058C(v54, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v49, &unk_2802A57B0, &unk_268B3CE00);
    (*(v122 + 8))(v69, v123);
    __swift_project_boxed_opaque_existential_1(v48 + 18, v48[21]);
    sub_2688C2ECC();
    v70 = swift_allocError();
    *v71 = -96;
    sub_26894B450();

    v72 = swift_allocError();
    *v73 = -96;
    v124[0] = v72;
    v125 = 1;
    v118(v124);

    return sub_2688C058C(v124, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v42, v14);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v59 = __swift_project_value_buffer(v31, qword_2802CDA10);
    v60 = v32;
    v61 = v31;
    v62 = *(v60 + 16);
    v110 = v59;
    v106 = v62;
    (v62)(v37);
    v63 = sub_268B37A34();
    v64 = sub_268B37ED4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_2688BB000, v63, v64, "AddSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v65, 2u);
      MEMORY[0x26D6266E0](v65, -1, -1);
    }

    v66 = *(v60 + 8);
    v111 = (v60 + 8);
    v103 = v66;
    v66(v37, v61);
    v67 = v113;
    sub_268B36E84();
    v100 = v61;
    if (!v68)
    {
      v75 = OBJC_IVAR___AddSpeakerIntentResponse_code;
      swift_beginAccess();
      v126 = *(v67 + v75);
      sub_268B38404();
      sub_268947F08();
    }

    __swift_project_boxed_opaque_existential_1(v120 + 18, v120[21]);
    (*(v122 + 104))(v112, *MEMORY[0x277D5BC00], v123);
    v76 = v104;
    sub_2688F1FA4(v14, v104, &unk_2802A56E0, &unk_268B3CDF0);

    v77 = sub_268B350F4();
    v78 = *(v77 - 8);
    v79 = v114;
    (*(v78 + 32))(v114, v76, v77);
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v77);
    v80 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v115, 1, 1, v80);
    v81 = v105;
    sub_2688F1FA4(v79, v105, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v77);
    v101 = v14;
    v113 = v78;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v81, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v78 + 8))(v81, v77);
    }

    v83 = v112;
    v84 = v115;
    sub_2688E3180();

    sub_2688C058C(v84, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v114, &unk_2802A57B0, &unk_268B3CE00);
    (*(v122 + 8))(v83, v123);
    v85 = v120;
    __swift_project_boxed_opaque_existential_1(v120 + 18, v120[21]);
    sub_2688C2ECC();
    v86 = swift_allocError();
    *v87 = 79;
    sub_26894B450();

    v88 = v107;
    v89 = v100;
    (v106)(v107, v110, v100);
    v90 = sub_268B37A34();
    v91 = sub_268B37ED4();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_2688BB000, v90, v91, "AddSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v92, 2u);
      MEMORY[0x26D6266E0](v92, -1, -1);
    }

    v103(v88, v89);
    v93 = v85[36];
    v94 = v85[37];
    __swift_project_boxed_opaque_existential_1(v85 + 33, v93);
    v95 = v101;
    v96 = v108;
    sub_2688F1FA4(v101, v108, &unk_2802A56E0, &unk_268B3CDF0);
    v97 = *(v96 + v116[12]);
    v98 = v109;
    sub_268A82B50(v121, v109);
    v99 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v98, 0, 1, v99);
    (*(v94 + 40))(v96, v97, v98, v118, v119, v93, v94);

    sub_2688C058C(v98, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v95, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v113 + 8))(v96, v77);
  }
}

void *sub_2689B5098()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);

  return v0;
}

uint64_t sub_2689B50F8()
{
  sub_2689B5098();

  return MEMORY[0x2821FE8D8](v0, 312, 7);
}

uint64_t sub_2689B5150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689B51CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689B5248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689B52E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689B5364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_2689B5404()
{
  if (qword_2802A4DE8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD940;

  return v1;
}

uint64_t sub_2689B5460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_2689B54B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_2689B5504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_2689B5570(uint64_t a1)
{
  result = sub_2689B5598();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2689B5598()
{
  result = qword_2802A6B00;
  if (!qword_2802A6B00)
  {
    type metadata accessor for AddSpeakerHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6B00);
  }

  return result;
}

uint64_t sub_2689B55F0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2689B56E0(void *a1)
{
  v2 = [a1 devices];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for Device();
  v3 = sub_268B37CF4();

  return v3;
}

uint64_t sub_2689B5748()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = (((((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v7 = v1 + v4;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v7);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v3 | 7);
}

uint64_t sub_2689B5880(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2689B2F04(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2689B595C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = v1 + v4;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v7);

  return MEMORY[0x2821FE8E8](v1, v6 + 16, v3 | 7);
}

uint64_t sub_2689B5A6C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_2689B2320(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_2689B5B20()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t OUTLINED_FUNCTION_3_19()
{
  v6 = *(v4 - 344);

  return sub_2689CE860(0xD000000000000023, v3 | 0x8000000000000000, v6, sub_2689B5650, v0, v1, v2);
}

void *OUTLINED_FUNCTION_6_18()
{
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = 1;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 345) = 0u;

  return memcpy((v0 + 368), (v0 + 280), 0x51uLL);
}

uint64_t OUTLINED_FUNCTION_8_12()
{
  *(v0 + 280) = 0;
  *(v0 + 288) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v0 + 352) = 0;
  *(v0 + 360) = v1;

  return sub_268B0F7F4(v2);
}

void *OUTLINED_FUNCTION_15_12(void *a1)
{

  return memcpy(a1, (v1 + 280), 0x51uLL);
}

uint64_t OUTLINED_FUNCTION_16_12@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
}

void OUTLINED_FUNCTION_22_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2689B5DE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v62 = a7;
  v64 = a4;
  v65 = a8;
  v57 = a6;
  v58 = a2;
  v60 = a3;
  v61 = a5;
  v59 = a1;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v55 = v9;
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v66 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v20 = *(v13 + 16);
  v20(v18, v19, v11);
  v21 = sub_268B37A34();
  v22 = sub_268B37ED4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "MoveSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput...", v23, 2u);
    MEMORY[0x26D6266E0](v23, -1, -1);
  }

  v24 = *(v13 + 8);
  v24(v18, v11);
  sub_268B36754();
  v25 = sub_268B36734();
  if (!v25)
  {
    v25 = sub_268B36744();
  }

  v26 = v25;
  v27 = v66;
  v20(v66, v19, v11);

  v28 = sub_268B37A34();
  v29 = sub_268B37ED4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v53 = v24;
    v31 = v30;
    v32 = swift_slowAlloc();
    v67 = v32;
    *v31 = 136315138;
    sub_268B36714();
    v33 = v54;
    sub_268B36B14();

    v34 = sub_268B36784();
    v36 = v35;
    (*(v55 + 8))(v33, v56);
    v37 = sub_26892CDB8(v34, v36, &v67);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_2688BB000, v28, v29, "MoveSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x26D6266E0](v32, -1, -1);
    MEMORY[0x26D6266E0](v31, -1, -1);

    v53(v66, v11);
  }

  else
  {

    v24(v27, v11);
  }

  v38 = swift_allocObject();
  v40 = v59;
  v39 = v60;
  v38[2] = v26;
  v38[3] = v39;
  v41 = v63;
  v42 = v57;
  v43 = v58;
  v38[4] = v64;
  v38[5] = v43;
  v38[6] = v42;
  v38[7] = v41;
  v44 = v62;
  v38[8] = v40;
  v38[9] = v44;
  v38[10] = v65;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v45 = v42;
  swift_retain_n();
  v46 = v43;
  v47 = v45;
  v48 = v46;

  v49 = v48;
  v50 = v47;

  sub_2689FA1BC();
}

uint64_t sub_2689B6388(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v113 = a8;
  v111 = a7;
  v115 = a6;
  v98 = a5;
  v119 = a4;
  v96 = a3;
  v95 = a2;
  v104 = a1;
  v112 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v9 - 8);
  v103 = &v93 - v10;
  v11 = sub_268B37A54();
  v109 = *(v11 - 8);
  v110 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v99 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v102 = &v93 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v108 = (&v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v94 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v100 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v107 = &v93 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v97 = &v93 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v93 - v26;
  v28 = sub_268B34E24();
  v116 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v105 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v93 - v31;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v33 = MEMORY[0x28223BE20](v106);
  v101 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v93 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v93 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v40);
  v42 = (&v93 - v41);
  sub_268935590(v104, &v93 - v41, &qword_2802A6300, &unk_268B3BD80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v114 = v28;
  if (EnumCaseMultiPayload == 1)
  {
    v44 = v115;
    v106 = *v42;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v45 = v110;
    v46 = __swift_project_value_buffer(v110, qword_2802CDA10);
    v47 = v109;
    v48 = v99;
    (*(v109 + 16))(v99, v46, v45);
    v49 = sub_268B37A34();
    v50 = sub_268B37EE4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2688BB000, v49, v50, "MoveSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput failed to execute dialog", v51, 2u);
      MEMORY[0x26D6266E0](v51, -1, -1);
    }

    (*(v47 + 8))(v48, v45);
    sub_268947F08();
    v110 = v52;
    __swift_project_boxed_opaque_existential_1(v44 + 13, v44[16]);
    (*(v116 + 104))(v105, *MEMORY[0x277D5BC00], v114);
    v53 = sub_268B350F4();
    v54 = v107;
    __swift_storeEnumTagSinglePayload(v107, 1, 1, v53);
    v55 = *MEMORY[0x277D5B8E0];
    v56 = sub_268B34B94();
    v57 = v108;
    (*(*(v56 - 8) + 104))(v108, v55, v56);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v56);
    v58 = v100;
    sub_268935590(v54, v100, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v58, 1, v53) == 1)
    {
      sub_2688EF38C(v58, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v53 - 8) + 8))(v58, v53);
    }

    v69 = v105;
    v70 = v108;
    sub_2688E3410();

    sub_2688EF38C(v70, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v107, &unk_2802A57B0, &unk_268B3CE00);
    (*(v116 + 8))(v69, v114);
    __swift_project_boxed_opaque_existential_1(v44 + 13, v44[16]);
    sub_2688C2ECC();
    v71 = swift_allocError();
    *v72 = -97;
    sub_26894B450();

    v73 = swift_allocError();
    *v74 = -95;
    v117[0] = v73;
    v118 = 1;
    v113(v117);

    return sub_2688EF38C(v117, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v42, v39);
    v99 = sub_2688E1BE4(32, 3, v95, v96, v119, 0x6E776F6E6B6E75, 0xE700000000000000, v98);
    v100 = v59;
    __swift_project_boxed_opaque_existential_1(v115 + 13, v115[16]);
    v60 = *MEMORY[0x277D5BBE0];
    v61 = *(v116 + 104);
    v105 = v32;
    v61(v32, v60, v28);
    sub_268935590(v39, v37, &unk_2802A56E0, &unk_268B3CDF0);

    v62 = sub_268B350F4();
    v63 = *(v62 - 8);
    v63[4](v27, v37, v62);
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v62);
    v64 = sub_268B34B94();
    v65 = v94;
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v64);
    v107 = v27;
    v66 = v27;
    v67 = v97;
    sub_268935590(v66, v97, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67, 1, v62);
    v104 = v39;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v67, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (v63[1])(v67, v62);
    }

    v108 = v63;
    v76 = v105;
    sub_2688E3410();

    sub_2688EF38C(v65, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v107, &unk_2802A57B0, &unk_268B3CE00);
    (*(v116 + 8))(v76, v114);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v77 = v110;
    v78 = __swift_project_value_buffer(v110, qword_2802CDA10);
    v79 = v109;
    v80 = v102;
    (*(v109 + 16))(v102, v78, v77);
    v81 = sub_268B37A34();
    v82 = sub_268B37ED4();
    v83 = os_log_type_enabled(v81, v82);
    v84 = v115;
    if (v83)
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_2688BB000, v81, v82, "MoveSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v85, 2u);
      MEMORY[0x26D6266E0](v85, -1, -1);
    }

    (*(v79 + 8))(v80, v77);
    v86 = v84[21];
    v87 = v84[22];
    __swift_project_boxed_opaque_existential_1(v84 + 18, v86);
    v88 = v104;
    v89 = v101;
    sub_268935590(v104, v101, &unk_2802A56E0, &unk_268B3CDF0);
    v90 = *(v89 + v106[12]);
    v91 = v103;
    sub_268A82B50(v119, v103);
    v92 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v91, 0, 1, v92);
    (*(v87 + 40))(v89, v90, v91, v113, v112, v86, v87);

    sub_2688EF38C(v91, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v88, &unk_2802A56E0, &unk_268B3CDF0);
    return v108[1](v89, v62);
  }
}

uint64_t sub_2689B7060(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_268935590(a1, v49, &unk_2802A57C0, &qword_268B3BE00);
  v16 = LOBYTE(v49[5]);
  sub_2688EF38C(v49, &unk_2802A57C0, &qword_268B3BE00);
  if (v16 != 1)
  {
    return a2(a1);
  }

  v17 = a4 == 0x656372756F73 && a5 == 0xE600000000000000;
  if (v17 || (sub_268B38444() & 1) != 0)
  {
    v18 = MoveSpeakerSourceUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
    if (v19)
    {
LABEL_8:
      sub_2688C2ECC();
      v20 = swift_allocError();
      v22 = 30;
LABEL_9:
      *v21 = v22;
      v49[0] = v20;
      LOBYTE(v49[5]) = 1;
      a2(v49);
      return sub_2688EF38C(v49, &unk_2802A57C0, &qword_268B3BE00);
    }

    if (v18 == 1)
    {
      v38 = *(a7 + 56);
      v25 = "ioMentionedInIntent";
      v26 = v38[5];
      v27 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v26);
      v28 = 0xD000000000000025;
      return sub_2689CE88C(v28, v25 | 0x8000000000000000, v45, a9, v26, v27);
    }

    if (v18 != 2)
    {
      if (v18 != 3)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    v32.n128_f64[0] = OUTLINED_FUNCTION_3_20();
    *(&__src[8] + 3) = v32;
    OUTLINED_FUNCTION_0_23(v32);
    BYTE1(__src[10]) = 1;
    memcpy(__dst, __src, 0x51uLL);
    sub_2688EF38C(__dst, &qword_2802A5C88, qword_268B418C0);
    LODWORD(__src[0]) = 0;
    *&__src[1] = 0u;
    OUTLINED_FUNCTION_0_23(0);
    __src[9] = 0;
    LOBYTE(__src[10]) = 1;
    if (sub_268B0F7F4(a10))
    {
      sub_268A65CAC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_268B3BBC0;
    v34 = OUTLINED_FUNCTION_1_27(v33, "TTRErrorCodeInfo");
    v35 = 0x8000000268B59310;
    v34[9] = MEMORY[0x277D837D0];
    v37 = v36 | 3;
LABEL_25:
    v34[6] = v37;
    v34[7] = v35;
    sub_268B37B84();
    memcpy(v49, __src, 0x53uLL);
    sub_268AB2B1C();

    memcpy(v46, __src, 0x53uLL);
    return sub_26891864C(v46);
  }

  v29 = a4 == 0x74616E6974736564 && a5 == 0xEC000000736E6F69;
  if (!v29 && (sub_268B38444() & 1) == 0)
  {
    sub_2688C2ECC();
    v20 = swift_allocError();
    v22 = 32;
    goto LABEL_9;
  }

  v30 = MoveSpeakerDestinationsUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
  if (v31)
  {
LABEL_21:
    sub_2688C2ECC();
    v20 = swift_allocError();
    v22 = 31;
    goto LABEL_9;
  }

  if (v30 == 1)
  {
    v40.n128_f64[0] = OUTLINED_FUNCTION_3_20();
    OUTLINED_FUNCTION_0_23(v40);
    *(&__src[8] + 2) = v41;
    BYTE2(__src[10]) = 1;
    memcpy(__dst, __src, 0x51uLL);
    sub_2688EF38C(__dst, &qword_2802A5C88, qword_268B418C0);
    LODWORD(__src[0]) = 0;
    *&__src[1] = 0u;
    OUTLINED_FUNCTION_0_23(0);
    __src[9] = 0;
    LOBYTE(__src[10]) = 1;
    if (sub_268B0F7F4(a10))
    {
      sub_268A65CAC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_268B3BBC0;
    v34 = OUTLINED_FUNCTION_1_27(v42, "TTRErrorCodeInfo");
    v35 = 0x8000000268B59280;
    v34[9] = MEMORY[0x277D837D0];
    v37 = v43 | 9;
    goto LABEL_25;
  }

  if (v30 != 3)
  {
    if (v30 == 2)
    {
LABEL_14:
      v24 = *(a7 + 56);
      v25 = "noDestinationSpeakerFound";
      v26 = v24[5];
      v27 = v24[6];
      __swift_project_boxed_opaque_existential_1(v24 + 2, v26);
      v28 = 0xD000000000000033;
      return sub_2689CE88C(v28, v25 | 0x8000000000000000, v45, a9, v26, v27);
    }

    goto LABEL_21;
  }

  sub_26890C900(a7 + 16, v49);
  sub_26890C900(v49, __src);
  v39 = sub_268ABE424(__src);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  return sub_268ABEFDC(v39 | 0x100u, v45, a9);
}

uint64_t type metadata accessor for MoveSpeakerUnsupportedValueStrategy(uint64_t a1)
{
  result = qword_2802A6B08;
  if (!qword_2802A6B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2689B75A8()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

void OUTLINED_FUNCTION_0_23(__n128 a1)
{
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = a1;
}

uint64_t OUTLINED_FUNCTION_1_27@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = 0xD000000000000010;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_2689B76D8(void (*a1)(uint64_t *__return_ptr), void (*a2)(uint64_t *__return_ptr))
{
  a1(&v8);
  if (!v8 || (sub_2689619F4(), v4 = v3, v5 = v3, , v5 == 5))
  {
    sub_2689B7770(a2);
    if (v6)
    {

      return 1;
    }

    else
    {
      return 5;
    }
  }

  return v4;
}

uint64_t sub_2689B7770(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v4);
  if (!v4)
  {
    return 0;
  }

  sub_268962000();
  v2 = v1;

  return v2;
}

Swift::String_optional __swiftcall UsoTask_noVerb_common_Setting.verb()()
{
  if (sub_2689B7880() == 3 && sub_2689B76D8(MEMORY[0x277D5E228], MEMORY[0x277D5E228]) == 5 && (sub_268B356E4(), v6) && (sub_268962A68(), v1 = v0, v2 = v0, , v2 != 24))
  {
    v3 = sub_26893E3F8(v1);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2689B7880()
{
  v0 = sub_268A9D13C();
  if (v0 == 6)
  {
    return 3;
  }

  return sub_2689ABD4C(v0);
}

uint64_t UsoTask_noVerb_common_Setting.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v46 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v46 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v46 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v46 - v16;
  v18 = sub_268B356E4();
  if (v46[1])
  {
    sub_2689633E8();
    if (v19)
    {
      if (qword_2802A4F30 != -1)
      {
        v19 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_1_28(v19, qword_2802CDA10);
      v20(v17);
      v21 = sub_268B37A34();
      v22 = sub_268B37F04();
      if (OUTLINED_FUNCTION_2_19(v22))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_22_6(&dword_2688BB000, v23, v24, "UsoTask_noVerb_common_Setting#shouldHandle Task is mediaPlayer. Handling in controls");
        OUTLINED_FUNCTION_12();
      }

      v25 = 0;
    }

    else
    {
      sub_268964334();
      if (v30)
      {
        if (qword_2802A4F30 != -1)
        {
          v30 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_1_28(v30, qword_2802CDA10);
        v31(v15);
        v32 = sub_268B37A34();
        v33 = sub_268B37F04();
        if (OUTLINED_FUNCTION_2_19(v33))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_22_6(&dword_2688BB000, v34, v35, "UsoTask_noVerb_common_Setting#shouldHandle Task is media. Handling in controls");
          OUTLINED_FUNCTION_12();
        }

        v25 = 1;
        v17 = v15;
      }

      else
      {
        sub_268963658();
        if (v36)
        {
          if (qword_2802A4F30 != -1)
          {
            v36 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          OUTLINED_FUNCTION_1_28(v36, qword_2802CDA10);
          v37(v12);
          v38 = sub_268B37A34();
          v39 = sub_268B37F04();
          if (OUTLINED_FUNCTION_2_19(v39))
          {
            v40 = OUTLINED_FUNCTION_14();
            *v40 = 0;
            _os_log_impl(&dword_2688BB000, v38, v9, "UsoTask_noVerb_common_Setting#shouldHandle Task is settings. Handling in controls", v40, 2u);
            OUTLINED_FUNCTION_12();
          }

          v25 = 2;
          v17 = v12;
        }

        else
        {
          if (qword_2802A4F30 != -1)
          {
            v36 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          OUTLINED_FUNCTION_1_28(v36, qword_2802CDA10);
          v41(v9);
          v42 = sub_268B37A34();
          v43 = sub_268B37EE4();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = OUTLINED_FUNCTION_14();
            *v44 = 0;
            _os_log_impl(&dword_2688BB000, v42, v43, "UsoTask_noVerb_common_Setting#shouldHandle Task is not mediaPlayer/media/setting: Not handling in controls", v44, 2u);
            OUTLINED_FUNCTION_12();
          }

          v25 = 3;
          v17 = v9;
        }
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v18 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_1_28(v18, qword_2802CDA10);
    v26(v6);
    v27 = sub_268B37A34();
    v28 = sub_268B37EE4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_14();
      *v29 = 0;
      _os_log_impl(&dword_2688BB000, v27, v28, "UsoTask_noVerb_common_Setting#shouldHandle no referenced setting found in task. Not handling in Controls", v29, 2u);
      OUTLINED_FUNCTION_12();
    }

    v25 = 3;
    v17 = v6;
  }

  result = (*(v3 + 8))(v17, v2);
  *a1 = v25;
  return result;
}

uint64_t sub_2689B7E34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2689B7E88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2689B7EDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689B7F30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689B7F84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689B7FD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689B802C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689B8080(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689B80E4(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689B8138(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689B819C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689B8200(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689B8264(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2689B82C8(uint64_t a1)
{
  result = sub_2689B8374(&qword_2802A6B18, &protocol conformance descriptor for UsoTask_noVerb_common_Setting);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689B8374(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B36014();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_2_19(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_2689B8400()
{
  v1 = sub_268B18100(v0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2688EFD0C();
    for (i = 0; ; ++i)
    {
      if (v3 == i)
      {

        goto LABEL_13;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D625BD0](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v7 = [v5 context];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 proximity];

        if ((v9 - 1) >= 4)
        {
          if (!v9)
          {
            goto LABEL_18;
          }

          sub_268B38474();
          __break(1u);
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_13:
  v10 = sub_268B18100(v0);
  if (!v10)
  {
    return 0;
  }

  v2 = v10;
  if (!sub_2688EFD0C())
  {

    return 0;
  }

  sub_2688EFD10();
  if ((v2 & 0xC000000000000001) == 0)
  {
    v11 = *(v2 + 32);
    goto LABEL_17;
  }

LABEL_26:
  v11 = MEMORY[0x26D625BD0](0, v2);
LABEL_17:
  v6 = v11;
LABEL_18:

  return v6;
}

id sub_2689B859C()
{
  result = [v0 volumeLevel];
  if (result)
  {
    v2 = result;
    v3 = [result volumeSettingState];

    return (v3 == 6);
  }

  return result;
}

id sub_2689B85F4()
{
  result = [v0 volumeLevel];
  if (result)
  {
    v2 = result;
    v3 = [result volumeSettingState];

    return (v3 == 7);
  }

  return result;
}

uint64_t sub_2689B864C()
{
  result = [v0 volumeLevel];
  if (result)
  {
    v2 = result;
    v3 = [result volumeSettingValue];

    if (v3)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2689B86B8()
{
  result = [v0 volumeLevel];
  if (result)
  {
    v2 = result;
    v3 = [result volumeSettingState];

    return (v3 != 0);
  }

  return result;
}

BOOL sub_2689B8710()
{
  v2 = v1;
  sub_268B37A54();
  OUTLINED_FUNCTION_1_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 volumeLevel];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 volumeSettingState];

    if ((v10 | 4) == 5)
    {
      return [v2 settingAttribute] != 1;
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v12 = __swift_project_value_buffer(v0, qword_2802CDA10);
    (*(v4 + 16))(v7, v12, v0);
    v13 = sub_268B37A34();
    v14 = sub_268B37EE4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2688BB000, v13, v14, "volumeSettingState not specified in the intent. isIncreaseOrDecreaseVolumeIntent = false", v15, 2u);
      MEMORY[0x26D6266E0](v15, -1, -1);
    }

    (*(v4 + 8))(v7, v0);
  }

  return 0;
}

float sub_2689B88E0()
{
  v2 = v1;
  sub_268B37A54();
  OUTLINED_FUNCTION_1_15();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = [v2 volumeLevel];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 volumeSettingQualifier];

    if (v13 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v14 = __swift_project_value_buffer(v0, qword_2802CDA10);
      (*(v4 + 16))(v10, v14, v0);
      v15 = sub_268B37A34();
      v16 = sub_268B37ED4();
      v17 = 0.5;
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_15;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v15, v16, "resolveVolumeLevelUsingQualifiers a little triggered", v18, 2u);
      goto LABEL_13;
    }
  }

  v19 = [v2 volumeLevel];
  v17 = 1.0;
  if (v19)
  {
    v20 = v19;
    v21 = [v19 volumeSettingQualifier];

    if (v21 == 2)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v22 = __swift_project_value_buffer(v0, qword_2802CDA10);
      (*(v4 + 16))(v8, v22, v0);
      v15 = sub_268B37A34();
      v23 = sub_268B37ED4();
      v17 = 2.0;
      if (!os_log_type_enabled(v15, v23))
      {
        v10 = v8;
        goto LABEL_15;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v15, v23, "resolveVolumeLevelUsingQualifiers a lot triggered", v18, 2u);
      v10 = v8;
LABEL_13:
      MEMORY[0x26D6266E0](v18, -1, -1);
LABEL_15:

      (*(v4 + 8))(v10, v0);
    }
  }

  return v17;
}

id sub_2689B8BD4()
{
  result = [objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentHandler()) init];
  qword_2802CD948 = result;
  return result;
}

uint64_t sub_2689B8C08@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  v7 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v33 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v15 = __swift_project_value_buffer(v7, qword_2802CDA10);
  v32 = *(v9 + 16);
  v32(v14, v15, v7);
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_14();
    v31 = v2;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "GetVolumeLevelFlowStrategy#actionForInput called", v18, 2u);
    v2 = v31;
    OUTLINED_FUNCTION_12();
  }

  v19 = *(v9 + 8);
  v19(v14, v7);
  sub_268B35414();
  v20 = sub_268A9AAA8(v6);
  (*(v2 + 8))(v6, v34);
  if (v20)
  {
    return sub_268B34EC4();
  }

  v22 = v33;
  v32(v33, v15, v7);
  v23 = sub_268B37A34();
  v24 = sub_268B37EE4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_14();
    *v25 = 0;
    _os_log_impl(&dword_2688BB000, v23, v24, "GetVolumeLevelFlowStrategy#actionForInput unable to create SettingsIntent from parse", v25, 2u);
    OUTLINED_FUNCTION_12();
  }

  v19(v22, v7);
  type metadata accessor for ErrorFilingHelper();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4_10(v26 + 22, v27, v28, v29);
  return sub_268B34ED4();
}

void sub_2689B8F24(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v53 = a2;
  v59 = a3;
  sub_268B35494();
  OUTLINED_FUNCTION_1();
  v57 = v7;
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v56 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v48 - v11;
  v55 = type metadata accessor for SettingsIntent(0);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v52 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v24 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v50 = *(v18 + 16);
  v51 = v24;
  v50(v23);
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_14();
    v49 = v18;
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "GetVolumeLevelFlowStrategy#makeIntentFromParse called", v27, 2u);
    v18 = v49;
    OUTLINED_FUNCTION_12();
  }

  v28 = *(v18 + 8);
  v28(v23, v16);
  v29 = v56;
  (*(v57 + 16))(v56, a1, v58);
  sub_26897BBA8(v29, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v55) == 1)
  {
    sub_26891E52C(v12);
    v30 = v52;
    (v50)(v52, v51, v16);
    v31 = sub_268B37A34();
    v32 = sub_268B37EE4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_14();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "GetVolumeLevelFlowStrategy#makeIntentFromParse unable to create SettingsIntent from parse", v33, 2u);
      OUTLINED_FUNCTION_12();
    }

    v28(v30, v16);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_1_29();
    OUTLINED_FUNCTION_4_10(v34 + 27, v35, v36, v37);
    sub_2688C2ECC();
    v38 = swift_allocError();
    *v39 = 23;
    v59(v38, 1);
  }

  else
  {
    sub_26891E594(v12, v15);
    v40 = v53;
    if (v53)
    {
      v41 = v53;
    }

    else
    {
      v41 = [objc_allocWithZone(type metadata accessor for GetVolumeLevelIntent()) init];
    }

    v42 = v40;
    sub_2689B9C08(v15);
    v43 = v54;
    v44 = v54[5];
    v45 = v54[6];
    __swift_project_boxed_opaque_existential_1(v54 + 2, v44);
    v46 = swift_allocObject();
    v46[2] = v59;
    v46[3] = a4;
    v46[4] = v41;
    v47 = v41;

    sub_268AD35F4(v47, &off_287953BE8, (v43 + 7), sub_2689B9F80, v46, v44, v45);

    sub_26891E5F8(v15);
  }
}

uint64_t sub_2689B9414(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
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
    _os_log_impl(&dword_2688BB000, v10, v11, "GetVolumeLevelFlowStrategy#makeIntentFromParse finished creating intent from parse", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

uint64_t sub_2689B960C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, VolumeLevelFlowStrategy, a6);
}

uint64_t sub_2689B969C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BB208](a1, VolumeLevelFlowStrategy, a3);
}

id sub_2689B96E8()
{
  if (qword_2802A4DF0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD948;

  return v1;
}

uint64_t sub_2689B9744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, VolumeLevelFlowStrategy, a6);
}

uint64_t sub_2689B97B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, VolumeLevelFlowStrategy, a6);
}

uint64_t sub_2689B981C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, VolumeLevelFlowStrategy, a6);
}

uint64_t sub_2689B9888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BBA28](a1, VolumeLevelFlowStrategy, a3);
}

uint64_t sub_2689B98D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, VolumeLevelFlowStrategy, a4);
}

uint64_t sub_2689B992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, VolumeLevelFlowStrategy, a6);
}

uint64_t sub_2689B9998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, VolumeLevelFlowStrategy, a7);
}

uint64_t sub_2689B9A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, VolumeLevelFlowStrategy, a7);
}

uint64_t sub_2689B9B68(uint64_t a1, uint64_t a2)
{
  result = sub_2689B9F8C(&qword_2802A6B90, a2, type metadata accessor for GetVolumeLevelFlowStrategy, &unk_268B41B84);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689B9C08(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26897EC08(a1, v8);
  sub_2689B9F8C(&qword_2802A6678, 255, type metadata accessor for SettingsIntent, &unk_268B40848);
  v9 = sub_268B37854();
  v10 = *(v9 + 16);
  if (v10)
  {
    v23 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v11 = v9 + 32;
    do
    {
      sub_26890C900(v11, v22);
      sub_26890C900(v22, v21);
      sub_268AC88F0(v21);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v11 += 40;
      --v10;
    }

    while (v10);

    v12 = v23;
    v13 = off_28795BBF8;
    VolumeLevelIntent = type metadata accessor for GetVolumeLevelIntent();
    v13(v12, VolumeLevelIntent, &off_28795BBE8);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37ED4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Home Automation entities are empty, skip adding to intent.", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return sub_26891E5F8(v8);
}

uint64_t sub_2689B9F40()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2689B9F8C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2689BA004(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v35[0] = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2802A4F30 != -1)
  {
LABEL_31:
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_268B37A34();
  v12 = sub_268B37ED4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "SkipContentDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v35[1] = a3;
  v9 = a3;
  v14 = sub_268B35244();
  v38 = MEMORY[0x277D84F90];
  v15 = sub_2688EFD0C();
  v16 = 0;
  a3 = (v14 & 0xC000000000000001);
  v7 = v14 & 0xFFFFFFFFFFFFFF8;
  while (v15 != v16)
  {
    if (a3)
    {
      v17 = MEMORY[0x26D625BD0](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = sub_26892D418(v17);
    v21 = v20;
    v22 = sub_268B37724();
    v9 = v23;
    if (!v21)
    {

LABEL_18:
      v9 = &v38;
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      goto LABEL_20;
    }

    if (v19 != v22 || v21 != v23)
    {
      v25 = sub_268B38444();

      if (v25)
      {

        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_20:
    ++v16;
  }

  sub_268AE2278(v38);
  v27 = v26;

  v28 = [v35[0] direction];
  v29 = sub_268B35254();
  sub_268AE23DC(v29);
  v31 = v30;

  if (v31)
  {
    v32 = 256;
  }

  else
  {
    v32 = 0;
  }

  if (v28 == 2)
  {
    v33 = v32 + 1;
  }

  else
  {
    v33 = v32;
  }

  sub_268AB815C(v27, v33, v36, v37);
}

void sub_2689BA39C()
{
  type metadata accessor for SkipContentDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_2689BA488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SkipContentDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_2689BA538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SkipContentDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_2689BA5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SkipContentDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_2689BA680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SkipContentDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_2689BA73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for SkipContentDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_2689BA7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for SkipContentDeviceDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_2689BA8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = type metadata accessor for SkipContentDeviceDisambiguationStrategy();
  *v16 = v8;
  v16[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_2689BAAA0(uint64_t a1, uint64_t a2)
{
  result = sub_2689BAAF8(&qword_2802A6BB0, a2, type metadata accessor for SkipContentDeviceDisambiguationStrategy, &unk_268B41D68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689BAAF8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2689BAB40(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_2689BC8D8(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2689BABA0()
{
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v89 = v2;
  v90 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v5 = v4 - v3;
  v6 = sub_268B35D34();
  OUTLINED_FUNCTION_1();
  v88 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BB8, &qword_268B41E28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v81 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BC0, &qword_268B41E30);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20_0();
  v20 = v18 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v81 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v81 - v25;
  sub_268B357C4();
  OUTLINED_FUNCTION_86_1();
  v27 = sub_268B35D74();
  OUTLINED_FUNCTION_7_15(v27);

  if (v92)
  {
    v28 = sub_268B35D64();
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      v31 = v28;
      return *&v31;
    }

    return 0;
  }

  v85 = v24;
  v86 = v26;
  v82 = v11;
  v83 = v20;
  v84 = v5;
  v33 = v89;
  v34 = v90;
  v87 = v15;
  sub_268B357C4();
  OUTLINED_FUNCTION_86_1();
  v35 = sub_268B36094();
  OUTLINED_FUNCTION_7_15(v35);

  if (v92)
  {
    v36 = sub_268B36064();
    if (v37)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = v36;
    }

    v39 = sub_268B36074();
    if ((v40 & 1) == 0)
    {
      v41 = v39;
      v42 = sub_268B36084();
      v44 = v43;

      if ((v44 & 1) == 0)
      {
        v31 = v38 + v41 / v42;
        return *&v31;
      }

      return 0;
    }

    goto LABEL_17;
  }

  v45 = v0;
  sub_268B357C4();
  OUTLINED_FUNCTION_86_1();
  sub_268B35D54();
  OUTLINED_FUNCTION_17_10();

  if (!v92)
  {
    sub_268B357C4();
    OUTLINED_FUNCTION_86_1();
    v51 = sub_268B36294();
    OUTLINED_FUNCTION_7_15(v51);

    v52 = v92;
    if (!v92)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v53 = __swift_project_value_buffer(v34, qword_2802CDA10);
      v54 = v33;
      v55 = v84;
      (*(v33 + 16))(v84, v53, v34);

      v56 = sub_268B37A34();
      v57 = sub_268B37EE4();

      if (os_log_type_enabled(v56, v57))
      {
        OUTLINED_FUNCTION_172_0();
        v58 = OUTLINED_FUNCTION_118_0();
        v91 = v45;
        v92 = v58;
        *v34 = 136315138;
        sub_268B35D04();

        v59 = sub_268B37C24();
        v61 = sub_26892CDB8(v59, v60, &v92);

        *(v34 + 4) = v61;
        OUTLINED_FUNCTION_19_9(&dword_2688BB000, v62, v63, "UsoEntityCommonNumber#getNumericValue got unexpected number entityType %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      (*(v54 + 8))(v55, v34);
      return 0;
    }

    if (sub_268B36274())
    {
      sub_268B357C4();
    }

    v64 = v6;
    v65 = v87;
    v66 = v88;
    v68 = v85;
    v67 = v86;
    OUTLINED_FUNCTION_17_10();

    if (!v92)
    {
LABEL_17:

      return 0;
    }

    sub_268B35D14();
    (*(v66 + 104))(v68, *MEMORY[0x277D5E880], v64);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v64);
    v69 = *(v12 + 48);
    sub_2688F1FA4(v67, v65, &qword_2802A6BC0, &qword_268B41E30);
    sub_2688F1FA4(v68, v65 + v69, &qword_2802A6BC0, &qword_268B41E30);
    OUTLINED_FUNCTION_54_0(v65);
    if (v71)
    {
      OUTLINED_FUNCTION_12_2(v68);
      OUTLINED_FUNCTION_12_2(v67);
      OUTLINED_FUNCTION_54_0(v65 + v69);
      if (v71)
      {
        sub_2688C058C(v65, &qword_2802A6BC0, &qword_268B41E30);
LABEL_40:
        if (sub_268B36284())
        {
          v78 = COERCE_DOUBLE(sub_2689BABA0());
          v80 = v79;

          if ((v80 & 1) == 0)
          {
            v31 = v78 / 100.0;
            return *&v31;
          }

          return 0;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v70 = v83;
      sub_2688F1FA4(v65, v83, &qword_2802A6BC0, &qword_268B41E30);
      OUTLINED_FUNCTION_54_0(v65 + v69);
      if (!v71)
      {
        v72 = v88;
        v73 = v65 + v69;
        v74 = v82;
        (*(v88 + 32))(v82, v73, v64);
        sub_2689BC814();
        LODWORD(v89) = sub_268B37BB4();
        v90 = v52;
        v75 = *(v72 + 8);
        v75(v74, v64);
        sub_2688C058C(v68, &qword_2802A6BC0, &qword_268B41E30);
        sub_2688C058C(v67, &qword_2802A6BC0, &qword_268B41E30);
        v75(v83, v64);
        v76 = OUTLINED_FUNCTION_71_1();
        sub_2688C058C(v76, v77, &qword_268B41E30);
        if (v89)
        {
          goto LABEL_40;
        }

LABEL_37:

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_12_2(v68);
      OUTLINED_FUNCTION_12_2(v67);
      (*(v88 + 8))(v70, v64);
    }

    sub_2688C058C(v65, &qword_2802A6BB8, &qword_268B41E28);
    goto LABEL_37;
  }

  v46 = sub_268B35D44();
  if (!v47)
  {
    goto LABEL_17;
  }

  v48 = sub_2689BAB40(v46, v47);
  v50 = v49;

  if (v50)
  {
    return 0;
  }

  else
  {
    return v48;
  }
}

uint64_t sub_2689BB2D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v127 = v4;
  v128 = v5;
  MEMORY[0x28223BE20](*&v4);
  OUTLINED_FUNCTION_20_0();
  v126 = v6 - v7;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  v124 = &v115[-v9];
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v125 = &v115[-v11];
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  v121 = &v115[-v13];
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  v122 = &v115[-v15];
  v16 = sub_268B35D34();
  OUTLINED_FUNCTION_1();
  v123 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BB8, &qword_268B41E28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v25 = &v115[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BC0, &qword_268B41E30);
  v27 = OUTLINED_FUNCTION_22(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_20_0();
  v120 = v28 - v29;
  OUTLINED_FUNCTION_8();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v115[-v32];
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v115[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v115[-v37];
  sub_268B357C4();
  sub_268B35E94();

  if (!v132)
  {
    sub_2688C058C(&v130, &byte_2802A6450, &byte_268B3BE10);
    v40 = v127;
    v39 = v128;
    goto LABEL_24;
  }

  sub_268B36294();
  OUTLINED_FUNCTION_4_15();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v40 = v127;
    v39 = v128;
    goto LABEL_24;
  }

  v118 = a1;
  v119 = v129;
  if (sub_268B36274())
  {
    sub_268B357C4();
  }

  sub_268B35E94();

  if (!v132)
  {
    sub_2688C058C(&v130, &byte_2802A6450, &byte_268B3BE10);
    goto LABEL_15;
  }

  sub_268B35D54();
  OUTLINED_FUNCTION_4_15();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v45 = 1;
    a1 = v118;
    v40 = v127;
    v39 = v128;
    goto LABEL_16;
  }

  v117 = v129;
  sub_268B35D14();
  (*(v123 + 104))(v36, *MEMORY[0x277D5E880], v16);
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v16);
  v41 = *(v22 + 48);
  sub_2688F1FA4(v38, v25, &qword_2802A6BC0, &qword_268B41E30);
  sub_2688F1FA4(v36, &v25[v41], &qword_2802A6BC0, &qword_268B41E30);
  OUTLINED_FUNCTION_124(v25);
  if (!v91)
  {
    sub_2688F1FA4(v25, v33, &qword_2802A6BC0, &qword_268B41E30);
    OUTLINED_FUNCTION_124(&v25[v41]);
    if (!v91)
    {
      v100 = v123;
      (*(v123 + 32))(v21, &v25[v41], v16);
      sub_2689BC814();
      v116 = sub_268B37BB4();
      v101 = *(v100 + 8);
      v101(v21, v16);
      sub_2688C058C(v36, &qword_2802A6BC0, &qword_268B41E30);
      sub_2688C058C(v38, &qword_2802A6BC0, &qword_268B41E30);
      v101(v33, v16);
      v44 = sub_2688C058C(v25, &qword_2802A6BC0, &qword_268B41E30);
      a1 = v118;
      v40 = v127;
      v39 = v128;
      if (v116)
      {
        goto LABEL_65;
      }

LABEL_58:

      v45 = 1;
      goto LABEL_16;
    }

    sub_2688C058C(v36, &qword_2802A6BC0, &qword_268B41E30);
    v92 = OUTLINED_FUNCTION_71_1();
    sub_2688C058C(v92, v93, &qword_268B41E30);
    (*(v123 + 8))(v33, v16);
LABEL_57:
    sub_2688C058C(v25, &qword_2802A6BB8, &qword_268B41E28);
    a1 = v118;
    v40 = v127;
    v39 = v128;
    goto LABEL_58;
  }

  sub_2688C058C(v36, &qword_2802A6BC0, &qword_268B41E30);
  v42 = OUTLINED_FUNCTION_71_1();
  sub_2688C058C(v42, v43, &qword_268B41E30);
  OUTLINED_FUNCTION_124(&v25[v41]);
  if (!v91)
  {
    goto LABEL_57;
  }

  v44 = sub_2688C058C(v25, &qword_2802A6BC0, &qword_268B41E30);
  a1 = v118;
  v40 = v127;
  v39 = v128;
LABEL_65:
  if (qword_2802A4F30 != -1)
  {
    v44 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_3_21(v44, qword_2802CDA10);
  v102 = v122;
  v103(v122);

  v38 = sub_268B37A34();
  v104 = sub_268B37ED4();

  if (os_log_type_enabled(v38, v104))
  {
    v105 = OUTLINED_FUNCTION_172_0();
    v106 = swift_slowAlloc();
    v129 = v106;
    *v105 = 136315138;
    v107 = v120;
    sub_268B35D14();
    OUTLINED_FUNCTION_124(v107);
    if (v91)
    {
      sub_2688C058C(v107, &qword_2802A6BC0, &qword_268B41E30);
      *&v108 = 0.0;
      v111 = 0;
    }

    else
    {
      *&v108 = COERCE_DOUBLE(sub_268B35D24());
      v109 = v107;
      v111 = v110;
      (*(v123 + 8))(v109, v16);
    }

    v130 = *&v108;
    v131 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
    v112 = sub_268B37C24();
    v114 = sub_26892CDB8(v112, v113, &v129);

    *(v105 + 4) = v114;
    _os_log_impl(&dword_2688BB000, v38, v104, "Multiplier value: %s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v106);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v39 = v128;
    (*(v128 + 8))(v122, COERCE_DOUBLE(*&v40));
    v45 = 0;
  }

  else
  {

    (*(v39 + 8))(v102, COERCE_DOUBLE(*&v40));
    v45 = 0;
  }

LABEL_16:
  if (sub_268B36284())
  {
    sub_268B357C4();
  }

  sub_268B35E94();

  if (v132)
  {
    sub_268B35D74();
    OUTLINED_FUNCTION_4_15();
    if (swift_dynamicCast())
    {
      v46 = sub_268B35D64();
      if ((v47 & 1) == 0)
      {
        v94 = v46;
        if (qword_2802A4F30 != -1)
        {
          v46 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_3_21(v46, qword_2802CDA10);
        v95 = v121;
        v96(v121);
        v97 = sub_268B37A34();
        v98 = sub_268B37ED4();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = OUTLINED_FUNCTION_172_0();
          *v99 = 134217984;
          *(v99 + 4) = v94;
          _os_log_impl(&dword_2688BB000, v97, v98, "Number value: %lld", v99, 0xCu);
          OUTLINED_FUNCTION_12();
        }

        (*(v39 + 8))(v95, COERCE_DOUBLE(*&v40));
        v130 = v94;
        LOBYTE(v131) = 0;
        LOBYTE(v129) = v45;
        sub_268980810();
        sub_268B36644();

        goto LABEL_52;
      }
    }
  }

  else
  {

    sub_2688C058C(&v130, &byte_2802A6450, &byte_268B3BE10);
  }

LABEL_24:
  sub_268B357C4();
  sub_268B35E94();

  v48 = v126;
  if (v132)
  {
    sub_268B35D54();
    OUTLINED_FUNCTION_4_15();
    if (swift_dynamicCast())
    {
      v49 = sub_268B35D44();
      if (v50)
      {
        *&v51 = COERCE_DOUBLE(sub_2689BAB40(v49, v50));
        v52 = *&v51;
        LODWORD(v54) = v53;
        if (qword_2802A4F30 != -1)
        {
          *&v51 = COERCE_DOUBLE(OUTLINED_FUNCTION_0_0(&qword_2802A4F30));
        }

        OUTLINED_FUNCTION_3_21(v51, qword_2802CDA10);
        v55 = v125;
        v56(v125);
        v57 = sub_268B37A34();
        v58 = sub_268B37ED4();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = OUTLINED_FUNCTION_172_0();
          LODWORD(v128) = v54;
          v54 = v59;
          v60 = swift_slowAlloc();
          v129 = v60;
          v130 = v52;
          *v54 = 136315138;
          LOBYTE(v131) = v128 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BD0, &qword_268B41E38);
          v61 = sub_268B37C24();
          v127 = v52;
          v63 = v40;
          v64 = a1;
          v65 = sub_26892CDB8(v61, v62, &v129);

          *(v54 + 4) = v65;
          a1 = v64;
          _os_log_impl(&dword_2688BB000, v57, v58, "Number value: %s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v60);
          OUTLINED_FUNCTION_12();
          LOBYTE(v54) = v128;
          OUTLINED_FUNCTION_12();

          (*(v39 + 8))(v125, COERCE_DOUBLE(*&v63));
          v52 = v127;
        }

        else
        {

          (*(v39 + 8))(v55, COERCE_DOUBLE(*&v40));
        }

        v130 = v52;
        LOBYTE(v131) = v54 & 1;
LABEL_51:
        LOBYTE(v129) = 1;
        sub_268980810();
        sub_268B36644();
LABEL_52:

        v78 = 0;
        goto LABEL_53;
      }
    }
  }

  else
  {
    sub_2688C058C(&v130, &byte_2802A6450, &byte_268B3BE10);
  }

  sub_268B357C4();
  sub_268B35E94();

  if (v132)
  {
    sub_268B35D74();
    OUTLINED_FUNCTION_4_15();
    v66 = swift_dynamicCast();
    if (v66)
    {
      v67 = sub_268B35D64();
      if ((v68 & 1) == 0)
      {
        v79 = v67;
        if (qword_2802A4F30 != -1)
        {
          v67 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        v80 = v79;
        OUTLINED_FUNCTION_3_21(v67, qword_2802CDA10);
        v81 = v124;
        v82(v124);
        v83 = sub_268B37A34();
        v84 = sub_268B37ED4();
        if (os_log_type_enabled(v83, v84))
        {
          OUTLINED_FUNCTION_172_0();
          v85 = COERCE_DOUBLE(OUTLINED_FUNCTION_118_0());
          v130 = v85;
          *v38 = 136315138;
          v86 = sub_268B37DF4();
          v88 = sub_26892CDB8(v86, v87, &v130);

          *(v38 + 4) = v88;
          _os_log_impl(&dword_2688BB000, v83, v84, "Number value: %s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(*&v85);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();

          (*(v39 + 8))(v124, COERCE_DOUBLE(*&v40));
        }

        else
        {

          (*(v39 + 8))(v81, COERCE_DOUBLE(*&v40));
        }

        v130 = v80;
        LOBYTE(v131) = 0;
        goto LABEL_51;
      }
    }
  }

  else
  {
    v66 = sub_2688C058C(&v130, &byte_2802A6450, &byte_268B3BE10);
  }

  if (qword_2802A4F30 != -1)
  {
    v66 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_3_21(v66, qword_2802CDA10);
  v69(v48);

  v70 = sub_268B37A34();
  v71 = sub_268B37EE4();

  if (os_log_type_enabled(v70, v71))
  {
    OUTLINED_FUNCTION_172_0();
    v72 = COERCE_DOUBLE(OUTLINED_FUNCTION_118_0());
    v129 = v2;
    v130 = v72;
    *v38 = 136315138;
    sub_268B35D04();

    v73 = sub_268B37C24();
    v75 = sub_26892CDB8(v73, v74, &v130);

    *(v38 + 4) = v75;
    OUTLINED_FUNCTION_19_9(&dword_2688BB000, v76, v77, "Number %s cannot be cast to MultipliedNumber, decimal or integer, returning nil.");
    __swift_destroy_boxed_opaque_existential_0Tm(*&v72);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v39 + 8))(v48, COERCE_DOUBLE(*&v40));
  v78 = 1;
LABEL_53:
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080);
  return __swift_storeEnumTagSinglePayload(a1, v78, 1, v89);
}

uint64_t sub_2689BC188()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A64B0, &qword_268B3F280);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  v5 = v3 - v4;
  v7 = MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_6(v7);
  v8 = sub_268B35CF4();
  v9 = OUTLINED_FUNCTION_16_13();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8) != 1)
  {
    sub_2688F1FA4(v0, v5, &qword_2802A64B0, &qword_268B3F280);
    v12 = OUTLINED_FUNCTION_71_1();
    v14 = v13(v12);
    if (v14 == *MEMORY[0x277D5E798])
    {
      v11 = 2;
      goto LABEL_9;
    }

    if (v14 == *MEMORY[0x277D5E7B0])
    {
      v11 = 1;
      goto LABEL_9;
    }

    if (v14 == *MEMORY[0x277D5E7B8])
    {
      v11 = 3;
      goto LABEL_9;
    }

    v16 = OUTLINED_FUNCTION_71_1();
    v17(v16);
  }

  v11 = 7;
LABEL_9:
  sub_2688C058C(v0, &qword_2802A64B0, &qword_268B3F280);
  return v11;
}

uint64_t sub_2689BC314()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A64B0, &qword_268B3F280);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  v5 = v3 - v4;
  v7 = MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_6(v7);
  v8 = sub_268B35CF4();
  v9 = OUTLINED_FUNCTION_16_13();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8) != 1)
  {
    sub_2688F1FA4(v0, v5, &qword_2802A64B0, &qword_268B3F280);
    v12 = OUTLINED_FUNCTION_71_1();
    v14 = v13(v12);
    if (v14 == *MEMORY[0x277D5E7D0])
    {
      v11 = 0;
      goto LABEL_7;
    }

    if (v14 == *MEMORY[0x277D5E7C8])
    {
      v11 = 1;
      goto LABEL_7;
    }

    v16 = OUTLINED_FUNCTION_71_1();
    v17(v16);
  }

  v11 = 2;
LABEL_7:
  sub_2688C058C(v0, &qword_2802A64B0, &qword_268B3F280);
  return v11;
}

BOOL sub_2689BC484(uint64_t a1)
{
  sub_268B357C4();
  sub_268B36094();
  sub_268B35EA4();

  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t sub_2689BC4EC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A64B0, &qword_268B3F280);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v28[-v4];
  v6 = sub_268B35CF4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28[-v14];
  v16 = sub_2689BABA0();
  if ((v17 & 1) == 0)
  {
    v30 = v16;
    v31 = 0;
    v29 = 0;
    sub_2689473F4();
    sub_268B36644();
LABEL_12:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
    v18 = a1;
    v19 = 0;
    return __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
  }

  sub_268B35CE4();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    (*(v8 + 32))(v15, v5, v6);
    (*(v8 + 16))(v12, v15, v6);
    v21 = (*(v8 + 88))(v12, v6);
    if (v21 == *MEMORY[0x277D5E7A8])
    {
      v22 = 0x3FF0000000000000;
    }

    else if (v21 == *MEMORY[0x277D5E7B0])
    {
      v22 = 0x4000000000000000;
    }

    else
    {
      if (v21 != *MEMORY[0x277D5E7B8])
      {
        v24 = *(v8 + 8);
        v24(v15, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
        v25 = OUTLINED_FUNCTION_16_13();
        __swift_storeEnumTagSinglePayload(v25, v26, 1, v27);
        return v24(v12, v6);
      }

      v22 = 0x3FE0000000000000;
    }

    v30 = v22;
    v31 = 0;
    v29 = 0;
    sub_2689473F4();
    sub_268B36644();
    (*(v8 + 8))(v15, v6);
    goto LABEL_12;
  }

  sub_2688C058C(v5, &qword_2802A64B0, &qword_268B3F280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  v18 = OUTLINED_FUNCTION_16_13();
  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
}

unint64_t sub_2689BC814()
{
  result = qword_2802A6BC8;
  if (!qword_2802A6BC8)
  {
    sub_268B35D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6BC8);
  }

  return result;
}

_BYTE *sub_2689BC86C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_2689BC8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_268B381B4();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

void *OUTLINED_FUNCTION_7_15(uint64_t a1)
{

  return sub_268B35EA4();
}

void *OUTLINED_FUNCTION_17_10()
{

  return sub_268B35EA4();
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1)
{

  return sub_268B35CE4();
}

void OUTLINED_FUNCTION_19_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2689BCAAC(uint64_t a1)
{
  if (qword_2802A4DF8 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_24(&qword_2802A4DF8);
  }

  OUTLINED_FUNCTION_34_3(a1);

  v1 = sub_2689BEA60();

  return v1;
}

uint64_t *sub_2689BCB2C()
{
  if (qword_2802A4DF8 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_2802A4DF8);
  }

  return &qword_2802A6BD8;
}

uint64_t sub_2689BCB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE0, &qword_268B41E48);
  v4[6] = swift_task_alloc();
  v6 = sub_268B36954();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[2] = a2;

  return MEMORY[0x2822009F8](sub_2689BCC94, 0, 0);
}

uint64_t sub_2689BCC94()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_2689BF0E0(v0[4], v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = sub_2689BED24(v0[6]);
    sub_2689BCAAC(v3);
    OUTLINED_FUNCTION_30_6();
    v0[15] = v4;
    swift_getObjectType();
    sub_2689BF1A4();
    OUTLINED_FUNCTION_1_30();
    sub_2689BD944();
    OUTLINED_FUNCTION_1_30();
    v0[16] = sub_2689BD904();
    swift_task_alloc();
    OUTLINED_FUNCTION_16_14();
    v0[17] = v5;
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_4_16(v5);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_26_6();
    v10 = v9(v8);
    sub_2689BCAAC(v10);
    OUTLINED_FUNCTION_30_6();
    v0[11] = v11;
    swift_getObjectType();
    sub_2689BF1A4();
    v0[12] = OUTLINED_FUNCTION_23_9();
    swift_task_alloc();
    OUTLINED_FUNCTION_16_14();
    v0[13] = v12;
    *v12 = v13;
    v7 = OUTLINED_FUNCTION_5_8(v12);
  }

  return MEMORY[0x28213DAA0](v7);
}

uint64_t sub_2689BCE54()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v0;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2689BCFAC()
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[7];
  v8 = *v1;
  OUTLINED_FUNCTION_89();
  *v9 = v8;
  *(v10 + 144) = v0;

  (*(v6 + 8))(v5, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2689BD144()
{
  OUTLINED_FUNCTION_158();
  (*(v0[8] + 8))(v0[10], v0[7]);

  OUTLINED_FUNCTION_222();

  return v1();
}

uint64_t sub_2689BD1CC()
{
  OUTLINED_FUNCTION_17_11();
  (*(v0[8] + 8))(v0[10], v0[7]);

  OUTLINED_FUNCTION_222();

  return v1();
}

uint64_t sub_2689BD25C()
{
  OUTLINED_FUNCTION_158();

  OUTLINED_FUNCTION_222();

  return v0();
}

uint64_t sub_2689BD2CC()
{
  OUTLINED_FUNCTION_17_11();

  OUTLINED_FUNCTION_222();

  return v0();
}

uint64_t sub_2689BD344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE0, &qword_268B41E48);
  v4[6] = swift_task_alloc();
  v6 = sub_268B36954();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[2] = a2;

  return MEMORY[0x2822009F8](sub_2689BD454, 0, 0);
}

uint64_t sub_2689BD454()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_2689BF0E0(v0[4], v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = sub_2689BED24(v0[6]);
    sub_2689BCAAC(v3);
    OUTLINED_FUNCTION_30_6();
    v0[15] = v4;
    swift_getObjectType();
    sub_2689BF150();
    OUTLINED_FUNCTION_1_30();
    sub_2689BD944();
    OUTLINED_FUNCTION_1_30();
    v0[16] = sub_2689BD904();
    swift_task_alloc();
    OUTLINED_FUNCTION_16_14();
    v0[17] = v5;
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_4_16(v5);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_26_6();
    v10 = v9(v8);
    sub_2689BCAAC(v10);
    OUTLINED_FUNCTION_30_6();
    v0[11] = v11;
    swift_getObjectType();
    sub_2689BF150();
    v0[12] = OUTLINED_FUNCTION_23_9();
    swift_task_alloc();
    OUTLINED_FUNCTION_16_14();
    v0[13] = v12;
    *v12 = v13;
    v7 = OUTLINED_FUNCTION_5_8(v12);
  }

  return MEMORY[0x28213DAA0](v7);
}

uint64_t sub_2689BD614()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v0;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2689BD76C()
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[7];
  v8 = *v1;
  OUTLINED_FUNCTION_89();
  *v9 = v8;
  *(v10 + 144) = v0;

  (*(v6 + 8))(v5, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2689BD904()
{
  sub_268B36914();
  swift_allocObject();
  return sub_268B36904();
}

uint64_t sub_2689BD944()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6C10, &qword_268B41F30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6C18, qword_268B41F38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_268B36BE4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = sub_268B369D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  sub_268B36944();
  return sub_268B36934();
}

uint64_t sub_2689BDA7C()
{
  OUTLINED_FUNCTION_158();
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE0, &qword_268B41E48);
  v1[5] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE8, &unk_268B41E50);
  v1[6] = v2;
  OUTLINED_FUNCTION_19_0(v2);
  v1[7] = v3;
  v1[8] = OUTLINED_FUNCTION_35_7();
  v1[9] = swift_task_alloc();
  v4 = sub_268B37A54();
  v1[10] = v4;
  OUTLINED_FUNCTION_19_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_35_7();
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2689BDBCC()
{
  OUTLINED_FUNCTION_127();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v1 = __swift_project_value_buffer(v0[10], qword_2802CDA10);
  v2 = OUTLINED_FUNCTION_10_13(v1);
  v3(v2);
  v4 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v6, v7, "AppIntentInvoker#invokeOpenAccessoryItemAppIntentForLyrics");
    OUTLINED_FUNCTION_12();
  }

  v8 = OUTLINED_FUNCTION_24_8();
  v9(v8);
  OUTLINED_FUNCTION_13_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5688, &qword_268B3BAF0);
  swift_allocObject();
  v0[18] = sub_268B369C4();
  v10 = sub_268B36954();
  OUTLINED_FUNCTION_33_6(v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  v0[19] = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_19_10(v11);

  return sub_2689BCB84(v13, v14, v15);
}

uint64_t sub_2689BDD5C()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_89();
  *v7 = v6;
  *(v8 + 160) = v0;

  sub_2689BED24(v5);
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2689BDE74()
{
  v50 = v2;
  v9 = OUTLINED_FUNCTION_12_12();
  v10(v9);
  v11 = OUTLINED_FUNCTION_25_6();
  v12(v11);
  v13 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  os_log_type_enabled(v13, v14);
  OUTLINED_FUNCTION_14_9();
  if (v16)
  {
    v47 = v15;
    swift_slowAlloc();
    v43 = v0;
    v17 = OUTLINED_FUNCTION_31_7();
    v49 = v17;
    *v8 = 136315138;
    sub_2689BED8C();
    sub_268B38404();
    v18 = OUTLINED_FUNCTION_18_7();
    v7(v18);
    v19 = sub_26892CDB8(v4, v5, &v49);

    *(v8 + 4) = v19;
    OUTLINED_FUNCTION_22_7(&dword_2688BB000, v20, v21, "AppIntentInvoker#invokeOpenAccessoryItemAppIntentForLyrics response: %s", v22, v23, v24, v25, v39, v41, v43);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v34 = OUTLINED_FUNCTION_28_8(v26, v27, v28, v29, v30, v31, v32, v33, v40, v42, v44, v45, v47, v48);
    v35(v34);
    (v7)(v46, v3);
  }

  else
  {

    v36 = *(v6 + 8);
    v36(v1, v3);
    v4(v8);
    v36(v5, v3);
  }

  OUTLINED_FUNCTION_222();

  return v37();
}

uint64_t sub_2689BE070()
{
  OUTLINED_FUNCTION_127();

  OUTLINED_FUNCTION_222();

  return v0();
}

uint64_t sub_2689BE110()
{
  OUTLINED_FUNCTION_158();
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE0, &qword_268B41E48);
  v1[5] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE8, &unk_268B41E50);
  v1[6] = v2;
  OUTLINED_FUNCTION_19_0(v2);
  v1[7] = v3;
  v1[8] = OUTLINED_FUNCTION_35_7();
  v1[9] = swift_task_alloc();
  v4 = sub_268B37A54();
  v1[10] = v4;
  OUTLINED_FUNCTION_19_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_35_7();
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2689BE260()
{
  OUTLINED_FUNCTION_127();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v1 = __swift_project_value_buffer(v0[10], qword_2802CDA10);
  v2 = OUTLINED_FUNCTION_10_13(v1);
  v3(v2);
  v4 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v6, v7, "AppIntentInvoker#invokeCloseAccessoryItemAppIntentForLyrics");
    OUTLINED_FUNCTION_12();
  }

  v8 = OUTLINED_FUNCTION_24_8();
  v9(v8);
  OUTLINED_FUNCTION_13_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5688, &qword_268B3BAF0);
  swift_allocObject();
  v0[18] = sub_268B369C4();
  v10 = sub_268B36954();
  OUTLINED_FUNCTION_33_6(v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  v0[19] = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_19_10(v11);

  return sub_2689BD344(v13, v14, v15);
}

uint64_t sub_2689BE3F0()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_89();
  *v7 = v6;
  *(v8 + 160) = v0;

  sub_2689BED24(v5);
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2689BE508()
{
  v50 = v2;
  v9 = OUTLINED_FUNCTION_12_12();
  v10(v9);
  v11 = OUTLINED_FUNCTION_25_6();
  v12(v11);
  v13 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  os_log_type_enabled(v13, v14);
  OUTLINED_FUNCTION_14_9();
  if (v16)
  {
    v47 = v15;
    swift_slowAlloc();
    v43 = v0;
    v17 = OUTLINED_FUNCTION_31_7();
    v49 = v17;
    *v8 = 136315138;
    sub_2689BED8C();
    sub_268B38404();
    v18 = OUTLINED_FUNCTION_18_7();
    v7(v18);
    v19 = sub_26892CDB8(v4, v5, &v49);

    *(v8 + 4) = v19;
    OUTLINED_FUNCTION_22_7(&dword_2688BB000, v20, v21, "AppIntentInvoker#invokeCloseAccessoryItemAppIntentForLyrics response: %s", v22, v23, v24, v25, v39, v41, v43);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v34 = OUTLINED_FUNCTION_28_8(v26, v27, v28, v29, v30, v31, v32, v33, v40, v42, v44, v45, v47, v48);
    v35(v34);
    (v7)(v46, v3);
  }

  else
  {

    v36 = *(v6 + 8);
    v36(v1, v3);
    v4(v8);
    v36(v5, v3);
  }

  OUTLINED_FUNCTION_222();

  return v37();
}

uint64_t sub_2689BE71C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2688C8B94;

  return sub_2689BDA7C();
}

uint64_t sub_2689BE7AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2688EA0F0;

  return sub_2689BE110();
}

uint64_t sub_2689BE83C()
{
  type metadata accessor for AppIntentInvokerContext();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  qword_2802A6BD8 = result;
  return result;
}

uint64_t static AppIntentInvokerContext.shared.getter(uint64_t a1)
{
  if (qword_2802A4DF8 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_24(&qword_2802A4DF8);
  }

  OUTLINED_FUNCTION_34_3(a1);
}

uint64_t static AppIntentInvokerContext.shared.setter(uint64_t a1)
{
  if (qword_2802A4DF8 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_2802A4DF8);
  }

  swift_beginAccess();
  qword_2802A6BD8 = a1;
}

uint64_t (*static AppIntentInvokerContext.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_2802A4DF8 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_2802A4DF8);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2689BE9B0@<X0>(void *a1@<X8>)
{
  sub_2689BCB2C();
  swift_beginAccess();
  *a1 = qword_2802A6BD8;
}

uint64_t sub_2689BEA04(uint64_t *a1)
{
  v1 = *a1;

  sub_2689BCB2C();
  swift_beginAccess();
  qword_2802A6BD8 = v1;
}

uint64_t sub_2689BEA60()
{
  v1 = sub_268B36984();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BF8, &qword_268B41F28);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_268B369B4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    v14 = *(v0 + 16);
  }

  else
  {
    v15 = [objc_opt_self() defaultEnvironment];
    v20[3] = sub_2689BF09C();
    v20[4] = MEMORY[0x277CEB188];
    v20[0] = v15;
    sub_268B36974();
    (*(v3 + 104))(v6, *MEMORY[0x277CEB068], v1);
    sub_268B369A4();
    v14 = sub_268B36994();
    v17 = v16;
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    *(v0 + 16) = v14;
    *(v0 + 24) = v17;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v14;
}

uint64_t AppIntentInvokerContext.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2689BED24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE0, &qword_268B41E48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2689BED8C()
{
  result = qword_2802A6BF0;
  if (!qword_2802A6BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A6BE8, &unk_268B41E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6BF0);
  }

  return result;
}

uint64_t dispatch thunk of AppIntentInvoker.invokeOpenAccessoryItemAppIntentForLyrics()()
{
  OUTLINED_FUNCTION_17_11();
  v4 = (*(*v0 + 112) + **(*v0 + 112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2688C8B94;

  return v4();
}

uint64_t dispatch thunk of AppIntentInvoker.invokeCloseAccessoryItemAppIntentForLyrics()()
{
  OUTLINED_FUNCTION_17_11();
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2688EA0F0;

  return v4();
}