uint64_t sub_238A24808(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238A24828(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_238A24864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v143 = a3;
  v171 = sub_238A3AE1C();
  v133 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_238A3AEBC();
  v6 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v192 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_238A3AE5C();
  v8 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v177 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_238A3AC8C();
  v10 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v175 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_238A3AE8C();
  v12 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v159 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_238A3ADEC();
  v14 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_238A3ACDC();
  v16 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v145 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_238A3ABBC();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_238A3A95C();
  MEMORY[0x28223BE20](v19);
  v138 = v21;
  v22 = *(v21 + 16);
  v137 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = a2;
  v139 = v23;
  v22();
  v150 = a1;
  v24 = sub_238A3AEDC();
  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_50:

    v156 = MEMORY[0x277D84F90];
LABEL_51:
    v104 = sub_238A3AEEC();
    v105 = *(v104 + 16);
    if (v105)
    {
      v202 = MEMORY[0x277D84F90];
      sub_238A36B90(0, v105, 0);
      v106 = v202;
      v107 = *(v133 + 16);
      v108 = *(v133 + 80);
      v197 = v104;
      v109 = v104 + ((v108 + 32) & ~v108);
      v198 = *(v133 + 72);
      v199 = v107;
      v110 = (v133 + 8);
      do
      {
        v111 = v170;
        v112 = v171;
        v199(v170, v109, v171);
        v113 = sub_238A3AE0C();
        (*v110)(v111, v112);
        v202 = v106;
        v115 = v106[2];
        v114 = v106[3];
        if (v115 >= v114 >> 1)
        {
          sub_238A36B90((v114 > 1), v115 + 1, 1);
          v106 = v202;
        }

        v106[2] = v115 + 1;
        v106[v115 + 4] = v113;
        v109 += v198;
        --v105;
      }

      while (v105);

      v116 = v106[2];
      if (!v116)
      {
        goto LABEL_63;
      }
    }

    else
    {

      v116 = *(MEMORY[0x277D84F90] + 16);
      if (!v116)
      {
LABEL_63:

        v124 = v140;
        sub_238A3ACEC();
        (*(v141 + 104))(v124, *MEMORY[0x277CFF6D8], v142);
        sub_238A3AB1C();
        (*(v138 + 8))(v144, v139);
        v125 = sub_238A3AEFC();
        return (*(*(v125 - 8) + 8))(v150, v125);
      }
    }

    v202 = MEMORY[0x277D84F90];
    sub_238A36B50(0, v116, 0);
    v117 = 32;
    v118 = v202;
    do
    {

      v120 = MEMORY[0x23EE6E030](v119);
      v202 = v118;
      v122 = v118[2];
      v121 = v118[3];
      if (v122 >= v121 >> 1)
      {
        v123 = v120;
        sub_238A36B50((v121 > 1), v122 + 1, 1);
        v120 = v123;
        v118 = v202;
      }

      v118[2] = v122 + 1;
      v118[v122 + 4] = v120;
      v117 += 8;
      --v116;
    }

    while (v116);
    goto LABEL_63;
  }

  v202 = MEMORY[0x277D84F90];
  v148 = v24;
  v130 = v25;
  sub_238A36BD0(0, v25, 0);
  result = v148;
  v27 = 0;
  v28 = v148 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v29 = v202;
  v152 = v12 + 16;
  v165 = v8 + 16;
  v190 = v6 + 16;
  v189 = v6 + 8;
  v161 = (v8 + 8);
  v160 = v10 + 32;
  v134 = (v12 + 8);
  v127 = (v14 + 8);
  v131 = v16;
  v126 = v16 + 32;
  v191 = v6;
  v168 = v8;
  v162 = v10;
  v149 = v12;
  v132 = v14;
  v129 = v28;
  v128 = v14 + 16;
  v30 = v6;
  while (v27 < *(result + 16))
  {
    v156 = v29;
    v31 = *(v14 + 72);
    v147 = v27;
    (*(v14 + 16))(v157, v28 + v31 * v27, v158);
    v32 = sub_238A3ADCC();
    v33 = *(v32 + 16);
    if (v33)
    {
      v201 = MEMORY[0x277D84F90];
      result = sub_238A36C14(0, v33, 0);
      v34 = 0;
      v35 = v201;
      v153 = v32 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v36 = v151;
      v37 = v159;
      v136 = v32;
      v135 = v33;
      while (1)
      {
        if (v34 >= *(v32 + 16))
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v154 = v35;
        v38 = *(v12 + 72);
        v155 = v34;
        v39 = v37;
        (*(v12 + 16))(v37, v153 + v38 * v34, v36);
        v40 = sub_238A3AE7C();
        v41 = *(v40 + 16);
        if (v41)
        {
          break;
        }

        result = (*v134)(v39, v36);
        v92 = MEMORY[0x277D84F90];
LABEL_41:
        v35 = v154;
        v201 = v154;
        v94 = *(v154 + 16);
        v93 = *(v154 + 24);
        v37 = v159;
        v95 = v155;
        if (v94 >= v93 >> 1)
        {
          v96 = v92;
          result = sub_238A36C14((v93 > 1), v94 + 1, 1);
          v92 = v96;
          v95 = v155;
          v37 = v159;
          v36 = v151;
          v35 = v201;
        }

        v34 = v95 + 1;
        *(v35 + 16) = v94 + 1;
        *(v35 + 8 * v94 + 32) = v92;
        v12 = v149;
        v32 = v136;
        if (v34 == v135)
        {
          goto LABEL_44;
        }
      }

      v200 = MEMORY[0x277D84F90];
      v169 = v40;
      v163 = v41;
      sub_238A36C54(0, v41, 0);
      v176 = v200;
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A1C8, &qword_238A3B9E8);
      v167 = result;
      v42 = v169;
      v43 = 0;
      v44 = v168;
      v166 = v169 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      while (1)
      {
        if (v43 >= *(v42 + 16))
        {
          __break(1u);
          goto LABEL_69;
        }

        v174 = v43 + 1;
        (*(v44 + 16))(v177, v166 + *(v44 + 72) * v43, v178);
        v173 = sub_238A3AE4C();
        v172 = v45;
        v46 = sub_238A3AE2C();
        v47 = sub_238A3B21C();
        v48 = 0;
        v49 = *(v46 + 64);
        v180 = v46 + 64;
        v183 = v46;
        v50 = 1 << *(v46 + 32);
        v51 = v50 < 64 ? ~(-1 << v50) : -1;
        v52 = v51 & v49;
        v179 = (v50 + 63) >> 6;
        v181 = v47 + 64;
        v182 = v47;
        if (v52)
        {
          break;
        }

LABEL_15:
        v54 = v48;
        v29 = v175;
        while (1)
        {
          v55 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            __break(1u);
            goto LABEL_65;
          }

          if (v55 >= v179)
          {
            break;
          }

          v56 = *(v180 + 8 * v55);
          ++v54;
          if (v56)
          {
            v184 = (v56 - 1) & v56;
            v185 = v55;
            v53 = __clz(__rbit64(v56)) | (v55 << 6);
            goto LABEL_20;
          }
        }

        sub_238A3AC6C();
        (*v161)(v177, v178);
        v88 = v176;
        v200 = v176;
        v90 = *(v176 + 16);
        v89 = *(v176 + 24);
        if (v90 >= v89 >> 1)
        {
          sub_238A36C54((v89 > 1), v90 + 1, 1);
          v29 = v175;
          v88 = v200;
        }

        *(v88 + 16) = v90 + 1;
        v91 = (*(v162 + 80) + 32) & ~*(v162 + 80);
        v176 = v88;
        result = (*(v162 + 32))(v88 + v91 + *(v162 + 72) * v90, v29, v164);
        v43 = v174;
        v44 = v168;
        v42 = v169;
        if (v174 == v163)
        {
          v36 = v151;
          (*v134)(v159, v151);

          v92 = v176;
          goto LABEL_41;
        }
      }

      while (1)
      {
        v184 = (v52 - 1) & v52;
        v185 = v48;
        v53 = __clz(__rbit64(v52)) | (v48 << 6);
LABEL_20:
        v57 = *(v183 + 56);
        v58 = (*(v183 + 48) + 16 * v53);
        v59 = v58[1];
        v187 = *v58;
        v188 = v53;
        v60 = *(v57 + 8 * v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A1D0, &unk_238A3B9F0);
        v61 = sub_238A3B21C();
        v29 = v61;
        v62 = v60 + 64;
        v63 = 1 << *(v60 + 32);
        v64 = v63 < 64 ? ~(-1 << v63) : -1;
        v65 = v64 & *(v60 + 64);
        v66 = (v63 + 63) >> 6;
        v194 = v61 + 64;
        v186 = v59;

        v196 = v60;

        v67 = 0;
        v195 = v29;
        if (v65)
        {
          break;
        }

LABEL_25:
        v69 = v67;
        while (1)
        {
          v67 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            __break(1u);
            goto LABEL_50;
          }

          if (v67 >= v66)
          {
            break;
          }

          v70 = *(v62 + 8 * v67);
          ++v69;
          if (v70)
          {
            v68 = __clz(__rbit64(v70));
            v197 = (v70 - 1) & v70;
            goto LABEL_30;
          }
        }

        v82 = v188;
        v83 = v182;
        *(v181 + ((v188 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v188;
        v84 = (v83[6] + 16 * v82);
        v85 = v186;
        *v84 = v187;
        v84[1] = v85;
        *(v83[7] + 8 * v82) = v29;
        v86 = v83[2];
        v80 = __OFADD__(v86, 1);
        v87 = v86 + 1;
        if (v80)
        {
          goto LABEL_66;
        }

        v83[2] = v87;
        v52 = v184;
        v48 = v185;
        if (!v184)
        {
          goto LABEL_15;
        }
      }

      while (1)
      {
        v68 = __clz(__rbit64(v65));
        v197 = (v65 - 1) & v65;
LABEL_30:
        v71 = v68 | (v67 << 6);
        v198 = 16 * v71;
        v72 = *(v196 + 56);
        v73 = *(v196 + 48) + 16 * v71;
        v74 = *(v73 + 8);
        v199 = *v73;
        v75 = v192;
        v76 = v193;
        (*(v30 + 16))(v192, v72 + *(v30 + 72) * v71, v193);

        v77 = sub_238A3AEAC();
        (*(v30 + 8))(v75, v76);
        v29 = v195;
        *(v194 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
        v78 = (v29[6] + v198);
        *v78 = v199;
        v78[1] = v74;
        *(v29[7] + v71) = v77 & 1;
        v79 = v29[2];
        v80 = __OFADD__(v79, 1);
        v81 = v79 + 1;
        if (v80)
        {
          break;
        }

        v29[2] = v81;
        v65 = v197;
        if (!v197)
        {
          goto LABEL_25;
        }
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v156 = v29;

      goto LABEL_51;
    }

LABEL_44:

    v97 = v157;
    sub_238A3ADDC();
    v98 = v145;
    sub_238A3ACBC();
    (*v127)(v97, v158);
    v29 = v156;
    v202 = v156;
    v100 = v156[2];
    v99 = v156[3];
    v101 = v131;
    if (v100 >= v99 >> 1)
    {
      sub_238A36BD0((v99 > 1), v100 + 1, 1);
      v29 = v202;
    }

    v102 = v147 + 1;
    v29[2] = v100 + 1;
    (*(v101 + 32))(v29 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v100, v98, v146);
    v27 = v102;
    v103 = v102 == v130;
    v12 = v149;
    v14 = v132;
    result = v148;
    v28 = v129;
    if (v103)
    {
      goto LABEL_67;
    }
  }

LABEL_70:
  __break(1u);
  return result;
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

void sub_238A25A28(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_238A25A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v24[1] = a3;
  v25 = sub_238A3A95C();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24[0] = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238A3AA3C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  v13 = sub_238A3AF7C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v24 - v18;
  sub_238A3AFAC();
  (*(v14 + 16))(v17, v19, v13);
  if ((*(v14 + 88))(v17, v13) == *MEMORY[0x277CD2BF8])
  {
    (*(v14 + 8))(v19, v13);
    (*(v7 + 104))(v10, *MEMORY[0x277CFF488], v6);
    (*(v7 + 32))(v12, v10, v6);
    sub_238A3AF8C();
    v21 = v25;
    v20 = v26;
    (*(v4 + 16))(v24[0], v26, v25);
    sub_238A3AA6C();
    (*(v4 + 8))(v20, v21);
    v22 = sub_238A3AFBC();
    return (*(*(v22 - 8) + 8))(a1, v22);
  }

  else
  {
    result = sub_238A3B20C();
    __break(1u);
  }

  return result;
}

uint64_t sub_238A25E18(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238A25EAC(void *a1)
{
  v2 = v1;
  v4 = sub_238A3AFEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A3AA2C();
  v8 = sub_238A3AFDC();
  v9 = sub_238A3B1AC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_238A27614(0xD000000000000013, 0x8000000238A3DBD0, &v15);
    _os_log_impl(&dword_238A23000, v8, v9, "IdentityDocumentProviderExtensionConfiguration %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EE6E6C0](v11, -1, -1);
    MEMORY[0x23EE6E6C0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  [a1 setExportedObject_];
  v12 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 resume];
  return 1;
}

uint64_t sub_238A260C4()
{
  v1[2] = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A270, &qword_238A3BB30);
  v1[3] = swift_task_alloc();
  v3 = sub_238A3ABEC();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v4 = sub_238A3AB5C();
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = *(v2 + 88);
  v1[12] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[13] = AssociatedTypeWitness;
  v1[14] = *(AssociatedTypeWitness - 8);
  v1[15] = swift_task_alloc();
  sub_238A3B15C();
  v1[16] = sub_238A3B14C();
  v7 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A26300, v7, v6);
}

uint64_t sub_238A26300()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];

  (*(v5 + 32))(v4, v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = (*(AssociatedConformanceWitness + 16))(v2, AssociatedConformanceWitness);
  (*(v3 + 8))(v1, v2);
  result = v7;
  v31 = *(v7 + 16);
  if (v31)
  {
    v9 = 0;
    v10 = v0[5];
    v11 = (v10 + 48);
    v29 = v10;
    v30 = (v10 + 32);
    v12 = result + 40;
    v13 = MEMORY[0x277D84F90];
    while (v9 < *(result + 16))
    {
      v14 = result;
      v16 = v0[3];
      v15 = v0[4];

      sub_238A3ABCC();
      if ((*v11)(v16, 1, v15) == 1)
      {
        sub_238A280C8(v0[3]);
      }

      else
      {
        v17 = *v30;
        (*v30)(v0[6], v0[3], v0[4]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_238A27330(0, *(v13 + 2) + 1, 1, v13);
        }

        v19 = *(v13 + 2);
        v18 = *(v13 + 3);
        if (v19 >= v18 >> 1)
        {
          v13 = sub_238A27330((v18 > 1), v19 + 1, 1, v13);
        }

        v20 = v0[6];
        v21 = v0[4];
        *(v13 + 2) = v19 + 1;
        v17(&v13[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v19], v20, v21);
      }

      ++v9;
      v12 += 16;
      result = v14;
      if (v31 == v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[7];
    v25 = v0[8];

    sub_238A3AB4C();
    (*(v25 + 16))(v23, v22, v24);
    v26 = objc_allocWithZone(sub_238A3ABAC());
    v27 = sub_238A3AB9C();
    (*(v25 + 8))(v22, v24);

    v28 = v0[1];

    return v28(v27);
  }

  return result;
}

uint64_t sub_238A26634(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_238A3B17C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_238A3BB10;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_238A3BB18;
  v12[5] = v11;

  sub_238A2C804(0, 0, v7, &unk_238A3BB20, v12);
}

uint64_t sub_238A267AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_238A3B15C();
  v2[4] = sub_238A3B14C();
  v4 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A26844, v4, v3);
}

uint64_t sub_238A26844()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_238A268F8;

  return sub_238A260C4();
}

uint64_t sub_238A268F8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 40);
  if (v3)
  {
    v8 = sub_238A3A94C();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_238A26A9C()
{
  v2 = *v0;
  v1[2] = sub_238A3B15C();
  v1[3] = sub_238A3B14C();
  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  v7 = (*(v3 + 40) + **(v3 + 40));
  v5 = swift_task_alloc();
  v1[4] = v5;
  *v5 = v1;
  v5[1] = sub_238A26C14;

  return v7(v4, v3);
}

uint64_t sub_238A26C14()
{

  v1 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A26D50, v1, v0);
}

