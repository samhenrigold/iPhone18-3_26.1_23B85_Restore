uint64_t sub_22B0C6EFC()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_22B0C72B4;
  }

  else
  {
    v2 = sub_22B0C7010;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22B0C7010()
{
  if (sub_22B0DF5E0())
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v1 = sub_22B0DF1B0();
    __swift_project_value_buffer(v1, qword_2813EBE78);
    v2 = sub_22B0DF190();
    v3 = sub_22B0DF670();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_14;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Task cancelled";
LABEL_13:
    _os_log_impl(&dword_22B074000, v2, v3, v5, v4, 2u);
    MEMORY[0x23188A520](v4, -1, -1);
LABEL_14:
    v13 = v0[26];
    v14 = v0[23];
    v15 = v0[24];

    goto LABEL_15;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v12 = sub_22B0DF1B0();
    __swift_project_value_buffer(v12, qword_2813EBE78);
    v2 = sub_22B0DF190();
    v3 = sub_22B0DF670();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_14;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Weak self is nil";
    goto LABEL_13;
  }

  v7 = Strong;
  v8 = v0[28];
  v9 = v0[26];
  v10 = (Strong + *(*Strong + 136));
  os_unfair_lock_lock(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5F20, &unk_22B0E54F0);
  sub_22B0C748C(v10 + *(v11 + 28), v9, v7);
  os_unfair_lock_unlock(v10);
  if (v8)
  {
    return;
  }

  v13 = v0[26];
  v14 = v0[23];
  v15 = v0[24];

LABEL_15:
  (*(v15 + 8))(v13, v14);

  v16 = v0[1];

  v16();
}

uint64_t sub_22B0C72B4()
{
  (*(v0[24] + 8))(v0[26], v0[23]);
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_22B0DF1B0();
  __swift_project_value_buffer(v2, qword_2813EBE78);
  v3 = v1;
  v4 = sub_22B0DF190();
  v5 = sub_22B0DF670();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B074000, v4, v5, "Task error, likely due to cancellation: %@", v8, 0xCu);
    sub_22B07D02C(v9, &qword_27D8B5660, &qword_22B0E54A0);
    MEMORY[0x23188A520](v9, -1, -1);
    MEMORY[0x23188A520](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_22B0C748C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v141 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v155 = &v127 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65C0, &unk_22B0E6018);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v144 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v140 = &v127 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v130 = &v127 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v146 = &v127 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v157 = (&v127 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v158 = (&v127 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v156 = &v127 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v163 = (&v127 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v133 = &v127 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v132 = &v127 - v29;
  MEMORY[0x28223BE20](v28);
  v142 = &v127 - v30;
  v31 = sub_22B0DF990();
  v32 = *(v31 - 1);
  v33 = MEMORY[0x28223BE20](v31);
  v128 = &v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v137 = &v127 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v159 = &v127 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v154 = &v127 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v127 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = (&v127 - v44);

  *(a1 + 16) = 0;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F10, &unk_22B0E54E0);
  v46 = *(v129 + 44);
  sub_22B07D02C(a1 + v46, &qword_27D8B65C0, &unk_22B0E6018);
  v47 = v32[7];
  v135 = a1;
  v149 = v32 + 7;
  v148 = v47;
  v47(a1 + v46, 1, 1, v31);
  sub_22B0DF9B0();
  sub_22B076354(&unk_2813E9930, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_22B0DFCB0();
  if (qword_2813E9AA0 != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v48 = sub_22B0DF1B0();
    __swift_project_value_buffer(v48, qword_2813EBE78);
    v49 = v32[2];
    v139 = v32 + 2;
    v138 = v49;
    v49(v43, v45, v31);

    v50 = sub_22B0DF190();
    v51 = sub_22B0DF670();

    v52 = os_log_type_enabled(v50, v51);
    v171 = v31;
    v147 = v45;
    v143 = a3;
    if (v52)
    {
      v45 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v168 = v162;
      *v45 = 136446210;
      LODWORD(v161) = v51;
      sub_22B076354(&unk_2813E9940, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      sub_22B0DF9D0();
      v53 = sub_22B0DFDD0();
      v54 = v53 / 3600;
      v55 = v53 % 60;
      v56 = v53 / 60 % 60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
      v57 = swift_allocObject();
      v58 = MEMORY[0x277D84A28];
      *(v57 + 16) = xmmword_22B0E2C10;
      v59 = MEMORY[0x277D84A90];
      *(v57 + 56) = v58;
      *(v57 + 64) = v59;
      *(v57 + 32) = v54;
      *(v57 + 96) = v58;
      *(v57 + 104) = v59;
      *(v57 + 72) = v56;
      *(v57 + 136) = v58;
      *(v57 + 144) = v59;
      *(v57 + 112) = v55;
      v60 = sub_22B0DF340();
      v169 = 11092;
      v170 = 0xE200000000000000;
      MEMORY[0x231889070](v60);

      v61 = v169;
      v62 = v170;
      v150 = v32[1];
      v150(v43, v171);
      v63 = sub_22B07B428(v61, v62, &v168);

      *(v45 + 4) = v63;
      _os_log_impl(&dword_22B074000, v50, v161, "Running blocks at T+%{public}s", v45, 0xCu);
      v64 = v162;
      __swift_destroy_boxed_opaque_existential_0(v162);
      MEMORY[0x23188A520](v64, -1, -1);
      MEMORY[0x23188A520](v45, -1, -1);
    }

    else
    {

      v150 = v32[1];
      v150(v43, v31);
    }

    v65 = v163;
    v66 = *(v135 + 8);
    v134 = v32;
    v131 = v66 >> 62;
    if (v66 >> 62)
    {
      v67 = sub_22B0DF830();
    }

    else
    {
      v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v142;
    v160 = v66;
    if (v67)
    {
      if (v67 < 1)
      {
        __break(1u);
        goto LABEL_73;
      }

      v68 = 0;
      v69 = v66 & 0xC000000000000001;
      v136 = *(*v143 + 104);
      v161 = (v134 + 6);
      v151 = (v134 + 4);
      v145 = v134 + 1;
      v45 = &qword_27D8B65C0;
      v153 = v67;
      v152 = (v66 & 0xC000000000000001);
      do
      {
        v162 = v68;
        if (v69)
        {
          v70 = MEMORY[0x2318895C0]();
        }

        else
        {
          v70 = *(v66 + 8 * v68 + 32);
        }

        v71 = *(*v70 + 136);
        swift_beginAccess();
        sub_22B0898A8(v70 + v71, v32, &qword_27D8B65C0, &unk_22B0E6018);
        v72 = v171;
        if ((*v161)(v32, 1, v171) == 1)
        {

          sub_22B07D02C(v32, &qword_27D8B65C0, &unk_22B0E6018);
        }

        else
        {
          v73 = v154;
          (*v151)(v154, v32, v72);
          sub_22B076354(&unk_2813E9950, MEMORY[0x277D858F8], MEMORY[0x277D85910]);
          v74 = v147;
          v75 = sub_22B0DF2E0();
          v150(v73, v72);
          if (v75)
          {
            v76 = v143;
            sub_22B0C8E5C(v70, v74, 0);
            v77 = v140;
            v138(v140, v74, v72);
            v78 = v148;
            v148(v77, 0, 1, v72);
            v79 = *(*v70 + 128);
            swift_beginAccess();
            sub_22B0CDF00(v77, v70 + v79);
            swift_endAccess();
            v78(v77, 1, 1, v72);
            swift_beginAccess();
            sub_22B0CDF00(v77, v70 + v71);
            swift_endAccess();
            v80 = sub_22B0DF5C0();
            v81 = *(v80 - 8);
            v82 = v155;
            (*(v81 + 16))(v155, v76 + v136, v80);
            (*(v81 + 56))(v82, 0, 1, v80);
            v83 = swift_allocObject();
            swift_weakInit();
            v84 = swift_allocObject();
            *(v84 + 16) = 0;
            *(v84 + 24) = 0;
            *(v84 + 32) = v70;
            *(v84 + 40) = 0;
            *(v84 + 48) = v83;
            v85 = v141;
            sub_22B0898A8(v82, v141, &qword_27D8B5C38, &qword_22B0E5480);
            v86 = (*(v81 + 48))(v85, 1, v80);
            swift_retain_n();

            if (v86 == 1)
            {
              sub_22B07D02C(v85, &qword_27D8B5C38, &qword_22B0E5480);
            }

            else
            {
              sub_22B0DF5B0();
              (*(v81 + 8))(v85, v80);
            }

            v87 = *(v84 + 16);
            swift_unknownObjectRetain();

            v32 = v142;
            if (v87)
            {
              swift_getObjectType();
              v88 = sub_22B0DF570();
              v90 = v89;
              swift_unknownObjectRelease();
            }

            else
            {

              v88 = 0;
              v90 = 0;
            }

            v66 = v160;
            v91 = swift_allocObject();
            *(v91 + 16) = &unk_22B0E6068;
            *(v91 + 24) = v84;
            if (v90 | v88)
            {
              v164 = 0;
              v165 = 0;
              v166 = v88;
              v167 = v90;
            }

            v69 = v152;
            v45 = &qword_27D8B65C0;
            swift_task_create();

            sub_22B07D02C(v155, &qword_27D8B5C38, &qword_22B0E5480);

            v67 = v153;
          }

          else
          {

            v66 = v160;
            v67 = v153;
            v69 = v152;
            v45 = &qword_27D8B65C0;
          }
        }

        v65 = v163;
        v68 = (v162 + 1);
      }

      while (v67 != (v162 + 1));
    }

    v92 = v133;
    v148(v133, 1, 1, v171);
    sub_22B0898A8(v92, v65, &qword_27D8B65C0, &unk_22B0E6018);
    if (!v131)
    {
      v93 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v31 = v157;
      v32 = v158;
      if (!v93)
      {
        break;
      }

      goto LABEL_31;
    }

    v93 = sub_22B0DF830();
    v31 = v157;
    v32 = v158;
    if (!v93)
    {
      break;
    }

LABEL_31:
    a3 = 0;
    v155 = v66 & 0xC000000000000001;
    v154 = (v66 & 0xFFFFFFFFFFFFFF8);
    v152 = (v134 + 6);
    v145 = v134 + 1;
    v43 = &qword_27D8B65C0;
    v45 = &unk_22B0E6018;
    v153 = v93;
    v151 = (v134 + 4);
    while (v155)
    {
      v98 = MEMORY[0x2318895C0](a3, v66);
      v99 = (a3 + 1);
      if (__OFADD__(a3, 1))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_37:
      v161 = a3;
      v162 = v99;
      v100 = *(*v98 + 136);
      swift_beginAccess();
      sub_22B0898A8(v98 + v100, v32, &qword_27D8B65C0, &unk_22B0E6018);
      sub_22B0898A8(v65, v31, &qword_27D8B65C0, &unk_22B0E6018);
      v101 = *v152;
      v102 = v171;
      if ((*v152)(v31, 1, v171) == 1)
      {

        sub_22B07D02C(v65, &qword_27D8B65C0, &unk_22B0E6018);
        sub_22B07D02C(v31, &qword_27D8B65C0, &unk_22B0E6018);
        v94 = v156;
        sub_22B0CE508(v32, v156, &qword_27D8B65C0, &unk_22B0E6018);
        v95 = v162;
        v66 = v160;
        v96 = v161;
      }

      else
      {
        v103 = *v151;
        (*v151)(v159, v31, v102);
        v104 = v146;
        sub_22B0898A8(v32, v146, &qword_27D8B65C0, &unk_22B0E6018);
        if (v101(v104, 1, v102) == 1)
        {
          v105 = v103;

          sub_22B07D02C(v158, &qword_27D8B65C0, &unk_22B0E6018);
          sub_22B07D02C(v163, &qword_27D8B65C0, &unk_22B0E6018);
          sub_22B07D02C(v104, &qword_27D8B65C0, &unk_22B0E6018);
          v66 = v160;
          v96 = v161;
LABEL_43:
          v94 = v156;
          v108 = v171;
          (v105)(v156, v159, v171);
          v148(v94, 0, 1, v108);
          v32 = v158;
          v95 = v162;
          v65 = v163;
          goto LABEL_33;
        }

        v106 = v137;
        v103();
        sub_22B076354(&unk_2813E9950, MEMORY[0x277D858F8], MEMORY[0x277D85910]);
        v107 = sub_22B0DF2C0();

        sub_22B07D02C(v158, &qword_27D8B65C0, &unk_22B0E6018);
        sub_22B07D02C(v163, &qword_27D8B65C0, &unk_22B0E6018);
        v105 = v103;
        v96 = v161;
        if ((v107 & 1) == 0)
        {
          v150(v106, v102);
          v66 = v160;
          goto LABEL_43;
        }

        v150(v159, v102);
        v94 = v156;
        (v105)(v156, v106, v102);
        v148(v94, 0, 1, v102);
        v32 = v158;
        v95 = v162;
        v65 = v163;
        v66 = v160;
      }

LABEL_33:
      sub_22B0CE508(v94, v65, &qword_27D8B65C0, &unk_22B0E6018);
      a3 = v96 + 1;
      v97 = v95 == v153;
      v31 = v157;
      if (v97)
      {
        goto LABEL_47;
      }
    }

    if (a3 < *(v154 + 2))
    {
      v98 = *(v66 + 8 * a3 + 32);

      v99 = (a3 + 1);
      if (__OFADD__(a3, 1))
      {
        goto LABEL_46;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
  }

LABEL_47:
  sub_22B07D02C(v133, &qword_27D8B65C0, &unk_22B0E6018);
  v109 = v132;
  sub_22B0CE508(v65, v132, &qword_27D8B65C0, &unk_22B0E6018);
  v110 = v109;
  v111 = v130;
  sub_22B0898A8(v110, v130, &qword_27D8B65C0, &unk_22B0E6018);
  v112 = v134;
  v113 = v171;
  v162 = v134[6];
  v163 = v134 + 6;
  if ((v162)(v111, 1, v171) == 1)
  {
    sub_22B07D02C(v111, &qword_27D8B65C0, &unk_22B0E6018);
    v114 = v135;
  }

  else
  {
    v115 = v128;
    (v112[4])(v128, v111, v113);
    v114 = v135;
    sub_22B0C6594(v115, v135);
    v150(v115, v113);
  }

  v116 = v147;
  v117 = *(v129 + 48);
  v43 = *(v114 + v117);
  if (v43 >> 62)
  {
    result = sub_22B0DF830();
  }

  else
  {
    result = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
LABEL_65:
    sub_22B07D02C(v132, &qword_27D8B65C0, &unk_22B0E6018);
    return (v150)(v116, v113);
  }

  v158 = v117;
  v159 = (v43 >> 62);
  v66 = *(v135 + 8);
  v160 = v43;
  if (v66 >> 62)
  {
LABEL_73:
    result = sub_22B0DF830();
    v113 = result;
    if (result)
    {
      goto LABEL_55;
    }

LABEL_74:
    if (v159)
    {
      v122 = v160;
      result = sub_22B0DF830();
      v123 = result;
      v124 = v171;
      v125 = v147;
      if (!result)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v122 = v160;
      v123 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v124 = v171;
      v125 = v147;
      if (!v123)
      {
        goto LABEL_85;
      }
    }

    if (v123 < 1)
    {
      __break(1u);
      return result;
    }

    v126 = 0;
    do
    {
      if ((v122 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2318895C0](v126, v122);
      }

      else
      {
      }

      ++v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
      sub_22B0DF580();
    }

    while (v123 != v126);

    v124 = v171;
    v125 = v147;
LABEL_85:
    sub_22B07D02C(v132, &qword_27D8B65C0, &unk_22B0E6018);
    v150(v125, v124);

    *(v158 + v135) = MEMORY[0x277D84F90];
    return result;
  }

  v113 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v113)
  {
    goto LABEL_74;
  }

LABEL_55:
  v119 = 0;
  v161 = (v66 & 0xC000000000000001);
  v116 = v66 & 0xFFFFFFFFFFFFFF8;
  v31 = &qword_27D8B65C0;
  a3 = &unk_22B0E6018;
  while (1)
  {
    if (v161)
    {
      v45 = MEMORY[0x2318895C0](v119, v66);
      v32 = (v119 + 1);
      if (__OFADD__(v119, 1))
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v119 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v45 = *(v66 + 8 * v119 + 32);

      v32 = (v119 + 1);
      if (__OFADD__(v119, 1))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    v120 = *(*v45 + 136);
    swift_beginAccess();
    v121 = v45 + v120;
    v43 = v144;
    sub_22B0898A8(v121, v144, &qword_27D8B65C0, &unk_22B0E6018);

    if ((v162)(v43, 1, v171) == 1)
    {
      break;
    }

    result = sub_22B07D02C(v43, &qword_27D8B65C0, &unk_22B0E6018);
    ++v119;
    if (v32 == v113)
    {
      goto LABEL_74;
    }
  }

  sub_22B07D02C(v132, &qword_27D8B65C0, &unk_22B0E6018);
  v150(v147, v171);
  return sub_22B07D02C(v43, &qword_27D8B65C0, &unk_22B0E6018);
}

uint64_t sub_22B0C8B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22B0898A8(a3, v25 - v10, &qword_27D8B5C38, &qword_22B0E5480);
  v12 = sub_22B0DF5C0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B07D02C(v11, &qword_27D8B5C38, &qword_22B0E5480);
  }

  else
  {
    sub_22B0DF5B0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22B0DF570();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22B0DF360() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_22B0C8E5C(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v60 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65C0, &unk_22B0E6018);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - v7;
  v9 = sub_22B0DF990();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*a1 + 128);
  swift_beginAccess();
  sub_22B0898A8(a1 + v13, v8, &qword_27D8B65C0, &unk_22B0E6018);
  v59 = (*(v10 + 48))(v8, 1, v9);
  if (v59 == 1)
  {
    sub_22B07D02C(v8, &qword_27D8B65C0, &unk_22B0E6018);
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v14 = sub_22B0DF1B0();
    __swift_project_value_buffer(v14, qword_2813EBE78);

    v15 = sub_22B0DF190();
    v16 = sub_22B0DF670();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v62 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_22B07B428(a1[2], a1[3], &v62);
      *(v17 + 12) = 1024;
      *(v17 + 14) = v60 & 1;
      _os_log_impl(&dword_22B074000, v15, v16, "Scheduled block %s, isDaily = %{BOOL}d, ran for the first time.", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x23188A520](v18, -1, -1);
      MEMORY[0x23188A520](v17, -1, -1);
    }

    v57 = 0;
    v58 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_22B076354(&unk_2813E9940, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_22B0DF9D0();
    v19 = v62;
    v20 = v63;
    v21 = v12;
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v22 = sub_22B0DF1B0();
    __swift_project_value_buffer(v22, qword_2813EBE78);

    v23 = sub_22B0DF190();
    v24 = sub_22B0DF670();

    v25 = os_log_type_enabled(v23, v24);
    v57 = v20;
    v58 = v19;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v62 = v56;
      *v26 = 136315650;
      *(v26 + 4) = sub_22B07B428(a1[2], a1[3], &v62);
      *(v26 + 12) = 1024;
      *(v26 + 14) = v60 & 1;
      *(v26 + 18) = 2080;
      v27 = sub_22B0DFDD0();
      v28 = v27 / 3600;
      v54 = v27 % 60;
      v55 = v21;
      v29 = v27 / 60 % 60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
      v30 = swift_allocObject();
      v31 = MEMORY[0x277D84A28];
      *(v30 + 16) = xmmword_22B0E2C10;
      v32 = MEMORY[0x277D84A90];
      *(v30 + 56) = v31;
      *(v30 + 64) = v32;
      *(v30 + 32) = v28;
      *(v30 + 96) = v31;
      *(v30 + 104) = v32;
      *(v30 + 72) = v29;
      *(v30 + 136) = v31;
      *(v30 + 144) = v32;
      *(v30 + 112) = v54;
      v33 = sub_22B0DF340();
      v35 = sub_22B07B428(v33, v34, &v62);

      *(v26 + 20) = v35;
      _os_log_impl(&dword_22B074000, v23, v24, "Scheduled block %s, isDaily = %{BOOL}d, ran after %s, privacy: .public) after previous run.", v26, 0x1Cu);
      v36 = v56;
      swift_arrayDestroy();
      MEMORY[0x23188A520](v36, -1, -1);
      MEMORY[0x23188A520](v26, -1, -1);

      (*(v10 + 8))(v55, v9);
    }

    else
    {

      (*(v10 + 8))(v21, v9);
    }
  }

  v37 = (v4 + *(*v4 + 112));
  v39 = *v37;
  v38 = v37[1];
  v41 = a1[4];
  v40 = a1[5];
  v42 = type metadata accessor for BlockSchedulerLogEvent();
  v43 = objc_allocWithZone(v42);
  *&v43[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventOptions] = 0;
  v62 = v39;
  v63 = v38;

  MEMORY[0x231889070](0x6C7564656863732ELL, 0xEE006E75722E7265);
  v44 = 0;
  v45 = v63;
  v46 = &v43[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventName];
  *v46 = v62;
  v46[1] = v45;
  v47 = 0x6669636570736E55;
  if (v40)
  {
    v47 = v41;
  }

  v48 = 0xEB00000000646569;
  if (v40)
  {
    v48 = v40;
  }

  v49 = &v43[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_publicBlockName];
  *v49 = v47;
  v49[1] = v48;
  v50 = v59;
  if (v59 != 1)
  {
    v44 = sub_22B0DFDD0();
  }

  v51 = &v43[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_secondsSinceLastRun];
  *v51 = v44;
  v51[8] = v50 == 1;
  v43[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_isDailyBlock] = v60 & 1;
  v61.receiver = v43;
  v61.super_class = v42;
  v52 = objc_msgSendSuper2(&v61, sel_init);
  [*(v4 + *(*v4 + 120)) submitLogEvent_];
}

uint64_t sub_22B0C9550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 48) = a4;
  *(v6 + 56) = a6;
  return MEMORY[0x2822009F8](sub_22B0C9574, 0, 0);
}

uint64_t sub_22B0C9574()
{
  v4 = (*(*(v0 + 48) + 48) + **(*(v0 + 48) + 48));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_22B0C9668;
  v2 = *(v0 + 72);

  return v4(v2);
}

uint64_t sub_22B0C9668()
{

  return MEMORY[0x2822009F8](sub_22B0C9764, 0, 0);
}

uint64_t sub_22B0C9764()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 48);
    v4 = (Strong + *(*Strong + 136));
    os_unfair_lock_lock(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5F20, &unk_22B0E54F0);
    sub_22B0C5F44((&v4->_os_unfair_lock_opaque + *(v5 + 28)), v3, v2);
    os_unfair_lock_unlock(v4);
  }

  v6 = *(v0 + 8);

  return v6();
}

