void sub_237B669B8(float *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4 >> 60)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_237B66A04((a3 + 32), a3 + 32 + 8 * v4, a1, a2);
  if (v3)
  {
LABEL_5:

    __break(1u);
  }
}

void sub_237B66A04(const double *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = (a4 - a3) / 4;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    if ((v4 & 0x8000000000000000) == 0)
    {
      __break(1u);
    }

    goto LABEL_12;
  }

  v4 = 0;
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= (a2 - a1) / 8)
  {
    v5 = (a2 - a1) / 8;
  }

  else
  {
    v5 = v4;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a3)
  {
    vDSP_vdpsp(a1, 1, a3, 1, v5);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_237B66A98(uint64_t a1, uint64_t a2)
{
  if (qword_27DE9A6C0 != -1)
  {
    swift_once();
  }

  v4 = sub_237B66C38(a1, a2, 0x6C65646F6D6C6DLL, 0xE700000000000000, qword_27DEACEA8);
  if (v4)
  {
    v5 = v4;
    sub_237C05A7C();
  }

  else
  {
    MEMORY[0x2383DC360](a1, a2);
    sub_2379E8AF0();
    swift_allocError();
    *v6 = 0xD000000000000015;
    *(v6 + 8) = 0x8000000237C1D6D0;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0;
    swift_willThrow();
  }
}

id sub_237B66BE0()
{
  type metadata accessor for BundleUtilities.BundleWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27DEACEA8 = result;
  return result;
}

id sub_237B66C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_237C086BC();
  v7 = sub_237C086BC();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_237B66CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a2 && *v7 == a3;
    if (v8 || (sub_237C0929C() & 1) != 0)
    {
      v9 = v5;
      goto LABEL_11;
    }

    ++v5;
    v7 += 2;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t sub_237B66D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v178 = a7;
  v177 = a6;
  v173 = a5;
  v172 = a4;
  v187 = a3;
  v186 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D218, &qword_237C13300);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_21_3(&v155 - v10);
  v169 = sub_237C080BC();
  OUTLINED_FUNCTION_0();
  v167 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v13);
  v179 = sub_237C0813C();
  OUTLINED_FUNCTION_0();
  v174 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v16);
  v195 = sub_237C0809C();
  OUTLINED_FUNCTION_0();
  v191 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_22();
  v194 = v19;
  v183 = sub_237C0803C();
  OUTLINED_FUNCTION_0();
  v182 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v22);
  v202 = sub_237C080EC();
  OUTLINED_FUNCTION_0();
  v204 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_22();
  v201 = v25;
  v184 = sub_237C0816C();
  OUTLINED_FUNCTION_0();
  v189 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_21_3(&v155 - v31);
  v200 = sub_237C080AC();
  OUTLINED_FUNCTION_0();
  v203 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_0();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_21_3(&v155 - v38);
  v176 = sub_237C0806C();
  OUTLINED_FUNCTION_0();
  v175 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18_0();
  v43 = (v41 - v42);
  MEMORY[0x28223BE20](v44);
  v185 = &v155 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D678, &qword_237C145A8);
  MEMORY[0x28223BE20](v46 - 8);
  OUTLINED_FUNCTION_18_0();
  v49 = (v47 - v48);
  MEMORY[0x28223BE20](v50);
  v52 = (&v155 - v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D680, &qword_237C145B0);
  MEMORY[0x28223BE20](v53 - 8);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v54);
  v56 = &v155 - v55;
  v57 = sub_237C0811C();
  OUTLINED_FUNCTION_0();
  v59 = v58;
  MEMORY[0x28223BE20](v60);
  v62 = &v155 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v7;
  sub_237C07FFC();
  if (__swift_getEnumTagSinglePayload(v56, 1, v57) != 1)
  {
    v161 = v59;
    v63 = *(v59 + 32);
    v162 = v57;
    v63(v62, v56, v57);
    v64 = *(sub_237C0810C() + 16);

    if (v64 == 1)
    {
      v155 = v36;
      *&v190 = a1;
      v65 = sub_237C0810C();
      sub_237B3B2F4(v65, v52);

      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D470, &unk_237C13BB0);
      v67 = v62;
      if (__swift_getEnumTagSinglePayload(v52, 1, v66) == 1)
      {
        sub_2379F6DD8(v52, &qword_27DE9D678, &qword_237C145A8);
      }

      else
      {
        v69 = *v52;
        v68 = v52[1];
        v70 = v175;
        v71 = v175 + 8;
        v72 = *(v175 + 8);
        v73 = v52 + *(v66 + 48);
        v74 = v176;
        v72(v73, v176);
        v163 = v67;
        v75 = sub_237C0810C();
        sub_237B3B2F4(v75, v49);

        if (__swift_getEnumTagSinglePayload(v49, 1, v66) == 1)
        {

          sub_2379F6DD8(v49, &qword_27DE9D678, &qword_237C145A8);
        }

        else
        {

          v76 = *(v70 + 32);
          v76(v43, v49 + *(v66 + 48), v74);
          v76(v185, v43, v74);
          v205 = v69;
          v206 = v68;
          v207 = 0x4C4D65726F43;
          v208 = 0xE600000000000000;
          sub_237B680F8();
          sub_237B6814C();
          if (sub_237C0862C())
          {
            v156 = v69;
            v157 = v68;
            v158 = v72;
            v159 = v71;
            v77 = v204;
            v78 = *(v204 + 104);
            v80 = v201;
            v79 = v202;
            v196 = *MEMORY[0x277D252D8];
            v198 = v78;
            v199 = v204 + 104;
            (v78)(v201);
            v81 = MEMORY[0x277D84F90];
            sub_237C0815C();
            v82 = *(v77 + 8);
            v204 = v77 + 8;
            v197 = v82;
            v82(v80, v79);
            v83 = v190;
            v84 = *(v190 + 16);
            *v181 = v84;
            (*(v182 + 104))();
            v85 = v203;
            if (v84)
            {
              v205 = v81;
              sub_237AC8CB4(0, v84, 0);
              v86 = v205;
              LODWORD(v193) = *MEMORY[0x277D252A0];
              v192 = (v191 + 104);
              v87 = (v191 + 8);
              v191 = v85 + 32;
              v88 = (v83 + 40);
              v190 = xmmword_237C0B660;
              v89 = v155;
              v90 = v201;
              do
              {
                v91 = *(v88 - 1);
                v92 = *v88;
                v93 = v202;
                v198(v90, v196, v202);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
                v94 = swift_allocObject();
                *(v94 + 16) = v190;
                *(v94 + 32) = v91;
                *(v94 + 40) = v92;
                v95 = v194;
                v96 = v195;
                *v194 = v94;
                (*v192)(v95, v193, v96);
                swift_bridgeObjectRetain_n();
                sub_237C0808C();

                (*v87)(v95, v96);
                v197(v90, v93);
                v205 = v86;
                v98 = *(v86 + 16);
                v97 = *(v86 + 24);
                if (v98 >= v97 >> 1)
                {
                  sub_237AC8CB4(v97 > 1, v98 + 1, 1);
                  v86 = v205;
                }

                *(v86 + 16) = v98 + 1;
                v99 = v200;
                (*(v203 + 32))(v86 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v98, v89, v200);
                v88 += 2;
                --v84;
              }

              while (v84);
            }

            else
            {
              v86 = v81;
              v99 = v200;
            }

            v205 = v86;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D698, &qword_237C145B8);
            sub_237B681A0();
            v100 = v180;
            v101 = v181;
            sub_237C0807C();

            (*(v182 + 8))(v101, v183);
            v102 = *(v189 + 8);
            v189 += 8;
            v195 = v102;
            v102(v100, v184);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D6A8, &qword_237C145C0);
            v103 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D6B0, &qword_237C145C8) - 8);
            v104 = *(*v103 + 72);
            v105 = (*(*v103 + 80) + 32) & ~*(*v103 + 80);
            v106 = swift_allocObject();
            v193 = xmmword_237C0B670;
            *(v106 + 16) = xmmword_237C0B670;
            v107 = v106 + v105;
            v194 = v103[14];
            strcpy(v107, "probabilities");
            *(v107 + 14) = -4864;
            v108 = v166;
            v109 = v187;
            *v166 = v186;
            v108[1] = v109;
            v110 = *(v167 + 104);
            v111 = v169;
            v110(v108, *MEMORY[0x277D252B0], v169);

            sub_237C080CC();
            v112 = (v107 + v104);
            *v112 = 0x73657373616C63;
            v112[1] = 0xE700000000000000;
            (*(v203 + 16))(v108, v188, v99);
            v110(v108, *MEMORY[0x277D252B8], v111);
            sub_237C080CC();
            sub_237C080DC();
            v194 = sub_237C085AC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D6B8, &qword_237C145D0);
            v113 = *(sub_237C0802C() - 8);
            v192 = *(v113 + 72);
            v114 = (*(v113 + 80) + 32) & ~*(v113 + 80);
            v115 = swift_allocObject();
            v191 = v115;
            *(v115 + 16) = v193;
            *&v193 = v115 + v114;
            v116 = v201;
            v117 = v202;
            v118 = v196;
            v119 = v198;
            v198(v201, v196, v202);

            sub_237C0815C();
            v120 = v197;
            v197(v116, v117);
            sub_237C0801C();
            v119(v116, v118, v117);
            v121 = v173;

            v122 = v168;
            sub_237C0815C();
            v120(v116, v117);
            v119(v116, *MEMORY[0x277D252E8], v117);
            v56 = v170;
            sub_237C0815C();
            v120(v116, v117);
            sub_237C0814C();
            v123 = v184;
            v124 = v195;
            v195(v56, v184);
            v125 = v123;
            v126 = v121;
            v124(v122, v125);
            v127 = v172;
            sub_237C0801C();
            v128 = v171;
            sub_237C0812C();
            v129 = v185;
            sub_237C0804C();
            OUTLINED_FUNCTION_7_44();
            sub_237A9D134();
            v130 = OUTLINED_FUNCTION_6_55();
            sub_237A9D2C8(v130);
            OUTLINED_FUNCTION_5_57();
            v131 = v174;
            (*(v174 + 16))(v132 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v121, v128, v179);
            v133 = OUTLINED_FUNCTION_8_41();
            (v124)(v133);
            v134 = v187;

            sub_237C0805C();
            OUTLINED_FUNCTION_7_44();
            v136 = sub_237B68204(v135, v186, v134);
            v137 = *(*v129 + 16);
            if (v137 >= v136)
            {
              sub_237B68394(v136, v137);
              v138 = OUTLINED_FUNCTION_8_41();
              (v124)(v138);
              v139 = v178;

              sub_237C0805C();
              OUTLINED_FUNCTION_7_44();
              sub_237A9D104();
              v140 = OUTLINED_FUNCTION_6_55();
              sub_237A9D220(v140);
              OUTLINED_FUNCTION_5_57();
              *(v141 + 32) = v177;
              *(v141 + 40) = v139;
              v142 = OUTLINED_FUNCTION_8_41();
              (v124)(v142);

              sub_237C0805C();
              OUTLINED_FUNCTION_7_44();
              sub_237A9D104();
              v143 = OUTLINED_FUNCTION_6_55();
              sub_237A9D220(v143);
              OUTLINED_FUNCTION_5_57();
              *(v144 + 32) = v127;
              *(v144 + 40) = v126;
              v145 = OUTLINED_FUNCTION_8_41();
              (v124)(v145);
              v146 = v164;
              v147 = v176;
              (*(v175 + 16))(v164, v129, v176);
              __swift_storeEnumTagSinglePayload(v146, 0, 1, v147);
              v148 = v163;
              sub_237C080FC();
              OUTLINED_FUNCTION_7_44();
              sub_237B19E54(v146, v156, v157);
              v149 = OUTLINED_FUNCTION_8_41();
              (v124)(v149);
              v150 = v161;
              v151 = v160;
              v152 = v162;
              (*(v161 + 16))(v160, v148, v162);
              __swift_storeEnumTagSinglePayload(v151, 0, 1, v152);
              sub_237C0800C();
              (*(v131 + 8))(v128, v179);
              (*(v203 + 8))(v188, v200);
              v158(v129, v147);
              return (*(v150 + 8))(v148, v152);
            }

            __break(1u);
            goto LABEL_16;
          }
        }
      }
    }

    v205 = 0;
    v206 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD00000000000003BLL, 0x8000000237C1D750);
    sub_237C0810C();
    v154 = sub_237C085CC();
    MEMORY[0x2383DC360](v154);

    goto LABEL_21;
  }

LABEL_16:
  sub_2379F6DD8(v56, &qword_27DE9D680, &qword_237C145B0);
LABEL_21:
  result = sub_237C090DC();
  __break(1u);
  return result;
}

unint64_t sub_237B680F8()
{
  result = qword_27DE9D688;
  if (!qword_27DE9D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D688);
  }

  return result;
}

unint64_t sub_237B6814C()
{
  result = qword_27DE9D690;
  if (!qword_27DE9D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D690);
  }

  return result;
}

unint64_t sub_237B681A0()
{
  result = qword_27DE9D6A0;
  if (!qword_27DE9D6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9D698, &qword_237C145B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D6A0);
  }

  return result;
}

uint64_t sub_237B68204(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;

  result = sub_237B66CB8(v7, a2, a3);
  v10 = result;
  if (v3)
  {
    goto LABEL_21;
  }

  if (v9)
  {
    v10 = *(v7 + 16);
LABEL_21:

    return v10;
  }

  v11 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v25 = a1;
    for (i = 16 * result; ; i += 16)
    {
      v13 = *(v7 + 16);
      if (v11 == v13)
      {
        break;
      }

      if (v11 >= v13)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = *(v7 + i + 48);
      v15 = *(v7 + i + 56);
      if (v14 != a2 || v15 != a3)
      {
        result = sub_237C0929C();
        if ((result & 1) == 0)
        {
          if (v11 != v10)
          {
            if (v10 >= v13)
            {
              goto LABEL_23;
            }

            v17 = (v7 + 32 + 16 * v10);
            v18 = v17[1];
            v26 = *v17;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_237B05F64(v7, v19, v20, v21);
              v7 = v24;
            }

            v22 = v7 + 16 * v10;
            *(v22 + 32) = v14;
            *(v22 + 40) = v15;

            if (v11 >= *(v7 + 16))
            {
              goto LABEL_24;
            }

            v23 = v7 + i;
            *(v23 + 48) = v26;
            *(v23 + 56) = v18;

            *v25 = v7;
          }

          ++v10;
        }
      }

      ++v11;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_237B68394(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_237A98F20(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_237A1DCBC((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  result = qword_27DE9D6C0;
  if (!qword_27DE9D6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B684F4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_3_3();
  v14 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  sub_2379DBD00(v3, v16 - v15);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v19 = *v17;
      v20 = *(v17 + 8);
      goto LABEL_7;
    case 2:
      (*(v7 + 32))(v2, v17, v5);
      (*(v7 + 16))(v11, v2, v5);
      sub_237A70684(v11, 1, &v24);
      result = (*(v7 + 8))(v2, v5);
      v19 = v24;
      v20 = v25;
LABEL_7:
      *a1 = v19;
      *(a1 + 8) = v20;
      break;
    case 3:
      v21 = MEMORY[0x2383DDC00](0);
      if (!v21)
      {
        __break(1u);
        JUMPOUT(0x237B68748);
      }

      v22 = v21;
      type metadata accessor for CMLTable();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      type metadata accessor for _DataTable();
      swift_allocObject();
      result = sub_237B6C578(v23);
      *a1 = result;
      *(a1 + 8) = 0;
      break;
    default:
      *a1 = 0;
      *(a1 + 8) = -1;
      break;
  }

  return result;
}

uint64_t sub_237B68758(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = a3;
  v56 = a2;
  v54 = a1;
  v55 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = (v8 - v7);
  v10 = sub_237C05D1C();
  OUTLINED_FUNCTION_0();
  v51 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v50 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_18_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_3_3();
  v27 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = (v29 - v28);
  sub_2379DBD00(v52, v29 - v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v41 = *v30;
      v42 = *(v30 + 8);
      v43 = OUTLINED_FUNCTION_4_2();
      v37 = v55;
      v44(v43);
      *&v57 = v41;
      BYTE8(v57) = v42;
      v36 = v56;
      sub_237A70ED4(&v57, v56);
      goto LABEL_10;
    case 2u:
      v38 = *(v5 + 32);
      v37 = v55;
      v38(v9, v30, v55);
      if (sub_237C05C5C())
      {
        (*(v5 + 8))(v9, v37);
        v39 = OUTLINED_FUNCTION_4_2();
LABEL_7:
        v40(v39);
        v35 = 1;
        v36 = v56;
      }

      else
      {
        v45 = OUTLINED_FUNCTION_4_2();
        v46(v45);
        v36 = v56;
        v38(v56, v9, v37);
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
    case 3u:
      v39 = OUTLINED_FUNCTION_4_2();
      v37 = v55;
      goto LABEL_7;
    default:
      v31 = *(v30 + 16);
      v32 = *(v30 + 17);
      v57 = *v30;
      v58 = v31;
      v59 = v32;
      sub_237A70BAC(v3, v20, &v57);
      v33 = v51;
      v34 = *(v51 + 16);
      v34(v17, v20, v10);
      sub_237C05DCC();
      sub_2379EA894(v3, v24);
      if (__swift_getEnumTagSinglePayload(v24, 1, v10) == 1)
      {
        (*(v33 + 8))(v20, v10);
        sub_2379EA904(v3);
        v35 = 1;
        v37 = v55;
        v36 = v56;
      }

      else
      {
        (*(v33 + 32))(v17, v24, v10);
        v34(v50, v17, v10);
        v36 = v56;
        sub_237C05DCC();
        v47 = *(v33 + 8);
        v47(v17, v10);
        v47(v20, v10);
        sub_2379EA904(v3);
        v35 = 0;
        v37 = v55;
      }

      return __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
  }
}

uint64_t type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = qword_27DE9D6D0;
  if (!qword_27DE9D6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B68C2C(uint64_t a1)
{
  sub_2379EA11C();
  if (v1 <= 0x3F)
  {
    sub_237B68CDC();
    if (v2 <= 0x3F)
    {
      sub_237B68D44(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MLTextClassifier.DataSource(319);
        if (v4 <= 0x3F)
        {
          sub_237B68DB4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_237B68CDC()
{
  if (!qword_27DE9D6E0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DE9D6E0);
    }
  }
}

void sub_237B68D44(uint64_t a1)
{
  if (!qword_27DE9D6E8)
  {
    sub_237C05DBC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DE9D6E8);
    }
  }
}

void sub_237B68DB4(uint64_t a1)
{
  if (!qword_27DE9D6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AE60, &qword_237C0D000);
    v1 = sub_237C085DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE9D6F0);
    }
  }
}

uint64_t sub_237B68E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a6;
  v67 = a4;
  v68 = a5;
  v65 = a2;
  v66 = a3;
  v63 = a1;
  v6 = type metadata accessor for MLTextClassifier.DataSource(0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_2_0();
  v61 = v8 - v7;
  sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v69 = v10;
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v62 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v16 = sub_237C05D1C();
  OUTLINED_FUNCTION_0();
  v64 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v61 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  MEMORY[0x28223BE20](v28 - 8);
  OUTLINED_FUNCTION_18_0();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v61 - v33;
  v35 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_0();
  v38 = v37 - v36;
  sub_237B6987C(v72, v37 - v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v41 = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v51 = *(v38 + 8);
      *&v73 = *v38;
      v50 = v73;
      BYTE8(v73) = v51;
      sub_2379DBCF4(v73, v51);
      sub_237A70ED4(&v73, v15);
      v52 = v76;
      sub_237B45630();
      if (v52)
      {
        (*(v69 + 8))(v15, v70);
        sub_2379DBC9C(v50, v51);
      }

      v76 = 0;
      sub_237C05C8C();

      sub_237C05C8C();
      sub_2379DBC9C(v50, v51);

      (*(v69 + 32))(v71, v15, v70);
      goto LABEL_18;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D6F8, &qword_237C14620);
      v53 = v69;
      v54 = v70;
      v55 = v62;
      v72 = *(v69 + 32);
      v72();
      v56 = v76;
      sub_237B45630();
      if (!v56)
      {
        v76 = 0;
        sub_237C05C8C();

        sub_237C05C8C();

        (v72)(v71, v55, v54);
        goto LABEL_18;
      }

      (*(v53 + 8))(v55, v54);

    case 3:
      v45 = v61;
      sub_237B698E0(v38, v61);
      v46 = v76;
      v47 = sub_237A8E3B4(v45);
      if (v46)
      {
        return sub_237B69944(v45);
      }

      sub_237B460B4(v47, v65, v66, v67, v68, v48);

      sub_237B69944(v45);
LABEL_15:
      v76 = 0;
      goto LABEL_18;
    case 4:
      v57 = v76;
      sub_237B460B4(*v38, v65, v66, v67, v68, v40);

      if (!v57)
      {
        goto LABEL_15;
      }

      return result;
    case 5:
      return __swift_storeEnumTagSinglePayload(v71, v41, 1, v70);
    default:
      v42 = *(v38 + 16);
      v43 = *(v38 + 17);
      v73 = *v38;
      v74 = v42;
      v75 = v43;
      v44 = v63;
      sub_237A70BAC(v34, v27, &v73);
      sub_2379EA894(v34, v31);
      if (__swift_getEnumTagSinglePayload(v31, 1, v16) == 1)
      {
        (*(v64 + 8))(v27, v16);
        sub_2379EA904(v34);
        sub_2379EA904(v31);
        v41 = 1;
      }

      else
      {
        (*(v69 + 8))(v44, v70);
        v58 = v64;
        (*(v64 + 32))(v24, v31, v16);
        v59 = *(v58 + 16);
        v59(v21, v27, v16);
        sub_237C05DCC();
        v59(v21, v24, v16);
        sub_237C05DCC();
        v60 = *(v58 + 8);
        v60(v24, v16);
        v60(v27, v16);
        sub_2379EA904(v34);
LABEL_18:
        v41 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v71, v41, 1, v70);
  }
}

uint64_t sub_237B694C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MLTextClassifier.DataSource(0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  sub_237B6987C(v2, v20 - v19);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v23 = *v21;
      v24 = *(v21 + 8);

      *a1 = v23;
      *(a1 + 8) = v24;
      return result;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D6F8, &qword_237C14620);

      (*(v10 + 32))(v17, v21, v8);
      (*(v10 + 16))(v14, v17, v8);
      sub_237A70684(v14, 0, &v42);
      result = (*(v10 + 8))(v17, v8);
      goto LABEL_9;
    case 3:
      sub_237B698E0(v21, v7);
      sub_237A8E3B4(v7);
      OUTLINED_FUNCTION_4_61();
      OUTLINED_FUNCTION_3_72();
      sub_237B078E8(v35, v36, v37, v38, v39, v34);

      result = sub_237B69944(v7);
      goto LABEL_9;
    case 4:
      OUTLINED_FUNCTION_4_61();
      OUTLINED_FUNCTION_3_72();
      sub_237B078E8(v26, v27, v28, v29, v30, v25);

LABEL_9:
      v40 = v43;
      *a1 = v42;
      *(a1 + 8) = v40;
      break;
    case 5:
      v31 = MEMORY[0x2383DDC00](0);
      if (!v31)
      {
        __break(1u);
        JUMPOUT(0x237B69864);
      }

      v32 = v31;
      type metadata accessor for CMLTable();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      type metadata accessor for _DataTable();
      swift_allocObject();
      result = sub_237B6C578(v33);
      *a1 = result;
      *(a1 + 8) = 0;
      break;
    default:
      *a1 = 0;
      *(a1 + 8) = -1;
      break;
  }

  return result;
}

uint64_t sub_237B6987C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B698E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier.DataSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B69944(uint64_t a1)
{
  v2 = type metadata accessor for MLTextClassifier.DataSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_237B699C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_237C060DC();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_237C0610C();
  *&v13 = MEMORY[0x28223BE20](v12 - 8).n128_u64[0];
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 dataType];
  v17 = v16;
  v39 = v15;
  if (v16 == 65552)
  {
    v18 = 2;
    goto LABEL_8;
  }

  if (v16 == 131104)
  {
LABEL_7:
    v18 = 4;
    goto LABEL_8;
  }

  if (v16 != 65600)
  {
    if (v16 != 65568)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  v18 = 8;
LABEL_8:
  v38 = v18;
  v19 = [a1 shape];
  sub_237B69D58();
  v20 = sub_237C0893C();

  v21 = sub_237A254D8(v20);
  if (!v21)
  {

LABEL_19:
    sub_237C0611C();
    sub_237B69D9C(v17, v11);
    v30 = sub_237B69F58(a2, v8);
    MEMORY[0x28223BE20](v30);
    sub_237C066EC();

    return sub_237B69FE4(a2);
  }

  v22 = v21;
  v40 = MEMORY[0x277D84F90];
  sub_237AC8A34(0, v21 & ~(v21 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v33 = v11;
    v34 = v8;
    v35 = a3;
    v36 = a1;
    v37 = a2;
    v23 = 0;
    v24 = v40;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x2383DCAF0](v23, v20);
      }

      else
      {
        v25 = *(v20 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = [v25 integerValue];

      v40 = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_237AC8A34(v28 > 1, v29 + 1, 1);
        v24 = v40;
      }

      ++v23;
      *(v24 + 16) = v29 + 1;
      *(v24 + 8 * v29 + 32) = v27;
    }

    while (v22 != v23);

    a1 = v36;
    a2 = v37;
    v8 = v34;
    v11 = v33;
    goto LABEL_19;
  }

  __break(1u);
LABEL_21:
  result = OUTLINED_FUNCTION_0_77("Fatal error");
  __break(1u);
  return result;
}

