unint64_t sub_2224AA010()
{
  result = qword_28130A410;
  if (!qword_28130A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130A410);
  }

  return result;
}

uint64_t sub_2224AA064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E590, &qword_2224B5920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2224AA0D8()
{
  v0 = sub_2224B4608();
  __swift_allocate_value_buffer(v0, qword_28130A718);
  __swift_project_value_buffer(v0, qword_28130A718);
  return sub_2224B45E8();
}

uint64_t sub_2224AA13C()
{
  v0 = sub_2224B4608();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2224B4628();
  __swift_allocate_value_buffer(v4, qword_28130A730);
  __swift_project_value_buffer(v4, qword_28130A730);
  if (qword_28130A450 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_28130A718);
  (*(v1 + 16))(v3, v5, v0);
  return sub_2224B4618();
}

uint64_t sub_2224AA290()
{
  v0 = sub_2224B4608();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28130A450 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_28130A718);
  (*(v1 + 16))(v3, v4, v0);
  v7[3] = sub_2224B4628();
  v7[4] = MEMORY[0x277D37908];
  __swift_allocate_boxed_opaque_existential_1Tm(v7);
  sub_2224B4618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E598, &qword_2224B5928);
  swift_allocObject();
  result = sub_2224B4B28();
  qword_27D00EB70 = result;
  return result;
}

uint64_t sub_2224AA3F8()
{
  v0 = sub_2224B4608();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28130A450 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_28130A718);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2224B45F8();
  v7 = v6;
  result = (*(v1 + 8))(v3, v0);
  qword_28130A438 = v5;
  unk_28130A440 = v7;
  return result;
}

uint64_t sub_2224AA530()
{
  v0 = sub_2224B46D8();
  __swift_allocate_value_buffer(v0, qword_28130A700);
  __swift_project_value_buffer(v0, qword_28130A700);
  if (qword_28130A430 != -1)
  {
    swift_once();
  }

  return sub_2224B46C8();
}

uint64_t DictionaryUpsert.init(_:_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_222485948(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

id DictionaryUpsert.description.getter()
{
  v23[3] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5A0, &unk_2224B5930);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - v3;
  v5 = sub_2224B47F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E380, &qword_2224B5148);
  v7 = sub_2224B4868();
  v23[0] = 0;
  v8 = [v6 dataWithJSONObject:v7 options:0 error:v23];

  v9 = v23[0];
  if (!v8)
  {
    v15 = 0x64696C61766E693CLL;
    v17 = v9;
    v18 = sub_2224B40A8();

    swift_willThrow();
    MEMORY[0x223DB7AD0](v18);
LABEL_6:
    v16 = 0xEE003E6174616420;
    goto LABEL_7;
  }

  v10 = sub_2224B40B8();
  v12 = v11;

  sub_2224B47E8();
  v13 = sub_2224B47D8();
  if (!v14)
  {
    v15 = 0x64696C61766E693CLL;
    sub_2224AF5BC(v10, v12);
    goto LABEL_6;
  }

  v15 = v13;
  v16 = v14;
  sub_2224AF5BC(v10, v12);
LABEL_7:
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_2224B41A8();
  sub_2224A77C8(&qword_27D00E5A8, &qword_27D00E5A0, &unk_2224B5930, MEMORY[0x277D37738]);
  v19 = sub_2224B4328();
  v21 = v20;
  (*(v2 + 8))(v4, v1);
  v23[0] = v19;
  v23[1] = v21;
  MEMORY[0x223DB7580](171719690, 0xE400000000000000);
  MEMORY[0x223DB7580](v15, v16);

  return v23[0];
}

uint64_t sub_2224AA918@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v190 = a3;
  v189 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5B0, &qword_2224B59B8);
  MEMORY[0x28223BE20](v6 - 8);
  v203 = &v186 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5B8, &unk_2224B59C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v204 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v207 = &v186 - v11;
  v209 = sub_2224B40C8();
  v199 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v206 = &v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2224B4128();
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v196 = &v186 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v197 = &v186 - v16;
  v223 = sub_2224B4418();
  v221 = *(v223 - 8);
  v17 = MEMORY[0x28223BE20](v223);
  v208 = &v186 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v219 = &v186 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v218 = &v186 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v222 = &v186 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v213 = &v186 - v26;
  MEMORY[0x28223BE20](v25);
  v214 = &v186 - v27;
  v202 = sub_2224B4358();
  v201 = *(v202 - 8);
  v28 = MEMORY[0x28223BE20](v202);
  v192 = &v186 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v217 = (&v186 - v30);
  v195 = sub_2224B4438();
  v200 = *(v195 - 8);
  v31 = MEMORY[0x28223BE20](v195);
  v191 = &v186 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v186 - v33;
  v35 = sub_2224B4448();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v194 = &v186 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v186 - v39;
  v193 = a2;
  sub_2224B4348();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2224B4678();
  if (!v41)
  {
    v47 = sub_2224B4198();
    sub_2224B4020(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    swift_allocError();
    v49 = v48;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    *v49 = sub_2224B4668();
    v49[1] = v50;
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D37768], v47);
    swift_willThrow();
    return (*(v36 + 8))(v40, v35);
  }

  v205 = v36;
  v198 = v35;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2224B4668();
  v42 = v220;
  v43 = v217;
  sub_2224B43C8();
  if (v42)
  {

    sub_2224B4020(&qword_27D00E5C0, MEMORY[0x277D37848], MEMORY[0x277D37850]);
    v44 = v202;
    swift_allocError();
    (*(v201 + 32))(v45, v43, v44);
    return (*(v205 + 8))(v40, v198);
  }

  v220 = 0;
  v186 = v40;

  v51 = sub_2224B4428();
  v52 = *(v51 + 16);
  v187 = a1;
  v188 = v34;
  if (v52)
  {
    v230 = MEMORY[0x277D84F90];
    sub_2224B05D0(0, v52, 0);
    v53 = v230;
    v216 = *(v221 + 16);
    v54 = (*(v221 + 80) + 32) & ~*(v221 + 80);
    v212 = v51;
    v55 = v51 + v54;
    v215 = *(v221 + 72);
    v217 = (v221 + 16);
    v36 = v221 + 8;
    do
    {
      v57 = v222;
      v56 = v223;
      (v216)(v222, v55, v223);
      v58 = sub_2224B43F8();
      v43 = v59;
      (*v36)(v57, v56);
      v230 = v53;
      v61 = *(v53 + 16);
      v60 = *(v53 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_2224B05D0((v60 > 1), v61 + 1, 1);
        v53 = v230;
      }

      *(v53 + 16) = v61 + 1;
      v62 = v53 + 16 * v61;
      *(v62 + 32) = v58;
      *(v62 + 40) = v43;
      v55 += v215;
      --v52;
    }

    while (v52);
    v217 = v53;
  }

  else
  {

    v217 = MEMORY[0x277D84F90];
  }

  v63 = sub_2224B4428();
  v64 = v63;
  v65 = *(v63 + 16);
  v66 = MEMORY[0x277D84F90];
  v67 = v223;
  v68 = v214;
  if (v65)
  {
    v69 = 0;
    v52 = v221 + 16;
    v216 = v221 + 32;
    v210 = (v221 + 8);
    v215 = v63;
    v212 = v65;
    v211 = v221 + 16;
    while (v69 < *(v64 + 16))
    {
      v36 = (*(v221 + 80) + 32) & ~*(v221 + 80);
      v43 = *(v221 + 72);
      (*(v221 + 16))(v68, v64 + v36 + v43 * v69, v67);
      if (sub_2224B43D8())
      {
        (*v210)(v68, v67);
      }

      else
      {
        v70 = *v216;
        (*v216)(v219, v68, v67);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v230 = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2224B05B0(0, *(v66 + 16) + 1, 1);
          v66 = v230;
        }

        v73 = *(v66 + 16);
        v72 = *(v66 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_2224B05B0((v72 > 1), v73 + 1, 1);
          v66 = v230;
        }

        *(v66 + 16) = v73 + 1;
        v70(v66 + v36 + v73 * v43, v219, v67);
        v68 = v214;
        v64 = v215;
        v65 = v212;
        v52 = v211;
      }

      if (v65 == ++v69)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_101;
  }

