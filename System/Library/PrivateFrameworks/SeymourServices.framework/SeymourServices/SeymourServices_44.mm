void sub_22732B690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v26 = a1 + 32;
    v3 = MEMORY[0x277D84F90];
    v25 = *(a1 + 16);
    do
    {
      v24 = v3;
      v4 = v2;
      while (1)
      {
        if (v4 >= v1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          return;
        }

        if (__OFADD__(v4, 1))
        {
          goto LABEL_34;
        }

        v27 = v4 + 1;
        v5 = *(v26 + 8 * v4);
        v6 = *(v5 + 16);

        if (v6)
        {
          v7 = 0;
          v8 = v5 + 56;
          v9 = MEMORY[0x277D84F90];
          do
          {
            v28 = v9;
            v10 = (v8 + 32 * v7);
            v11 = v7;
            while (1)
            {
              if (v11 >= *(v5 + 16))
              {
                __break(1u);
                goto LABEL_33;
              }

              v12 = *(v10 - 3);
              v13 = *(v10 - 2);
              v14 = *(v10 - 1);
              v15 = *v10;
              v7 = v11 + 1;
              sub_226EB396C(v13, v14, *v10);
              sub_226F48150();
              sub_226EC1E18();
              if (sub_227663B30())
              {
                break;
              }

              sub_226EB2DFC(v13, v14, v15);
              v10 += 32;
              ++v11;
              if (v6 == v7)
              {
                v9 = v28;
                goto LABEL_20;
              }
            }

            v9 = v28;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_226F1FCC8(0, *(v28 + 16) + 1, 1);
              v9 = v28;
            }

            v17 = *(v9 + 16);
            v16 = *(v9 + 24);
            v18 = v17 + 1;
            if (v17 >= v16 >> 1)
            {
              sub_226F1FCC8((v16 > 1), v17 + 1, 1);
              v18 = v17 + 1;
              v9 = v28;
            }

            *(v9 + 16) = v18;
            v19 = v9 + 32 * v17;
            *(v19 + 32) = v12;
            *(v19 + 40) = v13;
            *(v19 + 48) = v14;
            *(v19 + 56) = v15;
            v8 = v5 + 56;
          }

          while (v6 - 1 != v11);
        }

        else
        {
          v9 = MEMORY[0x277D84F90];
        }

LABEL_20:
        v20 = *(v9 + 16);

        if (v20 < 2)
        {
          break;
        }

        v4 = v27;
        v1 = v25;
        if (v27 == v25)
        {
          v3 = v24;
          goto LABEL_28;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226F1FCA8(0, *(v24 + 16) + 1, 1);
        v3 = v24;
      }

      v23 = *(v3 + 16);
      v22 = *(v3 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1FCA8((v22 > 1), v23 + 1, 1);
        v3 = v24;
      }

      *(v3 + 16) = v23 + 1;
      *(v3 + 8 * v23 + 32) = v5;
      v1 = v25;
      v2 = v27;
    }

    while (v27 != v25);
LABEL_28:
    if (!*(v3 + 16))
    {
      goto LABEL_31;
    }
  }

  else if (!*(MEMORY[0x277D84F90] + 16))
  {
LABEL_31:
  }
}

unint64_t *sub_22732B974(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v24 = 0;
  v3 = 0;
  v22 = result;
  v23 = a3 + 64;
  v4 = 1 << *(a3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a3 + 64);
  v7 = (v4 + 63) >> 6;
  v26 = v7;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v28 = (v6 - 1) & v6;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(a3 + 48) + 24 * v11;
    v14 = *v12;
    v13 = *(v12 + 8);
    v25 = v11;
    v29 = *(v12 + 16);
    sub_226EB396C(*v12, v13, v29);

    v15 = sub_227667250();
    if (*(v15 + 16) && (sub_22766D370(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560), sub_226F480FC(), sub_227663B10(), v16 = sub_22766D3F0(), v17 = -1 << *(v15 + 32), v18 = v16 & ~v17, ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
    {
      v19 = ~v17;
      sub_226F48150();
      sub_226EC1E18();
      while ((sub_227663B20() & 1) == 0)
      {
        v18 = (v18 + 1) & v19;
        if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      result = sub_226EB2DFC(v14, v13, v29);
      *(v22 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v20 = __OFADD__(v24++, 1);
      v7 = v26;
      v6 = v28;
      if (v20)
      {
        __break(1u);
        return sub_227328C40(v22, a2, v24, a3);
      }
    }

    else
    {
LABEL_5:

      result = sub_226EB2DFC(v14, v13, v29);
      v7 = v26;
      v6 = v28;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return sub_227328C40(v22, a2, v24, a3);
    }

    v10 = *(v23 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v28 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22732BC60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_227328794(v13, v8, a1, a2);
      MEMORY[0x22AA9A450](v13, -1, -1);

      return v11;
    }
  }

  MEMORY[0x28223BE20](v10);
  bzero(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_22732B974((v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

BOOL sub_22732BE20(uint64_t a1, uint64_t a2)
{

  v4 = sub_226F43CE0(a2);

  v19 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a1 + 32;
    do
    {
      v8 = *(v7 + 8 * v6);
      v9 = *(v8 + 16);
      if (v9)
      {

        v10 = (v8 + 56);
        do
        {
          v11 = *(v10 - 2);
          v12 = *(v10 - 1);
          v13 = *v10;
          v10 += 32;
          sub_226EB396C(v11, v12, v13);
          v14 = sub_22700C8C0(v11, v12, v13);
          sub_227010FE0(v14, v15, v16);
          sub_226EB2DFC(v11, v12, v13);
          --v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != v5);
    v4 = v19;
  }

  v17 = *(v4 + 16);

  return v17 == 0;
}

uint64_t sub_22732BF30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_226EB2DFC(a2, a3, a4 & 1);
  }

  return result;
}

void *sub_22732BF54(uint64_t a1)
{
  v1 = sub_22766B390();
  v134 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v121 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v122 = &v121 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v121 - v7;

  v10 = sub_226F43DCC(v9);

  v11 = 0;
  v128 = 0;
  v135 = 0;
  v12 = 0;
  v13 = v10 + 56;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v10 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = MEMORY[0x277D84F98];
  v131 = v1;
  v132 = v3;
  v133 = v8;
  v139 = v10;
  v140 = v17;
  v141 = v10 + 56;
  while (1)
  {
    v137 = v11;
    v138 = v18;
    if (!v16)
    {
      break;
    }

LABEL_11:
    v143 = v12;
    v144 = v16;
    v21 = *(*(v10 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v16)))));
    v151 = MEMORY[0x277D84FA0];
    v22 = *(v21 + 16);
    if (v22)
    {

      v23 = (v142 + 56);
      v24 = MEMORY[0x277D84F90];
      v25 = MEMORY[0x277D84F90];
      do
      {
        v27 = *(v23 - 3);
        v26 = *(v23 - 2);
        v28 = *(v23 - 1);
        v29 = *v23;
        sub_226EB396C(v26, v28, *v23);
        sub_226EB396C(v26, v28, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_2273A55F4(0, *(v25 + 2) + 1, 1, v25);
        }

        v31 = *(v25 + 2);
        v30 = *(v25 + 3);
        if (v31 >= v30 >> 1)
        {
          v25 = sub_2273A55F4((v30 > 1), v31 + 1, 1, v25);
        }

        *(v25 + 2) = v31 + 1;
        v32 = &v25[40 * v31];
        *(v32 + 4) = v27;
        *(v32 + 5) = MEMORY[0x277D84FA0];
        *(v32 + 6) = v26;
        *(v32 + 7) = v28;
        v32[64] = v29;
        sub_226EB396C(v26, v28, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2273A59E0(0, v24[2] + 1, 1, v24);
        }

        v34 = v24[2];
        v33 = v24[3];
        if (v34 >= v33 >> 1)
        {
          v24 = sub_2273A59E0((v33 > 1), v34 + 1, 1, v24);
        }

        v24[2] = v34 + 1;
        v35 = &v24[3 * v34];
        v35[4] = v26;
        v35[5] = v28;
        *(v35 + 48) = v29;
        sub_227105A48(&v148, v26, v28, v29);
        sub_226EB2DFC(v148, v149, v150);
        v23 += 32;
        --v22;
      }

      while (v22);

      v10 = v139;
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
      v25 = MEMORY[0x277D84F90];
    }

    v148 = v24;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB90, &unk_2276808B8);
    sub_226E9CFD0(&qword_27D7BCB98, &qword_27D7BCB90, &unk_2276808B8, MEMORY[0x277D83970]);
    v36 = sub_22766C220();

    sub_226EA9E3C(v137, 0);
    v37 = v138;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = v37;
    v40 = sub_226F3AE8C(v36);
    v41 = *(v37 + 16);
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_77;
    }

    v44 = v39;
    if (*(v37 + 24) >= v43)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v45 = v138;
        if (v39)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_226FF27E4();
        v45 = v148;
        if (v44)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_226FE74A8(v43, isUniquelyReferenced_nonNull_native);
      v45 = v148;
      v46 = sub_226F3AE8C(v36);
      if ((v44 & 1) != (v47 & 1))
      {
        goto LABEL_81;
      }

      v40 = v46;
      if (v44)
      {
LABEL_31:

        goto LABEL_35;
      }
    }

    v45[(v40 >> 6) + 8] |= 1 << v40;
    *(v45[6] + 8 * v40) = v36;
    *(v45[7] + 8 * v40) = MEMORY[0x277D84F90];
    v48 = v45[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      goto LABEL_79;
    }

    v45[2] = v50;
LABEL_35:
    v51 = v45;
    v52 = v45[7];
    v53 = *(v52 + 8 * v40);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *(v52 + 8 * v40) = v53;
    if ((v54 & 1) == 0)
    {
      v53 = sub_2273A58B0(0, v53[2] + 1, 1, v53);
      *(v52 + 8 * v40) = v53;
    }

    v56 = v53[2];
    v55 = v53[3];
    if (v56 >= v55 >> 1)
    {
      v53 = sub_2273A58B0((v55 > 1), v56 + 1, 1, v53);
      *(v52 + 8 * v40) = v53;
    }

    v3 = v132;
    v18 = v51;
    v53[2] = v56 + 1;
    v53[v56 + 4] = v25;
    v57 = *(v25 + 2);
    v49 = __OFADD__(v135, v57);
    v58 = v135 + v57;
    if (v49)
    {
      goto LABEL_78;
    }

    v135 = v58;
    v59 = v24[2];

    v60 = *(v151 + 16);

    if (v60 >= v59)
    {
      v1 = v131;
      v8 = v133;
      v19 = v144;
    }

    else
    {
      v1 = v131;
      v8 = v133;
      v19 = v144;
      if (__OFADD__(v128, 1))
      {
        goto LABEL_80;
      }

      ++v128;
    }

    v16 = (v19 - 1) & v19;
    v11 = sub_22703CD34;
    v17 = v140;
    v13 = v141;
    v12 = v143;
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v12;
    if (v16)
    {
      v12 = v20;
      goto LABEL_11;
    }
  }

  v61 = v18 + 8;
  v62 = 1 << *(v18 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v136 = v63 & v18[8];
  v129 = (v62 + 63) >> 6;
  v64 = (v134 + 8);
  swift_bridgeObjectRetain_n();
  v65 = 0;
  *&v66 = 136315394;
  v123 = v66;
  v127 = v18 + 8;
  v124 = v64;
  while (1)
  {
    v67 = v136;
    if (!v136)
    {
      break;
    }

LABEL_53:
    v136 = (v67 - 1) & v67;
    v134 = v65;
    v69 = (v65 << 9) | (8 * __clz(__rbit64(v67)));
    v70 = *(v18[6] + v69);
    v71 = *(v18[7] + v69);

    sub_22766A630();

    v72 = sub_22766B380();
    v73 = sub_22766C880();

    v130 = v73;
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v151 = v125;
      *v74 = v123;
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      v76 = MEMORY[0x22AA98660](v70, v75);
      v78 = v77;

      v79 = sub_226E97AE8(v76, v78, &v151);

      *(v74 + 4) = v79;
      v126 = v74;
      *(v74 + 12) = 2080;
      v80 = *(v71 + 16);
      if (v80)
      {
        v147 = MEMORY[0x277D84F90];
        sub_226F1EF90();
        v81 = 0;
        v82 = v147;
        v121 = v71;
        v140 = v72;
        v141 = v71 + 32;
        v83 = v80;
        v139 = v80;
        do
        {
          v143 = v81;
          v144 = v82;
          v84 = *(v141 + 8 * v81);
          v85 = *(v84 + 16);
          if (v85)
          {
            v146 = MEMORY[0x277D84F90];

            sub_226F1EF90();
            v86 = v146;
            v142 = v84;
            v87 = (v84 + 64);
            do
            {
              v88 = *(v87 - 4);
              v89 = *(v87 - 1);
              v91 = *v87;
              v148 = *(v87 - 2);
              v90 = v148;
              v149 = v89;
              v150 = v91;

              sub_226EB396C(v90, v89, v91);
              sub_22713A9EC();
              v148 = sub_227663B60();
              v149 = v92;
              MEMORY[0x22AA98450](40, 0xE100000000000000);
              v145 = v88;
              v93 = sub_22766D140();
              MEMORY[0x22AA98450](v93);

              MEMORY[0x22AA98450](41, 0xE100000000000000);

              sub_226EB2DFC(v90, v89, v91);
              v94 = v148;
              v95 = v149;
              v146 = v86;
              v96 = *(v86 + 16);
              if (v96 >= *(v86 + 24) >> 1)
              {
                sub_226F1EF90();
                v86 = v146;
              }

              *(v86 + 16) = v96 + 1;
              v97 = v86 + 16 * v96;
              *(v97 + 32) = v94;
              *(v97 + 40) = v95;
              v87 += 40;
              --v85;
            }

            while (v85);
            v83 = v139;
            v72 = v140;
          }

          else
          {

            v86 = MEMORY[0x277D84F90];
          }

          v148 = v86;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
          sub_226E9CFD0(&qword_27D7BC8C0, &qword_27D7B84E0, &qword_22767C6B0, MEMORY[0x277D83958]);
          v98 = sub_22766BF70();
          v100 = v99;

          v82 = v144;
          v147 = v144;
          v101 = *(v144 + 16);
          if (v101 >= *(v144 + 24) >> 1)
          {
            sub_226F1EF90();
            v82 = v147;
          }

          v81 = v143 + 1;
          *(v82 + 16) = v101 + 1;
          v102 = v82 + 16 * v101;
          *(v102 + 32) = v98;
          *(v102 + 40) = v100;
        }

        while (v81 != v83);

        v1 = v131;
        v3 = v132;
      }

      else
      {

        v82 = MEMORY[0x277D84F90];
      }

      v103 = MEMORY[0x22AA98660](v82, MEMORY[0x277D837D0]);
      v105 = v104;

      v106 = sub_226E97AE8(v103, v105, &v151);

      v107 = v126;
      *(v126 + 14) = v106;
      _os_log_impl(&dword_226E8E000, v72, v130, "[Algorithm]: Splits: %s -> %s", v107, 0x16u);
      v108 = v125;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v108, -1, -1);
      MEMORY[0x22AA9A450](v107, -1, -1);

      v64 = v124;
      v8 = v133;
      (*v124)(v133, v1);
      v18 = v138;
    }

    else
    {

      (*v64)(v8, v1);
    }

    v61 = v127;
    v65 = v134;
  }

  while (1)
  {
    v68 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v68 >= v129)
    {
      v109 = v64;

      sub_22766A630();
      v110 = sub_22766B380();
      v111 = sub_22766C8B0();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 134217984;
        *(v112 + 4) = v135;
        _os_log_impl(&dword_226E8E000, v110, v111, "%ld modality/duration candidates generated", v112, 0xCu);
        v113 = v112;
        v3 = v132;
        MEMORY[0x22AA9A450](v113, -1, -1);
      }

      v114 = *v109;
      (*v109)(v122, v1);
      sub_22766A630();
      v115 = sub_22766B380();
      v116 = sub_22766C8B0();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = v3;
        v118 = swift_slowAlloc();
        *v118 = 134217984;
        *(v118 + 4) = v128;
        v119 = v138;

        _os_log_impl(&dword_226E8E000, v115, v116, "Number of modality/duration splits with repeated modalities is %ld", v118, 0xCu);
        MEMORY[0x22AA9A450](v118, -1, -1);

        v114(v117, v1);
      }

      else
      {

        v114(v3, v1);
        v119 = v138;
      }

      sub_226EA9E3C(v137, 0);
      return v119;
    }

    v67 = v61[v68];
    ++v65;
    if (v67)
    {
      v65 = v68;
      goto LABEL_53;
    }
  }

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
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22732CCA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBA0, &qword_2276808C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_22732CD14(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t *sub_22732CD20@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  result = sub_22732A1F0(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_22732CD54(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_22732CE14(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v26 - v13;
  v15 = [a1 referenceIdentifier];
  if (v15)
  {
    v16 = v15;
    v26[2] = sub_22766C000();
    v26[9] = v17;

    v18 = [a1 referenceType];
    if (v18)
    {
      v26[1] = a2;
      v19 = v18;
      v26[0] = sub_22766C000();
      v21 = v20;

      v22 = [a1 dateBookmarked];
      if (v22)
      {
        v23 = v22;
        sub_227662710();

        (*(v5 + 32))(v14, v10, v4);
        v26[3] = v26[0];
        v26[4] = v21;
        sub_227125DE8();
        sub_227663AE0();
        (*(v5 + 16))(v7, v14, v4);
        sub_227669340();

        (*(v5 + 8))(v14, v4);
        return;
      }
    }
  }

  v24 = sub_227664DD0();
  sub_22732D770(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51028], v24);
  swift_willThrow();
}

void *static Bookmark.representativeSamples()()
{
  v30 = sub_227662750();
  v21 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = v20 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBC0, &qword_227680908);
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = v20 - v2;
  v27 = sub_227669360();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766C090();
  sub_22732D5AC();
  sub_227125DE8();
  v8 = sub_227663B50();
  v9 = sub_227662630();
  v39 = v8;
  v40[0] = v7;
  v40[1] = v40;
  v40[2] = &v39;
  v38 = v9;
  v40[3] = &v38;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBD0, &qword_227680910);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v32 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v33 = sub_226F5BF60(&qword_27D7BCBD8, &qword_27D7BCBD0, &qword_227680910);
  v34 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v10 = sub_2276638E0();

  v11 = *(v10 + 16);
  if (v11)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_226F20488(0, v11, 0);
    v13 = 0;
    v14 = v31;
    v22 = v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v21 += 2;
    v20[1] = v4 + 32;
    v25 = v4;
    v26 = v1;
    v23 = v11;
    v24 = v10;
    while (v13 < *(v10 + 16))
    {
      sub_22732D640(v22 + *(v1 + 72) * v13, v3);
      v16 = *(v3 + 2);
      v15 = *(v3 + 3);
      v17 = v3[32];
      (*v21)(v29, &v3[*(v28 + 64)], v30);

      sub_226EB396C(v16, v15, v17);
      sub_227669340();
      sub_22732D6B0(v3);
      v31 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_226F20488((v18 > 1), v19 + 1, 1);
        v14 = v31;
      }

      ++v13;
      *(v14 + 16) = v19 + 1;
      result = (*(v25 + 32))(v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19, v6, v27);
      v10 = v24;
      v1 = v26;
      if (v23 == v13)
      {

        return v14;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_22732D5AC()
{
  result = qword_27D7BCBC8;
  if (!qword_27D7BCBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCBC8);
  }

  return result;
}

uint64_t sub_22732D640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBC0, &qword_227680908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22732D6B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBC0, &qword_227680908);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22732D718(uint64_t a1)
{
  result = sub_22732D770(&qword_2813A54F8, MEMORY[0x277D53BA0], &protocol conformance descriptor for Bookmark);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22732D770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22732D7B8(void *a1)
{
  v13[0] = sub_227662750();
  v2 = *(v13[0] - 8);
  MEMORY[0x28223BE20](v13[0]);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227669350();
  v5 = sub_22766BFD0();

  [a1 setReferenceIdentifier_];

  v6 = sub_227669320();
  v8 = v7;
  v13[3] = v6;
  v13[4] = v7;
  v10 = v9 & 1;
  v14 = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBE0, &unk_22768AE50);
  sub_227663AD0();
  v11 = sub_22766BFD0();
  sub_226EB2DFC(v6, v8, v10);

  [a1 setReferenceType_];

  sub_227669330();
  v12 = sub_2276626A0();
  (*(v2 + 8))(v4, v13[0]);
  [a1 setDateBookmarked_];
}

uint64_t sub_22732D978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBF0, &qword_227680968);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_227664E50();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227665690();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227665B50();
  if (v11 & 1) != 0 && (v9 = sub_227665AF0(), (v12) && (v20[9] = v9, v9 = sub_227665B20(), (v13) && (v20[7] = v9, v9 = sub_227665B40(), (v14))
  {
    v20[6] = v9;
    v15 = sub_227665B30();
    v20[4] = v16;
    v20[5] = v15;
    sub_227665B70();
    sub_2275E3924(a1, v8);
    sub_22732E268(v5);
    v20[3] = sub_227665B60();
    v20[2] = sub_227665B10();
    v20[1] = sub_227665AE0();
    sub_227665B80();
    sub_227665B00();
    sub_227665B90();
    return sub_227666240();
  }

  else
  {
    sub_226EB2DFC(v9, v10, 0);
    v18 = sub_2276639E0();
    sub_22732E210();
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D50228], v18);
    return swift_willThrow();
  }
}