id BaseMetricsManagerProvider.makeMetricsManager(coreAnalyticsEventPrefix:coreAnalyticsDelegate:coreAnalyticsFilters:counterStoragePath:dailySchedulerPreferencesKey:processLaunchEvent:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(uint64_t a1), uint64_t a7, uint64_t (**a8)(uint64_t a1), void *a9)
{
  v66 = a8;
  v63 = a3;
  v64 = a7;
  v60 = a5;
  v61 = a6;
  v11 = sub_22B0DF9B0();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B0DF5C0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v57 - v19;
  v21 = objc_allocWithZone(HMMCoreAnalyticsLogEventObserver);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6368, &qword_22B0E5E58);
  v22 = sub_22B0DF4A0();
  v63 = [v21 initWithDelegate:v63 filters:v22];

  v23 = [objc_allocWithZone(HMMLogEventDispatcher) init];
  sub_22B0DF5A0();
  v24 = v23;
  sub_22B0DF9A0();
  (*(v15 + 16))(v18, v20, v14);

  v25 = sub_22B0CCF08(v13, v18, a1, a2, v24);
  (*(v15 + 8))(v20, v14);
  v26 = v24;
  v58 = a1;
  v59 = a2;
  v27 = sub_22B0CCA5C(v25, v64, v66, a1, a2, v26);

  v66 = [objc_opt_self() sharedInstance];
  v28 = [objc_opt_self() sharedInstance];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6370, &qword_22B0E5E60);
  v29 = swift_allocObject();
  *(v29 + 88) = 0;
  *(v29 + 96) = MEMORY[0x277D84F90];
  v30 = v26;

  v64 = v27;

  v62 = v25;
  if (!v61)
  {

    type metadata accessor for EmptyCounterStorage();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    type metadata accessor for CountersManager();
    v38 = swift_allocObject();
    v39 = sub_22B0CD260(v37, v66, v28, v38, type metadata accessor for EmptyCounterStorage, &off_283EED480);
    *(v29 + 104) = 0;
    *(v29 + 112) = 0;
    v40 = v64;
    goto LABEL_8;
  }

  v31 = v61;
  type metadata accessor for PersistentFlatFileCounterStorage();
  swift_allocObject();
  v32 = v66;

  v33 = v28;
  v34 = v65;
  v35 = sub_22B0A27F4(v60, v31, v32);
  p_aBlock = v34;

  if (v34)
  {

    sub_22B07D02C(v29 + 96, &qword_27D8B6378, &qword_22B0E5E68);

    swift_deallocPartialClassInstance();
    return v29;
  }

  else
  {
    type metadata accessor for CountersManager();
    v41 = swift_allocObject();
    v42 = sub_22B0CD260(v35, v32, v33, v41, type metadata accessor for PersistentFlatFileCounterStorage, &off_283EEBAB8);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6380, &qword_22B0E5E70);
    v44 = objc_allocWithZone(v43);
    *&v44[qword_27D8B6388] = v42;
    v67.receiver = v44;
    v67.super_class = v43;
    v39 = v42;

    *(v29 + 104) = objc_msgSendSuper2(&v67, sel_init);
    if (qword_27D8B53D0 != -1)
    {
      goto LABEL_15;
    }

    while (1)
    {
      result = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:4 options:*&qword_27D8B6360];
      *(v29 + 112) = result;
      v25 = v62;
      v40 = v64;
      if (!result)
      {
        break;
      }

      v65 = p_aBlock;
      [result setDelegate_];
