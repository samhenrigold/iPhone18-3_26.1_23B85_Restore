void *sub_22CFB0A4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v176 = a4;
  v159 = a3;
  v143 = a2;
  v185 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2300, &qword_22D01A830);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v137 = &v127 - v9;
  v154 = sub_22D01502C();
  v142 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v10);
  v169 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_22D01459C();
  v138 = *(v157 - 8);
  MEMORY[0x28223BE20](v157, v12);
  v156 = (&v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_22D0145CC();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v158 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v174 = &v127 - v20;
  v21 = sub_22D01481C();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v160 = (&v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24, v26);
  v181 = &v127 - v27;
  v28 = a5;
  v29 = sub_22D01483C();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v134 = (&v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x28223BE20](v32, v34);
  v136 = &v127 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v162 = &v127 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v128 = &v127 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v129 = &v127 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v49 = &v127 - v48;
  v50 = *(a1 + 16);
  v51 = MEMORY[0x277D84F90];
  v161 = v47;
  v175 = v30;
  v179 = v28;
  if (!v50)
  {
LABEL_32:
    v86 = v138;
    if (v51[2])
    {
      v87 = v51[2];
      if (!v87)
      {
LABEL_51:
        (*(v30 + 56))(v137, 1, 1, v29);

        v109 = v136;
        sub_22D014F8C();
        v110 = *(v30 + 104);
        v110(v109, *MEMORY[0x277CB9348], v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_22CEFCE2C(0, v51[2] + 1, 1, v51);
        }

        v112 = v51[2];
        v111 = v51[3];
        if (v112 >= v111 >> 1)
        {
          v51 = sub_22CEFCE2C((v111 > 1), v112 + 1, 1, v51);
        }

        v51[2] = v112 + 1;
        v113 = v30 + 32;
        v14 = *(v30 + 32);
        v30 = *(v30 + 80);
        v86 = *(v113 + 40);
        v29 = v161;
        (v14)(v51 + ((v30 + 32) & ~v30) + v86 * v112, v136, v161);
LABEL_57:
        v107 = v134;
        v110(v134, *MEMORY[0x277CB9328], v29);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_58;
        }

        goto LABEL_70;
      }
    }

    else
    {

      v88 = v129;
      sub_22D014F8C();
      v14 = v30 + 104;
      v89 = *(v30 + 104);
      (v89)(v88, *MEMORY[0x277CB9348], v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_22CEFCE2C(0, v51[2] + 1, 1, v51);
      }

      v90 = v51;
      v91 = v51[2];
      v92 = v90;
      v93 = v90[3];
      v181 = v89;
      if (v91 >= v93 >> 1)
      {
        v92 = sub_22CEFCE2C((v93 > 1), v91 + 1, 1, v92);
      }

      v94 = v92;
      v92[2] = v91 + 1;
      v95 = v30 + 32;
      v96 = *(v30 + 32);
      v97 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v98 = *(v95 + 40);
      v99 = v161;
      v96(v92 + v97 + v98 * v91, v129, v161);
      v100 = v159;
      if (v159)
      {
        v101 = v86;
        v86 = v156;
        *v156 = v143;
        v86[1] = v100;
        (v101[13])(v86, *MEMORY[0x277CB9210], v157);

        v102 = v128;
        sub_22D0145AC();
        (v181)(v102, *MEMORY[0x277CB9320], v99);
        v14 = v94[2];
        v103 = v94[3];
        v51 = v94;
        if (v14 >= v103 >> 1)
        {
          v51 = sub_22CEFCE2C((v103 > 1), v14 + 1, 1, v94);
        }

        v51[2] = v14 + 1;
        v29 = v161;
        v96(v51 + v97 + v14 * v98, v128, v161);
      }

      else
      {
        v51 = v94;
        v29 = v99;
      }

      v30 = v175;
      v87 = v51[2];
      if (!v87)
      {
        goto LABEL_51;
      }
    }

    v106 = 0;
    v107 = (v30 + 8);
    while (v106 < v51[2])
    {
      v108 = v30;
      v30 = *(v30 + 80);
      v86 = *(v108 + 72);
      v14 = v162;
      (*(v108 + 16))(v162, v51 + ((v30 + 32) & ~v30) + v86 * v106, v29);
      if (sub_22D0147DC())
      {
        v114 = v175;
        v115 = v137;
        v116 = v14;
        v14 = *(v175 + 32);
        (v14)(v137, v116, v29);
        (*(v114 + 56))(v115, 0, 1, v29);
        v110 = *(v114 + 104);
        goto LABEL_57;
      }

      ++v106;
      (*v107)(v14, v29);
      v30 = v175;
      if (v87 == v106)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_70:
    v51 = sub_22CEFCE2C(0, v51[2] + 1, 1, v51);
LABEL_58:
    v118 = v51[2];
    v117 = v51[3];
    if (v118 >= v117 >> 1)
    {
      v51 = sub_22CEFCE2C((v117 > 1), v118 + 1, 1, v51);
    }

    sub_22CEEC3D8(v137, &qword_27D9F2300, &qword_22D01A830);
    v51[2] = v118 + 1;
    (v14)(v51 + ((v30 + 32) & ~v30) + v86 * v118, v107, v161);
    return v51;
  }

  v182 = MEMORY[0x277D84F90];
  v155 = v14;
  v180 = v50;
  sub_22CF440E8(0, v50, 0);
  v14 = v155;
  v29 = v161;
  v51 = v182;
  v53 = *(v22 + 16);
  v52 = v22 + 16;
  v54 = a1 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
  v171 = (v52 + 72);
  v172 = v53;
  v170 = *MEMORY[0x277CB9330];
  v152 = *MEMORY[0x277CB9338];
  v168 = (v52 + 80);
  v130 = "Unknown priority";
  v173 = (v52 - 8);
  v145 = (v142 + 32);
  v144 = *MEMORY[0x277CB9348];
  v165 = (v30 + 104);
  v151 = (v15 + 32);
  v150 = (v15 + 16);
  v149 = (v15 + 88);
  v148 = *MEMORY[0x277CB9228];
  v141 = *MEMORY[0x277CB9230];
  v133 = *MEMORY[0x277CB9238];
  v147 = (v138 + 104);
  v153 = (v15 + 8);
  v140 = (v15 + 96);
  v164 = v30 + 32;
  v132 = *MEMORY[0x277CB9220];
  v146 = *MEMORY[0x277CB9320];
  v131 = *MEMORY[0x277CB9210];
  v139 = *MEMORY[0x277CB9218];
  v163 = *(v52 + 56);
  v177 = v21;
  v55 = v160;
  v166 = v52;
  v167 = v49;
  while (1)
  {
    v56 = v14;
    v57 = v181;
    v178 = v54;
    v58 = v172;
    (v172)(v181);
    v58(v55, v57, v21);
    v59 = (*v171)(v55, v21);
    if (v59 != v170)
    {
      break;
    }

    (*v168)(v55, v21);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3158, &unk_22D01AEE0);
    sub_22CEFE9B4(*(v55 + *(v60 + 48)), *(v55 + *(v60 + 48) + 8));
    v14 = v56;
    (*v151)(v174, v55, v56);
    v61 = v158;
    (*v150)();
    v62 = (*v149)(v61, v56);
    v63 = v159;
    if (v62 == v148)
    {
      (*v140)(v61, v56);
      v64 = v61[1];
      if (!v63)
      {

LABEL_62:
        type metadata accessor for PermissionsError(0);
        sub_22CFB2168(&qword_27D9F3150, type metadata accessor for PermissionsError, &unk_22D01A3D4);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*v153)(v174, v56);
        (*v173)(v181, v21);
        goto LABEL_67;
      }

      v65 = *v61;
      v66 = v156;
      *v156 = v143;
      v66[1] = v63;
      v66[2] = v65;
      v66[3] = v64;
      (*v147)(v66, v139, v157);

      v67 = v167;
      sub_22D0145AC();
      (*v153)(v174, v56);
      (*v173)(v181, v21);
      v68 = v146;
      v55 = v160;
      v69 = v67;
    }

    else
    {
      if (v62 == v141)
      {
        if (!v159)
        {
          goto LABEL_62;
        }

        v73 = v156;
        *v156 = v143;
        v73[1] = v63;
        (*v147)(v73, v131, v157);
      }

      else
      {
        if (v62 != v133)
        {
          type metadata accessor for PermissionsError(0);
          v119 = v21;
          sub_22CFB2168(&qword_27D9F3150, type metadata accessor for PermissionsError, &unk_22D01A3D4);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v120 = *v153;
          (*v153)(v174, v56);
          (*v173)(v181, v119);
          v120(v158, v56);
          goto LABEL_67;
        }

        (*v147)(v156, v132, v157);
      }

      v69 = v167;
      sub_22D0145AC();
      (*v153)(v174, v56);
      (*v173)(v181, v21);
      v68 = v146;
      v55 = v160;
    }

LABEL_29:
    (*v165)(v69, v68, v29);
    v182 = v51;
    v85 = v51[2];
    v84 = v51[3];
    if (v85 >= v84 >> 1)
    {
      sub_22CF440E8((v84 > 1), v85 + 1, 1);
      v14 = v155;
      v29 = v161;
      v51 = v182;
    }

    v51[2] = v85 + 1;
    (*(v30 + 32))(v51 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v85, v69, v29);
    v21 = v177;
    v54 = v178 + v163;
    if (!--v180)
    {
      goto LABEL_32;
    }
  }

  if (v59 != v152)
  {
    type metadata accessor for PermissionsError(0);
    v104 = v21;
    sub_22CFB2168(&qword_27D9F3150, type metadata accessor for PermissionsError, &unk_22D01A3D4);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v105 = *v173;
    (*v173)(v181, v104);
    v105(v55, v104);
    goto LABEL_67;
  }

  (*v168)(v55, v21);
  v70 = v55[1];
  if (v70 < 2)
  {
    type metadata accessor for PermissionsError(0);
    sub_22CFB2168(&qword_27D9F3150, type metadata accessor for PermissionsError, &unk_22D01A3D4);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_66;
  }

  v71 = *v55;

  sub_22D014F8C();
  if (v71 == v176 && v70 == v179)
  {
    sub_22CEFE9B4(v176, v179);
    v72 = v177;
LABEL_17:
    v69 = v167;
LABEL_28:
    (*v173)(v181, v72);
    (*v145)(v69, v169, v154);
    v68 = v144;
    v29 = v161;
    v14 = v155;
    goto LABEL_29;
  }

  if (sub_22D016DFC())
  {
    sub_22CEFE9B4(v71, v70);
    v72 = v177;
    goto LABEL_17;
  }

  v135 = v51;
  v74 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v75 = sub_22D01666C();
  *&v184[0] = 0;
  v76 = [v74 initWithBundleIdentifier:v75 allowPlaceholder:0 error:v184];

  v69 = v167;
  if (v76)
  {
    v77 = *&v184[0];
    v78 = [v76 entitlements];
    v79 = sub_22D01666C();
    sub_22CFB21B0();
    v80 = [v78 objectForKey:v79 ofClass:swift_getObjCClassFromMetadata()];

    if (v80)
    {
      sub_22D016ACC();
      swift_unknownObjectRelease();

      sub_22CF1D288(&v183, v184);
    }

    else
    {

      memset(v184, 0, sizeof(v184));
    }

    v30 = v175;
    v81 = v177;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B10, &unk_22D01B930);
    v82 = swift_dynamicCast();
    v51 = v135;
    v83 = v142;
    if (!v82 || v183 != 1)
    {
      goto LABEL_65;
    }

    sub_22CEFE9B4(v71, v70);
    v72 = v81;
    goto LABEL_28;
  }

  v121 = *&v184[0];
  v122 = sub_22D01416C();

  swift_willThrow();
  v51 = v135;
  v83 = v142;