unint64_t sub_237B69D58()
{
  result = qword_27DE9AC40;
  if (!qword_27DE9AC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9AC40);
  }

  return result;
}

void *sub_237B69D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 65552:
      v3 = MEMORY[0x277D2CCC0];
      break;
    case 131104:
      v3 = MEMORY[0x277D2CC90];
      break;
    case 65600:
      v3 = MEMORY[0x277D2CCD0];
      break;
    case 65568:
      v3 = MEMORY[0x277D2CCC8];
      break;
    default:
      result = OUTLINED_FUNCTION_0_77("Fatal error");
      __break(1u);
      return result;
  }

  v4 = *v3;
  v5 = sub_237C060DC();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_237B69EA8(void *a1, int a2, id a3, uint64_t a4)
{
  v7 = a3;
  v8 = [a3 dataPointer];
  result = [a3 count];
  if ((result * a4) >> 64 == (result * a4) >> 63)
  {
    if (a1)
    {

      return memmove(a1, v8, result * a4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237B69F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B69FE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_77(uint64_t a1)
{

  return sub_237C090DC();
}

void *MLDataTable.init()()
{
  result = MEMORY[0x2383DDC00](0);
  if (result)
  {
    OUTLINED_FUNCTION_87();
    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_103();
    *(swift_allocObject() + 16) = v0;
    type metadata accessor for _DataTable();
    OUTLINED_FUNCTION_15_38();
    v2 = swift_allocObject();
    return OUTLINED_FUNCTION_61_7(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLDataTable.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*(v4 + 8))
  {
    swift_willThrow();
    sub_237C08EDC();

    OUTLINED_FUNCTION_23_30();
    *v27 = v9;
    *&v27[8] = v8;
    v10 = OUTLINED_FUNCTION_29_11();
    MEMORY[0x2383DC360](v10);
    MEMORY[0x2383DC360](39, 0xE100000000000000);
    v11 = *&v27[8];
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v12 = swift_allocError();
    *v13 = *v27;
    v13[1] = v11;
    OUTLINED_FUNCTION_19_26(v12, v13);
    *v27 = v14;
    v27[8] = v15;
  }

  else
  {
    swift_retain_n();
    OUTLINED_FUNCTION_29_11();
    v17 = sub_237B6ACC0();

    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v26 = v18;

    MLUntypedColumn.column<A>(type:)(a1, a2, v27);
    sub_2379DBC9C(v26, 0);
    v19 = v27[8];
    if (v27[8] != 255)
    {
      v20 = *v27;

      *a3 = v20;
      *(a3 + 8) = v19 & 1;
      return result;
    }

    *v27 = 0;
    *&v27[8] = 0xE000000000000000;
    sub_237C08EDC();

    strcpy(v27, "Column named '");
    v27[15] = -18;
    v21 = OUTLINED_FUNCTION_29_11();
    MEMORY[0x2383DC360](v21);
    MEMORY[0x2383DC360](0xD000000000000021, 0x8000000237C16F90);
    v22 = *v27;
    v23 = *&v27[8];
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v24 = swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v23;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 1;

    *v27 = v24;
    v27[8] = 1;
  }

  return sub_237A7C11C(v27, a3);
}

void MLDataTable.init(namedColumns:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_237B6CB9C(a1, &v5);
  if (!v2)
  {
    v4 = v6;
    *a2 = v5;
    *(a2 + 8) = v4;
  }
}

void MLDataTable.subscript.getter()
{
  OUTLINED_FUNCTION_32_15();
  v2 = v1;
  if (*(v0 + 8))
  {
    swift_willThrow();
    sub_237C08EDC();

    OUTLINED_FUNCTION_23_30();
    v11 = v4;
    v12 = v3;
    v5 = OUTLINED_FUNCTION_55();
    MEMORY[0x2383DC360](v5);
    MEMORY[0x2383DC360](34, 0xE100000000000000);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v6 = swift_allocError();
    *v7 = v11;
    v7[1] = v12;
    OUTLINED_FUNCTION_19_26(v6, v7);
  }

  else
  {
    swift_retain_n();
    OUTLINED_FUNCTION_55();
    v10 = sub_237B6ACC0();

    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v8 = swift_allocObject();
    v9 = 0;
    *(v8 + 16) = v10;
  }

  *v2 = v8;
  *(v2 + 8) = v9;
}

uint64_t MLDataTable.size.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v3 = sub_237C0925C();
    if (v3)
    {
      v4 = v3;
      sub_2379DBC9C(v1, 1);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v4 = swift_allocError();
      *v5 = v1;
    }

    sub_2379F8918(v4, v5, 1);
    return 0;
  }

  else
  {

    v6 = sub_237A30330();
    sub_237A3035C();
    v7 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v7, v8);
  }

  return v6;
}

uint64_t MLDataTable.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *v2;
  v7 = *(v2 + 8);
  if ((v7 & 1) == 0)
  {
    v11 = OUTLINED_FUNCTION_52_5();
    sub_2379DBCF4(v11, v12);
    sub_237B6C208(&v21);
    v13 = OUTLINED_FUNCTION_52_5();
    sub_2379DBC9C(v13, v14);
    v10 = v21;
    goto LABEL_5;
  }

  v8 = MEMORY[0x2383DDAC0](0);
  if (v8)
  {
    v9 = v8;
    type metadata accessor for CMLSequence();
    OUTLINED_FUNCTION_11_9();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    OUTLINED_FUNCTION_9_9(v10);
LABEL_5:
    OUTLINED_FUNCTION_11_9();
    v15 = swift_allocObject();
    *(v15 + 16) = v6;
    *(v15 + 24) = v7;
    OUTLINED_FUNCTION_11_9();
    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    *(v16 + 24) = v5;
    v17 = swift_allocObject();
    v17[2] = sub_237B6E7AC;
    v17[3] = v16;
    v17[4] = v10;
    v17[5] = sub_237B6E6B8;
    v17[6] = v15;
    sub_2379DBCF4(v6, v7);
    sub_2379DBCF4(v4, v5);
    swift_retain_n();

    v18 = sub_237B6AB04(v10, sub_237B70560, v17);
    sub_237B6CB9C(v18, &v21);

    v20 = v22;
    *a2 = v21;
    *(a2 + 8) = v20;
    return result;
  }

  __break(1u);
  OUTLINED_FUNCTION_0_63();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237B6A814(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237B6A828(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3 & 1) != 0 || (*(a4 + 16))
  {
    goto LABEL_13;
  }

  if (*(a4 + 8) != a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*a4 > result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a4 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a4 + 32) != a2)
  {
    goto LABEL_11;
  }

  if (*(a4 + 24) <= result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_237B6A8A4(uint64_t a1)
{
  sub_237A2E9F4();
  v2 = OUTLINED_FUNCTION_6_6();
  result = sub_237A017E8(v2, v3);
  if ((a1 & 0x8000000000000000) == 0 && result > a1)
  {
    return a1 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6A8E8(uint64_t a1)
{
  result = MLDataTable.size.getter();
  if ((a1 & 0x8000000000000000) == 0 && result > a1)
  {
    return a1 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6A938(uint64_t a1)
{
  result = sub_237A2E9F4();
  if ((a1 & 0x8000000000000000) == 0 && result > a1)
  {
    return a1 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6A98C(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if ((a1 & 0x8000000000000000) == 0 && result > a1)
  {
    return a1 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6A9C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BD30, &qword_237C0EC60);
    v2 = OUTLINED_FUNCTION_26_11();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_237A7B42C(a1, 1, &v4);
  return v4;
}

uint64_t sub_237B6AA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    result = OUTLINED_FUNCTION_34_17(a1, "Swift/Dictionary.swift");
    __break(1u);
  }

  else
  {
    if (a3 - a2 >= *(a1 + 16))
    {
      v6 = *(a1 + 16);
    }

    else
    {
      v6 = a3 - a2;
    }

    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C828, &qword_237C10EF8);
      v7 = OUTLINED_FUNCTION_26_11();
    }

    else
    {
      v7 = MEMORY[0x277D84F98];
    }

    v9 = v7;
    sub_237B6F9D0(a1, a2, a3, 1, &v9);
    return v9;
  }

  return result;
}

uint64_t sub_237B6AB04(uint64_t a1, void (*a2)(unint64_t *__return_ptr, unint64_t *), uint64_t a3)
{
  v6 = sub_237A2E9F4();
  sub_237A017E8(0, v6);
  if (sub_237A0290C(0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C848, &qword_237C10F18);
    v7 = sub_237C0912C();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v9 = v7;

  sub_237B6FD04(a1, a2, a3, 1, &v9);

  return v9;
}

uint64_t sub_237B6AC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    result = OUTLINED_FUNCTION_34_17(a1, "Swift/Dictionary.swift");
    __break(1u);
  }

  else
  {
    if (a3 - a2 >= *(a1 + 16))
    {
      v5 = *(a1 + 16);
    }

    else
    {
      v5 = a3 - a2;
    }

    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C838, &qword_237C10F08);
      v6 = OUTLINED_FUNCTION_26_11();
    }

    else
    {
      v6 = MEMORY[0x277D84F98];
    }

    v9 = v6;

    sub_237B70178(v7, a2, a3, 1, &v9);

    return v9;
  }

  return result;
}

uint64_t sub_237B6ACC0()
{
  OUTLINED_FUNCTION_22_27();
  if ((v4 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x1000000000000000) == 0)
  {
LABEL_13:
    type metadata accessor for CMLColumn();
    sub_237C08ECC();

    if (!v1)
    {
      return v8[2];
    }

    return v2;
  }

  v5 = sub_237B119B8(*(v0 + 16), (v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  if (v1)
  {
LABEL_8:

    return v2;
  }

  v3 = v5;
  if (v5)
  {
LABEL_11:
    type metadata accessor for CMLColumn();
    OUTLINED_FUNCTION_103();
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_50_11(v7);
    return v2;
  }

  __break(1u);
LABEL_7:
  v8[0] = v3;
  v8[1] = v2 & 0xFFFFFFFFFFFFFFLL;
  result = sub_237B119B8(*(v0 + 16), v8);
  if (v1)
  {
    goto LABEL_8;
  }

  if (result)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6AE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_13:
    sub_237C08ECC();
    if (v5)
    {
      goto LABEL_8;
    }

    v6 = v12;
LABEL_11:

    return v6;
  }

  v10 = sub_237B14EC0(*(a3 + 16), *(a4 + 16), *(a5 + 16));
  if (v5)
  {
LABEL_8:

    return v6;
  }

  v6 = v10;
  if (v10)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_7:
  result = sub_237B14EC0(*(a3 + 16), *(a4 + 16), *(a5 + 16));
  if (v5)
  {
    goto LABEL_8;
  }

  v6 = result;
  if (result)
  {
LABEL_10:

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6AF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v7 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_13:
    sub_237C08ECC();

    if (!v3)
    {
      return v12;
    }

    return v4;
  }

  v8 = sub_237B11EB0(*(a3 + 16), (a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  if (v3)
  {
LABEL_8:

    return v4;
  }

  LOBYTE(result) = sub_237A2E688(v8);
  if (result != 8)
  {
LABEL_11:
    v4 = sub_237A2E6A8(result);

    return v4;
  }

  __break(1u);
LABEL_7:
  v11[0] = v7;
  v11[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  v10 = sub_237B11EB0(*(a3 + 16), v11);
  if (v3)
  {
    goto LABEL_8;
  }

  result = sub_237A2E688(v10);
  if (result != 8)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6B09C()
{
  OUTLINED_FUNCTION_22_27();
  if ((v4 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x1000000000000000) == 0)
  {
LABEL_13:
    v14 = type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_41_13(v14, v15, v16, v17, v14, v18, v19, v20, v21);

    if (!v1)
    {
      return v22;
    }

    return v2;
  }

  v5 = OUTLINED_FUNCTION_58_9();
  v8 = sub_237B153B0(v5, v6, v7, 0);
  if (v0)
  {
LABEL_8:

    return v2;
  }

  if (v8)
  {
LABEL_11:
    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_103();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_50_11(v13);
    return v2;
  }

  __break(1u);
LABEL_7:
  v9 = OUTLINED_FUNCTION_44_14();
  result = sub_237B153B0(v9, v10, v11, 0);
  if (v0)
  {
    goto LABEL_8;
  }

  if (result)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6B184()
{
  OUTLINED_FUNCTION_22_27();
  if ((v4 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x1000000000000000) == 0)
  {
LABEL_13:
    v14 = type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_41_13(v14, v15, v16, v17, v14, v18, v19, v20, v21);

    if (!v1)
    {
      return v22;
    }

    return v2;
  }

  v5 = OUTLINED_FUNCTION_58_9();
  v8 = sub_237B14134(v5, v6, v7);
  if (v0)
  {
LABEL_8:

    return v2;
  }

  if (v8)
  {
LABEL_11:
    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_103();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_50_11(v13);
    return v2;
  }

  __break(1u);
LABEL_7:
  v9 = OUTLINED_FUNCTION_44_14();
  result = sub_237B14134(v9, v10, v11);
  if (v0)
  {
    goto LABEL_8;
  }

  if (result)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6B264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_13:
    type metadata accessor for CMLTable();
    sub_237C08ECC();
    if (v4)
    {
      goto LABEL_8;
    }

    v7 = v11[3];
LABEL_11:

    return v7;
  }

  v9 = sub_237B131C4(*(a3 + 16), (a2 & 0xFFFFFFFFFFFFFFFLL) + 32, *(a4 + 16));
  if (v4)
  {
LABEL_8:

    return v7;
  }

  v8 = v9;
  if (v9)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_7:
  v11[0] = v8;
  v11[1] = v7 & 0xFFFFFFFFFFFFFFLL;
  result = sub_237B131C4(*(a3 + 16), v11, *(a4 + 16));
  if (v4)
  {
    goto LABEL_8;
  }

  v8 = result;
  if (result)
  {
LABEL_10:
    type metadata accessor for CMLTable();
    v7 = swift_allocObject();
    *(v7 + 16) = v8;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6B3B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_13:
    type metadata accessor for CMLTable();
    sub_237C08ECC();

    if (!v4)
    {
      return v10[2];
    }

    return v6;
  }

  v8 = sub_237B13870(*(a3 + 16), (a2 & 0xFFFFFFFFFFFFFFFLL) + 32, a4 & 1);
  if (v4)
  {
LABEL_8:

    return v6;
  }

  v7 = v8;
  if (v8)
  {
LABEL_11:
    type metadata accessor for CMLTable();
    v6 = swift_allocObject();
    *(v6 + 16) = v7;

    return v6;
  }

  __break(1u);
LABEL_7:
  v10[0] = v7;
  v10[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  result = sub_237B13870(*(a3 + 16), v10, a4 & 1);
  if (v4)
  {
    goto LABEL_8;
  }

  v7 = result;
  if (result)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6B4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t *, void *), uint64_t a7)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v12 = a2 & 0xFFFFFFFFFFFFFFFLL;

      v13 = (v12 + 32);
      goto LABEL_6;
    }

LABEL_11:
    sub_237C08ECC();
    if (v7)
    {
      goto LABEL_7;
    }

    a3 = v16[3];
LABEL_9:

    return a3;
  }

  v16[0] = a1;
  v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;

  v13 = v16;
LABEL_6:
  v14 = a6(a3, a4, a5, v13);
  if (!v7)
  {
    a3 = v14;

    goto LABEL_9;
  }

LABEL_7:

  return a3;
}

void *MLDataTable.init(dictionary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = MEMORY[0x2383DDC00](0);
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_87();
  type metadata accessor for CMLTable();
  OUTLINED_FUNCTION_103();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  type metadata accessor for _DataTable();
  OUTLINED_FUNCTION_15_38();
  result = swift_allocObject();
  v7 = 0;
  result[3] = 0;
  result[4] = 0;
  v36 = result;
  result[2] = v6;
  v27 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  if ((v12 & v8) == 0)
  {
LABEL_6:
    while (1)
    {
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        v13 = 0;
        v32 = 0;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        goto LABEL_11;
      }

      v13 = *(v9 + 8 * v15);
      ++v7;
      if (v13)
      {
        v7 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  while (1)
  {
    v15 = v7;
LABEL_10:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (*(v27 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_2379E8624(*(v27 + 56) + 40 * v17, v28);
    *&v29 = v20;
    *(&v29 + 1) = v19;
    sub_237A1FCF0(v28, &v30);

LABEL_11:
    v33 = v29;
    v34[0] = v30;
    v34[1] = v31;
    v35 = v32;
    v21 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {

      *a2 = v36;
      *(a2 + 8) = 0;
      return result;
    }

    v22 = v33;
    sub_237A1FCF0(v34, &v29);
    v23 = *(&v30 + 1);
    v24 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    v25 = sub_237B71318(v23, v24);

    sub_237A303B4(v22, v21, v25);

    if (v3)
    {
      break;
    }

    result = __swift_destroy_boxed_opaque_existential_1(&v29);
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(&v29);
}

void MLDataTable.append(contentsOf:)()
{
  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_40_15();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = *v2;
    if (*(v2 + 8))
    {
      v6 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v6, v7);
      v8 = v5;
      v4 = 1;
      v1 = v5;
    }

    else
    {
      type metadata accessor for CMLTable();
      v9 = v1[2];
      v10 = v5[2];
      v11 = OUTLINED_FUNCTION_3_22();
      sub_2379DBCF4(v11, v12);
      v13 = OUTLINED_FUNCTION_4_26();
      sub_2379DBCF4(v13, v14);

      v15 = sub_237A3027C(v9, v10);
      v16 = OUTLINED_FUNCTION_4_26();
      sub_2379DBC9C(v16, v17);
      v18 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v18, v19);
      v20 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v20, v21);
      type metadata accessor for _DataTable();
      OUTLINED_FUNCTION_15_38();
      v1 = swift_allocObject();
      v4 = 0;
      v1[3] = 0;
      v1[4] = 0;
      v1[2] = v15;
    }
  }

  *v0 = v1;
  *(v0 + 8) = v4;
  OUTLINED_FUNCTION_25_9();
}

void MLDataTable.columnTypes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_65_6();
  a27 = v29;
  a28 = v30;
  if (*(v28 + 8))
  {
    OUTLINED_FUNCTION_42_14();

    sub_237C085AC();
  }

  else
  {
    v32 = *v28;
    v33 = v32[2];
    v34 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v34, v35);
    v36 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v36, v37);

    sub_237C085AC();
    sub_237B6C208(&a14);
    v38 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v38, v39);
    v40 = 0;
    v95 = v33;
    while (1)
    {
      sub_237A2E9F4();
      v41 = OUTLINED_FUNCTION_6_6();
      if (v40 == sub_237A017E8(v41, v42))
      {
        break;
      }

      sub_237A2E9C8(v40);
      v43 = sub_237A2DE60();
      v45 = v44;

      sub_237A2E9F4();
      v46 = OUTLINED_FUNCTION_6_6();
      v48 = sub_237A017E8(v46, v47);
      if (v40 >= v48)
      {
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
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
LABEL_96:
        __break(1u);
        OUTLINED_FUNCTION_35_16(v48, "CreateML/SequenceType.swift");
        __break(1u);

        OUTLINED_FUNCTION_24_29();
        sub_237C08EDC();

        OUTLINED_FUNCTION_45_13();
        v94 = sub_237C0924C();
        MEMORY[0x2383DC360](v94);

        OUTLINED_FUNCTION_53_11();
        OUTLINED_FUNCTION_21_30();
        OUTLINED_FUNCTION_7_5("Fatal error");
        __break(1u);
LABEL_97:
        sub_237C0932C();
        __break(1u);
        JUMPOUT(0x237B6BFA8);
      }

      v49 = OUTLINED_FUNCTION_11_43();
      v51 = sub_237B6AF98(v49, v50, v33);
      swift_isUniquelyReferenced_nonNull_native();
      switch(v51)
      {
        case 1:
          OUTLINED_FUNCTION_6_56();
          OUTLINED_FUNCTION_1_73();
          if (v52)
          {
            goto LABEL_86;
          }

          OUTLINED_FUNCTION_31_19();
          v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D700, &qword_237C14628);
          v48 = OUTLINED_FUNCTION_7_45(v73);
          if ((v48 & 1) == 0)
          {
            goto LABEL_42;
          }

          v74 = OUTLINED_FUNCTION_11_43();
          sub_237ACAC78(v74, v75);
          OUTLINED_FUNCTION_5_58();
          if (!v57)
          {
            goto LABEL_97;
          }

          v51 = v48;
LABEL_42:
          v58 = a14;
          if (v33)
          {
            *(a14[7] + v51) = 1;
            goto LABEL_59;
          }

          a14[(v51 >> 6) + 8] |= 1 << v51;
          v90 = (v58[6] + 16 * v51);
          *v90 = v43;
          v90[1] = v45;
          *(v58[7] + v51) = 1;
          v91 = v58[2];
          v52 = __OFADD__(v91, 1);
          v85 = v91 + 1;
          if (v52)
          {
            goto LABEL_95;
          }

          goto LABEL_79;
        case 2:
          OUTLINED_FUNCTION_6_56();
          OUTLINED_FUNCTION_1_73();
          if (v52)
          {
            goto LABEL_89;
          }

          OUTLINED_FUNCTION_31_19();
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D700, &qword_237C14628);
          if ((OUTLINED_FUNCTION_7_45(v65) & 1) == 0)
          {
            goto LABEL_28;
          }

          v66 = OUTLINED_FUNCTION_11_43();
          sub_237ACAC78(v66, v67);
          OUTLINED_FUNCTION_5_58();
          if (!v57)
          {
            goto LABEL_97;
          }

          v51 = v68;
LABEL_28:
          v58 = a14;
          if (v33)
          {
            v63 = a14[7];
            v64 = 2;
            goto LABEL_58;
          }

          OUTLINED_FUNCTION_0_78();
          OUTLINED_FUNCTION_16_28(v86);
          if (v52)
          {
            goto LABEL_90;
          }

          goto LABEL_79;
        case 3:
          OUTLINED_FUNCTION_6_56();
          OUTLINED_FUNCTION_1_73();
          if (v52)
          {
            goto LABEL_84;
          }

          OUTLINED_FUNCTION_31_19();
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D700, &qword_237C14628);
          if ((OUTLINED_FUNCTION_7_45(v69) & 1) == 0)
          {
            goto LABEL_35;
          }

          v70 = OUTLINED_FUNCTION_11_43();
          sub_237ACAC78(v70, v71);
          OUTLINED_FUNCTION_5_58();
          if (!v57)
          {
            goto LABEL_97;
          }

          v51 = v72;
LABEL_35:
          v58 = a14;
          if (v33)
          {
            v63 = a14[7];
            v64 = 3;
            goto LABEL_58;
          }

          OUTLINED_FUNCTION_0_78();
          OUTLINED_FUNCTION_16_28(v87);
          if (v52)
          {
            goto LABEL_91;
          }

          goto LABEL_79;
        case 4:
          OUTLINED_FUNCTION_6_56();
          OUTLINED_FUNCTION_1_73();
          if (v52)
          {
            goto LABEL_87;
          }

          OUTLINED_FUNCTION_31_19();
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D700, &qword_237C14628);
          if ((OUTLINED_FUNCTION_7_45(v59) & 1) == 0)
          {
            goto LABEL_21;
          }

          v60 = OUTLINED_FUNCTION_11_43();
          sub_237ACAC78(v60, v61);
          OUTLINED_FUNCTION_5_58();
          if (!v57)
          {
            goto LABEL_97;
          }

          v51 = v62;
LABEL_21:
          v58 = a14;
          if (v33)
          {
            v63 = a14[7];
            v64 = 4;
            goto LABEL_58;
          }

          OUTLINED_FUNCTION_0_78();
          OUTLINED_FUNCTION_16_28(v84);
          if (v52)
          {
            goto LABEL_96;
          }

          goto LABEL_79;
        case 5:
          OUTLINED_FUNCTION_6_56();
          OUTLINED_FUNCTION_1_73();
          if (v52)
          {
            goto LABEL_88;
          }

          OUTLINED_FUNCTION_31_19();
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D700, &qword_237C14628);
          if ((OUTLINED_FUNCTION_7_45(v76) & 1) == 0)
          {
            goto LABEL_49;
          }

          v77 = OUTLINED_FUNCTION_11_43();
          sub_237ACAC78(v77, v78);
          OUTLINED_FUNCTION_5_58();
          if (!v57)
          {
            goto LABEL_97;
          }

          v51 = v79;