LABEL_8:
      v46 = v59;
      *(v29 + 16) = v58;
      *(v29 + 24) = v46;
      v47 = v66;
      *(v29 + 32) = v66;
      *(v29 + 40) = v28;
      *(v29 + 48) = v30;
      *(v29 + 56) = v30;
      *(v29 + 64) = v25;
      *(v29 + 72) = v40;
      *(v29 + 80) = v39;
      v61 = v30;

      v30 = v47;
      v48 = v28;

      v28 = v63;
      sub_22B0CAEC4(v63);
      if (!a9)
      {
        goto LABEL_12;
      }

      v66 = v48;
      v49 = a9;
      v50 = v61;
      [v61 submitLogEvent_];
      v51 = [v50 clientQueue];
      v72 = nullsub_1;
      v73 = 0;
      p_aBlock = &aBlock;
      aBlock = MEMORY[0x277D85DD0];
      v69 = 1107296256;
      v28 = &v70;
      v70 = sub_22B0CACC8;
      v71 = &block_descriptor_0;
      v52 = _Block_copy(&aBlock);

      dispatch_sync(v51, v52);

      _Block_release(v52);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        v53 = v61;
        v54 = [v61 clientQueue];
        v72 = nullsub_1;
        v73 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v69 = 1107296256;
        v70 = sub_22B0CACC8;
        v71 = &block_descriptor_3;
        v55 = _Block_copy(&aBlock);

        dispatch_sync(v54, v55);

        _Block_release(v55);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
        v48 = v65;
        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return v29;
        }

        __break(1u);
LABEL_12:

        return v29;
      }

      __break(1u);
LABEL_15:
      swift_once();
    }

    __break(1u);
  }

  return result;
}

uint64_t BaseMetricsManagerGeneric.__allocating_init(coreAnalyticsEventPrefix:coreAnalyticsObserver:counterStoragePath:dateProvider:uptimeProvider:logEventDispatcher:repeatingScheduler:dailyScheduler:processLaunchEvent:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, __int128 *a7, __int128 *a8, uint64_t a9, uint64_t a10, void *a11)
{
  v18 = swift_allocObject();
  BaseMetricsManagerGeneric.init(coreAnalyticsEventPrefix:coreAnalyticsObserver:counterStoragePath:dateProvider:uptimeProvider:logEventDispatcher:repeatingScheduler:dailyScheduler:processLaunchEvent:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return v18;
}

uint64_t BaseMetricsManagerGeneric.analyzerDataSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 96);
  v7[0] = *(*v1 + 80);
  v7[1] = v4;
  v5 = type metadata accessor for BaseAnalyzerDataSource(0, v7);
  return (*(*(v5 - 8) + 16))(a1, v1 + v3, v5);
}

id sub_22B0CA1E8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  ObjectType = swift_getObjectType();
  *&v3[qword_27D8B6388] = a1;
  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_22B0CA240(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_22B0CDB68();
}

uint64_t *BaseMetricsManagerGeneric.init(coreAnalyticsEventPrefix:coreAnalyticsObserver:counterStoragePath:dateProvider:uptimeProvider:logEventDispatcher:repeatingScheduler:dailyScheduler:processLaunchEvent:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, __int128 *p_aBlock, __int128 *a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = v11;
  v76 = a8;
  v73 = a4;
  v77 = a3;
  v74 = a2;
  v72 = a1;
  v75 = a11;
  v80 = a10;
  v81 = a9;
  v16 = *v11;
  v17 = *(*v11 + 88);
  v79 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](a1);
  v71 = &v64 - v19;
  v20 = *(v16 + 80);
  v78 = *(v20 - 8);
  MEMORY[0x28223BE20](v18);
  v70 = &v64 - v21;
  v83 = *(v22 + 96);
  *&aBlock = v20;
  *(&aBlock + 1) = v17;
  v86 = v83;
  v69 = type metadata accessor for BaseAnalyzerDataSource(0, &aBlock);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v64 - v23;
  v24 = *(v16 + 120);
  v25 = MEMORY[0x277D84F90];
  *(v12 + v24) = 0;
  v89 = v25;
  *(v12 + v24 + 8) = 0;
  v26 = v12 + v24 + 8;
  *&v82 = v20;
  *(&v82 + 1) = v17;
  *&aBlock = v20;
  *(&aBlock + 1) = v17;
  v86 = v83;
  v27 = type metadata accessor for BaseMetricsManagerGeneric.State(0, &aBlock);
  (*(*(v27 - 8) + 32))(v26, &v89, v27);
  if (!a5)
  {
    type metadata accessor for EmptyCounterStorage();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    type metadata accessor for CountersManager();
    v36 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v65 = a6;
    v38 = a6;
    swift_unknownObjectRetain();
    v73 = sub_22B0900CC(v35, v38, p_aBlock, v36, ObjectType);
    *(v12 + *(*v12 + 128)) = 0;
    *(v12 + *(*v12 + 136)) = 0;
    v39 = v80;
    v40 = v81;
    v41 = v79;
    v42 = v76;
    goto LABEL_8;
  }

  type metadata accessor for PersistentFlatFileCounterStorage();
  swift_allocObject();
  v28 = a6;
  v29 = a6;
  swift_unknownObjectRetain();

  v30 = v84;
  v31 = sub_22B0A27F4(v73, a5, v29);
  v84 = v30;
  if (v30)
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();

    v32 = *(&v82 + 1);
    (*(v79 + 8))(v80, *(&v82 + 1));
    v33 = v82;
    (*(v78 + 8))(v81, v82);
    v34 = sub_22B0DF180();
    sub_22B0A67A4(v34);
    *&aBlock = v33;
    *(&aBlock + 1) = v32;
    v86 = v83;
    type metadata accessor for BaseMetricsManagerGeneric(0, &aBlock);
    swift_deallocPartialClassInstance();
    return v12;
  }

  else
  {
    v65 = v28;
    v43 = v31;
    type metadata accessor for CountersManager();
    v44 = swift_allocObject();
    v45 = swift_getObjectType();
    v66 = p_aBlock;
    v46 = sub_22B0900EC(v43, v29, p_aBlock, v44, v45);

    aBlock = v82;
    v86 = v83;
    type metadata accessor for BaseMetricsManagerGeneric.CountersSaveTimerDelegate(0, &aBlock);

    v48 = sub_22B0CA1E8(v47);
    v49 = *(*v12 + 128);
    *(&v49->isa + v12) = v48;
    if (qword_27D8B53D0 != -1)
    {
      goto LABEL_15;
    }

    while (1)
    {
      result = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:4 options:*&qword_27D8B6360];
      *(v12 + *(*v12 + 136)) = result;
      v39 = v80;
      v40 = v81;
      v41 = v79;
      v42 = v76;
      if (!result)
      {
        break;
      }

      [result setDelegate_];
      p_aBlock = v66;
      v73 = v46;
LABEL_8:
      v51 = v12;
      v52 = v70;
      v53 = v82;
      (*(v78 + 16))(v70, v40, v82);
      v54 = v71;
      v55 = *(&v82 + 1);
      (*(v41 + 16))(v71, v39, *(&v82 + 1));
      v63 = v55;
      v56 = v67;
      v57 = v65;
      BaseAnalyzerDataSource.init(coreAnalyticsEventPrefix:dateProvider:uptimeProvider:logEventDispatcher:repeatingScheduler:dailyScheduler:countersManager:)(v72, v74, v65, p_aBlock, v42, v52, v54, v73, v67, v53, v63, v83, *(&v83 + 1));
      (*(v68 + 32))(v51 + *(*v51 + 112), v56, v69);
      v58 = *(*v51 + 160);
      v59 = v57;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v46 = v77;
      v58(v77);
      v12 = v51;
      if (!v75)
      {
        goto LABEL_12;
      }

      v66 = p_aBlock;
      v46 = v75;
      [v42 submitLogEvent_];
      v49 = [v42 clientQueue];
      v87 = nullsub_1;
      v88 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v86 = sub_22B0CACC8;
      *(&v86 + 1) = &block_descriptor_6;
      v60 = _Block_copy(&aBlock);

      dispatch_sync(v49, v60);

      _Block_release(v60);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        v61 = [v42 clientQueue];
        v87 = nullsub_1;
        v88 = 0;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v86 = sub_22B0CACC8;
        *(&v86 + 1) = &block_descriptor_9;
        v62 = _Block_copy(&aBlock);

        dispatch_sync(v61, v62);
        _Block_release(v62);

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        (*(v79 + 8))(v80, *(&v82 + 1));
        (*(v78 + 8))(v81, v82);
        if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
        {
          return v12;
        }

        __break(1u);
LABEL_12:

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        (*(v79 + 8))(v80, *(&v82 + 1));
        (*(v78 + 8))(v81, v82);
        return v12;
      }

      __break(1u);
LABEL_15:
      swift_once();
    }

    __break(1u);
  }

  return result;
}

void sub_22B0CACF0(uint64_t a1)
{
  v3 = *v1;
  v4 = v1 + *(*v1 + 120);
  os_unfair_lock_lock(v4);
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  v8 = v3[13];
  sub_22B0CAE44((v4 + 8), a1);
  v9[0] = v5;
  v9[1] = v6;
  v9[2] = v7;
  v9[3] = v8;
  type metadata accessor for BaseMetricsManagerGeneric.State(0, v9);
  j__os_unfair_lock_unlock(v4);
}

uint64_t sub_22B0CAE44(void *a1, uint64_t a2)
{
  v3 = swift_unknownObjectRetain();
  MEMORY[0x231889140](v3);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B0DF4D0();
  }

  return sub_22B0DF500();
}