LABEL_65:
  type metadata accessor for PermissionsError(0);
  sub_22CFB2168(&qword_27D9F3150, type metadata accessor for PermissionsError, &unk_22D01A3D4);
  swift_allocError();
  v123 = v169;
  v124 = v154;
  (*(v83 + 16))(v125, v169, v154);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_22CEFE9B4(v71, v70);
  (*(v83 + 8))(v123, v124);
LABEL_66:
  (*v173)(v181, v177);
LABEL_67:

  return v51;
}

uint64_t sub_22CFB2094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CFB2104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityParticipantEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CFB2168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22CFB21B0()
{
  result = qword_28143D8F0;
  if (!qword_28143D8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143D8F0);
  }

  return result;
}

void sub_22CFB21FC()
{
  v0 = sub_22D0143DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_22D0143CC();
  v6 = sub_22D0143BC();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  qword_28143ECD0 = v5;
}

void sub_22CFB2308(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(*(Strong + 24) + 16);

    os_unfair_lock_lock(v8);
    [*(v7 + 16) invalidate];
    v9 = *(v7 + 16);
    *(v7 + 16) = 0;

    os_unfair_lock_unlock(v8);

    v11 = *(v7 + 40);
    if (v11)
    {
      v12 = *(v7 + 48);

      v11(a4);
      v10.n128_f64[0] = sub_22CF80A18(v11, v12);
    }

    (a1)(1, v10);
  }

  else
  {
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v13 = sub_22D01637C();
    __swift_project_value_buffer(v13, qword_2814443F0);
    v14 = sub_22D01636C();
    v15 = sub_22D0168FC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22CEE1000, v14, v15, "Wake scheduler unexpectedly deallocated", v16, 2u);
      MEMORY[0x2318C6860](v16, -1, -1);
    }

    a1(1);
  }
}

double sub_22CFB24C4(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_22CFB2B20, v4);

  return result;
}

uint64_t sub_22CFB2558()
{

  sub_22CF80A18(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

void *sub_22CFB25CC()
{
  v1 = sub_22D01697C();
  v14 = *(v1 - 8);
  v15 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D01691C();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_22D01653C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v0[2] = 0;
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *(v9 + 16) = v10;
  *v10 = 0;
  v0[3] = v9;
  v13 = sub_22CEEC38C();
  sub_22D0164EC();
  v16 = MEMORY[0x277D84F90];
  sub_22CEF8844(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v14 + 104))(v4, *MEMORY[0x277D85260], v15);
  v11 = sub_22D0169BC();
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = v11;
  return v0;
}

double sub_22CFB2854(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_22CF80A18(v3, v4);
}

uint64_t sub_22CFB2868(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_22CFB28B4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_22CFB28EC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_22CEEE31C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_22CFB2948(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3160, &unk_22D01AF50);
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

void sub_22CFB2A64(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void sub_22CFB2A9C(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(sub_22D01430C() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_22CFB2308(a1, a2, v6, v7);
}

uint64_t sub_22CFB2B34()
{

  return swift_deallocClassInstance();
}

double sub_22CFB2B90()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22CFB2BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A0, &qword_22D019700);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - v4;
  v6 = sub_22D01534C();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  sub_22CFA84A0(a1, v5);
  v11 = type metadata accessor for Assertion(0);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  swift_beginAccess();
  sub_22CFB2F78(v5, v9);
  return swift_endAccess();
}

uint64_t sub_22CFB2D5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A0, &qword_22D019700);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - v4;
  v6 = sub_22D01534C();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  v11 = type metadata accessor for Assertion(0);
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  swift_beginAccess();
  sub_22CFB2F78(v5, v9);
  return swift_endAccess();
}

uint64_t sub_22CFB2ED8()
{
  v1 = *v0;
  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x277D84F98];
}

uint64_t sub_22CFB2F78(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A0, &qword_22D019700);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for Assertion(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F26A0, &qword_22D019700);
    sub_22CFBC690(a2, v8);
    v14 = sub_22D01534C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_22CEEC3D8(v8, &qword_27D9F26A0, &qword_22D019700);
  }

  else
  {
    sub_22CEF0B08(a1, v12, type metadata accessor for Assertion);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_22CFBE53C(v12, a2, isUniquelyReferenced_nonNull_native);
    v17 = sub_22D01534C();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_22CFB31AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a1 & 0x100000000) != 0)
  {
    v10 = sub_22CEEC698(a2, a3);
    v12 = v11;

    if (v12)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22CFB7154();
        v14 = v16;
      }

      result = sub_22CFBD50C(v10, v14);
      *v4 = v14;
    }
  }

  else
  {
    v6 = a1;
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_22CFBEBF8(v6, a2, a3, v8);

    *v3 = v15;
  }

  return result;
}

uint64_t sub_22CFB32AC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_22CEF44D4(a1, &v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
    MEMORY[0x28223BE20](v5, v5);
    v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    sub_22CFC060C(*v7, a2, isUniquelyReferenced_nonNull_native, &v18);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v19);
    *v2 = v18;
  }

  else
  {
    sub_22CEEC3D8(a1, &qword_27D9F29F8, &qword_22D019688);
    v10 = v2;
    v11 = sub_22CEE637C(a2);
    if (v12)
    {
      v13 = v11;
      v14 = v2;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v2;
      v18 = *v10;
      if (!v15)
      {
        sub_22CFB7740();
        v14 = v10;
        v16 = v18;
      }

      sub_22CEF44D4((*(v16 + 56) + 40 * v13), &v19);
      sub_22CFBD830(v13, v16);
      *v14 = v16;
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }

    return sub_22CEEC3D8(&v19, &qword_27D9F29F8, &qword_22D019688);
  }

  return result;
}

uint64_t sub_22CFB3488(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v6;
    sub_22CFBFD78(a1 & 1, a2, a3 & 1, a4, a5, isUniquelyReferenced_nonNull_native);
    v13 = sub_22D01436C();
    result = (*(*(v13 - 8) + 8))(a5, v13);
    *v6 = v26;
  }

  else
  {
    v15 = sub_22CEF5CD8(a5);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v27 = *v6;
      if (!v18)
      {
        sub_22CFB7F00();
        v19 = v27;
      }

      v20 = *(v19 + 48);
      v21 = sub_22D01436C();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v20 + *(v22 + 72) * v17, v21);

      sub_22CFBDCF4(v17, v19);
      result = (v23)(a5, v21);
      *v6 = v19;
    }

    else
    {
      v24 = sub_22D01436C();
      v25 = *(*(v24 - 8) + 8);

      return v25(a5, v24);
    }
  }

  return result;
}

uint64_t sub_22CFB36AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    result = sub_22CEE6210(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v16;
  }

  else
  {
    result = sub_22CEE637C(a2);
    if (v12)
    {
      v13 = result;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v17 = *v7;
      if (!v14)
      {
        sub_22CFB86CC(a3, a4);
        v15 = v17;
      }

      result = sub_22CFBE1C4(v13, v15);
      *v7 = v15;
    }
  }

  return result;
}

BOOL sub_22CFB378C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_22D01559C();
    ++v2;
    sub_22CEF57B4(&qword_28143DAF0, MEMORY[0x277D4D520], MEMORY[0x277D4D528]);
  }

  while ((sub_22D01665C() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_22CFB3898()
{
  v1 = sub_22D0155CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_22D016C6C();

  strcpy(v11, "identifier: ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  v10[1] = *v0;
  v6 = sub_22D016DEC();
  MEMORY[0x2318C5860](v6);

  MEMORY[0x2318C5860](0x736575716572203BLL, 0xEB00000000203A74);
  v7 = type metadata accessor for TaskScheduler.Task(0);
  (*(v2 + 16))(v5, &v0[*(v7 + 20)], v1);
  v8 = sub_22D01669C();
  MEMORY[0x2318C5860](v8);

  return v11[0];
}

void sub_22CFB3A24()
{
  v0 = sub_22D0143DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_22D0143CC();
  v6 = sub_22D0143BC();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  qword_28143F558 = v5;
}

void sub_22CFB3B30()
{
  v46 = type metadata accessor for TaskScheduler.Task(0);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v1);
  v43 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3270, &unk_22D01B210);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v37 - v9;
  v11 = sub_22D01430C();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0142DC();
  v15 = *(*(v0 + 16) + 16);

  os_unfair_lock_lock(v15);
  v41 = v0;
  v38 = v14;
  sub_22CFB4FF8(v0, v14, &v47);
  os_unfair_lock_unlock(v15);

  v16 = 0;
  v18 = (v47 + 64);
  v17 = *(v47 + 64);
  v45 = v47;
  v19 = 1 << *(v47 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v42 = v10;
  if ((v20 & v17) != 0)
  {
    while (1)
    {
      v23 = v16;
LABEL_12:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = v26 | (v23 << 6);
      v28 = *(*(v45 + 48) + 8 * v27);
      v29 = v43;
      sub_22CF28C98(*(v45 + 56) + *(v44 + 72) * v27, v43, type metadata accessor for TaskScheduler.Task);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
      v31 = *(v30 + 48);
      *v7 = v28;
      sub_22CEF0B08(v29, v7 + v31, type metadata accessor for TaskScheduler.Task);
      (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
      v25 = v23;
      v10 = v42;
LABEL_13:
      sub_22CFC0FAC(v7, v10);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
      if ((*(*(v32 - 8) + 48))(v10, 1, v32) == 1)
      {
        break;
      }

      v33 = &v10[*(v32 + 48)];
      v34 = *(v33 + *(v46 + 24));

      v35 = sub_22CFB6010(v33);
      v34(v35);

      v16 = v25;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    sub_22CEF0D1C();
    (*(v39 + 8))(v38, v40);
  }

  else
  {
LABEL_5:
    if (v22 <= &v16->_os_unfair_lock_opaque + 1)
    {
      v24 = &v16->_os_unfair_lock_opaque + 1;
    }

    else
    {
      v24 = v22;
    }

    v25 = (v24 - 1);
    while (1)
    {
      v23 = (&v16->_os_unfair_lock_opaque + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
        (*(*(v36 - 8) + 56))(v7, 1, 1, v36);
        v21 = 0;
        goto LABEL_13;
      }

      v21 = v18[v23];
      v16 = (v16 + 1);
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);

    os_unfair_lock_unlock(v23);
    __break(1u);
  }
}

double sub_22CFB3FA8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a6;
  v57 = a7;
  v54 = a4;
  v55 = a5;
  v8 = sub_22D0164CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D01653C();
  v59 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v58 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D01430C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v50 = v12;
    v53 = v8;
    sub_22D01566C();
    v49 = sub_22D01563C();
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v23 = sub_22D01637C();
    __swift_project_value_buffer(v23, qword_2814443F0);
    (*(v17 + 16))(v20, a1, v16);
    v24 = sub_22D01636C();
    v25 = sub_22D01690C();
    v26 = os_log_type_enabled(v24, v25);
    v51 = v13;
    v52 = v9;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v27 = 136446210;
      if (qword_28143F550 != -1)
      {
        swift_once();
      }

      v28 = qword_28143F558;
      v29 = sub_22D01426C();
      v30 = [v28 stringFromDate_];

      v31 = sub_22D01667C();
      v33 = v32;

      (*(v17 + 8))(v20, v16);
      v34 = sub_22CEEE31C(v31, v33, aBlock);

      *(v27 + 4) = v34;
      _os_log_impl(&dword_22CEE1000, v24, v25, v54, v27, 0xCu);
      v35 = v48;
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x2318C6860](v35, -1, -1);
      MEMORY[0x2318C6860](v27, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v20, v16);
    }

    sub_22CFB3B30();
    v41 = swift_allocObject();
    v42 = v49;
    *(v41 + 16) = v22;
    *(v41 + 24) = v42;
    aBlock[4] = v56;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEF8B58;
    aBlock[3] = v57;
    v43 = _Block_copy(aBlock);

    v44 = v58;
    sub_22D0164EC();
    v60 = MEMORY[0x277D84F90];
    sub_22CEF57B4(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
    sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
    v45 = v50;
    v46 = v53;
    sub_22D016ADC();
    MEMORY[0x2318C5B10](0, v44, v45, v43);
    _Block_release(v43);

    (*(v52 + 8))(v45, v46);
    (*(v59 + 8))(v44, v51);
  }

  else
  {
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v36 = sub_22D01637C();
    __swift_project_value_buffer(v36, qword_2814443F0);
    v37 = sub_22D01636C();
    v38 = sub_22D0168FC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22CEE1000, v37, v38, "Task scheduler unexpectedly deallocated", v39, 2u);
      MEMORY[0x2318C6860](v39, -1, -1);
    }
  }

  return result;
}