uint64_t sub_238A26D50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238A26DB0(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_238A3B17C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_238A3BAE8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_238A3BAF0;
  v12[5] = v11;

  sub_238A2C804(0, 0, v7, &unk_238A3BAF8, v12);
}

uint64_t sub_238A26F28(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_238A3B15C();
  v2[4] = sub_238A3B14C();
  v4 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A26FC0, v4, v3);
}

uint64_t sub_238A26FC0()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_238A27074;

  return sub_238A26A9C();
}

uint64_t sub_238A27074()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_238A271B0(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t sub_238A27244()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_238A27330(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A278, &qword_238A3BB38);
  v10 = *(sub_238A3ABEC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_238A3ABEC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_238A27508(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A280, &unk_238A3BB40);
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

unint64_t sub_238A27614(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238A276E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_238A27C08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_238A276E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_238A277EC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_238A3B1FC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_238A277EC(uint64_t a1, unint64_t a2)
{
  v3 = sub_238A27838(a1, a2);
  sub_238A27968(&unk_284B5A978);
  return v3;
}

void *sub_238A27838(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_238A27A54(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_238A3B1FC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_238A3B0CC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238A27A54(v10, 0);
        result = sub_238A3B1EC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_238A27968(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_238A27AC8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_238A27A54(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A260, &unk_238A3BAD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_238A27AC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A260, &unk_238A3BAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_238A27C08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_238A27C6C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238A28170;

  return sub_238A26F28(v2, v3);
}

uint64_t sub_238A27D18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_238A28170;

  return sub_238A2C630(v2, v3, v4);
}

uint64_t sub_238A27DD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238A28170;

  return sub_238A2C718(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238A27EE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238A27F90;

  return sub_238A267AC(v2, v3);
}

uint64_t sub_238A27F90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238A280C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A270, &qword_238A3BB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238A28178()
{
  v0 = sub_238A3ABEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238A3AFEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A3AA2C();
  v8 = sub_238A3AFDC();
  v9 = sub_238A3B1AC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_238A23000, v8, v9, "An unknown IdentityDocumentRequest scene was encountered.", v10, 2u);
    MEMORY[0x23EE6E6C0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A280, &unk_238A3BB40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_238A3BB50;
  (*(v1 + 104))(v3, *MEMORY[0x277CFF6F0], v0);
  v12 = sub_238A3ABDC();
  v14 = v13;
  (*(v1 + 8))(v3, v0);
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  return v11;
}

uint64_t sub_238A283BC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_238A2A230(&qword_27DF4A2C0, type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel, &unk_238A3BBB8);
  sub_238A3A97C();

  v3 = OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__context;
  swift_beginAccess();
  return sub_238A2A0C0(v5 + v3, a1);
}

uint64_t sub_238A28484(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__context;
  swift_beginAccess();
  sub_238A2A048(a2, a1 + v4);
  return swift_endAccess();
}

void *sub_238A284F0()
{
  swift_getKeyPath();
  sub_238A2A230(&qword_27DF4A2C0, type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel, &unk_238A3BBB8);
  sub_238A3A97C();

  v1 = *(v0 + OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__connection);
  v2 = v1;
  return v1;
}

id sub_238A285A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238A2A230(&qword_27DF4A2C0, type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel, &unk_238A3BBB8);
  sub_238A3A97C();

  v4 = *(v3 + OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__connection);
  *a2 = v4;

  return v4;
}

void sub_238A28660(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__connection;
  v5 = *(v1 + OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__connection);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_238A2A230(&qword_27DF4A2C0, type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel, &unk_238A3BBB8);
    sub_238A3A96C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_238A2A378();
  v6 = v5;
  v7 = a1;
  v8 = sub_238A3B1BC();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_238A287E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_238A3AD8C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_238A3AC4C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = sub_238A3AC1C();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = sub_238A3AA7C();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v7 = sub_238A3AC0C();
  v2[17] = v7;
  v2[18] = *(v7 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v8 = sub_238A3AFEC();
  v2[21] = v8;
  v2[22] = *(v8 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = sub_238A3B15C();
  v2[25] = sub_238A3B14C();
  v10 = sub_238A3B10C();
  v2[26] = v10;
  v2[27] = v9;

  return MEMORY[0x2822009F8](sub_238A28AC4, v10, v9);
}

uint64_t sub_238A28AC4(uint64_t a1)
{
  v42 = v1;
  v2 = v1[2];
  sub_238A3AA2C();
  v3 = v2;
  v4 = sub_238A3AFDC();
  v5 = sub_238A3B1AC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[22];
  v7 = v1[23];
  v9 = v1[21];
  if (v6)
  {
    v40 = v1[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41 = v11;
    *v10 = 136315138;
    sub_238A3AD1C();
    v12 = sub_238A3B0AC();
    v14 = sub_238A27614(v12, v13, &v41);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_238A23000, v4, v5, "IdentityDocumentRequestViewModel requestDocument called with request %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EE6E6C0](v11, -1, -1);
    MEMORY[0x23EE6E6C0](v10, -1, -1);

    (*(v8 + 8))(v40, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v16 = v1[18];
  v15 = v1[19];
  v17 = v1[17];
  v19 = v1[12];
  v18 = v1[13];
  v20 = v1[11];
  sub_238A3AD1C();
  sub_238A3ABFC();
  (*(v16 + 8))(v15, v17);
  if ((*(v19 + 88))(v18, v20) == *MEMORY[0x277CFF718])
  {
    v22 = v1[15];
    v21 = v1[16];
    v24 = v1[13];
    v23 = v1[14];
    v25 = v1[3];
    (*(v1[12] + 96))(v24, v1[11]);
    (*(v22 + 32))(v21, v24, v23);
    v26 = sub_238A3B14C();
    v1[28] = v26;
    v27 = swift_task_alloc();
    v1[29] = v27;
    *(v27 + 16) = v25;
    *(v27 + 24) = v21;
    v28 = swift_task_alloc();
    v1[30] = v28;
    *v28 = v1;
    v28[1] = sub_238A28F78;
    v29 = v1[10];
    v30 = v1[7];
    v31 = MEMORY[0x277D85700];

    return MEMORY[0x2822008A0](v29, v26, v31, 0xD000000000000019, 0x8000000238A3DE40, sub_238A2A278, v27, v30);
  }

  else
  {
    v33 = v1[12];
    v32 = v1[13];
    v34 = v1[11];
    v36 = v1[5];
    v35 = v1[6];
    v37 = v1[4];

    (*(v33 + 8))(v32, v34);
    (*(v36 + 104))(v35, *MEMORY[0x277CFFD28], v37);
    sub_238A2D0F0(MEMORY[0x277D84F90]);
    sub_238A3AD9C();
    sub_238A2A230(&qword_27DF4A2C8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    swift_allocError();
    sub_238A3ADAC();
    swift_willThrow();

    v38 = v1[1];

    return v38();
  }
}

uint64_t sub_238A28F78()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_238A291E4;
  }

  else
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_238A2909C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_238A2909C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];

  sub_238A3AC2C();
  sub_238A3AC3C();
  v7 = objc_allocWithZone(sub_238A3AD3C());
  v8 = sub_238A3AD2C();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_238A291E4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_238A292E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = sub_238A3AA7C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2B8, &qword_238A3C180);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  sub_238A3B15C();
  sub_238A3B14C();
  sub_238A3B10C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 16))(v10, v19, v7);
  (*(v4 + 16))(v6, v20, v3);
  sub_238A31CF4(v10, v6, v13);
  v14 = type metadata accessor for ISO18013MobileDocumentRawRequestContext(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v16 = v21;
  *(&v18 - 2) = v21;
  *(&v18 - 1) = v13;
  v22 = v16;
  sub_238A2A230(&qword_27DF4A2C0, type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel, &unk_238A3BBB8);
  sub_238A3A96C();

  sub_238A2A29C(v13);
}

uint64_t sub_238A297B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_238A3B15C();
  v3[5] = sub_238A3B14C();
  v5 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A29854, v5, v4);
}

uint64_t sub_238A29854()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_238A29918;
  v7 = v0[2];

  return sub_238A287E8(v7);
}

uint64_t sub_238A29918(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 48);
  if (v3)
  {
    v10 = sub_238A3A94C();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 48), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

id sub_238A29AD0(void *a1)
{
  v2 = v1;
  v4 = sub_238A3AFEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A3AA2C();
  v8 = sub_238A3AFDC();
  v9 = sub_238A3B1AC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_238A23000, v8, v9, "IdentityDocumentRequestViewModel connection made", v10, 2u);
    MEMORY[0x23EE6E6C0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = objc_opt_self();
  v12 = [v11 interfaceWithProtocol_];
  [a1 setExportedInterface_];

  v13 = [v11 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  [a1 setExportedObject_];
  return [a1 activate];
}

id sub_238A29E04()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel(uint64_t a1)
{
  result = qword_27DF4A2A0;
  if (!qword_27DF4A2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238A29F1C(uint64_t a1)
{
  sub_238A29FF0(319);
  if (v1 <= 0x3F)
  {
    sub_238A3A99C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_238A29FF0(uint64_t a1)
{
  if (!qword_27DF4A2B0)
  {
    type metadata accessor for ISO18013MobileDocumentRawRequestContext(255);
    v1 = sub_238A3B1CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF4A2B0);
    }
  }
}

uint64_t sub_238A2A048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2B8, &qword_238A3C180);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A2A0C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2B8, &qword_238A3C180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A2A130()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238A2A178()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_238A27F90;

  return sub_238A297B8(v2, v3, v4);
}

uint64_t sub_238A2A230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238A2A29C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2B8, &qword_238A3C180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_238A2A308(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_238A28660(v1);
}

void sub_238A2A338()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__connection);
  *(v1 + OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__connection) = v2;
  v4 = v2;
}