void sub_22B0CAEC4(void *a1)
{
  v2 = v1;
  [*(v2 + 56) addObserver:a1 forProtocol:&unk_283EF59E0];
  os_unfair_lock_lock((v2 + 88));
  v4 = a1;
  MEMORY[0x231889140]();
  if (*((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B0DF4D0();
  }

  sub_22B0DF500();
  os_unfair_lock_unlock((v2 + 88));
  v5 = *(v2 + 64);
  v18[2] = *(v2 + 48);
  v18[3] = v5;
  v19 = *(v2 + 80);
  v6 = *(v2 + 32);
  v18[0] = *(v2 + 16);
  v18[1] = v6;
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6598, &qword_22B0E5FD0));
  sub_22B0898A8(v18, v16, &qword_27D8B65A0, &qword_22B0E5FD8);
  v8 = sub_22B0C4F88(v18, sub_22B0AD188, 0);
  os_unfair_lock_lock((v2 + 88));
  v9 = swift_unknownObjectRetain();
  MEMORY[0x231889140](v9);
  if (*((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B0DF4D0();
  }

  sub_22B0DF500();
  os_unfair_lock_unlock((v2 + 88));

  v10 = *(v2 + 64);
  v16[2] = *(v2 + 48);
  v16[3] = v10;
  v17 = *(v2 + 80);
  v11 = *(v2 + 32);
  v16[0] = *(v2 + 16);
  v16[1] = v11;
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65A8, &qword_22B0E5FE0));
  sub_22B0898A8(v16, v15, &qword_27D8B65A0, &qword_22B0E5FD8);
  v13 = sub_22B0CD348(v16, 3, 0.0);
  sub_22B07D02C(v16, &qword_27D8B65A0, &qword_22B0E5FD8);
  os_unfair_lock_lock((v2 + 88));
  v14 = swift_unknownObjectRetain();
  MEMORY[0x231889140](v14);
  if (*((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 96) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B0DF4D0();
  }

  sub_22B0DF500();
  os_unfair_lock_unlock((v2 + 88));
}

void sub_22B0CB150(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2 + *(*v2 + 112);
  [*(v5 + 40) addObserver:a1 forProtocol:&unk_283EF59E0];
  sub_22B0CACF0(a1);
  v7 = v4[11];
  v8 = v4[12];
  v9 = v4[13];
  v12 = v4[10];
  v6 = v12;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  type metadata accessor for ProcessLaunchAnalyzer(0, &v12);
  v10 = sub_22B0AF58C(v5);
  sub_22B0CACF0(v10);

  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  type metadata accessor for ProcessMemoryEventAnalyzer(0, &v12);
  v11 = sub_22B0A98F4(v5, 3, 0.0);
  sub_22B0CACF0(v11);
}

uint64_t BaseMetricsManagerGeneric.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  v5 = v2[11];
  v6 = v2[12];
  v7 = v2[13];
  v11 = v2[10];
  v4 = v11;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v8 = type metadata accessor for BaseAnalyzerDataSource(0, &v11);
  (*(*(v8 - 8) + 8))(v1 + v3, v8);
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  type metadata accessor for BaseMetricsManagerGeneric.State(255, &v11);
  v9 = sub_22B0DF180();
  sub_22B0A67A4(v9);

  return v1;
}

uint64_t BaseMetricsManagerGeneric.__deallocating_deinit()
{
  BaseMetricsManagerGeneric.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *BaseMetricsManager.__allocating_init(coreAnalyticsEventPrefix:coreAnalyticsDelegate:coreAnalyticsFilters:counterStoragePath:dailySchedulerIdentifier:dailySchedulerPreferencesKey:processLaunchEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t (**a10)(uint64_t a1), void *a11)
{
  v74 = a1;
  v69 = a6;
  v65 = a5;
  v67 = a11;
  v75 = a2;
  v76 = a9;
  v71 = a10;
  v12 = sub_22B0DF9B0();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22B0DF5C0();
  v15 = *(v68 - 8);
  v16 = MEMORY[0x28223BE20](v68);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v64 - v19;

  v21 = swift_allocObject();
  v22 = objc_allocWithZone(HMMCoreAnalyticsLogEventObserver);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6368, &qword_22B0E5E58);
  v23 = sub_22B0DF4A0();

  v72 = [v22 initWithDelegate:a3 filters:v23];
  v66 = a3;
  v24 = v21;
  swift_unknownObjectRelease();

  v25 = [objc_allocWithZone(HMMLogEventDispatcher) init];
  sub_22B0DF5A0();
  v26 = v25;
  sub_22B0DF9A0();
  v27 = v68;
  (*(v15 + 16))(v18, v20, v68);
  v28 = v75;

  v29 = v74;
  v30 = sub_22B0CCF08(v14, v18, v74, v28, v26);
  (*(v15 + 8))(v20, v27);
  if (v71)
  {
    v31 = v76;
  }

  else
  {
    v31 = 0xD000000000000029;
  }

  if (v71)
  {
    v32 = v71;
  }

  else
  {
    v32 = 0x800000022B0E7CE0;
  }

  v33 = v26;
  v34 = sub_22B0CCA5C(v30, v31, v32, v29, v28, v33);

  v35 = [objc_opt_self() sharedInstance];
  v36 = [objc_opt_self() sharedInstance];
  *(v24 + 88) = 0;
  v76 = v24;
  *(v24 + 96) = MEMORY[0x277D84F90];
  v37 = v24 + 96;
  v38 = v33;

  v71 = v34;

  v70 = v30;
  if (!v69)
  {

    type metadata accessor for EmptyCounterStorage();
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    type metadata accessor for CountersManager();
    v45 = swift_allocObject();
    v46 = sub_22B0CD260(v44, v35, v36, v45, type metadata accessor for EmptyCounterStorage, &off_283EED480);
    v47 = v76;
    v76[13] = 0;
    v47[14] = 0;
    v48 = v71;
    p_aBlock = v72;
    goto LABEL_14;
  }

  v39 = v69;
  type metadata accessor for PersistentFlatFileCounterStorage();
  swift_allocObject();
  v40 = v35;

  v41 = v36;
  v42 = v73;
  v43 = sub_22B0A27F4(v65, v39, v40);
  if (v42)
  {

    sub_22B07D02C(v37, &qword_27D8B6378, &qword_22B0E5E68);

    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6370, &qword_22B0E5E60);
    swift_deallocPartialClassInstance();
    return v76;
  }

  else
  {
    v73 = 0;
    v50 = v43;

    type metadata accessor for CountersManager();
    v51 = swift_allocObject();
    v46 = sub_22B0CD260(v50, v40, v41, v51, type metadata accessor for PersistentFlatFileCounterStorage, &off_283EEBAB8);

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6380, &qword_22B0E5E70);
    v53 = objc_allocWithZone(v52);
    *&v53[qword_27D8B6388] = v46;
    v77.receiver = v53;
    v77.super_class = v52;

    v54 = objc_msgSendSuper2(&v77, sel_init);
    v76[13] = v54;
    if (qword_27D8B53D0 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      result = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:4 options:*&qword_27D8B6360];
      v76[14] = result;
      p_aBlock = v72;
      v30 = v70;
      if (!result)
      {
        break;
      }

      [result setDelegate_];
      v48 = v71;
LABEL_14:
      v56 = v75;
      v57 = v76;
      v76[2] = v74;
      v57[3] = v56;
      v57[4] = v35;
      v57[5] = v36;
      v57[6] = v38;
      v57[7] = v38;
      v57[8] = v30;
      v57[9] = v48;
      v57[10] = v46;
      v38 = v38;
      v35 = v35;
      v36 = v36;

      sub_22B0CAEC4(p_aBlock);
      v58 = v67;
      if (!v67)
      {
        goto LABEL_18;
      }

      v59 = v35;
      [v38 submitLogEvent_];
      v60 = [v38 clientQueue];
      v82 = nullsub_1;
      v83 = 0;
      p_aBlock = &aBlock;
      aBlock = MEMORY[0x277D85DD0];
      v79 = 1107296256;
      v35 = &v80;
      v80 = sub_22B0CACC8;
      v81 = &block_descriptor_12;
      v61 = _Block_copy(&aBlock);

      dispatch_sync(v60, v61);

      _Block_release(v61);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        v62 = [v38 clientQueue];
        v82 = nullsub_1;
        v83 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v79 = 1107296256;
        v80 = sub_22B0CACC8;
        v81 = &block_descriptor_15;
        v63 = _Block_copy(&aBlock);

        dispatch_sync(v62, v63);

        swift_unknownObjectRelease();
        _Block_release(v63);

        if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
        {
          return v76;
        }

        __break(1u);
LABEL_18:

        swift_unknownObjectRelease();
        return v76;
      }

      __break(1u);
LABEL_21:
      swift_once();
    }

    __break(1u);
  }

  return result;
}

void *BaseMetricsManager.init(coreAnalyticsEventPrefix:coreAnalyticsDelegate:coreAnalyticsFilters:counterStoragePath:dailySchedulerIdentifier:dailySchedulerPreferencesKey:processLaunchEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11)
{
  v77 = a1;
  v68 = a5;
  v78 = a2;
  v70 = a11;
  v71 = a6;
  v72 = a10;
  v12 = sub_22B0DF9B0();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22B0DF5C0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v66 - v20;

  v22 = objc_allocWithZone(HMMCoreAnalyticsLogEventObserver);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6368, &qword_22B0E5E58);
  v23 = sub_22B0DF4A0();

  v24 = [v22 initWithDelegate:a3 filters:v23];
  v69 = a3;
  swift_unknownObjectRelease();

  v25 = [objc_allocWithZone(HMMLogEventDispatcher) init];
  sub_22B0DF5A0();
  v26 = v25;
  sub_22B0DF9A0();
  (*(v16 + 16))(v19, v21, v15);
  v27 = v78;

  v28 = v77;
  v29 = sub_22B0CCF08(v14, v19, v77, v27, v26);
  (*(v16 + 8))(v21, v15);
  if (v72)
  {
    v30 = v75;
  }

  else
  {
    v30 = 0xD000000000000029;
  }

  if (v72)
  {
    v31 = v72;
  }

  else
  {
    v31 = 0x800000022B0E7CE0;
  }

  v32 = v26;
  v33 = sub_22B0CCA5C(v29, v30, v31, v28, v27, v32);

  p_aBlock = [objc_opt_self() sharedInstance];
  v35 = objc_opt_self();
  v36 = v76;
  v37 = [v35 sharedInstance];
  v36[12] = MEMORY[0x277D84F90];
  *(v36 + 22) = 0;
  v38 = v32;
  v72 = v29;

  v75 = v33;

  v73 = v24;
  if (!v71)
  {

    type metadata accessor for EmptyCounterStorage();
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    type metadata accessor for CountersManager();
    v46 = swift_allocObject();
    v47 = p_aBlock;
    v48 = sub_22B0CD260(v45, p_aBlock, v37, v46, type metadata accessor for EmptyCounterStorage, &off_283EED480);
    v36[13] = 0;
    v36[14] = 0;
    v49 = v72;
    v50 = v75;
    goto LABEL_14;
  }

  v39 = v71;
  v67 = v38;
  type metadata accessor for PersistentFlatFileCounterStorage();
  swift_allocObject();
  v40 = p_aBlock;

  v41 = v37;
  v42 = v74;
  v43 = sub_22B0A27F4(v68, v39, v40);
  if (v42)
  {

    v44 = v67;

    sub_22B07D02C((v36 + 12), &qword_27D8B6378, &qword_22B0E5E68);

    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6370, &qword_22B0E5E60);
    swift_deallocPartialClassInstance();
    return v36;
  }

  else
  {
    v68 = v37;
    v74 = 0;
    v51 = v43;

    type metadata accessor for CountersManager();
    v52 = swift_allocObject();
    v48 = sub_22B0CD260(v51, v40, v41, v52, type metadata accessor for PersistentFlatFileCounterStorage, &off_283EEBAB8);

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6380, &qword_22B0E5E70);
    v54 = objc_allocWithZone(v53);
    *&v54[qword_27D8B6388] = v48;
    v79.receiver = v54;
    v79.super_class = v53;

    v36[13] = objc_msgSendSuper2(&v79, sel_init);
    if (qword_27D8B53D0 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      result = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:4 options:*&qword_27D8B6360];
      v36[14] = result;
      v50 = v75;
      if (!result)
      {
        break;
      }

      v47 = p_aBlock;
      [result setDelegate_];
      v49 = v72;
      v38 = v67;
      v37 = v68;
LABEL_14:
      v56 = v78;
      v36[2] = v77;
      v36[3] = v56;
      v36[4] = v47;
      v36[5] = v37;
      v36[6] = v38;
      v36[7] = v38;
      v36[8] = v49;
      v36[9] = v50;
      v36[10] = v48;
      v57 = *(*v36 + 160);
      v58 = v38;
      v59 = v47;
      v60 = v37;

      v61 = v73;
      v57(v73);
      v36 = v70;
      if (!v70)
      {
        goto LABEL_18;
      }

      [v58 submitLogEvent_];
      v62 = [v58 clientQueue];
      v84 = nullsub_1;
      v85 = 0;
      p_aBlock = &aBlock;
      aBlock = MEMORY[0x277D85DD0];
      v81 = 1107296256;
      v48 = &v82;
      v82 = sub_22B0CACC8;
      v83 = &block_descriptor_18;
      v63 = _Block_copy(&aBlock);

      dispatch_sync(v62, v63);

      _Block_release(v63);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        v64 = [v58 clientQueue];
        v84 = nullsub_1;
        v85 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v81 = 1107296256;
        v82 = sub_22B0CACC8;
        v83 = &block_descriptor_21;
        v61 = _Block_copy(&aBlock);

        dispatch_sync(v64, v61);

        swift_unknownObjectRelease();
        _Block_release(v61);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
        v36 = v76;
        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return v36;
        }

        __break(1u);
