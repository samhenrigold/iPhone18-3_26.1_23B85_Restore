void sub_268ADAEEC()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v46 = (v8 - v9);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_7();
  v11 = sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_192();
  sub_268ADBF40();
  sub_268AD8430();
  v19 = v18;

  (*(v13 + 104))(v17, *MEMORY[0x277D5F640], v11);
  LOBYTE(v3) = sub_268920878(v3, v17);
  (*(v13 + 8))(v17, v11);
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    OUTLINED_FUNCTION_97();
    if (sub_268B34D24())
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
      OUTLINED_FUNCTION_15_7();
      v20(v1);
      v21 = sub_268B37A34();
      v22 = sub_268B37EC4();
      if (OUTLINED_FUNCTION_196(v22))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_50_0(&dword_2688BB000, v23, v24, "Video control received on homepod! Removing this device (primary) if it was selected");
        OUTLINED_FUNCTION_12_8();
      }

      v44 = v6;
      v45 = v4;
      (v6[1])(v1, v4);
      v47 = MEMORY[0x277D84F90];
      v1 = sub_2688EFD0C();
      v4 = v19 & 0xFFFFFFFFFFFFFF8;

      v25 = 0;
      v6 = &selRef_groupLeader;
      v26 = &unk_279C42000;
      while (1)
      {
        if (v1 == v25)
        {
          swift_bridgeObjectRelease_n();
          v6 = v44;
          v4 = v45;
          v26 = v46;
          goto LABEL_22;
        }

        if ((v19 & 0xC000000000000001) != 0)
        {
          v32 = OUTLINED_FUNCTION_192();
          v27 = MEMORY[0x26D625BD0](v32);
        }

        else
        {
          if (v25 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v27 = *(v19 + 8 * v25 + 32);
        }

        v28 = v27;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v29 = [v27 context];
        if (v29 && (v30 = v29, v31 = [v29 proximity], v30, (v31 - 1) >= 4))
        {
          if (v31)
          {
            sub_268B38474();
            __break(1u);
            return;
          }
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
    }
  }

  v26 = v46;
LABEL_22:
  if (qword_2802A4F30 != -1)
  {
LABEL_28:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
  OUTLINED_FUNCTION_15_7();
  v33(v26);
  v34 = sub_268B37A34();
  v35 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_196(v35))
  {
    OUTLINED_FUNCTION_172_0();
    v36 = OUTLINED_FUNCTION_53_1();
    v47 = v36;
    *v1 = 136315138;
    v37 = type metadata accessor for Device();

    v39 = MEMORY[0x26D6256F0](v38, v37);
    v41 = v40;

    v42 = sub_26892CDB8(v39, v41, &v47);

    *(v1 + 4) = v42;
    OUTLINED_FUNCTION_56_8(&dword_2688BB000, v34, v35, "Selected and grouped devices: %s", v43);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_20_2();
  }

  (v6[1])(v26, v4);
  OUTLINED_FUNCTION_23();
}

void sub_268ADB3A4()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v119 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_49_7();
  v15 = sub_268B371E4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v118 = v20 - v19;
  v21 = sub_2688EFD0C();
  if (!v21)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
    OUTLINED_FUNCTION_15_7();
    v105(v10);
    v106 = sub_268B37A34();
    v107 = sub_268B37EE4();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = OUTLINED_FUNCTION_14();
      *v108 = 0;
      _os_log_impl(&dword_2688BB000, v106, v107, "Cannot group empty device list by media system", v108, 2u);
      OUTLINED_FUNCTION_20_2();
    }

    v109 = OUTLINED_FUNCTION_103();
    v110(v109);
    goto LABEL_98;
  }

  v22 = v21;
  v123 = v17;
  v125 = v0;
  v116 = v15;
  v128 = v4;
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v129 = MEMORY[0x277D84F90];
  v25 = v3 & 0xC000000000000001;
  while (v22 != v23)
  {
    if (v25)
    {
      v26 = MEMORY[0x26D625BD0](v23, v3);
    }

    else
    {
      if (v23 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      v26 = *(v3 + 8 * v23 + 32);
    }

    v27 = v26;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    sub_26898858C(v26);
    if (v28)
    {
    }

    else
    {
      sub_268B38214();
      v0 = v129[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    ++v23;
  }

  v29 = 0;
  v131 = v129;
  v129 = v24;
  while (v22 != v29)
  {
    if (v25)
    {
      v30 = MEMORY[0x26D625BD0](v29, v3);
    }

    else
    {
      if (v29 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_103;
      }

      v30 = *(v3 + 8 * v29 + 32);
    }

    v31 = v30;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_102;
    }

    sub_26898858C(v30);
    if (v32)
    {

      sub_268B38214();
      v0 = v129[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }

    ++v29;
  }

  v3 = sub_268AD455C(v129);
  v33 = (v3 + 64);
  OUTLINED_FUNCTION_7_35();
  v36 = v35 & v34;
  v120 = (v37 + 63) >> 6;
  v127 = (v6 + 16);
  v0 = (v6 + 8);
  v115 = (v123 + 8);
  v38 = 0;
  v122 = 136315138;
  v121 = v0;
  v124 = (v3 + 64);

LABEL_25:
  v39 = v38;
  if (!v36)
  {
    goto LABEL_27;
  }

  do
  {
    v38 = v39;
LABEL_30:
    v36 &= v36 - 1;
    OUTLINED_FUNCTION_69_8();
    v41 = *v40;
    v42 = *(v3 + 16);

    if (!v42)
    {
      goto LABEL_34;
    }

    v43 = sub_268A759D0(v41);
    if ((v44 & 1) == 0)
    {
      goto LABEL_34;
    }

    v45 = *(*(v3 + 56) + 8 * v43);
    if (v45 >> 62)
    {
      OUTLINED_FUNCTION_67_6(v45 & 0xFFFFFFFFFFFFFF8);
      v46 = sub_268B382A4();
      if (!v46)
      {
        goto LABEL_34;
      }

LABEL_42:
      if ((v45 & 0xC000000000000001) != 0)
      {

        v55 = MEMORY[0x26D625BD0](0, v45);
      }

      else
      {
        if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_107:
          __break(1u);
          return;
        }

        v54 = *(v45 + 32);

        v55 = v54;
      }

      v111 = v55;
      v56 = v118;
      if (v45 >> 62)
      {
        OUTLINED_FUNCTION_67_6(v45 & 0xFFFFFFFFFFFFFF8);
        v57 = sub_268B382A4();
      }

      else
      {
        v57 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v57 < 2)
      {

        OUTLINED_FUNCTION_26_17();
        if (!v68)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        OUTLINED_FUNCTION_82(v128, qword_2802CDA10);
        v70 = OUTLINED_FUNCTION_78_8();
        v71(v70);

        v72 = sub_268B37A34();
        v73 = sub_268B37EC4();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = OUTLINED_FUNCTION_172_0();
          v75 = OUTLINED_FUNCTION_173_0();
          OUTLINED_FUNCTION_51_8(v75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
          v76 = sub_268B37C24();
          v78 = sub_26892CDB8(v76, v77, v130);

          *(v74 + 4) = v78;
          _os_log_impl(&dword_2688BB000, v72, v73, "Only one device is in the group for mediaSystemId: %s. Adding it", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v128);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_12();

          (*v121)(v1, v128);
        }

        else
        {

          v79 = OUTLINED_FUNCTION_50_9();
          v81(v79, v80);
        }

        v82 = v111;
        MEMORY[0x26D6256C0]();
        OUTLINED_FUNCTION_61_7();
        v3 = v126;
        if (v84)
        {
          OUTLINED_FUNCTION_23_11(v83);
          sub_268B37D14();
        }

        OUTLINED_FUNCTION_192();
        sub_268B37D44();

        goto LABEL_86;
      }

      for (i = 0; ; ++i)
      {
        if (v46 == i)
        {

          v85 = 0;
          v86 = v111;
          v87 = v111;
          v3 = v126;
          goto LABEL_83;
        }

        if ((v45 & 0xC000000000000001) != 0)
        {
          v59 = MEMORY[0x26D625BD0](i, v45);
        }

        else
        {
          if (i >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_106;
          }

          v59 = *(v45 + 8 * i + 32);
        }

        v60 = v59;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        v113 = sub_268988574(v59);
        v114 = v61;
        v62 = sub_268B371B4();
        sub_268B371D4();
        v117 = v60;
        if (*(v62 + 16) && (v63 = sub_268A75A50(), (v64 & 1) != 0))
        {
          v65 = (*(v62 + 56) + 16 * v63);
          v67 = *v65;
          v66 = v65[1];
          v112 = *v115;

          v112(v118, v116);
        }

        else
        {

          (*v115)(v56, v116);
          v67 = 0;
          v66 = 0;
        }

        v3 = v126;
        if (!v114)
        {
          break;
        }

        if (!v66)
        {
          goto LABEL_69;
        }

        v68 = v113 == v67 && v114 == v66;
        if (v68)
        {

LABEL_82:

          v87 = v117;
          v85 = v117;
          v86 = v111;
LABEL_83:
          v88 = v87;
          MEMORY[0x26D6256C0]();
          OUTLINED_FUNCTION_61_7();
          if (v84)
          {
            OUTLINED_FUNCTION_23_11(v89);
            sub_268B37D14();
          }

          OUTLINED_FUNCTION_192();
          sub_268B37D44();
          v90 = v131;

          v131 = v90;
LABEL_86:
          v0 = v121;
          v33 = v124;
          goto LABEL_25;
        }

        v69 = sub_268B38444();

        if (v69)
        {
          goto LABEL_82;
        }

LABEL_70:
        v56 = v118;
      }

      if (!v66)
      {
        goto LABEL_82;
      }

LABEL_69:

      goto LABEL_70;
    }

    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_42;
    }

LABEL_34:
    OUTLINED_FUNCTION_26_17();
    if (!v68)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v128, qword_2802CDA10);
    (*v127)(v125);

    v47 = sub_268B37A34();
    v48 = sub_268B37EE4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_172_0();
      v50 = OUTLINED_FUNCTION_173_0();
      OUTLINED_FUNCTION_51_8(v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
      v51 = sub_268B37C24();
      v53 = sub_26892CDB8(v51, v52, v130);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_2688BB000, v47, v48, "No devices in group for mediaSystemId: %s...skipping it", v49, 0xCu);
      OUTLINED_FUNCTION_36_13();
      v0 = v121;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    else
    {
    }

    (*v0)(v125, v128);
    v39 = v38;
    v3 = v126;
    v33 = v124;
  }

  while (v36);
LABEL_27:
  while (1)
  {
    v38 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v38 >= v120)
    {

      OUTLINED_FUNCTION_26_17();
      if (v68)
      {
        goto LABEL_90;
      }

      goto LABEL_104;
    }

    v36 = v33[v38];
    ++v39;
    if (v36)
    {
      goto LABEL_30;
    }
  }

LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  OUTLINED_FUNCTION_0_2();
  swift_once();
LABEL_90:
  OUTLINED_FUNCTION_82(v128, qword_2802CDA10);
  (*v127)(v119);
  v91 = sub_268B37A34();
  v92 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_2_19(v92))
  {
    OUTLINED_FUNCTION_172_0();
    v93 = OUTLINED_FUNCTION_118_0();
    v129 = v93;
    *v3 = v122;
    v94 = v0;
    v95 = type metadata accessor for Device();

    v97 = MEMORY[0x26D6256F0](v96, v95);
    v99 = v98;

    v100 = sub_26892CDB8(v97, v99, &v129);

    *(v3 + 4) = v100;
    OUTLINED_FUNCTION_44_9();
    OUTLINED_FUNCTION_204(v101, v102, v103, v104);
    __swift_destroy_boxed_opaque_existential_0Tm(v93);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    (*v94)(v119, v128);
  }

  else
  {

    (*v0)(v119, v128);
  }

LABEL_98:
  OUTLINED_FUNCTION_23();
}

void sub_268ADBF40()
{
  OUTLINED_FUNCTION_26();
  v102 = v0;
  v93 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37034();
  OUTLINED_FUNCTION_1();
  v92 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v103 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  MEMORY[0x28223BE20](v11 - 8);
  v107 = (&v83 - v12);
  OUTLINED_FUNCTION_9();
  v13 = sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v100 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v94 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  v105 = &v83 - v22;
  OUTLINED_FUNCTION_9();
  v23 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v28);
  v104 = (&v83 - v29);
  if (qword_2802A4F30 != -1)
  {
LABEL_56:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v106 = v6;
  OUTLINED_FUNCTION_82(v23, qword_2802CDA10);
  v30 = *(v25 + 16);
  v89 = v31;
  v90 = v30;
  v91 = v25 + 16;
  (v30)(v104);
  v32 = *(v15 + 16);
  v98 = v5;
  v32(v105, v5, v13);
  v5 = sub_268B37A34();
  v33 = sub_268B37F04();
  v34 = os_log_type_enabled(v5, v33);
  v101 = v13;
  v95 = v25;
  v96 = v32;
  v99 = v15;
  v97 = v15 + 16;
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_172_0();
    v84 = v23;
    v36 = v35;
    v83 = OUTLINED_FUNCTION_173_0();
    v109 = v83;
    *v36 = 136446210;
    v37 = v94;
    v38 = v105;
    v32(v94, v105, v13);
    v39 = sub_268B37C24();
    v40 = v13;
    v41 = v39;
    v13 = v42;
    v85 = *(v15 + 8);
    v85(v38, v40);
    v43 = sub_26892CDB8(v41, v13, &v109);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_2688BB000, v5, v33, "Smart Selecting devices of type: %{public}s", v36, 0xCu);
    OUTLINED_FUNCTION_73_6();
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    v44 = v102;
    OUTLINED_FUNCTION_12();
    v23 = v84;
    OUTLINED_FUNCTION_12();

    v105 = *(v95 + 8);
    (v105)(v104, v23);
  }

  else
  {

    v85 = *(v15 + 8);
    v85(v105, v13);
    v105 = *(v25 + 8);
    (v105)(v104, v23);
    v44 = v102;
  }

  v15 = sub_2688EFD0C();
  v6 = 0;
  v45 = v3 & 0xC000000000000001;
  v25 = v3 & 0xFFFFFFFFFFFFFF8;
  while (v15 != v6)
  {
    if (v45)
    {
      v46 = MEMORY[0x26D625BD0](v6, v3);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v46 = *(v3 + 8 * v6 + 32);
    }

    v5 = v46;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (sub_268983434(v46))
    {
      goto LABEL_15;
    }

    ++v6;
  }

  v5 = 0;
LABEL_15:
  v47 = MEMORY[0x277D84F90];
  v109 = MEMORY[0x277D84F90];
  v49 = v100;
  v48 = v101;
  v96(v100, v98, v101);
  v50 = (*(v99 + 88))(v49, v48);
  if (v50 == *MEMORY[0x277D5F658])
  {
    v51 = sub_268AD70C8(v3);

    v109 = v51;
    goto LABEL_47;
  }

  if (v50 == *MEMORY[0x277D5F660])
  {
    v52 = __swift_project_boxed_opaque_existential_1((v44 + 16), *(v44 + 40));
    v53 = sub_268AE15A4(v93, *v52, v3);
    v54 = v53;
    v108 = v53;
    if (v5 && (sub_268AD7E78(v53, v5) & 1) != 0)
    {
      v55 = v88;
      v90(v88, v89, v23);
      v56 = sub_268B37A34();
      v57 = sub_268B37EC4();
      if (OUTLINED_FUNCTION_19(v57))
      {
        v58 = OUTLINED_FUNCTION_14();
        *v58 = 0;
        _os_log_impl(&dword_2688BB000, v56, v55, "Adding back local device to the filtered resumable devices", v58, 2u);
        OUTLINED_FUNCTION_12();
      }

      (v105)(v55, v23);
      v59 = v5;
      MEMORY[0x26D6256C0]();
      v60 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v60 >> 1)
      {
        OUTLINED_FUNCTION_23_11(v60);
        sub_268B37D14();
      }

      sub_268B37D44();
      v54 = v108;
    }

    v109 = v54;

    sub_268ADCB40();

