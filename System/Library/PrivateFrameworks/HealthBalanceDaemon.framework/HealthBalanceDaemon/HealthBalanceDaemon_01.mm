unint64_t sub_2288D1350(void *a1)
{
  v30 = a1;
  v2 = sub_22892F3F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BBFAC(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v27 - v7;
  v8 = *(v1 + 16);
  v9 = [v8 profileExtensionsConformingToProtocol_];
  v10 = MEMORY[0x277D84F70];
  v11 = sub_22892F218();

  if (!*(v11 + 16))
  {

    goto LABEL_7;
  }

  sub_2288B7664(v11 + 32, v39);

  sub_2288D1A38();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_2288D1A9C();
    swift_allocError();
    *v21 = 2;
    swift_willThrow();
    return v10;
  }

  v10 = v38;
  v12 = *(v1 + 112);
  v36 = *(v1 + 96);
  v37[0] = v12;
  *(v37 + 9) = *(v1 + 121);
  v13 = *(v1 + 80);
  v35[0] = *(v1 + 64);
  v35[1] = v13;
  if (*(&v36 + 1))
  {
    v28 = v1;
    v29 = v38;
    v14 = *(v1 + 80);
    v40[0] = *(v1 + 64);
    v40[1] = v14;
    v41 = *(v1 + 96);
    v42 = *(&v36 + 1);
    v15 = *(v1 + 96);
    *v43 = *(v1 + 112);
    *&v43[9] = *(v1 + 121);
    *(v34 + 9) = *(v1 + 121);
    v16 = *(v1 + 112);
    v33[2] = v15;
    v34[0] = v16;
    v33[0] = v40[0];
    v33[1] = v14;
    sub_2288D1AF0(v33, v32);
    v30 = [v30 environmentDataSource];
    sub_2288BC0FC(0, &unk_2813DEC30, 0x277CCD570);
    sub_22892F3D8();
    v17 = objc_allocWithZone(MEMORY[0x277D10718]);
    v18 = sub_22892F098();

    v19 = [v17 initWithCategory:105 domainName:v18 profile:v8];

    (*(v3 + 104))(v5, *MEMORY[0x277D10110], v2);
    sub_22892F3E8();
    (*(v3 + 8))(v5, v2);
    v10 = v44;
    v20 = v31;
    sub_22892F3B8();
    if (!v20)
    {

      v24 = [objc_msgSend(v29 getPregnancyModelProvider)];
      swift_unknownObjectRelease();
      memcpy(v32, (v28 + 144), sizeof(v32));
      v25 = v30;
      v26 = sub_2288D3424(v40, v30, v10, v24, v32);

      sub_2288D3FEC(v35, sub_2288D1B4C);
      sub_2288D40CC(v10, &qword_2813DFEE0, MEMORY[0x277CC9578]);
      v10 = sub_2288DB7D0(v26);
      swift_unknownObjectRelease();

      return v10;
    }

    sub_2288D3FEC(v35, sub_2288D1B4C);
  }

  else
  {
    sub_2288D1A9C();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v10;
}

id sub_2288D1874(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id))
{
  v6 = a3;

  a5(v6);

  v7 = sub_22892EFB8();

  return v7;
}

uint64_t sub_2288D196C()
{

  sub_2288D4128(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  return v0;
}

uint64_t sub_2288D19E0()
{
  sub_2288D196C();

  return swift_deallocClassInstance();
}

unint64_t sub_2288D1A38()
{
  result = qword_27D85B3B0;
  if (!qword_27D85B3B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D85B3B0);
  }

  return result;
}

unint64_t sub_2288D1A9C()
{
  result = qword_27D85B3B8;
  if (!qword_27D85B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85B3B8);
  }

  return result;
}

void sub_2288D1B4C()
{
  if (!qword_2813DFCD0[0])
  {
    v0 = sub_22892F498();
    if (!v1)
    {
      atomic_store(v0, qword_2813DFCD0);
    }
  }
}

uint64_t sub_2288D1B9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2288D3D58((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_2288D1BE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2288D3D58(*(v3 + 56) + 40 * v13, v21);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_2288D3C20(v21, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v24;
      v21[2] = v25;
      v22 = v26;
      v20(v21);
      return sub_2288D3FEC(v21, sub_2288D3DBC);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_2288D1D64(uint64_t *a1, void *a2, void *a3, int a4, void *a5, void *a6, void *a7, int a8, char a9, void *a10, void *a11, void *a12, char a13, void *__src)
{
  v145 = a8;
  v146 = a7;
  v147 = a6;
  v148 = a5;
  v149 = a4;
  v143 = a2;
  v144 = a3;
  v160 = *MEMORY[0x277D85DE8];
  memcpy(v159, __src, sizeof(v159));
  v15 = MEMORY[0x277D84F98];
  v153 = MEMORY[0x277D84F98];
  v16 = a1[1];
  if (v16)
  {
    v17 = *a1;
    v157 = MEMORY[0x277D837D0];
    v158 = MEMORY[0x277D837F8];
    *&v156 = v17;
    *(&v156 + 1) = v16;
    sub_2288D3C20(&v156, v154);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v152 = v15;
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
    MEMORY[0x28223BE20](v19);
    v21 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v21);
    sub_2289066C0(v21, 0xD000000000000016, 0x8000000228933480, isUniquelyReferenced_nonNull_native, &v152, MEMORY[0x277D837D0], MEMORY[0x277D837F8]);
    __swift_destroy_boxed_opaque_existential_0(v154);
    v23 = v152;
  }

  else
  {
    sub_2289055AC(0xD000000000000016, 0x8000000228933480, &v156);
    sub_2288D40CC(&v156, &qword_2813DED60, sub_2288D3BBC);
    v23 = v153;
  }

  v142 = a12;
  v24 = MEMORY[0x277D839B0];
  v25 = MEMORY[0x277D839C8];
  v157 = MEMORY[0x277D839B0];
  v158 = MEMORY[0x277D839C8];
  LOBYTE(v156) = a13 & 1;
  sub_2288D3C20(&v156, v154);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v152 = v23;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
  sub_228906204(*v27, 0xD000000000000020, 0x80000002289334A0, v26, &v152);
  __swift_destroy_boxed_opaque_existential_0(v154);
  v28 = v152;
  v151 = a1;
  v29 = *(a1 + 48);
  v157 = v24;
  v158 = v25;
  LOBYTE(v156) = v29;
  sub_2288D3C20(&v156, v154);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v152 = v28;
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
  sub_228906204(*v31, 0xD000000000000021, 0x80000002289334D0, v30, &v152);
  __swift_destroy_boxed_opaque_existential_0(v154);
  v32 = v152;
  v153 = v152;
  v33 = sub_22892E238();
  v34 = v33;
  if (v33 == 2)
  {
    sub_2289055AC(0xD000000000000014, 0x8000000228933500, &v156);
    sub_2288D40CC(&v156, &qword_2813DED60, sub_2288D3BBC);
    v40 = v153;
  }

  else
  {
    v157 = v24;
    v158 = v25;
    LOBYTE(v156) = v33 & 1;
    sub_2288D3C20(&v156, v154);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v32;
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
    MEMORY[0x28223BE20](v36);
    v38 = &v141 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v38);
    sub_2289066C0(v38, 0xD000000000000014, 0x8000000228933500, v35, &v152, MEMORY[0x277D839B0], v25);
    __swift_destroy_boxed_opaque_existential_0(v154);
    v24 = MEMORY[0x277D839B0];
    v40 = v152;
  }

  v41 = v25;
  v157 = v24;
  v158 = v25;
  LOBYTE(v156) = v34 != 2;
  sub_2288D3C20(&v156, v154);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v152 = v40;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
  sub_228906204(*v43, 0x72616F626E4F7369, 0xEB00000000646564, v42, &v152);
  __swift_destroy_boxed_opaque_existential_0(v154);
  v44 = v152;
  v153 = v152;
  v45 = MEMORY[0x277D83B88];
  if (*(v151 + 72))
  {
    sub_2289055AC(0xD000000000000013, 0x8000000228933520, &v156);
    sub_2288D40CC(&v156, &qword_2813DED60, sub_2288D3BBC);
  }

  else
  {
    v46 = *(v151 + 64);
    v157 = MEMORY[0x277D83B88];
    v158 = MEMORY[0x277D83BA8];
    *&v156 = v46;
    sub_2288D3C20(&v156, v154);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v44;
    v48 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
    MEMORY[0x28223BE20](v48);
    v50 = &v141 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v51 + 16))(v50);
    sub_2289066C0(v50, 0xD000000000000013, 0x8000000228933520, v47, &v152, v45, MEMORY[0x277D83BA8]);
    __swift_destroy_boxed_opaque_existential_0(v154);
    v41 = MEMORY[0x277D839C8];
    v153 = v152;
  }

  v141 = a11;
  v143 = a10;
  v52 = *MEMORY[0x277CCE518];
  *&v156 = 0;
  v53 = [v142 hk:v52 safeNumberIfExistsForKeyPath:&v156 error:a11];
  if (v53)
  {
    v54 = v53;
    v55 = v156;
    v56 = [v54 BOOLValue];

    v157 = v24;
    v158 = v41;
    LOBYTE(v156) = v56;
    sub_2288D3C20(&v156, v154);
    v57 = v153;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v57;
    v59 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
    MEMORY[0x28223BE20](v59);
    v61 = &v141 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v62 + 16))(v61);
    v41 = MEMORY[0x277D839C8];
    sub_2289066C0(v61, 0xD000000000000012, 0x8000000228933540, v58, &v152, v24, MEMORY[0x277D839C8]);
    __swift_destroy_boxed_opaque_existential_0(v154);
    v153 = v152;
  }

  else
  {
    v63 = v156;
    v64 = sub_22892DE38();

    swift_willThrow();
    sub_2289055AC(0xD000000000000012, 0x8000000228933540, &v156);
    sub_2288D40CC(&v156, &qword_2813DED60, sub_2288D3BBC);
    v150 = 0;
  }

  v65 = *MEMORY[0x277CCCD28];
  *&v156 = 0;
  v66 = [v144 hk:v65 safeNumberIfExistsForKeyPath:&v156 error:?];
  if (v66)
  {
    v67 = v66;
    v68 = v156;
    v69 = [v67 &off_278609478];

    v70 = MEMORY[0x277D839B0];
    v157 = MEMORY[0x277D839B0];
    v158 = v41;
    LOBYTE(v156) = v69;
    sub_2288D3C20(&v156, v154);
    v71 = v153;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v71;
    v73 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
    MEMORY[0x28223BE20](v73);
    v75 = &v141 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v76 + 16))(v75);
    v77 = v70;
    sub_2289066C0(v75, 0xD000000000000014, 0x8000000228933560, v72, &v152, v70, v41);
    __swift_destroy_boxed_opaque_existential_0(v154);
    v78 = v152;
    v153 = v152;
  }

  else
  {
    v79 = v156;
    v80 = sub_22892DE38();

    swift_willThrow();
    sub_2289055AC(0xD000000000000014, 0x8000000228933560, &v156);
    sub_2288D40CC(&v156, &qword_2813DED60, sub_2288D3BBC);
    v150 = 0;
    v78 = v153;
    v77 = MEMORY[0x277D839B0];
  }

  v81 = v41;
  v82 = *MEMORY[0x277CCBEA0];
  v83 = [v141 objectForKeyedSubscript_];
  v84 = *MEMORY[0x277CCBF38];
  v85 = [v83 isRequirementSatisfiedWithIdentifier_];

  v157 = v77;
  v158 = v81;
  LOBYTE(v156) = v85;
  sub_2288D3C20(&v156, v154);
  LOBYTE(v83) = swift_isUniquelyReferenced_nonNull_native();
  v152 = v78;
  v86 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
  sub_228906204(*v86, 0xD000000000000012, 0x8000000228933580, v83, &v152);
  __swift_destroy_boxed_opaque_existential_0(v154);
  v87 = v152;
  v88 = [v143 objectForKeyedSubscript_];
  LOBYTE(v84) = [v88 isRequirementSatisfiedWithIdentifier_];

  v157 = v77;
  v158 = v81;
  LOBYTE(v156) = v84;
  sub_2288D3C20(&v156, v154);
  LOBYTE(v88) = swift_isUniquelyReferenced_nonNull_native();
  v152 = v87;
  v89 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
  sub_228906204(*v89, 0xD000000000000018, 0x80000002289335A0, v88, &v152);
  __swift_destroy_boxed_opaque_existential_0(v154);
  v90 = v152;
  v157 = v77;
  v158 = v81;
  LOBYTE(v156) = v145 & 1;
  sub_2288D3C20(&v156, v154);
  LOBYTE(v84) = swift_isUniquelyReferenced_nonNull_native();
  v152 = v90;
  v91 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
  sub_228906204(*v91, 0xD000000000000018, 0x80000002289335C0, v84, &v152);
  __swift_destroy_boxed_opaque_existential_0(v154);
  v92 = v152;
  v153 = v152;
  if (v146)
  {
    v93 = [v146 isEnabled];
    v157 = v77;
    v158 = v81;
    LOBYTE(v156) = v93;
    sub_2288D3C20(&v156, v154);
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v92;
    v95 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
    MEMORY[0x28223BE20](v95);
    v97 = &v141 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v98 + 16))(v97);
    sub_2289066C0(v97, 0xD000000000000016, 0x80000002289335E0, v94, &v152, v77, v81);
    __swift_destroy_boxed_opaque_existential_0(v154);
    v153 = v152;
  }

  else
  {
    sub_2289055AC(0xD000000000000016, 0x80000002289335E0, &v156);
    sub_2288D40CC(&v156, &qword_2813DED60, sub_2288D3BBC);
  }

  v99 = *(v151 + 49);
  if (v99 == 2)
  {
    sub_2289055AC(0xD00000000000001BLL, 0x8000000228933600, &v156);
    sub_2288D40CC(&v156, &qword_2813DED60, sub_2288D3BBC);
  }

  else
  {
    v157 = v77;
    v100 = MEMORY[0x277D839C8];
    v158 = MEMORY[0x277D839C8];
    LOBYTE(v156) = v99;
    sub_2288D3C20(&v156, v154);
    v101 = v153;
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v101;
    v103 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
    MEMORY[0x28223BE20](v103);
    v105 = &v141 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v106 + 16))(v105);
    sub_2289066C0(v105, 0xD00000000000001BLL, 0x8000000228933600, v102, &v152, v77, v100);
    __swift_destroy_boxed_opaque_existential_0(v154);
    v153 = v152;
  }

  LODWORD(v146) = a9;
  v107 = v147;
  if (v147)
  {
    v108 = [v147 sleepModeOptions];
    v157 = v77;
    v109 = MEMORY[0x277D839C8];
    v158 = MEMORY[0x277D839C8];
    LOBYTE(v156) = (v108 & 0x4000) != 0;
    sub_2288D3C20(&v156, v154);
    v110 = v153;
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v110;
    v112 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
    MEMORY[0x28223BE20](v112);
    v114 = &v141 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v115 + 16))(v114);
    sub_2289066C0(v114, 0xD000000000000014, 0x8000000228933620, v111, &v152, MEMORY[0x277D839B0], v109);
    __swift_destroy_boxed_opaque_existential_0(v154);
    v116 = v152;
    v117 = [v107 scheduledSleepMode];
    v157 = MEMORY[0x277D839B0];
    v158 = v109;
    LOBYTE(v156) = v117;
    sub_2288D3C20(&v156, v154);
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v116;
    v119 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
    MEMORY[0x28223BE20](v119);
    v121 = &v141 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v122 + 16))(v121);
    sub_2289066C0(v121, 0xD00000000000001CLL, 0x8000000228933640, v118, &v152, MEMORY[0x277D839B0], v109);
    __swift_destroy_boxed_opaque_existential_0(v154);
    v77 = MEMORY[0x277D839B0];
    v123 = v152;
  }

  else
  {
    sub_2289055AC(0xD000000000000014, 0x8000000228933620, v154);
    sub_2288D40CC(v154, &qword_2813DED60, sub_2288D3BBC);
    sub_2289055AC(0xD00000000000001CLL, 0x8000000228933640, v154);
    sub_2288D40CC(v154, &qword_2813DED60, sub_2288D3BBC);
    v123 = v153;
    v109 = MEMORY[0x277D839C8];
  }

  v124 = [v148 isAnySleepTrackingOnboardingCompleted];
  v157 = v77;
  v158 = v109;
  LOBYTE(v156) = v124;
  sub_2288D3C20(&v156, v154);
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v152 = v123;
  v126 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
  sub_228906204(*v126, 0xD000000000000017, 0x8000000228933660, v125, &v152);
  __swift_destroy_boxed_opaque_existential_0(v154);
  v127 = v152;
  v157 = v77;
  v158 = v109;
  LOBYTE(v156) = v149 & 1;
  sub_2288D3C20(&v156, v154);
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v152 = v127;
  v129 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
  sub_228906204(*v129, 0xD000000000000011, 0x8000000228933680, v128, &v152);
  __swift_destroy_boxed_opaque_existential_0(v154);
  v130 = v152;
  v157 = v77;
  v158 = v109;
  LOBYTE(v156) = v146 & 1;
  sub_2288D3C20(&v156, v154);
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v152 = v130;
  v132 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
  sub_228906204(*v132, 0xD000000000000017, 0x80000002289336A0, v131, &v152);
  __swift_destroy_boxed_opaque_existential_0(v154);
  v133 = v152;
  v134 = *(v151 + 56);
  v158 = MEMORY[0x277D83BA8];
  v157 = MEMORY[0x277D83B88];
  *&v156 = v134;
  sub_2288D3C20(&v156, v154);
  v135 = swift_isUniquelyReferenced_nonNull_native();
  v152 = v133;
  v136 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
  sub_228906368(*v136, 0xD00000000000001ALL, 0x80000002289336C0, v135, &v152);
  __swift_destroy_boxed_opaque_existential_0(v154);
  v137 = v152;
  v138 = sub_228909F24();
  v139 = swift_isUniquelyReferenced_nonNull_native();
  *&v156 = v137;
  sub_2288D3108(v138, sub_2288D1B9C, 0, v139, &v156);

  return v156;
}

