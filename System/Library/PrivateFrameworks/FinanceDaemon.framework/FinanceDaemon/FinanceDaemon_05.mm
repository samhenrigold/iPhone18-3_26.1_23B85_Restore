double sub_226B33F30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_226D6787C();
  v6 = [swift_getObjCClassFromMetadata() entityName];
  v7 = sub_226D6E39C();
  v9 = v8;

  if (v7 == a1 && v9 == a2)
  {

    goto LABEL_10;
  }

  v11 = sub_226D6F21C();

  if (v11)
  {
LABEL_10:
    v17 = &type metadata for AccountTombstone;
    v18 = &off_283A6EB28;
LABEL_11:
    *(a3 + 24) = v17;
    *(a3 + 32) = v18;
    return result;
  }

  sub_226D697AC();
  v13 = [swift_getObjCClassFromMetadata() entityName];
  v14 = sub_226D6E39C();
  v16 = v15;

  if (v14 == a1 && v16 == a2)
  {

LABEL_13:
    v17 = &type metadata for AccountBalanceTombstone;
    v18 = &off_283A6EB48;
    goto LABEL_11;
  }

  v19 = sub_226D6F21C();

  if (v19)
  {
    goto LABEL_13;
  }

  sub_226D6845C();
  v20 = [swift_getObjCClassFromMetadata() entityName];
  v21 = sub_226D6E39C();
  v23 = v22;

  if (v21 == a1 && v23 == a2)
  {

LABEL_18:
    v17 = &type metadata for TransactionTombstone;
    v18 = &off_283A6EB68;
    goto LABEL_11;
  }

  v24 = sub_226D6F21C();

  if (v24)
  {
    goto LABEL_18;
  }

  sub_226D6794C();
  v25 = [swift_getObjCClassFromMetadata() entityName];
  v26 = sub_226D6E39C();
  v28 = v27;

  if (v26 == a1 && v28 == a2)
  {

LABEL_23:
    v17 = &type metadata for ConsentTombstone;
    v18 = &off_283A6EB88;
    goto LABEL_11;
  }

  v29 = sub_226D6F21C();

  if (v29)
  {
    goto LABEL_23;
  }

  sub_226D6C5CC();
  v30 = [swift_getObjCClassFromMetadata() entityName];
  v31 = sub_226D6E39C();
  v33 = v32;

  if (v31 == a1 && v33 == a2)
  {

LABEL_28:
    v17 = &type metadata for FinHealthTransactionEntityGroupTombstone;
    v18 = &off_283A6EBA8;
    goto LABEL_11;
  }

  v34 = sub_226D6F21C();

  if (v34)
  {
    goto LABEL_28;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

BOOL sub_226B34224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (sub_226D6EDFC())
  {
    return 0;
  }

LABEL_5:
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (sub_226D6EDFC())
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  return *(a3 + 16) == 0;
}