LABEL_49:
          v58 = a14;
          if (v33)
          {
            v63 = a14[7];
            v64 = 6;
            goto LABEL_58;
          }

          OUTLINED_FUNCTION_0_78();
          OUTLINED_FUNCTION_16_28(v92);
          if (v52)
          {
            goto LABEL_93;
          }

          goto LABEL_79;
        case 6:
          OUTLINED_FUNCTION_6_56();
          OUTLINED_FUNCTION_1_73();
          if (v52)
          {
            goto LABEL_85;
          }

          OUTLINED_FUNCTION_31_19();
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D700, &qword_237C14628);
          if ((OUTLINED_FUNCTION_7_45(v80) & 1) == 0)
          {
            goto LABEL_56;
          }

          v81 = OUTLINED_FUNCTION_11_43();
          sub_237ACAC78(v81, v82);
          OUTLINED_FUNCTION_5_58();
          if (!v57)
          {
            goto LABEL_97;
          }

          v51 = v83;
LABEL_56:
          v58 = a14;
          if (v33)
          {
            v63 = a14[7];
            v64 = 5;
LABEL_58:
            *(v63 + v51) = v64;
LABEL_59:
          }

          else
          {
            OUTLINED_FUNCTION_0_78();
            OUTLINED_FUNCTION_16_28(v93);
            if (v52)
            {
              goto LABEL_94;
            }

LABEL_79:
            v58[2] = v85;
          }

          v33 = v95;
          ++v40;
          break;
        default:
          OUTLINED_FUNCTION_6_56();
          OUTLINED_FUNCTION_1_73();
          if (v52)
          {
            goto LABEL_83;
          }

          OUTLINED_FUNCTION_31_19();
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D700, &qword_237C14628);
          if ((OUTLINED_FUNCTION_7_45(v53) & 1) == 0)
          {
            goto LABEL_14;
          }

          v54 = OUTLINED_FUNCTION_11_43();
          sub_237ACAC78(v54, v55);
          OUTLINED_FUNCTION_5_58();
          if (!v57)
          {
            goto LABEL_97;
          }

          v51 = v56;
LABEL_14:
          v58 = a14;
          if (v33)
          {
            *(a14[7] + v51) = 0;
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_0_78();
          *(v88 + v51) = 0;
          v89 = v58[2];
          v52 = __OFADD__(v89, 1);
          v85 = v89 + 1;
          if (v52)
          {
            goto LABEL_92;
          }

          goto LABEL_79;
      }
    }

    sub_2379DBC9C(v32, 0);
    OUTLINED_FUNCTION_42_14();
  }
}

void MLDataTable.subscript.getter(uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  OUTLINED_FUNCTION_64_5();
  MLDataTable.subscript.getter();
  OUTLINED_FUNCTION_60_11();
  v7 = MLUntypedColumn.column<A>(type:)(a2, a3, a4);
  OUTLINED_FUNCTION_68_3(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_237B6C208@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  if (!v3)
  {
    v4 = sub_237B0DE88(*(*(v1 + 16) + 16));
    if (v4)
    {
      type metadata accessor for CMLSequence();
      OUTLINED_FUNCTION_11_9();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v1 + 24) = OUTLINED_FUNCTION_9_9(v5);

      v3 = *(v1 + 24);
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);

    result = sub_237C090DC();
    __break(1u);
    return result;
  }

LABEL_4:
  *a1 = v3;
}

uint64_t sub_237B6C2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_65_6();
  a27 = v29;
  a28 = v30;
  if (*(v28 + 32))
  {
LABEL_15:
    OUTLINED_FUNCTION_42_14();
  }

  else
  {
    sub_237B6C208(&a14);
    v31 = 0;
    v32 = MEMORY[0x277D84F98];
    while (1)
    {
      sub_237A2E9F4();
      v33 = OUTLINED_FUNCTION_6_6();
      if (v31 == sub_237A017E8(v33, v34))
      {
        break;
      }

      sub_237A2E9C8(v31);
      v35 = sub_237A2DE60();
      v37 = v36;

      sub_237A2E9F4();
      v38 = OUTLINED_FUNCTION_6_6();
      v40 = sub_237A017E8(v38, v39);
      if (v31 >= v40)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      swift_isUniquelyReferenced_nonNull_native();
      a14 = v32;
      v41 = OUTLINED_FUNCTION_11_43();
      v40 = sub_237ACAC78(v41, v42);
      if (__OFADD__(v32[2], (v43 & 1) == 0))
      {
        goto LABEL_19;
      }

      v44 = v40;
      v45 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3E8, &qword_237C13B50);
      v40 = sub_237C090AC();
      if (v40)
      {
        v46 = OUTLINED_FUNCTION_11_43();
        v40 = sub_237ACAC78(v46, v47);
        if ((v45 & 1) != (v48 & 1))
        {
          goto LABEL_22;
        }

        v44 = v40;
      }

      if (v45)
      {

        v32 = a14;
        *(a14[7] + 8 * v44) = v31;
      }

      else
      {
        v32 = a14;
        a14[(v44 >> 6) + 8] |= 1 << v44;
        v49 = (v32[6] + 16 * v44);
        *v49 = v35;
        v49[1] = v37;
        *(v32[7] + 8 * v44) = v31;
        v50 = v32[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_20;
        }

        v32[2] = v52;
      }

      ++v31;
    }

    *(v28 + 32) = v32;

    v40 = *(v28 + 32);
    if (v40)
    {
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    OUTLINED_FUNCTION_35_16(v40, "CreateML/SequenceType.swift");
    __break(1u);

    OUTLINED_FUNCTION_24_29();
    sub_237C08EDC();

    OUTLINED_FUNCTION_45_13();
    v55 = sub_237C0924C();
    MEMORY[0x2383DC360](v55);

    OUTLINED_FUNCTION_53_11();
    OUTLINED_FUNCTION_21_30();
    OUTLINED_FUNCTION_7_5("Fatal error");
    __break(1u);
LABEL_22:
    result = sub_237C0932C();
    __break(1u);
  }

  return result;
}

void *sub_237B6C578(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
  return v1;
}

uint64_t sub_237B6C588()
{
  *(v0 + 24) = 0;

  *(v0 + 32) = 0;
}

uint64_t sub_237B6C5C0()
{

  return v0;
}

uint64_t sub_237B6C5F0()
{
  sub_237B6C5C0();
  OUTLINED_FUNCTION_15_38();

  return swift_deallocClassInstance();
}

id MLDataTable.error.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

void sub_237B6C670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_65_6();
  a27 = v29;
  a28 = v30;
  if (v28[1])
  {
    goto LABEL_16;
  }

  v31 = v28;
  v32 = *v28;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_16;
  }

  v63 = *v31;
  v34 = *(v31 + 8);
  v35 = MEMORY[0x2383DDC00](0);
  if (!v35)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_87();
  type metadata accessor for CMLTable();
  OUTLINED_FUNCTION_103();
  isUniquelyReferenced_nonNull_native = swift_allocObject();
  *(isUniquelyReferenced_nonNull_native + 16) = v32;
  type metadata accessor for _DataTable();
  OUTLINED_FUNCTION_15_38();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_61_7(v36);
  if ((v34 & 1) == 0)
  {

    v38 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v38, v39);
    sub_237B6C208(&a14);
    v40 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v40, v41);
    goto LABEL_8;
  }

  v35 = MEMORY[0x2383DDAC0](0);
  if (v35)
  {
    OUTLINED_FUNCTION_87();
    type metadata accessor for CMLSequence();
    OUTLINED_FUNCTION_11_9();
    v37 = swift_allocObject();
    *(v37 + 16) = v32;
    OUTLINED_FUNCTION_9_9(v37);
LABEL_8:
    sub_237A2E9F4();
    v42 = OUTLINED_FUNCTION_6_6();
    if (sub_237A017E8(v42, v43))
    {
      v44 = 0;
      isUniquelyReferenced_nonNull_native = 0;
      while (1)
      {
        sub_237A2E9C8(v44);
        v45 = sub_237A2DE60();
        v47 = v46;

        sub_237A2E9F4();
        v48 = OUTLINED_FUNCTION_6_6();
        v35 = sub_237A017E8(v48, v49);
        if (v44 >= v35)
        {
          break;
        }

        v50 = v34;
        if (v34)
        {
          swift_willThrow();
          isUniquelyReferenced_nonNull_native = 0;
          OUTLINED_FUNCTION_24_29();
          sub_237C08EDC();

          a14 = 0xD00000000000001FLL;
          a15 = 0x8000000237C199C0;
          MEMORY[0x2383DC360](v45, v47);
          MEMORY[0x2383DC360](34, 0xE100000000000000);
          v51 = a14;
          v52 = a15;
          sub_2379E8AF0();
          OUTLINED_FUNCTION_50();
          v53 = swift_allocError();
          *v54 = v51;
          v54[1] = v52;
          OUTLINED_FUNCTION_19_26(v53, v54);
        }

        else
        {
          swift_retain_n();
          v59 = sub_237B6ACC0();

          type metadata accessor for _UntypedColumn();
          OUTLINED_FUNCTION_103();
          v55 = swift_allocObject();
          v56 = 0;
          v55[2] = v59;
        }

        ++v44;
        a14 = v55;
        LOBYTE(a15) = v56;
        sub_237B6C9CC();

        sub_2379DBC9C(a14, a15);
        sub_237A2E9F4();
        v57 = OUTLINED_FUNCTION_6_6();
        v34 = v50;
        if (v44 == sub_237A017E8(v57, v58))
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_15:

    sub_237B6C588();

    sub_2379DBC9C(v63, v34);
LABEL_16:
    OUTLINED_FUNCTION_42_14();
    return;
  }

LABEL_19:
  __break(1u);
  OUTLINED_FUNCTION_35_16(v35, "CreateML/SequenceType.swift");
  __break(1u);

  OUTLINED_FUNCTION_24_29();
  sub_237C08EDC();

  OUTLINED_FUNCTION_23_30();
  a14 = (v61 + 3);
  a15 = v60;
  v62 = sub_237C0924C();
  MEMORY[0x2383DC360](v62);

  OUTLINED_FUNCTION_53_11();
  OUTLINED_FUNCTION_21_30();
  OUTLINED_FUNCTION_7_5("Fatal error");
  __break(1u);
}

void sub_237B6C9CC()
{
  OUTLINED_FUNCTION_40_15();
  if (v3)
  {
    v4 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v5 = sub_237C0925C();
    if (!v5)
    {
      OUTLINED_FUNCTION_50();
      v6 = swift_allocError();
      *v20 = v1;
      goto LABEL_9;
    }

    v6 = v5;
    v7 = OUTLINED_FUNCTION_1_21();
  }

  else
  {
    if ((v2[8] & 1) == 0)
    {
      v13 = *(*v2 + 16);
      v14 = OUTLINED_FUNCTION_3_22();
      sub_2379DBCF4(v14, v15);
      v16 = OUTLINED_FUNCTION_52_5();
      sub_2379DBCF4(v16, v17);

      v18 = OUTLINED_FUNCTION_57_9();
      sub_237A303B4(v18, v19, v13);
      v23 = OUTLINED_FUNCTION_52_5();
      sub_2379DBC9C(v23, v24);

      v25 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v25, v26);
      return;
    }

    v9 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v9, v10);
    sub_237C08EDC();

    v11 = OUTLINED_FUNCTION_57_9();
    MEMORY[0x2383DC360](v11);
    MEMORY[0x2383DC360](39, 0xE100000000000000);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v6 = swift_allocError();
    *v12 = 0xD000000000000021;
    v12[1] = 0x8000000237C199E0;
    OUTLINED_FUNCTION_19_26(v6, v12);
    swift_willThrow();
    v7 = OUTLINED_FUNCTION_3_22();
  }

  sub_2379DBC9C(v7, v8);
LABEL_9:
  v21 = OUTLINED_FUNCTION_47_15();
  sub_2379DBC9C(v21, v22);
  *v0 = v6;
  *(v0 + 8) = 1;
}

void sub_237B6CB9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  if (!MEMORY[0x2383DDC00](0))
  {
LABEL_17:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_87();
  type metadata accessor for CMLTable();
  OUTLINED_FUNCTION_103();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  type metadata accessor for _DataTable();
  OUTLINED_FUNCTION_15_38();
  v7 = swift_allocObject();
  v8 = 0;
  v10 = a1 + 64;
  v9 = *(a1 + 64);
  v7[2] = v6;
  v7[3] = 0;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v37 = a1;
  v38 = v7;
  v7[4] = 0;
  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  if ((v12 & v9) == 0)
  {
LABEL_6:
    while (1)
    {
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v15 >= v14)
      {

        *a2 = v38;
        *(a2 + 8) = 0;
        return;
      }

      v13 = *(v10 + 8 * v15);
      ++v8;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  while (1)
  {
    v15 = v8;
LABEL_9:
    v16 = (v15 << 10) | (16 * __clz(__rbit64(v13)));
    v17 = *(a1 + 56) + v16;
    v18 = *v17;
    if (*(v17 + 8))
    {
      swift_getErrorValue();
      sub_2379DBCF4(v18, 1);
      sub_237C0927C();
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v31 = 0;
      *(v31 + 8) = 0xE000000000000000;
      *(v31 + 16) = 0u;
      *(v31 + 32) = 0u;
      *(v31 + 48) = 0;
      swift_willThrow();

      sub_2379DBC9C(v18, 1);

      return;
    }

    v19 = (*(a1 + 48) + v16);
    v39 = v4;
    v21 = *v19;
    v20 = v19[1];
    v22 = v18[2];
    v23 = OUTLINED_FUNCTION_38_16();
    sub_2379DBCF4(v23, v24);
    v25 = OUTLINED_FUNCTION_38_16();
    sub_2379DBCF4(v25, v26);

    sub_237A303B4(v21, v20, v22);
    v4 = v39;
    if (v39)
    {
      break;
    }

    v13 &= v13 - 1;

    v27 = OUTLINED_FUNCTION_38_16();
    sub_2379DBC9C(v27, v28);
    v29 = OUTLINED_FUNCTION_38_16();
    sub_2379DBC9C(v29, v30);

    v8 = v15;
    a1 = v37;
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  v32 = OUTLINED_FUNCTION_38_16();
  sub_2379DBC9C(v32, v33);

  v34 = OUTLINED_FUNCTION_38_16();
  sub_2379DBC9C(v34, v35);
}

void sub_237B6CE38(uint64_t a1@<X8>)
{
  MLDataTable.subscript.getter();
  *a1 = v2;
  *(a1 + 8) = v3;
}

uint64_t sub_237B6CE90(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;

  sub_2379DBCF4(v7, v5);
  return MLDataTable.subscript.setter(&v7, v3, v4);
}

void sub_237B6CF70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = *a1;
  v7 = *(a1 + 8);
  v8 = *v3;
  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = MEMORY[0x2383DDAC0](0);
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    type metadata accessor for CMLSequence();
    OUTLINED_FUNCTION_11_9();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v13 = OUTLINED_FUNCTION_9_9(v12);
  }

  else
  {

    sub_237B6C208(&v41);
    v14 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v14, v15);
    v12 = v41;
  }

  v40[0] = a2;
  v40[1] = a3;
  MEMORY[0x28223BE20](v13);
  v38[2] = v40;
  v16 = sub_237AC1AB8(sub_2379F57B8, v38, v12);

  if (v16)
  {
    v17 = OUTLINED_FUNCTION_29_11();
    sub_237B6D504(v17, v18);
  }

  if (v9)
  {
    v40[0] = v8;
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v20 = sub_237C0925C();
    if (v20)
    {
      v21 = v20;
      v22 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v22, v30);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v21 = swift_allocError();
      *v31 = v8;
    }

    v32 = OUTLINED_FUNCTION_47_15();
    sub_2379DBC9C(v32, v33);
    *v4 = v21;
    *(v4 + 8) = 1;
  }

  else if ((v7 & 1) == 0)
  {
    v23 = *(v39 + 16);
    v24 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v24, v25);
    v26 = OUTLINED_FUNCTION_4_26();
    sub_2379DBCF4(v26, v27);

    v28 = OUTLINED_FUNCTION_29_11();
    sub_237A303B4(v28, v29, v23);
    v34 = OUTLINED_FUNCTION_4_26();
    sub_2379DBC9C(v34, v35);

    v36 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v36, v37);
  }
}

void MLDataTable.subscript.modify()
{
  OUTLINED_FUNCTION_24_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *v6 = v7;
  v7[3] = v2;
  v7[4] = v0;
  v7[2] = v4;
  OUTLINED_FUNCTION_0_31();
  MLDataTable.subscript.getter();
  OUTLINED_FUNCTION_25_9();
}

uint64_t sub_237B6D2EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a2 + a3;
  v7 = *(a2 + a3 - 16);
  v8 = *(v6 - 8);
  v9 = *(a1 + 8);
  v14 = *a1;
  v15 = v9;
  result = MLDataTable.subscript.getter(v7, v8, &v12);
  v11 = v13;
  *a4 = v12;
  *(a4 + 8) = v11;
  return result;
}

void sub_237B6D34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  sub_2379DBCF4(v3, v4);
  MLDataTable.subscript.setter();
}

void MLDataTable.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_67_7();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = __swift_coroFrameAllocStub(0x38uLL);
  *v15 = v16;
  v16[5] = v7;
  v16[6] = v5;
  v16[3] = v11;
  v16[4] = v9;
  v16[2] = v13;
  OUTLINED_FUNCTION_0_31();
  OUTLINED_FUNCTION_55();
  MLDataTable.subscript.getter(v9, v7, v17);
  OUTLINED_FUNCTION_66_7();
}

void sub_237B6D454()
{
  OUTLINED_FUNCTION_24_11();
  v1 = **v0;
  v2 = *(*v0 + 8);
  if (v3)
  {

    sub_2379DBCF4(v1, v2);
    MLDataTable.subscript.setter();
    v4 = OUTLINED_FUNCTION_47_15();
    sub_2379DBC9C(v4, v5);
  }

  else
  {

    MLDataTable.subscript.setter();
  }

  OUTLINED_FUNCTION_25_9();

  free(v6);
}

void sub_237B6D504(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v5 = sub_237C0925C();
    if (v5)
    {
      v6 = v5;
      sub_2379DBC9C(v3, 1);
    }

    else
    {
      v6 = swift_allocError();
      *v11 = v3;
    }

    sub_237B708C4(v6, 1);
  }

  else
  {
    v9 = v3[2];
    sub_2379DBCF4(v3, 0);

    sub_237B6ADC8(a1, a2, v9);
    sub_2379DBC9C(v3, 0);

    sub_237B708C4(v10, 0);
  }
}

uint64_t MLDataTable.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v47 = a4;
  MEMORY[0x28223BE20](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  HIDWORD(v48) = *(v4 + 8);
  result = MEMORY[0x2383DDC00](0, v6);
  if (result)
  {
    v8 = result;
    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_103();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    type metadata accessor for _DataTable();
    OUTLINED_FUNCTION_15_38();
    v10 = swift_allocObject();
    v10[3] = 0;
    v10[4] = 0;
    v10[2] = v9;
    v52 = v10;
    LOBYTE(v53) = 0;
    v11 = OUTLINED_FUNCTION_11_43();
    v12(v11);
    sub_237C0885C();
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_237C08D7C();
      v13 = v51;
      if (!v51)
      {
        break;
      }

      v14 = v50;
      if ((v48 & 0x100000000) != 0)
      {
        swift_willThrow();
        v50 = 0;
        v51 = 0xE000000000000000;
        sub_237C08EDC();

        v50 = 0xD00000000000001FLL;
        v51 = 0x8000000237C199C0;
        v15 = OUTLINED_FUNCTION_11_43();
        MEMORY[0x2383DC360](v15);
        MEMORY[0x2383DC360](34, 0xE100000000000000);
        v16 = v50;
        v17 = v51;
        sub_2379E8AF0();
        OUTLINED_FUNCTION_50();
        v18 = swift_allocError();
        *v19 = v16;
        v19[1] = v17;
        OUTLINED_FUNCTION_19_26(v18, v19);
        sub_2379DBC9C(v20, 1);
      }

      else
      {
        swift_retain_n();
        OUTLINED_FUNCTION_11_43();
        v21 = sub_237B6ACC0();

        type metadata accessor for _UntypedColumn();
        OUTLINED_FUNCTION_103();
        v22 = swift_allocObject();
        v22[2] = v21;
        v23 = sub_2379DBCF4(v22, 0);
        sub_237B6C670(v23, v24, v25, v26, v27, v28, v29, v30, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, vars0, vars8);
        v50 = v22;
        LOBYTE(v51) = 0;
        sub_237B6CF70(&v50, v14, v13);

        v31 = OUTLINED_FUNCTION_88();
        sub_2379DBC9C(v31, v32);
        v33 = v52;
        if (v53)
        {
          v34 = v52;
          v35 = OUTLINED_FUNCTION_88();
          sub_2379DBC9C(v35, v36);
          sub_2379DBC9C(v33, 1);
        }

        else
        {
          v37 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v37, v38);
          sub_237B6C588();
          v39 = OUTLINED_FUNCTION_88();
          sub_2379DBC9C(v39, v40);
          v41 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v41, v42);
        }
      }
    }

    v43 = OUTLINED_FUNCTION_55();
    result = v44(v43);
    v45 = v53;
    *v47 = v52;
    *(v47 + 8) = v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLDataTable.subscript.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_15();
  v4 = v3;
  v14 = *v2;
  LOBYTE(v15) = *(v2 + 8);
  result = MLDataTable.size.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF10, &qword_237C0D670);
    v6 = sub_237A365A8();
    OUTLINED_FUNCTION_63_6(v6, v7, v8, v9, v10, v11, v12, v13, 0);
    sub_237C088CC();
    return MLDataTable.subscript.getter(v4, v14, v15);
  }

  return result;
}

void sub_237B6DAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_7();
  OUTLINED_FUNCTION_40_15();
  if (v26)
  {
    v27 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v28 = sub_237C0925C();
    if (v28)
    {
      v29 = v28;
      v30 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v30, v31);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v29 = swift_allocError();
      *v38 = v21;
    }

    v39 = OUTLINED_FUNCTION_47_15();
    sub_2379DBC9C(v39, v40);
    *v20 = v29;
    *(v20 + 8) = 1;
  }

  else
  {
    v32 = v25;
    v33 = v24;
    v34 = v23;
    v35 = v22;

    sub_237A3047C(v35, v34, v33, v32);
    v36 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v36, v37);
  }

  OUTLINED_FUNCTION_66_7();
}

void MLDataTable.randomSample(by:seed:)()
{
  OUTLINED_FUNCTION_8_19();
  if (v9)
  {
    OUTLINED_FUNCTION_27_6(v1, v2, v3, v4, v5, v6, v7, v8, v27, v28);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_26_10(v10, v11, MEMORY[0x277D84950], v12))
    {
      v13 = OUTLINED_FUNCTION_3_29();
      sub_2379DBC9C(v13, v19);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v20 = swift_allocError();
      OUTLINED_FUNCTION_15_13(v20, v21);
    }

    v22 = 1;
    goto LABEL_8;
  }

  v14 = v1;
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = *(*(v0 + 16) + 16);
    v16 = OUTLINED_FUNCTION_4_26();
    sub_2379DBCF4(v16, v17);
    v18 = sub_237B13D04(v15, v14);
    v23 = v18;
    if (v18)
    {
      type metadata accessor for CMLTable();
      OUTLINED_FUNCTION_103();
      *(swift_allocObject() + 16) = v23;
      v24 = OUTLINED_FUNCTION_4_26();
      sub_2379DBC9C(v24, v25);
      type metadata accessor for _DataTable();
      OUTLINED_FUNCTION_15_38();
      v26 = swift_allocObject();
      OUTLINED_FUNCTION_4_62(v26);
LABEL_8:
      OUTLINED_FUNCTION_11_19(v22);
      return;
    }
  }

  __break(1u);
}

void sub_237B6DD28(uint64_t a1, uint64_t a2, uint64_t a3, void x3_0, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  OUTLINED_FUNCTION_64_5();
  v26[0] = v9;
  sub_237C089DC();

  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_63_6(WitnessTable, v11, v12, v13, v14, v15, v16, v17, v26[0]);
  MLUntypedColumn.init<A>(_:)();
  OUTLINED_FUNCTION_60_11();
  sub_237B6DDE8(v6, v26, a2, a3);
  OUTLINED_FUNCTION_68_3(v18, v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1]);
}

void sub_237B6DDE8(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (*(v4 + 8))
  {
    v16 = *v4;
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (sub_237C0925C())
    {
      sub_2379DBC9C(v5, 1);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v15 = v5;
    }

    v14 = 1;
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 8);

    sub_237B6DF04(v10, v11, a3, a4, a1 & 1, &v16);
    v12 = OUTLINED_FUNCTION_52_5();
    sub_2379DBC9C(v12, v13);
    v14 = 0;
  }

  OUTLINED_FUNCTION_11_19(v14);
}

