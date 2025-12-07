uint64_t sub_252868D18(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_252868FC0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_252869014@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_2528BECF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t _s14HomeAppIntents22ShowDeviceResultIntentV019getSuccessAndFailedE3IDs4fromShySSG07successeL0_AF06failedeL0tSayAA0eF0VG_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v138 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v137 = &v122 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v136 = &v122 - v8;
  MEMORY[0x28223BE20](v7);
  v135 = &v122 - v9;
  v10 = type metadata accessor for DeviceEntity(0);
  v11 = MEMORY[0x28223BE20](v10);
  v144 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v122 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v143 = &v122 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v122 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v142 = &v122 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v122 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v141 = &v122 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v122 - v28;
  v149 = sub_2528BECF0();
  v30 = MEMORY[0x28223BE20](v149);
  v134 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v133 = &v122 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v132 = &v122 - v35;
  MEMORY[0x28223BE20](v34);
  v131 = &v122 - v38;
  v124 = *(a1 + 16);
  if (!v124)
  {
    v150 = MEMORY[0x277D84F90];
    v156 = MEMORY[0x277D84F90];
LABEL_50:
    v120 = sub_252743FCC(v150);

    sub_252743FCC(v156);

    return v120;
  }

  v127 = v29;
  v128 = v25;
  v129 = v20;
  v130 = v15;
  v122 = v10;
  v39 = 0;
  v123 = a1 + 32;
  v148 = (v36 + 48);
  v147 = (v36 + 32);
  v146 = (v36 + 8);
  v40 = 0x27F4FB000uLL;
  *&v37 = 136315138;
  v126 = v37;
  *&v37 = 136315394;
  v145 = v37;
  v150 = MEMORY[0x277D84F90];
  v156 = MEMORY[0x277D84F90];
  while (1)
  {
    v125 = v39;
    v41 = (v123 + 16 * v39);
    v43 = *v41;
    v42 = v41[1];
    sub_2528BEA50();
    sub_2528BEA50();
    v155 = v42;
    sub_2528BE6B0();
    v44 = v164;
    v154 = *(v164 + 16);
    if (v154)
    {
      break;
    }

LABEL_3:
    v39 = v125 + 1;

    if (v39 == v124)
    {
      goto LABEL_50;
    }
  }

  v45 = 0;
  v46 = (v164 + 40);
  v151 = v43;
  v153 = v164;
  while (1)
  {
    if (v45 >= *(v44 + 16))
    {
      __break(1u);
LABEL_52:
      sub_2527213D8(v42, &qword_27F4FC628, &qword_2528C4750);
      v162 = 0;
      v163 = 0xE000000000000000;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
      sub_2528C0ED0();
      MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
      goto LABEL_54;
    }

    v48 = *v46;
    v158 = *(v46 - 1);
    sub_2528BEA50();
    sub_2528BEA50();
    v157 = v48;
    sub_2528BE6B0();
    v49 = v164;
    if (v169 > 1u)
    {
      break;
    }

    if (v169)
    {
      if (*(v40 + 2880) != -1)
      {
        swift_once();
      }

      v80 = sub_2528C08B0();
      __swift_project_value_buffer(v80, qword_27F5025C8);
      sub_2528BEA50();
      sub_2528BEA50();
      v81 = sub_2528C0890();
      v82 = sub_2528C0D10();

      if (os_log_type_enabled(v81, v82))
      {
        v139 = v82;
        v140 = v81;
        v152 = v49;
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v161 = v85;
        *v83 = v145;
        v86 = v127;
        sub_2528BE6B0();
        sub_2528BE6B0();
        v87 = v135;
        sub_2528BECA0();
        v42 = v87;

        v88 = v87;
        v89 = v149;
        if ((*v148)(v88, 1, v149) == 1)
        {
          goto LABEL_52;
        }

        v90 = v131;
        (*v147)(v131, v42, v89);
        sub_25286FA3C(v86, type metadata accessor for DeviceEntity);
        sub_25286FE38(&qword_27F4FD070, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v91 = sub_2528C1040();
        v93 = v92;
        (*v146)(v90, v89);
        v94 = sub_2527389AC(v91, v93, &v161);

        *(v83 + 4) = v94;
        *(v83 + 12) = 2112;
        sub_25286FE80();
        swift_allocError();
        *v95 = v152;
        v96 = _swift_stdlib_bridgeErrorToNSError();
        *(v83 + 14) = v96;
        *v84 = v96;
        v97 = v140;
        _os_log_impl(&dword_252711000, v140, v139, "Adding device %s to failed list due to error: %@", v83, 0x16u);
        sub_2527213D8(v84, &qword_27F4FC230, &qword_2528C3928);
        MEMORY[0x2530A8D80](v84, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v85);
        MEMORY[0x2530A8D80](v85, -1, -1);
        MEMORY[0x2530A8D80](v83, -1, -1);

        v40 = 0x27F4FB000;
      }

      else
      {
      }

      v117 = &v170;
LABEL_41:
      v118 = *(v117 - 32);
LABEL_44:
      sub_2528BE6B0();
      sub_2528BE6B0();
      v112 = v162;
      v113 = v163;
      sub_25286FA3C(v118, type metadata accessor for DeviceEntity);
      v42 = v156;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_252737D40(0, *(v42 + 2) + 1, 1, v42);
      }

      v115 = *(v42 + 2);
      v119 = *(v42 + 3);
      v116 = v115 + 1;
      if (v115 >= v119 >> 1)
      {
        v42 = sub_252737D40((v119 > 1), v115 + 1, 1, v42);
      }

      v156 = v42;
      goto LABEL_6;
    }

    sub_25276925C(v164, v165, v166, v167, v168, 0);
    if (*(v40 + 2880) != -1)
    {
      swift_once();
    }

    v50 = sub_2528C08B0();
    __swift_project_value_buffer(v50, qword_27F5025C8);
    sub_2528BEA50();
    sub_2528BEA50();
    v51 = sub_2528C0890();
    v52 = sub_2528C0D10();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v161 = v54;
      *v53 = v126;
      v55 = v130;
      sub_2528BE6B0();
      sub_2528BE6B0();
      v56 = v138;
      sub_2528BECA0();
      v42 = v56;

      v57 = v56;
      v58 = v149;
      if ((*v148)(v57, 1, v149) == 1)
      {
        goto LABEL_52;
      }

      sub_25286FA3C(v55, type metadata accessor for DeviceEntity);
      v59 = v134;
      (*v147)(v134, v42, v58);
      sub_25286FE38(&qword_27F4FD070, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v60 = sub_2528C1040();
      v62 = v61;
      (*v146)(v59, v58);
      v63 = sub_2527389AC(v60, v62, &v161);

      *(v53 + 4) = v63;
      _os_log_impl(&dword_252711000, v51, v52, "Adding device %s to success list", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x2530A8D80](v54, -1, -1);
      MEMORY[0x2530A8D80](v53, -1, -1);

      v40 = 0x27F4FB000;
    }

    else
    {
    }

    v111 = v144;
    sub_2528BE6B0();
    sub_2528BE6B0();
    v112 = v162;
    v113 = v163;
    sub_25286FA3C(v111, type metadata accessor for DeviceEntity);
    v42 = v150;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_252737D40(0, *(v42 + 2) + 1, 1, v42);
    }

    v115 = *(v42 + 2);
    v114 = *(v42 + 3);
    v116 = v115 + 1;
    if (v115 >= v114 >> 1)
    {
      v42 = sub_252737D40((v114 > 1), v115 + 1, 1, v42);
    }

    v150 = v42;
LABEL_6:
    ++v45;

    *(v42 + 2) = v116;
    v47 = &v42[16 * v115];
    *(v47 + 4) = v112;
    *(v47 + 5) = v113;
    v46 += 2;
    v44 = v153;
    if (v154 == v45)
    {
      goto LABEL_3;
    }
  }

  if (v169 == 2)
  {
    if (*(v40 + 2880) != -1)
    {
      swift_once();
    }

    v64 = sub_2528C08B0();
    __swift_project_value_buffer(v64, qword_27F5025C8);
    sub_2528BEA50();
    sub_2528BEA50();
    v65 = sub_2528C0890();
    v66 = sub_2528C0D10();

    if (os_log_type_enabled(v65, v66))
    {
      v139 = v66;
      v140 = v65;
      v152 = v49;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v161 = v69;
      *v67 = v145;
      v70 = v128;
      sub_2528BE6B0();
      sub_2528BE6B0();
      v42 = v136;
      sub_2528BECA0();

      v71 = v149;
      if ((*v148)(v42, 1, v149) == 1)
      {
        goto LABEL_52;
      }

      v72 = v132;
      (*v147)(v132, v42, v71);
      sub_25286FA3C(v70, type metadata accessor for DeviceEntity);
      sub_25286FE38(&qword_27F4FD070, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v73 = sub_2528C1040();
      v75 = v74;
      (*v146)(v72, v71);
      v76 = sub_2527389AC(v73, v75, &v161);

      *(v67 + 4) = v76;
      *(v67 + 12) = 2112;
      sub_25272C1A8();
      swift_allocError();
      *v77 = v152;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 14) = v78;
      *v68 = v78;
      v79 = v140;
      _os_log_impl(&dword_252711000, v140, v139, "Adding device %s to failed list due to device error: %@", v67, 0x16u);
      sub_2527213D8(v68, &qword_27F4FC230, &qword_2528C3928);
      MEMORY[0x2530A8D80](v68, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      MEMORY[0x2530A8D80](v69, -1, -1);
      MEMORY[0x2530A8D80](v67, -1, -1);

      v40 = 0x27F4FB000;
    }

    else
    {
    }

    v117 = &v171;
    goto LABEL_41;
  }

  if (*(v40 + 2880) != -1)
  {
    swift_once();
  }

  v98 = sub_2528C08B0();
  __swift_project_value_buffer(v98, qword_27F5025C8);
  sub_2528BEA50();
  sub_2528BEA50();
  v99 = sub_2528C0890();
  v100 = sub_2528C0D10();

  if (!os_log_type_enabled(v99, v100))
  {

    goto LABEL_43;
  }

  LODWORD(v140) = v100;
  v152 = v49;
  v101 = swift_slowAlloc();
  v102 = swift_slowAlloc();
  v161 = v102;
  *v101 = v145;
  v103 = v129;
  sub_2528BE6B0();
  sub_2528BE6B0();
  v104 = v137;
  sub_2528BECA0();

  v105 = v149;
  if ((*v148)(v104, 1, v149) != 1)
  {
    v106 = v133;
    (*v147)(v133, v104, v105);
    sub_25286FA3C(v103, type metadata accessor for DeviceEntity);
    sub_25286FE38(&qword_27F4FD070, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v107 = sub_2528C1040();
    v109 = v108;
    (*v146)(v106, v105);
    v110 = sub_2527389AC(v107, v109, &v161);

    *(v101 + 4) = v110;
    *(v101 + 12) = 2048;
    *(v101 + 14) = v152;
    _os_log_impl(&dword_252711000, v99, v140, "Adding device %s to failed list due to homekit error code: %ld", v101, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v102);
    MEMORY[0x2530A8D80](v102, -1, -1);
    MEMORY[0x2530A8D80](v101, -1, -1);

    v40 = 0x27F4FB000;
LABEL_43:
    v118 = v143;
    goto LABEL_44;
  }

  sub_2527213D8(v104, &qword_27F4FC628, &qword_2528C4750);
  v162 = 0;
  v163 = 0xE000000000000000;
  sub_2528C0E70();
  MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
  sub_2528C0ED0();
  MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
LABEL_54:
  sub_2528BE6B0();
  MEMORY[0x2530A80B0](v159, v160);

  MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
  result = sub_2528C0EE0();
  __break(1u);
  return result;
}

uint64_t sub_25286A47C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25286A4D0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v2[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6C8, &unk_2528D3C60);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v3 = sub_2528C0020();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = sub_2528BECF0();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v5 = type metadata accessor for DeviceEntity(0);
  v2[31] = v5;
  v2[32] = *(v5 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25286A758, 0, 0);
}

unint64_t sub_25286A758()
{
  v185 = v0;
  v1 = v0;
  v2 = v0[8];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1[32];
    v5 = v1[23];
    v182 = MEMORY[0x277D84F90];
    sub_25282EFDC(0, v3, 0);
    v181 = (v5 + 48);
    v165 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v167 = (v5 + 32);
    v173 = *(v4 + 72);
    v163 = v3;
    v6 = v3;
    v7 = v165;
    do
    {
      v9 = v1[21];
      v8 = v1[22];
      sub_25286F980(v7, v1[33], type metadata accessor for DeviceEntity);
      sub_2528BE6B0();
      sub_2528BECA0();

      v177 = *v181;
      if ((*v181)(v9, 1, v8) == 1)
      {
        sub_2527213D8(v1[21], &qword_27F4FC628, &qword_2528C4750);
        v184[0] = 0;
        v184[1] = 0xE000000000000000;
        sub_2528C0E70();
        v1[4] = 0;
        v1[5] = 0xE000000000000000;
        MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
        sub_2528C0ED0();
        MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
        sub_2528BE6B0();
        MEMORY[0x2530A80B0](v1[6], v1[7]);

        MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
        return sub_2528C0EE0();
      }

      v10 = v1[33];
      v11 = *v167;
      (*v167)(v1[30], v1[21], v1[22]);
      sub_25286FA3C(v10, type metadata accessor for DeviceEntity);
      v13 = *(v182 + 16);
      v12 = *(v182 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_25282EFDC((v12 > 1), v13 + 1, 1);
      }

      v14 = v1[30];
      v15 = v1[22];
      *(v182 + 16) = v13 + 1;
      v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v17 = *(v5 + 72);
      v11(v182 + v16 + v17 * v13, v14, v15);
      v7 += v173;
      --v6;
    }

    while (v6);
    v155 = v17;
    v157 = v16;
    v159 = v11;
    v161 = v1[34];
    v21 = sub_252743D54(v182);

    v183 = v21;
    v184[0] = MEMORY[0x277D84F90];
    while (2)
    {
      sub_25286F980(v165 + v6 * v173, v1[34], type metadata accessor for DeviceEntity);
      v169 = v6 + 1;
      v23 = *(v161 + 56);
      v26 = *(v23 + 56);
      v25 = v23 + 56;
      v24 = v26;
      v27 = -1 << *(*(v161 + 56) + 32);
      if (-v27 < 64)
      {
        v28 = ~(-1 << -v27);
      }

      else
      {
        v28 = -1;
      }

      v29 = v28 & v24;
      v30 = (63 - v27) >> 6;
      result = swift_bridgeObjectRetain_n();
      v31 = 0;
      v172 = MEMORY[0x277D84F90];
LABEL_15:
      v32 = v31;
      if (!v29)
      {
        goto LABEL_17;
      }

      do
      {
        v31 = v32;
LABEL_20:
        v33 = v1[22];
        v34 = v1[20];
        v29 &= v29 - 1;

        sub_2528BECA0();

        if (v177(v34, 1, v33) != 1)
        {
          v159(v1[29], v1[20], v1[22]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v172 = sub_252737E4C(0, *(v172 + 2) + 1, 1, v172);
          }

          v36 = *(v172 + 2);
          v35 = *(v172 + 3);
          if (v36 >= v35 >> 1)
          {
            v172 = sub_252737E4C((v35 > 1), v36 + 1, 1, v172);
          }

          v37 = v1[29];
          v38 = v1[22];
          *(v172 + 2) = v36 + 1;
          result = v159(&v172[v157 + v36 * v155], v37, v38);
          goto LABEL_15;
        }

        result = sub_2527213D8(v1[20], &qword_27F4FC628, &qword_2528C4750);
        v32 = v31;
      }

      while (v29);
      while (1)
      {
LABEL_17:
        v31 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        if (v31 >= v30)
        {
          break;
        }

        v29 = *(v25 + 8 * v31);
        ++v32;
        if (v29)
        {
          goto LABEL_20;
        }
      }

      v22 = v1[34];

      sub_25286FA3C(v22, type metadata accessor for DeviceEntity);

      sub_252737028(v172);
      v6 = v169;
      if (v169 != v163)
      {
        continue;
      }

      break;
    }

    v18 = v184[0];
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    v19 = sub_252743D54(MEMORY[0x277D84F90]);

    v183 = v19;
  }

  v39 = v1[9];
  v40 = swift_task_alloc();
  *(v40 + 16) = v39;
  v41 = sub_2527A4FA4(sub_25286FD84, v40, v18);

  v140 = *(v41 + 2);
  if (v140)
  {
    v42 = 0;
    v43 = v1[16];
    v138 = &v41[(*(v43 + 80) + 32) & ~*(v43 + 80)];
    v139 = v43;
    v147 = v1[10];
    v141 = (v43 + 8);
    v150 = v1;
    v151 = v1[23];
    v137 = v41;
    v146 = (v151 + 8);
    while (v42 < *(v41 + 2))
    {
      v143 = v42;
      v144 = *(v139 + 16);
      v144(v1[19], &v138[*(v139 + 72) * v42], v1[15]);
      sub_2528BFFF0();
      if (*(v183 + 16) && (sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v44 = sub_2528C0900(), v45 = -1 << *(v183 + 32), v46 = v44 & ~v45, ((*(v183 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) != 0))
      {
        v47 = ~v45;
        v48 = *(v151 + 72);
        v49 = *(v151 + 16);
        while (1)
        {
          v50 = v1[27];
          v51 = v1[22];
          v49(v50, *(v183 + 48) + v46 * v48, v51);
          sub_25286FE38(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v52 = sub_2528C0930();
          v53 = *v146;
          (*v146)(v50, v51);
          if (v52)
          {
            break;
          }

          v46 = (v46 + 1) & v47;
          if (((*(v183 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v127 = v1[19];
        v128 = v1[15];
        v53(v1[28], v1[22]);
        result = (*v141)(v127, v128);
      }

      else
      {
LABEL_39:
        v54 = *v146;
        (*v146)(v1[28], v1[22]);
        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v55 = v1[18];
        v56 = v1[19];
        v57 = v1[15];
        v58 = sub_2528C08B0();
        __swift_project_value_buffer(v58, qword_27F5025C8);
        v144(v55, v56, v57);
        v59 = sub_2528C0890();
        v60 = sub_2528C0D10();
        v142 = v54;
        if (os_log_type_enabled(v59, v60))
        {
          v61 = v1[27];
          v62 = v1[22];
          v63 = v1[18];
          v178 = v1[15];
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v184[0] = v65;
          *v64 = 136315650;
          *(v64 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, v184);
          *(v64 + 12) = 2080;
          *(v64 + 14) = sub_2527389AC(0xD000000000000034, 0x80000002528E6750, v184);
          *(v64 + 22) = 2080;
          sub_2528BFFF0();
          v66 = sub_2528BECB0();
          v68 = v67;
          v54(v61, v62);
          v69 = *v141;
          (*v141)(v63, v178);
          v70 = sub_2527389AC(v66, v68, v184);
          v1 = v150;

          *(v64 + 24) = v70;
          _os_log_impl(&dword_252711000, v59, v60, "%s-%s Found potential Service Group to display %s", v64, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v65, -1, -1);
          MEMORY[0x2530A8D80](v64, -1, -1);
        }

        else
        {
          v71 = v1[18];
          v72 = v1[15];

          v69 = *v141;
          (*v141)(v71, v72);
        }

        v73 = sub_2528BFFE0();
        v74 = *(v73 + 16);
        v75 = v151;
        v152 = v69;
        if (v74)
        {
          v184[0] = MEMORY[0x277D84F90];
          sub_25282EFDC(0, v74, 0);
          v174 = v73 + 64;
          v179 = v184[0];
          result = sub_2528C0E00();
          v76 = result;
          v77 = 0;
          v145 = v73 + 72;
          v148 = v74;
          v149 = v73;
          while ((v76 & 0x8000000000000000) == 0 && v76 < 1 << *(v73 + 32))
          {
            if ((*(v174 + 8 * (v76 >> 6)) & (1 << v76)) == 0)
            {
              goto LABEL_81;
            }

            v156 = 1 << v76;
            v158 = v76 >> 6;
            v153 = v77;
            v154 = *(v73 + 36);
            v166 = *(v147 + 48);
            v168 = v1[25];
            v78 = v1[22];
            v79 = v1[13];
            v80 = v1[14];
            v82 = v1 + 11;
            v81 = v1[11];
            v170 = *(v75 + 72);
            v160 = v82[1];
            v162 = *(v75 + 16);
            v162(v80, *(v73 + 48) + v170 * v76, v78);
            v83 = *(v73 + 56);
            v84 = sub_2528BF9D0();
            v85 = *(v84 - 8);
            (*(v85 + 16))(v80 + v166, v83 + *(v85 + 72) * v76, v84);
            v164 = v76;
            v86 = *(v75 + 32);
            v86(v79, v80, v78);
            v87 = *(v85 + 32);
            v87(v79 + *(v147 + 48), v80 + v166, v84);
            sub_25272006C(v79, v160, &qword_27F4FD6C8, &unk_2528D3C60);
            v88 = *(v147 + 48);
            v86(v81, v160, v78);
            v89 = v81 + v88;
            v90 = v160 + v88;
            v91 = v179;
            v87(v89, v90, v84);
            v162(v168, v81, v78);
            sub_2527213D8(v81, &qword_27F4FD6C8, &unk_2528D3C60);
            sub_2527213D8(v79, &qword_27F4FD6C8, &unk_2528D3C60);
            v184[0] = v179;
            v93 = *(v179 + 16);
            v92 = *(v179 + 24);
            if (v93 >= v92 >> 1)
            {
              sub_25282EFDC((v92 > 1), v93 + 1, 1);
              v91 = v184[0];
            }

            v1 = v150;
            v75 = v151;
            v94 = v150[25];
            v95 = v150[22];
            *(v91 + 16) = v93 + 1;
            v179 = v91;
            v86(v91 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + v93 * v170, v94, v95);
            v73 = v149;
            v76 = 1 << *(v149 + 32);
            result = v164;
            if (v164 >= v76)
            {
              goto LABEL_82;
            }

            v96 = *(v174 + 8 * v158);
            if ((v96 & v156) == 0)
            {
              goto LABEL_83;
            }

            if (v154 != *(v149 + 36))
            {
              goto LABEL_84;
            }

            v97 = v96 & (-2 << (v164 & 0x3F));
            if (v97)
            {
              v76 = __clz(__rbit64(v97)) | v164 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v98 = v158 << 6;
              v99 = (v145 + 8 * v158);
              v100 = v158 + 1;
              while (v100 < (v76 + 63) >> 6)
              {
                v102 = *v99++;
                v101 = v102;
                v98 += 64;
                ++v100;
                if (v102)
                {
                  result = sub_25271A63C(v164, v154, 0);
                  v76 = __clz(__rbit64(v101)) + v98;
                  goto LABEL_62;
                }
              }

              result = sub_25271A63C(v164, v154, 0);
LABEL_62:
              v73 = v149;
            }

            v69 = v152;
            v77 = v153 + 1;
            if (v153 + 1 == v148)
            {

              v103 = v91;
              goto LABEL_65;
            }
          }

          goto LABEL_80;
        }

        v103 = MEMORY[0x277D84F90];
LABEL_65:
        v104 = v1[22];
        v105 = *(v103 + 16);
        sub_25286FE38(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v106 = MEMORY[0x2530A82F0](v105, v104);
        v184[0] = v106;
        v107 = *(v103 + 16);
        if (v107)
        {
          v108 = v103 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
          v175 = *(v151 + 72);
          v171 = *(v151 + 16);
          do
          {
            v110 = v1[26];
            v109 = v1[27];
            v111 = v1[22];
            v171(v110, v108, v111);
            sub_252739234(v109, v110);
            v142(v109, v111);
            v108 += v175;
            --v107;
          }

          while (v107);

          v112 = v184[0];
          v69 = v152;
        }

        else
        {
          v112 = v106;
        }

        sub_252864688(v183, v112);
        if (v113)
        {
          v144(v1[17], v1[19], v1[15]);

          v114 = sub_2528C0890();
          v115 = sub_2528C0D10();

          if (os_log_type_enabled(v114, v115))
          {
            v116 = v1[27];
            v117 = v1[22];
            v118 = v1[17];
            v176 = v1[15];
            v119 = swift_slowAlloc();
            v180 = swift_slowAlloc();
            v184[0] = v180;
            *v119 = 136315906;
            *(v119 + 4) = sub_2527389AC(0xD00000000000002BLL, 0x80000002528E65C0, v184);
            *(v119 + 12) = 2080;
            *(v119 + 14) = sub_2527389AC(0xD000000000000034, 0x80000002528E6750, v184);
            *(v119 + 22) = 2080;
            sub_2528BFFF0();
            v120 = sub_2528BECB0();
            v122 = v121;
            v142(v116, v117);
            v152(v118, v176);
            v123 = sub_2527389AC(v120, v122, v184);
            v1 = v150;

            *(v119 + 24) = v123;
            *(v119 + 32) = 2080;
            v124 = sub_2528C0C80();
            v126 = sub_2527389AC(v124, v125, v184);

            *(v119 + 34) = v126;
            _os_log_impl(&dword_252711000, v114, v115, "%s-%s All services from Service Group: %s found, adding this id and removing %s", v119, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x2530A8D80](v180, -1, -1);
            MEMORY[0x2530A8D80](v119, -1, -1);
          }

          else
          {
            v129 = v1[17];
            v130 = v1[15];

            v152(v129, v130);
          }

          v131 = v1[27];
          v132 = v1[24];
          v133 = v1[22];
          v134 = v1[19];
          v135 = v1[15];
          sub_2528BFFF0();
          sub_252739234(v131, v132);
          v142(v131, v133);
          sub_252865B58(v112);

          result = (v152)(v134, v135);
        }

        else
        {
          v69(v1[19], v1[15]);
        }
      }

      v41 = v137;
      v42 = v143 + 1;
      if (v143 + 1 == v140)
      {
        goto LABEL_76;
      }
    }

LABEL_85:
    __break(1u);
  }

  else
  {
LABEL_76:

    v136 = v1[1];

    return v136(v183);
  }

  return result;
}

unint64_t sub_25286BB08()
{
  result = qword_27F4FFA58;
  if (!qword_27F4FFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFA58);
  }

  return result;
}

uint64_t type metadata accessor for ShowDeviceResultIntent(uint64_t a1)
{
  result = qword_27F4FFB68;
  if (!qword_27F4FFB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25286BBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s14HomeAppIntents22ShowDeviceResultIntentV22composedLocalizedTitle11titleTokens6device19includeDotSeparatorSSSDyAA15UserSpecificityOSSG_SSSgSbtFZ_0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_2528BED10();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2528C09C0();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);

  v53 = sub_25272EBFC(v11);
  if (a3)
  {

    sub_25286601C(0, &v52);
    sub_25286601C(1u, &v52);
    v12 = v53;
    v13 = sub_25274A5C4(&unk_286495D10);
    v14 = sub_25284EB10(v12, v13);

    if (v14 & 1) != 0 && a1[2] && (v15 = sub_252786CBC(4), (v16) || (v17 = sub_25274A5C4(&unk_286495D38), v18 = sub_25284EB10(v12, v17), , (v18) && a1[2] && (v15 = sub_252786CBC(5), (v19))
    {
      v20 = (a1[7] + 16 * v15);
      v22 = *v20;
      v21 = v20[1];

      sub_2528C0950();
      sub_2528BED00();
      sub_2528C0A00();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC60, &qword_2528D4CF8);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_2528C17E0;
      v24 = MEMORY[0x277D837D0];
      *(v23 + 56) = MEMORY[0x277D837D0];
      v25 = sub_25286FB3C();
      *(v23 + 32) = v22;
      *(v23 + 40) = v21;
      *(v23 + 96) = v24;
      *(v23 + 104) = v25;
      *(v23 + 64) = v25;
      *(v23 + 72) = a2;
      *(v23 + 80) = a3;
LABEL_9:
      v26 = sub_2528C09E0();

      goto LABEL_22;
    }

    v27 = sub_25274A5C4(&unk_286495D60);
    v28 = sub_25284EB10(v12, v27);

    if (v28)
    {
      if (a1[2])
      {
        v29 = sub_252786CBC(4);
        if (v30)
        {
          if (a1[2])
          {
            v31 = (a1[7] + 16 * v29);
            v33 = *v31;
            v32 = v31[1];

            v34 = sub_252786CBC(5);
            if (v35)
            {
              v36 = (a1[7] + 16 * v34);
              v38 = *v36;
              v37 = v36[1];

              sub_2528C0950();
              sub_2528BED00();
              sub_2528C0A00();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC60, &qword_2528D4CF8);
              v39 = swift_allocObject();
              *(v39 + 16) = xmmword_2528C17D0;
              v40 = MEMORY[0x277D837D0];
              *(v39 + 56) = MEMORY[0x277D837D0];
              v41 = sub_25286FB3C();
              *(v39 + 32) = v38;
              *(v39 + 40) = v37;
              *(v39 + 96) = v40;
              *(v39 + 104) = v41;
              *(v39 + 64) = v41;
              *(v39 + 72) = v33;
              *(v39 + 80) = v32;
              *(v39 + 136) = v40;
              *(v39 + 144) = v41;
              *(v39 + 112) = a2;
              *(v39 + 120) = a3;
              goto LABEL_9;
            }
          }
        }
      }
    }
  }

  v42 = qword_27F4FBB40;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = sub_2528C08B0();
  __swift_project_value_buffer(v43, qword_27F5025C8);

  v44 = sub_2528C0890();
  v45 = sub_2528C0D10();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v52 = v47;
    *v46 = 136315138;
    sub_25274A948();
    v48 = sub_2528C08F0();
    v50 = sub_2527389AC(v48, v49, &v52);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_252711000, v44, v45, "Generated title tokens: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x2530A8D80](v47, -1, -1);
    MEMORY[0x2530A8D80](v46, -1, -1);
  }

  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFC48, &qword_2528D4CF0);
  sub_25272275C(&qword_27F4FFC50, &qword_27F4FFC48, &qword_2528D4CF0, MEMORY[0x277D834C0]);
  sub_25286FAE8();
  v26 = sub_2528C0AC0();
LABEL_22:

  return v26;
}

uint64_t _s14HomeAppIntents22ShowDeviceResultIntentV23getUserSpecificityTitle4from07successE5UUIDs06failedeN013stateSnapshot06matterQ019includeDotSeparatorSSSgSayAA0iJ0OG_Say10Foundation4UUIDVGAR0A9DataModel05StateQ0VAS06MatterzQ0VSbtFZ_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v318 = a6;
  v357 = a1;
  v316 = sub_2528BF070();
  v324 = *(v316 - 8);
  MEMORY[0x28223BE20](v316);
  v315 = &v286 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = sub_2528BF030();
  v332 = *(v314 - 8);
  MEMORY[0x28223BE20](v314);
  v313 = &v286 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528BED10();
  MEMORY[0x28223BE20](v11 - 8);
  v297 = &v286 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2528C09C0();
  MEMORY[0x28223BE20](v13 - 8);
  v296 = &v286 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = sub_2528BEE30();
  v350 = *(v338 - 8);
  MEMORY[0x28223BE20](v338);
  v337 = &v286 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD660, &qword_2528D4D00);
  MEMORY[0x28223BE20](v16 - 8);
  v306 = &v286 - v17;
  v305 = sub_2528BF9D0();
  v18 = *(v305 - 8);
  v19 = MEMORY[0x28223BE20](v305);
  v304 = &v286 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v303 = &v286 - v21;
  v348 = sub_2528C0020();
  v22 = *(v348 - 8);
  v23 = MEMORY[0x28223BE20](v348);
  v298 = &v286 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v310 = &v286 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v286 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v331 = &v286 - v31;
  MEMORY[0x28223BE20](v30);
  v353 = &v286 - v32;
  v358 = sub_2528BECF0();
  v33 = *(v358 - 8);
  v34 = MEMORY[0x28223BE20](v358);
  v322 = &v286 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v328 = &v286 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v327 = &v286 - v39;
  MEMORY[0x28223BE20](v38);
  v355 = &v286 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF948, &qword_2528D4208);
  MEMORY[0x28223BE20](v41 - 8);
  v336 = &v286 - v42;
  v341 = sub_2528BF240();
  v43 = *(v341 - 8);
  MEMORY[0x28223BE20](v341);
  v329 = &v286 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = a2;

  sub_252737028(v45);
  v46 = v364;
  v47 = a4;
  v362 = a4;
  v48 = sub_2527A62F8(sub_25286FB90, v361, v364);
  v360 = a5;
  v346 = v46;
  v49 = sub_2527A62F8(sub_25286FBBC, v359, v46);
  v347 = 0;
  v364 = v48;
  v320 = v48;

  v319 = v49;
  sub_2527378C0(v50);
  v51 = v364;
  v52 = sub_252790EE4(MEMORY[0x277D84F90]);
  v351 = v52;
  v54 = *(v357 + 16);
  v349 = v51;
  v354 = v54;
  if (!v54)
  {
LABEL_161:

    v277 = v351;
    v278 = v351[2];

    if (v278)
    {
      v279 = sub_252786CBC(1);
      if (v280 & 1) != 0 || v277[2] && (v279 = sub_252786CBC(0), (v281))
      {
        v282 = (v277[7] + 16 * v279);
        v283 = *v282;
        v278 = v282[1];
      }

      else
      {
        v283 = 0;
        v278 = 0;
      }
    }

    else
    {
      v283 = 0;
    }

    v284 = _s14HomeAppIntents22ShowDeviceResultIntentV22composedLocalizedTitle11titleTokens6device19includeDotSeparatorSSSDyAA15UserSpecificityOSSG_SSSgSbtFZ_0(v277, v283, v278, v318 & 1);
    swift_bridgeObjectRelease_n();
LABEL_169:

    return v284;
  }

  v352 = v357 + 32;
  v343 = v51 + 4;
  v356 = v33 + 16;
  v333 = (v33 + 56);
  v342 = (v33 + 48);
  v340 = (v33 + 32);
  v289 = v332 + 16;
  v302 = v324 + 16;
  v301 = v324 + 8;
  v288 = (v332 + 8);
  v357 = v33 + 8;
  v335 = (v350 + 8);
  v294 = v22 + 16;
  v299 = (v22 + 8);
  v292 = v18 + 16;
  v291 = v18 + 32;
  v290 = (v22 + 48);
  v287 = (v22 + 32);
  v293 = (v18 + 8);
  v317 = v43 + 16;
  v334 = (v43 + 56);
  v326 = (v43 + 48);
  v312 = (v43 + 32);
  v311 = (v43 + 8);
  *&v53 = 134217984;
  v300 = v53;
  *&v53 = 136315138;
  v339 = v53;
  v321 = v47;
  v345 = v18;
  v55 = v348;
  v295 = v22;
  v330 = v29;
  v56 = v353;
  v325 = v33;
  v57 = 0;
  v344 = v43;
  v58 = v47;
  while (1)
  {
    v60 = *(v352 + v57);
    if (v60 > 2)
    {
      break;
    }

    if (*(v352 + v57))
    {
      v350 = v57;
      if (v60 == 1)
      {
        if (v349[2])
        {
          sub_25276E828(v343, &v364);
          __swift_project_boxed_opaque_existential_0(&v364, v365);
          v61 = sub_2528BFB30();
          if (*(v61 + 16))
          {
            v62 = v336;
            v63 = v341;
            (*(v43 + 16))(v336, v61 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v341);
            v64 = 0;
          }

          else
          {
            v64 = 1;
            v62 = v336;
            v63 = v341;
          }

          (*v334)(v62, v64, 1, v63);
          __swift_destroy_boxed_opaque_existential_0Tm(&v364);
          if ((*v326)(v62, 1, v63) != 1)
          {
            (*v312)(v329, v62, v341);
            v211 = v58;
            if (v349[2] == 1)
            {
              v212 = sub_2528BF200();
            }

            else
            {
              v212 = sub_2528BF210();
            }

            v239 = v212;
            v240 = v213;
            v241 = v351;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v364 = v241;
            v243 = sub_252786CBC(1);
            v245 = v241[2];
            v246 = (v244 & 1) == 0;
            v96 = __OFADD__(v245, v246);
            v247 = v245 + v246;
            if (v96)
            {
              goto LABEL_175;
            }

            v248 = v244;
            if (v241[3] >= v247)
            {
              v56 = v353;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v276 = v243;
                sub_2527E2980();
                v56 = v353;
                v243 = v276;
              }

              v18 = v345;
            }

            else
            {
              sub_2527E0264(v247, isUniquelyReferenced_nonNull_native);
              v243 = sub_252786CBC(1);
              if ((v248 & 1) != (v249 & 1))
              {
                goto LABEL_180;
              }

              v18 = v345;
              v56 = v353;
            }

            v58 = v211;
            v250 = v364;
            v351 = v364;
            if (v248)
            {
              v251 = (v364[7] + 16 * v243);
              *v251 = v239;
              v251[1] = v240;

              v52 = (*v311)(v329, v341);
            }

            else
            {
              v364[(v243 >> 6) + 8] |= 1 << v243;
              *(v250[6] + v243) = 1;
              v252 = (v250[7] + 16 * v243);
              *v252 = v239;
              v252[1] = v240;
              v52 = (*v311)(v329, v341);
              v253 = v250[2];
              v96 = __OFADD__(v253, 1);
              v254 = v253 + 1;
              if (v96)
              {
                goto LABEL_179;
              }

              v250[2] = v254;
            }

            v55 = v348;
            goto LABEL_154;
          }
        }

        else
        {
          v62 = v336;
          (*v334)(v336, 1, 1, v341);
        }

        sub_2527213D8(v62, &qword_27F4FF948, &qword_2528D4208);
        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v190 = sub_2528C08B0();
        __swift_project_value_buffer(v190, qword_27F5025C8);
        v191 = v346;

        v155 = sub_2528C0890();
        v192 = sub_2528C0CF0();

        if (os_log_type_enabled(v155, v192))
        {
          LODWORD(i) = v192;
          v193 = v58;
          v194 = swift_slowAlloc();
          v195 = swift_slowAlloc();
          v196 = v195;
          v364 = v195;
          *v194 = v339;
          v197 = *(v191 + 16);
          if (v197)
          {
            v307 = v195;
            v308 = v194;
            v309 = v155;
            v363 = MEMORY[0x277D84F90];
            sub_25282EFBC(0, v197, 0);
            v198 = v363;
            v199 = v191 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
            v200 = *(v325 + 72);
            v201 = *(v325 + 16);
            v202 = v358;
            do
            {
              v203 = v355;
              v201(v355, v199, v202);
              v204 = sub_2528BECB0();
              v202 = v358;
              v205 = v204;
              v207 = v206;
              (*v357)(v203, v358);
              v363 = v198;
              v209 = *(v198 + 16);
              v208 = *(v198 + 24);
              if (v209 >= v208 >> 1)
              {
                sub_25282EFBC((v208 > 1), v209 + 1, 1);
                v202 = v358;
                v198 = v363;
              }

              *(v198 + 16) = v209 + 1;
              v210 = v198 + 16 * v209;
              *(v210 + 32) = v205;
              *(v210 + 40) = v207;
              v199 += v200;
              --v197;
            }

            while (v197);
            v58 = v321;
            v55 = v348;
            v43 = v344;
            v155 = v309;
            v194 = v308;
            v196 = v307;
          }

          else
          {
            v198 = MEMORY[0x277D84F90];
            v58 = v193;
          }

          v260 = MEMORY[0x2530A81A0](v198, MEMORY[0x277D837D0]);
          v262 = v261;

          v263 = sub_2527389AC(v260, v262, &v364);

          *(v194 + 4) = v263;
          _os_log_impl(&dword_252711000, v155, i, "Unable to find serviceKind for devices: %s", v194, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v196);
          MEMORY[0x2530A8D80](v196, -1, -1);
          MEMORY[0x2530A8D80](v194, -1, -1);

          v18 = v345;
          v29 = v330;
          goto LABEL_153;
        }

        goto LABEL_107;
      }

      MEMORY[0x28223BE20](v52);
      *(&v286 - 2) = v58;
      v100 = v347;
      sub_2527A6CF4(sub_25286FF60, v346, v56);
      v347 = v100;
      v101 = *v342;
      v102 = v358;
      v103 = (*v342)(v56, 1, v358);
      if (v103 == 1)
      {
        v104 = sub_2527213D8(v56, &qword_27F4FC628, &qword_2528C4750);
      }

      else
      {
        v111 = v327;
        (*v340)(v327, v56, v102);
        v112 = sub_2528BF3B0();
        if (*(v112 + 16))
        {
          v113 = sub_252785C40(v111);
          if (v114)
          {
            v115 = v111;
            v116 = v295;
            v117 = v310;
            (*(v295 + 16))(v310, *(v112 + 56) + *(v295 + 72) * v113, v55);

            v118 = sub_2528C0000();
            v120 = v119;
            v121 = v351;
            v122 = swift_isUniquelyReferenced_nonNull_native();
            v364 = v121;
            sub_25278C4B8(v118, v120, 2, v122);
            v351 = v364;
            v123 = v117;
            v29 = v330;
            (*(v116 + 8))(v123, v55);
            v124 = v115;
            v43 = v344;
            v52 = (*v357)(v124, v358);
LABEL_153:
            v56 = v353;
LABEL_154:
            v57 = v350;
            goto LABEL_5;
          }
        }

        v102 = v358;
        v104 = (*v357)(v111, v358);
      }

      MEMORY[0x28223BE20](v104);
      *(&v286 - 2) = v58;
      v136 = v331;
      v137 = v347;
      sub_2527A6CF4(sub_25286FBE8, v346, v331);
      v347 = v137;
      if (v101(v136, 1, v102) == 1)
      {
        sub_2527213D8(v136, &qword_27F4FC628, &qword_2528C4750);
LABEL_71:
        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v153 = sub_2528C08B0();
        __swift_project_value_buffer(v153, qword_27F5025C8);
        v154 = v346;

        v155 = sub_2528C0890();
        v156 = sub_2528C0CF0();

        if (os_log_type_enabled(v155, v156))
        {
          v157 = v58;
          v158 = swift_slowAlloc();
          i = swift_slowAlloc();
          v364 = i;
          *v158 = v339;
          v159 = *(v154 + 16);
          if (v159)
          {
            v307 = v158;
            LODWORD(v308) = v156;
            v309 = v155;
            v363 = MEMORY[0x277D84F90];
            sub_25282EFBC(0, v159, 0);
            v160 = v363;
            v161 = v154 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
            v162 = *(v325 + 72);
            v163 = *(v325 + 16);
            v164 = v358;
            do
            {
              v165 = v355;
              v163(v355, v161, v164);
              v166 = sub_2528BECB0();
              v164 = v358;
              v167 = v166;
              v169 = v168;
              (*v357)(v165, v358);
              v363 = v160;
              v171 = *(v160 + 16);
              v170 = *(v160 + 24);
              if (v171 >= v170 >> 1)
              {
                sub_25282EFBC((v170 > 1), v171 + 1, 1);
                v164 = v358;
                v160 = v363;
              }

              *(v160 + 16) = v171 + 1;
              v172 = v160 + 16 * v171;
              *(v172 + 32) = v167;
              *(v172 + 40) = v169;
              v161 += v162;
              --v159;
            }

            while (v159);
            v58 = v321;
            v29 = v330;
            v43 = v344;
            v155 = v309;
            LOBYTE(v156) = v308;
            v158 = v307;
          }

          else
          {
            v160 = MEMORY[0x277D84F90];
            v58 = v157;
          }

          v255 = MEMORY[0x2530A81A0](v160, MEMORY[0x277D837D0]);
          v257 = v256;

          v258 = sub_2527389AC(v255, v257, &v364);

          *(v158 + 4) = v258;
          _os_log_impl(&dword_252711000, v155, v156, "Received user specificity for group, but unable to find a static service group with any of the given IDs: %s", v158, 0xCu);
          v259 = i;
          __swift_destroy_boxed_opaque_existential_0Tm(i);
          MEMORY[0x2530A8D80](v259, -1, -1);
          MEMORY[0x2530A8D80](v158, -1, -1);

          v18 = v345;
          v55 = v348;
          goto LABEL_153;
        }

LABEL_107:

        goto LABEL_153;
      }

      v138 = v328;
      (*v340)(v328, v136, v102);
      v139 = sub_2528BF370();
      if (!*(v139 + 16) || (v140 = sub_252785C40(v138), (v141 & 1) == 0))
      {

        (*v357)(v138, v358);
        goto LABEL_71;
      }

      v142 = v304;
      v143 = v305;
      (*(v18 + 16))(v304, *(v139 + 56) + *(v18 + 72) * v140, v305);

      v144 = v303;
      (*(v18 + 32))(v303, v142, v143);
      v145 = sub_2528BF3B0();
      v146 = sub_2528668B4(v145);
      MEMORY[0x28223BE20](v146);
      *(&v286 - 2) = v144;
      v147 = v306;
      v148 = v347;
      sub_2527A6EF4(sub_25286FC40, v146, v306);
      v347 = v148;

      v149 = v147;
      v55 = v348;
      if ((*v290)(v149, 1, v348) == 1)
      {
        (*v357)(v328, v358);
        sub_2527213D8(v149, &qword_27F4FD660, &qword_2528D4D00);
        (*v293)(v144, v143);
        v43 = v344;
        goto LABEL_71;
      }

      v264 = v298;
      (*v287)(v298, v149, v55);
      v265 = sub_2528C0000();
      v267 = v266;
      v268 = v351;
      v269 = swift_isUniquelyReferenced_nonNull_native();
      v364 = v268;
      sub_25278C4B8(v265, v267, 2, v269);
      v351 = v364;
      (*v299)(v264, v55);
      (*v357)(v328, v358);
      v52 = (*v293)(v144, v143);
      v56 = v353;
      v57 = v350;
      goto LABEL_4;
    }

    v74 = v29;
    v75 = v349;
    if (v349[2] >= 2uLL)
    {
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v76 = sub_2528C08B0();
      __swift_project_value_buffer(v76, qword_27F5025C8);

      v77 = sub_2528C0890();
      v78 = sub_2528C0CF0();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = v300;
        *(v79 + 4) = v75[2];

        _os_log_impl(&dword_252711000, v77, v78, "Found more than one tile: %ld belonging to the Notice, but the userSpecificity requires displaying deviceName, showing the first tile's name", v79, 0xCu);
        MEMORY[0x2530A8D80](v79, -1, -1);
      }

      else
      {
      }

      v56 = v353;
    }

    if (v75[2])
    {
      v173 = v58;
      sub_25276E828(v343, &v364);
      __swift_project_boxed_opaque_existential_0(&v364, v365);
      v174 = sub_2528BFB40();
      v176 = v175;
      __swift_destroy_boxed_opaque_existential_0Tm(&v364);
      v177 = v351;
      v178 = swift_isUniquelyReferenced_nonNull_native();
      v364 = v177;
      v52 = sub_252786CBC(0);
      v180 = v177[2];
      v181 = (v179 & 1) == 0;
      v96 = __OFADD__(v180, v181);
      v182 = v180 + v181;
      if (v96)
      {
        goto LABEL_173;
      }

      v183 = v179;
      if (v177[3] >= v182)
      {
        v56 = v353;
        if ((v178 & 1) == 0)
        {
          v275 = v52;
          sub_2527E2980();
          v56 = v353;
          v52 = v275;
        }

        v18 = v345;
      }

      else
      {
        sub_2527E0264(v182, v178);
        v52 = sub_252786CBC(0);
        if ((v183 & 1) != (v184 & 1))
        {
          goto LABEL_180;
        }

        v18 = v345;
        v56 = v353;
      }

      v58 = v173;
      v185 = v364;
      v29 = v74;
      v351 = v364;
      if (v183)
      {
        v186 = (v364[7] + 16 * v52);
        *v186 = v174;
        v186[1] = v176;
      }

      else
      {
        v364[(v52 >> 6) + 8] |= 1 << v52;
        *(v185[6] + v52) = 0;
        v187 = (v185[7] + 16 * v52);
        *v187 = v174;
        v187[1] = v176;
        v188 = v185[2];
        v96 = __OFADD__(v188, 1);
        v189 = v188 + 1;
        if (v96)
        {
          goto LABEL_176;
        }

        v185[2] = v189;
      }

      v55 = v348;
    }

    else
    {
      v18 = v345;
      v55 = v348;
    }

LABEL_5:
    if (++v57 == v354)
    {
      goto LABEL_161;
    }
  }

  if (v60 != 3)
  {
    if (v60 != 4)
    {
      if (!v349[2])
      {
        (*v333)(v29, 1, 1, v358);
LABEL_116:
        v52 = sub_2527213D8(v29, &qword_27F4FC628, &qword_2528C4750);
        goto LABEL_5;
      }

      v350 = v57;
      sub_25276E828(v343, &v364);
      __swift_project_boxed_opaque_existential_0(&v364, v365);
      v105 = sub_2528BFB50();
      v106 = 0;
      v107 = 0;
      v108 = 1 << *(v105 + 32);
      v109 = v332;
      while (1)
      {
        v110 = *(v105 + 8 * v107 + 56);
        if (v110)
        {
          break;
        }

        ++v107;
        v106 -= 64;
        if ((v108 + 63) >> 6 == v107)
        {
          goto LABEL_69;
        }
      }

      v150 = __clz(__rbit64(v110));
      if (v150 - v108 == v106)
      {
LABEL_69:
        v151 = 1;
        v152 = v358;
        goto LABEL_114;
      }

      v152 = v358;
      if (-v106 < 0)
      {
        goto LABEL_177;
      }

      v214 = v150 - v106;
      if (v214 >= v108)
      {
        goto LABEL_177;
      }

      if (((*(v105 + 56 + 8 * (v107 & 0x3FFFFFFFFFFFFFFLL)) >> v150) & 1) == 0)
      {
        goto LABEL_178;
      }

      (*(v325 + 16))(v29, *(v105 + 48) + *(v325 + 72) * v214, v358);
      v151 = 0;
LABEL_114:

      (*v333)(v29, v151, 1, v152);
      __swift_destroy_boxed_opaque_existential_0Tm(&v364);
      if ((*v342)(v29, 1, v152) == 1)
      {
        v56 = v353;
        v57 = v350;
        goto LABEL_116;
      }

      v215 = v322;
      (*v340)(v322, v29, v152);
      v216 = sub_2528BF320();
      if (!*(v216 + 16) || (v217 = sub_252785C40(v215), (v218 & 1) == 0))
      {

        v52 = (*v357)(v215, v358);
        goto LABEL_153;
      }

      (*(v109 + 16))(v313, *(v216 + 56) + *(v109 + 72) * v217, v314);

      v219 = sub_2528BEFD0();
      if (v219)
      {
        v220 = v219;
        v221 = v219 + 56;
        v222 = 1 << *(v219 + 32);
        if (v222 < 64)
        {
          v223 = ~(-1 << v222);
        }

        else
        {
          v223 = -1;
        }

        v224 = v223 & *(v219 + 56);
        v225 = (v222 + 63) >> 6;

        v227 = 0;
        v228 = MEMORY[0x277D84F90];
        for (i = v226; v224; v220 = i)
        {
LABEL_129:
          v230 = v324;
          v231 = v315;
          v232 = v316;
          (*(v324 + 16))(v315, v220[6] + *(v324 + 72) * (__clz(__rbit64(v224)) | (v227 << 6)), v316);
          v233 = sub_2528BF050();
          v235 = v234;
          (*(v230 + 8))(v231, v232);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v228 = sub_252737D40(0, *(v228 + 2) + 1, 1, v228);
          }

          v237 = *(v228 + 2);
          v236 = *(v228 + 3);
          if (v237 >= v236 >> 1)
          {
            v228 = sub_252737D40((v236 > 1), v237 + 1, 1, v228);
          }

          v224 &= v224 - 1;
          *(v228 + 2) = v237 + 1;
          v238 = &v228[16 * v237];
          *(v238 + 4) = v233;
          *(v238 + 5) = v235;
        }

        v18 = v345;
        while (1)
        {
          v229 = v227 + 1;
          if (__OFADD__(v227, 1))
          {
            __break(1u);
            goto LABEL_172;
          }

          if (v229 >= v225)
          {
            break;
          }

          v224 = *(v221 + 8 * v229);
          ++v227;
          if (v224)
          {
            v227 = v229;
            goto LABEL_129;
          }
        }

        if (*(v228 + 2))
        {
          v270 = *(v228 + 4);
          v271 = *(v228 + 5);

          v272 = v351;
          v273 = swift_isUniquelyReferenced_nonNull_native();
          v364 = v272;
          sub_25278C4B8(v270, v271, 5, v273);
          v351 = v364;
          (*v288)(v313, v314);
          v52 = (*v357)(v322, v358);
          v55 = v348;
          v58 = v321;
          v29 = v330;
          v56 = v353;
          v43 = v344;
          goto LABEL_154;
        }

        v55 = v348;
        v58 = v321;
        v29 = v330;
        v56 = v353;
        v43 = v344;
      }

      else
      {
        v56 = v353;
      }

      (*v288)(v313, v314);
      v52 = (*v357)(v322, v358);
      goto LABEL_154;
    }

    v65 = v349[2];
    if (v65)
    {
      v66 = v343;
      v67 = MEMORY[0x277D84F90];
      do
      {
        sub_25276E828(v66, &v364);
        __swift_project_boxed_opaque_existential_0(&v364, v365);
        v69 = sub_2528BFB60();
        v71 = v70;
        __swift_destroy_boxed_opaque_existential_0Tm(&v364);
        if (v71)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_252737D40(0, *(v67 + 2) + 1, 1, v67);
          }

          v73 = *(v67 + 2);
          v72 = *(v67 + 3);
          if (v73 >= v72 >> 1)
          {
            v67 = sub_252737D40((v72 > 1), v73 + 1, 1, v67);
          }

          *(v67 + 2) = v73 + 1;
          v68 = &v67[16 * v73];
          *(v68 + 4) = v69;
          *(v68 + 5) = v71;
        }

        v66 += 40;
        --v65;
      }

      while (v65);
    }

    else
    {
      v67 = MEMORY[0x277D84F90];
    }

    v129 = sub_252743FCC(v67);

    if (*(v129 + 16) > 1uLL)
    {

      sub_2528C0950();
      sub_2528BED00();
      v284 = sub_2528C0A00();
      goto LABEL_169;
    }

    v130 = sub_2528C0E00();
    if (v130 == 1 << *(v129 + 32))
    {
    }

    else
    {
      v131 = sub_25286A47C(v130, *(v129 + 36), 0, v129);
      v133 = v132;

      v134 = v351;
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v364 = v134;
      v52 = sub_25278C4B8(v131, v133, 4, v135);
      v351 = v364;
    }

    v18 = v345;
    v55 = v348;
    v56 = v353;
    v43 = v344;
    goto LABEL_5;
  }

  v80 = v337;
  sub_2528BF2F0();
  v81 = sub_2528BEE20();
  v83 = v82;
  (*v335)(v80, v338);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v84 = sub_2528C08B0();
  __swift_project_value_buffer(v84, qword_27F5025C8);

  v85 = sub_2528C0890();
  v86 = sub_2528C0D10();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = v58;
    v89 = swift_slowAlloc();
    v364 = v89;
    *v87 = v339;
    *(v87 + 4) = sub_2527389AC(v81, v83, &v364);
    _os_log_impl(&dword_252711000, v85, v86, "Found Home Name in user specificity: %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v89);
    v90 = v89;
    v58 = v88;
    v18 = v345;
    MEMORY[0x2530A8D80](v90, -1, -1);
    MEMORY[0x2530A8D80](v87, -1, -1);
  }

  v91 = v351;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v364 = v91;
  v52 = sub_252786CBC(3);
  v94 = v91[2];
  v95 = (v93 & 1) == 0;
  v96 = __OFADD__(v94, v95);
  v97 = v94 + v95;
  if (!v96)
  {
    v98 = v93;
    if (v91[3] >= v97)
    {
      v56 = v353;
      if ((v92 & 1) == 0)
      {
        v274 = v52;
        sub_2527E2980();
        v56 = v353;
        v52 = v274;
      }

      v55 = v348;
    }

    else
    {
      sub_2527E0264(v97, v92);
      v52 = sub_252786CBC(3);
      if ((v98 & 1) != (v99 & 1))
      {
        goto LABEL_180;
      }

      v55 = v348;
      v56 = v353;
    }

    v125 = v364;
    v351 = v364;
    if (v98)
    {
      v59 = (v364[7] + 16 * v52);
      *v59 = v81;
      v59[1] = v83;
    }

    else
    {
      v364[(v52 >> 6) + 8] |= 1 << v52;
      *(v125[6] + v52) = 3;
      v126 = (v125[7] + 16 * v52);
      *v126 = v81;
      v126[1] = v83;
      v127 = v125[2];
      v96 = __OFADD__(v127, 1);
      v128 = v127 + 1;
      if (v96)
      {
        goto LABEL_174;
      }

      v125[2] = v128;
    }

LABEL_4:
    v43 = v344;
    goto LABEL_5;
  }

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
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}