double sub_22CFB4610(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D0164CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01653C();
  v49 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D01430C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v44 = v7;
    v47 = v3;
    sub_22D01566C();
    v43 = sub_22D01563C();
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v18 = sub_22D01637C();
    __swift_project_value_buffer(v18, qword_2814443F0);
    (*(v12 + 16))(v15, a1, v11);
    v19 = sub_22D01636C();
    v20 = sub_22D01690C();
    v21 = os_log_type_enabled(v19, v20);
    v45 = v8;
    v46 = v4;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v22 = 136446210;
      if (qword_28143F550 != -1)
      {
        swift_once();
      }

      v23 = qword_28143F558;
      v24 = sub_22D01426C();
      v25 = [v23 stringFromDate_];

      v26 = sub_22D01667C();
      v28 = v27;

      (*(v12 + 8))(v15, v11);
      v29 = sub_22CEEE31C(v26, v28, aBlock);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_22CEE1000, v19, v20, "Nonwake event fired for date: %{public}s", v22, 0xCu);
      v30 = v42;
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x2318C6860](v30, -1, -1);
      MEMORY[0x2318C6860](v22, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    sub_22CFB3B30();
    v36 = swift_allocObject();
    v37 = v43;
    *(v36 + 16) = v17;
    *(v36 + 24) = v37;
    aBlock[4] = sub_22CFC109C;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEF8B58;
    aBlock[3] = &block_descriptor_37_0;
    v38 = _Block_copy(aBlock);

    v39 = v48;
    sub_22D0164EC();
    v50 = MEMORY[0x277D84F90];
    sub_22CEF57B4(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
    sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
    v40 = v44;
    v41 = v47;
    sub_22D016ADC();
    MEMORY[0x2318C5B10](0, v39, v40, v38);
    _Block_release(v38);

    (*(v46 + 8))(v40, v41);
    (*(v49 + 8))(v39, v45);
  }

  else
  {
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v31 = sub_22D01637C();
    __swift_project_value_buffer(v31, qword_2814443F0);
    v32 = sub_22D01636C();
    v33 = sub_22D0168FC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_22CEE1000, v32, v33, "Task scheduler unexpectedly deallocated", v34, 2u);
      MEMORY[0x2318C6860](v34, -1, -1);
    }
  }

  return result;
}

uint64_t sub_22CFB4C8C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_22CFB4CDC()
{
  sub_22CFB4C8C();

  return swift_deallocClassInstance();
}

unint64_t sub_22CFB4D34(uint64_t a1)
{
  result = sub_22D0155CC();
  if (v2 <= 0x3F)
  {
    result = sub_22CF8A37C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22CFB4DC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3170, &qword_22D01B0D8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v25 - v12;
  os_unfair_lock_assert_owner(*(*(a1 + 16) + 16));
  v14 = *(a1 + 32);
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 32) = v15;
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    v18 = type metadata accessor for TaskScheduler.Task(0);
    v25 = v13;
    v19 = a3;
    v20 = v18[5];
    v21 = sub_22D0155CC();
    (*(*(v21 - 8) + 16))(&a5[v20], a2, v21);
    *a5 = v15;
    v22 = &a5[v18[6]];
    *v22 = v19;
    v22[1] = a4;
    v23 = &a5[v18[7]];
    *v23 = sub_22CEF0608;
    v23[1] = v17;
    v24 = v25;
    sub_22CF28C98(a5, v25, type metadata accessor for TaskScheduler.Task);
    (*(*(v18 - 1) + 56))(v24, 0, 1, v18);
    swift_beginAccess();

    sub_22CEF0738(v24, v15);
    swift_endAccess();
  }
}

uint64_t sub_22CFB4FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v84 = a3;
  v95 = a2;
  v94 = sub_22D01430C();
  v4 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v5);
  v93 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for TaskScheduler.Task(0);
  v99 = *(v92 - 8);
  v8 = MEMORY[0x28223BE20](v92, v7);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v85 = &v82 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v82 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v88 = &v82 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3270, &unk_22D01B210);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v96 = (&v82 - v26);
  swift_beginAccess();
  v83 = a1;
  v27 = *(a1 + 24);
  v28 = *(v27 + 64);
  v87 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v91 = (v4 + 8);
  v89 = v27;

  v33 = 0;
  v34 = MEMORY[0x277D84F98];
  v86 = MEMORY[0x277D84F98];
  v98 = v24;
  v90 = v32;
  if (!v31)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v97 = v34;
      v35 = v17;
      v36 = v10;
      v37 = v33;
LABEL_15:
      v39 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v40 = v39 | (v37 << 6);
      v41 = v88;
      v42 = *(*(v89 + 48) + 8 * v40);
      sub_22CF28C98(*(v89 + 56) + *(v99 + 72) * v40, v88, type metadata accessor for TaskScheduler.Task);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
      v44 = *(v43 + 48);
      v45 = v98;
      *v98 = v42;
      v24 = v45;
      sub_22CEF0B08(v41, &v45[v44], type metadata accessor for TaskScheduler.Task);
      (*(*(v43 - 8) + 56))(v24, 0, 1, v43);
      v100 = v37;
      v10 = v36;
      v17 = v35;
      v34 = v97;
LABEL_16:
      v46 = v96;
      sub_22CFC0FAC(v24, v96);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
      if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
      {

        *(v83 + 24) = v34;

        *v84 = v86;
        return result;
      }

      v48 = *v46;
      sub_22CEF0B08(v46 + *(v47 + 48), v17, type metadata accessor for TaskScheduler.Task);
      v49 = v93;
      sub_22D01557C();
      sub_22CEF57B4(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v50 = v94;
      v51 = sub_22D01663C();
      (*v91)(v49, v50);
      if (v51)
      {
        break;
      }

      sub_22CF28C98(v17, v85, type metadata accessor for TaskScheduler.Task);
      v68 = v86;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v68;
      v71 = sub_22CEF098C(v48);
      v72 = v68[2];
      v73 = (v70 & 1) == 0;
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
        goto LABEL_46;
      }

      v75 = v70;
      if (v68[3] >= v74)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22CFB81B0();
        }

        v24 = v98;
      }

      else
      {
        sub_22CFBBA98(v74, isUniquelyReferenced_nonNull_native);
        v76 = sub_22CEF098C(v48);
        if ((v75 & 1) != (v77 & 1))
        {
          goto LABEL_48;
        }

        v71 = v76;
        v24 = v98;
      }

      v78 = v101;
      v86 = v101;
      if (v75)
      {
        sub_22CF2D7F0(v85, v101[7] + *(v99 + 72) * v71, type metadata accessor for TaskScheduler.Task);
        sub_22CFB6010(v17);
      }

      else
      {
        v101[(v71 >> 6) + 8] |= 1 << v71;
        *(v78[6] + 8 * v71) = v48;
        sub_22CEF0B08(v85, v78[7] + *(v99 + 72) * v71, type metadata accessor for TaskScheduler.Task);
        sub_22CFB6010(v17);
        v79 = v86[2];
        v65 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v65)
        {
          goto LABEL_47;
        }

        v86[2] = v80;
      }

      v32 = v90;
      v33 = v100;
      if (!v31)
      {
        goto LABEL_8;
      }
    }

    v52 = v17;
    v53 = v17;
    v54 = v10;
    sub_22CF28C98(v53, v10, type metadata accessor for TaskScheduler.Task);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v34;
    v57 = sub_22CEF098C(v48);
    v58 = v34[2];
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_44;
    }

    v61 = v56;
    if (v34[3] >= v60)
    {
      if ((v55 & 1) == 0)
      {
        sub_22CFB81B0();
      }

      v10 = v54;
    }

    else
    {
      sub_22CFBBA98(v60, v55);
      v62 = sub_22CEF098C(v48);
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_48;
      }

      v57 = v62;
      v10 = v54;
    }

    v34 = v101;
    v17 = v52;
    if (v61)
    {
      sub_22CF2D7F0(v10, v101[7] + *(v99 + 72) * v57, type metadata accessor for TaskScheduler.Task);
      sub_22CFB6010(v52);
    }

    else
    {
      v101[(v57 >> 6) + 8] |= 1 << v57;
      *(v34[6] + 8 * v57) = v48;
      sub_22CEF0B08(v10, v34[7] + *(v99 + 72) * v57, type metadata accessor for TaskScheduler.Task);
      sub_22CFB6010(v52);
      v64 = v34[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_45;
      }

      v34[2] = v66;
    }

    v33 = v100;
    v24 = v98;
    v32 = v90;
  }

  while (v31);
LABEL_8:
  if (v32 <= v33 + 1)
  {
    v38 = v33 + 1;
  }

  else
  {
    v38 = v32;
  }

  while (1)
  {
    v37 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v37 >= v32)
    {
      v100 = v38 - 1;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
      (*(*(v67 - 8) + 56))(v24, 1, 1, v67);
      v31 = 0;
      goto LABEL_16;
    }

    v31 = *(v87 + 8 * v37);
    ++v33;
    if (v31)
    {
      v97 = v34;
      v35 = v17;
      v36 = v10;
      goto LABEL_15;
    }
  }

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
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