uint64_t sub_226B342A8(uint64_t a1, _BYTE *a2)
{
  v223 = a2;
  *&v234 = a1;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D60, &qword_226D73118);
  MEMORY[0x28223BE20](v214);
  v213 = &v205[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v4 - 8);
  v226 = &v205[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v6 - 8);
  v212 = &v205[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v224 = &v205[-v9];
  MEMORY[0x28223BE20](v10);
  v219 = &v205[-v11];
  MEMORY[0x28223BE20](v12);
  v220 = &v205[-v13];
  MEMORY[0x28223BE20](v14);
  v229 = &v205[-v15];
  v232 = sub_226D6D52C();
  v16 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v211 = &v205[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v210 = &v205[-v19];
  MEMORY[0x28223BE20](v20);
  v217 = &v205[-v21];
  MEMORY[0x28223BE20](v22);
  v218 = &v205[-v23];
  MEMORY[0x28223BE20](v24);
  v216 = &v205[-v25];
  MEMORY[0x28223BE20](v26);
  v225 = &v205[-v27];
  v28 = sub_226D6A34C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v205[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_226D67F1C();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v205[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v249 = MEMORY[0x277D84FA0];
  v248 = MEMORY[0x277D84FA0];
  v36 = type metadata accessor for HistoricalChangesParser(0);
  v37 = *(v33 + 16);
  v215 = v36[7];
  v37(v35, &v2[v215], v32);
  (*(v29 + 16))(v31, &v2[v36[5]], v28);
  v231 = v36;
  v38 = v36[6];
  v237 = v2;
  v39 = *&v2[v38];
  v230 = sub_226B724B0(v35, v31, v39);
  v40 = *(v234 + 16);
  v227 = v16;
  v235 = v39;
  v239 = v40;
  if (v40)
  {
    v41 = 0;
    *&v238 = v234 + 32;
    v221 = (v16 + 48);
    v209 = (v16 + 32);
    v222 = (v16 + 8);
    v208 = (v16 + 16);
    v207 = (v16 + 56);
    v228 = MEMORY[0x277D84F98];
    while (1)
    {
      sub_226AE532C(v238 + 40 * v41, &v245);
      v42 = v246;
      v43 = v247;
      __swift_project_boxed_opaque_existential_1(&v245, v246);
      v44 = (*(v43 + 8))(v42, v43);
      if (!v45)
      {
        goto LABEL_5;
      }

      v46 = v44;
      v47 = v45;
      v48 = v246;
      v49 = v247;
      __swift_project_boxed_opaque_existential_1(&v245, v246);
      v50 = (*(v49 + 32))(v39, v48, v49);
      v35 = v246;
      v51 = v247;
      __swift_project_boxed_opaque_existential_1(&v245, v246);
      v52 = (*(v51 + 16))(v35, v51);
      v53 = v237;
      v54 = v46 == *v237 && v47 == v237[1];
      v55 = v54;
      if (!v52)
      {
        break;
      }

      if (v52 != 1)
      {
        if (!v55)
        {
          v60 = sub_226D6F21C();

          if ((v60 & 1) == 0)
          {
LABEL_28:

            goto LABEL_5;
          }

          goto LABEL_4;
        }

LABEL_3:

        goto LABEL_4;
      }

      if (v55 || (sub_226D6F21C() & 1) != 0 || *(*(v53 + *(v231 + 32)) + 16) && (, sub_226C2FDD4(v46, v47), v35 = v56, , (v35 & 1) != 0))
      {
        sub_226B33F30(v46, v47, &v240);

        if (v241)
        {
          sub_226AC484C(&v240, &v242);
          v57 = v249;
          sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
          if ((v57 & 0xC000000000000001) != 0)
          {
            v35 = v50;
            v58 = sub_226D6EE3C();

            if (v58)
            {
              goto LABEL_22;
            }

LABEL_35:
            LODWORD(v233) = 0;
          }

          else
          {
            if (!*(v57 + 16))
            {
              goto LABEL_35;
            }

            v61 = sub_226D6EC2C();
            v62 = -1 << *(v57 + 32);
            v63 = v61 & ~v62;
            if (((*(v57 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
            {
              goto LABEL_35;
            }

            v64 = ~v62;
            while (1)
            {
              v35 = *(*(v57 + 48) + 8 * v63);
              v65 = sub_226D6EC3C();

              if (v65)
              {
                break;
              }

              v63 = (v63 + 1) & v64;
              if (((*(v57 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
              {
                goto LABEL_35;
              }
            }

LABEL_22:

            LODWORD(v233) = 1;
          }

          v66 = v248;
          if ((v248 & 0xC000000000000001) != 0)
          {
            v67 = v50;
            v68 = sub_226D6EE3C();

            if (v68)
            {
              goto LABEL_38;
            }

LABEL_44:
            if (v233)
            {

              goto LABEL_46;
            }

            v75 = v243;
            v76 = v244;
            __swift_project_boxed_opaque_existential_1(&v242, v243);
            v77 = v246;
            v78 = v247;
            __swift_project_boxed_opaque_existential_1(&v245, v246);
            v79 = (*(v78 + 24))(v77, v78);
            v80 = v236;
            (*(v76 + 8))(v79, v75, v76);
            if (v80)
            {

              __swift_destroy_boxed_opaque_existential_0Tm(&v242);
              return __swift_destroy_boxed_opaque_existential_0Tm(&v245);
            }

            v81 = v244;
            v236 = __swift_project_boxed_opaque_existential_1(&v242, v243);
            v82 = v246;
            v83 = v247;
            __swift_project_boxed_opaque_existential_1(&v245, v246);
            (*(v83 + 24))(v82, v83);
            (*(v81 + 16))();

            v35 = v244;
            v236 = __swift_project_boxed_opaque_existential_1(&v242, v243);
            v84 = v246;
            v85 = v247;
            __swift_project_boxed_opaque_existential_1(&v245, v246);
            (*(v85 + 24))(v84, v85);
            (*(v35 + 24))();
            v236 = 0;

            v86 = v232;
            if (!v230)
            {
              v39 = v235;
              v89 = v224;
              goto LABEL_54;
            }

            v87 = v220;
            sub_226B36DE0(v229, v220);
            v88 = (*v221)(v87, 1, v86);
            v39 = v235;
            v89 = v224;
            if (v88 == 1)
            {

              sub_226AC47B0(v87, &qword_27D7A6D68, &qword_226D75210);
              goto LABEL_60;
            }

            v90 = v216;
            v91 = (*v209)(v216, v87, v86);
            MEMORY[0x28223BE20](v91);
            v92 = v226;
            *&v205[-16] = v90;
            *&v205[-8] = v92;
            v93 = v236;
            sub_226CCB4D4(sub_226B36EA8, &v205[-32], v230);
            v95 = v94;
            v236 = v93;
            v86 = v232;
            (*v222)(v90, v232);
            if (v95)
            {
LABEL_54:
              v96 = v219;
              sub_226B36DE0(v223, v219);
              v97 = *v221;
              if ((*v221)(v96, 1, v86) == 1)
              {
                sub_226AC47B0(v96, &qword_27D7A6D68, &qword_226D75210);
                goto LABEL_65;
              }

              v98 = v96;
              v99 = *v209;
              v100 = v218;
              (*v209)(v218, v98, v86);
              v233 = *v208;
              v233(v89, v100, v86);
              (*v207)(v89, 0, 1, v86);
              v101 = v86;
              v102 = *(v214 + 48);
              v103 = v89;
              v35 = v89;
              v104 = v213;
              sub_226B36DE0(v103, v213);
              sub_226B36DE0(v229, &v104[v102]);
              if (v97(v104, 1, v101) == 1)
              {
                sub_226AC47B0(v35, &qword_27D7A6D68, &qword_226D75210);
                if (v97(&v104[v102], 1, v101) == 1)
                {
                  sub_226AC47B0(v104, &qword_27D7A6D68, &qword_226D75210);
                  v39 = v235;
                  v35 = v222;
                  goto LABEL_70;
                }

LABEL_63:
                sub_226AC47B0(v104, &qword_27D7A6D60, &qword_226D73118);
                v106 = *v222;
                v39 = v235;
                goto LABEL_64;
              }

              v35 = v212;
              sub_226B36DE0(v104, v212);
              if (v97(&v104[v102], 1, v101) == 1)
              {
                sub_226AC47B0(v224, &qword_27D7A6D68, &qword_226D75210);
                (*v222)(v35, v101);
                goto LABEL_63;
              }

              v112 = v217;
              v99(v217, &v104[v102], v101);
              sub_226B36E50();
              v206 = sub_226D6E35C();
              v35 = v222;
              v106 = *v222;
              (*v222)(v112, v101);
              sub_226AC47B0(v224, &qword_27D7A6D68, &qword_226D75210);
              v106(v212, v101);
              sub_226AC47B0(v104, &qword_27D7A6D68, &qword_226D75210);
              v39 = v235;
              if (v206)
              {
LABEL_70:
                v113 = v217;
                v114 = v232;
                v233(v217, v225, v232);
                v115 = v228;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v240 = v115;
                sub_226BE5A6C(v113, v50, isUniquelyReferenced_nonNull_native, v117);

                v118 = *v35;
                (*v35)(v218, v114);
                sub_226AC47B0(v229, &qword_27D7A6D68, &qword_226D75210);
                v118(v225, v114);
LABEL_71:
                v228 = v240;
LABEL_72:
                sub_226AC47B0(v226, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_73:
                __swift_destroy_boxed_opaque_existential_0Tm(&v242);
                goto LABEL_5;
              }

LABEL_64:
              v107 = v232;
              v106(v218, v232);
              v86 = v107;
LABEL_65:
              if (v97(v223, 1, v86) == 1)
              {
                v35 = v217;
                v108 = v225;
                (*v208)(v217, v225, v86);
                v109 = v228;
                v110 = swift_isUniquelyReferenced_nonNull_native();
                *&v240 = v109;
                sub_226BE5A6C(v35, v50, v110, v111);

                sub_226AC47B0(v229, &qword_27D7A6D68, &qword_226D75210);
                (*v222)(v108, v86);
                goto LABEL_71;
              }

              v105 = v229;
            }

            else
            {

LABEL_60:
              v105 = v229;
            }

            sub_226AC47B0(v105, &qword_27D7A6D68, &qword_226D75210);
            (*v222)(v225, v86);
            goto LABEL_72;
          }

          if (!*(v248 + 16))
          {
            goto LABEL_44;
          }

          v70 = sub_226D6EC2C();
          v71 = -1 << *(v66 + 32);
          v72 = v70 & ~v71;
          if (((*(v66 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
          {
            goto LABEL_44;
          }

          v73 = ~v71;
          while (1)
          {
            v35 = *(*(v66 + 48) + 8 * v72);
            v74 = sub_226D6EC3C();

            if (v74)
            {
              break;
            }

            v72 = (v72 + 1) & v73;
            if (((*(v66 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
            {
              goto LABEL_44;
            }
          }

LABEL_38:
          v69 = sub_226D557F0(v50);

LABEL_46:
          v39 = v235;
          goto LABEL_73;
        }

        sub_226AC47B0(&v240, &qword_27D7A6D98, &unk_226D73140);
      }

      else
      {
      }

LABEL_5:
      ++v41;
      __swift_destroy_boxed_opaque_existential_0Tm(&v245);
      if (v41 == v239)
      {
        goto LABEL_76;
      }
    }

    if (v55)
    {
      goto LABEL_3;
    }

    v59 = sub_226D6F21C();

    if ((v59 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_4:
    sub_226C264CC(&v242, v50);

    goto LABEL_5;
  }

  v228 = MEMORY[0x277D84F98];
LABEL_76:

  v120 = v237;
  v121 = *(v237 + *(v231 + 32));
  MEMORY[0x28223BE20](v119);
  *&v205[-16] = v120;
  *&v205[-8] = v121;

  v122 = v236;
  v123 = sub_226B33EB4(MEMORY[0x277D84F98], sub_226B36DA8, &v205[-32], v234);
  v124 = v123;
  v125 = v122;
  v126 = *(v123 + 16);
  v239 = v121;
  if (v126)
  {
    v236 = v122;
    v127 = MEMORY[0x277D84F90];
    v245 = MEMORY[0x277D84F90];
    v128 = v123 + 64;
    v129 = 1 << *(v123 + 32);
    v130 = -1;
    if (v129 < 64)
    {
      v130 = ~(-1 << v129);
    }

    v131 = v130 & *(v123 + 64);
    v132 = (v129 + 63) >> 6;

    v133 = 0;
    v238 = xmmword_226D70840;
    while (v131)
    {
      v134 = v131;
LABEL_87:
      v131 = (v134 - 1) & v134;
      if (*(v121 + 16))
      {
        v136 = __clz(__rbit64(v134)) | (v133 << 6);
        v137 = (*(v124 + 48) + 16 * v136);
        v35 = *(*(v124 + 56) + 8 * v136);
        v138 = *v137;
        v139 = v137[1];

        v140 = sub_226C2FDD4(v138, v139);
        if (v141)
        {
          v233 = *(*(v239 + 56) + 16 * v140);
          v231 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
          v142 = swift_allocObject();
          *(v142 + 16) = v238;
          *(v142 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D70, &qword_226D73128);
          *(v142 + 64) = sub_226AC4194(&qword_27D7A6D78, &qword_27D7A6D70, &qword_226D73128, MEMORY[0x277CC9C78]);
          *(v142 + 32) = v35;

          v233 = sub_226D6E91C();

          MEMORY[0x22AA8A610](v143);
          if (*((v245 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v245 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_226D6E61C();
          }

          sub_226D6E65C();
          v127 = v245;
          v121 = v239;
        }

        else
        {

          v121 = v239;
        }
      }
    }

    v39 = v235;
    while (1)
    {
      v135 = v133 + 1;
      if (__OFADD__(v133, 1))
      {
        __break(1u);
        goto LABEL_146;
      }

      if (v135 >= v132)
      {
        break;
      }

      v134 = *(v128 + 8 * v135);
      ++v133;
      if (v134)
      {
        v133 = v135;
        goto LABEL_87;
      }
    }

    v120 = v237;
    v144 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v145 = sub_226D6E36C();
    v146 = [v144 initWithEntityName_];

    [v146 setResultType_];
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v147 = sub_226D6E5CC();

    v148 = [objc_opt_self() orPredicateWithSubpredicates_];

    [v146 setPredicate_];
    sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    v149 = v236;
    v150 = sub_226D6EBBC();
    v125 = v149;
    if (v149)
    {

      goto LABEL_137;
    }

    v127 = v150;
    if (!(v150 >> 62))
    {
      v151 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v151)
      {
        goto LABEL_98;
      }

LABEL_105:

      goto LABEL_106;
    }

    v151 = sub_226D6EDFC();
    if (!v151)
    {
      goto LABEL_105;
    }

LABEL_98:
    if (v151 >= 1)
    {
      if ((v127 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v151; ++i)
        {
          v153 = MEMORY[0x22AA8AFD0](i, v127);
          sub_226C264CC(&v245, v153);
        }
      }

      else
      {
        v154 = 32;
        do
        {
          sub_226C264CC(&v245, *(v127 + v154));

          v154 += 8;
          --v151;
        }

        while (v151);
      }

      goto LABEL_105;
    }

    __break(1u);
    goto LABEL_155;
  }

LABEL_106:

  sub_226D683BC();
  v155 = [swift_getObjCClassFromMetadata() entityName];
  if (!v155)
  {
    sub_226D6E39C();
    v155 = sub_226D6E36C();
  }

  v156 = [objc_opt_self() entityForName:v155 inManagedObjectContext:v39];

  v157 = *v120;
  v158 = v120[1];
  *&v238 = sub_226D6787C();
  v159 = [swift_getObjCClassFromMetadata() entityName];
  v160 = sub_226D6E39C();
  v162 = v161;

  if (v157 == v160 && v158 == v162)
  {
  }

  else
  {
    v164 = sub_226D6F21C();

    if ((v164 & 1) == 0)
    {

      goto LABEL_151;
    }
  }

  if (!v156)
  {
LABEL_151:

    return v249;
  }

  MEMORY[0x28223BE20](v163);
  *&v205[-16] = v120;
  *&v205[-8] = v156;
  v165 = sub_226B33D70(sub_226B36DC4, &v205[-32], v234);
  v166 = v165;
  if (!(v165 >> 62))
  {
    if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_115;
    }

LABEL_150:

    goto LABEL_151;
  }

  if (!sub_226D6EDFC())
  {
    goto LABEL_150;
  }

LABEL_115:
  v233 = v156;
  v237 = sub_226D6833C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_226D71F40;
  v168 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v169 = swift_allocObject();
  v234 = xmmword_226D70840;
  *(v169 + 16) = xmmword_226D70840;
  *(v169 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D80, &qword_226D73138);
  *(v169 + 64) = sub_226AC4194(&qword_27D7A6D88, &qword_27D7A6D80, &qword_226D73138, MEMORY[0x277CC9C50]);
  *(v169 + 32) = v166;
  *(v167 + 32) = sub_226D6E91C();
  *(v167 + 40) = sub_226D6834C();
  v170 = sub_226D6E5CC();

  v171 = [objc_opt_self() andPredicateWithSubpredicates_];

  v35 = v237;
  [v237 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v172 = swift_allocObject();
  v173 = MEMORY[0x277D837D0];
  *(v172 + 16) = v234;
  *(v172 + 56) = v173;
  *(v172 + 32) = 0x49746E756F636361;
  *(v172 + 40) = 0xE900000000000044;
  v174 = sub_226D6E5CC();

  [v35 setPropertiesToFetch_];

  v175 = sub_226D6EBBC();
  if (v125)
  {
    goto LABEL_136;
  }

  v127 = v175;
  v230 = v168;
  v236 = 0;
  if (!(v175 >> 62))
  {
    v176 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_118;
  }

LABEL_155:
  v176 = sub_226D6EDFC();
LABEL_118:
  v177 = v211;
  v178 = v210;
  if (v176)
  {
    v245 = MEMORY[0x277D84F90];
    sub_226AE20D4(0, v176 & ~(v176 >> 63), 0);
    if (v176 < 0)
    {
      __break(1u);
      goto LABEL_157;
    }

    v179 = v245;
    if ((v127 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v176; ++j)
      {
        MEMORY[0x22AA8AFD0](j, v127);
        v181 = [swift_unknownObjectRetain() accountID];
        sub_226D6D4FC();
        swift_unknownObjectRelease_n();

        v245 = v179;
        v183 = v179[2];
        v182 = v179[3];
        if (v183 >= v182 >> 1)
        {
          sub_226AE20D4((v182 > 1), v183 + 1, 1);
          v179 = v245;
        }

        v179[2] = v183 + 1;
        (*(v227 + 32))(v179 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v183, v178, v232);
      }
    }

    else
    {
      v186 = 32;
      do
      {
        v187 = *(v127 + v186);
        v188 = [v187 accountID];
        sub_226D6D4FC();

        v245 = v179;
        v190 = v179[2];
        v189 = v179[3];
        if (v190 >= v189 >> 1)
        {
          sub_226AE20D4((v189 > 1), v190 + 1, 1);
          v179 = v245;
        }

        v179[2] = v190 + 1;
        (*(v227 + 32))(v179 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v190, v177, v232);
        v186 += 8;
        --v176;
      }

      while (v176);
    }

    v184 = v236;
  }

  else
  {

    v179 = MEMORY[0x277D84F90];
    v184 = v236;
  }

  v35 = sub_226D6786C();
  v191 = swift_allocObject();
  *(v191 + 16) = v234;
  *(v191 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6060, &qword_226D70A78);
  *(v191 + 64) = sub_226AC4194(&qword_27D7A6D90, &qword_27D7A6060, &qword_226D70A78, MEMORY[0x277CC9C50]);
  *(v191 + 32) = v179;
  v192 = sub_226D6E91C();
  [v35 setPredicate_];

  [v35 setReturnsObjectsAsFaults_];
  [v35 setIncludesPropertyValues_];
  v193 = sub_226D6EBBC();
  if (!v184)
  {
    v127 = v193;
    v178 = v237;
    if (!(v193 >> 62))
    {
      v39 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
LABEL_140:
        v245 = MEMORY[0x277D84F90];
        result = sub_226D6EF8C();
        if (v39 < 0)
        {
          __break(1u);
          goto LABEL_173;
        }

        if ((v127 & 0xC000000000000001) != 0)
        {
          v194 = 0;
          do
          {
            v195 = v194 + 1;
            v196 = [MEMORY[0x22AA8AFD0]() objectID];
            swift_unknownObjectRelease();
            sub_226D6EF6C();
            sub_226D6EF9C();
            sub_226D6EFAC();
            sub_226D6EF7C();
            v194 = v195;
          }

          while (v39 != v195);
        }

        else
        {
LABEL_146:
          v197 = 32;
          do
          {
            v198 = [*(v127 + v197) objectID];
            sub_226D6EF6C();
            sub_226D6EF9C();
            sub_226D6EFAC();
            sub_226D6EF7C();
            v197 += 8;
            --v39;
          }

          while (v39);
        }

        v199 = v245;
        v200 = v233;
        v178 = v237;
        goto LABEL_159;
      }

LABEL_158:

      v199 = MEMORY[0x277D84F90];
      v200 = v233;
LABEL_159:
      if (v199 >> 62)
      {
        result = sub_226D6EDFC();
        v201 = result;
        if (result)
        {
LABEL_161:
          if (v201 >= 1)
          {
            if ((v199 & 0xC000000000000001) != 0)
            {
              for (k = 0; k != v201; ++k)
              {
                v203 = MEMORY[0x22AA8AFD0](k, v199);
                sub_226C264CC(&v245, v203);
              }
            }

            else
            {
              v204 = 32;
              do
              {
                sub_226C264CC(&v245, *(v199 + v204));

                v204 += 8;
                --v201;
              }

              while (v201);
            }

            goto LABEL_151;
          }

LABEL_173:
          __break(1u);
          return result;
        }
      }

      else
      {
        v201 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v201)
        {
          goto LABEL_161;
        }
      }

      goto LABEL_151;
    }

LABEL_157:
    v39 = sub_226D6EDFC();
    if (v39)
    {
      goto LABEL_140;
    }

    goto LABEL_158;
  }

LABEL_136:
LABEL_137:
}

void sub_226B36448(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v11 = v10;
  v13 = v6[3];
  v12 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v13);
  v14 = type metadata accessor for HistoricalChangesParser(0);
  v15 = (*(v12 + 32))(*(a3 + *(v14 + 24)), v13, v12);
  v16 = v6[3];
  v17 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v16);
  if ((*(v17 + 16))(v16, v17) != 2)
  {

    return;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  if (!*(a4 + 16) || (sub_226C2FDD4(v9, v11), (v18 & 1) == 0))
  {

LABEL_12:

    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *a1;
  v29 = v20;
  v22 = sub_226C2FDD4(v9, v11);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(v6) = v21;
  if (v20[3] >= v25)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a1 = v20;
      if (v21)
      {
        goto LABEL_15;
      }

LABEL_18:
      sub_226C363E8(v22, v9, v11, MEMORY[0x277D84FA0], v20);
      goto LABEL_19;
    }

LABEL_17:
    sub_226C38928();
    v20 = v29;
    *a1 = v29;
    if (v6)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  sub_226C32998(v25, isUniquelyReferenced_nonNull_native);
  v20 = v29;
  v26 = sub_226C2FDD4(v9, v11);
  if ((v6 & 1) == (v27 & 1))
  {
    v22 = v26;
    *a1 = v29;
    if ((v6 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_15:

LABEL_19:
    sub_226C264CC(&v29, v15);

    return;
  }

  sub_226D6F25C();
  __break(1u);
}

void sub_226B366A0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  if ((*(v9 + 16))(v8, v9))
  {
LABEL_2:
    v10 = 0;
    goto LABEL_3;
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 8))(v11, v12);
  v10 = v13;
  if (v13)
  {
    v14 = objc_opt_self();
    v15 = sub_226D6E36C();

    v16 = *(a2 + *(type metadata accessor for HistoricalChangesParser(0) + 24));
    v10 = [v14 entityForName:v15 inManagedObjectContext:v16];

    if (v10)
    {
      sub_226AE59B4(0, &qword_28105F448, 0x277CBE408);
      v17 = v10;
      v18 = a3;
      v19 = sub_226D6EC3C();

      if (v19)
      {
        v20 = a1[3];
        v21 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v20);
        v10 = (*(v21 + 32))(v16, v20, v21);

        goto LABEL_3;
      }

      goto LABEL_2;
    }
  }

LABEL_3:
  *a4 = v10;
}

uint64_t sub_226B3685C()
{
  v1 = [v0 changeType];
  if (v1 < 3)
  {
    return 0x10200u >> (8 * v1);
  }

  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000014, 0x8000000226D7FAC0);
  [v0 changeType];
  type metadata accessor for NSPersistentHistoryChangeType(0);
  sub_226D6EFBC();
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226B36960()
{
  v1 = [*v0 changedObjectID];
  v2 = [v1 entity];

  v3 = [v2 name];
  if (!v3)
  {
    return 0;
  }

  v4 = sub_226D6E39C();

  return v4;
}

uint64_t sub_226B36A2C()
{
  v1 = [*v0 tombstone];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_226D6E2BC();

  return v3;
}

id sub_226B36A9C()
{
  v1 = [*v0 changedObjectID];

  return v1;
}

id sub_226B36AD4(void *a1)
{
  v2 = v1;
  v4 = sub_226D6D1AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 persistentStoreCoordinator];
  if (v9)
  {
    v10 = v9;
    v11 = [v2 objectIDURL];
    sub_226D6D14C();

    v12 = sub_226D6D0DC();
    (*(v5 + 8))(v8, v4);
    v13 = [v10 managedObjectIDForURIRepresentation_];

    if (v13)
    {
      return v13;
    }
  }

  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_226D6EEFC();

  v15 = [v2 description];
  v16 = sub_226D6E39C();
  v18 = v17;

  MEMORY[0x22AA8A510](v16, v18);

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226B36CD8()
{
  v1 = [*v0 entityClassName];
  v2 = sub_226D6E39C();

  return v2;
}

uint64_t type metadata accessor for HistoricalChangesParser(uint64_t a1)
{
  result = qword_27D7A6DA8;
  if (!qword_27D7A6DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B36DE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_226B36E50()
{
  result = qword_27D7A6DA0;
  if (!qword_27D7A6DA0)
  {
    sub_226D6D52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6DA0);
  }

  return result;
}

void sub_226B36EF0(uint64_t a1)
{
  sub_226D6A34C();
  if (v1 <= 0x3F)
  {
    sub_226AE59B4(319, &qword_27D7A64D8, 0x277CBE440);
    if (v2 <= 0x3F)
    {
      sub_226D67F1C();
      if (v3 <= 0x3F)
      {
        sub_226B36FC4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_226B36FC4()
{
  if (!qword_27D7A6DB8)
  {
    v0 = sub_226D6E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A6DB8);
    }
  }
}

void sub_226B37020(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a3;
  v9 = _s8MetadataV15CloudItemStatusOMa_0(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s8MetadataV9CloudItemVMa_0(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v52;
  sub_226B37494(a1, a2, a4, a5);
  if (!v16)
  {
    v46 = 0;
    v50 = v11;
    v51 = v12;
    v17 = v49[2];
    if (v17)
    {
      v18 = a5;
      v19 = (v13 + 48);
      v47 = v15;
      v48 = (v13 + 56);
      v20 = v49 + 7;
      v45 = (v13 + 48);
      do
      {
        v27 = *(v20 - 2);
        if (v27 >= 2)
        {
          if (*(v20 - 8))
          {
            if (*(v20 - 8) == 1)
            {
              v28 = *(_s8MetadataVMa_0(0) + 28);
              sub_226B3E154(v18 + v28, _s8MetadataV15LocalItemStatusOMa_0);
              v29 = _s8MetadataV9LocalItemVMa_0(0);
              (*(*(v29 - 8) + 56))(v18 + v28, 1, 2, v29);
            }
          }

          else
          {
            v52 = *(v20 - 3);
            v21 = *v20;
            v22 = *(_s8MetadataVMa_0(0) + 24);
            v23 = v18;
            v24 = v18 + v22;
            v25 = v50;
            sub_226B3E0EC(v24, v50, _s8MetadataV15CloudItemStatusOMa_0);
            v26 = v51;
            if ((*v19)(v25, 2, v51))
            {
              sub_226B3E154(v25, _s8MetadataV15CloudItemStatusOMa_0);
            }

            else
            {
              v30 = v47;
              sub_226B3E1DC(v25, v47, _s8MetadataV9CloudItemVMa_0);
              v31 = v30 + *(v26 + 20);
              v32 = *(v31 + *(_s8MetadataV9CloudItemV6ObjectVMa_0(0) + 28));
              sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
              sub_226B3E1B4(v52, v27);
              v33 = v21;
              v34 = v32;
              v35 = v33;
              v36 = v34;
              LOBYTE(v31) = sub_226D6EC3C();

              if ((v31 & 1) == 0)
              {
                v49 = v35;
                v37 = v52;
                v18 = v23;
                if (qword_28105F620 != -1)
                {
                  swift_once();
                }

                v38 = sub_226D6E07C();
                __swift_project_value_buffer(v38, qword_28105F628);
                v39 = sub_226D6E05C();
                v40 = sub_226D6E9AC();
                v41 = os_log_type_enabled(v39, v40);
                v19 = v45;
                v42 = v37;
                if (v41)
                {
                  v43 = swift_slowAlloc();
                  *v43 = 0;
                  _os_log_impl(&dword_226AB4000, v39, v40, "Deleted duplicate cloud consent. Ignoring change.", v43, 2u);
                  MEMORY[0x22AA8BEE0](v43, -1, -1);
                }

                sub_226B3E1C8(v42, v27);
                sub_226B3E154(v47, _s8MetadataV9CloudItemVMa_0);
                goto LABEL_7;
              }

              sub_226B3E1C8(v52, v27);

              sub_226B3E154(v30, _s8MetadataV9CloudItemVMa_0);
              v26 = v51;
              v19 = v45;
            }

            v18 = v23;
            sub_226B3E154(v23 + v22, _s8MetadataV15CloudItemStatusOMa_0);
            (*v48)(v23 + v22, 1, 2, v26);
          }
        }

LABEL_7:
        v20 += 4;
        --v17;
      }

      while (v17);
    }
  }
}

void sub_226B37494(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a3;
  v110 = a4;
  v6 = _s8MetadataV9CloudItemVMa_0(0);
  v7 = *(v6 - 8);
  v107 = v6;
  v108 = v7;
  MEMORY[0x28223BE20](v6);
  v106 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v116 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v105 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v117 = (&v94 - v12);
  MEMORY[0x28223BE20](v13);
  v112 = &v94 - v14;
  v15 = _s8MetadataV15CloudItemStatusOMa_0(0);
  MEMORY[0x28223BE20](v15 - 8);
  v109 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v111 = &v94 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
  MEMORY[0x28223BE20](v19 - 8);
  v114 = &v94 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v21 - 8);
  v113 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v94 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v94 - v27;
  v29 = _s8MetadataV9LocalItemVMa_0(0);
  v115 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = _s8MetadataV15LocalItemStatusOMa_0(0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6794C();
  v35 = v118;
  v36 = sub_226D6788C();
  if (!v35)
  {
    v100 = v25;
    v101 = v31;
    v103 = v28;
    v104 = v29;
    v118 = v36;
    v102 = v34;
    sub_226D6996C();
    v37 = sub_226D6991C();
    v38 = v37;
    v97 = a1;
    v98 = a2;
    v99 = 0;
    if (v118)
    {
      v39 = v118;
      v96 = [v39 objectID];
      v95 = [v39 refreshSequenceNumber];
      v40 = [v39 backgroundRefreshLastConfirmedAt];
      v41 = v116;
      v42 = v104;
      if (v40)
      {
        v43 = v40;
        v44 = v100;
        sub_226D6D45C();

        v45 = sub_226D6D4AC();
        (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
      }

      else
      {
        v49 = sub_226D6D4AC();
        v44 = v100;
        (*(*(v49 - 8) + 56))(v100, 1, 1, v49);
      }

      v48 = v114;
      v50 = v103;
      v51 = v95;
      *v103 = v96;
      *(v50 + 8) = v51;
      v52 = _s8MetadataV9LocalItemV7ConsentVMa(0);
      sub_226AFD80C(v44, v50 + *(v52 + 24), &qword_27D7A8BE0, &unk_226D718F0);

      (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
      if (!v38)
      {
        v62 = _s8MetadataV9LocalItemV14PendingConsentVMa(0);
        (*(*(v62 - 8) + 56))(v48, 1, 1, v62);
        v58 = v101;
LABEL_14:
        sub_226AFD80C(v50, v58, &qword_27D7A6C20, &qword_226D72BF8);
        sub_226AFD80C(v48, v58 + *(v42 + 20), &qword_27D7A6C10, &unk_226D731E0);
        v65 = v102;
        sub_226B3E1DC(v58, v102, _s8MetadataV9LocalItemVMa_0);
        (*(v115 + 56))(v65, 0, 2, v42);
        v46 = v41;
        goto LABEL_15;
      }
    }

    else
    {
      v46 = v116;
      if (!v37)
      {
        v65 = v102;
        (*(v115 + 56))(v102, 2, 2, v104);
LABEL_15:
        v66 = v97;
        v68 = v98;
        v67 = v99;
        v69 = sub_226B39880(v97, v98, v119);
        if (v67)
        {
          sub_226B3E154(v65, _s8MetadataV15LocalItemStatusOMa_0);

          return;
        }

        v116 = v38;
        v99 = 0;
        v70 = v69[2];
        if (v70)
        {
          v71 = (*(v46 + 80) + 32) & ~*(v46 + 80);
          v72 = v69;
          v73 = v112;
          sub_226B3E0EC(v69 + v71, v112, _s8MetadataV9CloudItemV6ObjectVMa_0);
          sub_226B3876C(v72, v72 + v71, 1, (2 * v70) | 1, &qword_27D7A6070, &qword_226D70A88, _s8MetadataV9CloudItemV6ObjectVMa_0);
          v75 = v74;

          sub_226B3E0EC(v73, v117, _s8MetadataV9CloudItemV6ObjectVMa_0);
          v76 = *(v75 + 16);
          v77 = v105;
          if (v76)
          {
            v78 = v75 + v71;
            v79 = v46[9];
            do
            {
              sub_226B3E0EC(v78, v77, _s8MetadataV9CloudItemV6ObjectVMa_0);
              v80 = v117;
              if (*v117 >= *v77)
              {
                sub_226B3E154(v77, _s8MetadataV9CloudItemV6ObjectVMa_0);
              }

              else
              {
                sub_226B3E154(v117, _s8MetadataV9CloudItemV6ObjectVMa_0);
                sub_226B3E1DC(v77, v80, _s8MetadataV9CloudItemV6ObjectVMa_0);
              }

              v78 += v79;
              --v76;
            }

            while (v76);
          }

          v81 = v106;
          sub_226B3E1DC(v117, v106, _s8MetadataV9CloudItemV6ObjectVMa_0);
          v82 = v107;
          sub_226B3E1DC(v112, v81 + *(v107 + 20), _s8MetadataV9CloudItemV6ObjectVMa_0);
          *(v81 + *(v82 + 24)) = v75;
          v83 = v81;
          v84 = v111;
          sub_226B3E1DC(v83, v111, _s8MetadataV9CloudItemVMa_0);
          v85 = *(v108 + 56);
          v85(v84, 0, 2, v82);
        }

        else
        {

          v82 = v107;
          v85 = *(v108 + 56);
          v84 = v111;
          v85(v111, 2, 2, v107);
        }

        v86 = v109;
        v85(v109, 2, 2, v82);
        v87 = sub_226B304DC(v84, v86);
        sub_226B3E154(v86, _s8MetadataV15CloudItemStatusOMa_0);
        v88 = v110;
        if (v87)
        {
          v89 = v116;
          if (!v116)
          {
            v93 = v99;
            v91 = sub_226B39F60(v66, v68, v119);

            v99 = v93;
            if (v93)
            {
              sub_226B3E154(v84, _s8MetadataV15CloudItemStatusOMa_0);
              sub_226B3E154(v102, _s8MetadataV15LocalItemStatusOMa_0);
              return;
            }

LABEL_33:
            v92 = _s8MetadataVMa_0(0);
            sub_226B3E1DC(v84, v88 + *(v92 + 24), _s8MetadataV15CloudItemStatusOMa_0);
            sub_226B3E1DC(v102, v88 + *(v92 + 28), _s8MetadataV15LocalItemStatusOMa_0);
            *v88 = v66;
            *(v88 + 8) = v68;
            *(v88 + 16) = v91 & 1;

            return;
          }

          v90 = v118;
        }

        else
        {
          v89 = v118;
          v90 = v116;
        }

        v91 = 1;
        goto LABEL_33;
      }

      v41 = v116;
      v47 = _s8MetadataV9LocalItemV7ConsentVMa(0);
      (*(*(v47 - 8) + 56))(v103, 1, 1, v47);
      v48 = v114;
    }

    v53 = v38;
    v54 = v38;
    v55 = [v54 &selRef_updateBookmark_forSet_error_];
    v56 = [v54 refreshSequenceNumber];
    v57 = [v54 backgroundRefreshLastConfirmedAt];
    v58 = v101;
    if (v57)
    {
      v59 = v113;
      v60 = v57;
      sub_226D6D45C();

      v61 = 0;
    }

    else
    {
      v61 = 1;
      v59 = v113;
    }

    v63 = sub_226D6D4AC();
    (*(*(v63 - 8) + 56))(v59, v61, 1, v63);
    *v48 = v55;
    v48[1] = v56;
    v64 = _s8MetadataV9LocalItemV14PendingConsentVMa(0);
    sub_226AFD80C(v59, v48 + *(v64 + 24), &qword_27D7A8BE0, &unk_226D718F0);

    (*(*(v64 - 8) + 56))(v48, 0, 1, v64);
    v38 = v53;
    v50 = v103;
    v42 = v104;
    goto LABEL_14;
  }
}

uint64_t sub_226B38080@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s9OperationOMa(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226B3E0EC(v2, v6, _s9OperationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_226B3E154(v6, _s9OperationOMa);
        v8 = MEMORY[0x277CC80C0];
      }

      else
      {
        sub_226B3E154(v6, _s9OperationOMa);
        v8 = MEMORY[0x277CC80B8];
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_226B3E154(v6, _s9OperationOMa);
      v8 = MEMORY[0x277CC80E0];
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_226B3E154(v6, _s9OperationOMa);
      v8 = MEMORY[0x277CC80C8];
    }

    else
    {
      sub_226B3E154(v6, _s9OperationOMa);
      v8 = MEMORY[0x277CC80E8];
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_226B3E154(v6, _s9OperationOMa);
      v8 = MEMORY[0x277CC80B0];
    }

    else if (EnumCaseMultiPayload == 6)
    {
      sub_226B3E154(v6, _s9OperationOMa);
      v8 = MEMORY[0x277CC80D8];
    }

    else
    {
      sub_226B3E154(v6, _s9OperationOMa);
      v8 = MEMORY[0x277CC80D0];
    }

LABEL_21:
    v11 = *v8;
    v12 = sub_226D6BC4C();
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  if (EnumCaseMultiPayload == 8)
  {

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v10 = MEMORY[0x277CC80F8];
  }

  else if (EnumCaseMultiPayload == 9)
  {

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v10 = MEMORY[0x277CC8100];
  }

  else
  {

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v10 = MEMORY[0x277CC80F0];
  }

  v14 = *v10;
  v15 = sub_226D6BC4C();
  (*(*(v15 - 8) + 104))(a1, v14, v15);
  v16 = sub_226D6D4AC();
  return (*(*(v16 - 8) + 8))(v6 + v9, v16);
}

uint64_t sub_226B38420@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_226B39004(a2);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void sub_226B38454(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v9 = [a2 changedObjectID];
  v10 = sub_226D6EC3C();

  if (v10)
  {
    v11 = sub_226B38910(a2);
    if (!v14)
    {
      sub_226B3E1B4(v5, v6);
      v14 = v8;
      v11 = v5;
      v12 = v6;
      v13 = v7;
    }

    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
    *(a3 + 24) = v14;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226B38534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_226B39188(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_226B385EC(uint64_t a1, uint64_t a2)
{
  result = sub_226B3E308(&qword_27D7A6DC0, a2, type metadata accessor for ConsentMappingModel, &unk_226D73184);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226B38644(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_226D6EDFC();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_226C40E9C();

    v1 = sub_226C3AA60(&v5, (v3 + 32), v2, v1);
    sub_226AD3C20(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_226B3876C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_226B38910(void *a1)
{
  v2 = [a1 changedObjectID];
  v3 = [v2 entityName];
  v4 = sub_226D6E39C();
  v6 = v5;

  v7 = v4 == 0x746E65736E6F43 && v6 == 0xE700000000000000;
  if (v7 || (sub_226D6F21C() & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v13 = v4 == 0x43676E69646E6550 && v6 == 0xEE00746E65736E6FLL;
    if (v13 || (sub_226D6F21C() & 1) != 0)
    {

      v9 = 0;
      v8 = 1;
    }

    else
    {
      if (v4 == 0x6E6F4364756F6C43 && v6 == 0xEC000000746E6573)
      {
      }

      else
      {
        v23 = sub_226D6F21C();

        if ((v23 & 1) == 0)
        {
          if (qword_28105F620 != -1)
          {
            swift_once();
          }

          v24 = sub_226D6E07C();
          __swift_project_value_buffer(v24, qword_28105F628);
          v25 = sub_226D6E05C();
          v26 = sub_226D6E9CC();
          if (!os_log_type_enabled(v25, v26))
          {
            goto LABEL_55;
          }

          v27 = swift_slowAlloc();
          *v27 = 0;
          v28 = "Change was not for a cloud, local or pending consent";
          goto LABEL_47;
        }
      }

      v8 = 0;
      v9 = 1;
    }
  }

  v10 = [a1 changeType];
  if (v10 < 2)
  {
    v11 = v10;

    sub_226B3E1C8(0, v11);
    return 0;
  }

  if (v10 != 2)
  {
    result = sub_226D6F0AC();
    __break(1u);
    return result;
  }

  if ((v8 & 1) == 0)
  {
    v14 = [a1 tombstone];
    if (v14)
    {
      v15 = v14;
      v16 = sub_226D6E2BC();

      if (v9)
      {
        sub_226D6EE8C();
        if (*(v16 + 16) && (v17 = sub_226C2FE4C(v40), (v18 & 1) != 0))
        {
          sub_226AC4708(*(v16 + 56) + 32 * v17, &v41);
          sub_226AE5030(v40);
          if (swift_dynamicCast())
          {
            v19 = 27491;

            v39 = 0;
LABEL_50:
            if (qword_28105F620 != -1)
            {
              swift_once();
            }

            v32 = sub_226D6E07C();
            __swift_project_value_buffer(v32, qword_28105F628);
            v25 = sub_226D6E05C();
            v33 = sub_226D6E9CC();
            if (!os_log_type_enabled(v25, v33))
            {
              goto LABEL_55;
            }

            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v40[0] = v35;
            *v34 = 136315138;
            v41 = v19;
            v42 = v39;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DE8, &unk_226D731F0);
            v36 = sub_226D6E3FC();
            v38 = sub_226AC4530(v36, v37, v40);

            *(v34 + 4) = v38;
            _os_log_impl(&dword_226AB4000, v25, v33, "Deleted cloud consent has an unsupported ckSchemaVersion (%s, ignoring change.", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v35);
            MEMORY[0x22AA8BEE0](v35, -1, -1);
            v31 = v34;
LABEL_54:
            MEMORY[0x22AA8BEE0](v31, -1, -1);
LABEL_55:

            return 0;
          }
        }

        else
        {

          sub_226AE5030(v40);
        }

        v19 = 0;
        v39 = 1;
        goto LABEL_50;
      }

      sub_226D6EE8C();
      if (*(v16 + 16) && (v20 = sub_226C2FE4C(v40), (v21 & 1) != 0))
      {
        sub_226AC4708(*(v16 + 56) + 32 * v20, &v41);
        sub_226AE5030(v40);

        if (swift_dynamicCast())
        {

          return 0x49746E65736E6F63;
        }
      }

      else
      {

        sub_226AE5030(v40);
      }

      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v30 = sub_226D6E07C();
      __swift_project_value_buffer(v30, qword_28105F628);
      v25 = sub_226D6E05C();
      v26 = sub_226D6E9CC();
      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_55;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "Received delete change but tombstone missing identifier.";
    }

    else
    {
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v29 = sub_226D6E07C();
      __swift_project_value_buffer(v29, qword_28105F628);
      v25 = sub_226D6E05C();
      v26 = sub_226D6E9CC();
      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_55;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "Received delete change but no tombstone.";
    }

LABEL_47:
    _os_log_impl(&dword_226AB4000, v25, v26, v28, v27, 2u);
    v31 = v27;
    goto LABEL_54;
  }

  return 0;
}

uint64_t sub_226B39004(void *a1)
{
  v2 = [a1 changedObjectID];
  v3 = [v2 entity];

  v4 = [v3 name];
  if (!v4)
  {
    return 0;
  }

  v5 = sub_226D6E39C();
  v7 = v6;

  v8 = v5 == 0x746E65736E6F43 && v7 == 0xE700000000000000;
  if (v8 || (sub_226D6F21C() & 1) != 0 || (v5 == 0x6E6F4364756F6C43 ? (v9 = v7 == 0xEC000000746E6573) : (v9 = 0), v9 || (sub_226D6F21C() & 1) != 0 || (v5 == 0x43676E69646E6550 ? (v10 = v7 == 0xEE00746E65736E6FLL) : (v10 = 0), v10)))
  {
  }

  else
  {
    v11 = sub_226D6F21C();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_226B38910(a1);
}

uint64_t sub_226B39188(uint64_t a1, unint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5)
{
  v57 = a4;
  v58 = a1;
  v8 = sub_226D6CBBC();
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v54 - v12;
  v14 = sub_226D6CBCC();
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v19 = v54 - v18;
  if (a2 >= 2)
  {

    return v58;
  }

  v21 = a3;
  v20 = a3 == 0;
  v55 = v17;
  v22 = v16;
  if (v20)
  {
    sub_226D68F0C();
    v25 = sub_226D68EBC();
    if (!v5)
    {
      v26 = v25;
      v27 = [v25 consentID];

      if (v27)
      {
        v28 = sub_226D6E39C();

        return v28;
      }

      return 0;
    }
  }

  else if (v21 == 1)
  {
    sub_226D6794C();
    v23 = sub_226D678FC();
    if (!v5)
    {
      goto LABEL_26;
    }
  }

  else
  {
    sub_226D6996C();
    v23 = sub_226D6993C();
    if (!v5)
    {
LABEL_26:
      v51 = v23;
      v52 = [v23 consentID];

      v53 = sub_226D6E39C();
      return v53;
    }
  }

  v54[1] = 0;
  v61 = v5;
  v29 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v54[0] = v22;
    v30 = *(v22 + 32);
    v31 = v55;
    v30(v55, v19, v14);
    sub_226B3E308(&qword_27D7A6DD8, 255, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_226D6D02C();
    sub_226D6CBAC();
    sub_226B3E308(&qword_27D7A6DE0, 255, MEMORY[0x277CC8608], MEMORY[0x277CC8610]);
    sub_226D6E53C();
    sub_226D6E53C();
    v32 = *(v56 + 8);
    v32(v10, v8);
    v32(v13, v8);
    if (v60 == v59)
    {
      v33 = v31;
      v34 = v54[0];

      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v35 = sub_226D6E07C();
      __swift_project_value_buffer(v35, qword_28105F628);
      v36 = v58;
      sub_226B3E1B4(v58, a2);
      v37 = v57;
      v38 = sub_226D6E05C();
      v39 = sub_226D6E9CC();
      sub_226B3E1C8(v36, a2);

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v41 = v37;
        v42 = v37;
        _os_log_impl(&dword_226AB4000, v38, v39, "Object %@ does not exist. Ignoring.", v40, 0xCu);
        sub_226AC47B0(v41, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v41, -1, -1);
        MEMORY[0x22AA8BEE0](v40, -1, -1);
      }

      (*(v34 + 8))(v33, v14);
      return 0;
    }

    (*(v54[0] + 8))(v31, v14);
  }

  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v43 = sub_226D6E07C();
  __swift_project_value_buffer(v43, qword_28105F628);
  v44 = v5;
  v45 = sub_226D6E05C();
  v46 = sub_226D6E9CC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    v49 = v5;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v47 + 4) = v50;
    *v48 = v50;
    _os_log_impl(&dword_226AB4000, v45, v46, "Error fetching identifier: %@", v47, 0xCu);
    sub_226AC47B0(v48, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v48, -1, -1);
    MEMORY[0x22AA8BEE0](v47, -1, -1);
  }

  else
  {
  }

  return 0;
}

void *sub_226B39880(uint64_t a1, uint64_t a2, void *a3)
{
  v65 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = v52 - v4;
  v5 = sub_226D6D52C();
  v64 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v62 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = v52 - v8;
  v9 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D68F0C();
  v12 = sub_226D68EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_226D71F40;
  *(v13 + 32) = sub_226D68E9C();
  *(v13 + 40) = sub_226D68E8C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v14 = sub_226D6E5CC();

  v15 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v12 setPredicate_];
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_226D71F20;
  v17 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v18 = sub_226D6E36C();
  v19 = [v17 initWithKey:v18 ascending:0];

  *(v16 + 32) = v19;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v20 = sub_226D6E5CC();

  [v12 setSortDescriptors_];

  v21 = v66;
  v22 = sub_226D6EBBC();
  v23 = v21;
  if (v21)
  {

    return v12;
  }

  else
  {
    v56 = v11;
    v57 = v9;
    v53 = v12;
    v24 = v22;
    if (v22 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      v26 = v68;
      if (!i)
      {

        return MEMORY[0x277D84F90];
      }

      v52[1] = v23;
      v69 = MEMORY[0x277D84F90];
      result = sub_226AE2118(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v28 = 0;
      v12 = v69;
      v29 = v24;
      v58 = v24;
      v59 = v24 & 0xC000000000000001;
      v54 = v24 & 0xFFFFFFFFFFFFFF8;
      v55 = i;
      v66 = (v64 + 32);
      v67 = v5;
      v30 = v62;
      while (1)
      {
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v59)
        {
          v32 = MEMORY[0x22AA8AFD0](v28, v29);
        }

        else
        {
          if (v28 >= *(v54 + 16))
          {
            goto LABEL_27;
          }

          v32 = *(v29 + 8 * v28 + 32);
        }

        v33 = v32;
        v34 = [v32 refreshSequenceNumber];
        if (!v34)
        {
          goto LABEL_24;
        }

        v35 = v34;
        v36 = [v33 id];
        if (!v36)
        {

LABEL_24:
          sub_226B3E244();
          swift_allocError();
          *v51 = 2;
          swift_willThrow();

          return v12;
        }

        v37 = v36;
        v64 = v28;
        v65 = v12;
        sub_226D6D4FC();

        v38 = *v66;
        (*v66)(v26, v30, v5);
        v63 = [v33 objectID];
        v39 = [v35 longLongValue];
        v40 = [v33 backgroundRefreshLastConfirmedAt];
        if (v40)
        {
          v41 = v60;
          v42 = v40;
          sub_226D6D45C();

          v43 = 0;
        }

        else
        {
          v43 = 1;
          v41 = v60;
        }

        v44 = sub_226D6D4AC();
        v45 = *(*(v44 - 8) + 56);
        v45(v41, v43, 1, v44);
        v47 = v56;
        v46 = v57;
        v38(v56 + *(v57 + 20), v68, v67);
        v48 = v46;
        v49 = *(v46 + 24);
        v45(v47 + v49, 1, 1, v44);
        *(v47 + *(v48 + 28)) = v63;
        *v47 = v39;
        sub_226B3E298(v41, v47 + v49);
        v12 = v65;
        v69 = v65;
        v24 = v65[2];
        v50 = v65[3];
        v23 = (v24 + 1);
        if (v24 >= v50 >> 1)
        {
          sub_226AE2118((v50 > 1), v24 + 1, 1);
          v12 = v69;
        }

        v12[2] = v23;
        sub_226B3E1DC(v47, v12 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v24, _s8MetadataV9CloudItemV6ObjectVMa_0);
        v28 = v64 + 1;
        v5 = v67;
        v26 = v68;
        v30 = v62;
        v29 = v58;
        if (v31 == v55)
        {

          return v12;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_226B39F60(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B5EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B58C();
  v10 = sub_226D6B5CC();
  (*(v7 + 8))(v9, v6);
  sub_226D6842C();
  v11 = sub_226D683FC();
  if (!v3)
  {
    if (v11)
    {
      if ((v10 & 1) != 0 && (a2 = v11, v12 = [v11 id], v13 = sub_226D6E39C(), v15 = v14, v12, LOBYTE(v12) = MEMORY[0x22AA83210](v13, v15), , v11 = a2, (v12 & 1) == 0))
      {
        if (qword_28105F620 != -1)
        {
          swift_once();
        }

        v22 = sub_226D6E07C();
        __swift_project_value_buffer(v22, qword_28105F628);
        v23 = sub_226D6E05C();
        v24 = sub_226D6E9CC();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_226AB4000, v23, v24, "Force consent syncing override enabled, returning true.", v25, 2u);
          MEMORY[0x22AA8BEE0](v25, -1, -1);
        }

        LOBYTE(a2) = 1;
      }

      else
      {
        v16 = v11;
        LOBYTE(a2) = [v11 consentSyncingEnabled];
      }
    }

    else
    {
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v17 = sub_226D6E07C();
      __swift_project_value_buffer(v17, qword_28105F628);

      v18 = sub_226D6E05C();
      v19 = sub_226D6E9DC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v28 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_226AC4530(a1, a2, &v28);
        _os_log_impl(&dword_226AB4000, v18, v19, "Institution for consentID: %s missing, unable to determine if syncing is enabled. Returning default (false).", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        MEMORY[0x22AA8BEE0](v21, -1, -1);
        MEMORY[0x22AA8BEE0](v20, -1, -1);
      }

      LOBYTE(a2) = 0;
    }
  }

  return a2 & 1;
}

void *sub_226B3A2D8(uint64_t a1)
{
  v2 = _s8MetadataVMa_0(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v391 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v434);
  v436 = &v391 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v429 = &v391 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C10, &unk_226D731E0);
  MEMORY[0x28223BE20](v8 - 8);
  v416 = (&v391 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v444 = &v391 - v11;
  MEMORY[0x28223BE20](v12);
  v431 = &v391 - v13;
  v449 = _s8MetadataV9LocalItemV14PendingConsentVMa(0);
  v443 = *(v449 - 8);
  MEMORY[0x28223BE20](v449);
  v439 = (&v391 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v420 = (&v391 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C20, &qword_226D72BF8);
  MEMORY[0x28223BE20](v17 - 8);
  v426 = (&v391 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v425 = (&v391 - v20);
  MEMORY[0x28223BE20](v21);
  v432 = &v391 - v22;
  MEMORY[0x28223BE20](v23);
  v430 = &v391 - v24;
  v454 = _s8MetadataV9LocalItemV7ConsentVMa(0);
  v452 = *(v454 - 8);
  MEMORY[0x28223BE20](v454);
  v438 = (&v391 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v421 = &v391 - v27;
  v28 = _s8MetadataV9LocalItemVMa_0(0);
  v468 = *(v28 - 8);
  v469 = v28;
  MEMORY[0x28223BE20](v28);
  v465 = &v391 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v448 = &v391 - v31;
  v456 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  MEMORY[0x28223BE20](v456);
  v437 = &v391 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v450 = (&v391 - v34);
  MEMORY[0x28223BE20](v35);
  v422 = &v391 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v37 - 8);
  v413 = &v391 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v435 = &v391 - v40;
  MEMORY[0x28223BE20](v41);
  v433 = &v391 - v42;
  MEMORY[0x28223BE20](v43);
  v441 = (&v391 - v44);
  MEMORY[0x28223BE20](v45);
  v440 = &v391 - v46;
  v453 = sub_226D6D4AC();
  v457 = *(v453 - 8);
  MEMORY[0x28223BE20](v453);
  v405 = &v391 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v406 = &v391 - v49;
  MEMORY[0x28223BE20](v50);
  v408 = &v391 - v51;
  MEMORY[0x28223BE20](v52);
  v409 = &v391 - v53;
  MEMORY[0x28223BE20](v54);
  v400 = &v391 - v55;
  MEMORY[0x28223BE20](v56);
  v399 = &v391 - v57;
  MEMORY[0x28223BE20](v58);
  v407 = &v391 - v59;
  MEMORY[0x28223BE20](v60);
  v402 = &v391 - v61;
  MEMORY[0x28223BE20](v62);
  v403 = &v391 - v63;
  MEMORY[0x28223BE20](v64);
  v417 = &v391 - v65;
  MEMORY[0x28223BE20](v66);
  v442 = &v391 - v67;
  v467 = _s9OperationOMa(0);
  v463 = *(v467 - 8);
  MEMORY[0x28223BE20](v467);
  v447 = &v391 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v428 = (&v391 - v70);
  MEMORY[0x28223BE20](v71);
  v427 = (&v391 - v72);
  MEMORY[0x28223BE20](v73);
  v424 = (&v391 - v74);
  MEMORY[0x28223BE20](v75);
  v415 = (&v391 - v76);
  MEMORY[0x28223BE20](v77);
  v423 = (&v391 - v78);
  MEMORY[0x28223BE20](v79);
  v412 = &v391 - v80;
  MEMORY[0x28223BE20](v81);
  v404 = (&v391 - v82);
  MEMORY[0x28223BE20](v83);
  v397 = (&v391 - v84);
  MEMORY[0x28223BE20](v85);
  v396 = (&v391 - v86);
  MEMORY[0x28223BE20](v87);
  v401 = &v391 - v88;
  MEMORY[0x28223BE20](v89);
  v398 = &v391 - v90;
  MEMORY[0x28223BE20](v91);
  v419 = &v391 - v92;
  MEMORY[0x28223BE20](v93);
  v411 = (&v391 - v94);
  MEMORY[0x28223BE20](v95);
  v418 = &v391 - v96;
  MEMORY[0x28223BE20](v97);
  v410 = (&v391 - v98);
  MEMORY[0x28223BE20](v99);
  v414 = &v391 - v100;
  MEMORY[0x28223BE20](v101);
  v103 = (&v391 - v102);
  v104 = _s8MetadataV15LocalItemStatusOMa_0(0);
  MEMORY[0x28223BE20](v104 - 8);
  v446 = &v391 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v106);
  v461 = &v391 - v107;
  MEMORY[0x28223BE20](v108);
  v464 = &v391 - v109;
  MEMORY[0x28223BE20](v110);
  v451 = &v391 - v111;
  MEMORY[0x28223BE20](v112);
  v114 = &v391 - v113;
  v115 = _s8MetadataV15CloudItemStatusOMa_0(0);
  MEMORY[0x28223BE20](v115 - 8);
  v462 = &v391 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v117);
  v458 = &v391 - v118;
  MEMORY[0x28223BE20](v119);
  v445 = &v391 - v120;
  MEMORY[0x28223BE20](v121);
  v466 = &v391 - v122;
  MEMORY[0x28223BE20](v123);
  v125 = &v391 - v124;
  MEMORY[0x28223BE20](v126);
  v128 = &v391 - v127;
  v129 = _s8MetadataV9CloudItemVMa_0(0);
  v130 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  MEMORY[0x28223BE20](v131);
  MEMORY[0x28223BE20](v132);
  MEMORY[0x28223BE20](v133);
  v138 = (&v391 - v137);
  if (*(a1 + 16) != 1)
  {
    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v140 = sub_226D6E07C();
    __swift_project_value_buffer(v140, qword_28105F628);
    sub_226B3E0EC(a1, v4, _s8MetadataVMa_0);
    v141 = sub_226D6E05C();
    v142 = sub_226D6E9EC();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v473 = v144;
      *v143 = 136315138;
      v145 = *v4;
      v146 = v4[1];

      sub_226B3E154(v4, _s8MetadataVMa_0);
      v147 = sub_226AC4530(v145, v146, &v473);

      *(v143 + 4) = v147;
      _os_log_impl(&dword_226AB4000, v141, v142, "Syncing is disabled for consentID: %s, no operations needed.", v143, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v144);
      MEMORY[0x22AA8BEE0](v144, -1, -1);
      MEMORY[0x22AA8BEE0](v143, -1, -1);
    }

    else
    {

      sub_226B3E154(v4, _s8MetadataVMa_0);
    }

    return MEMORY[0x277D84F90];
  }

  v394 = v136;
  v391 = v135;
  v395 = v134;
  v473 = MEMORY[0x277D84F90];
  v471 = *(v2 + 24);
  sub_226B3E0EC(a1 + v471, v128, _s8MetadataV15CloudItemStatusOMa_0);
  v139 = *(v130 + 48);
  v459 = v129;
  v455 = v130 + 48;
  v470 = v139;
  if (v139(v128, 2, v129))
  {
    sub_226B3E154(v128, _s8MetadataV15CloudItemStatusOMa_0);
    v460 = MEMORY[0x277D84F90];
LABEL_28:
    v173 = v465;
    v174 = v459;
    goto LABEL_29;
  }

  sub_226B3E1DC(v128, v138, _s8MetadataV9CloudItemVMa_0);
  v393 = v2;
  v149 = *(v2 + 28);
  (*(v468 + 56))(v114, 1, 2, v469);
  v392 = a1;
  LOBYTE(v149) = sub_226B2FBE8(a1 + v149, v114);
  sub_226B3E154(v114, _s8MetadataV15LocalItemStatusOMa_0);
  if (v149)
  {
    sub_226B3E154(v138, _s8MetadataV9CloudItemVMa_0);
    v460 = MEMORY[0x277D84F90];
LABEL_27:
    a1 = v392;
    v2 = v393;
    goto LABEL_28;
  }

  v150 = (v138 + *(v459 + 20));
  v151 = v457;
  if (*v150 >= *v138)
  {
    v460 = MEMORY[0x277D84F90];
    v163 = v453;
    v161 = v442;
  }

  else
  {
    v152 = *(v456 + 28);
    v153 = *(v150 + v152);
    v154 = *(v138 + v152);
    *v103 = v153;
    v103[1] = v154;
    swift_storeEnumTagMultiPayload();
    v155 = v153;
    v156 = v154;
    v157 = sub_226BBB6A8(0, 1, 1, MEMORY[0x277D84F90]);
    v159 = v157[2];
    v158 = v157[3];
    v460 = v157;
    v160 = v463;
    v161 = v442;
    if (v159 >= v158 >> 1)
    {
      v460 = sub_226BBB6A8((v158 > 1), v159 + 1, 1, v460);
    }

    v162 = v460;
    v460[2] = v159 + 1;
    sub_226B3E1DC(v103, v162 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v159, _s9OperationOMa);
    v473 = v162;
    v163 = v453;
  }

  v164 = v440;
  sub_226B2A968(v440);
  v165 = *(v151 + 48);
  v166 = v165(v164, 1, v163);
  v167 = v441;
  if (v166 == 1)
  {
    sub_226B3E154(v138, _s8MetadataV9CloudItemVMa_0);
    sub_226AC47B0(v164, &qword_27D7A8BE0, &unk_226D718F0);
    goto LABEL_27;
  }

  v442 = *(v151 + 32);
  (v442)(v161, v164, v163);
  v168 = v150;
  v169 = v422;
  sub_226B3E0EC(v168, v422, _s8MetadataV9CloudItemV6ObjectVMa_0);
  sub_226AC40E8(v169 + *(v456 + 24), v167, &qword_27D7A8BE0, &unk_226D718F0);
  if (v165(v167, 1, v163) == 1)
  {
    sub_226B3E154(v169, _s8MetadataV9CloudItemV6ObjectVMa_0);
    (*(v151 + 8))(v161, v163);
    sub_226B3E154(v138, _s8MetadataV9CloudItemVMa_0);
    sub_226AC47B0(v167, &qword_27D7A8BE0, &unk_226D718F0);
    goto LABEL_27;
  }

  v170 = v417;
  (v442)(v417, v167, v163);
  v171 = sub_226D6D40C();
  v172 = v161;
  v2 = v393;
  v173 = v465;
  v174 = v459;
  if (v171)
  {
    v175 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v176 = *(v169 + *(v456 + 28));
    v177 = v414;
    *v414 = v176;
    (*(v457 + 16))(&v177[v175], v172, v163);
    swift_storeEnumTagMultiPayload();
    v178 = v176;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v460 = sub_226BBB6A8(0, v460[2] + 1, 1, v460);
    }

    v179 = v463;
    v181 = v460[2];
    v180 = v460[3];
    if (v181 >= v180 >> 1)
    {
      v460 = sub_226BBB6A8((v180 > 1), v181 + 1, 1, v460);
    }

    v182 = *(v457 + 8);
    v182(v417, v163);
    sub_226B3E154(v422, _s8MetadataV9CloudItemV6ObjectVMa_0);
    v182(v172, v163);
    sub_226B3E154(v138, _s8MetadataV9CloudItemVMa_0);
    v183 = v460;
    v460[2] = v181 + 1;
    sub_226B3E1DC(v414, v183 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v181, _s9OperationOMa);
    v473 = v183;
    goto LABEL_27;
  }

  v210 = v170;
  v211 = v163;
  v212 = *(v457 + 8);
  v212(v210, v211);
  sub_226B3E154(v169, _s8MetadataV9CloudItemV6ObjectVMa_0);
  v212(v172, v211);
  sub_226B3E154(v138, _s8MetadataV9CloudItemVMa_0);
  a1 = v392;
LABEL_29:
  sub_226B3E0EC(a1 + v471, v125, _s8MetadataV15CloudItemStatusOMa_0);
  v184 = v470(v125, 2, v174);
  v185 = v468;
  v186 = v464;
  v187 = v466;
  if (v184)
  {
    sub_226B3E154(v125, _s8MetadataV15CloudItemStatusOMa_0);
    v188 = v469;
    goto LABEL_98;
  }

  v189 = v2;
  v190 = v468;
  v191 = v173;
  v192 = v394;
  sub_226B3E1DC(v125, v394, _s8MetadataV9CloudItemVMa_0);
  v393 = v189;
  v193 = *(v189 + 28);
  v392 = a1;
  v194 = v451;
  sub_226B3E0EC(a1 + v193, v451, _s8MetadataV15LocalItemStatusOMa_0);
  v195 = v190;
  v196 = v469;
  if ((*(v190 + 48))(v194, 2))
  {
    sub_226B3E154(v192, _s8MetadataV9CloudItemVMa_0);
    sub_226B3E154(v194, _s8MetadataV15LocalItemStatusOMa_0);
    v173 = v191;
    a1 = v392;
    v188 = v196;
    v174 = v459;
    v2 = v393;
    v185 = v195;
    goto LABEL_98;
  }

  v197 = v448;
  sub_226B3E1DC(v194, v448, _s8MetadataV9LocalItemVMa_0);
  v198 = v450;
  sub_226B3E0EC(v192, v450, _s8MetadataV9CloudItemV6ObjectVMa_0);
  v199 = v430;
  sub_226AC40E8(v197, v430, &qword_27D7A6C20, &qword_226D72BF8);
  v200 = *(v452 + 48);
  v201 = v200(v199, 1, v454);
  v441 = v200;
  if (v201 == 1)
  {
    sub_226AC47B0(v199, &qword_27D7A6C20, &qword_226D72BF8);
    v173 = v191;
    v202 = v432;
    v203 = v196;
  }

  else
  {
    v204 = v199;
    v205 = v421;
    sub_226B3E1DC(v204, v421, _s8MetadataV9LocalItemV7ConsentVMa);
    v206 = v205;
    v207 = *(v205 + 8);
    v173 = v191;
    v203 = v196;
    if (*v198 == v207)
    {
      sub_226B3E154(v206, _s8MetadataV9LocalItemV7ConsentVMa);
      v202 = v432;
    }

    else
    {
      if (*v198 < v207)
      {
        v208 = *(v394 + *(v459 + 20) + *(v456 + 28));
        v213 = *v206;
        v214 = v410;
        *v410 = v208;
        *(v214 + 8) = v213;
        swift_storeEnumTagMultiPayload();
        v209 = v208;
      }

      else
      {
        v213 = *(v198 + *(v456 + 28));
        v214 = v410;
        *v410 = v213;
        swift_storeEnumTagMultiPayload();
      }

      v202 = v432;
      v215 = v213;
      sub_226B3E0EC(v214, v418, _s9OperationOMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v460 = sub_226BBB6A8(0, v460[2] + 1, 1, v460);
      }

      v217 = v460[2];
      v216 = v460[3];
      if (v217 >= v216 >> 1)
      {
        v460 = sub_226BBB6A8((v216 > 1), v217 + 1, 1, v460);
      }

      sub_226B3E154(v214, _s9OperationOMa);
      sub_226B3E154(v421, _s8MetadataV9LocalItemV7ConsentVMa);
      v218 = v460;
      v460[2] = v217 + 1;
      sub_226B3E1DC(v418, v218 + ((*(v463 + 80) + 32) & ~*(v463 + 80)) + *(v463 + 72) * v217, _s9OperationOMa);
      v473 = v218;
      v197 = v448;
    }
  }

  v219 = *(v203 + 20);
  v220 = v431;
  sub_226AC40E8(v219 + v197, v431, &qword_27D7A6C10, &unk_226D731E0);
  v221 = v443 + 48;
  v442 = *(v443 + 48);
  v222 = (v442)(v220, 1, v449);
  v223 = v444;
  v451 = v221;
  if (v222 == 1)
  {
    sub_226AC47B0(v220, &qword_27D7A6C10, &unk_226D731E0);
  }

  else
  {
    v224 = v420;
    sub_226B3E1DC(v220, v420, _s8MetadataV9LocalItemV14PendingConsentVMa);
    v225 = v224[1];
    if (*v450 == v225)
    {
      sub_226B3E154(v224, _s8MetadataV9LocalItemV14PendingConsentVMa);
    }

    else
    {
      if (*v450 < v225)
      {
        v226 = *(v394 + *(v459 + 20) + *(v456 + 28));
        v228 = *v224;
        v229 = v411;
        *v411 = v226;
        *(v229 + 8) = v228;
        swift_storeEnumTagMultiPayload();
        v227 = v226;
      }

      else
      {
        v228 = *(v450 + *(v456 + 28));
        v229 = v411;
        *v411 = v228;
        swift_storeEnumTagMultiPayload();
      }

      v230 = v228;
      sub_226B3E0EC(v229, v419, _s9OperationOMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v460 = sub_226BBB6A8(0, v460[2] + 1, 1, v460);
      }

      v232 = v460[2];
      v231 = v460[3];
      if (v232 >= v231 >> 1)
      {
        v460 = sub_226BBB6A8((v231 > 1), v232 + 1, 1, v460);
      }

      sub_226B3E154(v229, _s9OperationOMa);
      sub_226B3E154(v224, _s8MetadataV9LocalItemV14PendingConsentVMa);
      v233 = v460;
      v460[2] = v232 + 1;
      sub_226B3E1DC(v419, v233 + ((*(v463 + 80) + 32) & ~*(v463 + 80)) + *(v463 + 72) * v232, _s9OperationOMa);
      v473 = v233;
      v173 = v465;
      v197 = v448;
    }
  }

  sub_226AC40E8(v197, v202, &qword_27D7A6C20, &qword_226D72BF8);
  v234 = v454;
  if (v441(v202, 1, v454) == 1)
  {
    sub_226AC47B0(v202, &qword_27D7A6C20, &qword_226D72BF8);
    v185 = v468;
    v187 = v466;
    goto LABEL_70;
  }

  v441 = v219;
  v235 = v438;
  sub_226B3E1DC(v202, v438, _s8MetadataV9LocalItemV7ConsentVMa);
  sub_226B3E0EC(v394 + *(v459 + 20), v437, _s8MetadataV9CloudItemV6ObjectVMa_0);
  v236 = *(v234 + 24);
  v237 = v433;
  sub_226B2A968(v433);
  v238 = *(v434 + 48);
  v239 = v429;
  sub_226AC40E8(v235 + v236, v429, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC40E8(v237, v239 + v238, &qword_27D7A8BE0, &unk_226D718F0);
  v240 = v457;
  v241 = *(v457 + 48);
  v242 = v453;
  v243 = v241(v239, 1, v453);
  v244 = v241(v239 + v238, 1, v242);
  if (v243 != 1)
  {
    v245 = *(v240 + 32);
    v246 = v240;
    if (v244 != 1)
    {
      v274 = v403;
      v275 = v429;
      v276 = v453;
      v245(v403, v429, v453);
      v277 = v275 + v238;
      v278 = v402;
      v245(v402, v277, v276);
      sub_226B3E308(&qword_27D7A66D8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v279 = sub_226D6E33C();
      v280 = *(v246 + 16);
      if (v279)
      {
        v281 = v278;
      }

      else
      {
        v281 = v274;
      }

      v282 = v407;
      v280(v407, v281, v276);
      if (sub_226D6D40C())
      {
        v283 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
        v284 = *v438;
        v285 = v398;
        *v398 = *v438;
        v280(&v285[v283], v282, v276);
        swift_storeEnumTagMultiPayload();
        v286 = v284;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v460 = sub_226BBB6A8(0, v460[2] + 1, 1, v460);
        }

        v288 = v460[2];
        v287 = v460[3];
        if (v288 >= v287 >> 1)
        {
          v460 = sub_226BBB6A8((v287 > 1), v288 + 1, 1, v460);
        }

        v289 = v460;
        v460[2] = v288 + 1;
        sub_226B3E1DC(v398, v289 + ((*(v463 + 80) + 32) & ~*(v463 + 80)) + *(v463 + 72) * v288, _s9OperationOMa);
        v473 = v289;
        v173 = v465;
        v197 = v448;
      }

      else
      {
        v173 = v465;
      }

      if ((sub_226D6D40C() & 1) == 0)
      {
        v388 = *(v457 + 8);
        v389 = v282;
        v390 = v453;
        v388(v389, v453);
        v388(v278, v390);
        v388(v274, v390);
        sub_226AC47B0(v433, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226B3E154(v437, _s8MetadataV9CloudItemV6ObjectVMa_0);
        sub_226B3E154(v438, _s8MetadataV9LocalItemV7ConsentVMa);
        v185 = v468;
        v187 = v466;
        v223 = v444;
        goto LABEL_69;
      }

      v378 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
      v379 = *(v437 + *(v456 + 28));
      v380 = v401;
      *v401 = v379;
      v381 = v453;
      v280(&v380[v378], v282, v453);
      swift_storeEnumTagMultiPayload();
      v382 = v379;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v460 = sub_226BBB6A8(0, v460[2] + 1, 1, v460);
      }

      v223 = v444;
      v384 = v460[2];
      v383 = v460[3];
      if (v384 >= v383 >> 1)
      {
        v460 = sub_226BBB6A8((v383 > 1), v384 + 1, 1, v460);
      }

      v385 = *(v457 + 8);
      v385(v407, v381);
      v385(v278, v381);
      v385(v274, v381);
      sub_226AC47B0(v433, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226B3E154(v437, _s8MetadataV9CloudItemV6ObjectVMa_0);
      sub_226B3E154(v438, _s8MetadataV9LocalItemV7ConsentVMa);
      v386 = v460;
      v460[2] = v384 + 1;
      sub_226B3E1DC(v401, v386 + ((*(v463 + 80) + 32) & ~*(v463 + 80)) + *(v463 + 72) * v384, _s9OperationOMa);
      v473 = v386;
      v185 = v468;
      v173 = v465;
      goto LABEL_68;
    }

    v247 = v399;
    v248 = v453;
    v245(v399, v429, v453);
    v249 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v250 = *(v437 + *(v456 + 28));
    v251 = v396;
    *v396 = v250;
    (*(v246 + 16))(v251 + v249, v247, v248);
    swift_storeEnumTagMultiPayload();
    v252 = v250;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v173 = v465;
    v223 = v444;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v460 = sub_226BBB6A8(0, v460[2] + 1, 1, v460);
    }

    v185 = v468;
    v255 = v460[2];
    v254 = v460[3];
    v256 = v255 + 1;
    if (v255 < v254 >> 1)
    {
LABEL_67:
      (*(v457 + 8))(v247, v248);
      sub_226AC47B0(v433, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226B3E154(v437, _s8MetadataV9CloudItemV6ObjectVMa_0);
      sub_226B3E154(v438, _s8MetadataV9LocalItemV7ConsentVMa);
      v257 = v460;
      v460[2] = v256;
      sub_226B3E1DC(v251, v257 + ((*(v463 + 80) + 32) & ~*(v463 + 80)) + *(v463 + 72) * v255, _s9OperationOMa);
      v473 = v257;
LABEL_68:
      v197 = v448;
      v187 = v466;
      goto LABEL_69;
    }

LABEL_81:
    v460 = sub_226BBB6A8((v254 > 1), v256, 1, v460);
    goto LABEL_67;
  }

  v173 = v465;
  v187 = v466;
  v223 = v444;
  if (v244 != 1)
  {
    v270 = v457;
    v247 = v400;
    v248 = v453;
    (*(v457 + 32))(v400, v429 + v238, v453);
    v271 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v272 = *v438;
    v251 = v397;
    *v397 = *v438;
    (*(v270 + 16))(v251 + v271, v247, v248);
    swift_storeEnumTagMultiPayload();
    v273 = v272;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v460 = sub_226BBB6A8(0, v460[2] + 1, 1, v460);
    }

    v255 = v460[2];
    v254 = v460[3];
    v256 = v255 + 1;
    v185 = v468;
    if (v255 < v254 >> 1)
    {
      goto LABEL_67;
    }

    goto LABEL_81;
  }

  sub_226AC47B0(v433, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226B3E154(v437, _s8MetadataV9CloudItemV6ObjectVMa_0);
  sub_226B3E154(v438, _s8MetadataV9LocalItemV7ConsentVMa);
  v185 = v468;
LABEL_69:
  v219 = v441;
LABEL_70:
  sub_226AC40E8(v219 + v197, v223, &qword_27D7A6C10, &unk_226D731E0);
  v258 = v449;
  if ((v442)(v223, 1, v449) == 1)
  {
    sub_226B3E154(v450, _s8MetadataV9CloudItemV6ObjectVMa_0);
    sub_226B3E154(v197, _s8MetadataV9LocalItemVMa_0);
    sub_226B3E154(v394, _s8MetadataV9CloudItemVMa_0);
    sub_226AC47B0(v223, &qword_27D7A6C10, &unk_226D731E0);
    v188 = v469;
    v174 = v459;
    v186 = v464;
    v2 = v393;
LABEL_97:
    a1 = v392;
    goto LABEL_98;
  }

  v259 = v223;
  v260 = v439;
  sub_226B3E1DC(v259, v439, _s8MetadataV9LocalItemV14PendingConsentVMa);
  v261 = *(v258 + 24);
  v262 = v435;
  sub_226B2A968(v435);
  v263 = *(v434 + 48);
  v264 = v260 + v261;
  v265 = v436;
  sub_226AC40E8(v264, v436, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC40E8(v262, v265 + v263, &qword_27D7A8BE0, &unk_226D718F0);
  v266 = *(v457 + 48);
  v267 = v453;
  v268 = v266(v265, 1, v453);
  v174 = v459;
  if (v268 == 1)
  {
    if (v266(v265 + v263, 1, v267) != 1)
    {
      v290 = v457;
      v291 = v265 + v263;
      v292 = v405;
      (*(v457 + 32))(v405, v291, v267);
      v293 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
      v294 = *v439;
      v295 = v412;
      *v412 = *v439;
      (*(v290 + 16))(&v295[v293], v292, v267);
      swift_storeEnumTagMultiPayload();
      v296 = v294;
      v297 = swift_isUniquelyReferenced_nonNull_native();
      v2 = v393;
      if ((v297 & 1) == 0)
      {
        v460 = sub_226BBB6A8(0, v460[2] + 1, 1, v460);
      }

      v299 = v460[2];
      v298 = v460[3];
      if (v299 >= v298 >> 1)
      {
        v460 = sub_226BBB6A8((v298 > 1), v299 + 1, 1, v460);
      }

      (*(v457 + 8))(v292, v267);
      sub_226AC47B0(v435, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226B3E154(v439, _s8MetadataV9LocalItemV14PendingConsentVMa);
      sub_226B3E154(v450, _s8MetadataV9CloudItemV6ObjectVMa_0);
      sub_226B3E154(v448, _s8MetadataV9LocalItemVMa_0);
      sub_226B3E154(v394, _s8MetadataV9CloudItemVMa_0);
      v300 = v460;
      v460[2] = v299 + 1;
      sub_226B3E1DC(v412, v300 + ((*(v463 + 80) + 32) & ~*(v463 + 80)) + *(v463 + 72) * v299, _s9OperationOMa);
      v473 = v300;
      sub_226AC47B0(v436, &qword_27D7A8BE0, &unk_226D718F0);
      v188 = v469;
      v186 = v464;
      v187 = v466;
      goto LABEL_96;
    }

    sub_226AC47B0(v435, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226B3E154(v439, _s8MetadataV9LocalItemV14PendingConsentVMa);
    sub_226B3E154(v450, _s8MetadataV9CloudItemV6ObjectVMa_0);
    sub_226B3E154(v448, _s8MetadataV9LocalItemVMa_0);
    sub_226B3E154(v394, _s8MetadataV9CloudItemVMa_0);
LABEL_77:
    v188 = v469;
    v187 = v466;
    v2 = v393;
    sub_226AC47B0(v436, &qword_27D7A6C30, &unk_226D74330);
    v186 = v464;
LABEL_96:
    v173 = v465;
    goto LABEL_97;
  }

  v269 = v413;
  sub_226AC40E8(v265, v413, &qword_27D7A8BE0, &unk_226D718F0);
  if (v266(v265 + v263, 1, v267) == 1)
  {
    sub_226AC47B0(v435, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226B3E154(v439, _s8MetadataV9LocalItemV14PendingConsentVMa);
    sub_226B3E154(v450, _s8MetadataV9CloudItemV6ObjectVMa_0);
    sub_226B3E154(v448, _s8MetadataV9LocalItemVMa_0);
    sub_226B3E154(v394, _s8MetadataV9CloudItemVMa_0);
    (*(v457 + 8))(v269, v267);
    goto LABEL_77;
  }

  v354 = v457;
  v355 = *(v457 + 32);
  v356 = v269;
  v357 = v409;
  v355(v409, v356, v267);
  v358 = v265 + v263;
  v359 = v408;
  v355(v408, v358, v267);
  sub_226B3E308(&qword_27D7A66D8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v360 = sub_226D6E33C();
  v361 = *(v354 + 16);
  if (v360)
  {
    v362 = v359;
  }

  else
  {
    v362 = v357;
  }

  v363 = v406;
  v468 = *(v354 + 16);
  v361(v406, v362, v267);
  v364 = sub_226D6D40C();
  v188 = v469;
  v2 = v393;
  if (v364)
  {
    v365 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v366 = v267;
    v367 = *v439;
    v368 = v404;
    *v404 = *v439;
    (v468)(v368 + v365, v363, v366);
    swift_storeEnumTagMultiPayload();
    v369 = v367;
    v370 = swift_isUniquelyReferenced_nonNull_native();
    v371 = v363;
    a1 = v392;
    if ((v370 & 1) == 0)
    {
      v460 = sub_226BBB6A8(0, v460[2] + 1, 1, v460);
    }

    v373 = v460[2];
    v372 = v460[3];
    if (v373 >= v372 >> 1)
    {
      v460 = sub_226BBB6A8((v372 > 1), v373 + 1, 1, v460);
    }

    v374 = *(v457 + 8);
    v375 = v371;
    v376 = v453;
    v374(v375, v453);
    v374(v408, v376);
    v374(v409, v376);
    sub_226AC47B0(v435, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226B3E154(v439, _s8MetadataV9LocalItemV14PendingConsentVMa);
    sub_226B3E154(v450, _s8MetadataV9CloudItemV6ObjectVMa_0);
    sub_226B3E154(v448, _s8MetadataV9LocalItemVMa_0);
    sub_226B3E154(v394, _s8MetadataV9CloudItemVMa_0);
    v377 = v460;
    v460[2] = v373 + 1;
    sub_226B3E1DC(v404, v377 + ((*(v463 + 80) + 32) & ~*(v463 + 80)) + *(v463 + 72) * v373, _s9OperationOMa);
    v473 = v377;
    v2 = v393;
  }

  else
  {
    v387 = *(v354 + 8);
    v387(v363, v267);
    v387(v359, v267);
    v387(v357, v267);
    sub_226AC47B0(v435, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226B3E154(v439, _s8MetadataV9LocalItemV14PendingConsentVMa);
    sub_226B3E154(v450, _s8MetadataV9CloudItemV6ObjectVMa_0);
    sub_226B3E154(v448, _s8MetadataV9LocalItemVMa_0);
    sub_226B3E154(v394, _s8MetadataV9CloudItemVMa_0);
    a1 = v392;
  }

  sub_226AC47B0(v436, &qword_27D7A8BE0, &unk_226D718F0);
  v186 = v464;
  v173 = v465;
  v187 = v466;
LABEL_98:
  sub_226B3E0EC(a1 + v471, v187, _s8MetadataV15CloudItemStatusOMa_0);
  if (!v470(v187, 2, v174))
  {
    sub_226B3E154(v187, _s8MetadataV15CloudItemStatusOMa_0);
    goto LABEL_125;
  }

  sub_226B3E0EC(a1 + *(v2 + 28), v186, _s8MetadataV15LocalItemStatusOMa_0);
  if ((*(v185 + 48))(v186, 2, v188))
  {
    sub_226B3E154(v186, _s8MetadataV15LocalItemStatusOMa_0);
    goto LABEL_125;
  }

  sub_226B3E1DC(v186, v173, _s8MetadataV9LocalItemVMa_0);
  v301 = v445;
  sub_226B3E0EC(a1 + v471, v445, _s8MetadataV15CloudItemStatusOMa_0);
  v302 = v470(v301, 2, v174);
  sub_226B3E154(v301, _s8MetadataV15CloudItemStatusOMa_0);
  v303 = (v452 + 48);
  if (v302 == 1)
  {
    v304 = v425;
    sub_226AC40E8(v173, v425, &qword_27D7A6C20, &qword_226D72BF8);
    if ((*v303)(v304, 1, v454) == 1)
    {
      sub_226AC47B0(v304, &qword_27D7A6C20, &qword_226D72BF8);
      v305 = v416;
      sub_226AC40E8(v173 + *(v188 + 20), v416, &qword_27D7A6C10, &unk_226D731E0);
      if ((*(v443 + 48))(v305, 1, v449) == 1)
      {
        sub_226B3E154(v173, _s8MetadataV9LocalItemVMa_0);
        v306 = &qword_27D7A6C10;
        v307 = &unk_226D731E0;
        v308 = v305;
LABEL_108:
        sub_226AC47B0(v308, v306, v307);
        goto LABEL_125;
      }

      v325 = *v305;
      sub_226B3E154(v305, _s8MetadataV9LocalItemV14PendingConsentVMa);
      *v415 = v325;
      swift_storeEnumTagMultiPayload();
      v326 = v325;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v460 = sub_226BBB6A8(0, v460[2] + 1, 1, v460);
      }

      v328 = v460[2];
      v327 = v460[3];
      if (v328 >= v327 >> 1)
      {
        v460 = sub_226BBB6A8((v327 > 1), v328 + 1, 1, v460);
      }

      sub_226B3E154(v173, _s8MetadataV9LocalItemVMa_0);
      v316 = v460;
      v460[2] = v328 + 1;
      v317 = v316 + ((*(v463 + 80) + 32) & ~*(v463 + 80)) + *(v463 + 72) * v328;
      v318 = &v447;
    }

    else
    {
      v310 = *v304;
      v311 = v304;
      v312 = v310;
      sub_226B3E154(v311, _s8MetadataV9LocalItemV7ConsentVMa);
      *v423 = v312;
      swift_storeEnumTagMultiPayload();
      v313 = v312;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v460 = sub_226BBB6A8(0, v460[2] + 1, 1, v460);
      }

      v315 = v460[2];
      v314 = v460[3];
      if (v315 >= v314 >> 1)
      {
        v460 = sub_226BBB6A8((v314 > 1), v315 + 1, 1, v460);
      }

      sub_226B3E154(v173, _s8MetadataV9LocalItemVMa_0);
      v316 = v460;
      v460[2] = v315 + 1;
      v317 = v316 + ((*(v463 + 80) + 32) & ~*(v463 + 80)) + *(v463 + 72) * v315;
      v318 = &v455;
    }
  }

  else
  {
    v309 = v426;
    sub_226AC40E8(v173, v426, &qword_27D7A6C20, &qword_226D72BF8);
    if ((*v303)(v309, 1, v454) == 1)
    {
      sub_226B3E154(v173, _s8MetadataV9LocalItemVMa_0);
      v306 = &qword_27D7A6C20;
      v307 = &qword_226D72BF8;
      v308 = v309;
      goto LABEL_108;
    }

    v319 = *v309;
    v320 = v309;
    v321 = v319;
    sub_226B3E154(v320, _s8MetadataV9LocalItemV7ConsentVMa);
    *v424 = v321;
    swift_storeEnumTagMultiPayload();
    v322 = v321;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v460 = sub_226BBB6A8(0, v460[2] + 1, 1, v460);
    }

    v324 = v460[2];
    v323 = v460[3];
    if (v324 >= v323 >> 1)
    {
      v460 = sub_226BBB6A8((v323 > 1), v324 + 1, 1, v460);
    }

    sub_226B3E154(v173, _s8MetadataV9LocalItemVMa_0);
    v316 = v460;
    v460[2] = v324 + 1;
    v317 = v316 + ((*(v463 + 80) + 32) & ~*(v463 + 80)) + *(v463 + 72) * v324;
    v318 = &v456;
  }

  sub_226B3E1DC(*(v318 - 32), v317, _s9OperationOMa);
  v473 = v316;
LABEL_125:
  v329 = *(v2 + 28);
  v330 = v461;
  sub_226B3E0EC(a1 + v329, v461, _s8MetadataV15LocalItemStatusOMa_0);
  v331 = *(v185 + 48);
  if (v331(v330, 2, v188))
  {
    v330 = v458;
    sub_226B3E0EC(a1 + v471, v458, _s8MetadataV15CloudItemStatusOMa_0);
    if (!v470(v330, 2, v174))
    {
      v334 = v391;
      sub_226B3E1DC(v330, v391, _s8MetadataV9CloudItemVMa_0);
      v335 = v446;
      sub_226B3E0EC(a1 + v329, v446, _s8MetadataV15LocalItemStatusOMa_0);
      v336 = v331(v335, 2, v188);
      sub_226B3E154(v335, _s8MetadataV15LocalItemStatusOMa_0);
      v337 = *(v334 + *(v174 + 20) + *(v456 + 28));
      if (v336 == 1)
      {
        v338 = v427;
        *v427 = v337;
      }

      else
      {
        v338 = v428;
        *v428 = v337;
      }

      swift_storeEnumTagMultiPayload();
      v339 = v337;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_134;
      }

      goto LABEL_174;
    }

    v332 = _s8MetadataV15CloudItemStatusOMa_0;
  }

  else
  {
    v332 = _s8MetadataV15LocalItemStatusOMa_0;
  }

  sub_226B3E154(v330, v332);
  v333 = v462;
  while (1)
  {
    sub_226B3E0EC(a1 + v471, v333, _s8MetadataV15CloudItemStatusOMa_0);
    if (v470(v333, 2, v174))
    {
      v344 = _s8MetadataV15CloudItemStatusOMa_0;
      v345 = v333;
      goto LABEL_172;
    }

    sub_226B3E1DC(v333, v395, _s8MetadataV9CloudItemVMa_0);
    v346 = sub_226B2A7EC();
    v347 = v346;
    if (v346 >> 62)
    {
      v338 = sub_226D6EDFC();
      a1 = v463;
      if (!v338)
      {
LABEL_170:

        v349 = MEMORY[0x277D84F90];
        goto LABEL_171;
      }
    }

    else
    {
      v338 = *((v346 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a1 = v463;
      if (!v338)
      {
        goto LABEL_170;
      }
    }

    v472 = MEMORY[0x277D84F90];
    sub_226AE215C(0, v338 & ~(v338 >> 63), 0);
    if ((v338 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_174:
    v460 = sub_226BBB6A8(0, v460[2] + 1, 1, v460);
LABEL_134:
    v333 = v462;
    v341 = v460[2];
    v340 = v460[3];
    v342 = v391;
    if (v341 >= v340 >> 1)
    {
      v460 = sub_226BBB6A8((v340 > 1), v341 + 1, 1, v460);
      v342 = v391;
    }

    sub_226B3E154(v342, _s8MetadataV9CloudItemVMa_0);
    v343 = v460;
    v460[2] = v341 + 1;
    sub_226B3E1DC(v338, v343 + ((*(v463 + 80) + 32) & ~*(v463 + 80)) + *(v463 + 72) * v341, _s9OperationOMa);
    v473 = v343;
  }

  v348 = 0;
  v349 = v472;
  v350 = v447;
  do
  {
    if ((v347 & 0xC000000000000001) != 0)
    {
      v351 = MEMORY[0x22AA8AFD0](v348, v347);
    }

    else
    {
      v351 = *(v347 + 8 * v348 + 32);
    }

    *v350 = v351;
    swift_storeEnumTagMultiPayload();
    v472 = v349;
    v353 = *(v349 + 16);
    v352 = *(v349 + 24);
    if (v353 >= v352 >> 1)
    {
      sub_226AE215C((v352 > 1), v353 + 1, 1);
      v350 = v447;
      v349 = v472;
    }

    ++v348;
    *(v349 + 16) = v353 + 1;
    sub_226B3E1DC(v350, v349 + ((*(a1 + 80) + 32) & ~*(a1 + 80)) + *(a1 + 72) * v353, _s9OperationOMa);
  }

  while (v338 != v348);

LABEL_171:
  sub_226CED8D8(v349);
  v344 = _s8MetadataV9CloudItemVMa_0;
  v345 = v395;
LABEL_172:
  sub_226B3E154(v345, v344);
  return v473;
}

void sub_226B3DCDC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_226D6BC4C();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s9OperationOMa(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v12 = sub_226D6E07C();
  v13 = __swift_project_value_buffer(v12, qword_28105F628);
  sub_226B3E0EC(a1, v11, _s9OperationOMa);
  v14 = sub_226D6E05C();
  v15 = sub_226D6E9EC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v35 = a2;
    v19 = v18;
    v39 = v18;
    *v17 = 136315138;
    v20 = sub_226B74384();
    v34[1] = v13;
    v22 = v21;
    sub_226B3E154(v11, _s9OperationOMa);
    v23 = sub_226AC4530(v20, v22, &v39);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_226AB4000, v14, v15, "Performing %s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v24 = v19;
    a2 = v35;
    MEMORY[0x22AA8BEE0](v24, -1, -1);
    v25 = v17;
    v3 = v36;
    MEMORY[0x22AA8BEE0](v25, -1, -1);
  }

  else
  {

    sub_226B3E154(v11, _s9OperationOMa);
  }

  v26 = v3;
  sub_226B74B68(a2);
  if (v3)
  {
    v27 = v3;
    v28 = sub_226D6E05C();
    v29 = sub_226D6E9DC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v26;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_226AB4000, v28, v29, "Error performing operation: %@.", v30, 0xCu);
      sub_226AC47B0(v31, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v31, -1, -1);
      MEMORY[0x22AA8BEE0](v30, -1, -1);
    }

    sub_226D6BD1C();
    swift_allocObject();
    sub_226D6BD0C();
    sub_226B38080(v8);
    sub_226D6BC5C();

    (*(v37 + 8))(v8, v38);
    swift_willThrow();
  }
}

uint64_t sub_226B3E0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B3E154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_226B3E1B4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_226B3E1C8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_226B3E1DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_226B3E244()
{
  result = qword_27D7A6DD0;
  if (!qword_27D7A6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6DD0);
  }

  return result;
}

uint64_t sub_226B3E298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B3E308(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t get_enum_tag_for_layout_string_13FinanceDaemon22StoreMappingChangeTypeOySSG(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_226B3E374(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226B3E3BC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_226B3E420()
{
  result = qword_27D7A6DF0;
  if (!qword_27D7A6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6DF0);
  }

  return result;
}

uint64_t sub_226B3E484@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v4 = v2;
  v7 = sub_226D6862C();
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6A12C();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v68 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BankConnectTransactionsBAASigner(0);
  v12 = (v2 + *(v11 + 20));
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  result = sub_226D6A0EC();
  if ((result & 1) == 0)
  {
    v16 = sub_226D6E05C();
    v17 = sub_226D6E9CC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_226AB4000, v16, v17, "BAA identity is not supported!", v18, 2u);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
    }

    sub_226B3EBC0();
    swift_allocError();
    *v19 = 1;
    return swift_willThrow();
  }

  v14 = *(v2 + *(v11 + 24));
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v14)
    {
      v15 = sub_226D6E63C();
      *(v15 + 16) = v14;
      bzero((v15 + 32), v14);
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      v14 = *(MEMORY[0x277D84F90] + 16);
    }

    v20 = SecRandomCopyBytes(*MEMORY[0x277CDC540], v14, (v15 + 32));
    if (v20)
    {
      v21 = v20;

      v22 = sub_226D6E05C();
      v23 = sub_226D6E9CC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 67109120;
        *(v24 + 4) = v21;
        _os_log_impl(&dword_226AB4000, v22, v23, "Failed to generate random data: %d", v24, 8u);
        MEMORY[0x22AA8BEE0](v24, -1, -1);
      }

      sub_226B3EBC0();
      swift_allocError();
      *v25 = 0;
      return swift_willThrow();
    }

    v63 = a1;

    v27 = sub_226B3F994(v26);
    v29 = v28;

    v62 = sub_226D6D20C();
    v31 = v30;
    MEMORY[0x28223BE20](v62);
    *(&v53 - 4) = v4;
    *(&v53 - 3) = v27;
    *(&v53 - 2) = v29;
    sub_226B3F1B0(0, 0xC000000000000000, sub_226B3FA44, a2, v67);
    if (v3)
    {

      sub_226B11B98(v27, v29);
    }

    else
    {
      v58 = v31;
      v60 = v27;
      v61 = v29;
      v32 = v67[0];
      v33 = v67[1];
      v56 = sub_226D6D20C();
      v57 = v34;
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v59 = v32;
      v35 = v33;
      sub_226D6A0FC();
      v36 = sub_226D6A10C();
      v37 = *(v36 + 16);
      v38 = v61;
      if (v37)
      {
        v54 = v35;
        v55 = 0;
        v67[0] = MEMORY[0x277D84F90];
        sub_226AE1D68(0, v37, 0);
        v39 = v67[0];
        v53 = v36;
        v40 = (v36 + 40);
        do
        {
          v41 = *(v40 - 1);
          v42 = *v40;
          sub_226B11B44(v41, *v40);
          v43 = sub_226D6D20C();
          v45 = v44;
          sub_226B11B98(v41, v42);
          v67[0] = v39;
          v47 = *(v39 + 16);
          v46 = *(v39 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_226AE1D68((v46 > 1), v47 + 1, 1);
            v39 = v67[0];
          }

          v40 += 2;
          *(v39 + 16) = v47 + 1;
          v48 = v39 + 16 * v47;
          *(v48 + 32) = v43;
          *(v48 + 40) = v45;
          --v37;
        }

        while (v37);

        v38 = v61;
        v35 = v54;
      }

      else
      {
      }

      v49 = v68;
      v50 = sub_226D6A11C();
      v52 = v51;
      sub_226D6D20C();
      sub_226B11B98(v50, v52);
      sub_226D6861C();
      sub_226D6892C();
      sub_226B11B98(v60, v38);
      sub_226B11B98(v59, v35);
      return (*(v65 + 8))(v49, v66);
    }
  }

  return result;
}

uint64_t type metadata accessor for BankConnectTransactionsBAASigner(uint64_t a1)
{
  result = qword_27D7A6E20;
  if (!qword_27D7A6E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_226B3EBC0()
{
  result = qword_27D7A6DF8;
  if (!qword_27D7A6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6DF8);
  }

  return result;
}

uint64_t sub_226B3EC14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v58 = a5;
  v6 = sub_226D6E29C();
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_226D6E21C();
  v57 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6E3DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v53 = a1[1];
  v54 = v14;
  v15 = sub_226D6880C();
  v17 = v16;
  sub_226D6E3BC();
  v18 = sub_226D6E3AC();
  v20 = v19;
  (*(v11 + 8))(v13, v10);
  if (v20 >> 60 == 15)
  {

    v21 = sub_226D6E05C();
    v22 = sub_226D6E9CC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v59[0] = v24;
      *v23 = 136315138;
      v25 = sub_226AC4530(v15, v17, v59);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_226AB4000, v21, v22, "Failed to calculate hash for %s!", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
      MEMORY[0x22AA8BEE0](v23, -1, -1);
    }

    else
    {
    }

    sub_226B3EBC0();
    swift_allocError();
    *v45 = 2;
    return swift_willThrow();
  }

  else
  {
    v26 = v20;

    v62 = v18;
    v63 = v20;
    v48 = v20;
    v60 = MEMORY[0x277CC9318];
    v61 = MEMORY[0x277CC9300];
    v28 = v50;
    v27 = v51;
    v59[0] = v50;
    v59[1] = v51;
    v29 = __swift_project_boxed_opaque_existential_1(v59, MEMORY[0x277CC9318]);
    v30 = v18;
    v47 = v18;
    v31 = *v29;
    v32 = v29[1];
    sub_226B3FA64(v30, v26);
    sub_226B11B44(v28, v27);
    v33 = v52;
    sub_226B3F350(v31, v32, &v62);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    v34 = v62;
    v35 = v63;
    sub_226B3FA78(&qword_27D7A6E00, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_226D6E20C();
    sub_226B11B44(v34, v35);
    sub_226B3F488(v34, v35, v8);
    v52 = v33;
    sub_226B11B98(v34, v35);
    v36 = v56;
    sub_226D6E1FC();
    sub_226B11B98(v34, v35);
    (v55[1])(v8, v6);
    v37 = v58;
    v38 = v53;
    v39 = v54;
    *v58 = v54;
    v37[1] = v38;
    v40 = v64;
    v60 = v64;
    v61 = sub_226B3FA78(&qword_27D7A6E08, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
    v42 = v57;
    (*(v57 + 16))(boxed_opaque_existential_1, v36, v40);
    v43 = __swift_project_boxed_opaque_existential_1(v59, v60);
    v55 = &v46;
    MEMORY[0x28223BE20](v43);
    *(&v46 - 2) = v37;
    sub_226B11B44(v39, v38);
    sub_226D6CEFC();
    sub_226B3FAEC(v47, v48);
    (*(v42 + 8))(v36, v40);
    return __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }
}

uint64_t sub_226B3F1B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v19 = a2;
  v8 = a2;
  v9 = a1;
  v18 = a1;
  v11 = *(a4 + 16);
  result = sub_226B11B44(a1, a2);
  if (v11)
  {
    v13 = *(sub_226D6882C() - 8);
    v14 = a4 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    while (1)
    {
      a3(&v16, &v18, v14);
      result = sub_226B11B98(v18, v19);
      if (v5)
      {
        break;
      }

      v9 = v16;
      v8 = v17;
      v18 = v16;
      v19 = v17;
      v14 += v15;
      if (!--v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *a5 = v9;
    a5[1] = v8;
  }

  return result;
}

_BYTE *sub_226B3F2BC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_226B3F7DC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_226B3F894(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_226B3F910(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_226B3F350(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_226D6D1DC();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_226B3F748(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_226B3F748(v4, v5);
  }

  return sub_226D6D1DC();
}

uint64_t sub_226B3F488(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_226D6E29C();
      sub_226B3FA78(&qword_27D7A6E00, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_226D6E1EC();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_226B3F668(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_226B3F668(v5, v6);
  }

  sub_226D6E29C();
  sub_226B3FA78(&qword_27D7A6E00, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_226D6E1EC();
}

uint64_t sub_226B3F668(uint64_t a1, uint64_t a2)
{
  result = sub_226D6CDBC();
  if (!result || (result = sub_226D6CDDC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_226D6CDCC();
      sub_226D6E29C();
      sub_226B3FA78(&qword_27D7A6E00, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_226D6E1EC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_226B3F748(uint64_t a1, uint64_t a2)
{
  result = sub_226D6CDBC();
  if (!result || (result = sub_226D6CDDC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_226D6CDCC();
      return sub_226D6D1DC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_226B3F7DC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_226B3F894(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_226D6CDEC();
  swift_allocObject();
  result = sub_226D6CDAC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_226D6D1CC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_226B3F910(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_226D6CDEC();
  swift_allocObject();
  result = sub_226D6CDAC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_226B3F994(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E10, &qword_226D73310);
  v10 = sub_226B3FB00();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_226B3F2BC(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

uint64_t sub_226B3FA64(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_226B11B44(result, a2);
  }

  return result;
}

uint64_t sub_226B3FA78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226B3FAEC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_226B11B98(result, a2);
  }

  return result;
}

unint64_t sub_226B3FB00()
{
  result = qword_27D7A6E18;
  if (!qword_27D7A6E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6E10, &qword_226D73310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6E18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FinanceDaemon38BankConnectTransactionsBAASigningErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226B3FB7C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226B3FBD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_226B3FC28(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_226B3FC80(uint64_t a1)
{
  result = sub_226D6E07C();
  if (v2 <= 0x3F)
  {
    result = sub_226B3FD0C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_226B3FD0C()
{
  result = qword_27D7A6E30;
  if (!qword_27D7A6E30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D7A6E30);
  }

  return result;
}

uint64_t sub_226B3FD70(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_226B3FE5C;

  return v5();
}

uint64_t sub_226B3FE5C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_226B40070;
  }

  else
  {
    v2 = sub_226B3FF70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B3FF70()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
  v1[3] = v2;
  v1[4] = sub_226B401B8(&qword_281062BD8, MEMORY[0x277CC67D0]);
  v1[5] = sub_226B401B8(&qword_281062BE0, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CC67B8], v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226B40070()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
  v2[3] = v3;
  v2[4] = sub_226B401B8(&qword_281062BD8, MEMORY[0x277CC67D0]);
  v2[5] = sub_226B401B8(&qword_281062BE0, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  v5 = v1;
  sub_226D66FBC();
  (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CC67B0], v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_226B401B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6E38, &qword_226D73418);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_226B40210(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for audit_token_t(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226B40298(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 32;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFFC;
  if ((v6 & 0xFFFFFFFC) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_226B4039C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 32;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFE0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFE0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) != 0xFFFFFFE0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_226B40520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_226B40568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226B405B0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_226B40608(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 72) = v7;
  *v7 = v6;
  v7[1] = sub_226B406FC;

  return v9(v6 + 16);
}

uint64_t sub_226B406FC()
{

  return MEMORY[0x2822009F8](sub_226B407F8, 0, 0);
}

uint64_t sub_226B407F8()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_226D6E11C();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_226B40884(uint64_t a1)
{
  v4 = *(sub_226D6E14C() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226AD827C;

  return sub_226B40608(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_226B40988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_226B409C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226B40A00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_226B40A50(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t BankConnectServiceImplementation.loadPaymentInfo(for:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v6 = sub_226D6B9BC();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_226B40B88;

  return sub_226C00808(v7, a1, a2);
}

uint64_t sub_226B40B88()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B40E90, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[8] = v3;
    *v3 = v2;
    v3[1] = sub_226B40CFC;
    v4 = v2[5];

    return BankConnectServiceImplementation.loadPaymentInfo(for:)(v4);
  }
}

uint64_t sub_226B40CFC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_226B40EF4;
  }

  else
  {
    v2 = sub_226B40E10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B40E10()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226B40E90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B40EF4()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t BankConnectServiceImplementation.loadPaymentInfo(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6764C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_226D6D4AC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_226D6B9BC();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B41100, 0, 0);
}

uint64_t sub_226B41100()
{
  v47 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v3 + 16);
  *(v0 + 128) = v7;
  *(v0 + 136) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5, v2);
  sub_226D6D46C();
  __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  v8 = sub_226D676AC();
  *(v0 + 144) = v8;
  v9 = swift_task_alloc();
  v9[2] = v8;
  v9[3] = v1;
  v9[4] = v4;
  sub_226D6EB7C();

  if (*(v0 + 192) == 1)
  {
    if (qword_27D7A5F60 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    v12 = *(v0 + 88);
    v13 = sub_226D6E07C();
    *(v0 + 152) = __swift_project_value_buffer(v13, qword_27D7A7D10);
    v7(v10, v11, v12);
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9AC();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 112);
    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46[0] = v45;
      *v20 = 136315138;
      sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v21 = sub_226D6F1CC();
      v23 = v22;
      v44 = v15;
      v24 = *(v18 + 8);
      v24(v17, v19);
      v25 = sub_226AC4530(v21, v23, v46);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_226AB4000, v14, v44, "Fetching payment information for %s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x22AA8BEE0](v45, -1, -1);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }

    else
    {

      v24 = *(v18 + 8);
      v24(v17, v19);
    }

    *(v0 + 160) = v24;
    v35 = *(v0 + 48);
    v34 = *(v0 + 56);
    v36 = *(v0 + 40);
    v37 = __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
    v46[3] = &type metadata for BankConnectEnvironmentImplementation;
    v46[4] = sub_226B41FC0();
    v46[0] = swift_allocObject();
    sub_226B42014(v37, v46[0] + 16);
    v38 = sub_226D6BB5C();
    swift_allocObject();
    v39 = sub_226D6BB4C();
    *(v0 + 16) = v39;
    *(v0 + 168) = v39;
    (*(v35 + 104))(v34, *MEMORY[0x277CC6D38], v36);
    v40 = swift_task_alloc();
    *(v0 + 176) = v40;
    *v40 = v0;
    v40[1] = sub_226B41618;
    v41 = *(v0 + 120);
    v42 = *(v0 + 56);
    v43 = MEMORY[0x277CC8090];

    return MEMORY[0x28211A560](v41, v42, v38, v43);
  }

  else
  {
    v26 = *(v0 + 120);
    v27 = *(v0 + 96);
    v29 = *(v0 + 80);
    v28 = *(v0 + 88);
    v30 = *(v0 + 64);
    v31 = *(v0 + 72);

    (*(v31 + 8))(v29, v30);
    (*(v27 + 8))(v26, v28);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_226B41618()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);

  if (v0)
  {
    v3 = sub_226B4189C;
  }

  else
  {
    v3 = sub_226B4179C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B4179C()
{
  sub_226B41DF4(*(v0 + 32), *(v0 + 120), *(v0 + 80));
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_226B4189C()
{
  v34 = v0;
  v1 = *(v0 + 184);
  (*(v0 + 128))(*(v0 + 104), *(v0 + 120), *(v0 + 88));
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  if (os_log_type_enabled(v3, v4))
  {
    v31 = *(v0 + 160);
    v32 = *(v0 + 184);
    v5 = *(v0 + 104);
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
    v10 = sub_226D6F1CC();
    v12 = v11;
    v31(v5, v6);
    v13 = sub_226AC4530(v10, v12, &v33);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v32;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_226AB4000, v3, v4, "Failed to fetch payment information for %s with: %@.", v7, 0x16u);
    sub_226B17298(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 160);
    v17 = *(v0 + 104);
    v18 = *(v0 + 88);

    v16(v17, v18);
  }

  v19 = *(v0 + 184);
  v20 = *(v0 + 144);
  v21 = *(v0 + 120);
  v22 = *(v0 + 80);
  v23 = *(v0 + 32);
  v24 = sub_226D6A0DC();
  sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
  swift_allocError();
  *v25 = v19;
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277CC7AB0], v24);
  swift_willThrow();
  sub_226B41DF4(v23, v21, v22);

  v26 = *(v0 + 120);
  v27 = *(v0 + 96);
  v28 = *(v0 + 88);
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  (*(v27 + 8))(v26, v28);

  v29 = *(v0 + 8);

  return v29();
}

void sub_226B41C24(void *a1@<X0>, _BYTE *a4@<X8>)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v17[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v17];

  v9 = v17[0];
  if (v8)
  {
    sub_226D69F0C();
    v10 = v9;
    v11 = sub_226D69D9C();
    if (v4)
    {

LABEL_4:
      *a4 = 1;
      return;
    }

    v13 = v11;
    if (!v11)
    {
      goto LABEL_4;
    }

    if (sub_226D69E9C())
    {
      v14 = sub_226D6D3EC();
      [v13 setLastPaymentInfoRefreshDate_];

      v17[0] = 0;
      if ([a1 save_])
      {
        v15 = v17[0];

        goto LABEL_4;
      }

      v16 = v17[0];
      sub_226D6D04C();

      swift_willThrow();
    }

    else
    {

      *a4 = 0;
    }
  }

  else
  {
    v12 = v17[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226B41DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D46C();
  v8 = __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_226AE532C((v8 + 41), v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v9 = sub_226D6B97C();
  v11 = v10;
  sub_226D6D3BC();
  v13 = v12;
  v16[3] = &_s24InstitutionDurationEventVN;
  v16[4] = sub_226B420B8();
  v14 = swift_allocObject();
  v16[0] = v14;
  v14[2] = 0xD000000000000030;
  v14[3] = 0x8000000226D7FBA0;
  v14[4] = v9;
  v14[5] = v11;
  v14[6] = v13;
  sub_226D69AFC();
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

unint64_t sub_226B41FC0()
{
  result = qword_28105FEF0;
  if (!qword_28105FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105FEF0);
  }

  return result;
}

uint64_t sub_226B42070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226B420B8()
{
  result = qword_27D7A6E48;
  if (!qword_27D7A6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6E48);
  }

  return result;
}

double ManagedOrderDashboardItemUpdater.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void sub_226B42120(void *a1, uint64_t a2)
{
  v29 = a2;
  v27 = sub_226D6D71C();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_226D6D6DC();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_226D6D4AC();
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v25 = a1;
  v16 = [a1 dashboardItem];
  v17 = [a1 orderContent];
  sub_226D6D66C();
  sub_226D6D70C();
  sub_226D6B2DC();

  (*(v3 + 8))(v5, v27);
  (*(v6 + 8))(v8, v26);
  v18 = sub_226D6D3EC();
  [v16 setStoredArchiveDate_];

  v19 = [v25 orderContent];
  v20 = [v19 orderUpdateDate];

  sub_226D6D45C();
  v21 = sub_226D6D3EC();
  v22 = *(v9 + 8);
  v23 = v28;
  v22(v11, v28);
  [v16 setStoredOrderUpdateDate_];

  sub_226D6D46C();
  sub_226D6A71C();
  v22(v11, v23);
  sub_226B42FD0(v16, v29);
  v22(v15, v23);
}

void ManagedOrderDashboardItemUpdater.updateShowsAsActive(context:now:)(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v43 = a2;
  v41 = a3;
  v4 = sub_226D6A6BC();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_226D67F1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67E6C();
  sub_226D67F0C();
  (*(v8 + 8))(v10, v7);
  v11 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v12 = sub_226D6E36C();

  v13 = [v11 initWithBundleIdentifier_];

  v14 = sub_226B42B94();
  v50[4] = MEMORY[0x277CC85E8];
  v50[3] = v14;
  v50[0] = v13;
  sub_226D6A72C();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v15 = sub_226D6A70C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D837D0];
  *(v16 + 16) = xmmword_226D70840;
  *(v16 + 56) = v17;
  strcpy((v16 + 32), "classicOrder");
  *(v16 + 45) = 0;
  *(v16 + 46) = -5120;
  v18 = sub_226D6E5CC();

  [v15 setPropertiesToFetch_];

  v19 = sub_226D6E5CC();
  [v15 setRelationshipKeyPathsForPrefetching_];

  v20 = a1;
  v21 = v61;
  v22 = sub_226D6EBBC();
  if (v21)
  {
    sub_226B42BE0(v50);

    return;
  }

  v23 = v22;
  v24 = v42;
  v49 = 0;
  v47 = v6;
  v48 = v4;
  v40 = v20;
  if (v22 >> 62)
  {
LABEL_29:
    v25 = sub_226D6EDFC();
  }

  else
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v15;
  if (v25)
  {
    v26 = 0;
    v44 = 0;
    v27 = 0;
    v15 = (v23 & 0xC000000000000001);
    v61 = v23 & 0xFFFFFFFFFFFFFF8;
    v46 = (v24 + 11);
    v45 = *MEMORY[0x277CC7C50];
    v39 = *MEMORY[0x277CC7C58];
    v38 = (v24 + 1);
    v42 = v24 + 12;
    while (1)
    {
      if (v15)
      {
        v28 = MEMORY[0x22AA8AFD0](v26, v23);
      }

      else
      {
        if (v26 >= *(v61 + 16))
        {
          goto LABEL_28;
        }

        v28 = *(v23 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v24 = v28;
      if (sub_226D6A71C())
      {
        if ([v29 storedShowsAsActive])
        {
        }

        else
        {
          v31 = v47;
          sub_226D6A6DC();
          v24 = v48;
          v32 = (*v46)(v31, v48);
          if (v32 == v45)
          {
            (*v42)(v31, v24);
            v33 = *v31;
            v24 = v50;
            v34 = v49;
            v35 = sub_226B5AC68(v33, v40);
            v49 = v34;
            if (v34)
            {

              sub_226B42BE0(v50);
              return;
            }

            v44 = v35;
          }

          else
          {
            if (v32 != v39)
            {
              sub_226D6F0AC();
              __break(1u);
              return;
            }

            (*v38)(v31, v24);
          }
        }

        v27 = 1;
      }

      else
      {
      }

      ++v26;
      if (v30 == v25)
      {
        goto LABEL_24;
      }
    }
  }

  v44 = 0;
  v27 = 0;
LABEL_24:

  sub_226B42BE0(v50);
  v36 = v41;
  *v41 = v27 & 1;
  v36[1] = v44 & 1;
}

unint64_t sub_226B42B94()
{
  result = qword_28105F428;
  if (!qword_28105F428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105F428);
  }

  return result;
}

void sub_226B42C34(void *a1, void *a2)
{
  v32 = a2;
  v30 = sub_226D68F4C();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_226D6D4AC();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v29 = &v27 - v9;
  v10 = sub_226D6A6BC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1;
  v16 = [a1 dashboardItem];
  v17 = v16;
  if (!v16)
  {
    v27 = sub_226D6A72C();
    *v14 = v15;
    (*(v11 + 104))(v14, *MEMORY[0x277CC7C50], v10);
    v18 = v15;
    v19 = v32;
    v17 = sub_226D6A6CC();
  }

  v20 = v16;
  v21 = [v15 archiveDate];
  v22 = v29;
  sub_226D6D45C();

  v23 = sub_226D6D3EC();
  [v17 setStoredArchiveDate_];

  sub_226D6749C();
  sub_226D68F2C();
  (*(v28 + 8))(v4, v30);
  v24 = sub_226D6D3EC();
  v25 = *(v5 + 8);
  v26 = v31;
  v25(v7, v31);
  [v17 setStoredOrderUpdateDate_];

  sub_226D6D46C();
  sub_226D6A71C();
  v25(v7, v26);
  sub_226B42FD0(v17, v32);
  v25(v22, v26);
}

uint64_t sub_226B42FD0(void *a1, uint64_t a2)
{
  v35 = a2;
  v38 = sub_226D6CEAC();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6D61C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6D6DC();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D6D4AC();
  v31 = *(v12 - 8);
  v32 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 storedArchiveDate];
  sub_226D6D45C();

  (*(v6 + 104))(v8, *MEMORY[0x277CC9810], v5);
  sub_226D6D62C();
  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E58, &qword_226D73670);
  v17 = sub_226D6D6CC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_226D71840;
  v22 = v21 + v20;
  v23 = *(v18 + 104);
  v23(v22, *MEMORY[0x277CC9988], v17);
  v23(v22 + v19, *MEMORY[0x277CC9998], v17);
  sub_226B1E8E0(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_226D6D65C();

  result = sub_226D6CE2C();
  if (v25)
  {
    goto LABEL_14;
  }

  if (result < -32768)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= 0x8000)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_226D6CE4C();
  if (v26)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (result < -32768)
  {
    goto LABEL_12;
  }

  if (result >= 0x8000)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_226D6B77C();
  v27 = v36;
  v28 = sub_226D6B75C();
  if (!v27)
  {
    v29 = v28;
    sub_226D6B74C();
  }

  (*(v37 + 8))(v4, v38);
  (*(v33 + 8))(v11, v34);
  return (*(v31 + 8))(v15, v32);
}

Swift::Void __swiftcall ManagedOrderDashboardItemUpdater.postProcess(shouldRefreshWalletMessages:)(Swift::Bool shouldRefreshWalletMessages)
{
  v3 = sub_226D6714C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AC40E8(v1, v8, &qword_27D7A6910, &unk_226D721C0);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v4 + 104))(v6, *MEMORY[0x277CC6B48], v3);
    sub_226D680BC();
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    if (!shouldRefreshWalletMessages)
    {
      return;
    }
  }

  else
  {
    sub_226AC47B0(v8, &qword_27D7A6910, &unk_226D721C0);
    if (!shouldRefreshWalletMessages)
    {
      return;
    }
  }

  sub_226AC40E8(v1 + 40, v8, &qword_27D7A6E50, &unk_226D73598);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_226D69A5C();
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    sub_226AC47B0(v8, &qword_27D7A6E50, &unk_226D73598);
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_226B4368C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_226B436E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedOrderDashboardItemUpdater.UpdateResult(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ManagedOrderDashboardItemUpdater.UpdateResult(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_226B438D8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BankConnectPendingConsentProcessingTask(0);
  sub_226AC40E8(v1 + *(v10 + 28), v5, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226AC47B0(v5, &qword_27D7A8BE0, &unk_226D718F0);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = *(v1 + 32);
    v13 = v12 < 1;
    v14 = v12 - 1;
    if (!v13)
    {
      exp2(v14);
    }

    sub_226D6D3DC();
    (*(v7 + 8))(v9, v6);
    v11 = 0;
  }

  return (*(v7 + 56))(a1, v11, 1, v6);
}

unint64_t sub_226B43AEC()
{
  sub_226D6EEFC();

  MEMORY[0x22AA8A510](*v0, v0[1]);
  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD000000000000033;
}

uint64_t sub_226B43B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = sub_226D66DFC();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  type metadata accessor for BankConnectPendingConsentProcessingTask(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B43C44, 0, 0);
}

uint64_t sub_226B43C44()
{
  v22 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[3];
  v4 = sub_226D6E07C();
  v0[10] = __swift_project_value_buffer(v4, qword_28105F710);
  sub_226B4E088(v3, v2, type metadata accessor for BankConnectPendingConsentProcessingTask);
  sub_226B4E088(v3, v1, type metadata accessor for BankConnectPendingConsentProcessingTask);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[8];
  v9 = v0[9];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    v12 = *v9;
    v13 = v9[1];

    sub_226B4E318(v9, type metadata accessor for BankConnectPendingConsentProcessingTask);
    v14 = sub_226AC4530(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = *(v8 + 16);
    v16 = *(v8 + 24);

    sub_226B4E318(v8, type metadata accessor for BankConnectPendingConsentProcessingTask);
    v17 = sub_226AC4530(v15, v16, &v21);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_226AB4000, v5, v6, "Processing pending consent validation task for with consentID: %s for institutionID: %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  else
  {

    sub_226B4E318(v8, type metadata accessor for BankConnectPendingConsentProcessingTask);
    sub_226B4E318(v9, type metadata accessor for BankConnectPendingConsentProcessingTask);
  }

  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  v18[1] = sub_226B43EF8;
  v19 = v0[4];

  return sub_226B44534(v19);
}

uint64_t sub_226B43EF8()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B44220, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226B44060()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226B44488;
  }

  else
  {
    v2 = sub_226B44174;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B44174()
{
  sub_226B4E318(*(v0 + 56), MEMORY[0x277CC6528]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B44220()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 96);
  if (v3)
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);

    sub_226B4E528(v5, v6, MEMORY[0x277CC6528]);
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_226B44060;
    v8 = *(v0 + 56);
    v9 = *(v0 + 32);

    return sub_226B451A4(v8, v9);
  }

  else
  {

    v11 = v4;
    v12 = sub_226D6E05C();
    v13 = sub_226D6E9CC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 96);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v14;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_226AB4000, v12, v13, "Failed to process pending consent with error: %@", v15, 0xCu);
      sub_226AC47B0(v16, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    swift_willThrow();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_226B44488()
{
  sub_226B4E318(*(v0 + 56), MEMORY[0x277CC6528]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B44534(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_226D6B67C();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_226D682FC();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B4465C, 0, 0);
}

uint64_t sub_226B4465C()
{
  __swift_project_boxed_opaque_existential_1(v0[8], *(v0[8] + 24));
  sub_226D6BACC();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_226D6A62C();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_226D6A63C();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F710);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Consent exists in local store, updating if needed.", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_226B44AC4;
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[8];

  return sub_226B45530(v7, v6, v8);
}

uint64_t sub_226B44AC4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_226B44E54;
  }

  else
  {
    v2 = sub_226B44BD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B44BD8()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = *(v0[14] + 8);
  v3(v0[15], v2);
  v3(v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226B44C94()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_226B450F8;
  }

  else
  {
    v2 = sub_226B44DA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B44DA8()
{
  (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B44E54()
{
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  v1 = *(v0 + 144);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 88) + 88))(*(v0 + 96), *(v0 + 80)) == *MEMORY[0x277CC7FC8])
    {

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v3 = sub_226D6E07C();
      __swift_project_value_buffer(v3, qword_28105F710);
      v4 = sub_226D6E05C();
      v5 = sub_226D6E9EC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_226AB4000, v4, v5, "No consent found in local store, attempting to insert.", v6, 2u);
        MEMORY[0x22AA8BEE0](v6, -1, -1);
      }

      v7 = swift_task_alloc();
      *(v0 + 152) = v7;
      *v7 = v0;
      v7[1] = sub_226B44C94;
      v8 = *(v0 + 128);
      v9 = *(v0 + 64);

      return sub_226B45CDC(v8, v9);
    }

    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 80);
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
    (*(v12 + 8))(v11, v13);
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_226B450F8()
{
  (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B451A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_226D66DFC();
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B4523C, 0, 0);
}

uint64_t sub_226B4523C()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F710);
  sub_226B4E088(v2, v1, MEMORY[0x277CC6528]);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (!v6)
  {

    sub_226B4E318(v7, MEMORY[0x277CC6528]);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  *v8 = 138412290;
  sub_226B4E6C8(&qword_27D7A6990, MEMORY[0x277CC6528], MEMORY[0x277CC6530]);
  swift_allocError();
  sub_226B4E088(v7, v10, MEMORY[0x277CC6528]);
  v11 = _swift_stdlib_bridgeErrorToNSError();
  sub_226B4E318(v7, MEMORY[0x277CC6528]);
  *(v8 + 4) = v11;
  *v9 = v11;
  _os_log_impl(&dword_226AB4000, v4, v5, "Failed to process pending consent with error: %@", v8, 0xCu);
  sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v9, -1, -1);
  MEMORY[0x22AA8BEE0](v8, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v12 = *(v0 + 32);
    v13 = *(v0 + 16);
    __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v14 = sub_226D676AC();
    v15 = swift_task_alloc();
    v15[2] = v14;
    v15[3] = v12;
    v15[4] = v13;
    sub_226D6EB7C();
  }

LABEL_8:

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_226B45530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_226D682FC();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B45600, 0, 0);
}

uint64_t sub_226B45600()
{
  v1 = sub_226D682DC();
  if (sub_226D682DC() < v1)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v2 = v0[13];
    v3 = v0[14];
    v4 = v0[11];
    v5 = v0[12];
    v7 = v0[7];
    v6 = v0[8];
    v8 = sub_226D6E07C();
    __swift_project_value_buffer(v8, qword_28105F710);
    v9 = *(v5 + 16);
    v9(v3, v7, v4);
    v9(v2, v6, v4);
    v10 = sub_226D6E05C();
    v11 = sub_226D6E9EC();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[11];
    v16 = v0[12];
    if (v12)
    {
      v17 = swift_slowAlloc();
      *v17 = 134349312;
      v18 = sub_226D682DC();
      v19 = *(v16 + 8);
      v19(v13, v15);
      *(v17 + 4) = v18;
      *(v17 + 12) = 2050;
      v20 = sub_226D682DC();
      v19(v14, v15);
      *(v17 + 14) = v20;
      _os_log_impl(&dword_226AB4000, v10, v11, "Refresh sequence number of the local consent (%{public}lld) is greater than the pending consent (%{public}lld). Aborting\nupdate.", v17, 0x16u);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
    }

    else
    {
      v30 = *(v16 + 8);
      v30(v0[13], v0[11]);
      v30(v13, v15);
    }

    v31 = v0[9];
    v32 = v0[10];

    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    sub_226D6BAAC();
    v33 = sub_226D676AC();

    v34 = swift_task_alloc();
    *(v34 + 16) = v32;
    *(v34 + 24) = v33;
    goto LABEL_28;
  }

  v21 = sub_226D682DC();
  if (v21 != sub_226D682DC())
  {
    goto LABEL_23;
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v22 = sub_226D6E07C();
  __swift_project_value_buffer(v22, qword_28105F710);
  v23 = sub_226D6E05C();
  v24 = sub_226D6E9EC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_226AB4000, v23, v24, "Refresh sequence number of local and pending consents are equal. Deterministically choosing consent by comparing the consentToken's value.", v25, 2u);
    MEMORY[0x22AA8BEE0](v25, -1, -1);
  }

  v26 = sub_226D682AC();
  v28 = v27;
  if (v26 == sub_226D682AC() && v28 == v29)
  {

LABEL_20:
    v42 = sub_226D6E05C();
    v43 = sub_226D6E9EC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_226AB4000, v42, v43, "Pending consent is canonical. Resuming update.", v44, 2u);
      MEMORY[0x22AA8BEE0](v44, -1, -1);
    }

LABEL_23:
    v45 = v0[9];
    __swift_project_boxed_opaque_existential_1(v45, v45[3]);
    sub_226D6BACC();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_226D6A66C();
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v46 = sub_226D6E07C();
    __swift_project_value_buffer(v46, qword_28105F710);
    v47 = sub_226D6E05C();
    v48 = sub_226D6E9EC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_226AB4000, v47, v48, "Successfully updated local consent with values from pending consent.", v49, 2u);
      MEMORY[0x22AA8BEE0](v49, -1, -1);
    }

    v50 = v0[9];
    v51 = v0[10];

    __swift_project_boxed_opaque_existential_1(v50, v45[3]);
    sub_226D6BAAC();
    v33 = sub_226D676AC();

    v52 = swift_task_alloc();
    *(v52 + 16) = v51;
    *(v52 + 24) = v33;
    goto LABEL_28;
  }

  v35 = sub_226D6F21C();

  if ((v35 & 1) == 0)
  {
    goto LABEL_20;
  }

  v36 = sub_226D6E05C();
  v37 = sub_226D6E9EC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_226AB4000, v36, v37, "Local consent is canonical. Aborting update.", v38, 2u);
    MEMORY[0x22AA8BEE0](v38, -1, -1);
  }

  v39 = v0[9];
  v40 = v0[10];

  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  sub_226D6BAAC();
  v33 = sub_226D676AC();

  v41 = swift_task_alloc();
  *(v41 + 16) = v40;
  *(v41 + 24) = v33;
LABEL_28:
  sub_226D6EB7C();

  v53 = v0[1];

  return v53();
}

uint64_t sub_226B45CDC(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_226D68C5C();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = sub_226D6AD3C();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v6 = sub_226D6764C();
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = *(type metadata accessor for BankConnectPendingConsentProcessingTask(0) - 8);
  v3[28] = v7;
  v3[29] = *(v7 + 64);
  v3[30] = swift_task_alloc();
  v8 = sub_226D682FC();
  v3[31] = v8;
  v9 = *(v8 - 8);
  v3[32] = v9;
  v3[33] = *(v9 + 64);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v10 = sub_226D671FC();
  v3[36] = v10;
  v3[37] = *(v10 - 8);
  v3[38] = swift_task_alloc();
  v11 = sub_226D6A30C();
  v3[39] = v11;
  v3[40] = *(v11 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B46004, 0, 0);
}

uint64_t sub_226B46004()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  sub_226D682BC();
  (*(v4 + 104))(v2, *MEMORY[0x277CC7B60], v3);
  sub_226B4E6C8(&qword_27D7A6E78, MEMORY[0x277CC7B70], MEMORY[0x277CC7B78]);
  sub_226D6E53C();
  sub_226D6E53C();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  if (*(v0 + 476) == *(v0 + 478))
  {
    v6 = swift_task_alloc();
    *(v0 + 344) = v6;
    *v6 = v0;
    v6[1] = sub_226B46420;
    v7 = *(v0 + 304);
    v8 = *(v0 + 120);

    return sub_226B49138(v7, v8);
  }

  else
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v10 = sub_226D6E07C();
    __swift_project_value_buffer(v10, qword_28105F710);
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226AB4000, v11, v12, "Consent status is invalid, unable to setup.", v13, 2u);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
    }

    v14 = *(v0 + 120);
    v15 = *(v0 + 128);

    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_226D6BAAC();
    v16 = sub_226D676AC();

    v17 = swift_task_alloc();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    sub_226D6EB7C();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_226B46420()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_226B4819C;
  }

  else
  {
    v2 = sub_226B46534;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B46534()
{
  v1 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 360) = v4;
  v5 = sub_226B41FC0();
  *v4 = v0;
  v4[1] = sub_226B465FC;

  return MEMORY[0x28211A3F8](v2, v3, &type metadata for BankConnectEnvironmentImplementation, v5);
}

uint64_t sub_226B465FC(uint64_t a1)
{
  *(*v1 + 368) = a1;

  return MEMORY[0x2822009F8](sub_226B466FC, 0, 0);
}

uint64_t sub_226B466FC()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 128);
  v8 = *(v0 + 112);
  sub_226AE532C(*(v0 + 120), v0 + 16);
  (*(v4 + 16))(v1, v8, v3);
  sub_226B4E088(v7, v5, type metadata accessor for BankConnectPendingConsentProcessingTask);
  v9 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v10 = (v2 + *(v6 + 80) + v9) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v0 + 376) = v11;
  sub_226AC484C((v0 + 16), v11 + 16);
  (*(v4 + 32))(v11 + v9, v1, v3);
  sub_226B4E528(v5, v11 + v10, type metadata accessor for BankConnectPendingConsentProcessingTask);
  v16 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);
  v12 = swift_task_alloc();
  *(v0 + 384) = v12;
  *v12 = v0;
  v12[1] = sub_226B468C8;
  v13 = *(v0 + 280);
  v14 = *(v0 + 248);

  return v16(v13, &unk_226D73758, v11, v14);
}

uint64_t sub_226B468C8()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_226B48290;
  }

  else
  {

    v2 = sub_226B469E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B469E4()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  *(v0 + 400) = __swift_project_value_buffer(v1, qword_28105F710);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Successfully inserted pending consent into local store.", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = *(v0 + 392);
  v6 = *(v0 + 280);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_226D6BAAC();
  v9 = sub_226D676AC();

  v10 = swift_task_alloc();
  v10[2] = v9;
  v10[3] = v6;
  v10[4] = v8;
  sub_226D6EB7C();
  v67 = v5;
  if (v5)
  {
    v11 = *(v0 + 280);
    v13 = *(v0 + 248);
    v12 = *(v0 + 256);

    (*(v12 + 8))(v11, v13);
    *(v0 + 96) = v67;
    v14 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
    if (swift_dynamicCast())
    {

      if ((*(v0 + 480) & 1) == 0)
      {
        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1, qword_28105F710);
        v53 = sub_226D6E05C();
        v54 = sub_226D6E9CC();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_226AB4000, v53, v54, "Failed to insert token, overlaps with existing tokens.", v55, 2u);
          MEMORY[0x22AA8BEE0](v55, -1, -1);
        }

        v56 = *(v0 + 120);
        v57 = *(v0 + 128);

        __swift_project_boxed_opaque_existential_1(v56, v56[3]);
        sub_226D6BAAC();
        v58 = sub_226D676AC();

        v59 = swift_task_alloc();
        *(v59 + 16) = v57;
        *(v59 + 24) = v58;
        sub_226D6EB7C();

        v60 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
        sub_226D6BAAC();
        v61 = sub_226D676AC();

        v62 = swift_task_alloc();
        *(v62 + 16) = v60;
        *(v62 + 24) = v61;
        sub_226D6EB7C();
        (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

        v63 = *(v0 + 8);
        goto LABEL_30;
      }

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v1, qword_28105F710);
      v15 = sub_226D6E05C();
      v16 = sub_226D6E9CC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_226AB4000, v15, v16, "Failed to insert token into local store, Wallet has been deleted.", v17, 2u);
        MEMORY[0x22AA8BEE0](v17, -1, -1);
      }

      v19 = *(v0 + 296);
      v18 = *(v0 + 304);
      v20 = *(v0 + 288);

      sub_226B4E26C();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();
      (*(v19 + 8))(v18, v20);
      v22 = *(v0 + 96);
    }

    else
    {

      *(v0 + 104) = v67;
      v31 = v67;
      if (swift_dynamicCast())
      {
        v32 = *(v0 + 176);
        v33 = *(v0 + 184);
        v35 = *(v0 + 160);
        v34 = *(v0 + 168);
        v36 = *(v0 + 152);
        v37 = *(v0 + 120);
        v38 = *(v0 + 128);

        (*(v34 + 32))(v32, v33, v35);
        sub_226D6AD2C();
        __swift_project_boxed_opaque_existential_1(v37, v37[3]);
        sub_226D6BAAC();
        v39 = sub_226D676AC();

        v40 = swift_task_alloc();
        v40[2] = v38;
        v40[3] = v39;
        v40[4] = v36;
        sub_226D6EB7C();
        v41 = *(v0 + 296);
        v65 = *(v0 + 288);
        v66 = *(v0 + 304);
        v43 = *(v0 + 168);
        v42 = *(v0 + 176);
        v44 = *(v0 + 152);
        v64 = *(v0 + 160);
        v46 = *(v0 + 136);
        v45 = *(v0 + 144);

        (*(v45 + 8))(v44, v46);
        sub_226D66DFC();
        sub_226B4E6C8(&qword_27D7A6990, MEMORY[0x277CC6528], MEMORY[0x277CC6530]);
        swift_allocError();
        sub_226D6AD1C();
        swift_willThrow();
        (*(v43 + 8))(v42, v64);
        (*(v41 + 8))(v66, v65);
      }

      else
      {
        (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
      }

      v22 = *(v0 + 104);
    }

    v63 = *(v0 + 8);
LABEL_30:

    return v63();
  }

  v23 = sub_226D6718C();
  v24 = *MEMORY[0x277CC6D38];
  *(v0 + 472) = v24;
  if (v23)
  {
    (*(*(v0 + 200) + 104))(*(v0 + 216), v24, *(v0 + 192));
    v25 = swift_task_alloc();
    *(v0 + 408) = v25;
    *v25 = v0;
    v25[1] = sub_226B4740C;
    v26 = *(v0 + 304);
    v27 = *(v0 + 280);
    v28 = *(v0 + 216);
    v29 = *(v0 + 120);

    return sub_226B4A500(v27, v26, v29, v28);
  }

  else
  {
    *(v0 + 424) = 0;
    v48 = *(v0 + 200);
    v47 = *(v0 + 208);
    v49 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
    sub_226D1F120((v0 + 56));
    v50 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    (*(v48 + 104))(v47, v24, v49);
    *(v0 + 432) = *v50;
    v51 = swift_task_alloc();
    *(v0 + 440) = v51;
    *v51 = v0;
    v51[1] = sub_226B47678;
    v52 = *(v0 + 304);

    return sub_226D1392C(v52);
  }
}

uint64_t sub_226B4740C()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  (*(v2[25] + 8))(v2[27], v2[24]);
  if (v0)
  {
    v3 = sub_226B489D8;
  }

  else
  {
    v3 = sub_226B47574;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B47574()
{
  *(v0 + 424) = *(v0 + 416);
  v1 = *(v0 + 472);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  sub_226D1F120((v0 + 56));
  v5 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  (*(v3 + 104))(v2, v1, v4);
  *(v0 + 432) = *v5;
  v6 = swift_task_alloc();
  *(v0 + 440) = v6;
  *v6 = v0;
  v6[1] = sub_226B47678;
  v7 = *(v0 + 304);

  return sub_226D1392C(v7);
}

uint64_t sub_226B47678(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v3[56] = a1;

  v5 = swift_task_alloc();
  v3[57] = v5;
  *v5 = v4;
  v5[1] = sub_226B477F8;
  v6 = v3[38];
  v7 = v3[26];

  return sub_226D14A8C(a1, v6, 0, v7);
}

uint64_t sub_226B477F8(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  *(*v1 + 464) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_226B47974, 0, 0);
}

uint64_t sub_226B47974()
{

  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 464);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v4 + 16);

    *(v5 + 4) = v6;

    _os_log_impl(&dword_226AB4000, v1, v2, "Successfully ran local account matching on %ld additional account(s).", v5, 0xCu);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v7 = *(v0 + 424);
  sub_226B4B6E4(*(v0 + 280), *(v0 + 304), *(v0 + 120));
  (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v49 = v7;
  if (!v7)
  {
    goto LABEL_21;
  }

  *(v0 + 96) = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {

    if (*(v0 + 480))
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v9 = sub_226D6E07C();
      __swift_project_value_buffer(v9, qword_28105F710);
      v10 = sub_226D6E05C();
      v11 = sub_226D6E9CC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_226AB4000, v10, v11, "Failed to insert token into local store, Wallet has been deleted.", v12, 2u);
        MEMORY[0x22AA8BEE0](v12, -1, -1);
      }

      v14 = *(v0 + 296);
      v13 = *(v0 + 304);
      v15 = *(v0 + 288);

      sub_226B4E26C();
      swift_allocError();
      *v16 = 1;
      swift_willThrow();
      (*(v14 + 8))(v13, v15);

      goto LABEL_22;
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v33 = sub_226D6E07C();
    __swift_project_value_buffer(v33, qword_28105F710);
    v34 = sub_226D6E05C();
    v35 = sub_226D6E9CC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_226AB4000, v34, v35, "Failed to insert token, overlaps with existing tokens.", v36, 2u);
      MEMORY[0x22AA8BEE0](v36, -1, -1);
    }

    v37 = *(v0 + 120);
    v38 = *(v0 + 128);

    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    sub_226D6BAAC();
    v39 = sub_226D676AC();

    v40 = swift_task_alloc();
    *(v40 + 16) = v38;
    *(v40 + 24) = v39;
    sub_226D6EB7C();

LABEL_21:
    v41 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
    sub_226D6BAAC();
    v42 = sub_226D676AC();

    v43 = swift_task_alloc();
    *(v43 + 16) = v41;
    *(v43 + 24) = v42;
    sub_226D6EB7C();
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

    v45 = *(v0 + 8);
    goto LABEL_23;
  }

  *(v0 + 104) = v7;
  v17 = v7;
  if (swift_dynamicCast())
  {
    v18 = *(v0 + 176);
    v19 = *(v0 + 184);
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    v23 = *(v0 + 120);
    v24 = *(v0 + 128);

    (*(v20 + 32))(v18, v19, v21);
    sub_226D6AD2C();
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_226D6BAAC();
    v25 = sub_226D676AC();

    v26 = swift_task_alloc();
    v26[2] = v24;
    v26[3] = v25;
    v26[4] = v22;
    sub_226D6EB7C();
    v27 = *(v0 + 296);
    v47 = *(v0 + 288);
    v48 = *(v0 + 304);
    v29 = *(v0 + 168);
    v28 = *(v0 + 176);
    v30 = *(v0 + 152);
    v46 = *(v0 + 160);
    v32 = *(v0 + 136);
    v31 = *(v0 + 144);

    (*(v31 + 8))(v30, v32);
    sub_226D66DFC();
    sub_226B4E6C8(&qword_27D7A6990, MEMORY[0x277CC6528], MEMORY[0x277CC6530]);
    swift_allocError();
    sub_226D6AD1C();
    swift_willThrow();
    (*(v29 + 8))(v28, v46);
    (*(v27 + 8))(v48, v47);
  }

  else
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  }

LABEL_22:

  v45 = *(v0 + 8);
LABEL_23:

  return v45();
}

uint64_t sub_226B4819C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B48290()
{

  v1 = *(v0 + 392);
  *(v0 + 96) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if ((swift_dynamicCast() & 1) == 0)
  {

    *(v0 + 104) = v1;
    v11 = v1;
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 176);
      v12 = *(v0 + 184);
      v15 = *(v0 + 160);
      v14 = *(v0 + 168);
      v16 = *(v0 + 152);
      v17 = *(v0 + 120);
      v18 = *(v0 + 128);

      (*(v14 + 32))(v13, v12, v15);
      sub_226D6AD2C();
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      sub_226D6BAAC();
      v19 = sub_226D676AC();

      v20 = swift_task_alloc();
      v20[2] = v18;
      v20[3] = v19;
      v20[4] = v16;
      sub_226D6EB7C();
      v21 = *(v0 + 296);
      v41 = *(v0 + 288);
      v42 = *(v0 + 304);
      v22 = *(v0 + 168);
      v23 = *(v0 + 152);
      v39 = *(v0 + 160);
      v40 = *(v0 + 176);
      v25 = *(v0 + 136);
      v24 = *(v0 + 144);

      (*(v24 + 8))(v23, v25);
      sub_226D66DFC();
      sub_226B4E6C8(&qword_27D7A6990, MEMORY[0x277CC6528], MEMORY[0x277CC6530]);
      swift_allocError();
      sub_226D6AD1C();
      swift_willThrow();
      (*(v22 + 8))(v40, v39);
      (*(v21 + 8))(v42, v41);
    }

    else
    {
      (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    }

LABEL_17:

    v38 = *(v0 + 8);
    goto LABEL_18;
  }

  if (*(v0 + 480))
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v3 = sub_226D6E07C();
    __swift_project_value_buffer(v3, qword_28105F710);
    v4 = sub_226D6E05C();
    v5 = sub_226D6E9CC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_226AB4000, v4, v5, "Failed to insert token into local store, Wallet has been deleted.", v6, 2u);
      MEMORY[0x22AA8BEE0](v6, -1, -1);
    }

    v7 = *(v0 + 296);
    v8 = *(v0 + 304);
    v9 = *(v0 + 288);

    sub_226B4E26C();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    (*(v7 + 8))(v8, v9);

    goto LABEL_17;
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v26 = sub_226D6E07C();
  __swift_project_value_buffer(v26, qword_28105F710);
  v27 = sub_226D6E05C();
  v28 = sub_226D6E9CC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_226AB4000, v27, v28, "Failed to insert token, overlaps with existing tokens.", v29, 2u);
    MEMORY[0x22AA8BEE0](v29, -1, -1);
  }

  v30 = *(v0 + 120);
  v31 = *(v0 + 128);

  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_226D6BAAC();
  v32 = sub_226D676AC();

  v33 = swift_task_alloc();
  *(v33 + 16) = v31;
  *(v33 + 24) = v32;
  sub_226D6EB7C();

  v35 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  sub_226D6BAAC();
  v36 = sub_226D676AC();

  v37 = swift_task_alloc();
  *(v37 + 16) = v35;
  *(v37 + 24) = v36;
  sub_226D6EB7C();
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

  v38 = *(v0 + 8);
LABEL_18:

  return v38();
}

uint64_t sub_226B489D8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 416);
  *(v0 + 96) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if ((swift_dynamicCast() & 1) == 0)
  {

    *(v0 + 104) = v4;
    v14 = v4;
    if (swift_dynamicCast())
    {
      v16 = *(v0 + 176);
      v15 = *(v0 + 184);
      v18 = *(v0 + 160);
      v17 = *(v0 + 168);
      v19 = *(v0 + 152);
      v20 = *(v0 + 120);
      v21 = *(v0 + 128);

      (*(v17 + 32))(v16, v15, v18);
      sub_226D6AD2C();
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      sub_226D6BAAC();
      v22 = sub_226D676AC();

      v23 = swift_task_alloc();
      v23[2] = v21;
      v23[3] = v22;
      v23[4] = v19;
      sub_226D6EB7C();
      v24 = *(v0 + 296);
      v44 = *(v0 + 288);
      v45 = *(v0 + 304);
      v25 = *(v0 + 168);
      v26 = *(v0 + 152);
      v42 = *(v0 + 160);
      v43 = *(v0 + 176);
      v28 = *(v0 + 136);
      v27 = *(v0 + 144);

      (*(v27 + 8))(v26, v28);
      sub_226D66DFC();
      sub_226B4E6C8(&qword_27D7A6990, MEMORY[0x277CC6528], MEMORY[0x277CC6530]);
      swift_allocError();
      sub_226D6AD1C();
      swift_willThrow();
      (*(v25 + 8))(v43, v42);
      (*(v24 + 8))(v45, v44);
    }

    else
    {
      (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    }

LABEL_17:

    v41 = *(v0 + 8);
    goto LABEL_18;
  }

  if (*(v0 + 480))
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v6 = sub_226D6E07C();
    __swift_project_value_buffer(v6, qword_28105F710);
    v7 = sub_226D6E05C();
    v8 = sub_226D6E9CC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_226AB4000, v7, v8, "Failed to insert token into local store, Wallet has been deleted.", v9, 2u);
      MEMORY[0x22AA8BEE0](v9, -1, -1);
    }

    v10 = *(v0 + 296);
    v11 = *(v0 + 304);
    v12 = *(v0 + 288);

    sub_226B4E26C();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    (*(v10 + 8))(v11, v12);

    goto LABEL_17;
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v29 = sub_226D6E07C();
  __swift_project_value_buffer(v29, qword_28105F710);
  v30 = sub_226D6E05C();
  v31 = sub_226D6E9CC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_226AB4000, v30, v31, "Failed to insert token, overlaps with existing tokens.", v32, 2u);
    MEMORY[0x22AA8BEE0](v32, -1, -1);
  }

  v33 = *(v0 + 120);
  v34 = *(v0 + 128);

  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_226D6BAAC();
  v35 = sub_226D676AC();

  v36 = swift_task_alloc();
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;
  sub_226D6EB7C();

  v38 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  sub_226D6BAAC();
  v39 = sub_226D676AC();

  v40 = swift_task_alloc();
  *(v40 + 16) = v38;
  *(v40 + 24) = v39;
  sub_226D6EB7C();
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

  v41 = *(v0 + 8);
LABEL_18:

  return v41();
}

uint64_t sub_226B49138(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v3[5] = swift_task_alloc();
  v4 = sub_226D684AC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_226D6BCEC();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_226D671FC();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FA8, &qword_226D73790);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B49334, 0, 0);
}

uint64_t sub_226B49334()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_226D6BAAC();
  v2 = sub_226D676AC();
  v0[18] = v2;

  *(swift_task_alloc() + 16) = v2;
  sub_226D6EB8C();
  v3 = v0[4];

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_226D6EB8C();
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[12];
  v9 = v0[13];

  sub_226AC40E8(v6, v7, &qword_27D7A5FA8, &qword_226D73790);
  v10 = (*(v9 + 48))(v7, 1, v8);
  if (v10 == 1)
  {
    v11 = v0[4];
    sub_226AC47B0(v0[16], &qword_27D7A5FA8, &qword_226D73790);
    if (MEMORY[0x22AA83210](*(v11 + 16), *(v11 + 24)))
    {
      v13 = v0[10];
      v12 = v0[11];
      v14 = v0[9];
      sub_226D6BD1C();
      swift_allocObject();
      sub_226D6BD0C();
      (*(v13 + 104))(v12, *MEMORY[0x277CC8128], v14);
      sub_226D6BCFC();

      (*(v13 + 8))(v12, v14);
    }

    v15 = v0[4];
    v16 = __swift_project_boxed_opaque_existential_1(v0[3], v1[3]);
    __swift_project_boxed_opaque_existential_1(v16 + 1, v16[4]);
    v17 = sub_226D6C2AC();
    v0[19] = v17;
    v18 = swift_task_alloc();
    v0[20] = v18;
    *(v18 + 16) = v17;
    *(v18 + 24) = v15;
    v19 = swift_task_alloc();
    v0[21] = v19;
    *v19 = v0;
    v19[1] = sub_226B49818;
    v20 = v0[8];
    v21 = v0[6];

    return MEMORY[0x282119B28](v20, &unk_226D737A0, v18, v21);
  }

  else
  {
    v22 = *(v0[13] + 32);
    v22(v0[14], v0[16], v0[12]);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v23 = sub_226D6E07C();
    __swift_project_value_buffer(v23, qword_28105F710);
    v24 = sub_226D6E05C();
    v25 = sub_226D6E9EC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_226AB4000, v24, v25, "Institution is already on device.", v26, 2u);
      MEMORY[0x22AA8BEE0](v26, -1, -1);
    }

    v27 = v0[17];
    v28 = v0[14];
    v29 = v0[12];
    v30 = v0[2];

    sub_226AC47B0(v27, &qword_27D7A5FA8, &qword_226D73790);
    v22(v30, v28, v29);

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_226B49818()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_226B49CB0;
  }

  else
  {
    v2 = sub_226B49948;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B49948()
{
  *(v0 + 184) = __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24))[51];

  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_226B49A04;
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);

  return MEMORY[0x28211A638](v3, v2);
}