LABEL_18:

        swift_unknownObjectRelease();
        return v76;
      }

      __break(1u);
LABEL_21:
      swift_once();
    }

    __break(1u);
  }

  return result;
}

uint64_t BaseMetricsManager.deinit()
{
  v1 = *(v0 + 32);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_22B07D02C(v0 + 96, &qword_27D8B6378, &qword_22B0E5E68);

  return v0;
}

uint64_t BaseMetricsManager.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_22B07D02C(v0 + 96, &qword_27D8B6378, &qword_22B0E5E68);

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

void sub_22B0CC708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_22B0CC784(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22B0CC86C;

  return v4();
}

uint64_t sub_22B0CC86C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B0CC964(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B0CE58C;

  return v6(a1);
}

uint64_t sub_22B0CCA5C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = type metadata accessor for RunDatePreferencesStorage.State(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RunDatePreferencesStorage(0);
  v15 = swift_allocObject();
  v16 = (v15 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  v17 = sub_22B0DF0E0();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  *v16 = 0;

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0) + 28);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C48, &qword_22B0E4B90);
  bzero(v16 + v18, *(*(v19 - 8) + 64));
  sub_22B0A7744(v14, v16 + v18);
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v20 = objc_opt_self();

  v21 = [v20 sharedInstance];

  return sub_22B0CCC1C(a1, v15, v21, a4, a5, a6);
}

uint64_t sub_22B0CCC1C(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C50, &qword_22B0E4B98);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22B0E4950;
  *(v12 + 32) = 0x4072C00000000000;
  *(v12 + 40) = 0xD000000000000014;
  *(v12 + 48) = 0x800000022B0E72F0;
  *(v12 + 56) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v12 + 64) = MEMORY[0x277D84F90];
  *(v12 + 72) = v13;
  *(v12 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C58, &unk_22B0E4BA0);
  *(v12 + 152) = &protocol witness table for CoalescingRepeatingScheduler<A>;
  *(v12 + 80) = a2;
  *(v12 + 88) = a3;
  *(v12 + 96) = a4;
  *(v12 + 104) = a5;
  *(v12 + 112) = a6;
  *(v12 + 120) = a1;
  v14 = swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5C60, &unk_22B0E4BB0);
  v15 = swift_allocObject();
  v16 = *(*v15 + 128);
  v17 = sub_22B0DF990();
  v18 = *(*(v17 - 8) + 56);
  v18(v15 + v16, 1, 1, v17);
  v18(v15 + *(*v15 + 136), 1, 1, v17);
  *(v15 + 16) = 0xD000000000000014;
  *(v15 + 24) = 0x800000022B0E72F0;
  *(v15 + 32) = 0xD000000000000014;
  *(v15 + 40) = 0x800000022B0E72F0;
  *(v15 + 48) = &unk_22B0E6090;
  *(v15 + 56) = v14;
  *(v15 + 64) = xmmword_22B0E4950;
  v19 = &a1[*(*a1 + 136)];
  swift_bridgeObjectRetain_n();

  v25 = a3;
  v20 = a6;
  swift_retain_n();
  os_unfair_lock_lock(v19);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5F20, &unk_22B0E54F0) + 28);
  sub_22B0C5BF8(v19 + v21, 0xD000000000000014, 0x800000022B0E72F0, v15);
  os_unfair_lock_unlock(v19);
  os_unfair_lock_lock(v19);
  sub_22B0C5F44((&v19->_os_unfair_lock_opaque + v21), v15, a1);
  os_unfair_lock_unlock(v19);

  return v12;
}

uint64_t sub_22B0CCF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v28 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F10, &unk_22B0E54E0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C58, &unk_22B0E4BA0);
  v11 = swift_allocObject();
  v12 = (v11 + *(*v11 + 136));
  *v10 = 1;
  v13 = MEMORY[0x277D84F90];
  *(v10 + 1) = MEMORY[0x277D84F90];
  *(v10 + 2) = 0;
  v14 = *(v8 + 52);
  v15 = sub_22B0DF990();
  (*(*(v15 - 8) + 56))(&v10[v14], 1, 1, v15);
  *&v10[*(v8 + 56)] = v13;
  *v12 = 0;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5F20, &unk_22B0E54F0) + 28);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5F28, &unk_22B0E6120);
  bzero(v12 + v16, *(*(v17 - 8) + 64));
  sub_22B0CE508(v10, v12 + v16, &unk_27D8B5F10, &unk_22B0E54E0);
  v18 = *(*v11 + 96);
  v19 = sub_22B0DF9B0();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v11 + v18, a1, v19);
  v21 = *(*v11 + 104);
  v22 = sub_22B0DF5C0();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v11 + v21, a2, v22);
  v24 = (v11 + *(*v11 + 112));
  v25 = v29;
  *v24 = v28;
  v24[1] = v25;
  *(v11 + *(*v11 + 120)) = v30;
  sub_22B076354(&unk_2813E9930, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_22B0DFCB0();
  (*(v23 + 8))(a2, v22);
  (*(v20 + 8))(a1, v19);
  return v11;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B0CD260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v14 = a5(0);
  v15 = a6;
  *&v13 = a1;
  *(a4 + 80) = 0;
  v11 = MEMORY[0x277D84F98];
  *(a4 + 88) = MEMORY[0x277D84F98];
  *(a4 + 96) = v11;
  *(a4 + 16) = [objc_allocWithZone(HMMDailyPartitionProvider) initWithDateProvider_];
  sub_22B0781A8(&v13, a4 + 24);
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  return a4;
}

void *sub_22B0CD348(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = MEMORY[0x277D85000];
  v10 = v3 + *((*MEMORY[0x277D85000] & *v3) + 0x78);
  v11 = *(a1 + 48);
  *(v10 + 2) = *(a1 + 32);
  *(v10 + 3) = v11;
  *(v10 + 8) = *(a1 + 64);
  v12 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 1) = v12;
  *(v3 + *((*v9 & *v3) + 0x90)) = a2;
  type metadata accessor for NamedGroupSpecifier();
  v13 = swift_allocObject();
  *(v13 + 16) = 0xD000000000000018;
  *(v13 + 24) = 0x800000022B0E7410;
  sub_22B0898A8(a1, v37, &qword_27D8B65A0, &qword_22B0E5FD8);
  v14 = sub_22B08C5E8(v13);

  *(v4 + *((*v9 & *v4) + 0x70)) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B65B0, &qword_22B0E5FE8);
  swift_allocObject();
  sub_22B0898A8(a1, v37, &qword_27D8B65A0, &qword_22B0E5FD8);
  *(v4 + *((*v9 & *v4) + 0x80)) = sub_22B0C44A4(a1, 0x94049F30F7200000, 97);
  *(v4 + *((*v9 & *v4) + 0x88)) = [objc_allocWithZone(MEMORY[0x277D0F810]) init];
  v36.receiver = v4;
  v36.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v36, sel_init);
  v16 = *(a1 + 40);
  type metadata accessor for ProcessMemorySampleLogEvent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = v15;
  [v16 addObserver:v18 forEventClass:ObjCClassFromMetadata];
  type metadata accessor for ProcessMemorySummaryLogEvent();
  [v16 addObserver:v18 forEventClass:swift_getObjCClassFromMetadata()];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v20 = *(a1 + 56);

  os_unfair_lock_lock((v20 + 56));
  v21 = *(v20 + 64);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 64) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = v21[2];

    *(v20 + 64) = sub_22B0831BC(0, v35 + 1, 1, v21);

    v21 = *(v20 + 64);
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_22B0831BC((v23 > 1), v24 + 1, 1, v21);
    *(v20 + 64) = v21;
  }

  v21[2] = v24 + 1;
  v25 = *(v20 + 64) + 48 * v24;
  strcpy((v25 + 32), "MemoryEvents");
  *(v25 + 45) = 0;
  *(v25 + 46) = -5120;
  *(v25 + 48) = xmmword_22B0E5E40;
  *(v25 + 64) = &unk_22B0E5FF8;
  *(v25 + 72) = v19;
  os_unfair_lock_unlock((v20 + 56));

  if (a2)
  {
    v26 = *(v18 + *((*v9 & *v18) + 0x88));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5888, &unk_22B0E3990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B0E4D80;
    v28 = v26;
    *(inited + 32) = sub_22B0DF620();
    sub_22B0A9038(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_22B07BA9C(0, &qword_27D8B5860, 0x277CCABB0);
    sub_22B0A9D8C();
    v29 = sub_22B0DF5F0();

    [v28 addObserver:v18 debounceInterval:v29 events:a3];
  }

  if ((a2 & 2) != 0)
  {
    v30 = *(v18 + *((*v9 & *v18) + 0x88));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5888, &unk_22B0E3990);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_22B0E4D80;
    v32 = v30;
    *(v31 + 32) = sub_22B0DF620();
    sub_22B0A9038(v31);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_22B07BA9C(0, &qword_27D8B5860, 0x277CCABB0);
    sub_22B0A9D8C();
    v33 = sub_22B0DF5F0();

    [v32 addObserver:v18 debounceInterval:v33 events:a3];

LABEL_11:
    [*(v18 + *((*v9 & *v18) + 0x88)) start];
    return v18;
  }

  if (a2)
  {
    goto LABEL_11;
  }

  return v18;
}

uint64_t sub_22B0CD900(uint64_t a1)
{
  v1 = *(a1 + 96);
  v4 = *(a1 + 80);
  v5 = v1;
  result = type metadata accessor for BaseAnalyzerDataSource(319, &v4);
  if (v3 <= 0x3F)
  {
    *&v4 = *(result - 8) + 64;
    *(&v4 + 1) = &unk_22B0E5ED0;
    *&v5 = &unk_22B0E5EE8;
    *(&v5 + 1) = &unk_22B0E5EE8;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for BaseMetricsManager(uint64_t a1)
{
  result = qword_27D8B64F8;
  if (!qword_27D8B64F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B0CDB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B0CDB68()
{
  v1 = *(v0 + qword_27D8B6388);
  os_unfair_lock_lock((v1 + 80));
  v2 = *(v1 + 88);

  os_unfair_lock_unlock((v1 + 80));
  v13 = v2;
  v10 = sub_22B0913BC;
  v11 = &v12;
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v1 + 24), v3);
  v8[2] = sub_22B0CDCA0;
  v8[3] = &v9;
  v5 = *(v4 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6590, &qword_22B0E3E10);
  v5(&v14, sub_22B0CDCBC, v8, v6, v3, v4);
}

uint64_t sub_22B0CDCD8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B0A78E4;

  return sub_22B0C4964(a1, v1);
}

uint64_t sub_22B0CDD70(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B0A78E4;

  return sub_22B0C46F8(a1, v1);
}

uint64_t sub_22B0CDE08(uint64_t a1)
{
  v4 = *(sub_22B0DF990() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B0A78E4;

  return sub_22B0C6A84(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22B0CDF00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65C0, &unk_22B0E6018);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B0CDF70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B0A78E4;

  return sub_22B0C9550(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B0CE03C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B0A78E4;

  return sub_22B0C527C(a1, v1);
}

uint64_t sub_22B0CE0D4(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B0A5698;

  return sub_22B0C24D8(a1, v1);
}

uint64_t sub_22B0CE16C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B0A78E4;

  return sub_22B0C3468(a1, a2, v6, v7);
}

uint64_t sub_22B0CE224(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22B0A78E4;

  return sub_22B0C38BC(a1, a2, v6, v7, v8);
}

uint64_t sub_22B0CE2E8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B0A78E4;

  return sub_22B0C4048(a1, a2, v6, v7);
}

uint64_t sub_22B0CE3A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B0A78E4;

  return sub_22B0C3F54(v2, v3, v0 + 32, v4);
}

uint64_t sub_22B0CE44C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22B0A78E4;

  return sub_22B0A55A0(v2, v3, v4, v5, v6);
}