unint64_t sub_238A2A378()
{
  result = qword_27DF4A2D8;
  if (!qword_27DF4A2D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF4A2D8);
  }

  return result;
}

uint64_t sub_238A2A3C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_238A2D45C(&qword_27DF4A318, type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel, &unk_238A3BCA8);
  sub_238A3A97C();

  v3 = OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__context;
  swift_beginAccess();
  return sub_238A2D3DC(v5 + v3, a1, &qword_27DF4A310, &qword_238A3C470);
}

uint64_t sub_238A2A4A0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__context;
  swift_beginAccess();
  sub_238A2C4BC(a2, a1 + v4);
  return swift_endAccess();
}

void *sub_238A2A50C()
{
  swift_getKeyPath();
  sub_238A2D45C(&qword_27DF4A318, type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel, &unk_238A3BCA8);
  sub_238A3A97C();

  v1 = *(v0 + OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection);
  v2 = v1;
  return v1;
}

id sub_238A2A5BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238A2D45C(&qword_27DF4A318, type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel, &unk_238A3BCA8);
  sub_238A3A97C();

  v4 = *(v3 + OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection);
  *a2 = v4;

  return v4;
}

void sub_238A2A67C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection;
  v5 = *(v1 + OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_238A2D45C(&qword_27DF4A318, type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel, &unk_238A3BCA8);
    sub_238A3A96C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_238A2A378();
  v6 = v5;
  v7 = a1;
  v8 = sub_238A3B1BC();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_238A2A804(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_238A3AD8C();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_238A3AC4C();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v5 = sub_238A3ABBC();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = sub_238A3AD0C();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v7 = sub_238A3AC1C();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v8 = sub_238A3AB3C();
  v2[26] = v8;
  v2[27] = *(v8 - 8);
  v2[28] = swift_task_alloc();
  v9 = sub_238A3AC0C();
  v2[29] = v9;
  v2[30] = *(v9 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v10 = sub_238A3AFEC();
  v2[33] = v10;
  v2[34] = *(v10 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = sub_238A3B15C();
  v2[37] = sub_238A3B14C();
  v12 = sub_238A3B10C();
  v2[38] = v12;
  v2[39] = v11;

  return MEMORY[0x2822009F8](sub_238A2AB98, v12, v11);
}

uint64_t sub_238A2AB98(uint64_t a1)
{
  v70 = v1;
  v2 = v1[8];
  sub_238A3AA2C();
  v3 = v2;
  v4 = sub_238A3AFDC();
  v5 = sub_238A3B1AC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[34];
  v7 = v1[35];
  v9 = v1[33];
  if (v6)
  {
    v68 = v1[35];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v69 = v11;
    *v10 = 136315138;
    sub_238A3AD1C();
    v12 = sub_238A3B0AC();
    v14 = sub_238A27614(v12, v13, &v69);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_238A23000, v4, v5, "IdentityDocumentRequestViewModel requestDocument called with request %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EE6E6C0](v11, -1, -1);
    MEMORY[0x23EE6E6C0](v10, -1, -1);

    (*(v8 + 8))(v68, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v16 = v1[30];
  v15 = v1[31];
  v17 = v1[29];
  v19 = v1[24];
  v18 = v1[25];
  v20 = v1[23];
  sub_238A3AD1C();
  sub_238A3ABFC();
  (*(v16 + 8))(v15, v17);
  if ((*(v19 + 88))(v18, v20) == *MEMORY[0x277CFF720])
  {
    v22 = v1[27];
    v21 = v1[28];
    v24 = v1[25];
    v23 = v1[26];
    v26 = v1[18];
    v25 = v1[19];
    v27 = v1[17];
    (*(v1[24] + 96))(v24, v1[23]);
    (*(v22 + 32))(v21, v24, v23);
    sub_238A3AB0C();
    if ((*(v26 + 88))(v25, v27) == *MEMORY[0x277CFF6D8])
    {
      v29 = v1[21];
      v28 = v1[22];
      v31 = v1[19];
      v30 = v1[20];
      v32 = v1[9];
      (*(v1[18] + 96))(v31, v1[17]);
      (*(v29 + 32))(v28, v31, v30);
      swift_getKeyPath();
      v1[6] = v32;
      sub_238A2D45C(&qword_27DF4A318, type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel, &unk_238A3BCA8);
      sub_238A3A97C();

      v33 = *(v32 + OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection);
      if (v33)
      {
        v34 = [v33 remoteObjectProxy];
        sub_238A3B1DC();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A320, &unk_238A3BD80);
        if (swift_dynamicCast())
        {
          v35 = v1[28];
          v36 = v1[22];
          v37 = v1[9];
          v38 = v1[7];
          v1[40] = v38;
          v39 = sub_238A3B14C();
          v1[41] = v39;
          v40 = swift_task_alloc();
          v1[42] = v40;
          v40[2] = v37;
          v40[3] = v35;
          v40[4] = v36;
          v40[5] = v38;
          v41 = swift_task_alloc();
          v1[43] = v41;
          *v41 = v1;
          v41[1] = sub_238A2B46C;
          v42 = v1[16];
          v43 = v1[13];
          v44 = MEMORY[0x277D85700];

          return MEMORY[0x2822008A0](v42, v39, v44, 0xD000000000000019, 0x8000000238A3DE40, sub_238A2D314, v40, v43);
        }
      }

      v59 = v1[27];
      v65 = v1[26];
      v67 = v1[28];
      v60 = v1[21];
      v63 = v1[20];
      v64 = v1[22];
      (*(v1[11] + 104))(v1[12], *MEMORY[0x277CFFA38], v1[10]);
      sub_238A2D0F0(MEMORY[0x277D84F90]);
      sub_238A3AD9C();
      sub_238A2D45C(&qword_27DF4A2C8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
      swift_allocError();
      sub_238A3ADAC();
      swift_willThrow();
      (*(v60 + 8))(v64, v63);
      (*(v59 + 8))(v67, v65);
    }

    else
    {
      v51 = v1[27];
      v66 = v1[28];
      v52 = v1[26];
      v54 = v1[18];
      v53 = v1[19];
      v55 = v1[17];
      v57 = v1[11];
      v56 = v1[12];
      v58 = v1[10];

      (*(v54 + 8))(v53, v55);
      (*(v57 + 104))(v56, *MEMORY[0x277CFFD28], v58);
      sub_238A2D0F0(MEMORY[0x277D84F90]);
      sub_238A3AD9C();
      sub_238A2D45C(&qword_27DF4A2C8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
      swift_allocError();
      sub_238A3ADAC();
      swift_willThrow();
      (*(v51 + 8))(v66, v52);
    }
  }

  else
  {
    v46 = v1[24];
    v45 = v1[25];
    v47 = v1[23];
    v49 = v1[11];
    v48 = v1[12];
    v50 = v1[10];

    (*(v46 + 8))(v45, v47);
    (*(v49 + 104))(v48, *MEMORY[0x277CFFD28], v50);
    sub_238A2D0F0(MEMORY[0x277D84F90]);
    sub_238A3AD9C();
    sub_238A2D45C(&qword_27DF4A2C8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    swift_allocError();
    sub_238A3ADAC();
    swift_willThrow();
  }

  v61 = v1[1];

  return v61();
}

uint64_t sub_238A2B46C()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_238A2B724;
  }

  else
  {

    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_238A2B590;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_238A2B590()
{
  v1 = v0[27];
  v2 = v0[28];
  v13 = v0[26];
  v3 = v0[21];
  v4 = v0[22];
  v12 = v0[20];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];

  sub_238A3AC2C();
  sub_238A3AC3C();
  v8 = objc_allocWithZone(sub_238A3AD3C());
  v9 = sub_238A3AD2C();
  swift_unknownObjectRelease();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v4, v12);
  (*(v1 + 8))(v2, v13);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_238A2B724()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];

  swift_unknownObjectRelease();

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_238A2B87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v29 = a2;
  v26 = a4;
  v27 = a1;
  v25[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  v9 = sub_238A3AD0C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A328, &qword_238A3BD90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A310, &qword_238A3C470);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v25 - v17;
  sub_238A3B15C();
  v25[1] = sub_238A3B14C();
  sub_238A3B10C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238A3AB2C();
  v19 = sub_238A3A95C();
  (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
  (*(v10 + 16))(v12, v26, v9);
  (*(v6 + 16))(v8, v27, v5);
  v20 = v28;
  swift_unknownObjectRetain();
  sub_238A341FC(v15, v12, v8, v20, v18);
  v21 = type metadata accessor for ISO18013MobileDocumentRequestContext(0);
  (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v23 = v29;
  v25[-2] = v29;
  v25[-1] = v18;
  v30 = v23;
  sub_238A2D45C(&qword_27DF4A318, type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel, &unk_238A3BCA8);
  sub_238A3A96C();

  sub_238A2D33C(v18, &qword_27DF4A310, &qword_238A3C470);
}

uint64_t sub_238A2BE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_238A3B15C();
  v3[5] = sub_238A3B14C();
  v5 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A2BEA8, v5, v4);
}

uint64_t sub_238A2BEA8()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_238A29918;
  v7 = v0[2];

  return sub_238A2A804(v7);
}

id sub_238A2BF6C(void *a1)
{
  v2 = v1;
  v4 = sub_238A3AFEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A3AA2C();
  v8 = sub_238A3AFDC();
  v9 = sub_238A3B1AC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_238A23000, v8, v9, "IdentityDocumentRequestViewModel connection made", v10, 2u);
    MEMORY[0x23EE6E6C0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = objc_opt_self();
  v12 = [v11 interfaceWithProtocol_];
  [a1 setExportedInterface_];

  v13 = [v11 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  [a1 setExportedObject_];
  return [a1 activate];
}

uint64_t type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel(uint64_t a1)
{
  result = qword_27DF4A2F8;
  if (!qword_27DF4A2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238A2C390(uint64_t a1)
{
  sub_238A2C464(319);
  if (v1 <= 0x3F)
  {
    sub_238A3A99C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_238A2C464(uint64_t a1)
{
  if (!qword_27DF4A308)
  {
    type metadata accessor for ISO18013MobileDocumentRequestContext(255);
    v1 = sub_238A3B1CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF4A308);
    }
  }
}

uint64_t sub_238A2C4BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A310, &qword_238A3C470);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A2C534()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238A2C57C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_238A27F90;

  return sub_238A2BE0C(v2, v3, v4);
}

uint64_t sub_238A2C630(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_238A28170;

  return v6();
}

uint64_t sub_238A2C718(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_238A27F90;

  return v7();
}

uint64_t sub_238A2C804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_238A2D3DC(a3, v23 - v10, &qword_27DF4A268, &qword_238A3BE20);
  v12 = sub_238A3B17C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_238A2D33C(v11, &qword_27DF4A268, &qword_238A3BE20);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_238A3B16C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_238A3B10C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_238A3B0BC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_238A2D33C(a3, &qword_27DF4A268, &qword_238A3BE20);

    return v21;
  }

LABEL_8:
  sub_238A2D33C(a3, &qword_27DF4A268, &qword_238A3BE20);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_238A2CB00(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_238A2CBF8;

  return v6(a1);
}

uint64_t sub_238A2CBF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_238A2CCF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238A2CD28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238A28170;

  return sub_238A2CB00(a1, v4);
}

uint64_t sub_238A2CDE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238A27F90;

  return sub_238A2CB00(a1, v4);
}

unint64_t sub_238A2CE98(uint64_t a1)
{
  sub_238A3AD7C();
  sub_238A2D45C(&qword_27DF4A340, MEMORY[0x277CFF8F8], MEMORY[0x277CFF900]);
  v2 = sub_238A3B08C();

  return sub_238A2CF30(a1, v2);
}

unint64_t sub_238A2CF30(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_238A3AD7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_238A2D45C(&qword_27DF4A348, MEMORY[0x277CFF8F8], MEMORY[0x277CFF908]);
      v15 = sub_238A3B09C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_238A2D0F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A330, &qword_238A3BD98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A338, &unk_238A3BDA0);
    v7 = sub_238A3B22C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_238A2D3DC(v9, v5, &qword_27DF4A330, &qword_238A3BD98);
      result = sub_238A2CE98(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_238A3AD7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_238A2D444(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void sub_238A2D2E4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_238A2A67C(v1);
}

uint64_t sub_238A2D33C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_238A2D39C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection);
  *(v1 + OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection) = v2;
  v4 = v2;
}

uint64_t sub_238A2D3DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_238A2D444(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_238A2D45C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t IdentityDocumentWebPresentmentController.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*IdentityDocumentWebPresentmentController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_238A2D5F0;
}

void sub_238A2D5F0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t IdentityDocumentWebPresentmentController.presentationContextProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*IdentityDocumentWebPresentmentController.presentationContextProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_238A2D7A4;
}

void sub_238A2D7A4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *IdentityDocumentWebPresentmentController.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A350, &qword_238A3BE10);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v0[6] = v1;
  return v0;
}

void *IdentityDocumentWebPresentmentController.init()()
{
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A350, &qword_238A3BE10);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v0[6] = v1;
  return v0;
}