unint64_t sub_2288D3108(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  sub_2288D1BE8(&v43);
  v12 = v44;
  if (!v44)
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_2288D3C20(v45, v42);
  v14 = *a5;
  result = sub_22891C740(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_228905658(v20, a4 & 1);
    result = sub_22891C740(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_22892F858();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_228905C50();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 40 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_2288D3C20(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_2288D3C20(v42, v23[7] + 40 * result);
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_2288D1BE8(&v43);
    v12 = v44;
    if (v44)
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_2288D3C20(v45, v42);
        v32 = *a5;
        result = sub_22891C740(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_228905658(v36, 1);
          result = sub_22891C740(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 40 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_2288D3C20(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_2288D3C20(v42, v38[7] + 40 * result);
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_2288D1BE8(&v43);
        v12 = v44;
      }

      while (v44);
    }

LABEL_25:
    sub_2288D3D50(v46);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2288D3424(uint64_t a1, void *a2, uint64_t a3, void *a4, const void *a5)
{
  v53 = a4;
  sub_2288BBFAC(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52 - v10;
  memcpy(v59, a5, sizeof(v59));
  v12 = MEMORY[0x277D84F98];
  v60 = MEMORY[0x277D84F98];
  if (*(a1 + 24))
  {
    sub_2289055AC(6645601, 0xE300000000000000, v55);
    sub_2288D40CC(v55, &qword_2813DED60, sub_2288D3BBC);
    v13 = v60;
  }

  else
  {
    v14 = *(a1 + 16);
    *&v55[24] = MEMORY[0x277D83B88];
    *&v55[32] = MEMORY[0x277D83BA8];
    *v55 = v14;
    sub_2288D3C20(v55, v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v56 = v12;
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v54, v54[3]);
    MEMORY[0x28223BE20](v16);
    v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18);
    sub_2289066C0(v18, 6645601, 0xE300000000000000, isUniquelyReferenced_nonNull_native, &v56, MEMORY[0x277D83B88], MEMORY[0x277D83BA8]);
    __swift_destroy_boxed_opaque_existential_0(v54);
    v13 = v56;
  }

  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  *&v55[24] = MEMORY[0x277D837D0];
  *&v55[32] = MEMORY[0x277D837F8];
  *v55 = v20;
  *&v55[8] = v21;
  sub_2288D3C20(v55, v54);

  LOBYTE(v21) = swift_isUniquelyReferenced_nonNull_native();
  *&v56 = v13;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v54, v54[3]);
  MEMORY[0x28223BE20](v22);
  v24 = (&v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  sub_2289064D0(*v24, v24[1], 0x6369676F6C6F6962, 0xED00007865536C61, v21, &v56);
  __swift_destroy_boxed_opaque_existential_0(v54);
  v60 = v56;
  sub_2288D3C38(a3, v11);
  v26 = sub_22892DEF8();
  v27 = *(v26 - 8);
  v28 = 0;
  if ((*(v27 + 48))(v11, 1, v26) != 1)
  {
    v28 = sub_22892DE58();
    (*(v27 + 8))(v11, v26);
  }

  v29 = [a2 bucketedNumberOfDaysSinceDate_];

  if (v29)
  {
    v30 = sub_2288BC0FC(0, &qword_2813DEB50, 0x277CCABB0);
    *&v55[24] = v30;
    v31 = sub_2288D3CE8();
    *&v55[32] = v31;
    *v55 = v29;
    sub_2288D3C20(v55, v54);
    v32 = v60;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *&v56 = v32;
    v34 = __swift_mutable_project_boxed_opaque_existential_1(v54, v54[3]);
    MEMORY[0x28223BE20](v34);
    v36 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v36);
    sub_2289066C0(v36, 0xD000000000000019, 0x8000000228933430, v33, &v56, v30, v31);
    __swift_destroy_boxed_opaque_existential_0(v54);
    v60 = v56;
  }

  else
  {
    sub_2289055AC(0xD000000000000019, 0x8000000228933430, v55);
    sub_2288D40CC(v55, &qword_2813DED60, sub_2288D3BBC);
  }

  if (v53)
  {
    v38 = [v53 state];
    v39 = MEMORY[0x277D839B0];
    v40 = MEMORY[0x277D839C8];
    v57 = MEMORY[0x277D839B0];
    v58 = MEMORY[0x277D839C8];
    LOBYTE(v56) = (v38 - 1) < 2;
    sub_2288D3C20(&v56, v55);
    v41 = v60;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v54[0] = v41;
    v43 = __swift_mutable_project_boxed_opaque_existential_1(v55, *&v55[24]);
    MEMORY[0x28223BE20](v43);
    v45 = &v52 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v46 + 16))(v45);
    sub_2289066C0(v45, 0xD000000000000016, 0x8000000228933450, v42, v54, v39, v40);
    __swift_destroy_boxed_opaque_existential_0(v55);
    v60 = v54[0];
  }

  else
  {
    sub_2289055AC(0xD000000000000016, 0x8000000228933450, v55);
    sub_2288D40CC(v55, &qword_2813DED60, sub_2288D3BBC);
  }

  memcpy(v55, v59, sizeof(v55));
  if (sub_2288D3CB8(v55) == 1)
  {
    v47 = sub_22891CBE4(MEMORY[0x277D84F90]);
  }

  else
  {
    memcpy(v54, v55, sizeof(v54));
    v47 = sub_22890A0D4();
  }

  v48 = v47;
  v49 = v60;
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v54[0] = v49;
  sub_2288D3108(v48, sub_2288D1B9C, 0, v50, v54);

  return v54[0];
}

unint64_t sub_2288D3BBC()
{
  result = qword_2813DED68;
  if (!qword_2813DED68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DED68);
  }

  return result;
}

uint64_t sub_2288D3C20(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2288D3C38(uint64_t a1, uint64_t a2)
{
  sub_2288BBFAC(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288D3CB8(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_2288D3CE8()
{
  result = qword_27D85B3C8;
  if (!qword_27D85B3C8)
  {
    sub_2288BC0FC(255, &qword_2813DEB50, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85B3C8);
  }

  return result;
}

uint64_t sub_2288D3D58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2288D3DBC(uint64_t a1)
{
  if (!qword_2813DED50)
  {
    sub_2288D3BBC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DED50);
    }
  }
}

uint64_t sub_2288D3E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2288D3EC4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2288BF214(255, a3, a4);
    v5 = sub_22892F498();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2288D3F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288D3F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288D3FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288D404C(uint64_t a1)
{
  sub_2288D3EC4(0, &qword_2813DE900, &qword_2813DE910, MEMORY[0x277D100B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2288D40CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2288BBFAC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2288D4128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }
}

uint64_t getEnumTagSinglePayload for HealthBalanceDailyAnalyticsEvent.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthBalanceDailyAnalyticsEvent.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2288D42DC()
{
  result = qword_27D85B3D8;
  if (!qword_27D85B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85B3D8);
  }

  return result;
}

void sub_2288D4334(uint64_t a1)
{
  sub_2288BC0C8(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_2288D43C4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22892DF58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = [a2 queryUUID];
  sub_22892DF38();

  v13 = sub_22892DF18();
  (*(v7 + 8))(v9, v6);
  v14 = HKDiagnosticStringFromUUID();

  v15 = sub_22892F0C8();
  v17 = v16;

  v20 = v15;
  v21 = v17;
  MEMORY[0x22AAC3770](10272, 0xE200000000000000);
  MEMORY[0x22AAC3770](v10, v11);
  result = MEMORY[0x22AAC3770](41, 0xE100000000000000);
  v19 = v21;
  *a3 = v20;
  a3[1] = v19;
  return result;
}

uint64_t sub_2288D453C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return MEMORY[0x282168728](0, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2288D45C4(uint64_t a1)
{
  swift_getObjCClassMetadata();
  sub_2288D453C();

  return swift_getObjCClassFromMetadata();
}

id sub_2288D45FC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v6 = v0;
  v7 = sub_22892EDD8();
  v8 = sub_22892F398();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136446466;
    v11 = sub_22892F948();
    v13 = sub_2288B748C(v11, v12, &v30);
    v29 = v2;
    v14 = ObjectType;
    v15 = v13;

    *(v9 + 4) = v15;
    *(v9 + 12) = 2082;
    v16 = sub_2288B770C();
    v18 = sub_2288B748C(v16, v17, &v30);

    *(v9 + 14) = v18;
    ObjectType = v14;
    _os_log_impl(&dword_2288B2000, v7, v8, "[%{public}s:%{public}s] Query stopped", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v10, -1, -1);
    MEMORY[0x22AAC47E0](v9, -1, -1);

    (*(v3 + 8))(v5, v29);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v19 = [v6 profile];
  if (v19)
  {
    v20 = v19;
    v21 = sub_2288B79A4();
    v23 = v22;

    if (v21)
    {
      v24 = [v6 configuration];
      v25 = [v24 shouldDeactivateAfterInitialResults];

      if (v25)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = swift_getObjectType();
        v27 = (*(v23 + 8))(v26, v23);
        sub_2288E1C68(v6, v27);
        swift_unknownObjectRelease();
      }
    }
  }

  v31.receiver = v6;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, sel__queue_stop);
}

void sub_2288D48EC(void *a1)
{
  v1 = a1;
  sub_2288D45FC();
}

uint64_t sub_2288D4934()
{
  v1 = [v0 configuration];
  v2 = [v1 shouldDeactivateAfterInitialResults];

  return v2 ^ 1;
}

uint64_t sub_2288D4984(void *a1)
{
  v1 = a1;
  v2 = sub_2288D4934();

  return v2 & 1;
}

void sub_2288D49B8()
{
  swift_getObjectType();
  v1 = sub_22892EDE8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 profile];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2288B7894();
    if (v7)
    {
      v8 = v7;
      v9 = sub_2288B5C2C();
      if (v9)
      {
        v22 = v9;
        sub_2288B8230(v6, v8);

        swift_unknownObjectRelease();
        v10 = v22;

        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  sub_22892EDC8();
  v11 = v0;
  v12 = sub_22892EDD8();
  v13 = sub_22892F378();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446466;
    v16 = sub_22892F948();
    v18 = sub_2288B748C(v16, v17, &v23);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = sub_2288B770C();
    v21 = sub_2288B748C(v19, v20, &v23);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_2288B2000, v12, v13, "[%{public}s:%{public}s] Unable to requery data due to unexpected configuration", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v15, -1, -1);
    MEMORY[0x22AAC47E0](v14, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
}

void sub_2288D4C50(uint64_t a1)
{
  v2 = v1;
  v61 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_22892EDE8();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v60 = &v59 - v8;
  MEMORY[0x28223BE20](v7);
  v59 = &v59 - v9;
  sub_2288BC0C8(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SleepingSampleCacheRange(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22892EE28();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v20 = [v1 queryQueue];
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v21 = sub_22892EE38();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    v22 = qword_2813DF4E0;
    swift_beginAccess();
    sub_2288BFF8C(v2 + v22, v12, sub_2288BC0C8);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_2288BA76C(v12, sub_2288BC0C8);
      sub_22892EDC8();
      v23 = v2;
      v24 = sub_22892EDD8();
      v25 = sub_22892F398();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v65 = v27;
        *v26 = 136446466;
        v28 = sub_22892F948();
        v30 = sub_2288B748C(v28, v29, &v65);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2082;
        v31 = sub_2288B770C();
        v33 = sub_2288B748C(v31, v32, &v65);

        *(v26 + 14) = v33;
        _os_log_impl(&dword_2288B2000, v24, v25, "[%{public}s:%{public}s] Requerying data for client for samples added (no cache range)", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v27, -1, -1);
        MEMORY[0x22AAC47E0](v26, -1, -1);
      }

      (*(v63 + 8))(v6, v64);
      sub_2288D49B8();
    }

    else
    {
      v34 = v16;
      sub_2288C0074(v12, v16, type metadata accessor for SleepingSampleCacheRange);
      if (sub_2288CD2A4(v61))
      {
        v35 = v59;
        sub_22892EDC8();
        v36 = v2;
        v37 = sub_22892EDD8();
        v38 = sub_22892F398();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v65 = v40;
          *v39 = 136446466;
          v41 = sub_22892F948();
          v43 = sub_2288B748C(v41, v42, &v65);

          *(v39 + 4) = v43;
          *(v39 + 12) = 2082;
          v44 = sub_2288B770C();
          v46 = sub_2288B748C(v44, v45, &v65);

          *(v39 + 14) = v46;
          _os_log_impl(&dword_2288B2000, v37, v38, "[%{public}s:%{public}s] Requerying data for client for samples added (cache range impacted)", v39, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAC47E0](v40, -1, -1);
          MEMORY[0x22AAC47E0](v39, -1, -1);
        }

        (*(v63 + 8))(v35, v64);
        sub_2288D49B8();
      }

      else
      {
        v47 = v60;
        sub_22892EDC8();
        v48 = v2;
        v49 = sub_22892EDD8();
        v50 = sub_22892F368();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v65 = v52;
          *v51 = 136446466;
          v53 = sub_22892F948();
          v55 = sub_2288B748C(v53, v54, &v65);

          *(v51 + 4) = v55;
          *(v51 + 12) = 2082;
          v56 = sub_2288B770C();
          v58 = sub_2288B748C(v56, v57, &v65);

          *(v51 + 14) = v58;
          _os_log_impl(&dword_2288B2000, v49, v50, "[%{public}s:%{public}s] Ignoring samples added (not in cache range)", v51, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAC47E0](v52, -1, -1);
          MEMORY[0x22AAC47E0](v51, -1, -1);
        }

        (*(v63 + 8))(v47, v64);
      }

      sub_2288BA76C(v34, type metadata accessor for SleepingSampleCacheRange);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2288D5394()
{
  swift_getObjectType();
  v1 = sub_22892EDE8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892EE28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = [v0 queryQueue];
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v9 = sub_22892EE38();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    sub_22892EDC8();
    v10 = v0;
    v11 = sub_22892EDD8();
    v12 = sub_22892F398();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446466;
      v15 = sub_22892F948();
      v17 = sub_2288B748C(v15, v16, &v22);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      v18 = sub_2288B770C();
      v20 = sub_2288B748C(v18, v19, &v22);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_2288B2000, v11, v12, "[%{public}s:%{public}s] Requerying data for client for samples removed", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v14, -1, -1);
      MEMORY[0x22AAC47E0](v13, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    sub_2288D49B8();
  }

  else
  {
    __break(1u);
  }
}

void sub_2288D5680(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  swift_unknownObjectRetain();
  v6 = a1;
  sub_2288D6E34(v4);
  swift_unknownObjectRelease();
}

id sub_2288D56F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v9 = sub_22892DF58();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892DF38();
  v12 = a4;
  v13 = a5;
  swift_unknownObjectRetain();
  v14 = sub_2288D7128(v11, a4, v13, a6);

  swift_unknownObjectRelease();
  return v14;
}

id sub_2288D57D8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2288D58B0@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_22892E048();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22892EFA8();
  v35 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5D1C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22892E478();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v27 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = sub_22892DDC8();
  v28 = *(v15 - 8);
  v29 = v15;
  MEMORY[0x28223BE20](v15);
  v26 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingSampleAggregateDaySummaryEnumerator_gregorianDayRange;
  v25 = v1;
  swift_beginAccess();
  v18 = *(v10 + 16);
  v18(v14, v1 + v17, v9);
  sub_22892E438();
  v19 = *(v10 + 8);
  v19(v14, v9);
  v20 = v30;
  (*(v35 + 16))(v5, v8, v30);
  sub_2288BA76C(v8, sub_2288B5D1C);
  v21 = v27;
  v18(v27, v25 + v17, v9);
  v22 = v31;
  sub_22892E468();
  v19(v21, v9);
  v23 = v26;
  sub_22892EEC8();
  (*(v32 + 8))(v22, v33);
  (*(v35 + 8))(v5, v20);
  sub_22892DD98();
  return (*(v28 + 8))(v23, v29);
}

uint64_t sub_2288D5C98@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = a1;
  a2[4] = sub_2288C1090(&qword_2813DF0F8, type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator, &unk_228931E10);
  *a2 = v4;
}