uint64_t sub_22CFB5884@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v68 = sub_22D0155CC();
  v6 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v7);
  v67 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
  v10 = MEMORY[0x28223BE20](v66, v9);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v64 = (&v54 - v14);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v63 = (&v54 - v17);
  MEMORY[0x28223BE20](v16, v18);
  v62 = &v54 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0189F0;
  *(inited + 32) = 0x736B736174;
  v58 = inited + 32;
  v57 = inited;
  *(inited + 40) = 0xE500000000000000;
  swift_beginAccess();
  v21 = *(a1 + 24);
  v22 = *(v21 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v54 = v2;
    v55 = a1;
    v56 = a2;
    v76 = MEMORY[0x277D84F90];

    sub_22CF440C8(0, v22, 0);
    v23 = v76;
    v24 = sub_22D016AEC();
    v60 = (v6 + 16);
    v25 = v21;
    v61 = v21;
    v59 = v21 + 64;
    while (1)
    {
      v69 = v22;
      v26 = *(v25 + 36);
      v27 = v66;
      v28 = *(v66 + 48);
      v29 = v62;
      v70 = v26;
      v30 = sub_22CFA377C(&v62[v28], v24, v26, 0, v25);
      v31 = v63;
      *v63 = v30;
      sub_22CEF0B08(&v29[v28], v31 + *(v27 + 48), type metadata accessor for TaskScheduler.Task);
      v32 = v64;
      sub_22CEEB6DC(v31, v64, &qword_27D9F3168, &unk_22D01B0C8);
      v33 = *v32;
      v71 = *(v27 + 48);
      v75[2] = v33;
      sub_22CFC05B8();
      v73 = sub_22D016ABC();
      v72 = v34;
      v35 = v65;
      sub_22CEEB6DC(v31, v65, &qword_27D9F3168, &unk_22D01B0C8);
      v36 = (v35 + *(v27 + 48));
      v75[0] = 0;
      v75[1] = 0xE000000000000000;
      sub_22D016C6C();

      strcpy(v75, "identifier: ");
      BYTE5(v75[1]) = 0;
      HIWORD(v75[1]) = -5120;
      v74 = *v36;
      v37 = sub_22D016DEC();
      MEMORY[0x2318C5860](v37);

      MEMORY[0x2318C5860](0x736575716572203BLL, 0xEB00000000203A74);
      v38 = type metadata accessor for TaskScheduler.Task(0);
      (*v60)(v67, &v36[*(v38 + 20)], v68);
      v39 = sub_22D01669C();
      MEMORY[0x2318C5860](v39);

      v40 = v75[0];
      v41 = v75[1];
      sub_22CEEC3D8(v31, &qword_27D9F3168, &unk_22D01B0C8);
      sub_22CFB6010(v36);
      sub_22CFB6010(v32 + v71);
      v76 = v23;
      v43 = *(v23 + 16);
      v42 = *(v23 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_22CF440C8((v42 > 1), v43 + 1, 1);
        v23 = v76;
      }

      *(v23 + 16) = v43 + 1;
      v44 = (v23 + 32 * v43);
      v45 = v72;
      v44[4] = v73;
      v44[5] = v45;
      v44[6] = v40;
      v44[7] = v41;
      v25 = v61;
      if (v24 < 0 || v24 >= -(-1 << *(v61 + 32)))
      {
        break;
      }

      if (((*(v59 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_17;
      }

      if (v70 != *(v61 + 36))
      {
        goto LABEL_18;
      }

      v24 = sub_22D016B0C();
      v22 = v69 - 1;
      if (v69 == 1)
      {

        a2 = v56;
        a1 = v55;
        v3 = v54;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_11:
    if (*(v23 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
      v46 = sub_22D016D3C();
    }

    else
    {
      v46 = MEMORY[0x277D84F98];
    }

    v75[0] = v46;

    sub_22CF43CD4(v47, 1, v75);
    if (!v3)
    {

      v48 = v75[0];
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2020, &unk_22D01B140);
      v50 = v57;
      *(v57 + 48) = v48;
      *(v50 + 72) = v49;
      strcpy((v50 + 80), "hasKeepAlive");
      *(v50 + 93) = 0;
      *(v50 + 94) = -5120;
      v51 = *(a1 + 96) != 0;
      *(v50 + 120) = MEMORY[0x277D839B0];
      *(v50 + 96) = v51;
      v52 = sub_22CF11C44(v50);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
      result = swift_arrayDestroy();
      *a2 = v52;
      return result;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_22CFB5F8C()
{
  v1 = *v0;
  v2 = *(*(*v0 + 16) + 16);

  os_unfair_lock_lock(v2);
  sub_22CFB5884(v1, &v4);
  os_unfair_lock_unlock(v2);

  return v4;
}

uint64_t sub_22CFB6010(uint64_t a1)
{
  v2 = type metadata accessor for TaskScheduler.Task(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22CFB606C(uint64_t a1)
{
  sub_22D01534C();
  v2 = MEMORY[0x277D4D450];
  sub_22CEF57B4(qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
  v3 = sub_22D01661C();
  return sub_22CEF5DAC(a1, v3, MEMORY[0x277D4D450], &qword_28143FBA8, v2, MEMORY[0x277D4D460]);
}

unint64_t sub_22CFB6140(uint64_t a1)
{
  v2 = sub_22D016BDC();

  return sub_22CFB6258(a1, v2);
}

unint64_t sub_22CFB6184(uint64_t a1)
{
  sub_22D0157AC();
  v2 = MEMORY[0x277D4D708];
  sub_22CEF57B4(&qword_27D9F3230, MEMORY[0x277D4D708], MEMORY[0x277D4D710]);
  v3 = sub_22D01661C();
  return sub_22CEF5DAC(a1, v3, MEMORY[0x277D4D708], &qword_27D9F3240, v2, MEMORY[0x277D4D718]);
}

unint64_t sub_22CFB6258(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22CFC088C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2318C5D50](v9, a1);
      sub_22CFAC094(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_22CFB635C()
{
  v1 = v0;
  v2 = type metadata accessor for Assertion(0);
  v40 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22D01534C();
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A08, &unk_22D0196A0);
  v7 = *v0;
  v8 = sub_22D016D1C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || v10 >= &v11[8 * v12])
    {
      memmove(v10, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_22CF28C98(v28 + v30, v39, type metadata accessor for Assertion);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        sub_22CEF0B08(v31, *(v20 + 56) + v30, type metadata accessor for Assertion);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }
}

void sub_22CFB6680()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A38, &unk_22D0196F0);
  v2 = *v0;
  v3 = sub_22D016D1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_22CFB67E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
  v2 = *v0;
  v3 = sub_22D016D1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_22CFB6960()
{
  v1 = v0;
  v2 = sub_22D014EFC();
  v41 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v40 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22D0149AC();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3258, &unk_22D01B1F0);
  v7 = *v0;
  v8 = sub_22D016D1C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v7 + 64;
    if (v9 != v7 || v10 >= &v11[8 * v12])
    {
      memmove(v10, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v42 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v35 = v43 + 32;
    v36 = v43 + 16;
    v37 = v7;
    v19 = v43;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v44 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v38;
        v26 = v39;
        (*(v19 + 16))(v38, *(v7 + 48) + v25, v39);
        v28 = *(v7 + 56);
        v29 = v40;
        v30 = *(v41 + 72) * v24;
        v31 = MEMORY[0x277CB9790];
        sub_22CF28C98(v28 + v30, v40, MEMORY[0x277CB9790]);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v32 = v29;
        v7 = v37;
        sub_22CEF0B08(v32, *(v20 + 56) + v30, v31);
        v17 = v44;
      }

      while (v44);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v33;
        v9 = v42;
        goto LABEL_18;
      }

      v23 = *(v34 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v44 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }
}

void sub_22CFB6C84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2620, &qword_22D01B1E0);
  v2 = *v0;
  v3 = sub_22D016D1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_22CFB6E00()
{
  v1 = v0;
  v43 = sub_22D01430C();
  v46 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v2);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22D0157AC();
  v45 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v4);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3228, &qword_22D01B1C8);
  v6 = *v0;
  v7 = sub_22D016D1C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || v9 >= &v10[8 * v11])
    {
      memmove(v9, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_22CFB7154()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3188, &qword_22D01B0F8);
  v2 = *v0;
  v3 = sub_22D016D1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_22CFB72D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
  v2 = *v0;
  v3 = sub_22D016D1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_22CEEE3E8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22CF1D288(v25, (*(v4 + 56) + v22));
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
}

void sub_22CFB7474()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3218, &qword_22D01B1B8);
  v2 = *v0;
  v3 = sub_22D016D1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_22CFB75D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3260, &qword_22D01B200);
  v2 = *v0;
  v3 = sub_22D016D1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_22CFB7740()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31E0, &qword_22D01B180);
  v2 = *v0;
  v3 = sub_22D016D1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 4 * v17;
        v19 = *(*(v2 + 48) + 4 * v17);
        v20 = 40 * v17;
        sub_22CEE3A84(*(v2 + 56) + 40 * v17, v21);
        *(*(v4 + 48) + v18) = v19;
        sub_22CEF44D4(v21, *(v4 + 56) + v20);
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_22CFB78C4()
{
  v1 = v0;
  v36 = sub_22D01534C();
  v40 = *(v36 - 8);
  v3 = MEMORY[0x28223BE20](v36, v2);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v37 = &v32 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31D8, &unk_22D01B170);
  v7 = *v0;
  v8 = sub_22D016D1C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || v10 >= &v11[8 * v12])
    {
      memmove(v10, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v39 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v40 + 32;
    v35 = v40 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v22 = v40;
        v23 = *(v40 + 72) * (v19 | (v13 << 6));
        v24 = *(v40 + 16);
        v26 = v36;
        v25 = v37;
        v24(v37, *(v7 + 48) + v23, v36);
        v27 = v38;
        v24(v38, *(v7 + 56) + v23, v26);
        v28 = v7;
        v29 = v39;
        v30 = *(v22 + 32);
        v30(*(v39 + 48) + v23, v25, v26);
        v31 = *(v29 + 56);
        v7 = v28;
        v30(v31 + v23, v27, v26);
        v17 = v41;
      }

      while (v41);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v39;
        goto LABEL_18;
      }

      v21 = *(v33 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }
}

void sub_22CFB7BDC()
{
  v1 = v0;
  v2 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  v40 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22D01436C();
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3200, &unk_22D01B1A0);
  v7 = *v0;
  v8 = sub_22D016D1C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || v10 >= &v11[8 * v12])
    {
      memmove(v10, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_22CF28C98(v28 + v30, v39, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        sub_22CEF0B08(v31, *(v20 + 56) + v30, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }
}

void sub_22CFB7F00()
{
  v1 = v0;
  v2 = sub_22D01436C();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A50, &qword_22D019718);
  v6 = *v0;
  v7 = sub_22D016D1C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v36 = v1;
    v37 = v6 + 64;
    if (v8 != v6 || v9 >= &v10[8 * v11])
    {
      memmove(v9, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = v43 + 32;
    v39 = v43 + 16;
    v40 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v42;
        v23 = v43;
        v24 = *(v43 + 72) * v21;
        v25 = v41;
        (*(v43 + 16))(v41, *(v6 + 48) + v24, v42);
        v26 = *(v6 + 56);
        v27 = 32 * v21;
        v28 = (v26 + 32 * v21);
        v29 = *v28;
        v30 = *(v28 + 1);
        v45 = v28[16];
        v46 = v29;
        v31 = *(v28 + 3);
        v32 = v44;
        (*(v23 + 32))(*(v44 + 48) + v24, v25, v22);
        v33 = *(v32 + 56) + v27;
        v6 = v40;
        v34 = v45;
        *v33 = v46;
        *(v33 + 8) = v30;
        *(v33 + 16) = v34;
        *(v33 + 24) = v31;

        v16 = v47;
      }

      while (v47);
    }

    v19 = v12;
    v8 = v44;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v36;
        goto LABEL_18;
      }

      v20 = *(v37 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_22CFB81B0()
{
  v1 = v0;
  v2 = type metadata accessor for TaskScheduler.Task(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3180, &unk_22D01B0E8);
  v5 = *v0;
  v6 = sub_22D016D1C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = *(*(v5 + 48) + 8 * v21);
        v23 = v27;
        v24 = *(v28 + 72) * v21;
        sub_22CF28C98(*(v5 + 56) + v24, v27, type metadata accessor for TaskScheduler.Task);
        v25 = v29;
        *(*(v29 + 48) + 8 * v21) = v22;
        sub_22CEF0B08(v23, *(v25 + 56) + v24, type metadata accessor for TaskScheduler.Task);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v26;
        v7 = v29;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_22CFB83E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31F8, &qword_22D01B198);
  v2 = *v0;
  v3 = sub_22D016D1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        sub_22CEEC970(v22, *(&v22 + 1));
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_22CFB856C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22D016D1C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_22CFB86CC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22D016D1C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 4 * v19) = *(*(v4 + 48) + 4 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_22CFB8840(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v7);
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_22D016D1C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    v12 = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || v12 >= v9 + 64 + 8 * v14)
    {
      memmove(v12, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }
}

void sub_22CFB8B04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Assertion(0);
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01534C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v49 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A08, &unk_22D0196A0);
  v46 = v4;
  v13 = sub_22D016D2C();
  v14 = v13;
  if (*(v12 + 16))
  {
    v41 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v42 = (v9 + 16);
    v43 = v9;
    v47 = (v9 + 32);
    v21 = v13 + 64;
    v44 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v48 = *(v9 + 72);
      v28 = v27 + v48 * v26;
      if (v46)
      {
        (*v47)(v49, v28, v8);
        v29 = *(v12 + 56);
        v30 = *(v45 + 72);
        sub_22CEF0B08(v29 + v30 * v26, v50, type metadata accessor for Assertion);
      }

      else
      {
        (*v42)(v49, v28, v8);
        v31 = *(v12 + 56);
        v30 = *(v45 + 72);
        sub_22CF28C98(v31 + v30 * v26, v50, type metadata accessor for Assertion);
      }

      sub_22CEF57B4(qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
      v32 = sub_22D01661C();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v47)((*(v14 + 48) + v48 * v22), v49, v8);
      sub_22CEF0B08(v50, *(v14 + 56) + v30 * v22, type metadata accessor for Assertion);
      ++*(v14 + 16);
      v9 = v43;
      v12 = v44;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v12 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
}