uint64_t IdentityDocumentWebPresentmentController.performRequests(_:origin:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_238A3AF3C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_238A3A95C();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v4[11] = *(v7 + 64);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  v4[13] = swift_task_alloc();
  v4[14] = sub_238A3B15C();
  v4[15] = sub_238A3B14C();
  v9 = sub_238A3B10C();
  v4[16] = v9;
  v4[17] = v8;

  return MEMORY[0x2822009F8](sub_238A2DAA4, v9, v8);
}

uint64_t sub_238A2DAA4()
{
  v1 = *(v0[5] + 48);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  if (v2)
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];

    (*(v4 + 104))(v3, *MEMORY[0x277CD2BD0], v5);
    sub_238A3AF6C();
    sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8], MEMORY[0x277CD2BF0]);
    swift_allocError();
    sub_238A3AF4C();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[13];
    v9 = v0[12];
    v28 = v9;
    v10 = v0[10];
    v29 = v8;
    v11 = v0[9];
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    v15 = sub_238A3B17C();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    (*(v10 + 16))(v9, v13, v11);
    v16 = v12;

    v17 = v14;

    v18 = sub_238A3B14C();
    v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 2) = v18;
    *(v20 + 3) = v21;
    *(v20 + 4) = v16;
    *(v20 + 5) = v17;
    (*(v10 + 32))(&v20[v19], v28, v11);
    v22 = sub_238A30D58(0, 0, v29, &unk_238A3BE30, v20);
    v0[18] = v22;
    os_unfair_lock_lock((v1 + 24));
    sub_238A31004((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
    v23 = sub_238A3B14C();
    v0[19] = v23;
    v24 = swift_task_alloc();
    v0[20] = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A360, &qword_238A3BE48);
    *v24 = v0;
    v24[1] = sub_238A2DE58;
    v26 = v0[2];
    v27 = MEMORY[0x277D85700];

    return MEMORY[0x282200830](v26, &unk_238A3BE40, v22, sub_238A31470, v22, v23, v27, v25);
  }
}

uint64_t sub_238A2DE58()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_238A2E00C;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_238A2DF74;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_238A2DF74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238A2E00C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238A2E0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a1;
  v6[25] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A370, &qword_238A3BEE8);
  v6[28] = swift_task_alloc();
  v7 = sub_238A3AF6C();
  v6[29] = v7;
  v6[30] = *(v7 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v8 = sub_238A3AEFC();
  v6[33] = v8;
  v6[34] = *(v8 - 8);
  v6[35] = swift_task_alloc();
  v9 = sub_238A3AADC();
  v6[36] = v9;
  v6[37] = *(v9 - 8);
  v6[38] = swift_task_alloc();
  v10 = sub_238A3AB3C();
  v6[39] = v10;
  v11 = *(v10 - 8);
  v6[40] = v11;
  v6[41] = *(v11 + 64);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v12 = sub_238A3AFEC();
  v6[44] = v12;
  v6[45] = *(v12 - 8);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v13 = sub_238A3AF3C();
  v6[49] = v13;
  v6[50] = *(v13 - 8);
  v6[51] = swift_task_alloc();
  sub_238A3B15C();
  v6[52] = sub_238A3B14C();
  v15 = sub_238A3B10C();
  v6[53] = v15;
  v6[54] = v14;

  return MEMORY[0x2822009F8](sub_238A2E3DC, v15, v14);
}

uint64_t sub_238A2E3DC()
{
  v81 = v0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v1 = v0[25], v2 = *(v1 + 40), ObjectType = swift_getObjectType(), v4 = type metadata accessor for IdentityDocumentWebPresentmentController(), v0[2] = v1, v0[5] = v4, v0[6] = &protocol witness table for IdentityDocumentWebPresentmentController, v5 = *(v2 + 8), , v6 = v5(v0 + 2, ObjectType, v2), v0[55] = v6, swift_unknownObjectRelease(), __swift_destroy_boxed_opaque_existential_0(v0 + 2), v6))
  {
    sub_238A3AA2C();
    v7 = v6;
    v8 = sub_238A3AFDC();
    v9 = sub_238A3B1AC();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[48];
    v12 = v0[44];
    v13 = v0[45];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v78 = v11;
      v15 = v7;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v80 = v17;
      *v14 = 136315394;
      *(v14 + 4) = sub_238A27614(0xD00000000000001ALL, 0x8000000238A3E0E0, &v80);
      *(v14 + 12) = 2112;
      *(v14 + 14) = v15;
      *v16 = v6;
      v18 = v15;
      _os_log_impl(&dword_238A23000, v8, v9, "IdentityDocumentWebPresentmentController %s - presentation anchor: %@", v14, 0x16u);
      sub_238A2D33C(v16, &qword_27DF4A378, &qword_238A3BEF0);
      v19 = v16;
      v7 = v15;
      MEMORY[0x23EE6E6C0](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23EE6E6C0](v17, -1, -1);
      MEMORY[0x23EE6E6C0](v14, -1, -1);

      v20 = *(v13 + 8);
      v20(v78, v12);
    }

    else
    {

      v20 = *(v13 + 8);
      v20(v11, v12);
    }

    v25 = v0[25];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[56] = Strong;
    if (Strong)
    {
      v27 = Strong;
      v28 = *(v25 + 24);
      sub_238A2FF54(v0 + 7, v0[43], v0[26], v0[27]);
      v67 = v0[42];
      v66 = v0[43];
      v68 = v0[40];
      v69 = v0[39];
      v70 = v0[25];
      sub_238A3AABC();
      v0[57] = sub_238A3AAAC();
      (*(v68 + 16))(v67, v66, v69);
      v71 = (*(v68 + 80) + 40) & ~*(v68 + 80);
      v72 = swift_allocObject();
      v0[58] = v72;
      *(v72 + 2) = v27;
      *(v72 + 3) = v28;
      *(v72 + 4) = v70;
      (*(v68 + 32))(&v72[v71], v67, v69);
      sub_238A31A88(&qword_27DF4A380, MEMORY[0x277CFF498], MEMORY[0x277CFF4A0]);

      swift_unknownObjectRetain();
      v73 = sub_238A3B10C();
      v0[59] = v73;
      v0[60] = v74;

      return MEMORY[0x2822009F8](sub_238A2EDB4, v73, v74);
    }

    sub_238A3AA2C();
    v29 = sub_238A3AFDC();
    v30 = sub_238A3B1AC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_238A23000, v29, v30, "IdentityDocumentWebPresentmentController delegate is not set, throwing error", v31, 2u);
      MEMORY[0x23EE6E6C0](v31, -1, -1);
    }

    v33 = v0[50];
    v32 = v0[51];
    v34 = v0[49];
    v35 = v0[47];
    v36 = v0[44];

    v20(v35, v36);
    (*(v33 + 104))(v32, *MEMORY[0x277CD2BC8], v34);
    sub_238A3AD4C();
    sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8], MEMORY[0x277CD2BF0]);
    v24 = swift_allocError();
    sub_238A3AF4C();
    swift_willThrow();
  }

  else
  {
    v21 = v0[51];
    v22 = v0[49];
    v23 = v0[50];

    (*(v23 + 104))(v21, *MEMORY[0x277CD2BC8], v22);
    sub_238A3AD5C();
    sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8], MEMORY[0x277CD2BF0]);
    v24 = swift_allocError();
    sub_238A3AF4C();
    swift_willThrow();
  }

  v37 = v0[30];
  v0[23] = v24;
  v38 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A368, &qword_238A3BEE0);
  v39 = swift_dynamicCast();
  v40 = *(v37 + 56);
  v41 = v0[32];
  v77 = v24;
  if (v39)
  {
    v42 = v0[29];
    v43 = v0[30];
    v44 = v0[28];
    v40(v44, 0, 1, v42);
    (*(v43 + 32))(v41, v44, v42);
  }

  else
  {
    v45 = v0[28];
    v40(v45, 1, 1, v0[29]);
    sub_238A2D33C(v45, &qword_27DF4A370, &qword_238A3BEE8);
    v46 = v24;
    sub_238A3AF5C();
  }

  v48 = v0[31];
  v47 = v0[32];
  v49 = v0[29];
  v50 = v0[30];
  sub_238A3AA2C();
  v79 = *(v50 + 16);
  v79(v48, v47, v49);
  v51 = sub_238A3AFDC();
  v52 = sub_238A3B1AC();
  v53 = os_log_type_enabled(v51, v52);
  v55 = v0[30];
  v54 = v0[31];
  v56 = v0[29];
  if (v53)
  {
    v57 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v57 = 138412290;
    sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8], MEMORY[0x277CD2BF0]);
    swift_allocError();
    v79(v58, v54, v56);
    v59 = _swift_stdlib_bridgeErrorToNSError();
    v76 = *(v55 + 8);
    v76(v54, v56);
    *(v57 + 4) = v59;
    *v75 = v59;
    _os_log_impl(&dword_238A23000, v51, v52, "IdentityDocumentWebPresentmentController performRequests throwing error %@", v57, 0xCu);
    sub_238A2D33C(v75, &qword_27DF4A378, &qword_238A3BEF0);
    MEMORY[0x23EE6E6C0](v75, -1, -1);
    MEMORY[0x23EE6E6C0](v57, -1, -1);
  }

  else
  {

    v76 = *(v55 + 8);
    v76(v54, v56);
  }

  v60 = v0[32];
  v61 = v0[29];
  v62 = v0[25];
  (*(v0[45] + 8))(v0[46], v0[44]);
  sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8], MEMORY[0x277CD2BF0]);
  swift_allocError();
  v79(v63, v60, v61);
  swift_willThrow();

  v76(v60, v61);
  sub_238A2FDF4(v62);

  v64 = v0[1];

  return v64();
}

uint64_t sub_238A2EDB4()
{
  sub_238A3AA9C();

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return MEMORY[0x2822009F8](sub_238A2EE38, v1, v2);
}

uint64_t sub_238A2EE38()
{
  v1 = v0[55];
  v2 = swift_allocObject();
  v0[61] = v2;
  *(v2 + 16) = v1;
  v3 = v0[59];
  v4 = v0[60];
  v5 = v1;

  return MEMORY[0x2822009F8](sub_238A2EECC, v3, v4);
}

uint64_t sub_238A2EECC()
{
  sub_238A3AA8C();

  v5 = (*MEMORY[0x277CFF490] + MEMORY[0x277CFF490]);
  v1 = swift_task_alloc();
  v0[62] = v1;
  *v1 = v0;
  v1[1] = sub_238A2EFAC;
  v2 = v0[43];
  v3 = v0[38];

  return v5(v3, v2);
}