unint64_t sub_25286E9D8()
{
  result = qword_27F4FFA98;
  if (!qword_27F4FFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFA98);
  }

  return result;
}

unint64_t sub_25286EA30()
{
  result = qword_27F4FFAA0;
  if (!qword_27F4FFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFAA0);
  }

  return result;
}

unint64_t sub_25286EA88()
{
  result = qword_27F4FFAA8;
  if (!qword_27F4FFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFAA8);
  }

  return result;
}

unint64_t sub_25286EAE0()
{
  result = qword_27F4FFAB0;
  if (!qword_27F4FFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFAB0);
  }

  return result;
}

unint64_t sub_25286EB38()
{
  result = qword_27F4FFAB8;
  if (!qword_27F4FFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFAB8);
  }

  return result;
}

unint64_t sub_25286EB90()
{
  result = qword_27F4FFAC0;
  if (!qword_27F4FFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFAC0);
  }

  return result;
}

unint64_t sub_25286EBE4()
{
  result = qword_27F4FFAC8;
  if (!qword_27F4FFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFAC8);
  }

  return result;
}

unint64_t sub_25286EC38()
{
  result = qword_27F4FFAD0;
  if (!qword_27F4FFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFAD0);
  }

  return result;
}

unint64_t sub_25286EC90()
{
  result = qword_27F4FFAD8;
  if (!qword_27F4FFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFAD8);
  }

  return result;
}

unint64_t sub_25286ED54()
{
  result = qword_27F4FFAE0;
  if (!qword_27F4FFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFAE0);
  }

  return result;
}

unint64_t sub_25286EDAC()
{
  result = qword_27F4FFAE8;
  if (!qword_27F4FFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFAE8);
  }

  return result;
}

unint64_t sub_25286EE04()
{
  result = qword_27F4FFAF0;
  if (!qword_27F4FFAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFAF0);
  }

  return result;
}

unint64_t sub_25286EEA0()
{
  result = qword_27F4FFB08;
  if (!qword_27F4FFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFB08);
  }

  return result;
}

unint64_t sub_25286EEF8()
{
  result = qword_27F4FFB10;
  if (!qword_27F4FFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFB10);
  }

  return result;
}

unint64_t sub_25286EF50()
{
  result = qword_27F4FFB18;
  if (!qword_27F4FFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFB18);
  }

  return result;
}

unint64_t sub_25286EFA8()
{
  result = qword_27F4FFB20;
  if (!qword_27F4FFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFB20);
  }

  return result;
}

unint64_t sub_25286F000()
{
  result = qword_27F4FFB28;
  if (!qword_27F4FFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFB28);
  }

  return result;
}

unint64_t sub_25286F054()
{
  result = qword_27F4FFB30;
  if (!qword_27F4FFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFB30);
  }

  return result;
}

unint64_t sub_25286F0A8()
{
  result = qword_27F4FFB38;
  if (!qword_27F4FFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFB38);
  }

  return result;
}

unint64_t sub_25286F100()
{
  result = qword_27F4FFB40;
  if (!qword_27F4FFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFB40);
  }

  return result;
}

unint64_t sub_25286F170()
{
  result = qword_27F4FFB48;
  if (!qword_27F4FFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFB48);
  }

  return result;
}

unint64_t sub_25286F1C8()
{
  result = qword_27F4FFB50;
  if (!qword_27F4FFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFB50);
  }

  return result;
}

void sub_25286F28C(uint64_t a1)
{
  sub_25286F804(319, &qword_27F4FFB78, &qword_27F4FFA80, &qword_2528D44E8, sub_25286F498);
  if (v1 <= 0x3F)
  {
    sub_25286F804(319, &qword_27F4FFB90, &qword_27F4FE7A8, &unk_2528CD998, sub_25286F5A0);
    if (v2 <= 0x3F)
    {
      sub_25286F804(319, &qword_27F4FFBA0, &qword_27F4FFA78, &qword_2528D44E0, sub_25286F624);
      if (v3 <= 0x3F)
      {
        sub_25286F804(319, &qword_27F4FFBB0, &qword_27F4FD608, &qword_2528C8708, sub_25286F6A8);
        if (v4 <= 0x3F)
        {
          sub_25286F804(319, &qword_27F4FFBC8, &qword_27F4FDA58, &unk_2528C9610, sub_25286F780);
          if (v5 <= 0x3F)
          {
            sub_25286F804(319, &qword_27F4FFBD8, &qword_27F4FFBE0, &unk_2528D4BC0, sub_25286F874);
            if (v6 <= 0x3F)
            {
              sub_25286F8F8(319);
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

unint64_t sub_25286F498()
{
  result = qword_27F4FFB80;
  if (!qword_27F4FFB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FFA80, &qword_2528D44E8);
    sub_25286F51C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFB80);
  }

  return result;
}

unint64_t sub_25286F51C()
{
  result = qword_27F4FFB88;
  if (!qword_27F4FFB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FFB60, &qword_2528D4B58);
    sub_25286F0A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFB88);
  }

  return result;
}

unint64_t sub_25286F5A0()
{
  result = qword_27F4FFB98;
  if (!qword_27F4FFB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FE7A8, &unk_2528CD998);
    sub_25272324C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFB98);
  }

  return result;
}

unint64_t sub_25286F624()
{
  result = qword_27F4FFBA8;
  if (!qword_27F4FFBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FFA78, &qword_2528D44E0);
    sub_2527FE0F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFBA8);
  }

  return result;
}

unint64_t sub_25286F6A8()
{
  result = qword_27F4FFBB8;
  if (!qword_27F4FFBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD608, &qword_2528C8708);
    sub_25286F72C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFBB8);
  }

  return result;
}

unint64_t sub_25286F72C()
{
  result = qword_27F4FFBC0;
  if (!qword_27F4FFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFBC0);
  }

  return result;
}

unint64_t sub_25286F780()
{
  result = qword_27F4FFBD0;
  if (!qword_27F4FFBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FDA58, &unk_2528C9610);
    sub_2527566A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFBD0);
  }

  return result;
}

void sub_25286F804(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = sub_2528BE830();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25286F874()
{
  result = qword_27F4FFBE8;
  if (!qword_27F4FFBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FFBE0, &unk_2528D4BC0);
    sub_25286EC38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFBE8);
  }

  return result;
}

void sub_25286F8F8(uint64_t a1)
{
  if (!qword_27F4FFBF0)
  {
    sub_2528BF400();
    v1 = sub_2528C0DC0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4FFBF0);
    }
  }
}

uint64_t sub_25286F980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25286F9E8()
{
  result = qword_27F4FFBF8;
  if (!qword_27F4FFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFBF8);
  }

  return result;
}

uint64_t sub_25286FA3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25286FA9C()
{
  result = qword_27F4FD298;
  if (!qword_27F4FD298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4FD298);
  }

  return result;
}

unint64_t sub_25286FAE8()
{
  result = qword_27F4FFC58;
  if (!qword_27F4FFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFC58);
  }

  return result;
}

unint64_t sub_25286FB3C()
{
  result = qword_27F4FFC68;
  if (!qword_27F4FFC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFC68);
  }

  return result;
}

uint64_t sub_25286FC60(uint64_t a1)
{
  sub_2528BF9D0();
  sub_25286FE38(&qword_27F4FD238, MEMORY[0x277D15AC0], MEMORY[0x277D15AD0]);
  return sub_2528C0930() & 1;
}

void *sub_25286FD0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[4];
  v7[2] = v2[3];
  v7[3] = a1;
  v7[4] = v5;
  result = sub_2527A5FA8(sub_25286FD64, v7, v4);
  *a2 = result;
  return result;
}

uint64_t sub_25286FE38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25286FE80()
{
  result = qword_27F4FFC90;
  if (!qword_27F4FFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFC90);
  }

  return result;
}

unint64_t sub_25286FF08()
{
  result = qword_27F4FFC98;
  if (!qword_27F4FFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FFC98);
  }

  return result;
}

uint64_t Int.uint32.getter(uint64_t a1)
{
  v1 = a1;
  if (a1 < 0x100000000)
  {
    if (a1 < 0)
    {
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v6 = sub_2528C08B0();
      __swift_project_value_buffer(v6, qword_27F5025C8);
      v7 = sub_2528C0890();
      v8 = sub_2528C0D00();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 134217984;
        *(v9 + 4) = v1;
        _os_log_impl(&dword_252711000, v7, v8, "Tried to convert a Int lower than 0 to UInt32: %ld", v9, 0xCu);
        MEMORY[0x2530A8D80](v9, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v2 = sub_2528C08B0();
    __swift_project_value_buffer(v2, qword_27F5025C8);
    v3 = sub_2528C0890();
    v4 = sub_2528C0D00();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_252711000, v3, v4, "Tried to convert a Int larger than max to UInt32: %ld", v5, 0xCu);
      MEMORY[0x2530A8D80](v5, -1, -1);
    }

    return 0xFFFFFFFFLL;
  }

  return v1;
}

Swift::Int __swiftcall Int.init(uint32:)(Swift::UInt32 uint32)
{
  *&uint32 = uint32;
  LODWORD(result) = uint32;
  return result;
}

Swift::Int_optional __swiftcall Int.init(uint32:)(Swift::UInt32_optional uint32)
{
  v1 = *&uint32.value & 0x100000000;
  if ((*&uint32.value & 0x100000000) != 0)
  {
    *&uint32.value = 0;
  }

  else
  {
    *&uint32.value = uint32.value;
  }

  v2 = HIDWORD(v1);
  result.is_nil = v2;
  LODWORD(result.value) = uint32.value;
  BYTE4(result.value) = uint32.is_nil;
  return result;
}

uint64_t AttributeKind.rawValue.getter()
{
  result = 0x696C617551726961;
  switch(*v0)
  {
    case 1:
      return 0xD000000000000012;
    case 2:
      return result;
    case 3:
      return 0x4C79726574746162;
    case 4:
      return 0x656E746867697262;
    case 6:
      return 0xD000000000000012;
    case 7:
    case 8:
    case 0x22:
    case 0x32:
      return 0xD000000000000016;
    case 9:
    case 0x19:
    case 0x23:
      return 0xD000000000000013;
    case 0xA:
    case 0xF:
      return 0xD000000000000017;
    case 0xB:
      return 0x676E696772616863;
    case 0xC:
    case 0x10:
    case 0x11:
    case 0x31:
      return 0xD000000000000010;
    case 0xD:
      return 0x726F6C6F63;
    case 0xE:
      return 0x44746361746E6F63;
    case 0x13:
      return 0xD000000000000021;
    case 0x14:
      return 0x48746E6572727563;
    case 0x15:
      return 0x50746E6572727563;
    case 0x16:
      return 0xD00000000000001ALL;
    case 0x17:
      return 0xD000000000000012;
    case 0x1A:
      return 0xD000000000000012;
    case 0x1B:
      return 0x694C7265746C6966;
    case 0x1C:
      return 0x6573556E69;
    case 0x1D:
      return 0x657465446B61656CLL;
    case 0x1E:
      v3 = 0x4C746867696CLL;
      goto LABEL_32;
    case 0x1F:
      return 0x6574746142776F6CLL;
    case 0x20:
      return 0x65446E6F69746F6DLL;
    case 0x21:
      return 0x4C6C61727574616ELL;
    case 0x24:
    case 0x2A:
    case 0x2B:
      return 0xD000000000000011;
    case 0x25:
      v2 = 0x44656E6F7A6FLL;
      goto LABEL_37;
    case 0x26:
      return 0x736E654430316D70;
    case 0x27:
      v2 = 0x44355F326D70;
LABEL_37:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 0x28:
      result = 0x6E6F697469736F70;
      break;
    case 0x29:
      result = 0x7265776F70;
      break;
    case 0x2C:
      result = 0x6E6F697461746F72;
      break;
    case 0x2D:
      result = 6518386;
      break;
    case 0x2E:
      result = 0x7461727544746573;
      break;
    case 0x2F:
      result = 0x746544656B6F6D73;
      break;
    case 0x33:
      result = 0x6F44746567726174;
      break;
    case 0x34:
      result = 0xD000000000000014;
      break;
    case 0x35:
      result = 0xD000000000000029;
      break;
    case 0x36:
      result = 0x7548746567726174;
      break;
    case 0x37:
      result = 0x6F4C746567726174;
      break;
    case 0x38:
      result = 0x6F50746567726174;
      break;
    case 0x39:
      result = 0xD000000000000019;
      break;
    case 0x3A:
      result = 0xD00000000000001DLL;
      break;
    case 0x3B:
      result = 0xD000000000000012;
      break;
    case 0x3C:
      result = 0xD00000000000001ELL;
      break;
    case 0x3D:
      v3 = 0x4C7265746177;
LABEL_32:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7665000000000000;
      break;
    case 0x3E:
      result = 1701736302;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

HomeAppIntents::AttributeKind_optional __swiftcall AttributeKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C1070();

  v5 = 0;
  v6 = 45;
  switch(v3)
  {
    case 0:
      goto LABEL_59;
    case 1:
      v5 = 1;
      goto LABEL_59;
    case 2:
      v5 = 2;
      goto LABEL_59;
    case 3:
      v5 = 3;
      goto LABEL_59;
    case 4:
      v5 = 4;
      goto LABEL_59;
    case 5:
      v5 = 5;
      goto LABEL_59;
    case 6:
      v5 = 6;
      goto LABEL_59;
    case 7:
      v5 = 7;
      goto LABEL_59;
    case 8:
      v5 = 8;
      goto LABEL_59;
    case 9:
      v5 = 9;
      goto LABEL_59;
    case 10:
      v5 = 10;
      goto LABEL_59;
    case 11:
      v5 = 11;
      goto LABEL_59;
    case 12:
      v5 = 12;
      goto LABEL_59;
    case 13:
      v5 = 13;
      goto LABEL_59;
    case 14:
      v5 = 14;
      goto LABEL_59;
    case 15:
      v5 = 15;
      goto LABEL_59;
    case 16:
      v5 = 16;
      goto LABEL_59;
    case 17:
      v5 = 17;
      goto LABEL_59;
    case 18:
      v5 = 18;
      goto LABEL_59;
    case 19:
      v5 = 19;
      goto LABEL_59;
    case 20:
      v5 = 20;
      goto LABEL_59;
    case 21:
      v5 = 21;
      goto LABEL_59;
    case 22:
      v5 = 22;
      goto LABEL_59;
    case 23:
      v5 = 23;
      goto LABEL_59;
    case 24:
      v5 = 24;
      goto LABEL_59;
    case 25:
      v5 = 25;
      goto LABEL_59;
    case 26:
      v5 = 26;
      goto LABEL_59;
    case 27:
      v5 = 27;
      goto LABEL_59;
    case 28:
      v5 = 28;
      goto LABEL_59;
    case 29:
      v5 = 29;
      goto LABEL_59;
    case 30:
      v5 = 30;
      goto LABEL_59;
    case 31:
      v5 = 31;
      goto LABEL_59;
    case 32:
      v5 = 32;
      goto LABEL_59;
    case 33:
      v5 = 33;
      goto LABEL_59;
    case 34:
      v5 = 34;
      goto LABEL_59;
    case 35:
      v5 = 35;
      goto LABEL_59;
    case 36:
      v5 = 36;
      goto LABEL_59;
    case 37:
      v5 = 37;
      goto LABEL_59;
    case 38:
      v5 = 38;
      goto LABEL_59;
    case 39:
      v5 = 39;
      goto LABEL_59;
    case 40:
      v5 = 40;
      goto LABEL_59;
    case 41:
      v5 = 41;
      goto LABEL_59;
    case 42:
      v5 = 42;
      goto LABEL_59;
    case 43:
      v5 = 43;
      goto LABEL_59;
    case 44:
      v5 = 44;
LABEL_59:
      v6 = v5;
      break;
    case 45:
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    case 59:
      v6 = 59;
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    default:
      v6 = 63;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_252870A60(_WORD *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v2 >> 14;
  v5 = (v2 >> 8) & 0x3F;
  if (v4 != 1)
  {
    v5 = *a1;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1;
  }

  v7 = MEMORY[0x277D84FA0];
  switch(v3)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D161B8];
      goto LABEL_75;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D160A0];
      goto LABEL_75;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D160E8];
      goto LABEL_75;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D160A8];
      goto LABEL_75;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16210];
      goto LABEL_75;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D161C0];
      goto LABEL_75;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16238];
      goto LABEL_75;
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16240];
      goto LABEL_75;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D161D8];
      goto LABEL_75;
    case 10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16270];
      goto LABEL_75;
    case 11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16118];
      goto LABEL_75;
    case 12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D161F8];
      goto LABEL_75;
    case 13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v14 = sub_2528BFDE0();
      v15 = *(v14 - 8);
      v16 = *(v15 + 72);
      v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_2528C17E0;
      v19 = v18 + v17;
      v20 = *(v15 + 104);
      v20(v19, *MEMORY[0x277D162D8], v14);
      v21 = MEMORY[0x277D160B8];
      goto LABEL_82;
    case 14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D160F0];
      goto LABEL_75;
    case 15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16278];
      goto LABEL_75;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16178];
      goto LABEL_75;
    case 17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D162A8];
      goto LABEL_75;
    case 18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16220];
      goto LABEL_75;
    case 19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v14 = sub_2528BFDE0();
      v29 = *(v14 - 8);
      v16 = *(v29 + 72);
      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_2528C17E0;
      v19 = v18 + v30;
      v31 = MEMORY[0x277D162D0];
      goto LABEL_81;
    case 20:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16280];
      goto LABEL_75;
    case 21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16148];
      goto LABEL_75;
    case 22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D162B8];
      goto LABEL_75;
    case 23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D161C8];
      goto LABEL_75;
    case 24:
      if (v6 == 11)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
        v14 = sub_2528BFDE0();
        v29 = *(v14 - 8);
        v16 = *(v29 + 72);
        v46 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_2528C17E0;
        v19 = v18 + v46;
        v31 = MEMORY[0x277D16290];