void sub_237B6DF04(void *a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, void *a6@<X8>)
{
  if (a2)
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000052, 0x8000000237C1D890);
    swift_getErrorValue();
    v8 = a1;
    sub_237C0927C();
    sub_2379DBC9C(a1, 1);
    MEMORY[0x2383DC360](0, 0xE000000000000000);

    MEMORY[0x2383DC360](39, 0xE100000000000000);
    sub_2379E8AF0();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0;
    swift_willThrow();
  }

  else
  {
    sub_2379DBCF4(a1, 0);

    v15 = sub_237A30AF4(v14, a3, a4, a5 & 1);
    if (v6)
    {

      sub_2379DBC9C(a1, 0);
    }

    else
    {
      v16 = v15;
      sub_2379DBC9C(a1, 0);

      type metadata accessor for _DataTable();
      v17 = swift_allocObject();
      v17[3] = 0;
      v17[4] = 0;
      v17[2] = v16;
      *a6 = v17;
    }
  }
}

void MLDataTable.join(with:on:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_7();
  a19 = v21;
  a20 = v22;
  v24 = *v23;
  v25 = *(v23 + 8);
  v27 = *v20;
  v28 = *(v20 + 8);
  v30 = v29;
  v32 = v31;
  switch(*v26)
  {
    case 1:
      v33 = 1702131055;
      goto LABEL_6;
    case 2:
      a9 = 1952867692;
      v34 = 0xE400000000000000;
      goto LABEL_8;
    case 3:
      v35 = 0x7468676972;
      goto LABEL_7;
    default:
      v33 = 1701736041;
LABEL_6:
      v35 = v33 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
LABEL_7:
      a9 = v35;
      v34 = 0xE500000000000000;
LABEL_8:
      a10 = v34;

      v36 = sub_237A2CDD8(v27, v28, v24, v25, v30, &a9);
      v38 = v37;

      *v32 = v36;
      *(v32 + 8) = v38 & 1;
      OUTLINED_FUNCTION_66_7();
      return;
  }
}

void *sub_237B6E1C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v44 = *a1;
  v48 = *a2;
  v10 = MEMORY[0x2383DDAC0](0);
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = v10;
  type metadata accessor for CMLSequence();
  inited = swift_initStackObject();
  *(inited + 16) = v11;
  OUTLINED_FUNCTION_9_9(inited);
  v13 = *(a3 + 16);
  v43 = a4;
  if (v13)
  {
    type metadata accessor for CMLFeatureValue();
    v14 = a3 + 40;
    while (1)
    {
      swift_bridgeObjectRetain_n();
      v15 = sub_237A2E7CC();
      if (v5)
      {
        break;
      }

      v16 = v15;

      sub_237A2DE9C(v16);

      v14 += 16;
      if (!--v13)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
LABEL_24:
      swift_unexpectedError();
      __break(1u);
    }
  }

  v42 = a5;
  sub_237B6C208(&v46);
  v17 = v46;
  sub_237B6C208(&v46);
  v18 = v46;
  v46 = v17;
  v47 = 0;
  sub_237A2E9F4();
  v19 = OUTLINED_FUNCTION_6_6();
  if (!sub_237A017E8(v19, v20))
  {

    goto LABEL_18;
  }

  v21 = 1;
  do
  {
    v22 = MLDataTable.ColumnNames.subscript.getter(v21 - 1);
    v24 = v23;
    sub_237A2E9F4();
    v25 = OUTLINED_FUNCTION_6_6();
    v27 = sub_237A017E8(v25, v26);
    if (v21 - 1 >= v27)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v47 = v21;
    v45[0] = v22;
    v45[1] = v24;
    MEMORY[0x28223BE20](v27);
    v41[2] = v45;
    if (sub_237AC1AB8(sub_2379F345C, v41, v18))
    {
      type metadata accessor for CMLFeatureValue();

      v28 = sub_237A2E7CC();
      if (v5)
      {
        goto LABEL_24;
      }

      v29 = v28;

      sub_237A2DE9C(v29);
    }

    else
    {
    }

    sub_237A2E9F4();
    v30 = OUTLINED_FUNCTION_6_6();
  }

  while (v21++ != sub_237A017E8(v30, v31));

LABEL_18:

  a5 = v42;
LABEL_19:
  v33 = *(v44 + 16);
  v34 = *(v48 + 16);
  v36 = *v43;
  v35 = v43[1];
  swift_retain_n();
  swift_retain_n();

  v37 = sub_237B6AE64(v36, v35, v33, v34, inited);
  if (v6)
  {

    swift_setDeallocating();
    sub_237A2E6E8();
    OUTLINED_FUNCTION_11_9();
    return swift_deallocClassInstance();
  }

  else
  {
    v39 = v37;

    swift_setDeallocating();
    sub_237A2E6E8();
    OUTLINED_FUNCTION_11_9();
    swift_deallocClassInstance();

    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_103();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    type metadata accessor for _DataTable();
    OUTLINED_FUNCTION_15_38();
    result = swift_allocObject();
    result[3] = 0;
    result[4] = 0;
    result[2] = v40;
    *a5 = result;
  }

  return result;
}

uint64_t MLDataTable.JoinType.hashValue.getter()
{
  v1 = *v0;
  sub_237C093CC();
  MEMORY[0x2383DCF70](v1);
  return sub_237C0940C();
}

void sub_237B6E654(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;

  MLDataTable.subscript.getter();
}

void sub_237B6E6C4(uint64_t *a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = *(a1 + 24);

  sub_2379DBCF4(v9, v10);
  sub_2379DBC9C(v9, v10);
  *a4 = v8;
  a4[1] = v7;
  v13 = v9;
  v14 = v10;
  v11 = a2;
  v12 = a3 & 1;
  sub_2379DBCF4(a2, a3 & 1);
  MLUntypedColumn.subscript.getter(&v11);
  sub_2379DBC9C(v11, v12);
}

uint64_t objectdestroyTm_7()
{
  sub_2379DBC9C(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_11_9();

  return MEMORY[0x2821FE8E8](v1);
}

void MLDataTable.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v2 + 8);
  v9 = *v2;
  v10 = v6;
  v7 = v4;
  v8 = v5;
  sub_2379DBCF4(v4, v5);
  MLDataTable.subscript.getter(&v7, a2);
  sub_2379DBC9C(v4, v5);
}

uint64_t sub_237B6EA64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a7;
  v23 = a4;
  v11 = sub_237C08D2C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = *(a6 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a1;
  swift_retain_n();

  v23(v24);
  if (__swift_getEnumTagSinglePayload(v14, 1, a6) == 1)
  {
    (*(v12 + 8))(v14, v11);
    type metadata accessor for CMLFeatureValue();
    v19 = sub_237A2E78C();
  }

  else
  {
    (*(v15 + 32))(v18, v14, a6);
    v19 = sub_237B70DD4(a6, v22);

    (*(v15 + 8))(v18, a6);
  }

  return v19;
}

uint64_t sub_237B6ECAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  (*(a4 + 8))(&v11, a3, a4);
  result = sub_237A30800(a1, a2, 0x5060403020100uLL >> (8 * v11));
  if (!v5)
  {
    v10 = result;
    type metadata accessor for _UntypedColumn();
    result = swift_allocObject();
    *(result + 16) = v10;
    *a5 = result;
  }

  return result;
}

uint64_t MLDataTable.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_67_7();
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_32_15();
  OUTLINED_FUNCTION_0_31();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v9;
  v12[4] = v7;
  v12[5] = v6;

  MLDataTable.map<A>(_:)(sub_237B705FC, v12, v11, v9);
  OUTLINED_FUNCTION_66_7();
}

uint64_t sub_237B6EE20@<X0>(__int128 *a1@<X0>, void (*a2)(__int128 *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 2);
  v8 = *a1;
  v9 = v6;
  a2(&v8);

  return __swift_storeEnumTagSinglePayload(a4, 0, 1, a3);
}

void MLDataTable.fillMissing(columnNamed:with:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *v3;
  if (*(v3 + 8))
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (sub_237C0925C())
    {
      v6 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v6, v12);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v13 = v4;
    }

    v17 = 1;
  }

  else
  {
    v7 = v4[2];

    v8 = sub_237AFC858();

    v9 = OUTLINED_FUNCTION_57_9();
    v11 = sub_237B6B264(v9, v10, v7, v8);

    type metadata accessor for _DataTable();
    OUTLINED_FUNCTION_15_38();
    v14 = swift_allocObject();
    v14[3] = 0;
    v14[4] = 0;
    v14[2] = v11;
    v15 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v15, v16);
    v17 = 0;
  }

  OUTLINED_FUNCTION_11_19(v17);
}

void MLDataTable.sort(columnNamed:byIncreasingOrder:)()
{
  OUTLINED_FUNCTION_24_11();
  v1 = *v0;
  if (*(v0 + 8))
  {
    v2 = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_26_10(v3, v4, MEMORY[0x277D84950], v5))
    {
      sub_2379DBC9C(v1, 1);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v16 = v1;
    }

    v15 = 1;
  }

  else
  {
    v6 = v1[2];

    v7 = OUTLINED_FUNCTION_52_5();
    sub_2379DBCF4(v7, v8);
    v9 = OUTLINED_FUNCTION_57_9();
    sub_237B6B3B0(v9, v10, v6, v11);
    v12 = OUTLINED_FUNCTION_52_5();
    sub_2379DBC9C(v12, v13);
    type metadata accessor for _DataTable();
    OUTLINED_FUNCTION_15_38();
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_62_7(v14);
  }

  OUTLINED_FUNCTION_11_19(v15);
  OUTLINED_FUNCTION_25_9();
}

void sub_237B6F4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t *, void *), uint64_t a6)
{
  v7 = *v6;
  if (*(v6 + 8))
  {
    v8 = v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_26_10(v9, v10, MEMORY[0x277D84950], v11))
    {
      sub_2379DBC9C(v7, 1);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v21 = v7;
    }

    v20 = 1;
  }

  else
  {
    v18 = v7[2];

    sub_2379DBCF4(v7, 0);
    sub_237B6B4E4(a1, a2, a3, a4, v18, a5, a6);
    sub_2379DBC9C(v7, 0);
    type metadata accessor for _DataTable();
    OUTLINED_FUNCTION_15_38();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_62_7(v19);
  }

  OUTLINED_FUNCTION_11_19(v20);
}

void MLDataTable.playgroundDescription.getter(void *a1@<X8>)
{
  v3 = *v1;
  if (v1[1])
  {
    swift_getErrorValue();
    v4 = OUTLINED_FUNCTION_1_21();
    sub_2379DBCF4(v4, v5);
    sub_237C0927C();
    a1[3] = MEMORY[0x277D837D0];
    v6 = OUTLINED_FUNCTION_1_21();
    sub_2379DBC9C(v6, v7);
    *a1 = 0;
    a1[1] = 0xE000000000000000;
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    v8 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v8, v9);
    sub_237C08EDC();

    v10 = sub_237A30330();

    v26[0] = v10;
    v11 = sub_237C0924C();
    MEMORY[0x2383DC360](v11);

    MEMORY[0x2383DC360](0x20582073776F7220, 0xE800000000000000);
    sub_237B6C208(v26);
    sub_237A2E9F4();
    v12 = OUTLINED_FUNCTION_6_6();
    sub_237A017E8(v12, v13);
    v14 = OUTLINED_FUNCTION_6_6();
    sub_237A0290C(v14);

    v15 = sub_237C0924C();
    MEMORY[0x2383DC360](v15);

    MEMORY[0x2383DC360](0xD000000000000016, 0x8000000237C1D810);
    v16 = sub_237B6C208(v26);
    v17 = MLDataTable.ColumnNames.description.getter(v16);
    MEMORY[0x2383DC360](v17);

    v27 = v3;
    LOBYTE(v28) = 0;
    v18 = MLDataTable.description.getter();
    v20 = v19;
    v21 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v22 = v18;
    v23 = v21;
    sub_237A02218(v22, v20, 0);
    OUTLINED_FUNCTION_87();
    a1[3] = sub_237B70608();
    v24 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v24, v25);
    *a1 = v23;
  }
}

uint64_t MLDataTable.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    swift_getErrorValue();
    v2 = v1;
    sub_237C0927C();
    sub_2379DBC9C(v1, 1);
    return 0;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_88();
    sub_2379DBCF4(v4, v5);

    v3 = sub_237A307B0();

    v6 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v6, v7);
  }

  return v3;
}

void sub_237B6F954(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, void (*a6)(void *__return_ptr, void *))
{
  v11[0] = a1;
  v11[1] = a2;
  (a6)(v9, v11, a2, a3, a4, a5);
  a3(v9);
  v7 = v9[2];
  v8 = v10;

  sub_2379DBC9C(v7, v8);
}

void sub_237B6F9D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v6 = a3;
  v7 = a2;
  v8 = 0;
  v9 = (a1 + 48);
  while (1)
  {
    v10 = *(a1 + 16);
    if (v8 == v10)
    {
LABEL_20:

      return;
    }

    if (v8 >= v10)
    {
      break;
    }

    if (v6 == v7)
    {
      goto LABEL_20;
    }

    if (v6 < a2)
    {
      goto LABEL_23;
    }

    if (v7 >= v6)
    {
      goto LABEL_24;
    }

    v12 = *(v9 - 2);
    v11 = *(v9 - 1);
    v13 = *v9;
    sub_2379E9288(v12, v11, *v9);
    if (v13 == 255)
    {
      goto LABEL_20;
    }

    v14 = *a5;
    v32 = v11;
    v16 = sub_237ACB180(v12, v11, v13);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_25;
    }

    v19 = v15;
    if (v14[3] >= v17 + v18)
    {
      if (a4)
      {
        if (v15)
        {
          goto LABEL_18;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D718, &qword_237C147B0);
        sub_237C090BC();
        if (v19)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_237ABFCE4();
      v20 = sub_237ACB180(v12, v32, v13);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_27;
      }

      v16 = v20;
      if (v19)
      {
LABEL_18:
        v27 = swift_allocError();
        swift_willThrow();

        v28 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_2379E8CE8(v12, v32, v13);

          return;
        }

        goto LABEL_28;
      }
    }

    v22 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v23 = v22[6] + 24 * v16;
    *v23 = v12;
    *(v23 + 8) = v32;
    *(v23 + 16) = v13;
    *(v22[7] + 8 * v16) = v7;
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_26;
    }

    v22[2] = v26;
    v9 += 24;
    ++v7;
    ++v8;
    a4 = 1;
    v6 = a3;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_237C0932C();
  __break(1u);
LABEL_28:
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
  sub_237C0907C();
  MEMORY[0x2383DC360](39, 0xE100000000000000);
  sub_237C090DC();
  __break(1u);
}

void sub_237B6FD04(uint64_t a1, void (*a2)(unint64_t *__return_ptr, unint64_t *), uint64_t a3, char a4, void *a5)
{

  for (i = 0; ; ++i)
  {
    v8 = sub_237A2E9F4();
    if (i == sub_237A017E8(0, v8))
    {
LABEL_18:

      return;
    }

    sub_237A2E9C8(i);
    if (v5)
    {
      goto LABEL_22;
    }

    v9 = sub_237A2DE60();
    v11 = v10;

    v12 = sub_237A2E9F4();
    if (i >= sub_237A017E8(0, v12))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      swift_unexpectedError();
      __break(1u);

      v36 = 0;
      v37 = 0xE000000000000000;
      sub_237C08EDC();

      v36 = 0xD000000000000022;
      v37 = 0x8000000237C17E70;
      v32 = sub_237C0924C();
      MEMORY[0x2383DC360](v32);

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      goto LABEL_23;
    }

    v36 = v9;
    v37 = v11;
    a2(&v38, &v36);

    v13 = v39;
    if (!v39)
    {
      goto LABEL_18;
    }

    v14 = v38;
    v34 = v40;
    v36 = v38;
    v37 = v39;
    v15 = v41;
    v16 = *a5;
    v18 = sub_237ACAC78(v38, v39);
    v19 = v16[2];
    v20 = (v17 & 1) == 0;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_20;
    }

    v21 = v17;
    if (v16[3] < v19 + v20)
    {
      break;
    }

    if (a4)
    {
      if (v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D720, &qword_237C147B8);
      sub_237C090BC();
      if (v21)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v24 = *a5;
    *(*a5 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v25 = (v24[6] + 16 * v18);
    *v25 = v14;
    v25[1] = v13;
    v26 = v24[7] + 16 * v18;
    *v26 = v34;
    *(v26 + 8) = v15;
    v27 = v24[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_21;
    }

    v24[2] = v29;
    a4 = 1;
  }

  sub_237ABFFB8();
  v22 = sub_237ACAC78(v14, v13);
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_24;
  }

  v18 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v30 = swift_allocError();
  swift_willThrow();
  v42 = v30;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
  if (swift_dynamicCast())
  {
    while (1)
    {
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
      sub_237C0907C();
      MEMORY[0x2383DC360](39, 0xE100000000000000);
LABEL_23:
      sub_237C090DC();
      __break(1u);
LABEL_24:
      sub_237C0932C();
      __break(1u);
    }
  }

  sub_2379DBC9C(v34, v15);
}

void sub_237B70178(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = a2;
  v8 = 0;

  v9 = (v32 + 40);
  for (i = a3; ; a3 = i)
  {
    v10 = *(v32 + 16);
    if (v8 == v10)
    {
LABEL_19:
      swift_bridgeObjectRelease_n();
      return;
    }

    if (v8 >= v10)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_237C0932C();
      __break(1u);
      goto LABEL_27;
    }

    if (a3 == v7)
    {
      goto LABEL_19;
    }

    if (a3 < a2)
    {
      goto LABEL_22;
    }

    if (v7 >= a3)
    {
      goto LABEL_23;
    }

    v11 = *(v9 - 1);
    v12 = *v9;
    v13 = v9;
    v14 = *a5;

    v16 = sub_237ACAC78(v11, v12);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_24;
    }

    v20 = v15;
    if (v14[3] < v19)
    {
      break;
    }

    if (a4)
    {
      if (v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3E8, &qword_237C13B50);
      sub_237C090BC();
      if (v20)
      {
        goto LABEL_17;
      }
    }

LABEL_14:
    v23 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v24 = (v23[6] + 16 * v16);
    *v24 = v11;
    v24[1] = v12;
    *(v23[7] + 8 * v16) = v7;
    v25 = v23[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_25;
    }

    v23[2] = v27;
    v9 = v13 + 2;
    ++v7;
    ++v8;
    a4 = 1;
  }

  sub_237AC058C(v19, a4 & 1);
  v21 = sub_237ACAC78(v11, v12);
  if ((v20 & 1) != (v22 & 1))
  {
    goto LABEL_26;
  }

  v16 = v21;
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v28 = swift_allocError();
  swift_willThrow();
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_27:
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
  sub_237C0907C();
  MEMORY[0x2383DC360](39, 0xE100000000000000);
  sub_237C090DC();
  __break(1u);
}

uint64_t sub_237B70488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_237C0929C() & 1;
  }
}

uint64_t sub_237B70518()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237B7056C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237B705C4()
{

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_237B70608()
{
  result = qword_27DE9D708;
  if (!qword_27DE9D708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9D708);
  }

  return result;
}

unint64_t sub_237B70650()
{
  result = qword_27DE9D710;
  if (!qword_27DE9D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D710);
  }

  return result;
}

__n128 sub_237B706D0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MLDataTable.JoinType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x237B707B8);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_237B708C4(id a1, char a2)
{
  if (a2)
  {
  }
}

void OUTLINED_FUNCTION_0_78()
{
  *(v1 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v4 = (*(v1 + 48) + 16 * v0);
  *v4 = v3;
  v4[1] = v2;
}

void *OUTLINED_FUNCTION_4_62(void *result)
{
  result[3] = 0;
  result[4] = 0;
  result[2] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_56()
{

  return sub_237ACAC78(v1, v0);
}

uint64_t OUTLINED_FUNCTION_7_45(uint64_t a1)
{

  return sub_237C090AC();
}

uint64_t OUTLINED_FUNCTION_34_17(uint64_t a1, uint64_t a2)
{

  return swift_unexpectedError();
}

uint64_t OUTLINED_FUNCTION_35_16(uint64_t a1, uint64_t a2)
{

  return swift_unexpectedError();
}

uint64_t OUTLINED_FUNCTION_41_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237C08ECC();
}

uint64_t OUTLINED_FUNCTION_50_11(uint64_t a1)
{
  *(a1 + 16) = v1;
}

void OUTLINED_FUNCTION_52_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  a9 = v11;
  a10 = v10;

  sub_237B6CF70(&a9, v13, v12);
}

void OUTLINED_FUNCTION_53_11()
{

  JUMPOUT(0x2383DC360);
}

void *OUTLINED_FUNCTION_61_7(void *result)
{
  result[3] = 0;
  result[4] = 0;
  result[2] = v2;
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

void *OUTLINED_FUNCTION_62_7(void *result)
{
  result[3] = 0;
  result[4] = 0;
  result[2] = v1;
  return result;
}

void OUTLINED_FUNCTION_68_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10)
{

  sub_2379DBC9C(a9, a10);
}

uint64_t sub_237B70CDC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CMLFeatureValue();

  return sub_237A2E7CC();
}

uint64_t sub_237B70DD4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  v6 = OUTLINED_FUNCTION_1_74(v5, v15);
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D728, &qword_237C148D0);
  if (swift_dynamicCast())
  {
    sub_237A1FCF0(&v15, &v18);
    v8 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    v9 = OUTLINED_FUNCTION_15_15();
    v11 = v10(v9, v8);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_2379F6DD8(&v15, &qword_27DE9C850, qword_237C10F20);
    (*(a2 + 32))(&v18, a1, a2);
    v12 = v18;
    v13 = v19;
    v15 = v18;
    LOBYTE(v16) = v19;
    v11 = sub_237AFC858();
    sub_2379E8CE8(v12, *(&v12 + 1), v13);
  }

  return v11;
}

uint64_t Int.dataValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void Double.dataValue.getter(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t String.dataValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 2;
}

uint64_t sub_237B70F8C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = dynamic_cast_existential_1_conditional(v4, v4, &protocol descriptor for FeatureValueConvertible);
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    v26 = a2;
    v12 = *(v9 + 16);
    v13 = sub_237C08D2C();
    v25 = &v25;
    OUTLINED_FUNCTION_0();
    v15 = v14;
    MEMORY[0x28223BE20](v16);
    v18 = &v25 - v17;

    v12(v19, v10, v11);
    if (__swift_getEnumTagSinglePayload(v18, 1, v10) == 1)
    {
      (*(v15 + 8))(v18, v13);
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

    else
    {
      *(&v28 + 1) = v10;
      v29 = v11;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v27);
      (*(*(v10 - 8) + 32))(boxed_opaque_existential_0, v18, v10);
    }

    v23 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C850, qword_237C10F20);
    v24 = swift_dynamicCast();
    return __swift_storeEnumTagSinglePayload(a4, v24 ^ 1u, 1, v23);
  }

  else
  {

    sub_237AFC548(v20, &v27);
    v30 = v27;
    v31 = v28;
    return (*(a3 + 16))(&v30, a2, a3);
  }
}

uint64_t sub_237B711BC(uint64_t a1)
{
  OUTLINED_FUNCTION_5_59(a1);
  sub_237B0E848();
  if (v1)
  {

    return 0;
  }

  else
  {
    v4 = v2;

    return v4;
  }
}

uint64_t sub_237B7122C()
{
  v0 = sub_237A2DE60();

  return v0;
}