char *sub_22732DBF8(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v35 = sub_22766B390();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBE8, &qword_227680960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_227666250();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v44 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = &v28 - v11;
  v12 = sub_227665BA0();
  MEMORY[0x28223BE20](v12);
  v46 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(v13 + 16);
  v17 = v13 + 16;
  v19 = a2 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
  v42 = *(v17 + 56);
  v43 = v18;
  v32 = v3 + 8;
  v40 = (v17 - 8);
  v41 = (v8 + 56);
  v39 = (v8 + 48);
  v30 = v8;
  v38 = (v8 + 32);
  v45 = MEMORY[0x277D84F90];
  *&v14 = 136446210;
  v28 = v14;
  v20 = v29;
  v36 = v17;
  v37 = v12;
  v33 = v7;
  v34 = v6;
  v18(v46, v19, v12);
  while (1)
  {
    sub_22732D978(v20);
    (*v41)(v6, 0, 1, v7);
    (*v40)(v46, v12);
    if ((*v39)(v6, 1, v7) == 1)
    {
      sub_22732E1A8(v6);
    }

    else
    {
      v21 = *v38;
      v22 = v31;
      (*v38)(v31, v6, v7);
      v21(v44, v22, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_2273A6AF8(0, *(v45 + 2) + 1, 1, v45);
      }

      v24 = *(v45 + 2);
      v23 = *(v45 + 3);
      if (v24 >= v23 >> 1)
      {
        v45 = sub_2273A6AF8((v23 > 1), v24 + 1, 1, v45);
      }

      v25 = v44;
      v26 = v45;
      *(v45 + 2) = v24 + 1;
      v21(&v26[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24], v25, v7);
      v12 = v37;
    }

    v19 += v42;
    if (!--v16)
    {
      break;
    }

    v43(v46, v19, v12);
  }

  return v45;
}

uint64_t sub_22732E1A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBE8, &qword_227680960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22732E210()
{
  result = qword_27D7BCBF8;
  if (!qword_27D7BCBF8)
  {
    sub_2276639E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCBF8);
  }

  return result;
}

uint64_t sub_22732E268(uint64_t a1)
{
  v2 = sub_227664E50();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22732E2C4()
{
  v48 = sub_227662750();
  v1 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_modalityIdentifier);
  v8 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_modalityIdentifier + 8);
  sub_22732FF5C(v7, v8);
  v10 = v9;
  v11 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_planCompletedWorkoutCount);
  v46 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_planTotalWorkoutCount);
  v47 = v11;
  v12 = sub_22732EBF4();
  v13 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_HKWorkoutIdentifier + 8);
  v44 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_HKWorkoutIdentifier);
  v45 = v12;

  v14 = sub_2273301D8();
  v15 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_isCompletingProgram);
  v42 = v14;
  v43 = v15;
  v16 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_isGuidedSession);
  v41 = sub_227330838();
  v40 = sub_2276679E0();

  v39 = sub_2273311D4(v7, v8, v16);
  v38 = sub_22732EA20();
  v37 = sub_227330D3C(v7, v8, v16);
  sub_22732E6E8(v6);
  sub_227664510();
  v18 = v17;
  v19 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_sessionEnergyBurned);
  v20 = sub_2276644D0();
  v35 = v21;
  v36 = v20;
  sub_227664520();
  v22 = type metadata accessor for AchievementEnvironment(0);
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_bestEnergyBurnedOfWorkoutModality] = v10;
  v24 = v46;
  *&v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_currentPlanCompletedNumberOfWorkouts] = v47;
  *&v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_currentPlanTotalNumberOfWorkouts] = v24;
  v25 = v44;
  *&v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_currentWeeklyStreak] = v45;
  v26 = &v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_HKWorkoutIdentifier];
  *v26 = v25;
  v26[1] = v13;
  v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_isSessionCompletingPlan] = v42 & 1;
  v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_isSessionCompletingProgram] = v43;
  v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_isSessionGuided] = v16;
  v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_isSessionParticipatingInPlan] = v41 & 1;
  v27 = v39;
  *&v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_longestWeeklyStreak] = v40;
  v28 = &v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_modalityIdentifier];
  *v28 = v7;
  v28[1] = v8;
  *&v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_numberOfGuidedWorkoutsOver5MinutesForModalities] = v27;
  v29 = v37;
  *&v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_numberOfWorkoutsOver5Minutes] = v38;
  *&v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_numberOfWorkoutsOver5MinutesForModalities] = v29;
  sub_226E93170(v6, &v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_planCompletionDate], &qword_27D7B9690, qword_227670B50);
  *&v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionDuration] = v18;
  *&v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionEnergyBurned] = v19;
  v30 = &v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionIdentifier];
  v31 = v35;
  *v30 = v36;
  v30[1] = v31;
  v32 = v48;
  (*(v1 + 16))(&v23[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionStartDate], v3, v48);
  v49.receiver = v23;
  v49.super_class = v22;
  v33 = objc_msgSendSuper2(&v49, sel_init);
  (*(v1 + 8))(v3, v32);
  sub_226E97D1C(v6, &qword_27D7B9690, qword_227670B50);
  return v33;
}

uint64_t sub_22732E6E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22766B390();
  v14[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  v7 = sub_2276638D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226E93170(v1 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_workoutPlan, v6, &unk_27D7BB920, &unk_227672480);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &unk_27D7BB920, &unk_227672480);
    v11 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_227663870();
    (*(v8 + 8))(v10, v7);
    v11 = 0;
  }

  v12 = sub_227662750();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t sub_22732EA20()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A610();

  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = sub_2276679F0();

    _os_log_impl(&dword_226E8E000, v5, v6, "[AchievementEnvironmentProvider] Existing workout count: %ld", v7, 0xCu);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  else
  {
  }

  (*(v2 + 8))(v4, v1);
  if (*(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsDurationThreshold) != 1 || *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsCompletionThreshold) != 1)
  {
    return sub_2276679F0();
  }

  v8 = sub_2276679F0();
  v9 = __OFADD__(v8, 1);
  result = v8 + 1;
  if (v9)
  {
    __break(1u);
    return sub_2276679F0();
  }

  return result;
}

uint64_t sub_22732EBF4()
{
  v1 = v0;
  v2 = sub_227662190();
  v139 = *(v2 - 8);
  v140 = v2;
  MEMORY[0x28223BE20](v2);
  v141 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v152 = v4;
  v153 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v128 - v9;
  MEMORY[0x28223BE20](v11);
  v137 = &v128 - v12;
  MEMORY[0x28223BE20](v13);
  v136 = &v128 - v14;
  MEMORY[0x28223BE20](v15);
  v138 = &v128 - v16;
  MEMORY[0x28223BE20](v17);
  v142 = &v128 - v18;
  v146 = sub_227662930();
  v150 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v20 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v21 - 8);
  v145 = &v128 - v22;
  v147 = sub_227662750();
  v23 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v135 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v134 = &v128 - v26;
  MEMORY[0x28223BE20](v27);
  v151 = &v128 - v28;
  MEMORY[0x28223BE20](v29);
  v149 = &v128 - v30;
  MEMORY[0x28223BE20](v31);
  v148 = &v128 - v32;
  v33 = sub_227662940();
  v34 = *(v33 - 8);
  v143 = v33;
  v144 = v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  MEMORY[0x28223BE20](v37);
  v39 = &v128 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v128 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v128 - v44;
  v46 = sub_2276667B0();
  v154 = *(v46 - 8);
  v155 = v46;
  MEMORY[0x28223BE20](v46);
  if (*(v1 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsDurationThreshold) != 1 || *(v1 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsCompletionThreshold) != 1)
  {
    sub_22766A610();

    v54 = sub_22766B380();
    v55 = sub_22766C8B0();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v156[0] = v57;
      *v56 = 136315138;
      sub_2276679D0();
      v58 = sub_22766CB80();
      v60 = v59;
      sub_226E97D1C(v42, &qword_27D7B8E40, &unk_227685580);
      v61 = sub_226E97AE8(v58, v60, v156);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_226E8E000, v54, v55, "[AchievementEnvironmentProvider] Session didn't meet the threshold, returning current streak %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AA9A450](v57, -1, -1);
      MEMORY[0x22AA9A450](v56, -1, -1);
    }

    (*(v153 + 8))(v7, v152);
    sub_2276679D0();
    v62 = v154;
    v63 = v155;
    if ((*(v154 + 48))(v39, 1, v155) == 1)
    {
      sub_226E97D1C(v39, &qword_27D7B8E40, &unk_227685580);
      return 0;
    }

    v64 = sub_2276667A0();
    (*(v62 + 8))(v39, v63);
    return v64;
  }

  v133 = &v128 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v23;
  sub_2276679D0();
  v48 = v154;
  v49 = v155;
  if ((*(v154 + 48))(v45, 1, v155) == 1)
  {
    sub_226E97D1C(v45, &qword_27D7B8E40, &unk_227685580);
    sub_22766A610();
    v50 = sub_22766B380();
    v51 = sub_22766C8B0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_226E8E000, v50, v51, "[AchievementEnvironmentProvider] There was no current streak, returning current streak of 1", v52, 2u);
      MEMORY[0x22AA9A450](v52, -1, -1);
    }

    (*(v153 + 8))(v10, v152);
    return 1;
  }

  (*(v48 + 32))(v133, v45, v49);
  v65 = [objc_opt_self() currentCalendar];
  v66 = v36;
  sub_2276628C0();

  v131 = sub_2276667A0();
  v67 = v148;
  sub_227666770();
  v68 = v149;
  sub_227664480();
  v69 = v150;
  v70 = *(v150 + 13);
  v130 = *MEMORY[0x277CC9968];
  v71 = v146;
  v129 = v70;
  v70(v20);
  v72 = v145;
  sub_2276628F0();
  v128 = *(v69 + 1);
  v128(v20, v71);
  v73 = v132;
  v74 = v147;
  if ((*(v132 + 6))(v72, 1, v147) == 1)
  {
    v75 = *(v73 + 1);
    v75(v68, v74);
    v75(v67, v74);
    (*(v144 + 8))(v66, v143);
    (*(v154 + 8))(v133, v155);
    sub_226E97D1C(v72, &qword_27D7B9690, qword_227670B50);
    return v131;
  }

  (*(v73 + 4))(v151, v72, v74);
  v129(v20, v130, v71);
  v76 = sub_227662910();
  v128(v20, v71);
  if (v76)
  {
    v77 = v142;
    sub_22766A610();
    v78 = sub_22766B380();
    v79 = sub_22766C8B0();
    v80 = os_log_type_enabled(v78, v79);
    v81 = v131;
    if (v80)
    {
      v82 = swift_slowAlloc();
      *v82 = 134217984;
      *(v82 + 4) = v81;
      _os_log_impl(&dword_226E8E000, v78, v79, "[AchievementEnvironmentProvider] This session is in the same week as the current streak, returning streakLength of %ld", v82, 0xCu);
      MEMORY[0x22AA9A450](v82, -1, -1);
    }

    (*(v153 + 8))(v77, v152);
    v83 = *(v132 + 1);
    v83(v151, v74);
    v83(v68, v74);
    v83(v67, v74);
    (*(v144 + 8))(v66, v143);
    (*(v154 + 8))(v133, v155);
    return v81;
  }

  v129(v20, v130, v71);
  v84 = sub_227662910();
  v128(v20, v71);
  if ((v84 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB368, &qword_22767C980);
    v95 = (v150[80] + 32) & ~v150[80];
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_227670CD0;
    v129((v96 + v95), v130, v71);
    sub_226F4CE68(v96);
    swift_setDeallocating();
    v128((v96 + v95), v71);
    swift_deallocClassInstance();
    v91 = v141;
    sub_2276628A0();

    v97 = sub_227662120();
    if ((v98 & 1) == 0 && v97 >= 14)
    {
      v99 = v136;
      sub_22766A610();
      v100 = sub_22766B380();
      v101 = sub_22766C8B0();
      v102 = os_log_type_enabled(v100, v101);
      v103 = v155;
      v104 = v151;
      if (v102)
      {
        v105 = v99;
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&dword_226E8E000, v100, v101, "[AchievementEnvironmentProvider] Starting a new streak", v106, 2u);
        MEMORY[0x22AA9A450](v106, -1, -1);

        (*(v153 + 8))(v105, v152);
        (*(v139 + 8))(v91, v140);
        v107 = *(v132 + 1);
        v107(v104, v74);
        v107(v68, v74);
        v107(v67, v74);
        (*(v144 + 8))(v66, v143);
        (*(v154 + 8))(v133, v155);
      }

      else
      {

        (*(v153 + 8))(v99, v152);
        (*(v139 + 8))(v91, v140);
        v127 = *(v132 + 1);
        v127(v104, v74);
        v127(v68, v74);
        v127(v67, v74);
        (*(v144 + 8))(v66, v143);
        (*(v154 + 8))(v133, v103);
      }

      return 1;
    }

    v108 = v137;
    sub_22766A610();
    v109 = v68;
    v68 = v132;
    v110 = *(v132 + 2);
    v90 = v134;
    v110(v134, v109, v74);
    v111 = v135;
    v110(v135, v67, v74);
    v94 = sub_22766B380();
    v112 = sub_22766C890();
    if (!os_log_type_enabled(v94, v112))
    {
      goto LABEL_37;
    }

    v113 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v156[0] = v146;
    *v113 = 136315650;
    sub_227331C00();
    v150 = v66;
    LODWORD(v145) = v112;
    v114 = sub_22766D140();
    v116 = v115;
    v117 = *(v68 + 1);
    v117(v90, v74);
    v118 = sub_226E97AE8(v114, v116, v156);

    *(v113 + 4) = v118;
    *(v113 + 12) = 2080;
    v119 = sub_22766D140();
    v121 = v120;
    v117(v111, v74);
    v122 = sub_226E97AE8(v119, v121, v156);

    *(v113 + 14) = v122;
    *(v113 + 22) = 2048;
    v64 = v131;
    *(v113 + 24) = v131;
    _os_log_impl(&dword_226E8E000, v94, v145, "[AchievementEnvironmentProvider] Invalid date interval found between session start of week (%s and first weekday of streak end (%s, returning current streak length %ld", v113, 0x20u);
    v123 = v146;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v123, -1, -1);
    MEMORY[0x22AA9A450](v113, -1, -1);

    (*(v153 + 8))(v137, v152);
    (*(v139 + 8))(v141, v140);
    v117(v151, v74);
    v117(v149, v74);
    v117(v148, v74);
    (*(v144 + 8))(v150, v143);
    (*(v154 + 8))(v133, v155);
    return v64;
  }

  v85 = v138;
  sub_22766A610();
  v86 = sub_22766B380();
  v87 = sub_22766C8B0();
  v88 = os_log_type_enabled(v86, v87);
  v89 = v154;
  v90 = v155;
  if (v88)
  {
    result = swift_slowAlloc();
    *result = 134217984;
    v91 = v131 + 1;
    if (__OFADD__(v131, 1))
    {
      __break(1u);
      return result;
    }

    *(result + 4) = v91;
    v92 = v87;
    v93 = result;
    _os_log_impl(&dword_226E8E000, v86, v92, "[AchievementEnvironmentProvider] This session is in the week following the most recent streak end, returning streakLength of %ld", result, 0xCu);
    MEMORY[0x22AA9A450](v93, -1, -1);

    v94 = 0;
  }

  else
  {

    v91 = v131 + 1;
    v94 = __OFADD__(v131, 1);
  }

  (*(v153 + 8))(v85, v152);
  v111 = v132 + 8;
  v124 = *(v132 + 1);
  v124(v151, v74);
  v124(v68, v74);
  v124(v67, v74);
  (*(v144 + 8))(v66, v143);
  v125 = *(v89 + 8);
  v108 = (v89 + 8);
  v125(v133, v90);
  result = v91;
  if (v94)
  {
    __break(1u);
LABEL_37:

    v126 = *(v68 + 1);
    v126(v111, v74);
    v126(v90, v74);
    (*(v153 + 8))(v108, v152);
    (*(v139 + 8))(v91, v140);
    v126(v151, v74);
    v126(v149, v74);
    v126(v67, v74);
    (*(v144 + 8))(v66, v143);
    (*(v154 + 8))(v133, v155);
    return v131;
  }

  return result;
}

uint64_t sub_22732FF5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227667A00();
  v9 = 0;
  if (*(v8 + 16) && (v10 = sub_226E92000(a1, a2), (v11 & 1) != 0))
  {
    v12 = 0;
    v9 = *(*(v8 + 56) + 8 * v10);
  }

  else
  {
    v12 = 1;
  }

  sub_22766A610();

  v13 = sub_22766B380();
  v14 = sub_22766C8B0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22[0] = v4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_226E97AE8(a1, a2, &v24);
    *(v16 + 12) = 2080;
    v22[1] = v9;
    v23 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB430, &unk_22767A9A0);
    v18 = sub_22766CB80();
    v20 = sub_226E97AE8(v18, v19, &v24);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_226E8E000, v13, v14, "[AchievementEnvironmentProvider] Best energy burned for modality identifier %s: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    return (*(v5 + 8))(v7, v22[0]);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2273301D8()
{
  v1 = v0;
  v52 = sub_22766B390();
  v2 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v44 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_2276638D0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226E93170(v1 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_workoutPlan, v12, &unk_27D7BB920, &unk_227672480);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_226E97D1C(v12, &unk_27D7BB920, &unk_227672480);
LABEL_8:
    sub_22766A610();
    v27 = sub_22766B380();
    v28 = sub_22766C890();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_226E8E000, v27, v28, "[AchievementEnvironmentProvider] Workout Plan is nil or is not completed, returning false for isSessionCompletingPlan", v29, 2u);
      MEMORY[0x22AA9A450](v29, -1, -1);
    }

    (*(v2 + 8))(v4, v52);
    goto LABEL_11;
  }

  (*(v14 + 32))(v16, v12, v13);
  v54 = sub_227663850();
  v55 = v17 & 1;
  v53 = 1;
  sub_226FAF720();
  sub_226FAF774();
  result = sub_227663B30();
  if ((result & 1) == 0)
  {
    (*(v14 + 8))(v16, v13);
    goto LABEL_8;
  }

  v19 = *(v1 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_planTotalWorkoutCount);
  v50 = *(v1 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_planCompletedWorkoutCount);
  if (!__OFSUB__(v19, v50))
  {
    v48 = sub_227667A50();
    v21 = v20;
    sub_22766A610();

    v22 = sub_22766B380();
    v23 = sub_22766C8B0();
    v24 = os_log_type_enabled(v22, v23);
    v49 = v21;
    v47 = v19;
    if (v24)
    {
      v25 = swift_slowAlloc();
      *v25 = 134218240;
      *(v25 + 4) = v19;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v50;

      _os_log_impl(&dword_226E8E000, v22, v23, "[Plan Completion] totalWorkoutCount: %ld, completedWorkoutCount: %ld", v25, 0x16u);
      v26 = v25;
      v21 = v49;
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    else
    {
    }

    v31 = v51;
    v32 = v52;
    v46 = *(v2 + 8);
    v46(v9, v52);
    sub_22766A610();

    v33 = sub_22766B380();
    v34 = sub_22766C8B0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v21;
      v36 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v54 = v45;
      *v36 = 136315394;
      *(v36 + 4) = sub_226E97AE8(v48, v35, &v54);
      *(v36 + 12) = 2080;
      v37 = sub_2276644D0();
      v39 = sub_226E97AE8(v37, v38, &v54);

      *(v36 + 14) = v39;
      _os_log_impl(&dword_226E8E000, v33, v34, "[Plan Completion] completing session identifier: %s, session identifier %s", v36, 0x16u);
      v40 = v45;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v40, -1, -1);
      MEMORY[0x22AA9A450](v36, -1, -1);

      v41 = v51;
      v42 = v52;
    }

    else
    {

      v41 = v31;
      v42 = v32;
    }

    v46(v41, v42);
    if (v47 == v50)
    {
      if (v48 == sub_2276644D0() && v49 == v43)
      {
        v30 = 1;
      }

      else
      {
        v30 = sub_22766D190();
      }

      (*(v14 + 8))(v16, v13);
      return v30 & 1;
    }

    (*(v14 + 8))(v16, v13);

LABEL_11:
    v30 = 0;
    return v30 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_227330838()
{
  v1 = v0;
  v39 = sub_22766B390();
  v2 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v4 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v36[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36[-v9];
  v11 = sub_2276638D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226E93170(v1 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_workoutPlan, v10, &unk_27D7BB920, &unk_227672480);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_226E97D1C(v10, &unk_27D7BB920, &unk_227672480);
LABEL_10:
    sub_22766A610();
    v32 = sub_22766B380();
    v33 = sub_22766C890();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_226E8E000, v32, v33, "[AchievementEnvironmentProvider] Workout Plan is nil or is not completed, returning false for isSessionParticipatingInPlan", v34, 2u);
      MEMORY[0x22AA9A450](v34, -1, -1);
    }

    (*(v2 + 8))(v4, v39);
    v31 = 0;
    return v31 & 1;
  }

  (*(v12 + 32))(v14, v10, v11);
  v41 = sub_227663850();
  v42 = v15 & 1;
  v40 = 1;
  sub_226FAF720();
  sub_226FAF774();
  if ((sub_227663B30() & 1) == 0)
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_10;
  }

  sub_22766A610();

  v16 = sub_22766B380();
  v17 = sub_22766C8B0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v18 = 136315394;
    v19 = sub_2276644D0();
    v21 = sub_226E97AE8(v19, v20, &v41);
    v37 = v17;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = sub_227667A30();
    v25 = sub_226E97AE8(v23, v24, &v41);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_226E8E000, v16, v37, "[Plan Participation] session identifier: %s, first completed session identifier: %s", v18, 0x16u);
    v26 = v38;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v26, -1, -1);
    MEMORY[0x22AA9A450](v18, -1, -1);
  }

  (*(v2 + 8))(v7, v39);
  v27 = sub_2276644D0();
  v29 = v28;
  if (v27 == sub_227667A30() && v29 == v30)
  {
    v31 = 1;
  }

  else
  {
    v31 = sub_22766D190();
  }

  (*(v12 + 8))(v14, v11);
  return v31 & 1;
}