LABEL_81:
        v20 = *(v29 + 104);
        v20(v19, *v31, v14);
        v21 = MEMORY[0x277D16330];
        goto LABEL_82;
      }

      if (v6 != 29)
      {
        return v7;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16218];
      goto LABEL_75;
    case 25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D161E0];
      goto LABEL_75;
    case 26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16250];
      goto LABEL_75;
    case 27:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16150];
      goto LABEL_75;
    case 28:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v22 = sub_2528BFDE0();
      v23 = *(v22 - 8);
      v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v25 = swift_allocObject();
      v26 = v25;
      *(v25 + 16) = xmmword_2528C3910;
      v27 = (v23 + 8);
      if (v6 == 20)
      {
        v28 = MEMORY[0x277D160C8];
      }

      else
      {
        v28 = MEMORY[0x277D16328];
      }

      (*(v23 + 104))(v25 + v24, *v28, v22);
      v7 = sub_252749788(v26);
      swift_setDeallocating();
      (*v27)(v26 + v24, v22);
      goto LABEL_76;
    case 29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16100];
      goto LABEL_75;
    case 30:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16190];
      goto LABEL_75;
    case 31:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16188];
      goto LABEL_75;
    case 32:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16138];
      goto LABEL_75;
    case 33:
    case 45:
    case 62:
      return v7;
    case 34:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16258];
      goto LABEL_75;
    case 35:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D161F0];
      goto LABEL_75;
    case 36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16198];
      goto LABEL_75;
    case 37:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16108];
      goto LABEL_75;
    case 38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D160D0];
      goto LABEL_75;
    case 39:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16110];
      goto LABEL_75;
    case 40:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16120];
      goto LABEL_75;
    case 41:
      if (v6 > 0x1E)
      {
        goto LABEL_89;
      }

      if (((1 << v6) & 0x4A800201) != 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
        v8 = sub_2528BFDE0();
        v9 = *(v8 - 8);
        v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v11 = swift_allocObject();
        v12 = v11;
        *(v11 + 16) = xmmword_2528C3910;
        v13 = MEMORY[0x277D16330];
LABEL_75:
        (*(v9 + 104))(v11 + v10, *v13, v8);
        v7 = sub_252749788(v12);
        swift_setDeallocating();
        (*(v9 + 8))(v12 + v10, v8);
        goto LABEL_76;
      }

      if (v6 != 2)
      {
        if (v6 != 8)
        {
LABEL_89:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
          v8 = sub_2528BFDE0();
          v9 = *(v8 - 8);
          v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
          v11 = swift_allocObject();
          v12 = v11;
          *(v11 + 16) = xmmword_2528C3910;
          v13 = MEMORY[0x277D160B0];
          goto LABEL_75;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
        v14 = sub_2528BFDE0();
        v50 = *(v14 - 8);
        v16 = *(v50 + 72);
        v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_2528C17E0;
        v19 = v18 + v51;
        v20 = *(v50 + 104);
        v20(v19, *MEMORY[0x277D16330], v14);
        v21 = MEMORY[0x277D160B0];
LABEL_82:
        v20(v19 + v16, *v21, v14);
        v7 = sub_252749788(v18);
        swift_setDeallocating();
LABEL_85:
        swift_arrayDestroy();
LABEL_76:
        swift_deallocClassInstance();
      }

      return v7;
    case 42:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D161A0];
      goto LABEL_75;
    case 43:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D161A8];
      goto LABEL_75;
    case 44:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16128];
      goto LABEL_75;
    case 46:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D160E0];
      goto LABEL_75;
    case 47:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16130];
      goto LABEL_75;
    case 48:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16230];
      goto LABEL_75;
    case 49:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16338];
      goto LABEL_75;
    case 50:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16260];
      goto LABEL_75;
    case 51:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16158];
      goto LABEL_75;
    case 52:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16200];
      goto LABEL_75;
    case 53:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v32 = sub_2528BFDE0();
      v41 = *(v32 - 8);
      v34 = *(v41 + 72);
      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_2528C35E0;
      v37 = v36 + v42;
      v38 = *(v41 + 104);
      v38(v37, *MEMORY[0x277D162C8], v32);
      v38(v37 + v34, *MEMORY[0x277D161E8], v32);
      v39 = 2 * v34;
      v40 = MEMORY[0x277D16228];
      goto LABEL_70;
    case 54:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16268];
      goto LABEL_75;
    case 55:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D162A0];
      goto LABEL_75;
    case 56:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16140];
      goto LABEL_75;
    case 57:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D162B0];
      goto LABEL_75;
    case 58:
      if (v6 == 29)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
        v32 = sub_2528BFDE0();
        v47 = *(v32 - 8);
        v48 = *(v47 + 72);
        v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_2528C35E0;
        v37 = v36 + v49;
        v38 = *(v47 + 104);
        v38(v37, *MEMORY[0x277D16298], v32);
        v38(v37 + v48, *MEMORY[0x277D161B0], v32);
        v38(v37 + 2 * v48, *MEMORY[0x277D16180], v32);
        v43 = 3 * v48;
        v44 = MEMORY[0x277D16170];
      }

      else
      {
        if (v6 != 11)
        {
          return v7;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
        v32 = sub_2528BFDE0();
        v33 = *(v32 - 8);
        v34 = *(v33 + 72);
        v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_2528C35E0;
        v37 = v36 + v35;
        v38 = *(v33 + 104);
        v38(v37, *MEMORY[0x277D16288], v32);
        v38(v37 + v34, *MEMORY[0x277D16180], v32);
        v39 = 2 * v34;
        v40 = MEMORY[0x277D16170];
LABEL_70:
        v38(v37 + v39, *v40, v32);
        v43 = v39 + v34;
        v44 = MEMORY[0x277D16330];
      }

      v38(v37 + v43, *v44, v32);
      v7 = sub_252749788(v36);
      swift_setDeallocating();
      goto LABEL_85;
    case 59:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D161D0];
      goto LABEL_75;
    case 60:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D162C0];
      goto LABEL_75;
    case 61:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D160C0];
      goto LABEL_75;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v8 = sub_2528BFDE0();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      v12 = v11;
      *(v11 + 16) = xmmword_2528C3910;
      v13 = MEMORY[0x277D16208];
      goto LABEL_75;
  }
}

unint64_t sub_252873604(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  switch(*(v2 + 32) >> 1)
  {
    case 1:
      v32 = 0;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0xD000000000000015, 0x80000002528E6D50);
      goto LABEL_90;
    case 2:
      v32 = 0;
      MEMORY[0x2530A80B0](0x696C617551726961, 0xED0000203D207974);
      goto LABEL_90;
    case 3:
      sub_2528C0E70();

      v6 = 0x4C79726574746162;
      goto LABEL_34;
    case 4:
      v6 = 0x656E746867697262;
      goto LABEL_34;
    case 5:
      sub_2528C0E70();

      v14 = 0xD000000000000018;
      goto LABEL_92;
    case 6:
      v32 = 0;
      sub_2528C0E70();
      v27 = "carbonDioxideLevel = ";
      goto LABEL_73;
    case 7:
      v32 = 0;
      sub_2528C0E70();
      v10 = "carbonDioxidePeakLevel = ";
      goto LABEL_36;
    case 8:
      sub_2528C0E70();

      v14 = 0xD000000000000019;
      goto LABEL_92;
    case 9:
      v32 = 0;
      sub_2528C0E70();
      v11 = "carbonMonoxidePeakLevel = ";
      v12 = 0xD000000000000016;
      goto LABEL_87;
    case 0xA:
      v32 = 0;
      sub_2528C0E70();
      v11 = "chargingState = ";
      v12 = 0xD00000000000001ALL;
      goto LABEL_87;
    case 0xB:
      v32 = 0;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0xD000000000000010, 0x80000002528E6C70);
      goto LABEL_90;
    case 0xC:
    case 0x35:
      v14 = 0xD000000000000013;
      goto LABEL_92;
    case 0xD:
      v32 = 0;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0x203D20657568, 0xE600000000000000);
      sub_2528C0C70();
      MEMORY[0x2530A80B0](0x7461727574617320, 0xEE00203D206E6F69);
      goto LABEL_79;
    case 0xE:
      v14 = 0xD000000000000012;
      goto LABEL_92;
    case 0xF:
      v32 = 0;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0xD00000000000001ALL, 0x80000002528E6C10);
      goto LABEL_90;
    case 0x10:
      v32 = 0;
      sub_2528C0E70();
      v7 = "currentHorizontalTilt = ";
      v8 = 0xD000000000000013;
      goto LABEL_84;
    case 0x11:
      v13 = 0xD000000000000018;
      goto LABEL_69;
    case 0x12:
      v32 = 0;
      sub_2528C0E70();
      v7 = "currentHumidity = ";
      v8 = 0xD000000000000024;
      goto LABEL_84;
    case 0x13:
      v32 = 0;
      sub_2528C0E70();
      v16 = "currentHumidity = ";
      goto LABEL_64;
    case 0x14:
      v32 = 0;
      sub_2528C0E70();
      v7 = "currentPosition = ";
      v8 = 0xD000000000000013;
      goto LABEL_84;
    case 0x15:
      v13 = 0xD000000000000012;
      goto LABEL_69;
    case 0x16:
      v32 = 0;
      sub_2528C0E70();
      v7 = "currentTemperature = ";
      v8 = 0xD00000000000001DLL;
      goto LABEL_84;
    case 0x17:
      v32 = 0;
      sub_2528C0E70();
      v27 = "currentTemperature = ";
LABEL_73:
      v11 = (v27 - 32);
      v12 = 0xD000000000000015;
      goto LABEL_87;
    case 0x18:
      v32 = 0;
      sub_2528C0E70();
      v25 = 0xD000000000000018;
      v26 = 0x80000002528E6AE0;
      goto LABEL_48;
    case 0x19:
      v13 = 0xD000000000000016;
      goto LABEL_69;
    case 0x1A:
      v14 = 0xD000000000000015;
      goto LABEL_92;
    case 0x1B:
      v32 = 0;
      sub_2528C0E70();
      v16 = "filterLifeLevel = ";
LABEL_64:
      v11 = (v16 - 32);
      v12 = 0xD000000000000012;
      goto LABEL_87;
    case 0x1C:
      v32 = 0;
      sub_2528C0E70();
      v7 = "motionDetected = ";
      v8 = 0xD00000000000001DLL;
      goto LABEL_84;
    case 0x1D:
      v32 = 0;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0xD00000000000001DLL, 0x80000002528E6A60);
      goto LABEL_77;
    case 0x1E:
      v32 = 0;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0xD00000000000001DLL, 0x80000002528E6A60);
      goto LABEL_56;
    case 0x1F:
      v17 = 0x206573556E69;
      goto LABEL_39;
    case 0x20:
      v15 = 0x657465446B61656CLL;
      goto LABEL_58;
    case 0x21:
      v32 = 0;
      v9 = 0x4C746867696CLL;
      goto LABEL_17;
    case 0x22:
      v15 = 0x6574746142776F6CLL;
      goto LABEL_58;
    case 0x23:
      v14 = 0xD000000000000011;
      goto LABEL_92;
    case 0x24:
      v15 = 0x4C6C61727574616ELL;
      goto LABEL_58;
    case 0x25:
      v32 = 0;
      sub_2528C0E70();
      v10 = "nitrogenDioxideDensity = ";
LABEL_36:
      v11 = (v10 - 32);
      v12 = 0xD000000000000019;
      goto LABEL_87;
    case 0x26:
      v14 = 0xD000000000000016;
      goto LABEL_92;
    case 0x27:
      v14 = 0xD000000000000014;
      goto LABEL_92;
    case 0x28:
      v32 = 0;
      sub_2528C0E70();
      v24 = 0x44656E6F7A6FLL;
      goto LABEL_67;
    case 0x29:
      v32 = 0;
      sub_2528C0E70();
      v12 = 0x736E654430316D70;
      v18 = 0xEE00203D20797469;
      goto LABEL_88;
    case 0x2A:
      v32 = 0;
      sub_2528C0E70();
      v24 = 0x44355F326D70;
LABEL_67:
      v12 = v24 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      v18 = 0xEF203D2079746973;
      goto LABEL_88;
    case 0x2B:
      v32 = 0;
      sub_2528C0E70();
      v7 = "remainingDuration = ";
      v8 = 0xD000000000000010;
      goto LABEL_84;
    case 0x2C:
      v17 = 0x207265776F70;
LABEL_39:
      v15 = v17 & 0xFFFFFFFFFFFFLL | 0x203D000000000000;
LABEL_58:
      v32 = v15;
      goto LABEL_93;
    case 0x2D:
      v13 = 0xD000000000000014;
      goto LABEL_69;
    case 0x2E:
      v32 = 0;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0xD000000000000014, 0x80000002528E6980);
      goto LABEL_90;
    case 0x2F:
      v32 = 0;
      sub_2528C0E70();
      v11 = "rvcCurrentRun = ";
      v12 = 0xD000000000000010;
      goto LABEL_87;
    case 0x30:
      v32 = 0;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0xD000000000000010, 0x80000002528E6940);
      goto LABEL_90;
    case 0x31:
      v32 = 0;

      sub_2528C0E70();
      MEMORY[0x2530A80B0](0x65746174536E7572, 0xEB00000000203D20);
      v19 = RobotVacuumCleanerRunState.rawValue.getter();
      MEMORY[0x2530A80B0](v19);

      MEMORY[0x2530A80B0](0x6F4D6E61656C6320, 0xEE00203D20736564);
      v20 = MEMORY[0x2530A81A0](v3, &type metadata for RobotVacuumCleanerCleanMode);
      MEMORY[0x2530A80B0](v20);

      MEMORY[0x2530A80B0](0x7344496165726120, 0xEB00000000203D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5003C8, &unk_2528D54F8);
      v21 = sub_2528C0A10();
      MEMORY[0x2530A80B0](v21);

      MEMORY[0x2530A80B0](0x3D20444970616D20, 0xE900000000000020);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDE90, &unk_2528CAE60);
      v22 = sub_2528C0A10();
      goto LABEL_100;
    case 0x32:
      v6 = 0x7461727544746573;
LABEL_34:
      v32 = v6;
      goto LABEL_70;
    case 0x33:
      v14 = 0xD000000000000010;
LABEL_92:
      v32 = v14;
LABEL_93:
      if (v4)
      {
        v22 = 1702195828;
      }

      else
      {
        v22 = 0x65736C6166;
      }

      if (v4)
      {
        v30 = 0xE400000000000000;
      }

      else
      {
        v30 = 0xE500000000000000;
      }

      v23 = v30;
      goto LABEL_100;
    case 0x34:
      v32 = 0;
      sub_2528C0E70();
      v5 = "sulphurDioxideDensity = ";
      goto LABEL_86;
    case 0x36:
      v32 = 0;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0xD000000000000019, 0x80000002528E68C0);
      goto LABEL_90;
    case 0x37:
      v32 = 0;
      sub_2528C0E70();
      v7 = "targetHorizontalTilt = ";
      v8 = 0xD000000000000012;
      goto LABEL_84;
    case 0x38:
      v13 = 0xD000000000000017;
      goto LABEL_69;
    case 0x39:
      v32 = 0;
      sub_2528C0E70();
      v18 = 0x80000002528E6860;
      v12 = 0xD000000000000011;
      goto LABEL_88;
    case 0x3A:
      v32 = 0;
      sub_2528C0E70();
      v7 = "targetPosition = ";
      v8 = 0xD000000000000012;
      goto LABEL_84;
    case 0x3B:
      v13 = 0xD000000000000011;
      goto LABEL_69;
    case 0x3C:
      v32 = 0;
      sub_2528C0E70();
      v7 = "targetVerticalTilt = ";
      v8 = 0xD00000000000001CLL;
LABEL_84:
      MEMORY[0x2530A80B0](v8, v7 | 0x8000000000000000);
      goto LABEL_90;
    case 0x3D:
      v13 = 0xD000000000000015;
LABEL_69:
      v32 = v13;
LABEL_70:
      v22 = sub_2528C1040();
LABEL_100:
      MEMORY[0x2530A80B0](v22, v23);

      return v32;
    case 0x3E:
      v32 = 0;
      sub_2528C0E70();
      v26 = 0x80000002528E67C0;
      v25 = 0xD000000000000011;
LABEL_48:
      MEMORY[0x2530A80B0](v25, v26);
LABEL_90:
      sub_2528C0ED0();
      return v32;
    case 0x3F:
      v32 = 0;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0xD000000000000011, 0x80000002528E67C0);
LABEL_77:
      sub_2528C0ED0();
      v28 = 0x2065756C6176202CLL;
      v29 = 0xEA0000000000203DLL;
      goto LABEL_78;
    case 0x40:
      v32 = 0;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0xD000000000000011, 0x80000002528E67C0);
LABEL_56:
      sub_2528C0ED0();
      MEMORY[0x2530A80B0](0x527265776F6C202CLL, 0xEF203D2065676E61);
      sub_2528C0C70();
      v28 = 0x527265707075202CLL;
      v29 = 0xEF203D2065676E61;
LABEL_78:
      MEMORY[0x2530A80B0](v28, v29);
LABEL_79:
      sub_2528C0C70();
      return v32;
    case 0x41:
      v32 = 0;
      sub_2528C0E70();
      v11 = "ToDisplay:snapshot:)";
      v12 = 0xD000000000000021;
      goto LABEL_87;
    case 0x42:
      v32 = 0;
      v9 = 0x4C7265746177;
LABEL_17:
      v12 = v9 & 0xFFFFFFFFFFFFLL | 0x7665000000000000;
      v18 = 0xED0000203D206C65;
      goto LABEL_88;
    default:
      v32 = 0;
      sub_2528C0E70();
      v5 = "airParticulateDensity = ";
LABEL_86:
      v11 = (v5 - 32);
      v12 = 0xD000000000000018;
LABEL_87:
      v18 = v11 | 0x8000000000000000;
LABEL_88:
      MEMORY[0x2530A80B0](v12, v18);
      sub_2528C0C70();
      return v32;
  }
}

uint64_t sub_252874784@<X0>(uint64_t result@<X0>, _WORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = v4 >> 14;
  v6 = (v4 >> 8) & 0x3F;
  if (v5 != 1)
  {
    v6 = *a2;
  }

  if (!v5)
  {
    v6 = *a2;
  }

  switch(*result)
  {
    case 1:
      result = sub_2528BF6C0();
      if (v39)
      {
        goto LABEL_6;
      }

      if (!result)
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v7 = 2;
        goto LABEL_7;
      }

      if (result != 1)
      {
        goto LABEL_240;
      }

      *a3 = 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 2;
      goto LABEL_7;
    case 2:
      result = sub_2528BF470();
      if (v34)
      {
        goto LABEL_6;
      }

      if (result <= 2)
      {
        switch(result)
        {
          case 0:
            *a3 = 0u;
            *(a3 + 16) = 0u;
            v7 = 4;
            goto LABEL_7;
          case 1:
            v35 = 1;
            break;
          case 2:
            v35 = 2;
            break;
          default:
            goto LABEL_240;
        }

        goto LABEL_239;
      }

      switch(result)
      {
        case 3:
          v35 = 3;
LABEL_239:
          *a3 = v35;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *(a3 + 24) = 0;
          v7 = 4;
          goto LABEL_7;
        case 4:
          *a3 = 4;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *(a3 + 24) = 0;
          *(a3 + 32) = 4;
          return result;
        case 5:
          v35 = 5;
          goto LABEL_239;
      }

      goto LABEL_240;
    case 3:
      result = sub_2528BF510();
      if (v47)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 6;
      goto LABEL_7;
    case 4:
      result = sub_2528BF480();
      if (v37)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 8;
      goto LABEL_7;
    case 5:
      result = sub_2528BF790();
      if (v51)
      {
        goto LABEL_6;
      }

      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 10;
      goto LABEL_7;
    case 6:
      result = sub_2528BF6D0();
      if (v31)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 12;
      goto LABEL_7;
    case 7:
      result = sub_2528BF7E0();
      if (v50)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 14;
      goto LABEL_7;
    case 8:
      result = sub_2528BF7F0();
      if (v26)
      {
        goto LABEL_6;
      }

      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 16;
      goto LABEL_7;
    case 9:
      result = sub_2528BF700();
      if (v30)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 18;
      goto LABEL_7;
    case 0xA:
      result = sub_2528BF840();
      if (v46)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 20;
      goto LABEL_7;
    case 0xB:
      result = sub_2528BF560();
      if (v20)
      {
        goto LABEL_6;
      }

      switch(result)
      {
        case 0:
          *a3 = 0u;
          *(a3 + 16) = 0u;
          v7 = 22;
          goto LABEL_7;
        case 2:
          v21 = 2;
          break;
        case 1:
          v21 = 1;
          break;
        default:
          goto LABEL_240;
      }

      *a3 = v21;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 22;
      goto LABEL_7;
    case 0xC:
      result = sub_2528BF750();
      if (v36)
      {
        goto LABEL_6;
      }

      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 24;
      goto LABEL_7;
    case 0xD:
      result = sub_2528BF940();
      if (v16)
      {
        goto LABEL_6;
      }

      v17 = result;
      result = sub_2528BF4A0();
      if (v18)
      {
        goto LABEL_6;
      }

      *a3 = v17;
      *(a3 + 8) = result;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 26;
      goto LABEL_7;
    case 0xE:
      result = sub_2528BF520();
      if (v40)
      {
        goto LABEL_6;
      }

      *a3 = result == 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 28;
      goto LABEL_7;
    case 0xF:
      result = sub_2528BF850();
      if (v48)
      {
        goto LABEL_6;
      }

      switch(result)
      {
        case 0:
          *a3 = 0u;
          *(a3 + 16) = 0u;
          v7 = 30;
          goto LABEL_7;
        case 2:
          v49 = 2;
          break;
        case 1:
          v49 = 1;
          break;
        default:
          goto LABEL_240;
      }

      *a3 = v49;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 30;
      goto LABEL_7;
    case 0x10:
      result = sub_2528BF620();
      if (v57)
      {
        goto LABEL_6;
      }

      if (result > 1)
      {
        switch(result)
        {
          case 2:
            v58 = 2;
            break;
          case 3:
            v58 = 3;
            break;
          case 4:
            v58 = 4;
            break;
          default:
            goto LABEL_240;
        }

        goto LABEL_232;
      }

      if (!result)
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v7 = 32;
        goto LABEL_7;
      }

      if (result == 1)
      {
        v58 = 1;
LABEL_232:
        *a3 = v58;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        v7 = 32;
        goto LABEL_7;
      }

      goto LABEL_240;
    case 0x11:
      result = sub_2528BF8D0();
      if (v42)
      {
        goto LABEL_6;
      }

      if (result > 1)
      {
        if (result == 2)
        {
          v72 = 2;
        }

        else
        {
          if (result != 3)
          {
            goto LABEL_240;
          }

          v72 = 3;
        }

        goto LABEL_220;
      }

      if (!result)
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v7 = 40;
        goto LABEL_7;
      }

      if (result == 1)
      {
        v72 = 1;
LABEL_220:
        *a3 = v72;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        v7 = 40;
        goto LABEL_7;
      }

      goto LABEL_240;
    case 0x12:
      result = sub_2528BF7B0();
      if (v45)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 34;
      goto LABEL_7;
    case 0x13:
      result = sub_2528BF930();
      if (v55)
      {
        goto LABEL_6;
      }

      if (result >= 4)
      {
        goto LABEL_240;
      }

      *a3 = qword_2528E3070[result];
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 36;
      goto LABEL_7;
    case 0x14:
      result = sub_2528BF860();
      if (v62)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 38;
      goto LABEL_7;
    case 0x15:
      result = sub_2528BF5E0();
      if (v33)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 42;
      goto LABEL_7;
    case 0x16:
      result = sub_2528BF8F0();
      if (v32)
      {
        goto LABEL_6;
      }

      if (result <= 1)
      {
        if (result)
        {
          if (result != 1)
          {
            goto LABEL_240;
          }

          v73 = 2;
        }

        else
        {
          v73 = 1;
        }

        goto LABEL_226;
      }

      switch(result)
      {
        case 2:
          v73 = 3;
LABEL_226:
          *a3 = v73;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *(a3 + 24) = 0;
          v7 = 44;
          goto LABEL_7;
        case 3:
          *a3 = 0u;
          *(a3 + 16) = 0u;
          v7 = 44;
          goto LABEL_7;
        case 4:
          v73 = 4;
          goto LABEL_226;
      }

      goto LABEL_240;
    case 0x17:
      result = sub_2528BF6E0();
      if (v66)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 46;
      goto LABEL_7;
    case 0x18:
      if (v6 != 11)
      {
        if (v6 == 29)
        {
          result = sub_2528BF7A0();
          if ((v13 & 1) == 0)
          {
            if (result >= 3)
            {
              goto LABEL_240;
            }

            v14 = &unk_2528E3090;
            goto LABEL_170;
          }
        }

        goto LABEL_6;
      }

      result = sub_2528BF890();
      if (v71)
      {
        goto LABEL_6;
      }

      if (result < 4)
      {
        v14 = &unk_2528E30A8;
LABEL_170:
        *a3 = v14[result];
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        v7 = 48;
        goto LABEL_7;
      }

      goto LABEL_240;
    case 0x19:
      result = sub_2528BF710();
      if (v63)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 50;
      goto LABEL_7;
    case 0x1A:
      result = sub_2528BF800();
      if (v64)
      {
        goto LABEL_6;
      }

      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 52;
      goto LABEL_7;
    case 0x1B:
      result = sub_2528BF5F0();
      if (v52)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 54;
      goto LABEL_7;
    case 0x1C:
      if (v6 == 20)
      {
        result = sub_2528BF4D0();
      }

      else
      {
        result = sub_2528BF960();
      }

      if (result == 2)
      {
        goto LABEL_6;
      }

      *a3 = result & 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 62;
      goto LABEL_7;
    case 0x1D:
      result = sub_2528BF530();
      if (v53)
      {
        goto LABEL_6;
      }

      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 64;
      goto LABEL_7;
    case 0x1E:
      result = sub_2528BF670();
      if (v22)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 66;
      goto LABEL_7;
    case 0x1F:
      result = sub_2528BF650();
      if (v15)
      {
        goto LABEL_6;
      }

      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 68;
      goto LABEL_7;
    case 0x20:
      result = sub_2528BF5B0();
      if (result == 2)
      {
        goto LABEL_6;
      }

      *a3 = result & 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 70;
      goto LABEL_7;
    case 0x21:
    case 0x2D:
    case 0x3E:
      goto LABEL_6;
    case 0x22:
      result = sub_2528BF810();
      if (v12)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 74;
      goto LABEL_7;
    case 0x23:
      result = sub_2528BF730();
      if (result == 2)
      {
        goto LABEL_6;
      }

      *a3 = result & 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 76;
      goto LABEL_7;
    case 0x24:
      result = sub_2528BF680();
      if (v65)
      {
        goto LABEL_6;
      }

      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 78;
      goto LABEL_7;
    case 0x25:
      result = sub_2528BF540();
      if (v56)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 80;
      goto LABEL_7;
    case 0x26:
      result = sub_2528BF4E0();
      if (v28)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 82;
      goto LABEL_7;
    case 0x27:
      result = sub_2528BF550();
      if (v41)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 84;
      goto LABEL_7;
    case 0x28:
      result = sub_2528BF580();
      if (v60)
      {
        goto LABEL_6;
      }

      if (result)
      {
        if (result == 2)
        {
          v61 = 4;
        }

        else
        {
          if (result != 1)
          {
            goto LABEL_240;
          }

          v61 = 2;
        }
      }

      else
      {
        v61 = 3;
      }

      *a3 = v61;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 86;
      goto LABEL_7;
    case 0x29:
      if (v6 > 0x1E)
      {
        goto LABEL_177;
      }

      if (((1 << v6) & 0x4A800201) != 0)
      {
        result = sub_2528BF970();
        goto LABEL_13;
      }

      if (v6 != 2)
      {
        if (v6 == 8)
        {
          result = sub_2528BF970();
          if (result != 2)
          {
LABEL_14:
            *a3 = result & 1;
            *(a3 + 8) = 0;
            *(a3 + 16) = 0;
            *(a3 + 24) = 0;
            v7 = 88;
            goto LABEL_7;
          }
        }

LABEL_177:
        result = sub_2528BF490();
LABEL_13:
        if (result == 2)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }

LABEL_6:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v7 = -2;
      goto LABEL_7;
    case 0x2A:
      result = sub_2528BF690();
      if (v19)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 90;
      goto LABEL_7;
    case 0x2B:
      result = sub_2528BF6A0();
      if (v54)
      {
        goto LABEL_6;
      }

      if (!result)
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v7 = 92;
        goto LABEL_7;
      }

      if (result != 1)
      {
        goto LABEL_240;
      }

      *a3 = 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 92;
      goto LABEL_7;
    case 0x2C:
      result = sub_2528BF590();
      if (v69)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 94;
      goto LABEL_7;
    case 0x2E:
      result = sub_2528BF500();
      if (v10)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 100;
      goto LABEL_7;
    case 0x2F:
      result = sub_2528BF5A0();
      if (v23)
      {
        goto LABEL_6;
      }

      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 102;
      goto LABEL_7;
    case 0x30:
      result = sub_2528BF7D0();
      if (v27)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 104;
      goto LABEL_7;
    case 0x31:
      result = sub_2528BF9C0();
      if (v8)
      {
        goto LABEL_6;
      }

      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 106;
      goto LABEL_7;
    case 0x32:
      result = sub_2528BF820();
      if (v70)
      {
        goto LABEL_6;
      }

      if (!result)
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v7 = 108;
        goto LABEL_7;
      }

      if (result != 1)
      {
        goto LABEL_240;
      }

      *a3 = 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 108;
      goto LABEL_7;
    case 0x33:
      result = sub_2528BF600();
      if (v68)
      {
        goto LABEL_6;
      }

      if (!result)
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v7 = 110;
        goto LABEL_7;
      }

      if (result != 1)
      {
        goto LABEL_240;
      }

      *a3 = 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 110;
      goto LABEL_7;
    case 0x34:
      result = sub_2528BF770();
      if (v9)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 112;
      goto LABEL_7;
    case 0x35:

      return sub_2528783D8(a3);
    case 0x36:
      result = sub_2528BF830();
      if (v67)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 114;
      goto LABEL_7;
    case 0x37:
      result = sub_2528BF8C0();
      if (v11)
      {
        goto LABEL_6;
      }

      if (!result)
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v7 = 116;
        goto LABEL_7;
      }

      if (result != 1)
      {
        goto LABEL_240;
      }

      *a3 = 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 116;
      goto LABEL_7;
    case 0x38:
      result = sub_2528BF5D0();
      if (v59)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 118;
      goto LABEL_7;
    case 0x39:
      result = sub_2528BF8E0();
      if (v24)
      {
        goto LABEL_6;
      }

      if (result <= 1)
      {
        if (result)
        {
          if (result != 1)
          {
            goto LABEL_240;
          }

          v25 = 2;
        }

        else
        {
          v25 = 1;
        }

        goto LABEL_213;
      }

      if (result == 2)
      {
        v25 = 3;
LABEL_213:
        *a3 = v25;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        v7 = 120;
        goto LABEL_7;
      }

      if (result == 3)
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v7 = 120;
LABEL_7:
        *(a3 + 32) = v7;
      }

      else
      {
LABEL_240:
        result = sub_2528C0EE0();
        __break(1u);
      }

      return result;
    case 0x3A:
      if (v6 == 11)
      {

        return sub_2528781FC(a3);
      }

      else
      {
        if (v6 != 29)
        {
          goto LABEL_6;
        }

        return sub_2528782EC(a3);
      }

    case 0x3B:
      result = sub_2528BF6F0();
      if (v29)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = 122;
      goto LABEL_7;
    case 0x3C:
      result = sub_2528BF910();
      if (v43)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = -126;
      goto LABEL_7;
    case 0x3D:
      result = sub_2528BF4B0();
      if (v44)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v7 = -124;
      goto LABEL_7;
    default:
      result = sub_2528BF780();
      if (v38)
      {
        goto LABEL_6;
      }

      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      return result;
  }
}

uint64_t sub_252875310@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5003E8, &qword_2528D5540);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5003F0, &qword_2528D5548);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = *a1;
  sub_2528BFF30();
  v15 = *(v5 + 56);
  *v7 = v14;
  sub_25289947C(v13, &v7[v15]);
  if (*v7 == 41)
  {
    v16 = sub_2528BFF20();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(&v7[v15], 1, v16) != 1)
    {
      sub_2528994EC(&v7[v15], v11);
      v21 = (*(v17 + 88))(v11, v16);
      if (v21 == *MEMORY[0x277D16430])
      {
        result = sub_2527213D8(&v7[v15], &qword_27F5003F0, &qword_2528D5548);
        v20 = 88;
        v19 = 1;
        goto LABEL_4;
      }

      if (v21 == *MEMORY[0x277D16438])
      {
        result = sub_2527213D8(&v7[v15], &qword_27F5003F0, &qword_2528D5548);
        v19 = 0;
        v20 = 88;
        goto LABEL_4;
      }

      (*(v17 + 8))(v11, v16);
    }
  }

  result = sub_2527213D8(v7, &qword_27F5003E8, &qword_2528D5540);
  v19 = 0;
  v20 = -2;
LABEL_4:
  *a2 = v19;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v20;
  return result;
}