void sub_22CFB8FA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22D01534C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31A8, &unk_22D01B118);
  v46 = v4;
  v11 = sub_22D016D2C();
  v12 = v11;
  if (*(v10 + 16))
  {
    v51 = v9;
    v42 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v43 = (v6 + 16);
    v44 = v10;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = v11 + 64;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v45 + 72);
      v28 = v27 + v50 * v26;
      if (v46)
      {
        (*v47)(v51, v28, v5);
        v29 = (*(v10 + 56) + 16 * v26);
        v30 = *v29;
        v48 = v29[1];
        v49 = v30;
      }

      else
      {
        (*v43)(v51, v28, v5);
        v31 = (*(v10 + 56) + 16 * v26);
        v32 = *v31;
        v48 = v31[1];
        v49 = v32;
      }

      sub_22CEF57B4(qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
      v33 = sub_22D01661C();
      v34 = -1 << *(v12 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v19 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v19 + 8 * v36);
          if (v40 != -1)
          {
            v20 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v35) & ~*(v19 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v47)((*(v12 + 48) + v50 * v20), v51, v5);
      v21 = (*(v12 + 56) + 16 * v20);
      v22 = v48;
      *v21 = v49;
      v21[1] = v22;
      ++*(v12 + 16);
      v10 = v44;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v17 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v14, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_22CFB938C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A38, &unk_22D0196F0);
  v35 = v4;
  v6 = sub_22D016D2C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_22D016EAC();
      sub_22D0166DC();
      v25 = sub_22D016ECC();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_22CFB962C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
  v38 = v4;
  v6 = sub_22D016D2C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_22D016EAC();
      sub_22D0166DC();
      v28 = sub_22D016ECC();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_22CFB98EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2620, &qword_22D01B1E0);
  v35 = v4;
  v6 = sub_22D016D2C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_22D016EAC();
      sub_22D0166DC();
      v25 = sub_22D016ECC();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_22CFB9BA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v55 = sub_22D01430C();
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v6);
  v54 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D0157AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v56 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3228, &qword_22D01B1C8);
  v50 = v4;
  v13 = sub_22D016D2C();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = v9;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v46 = (v16 + 16);
    v47 = v16;
    v44 = v2;
    v45 = v5 + 16;
    v48 = v12;
    v49 = v5;
    v51 = (v5 + 32);
    v52 = (v16 + 32);
    v22 = v13 + 64;
    v23 = v16;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v15 << 6);
      v29 = *(v12 + 48);
      v53 = *(v23 + 72);
      v30 = v29 + v53 * v28;
      if (v50)
      {
        (*v52)(v56, v30, v8);
        v31 = *(v12 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 32))(v54, v31 + v32 * v28, v55);
      }

      else
      {
        (*v46)(v56, v30, v8);
        v33 = *(v12 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 16))(v54, v33 + v32 * v28, v55);
      }

      sub_22CEF57B4(&qword_27D9F3230, MEMORY[0x277D4D708], MEMORY[0x277D4D710]);
      v34 = sub_22D01661C();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v52)((*(v14 + 48) + v53 * v24), v56, v8);
      (*v51)(*(v14 + 56) + v32 * v24, v54, v55);
      ++*(v14 + 16);
      v23 = v47;
      v12 = v48;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v21)
      {
        break;
      }

      v27 = v17[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
}