uint64_t sub_226B49A04()
{
  v1 = *(*v0 + 40);

  sub_226AC47B0(v1, &unk_27D7A62F8, &unk_226D73B70);

  return MEMORY[0x2822009F8](sub_226B49B48, 0, 0);
}

uint64_t sub_226B49B48()
{
  v1 = v0[18];
  v2 = v0[17];
  v4 = v0[7];
  v3 = v0[8];
  v9 = v0[6];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v1;
  v6[4] = v5;
  sub_226D6EB7C();
  sub_226AC47B0(v2, &qword_27D7A5FA8, &qword_226D73790);

  (*(v4 + 8))(v3, v9);

  v7 = v0[1];

  return v7();
}

uint64_t sub_226B49CB0()
{
  v1 = *(v0 + 136);

  sub_226AC47B0(v1, &qword_27D7A5FA8, &qword_226D73790);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226B49D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_226D6764C();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  type metadata accessor for BankConnectConsentArbitratingConfiguration(0);
  v4[14] = swift_task_alloc();
  v4[15] = sub_226D6885C();
  v4[16] = swift_task_alloc();
  sub_226D6D4AC();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_226D68C5C();
  v4[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E90, &qword_226D75220);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B49F74, 0, 0);
}

uint64_t sub_226B49F74()
{
  v1 = *(v0 + 96);
  v15 = *(v0 + 104);
  v2 = *(v0 + 80);
  v13 = *(v0 + 112);
  v14 = *(v0 + 88);
  v3 = __swift_project_boxed_opaque_existential_1(*(v0 + 64), *(*(v0 + 64) + 24));
  sub_226AE532C((v3 + 63), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_226D682EC();
  sub_226D6829C();
  sub_226D682CC();
  sub_226D682DC();
  sub_226D682AC();
  sub_226D68C3C();
  sub_226D6883C();
  sub_226D6B68C();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
  (*(*(v6 - 8) + 56))(v13, 1, 1, v6);
  (*(v1 + 104))(v15, *MEMORY[0x277CC6D38], v14);
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *v7 = v0;
  v7[1] = sub_226B4A174;
  v8 = *(v0 + 176);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  v11 = *(v0 + 56);

  return sub_226BA3514(v11, v8, v4, v5, v9, v10, 1);
}

uint64_t sub_226B4A174()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 88);
  *(*v1 + 192) = v0;

  (*(v7 + 8))(v6, v8);
  sub_226B4E318(v5, type metadata accessor for BankConnectConsentArbitratingConfiguration);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v9 = sub_226B4A43C;
  }

  else
  {
    v9 = sub_226B4A378;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_226B4A378()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B4A43C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B4A500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4[8] = swift_task_alloc();
  v5 = sub_226D6BE1C();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_226D6B9BC();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = sub_226D6D4AC();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B4A6CC, 0, 0);
}