uint64_t sub_238A2EFAC()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  v3 = *(v2 + 432);
  v4 = *(v2 + 424);
  if (v0)
  {
    v5 = sub_238A2F784;
  }

  else
  {
    v5 = sub_238A2F0E8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_238A2F0E8()
{

  sub_238A319C0((v0 + 7), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A388, &qword_238A3BF18);
  v1 = swift_dynamicCast();
  v2 = v0[55];
  if (v1)
  {
    v47 = v0[43];
    v3 = v0[40];
    v46 = v0[39];
    v43 = v0[55];
    v4 = v0[37];
    v5 = v0[38];
    v44 = v0[36];
    v6 = v0[24];
    v45 = v0[25];
    (*(v0[34] + 8))();
    sub_238A3AACC();
    v7 = sub_238A3AF2C();
    v8 = MEMORY[0x277CD2BB8];
    v6[3] = v7;
    v6[4] = v8;
    __swift_allocate_boxed_opaque_existential_1(v6);
    sub_238A3AF1C();

    swift_unknownObjectRelease();

    (*(v4 + 8))(v5, v44);
    (*(v3 + 8))(v47, v46);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    sub_238A2FDF4(v45);

    v9 = v0[1];
  }

  else
  {
    v52 = v0[43];
    v10 = v0[40];
    v49 = v0[39];
    v12 = v0[37];
    v11 = v0[38];
    v13 = v0[36];
    (*(v0[50] + 104))(v0[51], *MEMORY[0x277CD2BD8], v0[49]);
    sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8], MEMORY[0x277CD2BF0]);
    v14 = swift_allocError();
    sub_238A3AF4C();
    swift_willThrow();

    swift_unknownObjectRelease();

    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v52, v49);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v15 = v0[30];
    v0[23] = v14;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A368, &qword_238A3BEE0);
    v17 = swift_dynamicCast();
    v18 = *(v15 + 56);
    v19 = v0[32];
    v51 = v14;
    if (v17)
    {
      v20 = v0[29];
      v21 = v0[30];
      v22 = v0[28];
      v18(v22, 0, 1, v20);
      (*(v21 + 32))(v19, v22, v20);
    }

    else
    {
      v23 = v0[28];
      v18(v23, 1, 1, v0[29]);
      sub_238A2D33C(v23, &qword_27DF4A370, &qword_238A3BEE8);
      v24 = v14;
      sub_238A3AF5C();
    }

    v26 = v0[31];
    v25 = v0[32];
    v28 = v0[29];
    v27 = v0[30];
    sub_238A3AA2C();
    v53 = *(v27 + 16);
    v53(v26, v25, v28);
    v29 = sub_238A3AFDC();
    v30 = sub_238A3B1AC();
    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[30];
    v32 = v0[31];
    v34 = v0[29];
    if (v31)
    {
      v35 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v35 = 138412290;
      swift_allocError();
      v53(v36, v32, v34);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      v50 = *(v33 + 8);
      v50(v32, v34);
      *(v35 + 4) = v37;
      *v48 = v37;
      _os_log_impl(&dword_238A23000, v29, v30, "IdentityDocumentWebPresentmentController performRequests throwing error %@", v35, 0xCu);
      sub_238A2D33C(v48, &qword_27DF4A378, &qword_238A3BEF0);
      MEMORY[0x23EE6E6C0](v48, -1, -1);
      MEMORY[0x23EE6E6C0](v35, -1, -1);
    }

    else
    {

      v50 = *(v33 + 8);
      v50(v32, v34);
    }

    v38 = v0[32];
    v39 = v0[29];
    v40 = v0[25];
    (*(v0[45] + 8))(v0[46], v0[44]);
    swift_allocError();
    v53(v41, v38, v39);
    swift_willThrow();

    v50(v38, v39);
    sub_238A2FDF4(v40);

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_238A2F784()
{
  v1 = v0[55];
  v2 = v0[43];
  v3 = v0[39];
  v4 = v0[40];

  swift_unknownObjectRelease();

  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v5 = v0[63];
  v0[23] = v5;
  v6 = v0[30];
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A368, &qword_238A3BEE0);
  v8 = swift_dynamicCast();
  v9 = *(v6 + 56);
  v10 = v0[32];
  v37 = v5;
  if (v8)
  {
    v11 = v0[29];
    v12 = v0[30];
    v13 = v0[28];
    v9(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
  }

  else
  {
    v14 = v0[28];
    v9(v14, 1, 1, v0[29]);
    sub_238A2D33C(v14, &qword_27DF4A370, &qword_238A3BEE8);
    v15 = v5;
    sub_238A3AF5C();
  }

  v17 = v0[31];
  v16 = v0[32];
  v18 = v0[29];
  v19 = v0[30];
  sub_238A3AA2C();
  v38 = *(v19 + 16);
  v38(v17, v16, v18);
  v20 = sub_238A3AFDC();
  v21 = sub_238A3B1AC();
  v22 = os_log_type_enabled(v20, v21);
  v24 = v0[30];
  v23 = v0[31];
  v25 = v0[29];
  if (v22)
  {
    v26 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v26 = 138412290;
    sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8], MEMORY[0x277CD2BF0]);
    swift_allocError();
    v38(v27, v23, v25);
    v28 = _swift_stdlib_bridgeErrorToNSError();
    v36 = *(v24 + 8);
    v36(v23, v25);
    *(v26 + 4) = v28;
    *v35 = v28;
    _os_log_impl(&dword_238A23000, v20, v21, "IdentityDocumentWebPresentmentController performRequests throwing error %@", v26, 0xCu);
    sub_238A2D33C(v35, &qword_27DF4A378, &qword_238A3BEF0);
    MEMORY[0x23EE6E6C0](v35, -1, -1);
    MEMORY[0x23EE6E6C0](v26, -1, -1);
  }

  else
  {

    v36 = *(v24 + 8);
    v36(v23, v25);
  }

  v29 = v0[32];
  v30 = v0[29];
  v31 = v0[25];
  (*(v0[45] + 8))(v0[46], v0[44]);
  sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8], MEMORY[0x277CD2BF0]);
  swift_allocError();
  v38(v32, v29, v30);
  swift_willThrow();

  v36(v29, v30);
  sub_238A2FDF4(v31);

  v33 = v0[1];

  return v33();
}

uint64_t sub_238A2FC1C()
{
  v1 = sub_238A3A95C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_238A2FCF0(uint64_t a1)
{
  v4 = *(sub_238A3A95C() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_238A28170;

  return sub_238A2E0A8(a1, v6, v7, v8, v9, v1 + v5);
}

void sub_238A2FDF4(uint64_t a1)
{
  v2 = sub_238A3AFEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A3AA2C();
  v6 = sub_238A3AFDC();
  v7 = sub_238A3B1AC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_238A23000, v6, v7, "IdentityDocumentWebPresentmentController clearing performTask", v8, 2u);
    MEMORY[0x23EE6E6C0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(a1 + 48);
  os_unfair_lock_lock((v9 + 24));

  *(v9 + 16) = 0;
  os_unfair_lock_unlock((v9 + 24));
}

uint64_t sub_238A2FF54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v44 = a2;
  v46 = a1;
  v5 = sub_238A3AF3C();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238A3AFEC();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_238A3A95C();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A390, &unk_238A3BF20);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = &v38 - v11;
  v12 = sub_238A3AEFC();
  v53 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v38 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v15);
  v39 = &v38 - v18;
  v19 = *(a3 + 16);
  if (v19)
  {
    sub_238A3B15C();
    v20 = a3 + 32;
    while (1)
    {
      sub_238A319C0(v20, v55);
      sub_238A3B14C();
      sub_238A3B10C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_238A319C0(v55, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A388, &qword_238A3BF18);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v55);
      v20 += 40;
      if (!--v19)
      {
        goto LABEL_7;
      }
    }

    v27 = v53;
    v28 = *(v53 + 8);
    v28(v17, v12);

    sub_238A2D444(v55, v56);
    v21 = v57;
    v29 = swift_dynamicCast();
    (*(v27 + 56))(v21, v29 ^ 1u, 1, v12);
    if ((*(v27 + 48))(v21, 1, v12) != 1)
    {
      v30 = v39;
      (*(v27 + 32))(v39, v21, v12);
      v31 = MEMORY[0x277CD2BB0];
      v32 = v46;
      v46[3] = v12;
      v32[4] = v31;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
      v34 = *(v27 + 16);
      v34(boxed_opaque_existential_1, v30, v12);
      v35 = v38;
      v34(v38, v30, v12);
      v36 = v40;
      (*(v41 + 16))(v40, v43, v42);
      v37 = v45;
      sub_238A24864(v35, v36, v44);
      if (!v37)
      {
        return (v28)(v30, v12);
      }

      v28(v30, v12);
      return __swift_destroy_boxed_opaque_existential_0(v32);
    }
  }

  else
  {
LABEL_7:
    v21 = v57;
    (*(v53 + 56))(v57, 1, 1, v12);
  }

  sub_238A2D33C(v21, &qword_27DF4A390, &unk_238A3BF20);
  v22 = v47;
  sub_238A3AA2C();
  v23 = sub_238A3AFDC();
  v24 = sub_238A3B1AC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_238A23000, v23, v24, "IdentityDocumentWebPresentmentController no valid requests available, throwing error", v25, 2u);
    MEMORY[0x23EE6E6C0](v25, -1, -1);
  }

  (*(v48 + 8))(v22, v49);
  (*(v50 + 104))(v52, *MEMORY[0x277CD2BC8], v51);
  sub_238A3AD6C();
  sub_238A3AF6C();
  sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8], MEMORY[0x277CD2BF0]);
  swift_allocError();
  sub_238A3AF4C();
  return swift_willThrow();
}

uint64_t sub_238A30644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  sub_238A3A95C();
  v5[4] = swift_task_alloc();
  v8 = sub_238A3AD8C();
  v5[5] = v8;
  v5[6] = *(v8 - 8);
  v5[7] = swift_task_alloc();
  v9 = sub_238A3AFBC();
  v5[8] = v9;
  v5[9] = *(v9 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = sub_238A3B15C();
  v5[14] = sub_238A3B14C();
  ObjectType = swift_getObjectType();
  v13 = (*(a3 + 8) + **(a3 + 8));
  v11 = swift_task_alloc();
  v5[15] = v11;
  *v11 = v5;
  v11[1] = sub_238A30894;

  return v13(a4, ObjectType, a3);
}

uint64_t sub_238A30894(uint64_t a1)
{
  *(*v1 + 128) = a1;

  v3 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A309D8, v3, v2);
}

uint64_t sub_238A309D8()
{
  v1 = v0[16];

  if (*(v1 + 16))
  {
    v2 = v0[11];
    v3 = v0[12];
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[8];
    v7 = v0[4];
    v14 = v0[2];
    v8 = *(v5 + 16);
    v8(v2, v0[16] + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v6);

    (*(v5 + 32))(v3, v2, v6);
    v8(v4, v3, v6);
    sub_238A3AB2C();
    sub_238A25A74(v4, v7, v14);
    (*(v5 + 8))(v3, v6);
  }

  else
  {
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];

    (*(v11 + 104))(v10, *MEMORY[0x277CFFC80], v12);
    sub_238A2D0F0(MEMORY[0x277D84F90]);
    sub_238A3AD9C();
    sub_238A31A88(&qword_27DF4A2C8, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    swift_allocError();
    sub_238A3ADAC();
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_238A30CA0(uint64_t a1, uint64_t a2)
{
  sub_238A3B07C();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238A27F90;

  return MEMORY[0x282152320](a2, a1);
}

uint64_t sub_238A30D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_238A316B8(a3, v22 - v9);
  v11 = sub_238A3B17C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_238A2D33C(v10, &qword_27DF4A268, &qword_238A3BE20);
  }

  else
  {
    sub_238A3B16C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_238A3B10C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_238A3B0BC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A360, &qword_238A3BE48);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_238A2D33C(a3, &qword_27DF4A268, &qword_238A3BE20);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_238A2D33C(a3, &qword_27DF4A268, &qword_238A3BE20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A360, &qword_238A3BE48);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_238A31004(void *a1)
{

  *a1 = v1;
}

uint64_t sub_238A31040(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_238A3B15C();
  v2[3] = sub_238A3B14C();
  v5 = swift_task_alloc();
  v2[4] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A360, &qword_238A3BE48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A368, &qword_238A3BEE0);
  *v5 = v2;
  v5[1] = sub_238A31140;
  v8 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, v6, v7, v8);
}

uint64_t sub_238A31140()
{
  *(*v1 + 40) = v0;

  v3 = sub_238A3B10C();
  if (v0)
  {
    v4 = sub_238A31300;
  }

  else
  {
    v4 = sub_238A3129C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_238A3129C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238A31300()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238A31364(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_238A27F90;

  return sub_238A31040(a1, v1);
}

uint64_t sub_238A31400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A360, &qword_238A3BE48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A368, &qword_238A3BEE0);
  v4 = MEMORY[0x277D84950];

  return MEMORY[0x282200438](a1, v2, v3, v4);
}

uint64_t IdentityDocumentWebPresentmentController.deinit()
{
  sub_238A314A8(v0 + 16);
  sub_238A314A8(v0 + 32);

  return v0;
}