void *sub_227330D3C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v50 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v14 = sub_227667A10();
  sub_22766A610();

  v15 = sub_22766B380();
  v16 = sub_22766C8B0();

  v17 = os_log_type_enabled(v15, v16);
  v49 = v10;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v51 = v8;
    v19 = v18;
    v20 = swift_slowAlloc();
    v48 = v5;
    v5 = v20;
    v52 = v20;
    *v19 = 136315138;
    v21 = sub_22766BEC0();
    v47 = v4;
    v23 = sub_226E97AE8(v21, v22, &v52);
    v4 = v47;

    *(v19 + 4) = v23;
    _os_log_impl(&dword_226E8E000, v15, v16, "[AchievementEnvironmentProvider] Existing workout counts per modality: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    v24 = v5;
    LOBYTE(v5) = v48;
    MEMORY[0x22AA9A450](v24, -1, -1);
    v25 = v19;
    v8 = v51;
    MEMORY[0x22AA9A450](v25, -1, -1);
  }

  v26 = *(v8 + 8);
  v26(v13, v7);
  if (*(v4 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsDurationThreshold) != 1 || *(v4 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsCompletionThreshold) != 1 || (v5 & 1) != 0)
  {
    return v14;
  }

  v27 = *(v14 + 16);
  v51 = v8;
  if (v27)
  {
    v28 = v50;
    v29 = sub_226E92000(a1, v50);
    if (v30)
    {
      v31 = *(*(v14 + 56) + 8 * v29);
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
    v28 = v50;
  }

  v32 = v49;
  sub_22766A610();

  v33 = sub_22766B380();
  v34 = sub_22766C8B0();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v50 = v31;
    v36 = v35;
    v37 = a1;
    v38 = swift_slowAlloc();
    v52 = v38;
    *v36 = 136315394;
    *(v36 + 4) = sub_226E97AE8(v37, v28, &v52);
    *(v36 + 12) = 2048;
    *(v36 + 14) = v50;
    _os_log_impl(&dword_226E8E000, v33, v34, "[AchievementEnvironmentProvider] Current count for modality identifier %s: %ld", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v39 = v38;
    a1 = v37;
    MEMORY[0x22AA9A450](v39, -1, -1);
    v40 = v36;
    v31 = v50;
    MEMORY[0x22AA9A450](v40, -1, -1);
  }

  v26(v32, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCC78, &qword_2276809C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = a1;
  v42 = inited + 32;
  *(inited + 40) = v28;
  if (!__OFADD__(v31, 1))
  {
    *(inited + 48) = v31 + 1;
    v43 = inited;

    v44 = sub_2271481B8(v43);
    swift_setDeallocating();
    sub_226E97D1C(v42, &qword_27D7BCC80, &qword_2276809C8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v14;
    sub_22733198C(v44, sub_227331974, 0, isUniquelyReferenced_nonNull_native, &v52);

    return v52;
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_2273311D4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v50 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v14 = sub_227667A40();
  sub_22766A610();

  v15 = sub_22766B380();
  v16 = sub_22766C8B0();

  v17 = os_log_type_enabled(v15, v16);
  v49 = v10;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v51 = v8;
    v19 = v18;
    v20 = swift_slowAlloc();
    v48 = v5;
    v5 = v20;
    v52 = v20;
    *v19 = 136315138;
    v21 = sub_22766BEC0();
    v47 = v4;
    v23 = sub_226E97AE8(v21, v22, &v52);
    v4 = v47;

    *(v19 + 4) = v23;
    _os_log_impl(&dword_226E8E000, v15, v16, "[AchievementEnvironmentProvider] Existing workout counts per guided modality: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    v24 = v5;
    LOBYTE(v5) = v48;
    MEMORY[0x22AA9A450](v24, -1, -1);
    v25 = v19;
    v8 = v51;
    MEMORY[0x22AA9A450](v25, -1, -1);
  }

  v26 = *(v8 + 8);
  v26(v13, v7);
  if (*(v4 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsDurationThreshold) != 1 || *(v4 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsCompletionThreshold) != 1 || (v5 & 1) == 0)
  {
    return v14;
  }

  v27 = *(v14 + 16);
  v51 = v8;
  if (v27)
  {
    v28 = v50;
    v29 = sub_226E92000(a1, v50);
    if (v30)
    {
      v31 = *(*(v14 + 56) + 8 * v29);
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
    v28 = v50;
  }

  v32 = v49;
  sub_22766A610();

  v33 = sub_22766B380();
  v34 = sub_22766C8B0();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v50 = v31;
    v36 = v35;
    v37 = a1;
    v38 = swift_slowAlloc();
    v52 = v38;
    *v36 = 136315394;
    *(v36 + 4) = sub_226E97AE8(v37, v28, &v52);
    *(v36 + 12) = 2048;
    *(v36 + 14) = v50;
    _os_log_impl(&dword_226E8E000, v33, v34, "[AchievementEnvironmentProvider] Current count for modality identifier %s: %ld", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v39 = v38;
    a1 = v37;
    MEMORY[0x22AA9A450](v39, -1, -1);
    v40 = v36;
    v31 = v50;
    MEMORY[0x22AA9A450](v40, -1, -1);
  }

  v26(v32, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCC78, &qword_2276809C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = a1;
  v42 = inited + 32;
  *(inited + 40) = v28;
  if (!__OFADD__(v31, 1))
  {
    *(inited + 48) = v31 + 1;
    v43 = inited;

    v44 = sub_2271481B8(v43);
    swift_setDeallocating();
    sub_226E97D1C(v42, &qword_27D7BCC80, &qword_2276809C8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v14;
    sub_22733198C(v44, sub_227331974, 0, isUniquelyReferenced_nonNull_native, &v52);

    return v52;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22733166C()
{
  sub_226E97D1C(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_workoutPlan, &unk_27D7BB920, &unk_227672480);
  v1 = OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_cache;
  v2 = sub_227667A70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_session;
  v4 = sub_227664530();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AchievementEnvironmentProvider(uint64_t a1)
{
  result = qword_27D7BCC60;
  if (!qword_27D7BCC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2273317E4(uint64_t a1)
{
  sub_22733191C(319);
  if (v1 <= 0x3F)
  {
    sub_227667A70();
    if (v2 <= 0x3F)
    {
      sub_227664530();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22733191C(uint64_t a1)
{
  if (!qword_27D7BCC70)
  {
    sub_2276638D0();
    v1 = sub_22766CB90();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7BCC70);
    }
  }
}

double sub_227331974@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return result;
}

uint64_t sub_22733198C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v36 = v6;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;

    (a2)(&v40, v43);

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *v44;
    v23 = sub_226E92000(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v39 & 1) == 0)
      {
        sub_226FF016C();
      }
    }

    else
    {
      sub_226FE2228(v26, v39 & 1);
      v28 = sub_226E92000(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v44;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
    v6 = v36;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_226EBB21C(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22766D220();
  __break(1u);
  return result;
}

unint64_t sub_227331C00()
{
  result = qword_28139BDB0;
  if (!qword_28139BDB0)
  {
    sub_227662750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BDB0);
  }

  return result;
}

void sub_227331C58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9750, &qword_227674BB0);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_226F04970(&v22, v24);
        sub_226F04970(v24, v25);
        sub_226F04970(v25, &v23);
        v16 = sub_226E92000(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          sub_226F04970(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_226F04970(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_227331EA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9750, &qword_227674BB0);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        sub_226EA1E2C(*(a1 + 56) + 40 * v13, &v29);
        v27 = v16;
        v28 = v15;

        swift_dynamicCast();
        sub_226F04970(&v23, v25);
        sub_226F04970(v25, v26);
        sub_226F04970(v26, &v24);
        v17 = sub_226E92000(v16, v15);
        if (v18)
        {
          v8 = (v2[6] + 16 * v17);
          *v8 = v16;
          v8[1] = v15;
          v9 = v17;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          sub_226F04970(&v24, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          v19 = (v2[6] + 16 * v17);
          *v19 = v16;
          v19[1] = v15;
          sub_226F04970(&v24, (v2[7] + 32 * v17));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_227332110(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99C0, &qword_227674DE8);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_226E97CC0(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_226F04970(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_226F04970(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_226F04970(v31, v32);
    v16 = sub_22766CD80();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_226F04970(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_2273323D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99C0, &qword_227674DE8);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_226EA1E2C(*(a1 + 56) + 40 * v12, v41);
    v39 = v15;
    v40 = v14;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v15;
    v27 = v14;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_226F04970(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_226F04970(v35, v24);
    v16 = sub_22766CD80();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v28;
    *(v10 + 16) = v29;
    *(v10 + 32) = v30;
    sub_226F04970(v24, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_2273326C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9730, &qword_227674B90);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + 16 * (v11 | (v10 << 6)));
        v14 = *v12;
        v13 = v12[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC928, &qword_22767F828);
        swift_dynamicCast();
        v28 = v25;
        v29 = v26;
        v30 = v27;
        v24 = v25;
        v25 = v26;
        *&v26 = v27;
        v15 = sub_226E92000(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          sub_227333460(&v24, v2[7] + 40 * v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          v18 = v2[7] + 40 * v15;
          v19 = v24;
          v20 = v25;
          *(v18 + 32) = v26;
          *v18 = v19;
          *(v18 + 16) = v20;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_227332924(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCC90, &qword_2276809D8);
    v1 = sub_22766D010();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v24 = *(*(a1 + 56) + 16 * v10);
    v22 = v24;
    v12 = v11;
    sub_226F5E0B4(v22, *(&v22 + 1));
    swift_dynamicCast();
    sub_226F04970((v25 + 8), v23);
    sub_226F04970(v23, v25);
    sub_22766C000();
    sub_22766D370();
    sub_22766C100();
    v13 = sub_22766D3F0();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v6 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v6 + 8 * v16);
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v12;
    sub_226F04970(v25, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_227332BD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9750, &qword_227674BB0);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_226F04970(&v22, v24);
        sub_226F04970(v24, v25);
        sub_226F04970(v25, &v23);
        v16 = sub_226E92000(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          sub_226F04970(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_226F04970(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_227332E28(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9750, &qword_227674BB0);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_226F04970(&v22, v24);
        sub_226F04970(v24, v25);
        sub_226F04970(v25, &v23);
        v16 = sub_226E92000(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          sub_226F04970(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_226F04970(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

id sub_227333070()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9480, &unk_227678CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = sub_22766C000();
  *(inited + 40) = v1;
  sub_22766BD00();
  sub_226FB11F0();
  *(inited + 48) = sub_22766D250();
  *(inited + 56) = v2;
  v3 = sub_227148E68(inited);
  swift_setDeallocating();
  sub_2273333F8(inited + 32);
  sub_22766D280();
  v4 = sub_22766D270();
  sub_227332BD0(v3);

  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v6 = sub_22766BFD0();

  v7 = sub_22766BE90();

  v8 = [v5 initWithDomain:v6 code:v4 userInfo:v7];

  return v8;
}

uint64_t sub_2273331E8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCC88, &qword_2276809D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_22766B9A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766B990();
  sub_22766D280();
  sub_22766B980();
  sub_22766D270();
  sub_22766B970();
  sub_22766D250();
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_22766BCE0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2273333F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE670, &unk_227674260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2273334BC()
{
  v0 = sub_2276681F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227666AD0();
  v5 = sub_226F3E6A8(v4);

  v6 = sub_227666AD0();
  v7 = sub_226F3E6A8(v6);

  if (*(v5 + 16) >= *(v7 + 16))
  {
  }

  else
  {
    sub_227333F90(v7, v5);
    v9 = v8;

    if (v9)
    {
      sub_227667240();
      sub_2276681B0();
      return (*(v1 + 8))(v3, v0);
    }
  }

  return result;
}

uint64_t sub_227333698(uint64_t a1, uint64_t a2, uint64_t (*a3)(double), void (*a4)(uint64_t))
{
  v7 = sub_2276681F0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3(v9);
  if (!v12[2])
  {
  }

  v14 = v12[4];
  v13 = v12[5];

  if (!*(a2 + 16))
  {
  }

  v15 = sub_22718C70C(v14, v13, a2);

  if (v15)
  {
    v17 = sub_227667240();
    a4(v17);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_227333810(uint64_t a1)
{
  v1 = sub_227668460();
  v3 = v2;
  if (v1 == sub_227666A90() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22766D190();
  }

  return v5 & 1;
}

uint64_t sub_2273338AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a3;
  v58 = a2;
  v56 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCCA8, &qword_227680A08);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  MEMORY[0x28223BE20](v14);
  v57 = &v53 - v15;
  v16 = sub_2276681F0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227666A50();
  LOBYTE(a5) = sub_22718C70C(v20, v21, a5);

  v22 = 0.0;
  v23 = 0.0;
  if ((a5 & 1) == 0)
  {
    sub_227667240();
    sub_227667E90();
    v25 = v24;
    (*(v17 + 8))(v19, v16);
    v23 = v25 + 0.0;
  }

  v26 = sub_227666AD0();
  v27 = sub_226F3E6A8(v26);

  v28 = a4;
  v29 = sub_227666AD0();
  v30 = sub_226F3E6A8(v29);

  v31 = sub_227035534(v27, v30);

  if (v31)
  {
    sub_227667240();
    sub_227668170();
    v22 = v32;
    (*(v17 + 8))(v19, v16);
  }

  v33 = sub_2273334BC();
  v35 = v34;
  MEMORY[0x28223BE20](v33);
  *(&v53 - 2) = v28;
  v36 = v57;
  sub_227543C0C(sub_227334BCC, v55, v57);
  sub_227334BEC(v36, v13);
  v37 = sub_227668480();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v13, 1, v37) == 1)
  {
    sub_227334C5C(v13);
    v40 = MEMORY[0x277D84FA0];
  }

  else
  {
    v40 = sub_227668470();
    (*(v38 + 8))(v13, v37);
  }

  v41 = v54;
  sub_227334BEC(v57, v54);
  if (v39(v41, 1, v37) == 1)
  {
    sub_227334C5C(v41);
    v42 = MEMORY[0x277D84FA0];
  }

  else
  {
    v42 = sub_227668440();
    (*(v38 + 8))(v41, v37);
  }

  v43 = v58;
  sub_227333640(a1, v42);
  v45 = v44;

  sub_22733366C(a1, v40);
  v47 = v46;

  v48 = sub_22735B0EC(a1, v43 + OBJC_IVAR____TtC15SeymourServices31WorkoutPlanAlternativesProvider_configuration, v45 > 0.0);
  sub_227334C5C(v57);
  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60) + 48);
  v50 = sub_227666B60();
  v51 = v56;
  result = (*(*(v50 - 8) + 16))(v56, a1, v50);
  *(v51 + v49) = v23 + v22 + v35 + v45 + v47 - v48;
  return result;
}

uint64_t sub_227333D80(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_227666B60();
    return a2;
  }

  return result;
}

uint64_t sub_227333E10()
{
  v1 = OBJC_IVAR____TtC15SeymourServices31WorkoutPlanAlternativesProvider_configuration;
  v2 = sub_227667370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanAlternativesProvider(uint64_t a1)
{
  result = qword_27D7BCC98;
  if (!qword_27D7BCC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227333F00(uint64_t a1)
{
  result = sub_227667370();
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

void sub_227333F90(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v20 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            return;
          }

          if (v20 >= v8)
          {
            goto LABEL_22;
          }

          v7 = *(v4 + 8 * v20);
          ++v10;
        }

        while (!v7);
        v10 = v20;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v11 = (*(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v11;
      v12 = v11[1];
      sub_22766D370();

      sub_22766C100();
      v14 = sub_22766D3F0();
      v15 = -1 << *(a1 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v17 = ~v15;
      while (1)
      {
        v18 = (*(a1 + 48) + 16 * v16);
        v19 = *v18 == v13 && v18[1] == v12;
        if (v19 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }
}

uint64_t sub_22733416C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v108 - v12;
  MEMORY[0x28223BE20](v14);
  v123 = &v108 - v15;
  v16 = sub_227666B60();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v125 = &v108 - v19;
  MEMORY[0x28223BE20](v20);
  v23 = *(a2 + 16);
  v124 = v8;
  if (!v23)
  {
    a3 = sub_2273FC4A8(a3, a1);
    v125 = v39;
    v17 = v40;
    v42 = v41;

    sub_22766A630();
    swift_unknownObjectRetain();
    v43 = sub_22766B380();
    v44 = sub_22766C870();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v43, v44))
    {
      v3 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v126[0] = v45;
      *v3 = 136315138;
      v46 = sub_22766CC30();
      v48 = sub_226E97AE8(v46, v47, v126);
      v123 = v17;
      v49 = v7;
      v7 = v48;

      *(v3 + 4) = v7;
      _os_log_impl(&dword_226E8E000, v43, v44, "No previously completed workouts, returning alternatives=%s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AA9A450](v45, -1, -1);
      MEMORY[0x22AA9A450](v3, -1, -1);

      v50 = v49;
      v17 = v123;
      (*(v124 + 8))(v10, v50);
    }

    else
    {

      (*(v124 + 8))(v10, v7);
    }

    v95 = v42 >> 1;
    if (v17 == (v42 >> 1))
    {
      goto LABEL_31;
    }

    if (v42)
    {
      sub_22766D1D0();
      swift_unknownObjectRetain_n();
      v103 = swift_dynamicCastClass();
      if (!v103)
      {
        swift_unknownObjectRelease();
        v103 = MEMORY[0x277D84F90];
      }

      v104 = *(v103 + 16);

      if (__OFSUB__(v95, v17))
      {
        goto LABEL_51;
      }

      if (v104 == v95 - v17)
      {
LABEL_45:
        v78 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v78)
        {
          return v78;
        }

        v78 = MEMORY[0x277D84F90];
LABEL_47:
        swift_unknownObjectRelease();
        return v78;
      }

      swift_unknownObjectRelease_n();
    }

    v96 = a3;
    v97 = v125;
    v98 = v17;
    v99 = v42;
LABEL_34:
    sub_22726CD44(v96, v97, v98, v99);
    v78 = v101;
    goto LABEL_47;
  }

  if (__OFSUB__(a3, 1))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v114 = v22;
  v119 = &v108 - v21;
  v120 = v7;
  v113 = a3 - 1;
  v121 = sub_227333D80(a3 - 1, a1);
  v25 = v24;
  v7 = v26;
  v3 = v27 >> 1;

  if (v7 == v3)
  {
LABEL_4:
    swift_unknownObjectRelease();
    a3 = sub_2273FC4A8(a3, a1);
    v7 = v28;
    v17 = v29;
    v3 = v30;

    sub_22766A630();
    swift_unknownObjectRetain();
    v31 = sub_22766B380();
    v32 = sub_22766C870();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v125 = v13;
      v34 = v33;
      v35 = swift_slowAlloc();
      v126[0] = v35;
      *v34 = 136315138;
      v36 = sub_22766CC30();
      v38 = sub_226E97AE8(v36, v37, v126);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_226E8E000, v31, v32, "Unable to find new workout alternative, returning alternatives=%s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9A450](v35, -1, -1);
      MEMORY[0x22AA9A450](v34, -1, -1);

      (*(v124 + 8))(v125, v120);
    }

    else
    {

      (*(v124 + 8))(v13, v120);
    }

    v100 = v3 >> 1;
    if (v17 == (v3 >> 1))
    {
LABEL_31:
      swift_unknownObjectRelease();
      return 0;
    }

    if ((v3 & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_22766D1D0();
    swift_unknownObjectRetain_n();
    v105 = swift_dynamicCastClass();
    if (!v105)
    {
      swift_unknownObjectRelease();
      v105 = MEMORY[0x277D84F90];
    }

    v106 = *(v105 + 16);

    if (!__OFSUB__(v100, v17))
    {
      if (v106 == v100 - v17)
      {
        goto LABEL_45;
      }

LABEL_53:
      swift_unknownObjectRelease_n();
LABEL_33:
      v96 = a3;
      v97 = v7;
      v98 = v17;
      v99 = v3;
      goto LABEL_34;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v122 = v17 + 16;
  v51 = a2 + 56;
  v117 = a1;
  v118 = (v17 + 8);
  if (v7 <= v3)
  {
    v52 = v3;
  }

  else
  {
    v52 = v7;
  }

  v112 = a3;
  v116 = v17;
  v111 = v25;
  v110 = v3;
  v109 = v52;
  while (1)
  {
    if (v7 == v52)
    {
      __break(1u);
      goto LABEL_50;
    }

    v53 = v13;
    v54 = v25 + *(v17 + 9) * v7;
    v55 = v16;
    v115 = *(v17 + 2);
    v115(v125, v54, v16);
    v56 = sub_227666A50();
    v58 = v57;
    if (!*(a2 + 16))
    {
      break;
    }

    v59 = v56;
    sub_22766D370();
    sub_22766C100();
    v60 = sub_22766D3F0();
    v61 = -1 << *(a2 + 32);
    v62 = v60 & ~v61;
    if (((*(v51 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
    {
      break;
    }

    ++v7;
    v63 = ~v61;
    while (1)
    {
      v64 = (*(a2 + 48) + 16 * v62);
      v65 = *v64 == v59 && v64[1] == v58;
      if (v65 || (sub_22766D190() & 1) != 0)
      {
        break;
      }

      v62 = (v62 + 1) & v63;
      if (((*(v51 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v16 = v55;
    (*v118)(v125, v55);

    v3 = v110;
    v13 = v53;
    v17 = v116;
    a1 = v117;
    a3 = v112;
    v25 = v111;
    v52 = v109;
    if (v7 == v110)
    {
      goto LABEL_4;
    }
  }

LABEL_23:

  swift_unknownObjectRelease();
  v66 = v116 + 32;
  v67 = v119;
  (*(v116 + 4))(v119, v125, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E00, &qword_227679AB0);
  v68 = (v66[48] + 32) & ~v66[48];
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_227670CD0;
  v70 = v115;
  v115((v69 + v68), v67, v55);
  v71 = sub_2273FC4A8(v113, v117);
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v126[0] = v69;

  sub_227460C6C(v71, v73, v75, v77);
  v78 = v126[0];
  v79 = v123;
  sub_22766A630();
  v80 = v114;
  v81 = v67;
  v82 = v55;
  v70(v114, v81, v55);

  v83 = sub_22766B380();
  v84 = sub_22766C870();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v126[0] = v86;
    *v85 = 136315394;
    v87 = sub_227666A50();
    v89 = v88;
    v90 = *v118;
    (*v118)(v80);
    v91 = sub_226E97AE8(v87, v89, v126);

    *(v85 + 4) = v91;
    *(v85 + 12) = 2080;
    v92 = MEMORY[0x22AA98660](v78, v82);
    v94 = sub_226E97AE8(v92, v93, v126);

    *(v85 + 14) = v94;
    _os_log_impl(&dword_226E8E000, v83, v84, "Found topNewWorkoutAlternative=%s, returning alternatives=%s", v85, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v86, -1, -1);
    MEMORY[0x22AA9A450](v85, -1, -1);

    (*(v124 + 8))(v123, v120);
    v90(v119, v82);
  }

  else
  {

    v102 = *v118;
    (*v118)(v80, v82);
    (*(v124 + 8))(v79, v120);
    v102(v119, v82);
  }

  return v78;
}

uint64_t sub_227334BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCCA8, &qword_227680A08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227334C5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCCA8, &qword_227680A08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227334CC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCCB8, &qword_227680A28);
  sub_227664010();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_227675BE0;
  sub_22766C540();
  sub_22766C540();
  sub_22766C540();
  sub_227663FC0();
  sub_22766C540();
  sub_22766C540();
  sub_22766C540();
  sub_227663FC0();
  sub_22766C540();
  sub_22766C540();
  sub_22766C540();
  sub_227663FC0();
  sub_22766C540();
  sub_22766C540();
  sub_22766C540();
  sub_227663FC0();
  sub_22766C540();
  sub_22766C540();
  sub_22766C540();
  sub_227663FC0();
  v1 = sub_226F4B52C(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_28139BBA0 = v1;
  return result;
}

uint64_t sub_227334F10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCCB0, &qword_227680A20);
  sub_227667C20();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2276728D0;
  sub_227667BE0();
  sub_227667BE0();
  v1 = sub_226F4B84C(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_28139BAA8 = v1;
  return result;
}

uint64_t sub_227335080()
{
  result = sub_2273350A0();
  qword_28139BB30 = result;
  return result;
}

uint64_t sub_2273350A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCCB0, &qword_227680A20);
  sub_227667C20();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_227680A10;
  sub_227667BE0();
  sub_227667BE0();
  sub_227667BE0();
  sub_227667BE0();
  sub_227667BE0();
  sub_227667BE0();
  sub_227667BE0();
  sub_227667BE0();
  sub_227667BE0();
  sub_227667BE0();
  sub_227667BE0();
  sub_227667BE0();
  sub_227667BE0();
  sub_227667BE0();
  v1 = sub_226F4104C(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v1;
}

uint64_t sub_2273354B0()
{
  v0 = sub_227668970();
  __swift_allocate_value_buffer(v0, qword_28139BA78);
  __swift_project_value_buffer(v0, qword_28139BA78);
  return sub_227668940();
}

uint64_t sub_227335500()
{
  v0 = sub_227667500();
  __swift_allocate_value_buffer(v0, qword_28139BAE0);
  __swift_project_value_buffer(v0, qword_28139BAE0);
  return sub_2276674E0();
}

uint64_t sub_2273355A4()
{
  v0 = sub_227666ED0();
  __swift_allocate_value_buffer(v0, qword_28139BAB8);
  __swift_project_value_buffer(v0, qword_28139BAB8);
  return sub_227666E90();
}

uint64_t sub_227335600()
{
  v0 = sub_2276676D0();
  __swift_allocate_value_buffer(v0, qword_28139BB70);
  __swift_project_value_buffer(v0, qword_28139BB70);
  return sub_2276676A0();
}

uint64_t sub_2273356D0()
{
  v0 = sub_227668300();
  __swift_allocate_value_buffer(v0, qword_28139BBD0);
  __swift_project_value_buffer(v0, qword_28139BBD0);
  sub_22766C510();
  sub_227667010();
  return sub_2276682E0();
}

uint64_t sub_22733575C()
{
  v0 = sub_227667370();
  __swift_allocate_value_buffer(v0, qword_28139BBF8);
  __swift_project_value_buffer(v0, qword_28139BBF8);
  return sub_227667350();
}

uint64_t sub_2273357A8()
{
  v0 = sub_2271483BC(&unk_283A91E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB650, &qword_22767AD10);
  result = swift_arrayDestroy();
  qword_28139BB90 = v0;
  return result;
}

uint64_t sub_227335804()
{
  v0 = sub_2271482B4(&unk_283A91B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB610, &qword_22767ACE8);
  result = swift_arrayDestroy();
  qword_28139BB48 = v0;
  return result;
}

uint64_t sub_227335884()
{
  v0 = sub_227666CB0();
  __swift_allocate_value_buffer(v0, qword_28139BC18);
  __swift_project_value_buffer(v0, qword_28139BC18);
  return sub_227666C90();
}

uint64_t sub_2273358D4()
{
  v0 = sub_227668CB0();
  __swift_allocate_value_buffer(v0, qword_28139BBB0);
  __swift_project_value_buffer(v0, qword_28139BBB0);
  return sub_227668C70();
}

void sub_227335928(void *a1, uint64_t a2)
{
  sub_227666F70();
  v5 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666FC0();
  v6 = sub_22766BFD0();

  [a1 setName_];

  v7 = sub_227666F90();
  v8 = sub_226FC4D70(v7);
  if (!v2)
  {
    sub_227535220(a2, v8);
    v10 = v9;

    [a1 setHealthKitActivityTypes_];

    v11 = sub_227666FE0();
    sub_227648838(a2, v11);
    v13 = v12;

    [a1 setFeatures_];

    v14 = sub_227666F80();
    sub_227648BD0(a2, v14);
    v16 = v15;

    [a1 setFilterPropertyTypes_];

    v17 = sub_227666FA0();
    sub_227648F68(a2, v17);
    v19 = v18;

    [a1 setAlternativeActivityTypes_];

    v20 = sub_227666FB0();
    v22 = v21;
    v24 = v23 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_227663AD0();
    v25 = sub_22766BFD0();
    sub_226EB2DFC(v20, v22, v24);

    [a1 setKind_];
  }
}

void *static CatalogModalityReference.representativeSamples()()
{
  v30 = sub_227666FF0();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = v26 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_22766C090();
  v2 = sub_22766C090();
  v3 = sub_22766C2D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E0, &qword_227679650);
  v4 = MEMORY[0x277D53EA0];
  v5 = MEMORY[0x277D502F0];
  sub_227336280(&qword_27D7BCCC0, sub_22733622C, MEMORY[0x277D53EA0], MEMORY[0x277D502F0]);
  v6 = MEMORY[0x277D837E0];
  v7 = MEMORY[0x277D50308];
  sub_227336280(&qword_28139BC60, sub_226EB63D4, MEMORY[0x277D837E0], MEMORY[0x277D50308]);
  v8 = sub_22766C590();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D8, &unk_227671530);
  sub_227336304(&qword_27D7BCCC8, sub_226FA73A8, v4, v5);
  sub_227336304(&qword_28139BC50, sub_226EB6AC4, v6, v7);
  v9 = sub_22766C590();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);
  sub_227336388();
  sub_226EC1AA4();
  v10 = sub_22766C590();
  sub_227148368();
  sub_226EC1E18();
  v11 = sub_227663B50();
  v44 = v9;
  v45[0] = v8;
  v45[1] = v45;
  v45[2] = &v44;
  v42 = v1;
  v43 = v3;
  v45[3] = &v43;
  v45[4] = &v42;
  v40 = v10;
  v41 = v11;
  v45[5] = &v41;
  v45[6] = &v40;
  v39 = v2;
  v45[7] = &v39;
  v38[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCCD8, &qword_227680A30);
  v38[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCCE0, &qword_227680A38);
  v38[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCCE8, &qword_227680A40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v38[10] = v12;
  v38[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB90, &unk_2276808B8);
  v38[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCCF0, &qword_227680A48);
  v38[13] = v12;
  v38[0] = sub_226F5BF60(&qword_27D7BCCF8, &qword_27D7BCCD8, &qword_227680A30);
  v38[1] = sub_226F5BF60(&qword_27D7BCD00, &qword_27D7BCCE0, &qword_227680A38);
  v38[2] = sub_226F5BF60(&qword_27D7BCD08, &qword_27D7BCCE8, &qword_227680A40);
  v13 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v38[3] = v13;
  v38[4] = sub_226F5BF60(&qword_27D7BCB98, &qword_27D7BCB90, &unk_2276808B8);
  v38[5] = sub_226F5BF60(&qword_27D7BCD10, &qword_27D7BCCF0, &qword_227680A48);
  v38[6] = v13;
  v14 = sub_2276638E0();

  v15 = *(v14 + 16);
  if (v15)
  {
    v37 = MEMORY[0x277D84F90];
    result = sub_226EB5880(0, v15, 0);
    v17 = 0;
    v18 = v37;
    v26[1] = v31 + 32;
    v19 = v14 + 56;
    v28 = v14;
    v27 = v15;
    while (v17 < *(v14 + 16))
    {
      v33 = *(v19 - 24);
      v35 = *v19;
      v36 = v18;
      v20 = *(v19 + 16);
      v32 = *(v19 + 8);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v34 = *(v19 + 48);

      sub_226EB396C(v20, v21, v22);

      v23 = v29;
      v18 = v36;
      sub_227666FD0();
      v37 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226EB5880((v24 > 1), v25 + 1, 1);
        v18 = v37;
      }

      ++v17;
      *(v18 + 16) = v25 + 1;
      result = (*(v31 + 32))(v18 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25, v23, v30);
      v19 += 88;
      v14 = v28;
      if (v27 == v17)
      {

        return v18;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_22733622C()
{
  result = qword_27D7BE820;
  if (!qword_27D7BE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE820);
  }

  return result;
}

uint64_t sub_227336280(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B86E0, &qword_227679650);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227336304(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B86D8, &unk_227671530);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227336388()
{
  result = qword_27D7BCCD0;
  if (!qword_27D7BCCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B86D0, &qword_22768B670);
    sub_2273364DC(&unk_27D7BE7E0, MEMORY[0x277D52360], MEMORY[0x277D52380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCCD0);
  }

  return result;
}

uint64_t sub_227336484(uint64_t a1)
{
  result = sub_2273364DC(&qword_28139B568, MEMORY[0x277D52AF8], &protocol conformance descriptor for CatalogModalityReference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2273364DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t UserNotificationError.hashValue.getter()
{
  v1 = *v0;
  sub_22766D370();
  MEMORY[0x22AA996B0](v1);
  return sub_22766D3F0();
}

unint64_t sub_2273365B4()
{
  result = qword_27D7BCD18;
  if (!qword_27D7BCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCD18);
  }

  return result;
}

void sub_227336618(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_2276694E0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 syncIdentifier];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v31 = sub_22766C000();
  v15 = v14;

  v16 = [a1 zoneName];
  if (!v16)
  {
    goto LABEL_9;
  }

  v32 = v15;
  v30 = a2;
  v17 = v16;
  sub_22766C000();

  sub_2276694B0();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v18 = *(v8 + 32);
    v18(v11, v6, v7);
    v19 = [a1 etag];
    if (v19)
    {
      v20 = v19;
      v21 = sub_22766C000();
      v23 = v22;

      v24 = type metadata accessor for SyncChangeTag(0);
      v25 = v30;
      v18(v30 + *(v24 + 20), v11, v7);
      v26 = v32;
      *v25 = v31;
      v25[1] = v26;
      v27 = (v25 + *(v24 + 24));
      *v27 = v21;
      v27[1] = v23;
      return;
    }

    (*(v8 + 8))(v11, v7);
LABEL_9:

    goto LABEL_10;
  }

  sub_226E97D1C(v6, &qword_27D7B8460, qword_2276709E0);
LABEL_10:
  v28 = sub_227664DD0();
  sub_227336AC0(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51028], v28);
  swift_willThrow();
}

uint64_t sub_227336998(uint64_t a1)
{
  result = sub_227336AC0(qword_28139AFD8, type metadata accessor for SyncChangeTag, &unk_227680B70);
  *(a1 + 8) = result;
  return result;
}

void sub_2273369F0(void *a1)
{
  v2 = sub_22766BFD0();
  [a1 setSyncIdentifier_];

  type metadata accessor for SyncChangeTag(0);
  sub_2276694C0();
  v3 = sub_22766BFD0();

  [a1 setZoneName_];

  v4 = sub_22766BFD0();
  [a1 setEtag_];
}

uint64_t sub_227336AC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227336B08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCD20, &qword_227680BB8);
  v1 = *(v0 - 8);
  v44 = v0;
  v45 = v1;
  MEMORY[0x28223BE20](v0);
  v41 = &v37 - v2;
  v3 = type metadata accessor for SyncChangeTag(0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766C090();
  v6 = sub_22766C330();

  v7 = sub_2276694D0();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = sub_2274CD740(*(v7 + 16), 0);
    v11 = *(sub_2276694E0() - 8);
    sub_2274CDD98(v57, &v10[(*(v11 + 80) + 32) & ~*(v11 + 80)], v9, v8);
    v13 = v12;
    sub_226EBB21C(v57[0]);
    if (v13 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_5:
  sub_22766C090();
  v14 = sub_22766C330();

  v55 = v10;
  v56 = v6;
  v57[0] = &v56;
  v57[1] = &v55;
  v54 = v14;
  v57[2] = &v54;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v51 = v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D30, &qword_227671EF8);
  v53 = v15;
  v16 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v48 = v16;
  v49 = sub_226F5BF60(&qword_27D7B8D40, &qword_27D7B8D30, &qword_227671EF8);
  v50 = v16;
  v17 = sub_2276638E0();

  v18 = *(v17 + 16);
  if (v18)
  {
    v47 = MEMORY[0x277D84F90];
    result = sub_226F204E8(0, v18, 0);
    v20 = 0;
    v21 = v47;
    v38 = v17 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v40 = v17;
    v39 = v18;
    while (v20 < *(v17 + 16))
    {
      v22 = v38 + *(v45 + 72) * v20;
      v46 = v21;
      v23 = v41;
      sub_227336FA0(v22, v41);
      v24 = *v23;
      v25 = *(v23 + 1);
      v26 = v43;
      v27 = *(v44 + 48);
      v28 = &v23[*(v44 + 64)];
      v30 = *v28;
      v29 = *(v28 + 1);
      v31 = *(v43 + 20);
      v32 = sub_2276694E0();
      (*(*(v32 - 8) + 16))(&v5[v31], &v23[v27], v32);
      *v5 = v24;
      *(v5 + 1) = v25;
      v33 = &v5[*(v26 + 24)];
      *v33 = v30;
      *(v33 + 1) = v29;

      v34 = v23;
      v21 = v46;
      sub_226E97D1C(v34, &qword_27D7BCD20, &qword_227680BB8);
      v47 = v21;
      v36 = *(v21 + 16);
      v35 = *(v21 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_226F204E8((v35 > 1), v36 + 1, 1);
        v21 = v47;
      }

      ++v20;
      *(v21 + 16) = v36 + 1;
      result = sub_227337010(v5, v21 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v36);
      v17 = v40;
      if (v39 == v20)
      {

        return v21;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227336FA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCD20, &qword_227680BB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227337010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncChangeTag(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227337074(uint64_t result, uint64_t a2, char **a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (result + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_2273387D8(v5, v6, *v4);
      if (v7 < 0)
      {
        MEMORY[0x22AA98450](63, 0xE100000000000000);
        v8 = *a3;
        sub_22708B000(v5, v6, v7 & 0x7F);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_2273A6B20(0, *(v8 + 2) + 1, 1, v8);
          *a3 = v8;
        }

        v11 = *(v8 + 2);
        v10 = *(v8 + 3);
        if (v11 >= v10 >> 1)
        {
          v8 = sub_2273A6B20((v10 > 1), v11 + 1, 1, v8);
          *a3 = v8;
        }

        *(v8 + 2) = v11 + 1;
        v12 = &v8[24 * v11];
        *(v12 + 4) = v5;
        *(v12 + 5) = v6;
        v12[48] = v7 & 0x7F;
      }

      else
      {
        MEMORY[0x22AA98450](v5, v6);
      }

      v4 += 24;
      result = sub_227338344(v5, v6, v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2273371D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22766D190() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_227337264(uint64_t a1, uint64_t a2)
{
  v47[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a2 + 48);
    v5 = (a1 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;
      if ((*v5 & 0x80) == 0)
      {
        if (v11 < 0)
        {
          return 0;
        }

        if (*&v6 == v9 && v7 == v10)
        {
          goto LABEL_6;
        }

LABEL_13:
        if ((sub_22766D190() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if ((v11 & 0x80000000) == 0)
      {
        return 0;
      }

      v13 = *v5 & 0x7F;
      v14 = v11 & 0x7F;
      if ((v8 & 0x7Fu) > 2)
      {
        if (v13 == 3)
        {
          if (v14 != 3)
          {
            return 0;
          }

          if (*&v6 != v9 || v7 != v10)
          {
            goto LABEL_13;
          }
        }

        else if (v13 == 4)
        {
          if (v14 != 4)
          {
            return 0;
          }

          v15 = v7 >> 62;
          v16 = v10 >> 62;
          if (v7 >> 62 == 3)
          {
            v17 = 0;
            if (v6 == 0.0 && v7 == 0xC000000000000000 && v10 >> 62 == 3)
            {
              v17 = 0;
              if (*&v9 == 0.0 && v10 == 0xC000000000000000)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v15 > 1)
          {
            if (v15 == 2)
            {
              v19 = *(*&v6 + 16);
              v18 = *(*&v6 + 24);
              v20 = __OFSUB__(v18, v19);
              v17 = v18 - v19;
              if (v20)
              {
                goto LABEL_90;
              }
            }

            else
            {
              v17 = 0;
            }
          }

          else if (v15)
          {
            LODWORD(v17) = HIDWORD(v6) - LODWORD(v6);
            if (__OFSUB__(HIDWORD(v6), LODWORD(v6)))
            {
              goto LABEL_91;
            }

            v17 = v17;
          }

          else
          {
            v17 = BYTE6(v7);
          }

          if (v16 > 1)
          {
            if (v16 != 2)
            {
              if (v17)
              {
                return 0;
              }

              goto LABEL_6;
            }

            v23 = *(v9 + 16);
            v22 = *(v9 + 24);
            v20 = __OFSUB__(v22, v23);
            v21 = v22 - v23;
            if (v20)
            {
              goto LABEL_89;
            }
          }

          else if (v16)
          {
            LODWORD(v21) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
            }

            v21 = v21;
          }

          else
          {
            v21 = BYTE6(v10);
          }

          if (v17 != v21)
          {
            return 0;
          }

          if (v17 >= 1)
          {
            if (v15 > 1)
            {
              v30 = *(v5 - 1);
              if (v15 == 2)
              {
                v45 = v3;
                v31 = *(*&v6 + 16);
                v32 = *(*&v6 + 24);
                v33 = *(v5 - 2);
                v42 = *(v4 - 2);
                v43 = *(v4 - 1);
                sub_2273387D8(v9, v10, v11);
                v44 = v33;
                sub_2273387D8(v33, v30, v8);
                v34 = sub_227662060();
                if (v34)
                {
                  v35 = sub_227662090();
                  if (__OFSUB__(v31, v35))
                  {
                    goto LABEL_94;
                  }

                  v34 += v31 - v35;
                }

                if (__OFSUB__(v32, v31))
                {
                  goto LABEL_93;
                }

                goto LABEL_80;
              }

              memset(v47, 0, 14);
              v38 = *&v6;
              v39 = v9;
              v40 = v10;
              sub_2273387D8(v9, v10, v11);
              sub_2273387D8(v38, v30, v8);
              sub_2275BA344(v47, v39, v40, &v46);
              sub_227338344(v39, v40, v11);
              v28 = v38;
              v29 = v30;
            }

            else
            {
              v45 = v3;
              if (v15)
              {
                v36 = SLODWORD(v6);
                v44 = *(v5 - 2);
                if (*&v6 >> 32 < SLODWORD(v6))
                {
                  goto LABEL_92;
                }

                v30 = *(v5 - 1);
                v42 = *(v4 - 2);
                v43 = *(v4 - 1);
                sub_2273387D8(v9, v10, v11);
                sub_2273387D8(v44, v30, v8);
                v34 = sub_227662060();
                if (v34)
                {
                  v37 = sub_227662090();
                  if (__OFSUB__(v36, v37))
                  {
                    goto LABEL_95;
                  }

                  v34 += v36 - v37;
                }

LABEL_80:
                sub_227662080();
                v3 = v45;
                sub_2275BA344(v34, v42, v43, v47);
                sub_227338344(v42, v43, v11);
                sub_227338344(v44, v30, v8);
                if ((v47[0] & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_6;
              }

              v47[0] = *(v5 - 2);
              LOWORD(v47[1]) = v7;
              BYTE2(v47[1]) = BYTE2(v7);
              BYTE3(v47[1]) = BYTE3(v7);
              BYTE4(v47[1]) = BYTE4(v7);
              BYTE5(v47[1]) = BYTE5(v7);
              v24 = *&v6;
              v25 = v7;
              v26 = v9;
              v27 = v10;
              sub_2273387D8(v9, v10, v11);
              sub_2273387D8(v24, v25, v8);
              sub_2275BA344(v47, v26, v27, &v46);
              sub_227338344(v26, v27, v11);
              v28 = v24;
              v29 = v25;
            }

            sub_227338344(v28, v29, v8);
            if (!v46)
            {
              return 0;
            }
          }
        }

        else
        {
          v13 = 0;
          if (v14 != 5 || v10 | v9)
          {
            return v13;
          }
        }
      }

      else if ((*v5 & 0x7F) != 0)
      {
        if (v13 == 1)
        {
          v13 = 0;
          if (v14 != 1 || LODWORD(v6) != v9)
          {
            return v13;
          }
        }

        else
        {
          v13 = 0;
          if (v14 != 2 || *&v6 != v9)
          {
            return v13;
          }
        }
      }

      else if ((v11 & 0x7F) != 0 || v6 != *&v9)
      {
        return v13;
      }

LABEL_6:
      v5 += 24;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2273377A0(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a2 + 48);
    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *i;
      v8 = *(v4 - 2);
      v9 = *v4;
      if (v7 <= 2)
      {
        if (*i)
        {
          if (v7 == 1)
          {
            result = 0;
            if (v9 != 1 || v6 != v8)
            {
              return result;
            }
          }

          else
          {
            result = 0;
            if (v9 != 2 || v6 != v8)
            {
              return result;
            }
          }
        }

        else
        {
          result = 0;
          if (*v4 || *&v6 != *&v8)
          {
            return result;
          }
        }

        goto LABEL_6;
      }

      v11 = *(i - 1);
      v12 = *(v4 - 1);
      if (v7 == 3)
      {
        if (v9 != 3 || (v6 != v8 || v11 != v12) && (sub_22766D190() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v7 != 4)
      {
        result = 0;
        if (v9 != 5 || v12 | v8)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (v9 != 4)
      {
        return 0;
      }

      v13 = v11 >> 62;
      v14 = v12 >> 62;
      if (v11 >> 62 == 3)
      {
        break;
      }

      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v21 = *(v6 + 16);
          v20 = *(v6 + 24);
          v18 = __OFSUB__(v20, v21);
          v15 = v20 - v21;
          if (v18)
          {
            goto LABEL_81;
          }

          goto LABEL_45;
        }

        v15 = 0;
        if (v14 > 1)
        {
          goto LABEL_39;
        }
      }

      else if (v13)
      {
        LODWORD(v15) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          goto LABEL_82;
        }

        v15 = v15;
        if (v14 > 1)
        {
LABEL_39:
          if (v14 != 2)
          {
            if (v15)
            {
              return 0;
            }

            goto LABEL_6;
          }

          v17 = *(v8 + 16);
          v16 = *(v8 + 24);
          v18 = __OFSUB__(v16, v17);
          v19 = v16 - v17;
          if (v18)
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
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
          }

          goto LABEL_52;
        }
      }

      else
      {
        v15 = BYTE6(v11);
        if (v14 > 1)
        {
          goto LABEL_39;
        }
      }

LABEL_46:
      if (v14)
      {
        LODWORD(v19) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_80;
        }

        v19 = v19;
      }

      else
      {
        v19 = BYTE6(v12);
      }

LABEL_52:
      if (v15 != v19)
      {
        return 0;
      }

      if (v15 < 1)
      {
        goto LABEL_6;
      }

      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v31 = v3;
          v22 = *(v6 + 16);
          v30 = *(v6 + 24);
          sub_22708B000(v8, v12, 4);
          sub_22708B000(v6, v11, 4);
          v23 = sub_227662060();
          if (v23)
          {
            v24 = sub_227662090();
            if (__OFSUB__(v22, v24))
            {
              goto LABEL_85;
            }

            v23 += v22 - v24;
          }

          if (__OFSUB__(v30, v22))
          {
            goto LABEL_84;
          }

          sub_227662080();
          v25 = v23;
          v26 = v8;
          v27 = v12;
          v3 = v31;
          goto LABEL_73;
        }

        memset(v33, 0, 14);
        sub_22708B000(v8, v12, 4);
        sub_22708B000(v6, v11, 4);
      }

      else
      {
        if (v13)
        {
          if (v6 >> 32 < v6)
          {
            goto LABEL_83;
          }

          sub_22708B000(v8, v12, 4);
          sub_22708B000(v6, v11, 4);
          v28 = sub_227662060();
          if (v28)
          {
            v29 = sub_227662090();
            if (__OFSUB__(v6, v29))
            {
              goto LABEL_86;
            }

            v28 += v6 - v29;
          }

          sub_227662080();
          v25 = v28;
          v26 = v8;
          v27 = v12;
LABEL_73:
          sub_2275BA344(v25, v26, v27, v33);
          sub_22708B024(v8, v12, 4);
          sub_22708B024(v6, v11, 4);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(i - 2);
        LOWORD(v33[1]) = v11;
        BYTE2(v33[1]) = BYTE2(v11);
        BYTE3(v33[1]) = BYTE3(v11);
        BYTE4(v33[1]) = BYTE4(v11);
        BYTE5(v33[1]) = BYTE5(v11);
        sub_22708B000(v8, v12, 4);
        sub_22708B000(v6, v11, 4);
      }

      sub_2275BA344(v33, v8, v12, &v32);
      sub_22708B024(v8, v12, 4);
      sub_22708B024(v6, v11, 4);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    v15 = 0;
    if (*&v6 == 0.0 && v11 == 0xC000000000000000 && v12 >> 62 == 3)
    {
      v15 = 0;
      if (*&v8 == 0.0 && v12 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_45:
    if (v14 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_46;
  }

  return 1;
}

uint64_t sub_227337CC0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 64);
  v4 = (result + 64);
  while (v2)
  {
    if (*(v4 - 4) != *(v3 - 4))
    {
      return 0;
    }

    v15 = v2;
    v6 = *(v4 - 3);
    v5 = *(v4 - 2);
    v7 = *(v4 - 1);
    v8 = *v4;
    v10 = *(v3 - 3);
    v9 = *(v3 - 2);
    v11 = *(v3 - 1);
    v12 = *v3;

    sub_226EB396C(v5, v7, v8);

    sub_226EB396C(v9, v11, v12);
    if ((sub_227033E88(v6, v10) & 1) == 0)
    {

      sub_226EB2DFC(v9, v11, v12);

      sub_226EB2DFC(v5, v7, v8);
      return 0;
    }

    sub_226F48150();
    v14 = v8;
    sub_226EC1E18();
    v13 = sub_227663B20();

    sub_226EB2DFC(v9, v11, v12);

    result = sub_226EB2DFC(v5, v7, v14);
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    v3 += 40;
    v4 += 40;
    v2 = v15 - 1;
    if (v15 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

SeymourServices::SQLiteStatement __swiftcall SQLiteStatement.init(stringLiteral:)(Swift::String stringLiteral)
{
  v1 = MEMORY[0x277D84F90];
  result.query = stringLiteral;
  result.bindings._rawValue = v1;
  return result;
}

SeymourServices::SQLiteStatement __swiftcall SQLiteStatement.init(stringInterpolation:)(SeymourServices::SQLiteStatementInterpolation stringInterpolation)
{
  v1 = *stringInterpolation.components._rawValue;
  v2 = *(*stringInterpolation.components._rawValue + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = (v4 + 24 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }

        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        v10 = *v6;
        if (v10 < 0)
        {
          break;
        }

        MEMORY[0x22AA98450](v9, v8);
        stringInterpolation.components._rawValue = sub_227338344(v9, v8, v10);
        ++v7;
        v6 += 24;
        if (v3 == v2)
        {
          goto LABEL_16;
        }
      }

      sub_22708B000(v9, v8, v10 & 0x7F);
      MEMORY[0x22AA98450](63, 0xE100000000000000);
      sub_22708B000(v9, v8, v10 & 0x7F);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2273A6B20(0, *(v5 + 2) + 1, 1, v5);
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_2273A6B20((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v14 + 1;
      v15 = &v5[24 * v14];
      *(v15 + 4) = v9;
      *(v15 + 5) = v8;
      v15[48] = v10 & 0x7F;
      stringInterpolation.components._rawValue = sub_227338344(v9, v8, v10);
      v4 = v1 + 48;
    }

    while (v3 != v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_16:

  stringInterpolation.components._rawValue = 0;
  v11 = 0xE000000000000000;
  v12 = v5;
LABEL_19:
  result.bindings._rawValue = v12;
  result.query._object = v11;
  result.query._countAndFlagsBits = stringInterpolation.components._rawValue;
  return result;
}

uint64_t sub_22733803C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v7 = 0;
  v8 = 0xE000000000000000;
  v9 = MEMORY[0x277D84F90];
  sub_227337074(v3, &v7, &v9);

  v6 = v8;
  v5 = v9;
  *a2 = v7;
  a2[1] = v6;
  a2[2] = v5;
  return result;
}

uint64_t static SQLiteStatement.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 != a4 || a2 != a5) && (sub_22766D190() & 1) == 0)
  {
    return 0;
  }

  return sub_2273377A0(a3, a6);
}

uint64_t SQLiteStatement.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22766C100();

  return sub_2273384B8(a1, a4);
}

uint64_t SQLiteStatement.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22766D370();
  sub_22766C100();
  sub_2273384B8(v5, a3);
  return sub_22766D3F0();
}

uint64_t sub_2273381C8()
{
  v1 = *(v0 + 16);
  sub_22766D370();
  sub_22766C100();
  sub_2273384B8(v3, v1);
  return sub_22766D3F0();
}

uint64_t sub_22733822C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_22766C100();

  return sub_2273384B8(a1, v3);
}

uint64_t sub_227338270(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_22766D370();
  sub_22766C100();
  sub_2273384B8(v4, v2);
  return sub_22766D3F0();
}

uint64_t sub_2273382D0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22766D190() & 1) == 0)
  {
    return 0;
  }

  return sub_2273377A0(v2, v3);
}

uint64_t sub_227338344(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 < 0)
  {
    return sub_22708B024(a1, a2, a3 & 0x7F);
  }

  else
  {
  }
}

uint64_t sub_227338358(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AA996B0](v3);
  if (v3)
  {
    for (i = (a2 + 48); ; i += 24)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      if ((*i & 0x80000000) == 0)
      {
        break;
      }

      v9 = v8 & 0x7F;
      MEMORY[0x22AA996B0](1);
      if (v9 > 2)
      {
        if (v9 != 3)
        {
          if (v9 == 4)
          {
            MEMORY[0x22AA996B0](5);
            sub_22708B000(v6, v7, 4);
            sub_2276625A0();
          }

          else
          {
            MEMORY[0x22AA996B0](0);
          }

          goto LABEL_5;
        }

        MEMORY[0x22AA996B0](4);
        sub_22708B000(v6, v7, 3);
        goto LABEL_4;
      }

      if ((v8 & 0x7F) == 0)
      {
        MEMORY[0x22AA996B0](1);
        if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v10 = v6;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_19;
      }

      if (v9 != 1)
      {
        MEMORY[0x22AA996B0](3);
        v10 = v6;
LABEL_19:
        MEMORY[0x22AA996F0](v10);
        goto LABEL_5;
      }

      MEMORY[0x22AA996B0](2);
      sub_22766D3C0();
LABEL_5:
      result = sub_227338344(v6, v7, v8);
      if (!--v3)
      {
        return result;
      }
    }

    MEMORY[0x22AA996B0](0);

LABEL_4:
    sub_22766C100();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_2273384B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AA996B0](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *(v5 - 2);
      v8 = *v5;
      if (v8 > 2)
      {
        v9 = *(v5 - 1);
        if (v8 == 3)
        {
          MEMORY[0x22AA996B0](4);

          sub_22766C100();
          v10 = v7;
          v11 = v9;
          v12 = 3;
        }

        else
        {
          if (v8 != 4)
          {
            result = MEMORY[0x22AA996B0](0);
            goto LABEL_7;
          }

          MEMORY[0x22AA996B0](5);
          sub_226F5E0B4(v7, v9);
          sub_2276625A0();
          v10 = v7;
          v11 = v9;
          v12 = 4;
        }

        result = sub_22708B024(v10, v11, v12);
      }

      else
      {
        if (*v5)
        {
          if (v8 == 1)
          {
            MEMORY[0x22AA996B0](2);
            result = sub_22766D3C0();
            goto LABEL_7;
          }

          MEMORY[0x22AA996B0](3);
          v6 = v7;
        }

        else
        {
          MEMORY[0x22AA996B0](1);
          if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v6 = v7;
          }

          else
          {
            v6 = 0;
          }
        }

        result = MEMORY[0x22AA996F0](v6);
      }

LABEL_7:
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_2273385F0()
{
  result = qword_27D7BCD28;
  if (!qword_27D7BCD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCD28);
  }

  return result;
}

unint64_t sub_227338648()
{
  result = qword_27D7BCD30;
  if (!qword_27D7BCD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCD30);
  }

  return result;
}

unint64_t sub_2273386A0()
{
  result = qword_27D7BCD38;
  if (!qword_27D7BCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCD38);
  }

  return result;
}

unint64_t sub_227338704()
{
  result = qword_27D7BCD40;
  if (!qword_27D7BCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCD40);
  }

  return result;
}

unint64_t sub_227338774()
{
  result = qword_27D7BCD48;
  if (!qword_27D7BCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCD48);
  }

  return result;
}

void sub_2273387D8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 < 0)
  {
    sub_22708B000(a1, a2, a3 & 0x7F);
  }

  else
  {
  }
}

void sub_2273387F0(void *a1)
{
  v2 = a1;
  v3 = [a1 identifier];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  sub_22766C000();

  v5 = [v2 name];
  if (!v5)
  {

LABEL_7:
    v11 = sub_227664DD0();
    sub_227338FF8(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51028], v11);
    swift_willThrow();
LABEL_8:

    return;
  }

  v6 = v5;
  sub_22766C000();

  v7 = [v2 themes];
  if (!v7)
  {
    v13 = sub_227664DD0();
    sub_227338FF8(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D51028], v13);
    swift_willThrow();

    goto LABEL_10;
  }

  v8 = v7;
  v9 = MEMORY[0x22AA99A00]();
  v10 = sub_227155968(v8);
  if (!v1)
  {
    v15 = v10;
    objc_autoreleasePoolPop(v9);
    sub_226F3EDD8(v15);

    [v2 sortOrder];
    sub_227665D20();
    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v9);

  v2 = v8;
LABEL_10:
}

void sub_227338AA4(void *a1, uint64_t a2)
{
  sub_227665D30();
  v5 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227665D40();
  v6 = sub_22766BFD0();

  [a1 setName_];

  v7 = sub_227665D60();
  v8 = 0x7FFFFFFFLL;
  if (v7 < 0x7FFFFFFF)
  {
    v8 = v7;
  }

  if (v8 <= 0xFFFFFFFF80000000)
  {
    v9 = 0xFFFFFFFF80000000;
  }

  else
  {
    v9 = v8;
  }

  [a1 setSortOrder_];
  v10 = sub_227665D50();
  sub_227647D08(a2, v10);
  v12 = v11;

  if (!v2)
  {
    [a1 setThemes_];
  }
}

void *static CatalogThemeCategory.representativeSamples()()
{
  v20 = sub_227665D70();
  v0 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v2 = v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766C090();
  v4 = sub_22766C090();
  sub_226F05E24();
  v5 = sub_22766CFA0();
  sub_227663A30();
  v6 = MEMORY[0x277D50278];
  sub_227338FF8(&qword_28139BC80, MEMORY[0x277D50278], &protocol conformance descriptor for CatalogTheme);
  sub_227338FF8(&qword_28139BC90, v6, MEMORY[0x277D50280]);
  v7 = sub_22766C590();
  v32 = v4;
  v33[0] = v3;
  v33[1] = v33;
  v33[2] = &v32;
  v30 = v7;
  v31 = v5;
  v33[3] = &v31;
  v33[4] = &v30;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCD50, &qword_227680D60);
  v22 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v23 = v22;
  v24 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v25 = sub_226F5BF60(&qword_27D7BCD58, &qword_27D7BCD50, &qword_227680D60);
  v8 = sub_2276638E0();

  v9 = *(v8 + 16);
  if (v9)
  {
    v21 = MEMORY[0x277D84F90];
    result = sub_226F1F9A8(0, v9, 0);
    v11 = 0;
    v12 = v21;
    v16[1] = v0 + 32;
    v13 = v8 + 72;
    v18 = v8;
    v19 = v0;
    v17 = v9;
    while (v11 < *(v8 + 16))
    {

      sub_227665D20();
      v21 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_226F1F9A8((v14 > 1), v15 + 1, 1);
        v12 = v21;
      }

      ++v11;
      *(v12 + 16) = v15 + 1;
      result = (*(v19 + 32))(v12 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15, v2, v20);
      v13 += 48;
      v8 = v18;
      if (v17 == v11)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227338FA0(uint64_t a1)
{
  result = sub_227338FF8(&qword_28139B700, MEMORY[0x277D51E30], &protocol conformance descriptor for CatalogThemeCategory);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227338FF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_227339040(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v22[0] = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v22 - v14;
  v16 = [a1 remoteURL];
  if (v16)
  {
    v17 = v16;
    sub_22766C000();
  }

  sub_227662310();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &unk_27D7BB570, &unk_227670FC0);
LABEL_7:
    v18 = sub_227664DD0();
    sub_227339D74(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51028], v18);
    swift_willThrow();

    return;
  }

  (*(v9 + 32))(v15, v7, v8);
  if (MEMORY[0x22AA90880]([a1 loadStatus]) == 9)
  {
    (*(v9 + 8))(v15, v8);
    goto LABEL_7;
  }

  v20 = [a1 localURL];
  if (v20)
  {
    v21 = v20;
    sub_22766C000();
  }

  sub_227662310();
  (*(v9 + 16))(v11, v15, v8);
  [a1 size];
  sub_227663150();

  (*(v9 + 8))(v15, v8);
}

void *static AssetEntry.representativeSamples()()
{
  v43 = sub_2276624A0();
  v0 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v40 = v28 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCD60, &qword_227680DB0);
  v6 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = v28 - v7;
  v37 = sub_227663180();
  v8 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276622F0();
  v12 = sub_2276622F0();
  v13 = sub_227664550();
  sub_227339A08();
  v14 = sub_22766CFA0();
  v56 = v12;
  v57[0] = v11;
  v57[1] = v57;
  v57[2] = &v56;
  v54 = v14;
  v55 = v13;
  v57[3] = &v55;
  v57[4] = &v54;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v51 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCD70, &qword_227680DB8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCD78, &qword_227680DC0);
  v46 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v47 = v46;
  v48 = sub_226F5BF60(&qword_27D7BCD80, &qword_27D7BCD70, &qword_227680DB8);
  v49 = sub_226F5BF60(&qword_27D7BCD88, &qword_27D7BCD78, &qword_227680DC0);
  v15 = sub_2276638E0();

  v16 = *(v15 + 16);
  if (v16)
  {
    v45 = MEMORY[0x277D84F90];
    result = sub_226F1F528(0, v16, 0);
    v18 = 0;
    v32 = v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v19 = v45;
    v31 = (v0 + 16);
    v29 = (v0 + 56);
    v28[1] = v8 + 32;
    v36 = v6;
    v35 = v8;
    v34 = v15;
    v33 = v16;
    v30 = v10;
    v20 = v40;
    while (v18 < *(v15 + 16))
    {
      v21 = v38;
      sub_226E93170(v32 + *(v6 + 72) * v18, v38, &qword_27D7BCD60, &qword_227680DB0);
      v44 = v19;
      v22 = *v31;
      v23 = v43;
      (*v31)(v20, v21, v43);
      (*v29)(v20, 0, 1, v23);
      v24 = *(v39 + 48);
      sub_226E93170(v20, v41, &unk_27D7BB570, &unk_227670FC0);
      v22(v42, v21 + v24, v23);
      v25 = v30;
      v19 = v44;
      sub_227663150();
      sub_226E97D1C(v20, &unk_27D7BB570, &unk_227670FC0);
      sub_226E97D1C(v21, &qword_27D7BCD60, &qword_227680DB0);
      v45 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F1F528((v26 > 1), v27 + 1, 1);
        v19 = v45;
      }

      ++v18;
      *(v19 + 16) = v27 + 1;
      result = (*(v35 + 32))(v19 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v27, v25, v37);
      v6 = v36;
      v15 = v34;
      if (v33 == v18)
      {

        return v19;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_227339A08()
{
  result = qword_27D7BCD68;
  if (!qword_27D7BCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCD68);
  }

  return result;
}

uint64_t sub_227339AAC(uint64_t a1)
{
  result = sub_227339D74(&qword_28139BD40, MEMORY[0x277D4FCA8], &protocol conformance descriptor for AssetEntry);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227339B04(void *a1)
{
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_227663160();
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_226E97D1C(v8, &unk_27D7BB570, &unk_227670FC0);
    v9 = 0;
  }

  else
  {
    sub_227662390();
    (*(v3 + 8))(v8, v2);
    v9 = sub_22766BFD0();
  }

  [a1 setLocalURL_];

  sub_227663170();
  sub_227662390();
  (*(v3 + 8))(v5, v2);
  v10 = sub_22766BFD0();

  [a1 setRemoteURL_];

  sub_227663120();
  result = sub_227664570();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    [a1 setLoadStatus_];
    return [a1 setSize_];
  }

  __break(1u);
  return result;
}

uint64_t sub_227339D74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227339DBC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_22766D370();
  if (v3 < 0)
  {
    MEMORY[0x22AA996B0](1);
    SQLiteValue.hash(into:)(v5, v1, v2, v3 & 0x7F);
  }

  else
  {
    MEMORY[0x22AA996B0](0);
    sub_22766C100();
  }

  return sub_22766D3F0();
}

uint64_t sub_227339E44(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (v5 < 0)
  {
    MEMORY[0x22AA996B0](1);

    return SQLiteValue.hash(into:)(a1, v3, v4, v5 & 0x7F);
  }

  else
  {
    MEMORY[0x22AA996B0](0);

    return sub_22766C100();
  }
}

uint64_t sub_227339EE8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_22766D370();
  if (v4 < 0)
  {
    MEMORY[0x22AA996B0](1);
    SQLiteValue.hash(into:)(v6, v2, v3, v4 & 0x7F);
  }

  else
  {
    MEMORY[0x22AA996B0](0);
    sub_22766C100();
  }

  return sub_22766D3F0();
}

Swift::Void __swiftcall SQLiteStatementInterpolation.appendLiteral(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_2273A6B3C(0, *(v4 + 2) + 1, 1, v4);
    *v1 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_2273A6B3C((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[24 * v7];
  *(v8 + 4) = countAndFlagsBits;
  *(v8 + 5) = object;
  v8[48] = 0;
  *v1 = v4;
}

uint64_t SQLiteStatementInterpolation.appendInterpolation(binding:)(uint64_t a1, unint64_t a2, char a3)
{
  v7 = *v3;
  sub_22708B000(a1, a2, a3);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v7;
  if ((result & 1) == 0)
  {
    result = sub_2273A6B3C(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
    *v3 = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = sub_2273A6B3C((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + 24 * v10;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3 | 0x80;
  *v3 = v7;
  return result;
}

Swift::Void __swiftcall SQLiteStatementInterpolation.appendInterpolation(_:)(Swift::Int32_optional a1)
{
  if ((*&a1.value & 0x100000000) != 0)
  {
    v3 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_2273A6B3C(0, *(v3 + 2) + 1, 1, v3);
      *v1 = v3;
    }

    v11 = *(v3 + 2);
    v10 = *(v3 + 3);
    if (v11 >= v10 >> 1)
    {
      v3 = sub_2273A6B3C((v10 > 1), v11 + 1, 1, v3);
    }

    *(v3 + 2) = v11 + 1;
    v7 = &v3[24 * v11];
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    v8 = -123;
  }

  else
  {
    value = a1.value;
    v3 = *v1;
    v4 = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v3;
    if ((v4 & 1) == 0)
    {
      v3 = sub_2273A6B3C(0, *(v3 + 2) + 1, 1, v3);
      *v1 = v3;
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_2273A6B3C((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    v7 = &v3[24 * v6];
    *(v7 + 4) = value;
    *(v7 + 5) = 0;
    v8 = -127;
  }

  v7[48] = v8;
  *v1 = v3;
}

uint64_t sub_22733A264(uint64_t a1, char a2, char a3)
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v7;
  if (a2)
  {
    if ((result & 1) == 0)
    {
      result = sub_2273A6B3C(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
      *v3 = result;
    }

    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_2273A6B3C((v9 > 1), v10 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v10 + 1;
    v11 = v7 + 24 * v10;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = -123;
  }

  else
  {
    if ((result & 1) == 0)
    {
      result = sub_2273A6B3C(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
      *v3 = result;
    }

    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_2273A6B3C((v12 > 1), v13 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v13 + 1;
    v14 = v7 + 24 * v13;
    *(v14 + 32) = a1;
    *(v14 + 40) = 0;
    *(v14 + 48) = a3;
  }

  *v3 = v7;
  return result;
}

Swift::Void __swiftcall SQLiteStatementInterpolation.appendInterpolation(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    object = a1.value._object;
    countAndFlagsBits = a1.value._countAndFlagsBits;
    v4 = *v1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_2273A6B3C(0, *(v4 + 2) + 1, 1, v4);
      *v1 = v4;
    }

    v7 = *(v4 + 2);
    v6 = *(v4 + 3);
    if (v7 >= v6 >> 1)
    {
      v4 = sub_2273A6B3C((v6 > 1), v7 + 1, 1, v4);
    }

    *(v4 + 2) = v7 + 1;
    v8 = &v4[24 * v7];
    *(v8 + 4) = countAndFlagsBits;
    *(v8 + 5) = object;
    v9 = -125;
  }

  else
  {
    v4 = *v1;
    v10 = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v4;
    if ((v10 & 1) == 0)
    {
      v4 = sub_2273A6B3C(0, *(v4 + 2) + 1, 1, v4);
      *v1 = v4;
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_2273A6B3C((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v8 = &v4[24 * v12];
    *(v8 + 4) = 0;
    *(v8 + 5) = 0;
    v9 = -123;
  }

  v8[48] = v9;
  *v1 = v4;
}

uint64_t SQLiteStatementInterpolation.appendInterpolation(_:)(uint64_t a1, unint64_t a2)
{
  v3 = *v2;
  if (a2 >> 60 == 15)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v3;
    if ((result & 1) == 0)
    {
      result = sub_2273A6B3C(0, *(v3 + 16) + 1, 1, v3);
      v3 = result;
      *v2 = result;
    }

    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
    if (v6 >= v5 >> 1)
    {
      result = sub_2273A6B3C((v5 > 1), v6 + 1, 1, v3);
      v3 = result;
    }

    *(v3 + 16) = v6 + 1;
    v7 = v3 + 24 * v6;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    v8 = -123;
  }

  else
  {
    sub_226F5E0B4(a1, a2);
    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v3;
    if ((result & 1) == 0)
    {
      result = sub_2273A6B3C(0, *(v3 + 16) + 1, 1, v3);
      v3 = result;
      *v2 = result;
    }

    v12 = *(v3 + 16);
    v11 = *(v3 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_2273A6B3C((v11 > 1), v12 + 1, 1, v3);
      v3 = result;
    }

    *(v3 + 16) = v12 + 1;
    v7 = v3 + 24 * v12;
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    v8 = -124;
  }

  *(v7 + 48) = v8;
  *v2 = v3;
  return result;
}

uint64_t sub_22733A61C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v1;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v4;
  if ((result & 1) == 0)
  {
    result = sub_2273A6B3C(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *v1 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_2273A6B3C((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  v8 = v4 + 24 * v7;
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  *(v8 + 48) = 0;
  *v1 = v4;
  return result;
}

uint64_t SQLiteStatementInterpolation.hashValue.getter()
{
  v1 = *v0;
  sub_22766D370();
  sub_227338358(v3, v1);
  return sub_22766D3F0();
}

uint64_t sub_22733A730()
{
  v1 = *v0;
  sub_22766D370();
  sub_227338358(v3, v1);
  return sub_22766D3F0();
}

uint64_t sub_22733A780(uint64_t a1)
{
  v2 = *v1;
  sub_22766D370();
  sub_227338358(v4, v2);
  return sub_22766D3F0();
}

unint64_t sub_22733A7D4()
{
  result = qword_27D7BCD90;
  if (!qword_27D7BCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCD90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteDatabaseRow(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SQLiteDatabaseRow(uint64_t result, int a2, int a3)
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

uint64_t sub_22733A8C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && *(a1 + 17))
  {
    return (*a1 + 31);
  }

  v3 = ((*(a1 + 16) >> 2) & 0x1E | (*(a1 + 16) >> 7)) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22733A91C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 16) = 0;
    *result = a2 - 31;
    *(result + 8) = 0;
    if (a3 >= 0x1F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    }
  }

  return result;
}

unint64_t sub_22733A9A8()
{
  result = qword_27D7BCD98;
  if (!qword_27D7BCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCD98);
  }

  return result;
}

uint64_t sub_22733A9FC(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3 < 0)
  {
    if (a6 < 0)
    {
      v7 = a6 & 0x7F;
      v8 = a3 & 0x7F;
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          if (v7 == 3 && (a1 == a4 && a2 == a5 || (sub_22766D190() & 1) != 0))
          {
            return 1;
          }
        }

        else if (v8 == 4)
        {
          if (v7 == 4 && sub_227130B5C(a1, a2, a4, a5))
          {
            return 1;
          }
        }

        else if (v7 == 5 && !(a5 | a4))
        {
          return 1;
        }
      }

      else if ((a3 & 0x7F) != 0)
      {
        if (v8 == 1)
        {
          if (v7 == 1 && a1 == a4)
          {
            return 1;
          }
        }

        else if (v7 == 2 && a1 == a4)
        {
          return 1;
        }
      }

      else if ((a6 & 0x7F) == 0 && *&a1 == *&a4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a6 < 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_22766D190();
}

void *sub_22733AB8C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  return v0;
}

uint64_t sub_22733ABC4()
{
  sub_22733AB8C();

  return swift_deallocClassInstance();
}

BOOL sub_22733AC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[112];
  v6 = type metadata accessor for ServerSyncZoneCoordinator(0, *(*v4 + 80), *(*v4 + 88), a4);
  WitnessTable = swift_getWitnessTable();

  return sub_2274F6E04(v5, v6, WitnessTable);
}

double sub_22733ACC4(void *a1)
{
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  sub_227343B50(a1, v4, v5);
  if (!v2)
  {
    v8 = type metadata accessor for ServerSyncZoneCoordinator(0, v4, v5, v6);
    WitnessTable = swift_getWitnessTable();
    return sub_2274F4BF0(0, a1, v8, WitnessTable);
  }

  return result;
}

uint64_t sub_22733AD84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v298 = a2;
  v320 = *MEMORY[0x277D85DE8];
  v310 = *v2;
  v5 = sub_227664140();
  v314 = *(v5 - 8);
  v315 = v5;
  MEMORY[0x28223BE20](v5);
  v312 = &v279 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v313 = &v279 - v8;
  v305 = sub_2276694E0();
  v309 = *(v305 - 8);
  MEMORY[0x28223BE20](v305);
  v301 = &v279 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v304 = &v279 - v11;
  v12 = type metadata accessor for SyncEncryptionKey(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v279 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22766B390();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v279 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v303 = &v279 - v20;
  MEMORY[0x28223BE20](v21);
  v302 = &v279 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v279 - v24;
  sub_22766A6B0();

  v26 = sub_22766B380();
  v27 = sub_22766C870();

  v28 = os_log_type_enabled(v26, v27);
  v299 = v18;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v307 = v3;
    v308 = a1;
    v306 = v15;
    v30 = v16;
    v31 = v29;
    v32 = swift_slowAlloc();
    v318[0] = v32;
    *v31 = 136446210;
    v34 = type metadata accessor for ServerSyncZoneCoordinator(0, *(v310 + 80), *(v310 + 88), v33);
    WitnessTable = swift_getWitnessTable();
    v36 = sub_2274F6F4C(v34, WitnessTable);
    v38 = v14;
    v39 = sub_226E97AE8(v36, v37, v318);

    *(v31 + 4) = v39;
    v14 = v38;
    _os_log_impl(&dword_226E8E000, v26, v27, "Getting SyncRecordChangeset for %{public}s Type.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    v40 = v31;
    v16 = v30;
    v15 = v306;
    v3 = v307;
    a1 = v308;
    MEMORY[0x22AA9A450](v40, -1, -1);

    v41 = v30;
  }

  else
  {

    v41 = v16;
  }

  v42 = *(v41 + 8);
  v42(v25, v15);
  v43 = v311;
  result = sub_22733D388(a1, v14);
  if (v43)
  {
    return result;
  }

  v291 = v42;
  v300 = 0;
  v292 = v16;
  v306 = v15;
  v307 = v3;
  v296 = v14;
  v45 = a1[3];
  v308 = a1;
  v46 = __swift_project_boxed_opaque_existential_0(a1, v45);
  v47 = *v46;
  v48 = v46[1];
  v49 = *(v46 + 16);
  v50 = v46[3];
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB328, &unk_227681200);
  v51 = swift_allocObject();
  v52 = v47;
  v53 = v48;

  sub_22766A070();
  *(v51 + 16) = v52;
  *(v51 + 24) = v53;
  *(v51 + 32) = v49;
  *(v51 + 40) = v50;
  swift_getKeyPath();
  v54 = sub_2276633C0();
  v319 = MEMORY[0x277D849A8];
  LODWORD(v318[0]) = v54;
  v55 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v297 = v55;
  v56 = sub_22766C820();
  sub_226E93170(v318, &v316, &unk_27D7BC990, &qword_227670A30);
  v57 = v317;
  if (v317)
  {
    v58 = __swift_project_boxed_opaque_existential_0(&v316, v317);
    v59 = *(v57 - 8);
    v60 = MEMORY[0x28223BE20](v58);
    v62 = &v279 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v59 + 16))(v62, v60);
    v63 = sub_22766D170();
    (*(v59 + 8))(v62, v57);
    __swift_destroy_boxed_opaque_existential_0(&v316);
  }

  else
  {
    v63 = 0;
  }

  v64 = objc_opt_self();
  v65 = &off_2785D6000;
  v66 = [v64 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB330, qword_227681240);
  v68 = [objc_allocWithZone(v67) initWithLeftExpression:v56 rightExpression:v66 modifier:0 type:4 options:0];

  sub_226E97D1C(v318, &unk_27D7BC990, &qword_227670A30);
  v69 = qword_2813B2078;
  swift_beginAccess();
  v70 = v68;
  v311 = v69;
  v71 = sub_22766A080();
  v73 = v72;
  MEMORY[0x22AA985C0]();
  v74 = *((*v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v75 = *((*v73 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v295 = v67;
  if (v74 >= v75 >> 1)
  {
    sub_22766C360();
    v67 = v295;
  }

  sub_22766C3A0();
  v71(v318, 0);
  swift_endAccess();

  swift_getKeyPath();
  v76 = *(v310 + 88);
  v290 = *(v310 + 80);
  v289 = v76;
  v78 = type metadata accessor for ServerSyncZoneCoordinator(0, v290, v76, v77);
  v79 = swift_getWitnessTable();
  v80 = v304;
  v294 = v78;
  v293 = v79;
  sub_2274F5148(v78, v79);
  v81 = sub_2276694C0();
  v83 = v82;
  v84 = *(v309 + 8);
  v309 += 8;
  v304 = v84;
  (v84)(v80, v305);
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v319 = v288;
  v318[0] = v81;
  v318[1] = v83;

  v85 = sub_22766C820();
  sub_226E93170(v318, &v316, &unk_27D7BC990, &qword_227670A30);
  v86 = v317;
  if (v317)
  {
    v87 = __swift_project_boxed_opaque_existential_0(&v316, v317);
    v88 = v64;
    v89 = *(v86 - 8);
    v90 = MEMORY[0x28223BE20](v87);
    v92 = &v279 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v89 + 16))(v92, v90);
    v93 = sub_22766D170();
    (*(v89 + 8))(v92, v86);
    v64 = v88;
    v65 = &off_2785D6000;
    v67 = v295;
    __swift_destroy_boxed_opaque_existential_0(&v316);
  }

  else
  {
    v93 = 0;
  }

  v94 = [v64 v65[297]];
  swift_unknownObjectRelease();
  v95 = [objc_allocWithZone(v67) initWithLeftExpression:v85 rightExpression:v94 modifier:0 type:4 options:0];

  sub_226E97D1C(v318, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v96 = v95;
  v97 = sub_22766A080();
  v99 = v98;
  MEMORY[0x22AA985C0]();
  if (*((*v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v97(v318, 0);
  swift_endAccess();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  v100 = v300;
  v101 = sub_2272316B8(100);
  v102 = v100;
  if (v100)
  {
    swift_setDeallocating();

    v103 = qword_2813B2078;
    v104 = sub_22766A100();
    (*(*(v104 - 8) + 8))(v51 + v103, v104);
    swift_deallocClassInstance();
    v105 = v296;
    return sub_227343F70(v105, type metadata accessor for SyncEncryptionKey);
  }

  v106 = v101;
  v282 = v64;
  swift_setDeallocating();

  v107 = qword_2813B2078;
  v108 = sub_22766A100();
  v109 = *(v108 - 8);
  v110 = *(v109 + 8);
  v281 = v108;
  v280 = v110;
  v279 = v109 + 8;
  (v110)(v51 + v107);
  swift_deallocClassInstance();
  v111 = *(v106 + 32);
  v112 = v111 & 0x3F;
  v113 = ((1 << v111) + 63) >> 6;
  v114 = (8 * v113);

  v311 = v106;
  if (v112 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v276 = swift_slowAlloc();
      v285 = sub_227343AC0(v276, v113, v106, sub_22733D9F4, 0);
      v300 = 0;
      v102 = v106;

      MEMORY[0x22AA9A450](v276, -1, -1);
      goto LABEL_36;
    }
  }

  v284 = v113;
  v300 = 0;
  v283 = &v279;
  MEMORY[0x28223BE20](v115);
  v285 = &v279 - ((v114 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v285, v114);
  v286 = 0;
  v117 = 0;
  v118 = v106 + 56;
  v119 = 1 << *(v106 + 32);
  v120 = -1;
  if (v119 < 64)
  {
    v120 = ~(-1 << v119);
  }

  v121 = v120 & *(v106 + 56);
  v122 = (v119 + 63) >> 6;
  v310 = v314 + 16;
  v123 = (v314 + 8);
  while (v121)
  {
    v125 = __clz(__rbit64(v121));
    v121 &= v121 - 1;
LABEL_29:
    v67 = v125 | (v117 << 6);
    (*(v314 + 16))(v313, *(v311 + 48) + *(v314 + 72) * v67, v315);
    sub_227664110();
    v128 = sub_2276640F0();
    v114 = v129;
    v131 = sub_2276640F0();
    v132 = v128;
    v102 = v130;
    if (v132 == v131 && v114 == v130)
    {

      v116 = (*v123)(v313, v315);
      goto LABEL_32;
    }

    v124 = sub_22766D190();

    v116 = (*v123)(v313, v315);
    if (v124)
    {
LABEL_32:
      *&v285[(v67 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v67;
      v133 = __OFADD__(v286++, 1);
      if (v133)
      {
        __break(1u);
        goto LABEL_35;
      }
    }
  }

  v126 = v117;
  while (1)
  {
    v117 = v126 + 1;
    if (__OFADD__(v126, 1))
    {
      __break(1u);
      goto LABEL_93;
    }

    if (v117 >= v122)
    {
      break;
    }

    v127 = *(v118 + 8 * v117);
    ++v126;
    if (v127)
    {
      v125 = __clz(__rbit64(v127));
      v121 = (v127 - 1) & v127;
      goto LABEL_29;
    }
  }

LABEL_35:
  v102 = v311;
  v285 = sub_227269674(v285, v284, v286, v311);
LABEL_36:
  v134 = *(v102 + 32);
  v135 = v134 & 0x3F;
  v136 = ((1 << v134) + 63) >> 6;
  v114 = (8 * v136);

  if (v135 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v277 = swift_slowAlloc();
      v152 = v102;
      v278 = v300;
      v314 = sub_227343AC0(v277, v136, v102, sub_22733DA14, 0);
      v300 = v278;
      if (v278)
      {

        result = MEMORY[0x22AA9A450](v277, -1, -1);
        __break(1u);
      }

      else
      {

        MEMORY[0x22AA9A450](v277, -1, -1);
LABEL_55:
        v153 = v303;
        v154 = v302;
        if (*(v152 + 16))
        {
          sub_22766A6B0();
          swift_retain_n();

          v155 = sub_22766B380();
          v156 = sub_22766C8B0();

          if (os_log_type_enabled(v155, v156))
          {
            v157 = swift_slowAlloc();
            v158 = swift_slowAlloc();
            v318[0] = v158;
            *v157 = 136446466;
            sub_227343E40(&unk_28139B9C0, MEMORY[0x277D506C0], MEMORY[0x277D506C8]);
            v159 = sub_22766C610();
            v161 = v160;

            v162 = sub_226E97AE8(v159, v161, v318);

            *(v157 + 4) = v162;
            *(v157 + 12) = 2082;
            v163 = v301;
            sub_2274F5148(v294, v293);

            sub_227343E40(&qword_28139B258, MEMORY[0x277D53DA0], MEMORY[0x277D53DC0]);
            v164 = v305;
            v165 = sub_22766D140();
            v167 = v166;

            (v304)(v163, v164);
            v168 = sub_226E97AE8(v165, v167, v318);

            *(v157 + 14) = v168;
            _os_log_impl(&dword_226E8E000, v155, v156, "Found SyncOperations: %{public}s in zone %{public}s", v157, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v158, -1, -1);
            MEMORY[0x22AA9A450](v157, -1, -1);

            v169 = v303;
          }

          else
          {

            v169 = v153;
          }
        }

        else
        {

          sub_22766A6B0();

          v170 = sub_22766B380();
          v171 = sub_22766C8B0();
          if (os_log_type_enabled(v170, v171))
          {
            v172 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            v318[0] = v173;
            *v172 = 136446210;
            v174 = v301;
            sub_2274F5148(v294, v293);
            sub_227343E40(&qword_28139B258, MEMORY[0x277D53DA0], MEMORY[0x277D53DC0]);
            v175 = v305;
            v176 = sub_22766D140();
            v178 = v177;

            (v304)(v174, v175);
            v179 = sub_226E97AE8(v176, v178, v318);

            *(v172 + 4) = v179;
            _os_log_impl(&dword_226E8E000, v170, v171, "Found no SyncOperations for zone %{public}s", v172, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v173);
            MEMORY[0x22AA9A450](v173, -1, -1);
            MEMORY[0x22AA9A450](v172, -1, -1);

            v169 = v302;
          }

          else
          {

            v169 = v154;
          }
        }

        v180 = v291(v169, v306);
        v318[0] = v285;
        MEMORY[0x28223BE20](v180);
        v181 = v290;
        v182 = v289;
        *(&v279 - 2) = v290;
        *(&v279 - 1) = v182;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDA0, &qword_227681288);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        sub_226E9CFD0(&qword_281398E40, &qword_27D7BCDA0, &qword_227681288, MEMORY[0x277D83B68]);
        v184 = v300;
        v185 = sub_22766C240();

        v318[0] = v185;
        v186 = sub_22766C3D0();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v188 = swift_getWitnessTable();
        v189 = sub_22766C740();
        v190 = sub_2274F6F98(v189, v308, v294, v293);
        if (v184)
        {

          v105 = v296;
        }

        else
        {
          v315 = AssociatedConformanceWitness;
          v311 = v190;
          v318[0] = v190;
          MEMORY[0x28223BE20](v190);
          *(&v279 - 2) = v181;
          *(&v279 - 1) = v182;
          KeyPath = swift_getKeyPath();
          v312 = &v279;
          MEMORY[0x28223BE20](KeyPath);
          *(&v279 - 2) = v182;
          *(&v279 - 1) = v192;
          v193 = sub_22766C730();
          v309 = swift_getWitnessTable();
          v195 = sub_2274F47D0(sub_227343DB4, (&v279 - 4), v193, AssociatedTypeWitness, MEMORY[0x277D84A98], v309, MEMORY[0x277D84AC0], v194);
          v313 = 0;

          v318[0] = v195;
          v196 = MEMORY[0x22AA98950](v318, v189, AssociatedTypeWitness, v186, v315, v188);

          v197 = sub_22766C6F0();
          v310 = v193;
          if (v197)
          {

            v118 = v296;
            v117 = v307;
            v67 = v308;
            goto LABEL_82;
          }

          v199 = v299;
          sub_22766A6B0();

          v200 = sub_22766B380();
          v201 = sub_22766C8B0();
          v202 = os_log_type_enabled(v200, v201);
          v304 = v196;
          v303 = AssociatedTypeWitness;
          if (v202)
          {
            v203 = swift_slowAlloc();
            v204 = swift_slowAlloc();
            v318[0] = v204;
            *v203 = 136446210;
            v205 = sub_22766C610();
            v207 = v206;

            v208 = sub_226E97AE8(v205, v207, v318);

            *(v203 + 4) = v208;
            _os_log_impl(&dword_226E8E000, v200, v201, "Deleting orphaned sync operations: %{public}s", v203, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v204);
            MEMORY[0x22AA9A450](v204, -1, -1);
            MEMORY[0x22AA9A450](v203, -1, -1);
          }

          else
          {
          }

          v291(v199, v306);
          v209 = v290;
          v210 = v289;
          v211 = __swift_project_boxed_opaque_existential_0(v308, v308[3]);
          v212 = *v211;
          v213 = v211[1];
          v214 = *(v211 + 16);
          v215 = v211[3];
          v216 = swift_allocObject();
          v217 = v212;
          v218 = v213;

          sub_22766A070();
          v302 = v217;
          *(v216 + 16) = v217;
          *(v216 + 24) = v218;
          v301 = v218;
          LODWORD(v305) = v214;
          *(v216 + 32) = v214;
          v312 = v216;
          v306 = v215;
          *(v216 + 40) = v215;
          v219 = swift_getKeyPath();
          v318[0] = v304;
          MEMORY[0x28223BE20](v219);
          *(&v279 - 2) = v209;
          *(&v279 - 1) = v210;
          v220 = swift_getKeyPath();
          v221 = swift_allocObject();
          v221[2] = v209;
          v221[3] = v210;
          v221[4] = v220;
          MEMORY[0x28223BE20](v221);
          *(&v279 - 4) = v209;
          *(&v279 - 3) = v210;
          *(&v279 - 2) = sub_22734428C;
          *(&v279 - 1) = v222;
          v223 = sub_22766C730();

          v224 = swift_getWitnessTable();
          v225 = v313;
          v227 = sub_2274F47D0(sub_227343DE0, (&v279 - 6), v223, v288, MEMORY[0x277D84A98], v224, MEMORY[0x277D84AC0], v226);
          v313 = v225;

          v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
          v318[0] = v227;

          v228 = sub_22766C820();
          sub_226E93170(v318, &v316, &unk_27D7BC990, &qword_227670A30);
          v229 = v317;
          if (v317)
          {
            v230 = __swift_project_boxed_opaque_existential_0(&v316, v317);
            v231 = *(v229 - 8);
            v232 = MEMORY[0x28223BE20](v230);
            v234 = &v279 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v231 + 16))(v234, v232);
            v235 = sub_22766D170();
            (*(v231 + 8))(v234, v229);
            __swift_destroy_boxed_opaque_existential_0(&v316);
          }

          else
          {
            v235 = 0;
          }

          v236 = MEMORY[0x277D849A8];
          v237 = [v282 expressionForConstantValue_];
          swift_unknownObjectRelease();
          [objc_allocWithZone(v295) initWithLeftExpression:v228 rightExpression:v237 modifier:0 type:10 options:0];

          sub_226E97D1C(v318, &unk_27D7BC990, &qword_227670A30);
          v238 = qword_2813B2078;
          v239 = v312;
          swift_beginAccess();
          v240 = sub_22766A080();
          v242 = v241;
          MEMORY[0x22AA985C0]();
          if (*((*v242 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v242 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22766C360();
          }

          sub_22766C3A0();
          v240(v318, 0);
          swift_endAccess();

          swift_getKeyPath();
          v243 = sub_2276633C0();
          v319 = v236;
          LODWORD(v318[0]) = v243;

          v244 = sub_22766C820();
          sub_226E93170(v318, &v316, &unk_27D7BC990, &qword_227670A30);
          v245 = v317;
          if (v317)
          {
            v246 = __swift_project_boxed_opaque_existential_0(&v316, v317);
            v247 = *(v245 - 8);
            v248 = MEMORY[0x28223BE20](v246);
            v250 = &v279 - ((v249 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v247 + 16))(v250, v248);
            v251 = sub_22766D170();
            (*(v247 + 8))(v250, v245);
            __swift_destroy_boxed_opaque_existential_0(&v316);
          }

          else
          {
            v251 = 0;
          }

          v117 = v307;
          v67 = v308;
          v252 = [v282 expressionForConstantValue_];
          swift_unknownObjectRelease();
          v253 = [objc_allocWithZone(v295) initWithLeftExpression:v244 rightExpression:v252 modifier:0 type:4 options:0];

          sub_226E97D1C(v318, &unk_27D7BC990, &qword_227670A30);
          swift_beginAccess();
          v254 = v253;
          v255 = sub_22766A080();
          v257 = v256;
          MEMORY[0x22AA985C0]();
          if (*((*v257 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v257 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22766C360();
          }

          sub_22766C3A0();
          v255(v318, 0);
          swift_endAccess();

          v258 = sub_227542300(&v239[v238], v305, v306);
          if (v258)
          {
            v118 = v296;
            if (v258 == 1)
            {

              goto LABEL_82;
            }

            swift_willThrow();
          }

          else
          {
            v266 = v313;
            v267 = sub_22728497C(0);
            v118 = v296;
            if (!v266)
            {
              v114 = v267;
              [v267 setResultType_];
              sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
              v116 = sub_22766C9E0();
              v102 = 0;
              goto LABEL_94;
            }
          }

          swift_setDeallocating();
          v280(&v239[qword_2813B2078], v281);
          swift_deallocClassInstance();
          v105 = v118;
        }

        return sub_227343F70(v105, type metadata accessor for SyncEncryptionKey);
      }

      return result;
    }
  }

  v284 = v136;
  v283 = &v279;
  MEMORY[0x28223BE20](v137);
  v286 = &v279 - ((v114 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v286, v114);
  v310 = 0;
  v117 = 0;
  v118 = v102 + 56;
  v138 = 1 << *(v102 + 32);
  v139 = -1;
  if (v138 < 64)
  {
    v139 = ~(-1 << v138);
  }

  v140 = v139 & *(v102 + 56);
  v141 = (v138 + 63) >> 6;
  v313 = (v314 + 16);
  v142 = (v314 + 8);
  while (v140)
  {
    v144 = __clz(__rbit64(v140));
    v140 &= v140 - 1;
LABEL_48:
    v67 = v144 | (v117 << 6);
    (*(v314 + 16))(v312, *(v311 + 48) + *(v314 + 72) * v67, v315);
    sub_227664110();
    v147 = sub_2276640F0();
    v102 = v148;
    v150 = sub_2276640F0();
    v151 = v147;
    v114 = v149;
    if (v151 == v150 && v102 == v149)
    {

      v116 = (*v142)(v312, v315);
    }

    else
    {
      v143 = sub_22766D190();

      v116 = (*v142)(v312, v315);
      if ((v143 & 1) == 0)
      {
        continue;
      }
    }

    *&v286[(v67 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v67;
    v133 = __OFADD__(v310++, 1);
    if (v133)
    {
      __break(1u);
LABEL_54:
      v152 = v311;
      v314 = sub_227269674(v286, v284, v310, v311);
      goto LABEL_55;
    }
  }

  v145 = v117;
  while (1)
  {
    v117 = v145 + 1;
    if (__OFADD__(v145, 1))
    {
      break;
    }

    if (v117 >= v141)
    {
      goto LABEL_54;
    }

    v146 = *(v118 + 8 * v117);
    ++v145;
    if (v146)
    {
      v144 = __clz(__rbit64(v146));
      v140 = (v146 - 1) & v146;
      goto LABEL_48;
    }
  }

LABEL_93:
  __break(1u);
LABEL_94:
  v313 = v102;
  v275 = sub_226EDAB24(v116);

  sub_226EDAB78(v275, v301);

LABEL_82:
  v318[0] = v311;
  MEMORY[0x28223BE20](v198);
  *(&v279 - 4) = v118;
  *(&v279 - 3) = v117;
  *(&v279 - 2) = v67;
  v259 = sub_226E99364(0, &qword_281398A20, 0x277CBC5A0);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  v261 = v313;
  v262 = sub_2274F47D0(sub_227343DF8, (&v279 - 6), v310, v259, v260, v309, MEMORY[0x277D84950], &v316);

  if (v261)
  {

    v105 = v118;
    return sub_227343F70(v105, type metadata accessor for SyncEncryptionKey);
  }

  MEMORY[0x28223BE20](v263);
  *(&v279 - 4) = v118;
  *(&v279 - 3) = v117;
  *(&v279 - 2) = v67;
  sub_2275F15DC(sub_227343E1C, (&v279 - 6), v314);
  v265 = v264;

  v268 = sub_226F3E740(v262);

  v269 = sub_226F3E740(v265);

  sub_2276625E0();
  v271 = v270;
  v272 = v298;
  sub_2274F5148(v294, v293);
  v273 = type metadata accessor for SyncSubmissionChangeset(0);
  sub_227344180(v118, v272 + *(v273 + 20), type metadata accessor for SyncEncryptionKey);
  v274 = (v272 + *(v273 + 24));
  *v274 = v268;
  v274[1] = v269;
  v274[2] = v271;
  return sub_227343F70(v118, type metadata accessor for SyncEncryptionKey);
}

uint64_t sub_22733D388@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v59 = a1;
  v3 = v2;
  v57 = a2;
  v4 = *v2;
  v5 = sub_22766B390();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2276694E0();
  v7 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDB0, &unk_227681330);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  __swift_project_boxed_opaque_existential_0(v3 + 7, v3[10]);
  v19 = type metadata accessor for ServerSyncZoneCoordinator(0, *(v4 + 80), *(v4 + 88), v18);
  WitnessTable = swift_getWitnessTable();
  sub_2274F5148(v19, WitnessTable);
  v21 = v60;
  sub_22712C328(v59, v17);
  if (v21)
  {
    return (*(v7 + 8))(v11, v61);
  }

  v53 = v3;
  v59 = WitnessTable;
  v60 = v19;
  v23 = v57;
  v24 = v58;
  v25 = v11;
  v26 = *(v7 + 8);
  v27 = v61;
  v26(v25, v61);
  sub_226E93170(v17, v14, &qword_27D7BCDB0, &unk_227681330);
  v28 = type metadata accessor for SyncEncryptionKey(0);
  if ((*(*(v28 - 8) + 48))(v14, 1, v28) == 1)
  {
    v51 = v26;
    v52 = v7 + 8;
    v57 = v17;
    sub_226E97D1C(v14, &qword_27D7BCDB0, &unk_227681330);
    sub_22766A6B0();

    v29 = sub_22766B380();
    v30 = sub_22766C890();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v50 = v7;
      v32 = v31;
      v33 = swift_slowAlloc();
      v62 = v33;
      *v32 = 136446210;
      v34 = v54;
      sub_2274F5148(v60, v59);
      sub_227343E40(&qword_28139B258, MEMORY[0x277D53DA0], MEMORY[0x277D53DC0]);
      v35 = sub_22766D140();
      v37 = v36;

      v38 = v34;
      v39 = v51;
      v51(v38, v27);
      v40 = sub_226E97AE8(v35, v37, &v62);

      *(v32 + 4) = v40;
      _os_log_impl(&dword_226E8E000, v29, v30, "Zone %{public}s doesn't have a saved encryption key.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AA9A450](v33, -1, -1);
      v41 = v32;
      v7 = v50;
      MEMORY[0x22AA9A450](v41, -1, -1);

      v42 = v60;
      (*(v55 + 8))(v58, v56);
    }

    else
    {

      (*(v55 + 8))(v24, v56);
      v42 = v60;
      v39 = v51;
    }

    v43 = sub_22766AF20();
    sub_227343E40(&unk_281399230, MEMORY[0x277D544D0], MEMORY[0x277D544D8]);
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAED8, &qword_227679968);
    v46 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_227670CD0;
    sub_2274F5148(v42, v59);
    v48 = sub_226F4A7D0(v47);
    swift_setDeallocating();
    v39(v47 + v46, v61);
    swift_deallocClassInstance();
    *v45 = v48;
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D544B0], v43);
    swift_willThrow();
    return sub_226E97D1C(v57, &qword_27D7BCDB0, &unk_227681330);
  }

  else
  {
    sub_226E97D1C(v17, &qword_27D7BCDB0, &unk_227681330);
    return sub_227343E88(v14, v23, type metadata accessor for SyncEncryptionKey);
  }
}

uint64_t sub_22733DA34(uint64_t a1, uint64_t a2)
{
  sub_227664110();
  v2 = sub_2276640F0();
  v4 = v3;
  if (v2 == sub_2276640F0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22766D190();
  }

  return v7 & 1;
}

uint64_t sub_22733DACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_2276640C0();
  swift_getAssociatedConformanceWitness();
  return sub_22766D160();
}

uint64_t sub_22733DB84@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_22766D140();
  *a3 = result;
  a3[1] = v5;
  return result;
}

int *sub_22733DC14(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v48 = a5;
  v42 = *a4;
  v43 = a4;
  v8 = type metadata accessor for SyncChangeTag(0);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276694E0();
  v41 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v44 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDA8, &qword_227681328);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v47 = &v36 - v17;
  v18 = type metadata accessor for SyncEncryptionKey(0);
  v19 = (v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227344180(a3, v21, type metadata accessor for SyncEncryptionKey);
  v22 = &v21[v19[7]];
  v45 = a1;
  v46 = a2;
  v23 = v49;
  sub_22739BEAC(v22, a1, a2);
  if (v23)
  {
    sub_227343F70(v21, type metadata accessor for SyncEncryptionKey);
  }

  else
  {
    v38 = v15;
    v39 = v8;
    v24 = v41;
    v49 = v11;
    v37 = v10;
    sub_226E99364(0, &qword_281398A20, 0x277CBC5A0);
    sub_226E99364(0, &qword_281398B10, 0x277CBC5F8);
    sub_2276694C0();
    sub_22766C000();
    v25 = sub_22766C8F0();
    sub_226E99364(0, &qword_281398B90, 0x277CBC5D0);
    v26 = v25;
    sub_22766C7E0();
    sub_22766AFA0();
    v19 = sub_22766CAF0();

    sub_227343F70(v21, type metadata accessor for SyncEncryptionKey);
    __swift_project_boxed_opaque_existential_0(v43 + 7, v43[10]);
    v28 = type metadata accessor for ServerSyncZoneCoordinator(0, *(v42 + 80), *(v42 + 88), v27);
    WitnessTable = swift_getWitnessTable();
    v30 = v44;
    sub_2274F5148(v28, WitnessTable);
    v31 = v47;
    sub_22712C75C(v45, v46, v30, v48, v47);
    (*(v24 + 8))(v30, v49);
    v32 = v38;
    sub_226E93170(v31, v38, &qword_27D7BCDA8, &qword_227681328);
    if ((*(v40 + 48))(v32, 1, v39) == 1)
    {
      sub_226E97D1C(v31, &qword_27D7BCDA8, &qword_227681328);
      sub_226E97D1C(v32, &qword_27D7BCDA8, &qword_227681328);
    }

    else
    {
      v33 = v37;
      sub_227343E88(v32, v37, type metadata accessor for SyncChangeTag);
      v34 = sub_22766BFD0();
      [v19 setEtag_];

      sub_226E97D1C(v31, &qword_27D7BCDA8, &qword_227681328);
      sub_227343F70(v33, type metadata accessor for SyncChangeTag);
    }
  }

  return v19;
}

void sub_22733E164(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, int **a6@<X8>)
{
  v37 = a5;
  v38 = a2;
  v39 = a4;
  v32 = a6;
  v8 = *a3;
  v9 = sub_22766AF40();
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 88);
  v12 = *(v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v31 - v16;
  v18 = *(v11 + 104);
  v36 = a1;
  v18(v12, v11, v15);
  swift_getAssociatedConformanceWitness();
  v19 = sub_22766D140();
  v21 = v20;
  (*(v14 + 8))(v17, AssociatedTypeWitness);
  v22 = ObjectType;
  v23 = sub_22733DC14(v19, v21, v38, a3, v39);
  if (v22)
  {

    *v37 = v22;
  }

  else
  {
    v24 = v23;
    v26 = v33;
    v25 = v34;
    v27 = v35;

    v28 = sub_227667700();
    v30 = v29;
    [v24 encryptedValues];
    ObjectType = swift_getObjectType();
    (*(v25 + 104))(v26, *MEMORY[0x277D544E8], v27);
    v39 = sub_22766AF30();
    (*(v25 + 8))(v26, v27);
    v42 = MEMORY[0x277CC9318];
    v43 = MEMORY[0x277CBBBE0];
    v40 = v28;
    v41 = v30;
    sub_226F5E0B4(v28, v30);
    sub_22766C9F0();
    sub_226EDC420(v28, v30);
    swift_unknownObjectRelease();
    *v32 = v24;
  }
}

uint64_t sub_22733E4B8@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, int **a5@<X8>)
{
  v11 = sub_2276640C0();
  v13 = sub_22733DC14(v11, v12, a1, a2, a3);
  if (v5)
  {

    *a4 = v5;
  }

  else
  {
    v15 = v13;

    *a5 = v15;
  }

  return result;
}

uint64_t sub_22733E554(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 96) = v3;
  *(v4 + 88) = a3;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;
  v5 = *v3;
  v6 = sub_22766B390();
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 64) = v3;
  v7 = swift_task_alloc();
  *(v4 + 128) = v7;
  v8 = *(v5 + 80);
  *(v4 + 136) = v8;
  v9 = *(v5 + 88);
  *(v4 + 144) = v9;
  v11 = type metadata accessor for ServerSyncZoneCoordinator(0, v8, v9, v10);
  *(v4 + 152) = v11;
  WitnessTable = swift_getWitnessTable();
  *(v4 + 160) = WitnessTable;
  *v7 = v4;
  v7[1] = sub_22733E6CC;

  return sub_2274F51E4(v11, WitnessTable);
}

uint64_t sub_22733E6CC(char a1)
{
  *(*v1 + 201) = a1;

  return MEMORY[0x2822009F8](sub_22733E7CC, 0, 0);
}

uint64_t sub_22733E7CC(uint64_t a1)
{
  v35 = v1;
  if (*(v1 + 201) == 1)
  {
    sub_22766A6B0();

    v2 = sub_22766B380();
    v3 = sub_22766C870();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v1 + 152);
      v4 = *(v1 + 160);
      v7 = *(v1 + 112);
      v6 = *(v1 + 120);
      v8 = *(v1 + 104);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136446210;
      v11 = sub_2274F6F4C(v5, v4);
      v13 = sub_226E97AE8(v11, v12, &v34);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_226E8E000, v2, v3, "Applying SyncRecordChangeset for %{public}s Type.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA9A450](v10, -1, -1);
      MEMORY[0x22AA9A450](v9, -1, -1);

      (*(v7 + 8))(v6, v8);
    }

    else
    {
      v18 = *(v1 + 112);
      v17 = *(v1 + 120);
      v19 = *(v1 + 104);

      (*(v18 + 8))(v17, v19);
    }

    v32 = *(v1 + 136);
    v33 = *(v1 + 144);
    v20 = *(v1 + 96);
    v21 = *(v1 + 88);
    v23 = *(v1 + 72);
    v22 = *(v1 + 80);
    __swift_project_boxed_opaque_existential_0(v20 + 15, v20[18]);
    *(v1 + 200) = 11;
    sub_226F19410();
    sub_226F19464();
    sub_22766A130();
    v24 = v20[5];
    v25 = v20[6];
    __swift_project_boxed_opaque_existential_0(v20 + 2, v24);
    v26 = swift_allocObject();
    *(v1 + 168) = v26;
    v26[2] = v20;
    v26[3] = v23;
    v26[4] = v22;
    v26[5] = v21;
    v27 = *(v25 + 24);

    v31 = (v27 + *v27);
    v28 = swift_task_alloc();
    *(v1 + 176) = v28;
    *(v1 + 184) = type metadata accessor for SyncablesUpdated(255, v32, v33, v29);
    v30 = sub_22766CB90();
    *v28 = v1;
    v28[1] = sub_22733EBF0;

    return (v31)(v1 + 16, sub_2273441E8, v26, v30, v24, v25);
  }

  else
  {
    sub_226F1893C();
    swift_allocError();
    *v14 = 10;
    swift_willThrow();

    v15 = *(v1 + 8);

    return v15();
  }
}

uint64_t sub_22733EBF0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_22733EE3C;
  }

  else
  {

    v2 = sub_22733ED0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22733ED0C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    swift_getObjectType();
    *(v0 + 40) = v1;
    *(v0 + 48) = v2;
    *(v0 + 56) = v3;
    swift_getWitnessTable();
    sub_2276699D0();
  }

  sub_2273420C0(*(v0 + 96), 11, 143, 0x627553796C707061, 0xEF293A5F2874696DLL);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22733EE3C()
{
  v1 = *(v0 + 96);

  sub_2273420C0(v1, 11, 143, 0x627553796C707061, 0xEF293A5F2874696DLL);

  v2 = *(v0 + 8);

  return v2();
}

void sub_22733EEDC(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>)
{
  v62 = a5;
  v74 = *a2;
  v12 = sub_2276694E0();
  v77 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for SyncEncryptionKey(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a2;
  sub_22733D388(a1, v17);
  if (!v6)
  {
    v70 = v15;
    v66 = v14;
    v67 = v12;

    v71 = a4;
    v73 = a3;
    sub_2273FB618(v18, a3);
    v20 = v19;
    if ((v19 & 0xC000000000000001) != 0)
    {
      sub_22766CCE0();
      sub_226E99364(0, &qword_281398A20, 0x277CBC5A0);
      sub_22734420C();
      sub_22766C700();
      v20 = v80[5];
      v21 = v80[6];
      v22 = v80[7];
      v23 = v80[8];
      v24 = v80[9];
    }

    else
    {
      v23 = 0;
      v25 = -1 << *(v19 + 32);
      v21 = v19 + 56;
      v26 = ~v25;
      v27 = -v25;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v24 = v28 & *(v19 + 56);
      v22 = v26;
    }

    v29 = v17;
    v61 = v22;
    v30 = (v22 + 64) >> 6;
    v65 = (v77 + 8);
    v68 = a1;
    v31 = v73;
    v64 = v30;
    v69 = v21;
    if (v20 < 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v32 = v23;
    v33 = v24;
    v34 = v23;
    v35 = v71;
    if (v24)
    {
LABEL_13:
      v72 = v24;
      v36 = (v33 - 1) & v33;
      v37 = *(*(v20 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));
      if (v37)
      {
        while (1)
        {
          v63 = v23;
          sub_226E91B50((v76 + 7), v80);
          __swift_project_boxed_opaque_existential_0(v80, v80[3]);
          v77 = v37;
          v39 = [v37 recordID];
          v40 = [v39 recordName];

          v41 = sub_22766C000();
          v43 = v42;

          sub_22739C5E8(v29 + *(v70 + 20), v41, v43);

          sub_22766D160();
          v45 = v79;
          if (!v79)
          {
            sub_226F1893C();
            swift_allocError();
            *v60 = 16;
            swift_willThrow();

            sub_226EBB21C(v20);
            sub_227343F70(v29, type metadata accessor for SyncEncryptionKey);
            __swift_destroy_boxed_opaque_existential_0(v80);
            return;
          }

          v75 = 0;
          v46 = v29;
          v47 = v78;
          v48 = type metadata accessor for ServerSyncZoneCoordinator(0, *(v74 + 80), *(v74 + 88), v44);
          WitnessTable = swift_getWitnessTable();
          v50 = v48;
          v51 = v66;
          sub_2274F5148(v50, WitnessTable);
          v52 = v47;
          a1 = v68;
          v53 = v75;
          sub_22712D728(v52, v45, v51, v68, a6);
          if (v53)
          {

            sub_226EBB21C(v20);
            (*v65)(v51, v67);
            sub_227343F70(v46, type metadata accessor for SyncEncryptionKey);
            __swift_destroy_boxed_opaque_existential_0(v80);
            return;
          }

          (*v65)(v51, v67);

          __swift_destroy_boxed_opaque_existential_0(v80);
          v23 = v34;
          v24 = v36;
          v29 = v46;
          v31 = v73;
          v21 = v69;
          v30 = v64;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_15:
          v72 = v24;
          v38 = sub_22766CD50();
          if (!v38)
          {
            break;
          }

          v78 = v38;
          sub_226E99364(0, &qword_281398A20, 0x277CBC5A0);
          swift_dynamicCast();
          v37 = v80[0];
          v34 = v23;
          v35 = v71;
          v36 = v72;
          if (!v80[0])
          {
            goto LABEL_23;
          }
        }

        v35 = v71;
      }

      else
      {
LABEL_23:
        a1 = v68;
        v31 = v73;
      }

LABEL_22:
      sub_226EBB21C(v20);
      v54 = sub_22733F5B0(v31, v35, a1);
      v56 = v55;
      v58 = v57;
      sub_227343F70(v29, type metadata accessor for SyncEncryptionKey);
      v59 = v62;
      *v62 = v54;
      v59[1] = v56;
      v59[2] = v58;
    }

    else
    {
      while (1)
      {
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v34 >= v30)
        {
          v31 = v73;
          goto LABEL_22;
        }

        v33 = *(v21 + 8 * v34);
        ++v32;
        if (v33)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

char *sub_22733F5B0(uint64_t *a1, uint64_t *a2, void *a3)
{
  v244 = a2;
  v245 = a1;
  v6 = *v3;
  v7 = sub_2276694E0();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = v212 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (v212 - v12);
  v14 = type metadata accessor for SyncEncryptionKey(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v212 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22733D388(a3, v16);
  if (v4)
  {
    return v6;
  }

  v237 = v13;
  v238 = v7;
  v235 = v10;
  v236 = v3;
  v239 = a3;
  v240 = v8;
  v242 = v212;
  v248 = v245;
  MEMORY[0x28223BE20](v245);
  v17 = *(v6 + 10);
  v18 = *(v6 + 11);
  v212[-4] = v17;
  v212[-3] = v18;
  v212[-2] = v16;
  MEMORY[0x28223BE20](v19);
  v241 = 0;
  v212[-4] = v17;
  v212[-3] = v18;
  v212[-2] = sub_227343FD0;
  v212[-1] = v20;

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDB8, &qword_227681350);
  v243 = v16;
  v22 = v21;
  sub_226E99364(255, &qword_281398A20, 0x277CBC5A0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  v26 = sub_226E9CFD0(&qword_281398BB0, &qword_27D7BCDB8, &qword_227681350, MEMORY[0x277D83B78]);
  v27 = v22;
  v28 = v241;
  v29 = sub_2274F47D0(sub_227343FF0, &v212[-6], v22, TupleTypeMetadata2, v25, v26, MEMORY[0x277D84950], &v246);
  if (v28)
  {

    v6 = v246;
    v30 = v243;
LABEL_6:
    sub_227343F70(v30, type metadata accessor for SyncEncryptionKey);
    return v6;
  }

  v232 = TupleTypeMetadata2;
  v241 = v29;
  v234 = 0;

  v245 = v212;
  v248 = v244;
  MEMORY[0x28223BE20](v31);
  v212[-4] = v17;
  v212[-3] = v18;
  v32 = v243;
  v212[-2] = v243;

  v33 = v234;
  v34 = sub_2274F47D0(sub_227344014, &v212[-6], v27, AssociatedTypeWitness, v25, v26, MEMORY[0x277D84950], &v246);
  if (v33)
  {

    v6 = v246;
    v30 = v32;
    goto LABEL_6;
  }

  v36 = v34;
  v37 = AssociatedTypeWitness;
  v244 = 0;

  v248 = v36;
  v38 = sub_22766C3D0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v41 = sub_22766C740();
  v233 = v18;
  v42 = v41;
  v242 = v212;
  v248 = v241;
  MEMORY[0x28223BE20](v41);
  v212[-2] = v17;
  v212[-1] = v43;
  v44 = sub_22766C3D0();
  v45 = swift_getWitnessTable();
  v228 = v44;
  v46 = v244;
  v48 = sub_2274F47D0(sub_227344038, &v212[-4], v44, v37, MEMORY[0x277D84A98], v45, MEMORY[0x277D84AC0], v47);
  v245 = v46;
  v248 = v48;
  v221 = v38;
  v219 = WitnessTable;
  sub_22766C740();
  v248 = v42;
  v49 = sub_22766C730();
  v234 = v42;

  swift_getWitnessTable();
  v227 = v37;
  v220 = AssociatedConformanceWitness;
  v50 = sub_22766C6C0();
  v51 = __swift_project_boxed_opaque_existential_0(v239, v239[3]);
  v52 = *v51;
  v53 = v51[1];
  LOBYTE(v37) = *(v51 + 16);
  v54 = v51[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB328, &unk_227681200);
  v55 = swift_allocObject();
  v56 = v52;
  v57 = v53;

  sub_22766A070();
  *(v55 + 16) = v56;
  *(v55 + 24) = v57;
  *(v55 + 32) = v37;
  v229 = v55;
  *(v55 + 40) = v54;
  KeyPath = swift_getKeyPath();
  v248 = v50;
  MEMORY[0x28223BE20](KeyPath);
  v59 = v233;
  v212[-2] = v17;
  v212[-1] = v59;
  v60 = swift_getKeyPath();
  v61 = swift_allocObject();
  v61[2] = v17;
  v61[3] = v59;
  v61[4] = v60;
  MEMORY[0x28223BE20](v61);
  v231 = v17;
  v212[-4] = v17;
  v212[-3] = v62;
  v212[-2] = sub_22734428C;
  v212[-1] = v63;

  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v65 = swift_getWitnessTable();
  v225 = v49;
  v242 = v64;
  v224 = v65;
  v66 = v245;
  v68 = sub_2274F47D0(sub_227344274, &v212[-6], v49, v64, MEMORY[0x277D84A98], v65, MEMORY[0x277D84AC0], v67);
  v232 = v66;

  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v250 = v223;
  v248 = v68;
  v69 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v230 = KeyPath;
  v245 = v69;
  v70 = sub_22766C820();
  sub_226E93170(&v248, &v246, &unk_27D7BC990, &qword_227670A30);
  v71 = v247;
  if (v247)
  {
    v72 = __swift_project_boxed_opaque_existential_0(&v246, v247);
    v73 = *(v71 - 8);
    v74 = MEMORY[0x28223BE20](v72);
    v76 = v212 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v76, v74);
    v77 = sub_22766D170();
    (*(v73 + 8))(v76, v71);
    __swift_destroy_boxed_opaque_existential_0(&v246);
  }

  else
  {
    v77 = 0;
  }

  v78 = v237;
  v244 = objc_opt_self();
  v79 = [v244 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB330, qword_227681240);
  [objc_allocWithZone(v80) initWithLeftExpression:v70 rightExpression:v79 modifier:0 type:10 options:0];

  sub_226E97D1C(&v248, &unk_27D7BC990, &qword_227670A30);
  v81 = v229;
  swift_beginAccess();
  v82 = sub_22766A080();
  v84 = v83;
  MEMORY[0x22AA985C0]();
  v85 = *((*v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v86 = *((*v84 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v87 = v233;
  v237 = v80;
  if (v85 >= v86 >> 1)
  {
    sub_22766C360();
    v80 = v237;
  }

  sub_22766C3A0();
  v82(&v248, 0);
  swift_endAccess();

  swift_getKeyPath();
  v89 = type metadata accessor for ServerSyncZoneCoordinator(0, v231, v87, v88);
  v90 = swift_getWitnessTable();
  v230 = v89;
  v226 = v90;
  sub_2274F5148(v89, v90);
  v91 = sub_2276694C0();
  v93 = v92;
  v94 = *(v240 + 8);
  v240 += 8;
  v222 = v94;
  v94(v78, v238);
  v250 = v242;
  v248 = v91;
  v249 = v93;

  v95 = sub_22766C820();
  sub_226E93170(&v248, &v246, &unk_27D7BC990, &qword_227670A30);
  v96 = v247;
  if (v247)
  {
    v97 = __swift_project_boxed_opaque_existential_0(&v246, v247);
    v98 = *(v96 - 8);
    v99 = MEMORY[0x28223BE20](v97);
    v101 = v212 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v98 + 16))(v101, v99);
    v102 = sub_22766D170();
    v103 = v101;
    v80 = v237;
    (*(v98 + 8))(v103, v96);
    __swift_destroy_boxed_opaque_existential_0(&v246);
  }

  else
  {
    v102 = 0;
  }

  v104 = [v244 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v105 = [objc_allocWithZone(v80) initWithLeftExpression:v95 rightExpression:v104 modifier:0 type:4 options:0];

  sub_226E97D1C(&v248, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v106 = v105;
  v107 = sub_22766A080();
  v109 = v108;
  MEMORY[0x22AA985C0]();
  if (*((*v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
    v80 = v237;
  }

  sub_22766C3A0();
  v107(&v248, 0);
  swift_endAccess();

  swift_getKeyPath();
  v110 = sub_2276633C0();
  v250 = MEMORY[0x277D849A8];
  LODWORD(v248) = v110;

  v111 = sub_22766C820();
  sub_226E93170(&v248, &v246, &unk_27D7BC990, &qword_227670A30);
  v112 = v247;
  if (v247)
  {
    v113 = __swift_project_boxed_opaque_existential_0(&v246, v247);
    v114 = *(v112 - 8);
    v115 = MEMORY[0x28223BE20](v113);
    v117 = v212 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v114 + 16))(v117, v115);
    v118 = sub_22766D170();
    v119 = v117;
    v80 = v237;
    (*(v114 + 8))(v119, v112);
    __swift_destroy_boxed_opaque_existential_0(&v246);
  }

  else
  {
    v118 = 0;
  }

  v120 = v233;
  v121 = [v244 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v122 = [objc_allocWithZone(v80) initWithLeftExpression:v111 rightExpression:v121 modifier:0 type:4 options:0];

  sub_226E97D1C(&v248, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v123 = v122;
  v124 = sub_22766A080();
  v126 = v125;
  MEMORY[0x22AA985C0]();
  if (*((*v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v124(&v248, 0);
  swift_endAccess();

  v127 = swift_getKeyPath();
  v128 = v232;
  sub_2273FCA18(v127);
  v130 = v243;
  if (v128)
  {

    swift_setDeallocating();

    v6 = qword_2813B2078;
    v131 = sub_22766A100();
    (*(*(v131 - 8) + 8))(&v6[v81], v131);
    swift_deallocClassInstance();
    sub_227343F70(v130, type metadata accessor for SyncEncryptionKey);
    return v6;
  }

  v132 = sub_226F3E6A8(v129);

  swift_setDeallocating();

  v133 = qword_2813B2078;
  v134 = sub_22766A100();
  v135 = *(v134 - 8);
  v136 = *(v135 + 8);
  v232 = v134;
  v218 = v136;
  v237 = (v135 + 8);
  (v136)(v81 + v133);
  v137 = swift_deallocClassInstance();
  v248 = v132;
  MEMORY[0x28223BE20](v137);
  v138 = v231;
  v212[-2] = v231;
  v212[-1] = v120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  sub_226E9CFD0(&qword_281398BB8, &qword_27D7B94F0, &unk_227670BA0, MEMORY[0x277D83B68]);
  v139 = sub_22766C240();

  v248 = v241;
  MEMORY[0x28223BE20](v140);
  v141 = v239;
  v212[-2] = v236;
  v212[-1] = v141;
  MEMORY[0x28223BE20](v142);
  v212[-4] = v138;
  v212[-3] = v120;
  v212[-2] = sub_227344074;
  v212[-1] = v143;
  v144 = swift_getWitnessTable();
  sub_22766C270();
  v212[1] = v144;
  v217 = v139;
  v145 = __swift_project_boxed_opaque_existential_0(v141, v141[3]);
  v146 = *v145;
  v229 = v145[1];
  v147 = v120;
  v148 = *(v145 + 16);
  v149 = v145[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB318, &qword_22767A380);
  v150 = swift_allocObject();
  v151 = v146;
  v152 = v229;

  sub_22766A070();
  v214 = v151;
  *(v150 + 16) = v151;
  *(v150 + 24) = v152;
  v213 = v152;
  v216 = v148;
  *(v150 + 32) = v148;
  v229 = v149;
  v215 = v150;
  *(v150 + 40) = v149;
  v153 = swift_getKeyPath();
  v248 = v234;
  MEMORY[0x28223BE20](v153);
  v154 = v231;
  v212[-2] = v231;
  v212[-1] = v147;
  v155 = swift_getKeyPath();
  v156 = swift_allocObject();
  v156[2] = v154;
  v156[3] = v147;
  v156[4] = v155;
  MEMORY[0x28223BE20](v156);
  v212[-4] = v154;
  v212[-3] = v147;
  v212[-2] = sub_2273440B0;
  v212[-1] = v157;

  v159 = sub_2274F47D0(sub_227344274, &v212[-6], v225, v242, MEMORY[0x277D84A98], v224, MEMORY[0x277D84AC0], v158);
  v225 = 0;

  v250 = v223;
  v248 = v159;

  v160 = sub_22766C820();
  sub_226E93170(&v248, &v246, &unk_27D7BC990, &qword_227670A30);
  v161 = v247;
  if (v247)
  {
    v162 = __swift_project_boxed_opaque_existential_0(&v246, v247);
    v163 = *(v161 - 8);
    v164 = MEMORY[0x28223BE20](v162);
    v166 = v212 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v163 + 16))(v166, v164);
    v167 = sub_22766D170();
    (*(v163 + 8))(v166, v161);
    __swift_destroy_boxed_opaque_existential_0(&v246);
  }

  else
  {
    v167 = 0;
  }

  v168 = v238;
  v169 = v235;
  v170 = [v244 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB320, qword_22767A3B0);
  [objc_allocWithZone(v238) initWithLeftExpression:v160 rightExpression:v170 modifier:0 type:10 options:0];

  sub_226E97D1C(&v248, &unk_27D7BC990, &qword_227670A30);
  v171 = qword_2813B2078;
  v172 = v215;
  swift_beginAccess();
  v173 = sub_22766A080();
  v175 = v174;
  MEMORY[0x22AA985C0]();
  if (*((*v175 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v235 = *((*v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v173(&v248, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_2274F5148(v230, v226);
  v176 = sub_2276694C0();
  v178 = v177;
  v222(v169, v168);
  v250 = v242;
  v248 = v176;
  v249 = v178;

  v179 = sub_22766C820();
  sub_226E93170(&v248, &v246, &unk_27D7BC990, &qword_227670A30);
  v180 = v247;
  if (v247)
  {
    v181 = __swift_project_boxed_opaque_existential_0(&v246, v247);
    v182 = *(v180 - 8);
    v183 = MEMORY[0x28223BE20](v181);
    v185 = v212 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v182 + 16))(v185, v183);
    v186 = sub_22766D170();
    (*(v182 + 8))(v185, v180);
    v187 = v233;
    __swift_destroy_boxed_opaque_existential_0(&v246);
  }

  else
  {
    v186 = 0;
    v187 = v233;
  }

  v188 = v218;
  v189 = [v244 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v190 = [objc_allocWithZone(v238) initWithLeftExpression:v179 rightExpression:v189 modifier:0 type:4 options:0];

  sub_226E97D1C(&v248, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v6 = v190;
  v191 = sub_22766A080();
  v193 = v192;
  MEMORY[0x22AA985C0]();
  if (*((*v193 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v193 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v191(&v248, 0);
  swift_endAccess();

  v194 = sub_227542348(v172 + v171, v216, v229);
  if (!v194)
  {
    v203 = v225;
    v204 = sub_2272847E4(0);
    v195 = v243;
    v196 = v232;
    if (!v203)
    {
      v209 = v204;
      [v204 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v210 = sub_22766C9E0();
      v225 = 0;
      v211 = sub_226EDAB24(v210);

      sub_226EDAB78(v211, v213);

      v187 = v233;
      goto LABEL_38;
    }

LABEL_44:

    swift_setDeallocating();
    v188(v172 + qword_2813B2078, v196);
    swift_deallocClassInstance();
    v30 = v195;
    goto LABEL_6;
  }

  v195 = v243;
  v196 = v232;
  if (v194 != 1)
  {
    v6 = v194;
    swift_willThrow();

    goto LABEL_44;
  }

LABEL_38:
  v248 = v241;
  MEMORY[0x28223BE20](v197);
  v198 = v231;
  v212[-4] = v231;
  v212[-3] = v187;
  v199 = v217;
  v212[-2] = v217;
  swift_getWitnessTable();
  v200 = v225;
  v6 = sub_22766CEF0();
  v248 = v6;
  MEMORY[0x28223BE20](v6);
  v212[-4] = v198;
  v212[-3] = v187;
  v201 = v236;
  v212[-2] = sub_227344144;
  v212[-1] = v201;
  v202 = sub_22766C240();
  if (v200)
  {
  }

  else
  {
    v205 = v202;

    v248 = v199;
    v206 = MEMORY[0x22AA98950](&v248, v234, v227, v221, v220, v219);

    v248 = v201;
    v246 = v205;
    sub_22766C3D0();
    swift_getWitnessTable();
    v207 = sub_22766C740();
    sub_2274F54D0(v207, v206, v239, v230, v226);
    v6 = v208;
  }

  sub_227343F70(v195, type metadata accessor for SyncEncryptionKey);
  return v6;
}

uint64_t sub_227341488(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = *v1;
  v4 = *(type metadata accessor for SyncZoneChangeset(0) - 8);
  v2[15] = v4;
  v2[16] = *(v4 + 64);
  v2[17] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[11] = v1;
  v6 = swift_task_alloc();
  v2[22] = v6;
  v7 = *(v3 + 80);
  v2[23] = v7;
  v8 = *(v3 + 88);
  v2[24] = v8;
  v10 = type metadata accessor for ServerSyncZoneCoordinator(0, v7, v8, v9);
  v2[25] = v10;
  WitnessTable = swift_getWitnessTable();
  v2[26] = WitnessTable;
  *v6 = v2;
  v6[1] = sub_227341664;

  return sub_2274F51E4(v10, WitnessTable);
}

uint64_t sub_227341664(char a1)
{
  *(*v1 + 257) = a1;

  return MEMORY[0x2822009F8](sub_227341764, 0, 0);
}

uint64_t sub_227341764(uint64_t a1)
{
  v37 = v1;
  if (*(v1 + 257) == 1)
  {
    sub_22766A6B0();

    v2 = sub_22766B380();
    v3 = sub_22766C870();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v1 + 200);
      v4 = *(v1 + 208);
      v6 = *(v1 + 168);
      v7 = *(v1 + 144);
      v8 = *(v1 + 152);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = v10;
      *v9 = 136446210;
      v11 = sub_2274F6F4C(v5, v4);
      v13 = sub_226E97AE8(v11, v12, &v36);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_226E8E000, v2, v3, "Applying SyncZoneChangeset for %{public}s Type.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA9A450](v10, -1, -1);
      MEMORY[0x22AA9A450](v9, -1, -1);

      v14 = *(v8 + 8);
      v14(v6, v7);
    }

    else
    {
      v18 = *(v1 + 168);
      v19 = *(v1 + 144);
      v20 = *(v1 + 152);

      v14 = *(v20 + 8);
      v14(v18, v19);
    }

    *(v1 + 216) = v14;
    v34 = *(v1 + 184);
    v35 = *(v1 + 192);
    v21 = *(v1 + 136);
    v23 = *(v1 + 112);
    v22 = *(v1 + 120);
    v24 = *(v1 + 104);
    __swift_project_boxed_opaque_existential_0(v23 + 15, v23[18]);
    *(v1 + 256) = 12;
    sub_226F19410();
    sub_226F19464();
    sub_22766A130();
    v25 = v23[5];
    v26 = v23[6];
    __swift_project_boxed_opaque_existential_0(v23 + 2, v25);
    sub_227344180(v24, v21, type metadata accessor for SyncZoneChangeset);
    v27 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v28 = swift_allocObject();
    *(v1 + 224) = v28;
    v28[2] = v34;
    v28[3] = v35;
    v28[4] = v23;
    sub_227343E88(v21, v28 + v27, type metadata accessor for SyncZoneChangeset);
    v29 = *(v26 + 24);

    v33 = (v29 + *v29);
    v30 = swift_task_alloc();
    *(v1 + 232) = v30;
    *(v1 + 240) = type metadata accessor for SyncablesUpdated(255, v34, v35, v31);
    v32 = sub_22766CB90();
    *v30 = v1;
    v30[1] = sub_227341BDC;

    return (v33)(v1 + 16, sub_227343EF0, v28, v32, v25, v26);
  }

  else
  {
    sub_226F1893C();
    swift_allocError();
    *v15 = 10;
    swift_willThrow();

    v16 = *(v1 + 8);

    return v16();
  }
}

uint64_t sub_227341BDC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_227341E3C;
  }

  else
  {

    v2 = sub_227341CF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227341CF8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    swift_getObjectType();
    *(v0 + 64) = v1;
    *(v0 + 72) = v2;
    *(v0 + 80) = v3;
    swift_getWitnessTable();
    sub_2276699D0();
  }

  sub_2273420C0(*(v0 + 112), 12, 177, 0x746546796C707061, 0xEE00293A5F286863);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_227341E3C()
{
  v25 = v0;
  v1 = v0[31];
  v2 = v0[14];

  sub_2273420C0(v2, 12, 177, 0x746546796C707061, 0xEE00293A5F286863);
  sub_22766A6B0();

  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = v0[25];
    v22 = v0[20];
    v23 = v0[27];
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    *v9 = 136446466;
    v11 = sub_2274F6F4C(v7, v6);
    v13 = sub_226E97AE8(v11, v12, v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v14 = MEMORY[0x22AA995D0](v0[6], v0[7]);
    v16 = sub_226E97AE8(v14, v15, v24);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to apply fetch in zone %{public}s due to error: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v23(v22, v8);
  }

  else
  {
    v17 = v0[27];
    v18 = v0[20];
    v19 = v0[18];

    v17(v18, v19);
  }

  swift_willThrow();

  v20 = v0[1];

  return v20();
}