uint64_t sub_226B4A6CC()
{
  v52 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_226D6BAAC();
  v3 = sub_226D676AC();
  *(v0 + 160) = v3;

  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E88, &unk_226D73770);
  sub_226D6EB8C();
  v5 = *(v0 + 144);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 48);

  v10 = *(v0 + 16);
  *(v0 + 168) = v10;
  sub_226D6D46C();
  sub_226D671CC();
  sub_226D6D3DC();
  v11 = *(v8 + 8);
  *(v0 + 176) = v11;
  *(v0 + 184) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v5, v7);
  v12 = __swift_project_boxed_opaque_existential_1(v9, v1[3]);
  v51[3] = &type metadata for BankConnectEnvironmentImplementation;
  v51[4] = sub_226B41FC0();
  v51[0] = swift_allocObject();
  sub_226B42014(v12, v51[0] + 16);
  *(v0 + 192) = sub_226D6BE3C();
  swift_allocObject();
  v13 = sub_226D6BDFC();
  *(v0 + 200) = v13;
  *(v0 + 24) = v13;
  v14 = *(v10 + 16);
  *(v0 + 208) = v14;
  if (v14)
  {
    v15 = *(v0 + 96);
    v16 = *(v0 + 104);
    v17 = *(v16 + 16);
    v16 += 16;
    v18 = *(v16 + 64);
    *(v0 + 272) = v18;
    *(v0 + 216) = *(v16 + 56);
    *(v0 + 224) = v17;
    *(v0 + 232) = 0;
    v17(*(v0 + 120), *(v0 + 168) + ((v18 + 32) & ~v18), v15);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 224);
    v20 = *(v0 + 112);
    v21 = *(v0 + 120);
    v22 = *(v0 + 96);
    v23 = sub_226D6E07C();
    *(v0 + 240) = __swift_project_value_buffer(v23, qword_28105F710);
    v19(v20, v21, v22);
    v24 = sub_226D6E05C();
    v25 = sub_226D6E9EC();
    v26 = os_log_type_enabled(v24, v25);
    v28 = *(v0 + 104);
    v27 = *(v0 + 112);
    v29 = *(v0 + 96);
    if (v26)
    {
      v30 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51[0] = v50;
      *v30 = 136315138;
      sub_226B4E6C8(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v31 = sub_226D6F1CC();
      v33 = v32;
      v34 = *(v28 + 8);
      v34(v27, v29);
      v35 = sub_226AC4530(v31, v33, v51);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_226AB4000, v24, v25, "Fetching refresh transactions for %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x22AA8BEE0](v50, -1, -1);
      MEMORY[0x22AA8BEE0](v30, -1, -1);
    }

    else
    {

      v34 = *(v28 + 8);
      v34(v27, v29);
    }

    *(v0 + 248) = v34;
    v41 = *(v0 + 128);
    v42 = *(v0 + 136);
    v43 = *(v0 + 64);
    (*(v42 + 16))(*(v0 + 144), *(v0 + 152), v41);
    (*(v42 + 56))(v43, 1, 1, v41);
    sub_226D6BE0C();
    v44 = swift_task_alloc();
    *(v0 + 256) = v44;
    *v44 = v0;
    v44[1] = sub_226B4AC74;
    v45 = *(v0 + 192);
    v46 = *(v0 + 120);
    v47 = *(v0 + 88);
    v48 = *(v0 + 56);
    v49 = MEMORY[0x277CC8178];

    return MEMORY[0x28211A688](v46, v47, v48, v45, v49);
  }

  else
  {

    v36 = *(v0 + 176);
    v37 = *(v0 + 152);
    v38 = *(v0 + 160);
    v39 = *(v0 + 128);

    v36(v37, v39);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_226B4AC74()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v3 = sub_226B4B1EC;
  }

  else
  {
    v3 = sub_226B4ADDC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B4ADDC()
{
  v39 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 232) + 1;
  (*(v0 + 248))(*(v0 + 120), *(v0 + 96));
  if (v2 == v1)
  {

    v3 = *(v0 + 176);
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = *(v0 + 128);

    v3(v4, v6);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 224);
    v10 = *(v0 + 232) + 1;
    *(v0 + 232) = v10;
    v9(*(v0 + 120), *(v0 + 168) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 216) * v10, *(v0 + 96));
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 224);
    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    v14 = *(v0 + 96);
    v15 = sub_226D6E07C();
    *(v0 + 240) = __swift_project_value_buffer(v15, qword_28105F710);
    v11(v12, v13, v14);
    v16 = sub_226D6E05C();
    v17 = sub_226D6E9EC();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 104);
    v19 = *(v0 + 112);
    v21 = *(v0 + 96);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v22 = 136315138;
      sub_226B4E6C8(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v23 = sub_226D6F1CC();
      v25 = v24;
      v26 = *(v20 + 8);
      v26(v19, v21);
      v27 = sub_226AC4530(v23, v25, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_226AB4000, v16, v17, "Fetching refresh transactions for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
      MEMORY[0x22AA8BEE0](v22, -1, -1);
    }

    else
    {

      v26 = *(v20 + 8);
      v26(v19, v21);
    }

    *(v0 + 248) = v26;
    v28 = *(v0 + 128);
    v29 = *(v0 + 136);
    v30 = *(v0 + 64);
    (*(v29 + 16))(*(v0 + 144), *(v0 + 152), v28);
    (*(v29 + 56))(v30, 1, 1, v28);
    sub_226D6BE0C();
    v31 = swift_task_alloc();
    *(v0 + 256) = v31;
    *v31 = v0;
    v31[1] = sub_226B4AC74;
    v32 = *(v0 + 192);
    v33 = *(v0 + 120);
    v34 = *(v0 + 88);
    v35 = *(v0 + 56);
    v36 = MEMORY[0x277CC8178];

    return MEMORY[0x28211A688](v33, v34, v35, v32, v36);
  }
}