uint64_t sub_22B0CE508(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B0CE5D0(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = a2;
  v74 = *MEMORY[0x277D85DE8];
  v51 = *v2;
  v54 = sub_22B0DEF00();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B65D0, &unk_22B0E6180);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v51 - v5;
  v64 = sub_22B0DF160();
  v67 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22B0DF010();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v71 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22B0DEFF0();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v70 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22B0DEFD0();
  v9 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22B0DEFE0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22B0DF060();
  v16 = *(v57 - 8);
  v17 = MEMORY[0x28223BE20](v57);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v51 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  v25 = *MEMORY[0x277CC9460];
  v26 = *(v13 + 104);
  v55 = v15;
  v27 = v15;
  v28 = v64;
  v26(v27, v25, v12);
  v29 = v67;
  v30 = *MEMORY[0x277CC9458];
  v31 = *(v9 + 104);
  v56 = v11;
  v31(v11, v30, v62);
  v32 = v69;
  (*(v63 + 104))(v70, *MEMORY[0x277CC9468], v65);
  (*(v66 + 104))(v71, *MEMORY[0x277CC9480], v68);
  sub_22B0DF150();
  if ((*(v29 + 48))(v32, 1, v28) == 1)
  {
    __break(1u);
  }

  v33 = OBJC_IVAR____TtC14HomeKitMetrics15FlatFileManager_dailyPartitionDateFormat;
  (*(v29 + 32))(v58, v32, v28);
  sub_22B0DF000();
  sub_22B0DF030();
  v34 = *(v16 + 8);
  v35 = v57;
  v34(v19, v57);
  sub_22B0DF040();
  v34(v22, v35);
  v36 = v61;
  v71 = v33;
  v37 = v34;
  sub_22B0DF020();
  v34(v24, v35);
  v38 = [objc_opt_self() defaultManager];
  v73 = 0;
  v39 = sub_22B0DF300();
  v40 = [v38 fileExistsAtPath:v39 isDirectory:&v73];

  if (!v40)
  {
    goto LABEL_6;
  }

  if ((v73 & 1) == 0)
  {
    v41 = sub_22B0DF300();
    v72 = 0;
    v42 = [v38 removeItemAtPath:v41 error:&v72];

    v43 = v72;
    if (!v42)
    {
      goto LABEL_9;
    }

    v44 = v72;
LABEL_6:
    v45 = sub_22B0DF300();
    v72 = 0;
    v46 = [v38 createDirectoryAtPath:v45 withIntermediateDirectories:1 attributes:0 error:&v72];

    v43 = v72;
    if (v46)
    {
      v47 = v72;
      goto LABEL_8;
    }

LABEL_9:
    v49 = v43;

    sub_22B0DEE80();

    swift_willThrow();
    v37(&v71[v36], v35);
    swift_deallocPartialClassInstance();
    return v36;
  }

LABEL_8:
  v48 = v52;
  sub_22B0DEE90();

  (*(v53 + 32))(v36 + OBJC_IVAR____TtC14HomeKitMetrics15FlatFileManager_directoryURL, v48, v54);
  return v36;
}

void *sub_22B0CEDD0()
{
  v69[3] = *MEMORY[0x277D85DE8];
  v60 = sub_22B0DF060();
  v1 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v51 - v4;
  v68 = sub_22B0DF0E0();
  v53 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v55 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B0DEF00();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v63 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v61 = v0;
  v11 = sub_22B0DEEB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65C8, &unk_22B0E6170);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22B0E4000;
  v13 = *MEMORY[0x277CBE8A8];
  *(v12 + 32) = *MEMORY[0x277CBE8A8];
  type metadata accessor for URLResourceKey(0);
  v14 = v13;
  v15 = sub_22B0DF4A0();

  v69[0] = 0;
  v16 = [v10 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:v15 options:0 error:v69];

  v17 = v69[0];
  if (v16)
  {
    v52 = v10;
    v18 = sub_22B0DF4B0();
    v19 = v17;

    v20 = *(v18 + 16);
    if (v20)
    {
      v23 = *(v8 + 16);
      v22 = v8 + 16;
      v21 = v23;
      v57 = OBJC_IVAR____TtC14HomeKitMetrics15FlatFileManager_dailyPartitionDateFormat;
      v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
      v51[1] = v18;
      v25 = v18 + v24;
      v26 = *(v22 + 56);
      v65 = (v22 - 8);
      v66 = v26;
      v56 = (v1 + 16);
      v67 = (v53 + 56);
      v54 = (v53 + 32);
      v62 = MEMORY[0x277D84F90];
      v27 = v63;
      v58 = v22;
      v64 = v23;
      while (1)
      {
        v21(v27, v25, v7);
        sub_22B0DEEA0();
        if (sub_22B0DF3E0())
        {
          if (sub_22B0DF3F0())
          {
            v28 = v7;
            sub_22B0DF390();
            v29 = sub_22B0DF3B0();
            if (__OFSUB__(0, sub_22B0DF390()))
            {
              __break(1u);
LABEL_24:
              __break(1u);
            }

            if (sub_22B0DF3B0() >> 14 < v29 >> 14)
            {
              goto LABEL_24;
            }

            v30 = sub_22B0DF410();
            v32 = v31;
            v34 = v33;
            v35 = v5;
            v37 = v36;

            v38 = MEMORY[0x231889020](v30, v32, v34, v37);
            v40 = v39;
            v5 = v35;

            v69[0] = v38;
            v69[1] = v40;
            (*v56)(v59, v61 + v57, v60);
            sub_22B0D0764();
            sub_22B0DF0F0();
            v7 = v28;
            (*v65)(v63, v28);
            v41 = v68;
            (*v67)(v35, 0, 1, v68);
            v42 = *v54;
            (*v54)(v55, v35, v41);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v21 = v64;
            if (isUniquelyReferenced_nonNull_native)
            {
              v44 = v62;
            }

            else
            {
              v44 = sub_22B082E70(0, v62[2] + 1, 1, v62);
            }

            v46 = v44[2];
            v45 = v44[3];
            if (v46 >= v45 >> 1)
            {
              v44 = sub_22B082E70((v45 > 1), v46 + 1, 1, v44);
            }

            v44[2] = v46 + 1;
            v47 = (*(v53 + 80) + 32) & ~*(v53 + 80);
            v62 = v44;
            v42(v44 + v47 + *(v53 + 72) * v46, v55, v68);
            v27 = v63;
            goto LABEL_12;
          }

          (*v65)(v27, v7);

          v21 = v64;
        }

        else
        {
          (*v65)(v27, v7);
        }

        (*v67)(v5, 1, 1, v68);
        sub_22B07D02C(v5, &unk_27D8B5670, &unk_22B0E32C0);
LABEL_12:
        v25 += v66;
        if (!--v20)
        {

          return v62;
        }
      }
    }
  }

  else
  {
    v49 = v69[0];
    v50 = sub_22B0DEE80();

    swift_willThrow();
  }

  return MEMORY[0x277D84F90];
}