LABEL_23:

  v74 = *(v66 + 16);
  if (v74)
  {
    v230 = MEMORY[0x277D84F90];
    sub_2224B05D0(0, v74, 0);
    v75 = v230;
    v216 = *(v221 + 16);
    v76 = (*(v221 + 80) + 32) & ~*(v221 + 80);
    v214 = v66;
    v52 = v66 + v76;
    v215 = *(v221 + 72);
    v219 = (v221 + 16);
    v36 = v221 + 8;
    do
    {
      v77 = v222;
      (v216)(v222, v52, v67);
      v78 = sub_2224B43F8();
      v80 = v79;
      (*v36)(v77, v67);
      v230 = v75;
      v82 = *(v75 + 16);
      v81 = *(v75 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_2224B05D0((v81 > 1), v82 + 1, 1);
        v75 = v230;
      }

      *(v75 + 16) = v82 + 1;
      v83 = v75 + 16 * v82;
      *(v83 + 32) = v78;
      *(v83 + 40) = v80;
      v52 += v215;
      --v74;
      v67 = v223;
    }

    while (v74);
  }

  else
  {

    v75 = MEMORY[0x277D84F90];
  }

  v212 = sub_2224B33E0(v75);

  v84 = sub_2224B4428();
  v64 = *(v84 + 16);
  v85 = MEMORY[0x277D84F90];
  v86 = v213;
  if (v64)
  {
    v43 = 0;
    v69 = v221 + 16;
    v214 = (v221 + 8);
    v219 = (v221 + 32);
    v216 = v64;
    v215 = v221 + 16;
    while (v43 < *(v84 + 16))
    {
      v36 = (*(v221 + 80) + 32) & ~*(v221 + 80);
      v52 = *(v221 + 72);
      (*(v221 + 16))(v86, v84 + v36 + v52 * v43, v67);
      if (sub_2224B43D8())
      {
        v87 = *v219;
        (*v219)(v218, v86, v67);
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v230 = v85;
        if ((v88 & 1) == 0)
        {
          sub_2224B05B0(0, *(v85 + 16) + 1, 1);
          v85 = v230;
        }

        v90 = *(v85 + 16);
        v89 = *(v85 + 24);
        if (v90 >= v89 >> 1)
        {
          sub_2224B05B0((v89 > 1), v90 + 1, 1);
          v85 = v230;
        }

        *(v85 + 16) = v90 + 1;
        v91 = v85 + v36 + v90 * v52;
        v67 = v223;
        v87(v91, v218, v223);
        v86 = v213;
        v64 = v216;
        v69 = v215;
      }

      else
      {
        (*v214)(v86, v67);
      }

      if (v64 == ++v43)
      {
        goto LABEL_41;
      }
    }

LABEL_101:
    __break(1u);
LABEL_102:
    swift_once();
    goto LABEL_57;
  }

LABEL_41:

  v92 = *(v85 + 16);
  if (v92)
  {
    v230 = MEMORY[0x277D84F90];
    sub_2224B05D0(0, v92, 0);
    v93 = v230;
    v218 = *(v221 + 16);
    v94 = (*(v221 + 80) + 32) & ~*(v221 + 80);
    v215 = v85;
    v95 = v85 + v94;
    v216 = *(v221 + 72);
    v219 = (v221 + 16);
    v96 = (v221 + 8);
    do
    {
      v98 = v222;
      v97 = v223;
      (v218)(v222, v95, v223);
      v99 = sub_2224B43F8();
      v101 = v100;
      (*v96)(v98, v97);
      v230 = v93;
      v103 = *(v93 + 16);
      v102 = *(v93 + 24);
      if (v103 >= v102 >> 1)
      {
        sub_2224B05D0((v102 > 1), v103 + 1, 1);
        v93 = v230;
      }

      *(v93 + 16) = v103 + 1;
      v104 = v93 + 16 * v103;
      *(v104 + 32) = v99;
      *(v104 + 40) = v101;
      v95 += v216;
      --v92;
    }

    while (v92);
  }

  else
  {

    v93 = MEMORY[0x277D84F90];
  }

  v105 = v187;
  v52 = sub_2224B33E0(v93);

  v233 = MEMORY[0x277D84FA0];
  v106 = v105[5];
  v107 = *(v106 + 16);
  if (v107)
  {
    v230 = MEMORY[0x277D84F90];
    v108 = v217;

    sub_2224B0590(0, v107, 0);
    v67 = v230;
    v109 = v106 + 32;
    do
    {

      v111 = v220;
      v112 = sub_2224B3760(v110, v108, &v233);
      v220 = v111;

      v230 = v67;
      v114 = *(v67 + 16);
      v113 = *(v67 + 24);
      if (v114 >= v113 >> 1)
      {
        sub_2224B0590((v113 > 1), v114 + 1, 1);
        v67 = v230;
      }

      *(v67 + 16) = v114 + 1;
      *(v67 + 8 * v114 + 32) = v112;
      v109 += 8;
      --v107;
      v108 = v217;
    }

    while (v107);
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v67 = MEMORY[0x277D84F90];
  }

  v36 = 0xD00000000000002BLL;
  v64 = v233;
  v115 = *(v233 + 2);
  v69 = &loc_2224B5000;
  v43 = MEMORY[0x277D837D0];
  v219 = v233;
  if (!v115)
  {
    v121 = MEMORY[0x277D84FA0];
    goto LABEL_64;
  }

  if (qword_27D00E320 != -1)
  {
    goto LABEL_102;
  }