uint64_t sub_226B4B1EC()
{
  v49 = v0;
  v1 = *(v0 + 264);
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 264);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v3, v4, "Failed to refresh transactions: %@", v7, 0xCu);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v11 = *(v0 + 208);
  v12 = *(v0 + 232) + 1;
  (*(v0 + 248))(*(v0 + 120), *(v0 + 96));
  if (v12 == v11)
  {

    v13 = *(v0 + 176);
    v14 = *(v0 + 152);
    v15 = *(v0 + 160);
    v16 = *(v0 + 128);

    v13(v14, v16);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 224);
    v20 = *(v0 + 232) + 1;
    *(v0 + 232) = v20;
    v19(*(v0 + 120), *(v0 + 168) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 216) * v20, *(v0 + 96));
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 224);
    v22 = *(v0 + 112);
    v23 = *(v0 + 120);
    v24 = *(v0 + 96);
    v25 = sub_226D6E07C();
    *(v0 + 240) = __swift_project_value_buffer(v25, qword_28105F710);
    v21(v22, v23, v24);
    v26 = sub_226D6E05C();
    v27 = sub_226D6E9EC();
    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v0 + 104);
    v29 = *(v0 + 112);
    v31 = *(v0 + 96);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = v47;
      *v32 = 136315138;
      sub_226B4E6C8(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v33 = sub_226D6F1CC();
      v35 = v34;
      v36 = *(v30 + 8);
      v36(v29, v31);
      v37 = sub_226AC4530(v33, v35, &v48);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_226AB4000, v26, v27, "Fetching refresh transactions for %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x22AA8BEE0](v47, -1, -1);
      MEMORY[0x22AA8BEE0](v32, -1, -1);
    }

    else
    {

      v36 = *(v30 + 8);
      v36(v29, v31);
    }

    *(v0 + 248) = v36;
    v38 = *(v0 + 128);
    v39 = *(v0 + 136);
    v40 = *(v0 + 64);
    (*(v39 + 16))(*(v0 + 144), *(v0 + 152), v38);
    (*(v39 + 56))(v40, 1, 1, v38);
    sub_226D6BE0C();
    v41 = swift_task_alloc();
    *(v0 + 256) = v41;
    *v41 = v0;
    v41[1] = sub_226B4AC74;
    v42 = *(v0 + 192);
    v43 = *(v0 + 120);
    v44 = *(v0 + 88);
    v45 = *(v0 + 56);
    v46 = MEMORY[0x277CC8178];

    return MEMORY[0x28211A688](v43, v44, v45, v42, v46);
  }
}