uint64_t IdentityDocumentWebPresentmentController.__deallocating_deinit()
{
  sub_238A314A8(v0 + 16);
  sub_238A314A8(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_238A31518@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_238A31568(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_238A315C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_238A31610(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_238A316B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A31728()
{
  v1 = sub_238A3AB3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_238A317F4(uint64_t a1)
{
  v4 = *(sub_238A3AB3C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238A28170;

  return sub_238A30644(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_238A318EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238A31924(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238A28170;

  return sub_238A30CA0(a1, v4);
}

uint64_t sub_238A319C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_238A31A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of IdentityDocumentWebPresentmentControllerDelegate.rawRequestsForWebPresentmentController(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_238A31BF8;

  return v9(a1, a2, a3);
}

uint64_t sub_238A31BF8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_238A31CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A3B8, &qword_238A3BFB8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  *a3 = sub_238A3AA4C();
  *(a3 + 1) = v12;
  v13 = type metadata accessor for ISO18013MobileDocumentRawRequestContext(0);
  v14 = *(v13 + 20);
  sub_238A3AA5C();
  v15 = sub_238A3A95C();
  (*(*(v15 - 8) + 56))(&a3[v14], 0, 1, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, a2, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A3C0, &qword_238A3C240);
  v18 = swift_allocObject();
  *(v18 + ((*(*v18 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_238A2D3DC(v11, v9, &qword_27DF4A3B8, &qword_238A3BFB8);
  (*(v17 + 8))(a2, v16);
  v19 = sub_238A3AA7C();
  (*(*(v19 - 8) + 8))(a1, v19);
  sub_238A32990(v11);
  result = sub_238A329F8(v9, v18 + *(*v18 + *MEMORY[0x277D841D0] + 16));
  *&a3[*(v13 + 24)] = v18;
  return result;
}

uint64_t ISO18013MobileDocumentRawRequestContext.requestData.getter()
{
  v1 = *v0;
  sub_238A31FF0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_238A31FF0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t type metadata accessor for ISO18013MobileDocumentRawRequestContext(uint64_t a1)
{
  result = qword_27DF4A398;
  if (!qword_27DF4A398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ISO18013MobileDocumentRawRequestContext.sendResponse(_:)()
{
  v1 = *(v0 + *(type metadata accessor for ISO18013MobileDocumentRawRequestContext(0) + 24));
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_238A32338(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_238A32188(uint64_t a1)
{
  v2 = sub_238A3AC4C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 16))(v6, a1, v3);
    sub_238A3AF0C();
    sub_238A3AC3C();
    sub_238A3B13C();
    (*(v4 + 8))(v6, v3);
  }

  sub_238A32990(a1);
  return (*(v4 + 56))(a1, 1, 1, v3);
}

Swift::Void __swiftcall ISO18013MobileDocumentRawRequestContext.cancel()()
{
  v1 = *(v0 + *(type metadata accessor for ISO18013MobileDocumentRawRequestContext(0) + 24));
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_238A323FC(v1 + v2);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_238A323FC(uint64_t a1)
{
  v2 = sub_238A3AB6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  if (!(*(v7 + 48))(a1, 1, v6))
  {
    (*(v7 + 16))(v9, a1, v6);
    (*(v3 + 104))(v5, *MEMORY[0x277CFF6A8], v2);
    sub_238A3AB8C();
    sub_238A32A68();
    v10 = swift_allocError();
    sub_238A3AB7C();
    v12[1] = v10;
    sub_238A3B12C();
    (*(v7 + 8))(v9, v6);
  }

  sub_238A32990(a1);
  return (*(v7 + 56))(a1, 1, 1, v6);
}

uint64_t sub_238A32650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A328, &qword_238A3BD90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_238A32730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A328, &qword_238A3BD90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_238A327F8(uint64_t a1)
{
  sub_238A3288C(319);
  if (v1 <= 0x3F)
  {
    sub_238A328E4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238A3288C(uint64_t a1)
{
  if (!qword_27DF4A3A8)
  {
    sub_238A3A95C();
    v1 = sub_238A3B1CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF4A3A8);
    }
  }
}

void sub_238A328E4(uint64_t a1)
{
  if (!qword_27DF4A3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF4A3B8, &qword_238A3BFB8);
    v1 = sub_238A3AFCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF4A3B0);
    }
  }
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

uint64_t sub_238A32990(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A3B8, &qword_238A3BFB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238A329F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A3B8, &qword_238A3BFB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238A32A68()
{
  result = qword_27DF4A3C8[0];
  if (!qword_27DF4A3C8[0])
  {
    sub_238A3AB8C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF4A3C8);
  }

  return result;
}

uint64_t sub_238A32AC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238A33EB8();
  sub_238A3A97C();

  v4 = OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__context;
  swift_beginAccess();
  return sub_238A2A0C0(v3 + v4, a2);
}

uint64_t sub_238A32B58(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2B8, &qword_238A3C180);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_238A2A0C0(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_238A33EB8();
  sub_238A3A96C();

  return sub_238A2A29C(v6);
}

uint64_t ISO18013MobileDocumentRawRequestScene.sceneIdentifiers.getter()
{
  sub_238A33B88();
}

uint64_t ISO18013MobileDocumentRawRequestScene.sceneIdentifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

id ISO18013MobileDocumentRawRequestScene.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_238A3ABEC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A280, &unk_238A3BB40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_238A3BB50;
  (*(v7 + 104))(v9, *MEMORY[0x277CFF6E0], v6);
  v11 = sub_238A3ABDC();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *a3 = v10;
  result = [objc_allocWithZone(type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel(0)) init];
  a3[2] = a2;
  a3[3] = result;
  a3[1] = a1;
  return result;
}

uint64_t ISO18013MobileDocumentRawRequestScene.body.getter(uint64_t a1)
{
  v3 = sub_238A3ABEC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = *MEMORY[0x277CFF6E0];
  v10 = *(v4 + 104);
  v18 = *v1;
  v10(v6, v9, v3);
  sub_238A3ABDC();
  (*(v4 + 8))(v6, v3);
  v11 = swift_allocObject();
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  v14 = v18;
  *(v11 + 16) = v13;
  *(v11 + 32) = v14;
  *(v12 + 16) = v13;
  *(v12 + 32) = v14;
  *(v12 + 48) = v7;
  *(v12 + 56) = v8;
  type metadata accessor for ISO18013MobileDocumentRawRequestSceneContainer(0, v13, *(&v13 + 1), v15);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v16 = v8;
  swift_getWitnessTable();
  return sub_238A3A9AC();
}

void sub_238A3303C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, __int128 *a6@<X8>)
{
  sub_238A3B15C();
  sub_238A3B14C();
  sub_238A3B10C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v16 = a3;
  *(&v16 + 1) = a1;
  v17 = a2;
  v13 = type metadata accessor for ISO18013MobileDocumentRawRequestSceneContainer(0, a4, a5, v12);
  swift_getWitnessTable();
  v14 = *(*(v13 - 8) + 16);
  v14(&v18, &v16, v13);
  v15 = v18;
  v16 = v18;
  v17 = v19;
  v14(a6, &v16, v13);
}

uint64_t sub_238A331DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v17 = sub_238A3B17C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_238A3B15C();

  v18 = a5;
  v19 = a1;
  v20 = sub_238A3B14C();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a2;
  v21[7] = a3;
  v21[8] = a4;
  v21[9] = v18;
  v21[10] = v19;
  sub_238A3730C(0, 0, v16, &unk_238A3C1C0, v21);

  return 1;
}

uint64_t sub_238A3335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  sub_238A3B15C();
  v8[4] = sub_238A3B14C();
  v10 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A333F8, v10, v9);
}

uint64_t sub_238A333F8()
{
  v1 = *(v0 + 24);

  sub_238A29AD0(v1);
  v2 = v1;
  sub_238A28660(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_238A33470()
{
  sub_238A33B88();
}

uint64_t sub_238A334A0@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a5;
  v50 = a6;
  v44 = a3;
  v45 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A4D0, &qword_238A3C178);
  v43 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v46 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v42 = &v40 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2B8, &qword_238A3C180);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40 - v16;
  v18 = type metadata accessor for ISO18013MobileDocumentRawRequestContext(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v40 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v8;
  v47 = sub_238A3B02C();
  v21 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v23 = &v40 - v22;
  swift_getKeyPath();
  v53 = a1;
  sub_238A33EB8();
  sub_238A3A97C();

  v24 = OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__context;
  swift_beginAccess();
  sub_238A2A0C0(a1 + v24, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_238A2A29C(v17);
    v25 = v41;
    sub_238A3AFFC();
    v26 = sub_238A33F10();
    v27 = a4;
    v29 = v48;
    v28 = v49;
    sub_238A33A58(v25, v27, v48, v49, v26);
    (*(v43 + 8))(v25, v29);
  }

  else
  {
    v30 = v17;
    v31 = v40;
    sub_238A33F74(v30, v40);
    v45(v31);
    v32 = v46;
    v33 = *(v46 + 16);
    v34 = v42;
    v33(v42, v13, a4);
    v35 = *(v32 + 8);
    v35(v13, a4);
    v33(v13, v34, a4);
    v36 = sub_238A33F10();
    v28 = v49;
    sub_238A33960(v13, a4, v48, v49, v36);
    v35(v13, a4);
    v35(v34, a4);
    sub_238A33FD8(v31);
  }

  v37 = sub_238A33F10();
  v51 = v28;
  v52 = v37;
  v38 = v47;
  swift_getWitnessTable();
  (*(v21 + 16))(v50, v23, v38);
  return (*(v21 + 8))(v23, v38);
}

uint64_t sub_238A33960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_238A3B00C();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_238A3B01C();
}

uint64_t sub_238A33A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_238A3B00C();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_238A3B01C();
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_238A33C14(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_238A33C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_238A33CE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_238A33D30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238A33D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_238A33DE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_238A33E2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_238A33EB8()
{
  result = qword_27DF4A2C0;
  if (!qword_27DF4A2C0)
  {
    type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4A2C0);
  }

  return result;
}

unint64_t sub_238A33F10()
{
  result = qword_27DF4A4D8;
  if (!qword_27DF4A4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF4A4D0, &qword_238A3C178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4A4D8);
  }

  return result;
}

uint64_t sub_238A33F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013MobileDocumentRawRequestContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A33FD8(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013MobileDocumentRawRequestContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238A34034()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_238A3408C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_238A27F90;

  return sub_238A3335C(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_238A3417C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF4A4D0, &qword_238A3C178);
  sub_238A3B02C();
  sub_238A33F10();
  return swift_getWitnessTable();
}

uint64_t sub_238A341FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v182 = a4;
  v155 = sub_238A3AE1C();
  v157 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v10 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238A3AEBC();
  v12 = *(v11 - 8);
  v178 = v11;
  v179 = v12;
  MEMORY[0x28223BE20](v11);
  v177 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_238A3AC8C();
  v14 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_238A3AE5C();
  v16 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v161 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_238A3AE8C();
  v143 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v136 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_238A3ACDC();
  v19 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_238A3ADEC();
  v141 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_238A3AEFC();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A3B8, &qword_238A3BFB8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v113 - v24;
  v127 = a1;
  sub_238A352FC(a1, a5);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v126 = a3;
  v28(v25, a3, v26);
  v121 = v27;
  v29 = *(v27 + 56);
  v122 = v26;
  v29(v25, 0, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A3C0, &qword_238A3C240);
  v30 = swift_allocObject();
  *(v30 + ((*(*v30 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_238A329F8(v25, v30 + *(*v30 + *MEMORY[0x277D841D0] + 16));
  v31 = type metadata accessor for ISO18013MobileDocumentRequestContext(0);
  *(a5 + *(v31 + 24)) = v30;
  v120 = v31;
  v32 = *(v31 + 28);
  v128 = a5;
  *(a5 + v32) = v182;
  v135 = a2;
  v33 = sub_238A3ACFC();
  v34 = *(v33 + 16);
  if (v34)
  {
    v185 = MEMORY[0x277D84F90];
    v133 = v33;
    v117 = v34;
    sub_238A36CDC(0, v34, 0);
    result = v133;
    v36 = 0;
    v37 = v133 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v38 = v185;
    v151 = v14 + 16;
    v176 = v179 + 32;
    v147 = (v14 + 8);
    v146 = v16 + 32;
    v119 = v143 + 32;
    v114 = (v19 + 8);
    v113 = v141 + 32;
    v167 = v10;
    v154 = v14;
    v148 = v16;
    v118 = v19;
    v116 = v37;
    v115 = v19 + 16;
    while (1)
    {
      if (v36 >= *(result + 16))
      {
LABEL_61:
        __break(1u);
        return result;
      }

      v132 = v38;
      v39 = *(v19 + 72);
      v131 = v36;
      (*(v19 + 16))(v144, v37 + v39 * v36, v145);
      v40 = sub_238A3ACCC();
      v41 = *(v40 + 16);
      if (v41)
      {
        break;
      }

LABEL_44:

      v100 = v144;
      sub_238A3ACAC();
      v101 = v129;
      sub_238A3ADBC();
      (*v114)(v100, v145);
      v38 = v132;
      v185 = v132;
      v103 = *(v132 + 16);
      v102 = *(v132 + 24);
      if (v103 >= v102 >> 1)
      {
        sub_238A36CDC((v102 > 1), v103 + 1, 1);
        v38 = v185;
      }

      v104 = v131 + 1;
      *(v38 + 16) = v103 + 1;
      (*(v141 + 32))(v38 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v103, v101, v130);
      v36 = v104;
      v105 = v104 == v117;
      v19 = v118;
      result = v133;
      v37 = v116;
      if (v105)
      {
        goto LABEL_50;
      }
    }

    v184 = MEMORY[0x277D84F90];
    v139 = v40;
    v138 = v41;
    sub_238A36D20(0, v41, 0);
    result = v139;
    v42 = 0;
    v142 = v184;
    v137 = v139 + 32;
    v43 = v136;
    while (1)
    {
      if (v42 >= *(result + 16))
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v140 = v42;
      v44 = *(v137 + 8 * v42);
      v45 = *(v44 + 16);
      if (v45)
      {
        break;
      }

LABEL_41:
      sub_238A3AE6C();

      v95 = v142;
      v184 = v142;
      v97 = *(v142 + 16);
      v96 = *(v142 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_238A36D20((v96 > 1), v97 + 1, 1);
        v43 = v136;
        v95 = v184;
      }

      v98 = v140 + 1;
      *(v95 + 16) = v97 + 1;
      v99 = (*(v143 + 80) + 32) & ~*(v143 + 80);
      v142 = v95;
      (*(v143 + 32))(v95 + v99 + *(v143 + 72) * v97, v43, v134);
      v42 = v98;
      result = v139;
      if (v98 == v138)
      {
        goto LABEL_44;
      }
    }

    v183 = MEMORY[0x277D84F90];
    v156 = v44;

    v149 = v45;
    sub_238A36D64(0, v45, 0);
    v162 = v183;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A500, &qword_238A3C248);
    v153 = result;
    v46 = v156;
    v47 = 0;
    v48 = v154;
    v152 = v156 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    while (1)
    {
      if (v47 >= *(v46 + 16))
      {
        __break(1u);
        goto LABEL_60;
      }

      v160 = v47 + 1;
      (*(v48 + 16))(v163, v152 + *(v48 + 72) * v47, v164);
      v159 = sub_238A3AC7C();
      v158 = v49;
      v50 = sub_238A3AC5C();
      v51 = sub_238A3B21C();
      v52 = 0;
      v53 = *(v50 + 64);
      v166 = v50 + 64;
      v169 = v51;
      v170 = v50;
      v54 = 1 << *(v50 + 32);
      v55 = v54 < 64 ? ~(-1 << v54) : -1;
      v56 = v55 & v53;
      v165 = (v54 + 63) >> 6;
      v168 = v51 + 64;
      if (v56)
      {
        break;
      }

LABEL_15:
      v58 = v52;
      v59 = v161;
      while (1)
      {
        v60 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          __break(1u);
          goto LABEL_57;
        }

        if (v60 >= v165)
        {
          break;
        }

        v61 = *(v166 + 8 * v60);
        ++v58;
        if (v61)
        {
          v171 = (v61 - 1) & v61;
          v172 = v60;
          v57 = __clz(__rbit64(v61)) | (v60 << 6);
          goto LABEL_20;
        }
      }

      sub_238A3AE3C();
      (*v147)(v163, v164);
      v91 = v162;
      v183 = v162;
      v93 = *(v162 + 16);
      v92 = *(v162 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_238A36D64((v92 > 1), v93 + 1, 1);
        v59 = v161;
        v91 = v183;
      }

      *(v91 + 16) = v93 + 1;
      v94 = (*(v148 + 80) + 32) & ~*(v148 + 80);
      v162 = v91;
      result = (*(v148 + 32))(v91 + v94 + *(v148 + 72) * v93, v59, v150);
      v47 = v160;
      v48 = v154;
      v46 = v156;
      if (v160 == v149)
      {
        v43 = v136;
        goto LABEL_41;
      }
    }

LABEL_14:
    v171 = (v56 - 1) & v56;
    v172 = v52;
    v57 = __clz(__rbit64(v56)) | (v52 << 6);
LABEL_20:
    v62 = *(v170 + 56);
    v63 = (*(v170 + 48) + 16 * v57);
    v64 = v63[1];
    v174 = *v63;
    v175 = v57;
    v65 = *(v62 + 8 * v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A508, &qword_238A3C250);
    v66 = sub_238A3B21C();
    v67 = v65 + 64;
    v68 = 1 << *(v65 + 32);
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    else
    {
      v69 = -1;
    }

    v70 = v69 & *(v65 + 64);
    v71 = (v68 + 63) >> 6;
    v180 = v66 + 64;
    v173 = v64;
    v72 = v66;

    v182 = v65;

    v73 = 0;
    v181 = v72;
    if (v70)
    {
      while (1)
      {
        v74 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
LABEL_30:
        v77 = v74 | (v73 << 6);
        v78 = (*(v182 + 48) + 16 * v77);
        v79 = *v78;
        v10 = v78[1];

        v80 = v177;
        sub_238A3AE9C();
        v72 = v181;
        *(v180 + ((v77 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v77;
        v81 = (v72[6] + 16 * v77);
        *v81 = v79;
        v81[1] = v10;
        (*(v179 + 32))(v72[7] + *(v179 + 72) * v77, v80, v178);
        v82 = v72[2];
        v83 = __OFADD__(v82, 1);
        v84 = v82 + 1;
        if (v83)
        {
          break;
        }

        v72[2] = v84;
        if (!v70)
        {
          goto LABEL_25;
        }
      }

LABEL_57:
      __break(1u);
    }

    else
    {
LABEL_25:
      v75 = v73;
      while (1)
      {
        v73 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          break;
        }

        if (v73 >= v71)
        {

          v85 = v175;
          v86 = v169;
          *(v168 + ((v175 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v175;
          v87 = (v86[6] + 16 * v85);
          v88 = v173;
          *v87 = v174;
          v87[1] = v88;
          *(v86[7] + 8 * v85) = v72;
          v89 = v86[2];
          v83 = __OFADD__(v89, 1);
          v90 = v89 + 1;
          if (v83)
          {
            break;
          }

          v86[2] = v90;
          v10 = v167;
          v56 = v171;
          v52 = v172;
          if (v171)
          {
            goto LABEL_14;
          }

          goto LABEL_15;
        }

        v76 = *(v67 + 8 * v73);
        ++v75;
        if (v76)
        {
          v74 = __clz(__rbit64(v76));
          v70 = (v76 - 1) & v76;
          goto LABEL_30;
        }
      }
    }

    __break(1u);
  }

LABEL_50:

  v106 = *(sub_238A3AC9C() + 16);
  if (v106)
  {
    v185 = MEMORY[0x277D84F90];
    sub_238A36C98(0, v106, 0);
    v107 = v185;
    v108 = 32;
    do
    {

      sub_238A3B0DC();
      sub_238A3ADFC();

      v185 = v107;
      v110 = *(v107 + 16);
      v109 = *(v107 + 24);
      if (v110 >= v109 >> 1)
      {
        sub_238A36C98((v109 > 1), v110 + 1, 1);
        v107 = v185;
      }

      *(v107 + 16) = v110 + 1;
      (*(v157 + 32))(v107 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v110, v10, v155);
      v108 += 8;
      --v106;
    }

    while (v106);
  }

  v111 = v123;
  sub_238A3AECC();
  (*(v121 + 8))(v126, v122);
  v112 = sub_238A3AD0C();
  (*(*(v112 - 8) + 8))(v135, v112);
  sub_238A2D33C(v127, &qword_27DF4A328, &qword_238A3BD90);
  return (*(v124 + 32))(v128 + *(v120 + 20), v111, v125);
}

uint64_t sub_238A352FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A328, &qword_238A3BD90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ISO18013MobileDocumentRequestContext.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ISO18013MobileDocumentRequestContext(0) + 20);
  v4 = sub_238A3AEFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ISO18013MobileDocumentRequestContext(uint64_t a1)
{
  result = qword_27DF4A4E8;
  if (!qword_27DF4A4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ISO18013MobileDocumentRequestContext.sendResponse(_:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_238A3AF3C();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = sub_238A3AFEC();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = sub_238A3AF7C();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v7 = sub_238A3AFBC();
  v3[31] = v7;
  v3[32] = *(v7 - 8);
  v3[33] = swift_task_alloc();
  v8 = sub_238A3AF2C();
  v3[34] = v8;
  v3[35] = *(v8 - 8);
  v3[36] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A4E0, &qword_238A3C1E0);
  v3[37] = v9;
  v3[38] = *(v9 - 8);
  v3[39] = swift_task_alloc();
  v10 = sub_238A3AA7C();
  v3[40] = v10;
  v3[41] = *(v10 - 8);
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238A3572C, 0, 0);
}

uint64_t sub_238A3572C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  v8 = v1[21];
  v9 = type metadata accessor for ISO18013MobileDocumentRequestContext(0);
  v1[43] = v9;
  v12 = *(v8 + *(v9 + 28));
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_238A35900;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_238A3AAFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A368, &qword_238A3BEE0);
  sub_238A3B11C();
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_238A36218;
  v1[13] = &block_descriptor;
  [v12 releaseRequestWithCompletionHandler_];
  (*(v6 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_238A35900()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_238A35EBC;
  }

  else
  {
    v2 = sub_238A35A10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238A35A10()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[18];
  v5 = v0[19];
  sub_238A3AAEC();

  (*(v2 + 104))(v1, *MEMORY[0x277CD2BF8], v3);
  sub_238A3AA4C();
  sub_238A3AF9C();
  v10 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[45] = v6;
  *v6 = v0;
  v6[1] = sub_238A35B84;
  v7 = v0[36];
  v8 = v0[33];

  return v10(v7, v8);
}

uint64_t sub_238A35B84()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  (*(v2[32] + 8))(v2[33], v2[31]);
  if (v0)
  {
    v3 = sub_238A3613C;
  }

  else
  {
    v3 = sub_238A35CEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_238A35CEC()
{
  v1 = v0[46];
  v2 = v0[36];
  v3 = *(v0[21] + *(v0[43] + 24));
  *(swift_task_alloc() + 16) = v2;
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_238A367C8(v3 + v4);
  if (v1)
  {

    os_unfair_lock_unlock((v3 + v5));
  }

  else
  {
    v7 = v0[41];
    v6 = v0[42];
    v8 = v0[40];
    v9 = v0[35];
    v10 = v0[36];
    v11 = v0[34];
    os_unfair_lock_unlock((v3 + v5));
    (*(v7 + 8))(v6, v8);

    (*(v9 + 8))(v10, v11);

    v12 = v0[1];

    v12();
  }
}

uint64_t sub_238A35EBC(uint64_t a1)
{
  v2 = v1[44];
  swift_willThrow();
  sub_238A3AA2C();
  v3 = v2;
  v4 = sub_238A3AFDC();
  v5 = sub_238A3B1AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[44];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_238A23000, v4, v5, "ISO18013MobileDocumentRequestContext encountered an error while releasing the request %@", v7, 0xCu);
    sub_238A2D33C(v8, &qword_27DF4A378, &qword_238A3BEF0);
    MEMORY[0x23EE6E6C0](v8, -1, -1);
    MEMORY[0x23EE6E6C0](v7, -1, -1);
  }

  v11 = v1[44];
  v13 = v1[26];
  v12 = v1[27];
  v15 = v1[24];
  v14 = v1[25];
  v16 = v1[22];
  v17 = v1[23];

  (*(v13 + 8))(v12, v14);
  (*(v17 + 104))(v15, *MEMORY[0x277CD2BD8], v16);
  sub_238A3AF6C();
  sub_238A370B8(&qword_27DF4A358, MEMORY[0x277CD2BE8], MEMORY[0x277CD2BF0]);
  swift_allocError();
  sub_238A3AF4C();
  swift_willThrow();

  v18 = v1[1];

  return v18();
}

uint64_t sub_238A3613C()
{
  (*(v0[41] + 8))(v0[42], v0[40]);

  v1 = v0[1];

  return v1();
}

void sub_238A36218(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A4E0, &qword_238A3C1E0);
    sub_238A3B12C();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A4E0, &qword_238A3C1E0);
    sub_238A3B13C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_238A362E0(uint64_t a1)
{
  v2 = sub_238A3AC4C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 16))(v6, a1, v3);
    sub_238A3AF0C();
    sub_238A3AC3C();
    sub_238A3B13C();
    (*(v4 + 8))(v6, v3);
  }

  sub_238A2D33C(a1, &qword_27DF4A3B8, &qword_238A3BFB8);
  return (*(v4 + 56))(a1, 1, 1, v3);
}

Swift::Void __swiftcall ISO18013MobileDocumentRequestContext.cancel()()
{
  v1 = *(v0 + *(type metadata accessor for ISO18013MobileDocumentRequestContext(0) + 24));
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_238A36548(v1 + v2);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_238A36548(uint64_t a1)
{
  v2 = sub_238A3AB6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  if (!(*(v7 + 48))(a1, 1, v6))
  {
    (*(v7 + 16))(v9, a1, v6);
    (*(v3 + 104))(v5, *MEMORY[0x277CFF6A8], v2);
    sub_238A3AB8C();
    sub_238A370B8(qword_27DF4A3C8, MEMORY[0x277CFF6B8], MEMORY[0x277CFF6C0]);
    v10 = swift_allocError();
    sub_238A3AB7C();
    v12[1] = v10;
    sub_238A3B12C();
    (*(v7 + 8))(v9, v6);
  }

  sub_238A2D33C(a1, &qword_27DF4A3B8, &qword_238A3BFB8);
  return (*(v7 + 56))(a1, 1, 1, v6);
}

uint64_t sub_238A367F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A328, &qword_238A3BD90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_238A3AEFC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_238A36924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A328, &qword_238A3BD90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_238A3AEFC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_238A36A38(uint64_t a1)
{
  sub_238A3288C(319);
  if (v1 <= 0x3F)
  {
    sub_238A3AEFC();
    if (v2 <= 0x3F)
    {
      sub_238A328E4(319);
      if (v3 <= 0x3F)
      {
        sub_238A36AEC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_238A36AEC()
{
  result = qword_27DF4A4F8;
  if (!qword_27DF4A4F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DF4A4F8);
  }

  return result;
}

void *sub_238A36B50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A36DA8(a1, a2, a3, *v3, &qword_27DF4A530, &qword_238A3C278, &qword_27DF4A538, &qword_238A3C280);
  *v3 = result;
  return result;
}

void *sub_238A36B90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A36DA8(a1, a2, a3, *v3, &qword_27DF4A540, &qword_238A3C288, &qword_27DF4A548, &qword_238A3C290);
  *v3 = result;
  return result;
}

void *sub_238A36BD0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A36EDC(a1, a2, a3, *v3, qword_27DF4A568, &qword_238A3C2B0, MEMORY[0x277CFF738]);
  *v3 = result;
  return result;
}

void *sub_238A36C14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A36DA8(a1, a2, a3, *v3, &qword_27DF4A558, &qword_238A3C2A0, &qword_27DF4A560, &qword_238A3C2A8);
  *v3 = result;
  return result;
}

void *sub_238A36C54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A36EDC(a1, a2, a3, *v3, &qword_27DF4A550, &qword_238A3C298, MEMORY[0x277CFF730]);
  *v3 = result;
  return result;
}

void *sub_238A36C98(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A36EDC(a1, a2, a3, *v3, &qword_27DF4A510, &qword_238A3C258, MEMORY[0x277CD2B98]);
  *v3 = result;
  return result;
}

void *sub_238A36CDC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A36EDC(a1, a2, a3, *v3, &qword_27DF4A528, &qword_238A3C270, MEMORY[0x277CD2B90]);
  *v3 = result;
  return result;
}

void *sub_238A36D20(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A36EDC(a1, a2, a3, *v3, &qword_27DF4A520, &qword_238A3C268, MEMORY[0x277CD2BA8]);
  *v3 = result;
  return result;
}

void *sub_238A36D64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A36EDC(a1, a2, a3, *v3, &qword_27DF4A518, &qword_238A3C260, MEMORY[0x277CD2BA0]);
  *v3 = result;
  return result;
}

void *sub_238A36DA8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_238A36EDC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_238A370B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_238A37144@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238A3843C();
  sub_238A3A97C();

  v4 = OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__context;
  swift_beginAccess();
  return sub_238A2D3DC(v3 + v4, a2, &qword_27DF4A310, &qword_238A3C470);
}