void sub_22CFBA048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3188, &qword_22D01B0F8);
  v35 = v4;
  v6 = sub_22D016D2C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_22D016EAC();
      sub_22D0166DC();
      v25 = sub_22D016ECC();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_22CFBA2E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
  v34 = v4;
  v6 = sub_22D016D2C();
  v7 = v6;
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
    v14 = v6 + 64;
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
      if (v34)
      {
        sub_22CF1D288(v24, v35);
      }

      else
      {
        sub_22CEEE3E8(v24, v35);
      }

      sub_22D016EAC();
      sub_22D0166DC();
      v25 = sub_22D016ECC();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_22CF1D288(v35, (*(v7 + 56) + 32 * v15));
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_22CFBA5A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3218, &qword_22D01B1B8);
  v6 = sub_22D016D2C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = sub_22D016E9C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_22CFBA810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3260, &qword_22D01B200);
  v35 = v4;
  v6 = sub_22D016D2C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_22D016EAC();
      sub_22D0166DC();
      v25 = sub_22D016ECC();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_22CFBAAB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31E0, &qword_22D01B180);
  v6 = sub_22D016D2C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_22CEF44D4(v21, v32);
      }

      else
      {
        sub_22CEE3A84(v21, v32);
      }

      v22 = MEMORY[0x2318C5FF0](*(v7 + 40), v20, 4);
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      sub_22CEF44D4(v32, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_22CFBAD3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22D01534C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v51 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v46 = &v41 - v11;
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31D8, &unk_22D01B170);
  v47 = v4;
  v52 = sub_22D016D2C();
  if (*(v12 + 16))
  {
    v42 = v2;
    v13 = 0;
    v14 = (v12 + 64);
    v15 = 1 << *(v12 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v12 + 64);
    v18 = (v15 + 63) >> 6;
    v43 = (v6 + 16);
    v44 = v12;
    v45 = v6;
    v48 = (v6 + 32);
    v19 = v52 + 64;
    while (v17)
    {
      v24 = __clz(__rbit64(v17));
      v50 = (v17 - 1) & v17;
LABEL_15:
      v27 = *(v12 + 48);
      v49 = *(v45 + 72);
      v28 = v49 * (v24 | (v13 << 6));
      if (v47)
      {
        v29 = *v48;
        v30 = v46;
        (*v48)(v46, v27 + v28, v5);
      }

      else
      {
        v29 = *v43;
        v30 = v46;
        (*v43)(v46, v27 + v28, v5);
      }

      v29(v51, *(v12 + 56) + v28, v5);
      v31 = v52;
      sub_22CEF57B4(qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
      v32 = sub_22D01661C();
      v33 = -1 << *(v31 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = v52;
      v22 = v49 * v20;
      v23 = *v48;
      (*v48)((*(v52 + 48) + v49 * v20), v30, v5);
      v23((*(v21 + 56) + v22), v51, v5);
      ++*(v21 + 16);
      v12 = v44;
      v17 = v50;
    }

    v25 = v13;
    while (1)
    {
      v13 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v26 = v14[v13];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v50 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v12 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v52;
}

void sub_22CFBB1D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01436C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v49 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3200, &unk_22D01B1A0);
  v46 = v4;
  v13 = sub_22D016D2C();
  v14 = v13;
  if (*(v12 + 16))
  {
    v41 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v42 = (v9 + 16);
    v43 = v9;
    v47 = (v9 + 32);
    v21 = v13 + 64;
    v44 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v48 = *(v9 + 72);
      v28 = v27 + v48 * v26;
      if (v46)
      {
        (*v47)(v49, v28, v8);
        v29 = *(v12 + 56);
        v30 = *(v45 + 72);
        sub_22CEF0B08(v29 + v30 * v26, v50, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
      }

      else
      {
        (*v42)(v49, v28, v8);
        v31 = *(v12 + 56);
        v30 = *(v45 + 72);
        sub_22CF28C98(v31 + v30 * v26, v50, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
      }

      sub_22CEF57B4(&qword_28143F710, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v32 = sub_22D01661C();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v47)((*(v14 + 48) + v48 * v22), v49, v8);
      sub_22CEF0B08(v50, *(v14 + 56) + v30 * v22, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
      ++*(v14 + 16);
      v9 = v43;
      v12 = v44;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v12 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
}

void sub_22CFBB678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22D01436C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A50, &qword_22D019718);
  v49 = v4;
  v10 = sub_22D016D2C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v56 = v5;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v45 = v2;
    v46 = (v6 + 16);
    v47 = v9;
    v48 = v6;
    v51 = (v6 + 32);
    v18 = v10 + 64;
    v19 = v50;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v24 = (v16 - 1) & v16;
LABEL_15:
      v27 = v23 | (v12 << 6);
      v28 = *(v9 + 48) + *(v48 + 72) * v27;
      v54 = *(v48 + 72);
      v55 = v24;
      if (v49)
      {
        (*v51)(v19, v28, v56);
        v29 = (*(v9 + 56) + 32 * v27);
        v30 = *v29;
        v31 = *(v29 + 1);
        v52 = v29[16];
        v53 = v30;
        v32 = *(v29 + 3);
      }

      else
      {
        (*v46)(v19, v28, v56);
        v33 = (*(v9 + 56) + 32 * v27);
        v34 = *v33;
        v31 = *(v33 + 1);
        v52 = v33[16];
        v53 = v34;
        v32 = *(v33 + 3);
      }

      sub_22CEF57B4(&qword_28143F710, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v35 = sub_22D01661C();
      v36 = -1 << *(v11 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v18 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v19 = v50;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v18 + 8 * v38);
          if (v42 != -1)
          {
            v20 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v37) & ~*(v18 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v19 = v50;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v51)((*(v11 + 48) + v54 * v20), v19, v56);
      v21 = *(v11 + 56) + 32 * v20;
      v22 = v52;
      *v21 = v53;
      *(v21 + 8) = v31;
      *(v21 + 16) = v22;
      *(v21 + 24) = v32;
      ++*(v11 + 16);
      v9 = v47;
      v16 = v55;
    }

    v25 = v12;
    while (1)
    {
      v12 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v26 = v13[v12];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v9 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v13, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v43;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_22CFBBA98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TaskScheduler.Task(0);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3180, &unk_22D01B0E8);
  v39 = v4;
  v10 = sub_22D016D2C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v37 = v3;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(v38 + 72);
      v26 = *(v9 + 56) + v25 * v23;
      if (v39)
      {
        sub_22CEF0B08(v26, v8, type metadata accessor for TaskScheduler.Task);
      }

      else
      {
        sub_22CF28C98(v26, v8, type metadata accessor for TaskScheduler.Task);
      }

      v27 = sub_22D016E9C();
      v28 = -1 << *(v11 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      sub_22CEF0B08(v8, *(v11 + 56) + v25 * v19, type metadata accessor for TaskScheduler.Task);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero((v9 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_22CFBBDE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = sub_22D016D2C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      sub_22D016EAC();
      sub_22D0166DC();
      v27 = sub_22D016ECC();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_22CFBC080(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = sub_22D016D2C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v34 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 4 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v23;
      }

      v25 = MEMORY[0x2318C5FF0](*(v9 + 40), v22, 4);
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 4 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
}

void sub_22CFBC30C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v52 = a3(0);
  v10 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v11);
  v51 = &v44 - v12;
  v13 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v49 = v9;
  v14 = sub_22D016D2C();
  v15 = v14;
  if (*(v13 + 16))
  {
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v45 = v5;
    v46 = (v10 + 16);
    v47 = v13;
    v48 = v10;
    v50 = (v10 + 32);
    v22 = v14 + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v48 + 72);
      v34 = v29 + v33 * v28;
      if (v49)
      {
        (*v50)(v51, v34, v52);
      }

      else
      {
        (*v46)(v51, v34, v52);
      }

      sub_22D016EAC();
      sub_22D0166DC();
      v35 = sub_22D016ECC();
      v36 = -1 << *(v15 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v23 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      (*v50)((*(v15 + 56) + v33 * v23), v51, v52);
      ++*(v15 + 16);
      v13 = v47;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v8 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v13 + 32);
    v8 = v45;
    if (v43 >= 64)
    {
      bzero(v17, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v43;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v8 = v15;
}

uint64_t sub_22CFBC690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_22CFB606C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CFB635C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_22D01534C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Assertion(0);
    v20 = *(v13 - 8);
    sub_22CEF0B08(v12 + *(v20 + 72) * v7, a2, type metadata accessor for Assertion);
    sub_22CFBCCD0(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Assertion(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_22CFBC82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_22CEFF728(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CFB6960();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_22D0149AC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_22D014EFC();
    v20 = *(v13 - 8);
    sub_22CEF0B08(v12 + *(v20 + 72) * v7, a2, MEMORY[0x277CB9790]);
    sub_22CFBD014(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_22D014EFC();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_22CFBC9C8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22CEF098C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22CFB7474();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_22CFBD6C0(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_22CFBCA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22CEEC698(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CF28A08(type metadata accessor for XPCInputBudgetManager.Budget, &qword_27D9F2A20, &qword_22D0196C0, type metadata accessor for XPCInputBudgetManager.Budget);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for XPCInputBudgetManager.Budget(0);
    v19 = *(v12 - 8);
    sub_22CEF0B08(v11 + *(v19 + 72) * v8, a3, type metadata accessor for XPCInputBudgetManager.Budget);
    sub_22CF28D18(v8, v10, type metadata accessor for XPCInputBudgetManager.Budget);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for XPCInputBudgetManager.Budget(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_22CFBCC08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_22CEEC698(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CFB83E8();
      v10 = v12;
    }

    *a3 = *(*(v10 + 56) + 16 * v8);
    sub_22CFBE014(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_22D01AFB0;
  }

  return result;
}

unint64_t sub_22CFBCCD0(int64_t a1, uint64_t a2)
{
  v4 = sub_22D01534C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_22D016AFC();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v4);
      sub_22CEF57B4(qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
      v23 = sub_22D01661C();
      result = (*v38)(v9, v4);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(type metadata accessor for Assertion(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22CFBD014(int64_t a1, uint64_t a2)
{
  v4 = sub_22D0149AC();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_22D016AFC();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v4);
      sub_22CEF57B4(&qword_28143F6B0, MEMORY[0x277CB9500], MEMORY[0x277CB9510]);
      v23 = sub_22D01661C();
      result = (*v38)(v9, v4);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(sub_22D014EFC() - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CFBD358(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      sub_22D016EAC();

      sub_22D0166DC();
      v9 = sub_22D016ECC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CFBD50C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      sub_22D016EAC();

      sub_22D0166DC();
      v9 = sub_22D016ECC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 4 * v3);
        v16 = (v14 + 4 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CFBD6C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_22D016E9C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CFBD830(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 4 * v6);
      result = MEMORY[0x2318C5FF0](*(a2 + 40), *v12, 4);
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 4 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22CFBD9B0(int64_t a1, uint64_t a2)
{
  v4 = sub_22D01436C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_22D016AFC();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v4);
      sub_22CEF57B4(&qword_28143F710, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_22D01661C();
      result = (*v38)(v9, v4);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22CFBDCF4(int64_t a1, uint64_t a2)
{
  v42 = sub_22D01436C();
  v4 = *(v42 - 8);
  result = MEMORY[0x28223BE20](v42, v5);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v43 = v7;
    v13 = sub_22D016AFC();
    v14 = v42;
    v7 = v43;
    v15 = v12;
    v40 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v38 = a2 + 64;
    v39 = v17;
    v18 = *(v16 + 56);
    v37 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v41;
      v22 = v15;
      v23 = v16;
      v39(v41, *(v7 + 48) + v18 * v11, v14);
      sub_22CEF57B4(&qword_28143F710, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v24 = sub_22D01661C();
      result = (*v37)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v7 = v43;
          v28 = *(v43 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v43;
            v18 = v19;
            v15 = v22;
            v9 = v38;
          }

          else
          {
            v9 = v38;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v43;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v38;
      v18 = v19;
      v7 = v43;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v7 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v35;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_22CFBE014(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      sub_22D016EAC();

      sub_22D0166DC();
      v9 = sub_22D016ECC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CFBE1C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x2318C5FF0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22CFBE338(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CEEC698(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Activity(0);
      sub_22CF2D7F0(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Activity);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22CF28A08(type metadata accessor for Activity, &qword_27D9F2A28, &qword_22D0196C8, type metadata accessor for Activity);
    goto LABEL_7;
  }

  sub_22CF26B04(v15, a4 & 1, type metadata accessor for Activity, &qword_27D9F2A28, &qword_22D0196C8, type metadata accessor for Activity);
  v21 = sub_22CEEC698(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_22D016E1C();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22CF0C04C(v12, a2, a3, a1, v18, type metadata accessor for Activity, type metadata accessor for Activity);
}

uint64_t sub_22CFBE53C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22D01534C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_22CFB606C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for Assertion(0);
      return sub_22CF2D7F0(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for Assertion);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_22CFB635C();
    goto LABEL_7;
  }

  sub_22CFB8B04(v18, a3 & 1);
  v25 = sub_22CFB606C(a2);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_22CEFF008(v15, v12, a1, v21, MEMORY[0x277D4D450], type metadata accessor for Assertion, type metadata accessor for Assertion);
}

void sub_22CFBE74C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22CEEC698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22CFB938C(v16, a4 & 1);
      v11 = sub_22CEEC698(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_22D016E1C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22CFB6680();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_22CFBE8B0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22CEEC698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22CFB98EC(v16, a4 & 1);
      v11 = sub_22CEEC698(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_22D016E1C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22CFB6C84();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1 & 1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + v11) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_22CFBEA1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CEEC698(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_22CFB8840(MEMORY[0x277CB9590], &qword_27D9F3248, &qword_22D01B1D8);
      goto LABEL_7;
    }

    sub_22CFBC30C(v15, a4 & 1, MEMORY[0x277CB9590], &qword_27D9F3248, &qword_22D01B1D8);
    v25 = sub_22CEEC698(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_22D016E1C();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22D014AFC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_22CFC02C4(v12, a2, a3, a1, v18, MEMORY[0x277CB9590]);
}

void sub_22CFBEBF8(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22CEEC698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22CFBA048(v16, a4 & 1);
      v11 = sub_22CEEC698(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_22D016E1C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22CFB7154();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 4 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_22CFBED84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22CEF098C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_22CFBA5A0(v14, a3 & 1);
      v9 = sub_22CEF098C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_22D016E1C();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_22CFB7474();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_22CFBEED0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22CEEC698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22CFBA810(v16, a4 & 1);
      v11 = sub_22CEEC698(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22D016E1C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22CFB75D0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_22CFBF04C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22D01534C();
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_22CFB606C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22CFB78C4();
      goto LABEL_9;
    }

    sub_22CFBAD3C(v17, a3 & 1);
    v20 = sub_22CFB606C(a2);
    if ((v18 & 1) == (v21 & 1))
    {
      v14 = v20;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

LABEL_9:
  v22 = *v4;
  if (v18)
  {
    v23 = *(v27 + 40);
    v24 = v22[7] + *(v27 + 72) * v14;

    return v23(v24, a1, v8);
  }

  else
  {
    (*(v27 + 16))(v11, a2, v8);
    return sub_22CFC01D0(v14, v11, a1, v22);
  }
}

void sub_22CFBF244(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CEEC698(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_22CFB8840(MEMORY[0x277CB9448], &qword_27D9F31A0, &qword_22D01B110);
      goto LABEL_7;
    }

    sub_22CFBC30C(v15, a4 & 1, MEMORY[0x277CB9448], &qword_27D9F31A0, &qword_22D01B110);
    v25 = sub_22CEEC698(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_22D016E1C();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22D01490C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_22CFC02C4(v12, a2, a3, a1, v18, MEMORY[0x277CB9448]);
}

void sub_22CFBF420(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CEEC698(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_22CFB8840(MEMORY[0x277CC9578], &qword_27D9F31B0, &qword_22D01B128);
      goto LABEL_7;
    }

    sub_22CFBC30C(v15, a4 & 1, MEMORY[0x277CC9578], &qword_27D9F31B0, &qword_22D01B128);
    v25 = sub_22CEEC698(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_22D016E1C();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22D01430C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_22CFC02C4(v12, a2, a3, a1, v18, MEMORY[0x277CC9578]);
}

void sub_22CFBF5FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CEEC698(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
      sub_22CF2D7F0(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22CF28A08(type metadata accessor for XPCInputParticipant.ActivityUpdate, &qword_27D9F2A10, &qword_22D0196B0, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    goto LABEL_7;
  }

  sub_22CF26B04(v15, a4 & 1, type metadata accessor for XPCInputParticipant.ActivityUpdate, &qword_27D9F2A10, &qword_22D0196B0, type metadata accessor for XPCInputParticipant.ActivityUpdate);
  v21 = sub_22CEEC698(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_22D016E1C();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22CF0C04C(v12, a2, a3, a1, v18, type metadata accessor for XPCInputParticipant.ActivityUpdate, type metadata accessor for XPCInputParticipant.ActivityUpdate);
}

void sub_22CFBF800(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CEEC698(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for XPCInputBudgetManager.Budget(0);
      sub_22CF2D7F0(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for XPCInputBudgetManager.Budget);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22CF28A08(type metadata accessor for XPCInputBudgetManager.Budget, &qword_27D9F2A20, &qword_22D0196C0, type metadata accessor for XPCInputBudgetManager.Budget);
    goto LABEL_7;
  }

  sub_22CF26B04(v15, a4 & 1, type metadata accessor for XPCInputBudgetManager.Budget, &qword_27D9F2A20, &qword_22D0196C0, type metadata accessor for XPCInputBudgetManager.Budget);
  v21 = sub_22CEEC698(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_22D016E1C();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22CF0C04C(v12, a2, a3, a1, v18, type metadata accessor for XPCInputBudgetManager.Budget, type metadata accessor for XPCInputBudgetManager.Budget);
}

void sub_22CFBFA18(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22CEEC698(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22CFB72D0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22CFBA2E8(v16, a4 & 1);
    v11 = sub_22CEEC698(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_22D016E1C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    sub_22CF1D288(a1, v22);
  }

  else
  {
    sub_22CFC0378(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_22CFBFB68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22D01436C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_22CEF5CD8(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
      return sub_22CF2D7F0(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_22CFB7BDC();
    goto LABEL_7;
  }

  sub_22CFBB1D8(v18, a3 & 1);
  v25 = sub_22CEF5CD8(a2);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_22CEFF008(v15, v12, a1, v21, MEMORY[0x277CC95F0], type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
}

uint64_t sub_22CFBFD78(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v30 = a1;
  v31 = a3;
  v32 = a2;
  v11 = sub_22D01436C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_22CEF5CD8(a5);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      sub_22CFB7F00();
      goto LABEL_9;
    }

    sub_22CFBB678(v21, a6 & 1);
    v24 = sub_22CEF5CD8(a5);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v32;
  v27 = *v7;
  if (v22)
  {
    v28 = v27[7] + 32 * v18;
    *v28 = v30 & 1;
    *(v28 + 8) = v26;
    *(v28 + 16) = v31 & 1;
    *(v28 + 24) = a4;
  }

  else
  {
    (*(v12 + 16))(v15, a5, v11);
    return sub_22CFC03E4(v18, v15, v30 & 1, v26, v31 & 1, a4, v27);
  }
}

uint64_t sub_22CFBFF8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22CEF098C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for TaskScheduler.Task(0);
      return sub_22CF2D7F0(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for TaskScheduler.Task);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_22CFB81B0();
    goto LABEL_7;
  }

  sub_22CFBBA98(v13, a3 & 1);
  v20 = sub_22CEF098C(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_22CFC04C0(v10, a2, a1, v16);
}

unint64_t sub_22CFC0188(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_22CFC01D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22D01534C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_22CFC02C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

_OWORD *sub_22CFC0378(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22CF1D288(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_22CFC03E4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = sub_22D01436C();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = a7[7] + 32 * a1;
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_22CFC04C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for TaskScheduler.Task(0);
  result = sub_22CEF0B08(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for TaskScheduler.Task);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_22CFC0568(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_22CFC05B8()
{
  result = qword_28143D8E8;
  if (!qword_28143D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143D8E8);
  }

  return result;
}

uint64_t sub_22CFC060C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = type metadata accessor for AssertionServiceClient();
  v28 = v8;
  v29 = &off_28402E888;
  *&v27 = a1;
  v9 = *a4;
  v11 = sub_22CEE637C(a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      return sub_22CEF44D4(&v27, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_22CFB7740();
    goto LABEL_7;
  }

  sub_22CFBAAB8(v14, a3 & 1);
  v20 = sub_22CEE637C(a2);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v27, v8);
  MEMORY[0x28223BE20](v22, v22);
  v24 = (&v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  sub_22CFC07EC(v11, a2, *v24, v17);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v27);
}

uint64_t sub_22CFC07EC(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  v13 = type metadata accessor for AssertionServiceClient();
  v14 = &off_28402E888;
  *&v12 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = sub_22CEF44D4(&v12, a4[7] + 40 * a1);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

void *sub_22CFC08E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v48 = a5;
  ObjectType = a6;
  v46 = a1;
  v47 = a4;
  v44 = a2;
  v45 = a3;
  v51 = *v6;
  v50 = sub_22D01697C();
  v43 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D01691C();
  MEMORY[0x28223BE20](v11, v12);
  v13 = sub_22D01653C();
  MEMORY[0x28223BE20](v13 - 8, v14);
  type metadata accessor for UnfairLock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *(v15 + 16) = v16;
  *v16 = 0;
  v17 = MEMORY[0x277D84F98];
  v6[2] = v15;
  v6[3] = v17;
  v6[4] = 0;
  v18 = sub_22CEEC38C();
  v42 = "";
  sub_22D0164EC();
  aBlock = MEMORY[0x277D84F90];
  sub_22CEF57B4(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v43 + 104))(v10, *MEMORY[0x277D85260], v50);
  v20 = v44;
  v19 = v45;
  v50 = v18;
  v6[11] = sub_22D0169BC();
  v6[12] = 0;
  v22 = v46;
  v21 = v47;
  v6[5] = v46;
  v6[6] = v20;
  v6[7] = v19;
  v6[8] = v21;
  v6[9] = v48;
  v6[10] = ObjectType;
  if (v22)
  {
    ObjectType = swift_getObjectType();
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v25 = v51;
    *(v24 + 16) = v23;
    *(v24 + 24) = v25;
    v26 = *(v20 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v26(sub_22CFC0F14, v24, ObjectType, v20);

    v27 = v25;
    if (!v7[7])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v27 = v51;
  if (v19)
  {
LABEL_3:
    v28 = v7[8];
    v29 = swift_getObjectType();
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v27;
    v32 = *(v28 + 16);
    swift_unknownObjectRetain();

    v32(sub_22CFC0F5C, v31, v29, v28);
    swift_unknownObjectRelease();
  }

LABEL_4:
  if (v7[9])
  {
    v33 = v7[10];
    v34 = swift_getObjectType();
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = *(v33 + 16);
    swift_unknownObjectRetain();

    v36(sub_22CFC0FA4, v35, v34, v33);
    swift_unknownObjectRelease();
  }

  sub_22CEF0D1C();
  v37 = sub_22D01698C();
  v56 = sub_22CFB4C80;
  v57 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_22CEF2428;
  v55 = &block_descriptor_19;
  v38 = _Block_copy(&aBlock);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v37, v38);
  _Block_release(v38);

  v39 = sub_22D01698C();
  v56 = sub_22CEF2488;
  v57 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_22CEF2428;
  v55 = &block_descriptor_31;
  v40 = _Block_copy(&aBlock);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v39, v40);
  _Block_release(v40);

  return v7;
}

uint64_t sub_22CFC0FAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3270, &unk_22D01B210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_33Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CFC10A8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  sub_22CEEC3D8(v0 + 72, &qword_27D9F3278, &unk_22D01B2C0);

  sub_22CF460CC(v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t sub_22CFC113C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock(v4);
  *(v2 + 128) = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

void sub_22CFC11A4(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v71 = sub_22D01495C();
  v82 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v3);
  v70 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v84 = &v62 - v7;
  v85 = sub_22D01486C();
  v8 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v9);
  v69 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v12 = MEMORY[0x28223BE20](v77, v11);
  v76 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v74 = &v62 - v15;
  v16 = sub_22D01430C();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v62 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v62 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v62 - v31;
  os_unfair_lock_assert_owner(*(*(v2 + 16) + 16));
  swift_beginAccess();
  v33 = *(v2 + 112);

  sub_22D01423C();
  v35 = *(v17 + 16);
  v34 = v17 + 16;
  v63 = v32;
  v35(v29, v32, v16);
  v36 = 1 << *(v33 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v33 + 64);
  v83 = (v36 + 63) >> 6;
  v72 = (v8 + 48);
  v67 = (v8 + 32);
  v66 = (v82 + 1);
  v65 = (v8 + 8);
  v81 = (v34 - 8);
  v82 = (v34 + 16);
  v80 = v33;
  v39 = v33 + 64;

  v40 = 0;
  v75 = v16;
  v73 = v29;
  v78 = v39;
  v79 = v25;
  v68 = v21;
  while (v38)
  {
LABEL_11:
    v45 = __clz(__rbit64(v38)) | (v40 << 6);
    v46 = *(v80 + 56);
    v47 = (*(v80 + 48) + 16 * v45);
    v49 = *v47;
    v48 = v47[1];
    v50 = (type metadata accessor for Activity(0) - 8);
    v51 = v77;
    v52 = v74;
    sub_22CF0CCBC(v46 + *(*v50 + 72) * v45, &v74[*(v77 + 48)], type metadata accessor for Activity);
    *v52 = v49;
    v52[1] = v48;
    v53 = v76;
    sub_22CEEB6DC(v52, v76, &unk_27D9F3840, &unk_22D01A2B0);

    v54 = v53 + *(v51 + 48);
    v55 = v84;
    sub_22CEEB6DC(v54 + v50[17], v84, &qword_27D9F26E0, &unk_22D018F80);
    sub_22CF0F640(v54, type metadata accessor for Activity);
    if ((*v72)(v55, 1, v85) == 1)
    {
      sub_22CEEC3D8(v84, &qword_27D9F26E0, &unk_22D018F80);
      v41 = v79;
      sub_22D01423C();
      v42 = v41;
      sub_22CEEC3D8(v52, &unk_27D9F3840, &unk_22D01A2B0);
      v29 = v73;
      v16 = v75;
      (*v81)(v73, v75);
      v43 = *v82;
    }

    else
    {
      v56 = v69;
      (*v67)(v69, v84, v85);
      v57 = v70;
      sub_22D01484C();
      v58 = v68;
      sub_22D01491C();
      (*v66)(v57, v71);
      sub_22CEF888C(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v29 = v73;
      v16 = v75;
      v59 = sub_22D01663C();
      (*v65)(v56, v85);
      sub_22CEEC3D8(v52, &unk_27D9F3840, &unk_22D01A2B0);
      v60 = v82;
      v61 = *v81;
      if (v59)
      {
        v61(v29, v16);
        v43 = *v60;
        v42 = v79;
        (*v60)(v79, v58, v16);
      }

      else
      {
        v61(v58, v16);
        v43 = *v60;
        v42 = v79;
        (*v60)(v79, v29, v16);
      }
    }

    v39 = v78;
    v38 &= v38 - 1;
    v43(v29, v42, v16);
  }

  while (1)
  {
    v44 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v44 >= v83)
    {
      (*v81)(v63, v16);

      (*v82)(v64, v29, v16);

      return;
    }

    v38 = *(v39 + 8 * v44);
    ++v40;
    if (v38)
    {
      v40 = v44;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22CFC1910(void *a1)
{
  v2 = sub_22D01559C();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D0155CC();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01430C();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - v17;
  swift_beginAccess();
  sub_22CEEB6DC((a1 + 9), &v35, &qword_27D9F3278, &unk_22D01B2C0);
  if (*(&v36 + 1))
  {
    sub_22CEE3A84(&v35, v34);
    sub_22CEEC3D8(&v35, &qword_27D9F3278, &unk_22D01B2C0);
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    sub_22D0163DC();
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else
  {
    sub_22CEEC3D8(&v35, &qword_27D9F3278, &unk_22D01B2C0);
  }

  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  swift_beginAccess();
  sub_22CF1B3B4(&v35, (a1 + 9));
  swift_endAccess();
  sub_22CFC11A4(v18);
  sub_22D01423C();
  v19 = sub_22D01428C();
  v20 = *(v11 + 8);
  v20(v15, v10);
  if (v19)
  {
    (*(v11 + 16))(v15, v18, v10);
    (*(v30 + 104))(v5, *MEMORY[0x277D4D518], v31);
    sub_22D01558C();
    __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
    swift_allocObject();
    swift_weakInit();

    sub_22D0155DC();

    (*(v32 + 8))(v9, v33);
    v20(v18, v10);

    sub_22CEF44D4(&v35, v34);
    swift_beginAccess();
    sub_22CF1B3B4(v34, (a1 + 9));
    return swift_endAccess();
  }

  else
  {
    if (qword_28143FB38 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_281444450);
    v23 = sub_22D01636C();
    v24 = sub_22D01690C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v10;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22CEE1000, v23, v24, "No more zombies awaiting dismissal", v26, 2u);
      MEMORY[0x2318C6860](v26, -1, -1);

      v27 = v18;
      v28 = v25;
    }

    else
    {

      v27 = v18;
      v28 = v10;
    }

    return (v20)(v27, v28);
  }
}

double sub_22CFC1E24(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(*(Strong + 16) + 16);
    v4 = Strong;
    os_unfair_lock_lock(v3);
    sub_22CFC1EB8(v4);
    os_unfair_lock_unlock(v3);
    v5 = *(v4[2] + 16);
    os_unfair_lock_lock(v5);
    sub_22CFC1910(v4);
    os_unfair_lock_unlock(v5);
  }

  return result;
}

void sub_22CFC1EB8(uint64_t a1)
{
  v2 = type metadata accessor for Activity(0);
  v50 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4, v7);
  v49 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = (&v46 - v15);
  v54 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v17 = *(a1 + 112);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(a1 + 112) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v51 = *(a1 + 112);
  v52 = a1;

  v25 = 0;
  v47 = v13;
  v48 = v6;
  v46 = v16;
  while (v23)
  {
    v26 = v25;
LABEL_15:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = v29 | (v26 << 6);
    v31 = (*(v51 + 48) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    v34 = v49;
    sub_22CF0CCBC(*(v51 + 56) + *(v50 + 72) * v30, v49, type metadata accessor for Activity);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    v36 = *(v35 + 48);
    v13 = v47;
    *v47 = v33;
    *(v13 + 1) = v32;
    sub_22CF0A72C(v34, &v13[v36], type metadata accessor for Activity);
    (*(*(v35 - 8) + 56))(v13, 0, 1, v35);

    v28 = v26;
    v6 = v48;
    v16 = v46;
LABEL_16:
    sub_22CF82724(v13, v16);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    if ((*(*(v37 - 8) + 48))(v16, 1, v37) == 1)
    {

      v42 = v52;
      MEMORY[0x28223BE20](v41, v43);
      *(&v46 - 2) = &v54;

      v45 = sub_22CFC3D3C(v44, sub_22CFC3A80);

      *(v42 + 112) = v45;

      return;
    }

    v38 = *v16;
    v39 = v16[1];
    sub_22CF0A72C(v16 + *(v37 + 48), v6, type metadata accessor for Activity);
    if (sub_22CFC2374(v6))
    {
      sub_22CEE54CC(&v53, v38, v39);

      sub_22CF0F640(v6, type metadata accessor for Activity);
    }

    else
    {
      sub_22CF0F640(v6, type metadata accessor for Activity);
    }

    v25 = v28;
  }

  if (v24 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  else
  {
    v27 = v24;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      (*(*(v40 - 8) + 56))(v13, 1, 1, v40);
      v23 = 0;
      goto LABEL_16;
    }

    v23 = *(v19 + 8 * v26);
    ++v25;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_22CFC2374(uint64_t *a1)
{
  v2 = v1;
  v162 = a1;
  v144 = sub_22D0164CC();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v3);
  v141 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_22D01653C();
  v140 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v5);
  v139 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for ActivityParticipantEvent(0);
  v134 = *(v133 - 8);
  v8 = MEMORY[0x28223BE20](v133, v7);
  v136 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v138 = &v129 - v11;
  v12 = sub_22D01495C();
  v147 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v149 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D01430C();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v146 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v151 = &v129 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v154 = &v129 - v24;
  v25 = sub_22D01486C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22D01483C();
  v159 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Activity(0);
  v35 = MEMORY[0x28223BE20](v158, v34);
  v150 = (&v129 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x28223BE20](v35, v37);
  v145 = (&v129 - v39);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v131 = (&v129 - v42);
  MEMORY[0x28223BE20](v41, v43);
  v45 = (&v129 - v44);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v160 = v26;
    v161 = v25;
    v137 = v2;
    v132 = *(v2 + 128);
    if (qword_28143FB38 != -1)
    {
      swift_once();
    }

    v46 = sub_22D01637C();
    v47 = __swift_project_value_buffer(v46, qword_281444450);
    v48 = v162;
    sub_22CF0CCBC(v162, v45, type metadata accessor for Activity);
    v156 = v47;
    v49 = sub_22D01636C();
    v50 = sub_22D01690C();
    v51 = os_log_type_enabled(v49, v50);
    v155 = v29;
    v148 = v12;
    if (v51)
    {
      v52 = swift_slowAlloc();
      v152 = v16;
      v53 = v52;
      v54 = swift_slowAlloc();
      v153 = v15;
      v55 = v54;
      aBlock[0] = v54;
      *v53 = 136446210;
      v56 = v33;
      v57 = v30;
      v58 = *v45;
      v59 = v45[1];

      sub_22CF0F640(v45, type metadata accessor for Activity);
      v60 = v58;
      v33 = v56;
      v48 = v162;
      v61 = sub_22CEEE31C(v60, v59, aBlock);
      v30 = v57;

      *(v53 + 4) = v61;
      _os_log_impl(&dword_22CEE1000, v49, v50, "Dismissing zombie activity: %{public}s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      v62 = v55;
      v15 = v153;
      MEMORY[0x2318C6860](v62, -1, -1);
      v63 = v53;
      v16 = v152;
      MEMORY[0x2318C6860](v63, -1, -1);
    }

    else
    {

      sub_22CF0F640(v45, type metadata accessor for Activity);
    }

    v65 = v160;
    v64 = v161;
    v66 = v158;
    v67 = *(v48 + *(v158 + 36));
    if (*(v67 + 16))
    {
      v68 = *(v159 + 16);
      v68(v33, v67 + ((*(v159 + 80) + 32) & ~*(v159 + 80)), v30);
      v69 = v48 + *(v66 + 60);
      v70 = v154;
      sub_22CEEB6DC(v69, v154, &qword_27D9F26E0, &unk_22D018F80);
      if ((*(v65 + 48))(v70, 1, v64) == 1)
      {
        sub_22CEEC3D8(v70, &qword_27D9F26E0, &unk_22D018F80);
        v71 = v145;
        sub_22CF0CCBC(v48, v145, type metadata accessor for Activity);
        v72 = sub_22D01636C();
        v73 = sub_22D01690C();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          aBlock[0] = v75;
          *v74 = 136446210;
          v76 = *v71;
          v77 = v71[1];

          sub_22CF0F640(v71, type metadata accessor for Activity);
          v78 = sub_22CEEE31C(v76, v77, aBlock);

          *(v74 + 4) = v78;
          _os_log_impl(&dword_22CEE1000, v72, v73, "Activity is not a zombie: %{public}s", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          MEMORY[0x2318C6860](v75, -1, -1);
          MEMORY[0x2318C6860](v74, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          sub_22CF0F640(v71, type metadata accessor for Activity);
        }

        (*(v159 + 8))(v33, v30);
        return 0;
      }

      v162 = v33;
      (*(v65 + 32))(v155, v70, v64);
      v87 = v149;
      sub_22D01484C();
      v88 = v151;
      sub_22D01491C();
      (*(v147 + 8))(v87, v148);
      v89 = v146;
      sub_22D0142DC();
      v90 = sub_22D01428C();
      v92 = *(v16 + 8);
      v91 = v16 + 8;
      v93 = v89;
      v94 = v92;
      v92(v93, v15);
      if ((v90 & 1) == 0)
      {
        v120 = v48;
        v121 = v131;
        sub_22CF0CCBC(v120, v131, type metadata accessor for Activity);
        v122 = sub_22D01636C();
        v123 = sub_22D01690C();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          aBlock[0] = v125;
          *v124 = 136446210;
          v152 = v91;
          v153 = v15;
          v126 = *v121;
          v127 = v121[1];

          sub_22CF0F640(v121, type metadata accessor for Activity);
          v128 = sub_22CEEE31C(v126, v127, aBlock);

          *(v124 + 4) = v128;
          _os_log_impl(&dword_22CEE1000, v122, v123, "Activity is not yet eligible for dismissal: %{public}s", v124, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v125);
          MEMORY[0x2318C6860](v125, -1, -1);
          MEMORY[0x2318C6860](v124, -1, -1);
          swift_unknownObjectRelease();

          v94(v88, v153);
        }

        else
        {
          swift_unknownObjectRelease();

          sub_22CF0F640(v121, type metadata accessor for Activity);
          v94(v88, v15);
        }

        (*(v160 + 8))(v155, v161);
        (*(v159 + 8))(v162, v30);
        return 0;
      }

      v95 = *v48;
      v96 = v48[1];
      v153 = v15;
      v154 = v95;
      v147 = v96;
      v97 = v158;
      v98 = (v48 + *(v158 + 52));
      v152 = v91;
      v99 = v98[1];
      v150 = *v98;
      v156 = v94;
      v148 = v99;
      v130 = v30;
      v100 = v133;

      sub_22D01494C();
      v101 = v138;
      sub_22D01485C();
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      v68(&v101[v100[7]], v162, v30);
      v102 = v100[9];
      v103 = v159;
      v104 = *(v97 + 56);
      v105 = sub_22D0146BC();
      v106 = *(v105 - 8);
      (*(v106 + 16))(&v101[v102], v48 + v104, v105);
      (*(v106 + 56))(&v101[v102], 0, 1, v105);
      v107 = v147;
      *v101 = v154;
      *(v101 + 1) = v107;
      v108 = v148;
      *(v101 + 2) = v150;
      *(v101 + 3) = v108;
      v109 = &v101[v100[8]];
      v110 = v137;
      *v109 = v137;
      *(v109 + 1) = &off_28402BD78;
      v101[v100[10]] = 0;
      v158 = *(v110 + 64);
      v111 = v136;
      sub_22CF0CCBC(v101, v136, type metadata accessor for ActivityParticipantEvent);
      v112 = (*(v134 + 80) + 32) & ~*(v134 + 80);
      v113 = swift_allocObject();
      v114 = v132;
      *(v113 + 16) = Strong;
      *(v113 + 24) = v114;
      sub_22CF0A72C(v111, v113 + v112, type metadata accessor for ActivityParticipantEvent);
      aBlock[4] = sub_22CFA5C9C;
      aBlock[5] = v113;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22CEF8B58;
      aBlock[3] = &block_descriptor_20;
      v115 = _Block_copy(aBlock);

      swift_unknownObjectRetain();
      v116 = v139;
      sub_22D0164EC();
      v163 = MEMORY[0x277D84F90];
      sub_22CEF888C(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
      sub_22CF0EDA8();
      v117 = v141;
      v118 = v144;
      sub_22D016ADC();
      MEMORY[0x2318C5B10](0, v116, v117, v115);
      _Block_release(v115);
      swift_unknownObjectRelease();
      (*(v143 + 8))(v117, v118);
      (*(v140 + 8))(v116, v142);
      sub_22CF0F640(v101, type metadata accessor for ActivityParticipantEvent);
      v156(v151, v153);
      (*(v160 + 8))(v155, v161);
      (*(v103 + 8))(v162, v130);
    }

    else
    {
      v79 = v150;
      sub_22CF0CCBC(v48, v150, type metadata accessor for Activity);
      v80 = sub_22D01636C();
      v81 = sub_22D0168EC();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        aBlock[0] = v83;
        *v82 = 136446210;
        v84 = *v79;
        v85 = v79[1];

        sub_22CF0F640(v79, type metadata accessor for Activity);
        v86 = sub_22CEEE31C(v84, v85, aBlock);

        *(v82 + 4) = v86;
        _os_log_impl(&dword_22CEE1000, v80, v81, "No content sources exist for dismissed activity: %{public}s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        MEMORY[0x2318C6860](v83, -1, -1);
        MEMORY[0x2318C6860](v82, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        sub_22CF0F640(v79, type metadata accessor for Activity);
      }
    }

    return 1;
  }

  result = sub_22D016CFC();
  __break(1u);
  return result;
}