void sub_22B0CF560(uint64_t (*a1)(char *), uint64_t a2)
{
  v114 = a1;
  v115 = a2;
  v127[2] = *MEMORY[0x277D85DE8];
  v111 = sub_22B0DF0E0();
  v3 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v116 = v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22B0DF060();
  v125 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v122 = v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v123 = v97 - v9;
  v10 = sub_22B0DEF00();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v104 = v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v97 - v14;
  v16 = [objc_opt_self() defaultManager];
  v109 = v2;
  v17 = sub_22B0DEEB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65C8, &unk_22B0E6170);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22B0E4000;
  v19 = *MEMORY[0x277CBE8A8];
  *(v18 + 32) = *MEMORY[0x277CBE8A8];
  type metadata accessor for URLResourceKey(0);
  v20 = v19;
  v21 = sub_22B0DF4A0();

  v127[0] = 0;
  v110 = v16;
  v22 = [v16 contentsOfDirectoryAtURL:v17 includingPropertiesForKeys:v21 options:0 error:v127];

  v23 = v127[0];
  if (!v22)
  {
    v84 = v127[0];
    v28 = sub_22B0DEE80();

    swift_willThrow();
    if (qword_2813E9AA8 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v24 = sub_22B0DF4B0();
  v25 = v23;

  v27 = v24;
  v28 = *(v24 + 16);
  if (!v28)
  {
LABEL_34:

    return;
  }

  v117 = 0;
  v30 = *(v11 + 16);
  v29 = v11 + 16;
  v124 = v30;
  v31 = *(v29 + 64);
  v106 = OBJC_IVAR____TtC14HomeKitMetrics15FlatFileManager_dailyPartitionDateFormat;
  v97[1] = v27;
  v32 = v27 + ((v31 + 32) & ~v31);
  v33 = *(v29 + 56);
  v120 = (v3 + 56);
  v121 = v33;
  v105 = (v125 + 16);
  v112 = (v3 + 8);
  v113 = (v3 + 32);
  v125 = v29;
  v118 = (v29 - 8);
  v119 = (v3 + 48);
  *&v26 = 136315138;
  v99 = v26;
  *&v26 = 136315394;
  v98 = v26;
  v34 = v111;
  v35 = v116;
  v126 = v10;
  v30(v15, v32, v10);
  while (1)
  {
    v37 = sub_22B0DEEA0();
    v39 = v38;
    if ((sub_22B0DF3E0() & 1) == 0)
    {
      v48 = 1;
      v49 = v122;
      v41 = v123;
      goto LABEL_18;
    }

    v40 = sub_22B0DF3F0();
    v41 = v123;
    if (v40)
    {
      break;
    }

    v48 = 1;
LABEL_17:
    v49 = v122;
LABEL_18:
    (*v120)(v41, v48, 1, v34);
    sub_22B07D9F0(v41, v49);
    if ((*v119)(v49, 1, v34) == 1)
    {

      sub_22B07D02C(v41, &unk_27D8B5670, &unk_22B0E32C0);
      v36 = v126;
      (*v118)(v15, v126);
      sub_22B07D02C(v49, &unk_27D8B5670, &unk_22B0E32C0);
      goto LABEL_5;
    }

    (*v113)(v35, v49, v34);
    if ((v114(v35) & 1) == 0)
    {

      (*v112)(v35, v34);
      goto LABEL_26;
    }

    v50 = sub_22B0DEEB0();
    v127[0] = 0;
    v51 = [v110 removeItemAtURL:v50 error:v127];

    if (v51)
    {
      v52 = qword_2813E9AA8;
      v53 = v127[0];
      if (v52 != -1)
      {
        swift_once();
      }

      v54 = sub_22B0DF1B0();
      __swift_project_value_buffer(v54, qword_2813EBE90);

      v55 = sub_22B0DF190();
      v56 = sub_22B0DF6A0();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = v41;
        v59 = swift_slowAlloc();
        v127[0] = v59;
        *v57 = v99;
        v60 = sub_22B07B428(v37, v39, v127);

        *(v57 + 4) = v60;
        _os_log_impl(&dword_22B074000, v55, v56, "Removed counter partition file %s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x23188A520](v59, -1, -1);
        v61 = v57;
        v34 = v111;
        MEMORY[0x23188A520](v61, -1, -1);

        v35 = v116;
        (*v112)(v116, v34);
        v62 = v58;
      }

      else
      {

        v35 = v116;
        (*v112)(v116, v34);
LABEL_26:
        v62 = v41;
      }

      sub_22B07D02C(v62, &unk_27D8B5670, &unk_22B0E32C0);
      v36 = v126;
      (*v118)(v15, v126);
      goto LABEL_5;
    }

    v63 = v127[0];

    v64 = sub_22B0DEE80();

    swift_willThrow();
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v117 = 0;
    v65 = sub_22B0DF1B0();
    __swift_project_value_buffer(v65, qword_2813EBE90);
    v66 = v104;
    v124(v104, v15, v126);
    v67 = v64;
    v68 = sub_22B0DF190();
    v69 = sub_22B0DF690();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v127[0] = v103;
      *v70 = v98;
      v101 = v68;
      v71 = sub_22B0DEEF0();
      v73 = v72;
      v100 = v69;
      v74 = *v118;
      (*v118)(v66, v126);
      v75 = sub_22B07B428(v71, v73, v127);

      *(v70 + 4) = v75;
      *(v70 + 12) = 2112;
      v76 = v64;
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 14) = v77;
      v78 = v102;
      *v102 = v77;
      v79 = v101;
      _os_log_impl(&dword_22B074000, v101, v100, "Failed to remove partition file %s: %@", v70, 0x16u);
      sub_22B07D02C(v78, &qword_27D8B5660, &qword_22B0E54A0);
      MEMORY[0x23188A520](v78, -1, -1);
      v80 = v103;
      __swift_destroy_boxed_opaque_existential_0(v103);
      MEMORY[0x23188A520](v80, -1, -1);
      v81 = v70;
      v34 = v111;
      MEMORY[0x23188A520](v81, -1, -1);

      v35 = v116;
      (*v112)(v116, v34);
      sub_22B07D02C(v123, &unk_27D8B5670, &unk_22B0E32C0);
      v36 = v126;
      v74(v15, v126);
    }

    else
    {

      v82 = *v118;
      v83 = v126;
      (*v118)(v66, v126);
      v35 = v116;
      (*v112)(v116, v34);
      sub_22B07D02C(v41, &unk_27D8B5670, &unk_22B0E32C0);
      v82(v15, v83);
      v36 = v83;
    }

LABEL_5:
    v32 += v121;
    if (!--v28)
    {
      goto LABEL_34;
    }

    v124(v15, v32, v36);
  }

  sub_22B0DF390();
  v42 = sub_22B0DF3B0();
  if (!__OFSUB__(0, sub_22B0DF390()))
  {
    if (sub_22B0DF3B0() >> 14 < v42 >> 14)
    {
      goto LABEL_40;
    }

    v43 = sub_22B0DF410();
    v44 = MEMORY[0x231889020](v43);
    v46 = v45;

    v127[0] = v44;
    v127[1] = v46;
    (*v105)(v107, v109 + v106, v108);
    sub_22B0D0764();
    v47 = v117;
    sub_22B0DF0F0();
    if (v47)
    {

      v117 = 0;
      v48 = 1;
    }

    else
    {
      v117 = 0;
      v48 = 0;
    }

    v34 = v111;
    v35 = v116;
    goto LABEL_17;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_36:
  v85 = sub_22B0DF1B0();
  __swift_project_value_buffer(v85, qword_2813EBE90);

  v86 = v28;
  v87 = sub_22B0DF190();
  v88 = sub_22B0DF690();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v127[0] = v91;
    *v89 = 136315394;
    v92 = sub_22B0DEEF0();
    v94 = sub_22B07B428(v92, v93, v127);

    *(v89 + 4) = v94;
    *(v89 + 12) = 2112;
    v95 = v28;
    v96 = _swift_stdlib_bridgeErrorToNSError();
    *(v89 + 14) = v96;
    *v90 = v96;
    _os_log_impl(&dword_22B074000, v87, v88, "Failed to get list of partitions in %s: %@", v89, 0x16u);
    sub_22B07D02C(v90, &qword_27D8B5660, &qword_22B0E54A0);
    MEMORY[0x23188A520](v90, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x23188A520](v91, -1, -1);
    MEMORY[0x23188A520](v89, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_22B0D0368(uint64_t a1)
{
  v1 = sub_22B0DEF00();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B0DF050();
  v8[0] = 0x2D796C696144;
  v8[1] = 0xE600000000000000;
  MEMORY[0x231889070](v5);

  MEMORY[0x231889070](0x7265746E756F632ELL, 0xE900000000000073);

  sub_22B0DEEC0();

  v6 = sub_22B0DEF10();
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_22B0D04FC()
{
  v1 = OBJC_IVAR____TtC14HomeKitMetrics15FlatFileManager_dailyPartitionDateFormat;
  v2 = sub_22B0DF060();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14HomeKitMetrics15FlatFileManager_directoryURL;
  v4 = sub_22B0DEF00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for FlatFileManager(uint64_t a1)
{
  result = qword_2813EA758;
  if (!qword_2813EA758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B0D062C(uint64_t a1)
{
  result = sub_22B0DF060();
  if (v2 <= 0x3F)
  {
    result = sub_22B0DEF00();
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

unint64_t sub_22B0D0764()
{
  result = qword_2813EAD88;
  if (!qword_2813EAD88)
  {
    sub_22B0DF060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EAD88);
  }

  return result;
}

uint64_t MinimumTimeIntervalRadarRequestFilterPreferencesStorage.__allocating_init(lastRequestDateKey:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MinimumTimeIntervalRadarRequestFilterPreferencesStorage.init(lastRequestDateKey:)(a1, a2);
  return v4;
}

uint64_t MinimumTimeIntervalRadarRequestFilterPreferencesStorage.init(lastRequestDateKey:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_22B0DF0E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v12 = objc_opt_self();

  v13 = [v12 standardUserDefaults];
  v14 = sub_22B0DF300();

  v15 = [v13 objectForKey_];

  if (v15)
  {
    sub_22B0DF7A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    v16 = swift_dynamicCast();
    (*(v9 + 56))(v7, v16 ^ 1u, 1, v8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      goto LABEL_10;
    }
  }

  else
  {
    sub_22B07D02C(v20, &qword_27D8B5770, &unk_22B0E2E40);
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  sub_22B0DEFB0();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_22B07D02C(v7, &unk_27D8B5670, &unk_22B0E32C0);
  }

LABEL_10:
  (*(v9 + 32))(v2 + OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate, v11, v8);
  return v2;
}

uint64_t sub_22B0D0B2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate;
  swift_beginAccess();
  v5 = sub_22B0DF0E0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_22B0D0BB8(uint64_t a1)
{
  v2 = sub_22B0DF0E0();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_22B0D0D0C(v4);
}

uint64_t sub_22B0D0C84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate;
  swift_beginAccess();
  v4 = sub_22B0DF0E0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_22B0D0D0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B0DF0E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate;
  swift_beginAccess();
  (*(v5 + 24))(v2 + v8, a1, v4);
  swift_endAccess();
  v9 = [objc_opt_self() standardUserDefaults];
  (*(v5 + 16))(v7, v2 + v8, v4);
  v10 = sub_22B0DF070();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v12 = sub_22B0DF300();
  [v9 setObject:v10 forKey:v12];

  return (v11)(a1, v4);
}

uint64_t (*sub_22B0D0EB4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_22B0DF0E0();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate;
  v5[6] = v8;
  v5[7] = v9;
  swift_beginAccess();
  return sub_22B0D0FA4;
}

void sub_22B0D0FA4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v4 = v3[6];
  }

  else
  {
    v4 = v3[6];
    v5 = v3[7];
    v6 = v3[4];
    v7 = v3[5];
    v8 = v3[3];
    v9 = [objc_opt_self() standardUserDefaults];
    (*(v7 + 16))(v4, v8 + v5, v6);
    v10 = sub_22B0DF070();
    (*(v7 + 8))(v4, v6);
    v11 = sub_22B0DF300();
    [v9 setObject:v10 forKey:v11];
  }

  free(v4);

  free(v3);
}

uint64_t MinimumTimeIntervalRadarRequestFilterPreferencesStorage.deinit()
{

  v1 = OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate;
  v2 = sub_22B0DF0E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MinimumTimeIntervalRadarRequestFilterPreferencesStorage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate;
  v2 = sub_22B0DF0E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_22B0D11BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics55MinimumTimeIntervalRadarRequestFilterPreferencesStorage_lastRequestDate;
  swift_beginAccess();
  v5 = sub_22B0DF0E0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void (*sub_22B0D126C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_22B0D0EB4(v2);
  return sub_22B07DE44;
}

uint64_t sub_22B0D12F0(uint64_t a1, uint64_t *a2)
{
  sub_22B07D124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + v4));
  sub_22B0781A8(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_22B0D135C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage;
  swift_beginAccess();
  return sub_22B07D124(v1 + v3, a1);
}

uint64_t sub_22B0D13B4(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  sub_22B0781A8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t MinimumTimeIntervalRadarRequestFilter.dateFactory.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory);

  return v1;
}

uint64_t MinimumTimeIntervalRadarRequestFilter.__allocating_init(minimumRequestInterval:lastRequestDatePreferencesKey:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for MinimumTimeIntervalRadarRequestFilterPreferencesStorage(0);
  v9 = swift_allocObject();
  MinimumTimeIntervalRadarRequestFilterPreferencesStorage.init(lastRequestDateKey:)(a1, a2);
  v11[3] = v8;
  v11[4] = &protocol witness table for MinimumTimeIntervalRadarRequestFilterPreferencesStorage;
  v11[0] = v9;
  return (*(v4 + 128))(v11, sub_22B0D15C4, 0, a3);
}

uint64_t type metadata accessor for MinimumTimeIntervalRadarRequestFilterPreferencesStorage(uint64_t a1)
{
  result = qword_2813E9A90;
  if (!qword_2813E9A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *MinimumTimeIntervalRadarRequestFilter.__allocating_init(minimumRequestInterval:filterStorage:dateFactory:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_minimumRequestInterval] = a4;
  sub_22B07D124(a1, &v9[OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage]);
  v10 = &v9[OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory];
  *v10 = a2;
  *(v10 + 1) = a3;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

void *MinimumTimeIntervalRadarRequestFilter.init(minimumRequestInterval:filterStorage:dateFactory:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  *&v4[OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_minimumRequestInterval] = a4;
  sub_22B07D124(a1, &v4[OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage]);
  v8 = &v4[OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory];
  *v8 = a2;
  *(v8 + 1) = a3;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for MinimumTimeIntervalRadarRequestFilter();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_22B0D175C()
{
  v1 = sub_22B0DF0E0();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v0 + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory))(v2);
  v5 = v0 + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 16))(v4, v6, v7);
  return swift_endAccess();
}

id MinimumTimeIntervalRadarRequestFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MinimumTimeIntervalRadarRequestFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MinimumTimeIntervalRadarRequestFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_22B0D1A68()
{
  v1 = v0;
  v2 = sub_22B0DF0E0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17[-v8];
  (*(v0 + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory))(v7);
  v10 = OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage;
  swift_beginAccess();
  sub_22B07D124(v1 + v10, v18);
  v11 = v19;
  v12 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v12 + 8))(v11, v12);
  __swift_destroy_boxed_opaque_existential_0(v18);
  sub_22B0DEFC0();
  v14 = v13;
  v15 = *(v3 + 8);
  v15(v6, v2);
  v15(v9, v2);
  return *(v1 + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_minimumRequestInterval) <= v14;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_22B0D1CAC(uint64_t a1)
{
  result = sub_22B0DF0E0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B0D2068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B0D20CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_22B0D2140(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_22B0D21AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_22B0D221C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_22B0D228C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B077F9C(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_22B0D2300@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B077F9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B0D2338@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22B07C194();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22B0D2370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22B0D23C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22B0D2418(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a3;
  v14 = a7;
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  type metadata accessor for CounterSet.CodingKeys(255, v17);
  swift_getWitnessTable();
  v8 = sub_22B0DFC10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B0DFDC0();
  v17[0] = v13;
  sub_22B0DF270();
  v15 = MEMORY[0x277D837D8];
  v16 = v14;
  swift_getWitnessTable();
  sub_22B0DFC00();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_22B0D25E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = a2;
  v14[0] = a2;
  v14[1] = a3;
  v15 = a4;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for CounterSet.CodingKeys(255, v14);
  swift_getWitnessTable();
  v7 = sub_22B0DFBC0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B0DFDB0();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_22B0DF270();
    v13[2] = MEMORY[0x277D83808];
    v13[3] = v15;
    swift_getWitnessTable();
    sub_22B0DFBB0();
    (*(v8 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_22B0D27FC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_22B0D25E4(a1, a2[2], a2[3], a2[4], a2[5]);
  if (!v3)
  {
    *a3 = result & 1;
    *(a3 + 8) = v6;
  }

  return result;
}

id sub_22B0D28E4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22B0DF300();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22B0D294C(void *a1)
{
  [v1 setGroup_];
}

uint64_t sub_22B0D2994()
{
  v1 = [v0 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22B0DF330();

  return v3;
}

void sub_22B0D29FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_22B0DF300();
  }

  else
  {
    v3 = 0;
  }

  [v2 setName_];
}

void sub_22B0D2A68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B0DF0E0();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    v8 = sub_22B0DF070();
    (*(v5 + 8))(a1, v4);
    v7 = v8;
  }

  v9 = v7;
  [v2 setDate_];
}

uint64_t sub_22B0D2B60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B0DF8F0();
  *a1 = result;
  return result;
}

id sub_22B0D2B8C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22B0DF300();
  v2 = [v0 initWithEntityName_];

  return v2;
}

id sub_22B0D2BFC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22B0DF300();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22B0D2C64@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ManagedNamedGroup();
  result = sub_22B0DF8F0();
  *a2 = result;
  return result;
}