LABEL_57:
  sub_2224B4B38();
  v218 = v232;
  v222 = v231;
  v217 = __swift_project_boxed_opaque_existential_1(&v230, v231);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v116 = *(sub_2224B4148() - 8);
  v216 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  *(swift_allocObject() + 16) = *(v69 + 96);
  sub_2224B4118();
  sub_2224B4108();
  v117 = *(v64 + 16);
  if (v117)
  {
    v215 = v52;
    v118 = sub_2224AF6C8(v117, 0);
    v119 = sub_2224B3288(&v227, v118 + 4, v117, v64);
    v120 = v227;

    sub_2224859CC(v120);
    if (v119 != v117)
    {
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v36 = 0xD00000000000002BLL;
    v43 = MEMORY[0x277D837D0];
    v52 = v215;
  }

  else
  {
    v118 = MEMORY[0x277D84F90];
  }

  v227 = v118;
  v122 = v220;
  sub_2224B0EE4(&v227);
  v220 = v122;
  if (v122)
  {
LABEL_105:
    v185 = v220;
LABEL_107:
    MEMORY[0x223DB7AD0](v185);

    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5C8, &unk_2224B59D0);
  sub_2224A77C8(&qword_27D00E5D0, &qword_27D00E5C8, &unk_2224B59D0, MEMORY[0x277D83958]);
  v123 = sub_2224B47B8();
  v125 = v124;

  v229 = v43;
  v227 = v123;
  v228 = v125;
  sub_2224B40F8();
  sub_2224A7878(&v227, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4598();

  __swift_destroy_boxed_opaque_existential_1Tm(&v230);
  v121 = MEMORY[0x277D84FA0];
LABEL_64:
  v225 = v121;
  v226 = v121;
  v224 = 0;
  v126 = v212;

  v127 = v220;
  v128 = sub_2224B392C(v67, v126, &v226, &v224, v52, &v225);
  v129 = v127;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v130 = v224;
  v215 = v128;
  if (v224 < 1)
  {
    v222 = v127;
    v131 = v198;
    v132 = v188;
    goto LABEL_74;
  }

  v131 = v198;
  v132 = v188;
  if (qword_27D00E320 != -1)
  {
    swift_once();
  }

  sub_2224B4B38();
  v218 = v232;
  v220 = v231;
  v217 = __swift_project_boxed_opaque_existential_1(&v230, v231);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v133 = *(sub_2224B4148() - 8);
  v216 = (*(v133 + 80) + 32) & ~*(v133 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v229 = MEMORY[0x277D83B88];
  v227 = v130;
  sub_2224B40F8();
  sub_2224A7878(&v227, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  v134 = v226;
  v135 = *(v226 + 16);
  if (v135)
  {
    v222 = v127;
    v136 = sub_2224AF6C8(v135, 0);
    v137 = sub_2224B3288(&v227, v136 + 4, v135, v134);
    v138 = v227;

    sub_2224859CC(v138);
    if (v137 == v135)
    {
      v131 = v198;
      v132 = v188;
      v128 = v215;
      v36 = 0xD00000000000002BLL;
      v129 = v222;
      goto LABEL_72;
    }

    goto LABEL_104;
  }

  v136 = MEMORY[0x277D84F90];
  v36 = 0xD00000000000002BLL;
LABEL_72:
  v227 = v136;
  sub_2224B0EE4(&v227);
  v222 = v129;
  if (v129)
  {
    v185 = v222;
    goto LABEL_107;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5C8, &unk_2224B59D0);
  sub_2224A77C8(&qword_27D00E5D0, &qword_27D00E5C8, &unk_2224B59D0, MEMORY[0x277D83958]);
  v139 = sub_2224B47B8();
  v141 = v140;

  v229 = MEMORY[0x277D837D0];
  v227 = v139;
  v228 = v141;
  sub_2224B40F8();
  sub_2224A7878(&v227, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  __swift_destroy_boxed_opaque_existential_1Tm(&v230);
LABEL_74:
  v142 = v205;
  v143 = v186;
  if (v128[2])
  {
    v144 = *(v200 + 8);
    v200 += 8;
    v144(v132, v195);
    v145 = *(v142 + 8);
    v145(v143, v131);

    v146 = v194;
    sub_2224B4348();
    v147 = v187;
    __swift_project_boxed_opaque_existential_1(v187, v187[3]);
    sub_2224B4678();
    v205 = v142 + 8;
    if (v148)
    {
      v214 = v145;
      __swift_project_boxed_opaque_existential_1(v147, v147[3]);
      sub_2224B4668();
      v149 = v191;
      v150 = v222;
      v151 = v192;
      sub_2224B43C8();
      if (v150)
      {

        sub_2224B4020(&qword_27D00E5C0, MEMORY[0x277D37848], MEMORY[0x277D37850]);
        v152 = v202;
        swift_allocError();
        (*(v201 + 32))(v153, v151, v152);
        return (v214)(v146, v131);
      }

      else
      {
        v213 = 0;

        v160 = sub_2224B4428();
        v144(v149, v195);
        v161 = v160;
        v162 = *(v160 + 16);
        if (v162)
        {
          v220 = *(v221 + 16);
          v163 = (*(v221 + 80) + 32) & ~*(v221 + 80);
          v212 = v161;
          v164 = v161 + v163;
          v219 = (v221 + 8);
          v165 = *(v221 + 72);
          v217 = (v199 + 56);
          v218 = v165;
          v216 = v199 + 48;
          v221 += 16;
          v222 = (v199 + 32);
          v166 = MEMORY[0x277D84F90];
          v167 = v204;
          v168 = v209;
          v169 = v208;
          (v220)(v208, v161 + v163, v223);
          while (1)
          {
            if (sub_2224B43E8() & 1) != 0 || (sub_2224B4408())
            {
              v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5D8, &qword_2224B59E0);
              sub_2224B43F8();
              v231 = v170;
              v232 = sub_2224A77C8(&qword_27D00E5E0, &qword_27D00E5D8, &qword_2224B59E0, MEMORY[0x277D37740]);
              __swift_allocate_boxed_opaque_existential_1Tm(&v230);
              sub_2224A77C8(&qword_27D00E5E8, &qword_27D00E5D8, &qword_2224B59E0, MEMORY[0x277D37738]);
              v169 = v208;
              v167 = v204;
              v168 = v209;
              sub_2224B4338();
              v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5F0, &qword_2224B59E8);
              (*(*(v171 - 8) + 56))(v203, 1, 1, v171);
              sub_2224B40D8();
              (*v219)(v169, v223);
              v172 = 0;
            }

            else
            {
              (*v219)(v169, v223);
              v172 = 1;
            }

            (*v217)(v167, v172, 1, v168);
            v173 = v207;
            sub_2224B3EB4(v167, v207);
            if ((*v216)(v173, 1, v168) == 1)
            {
              sub_2224A7878(v173, &qword_27D00E5B8, &unk_2224B59C0);
            }

            else
            {
              v174 = *v222;
              (*v222)(v206, v173, v168);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v166 = sub_2224AF9AC(0, *(v166 + 2) + 1, 1, v166, &qword_27D00E5F8, &qword_2224B59F0, MEMORY[0x277D37730]);
              }

              v176 = *(v166 + 2);
              v175 = *(v166 + 3);
              if (v176 >= v175 >> 1)
              {
                v166 = sub_2224AF9AC((v175 > 1), v176 + 1, 1, v166, &qword_27D00E5F8, &qword_2224B59F0, MEMORY[0x277D37730]);
              }

              *(v166 + 2) = v176 + 1;
              v177 = &v166[((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v176];
              v168 = v209;
              v174(v177, v206, v209);
              v169 = v208;
            }

            v164 += v218;
            if (!--v162)
            {
              break;
            }

            (v220)(v169, v164, v223);
          }

          v178 = v198;
          v146 = v194;
        }

        else
        {

          v166 = MEMORY[0x277D84F90];
          v178 = v131;
        }

        (v214)(v146, v178);
        v179 = swift_allocObject();
        v180 = v190;
        *(v179 + 16) = v215;
        *(v179 + 24) = v180;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E648, &unk_2224B5A50);
        v181 = swift_allocObject();
        *(v181 + 16) = sub_2224B3FF8;
        *(v181 + 24) = v179;
        MEMORY[0x28223BE20](v181);
        *(&v186 - 2) = v187;
        *(&v186 - 1) = v166;
        v182 = v213;
        v183 = sub_2224ACA94(sub_2224B4000, (&v186 - 4));
        if (v182)
        {
        }

        else
        {
          v184 = v183;

          *v189 = v184;
        }
      }
    }

    else
    {

      v156 = sub_2224B4198();
      sub_2224B4020(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
      swift_allocError();
      v158 = v157;
      __swift_project_boxed_opaque_existential_1(v147, v147[3]);
      *v158 = sub_2224B4668();
      v158[1] = v159;
      (*(*(v156 - 8) + 104))(v158, *MEMORY[0x277D37768], v156);
      swift_willThrow();
      return (v145)(v146, v131);
    }
  }

  else
  {

    v154 = sub_2224B4198();
    sub_2224B4020(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    swift_allocError();
    *v155 = v36;
    v155[1] = 0x80000002224B6190;
    (*(*(v154 - 8) + 104))(v155, *MEMORY[0x277D37748], v154);
    swift_willThrow();
    (*(v200 + 8))(v132, v195);
    (*(v142 + 8))(v143, v131);
  }

  return result;
}

uint64_t sub_2224AC8A8(uint64_t a1, uint64_t a2)
{

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E380, &qword_2224B5148);

  return MEMORY[0x282197DA8](a1, a2, v4);
}

uint64_t sub_2224AC910(void x0_0, void *a1, uint64_t a2, void *a3)
{
  v6 = sub_2224B4558();
  MEMORY[0x28223BE20](v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E658, &qword_2224B5A68);
  sub_2224B4478();
  sub_2224B4658();

  if (v8)
  {
    *a3 = v8;
  }

  else
  {
    sub_2224B4458();
    sub_2224B4468();
    sub_2224B4020(&qword_28130A328, MEMORY[0x277D378E8], MEMORY[0x277D378E0]);
    return sub_2224B4168();
  }

  return result;
}

uint64_t sub_2224ACA94(void (*a1)(char *, uint64_t *), uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E370, &qword_2224B5128);
  v41 = *(v38 - 8);
  v4 = MEMORY[0x28223BE20](v38);
  v43 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v33 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E650, &qword_2224B5A60);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E658, &qword_2224B5A68);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v32 = &v31 - v15;
  v16 = sub_2224B49F8();
  v45 = MEMORY[0x277D84F90];
  sub_2224B05F0(0, v16 & ~(v16 >> 63), 0);
  v17 = v45;
  result = sub_2224B49E8();
  v42 = result;
  if (v16 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v34 = v14;
  v35 = v12;
  if (v16)
  {
    v36 = v41 + 32;
    v37 = (v14 + 8);
    do
    {
      sub_2224B4A58();
      result = (*(v14 + 48))(v10, 1, v13);
      if (result == 1)
      {
        goto LABEL_22;
      }

      v39(v10, &v44);
      if (v3)
      {

        (*v37)(v10, v13);
        return v17;
      }

      v3 = 0;
      v19 = v13;
      (*v37)(v10, v13);
      v45 = v17;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2224B05F0((v20 > 1), v21 + 1, 1);
        v17 = v45;
      }

      *(v17 + 16) = v21 + 1;
      (*(v41 + 32))(v17 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v21, v43, v38);
      --v16;
      v13 = v19;
    }

    while (v16);
  }

  v22 = v35;
  sub_2224B4A58();
  v23 = v34;
  v24 = *(v34 + 48);
  if (v24(v22, 1, v13) == 1)
  {
    v25 = v35;
LABEL_11:

    sub_2224A7878(v25, &qword_27D00E650, &qword_2224B5A60);
  }

  else
  {
    v43 = *(v23 + 32);
    v34 = v23 + 32;
    v26 = (v23 + 8);
    v37 = (v41 + 32);
    v27 = v13;
    v25 = v35;
    while (1)
    {
      v28 = v32;
      (v43)(v32, v25, v27);
      v39(v28, &v44);
      if (v3)
      {
        break;
      }

      v3 = 0;
      (*v26)(v28, v27);
      v45 = v17;
      v30 = *(v17 + 16);
      v29 = *(v17 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_2224B05F0((v29 > 1), v30 + 1, 1);
        v17 = v45;
      }

      *(v17 + 16) = v30 + 1;
      (*(v41 + 32))(v17 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v30, v33, v38);
      v25 = v35;
      sub_2224B4A58();
      if (v24(v25, 1, v27) == 1)
      {
        goto LABEL_11;
      }
    }

    (*v26)(v28, v27);
  }

  return v17;
}