void sub_226B4B6E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_226D6D4AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  sub_226D671BC();
  if (v12)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v13 = sub_226D6E07C();
    __swift_project_value_buffer(v13, qword_28105F710);
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9EC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226AB4000, v14, v15, "No first request window set, scheduling the fetching of historical transaction data for all granted accounts.", v16, 2u);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    sub_226D6BAAC();
    v17 = sub_226D676AC();

    MEMORY[0x28223BE20](v18);
    *(&v32 - 2) = v17;
    *(&v32 - 1) = a1;
    sub_226D6EB7C();
LABEL_13:

    return;
  }

  sub_226D6829C();
  sub_226D6D3DC();
  v19 = *(v6 + 8);
  v19(v8, v5);
  sub_226D6D46C();
  sub_226B4E6C8(&qword_27D7A66D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v20 = sub_226D6E33C();
  v19(v8, v5);
  if (v20)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v21 = sub_226D6E07C();
    __swift_project_value_buffer(v21, qword_28105F710);
    v22 = sub_226D6E05C();
    v23 = sub_226D6E9EC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = v19;
      v25 = v24;
      *v24 = 0;
      _os_log_impl(&dword_226AB4000, v22, v23, "First request window has not expired, scheduling the fetching of historical transaction data for all granted accounts.", v24, 2u);
      v26 = v25;
      v19 = v33;
      MEMORY[0x22AA8BEE0](v26, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    sub_226D6BAAC();
    v17 = sub_226D676AC();

    MEMORY[0x28223BE20](v27);
    *(&v32 - 2) = v17;
    *(&v32 - 1) = a1;
    sub_226D6EB7C();
    v19(v11, v5);
    goto LABEL_13;
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v28 = sub_226D6E07C();
  __swift_project_value_buffer(v28, qword_28105F710);
  v29 = sub_226D6E05C();
  v30 = sub_226D6E9EC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_226AB4000, v29, v30, "First request window has expired, no historical data fetch scheduled for all granted accounts.", v31, 2u);
    MEMORY[0x22AA8BEE0](v31, -1, -1);
  }

  v19(v11, v5);
}