LABEL_46:

    goto LABEL_47;
  }

  if (v50 == *MEMORY[0x277D5F640])
  {
    v61 = 0;
    v108 = v47;
    v104 = (v92 + 8);
    v105 = (v92 + 16);
    v13 = v106;
    while (1)
    {
      v6 = v107;
      if (v15 == v61)
      {
        sub_268ADCDE0();
        v66 = v65;

        v67 = v66;
        goto LABEL_45;
      }

      if (v45)
      {
        v62 = MEMORY[0x26D625BD0](v61, v3);
      }

      else
      {
        if (v61 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v62 = *(v3 + 8 * v61 + 32);
      }

      v23 = v62;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_54;
      }

      Device.deviceType.getter(v6);
      if (__swift_getEnumTagSinglePayload(v6, 1, v13))
      {
        break;
      }

      v63 = v103;
      (*v105)(v103, v6, v13);
      sub_2688EF38C(v6, &qword_2802A58F0, &unk_268B3BEC0);
      v64 = sub_268B37024();
      (*v104)(v63, v13);
      if (v64)
      {
        goto LABEL_36;
      }

LABEL_37:
      ++v61;
    }

    sub_2688EF38C(v6, &qword_2802A58F0, &unk_268B3BEC0);
LABEL_36:
    sub_268B38214();
    sub_268B38244();
    v13 = v106;
    sub_268B38254();
    sub_268B38224();
    goto LABEL_37;
  }

  if (v50 == *MEMORY[0x277D5F648])
  {

    v109 = v3;

    goto LABEL_47;
  }

  if (v50 == *MEMORY[0x277D5F650])
  {
    sub_268ADCDE0();
LABEL_45:
    sub_2689848D8(v67);
    goto LABEL_46;
  }

  v68 = v87;
  v90(v87, v89, v23);
  v69 = v86;
  v70 = v101;
  v71 = v96;
  v96(v86, v98, v101);
  v72 = sub_268B37A34();
  sub_268B37EE4();
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = OUTLINED_FUNCTION_172_0();
    v107 = OUTLINED_FUNCTION_173_0();
    v108 = v107;
    *v74 = 136315138;
    v71(v94, v69, v70);
    OUTLINED_FUNCTION_192();
    v75 = sub_268B37C24();
    v77 = v76;
    OUTLINED_FUNCTION_64_8();
    v78 = v85;
    v85(v79, v70);
    v80 = sub_26892CDB8(v75, v77, &v108);

    *(v74 + 4) = v80;
    _os_log_impl(&dword_2688BB000, v72, v3, "Unknown controlType: %s, no selectedDeviceContexts", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v107);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v81 = v78;
    v82 = v87;
  }

  else
  {

    OUTLINED_FUNCTION_64_8();
    v81 = v85;
    v85(v69, v70);
    v82 = v68;
  }

  (v105)(v82, v23);
  v81(v100, v70);
LABEL_47:
  OUTLINED_FUNCTION_23();
}

void sub_268ADC980(uint64_t a1)
{
  v2 = sub_2688EFD0C();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v6 = [v4 context];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 nowPlayingState];

      if (!v8)
      {
        goto LABEL_16;
      }
    }

    v9 = [v5 context];
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = v9;
    v11 = [v9 nowPlayingMediaType];

    if (v11 != 7)
    {
      goto LABEL_16;
    }

    v12 = [v5 context];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 proximity];
    }

    else
    {
      v14 = 0;
    }

    if (sub_268AD3DDC(v14, v13 == 0, &unk_28794F0D8))
    {
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
LABEL_16:
    }
  }
}

void sub_268ADCB40()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v26 = v5;
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v28 = MEMORY[0x277D84F90];
  v9 = sub_2688EFD0C();
  for (i = 0; v9 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x26D625BD0](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v11 = *(v3 + 8 * i + 32);
    }

    v12 = v11;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (sub_268ADA114(v11) || sub_268ADA06C(v12))
    {
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }
  }

  v1 = v28;
  if (qword_2802A4F30 == -1)
  {
    goto LABEL_14;
  }

LABEL_19:
  OUTLINED_FUNCTION_0_2();
  swift_once();
LABEL_14:
  OUTLINED_FUNCTION_82(v27, qword_2802CDA10);
  OUTLINED_FUNCTION_15_7();
  v13(v8);

  v14 = sub_268B37A34();
  v15 = sub_268B37F04();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_172_0();
    v17 = OUTLINED_FUNCTION_173_0();
    v28 = v17;
    *v16 = 136315138;
    v18 = type metadata accessor for Device();
    v19 = MEMORY[0x26D6256F0](v1, v18);
    v21 = sub_26892CDB8(v19, v20, &v28);

    *(v16 + 4) = v21;
    OUTLINED_FUNCTION_44_9();
    _os_log_impl(v22, v23, v24, v25, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_12();
  }

  (*(v26 + 8))(v8, v27);
  sub_268AD6F0C(1, v1);

  OUTLINED_FUNCTION_23();
}

void sub_268ADCDE0()
{
  OUTLINED_FUNCTION_26();
  v70 = v1;
  v3 = v2;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v74 = v5;
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_0();
  v68 = (v6 - v7);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v71 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v73 = v11;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  v72 = v3;
  v69 = v0;
  v15 = sub_268AD70C8(v3);
  v16 = sub_2688EFD0C();
  v17 = 0;
  v18 = v15 & 0xC000000000000001;
  while (v16 != v17)
  {
    if (v18)
    {
      v19 = MEMORY[0x26D625BD0](v17, v15);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v19 = *(v15 + 8 * v17 + 32);
    }

    v20 = v19;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      OUTLINED_FUNCTION_0_2();
      swift_once();
LABEL_25:
      v29 = v75;
      OUTLINED_FUNCTION_82(v75, qword_2802CDA10);
      v31 = v73;
      v30 = v74;
      (*(v74 + 16))(v73);

      v32 = sub_268B37A34();
      v33 = sub_268B37EC4();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = OUTLINED_FUNCTION_172_0();
        v35 = OUTLINED_FUNCTION_173_0();
        v77 = v35;
        *v34 = 136315138;
        v36 = type metadata accessor for Device();
        v37 = MEMORY[0x26D6256F0](v16, v36);
        v39 = sub_26892CDB8(v37, v38, &v77);

        *(v34 + 4) = v39;
        OUTLINED_FUNCTION_60_5(&dword_2688BB000, v32, v33, "selectMostRelevantContexts: Selecting playing immediate device context(s): %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_6();
      }

      (*(v30 + 8))(v31, v29);
      goto LABEL_34;
    }

    v21 = [v19 context];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 proximity];

      if ((v23 - 1) >= 4)
      {
        if (v23)
        {
          while (1)
          {
            v77 = v23;
LABEL_54:
            sub_268B38474();
            __break(1u);
          }
        }

        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v53 = v75;
        OUTLINED_FUNCTION_82(v75, qword_2802CDA10);
        v54 = v74;
        (*(v74 + 16))(v14);
        v55 = sub_268B37A34();
        sub_268B37EC4();
        OUTLINED_FUNCTION_13();
        if (os_log_type_enabled(v55, v56))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_78_0(&dword_2688BB000, v57, v58, "selectMostRelevantContexts: Selecting the playing primary device context");
          OUTLINED_FUNCTION_84_0();
        }

        (*(v54 + 8))(v14, v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_268B3BBA0;
        *(v59 + 32) = v20;
        goto LABEL_34;
      }
    }

    ++v17;
  }

  v24 = 0;
  v77 = MEMORY[0x277D84F90];
  while (v16 != v24)
  {
    if (v18)
    {
      v25 = MEMORY[0x26D625BD0](v24, v15);
    }

    else
    {
      if (v24 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v25 = *(v15 + 8 * v24 + 32);
    }

    v26 = v25;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_50;
    }

    v27 = [v25 context];
    if (v27)
    {
      v23 = v27;
      v28 = [v27 proximity];

      switch(v28)
      {
        case 0uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
          break;
        case 1uLL:
          sub_268B38214();
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
          goto LABEL_20;
        default:
          v76 = v28;
          goto LABEL_54;
      }
    }

LABEL_20:
    ++v24;
  }

  v16 = v77;
  if (sub_2688EFD0C())
  {

    if (qword_2802A4F30 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_25;
  }

  v40 = v72;
  sub_268ADC980(v72);
  v42 = v41;
  if (sub_2688EFD0C())
  {

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v43 = v75;
    OUTLINED_FUNCTION_82(v75, qword_2802CDA10);
    v44 = v74;
    v45 = v71;
    (*(v74 + 16))(v71);

    v46 = sub_268B37A34();
    v47 = sub_268B37EC4();

    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_172_0();
      v48 = OUTLINED_FUNCTION_53_1();
      v77 = v48;
      LODWORD(selRef_groupLeader) = 136315138;
      v49 = type metadata accessor for Device();
      v50 = MEMORY[0x26D6256F0](v42, v49);
      v52 = sub_26892CDB8(v50, v51, &v77);

      *(&selRef_groupLeader + 4) = v52;
      OUTLINED_FUNCTION_56_8(&dword_2688BB000, v46, v47, "selectMostRelevantContexts: Found same room devices with video up on the screen, returning those devices: %s", v68);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      OUTLINED_FUNCTION_84_0();
      OUTLINED_FUNCTION_20_2();
    }

    (*(v44 + 8))(v45, v43);
  }

  else
  {

    v77 = v15;
    v60 = __swift_project_boxed_opaque_existential_1((v69 + 16), *(v69 + 40));
    v61 = sub_268AE15A4(v70, *v60, v40);
    if (sub_2688EFD0C())
    {
      sub_2689848D8(v61);
    }

    else
    {

      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      OUTLINED_FUNCTION_82(v75, qword_2802CDA10);
      (*(v74 + 16))(v68);
      v62 = sub_268B37A34();
      sub_268B37EC4();
      OUTLINED_FUNCTION_13();
      if (os_log_type_enabled(v62, v63))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_78_0(&dword_2688BB000, v64, v65, "selectMostRelevantContexts: No devices selected");
        OUTLINED_FUNCTION_84_0();
      }

      v66 = OUTLINED_FUNCTION_192();
      v67(v66);
    }
  }

LABEL_34:
  OUTLINED_FUNCTION_23();
}

void *sub_268ADD560()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);

  return v0;
}