uint64_t sub_237B71318(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  v6 = OUTLINED_FUNCTION_1_74(v5, v15);
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D730, &qword_237C148D8);
  if (swift_dynamicCast())
  {
    sub_237A1FCF0(v16, v18);
    v8 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v9 = OUTLINED_FUNCTION_15_15();
    v11 = v10(v9, v8);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v11;
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_2379F6DD8(v16, &qword_27DE9D738, &qword_237C148E0);
  v12 = sub_237B70DD4(a1, a2);
  v13 = sub_237B10560(*(v12 + 16), 1);
  if (v13)
  {

    type metadata accessor for CMLColumn();
    v11 = swift_allocObject();
    *(v11 + 16) = v13;
    return v11;
  }

  __break(1u);

  OUTLINED_FUNCTION_57_4();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Bool.init(from:)(uint64_t a1)
{
  v2 = *a1;
  if (!*(a1 + 16))
  {
    return v2 != 0;
  }

  sub_2379E8CE8(v2, *(a1 + 8), *(a1 + 16));
  return 2;
}

uint64_t Bool.dataValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_237B71590(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_5_59(a1);
  sub_237B0ECCC(v3);
  if (v2)
  {

    return 2;
  }

  else
  {
    OUTLINED_FUNCTION_15_15();

    return v1 != 0;
  }
}

uint64_t sub_237B715F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = Bool.init(from:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_237B7162C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_237B71590(a2);
  *a1 = result;
  return result;
}

void *_sSi8CreateMLE4fromSiSgAA11MLDataValueO_tcfC_0(uint64_t a1)
{
  result = *a1;
  if (*(a1 + 16))
  {
    sub_2379E8CE8(result, *(a1 + 8), *(a1 + 16));
    return 0;
  }

  return result;
}

uint64_t sub_237B716A0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_59(a1);
  v3 = sub_237B0ECCC(v2);
  if (v1)
  {

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void *Double.init(from:)(uint64_t a1)
{
  result = *a1;
  if (*(a1 + 16) != 1)
  {
    sub_2379E8CE8(result, *(a1 + 8), *(a1 + 16));
    return 0;
  }

  return result;
}

uint64_t sub_237B7182C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_237B711BC(a2);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

void *String.init(from:)(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  if (v3 != 2)
  {
    sub_2379E8CE8(result, *(a1 + 8), v3);
    return 0;
  }

  return result;
}

void *sub_237B718B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = String.init(from:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_237B718EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237B7122C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_4_63(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void sub_237B71A18(uint64_t a1@<X8>)
{
  v3 = v1;
  v138 = a1;
  v158 = sub_237C07B9C();
  OUTLINED_FUNCTION_0();
  v139 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v7 - v6);
  v136 = sub_237C075DC();
  OUTLINED_FUNCTION_0();
  v135 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v137 = (v11 - v10);
  v134 = sub_237C07CAC();
  OUTLINED_FUNCTION_0();
  v132 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v15 - v14);
  v146 = sub_237C0818C();
  OUTLINED_FUNCTION_0();
  v149 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_0();
  v145 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_21_3(&v121 - v20);
  v144 = sub_237C07CCC();
  OUTLINED_FUNCTION_0();
  v148 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v140 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC38, &unk_237C0EB60);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_21_3(&v121 - v26);
  sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v142 = v28;
  v143 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_0();
  v141 = v29;
  MEMORY[0x28223BE20](v30);
  v150 = &v121 - v31;
  v32 = sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v152 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  v37 = v36 - v35;
  v38 = sub_237C05C2C();
  OUTLINED_FUNCTION_0();
  v151 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_0();
  v43 = v42 - v41;
  v155 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v153 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_0();
  v147 = v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v121 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v121 - v51;
  MEMORY[0x28223BE20](v53);
  v154 = &v121 - v54;
  v55 = *(v1 + 16);
  if (!v55)
  {
    goto LABEL_20;
  }

  v56 = sub_237AC68B4(v55, *(v3 + 24), *(v3 + 32));
  if (!v2)
  {
    v127 = v3;
    v126 = v55;
    v128 = v56;
    v57 = objc_opt_self();
    v58 = [v57 defaultManager];
    sub_2379F364C();

    v59 = [v57 defaultManager];
    sub_2379F3528();

    sub_237C05C1C();
    v60 = sub_237C05C0C();
    v125 = 0;
    v62 = v61;
    (*(v151 + 8))(v43, v38);
    v156 = v60;
    v157 = v62;
    v63 = v152;
    (*(v152 + 104))(v37, *MEMORY[0x277CC91D8], v32);
    sub_2379F3408();
    sub_237C05ACC();
    (*(v63 + 8))(v37, v32);

    v64 = v153;
    v65 = v153 + 8;
    v66 = *(v153 + 8);
    v67 = v155;
    v66(v49, v155);
    v68 = v154;
    sub_237C05A3C();
    v66(v52, v67);
    v69 = _s5ModelVMa(0);
    v70 = v125;
    sub_237C0745C();
    if (v70)
    {
      v66(v68, v67);
    }

    else
    {
      v71 = *(v64 + 16);
      v3 = v64 + 16;
      v55 = v147;
      v71(v147, v68, v67);
      sub_237C07D8C();
      v125 = 0;
      v72 = v130;
      sub_237A9AA94(v128, v130);
      v73 = v143;
      if (__swift_getEnumTagSinglePayload(v72, 1, v143) == 1)
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_237C07EBC();
      v74 = *(v142 + 8);
      v123 = v142 + 8;
      v122 = v74;
      v74(v72, v73);
      sub_237C07E9C();
      v75 = v127;
      v76 = *v127;
      v77 = v127[1];

      sub_237C07DEC();
      v147 = v76;
      v156 = v76;
      v157 = v77;
      v151 = v77;

      MEMORY[0x2383DC360](0x6C696261626F7250, 0xEB00000000797469);
      sub_237C07E2C();
      sub_237C085AC();
      sub_237C07EFC();
      v78 = v131;
      sub_237C07E3C();
      v55 = v78;
      v3 = v149;
      v49 = v146;
      v79 = (*(v149 + 88))(v78, v146);
      v80 = *MEMORY[0x277D25338];
      LODWORD(v152) = v79;
      v81 = v144;
      v82 = v140;
      if (v79 != v80)
      {
        while (1)
        {
          v120 = *(v3 + 8);
          v3 += 8;
          v120(v55, v49);
LABEL_20:
          sub_237C090DC();
          __break(1u);
        }
      }

      v124 = v66;
      v130 = v65;
      (*(v3 + 96))(v55, v49);
      (*(v148 + 32))(v82, v55, v81);
      v83 = v75 + *(v69 + 28);
      v84 = v83[8];
      v85 = v133;
      *v133 = *v83;
      v86 = *(v132 + 104);
      if (v84)
      {
        v86(v85, *MEMORY[0x277D25218], v134);

        sub_237C07CBC();
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
        v88 = OUTLINED_FUNCTION_7_34(v87);
        OUTLINED_FUNCTION_10_33(v88, xmmword_237C0B670);
        OUTLINED_FUNCTION_9_34();
        sub_237C0756C();
        v89 = OUTLINED_FUNCTION_5_41();
        v90(v89);

        OUTLINED_FUNCTION_8_33();
        v156 = v81;
        v157 = v82;

        OUTLINED_FUNCTION_1_53();
        OUTLINED_FUNCTION_9_34();
        sub_237C075CC();
      }

      else
      {
        v86(v85, *MEMORY[0x277D25210], v134);

        sub_237C07CBC();
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
        v92 = OUTLINED_FUNCTION_7_34(v91);
        OUTLINED_FUNCTION_10_33(v92, xmmword_237C0B670);
        OUTLINED_FUNCTION_9_34();
        sub_237C0751C();
        v93 = OUTLINED_FUNCTION_5_41();
        v94(v93);

        OUTLINED_FUNCTION_8_33();
        v156 = v81;
        v157 = v82;

        OUTLINED_FUNCTION_1_53();
        OUTLINED_FUNCTION_9_34();
        sub_237C075BC();
      }

      OUTLINED_FUNCTION_6_39();
      sub_237C07ECC();
      v95 = v145;
      (*(v148 + 16))(v145, v82, v81);
      v96 = v82;
      v97 = v149 + 104;
      v98 = v146;
      v137 = *(v149 + 104);
      v137(v95, v152, v146);
      sub_237C07E4C();
      sub_237C07F0C();
      sub_237C07E0C();
      v99 = *(v126 + 16);
      if (v99)
      {
        v149 = v97;
        v156 = MEMORY[0x277D84F90];
        v100 = v126;
        sub_237AC8CF4(0, v99, 0);
        v101 = v156;
        v102 = (v139 + 32);
        v152 = (v65 + 32) & ~v65;
        v103 = (v100 + 56);
        v104 = v129;
        do
        {
          v105 = *(v103 - 1);
          v106 = *v103;

          sub_237A1E09C(v105, v106);
          sub_237B991A4(v105, v106, v104);

          sub_237A1E0B0(v105, v106);
          v156 = v101;
          v108 = *(v101 + 16);
          v107 = *(v101 + 24);
          if (v108 >= v107 >> 1)
          {
            sub_237AC8CF4(v107 > 1, v108 + 1, 1);
            v101 = v156;
          }

          v103 += 32;
          *(v101 + 16) = v108 + 1;
          (*v102)(v101 + v152 + v153 * v108, v104, v158);
          --v99;
        }

        while (v99);
        v98 = v146;
        v109 = v140;
      }

      else
      {
        v109 = v96;
      }

      v110 = v141;
      sub_237C07E9C();
      v111 = v150;
      sub_237C07EBC();
      sub_237C07ECC();
      v112 = v147;
      v113 = v151;
      sub_237C07DEC();
      v156 = v112;
      v157 = v113;

      OUTLINED_FUNCTION_1_53();
      sub_237C07E2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
      v114 = v142;
      v115 = (*(v142 + 80) + 32) & ~*(v142 + 80);
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_237C0B660;
      v117 = v143;
      (*(v114 + 16))(v116 + v115, v111, v143);
      v156 = v128;
      sub_237A969F0(v116);
      v118 = v145;
      sub_237C07D3C();
      v137(v118, *MEMORY[0x277D25368], v98);
      sub_237C07E4C();
      (*(v148 + 8))(v109, v144);
      v122(v111, v117);
      (*(v114 + 32))(v138, v110, v117);
      v119 = v154;
      sub_237A64C34();
      v124(v119, v155);
    }
  }
}

uint64_t sub_237B728DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_237C06EAC();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237B72978(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C06EAC();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t _s9RegressorVMa(uint64_t a1)
{
  result = qword_27DE9D740;
  if (!qword_27DE9D740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B72A44(uint64_t a1)
{
  sub_2379FC328();
  if (v1 <= 0x3F)
  {
    sub_237C06EAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_237B72B28@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  _s9RegressorVMa(0);
  _s5ModelVMa_2(0);

  result = sub_237C06E6C();
  *a1 = v4;
  a1[1] = v3;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_237B72B94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v50 = a3;
  v51 = a4;
  v9 = sub_237C06EAC();
  OUTLINED_FUNCTION_0();
  v54 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v52 = v13 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE08, &unk_237C12E60);
  OUTLINED_FUNCTION_0();
  v53 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v47 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v21 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v56 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
  OUTLINED_FUNCTION_0();
  v48 = v28;
  v49 = v27;
  MEMORY[0x28223BE20](v27);
  v31 = &v44 - v30;
  v32 = a1[2];
  if (v32)
  {
    v33 = a1[3];
    v34 = a1[4];
  }

  else
  {
    v45 = v9;
    MEMORY[0x28223BE20](v29);
    *(&v44 - 2) = a2;
    result = sub_2379E22EC(sub_237A1DC7C, (&v44 - 4), v43);
    if (v5)
    {
      return result;
    }

    v32 = result;
    v33 = 0xD000000000000013;
    v34 = 0x8000000237C17BE0;
    a1[2] = result;
    a1[3] = 0xD000000000000013;
    a1[4] = 0x8000000237C17BE0;
    v9 = v45;
  }

  result = sub_237A0D2FC(a2, 1, v32, v33, v34);
  if (!v5)
  {
    v45 = v9;
    sub_237C05DFC();
    sub_237B635F0();
    v37 = v36;
    v38 = v26;
    v39 = v37;
    result = (*(v56 + 8))(v38, v21);
    if (v39)
    {
      sub_237B0B0C8(v6 + 24, v55);
      sub_237A20BBC();
      sub_237C06C3C();
      v40 = v46;
      sub_237C06BEC();
      sub_237C06C1C();
      sub_237C06C2C();
      sub_237C06C0C();
      sub_237C06BFC();
      sub_237A68B6C(v55);
      v41 = v53;
      (*(v53 + 16))(v47, v20, v40);
      v42 = v52;
      sub_237C06E5C();
      _s5ModelVMa_2(0);
      sub_237C06E9C();

      (*(v54 + 8))(v42, v45);
      (*(v41 + 8))(v20, v40);
      return (*(v48 + 8))(v31, v49);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237B72FE8()
{

  return sub_237C05FCC();
}

uint64_t sub_237B73044(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB80, &qword_237C0B8E8);
  v5 = sub_237C05FBC();
  v7 = v6;
  (*(*(v4 - 8) + 8))(a1, v4);

  *v2 = v5;
  v2[1] = v7;
  return result;
}

uint64_t sub_237B730D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v145 = a4;
  v144 = a3;
  v147 = a2;
  v162 = a1;
  v141 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_21_3(&v122 - v7);
  v150 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v143 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v11 - v10);
  v138 = sub_237C0707C();
  OUTLINED_FUNCTION_0();
  v140 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v142 = (v14 - v15);
  MEMORY[0x28223BE20](v16);
  v137 = &v122 - v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_21_3(&v122 - v19);
  v151 = sub_237C06EAC();
  OUTLINED_FUNCTION_0();
  v149 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v153 = v23 - v22;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE08, &unk_237C12E60);
  OUTLINED_FUNCTION_0();
  v155 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18_0();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v122 - v30;
  v32 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v156 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
  OUTLINED_FUNCTION_0();
  v154 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18_0();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v122 - v45;
  v47 = v5[2];
  v48 = v162;
  v159 = v162;
  v49 = v157;
  result = sub_2379E22EC(sub_237A20D00, v158, v47);
  if (!v49)
  {
    v131 = v28;
    v133 = v5;
    v134 = v37;
    v135 = v32;
    v130 = v43;
    v132 = v31;
    v136 = v38;
    v51 = result;
    sub_237A0D2FC(v48, 1, result, 0xD000000000000013, 0x8000000237C17BE0);
    v157 = 0;
    v128 = v46;
    v126 = 0x8000000237C17BE0;
    v129 = v51;
    v52 = v133;
    v54 = *v133;
    v53 = v133[1];
    v55 = v134;
    OUTLINED_FUNCTION_12_42();
    sub_237B635F0();
    v57 = v56;
    v59 = v156 + 8;
    v58 = *(v156 + 8);
    v60 = v135;
    v58(v55, v135);
    v127 = v57;
    if (!v57)
    {
      OUTLINED_FUNCTION_13_34();
      v160 = 0;
      v161 = 0xE000000000000000;
      sub_237C08EDC();
      OUTLINED_FUNCTION_8_43();
      OUTLINED_FUNCTION_12_42();
      sub_237C05FFC();
      v58(v55, v60);
      v74 = sub_237C094DC();
      MEMORY[0x2383DC360](v74);

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      sub_2379E8AF0();
      v75 = swift_allocError();
      OUTLINED_FUNCTION_6_57(v75, v76);
      return (*(v154 + 8))(v128, v136);
    }

    v123 = v58;
    v156 = v59;
    v124 = v54;
    v125 = v53;
    sub_237B0B0C8((v52 + 3), &v160);
    sub_237A20BBC();
    v61 = v132;
    sub_237C06C3C();
    v62 = v152;
    sub_237C06BEC();
    sub_237C06C1C();
    sub_237C06C2C();
    sub_237C06C0C();
    sub_237C06BFC();
    sub_237A68B6C(&v160);
    (*(v155 + 16))(v131, v61, v62);
    v63 = v153;
    sub_237C06E5C();
    v64 = v148;
    sub_237A2AA5C(v147, v148);
    v65 = v150;
    if (__swift_getEnumTagSinglePayload(v64, 1, v150) == 1)
    {
      sub_237B74398(v64);
      v66 = v142;
      v67 = v157;
      sub_237C06E8C();
      v68 = v151;
      if (v67)
      {

        OUTLINED_FUNCTION_13_34();
        OUTLINED_FUNCTION_3_74();
        v69(v63, v68);
        v70 = OUTLINED_FUNCTION_11_44();
        v71(v70);
        v72 = OUTLINED_FUNCTION_10_42();
        return v73(v72);
      }

      OUTLINED_FUNCTION_3_74();
      v86(v63, v68);
      v87 = OUTLINED_FUNCTION_11_44();
      v88(v87);
      v89 = OUTLINED_FUNCTION_10_42();
      v90(v89);
      v91 = v66;
      goto LABEL_10;
    }

    v77 = v143;
    v78 = v146;
    (*(v143 + 32))(v146, v64, v65);
    v79 = v157;
    sub_237A0D2FC(v78, 1, v129, 0xD000000000000013, v126);
    v80 = v154;
    v81 = v136;
    v82 = v151;
    if (v79)
    {

      (*(v77 + 8))(v78, v65);
      OUTLINED_FUNCTION_3_74();
      v83(v153, v82);
      v84 = OUTLINED_FUNCTION_2_72();
      v85(v84, v62);
      return (*(v80 + 8))(v128, v81);
    }

    v98 = v134;
    sub_237C05DFC();
    sub_237B635F0();
    v100 = v99;
    v101 = v135;
    v102 = v123;
    v123(v98, v135);
    if (v100)
    {
      v103 = v137;
      v104 = v130;
      v105 = v153;
      sub_237C06E7C();

      v114 = *(v154 + 8);
      v115 = v103;
      v116 = v136;
      v114(v104, v136);
      v117 = OUTLINED_FUNCTION_9_46();
      v118(v117);
      OUTLINED_FUNCTION_3_74();
      v119(v105, v151);
      v120 = OUTLINED_FUNCTION_2_72();
      v121(v120, v152);
      v114(v128, v116);
      v91 = v115;
LABEL_10:
      v92 = *(v140 + 32);
      v93 = v139;
      v94 = v138;
      v92(v139, v91, v138);
      v95 = _s5ModelVMa_2(0);
      v96 = v141;
      v92(v141 + *(v95 + 24), v93, v94);
      v97 = v125;
      *v96 = v124;
      v96[1] = v97;
      v96[2] = v129;
      v96[3] = 0xD000000000000013;
      v96[4] = v126;
    }

    v106 = v149;

    OUTLINED_FUNCTION_13_34();
    v160 = 0;
    v161 = 0xE000000000000000;
    sub_237C08EDC();
    OUTLINED_FUNCTION_8_43();
    sub_237C05DFC();
    sub_237C05FFC();
    v102(v98, v101);
    v107 = sub_237C094DC();
    MEMORY[0x2383DC360](v107);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    v108 = swift_allocError();
    OUTLINED_FUNCTION_6_57(v108, v109);
    v110 = *(v154 + 8);
    v111 = v136;
    v110(v130, v136);
    (*(v77 + 8))(v78, v150);
    (*(v106 + 8))(v153, v151);
    v112 = OUTLINED_FUNCTION_2_72();
    v113(v112, v152);
    return (v110)(v128, v111);
  }

  return result;
}

uint64_t sub_237B73D54(uint64_t a1, uint64_t a2)
{
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1B0, &qword_237C0FBF0);
  sub_237A96590();
  result = sub_237C06CAC();
  if (!v2)
  {
    _s5ModelVMa_2(0);
    __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
    sub_237C0707C();
    OUTLINED_FUNCTION_4_64();
    sub_237B74350(v5, v6, MEMORY[0x277CC50A8]);
    return sub_237C06CAC();
  }

  return result;
}

uint64_t sub_237B73E74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_237C0707C();
  OUTLINED_FUNCTION_0();
  v16 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v21 = v9 - v8;
  v10 = *v2;
  v11 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C168, &unk_237C0F9E8);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_237A96630(&qword_27DE9C1A0, &unk_237C130B8);

  sub_237C06C9C();
  if (v3)
  {
  }

  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  OUTLINED_FUNCTION_4_64();
  sub_237B74350(v12, v13, MEMORY[0x277CC50B0]);
  sub_237C06C9C();
  *a2 = v10;
  *(a2 + 1) = v11;
  *(a2 + 2) = v18;
  *(a2 + 3) = v19;
  *(a2 + 4) = v20;
  v14 = _s5ModelVMa_2(0);
  return (*(v16 + 32))(&a2[*(v14 + 24)], v21, v5);
}

void (*sub_237B74094(void *a1))(uint64_t ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB80, &qword_237C0B8E8);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v3[5] = *(v1 + 8);

  sub_237C05FCC();
  return sub_237A0D94C;
}

uint64_t sub_237B741A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237B730D8(a2, a3, a4, a5, a1);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237B742A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237B72B94(a1, a2, a3, a4);
  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_237B74350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237B74398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6_57(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_8_43()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_12_42()
{

  return sub_237C05DFC();
}

uint64_t OUTLINED_FUNCTION_13_34()
{
}

void sub_237B74500(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v5 = sub_237AFFB0C(a1);
    v6 = 0;
    v7 = a1 + 64;
    v24 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v25 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(a1 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v28 + 16);
        v12 = *(v28 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_237AC8A74();
        }

        *(v28 + 16) = v13 + 1;
        v14 = v28 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        v15 = 1 << *(a1 + 32);
        if (v5 >= v15)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v16 = *(a1 + 64 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v27)
        {
          goto LABEL_27;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
          v18 = v24;
        }

        else
        {
          v19 = v8 << 6;
          v20 = v8 + 1;
          v18 = v24;
          v21 = (a1 + 72 + 8 * v8);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_2379E8FD0(v5, v27, v25 & 1);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_18;
            }
          }

          sub_2379E8FD0(v5, v27, v25 & 1);
        }

LABEL_18:
        v6 = v26 + 1;
        if (v26 + 1 == v18)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void sub_237B74738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x277D84F90];
    sub_237AC8E14();
    v4 = sub_237AFFB0C(a1);
    v5 = a1;
    v6 = 0;
    v7 = a1 + 64;
    v21 = v1;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(v5 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_23;
        }

        if (*(v5 + 36) != v2)
        {
          goto LABEL_24;
        }

        v22 = v3;
        v23 = v2;
        v9 = *(*(v5 + 56) + 8 * v4);
        v11 = *(v24 + 16);
        v10 = *(v24 + 24);

        if (v11 >= v10 >> 1)
        {
          sub_237AC8E14();
        }

        *(v24 + 16) = v11 + 1;
        *(v24 + 8 * v11 + 32) = v9;
        v12 = 1 << *(v5 + 32);
        if (v4 >= v12)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v13 = *(a1 + 64 + 8 * v8);
        if ((v13 & (1 << v4)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v5 + 36) != v23)
        {
          goto LABEL_27;
        }

        v14 = v13 & (-2 << (v4 & 0x3F));
        if (v14)
        {
          v12 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = v8 << 6;
          v16 = v8 + 1;
          v17 = (a1 + 72 + 8 * v8);
          while (v16 < (v12 + 63) >> 6)
          {
            v19 = *v17++;
            v18 = v19;
            v15 += 64;
            ++v16;
            if (v19)
            {
              sub_2379E8FD0(v4, v23, v22 & 1);
              v5 = a1;
              v12 = __clz(__rbit64(v18)) + v15;
              goto LABEL_18;
            }
          }

          sub_2379E8FD0(v4, v23, v22 & 1);
          v5 = a1;
        }

LABEL_18:
        if (++v6 == v21)
        {
          return;
        }

        v3 = 0;
        v2 = *(v5 + 36);
        v4 = v12;
        if (v12 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void sub_237B74974()
{
  OUTLINED_FUNCTION_74();
  sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  v5 = sub_237ABF5E0();
  if (!v0)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B520, &qword_237C0D648);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B670;
    *(inited + 32) = 1937335659;
    *(inited + 40) = 0xE400000000000000;

    sub_237B74500(v8);
    v10 = v9;

    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    v11 = sub_237A35F1C(&qword_27DE9B528, &qword_27DE9AE60, &qword_237C0D000);
    *(inited + 48) = v10;
    *(inited + 80) = v11;
    *(inited + 88) = 0x7365756C6176;
    *(inited + 96) = 0xE600000000000000;
    sub_237B74738(v6);
    v13 = v12;

    *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D780, &unk_237C14AC0);
    *(inited + 136) = sub_237B7BC04();
    *(inited + 104) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B540, &qword_237C14AD0);
    v14 = sub_237C085AC();
    MLDataTable.init(dictionary:)(v14, &v19);
    v15 = v19;
    v16 = v20;
    sub_237C05A2C();
    MLDataTable.write(to:)(v4);
    v17 = OUTLINED_FUNCTION_58_0();
    v18(v17);
    sub_2379DBC9C(v15, v16);
  }

  OUTLINED_FUNCTION_73();
}

uint64_t (*sub_237B74BD0())(uint64_t a1)
{
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  return j__swift_endAccess_0;
}

void sub_237B74C2C()
{
  OUTLINED_FUNCTION_74();
  v35 = v2;
  v3 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  v4 = _s20PersistentParametersVMa(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  OUTLINED_FUNCTION_82_6(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable);
  *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0BC00;
  *(inited + 32) = 0x746E696F7079656BLL;
  *(inited + 40) = 0xE900000000000073;
  v6 = MEMORY[0x277D84F90];
  v34[0] = MEMORY[0x277D84F90];
  *(inited + 48) = sub_237BBDC94(sub_2379F56B8);
  *(inited + 56) = v7 & 1;
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  v34[0] = v6;
  *(inited + 80) = sub_237BBDC94(sub_2379F5678);
  *(inited + 88) = v8 & 1;
  OUTLINED_FUNCTION_77_2();
  *(inited + 96) = 0x5F6E6F6973736573;
  *(inited + 104) = v9;
  v34[0] = v6;
  *(inited + 112) = sub_237BBDC94(sub_2379F5698);
  *(inited + 120) = v10 & 1;
  OUTLINED_FUNCTION_23_31();
  *(inited + 128) = v11;
  *(inited + 136) = 0xE900000000000068;
  v34[0] = v6;
  *(inited + 144) = sub_237BBDC94(sub_2379F57A0);
  *(inited + 152) = v12 & 1;
  v13 = sub_237C085AC();
  sub_237B6CB9C(v13, v34);
  if (v1)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_66_4(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures);
    v14 = swift_initStackObject();
    v15 = OUTLINED_FUNCTION_65_3(v14, xmmword_237C0BC00);
    v15[2].n128_u64[0] = v16;
    v15[2].n128_u64[1] = 0xE900000000000073;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v17);
    OUTLINED_FUNCTION_17_14();
    *(v18 - 16) = v34;
    v14[3].n128_u64[0] = sub_237BBDC94(sub_237A8D200);
    v14[3].n128_u8[8] = v19 & 1;
    OUTLINED_FUNCTION_59_4();
    v14[4].n128_u64[0] = v20;
    v14[4].n128_u64[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v21);
    OUTLINED_FUNCTION_17_14();
    *(v22 - 16) = v34;
    v14[5].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v14[5].n128_u8[8] = v23 & 1;
    OUTLINED_FUNCTION_48_7();
    v14[6].n128_u64[0] = v24;
    OUTLINED_FUNCTION_77_2();
    v14[6].n128_u64[1] = v25;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v26);
    OUTLINED_FUNCTION_17_14();
    *(v27 - 16) = v34;
    v14[7].n128_u64[0] = sub_237BBDC94(sub_237A8D218);
    v14[7].n128_u8[8] = v28 & 1;
    OUTLINED_FUNCTION_23_31();
    v14[8].n128_u64[0] = v29;
    v14[8].n128_u64[1] = 0xE900000000000068;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v30);
    OUTLINED_FUNCTION_17_14();
    *(v31 - 16) = v34;
    v14[9].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v14[9].n128_u8[8] = v32 & 1;
    v33 = sub_237C085AC();
    sub_237B6CB9C(v33, v34);
    OUTLINED_FUNCTION_66_4(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures);
    *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = 0;
    *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = 0;
    *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary) = MEMORY[0x277D84F98];
    sub_237B7C07C(v35, v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
    OUTLINED_FUNCTION_73();
  }
}