id sub_226B4BBF4(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() currentQueryGenerationToken];
  v6[0] = 0;
  v3 = [a1 setQueryGenerationFromToken:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_226D6D04C();

  return swift_willThrow();
}

uint64_t sub_226B4BCD0@<X0>(uint64_t a3@<X8>)
{
  sub_226D6842C();
  result = sub_226D683EC();
  if (!v3)
  {
    if (result)
    {
      sub_226D6720C();
      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = sub_226D671FC();
    return (*(*(v7 - 8) + 56))(a3, v6, 1, v7);
  }

  return result;
}

uint64_t sub_226B4BD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6C5FC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B4BE4C, 0, 0);
}

uint64_t sub_226B4BE4C()
{

  sub_226D6C5EC();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_226B4BF14;
  v2 = v0[7];
  v3 = v0[2];

  return MEMORY[0x282119AC8](v3, v2);
}

uint64_t sub_226B4BF14()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(v5 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B4C0BC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_226B4C0BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_226B4C120(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v23[0] = a3;
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D684AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D671FC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6AA6C();
  swift_allocObject();
  sub_226D6AA5C();
  (*(v6 + 16))(v8, a1, v5);
  sub_226D671EC();
  v13 = v23[1];
  v14 = sub_226D6AA3C();
  if (v13)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v15 = v14;
    (*(v10 + 8))(v12, v9);

    v24[0] = 0;
    if ([a2 save_])
    {
      v16 = qword_28105F708;
      v17 = v24[0];
      if (v16 != -1)
      {
        swift_once();
      }

      v18 = sub_226D6E07C();
      __swift_project_value_buffer(v18, qword_28105F710);
      v19 = sub_226D6E05C();
      v20 = sub_226D6E9EC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_226AB4000, v19, v20, "Institution added to device successfully.", v21, 2u);
        MEMORY[0x22AA8BEE0](v21, -1, -1);
      }

      sub_226D6720C();
    }

    else
    {
      v22 = v24[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226B4C450(void *a1)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v55 = sub_226D6B9BC();
  v3 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v43 - v7;
  v8 = [objc_opt_self() currentQueryGenerationToken];
  v59[0] = 0;
  v56 = a1;
  LODWORD(a1) = [a1 setQueryGenerationFromToken:v8 error:v59];

  v9 = v59[0];
  if (a1)
  {
    v10 = sub_226D69F0C();
    v11 = v9;
    sub_226D682EC();
    v12 = sub_226D69EFC();
    if (v1)
    {
    }

    else
    {
      v14 = v12;
      v58 = 0;

      if (v14 >> 62)
      {
        goto LABEL_24;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
      {
        v44 = v5;
        v5 = 0;
        v52 = v14 & 0xFFFFFFFFFFFFFF8;
        v53 = v14 & 0xC000000000000001;
        v54 = (v3 + 8);
        *&v15 = 136315394;
        v43 = v15;
        v3 = v50;
        v49 = v10;
        while (1)
        {
          if (v53)
          {
            v33 = MEMORY[0x22AA8AFD0](v5, v14);
          }

          else
          {
            if (v5 >= *(v52 + 16))
            {
              goto LABEL_23;
            }

            v33 = *(v14 + 8 * v5 + 32);
          }

          v31 = v33;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          v57 = (v5 + 1);
          sub_226D68E6C();
          sub_226D69D5C();
          v34 = v58;
          v35 = sub_226D68E2C();
          if (v34)
          {
            (*v54)(v3, v55);

            return;
          }

          v36 = v35;
          v58 = 0;
          v10 = *v54;
          (*v54)(v3, v55);
          if (v36)
          {
            sub_226D69EDC();
            if (qword_28105F708 != -1)
            {
              swift_once();
            }

            v37 = sub_226D6E07C();
            __swift_project_value_buffer(v37, qword_28105F710);
            v31 = v31;
            v38 = v36;
            v39 = sub_226D6E05C();
            v40 = sub_226D6E9EC();

            v51 = v40;
            if (os_log_type_enabled(v39, v40))
            {
              v17 = swift_slowAlloc();
              v45 = v38;
              v18 = v17;
              v48 = swift_slowAlloc();
              v59[0] = v48;
              *v18 = v43;
              v19 = v44;
              v46 = v39;
              sub_226D69D5C();
              sub_226B4E6C8(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
              v47 = v31;
              v20 = v55;
              v21 = sub_226D6F1CC();
              v23 = v22;
              v24 = v19;
              v3 = v50;
              v10(v24, v20);
              v25 = sub_226AC4530(v21, v23, v59);

              *(v18 + 4) = v25;
              *(v18 + 12) = 2080;
              v10 = v45;
              v26 = [v45 fpanID];
              v27 = sub_226D6E39C();
              v29 = v28;

              v30 = sub_226AC4530(v27, v29, v59);

              *(v18 + 14) = v30;
              v31 = v46;
              _os_log_impl(&dword_226AB4000, v46, v51, "Linked %s with fpanID %s.", v18, 0x16u);
              v32 = v48;
              swift_arrayDestroy();
              MEMORY[0x22AA8BEE0](v32, -1, -1);
              MEMORY[0x22AA8BEE0](v18, -1, -1);
            }

            else
            {
            }
          }

          ++v5;
          if (v57 == i)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        ;
      }

LABEL_25:

      v59[0] = 0;
      if ([v56 save_])
      {
        v41 = v59[0];
      }

      else
      {
        v42 = v59[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }
  }

  else
  {
    v13 = v59[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

id sub_226B4CA0C(void *a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v24[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v24];

  v9 = v24[0];
  if (!v8)
  {
    v13 = v24[0];
    sub_226D6D04C();

    return swift_willThrow();
  }

  sub_226D69F0C();
  v10 = v9;
  sub_226D682EC();
  v11 = sub_226D69EFC();
  if (v1)
  {
  }

  v14 = v11;

  v22 = 0;
  v23 = a1;
  if (v14 >> 62)
  {
    v15 = sub_226D6EDFC();
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
  }

  v16 = 0;
  v17 = (v4 + 8);
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x22AA8AFD0](v16, v14);
    }

    else
    {
      v18 = *(v14 + 8 * v16 + 32);
    }

    v19 = v18;
    ++v16;
    sub_226D6D46C();
    v20 = sub_226D6D3EC();
    (*v17)(v6, v3);
    [v19 setEarliestHistoricalTransactionsRequestStartDate_];
  }

  while (v15 != v16);
LABEL_15:

  v24[0] = 0;
  if (([v23 save_] & 1) == 0)
  {
    v21 = v24[0];
    sub_226D6D04C();

    return swift_willThrow();
  }

  return v24[0];
}

uint64_t sub_226B4CCD0@<X0>(void *a1@<X8>)
{
  v25 = a1;
  v2 = sub_226D6B9BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  sub_226D69F0C();
  sub_226D682EC();
  v9 = sub_226D69EFC();
  if (v1)
  {
  }

  v11 = v25;
  v26 = v2;
  v12 = v9;

  v13 = v12;
  if (v12 >> 62)
  {
    v14 = sub_226D6EDFC();
    v13 = v12;
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v26;
  if (v14)
  {
    v27 = v13;
    v24 = 0;
    v28 = MEMORY[0x277D84F90];
    result = sub_226AE2090(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
    }

    else
    {
      v16 = v28;
      if ((v27 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v14; ++i)
        {
          MEMORY[0x22AA8AFD0](i, v27);
          sub_226D69D5C();
          swift_unknownObjectRelease();
          v28 = v16;
          v19 = *(v16 + 16);
          v18 = *(v16 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_226AE2090((v18 > 1), v19 + 1, 1);
            v16 = v28;
          }

          *(v16 + 16) = v19 + 1;
          (*(v3 + 32))(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19, v8, v26);
        }
      }

      else
      {
        v26 = v3 + 32;
        v20 = 32;
        do
        {
          v21 = *(v27 + v20);
          sub_226D69D5C();

          v28 = v16;
          v23 = *(v16 + 16);
          v22 = *(v16 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_226AE2090((v22 > 1), v23 + 1, 1);
            v16 = v28;
          }

          *(v16 + 16) = v23 + 1;
          (*(v3 + 32))(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v5, v15);
          v20 += 8;
          --v14;
        }

        while (v14);
      }

      *v25 = v16;
    }
  }

  else
  {

    *v11 = MEMORY[0x277D84F90];
  }

  return result;
}

void sub_226B4CFF0(void *a1, void *a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  sub_226D6996C();
  v5 = sub_226D6991C();
  if (!v3)
  {
    v6 = v5;
    if (v5)
    {
      sub_226D6995C();
      if ([a2 hasChanges])
      {
        v14[0] = 0;
        if ([a2 save_])
        {
          v7 = qword_28105F708;
          v8 = v14[0];
          if (v7 != -1)
          {
            swift_once();
          }

          v9 = sub_226D6E07C();
          __swift_project_value_buffer(v9, qword_28105F710);
          v10 = sub_226D6E05C();
          v11 = sub_226D6E9EC();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&dword_226AB4000, v10, v11, "Pending consent token updated with refreshed token.", v12, 2u);
            MEMORY[0x22AA8BEE0](v12, -1, -1);
          }
        }

        else
        {
          v13 = v14[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }

      else
      {
      }
    }
  }
}

void sub_226B4D1E4(void *a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  sub_226D6996C();
  v4 = sub_226D6991C();
  if (!v2)
  {
    v5 = v4;
    if (v4)
    {
      [a2 deleteObject_];
      v13[0] = 0;
      if ([a2 save_])
      {
        v6 = qword_28105F708;
        v7 = v13[0];
        if (v6 != -1)
        {
          swift_once();
        }

        v8 = sub_226D6E07C();
        __swift_project_value_buffer(v8, qword_28105F710);
        v9 = sub_226D6E05C();
        v10 = sub_226D6E9EC();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_226AB4000, v9, v10, "Pending consent token deleted. Processing complete.", v11, 2u);
          MEMORY[0x22AA8BEE0](v11, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        v12 = v13[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }
  }
}

void sub_226B4D3B0(void *a1, uint64_t *a2, uint64_t a3)
{
  v47 = a3;
  v49[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for BankConnectPendingConsentProcessingTask(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_226D6D4AC();
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D66DFC();
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentQueryGenerationToken];
  v49[0] = 0;
  v15 = [a1 setQueryGenerationFromToken:v14 error:v49];

  v16 = v49[0];
  if (!v15)
  {
    v27 = v49[0];
    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  v44 = v8;
  v45 = v7;
  sub_226D6996C();
  v17 = v16;
  v18 = v48;
  v19 = sub_226D6991C();
  if (v18)
  {
    return;
  }

  v20 = v19;
  if (v19)
  {
    sub_226B4E088(v47, v13, MEMORY[0x277CC6528]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_226B4E318(v13, MEMORY[0x277CC6528]);
    if (EnumCaseMultiPayload == 7)
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v22 = sub_226D6E07C();
      __swift_project_value_buffer(v22, qword_28105F710);
      v23 = sub_226D6E05C();
      v24 = sub_226D6E9CC();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_23;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Underlying OAuth grant is invalid. Deleting.";
      goto LABEL_22;
    }

    if ([v20 consentValidationAttemptCount] >= 5)
    {
      if (qword_28105F708 == -1)
      {
LABEL_20:
        v40 = sub_226D6E07C();
        __swift_project_value_buffer(v40, qword_28105F710);
        v23 = sub_226D6E05C();
        v24 = sub_226D6E9CC();
        if (!os_log_type_enabled(v23, v24))
        {
LABEL_23:

          [a1 deleteObject_];
          goto LABEL_24;
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = "Pending consent hit maximum attempts to validate. Deleting.";
LABEL_22:
        _os_log_impl(&dword_226AB4000, v23, v24, v26, v25, 2u);
        MEMORY[0x22AA8BEE0](v25, -1, -1);
        goto LABEL_23;
      }
    }

    else
    {
      v38 = [v20 consentValidationAttemptCount];
      if (!__OFADD__(v38, 1))
      {
        [v20 setConsentValidationAttemptCount_];
        sub_226D6D46C();
        v39 = sub_226D6D3EC();
        (*(v46 + 8))(v10, v44);
        [v20 setLastConsentValidationAttemptDate_];

LABEL_24:
        v49[0] = 0;
        if ([a1 save_])
        {
          v41 = v49[0];
        }

        else
        {
          v42 = v49[0];
          sub_226D6D04C();

          swift_willThrow();
        }

        return;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_20;
  }

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v28 = sub_226D6E07C();
  __swift_project_value_buffer(v28, qword_28105F710);
  v29 = v45;
  sub_226B4E088(a2, v45, type metadata accessor for BankConnectPendingConsentProcessingTask);
  v30 = sub_226D6E05C();
  v31 = sub_226D6E9AC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v49[0] = v33;
    *v32 = 136315138;
    v34 = v29;
    v35 = *v29;
    v36 = *(v34 + 8);

    sub_226B4E318(v34, type metadata accessor for BankConnectPendingConsentProcessingTask);
    v37 = sub_226AC4530(v35, v36, v49);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_226AB4000, v30, v31, "Pending consent not found with consentID: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x22AA8BEE0](v33, -1, -1);
    MEMORY[0x22AA8BEE0](v32, -1, -1);
  }

  else
  {

    sub_226B4E318(v29, type metadata accessor for BankConnectPendingConsentProcessingTask);
  }
}