uint64_t sub_268ADD5A0()
{
  sub_268ADD560();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

BOOL sub_268ADD5F8(uint64_t a1)
{
  OUTLINED_FUNCTION_40_12(a1);
  sub_268B37C54();
  sub_268B38544();
  OUTLINED_FUNCTION_63_7();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == v4 && v11[1] == v2;
    if (v12 || (OUTLINED_FUNCTION_86_6(*v11) & 1) != 0)
    {

      v13 = (*(v5 + 48) + 16 * v9);
      v14 = v13[1];
      *v1 = *v13;
      v1[1] = v14;

      return v10 == 0;
    }

    v6 = v9 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_82_4();
  v15 = OUTLINED_FUNCTION_52_11();
  sub_268ADE04C(v15, v16, v17, v18);
  *v3 = v20;
  *v1 = v4;
  v1[1] = v2;
  return v10 == 0;
}

uint64_t sub_268ADD6FC(uint64_t a1)
{
  OUTLINED_FUNCTION_40_12(a1);
  sub_268B38534();
  if (v2)
  {
    sub_268B37C54();
  }

  sub_268B38544();
  OUTLINED_FUNCTION_63_7();
  v8 = v7 & ~v6;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_15:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_82_4();
    v14 = OUTLINED_FUNCTION_52_11();
    sub_268ADE1B4(v14, v15, v16, v17);
    *v3 = v19;
    *v1 = v4;
    v1[1] = v2;
    return 1;
  }

  v9 = ~v6;
  v10 = *(v5 + 48);
  while (1)
  {
    v11 = (v10 + 16 * v8);
    v12 = v11[1];
    if (v12)
    {
      break;
    }

    if (!v2)
    {
      goto LABEL_17;
    }

LABEL_14:
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!v2)
  {
    goto LABEL_14;
  }

  v13 = *v11 == v4 && v12 == v2;
  if (!v13 && (OUTLINED_FUNCTION_86_6(*v11) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  *v1 = *(*(v5 + 48) + 16 * v8);

  return 0;
}

BOOL sub_268ADD83C(unint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  sub_268B38514();
  MEMORY[0x26D625F10](a2);
  v6 = sub_268B38544();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_268ADE370(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_268ADD92C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B00, qword_268B3C520);
  result = sub_268B38184();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2688F204C(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_268B38514();
    sub_268B37C54();
    result = sub_268B38544();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_268ADDB88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88F8, &qword_268B50380);
  result = sub_268B38184();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2688F204C(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_268B38514();
    sub_268B38534();
    if (v17)
    {
      sub_268B37C54();
    }

    result = sub_268B38544();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_268ADDE00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8908, &qword_268B50390);
  result = sub_268B38184();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_2688F204C(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_268B38514();
    MEMORY[0x26D625F10](v16);
    result = sub_268B38544();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_268ADE04C(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_268ADD92C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_268ADE894(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_268B38514();
      sub_268B37C54();
      result = sub_268B38544();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_268B38444() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_268ADE4A8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_268B38484();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_268ADE1B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_268ADDB88(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_268ADE600();
        goto LABEL_22;
      }

      sub_268ADEAC8(v9 + 1);
    }

    v11 = *v4;
    sub_268B38514();
    sub_268B38534();
    if (a2)
    {
      sub_268B37C54();
    }

    result = sub_268B38544();
    v12 = v11 + 56;
    v13 = -1 << *(v11 + 32);
    a3 = result & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      v15 = *(v11 + 48);
      do
      {
        v16 = (v15 + 16 * a3);
        v17 = v16[1];
        if (v17)
        {
          if (a2)
          {
            if (*v16 == v8 && v17 == a2)
            {
              goto LABEL_25;
            }

            result = sub_268B38444();
            if (result)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_25;
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
    result = sub_268B38484();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

unint64_t sub_268ADE370(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_268ADDE00(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_268ADED18(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_268B38514();
      MEMORY[0x26D625F10](v5);
      result = sub_268B38544();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_268ADE754();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_268B38484();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_268ADE4A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B00, qword_268B3C520);
  v2 = *v0;
  v3 = sub_268B38174();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_268ADE600()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88F8, &qword_268B50380);
  v2 = *v0;
  v3 = sub_268B38174();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_268ADE754()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8908, &qword_268B50390);
  v2 = *v0;
  v3 = sub_268B38174();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_268ADE894(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B00, qword_268B3C520);
  result = sub_268B38184();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_268B38514();

        sub_268B37C54();
        result = sub_268B38544();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_268ADEAC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88F8, &qword_268B50380);
  result = sub_268B38184();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v17 = *v15;
        v16 = v15[1];
        sub_268B38514();
        sub_268B38534();
        if (v16)
        {

          sub_268B37C54();
        }

        result = sub_268B38544();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v17;
        v26[1] = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_27;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_268ADED18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8908, &qword_268B50390);
  result = sub_268B38184();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_268B38514();
        MEMORY[0x26D625F10](v15);
        result = sub_268B38544();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_268ADEF5C()
{
  OUTLINED_FUNCTION_43_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7288, &qword_268B44560);
  v28 = v2;
  v7 = sub_268B382C4();
  if (!v1[2])
  {
LABEL_29:

    *v0 = v7;
    return;
  }

  OUTLINED_FUNCTION_13_23();
  if (!v3)
  {
LABEL_4:
    v9 = v5;
    while (1)
    {
      v5 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v9;
      if (v4[v5])
      {
        OUTLINED_FUNCTION_75_5();
        goto LABEL_9;
      }
    }

    if (v28)
    {
      OUTLINED_FUNCTION_68_7();
      if (v25 != v26)
      {
        OUTLINED_FUNCTION_63_7();
        *v4 = v27;
      }

      else
      {
        OUTLINED_FUNCTION_83_6(v24);
      }

      v1[2] = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_76_5();
LABEL_9:
    v10 = v8 | (v5 << 6);
    v11 = (v1[6] + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = (v1[7] + 32 * v10);
    if (v28)
    {
      sub_2688EF2B0(v14, v29);
    }

    else
    {
      sub_2688EF2C0(v14, v29);
    }

    sub_268B38514();
    sub_268B37C54();
    sub_268B38544();
    OUTLINED_FUNCTION_29_17();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_33_13();
LABEL_21:
    OUTLINED_FUNCTION_28_20(v16);
    v23 = (v22 + 16 * v21);
    *v23 = v12;
    v23[1] = v13;
    sub_2688EF2B0(v29, (*(v7 + 56) + 32 * v21));
    ++*(v7 + 16);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_32_8();
  while (++v17 != v19 || (v18 & 1) == 0)
  {
    v20 = v17 == v19;
    if (v17 == v19)
    {
      v17 = 0;
    }

    v18 |= v20;
    if (*(v6 + 8 * v17) != -1)
    {
      OUTLINED_FUNCTION_31_11();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_268ADF148()
{
  OUTLINED_FUNCTION_43_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v27 = v2;
  v9 = sub_268B382C4();
  if (!v1[2])
  {
LABEL_30:

    *v0 = v9;
    return;
  }

  OUTLINED_FUNCTION_13_23();
  if (!v3)
  {
LABEL_4:
    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v11;
      if (v4[v5])
      {
        OUTLINED_FUNCTION_75_5();
        goto LABEL_9;
      }
    }

    if (v27)
    {
      OUTLINED_FUNCTION_68_7();
      if (v24 != v25)
      {
        OUTLINED_FUNCTION_63_7();
        *v4 = v26;
      }

      else
      {
        OUTLINED_FUNCTION_83_6(v23);
      }

      v1[2] = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_76_5();
LABEL_9:
    v12 = v10 | (v5 << 6);
    v13 = *(v1[7] + 8 * v12);
    v28 = *(v1[6] + 16 * v12);
    v14 = *(v1[6] + 16 * v12 + 8);
    if ((v27 & 1) == 0)
    {
    }

    sub_268B38514();
    sub_268B38534();
    if (v14)
    {
      sub_268B37C54();
    }

    sub_268B38544();
    OUTLINED_FUNCTION_29_17();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_33_13();
LABEL_22:
    OUTLINED_FUNCTION_28_20(v16);
    *(v22 + 16 * v21) = v28;
    *(*(v9 + 56) + 8 * v21) = v13;
    ++*(v9 + 16);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_32_8();
  while (++v17 != v19 || (v18 & 1) == 0)
  {
    v20 = v17 == v19;
    if (v17 == v19)
    {
      v17 = 0;
    }

    v18 |= v20;
    if (*(v6 + 8 * v17) != -1)
    {
      OUTLINED_FUNCTION_31_11();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_268ADF328(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2688EA2F4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_268ADF410(v6);
  return sub_268B38224();
}

uint64_t sub_268ADF3A4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2688E16B4(v2, v3, v4, v5, v6, v7, v8);
    v2 = v9;
  }

  v10 = *(v2 + 16);
  v12[0] = v2 + 32;
  v12[1] = v10;
  result = sub_268ADF4F0(v12);
  *a1 = v2;
  return result;
}

void sub_268ADF410(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_268B383F4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_26892CC90(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_268ADF944(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_268ADF5E4(0, v3, 1, a1);
  }
}

uint64_t sub_268ADF4F0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_268B383F4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_268B37D34();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_268AE0284(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_268ADF87C(0, v2, 1, a1);
  }

  return result;
}

void sub_268ADF5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v45 = sub_268B34614();
  v8 = MEMORY[0x28223BE20](v45);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v38 - v11;
  v39 = a2;
  if (a3 != a2)
  {
    v46 = *a4;
    v43 = (v10 + 8);
    v12 = v46 + 8 * a3 - 8;
    v13 = a1 - a3;
    v14 = &selRef_groupLeader;
    v15 = &unk_279C42000;
    while (2)
    {
      v41 = v12;
      v42 = a3;
      v16 = *(v46 + 8 * a3);
      v40 = v13;
      do
      {
        v17 = *v12;
        v18 = v16;
        v19 = v17;
        v20 = [v18 v14[3]];
        if (!v20)
        {
          goto LABEL_15;
        }

        v21 = v20;
        v22 = [v20 v15[497]];

        if (!v22)
        {
          goto LABEL_17;
        }

        sub_268B345D4();

        v23 = [v19 v14[3]];
        if (!v23)
        {
          goto LABEL_16;
        }

        v24 = v23;
        v25 = [v23 v15[497]];

        if (!v25)
        {
          __break(1u);
LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
LABEL_18:
          __break(1u);
          return;
        }

        v47 = v18;
        v26 = v44;
        sub_268B345D4();

        v27 = v19;
        v28 = v15;
        v29 = v48;
        v30 = sub_268B345A4();
        v31 = *v43;
        v32 = v26;
        v33 = v45;
        (*v43)(v32, v45);
        v34 = v29;
        v15 = v28;
        v35 = v33;
        v14 = &selRef_groupLeader;
        v31(v34, v35);

        if ((v30 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          goto LABEL_18;
        }

        v36 = *v12;
        v16 = *(v12 + 8);
        *v12 = v16;
        *(v12 + 8) = v36;
        v12 -= 8;
      }

      while (!__CFADD__(v13++, 1));
      a3 = v42 + 1;
      v12 = v41 + 8;
      v13 = v40 - 1;
      if (v42 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_268ADF87C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_268B38444();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_268ADF944(void ***a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v127 = a1;
  v140 = sub_268B34614();
  v6 = MEMORY[0x28223BE20](v140);
  v137 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v141 = &v125 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v131 = &v125 - v11;
  MEMORY[0x28223BE20](v10);
  v135 = &v125 - v13;
  v133 = a3;
  v14 = a3[1];
  if (v14 >= 1)
  {
    v125 = a4;
    v15 = 0;
    v139 = (v12 + 8);
    v16 = MEMORY[0x277D84F90];
    v17 = &selRef_groupLeader;
    while (1)
    {
      v18 = v15++;
      v128 = v18;
      if (v15 < v14)
      {
        v19 = *v133;
        v20 = *(*v133 + 8 * v18);
        v21 = *(*v133 + 8 * v15);
        v22 = v20;
        v23 = v136;
        sub_268AD6600(v21, v22);
        LODWORD(v132) = v24;
        v136 = v23;
        if (v23)
        {

          return;
        }

        v126 = v16;

        v129 = (8 * v18);
        v130 = v14;
        v16 = &v19[v18 + 2];
        v25 = (v18 + 2);
        while (1)
        {
          a4 = v25;
          if (v15 + 1 >= v14)
          {
            break;
          }

          v26 = *(v16 - 1);
          v27 = *v16;
          v28 = v26;
          v29 = [v27 v17[3]];
          if (!v29)
          {
            goto LABEL_146;
          }

          v30 = v29;
          v31 = [v29 nowPlayingTimestamp];

          if (!v31)
          {
            goto LABEL_147;
          }

          v138 = v16;
          sub_268B345D4();

          v32 = v17[3];
          v134 = v28;
          v33 = [v28 v32];
          if (!v33)
          {
            goto LABEL_145;
          }

          v34 = v33;
          v35 = a4;
          v36 = v15;
          v37 = [v33 nowPlayingTimestamp];

          if (!v37)
          {
            goto LABEL_148;
          }

          v38 = v131;
          sub_268B345D4();

          v39 = v135;
          v40 = sub_268B345A4() & 1;
          v41 = v140;
          v42 = *v139;
          (*v139)(v38, v140);
          v42(v39, v41);

          v16 = (v138 + 1);
          v15 = v36 + 1;
          a4 = v35;
          v25 = (v35 + 1);
          v17 = &selRef_groupLeader;
          v14 = v130;
          if ((v132 & 1) != v40)
          {
            goto LABEL_14;
          }
        }

        v15 = v14;
LABEL_14:
        if (v132)
        {
          v43 = v128;
          if (v15 < v128)
          {
            goto LABEL_138;
          }

          v16 = v126;
          if (v128 < v15)
          {
            if (v14 >= a4)
            {
              v44 = a4;
            }

            else
            {
              v44 = v14;
            }

            v45 = 8 * v44 - 8;
            v46 = v15;
            v47 = v129;
            do
            {
              if (v43 != --v46)
              {
                v48 = *v133;
                if (!*v133)
                {
                  goto LABEL_151;
                }

                v49 = *&v47[v48];
                *&v47[v48] = *(v48 + v45);
                *(v48 + v45) = v49;
              }

              ++v43;
              v45 -= 8;
              v47 += 8;
            }

            while (v43 < v46);
          }
        }

        else
        {
          v16 = v126;
        }
      }

      v50 = v133[1];
      if (v15 >= v50)
      {
        goto LABEL_48;
      }

      if (__OFSUB__(v15, v128))
      {
        goto LABEL_135;
      }

      if (v15 - v128 >= v125)
      {
LABEL_48:
        v52 = v128;
      }

      else
      {
        if (__OFADD__(v128, v125))
        {
          goto LABEL_136;
        }

        if (v125 + v128 >= v50)
        {
          v51 = v133[1];
        }

        else
        {
          v51 = v125 + v128;
        }

        if (v51 < v128)
        {
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        v52 = v128;
        if (v15 != v51)
        {
          v126 = v16;
          v138 = *v133;
          v53 = &v138[v15 - 1];
          v54 = v128 - v15;
          v129 = v51;
LABEL_37:
          v134 = v15;
          v55 = v138[v15];
          v130 = v54;
          v132 = v53;
          while (1)
          {
            v56 = *v53;
            a4 = v55;
            v57 = v56;
            v58 = [a4 v17[3]];
            if (!v58)
            {
              goto LABEL_141;
            }

            v59 = v58;
            v60 = [v58 nowPlayingTimestamp];

            if (!v60)
            {
              break;
            }

            sub_268B345D4();

            v61 = [v57 v17[3]];
            if (!v61)
            {
              goto LABEL_143;
            }

            v62 = v61;
            v63 = [v61 nowPlayingTimestamp];

            if (!v63)
            {
              goto LABEL_142;
            }

            v64 = v137;
            sub_268B345D4();

            v65 = v141;
            v66 = sub_268B345A4();
            v67 = *v139;
            v68 = v64;
            v69 = v140;
            (*v139)(v68, v140);
            v67(v65, v69);

            v17 = &selRef_groupLeader;
            if ((v66 & 1) == 0)
            {
              goto LABEL_46;
            }

            if (!v138)
            {
              goto LABEL_144;
            }

            v70 = *v53;
            v55 = v53[1];
            *v53 = v55;
            v53[1] = v70;
            --v53;
            if (__CFADD__(v54++, 1))
            {
LABEL_46:
              v15 = (v134 + 1);
              v53 = v132 + 1;
              v54 = v130 - 1;
              if (v134 + 1 == v129)
              {
                v15 = v129;
                v16 = v126;
                goto LABEL_48;
              }

              goto LABEL_37;
            }
          }

          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }
      }

      if (v15 < v52)
      {
        goto LABEL_134;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268987C84();
        v16 = v115;
      }

      v72 = *(v16 + 2);
      a4 = v72 + 1;
      if (v72 >= *(v16 + 3) >> 1)
      {
        sub_268987C84();
        v16 = v116;
      }

      *(v16 + 2) = a4;
      v73 = v16 + 32;
      v74 = &v16[16 * v72 + 32];
      *v74 = v128;
      *(v74 + 1) = v15;
      v138 = *v127;
      if (!v138)
      {
        goto LABEL_152;
      }

      if (v72)
      {
        v134 = v15;
        while (1)
        {
          v75 = a4 - 1;
          v76 = &v73[16 * a4 - 16];
          v77 = &v16[16 * a4];
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v78 = *(v16 + 4);
            v79 = *(v16 + 5);
            v88 = __OFSUB__(v79, v78);
            v80 = v79 - v78;
            v81 = v88;
LABEL_70:
            if (v81)
            {
              goto LABEL_121;
            }

            v93 = *v77;
            v92 = *(v77 + 1);
            v94 = __OFSUB__(v92, v93);
            v95 = v92 - v93;
            v96 = v94;
            if (v94)
            {
              goto LABEL_124;
            }

            v97 = *(v76 + 1);
            v98 = v97 - *v76;
            if (__OFSUB__(v97, *v76))
            {
              goto LABEL_127;
            }

            if (__OFADD__(v95, v98))
            {
              goto LABEL_129;
            }

            if (v95 + v98 >= v80)
            {
              if (v80 < v98)
              {
                v75 = a4 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (a4 < 2)
          {
            goto LABEL_123;
          }

          v100 = *v77;
          v99 = *(v77 + 1);
          v88 = __OFSUB__(v99, v100);
          v95 = v99 - v100;
          v96 = v88;
LABEL_85:
          if (v96)
          {
            goto LABEL_126;
          }

          v102 = *v76;
          v101 = *(v76 + 1);
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_128;
          }

          if (v103 < v95)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v75 - 1 >= a4)
          {
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
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
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
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          if (!*v133)
          {
            goto LABEL_149;
          }

          v107 = v16;
          a4 = &v73[16 * v75 - 16];
          v16 = *a4;
          v108 = v75;
          v109 = &v73[16 * v75];
          v110 = *(v109 + 1);
          v111 = v136;
          sub_268AE08B8((*v133 + 8 * *a4), (*v133 + 8 * *v109), (*v133 + 8 * v110), v138);
          v136 = v111;
          if (v111)
          {
            goto LABEL_113;
          }

          if (v110 < v16)
          {
            goto LABEL_116;
          }

          v112 = v73;
          v113 = *(v107 + 2);
          if (v108 > v113)
          {
            goto LABEL_117;
          }

          *a4 = v16;
          *(a4 + 8) = v110;
          if (v108 >= v113)
          {
            goto LABEL_118;
          }

          a4 = v113 - 1;
          memmove(v109, v109 + 16, 16 * (v113 - 1 - v108));
          v16 = v107;
          *(v107 + 2) = v113 - 1;
          v114 = v113 > 2;
          v15 = v134;
          v73 = v112;
          if (!v114)
          {
            goto LABEL_99;
          }
        }

        v82 = &v73[16 * a4];
        v83 = *(v82 - 8);
        v84 = *(v82 - 7);
        v88 = __OFSUB__(v84, v83);
        v85 = v84 - v83;
        if (v88)
        {
          goto LABEL_119;
        }

        v87 = *(v82 - 6);
        v86 = *(v82 - 5);
        v88 = __OFSUB__(v86, v87);
        v80 = v86 - v87;
        v81 = v88;
        if (v88)
        {
          goto LABEL_120;
        }

        v89 = *(v77 + 1);
        v90 = v89 - *v77;
        if (__OFSUB__(v89, *v77))
        {
          goto LABEL_122;
        }

        v88 = __OFADD__(v80, v90);
        v91 = v80 + v90;
        if (v88)
        {
          goto LABEL_125;
        }

        if (v91 >= v85)
        {
          v105 = *v76;
          v104 = *(v76 + 1);
          v88 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v88)
          {
            goto LABEL_133;
          }

          if (v80 < v106)
          {
            v75 = a4 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v14 = v133[1];
      if (v15 >= v14)
      {
        goto LABEL_103;
      }
    }
  }

  v16 = MEMORY[0x277D84F90];
LABEL_103:
  a4 = *v127;
  if (!*v127)
  {
LABEL_153:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_139:
    v16 = sub_268AE0F64(v16);
  }

  v117 = v16 + 16;
  v118 = *(v16 + 2);
  while (v118 >= 2)
  {
    if (!*v133)
    {
      goto LABEL_150;
    }

    v119 = v16;
    v16 += 16 * v118;
    v120 = *v16;
    v121 = &v117[2 * v118];
    v122 = v121[1];
    v123 = v136;
    sub_268AE08B8((*v133 + 8 * *v16), (*v133 + 8 * *v121), (*v133 + 8 * v122), a4);
    v136 = v123;
    if (v123)
    {
      break;
    }

    if (v122 < v120)
    {
      goto LABEL_130;
    }

    if (v118 - 2 >= *v117)
    {
      goto LABEL_131;
    }

    *v16 = v120;
    *(v16 + 1) = v122;
    v124 = *v117 - v118;
    if (*v117 < v118)
    {
      goto LABEL_132;
    }

    v118 = *v117 - 1;
    memmove(v121, v121 + 2, 16 * v124);
    *v117 = v118;
    v16 = v119;
  }

LABEL_113:
}

void sub_268AE0284(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_268B38444();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_268B38444()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_268B38444() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268987C84();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_268987C84();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_268AE0DC0((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_268AE078C(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_268AE078C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_268AE0F64(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_268AE0DC0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

void sub_268AE08B8(id *a1, id *a2, id *a3, void **a4)
{
  v69 = sub_268B34614();
  v8 = MEMORY[0x28223BE20](v69);
  v67 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v71 = (&v65 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  i = (&v65 - v13);
  MEMORY[0x28223BE20](v12);
  v70 = (&v65 - v14);
  v15 = a2 - a1;
  v68 = (v16 + 8);
  v17 = a3 - a2;
  if (v15 >= v17)
  {
    sub_268988A70(a2, a3 - a2, a4);
    v18 = &a4[v17];
    v40 = &selRef_groupLeader;
    v72 = a4;
    v73 = a1;
LABEL_18:
    v41 = a2 - 1;
    v42 = a3 - 1;
    v70 = a2;
    for (i = a2 - 1; v18 > a4 && a2 > a1; v41 = i)
    {
      v74 = v42;
      v44 = v18 - 1;
      v45 = *v41;
      v46 = *(v18 - 1);
      v47 = v45;
      v48 = [v46 v40[3]];
      if (!v48)
      {
        goto LABEL_42;
      }

      v49 = v48;
      v50 = [v48 nowPlayingTimestamp];

      if (!v50)
      {
        goto LABEL_44;
      }

      sub_268B345D4();

      v51 = [v47 v40[3]];
      if (!v51)
      {
        goto LABEL_46;
      }

      v52 = v51;
      v53 = v18;
      v54 = [v51 nowPlayingTimestamp];

      if (!v54)
      {
        goto LABEL_48;
      }

      v55 = v67;
      sub_268B345D4();

      v56 = v71;
      v57 = sub_268B345A4();
      v58 = *v68;
      v59 = v55;
      v60 = v69;
      (*v68)(v59, v69);
      v58(v56, v60);

      if (v57)
      {
        a3 = v74;
        v62 = i;
        a2 = i;
        a4 = v72;
        a1 = v73;
        v18 = v53;
        v40 = &selRef_groupLeader;
        if (v74 + 1 != v70)
        {
          *v74 = *i;
          a2 = v62;
        }

        goto LABEL_18;
      }

      v61 = v74;
      a2 = v70;
      v40 = &selRef_groupLeader;
      if (v53 != v74 + 1)
      {
        *v74 = *v44;
      }

      v42 = v61 - 1;
      v18 = v44;
      a4 = v72;
      a1 = v73;
    }

LABEL_35:
    v63 = v18 - a4;
    if (a2 != a4 || a2 >= &a4[v63])
    {
      memmove(a2, a4, 8 * v63);
    }
  }

  else
  {
    sub_268988A70(a1, a2 - a1, a4);
    v18 = &a4[v15];
    v19 = &unk_279C42000;
    v74 = a3;
    v71 = v18;
    while (1)
    {
      if (a4 >= v18 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_35;
      }

      v72 = a4;
      v73 = a1;
      v21 = a2;
      v22 = *a4;
      v23 = *a2;
      v24 = v22;
      v25 = [v23 context];
      if (!v25)
      {
        break;
      }

      v26 = v25;
      v27 = [v25 v19[497]];

      if (!v27)
      {
        goto LABEL_43;
      }

      sub_268B345D4();

      v28 = [v24 context];
      if (!v28)
      {
        goto LABEL_45;
      }

      v29 = v28;
      v30 = [v28 v19[497]];

      if (!v30)
      {
        goto LABEL_47;
      }

      v31 = i;
      sub_268B345D4();

      v32 = v70;
      v33 = sub_268B345A4();
      v34 = *v68;
      v35 = v31;
      v36 = v69;
      (*v68)(v35, v69);
      v34(v32, v36);

      if (v33)
      {
        v37 = a2;
        a4 = v72;
        v38 = v73;
        v39 = v73 == a2;
        v21 = a2 + 1;
      }

      else
      {
        v38 = v73;
        v37 = v72;
        a4 = v72 + 1;
        v39 = v73 == v72;
      }

      v18 = v71;
      if (!v39)
      {
        *v38 = *v37;
      }

      a1 = v38 + 1;
      a2 = v21;
      a3 = v74;
      v19 = &unk_279C42000;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }
}

uint64_t sub_268AE0DC0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_2689882A8(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_268B38444() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_2689882A8(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_268B38444() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_268AE0F78(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_268AE0FA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6850, &qword_268B40A58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_268AE10A4(void *a1)
{
  v2 = [a1 groupId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268B37BF4();

  return v3;
}

void sub_268AE1114(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();

  [a3 setDisplayableName_];
}

unint64_t sub_268AE11D0(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_268B382A4();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

void sub_268AE1274()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_23();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      OUTLINED_FUNCTION_69_8();
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_268AE1420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = type metadata accessor for AnalyticsServiceImpl();
  v10 = &off_2879539D0;
  v8[0] = a2;

  sub_268AD4D4C(2, a3);
  sub_268AD550C();
  v6 = v5;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_2688EFD0C();

  sub_2688EFD0C();
  sub_26894AE34();

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

uint64_t sub_268AE15A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_268B37A54();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v49 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - v10;
  v54 = type metadata accessor for AnalyticsServiceImpl();
  v55 = &off_2879539D0;
  v53[0] = a2;
  v12 = *__swift_project_boxed_opaque_existential_1(v53, v54);

  v13 = sub_268AE1420(a1, v12, a3);
  v52 = MEMORY[0x277D84F90];
  v14 = sub_2688EFD0C();
  v15 = 0;
  v16 = v13 & 0xC000000000000001;
  v17 = v13 & 0xFFFFFFFFFFFFFF8;
  while (v14 != v15)
  {
    if (v16)
    {
      v18 = MEMORY[0x26D625BD0](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v18 = *(v13 + 8 * v15 + 32);
    }

    v19 = v18;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
LABEL_23:
      v37 = __swift_project_value_buffer(v17, qword_2802CDA10);
      (*(v16 + 16))(v3, v37, v17);
      v38 = sub_268B37A34();
      v39 = sub_268B37EC4();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v52 = v41;
        *v40 = 136315138;
        v42 = type metadata accessor for Device();

        v44 = MEMORY[0x26D6256F0](v43, v42);
        v46 = v45;

        v47 = sub_26892CDB8(v44, v46, &v52);

        *(v40 + 4) = v47;
        _os_log_impl(&dword_2688BB000, v38, v39, "Selecting most recent resumable deviceContexts: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x26D6266E0](v41, -1, -1);
        MEMORY[0x26D6266E0](v40, -1, -1);
      }

      (*(v16 + 8))(v3, v17);
      goto LABEL_28;
    }

    if (sub_268AD621C(v18))
    {
      sub_268B38214();
      v3 = *(v52 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }

    ++v15;
  }

  if (sub_2688EFD0C())
  {

    v52 = sub_268AE11D0(v20, sub_268988A7C, sub_268988668);
    sub_268ADF328(&v52);
    v17 = v51;

    v21 = v52;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x26D625BD0](0, v21);
      }

      else
      {
        v22 = *(v21 + 32);
      }

      v23 = v22;
      v52 = v22;
      MEMORY[0x28223BE20](v22);
      *(&v49 - 2) = &v52;
      sub_2688C8F14();
      v13 = v24;
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
    }

    v3 = v49;
    v16 = v50;
    if (qword_2802A4F30 != -1)
    {
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  v25 = v51;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v25, qword_2802CDA10);
  v27 = v50;
  (*(v50 + 16))(v11, v26, v25);

  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v52 = v31;
    *v30 = 136315138;
    v32 = type metadata accessor for Device();
    v33 = MEMORY[0x26D6256F0](v13, v32);
    v35 = v34;

    v36 = sub_26892CDB8(v33, v35, &v52);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_2688BB000, v28, v29, "Found no resumable contexts with valid timestamps. Returning all resumable without timestamp filtration: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x26D6266E0](v31, -1, -1);
    MEMORY[0x26D6266E0](v30, -1, -1);
  }

  else
  {
  }

  (*(v27 + 8))(v11, v25);
LABEL_28:
  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  return v13;
}

unint64_t sub_268AE1C0C()
{
  result = qword_2802A88F0;
  if (!qword_2802A88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A88F0);
  }

  return result;
}

uint64_t sub_268AE1C60()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_268AE1CD8()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_268AE1D10(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_268AE1D50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 OUTLINED_FUNCTION_10_28()
{
  result = *(v1 - 352);
  *v0 = result.n128_u32[0];
  *(v1 - 120) = *(v1 - 232);
  return result;
}

void OUTLINED_FUNCTION_12_26()
{

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_15_25()
{

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_16_30()
{

  sub_268987D58();
}

void *OUTLINED_FUNCTION_40_12(uint64_t a1, ...)
{

  return sub_268B38514();
}

__n128 OUTLINED_FUNCTION_51_8(uint64_t a1)
{
  *(v4 - 120) = v1;
  *(v4 - 112) = a1;
  result = *(v4 - 192);
  *v3 = result.n128_u32[0];
  *(v4 - 128) = v2;
  return result;
}

void OUTLINED_FUNCTION_55_9()
{

  sub_268987D58();
}

void OUTLINED_FUNCTION_56_8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_58_8()
{

  return sub_268B376E4();
}

uint64_t OUTLINED_FUNCTION_59_5()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));

  return sub_268B34C94();
}

void OUTLINED_FUNCTION_60_5(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_67_6@<X0>(uint64_t a1@<X8>)
{
  if (v1 < 0)
  {
    return v1;
  }

  else
  {
    return a1;
  }
}

uint64_t OUTLINED_FUNCTION_82_4()
{
}

uint64_t OUTLINED_FUNCTION_83_6@<X0>(uint64_t a1@<X8>)
{

  return sub_2688F204C(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_86_6(uint64_t a1)
{

  return sub_268B38444();
}

void OUTLINED_FUNCTION_87_5()
{
  v2 = *(v0 - 440);
}

void *OUTLINED_FUNCTION_89_7()
{
  v1 = *(v0 - 176);
  v2 = v1[15];
  *(v0 - 184) = v1[16];
  result = __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  *(v0 - 192) = result;
  return result;
}

void sub_268AE2278(uint64_t a1)
{
  v2 = sub_2688EFD0C();
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    if (sub_268983434(v5))
    {

      goto LABEL_11;
    }

    v7 = sub_268988580(v6);
    if (v8)
    {
      v9 = v7;
      v11 = v8;

LABEL_13:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2689876A4();
        v4 = v14;
      }

      v12 = *(v4 + 16);
      if (v12 >= *(v4 + 24) >> 1)
      {
        sub_2689876A4();
        v4 = v15;
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v11;
      ++v3;
    }

    else
    {
      v9 = sub_268988568(v6);
      v11 = v10;

      if (v11)
      {
        goto LABEL_13;
      }

LABEL_11:
      ++v3;
    }
  }
}

void sub_268AE23DC(uint64_t a1)
{
  v2 = sub_2688EFD0C();
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = sub_268983434(v5);

    v3 = v4 + 1;
  }

  while ((v7 & 1) == 0);
}

uint64_t sub_268AE2494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
LABEL_19:
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
    _os_log_impl(&dword_2688BB000, v11, v12, "SetAudioLanguageDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v9 = a3;
  a3 = sub_268B35254();
  v6 = sub_2688EFD0C();
  v14 = 0;
  v7 = a3 & 0xC000000000000001;
  while (v6 != v14)
  {
    if (v7)
    {
      v15 = MEMORY[0x26D625BD0](v14, a3);
    }

    else
    {
      if (v14 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v15 = *(a3 + 8 * v14 + 32);
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v17 = [v15 isDeviceSelectedUsingContext];
    v9 = sub_2688C063C();
    v18 = sub_268B38054();
    v19 = v18;
    if (v17)
    {
      v9 = sub_268B38074();

      if (v9)
      {
        sub_268AE2278(a3);
        v23 = v22;
        sub_268AE23DC(a3);
        v25 = v24;

        sub_268A39260(v23, v25 & 1, v29, v30);
      }
    }

    else
    {
    }

    ++v14;
  }

  v20 = v28[31];
  v21 = v28[32];
  __swift_project_boxed_opaque_existential_1(v28 + 28, v20);
  return sub_2689CE88C(0xD000000000000024, 0x8000000268B5BBB0, v29, v30, v20, v21);
}

void sub_268AE27DC()
{
  type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_268AE28C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268AE2978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268AE2A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268AE2AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268AE2B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_268AE2C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_268AE2CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();
  *v16 = v8;
  v16[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_268AE2EE0(uint64_t a1, uint64_t a2)
{
  result = sub_268AE2F38(&qword_2802A8920, a2, type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy, &unk_268B504C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268AE2F38(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

Swift::String_optional __swiftcall UsoTask_transfer_common_MediaItem.verb()()
{
  v0 = 0x6165705365766F6DLL;
  v1 = 0xEB0000000072656BLL;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268AE2FD0(uint64_t a1)
{
  result = sub_268AE307C(&qword_2802A8928, &protocol conformance descriptor for UsoTask_transfer_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268AE307C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B362D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268AE3104(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268AE3158(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268AE31AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268AE3200(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268AE3254(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268AE32A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268AE32FC(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268AE3350(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268AE33B4(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268AE3408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268AE346C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268AE34D0(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268AE3534(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

void sub_268AE3610()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_23_21(v1, v2, v3, v4);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_31();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_16_31();
  if (sub_2688EFD0C())
  {
    OUTLINED_FUNCTION_104_5();
    if ((v0 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_105_1();
    }

    else
    {
      v7 = *(v0 + 32);
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 isDeviceSelectedUsingContext];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v10 = OUTLINED_FUNCTION_201_0();
  v11 = v10;
  if (v9)
  {
    OUTLINED_FUNCTION_46_1();
    v12 = sub_268B38074();

    if (v12)
    {
      if (qword_2802A4F30 != -1)
      {
        v13 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_5_31(v13, qword_2802CDA10);
      v14 = OUTLINED_FUNCTION_81_4();
      v15(v14);
      v16 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v18);
        OUTLINED_FUNCTION_33_19();
        _os_log_impl(v19, v20, v21, v22, v23, 2u);
        OUTLINED_FUNCTION_6();
      }

      v24 = OUTLINED_FUNCTION_32_13();
      v25(v24);
      OUTLINED_FUNCTION_20_21();
      sub_268AE484C();
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    v13 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_5_31(v13, qword_2802CDA10);
  v26 = OUTLINED_FUNCTION_76_6();
  v27(v26);
  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (OUTLINED_FUNCTION_47_4(v29))
  {
    v30 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v30);
    OUTLINED_FUNCTION_65_1(&dword_2688BB000, v31, v32, "Updating parameters for local controls");
    OUTLINED_FUNCTION_20_2();
  }

  v33 = OUTLINED_FUNCTION_31_20();
  v34(v33);
  sub_268AACBE0();
  sub_268AE46CC();
LABEL_19:
  OUTLINED_FUNCTION_23();
}

void sub_268AE3924()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_23_21(v1, v2, v3, v4);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_31();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_16_31();
  if (sub_2688EFD0C())
  {
    OUTLINED_FUNCTION_104_5();
    if ((v0 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_105_1();
    }

    else
    {
      v7 = *(v0 + 32);
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 isDeviceSelectedUsingContext];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v10 = OUTLINED_FUNCTION_201_0();
  v11 = v10;
  if (v9)
  {
    OUTLINED_FUNCTION_46_1();
    v12 = sub_268B38074();

    if (v12)
    {
      if (qword_2802A4F30 != -1)
      {
        v13 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_5_31(v13, qword_2802CDA10);
      v14 = OUTLINED_FUNCTION_81_4();
      v15(v14);
      v16 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v18);
        OUTLINED_FUNCTION_33_19();
        _os_log_impl(v19, v20, v21, v22, v23, 2u);
        OUTLINED_FUNCTION_6();
      }

      v24 = OUTLINED_FUNCTION_32_13();
      v25(v24);
      OUTLINED_FUNCTION_20_21();
      sub_268AE4D40();
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    v13 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_5_31(v13, qword_2802CDA10);
  v26 = OUTLINED_FUNCTION_76_6();
  v27(v26);
  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (OUTLINED_FUNCTION_47_4(v29))
  {
    v30 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v30);
    OUTLINED_FUNCTION_65_1(&dword_2688BB000, v31, v32, "Updating parameters for local controls");
    OUTLINED_FUNCTION_20_2();
  }

  v33 = OUTLINED_FUNCTION_31_20();
  v34(v33);
  sub_268AACBE0();
  sub_268AE46CC();
LABEL_19:
  OUTLINED_FUNCTION_23();
}

void sub_268AE3BE8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_23_21(v1, v2, v3, v4);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_31();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_16_31();
  if (sub_2688EFD0C())
  {
    OUTLINED_FUNCTION_104_5();
    if ((v0 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_105_1();
    }

    else
    {
      v7 = *(v0 + 32);
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 isDeviceSelectedUsingContext];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v10 = OUTLINED_FUNCTION_201_0();
  v11 = v10;
  if (v9)
  {
    OUTLINED_FUNCTION_46_1();
    v12 = sub_268B38074();

    if (v12)
    {
      if (qword_2802A4F30 != -1)
      {
        v13 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_5_31(v13, qword_2802CDA10);
      v14 = OUTLINED_FUNCTION_81_4();
      v15(v14);
      v16 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v18);
        OUTLINED_FUNCTION_33_19();
        _os_log_impl(v19, v20, v21, v22, v23, 2u);
        OUTLINED_FUNCTION_6();
      }

      v24 = OUTLINED_FUNCTION_32_13();
      v25(v24);
      OUTLINED_FUNCTION_20_21();
      sub_268AE5990();
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    v13 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_5_31(v13, qword_2802CDA10);
  v26 = OUTLINED_FUNCTION_76_6();
  v27(v26);
  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (OUTLINED_FUNCTION_47_4(v29))
  {
    v30 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v30);
    OUTLINED_FUNCTION_65_1(&dword_2688BB000, v31, v32, "Updating parameters for local controls");
    OUTLINED_FUNCTION_20_2();
  }

  v33 = OUTLINED_FUNCTION_31_20();
  v34(v33);
  sub_268AACBE0();
  sub_268AE46CC();
LABEL_19:
  OUTLINED_FUNCTION_23();
}

void sub_268AE3E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_20_0();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  if (sub_2688EFD0C())
  {
    sub_2688EFD10();
    if ((v23 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x26D625BD0](0, v23);
    }

    else
    {
      v34 = *(v23 + 32);
    }

    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = [v35 isDeviceSelectedUsingContext];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v37 = OUTLINED_FUNCTION_201_0();
  v38 = v37;
  if (v36)
  {
    v39 = sub_268B38074();

    if (v39)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_12_27(v24, qword_2802CDA10);
      v40(v33);
      v41 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_149_0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_14();
        *v43 = 0;
        _os_log_impl(&dword_2688BB000, v41, v30, "Updating parameters for smart controls", v43, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v26 + 8))(v33, v24);
      sub_268AE5234(v23);
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_12_27(v24, qword_2802CDA10);
  v44(v30);
  v45 = sub_268B37A34();
  v46 = sub_268B37F04();
  if (OUTLINED_FUNCTION_47_4(v46))
  {
    v47 = OUTLINED_FUNCTION_14();
    *v47 = 0;
    _os_log_impl(&dword_2688BB000, v45, v23, "Updating parameters for local controls", v47, 2u);
    OUTLINED_FUNCTION_132_0();
  }

  (*(v26 + 8))(v30, v24);
  sub_268AACBE0();
  sub_268AE46CC();
LABEL_19:
  OUTLINED_FUNCTION_23();
}

void sub_268AE41E4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_23_21(v1, v2, v3, v4);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_31();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_16_31();
  if (sub_2688EFD0C())
  {
    OUTLINED_FUNCTION_104_5();
    if ((v0 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_105_1();
    }

    else
    {
      v7 = *(v0 + 32);
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 isDeviceSelectedUsingContext];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v10 = OUTLINED_FUNCTION_201_0();
  v11 = v10;
  if (v9)
  {
    OUTLINED_FUNCTION_46_1();
    v12 = sub_268B38074();

    if (v12)
    {
      if (qword_2802A4F30 != -1)
      {
        v13 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_5_31(v13, qword_2802CDA10);
      v14 = OUTLINED_FUNCTION_81_4();
      v15(v14);
      v16 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v18);
        OUTLINED_FUNCTION_33_19();
        _os_log_impl(v19, v20, v21, v22, v23, 2u);
        OUTLINED_FUNCTION_6();
      }

      v24 = OUTLINED_FUNCTION_32_13();
      v25(v24);
      OUTLINED_FUNCTION_20_21();
      sub_268AE5E84();
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    v13 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_5_31(v13, qword_2802CDA10);
  v26 = OUTLINED_FUNCTION_76_6();
  v27(v26);
  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (OUTLINED_FUNCTION_47_4(v29))
  {
    v30 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v30);
    OUTLINED_FUNCTION_65_1(&dword_2688BB000, v31, v32, "Updating parameters for local controls");
    OUTLINED_FUNCTION_20_2();
  }

  v33 = OUTLINED_FUNCTION_31_20();
  v34(v33);
  sub_268AACBE0();
  sub_268AE46CC();
LABEL_19:
  OUTLINED_FUNCTION_23();
}

void sub_268AE4458()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_23_21(v1, v2, v3, v4);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_31();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_16_31();
  if (sub_2688EFD0C())
  {
    OUTLINED_FUNCTION_104_5();
    if ((v0 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_105_1();
    }

    else
    {
      v7 = *(v0 + 32);
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 isDeviceSelectedUsingContext];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v10 = OUTLINED_FUNCTION_201_0();
  v11 = v10;
  if (v9)
  {
    OUTLINED_FUNCTION_46_1();
    v12 = sub_268B38074();

    if (v12)
    {
      if (qword_2802A4F30 != -1)
      {
        v13 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_5_31(v13, qword_2802CDA10);
      v14 = OUTLINED_FUNCTION_81_4();
      v15(v14);
      v16 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v18);
        OUTLINED_FUNCTION_33_19();
        _os_log_impl(v19, v20, v21, v22, v23, 2u);
        OUTLINED_FUNCTION_6();
      }

      v24 = OUTLINED_FUNCTION_32_13();
      v25(v24);
      OUTLINED_FUNCTION_20_21();
      sub_268AE6378();
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    v13 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_5_31(v13, qword_2802CDA10);
  v26 = OUTLINED_FUNCTION_76_6();
  v27(v26);
  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (OUTLINED_FUNCTION_47_4(v29))
  {
    v30 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v30);
    OUTLINED_FUNCTION_65_1(&dword_2688BB000, v31, v32, "Updating parameters for local controls");
    OUTLINED_FUNCTION_20_2();
  }

  v33 = OUTLINED_FUNCTION_31_20();
  v34(v33);
  sub_268AACBE0();
  sub_268AE46CC();
LABEL_19:
  OUTLINED_FUNCTION_23();
}

void sub_268AE46CC()
{
  OUTLINED_FUNCTION_26();
  v2 = OUTLINED_FUNCTION_101_4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_43();
  if (v6)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_85_7();
    }

    else if (v5 == 3)
    {
      OUTLINED_FUNCTION_86_7();
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      __swift_project_value_buffer(v2, qword_2802CDA10);
      v7 = OUTLINED_FUNCTION_9_29();
      v8(v7);
      v9 = sub_268B37A34();
      sub_268B37ED4();
      OUTLINED_FUNCTION_149_0();
      if (os_log_type_enabled(v9, v10))
      {
        OUTLINED_FUNCTION_172_0();
        v11 = OUTLINED_FUNCTION_59_6();
        OUTLINED_FUNCTION_89_8(v11);
        OUTLINED_FUNCTION_83_7(4.8149e-34);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D58, &unk_268B42830);
        v13 = OUTLINED_FUNCTION_100_4(v12);
        OUTLINED_FUNCTION_99_6(v13, v14);
        OUTLINED_FUNCTION_106_3();
        *(v0 + 4) = v1;
        OUTLINED_FUNCTION_39_10(&dword_2688BB000, v15, v16, "ControlsDialogParameters#update deviceType: %s doesn't have dialog parameter");
        OUTLINED_FUNCTION_25_19();
        OUTLINED_FUNCTION_132_0();
      }

      v17 = OUTLINED_FUNCTION_38_8();
      v18(v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_87_6();
  }

  OUTLINED_FUNCTION_23();
}

void sub_268AE484C()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_19_19();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_42();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_31();
  v8 = sub_2688EFD0C();
  if (!v8)
  {
    if (qword_2802A4F30 != -1)
    {
      v8 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_2_37(v8, qword_2802CDA10);
    v12 = OUTLINED_FUNCTION_82_5();
    v13(v12);
    v14 = sub_268B37A34();
    v15 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v15))
    {
      v16 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v16);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_6();
    }

    v22 = OUTLINED_FUNCTION_74_7();
    goto LABEL_18;
  }

  v9 = v3 & 1;
  OUTLINED_FUNCTION_103_4();
  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_259_0();
  }

  else
  {
    v10 = *(v3 + 32);
  }

  v11 = OUTLINED_FUNCTION_98_4(v10);
  if (v11 != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      v11 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_2_37(v11, qword_2802CDA10);
    v24 = OUTLINED_FUNCTION_290();
    v25(v24);

    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v27))
    {
      v28 = OUTLINED_FUNCTION_172_0();
      v29 = OUTLINED_FUNCTION_96_6(v28, 3.852e-34);
      OUTLINED_FUNCTION_95_6(v29);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v22 = OUTLINED_FUNCTION_75_6();
LABEL_18:
    v23(v22, v4);
LABEL_42:
    OUTLINED_FUNCTION_23();
    return;
  }

  if ([v76 routeId])
  {
    sub_268B37BF4();
    OUTLINED_FUNCTION_97_5();
  }

  else
  {
    OUTLINED_FUNCTION_73_7();
  }

  sub_268B37724();
  v36 = v35;
  if (v2)
  {
    OUTLINED_FUNCTION_72_5();
    v37 = v37 && v2 == v36;
    if (v37)
    {

LABEL_34:
      if (qword_2802A4F30 != -1)
      {
        v38 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_2_37(v38, qword_2802CDA10);
      v45 = OUTLINED_FUNCTION_88_6();
      v46(v45);
      v47 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_77_7(v49);
        OUTLINED_FUNCTION_34_13(&dword_2688BB000, v50, v51, "Everywhere: Smart pause of all devices or groups");
        OUTLINED_FUNCTION_55_10();
      }

      v52 = OUTLINED_FUNCTION_30_17();
      v53(v52);
      v54 = OUTLINED_FUNCTION_3_45();
      v1(v54);
      OUTLINED_FUNCTION_7_25();
      if (!v37)
      {
        OUTLINED_FUNCTION_79_5(v55, v56);
      }

      v57 = OUTLINED_FUNCTION_26_18();
      v58(v57);
LABEL_41:

      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35_14();
    OUTLINED_FUNCTION_108_4();

    if (v9)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v39 = [v76 context];
  if (!v39)
  {
    goto LABEL_54;
  }

  v40 = v39;
  v41 = [v39 proximity];

  OUTLINED_FUNCTION_92_7();
  if (!v42)
  {
    OUTLINED_FUNCTION_84_6();
    v43 = OUTLINED_FUNCTION_3_45();
    v1(v43);
    OUTLINED_FUNCTION_26_14();
    if (v37)
    {
      v44 = OUTLINED_FUNCTION_26_18();
      (v40)(v44);
    }

    else
    {
      v59 = OUTLINED_FUNCTION_107_4();
      if (!v60)
      {
        v59 = sub_268988568(v76);
      }

      OUTLINED_FUNCTION_60_6(v59, v60);
      v61 = OUTLINED_FUNCTION_18_20();
      (v40)(v61);
    }

    v62 = OUTLINED_FUNCTION_3_45();
    v1(v62);
    OUTLINED_FUNCTION_26_14();
    if (v37)
    {
      v63 = OUTLINED_FUNCTION_26_18();
      (v40)(v63);
    }

    else
    {
      v64 = [v76 numberOfAffectedRooms];
      v65 = 1;
      if (v64)
      {
        OUTLINED_FUNCTION_40_13(1);

        OUTLINED_FUNCTION_90_7();
      }

      v68 = OUTLINED_FUNCTION_11_33(v65);
      (v40)(v68);
    }

    goto LABEL_41;
  }

  if (v41 == 1)
  {

    v0[89] = 1;
    goto LABEL_42;
  }

  if (v41)
  {
    OUTLINED_FUNCTION_10_29();
    OUTLINED_FUNCTION_13_24("Fatal error", v69, v70, v71, v72, "SiriPlaybackControlIntents/ControlsDialogParameters.swift", v73, v74, v75, v76);
    __break(1u);
  }

  else
  {
LABEL_54:
    sub_268AACBE0();
    sub_268AE46CC();
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_23();
  }
}

void sub_268AE4D40()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_19_19();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_42();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_31();
  v8 = sub_2688EFD0C();
  if (!v8)
  {
    if (qword_2802A4F30 != -1)
    {
      v8 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_2_37(v8, qword_2802CDA10);
    v12 = OUTLINED_FUNCTION_82_5();
    v13(v12);
    v14 = sub_268B37A34();
    v15 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v15))
    {
      v16 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v16);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_6();
    }

    v22 = OUTLINED_FUNCTION_74_7();
    goto LABEL_18;
  }

  v9 = v3 & 1;
  OUTLINED_FUNCTION_103_4();
  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_259_0();
  }

  else
  {
    v10 = *(v3 + 32);
  }

  v11 = OUTLINED_FUNCTION_98_4(v10);
  if (v11 != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      v11 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_2_37(v11, qword_2802CDA10);
    v24 = OUTLINED_FUNCTION_290();
    v25(v24);

    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v27))
    {
      v28 = OUTLINED_FUNCTION_172_0();
      v29 = OUTLINED_FUNCTION_96_6(v28, 3.852e-34);
      OUTLINED_FUNCTION_95_6(v29);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v22 = OUTLINED_FUNCTION_75_6();
LABEL_18:
    v23(v22, v4);
LABEL_42:
    OUTLINED_FUNCTION_23();
    return;
  }

  if ([v76 routeId])
  {
    sub_268B37BF4();
    OUTLINED_FUNCTION_97_5();
  }

  else
  {
    OUTLINED_FUNCTION_73_7();
  }

  sub_268B37724();
  v36 = v35;
  if (v2)
  {
    OUTLINED_FUNCTION_72_5();
    v37 = v37 && v2 == v36;
    if (v37)
    {

LABEL_34:
      if (qword_2802A4F30 != -1)
      {
        v38 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_2_37(v38, qword_2802CDA10);
      v45 = OUTLINED_FUNCTION_88_6();
      v46(v45);
      v47 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_77_7(v49);
        OUTLINED_FUNCTION_34_13(&dword_2688BB000, v50, v51, "Everywhere: Smart pause of all devices or groups");
        OUTLINED_FUNCTION_55_10();
      }

      v52 = OUTLINED_FUNCTION_30_17();
      v53(v52);
      v54 = OUTLINED_FUNCTION_3_45();
      v1(v54);
      OUTLINED_FUNCTION_7_25();
      if (!v37)
      {
        OUTLINED_FUNCTION_79_5(v55, v56);
      }

      v57 = OUTLINED_FUNCTION_26_18();
      v58(v57);
LABEL_41:

      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35_14();
    OUTLINED_FUNCTION_108_4();

    if (v9)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v39 = [v76 context];
  if (!v39)
  {
    goto LABEL_54;
  }

  v40 = v39;
  v41 = [v39 proximity];

  OUTLINED_FUNCTION_92_7();
  if (!v42)
  {
    v0[91] = 1;
    v43 = OUTLINED_FUNCTION_3_45();
    v1(v43);
    OUTLINED_FUNCTION_26_14();
    if (v37)
    {
      v44 = OUTLINED_FUNCTION_26_18();
      (v40)(v44);
    }

    else
    {
      v59 = OUTLINED_FUNCTION_107_4();
      if (!v60)
      {
        v59 = sub_268988568(v76);
      }

      OUTLINED_FUNCTION_60_6(v59, v60);
      v61 = OUTLINED_FUNCTION_18_20();
      (v40)(v61);
    }

    v62 = OUTLINED_FUNCTION_3_45();
    v1(v62);
    OUTLINED_FUNCTION_26_14();
    if (v37)
    {
      v63 = OUTLINED_FUNCTION_26_18();
      (v40)(v63);
    }

    else
    {
      v64 = [v76 numberOfAffectedRooms];
      v65 = 1;
      if (v64)
      {
        OUTLINED_FUNCTION_40_13(1);

        OUTLINED_FUNCTION_90_7();
      }

      v68 = OUTLINED_FUNCTION_11_33(v65);
      (v40)(v68);
    }

    goto LABEL_41;
  }

  if (v41 == 1)
  {

    OUTLINED_FUNCTION_84_6();
    goto LABEL_42;
  }

  if (v41)
  {
    OUTLINED_FUNCTION_10_29();
    OUTLINED_FUNCTION_13_24("Fatal error", v69, v70, v71, v72, "SiriPlaybackControlIntents/ControlsDialogParameters.swift", v73, v74, v75, v76);
    __break(1u);
  }

  else
  {
LABEL_54:
    sub_268AACBE0();
    sub_268AE46CC();
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_23();
  }
}

void sub_268AE5234(uint64_t a1)
{
  v2 = v1;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v55 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - v12;
  if (sub_2688EFD0C())
  {
    sub_2688EFD10();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D625BD0](0, a1);
    }

    else
    {
      v14 = *(a1 + 32);
    }

    v56 = v14;
    if (sub_2688EFD0C() == 1)
    {
      v15 = [v56 routeId];
      if (v15)
      {
        v16 = v15;
        v17 = sub_268B37BF4();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v28 = sub_268B37724();
      if (v19)
      {
        if (v17 == v28 && v19 == v29)
        {

LABEL_32:
          if (qword_2802A4F30 != -1)
          {
            swift_once();
          }

          v38 = __swift_project_value_buffer(v4, qword_2802CDA10);
          (*(v5 + 16))(v8, v38, v4);
          v39 = sub_268B37A34();
          v40 = sub_268B37F04();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&dword_2688BB000, v39, v40, "Everywhere: Smart pause of all devices or groups", v41, 2u);
            MEMORY[0x26D6266E0](v41, -1, -1);
          }

          (*(v5 + 8))(v8, v4);
          sub_268A37C8C();
          if (*(v43 + 16) != 1)
          {
            *(v43 + 2) = 1;
          }

          goto LABEL_38;
        }

        v31 = sub_268B38444();

        if (v31)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }

      v32 = [v56 context];
      if (!v32)
      {
        goto LABEL_49;
      }

      v33 = v32;
      v34 = [v32 proximity];

      if ((v34 - 2) < 3)
      {
        *(v2 + 90) = 1;
        sub_268A37C8C();
        v37 = v35;
        if (*(v36 + 16) == 1)
        {
          v35(v59, 0);
        }

        else
        {
          v44 = v36;
          v45 = sub_268988580(v56);
          if (!v46)
          {
            v45 = sub_268988568(v56);
          }

          *(v44 + 40) = v45;
          *(v44 + 48) = v46;

          v37(v59, 0);
        }

        sub_268A37C8C();
        v48 = v42;
        if (*(v47 + 16) != 1)
        {
          v49 = v47;
          v50 = [v56 numberOfAffectedRooms];
          v51 = 1;
          if (v50)
          {
            v52 = v50;
            v57 = 0;
            v58 = 1;
            sub_268B37E54();

            v53 = v57;
            v51 = v58;
          }

          else
          {
            v53 = 0;
          }

          *(v49 + 72) = v53;
          *(v49 + 80) = v51;
          v48(v59, 0);
          goto LABEL_39;
        }

LABEL_38:
        v42(v59, 0);
LABEL_39:

        return;
      }

      if (v34 == 1)
      {

        *(v2 + 89) = 1;
        return;
      }

      if (v34)
      {
        sub_268B38284();
        __break(1u);
      }

      else
      {
LABEL_49:
        sub_268AACBE0();
        sub_268AE46CC();
        v54 = v56;
      }
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v4, qword_2802CDA10);
      (*(v5 + 16))(v11, v24, v4);

      v25 = sub_268B37A34();
      v26 = sub_268B37EE4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = sub_2688EFD0C();

        _os_log_impl(&dword_2688BB000, v25, v26, "Smart selected more than 1 device?! count = %ld", v27, 0xCu);
        MEMORY[0x26D6266E0](v27, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v13, v20, v4);
    v21 = sub_268B37A34();
    v22 = sub_268B37EE4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2688BB000, v21, v22, "Cannot update dialog parameters using an empty device list", v23, 2u);
      MEMORY[0x26D6266E0](v23, -1, -1);
    }

    (*(v5 + 8))(v13, v4);
  }
}

void sub_268AE5990()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_19_19();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_42();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_31();
  v8 = sub_2688EFD0C();
  if (!v8)
  {
    if (qword_2802A4F30 != -1)
    {
      v8 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_2_37(v8, qword_2802CDA10);
    v12 = OUTLINED_FUNCTION_82_5();
    v13(v12);
    v14 = sub_268B37A34();
    v15 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v15))
    {
      v16 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v16);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_6();
    }

    v22 = OUTLINED_FUNCTION_74_7();
    goto LABEL_18;
  }

  v9 = v3 & 1;
  OUTLINED_FUNCTION_103_4();
  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_259_0();
  }

  else
  {
    v10 = *(v3 + 32);
  }

  v11 = OUTLINED_FUNCTION_98_4(v10);
  if (v11 != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      v11 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_2_37(v11, qword_2802CDA10);
    v24 = OUTLINED_FUNCTION_290();
    v25(v24);

    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v27))
    {
      v28 = OUTLINED_FUNCTION_172_0();
      v29 = OUTLINED_FUNCTION_96_6(v28, 3.852e-34);
      OUTLINED_FUNCTION_95_6(v29);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v22 = OUTLINED_FUNCTION_75_6();
LABEL_18:
    v23(v22, v4);
LABEL_42:
    OUTLINED_FUNCTION_23();
    return;
  }

  if ([v76 routeId])
  {
    sub_268B37BF4();
    OUTLINED_FUNCTION_97_5();
  }

  else
  {
    OUTLINED_FUNCTION_73_7();
  }

  sub_268B37724();
  v36 = v35;
  if (v2)
  {
    OUTLINED_FUNCTION_72_5();
    v37 = v37 && v2 == v36;
    if (v37)
    {

LABEL_34:
      if (qword_2802A4F30 != -1)
      {
        v38 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_2_37(v38, qword_2802CDA10);
      v45 = OUTLINED_FUNCTION_88_6();
      v46(v45);
      v47 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_77_7(v49);
        OUTLINED_FUNCTION_34_13(&dword_2688BB000, v50, v51, "Everywhere: Smart pause of all devices or groups");
        OUTLINED_FUNCTION_55_10();
      }

      v52 = OUTLINED_FUNCTION_30_17();
      v53(v52);
      v54 = OUTLINED_FUNCTION_3_45();
      v1(v54);
      OUTLINED_FUNCTION_7_25();
      if (!v37)
      {
        OUTLINED_FUNCTION_79_5(v55, v56);
      }

      v57 = OUTLINED_FUNCTION_26_18();
      v58(v57);
LABEL_41:

      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35_14();
    OUTLINED_FUNCTION_108_4();

    if (v9)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v39 = [v76 context];
  if (!v39)
  {
    goto LABEL_54;
  }

  v40 = v39;
  v41 = [v39 proximity];

  OUTLINED_FUNCTION_92_7();
  if (!v42)
  {
    v0[91] = 1;
    v43 = OUTLINED_FUNCTION_3_45();
    v1(v43);
    OUTLINED_FUNCTION_26_14();
    if (v37)
    {
      v44 = OUTLINED_FUNCTION_26_18();
      (v40)(v44);
    }

    else
    {
      v59 = OUTLINED_FUNCTION_107_4();
      if (!v60)
      {
        v59 = sub_268988568(v76);
      }

      OUTLINED_FUNCTION_60_6(v59, v60);
      v61 = OUTLINED_FUNCTION_18_20();
      (v40)(v61);
    }

    v62 = OUTLINED_FUNCTION_3_45();
    v1(v62);
    OUTLINED_FUNCTION_26_14();
    if (v37)
    {
      v63 = OUTLINED_FUNCTION_26_18();
      (v40)(v63);
    }

    else
    {
      v64 = [v76 numberOfAffectedRooms];
      v65 = 1;
      if (v64)
      {
        OUTLINED_FUNCTION_40_13(1);

        OUTLINED_FUNCTION_90_7();
      }

      v68 = OUTLINED_FUNCTION_11_33(v65);
      (v40)(v68);
    }

    goto LABEL_41;
  }

  if (v41 == 1)
  {

    OUTLINED_FUNCTION_84_6();
    goto LABEL_42;
  }

  if (v41)
  {
    OUTLINED_FUNCTION_10_29();
    OUTLINED_FUNCTION_13_24("Fatal error", v69, v70, v71, v72, "SiriPlaybackControlIntents/ControlsDialogParameters.swift", v73, v74, v75, v76);
    __break(1u);
  }

  else
  {
LABEL_54:
    sub_268AACBE0();
    sub_268AE46CC();
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_23();
  }
}

void sub_268AE5E84()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_19_19();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_42();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_31();
  v8 = sub_2688EFD0C();
  if (!v8)
  {
    if (qword_2802A4F30 != -1)
    {
      v8 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_2_37(v8, qword_2802CDA10);
    v12 = OUTLINED_FUNCTION_82_5();
    v13(v12);
    v14 = sub_268B37A34();
    v15 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v15))
    {
      v16 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v16);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_6();
    }

    v22 = OUTLINED_FUNCTION_74_7();
    goto LABEL_18;
  }

  v9 = v3 & 1;
  OUTLINED_FUNCTION_103_4();
  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_259_0();
  }

  else
  {
    v10 = *(v3 + 32);
  }

  v11 = OUTLINED_FUNCTION_98_4(v10);
  if (v11 != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      v11 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_2_37(v11, qword_2802CDA10);
    v24 = OUTLINED_FUNCTION_290();
    v25(v24);

    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v27))
    {
      v28 = OUTLINED_FUNCTION_172_0();
      v29 = OUTLINED_FUNCTION_96_6(v28, 3.852e-34);
      OUTLINED_FUNCTION_95_6(v29);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v22 = OUTLINED_FUNCTION_75_6();
LABEL_18:
    v23(v22, v4);
LABEL_42:
    OUTLINED_FUNCTION_23();
    return;
  }

  if ([v76 routeId])
  {
    sub_268B37BF4();
    OUTLINED_FUNCTION_97_5();
  }

  else
  {
    OUTLINED_FUNCTION_73_7();
  }

  sub_268B37724();
  v36 = v35;
  if (v2)
  {
    OUTLINED_FUNCTION_72_5();
    v37 = v37 && v2 == v36;
    if (v37)
    {

LABEL_34:
      if (qword_2802A4F30 != -1)
      {
        v38 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_2_37(v38, qword_2802CDA10);
      v45 = OUTLINED_FUNCTION_88_6();
      v46(v45);
      v47 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_77_7(v49);
        OUTLINED_FUNCTION_34_13(&dword_2688BB000, v50, v51, "Everywhere: Smart pause of all devices or groups");
        OUTLINED_FUNCTION_55_10();
      }

      v52 = OUTLINED_FUNCTION_30_17();
      v53(v52);
      v54 = OUTLINED_FUNCTION_3_45();
      v1(v54);
      OUTLINED_FUNCTION_7_25();
      if (!v37)
      {
        OUTLINED_FUNCTION_79_5(v55, v56);
      }

      v57 = OUTLINED_FUNCTION_26_18();
      v58(v57);
LABEL_41:

      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35_14();
    OUTLINED_FUNCTION_108_4();

    if (v9)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v39 = [v76 context];
  if (!v39)
  {
    goto LABEL_54;
  }

  v40 = v39;
  v41 = [v39 proximity];

  OUTLINED_FUNCTION_92_7();
  if (!v42)
  {
    v0[91] = 1;
    v43 = OUTLINED_FUNCTION_3_45();
    v1(v43);
    OUTLINED_FUNCTION_26_14();
    if (v37)
    {
      v44 = OUTLINED_FUNCTION_26_18();
      (v40)(v44);
    }

    else
    {
      v59 = OUTLINED_FUNCTION_107_4();
      if (!v60)
      {
        v59 = sub_268988568(v76);
      }

      OUTLINED_FUNCTION_60_6(v59, v60);
      v61 = OUTLINED_FUNCTION_18_20();
      (v40)(v61);
    }

    v62 = OUTLINED_FUNCTION_3_45();
    v1(v62);
    OUTLINED_FUNCTION_26_14();
    if (v37)
    {
      v63 = OUTLINED_FUNCTION_26_18();
      (v40)(v63);
    }

    else
    {
      v64 = [v76 numberOfAffectedRooms];
      v65 = 1;
      if (v64)
      {
        OUTLINED_FUNCTION_40_13(1);

        OUTLINED_FUNCTION_90_7();
      }

      v68 = OUTLINED_FUNCTION_11_33(v65);
      (v40)(v68);
    }

    goto LABEL_41;
  }

  if (v41 == 1)
  {

    OUTLINED_FUNCTION_84_6();
    goto LABEL_42;
  }

  if (v41)
  {
    OUTLINED_FUNCTION_10_29();
    OUTLINED_FUNCTION_13_24("Fatal error", v69, v70, v71, v72, "SiriPlaybackControlIntents/ControlsDialogParameters.swift", v73, v74, v75, v76);
    __break(1u);
  }

  else
  {
LABEL_54:
    sub_268AACBE0();
    sub_268AE46CC();
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_23();
  }
}

void sub_268AE6378()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_19_19();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_42();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_31();
  v8 = sub_2688EFD0C();
  if (!v8)
  {
    if (qword_2802A4F30 != -1)
    {
      v8 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_2_37(v8, qword_2802CDA10);
    v12 = OUTLINED_FUNCTION_82_5();
    v13(v12);
    v14 = sub_268B37A34();
    v15 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v15))
    {
      v16 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v16);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_6();
    }

    v22 = OUTLINED_FUNCTION_74_7();
    goto LABEL_18;
  }

  v9 = v3 & 1;
  OUTLINED_FUNCTION_103_4();
  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_259_0();
  }

  else
  {
    v10 = *(v3 + 32);
  }

  v11 = OUTLINED_FUNCTION_98_4(v10);
  if (v11 != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      v11 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_2_37(v11, qword_2802CDA10);
    v24 = OUTLINED_FUNCTION_290();
    v25(v24);

    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v27))
    {
      v28 = OUTLINED_FUNCTION_172_0();
      v29 = OUTLINED_FUNCTION_96_6(v28, 3.852e-34);
      OUTLINED_FUNCTION_95_6(v29);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v22 = OUTLINED_FUNCTION_75_6();
LABEL_18:
    v23(v22, v4);
LABEL_42:
    OUTLINED_FUNCTION_23();
    return;
  }

  if ([v76 routeId])
  {
    sub_268B37BF4();
    OUTLINED_FUNCTION_97_5();
  }

  else
  {
    OUTLINED_FUNCTION_73_7();
  }

  sub_268B37724();
  v36 = v35;
  if (v2)
  {
    OUTLINED_FUNCTION_72_5();
    v37 = v37 && v2 == v36;
    if (v37)
    {

LABEL_34:
      if (qword_2802A4F30 != -1)
      {
        v38 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_2_37(v38, qword_2802CDA10);
      v45 = OUTLINED_FUNCTION_88_6();
      v46(v45);
      v47 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_77_7(v49);
        OUTLINED_FUNCTION_34_13(&dword_2688BB000, v50, v51, "Everywhere: Smart pause of all devices or groups");
        OUTLINED_FUNCTION_55_10();
      }

      v52 = OUTLINED_FUNCTION_30_17();
      v53(v52);
      v54 = OUTLINED_FUNCTION_3_45();
      v1(v54);
      OUTLINED_FUNCTION_7_25();
      if (!v37)
      {
        OUTLINED_FUNCTION_79_5(v55, v56);
      }

      v57 = OUTLINED_FUNCTION_26_18();
      v58(v57);
LABEL_41:

      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35_14();
    OUTLINED_FUNCTION_108_4();

    if (v9)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v39 = [v76 context];
  if (!v39)
  {
    goto LABEL_54;
  }

  v40 = v39;
  v41 = [v39 proximity];

  OUTLINED_FUNCTION_92_7();
  if (!v42)
  {
    v0[91] = 1;
    v43 = OUTLINED_FUNCTION_3_45();
    v1(v43);
    OUTLINED_FUNCTION_26_14();
    if (v37)
    {
      v44 = OUTLINED_FUNCTION_26_18();
      (v40)(v44);
    }

    else
    {
      v59 = OUTLINED_FUNCTION_107_4();
      if (!v60)
      {
        v59 = sub_268988568(v76);
      }

      OUTLINED_FUNCTION_60_6(v59, v60);
      v61 = OUTLINED_FUNCTION_18_20();
      (v40)(v61);
    }

    v62 = OUTLINED_FUNCTION_3_45();
    v1(v62);
    OUTLINED_FUNCTION_26_14();
    if (v37)
    {
      v63 = OUTLINED_FUNCTION_26_18();
      (v40)(v63);
    }

    else
    {
      v64 = [v76 numberOfAffectedRooms];
      v65 = 1;
      if (v64)
      {
        OUTLINED_FUNCTION_40_13(1);

        OUTLINED_FUNCTION_90_7();
      }

      v68 = OUTLINED_FUNCTION_11_33(v65);
      (v40)(v68);
    }

    goto LABEL_41;
  }

  if (v41 == 1)
  {

    OUTLINED_FUNCTION_84_6();
    goto LABEL_42;
  }

  if (v41)
  {
    OUTLINED_FUNCTION_10_29();
    OUTLINED_FUNCTION_13_24("Fatal error", v69, v70, v71, v72, "SiriPlaybackControlIntents/ControlsDialogParameters.swift", v73, v74, v75, v76);
    __break(1u);
  }

  else
  {
LABEL_54:
    sub_268AACBE0();
    sub_268AE46CC();
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_23();
  }
}

id sub_268AE686C()
{
  if (qword_2802A4EF0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9D0;
  qword_2802CDB58 = qword_2802CD9D0;

  return v1;
}

void sub_268AE68D0()
{
  OUTLINED_FUNCTION_26();
  v145 = v0;
  v138 = v2;
  v139 = v1;
  v136 = v4;
  v137 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_20_0();
  v142 = (v8 - v9);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_78();
  v131 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_20_0();
  v133 = v13 - v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  v141 = &v124 - v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  v125 = &v124 - v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_78();
  v130 = v20;
  OUTLINED_FUNCTION_9();
  v134 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v143 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_0();
  v140 = v23 - v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_78();
  v129 = v26;
  OUTLINED_FUNCTION_9();
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v127 = v28;
  v128 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v126 = v30 - v29;
  OUTLINED_FUNCTION_9();
  v31 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_20_0();
  v37 = (v35 - v36);
  MEMORY[0x28223BE20](v38);
  v132 = &v124 - v39;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v41 = __swift_project_value_buffer(v31, qword_2802CDA10);
  v135 = *(v33 + 16);
  v135(v0, v41, v31);
  v42 = sub_268B37A34();
  LOBYTE(v43) = sub_268B37ED4();
  v44 = os_log_type_enabled(v42, v43);
  v144 = v6;
  if (v44)
  {
    v45 = OUTLINED_FUNCTION_14();
    *v45 = 0;
    _os_log_impl(&dword_2688BB000, v42, v43, "SkipContentHandleIntentStrategy.makeIntentHandledResponse()", v45, 2u);
    v6 = v144;
    OUTLINED_FUNCTION_12();
  }

  v46 = *(v33 + 8);
  v46(v0, v31);
  v47 = sub_268B18100(v6);
  if (!v47)
  {
    goto LABEL_16;
  }

  v43 = v47;
  if (!sub_2688EFD0C())
  {

LABEL_16:
    v71 = OUTLINED_FUNCTION_112_3();
    v72(v71);
    v73 = sub_268B37A34();
    v74 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v74))
    {
      v75 = OUTLINED_FUNCTION_14();
      *v75 = 0;
      _os_log_impl(&dword_2688BB000, v73, v43, "No device found in intent", v75, 2u);
      OUTLINED_FUNCTION_12();
    }

    v46(v37, v31);
    v76 = sub_268B36E84();
    v77 = v145;
    v78 = v134;
    if (!v79)
    {
      sub_268947F08();
    }

    v136 = v76;
    OUTLINED_FUNCTION_59_0(v77 + 18, v77[21]);
    (*(v143 + 104))(v140, *MEMORY[0x277D5BC00], v78);
    v80 = sub_268B350F4();
    v81 = v141;
    __swift_storeEnumTagSinglePayload(v141, 1, 1, v80);
    v82 = *MEMORY[0x277D5B908];
    v83 = sub_268B34B94();
    OUTLINED_FUNCTION_4();
    v85 = v142;
    (*(v84 + 104))(v142, v82, v83);
    __swift_storeEnumTagSinglePayload(v85, 0, 1, v83);
    v86 = v81;
    v87 = v133;
    sub_2688F1FA4(v86, v133, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v87, 1, v80) == 1)
    {
      sub_2688C058C(v87, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v80 - 8) + 8))(v87, v80);
    }

    v88 = v140;
    v89 = v142;
    sub_2688E36A0();

    sub_2688C058C(v89, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v141, &unk_2802A57B0, &unk_268B3CE00);
    (*(v143 + 8))(v88, v78);
    OUTLINED_FUNCTION_59_0(v77 + 18, v77[21]);
    sub_2688C2ECC();
    v90 = OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_56_9(v90, v91);

    v92 = OUTLINED_FUNCTION_26_1();
    v94 = OUTLINED_FUNCTION_66_8(v92, v93);
    v95(v94);
    goto LABEL_24;
  }

  v142 = v46;
  v149 = 0;
  v48 = v145;
  v49 = sub_268AAC34C(v145 + 2, v43, &v149);
  v50 = *__swift_project_boxed_opaque_existential_1(v48 + 8, v48[11]);
  v124 = v33 + 8;
  if (v50 && (OUTLINED_FUNCTION_115_2(), v51 = sub_268B37BC4(), v52 = [v50 BOOLForKey_], v51, (v52 & 1) != 0))
  {
    v53 = 1;
  }

  else
  {
    v53 = v149;
  }

  LODWORD(v141) = v53;
  v54 = v132;
  sub_268B36754();
  v55 = sub_268B36734();
  if (!v55)
  {
    v55 = sub_268B36744();
  }

  v56 = v55;
  v140 = v43;
  v57 = OUTLINED_FUNCTION_112_3();
  v58(v57);

  v59 = v54;
  v60 = sub_268B37A34();
  v61 = sub_268B37ED4();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_172_0();
    v135 = OUTLINED_FUNCTION_173_0();
    v150[0] = v135;
    *v62 = 136315138;
    sub_268B36714();
    v63 = v49;
    v64 = v126;
    sub_268B36B14();

    v65 = sub_268B36784();
    v67 = v66;
    v68 = v64;
    v49 = v63;
    (*(v127 + 8))(v68, v128);
    v69 = sub_26892CDB8(v65, v67, v150);
    v6 = v144;

    *(v62 + 4) = v69;
    _os_log_impl(&dword_2688BB000, v60, v61, "SkipContentHandleIntentStrategy.makeIntentHandledResponse cached responseMode = %s", v62, 0xCu);
    OUTLINED_FUNCTION_25_19();
    OUTLINED_FUNCTION_55_10();

    v70 = v132;
  }

  else
  {

    v70 = v59;
  }

  v142(v70, v31);
  v96 = v145;
  v97 = swift_allocObject();
  *(v97 + 16) = v56;
  *(v97 + 24) = v96;
  v98 = v136;
  *(v97 + 32) = v137;
  *(v97 + 40) = v141;
  *(v97 + 48) = v6;
  *(v97 + 56) = v98;
  v99 = v139;
  *(v97 + 64) = v49;
  *(v97 + 72) = v99;
  *(v97 + 80) = v138;
  v144 = v56;

  v100 = v6;
  v98;

  v101 = [v100 direction];
  if (v101 == 2)
  {
    OUTLINED_FUNCTION_43_11();
    sub_2688C058C(v147, &qword_2802A5C88, qword_268B418C0);
    OUTLINED_FUNCTION_68_8();
    OUTLINED_FUNCTION_120_2();

    OUTLINED_FUNCTION_118_2();
    v103 = OUTLINED_FUNCTION_42_12();
    sub_268ABA2DC(v103);

    memcpy(v148, v146, 0x5CuLL);
    sub_268AC2EC4(v148);
    goto LABEL_25;
  }

  if (v101 == 1)
  {
    OUTLINED_FUNCTION_43_11();
    sub_2688C058C(v147, &qword_2802A5C88, qword_268B418C0);
    OUTLINED_FUNCTION_68_8();
    OUTLINED_FUNCTION_120_2();

    OUTLINED_FUNCTION_118_2();
    v102 = OUTLINED_FUNCTION_42_12();
    sub_268AB9844(v102);

    memcpy(v148, v146, 0x5CuLL);
    sub_268AC2E94(v148);
    goto LABEL_25;
  }

  v104 = sub_268B36E84();
  if (!v105)
  {
    sub_268947F08();
  }

  v142 = v104;
  v106 = v134;
  OUTLINED_FUNCTION_59_0(v145 + 18, v145[21]);
  (*(v143 + 104))(v129, *MEMORY[0x277D5BC00], v106);
  v107 = sub_268B350F4();
  v108 = v130;
  __swift_storeEnumTagSinglePayload(v130, 1, 1, v107);
  v109 = *MEMORY[0x277D5B908];
  v110 = sub_268B34B94();
  OUTLINED_FUNCTION_4();
  v112 = v131;
  (*(v111 + 104))(v131, v109, v110);
  __swift_storeEnumTagSinglePayload(v112, 0, 1, v110);
  v113 = v125;
  sub_2688F1FA4(v108, v125, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v113, 1, v107) == 1)
  {
    sub_2688C058C(v113, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    v114 = OUTLINED_FUNCTION_70_1();
    v115(v114);
  }

  v116 = v129;
  v117 = v131;
  sub_2688E36A0();

  sub_2688C058C(v117, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v130, &unk_2802A57B0, &unk_268B3CE00);
  (*(v143 + 8))(v116, v134);
  OUTLINED_FUNCTION_59_0(v145 + 18, v145[21]);
  sub_2688C2ECC();
  v118 = OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_56_9(v118, v119);

  v120 = OUTLINED_FUNCTION_26_1();
  v122 = OUTLINED_FUNCTION_66_8(v120, v121);
  v123(v122);

LABEL_24:
  sub_2688C058C(v150, &unk_2802A57C0, &qword_268B3BE00);
LABEL_25:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AE7680(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v59 = a8;
  v49 = a7;
  v52 = a6;
  v60 = a5;
  HIDWORD(v48) = a4;
  v57 = a3;
  v58 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v50 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v48 - v16;
  v56 = sub_268B34E24();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v24);
  v26 = (&v48 - v25);
  sub_2688F1FA4(a1, &v48 - v25, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    sub_268B36E84();
    if (!v28)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v35 = a2;
    v36 = __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    (*(v54 + 104))(v53, *MEMORY[0x277D5BC00], v56);
    v37 = sub_268B350F4();
    v38 = v55;
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v37);
    v39 = sub_268B34B94();
    v40 = v51;
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v39);
    v41 = *v36;
    v42 = v38;
    v43 = v50;
    sub_2688F1FA4(v42, v50, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v43, 1, v37) == 1)
    {
      sub_2688C058C(v43, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      v52 = v41;
      sub_268B350B4();
      (*(*(v37 - 8) + 8))(v43, v37);
    }

    v44 = v53;
    sub_2688E36A0();

    sub_2688C058C(v40, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v55, &unk_2802A57B0, &unk_268B3CE00);
    (*(v54 + 8))(v44, v56);
    __swift_project_boxed_opaque_existential_1(v35 + 18, v35[21]);
    v45 = v27;
    sub_26894B450();

    v61[0] = v27;
    v62 = 1;
    v46 = v27;
    v59(v61);

    return sub_2688C058C(v61, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v29 = v52;
    sub_2689186C8(v26, v23);
    __swift_project_boxed_opaque_existential_1(a2 + 23, a2[26]);
    v30 = sub_268B36FA4();
    sub_2688F1FA4(v23, v21, &unk_2802A56E0, &unk_268B3CDF0);
    v32 = *&v21[*(v18 + 48)];
    if (v30)
    {
      sub_268AE7D14(v57, BYTE4(v48) & 1, v60, v31, v49, v21, v32, v59, v58, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
    }

    else
    {
      sub_268AE8924(v57, BYTE4(v48) & 1, v60, v29, v49, v21, v32, v59, v58, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
    }

    sub_2688C058C(v23, &unk_2802A56E0, &unk_268B3CDF0);
    v33 = sub_268B350F4();
    return (*(*(v33 - 8) + 8))(v21, v33);
  }
}

void sub_268AE7D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v96 = v21;
  v97 = v23;
  v92 = v25;
  v93 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v94 = v32;
  sub_268B35044();
  OUTLINED_FUNCTION_1();
  v98 = v34;
  v99 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  v95 = v36 - v35;
  OUTLINED_FUNCTION_9();
  v37 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  v43 = v42 - v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1();
  *&v89 = v45;
  v47 = *(v46 + 64);
  v49 = MEMORY[0x28223BE20](v48);
  *(&v89 + 1) = &v82 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_78();
  v100 = v50;
  MEMORY[0x28223BE20](v51);
  v52 = OUTLINED_FUNCTION_117_1();
  v90 = *(v52 - 8);
  v91 = v52;
  (*(v90 + 16))(v22, v29);
  v53 = v22;
  *(v22 + *(v44 + 48)) = v27;
  v54 = qword_2802A4F30;
  v55 = v27;
  if (v54 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v37, qword_2802CDA10);
  OUTLINED_FUNCTION_36_14();
  v56(v43);
  v57 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_149_0();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = OUTLINED_FUNCTION_14();
    *v59 = 0;
    _os_log_impl(&dword_2688BB000, v57, v27, "SkipContentHandleIntentStrategy.intentHandledResponse...", v59, 2u);
    OUTLINED_FUNCTION_12();
  }

  v88 = a21;

  (*(v39 + 8))(v43, v37);
  v60 = v96;
  sub_26890C900(v96 + 264, v101);
  v84 = v103;
  v85 = v102;
  v87 = __swift_project_boxed_opaque_existential_1(v101, v102);
  v61 = v100;
  sub_2688F1FA4(v53, v100, &unk_2802A56E0, &unk_268B3CDF0);
  v86 = *(v61 + *(v44 + 48));
  if (sub_268B18100(v31))
  {
    sub_268921344();
    v63 = v62;

    if (v63[2])
    {
      v64 = v63[4];
      v65 = v63[5];
    }

    else
    {
      v64 = 0;
      v65 = 0xE000000000000000;
    }

    v82 = v64;
    v83 = v65;
  }

  else
  {
    v82 = 0;
    v83 = 0xE000000000000000;
  }

  v66 = v95;
  sub_268A82B50(v31, v95);
  v67 = sub_2689F0948();
  v68 = v53;
  v69 = v53;
  v70 = *(&v89 + 1);
  sub_2688F1FA4(v69, *(&v89 + 1), &unk_2802A56E0, &unk_268B3CDF0);
  v71 = (*(v89 + 80) + 40) & ~*(v89 + 80);
  v72 = (v47 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v73[2] = v31;
  v73[3] = v60;
  v73[4] = v93;
  sub_2689186C8(v70, v73 + v71);
  v74 = (v73 + v72);
  v75 = v88;
  *v74 = v92;
  v74[1] = v75;
  v76 = v31;

  LOBYTE(v80) = v67 & 1;
  v77 = v60 + 104;
  v78 = v100;
  v79 = v86;
  sub_268A83648(v100, v86, v82, v83, v94 & 1, v97, v66, v77, v80, sub_268AEDAEC, v73, v85, v84, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);

  (*(v98 + 8))(v66, v99);
  sub_2688C058C(v68, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v90 + 8))(v78, v91);
  __swift_destroy_boxed_opaque_existential_0Tm(v101);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AE8264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
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
    _os_log_impl(&dword_2688BB000, v27, v28, "SkipContentHandleIntentStrategy.intentHandledResponse output has been created.", v29, 2u);
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
  sub_2688E36A0();

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
    _os_log_impl(&dword_2688BB000, v42, v43, "SkipContentHandleIntentStrategy.intentHandledResponse returning output", v44, 2u);
    MEMORY[0x26D6266E0](v44, -1, -1);
  }

  v48(v41, v20);
  return v56(v54);
}

uint64_t sub_268AE8D54(void *a1, int a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v79 = a8;
  v80 = a7;
  v83 = a6;
  v78 = a5;
  v85 = a3;
  LODWORD(v76) = a2;
  v81 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v11 - 8);
  v74 = &v68 - v12;
  v75 = sub_268B35044();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v77 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v69 = &v68 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v68 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v70 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v71 = &v68 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v68 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v68 - v32;
  v34 = sub_268B34E24();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v68 - v39;
  v84 = a4;
  v82 = v35;
  if (v76)
  {
    v76 = v34;
    v41 = v83;
    sub_268B36E84();
    if (!v42)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v57 = v82;
    v58 = v70;
    __swift_project_boxed_opaque_existential_1(v84 + 18, v84[21]);
    (*(v57 + 104))(v38, *MEMORY[0x277D5BC00], v76);
    sub_2688F1FA4(v41, v21, &unk_2802A56E0, &unk_268B3CDF0);

    v59 = sub_268B350F4();
    v60 = *(v59 - 8);
    v61 = v71;
    (*(v60 + 32))(v71, v21, v59);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v59);
    v62 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v77, 1, 1, v62);
    sub_2688F1FA4(v61, v58, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v58, 1, v59) == 1)
    {
      sub_2688C058C(v58, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v60 + 8))(v58, v59);
    }

    v63 = v77;
    sub_2688E36A0();

    sub_2688C058C(v63, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v61, &unk_2802A57B0, &unk_268B3CE00);
    (*(v82 + 8))(v38, v76);
    __swift_project_boxed_opaque_existential_1(v84 + 18, v84[21]);
    sub_2688C2ECC();
    v64 = swift_allocError();
    *v65 = 121;
    sub_26894B450();

    v88[0] = v81;
    v91 = 1;
    v66 = v81;
  }

  else
  {
    v77 = a9;
    sub_268947F08();
    v71 = v43;
    v76 = v44;
    __swift_project_boxed_opaque_existential_1(a4 + 18, a4[21]);
    (*(v35 + 104))(v40, *MEMORY[0x277D5BC10], v34);
    sub_2688F1FA4(v83, v23, &unk_2802A56E0, &unk_268B3CDF0);

    v45 = sub_268B350F4();
    v46 = *(v45 - 8);
    (*(v46 + 32))(v33, v23, v45);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v45);
    v47 = sub_268B34B94();
    v48 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v47);
    sub_2688F1FA4(v33, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v45) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v46 + 8))(v31, v45);
    }

    v49 = v85;
    sub_2688E36A0();

    sub_2688C058C(v48, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v33, &unk_2802A57B0, &unk_268B3CE00);
    (*(v82 + 8))(v40, v34);
    v50 = v84;
    __swift_project_boxed_opaque_existential_1(v84 + 18, v84[21]);
    sub_26894B450();
    __swift_project_boxed_opaque_existential_1(v50 + 18, v50[21]);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v88[0] = v81;

    sub_268948494(v88);
    sub_2688C058C(v88, &byte_2802A6450, &byte_268B3BE10);
    v51 = v72;
    sub_268A82B50(v49, v72);
    v89 = sub_268B354F4();
    v90 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v88);
    v52 = 0;
    if (sub_2689F0948())
    {
      v52 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v53 = sub_268B38064();
      [v52 setMinimumAutoDismissalTimeInMs_];

      [v52 setPremptivelyResumeMedia_];
    }

    __swift_project_boxed_opaque_existential_1(v50 + 2, v50[5]);
    sub_268B34CA4();
    v54 = v73;
    v55 = v74;
    v56 = v75;
    (*(v73 + 16))(v74, v51, v75);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v56);
    v87 = 0;
    memset(v86, 0, sizeof(v86));
    sub_268B34EF4();

    sub_2688C058C(v86, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v55, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v54 + 8))(v51, v56);
    v91 = 0;
  }

  v80(v88);
  return sub_2688C058C(v88, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_268AE98EC()
{
  OUTLINED_FUNCTION_26();
  v85 = v1;
  v86 = v0;
  v87 = v2;
  v88 = v3;
  v83 = v4;
  v6 = v5;
  v81 = sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v80 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v79 = v10 - v9;
  OUTLINED_FUNCTION_9();
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_0();
  v89 = v15 - v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v18 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v19 = *(v13 + 16);
  v19(v0, v18, v11);
  v20 = sub_268B37A34();
  v21 = sub_268B37ED4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v22);
    _os_log_impl(&dword_2688BB000, v20, v21, "SkipContentHandleIntentStrategy.makeFailureHandlingIntentResponse()", v6, 2u);
    OUTLINED_FUNCTION_12();
  }

  v23 = *(v13 + 8);
  v23(v0, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v25 = OBJC_IVAR___SkipContentIntentResponse_code;
  swift_beginAccess();
  v82 = v25;
  v90 = *&v6[v25];
  sub_268B38404();
  v84 = v6;
  v26 = sub_268B36E94();
  v28 = v27;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v26;
  *(inited + 56) = v28;
  sub_268B37B84();
  sub_268B36754();
  v29 = sub_268B36734();
  if (!v29)
  {
    v29 = sub_268B36744();
  }

  v30 = v29;
  v19(v89, v18, v11);

  v31 = sub_268B37A34();
  v32 = sub_268B37ED4();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_172_0();
    v34 = v30;
    v35 = OUTLINED_FUNCTION_173_0();
    v90 = v35;
    *v33 = 136315138;
    sub_268B36714();
    v78 = v23;
    v23 = v79;
    sub_268B36B14();

    v36 = sub_268B36784();
    v38 = v37;
    (*(v80 + 8))(v79, v81);
    v39 = sub_26892CDB8(v36, v38, &v90);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_2688BB000, v31, v32, "SkipContentHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    v30 = v34;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_20_2();

    v78(v89, v11);
  }

  else
  {

    v23(v89, v11);
  }

  OUTLINED_FUNCTION_17_12();
  v40 = swift_allocObject();
  v40[2] = v30;
  v40[3] = v83;
  v40[4] = v88;
  v40[5] = v84;
  v40[6] = v85;
  v40[7] = v86;
  v40[8] = v87;
  v41 = *&v84[v82];
  if ((v41 - 102) < 2)
  {
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v42 = v84;
    v43 = v85;
    swift_retain_n();
    v44 = v42;
    v45 = v43;
    v46 = v44;
    v47 = v45;
    v48 = v46;
    v49 = v47;
    OUTLINED_FUNCTION_44_10();
    sub_268AEAAAC(v50, v51, v52, v53, v54, v55, v56, v57, v78, v79);
  }

  else
  {
    if (v41 != 101 && v41 != 100)
    {
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v62 = v84;
      v63 = v85;
      swift_retain_n();
      v64 = v62;
      v65 = v63;
      v66 = v64;
      v67 = v65;
      v68 = v66;
      v69 = v67;
      OUTLINED_FUNCTION_44_10();
      sub_268AEB1B4(v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);

      goto LABEL_17;
    }

    v58 = swift_allocObject();
    OUTLINED_FUNCTION_93_8(v58);
    OUTLINED_FUNCTION_24_9();
    v59 = swift_allocObject();
    OUTLINED_FUNCTION_37_17(v59);

    v60 = v85;
    v61 = v23;

    sub_268B36DE4();
  }

LABEL_17:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AEA108(uint64_t a1, void (*a2)(void *), uint64_t a3, char *a4, char *a5, void *a6, uint64_t a7)
{
  v72 = a3;
  v60 = a7;
  v61 = a6;
  v63 = a5;
  v64 = a4;
  v71 = a2;
  v65 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v9 - 8);
  v58 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v57 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = &v57 - v14;
  v70 = sub_268B34E24();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_268B37A54();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v23 = MEMORY[0x28223BE20](v67);
  v59 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v57 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v57 - v28;
  sub_2688F1FA4(v65, v22, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v22, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v16, qword_2802CDA10);
    (*(v17 + 16))(v19, v30, v16);
    v31 = sub_268B37A34();
    v32 = sub_268B37EE4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "SkipContentHandleIntentStrategy.makeFailureHandlingIntentResponse Unable to generate failure dialog", v33, 2u);
      MEMORY[0x26D6266E0](v33, -1, -1);
    }

    (*(v17 + 8))(v19, v16);
    sub_2688C2ECC();
    v34 = swift_allocError();
    *v35 = -77;
    v73[0] = v34;
    v74 = 1;
    v71(v73);
    return sub_2688C058C(v73, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v22, v29);
    sub_268B36E84();
    if (!v37)
    {
      v38 = OBJC_IVAR___SkipContentIntentResponse_code;
      v39 = v64;
      swift_beginAccess();
      v75 = *(v39 + v38);
      sub_268B38404();
      sub_268947F08();
    }

    v40 = v61;
    v41 = v57;
    __swift_project_boxed_opaque_existential_1(v61 + 18, v61[21]);
    (*(v68 + 104))(v66, *MEMORY[0x277D5BC00], v70);
    v64 = v29;
    sub_2688F1FA4(v29, v27, &unk_2802A56E0, &unk_268B3CDF0);

    v42 = sub_268B350F4();
    v65 = *(v42 - 8);
    v43 = v69;
    (*(v65 + 32))(v69, v27, v42);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v42);
    v44 = sub_268B34B94();
    v45 = v58;
    __swift_storeEnumTagSinglePayload(v58, 1, 1, v44);
    sub_2688F1FA4(v43, v41, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
    {
      sub_2688C058C(v41, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v65 + 8))(v41, v42);
    }

    v46 = v66;
    v47 = v63;
    sub_2688E36A0();

    sub_2688C058C(v45, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v69, &unk_2802A57B0, &unk_268B3CE00);
    (*(v68 + 8))(v46, v70);
    __swift_project_boxed_opaque_existential_1(v40 + 18, v40[21]);
    sub_2688C2ECC();
    v48 = swift_allocError();
    *v49 = 123;
    sub_26894B450();

    v50 = v40[36];
    v51 = v40[37];
    __swift_project_boxed_opaque_existential_1(v40 + 33, v50);
    v52 = v64;
    v53 = v59;
    sub_2688F1FA4(v64, v59, &unk_2802A56E0, &unk_268B3CDF0);
    v54 = *(v53 + *(v67 + 48));
    v55 = v62;
    sub_268A82B50(v47, v62);
    v56 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v56);
    (*(v51 + 40))(v53, v54, v55, v71, v72, v50, v51);

    sub_2688C058C(v55, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v52, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v65 + 8))(v53, v42);
  }
}

uint64_t sub_268AEA9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;

  return a8(a1, a2, a5, a6, a7);
}

uint64_t sub_268AEAAAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v50[1] = a3;
  v50[2] = a2;
  v55 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v51);
  v53 = (v50 - v15);
  v16 = sub_268B37A54();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v56 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v50 - v20;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v52 = a5;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a8;
  v22[7] = a9;
  v54 = v22;
  v22[8] = a10;
  v23 = qword_2802A4F30;
  v59 = a4;

  v62 = a6;

  v58 = a7;
  v57 = a8;
  v61 = a9;

  v60 = a10;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v25 = *(v17 + 16);
  v25(v21, v24, v16);
  v26 = sub_268B37A34();
  v27 = sub_268B37ED4();
  v28 = v17;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "SkipContentHandleIntentStrategy.callIntentHandledFailedUnsupportedCommand()", v29, 2u);
    MEMORY[0x26D6266E0](v29, -1, -1);
  }

  v30 = *(v28 + 8);
  v30(v21, v16);
  v31 = v55;
  sub_268AEB8BC(v55, &v63);
  if (v65 == 2)
  {
    v25(v56, v24, v16);
    v32 = sub_268B37A34();
    v33 = sub_268B37EE4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2688BB000, v32, v33, "Could not create skip error params", v34, 2u);
      MEMORY[0x26D6266E0](v34, -1, -1);
    }

    v30(v56, v16);
    sub_2688C2ECC();
    v35 = swift_allocError();
    *v36 = 124;
    v37 = v53;
    *v53 = v35;
    swift_storeEnumTagMultiPayload();
    v38 = sub_268B36754();
    MEMORY[0x28223BE20](v38);
    v39 = v52;
    v50[-8] = v37;
    v50[-7] = v39;
    v40 = v58;
    v50[-6] = v62;
    v50[-5] = v40;
    v41 = v57;
    v42 = v61;
    v50[-4] = v57;
    v50[-3] = v42;
    v50[-2] = v60;
    goto LABEL_14;
  }

  v68[2] = v63;
  v69 = v64;
  v70 = v65;
  v71 = v66;
  v72 = v67;
  *v73 = v68[0];
  *&v73[13] = *(v68 + 13);
  v43 = [v31 direction];
  if (v43 == 1)
  {
    sub_268AC6488();
    sub_2688C058C(&v63, &qword_2802A70C8, qword_268B43DE0);
    v40 = v58;
    v41 = v57;
  }

  else
  {
    v40 = v58;
    v41 = v57;
    if (v43 != 2)
    {
      sub_2688C058C(&v63, &qword_2802A70C8, qword_268B43DE0);
      sub_2688C2ECC();
      v44 = swift_allocError();
      *v45 = 125;
      v37 = v53;
      *v53 = v44;
      swift_storeEnumTagMultiPayload();
      v46 = sub_268B36754();
      MEMORY[0x28223BE20](v46);
      v47 = v52;
      v50[-8] = v37;
      v50[-7] = v47;
      v50[-6] = v62;
      v50[-5] = v40;
      v48 = v61;
      v50[-4] = v41;
      v50[-3] = v48;
      v50[-2] = v60;
LABEL_14:
      sub_268B366F4();
      sub_2688C058C(v37, &qword_2802A6300, &unk_268B3BD80);
      goto LABEL_15;
    }

    sub_268AC64DC();
    sub_2688C058C(&v63, &qword_2802A70C8, qword_268B43DE0);
  }

LABEL_15:
}