double _s15OnDeviceStorage16DictionaryUpsertV05buildE4Many8matching0abC4Core6InsertVAF16AccessCredentialV_tAA0abC5ErrorOYKF@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v9 = sub_2224B41F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2224AD180(v6, a1, a3);
  if (v4)
  {
    MEMORY[0x223DB7AE0](v4);
    sub_2224B4208();
    *&v17[0] = sub_2224B41E8();
    *&v18 = v9;
    *(&v18 + 1) = sub_2224B4020(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v17 + 1);
    (*(v10 + 32))(boxed_opaque_existential_1Tm, v12, v9);
    v19 = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v4);
    v15 = v17[1];
    *a2 = v17[0];
    *(a2 + 16) = v15;
    result = *&v18;
    *(a2 + 32) = v18;
    *(a2 + 48) = v19;
  }

  return result;
}

uint64_t sub_2224AD180@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v189 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5B0, &qword_2224B59B8);
  MEMORY[0x28223BE20](v5 - 8);
  v202 = &v182 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5B8, &unk_2224B59C0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v205 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v204 = &v182 - v10;
  v206 = sub_2224B40C8();
  v197 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v203 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2224B4128();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v195 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v196 = &v182 - v15;
  v16 = sub_2224B4418();
  v218 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v207 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v217 = &v182 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v216 = &v182 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v219 = &v182 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v211 = (&v182 - v26);
  MEMORY[0x28223BE20](v25);
  v212 = &v182 - v27;
  v201 = sub_2224B4358();
  v200 = *(v201 - 8);
  v28 = MEMORY[0x28223BE20](v201);
  v191 = &v182 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v215 = (&v182 - v30);
  v194 = sub_2224B4438();
  v199 = *(v194 - 8);
  v31 = MEMORY[0x28223BE20](v194);
  v190 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v182 - v33;
  v35 = sub_2224B4448();
  v208 = *(v35 - 8);
  v36 = MEMORY[0x28223BE20](v35);
  v193 = &v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v182 - v38;
  sub_2224A7124(a1, &v231);
  v187 = v233;
  v188 = v232;
  v186 = __swift_project_boxed_opaque_existential_1(&v231, v232);
  v192 = a2;
  sub_2224B4348();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = sub_2224B4678();
  if (!v41)
  {
    v47 = sub_2224B4198();
    sub_2224B4020(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    swift_allocError();
    v49 = v48;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    *v49 = sub_2224B4668();
    v49[1] = v50;
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D37768], v47);
    swift_willThrow();
    (*(v208 + 8))(v39, v35);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v231);
  }

  v42 = v40;
  v198 = v35;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2224B4668();
  v43 = v220;
  v44 = v215;
  sub_2224B43C8();
  if (v43)
  {

    sub_2224B4020(&qword_27D00E5C0, MEMORY[0x277D37848], MEMORY[0x277D37850]);
    v45 = v201;
    swift_allocError();
    (*(v200 + 32))(v46, v44, v45);
    (*(v208 + 8))(v39, v198);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v231);
  }

  v183 = 0;
  v182 = v39;
  v185 = a1;

  v52 = sub_2224B4428();
  v53 = *(v52 + 16);
  v220 = v16;
  v184 = v34;
  if (v53)
  {
    v228 = MEMORY[0x277D84F90];
    sub_2224B05D0(0, v53, 0);
    v54 = v228;
    v214 = *(v218 + 16);
    v55 = (*(v218 + 80) + 32) & ~*(v218 + 80);
    v210 = v52;
    v56 = v52 + v55;
    v213 = *(v218 + 72);
    v215 = (v218 + 16);
    v44 = v218 + 8;
    do
    {
      v58 = v219;
      v57 = v220;
      (v214)(v219, v56, v220);
      v59 = sub_2224B43F8();
      v42 = v60;
      (*v44)(v58, v57);
      v228 = v54;
      v39 = *(v54 + 16);
      v61 = *(v54 + 24);
      if (v39 >= v61 >> 1)
      {
        sub_2224B05D0((v61 > 1), v39 + 1, 1);
        v54 = v228;
      }

      *(v54 + 16) = v39 + 1;
      v62 = v54 + 16 * v39;
      *(v62 + 32) = v59;
      *(v62 + 40) = v42;
      v56 += v213;
      --v53;
    }

    while (v53);
    v215 = v54;

    v16 = v220;
  }

  else
  {

    v215 = MEMORY[0x277D84F90];
  }

  v63 = sub_2224B4428();
  v64 = *(v63 + 16);
  v65 = MEMORY[0x277D84F90];
  v66 = v212;
  if (v64)
  {
    v67 = 0;
    v39 = v218 + 16;
    v214 = v218 + 32;
    v209 = (v218 + 8);
    v213 = v64;
    v210 = (v218 + 16);
    while (v67 < *(v63 + 16))
    {
      v44 = (*(v218 + 80) + 32) & ~*(v218 + 80);
      v42 = *(v218 + 72);
      (*(v218 + 16))(v66, v63 + v44 + v42 * v67, v16);
      if (sub_2224B43D8())
      {
        (*v209)(v66, v16);
      }

      else
      {
        v68 = *v214;
        (*v214)(v217, v66, v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v228 = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2224B05B0(0, *(v65 + 16) + 1, 1);
          v65 = v228;
        }

        v71 = *(v65 + 16);
        v70 = *(v65 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_2224B05B0((v70 > 1), v71 + 1, 1);
          v65 = v228;
        }

        *(v65 + 16) = v71 + 1;
        v72 = v65 + v44 + v71 * v42;
        v16 = v220;
        v68(v72, v217, v220);
        v66 = v212;
        v64 = v213;
        v39 = v210;
      }

      if (v64 == ++v67)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

LABEL_24:

  v73 = *(v65 + 16);
  if (v73)
  {
    v228 = MEMORY[0x277D84F90];
    sub_2224B05D0(0, v73, 0);
    v74 = v228;
    v214 = *(v218 + 16);
    v75 = (*(v218 + 80) + 32) & ~*(v218 + 80);
    v212 = v65;
    v39 = v65 + v75;
    v213 = *(v218 + 72);
    v217 = (v218 + 16);
    v44 = v218 + 8;
    do
    {
      v77 = v219;
      v76 = v220;
      (v214)(v219, v39, v220);
      v78 = sub_2224B43F8();
      v80 = v79;
      (*v44)(v77, v76);
      v228 = v74;
      v82 = *(v74 + 16);
      v81 = *(v74 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_2224B05D0((v81 > 1), v82 + 1, 1);
        v74 = v228;
      }

      *(v74 + 16) = v82 + 1;
      v83 = v74 + 16 * v82;
      *(v83 + 32) = v78;
      *(v83 + 40) = v80;
      v39 += v213;
      --v73;
    }

    while (v73);
  }

  else
  {

    v74 = MEMORY[0x277D84F90];
  }

  v209 = sub_2224B33E0(v74);

  v84 = sub_2224B4428();
  v67 = v84;
  v85 = *(v84 + 16);
  v65 = MEMORY[0x277D84F90];
  v86 = v220;
  v87 = v211;
  if (v85)
  {
    v88 = 0;
    v42 = v218 + 16;
    v210 = (v218 + 8);
    v217 = (v218 + 32);
    v213 = v85;
    v212 = (v218 + 16);
    v214 = v84;
    while (v88 < *(v67 + 16))
    {
      v44 = (*(v218 + 80) + 32) & ~*(v218 + 80);
      v39 = *(v218 + 72);
      (*(v218 + 16))(v87, v67 + v44 + v39 * v88, v86);
      if (sub_2224B43D8())
      {
        v89 = *v217;
        (*v217)(v216, v87, v86);
        v90 = swift_isUniquelyReferenced_nonNull_native();
        v228 = v65;
        if ((v90 & 1) == 0)
        {
          sub_2224B05B0(0, *(v65 + 16) + 1, 1);
          v65 = v228;
        }

        v92 = *(v65 + 16);
        v91 = *(v65 + 24);
        if (v92 >= v91 >> 1)
        {
          sub_2224B05B0((v91 > 1), v92 + 1, 1);
          v65 = v228;
        }

        *(v65 + 16) = v92 + 1;
        v89(v65 + v44 + v92 * v39, v216, v86);
        v87 = v211;
        v67 = v214;
        v85 = v213;
        v42 = v212;
      }

      else
      {
        (*v210)(v87, v86);
      }

      if (v85 == ++v88)
      {
        goto LABEL_42;
      }
    }

LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
    goto LABEL_58;
  }

LABEL_42:

  v93 = *(v65 + 16);
  if (v93)
  {
    v228 = MEMORY[0x277D84F90];
    sub_2224B05D0(0, v93, 0);
    v94 = v228;
    v216 = *(v218 + 16);
    v95 = (*(v218 + 80) + 32) & ~*(v218 + 80);
    v213 = v65;
    v96 = v65 + v95;
    v214 = *(v218 + 72);
    v217 = (v218 + 16);
    v97 = (v218 + 8);
    do
    {
      v98 = v219;
      (v216)(v219, v96, v86);
      v99 = sub_2224B43F8();
      v101 = v100;
      (*v97)(v98, v86);
      v228 = v94;
      v103 = *(v94 + 16);
      v102 = *(v94 + 24);
      if (v103 >= v102 >> 1)
      {
        sub_2224B05D0((v102 > 1), v103 + 1, 1);
        v94 = v228;
      }

      *(v94 + 16) = v103 + 1;
      v104 = v94 + 16 * v103;
      *(v104 + 32) = v99;
      *(v104 + 40) = v101;
      v96 += v214;
      --v93;
      v86 = v220;
    }

    while (v93);
  }

  else
  {

    v94 = MEMORY[0x277D84F90];
  }

  v105 = sub_2224B33E0(v94);

  v234 = MEMORY[0x277D84FA0];
  v106 = v185;
  v107 = v185[5];
  v108 = *(v107 + 16);
  v219 = v105;
  if (v108)
  {
    v228 = MEMORY[0x277D84F90];
    v109 = v215;

    sub_2224B0590(0, v108, 0);
    v44 = v228;
    v110 = v107 + 32;
    v111 = v183;
    do
    {

      v113 = sub_2224B3760(v112, v109, &v234);

      v228 = v44;
      v115 = *(v44 + 16);
      v114 = *(v44 + 24);
      if (v115 >= v114 >> 1)
      {
        sub_2224B0590((v114 > 1), v115 + 1, 1);
        v44 = v228;
      }

      *(v44 + 16) = v115 + 1;
      *(v44 + 8 * v115 + 32) = v113;
      v110 += 8;
      --v108;
      v109 = v215;
    }

    while (v108);
    swift_bridgeObjectRelease_n();
    v106 = v185;
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
    v111 = v183;
  }

  v42 = 0xD00000000000002BLL;
  v65 = v234;
  v116 = *(v234 + 2);
  v67 = &loc_2224B5000;
  v39 = MEMORY[0x277D837D0];
  v217 = v234;
  if (!v116)
  {
    goto LABEL_64;
  }

  v183 = v111;
  if (qword_27D00E320 != -1)
  {
    goto LABEL_99;
  }

LABEL_58:
  sub_2224B4B38();
  v215 = v230;
  v216 = v229;
  v214 = __swift_project_boxed_opaque_existential_1(&v228, v229);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v117 = *(sub_2224B4148() - 8);
  v213 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  *(swift_allocObject() + 16) = *(v67 + 96);
  sub_2224B4118();
  sub_2224B4108();
  v118 = *(v65 + 16);
  if (v118)
  {
    v119 = sub_2224AF6C8(*(v65 + 16), 0);
    v120 = sub_2224B3288(&v224, v119 + 4, v118, v65);
    v121 = v224;

    sub_2224859CC(v121);
    if (v120 != v118)
    {
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v42 = 0xD00000000000002BLL;
    v39 = MEMORY[0x277D837D0];
  }

  else
  {
    v119 = MEMORY[0x277D84F90];
  }

  v224 = v119;
  v122 = v183;
  sub_2224B0EE4(&v224);
  v118 = v122;
  if (v122)
  {
LABEL_102:
    v181 = v118;
    goto LABEL_104;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5C8, &unk_2224B59D0);
  sub_2224A77C8(&qword_27D00E5D0, &qword_27D00E5C8, &unk_2224B59D0, MEMORY[0x277D83958]);
  v123 = sub_2224B47B8();
  v125 = v124;

  v227 = v39;
  v224 = v123;
  v225 = v125;
  sub_2224B40F8();
  sub_2224A7878(&v224, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4598();

  __swift_destroy_boxed_opaque_existential_1Tm(&v228);
  v106 = v185;
  v111 = 0;
LABEL_64:
  v222 = MEMORY[0x277D84FA0];
  v223 = MEMORY[0x277D84FA0];
  v221 = 0;
  v126 = v209;

  v127 = v219;

  v128 = sub_2224B392C(v44, v126, &v223, &v221, v127, &v222);
  v129 = v111;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v130 = v221;
  v210 = v128;
  if (v221 < 1)
  {
    v219 = v111;
    v138 = v208;
    goto LABEL_74;
  }

  if (qword_27D00E320 != -1)
  {
    swift_once();
  }

  sub_2224B4B38();
  v215 = v230;
  v216 = v229;
  v214 = __swift_project_boxed_opaque_existential_1(&v228, v229);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v131 = *(sub_2224B4148() - 8);
  v213 = (*(v131 + 80) + 32) & ~*(v131 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v227 = MEMORY[0x277D83B88];
  v224 = v130;
  sub_2224B40F8();
  sub_2224A7878(&v224, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  v132 = v223;
  v133 = *(v223 + 16);
  if (!v133)
  {
    v134 = MEMORY[0x277D84F90];
    v42 = 0xD00000000000002BLL;
    v137 = MEMORY[0x277D837D0];
    goto LABEL_72;
  }

  v219 = v111;
  v134 = sub_2224AF6C8(v133, 0);
  v135 = sub_2224B3288(&v224, v134 + 4, v133, v132);
  v136 = v224;
  v118 = v226;

  sub_2224859CC(v136);
  if (v135 != v133)
  {
    goto LABEL_101;
  }

  v42 = 0xD00000000000002BLL;
  v137 = MEMORY[0x277D837D0];
  v129 = v219;
LABEL_72:
  v224 = v134;
  sub_2224B0EE4(&v224);
  if (!v129)
  {
    v219 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5C8, &unk_2224B59D0);
    sub_2224A77C8(&qword_27D00E5D0, &qword_27D00E5C8, &unk_2224B59D0, MEMORY[0x277D83958]);
    v139 = sub_2224B47B8();
    v141 = v140;

    v227 = v137;
    v224 = v139;
    v225 = v141;
    sub_2224B40F8();
    sub_2224A7878(&v224, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    __swift_destroy_boxed_opaque_existential_1Tm(&v228);
    v138 = v208;
    v106 = v185;
    v128 = v210;
LABEL_74:
    v142 = v198;
    v143 = v182;
    if (v128[2])
    {
      v144 = *(v199 + 8);
      v199 += 8;
      v144(v184, v194);
      v147 = *(v138 + 8);
      v145 = v138 + 8;
      v146 = v147;
      (v147)(v143, v142);

      v148 = v193;
      sub_2224B4348();
      __swift_project_boxed_opaque_existential_1(v106, v106[3]);
      sub_2224B4678();
      if (v149)
      {
        v217 = v146;
        __swift_project_boxed_opaque_existential_1(v106, v106[3]);
        sub_2224B4668();
        v150 = v190;
        v151 = v219;
        v152 = v191;
        sub_2224B43C8();
        if (v151)
        {

          sub_2224B4020(&qword_27D00E5C0, MEMORY[0x277D37848], MEMORY[0x277D37850]);
          v153 = v201;
          swift_allocError();
          (*(v200 + 32))(v154, v152, v153);
          (v217)(v148, v198);
        }

        else
        {
          v209 = 0;

          v161 = sub_2224B4428();
          v144(v150, v194);
          v162 = v161;
          v163 = *(v161 + 16);
          if (v163)
          {
            v208 = v145;
            v215 = *(v218 + 16);
            v164 = (*(v218 + 80) + 32) & ~*(v218 + 80);
            v201 = v162;
            v165 = (v162 + v164);
            v214 = v218 + 8;
            v213 = v197 + 56;
            v218 += 16;
            v212 = *(v218 + 56);
            v211 = (v197 + 48);
            v216 = (v197 + 32);
            v166 = MEMORY[0x277D84F90];
            v167 = v205;
            v168 = v220;
            v169 = v207;
            do
            {
              v219 = v165;
              v215(v169, v165, v168);
              if (sub_2224B43E8() & 1) != 0 || (sub_2224B4408())
              {
                v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5D8, &qword_2224B59E0);
                sub_2224B43F8();
                v229 = v172;
                v230 = sub_2224A77C8(&qword_27D00E5E0, &qword_27D00E5D8, &qword_2224B59E0, MEMORY[0x277D37740]);
                __swift_allocate_boxed_opaque_existential_1Tm(&v228);
                sub_2224A77C8(&qword_27D00E5E8, &qword_27D00E5D8, &qword_2224B59E0, MEMORY[0x277D37738]);
                v167 = v205;
                v169 = v207;
                sub_2224B4338();
                v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5F0, &qword_2224B59E8);
                (*(*(v173 - 8) + 56))(v202, 1, 1, v173);
                sub_2224B40D8();
                (*v214)(v169, v168);
                v174 = 0;
              }

              else
              {
                (*v214)(v169, v168);
                v174 = 1;
              }

              v175 = v206;
              (*v213)(v167, v174, 1, v206);
              v176 = v204;
              sub_2224B3EB4(v167, v204);
              if ((*v211)(v176, 1, v175) == 1)
              {
                sub_2224A7878(v176, &qword_27D00E5B8, &unk_2224B59C0);
                v170 = v219;
              }

              else
              {
                v177 = *v216;
                (*v216)(v203, v176, v175);
                v178 = swift_isUniquelyReferenced_nonNull_native();
                v170 = v219;
                if ((v178 & 1) == 0)
                {
                  v166 = sub_2224AF9AC(0, *(v166 + 2) + 1, 1, v166, &qword_27D00E5F8, &qword_2224B59F0, MEMORY[0x277D37730]);
                }

                v180 = *(v166 + 2);
                v179 = *(v166 + 3);
                if (v180 >= v179 >> 1)
                {
                  v166 = sub_2224AF9AC((v179 > 1), v180 + 1, 1, v166, &qword_27D00E5F8, &qword_2224B59F0, MEMORY[0x277D37730]);
                }

                *(v166 + 2) = v180 + 1;
                v177(&v166[((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v180], v203);
                v167 = v205;
              }

              v165 = &v212[v170];
              --v163;
              v168 = v220;
              v171 = v217;
            }

            while (v163);

            v148 = v193;
          }

          else
          {

            v171 = v217;
          }

          (v171)(v148, v198);
          sub_2224B4658();
        }
      }

      else
      {

        v157 = sub_2224B4198();
        sub_2224B4020(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
        swift_allocError();
        v159 = v158;
        __swift_project_boxed_opaque_existential_1(v106, v106[3]);
        *v159 = sub_2224B4668();
        v159[1] = v160;
        (*(*(v157 - 8) + 104))(v159, *MEMORY[0x277D37768], v157);
        swift_willThrow();
        (v146)(v148, v198);
      }
    }

    else
    {

      v155 = sub_2224B4198();
      sub_2224B4020(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
      swift_allocError();
      *v156 = v42;
      v156[1] = 0x80000002224B6190;
      (*(*(v155 - 8) + 104))(v156, *MEMORY[0x277D37748], v155);
      swift_willThrow();
      (*(v199 + 8))(v184, v194);
      (*(v138 + 8))(v143, v142);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(&v231);
  }

  v181 = v129;
LABEL_104:
  MEMORY[0x223DB7AD0](v181);

  __break(1u);
  return result;
}

uint64_t sub_2224AF1FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_2224B0610(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_2224B4978();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_2224B0610((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 48 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_2224B3F94(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_2224B3F94(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2224AF430(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2224B0D94(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t QueryType.upsertMany(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1Tm, v4, a2);
  a4[5] = a1;
}

uint64_t sub_2224AF5BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2224AF624(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2224AF66C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2224AF6C8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E638, &qword_2224B5A38);
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

void *sub_2224AF774(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E610, &qword_2224B5A08);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E380, &qword_2224B5148);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2224AF8A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E630, &qword_2224B5A30);
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

void *sub_2224AF9AC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

unint64_t sub_2224AFB88(uint64_t a1, uint64_t a2)
{
  sub_2224B4B08();
  sub_2224B4838();
  v4 = sub_2224B4B18();

  return sub_2224B0180(a1, a2, v4);
}

uint64_t sub_2224AFC00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E588, &qword_2224B5918);
  v33 = v4;
  result = sub_2224B4A38();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_2224A9F14(v24, v34);
      }

      else
      {
        sub_2224A703C(v24, v34);
      }

      sub_2224B4B08();
      sub_2224B4838();
      result = sub_2224B4B18();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2224A9F14(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2224AFEB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E600, &qword_2224B59F8);
  v36 = v4;
  result = sub_2224B4A38();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      if (v36)
      {
        v27 = v26[1];
        v37 = *v26;
        v38 = v27;
      }

      else
      {
        sub_2224A7810(v26, &v37, &qword_27D00E338, &qword_2224B5090);
      }

      sub_2224B4B08();
      sub_2224B4838();
      result = sub_2224B4B18();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = (*(v7 + 56) + 32 * v15);
      v18 = v38;
      *v17 = v37;
      v17[1] = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_2224B0180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2224B4A88())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_2224B0238()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E588, &qword_2224B5918);
  v2 = *v0;
  v3 = sub_2224B4A28();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2224A703C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2224A9F14(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2224B03DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E600, &qword_2224B59F8);
  v2 = *v0;
  v3 = sub_2224B4A28();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_2224A7810(*(v2 + 56) + 32 * v17, v27, &qword_27D00E338, &qword_2224B5090);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
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

        v1 = v26;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2224B0590(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2224B0750(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2224B05B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2224B0884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2224B05D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2224B0644(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2224B05F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2224B0A5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2224B0610(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2224B0C4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2224B0644(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E638, &qword_2224B5A38);
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

void *sub_2224B0750(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E610, &qword_2224B5A08);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E380, &qword_2224B5148);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2224B0884(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E640, &unk_2224B5A40);
  v10 = *(sub_2224B4418() - 8);
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
  v15 = *(sub_2224B4418() - 8);
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

void *sub_2224B0A5C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E660, &qword_2224B5A70);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E370, &qword_2224B5128) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E370, &qword_2224B5128) - 8);
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

void *sub_2224B0C4C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E620, &qword_2224B5A20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E618, &unk_2224B5A10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2224B0D94(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2224B4B08();
  sub_2224B4838();
  v8 = sub_2224B4B18();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2224B4A88() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2224B1C1C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2224B0EE4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2224B0630(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2224B0F50(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2224B0F50(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2224B4A68();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2224B4878();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2224B1118(v7, v8, a1, v4);
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
    return sub_2224B1048(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2224B1048(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2224B4A88(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2224B1118(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2224B19A8(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2224B16F4((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2224B4A88();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2224B4A88();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2224AF8A8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2224AF8A8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2224B16F4((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2224B19A8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2224B191C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2224B4A88(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2224B16F4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2224B4A88() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2224B4A88() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2224B191C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2224B19A8(v3);
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

uint64_t sub_2224B19BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E628, &qword_2224B5A28);
  result = sub_2224B4998();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2224B4B08();
      sub_2224B4838();
      result = sub_2224B4B18();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2224B1C1C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2224B19BC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2224B1D9C();
      goto LABEL_16;
    }

    sub_2224B1EF8(v8 + 1);
  }

  v10 = *v4;
  sub_2224B4B08();
  sub_2224B4838();
  result = sub_2224B4B18();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2224B4A88();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2224B4AA8();
  __break(1u);
  return result;
}

void *sub_2224B1D9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E628, &qword_2224B5A28);
  v2 = *v0;
  v3 = sub_2224B4988();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

uint64_t sub_2224B1EF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E628, &qword_2224B5A28);
  result = sub_2224B4998();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2224B4B08();

      sub_2224B4838();
      result = sub_2224B4B18();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t *sub_2224B2130(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_2224B3478(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_2224B21D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E600, &qword_2224B59F8);
  result = sub_2224B4A48();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_2224A7810(v17 + 32 * v16, v35, &qword_27D00E338, &qword_2224B5090);
    v33 = v35[0];
    v34 = v35[1];
    sub_2224B4B08();

    sub_2224B4838();
    result = sub_2224B4B18();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    v30 = (*(v9 + 56) + 32 * v24);
    *v30 = v33;
    v30[1] = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2224B2430(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_2224B24DC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_2224B4B08();

    sub_2224B4838();
    v23 = sub_2224B4B18();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_2224B4A88() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_2224B3064(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_2224B4B08();

            sub_2224B4838();
            v41 = sub_2224B4B18();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_2224B4A88() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_2224B2E2C(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x223DB7C20](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_2224859CC(v13);
    return v5;
  }

  MEMORY[0x223DB7AD0](v51);
  result = MEMORY[0x223DB7C20](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2224B2A4C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_2224A7810(a1 + 32, &v49, &qword_27D00E618, &unk_2224B5A10);
  v8 = v49;
  v7 = v50;
  v47 = v49;
  v48 = v50;
  v45 = v51;
  v46 = v52;
  v9 = *a3;
  v10 = sub_2224AFB88(v49, v50);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2224AFEB8(v15, a2 & 1);
    v10 = sub_2224AFB88(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_2224B4AB8();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_2224B03DC();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v53 = v18;
    MEMORY[0x223DB7AE0](v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E428, &qword_2224B5510);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_2224A7878(&v45, &qword_27D00E338, &qword_2224B5090);

      return MEMORY[0x223DB7AD0](v53);
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  v23 = (v21[7] + 32 * v10);
  v24 = v46;
  *v23 = v45;
  v23[1] = v24;
  v25 = v21[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v14)
  {
    v21[2] = v26;
    if (v4 == 1)
    {
    }

    v27 = a1 + 80;
    v28 = 1;
    while (v28 < *(a1 + 16))
    {
      sub_2224A7810(v27, &v49, &qword_27D00E618, &unk_2224B5A10);
      v30 = v49;
      v29 = v50;
      v47 = v49;
      v48 = v50;
      v45 = v51;
      v46 = v52;
      v31 = *a3;
      v32 = sub_2224AFB88(v49, v50);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v14 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v14)
      {
        goto LABEL_23;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        sub_2224AFEB8(v36, 1);
        v32 = sub_2224AFB88(v30, v29);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v30;
      v40[1] = v29;
      v41 = (v39[7] + 32 * v32);
      v42 = v46;
      *v41 = v45;
      v41[1] = v42;
      v43 = v39[2];
      v14 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v28;
      v39[2] = v44;
      v27 += 48;
      if (v4 == v28)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_2224B49C8();
  MEMORY[0x223DB7580](0xD00000000000001BLL, 0x80000002224B6270);
  sub_2224B4A08();
  MEMORY[0x223DB7580](39, 0xE100000000000000);
  result = sub_2224B4A18();
  __break(1u);
  return result;
}

unint64_t *sub_2224B2E2C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_2224B3064(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_2224B4B08();

        sub_2224B4838();
        v19 = sub_2224B4B18();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_2224B4A88() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_2224B3064(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E628, &qword_2224B5A28);
  result = sub_2224B49A8();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2224B4B08();

    sub_2224B4838();
    result = sub_2224B4B18();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

void *sub_2224B3288(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2224B33E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DB7620](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2224B0D94(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t *sub_2224B3478(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v28 = a4;
  v23 = a2;
  v24 = result;
  v25 = 0;
  v5 = 0;
  v29 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v27 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v30 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v29 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_2224A7810(*(v29 + 56) + 32 * v14, v37, &qword_27D00E338, &qword_2224B5090);
    v35[0] = v17;
    v35[1] = v16;
    v18 = sub_2224A7810(v37, &v36, &qword_27D00E338, &qword_2224B5090);
    v31 = v17;
    v32 = v16;
    MEMORY[0x28223BE20](v18);
    v22[2] = &v31;
    swift_bridgeObjectRetain_n();
    v19 = v38;
    v20 = sub_2224B2430(sub_2224B3FA0, v22, v28);
    v38 = v19;
    if (v20)
    {
      sub_2224A7878(v35, &qword_27D00E608, &qword_2224B5A00);
      sub_2224A7878(v37, &qword_27D00E338, &qword_2224B5090);

      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v21 = __OFADD__(v25++, 1);
      v10 = v27;
      v9 = v30;
      if (v21)
      {
        __break(1u);
        return sub_2224B21D4(v24, v23, v25, v29);
      }
    }

    else
    {
      sub_2224A7810(v35, &v31, &qword_27D00E608, &qword_2224B5A00);
      sub_2224B0D94(&v34, v31, v32);

      sub_2224A7878(&v33, &qword_27D00E338, &qword_2224B5090);
      sub_2224A7878(v35, &qword_27D00E608, &qword_2224B5A00);
      sub_2224A7878(v37, &qword_27D00E338, &qword_2224B5090);

      v10 = v27;
      v9 = v30;
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_2224B21D4(v24, v23, v25, v29);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v30 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2224B3760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_2224B2130(v14, v9, a1, a2, a3);
      MEMORY[0x223DB7C20](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      return v12;
    }
  }

  MEMORY[0x28223BE20](v11);
  bzero(v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_2224B3478((v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v12;
}

void *sub_2224B392C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = 0;
  v73 = a1 + 32;
  result = MEMORY[0x277D84F90];
  v66 = v6;
  do
  {
    v67 = result;
    while (1)
    {
      if (v12 >= v6)
      {
        goto LABEL_57;
      }

      if (__OFADD__(v12, 1))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        sub_2224B4AB8();
        __break(1u);
LABEL_63:
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v74 = v12 + 1;
      v14 = *(v73 + 8 * v12);

      v15 = sub_2224B24DC(v14, a2);
      if (!*(v15 + 16))
      {
        break;
      }

      sub_2224AF430(v15);
      if (__OFADD__(*a4, 1))
      {
        goto LABEL_59;
      }

      ++*a4;

      ++v12;
      if (v74 == v6)
      {
        return v67;
      }
    }

    v16 = sub_2224B24DC(v14, a5);
    if (*(v16 + 16))
    {
      v61 = a2;
      v64 = a5;
      v17 = v16;

      v65 = a6;
      sub_2224AF430(v18);
      v19 = sub_2224AF1FC(v17);

      if (*(v19 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E600, &qword_2224B59F8);
        v20 = sub_2224B4A48();
      }

      else
      {
        v20 = MEMORY[0x277D84F98];
      }

      v62 = a3;
      v63 = a4;
      *&v80 = v20;
      sub_2224B2A4C(v19, 1, &v80);
      if (!v69)
      {
        v22 = v80;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v14;
        v24 = v22 + 64;
        v25 = 1 << *(v22 + 32);
        if (v25 < 64)
        {
          v26 = ~(-1 << v25);
        }

        else
        {
          v26 = -1;
        }

        v27 = v26 & *(v22 + 64);
        v68 = (v25 + 63) >> 6;
        v70 = v22;

        v28 = 0;
        v21 = v14;
        v71 = v22 + 64;
        while (2)
        {
          v72 = isUniquelyReferenced_nonNull_native;
          if (!v27)
          {
            if (v68 <= v28 + 1)
            {
              v30 = v28 + 1;
            }

            else
            {
              v30 = v68;
            }

            v31 = v30 - 1;
            while (1)
            {
              v29 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                break;
              }

              if (v29 >= v68)
              {
                v39 = 0;
                v40 = 0;
                v38 = 0;
                v37 = 0;
                v35 = 0;
                v36 = 0;
                v27 = 0;
                v28 = v31;
                goto LABEL_33;
              }

              v27 = *(v24 + 8 * v29);
              ++v28;
              if (v27)
              {
                v28 = v29;
                goto LABEL_32;
              }
            }

            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v29 = v28;
LABEL_32:
          v32 = __clz(__rbit64(v27));
          v27 &= v27 - 1;
          v33 = v32 | (v29 << 6);
          v34 = (*(v70 + 48) + 16 * v33);
          v36 = *v34;
          v35 = v34[1];
          sub_2224A7810(*(v70 + 56) + 32 * v33, &v76, &qword_27D00E338, &qword_2224B5090);
          v38 = *(&v76 + 1);
          v37 = v76;
          v39 = *(&v77 + 1);
          v40 = v77;

LABEL_33:
          *&v76 = v36;
          *(&v76 + 1) = v35;
          *&v77 = v37;
          *(&v77 + 1) = v38;
          v78 = v40;
          v79 = v39;
          if (!v35)
          {
            v81 = 0u;
            v82 = 0u;
            v80 = 0u;
LABEL_48:

            a5 = v64;
            a6 = v65;
            a3 = v62;
            a4 = v63;
            a2 = v61;
            v6 = v66;
            goto LABEL_49;
          }

          sub_2224A7810(&v77, &v81, &qword_27D00E338, &qword_2224B5090);
          *&v80 = v36;
          *(&v80 + 1) = v35;

          sub_2224A7878(&v76, &qword_27D00E608, &qword_2224B5A00);
          v41 = *(&v80 + 1);
          if (!*(&v80 + 1))
          {
            goto LABEL_48;
          }

          v42 = v80;
          v76 = v81;
          v77 = v82;
          v44 = sub_2224AFB88(v80, *(&v80 + 1));
          v45 = v21[2];
          v46 = (v43 & 1) == 0;
          v47 = v45 + v46;
          if (__OFADD__(v45, v46))
          {
            goto LABEL_60;
          }

          v48 = v43;
          if (v21[3] >= v47)
          {
            if (v72)
            {
              if ((v43 & 1) == 0)
              {
                goto LABEL_42;
              }
            }

            else
            {
              sub_2224B03DC();
              if ((v48 & 1) == 0)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            sub_2224AFEB8(v47, v72 & 1);
            v49 = sub_2224AFB88(v42, v41);
            if ((v48 & 1) != (v50 & 1))
            {
              goto LABEL_62;
            }

            v44 = v49;
            if ((v48 & 1) == 0)
            {
LABEL_42:
              v21 = v83;
              v83[(v44 >> 6) + 8] |= 1 << v44;
              v51 = (v21[6] + 16 * v44);
              *v51 = v42;
              v51[1] = v41;
              v52 = (v21[7] + 32 * v44);
              v53 = v77;
              *v52 = v76;
              v52[1] = v53;
              v54 = v21[2];
              v55 = __OFADD__(v54, 1);
              v56 = v54 + 1;
              if (v55)
              {
                goto LABEL_61;
              }

              v21[2] = v56;
              goto LABEL_21;
            }
          }

          v21 = v83;
          sub_2224A7810(v83[7] + 32 * v44, v75, &qword_27D00E338, &qword_2224B5090);
          sub_2224A7878(&v76, &qword_27D00E338, &qword_2224B5090);

          sub_2224B3F24(v75, v21[7] + 32 * v44);
LABEL_21:
          isUniquelyReferenced_nonNull_native = 1;
          v24 = v71;
          continue;
        }
      }

      goto LABEL_63;
    }

    v21 = v14;
LABEL_49:
    v57 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_2224AF774(0, v67[2] + 1, 1, v67);
    }

    v59 = v57[2];
    v58 = v57[3];
    v60 = v57;
    if (v59 >= v58 >> 1)
    {
      v60 = sub_2224AF774((v58 > 1), v59 + 1, 1, v57);
    }

    result = v60;
    v60[2] = v59 + 1;
    v60[v59 + 4] = v21;
    v12 = v74;
  }

  while (v74 != v6);
  return result;
}

uint64_t sub_2224B3EB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5B8, &unk_2224B59C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2224B3F24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E338, &qword_2224B5090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2224B3F94(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2224B3FA0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2224B4A88() & 1;
  }
}

uint64_t sub_2224B4020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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