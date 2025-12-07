unint64_t sub_22E46B834()
{
  result = qword_27DA64300;
  if (!qword_27DA64300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64300);
  }

  return result;
}

unint64_t sub_22E46B88C()
{
  result = qword_27DA64308;
  if (!qword_27DA64308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64308);
  }

  return result;
}

uint64_t sub_22E46B8F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_22E46B980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_22E46BA6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_22E46BAB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22E46BB2C()
{
  v0 = sub_22E47CBC4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  __swift_allocate_value_buffer(v5, qword_27DA66868);
  __swift_project_value_buffer(v0, qword_27DA66868);
  sub_22E47CBA4();
  sub_22E47CB94();
  sub_22E47CBB4();
  v8 = *(v1 + 8);
  v8(v4, v0);
  return (v8)(v7, v0);
}

uint64_t sub_22E46BC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v156 = a4;
  v155 = type metadata accessor for CustomSymbol(0);
  MEMORY[0x28223BE20](v155);
  v8 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SymbolMetadata.Backing(0);
  v10 = MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v152 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v152 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v152 - v18;
  MEMORY[0x28223BE20](v17);
  v22 = &v152 - v20;
  if (!*(a2 + 16) && !*(a3 + 16))
  {
    return 0;
  }

  v154 = v21;
  v157 = a1;
  sub_22E46CE0C(a1, &v152 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D074(v22, type metadata accessor for SymbolMetadata.Backing);
  }

  else
  {
    v23 = *(v22 + 5);
    v162 = *(v22 + 4);
    v163 = v23;
    v164 = *(v22 + 12);
    v24 = *(v22 + 1);
    v158 = *v22;
    v159 = v24;
    v25 = *(v22 + 3);
    v160 = *(v22 + 2);
    v161 = v25;
    v26 = *(v22 + 120);
    v175 = *(v22 + 104);
    v176[0] = v26;
    v27 = *(v22 + 136);
    v28 = *(v22 + 152);
    v29 = *(v22 + 184);
    v176[3] = *(v22 + 168);
    v176[4] = v29;
    v176[1] = v27;
    v176[2] = v28;
    v30 = *(v22 + 200);
    v31 = *(v22 + 216);
    v32 = *(v22 + 248);
    v176[7] = *(v22 + 232);
    v176[8] = v32;
    v176[5] = v30;
    v176[6] = v31;
    sub_22E467010(&v175);
    sub_22E465940(&v158);
    if (sub_22E46E6E0(v158, a3))
    {
      return 80;
    }
  }

  v33 = v157;
  sub_22E46CE0C(v157, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_22E46D074(v19, type metadata accessor for SymbolMetadata.Backing);
    v34 = MEMORY[0x277D84F90];
  }

  else
  {
    v35 = *(v19 + 5);
    v162 = *(v19 + 4);
    v163 = v35;
    v164 = *(v19 + 12);
    v36 = *(v19 + 1);
    v158 = *v19;
    v159 = v36;
    v37 = *(v19 + 3);
    v160 = *(v19 + 2);
    v161 = v37;
    v38 = *(v19 + 120);
    v175 = *(v19 + 104);
    v176[0] = v38;
    v39 = *(v19 + 136);
    v40 = *(v19 + 152);
    v41 = *(v19 + 184);
    v176[3] = *(v19 + 168);
    v176[4] = v41;
    v176[1] = v39;
    v176[2] = v40;
    v42 = *(v19 + 200);
    v43 = *(v19 + 216);
    v44 = *(v19 + 248);
    v176[7] = *(v19 + 232);
    v176[8] = v44;
    v176[5] = v42;
    v176[6] = v43;

    sub_22E467010(&v175);
    v34 = v161;

    sub_22E465940(&v158);
  }

  v45 = sub_22E46CE70(v34, a3);

  v46 = *(v45 + 16);

  if (v46)
  {
    return 80;
  }

  sub_22E46CE0C(v33, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D010(v16, v8);
    v48 = &v8[*(v155 + 20)];
    v49 = *v48;
    v50 = *(v48 + 1);

    sub_22E46D074(v8, type metadata accessor for CustomSymbol);
  }

  else
  {
    v51 = *(v16 + 5);
    v162 = *(v16 + 4);
    v163 = v51;
    v164 = *(v16 + 12);
    v52 = *(v16 + 1);
    v158 = *v16;
    v159 = v52;
    v53 = *(v16 + 3);
    v160 = *(v16 + 2);
    v161 = v53;
    v54 = *(v16 + 120);
    v175 = *(v16 + 104);
    v176[0] = v54;
    v55 = *(v16 + 136);
    v56 = *(v16 + 152);
    v57 = *(v16 + 184);
    v176[3] = *(v16 + 168);
    v176[4] = v57;
    v176[1] = v55;
    v176[2] = v56;
    v58 = *(v16 + 200);
    v59 = *(v16 + 216);
    v60 = *(v16 + 248);
    v176[7] = *(v16 + 232);
    v176[8] = v60;
    v176[5] = v58;
    v176[6] = v59;
    sub_22E467010(&v175);
    v49 = *(&v158 + 1);
    v50 = v159;

    sub_22E465940(&v158);
  }

  *&v175 = v49;
  *(&v175 + 1) = v50;
  *&v158 = 46;
  *(&v158 + 1) = 0xE100000000000000;
  v152 = sub_22E453EA4();
  v153 = sub_22E47CF14();

  *&v165 = 46;
  *(&v165 + 1) = 0xE100000000000000;
  sub_22E46CE0C(v157, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D010(v13, v8);
    v61 = &v8[*(v155 + 20)];
    v63 = *v61;
    v62 = *(v61 + 1);

    sub_22E46D074(v8, type metadata accessor for CustomSymbol);
  }

  else
  {
    v64 = *(v13 + 5);
    v162 = *(v13 + 4);
    v163 = v64;
    v164 = *(v13 + 12);
    v65 = *(v13 + 1);
    v158 = *v13;
    v159 = v65;
    v66 = *(v13 + 3);
    v160 = *(v13 + 2);
    v161 = v66;
    v67 = *(v13 + 120);
    v175 = *(v13 + 104);
    v176[0] = v67;
    v68 = *(v13 + 136);
    v69 = *(v13 + 152);
    v70 = *(v13 + 184);
    v176[3] = *(v13 + 168);
    v176[4] = v70;
    v176[1] = v68;
    v176[2] = v69;
    v71 = *(v13 + 200);
    v72 = *(v13 + 216);
    v73 = *(v13 + 248);
    v176[7] = *(v13 + 232);
    v176[8] = v73;
    v176[5] = v71;
    v176[6] = v72;
    sub_22E467010(&v175);
    v63 = *(&v158 + 1);
    v62 = v159;

    sub_22E465940(&v158);
  }

  MEMORY[0x2318E6DB0](v63, v62);

  MEMORY[0x2318E6DB0](46, 0xE100000000000000);
  v74 = v165;
  *&v175 = 46;
  *(&v175 + 1) = 0xE100000000000000;
  *&v158 = v156;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64150, &qword_22E47EA40);
  sub_22E46D0D4();
  v75 = sub_22E47CD94();
  v77 = v76;

  MEMORY[0x2318E6DB0](v75, v77);

  MEMORY[0x2318E6DB0](46, 0xE100000000000000);
  if (v175 == v74)
  {

LABEL_21:

    return 1000;
  }

  v78 = sub_22E47D054();

  v79 = v157;
  if (v78)
  {
    goto LABEL_21;
  }

  v80 = v153;

  v82 = sub_22E477870(v81);

  v83 = sub_22E46D138(v82, a2);

  if (v83)
  {
    v84 = *(a2 + 16);
    v85 = *(v80 + 16);
    if (v85)
    {
      v157 = *(a2 + 16);
      v86 = 0;
      v87 = v80 + 32;
      v88 = a2 + 56;
      v89 = 20.0;
      v90 = 0.0;
      while (v86 < *(v80 + 16))
      {
        if (*(a2 + 16))
        {
          v91 = (v87 + 16 * v86);
          v93 = *v91;
          v92 = v91[1];
          sub_22E47D0F4();

          sub_22E47CE24();
          v94 = sub_22E47D124();
          v95 = -1 << *(a2 + 32);
          v96 = v94 & ~v95;
          if ((*(v88 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96))
          {
            v97 = ~v95;
            while (1)
            {
              v98 = (*(a2 + 48) + 16 * v96);
              v99 = *v98 == v93 && v98[1] == v92;
              if (v99 || (sub_22E47D054() & 1) != 0)
              {
                break;
              }

              v96 = (v96 + 1) & v97;
              if (((*(v88 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            v90 = v90 + v89;
          }

          else
          {
LABEL_25:
          }

          v80 = v153;
        }

        ++v86;
        v89 = v89 * 0.9;
        if (v86 == v85)
        {

          v84 = v157;
          goto LABEL_84;
        }
      }

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
LABEL_96:
      __break(1u);
    }

    else
    {

      v90 = 0.0;
LABEL_84:
      v151 = roundf((v84 / v85) * v90);
      if ((LODWORD(v151) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v151 > -9.2234e18)
        {
          if (v151 < 9.2234e18)
          {
            result = v151 + 800;
            if (!__OFADD__(v151, 800))
            {
              return result;
            }

            goto LABEL_100;
          }

LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          return result;
        }

LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

  v100 = v154;
  sub_22E46CE0C(v79, v154);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_22E46D074(v100, type metadata accessor for SymbolMetadata.Backing);
    v101 = MEMORY[0x277D84F90];
  }

  else
  {
    v102 = *v100;
    v103 = *(v100 + 8);
    v104 = *(v100 + 16);
    *(&v176[1] + 8) = *(v100 + 40);
    *(&v176[2] + 8) = *(v100 + 56);
    *(&v176[3] + 8) = *(v100 + 72);
    *(&v176[4] + 8) = *(v100 + 88);
    *(v176 + 8) = *(v100 + 24);
    v105 = *(v100 + 216);
    v171 = *(v100 + 200);
    v172 = v105;
    v106 = *(v100 + 248);
    v173 = *(v100 + 232);
    v174 = v106;
    v107 = *(v100 + 152);
    v167 = *(v100 + 136);
    v168 = v107;
    v108 = *(v100 + 184);
    v169 = *(v100 + 168);
    v170 = v108;
    v109 = *(v100 + 120);
    v165 = *(v100 + 104);
    v166 = v109;
    *&v175 = v102;
    *(&v175 + 1) = v103;
    *&v176[0] = v104;
    *(&v176[11] + 8) = *(v100 + 200);
    *(&v176[12] + 8) = *(v100 + 216);
    *(&v176[13] + 8) = *(v100 + 232);
    *(&v176[14] + 8) = *(v100 + 248);
    *(&v176[7] + 8) = *(v100 + 136);
    *(&v176[8] + 8) = *(v100 + 152);
    *(&v176[9] + 8) = *(v100 + 168);
    *(&v176[10] + 8) = *(v100 + 184);
    *(&v176[5] + 8) = *(v100 + 104);
    *(&v176[6] + 8) = *(v100 + 120);
    sub_22E46D734(&v175, &v158);
    v101 = sub_22E45BAF4(v103, v104);
    sub_22E46D7A4(&v175);
    result = sub_22E46D7A4(&v175);
  }

  v110 = (v101 + 40);
  v111 = -*(v101 + 2);
  v112 = -1;
  do
  {
    if (v111 + v112 == -1)
    {
      goto LABEL_54;
    }

    if (++v112 >= *(v101 + 2))
    {
      goto LABEL_92;
    }

    v113 = v110 + 6;
    v114 = *v110;
    *&v175 = *(v110 - 1);
    *(&v175 + 1) = v114;
    *&v158 = 46;
    *(&v158 + 1) = 0xE100000000000000;
    v115 = sub_22E47CF14();
    v116 = sub_22E477870(v115);

    v117 = sub_22E46D138(v116, a2);

    v110 = v113;
  }

  while ((v117 & 1) == 0);

  v118 = *(a2 + 16);
  v119 = *(v153 + 16);

  v120 = roundf((v118 / v119) * 100.0);
  if ((LODWORD(v120) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_102;
  }

  if (v120 <= -9.2234e18)
  {
    goto LABEL_103;
  }

  if (v120 >= 9.2234e18)
  {
    goto LABEL_104;
  }

  result = v120 + 700;
  if (__OFADD__(v120, 700))
  {
    __break(1u);
LABEL_54:

    v121 = SymbolMetadata.tags.getter();
    v122 = v121 + 56;
    v123 = 1 << *(v121 + 32);
    v124 = -1;
    if (v123 < 64)
    {
      v124 = ~(-1 << v123);
    }

    v125 = v124 & *(v121 + 56);
    v126 = (v123 + 63) >> 6;
    v155 = v121;

    v127 = 0;
    v154 = 0;
    v128 = MEMORY[0x277D84F90];
    v129 = v156;
    while (v125)
    {
LABEL_63:
      v131 = (*(v155 + 48) + ((v127 << 10) | (16 * __clz(__rbit64(v125)))));
      v132 = v131[1];
      *&v175 = *v131;
      *(&v175 + 1) = v132;
      v133 = qword_27DA64140;

      if (v133 != -1)
      {
        swift_once();
      }

      v134 = sub_22E47CBC4();
      __swift_project_value_buffer(v134, qword_27DA66868);
      v135 = sub_22E47CF04();

      v136 = *(v135 + 16);
      v137 = *(v128 + 16);
      v138 = v137 + v136;
      if (__OFADD__(v137, v136))
      {
        goto LABEL_94;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v138 > *(v128 + 24) >> 1)
      {
        if (v137 <= v138)
        {
          v139 = v137 + v136;
        }

        else
        {
          v139 = v137;
        }

        result = sub_22E4786E0(result, v139, 1, v128);
        v128 = result;
      }

      v129 = v156;
      v125 &= v125 - 1;
      if (*(v135 + 16))
      {
        if ((*(v128 + 24) >> 1) - *(v128 + 16) < v136)
        {
          goto LABEL_96;
        }

        swift_arrayInitWithCopy();

        if (v136)
        {
          v140 = *(v128 + 16);
          v141 = __OFADD__(v140, v136);
          v142 = v140 + v136;
          if (v141)
          {
            goto LABEL_101;
          }

          *(v128 + 16) = v142;
        }
      }

      else
      {

        if (v136)
        {
          goto LABEL_95;
        }
      }
    }

    while (1)
    {
      v130 = v127 + 1;
      if (__OFADD__(v127, 1))
      {
        goto LABEL_91;
      }

      if (v130 >= v126)
      {

        *&v158 = MEMORY[0x277D84FA0];
        v143 = *(v128 + 16);
        if (!v143)
        {
LABEL_81:

          v149 = v158;
          MEMORY[0x28223BE20](v148);
          *(&v152 - 2) = v157;
          *(&v152 - 1) = v149;
          v150 = sub_22E46ED98(sub_22E46D714, (&v152 - 4), v129);

          if (v150)
          {
            return *(v129 + 16);
          }

          else
          {
            return 0;
          }
        }

        v144 = 0;
        v145 = (v128 + 40);
        while (v144 < *(v128 + 16))
        {
          ++v144;
          v147 = *(v145 - 1);
          v146 = *v145;

          sub_22E460A90(&v175, v147, v146);

          v145 += 2;
          if (v143 == v144)
          {
            goto LABEL_81;
          }
        }

        goto LABEL_93;
      }

      v125 = *(v122 + 8 * v130);
      ++v127;
      if (v125)
      {
        v127 = v130;
        goto LABEL_63;
      }
    }
  }

  return result;
}

uint64_t sub_22E46C9FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v7 = type metadata accessor for CustomSymbol(0);
  MEMORY[0x28223BE20](v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SymbolMetadata.Backing(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v36 - v14;
  v17 = *a1;
  v16 = a1[1];
  v38 = a2;
  sub_22E46CE0C(a2, v36 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E46D010(v15, v9);
    v18 = &v9[*(v7 + 20)];
    v19 = *v18;
    v20 = *(v18 + 1);

    sub_22E46D074(v9, type metadata accessor for CustomSymbol);
  }

  else
  {
    v19 = *(v15 + 1);
    v20 = *(v15 + 2);
    v36[2] = *(v15 + 5);
    v37 = v17;
    v36[1] = *(v15 + 6);
    v36[3] = *(v15 + 10);
    v21 = *(v15 + 216);
    v45 = *(v15 + 200);
    v46 = v21;
    v22 = *(v15 + 248);
    v47 = *(v15 + 232);
    v48 = v22;
    v23 = *(v15 + 152);
    v41 = *(v15 + 136);
    v42 = v23;
    v24 = *(v15 + 184);
    v43 = *(v15 + 168);
    v44 = v24;
    v25 = *(v15 + 120);
    v39 = *(v15 + 104);
    v40 = v25;
    sub_22E467010(&v39);

    v4 = v3;

    v17 = v37;
  }

  *&v39 = v19;
  *(&v39 + 1) = v20;
  v49 = v17;
  v50 = v16;
  sub_22E453EA4();
  v26 = sub_22E47CF34();

  if (v26 & 1) != 0 || (sub_22E46E5E8(v17, v16, v51))
  {
    v27 = 1;
  }

  else
  {
    sub_22E46CE0C(v38, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = sub_22E46D074(v13, type metadata accessor for SymbolMetadata.Backing);
      v29 = MEMORY[0x277D84F90];
    }

    else
    {
      v29 = *(v13 + 7);
      v51 = v4;
      v30 = *(v13 + 216);
      v45 = *(v13 + 200);
      v46 = v30;
      v31 = *(v13 + 248);
      v47 = *(v13 + 232);
      v48 = v31;
      v32 = *(v13 + 152);
      v41 = *(v13 + 136);
      v42 = v32;
      v33 = *(v13 + 184);
      v43 = *(v13 + 168);
      v44 = v33;
      v34 = *(v13 + 120);
      v39 = *(v13 + 104);
      v40 = v34;
      sub_22E467010(&v39);
    }

    *&v39 = v17;
    *(&v39 + 1) = v16;
    MEMORY[0x28223BE20](v28);
    v36[-2] = &v39;
    v27 = sub_22E46D668(sub_22E46D80C, &v36[-4], v29);
  }

  return v27 & 1;
}

uint64_t sub_22E46CE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolMetadata.Backing(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E46CE70(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_22E46D314(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_22E46D864(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x2318E7650](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_22E46D010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomSymbol(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E46D074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22E46D0D4()
{
  result = qword_27DA64318;
  if (!qword_27DA64318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA64150, &qword_22E47EA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64318);
  }

  return result;
}

uint64_t sub_22E46D138(uint64_t a1, uint64_t a2)
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

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_22E47D0F4();

      sub_22E47CE24();
      v15 = sub_22E47D124();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_22E47D054() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_22E46D314(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0;
  v8 = a4 + 56;
  v9 = a3 + 32;
  while (1)
  {
    v11 = *(v9 + 4 * v7);
    sub_22E47D0F4();
    sub_22E47D114();
    v12 = sub_22E47D124();
    v13 = -1 << *(a4 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & *(v8 + 8 * (v14 >> 6))) != 0)
    {
      v17 = *(a4 + 48);
      if (*(v17 + 4 * v14) != v11)
      {
        v18 = ~v13;
        do
        {
          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = 1 << v14;
          if (((1 << v14) & *(v8 + 8 * (v14 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        while (*(v17 + 4 * v14) != v11);
      }

      v10 = a1[v15];
      a1[v15] = v10 | v16;
      if ((v10 & v16) == 0 && __OFADD__(v6++, 1))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v5)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_14:
  v6 = 0;
LABEL_15:

  return sub_22E46D460(a1, a2, v6, a4);
}

uint64_t sub_22E46D460(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641D0, &qword_22E47DB88);
  result = sub_22E47CF74();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    sub_22E47D0F4();
    sub_22E47D114();
    result = sub_22E47D124();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 4 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22E46D668(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

      v9 = a1(v12);

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

uint64_t sub_22E46D734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64320, &qword_22E47EA48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E46D7A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64320, &qword_22E47EA48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22E46D80C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22E47D054() & 1;
  }
}

uint64_t sub_22E46D864@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22E46D314(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22E46D898(void *a1, unint64_t a2, char a3)
{
  v3 = a2;
  v4 = a1;
  v71 = a1;
  v72 = a2;
  if (qword_27DA64140 != -1)
  {
LABEL_142:
    swift_once();
  }

  v5 = sub_22E47CBC4();
  __swift_project_value_buffer(v5, qword_27DA66868);
  sub_22E453EA4();
  v6 = sub_22E47CF04();
  v7 = 0;
  v8 = *(v6 + 16);
  v9 = v6 + 40;
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
LABEL_3:
  v12 = (v9 + 16 * v7);
  while (v8 != v7)
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    ++v7;
    v14 = *(v12 - 1);
    v13 = *v12;
    v12 += 2;
    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v11;
      v68 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22E476820(0, v11[2] + 1, 1);
        v11 = v71;
      }

      v18 = v11[2];
      v17 = v11[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_22E476820((v17 > 1), v18 + 1, 1);
        v19 = v18 + 1;
        v10 = MEMORY[0x277D84F90];
        v11 = v71;
      }

      v11[2] = v19;
      v20 = &v11[2 * v18];
      v20[4] = v14;
      v20[5] = v13;
      v9 = v68;
      goto LABEL_3;
    }
  }

  v21 = v11[2];
  if (v21)
  {
    v71 = v10;
    sub_22E476820(0, v21, 0);
    v22 = v71;
    v23 = v11 + 5;
    do
    {
      v24 = sub_22E47CE04();
      v71 = v22;
      v27 = v22[2];
      v26 = v22[3];
      if (v27 >= v26 >> 1)
      {
        v29 = v24;
        v30 = v25;
        sub_22E476820((v26 > 1), v27 + 1, 1);
        v25 = v30;
        v24 = v29;
        v22 = v71;
      }

      v22[2] = v27 + 1;
      v28 = &v22[2 * v27];
      v28[4] = v24;
      v28[5] = v25;
      v23 += 2;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v69 = sub_22E477870(v31);

  if ((v3 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v32 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    v33 = 0;
    do
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v35 = sub_22E47CF84();
      }

      else
      {
        if ((v3 & 0x2000000000000000) != 0)
        {
          v71 = v4;
          v72 = v3 & 0xFFFFFFFFFFFFFFLL;
          v37 = &v71 + v33;
        }

        else
        {
          v36 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v4 & 0x1000000000000000) == 0)
          {
            v36 = sub_22E47CFA4();
          }

          v37 = (v36 + v33);
        }

        v35 = *v37;
        if ((*v37 & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        v38 = (__clz(v35 ^ 0xFF) - 24);
        if (v38 > 2)
        {
          if (v38 == 3)
          {
            v35 = ((v35 & 0xF) << 12) | ((v37[1] & 0x3F) << 6) | v37[2] & 0x3F;
            v34 = 3;
          }

          else
          {
            v35 = ((v35 & 0xF) << 18) | ((v37[1] & 0x3F) << 12) | ((v37[2] & 0x3F) << 6) | v37[3] & 0x3F;
            v34 = 4;
          }

          goto LABEL_27;
        }

        if (v38 == 1)
        {
LABEL_35:
          v34 = 1;
        }

        else
        {
          v35 = v37[1] & 0x3F | ((v35 & 0x1F) << 6);
          v34 = 2;
        }
      }

LABEL_27:
      v33 += v34;
      sub_22E460BE0(&v71, v35);
    }

    while (v33 < v32);
  }

  if (a3)
  {
    v3 = v22[2];
    if (v3)
    {
      v4 = 0;
      while (1)
      {
        v39 = &v22[2 * v4 + 4];
        v41 = *v39;
        v40 = v39[1];
        v42 = HIBYTE(v40) & 0xF;
        v43 = v41 & 0xFFFFFFFFFFFFLL;
        if ((v40 & 0x2000000000000000) != 0)
        {
          v44 = HIBYTE(v40) & 0xF;
        }

        else
        {
          v44 = v41 & 0xFFFFFFFFFFFFLL;
        }

        if (!v44)
        {
          goto LABEL_45;
        }

        if ((v40 & 0x1000000000000000) == 0)
        {
          break;
        }

        v47 = sub_22E4797F8(v41, v40, 16);

        if ((v47 & 0x100000000) == 0)
        {
LABEL_130:
          if (WORD1(v47) <= 0x10u && (v47 & 0xFFFFF800) != 0xD800)
          {
            sub_22E460BE0(&v71, v47);
          }
        }

LABEL_45:
        if (++v4 == v3)
        {
          return v69;
        }
      }

      if ((v40 & 0x2000000000000000) != 0)
      {
        v71 = v41;
        v72 = v40 & 0xFFFFFFFFFFFFFFLL;
        if (v41 == 43)
        {
          if (!v42)
          {
            goto LABEL_140;
          }

          if (--v42)
          {
            LODWORD(v47) = 0;
            v59 = &v71 + 1;
            while (1)
            {
              v60 = *v59;
              v61 = v60 - 48;
              if ((v60 - 48) >= 0xA)
              {
                if ((v60 - 65) < 6)
                {
                  v61 = v60 - 55;
                }

                else
                {
                  if ((v60 - 97) > 5)
                  {
                    goto LABEL_128;
                  }

                  v61 = v60 - 87;
                }
              }

              if (v47 >> 28)
              {
                break;
              }

              v47 = 16 * v47 + v61;
              ++v59;
              if (!--v42)
              {
                goto LABEL_129;
              }
            }
          }
        }

        else if (v41 == 45)
        {
          if (!v42)
          {
            goto LABEL_138;
          }

          if (--v42)
          {
            LODWORD(v47) = 0;
            v52 = &v71 + 1;
            while (1)
            {
              v53 = *v52;
              v54 = v53 - 48;
              if ((v53 - 48) >= 0xA)
              {
                if ((v53 - 65) < 6)
                {
                  v54 = v53 - 55;
                }

                else
                {
                  if ((v53 - 97) > 5)
                  {
                    goto LABEL_128;
                  }

                  v54 = v53 - 87;
                }
              }

              if (v47 >> 28)
              {
                break;
              }

              v55 = 16 * v47;
              v47 = 16 * v47 - v54;
              if (v55 < v54)
              {
                break;
              }

              ++v52;
              if (!--v42)
              {
                goto LABEL_129;
              }
            }
          }
        }

        else if (v42)
        {
          LODWORD(v47) = 0;
          v64 = &v71;
          while (1)
          {
            v65 = *v64;
            v66 = v65 - 48;
            if ((v65 - 48) >= 0xA)
            {
              if ((v65 - 65) < 6)
              {
                v66 = v65 - 55;
              }

              else
              {
                if ((v65 - 97) > 5)
                {
                  goto LABEL_128;
                }

                v66 = v65 - 87;
              }
            }

            if (v47 >> 28)
            {
              break;
            }

            v47 = 16 * v47 + v66;
            ++v64;
            if (!--v42)
            {
              goto LABEL_129;
            }
          }
        }

        goto LABEL_128;
      }

      if ((v41 & 0x1000000000000000) != 0)
      {
        v45 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v45 = sub_22E47CFA4();
      }

      v46 = *v45;
      if (v46 == 43)
      {
        if (v43 < 1)
        {
          goto LABEL_139;
        }

        v42 = v43 - 1;
        if (v43 == 1)
        {
          goto LABEL_128;
        }

        if (v45)
        {
          LODWORD(v47) = 0;
          v56 = v45 + 1;
          while (1)
          {
            v57 = *v56;
            v58 = v57 - 48;
            if ((v57 - 48) >= 0xA)
            {
              if ((v57 - 65) < 6)
              {
                v58 = v57 - 55;
              }

              else
              {
                if ((v57 - 97) > 5)
                {
                  goto LABEL_128;
                }

                v58 = v57 - 87;
              }
            }

            if (v47 >> 28)
            {
              goto LABEL_128;
            }

            v47 = 16 * v47 + v58;
            ++v56;
            if (!--v42)
            {
              goto LABEL_129;
            }
          }
        }
      }

      else if (v46 == 45)
      {
        if (v43 < 1)
        {
          goto LABEL_141;
        }

        v42 = v43 - 1;
        if (v43 == 1)
        {
          goto LABEL_128;
        }

        if (v45)
        {
          LODWORD(v47) = 0;
          v48 = v45 + 1;
          while (1)
          {
            v49 = *v48;
            v50 = v49 - 48;
            if ((v49 - 48) >= 0xA)
            {
              if ((v49 - 65) < 6)
              {
                v50 = v49 - 55;
              }

              else
              {
                if ((v49 - 97) > 5)
                {
                  goto LABEL_128;
                }

                v50 = v49 - 87;
              }
            }

            if (v47 >> 28)
            {
              goto LABEL_128;
            }

            v51 = 16 * v47;
            v47 = 16 * v47 - v50;
            if (v51 < v50)
            {
              goto LABEL_128;
            }

            ++v48;
            if (!--v42)
            {
              goto LABEL_129;
            }
          }
        }
      }

      else
      {
        if (!v43)
        {
LABEL_128:
          v47 = 0;
          LOBYTE(v42) = 1;
LABEL_129:
          if ((v42 & 1) == 0)
          {
            goto LABEL_130;
          }

          goto LABEL_45;
        }

        if (v45)
        {
          LODWORD(v47) = 0;
          while (1)
          {
            v62 = *v45;
            v63 = v62 - 48;
            if ((v62 - 48) >= 0xA)
            {
              if ((v62 - 65) < 6)
              {
                v63 = v62 - 55;
              }

              else
              {
                if ((v62 - 97) > 5)
                {
                  goto LABEL_128;
                }

                v63 = v62 - 87;
              }
            }

            if (v47 >> 28)
            {
              goto LABEL_128;
            }

            v47 = 16 * v47 + v63;
            ++v45;
            if (!--v43)
            {
              LOBYTE(v42) = 0;
              goto LABEL_129;
            }
          }
        }
      }

      v47 = 0;
      LOBYTE(v42) = 0;
      goto LABEL_129;
    }
  }

  return v69;
}

uint64_t nofill_to_fill.getter()
{
  if (qword_280AC2DE8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22E46E058(void (*a1)(char *), uint64_t a2)
{
  v27 = a1;
  v26[1] = a2;
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22E47CCE4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = NSTemporaryDirectory();
  sub_22E47CDC4();

  sub_22E47CC84();

  v12 = sub_22E47CC94();
  v13 = *(v3 + 8);
  v13(v6, v2);
  v29[0] = 0;
  v14 = [v10 URLForDirectory:99 inDomain:1 appropriateForURL:v12 create:1 error:v29];

  v15 = v29[0];
  if (v14)
  {
    sub_22E47CCD4();
    v16 = v15;

    v17 = v28;
    v27(v8);
    if (!v17)
    {
      v18 = [v9 defaultManager];
      v19 = sub_22E47CC94();
      v29[0] = 0;
      v20 = [v18 removeItemAtURL:v19 error:v29];

      if (v20)
      {
        v21 = v29[0];
      }

      else
      {
        v24 = v29[0];
        v25 = sub_22E47CC74();

        swift_willThrow();
      }
    }

    return (v13)(v8, v2);
  }

  else
  {
    v22 = v29[0];
    sub_22E47CC74();

    return swift_willThrow();
  }
}

uint64_t sub_22E46E324()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22E46E380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22E47CCE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E47CCB4();
  sub_22E47CD44();
  if (!v3)
  {
    v8 = objc_opt_self();
    v9 = sub_22E47CC94();
    v10 = sub_22E47CC94();
    v16[0] = 0;
    v11 = [v8 decompressDataAtURL:v9 toURL:v10 error:v16];

    if (v11)
    {
      v12 = *(v5 + 8);
      v13 = v16[0];
      return v12(v7, v4);
    }

    v15 = v16[0];
    sub_22E47CC74();

    swift_willThrow();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SymbolMetadataStore.availability(forSystemName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22E471DCC(a1, a2, a3);
}

uint64_t sub_22E46E5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22E47D0F4();
  sub_22E47CE24();
  v6 = sub_22E47D124();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22E47D054() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_22E46E6E0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_22E47D0F4();
  sub_22E47D114();
  v4 = sub_22E47D124();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_22E46E7AC(uint64_t a1, uint64_t a2)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641B8, &qword_22E47EC40);
  MEMORY[0x28223BE20](v51);
  v5 = &v39 - v4;
  v45 = sub_22E47CD64();
  v6 = *(v45 - 8);
  v7 = MEMORY[0x28223BE20](v45);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v52 = type metadata accessor for SymbolKey(0);
  v11 = *(v52 - 8);
  v12 = MEMORY[0x28223BE20](v52);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v46 = (&v39 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v43 = &v39 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - v19;
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_22E47D0F4();
  sub_22E4774F4(a1, v20, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = a1;
    v22 = v45;
    (*(v6 + 32))(v10, v20, v45);
    MEMORY[0x2318E7080](1);
    sub_22E477668(&qword_27DA641C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_22E47CD84();
    v23 = v6;
    v24 = v22;
    a1 = v21;
    (*(v6 + 8))(v10, v24);
  }

  else
  {
    v23 = v6;
    MEMORY[0x2318E7080](0);
    sub_22E47D114();
  }

  v25 = sub_22E47D124();
  v26 = a2 + 56;
  v27 = -1 << *(a2 + 32);
  v28 = v25 & ~v27;
  if (((*(a2 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
  {
    return 0;
  }

  v47 = a2;
  v48 = ~v27;
  v49 = *(v11 + 72);
  v50 = a1;
  v44 = (v23 + 8);
  v41 = (v23 + 32);
  v29 = v43;
  v40 = a2 + 56;
  while (1)
  {
    sub_22E4774F4(*(a2 + 48) + v49 * v28, v29, type metadata accessor for SymbolKey);
    v30 = *(v51 + 48);
    sub_22E4774F4(v29, v5, type metadata accessor for SymbolKey);
    sub_22E4774F4(v50, &v5[v30], type metadata accessor for SymbolKey);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_22E4774F4(v5, v14, type metadata accessor for SymbolKey);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v14;
      v32 = v42;
      v33 = v45;
      (*v41)(v42, &v5[v30], v45);
      v34 = sub_22E47CD54();
      v35 = *v44;
      v36 = v32;
      v14 = v31;
      v29 = v43;
      (*v44)(v36, v33);
      sub_22E47755C(v29, type metadata accessor for SymbolKey);
      v37 = v33;
      v26 = v40;
      v35(v14, v37);
      if (v34)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    sub_22E47755C(v29, type metadata accessor for SymbolKey);
    (*v44)(v14, v45);
LABEL_8:
    sub_22E4545D0(v5, &qword_27DA641B8, &qword_22E47EC40);
LABEL_9:
    a2 = v47;
    v28 = (v28 + 1) & v48;
    if (((*(v26 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      return 0;
    }
  }

  sub_22E47755C(v29, type metadata accessor for SymbolKey);
  sub_22E4774F4(v5, v46, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_8;
  }

  if (*v46 != *&v5[v30])
  {
LABEL_16:
    sub_22E47755C(v5, type metadata accessor for SymbolKey);
    goto LABEL_9;
  }

LABEL_18:
  sub_22E47755C(v5, type metadata accessor for SymbolKey);
  return 1;
}

uint64_t sub_22E46ED98(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v13[0] = *(i - 1);
      v13[1] = v8;

      v9 = a1(v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- != 0;
      if ((v9 & v11 & 1) == 0)
      {
        return v9 & 1;
      }
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9 & 1;
}

uint64_t sub_22E46EE48(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    for (i = (a3 + 56); ; i += 4)
    {
      v8 = *i;
      v13 = *(i - 3);
      v14 = *(i - 1);
      v15 = v8;

      v9 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- != 0;
      if ((v9 & v11 & 1) == 0)
      {
        return v9 & 1;
      }
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9 & 1;
}

uint64_t sub_22E46EF1C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    while (1)
    {
      v12 = *v6;

      v8 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- != 0;
      ++v6;
      if ((v8 & v10 & 1) == 0)
      {
        return v8 & 1;
      }
    }

    LOBYTE(v8) = 0;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8 & 1;
}

uint64_t SymbolKey.hash(into:)(uint64_t a1)
{
  v2 = sub_22E47CD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolKey(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E4774F4(v1, v8, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x2318E7080](1);
    sub_22E477668(&qword_27DA641C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_22E47CD84();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x2318E7080](0);
    return sub_22E47D114();
  }
}

uint64_t SymbolKey.hashValue.getter()
{
  v1 = v0;
  v2 = sub_22E47CD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolKey(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E47D0F4();
  sub_22E4774F4(v1, v8, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x2318E7080](1);
    sub_22E477668(&qword_27DA641C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_22E47CD84();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x2318E7080](0);
    sub_22E47D114();
  }

  return sub_22E47D124();
}

uint64_t sub_22E46F39C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E47CD64();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E4774F4(v2, v9, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v9, v3);
    MEMORY[0x2318E7080](1);
    sub_22E477668(&qword_27DA641C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_22E47CD84();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    MEMORY[0x2318E7080](0);
    return sub_22E47D114();
  }
}

uint64_t sub_22E46F56C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_22E47CD64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E47D0F4();
  sub_22E4774F4(v3, v10, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v10, v4);
    MEMORY[0x2318E7080](1);
    sub_22E477668(&qword_27DA641C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_22E47CD84();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    MEMORY[0x2318E7080](0);
    sub_22E47D114();
  }

  return sub_22E47D124();
}

double SymbolMetadataStore.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F98];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v1;
  *(a1 + 72) = v2;
  *(a1 + 80) = v2;
  *(a1 + 88) = v2;
  *(a1 + 96) = v2;
  *(a1 + 104) = v2;
  *(a1 + 112) = v1;
  *(a1 + 120) = v2;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

uint64_t static SymbolMetadataStore.system.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27DA63F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_27DA63FD0;
  v13[6] = xmmword_27DA63FE0;
  v13[7] = xmmword_27DA63FF0;
  v3 = xmmword_27DA63FF0;
  v4 = xmmword_27DA64000;
  v13[8] = xmmword_27DA64000;
  v13[9] = xmmword_27DA64010;
  v5 = xmmword_27DA63FA0;
  v6 = xmmword_27DA63F90;
  v13[2] = xmmword_27DA63FA0;
  v13[3] = xmmword_27DA63FB0;
  v7 = xmmword_27DA63FB0;
  v8 = xmmword_27DA63FC0;
  v13[4] = xmmword_27DA63FC0;
  v13[5] = xmmword_27DA63FD0;
  v9 = xmmword_27DA63F80;
  v13[0] = xmmword_27DA63F80;
  v13[1] = xmmword_27DA63F90;
  a1[6] = xmmword_27DA63FE0;
  a1[7] = v3;
  v10 = xmmword_27DA64010;
  a1[8] = v4;
  a1[9] = v10;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v2;
  *a1 = v9;
  a1[1] = v6;
  return sub_22E466FB4(v13, v12);
}

uint64_t static SymbolMetadataStore.system.setter(__int128 *a1)
{
  if (qword_27DA63F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8[7] = xmmword_27DA63FF0;
  v8[8] = xmmword_27DA64000;
  v8[9] = xmmword_27DA64010;
  v8[2] = xmmword_27DA63FA0;
  v8[3] = xmmword_27DA63FB0;
  v8[4] = xmmword_27DA63FC0;
  v8[5] = xmmword_27DA63FD0;
  v8[6] = xmmword_27DA63FE0;
  v8[0] = xmmword_27DA63F80;
  v8[1] = xmmword_27DA63F90;
  v2 = a1[7];
  xmmword_27DA63FE0 = a1[6];
  xmmword_27DA63FF0 = v2;
  v3 = a1[9];
  xmmword_27DA64000 = a1[8];
  xmmword_27DA64010 = v3;
  v4 = a1[3];
  xmmword_27DA63FA0 = a1[2];
  xmmword_27DA63FB0 = v4;
  v5 = a1[5];
  xmmword_27DA63FC0 = a1[4];
  xmmword_27DA63FD0 = v5;
  v6 = a1[1];
  xmmword_27DA63F80 = *a1;
  xmmword_27DA63F90 = v6;
  return sub_22E467010(v8);
}

uint64_t (*static SymbolMetadataStore.system.modify(uint64_t a1))()
{
  if (qword_27DA63F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22E46F9F0@<X0>(__int128 *a1@<X8>)
{
  if (qword_27DA63F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_27DA63FD0;
  v13[6] = xmmword_27DA63FE0;
  v13[7] = xmmword_27DA63FF0;
  v3 = xmmword_27DA63FF0;
  v4 = xmmword_27DA64000;
  v13[8] = xmmword_27DA64000;
  v13[9] = xmmword_27DA64010;
  v5 = xmmword_27DA63FA0;
  v6 = xmmword_27DA63F90;
  v13[2] = xmmword_27DA63FA0;
  v13[3] = xmmword_27DA63FB0;
  v7 = xmmword_27DA63FB0;
  v8 = xmmword_27DA63FC0;
  v13[4] = xmmword_27DA63FC0;
  v13[5] = xmmword_27DA63FD0;
  v9 = xmmword_27DA63F80;
  v13[0] = xmmword_27DA63F80;
  v13[1] = xmmword_27DA63F90;
  a1[6] = xmmword_27DA63FE0;
  a1[7] = v3;
  v10 = xmmword_27DA64010;
  a1[8] = v4;
  a1[9] = v10;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v2;
  *a1 = v9;
  a1[1] = v6;
  return sub_22E466FB4(v13, v12);
}

uint64_t sub_22E46FAD0(__int128 *a1)
{
  v1 = a1[6];
  v2 = a1[8];
  v3 = a1[9];
  v15 = a1[7];
  v16 = v2;
  v17 = v3;
  v4 = a1[3];
  v10 = a1[2];
  v11 = v4;
  v5 = a1[5];
  v12 = a1[4];
  v13 = v5;
  v14 = v1;
  v6 = a1[1];
  v8 = *a1;
  v9 = v6;
  sub_22E466FB4(&v8, v18);
  if (qword_27DA63F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18[6] = xmmword_27DA63FE0;
  v18[7] = xmmword_27DA63FF0;
  v18[8] = xmmword_27DA64000;
  v18[9] = xmmword_27DA64010;
  v18[2] = xmmword_27DA63FA0;
  v18[3] = xmmword_27DA63FB0;
  v18[4] = xmmword_27DA63FC0;
  v18[5] = xmmword_27DA63FD0;
  v18[0] = xmmword_27DA63F80;
  v18[1] = xmmword_27DA63F90;
  xmmword_27DA63FE0 = v14;
  xmmword_27DA63FF0 = v15;
  xmmword_27DA64000 = v16;
  xmmword_27DA64010 = v17;
  xmmword_27DA63FA0 = v10;
  xmmword_27DA63FB0 = v11;
  xmmword_27DA63FC0 = v12;
  xmmword_27DA63FD0 = v13;
  xmmword_27DA63F80 = v8;
  xmmword_27DA63F90 = v9;
  return sub_22E467010(v18);
}

void *sub_22E46FBE0()
{
  v1 = type metadata accessor for CustomSymbol(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SymbolKey(0);
  v5 = *(v43 - 8);
  v6 = MEMORY[0x28223BE20](v43);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = (&v41 - v10);
  v12 = *v0;
  v13 = v0[14];
  v14 = *(*v0 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v41 = v0[14];
    v42 = v2;
    v46 = MEMORY[0x277D84F90];
    sub_22E476860(0, v14, 0);
    v15 = v46;
    v16 = (v12 + 32);
    do
    {
      v17 = *v16++;
      *v11 = v17;
      swift_storeEnumTagMultiPayload();
      v46 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_22E476860((v18 > 1), v19 + 1, 1);
        v15 = v46;
      }

      *(v15 + 16) = v19 + 1;
      result = sub_22E47748C(v11, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, type metadata accessor for SymbolKey);
      --v14;
    }

    while (v14);
    v13 = v41;
    v2 = v42;
  }

  v20 = *(v13 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v46 = MEMORY[0x277D84F90];
    sub_22E476860(0, v20, 0);
    v22 = v46;
    v23 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v24 = *(v2 + 72);
    do
    {
      sub_22E4774F4(v23, v4, type metadata accessor for CustomSymbol);
      v25 = sub_22E47CD64();
      (*(*(v25 - 8) + 16))(v8, v4, v25);
      sub_22E47755C(v4, type metadata accessor for CustomSymbol);
      swift_storeEnumTagMultiPayload();
      v46 = v22;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_22E476860((v26 > 1), v27 + 1, 1);
        v22 = v46;
      }

      *(v22 + 16) = v27 + 1;
      result = sub_22E47748C(v8, v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, type metadata accessor for SymbolKey);
      v23 += v24;
      --v20;
    }

    while (v20);
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v44 = v15;
  v45 = v22;
  v28 = *(v15 + 16);
  v29 = *(v21 + 16);
  v30 = v29 + v28;
  if (__OFADD__(v29, v28))
  {
    goto LABEL_42;
  }

  v31 = MEMORY[0x277D84F90];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v30 <= v31[3] >> 1)
  {
    if (*(v15 + 16))
    {
LABEL_18:
      if ((v31[3] >> 1) - v31[2] < v28)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      swift_arrayInitWithCopy();

      v32 = v31[2];
      if (v28)
      {
        v33 = __OFADD__(v32, v28);
        v32 += v28;
        if (v33)
        {
          goto LABEL_45;
        }

        v31[2] = v32;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (v29 <= v30)
    {
      v34 = v29 + v28;
    }

    else
    {
      v34 = v29;
    }

    result = sub_22E478C50(result, v34, 1, MEMORY[0x277D84F90]);
    v31 = result;
    if (*(v15 + 16))
    {
      goto LABEL_18;
    }
  }

  if (v28)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v32 = v31[2];
LABEL_28:
  v35 = v45;
  v36 = *(v45 + 16);
  v37 = v32 + v36;
  if (__OFADD__(v32, v36))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v37 <= v31[3] >> 1)
  {
    if (*(v35 + 16))
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

  if (v32 <= v37)
  {
    v40 = v32 + v36;
  }

  else
  {
    v40 = v32;
  }

  result = sub_22E478C50(result, v40, 1, v31);
  v31 = result;
  if (!*(v35 + 16))
  {
LABEL_40:

    if (!v36)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

LABEL_32:
  if ((v31[3] >> 1) - v31[2] < v36)
  {
    goto LABEL_44;
  }

  swift_arrayInitWithCopy();

  if (!v36)
  {
LABEL_41:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64368, &qword_22E47EC70);
    swift_arrayDestroy();
    return v31;
  }

  v38 = v31[2];
  v33 = __OFADD__(v38, v36);
  v39 = v38 + v36;
  if (!v33)
  {
    v31[2] = v39;
    goto LABEL_41;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_22E470120()
{
  v1 = type metadata accessor for SymbolKey(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 24);
  if (!*(v5 + 16))
  {
    return MEMORY[0x277D84FA0];
  }

  v35 = *(v0 + 16);
  v6 = sub_22E467B98();
  if ((v7 & 1) == 0)
  {
    return MEMORY[0x277D84FA0];
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v8;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while (v12)
  {
    v17 = v12;
LABEL_12:
    v12 = (v17 - 1) & v17;
    if (*(v35 + 16))
    {
      v19 = (*(v34 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v17)))));
      v20 = *v19;
      v21 = v19[1];

      v22 = sub_22E450B0C(v20, v21);
      if (v23)
      {
        v24 = *(*(v35 + 56) + 104 * v22);

        result = swift_isUniquelyReferenced_nonNull_native();
        HIDWORD(v33) = v24;
        if ((result & 1) == 0)
        {
          result = sub_22E478A48(0, *(v16 + 16) + 1, 1, v16);
          v16 = result;
        }

        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        if (v26 >= v25 >> 1)
        {
          result = sub_22E478A48((v25 > 1), v26 + 1, 1, v16);
          v16 = result;
        }

        *(v16 + 16) = v26 + 1;
        *(v16 + 4 * v26 + 32) = HIDWORD(v33);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v13)
    {
      break;
    }

    v17 = *(v9 + 8 * v18);
    ++v15;
    if (v17)
    {
      v15 = v18;
      goto LABEL_12;
    }
  }

  v27 = *(v16 + 16);
  if (v27)
  {
    v36 = MEMORY[0x277D84F90];
    sub_22E476860(0, v27, 0);
    v28 = 32;
    v29 = v36;
    do
    {
      *v4 = *(v16 + v28);
      swift_storeEnumTagMultiPayload();
      v36 = v29;
      v31 = *(v29 + 16);
      v30 = *(v29 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_22E476860((v30 > 1), v31 + 1, 1);
        v29 = v36;
      }

      *(v29 + 16) = v31 + 1;
      sub_22E47748C(v4, v29 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v31, type metadata accessor for SymbolKey);
      v28 += 4;
      --v27;
    }

    while (v27);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v32 = sub_22E477908(v29);

  return v32;
}

uint64_t sub_22E470488(uint64_t a1)
{
  v2 = v1[6];
  if (!v2)
  {
    v6 = v1;
    v7 = v1[1];
    if (*(v7 + 16))
    {
      v8 = v6[5];
      v9 = sub_22E45C22C(a1);
      if (v10)
      {
        if (*(v8 + 16))
        {
          v11 = *(v7 + 56) + 104 * v9;
          v13 = *(v11 + 8);
          v12 = *(v11 + 16);

          v14 = sub_22E450B0C(v13, v12);
          if (v15)
          {
            v5 = *(*(v8 + 56) + 8 * v14);

            return v5;
          }
        }
      }
    }

    return 0;
  }

  v3 = v1[7];

  v5 = v2(a1);
  sub_22E453664(v2, v3);
  return v5;
}

uint64_t sub_22E470604(unsigned int *a1, unsigned int *a2, _OWORD *a3)
{
  v3 = a3;
  v4 = a3[7];
  v5 = a3[5];
  v66 = a3[6];
  v67 = v4;
  v6 = a3[7];
  v7 = a3[9];
  v68 = a3[8];
  v69 = v7;
  v8 = a3[3];
  v9 = a3[1];
  v62 = a3[2];
  v63 = v8;
  v10 = a3[3];
  v11 = a3[5];
  v64 = a3[4];
  v65 = v11;
  v12 = a3[1];
  v61[0] = *a3;
  v61[1] = v12;
  v57 = v66;
  v58 = v6;
  v13 = a3[9];
  v59 = v68;
  v60 = v13;
  v53 = v62;
  v54 = v10;
  v55 = v64;
  v56 = v5;
  v14 = *a1;
  v15 = *a2;
  v51 = v61[0];
  v52 = v9;
  sub_22E466FB4(v61, v70);
  v16 = sub_22E470488(v14);
  v18 = v17;
  v70[6] = v57;
  v70[7] = v58;
  v70[8] = v59;
  v70[9] = v60;
  v70[2] = v53;
  v70[3] = v54;
  v70[4] = v55;
  v70[5] = v56;
  v70[0] = v51;
  v70[1] = v52;
  sub_22E467010(v70);
  v19 = v3[7];
  v20 = v3[5];
  v47 = v3[6];
  v48 = v19;
  v21 = v3[7];
  v22 = v3[9];
  v49 = v3[8];
  v50 = v22;
  v23 = v3[3];
  v24 = v3[1];
  v43 = v3[2];
  v44 = v23;
  v25 = v3[3];
  v26 = v3[5];
  v45 = v3[4];
  v46 = v26;
  v27 = v3[1];
  v42[0] = *v3;
  v42[1] = v27;
  v38 = v47;
  v39 = v21;
  v40 = v49;
  v41 = v3[9];
  v34 = v43;
  v35 = v25;
  v36 = v45;
  v37 = v20;
  v32 = v42[0];
  v33 = v24;
  sub_22E466FB4(v42, &v51);
  v28 = sub_22E470488(v15);
  LOBYTE(v3) = v29;
  v57 = v38;
  v58 = v39;
  v59 = v40;
  v60 = v41;
  v53 = v34;
  v54 = v35;
  v55 = v36;
  v56 = v37;
  v51 = v32;
  v52 = v33;
  sub_22E467010(&v51);
  v30 = 0x7FFFFFFFFFFFFFFFLL;
  if ((v3 & 1) == 0)
  {
    v30 = v28;
  }

  return (v16 < v30) & ~v18;
}

uint64_t SymbolMetadataStore.categories.getter()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = v0[19];
    v22 = v0[16];
    v25 = MEMORY[0x277D84F90];
    sub_22E4768A4(0, v2, 0);
    v3 = v25;
    for (i = (v1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *i;
      v23 = *(i - 1);
      swift_bridgeObjectRetain_n();

      sub_22E47CF94();

      v24 = v5;
      MEMORY[0x2318E6DB0](v5, v6);
      if (!v22)
      {
        goto LABEL_7;
      }

      v8 = v22;
      v10 = sub_22E47CC34();
      v11 = v9;
      if (v10 == 0xD000000000000013 && v9 == 0x800000022E4D2BA0)
      {
        break;
      }

      v14 = sub_22E47D054();

      if ((v14 & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!v21)
      {
        goto LABEL_16;
      }

LABEL_8:
      v12 = v21;
      v10 = sub_22E47CC34();
      v11 = v13;
      if (v10 == 0xD000000000000013 && v13 == 0x800000022E4D2BA0)
      {

LABEL_16:
        if (qword_27DA640E8 != -1)
        {
          swift_once();
        }

        v10 = sub_22E47CC34();
        v11 = v16;
        goto LABEL_19;
      }

      v15 = sub_22E47D054();

      if (v15)
      {

        goto LABEL_16;
      }

LABEL_19:

      v18 = *(v25 + 16);
      v17 = *(v25 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22E4768A4((v17 > 1), v18 + 1, 1);
      }

      *(v25 + 16) = v18 + 1;
      v19 = (v25 + 48 * v18);
      v19[4] = v24;
      v19[5] = v6;
      v19[6] = v23;
      v19[7] = v7;
      v19[8] = v10;
      v19[9] = v11;
      if (!--v2)
      {
        return v3;
      }
    }

LABEL_7:
    if (!v21)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  return v3;
}

uint64_t sub_22E470AC4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 128);
  v6 = *(v2 + 152);
  if (!v5)
  {
LABEL_8:
    if (!v6)
    {
      goto LABEL_19;
    }

LABEL_11:
    v13 = v6;
    v14 = sub_22E47CC34();
    if (v14 == a1 && v15 == a2)
    {

      goto LABEL_19;
    }

    v11 = v14;
    v17 = sub_22E47D054();

    if (v17)
    {

      goto LABEL_19;
    }

    return v11;
  }

  v7 = v5;
  v8 = sub_22E47CC34();
  if (v8 != a1 || v9 != a2)
  {
    v11 = v8;
    v12 = sub_22E47D054();

    if ((v12 & 1) == 0)
    {
      return v11;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    goto LABEL_11;
  }

LABEL_19:
  if (qword_27DA640E8 != -1)
  {
    swift_once();
  }

  return sub_22E47CC34();
}

uint64_t SymbolMetadataStore.sortPrivateScalars(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);

  sub_22E453664(v5, v6);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  v9 = *v2;
  swift_bridgeObjectRetain_n();
  sub_22E46328C(&v9, v2);

  v7 = v9;

  *v2 = v7;
  return result;
}

uint64_t SymbolMetadataStore.symbolMetadata(forSystemName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for SymbolKey(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64328, &qword_22E47EAB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  SymbolMetadataStore.symbolKey(forSystemName:)(a1, a2, (&v18 - v14));
  sub_22E4773AC(v15, v13);
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
    sub_22E4545D0(v15, &qword_27DA64328, &qword_22E47EAB0);
    v16 = type metadata accessor for SymbolMetadata(0);
    return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }

  else
  {
    sub_22E47748C(v13, v9, type metadata accessor for SymbolKey);
    SymbolMetadataStore.symbolMetadata(for:)(v9, a3);
    sub_22E47755C(v9, type metadata accessor for SymbolKey);
    return sub_22E4545D0(v15, &qword_27DA64328, &qword_22E47EAB0);
  }
}

uint64_t SymbolMetadataStore.symbolKey(forSystemName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 72);
  if (*(v7 + 16))
  {
    v9 = sub_22E450B0C(a1, a2);
    if (v10)
    {
      *a3 = *(*(v7 + 56) + 104 * v9);
      v11 = type metadata accessor for SymbolKey(0);
      swift_storeEnumTagMultiPayload();
      v12 = *(*(v11 - 8) + 56);
      v13 = a3;
      v14 = 0;
      v15 = v11;
LABEL_10:

      return v12(v13, v14, 1, v15);
    }
  }

  if (!*(v8 + 16) || (v16 = sub_22E450B0C(a1, a2), (v17 & 1) == 0))
  {
    v22 = type metadata accessor for SymbolKey(0);
    v12 = *(*(v22 - 8) + 56);
    v15 = v22;
    v13 = a3;
    v14 = 1;
    goto LABEL_10;
  }

  v18 = (*(v8 + 56) + 16 * v16);
  v19 = *v18;
  v20 = v18[1];

  SymbolMetadataStore.symbolKey(forSystemName:)(v19, v20, a3);
}

uint64_t SymbolMetadataStore.symbolMetadata(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64330, &qword_22E47EAB8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v52 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v9 = sub_22E47CD64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymbolKey(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v52 - v17);
  v19 = v2[7];
  v64 = v2[6];
  v65 = v19;
  v20 = v2[9];
  v66 = v2[8];
  v67 = v20;
  v21 = v2[3];
  v60 = v2[2];
  v61 = v21;
  v22 = v2[5];
  v62 = v2[4];
  v63 = v22;
  v23 = v2[1];
  v58 = *v2;
  v59 = v23;
  sub_22E4774F4(a1, &v52 - v17, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22E47755C(v18, type metadata accessor for SymbolKey);
  }

  else
  {
    v24 = *(&v58 + 1);
    if (*(*(&v58 + 1) + 16))
    {
      v25 = sub_22E45C22C(*v18);
      if (v26)
      {
        v27 = *(v24 + 56) + 104 * v25;
        v29 = *(v27 + 16);
        v28 = *(v27 + 32);
        v55[0] = *v27;
        v55[1] = v29;
        v55[2] = v28;
        v30 = *(v27 + 48);
        v31 = *(v27 + 64);
        v32 = *(v27 + 80);
        v56 = *(v27 + 96);
        v55[4] = v31;
        v55[5] = v32;
        v55[3] = v30;
        v33 = *(v27 + 16);
        v57[0] = *v27;
        v57[1] = v33;
        v34 = *(v27 + 32);
        v35 = *(v27 + 48);
        v36 = *(v27 + 64);
        v37 = *(v27 + 80);
        *&v57[6] = *(v27 + 96);
        v57[4] = v36;
        v57[5] = v37;
        v57[2] = v34;
        v57[3] = v35;
        *(&v57[7] + 8) = v59;
        *(&v57[6] + 8) = v58;
        *(&v57[11] + 8) = v63;
        *(&v57[10] + 8) = v62;
        *(&v57[9] + 8) = v61;
        *(&v57[8] + 8) = v60;
        *(&v57[15] + 8) = v67;
        *(&v57[14] + 8) = v66;
        *(&v57[13] + 8) = v65;
        *(&v57[12] + 8) = v64;
        v38 = v53;
        memcpy(v53, v57, 0x108uLL);
        type metadata accessor for SymbolMetadata.Backing(0);
        swift_storeEnumTagMultiPayload();
        v39 = type metadata accessor for SymbolMetadata(0);
        (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
        sub_22E4658E4(v55, v54);
        return sub_22E466FB4(&v58, v54);
      }
    }
  }

  sub_22E4774F4(a1, v16, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22E47755C(v16, type metadata accessor for SymbolKey);
LABEL_13:
    v49 = type metadata accessor for SymbolMetadata(0);
    return (*(*(v49 - 8) + 56))(v53, 1, 1, v49);
  }

  (*(v10 + 32))(v12, v16, v9);
  v41 = *(&v65 + 1);
  if (*(*(&v65 + 1) + 16) && (v42 = sub_22E45C3EC(v12), (v43 & 1) != 0))
  {
    v44 = v42;
    v45 = *(v41 + 56);
    v46 = type metadata accessor for CustomSymbol(0);
    v47 = *(v46 - 8);
    sub_22E4774F4(v45 + *(v47 + 72) * v44, v8, type metadata accessor for CustomSymbol);
    (*(v10 + 8))(v12, v9);
    (*(v47 + 56))(v8, 0, 1, v46);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    v46 = type metadata accessor for CustomSymbol(0);
    (*(*(v46 - 8) + 56))(v8, 1, 1, v46);
  }

  v48 = v52;
  sub_22E47741C(v8, v52);
  type metadata accessor for CustomSymbol(0);
  if ((*(*(v46 - 8) + 48))(v48, 1, v46) == 1)
  {
    goto LABEL_13;
  }

  v50 = v53;
  sub_22E47748C(v48, v53, type metadata accessor for CustomSymbol);
  type metadata accessor for SymbolMetadata.Backing(0);
  swift_storeEnumTagMultiPayload();
  v51 = type metadata accessor for SymbolMetadata(0);
  return (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
}

Swift::String_optional __swiftcall SymbolMetadataStore.modernSystemName(forAlias:)(Swift::String forAlias)
{
  object = forAlias._object;
  countAndFlagsBits = forAlias._countAndFlagsBits;
  v50 = type metadata accessor for CustomSymbol(0);
  MEMORY[0x28223BE20](v50);
  v49 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for SymbolMetadata.Backing(0);
  v3 = MEMORY[0x28223BE20](v53);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64338, &qword_22E47EAC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - v8;
  v10 = type metadata accessor for SymbolMetadata(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v51 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64328, &qword_22E47EAB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v47 - v14);
  v16 = type metadata accessor for SymbolKey(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = countAndFlagsBits;
  SymbolMetadataStore.symbolKey(forSystemName:)(countAndFlagsBits, object, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_22E4545D0(v15, &qword_27DA64328, &qword_22E47EAB0);
LABEL_13:
    v31 = 0;
    v32 = 0;
    goto LABEL_18;
  }

  sub_22E47748C(v15, v19, type metadata accessor for SymbolKey);
  SymbolMetadataStore.symbolMetadata(for:)(v19, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_22E47755C(v19, type metadata accessor for SymbolKey);
    sub_22E4545D0(v9, &qword_27DA64338, &qword_22E47EAC0);
    goto LABEL_13;
  }

  v20 = v51;
  sub_22E47748C(v9, v51, type metadata accessor for SymbolMetadata);
  sub_22E4774F4(v20, v6, type metadata accessor for SymbolMetadata.Backing);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v49;
    sub_22E47748C(v6, v49, type metadata accessor for CustomSymbol);
    v22 = (v21 + *(v50 + 20));
    v24 = *v22;
    v23 = v22[1];

    sub_22E47755C(v21, type metadata accessor for CustomSymbol);
  }

  else
  {
    v24 = *(v6 + 1);
    v23 = *(v6 + 2);
    v47 = *(v6 + 5);
    v25 = *(v6 + 216);
    v61 = *(v6 + 200);
    v62 = v25;
    v26 = *(v6 + 248);
    v63 = *(v6 + 232);
    v64 = v26;
    v27 = *(v6 + 152);
    v57 = *(v6 + 136);
    v58 = v27;
    v28 = *(v6 + 184);
    v59 = *(v6 + 168);
    v60 = v28;
    v29 = *(v6 + 120);
    v55 = *(v6 + 104);
    v56 = v29;
    sub_22E467010(&v55);
  }

  if (v24 == v52 && v23 == object)
  {

    sub_22E47755C(v19, type metadata accessor for SymbolKey);
LABEL_12:
    sub_22E47755C(v20, type metadata accessor for SymbolMetadata);
    goto LABEL_13;
  }

  v30 = sub_22E47D054();

  sub_22E47755C(v19, type metadata accessor for SymbolKey);
  if (v30)
  {
    goto LABEL_12;
  }

  v33 = v20;
  v34 = v48;
  sub_22E47748C(v33, v48, type metadata accessor for SymbolMetadata.Backing);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v49;
    sub_22E47748C(v34, v49, type metadata accessor for CustomSymbol);
    v36 = (v35 + *(v50 + 20));
    v38 = *v36;
    v37 = v36[1];

    sub_22E47755C(v35, type metadata accessor for CustomSymbol);
    v32 = v37;
    v31 = v38;
  }

  else
  {
    v39 = *(v34 + 8);
    v40 = *(v34 + 16);
    v41 = *(v34 + 216);
    v61 = *(v34 + 200);
    v62 = v41;
    v42 = *(v34 + 248);
    v63 = *(v34 + 232);
    v64 = v42;
    v43 = *(v34 + 152);
    v57 = *(v34 + 136);
    v58 = v43;
    v44 = *(v34 + 184);
    v59 = *(v34 + 168);
    v60 = v44;
    v45 = *(v34 + 120);
    v55 = *(v34 + 104);
    v56 = v45;
    sub_22E467010(&v55);

    v32 = v40;
    v31 = v39;
  }

LABEL_18:
  result.value._object = v32;
  result.value._countAndFlagsBits = v31;
  return result;
}

double sub_22E471DCC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(v3 + 96);
  if (!*(v6 + 16))
  {
    goto LABEL_9;
  }

  v7 = *(v4 + 88);
  v8 = sub_22E450B0C(a1, a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = *(*(v6 + 56) + 8 * v8);
  if (!*(v10 + 16))
  {
    goto LABEL_9;
  }

  v11 = sub_22E467B98();
  if ((v12 & 1) == 0)
  {

LABEL_9:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v13 = *(v10 + 56) + 24 * v11;
  v16 = *v13;
  v14 = *(v13 + 16);

  *a3 = v16;
  *(a3 + 16) = v14;
  *(a3 + 24) = v7;

  return result;
}

uint64_t sub_22E471EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 104);
  if (*(v4 + 16))
  {
    v5 = sub_22E450B0C(a2, a3);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      if (*(v7 + 16))
      {

        v8 = sub_22E467B98();
        if (v9)
        {
          v10 = *(*(v7 + 56) + 16 * v8);

          return v10;
        }
      }
    }
  }

  return 0;
}

uint64_t SymbolMetadataStore.customSymbols.setter(uint64_t a1)
{

  *(v1 + 112) = a1;

  return sub_22E471FA4();
}

uint64_t sub_22E471FA4()
{
  v42 = sub_22E47CD64();
  v1 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CustomSymbol(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v34 = v0;
  v11 = *(v0 + 112);
  v12 = sub_22E466390(MEMORY[0x277D84F90]);
  v40 = *(v11 + 16);
  if (!v40)
  {
LABEL_16:
    v32 = v34;

    *(v32 + 120) = v12;
    return result;
  }

  v13 = 0;
  v39 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v41 = (v1 + 16);
  v36 = v1;
  v37 = v5;
  v38 = (v1 + 8);
  v35 = v10;
  while (v13 < *(v11 + 16))
  {
    v14 = *(v5 + 72);
    sub_22E4774F4(v39 + v14 * v13, v10, type metadata accessor for CustomSymbol);
    v15 = *v41;
    (*v41)(v3, v10, v42);
    sub_22E4774F4(v10, v8, type metadata accessor for CustomSymbol);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v12;
    v17 = sub_22E45C3EC(v3);
    v19 = v12[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_18;
    }

    v23 = v18;
    if (v12[3] < v22)
    {
      sub_22E45E7B0(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_22E45C3EC(v3);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      v12 = v43;
      if (v23)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v31 = v17;
    sub_22E46076C();
    v17 = v31;
    v12 = v43;
    if (v23)
    {
LABEL_3:
      sub_22E477B2C(v8, v12[7] + v17 * v14);
      (*v38)(v3, v42);
      sub_22E47755C(v10, type metadata accessor for CustomSymbol);
      goto LABEL_4;
    }

LABEL_12:
    v12[(v17 >> 6) + 8] |= 1 << v17;
    v25 = v36;
    v26 = v17;
    v27 = v42;
    v15((v12[6] + *(v36 + 72) * v17), v3, v42);
    sub_22E47748C(v8, v12[7] + v26 * v14, type metadata accessor for CustomSymbol);
    v28 = v27;
    v10 = v35;
    (*(v25 + 8))(v3, v28);
    sub_22E47755C(v10, type metadata accessor for CustomSymbol);
    v29 = v12[2];
    v21 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v21)
    {
      goto LABEL_19;
    }

    v12[2] = v30;
LABEL_4:
    ++v13;
    v5 = v37;
    if (v40 == v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22E47D094();
  __break(1u);
  return result;
}

uint64_t sub_22E4723AC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_22E471FA4();
  }

  return result;
}

char *SymbolMetadataStore.symbolKeys(matching:)(char **a1)
{
  v169 = type metadata accessor for SymbolMetadata(0);
  v145 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v153 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v150);
  v149 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64338, &qword_22E47EAC0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v168 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v162 = &v139 - v8;
  v9 = type metadata accessor for SymbolKey(0);
  v172 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v152 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v170 = &v139 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v161 = &v139 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v139 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v165 = &v139 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v167 = &v139 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v156 = &v139 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v155 = &v139 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v140 = &v139 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v158 = &v139 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v139 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v157 = &v139 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v154 = &v139 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v171 = &v139 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v159 = &v139 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v151 = &v139 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v139 - v44;
  v46 = *a1;
  v47 = a1[1];
  v48 = a1[3];
  v144 = a1[2];
  v146 = v48;
  v143 = *(a1 + 32);
  v193 = *(a1 + 33);
  v192 = *(a1 + 34);
  v191 = *(a1 + 35);
  v141 = *(a1 + 9);
  v163 = a1[5];
  v147 = *(a1 + 3);
  v49 = v1[1];
  v194 = *v1;
  v195 = v49;
  v50 = v1[2];
  v51 = v1[3];
  v52 = v1[5];
  v198 = v1[4];
  v199 = v52;
  v196 = v50;
  v197 = v51;
  v53 = v1[6];
  v54 = v1[7];
  v55 = v1[9];
  v202 = v1[8];
  v203 = v55;
  v200 = v53;
  v201 = v54;
  result = sub_22E46FBE0();
  v148 = v47;
  v166 = v18;
  v164 = v9;
  v160 = v33;
  v142 = v46;
  if (v47)
  {

    if (v46 == 7105633 && v148 == 0xE300000000000000 || (sub_22E47D054() & 1) != 0)
    {
      result = sub_22E46FBE0();
      v57 = result;
      v154 = *(result + 2);
      if (v154)
      {
        v58 = 0;
        v171 = MEMORY[0x277D84F90];
        v59 = v151;
        while (v58 < *(v57 + 16))
        {
          v60 = (*(v172 + 80) + 32) & ~*(v172 + 80);
          v61 = *(v172 + 72);
          sub_22E4774F4(v57 + v60 + v61 * v58, v45, type metadata accessor for SymbolKey);
          sub_22E4774F4(v45, v59, type metadata accessor for SymbolKey);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_22E47755C(v45, type metadata accessor for SymbolKey);
            result = sub_22E47755C(v59, type metadata accessor for SymbolKey);
          }

          else
          {
            sub_22E47748C(v45, v159, type metadata accessor for SymbolKey);
            v62 = v171;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v181 = v62;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_22E476860(0, *(v62 + 2) + 1, 1);
              v62 = v181;
            }

            v65 = *(v62 + 2);
            v64 = *(v62 + 3);
            if (v65 >= v64 >> 1)
            {
              sub_22E476860((v64 > 1), v65 + 1, 1);
              v62 = v181;
            }

            *(v62 + 2) = v65 + 1;
            v171 = v62;
            result = sub_22E47748C(v159, &v62[v60 + v65 * v61], type metadata accessor for SymbolKey);
            v33 = v160;
            v59 = v151;
          }

          if (v154 == ++v58)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_119;
      }

      v171 = MEMORY[0x277D84F90];
LABEL_18:

      v66 = v168;
      v18 = v166;
    }

    else
    {
      *&v181 = v46;
      *(&v181 + 1) = v148;
      v127 = sub_22E470120();
      if (!*(v127 + 16))
      {

        return MEMORY[0x277D84F90];
      }

      v159 = v127;
      result = sub_22E46FBE0();
      v128 = result;
      v129 = *(result + 2);
      if (v129)
      {
        v130 = 0;
        v131 = MEMORY[0x277D84F90];
        v66 = v168;
        v132 = v154;
        v133 = v171;
        while (v130 < *(v128 + 16))
        {
          v134 = (*(v172 + 80) + 32) & ~*(v172 + 80);
          v135 = *(v172 + 72);
          sub_22E4774F4(v128 + v134 + v135 * v130, v133, type metadata accessor for SymbolKey);
          if (sub_22E46E7AC(v133, v159))
          {
            sub_22E47748C(v133, v132, type metadata accessor for SymbolKey);
            v136 = swift_isUniquelyReferenced_nonNull_native();
            *&v181 = v131;
            if ((v136 & 1) == 0)
            {
              sub_22E476860(0, *(v131 + 2) + 1, 1);
              v131 = v181;
            }

            v138 = *(v131 + 2);
            v137 = *(v131 + 3);
            if (v138 >= v137 >> 1)
            {
              sub_22E476860((v137 > 1), v138 + 1, 1);
              v131 = v181;
            }

            *(v131 + 2) = v138 + 1;
            result = sub_22E47748C(v132, &v131[v134 + v138 * v135], type metadata accessor for SymbolKey);
            v66 = v168;
            v133 = v171;
          }

          else
          {
            result = sub_22E47755C(v133, type metadata accessor for SymbolKey);
          }

          ++v130;
          v18 = v166;
          if (v129 == v130)
          {
            goto LABEL_116;
          }
        }

        goto LABEL_123;
      }

      v131 = MEMORY[0x277D84F90];
      v66 = v168;
LABEL_116:
      v171 = v131;

      v33 = v160;
    }
  }

  else
  {
    v171 = result;
    v66 = v168;
  }

  v67 = v162;
  if ((v193 & 1) == 0)
  {
    v159 = *(v171 + 2);
    if (v159)
    {
      v68 = 0;
      v69 = MEMORY[0x277D84F90];
      while (v68 < *(v171 + 2))
      {
        v70 = (*(v172 + 80) + 32) & ~*(v172 + 80);
        v71 = *(v172 + 72);
        v72 = v157;
        sub_22E4774F4(&v171[v70 + v71 * v68], v157, type metadata accessor for SymbolKey);
        sub_22E4774F4(v72, v33, type metadata accessor for SymbolKey);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_22E47755C(v33, type metadata accessor for SymbolKey);
          sub_22E47748C(v72, v158, type metadata accessor for SymbolKey);
          v73 = swift_isUniquelyReferenced_nonNull_native();
          *&v181 = v69;
          if ((v73 & 1) == 0)
          {
            sub_22E476860(0, *(v69 + 2) + 1, 1);
            v69 = v181;
          }

          v75 = *(v69 + 2);
          v74 = *(v69 + 3);
          if (v75 >= v74 >> 1)
          {
            sub_22E476860((v74 > 1), v75 + 1, 1);
            v69 = v181;
          }

          *(v69 + 2) = v75 + 1;
          result = sub_22E47748C(v158, &v69[v70 + v75 * v71], type metadata accessor for SymbolKey);
          v33 = v160;
        }

        else
        {
          result = sub_22E47755C(v72, type metadata accessor for SymbolKey);
        }

        if (v159 == ++v68)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_120;
    }

    v69 = MEMORY[0x277D84F90];
LABEL_32:

    v171 = v69;
    v66 = v168;
    v67 = v162;
  }

  if (v192)
  {
    v76 = v171;
    if (v191)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v160 = *(v171 + 2);
    if (v160)
    {
      v77 = 0;
      v78 = MEMORY[0x277D84F90];
      v79 = v140;
      while (v77 < *(v171 + 2))
      {
        v80 = (*(v172 + 80) + 32) & ~*(v172 + 80);
        v81 = *(v172 + 72);
        sub_22E4774F4(&v171[v80 + v81 * v77], v79, type metadata accessor for SymbolKey);
        v82 = v79;
        v83 = v79;
        v84 = v155;
        sub_22E4774F4(v82, v155, type metadata accessor for SymbolKey);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_22E47755C(v83, type metadata accessor for SymbolKey);
          result = sub_22E47755C(v84, type metadata accessor for SymbolKey);
          v79 = v83;
        }

        else
        {
          sub_22E47755C(v84, type metadata accessor for SymbolKey);
          sub_22E47748C(v83, v156, type metadata accessor for SymbolKey);
          v85 = swift_isUniquelyReferenced_nonNull_native();
          *&v181 = v78;
          v79 = v83;
          if ((v85 & 1) == 0)
          {
            sub_22E476860(0, *(v78 + 16) + 1, 1);
            v78 = v181;
          }

          v87 = *(v78 + 16);
          v86 = *(v78 + 24);
          if (v87 >= v86 >> 1)
          {
            sub_22E476860((v86 > 1), v87 + 1, 1);
            v78 = v181;
          }

          *(v78 + 16) = v87 + 1;
          result = sub_22E47748C(v156, v78 + v80 + v87 * v81, type metadata accessor for SymbolKey);
        }

        if (v160 == ++v77)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_121;
    }

    v78 = MEMORY[0x277D84F90];
LABEL_48:

    v76 = v78;
    v66 = v168;
    v67 = v162;
    if (v191)
    {
      goto LABEL_67;
    }
  }

  v88 = *(v76 + 16);
  if (v88)
  {
    v89 = 0;
    v171 = (v145 + 48);
    v90 = MEMORY[0x277D84F90];
    v159 = v88;
    while (1)
    {
      if (v89 >= *(v76 + 16))
      {
        goto LABEL_122;
      }

      v97 = (*(v172 + 80) + 32) & ~*(v172 + 80);
      v98 = *(v172 + 72);
      v99 = v167;
      sub_22E4774F4(v76 + v97 + v98 * v89, v167, type metadata accessor for SymbolKey);
      SymbolMetadataStore.symbolMetadata(for:)(v99, v67);
      if ((*v171)(v67, 1, v169) == 1)
      {
        break;
      }

      v100 = v149;
      sub_22E4774F4(v67, v149, type metadata accessor for SymbolMetadata.Backing);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22E47755C(v100, type metadata accessor for SymbolMetadata.Backing);
        sub_22E47755C(v67, type metadata accessor for SymbolMetadata);
        goto LABEL_60;
      }

      v164 = *(v100 + 16);
      v91 = *(v100 + 40);
      v160 = *(v100 + 80);
      v92 = *(v100 + 216);
      v187 = *(v100 + 200);
      v188 = v92;
      v93 = *(v100 + 248);
      v189 = *(v100 + 232);
      v190 = v93;
      v94 = *(v100 + 152);
      v183 = *(v100 + 136);
      v184 = v94;
      v95 = *(v100 + 184);
      v185 = *(v100 + 168);
      v186 = v95;
      v96 = *(v100 + 120);
      v181 = *(v100 + 104);
      v182 = v96;
      sub_22E467010(&v181);
      v67 = v162;

      sub_22E47755C(v67, type metadata accessor for SymbolMetadata);
      if (!v91)
      {
        v88 = v159;
        goto LABEL_60;
      }

      result = sub_22E47755C(v167, type metadata accessor for SymbolKey);
      v88 = v159;
LABEL_53:
      ++v89;
      v18 = v166;
      if (v88 == v89)
      {
        goto LABEL_66;
      }
    }

    sub_22E4545D0(v67, &qword_27DA64338, &qword_22E47EAC0);
LABEL_60:
    sub_22E47748C(v167, v165, type metadata accessor for SymbolKey);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v173[0] = v90;
    if ((v101 & 1) == 0)
    {
      sub_22E476860(0, *(v90 + 16) + 1, 1);
      v90 = v173[0];
    }

    v103 = *(v90 + 16);
    v102 = *(v90 + 24);
    if (v103 >= v102 >> 1)
    {
      sub_22E476860((v102 > 1), v103 + 1, 1);
      v90 = v173[0];
    }

    *(v90 + 16) = v103 + 1;
    result = sub_22E47748C(v165, v90 + v97 + v103 * v98, type metadata accessor for SymbolKey);
    v67 = v162;
    goto LABEL_53;
  }

  v90 = MEMORY[0x277D84F90];
LABEL_66:

  v76 = v90;
  v66 = v168;
LABEL_67:
  if (!*(v163 + 2))
  {
LABEL_82:
    v166 = v147;
    if (*(v147 + 16))
    {
      v113 = *(v76 + 16);
      if (v113)
      {
        v114 = 0;
        v171 = (v145 + 48);
        v167 = MEMORY[0x277D84F90];
        v165 = v113;
        while (1)
        {
          if (v114 >= *(v76 + 16))
          {
            goto LABEL_118;
          }

          v115 = (*(v172 + 80) + 32) & ~*(v172 + 80);
          v116 = *(v172 + 72);
          v117 = v170;
          sub_22E4774F4(v76 + v115 + v116 * v114, v170, type metadata accessor for SymbolKey);
          SymbolMetadataStore.symbolMetadata(for:)(v117, v66);
          if ((*v171)(v66, 1, v169) == 1)
          {
            sub_22E4545D0(v66, &qword_27DA64338, &qword_22E47EAC0);
          }

          else
          {
            v118 = v66;
            v119 = v153;
            v120 = sub_22E47748C(v118, v153, type metadata accessor for SymbolMetadata);
            MEMORY[0x28223BE20](v120);
            *(&v139 - 2) = v119;
            v121 = sub_22E46EF1C(sub_22E477C34, (&v139 - 4), v166);
            sub_22E47755C(v119, type metadata accessor for SymbolMetadata);
            if (v121)
            {
              sub_22E47748C(v170, v152, type metadata accessor for SymbolKey);
              v122 = v167;
              v123 = swift_isUniquelyReferenced_nonNull_native();
              *&v181 = v122;
              if ((v123 & 1) == 0)
              {
                sub_22E476860(0, *(v122 + 16) + 1, 1);
                v122 = v181;
              }

              v66 = v168;
              v125 = *(v122 + 16);
              v124 = *(v122 + 24);
              if (v125 >= v124 >> 1)
              {
                sub_22E476860((v124 > 1), v125 + 1, 1);
                v122 = v181;
              }

              *(v122 + 16) = v125 + 1;
              v167 = v122;
              result = sub_22E47748C(v152, v122 + v115 + v125 * v116, type metadata accessor for SymbolKey);
              v113 = v165;
              goto LABEL_87;
            }

            v66 = v168;
            v113 = v165;
          }

          result = sub_22E47755C(v170, type metadata accessor for SymbolKey);
LABEL_87:
          if (v113 == ++v114)
          {
            goto LABEL_98;
          }
        }
      }

      v167 = MEMORY[0x277D84F90];
LABEL_98:

      v76 = v167;
    }

    if (v146)
    {
      v187 = v200;
      v188 = v201;
      v189 = v202;
      v190 = v203;
      v183 = v196;
      v184 = v197;
      v185 = v198;
      v186 = v199;
      v181 = v194;
      v182 = v195;
      v173[0] = v142;
      v173[1] = v148;
      v173[2] = v144;
      v173[3] = v146;
      v174 = v143;
      v175 = v193;
      v176 = v192;
      v177 = v191;
      v178 = v141;
      v179 = v163;
      v180 = v147;
      v126 = sub_22E4737A4(v76, v144, v146, v173, v143 & 1);

      return v126;
    }

    return v76;
  }

  v104 = *(v76 + 16);
  if (!v104)
  {
    v106 = MEMORY[0x277D84F90];
LABEL_81:

    v76 = v106;
    goto LABEL_82;
  }

  v105 = 0;
  v106 = MEMORY[0x277D84F90];
  while (v105 < *(v76 + 16))
  {
    v107 = (*(v172 + 80) + 32) & ~*(v172 + 80);
    v108 = *(v172 + 72);
    v109 = sub_22E4774F4(v76 + v107 + v108 * v105, v18, type metadata accessor for SymbolKey);
    MEMORY[0x28223BE20](v109);
    *(&v139 - 2) = v18;
    if (sub_22E46EF1C(sub_22E4775BC, (&v139 - 4), v163))
    {
      sub_22E47748C(v18, v161, type metadata accessor for SymbolKey);
      v110 = swift_isUniquelyReferenced_nonNull_native();
      *&v181 = v106;
      if ((v110 & 1) == 0)
      {
        sub_22E476860(0, *(v106 + 16) + 1, 1);
        v106 = v181;
      }

      v112 = *(v106 + 16);
      v111 = *(v106 + 24);
      if (v112 >= v111 >> 1)
      {
        sub_22E476860((v111 > 1), v112 + 1, 1);
        v106 = v181;
      }

      *(v106 + 16) = v112 + 1;
      result = sub_22E47748C(v161, v106 + v107 + v112 * v108, type metadata accessor for SymbolKey);
      v18 = v166;
    }

    else
    {
      result = sub_22E47755C(v18, type metadata accessor for SymbolKey);
    }

    ++v105;
    v66 = v168;
    if (v104 == v105)
    {
      goto LABEL_81;
    }
  }

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
  return result;
}

uint64_t sub_22E4737A4(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v179) = a5;
  v173 = a2;
  v153 = a1;
  v155 = type metadata accessor for CustomSymbol(0);
  v144 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v157 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for SymbolMetadata.Backing(0);
  MEMORY[0x28223BE20](v175);
  v10 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64330, &qword_22E47EAB8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v158 = &v142 - v15;
  v174 = sub_22E47CD64();
  v143 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v156 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64338, &qword_22E47EAC0);
  MEMORY[0x28223BE20](v17 - 8);
  v169 = &v142 - v18;
  v19 = type metadata accessor for SymbolMetadata(0);
  v147 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64340, &qword_22E47EC48);
  MEMORY[0x28223BE20](v22 - 8);
  v167 = &v142 - v23;
  v24 = type metadata accessor for SymbolMetadataStore.RelevantSymbol(0);
  v146 = *(v24 - 1);
  v25 = MEMORY[0x28223BE20](v24);
  v168 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v148 = &v142 - v27;
  v178 = type metadata accessor for SymbolKey(0);
  v171 = *(v178 - 8);
  v28 = MEMORY[0x28223BE20](v178);
  v176 = (&v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x28223BE20](v28);
  v161 = &v142 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (&v142 - v33);
  MEMORY[0x28223BE20](v32);
  v177 = &v142 - v35;
  v36 = *(a4 + 56);
  v37 = v5[7];
  v191 = v5[6];
  v192 = v37;
  v38 = v5[9];
  v193 = v5[8];
  v194 = v38;
  v39 = v5[3];
  v187 = v5[2];
  v188 = v39;
  v40 = v5[5];
  v189 = v5[4];
  v190 = v40;
  v41 = v5[1];
  v185 = *v5;
  v186 = v41;

  v42 = sub_22E46D898(v173, a3, v179);
  v44 = v42;
  v150 = v45;
  if (!*(v42 + 16) && !*(v43 + 16))
  {
    v122 = v153;

    return v122;
  }

  v149 = v43;
  v173 = v24;
  v46 = v36[2];
  v170 = v10;
  v154 = v14;
  v165 = v46;
  v166 = v19;
  v159 = v21;
  v162 = v34;
  v179 = v42;
  if (v46)
  {
    v47 = 0;
    v163 = (v36 + 4);
    v48 = v42 + 56;
    v160 = MEMORY[0x277D84F90];
    v164 = v36;
    while (1)
    {
      while (1)
      {
        if (v47 >= v36[2])
        {
          __break(1u);
          goto LABEL_76;
        }

        v49 = &v163[4 * v47];
        v50 = *v49;
        v51 = v49[3];
        ++v47;
        v172 = *(v49 + 1);
        v52 = sub_22E47CE04();
        v54 = v53;
        if (*(v44 + 16))
        {
          break;
        }

LABEL_5:

        v10 = v170;
        v36 = v164;
        if (v47 == v165)
        {
          goto LABEL_24;
        }
      }

      v55 = v52;
      sub_22E47D0F4();

      sub_22E47CE24();
      v56 = sub_22E47D124();
      v57 = -1 << *(v44 + 32);
      v58 = v56 & ~v57;
      if (((*(v48 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
      {
LABEL_16:

        v34 = v162;
        v44 = v179;
        goto LABEL_5;
      }

      v59 = ~v57;
      while (1)
      {
        v60 = (*(v179 + 48) + 16 * v58);
        v61 = *v60 == v55 && v60[1] == v54;
        if (v61 || (sub_22E47D054() & 1) != 0)
        {
          break;
        }

        v58 = (v58 + 1) & v59;
        if (((*(v48 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v62 = v160;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v62;
      *&v180[0] = v62;
      v10 = v170;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22E4768C4(0, *(v62 + 16) + 1, 1);
        v64 = *&v180[0];
      }

      v44 = v179;
      v65 = v64;
      v67 = *(v64 + 16);
      v66 = *(v64 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_22E4768C4((v66 > 1), v67 + 1, 1);
        v44 = v179;
        v65 = *&v180[0];
      }

      *(v65 + 16) = v67 + 1;
      v160 = v65;
      v68 = v65 + 32 * v67;
      *(v68 + 32) = v50;
      *(v68 + 40) = v172;
      *(v68 + 56) = v51;
      v34 = v162;
      v36 = v164;
      if (v47 == v165)
      {
        goto LABEL_24;
      }
    }
  }

  v160 = MEMORY[0x277D84F90];
LABEL_24:
  v69 = *(v153 + 16);
  if (v69)
  {
    v145 = 0;
    v70 = v153 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
    *&v172 = *(v171 + 72);
    v71 = (v147 + 7);
    v163 = (v143 + 32);
    v152 = (v144 + 56);
    v153 = v143 + 8;
    v151 = (v144 + 48);
    v165 = (v147 + 6);
    v72 = (v146 + 56);
    v147 = (v146 + 48);
    v164 = MEMORY[0x277D84F90];
    v73 = v173;
    v74 = v156;
    while (1)
    {
      v77 = v177;
      sub_22E4774F4(v70, v177, type metadata accessor for SymbolKey);
      sub_22E4774F4(v77, v34, type metadata accessor for SymbolKey);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22E47755C(v34, type metadata accessor for SymbolKey);
      }

      else
      {
        v78 = *(&v185 + 1);
        if (*(*(&v185 + 1) + 16))
        {
          v79 = sub_22E45C22C(*v34);
          if (v80)
          {
            v81 = *(v78 + 56) + 104 * v79;
            v83 = *(v81 + 16);
            v82 = *(v81 + 32);
            v182[0] = *v81;
            v182[1] = v83;
            v182[2] = v82;
            v84 = *(v81 + 48);
            v85 = *(v81 + 64);
            v86 = *(v81 + 80);
            v183 = *(v81 + 96);
            v182[4] = v85;
            v182[5] = v86;
            v182[3] = v84;
            v87 = *v81;
            v88 = *(v81 + 32);
            v184[1] = *(v81 + 16);
            v184[2] = v88;
            v184[0] = v87;
            v89 = *(v81 + 48);
            v90 = *(v81 + 64);
            v91 = *(v81 + 80);
            *&v184[6] = *(v81 + 96);
            v184[4] = v90;
            v184[5] = v91;
            v184[3] = v89;
            *(&v184[7] + 8) = v186;
            *(&v184[6] + 8) = v185;
            *(&v184[11] + 8) = v190;
            *(&v184[10] + 8) = v189;
            *(&v184[9] + 8) = v188;
            *(&v184[8] + 8) = v187;
            *(&v184[15] + 8) = v194;
            *(&v184[14] + 8) = v193;
            *(&v184[13] + 8) = v192;
            *(&v184[12] + 8) = v191;
            v75 = v169;
            memcpy(v169, v184, 0x108uLL);
            swift_storeEnumTagMultiPayload();
            v92 = v166;
            (*v71)(v75, 0, 1, v166);
            sub_22E4658E4(v182, v180);
            sub_22E466FB4(&v185, v180);
            goto LABEL_44;
          }
        }
      }

      v93 = v161;
      sub_22E4774F4(v177, v161, type metadata accessor for SymbolKey);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_22E47755C(v93, type metadata accessor for SymbolKey);
        v75 = v169;
        (*v71)(v169, 1, 1, v166);
LABEL_27:
        sub_22E47755C(v177, type metadata accessor for SymbolKey);
        sub_22E4545D0(v75, &qword_27DA64338, &qword_22E47EAC0);
        v76 = v167;
        (*v72)(v167, 1, 1, v73);
        goto LABEL_28;
      }

      (*v163)(v74, v93, v174);
      v94 = *(&v192 + 1);
      if (*(*(&v192 + 1) + 16) && (v95 = sub_22E45C3EC(v74), (v96 & 1) != 0))
      {
        sub_22E4774F4(*(v94 + 56) + *(v144 + 72) * v95, v158, type metadata accessor for CustomSymbol);
        v97 = 0;
      }

      else
      {
        v97 = 1;
      }

      (*v153)(v74, v174);
      v98 = v158;
      v99 = v97;
      v100 = v155;
      (*v152)(v158, v99, 1, v155);
      v101 = v98;
      v102 = v154;
      sub_22E47741C(v101, v154);
      if ((*v151)(v102, 1, v100) == 1)
      {
        v103 = *v71;
        v75 = v169;
        v104 = v169;
        v105 = 1;
      }

      else
      {
        v75 = v169;
        sub_22E47748C(v102, v169, type metadata accessor for CustomSymbol);
        swift_storeEnumTagMultiPayload();
        v103 = *v71;
        v104 = v75;
        v105 = 0;
      }

      v92 = v166;
      v103(v104, v105, 1, v166);
      v74 = v156;
LABEL_44:
      v106 = (*v165)(v75, 1, v92);
      v107 = v159;
      if (v106 == 1)
      {
        goto LABEL_27;
      }

      sub_22E47748C(v75, v159, type metadata accessor for SymbolMetadata);
      v108 = sub_22E46BC5C(v107, v179, v149, v150);
      if (v109)
      {
        if (*(v160 + 16))
        {
          MEMORY[0x28223BE20](v108);
          *(&v142 - 2) = v107;
          v110 = v145;
          v112 = sub_22E46EE48(sub_22E477AF0, (&v142 - 4), v111);
          v145 = v110;
          sub_22E47755C(v177, type metadata accessor for SymbolKey);
          if (v112)
          {
            v73 = v173;
            v76 = v167;
            sub_22E4774F4(v107, &v167[*(v173 + 5)], type metadata accessor for SymbolMetadata);
            v113 = 0;
            *v76 = 1000;
            goto LABEL_53;
          }

          v113 = 1;
          v73 = v173;
        }

        else
        {
          sub_22E47755C(v177, type metadata accessor for SymbolKey);
          v113 = 1;
        }

        v76 = v167;
      }

      else
      {
        v114 = v108;
        sub_22E47755C(v177, type metadata accessor for SymbolKey);
        v76 = v167;
        sub_22E4774F4(v107, &v167[*(v73 + 5)], type metadata accessor for SymbolMetadata);
        v113 = 0;
        *v76 = v114;
      }

LABEL_53:
      v34 = v162;
      (*v72)(v76, v113, 1, v73);
      sub_22E47755C(v107, type metadata accessor for SymbolMetadata);
      if ((*v147)(v76, 1, v73) != 1)
      {
        sub_22E47748C(v76, v148, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v115 = v164;
        }

        else
        {
          v115 = sub_22E478C78(0, v164[2] + 1, 1, v164);
        }

        v117 = v115[2];
        v116 = v115[3];
        if (v117 >= v116 >> 1)
        {
          v115 = sub_22E478C78((v116 > 1), v117 + 1, 1, v115);
        }

        v115[2] = v117 + 1;
        v118 = (*(v146 + 80) + 32) & ~*(v146 + 80);
        v164 = v115;
        sub_22E47748C(v148, v115 + v118 + *(v146 + 72) * v117, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        v73 = v173;
        goto LABEL_29;
      }

LABEL_28:
      sub_22E4545D0(v76, &qword_27DA64340, &qword_22E47EC48);
LABEL_29:
      v70 += v172;
      if (!--v69)
      {

        v10 = v170;
        v47 = v145;
        v119 = v164;
        goto LABEL_62;
      }
    }
  }

  v47 = 0;
  v119 = MEMORY[0x277D84F90];
LABEL_62:
  *&v184[0] = v119;

  sub_22E47533C(v184);
  if (!v47)
  {

    v120 = *&v184[0];
    v121 = *(*&v184[0] + 16);
    if (v121)
    {
      *&v182[0] = MEMORY[0x277D84F90];
      sub_22E476860(0, v121, 0);
      v122 = *&v182[0];
      v123 = *(v146 + 80);
      v179 = v120;
      v124 = v120 + ((v123 + 32) & ~v123);
      v125 = *(v146 + 72);
      v126 = (v143 + 16);
      do
      {
        v127 = v168;
        sub_22E4774F4(v124, v168, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        sub_22E47748C(v127 + *(v173 + 5), v10, type metadata accessor for SymbolMetadata.Backing);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v128 = v157;
          sub_22E47748C(v10, v157, type metadata accessor for CustomSymbol);
          (*v126)(v176, v128, v174);
          sub_22E47755C(v128, type metadata accessor for CustomSymbol);
        }

        else
        {
          v129 = *(v10 + 5);
          v180[4] = *(v10 + 4);
          v180[5] = v129;
          v181 = *(v10 + 12);
          v130 = *(v10 + 1);
          v180[0] = *v10;
          v180[1] = v130;
          v131 = *(v10 + 3);
          v180[2] = *(v10 + 2);
          v180[3] = v131;
          v132 = *(v10 + 120);
          v184[0] = *(v10 + 104);
          v184[1] = v132;
          v133 = *(v10 + 136);
          v134 = *(v10 + 152);
          v135 = *(v10 + 184);
          v184[4] = *(v10 + 168);
          v184[5] = v135;
          v184[2] = v133;
          v184[3] = v134;
          v136 = *(v10 + 200);
          v137 = *(v10 + 216);
          v138 = *(v10 + 248);
          v184[8] = *(v10 + 232);
          v184[9] = v138;
          v184[6] = v136;
          v184[7] = v137;
          sub_22E467010(v184);
          sub_22E465940(v180);
          *v176 = v180[0];
        }

        swift_storeEnumTagMultiPayload();
        *&v182[0] = v122;
        v140 = *(v122 + 16);
        v139 = *(v122 + 24);
        if (v140 >= v139 >> 1)
        {
          sub_22E476860((v139 > 1), v140 + 1, 1);
          v122 = *&v182[0];
        }

        *(v122 + 16) = v140 + 1;
        sub_22E47748C(v176, v122 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v140, type metadata accessor for SymbolKey);
        v124 += v125;
        --v121;
      }

      while (v121);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v122;
  }

LABEL_76:

  __break(1u);
  return result;
}

void *SymbolMetadataStore.symbolMetadata(matching:)(char **a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64330, &qword_22E47EAB8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v76 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v68 - v6;
  v71 = sub_22E47CD64();
  v84 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64338, &qword_22E47EAC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v68 - v11;
  v13 = type metadata accessor for SymbolMetadata(0);
  v75 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v82 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for SymbolKey(0);
  v15 = *(v85 - 8);
  v16 = MEMORY[0x28223BE20](v85);
  v77 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v83 = (&v68 - v19);
  MEMORY[0x28223BE20](v18);
  v21 = &v68 - v20;
  v22 = v1[7];
  v96 = v1[6];
  v97 = v22;
  v23 = v1[9];
  v98 = v1[8];
  v99 = v23;
  v24 = v1[3];
  v92 = v1[2];
  v93 = v24;
  v25 = v1[5];
  v94 = v1[4];
  v95 = v25;
  v26 = v1[1];
  v90 = *v1;
  v91 = v26;
  v27 = SymbolMetadataStore.symbolKeys(matching:)(a1);
  v28 = *(v27 + 2);
  if (v28)
  {
    v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v68 = v27;
    v30 = &v27[v29];
    v31 = *(v15 + 72);
    v80 = (v75 + 56);
    v81 = v31;
    v72 = (v84 + 1);
    v73 = (v84 + 4);
    v84 = MEMORY[0x277D84F90];
    v78 = v13;
    v79 = (v75 + 48);
    v32 = v71;
    v74 = v9;
    v70 = v12;
    while (1)
    {
      sub_22E4774F4(v30, v21, type metadata accessor for SymbolKey);
      v33 = v83;
      sub_22E4774F4(v21, v83, type metadata accessor for SymbolKey);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22E47755C(v33, type metadata accessor for SymbolKey);
      }

      else
      {
        v34 = *(&v90 + 1);
        if (*(*(&v90 + 1) + 16))
        {
          v35 = sub_22E45C22C(*v83);
          if (v36)
          {
            v37 = *(v34 + 56) + 104 * v35;
            v39 = *(v37 + 16);
            v38 = *(v37 + 32);
            v87[0] = *v37;
            v87[1] = v39;
            v87[2] = v38;
            v40 = *(v37 + 48);
            v41 = *(v37 + 64);
            v42 = *(v37 + 80);
            v88 = *(v37 + 96);
            v87[4] = v41;
            v87[5] = v42;
            v87[3] = v40;
            v43 = *(v37 + 16);
            v89[0] = *v37;
            v89[1] = v43;
            v44 = *(v37 + 32);
            v45 = *(v37 + 48);
            v46 = *(v37 + 64);
            v47 = *(v37 + 80);
            *&v89[6] = *(v37 + 96);
            v89[4] = v46;
            v89[5] = v47;
            v89[2] = v44;
            v89[3] = v45;
            *(&v89[7] + 8) = v91;
            *(&v89[6] + 8) = v90;
            *(&v89[11] + 8) = v95;
            *(&v89[10] + 8) = v94;
            *(&v89[9] + 8) = v93;
            *(&v89[8] + 8) = v92;
            *(&v89[15] + 8) = v99;
            *(&v89[14] + 8) = v98;
            *(&v89[13] + 8) = v97;
            *(&v89[12] + 8) = v96;
            memcpy(v12, v89, 0x108uLL);
            type metadata accessor for SymbolMetadata.Backing(0);
            swift_storeEnumTagMultiPayload();
            (*v80)(v12, 0, 1, v13);
            sub_22E4658E4(v87, v86);
            sub_22E466FB4(&v90, v86);
            goto LABEL_21;
          }
        }
      }

      v48 = v77;
      sub_22E4774F4(v21, v77, type metadata accessor for SymbolKey);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v73)(v9, v48, v32);
        v49 = *(&v97 + 1);
        if (*(*(&v97 + 1) + 16))
        {
          v50 = v7;
          v51 = sub_22E45C3EC(v9);
          if (v52)
          {
            v53 = v51;
            v69 = *(v49 + 56);
            v54 = type metadata accessor for CustomSymbol(0);
            v55 = *(v54 - 8);
            v56 = v69 + *(v55 + 72) * v53;
            v7 = v50;
            sub_22E4774F4(v56, v50, type metadata accessor for CustomSymbol);
            (*v72)(v9, v71);
            (*(v55 + 56))(v50, 0, 1, v54);
            v12 = v70;
            v32 = v71;
          }

          else
          {
            (*v72)(v9, v32);
            v54 = type metadata accessor for CustomSymbol(0);
            (*(*(v54 - 8) + 56))(v7, 1, 1, v54);
            v12 = v70;
          }
        }

        else
        {
          (*v72)(v9, v32);
          v54 = type metadata accessor for CustomSymbol(0);
          (*(*(v54 - 8) + 56))(v7, 1, 1, v54);
        }

        v57 = v76;
        sub_22E47741C(v7, v76);
        type metadata accessor for CustomSymbol(0);
        if ((*(*(v54 - 8) + 48))(v57, 1, v54) == 1)
        {
          v58 = *v80;
          v59 = v12;
          v60 = 1;
        }

        else
        {
          sub_22E47748C(v76, v12, type metadata accessor for CustomSymbol);
          type metadata accessor for SymbolMetadata.Backing(0);
          swift_storeEnumTagMultiPayload();
          v58 = *v80;
          v59 = v12;
          v60 = 0;
        }

        v13 = v78;
        v58(v59, v60, 1, v78);
        v9 = v74;
      }

      else
      {
        sub_22E47755C(v48, type metadata accessor for SymbolKey);
        (*v80)(v12, 1, 1, v13);
      }

LABEL_21:
      sub_22E47755C(v21, type metadata accessor for SymbolKey);
      if ((*v79)(v12, 1, v13) == 1)
      {
        sub_22E4545D0(v12, &qword_27DA64338, &qword_22E47EAC0);
      }

      else
      {
        sub_22E47748C(v12, v82, type metadata accessor for SymbolMetadata);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v61 = v84;
        }

        else
        {
          v61 = sub_22E478CA0(0, v84[2] + 1, 1, v84);
        }

        v63 = v61[2];
        v62 = v61[3];
        v64 = v75;
        if (v63 >= v62 >> 1)
        {
          v66 = sub_22E478CA0((v62 > 1), v63 + 1, 1, v61);
          v64 = v75;
          v61 = v66;
        }

        v61[2] = v63 + 1;
        v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v84 = v61;
        sub_22E47748C(v82, v61 + v65 + *(v64 + 72) * v63, type metadata accessor for SymbolMetadata);
        v13 = v78;
      }

      v30 += v81;
      if (!--v28)
      {

        return v84;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void *SymbolMetadataStore.localizationOverrideBundle.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t SymbolMetadataStore.localizationOverrideTableName.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t SymbolMetadataStore.localizationOverrideTableName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t sub_22E47533C(uint64_t *a1)
{
  v2 = *(type metadata accessor for SymbolMetadataStore.RelevantSymbol(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22E477044(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22E4753E4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22E4753E4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22E47D034();
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
        type metadata accessor for SymbolMetadataStore.RelevantSymbol(0);
        v6 = sub_22E47CEA4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SymbolMetadataStore.RelevantSymbol(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22E475764(v8, v9, a1, v4);
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
    return sub_22E475510(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22E475510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for SymbolMetadataStore.RelevantSymbol(0);
  v8 = MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v27 - v11);
  result = MEMORY[0x28223BE20](v10);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    while (1)
    {
      sub_22E4774F4(v22, v16, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      sub_22E4774F4(v19, v12, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      v23 = *v16;
      v24 = *v12;
      sub_22E47755C(v12, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      result = sub_22E47755C(v16, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      if (v24 >= v23)
      {
LABEL_4:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v21 = v31 - 1;
        v22 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_22E47748C(v22, v35, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_22E47748C(v25, v19, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22E475764(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v120 = type metadata accessor for SymbolMetadataStore.RelevantSymbol(0);
  v9 = *(v120 - 8);
  v10 = MEMORY[0x28223BE20](v120);
  v111 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v119 = &v103 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v122 = (&v103 - v15);
  result = MEMORY[0x28223BE20](v14);
  v121 = (&v103 - v17);
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_22E476624(a4);
    }

    v123 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v99 = v9;
      while (*a3)
      {
        v100 = *(result + 16 * a4);
        v101 = result;
        v9 = *(result + 16 * (a4 - 1) + 40);
        sub_22E47609C(*a3 + *(v99 + 72) * v100, *a3 + *(v99 + 72) * *(result + 16 * (a4 - 1) + 32), *a3 + *(v99 + 72) * v9, v5);
        if (v6)
        {
        }

        if (v9 < v100)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_22E476624(v101);
        }

        if ((a4 - 2) >= *(v101 + 2))
        {
          goto LABEL_123;
        }

        v102 = &v101[16 * a4];
        *v102 = v100;
        *(v102 + 1) = v9;
        v123 = v101;
        sub_22E476598(a4 - 1);
        result = v123;
        a4 = *(v123 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v109 = a3;
  v107 = a4;
  v105 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v112 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = *a3;
      v24 = *(v9 + 72);
      v5 = v23 + v24 * v22;
      v25 = v121;
      sub_22E4774F4(v5, v121, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      v26 = v122;
      sub_22E4774F4(v23 + v24 * v21, v122, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      v27 = *v25;
      v114 = *v26;
      v115 = v27;
      sub_22E47755C(v26, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      result = sub_22E47755C(v25, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
      v106 = v21;
      v28 = v21 + 2;
      v116 = v24;
      v117 = v18;
      v29 = v23 + v24 * v28;
      while (v18 != v28)
      {
        LODWORD(v118) = v114 < v115;
        v30 = v121;
        sub_22E4774F4(v29, v121, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        v31 = v6;
        v32 = v122;
        sub_22E4774F4(v5, v122, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        v33 = *v30;
        v34 = *v32;
        v35 = v32;
        v6 = v31;
        sub_22E47755C(v35, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        v18 = v117;
        result = sub_22E47755C(v30, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        ++v28;
        v29 += v116;
        v5 += v116;
        if (((v118 ^ (v34 >= v33)) & 1) == 0)
        {
          v18 = v28 - 1;
          break;
        }
      }

      a3 = v109;
      v9 = v105;
      v21 = v106;
      a4 = v107;
      if (v114 < v115)
      {
        if (v18 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v18)
        {
          v36 = v116 * (v18 - 1);
          v37 = v18 * v116;
          v117 = v18;
          v38 = v18;
          v39 = v106;
          v40 = v106 * v116;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!v41)
              {
                goto LABEL_132;
              }

              v5 = v41 + v40;
              sub_22E47748C(v41 + v40, v111, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
              if (v40 < v36 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_22E47748C(v111, v41 + v36, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
              a3 = v109;
            }

            ++v39;
            v36 -= v116;
            v37 -= v116;
            v40 += v116;
          }

          while (v39 < v38);
          v9 = v105;
          v21 = v106;
          a4 = v107;
          v18 = v117;
        }
      }
    }

    v42 = a3[1];
    if (v18 < v42)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_125;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_127;
        }

        if (v21 + a4 >= v42)
        {
          v43 = a3[1];
        }

        else
        {
          v43 = v21 + a4;
        }

        if (v43 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v18 != v43)
        {
          break;
        }
      }
    }

    v44 = v18;
    if (v18 < v21)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v112;
    }

    else
    {
      result = sub_22E47671C(0, *(v112 + 2) + 1, 1, v112);
      v20 = result;
    }

    a4 = *(v20 + 2);
    v45 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_22E47671C((v45 > 1), a4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v5;
    v46 = &v20[16 * a4];
    *(v46 + 4) = v21;
    *(v46 + 5) = v44;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    v113 = v44;
    if (a4)
    {
      while (1)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v49 = *(v20 + 4);
          v50 = *(v20 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_52:
          if (v52)
          {
            goto LABEL_113;
          }

          v65 = &v20[16 * v5];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_116;
          }

          v71 = &v20[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_120;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v75 = &v20[16 * v5];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_66:
        if (v70)
        {
          goto LABEL_115;
        }

        v78 = &v20[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_118;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v86 = v20;
        v87 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v48 + 40];
        sub_22E47609C(*a3 + *(v9 + 72) * v87, *a3 + *(v9 + 72) * *&v20[16 * v48 + 32], *a3 + *(v9 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_22E476624(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v123 = v86;
        result = sub_22E476598(v48);
        v20 = v123;
        v5 = *(v123 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v20[16 * v5 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_111;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_112;
      }

      v60 = &v20[16 * v5];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_114;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_117;
      }

      if (v64 >= v56)
      {
        v82 = &v20[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_121;
        }

        if (v51 < v85)
        {
          v48 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v113;
    a4 = v107;
    if (v113 >= v18)
    {
      goto LABEL_95;
    }
  }

  v104 = v6;
  v89 = *a3;
  v90 = *(v9 + 72);
  v91 = *a3 + v90 * (v18 - 1);
  v92 = -v90;
  v106 = v21;
  v93 = v21 - v18;
  v110 = v90;
  v118 = v89;
  v5 = v89 + v18 * v90;
  v113 = v43;
LABEL_85:
  v116 = v91;
  v117 = v18;
  v114 = v5;
  v115 = v93;
  v94 = v91;
  while (1)
  {
    v95 = v121;
    sub_22E4774F4(v5, v121, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
    v96 = v122;
    sub_22E4774F4(v94, v122, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
    a4 = *v95;
    v97 = *v96;
    sub_22E47755C(v96, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
    result = sub_22E47755C(v95, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
    if (v97 >= a4)
    {
LABEL_84:
      v18 = v117 + 1;
      v91 = v116 + v110;
      v93 = v115 - 1;
      v5 = v114 + v110;
      v44 = v113;
      if (v117 + 1 != v113)
      {
        goto LABEL_85;
      }

      v6 = v104;
      v9 = v105;
      a3 = v109;
      v21 = v106;
      if (v113 < v106)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v118)
    {
      break;
    }

    a4 = v119;
    sub_22E47748C(v5, v119, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
    swift_arrayInitWithTakeFrontToBack();
    sub_22E47748C(a4, v94, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
    v94 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_22E47609C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for SymbolMetadataStore.RelevantSymbol(0);
  v8 = MEMORY[0x28223BE20](v45);
  v47 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v8);
  v46 = (&v37 - v11);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v17;
    if (v17 >= 1)
    {
      v26 = -v13;
      v27 = v25;
      v41 = a1;
      v42 = a4;
      v40 = v26;
      do
      {
        v38 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v43 = v28;
        v44 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v50 = v28;
            v48 = v38;
            goto LABEL_58;
          }

          v30 = a3;
          v39 = v25;
          a3 += v26;
          v31 = v27 + v26;
          v32 = v27 + v26;
          v33 = v46;
          sub_22E4774F4(v32, v46, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
          v34 = v47;
          sub_22E4774F4(v29, v47, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
          v35 = *v33;
          v36 = *v34;
          sub_22E47755C(v34, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
          sub_22E47755C(v33, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
          if (v36 < v35)
          {
            break;
          }

          v25 = v31;
          if (v30 < v27 || a3 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v44;
            v26 = v40;
            a1 = v41;
          }

          else
          {
            v29 = v44;
            v26 = v40;
            a1 = v41;
            if (v30 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v31;
          v28 = v43;
          if (v31 <= v42)
          {
            a2 = v43;
            goto LABEL_57;
          }
        }

        if (v30 < v43 || a3 >= v43)
        {
          a2 = v44;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v40;
          a1 = v41;
          v25 = v39;
        }

        else
        {
          a2 = v44;
          v26 = v40;
          a1 = v41;
          v25 = v39;
          if (v30 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v42);
    }

LABEL_57:
    v50 = a2;
    v48 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v43 = a3;
      do
      {
        v19 = v46;
        sub_22E4774F4(a2, v46, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        v20 = a2;
        v21 = v47;
        sub_22E4774F4(a4, v47, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        v22 = *v19;
        v23 = *v21;
        sub_22E47755C(v21, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        sub_22E47755C(v19, type metadata accessor for SymbolMetadataStore.RelevantSymbol);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v43;
            a2 = v20;
          }

          else
          {
            v24 = v43;
            a2 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = a4 + v13;
          a4 += v13;
        }

        else
        {
          a2 = v20 + v13;
          if (a1 < v20 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v43;
          }

          else
          {
            v24 = v43;
            if (a1 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v13;
        v50 = a1;
      }

      while (a4 < v44 && a2 < v24);
    }
  }

LABEL_58:
  sub_22E476638(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_22E476598(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22E476624(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_22E476638(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for SymbolMetadataStore.RelevantSymbol(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_22E47671C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64348, &qword_22E47EC50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22E476820(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22E4768E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22E476840(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22E476AF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22E476860(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22E476D34(a1, a2, a3, *v3, &qword_27DA64360, &qword_22E47EC68, type metadata accessor for SymbolKey);
  *v3 = result;
  return result;
}

char *sub_22E4768A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22E476C14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22E4768C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22E476F10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22E4768E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64310, &qword_22E47EA38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22E4769F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64380, &qword_22E47EC88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_22E476AF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64378, &qword_22E47EC80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22E476C14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64370, &qword_22E47EC78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22E476D34(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_22E476F10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64358, &qword_22E47EC60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s9SFSymbols9SymbolKeyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v23 = sub_22E47CD64();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymbolKey(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641B8, &qword_22E47EC40);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - v15;
  v17 = *(v14 + 56);
  sub_22E4774F4(a1, &v22 - v15, type metadata accessor for SymbolKey);
  sub_22E4774F4(a2, &v16[v17], type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22E4774F4(v16, v12, type metadata accessor for SymbolKey);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v19 = *v12 == *&v16[v17];
      goto LABEL_6;
    }

LABEL_8:
    sub_22E4545D0(v16, &qword_27DA641B8, &qword_22E47EC40);
    v19 = 0;
    return v19 & 1;
  }

  sub_22E4774F4(v16, v10, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v10, v23);
    goto LABEL_8;
  }

  v18 = v23;
  (*(v4 + 32))(v6, &v16[v17], v23);
  v19 = sub_22E47CD54();
  v20 = *(v4 + 8);
  v20(v6, v18);
  v20(v10, v18);
LABEL_6:
  sub_22E47755C(v16, type metadata accessor for SymbolKey);
  return v19 & 1;
}

uint64_t sub_22E4773AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64328, &qword_22E47EAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E47741C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64330, &qword_22E47EAB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E47748C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E4774F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E47755C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22E477668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22E477700(uint64_t a1)
{
  result = sub_22E47CD64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s7UnicodeO6ScalarVSiSgIegyd_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_22E4777B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_22E4777F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22E477870(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318E6E30](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22E460A90(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22E477908(uint64_t a1)
{
  v2 = type metadata accessor for SymbolKey(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_22E477668(&qword_27DA63F40, type metadata accessor for SymbolKey, &protocol conformance descriptor for SymbolKey);
  result = MEMORY[0x2318E6E30](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_22E4774F4(v12, v6, type metadata accessor for SymbolKey);
      sub_22E460CD8(v8, v6);
      sub_22E47755C(v8, type metadata accessor for SymbolKey);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_22E477AB8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22E477B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomSymbol(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E477BB8(uint64_t a1)
{
  result = type metadata accessor for SymbolMetadata(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22E477C50(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22E477CAC(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_22E47D054() & 1) == 0)
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

uint64_t static Crypton.encryptObfuscateFontTable(tableTag:from:)(CTFontTableTag table, CTFontRef font)
{
  v2 = CTFontCopyTable(font, table, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22E47CD34();
  v6 = v5;

  result = sub_22E450CF4(0, v4, v6);
  if (v8 >> 60 != 15)
  {
    v9 = result;
    sub_22E451DD0(v4, v6);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t static Crypton.decryptObfuscatedFontTable(tableTag:from:)(CTFontTableTag table, CTFontRef font)
{
  v2 = CTFontCopyTable(font, table, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22E47CD34();
  v6 = v5;

  v7 = sub_22E450CF4(1, v4, v6);
  sub_22E451DD0(v4, v6);
  return v7;
}

uint64_t private_name_aliases.getter()
{
  if (qword_280AC2DD0 != -1)
  {
    swift_once();
  }
}

SFSymbols::Version __swiftcall Version.init(major:minor:patch:)(Swift::Int major, Swift::Int minor, Swift::Int patch)
{
  *v3 = major;
  v3[1] = minor;
  v3[2] = patch;
  result.patch = patch;
  result.minor = minor;
  result.major = major;
  return result;
}

uint64_t Version.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E47D154();
  Version.description.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_22E47D074();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t Version.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA643A0, &qword_22E47ECB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22E47E790;
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  if (v3)
  {
    v5 = sub_22E453EF8(1, 3, 1, inited);
    v6 = 3;
    *(v5 + 2) = 3;
    *(v5 + 6) = v3;
  }

  else
  {
    v6 = 2;
  }

  v31 = MEMORY[0x277D84F90];
  sub_22E476820(0, v6, 0);
  v7 = v31;
  v8 = sub_22E47D044();
  v11 = *(v31 + 16);
  v10 = *(v31 + 24);
  if (v11 >= v10 >> 1)
  {
    v25 = v8;
    v26 = v9;
    sub_22E476820((v10 > 1), v11 + 1, 1);
    v9 = v26;
    v8 = v25;
    v7 = v31;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  v13 = sub_22E47D044();
  v32 = v7;
  v16 = *(v7 + 16);
  v15 = *(v7 + 24);
  if (v16 >= v15 >> 1)
  {
    v27 = v13;
    v28 = v14;
    sub_22E476820((v15 > 1), v16 + 1, 1);
    v14 = v28;
    v13 = v27;
    v7 = v32;
  }

  *(v7 + 16) = v16 + 1;
  v17 = v7 + 16 * v16;
  *(v17 + 32) = v13;
  *(v17 + 40) = v14;
  if (v3)
  {
    v18 = sub_22E47D044();
    v33 = v7;
    v21 = *(v7 + 16);
    v20 = *(v7 + 24);
    if (v21 >= v20 >> 1)
    {
      v29 = v18;
      v30 = v19;
      sub_22E476820((v20 > 1), v21 + 1, 1);
      v19 = v30;
      v18 = v29;
      v7 = v33;
    }

    *(v7 + 16) = v21 + 1;
    v22 = v7 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64150, &qword_22E47EA40);
  sub_22E46D0D4();
  v23 = sub_22E47CD94();

  return v23;
}

BOOL static Version.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v3 == v5;
  v7 = v3 < v5;
  if (v6)
  {
    v7 = a1[2] < a2[2];
  }

  v6 = v2 == v4;
  v8 = v2 < v4;
  if (v6)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t Version.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x2318E7080](*v0);
  MEMORY[0x2318E7080](v1);
  return MEMORY[0x2318E7080](v2);
}

uint64_t Version.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22E47D0F4();
  MEMORY[0x2318E7080](v1);
  MEMORY[0x2318E7080](v2);
  MEMORY[0x2318E7080](v3);
  return sub_22E47D124();
}

uint64_t sub_22E478374()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22E47D0F4();
  MEMORY[0x2318E7080](v1);
  MEMORY[0x2318E7080](v2);
  MEMORY[0x2318E7080](v3);
  return sub_22E47D124();
}

uint64_t sub_22E4783E0()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x2318E7080](*v0);
  MEMORY[0x2318E7080](v1);
  return MEMORY[0x2318E7080](v2);
}

uint64_t sub_22E478428(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_22E47D0F4();
  MEMORY[0x2318E7080](v2);
  MEMORY[0x2318E7080](v3);
  MEMORY[0x2318E7080](v4);
  return sub_22E47D124();
}

BOOL sub_22E478490(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_22E4784C8(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

BOOL sub_22E478504(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

BOOL sub_22E478540(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    return v5;
  }

  else
  {
    return *a2 < *a1;
  }
}

unint64_t sub_22E4785C4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

char *sub_22E4785E4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_22E476820(result, v5, 0);
  }

  return result;
}

void *sub_22E47865C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64310, &qword_22E47EA38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_22E4786E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64310, &qword_22E47EA38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22E4787EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA643E0, &qword_22E47EED0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64150, &qword_22E47EA40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22E478920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA643D8, &qword_22E47EEC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22E478A48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64380, &qword_22E47EC88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_22E478B4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA643D0, &qword_22E47EEC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_22E478CC8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_22E478ECC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA643B0, &qword_22E47EEA0);
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_22E478FF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64358, &qword_22E47EC60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_22E479104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_22E47CE84();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22E479D74(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22E47CFA4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_22E479690()
{
  result = qword_27DA64398;
  if (!qword_27DA64398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64398);
  }

  return result;
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

unint64_t sub_22E479734()
{
  result = qword_27DA63F50;
  if (!qword_27DA63F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA63F50);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Version(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Version(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unsigned __int8 *sub_22E4797F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_22E47CE84();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22E479D74(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22E47CFA4();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_22E479D74(uint64_t a1, unint64_t a2)
{
  v2 = sub_22E47CE94();
  v6 = sub_22E479DF4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_22E479DF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22E47CEF4();
    if (!v9 || (v10 = v9, v11 = sub_22E479F4C(v9, 0), v12 = sub_22E479FC0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22E47CE14();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22E47CE14();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22E47CFA4();
LABEL_4:

  return sub_22E47CE14();
}

void *sub_22E479F4C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA643C0, &qword_22E47EEB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}