uint64_t sub_252875590@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v3 = sub_2528BFFC0();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2528C0660();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v46 - v10;
  MEMORY[0x28223BE20](v9);
  v47 = &v46 - v11;
  v12 = sub_2528BF410();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5003D0, &qword_2528D5508);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v46 - v21;
  v23 = *a1;
  v24 = *(v20 + 56);
  v25 = *(v13 + 16);
  v25(&v46 - v21, v54, v12);
  v22[v24] = v23;
  v26 = (*(v13 + 88))(v22, v12);
  if (v26 == *MEMORY[0x277D15A70])
  {
    v25(v16, v22, v12);
    (*(v13 + 96))(v16, v12);
    if (v23 == 41)
    {
      v28 = v52;
      v27 = v53;
      (*(v52 + 32))(v5, v16, v53);
      v29 = sub_2528BFFA0();
      (*(v28 + 8))(v5, v27);
      v30 = v55;
      *v55 = v29 & 1;
      v30[1] = 0;
      v30[2] = 0;
      v30[3] = 0;
      v31 = 88;
LABEL_25:
      *(v30 + 32) = v31;
      return (*(v13 + 8))(v22, v12);
    }

    (*(v52 + 8))(v16, v53);
LABEL_11:
    v36 = v55;
    *v55 = 0u;
    *(v36 + 1) = 0u;
    *(v36 + 32) = -2;
    return sub_2527213D8(v22, &qword_27F5003D0, &qword_2528D5508);
  }

  if (v26 != *MEMORY[0x277D15A68])
  {
    goto LABEL_11;
  }

  v25(v18, v22, v12);
  (*(v13 + 96))(v18, v12);
  if (v23 == 31)
  {
    v42 = v49;
    v43 = v50;
    v44 = v51;
    (*(v50 + 32))(v49, v18, v51);
    v45 = sub_2528C0630();
    (*(v43 + 8))(v42, v44);
    if ((v45 & 0x100) == 0)
    {
      v30 = v55;
      *v55 = v45 - 1 < 2;
      v30[1] = 0;
      v30[2] = 0;
      v30[3] = 0;
      v31 = 68;
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (v23 != 11)
  {
    if (v23 != 3)
    {
      (*(v50 + 8))(v18, v51);
      goto LABEL_11;
    }

    v33 = v50;
    v32 = v51;
    v34 = v47;
    (*(v50 + 32))(v47, v18, v51);
    v35 = sub_2528C0650();
    (*(v33 + 8))(v34, v32);
    if ((v35 & 0x100) == 0)
    {
      v30 = v55;
      *v55 = v35;
      v30[1] = 0;
      v30[2] = 0;
      v30[3] = 0;
      v31 = 6;
      goto LABEL_25;
    }

LABEL_19:
    v30 = v55;
    *v55 = 0u;
    *(v30 + 1) = 0u;
    v31 = -2;
    goto LABEL_25;
  }

  v39 = v50;
  v38 = v51;
  v40 = v48;
  (*(v50 + 32))(v48, v18, v51);
  v41 = sub_2528C0640();
  (*(v39 + 8))(v40, v38);
  if ((v41 & 0x100) != 0)
  {
    goto LABEL_19;
  }

  if (v41 > 1u)
  {
    if (v41 != 2 && v41 != 3)
    {
      goto LABEL_26;
    }

LABEL_23:
    v30 = v55;
    *v55 = 0u;
    *(v30 + 1) = 0u;
    goto LABEL_24;
  }

  if (!v41)
  {
    goto LABEL_23;
  }

  if (v41 == 1)
  {
    v30 = v55;
    *v55 = 1;
    v30[1] = 0;
    v30[2] = 0;
    v30[3] = 0;
LABEL_24:
    v31 = 22;
    goto LABEL_25;
  }

LABEL_26:
  result = sub_2528C0EE0();
  __break(1u);
  return result;
}

uint64_t sub_252875B80@<X0>(_OWORD *a1@<X8>)
{
  v148 = a1;
  v130 = sub_2528C03F0();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v103 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_2528C03B0();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_2528C0550();
  v126 = *(v132 - 8);
  v3 = MEMORY[0x28223BE20](v132);
  v124 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v131 = &v103 - v5;
  v134 = sub_2528C0540();
  v127 = *(v134 - 8);
  v6 = MEMORY[0x28223BE20](v134);
  v125 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v133 = &v103 - v8;
  v144 = sub_2528C0570();
  v146 = *(v144 - 8);
  v9 = MEMORY[0x28223BE20](v144);
  v145 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v154 = &v103 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC1F8, &unk_2528D5510);
  MEMORY[0x28223BE20](v12 - 8);
  v143 = &v103 - v13;
  v153 = sub_2528BF130();
  v122 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v152 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC2A8, &qword_2528C3958);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v142 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v138 = &v103 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF9E8, &unk_2528D5520);
  MEMORY[0x28223BE20](v19 - 8);
  v141 = &v103 - v20;
  v140 = sub_2528BF1D0();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v123 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v103 - v23;
  v25 = sub_2528C04F0();
  v149 = *(v25 - 8);
  v150 = v25;
  MEMORY[0x28223BE20](v25);
  v147 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2528BF0B0();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v28 + 104);
  v31(v30, *MEMORY[0x277D15520], v27);
  sub_252899FCC(&qword_27F5003D8, MEMORY[0x277D15558], MEMORY[0x277D15590]);
  sub_2528C0AD0();
  sub_2528C0AD0();
  v32 = *(v28 + 8);
  v32(v30, v27);
  if (LODWORD(v155[0]) != v156)
  {
    v31(v30, *MEMORY[0x277D15540], v27);
    sub_2528C0AD0();
    sub_2528C0AD0();
    result = (v32)(v30, v27);
    if (LODWORD(v155[0]) != v156)
    {
      goto LABEL_5;
    }
  }

  sub_2528C0140();
  v35 = v149;
  v34 = v150;
  if ((*(v149 + 48))(v24, 1, v150) == 1)
  {
    result = sub_2527213D8(v24, &qword_27F4FC208, &qword_2528C6B40);
LABEL_5:
    v36 = v148;
    *v148 = 0u;
    v36[1] = 0u;
    *(v36 + 32) = -2;
    return result;
  }

  v37 = v147;
  (*(v35 + 32))(v147, v24, v34);
  v38 = v138;
  sub_2528C02A0();
  v39 = sub_2528BF1E0();
  v40 = *(v39 - 8);
  v151 = *(v40 + 48);
  v41 = v151(v38, 1, v39);
  v121 = v40;
  if (v41 == 1)
  {
    sub_2527213D8(v38, &qword_27F4FC2A8, &qword_2528C3958);
    v42 = v141;
    (*(v139 + 56))(v141, 1, 1, v140);
    v44 = v145;
    v43 = v146;
    v45 = v142;
    v46 = v144;
LABEL_9:
    sub_2527213D8(v42, &qword_27F4FF9E8, &unk_2528D5520);
    v141 = 0;
    LODWORD(v140) = 1;
    goto LABEL_11;
  }

  v47 = v141;
  sub_2528BF150();
  v42 = v47;
  (*(v40 + 8))(v38, v39);
  v48 = v139;
  v49 = v140;
  v50 = (*(v139 + 48))(v47, 1, v140);
  v44 = v145;
  v43 = v146;
  v45 = v142;
  v46 = v144;
  if (v50 == 1)
  {
    goto LABEL_9;
  }

  v51 = v123;
  (*(v48 + 32))(v123, v42, v49);
  v52 = sub_2528BF1B0();
  v53 = v51;
  v37 = v147;
  (*(v48 + 8))(v53, v49);
  LODWORD(v140) = 0;
  v141 = v52;
LABEL_11:
  sub_2528C02A0();
  if (v151(v45, 1, v39) == 1)
  {
    sub_2527213D8(v45, &qword_27F4FC2A8, &qword_2528C3958);
    v142 = 0;
    v54 = 0;
LABEL_20:
    v56 = v143;
    goto LABEL_23;
  }

  v55 = sub_2528BF160();
  (*(v121 + 8))(v45, v39);
  v56 = v143;
  if (v55)
  {
    v54 = *(v55 + 16);
    if (v54)
    {
      v155[0] = MEMORY[0x277D84F90];
      sub_25282F21C(0, v54, 0);
      v57 = v155[0];
      v151 = *(v122 + 2);
      v58 = (v122[80] + 32) & ~v122[80];
      v139 = v55;
      v59 = v55 + v58;
      v60 = *(v122 + 9);
      v61 = (v122 + 8);
      do
      {
        v63 = v152;
        v62 = v153;
        v151(v152, v59, v153);
        v64 = sub_2528BF110();
        (*v61)(v63, v62);
        v155[0] = v57;
        v66 = *(v57 + 16);
        v65 = *(v57 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_25282F21C((v65 > 1), v66 + 1, 1);
          v57 = v155[0];
        }

        *(v57 + 16) = v66 + 1;
        *(v57 + 8 * v66 + 32) = v64;
        v59 += v60;
        v54 = (v54 - 1);
      }

      while (v54);
      v142 = v57;

      v44 = v145;
      v43 = v146;
      v37 = v147;
      v46 = v144;
      goto LABEL_20;
    }

    v142 = MEMORY[0x277D84F90];
  }

  else
  {
    v142 = 0;
    v54 = 0;
  }

LABEL_23:
  sub_2528C02C0();
  v67 = sub_2528C04E0();
  v68 = *(v67 - 8);
  if ((*(v68 + 48))(v56, 1, v67) == 1)
  {
    sub_2527213D8(v56, &qword_27F4FC1F8, &unk_2528D5510);
    v143 = MEMORY[0x277D84F90];
LABEL_77:
    v97 = v135;
    sub_2528C0400();
    sub_2528784C8(v155);
    (*(v136 + 8))(v97, v137);
    v98 = LOBYTE(v155[0]);
    if (LOBYTE(v155[0]) == 27)
    {
      v99 = v128;
      sub_2528C0410();
      sub_2528788D0(v155);
      (*(v129 + 8))(v99, v130);
      result = (*(v149 + 8))(v37, v150);
      v98 = LOBYTE(v155[0]);
    }

    else
    {
      result = (*(v149 + 8))(v37, v150);
    }

    v100 = v148;
    v101 = v143;
    *v148 = v98;
    *(v100 + 1) = v101;
    LOBYTE(v101) = v140 | 0x62;
    v102 = v141;
    *(v100 + 2) = v142;
    *(v100 + 3) = v102;
    *(v100 + 32) = v101;
    return result;
  }

  v69 = sub_2528C04C0();
  (*(v68 + 8))(v56, v67);
  v70 = *(v69 + 16);
  if (v70)
  {
    v151 = 0;
    v71 = sub_252865A34(v70, 0);
    v72 = sub_252868CE8(v155, &v71[(*(v43 + 80) + 32) & ~*(v43 + 80)], v70, v69);
    v73 = v155[0];
    v54 = v155[3];
    v152 = v155[4];
    v153 = v72;

    sub_25271A648(v73);
    if (v153 != v70)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v54 = v151;
  }

  else
  {

    v71 = MEMORY[0x277D84F90];
  }

  v155[0] = v71;
  sub_2528947C0(v155);
  if (!v54)
  {
    v74 = v155[0];
    v75 = *(v155[0] + 16);
    if (v75)
    {
      v76 = 0;
      v153 = v43 + 88;
      LODWORD(v152) = *MEMORY[0x277D16A60];
      LODWORD(v151) = *MEMORY[0x277D16A68];
      v54 = (v43 + 8);
      v120 = *MEMORY[0x277D16AA8];
      v139 = v43 + 96;
      v119 = v126 + 4;
      v118 = v126 + 2;
      v117 = (v126 + 11);
      v116 = *MEMORY[0x277D16A98];
      v113 = *MEMORY[0x277D16A88];
      v111 = *MEMORY[0x277D16A78];
      v109 = *MEMORY[0x277D16A70];
      v115 = (v126 + 1);
      v126 = (v127 + 4);
      v123 = (v127 + 2);
      v122 = (v127 + 11);
      LODWORD(v121) = *MEMORY[0x277D16A28];
      v114 = *MEMORY[0x277D16A38];
      v112 = *MEMORY[0x277D16A40];
      v110 = *MEMORY[0x277D16A48];
      v108 = *MEMORY[0x277D16A58];
      v107 = *MEMORY[0x277D16A50];
      v106 = *MEMORY[0x277D16A20];
      v105 = *MEMORY[0x277D16A18];
      v104 = *MEMORY[0x277D16A30];
      v103 = *MEMORY[0x277D16A10];
      ++v127;
      v77 = v75;
      v138 = v75 - 1;
      v143 = MEMORY[0x277D84F90];
      do
      {
        v78 = v76;
        while (1)
        {
          if (v78 >= *(v74 + 16))
          {
            __break(1u);
            goto LABEL_82;
          }

          v79 = *(v43 + 16);
          v80 = v154;
          v79(v154, v74 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v78, v46);
          v79(v44, v80, v46);
          v81 = (*(v43 + 88))(v44, v46);
          if (v81 == v152)
          {
            break;
          }

          if (v81 != v151)
          {
            if (v81 != v120)
            {
              goto LABEL_84;
            }

            (*v139)(v44, v46);
            v89 = v44;
            v90 = v131;
            v91 = v132;
            (*v119)(v131, v89, v132);
            v92 = v124;
            (*v118)(v124, v90, v91);
            v93 = (*v117)(v92, v91);
            if (v93 == v116)
            {
              v88 = 3;
              v44 = v145;
            }

            else
            {
              v44 = v145;
              if (v93 == v113)
              {
                v88 = 0;
              }

              else if (v93 == v111)
              {
                v88 = 1;
              }

              else
              {
                if (v93 != v109)
                {
                  goto LABEL_85;
                }

                v88 = 2;
              }
            }

            (*v115)(v131, v132);
            goto LABEL_69;
          }

          ++v78;
          v82 = *v54;
          (*v54)(v154, v46);
          v82(v44, v46);
          if (v77 == v78)
          {
            goto LABEL_76;
          }
        }

        (*v139)(v44, v46);
        v83 = v44;
        v84 = v133;
        v85 = v134;
        (*v126)(v133, v83, v134);
        v86 = v125;
        (*v123)(v125, v84, v85);
        v87 = (*v122)(v86, v85);
        if (v87 == v121)
        {
          v88 = 4;
          v44 = v145;
        }

        else
        {
          v44 = v145;
          if (v87 == v114)
          {
            v88 = 6;
          }

          else if (v87 == v112)
          {
            v88 = 5;
          }

          else if (v87 == v110)
          {
            v88 = 7;
          }

          else if (v87 == v108)
          {
            v88 = 8;
          }

          else if (v87 == v107)
          {
            v88 = 9;
          }

          else if (v87 == v106)
          {
            v88 = 12;
          }

          else if (v87 == v105)
          {
            v88 = 13;
          }

          else if (v87 == v104)
          {
            v88 = 10;
          }

          else
          {
            if (v87 != v103)
            {
              goto LABEL_85;
            }

            v88 = 11;
          }
        }

        (*v127)(v133, v134);
LABEL_69:
        (*v54)(v154, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_2527381A4(0, *(v143 + 2) + 1, 1, v143);
        }

        v95 = *(v143 + 2);
        v94 = *(v143 + 3);
        if (v95 >= v94 >> 1)
        {
          v143 = sub_2527381A4((v94 > 1), v95 + 1, 1, v143);
        }

        v76 = v78 + 1;
        v96 = v143;
        *(v143 + 2) = v95 + 1;
        v96[v95 + 32] = v88;
        v43 = v146;
      }

      while (v138 != v78);
    }

    else
    {
      v143 = MEMORY[0x277D84F90];
    }

LABEL_76:

    v37 = v147;
    goto LABEL_77;
  }

LABEL_83:

  __break(1u);
LABEL_84:
  sub_2528C1050();
  __break(1u);
LABEL_85:
  result = sub_2528C1050();
  __break(1u);
  return result;
}

uint64_t static AttributeKind.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB900 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FFCA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25287715C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5003F8, &qword_2528D5558);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD288, &qword_2528D5560) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528D4E00;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v4[5 * v1] = 12;
  sub_2528BE8C0();
  v4[6 * v1] = 5;
  sub_2528BE8C0();
  v4[7 * v1] = 6;
  sub_2528BE8C0();
  v4[8 * v1] = 7;
  sub_2528BE8C0();
  v4[9 * v1] = 8;
  sub_2528BE8C0();
  v4[10 * v1] = 9;
  sub_2528BE8C0();
  v4[11 * v1] = 10;
  sub_2528BE8C0();
  v4[12 * v1] = 11;
  sub_2528BE8C0();
  v4[13 * v1] = 13;
  sub_2528BE8C0();
  v4[14 * v1] = 14;
  sub_2528BE8C0();
  v4[15 * v1] = 15;
  sub_2528BE8C0();
  v4[16 * v1] = 16;
  sub_2528BE8C0();
  v4[17 * v1] = 18;
  sub_2528BE8C0();
  v4[18 * v1] = 19;
  sub_2528BE8C0();
  v4[19 * v1] = 20;
  sub_2528BE8C0();
  v4[20 * v1] = 17;
  sub_2528BE8C0();
  v4[21 * v1] = 21;
  sub_2528BE8C0();
  v4[22 * v1] = 22;
  sub_2528BE8C0();
  v4[23 * v1] = 23;
  sub_2528BE8C0();
  v4[24 * v1] = 24;
  sub_2528BE8C0();
  v4[25 * v1] = 25;
  sub_2528BE8C0();
  v4[26 * v1] = 26;
  sub_2528BE8C0();
  v4[27 * v1] = 27;
  sub_2528BE8C0();
  v4[28 * v1] = 28;
  sub_2528BE8C0();
  v4[29 * v1] = 29;
  sub_2528BE8C0();
  v4[30 * v1] = 30;
  sub_2528BE8C0();
  v4[31 * v1] = 31;
  sub_2528BE8C0();
  v4[32 * v1] = 32;
  sub_2528BE8C0();
  v4[33 * v1] = 33;
  sub_2528BE8C0();
  v4[34 * v1] = 34;
  sub_2528BE8C0();
  v4[35 * v1] = 35;
  sub_2528BE8C0();
  v4[36 * v1] = 36;
  sub_2528BE8C0();
  v4[37 * v1] = 37;
  sub_2528BE8C0();
  v4[38 * v1] = 38;
  sub_2528BE8C0();
  v4[39 * v1] = 39;
  sub_2528BE8C0();
  v4[40 * v1] = 40;
  sub_2528BE8C0();
  v4[41 * v1] = 41;
  sub_2528BE8C0();
  v4[42 * v1] = 42;
  sub_2528BE8C0();
  v4[43 * v1] = 43;
  sub_2528BE8C0();
  v4[44 * v1] = 44;
  sub_2528BE8C0();
  v4[45 * v1] = 45;
  sub_2528BE8C0();
  v4[46 * v1] = 46;
  sub_2528BE8C0();
  v4[47 * v1] = 47;
  sub_2528BE8C0();
  v4[48 * v1] = 48;
  sub_2528BE8C0();
  v4[49 * v1] = 49;
  sub_2528BE8C0();
  v4[50 * v1] = 50;
  sub_2528BE8C0();
  v4[51 * v1] = 51;
  sub_2528BE8C0();
  v4[52 * v1] = 52;
  sub_2528BE8C0();
  v4[53 * v1] = 53;
  sub_2528BE8C0();
  v4[54 * v1] = 54;
  sub_2528BE8C0();
  v4[55 * v1] = 55;
  sub_2528BE8C0();
  v4[56 * v1] = 56;
  sub_2528BE8C0();
  v4[57 * v1] = 57;
  sub_2528BE8C0();
  v4[58 * v1] = 58;
  sub_2528BE8C0();
  v4[59 * v1] = 59;
  sub_2528BE8C0();
  v4[60 * v1] = 60;
  sub_2528BE8C0();
  v4[61 * v1] = 61;
  sub_2528BE8C0();
  v4[62 * v1] = 62;
  sub_2528BE8C0();
  v5 = sub_252791594(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FFCB8 = v5;
  return result;
}

double static AttributeKind.caseDisplayRepresentations.getter(uint64_t a1, uint64_t a2)
{
  if (qword_27F4FB908 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_252877ECC()
{
  v0 = AttributeKind.rawValue.getter();
  v2 = v1;
  if (v0 == AttributeKind.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2528C1060();
  }

  return v5 & 1;
}

uint64_t sub_252877F74@<X0>(uint64_t *a1@<X8>)
{
  result = AttributeKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252877F9C()
{
  sub_2528C1130();
  AttributeKind.rawValue.getter();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_252878004(uint64_t a1)
{
  AttributeKind.rawValue.getter();
  sub_2528C0A40();
}

uint64_t sub_252878068(uint64_t a1)
{
  sub_2528C1130();
  AttributeKind.rawValue.getter();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2528780F0(uint64_t a1)
{
  v2 = sub_25272E944();

  return MEMORY[0x28210B458](a1, v2);
}

double sub_25287813C(uint64_t a1, uint64_t a2)
{
  if (qword_27F4FB908 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_252878198(uint64_t a1)
{
  v2 = sub_252893F24();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2528781FC@<X0>(uint64_t a1@<X8>)
{
  result = sub_2528BF870();
  if (v3)
  {
    goto LABEL_3;
  }

  v4 = result;
  result = sub_2528BF970();
  if (result == 2)
  {
    goto LABEL_3;
  }

  switch(v4)
  {
    case 0:
      if (result)
      {
        v9 = 5;
      }

      else
      {
        v9 = 1;
      }

      result = sub_2528BF630();
      if ((v10 & 1) == 0)
      {
        v11 = result;
        result = sub_2528BF610();
        if ((v12 & 1) == 0)
        {
          *a1 = v9;
          *(a1 + 8) = v11;
          *(a1 + 16) = result;
          *(a1 + 24) = 0;
          v5 = 0x80;
          goto LABEL_4;
        }
      }

      *a1 = v9;
      goto LABEL_24;
    case 2:
      if (result)
      {
        v6 = 4;
      }

      else
      {
        v6 = 1;
      }

      result = sub_2528BF610();
      if ((v8 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_17:
      *a1 = v6;
LABEL_24:
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v5 = 124;
      goto LABEL_4;
    case 1:
      if (result)
      {
        v6 = 3;
      }

      else
      {
        v6 = 1;
      }

      result = sub_2528BF630();
      if ((v7 & 1) == 0)
      {
LABEL_12:
        *a1 = v6;
        *(a1 + 8) = result;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v5 = 126;
        goto LABEL_4;
      }

      goto LABEL_17;
  }

LABEL_3:
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = -2;
LABEL_4:
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_2528782EC@<X0>(uint64_t a1@<X8>)
{
  result = sub_2528BF8B0();
  if (v3)
  {
    goto LABEL_2;
  }

  if ((result - 1) < 2)
  {
    v9 = result;
    result = sub_2528BF6B0();
    v8 = 3;
    if (v9 != 1)
    {
      v8 = 4;
    }

    if (v10)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  if (result == 3)
  {
    v11 = sub_2528BF630();
    if ((v12 & 1) == 0)
    {
      v6 = v11;
      result = sub_2528BF610();
      if ((v13 & 1) == 0)
      {
        v15 = 5;
        goto LABEL_19;
      }
    }

    result = sub_2528BF6B0();
    v8 = 5;
    if (v14)
    {
      goto LABEL_12;
    }

LABEL_16:
    *a1 = v8;
    *(a1 + 8) = result;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v4 = 126;
    goto LABEL_20;
  }

  if (!result)
  {
    result = sub_2528BF630();
    if (v5 & 1) != 0 || (v6 = result, result = sub_2528BF610(), (v7))
    {
      v8 = 1;
LABEL_12:
      *a1 = v8;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v4 = 124;
      goto LABEL_20;
    }

    v15 = 1;
LABEL_19:
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = result;
    *(a1 + 24) = 0;
    v4 = 0x80;
    goto LABEL_20;
  }

LABEL_2:
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = -2;
LABEL_20:
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_2528783D8@<X0>(uint64_t a1@<X8>)
{
  result = sub_2528BF920();
  if (v3)
  {
    goto LABEL_3;
  }

  v4 = result;
  result = sub_2528BF970();
  if (result == 2)
  {
    goto LABEL_3;
  }

  switch(v4)
  {
    case 0:
      if (result)
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }

      result = sub_2528BF720();
      if ((v10 & 1) == 0)
      {
        v11 = result;
        result = sub_2528BF7C0();
        if ((v12 & 1) == 0)
        {
          *a1 = v9;
          *(a1 + 8) = v11;
          *(a1 + 16) = result;
          *(a1 + 24) = 0;
          v5 = 60;
          goto LABEL_4;
        }
      }

      *a1 = v9;
      goto LABEL_24;
    case 2:
      if (result)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }

      result = sub_2528BF7C0();
      if ((v8 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_17:
      *a1 = v6;
LABEL_24:
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v5 = 56;
      goto LABEL_4;
    case 1:
      if (result)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      result = sub_2528BF720();
      if ((v7 & 1) == 0)
      {
LABEL_12:
        *a1 = v6;
        *(a1 + 8) = result;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v5 = 58;
        goto LABEL_4;
      }

      goto LABEL_17;
  }

LABEL_3:
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = -2;
LABEL_4:
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_2528784C8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2528C0390();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = sub_2528C03B0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v2, v11);
  if ((*(v12 + 88))(v14, v11) != *MEMORY[0x277D167F0])
  {
    result = (*(v12 + 8))(v14, v11);
    v16 = 27;
LABEL_34:
    *a1 = v16;
    return result;
  }

  (*(v12 + 96))(v14, v11);
  (*(v5 + 32))(v10, v14, v4);
  (*(v5 + 16))(v8, v10, v4);
  v15 = (*(v5 + 88))(v8, v4);
  if (v15 == *MEMORY[0x277D167D8])
  {
    v16 = 12;
LABEL_33:
    result = (*(v5 + 8))(v10, v4);
    goto LABEL_34;
  }

  if (v15 == *MEMORY[0x277D167E8])
  {
    v16 = 11;
    goto LABEL_33;
  }

  if (v15 == *MEMORY[0x277D16798])
  {
    v16 = 13;
    goto LABEL_33;
  }

  if (v15 == *MEMORY[0x277D16788])
  {
    v16 = 14;
    goto LABEL_33;
  }

  if (v15 == *MEMORY[0x277D167A0])
  {
    v16 = 16;
    goto LABEL_33;
  }

  if (v15 == *MEMORY[0x277D167B0])
  {
    v16 = 15;
    goto LABEL_33;
  }

  if (v15 == *MEMORY[0x277D167A8])
  {
    v16 = 17;
    goto LABEL_33;
  }

  if (v15 == *MEMORY[0x277D167D0])
  {
    v16 = 18;
    goto LABEL_33;
  }

  if (v15 == *MEMORY[0x277D16778])
  {
    v16 = 19;
    goto LABEL_33;
  }

  if (v15 == *MEMORY[0x277D167C0])
  {
    v16 = 20;
    goto LABEL_33;
  }

  if (v15 == *MEMORY[0x277D167B8])
  {
    v16 = 21;
    goto LABEL_33;
  }

  if (v15 == *MEMORY[0x277D167C8])
  {
    v16 = 22;
    goto LABEL_33;
  }

  if (v15 == *MEMORY[0x277D16790])
  {
    v16 = 23;
    goto LABEL_33;
  }

  if (v15 == *MEMORY[0x277D16780])
  {
    v16 = 24;
    goto LABEL_33;
  }

  if (v15 == *MEMORY[0x277D167E0])
  {
    v16 = 25;
    goto LABEL_33;
  }

  result = sub_2528C1050();
  __break(1u);
  return result;
}

uint64_t sub_2528788D0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2528C03F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x277D16880])
  {
    v9 = 1;
LABEL_25:
    *a1 = v9;
    return result;
  }

  if (result == *MEMORY[0x277D16888])
  {
    v9 = 0;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D16878])
  {
    v9 = 2;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D16868])
  {
    v9 = 3;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D16850])
  {
    v9 = 4;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D16898])
  {
    v9 = 5;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D16870])
  {
    v9 = 6;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D16858])
  {
    v9 = 7;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D16840])
  {
    v9 = 8;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D16860])
  {
    v9 = 9;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D16848])
  {
    v9 = 10;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D16890])
  {
    v9 = 26;
    goto LABEL_25;
  }

  result = sub_2528C1050();
  __break(1u);
  return result;
}

Swift::Int __swiftcall Int.init(number:)(NSNumber number)
{
  v2 = [(objc_class *)number.super.super.isa integerValue];

  return v2;
}

Swift::Int_optional __swiftcall Int.init(number:)(NSNumber_optional number)
{
  isa = number.value.super.super.isa;
  if (number.value.super.super.isa)
  {
    v2 = [(objc_class *)number.value.super.super.isa integerValue];
  }

  else
  {
    v2 = 0;
  }

  v3 = isa == 0;
  v4 = v2;
  result.value = v4;
  result.is_nil = v3;
  return result;
}

void *sub_252878BA0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2528BEC40();
  MEMORY[0x28223BE20](v3 - 8);
  switch(*(v1 + 32) >> 1)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFF80, &qword_2528D52D8);
      sub_2528BEC20();
      sub_2527CF380();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.AirParticulateSizeCase;
      result = sub_252897DD8();
      goto LABEL_71;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFF70, &qword_2528D52D0);
      sub_2528BEC20();
      sub_2527D0094();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.AirQualityCase;
      result = sub_252897D84();
      goto LABEL_71;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
      sub_2528BEC20();
      v4 = sub_2528BE760();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.BatteryLevelCase;
      result = sub_252897D30();
      goto LABEL_71;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
      sub_2528BEC20();
      v4 = sub_2528BE760();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.BrightnessCase;
      result = sub_252897CDC();
      goto LABEL_71;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CarbonDioxideDetectedCase;
      result = sub_252897C88();
      goto LABEL_71;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CarbonDioxideLevelCase;
      result = sub_252897C34();
      goto LABEL_71;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CarbonDioxidePeakLevelCase;
      result = sub_252897BE0();
      goto LABEL_71;
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CarbonMonoxideDetectedCase;
      result = sub_252897B8C();
      goto LABEL_71;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CarbonMonoxideLevelCase;
      result = sub_252897B38();
      goto LABEL_71;
    case 0xA:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CarbonMonoxidePeakLevelCase;
      result = sub_252897AE4();
      goto LABEL_71;
    case 0xB:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFF20, &qword_2528D52C8);
      sub_2528BEC20();
      sub_2527D04F0();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.ChargingStateCase;
      result = sub_252897A90();
      goto LABEL_71;
    case 0xC:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.ChildLockEnabledCase;
      result = sub_252897A3C();
      goto LABEL_71;
    case 0xD:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v16 = sub_2528BE750();
      sub_2528BEC20();
      v17 = sub_2528BE750();
      sub_2528BE6C0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.ColorCase;
      result = sub_2528979E8();
      goto LABEL_63;
    case 0xE:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.ContactDetectedCase;
      result = sub_252897994();
      goto LABEL_71;
    case 0xF:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFEF8, &qword_2528D52C0);
      sub_2528BEC20();
      sub_2527CFC38();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CurrentAirPurifierStateCase;
      result = sub_252897940();
      goto LABEL_71;
    case 0x10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD90, &qword_2528D5290);
      sub_2528BEC20();
      sub_2527D0DA8();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CurrentDoorStateCase;
      result = sub_2528978EC();
      goto LABEL_71;
    case 0x11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
      sub_2528BEC20();
      v4 = sub_2528BE760();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CurrentHorizontalTiltCase;
      result = sub_252897898();
      goto LABEL_71;
    case 0x12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFE78, &qword_2528D52B8);
      sub_2528BEC20();
      sub_2527D262C();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase;
      result = sub_252897844();
      goto LABEL_71;
    case 0x13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CurrentHumidityCase;
      result = sub_2528977F0();
      goto LABEL_71;
    case 0x14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD70, &qword_2528D5288);
      sub_2528BEC20();
      sub_2527D094C();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CurrentLockStateCase;
      result = sub_25289779C();
      goto LABEL_71;
    case 0x15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
      sub_2528BEC20();
      v4 = sub_2528BE760();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CurrentPositionCase;
      result = sub_252897748();
      goto LABEL_71;
    case 0x16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD58, &qword_2528D5280);
      sub_2528BEC20();
      sub_2527D1D74();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CurrentSecuritySystemStateCase;
      result = sub_2528976F4();
      goto LABEL_71;
    case 0x17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CurrentTemperatureCase;
      result = sub_2528976A0();
      goto LABEL_71;
    case 0x18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD30, &unk_2528D5270);
      sub_2528BEC20();
      sub_2527D21D0();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CurrentThermostatModeCase;
      result = sub_25289764C();
      goto LABEL_71;
    case 0x19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
      sub_2528BEC20();
      v4 = sub_2528BE760();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.CurrentVerticalTiltCase;
      result = sub_2528975F8();
      goto LABEL_71;
    case 0x1A:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.FilterChangeNeededCase;
      result = sub_2528975A4();
      goto LABEL_71;
    case 0x1B:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.FilterLifeLevelCase;
      result = sub_252897550();
      goto LABEL_71;
    case 0x1C:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFE78, &qword_2528D52B8);
      sub_2528BEC20();
      sub_2527D262C();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.HumidifierDehumidifierModeCase;
      result = sub_2528974FC();
      goto LABEL_71;
    case 0x1D:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFE78, &qword_2528D52B8);
      sub_2528BEC20();
      sub_2527D262C();
      v16 = sub_2528BE6E0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v17 = sub_2528BE750();
      sub_2528BE6C0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase;
      result = sub_2528974A8();
      goto LABEL_63;
    case 0x1E:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFE78, &qword_2528D52B8);
      sub_2528BEC20();
      sub_2527D262C();
      v13 = sub_2528BE6E0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v14 = sub_2528BE750();
      sub_2528BEC20();
      v15 = sub_2528BE750();
      sub_2528BE6C0();
      sub_2528BE6C0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase;
      result = sub_252897454();
      goto LABEL_51;
    case 0x1F:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.InUseCase;
      result = sub_252897400();
      goto LABEL_71;
    case 0x20:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.LeakDetectedCase;
      result = sub_2528973AC();
      goto LABEL_71;
    case 0x21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.LightLevelCase;
      result = sub_252897358();
      goto LABEL_71;
    case 0x22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.LowBatteryCase;
      result = sub_252897304();
      goto LABEL_71;
    case 0x23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.MotionDetectedCase;
      result = sub_2528972B0();
      goto LABEL_71;
    case 0x24:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.NaturalLightCase;
      result = sub_25289725C();
      goto LABEL_71;
    case 0x25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.NitrogenDioxideDensityCase;
      result = sub_252897208();
      goto LABEL_71;
    case 0x26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.ObstructionDetectedCase;
      result = sub_2528971B4();
      goto LABEL_71;
    case 0x27:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.OccupancyDetectedCase;
      result = sub_252897160();
      goto LABEL_71;
    case 0x28:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.OzoneDensityCase;
      result = sub_25289710C();
      goto LABEL_71;
    case 0x29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.Pm10DensityCase;
      result = sub_2528970B8();
      goto LABEL_71;
    case 0x2A:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.Pm2_5DensityCase;
      result = sub_252897064();
      goto LABEL_71;
    case 0x2B:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD90, &qword_2528D5290);
      sub_2528BEC20();
      sub_2527D0DA8();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.PositionStateCase;
      result = sub_252897010();
      goto LABEL_71;
    case 0x2C:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.PowerCase;
      result = sub_252896FBC();
      goto LABEL_71;
    case 0x2D:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
      sub_2528BEC20();
      v4 = sub_2528BE760();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.RemainingDurationCase;
      result = sub_252896F68();
      goto LABEL_71;
    case 0x2E:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDF0, &qword_2528D52B0);
      sub_2528BEC20();
      sub_2527D2A88();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.RotationDirectionCase;
      result = sub_252896F14();
      goto LABEL_71;
    case 0x2F:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.RotationSpeedCase;
      result = sub_252896EC0();
      goto LABEL_71;
    case 0x30:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC10, &qword_2528CA030);
      sub_2528BEC20();
      sub_2527C7444();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.RvcCurrentRunCase;
      result = sub_252896E6C();
      goto LABEL_71;
    case 0x31:

      v6 = sub_252896C88();
      v8 = v7;
      v10 = v9;
      v12 = v11;
      sub_2528BE6C0();
      sub_2528BE6C0();
      sub_2528BE6C0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.RvcCase;
      a1[4] = sub_252896E18();
      result = swift_allocObject();
      *a1 = result;
      result[2] = v6;
      result[3] = v8;
      result[4] = v10;
      result[5] = v12;
      return result;
    case 0x32:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
      sub_2528BEC20();
      v4 = sub_2528BE760();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.SetDurationCase;
      result = sub_25289476C();
      goto LABEL_71;
    case 0x33:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.SmokeDetectedCase;
      result = sub_252894718();
      goto LABEL_71;
    case 0x34:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.SulphurDioxideDensityCase;
      result = sub_2528946C4();
      goto LABEL_71;
    case 0x35:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDB0, &unk_2528D52A0);
      sub_2528BEC20();
      v4 = sub_2528BE740();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.SwingModeEnabledCase;
      result = sub_252894670();
      goto LABEL_71;
    case 0x36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFDA0, &qword_2528D5298);
      sub_2528BEC20();
      sub_2527CF7DC();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.TargetAirPurifierStateCase;
      result = sub_25289461C();
      goto LABEL_71;
    case 0x37:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD90, &qword_2528D5290);
      sub_2528BEC20();
      sub_2527D0DA8();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.TargetDoorStateCase;
      result = sub_2528945C8();
      goto LABEL_71;
    case 0x38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
      sub_2528BEC20();
      v4 = sub_2528BE760();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.TargetHorizontalTiltCase;
      result = sub_252894574();
      goto LABEL_71;
    case 0x39:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.TargetHumidityCase;
      result = sub_252894520();
      goto LABEL_71;
    case 0x3A:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD70, &qword_2528D5288);
      sub_2528BEC20();
      sub_2527D094C();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.TargetLockStateCase;
      result = sub_2528944CC();
      goto LABEL_71;
    case 0x3B:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
      sub_2528BEC20();
      v4 = sub_2528BE760();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.TargetPositionCase;
      result = sub_252894478();
      goto LABEL_71;
    case 0x3C:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD58, &qword_2528D5280);
      sub_2528BEC20();
      sub_2527D1D74();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.TargetSecuritySystemStateCase;
      result = sub_252894424();
      goto LABEL_71;
    case 0x3D:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
      sub_2528BEC20();
      v4 = sub_2528BE760();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.TargetVerticalTiltCase;
      result = sub_2528943D0();
      goto LABEL_71;
    case 0x3E:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD30, &unk_2528D5270);
      sub_2528BEC20();
      sub_2527D21D0();
      v4 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.ThermostatModeCase;
      result = sub_25289437C();
      goto LABEL_71;
    case 0x3F:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD30, &unk_2528D5270);
      sub_2528BEC20();
      sub_2527D21D0();
      v16 = sub_2528BE6E0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v17 = sub_2528BE750();
      sub_2528BE6C0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.ThermostatModeAndValueCase;
      result = sub_252894328();