uint64_t sub_268AEB1B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v50[1] = a3;
  v50[2] = a2;
  v55 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v51);
  v53 = (v50 - v15);
  v16 = sub_268B37A54();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v56 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v50 - v20;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v52 = a5;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a8;
  v22[7] = a9;
  v54 = v22;
  v22[8] = a10;
  v23 = qword_2802A4F30;
  v59 = a4;

  v62 = a6;

  v58 = a7;
  v57 = a8;
  v61 = a9;

  v60 = a10;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v25 = *(v17 + 16);
  v25(v21, v24, v16);
  v26 = sub_268B37A34();
  v27 = sub_268B37ED4();
  v28 = v17;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "SkipContentHandleIntentStrategy.callGenericIntentHandledFailed()", v29, 2u);
    MEMORY[0x26D6266E0](v29, -1, -1);
  }

  v30 = *(v28 + 8);
  v30(v21, v16);
  v31 = v55;
  sub_268AEB8BC(v55, &v63);
  if (v65 == 2)
  {
    v25(v56, v24, v16);
    v32 = sub_268B37A34();
    v33 = sub_268B37EE4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2688BB000, v32, v33, "Could not create skip error params", v34, 2u);
      MEMORY[0x26D6266E0](v34, -1, -1);
    }

    v30(v56, v16);
    sub_2688C2ECC();
    v35 = swift_allocError();
    *v36 = 126;
    v37 = v53;
    *v53 = v35;
    swift_storeEnumTagMultiPayload();
    v38 = sub_268B36754();
    MEMORY[0x28223BE20](v38);
    v39 = v52;
    v50[-8] = v37;
    v50[-7] = v39;
    v40 = v58;
    v50[-6] = v62;
    v50[-5] = v40;
    v41 = v57;
    v42 = v61;
    v50[-4] = v57;
    v50[-3] = v42;
    v50[-2] = v60;
    goto LABEL_14;
  }

  v68[2] = v63;
  v69 = v64;
  v70 = v65;
  v71 = v66;
  v72 = v67;
  *v73 = v68[0];
  *&v73[13] = *(v68 + 13);
  v43 = [v31 direction];
  if (v43 == 1)
  {
    sub_268ABAEA4();
    sub_2688C058C(&v63, &qword_2802A70C8, qword_268B43DE0);
    v40 = v58;
    v41 = v57;
  }

  else
  {
    v40 = v58;
    v41 = v57;
    if (v43 != 2)
    {
      sub_2688C058C(&v63, &qword_2802A70C8, qword_268B43DE0);
      sub_2688C2ECC();
      v44 = swift_allocError();
      *v45 = 127;
      v37 = v53;
      *v53 = v44;
      swift_storeEnumTagMultiPayload();
      v46 = sub_268B36754();
      MEMORY[0x28223BE20](v46);
      v47 = v52;
      v50[-8] = v37;
      v50[-7] = v47;
      v50[-6] = v62;
      v50[-5] = v40;
      v48 = v61;
      v50[-4] = v41;
      v50[-3] = v48;
      v50[-2] = v60;
LABEL_14:
      sub_268B366F4();
      sub_2688C058C(v37, &qword_2802A6300, &unk_268B3BD80);
      goto LABEL_15;
    }

    sub_268ABB0EC();
    sub_2688C058C(&v63, &qword_2802A70C8, qword_268B43DE0);
  }