void sub_237B75084()
{
  OUTLINED_FUNCTION_37_8();
  v434 = v1;
  v435 = v2;
  v427 = v3;
  v433 = v4;
  v408 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v409 = (v7 - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v412 = v9;
  v413 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v411 = &v404 - v11;
  OUTLINED_FUNCTION_41_0();
  sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v417 = v13;
  v418 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_0();
  v410 = v14;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_58();
  v416 = v16;
  OUTLINED_FUNCTION_41_0();
  v422 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v419 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_0();
  v415 = v19;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_58();
  v421 = v21;
  v22 = OUTLINED_FUNCTION_41_0();
  v430 = type metadata accessor for MLHandActionClassifier.DataSource(v22);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_0();
  v420 = v24;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_58();
  v426 = v26;
  v27 = OUTLINED_FUNCTION_41_0();
  v431 = type metadata accessor for MLHandActionClassifier.ModelParameters(v27);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v425 = (v30 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v31);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  v34 = &v404 - v33;
  v35 = v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  v36 = _s20PersistentParametersVMa(0);
  v429 = v35;
  v432 = v36;
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  OUTLINED_FUNCTION_82_6(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable);
  *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  v428 = xmmword_237C0BC00;
  *(inited + 16) = xmmword_237C0BC00;
  *(inited + 32) = 0x746E696F7079656BLL;
  *(inited + 40) = 0xE900000000000073;
  v38 = MEMORY[0x277D84F90];
  v444 = MEMORY[0x277D84F90];
  v439 = &v444;
  *(inited + 48) = sub_237BBDC94(sub_237A8D200);
  *(inited + 56) = v39 & 1;
  OUTLINED_FUNCTION_59_4();
  *(inited + 64) = v40;
  *(inited + 72) = v41;
  v444 = v38;
  v438 = &v444;
  *(inited + 80) = sub_237BBDC94(sub_2379F57A0);
  *(inited + 88) = v42 & 1;
  OUTLINED_FUNCTION_48_7();
  *(inited + 96) = v43;
  OUTLINED_FUNCTION_77_2();
  *(inited + 104) = v44;
  v444 = v38;
  v437 = &v444;
  *(inited + 112) = sub_237BBDC94(sub_237A8D218);
  *(inited + 120) = v45 & 1;
  OUTLINED_FUNCTION_23_31();
  *(inited + 128) = v46;
  *(inited + 136) = 0xE900000000000068;
  v444 = v38;
  v436 = &v444;
  *(inited + 144) = sub_237BBDC94(sub_2379F57A0);
  *(inited + 152) = v47 & 1;
  v48 = sub_237C085AC();
  v49 = v434;
  sub_237B6CB9C(v48, &v444);
  if (!v49)
  {
    OUTLINED_FUNCTION_85_4(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures);
    v423 = v50;
    *(v50 + 8) = v51;
    v52 = swift_initStackObject();
    v53 = OUTLINED_FUNCTION_65_3(v52, v428);
    v53[2].n128_u64[0] = v54;
    v53[2].n128_u64[1] = 0xE900000000000073;
    OUTLINED_FUNCTION_90_5();
    MEMORY[0x28223BE20](v55);
    OUTLINED_FUNCTION_17_14();
    *(v56 - 16) = &v444;
    v52[3].n128_u64[0] = sub_237BBDC94(sub_237A8D200);
    v52[3].n128_u8[8] = v57 & 1;
    OUTLINED_FUNCTION_59_4();
    v52[4].n128_u64[0] = v58;
    v52[4].n128_u64[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_90_5();
    MEMORY[0x28223BE20](v59);
    OUTLINED_FUNCTION_17_14();
    *(v60 - 16) = &v444;
    v52[5].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v52[5].n128_u8[8] = v61 & 1;
    OUTLINED_FUNCTION_48_7();
    v52[6].n128_u64[0] = v62;
    OUTLINED_FUNCTION_77_2();
    v52[6].n128_u64[1] = v63;
    OUTLINED_FUNCTION_90_5();
    MEMORY[0x28223BE20](v64);
    OUTLINED_FUNCTION_17_14();
    *(v65 - 16) = &v444;
    v52[7].n128_u64[0] = sub_237BBDC94(sub_237A8D218);
    v52[7].n128_u8[8] = v66 & 1;
    OUTLINED_FUNCTION_23_31();
    v52[8].n128_u64[0] = v67;
    v52[8].n128_u64[1] = 0xE900000000000068;
    OUTLINED_FUNCTION_90_5();
    MEMORY[0x28223BE20](v68);
    OUTLINED_FUNCTION_17_14();
    *(v69 - 16) = &v444;
    v52[9].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v52[9].n128_u8[8] = v70 & 1;
    v71 = sub_237C085AC();
    sub_237B6CB9C(v71, &v444);
    v434 = 0;
    OUTLINED_FUNCTION_85_4(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures);
    v407 = v72;
    *(v72 + 8) = v73;
    *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = 0;
    v414 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels;
    *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = 0;
    v428.n128_u64[0] = v0;
    *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary) = MEMORY[0x277D84F98];
    OUTLINED_FUNCTION_6_58();
    v424 = v74;
    v75 = v433;
    v76 = OUTLINED_FUNCTION_42_9();
    sub_237B7C0D8(v76, v77, v78);
    OUTLINED_FUNCTION_13_35();
    v79 = v425;
    sub_237B7C0D8(v435, v425, v80);
    v81 = v432;
    v83 = v432[7];
    v82 = v432[8];
    v84 = v432[9];
    v85 = v432[6];
    OUTLINED_FUNCTION_8_44();
    sub_237B7C0D8(v79, &v34[v86], v87);
    v88 = v431;
    *&v34[v85] = *(v79 + *(v431 + 20));
    *&v34[v82] = *(v79 + v88[7]);
    *&v34[v83] = *(v79 + v88[6]);
    *&v34[v81[10]] = *(v79 + v88[8]);
    v89 = *(v79 + v88[10]);
    OUTLINED_FUNCTION_0_79();
    sub_237B7C134(v79, v90);
    *&v34[v84] = v89;
    OUTLINED_FUNCTION_32_13();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
    v95 = v429;
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237B7BB94(v34, v95);
    swift_endAccess();
    v96 = v426;
    sub_237B7C0D8(v75, v426, v424);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v97 = *v96;
      v98 = *(v96 + 8);
      v99 = *(v96 + 16);
      v100 = *(v96 + 24);
      v101 = *(v96 + 40);
      v422 = *(v96 + 32);
      v424 = v99;
      v425 = v101;
      v103 = *(v96 + 48);
      v102 = *(v96 + 56);
      v104 = v423;
      OUTLINED_FUNCTION_55_5(v423);
      v105 = *v104;
      v106 = *(v104 + 8);
      *v104 = v97;
      *(v104 + 8) = v98;
      sub_2379DBCF4(v97, v98);
      sub_2379DBC9C(v105, v106);
      OUTLINED_FUNCTION_77_5();
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      v107 = v434;
      sub_237ACECE8(v104, v103, v102);
      if (v107)
      {
        swift_endAccess();

        sub_2379DBC9C(v97, v98);
        OUTLINED_FUNCTION_3_75();
        sub_237B7C134(v427, v108);
        OUTLINED_FUNCTION_0_79();
        sub_237B7C134(v435, v109);
        OUTLINED_FUNCTION_1_75();
        sub_237B7C134(v433, v110);
        v111 = v428.n128_u64[0];
LABEL_32:
        sub_2379D9054(v111 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9C938, &unk_237C14AB0);
        v248 = OUTLINED_FUNCTION_56_5(v111 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable);
        sub_2379DBC84(v248, v249);
        v250 = OUTLINED_FUNCTION_56_5(v111 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures);
        sub_2379DBC9C(v250, v251);
        v252 = OUTLINED_FUNCTION_56_5(v111 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures);
        sub_2379DBC9C(v252, v253);

        type metadata accessor for HandActionClassifierTrainingSessionDelegate(0);
        swift_deallocPartialClassInstance();
LABEL_33:
        OUTLINED_FUNCTION_38_8();
        return;
      }

      v420 = v97;
      LODWORD(v421) = v98;
      swift_endAccess();
      OUTLINED_FUNCTION_77_5();
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      v426 = v102;
      v144 = *(v104 + 8);
      v442 = *v104;
      v143 = v442;
      v443 = v144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      v145 = swift_initStackObject();
      *(v145 + 16) = xmmword_237C0B680;
      *(v145 + 32) = v424;
      *(v145 + 40) = v100;
      v419 = v103;
      v146 = v426;
      *(v145 + 48) = v103;
      *(v145 + 56) = v146;
      v147 = v425;
      *(v145 + 64) = v422;
      *(v145 + 72) = v147;
      v148 = v143;
      v149 = v426;
      sub_2379DBCF4(v148, v144);

      OUTLINED_FUNCTION_19_15();
      sub_2379F2B84();
      v111 = v428.n128_u64[0];
      v434 = 0;
      v164 = v419;
      v165 = v422;
      swift_setDeallocating();
      sub_237B9082C();
      OUTLINED_FUNCTION_108_1();
      sub_237B6C670(v166, v167, v168, v169, v170, v171, v172, v173, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423);
      OUTLINED_FUNCTION_31_8(v424, v100, v174, v175, v176, v177, v178, v179, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415);
      if ((*(v104 + 8) & 1) == 0)
      {
        v188 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v188, v189);
        sub_237B6C588();
        v190 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v190, v191);
      }

      sub_237B6C670(v180, v181, v182, v183, v184, v185, v186, v187, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423);
      OUTLINED_FUNCTION_30_10(v164, v149, v192, v193, v194, v195, v196, v197, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415);
      if ((*(v104 + 8) & 1) == 0)
      {
        v206 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v206, v207);
        sub_237B6C588();
        v208 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v208, v209);
      }

      sub_237B6C670(v198, v199, v200, v201, v202, v203, v204, v205, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423);
      sub_237B6DAB4(v165, v147, 0x6C6562616CLL, 0xE500000000000000, v210, v211, v212, v213, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415);
      v157 = v414;
      v95 = v429;
      if ((*(v104 + 8) & 1) == 0)
      {
        v214 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v214, v215);
        sub_237B6C588();
        v216 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v216, v217);
      }

      swift_endAccess();

      OUTLINED_FUNCTION_77_5();
      swift_beginAccess();
      sub_2379DF938(*(v104 + 8), &v442);
      swift_endAccess();
      v218 = OUTLINED_FUNCTION_84();
      sub_2379DFAE0(v218, v219, v220);
      v221 = OUTLINED_FUNCTION_84();
      sub_2379DBC9C(v221, v222);
      v155 = sub_2379DFC10(v444, v445);
      sub_2379DBC9C(v420, v421);
      v75 = v433;
      v156 = v427;
    }

    else
    {
      OUTLINED_FUNCTION_1_75();
      sub_237B7C134(v96, v112);
      OUTLINED_FUNCTION_6_58();
      v113 = v420;
      sub_237B7C0D8(v75, v420, v114);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v116 = v434;
      if (EnumCaseMultiPayload != 5)
      {
        OUTLINED_FUNCTION_1_75();
        sub_237B7C134(v113, v138);
        sub_237AB4184();
        v111 = v428.n128_u64[0];
        if (v116)
        {
          OUTLINED_FUNCTION_3_75();
          sub_237B7C134(v427, v140);
          OUTLINED_FUNCTION_0_79();
          sub_237B7C134(v435, v141);
          OUTLINED_FUNCTION_1_75();
          sub_237B7C134(v75, v142);
          goto LABEL_32;
        }

        v155 = sub_2379DFFEC(v139);
        v156 = v427;
        v157 = v414;
LABEL_25:
        *(v111 + v157) = v155;

        if (__swift_getEnumTagSinglePayload(v95, 1, v432))
        {
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_8_44();
        v224 = v409;
        sub_237B7C0D8(v95 + v223, v409, v225);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v226 = *v224;
            v227 = v224[8];
            v228 = *(v224 + 2);
            v432 = *(v224 + 3);
            v229 = *(v224 + 5);
            v429 = *(v224 + 4);
            v430 = v228;
            v434 = v229;
            v231 = *(v224 + 6);
            v230 = *(v224 + 7);
            v232 = v407;
            OUTLINED_FUNCTION_55_5(v407);
            v233 = *v232;
            v234 = *(v232 + 8);
            *v232 = v226;
            *(v232 + 8) = v227;
            v235 = OUTLINED_FUNCTION_11_43();
            sub_2379DBCF4(v235, v236);
            sub_2379DBC9C(v233, v234);
            OUTLINED_FUNCTION_59_1();
            swift_beginAccess();
            v237 = OUTLINED_FUNCTION_42_9();
            sub_237ACECE8(v237, v238, v230);
            if (v116)
            {
              swift_endAccess();

              v239 = OUTLINED_FUNCTION_11_43();
              sub_2379DBC9C(v239, v343);
              OUTLINED_FUNCTION_3_75();
              sub_237B7C134(v427, v344);
              OUTLINED_FUNCTION_0_79();
              sub_237B7C134(v435, v345);
              OUTLINED_FUNCTION_1_75();
              sub_237B7C134(v433, v346);
              v111 = v428.n128_u64[0];
              goto LABEL_32;
            }

            v425 = v226;
            LODWORD(v426) = v227;
            swift_endAccess();
            OUTLINED_FUNCTION_59_1();
            swift_beginAccess();
            v335 = *(v232 + 8);
            v440 = *v232;
            v441 = v335;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
            v336 = v231;
            v337 = swift_initStackObject();
            *(v337 + 16) = xmmword_237C0B680;
            v338 = v429;
            v339 = v432;
            *(v337 + 32) = v430;
            *(v337 + 40) = v339;
            *(v337 + 48) = v231;
            *(v337 + 56) = v230;
            v340 = v434;
            *(v337 + 64) = v338;
            *(v337 + 72) = v340;
            v341 = OUTLINED_FUNCTION_11_43();
            sub_2379DBCF4(v341, v342);

            OUTLINED_FUNCTION_19_15();
            sub_2379F2B84();
            v347 = v429;
            swift_setDeallocating();
            sub_237B9082C();
            sub_2379DBC9C(v440, v441);
            v348 = v407;
            sub_237B6C670(v349, v350, v351, v352, v353, v354, v355, v356, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423);
            OUTLINED_FUNCTION_31_8(v430, v339, v357, v358, v359, v360, v361, v362, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415);
            v371 = v425;
            if ((*(v348 + 8) & 1) == 0)
            {
              v372 = OUTLINED_FUNCTION_85();
              sub_2379DBCF4(v372, v373);
              sub_237B6C588();
              v374 = OUTLINED_FUNCTION_85();
              sub_2379DBC9C(v374, v375);
            }

            sub_237B6C670(v363, v364, v365, v366, v367, v368, v369, v370, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423);
            OUTLINED_FUNCTION_30_10(v336, v230, v376, v377, v378, v379, v380, v381, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415);
            if ((*(v348 + 8) & 1) == 0)
            {
              v390 = OUTLINED_FUNCTION_85();
              sub_2379DBCF4(v390, v391);
              sub_237B6C588();
              v392 = OUTLINED_FUNCTION_85();
              sub_2379DBC9C(v392, v393);
            }

            sub_237B6C670(v382, v383, v384, v385, v386, v387, v388, v389, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423);
            OUTLINED_FUNCTION_87_2(v347, v434, v394, v395, v396, v397, v398, v399, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415);
            v157 = v414;
            if ((*(v348 + 8) & 1) == 0)
            {
              v400 = OUTLINED_FUNCTION_85();
              sub_2379DBCF4(v400, v401);
              sub_237B6C588();
              v402 = OUTLINED_FUNCTION_85();
              sub_2379DBC9C(v402, v403);
            }

            swift_endAccess();

            sub_2379DBC9C(v371, v426);
            v156 = v427;
            v111 = v428.n128_u64[0];
            v75 = v433;
LABEL_36:
            sub_237B7C0D8(v156, v111 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
            if (*(v111 + v157))
            {
              v254 = v75;
              v255 = v435;
              v256 = *(v435 + *(v431 + 28));
              _s8GraphCNNCMa(0);
              swift_allocObject();

              v258 = sub_237AED020(v257, 0, 21, 3, v256);
              OUTLINED_FUNCTION_3_75();
              sub_237B7C134(v156, v259);
              OUTLINED_FUNCTION_0_79();
              sub_237B7C134(v255, v260);
              OUTLINED_FUNCTION_1_75();
              sub_237B7C134(v254, v261);
              *(v111 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = v258;
            }

            else
            {
              OUTLINED_FUNCTION_68_2();
              v262 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
              *v263 = 0xD00000000000003DLL;
              v263[1] = 0;
              OUTLINED_FUNCTION_52(v262, v263);
              OUTLINED_FUNCTION_3_75();
              sub_237B7C134(v156, v264);
              OUTLINED_FUNCTION_0_79();
              sub_237B7C134(v435, v265);
              OUTLINED_FUNCTION_1_75();
              sub_237B7C134(v75, v266);
            }

            goto LABEL_33;
          }

          v240 = type metadata accessor for MLHandActionClassifier.DataSource;
        }

        else
        {
          v240 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData;
        }

        sub_237B7C134(v224, v240);
        goto LABEL_36;
      }

      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      v118 = &v113[v117[12]];
      v119 = *v118;
      v426 = *(v118 + 1);
      v120 = &v113[v117[16]];
      v121 = *v120;
      v122 = v120[1];
      v405 = v119;
      v406 = v121;
      v123 = &v113[v117[20]];
      v124 = *v123;
      v125 = *(v123 + 1);
      v126 = v419;
      v127 = v421;
      (*(v419 + 32))(v421, v113, v422);
      v128 = v416;
      sub_237C05DFC();
      v129 = sub_237C05FFC();
      (*(v417 + 8))(v128, v418);
      v111 = v428.n128_u64[0];
      v425 = v122;
      if (v129 == MEMORY[0x277D837D0])
      {
        v150 = v411;
        sub_237C05DEC();
        v151 = v434;
        sub_237B62FE0(v410);
        v434 = v151;
        if (v151)
        {

          OUTLINED_FUNCTION_3_75();
          sub_237B7C134(v427, v152);
          OUTLINED_FUNCTION_0_79();
          sub_237B7C134(v435, v153);
          OUTLINED_FUNCTION_1_75();
          sub_237B7C134(v433, v154);
          (*(v412 + 8))(v150, v413);
          (*(v126 + 8))(v127, v422);
          goto LABEL_32;
        }

        (*(v412 + 8))(v150, v413);

        v424 = v124;
        v130 = v125;
        sub_237C05E0C();
      }

      else
      {
        v424 = v124;
        v130 = v125;
      }

      v131 = v415;
      v132 = v421;
      v133 = v422;
      (*(v126 + 16))(v415, v421, v422);
      v134 = v434;
      sub_237A70684(v131, 0, &v444);
      if (v134)
      {

        OUTLINED_FUNCTION_3_75();
        sub_237B7C134(v427, v135);
        OUTLINED_FUNCTION_0_79();
        sub_237B7C134(v435, v136);
        OUTLINED_FUNCTION_1_75();
        sub_237B7C134(v433, v137);
        (*(v126 + 8))(v132, v133);
        goto LABEL_32;
      }

      v158 = v444;
      v159 = v445;
      v160 = v423;
      OUTLINED_FUNCTION_55_5(v423);
      v161 = *v160;
      v162 = *(v160 + 8);
      *v160 = v158;
      *(v160 + 8) = v159;
      sub_2379DBC9C(v161, v162);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      v163 = v424;
      sub_237ACECE8(v160, v424, v130);
      swift_endAccess();
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      v242 = *(v160 + 8);
      v442 = *v160;
      v241 = v442;
      v443 = v242;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      v243 = swift_initStackObject();
      *(v243 + 16) = xmmword_237C0B680;
      v244 = v426;
      *(v243 + 32) = v405;
      *(v243 + 40) = v244;
      *(v243 + 48) = v163;
      *(v243 + 56) = v130;
      v424 = v163;
      v245 = v425;
      *(v243 + 64) = v406;
      *(v243 + 72) = v245;

      v246 = v241;
      v247 = v426;
      sub_2379DBCF4(v246, v242);

      OUTLINED_FUNCTION_19_15();
      sub_2379F2B84();
      v267 = v424;
      v268 = v130;
      v434 = 0;
      swift_setDeallocating();
      sub_237B9082C();
      OUTLINED_FUNCTION_108_1();
      sub_237B6C670(v269, v270, v271, v272, v273, v274, v275, v276, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423);
      OUTLINED_FUNCTION_31_8(v405, v247, v277, v278, v279, v280, v281, v282, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415);
      v291 = v422;
      if ((*(v160 + 8) & 1) == 0)
      {
        v292 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v292, v293);
        sub_237B6C588();
        v294 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v294, v295);
      }

      sub_237B6C670(v283, v284, v285, v286, v287, v288, v289, v290, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423);
      OUTLINED_FUNCTION_30_10(v267, v268, v296, v297, v298, v299, v300, v301, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415);
      v310 = *(v160 + 8);
      v311 = v160;
      v312 = v425;
      v313 = v406;
      if ((v310 & 1) == 0)
      {
        v314 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v314, v315);
        sub_237B6C588();
        v316 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v316, v317);
      }

      sub_237B6C670(v302, v303, v304, v305, v306, v307, v308, v309, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423);
      OUTLINED_FUNCTION_87_2(v313, v312, v318, v319, v320, v321, v322, v323, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415);
      if ((*(v311 + 8) & 1) == 0)
      {
        v324 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v324, v325);
        sub_237B6C588();
        v326 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v326, v327);
      }

      swift_endAccess();

      OUTLINED_FUNCTION_77_5();
      swift_beginAccess();
      OUTLINED_FUNCTION_45_3();
      sub_2379DF938(v328, v329);
      swift_endAccess();
      v330 = OUTLINED_FUNCTION_84();
      sub_2379DFAE0(v330, v331, v332);
      v333 = OUTLINED_FUNCTION_84();
      sub_2379DBC9C(v333, v334);
      v155 = sub_2379DFC10(v444, v445);
      (*(v419 + 8))(v421, v291);
      v75 = v433;
      v156 = v427;
      v157 = v414;
      v95 = v429;
    }

    v116 = v434;
    goto LABEL_25;
  }

  swift_unexpectedError();
  __break(1u);
}