uint64_t sub_238A371EC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A310, &qword_238A3C470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_238A2D3DC(a1, &v9[-v5], &qword_27DF4A310, &qword_238A3C470);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_238A3843C();
  sub_238A3A96C();

  return sub_238A2D33C(v6, &qword_27DF4A310, &qword_238A3C470);
}

uint64_t sub_238A3730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_238A2D3DC(a3, v25 - v10, &qword_27DF4A268, &qword_238A3BE20);
  v12 = sub_238A3B17C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238A2D33C(v11, &qword_27DF4A268, &qword_238A3BE20);
  }

  else
  {
    sub_238A3B16C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_238A3B10C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_238A3B0BC() + 32;
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

      sub_238A2D33C(a3, &qword_27DF4A268, &qword_238A3BE20);

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

  sub_238A2D33C(a3, &qword_27DF4A268, &qword_238A3BE20);
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

uint64_t ISO18013MobileDocumentRequestScene.sceneIdentifiers.getter()
{
  sub_238A33B88();
}

uint64_t ISO18013MobileDocumentRequestScene.sceneIdentifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

id ISO18013MobileDocumentRequestScene.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_238A3ABEC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A280, &unk_238A3BB40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_238A3BB50;
  (*(v7 + 104))(v9, *MEMORY[0x277CFF6E8], v6);
  v11 = sub_238A3ABDC();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *a3 = v10;
  result = [objc_allocWithZone(type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel(0)) init];
  a3[2] = a2;
  a3[3] = result;
  a3[1] = a1;
  return result;
}