LABEL_15:
}

void *sub_268AEB8BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  LOWORD(__src[0]) = 0;
  BYTE2(__src[0]) = 0;
  __src[1] = 0;
  __src[2] = 0;
  __src[3] = 1;
  memset(&__src[4], 0, 61);
  if (sub_268B18100(a1))
  {
    if (sub_2688EFD0C())
    {
      memcpy(__dst, &__src[1], 0x51uLL);
      sub_2688C058C(__dst, &qword_2802A5C88, qword_268B418C0);
      LODWORD(__src[1]) = 0;
      memset(&__src[2], 0, 72);
      LOBYTE(__src[11]) = 1;
      OUTLINED_FUNCTION_62_6();
      sub_268AE3BE8();
    }
  }

  memcpy(v5, __src, 0x5DuLL);
  memcpy(__dst, __src, 0x5DuLL);
  sub_268A13FC8(v5, v4);
  sub_2689E9FB8(__dst);
  return memcpy(a2, __src, 0x5DuLL);
}

uint64_t sub_268AEB9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AEBA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AEBAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AEBB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AEBC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268AEBCAC()
{
  if (qword_2802A50C8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDB58;

  return v1;
}

uint64_t sub_268AEBD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268AEBD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268AEBDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268AEBE18(uint64_t a1)
{
  result = sub_268AEBE40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268AEBE40()
{
  result = qword_2802A8940;
  if (!qword_2802A8940)
  {
    type metadata accessor for SkipContentHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8940);
  }

  return result;
}

void sub_268AEBE98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();
  [a3 setPlaybackRouteUniqueIdentifier_];
}

void sub_268AEBEF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();

  [a3 setViewId_];
}

void sub_268AEBF54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();
  [a3 setApplicationBundleIdentifier_];
}

uint64_t sub_268AEBFAC(void *a1)
{
  v1 = [a1 viewId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37BF4();

  return v3;
}

uint64_t sub_268AEC030()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_8Tm_1()
{

  OUTLINED_FUNCTION_24_9();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t objectdestroyTm_10()
{

  OUTLINED_FUNCTION_17_12();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268AEC1A8()
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

uint64_t sub_268AEC2E0(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_268AE8D54(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}