uint64_t sub_2288D5D34(uint64_t a1)
{
  result = sub_2288C1090(&unk_2813DF1A0, sub_2288BABAC, &unk_228932284);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2288D5DD4(uint64_t a1)
{
  result = sub_2288C1090(&qword_2813DF0F8, type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator, &unk_228931E10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2288D5E2C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22892F588())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x22AAC3CC0](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_22892F6A8();
        sub_22892F6D8();
        v4 = v15;
        sub_22892F6E8();
        sub_22892F6B8();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

char *sub_2288D605C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2288B5CB8(0, &qword_27D85B3F0, sub_2288D6B8C, MEMORY[0x277D84560]);
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

char *sub_2288D6184(char *result, int64_t a2, char a3, char *a4)
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
    sub_2288D726C(0, &qword_2813DE9A8, MEMORY[0x277D839F8]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2288D6310(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (!v12)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  a5(0);
  v13 = *(a6(0) - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (!v14)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v15) == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_29;
  }

  v16[2] = v11;
  v16[3] = 2 * ((result - v15) / v14);
LABEL_19:
  v18 = *(a6(0) - 8);
  if (v8)
  {
    if (v16 < a4 || (v19 = (*(v18 + 80) + 32) & ~*(v18 + 80), v16 + v19 >= a4 + v19 + *(v18 + 72) * v11))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_2288D64EC(void *result, int64_t a2, char a3, void *a4)
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

  sub_2288C101C(0);
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_2288D6714(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2288D67C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2288D6734(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2288D68E0(a1, a2, a3, *v3, sub_2288D6AF0, sub_2288D6B24);
  *v3 = result;
  return result;
}

char *sub_2288D677C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2288D6C4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2288D67C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2288D726C(0, &qword_2813DE950, MEMORY[0x277D84F70] + 8);
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

void *sub_2288D68E0(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (!v12)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  a5(0);
  v13 = *(a6(0) - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (!v14)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v15) == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_29;
  }

  v16[2] = v11;
  v16[3] = 2 * ((result - v15) / v14);
LABEL_19:
  v18 = *(a6(0) - 8);
  if (v8)
  {
    if (v16 < a4 || (v19 = (*(v18 + 80) + 32) & ~*(v18 + 80), v16 + v19 >= a4 + v19 + *(v18 + 72) * v11))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_2288D6B24(uint64_t a1)
{
  if (!qword_2813DEDD0)
  {
    sub_22892EFA8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DEDD0);
    }
  }
}

void sub_2288D6B8C()
{
  if (!qword_27D85B3F8)
  {
    v0 = sub_22892F348();
    if (!v1)
    {
      atomic_store(v0, &qword_27D85B3F8);
    }
  }
}

char *sub_2288D6C4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2288D726C(0, &unk_2813DE9C8, MEMORY[0x277D837D0]);
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

void sub_2288D6D64(uint64_t a1)
{
  if (!qword_2813DEB20)
  {
    sub_2288BC0FC(255, &qword_2813DEB30, 0x277D82BB8);
    v1 = sub_22892F498();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEB20);
    }
  }
}

void sub_2288D6E34(char a1)
{
  swift_getObjectType();
  v3 = sub_22892EDE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892EE28();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = [v1 queryQueue];
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v11 = sub_22892EE38();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (a1)
    {
      sub_22892EDC8();
      v12 = v1;
      v13 = sub_22892EDD8();
      v14 = sub_22892F398();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v24 = v16;
        *v15 = 136446466;
        v17 = sub_22892F948();
        v19 = sub_2288B748C(v17, v18, &v24);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2082;
        v20 = sub_2288B770C();
        v22 = sub_2288B748C(v20, v21, &v24);

        *(v15 + 14) = v22;
        _os_log_impl(&dword_2288B2000, v13, v14, "[%{public}s:%{public}s] Requerying data for client for protected data availability", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v16, -1, -1);
        MEMORY[0x22AAC47E0](v15, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
      sub_2288D49B8();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_2288D7128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = qword_2813DF4E0;
  v12 = type metadata accessor for SleepingSampleCacheRange(0);
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = sub_22892DF18();
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_initWithUUID_configuration_client_delegate_, v13, a2, a3, a4);

  v15 = sub_22892DF58();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

void sub_2288D726C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22892F7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2288D72B8(uint64_t a1, void *a2)
{
  v3 = v2;
  v85 = a2;
  v86 = a1;
  sub_2288B6CB4(0, &qword_2813DFEA8, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v4 - 8);
  v82 = &v71 - v5;
  sub_2288B6CB4(0, &qword_2813DFEB0, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v71 - v7;
  v79 = sub_22892DE18();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_22892E048();
  v9 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22892EFA8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5D1C(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22892DDC8();
  v20 = *(v19 - 8);
  v87 = v19;
  v88 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v76 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v71 - v23;
  v25 = sub_22892DEF8();
  v83 = *(v25 - 8);
  v84 = v25;
  v26 = MEMORY[0x28223BE20](v25);
  v74 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v71 - v28;
  sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  v30 = MEMORY[0x22AAC3A10](*MEMORY[0x277CCC938]);
  v71 = v2;
  *(v2 + 16) = v30;
  v31 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_gregorianDayRange;
  v32 = sub_22892E478();
  v80 = *(v32 - 8);
  v81 = v32;
  (*(v80 + 16))(v3 + v31, v86);
  sub_22892E438();
  (*(v13 + 16))(v15, v18, v12);
  sub_2288BA7CC(v18, sub_2288B5D1C);
  sub_22892E468();
  sub_22892EEC8();
  v33 = v72;
  (*(v9 + 8))(v11, v72);
  (*(v13 + 8))(v15, v12);
  sub_22892DD98();
  v34 = *(v88 + 8);
  v88 += 8;
  v78 = v34;
  v34(v24, v87);
  v35 = v73;
  sub_22892E468();
  (*(v9 + 56))(v35, 0, 1, v33);
  v36 = sub_22892E058();
  (*(*(v36 - 8) + 56))(v82, 1, 1, v36);
  v37 = v75;
  sub_22892DE08();
  v38 = objc_allocWithZone(MEMORY[0x277CCDD78]);
  v82 = v29;
  v39 = v71;
  v40 = sub_22892DE58();
  v41 = sub_22892DDD8();
  v42 = [v38 initWithAnchorDate:v40 intervalComponents:v41];

  (*(v77 + 8))(v37, v79);
  *(v39 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_intervalCollection) = v42;
  v43 = *(v39 + 16);
  v44 = v42;
  v45 = v43;
  v46 = _HKStatisticsOptionBaselineRelativeQuantities();
  v47 = [objc_opt_self() calculatorForQuantityType:v45 intervalCollection:v44 options:v46 | 0x22 mergeStrategy:0 computationMethod:1];

  v48 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_calculator;
  *(v39 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_calculator) = v47;
  v49 = v74;
  sub_22892DED8();
  v50 = *(v39 + 16);
  v51 = v76;
  sub_22892E418();
  sub_2288DA918();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_2289315C0;
  v53 = HDSampleEntityPredicateForDataType();
  v54 = sub_2288BC0FC(0, &qword_2813DEC18, 0x277D10B70);
  *(v52 + 56) = v54;
  *(v52 + 32) = v53;
  v55 = sub_22892DD58();
  v56 = HDSampleEntityPredicateForDateInterval();

  *(v52 + 88) = v54;
  *(v52 + 64) = v56;
  v57 = sub_22892F208();

  v58 = [objc_opt_self() predicateMatchingAllPredicates_];

  v59 = v58;
  v60 = HKRollingBaselineConfigurationForQuantityType();
  v61 = objc_allocWithZone(MEMORY[0x277D108B0]);
  v62 = v49;
  v63 = sub_22892DE58();
  v64 = v85;
  v65 = [v61 initForProfile:v85 quantityType:v50 predicate:v59 restrictedSourceEntities:0 configuration:v60 currentDate:v63];

  v78(v51, v87);
  *(v39 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_dataSource) = v65;
  [*(v39 + v48) setDataSource_];
  v66 = [objc_allocWithZone(MEMORY[0x277D108A8]) initWithProfile:v64 quantityType:*(v39 + 16)];
  *(v39 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_sourceOrderProvider) = v66;
  v67 = *(v39 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_calculator);
  if (v67)
  {
    [v67 setSourceOrderProvider_];
  }

  (*(v80 + 8))(v86, v81);
  v68 = v84;
  v69 = *(v83 + 8);
  v69(v62, v84);
  v69(v82, v68);
  return v39;
}

uint64_t sub_2288D7C3C()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_gregorianDayRange;
  v2 = sub_22892E478();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepingWristTemperatureAggregateEnumerator(uint64_t a1)
{
  result = qword_2813DF008;
  if (!qword_2813DF008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2288D7D74(uint64_t a1)
{
  result = sub_22892E478();
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

unint64_t sub_2288D7E74()
{
  result = qword_2813DF020;
  if (!qword_2813DF020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DF020);
  }

  return result;
}

uint64_t sub_2288D7EC8()
{
  v1 = v0;
  aBlock[8] = *MEMORY[0x277D85DE8];
  sub_2288B5D1C(0);
  MEMORY[0x28223BE20](v2 - 8);
  v76 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22892ED78();
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  v73 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892ED38();
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v84 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v78 = &v72 - v10;
  MEMORY[0x28223BE20](v9);
  v77 = &v72 - v11;
  v12 = sub_22892DE18();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22892DEF8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22892EDE8();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = sub_22892ED68();
  v80 = *(v21 - 8);
  v81 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v85 = v23;
  sub_22892ED48();
  v24 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_intervalCollection);
  v25 = [v24 anchorDate];
  sub_22892DEC8();

  v26 = [v24 intervalComponents];
  sub_22892DDE8();

  v27 = objc_allocWithZone(MEMORY[0x277CCDA58]);
  v28 = sub_22892DE58();
  v29 = sub_22892DDD8();
  v30 = [v27 initWithAnchorDate:v28 statisticsInterval:v29];

  (*(v13 + 8))(v15, v12);
  (*(v17 + 8))(v19, v16);
  v31 = v1;
  v32 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingWristTemperatureAggregateEnumerator_calculator);
  if (v32)
  {
    v33 = swift_allocObject();
    v33[2] = v30;
    aBlock[4] = sub_2288D9FE0;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2288D88A4;
    aBlock[3] = &block_descriptor;
    v34 = _Block_copy(aBlock);
    v35 = v30;

    [v32 setStatisticsHandler_];
    _Block_release(v34);
  }

  v79 = v30;
  v36 = v77;
  sub_22892ED28();
  v37 = sub_22892ED58();
  v38 = sub_22892F428();
  if (sub_22892F478())
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = sub_22892ED18();
    _os_signpost_emit_with_name_impl(&dword_2288B2000, v37, v38, v40, "SleepingWristTemperatureAggregateEnumerator", "", v39, 2u);
    MEMORY[0x22AAC47E0](v39, -1, -1);
  }

  v41 = v82;
  v42 = v83;
  (*(v82 + 16))(v78, v36, v83);
  sub_22892EDA8();
  swift_allocObject();
  sub_22892ED98();
  v43 = *(v41 + 8);
  v43(v36, v42);
  if (v32)
  {
    aBlock[0] = 0;
    if (![v32 queryForInitialStatisticsWithError_])
    {
      v52 = aBlock[0];
      v53 = sub_22892DE38();

      swift_willThrow();

      aBlock[0] = v53;
      sub_2288CA734();
      sub_2288BC0FC(0, &qword_27D85B098, 0x277CCA9B8);
      swift_dynamicCast();
      (*(v80 + 8))(v85, v81);

      v54 = aBlock[6];
      v55 = swift_allocObject();
      *(v55 + 16) = v54;
      sub_2288D9E48(0);
      v56 = swift_allocObject();
      *(v56 + 16) = sub_2288D9FD8;
      *(v56 + 24) = v55;

      return v56;
    }

    v44 = aBlock[0];
  }

  v45 = sub_22892ED58();
  v46 = v84;
  sub_22892ED88();
  v47 = sub_22892F418();
  if (sub_22892F478())
  {

    v48 = v73;
    sub_22892EDB8();

    v50 = v74;
    v49 = v75;
    if ((*(v74 + 88))(v48, v75) == *MEMORY[0x277D85B00])
    {
      v51 = "[Error] Interval already ended";
    }

    else
    {
      (*(v50 + 8))(v48, v49);
      v51 = "";
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = v84;
    v59 = sub_22892ED18();
    _os_signpost_emit_with_name_impl(&dword_2288B2000, v45, v47, v59, "SleepingWristTemperatureAggregateEnumerator", v51, v57, 2u);
    MEMORY[0x22AAC47E0](v57, -1, -1);
    v46 = v58;
  }

  v43(v46, v42);
  sub_2288C3FDC(0);
  v61 = v60;
  v62 = swift_allocBox();
  v64 = v63;
  v65 = v76;
  sub_22892E438();
  (*(v80 + 8))(v85, v81);
  sub_2288BB590(v65, v64, sub_2288B5D1C);
  v66 = *(v61 + 36);
  v67 = sub_22892EFA8();
  v68 = *(v67 - 8);
  (*(v68 + 16))(v64 + v66, v65, v67);
  sub_2288BA7CC(v65, sub_2288B5D1C);
  (*(v68 + 56))(v64 + v66, 0, 1, v67);
  v69 = swift_allocObject();
  v70 = v79;
  v69[2] = v62;
  v69[3] = v70;
  v69[4] = v31;
  sub_2288D9E48(0);
  v56 = swift_allocObject();
  *(v56 + 16) = sub_2288D9E3C;
  *(v56 + 24) = v69;

  return v56;
}

void sub_2288D88A4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

id sub_2288D8928@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a1;
  sub_2288D9EFC(0, &qword_2813DE930, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = [v13 hk_isDatabaseAccessibilityError];
  *v5 = v13;
  v5[8] = v6;
  v7 = MEMORY[0x277D0FF90];
  sub_2288DA96C(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74, &type metadata for SleepingWristTemperatureAggregateEnumerator.Error);
  v9 = v8;
  swift_storeEnumTagMultiPayload();
  sub_2288DA96C(0, &qword_2813DE938, v7, sub_2288D7E74, &type metadata for SleepingWristTemperatureAggregateEnumerator.Error);
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  sub_2288DA004(v5, a2);
  v10 = v13;

  return v10;
}

uint64_t sub_2288D8AB8@<X0>(void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  v77 = a2;
  v84 = a4;
  v70 = sub_22892E538();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2288B6CB4(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v64[-v6];
  sub_2288B6CB4(0, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v64[-v8];
  v9 = sub_22892DEF8();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x28223BE20](v9);
  v72 = &v64[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = sub_22892E048();
  v91 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v85 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = sub_22892DDC8();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2288C3774(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v64[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2288C36E0(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v78 = &v64[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v81 = &v64[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v87 = &v64[-v23];
  MEMORY[0x28223BE20](v22);
  v25 = &v64[-v24];
  sub_2288B6CB4(0, &unk_2813DEDE0, MEMORY[0x277CCB6A8]);
  MEMORY[0x28223BE20](v26 - 8);
  v89 = &v64[-v27];
  v28 = sub_22892EFA8();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v79 = &v64[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v90 = &v64[-v32];
  sub_2288C3FDC(0);
  v34 = v33;
  v35 = swift_projectBox();
  swift_beginAccess();
  v36 = *(v34 + 36);
  v83 = *(v29 + 56);
  (v83)(v25, 1, 1, v28);
  v37 = *(v14 + 56);
  v38 = v29;
  v80 = v36;
  sub_2288BB590(v35 + v36, v16, sub_2288C36E0);
  sub_2288BB590(v25, &v16[v37], sub_2288C36E0);
  v39 = *(v29 + 48);
  v40 = v39(v16, 1, v28);
  v86 = v38;
  if (v40 == 1)
  {
    sub_2288BA7CC(v25, sub_2288C36E0);
    if (v39(&v16[v37], 1, v28) == 1)
    {
      v41 = v85;
LABEL_9:
      sub_2288BA7CC(v16, sub_2288C36E0);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_2288BB590(v16, v87, sub_2288C36E0);
  if (v39(&v16[v37], 1, v28) == 1)
  {
    sub_2288BA7CC(v25, sub_2288C36E0);
    (*(v38 + 8))(v87, v28);
LABEL_6:
    sub_2288BA7CC(v16, sub_2288C3774);
    v41 = v85;
LABEL_7:
    v43 = v80;
    v42 = v81;
    sub_2288BB590(v35 + v80, v81, sub_2288C36E0);
    result = v39(v42, 1, v28);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v86 + 32))(v89, v42, v28);
    v16 = v78;
    sub_2288DA084(v35 + v43, v78);
    sub_2288C37D8(v16, v35 + v43);
    goto LABEL_9;
  }

  v60 = v79;
  (*(v38 + 32))(v79, &v16[v37], v28);
  sub_2288BA948(&unk_2813DEE10, MEMORY[0x277CCB6C0]);
  v65 = sub_22892F088();
  v61 = *(v38 + 8);
  v61(v60, v28);
  sub_2288BA7CC(v25, sub_2288C36E0);
  v61(v87, v28);
  sub_2288BA7CC(v16, sub_2288C36E0);
  v41 = v85;
  if ((v65 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v45 = v90;
  v46 = v91;
  v47 = v89;
  v83();
  swift_endAccess();
  if (v39(v47, 1, v28) == 1)
  {
    sub_2288C3620(v47, &unk_2813DEDE0, MEMORY[0x277CCB6A8], sub_2288B6CB4);
    sub_2288DA96C(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74, &type metadata for SleepingWristTemperatureAggregateEnumerator.Error);
    return (*(*(v48 - 8) + 56))(v84, 1, 1, v48);
  }

  else
  {
    v49 = v86;
    (*(v86 + 32))(v45, v47, v28);
    sub_22892E468();
    v50 = v71;
    sub_22892EEC8();
    v89 = *(v46 + 8);
    v91 = v46 + 8;
    v89(v41, v82);
    v51 = v72;
    sub_22892DD98();
    v52 = v73;
    v53 = v74;
    (*(v73 + 8))(v50, v74);
    v54 = sub_22892DE58();
    v56 = v75;
    v55 = v76;
    (*(v75 + 8))(v51, v76);
    v57 = [v77 statisticsForDate_];

    if (v57)
    {
      sub_22892E468();
      v58 = v84;
      v59 = v90;
      sub_2288C8DE0(v57, v90, v41, 1, 1, 1, v84);

      v89(v41, v82);
      (*(v49 + 8))(v59, v28);
    }

    else
    {
      (*(v49 + 16))(v79, v90, v28);
      sub_22892E468();
      (*(v52 + 56))(v66, 1, 1, v53);
      (*(v56 + 56))(v67, 1, 1, v55);
      (*(v69 + 104))(v68, *MEMORY[0x277D0FF70], v70);
      v58 = v84;
      sub_22892E568();
      (*(v49 + 8))(v90, v28);
    }

    sub_2288DA96C(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74, &type metadata for SleepingWristTemperatureAggregateEnumerator.Error);
    v63 = v62;
    swift_storeEnumTagMultiPayload();
    return (*(*(v63 - 8) + 56))(v58, 0, 1, v63);
  }
}

uint64_t sub_2288D96DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2288D7EC8();

  *a1 = v2;
  return result;
}

void *sub_2288D972C()
{
  v0 = sub_2288DA0E8();

  return v0;
}

uint64_t sub_2288D9788(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2288D9EFC(0, &qword_2813DE930, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  sub_2288DA96C(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74, &type metadata for SleepingWristTemperatureAggregateEnumerator.Error);
  v23 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  v13 = sub_2288D7EC8();

  v15 = 0;
  if (!a2 || !a3)
  {
LABEL_12:
    *a1 = v13;
    return v15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = a1;
    sub_22892F7A8();
    v16 = *(v10 + 48);
    v22 = v10 + 48;
    if (v16(v8, 1, v23) == 1)
    {
      v15 = 0;
LABEL_9:
      sub_2288C3620(v8, &qword_2813DE930, MEMORY[0x277D83D88], sub_2288D9EFC);
    }

    else
    {
      v15 = 0;
      v19 = a3;
      v21 = a3 - 1;
      while (1)
      {
        v17 = MEMORY[0x277D0FF90];
        sub_2288C0D84(v8, v12, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74, &type metadata for SleepingWristTemperatureAggregateEnumerator.Error);
        sub_2288C0D84(v12, a2, &qword_2813DE938, v17, sub_2288D7E74, &type metadata for SleepingWristTemperatureAggregateEnumerator.Error);
        if (v21 == v15)
        {
          break;
        }

        a2 += *(v10 + 72);
        sub_22892F7A8();
        ++v15;
        if ((*(v10 + 48))(v8, 1, v23) == 1)
        {
          goto LABEL_9;
        }
      }

      v15 = v19;
    }

    a1 = v20;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2288D9A58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2288DA9EC(0, &qword_2813DE900, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  sub_2288DA96C(0, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC, &type metadata for SleepingSampleDaySummarySequenceError);
  v23 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  v13 = sub_2288E88F8();

  v15 = 0;
  if (!a2 || !a3)
  {
LABEL_12:
    *a1 = v13;
    return v15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = a1;
    sub_22892F7A8();
    v16 = *(v10 + 48);
    v22 = v10 + 48;
    if (v16(v8, 1, v23) == 1)
    {
      v15 = 0;
LABEL_9:
      sub_2288C3620(v8, &qword_2813DE900, MEMORY[0x277D83D88], sub_2288DA9EC);
    }

    else
    {
      v15 = 0;
      v19 = a3;
      v21 = a3 - 1;
      while (1)
      {
        v17 = MEMORY[0x277D100B8];
        sub_2288C0D84(v8, v12, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC, &type metadata for SleepingSampleDaySummarySequenceError);
        sub_2288C0D84(v12, a2, &qword_2813DE910, v17, sub_2288B7AEC, &type metadata for SleepingSampleDaySummarySequenceError);
        if (v21 == v15)
        {
          break;
        }

        a2 += *(v10 + 72);
        sub_22892F7A8();
        ++v15;
        if ((*(v10 + 48))(v8, 1, v23) == 1)
        {
          goto LABEL_9;
        }
      }

      v15 = v19;
    }

    a1 = v20;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_2288D9D4C()
{
  result = qword_2813DED80;
  if (!qword_2813DED80)
  {
    sub_2288B5D1C(255);
    sub_2288BA948(&unk_2813DEE00, MEMORY[0x277CCB6C8]);
    sub_2288D9DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DED80);
  }

  return result;
}

unint64_t sub_2288D9DE8()
{
  result = qword_2813DEDB0;
  if (!qword_2813DEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEDB0);
  }

  return result;
}

void sub_2288D9E48(uint64_t a1)
{
  if (!qword_2813DEAC8)
  {
    v1 = MEMORY[0x277D844A8];
    sub_2288D9EFC(255, &qword_2813DEA30, MEMORY[0x277D844A8]);
    sub_2288D9F94(&qword_2813DEA38, &qword_2813DEA30, v1, MEMORY[0x277D844B0]);
    v2 = sub_22892F678();
    if (!v3)
    {
      atomic_store(v2, &qword_2813DEAC8);
    }
  }
}

void sub_2288D9EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2288DA96C(255, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74, &type metadata for SleepingWristTemperatureAggregateEnumerator.Error);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2288D9F94(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2288D9EFC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2288DA004(uint64_t a1, uint64_t a2)
{
  sub_2288D9EFC(0, &qword_2813DE930, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288DA084(uint64_t a1, uint64_t a2)
{
  sub_2288C36E0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2288DA0E8()
{
  sub_2288D9EFC(0, &qword_2813DE930, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v39 - v1;
  sub_2288DA96C(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74, &type metadata for SleepingWristTemperatureAggregateEnumerator.Error);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - v6;
  v8 = *(v5 + 80);
  sub_2288D7EC8();
  sub_22892F7A8();
  v45 = *(v5 + 48);
  v46 = v4;
  v42 = v5 + 48;
  v9 = v45(v2, 1, v4);
  v10 = MEMORY[0x277D84F90];
  if (v9 != 1)
  {
    v11 = 0;
    v40 = v7;
    v41 = v8;
    v17 = &qword_2813DE938;
    v18 = &type metadata for SleepingWristTemperatureAggregateEnumerator.Error;
    v43 = (v8 + 32) & ~v8;
    v44 = v2;
    v19 = MEMORY[0x277D84F90] + v43;
    v20 = MEMORY[0x277D84F90];
    v39 = v5;
    while (1)
    {
      v23 = v2;
      v24 = v17;
      v25 = v18;
      result = sub_2288C0D84(v23, v7, v17, MEMORY[0x277D0FF90], sub_2288D7E74, v18);
      if (v11)
      {
        v10 = v20;
        v15 = __OFSUB__(v11--, 1);
        if (v15)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v26 = v20[3];
        if (((v26 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        sub_2288D9EFC(0, &unk_27D85B430, MEMORY[0x277D84560]);
        v29 = *(v5 + 72);
        v30 = v43;
        v10 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v10);
        if (!v29)
        {
          goto LABEL_34;
        }

        v31 = result - v30;
        if ((result - v30) == 0x8000000000000000 && v29 == -1)
        {
          goto LABEL_35;
        }

        v33 = v31 / v29;
        v10[2] = v28;
        v10[3] = 2 * (v31 / v29);
        v34 = v10 + v30;
        v35 = v20[3] >> 1;
        v36 = v35 * v29;
        if (v20[2])
        {
          if (v10 < v20 || v34 >= v20 + v43 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v10 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v20[2] = 0;
        }

        v19 = &v34[v36];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v5 = v39;
        v7 = v40;
        v15 = __OFSUB__(v38, 1);
        v11 = v38 - 1;
        if (v15)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }
      }

      sub_2288C0D84(v7, v19, v24, MEMORY[0x277D0FF90], sub_2288D7E74, v25);
      v19 += *(v5 + 72);
      v21 = v44;
      sub_22892F7A8();
      v22 = v45(v21, 1, v46);
      v18 = v25;
      v17 = v24;
      v2 = v21;
      v20 = v10;
      if (v22 == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v11 = 0;
LABEL_3:

  result = sub_2288C3620(v2, &qword_2813DE930, MEMORY[0x277D83D88], sub_2288D9EFC);
  v13 = v10[3];
  if (v13 >= 2)
  {
    v14 = v13 >> 1;
    v15 = __OFSUB__(v14, v11);
    v16 = v14 - v11;
    if (v15)
    {
      goto LABEL_36;
    }

    v10[2] = v16;
  }

  return v10;
}

void *sub_2288DA500()
{
  sub_2288DA9EC(0, &qword_2813DE900, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v39 - v1;
  sub_2288DA96C(0, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC, &type metadata for SleepingSampleDaySummarySequenceError);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - v6;
  v8 = *(v5 + 80);
  sub_2288E88F8();
  sub_22892F7A8();
  v45 = *(v5 + 48);
  v46 = v4;
  v42 = v5 + 48;
  v9 = v45(v2, 1, v4);
  v10 = MEMORY[0x277D84F90];
  if (v9 != 1)
  {
    v11 = 0;
    v41 = v8;
    v17 = &qword_2813DE910;
    v18 = &type metadata for SleepingSampleDaySummarySequenceError;
    v43 = (v8 + 32) & ~v8;
    v44 = v2;
    v19 = MEMORY[0x277D84F90] + v43;
    v20 = MEMORY[0x277D84F90];
    v39 = v5;
    v40 = v7;
    while (1)
    {
      v23 = v2;
      v24 = v17;
      v25 = v18;
      result = sub_2288C0D84(v23, v7, v17, MEMORY[0x277D100B8], sub_2288B7AEC, v18);
      if (v11)
      {
        v10 = v20;
        v15 = __OFSUB__(v11--, 1);
        if (v15)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v26 = v20[3];
        if (((v26 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        sub_2288DA9EC(0, &unk_27D85B440, MEMORY[0x277D84560]);
        v29 = *(v5 + 72);
        v30 = v43;
        v10 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v10);
        if (!v29)
        {
          goto LABEL_34;
        }

        v31 = result - v30;
        if ((result - v30) == 0x8000000000000000 && v29 == -1)
        {
          goto LABEL_35;
        }

        v33 = v31 / v29;
        v10[2] = v28;
        v10[3] = 2 * (v31 / v29);
        v34 = v10 + v30;
        v35 = v20[3] >> 1;
        v36 = v35 * v29;
        if (v20[2])
        {
          if (v10 < v20 || v34 >= v20 + v43 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v10 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v20[2] = 0;
        }

        v19 = &v34[v36];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v5 = v39;
        v7 = v40;
        v15 = __OFSUB__(v38, 1);
        v11 = v38 - 1;
        if (v15)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }
      }

      sub_2288C0D84(v7, v19, v24, MEMORY[0x277D100B8], sub_2288B7AEC, v25);
      v19 += *(v5 + 72);
      v21 = v44;
      sub_22892F7A8();
      v22 = v45(v21, 1, v46);
      v18 = v25;
      v17 = v24;
      v2 = v21;
      v20 = v10;
      if (v22 == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v11 = 0;
LABEL_3:

  result = sub_2288C3620(v2, &qword_2813DE900, MEMORY[0x277D83D88], sub_2288DA9EC);
  v13 = v10[3];
  if (v13 >= 2)
  {
    v14 = v13 >> 1;
    v15 = __OFSUB__(v14, v11);
    v16 = v14 - v11;
    if (v15)
    {
      goto LABEL_36;
    }

    v10[2] = v16;
  }

  return v10;
}

void sub_2288DA918()
{
  if (!qword_2813DE950)
  {
    v0 = sub_22892F7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE950);
    }
  }
}

void sub_2288DA96C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    v7 = sub_22892F8D8();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2288DA9EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2288DA96C(255, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC, &type metadata for SleepingSampleDaySummarySequenceError);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2288DAAA0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_22892F588())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x277D84FA0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_2288DB24C();
  v3 = sub_22892F618();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_22892F578();
  sub_2288DB1A8();
  sub_2288DB1F4();
  result = sub_22892F2D8();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_22892F5A8();
    if (!v16)
    {
LABEL_34:
      sub_2288D3D50(v1);

      return v3;
    }

    *&v27 = v16;
    sub_2288DB1A8();
    swift_dynamicCast();
LABEL_25:
    sub_2288DB1A8();
    swift_dynamicCast();
    result = sub_22892F5B8();
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v22);
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

id sub_2288DADC0(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = a2;
  sub_2288CD8F0(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892DDC8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288DB154();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228930AF0;
  v29 = a3;
  v11 = [a3 metadataManager];
  v12 = *MEMORY[0x277CCE030];
  v13 = _HKBackgroundAndSedentaryPrivateHeartRateContexts();
  sub_2288DB1A8();
  sub_2288DB1F4();
  v14 = sub_22892F2A8();

  sub_2288DAAA0(v14);

  v15 = sub_22892F298();

  v16 = [v11 predicateWithMetadataKey:v12 allowedValues:v15];

  *(inited + 32) = v16;
  sub_2289174BC(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_2288CA8C4(v6);
    return 0;
  }

  else
  {
    v18 = v28;
    (*(v8 + 32))(v28, v6, v7);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_228930B00;
    v20 = v30;
    *(v19 + 32) = HDSampleEntityPredicateForDataType();
    v21 = sub_22892DD58();
    v22 = HDSampleEntityPredicateForDateInterval();

    *(v19 + 40) = v22;
    v31 = v19;
    sub_228904978(inited);
    sub_228901F80(v31);

    v23 = sub_22892F208();

    v24 = [objc_opt_self() predicateMatchingAllPredicates_];

    v25 = objc_allocWithZone(MEMORY[0x277D108A0]);
    v26 = [v25 initForProfile:v29 quantityType:v20 predicate:v24 restrictedSourceEntities:0];

    (*(v8 + 8))(v18, v7);
    return v26;
  }
}

void sub_2288DB154()
{
  if (!qword_2813DE960)
  {
    v0 = sub_22892F7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE960);
    }
  }
}

unint64_t sub_2288DB1A8()
{
  result = qword_2813DEB50;
  if (!qword_2813DEB50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DEB50);
  }

  return result;
}

unint64_t sub_2288DB1F4()
{
  result = qword_2813DEB40;
  if (!qword_2813DEB40)
  {
    sub_2288DB1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEB40);
  }

  return result;
}

void sub_2288DB24C()
{
  if (!qword_2813DEAD0)
  {
    v0 = sub_22892F628();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEAD0);
    }
  }
}

uint64_t sub_2288DB2A4(uint64_t a1)
{
  sub_2288DB300();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2288DB300()
{
  if (!qword_2813DE8B8)
  {
    v0 = sub_22892F498();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE8B8);
    }
  }
}

void sub_2288DB354()
{
  v1 = [v0 daemon];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 behavior];
    v4 = [v3 features];

    if (v4)
    {
      v5 = [v4 sleepResultsNotificationsOnWatch];

      v6 = [v2 behavior];
      v7 = [v6 isAppleWatch];

      if (v5)
      {
        if ((v7 & 1) == 0)
        {
          v8 = [v2 behavior];
          [v8 isCompanionCapable];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2288DB468@<X0>(char *a1@<X0>, char **a3@<X8>)
{
  v29 = a3;
  v4 = sub_22892DEF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892E778();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22892E478();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_22892E458();
  (*(v12 + 16))(v15, v17, v11);
  v18 = v28;
  sub_22892E738();
  sub_22892E6F8();
  (*(v5 + 16))(v7, a1, v4);
  v19 = sub_2288B7B40(v18, v10, v7);
  v21 = (v12 + 8);
  if (sub_2288B79A4())
  {
    v22 = v20;
    ObjectType = swift_getObjectType();
    v24 = (*(v22 + 8))(ObjectType, v22);
    swift_unknownObjectRelease();
    sub_2288BC144(v19, a1, &v30);

    (*v21)(v17, v11);
    return sub_2288D3C20(&v30, v29);
  }

  else
  {
    sub_2288BABAC(0);
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    v26 = v29;
    v29[3] = v27;
    v26[4] = sub_2288DB788(&unk_2813DF1A0, sub_2288BABAC, &unk_228932284);
    *v26 = v19;
    result = (*v21)(v17, v11);
    if (*(&v31 + 1))
    {
      return __swift_destroy_boxed_opaque_existential_0(&v30);
    }
  }

  return result;
}

uint64_t sub_2288DB788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2288DB7D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2288DDC70(0, &qword_2813DEA50, MEMORY[0x277D837D0]);
    v2 = sub_22892F788();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_2288D3D58(*(a1 + 56) + 40 * v13, v30);
        *&v29 = v15;
        *(&v29 + 1) = v16;
        v26[2] = v29;
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v17 = v29;
        sub_2288D3C20(v27, v22);
        sub_2288D3BBC();

        swift_dynamicCast();
        sub_2288DDB00(&v23, v25);
        sub_2288DDB00(v25, v26);
        sub_2288DDB00(v26, &v24);
        result = sub_22891C740(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_2288DDB00(&v24, v10);
          v8 = v11;
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

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_2288DDB00(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2288DBA74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2288DDC70(0, &qword_27D85B508, MEMORY[0x277D84030]);
    v2 = sub_22892F788();
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_2288DDA90();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_2288DDB00(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_2288DDB00(v29, v30);
    result = sub_22892F5B8();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_2288DDB00(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2288DBD40(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_22892EA08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892EDE8();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  (*(v5 + 16))(v7, a1, v4);
  v11 = sub_22892EDD8();
  v12 = sub_22892F398();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v8;
    v14 = v13;
    v26 = swift_slowAlloc();
    v30 = v26;
    *v14 = 136446466;
    v15 = sub_22892F948();
    v17 = sub_2288B748C(v15, v16, &v30);
    ObjectType = a1;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = sub_22892E998();
    v21 = v20;
    (*(v5 + 8))(v7, v4);
    v22 = sub_2288B748C(v19, v21, &v30);
    a1 = ObjectType;

    *(v14 + 14) = v22;
    _os_log_impl(&dword_2288B2000, v11, v12, "[%{public}s] Posting notification (%s) and syncing a send instruction", v14, 0x16u);
    v23 = v26;
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v23, -1, -1);
    MEMORY[0x22AAC47E0](v14, -1, -1);

    (*(v29 + 8))(v10, v27);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v29 + 8))(v10, v8);
  }

  sub_2288DC088(a1);
  if (*(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_shouldIssueSendInstructionsWhenFiringVitalsOutlierNotification) == 1)
  {
    sub_2288CB328(a1);
  }

  sub_2288CBAB4(a1);
  return sub_2288DC9BC(a1);
}

uint64_t sub_2288DC088(uint64_t a1)
{
  v65 = sub_22892EA08();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = v2;
  v63 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22892E9E8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22892DEF8();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22892EFA8();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22892E318();
  v6 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22892E968();
  v9 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892E9C8();
  v12 = sub_22892F098();

  sub_22892E9B8();
  if (v13)
  {
    v14 = sub_22892F098();
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_opt_self();
  v50 = v11;
  sub_22892E978();
  sub_22892E958();
  v47 = a1;
  v16 = *(v9 + 8);
  v56 = v9 + 8;
  v57 = v16;
  v16(v11, v66);
  v17 = sub_22892F098();

  v18 = [v15 createNotificationContentWithTitle:v12 body:v14 categoryIdentifier:v17];

  sub_2288BC000(0, &qword_27D85B520, sub_2288DDB6C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2289315C0;
  aBlock = sub_22892F0C8();
  v68 = v20;
  sub_22892F5D8();
  v21 = MEMORY[0x277D83B88];
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 15;
  v22 = v48;
  (*(v6 + 104))(v8, *MEMORY[0x277D0FDC0], v48);
  v23 = sub_22892E308();
  v25 = v24;
  (*(v6 + 8))(v8, v22);
  aBlock = v23;
  v68 = v25;
  sub_22892F5D8();
  v26 = v49;
  v27 = v47;
  sub_22892E9A8();
  v28 = sub_22892EF68();
  (*(v51 + 8))(v26, v52);
  *(inited + 168) = v21;
  *(inited + 144) = v28;
  sub_22891CFE8(inited);
  swift_setDeallocating();
  sub_2288DDB6C();
  swift_arrayDestroy();
  v29 = sub_22892EFB8();

  [v18 setUserInfo_];

  v30 = v53;
  sub_22892DEA8();
  v31 = sub_22892DE58();
  (*(v54 + 8))(v30, v55);
  [v18 setExpirationDate_];

  [v18 copy];
  sub_22892F4F8();
  swift_unknownObjectRelease();
  sub_2288BC0FC(0, &qword_27D85B500, 0x277CE1FA0);
  swift_dynamicCast();
  v32 = v73;
  v33 = v58;
  sub_22892E9F8();
  v34 = v50;
  sub_22892E9D8();
  (*(v59 + 8))(v33, v60);
  v35 = *(v62 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationManager);
  v36 = v64;
  v37 = v63;
  v38 = v65;
  (*(v64 + 16))(v63, v27, v65);
  v39 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v40 = (v61 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = v35;
  (*(v36 + 32))(v41 + v39, v37, v38);
  *(v41 + v40) = v32;
  v42 = v35;
  v43 = v32;
  sub_22892E958();
  v44 = sub_22892F098();

  v71 = sub_2288DDBD0;
  v72 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v68 = 1107296256;
  v69 = sub_2288F3CC4;
  v70 = &block_descriptor_0;
  v45 = _Block_copy(&aBlock);

  [v42 removeDeliveredNotificationsWithCategoryIdentifier:v44 completionHandler:v45];
  _Block_release(v45);

  return v57(v34, v66);
}

uint64_t sub_2288DC9BC(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v46[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = sub_22892EDE8();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892E378();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892E9E8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_22892F3F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BC000(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v41 = v2;
  (*(v10 + 104))(v12, *MEMORY[0x277D10110], v9);
  sub_22892F3E8();
  (*(v10 + 8))(v12, v9);
  sub_22892F3B8();

  sub_22892E9F8();
  (*(v38 + 104))(v7, *MEMORY[0x277D0FE58], v39);
  sub_2288D3C38(v18, v16);
  sub_22892E398();
  swift_allocObject();
  v19 = sub_22892E388();
  v20 = *(v41 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_analyticsEventSubmissionManager);
  v46[0] = 0;
  if ([v20 submitEvent:v19 error:v46])
  {
    v21 = v46[0];
    sub_2288DE9B4(v18, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  }

  else
  {
    v23 = v46[0];
    v24 = sub_22892DE38();

    swift_willThrow();

    sub_2288DE9B4(v18, &qword_2813DFEE0, MEMORY[0x277CC9578]);
    v25 = v43;
    sub_22892EDC8();
    v26 = v24;
    v27 = sub_22892EDD8();
    v28 = sub_22892F378();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46[0] = v31;
      *v29 = 136446466;
      v32 = sub_22892F948();
      v34 = sub_2288B748C(v32, v33, v46);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2114;
      v35 = v24;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v36;
      *v30 = v36;
      _os_log_impl(&dword_2288B2000, v27, v28, "[%{public}s] Error submitting notification analytic: %{public}@)", v29, 0x16u);
      sub_2288DDB10(v30);
      MEMORY[0x22AAC47E0](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAC47E0](v31, -1, -1);
      MEMORY[0x22AAC47E0](v29, -1, -1);
    }

    else
    {
    }

    return (*(v44 + 8))(v25, v45);
  }
}

void sub_2288DCF84(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22892E998();
  v5 = sub_22892F098();

  [a1 postNotificationWithIdentifier:v5 content:a3 trigger:0 completion:0];
}

uint64_t sub_2288DD008(void *a1)
{
  v2 = v1;
  v57 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_22892EFA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22892EDE8();
  v58 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  sub_22892EDC8();
  v14 = a1;
  v15 = sub_22892EDD8();
  v16 = sub_22892F398();

  v17 = os_log_type_enabled(v15, v16);
  v54 = ObjectType;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v55 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v53 = v9;
    v21 = v20;
    v59 = v20;
    *v19 = 136446466;
    v22 = sub_22892F948();
    v24 = sub_2288B748C(v22, v23, &v59);
    v52 = v8;
    v25 = v6;
    v26 = v24;

    *(v19 + 4) = v26;
    *(v19 + 12) = 2080;
    v27 = sub_22892E0C8();
    v29 = sub_2288B748C(v27, v28, &v59);
    v30 = v58;
    v31 = v25;
    v8 = v52;

    *(v19 + 14) = v29;
    _os_log_impl(&dword_2288B2000, v15, v16, "[%{public}s] Posting notification (%s)", v19, 0x16u);
    swift_arrayDestroy();
    v32 = v21;
    v9 = v53;
    MEMORY[0x22AAC47E0](v32, -1, -1);
    v33 = v19;
    v5 = v55;
    MEMORY[0x22AAC47E0](v33, -1, -1);

    v34 = *(v30 + 8);
    v34(v13, v9);
  }

  else
  {

    v34 = *(v58 + 8);
    v34(v13, v9);
    v31 = v6;
  }

  v35 = v57;
  sub_2288DD504();
  v36 = *(v35 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_contentProtectionManager);
  if (!v36)
  {
    goto LABEL_7;
  }

  v37 = v36;
  if ([v37 isProtectedDataAvailable])
  {

LABEL_7:
    sub_22892E108();
    sub_2288CC0E0(v8);
    return (*(v31 + 8))(v8, v5);
  }

  v57 = v31;
  v55 = v5;
  sub_22892EDC8();
  v39 = v14;
  v40 = sub_22892EDD8();
  v41 = sub_22892F398();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v59 = v53;
    *v42 = 136446466;
    v43 = sub_22892F948();
    v45 = sub_2288B748C(v43, v44, &v59);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2080;
    sub_22892E108();
    sub_2288DDA38();
    v46 = v55;
    v47 = sub_22892F7E8();
    v49 = v48;
    (*(v57 + 8))(v8, v46);
    v50 = sub_2288B748C(v47, v49, &v59);

    *(v42 + 14) = v50;
    _os_log_impl(&dword_2288B2000, v40, v41, "[%{public}s] Skipping hold instruction for %s due to no protected data", v42, 0x16u);
    v51 = v53;
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v51, -1, -1);
    MEMORY[0x22AAC47E0](v42, -1, -1);
  }

  return (v34)(v56, v9);
}

void sub_2288DD504()
{
  sub_22892E0F8();
  v1 = sub_22892F098();

  sub_22892E128();
  v2 = sub_22892F098();

  sub_22892E0E8();
  sub_22892F0C8();
  v3 = objc_opt_self();
  v4 = sub_22892F098();

  v5 = [v3 createNotificationContentWithTitle:v1 body:v2 categoryIdentifier:v4];

  v6 = sub_22892E138();
  sub_2288DBA74(v6);

  v7 = sub_22892EFB8();

  [v5 setUserInfo_];

  [v5 copy];
  sub_22892F4F8();
  swift_unknownObjectRelease();
  sub_2288BC0FC(0, &qword_27D85B500, 0x277CE1FA0);
  swift_dynamicCast();
  v8 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationManager);
  sub_22892E0C8();
  v9 = sub_22892F098();

  [v8 postNotificationWithIdentifier:v9 content:v10 trigger:0 completion:0];
}

uint64_t (*sub_2288DD708(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  if (a1)
  {
    v3 = a1;
    v4 = a2;
    v5 = swift_allocObject();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    *(v6 + 16) = v3;
    *(v6 + 24) = a2;
    v7 = sub_2288DEB24;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_2288C0764(a1, a2);
  swift_getAtKeyPath();
  sub_2288C751C(v7, v6);
  if (!v10)
  {
    return 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v10;
  *(v8 + 24) = v11;
  return sub_2288DEB20;
}

uint64_t sub_2288DD7F8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t (*)(), uint64_t)@<X1>, uint64_t (**a3)()@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_2288DEA2C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_2288C0764(v5, v6);
  v9 = a2(v8, v7);
  v11 = v10;
  sub_2288C751C(v8, v7);
  if (v9)
  {
    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 24) = v11;
    v13 = sub_2288DEA24;
  }

  else
  {
    v13 = 0;
    result = 0;
  }

  *a3 = v13;
  a3[1] = result;
  return result;
}

unint64_t sub_2288DDA38()
{
  result = qword_2813DEDF0;
  if (!qword_2813DEDF0)
  {
    sub_22892EFA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEDF0);
  }

  return result;
}

unint64_t sub_2288DDA90()
{
  result = qword_27D85B510;
  if (!qword_27D85B510)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D85B510);
  }

  return result;
}

_OWORD *sub_2288DDB00(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2288DDB10(uint64_t a1)
{
  sub_2288D6D64(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2288DDB6C()
{
  if (!qword_27D85B528)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85B528);
    }
  }
}

void sub_2288DDBD0()
{
  v1 = *(sub_22892EA08() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2288DCF84(v3, v0 + v2, v4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2288DDC70(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22892F798();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2288DDCCC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = [a1 notificationManager];
  if (v8)
  {
    v9 = v8;
    v37 = a3;
    v39 = v4;
    swift_getMetatypeMetadata();
    v10 = a1;
    sub_22892F808();
    v11 = HKCreateSerialDispatchQueue();
    swift_unknownObjectRelease();
    v12 = objc_allocWithZone(MEMORY[0x277D107B8]);
    v13 = sub_22892F098();
    v36 = [v12 initWithProfile:v10 clientIdentifier:v13 queue:v11];

    v14 = [v10 daemon];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 contentProtectionManager];
    }

    else
    {
      v16 = 0;
    }

    v18 = [v10 daemon];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 behavior];
      v21 = [v20 isCompanionCapable];
    }

    else
    {
      v21 = 0;
    }

    v22 = [v10 daemon];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 behavior];
      v25 = [v24 isAppleWatch];
    }

    else
    {
      v25 = 0;
    }

    v26 = objc_allocWithZone(v4);
    v27 = OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_unitTest_didProcessNotificationSyncInstruction;
    sub_2288DEA34(0);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0;
    *&v26[v27] = v28;
    *&v26[OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationManager] = v9;
    *&v26[OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationStateKeyValueDomain] = a2;
    *&v26[OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationSyncClient] = v36;
    *&v26[OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_analyticsEventSubmissionManager] = v37;
    *&v26[OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_contentProtectionManager] = v16;
    v26[OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_shouldPostForwardedChangeNotifications] = v21;
    v26[OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_shouldIssueSendInstructionsWhenFiringVitalsOutlierNotification] = v25;
    v38.receiver = v26;
    v38.super_class = v4;
    v29 = v9;
    v30 = a2;
    v31 = v36;
    v32 = v37;
    v33 = v16;
    v17 = objc_msgSendSuper2(&v38, sel_init);
    v34 = v17;
    [v31 setDelegate_];
  }

  else
  {

    return 0;
  }

  return v17;
}

uint64_t sub_2288DDFE0(void *a1)
{
  v2 = v1;
  v96[2] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v4 = sub_22892EDE8();
  v94 = *(v4 - 8);
  v95 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v93 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v84 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v84 - v10;
  sub_2288BC000(0, &unk_27D85B530, MEMORY[0x277D10090], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v84 - v13;
  v15 = sub_22892EA08();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v84 - v20;
  v96[0] = 0;
  v91 = a1;
  v22 = [a1 pendingNotificationSendInstructionsWithError_];
  if (!v22)
  {
    v39 = v96[0];
    v40 = sub_22892DE38();

    swift_willThrow();
    goto LABEL_16;
  }

  v23 = v22;
  v90 = v2;
  v24 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_shouldPostForwardedChangeNotifications);
  v25 = v96[0];
  if (v24 == 1)
  {
    sub_2288CCBE0(v14);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v21, v14, v15);
      sub_22892EDC8();
      (*(v16 + 16))(v19, v21, v15);
      v41 = v23;
      v42 = sub_22892EDD8();
      v43 = sub_22892F398();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v96[0] = v89;
        *v44 = 136446722;
        v45 = sub_22892F948();
        v88 = v42;
        v47 = sub_2288B748C(v45, v46, v96);
        v87 = v43;
        v48 = v47;

        *(v44 + 4) = v48;
        *(v44 + 12) = 2082;
        v49 = sub_22892E998();
        v51 = v50;
        v85 = v41;
        v52 = *(v16 + 8);
        v86 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v52(v19, v15);
        v53 = v52;
        v54 = sub_2288B748C(v49, v51, v96);

        *(v44 + 14) = v54;
        *(v44 + 22) = 2082;
        v55 = [v85 messageIdentifiers];
        sub_22892F2A8();

        v56 = sub_22892F2B8();
        v58 = v57;

        v59 = sub_2288B748C(v56, v58, v96);

        *(v44 + 24) = v59;
        v60 = v88;
        _os_log_impl(&dword_2288B2000, v88, v87, "[%{public}s] Posting notification (%{public}s) from send instructions %{public}s", v44, 0x20u);
        v61 = v89;
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v61, -1, -1);
        MEMORY[0x22AAC47E0](v44, -1, -1);
      }

      else
      {

        v62 = *(v16 + 8);
        v62(v19, v15);
        v53 = v62;
      }

      (*(v94 + 8))(v11, v95);
      sub_2288DC088(v21);
      v53(v21, v15);
      goto LABEL_13;
    }

    sub_2288DE9B4(v14, &unk_27D85B530, MEMORY[0x277D10090]);
  }

  sub_22892EDC8();
  v26 = v23;
  v27 = sub_22892EDD8();
  v28 = sub_22892F398();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v96[0] = v30;
    *v29 = 136446466;
    v31 = sub_22892F948();
    v33 = sub_2288B748C(v31, v32, v96);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    v34 = [v26 messageIdentifiers];
    sub_22892F2A8();

    v35 = sub_22892F2B8();
    v37 = v36;

    v38 = sub_2288B748C(v35, v37, v96);

    *(v29 + 14) = v38;
    _os_log_impl(&dword_2288B2000, v27, v28, "[%{public}s] Ignoring send instructions %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v30, -1, -1);
    MEMORY[0x22AAC47E0](v29, -1, -1);
  }

  (*(v94 + 8))(v9, v95);
LABEL_13:
  v96[0] = 0;
  if (![v91 markPendingNotificationInstructionsAsProcessed:v23 error:v96])
  {
    v64 = v96[0];
    v40 = sub_22892DE38();

    swift_willThrow();
    v2 = v90;
LABEL_16:
    v65 = v93;
    sub_22892EDC8();
    v66 = v40;
    v67 = sub_22892EDD8();
    v68 = sub_22892F378();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v96[0] = v71;
      *v69 = 136446466;
      v72 = sub_22892F948();
      v74 = v2;
      v75 = sub_2288B748C(v72, v73, v96);

      *(v69 + 4) = v75;
      v2 = v74;
      *(v69 + 12) = 2114;
      v76 = v40;
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v69 + 14) = v77;
      *v70 = v77;
      _os_log_impl(&dword_2288B2000, v67, v68, "[%{public}s] Error processing pending send instructions: %{public}@", v69, 0x16u);
      sub_2288DDB10(v70);
      MEMORY[0x22AAC47E0](v70, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x22AAC47E0](v71, -1, -1);
      MEMORY[0x22AAC47E0](v69, -1, -1);

      (*(v94 + 8))(v93, v95);
    }

    else
    {

      (*(v94 + 8))(v65, v95);
    }

    goto LABEL_19;
  }

  v63 = v96[0];

  v2 = v90;
LABEL_19:
  v78 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_unitTest_didProcessNotificationSyncInstruction);
  KeyPath = swift_getKeyPath();
  v80 = MEMORY[0x28223BE20](KeyPath);
  *(&v84 - 2) = sub_2288DE990;
  *(&v84 - 1) = v80;

  os_unfair_lock_lock((v78 + 32));
  sub_2288DE998((v78 + 16), v96);
  os_unfair_lock_unlock((v78 + 32));

  v82 = v96[0];
  if (v96[0])
  {
    v83 = v96[1];
    (v96[0])(result);
    return sub_2288C751C(v82, v83);
  }

  return result;
}

uint64_t sub_2288DE9B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2288BC000(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2288DEA34(uint64_t a1)
{
  if (!qword_2813DEAA0)
  {
    sub_2288BC000(255, &unk_2813DE8A0, sub_2288DEACC, MEMORY[0x277D83D88]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22892F688();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEAA0);
    }
  }
}

unint64_t sub_2288DEACC()
{
  result = qword_2813DE8B0;
  if (!qword_2813DE8B0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2813DE8B0);
  }

  return result;
}

id SleepingSampleDaySummaryCurrentValueCache.registerObserver(_:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_2288BBECC(a1, a3, v3);
}

id SleepingSampleDaySummaryCurrentValueCache.unregisterObserver(_:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_2288E1C68(a1, v2);
}

uint64_t sub_2288DEBD0(uint64_t a1, uint64_t a2, int *a3)
{
  if ((sub_22892E768() & 1) == 0 || (sub_2288E1A3C(*(a1 + a3[5]), *(a2 + a3[5])) & 1) == 0 || *(a1 + a3[6]) != *(a2 + a3[6]))
  {
    return 0;
  }

  return sub_22892DEB8();
}

uint64_t sub_2288DEC64()
{
  v0 = sub_22892DFB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277CC9830], v0);
  sub_22892DFC8();
  return (*(v1 + 8))(v3, v0);
}

id SleepingSampleDaySummaryCurrentValueCache.__allocating_init(changeDetector:gregorianCalendarProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return sub_2288E1C88(a1, a3, a4, v4, ObjectType, a2);
}

id SleepingSampleDaySummaryCurrentValueCache.init(changeDetector:gregorianCalendarProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return sub_2288E1CF8(a1, a3, a4, v4, ObjectType, a2);
}

uint64_t sub_2288DEE24@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v62 = a1;
  sub_2288BB4E0(0);
  v54 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = &v51 - v6;
  v7 = sub_22892EFA8();
  v57 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  sub_2288B5D1C(0);
  v15 = v14;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v51 - v20;
  MEMORY[0x28223BE20](v19);
  v51 = &v51 - v22;
  v23 = sub_22892E048();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22892E478();
  v59 = *(v27 - 8);
  v60 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v58 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v51 - v31;
  (*(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_gregorianCalendarProvider))(v30);
  sub_22892E458();
  (*(v24 + 8))(v26, v23);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v34 = result;
    v35 = [result isAppleWatch];

    if (v35)
    {
LABEL_5:
      v49 = v59;
      v50 = v60;
      (*(v59 + 16))(v58, v32, v60);
      sub_22892E738();
      sub_22892E6F8();
      return (*(v49 + 8))(v32, v50);
    }

    sub_22892E438();
    v36 = v57;
    v37 = *(v57 + 16);
    v37(v13, v21, v7);
    v38 = v21;
    v39 = v36;
    sub_2288C0C14(v38, sub_2288B5D1C);
    sub_22892E438();
    v40 = v55;
    v37(v55, &v18[*(v15 + 36)], v7);
    sub_2288C0C14(v18, sub_2288B5D1C);
    v41 = v56;
    sub_22892EF78();
    v42 = *(v39 + 8);
    v42(v40, v7);
    sub_2288C0C74(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
    result = sub_22892F048();
    if (result)
    {
      v43 = *(v39 + 32);
      v57 = v15;
      v44 = v52;
      v43(v52, v13, v7);
      v45 = v54;
      v43((v44 + *(v54 + 48)), v41, v7);
      v62 = v32;
      v46 = v53;
      sub_2288BFD84(v44, v53, sub_2288BB4E0);
      v47 = *(v45 + 48);
      v48 = v51;
      v43(v51, v46, v7);
      v42((v46 + v47), v7);
      sub_2288E2948(v44, v46, sub_2288BB4E0);
      v43(&v48[*(v57 + 36)], (v46 + *(v45 + 48)), v7);
      v42(v46, v7);
      v32 = v62;
      sub_22892E448();
      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2288DF43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[1] = a6;
  v10 = sub_22892EDE8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0);
  if (sub_22892DF28())
  {
    sub_2288E27DC(a1, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
    v14 = sub_22892E778();
    (*(*(v14 - 8) + 16))(a1, a3, v14);
    v15 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
    v16 = v15[7];
    v17 = sub_22892DEF8();
    (*(*(v17 - 8) + 16))(a1 + v16, a5, v17);
    *(a1 + v15[5]) = a4;
    *(a1 + v15[6]) = 0;
    (*(*(v15 - 1) + 56))(a1, 0, 1, v15);
  }

  else
  {
    sub_22892EDC8();
    v19 = sub_22892EDD8();
    v20 = sub_22892F398();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136446210;
      v23 = sub_22892F948();
      v25 = sub_2288B748C(v23, v24, &v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2288B2000, v19, v20, "[%{public}s] Ignoring invalidated population attempt", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AAC47E0](v22, -1, -1);
      MEMORY[0x22AAC47E0](v21, -1, -1);
    }

    return (*(v11 + 8))(v13, v10);
  }
}

Swift::Void __swiftcall SleepingSampleDaySummaryCurrentValueCache.sleepingSampleDataTypesAddedInDateInterval(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_state);
  v5 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_2288E2070((v4 + v5), aBlock);
  os_unfair_lock_unlock((v4 + v6));
  v7 = aBlock[0];
  v8 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_observers);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v7;
  v10 = *(v8 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2288E208C;
  *(v11 + 24) = v9;
  aBlock[4] = sub_2288E2098;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288E19DC;
  aBlock[3] = &block_descriptor_1;
  v12 = _Block_copy(aBlock);

  [v10 notifyObservers_];
  _Block_release(v12);
}

uint64_t sub_2288DF8E8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a4;
  v44 = a3;
  v45 = a2;
  sub_2288E22C4(0, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_22892DF58();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22892EDE8();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = type metadata accessor for SleepingSampleCacheRange(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v20;
  v23 = *(v20 + 48);
  if (v23(a1, 1, v19) || (sub_2288BFD84(a1, v22, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry), sub_2288DFED0(v18), sub_2288C0C14(v22, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry), v24 = sub_2288CD2A4(v45), sub_2288C0C14(v18, type metadata accessor for SleepingSampleCacheRange), !v24))
  {
    sub_2288BFFF4(a1, v7, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
    v32 = v23(v7, 1, v19);
    result = sub_2288E27DC(v7, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
    if (v32 != 1)
    {
      v41 = 0;
      goto LABEL_12;
    }

    sub_22892EDC8();
    v34 = sub_22892EDD8();
    v35 = sub_22892F398();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53 = v37;
      *v36 = 136446210;
      v38 = sub_22892F948();
      v40 = sub_2288B748C(v38, v39, &v53);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_2288B2000, v34, v35, "[%{public}s] Resetting cache token for samples added while cache is empty", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AAC47E0](v37, -1, -1);
      MEMORY[0x22AAC47E0](v36, -1, -1);
    }

    (*(v47 + 8))(v13, v48);
  }

  else
  {
    sub_22892EDC8();
    v25 = sub_22892EDD8();
    v26 = sub_22892F398();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v53 = v28;
      *v27 = 136446210;
      v29 = sub_22892F948();
      v31 = sub_2288B748C(v29, v30, &v53);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2288B2000, v25, v26, "[%{public}s] Evicting cache for samples added in the cached range", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AAC47E0](v28, -1, -1);
      MEMORY[0x22AAC47E0](v27, -1, -1);
    }

    (*(v47 + 8))(v15, v48);
  }

  sub_2288E27DC(a1, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
  v41 = 1;
  (*(v46 + 56))(a1, 1, 1, v19);
  v42 = v49;
  sub_22892DF48();
  v43 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0);
  result = (*(v50 + 40))(&a1[*(v43 + 20)], v42, v51);
LABEL_12:
  *v52 = v41;
  return result;
}

uint64_t sub_2288DFED0@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  sub_2288C0BA8(0);
  v98 = v2;
  v89 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v93 = &v77 - v6;
  v95 = sub_22892E6D8();
  v97 = *(v95 - 8);
  v7 = MEMORY[0x28223BE20](v95);
  v94 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v91 = &v77 - v9;
  sub_2288E22C4(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v79 = &v77 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v77 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v92 = &v77 - v19;
  MEMORY[0x28223BE20](v18);
  v80 = &v77 - v20;
  v96 = sub_22892E048();
  v88 = *(v96 - 1);
  MEMORY[0x28223BE20](v96);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_22892E478();
  v84 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_22892EFA8();
  v83 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22892DDC8();
  v27 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_22892DEF8();
  v30 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v1;
  sub_22892E758();
  sub_22892E708();
  sub_22892E468();
  (*(v84 + 8))(v24, v87);
  sub_22892EEC8();
  (*(v88 + 8))(v22, v96);
  (*(v83 + 8))(v26, v86);
  v86 = v32;
  sub_22892DD98();
  (*(v27 + 8))(v29, v85);
  v33 = *(*(v82 + *(type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0) + 20)) + 16);
  v34 = (v97 + 4);
  v35 = (v97 + 1);
  v36 = (v30 + 48);
  v87 = v30;
  v37 = (v30 + 56);
  v38 = v33;
  v96 = v36;
  v97 = v37;

  v88 = result;
  if (v38)
  {
    v40 = 0;
    v41 = result + ((*(v89 + 80) + 32) & ~*(v89 + 80));
    v42 = *(v89 + 72);
    v90 = v5;
    do
    {
      v45 = v93;
      sub_2288BFD84(v41, v93, sub_2288C0BA8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v100 = *v45;
        v43 = v100;
        v101 = *(v45 + 8);
        sub_2288B7AEC();
        swift_willThrowTypedImpl();

        v44 = v92;
        (*v97)(v92, 1, 1, v99);
      }

      else
      {
        v46 = v91;
        v47 = v45;
        v48 = v95;
        (*v34)(v91, v47, v95);
        v49 = v17;
        v50 = v34;
        v51 = v42;
        v52 = v38;
        v53 = v92;
        sub_22892E5B8();
        v54 = v46;
        v44 = v53;
        v38 = v52;
        v42 = v51;
        v34 = v50;
        v17 = v49;
        v5 = v90;
        (*v35)(v54, v48);
        if ((*v96)(v44, 1, v99) != 1)
        {
          sub_2288E27DC(v44, &qword_2813DFEE0, MEMORY[0x277CC9578]);
          goto LABEL_9;
        }
      }

      sub_2288E27DC(v44, &qword_2813DFEE0, MEMORY[0x277CC9578]);
      ++v40;
      v41 += v42;
    }

    while (v38 != v40);
    v40 = v38;
LABEL_9:
    result = v88;
  }

  else
  {
    v40 = 0;
  }

  v55 = *(result + 16);
  if (v40 == v55)
  {
    v56 = v80;
    v57 = v99;
    (*v97)(v80, 1, 1, v99);

    v58 = v87;
    goto LABEL_21;
  }

  if (!v55)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v59 = v55 - 1;
  v60 = *(v89 + 72);
  v61 = result + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + v60 * (v55 - 1);
  v62 = -v60;
  while (1)
  {
    sub_2288BFD84(v61, v5, sub_2288C0BA8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v100 = *v5;
    v63 = v100;
    v101 = v5[8];
    sub_2288B7AEC();
    swift_willThrowTypedImpl();

    (*v97)(v17, 1, 1, v99);
LABEL_16:
    result = sub_2288E27DC(v17, &qword_2813DFEE0, MEMORY[0x277CC9578]);
    --v59;
    v61 += v62;
    if (v59 >= v55)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  v64 = v94;
  v65 = v95;
  (*v34)(v94, v5, v95);
  sub_22892E5B8();
  (*v35)(v64, v65);
  v66 = *v96;
  if ((*v96)(v17, 1, v99) == 1)
  {
    goto LABEL_16;
  }

  v67 = MEMORY[0x277CC9578];
  sub_2288E27DC(v17, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  v68 = v79;
  sub_2288E1760(v61, v79);
  v69 = v78;
  sub_2288BFFF4(v68, v78, &qword_2813DFEE0, v67);
  v57 = v99;
  result = (v66)(v69, 1, v99);
  if (result == 1)
  {
    goto LABEL_24;
  }

  v58 = v87;
  v70 = v87 + 32;
  v56 = v80;
  (*(v87 + 32))(v80, v69, v57);
  sub_2288E27DC(v68, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  (*(v70 + 24))(v56, 0, 1, v57);

LABEL_21:
  v71 = v81;
  sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  v72 = MEMORY[0x22AAC3A10](*MEMORY[0x277CCC938]);
  v73 = HKRollingBaselineConfigurationForQuantityType();

  [v73 maximumWindowDuration];
  v75 = v74;

  (*(v58 + 32))(v71, v86, v57);
  v76 = type metadata accessor for SleepingSampleCacheRange(0);
  result = sub_2288E284C(v56, v71 + *(v76 + 20));
  *(v71 + *(v76 + 24)) = v75;
  return result;
}

uint64_t sub_2288E09D4(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  v6 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v6 + 8))(a2, ObjectType, v6);
  if (a3)
  {
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      v9 = v5 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = result;
      v11 = swift_getObjectType();
      v12 = *(v10 + 16);
      swift_unknownObjectRetain();
      v12(a2, v11, v10);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall SleepingSampleDaySummaryCurrentValueCache.sleepingSampleDataTypesRemoved()()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_state);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_2288E0C0C(v2 + v3, ObjectType);
  os_unfair_lock_unlock((v2 + v4));
  v5 = *(*(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_observers) + 16);
  aBlock[4] = sub_22891DD34;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288E19DC;
  aBlock[3] = &block_descriptor_6;
  v6 = _Block_copy(aBlock);

  [v5 notifyObservers_];
  _Block_release(v6);
}

uint64_t sub_2288E0C0C(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v27 = sub_22892DF58();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892EDE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v10 = sub_22892EDD8();
  v11 = sub_22892F398();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v7;
    v13 = v12;
    v23 = swift_slowAlloc();
    v28 = v23;
    *v13 = 136446210;
    v14 = sub_22892F948();
    v26 = a1;
    v16 = sub_2288B748C(v14, v15, &v28);
    v24 = v6;
    v17 = v16;
    a1 = v26;

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2288B2000, v10, v11, "[%{public}s] Evicting cache for samples removed", v13, 0xCu);
    v18 = v23;
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AAC47E0](v18, -1, -1);
    MEMORY[0x22AAC47E0](v13, -1, -1);

    (*(v25 + 8))(v9, v24);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_2288E27DC(a1, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
  v19 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  sub_22892DF48();
  v20 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0);
  return (*(v3 + 40))(a1 + *(v20 + 20), v5, v27);
}

Swift::String __swiftcall SleepingSampleDaySummaryCurrentValueCache.diagnosticDescription()()
{
  v31 = sub_22892DEF8();
  v27 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22892E778();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288E22C4(0, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_state);
  v13 = *(*v12 + *MEMORY[0x277D841D0] + 16);
  v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v12 + v14));
  sub_2288BFFF4(v12 + v13, v7, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
  os_unfair_lock_unlock((v12 + v14));
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2288E27DC(v7, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_22892F648();

    v33 = 0xD000000000000014;
    v34 = 0x8000000228933B30;
    sub_22892DED8();
    v15 = v28;
    sub_2288DEE24(v2, v28);
    (*(v27 + 8))(v2, v31);
    sub_2288C0C74(&qword_27D85B3E8, MEMORY[0x277D0FFD8], MEMORY[0x277D0FFE0]);
    v16 = v30;
    v17 = sub_22892F7E8();
    MEMORY[0x22AAC3770](v17);

    (*(v29 + 8))(v15, v16);
    v18 = v33;
    v19 = v34;
  }

  else
  {
    sub_2288E2948(v7, v11, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_22892F648();
    MEMORY[0x22AAC3770](0xD000000000000010, 0x8000000228933B50);
    sub_2288C0C74(&qword_27D85B3E8, MEMORY[0x277D0FFD8], MEMORY[0x277D0FFE0]);
    v20 = sub_22892F7E8();
    MEMORY[0x22AAC3770](v20);

    MEMORY[0x22AAC3770](0x2E65756C6176202CLL, 0xEF203A746E756F63);
    v32 = *(*&v11[*(v8 + 20)] + 16);
    v21 = sub_22892F7E8();
    MEMORY[0x22AAC3770](v21);

    MEMORY[0x22AAC3770](0x486568636163202CLL, 0xED0000203A737469);
    v32 = *&v11[*(v8 + 24)];
    v22 = sub_22892F7E8();
    MEMORY[0x22AAC3770](v22);

    MEMORY[0x22AAC3770](0x657461657263202CLL, 0xEB00000000203A64);
    sub_2288C0C74(&qword_27D85B550, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v23 = sub_22892F7E8();
    MEMORY[0x22AAC3770](v23);

    MEMORY[0x22AAC3770](41, 0xE100000000000000);
    v18 = v33;
    v19 = v34;
    sub_2288C0C14(v11, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
  }

  v24 = v18;
  v25 = v19;
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

id SleepingSampleDaySummaryCurrentValueCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepingSampleDaySummaryCurrentValueCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2288E16B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_2288BBECC(a1, a3, v3);
}

id sub_2288E1708(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_2288E1C68(a1, v2);
}

uint64_t sub_2288E1760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2288C0BA8(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892E6D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BFD84(a1, v6, sub_2288C0BA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v6;
    v11 = v14;
    v15 = v6[8];
    sub_2288B7AEC();
    swift_willThrowTypedImpl();

    v12 = sub_22892DEF8();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_22892E5B8();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_2288E1958(uint64_t a1, void (*a2)(void *))
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    v6[0] = a1;
    v6[1] = v4;
    a2(v6);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_2288E19DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2288E1A3C(uint64_t a1, uint64_t a2)
{
  sub_2288C0BA8(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_2288BFD84(v13, v10, sub_2288C0BA8);
        sub_2288BFD84(v14, v7, sub_2288C0BA8);
        sub_22892E6D8();
        sub_2288C0C74(&qword_27D85B5D8, MEMORY[0x277D0FFC8], MEMORY[0x277D0FFD0]);
        sub_2288E2788();
        sub_2288B7AEC();
        v16 = sub_22892F8E8();
        sub_2288C0C14(v7, sub_2288C0BA8);
        sub_2288C0C14(v10, sub_2288C0BA8);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

id sub_2288E1C88(uint64_t a1, uint64_t a2, uint64_t a3, Class a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(a4);

  return sub_2288E1CF8(a1, a2, a3, v11, a5, a6);
}

id sub_2288E1CF8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_state;
  v16 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_22892DF48();
  sub_2288E28E0(0);
  v17 = swift_allocObject();
  *(v17 + ((*(*v17 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2288E2948(v14, v17 + *(*v17 + *MEMORY[0x277D841D0] + 16), type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State);
  *&a4[v15] = v17;
  v18 = &a4[OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_changeDetector];
  *v18 = a1;
  *(v18 + 1) = a6;
  v19 = &a4[OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_gregorianCalendarProvider];
  *v19 = a2;
  *(v19 + 1) = a3;
  swift_unknownObjectRetain();

  sub_22892F948();
  sub_2288BC0FC(0, &unk_2813DEB10, 0x277D86200);
  v20 = sub_22892F488();
  sub_2288E22C4(0, qword_2813DFB80, sub_2288E29B0, type metadata accessor for ObserverSet);
  v21 = swift_allocObject();
  v22 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v23 = sub_22892F098();

  v24 = [v22 initWithName:v23 loggingCategory:v20];

  *(v21 + 16) = v24;
  *&a4[OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_observers] = v21;
  v32.receiver = a4;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, sel_init);
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 sharedDiagnosticManager];
  [v28 addObject_];

  (*(a6 + 8))(v27, &protocol witness table for SleepingSampleDaySummaryCurrentValueCache, 0, v31, a6);
  swift_unknownObjectRelease();

  return v27;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2288E213C(uint64_t a1)
{
  sub_2288E22C4(319, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22892DF58();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2288E21F0(uint64_t a1)
{
  sub_22892E778();
  if (v1 <= 0x3F)
  {
    sub_2288E22C4(319, &qword_2813DECF0, sub_2288C0BA8, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22892DEF8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2288E22C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2288E2328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288E22C4(0, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  sub_2288E26F4(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  sub_2288BFFF4(a1, v14, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
  sub_2288BFFF4(a2, &v14[v15], qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_2288BFFF4(v14, v10, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_2288E2948(&v14[v15], v7, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
      if ((sub_22892E768() & 1) != 0 && (sub_2288E1A3C(*&v10[*(v4 + 20)], *&v7[*(v4 + 20)]) & 1) != 0 && *&v10[*(v4 + 24)] == *&v7[*(v4 + 24)])
      {
        v18 = sub_22892DEB8();
        sub_2288C0C14(v7, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
        sub_2288C0C14(v10, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
        sub_2288E27DC(v14, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
        if (v18)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_2288C0C14(v7, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
        sub_2288C0C14(v10, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
        sub_2288E27DC(v14, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
      }

LABEL_14:
      v17 = 0;
      return v17 & 1;
    }

    sub_2288C0C14(v10, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
LABEL_7:
    sub_2288C0C14(v14, sub_2288E26F4);
    goto LABEL_14;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_2288E27DC(v14, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
LABEL_4:
  type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0);
  v17 = sub_22892DF28();
  return v17 & 1;
}

void sub_2288E26F4(uint64_t a1)
{
  if (!qword_27D85B5D0)
  {
    sub_2288E22C4(255, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85B5D0);
    }
  }
}

unint64_t sub_2288E2788()
{
  result = qword_27D85B5E0;
  if (!qword_27D85B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85B5E0);
  }

  return result;
}

uint64_t sub_2288E27DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2288E22C4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2288E284C(uint64_t a1, uint64_t a2)
{
  sub_2288E22C4(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2288E28E0(uint64_t a1)
{
  if (!qword_2813DEAB0)
  {
    type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22892F688();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEAB0);
    }
  }
}

uint64_t sub_2288E2948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2288E29B0()
{
  result = qword_2813DF760[0];
  if (!qword_2813DF760[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2813DF760);
  }

  return result;
}

uint64_t sub_2288E2A3C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22892F098();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_22892F098();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v5 = sub_22892F0C8();
      v7 = v6;

      v8 = v5 == 1095587653 && v7 == 0xE400000000000000;
      if (v8 || (sub_22892F818() & 1) != 0)
      {

        return type metadata accessor for EWMABaselineCalculator(0);
      }

      if (v5 != 0x6942746E65636552 || v7 != 0xEA00000000007361)
      {
        sub_22892F818();
      }
    }
  }

  return type metadata accessor for RecentBiasBaselineCalculator(0);
}

uint64_t sub_2288E2BCC(uint64_t a1)
{
  sub_2288DB154();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228931940;
  v3 = objc_opt_self();
  *(v2 + 32) = [v3 activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier_];
  *(v2 + 40) = [v3 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier_];
  sub_22892E3A8();
  v4 = sub_22892F098();

  v5 = [v3 watchAppIsInstalledForBundleIdentifier_];

  *(v2 + 48) = v5;
  *(v2 + 56) = [v3 notAgeGatedForUserDefaultsKey_];
  return v2;
}

uint64_t sub_2288E2CD0()
{
  sub_2288DB154();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228931950;
  v1 = objc_opt_self();
  sub_2288E3AAC(0, &unk_2813DE998, type metadata accessor for HKFeatureIdentifier, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228931960;
  v3 = *MEMORY[0x277CCC0E8];
  *(v2 + 32) = *MEMORY[0x277CCC0E8];
  type metadata accessor for HKFeatureIdentifier(0);
  v4 = v3;
  v5 = sub_22892F208();

  v6 = [v1 onboardingRecordsArePresentForPrerequisiteFeaturesWithIdentifiers_];

  *(v0 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228930AF0;
  *(v7 + 32) = [objc_allocWithZone(MEMORY[0x277CCD408]) initWithFeatureIdentifier:v4 isOnWhenSettingIsAbsent:0];
  sub_2288BC0FC(0, qword_2813DEB80, 0x277CCD408);
  v8 = sub_22892F208();

  v9 = [v1 prerequisiteFeaturesAreOnWithFeatureSettings_];

  *(v0 + 40) = v9;
  *(v0 + 48) = [v1 wristDetectionIsEnabledForActiveWatch];
  return v0;
}

id sub_2288E2EA8()
{
  v0 = *MEMORY[0x277CCC0F0];
  sub_2288E3AAC(0, &qword_2813DE990, sub_2288E3B10, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228931970;
  v2 = *MEMORY[0x277CCBEB0];
  *(inited + 32) = *MEMORY[0x277CCBEB0];
  sub_2288DB154();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_228930AF0;
  v4 = v2;
  sub_2288E2BCC(v0);
  sub_2288E3BE8(0, &unk_2813DEBA8, &protocolRef_HKFeatureAvailabilityRequirement);
  v5 = sub_22892F208();

  *(v3 + 32) = v5;
  v6 = *MEMORY[0x277CCBE10];
  *(inited + 40) = v3;
  *(inited + 48) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228931950;
  v8 = v6;
  sub_2288E2BCC(v0);
  v9 = sub_22892F208();

  *(v7 + 32) = v9;
  sub_2288E2CD0();
  v10 = sub_22892F208();

  *(v7 + 40) = v10;
  v11 = objc_opt_self();
  v12 = *MEMORY[0x277CCC158];
  *(v7 + 48) = [v11 onboardingUserDefaultsKeyIsPresent_];
  v13 = *MEMORY[0x277CCBE38];
  *(inited + 56) = v7;
  *(inited + 64) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_228931950;
  v15 = v13;
  v44 = v0;
  sub_2288E2BCC(v0);
  v16 = sub_22892F208();

  *(v14 + 32) = v16;
  v17 = *MEMORY[0x277CCC250];
  *(v14 + 40) = [v11 notAgeGatedForUserDefaultsKey_];
  *(v14 + 48) = [v11 onboardingUserDefaultsKeyIsNotPresent_];
  v18 = *MEMORY[0x277CCBE50];
  *(inited + 72) = v14;
  *(inited + 80) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_228931950;
  v20 = v18;
  sub_2288E2BCC(v0);
  v21 = sub_22892F208();

  *(v19 + 32) = v21;
  *(v19 + 40) = [v11 notAgeGatedForUserDefaultsKey_];
  *(v19 + 48) = [v11 onboardingUserDefaultsKeyIsNotPresent_];
  v22 = *MEMORY[0x277CCBE68];
  *(inited + 88) = v19;
  *(inited + 96) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_228930AF0;
  v24 = *MEMORY[0x277CCE3A8];
  v45 = *MEMORY[0x277CCE3A8];
  v25 = v22;
  *(v23 + 32) = [v11 notificationAuthorizedWithBundleIdentifier_];
  v26 = *MEMORY[0x277CCBE70];
  *(inited + 104) = v23;
  *(inited + 112) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_228931950;
  v28 = v26;
  sub_2288E2BCC(v44);
  v29 = sub_22892F208();

  *(v27 + 32) = v29;
  *(v27 + 40) = [v11 notAgeGatedForUserDefaultsKey_];
  *(v27 + 48) = [v11 onboardingUserDefaultsKeyIsPresent_];
  v30 = *MEMORY[0x277CCBEA0];
  *(inited + 120) = v27;
  *(inited + 128) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_228931980;
  v32 = v30;
  sub_2288E2BCC(v44);
  v33 = sub_22892F208();

  *(v31 + 32) = v33;
  sub_2288E2CD0();
  v34 = sub_22892F208();

  *(v31 + 40) = v34;
  *(v31 + 48) = [v11 notificationAuthorizedWithBundleIdentifier_];
  *(v31 + 56) = [v11 onboardingUserDefaultsKeyIsPresent_];
  *(v31 + 64) = [v11 notificationsOnForUserDefaultsKey_];
  v35 = *MEMORY[0x277CCBEA8];
  *(inited + 136) = v31;
  *(inited + 144) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_228930B00;
  v37 = v35;
  sub_2288E2BCC(v44);
  v38 = sub_22892F208();

  *(v36 + 32) = v38;
  *(v36 + 40) = [v11 notificationsOnForUserDefaultsKey_];
  *(inited + 152) = v36;
  *(inited + 160) = sub_22892F438();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_228930AF0;
  *(v39 + 32) = [v11 heartRateIsEnabledInPrivacy];
  *(inited + 168) = v39;
  sub_22891D2AC(inited);
  swift_setDeallocating();
  sub_2288E3B10(0);
  swift_arrayDestroy();
  v40 = objc_allocWithZone(MEMORY[0x277CCD420]);
  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_2288E3B80(0);
  sub_2288E3C48();
  v41 = sub_22892EFB8();

  v42 = [v40 initWithRequirementsByContext_];

  return v42;
}

id sub_2288E34E8(void *a1)
{
  sub_2288E3AAC(0, &unk_2813DFED0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v35 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v15 = result;
    v16 = [result isAppleWatch];

    if (v16)
    {
      v17 = sub_22892DF58();
      (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    }

    else
    {
      v18 = HKNRCAPABILITY_HARMONIA();
      if (v18)
      {
        v19 = v18;
        sub_22892DF38();

        v20 = sub_22892DF58();
        (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
      }

      else
      {
        v21 = sub_22892DF58();
        (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
      }

      sub_2288E38F8(v8, v11);
    }

    sub_2288E38F8(v11, v13);
    v35 = *MEMORY[0x277CCC0F0];
    v22 = sub_2288E2EA8();
    v36 = v13;
    sub_2288E398C(v13, v5);
    v23 = [objc_opt_self() uncheckedAvailability];
    v24 = [objc_allocWithZone(MEMORY[0x277D106E8]) init];
    sub_2288BC0FC(0, &unk_2813DEB10, 0x277D86200);
    v25 = sub_22892F488();
    v26 = sub_22892DF58();
    v27 = v5;
    v28 = *(v26 - 8);
    v29 = (*(v28 + 48))(v27, 1, v26);
    v30 = a1;
    v31 = 0;
    if (v29 != 1)
    {
      v31 = sub_22892DF18();
      (*(v28 + 8))(v27, v26);
    }

    v32 = objc_allocWithZone(MEMORY[0x277D106D8]);
    v33 = v35;
    v34 = [v32 initWithProfile:v30 featureIdentifier:v35 availabilityRequirements:v22 currentOnboardingVersion:1 pairedDeviceCapability:v31 regionAvailabilityProvider:v23 disableAndExpiryProvider:v24 loggingCategory:v25];

    sub_2288E3A20(v36);
    return v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKNRCAPABILITY_HARMONIA()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"210C1233-537B-4A1E-8EE0-253962851B43"];

  return v0;
}

uint64_t sub_2288E38F8(uint64_t a1, uint64_t a2)
{
  sub_2288E3AAC(0, &unk_2813DFED0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288E398C(uint64_t a1, uint64_t a2)
{
  sub_2288E3AAC(0, &unk_2813DFED0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288E3A20(uint64_t a1)
{
  sub_2288E3AAC(0, &unk_2813DFED0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2288E3AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2288E3B10(uint64_t a1)
{
  if (!qword_2813DEBB8)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_2288E3B80(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DEBB8);
    }
  }
}

void sub_2288E3B80(uint64_t a1)
{
  if (!qword_2813DED00)
  {
    sub_2288E3BE8(255, &qword_2813DEB98, &protocolRef_HKFeatureAvailabilityRequirementsProviding);
    v1 = sub_22892F288();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DED00);
    }
  }
}

uint64_t sub_2288E3BE8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2288E3C48()
{
  result = qword_2813DEBE0;
  if (!qword_2813DEBE0)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEBE0);
  }

  return result;
}

char *sub_2288E3CF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v42 = a4;
  ObjectType = swift_getObjectType();
  v12 = sub_22892E1E8();
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_debounceQueue_removalOperation] = 0;
  v15 = sub_22892F098();
  v16 = HKCreateSerialDispatchQueue();

  *&v6[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_debounceQueue] = v16;
  v17 = [a1 dataManager];
  *&v6[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_dataManager] = v17;
  sub_2288BC0FC(0, &unk_2813DEB10, 0x277D86200);
  v18 = sub_22892F488();
  sub_2288E7228(0, qword_2813DFB80, sub_2288E29B0, type metadata accessor for ObserverSet);
  v19 = swift_allocObject();
  v20 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v21 = sub_22892F098();
  v22 = [v20 initWithName:v21 loggingCategory:v18];

  *(v19 + 16) = v22;
  *&v6[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_observers] = v19;
  v23 = &v6[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_unitTest_didBeginObservingSleepingSampleDataTypes];
  *v23 = a2;
  *(v23 + 1) = a3;
  v24 = objc_opt_self();
  sub_2288C0764(a2, a3);
  result = [v24 sharedBehavior];
  if (result)
  {
    v26 = result;
    v27 = [result isAppleInternalInstall];

    if (v27)
    {
    }

    else
    {
      v28 = 0;
    }

    *&v6[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_settingsProvider] = v28;
    v44.receiver = v6;
    v44.super_class = ObjectType;
    v29 = objc_msgSendSuper2(&v44, sel_init);
    v30 = *&v29[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_debounceQueue];
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = objc_allocWithZone(MEMORY[0x277CCDD98]);
    aBlock[4] = sub_2288E728C;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2288F3CC4;
    aBlock[3] = &block_descriptor_20;
    v33 = _Block_copy(aBlock);
    v34 = v29;

    v35 = [v32 initWithMode:1 clock:1 queue:v30 delay:v33 block:a5];
    _Block_release(v33);

    v36 = *&v34[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_debounceQueue_removalOperation];
    *&v34[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_debounceQueue_removalOperation] = v35;

    [a1 registerProfileReadyObserver:v34 queue:0];
    if (*&v34[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_settingsProvider])
    {
      v38 = v40;
      v37 = v41;
      (*(v40 + 104))(v14, *MEMORY[0x277D62628], v41);
      sub_22892E1F8();

      sub_2288C751C(a2, a3);
      (*(v38 + 8))(v14, v37);
    }

    else
    {

      sub_2288C751C(a2, a3);
    }

    return v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2288E4184(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_2288E41D8();
  }
}

void sub_2288E41D8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v6 = sub_22892EDD8();
  v7 = sub_22892F368();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446210;
    v10 = sub_22892F948();
    v12 = sub_2288B748C(v10, v11, aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2288B2000, v6, v7, "[%{public}s] sleeping samples removed, notifying observers", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAC47E0](v9, -1, -1);
    MEMORY[0x22AAC47E0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = *(*(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_observers) + 16);
  aBlock[4] = sub_22891DD34;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288E19DC;
  aBlock[3] = &block_descriptor_23;
  v14 = _Block_copy(aBlock);

  [v13 notifyObservers_];
  _Block_release(v14);
}

id sub_2288E4424()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22892E1E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892EDE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v11 = sub_22892EDD8();
  v12 = sub_22892F398();
  v13 = os_log_type_enabled(v11, v12);
  v31 = ObjectType;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v30 = v7;
    v15 = v14;
    v28 = v14;
    v29 = swift_slowAlloc();
    v32 = v29;
    *v15 = 136446210;
    v16 = sub_22892F948();
    v18 = v8;
    v19 = v6;
    v20 = v1;
    v21 = v4;
    v22 = v3;
    v23 = sub_2288B748C(v16, v17, &v32);

    v24 = v28;
    *(v28 + 4) = v23;
    v3 = v22;
    v4 = v21;
    v1 = v20;
    v6 = v19;
    _os_log_impl(&dword_2288B2000, v11, v12, "[%{public}s] deinit", v24, 0xCu);
    v25 = v29;
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AAC47E0](v25, -1, -1);
    MEMORY[0x22AAC47E0](v24, -1, -1);

    (*(v18 + 8))(v10, v30);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  sub_2288E4724();
  if (*&v1[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_settingsProvider])
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D62628], v3);
    sub_22892E208();
    (*(v4 + 8))(v6, v3);
  }

  v33.receiver = v1;
  v33.super_class = v31;
  return objc_msgSendSuper2(&v33, sel_dealloc);
}

uint64_t sub_2288E4724()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v6 = sub_22892EDD8();
  v7 = sub_22892F398();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446210;
    v10 = sub_22892F948();
    v12 = sub_2288B748C(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2288B2000, v6, v7, "[%{public}s] stop observing sleeping sample data types", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAC47E0](v9, -1, -1);
    MEMORY[0x22AAC47E0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = sub_2288E62B0();
  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22892F588())
  {
    v16 = 0;
    v17 = OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_dataManager;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x22AAC3CC0](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      [*(v1 + v17) removeObserver:v1 forDataType:v18];

      ++v16;
      if (v20 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_2288E4A4C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v6 = sub_22892EDD8();
  v7 = sub_22892F398();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136446210;
    v10 = sub_22892F948();
    v12 = sub_2288B748C(v10, v11, &v24);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2288B2000, v6, v7, "[%{public}s] start observing sleeping sample data types", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAC47E0](v9, -1, -1);
    MEMORY[0x22AAC47E0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = sub_2288E62B0();
  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22892F588())
  {
    v16 = 0;
    v17 = OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_dataManager;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x22AAC3CC0](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      [*(v1 + v17) addObserver:v1 forDataType:v18];

      ++v16;
      if (v20 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v22 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_unitTest_didBeginObservingSleepingSampleDataTypes);
  if (v22)
  {
    return v22(v1);
  }

  return result;
}

void *sub_2288E4D40(unint64_t a1)
{
  v2 = sub_22892DEF8();
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v60 = &v52 - v5;
  isUniquelyReferenced_nonNull_native = sub_22892DDC8();
  v64 = *(isUniquelyReferenced_nonNull_native - 8);
  v7 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v52 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = sub_22891D398(MEMORY[0x277D84F90]);
  v17 = a1;
  v18 = v16;
  if (v17 >> 62)
  {
LABEL_28:
    v49 = v17;
    v50 = sub_22892F588();
    v17 = v49;
    v19 = v50;
    if (v50)
    {
      goto LABEL_3;
    }

    return v18;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    return v18;
  }

LABEL_3:
  v20 = 0;
  v58 = v17;
  v59 = v17 & 0xC000000000000001;
  v62 = v64 + 8;
  v63 = (v64 + 16);
  v56 = v64 + 32;
  v57 = v19;
  v54 = v17 & 0xFFFFFFFFFFFFFF8;
  v55 = v64 + 40;
  v65 = v15;
  while (1)
  {
    if (v59)
    {
      v22 = MEMORY[0x22AAC3CC0](v20);
    }

    else
    {
      if (v20 >= *(v54 + 16))
      {
        goto LABEL_27;
      }

      v22 = *(v17 + 8 * v20 + 32);
    }

    v23 = v22;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v66 = v20 + 1;
    v24 = [v22 startDate];
    sub_22892DEC8();

    v25 = [v23 endDate];
    sub_22892DEC8();

    sub_22892DD88();
    v26 = [v23 sampleType];
    v27 = v26;
    if (v18[2] && (v28 = sub_22891C6FC(v26), (v29 & 1) != 0))
    {
      v30 = v64;
      v31 = v52;
      (*(v64 + 16))(v52, v18[7] + *(v64 + 72) * v28, isUniquelyReferenced_nonNull_native);

      v32 = v53;
      sub_22892DDB8();
      v33 = *(v30 + 8);
      v34 = v31;
      v15 = v65;
      v33(v34, isUniquelyReferenced_nonNull_native);
      v33(v15, isUniquelyReferenced_nonNull_native);
      (*(v30 + 32))(v15, v32, isUniquelyReferenced_nonNull_native);
    }

    else
    {
    }

    v35 = [v23 sampleType];
    v36 = v11;
    v37 = v11;
    v11 = isUniquelyReferenced_nonNull_native;
    (*v63)(v37, v15, isUniquelyReferenced_nonNull_native);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v18;
    v38 = sub_22891C6FC(v35);
    v39 = v18[2];
    v40 = (v17 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_25;
    }

    v42 = v17;
    if (v18[3] < v41)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_228905DEC();
    }

LABEL_21:
    isUniquelyReferenced_nonNull_native = v11;
    v18 = v67;
    v11 = v36;
    if (v42)
    {
      v21 = v64;
      (*(v64 + 40))(v67[7] + *(v64 + 72) * v38, v36, isUniquelyReferenced_nonNull_native);

      v15 = v65;
      (*(v21 + 8))(v65, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v67[(v38 >> 6) + 8] |= 1 << v38;
      *(v18[6] + 8 * v38) = v35;
      v45 = v64;
      (*(v64 + 32))(v18[7] + *(v64 + 72) * v38, v36, isUniquelyReferenced_nonNull_native);

      v15 = v65;
      (*(v45 + 8))(v65, isUniquelyReferenced_nonNull_native);
      v46 = v18[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_26;
      }

      v18[2] = v48;
    }

    ++v20;
    v17 = v58;
    if (v66 == v57)
    {
      return v18;
    }
  }

  sub_228905910(v41, isUniquelyReferenced_nonNull_native);
  v43 = sub_22891C6FC(v35);
  if ((v42 & 1) == (v44 & 1))
  {
    v38 = v43;
    goto LABEL_21;
  }

  sub_2288BC0FC(0, &qword_2813DEC58, 0x277CCD8D8);
  result = sub_22892F858();
  __break(1u);
  return result;
}

id sub_2288E52F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22892EDE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v7 = sub_22892EDD8();
  v8 = sub_22892F368();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_22892F948();
    v13 = sub_2288B748C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2288B2000, v7, v8, "[%{public}s] sleeping samples removed, enqueuing observer notification", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAC47E0](v10, -1, -1);
    MEMORY[0x22AAC47E0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  result = *(a1 + OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_debounceQueue_removalOperation);
  if (result)
  {
    return [result execute];
  }

  return result;
}

uint64_t sub_2288E54E8(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6, void (*a7)(uint64_t))
{
  sub_2288BC0FC(0, a5, a6);
  v10 = sub_22892F218();
  v11 = a4;
  v12 = a1;
  a7(v10);
}

void sub_2288E557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v38 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_22892EDE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22892E1E8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, *MEMORY[0x277D62628], v11);
  v15 = sub_22892E1D8();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  if (!a2)
  {

    v20 = 0;
LABEL_9:
    sub_2288E5C7C(v38, aBlock);
    v21 = v44;
    if (v44)
    {
      v22 = __swift_project_boxed_opaque_existential_1(aBlock, v44);
      v23 = *(v21 - 1);
      MEMORY[0x28223BE20](v22);
      v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v25);
      v26 = sub_22892F808();
      (*(v23 + 8))(v25, v21);
      __swift_destroy_boxed_opaque_existential_0(aBlock);
      if (v39)
      {
LABEL_11:
        type metadata accessor for NSKeyValueChangeKey(0);
        sub_2288E6FF4(&qword_27D85B140, type metadata accessor for NSKeyValueChangeKey, &unk_2289312AC);
        v27 = sub_22892EFB8();
LABEL_18:
        v47.receiver = v42;
        v47.super_class = ObjectType;
        objc_msgSendSuper2(&v47, sel_observeValueForKeyPath_ofObject_change_context_, v20, v26, v27, v40);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v26 = 0;
      if (v39)
      {
        goto LABEL_11;
      }
    }

    v27 = 0;
    goto LABEL_18;
  }

  if (v15 == a1 && v17 == a2)
  {
  }

  else
  {
    v19 = sub_22892F818();

    if ((v19 & 1) == 0)
    {
      v20 = sub_22892F098();
      goto LABEL_9;
    }
  }

  sub_22892EDC8();
  v28 = sub_22892EDD8();
  v29 = sub_22892F398();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136446210;
    v32 = sub_22892F948();
    v34 = sub_2288B748C(v32, v33, aBlock);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_2288B2000, v28, v29, "[%{public}s] Demo mode changed, notifying observers", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AAC47E0](v31, -1, -1);
    MEMORY[0x22AAC47E0](v30, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v35 = *(*&v42[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_observers] + 16);
  v45 = sub_22891DD34;
  v46 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288E19DC;
  v44 = &block_descriptor_2;
  v36 = _Block_copy(aBlock);

  [v35 notifyObservers_];
  _Block_release(v36);
}

uint64_t sub_2288E5C7C(uint64_t a1, uint64_t a2)
{
  sub_2288DB300();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2288E5CF0(uint64_t isStackAllocationSafe, uint64_t a2)
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
    v10 = sub_2288E5E90(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_2288E70C4(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x22AAC47E0](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_2288E5E90(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62)
  {
LABEL_25:
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v22 = a3;
    v30 = sub_22892F588();
    v4 = v22;
  }

  else
  {
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = a3;
  }

  v5 = 0;
  v6 = 0;
  v29 = v4 & 0xC000000000000001;
  v23 = v4;
  v27 = v4 + 32;
  v31 = a4 + 56;
LABEL_4:
  v25 = v5;
  while (v6 != v30)
  {
    if (v29)
    {
      v7 = MEMORY[0x22AAC3CC0](v6, v23);
    }

    else
    {
      if (v6 >= *(v28 + 16))
      {
        goto LABEL_24;
      }

      v7 = *(v27 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = sub_22892F458();
    v11 = -1 << *(a4 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = 1 << v12;
    if (((1 << v12) & *(v31 + 8 * (v12 >> 6))) != 0)
    {
      sub_2288BC0FC(0, &qword_2813DEC58, 0x277CCD8D8);
      v15 = *(*(a4 + 48) + 8 * v12);
      v16 = sub_22892F468();

      if ((v16 & 1) == 0)
      {
        v17 = ~v11;
        do
        {
          v12 = (v12 + 1) & v17;
          v13 = v12 >> 6;
          v14 = 1 << v12;
          if (((1 << v12) & *(v31 + 8 * (v12 >> 6))) == 0)
          {
            goto LABEL_5;
          }

          v18 = *(*(a4 + 48) + 8 * v12);
          v19 = sub_22892F468();
        }

        while ((v19 & 1) == 0);
      }

      v20 = a1[v13];
      a1[v13] = v20 | v14;
      if ((v20 & v14) == 0)
      {
        v5 = v25 + 1;
        if (!__OFADD__(v25, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        break;
      }
    }

    else
    {
LABEL_5:
    }
  }

  return sub_2288E60C8(a1, a2, v25, a4);
}

uint64_t sub_2288E60C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_2288E70F8(0);
  result = sub_22892F618();
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
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_22892F458();
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
    *(*(v9 + 48) + 8 * v20) = v16;
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

uint64_t sub_2288E62B0()
{
  v0 = sub_22892E508();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22892E4F8();
  v5 = *(v4 + 16);
  if (v5)
  {
    v14 = MEMORY[0x277D84F90];
    sub_22892F6C8();
    v7 = v1 + 16;
    v6 = *(v1 + 16);
    v12[1] = v4;
    v13 = v6;
    v8 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    v10 = (v7 - 8);
    do
    {
      v13(v3, v8, v0);
      sub_22892E4E8();
      (*v10)(v3, v0);
      sub_22892F6A8();
      sub_22892F6D8();
      sub_22892F6E8();
      sub_22892F6B8();
      v8 += v9;
      --v5;
    }

    while (v5);

    return v14;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2288E6450()
{
  swift_getObjectType();
  v0 = sub_22892EDE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v4 = sub_22892EDD8();
  v5 = sub_22892F398();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_22892F948();
    v10 = sub_2288B748C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2288B2000, v4, v5, "[%{public}s] profile ready", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAC47E0](v7, -1, -1);
    MEMORY[0x22AAC47E0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_2288E4A4C();
}

uint64_t sub_2288E660C(unint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22892EDE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2288E4D40(a1);
  sub_22892EDC8();
  swift_bridgeObjectRetain_n();

  v9 = sub_22892EDD8();
  v10 = sub_22892F368();

  if (os_log_type_enabled(v9, v10))
  {
    v27 = v4;
    v28 = v2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446722;
    v13 = sub_22892F948();
    v15 = sub_2288B748C(v13, v14, aBlock);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2050;
    if (a1 >> 62)
    {
      v16 = sub_22892F588();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 14) = v16;

    *(v11 + 22) = 2080;
    sub_2288BC0FC(0, &qword_2813DEC58, 0x277CCD8D8);
    sub_22892DDC8();
    sub_2288E716C();

    v17 = sub_22892EFD8();
    v19 = v18;

    v20 = sub_2288B748C(v17, v19, aBlock);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_2288B2000, v9, v10, "[%{public}s] sleeping samples added %{public}ld - %s, notifying observers", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v12, -1, -1);
    MEMORY[0x22AAC47E0](v11, -1, -1);

    (*(v5 + 8))(v7, v27);
    v2 = v28;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v5 + 8))(v7, v4);
  }

  v21 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_observers);
  v22 = swift_allocObject();
  *(v22 + 16) = v8;
  v23 = *(v21 + 16);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2288E71D4;
  *(v24 + 24) = v22;
  aBlock[4] = sub_2288E2098;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288E19DC;
  aBlock[3] = &block_descriptor_14;
  v25 = _Block_copy(aBlock);

  [v23 notifyObservers_];
  _Block_release(v25);
}

uint64_t sub_2288E69E4(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22892F588())
  {
    v4 = sub_2288BC0FC(0, &qword_2813DEC58, 0x277CCD8D8);
    v5 = sub_2288E716C();
    result = MEMORY[0x22AAC3930](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AAC3CC0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2288F3F88(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_22892F588();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2288E6B24(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_22892EDE8();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892EDF8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22892EE18();
  v11 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = sub_2288E69E4(v14);

  v16 = sub_2288E62B0();
  if ((v15 & 0xC000000000000001) != 0)
  {
    if (v15 >= 0)
    {
      v15 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v17 = sub_22892F588();
    v15 = sub_2288F424C(v15, v17);
  }

  v18 = sub_2288E5CF0(v16, v15);

  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = sub_22892F588();
  }

  else
  {
    v19 = *(v18 + 16);
  }

  if (v19 < 1)
  {
    sub_22892EDC8();
    v24 = sub_22892EDD8();
    v25 = sub_22892F368();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136446210;
      v28 = sub_22892F948();
      v30 = sub_2288B748C(v28, v29, aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2288B2000, v24, v25, "[%{public}s] Ignoring sample removal observation for unregistered samples", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAC47E0](v27, -1, -1);
      MEMORY[0x22AAC47E0](v26, -1, -1);
    }

    return (*(v31 + 8))(v6, v32);
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = ObjectType;
    aBlock[4] = sub_2288E6FEC;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2288F3CC4;
    aBlock[3] = &block_descriptor_5;
    v21 = _Block_copy(aBlock);
    v22 = v2;
    sub_22892EE08();
    v34 = MEMORY[0x277D84F90];
    sub_2288E6FF4(qword_2813DEE40, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2288E7228(0, &unk_27D85BD90, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2288E703C();
    sub_22892F548();
    MEMORY[0x22AAC3A70](0, v13, v10, v21);
    _Block_release(v21);
    (*(v8 + 8))(v10, v7);
    (*(v11 + 8))(v13, v33);
  }
}

uint64_t sub_2288E6FF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2288E703C()
{
  result = qword_27D85B7B0;
  if (!qword_27D85B7B0)
  {
    sub_2288E7228(255, &unk_27D85BD90, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85B7B0);
  }

  return result;
}

uint64_t sub_2288E70C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2288E5E90(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void sub_2288E70F8(uint64_t a1)
{
  if (!qword_27D85B7B8)
  {
    sub_2288BC0FC(255, &qword_2813DEC58, 0x277CCD8D8);
    sub_2288E716C();
    v1 = sub_22892F628();
    if (!v2)
    {
      atomic_store(v1, &qword_27D85B7B8);
    }
  }
}

unint64_t sub_2288E716C()
{
  result = qword_2813DEC50;
  if (!qword_2813DEC50)
  {
    sub_2288BC0FC(255, &qword_2813DEC58, 0x277CCD8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEC50);
  }

  return result;
}

uint64_t sub_2288E71D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 8))(v2, ObjectType, v3);
}

void sub_2288E7228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2288E72B4()
{
  v1 = v0;
  aBlock[6] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x277D84F90];
  v6 = swift_allocObject();
  *(v6 + 16) = &v31;
  v7 = swift_allocObject();
  v7[2] = sub_2288B3B68;
  v7[3] = v6;
  aBlock[4] = sub_2288B3B70;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288B3B98;
  aBlock[3] = &block_descriptor_9;
  v8 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v9 = [v1 enumerateWithError:aBlock handler:v8];
  _Block_release(v8);
  v10 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v9)
  {
    v12 = v31;
  }

  else
  {
    v13 = sub_22892DE38();

    swift_willThrow();

    sub_22892EDC8();
    v14 = v13;
    v15 = sub_22892EDD8();
    v16 = sub_22892F378();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v3;
      v19 = v18;
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v17 = 136446466;
      v21 = sub_22892F948();
      v23 = sub_2288B748C(v21, v22, aBlock);
      v29 = v2;
      v24 = v23;

      *(v17 + 4) = v24;
      *(v17 + 12) = 2114;
      v25 = v13;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v26;
      *v19 = v26;
      _os_log_impl(&dword_2288B2000, v15, v16, "[%{public}s Failed to enumerate sleep day summaries: %{public}@", v17, 0x16u);
      sub_2288DDB10(v19);
      MEMORY[0x22AAC47E0](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAC47E0](v20, -1, -1);
      MEMORY[0x22AAC47E0](v17, -1, -1);

      (*(v30 + 8))(v5, v29);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    return 0;
  }

  return v12;
}

BOOL sub_2288E76A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v2 == 1)
    {
LABEL_4:
      sub_2288BC0FC(0, &qword_2813DEB30, 0x277D82BB8);
      return sub_22892F468() & 1;
    }

    return 0;
  }

  return v2 == 2 && *a2 == 0;
}

id sub_2288E772C(double a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate_];
  v2 = sub_22892DFF8();
  v3 = [v1 hk:v2 morningIndexWithCalendar:?];

  return v3;
}

void *sub_2288E77AC()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = v16;
  v2 = swift_allocObject();
  v2[2] = sub_2288E8638;
  v2[3] = v1;
  aBlock[4] = sub_2288E87A0;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288B3B98;
  aBlock[3] = &block_descriptor_19;
  v3 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v4 = [v0 enumerateWithError:aBlock handler:v3];
  _Block_release(v3);
  v5 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v4)
  {
    v8 = sub_22892DE38();

    swift_willThrow();
    aBlock[0] = v8;
    v9 = v8;
    sub_2288CA734();
    sub_2288BC0FC(0, &qword_27D85B098, 0x277CCA9B8);
    if (swift_dynamicCast())
    {

      v10 = [v14 hk_isDatabaseAccessibilityError];
      sub_2288E8674();
      swift_allocError();
      *v11 = v14;
      if (v10)
      {
        *(v11 + 8) = 1;
      }

      else
      {
        *(v11 + 8) = 0;
      }

      swift_willThrow();
    }

    goto LABEL_12;
  }

  v7 = v16[0];
  if (!v16[0])
  {
    sub_2288E8674();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 2;
    swift_willThrow();
LABEL_12:
    v7 = v16[0];

    return v7;
  }

  return v7;
}

uint64_t sub_2288E7AA0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_22892DEF8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  sub_22892DEC8();

  v10 = v9(v8, a3);

  (*(v6 + 8))(v8, v5);
  return v10;
}

id sub_2288E7BAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v87 = *MEMORY[0x277D85DE8];
  v78 = sub_22892E048();
  v8 = *(v78 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v78);
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288E8554(0, &qword_2813DFEA8, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v60 - v11;
  sub_2288E8554(0, &qword_2813DFEB0, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v60 - v14;
  v16 = sub_22892DE18();
  v71 = *(v16 - 8);
  v72 = v16;
  MEMORY[0x28223BE20](v16);
  v73 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22892DEF8();
  v69 = *(v18 - 8);
  v70 = v18;
  MEMORY[0x28223BE20](v18);
  v74 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22892DDC8();
  v76 = *(v20 - 8);
  v77 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22892EF68();
  v79 = a3;
  sub_22892EEC8();
  v80 = a1;
  v23 = [a1 daemon];
  if (v23 && (v24 = v23, v25 = [v23 behavior], v24, LODWORD(v24) = objc_msgSend(v25, sel_supportsCachedSleepDaySummaryQueries), v25, v24))
  {
    v26 = [v80 sourceManager];
    aBlock = 0;
    v27 = [v26 localDeviceSourceWithError_];

    v28 = aBlock;
    if (v27)
    {
      v65 = "SleepingSampleAggregator_";
      v67 = v4;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v64 = v27;
      v30 = ObjCClassFromMetadata;
      v31 = v28;
      v60 = v30;
      v66 = [v30 sleepAnalysisQueryDescriptorForDateInterval:0 options:32];
      v63 = sub_2288BC0FC(0, &qword_27D85B7C0, 0x277CCD9B0);
      sub_22892DD98();
      v32 = v78;
      (*(v8 + 56))(v15, 1, 1, v78);
      v33 = sub_22892E058();
      (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
      sub_22892DE08();
      v34 = v68;
      (*(v8 + 16))(v68, v79, v32);
      v35 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v36 = swift_allocObject();
      v62 = v8;
      (*(v8 + 32))(v36 + v35, v34, v32);
      v37 = objc_allocWithZone(MEMORY[0x277D10840]);
      v68 = v80;
      v38 = v64;
      v65 = sub_22892F098();
      v64 = swift_getObjCClassFromMetadata();
      v63 = sub_22892DD58();
      v39 = sub_22892DE58();
      v40 = sub_22892DDD8();
      v61 = v40;
      v85 = sub_2288E85A8;
      v86 = v36;
      aBlock = MEMORY[0x277D85DD0];
      v82 = 1107296256;
      v83 = sub_2288E7AA0;
      v84 = &block_descriptor_3;
      v41 = _Block_copy(&aBlock);
      v59 = v40;
      v42 = v37;
      v43 = v68;
      v44 = v65;
      v45 = v66;
      v46 = v63;
      v47 = [v42 initWithProfile:v68 cachingIdentifier:v65 sourceEntity:v38 queryDescriptor:v66 cachedClass:v64 queryInterval:v63 anchorDate:v39 intervalComponents:v59 timeIntervalToBucketIndex:v41];
      _Block_release(v41);

      (*(v71 + 8))(v73, v72);
      (*(v69 + 8))(v74, v70);

      if (v47)
      {
        v48 = [v60 sleepTypesQueryDescriptorsForDateInterval:0 options:32];
        if (!v48)
        {
          sub_2288BC0FC(0, &qword_27D85B7C8, 0x277D10820);
          sub_22892F218();
          v48 = sub_22892F208();
        }

        [v47 setInvalidationQueryDescriptors_];
      }

      v8 = v62;
    }

    else
    {
      v57 = aBlock;
      v58 = sub_22892DE38();

      swift_willThrow();
      v47 = 0;
    }
  }

  else
  {
    v47 = 0;
  }

  v49 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v50 = v79;
  v51 = sub_22892DFF8();
  aBlock = 0;
  v82 = 0xE000000000000000;
  sub_22892F648();

  aBlock = 0xD000000000000019;
  v82 = 0x8000000228933E80;
  v52 = sub_22892EFA8();
  sub_2288DDA38();
  v53 = sub_22892F7E8();
  MEMORY[0x22AAC3770](v53);

  v54 = sub_22892F098();

  v55 = [v49 initWithProfile:v80 cachingSession:v47 gregorianCalendar:v51 morningIndexRange:v75 ascending:1 options:1 debugIdentifier:{32, v54}];

  (*(v8 + 8))(v50, v78);
  (*(*(v52 - 8) + 8))(a2, v52);
  (*(v76 + 8))(v22, v77);
  return v55;
}

void sub_2288E8554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2288E85A8(double a1)
{
  sub_22892E048();

  return sub_2288E772C(a1);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2288E8638(void *a1, _BYTE *a2)
{
  v4 = *(v2 + 16);
  v5 = *v4;
  *v4 = a1;
  v6 = a1;

  *a2 = 1;
}

unint64_t sub_2288E8674()
{
  result = qword_27D85B7D0;
  if (!qword_27D85B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85B7D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So27HDSleepDaySummaryEnumeratorC19HealthBalanceDaemonE5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_2288E86E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2288E872C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2288E8770(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2288E87A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingSampleAggregateDaySummaryEnumerator_gregorianDayRange;
  v8 = sub_22892E478();
  result = (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  *a3 = v6;
  return result;
}

uint64_t sub_2288E8858(uint64_t a1)
{
  result = sub_22892E478();
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

uint64_t sub_2288E88F8()
{
  v1 = v0;
  sub_2288B5D1C(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22892E478();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingSampleAggregateDaySummaryEnumerator_gregorianDayRange;
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v9, v5);
  v10 = *(v1 + 16);
  type metadata accessor for SleepingWristTemperatureAggregateEnumerator(0);
  swift_allocObject();
  sub_2288D72B8(v8, v10);
  sub_2288C3FDC(0);
  v12 = v11;
  v13 = swift_allocBox();
  v15 = v14;
  swift_beginAccess();
  sub_22892E438();
  swift_endAccess();
  sub_2288BB5F8(v4, v15, sub_2288B5D1C);
  v16 = *(v12 + 36);
  v17 = sub_22892EFA8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v15 + v16, v4, v17);
  sub_2288BA82C(v4, sub_2288B5D1C);
  (*(v18 + 56))(v15 + v16, 0, 1, v17);
  v19 = sub_2288D7EC8();

  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v13;
  v21[4] = v19;
  v21[5] = v1;
  sub_2288EADC8(0);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2288EADBC;
  *(v22 + 24) = v21;

  return v22;
}

uint64_t sub_2288E8BD8@<X0>(uint64_t a1@<X0>, void (*a3)(_BYTE *, uint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v112 = a4;
  v125 = a3;
  v133 = a5;
  v116 = sub_22892E048();
  v115 = *(v116 - 8);
  v6 = MEMORY[0x28223BE20](v116);
  v113 = &v105[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v114 = &v105[-v8];
  v9 = sub_22892E5A8();
  v119 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v117 = &v105[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v131 = &v105[-v12];
  sub_2288EAF58(0);
  MEMORY[0x28223BE20](v13 - 8);
  v124 = &v105[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2288EAFE8(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74, &type metadata for SleepingWristTemperatureAggregateEnumerator.Error);
  v123 = v15;
  v122 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v118 = &v105[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v120 = &v105[-v18];
  sub_2288C3774(0);
  v20 = v19;
  MEMORY[0x28223BE20](v19);
  v22 = &v105[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2288C36E0(0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v127 = &v105[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v24);
  v128 = &v105[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v105[-v29];
  MEMORY[0x28223BE20](v28);
  v32 = &v105[-v31];
  sub_2288BF284(0);
  MEMORY[0x28223BE20](v33 - 8);
  v130 = &v105[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_22892EFA8();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v111 = &v105[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x28223BE20](v37);
  v132 = &v105[-v40];
  MEMORY[0x28223BE20](v39);
  v129 = &v105[-v41];
  sub_2288C3FDC(0);
  v43 = v42;
  v44 = swift_projectBox();
  swift_beginAccess();
  v110 = a1;
  v45 = *(a1 + 16);
  v46 = v133;
  if (v45)
  {
    goto LABEL_15;
  }

  v107 = v9;
  swift_beginAccess();
  v47 = *(v43 + 36);
  v109 = *(v36 + 56);
  v109(v32, 1, 1, v35);
  v48 = *(v20 + 48);
  v108 = v47;
  sub_2288BB5F8(v44 + v47, v22, sub_2288C36E0);
  sub_2288BB5F8(v32, &v22[v48], sub_2288C36E0);
  v121 = v36;
  v49 = *(v36 + 48);
  v50 = v49(v22, 1, v35);
  v126 = v49;
  if (v50 != 1)
  {
    sub_2288BB5F8(v22, v30, sub_2288C36E0);
    if (v49(&v22[v48], 1, v35) != 1)
    {
      v71 = v121;
      v72 = &v22[v48];
      v73 = v132;
      (*(v121 + 32))(v132, v72, v35);
      sub_2288BB548(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
      v106 = sub_22892F088();
      v74 = *(v71 + 8);
      v74(v73, v35);
      sub_2288BA82C(v32, sub_2288C36E0);
      v74(v30, v35);
      sub_2288BA82C(v22, sub_2288C36E0);
      v53 = v35;
      v54 = v130;
      if (v106)
      {
        v51 = 1;
        v59 = v131;
        v60 = v133;
        v55 = v121;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    sub_2288BA82C(v32, sub_2288C36E0);
    (*(v121 + 8))(v30, v35);
    v53 = v35;
    v54 = v130;
LABEL_7:
    sub_2288BA82C(v22, sub_2288C3774);
LABEL_8:
    v56 = v108;
    v57 = v128;
    sub_2288BB5F8(v44 + v108, v128, sub_2288C36E0);
    result = v126(v57, 1, v53);
    if (result == 1)
    {
      goto LABEL_25;
    }

    v55 = v121;
    (*(v121 + 32))(v54, v57, v53);
    v22 = v127;
    sub_2288BB660(v44 + v56, v127, sub_2288C36E0);
    sub_2288C37D8(v22, v44 + v56);
    v51 = 0;
    goto LABEL_10;
  }

  sub_2288BA82C(v32, sub_2288C36E0);
  v51 = 1;
  v52 = v49(&v22[v48], 1, v35);
  v53 = v35;
  v54 = v130;
  if (v52 != 1)
  {
    goto LABEL_7;
  }

  v55 = v121;
LABEL_10:
  sub_2288BA82C(v22, sub_2288C36E0);
  v59 = v131;
  v60 = v133;
LABEL_11:
  v109(v54, v51, 1, v53);
  swift_endAccess();
  v61 = v126(v54, 1, v53);
  v62 = v132;
  if (v61 == 1)
  {
    sub_2288BA82C(v54, sub_2288BF284);
    v46 = v60;
LABEL_15:
    sub_2288EAFE8(0, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC, &type metadata for SleepingSampleDaySummarySequenceError);
    v67 = v66;
    v68 = *(*(v66 - 8) + 56);
    v69 = v46;
    v70 = 1;
    return v68(v69, v70, 1, v67);
  }

  v63 = *(v55 + 32);
  v64 = v129;
  (v63)(v129, v54, v53);
  v65 = v124;
  sub_22892F7A8();
  if ((*(v122 + 48))(v65, 1, v123) == 1)
  {
    (*(v55 + 8))(v64, v53);
    sub_2288BA82C(v65, sub_2288EAF58);
    v46 = v133;
    goto LABEL_15;
  }

  v75 = v65;
  v76 = v120;
  sub_2288EB068(v75, v120);
  v77 = v118;
  sub_2288EB104(v76, v118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2288EB2E0(v76);
    (*(v55 + 8))(v64, v53);
    v78 = *v77;
    v79 = v77[8] | 0x80;
    v98 = v133;
    *v133 = v78;
    *(v98 + 8) = v79;
    sub_2288EAFE8(0, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC, &type metadata for SleepingSampleDaySummarySequenceError);
    v100 = v99;
    swift_storeEnumTagMultiPayload();
    v68 = *(*(v100 - 8) + 56);
    v69 = v98;
LABEL_23:
    v70 = 0;
    v67 = v100;
    return v68(v69, v70, 1, v67);
  }

  v127 = v63;
  v80 = *(v119 + 32);
  v130 = (v119 + 32);
  v128 = v80;
  (v80)(v59, v77, v107);
  sub_22892E558();
  sub_2288BB548(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
  v81 = sub_22892F088();
  v82 = *(v55 + 8);
  v126 = (v55 + 8);
  v125 = v82;
  result = (v82)(v62, v53);
  if (v81)
  {
    v83 = *(v112 + 16);
    v84 = *(v55 + 16);
    v85 = v111;
    v84(v111, v129, v53);
    swift_beginAccess();
    v86 = v83;
    v87 = v114;
    sub_22892E468();
    swift_endAccess();
    (*(v119 + 16))(v117, v131, v107);
    v88 = sub_2288BC0FC(0, &unk_2813DEBE8, 0x277D10868);
    v89 = v53;
    v90 = v132;
    v84(v132, v85, v89);
    v91 = v115;
    v92 = v113;
    v93 = v116;
    (*(v115 + 16))(v113, v87, v116);
    v94 = v86;
    v95 = sub_2288E7BAC(v94, v90, v92);

    (*(v91 + 8))(v87, v93);
    v135 = v88;
    v136 = &off_283BD4060;
    *&v134 = v95;
    type metadata accessor for SleepingSampleDaySummaryAggregator(0);
    v96 = swift_allocObject();
    *(v96 + 16) = v94;
    sub_2288D3C20(&v134, v96 + 24);
    (v127)(v96 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_162AF38C750857D76C80011061F645FA34SleepingSampleDaySummaryAggregator_morningIndex, v85, v89);
    (v128)(v96 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_162AF38C750857D76C80011061F645FA34SleepingSampleDaySummaryAggregator_wristTemperature, v117, v107);
    v97 = v133;
    sub_2288E9D70(v133);

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0((v96 + 24));
    v101 = v125;
    v125((v96 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_162AF38C750857D76C80011061F645FA34SleepingSampleDaySummaryAggregator_morningIndex), v89);
    v102 = *(v119 + 8);
    v103 = v107;
    v102(v96 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_162AF38C750857D76C80011061F645FA34SleepingSampleDaySummaryAggregator_wristTemperature, v107);
    swift_deallocClassInstance();
    v102(v131, v103);
    sub_2288EB2E0(v120);
    v101(v129, v89);
    sub_2288EAFE8(0, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC, &type metadata for SleepingSampleDaySummarySequenceError);
    v100 = v104;
    swift_storeEnumTagMultiPayload();
    v68 = *(*(v100 - 8) + 56);
    v69 = v97;
    goto LABEL_23;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2288E9D70@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v1 = sub_22892EFA8();
  MEMORY[0x28223BE20](v1 - 8);
  v102 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22892E5A8();
  v4 = *(v3 - 8);
  v105 = v3;
  v106 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v97 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v96 = &v95 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v101 = &v95 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v100 = &v95 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v99 = &v95 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v103 = &v95 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v104 = &v95 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v110 = &v95 - v20;
  MEMORY[0x28223BE20](v19);
  v111 = &v95 - v21;
  v22 = sub_22892ED78();
  v108 = *(v22 - 8);
  v109 = v22;
  MEMORY[0x28223BE20](v22);
  v107 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22892ED38();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v112 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v95 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v120 = &v95 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v95 - v33;
  v35 = sub_22892EDE8();
  MEMORY[0x28223BE20](v35 - 8);
  v36 = sub_22892ED68();
  v116 = *(v36 - 8);
  v117 = v36;
  MEMORY[0x28223BE20](v36);
  v38 = &v95 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  sub_22892ED48();
  sub_22892ED28();
  v121 = v38;
  v39 = sub_22892ED58();
  v40 = sub_22892F428();
  if (sub_22892F478())
  {
    v41 = v24;
    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = sub_22892ED18();
    _os_signpost_emit_with_name_impl(&dword_2288B2000, v39, v40, v43, "SleepingSampleDaySummaryAggregator.aggregate", "", v42, 2u);
    v44 = v42;
    v24 = v41;
    MEMORY[0x22AAC47E0](v44, -1, -1);
  }

  v45 = *(v25 + 16);
  v45(v120, v34, v24);
  sub_22892EDA8();
  swift_allocObject();
  v115 = sub_22892ED98();
  v47 = *(v25 + 8);
  v46 = v25 + 8;
  v119 = v47;
  v47(v34, v24);
  sub_22892ED28();
  v48 = sub_22892ED58();
  v49 = sub_22892F428();
  if (sub_22892F478())
  {
    v50 = swift_slowAlloc();
    v113 = v46;
    v51 = v24;
    v52 = v50;
    *v50 = 0;
    v53 = sub_22892ED18();
    _os_signpost_emit_with_name_impl(&dword_2288B2000, v48, v49, v53, "SleepingSampleDaySummaryAggregator.sleepDaySummaryProvider.sleepDaySummary", "", v52, 2u);
    v54 = v52;
    v24 = v51;
    v46 = v113;
    MEMORY[0x22AAC47E0](v54, -1, -1);
  }

  v45(v120, v30, v24);
  swift_allocObject();
  v55 = sub_22892ED98();
  v119(v30, v24);
  v56 = v118;
  v57 = v46;
  v58 = v24;
  v59 = v118[6];
  v60 = v118[7];
  __swift_project_boxed_opaque_existential_1(v118 + 3, v59);
  v61 = v114;
  v62 = (*(v60 + 8))(v59, v60);
  if (v61)
  {

    v124 = v61;
    v78 = v61;
    sub_2288CA734();
    if (swift_dynamicCast())
    {

      v79 = v122;
      v80 = v123;
    }

    else
    {

      v124 = v61;
      v81 = v61;
      if (!swift_dynamicCast())
      {

        v122 = v61;
        v84 = v61;
        sub_2288BC0FC(0, &qword_27D85B098, 0x277CCA9B8);
        if (swift_dynamicCast())
        {

          v85 = v124;
          sub_2288B7AEC();
          swift_allocError();
          *v86 = v85;
          *(v86 + 8) = -64;
          swift_willThrow();
        }

        v83 = v122;
        goto LABEL_20;
      }

      v79 = v122;
      v80 = v123 | 0x40;
    }

    sub_2288B7AEC();
    swift_allocError();
    *v82 = v79;
    *(v82 + 8) = v80;
    swift_willThrow();
    v83 = v124;
LABEL_20:

    goto LABEL_21;
  }

  v63 = v62;
  v113 = v57;
  v64 = v55;
  v65 = sub_22892ED58();
  v66 = v112;
  v120 = v64;
  sub_22892ED88();
  v67 = sub_22892F418();
  if (sub_22892F478())
  {

    v68 = v107;
    sub_22892EDB8();

    v70 = v108;
    v69 = v109;
    if ((*(v108 + 88))(v68, v109) == *MEMORY[0x277D85B00])
    {
      v71 = "[Error] Interval already ended";
    }

    else
    {
      (*(v70 + 8))(v68, v69);
      v71 = "";
    }

    v72 = swift_slowAlloc();
    *v72 = 0;
    v73 = v112;
    v74 = sub_22892ED18();
    _os_signpost_emit_with_name_impl(&dword_2288B2000, v65, v67, v74, "SleepingSampleDaySummaryAggregator.sleepDaySummaryProvider.sleepDaySummary", v71, v72, 2u);
    v75 = v72;
    v66 = v73;
    MEMORY[0x22AAC47E0](v75, -1, -1);
  }

  v119(v66, v58);
  v76 = v56[2];
  sub_2288EED9C(v76, v63);
  v77 = v111;
  sub_2288C9A18(v111);
  sub_2288EF3A8(v76, v63);
  sub_2288C9A18(v110);
  v89 = sub_2288EF3B8(v76, v63);
  v90 = v104;
  v119 = v89;
  sub_2288C9A18(v104);
  sub_2289181B4(v103);
  [v63 morningIndex];
  sub_22892EED8();
  v91 = *(v106 + 16);
  v92 = v77;
  v93 = v105;
  v91(v99, v92, v105);
  v91(v100, v110, v93);
  v91(v101, v90, v93);
  v91(v96, v118 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_162AF38C750857D76C80011061F645FA34SleepingSampleDaySummaryAggregator_wristTemperature, v93);
  v91(v97, v103, v93);
  sub_22892EA58();

  v94 = *(v106 + 8);
  v94(v103, v93);
  v94(v104, v93);
  v94(v110, v93);
  v94(v111, v93);
LABEL_21:
  v87 = v121;
  sub_2288EB374(v121, v115);

  return (*(v116 + 8))(v87, v117);
}

uint64_t sub_2288EA99C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2288E88F8();

  *a1 = v2;
  return result;
}

void *sub_2288EA9DC()
{
  v0 = sub_2288DA500();

  return v0;
}

uint64_t sub_2288EAA38()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_162AF38C750857D76C80011061F645FA34SleepingSampleDaySummaryAggregator_morningIndex;
  v2 = sub_22892EFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_162AF38C750857D76C80011061F645FA34SleepingSampleDaySummaryAggregator_wristTemperature;
  v4 = sub_22892E5A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_2288EAB4C(uint64_t a1)
{
  result = sub_22892EFA8();
  if (v2 <= 0x3F)
  {
    result = sub_22892E5A8();
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

uint64_t sub_2288EAC3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 9))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2288EAC8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_2288EAD64(uint64_t a1)
{
  result = sub_2288BB548(&qword_2813DF0F8, type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator, &unk_228931E10);
  *(a1 + 8) = result;
  return result;
}

void sub_2288EADC8(uint64_t a1)
{
  if (!qword_2813DEAB8)
  {
    v1 = MEMORY[0x277D844A8];
    sub_2288EAE7C(255, &qword_2813DEA20, MEMORY[0x277D844A8]);
    sub_2288EAF14(&qword_2813DEA28, &qword_2813DEA20, v1, MEMORY[0x277D844B0]);
    v2 = sub_22892F678();
    if (!v3)
    {
      atomic_store(v2, &qword_2813DEAB8);
    }
  }
}

void sub_2288EAE7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2288EAFE8(255, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC, &type metadata for SleepingSampleDaySummarySequenceError);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2288EAF14(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2288EAE7C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2288EAF58(uint64_t a1)
{
  if (!qword_2813DE930)
  {
    sub_2288EAFE8(255, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74, &type metadata for SleepingWristTemperatureAggregateEnumerator.Error);
    v1 = sub_22892F498();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DE930);
    }
  }
}

void sub_2288EAFE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    v7 = sub_22892F8D8();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2288EB068(uint64_t a1, uint64_t a2)
{
  sub_2288EAFE8(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74, &type metadata for SleepingWristTemperatureAggregateEnumerator.Error);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288EB104(uint64_t a1, uint64_t a2)
{
  sub_2288EAFE8(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74, &type metadata for SleepingWristTemperatureAggregateEnumerator.Error);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_2288EB1A0(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 >> 6) <= 1u)
  {
    if (!(a2 >> 6))
    {
      if (a4 > 0x3Fu)
      {
        return 0;
      }

      if (a2)
      {
        if (a2 != 1)
        {
          return a4 == 2 && !a3;
        }

        if (a4 != 1)
        {
          return 0;
        }
      }

      else if (a4)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if ((a4 & 0xC0) != 0x40)
    {
      return 0;
    }

    if ((a2 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (a2 >> 6 != 2)
  {
    if (a4 > 0xBFu)
    {
      sub_2288BC0FC(0, &qword_2813DEB30, 0x277D82BB8);
      return sub_22892F468() & 1;
    }

    return 0;
  }

  if ((a4 & 0xC0) == 0x80)
  {
    if ((a2 & 1) == 0)
    {
LABEL_15:
      if (a4)
      {
        return 0;
      }

      goto LABEL_16;
    }

LABEL_11:
    if ((a4 & 1) == 0)
    {
      return 0;
    }

LABEL_16:
    sub_2288BC0FC(0, &qword_2813DEB30, 0x277D82BB8);
    if (sub_22892F468())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2288EB2E0(uint64_t a1)
{
  sub_2288EAFE8(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74, &type metadata for SleepingWristTemperatureAggregateEnumerator.Error);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2288EB374(uint64_t a1, uint64_t a2)
{
  v2 = sub_22892ED78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892ED38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22892ED58();
  sub_22892ED88();
  v11 = sub_22892F418();
  if (sub_22892F478())
  {

    sub_22892EDB8();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_22892ED18();
    _os_signpost_emit_with_name_impl(&dword_2288B2000, v10, v11, v14, "SleepingSampleDaySummaryAggregator.aggregate", v12, v13, 2u);
    MEMORY[0x22AAC47E0](v13, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2288EB638()
{
  v1 = (v0 + OBJC_IVAR____TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin_pluginIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_2288EB6FC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin_pluginIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}