LABEL_63:
      a1[4] = result;
      *a1 = v16;
      a1[1] = v17;
      return result;
    case 0x40:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD30, &unk_2528D5270);
      sub_2528BEC20();
      sub_2527D21D0();
      v13 = sub_2528BE6E0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v14 = sub_2528BE750();
      sub_2528BEC20();
      v15 = sub_2528BE750();
      sub_2528BE6C0();
      sub_2528BE6C0();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.ThermostatModeAndRangeCase;
      result = sub_2528942D4();
LABEL_51:
      a1[4] = result;
      *a1 = v13;
      a1[1] = v14;
      a1[2] = v15;
      return result;
    case 0x41:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.VolatileOrganicCompoundDensityCase;
      result = sub_252894280();
      goto LABEL_71;
    case 0x42:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.WaterLevelCase;
      result = sub_25289422C();
      goto LABEL_71;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD18, &qword_2528D5268);
      sub_2528BEC20();
      v4 = sub_2528BE750();
      sub_2528BE6C0();
      a1[3] = &type metadata for Attribute.AirParticulateDensityCase;
      result = sub_252897E2C();
LABEL_71:
      a1[4] = result;
      *a1 = v4;
      return result;
  }
}

uint64_t sub_25287A5F4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v540 = v1;
  v541 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFFA0, &qword_2528D52E8);
  v539 = *(v541 - 8);
  MEMORY[0x28223BE20](v541);
  v520 = &v405 - v2;
  v538 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFFA8, &qword_2528D52F0);
  v537 = *(v538 - 8);
  MEMORY[0x28223BE20](v538);
  v602 = &v405 - v3;
  v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFFB0, &qword_2528D52F8);
  v535 = *(v536 - 8);
  MEMORY[0x28223BE20](v536);
  v601 = &v405 - v4;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFFB8, &qword_2528D5300);
  v533 = *(v534 - 8);
  MEMORY[0x28223BE20](v534);
  v600 = &v405 - v5;
  v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFFC0, &qword_2528D5308);
  v531 = *(v532 - 8);
  MEMORY[0x28223BE20](v532);
  v599 = &v405 - v6;
  v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFFC8, &qword_2528D5310);
  v529 = *(v530 - 8);
  MEMORY[0x28223BE20](v530);
  v598 = &v405 - v7;
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFFD0, &qword_2528D5318);
  v527 = *(v528 - 8);
  MEMORY[0x28223BE20](v528);
  v597 = &v405 - v8;
  v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFFD8, &qword_2528D5320);
  v525 = *(v526 - 8);
  MEMORY[0x28223BE20](v526);
  v596 = &v405 - v9;
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFFE0, &qword_2528D5328);
  v523 = *(v524 - 8);
  MEMORY[0x28223BE20](v524);
  v595 = &v405 - v10;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFFE8, &qword_2528D5330);
  v521 = *(v522 - 8);
  MEMORY[0x28223BE20](v522);
  v594 = &v405 - v11;
  v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFFF0, &qword_2528D5338);
  v518 = *(v519 - 8);
  MEMORY[0x28223BE20](v519);
  v593 = &v405 - v12;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFFF8, &qword_2528D5340);
  v516 = *(v517 - 8);
  MEMORY[0x28223BE20](v517);
  v592 = &v405 - v13;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500000, &qword_2528D5348);
  v514 = *(v515 - 8);
  MEMORY[0x28223BE20](v515);
  v587 = &v405 - v14;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500008, &qword_2528D5350);
  v512 = *(v513 - 8);
  MEMORY[0x28223BE20](v513);
  v582 = &v405 - v15;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500010, &qword_2528D5358);
  v510 = *(v511 - 8);
  MEMORY[0x28223BE20](v511);
  v578 = &v405 - v16;
  v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500018, &qword_2528D5360);
  v508 = *(v509 - 8);
  MEMORY[0x28223BE20](v509);
  v575 = &v405 - v17;
  v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500020, &qword_2528D5368);
  v506 = *(v507 - 8);
  MEMORY[0x28223BE20](v507);
  v571 = &v405 - v18;
  v505 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500028, &qword_2528D5370);
  v504 = *(v505 - 8);
  MEMORY[0x28223BE20](v505);
  v568 = &v405 - v19;
  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500030, &qword_2528D5378);
  v502 = *(v503 - 8);
  MEMORY[0x28223BE20](v503);
  v565 = &v405 - v20;
  v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500038, &qword_2528D5380);
  v500 = *(v501 - 8);
  MEMORY[0x28223BE20](v501);
  v562 = &v405 - v21;
  v499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500040, &qword_2528D5388);
  v498 = *(v499 - 8);
  MEMORY[0x28223BE20](v499);
  v560 = &v405 - v22;
  v497 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500048, &qword_2528D5390);
  v496 = *(v497 - 8);
  MEMORY[0x28223BE20](v497);
  v558 = &v405 - v23;
  v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500050, &qword_2528D5398);
  v494 = *(v495 - 8);
  MEMORY[0x28223BE20](v495);
  v555 = &v405 - v24;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500058, &qword_2528D53A0);
  v492 = *(v493 - 8);
  MEMORY[0x28223BE20](v493);
  v553 = &v405 - v25;
  v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500060, &qword_2528D53A8);
  v490 = *(v491 - 8);
  MEMORY[0x28223BE20](v491);
  v551 = &v405 - v26;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500068, &qword_2528D53B0);
  v488 = *(v489 - 8);
  MEMORY[0x28223BE20](v489);
  v550 = &v405 - v27;
  v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500070, &qword_2528D53B8);
  v486 = *(v487 - 8);
  MEMORY[0x28223BE20](v487);
  v548 = &v405 - v28;
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500078, &qword_2528D53C0);
  v484 = *(v485 - 8);
  MEMORY[0x28223BE20](v485);
  v545 = &v405 - v29;
  v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500080, &qword_2528D53C8);
  v482 = *(v483 - 8);
  MEMORY[0x28223BE20](v483);
  v543 = &v405 - v30;
  v481 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500088, &qword_2528D53D0);
  v480 = *(v481 - 8);
  MEMORY[0x28223BE20](v481);
  v542 = &v405 - v31;
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500090, &qword_2528D53D8);
  v478 = *(v479 - 8);
  MEMORY[0x28223BE20](v479);
  v544 = &v405 - v32;
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500098, &qword_2528D53E0);
  v476 = *(v477 - 8);
  MEMORY[0x28223BE20](v477);
  v546 = &v405 - v33;
  v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5000A0, &qword_2528D53E8);
  v474 = *(v475 - 8);
  MEMORY[0x28223BE20](v475);
  v547 = &v405 - v34;
  v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5000A8, &qword_2528D53F0);
  v472 = *(v473 - 8);
  MEMORY[0x28223BE20](v473);
  v549 = &v405 - v35;
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5000B0, &qword_2528D53F8);
  v470 = *(v471 - 8);
  MEMORY[0x28223BE20](v471);
  v603 = &v405 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5000B8, &qword_2528D5400);
  v468 = *(v37 - 8);
  v469 = v37;
  MEMORY[0x28223BE20](v37);
  v552 = &v405 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5000C0, &qword_2528D5408);
  v466 = *(v39 - 8);
  v467 = v39;
  MEMORY[0x28223BE20](v39);
  v604 = &v405 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5000C8, &qword_2528D5410);
  v464 = *(v41 - 8);
  v465 = v41;
  MEMORY[0x28223BE20](v41);
  v554 = &v405 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5000D0, &qword_2528D5418);
  v462 = *(v43 - 8);
  v463 = v43;
  MEMORY[0x28223BE20](v43);
  v556 = &v405 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5000D8, &qword_2528D5420);
  v460 = *(v45 - 8);
  v461 = v45;
  MEMORY[0x28223BE20](v45);
  v557 = &v405 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5000E0, &qword_2528D5428);
  v458 = *(v47 - 8);
  v459 = v47;
  MEMORY[0x28223BE20](v47);
  v605 = &v405 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5000E8, &qword_2528D5430);
  v456 = *(v49 - 8);
  v457 = v49;
  MEMORY[0x28223BE20](v49);
  v559 = &v405 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5000F0, &qword_2528D5438);
  v454 = *(v51 - 8);
  v455 = v51;
  MEMORY[0x28223BE20](v51);
  v561 = &v405 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5000F8, &qword_2528D5440);
  v452 = *(v53 - 8);
  v453 = v53;
  MEMORY[0x28223BE20](v53);
  v563 = &v405 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500100, &qword_2528D5448);
  v450 = *(v55 - 8);
  v451 = v55;
  MEMORY[0x28223BE20](v55);
  v564 = &v405 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500108, &qword_2528D5450);
  v448 = *(v57 - 8);
  v449 = v57;
  MEMORY[0x28223BE20](v57);
  v566 = &v405 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500110, &qword_2528D5458);
  v446 = *(v59 - 8);
  v447 = v59;
  MEMORY[0x28223BE20](v59);
  v567 = &v405 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500118, &qword_2528D5460);
  v444 = *(v61 - 8);
  v445 = v61;
  MEMORY[0x28223BE20](v61);
  v569 = &v405 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500120, &qword_2528D5468);
  v442 = *(v63 - 8);
  v443 = v63;
  MEMORY[0x28223BE20](v63);
  v607 = &v405 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500128, &qword_2528D5470);
  v440 = *(v65 - 8);
  v441 = v65;
  MEMORY[0x28223BE20](v65);
  v570 = &v405 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500130, &qword_2528D5478);
  v438 = *(v67 - 8);
  v439 = v67;
  MEMORY[0x28223BE20](v67);
  v573 = &v405 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500138, &qword_2528D5480);
  v436 = *(v69 - 8);
  v437 = v69;
  MEMORY[0x28223BE20](v69);
  v574 = &v405 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500140, &qword_2528D5488);
  v434 = *(v71 - 8);
  v435 = v71;
  MEMORY[0x28223BE20](v71);
  v576 = &v405 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500148, &qword_2528D5490);
  v432 = *(v73 - 8);
  v433 = v73;
  MEMORY[0x28223BE20](v73);
  v577 = &v405 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500150, &qword_2528D5498);
  v430 = *(v75 - 8);
  v431 = v75;
  MEMORY[0x28223BE20](v75);
  v579 = &v405 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500158, &qword_2528D54A0);
  v428 = *(v77 - 8);
  v429 = v77;
  MEMORY[0x28223BE20](v77);
  v580 = &v405 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500160, &qword_2528D54A8);
  v426 = *(v79 - 8);
  v427 = v79;
  MEMORY[0x28223BE20](v79);
  v581 = &v405 - v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500168, &qword_2528D54B0);
  v424 = *(v81 - 8);
  v425 = v81;
  MEMORY[0x28223BE20](v81);
  v583 = &v405 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500170, &qword_2528D54B8);
  v422 = *(v83 - 8);
  v423 = v83;
  MEMORY[0x28223BE20](v83);
  v584 = &v405 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500178, &qword_2528D54C0);
  v420 = *(v85 - 8);
  v421 = v85;
  MEMORY[0x28223BE20](v85);
  v585 = &v405 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500180, &qword_2528D54C8);
  v418 = *(v87 - 8);
  v419 = v87;
  MEMORY[0x28223BE20](v87);
  v586 = &v405 - v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500188, &qword_2528D54D0);
  v416 = *(v89 - 8);
  v417 = v89;
  MEMORY[0x28223BE20](v89);
  v588 = &v405 - v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500190, &qword_2528D54D8);
  v414 = *(v91 - 8);
  v415 = v91;
  MEMORY[0x28223BE20](v91);
  v589 = &v405 - v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F500198, &qword_2528D54E0);
  v412 = *(v93 - 8);
  v413 = v93;
  MEMORY[0x28223BE20](v93);
  v590 = &v405 - v94;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5001A0, &qword_2528D54E8);
  v410 = *(v95 - 8);
  v411 = v95;
  MEMORY[0x28223BE20](v95);
  v591 = &v405 - v96;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5001A8, &qword_2528D54F0);
  v408 = *(v97 - 8);
  v409 = v97;
  MEMORY[0x28223BE20](v97);
  v99 = &v405 - v98;
  v100 = sub_252897E80();
  MEMORY[0x2530A60E0](v100, &type metadata for Attribute, &type metadata for Attribute.AirParticulateDensityCase.Resolver, v100);
  v101 = sub_252897ED4();
  MEMORY[0x2530A60E0](v101, &type metadata for Attribute, &type metadata for Attribute.AirParticulateSizeCase.Resolver, v101);
  v102 = sub_252897F28();
  MEMORY[0x2530A60E0](v102, &type metadata for Attribute, &type metadata for Attribute.AirQualityCase.Resolver, v102);
  v657 = sub_252897F7C();
  MEMORY[0x2530A60E0](v657, &type metadata for Attribute, &type metadata for Attribute.BatteryLevelCase.Resolver, v657);
  v669 = sub_252897FD0();
  MEMORY[0x2530A60E0](v669, &type metadata for Attribute, &type metadata for Attribute.BrightnessCase.Resolver, v669);
  v668 = sub_252898024();
  MEMORY[0x2530A60E0](v668, &type metadata for Attribute, &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver, v668);
  v662 = sub_252898078();
  MEMORY[0x2530A60E0](v662, &type metadata for Attribute, &type metadata for Attribute.CarbonDioxideLevelCase.Resolver, v662);
  v671 = sub_2528980CC();
  MEMORY[0x2530A60E0](v671, &type metadata for Attribute, &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver, v671);
  v666 = sub_252898120();
  MEMORY[0x2530A60E0](v666, &type metadata for Attribute, &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver, v666);
  v661 = sub_252898174();
  MEMORY[0x2530A60E0](v661, &type metadata for Attribute, &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver, v661);
  v660 = sub_2528981C8();
  MEMORY[0x2530A60E0](v660, &type metadata for Attribute, &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver, v660);
  v665 = sub_25289821C();
  MEMORY[0x2530A60E0](v665, &type metadata for Attribute, &type metadata for Attribute.ChargingStateCase.Resolver, v665);
  v663 = sub_252898270();
  MEMORY[0x2530A60E0](v663, &type metadata for Attribute, &type metadata for Attribute.ChildLockEnabledCase.Resolver, v663);
  v655 = sub_2528982C4();
  MEMORY[0x2530A60E0](v655, &type metadata for Attribute, &type metadata for Attribute.ColorCase.Resolver, v655);
  v654 = sub_252898318();
  MEMORY[0x2530A60E0](v654, &type metadata for Attribute, &type metadata for Attribute.ContactDetectedCase.Resolver, v654);
  v656 = sub_25289836C();
  MEMORY[0x2530A60E0](v656, &type metadata for Attribute, &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver, v656);
  v658 = sub_2528983C0();
  MEMORY[0x2530A60E0](v658, &type metadata for Attribute, &type metadata for Attribute.CurrentDoorStateCase.Resolver, v658);
  v653 = sub_252898414();
  MEMORY[0x2530A60E0](v653, &type metadata for Attribute, &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver, v653);
  v652 = sub_252898468();
  MEMORY[0x2530A60E0](v652, &type metadata for Attribute, &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver, v652);
  v651 = sub_2528984BC();
  MEMORY[0x2530A60E0](v651, &type metadata for Attribute, &type metadata for Attribute.CurrentHumidityCase.Resolver, v651);
  v649 = sub_252898510();
  MEMORY[0x2530A60E0](v649, &type metadata for Attribute, &type metadata for Attribute.CurrentLockStateCase.Resolver, v649);
  v650 = sub_252898564();
  MEMORY[0x2530A60E0](v650, &type metadata for Attribute, &type metadata for Attribute.CurrentPositionCase.Resolver, v650);
  v647 = sub_2528985B8();
  MEMORY[0x2530A60E0](v647, &type metadata for Attribute, &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver, v647);
  v648 = sub_25289860C();
  MEMORY[0x2530A60E0](v648, &type metadata for Attribute, &type metadata for Attribute.CurrentTemperatureCase.Resolver, v648);
  v646 = sub_252898660();
  MEMORY[0x2530A60E0](v646, &type metadata for Attribute, &type metadata for Attribute.CurrentThermostatModeCase.Resolver, v646);
  v641 = sub_2528986B4();
  MEMORY[0x2530A60E0](v641, &type metadata for Attribute, &type metadata for Attribute.CurrentVerticalTiltCase.Resolver, v641);
  v642 = sub_252898708();
  MEMORY[0x2530A60E0](v642, &type metadata for Attribute, &type metadata for Attribute.FilterChangeNeededCase.Resolver, v642);
  v645 = sub_25289875C();
  MEMORY[0x2530A60E0](v645, &type metadata for Attribute, &type metadata for Attribute.FilterLifeLevelCase.Resolver, v645);
  v643 = sub_2528987B0();
  MEMORY[0x2530A60E0](v643, &type metadata for Attribute, &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver, v643);
  v644 = sub_252898804();
  MEMORY[0x2530A60E0](v644, &type metadata for Attribute, &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver, v644);
  v639 = sub_252898858();
  MEMORY[0x2530A60E0](v639, &type metadata for Attribute, &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver, v639);
  v640 = sub_2528988AC();
  MEMORY[0x2530A60E0](v640, &type metadata for Attribute, &type metadata for Attribute.InUseCase.Resolver, v640);
  v638 = sub_252898900();
  MEMORY[0x2530A60E0](v638, &type metadata for Attribute, &type metadata for Attribute.LeakDetectedCase.Resolver, v638);
  v637 = sub_252898954();
  MEMORY[0x2530A60E0](v637, &type metadata for Attribute, &type metadata for Attribute.LightLevelCase.Resolver, v637);
  v635 = sub_2528989A8();
  MEMORY[0x2530A60E0](v635, &type metadata for Attribute, &type metadata for Attribute.LowBatteryCase.Resolver, v635);
  v636 = sub_2528989FC();
  MEMORY[0x2530A60E0](v636, &type metadata for Attribute, &type metadata for Attribute.MotionDetectedCase.Resolver, v636);
  v634 = sub_252898A50();
  MEMORY[0x2530A60E0](v634, &type metadata for Attribute, &type metadata for Attribute.NaturalLightCase.Resolver, v634);
  v632 = sub_252898AA4();
  MEMORY[0x2530A60E0](v632, &type metadata for Attribute, &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver, v632);
  v633 = sub_252898AF8();
  MEMORY[0x2530A60E0](v633, &type metadata for Attribute, &type metadata for Attribute.ObstructionDetectedCase.Resolver, v633);
  v631 = sub_252898B4C();
  MEMORY[0x2530A60E0](v631, &type metadata for Attribute, &type metadata for Attribute.OccupancyDetectedCase.Resolver, v631);
  v630 = sub_252898BA0();
  MEMORY[0x2530A60E0](v630, &type metadata for Attribute, &type metadata for Attribute.OzoneDensityCase.Resolver, v630);
  v629 = sub_252898BF4();
  MEMORY[0x2530A60E0](v629, &type metadata for Attribute, &type metadata for Attribute.Pm10DensityCase.Resolver, v629);
  v628 = sub_252898C48();
  MEMORY[0x2530A60E0](v628, &type metadata for Attribute, &type metadata for Attribute.Pm2_5DensityCase.Resolver, v628);
  v627 = sub_252898C9C();
  MEMORY[0x2530A60E0](v627, &type metadata for Attribute, &type metadata for Attribute.PositionStateCase.Resolver, v627);
  v626 = sub_252898CF0();
  MEMORY[0x2530A60E0](v626, &type metadata for Attribute, &type metadata for Attribute.PowerCase.Resolver, v626);
  v624 = sub_252898D44();
  MEMORY[0x2530A60E0](v624, &type metadata for Attribute, &type metadata for Attribute.RemainingDurationCase.Resolver, v624);
  v625 = sub_252898D98();
  MEMORY[0x2530A60E0](v625, &type metadata for Attribute, &type metadata for Attribute.RotationDirectionCase.Resolver, v625);
  v623 = sub_252898DEC();
  MEMORY[0x2530A60E0](v623, &type metadata for Attribute, &type metadata for Attribute.RotationSpeedCase.Resolver, v623);
  v622 = sub_252898E40();
  MEMORY[0x2530A60E0](v622, &type metadata for Attribute, &type metadata for Attribute.RvcCurrentRunCase.Resolver, v622);
  v621 = sub_252898E94();
  MEMORY[0x2530A60E0](v621, &type metadata for Attribute, &type metadata for Attribute.RvcCase.Resolver, v621);
  v620 = sub_252898EE8();
  MEMORY[0x2530A60E0](v620, &type metadata for Attribute, &type metadata for Attribute.SetDurationCase.Resolver, v620);
  v619 = sub_252898F3C();
  MEMORY[0x2530A60E0](v619, &type metadata for Attribute, &type metadata for Attribute.SmokeDetectedCase.Resolver, v619);
  v618 = sub_252898F90();
  MEMORY[0x2530A60E0](v618, &type metadata for Attribute, &type metadata for Attribute.SulphurDioxideDensityCase.Resolver, v618);
  v617 = sub_252898FE4();
  MEMORY[0x2530A60E0](v617, &type metadata for Attribute, &type metadata for Attribute.SwingModeEnabledCase.Resolver, v617);
  v615 = sub_252899038();
  MEMORY[0x2530A60E0](v615, &type metadata for Attribute, &type metadata for Attribute.TargetAirPurifierStateCase.Resolver, v615);
  v616 = sub_25289908C();
  MEMORY[0x2530A60E0](v616, &type metadata for Attribute, &type metadata for Attribute.TargetDoorStateCase.Resolver, v616);
  v614 = sub_2528990E0();
  MEMORY[0x2530A60E0](v614, &type metadata for Attribute, &type metadata for Attribute.TargetHorizontalTiltCase.Resolver, v614);
  v613 = sub_252899134();
  MEMORY[0x2530A60E0](v613, &type metadata for Attribute, &type metadata for Attribute.TargetHumidityCase.Resolver, v613);
  v612 = sub_252899188();
  MEMORY[0x2530A60E0](v612, &type metadata for Attribute, &type metadata for Attribute.TargetLockStateCase.Resolver, v612);
  v611 = sub_2528991DC();
  MEMORY[0x2530A60E0](v611, &type metadata for Attribute, &type metadata for Attribute.TargetPositionCase.Resolver, v611);
  v610 = sub_252899230();
  MEMORY[0x2530A60E0](v610, &type metadata for Attribute, &type metadata for Attribute.TargetSecuritySystemStateCase.Resolver, v610);
  v609 = sub_252899284();
  MEMORY[0x2530A60E0](v609, &type metadata for Attribute, &type metadata for Attribute.TargetVerticalTiltCase.Resolver, v609);
  v608 = sub_2528992D8();
  MEMORY[0x2530A60E0](v608, &type metadata for Attribute, &type metadata for Attribute.ThermostatModeCase.Resolver, v608);
  v606 = sub_25289932C();
  MEMORY[0x2530A60E0](v606, &type metadata for Attribute, &type metadata for Attribute.ThermostatModeAndValueCase.Resolver, v606);
  v572 = sub_252899380();
  MEMORY[0x2530A60E0](v572, &type metadata for Attribute, &type metadata for Attribute.ThermostatModeAndRangeCase.Resolver, v572);
  v405 = sub_2528993D4();
  MEMORY[0x2530A60E0](v405, &type metadata for Attribute, &type metadata for Attribute.VolatileOrganicCompoundDensityCase.Resolver, v405);
  v406 = sub_252899428();
  MEMORY[0x2530A60E0](v406, &type metadata for Attribute, &type metadata for Attribute.WaterLevelCase.Resolver, v406);
  v103 = sub_2528941D8();
  v407 = v99;
  sub_2528BEAA0();
  v5093 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v5092 = v100;
  sub_2528BEA90();
  v5090 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v5091 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v5088 = v100;
  v5089 = v101;
  sub_2528BEA90();
  v5085 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v5086 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v5087 = &type metadata for Attribute.AirQualityCase.Resolver;
  v5082 = v100;
  v5083 = v101;
  v5084 = v102;
  v104 = v657;
  v670 = v103;
  sub_2528BEA90();
  v5078 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v5079 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v5080 = &type metadata for Attribute.AirQualityCase.Resolver;
  v5081 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v5074 = v100;
  v5075 = v101;
  v5076 = v102;
  v5077 = v104;
  v105 = v104;
  v106 = v669;
  sub_2528BEA90();
  v5069 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v5070 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v5071 = &type metadata for Attribute.AirQualityCase.Resolver;
  v5072 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v5073 = &type metadata for Attribute.BrightnessCase.Resolver;
  v5064 = v100;
  v5065 = v101;
  v667 = v101;
  v107 = v102;
  v659 = v102;
  v5066 = v102;
  v5067 = v105;
  v5068 = v106;
  v108 = v668;
  sub_2528BEA90();
  v5058 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v5059 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v5060 = &type metadata for Attribute.AirQualityCase.Resolver;
  v5061 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v5062 = &type metadata for Attribute.BrightnessCase.Resolver;
  v5063 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v5052 = v100;
  v5053 = v101;
  v5054 = v107;
  v5055 = v105;
  v5056 = v106;
  v5057 = v108;
  v109 = v662;
  sub_2528BEA90();
  v5045 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v5046 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v5047 = &type metadata for Attribute.AirQualityCase.Resolver;
  v5048 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v5049 = &type metadata for Attribute.BrightnessCase.Resolver;
  v5050 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v5051 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v110 = v100;
  v664 = v100;
  v5038 = v100;
  v111 = v667;
  v5039 = v667;
  v112 = v659;
  v5040 = v659;
  v5041 = v105;
  v5042 = v106;
  v5043 = v108;
  v5044 = v109;
  v113 = v109;
  v114 = v671;
  sub_2528BEA90();
  v5030 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v5031 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v5032 = &type metadata for Attribute.AirQualityCase.Resolver;
  v5033 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v5034 = &type metadata for Attribute.BrightnessCase.Resolver;
  v5035 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v5036 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v5037 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v5022 = v110;
  v5023 = v111;
  v5024 = v112;
  v5025 = v105;
  v5026 = v106;
  v115 = v668;
  v5027 = v668;
  v5028 = v113;
  v5029 = v114;
  v116 = v666;
  sub_2528BEA90();
  v5013 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v5014 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v5015 = &type metadata for Attribute.AirQualityCase.Resolver;
  v5016 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v5017 = &type metadata for Attribute.BrightnessCase.Resolver;
  v5018 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v5019 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v5020 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v5021 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v5004 = v664;
  v117 = v667;
  v5005 = v667;
  v5006 = v112;
  v5007 = v105;
  v5008 = v106;
  v5009 = v115;
  v5010 = v662;
  v5011 = v671;
  v5012 = v116;
  v118 = v661;
  sub_2528BEA90();
  v4994 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4995 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4996 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4997 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4998 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4999 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v5000 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v5001 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v5002 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v5003 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v119 = v664;
  v4984 = v664;
  v4985 = v117;
  v4986 = v112;
  v4987 = v105;
  v4988 = v106;
  v4989 = v668;
  v120 = v662;
  v4990 = v662;
  v121 = v671;
  v4991 = v671;
  v4992 = v666;
  v4993 = v118;
  v122 = v660;
  sub_2528BEA90();
  v4973 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4974 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4975 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4976 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4977 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4978 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4979 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4980 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4981 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4982 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4983 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4962 = v119;
  v123 = v119;
  v124 = v667;
  v4963 = v667;
  v4964 = v659;
  v4965 = v105;
  v125 = v669;
  v4966 = v669;
  v126 = v668;
  v4967 = v668;
  v4968 = v120;
  v4969 = v121;
  v127 = v666;
  v4970 = v666;
  v4971 = v118;
  v4972 = v122;
  v128 = v665;
  sub_2528BEA90();
  v4950 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4951 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4952 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4953 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4954 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4955 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4956 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4957 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4958 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4959 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4960 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4961 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4938 = v123;
  v4939 = v124;
  v129 = v659;
  v4940 = v659;
  v4941 = v657;
  v4942 = v125;
  v4943 = v126;
  v130 = v126;
  v4944 = v662;
  v4945 = v671;
  v4946 = v127;
  v4947 = v661;
  v4948 = v660;
  v4949 = v128;
  v131 = v663;
  sub_2528BEA90();
  v4925 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4926 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4927 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4928 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4929 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4930 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4931 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4932 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4933 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4934 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4935 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4936 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4937 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4912 = v664;
  v4913 = v667;
  v4914 = v129;
  v132 = v657;
  v4915 = v657;
  v133 = v669;
  v4916 = v669;
  v4917 = v130;
  v134 = v662;
  v4918 = v662;
  v135 = v671;
  v4919 = v671;
  v4920 = v666;
  v136 = v661;
  v4921 = v661;
  v4922 = v660;
  v4923 = v665;
  v4924 = v131;
  v137 = v655;
  sub_2528BEA90();
  v4898 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4899 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4900 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4901 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4902 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4903 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4904 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4905 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4906 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4907 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4908 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4909 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4910 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4911 = &type metadata for Attribute.ColorCase.Resolver;
  v4884 = v664;
  v4885 = v667;
  v4886 = v129;
  v4887 = v132;
  v4888 = v133;
  v4889 = v668;
  v4890 = v134;
  v4891 = v135;
  v138 = v666;
  v4892 = v666;
  v4893 = v136;
  v4894 = v660;
  v4895 = v665;
  v4896 = v663;
  v4897 = v137;
  v139 = v654;
  sub_2528BEA90();
  v4869 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4870 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4871 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4872 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4873 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4874 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4875 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4876 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4877 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4878 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4879 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4880 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4881 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4882 = &type metadata for Attribute.ColorCase.Resolver;
  v4883 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v140 = v664;
  v4854 = v664;
  v141 = v667;
  v4855 = v667;
  v4856 = v129;
  v4857 = v657;
  v142 = v669;
  v4858 = v669;
  v4859 = v668;
  v4860 = v662;
  v4861 = v671;
  v4862 = v138;
  v143 = v661;
  v4863 = v661;
  v144 = v660;
  v4864 = v660;
  v4865 = v665;
  v4866 = v663;
  v4867 = v655;
  v4868 = v139;
  v145 = v656;
  sub_2528BEA90();
  v4838 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4839 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4840 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4841 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4842 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4843 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4844 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4845 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4846 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4847 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4848 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4849 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4850 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4851 = &type metadata for Attribute.ColorCase.Resolver;
  v4852 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4853 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4822 = v140;
  v4823 = v141;
  v4824 = v659;
  v146 = v657;
  v4825 = v657;
  v4826 = v142;
  v147 = v668;
  v4827 = v668;
  v4828 = v662;
  v4829 = v671;
  v148 = v666;
  v4830 = v666;
  v4831 = v143;
  v4832 = v144;
  v149 = v665;
  v4833 = v665;
  v4834 = v663;
  v4835 = v655;
  v150 = v654;
  v4836 = v654;
  v4837 = v145;
  v151 = v658;
  sub_2528BEA90();
  v4806 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4807 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4808 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4809 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4810 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4811 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4812 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4813 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4814 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4815 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4816 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4817 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4818 = &type metadata for Attribute.ColorCase.Resolver;
  v4819 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4820 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4821 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4788 = v664;
  v4789 = v667;
  v4790 = v659;
  v4791 = v146;
  v4792 = v669;
  v4793 = v147;
  v152 = v662;
  v4794 = v662;
  v4795 = v671;
  v4796 = v148;
  v4797 = v661;
  v153 = v660;
  v4798 = v660;
  v4799 = v149;
  v154 = v663;
  v4800 = v663;
  v4801 = v655;
  v4802 = v150;
  v4803 = v656;
  v4804 = v151;
  v4805 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v155 = v653;
  sub_2528BEA90();
  v4770 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4771 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4772 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4773 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4774 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4775 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4776 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4777 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4778 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4779 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4780 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4781 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4782 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4783 = &type metadata for Attribute.ColorCase.Resolver;
  v4784 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4785 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4786 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4787 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v156 = v664;
  v157 = v667;
  v4752 = v664;
  v4753 = v667;
  v4754 = v659;
  v4755 = v657;
  v4756 = v669;
  v4757 = v147;
  v4758 = v152;
  v4759 = v671;
  v158 = v661;
  v4760 = v666;
  v4761 = v661;
  v4762 = v153;
  v4763 = v665;
  v159 = v655;
  v4764 = v154;
  v4765 = v655;
  v4766 = v654;
  v4767 = v656;
  v4768 = v658;
  v4769 = v155;
  v160 = v652;
  sub_2528BEA90();
  v4733 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4734 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4735 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4736 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4737 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4738 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4739 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4740 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4741 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4742 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4743 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4744 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4745 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4746 = &type metadata for Attribute.ColorCase.Resolver;
  v4747 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4748 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4749 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4750 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4751 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4714 = v156;
  v4715 = v157;
  v161 = v659;
  v4716 = v659;
  v162 = v657;
  v4717 = v657;
  v4718 = v669;
  v4719 = v147;
  v163 = v662;
  v4720 = v662;
  v164 = v671;
  v4721 = v671;
  v4722 = v666;
  v4723 = v158;
  v4724 = v660;
  v4725 = v665;
  v4726 = v663;
  v4727 = v159;
  v165 = v654;
  v4728 = v654;
  v4729 = v656;
  v4730 = v658;
  v4731 = v653;
  v4732 = v160;
  v166 = v651;
  sub_2528BEA90();
  v4694 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4695 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4696 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4697 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4698 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4699 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4700 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4701 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4702 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4703 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4704 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4705 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4706 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4707 = &type metadata for Attribute.ColorCase.Resolver;
  v4708 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4709 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4710 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4711 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4712 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4713 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v4674 = v664;
  v4675 = v667;
  v4676 = v161;
  v4677 = v162;
  v167 = v669;
  v4678 = v669;
  v4679 = v668;
  v4680 = v163;
  v4681 = v164;
  v168 = v666;
  v4682 = v666;
  v169 = v661;
  v4683 = v661;
  v170 = v660;
  v4684 = v660;
  v4685 = v665;
  v4686 = v663;
  v4687 = v655;
  v4688 = v165;
  v171 = v656;
  v4689 = v656;
  v4690 = v658;
  v4691 = v653;
  v4692 = v652;
  v4693 = v166;
  v172 = v649;
  sub_2528BEA90();
  v4653 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4654 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4655 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4656 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4657 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4658 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4659 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4660 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4661 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4662 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4663 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4664 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4665 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4666 = &type metadata for Attribute.ColorCase.Resolver;
  v4667 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4668 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4669 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4670 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4671 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4672 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v4673 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v4632 = v664;
  v173 = v667;
  v4633 = v667;
  v4634 = v659;
  v4635 = v657;
  v4636 = v167;
  v4637 = v668;
  v4638 = v163;
  v4639 = v671;
  v4640 = v168;
  v4641 = v169;
  v4642 = v170;
  v174 = v665;
  v4643 = v665;
  v175 = v663;
  v4644 = v663;
  v4645 = v655;
  v176 = v654;
  v4646 = v654;
  v4647 = v171;
  v4648 = v658;
  v4649 = v653;
  v4650 = v652;
  v4651 = v651;
  v4652 = v172;
  v177 = v650;
  sub_2528BEA90();
  v4610 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4611 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4612 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4613 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4614 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4615 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4616 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4617 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4618 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4619 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4620 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4621 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4622 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4623 = &type metadata for Attribute.ColorCase.Resolver;
  v4624 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4625 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4626 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4627 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4628 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4629 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v4630 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v4631 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v4588 = v664;
  v4589 = v173;
  v4590 = v659;
  v4591 = v657;
  v4592 = v669;
  v178 = v668;
  v4593 = v668;
  v4594 = v662;
  v4595 = v671;
  v4596 = v666;
  v4597 = v661;
  v4598 = v660;
  v4599 = v174;
  v4600 = v175;
  v4601 = v655;
  v4602 = v176;
  v4603 = v656;
  v179 = v658;
  v4604 = v658;
  v4605 = v653;
  v4606 = v652;
  v4607 = v651;
  v4608 = v649;
  v4609 = v177;
  v180 = v647;
  sub_2528BEA90();
  v4565 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4566 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4567 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4568 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4569 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4570 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4571 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4572 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4573 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4574 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4575 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4576 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4577 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4578 = &type metadata for Attribute.ColorCase.Resolver;
  v4579 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4580 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4581 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4582 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4583 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4584 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v4585 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v4586 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v4587 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v181 = v664;
  v4542 = v664;
  v4543 = v667;
  v4544 = v659;
  v4545 = v657;
  v4546 = v669;
  v4547 = v178;
  v4548 = v662;
  v4549 = v671;
  v4550 = v666;
  v4551 = v661;
  v182 = v660;
  v4552 = v660;
  v4553 = v174;
  v4554 = v663;
  v4555 = v655;
  v4556 = v654;
  v4557 = v656;
  v4558 = v179;
  v4559 = v653;
  v4560 = v652;
  v4561 = v651;
  v4562 = v649;
  v183 = v650;
  v4563 = v650;
  v4564 = v180;
  v184 = v648;
  sub_2528BEA90();
  v4518 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4519 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4520 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4521 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4522 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4523 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4524 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4525 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4526 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4527 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4528 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4529 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4530 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4531 = &type metadata for Attribute.ColorCase.Resolver;
  v4532 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4533 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4534 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4535 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4536 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4537 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v4538 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v4539 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v4540 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v4541 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v4494 = v181;
  v4495 = v667;
  v4496 = v659;
  v185 = v657;
  v4497 = v657;
  v4498 = v669;
  v4499 = v668;
  v4500 = v662;
  v4501 = v671;
  v4502 = v666;
  v4503 = v661;
  v4504 = v182;
  v4505 = v174;
  v186 = v663;
  v4506 = v663;
  v187 = v655;
  v4507 = v655;
  v4508 = v654;
  v188 = v656;
  v4509 = v656;
  v4510 = v179;
  v189 = v653;
  v4511 = v653;
  v4512 = v652;
  v4513 = v651;
  v4514 = v649;
  v4515 = v183;
  v4516 = v647;
  v4517 = v184;
  v190 = v646;
  sub_2528BEA90();
  v4469 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4470 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4471 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4472 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4473 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4474 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4475 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4476 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4477 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4478 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4479 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4480 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4481 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4482 = &type metadata for Attribute.ColorCase.Resolver;
  v4483 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4484 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4485 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4486 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4487 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4488 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v4489 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v4490 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v4491 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v4492 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v4493 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v4444 = v664;
  v191 = v667;
  v4445 = v667;
  v4446 = v659;
  v4447 = v185;
  v192 = v669;
  v4448 = v669;
  v4449 = v668;
  v4450 = v662;
  v4451 = v671;
  v4452 = v666;
  v4453 = v661;
  v4454 = v660;
  v4455 = v665;
  v4456 = v186;
  v4457 = v187;
  v193 = v654;
  v4458 = v654;
  v4459 = v188;
  v4460 = v658;
  v4461 = v189;
  v194 = v652;
  v4462 = v652;
  v4463 = v651;
  v4464 = v649;
  v4465 = v650;
  v4466 = v647;
  v4467 = v648;
  v4468 = v190;
  v195 = v641;
  sub_2528BEA90();
  v4418 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4419 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4420 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4421 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4422 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4423 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4424 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4425 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4426 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4427 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4428 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4429 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4430 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4431 = &type metadata for Attribute.ColorCase.Resolver;
  v4432 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4433 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4434 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4435 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4436 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4437 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v4438 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v4439 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v4440 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v4441 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v4442 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v4443 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v196 = v664;
  v4392 = v664;
  v4393 = v191;
  v197 = v659;
  v4394 = v659;
  v4395 = v185;
  v4396 = v192;
  v198 = v668;
  v4397 = v668;
  v4398 = v662;
  v4399 = v671;
  v4400 = v666;
  v4401 = v661;
  v4402 = v660;
  v4403 = v665;
  v4404 = v663;
  v199 = v655;
  v4405 = v655;
  v4406 = v193;
  v4407 = v656;
  v4408 = v658;
  v4409 = v653;
  v4410 = v194;
  v200 = v651;
  v4411 = v651;
  v4412 = v649;
  v4413 = v650;
  v4414 = v647;
  v4415 = v648;
  v4416 = v646;
  v4417 = v195;
  v201 = v642;
  sub_2528BEA90();
  v4365 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4366 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4367 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4368 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4369 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4370 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4371 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4372 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4373 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4374 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4375 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4376 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4377 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4378 = &type metadata for Attribute.ColorCase.Resolver;
  v4379 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4380 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4381 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4382 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4383 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4384 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v4385 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v4386 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v4387 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v4388 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v4389 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v4390 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v4391 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v4338 = v196;
  v4339 = v667;
  v4340 = v197;
  v202 = v657;
  v4341 = v657;
  v4342 = v669;
  v4343 = v198;
  v4344 = v662;
  v203 = v671;
  v4345 = v671;
  v4346 = v666;
  v4347 = v661;
  v4348 = v660;
  v4349 = v665;
  v4350 = v663;
  v4351 = v199;
  v4352 = v654;
  v4353 = v656;
  v4354 = v658;
  v4355 = v653;
  v4356 = v194;
  v4357 = v200;
  v204 = v649;
  v4358 = v649;
  v4359 = v650;
  v4360 = v647;
  v4361 = v648;
  v4362 = v646;
  v205 = v641;
  v4363 = v641;
  v4364 = v201;
  v206 = v645;
  sub_2528BEA90();
  v4310 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4311 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4312 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4313 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4314 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4315 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4316 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4317 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4318 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4319 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4320 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4321 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4322 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4323 = &type metadata for Attribute.ColorCase.Resolver;
  v4324 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4325 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4326 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4327 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4328 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4329 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v4330 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v4331 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v4332 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v4333 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v4334 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v4335 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v4336 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v4337 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v4282 = v664;
  v4283 = v667;
  v4284 = v197;
  v4285 = v202;
  v4286 = v669;
  v4287 = v668;
  v207 = v662;
  v4288 = v662;
  v4289 = v203;
  v208 = v666;
  v4290 = v666;
  v4291 = v661;
  v4292 = v660;
  v4293 = v665;
  v4294 = v663;
  v209 = v655;
  v4295 = v655;
  v210 = v654;
  v4296 = v654;
  v4297 = v656;
  v4298 = v658;
  v4299 = v653;
  v4300 = v652;
  v4301 = v651;
  v4302 = v204;
  v4303 = v650;
  v4304 = v647;
  v4305 = v648;
  v4306 = v646;
  v4307 = v205;
  v4308 = v642;
  v4309 = v206;
  v211 = v643;
  sub_2528BEA90();
  v4253 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4254 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4255 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4256 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4257 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4258 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4259 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4260 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4261 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4262 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4263 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4264 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4265 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4266 = &type metadata for Attribute.ColorCase.Resolver;
  v4267 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4268 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4269 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4270 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4271 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4272 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v4273 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v4274 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v4275 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v4276 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v4277 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v4278 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v4279 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v4280 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v4281 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v4224 = v664;
  v4225 = v667;
  v4226 = v659;
  v4227 = v657;
  v212 = v669;
  v4228 = v669;
  v4229 = v668;
  v4230 = v207;
  v213 = v671;
  v4231 = v671;
  v4232 = v208;
  v214 = v661;
  v4233 = v661;
  v4234 = v660;
  v4235 = v665;
  v4236 = v663;
  v4237 = v209;
  v4238 = v210;
  v4239 = v656;
  v4240 = v658;
  v4241 = v653;
  v215 = v652;
  v4242 = v652;
  v216 = v651;
  v4243 = v651;
  v4244 = v649;
  v4245 = v650;
  v4246 = v647;
  v4247 = v648;
  v4248 = v646;
  v4249 = v641;
  v4250 = v642;
  v4251 = v645;
  v4252 = v211;
  v217 = v644;
  sub_2528BEA90();
  v4194 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4195 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4196 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4197 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4198 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4199 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4200 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4201 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4202 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4203 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4204 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4205 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4206 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4207 = &type metadata for Attribute.ColorCase.Resolver;
  v4208 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4209 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4210 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4211 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4212 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4213 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v4214 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v4215 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v4216 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v4217 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v4218 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v4219 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v4220 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v4221 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v4222 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v4223 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v4164 = v664;
  v4165 = v667;
  v4166 = v659;
  v4167 = v657;
  v4168 = v212;
  v4169 = v668;
  v4170 = v207;
  v4171 = v213;
  v218 = v666;
  v4172 = v666;
  v4173 = v214;
  v4174 = v660;
  v4175 = v665;
  v4176 = v663;
  v4177 = v655;
  v4178 = v654;
  v4179 = v656;
  v4180 = v658;
  v4181 = v653;
  v4182 = v215;
  v4183 = v216;
  v4184 = v649;
  v219 = v650;
  v4185 = v650;
  v4186 = v647;
  v4187 = v648;
  v4188 = v646;
  v4189 = v641;
  v4190 = v642;
  v4191 = v645;
  v220 = v643;
  v4192 = v643;
  v4193 = v217;
  v221 = v639;
  sub_2528BEA90();
  v4133 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4134 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4135 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4136 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4137 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4138 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4139 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4140 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4141 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4142 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4143 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4144 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4145 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4146 = &type metadata for Attribute.ColorCase.Resolver;
  v4147 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4148 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4149 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4150 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4151 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4152 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v4153 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v4154 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v4155 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v4156 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v4157 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v4158 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v4159 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v4160 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v4161 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v4162 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v4163 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v4102 = v664;
  v222 = v667;
  v4103 = v667;
  v223 = v659;
  v4104 = v659;
  v4105 = v657;
  v4106 = v669;
  v4107 = v668;
  v4108 = v662;
  v4109 = v671;
  v4110 = v218;
  v4111 = v214;
  v224 = v660;
  v4112 = v660;
  v4113 = v665;
  v4114 = v663;
  v4115 = v655;
  v4116 = v654;
  v225 = v656;
  v4117 = v656;
  v4118 = v658;
  v4119 = v653;
  v4120 = v652;
  v4121 = v651;
  v4122 = v649;
  v4123 = v219;
  v226 = v647;
  v4124 = v647;
  v4125 = v648;
  v4126 = v646;
  v4127 = v641;
  v4128 = v642;
  v4129 = v645;
  v4130 = v220;
  v4131 = v644;
  v4132 = v221;
  v227 = v640;
  sub_2528BEA90();
  v4070 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4071 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4072 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4073 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4074 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4075 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4076 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4077 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4078 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4079 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4080 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4081 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4082 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4083 = &type metadata for Attribute.ColorCase.Resolver;
  v4084 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4085 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4086 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4087 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4088 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4089 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v4090 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v4091 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v4092 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v4093 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v4094 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v4095 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v4096 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v4097 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v4098 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v4099 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v4100 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v4101 = &type metadata for Attribute.InUseCase.Resolver;
  v4038 = v664;
  v4039 = v222;
  v4040 = v223;
  v4041 = v657;
  v4042 = v669;
  v4043 = v668;
  v4044 = v662;
  v4045 = v671;
  v4046 = v666;
  v4047 = v661;
  v4048 = v224;
  v228 = v665;
  v4049 = v665;
  v4050 = v663;
  v4051 = v655;
  v4052 = v654;
  v4053 = v225;
  v4054 = v658;
  v229 = v653;
  v4055 = v653;
  v4056 = v652;
  v4057 = v651;
  v230 = v649;
  v4058 = v649;
  v4059 = v650;
  v4060 = v226;
  v231 = v648;
  v4061 = v648;
  v4062 = v646;
  v4063 = v641;
  v4064 = v642;
  v4065 = v645;
  v4066 = v643;
  v4067 = v644;
  v4068 = v639;
  v4069 = v227;
  v232 = v638;
  sub_2528BEA90();
  v4005 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v4006 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v4007 = &type metadata for Attribute.AirQualityCase.Resolver;
  v4008 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v4009 = &type metadata for Attribute.BrightnessCase.Resolver;
  v4010 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v4011 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v4012 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v4013 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v4014 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v4015 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v4016 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v4017 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v4018 = &type metadata for Attribute.ColorCase.Resolver;
  v4019 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v4020 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v4021 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v4022 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v4023 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v4024 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v4025 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v4026 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v4027 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v4028 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v4029 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v4030 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v4031 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v4032 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v4033 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v4034 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v4035 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v4036 = &type metadata for Attribute.InUseCase.Resolver;
  v4037 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v233 = v664;
  v3972 = v664;
  v3973 = v667;
  v3974 = v659;
  v3975 = v657;
  v3976 = v669;
  v3977 = v668;
  v3978 = v662;
  v3979 = v671;
  v3980 = v666;
  v3981 = v661;
  v3982 = v224;
  v3983 = v228;
  v234 = v663;
  v3984 = v663;
  v3985 = v655;
  v3986 = v654;
  v3987 = v656;
  v3988 = v658;
  v3989 = v229;
  v3990 = v652;
  v3991 = v651;
  v3992 = v230;
  v3993 = v650;
  v235 = v647;
  v3994 = v647;
  v3995 = v231;
  v236 = v646;
  v3996 = v646;
  v3997 = v641;
  v3998 = v642;
  v3999 = v645;
  v4000 = v643;
  v4001 = v644;
  v4002 = v639;
  v4003 = v640;
  v4004 = v232;
  v237 = v637;
  sub_2528BEA90();
  v3938 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v3939 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v3940 = &type metadata for Attribute.AirQualityCase.Resolver;
  v3941 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v3942 = &type metadata for Attribute.BrightnessCase.Resolver;
  v3943 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v3944 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v3945 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v3946 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v3947 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v3948 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v3949 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v3950 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v3951 = &type metadata for Attribute.ColorCase.Resolver;
  v3952 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v3953 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v3954 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v3955 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v3956 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v3957 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v3958 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v3959 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v3960 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v3961 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v3962 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v3963 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v3964 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v3965 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v3966 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v3967 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v3968 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v3969 = &type metadata for Attribute.InUseCase.Resolver;
  v3970 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v3971 = &type metadata for Attribute.LightLevelCase.Resolver;
  v3904 = v233;
  v3905 = v667;
  v3906 = v659;
  v238 = v657;
  v3907 = v657;
  v3908 = v669;
  v3909 = v668;
  v3910 = v662;
  v3911 = v671;
  v3912 = v666;
  v3913 = v661;
  v3914 = v224;
  v3915 = v665;
  v3916 = v234;
  v3917 = v655;
  v3918 = v654;
  v239 = v656;
  v3919 = v656;
  v3920 = v658;
  v240 = v653;
  v3921 = v653;
  v3922 = v652;
  v3923 = v651;
  v3924 = v649;
  v3925 = v650;
  v3926 = v235;
  v3927 = v648;
  v3928 = v236;
  v241 = v641;
  v3929 = v641;
  v3930 = v642;
  v3931 = v645;
  v3932 = v643;
  v3933 = v644;
  v3934 = v639;
  v3935 = v640;
  v3936 = v638;
  v3937 = v237;
  v242 = v635;
  sub_2528BEA90();
  v3869 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v3870 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v3871 = &type metadata for Attribute.AirQualityCase.Resolver;
  v3872 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v3873 = &type metadata for Attribute.BrightnessCase.Resolver;
  v3874 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v3875 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v3876 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v3877 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v3878 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v3879 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v3880 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v3881 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v3882 = &type metadata for Attribute.ColorCase.Resolver;
  v3883 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v3884 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v3885 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v3886 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v3887 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v3888 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v3889 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v3890 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v3891 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v3892 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v3893 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v3894 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v3895 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v3896 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v3897 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v3898 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v3899 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v3900 = &type metadata for Attribute.InUseCase.Resolver;
  v3901 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v3902 = &type metadata for Attribute.LightLevelCase.Resolver;
  v3903 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v3834 = v233;
  v243 = v667;
  v3835 = v667;
  v3836 = v659;
  v3837 = v238;
  v3838 = v669;
  v244 = v668;
  v3839 = v668;
  v3840 = v662;
  v3841 = v671;
  v3842 = v666;
  v3843 = v661;
  v3844 = v660;
  v3845 = v665;
  v3846 = v663;
  v3847 = v655;
  v3848 = v654;
  v3849 = v239;
  v245 = v658;
  v3850 = v658;
  v3851 = v240;
  v3852 = v652;
  v3853 = v651;
  v3854 = v649;
  v3855 = v650;
  v246 = v647;
  v3856 = v647;
  v3857 = v648;
  v3858 = v646;
  v3859 = v241;
  v3860 = v642;
  v3861 = v645;
  v3862 = v643;
  v3863 = v644;
  v3864 = v639;
  v3865 = v640;
  v3866 = v638;
  v3867 = v637;
  v3868 = v242;
  v247 = v636;
  sub_2528BEA90();
  v3798 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v3799 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v3800 = &type metadata for Attribute.AirQualityCase.Resolver;
  v3801 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v3802 = &type metadata for Attribute.BrightnessCase.Resolver;
  v3803 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v3804 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v3805 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v3806 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v3807 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v3808 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v3809 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v3810 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v3811 = &type metadata for Attribute.ColorCase.Resolver;
  v3812 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v3813 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v3814 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v3815 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v3816 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v3817 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v3818 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v3819 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v3820 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v3821 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v3822 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v3823 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v3824 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v3825 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v3826 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v3827 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v3828 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v3829 = &type metadata for Attribute.InUseCase.Resolver;
  v3830 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v3831 = &type metadata for Attribute.LightLevelCase.Resolver;
  v3832 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v3833 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v3762 = v233;
  v3763 = v243;
  v3764 = v659;
  v3765 = v657;
  v3766 = v669;
  v3767 = v244;
  v3768 = v662;
  v3769 = v671;
  v3770 = v666;
  v248 = v661;
  v3771 = v661;
  v3772 = v660;
  v3773 = v665;
  v3774 = v663;
  v3775 = v655;
  v3776 = v654;
  v3777 = v656;
  v3778 = v245;
  v249 = v653;
  v3779 = v653;
  v250 = v652;
  v3780 = v652;
  v3781 = v651;
  v3782 = v649;
  v3783 = v650;
  v3784 = v246;
  v3785 = v648;
  v3786 = v646;
  v251 = v641;
  v3787 = v641;
  v3788 = v642;
  v3789 = v645;
  v3790 = v643;
  v3791 = v644;
  v3792 = v639;
  v3793 = v640;
  v3794 = v638;
  v252 = v637;
  v3795 = v637;
  v3796 = v635;
  v3797 = v247;
  v253 = v634;
  sub_2528BEA90();
  v3725 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v3726 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v3727 = &type metadata for Attribute.AirQualityCase.Resolver;
  v3728 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v3729 = &type metadata for Attribute.BrightnessCase.Resolver;
  v3730 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v3731 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v3732 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v3733 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v3734 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v3735 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v3736 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v3737 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v3738 = &type metadata for Attribute.ColorCase.Resolver;
  v3739 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v3740 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v3741 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v3742 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v3743 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v3744 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v3745 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v3746 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v3747 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v3748 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v3749 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v3750 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v3751 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v3752 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v3753 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v3754 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v3755 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v3756 = &type metadata for Attribute.InUseCase.Resolver;
  v3757 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v3758 = &type metadata for Attribute.LightLevelCase.Resolver;
  v3759 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v3760 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v3761 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v3688 = v664;
  v3689 = v667;
  v3690 = v659;
  v254 = v657;
  v3691 = v657;
  v3692 = v669;
  v3693 = v668;
  v3694 = v662;
  v3695 = v671;
  v3696 = v666;
  v3697 = v248;
  v3698 = v660;
  v3699 = v665;
  v3700 = v663;
  v3701 = v655;
  v3702 = v654;
  v3703 = v656;
  v3704 = v658;
  v3705 = v249;
  v3706 = v250;
  v255 = v651;
  v3707 = v651;
  v3708 = v649;
  v3709 = v650;
  v3710 = v647;
  v3711 = v648;
  v3712 = v646;
  v3713 = v251;
  v256 = v642;
  v3714 = v642;
  v3715 = v645;
  v3716 = v643;
  v3717 = v644;
  v3718 = v639;
  v3719 = v640;
  v3720 = v638;
  v3721 = v252;
  v257 = v635;
  v3722 = v635;
  v258 = v636;
  v3723 = v636;
  v3724 = v253;
  v259 = v632;
  sub_2528BEA90();
  v3650 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v3651 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v3652 = &type metadata for Attribute.AirQualityCase.Resolver;
  v3653 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v3654 = &type metadata for Attribute.BrightnessCase.Resolver;
  v3655 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v3656 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v3657 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v3658 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v3659 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v3660 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v3661 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v3662 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v3663 = &type metadata for Attribute.ColorCase.Resolver;
  v3664 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v3665 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v3666 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v3667 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v3668 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v3669 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v3670 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v3671 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v3672 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v3673 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v3674 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v3675 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v3676 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v3677 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v3678 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v3679 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v3680 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v3681 = &type metadata for Attribute.InUseCase.Resolver;
  v3682 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v3683 = &type metadata for Attribute.LightLevelCase.Resolver;
  v3684 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v3685 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v3686 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v3687 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v3612 = v664;
  v3613 = v667;
  v3614 = v659;
  v3615 = v254;
  v3616 = v669;
  v3617 = v668;
  v3618 = v662;
  v3619 = v671;
  v3620 = v666;
  v3621 = v661;
  v3622 = v660;
  v3623 = v665;
  v260 = v663;
  v3624 = v663;
  v3625 = v655;
  v3626 = v654;
  v3627 = v656;
  v3628 = v658;
  v3629 = v653;
  v3630 = v652;
  v3631 = v255;
  v3632 = v649;
  v3633 = v650;
  v3634 = v647;
  v3635 = v648;
  v261 = v646;
  v3636 = v646;
  v3637 = v251;
  v3638 = v256;
  v3639 = v645;
  v3640 = v643;
  v3641 = v644;
  v3642 = v639;
  v3643 = v640;
  v3644 = v638;
  v3645 = v637;
  v3646 = v257;
  v3647 = v258;
  v262 = v634;
  v3648 = v634;
  v3649 = v259;
  v263 = v633;
  sub_2528BEA90();
  v3573 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v3574 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v3575 = &type metadata for Attribute.AirQualityCase.Resolver;
  v3576 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v3577 = &type metadata for Attribute.BrightnessCase.Resolver;
  v3578 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v3579 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v3580 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v3581 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v3582 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v3583 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v3584 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v3585 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v3586 = &type metadata for Attribute.ColorCase.Resolver;
  v3587 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v3588 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v3589 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v3590 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v3591 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v3592 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v3593 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v3594 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v3595 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v3596 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v3597 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v3598 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v3599 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v3600 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v3601 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v3602 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v3603 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v3604 = &type metadata for Attribute.InUseCase.Resolver;
  v3605 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v3606 = &type metadata for Attribute.LightLevelCase.Resolver;
  v3607 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v3608 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v3609 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v3610 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v3611 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v3534 = v664;
  v3535 = v667;
  v3536 = v659;
  v3537 = v657;
  v3538 = v669;
  v3539 = v668;
  v3540 = v662;
  v3541 = v671;
  v3542 = v666;
  v3543 = v661;
  v3544 = v660;
  v3545 = v665;
  v3546 = v260;
  v264 = v655;
  v3547 = v655;
  v3548 = v654;
  v3549 = v656;
  v3550 = v658;
  v3551 = v653;
  v265 = v652;
  v3552 = v652;
  v266 = v651;
  v3553 = v651;
  v3554 = v649;
  v3555 = v650;
  v3556 = v647;
  v3557 = v648;
  v3558 = v261;
  v3559 = v251;
  v3560 = v256;
  v3561 = v645;
  v3562 = v643;
  v3563 = v644;
  v3564 = v639;
  v3565 = v640;
  v3566 = v638;
  v3567 = v637;
  v267 = v635;
  v3568 = v635;
  v3569 = v636;
  v3570 = v262;
  v268 = v632;
  v3571 = v632;
  v3572 = v263;
  v269 = v631;
  sub_2528BEA90();
  v3494 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v3495 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v3496 = &type metadata for Attribute.AirQualityCase.Resolver;
  v3497 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v3498 = &type metadata for Attribute.BrightnessCase.Resolver;
  v3499 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v3500 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v3501 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v3502 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v3503 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v3504 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v3505 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v3506 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v3507 = &type metadata for Attribute.ColorCase.Resolver;
  v3508 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v3509 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v3510 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v3511 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v3512 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v3513 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v3514 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v3515 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v3516 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v3517 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v3518 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v3519 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v3520 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v3521 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v3522 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v3523 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v3524 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v3525 = &type metadata for Attribute.InUseCase.Resolver;
  v3526 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v3527 = &type metadata for Attribute.LightLevelCase.Resolver;
  v3528 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v3529 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v3530 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v3531 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v3532 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v3533 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v3454 = v664;
  v3455 = v667;
  v3456 = v659;
  v3457 = v657;
  v3458 = v669;
  v3459 = v668;
  v3460 = v662;
  v3461 = v671;
  v3462 = v666;
  v3463 = v661;
  v3464 = v660;
  v3465 = v665;
  v3466 = v663;
  v3467 = v264;
  v3468 = v654;
  v3469 = v656;
  v3470 = v658;
  v3471 = v653;
  v3472 = v265;
  v3473 = v266;
  v3474 = v649;
  v3475 = v650;
  v3476 = v647;
  v3477 = v648;
  v3478 = v646;
  v270 = v641;
  v3479 = v641;
  v3480 = v256;
  v271 = v645;
  v3481 = v645;
  v3482 = v643;
  v3483 = v644;
  v3484 = v639;
  v3485 = v640;
  v3486 = v638;
  v3487 = v637;
  v3488 = v267;
  v3489 = v636;
  v272 = v634;
  v3490 = v634;
  v3491 = v268;
  v3492 = v633;
  v3493 = v269;
  v273 = v630;
  sub_2528BEA90();
  v3413 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v3414 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v3415 = &type metadata for Attribute.AirQualityCase.Resolver;
  v3416 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v3417 = &type metadata for Attribute.BrightnessCase.Resolver;
  v3418 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v3419 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v3420 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v3421 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v3422 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v3423 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v3424 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v3425 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v3426 = &type metadata for Attribute.ColorCase.Resolver;
  v3427 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v3428 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v3429 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v3430 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v3431 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v3432 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v3433 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v3434 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v3435 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v3436 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v3437 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v3438 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v3439 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v3440 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v3441 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v3442 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v3443 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v3444 = &type metadata for Attribute.InUseCase.Resolver;
  v3445 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v3446 = &type metadata for Attribute.LightLevelCase.Resolver;
  v3447 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v3448 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v3449 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v3450 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v3451 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v3452 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v3453 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v3372 = v664;
  v3373 = v667;
  v3374 = v659;
  v274 = v657;
  v3375 = v657;
  v3376 = v669;
  v3377 = v668;
  v3378 = v662;
  v275 = v671;
  v3379 = v671;
  v276 = v666;
  v3380 = v666;
  v3381 = v661;
  v3382 = v660;
  v3383 = v665;
  v3384 = v663;
  v3385 = v655;
  v3386 = v654;
  v3387 = v656;
  v3388 = v658;
  v3389 = v653;
  v3390 = v652;
  v3391 = v651;
  v3392 = v649;
  v3393 = v650;
  v3394 = v647;
  v3395 = v648;
  v3396 = v646;
  v3397 = v270;
  v3398 = v642;
  v3399 = v271;
  v3400 = v643;
  v3401 = v644;
  v3402 = v639;
  v3403 = v640;
  v3404 = v638;
  v3405 = v637;
  v3406 = v635;
  v3407 = v636;
  v3408 = v272;
  v3409 = v632;
  v3410 = v633;
  v3411 = v631;
  v3412 = v273;
  v277 = v629;
  sub_2528BEA90();
  v3330 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v3331 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v3332 = &type metadata for Attribute.AirQualityCase.Resolver;
  v3333 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v3334 = &type metadata for Attribute.BrightnessCase.Resolver;
  v3335 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v3336 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v3337 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v3338 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v3339 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v3340 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v3341 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v3342 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v3343 = &type metadata for Attribute.ColorCase.Resolver;
  v3344 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v3345 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v3346 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v3347 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v3348 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v3349 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v3350 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v3351 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v3352 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v3353 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v3354 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v3355 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v3356 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v3357 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v3358 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v3359 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v3360 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v3361 = &type metadata for Attribute.InUseCase.Resolver;
  v3362 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v3363 = &type metadata for Attribute.LightLevelCase.Resolver;
  v3364 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v3365 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v3366 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v3367 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v3368 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v3369 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v3370 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v3371 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v3288 = v664;
  v3289 = v667;
  v3290 = v659;
  v3291 = v274;
  v3292 = v669;
  v3293 = v668;
  v278 = v662;
  v3294 = v662;
  v3295 = v275;
  v3296 = v276;
  v3297 = v661;
  v3298 = v660;
  v3299 = v665;
  v3300 = v663;
  v279 = v655;
  v3301 = v655;
  v280 = v654;
  v3302 = v654;
  v3303 = v656;
  v3304 = v658;
  v3305 = v653;
  v3306 = v652;
  v3307 = v651;
  v281 = v649;
  v3308 = v649;
  v3309 = v650;
  v3310 = v647;
  v3311 = v648;
  v3312 = v646;
  v3313 = v641;
  v3314 = v642;
  v3315 = v645;
  v282 = v643;
  v3316 = v643;
  v3317 = v644;
  v3318 = v639;
  v3319 = v640;
  v3320 = v638;
  v3321 = v637;
  v3322 = v635;
  v3323 = v636;
  v3324 = v634;
  v3325 = v632;
  v3326 = v633;
  v3327 = v631;
  v3328 = v630;
  v3329 = v277;
  v283 = v628;
  sub_2528BEA90();
  v3245 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v3246 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v3247 = &type metadata for Attribute.AirQualityCase.Resolver;
  v3248 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v3249 = &type metadata for Attribute.BrightnessCase.Resolver;
  v3250 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v3251 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v3252 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v3253 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v3254 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v3255 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v3256 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v3257 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v3258 = &type metadata for Attribute.ColorCase.Resolver;
  v3259 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v3260 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v3261 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v3262 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v3263 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v3264 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v3265 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v3266 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v3267 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v3268 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v3269 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v3270 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v3271 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v3272 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v3273 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v3274 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v3275 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v3276 = &type metadata for Attribute.InUseCase.Resolver;
  v3277 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v3278 = &type metadata for Attribute.LightLevelCase.Resolver;
  v3279 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v3280 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v3281 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v3282 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v3283 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v3284 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v3285 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v3286 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v3287 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v3202 = v664;
  v3203 = v667;
  v284 = v659;
  v3204 = v659;
  v3205 = v657;
  v3206 = v669;
  v3207 = v668;
  v3208 = v278;
  v3209 = v671;
  v3210 = v666;
  v3211 = v661;
  v3212 = v660;
  v3213 = v665;
  v3214 = v663;
  v3215 = v279;
  v3216 = v280;
  v3217 = v656;
  v3218 = v658;
  v3219 = v653;
  v3220 = v652;
  v3221 = v651;
  v3222 = v281;
  v3223 = v650;
  v3224 = v647;
  v3225 = v648;
  v3226 = v646;
  v3227 = v641;
  v285 = v642;
  v3228 = v642;
  v3229 = v645;
  v3230 = v282;
  v3231 = v644;
  v286 = v639;
  v3232 = v639;
  v3233 = v640;
  v3234 = v638;
  v3235 = v637;
  v3236 = v635;
  v3237 = v636;
  v3238 = v634;
  v287 = v632;
  v3239 = v632;
  v288 = v633;
  v3240 = v633;
  v3241 = v631;
  v3242 = v630;
  v3243 = v629;
  v3244 = v283;
  v289 = v627;
  sub_2528BEA90();
  v3158 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v3159 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v3160 = &type metadata for Attribute.AirQualityCase.Resolver;
  v3161 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v3162 = &type metadata for Attribute.BrightnessCase.Resolver;
  v3163 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v3164 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v3165 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v3166 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v3167 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v3168 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v3169 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v3170 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v3171 = &type metadata for Attribute.ColorCase.Resolver;
  v3172 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v3173 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v3174 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v3175 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v3176 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v3177 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v3178 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v3179 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v3180 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v3181 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v3182 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v3183 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v3184 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v3185 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v3186 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v3187 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v3188 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v3189 = &type metadata for Attribute.InUseCase.Resolver;
  v3190 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v3191 = &type metadata for Attribute.LightLevelCase.Resolver;
  v3192 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v3193 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v3194 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v3195 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v3196 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v3197 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v3198 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v3199 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v3200 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v3201 = &type metadata for Attribute.PositionStateCase.Resolver;
  v3114 = v664;
  v3115 = v667;
  v3116 = v284;
  v3117 = v657;
  v3118 = v669;
  v3119 = v668;
  v3120 = v662;
  v3121 = v671;
  v3122 = v666;
  v3123 = v661;
  v3124 = v660;
  v3125 = v665;
  v3126 = v663;
  v3127 = v655;
  v3128 = v654;
  v3129 = v656;
  v3130 = v658;
  v3131 = v653;
  v3132 = v652;
  v290 = v651;
  v3133 = v651;
  v3134 = v649;
  v3135 = v650;
  v3136 = v647;
  v3137 = v648;
  v3138 = v646;
  v3139 = v641;
  v3140 = v285;
  v3141 = v645;
  v3142 = v643;
  v3143 = v644;
  v3144 = v286;
  v3145 = v640;
  v3146 = v638;
  v3147 = v637;
  v3148 = v635;
  v3149 = v636;
  v3150 = v634;
  v3151 = v287;
  v3152 = v288;
  v291 = v631;
  v3153 = v631;
  v292 = v630;
  v3154 = v630;
  v293 = v629;
  v3155 = v629;
  v3156 = v628;
  v3157 = v289;
  v294 = v626;
  sub_2528BEA90();
  v3069 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v3070 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v3071 = &type metadata for Attribute.AirQualityCase.Resolver;
  v3072 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v3073 = &type metadata for Attribute.BrightnessCase.Resolver;
  v3074 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v3075 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v3076 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v3077 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v3078 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v3079 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v3080 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v3081 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v3082 = &type metadata for Attribute.ColorCase.Resolver;
  v3083 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v3084 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v3085 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v3086 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v3087 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v3088 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v3089 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v3090 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v3091 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v3092 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v3093 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v3094 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v3095 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v3096 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v3097 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v3098 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v3099 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v3100 = &type metadata for Attribute.InUseCase.Resolver;
  v3101 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v3102 = &type metadata for Attribute.LightLevelCase.Resolver;
  v3103 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v3104 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v3105 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v3106 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v3107 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v3108 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v3109 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v3110 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v3111 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v3112 = &type metadata for Attribute.PositionStateCase.Resolver;
  v3113 = &type metadata for Attribute.PowerCase.Resolver;
  v3024 = v664;
  v3025 = v667;
  v3026 = v659;
  v3027 = v657;
  v3028 = v669;
  v3029 = v668;
  v3030 = v662;
  v3031 = v671;
  v3032 = v666;
  v3033 = v661;
  v3034 = v660;
  v3035 = v665;
  v3036 = v663;
  v3037 = v655;
  v3038 = v654;
  v3039 = v656;
  v3040 = v658;
  v3041 = v653;
  v3042 = v652;
  v3043 = v290;
  v3044 = v649;
  v295 = v650;
  v3045 = v650;
  v3046 = v647;
  v3047 = v648;
  v3048 = v646;
  v3049 = v641;
  v3050 = v642;
  v296 = v645;
  v3051 = v645;
  v3052 = v643;
  v3053 = v644;
  v3054 = v639;
  v3055 = v640;
  v3056 = v638;
  v3057 = v637;
  v3058 = v635;
  v3059 = v636;
  v3060 = v634;
  v3061 = v632;
  v3062 = v633;
  v3063 = v291;
  v3064 = v292;
  v3065 = v293;
  v3066 = v628;
  v3067 = v627;
  v3068 = v294;
  v297 = v624;
  sub_2528BEA90();
  v2978 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v2979 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v2980 = &type metadata for Attribute.AirQualityCase.Resolver;
  v2981 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v2982 = &type metadata for Attribute.BrightnessCase.Resolver;
  v2983 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v2984 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v2985 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v2986 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v2987 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v2988 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v2989 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v2990 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v2991 = &type metadata for Attribute.ColorCase.Resolver;
  v2992 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v2993 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v2994 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v2995 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v2996 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v2997 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v2998 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v2999 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v3000 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v3001 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v3002 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v3003 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v3004 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v3005 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v3006 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v3007 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v3008 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v3009 = &type metadata for Attribute.InUseCase.Resolver;
  v3010 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v3011 = &type metadata for Attribute.LightLevelCase.Resolver;
  v3012 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v3013 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v3014 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v3015 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v3016 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v3017 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v3018 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v3019 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v3020 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v3021 = &type metadata for Attribute.PositionStateCase.Resolver;
  v3022 = &type metadata for Attribute.PowerCase.Resolver;
  v3023 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v2932 = v664;
  v2933 = v667;
  v2934 = v659;
  v2935 = v657;
  v298 = v669;
  v2936 = v669;
  v2937 = v668;
  v2938 = v662;
  v299 = v671;
  v2939 = v671;
  v300 = v666;
  v2940 = v666;
  v2941 = v661;
  v2942 = v660;
  v2943 = v665;
  v2944 = v663;
  v2945 = v655;
  v2946 = v654;
  v2947 = v656;
  v2948 = v658;
  v2949 = v653;
  v2950 = v652;
  v2951 = v651;
  v2952 = v649;
  v2953 = v295;
  v2954 = v647;
  v301 = v648;
  v2955 = v648;
  v2956 = v646;
  v2957 = v641;
  v2958 = v642;
  v2959 = v296;
  v2960 = v643;
  v302 = v644;
  v2961 = v644;
  v2962 = v639;
  v2963 = v640;
  v303 = v638;
  v2964 = v638;
  v2965 = v637;
  v2966 = v635;
  v2967 = v636;
  v2968 = v634;
  v2969 = v632;
  v2970 = v633;
  v2971 = v631;
  v2972 = v630;
  v2973 = v629;
  v2974 = v628;
  v2975 = v627;
  v2976 = v626;
  v2977 = v297;
  v304 = v625;
  sub_2528BEA90();
  v2885 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v2886 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v2887 = &type metadata for Attribute.AirQualityCase.Resolver;
  v2888 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v2889 = &type metadata for Attribute.BrightnessCase.Resolver;
  v2890 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v2891 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v2892 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v2893 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v2894 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v2895 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v2896 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v2897 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v2898 = &type metadata for Attribute.ColorCase.Resolver;
  v2899 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v2900 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v2901 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v2902 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v2903 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v2904 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v2905 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v2906 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v2907 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v2908 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v2909 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v2910 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v2911 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v2912 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v2913 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v2914 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v2915 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v2916 = &type metadata for Attribute.InUseCase.Resolver;
  v2917 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v2918 = &type metadata for Attribute.LightLevelCase.Resolver;
  v2919 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v2920 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v2921 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v2922 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v2923 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v2924 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v2925 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v2926 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v2927 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v2928 = &type metadata for Attribute.PositionStateCase.Resolver;
  v2929 = &type metadata for Attribute.PowerCase.Resolver;
  v2930 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v2931 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v2838 = v664;
  v2839 = v667;
  v2840 = v659;
  v2841 = v657;
  v2842 = v298;
  v2843 = v668;
  v2844 = v662;
  v2845 = v299;
  v2846 = v300;
  v305 = v661;
  v2847 = v661;
  v2848 = v660;
  v306 = v665;
  v2849 = v665;
  v2850 = v663;
  v2851 = v655;
  v2852 = v654;
  v2853 = v656;
  v2854 = v658;
  v2855 = v653;
  v2856 = v652;
  v2857 = v651;
  v2858 = v649;
  v2859 = v650;
  v2860 = v647;
  v2861 = v301;
  v2862 = v646;
  v2863 = v641;
  v2864 = v642;
  v2865 = v645;
  v2866 = v643;
  v2867 = v302;
  v2868 = v639;
  v307 = v640;
  v2869 = v640;
  v2870 = v303;
  v2871 = v637;
  v2872 = v635;
  v2873 = v636;
  v2874 = v634;
  v2875 = v632;
  v2876 = v633;
  v2877 = v631;
  v2878 = v630;
  v2879 = v629;
  v2880 = v628;
  v2881 = v627;
  v2882 = v626;
  v2883 = v624;
  v2884 = v304;
  v308 = v623;
  sub_2528BEA90();
  v2790 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v2791 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v2792 = &type metadata for Attribute.AirQualityCase.Resolver;
  v2793 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v2794 = &type metadata for Attribute.BrightnessCase.Resolver;
  v2795 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v2796 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v2797 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v2798 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v2799 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v2800 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v2801 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v2802 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v2803 = &type metadata for Attribute.ColorCase.Resolver;
  v2804 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v2805 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v2806 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v2807 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v2808 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v2809 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v2810 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v2811 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v2812 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v2813 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v2814 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v2815 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v2816 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v2817 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v2818 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v2819 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v2820 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v2821 = &type metadata for Attribute.InUseCase.Resolver;
  v2822 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v2823 = &type metadata for Attribute.LightLevelCase.Resolver;
  v2824 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v2825 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v2826 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v2827 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v2828 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v2829 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v2830 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v2831 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v2832 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v2833 = &type metadata for Attribute.PositionStateCase.Resolver;
  v2834 = &type metadata for Attribute.PowerCase.Resolver;
  v2835 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v2836 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v2837 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v2742 = v664;
  v2743 = v667;
  v2744 = v659;
  v2745 = v657;
  v2746 = v669;
  v2747 = v668;
  v309 = v662;
  v2748 = v662;
  v2749 = v671;
  v2750 = v666;
  v2751 = v305;
  v2752 = v660;
  v2753 = v306;
  v2754 = v663;
  v2755 = v655;
  v310 = v654;
  v2756 = v654;
  v311 = v656;
  v2757 = v656;
  v2758 = v658;
  v2759 = v653;
  v2760 = v652;
  v2761 = v651;
  v2762 = v649;
  v2763 = v650;
  v2764 = v647;
  v2765 = v648;
  v2766 = v646;
  v2767 = v641;
  v2768 = v642;
  v2769 = v645;
  v2770 = v643;
  v2771 = v644;
  v2772 = v639;
  v2773 = v307;
  v2774 = v638;
  v2775 = v637;
  v2776 = v635;
  v2777 = v636;
  v2778 = v634;
  v2779 = v632;
  v2780 = v633;
  v2781 = v631;
  v2782 = v630;
  v2783 = v629;
  v312 = v628;
  v2784 = v628;
  v2785 = v627;
  v2786 = v626;
  v2787 = v624;
  v2788 = v625;
  v2789 = v308;
  v313 = v622;
  sub_2528BEA90();
  v2693 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v2694 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v2695 = &type metadata for Attribute.AirQualityCase.Resolver;
  v2696 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v2697 = &type metadata for Attribute.BrightnessCase.Resolver;
  v2698 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v2699 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v2700 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v2701 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v2702 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v2703 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v2704 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v2705 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v2706 = &type metadata for Attribute.ColorCase.Resolver;
  v2707 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v2708 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v2709 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v2710 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v2711 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v2712 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v2713 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v2714 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v2715 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v2716 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v2717 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v2718 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v2719 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v2720 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v2721 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v2722 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v2723 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v2724 = &type metadata for Attribute.InUseCase.Resolver;
  v2725 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v2726 = &type metadata for Attribute.LightLevelCase.Resolver;
  v2727 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v2728 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v2729 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v2730 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v2731 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v2732 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v2733 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v2734 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v2735 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v2736 = &type metadata for Attribute.PositionStateCase.Resolver;
  v2737 = &type metadata for Attribute.PowerCase.Resolver;
  v2738 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v2739 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v2740 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v2741 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v2644 = v664;
  v314 = v667;
  v2645 = v667;
  v2646 = v659;
  v2647 = v657;
  v2648 = v669;
  v2649 = v668;
  v2650 = v309;
  v2651 = v671;
  v2652 = v666;
  v2653 = v661;
  v315 = v660;
  v2654 = v660;
  v2655 = v665;
  v2656 = v663;
  v316 = v655;
  v2657 = v655;
  v2658 = v310;
  v2659 = v311;
  v2660 = v658;
  v2661 = v653;
  v2662 = v652;
  v2663 = v651;
  v2664 = v649;
  v2665 = v650;
  v2666 = v647;
  v2667 = v648;
  v2668 = v646;
  v2669 = v641;
  v2670 = v642;
  v2671 = v645;
  v2672 = v643;
  v2673 = v644;
  v2674 = v639;
  v2675 = v640;
  v2676 = v638;
  v2677 = v637;
  v2678 = v635;
  v2679 = v636;
  v2680 = v634;
  v2681 = v632;
  v2682 = v633;
  v2683 = v631;
  v2684 = v630;
  v2685 = v629;
  v2686 = v312;
  v317 = v627;
  v2687 = v627;
  v2688 = v626;
  v2689 = v624;
  v2690 = v625;
  v2691 = v623;
  v2692 = v313;
  v318 = v621;
  sub_2528BEA90();
  v2594 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v2595 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v2596 = &type metadata for Attribute.AirQualityCase.Resolver;
  v2597 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v2598 = &type metadata for Attribute.BrightnessCase.Resolver;
  v2599 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v2600 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v2601 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v2602 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v2603 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v2604 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v2605 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v2606 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v2607 = &type metadata for Attribute.ColorCase.Resolver;
  v2608 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v2609 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v2610 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v2611 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v2612 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v2613 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v2614 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v2615 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v2616 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v2617 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v2618 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v2619 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v2620 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v2621 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v2622 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v2623 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v2624 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v2625 = &type metadata for Attribute.InUseCase.Resolver;
  v2626 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v2627 = &type metadata for Attribute.LightLevelCase.Resolver;
  v2628 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v2629 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v2630 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v2631 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v2632 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v2633 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v2634 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v2635 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v2636 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v2637 = &type metadata for Attribute.PositionStateCase.Resolver;
  v2638 = &type metadata for Attribute.PowerCase.Resolver;
  v2639 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v2640 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v2641 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v2642 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v2643 = &type metadata for Attribute.RvcCase.Resolver;
  v2544 = v664;
  v2545 = v314;
  v2546 = v659;
  v2547 = v657;
  v2548 = v669;
  v319 = v668;
  v2549 = v668;
  v2550 = v662;
  v2551 = v671;
  v2552 = v666;
  v2553 = v661;
  v2554 = v315;
  v2555 = v665;
  v2556 = v663;
  v2557 = v316;
  v2558 = v654;
  v2559 = v656;
  v2560 = v658;
  v320 = v653;
  v2561 = v653;
  v2562 = v652;
  v2563 = v651;
  v321 = v649;
  v2564 = v649;
  v2565 = v650;
  v322 = v647;
  v2566 = v647;
  v2567 = v648;
  v323 = v646;
  v2568 = v646;
  v2569 = v641;
  v2570 = v642;
  v2571 = v645;
  v2572 = v643;
  v2573 = v644;
  v2574 = v639;
  v2575 = v640;
  v2576 = v638;
  v2577 = v637;
  v2578 = v635;
  v2579 = v636;
  v2580 = v634;
  v2581 = v632;
  v2582 = v633;
  v2583 = v631;
  v2584 = v630;
  v2585 = v629;
  v2586 = v628;
  v2587 = v317;
  v2588 = v626;
  v2589 = v624;
  v2590 = v625;
  v2591 = v623;
  v2592 = v622;
  v2593 = v318;
  v324 = v620;
  sub_2528BEA90();
  v2493 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v2494 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v2495 = &type metadata for Attribute.AirQualityCase.Resolver;
  v2496 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v2497 = &type metadata for Attribute.BrightnessCase.Resolver;
  v2498 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v2499 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v2500 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v2501 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v2502 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v2503 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v2504 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v2505 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v2506 = &type metadata for Attribute.ColorCase.Resolver;
  v2507 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v2508 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v2509 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v2510 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v2511 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v2512 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v2513 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v2514 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v2515 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v2516 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v2517 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v2518 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v2519 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v2520 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v2521 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v2522 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v2523 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v2524 = &type metadata for Attribute.InUseCase.Resolver;
  v2525 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v2526 = &type metadata for Attribute.LightLevelCase.Resolver;
  v2527 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v2528 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v2529 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v2530 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v2531 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v2532 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v2533 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v2534 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v2535 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v2536 = &type metadata for Attribute.PositionStateCase.Resolver;
  v2537 = &type metadata for Attribute.PowerCase.Resolver;
  v2538 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v2539 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v2540 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v2541 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v2542 = &type metadata for Attribute.RvcCase.Resolver;
  v2543 = &type metadata for Attribute.SetDurationCase.Resolver;
  v2442 = v664;
  v2443 = v667;
  v325 = v659;
  v2444 = v659;
  v2445 = v657;
  v2446 = v669;
  v2447 = v319;
  v2448 = v662;
  v2449 = v671;
  v2450 = v666;
  v2451 = v661;
  v2452 = v660;
  v2453 = v665;
  v2454 = v663;
  v2455 = v655;
  v2456 = v654;
  v2457 = v656;
  v2458 = v658;
  v2459 = v320;
  v2460 = v652;
  v2461 = v651;
  v2462 = v321;
  v2463 = v650;
  v2464 = v322;
  v2465 = v648;
  v2466 = v323;
  v2467 = v641;
  v326 = v642;
  v2468 = v642;
  v2469 = v645;
  v327 = v643;
  v2470 = v643;
  v2471 = v644;
  v2472 = v639;
  v2473 = v640;
  v2474 = v638;
  v328 = v637;
  v2475 = v637;
  v2476 = v635;
  v2477 = v636;
  v2478 = v634;
  v2479 = v632;
  v2480 = v633;
  v2481 = v631;
  v2482 = v630;
  v2483 = v629;
  v2484 = v628;
  v2485 = v627;
  v2486 = v626;
  v2487 = v624;
  v2488 = v625;
  v2489 = v623;
  v2490 = v622;
  v2491 = v621;
  v2492 = v324;
  v329 = v619;
  sub_2528BEA90();
  v2390 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v2391 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v2392 = &type metadata for Attribute.AirQualityCase.Resolver;
  v2393 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v2394 = &type metadata for Attribute.BrightnessCase.Resolver;
  v2395 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v2396 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v2397 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v2398 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v2399 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v2400 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v2401 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v2402 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v2403 = &type metadata for Attribute.ColorCase.Resolver;
  v2404 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v2405 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v2406 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v2407 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v2408 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v2409 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v2410 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v2411 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v2412 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v2413 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v2414 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v2415 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v2416 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v2417 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v2418 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v2419 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v2420 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v2421 = &type metadata for Attribute.InUseCase.Resolver;
  v2422 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v2423 = &type metadata for Attribute.LightLevelCase.Resolver;
  v2424 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v2425 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v2426 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v2427 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v2428 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v2429 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v2430 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v2431 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v2432 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v2433 = &type metadata for Attribute.PositionStateCase.Resolver;
  v2434 = &type metadata for Attribute.PowerCase.Resolver;
  v2435 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v2436 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v2437 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v2438 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v2439 = &type metadata for Attribute.RvcCase.Resolver;
  v2440 = &type metadata for Attribute.SetDurationCase.Resolver;
  v2441 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v330 = v664;
  v2338 = v664;
  v2339 = v667;
  v2340 = v325;
  v2341 = v657;
  v2342 = v669;
  v2343 = v668;
  v2344 = v662;
  v2345 = v671;
  v2346 = v666;
  v2347 = v661;
  v2348 = v660;
  v2349 = v665;
  v2350 = v663;
  v2351 = v655;
  v2352 = v654;
  v2353 = v656;
  v2354 = v658;
  v2355 = v653;
  v2356 = v652;
  v2357 = v651;
  v2358 = v649;
  v2359 = v650;
  v2360 = v647;
  v2361 = v648;
  v2362 = v646;
  v2363 = v641;
  v2364 = v326;
  v2365 = v645;
  v2366 = v327;
  v2367 = v644;
  v331 = v639;
  v2368 = v639;
  v2369 = v640;
  v2370 = v638;
  v2371 = v328;
  v2372 = v635;
  v2373 = v636;
  v2374 = v634;
  v332 = v632;
  v2375 = v632;
  v333 = v633;
  v2376 = v633;
  v2377 = v631;
  v2378 = v630;
  v2379 = v629;
  v2380 = v628;
  v2381 = v627;
  v2382 = v626;
  v2383 = v624;
  v2384 = v625;
  v2385 = v623;
  v2386 = v622;
  v2387 = v621;
  v2388 = v620;
  v2389 = v329;
  v334 = v618;
  sub_2528BEA90();
  v2285 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v2286 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v2287 = &type metadata for Attribute.AirQualityCase.Resolver;
  v2288 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v2289 = &type metadata for Attribute.BrightnessCase.Resolver;
  v2290 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v2291 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v2292 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v2293 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v2294 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v2295 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v2296 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v2297 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v2298 = &type metadata for Attribute.ColorCase.Resolver;
  v2299 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v2300 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v2301 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v2302 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v2303 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v2304 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v2305 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v2306 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v2307 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v2308 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v2309 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v2310 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v2311 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v2312 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v2313 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v2314 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v2315 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v2316 = &type metadata for Attribute.InUseCase.Resolver;
  v2317 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v2318 = &type metadata for Attribute.LightLevelCase.Resolver;
  v2319 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v2320 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v2321 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v2322 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v2323 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v2324 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v2325 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v2326 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v2327 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v2328 = &type metadata for Attribute.PositionStateCase.Resolver;
  v2329 = &type metadata for Attribute.PowerCase.Resolver;
  v2330 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v2331 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v2332 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v2333 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v2334 = &type metadata for Attribute.RvcCase.Resolver;
  v2335 = &type metadata for Attribute.SetDurationCase.Resolver;
  v2336 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v2337 = &type metadata for Attribute.SulphurDioxideDensityCase.Resolver;
  v2232 = v330;
  v2233 = v667;
  v2234 = v659;
  v2235 = v657;
  v2236 = v669;
  v2237 = v668;
  v2238 = v662;
  v2239 = v671;
  v2240 = v666;
  v2241 = v661;
  v2242 = v660;
  v2243 = v665;
  v335 = v663;
  v2244 = v663;
  v2245 = v655;
  v2246 = v654;
  v2247 = v656;
  v336 = v658;
  v2248 = v658;
  v2249 = v653;
  v2250 = v652;
  v2251 = v651;
  v2252 = v649;
  v2253 = v650;
  v2254 = v647;
  v2255 = v648;
  v2256 = v646;
  v2257 = v641;
  v2258 = v642;
  v2259 = v645;
  v2260 = v643;
  v2261 = v644;
  v2262 = v331;
  v2263 = v640;
  v2264 = v638;
  v2265 = v637;
  v337 = v635;
  v2266 = v635;
  v2267 = v636;
  v2268 = v634;
  v2269 = v332;
  v2270 = v333;
  v338 = v631;
  v2271 = v631;
  v2272 = v630;
  v2273 = v629;
  v2274 = v628;
  v2275 = v627;
  v339 = v626;
  v2276 = v626;
  v2277 = v624;
  v2278 = v625;
  v2279 = v623;
  v2280 = v622;
  v2281 = v621;
  v2282 = v620;
  v2283 = v619;
  v2284 = v334;
  v340 = v617;
  sub_2528BEA90();
  v2178 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v2179 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v2180 = &type metadata for Attribute.AirQualityCase.Resolver;
  v2181 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v2182 = &type metadata for Attribute.BrightnessCase.Resolver;
  v2183 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v2184 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v2185 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v2186 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v2187 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v2188 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v2189 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v2190 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v2191 = &type metadata for Attribute.ColorCase.Resolver;
  v2192 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v2193 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v2194 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v2195 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v2196 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v2197 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v2198 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v2199 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v2200 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v2201 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v2202 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v2203 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v2204 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v2205 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v2206 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v2207 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v2208 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v2209 = &type metadata for Attribute.InUseCase.Resolver;
  v2210 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v2211 = &type metadata for Attribute.LightLevelCase.Resolver;
  v2212 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v2213 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v2214 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v2215 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v2216 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v2217 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v2218 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v2219 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v2220 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v2221 = &type metadata for Attribute.PositionStateCase.Resolver;
  v2222 = &type metadata for Attribute.PowerCase.Resolver;
  v2223 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v2224 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v2225 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v2226 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v2227 = &type metadata for Attribute.RvcCase.Resolver;
  v2228 = &type metadata for Attribute.SetDurationCase.Resolver;
  v2229 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v2230 = &type metadata for Attribute.SulphurDioxideDensityCase.Resolver;
  v2231 = &type metadata for Attribute.SwingModeEnabledCase.Resolver;
  v2124 = v664;
  v2125 = v667;
  v2126 = v659;
  v2127 = v657;
  v2128 = v669;
  v2129 = v668;
  v2130 = v662;
  v2131 = v671;
  v2132 = v666;
  v2133 = v661;
  v2134 = v660;
  v2135 = v665;
  v2136 = v335;
  v2137 = v655;
  v2138 = v654;
  v2139 = v656;
  v2140 = v336;
  v2141 = v653;
  v341 = v652;
  v2142 = v652;
  v342 = v651;
  v2143 = v651;
  v2144 = v649;
  v2145 = v650;
  v2146 = v647;
  v2147 = v648;
  v2148 = v646;
  v2149 = v641;
  v2150 = v642;
  v2151 = v645;
  v2152 = v643;
  v2153 = v644;
  v2154 = v639;
  v2155 = v640;
  v2156 = v638;
  v2157 = v637;
  v2158 = v337;
  v343 = v636;
  v2159 = v636;
  v2160 = v634;
  v2161 = v632;
  v2162 = v633;
  v2163 = v338;
  v2164 = v630;
  v2165 = v629;
  v2166 = v628;
  v2167 = v627;
  v2168 = v339;
  v344 = v624;
  v2169 = v624;
  v2170 = v625;
  v2171 = v623;
  v2172 = v622;
  v2173 = v621;
  v2174 = v620;
  v2175 = v619;
  v2176 = v618;
  v2177 = v340;
  v345 = v615;
  sub_2528BEA90();
  v2069 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v2070 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v2071 = &type metadata for Attribute.AirQualityCase.Resolver;
  v2072 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v2073 = &type metadata for Attribute.BrightnessCase.Resolver;
  v2074 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v2075 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v2076 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v2077 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v2078 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v2079 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v2080 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v2081 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v2082 = &type metadata for Attribute.ColorCase.Resolver;
  v2083 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v2084 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v2085 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v2086 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v2087 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v2088 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v2089 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v2090 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v2091 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v2092 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v2093 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v2094 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v2095 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v2096 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v2097 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v2098 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v2099 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v2100 = &type metadata for Attribute.InUseCase.Resolver;
  v2101 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v2102 = &type metadata for Attribute.LightLevelCase.Resolver;
  v2103 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v2104 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v2105 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v2106 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v2107 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v2108 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v2109 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v2110 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v2111 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v2112 = &type metadata for Attribute.PositionStateCase.Resolver;
  v2113 = &type metadata for Attribute.PowerCase.Resolver;
  v2114 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v2115 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v2116 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v2117 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v2118 = &type metadata for Attribute.RvcCase.Resolver;
  v2119 = &type metadata for Attribute.SetDurationCase.Resolver;
  v2120 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v2121 = &type metadata for Attribute.SulphurDioxideDensityCase.Resolver;
  v2122 = &type metadata for Attribute.SwingModeEnabledCase.Resolver;
  v2123 = &type metadata for Attribute.TargetAirPurifierStateCase.Resolver;
  v2014 = v664;
  v346 = v667;
  v2015 = v667;
  v2016 = v659;
  v347 = v657;
  v2017 = v657;
  v2018 = v669;
  v2019 = v668;
  v2020 = v662;
  v2021 = v671;
  v2022 = v666;
  v2023 = v661;
  v2024 = v660;
  v2025 = v665;
  v2026 = v663;
  v2027 = v655;
  v2028 = v654;
  v2029 = v656;
  v2030 = v658;
  v2031 = v653;
  v2032 = v341;
  v2033 = v342;
  v2034 = v649;
  v2035 = v650;
  v2036 = v647;
  v2037 = v648;
  v2038 = v646;
  v348 = v641;
  v2039 = v641;
  v2040 = v642;
  v2041 = v645;
  v2042 = v643;
  v2043 = v644;
  v2044 = v639;
  v2045 = v640;
  v2046 = v638;
  v2047 = v637;
  v2048 = v635;
  v2049 = v343;
  v2050 = v634;
  v2051 = v632;
  v2052 = v633;
  v2053 = v631;
  v349 = v630;
  v2054 = v630;
  v2055 = v629;
  v2056 = v628;
  v2057 = v627;
  v2058 = v626;
  v2059 = v344;
  v2060 = v625;
  v2061 = v623;
  v2062 = v622;
  v2063 = v621;
  v2064 = v620;
  v2065 = v619;
  v2066 = v618;
  v2067 = v617;
  v2068 = v345;
  v350 = v616;
  sub_2528BEA90();
  v1958 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v1959 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v1960 = &type metadata for Attribute.AirQualityCase.Resolver;
  v1961 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v1962 = &type metadata for Attribute.BrightnessCase.Resolver;
  v1963 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v1964 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v1965 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v1966 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v1967 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v1968 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v1969 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v1970 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v1971 = &type metadata for Attribute.ColorCase.Resolver;
  v1972 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v1973 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v1974 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v1975 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v1976 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v1977 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v1978 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v1979 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v1980 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v1981 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v1982 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v1983 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v1984 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v1985 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v1986 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v1987 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v1988 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v1989 = &type metadata for Attribute.InUseCase.Resolver;
  v1990 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v1991 = &type metadata for Attribute.LightLevelCase.Resolver;
  v1992 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v1993 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v1994 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v1995 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v1996 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v1997 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v1998 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v1999 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v2000 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v2001 = &type metadata for Attribute.PositionStateCase.Resolver;
  v2002 = &type metadata for Attribute.PowerCase.Resolver;
  v2003 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v2004 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v2005 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v2006 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v2007 = &type metadata for Attribute.RvcCase.Resolver;
  v2008 = &type metadata for Attribute.SetDurationCase.Resolver;
  v2009 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v2010 = &type metadata for Attribute.SulphurDioxideDensityCase.Resolver;
  v2011 = &type metadata for Attribute.SwingModeEnabledCase.Resolver;
  v2012 = &type metadata for Attribute.TargetAirPurifierStateCase.Resolver;
  v2013 = &type metadata for Attribute.TargetDoorStateCase.Resolver;
  v1902 = v664;
  v1903 = v346;
  v1904 = v659;
  v1905 = v347;
  v1906 = v669;
  v351 = v668;
  v1907 = v668;
  v352 = v662;
  v1908 = v662;
  v1909 = v671;
  v353 = v666;
  v1910 = v666;
  v1911 = v661;
  v1912 = v660;
  v1913 = v665;
  v1914 = v663;
  v1915 = v655;
  v1916 = v654;
  v1917 = v656;
  v1918 = v658;
  v1919 = v653;
  v1920 = v652;
  v1921 = v651;
  v1922 = v649;
  v354 = v650;
  v1923 = v650;
  v1924 = v647;
  v1925 = v648;
  v1926 = v646;
  v1927 = v348;
  v1928 = v642;
  v1929 = v645;
  v1930 = v643;
  v1931 = v644;
  v1932 = v639;
  v1933 = v640;
  v1934 = v638;
  v1935 = v637;
  v1936 = v635;
  v1937 = v636;
  v355 = v634;
  v1938 = v634;
  v1939 = v632;
  v1940 = v633;
  v1941 = v631;
  v1942 = v349;
  v356 = v629;
  v1943 = v629;
  v1944 = v628;
  v1945 = v627;
  v1946 = v626;
  v1947 = v624;
  v1948 = v625;
  v1949 = v623;
  v1950 = v622;
  v1951 = v621;
  v1952 = v620;
  v1953 = v619;
  v1954 = v618;
  v1955 = v617;
  v1956 = v615;
  v1957 = v350;
  v357 = v614;
  sub_2528BEA90();
  v1845 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v1846 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v1847 = &type metadata for Attribute.AirQualityCase.Resolver;
  v1848 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v1849 = &type metadata for Attribute.BrightnessCase.Resolver;
  v1850 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v1851 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v1852 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v1853 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v1854 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v1855 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v1856 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v1857 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v1858 = &type metadata for Attribute.ColorCase.Resolver;
  v1859 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v1860 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v1861 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v1862 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v1863 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v1864 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v1865 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v1866 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v1867 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v1868 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v1869 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v1870 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v1871 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v1872 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v1873 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v1874 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v1875 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v1876 = &type metadata for Attribute.InUseCase.Resolver;
  v1877 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v1878 = &type metadata for Attribute.LightLevelCase.Resolver;
  v1879 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v1880 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v1881 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v1882 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v1883 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v1884 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v1885 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v1886 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v1887 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v1888 = &type metadata for Attribute.PositionStateCase.Resolver;
  v1889 = &type metadata for Attribute.PowerCase.Resolver;
  v1890 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v1891 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v1892 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v1893 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v1894 = &type metadata for Attribute.RvcCase.Resolver;
  v1895 = &type metadata for Attribute.SetDurationCase.Resolver;
  v1896 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v1897 = &type metadata for Attribute.SulphurDioxideDensityCase.Resolver;
  v1898 = &type metadata for Attribute.SwingModeEnabledCase.Resolver;
  v1899 = &type metadata for Attribute.TargetAirPurifierStateCase.Resolver;
  v1900 = &type metadata for Attribute.TargetDoorStateCase.Resolver;
  v1901 = &type metadata for Attribute.TargetHorizontalTiltCase.Resolver;
  v1788 = v664;
  v1789 = v667;
  v1790 = v659;
  v1791 = v657;
  v1792 = v669;
  v1793 = v351;
  v1794 = v352;
  v1795 = v671;
  v1796 = v353;
  v1797 = v661;
  v1798 = v660;
  v1799 = v665;
  v1800 = v663;
  v1801 = v655;
  v1802 = v654;
  v1803 = v656;
  v1804 = v658;
  v358 = v653;
  v1805 = v653;
  v1806 = v652;
  v1807 = v651;
  v1808 = v649;
  v1809 = v354;
  v1810 = v647;
  v1811 = v648;
  v359 = v646;
  v1812 = v646;
  v1813 = v641;
  v1814 = v642;
  v360 = v645;
  v1815 = v645;
  v1816 = v643;
  v1817 = v644;
  v1818 = v639;
  v1819 = v640;
  v1820 = v638;
  v361 = v637;
  v1821 = v637;
  v1822 = v635;
  v1823 = v636;
  v1824 = v355;
  v1825 = v632;
  v1826 = v633;
  v1827 = v631;
  v1828 = v630;
  v1829 = v356;
  v1830 = v628;
  v1831 = v627;
  v1832 = v626;
  v1833 = v624;
  v1834 = v625;
  v1835 = v623;
  v1836 = v622;
  v1837 = v621;
  v1838 = v620;
  v362 = v619;
  v1839 = v619;
  v1840 = v618;
  v1841 = v617;
  v1842 = v615;
  v1843 = v616;
  v1844 = v357;
  v363 = v613;
  sub_2528BEA90();
  v1730 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v1731 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v1732 = &type metadata for Attribute.AirQualityCase.Resolver;
  v1733 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v1734 = &type metadata for Attribute.BrightnessCase.Resolver;
  v1735 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v1736 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v1737 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v1738 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v1739 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v1740 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v1741 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v1742 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v1743 = &type metadata for Attribute.ColorCase.Resolver;
  v1744 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v1745 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v1746 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v1747 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v1748 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v1749 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v1750 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v1751 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v1752 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v1753 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v1754 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v1755 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v1756 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v1757 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v1758 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v1759 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v1760 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v1761 = &type metadata for Attribute.InUseCase.Resolver;
  v1762 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v1763 = &type metadata for Attribute.LightLevelCase.Resolver;
  v1764 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v1765 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v1766 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v1767 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v1768 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v1769 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v1770 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v1771 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v1772 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v1773 = &type metadata for Attribute.PositionStateCase.Resolver;
  v1774 = &type metadata for Attribute.PowerCase.Resolver;
  v1775 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v1776 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v1777 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v1778 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v1779 = &type metadata for Attribute.RvcCase.Resolver;
  v1780 = &type metadata for Attribute.SetDurationCase.Resolver;
  v1781 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v1782 = &type metadata for Attribute.SulphurDioxideDensityCase.Resolver;
  v1783 = &type metadata for Attribute.SwingModeEnabledCase.Resolver;
  v1784 = &type metadata for Attribute.TargetAirPurifierStateCase.Resolver;
  v1785 = &type metadata for Attribute.TargetDoorStateCase.Resolver;
  v1786 = &type metadata for Attribute.TargetHorizontalTiltCase.Resolver;
  v1787 = &type metadata for Attribute.TargetHumidityCase.Resolver;
  v1672 = v664;
  v1673 = v667;
  v1674 = v659;
  v1675 = v657;
  v1676 = v669;
  v1677 = v668;
  v1678 = v662;
  v1679 = v671;
  v1680 = v666;
  v1681 = v661;
  v1682 = v660;
  v1683 = v665;
  v1684 = v663;
  v1685 = v655;
  v1686 = v654;
  v1687 = v656;
  v1688 = v658;
  v1689 = v358;
  v1690 = v652;
  v1691 = v651;
  v1692 = v649;
  v1693 = v650;
  v1694 = v647;
  v1695 = v648;
  v1696 = v359;
  v1697 = v641;
  v1698 = v642;
  v1699 = v360;
  v1700 = v643;
  v364 = v644;
  v1701 = v644;
  v1702 = v639;
  v1703 = v640;
  v365 = v638;
  v1704 = v638;
  v1705 = v361;
  v1706 = v635;
  v1707 = v636;
  v1708 = v634;
  v1709 = v632;
  v1710 = v633;
  v1711 = v631;
  v1712 = v630;
  v1713 = v629;
  v1714 = v628;
  v1715 = v627;
  v1716 = v626;
  v1717 = v624;
  v366 = v625;
  v1718 = v625;
  v1719 = v623;
  v1720 = v622;
  v1721 = v621;
  v1722 = v620;
  v1723 = v362;
  v367 = v618;
  v1724 = v618;
  v1725 = v617;
  v1726 = v615;
  v1727 = v616;
  v1728 = v614;
  v1729 = v363;
  v368 = v612;
  sub_2528BEA90();
  v1613 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v1614 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v1615 = &type metadata for Attribute.AirQualityCase.Resolver;
  v1616 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v1617 = &type metadata for Attribute.BrightnessCase.Resolver;
  v1618 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v1619 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v1620 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v1621 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v1622 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v1623 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v1624 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v1625 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v1626 = &type metadata for Attribute.ColorCase.Resolver;
  v1627 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v1628 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v1629 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v1630 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v1631 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v1632 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v1633 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v1634 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v1635 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v1636 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v1637 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v1638 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v1639 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v1640 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v1641 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v1642 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v1643 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v1644 = &type metadata for Attribute.InUseCase.Resolver;
  v1645 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v1646 = &type metadata for Attribute.LightLevelCase.Resolver;
  v1647 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v1648 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v1649 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v1650 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v1651 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v1652 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v1653 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v1654 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v1655 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v1656 = &type metadata for Attribute.PositionStateCase.Resolver;
  v1657 = &type metadata for Attribute.PowerCase.Resolver;
  v1658 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v1659 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v1660 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v1661 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v1662 = &type metadata for Attribute.RvcCase.Resolver;
  v1663 = &type metadata for Attribute.SetDurationCase.Resolver;
  v1664 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v1665 = &type metadata for Attribute.SulphurDioxideDensityCase.Resolver;
  v1666 = &type metadata for Attribute.SwingModeEnabledCase.Resolver;
  v1667 = &type metadata for Attribute.TargetAirPurifierStateCase.Resolver;
  v1668 = &type metadata for Attribute.TargetDoorStateCase.Resolver;
  v1669 = &type metadata for Attribute.TargetHorizontalTiltCase.Resolver;
  v1670 = &type metadata for Attribute.TargetHumidityCase.Resolver;
  v1671 = &type metadata for Attribute.TargetLockStateCase.Resolver;
  v1554 = v664;
  v1555 = v667;
  v369 = v659;
  v1556 = v659;
  v1557 = v657;
  v1558 = v669;
  v1559 = v668;
  v1560 = v662;
  v1561 = v671;
  v1562 = v666;
  v1563 = v661;
  v1564 = v660;
  v1565 = v665;
  v1566 = v663;
  v1567 = v655;
  v1568 = v654;
  v1569 = v656;
  v1570 = v658;
  v1571 = v653;
  v1572 = v652;
  v1573 = v651;
  v370 = v649;
  v1574 = v649;
  v1575 = v650;
  v1576 = v647;
  v1577 = v648;
  v1578 = v646;
  v1579 = v641;
  v1580 = v642;
  v1581 = v645;
  v1582 = v643;
  v1583 = v364;
  v1584 = v639;
  v1585 = v640;
  v1586 = v365;
  v1587 = v637;
  v1588 = v635;
  v1589 = v636;
  v1590 = v634;
  v1591 = v632;
  v1592 = v633;
  v1593 = v631;
  v1594 = v630;
  v1595 = v629;
  v1596 = v628;
  v1597 = v627;
  v1598 = v626;
  v1599 = v624;
  v1600 = v366;
  v1601 = v623;
  v1602 = v622;
  v1603 = v621;
  v1604 = v620;
  v1605 = v619;
  v1606 = v367;
  v1607 = v617;
  v1608 = v615;
  v1609 = v616;
  v1610 = v614;
  v1611 = v613;
  v1612 = v368;
  v371 = v611;
  sub_2528BEA90();
  v1494 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v1495 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v1496 = &type metadata for Attribute.AirQualityCase.Resolver;
  v1497 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v1498 = &type metadata for Attribute.BrightnessCase.Resolver;
  v1499 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v1500 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v1501 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v1502 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v1503 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v1504 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v1505 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v1506 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v1507 = &type metadata for Attribute.ColorCase.Resolver;
  v1508 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v1509 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v1510 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v1511 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v1512 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v1513 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v1514 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v1515 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v1516 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v1517 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v1518 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v1519 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v1520 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v1521 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v1522 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v1523 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v1524 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v1525 = &type metadata for Attribute.InUseCase.Resolver;
  v1526 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v1527 = &type metadata for Attribute.LightLevelCase.Resolver;
  v1528 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v1529 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v1530 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v1531 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v1532 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v1533 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v1534 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v1535 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v1536 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v1537 = &type metadata for Attribute.PositionStateCase.Resolver;
  v1538 = &type metadata for Attribute.PowerCase.Resolver;
  v1539 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v1540 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v1541 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v1542 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v1543 = &type metadata for Attribute.RvcCase.Resolver;
  v1544 = &type metadata for Attribute.SetDurationCase.Resolver;
  v1545 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v1546 = &type metadata for Attribute.SulphurDioxideDensityCase.Resolver;
  v1547 = &type metadata for Attribute.SwingModeEnabledCase.Resolver;
  v1548 = &type metadata for Attribute.TargetAirPurifierStateCase.Resolver;
  v1549 = &type metadata for Attribute.TargetDoorStateCase.Resolver;
  v1550 = &type metadata for Attribute.TargetHorizontalTiltCase.Resolver;
  v1551 = &type metadata for Attribute.TargetHumidityCase.Resolver;
  v1552 = &type metadata for Attribute.TargetLockStateCase.Resolver;
  v1553 = &type metadata for Attribute.TargetPositionCase.Resolver;
  v1434 = v664;
  v1435 = v667;
  v1436 = v369;
  v1437 = v657;
  v372 = v669;
  v1438 = v669;
  v1439 = v668;
  v1440 = v662;
  v373 = v671;
  v1441 = v671;
  v1442 = v666;
  v1443 = v661;
  v1444 = v660;
  v1445 = v665;
  v1446 = v663;
  v1447 = v655;
  v1448 = v654;
  v1449 = v656;
  v1450 = v658;
  v1451 = v653;
  v1452 = v652;
  v1453 = v651;
  v1454 = v370;
  v1455 = v650;
  v1456 = v647;
  v374 = v648;
  v1457 = v648;
  v1458 = v646;
  v1459 = v641;
  v375 = v642;
  v1460 = v642;
  v1461 = v645;
  v376 = v643;
  v1462 = v643;
  v1463 = v644;
  v1464 = v639;
  v1465 = v640;
  v1466 = v638;
  v1467 = v637;
  v1468 = v635;
  v1469 = v636;
  v1470 = v634;
  v1471 = v632;
  v1472 = v633;
  v1473 = v631;
  v1474 = v630;
  v1475 = v629;
  v1476 = v628;
  v1477 = v627;
  v1478 = v626;
  v1479 = v624;
  v1480 = v625;
  v1481 = v623;
  v1482 = v622;
  v1483 = v621;
  v1484 = v620;
  v1485 = v619;
  v1486 = v618;
  v1487 = v617;
  v1488 = v615;
  v1489 = v616;
  v1490 = v614;
  v1491 = v613;
  v1492 = v612;
  v1493 = v371;
  v377 = v610;
  sub_2528BEA90();
  v1373 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v1374 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v1375 = &type metadata for Attribute.AirQualityCase.Resolver;
  v1376 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v1377 = &type metadata for Attribute.BrightnessCase.Resolver;
  v1378 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v1379 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v1380 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v1381 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v1382 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v1383 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v1384 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v1385 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v1386 = &type metadata for Attribute.ColorCase.Resolver;
  v1387 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v1388 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v1389 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v1390 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v1391 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v1392 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v1393 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v1394 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v1395 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v1396 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v1397 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v1398 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v1399 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v1400 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v1401 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v1402 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v1403 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v1404 = &type metadata for Attribute.InUseCase.Resolver;
  v1405 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v1406 = &type metadata for Attribute.LightLevelCase.Resolver;
  v1407 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v1408 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v1409 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v1410 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v1411 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v1412 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v1413 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v1414 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v1415 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v1416 = &type metadata for Attribute.PositionStateCase.Resolver;
  v1417 = &type metadata for Attribute.PowerCase.Resolver;
  v1418 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v1419 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v1420 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v1421 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v1422 = &type metadata for Attribute.RvcCase.Resolver;
  v1423 = &type metadata for Attribute.SetDurationCase.Resolver;
  v1424 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v1425 = &type metadata for Attribute.SulphurDioxideDensityCase.Resolver;
  v1426 = &type metadata for Attribute.SwingModeEnabledCase.Resolver;
  v1427 = &type metadata for Attribute.TargetAirPurifierStateCase.Resolver;
  v1428 = &type metadata for Attribute.TargetDoorStateCase.Resolver;
  v1429 = &type metadata for Attribute.TargetHorizontalTiltCase.Resolver;
  v1430 = &type metadata for Attribute.TargetHumidityCase.Resolver;
  v1431 = &type metadata for Attribute.TargetLockStateCase.Resolver;
  v1432 = &type metadata for Attribute.TargetPositionCase.Resolver;
  v1433 = &type metadata for Attribute.TargetSecuritySystemStateCase.Resolver;
  v1312 = v664;
  v1313 = v667;
  v1314 = v659;
  v1315 = v657;
  v1316 = v372;
  v1317 = v668;
  v1318 = v662;
  v1319 = v373;
  v1320 = v666;
  v1321 = v661;
  v378 = v660;
  v1322 = v660;
  v1323 = v665;
  v1324 = v663;
  v1325 = v655;
  v1326 = v654;
  v1327 = v656;
  v1328 = v658;
  v1329 = v653;
  v1330 = v652;
  v1331 = v651;
  v1332 = v649;
  v1333 = v650;
  v1334 = v647;
  v1335 = v374;
  v1336 = v646;
  v1337 = v641;
  v1338 = v375;
  v1339 = v645;
  v1340 = v376;
  v1341 = v644;
  v1342 = v639;
  v379 = v640;
  v1343 = v640;
  v1344 = v638;
  v1345 = v637;
  v1346 = v635;
  v1347 = v636;
  v1348 = v634;
  v1349 = v632;
  v1350 = v633;
  v1351 = v631;
  v1352 = v630;
  v1353 = v629;
  v380 = v628;
  v1354 = v628;
  v1355 = v627;
  v1356 = v626;
  v1357 = v624;
  v1358 = v625;
  v381 = v623;
  v1359 = v623;
  v1360 = v622;
  v1361 = v621;
  v1362 = v620;
  v1363 = v619;
  v1364 = v618;
  v1365 = v617;
  v1366 = v615;
  v1367 = v616;
  v1368 = v614;
  v1369 = v613;
  v1370 = v612;
  v1371 = v611;
  v1372 = v377;
  v382 = v609;
  sub_2528BEA90();
  v1250 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v1251 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v1252 = &type metadata for Attribute.AirQualityCase.Resolver;
  v1253 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v1254 = &type metadata for Attribute.BrightnessCase.Resolver;
  v1255 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v1256 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v1257 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v1258 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v1259 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v1260 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v1261 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v1262 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v1263 = &type metadata for Attribute.ColorCase.Resolver;
  v1264 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v1265 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v1266 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v1267 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v1268 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v1269 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v1270 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v1271 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v1272 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v1273 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v1274 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v1275 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v1276 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v1277 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v1278 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v1279 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v1280 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v1281 = &type metadata for Attribute.InUseCase.Resolver;
  v1282 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v1283 = &type metadata for Attribute.LightLevelCase.Resolver;
  v1284 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v1285 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v1286 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v1287 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v1288 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v1289 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v1290 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v1291 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v1292 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v1293 = &type metadata for Attribute.PositionStateCase.Resolver;
  v1294 = &type metadata for Attribute.PowerCase.Resolver;
  v1295 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v1296 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v1297 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v1298 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v1299 = &type metadata for Attribute.RvcCase.Resolver;
  v1300 = &type metadata for Attribute.SetDurationCase.Resolver;
  v1301 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v1302 = &type metadata for Attribute.SulphurDioxideDensityCase.Resolver;
  v1303 = &type metadata for Attribute.SwingModeEnabledCase.Resolver;
  v1304 = &type metadata for Attribute.TargetAirPurifierStateCase.Resolver;
  v1305 = &type metadata for Attribute.TargetDoorStateCase.Resolver;
  v1306 = &type metadata for Attribute.TargetHorizontalTiltCase.Resolver;
  v1307 = &type metadata for Attribute.TargetHumidityCase.Resolver;
  v1308 = &type metadata for Attribute.TargetLockStateCase.Resolver;
  v1309 = &type metadata for Attribute.TargetPositionCase.Resolver;
  v1310 = &type metadata for Attribute.TargetSecuritySystemStateCase.Resolver;
  v1311 = &type metadata for Attribute.TargetVerticalTiltCase.Resolver;
  v1188 = v664;
  v1189 = v667;
  v1190 = v659;
  v1191 = v657;
  v1192 = v669;
  v1193 = v668;
  v1194 = v662;
  v1195 = v671;
  v1196 = v666;
  v383 = v661;
  v1197 = v661;
  v1198 = v378;
  v384 = v665;
  v1199 = v665;
  v1200 = v663;
  v1201 = v655;
  v1202 = v654;
  v1203 = v656;
  v1204 = v658;
  v1205 = v653;
  v1206 = v652;
  v1207 = v651;
  v1208 = v649;
  v1209 = v650;
  v1210 = v647;
  v1211 = v648;
  v1212 = v646;
  v1213 = v641;
  v1214 = v642;
  v1215 = v645;
  v1216 = v643;
  v1217 = v644;
  v1218 = v639;
  v1219 = v379;
  v1220 = v638;
  v1221 = v637;
  v1222 = v635;
  v1223 = v636;
  v1224 = v634;
  v1225 = v632;
  v1226 = v633;
  v1227 = v631;
  v1228 = v630;
  v1229 = v629;
  v1230 = v380;
  v1231 = v627;
  v1232 = v626;
  v1233 = v624;
  v1234 = v625;
  v1235 = v381;
  v385 = v622;
  v1236 = v622;
  v1237 = v621;
  v1238 = v620;
  v1239 = v619;
  v1240 = v618;
  v1241 = v617;
  v1242 = v615;
  v1243 = v616;
  v1244 = v614;
  v1245 = v613;
  v1246 = v612;
  v1247 = v611;
  v1248 = v610;
  v1249 = v382;
  v386 = v608;
  sub_2528BEA90();
  v1125 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v1126 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v1127 = &type metadata for Attribute.AirQualityCase.Resolver;
  v1128 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v1129 = &type metadata for Attribute.BrightnessCase.Resolver;
  v1130 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v1131 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v1132 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v1133 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v1134 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v1135 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v1136 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v1137 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v1138 = &type metadata for Attribute.ColorCase.Resolver;
  v1139 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v1140 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v1141 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v1142 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v1143 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v1144 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v1145 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v1146 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v1147 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v1148 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v1149 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v1150 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v1151 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v1152 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v1153 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v1154 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v1155 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v1156 = &type metadata for Attribute.InUseCase.Resolver;
  v1157 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v1158 = &type metadata for Attribute.LightLevelCase.Resolver;
  v1159 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v1160 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v1161 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v1162 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v1163 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v1164 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v1165 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v1166 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v1167 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v1168 = &type metadata for Attribute.PositionStateCase.Resolver;
  v1169 = &type metadata for Attribute.PowerCase.Resolver;
  v1170 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v1171 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v1172 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v1173 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v1174 = &type metadata for Attribute.RvcCase.Resolver;
  v1175 = &type metadata for Attribute.SetDurationCase.Resolver;
  v1176 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v1177 = &type metadata for Attribute.SulphurDioxideDensityCase.Resolver;
  v1178 = &type metadata for Attribute.SwingModeEnabledCase.Resolver;
  v1179 = &type metadata for Attribute.TargetAirPurifierStateCase.Resolver;
  v1180 = &type metadata for Attribute.TargetDoorStateCase.Resolver;
  v1181 = &type metadata for Attribute.TargetHorizontalTiltCase.Resolver;
  v1182 = &type metadata for Attribute.TargetHumidityCase.Resolver;
  v1183 = &type metadata for Attribute.TargetLockStateCase.Resolver;
  v1184 = &type metadata for Attribute.TargetPositionCase.Resolver;
  v1185 = &type metadata for Attribute.TargetSecuritySystemStateCase.Resolver;
  v1186 = &type metadata for Attribute.TargetVerticalTiltCase.Resolver;
  v1187 = &type metadata for Attribute.ThermostatModeCase.Resolver;
  v1062 = v664;
  v1063 = v667;
  v1064 = v659;
  v1065 = v657;
  v1066 = v669;
  v1067 = v668;
  v1068 = v662;
  v1069 = v671;
  v1070 = v666;
  v1071 = v383;
  v1072 = v660;
  v1073 = v384;
  v1074 = v663;
  v387 = v655;
  v1075 = v655;
  v388 = v654;
  v1076 = v654;
  v389 = v656;
  v1077 = v656;
  v1078 = v658;
  v1079 = v653;
  v1080 = v652;
  v1081 = v651;
  v1082 = v649;
  v1083 = v650;
  v1084 = v647;
  v1085 = v648;
  v1086 = v646;
  v1087 = v641;
  v1088 = v642;
  v1089 = v645;
  v1090 = v643;
  v1091 = v644;
  v1092 = v639;
  v1093 = v640;
  v1094 = v638;
  v1095 = v637;
  v1096 = v635;
  v1097 = v636;
  v1098 = v634;
  v1099 = v632;
  v1100 = v633;
  v1101 = v631;
  v1102 = v630;
  v1103 = v629;
  v1104 = v628;
  v1105 = v627;
  v1106 = v626;
  v1107 = v624;
  v1108 = v625;
  v1109 = v623;
  v1110 = v385;
  v1111 = v621;
  v1112 = v620;
  v1113 = v619;
  v1114 = v618;
  v1115 = v617;
  v1116 = v615;
  v1117 = v616;
  v1118 = v614;
  v1119 = v613;
  v1120 = v612;
  v1121 = v611;
  v1122 = v610;
  v1123 = v609;
  v1124 = v386;
  v390 = v606;
  sub_2528BEA90();
  v998 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v999 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v1000 = &type metadata for Attribute.AirQualityCase.Resolver;
  v1001 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v1002 = &type metadata for Attribute.BrightnessCase.Resolver;
  v1003 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v1004 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v1005 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v1006 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v1007 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v1008 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v1009 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v1010 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v1011 = &type metadata for Attribute.ColorCase.Resolver;
  v1012 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v1013 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v1014 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v1015 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v1016 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v1017 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v1018 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v1019 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v1020 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v1021 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v1022 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v1023 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v1024 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v1025 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v1026 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v1027 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v1028 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v1029 = &type metadata for Attribute.InUseCase.Resolver;
  v1030 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v1031 = &type metadata for Attribute.LightLevelCase.Resolver;
  v1032 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v1033 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v1034 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v1035 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v1036 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v1037 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v1038 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v1039 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v1040 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v1041 = &type metadata for Attribute.PositionStateCase.Resolver;
  v1042 = &type metadata for Attribute.PowerCase.Resolver;
  v1043 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v1044 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v1045 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v1046 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v1047 = &type metadata for Attribute.RvcCase.Resolver;
  v1048 = &type metadata for Attribute.SetDurationCase.Resolver;
  v1049 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v1050 = &type metadata for Attribute.SulphurDioxideDensityCase.Resolver;
  v1051 = &type metadata for Attribute.SwingModeEnabledCase.Resolver;
  v1052 = &type metadata for Attribute.TargetAirPurifierStateCase.Resolver;
  v1053 = &type metadata for Attribute.TargetDoorStateCase.Resolver;
  v1054 = &type metadata for Attribute.TargetHorizontalTiltCase.Resolver;
  v1055 = &type metadata for Attribute.TargetHumidityCase.Resolver;
  v1056 = &type metadata for Attribute.TargetLockStateCase.Resolver;
  v1057 = &type metadata for Attribute.TargetPositionCase.Resolver;
  v1058 = &type metadata for Attribute.TargetSecuritySystemStateCase.Resolver;
  v1059 = &type metadata for Attribute.TargetVerticalTiltCase.Resolver;
  v1060 = &type metadata for Attribute.ThermostatModeCase.Resolver;
  v1061 = &type metadata for Attribute.ThermostatModeAndValueCase.Resolver;
  v934 = v664;
  v935 = v667;
  v936 = v659;
  v937 = v657;
  v938 = v669;
  v939 = v668;
  v391 = v662;
  v940 = v662;
  v941 = v671;
  v942 = v666;
  v943 = v661;
  v944 = v660;
  v945 = v665;
  v946 = v663;
  v947 = v387;
  v948 = v388;
  v949 = v389;
  v950 = v658;
  v951 = v653;
  v952 = v652;
  v953 = v651;
  v954 = v649;
  v955 = v650;
  v392 = v647;
  v956 = v647;
  v957 = v648;
  v958 = v646;
  v959 = v641;
  v960 = v642;
  v961 = v645;
  v962 = v643;
  v963 = v644;
  v964 = v639;
  v965 = v640;
  v966 = v638;
  v967 = v637;
  v968 = v635;
  v969 = v636;
  v970 = v634;
  v971 = v632;
  v972 = v633;
  v973 = v631;
  v974 = v630;
  v975 = v629;
  v976 = v628;
  v393 = v627;
  v977 = v627;
  v978 = v626;
  v979 = v624;
  v980 = v625;
  v981 = v623;
  v982 = v622;
  v394 = v621;
  v983 = v621;
  v395 = v620;
  v984 = v620;
  v985 = v619;
  v986 = v618;
  v987 = v617;
  v988 = v615;
  v989 = v616;
  v990 = v614;
  v991 = v613;
  v992 = v612;
  v993 = v611;
  v994 = v610;
  v995 = v609;
  v996 = v608;
  v997 = v390;
  v396 = v572;
  sub_2528BEA90();
  v869 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v870 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v871 = &type metadata for Attribute.AirQualityCase.Resolver;
  v872 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v873 = &type metadata for Attribute.BrightnessCase.Resolver;
  v874 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v875 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v876 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v877 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v878 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v879 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v880 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v881 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v882 = &type metadata for Attribute.ColorCase.Resolver;
  v883 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v884 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v885 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v886 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v887 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v888 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v889 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v890 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v891 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v892 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v893 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v894 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v895 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v896 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v897 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v898 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v899 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v900 = &type metadata for Attribute.InUseCase.Resolver;
  v901 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v902 = &type metadata for Attribute.LightLevelCase.Resolver;
  v903 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v904 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v905 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v906 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v907 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v908 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v909 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v910 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v911 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v912 = &type metadata for Attribute.PositionStateCase.Resolver;
  v913 = &type metadata for Attribute.PowerCase.Resolver;
  v914 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v915 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v916 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v917 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v918 = &type metadata for Attribute.RvcCase.Resolver;
  v919 = &type metadata for Attribute.SetDurationCase.Resolver;
  v920 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v921 = &type metadata for Attribute.SulphurDioxideDensityCase.Resolver;
  v922 = &type metadata for Attribute.SwingModeEnabledCase.Resolver;
  v923 = &type metadata for Attribute.TargetAirPurifierStateCase.Resolver;
  v924 = &type metadata for Attribute.TargetDoorStateCase.Resolver;
  v925 = &type metadata for Attribute.TargetHorizontalTiltCase.Resolver;
  v926 = &type metadata for Attribute.TargetHumidityCase.Resolver;
  v927 = &type metadata for Attribute.TargetLockStateCase.Resolver;
  v928 = &type metadata for Attribute.TargetPositionCase.Resolver;
  v929 = &type metadata for Attribute.TargetSecuritySystemStateCase.Resolver;
  v930 = &type metadata for Attribute.TargetVerticalTiltCase.Resolver;
  v931 = &type metadata for Attribute.ThermostatModeCase.Resolver;
  v932 = &type metadata for Attribute.ThermostatModeAndValueCase.Resolver;
  v933 = &type metadata for Attribute.ThermostatModeAndRangeCase.Resolver;
  v804 = v664;
  v805 = v667;
  v806 = v659;
  v807 = v657;
  v808 = v669;
  v809 = v668;
  v810 = v391;
  v811 = v671;
  v812 = v666;
  v813 = v661;
  v814 = v660;
  v815 = v665;
  v816 = v663;
  v817 = v655;
  v818 = v654;
  v819 = v656;
  v820 = v658;
  v821 = v653;
  v822 = v652;
  v823 = v651;
  v824 = v649;
  v825 = v650;
  v826 = v392;
  v827 = v648;
  v828 = v646;
  v829 = v641;
  v830 = v642;
  v831 = v645;
  v832 = v643;
  v833 = v644;
  v397 = v639;
  v834 = v639;
  v835 = v640;
  v836 = v638;
  v837 = v637;
  v838 = v635;
  v839 = v636;
  v840 = v634;
  v841 = v632;
  v842 = v633;
  v843 = v631;
  v844 = v630;
  v845 = v629;
  v846 = v628;
  v847 = v393;
  v398 = v626;
  v848 = v626;
  v399 = v624;
  v849 = v624;
  v850 = v625;
  v851 = v623;
  v852 = v622;
  v853 = v394;
  v854 = v395;
  v855 = v619;
  v856 = v618;
  v400 = v617;
  v857 = v617;
  v401 = v615;
  v858 = v615;
  v859 = v616;
  v860 = v614;
  v861 = v613;
  v862 = v612;
  v863 = v611;
  v864 = v610;
  v865 = v609;
  v866 = v608;
  v867 = v606;
  v868 = v396;
  v402 = v405;
  v403 = v520;
  sub_2528BEA90();
  v738 = &type metadata for Attribute.AirParticulateDensityCase.Resolver;
  v739 = &type metadata for Attribute.AirParticulateSizeCase.Resolver;
  v740 = &type metadata for Attribute.AirQualityCase.Resolver;
  v741 = &type metadata for Attribute.BatteryLevelCase.Resolver;
  v742 = &type metadata for Attribute.BrightnessCase.Resolver;
  v743 = &type metadata for Attribute.CarbonDioxideDetectedCase.Resolver;
  v744 = &type metadata for Attribute.CarbonDioxideLevelCase.Resolver;
  v745 = &type metadata for Attribute.CarbonDioxidePeakLevelCase.Resolver;
  v746 = &type metadata for Attribute.CarbonMonoxideDetectedCase.Resolver;
  v747 = &type metadata for Attribute.CarbonMonoxideLevelCase.Resolver;
  v748 = &type metadata for Attribute.CarbonMonoxidePeakLevelCase.Resolver;
  v749 = &type metadata for Attribute.ChargingStateCase.Resolver;
  v750 = &type metadata for Attribute.ChildLockEnabledCase.Resolver;
  v751 = &type metadata for Attribute.ColorCase.Resolver;
  v752 = &type metadata for Attribute.ContactDetectedCase.Resolver;
  v753 = &type metadata for Attribute.CurrentAirPurifierStateCase.Resolver;
  v754 = &type metadata for Attribute.CurrentDoorStateCase.Resolver;
  v755 = &type metadata for Attribute.CurrentHorizontalTiltCase.Resolver;
  v756 = &type metadata for Attribute.CurrentHumidifierDehumidifierModeCase.Resolver;
  v757 = &type metadata for Attribute.CurrentHumidityCase.Resolver;
  v758 = &type metadata for Attribute.CurrentLockStateCase.Resolver;
  v759 = &type metadata for Attribute.CurrentPositionCase.Resolver;
  v760 = &type metadata for Attribute.CurrentSecuritySystemStateCase.Resolver;
  v761 = &type metadata for Attribute.CurrentTemperatureCase.Resolver;
  v762 = &type metadata for Attribute.CurrentThermostatModeCase.Resolver;
  v763 = &type metadata for Attribute.CurrentVerticalTiltCase.Resolver;
  v764 = &type metadata for Attribute.FilterChangeNeededCase.Resolver;
  v765 = &type metadata for Attribute.FilterLifeLevelCase.Resolver;
  v766 = &type metadata for Attribute.HumidifierDehumidifierModeCase.Resolver;
  v767 = &type metadata for Attribute.HumidifierDehumidifierModeAndValueCase.Resolver;
  v768 = &type metadata for Attribute.HumidifierDehumidifierModeAndRangeCase.Resolver;
  v769 = &type metadata for Attribute.InUseCase.Resolver;
  v770 = &type metadata for Attribute.LeakDetectedCase.Resolver;
  v771 = &type metadata for Attribute.LightLevelCase.Resolver;
  v772 = &type metadata for Attribute.LowBatteryCase.Resolver;
  v773 = &type metadata for Attribute.MotionDetectedCase.Resolver;
  v774 = &type metadata for Attribute.NaturalLightCase.Resolver;
  v775 = &type metadata for Attribute.NitrogenDioxideDensityCase.Resolver;
  v776 = &type metadata for Attribute.ObstructionDetectedCase.Resolver;
  v777 = &type metadata for Attribute.OccupancyDetectedCase.Resolver;
  v778 = &type metadata for Attribute.OzoneDensityCase.Resolver;
  v779 = &type metadata for Attribute.Pm10DensityCase.Resolver;
  v780 = &type metadata for Attribute.Pm2_5DensityCase.Resolver;
  v781 = &type metadata for Attribute.PositionStateCase.Resolver;
  v782 = &type metadata for Attribute.PowerCase.Resolver;
  v783 = &type metadata for Attribute.RemainingDurationCase.Resolver;
  v784 = &type metadata for Attribute.RotationDirectionCase.Resolver;
  v785 = &type metadata for Attribute.RotationSpeedCase.Resolver;
  v786 = &type metadata for Attribute.RvcCurrentRunCase.Resolver;
  v787 = &type metadata for Attribute.RvcCase.Resolver;
  v788 = &type metadata for Attribute.SetDurationCase.Resolver;
  v789 = &type metadata for Attribute.SmokeDetectedCase.Resolver;
  v790 = &type metadata for Attribute.SulphurDioxideDensityCase.Resolver;
  v791 = &type metadata for Attribute.SwingModeEnabledCase.Resolver;
  v792 = &type metadata for Attribute.TargetAirPurifierStateCase.Resolver;
  v793 = &type metadata for Attribute.TargetDoorStateCase.Resolver;
  v794 = &type metadata for Attribute.TargetHorizontalTiltCase.Resolver;
  v795 = &type metadata for Attribute.TargetHumidityCase.Resolver;
  v796 = &type metadata for Attribute.TargetLockStateCase.Resolver;
  v797 = &type metadata for Attribute.TargetPositionCase.Resolver;
  v798 = &type metadata for Attribute.TargetSecuritySystemStateCase.Resolver;
  v799 = &type metadata for Attribute.TargetVerticalTiltCase.Resolver;
  v800 = &type metadata for Attribute.ThermostatModeCase.Resolver;
  v801 = &type metadata for Attribute.ThermostatModeAndValueCase.Resolver;
  v802 = &type metadata for Attribute.ThermostatModeAndRangeCase.Resolver;
  v803 = &type metadata for Attribute.VolatileOrganicCompoundDensityCase.Resolver;
  v672 = v664;
  v673 = v667;
  v674 = v659;
  v675 = v657;
  v676 = v669;
  v677 = v668;
  v678 = v662;
  v679 = v671;
  v680 = v666;
  v681 = v661;
  v682 = v660;
  v683 = v665;
  v684 = v663;
  v685 = v655;
  v686 = v654;
  v687 = v656;
  v688 = v658;
  v689 = v653;
  v690 = v652;
  v691 = v651;
  v692 = v649;
  v693 = v650;
  v694 = v647;
  v695 = v648;
  v696 = v646;
  v697 = v641;
  v698 = v642;
  v699 = v645;
  v700 = v643;
  v701 = v644;
  v702 = v397;
  v703 = v640;
  v704 = v638;
  v705 = v637;
  v706 = v635;
  v707 = v636;
  v708 = v634;
  v709 = v632;
  v710 = v633;
  v711 = v631;
  v712 = v630;
  v713 = v629;
  v714 = v628;
  v715 = v627;
  v716 = v398;
  v717 = v399;
  v718 = v625;
  v719 = v623;
  v720 = v622;
  v721 = v621;
  v722 = v620;
  v723 = v619;
  v724 = v618;
  v725 = v400;
  v726 = v401;
  v727 = v616;
  v728 = v614;
  v729 = v613;
  v730 = v612;
  v731 = v611;
  v732 = v610;
  v733 = v609;
  v734 = v608;
  v735 = v606;
  v736 = v572;
  v737 = v402;
  sub_2528BEA90();
  (*(v539 + 8))(v403, v541);
  (*(v537 + 8))(v602, v538);
  (*(v535 + 8))(v601, v536);
  (*(v533 + 8))(v600, v534);
  (*(v531 + 8))(v599, v532);
  (*(v529 + 8))(v598, v530);
  (*(v527 + 8))(v597, v528);
  (*(v525 + 8))(v596, v526);
  (*(v523 + 8))(v595, v524);
  (*(v521 + 8))(v594, v522);
  (*(v518 + 8))(v593, v519);
  (*(v516 + 8))(v592, v517);
  (*(v514 + 8))(v587, v515);
  (*(v512 + 8))(v582, v513);
  (*(v510 + 8))(v578, v511);
  (*(v508 + 8))(v575, v509);
  (*(v506 + 8))(v571, v507);
  (*(v504 + 8))(v568, v505);
  (*(v502 + 8))(v565, v503);
  (*(v500 + 8))(v562, v501);
  (*(v498 + 8))(v560, v499);
  (*(v496 + 8))(v558, v497);
  (*(v494 + 8))(v555, v495);
  (*(v492 + 8))(v553, v493);
  (*(v490 + 8))(v551, v491);
  (*(v488 + 8))(v550, v489);
  (*(v486 + 8))(v548, v487);
  (*(v484 + 8))(v545, v485);
  (*(v482 + 8))(v543, v483);
  (*(v480 + 8))(v542, v481);
  (*(v478 + 8))(v544, v479);
  (*(v476 + 8))(v546, v477);
  (*(v474 + 8))(v547, v475);
  (*(v472 + 8))(v549, v473);
  (*(v470 + 8))(v603, v471);
  (*(v468 + 8))(v552, v469);
  (*(v466 + 8))(v604, v467);
  (*(v464 + 8))(v554, v465);
  (*(v462 + 8))(v556, v463);
  (*(v460 + 8))(v557, v461);
  (*(v458 + 8))(v605, v459);
  (*(v456 + 8))(v559, v457);
  (*(v454 + 8))(v561, v455);
  (*(v452 + 8))(v563, v453);
  (*(v450 + 8))(v564, v451);
  (*(v448 + 8))(v566, v449);
  (*(v446 + 8))(v567, v447);
  (*(v444 + 8))(v569, v445);
  (*(v442 + 8))(v607, v443);
  (*(v440 + 8))(v570, v441);
  (*(v438 + 8))(v573, v439);
  (*(v436 + 8))(v574, v437);
  (*(v434 + 8))(v576, v435);
  (*(v432 + 8))(v577, v433);
  (*(v430 + 8))(v579, v431);
  (*(v428 + 8))(v580, v429);
  (*(v426 + 8))(v581, v427);
  (*(v424 + 8))(v583, v425);
  (*(v422 + 8))(v584, v423);
  (*(v420 + 8))(v585, v421);
  (*(v418 + 8))(v586, v419);
  (*(v416 + 8))(v588, v417);
  (*(v414 + 8))(v589, v415);
  (*(v412 + 8))(v590, v413);
  (*(v410 + 8))(v591, v411);
  return (*(v408 + 8))(v407, v409);
}