void sub_237B7674C()
{
  v2 = v0;
  _s20PersistentParametersVMa(0);
  sub_237A2764C(&v35, &v37);
  if (!v1)
  {
    v3 = v35;
    v4 = v36;
    v5 = v37;
    v6 = v38;
    if (v36 == 255)
    {
      if (v38 != 255)
      {
        v20 = v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
        OUTLINED_FUNCTION_46_5();
        v21 = *v20;
        *v20 = v5;
        v22 = *(v20 + 8);
        *(v20 + 8) = v6;
        sub_2379DBCF4(v5, v6 & 1);
        sub_2379DBC84(v21, v22);
        *(v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
LABEL_11:
        v39 = v5;
        v40 = v6 & 1;
        sub_2379DBCF4(v5, v6 & 1);
        v26 = MLDataTable.size.getter();
        v27 = OUTLINED_FUNCTION_63_3();
        sub_2379DBC84(v27, v28);
        v29 = OUTLINED_FUNCTION_75_3();
        sub_2379DBC84(v29, v30);
        v31 = OUTLINED_FUNCTION_75_3();
        sub_2379DBC84(v31, v32);
LABEL_14:
        *(v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = v26;
        return;
      }

      *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
    }

    else
    {
      if (v38 == 255)
      {
        v23 = v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
        OUTLINED_FUNCTION_46_5();
        v24 = *v23;
        *v23 = v3;
        v25 = *(v23 + 8);
        *(v23 + 8) = v4;
        sub_2379DBCF4(v3, v4 & 1);
        v18 = v24;
        v19 = v25;
      }

      else
      {
        v7 = v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
        OUTLINED_FUNCTION_46_5();
        v8 = *v7;
        *v7 = v3;
        v9 = *(v7 + 8);
        *(v7 + 8) = v4 & 1;
        sub_2379DBCF4(v3, v4 & 1);
        v10 = OUTLINED_FUNCTION_63_3();
        sub_2379DBCDC(v10, v11);
        v12 = OUTLINED_FUNCTION_75_3();
        sub_2379DBCDC(v12, v13);
        sub_2379DBC84(v8, v9);
        v14 = sub_237B74BD0();
        if (*(v15 + 8) != 255)
        {
          v39 = v5;
          v40 = v6 & 1;
          MLDataTable.append(contentsOf:)();
        }

        (v14)(&v35, 0);
        v16 = OUTLINED_FUNCTION_63_3();
        sub_2379DBC84(v16, v17);
        v18 = OUTLINED_FUNCTION_75_3();
      }

      sub_2379DBC84(v18, v19);
      v39 = v3;
      v40 = v4 & 1;
      *(v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = MLDataTable.size.getter();
      if (v6 != 255)
      {
        goto LABEL_11;
      }
    }

    v33 = OUTLINED_FUNCTION_63_3();
    sub_2379DBC84(v33, v34);
    v26 = 0;
    goto LABEL_14;
  }
}

uint64_t sub_237B769A8()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_106_2();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_86_5();
  v7 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v0 + v7, v1, &qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_73_1(v1, 1, v5);
  if (v8)
  {
    result = sub_2379D9054(v1, &qword_27DE9C938, &unk_237C14AB0);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_65();
    v9 = OUTLINED_FUNCTION_32_3();
    sub_237B7C07C(v9, v10, v11);
    sub_237B7674C();
    OUTLINED_FUNCTION_2_73();
    return sub_237B7C134(v2, v12);
  }

  return result;
}

void sub_237B76AE4()
{
  OUTLINED_FUNCTION_74();
  v120 = v1;
  v123 = v2;
  v3 = sub_237C05ADC();
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_0();
  v112 = v5;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_138();
  v114 = v7;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_138();
  v116 = v9;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_58();
  v119 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v13 = OUTLINED_FUNCTION_20(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_0();
  v118 = v14;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_74_7();
  v17 = type metadata accessor for MLCheckpoint(v16);
  OUTLINED_FUNCTION_0();
  v117 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_0();
  v124 = v20;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_138();
  v115 = v22;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_58();
  v122 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v25);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v28 = &v109 - v27;
  v29 = _s20PersistentParametersVMa(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  v34 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v121 = v0;
  sub_2379FC864(v0 + v34, v28, &qword_27DE9C938, &unk_237C14AB0);
  v113 = v29;
  OUTLINED_FUNCTION_73_1(v28, 1, v29);
  if (v35)
  {
    sub_2379D9054(v28, &qword_27DE9C938, &unk_237C14AB0);
    __break(1u);
    JUMPOUT(0x237B77798);
  }

  OUTLINED_FUNCTION_4_65();
  sub_237B7C07C(v28, v33, v36);
  sub_237A9A92C(v123, v0);
  OUTLINED_FUNCTION_73_1(v0, 1, v17);
  if (v35)
  {
    sub_2379D9054(v0, &qword_27DE9B8E8, &qword_237C0EBF0);
    OUTLINED_FUNCTION_68_2();
    v37 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v38 = 0xD00000000000001DLL;
    v38[1] = v0;
    OUTLINED_FUNCTION_52(v37, v38);
  }

  else
  {
    OUTLINED_FUNCTION_39_14();
    v39 = v122;
    sub_237B7C07C(v0, v122, v40);
    v41 = *(v17 + 20);
    v42 = v17;
    v43 = 0xEB0000000064657ALL;
    v44 = 0x696C616974696E69;
    switch(*(v39 + v41))
    {
      case 1:
LABEL_12:

        goto LABEL_16;
      case 2:
        v43 = 0xE800000000000000;
        v44 = OUTLINED_FUNCTION_51_4();
        break;
      case 3:
        v44 = OUTLINED_FUNCTION_158();
        v43 = 0xEA0000000000676ELL;
        break;
      case 4:
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_63_7();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_29_16(v44, v43);
    OUTLINED_FUNCTION_107_2();
    if (v17)
    {
      goto LABEL_16;
    }

    v45 = 0xEA0000000000676ELL;
    switch(*(v39 + v41))
    {
      case 1:
        break;
      case 2:
        goto LABEL_12;
      case 3:
        OUTLINED_FUNCTION_158();
        break;
      case 4:
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_63_7();
        break;
      default:
        v45 = 0xEB0000000064657ALL;
        break;
    }

    OUTLINED_FUNCTION_57_0();
    sub_237C0929C();
    OUTLINED_FUNCTION_107_2();
    if (v17)
    {
LABEL_16:
      v111 = v41;
      v46 = v120;
      sub_237B7674C();
      if (!v46)
      {
        v47 = 0xEB0000000064657ALL;
        v48 = 0x696C616974696E69;
        switch(*(v39 + v111))
        {
          case 1:

            goto LABEL_24;
          case 2:
            v47 = 0xE800000000000000;
            v48 = 0x676E696E69617274;
            break;
          case 3:
            v48 = OUTLINED_FUNCTION_158();
            v47 = 0xEA0000000000676ELL;
            break;
          case 4:
            OUTLINED_FUNCTION_60_0();
            OUTLINED_FUNCTION_63_7();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_29_16(v48, v47);
        v51 = OUTLINED_FUNCTION_107_2();
        if (v17)
        {
LABEL_24:
          OUTLINED_FUNCTION_51_4();
          sub_237C05A2C();
          LOBYTE(v143) = 1;
          v144 = 44;
          v145 = 0xE100000000000000;
          v146 = 0;
          v147 = 0xE000000000000000;
          v148 = 92;
          v149 = 0xE100000000000000;
          v150 = 1;
          v151 = 34;
          v152 = 0xE100000000000000;
          v153 = 1;
          v154 = &unk_284ABEBF0;
          v155 = 10;
          v157 = 0;
          v158 = 0;
          v156 = 0xE100000000000000;
          v159 = 1;
          OUTLINED_FUNCTION_70_5();
          v110 = v33;
          v66 = v162;
          v67 = v163;
          v68 = v121 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
          OUTLINED_FUNCTION_46_5();
          v69 = OUTLINED_FUNCTION_93_2();
          *v68 = v66;
          *(v68 + 8) = v67;
          sub_2379DBC9C(v69, v70);
          OUTLINED_FUNCTION_49_0();
          v71 = v116;
          sub_237C05A2C();
          LOBYTE(v125) = 1;
          v126 = 44;
          v127 = 0xE100000000000000;
          v128 = 0;
          v129 = 0xE000000000000000;
          v130 = 92;
          v131 = 0xE100000000000000;
          v132 = 1;
          v133 = 34;
          v134 = 0xE100000000000000;
          v135 = 1;
          v136 = &unk_284ABEBF0;
          v137 = 10;
          v139 = 0;
          v140 = 0;
          v138 = 0xE100000000000000;
          v141 = 1;
          v142 = 0;
          MLDataTable.init(contentsOf:options:)(v71, &v125, &v160);
          v82 = v160;
          LOBYTE(v71) = v161;
          v83 = v121;
          v84 = v121 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
          OUTLINED_FUNCTION_46_5();
          v85 = OUTLINED_FUNCTION_93_2();
          *v84 = v82;
          *(v84 + 8) = v71;
          sub_2379DBC9C(v85, v86);
          v87 = v110;
        }

        else
        {
          v143 = v123;
          v55 = *(v123 + 16);
          v110 = v33;
          if (v55)
          {
            v56 = *(v117 + 72);
            v57 = v55 - 1;
            v58 = v123 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + v56 * (v55 - 1);
            v59 = -v56;
            while (2)
            {
              v60 = v124;
              sub_237B7C0D8(v58, v124, type metadata accessor for MLCheckpoint);
              v61 = *(v60 + *(v42 + 20));
              v62 = 0xEB0000000064657ALL;
              v63 = 0x696C616974696E69;
              switch(v61)
              {
                case 1:
                  v73 = v42;

                  OUTLINED_FUNCTION_5_60();
                  v51 = sub_237B7C134(v124, v94);
                  v39 = v122;
                  v72 = v118;
                  goto LABEL_40;
                case 2:
                  v62 = 0xE800000000000000;
                  v63 = OUTLINED_FUNCTION_51_4();
                  goto LABEL_34;
                case 3:
                  v62 = 0xEA0000000000676ELL;
                  v63 = OUTLINED_FUNCTION_158();
                  goto LABEL_34;
                case 4:
                  v62 = 0xEB00000000676E69;
                  v63 = OUTLINED_FUNCTION_60_0();
                  goto LABEL_34;
                default:
LABEL_34:
                  v64 = OUTLINED_FUNCTION_29_16(v63, v62);

                  OUTLINED_FUNCTION_5_60();
                  v51 = sub_237B7C134(v124, v65);
                  if (v64)
                  {
                    goto LABEL_37;
                  }

                  --v57;
                  v58 += v59;
                  if (v57 != -1)
                  {
                    continue;
                  }

                  v57 = 0;
LABEL_37:
                  v39 = v122;
                  break;
              }

              break;
            }
          }

          else
          {
            v57 = 0;
          }

          v72 = v118;
          v73 = v42;
LABEL_40:
          MEMORY[0x28223BE20](v51);
          *(&v109 - 2) = &v143;
          sub_237A9D3D4(sub_237A594BC, (&v109 - 4), v57, v74 & 1, v72);
          OUTLINED_FUNCTION_73_1(v72, 1, v73);
          if (v35)
          {
            sub_2379D9054(v72, &qword_27DE9B8E8, &qword_237C0EBF0);
            v83 = v121;
            v75 = v121 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
            OUTLINED_FUNCTION_71();
            swift_beginAccess();
            v76 = *(v75 + 8);
            v125 = *v75;
            LOBYTE(v126) = v76;
            v77 = MLDataTable.size.getter();
            v87 = v110;
            if (!v77)
            {
              OUTLINED_FUNCTION_68_2();
              v78 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
              *v79 = 0xD000000000000028;
              v79[1] = &v125;
              OUTLINED_FUNCTION_52(v78, v79);
LABEL_51:
              OUTLINED_FUNCTION_5_60();
              sub_237B7C134(v39, v108);
              OUTLINED_FUNCTION_2_73();
              v54 = v87;
              goto LABEL_27;
            }
          }

          else
          {
            OUTLINED_FUNCTION_39_14();
            v80 = v115;
            sub_237B7C07C(v72, v115, v81);
            OUTLINED_FUNCTION_51_4();
            sub_237C05A2C();
            LOBYTE(v143) = 1;
            v144 = 44;
            v145 = 0xE100000000000000;
            v146 = 0;
            v147 = 0xE000000000000000;
            v148 = 92;
            v149 = 0xE100000000000000;
            v150 = 1;
            v151 = 34;
            v152 = 0xE100000000000000;
            v153 = 1;
            v154 = &unk_284ABEBF0;
            v155 = 10;
            v157 = 0;
            v158 = 0;
            v156 = 0xE100000000000000;
            v159 = 1;
            OUTLINED_FUNCTION_70_5();
            v88 = v162;
            v89 = v163;
            v90 = v121 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
            OUTLINED_FUNCTION_46_5();
            v91 = OUTLINED_FUNCTION_93_2();
            *v90 = v88;
            *(v90 + 8) = v89;
            sub_2379DBC9C(v91, v92);
            OUTLINED_FUNCTION_49_0();
            v93 = v112;
            sub_237C05A2C();
            LOBYTE(v125) = 1;
            v126 = 44;
            v127 = 0xE100000000000000;
            v128 = 0;
            v129 = 0xE000000000000000;
            v130 = 92;
            v131 = 0xE100000000000000;
            v132 = 1;
            v133 = 34;
            v134 = 0xE100000000000000;
            v135 = 1;
            v136 = &unk_284ABEBF0;
            v137 = 10;
            v139 = 0;
            v140 = 0;
            v138 = 0xE100000000000000;
            v141 = 1;
            v142 = 0;
            MLDataTable.init(contentsOf:options:)(v93, &v125, &v160);
            OUTLINED_FUNCTION_5_60();
            sub_237B7C134(v80, v95);
            v96 = v160;
            v97 = v161;
            v83 = v121;
            v98 = v121 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
            OUTLINED_FUNCTION_46_5();
            v99 = OUTLINED_FUNCTION_93_2();
            *v98 = v96;
            *(v98 + 8) = v97;
            sub_2379DBC9C(v99, v100);
            v87 = v110;
            v39 = v122;
          }
        }

        switch(*(v39 + v111))
        {
          case 2:

            goto LABEL_50;
          case 3:
            OUTLINED_FUNCTION_158();
            break;
          case 4:
            OUTLINED_FUNCTION_60_0();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_57_0();
        v101 = sub_237C0929C();

        if (v101)
        {
LABEL_50:
          v102 = v83 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
          OUTLINED_FUNCTION_71();
          swift_beginAccess();
          v103 = *v102;
          LOBYTE(v102) = *(v102 + 8);
          sub_2379DBCF4(v103, v102);
          OUTLINED_FUNCTION_45_3();
          sub_2379DF938(v102, &v160);
          sub_2379DBC9C(v103, v102);
          v104 = v160;
          LOBYTE(v103) = v161;
          sub_2379DFAE0(v160, v161, &v162);
          sub_2379DBC9C(v104, v103);
          *(v83 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = sub_2379DFC10(v162, v163);

          v105 = *(v87 + *(v113 + 32));
          _s8GraphCNNCMa(0);
          swift_allocObject();
          v106 = OUTLINED_FUNCTION_85();
          *(v83 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = sub_237AED020(v106, v107, 21, 3, v105);

          sub_237AE8BE0();
          sub_237BA9BC8();
        }

        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_68_2();
      v49 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
      *v50 = 0xD00000000000003FLL;
      v50[1] = v45;
      OUTLINED_FUNCTION_52(v49, v50);
    }

    OUTLINED_FUNCTION_5_60();
    sub_237B7C134(v39, v52);
  }

  OUTLINED_FUNCTION_2_73();
  v54 = v33;
LABEL_27:
  sub_237B7C134(v54, v53);
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B777FC(unsigned __int8 *a1)
{
  v2 = *a1;
  result = 0;
  switch(v2)
  {
    case 1:
      v4 = v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      if (*(v4 + 8) == 255)
      {
        result = 0;
      }

      else
      {
        result = MLDataTable.size.getter();
      }

      break;
    case 2:
      v5 = v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters;
      result = *(v5 + *(type metadata accessor for MLTrainingSessionParameters(0) + 28));
      break;
    default:
      return result;
  }

  return result;
}

void sub_237B778D0()
{
  OUTLINED_FUNCTION_74();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_105_2();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  v10 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v0 + v10, v0, &qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_73_1(v0, 1, v8);
  if (v11)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_4_65();
  sub_237B7C07C(v0, v2, v12);
  v13 = v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v14 = *(v13 + 8);
  if (v14 == 255)
  {
LABEL_12:
    OUTLINED_FUNCTION_2_73();
    sub_237B7C134(v2, v24);
LABEL_14:
    OUTLINED_FUNCTION_73();
    return;
  }

  v46 = *v13;
  v47 = v14 & 1;
  sub_2379DBCF4(v46, v14 & 1);
  MLDataTable.size.getter();
  if (v15 <= 0)
  {
    goto LABEL_13;
  }

  v16 = *(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount);
  v17 = *(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount);
  v0 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v0 <= v5)
  {
LABEL_13:
    OUTLINED_FUNCTION_2_73();
    sub_237B7C134(v2, v25);
    v26 = OUTLINED_FUNCTION_75_3();
    sub_2379DBC84(v26, v27);
    goto LABEL_14;
  }

  v43 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount;
  v44 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount;
  v18 = v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters;
  v19 = *(v18 + *(type metadata accessor for MLTrainingSessionParameters(0) + 20));
  v20 = __OFADD__(v5, v19);
  v21 = v5 + v19;
  v22 = v20;
  v23 = v5;
  if (v16 <= v5)
  {
    if (v22)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    v0 = v16;
    if (v22)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v42 = v16;
  if (v0 >= v21)
  {
    v28 = v21;
  }

  else
  {
    v28 = v0;
  }

  if (v28 < v23)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v47 = v14 & 1;
  v29 = v23;
  v41 = v28;
  MLDataTable.subscript.getter(&v48, v23, v28);
  v30 = v48;
  v31 = v49;
  _s16FeatureExtractorCMa();
  v45 = v30;
  v48 = v30;
  v49 = v31;
  sub_2379F54E0(&v48, v29, &v46, *(v2 + *(v8 + 36)));
  if (v1)
  {
    OUTLINED_FUNCTION_2_73();
    sub_237B7C134(v2, v32);
    v33 = OUTLINED_FUNCTION_75_3();
    sub_2379DBC84(v33, v34);
    sub_2379DBC9C(v30, v31);
    goto LABEL_14;
  }

  v48 = v46;
  v49 = v47;
  if (v42 <= v29)
  {
    v35 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
  }

  else
  {
    v35 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
  }

  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  v0 = v3 + v35;
  MLDataTable.append(contentsOf:)();
  swift_endAccess();
  v36 = OUTLINED_FUNCTION_75_3();
  sub_2379DBC84(v36, v37);
  sub_2379DBC9C(v45, v31);
  OUTLINED_FUNCTION_2_73();
  sub_237B7C134(v2, v38);
  v39 = OUTLINED_FUNCTION_11_43();
  sub_2379DBC9C(v39, v40);
  if (!__OFSUB__(v41, v29))
  {
    if (!__OFADD__(*(v3 + v44), *(v3 + v43)))
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_2379D9054(v0, &qword_27DE9C938, &unk_237C14AB0);
  __break(1u);
}

void sub_237B77C7C(_BYTE *a1)
{
  v5 = v1;
  v7 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_86_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_105_2();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  if (*a1 == 2)
  {
    v13 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379FC864(v1 + v13, v1, &qword_27DE9C938, &unk_237C14AB0);
    OUTLINED_FUNCTION_73_1(v1, 1, v11);
    if (v14)
    {
      sub_2379D9054(v1, &qword_27DE9C938, &unk_237C14AB0);
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_4_65();
      sub_237B7C07C(v1, v4, v15);
      v16 = v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      v17 = *v16;
      LOBYTE(v16) = *(v16 + 8);
      sub_2379DBCF4(v17, v16);
      OUTLINED_FUNCTION_45_3();
      sub_2379DF938(v16, &v30);
      sub_2379DBC9C(v17, v16);
      v18 = v30;
      LOBYTE(v17) = v31;
      sub_2379DFAE0(v30, v31, &v32);
      sub_2379DBC9C(v18, v17);
      *(v5 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = sub_2379DFC10(v32, v33);

      v19 = *(v4 + v11[8]);
      _s8GraphCNNCMa(0);
      swift_allocObject();
      v20 = OUTLINED_FUNCTION_85();
      *(v5 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = sub_237AED020(v20, v21, 21, 3, v19);

      OUTLINED_FUNCTION_8_44();
      sub_237B7C0D8(v4 + v22, v3, v23);
      v24 = *(v4 + v11[7]);
      v25 = *(v4 + v11[10]);
      v26 = *(v4 + v11[9]);
      *(v3 + v7[5]) = *(v4 + v11[6]);
      *(v3 + v7[6]) = v24;
      *(v3 + v7[7]) = v19;
      *(v3 + v7[8]) = v25;
      *(v3 + v7[10]) = v26;
      OUTLINED_FUNCTION_0_79();
      sub_237B7C134(v3, v27);
      sub_237BB0D90();
      if (v2)
      {
        OUTLINED_FUNCTION_2_73();
        sub_237B7C134(v4, v28);
      }

      else
      {
        sub_237BA9BC8();

        OUTLINED_FUNCTION_2_73();
        sub_237B7C134(v4, v29);
      }
    }
  }
}

void sub_237B77F88()
{
  OUTLINED_FUNCTION_37_8();
  v176 = v1;
  v4 = v3;
  v158 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v157 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v8 - v7);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C078, &qword_237C11730);
  OUTLINED_FUNCTION_0();
  v172 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77_0(v138 - v11);
  v174 = sub_237C0617C();
  OUTLINED_FUNCTION_0();
  v173 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77_0(v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C080, &qword_237C0F360);
  OUTLINED_FUNCTION_20(v18);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77_0(v138 - v20);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
  OUTLINED_FUNCTION_0();
  v169 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v24);
  v25 = _s20PersistentParametersVMa(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v30);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_52_8();
  v32 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_0();
  v163 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_77_0(v138 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v39 = v138 - v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_58();
  v178 = v41;
  v179 = v0;
  v42 = v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters;
  v43 = type metadata accessor for MLTrainingSessionParameters(0);
  v44 = *(v42 + *(v43 + 20));
  if (__OFADD__(v4, v44))
  {
    __break(1u);
    goto LABEL_41;
  }

  v45 = *(v42 + *(v43 + 28));
  if (__OFSUB__(v45, v4))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v177 = v4;
  v159 = v45;
  v160 = v4 + v44;
  if (v44 >= v45 - v4)
  {
    v46 = v45 - v4;
  }

  else
  {
    v46 = v44;
  }

  v184 = MEMORY[0x277D84F98];
  v47 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  v48 = v179;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v48 + v47, v2, &qword_27DE9C938, &unk_237C14AB0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v25))
  {
    sub_2379D9054(v2, &qword_27DE9C938, &unk_237C14AB0);
    sub_2379E8AF0();
    v49 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v50 = 0xD000000000000026;
    v50[1] = 0x8000000237C19F70;
    OUTLINED_FUNCTION_52(v49, v50);
LABEL_13:
    OUTLINED_FUNCTION_38_8();
    return;
  }

  v156 = v46;
  sub_237B7C0D8(v2, v29, _s20PersistentParametersVMa);
  sub_2379D9054(v2, &qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_8_44();
  sub_237B7C0D8(v29 + v51, v39, v52);
  v53 = *(v29 + v25[6]);
  v54 = *(v29 + v25[7]);
  v55 = v25[9];
  v56 = *(v29 + v25[8]);
  v57 = *(v29 + v25[10]);
  v58 = *(v29 + v55);
  OUTLINED_FUNCTION_2_73();
  sub_237B7C134(v29, v59);
  *&v39[v32[5]] = v53;
  *&v39[v32[6]] = v54;
  *&v39[v32[7]] = v56;
  *&v39[v32[8]] = v57;
  *&v39[v32[10]] = v58;
  OUTLINED_FUNCTION_14_33();
  v60 = v178;
  sub_237B7C07C(v39, v178, v61);
  v62 = *(v48 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);
  if (!v62 || (v63 = *(v48 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels)) == 0)
  {
    sub_2379E8AF0();
    v73 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v74 = 0xD00000000000003CLL;
    v74[1] = 0x8000000237C19FA0;
    OUTLINED_FUNCTION_52(v73, v74);
    OUTLINED_FUNCTION_0_79();
    sub_237B7C134(v60, v75);
    goto LABEL_13;
  }

  v64 = v48 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v65 = *v64;
  v66 = *(v64 + 8);
  v67 = v48 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v68 = *v67;
  v69 = *(v67 + 8);
  *&v180 = v65;
  BYTE8(v180) = v66;

  sub_2379DBCF4(v65, v66);
  sub_2379DBCF4(v68, v69);
  v155 = v63;
  v70 = v176;
  sub_2379EA98C(&v180, v63);
  if (v70)
  {
    OUTLINED_FUNCTION_58_10();

    sub_2379DBC9C(v68, v69);
    OUTLINED_FUNCTION_0_79();
    sub_237B7C134(v178, v72);
    sub_2379DBC9C(v65, v66);
    goto LABEL_13;
  }

  v76 = v71;
  v153 = v65;
  v149 = v66;
  v176 = v62;
  v152 = v69;
  v154 = *(v155 + 16);
  v77 = *MEMORY[0x277D2CD40];
  v150 = v68;
  v78 = v173;
  v79 = *(v173 + 104);
  v80 = v174;
  v147 = v173 + 104;
  v145 = v79;
  v79(v175, v77, v174);
  v183 = v76;
  v81 = v178;
  v151 = *(v178 + v32[5]);
  v182 = 0;
  v180 = 0u;
  v181 = 0u;
  v82 = v166;
  OUTLINED_FUNCTION_137_0();
  v148 = v83;
  v146 = v84;
  v84();
  OUTLINED_FUNCTION_13_35();
  v85 = v165;
  sub_237B7C0D8(v81, v165, v86);
  v87 = *(v78 + 80);
  v88 = (v87 + 16) & ~v87;
  v89 = *(v163 + 80);
  v90 = (v164 + v89 + v88) & ~v89;
  v143 = v87 | v89;
  v91 = swift_allocObject();
  v92 = *(v78 + 32);
  v144 = v88;
  v142 = v78 + 32;
  v141 = v92;
  v92(v91 + v88, v82, v80);
  OUTLINED_FUNCTION_14_33();
  v163 = v90;
  sub_237B7C07C(v85, v91 + v90, v93);
  v164 = (v35 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v91 + v164) = v154;
  v94 = *(v172 + 104);
  v140 = *MEMORY[0x277D2CEC0];
  v172 += 104;
  v139 = v94;
  v94(v168);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C090, &qword_237C0F380);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  v97 = v152;
  v98 = sub_2379D9224(&qword_27DE9C098, &qword_27DE9C090, &qword_237C0F380, MEMORY[0x277D83970]);
  v99 = sub_237A252E0();
  v138[0] = sub_2379D9224(&qword_27DE9B468, &qword_27DE9B420, &qword_237C0CCD8, MEMORY[0x277D2CC60]);
  v138[1] = v99;
  v138[2] = v98;
  v138[3] = v96;
  OUTLINED_FUNCTION_99_1();
  sub_237C0686C();
  v100 = *(v78 + 8);
  v173 = v78 + 8;
  v100(v175, v174);
  v101 = v150;
  *&v180 = v150;
  BYTE8(v180) = v97;
  sub_2379DBCF4(v150, v97);
  if (MLDataTable.size.getter())
  {
    *&v180 = v101;
    BYTE8(v180) = v97;
    sub_2379EA98C(&v180, v155);
    v103 = v102;
    OUTLINED_FUNCTION_58_10();

    v104 = *MEMORY[0x277D2CD48];
    v105 = v175;
    v155 = v95;
    v106 = v174;
    v145(v175, v104, v174);
    v183 = v103;
    v182 = 0;
    v180 = 0u;
    v181 = 0u;
    v107 = v166;
    (v146)(v166, v105, v106);
    OUTLINED_FUNCTION_13_35();
    v108 = v165;
    sub_237B7C0D8(v178, v165, v109);
    v110 = v164;
    v111 = swift_allocObject();
    v141(v111 + v144, v107, v106);
    OUTLINED_FUNCTION_14_33();
    sub_237B7C07C(v108, v111 + v163, v112);
    *(v111 + v110) = v154;
    v139(v168, v140, v167);

    v113 = v162;
    sub_237C0686C();
    OUTLINED_FUNCTION_103_2();

    LOBYTE(v110) = v152;
    sub_2379DBC9C(v101, v152);
    sub_2379DBC9C(v101, v110);
    v100(v175, v106);
  }

  else
  {
    OUTLINED_FUNCTION_58_10();

    sub_2379DBC9C(v101, v97);
    OUTLINED_FUNCTION_103_2();
    sub_2379DBC9C(v101, v97);
    v113 = v162;
  }

  v114 = v161;
  (*(v169 + 32))(v161, v171, v170);
  OUTLINED_FUNCTION_32_13();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);
  v119 = v179;
  v120 = v156;
  if ((v156 & 0x8000000000000000) == 0)
  {
    v121 = 0;
    v122 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary;
    while (v120 != v121)
    {
      if (__OFADD__(v121, 1))
      {
        goto LABEL_42;
      }

      if (__OFADD__(v177, v121))
      {
        goto LABEL_43;
      }

      *(v119 + v122) = sub_237BA7528(v114, v113, v177 + v121);

      ++v121;
    }

    v123 = *(v119 + v122);

    v124 = OUTLINED_FUNCTION_51_4();
    sub_237AC9A74(v123, &v180, v124, 0xED000073736F6C5FLL);

    if (*(&v181 + 1))
    {
      OUTLINED_FUNCTION_50_12();
      if (swift_dynamicCast())
      {
        v125 = OUTLINED_FUNCTION_67_8();
        sub_237B19FFC(v125, 0);
      }
    }

    else
    {
      sub_2379D9054(&v180, &qword_27DE9A998, &unk_237C0C100);
    }

    v126 = *(v119 + v122);

    v127 = OUTLINED_FUNCTION_49_0();
    sub_237AC9A74(v126, &v180, v127, 0xEF73736F6C5F6E6FLL);

    if (*(&v181 + 1))
    {
      v126 = MEMORY[0x277D839F8];
      OUTLINED_FUNCTION_50_12();
      if (swift_dynamicCast())
      {
        v128 = OUTLINED_FUNCTION_67_8();
        sub_237B19FFC(v128, 4);
      }
    }

    else
    {
      sub_2379D9054(&v180, &qword_27DE9A998, &unk_237C0C100);
    }

    OUTLINED_FUNCTION_104_1();
    sub_237AC9A74(v126, &v180, 0xD000000000000012, 0x8000000000000000);

    if (*(&v181 + 1))
    {
      type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
      OUTLINED_FUNCTION_50_12();
      if (swift_dynamicCast())
      {
        v126 = v183;
        OUTLINED_FUNCTION_71_7();
        sub_237A34D48(v114, v154);
        v129 = v114;
        v114 = v161;
        (*(v157 + 8))(v129, v158);
        v130 = OUTLINED_FUNCTION_84_3();
        sub_237B19FFC(v130, 3);
      }
    }

    else
    {
      sub_2379D9054(&v180, &qword_27DE9A998, &unk_237C0C100);
    }

    OUTLINED_FUNCTION_104_1();
    sub_237AC9A74(v126, &v180, 0xD000000000000014, 0x8000000000000000);

    if (*(&v181 + 1))
    {
      type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
      OUTLINED_FUNCTION_50_12();
      v131 = swift_dynamicCast();
      v132 = v178;
      if (v131)
      {
        OUTLINED_FUNCTION_71_7();
        sub_237A34D48(v114, v154);
        (*(v157 + 8))(v114, v158);
        v133 = OUTLINED_FUNCTION_84_3();
        sub_237B19FFC(v133, 5);
      }

      sub_2379D9054(v162, &qword_27DE9C080, &qword_237C0F360);
      OUTLINED_FUNCTION_31_20();
      OUTLINED_FUNCTION_94_1();
      v136();
      OUTLINED_FUNCTION_0_79();
      sub_237B7C134(v132, v137);
    }

    else
    {

      sub_2379D9054(v162, &qword_27DE9C080, &qword_237C0F360);
      OUTLINED_FUNCTION_31_20();
      OUTLINED_FUNCTION_94_1();
      v134();
      OUTLINED_FUNCTION_0_79();
      sub_237B7C134(v178, v135);
      sub_2379D9054(&v180, &qword_27DE9A998, &unk_237C0C100);
    }

    goto LABEL_13;
  }

LABEL_44:
  __break(1u);
}

void sub_237B79174()
{
  OUTLINED_FUNCTION_74();
  v2 = v0;
  v4 = v3;
  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  v17 = *v4;
  if (v17 == 2)
  {
    if (*(v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model))
    {

      sub_237B74974();
    }
  }

  else if (v17 == 1)
  {
    v85 = v14;
    v34 = v12;
    v35 = v13;
    v18 = v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
    OUTLINED_FUNCTION_55_5(v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures);
    v19 = *(v18 + 8);
    v56 = *v18;
    LOBYTE(v57) = v19;
    sub_2379DBCF4(v56, v19);
    sub_237C05A2C();
    MLDataTable.write(to:)(v16);
    if (v1)
    {
      (*(v85 + 8))(v16, v5);
      sub_2379DBC9C(v56, v57);
    }

    else
    {
      v33 = v18;
      v86 = *(v85 + 8);
      v86(v16, v5);
      sub_2379DBC9C(v56, v57);
      v20 = v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
      OUTLINED_FUNCTION_55_5(v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures);
      v21 = *(v20 + 8);
      v83 = *v20;
      v84 = v21;
      sub_2379DBCF4(v83, v21);
      sub_237C05A2C();
      MLDataTable.write(to:)(v10);
      v32 = v20;
      v86(v10, v5);
      sub_2379DBC9C(v83, v84);
      v22 = v35;
      OUTLINED_FUNCTION_51_4();
      sub_237C05A2C();
      LOBYTE(v56) = 1;
      *(&v56 + 1) = *v82;
      HIDWORD(v56) = *&v82[3];
      v57 = 44;
      v58 = 0xE100000000000000;
      v59 = 0;
      v60 = 0xE000000000000000;
      v61 = 92;
      v62 = 0xE100000000000000;
      v63 = 1;
      *v64 = *v81;
      *&v64[3] = *&v81[3];
      v65 = 34;
      v66 = 0xE100000000000000;
      v67 = 1;
      *v68 = *v80;
      *&v68[3] = *&v80[3];
      v69 = &unk_284ABEBF0;
      v70 = 10;
      v71 = 0xE100000000000000;
      v72 = 0;
      v73 = 0;
      v74 = 1;
      *v75 = *v79;
      *&v75[3] = *&v79[3];
      v76 = 0;
      MLDataTable.init(contentsOf:options:)(v22, &v56, &v77);
      v23 = v78;
      v24 = v33;
      v25 = *v33;
      v26 = *(v33 + 8);
      *v33 = v77;
      *(v24 + 8) = v23;
      sub_2379DBC9C(v25, v26);
      v27 = v34;
      OUTLINED_FUNCTION_49_0();
      sub_237C05A2C();
      v36 = 1;
      v37 = 44;
      v38 = 0xE100000000000000;
      v39 = 0;
      v40 = 0xE000000000000000;
      v41 = 92;
      v42 = 0xE100000000000000;
      v43 = 1;
      v44 = 34;
      v45 = 0xE100000000000000;
      v46 = 1;
      v47 = &unk_284ABEBF0;
      v48 = 10;
      v50 = 0;
      v51 = 0;
      v49 = 0xE100000000000000;
      v52 = 1;
      v53 = 0;
      MLDataTable.init(contentsOf:options:)(v27, &v36, &v54);
      v28 = v55;
      v29 = v32;
      v30 = *v32;
      v31 = *(v32 + 8);
      *v32 = v54;
      *(v29 + 8) = v28;
      sub_2379DBC9C(v30, v31);
    }
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B795FC()
{
  OUTLINED_FUNCTION_74();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_106_2();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_86_5();
  v9 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v0 + v9, v1, &qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_73_1(v1, 1, v7);
  if (v10)
  {
    sub_2379D9054(v1, &qword_27DE9C938, &unk_237C14AB0);
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v11 = 0xD000000000000030;
    *(v11 + 8) = v0;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_4_65();
    v12 = OUTLINED_FUNCTION_32_3();
    sub_237B7C07C(v12, v13, v14);
    sub_237A051E4(v4);
    OUTLINED_FUNCTION_2_73();
    sub_237B7C134(v2, v15);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B79A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_8();
  a19 = v22;
  a20 = v23;
  v225 = v21;
  v25 = v24;
  v27 = v26;
  v206 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v215 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v31 - v30);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C038, &qword_237C0F320);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v34);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C040, &unk_237C14AA0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v38);
  v219 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v42);
  v44 = &v200 - v43;
  v220 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v221 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v48);
  v50 = &v200 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v200 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v55 = OUTLINED_FUNCTION_20(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18_0();
  v58 = v56 - v57;
  MEMORY[0x28223BE20](v59);
  v61 = &v200 - v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v63);
  v64 = OUTLINED_FUNCTION_74_7();
  _s20PersistentParametersVMa(v64);
  OUTLINED_FUNCTION_49_9();
  if (!v82)
  {
    *&v231 = v65;
    v71 = sub_237A20C10();
    OUTLINED_FUNCTION_58_0();
    sub_237C08DEC();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_7_44();
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v72 = xmmword_237C0F260;
LABEL_14:
    *(v72 + 16) = v27;
    *(v72 + 24) = v58;
    *(v72 + 32) = v71;
    *(v72 + 40) = &v231;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_49_9();
  if (!v82)
  {
    v71 = OUTLINED_FUNCTION_72_7(v66);
    OUTLINED_FUNCTION_58_0();
    sub_237C08DEC();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_7_44();
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_48_15();
    v74 = v73 + 1;
LABEL_13:
    *v72 = v74;
    *(v72 + 8) = v61;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_49_9();
  if (!v82)
  {
    v71 = OUTLINED_FUNCTION_72_7(v68);
    OUTLINED_FUNCTION_58_0();
    sub_237C08DEC();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_7_44();
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_48_15();
    v74 = v75 + 5;
    goto LABEL_13;
  }

  if (*(v27 + *(v67 + 36)) != *(v25 + *(v67 + 36)))
  {
    sub_237C08A6C();
    OUTLINED_FUNCTION_7_44();
    v76 = sub_237C08A6C();
    v78 = v77;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_48_15();
    *v72 = v79;
    *(v72 + 8) = 0x8000000237C1AEC0;
    *(v72 + 16) = v50;
    *(v72 + 24) = v20;
    *(v72 + 32) = v76;
    *(v72 + 40) = v78;
LABEL_15:
    *(v72 + 48) = 3;
    swift_willThrow();
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_49_9();
  if (!v82)
  {
    v71 = OUTLINED_FUNCTION_72_7(v69);
    OUTLINED_FUNCTION_58_0();
    sub_237C08DEC();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_7_44();
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_48_15();
    v74 = v80 + 3;
    goto LABEL_13;
  }

  v205 = v20;
  v70 = v225;
  MLHandActionClassifier.DataSource.gatherAnnotatedFileNames()(v20);
  if (!v70)
  {
    MLHandActionClassifier.DataSource.gatherAnnotatedFileNames()(v224);
    sub_2379FC864(v205, v61, &qword_27DE9A9A0, &qword_237C0BF60);
    v81 = v220;
    OUTLINED_FUNCTION_73_1(v61, 1, v220);
    if (v82)
    {
      v83 = v61;
    }

    else
    {
      OUTLINED_FUNCTION_99_1();
      v84 = OUTLINED_FUNCTION_5_21();
      v225 = v85;
      v204 = v86;
      (v86)(v84);
      if (sub_237C05D3C() < 1)
      {
        OUTLINED_FUNCTION_99_1();
        v88 = OUTLINED_FUNCTION_5_21();
        v89(v88);
        goto LABEL_29;
      }

      sub_2379FC864(v224, v58, &qword_27DE9A9A0, &qword_237C0BF60);
      OUTLINED_FUNCTION_73_1(v58, 1, v81);
      if (!v82)
      {
        OUTLINED_FUNCTION_34_10();
        v204();
        if (sub_237C05D3C() >= 1)
        {
          sub_237B7ADD8();
          v192 = v90;
          sub_237B7ADD8();
          sub_237AFE4F0(v192, v193);
          OUTLINED_FUNCTION_107_2();

          v194 = v224;
          if ((v58 & 1) == 0)
          {
            sub_2379E8AF0();
            v195 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
            OUTLINED_FUNCTION_20_30(v195, v196);
          }

          v197 = *(v221 + 8);
          v198 = OUTLINED_FUNCTION_46_14();
          v197(v198);
          v199 = OUTLINED_FUNCTION_58_0();
          v197(v199);
          v188 = v194;
          goto LABEL_62;
        }

        v91 = *(v221 + 8);
        v92 = OUTLINED_FUNCTION_46_14();
        v91(v92);
        v93 = OUTLINED_FUNCTION_58_0();
        v91(v93);
        v81 = v50;
LABEL_29:
        OUTLINED_FUNCTION_6_58();
        v94 = OUTLINED_FUNCTION_42_9();
        sub_237B7C0D8(v94, v95, v96);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v204 = *v44;
          LODWORD(v225) = v44[8];
          v97 = *(v44 + 3);
          v203 = *(v44 + 2);

          OUTLINED_FUNCTION_6_58();
          v44 = v214;
          sub_237B7C0D8(v25, v214, v98);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v223 = v97;
            v99 = *v44;
            v100 = v44[8];
            v222 = *(v44 + 2);

            OUTLINED_FUNCTION_52_15();
            MLDataTable.subscript.getter();

            OUTLINED_FUNCTION_25_11();
            OUTLINED_FUNCTION_96_0();
            MLDataTable.subscript.getter();

            OUTLINED_FUNCTION_25_11();
            v101 = OUTLINED_FUNCTION_37_0();
            v103 = sub_237AC762C(v101, v102);

            if (v103)
            {
              OUTLINED_FUNCTION_52_15();
              MLDataTable.subscript.getter();

              OUTLINED_FUNCTION_25_11();
              OUTLINED_FUNCTION_96_0();
              MLDataTable.subscript.getter();

              OUTLINED_FUNCTION_25_11();
              v104 = OUTLINED_FUNCTION_37_0();
              v106 = sub_237AC762C(v104, v105);

              if (v106)
              {
                goto LABEL_48;
              }
            }

            else
            {
            }

            sub_2379E8AF0();
            v165 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
            OUTLINED_FUNCTION_20_30(v165, v166);
LABEL_48:
            v167 = OUTLINED_FUNCTION_58_10();
            sub_2379DBC9C(v167, v225);
            sub_2379DBC9C(v99, v100);
LABEL_61:
            v188 = v224;
LABEL_62:
            sub_2379D9054(v188, &qword_27DE9A9A0, &qword_237C0BF60);
            v189 = OUTLINED_FUNCTION_30_20(&v230 + 8);
            sub_2379D9054(v189, v190, v191);
            goto LABEL_16;
          }

          v108 = OUTLINED_FUNCTION_58_10();
          sub_2379DBC9C(v108, v225);

          v107 = v218;
        }

        else
        {
          v107 = v218;
        }

        OUTLINED_FUNCTION_1_75();
        sub_237B7C134(v44, v109);
        OUTLINED_FUNCTION_6_58();
        v110 = v27;
        v111 = v217;
        sub_237B7C0D8(v110, v217, v112);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
          v114 = (v111 + *(v113 + 48));
          v116 = *v114;
          v115 = v114[1];
          v203 = v116;
          v214 = v115;
          v117 = (v111 + *(v113 + 64));
          v119 = *v117;
          v118 = v117[1];
          v204 = v119;
          v225 = v118;

          v120 = v111;
          v121 = v221;
          v122 = *(v221 + 32);
          v122(v107, v120, v81);
          OUTLINED_FUNCTION_6_58();
          v123 = v25;
          v124 = v212;
          sub_237B7C0D8(v123, v212, v125);
          if (swift_getEnumCaseMultiPayload() == 5)
          {
            v219 = 0;
            v126 = &v124[*(v113 + 48)];
            v128 = *v126;
            v127 = *(v126 + 1);
            v202 = v128;
            v217 = v127;

            v122(v216, v124, v81);
            v129 = v213;
            v130 = v225;
            sub_237C05DFC();

            OUTLINED_FUNCTION_92_5();
            OUTLINED_FUNCTION_34_1();
            sub_237C05DFC();

            v131 = v208;
            sub_2379FC864(v129, v208, &qword_27DE9C040, &unk_237C14AA0);
            v132 = v215 + 32;
            v133 = *(v215 + 32);
            v134 = v211;
            v135 = v206;
            v133(v211, v131, v206);
            v136 = sub_237A8CBA0(&qword_27DE9C048, MEMORY[0x277CE1958]);
            v137 = v222;
            sub_237C0885C();
            v138 = v131 + *(v130 + 52);
            v215 = v132;
            v212 = v133;
            v133(v134, v138, v135);
            v139 = v210;
            v140 = v137 + *(v210 + 52);
            v204 = v136;
            sub_237C0885C();
            v141 = v137;
            v201 = *(v139 + 56);
            *(v137 + v201) = 0;
            v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C050, &unk_237C0F328);
            v142 = *(v225 + 36);
            sub_237A8CBA0(&qword_27DE9C058, MEMORY[0x277CE1960]);
            while (1)
            {
              OUTLINED_FUNCTION_34_1();
              sub_237C08B5C();
              if (*(v141 + v142) == v227)
              {
                sub_2379D9054(v213, &qword_27DE9C040, &unk_237C14AA0);
                goto LABEL_51;
              }

              v143 = sub_237C08B9C();
              sub_2379FC864(v144, &v229, &qword_27DE9A998, &unk_237C0C100);
              v143(&v227, 0);
              OUTLINED_FUNCTION_137_0();
              sub_237C08B6C();
              v145 = v135;
              OUTLINED_FUNCTION_34_10();
              v147 = *(v146 + 36);
              sub_237C08B5C();
              if (*(v140 + v147) == v226[0])
              {
                break;
              }

              v148 = sub_237C08B9C();
              sub_2379FC864(v149, &v227, &qword_27DE9A998, &unk_237C0C100);
              v148(v226, 0);
              sub_237C08B6C();
              v231 = v229;
              v232 = v230;
              v233 = v227;
              v234 = v228;
              v150 = sub_237A8BFF8(&v231, &v233);
              sub_2379D9054(&v231, &qword_27DE9C060, &qword_237C0F338);
              v135 = v145;
              v141 = v222;
              if ((v150 & 1) == 0)
              {
                sub_2379D9054(v222, &qword_27DE9C038, &qword_237C0F320);
                sub_2379D9054(v213, &qword_27DE9C040, &unk_237C14AA0);

LABEL_56:
                sub_2379E8AF0();
                v183 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
                OUTLINED_FUNCTION_20_30(v183, v184);
                goto LABEL_60;
              }
            }

            sub_2379D9054(&v229, &qword_27DE9A998, &unk_237C0C100);
            sub_2379D9054(v213, &qword_27DE9C040, &unk_237C14AA0);
            v135 = v145;
            v141 = v222;
LABEL_51:
            *(v141 + v201) = 1;
            sub_2379D9054(v141, &qword_27DE9C038, &qword_237C0F320);
            v168 = v207;
            sub_237C05DFC();

            OUTLINED_FUNCTION_92_5();
            sub_237C05DFC();

            v169 = v208;
            sub_2379FC864(v168, v208, &qword_27DE9C040, &unk_237C14AA0);
            v170 = v211;
            v171 = v212;
            (v212)(v211, v169, v135);
            v172 = v223;
            sub_237C0885C();
            (v171)(v170, v169 + SDWORD1(v234), v135);
            v173 = v210;
            v174 = v172 + *(v210 + 52);
            sub_237C0885C();
            v222 = *(v173 + 56);
            *(v172 + v222) = 0;
            OUTLINED_FUNCTION_34_10();
            v176 = *(v175 + 36);
            while (1)
            {
              OUTLINED_FUNCTION_34_1();
              sub_237C08B5C();
              if (*(v223 + v176) == v227)
              {
                sub_2379D9054(v207, &qword_27DE9C040, &unk_237C14AA0);
                goto LABEL_59;
              }

              v177 = sub_237C08B9C();
              sub_2379FC864(v178, &v229, &qword_27DE9A998, &unk_237C0C100);
              v177(&v227, 0);
              OUTLINED_FUNCTION_137_0();
              sub_237C08B6C();
              OUTLINED_FUNCTION_34_10();
              v180 = *(v179 + 36);
              OUTLINED_FUNCTION_34_1();
              sub_237C08B5C();
              if (*(v174 + v180) == v226[0])
              {
                break;
              }

              v181 = sub_237C08B9C();
              sub_2379FC864(v182, &v227, &qword_27DE9A998, &unk_237C0C100);
              (v181)(v226, 0);
              OUTLINED_FUNCTION_137_0();
              sub_237C08B6C();
              v231 = v229;
              v232 = v230;
              v233 = v227;
              v234 = v228;
              LOBYTE(v181) = sub_237A8BFF8(&v231, &v233);
              sub_2379D9054(&v231, &qword_27DE9C060, &qword_237C0F338);
              if ((v181 & 1) == 0)
              {
                sub_2379D9054(v223, &qword_27DE9C038, &qword_237C0F320);
                sub_2379D9054(v207, &qword_27DE9C040, &unk_237C14AA0);
                goto LABEL_56;
              }
            }

            sub_2379D9054(&v229, &qword_27DE9A998, &unk_237C0C100);
            sub_2379D9054(v207, &qword_27DE9C040, &unk_237C14AA0);
LABEL_59:
            v185 = v223;
            *(v223 + v222) = 1;
            sub_2379D9054(v185, &qword_27DE9C038, &qword_237C0F320);
LABEL_60:
            v186 = *(v221 + 8);
            v187 = v220;
            v186(v216, v220);
            v186(v218, v187);
            goto LABEL_61;
          }

          (*(v121 + 8))(v107, v81);
          v159 = OUTLINED_FUNCTION_30_20(&a17);
          sub_2379D9054(v159, v160, v161);
          v162 = OUTLINED_FUNCTION_30_20(&v230 + 8);
          sub_2379D9054(v162, v163, v164);
          OUTLINED_FUNCTION_1_75();
          v158 = v124;
        }

        else
        {
          v151 = OUTLINED_FUNCTION_30_20(&a17);
          sub_2379D9054(v151, v152, v153);
          v154 = OUTLINED_FUNCTION_30_20(&v230 + 8);
          sub_2379D9054(v154, v155, v156);
          OUTLINED_FUNCTION_1_75();
          v158 = v111;
        }

        sub_237B7C134(v158, v157);
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_99_1();
      (*(v87 + 8))(v53, v81);
      v83 = v58;
    }

    sub_2379D9054(v83, &qword_27DE9A9A0, &qword_237C0BF60);
    goto LABEL_29;
  }

LABEL_16:
  OUTLINED_FUNCTION_38_8();
}