void sub_22B0D4074(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id HMMLogEventEndDateAfterStartDate(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEAA8] date];
  if ([v2 compare:v1] == -1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v8 = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v2;
      v12 = 2114;
      v13 = v1;
      _os_log_impl(&dword_22B074000, v4, OS_LOG_TYPE_ERROR, "%{public}@Log event end date %{public}@ is before start date %{public}@", &v8, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v6 = v1;

    v2 = v6;
  }

  return v2;
}

id HMMSafeHomeUUIDFromLogEvent(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 homeUUID];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HMDTaggedLoggingCreateDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v22[0] = 0;
  v10 = 8 * a1;
  MEMORY[0x28223BE20](a1);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  MEMORY[0x28223BE20](v12);
  bzero(v11, v10);
  v22[0] = &a9;
  v13 = 0;
  if (a1)
  {
    v14 = a1;
    do
    {
      --v14;
      v15 = v22[0];
      v22[0] += 8;
      objc_storeStrong(&v11[8 * v13], *v15);
      v16 = v22[0];
      v22[0] += 8;
      v17 = *v16;
      objc_storeStrong(&v11[8 * v13], *v16);
      if (v17)
      {
        ++v13;
      }
    }

    while (v14);
  }

  v18 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:v11 forKeys:v11 count:v13];
  if (a1)
  {
    v19 = v10;
    do
    {

      v19 -= 8;
    }

    while (v19);
    v20 = v11 - 8;
    do
    {

      v10 -= 8;
    }

    while (v10);
  }

  return v18;
}

void sub_22B0D69C8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t HMMDispatchQueueName(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = a1;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (v4)
  {
    v8 = @".";
  }

  else
  {
    v8 = &stru_283EED8E0;
  }

  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = &stru_283EED8E0;
  }

  v10 = [v5 hash];

  v11 = [v3 stringWithFormat:@"com.apple.HomeKitMetrics.%@%@%@.%tu", v7, v8, v9, v10];

  v12 = [v11 UTF8String];
  return v12;
}

id getLowestError(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = *MEMORY[0x277CCA7E8];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [v4 userInfo];
      v9 = [v8 objectForKeyedSubscript:v3];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (!v11)
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = [v4 domain];
        v15 = [v16 errorWithDomain:v17 code:objc_msgSend(v4 userInfo:{"code"), 0}];

        goto LABEL_17;
      }

      if (!v9)
      {
        break;
      }

      v4 = v9;
    }

    while (v7++ < 3);
    if (!v9)
    {
      goto LABEL_15;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = [v9 domain];
    v15 = [v13 errorWithDomain:v14 code:objc_msgSend(v9 userInfo:{"code"), 0}];

    v4 = v9;
  }

  else
  {
LABEL_15:
    v15 = v1;
    v4 = 0;
  }

LABEL_17:

  return v15;
}

void sub_22B0D9B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void HMMLogTagWithError(void *a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x277D0F770];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = [v7 currentTagProcessorList];
  _HMMLogTagActivityWithError(v11, v10, v9, v8, 0, 0, v12);
}

void _HMMLogTagActivityWithError(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v140 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v113 = v14;
  if (v14)
  {
    v20 = [v14 userInfo];
    v21 = v20;
    v110 = v13;
    v111 = v15;
    v112 = v18;
    if (v20 && ([v20 objectForKey:*MEMORY[0x277CCA7E8]], (v105 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v13;
      v24 = HMFGetOSLogHandle();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      v104 = v17;
      v106 = v19;
      if (!v17)
      {
        if (v25)
        {
          v84 = HMFGetLogIdentifier();
          v85 = [v14 domain];
          v86 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
          [(HMMTaggedEvent *)v105 domain];
          v87 = v109 = v22;
          v88 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMTaggedEvent code](v105, "code")}];
          *buf = 138545922;
          v115 = v84;
          v116 = 2114;
          v117 = v111;
          v118 = 2112;
          v119 = v16;
          v120 = 2114;
          v121 = @"errorDomain";
          v122 = 2112;
          v123 = v85;
          v124 = 2114;
          v125 = @"errorCode";
          v126 = 2112;
          v127 = v86;
          v128 = 2114;
          v129 = @"underlyingErrorDomain";
          v130 = 2112;
          v131 = v87;
          v132 = 2114;
          v133 = @"underlyingErrorCode";
          v134 = 2112;
          v135 = v88;
          _os_log_impl(&dword_22B074000, v24, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x70u);

          v22 = v109;
        }

        objc_autoreleasePoolPop(v22);
        v89 = +[HMMTagManager sharedInstance];
        v90 = [HMMTaggedEvent alloc];
        v91 = [v14 domain];
        v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
        v35 = [(HMMTaggedEvent *)v105 domain];
        v102 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMTaggedEvent code](v105, "code")}];
        v108 = v91;
        v99 = HMDTaggedLoggingCreateDictionary(4, v92, v93, v94, v95, v96, v97, v98, @"errorDomain");
        v100 = [(HMMTaggedEvent *)v90 initWithTag:v111 data:v99];
        v46 = v89;
        [v89 submitTaggedEvent:v100 processorList:v106];

        v19 = v106;
        v48 = v105;

        v15 = v111;
        v17 = 0;
        v47 = v112;
        goto LABEL_19;
      }

      v107 = v21;
      if (v25)
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v14 domain];
        v28 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
        [(HMMTaggedEvent *)v105 domain];
        v30 = v29 = v22;
        v31 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMTaggedEvent code](v105, "code")}];
        *buf = 138546434;
        v115 = v26;
        v116 = 2114;
        v117 = v111;
        v118 = 2112;
        v119 = v16;
        v120 = 2114;
        v121 = @"errorDomain";
        v122 = 2112;
        v123 = v27;
        v124 = 2114;
        v125 = @"errorCode";
        v126 = 2112;
        v127 = v28;
        v128 = 2114;
        v129 = @"underlyingErrorDomain";
        v130 = 2112;
        v131 = v30;
        v132 = 2114;
        v133 = @"underlyingErrorCode";
        v134 = 2112;
        v135 = v31;
        v136 = 2114;
        v137 = v104;
        v138 = 2112;
        v139 = v112;
        _os_log_impl(&dword_22B074000, v24, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x84u);

        v22 = v29;
      }

      objc_autoreleasePoolPop(v22);
      v103 = +[HMMTagManager sharedInstance];
      v32 = [HMMTaggedEvent alloc];
      v33 = [v14 domain];
      v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
      v35 = [(HMMTaggedEvent *)v105 domain];
      v101 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMTaggedEvent code](v105, "code")}];
      v108 = v33;
      HMDTaggedLoggingCreateDictionary(5, v36, v37, v38, v39, v40, v41, v42, @"errorDomain");
      v44 = v43 = v16;
      v15 = v111;
      v45 = [(HMMTaggedEvent *)v32 initWithTag:v111 data:v44];
      v46 = v103;
      v19 = v106;
      [v103 submitTaggedEvent:v45 processorList:v106];

      v16 = v43;
      v47 = v112;
      v17 = v104;

      v48 = v105;
    }

    else
    {
      v107 = v21;
      v49 = objc_autoreleasePoolPush();
      v50 = v13;
      v51 = HMFGetOSLogHandle();
      v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
      if (v17)
      {
        if (v52)
        {
          v53 = HMFGetLogIdentifier();
          v54 = [v14 domain];
          v55 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
          *buf = 138545410;
          v115 = v53;
          v116 = 2114;
          v117 = v111;
          v118 = 2112;
          v119 = v16;
          v120 = 2114;
          v121 = @"errorDomain";
          v122 = 2112;
          v123 = v54;
          v124 = 2114;
          v125 = @"errorCode";
          v126 = 2112;
          v127 = v55;
          v128 = 2114;
          v129 = v17;
          v130 = 2112;
          v131 = v112;
          _os_log_impl(&dword_22B074000, v51, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
        }

        objc_autoreleasePoolPop(v49);
        v48 = +[HMMTagManager sharedInstance];
        v56 = [HMMTaggedEvent alloc];
        v57 = [v14 domain];
        [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
        v108 = v47 = v112;
        v46 = v57;
        v34 = HMDTaggedLoggingCreateDictionary(3, v58, v59, v60, v61, v62, v63, v64, @"errorDomain");
        v15 = v111;
        v35 = [(HMMTaggedEvent *)v56 initWithTag:v111 data:v34];
        [(HMMTaggedEvent *)v48 submitTaggedEvent:v35 processorList:v19];
      }

      else
      {
        if (v52)
        {
          v72 = HMFGetLogIdentifier();
          v73 = [v14 domain];
          v74 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
          *buf = 138544898;
          v115 = v72;
          v116 = 2114;
          v117 = v111;
          v118 = 2112;
          v119 = v16;
          v120 = 2114;
          v121 = @"errorDomain";
          v122 = 2112;
          v123 = v73;
          v124 = 2114;
          v125 = @"errorCode";
          v126 = 2112;
          v127 = v74;
          _os_log_impl(&dword_22B074000, v51, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
        }

        objc_autoreleasePoolPop(v49);
        v48 = +[HMMTagManager sharedInstance];
        v75 = [HMMTaggedEvent alloc];
        v76 = [v14 domain];
        v108 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
        v46 = v76;
        v34 = HMDTaggedLoggingCreateDictionary(2, v77, v78, v79, v80, v81, v82, v83, @"errorDomain");
        v15 = v111;
        v35 = [(HMMTaggedEvent *)v75 initWithTag:v111 data:v34];
        [(HMMTaggedEvent *)v48 submitTaggedEvent:v35 processorList:v19];
        v47 = v112;
      }
    }

    v21 = v107;
LABEL_19:

    v13 = v110;
    goto LABEL_20;
  }

  v47 = v18;
  v65 = objc_autoreleasePoolPush();
  v66 = v13;
  v67 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v68 = v19;
    v70 = v69 = v16;
    *buf = 138543874;
    v115 = v70;
    v116 = 2114;
    v117 = v15;
    v118 = 2112;
    v119 = v69;
    _os_log_impl(&dword_22B074000, v67, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@", buf, 0x20u);

    v16 = v69;
    v19 = v68;
  }

  objc_autoreleasePoolPop(v65);
  v21 = +[HMMTagManager sharedInstance];
  v71 = [HMMTaggedEvent alloc];
  v48 = [(HMMTaggedEvent *)v71 initWithTag:v15 data:MEMORY[0x277CBEC10]];
  [v21 submitTaggedEvent:v48 processorList:v19];
LABEL_20:
}

void HMMLogTagActivityWithError(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  v13 = [a5 tagProcessorList];
  _HMMLogTagActivityWithError(v12, v11, v10, v9, 0, 0, v13);
}

void HMMLogTagWithErrorAndField(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = MEMORY[0x277D0F770];
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = a2;
  v17 = a1;
  v18 = [v11 currentTagProcessorList];
  _HMMLogTagActivityWithError(v17, v16, v15, v14, v13, v12, v18);
}

void HMMLogTagActivityWithErrorAndField(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = a2;
  v18 = a1;
  v19 = [a7 tagProcessorList];
  _HMMLogTagActivityWithError(v18, v17, v16, v15, v14, v13, v19);
}

void sub_22B0DE5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRadarComponentClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RadarComponent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadarComponentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "RadarComponent");
    TapToRadarKitLibrary();
  }
}

void TapToRadarKitLibrary()
{
  v2 = 0;
  v0 = TapToRadarKitLibraryCore(&v2);
  v1 = v2;
  if (!v0)
  {
    v1 = abort_report_np("%s", v2);
    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    free(v1);
  }
}

uint64_t TapToRadarKitLibraryCore(uint64_t a1)
{
  if (!TapToRadarKitLibraryCore_frameworkLibrary)
  {
    TapToRadarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return TapToRadarKitLibraryCore_frameworkLibrary;
}

uint64_t __TapToRadarKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  TapToRadarKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_22B0DE888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRadarDraftClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("RadarDraft");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadarDraftClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "RadarDraft");
    return [(HMMTapToRadarShim *)v3 isTapToRadarServiceAuthorized];
  }

  return result;
}

Class __getTapToRadarServiceClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("TapToRadarService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTapToRadarServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "TapToRadarService");
    return +[(HMMTapToRadarShim *)v3];
  }

  return result;
}