uint64_t ISO18013MobileDocumentRequestScene.body.getter(uint64_t a1)
{
  v3 = sub_238A3ABEC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = *MEMORY[0x277CFF6E8];
  v10 = *(v4 + 104);
  v18 = *v1;
  v10(v6, v9, v3);
  sub_238A3ABDC();
  (*(v4 + 8))(v6, v3);
  v11 = swift_allocObject();
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  v14 = v18;
  *(v11 + 16) = v13;
  *(v11 + 32) = v14;
  *(v12 + 16) = v13;
  *(v12 + 32) = v14;
  *(v12 + 48) = v7;
  *(v12 + 56) = v8;
  type metadata accessor for ISO18013MobileDocumentRequestSceneContainer(0, v13, *(&v13 + 1), v15);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v16 = v8;
  swift_getWitnessTable();
  return sub_238A3A9AC();
}

void sub_238A379EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_238A3B15C();
  sub_238A3B14C();
  sub_238A3B10C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ISO18013MobileDocumentRequestSceneContainer(0, a5, a6, v8);
  swift_getWitnessTable();
  sub_238A341F4();
  sub_238A341F4();
}

uint64_t sub_238A37B30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v17 = sub_238A3B17C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_238A3B15C();

  v18 = a5;
  v19 = a1;
  v20 = sub_238A3B14C();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a2;
  v21[7] = a3;
  v21[8] = a4;
  v21[9] = v18;
  v21[10] = v19;
  sub_238A3730C(0, 0, v16, &unk_238A3C4B0, v21);

  return 1;
}

uint64_t sub_238A37CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  sub_238A3B15C();
  v8[4] = sub_238A3B14C();
  v10 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A37D4C, v10, v9);
}

uint64_t sub_238A37D4C()
{
  v1 = *(v0 + 24);

  sub_238A2BF6C(v1);
  v2 = v1;
  sub_238A2A67C(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_238A37DC8@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v45 = a6;
  v38 = a3;
  v39 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A4D0, &qword_238A3C178);
  v40 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v36 = &v35 - v10;
  v41 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v37 = &v35 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A310, &qword_238A3C470);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35 - v16;
  v18 = type metadata accessor for ISO18013MobileDocumentRequestContext(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v35 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v8;
  v21 = sub_238A3B02C();
  v42 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v35 - v22;
  swift_getKeyPath();
  v48 = a1;
  sub_238A3843C();
  sub_238A3A97C();

  v24 = OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__context;
  swift_beginAccess();
  sub_238A2D3DC(a1 + v24, v17, &qword_27DF4A310, &qword_238A3C470);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_238A2D33C(v17, &qword_27DF4A310, &qword_238A3C470);
    v25 = v36;
    sub_238A3AFFC();
    v26 = sub_238A33F10();
    v27 = v43;
    v28 = v44;
    sub_238A33A58(v25, a4, v43, v44, v26);
    (*(v40 + 8))(v25, v27);
  }

  else
  {
    v29 = v35;
    sub_238A38494(v17, v35);
    v39(v29);
    v30 = v37;
    v28 = v44;
    sub_238A341F4();
    v31 = *(v41 + 8);
    v31(v13, a4);
    sub_238A341F4();
    v32 = sub_238A33F10();
    sub_238A33960(v13, a4, v43, v28, v32);
    v31(v13, a4);
    v31(v30, a4);
    sub_238A384F8(v29);
  }

  v33 = sub_238A33F10();
  v46 = v28;
  v47 = v33;
  swift_getWitnessTable();
  sub_238A341F4();
  return (*(v42 + 8))(v23, v21);
}

uint64_t sub_238A382E0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_238A38360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_238A383B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_238A3843C()
{
  result = qword_27DF4A318;
  if (!qword_27DF4A318)
  {
    type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4A318);
  }

  return result;
}

uint64_t sub_238A38494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013MobileDocumentRequestContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A384F8(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013MobileDocumentRequestContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238A38554()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_238A385AC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_238A27F90;

  return sub_238A37CB0(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_238A3869C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238A386D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238A28170;

  return sub_238A2CB00(a1, v4);
}

uint64_t sub_238A3878C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238A27F90;

  return sub_238A2CB00(a1, v4);
}

uint64_t sub_238A38844(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF4A4D0, &qword_238A3C178);
  sub_238A3B02C();
  sub_238A33F10();
  return swift_getWitnessTable();
}

uint64_t IdentityDocumentProvider.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[0] = a3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  v12 = *(v6 + 16);
  v12(v17 - v10, v3, a1);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v6 + 32))(v14 + v13, v11, a1);
  type metadata accessor for IdentityDocumentProviderExtensionConfiguration(0, a1, a2, v15);
  v12(v9, v3, a1);
  v17[1] = sub_238A271B0(v9);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  return sub_238A3A9CC();
}

uint64_t sub_238A38AD0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t dispatch thunk of IdentityDocumentProvider.performRegistrationUpdates()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238A27F90;

  return v7(a1, a2);
}

char *static IdentityDocumentRequestSceneBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>, uint64_t a6@<X0>, uint64_t a7@<X1>)
{
  sub_238A38DC0(a6, a7, a1, a2, *(a3 + 8), *(a4 + 8), &v16);
  v12 = v16;
  v13 = (*(a3 + 16))(a1, a3);
  v14 = (*(a4 + 16))(a2, a4);
  result = sub_238A39B14(v14);
  *a5 = v12;
  a5[1] = v13;
  return result;
}

uint64_t sub_238A38DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v22 = a7;
  v23 = a6;
  v20 = a5;
  v21 = a2;
  v10 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A720, &qword_238A3C6C0);
  sub_238A3AA1C();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_238A3C530;
  (*(v15 + 16))(v17, a1, a3);
  sub_238A3AA0C();
  (*(v10 + 16))(v13, v21, a4);
  result = sub_238A3AA0C();
  *v22 = v18;
  return result;
}

uint64_t static IdentityDocumentRequestSceneBuilder.buildOptional<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v40 = a3;
  v7 = sub_238A3ABEC();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238A3B1CC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = *(a2 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  (*(v11 + 16))(v14, a1, v10);
  if ((*(v15 + 48))(v14, 1, a2) == 1)
  {
    (*(v11 + 8))(v14, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A280, &unk_238A3BB40);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_238A3BB50;
    v23 = v41;
    v22 = v42;
    (*(v41 + 104))(v9, *MEMORY[0x277CFF6F0], v42);
    v24 = sub_238A3ABDC();
    v26 = v25;
    (*(v23 + 8))(v9, v22);
    *(v21 + 32) = v24;
    *(v21 + 40) = v26;
    v27 = swift_allocObject();
    *(v27 + 16) = v21;
    v28 = swift_allocObject();
    *(v28 + 16) = v21;

    v30 = MEMORY[0x277D84F90];
    v31 = sub_238A39F0C;
    v32 = sub_238A39F04;
  }

  else
  {
    (*(v15 + 32))(v20, v14, a2);
    (*(v15 + 16))(v18, v20, a2);
    v42 = a4;
    v33 = v40;
    v32 = sub_238A393C0(v18, a2, *(v40 + 8));
    v27 = v34;
    v31 = v35;
    v28 = v36;
    v37 = *(v33 + 16);
    v38 = v33;
    a4 = v42;
    v30 = v37(a2, v38);
    result = (*(v15 + 8))(v20, a2);
  }

  *a4 = v32;
  a4[1] = v27;
  a4[2] = v31;
  a4[3] = v28;
  a4[4] = v30;
  return result;
}

uint64_t (*(*sub_238A393C0(char *a1, uint64_t a2, uint64_t a3))())()
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = *(v6 + 32);
  v10(v9 + v8, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v10(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v10(v11 + v8, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  return sub_238A3A5AC;
}

uint64_t _s26IdentityDocumentServicesUI0aB19RequestSceneBuilderV10buildBlockyQrxAA0abeF0RzlFZ_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 8);
  (*(v8 + 16))(v10, a1, a2);
  v13 = (*(a3 + 16))(a2, a3);
  (*(v8 + 32))(a4, v10, a2);
  result = type metadata accessor for IdentityDocumentRequestWrapperView(0, a2, v12, v14);
  *(a4 + *(result + 36)) = v13;
  return result;
}

uint64_t (*sub_238A396C4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v8 - v4;
  sub_238A3A9EC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_238A393C0(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_238A397A0@<X0>(uint64_t *a1@<X8>)
{
  result = (*v1)();
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_238A397FC()
{
  sub_238A3B15C();
  sub_238A3B14C();
  sub_238A3B10C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_238A3988C()
{
  v0 = sub_238A3AFEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A3AA2C();
  v4 = sub_238A3AFDC();
  v5 = sub_238A3B1AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_238A23000, v4, v5, "IdentityDocumentRequestSceneBuilder empty scene onConnection unexpectedly called, returning false", v6, 2u);
    MEMORY[0x23EE6E6C0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_238A399CC()
{
  v0 = sub_238A3ABEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277CFF6E8], v0);
  sub_238A3ABDC();
  (*(v1 + 8))(v3, v0);
  return sub_238A3A9AC();
}

char *sub_238A39B14(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_238A27508(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void (*sub_238A39C08())()
{
  v0 = sub_238A3ABEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238A3A9BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  (*(v1 + 104))(v3, *MEMORY[0x277CFF6E8], v0);
  sub_238A3ABDC();
  (*(v1 + 8))(v3, v0);
  sub_238A3A9AC();
  (*(v5 + 16))(v8, v10, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v13 = *(v5 + 32);
  v13(v12 + v11, v8, v4);
  v13(v8, v10, v4);
  v14 = swift_allocObject();
  v13(v14 + v11, v8, v4);
  return sub_238A3A718;
}

uint64_t sub_238A39ECC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for IdentityDocumentRequestSceneBuilder(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for IdentityDocumentRequestSceneBuilder(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_238A3A050(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IdentityDocumentRequestWrapperView(255, *a1, *(a1[1] + 8), a4);

  return swift_getWitnessTable();
}

uint64_t sub_238A3A114(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_238A3A180(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_238A3A4F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_238A3A208(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_238A3A344(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_238A3A4F8()
{
  if (!qword_27DF4A710)
  {
    v0 = sub_238A3B0FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF4A710);
    }
  }
}

uint64_t sub_238A3A56C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_238A3A6C0()
{
  result = qword_27DF4A718;
  if (!qword_27DF4A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4A718);
  }

  return result;
}

void sub_238A3A718()
{
  sub_238A3A9BC();
  sub_238A3A9EC();
  __break(1u);
}

uint64_t objectdestroy_24Tm()
{
  v1 = sub_238A3A9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_238A3A898()
{
  result = qword_27DF4A728;
  if (!qword_27DF4A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4A728);
  }

  return result;
}

unint64_t sub_238A3A8EC(uint64_t a1)
{
  result = sub_238A3A6C0();
  *(a1 + 8) = result;
  return result;
}