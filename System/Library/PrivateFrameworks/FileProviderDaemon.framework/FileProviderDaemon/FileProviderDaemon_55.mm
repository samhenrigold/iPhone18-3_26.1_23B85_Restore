void sub_1CF5DBCE0(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, char *a11, char *a12, char *a13)
{
  v104 = a4;
  v106 = a3;
  v109 = a2;
  v108 = a1;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v99 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v93 = (&v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v96 = &v91 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v97 = &v91 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v95 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v91 - v24;
  v26 = sub_1CF9E63D8();
  v27 = *(v26 - 8);
  v100 = v26;
  v101 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v92 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v98 = &v91 - v30;
  v31 = sub_1CF9E6448();
  v102 = *(v31 - 8);
  v103 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v94 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v91 - v34;
  v36 = sub_1CF9E64A8();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = (&v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = swift_allocObject();
  *(v40 + 16) = a6;
  *(v40 + 24) = a7;
  v110 = v40;
  v41 = *(a5 + 64);
  *v39 = v41;
  (*(v37 + 104))(v39, *MEMORY[0x1E69E8020], v36);
  v107 = a7;

  v42 = v41;
  v43 = sub_1CF9E64D8();
  v45 = *(v37 + 8);
  v44 = (v37 + 8);
  v45(v39, v36);
  if ((v43 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v43 = sub_1CF1F7C20(0, *(v43 + 16) + 1, 1, v43);
LABEL_23:
    v90 = *(v43 + 16);
    v89 = *(v43 + 24);
    if (v90 >= v89 >> 1)
    {
      v43 = sub_1CF1F7C20((v89 > 1), v90 + 1, 1, v43);
    }

    *(v43 + 16) = v90 + 1;
    sub_1CEFE55D0(v44, v43 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v90, &unk_1EC4C5230, &unk_1CF9FE4C0);
    *(*(v35 + 56) + 8 * a6) = v43;
    *(v39 + a5) = v35;
    swift_endAccess();
LABEL_26:

    return;
  }

  if (*(a5 + 152) == 1)
  {
    v46 = FPDomainUnavailableError();
    (a6)();

    return;
  }

  v91 = a10;
  v39 = qword_1EC4EBD78;
  swift_beginAccess();
  if (!*(*(v39 + a5) + 16) || (sub_1CF7BF2C0(v108, v109), (v47 & 1) == 0))
  {
    v107 = a5;
    v96 = a11;
    v95 = a9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04E0, &qword_1CF9FE4B8);
    v53 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1CF9FA450;
    v55 = (v54 + v53);
    qos_class_self();
    sub_1CF9E63B8();
    v57 = v100;
    v56 = v101;
    v58 = *(v101 + 48);
    if (v58(v25, 1, v100) == 1)
    {
      (*(v56 + 104))(v98, *MEMORY[0x1E69E7FA0], v57);
      if (v58(v25, 1, v57) != 1)
      {
        sub_1CEFCCC44(v25, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v56 + 32))(v98, v25, v57);
    }

    sub_1CF9E6428();
    v59 = v105;
    v60 = *(v105 + 64);
    v61 = v103;
    v62 = *(v102 + 32);
    v63 = v97;
    v62(&v97[v60], v35, v103);
    v64 = v106;
    v65 = v104;
    *v55 = v106;
    v55[1] = v65;
    v62(v55 + *(v59 + 64), &v63[v60], v61);
    v66 = (v55 + *(v59 + 80));
    v67 = swift_allocObject();
    v68 = v110;
    *(v67 + 16) = v91;
    *(v67 + 24) = v68;
    *v66 = v96;
    v66[1] = v67;
    v69 = v107;
    swift_beginAccess();

    sub_1CEFD09A0(v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = *(v39 + v69);
    *(v39 + v69) = 0x8000000000000000;
    sub_1CF1D35F8(v54, v108, v109, isUniquelyReferenced_nonNull_native);
    *(v39 + v69) = v111;
    swift_endAccess();
    goto LABEL_26;
  }

  v97 = a12;
  v98 = a13;
  qos_class_self();
  v48 = v95;
  sub_1CF9E63B8();
  v50 = v100;
  v49 = v101;
  v51 = *(v101 + 48);
  if (v51(v48, 1, v100) == 1)
  {
    (*(v49 + 104))(v92, *MEMORY[0x1E69E7FA0], v50);
    v52 = v51(v48, 1, v50);
    v44 = v93;
    if (v52 != 1)
    {
      sub_1CEFCCC44(v48, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v49 + 32))(v92, v48, v50);
    v44 = v93;
  }

  v71 = v94;
  sub_1CF9E6428();
  v72 = v105;
  v73 = *(v105 + 64);
  v74 = v103;
  v75 = *(v102 + 32);
  v76 = v96;
  v75(&v96[v73], v71, v103);
  v77 = v106;
  v78 = v104;
  *v44 = v106;
  v44[1] = v78;
  v75(v44 + *(v72 + 64), &v76[v73], v74);
  v79 = (v44 + *(v72 + 80));
  v80 = swift_allocObject();
  v81 = v110;
  *(v80 + 16) = v91;
  *(v80 + 24) = v81;
  *v79 = v98;
  v79[1] = v80;
  swift_beginAccess();

  sub_1CEFD09A0(v77);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *(v39 + a5);
  v43 = v111;
  *(v39 + a5) = 0x8000000000000000;
  a6 = sub_1CF7BF2C0(v108, v109);
  v83 = *(v43 + 16);
  v84 = (v82 & 1) == 0;
  v85 = v83 + v84;
  if (__OFADD__(v83, v84))
  {
    goto LABEL_28;
  }

  v86 = v82;
  if (*(v43 + 24) >= v85)
  {
    goto LABEL_20;
  }

  sub_1CF7CAB14(v85, v35);
  v87 = sub_1CF7BF2C0(v108, v109);
  if ((v86 & 1) == (v88 & 1))
  {
    a6 = v87;
    while ((v86 & 1) == 0)
    {
      while (1)
      {

        __break(1u);
LABEL_20:
        if ((v35 & 1) == 0)
        {
          break;
        }

        if (v86)
        {
          goto LABEL_22;
        }
      }

      sub_1CF7D296C();
    }

LABEL_22:
    v35 = v111;
    v43 = *(*(v111 + 56) + 8 * a6);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  sub_1CF9E8108();
  __break(1u);
}

unint64_t sub_1CF5DC71C()
{
  result = qword_1EC4C1A78;
  if (!qword_1EC4C1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A78);
  }

  return result;
}

uint64_t sub_1CF5DC770(void *a1)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v8 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v7, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v4 = *&v1[qword_1EDEADB30];
  *&v1[qword_1EDEADB30] = a1;
  v5 = a1;

  result = objc_sync_exit(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v8 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v7, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

void sub_1CF5DC880(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unint64_t a10)
{
  v139 = a3;
  v141 = a2;
  v144 = a1;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
  v134 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v126 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v129 = &v118 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v132 = &v118 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v128 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v131 = &v118 - v23;
  v136 = sub_1CF9E63D8();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v125 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v118 - v26;
  v138 = sub_1CF9E6448();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v127 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v130 = &v118 - v29;
  v120 = sub_1CF9E5CF8();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1CF9E64A8();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = (&v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = swift_allocObject();
  v143 = a5;
  *(v35 + 16) = a5;
  *(v35 + 24) = a6;
  *(v35 + 32) = a7;
  *(v35 + 40) = a8;
  v121 = a8;
  v36 = a9;
  *(v35 + 48) = a9;
  v37 = v35;
  *(v35 + 56) = a10;
  v38 = a4[8];
  *v34 = v38;
  (*(v32 + 104))(v34, *MEMORY[0x1E69E8020], v31);
  v142 = a6;

  v122 = a7;

  v123 = a10;
  sub_1CEFD09A0(a10);
  v39 = v38;
  v40 = sub_1CF9E64D8();
  v42 = *(v32 + 8);
  v41 = (v32 + 8);
  v42(v34, v31);
  if ((v40 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*(a4 + 152) == 1)
  {
    v151 = 0;
    memset(v150, 0, sizeof(v150));
    v43 = FPDomainUnavailableError();
    if (v43)
    {
      v44 = v43;
      v45 = v43;
      (v143)(v44);

LABEL_34:
      sub_1CEFCCC44(v150, &unk_1EC4C1B30, &qword_1CFA05300);
      goto LABEL_35;
    }

    sub_1CEFCCBDC(v150, &v145, &unk_1EC4C1B30, &qword_1CFA05300);
    v70 = v142;
    if (!v146)
    {
      sub_1CEFCCC44(&v145, &unk_1EC4C1B30, &qword_1CFA05300);
      sub_1CF24CD3C();
      v116 = swift_allocError();
      *v117 = 4;
      *(v117 + 8) = 0u;
      *(v117 + 24) = 0u;
      *(v117 + 40) = 0;
      *(v117 + 48) = 9;
      v143();

      goto LABEL_34;
    }

    sub_1CF054EA0(&v145, &v147);
    v71 = *(v122 + 16);
    v72 = v123;
    sub_1CF9042A4(v123);
    v74 = v73;

    v75 = v121;
    sub_1CF5DBCE0(v121, a9, v72, v74, v71, v143, v70, &unk_1F4C0AF40, byte_1F4C0AF68, sub_1CF481760, sub_1CF5E14E4, byte_1F4C0AF90, sub_1CF5E14E4);
    v36 = v70;

    a7 = v148;
    v144 = v149;
    v141 = __swift_project_boxed_opaque_existential_1(&v147, v148);
    a4 = sub_1CF9042A4(v72);
    v77 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
    v31 = swift_allocObject();
    *(v31 + 152) = a9;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 1;
    *(v31 + 56) = 0u;
    *(v31 + 72) = 0u;
    *(v31 + 88) = 0;
    *(v31 + 120) = a4;
    *(v31 + 128) = v77;
    *(v31 + 136) = 0;
    *(v31 + 144) = v75;
    *(v31 + 96) = xmmword_1CFA04E20;
    *(v31 + 112) = 0;
    v78 = v118;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v80 = v79;
    (*(v119 + 8))(v78, v120);
    v81 = v80 * 1000000000.0;
    if (COERCE__INT64(fabs(v80 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v81 > -9.22337204e18)
    {
      if (v81 < 9.22337204e18)
      {
        sub_1CF5215C0(v31, v81, v141, a7, v144);

        __swift_destroy_boxed_opaque_existential_1(&v147);
        goto LABEL_34;
      }

      goto LABEL_41;
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v46 = qword_1EC4EBD70;
  swift_beginAccess();
  v47 = *(a4 + v46);
  v48 = *v47->tree;
  v124 = v37;
  if (!v48 || (, sub_1CEFE863C(v144), v50 = v49, v47, v49, v51, v52, v53, v54, v55, v56, (v50 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C00, &qword_1CFA18A10);
    v63 = (*(v134 + 80) + 32) & ~*(v134 + 80);
    v64 = swift_allocObject();
    *(v64 + 1) = xmmword_1CF9FA450;
    v143 = v64;
    v65 = v64 + v63;
    qos_class_self();
    v66 = v131;
    sub_1CF9E63B8();
    v67 = v135;
    v68 = *(v135 + 48);
    v69 = v136;
    if (v68(v66, 1, v136) == 1)
    {
      (*(v67 + 104))(v133, *MEMORY[0x1E69E7FA0], v69);
      if (v68(v66, 1, v69) != 1)
      {
        sub_1CEFCCC44(v66, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v67 + 32))(v133, v66, v69);
    }

    v82 = v130;
    sub_1CF9E6428();
    v83 = v140;
    v84 = *(v140 + 64);
    v85 = *(v137 + 32);
    v86 = v132;
    v87 = v138;
    v85(&v132[v84], v82, v138);
    v88 = v141;
    v89 = v139;
    *v65 = v141;
    *(v65 + 1) = v89;
    v85(&v65[*(v83 + 64)], &v86[v84], v87);
    v90 = &v65[*(v83 + 80)];
    v91 = swift_allocObject();
    v92 = v124;
    *(v91 + 16) = sub_1CF5DFDAC;
    *(v91 + 24) = v92;
    *v90 = sub_1CF5E14E4;
    *(v90 + 1) = v91;
    swift_beginAccess();

    sub_1CEFD09A0(v88);
    v93 = v144;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v145 = *(a4 + v46);
    *(a4 + v46) = 0x8000000000000000;
    sub_1CF1D348C(v143, v93, isUniquelyReferenced_nonNull_native);

    *(a4 + v46) = v145;
    goto LABEL_32;
  }

  qos_class_self();
  v57 = v128;
  sub_1CF9E63B8();
  v58 = v135;
  v59 = *(v135 + 48);
  v60 = v136;
  if (v59(v57, 1, v136) == 1)
  {
    (*(v58 + 104))(v125, *MEMORY[0x1E69E7FA0], v60);
    v61 = v59(v57, 1, v60);
    v62 = v126;
    if (v61 != 1)
    {
      sub_1CEFCCC44(v57, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v58 + 32))(v125, v57, v60);
    v62 = v126;
  }

  v95 = v127;
  sub_1CF9E6428();
  v96 = v140;
  v97 = *(v140 + 64);
  v98 = *(v137 + 32);
  v99 = v129;
  v100 = v138;
  v98(&v129[v97], v95, v138);
  v101 = v141;
  v102 = v139;
  *v62 = v141;
  *(v62 + 1) = v102;
  v98(&v62[*(v96 + 64)], &v99[v97], v100);
  v103 = &v62[*(v96 + 80)];
  v104 = swift_allocObject();
  v40 = v124;
  *(v104 + 16) = sub_1CF5DFDAC;
  *(v104 + 24) = v40;
  *v103 = sub_1CF5E14E4;
  *(v103 + 1) = v104;
  swift_beginAccess();

  sub_1CEFD09A0(v101);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v106 = v46;
  v107 = v105;
  *&v145 = *(a4 + v106);
  v41 = v145;
  v31 = a4;
  v36 = v106;
  *(a4 + v106) = 0x8000000000000000;
  a7 = sub_1CEFE863C(v144);
  v109 = *v41->tree;
  v110 = (v108 & 1) == 0;
  v111 = v109 + v110;
  if (__OFADD__(v109, v110))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  LOBYTE(v75) = v108;
  a4 = v62;
  if (*v41->tester >= v111)
  {
    if (v107)
    {
      if ((v108 & 1) == 0)
      {
LABEL_43:

        sub_1CF5DE5B8(v123);
        __break(1u);
        goto LABEL_44;
      }

LABEL_28:
      v40 = v145;
      v41 = *(*(v145 + 56) + 8 * a7);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_29:
        v115 = *v41->tree;
        v114 = *v41->tester;
        if (v115 >= v114 >> 1)
        {
          v41 = sub_1CF1F7BFC((v114 > 1), v115 + 1, 1, v41);
        }

        *v41->tree = v115 + 1;
        sub_1CEFE55D0(a4, v41 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v115, &qword_1EC4BE670, &qword_1CF9FE4D0);
        *(*(v40 + 56) + 8 * a7) = v41;
        *(v31 + v36) = v40;
LABEL_32:
        swift_endAccess();
LABEL_35:

        return;
      }

LABEL_38:
      v41 = sub_1CF1F7BFC(0, *v41->tree + 1, 1, v41);
      goto LABEL_29;
    }

LABEL_42:
    sub_1CF7D2808();
    if ((v75 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_28;
  }

  sub_1CF7CA84C(v111, v107);
  v112 = sub_1CEFE863C(v144);
  if ((v75 & 1) == (v113 & 1))
  {
    a7 = v112;
    if ((v75 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_28;
  }

LABEL_44:

  type metadata accessor for NSFileProviderItemIdentifier(0);
  sub_1CF5DE5B8(v123);
  sub_1CF9E8108();
  __break(1u);
}

void sub_1CF5DD734(void *a1, uint64_t a2, char a3)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1BA0, &qword_1CFA0CD20);
    inited = swift_initStackObject();
    v6 = inited;
    *(inited + 16) = xmmword_1CF9FA440;
    *(inited + 32) = 0x6F6974617265706FLL;
    v7 = 21318;
    if (a3)
    {
      v7 = 20550;
    }

    *(inited + 40) = 0xED0000656469536ELL;
    *(inited + 48) = v7;
    *(inited + 56) = 0xE200000000000000;
    strcpy((inited + 64), "operationType");
    *(inited + 78) = -4864;
    *(inited + 80) = 0x7274537465736572;
    *(inited + 88) = 0xEB000000006D6165;
    v8 = a1;
    v9 = sub_1CF4E0980(v6);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1BA8, &qword_1CFA0CD28);
    swift_arrayDestroy();
    sub_1CF7BB1B8(v9);
    v11 = v10;
    v9, v12, v13, v14, v15, v16, v17, v18;
    v19 = sub_1CF9E6618();
    v11, v20, v21, v22, v23, v24, v25, v26;
    v27 = sub_1CF9E57E8();
    [v8 postReportWithCategory:1 type:1 payload:v19 error:v27];
  }
}

uint64_t sub_1CF5DD8DC(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x7865646E496C6C61 && a2 == 0xEA00000000006465 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = 0xEE0064657865646ELL;
    if (a1 == 0x49676E6968746F6ELL && a2 == 0xEE0064657865646ELL || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x7865646E49746F6ELL && a2 == 0xEB00000000676E69)
    {
      0xEB00000000676E69, 0xEB00000000676E69, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else
    {
      v13 = sub_1CF9E8048();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 4;
      }

      else
      {
        return 5;
      }
    }
  }
}

uint64_t sub_1CF5DDA9C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1A98, &qword_1CFA0CC88);
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v37 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AA0, &qword_1CFA0CC90);
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v37 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AA8, &qword_1CFA0CC98);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v37 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AB0, &qword_1CFA0CCA0);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AB8, &qword_1CFA0CCA8);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1AC0, &unk_1CFA0CCB0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1CF5DE324();
  v16 = v53;
  sub_1CF9E8298();
  if (v16)
  {
    goto LABEL_10;
  }

  v15 = v10;
  v38 = v8;
  v39 = 0;
  v17 = v50;
  v18 = v51;
  v53 = v12;
  v19 = sub_1CF9E7DF8();
  v20 = (2 * *(v19 + 16)) | 1;
  v54 = v19;
  v55 = v19 + 32;
  v56 = 0;
  v57 = v20;
  v21 = sub_1CF18BE0C();
  v22 = v11;
  if (v21 == 5 || v56 != v57 >> 1)
  {
    v15 = sub_1CF9E79E8();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AD0, &qword_1CFA010F0);
    *v27 = &type metadata for DatabaseIndexAnchor;
    sub_1CF9E7C98();
    sub_1CF9E79D8();
    (*(*(v15 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v15);
    swift_willThrow();
    (*(v53 + 8))(v14, v11);
    swift_unknownObjectRelease();
LABEL_10:
    v28 = v52;
    goto LABEL_11;
  }

  if (v21 <= 1u)
  {
    if (!v21)
    {
      v58 = 0;
      sub_1CF5DE4C8();
      v30 = v15;
      v31 = v39;
      sub_1CF9E7C88();
      v15 = v31;
      if (!v31)
      {
        v36 = v38;
        v15 = sub_1CF9E7D78();
        (*(v40 + 8))(v30, v36);
      }

      (*(v53 + 8))(v14, v22);
      swift_unknownObjectRelease();
      v28 = v52;
      goto LABEL_11;
    }

    v58 = 1;
    sub_1CF5DE474();
    v35 = v39;
    sub_1CF9E7C88();
    if (v35)
    {
LABEL_21:
      (*(v53 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v28 = v52;
      goto LABEL_11;
    }

    (*(v41 + 8))(v7, v43);
    (*(v53 + 8))(v14, v11);
    swift_unknownObjectRelease();
    v15 = 0;
LABEL_26:
    v28 = v52;
    goto LABEL_11;
  }

  if (v21 == 2)
  {
    v58 = 2;
    sub_1CF5DE420();
    v32 = v39;
    sub_1CF9E7C88();
    v33 = v53;
    if (v32)
    {
      goto LABEL_21;
    }

    (*(v42 + 8))(v17, v44);
    (*(v33 + 8))(v14, v11);
    swift_unknownObjectRelease();
    v15 = 1;
    goto LABEL_26;
  }

  v23 = v53;
  if (v21 == 3)
  {
    v58 = 3;
    sub_1CF5DE3CC();
    v24 = v49;
    v25 = v39;
    sub_1CF9E7C88();
    if (!v25)
    {
      (*(v45 + 8))(v24, v48);
      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v15 = 2;
LABEL_24:
      v28 = v52;
      goto LABEL_11;
    }
  }

  else
  {
    v58 = 4;
    sub_1CF5DE378();
    v34 = v39;
    sub_1CF9E7C88();
    if (!v34)
    {
      (*(v46 + 8))(v18, v47);
      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v15 = 3;
      goto LABEL_24;
    }
  }

  (*(v23 + 8))(v14, v11);
  swift_unknownObjectRelease();
  v28 = v52;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v15;
}

unint64_t sub_1CF5DE324()
{
  result = qword_1EDEA61E8;
  if (!qword_1EDEA61E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61E8);
  }

  return result;
}

unint64_t sub_1CF5DE378()
{
  result = qword_1EC4C1AD8;
  if (!qword_1EC4C1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1AD8);
  }

  return result;
}

unint64_t sub_1CF5DE3CC()
{
  result = qword_1EC4C1AE0;
  if (!qword_1EC4C1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1AE0);
  }

  return result;
}

unint64_t sub_1CF5DE420()
{
  result = qword_1EC4C1AE8;
  if (!qword_1EC4C1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1AE8);
  }

  return result;
}

unint64_t sub_1CF5DE474()
{
  result = qword_1EC4C1AF0;
  if (!qword_1EC4C1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1AF0);
  }

  return result;
}

unint64_t sub_1CF5DE4C8()
{
  result = qword_1EDEA6208;
  if (!qword_1EDEA6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6208);
  }

  return result;
}

double sub_1CF5DE5B8(unint64_t a1)
{
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CF5DE5FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

double sub_1CF5DE680(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 11;
  return result;
}

void sub_1CF5DE6B8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1CF5D49B4(a1, v4);
}

double sub_1CF5DE77C(void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(v1 + 40);
  v10[0] = *(v1 + 16);
  v10[1] = v5;
  v6 = *(type metadata accessor for ConcreteDatabase.MaterializationRequest(0, v10) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF5D00A8(a1, v1 + v7, v8, v3, v4);
}

double sub_1CF5DE848(void *a1, char a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 56);
  v12 = *(v2 + 40);
  v13[0] = *(v2 + 16);
  v13[1] = v12;
  v7 = *(type metadata accessor for ConcreteDatabase.MaterializationRequest(0, v13) - 8);
  v8 = (*(v7 + 80) + 88) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1CF5D0548(a1, a2 & 1, *(v2 + 64), *(v2 + 72), *(v2 + 80), v2 + v8, *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), v2 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v10 + 80) + 8) & ~*(v10 + 80)), v5, v6);
}

uint64_t sub_1CF5DE99C(uint64_t a1, void *a2)
{
  v5 = *(v2 + 32);
  v8 = *(v2 + 16);
  v11 = *(v2 + 40);
  v9 = v11;
  v10 = v8;
  *&v10 = type metadata accessor for UserRequest(255, &v10);
  *(&v10 + 1) = &type metadata for MaterializationRequestOptions;
  *&v11 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  *(&v11 + 1) = sub_1CF9E6448();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  v6 = *(swift_getTupleTypeMetadata() - 8);
  return sub_1CF5CFE1C(a1, a2, *(v2 + 64), *(v2 + 72), v2 + ((*(v6 + 80) + 80) & ~*(v6 + 80)), v8, *(&v8 + 1), v5, v9, *(&v9 + 1));
}

void sub_1CF5DEAC4()
{
  v5 = *(v0 + 40);
  v6[0] = *(v0 + 16);
  v6[1] = v5;
  v1 = *(type metadata accessor for ConcreteDatabase.MaterializationRequest(0, v6) - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  sub_1CF5D0B84(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), (v0 + v2), *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v0 + ((*(v4 + 80) + ((((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v4 + 80)));
}

uint64_t objectdestroy_44Tm()
{
  v1 = *(v0 + 40);
  v15[0] = *(v0 + 16);
  v15[1] = v1;
  v2 = type metadata accessor for ConcreteDatabase.MaterializationRequest(0, v15);
  v3 = v2 - 8;
  v4 = v0 + ((*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80));
  v5 = *(v2 + 52);
  v6 = sub_1CF9E6448();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  *(v4 + *(v3 + 64)), v7, v8, v9, v10, v11, v12, v13;
  return swift_deallocObject();
}

__n128 sub_1CF5DED38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 32);
  v12 = *(v3 + 40);
  v8 = *(v3 + 56);
  v13[0] = *(v3 + 16);
  v11 = v13[0];
  v13[1] = v12;
  v9 = *(type metadata accessor for ConcreteDatabase.MaterializationRequest(0, v13) - 8);
  sub_1CF5D4EF4(a1, v3 + ((*(v9 + 80) + 64) & ~*(v9 + 80)), v11, *(&v11 + 1), v7, v12, *(&v12 + 1), v8, a2, a3);
  return result;
}

uint64_t sub_1CF5DEE34(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);
  v12[0] = *(v1 + 64);
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  return sub_1CF5C8094(a1, v12, v2, v3, v4, v5, v6) & 1;
}

void sub_1CF5DEEB0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  sub_1CF5C8A10(a1, v1[8], v1 + v9, *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4, v5, v6, v7);
}

void sub_1CF5DEFF8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  sub_1CF5C73D4(a1, v1[8], v1 + v9, *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_233Tm(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v8[4], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[6], v16, v17, v18, v19, v20, v21, v22;
  v8[7], v23, v24, v25, v26, v27, v28, v29;
  v8[11], v30, v31, v32, v33, v34, v35, v36;
  v8[13], v37, v38, v39, v40, v41, v42, v43;
  v8[14], v44, v45, v46, v47, v48, v49, v50;
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1CF5DF270(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_1CEFCCBDC(result + 32, &v48, &unk_1EC4C1BC0, &qword_1CF9FE630);
  v8 = v48;
  v7 = v49;
  sub_1CF054EA0(v50, v47);
  v9 = *a3;
  result = sub_1CEFE4328(v8, v7);
  v17 = v9[2];
  v18 = (v10 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v21) = v10;
  if (v9[3] < v20)
  {
    sub_1CF7C6B84(v20, v5 & 1);
    result = sub_1CEFE4328(v8, v7);
    if ((v21 & 1) == (v10 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1CF9E8108();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v22 = *a3;
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_11:
    v22[(result >> 6) + 8] |= 1 << result;
    v26 = (v22[6] + 16 * result);
    *v26 = v8;
    v26[1] = v7;
    result = sub_1CF054EA0(v47, v22[7] + 40 * result);
    v27 = v22[2];
    v19 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v19)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v22[2] = v28;
    if (--v3)
    {
      goto LABEL_14;
    }

    return result;
  }

  v25 = result;
  sub_1CF7D0BA4();
  result = v25;
  v22 = *a3;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = result;
  v7, v10, v11, v12, v13, v14, v15, v16;
  v24 = (v22[7] + 40 * v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  result = sub_1CF054EA0(v47, v24);
  if (--v3)
  {
LABEL_14:
    v6 += 88;
    v7 = 40;
    v8 = &qword_1CF9FE630;
    while (1)
    {
      sub_1CEFCCBDC(v6, &v48, &unk_1EC4C1BC0, &qword_1CF9FE630);
      v5 = v48;
      v21 = v49;
      sub_1CF054EA0(v50, v47);
      v31 = *a3;
      result = sub_1CEFE4328(v5, v21);
      v39 = v31[2];
      v40 = (v32 & 1) == 0;
      v19 = __OFADD__(v39, v40);
      v41 = v39 + v40;
      if (v19)
      {
        goto LABEL_23;
      }

      v42 = v32;
      if (v31[3] < v41)
      {
        sub_1CF7C6B84(v41, 1);
        result = sub_1CEFE4328(v5, v21);
        if ((v42 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v43 = *a3;
      if (v42)
      {
        v29 = result;
        v21, v32, v33, v34, v35, v36, v37, v38;
        v30 = (v43[7] + 40 * v29);
        __swift_destroy_boxed_opaque_existential_1(v30);
        result = sub_1CF054EA0(v47, v30);
      }

      else
      {
        v43[(result >> 6) + 8] |= 1 << result;
        v44 = (v43[6] + 16 * result);
        *v44 = v5;
        v44[1] = v21;
        result = sub_1CF054EA0(v47, v43[7] + 40 * result);
        v45 = v43[2];
        v19 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v19)
        {
          goto LABEL_24;
        }

        v43[2] = v46;
      }

      v6 += 56;
      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1CF5DF570(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void))
{
  a2(a1, v2[4], v2[2], v2[3]);
}

uint64_t sub_1CF5DF5E8(uint64_t a1)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  v3[2] = AssociatedTypeWitness;
  v3[3] = v5;
  v3[4] = AssociatedConformanceWitness;
  v3[5] = v7;
  v8 = *(type metadata accessor for ReconciliationID(0, (v3 + 2)) - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v3[6] = AssociatedTypeWitness;
  v11 = (v9 + 80) & ~v9;
  v3[7] = v5;
  v3[8] = AssociatedConformanceWitness;
  v3[9] = v7;
  v12 = *(type metadata accessor for ThrottlingKey(0, (v3 + 6)) - 8);
  v13 = (v11 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = v1[2];
  v15 = v1[3];
  v16 = v1[8];
  v17 = v1[9];
  v18 = swift_task_alloc();
  v3[10] = v18;
  *v18 = v3;
  v18[1] = sub_1CF5DF7FC;

  return sub_1CF5BA8CC(a1, v14, v15, v16, v17, v1 + v11, v1 + v13);
}

uint64_t sub_1CF5DF7FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1CF5DF8F0()
{
  v1 = *(type metadata accessor for Signpost(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 25) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF5B9FE8(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 17), *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_63Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF5DFB70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF5DFC04(uint64_t a1)
{
  v3 = v2;
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[8];
  v10 = v1[9];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1CF0262EC;

  return sub_1CF5BB208(a1, v7, v8, v9, v10, v1 + v6);
}

void sub_1CF5DFDEC(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a4 <= 1u)
  {
    if (a4 >= 2u)
    {
      return;
    }

LABEL_7:
    a2, a2, a3, a4, a5, a6, a7, a8;
    return;
  }

  if (a4 == 2)
  {
    goto LABEL_7;
  }

  if (a4 == 3)
  {
  }
}

void sub_1CF5DFE6C(uint64_t a1, void *a2)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF5CE558(a1, a2, *(v2 + 64), *(v2 + 72), *(v2 + 80), (v2 + v6), *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF5DFFE4(void *a1, uint64_t a2)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  return sub_1CF5CFADC(a1, a2, *(v2 + 64), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_443Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF5E01A4(void *a1, uint64_t a2)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  return sub_1CF5CCB30(a1, a2, *(v2 + 64), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF5E02A4(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v7 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (*(v10 + 80) + 96) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF5CAE80(a1, a2, *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), v2 + v11, *(v2 + v12), *(v2 + v13), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), v5, v6, v8, v7, v9);
}

uint64_t objectdestroy_473Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF5E0608(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, char *, void, uint64_t, uint64_t))
{
  v7 = *(v3 + 4);
  v8 = *(v3 + 7);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  return a3(a1, a2, *(v3 + 8), &v3[v10], *&v3[(*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8], v7, v8);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon13DatabaseErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFu) <= 8)
  {
    return *(a1 + 48) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CF5E07A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 49))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xA)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF5E07E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t sub_1CF5E0830(uint64_t result, unsigned int a2)
{
  if (a2 > 8)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 9;
    LOBYTE(a2) = 9;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1CF5E0880(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = sub_1CF9E75D8();
    if (v6 <= 0x3F)
    {
      type metadata accessor for JobLockAggregator(255, v2, v1, v5);
      result = sub_1CF9E75D8();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CF5E0958(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  if (v10)
  {
    v14 = *(*(v5 - 8) + 64);
  }

  else
  {
    v14 = *(*(v5 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = AssociatedTypeWitness;
  v16 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  v17 = v14 + 7;
  if (v13 < a2)
  {
    v18 = ((v17 + (v16 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v13 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v22)
    {
      v23 = *(a1 + v18);
      if (v23)
      {
LABEL_28:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          v25 = *a1;
        }

        else
        {
          v25 = 0;
        }

        return v13 + (v25 | v24) + 1;
      }
    }
  }

  if (v8 == v13)
  {
    v26 = *(v7 + 48);

    return v26(a1, v8, v15);
  }

  v28 = (a1 + v16) & ~v11;
  if (v12 == v13)
  {
    if (v10 >= 2)
    {
      v30 = (*(v9 + 48))(v28);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *((v17 + v28) & 0xFFFFFFFFFFFFFFF8);
  if (v29 >= 0xFFFFFFFF)
  {
    LODWORD(v29) = -1;
  }

  if ((v29 + 1) >= 2)
  {
    return v29;
  }

  else
  {
    return 0;
  }
}

void sub_1CF5E0BB4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  v14 = *(v11 + 64);
  if (v12)
  {
    v15 = v12 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  v17 = *(*(AssociatedTypeWitness - 8) + 64) + v13;
  if (!v12)
  {
    ++v14;
  }

  v18 = v14 + 7;
  v19 = ((v18 + (v17 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v18 + (v17 & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v20 = a3 - v16 + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v16 < a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (a2 > v16)
  {
    if (((v18 + (v17 & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v24 = a2 - v16;
    }

    else
    {
      v24 = 1;
    }

    if (((v18 + (v17 & ~v13)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v25 = ~v16 + a2;
      bzero(a1, ((v18 + (v17 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v25;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        *(a1 + v19) = v24;
      }

      else
      {
        *(a1 + v19) = v24;
      }
    }

    else if (v23)
    {
      *(a1 + v19) = v24;
    }

    return;
  }

  if (v23 > 1)
  {
    if (v23 != 2)
    {
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *(a1 + v19) = 0;
  }

  else if (v23)
  {
    *(a1 + v19) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v10 == v16)
  {
    v26 = *(v9 + 56);

    v26(a1, a2, v10, AssociatedTypeWitness);
  }

  else
  {
    v27 = (a1 + v17) & ~v13;
    if (v15 == v16)
    {
      v28 = *(v11 + 56);

      v28(v27, (a2 + 1));
    }

    else
    {
      v29 = ((v18 + v27) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v29 = 0;
        *v29 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v29 = a2;
      }
    }
  }
}

unint64_t sub_1CF5E0E84()
{
  result = qword_1EC4C1CB8;
  if (!qword_1EC4C1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1CB8);
  }

  return result;
}

unint64_t sub_1CF5E0EDC()
{
  result = qword_1EC4C1CC0;
  if (!qword_1EC4C1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1CC0);
  }

  return result;
}

unint64_t sub_1CF5E0F34()
{
  result = qword_1EC4C1CC8;
  if (!qword_1EC4C1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1CC8);
  }

  return result;
}

unint64_t sub_1CF5E0F8C()
{
  result = qword_1EDEA61F0;
  if (!qword_1EDEA61F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61F0);
  }

  return result;
}

unint64_t sub_1CF5E0FE4()
{
  result = qword_1EDEA61F8;
  if (!qword_1EDEA61F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61F8);
  }

  return result;
}

unint64_t sub_1CF5E103C()
{
  result = qword_1EDEA61C0;
  if (!qword_1EDEA61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61C0);
  }

  return result;
}

unint64_t sub_1CF5E1094()
{
  result = qword_1EDEA61C8;
  if (!qword_1EDEA61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61C8);
  }

  return result;
}

unint64_t sub_1CF5E10EC()
{
  result = qword_1EDEA61B0;
  if (!qword_1EDEA61B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61B0);
  }

  return result;
}

unint64_t sub_1CF5E1144()
{
  result = qword_1EDEA61B8;
  if (!qword_1EDEA61B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61B8);
  }

  return result;
}

unint64_t sub_1CF5E119C()
{
  result = qword_1EDEA6190;
  if (!qword_1EDEA6190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6190);
  }

  return result;
}

unint64_t sub_1CF5E11F4()
{
  result = qword_1EDEA6198;
  if (!qword_1EDEA6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6198);
  }

  return result;
}

unint64_t sub_1CF5E124C()
{
  result = qword_1EDEA61A0;
  if (!qword_1EDEA61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61A0);
  }

  return result;
}

unint64_t sub_1CF5E12A4()
{
  result = qword_1EDEA61A8;
  if (!qword_1EDEA61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61A8);
  }

  return result;
}

unint64_t sub_1CF5E12FC()
{
  result = qword_1EDEA61D0;
  if (!qword_1EDEA61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61D0);
  }

  return result;
}

unint64_t sub_1CF5E1354()
{
  result = qword_1EDEA61D8;
  if (!qword_1EDEA61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA61D8);
  }

  return result;
}

unint64_t sub_1CF5E13AC()
{
  result = qword_1EC4C1CD0;
  if (!qword_1EC4C1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1CD0);
  }

  return result;
}

unint64_t sub_1CF5E1404()
{
  result = qword_1EC4C1CD8;
  if (!qword_1EC4C1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1CD8);
  }

  return result;
}

unint64_t sub_1CF5E1458()
{
  result = qword_1EC4C1CE0[0];
  if (!qword_1EC4C1CE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4C1CE0);
  }

  return result;
}

uint64_t sub_1CF5E15A0(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t sub_1CF5E1650(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v122 = a5;
  v118 = a3;
  v119 = a4;
  v9 = *a2;
  v10 = (*a2 + 88);
  v11 = *(*a2 + 96);
  v12 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v103 = sub_1CF9E75D8();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v117 = &v92 - v14;
  v109 = sub_1CF9E6118();
  v104 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v113 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v114 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v106 = &v92 - v20;
  v115 = v12;
  v116 = v11;
  v21.i64[0] = v12;
  v21.i64[1] = *v10;
  v22.i64[0] = v11;
  v22.i64[1] = *(v9 + 104);
  v107 = v22;
  v121 = v22;
  v112 = v21;
  v120 = v21;
  v23 = type metadata accessor for ItemReconciliation(255, &v120);
  v24 = sub_1CF9E75D8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v92 - v26;
  v111 = v23;
  v110 = *(v23 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v108 = &v92 - v30;
  if (((*(v9 + 152))(v29) & 0x4000) == 0)
  {
    goto LABEL_2;
  }

  v101 = v16;
  sub_1CF68DDB0(a1, v118, v119, v122, v27);
  if (v5)
  {
    return v31 & 1;
  }

  v34 = v110;
  v33 = v111;
  if ((*(v110 + 48))(v27, 1, v111) == 1)
  {
    (*(v25 + 8))(v27, v24);
LABEL_2:
    v31 = 0;
    return v31 & 1;
  }

  (*(v34 + 32))(v108, v27, v33);
  v35 = v101 + 16;
  v36 = v106;
  v37 = a1;
  v38 = v105;
  (*(v101 + 16))(v106, v37, v105);
  v121 = v107;
  v120 = v112;
  v39 = type metadata accessor for ItemJob(255, &v120);
  MetatypeMetadata = swift_getMetatypeMetadata();
  v121 = vextq_s8(v107, v107, 8uLL);
  v120 = vextq_s8(v112, v112, 8uLL);
  v99 = type metadata accessor for Propagation.DeletionAcked(0, &v120);
  v98 = a2[3];
  v97 = (*v98 + 312);
  v96 = *v97;
  v93 = (v104 + 8);
  v95 = (v35 + 32);
  v94 = (v35 + 16);
  v101 = v35 - 8;
  v40 = -1;
  v41 = 1;
  *&v42 = 134217984;
  v92 = v42;
  v104 = v39;
  while (1)
  {
    v112.i64[0] = v41;
    if (!(v40 + 1000 * (v41 / 0x3E8)))
    {
      v43 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v44 = sub_1CF9E6108();
      v45 = sub_1CF9E72A8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = v92;
        *(v46 + 4) = v112.i64[0];
        _os_log_impl(&dword_1CEFC7000, v44, v45, "wasDeletionAcked: too many iterations %ld, is there a cycle in the tree?", v46, 0xCu);
        MEMORY[0x1D386CDC0](v46, -1, -1);
      }

      (*v93)(v113, v109);
    }

    v47 = MetatypeMetadata;
    sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
    swift_allocObject();
    v48 = sub_1CF9E6D68();
    *v49 = v99;
    v50 = sub_1CF045898(v48, v47);
    v51 = v96(v36, v50, v118, v119, v122);
    if (v6)
    {
      goto LABEL_19;
    }

    v59 = v51;
    v50, v52, v53, v54, v55, v56, v57, v58;
    v120.i64[0] = v59;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    if ((sub_1CF9E7128() & 1) == 0)
    {
      break;
    }

    v59, v60, v61, v62, v63, v64, v65, v66;
    v67 = v117;
    (*(*a2[4] + 288))(v36, v118, v119, v122);
    if ((*v95)(v67, 1, v38) == 1)
    {
LABEL_30:
      (*v101)(v36, v38);
      (*(v110 + 8))(v108, v111);
      (*(v102 + 8))(v67, v103);
      goto LABEL_2;
    }

    v107.i64[0] = 0;
    v68 = *v94;
    v69 = v38;
    v70 = v114;
    (*v94)(v114, v67, v69);
    swift_getAssociatedConformanceWitness();
    v71 = sub_1CF9E6868();
    v50 = *v101;
    (*v101)(v36, v69);
    if (v71)
    {
      (v50)(v70, v69);
      (*(v110 + 8))(v108, v111);
      v31 = 0;
      return v31 & 1;
    }

    v68(v36, v70, v69);
    --v40;
    v41 = v112.i64[0] + 1;
    v38 = v69;
    v6 = v107.i64[0];
    if (__OFADD__(v112.i64[0], 1))
    {
      __break(1u);
LABEL_19:
      v50, v52, v53, v54, v55, v56, v57, v58;
      (*v101)(v36, v38);
      (*(v110 + 8))(v108, v111);
      return v31 & 1;
    }
  }

  v72 = sub_1CF9E6DF8();
  v80 = v111;
  if (!v72)
  {
LABEL_32:
    v59, v73, v74, v75, v76, v77, v78, v79;
    (*v101)(v36, v38);
    (*(v110 + 8))(v108, v80);
    goto LABEL_2;
  }

  v81 = 0;
  v67 = v108 + 8;
  while (1)
  {
    v82 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v82)
    {
      v83 = *(&v59[1].super.isa + v81);

      v91 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v83 = sub_1CF9E7998();
      v91 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    if (*(v83 + 128) >= *&v67[*(v80 + 64)])
    {
      break;
    }

    ++v81;
    if (v91 == sub_1CF9E6DF8())
    {
      goto LABEL_32;
    }
  }

  v59, v84, v85, v86, v87, v88, v89, v90;
  (*v101)(v36, v38);
  (*(v110 + 8))(v108, v80);
  v31 = 1;
  return v31 & 1;
}

uint64_t sub_1CF5E2118(int a1, uint64_t a2, void *a3, uint64_t a4, _TtC18FileProviderDaemon8FSTester *a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, void), NSObject *a9)
{
  v1062 = a8;
  v1058 = a7;
  v1072 = a6;
  v1091 = a4;
  v1048 = a3;
  v1070.i64[0] = a2;
  LODWORD(v1071) = a1;
  v1053 = a9;
  isa = a5->super.isa;
  v11 = *(a5->super.isa + 11);
  v12 = *(a5->super.isa + 13);
  v13 = type metadata accessor for SnapshotItem(255, v11, v12, a4);
  v994 = sub_1CF9E75D8();
  v993 = *(v994 - 8);
  MEMORY[0x1EEE9AC00](v994);
  v1016 = &v970 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v979 = &v970 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v990 = &v970 - v18;
  v1005 = v13;
  v1004 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v984 = &v970 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1061 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v1043 = &v970 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v1018 = &v970 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v1017 = &v970 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v980 = &v970 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v985 = &v970 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v992 = &v970 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v1049 = &v970 - v34;
  v35 = *(isa + 12);
  v1067 = a5;
  v36 = *(isa + 10);
  v37 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = swift_getAssociatedConformanceWitness();
  v1086.i64[0] = v37;
  v1086.i64[1] = AssociatedTypeWitness;
  v1028 = AssociatedConformanceWitness;
  v1087.i64[0] = AssociatedConformanceWitness;
  v1087.i64[1] = v39;
  v1065 = type metadata accessor for ReconciliationID(255, &v1086);
  v978 = sub_1CF9E75D8();
  v977 = *(v978 - 8);
  MEMORY[0x1EEE9AC00](v978);
  v983 = &v970 - v40;
  v1076 = v36;
  v1077 = v35;
  v42 = type metadata accessor for SnapshotItem(255, v36, v35, v41);
  v1013 = sub_1CF9E75D8();
  v996 = *(v1013 - 8);
  MEMORY[0x1EEE9AC00](v1013);
  v1001 = &v970 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v981 = &v970 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v1023 = &v970 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v995 = &v970 - v49;
  v1021 = v42;
  v1020 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v987 = &v970 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v976 = &v970 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v1024 = &v970 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v982 = (&v970 - v57);
  v58.i64[0] = v36;
  v1059 = v11;
  v58.i64[1] = v11;
  v1081 = v58;
  v59.i64[0] = v35;
  v1060.i64[0] = v12;
  v59.i64[1] = v12;
  v1080 = v59;
  v1086 = v58;
  v1087 = v59;
  v1010 = type metadata accessor for TestingOperation(0, &v1086);
  v1009 = *(v1010 - 8);
  MEMORY[0x1EEE9AC00](v1010);
  v1008 = &v970 - v60;
  v1037 = sub_1CF9E6118();
  v1038 = *(v1037 - 8);
  MEMORY[0x1EEE9AC00](v1037);
  v1036 = &v970 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v1007 = &v970 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v1000 = &v970 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v1034 = &v970 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v999 = &v970 - v69;
  v1086 = v1081;
  v1087 = v1080;
  v1064 = type metadata accessor for ReconciliationMutation(0, &v1086);
  v1068 = *(v1064 - 8);
  MEMORY[0x1EEE9AC00](v1064);
  v1066 = &v970 - v70;
  v1063 = AssociatedTypeWitness;
  v1051 = sub_1CF9E75D8();
  v1050 = *(v1051 - 8);
  MEMORY[0x1EEE9AC00](v1051);
  v1047 = &v970 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v1040 = &v970 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v1025 = &v970 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v997 = &v970 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v989 = &v970 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v1002 = &v970 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v1042 = &v970 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v991 = &v970 - v85;
  v1086 = v1081;
  v1087 = v1080;
  v86 = type metadata accessor for ItemReconciliation(0, &v1086);
  v1039 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v988 = &v970 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88);
  v1035 = &v970 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v986 = &v970 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v1029 = &v970 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v1012 = &v970 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v1030 = &v970 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v998 = &v970 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v1022 = &v970 - v101;
  v1074 = v102;
  v1026 = sub_1CF9E75D8();
  v1027 = *(v1026 - 8);
  MEMORY[0x1EEE9AC00](v1026);
  v1015 = &v970 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v104);
  v1006 = &v970 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v1003 = &v970 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v1011 = &v970 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v1031 = &v970 - v111;
  v1073.i64[0] = sub_1CF9E75D8();
  v1069 = *(v1073.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v1073.i64[0]);
  v1046 = &v970 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v113);
  v1045 = &v970 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v1032 = &v970 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v1044 = &v970 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v1057 = &v970 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v1056 = &v970 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v1019 = &v970 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v1033 = &v970 - v126;
  MEMORY[0x1EEE9AC00](v127);
  v1055 = &v970 - v128;
  v1078 = v37;
  v1079 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v1041 = &v970 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v131);
  v1052 = &v970 - v132;
  MEMORY[0x1EEE9AC00](v133);
  v1014 = &v970 - v134;
  MEMORY[0x1EEE9AC00](v135);
  v1054 = (&v970 - v136);
  MEMORY[0x1EEE9AC00](v137);
  v139 = &v970 - v138;
  MEMORY[0x1EEE9AC00](v140);
  v142 = &v970 - v141;
  MEMORY[0x1EEE9AC00](v143);
  v145 = (&v970 - v144);
  MEMORY[0x1EEE9AC00](v146);
  v148 = &v970 - v147;
  MEMORY[0x1EEE9AC00](v149);
  v151 = &v970 - v150;
  MEMORY[0x1EEE9AC00](v152);
  v154 = (&v970 - v153);
  MEMORY[0x1EEE9AC00](v155);
  v157 = &v970 - v156;
  MEMORY[0x1EEE9AC00](v158);
  v160 = &v970 - v159;
  v161 = *v1070.i64[0];
  v163 = type metadata accessor for ItemReconciliationHalf(0, v1076, v1077, v162);
  v164 = 69632;
  if (*(v1091 + *(v163 + 56)) == 6)
  {
    v164 = 4096;
  }

  v165 = v1071;
  if (v1071 > 5u)
  {
    if (v1071 <= 0x16u)
    {
      v166 = v1072;
      v167 = v1091;
      v1070.i64[0] = v164;
      if (v1071 == 6)
      {
        v168 = v163;
        v169 = v1045;
        (*(v1069 + 16))(v1045, v1091, v1073.i64[0]);
        v170 = v1079;
        v171 = v1078;
        if ((*(v1079 + 48))(v169, 1, v1078) != 1)
        {
          v172 = v1052;
          (*(v170 + 32))(v1052, v169, v171);
          v173 = sub_1CF056558();
          v175 = v1077;
          v176 = v1076;
          if (v173)
          {
            v178 = v1080;
            v177 = v1081;
          }

          else
          {
            v303 = v171;
            v304 = v167 + v1074[13];
            v305 = *(v304 + *(type metadata accessor for ItemReconciliationHalf(0, v1059, v1060.i64[0], v174) + 44));
            v171 = v303;
            v178 = v1080;
            v177 = v1081;
            if (!v305 || *(v167 + *(v168 + 52)) == 3)
            {
              v1070.i64[0] |= 1uLL;
            }
          }

          v1086 = v177;
          v1087 = v178;
          v306 = type metadata accessor for JobResult(0, &v1086);
          v307 = v176;
          v308 = v306;
          type metadata accessor for ReconciliationSideMutation(255, v307, v175, v309);
          v310 = *(swift_getTupleTypeMetadata2() + 48);
          v311 = *(v170 + 16);
          v312 = v1066;
          v1077 = v311;
          v311(v1066, v172, v171);
          swift_storeEnumTagMultiPayload();
          *(v312 + v310) = 1;
          swift_storeEnumTagMultiPayload();
          v313 = v171;
          v314 = v1064;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v166, v312);
          v315 = *(v1068 + 8);
          v315(v312, v314);
          if ((v1070.i32[0] & 0x10000) != 0)
          {
            type metadata accessor for ReconciliationSideMutation(255, v1059, v1060.i64[0], v316);
            v1073.i64[0] = v315;
            TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
            v1076 = v308;
            v318 = *(TupleTypeMetadata2 + 48);
            (v1077)(v312, v1052, v313);
            swift_storeEnumTagMultiPayload();
            *(v312 + v318) = 3;
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            sub_1CF06EB44(v166, v312);
            (v1073.i64[0])(v312, v314);
          }

          v1086 = v1081;
          v1087 = v1080;
          type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v1086);
          v319 = v1052;
          sub_1CF65707C(v1052, *(v1091 + v1074[16]), *(v1091 + v1074[16] + 8), v1070.i64[0]);
          v320 = sub_1CF47AFBC(0x2000);

          sub_1CF803A0C(v166, v320);

          v234 = *(v1079 + 8);
          v235 = v319;
          v236 = v313;
          return v234(v235, v236);
        }

        goto LABEL_300;
      }

      v283 = v1078;
      if (v1071 == 12)
      {
        v284 = v1046;
        (*(v1069 + 16))(v1046, v1091, v1073.i64[0]);
        v285 = v1079;
        if ((*(v1079 + 48))(v284, 1, v283) != 1)
        {
          v286 = v1041;
          (*(v285 + 32))(v1041, v284, v283);
          v287 = v1074;
          v288 = sub_1CF07CD80(v1074);
          v289 = 32;
          if (v288)
          {
            v289 = 128;
          }

          v1073.i64[0] = v289;
          v1086 = v1081;
          v1087 = v1080;
          type metadata accessor for JobResult(0, &v1086);
          type metadata accessor for ReconciliationSideMutation(255, v1076, v1077, v290);
          v291 = swift_getTupleTypeMetadata2();
          v292 = v1066;
          v293 = v1066 + *(v291 + 48);
          (*(v285 + 16))(v1066, v286, v283);
          swift_storeEnumTagMultiPayload();
          *v293 = 0;
          *(v293 + 8) = 0;
          *(v293 + 16) = 2;
          swift_storeEnumTagMultiPayload();
          v294 = v1064;
          swift_storeEnumTagMultiPayload();
          v295 = v1072;
          sub_1CF06EB44(v1072, v292);
          (*(v1068 + 8))(v292, v294);
          v1086 = v1081;
          v1087 = v1080;
          type metadata accessor for Ingestion.DeleteRejectedItemInTree(0, &v1086);
          v296 = sub_1CF657214(v286, *(v1091 + v287[16]), *(v1091 + v287[16] + 8), v1073.i64[0] | v1070.i64[0]);
          sub_1CF803A0C(v295, v296);

          return (*(v285 + 8))(v286, v283);
        }

        goto LABEL_304;
      }

LABEL_312:
      result = sub_1CF9E7B68();
      __break(1u);
      return result;
    }

    v197 = v1079;
    v198 = v1091;
    if (v1071 != 23)
    {
      v297 = v1072;
      if (v1071 == 75)
      {
        v298 = v1047;
        v1050[2](v1047, v1091 + v1074[13], v1051);
        v299 = v1061;
        v300 = v1063;
        if ((v1061[6])(v298, 1, v1063) != 1)
        {
          v301 = v1043;
          (v299[4])(v1043, v298, v300);
          v1086 = v1081;
          v1087 = v1080;
          type metadata accessor for JobResult(0, &v1086);
          v1086 = vextq_s8(v1081, v1081, 8uLL);
          v1087 = vextq_s8(v1080, v1080, 8uLL);
          type metadata accessor for Materialization.InjectOldVersion(0, &v1086);
          v302 = sub_1CF559420();
          sub_1CF8039C4(v297, v302);

          return (v299[1])(v301, v300);
        }

        goto LABEL_305;
      }

      goto LABEL_312;
    }

    v199 = v164;
    v974 = v163;
    v200 = v1044;
    (*(v1069 + 16))(v1044, v1091, v1073.i64[0]);
    v201 = *(v197 + 48);
    v202 = v1078;
    v203 = v201(v200, 1, v1078);
    v204 = v1074;
    if (v203 == 1)
    {
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
      goto LABEL_307;
    }

    v205 = *(v197 + 32);
    v205(v1054, v200, v202);
    v206 = (v198 + v204[13]);
    v1057 = type metadata accessor for ItemReconciliationHalf(0, v1059, v1060.i64[0], v207);
    v208 = *(v1057 + 19);
    v1071 = v206;
    if ((~*(v206 + v208) & 0xCLL) == 0)
    {
      v199 |= 0x8000000000uLL;
    }

    v209 = v1067;
    v210 = v1067[1].super.isa;
    if (sub_1CF056558())
    {
      v212 = v1080;
      v211 = v1081;
      v213 = v1063;
      v214 = v1062;
      goto LABEL_23;
    }

    v321 = *(v198 + v204[14]);
    if (v321 != 2)
    {
      if (v321 == 4)
      {
LABEL_307:
        __break(1u);
        goto LABEL_308;
      }

      if (!*(v1071 + *(v1057 + 11)))
      {
        ++v199;
      }

      v322 = v1078;
      goto LABEL_63;
    }

    v413 = v1053[1].isa;
    v414 = v1032;
    v415 = v1054;
    v416 = v1075;
    (*(*v210 + 288))(v1054, v1058, v1062, v413);
    if (!v416)
    {
      v1075 = 0;
      v468 = v414;
      v469 = v414;
      v470 = v1078;
      if (v201(v468, 1, v1078) != 1)
      {
        v500 = v1014;
        v205(v1014, v469, v470);
        v501 = v1015;
        v324 = v1062;
        v502 = v1075;
        sub_1CF68DDB0(v500, v1058, v1062, v413, v1015);
        v322 = v470;
        if (v502)
        {
          v503 = *(v1079 + 8);
          v503(v500, v470);
          return (v503)(v1054, v470);
        }

        v1075 = 0;
        (*(v1079 + 8))(v500, v470);
        v550 = v1039;
        v551 = v1074;
        v552 = (*(v1039 + 48))(v501, 1, v1074);
        v323 = v1061;
        if (v552 == 1)
        {
          (*(v1027 + 8))(v501, v1026);
        }

        else
        {
          v693 = v988;
          (*(v550 + 32))(v988, v501, v551);
          v694 = v693[v551[13] + *(v1057 + 11)];
          (*(v550 + 8))(v693, v551);
          if (!v694)
          {
            ++v199;
          }
        }

        v209 = v1067;
        goto LABEL_64;
      }

      (*(v1069 + 8))(v469, v1073.i64[0]);
      v322 = v470;
      v209 = v1067;
LABEL_63:
      v323 = v1061;
      v324 = v1062;
LABEL_64:
      v325 = *v209->tester;
      v326 = v1053[1].isa;
      v327 = v1054;
      v328 = v1075;
      v329 = (*(*v325 + 344))(v1054, v1058, v324, v326);
      v1075 = v328;
      if (!v328)
      {
        if (v330 & 1 | ((v329 & ~v199) == 0))
        {
          v444 = 0;
        }

        else
        {
          v444 = v329;
        }

        v199 |= v444;
        v445 = v1050;
        v446 = v1025;
        v447 = v1051;
        v1050[2](v1025, v1071, v1051);
        v448 = v1063;
        if ((v323[6])(v446, 1) == 1)
        {
          (v445[1])(v446, v447);
          v212 = v1080;
          v211 = v1081;
          v198 = v1091;
          v215 = v974;
          v216 = v1040;
          v213 = v448;
          v214 = v1062;
          goto LABEL_24;
        }

        v478 = v1017;
        (v323[4])(v1017, v446, v448);
        v1073 = vextq_s8(v1081, v1081, 8uLL);
        v1070 = vextq_s8(v1080, v1080, 8uLL);
        v1086 = v1073;
        v1087 = v1070;
        v1069 = type metadata accessor for ItemJob(255, &v1086);
        MetatypeMetadata = swift_getMetatypeMetadata();
        sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
        swift_allocObject();
        v480 = sub_1CF9E6D68();
        v1086 = v1073;
        v1087 = v1070;
        *v481 = type metadata accessor for Materialization.MaterializeItem(0, &v1086);
        v214 = v1062;
        v482 = sub_1CF045898(v480, MetatypeMetadata);
        v483 = v1075;
        v484 = (*(*v325 + 304))(v478, v482, v1058, v214, v326);
        if (v483)
        {
          v482, v485, v486, v487, v488, v489, v490, v491;
          (v323[1])(v478, v1063);
LABEL_116:
          v417 = *(v1079 + 8);
          v497 = &v1081;
LABEL_117:
          v418 = v497[-16].i64[0];
          v419 = v1078;
          return v417(v418, v419);
        }

        v1075 = 0;
        v532 = v484;
        v482, v485, v486, v487, v488, v489, v490, v491;
        v1086.i64[0] = v532;
        sub_1CF9E6E58();
        swift_getWitnessTable();
        sub_1CF9E7118();
        v533 = v1063;
        (v323[1])(v478, v1063);
        v534 = v1082;
        v532, v535, v536, v537, v538, v539, v540, v541;
        if (v534)
        {
          v542 = *(v534 + 112);
          v198 = v1091;
          v216 = v1040;
          if (v542 == 3 || v542 == 4 && !(*(v534 + 96) & 0xFFFFFFFFFFFFFFFELL | *(v534 + 104)))
          {
          }

          else
          {
            v1073.i64[0] = *(v534 + 136);

            v199 |= v1073.i64[0] & 0x10000000000;
          }

          v212 = v1080;
          v211 = v1081;
          v215 = v974;
          v213 = v1063;
LABEL_24:
          v217 = *(v1071 + *(v1057 + 11));
          v1073.i64[0] = v199;
          if (v217 || *(v198 + v215[13]) != 2)
          {
            goto LABEL_28;
          }

          v218 = v1050;
          v219 = v213;
          v220 = v1051;
          (v1050[2])(v216, v211, v212);
          v221 = v1061;
          if ((v1061[6])(v216, 1, v219) == 1)
          {
            (v218[1])(v216, v220);
            v212 = v1080;
            v211 = v1081;
LABEL_28:
            v222 = v1054;
LABEL_29:
            v1086 = v211;
            v1087 = v212;
            v223 = type metadata accessor for JobResult(0, &v1086);
            type metadata accessor for ReconciliationSideMutation(255, v1076, v1077, v224);
            v225 = *(swift_getTupleTypeMetadata2() + 48);
            v226 = v1066;
            v1076 = *(v1079 + 16);
            (v1076)(v1066, v222, v1078);
            swift_storeEnumTagMultiPayload();
            *(v226 + v225) = 1;
            swift_storeEnumTagMultiPayload();
            v227 = v1064;
            swift_storeEnumTagMultiPayload();
            v228 = v1072;
            v1077 = v223;
            sub_1CF06EB44(v1072, v226);
            v229 = v1068 + 8;
            v230 = *(v1068 + 8);
            v230(v226, v227);
            if ((v1073.i32[0] & 0x10000) != 0)
            {
              type metadata accessor for ReconciliationSideMutation(255, v1059, v1060.i64[0], v231);
              v1068 = v229;
              v232 = *(swift_getTupleTypeMetadata2() + 48);
              (v1076)(v226, v1054, v1078);
              v222 = v1054;
              swift_storeEnumTagMultiPayload();
              *(v226 + v232) = 3;
              swift_storeEnumTagMultiPayload();
              swift_storeEnumTagMultiPayload();
              sub_1CF06EB44(v228, v226);
              v230(v226, v227);
            }

            v1086 = v1081;
            v1087 = v1080;
            type metadata accessor for Ingestion.FetchContent(0, &v1086);
            v233 = sub_1CF65A054();
            sub_1CF803A0C(v228, v233);

            v234 = *(v1079 + 8);
            v235 = v222;
            goto LABEL_32;
          }

          v492 = v216;
          v493 = v1018;
          (v221[4])(v1018, v492, v219);
          v494 = *(**v209[1]._anon_8 + 240);
          v495 = v1016;
          v496 = v1075;
          v494(v493, 1, v1058, v214, v1053[1].isa);
          if (v496)
          {
            (v221[1])(v493, v219);
            goto LABEL_116;
          }

          v1075 = 0;
          v543 = v1004;
          v544 = v1005;
          v545 = (*(v1004 + 48))(v495, 1, v1005);
          v546 = v1054;
          if (v545 == 1)
          {
            (v1061[1])(v493, v219);
            (*(v993 + 8))(v495, v994);
          }

          else
          {
            WitnessTable = swift_getWitnessTable();
            v666 = sub_1CF937C7C(v544, WitnessTable);
            (*(v543 + 8))(v495, v544);
            if ((v666 & 1) == 0)
            {
              v1086 = v1081;
              v1087 = v1080;
              type metadata accessor for JobResult(0, &v1086);
              type metadata accessor for ReconciliationSideMutation(255, v1059, v1060.i64[0], v763);
              v764 = swift_getTupleTypeMetadata2();
              v765 = v1066;
              v766 = v1066 + *(v764 + 48);
              v767 = v1079;
              v768 = *(v1079 + 16);
              v768(v1066, v546, v1078);
              swift_storeEnumTagMultiPayload();
              v769 = v1074[16];
              *v766 = 1280;
              v770 = v1091;
              *(v766 + 8) = *(v1091 + v769);
              swift_storeEnumTagMultiPayload();
              v771 = v1064;
              swift_storeEnumTagMultiPayload();
              sub_1CF06EB44(v1072, v765);
              (*(v1068 + 8))(v765, v771);
              if ((*(v770 + v974[10]) & 8) == 0)
              {
                v772 = v1008;
                v773 = v1078;
                v768(v1008, v546, v1078);
                v1086 = v1081;
                v1087 = v1080;
                type metadata accessor for DirectionalTestingOperation(0, &v1086);
                swift_storeEnumTagMultiPayload();
                v774 = v1010;
                swift_storeEnumTagMultiPayload();
                (*(v1067->super.isa + 65))(v772, 0);
                (*(v1009 + 8))(v772, v774);
                (v1061[1])(v1018, v1063);
                return (*(v767 + 8))(v546, v773);
              }

              (v1061[1])(v1018, v1063);
              v212 = v1080;
              v211 = v1081;
              goto LABEL_174;
            }

            (v1061[1])(v493, v219);
          }

          v212 = v1080;
          v211 = v1081;
LABEL_174:
          v222 = v546;
          goto LABEL_29;
        }

        v213 = v533;
        v212 = v1080;
        v211 = v1081;
        v198 = v1091;
LABEL_23:
        v215 = v974;
        v216 = v1040;
        goto LABEL_24;
      }

      v234 = *(v1079 + 8);
      v235 = v327;
LABEL_66:
      v236 = v322;
      return v234(v235, v236);
    }

    v417 = *(v1079 + 8);
    v418 = v415;
LABEL_75:
    v419 = v1078;
    return v417(v418, v419);
  }

  v1047 = v157;
  v179 = v1057;
  v1071 = v145;
  v1054 = v154;
  v970 = v139;
  v975 = v148;
  v1052 = v151;
  v972 = v160;
  v971 = v161;
  v973 = v142;
  v974 = v163;
  if (!v165)
  {
    v1070.i64[0] = v164;
    v237 = v1055;
    v1071 = *(v1069 + 16);
    v1071(v1055, v1091, v1073.i64[0]);
    v238 = v1079;
    v239 = v1078;
    v1057 = *(v1079 + 48);
    if ((v1057)(v237, 1, v1078) == 1)
    {
      __break(1u);
LABEL_300:
      __break(1u);
      goto LABEL_301;
    }

    v240 = *(v238 + 32);
    v241 = v972;
    v240(v972, v237, v239);
    v242 = v1067[1].super.isa;
    v243 = v1053[1].isa;
    v244 = v1075;
    v245 = (*(*v242 + 312))(v241, v1058, v1062, v243);
    if (v244)
    {
      return (*(v238 + 8))(v241, v239);
    }

    v1055 = v240;
    v1056 = v243;
    v1075 = 0;
    if (v246)
    {
      v331 = fpfs_current_or_default_log();
      v332 = v1034;
      sub_1CF9E6128();
      v333 = v1039;
      v334 = *(v1039 + 16);
      v335 = v1029;
      v336 = v1074;
      v334(v1029, v1091, v1074);
      v337 = v1079;
      v1091 = *(v1079 + 16);
      (v1091)(v1054, v972, v1078);
      v338 = sub_1CF9E6108();
      v1080.i32[0] = sub_1CF9E72A8();
      v1081.i64[0] = v338;
      if (os_log_type_enabled(v338, v1080.i8[0]))
      {
        v339 = swift_slowAlloc();
        v1076 = v339;
        v1077 = swift_slowAlloc();
        v1086.i64[0] = v1077;
        *v339 = 136446466;
        v340 = v1030;
        v334(v1030, v335, v336);
        v341 = *(v333 + 8);
        v341(v335, v336);
        v342 = sub_1CF082CB0(v336);
        v344 = v343;
        v341(v340, v336);
        v345 = sub_1CEFD0DF0(v342, v344, v1086.i64);
        v344, v346, v347, v348, v349, v350, v351, v352;
        v353 = v1076;
        *(v1076 + 4) = v345;
        *(v353 + 12) = 2082;
        v354 = v1052;
        v355 = v1054;
        v356 = v1078;
        (v1091)(v1052, v1054, v1078);
        v357 = *(v337 + 8);
        v357(v355, v356);
        v358 = sub_1CF9E7F98();
        v360 = v359;
        v357(v354, v356);
        v361 = sub_1CEFD0DF0(v358, v360, v1086.i64);
        v360, v362, v363, v364, v365, v366, v367, v368;
        *(v353 + 14) = v361;
        v369 = v1081.i64[0];
        _os_log_impl(&dword_1CEFC7000, v1081.i64[0], v1080.i8[0], "🚔  cannot propagate creation for %{public}s: snapshot version not found for %{public}s", v353, 0x16u);
        v370 = v1077;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v370, -1, -1);
        MEMORY[0x1D386CDC0](v353, -1, -1);

        (*(v1038 + 8))(v1034, v1037);
        return v357(v972, v356);
      }

      else
      {
        v449 = *(v337 + 8);
        v450 = v1078;
        v449(v1054, v1078);
        (*(v333 + 8))(v335, v336);

        (*(v1038 + 8))(v332, v1037);
        return v449(v972, v450);
      }
    }

    v1054 = v245;
    v420 = v242;
    v421 = v1033;
    (*(*v242 + 288))(v972, v1058, v1062, v1056);
    (*(v1039 + 56))(v1031, 1, 1, v1074);
    v471 = v1019;
    v472 = v1073.i64[0];
    v1071(v1019, v421, v1073.i64[0]);
    v473 = v1078;
    if ((v1057)(v471, 1, v1078) == 1)
    {
      v1075 = 0;
      (*(v1069 + 8))(v471, v472);
      v474 = v1062;
      v475 = v1026;
      v476 = v1022;
      v477 = v1031;
    }

    else
    {
      v504 = v1047;
      (v1055)(v1047, v471, v473);
      v505 = v504;
      v506 = v1011;
      v474 = v1062;
      sub_1CF68DDB0(v505, v1058, v1062, v1056, v1011);
      v475 = v1026;
      v476 = v1022;
      v1075 = 0;
      (*(v1079 + 8))(v505, v473);
      v553 = v1027;
      (*(v1027 + 8))(v1031, v475);
      v554 = v553;
      v477 = v1031;
      (*(v554 + 32))(v1031, v506, v475);
    }

    v1071 = *v1067[1]._anon_8;
    v555 = sub_1CF056558();
    v556 = *(v1027 + 16);
    if (v555)
    {
      v557 = v1003;
      v556(v1003, v477, v475);
      v558 = v1039;
      v559 = v1074;
      if ((*(v1039 + 48))(v557, 1, v1074) == 1)
      {
        (*(v1027 + 8))(v557, v475);
LABEL_145:
        v565 = v559;
        v1086 = v1081;
        v1087 = v1080;
        v566 = type metadata accessor for JobResult(0, &v1086);
        type metadata accessor for ReconciliationSideMutation(255, v1076, v1077, v567);
        v568 = swift_getTupleTypeMetadata2();
        v569 = v1066;
        v570 = (v1066 + *(v568 + 48));
        v571 = *(v1079 + 16);
        v1077 = v1079 + 16;
        v1076 = v571;
        v571(v1066, v972, v1078);
        swift_storeEnumTagMultiPayload();
        v572 = v559[16];
        v573 = v1091;
        v574 = (v1091 + v572);
        v575 = *v574;
        v576 = v574[1];
        *v570 = 2;
        v570[1] = v575;
        v1070.i64[0] = v575;
        v1063 = v576;
        v570[2] = v576;
        swift_storeEnumTagMultiPayload();
        v577 = v1064;
        swift_storeEnumTagMultiPayload();
        v1071 = v566;
        sub_1CF06EB44(v1072, v569);
        v578 = *(v1068 + 8);
        v1068 += 8;
        v1062 = v578;
        v578(v569, v577);
        v579 = fpfs_current_or_default_log();
        v580 = v999;
        sub_1CF9E6128();
        v581 = v1039;
        v582 = *(v1039 + 16);
        v583 = v998;
        v584 = v573;
        v585 = v580;
        v582(v998, v584, v565);
        v586 = sub_1CF9E6108();
        v587 = sub_1CF9E72A8();
        if (os_log_type_enabled(v586, v587))
        {
          v588 = swift_slowAlloc();
          v1061 = swift_slowAlloc();
          v1086.i64[0] = v1061;
          *v588 = 136446210;
          LODWORD(v1058) = v587;
          v589 = v1030;
          v582(v1030, v583, v565);
          v590 = *(v581 + 8);
          v590(v583, v565);
          v591 = v585;
          v592 = sub_1CF082CB0(v565);
          v594 = v593;
          v590(v589, v565);
          v595 = sub_1CEFD0DF0(v592, v594, v1086.i64);
          v594, v596, v597, v598, v599, v600, v601, v602;
          *(v588 + 4) = v595;
          _os_log_impl(&dword_1CEFC7000, v586, v1058, "🚔  cannot propagate creation for %{public}s: parent folder is not reconciled", v588, 0xCu);
          v603 = v1061;
          __swift_destroy_boxed_opaque_existential_1(v1061);
          MEMORY[0x1D386CDC0](v603, -1, -1);
          MEMORY[0x1D386CDC0](v588, -1, -1);

          (*(v1038 + 8))(v591, v1037);
        }

        else
        {
          (*(v581 + 8))(v583, v565);

          (*(v1038 + 8))(v585, v1037);
        }

        v667 = v1067;
        v668 = v1091 + *(v565 + 52);
        v669 = v1059;
        v670 = v1060.i64[0];
        v671 = type metadata accessor for ItemReconciliationHalf(0, v1059, v1060.i64[0], v604);
        v673 = v1079;
        v674 = v1066;
        if (*(v668 + *(v671 + 44)) == 2)
        {
          type metadata accessor for ReconciliationSideMutation(255, v669, v670, v672);
          v675 = v674 + *(swift_getTupleTypeMetadata2() + 48);
          (v1076)(v674, v972, v1078);
          swift_storeEnumTagMultiPayload();
          *v675 = 1282;
          v676 = v1063;
          *(v675 + 8) = v1070.i64[0];
          *(v675 + 16) = v676;
          swift_storeEnumTagMultiPayload();
          v677 = v1064;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v1072, v674);
          v671 = v1062(v674, v677);
        }

        MEMORY[0x1EEE9AC00](v671);
        strcpy(&v970 - 48, " item version domainVersion ");
        v678 = v1078;
        v1086.i64[0] = v1078;
        v1086.i64[1] = v1013;
        v1087.i64[0] = MEMORY[0x1E69E6810];
        v1087.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v680 = TupleTypeMetadata[12];
        v681 = TupleTypeMetadata[16];
        v682 = TupleTypeMetadata[20];
        v683 = v1008;
        v684 = v972;
        (v1076)(v1008, v972, v678);
        (*(v1020 + 56))(&v683[v680], 1, 1, v1021);
        *&v683[v681] = v1054;
        v685 = v1048;
        *&v683[v682] = v1048;
        v1086 = v1081;
        v1087 = v1080;
        type metadata accessor for DirectionalTestingOperation(0, &v1086);
        swift_storeEnumTagMultiPayload();
        v686 = v1010;
        swift_storeEnumTagMultiPayload();
        v687 = *(v667->super.isa + 65);
        v688 = v685;
        v687(v683, 0);
        (*(v1009 + 8))(v683, v686);
        (*(v1027 + 8))(v1031, v1026);
        (*(v1069 + 8))(v1033, v1073.i64[0]);
        return (*(v673 + 8))(v684, v678);
      }

      (*(v558 + 32))(v476, v557, v559);
      v560 = &v476[v559[13]];
      v561 = v1050;
      v562 = v1050[2];
      v563 = v991;
      v1057 = v560;
      v564 = v1051;
      (v562)(v991);
      if ((v1061[6])(v563, 1, v1063) == 1)
      {
        (*(v558 + 8))(v1022, v559);
        (v561[1])(v563, v564);
        goto LABEL_145;
      }

      (v561[1])(v563, v564);
      v696 = type metadata accessor for ItemReconciliationHalf(0, v1059, v1060.i64[0], v695);
      v697 = v1057[*(v696 + 44)];
      (*(v558 + 8))(v1022, v559);
      v698 = v1070.i64[0];
      if (!v697)
      {
        v698 = v1070.i64[0] + 1;
      }

      v1070.i64[0] = v698;
      v475 = v1026;
      v477 = v1031;
    }

    v699 = v1006;
    v556(v1006, v477, v475);
    v700 = v699;
    v701 = v1039;
    v702 = v1074;
    v703 = (*(v1039 + 48))(v699, 1, v1074);
    v704 = v1012;
    if (v703 == 1)
    {
      (*(v1027 + 8))(v700, v475);
      v705 = v1075;
    }

    else
    {
      (*(v701 + 32))(v1012, v700, v702);
      v743 = v995;
      v744 = v972;
      v745 = v1075;
      (*(*v420 + 240))(v972, 1, v1058, v474, v1056);
      if (v745)
      {
        (*(v701 + 8))(v704, v702);
        (*(v1027 + 8))(v1031, v475);
        (*(v1069 + 8))(v1033, v1073.i64[0]);
        return (*(v1079 + 8))(v744, v1078);
      }

      v761 = v1020;
      v762 = v1021;
      if ((*(v1020 + 48))(v743, 1, v1021) != 1)
      {
        v804 = v982;
        (*(v761 + 32))(v982, v743, v762);
        v1086 = v1081;
        v1087 = v1080;
        type metadata accessor for ReconciliationTable(0, &v1086);
        v805 = v983;
        v806 = sub_1CF6982AC(v983, v1091, v804, v1012, v1067, v1058, v1062, v1056);
        v808 = v761;
        v1075 = 0;
        v857 = v806;
        v858 = v807;
        (*(v977 + 8))(v805, v978);
        (*(v808 + 8))(v804, v762);
        (*(v1039 + 8))(v1012, v702);
        v858, v859, v860, v861, v862, v863, v864, v865;
        v707 = v1070.i64[0];
        if (v857)
        {
          v707 = v1070.i64[0] | 0x40000000000;
        }

        v705 = v1075;
        v706 = v1091;
LABEL_194:
        v708 = v1078;
        v709 = (v707 >> 9) & 1;
        if ((*(v706 + v974[10]) & 0x8000) == 0)
        {
          LODWORD(v709) = 1;
        }

        if (v709)
        {
          v710 = (*(v706 + v974[10]) >> 22) & 0x200000 | v707;
        }

        else
        {
          v710 = (*(v706 + v974[10]) >> 22) & 0x200000 | v707 | 0x200;
        }

        v711 = v702[14];
        v712 = *(v706 + v711);
        if (v712 != 1)
        {
          if (v712 == 4)
          {
LABEL_308:
            __break(1u);
            goto LABEL_309;
          }

          v713 = (v710 & 0x8000000) != 0 || *(v1091 + v974[17] + 24) >> 60 == 11;
          if (!v713)
          {
            v710 |= 0x8000000uLL;
          }
        }

        v1075 = v705;
        if (sub_1CF056558())
        {
          v714 = *(v1091 + v711);
          if (v714 != 2)
          {
            v715 = v1077;
            v716 = v1076;
            if (v714 == 4)
            {
LABEL_311:
              __break(1u);
              goto LABEL_312;
            }

            v1086 = v1081;
            v1087 = v1080;
            type metadata accessor for JobResult(0, &v1086);
            type metadata accessor for ReconciliationSideMutation(255, v716, v715, v717);
            v718 = *(swift_getTupleTypeMetadata2() + 48);
            v719 = v1066;
            (*(v1079 + 16))(v1066, v972, v708);
            swift_storeEnumTagMultiPayload();
            *(v719 + v718) = 0;
            swift_storeEnumTagMultiPayload();
            v720 = v1064;
            swift_storeEnumTagMultiPayload();
            sub_1CF06EB44(v1072, v719);
            (*(v1068 + 8))(v719, v720);
            v702 = v1074;
          }
        }

        v1086 = v1081;
        v1087 = v1080;
        type metadata accessor for Propagation.CreateItem(0, &v1086);
        v721 = (v1091 + v702[16]);
        v722 = *v721;
        v723 = v721[1];
        v724 = v1048;
        v725 = v1048;
        v726 = sub_1CF60DA60(v972, v1054, v724, v722, v723, v710);
        if (!sub_1CF056558())
        {
          sub_1CF052548(1);
        }

        v1086 = v1081;
        v1087 = v1080;
        type metadata accessor for JobResult(0, &v1086);
        sub_1CF8039C4(v1072, v726);
        v728 = type metadata accessor for ReconciliationSideMutation(255, v1076, v1077, v727);
        v1077 = swift_getTupleTypeMetadata2();
        v729 = v1066;
        v730 = v1066 + *(v1077 + 48);
        v1076 = *(v1079 + 16);
        v731 = v972;
        v1080.i64[0] = v726;
        v732 = v1078;
        (v1076)(v1066, v972, v1078);
        swift_storeEnumTagMultiPayload();
        *v730 = 0;
        *(v730 + 8) = 0;
        *(v730 + 16) = 2;
        v1081.i64[0] = v728;
        swift_storeEnumTagMultiPayload();
        v733 = v1064;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v1072, v729);
        v1091 = *(v1068 + 8);
        (v1091)(v729, v733);
        v734 = *(v1077 + 48);
        (v1076)(v729, v731, v732);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1CF9FA440;
        *(inited + 32) = v971;
        if (qword_1EDEABDE0 != -1)
        {
          v968 = inited;
          swift_once();
          inited = v968;
        }

        *(inited + 40) = qword_1EDEABDE8;
        sub_1CEFF5464(inited, &v1086, v736, v737, v738, v739, v740, v741, v742);
        *(v729 + v734) = v1086.i64[0];
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v1072, v729);

        (v1091)(v729, v733);
        (*(v1027 + 8))(v1031, v1026);
        (*(v1069 + 8))(v1033, v1073.i64[0]);
        return (*(v1079 + 8))(v972, v732);
      }

      (*(v1039 + 8))(v1012, v702);
      (*(v996 + 8))(v743, v1013);
      v705 = 0;
    }

    v706 = v1091;
    v707 = v1070.i64[0];
    goto LABEL_194;
  }

  if (v165 != 1)
  {
    v247 = v1078;
    v248 = v1091;
    if (v165 == 2)
    {
      v249 = v1056;
      (*(v1069 + 16))(v1056, v1091, v1073.i64[0]);
      v250 = v1079;
      v713 = (*(v1079 + 48))(v249, 1, v247) == 1;
      v251 = v1061;
      v252 = v1051;
      v253 = v1050;
      v254 = v1049;
      if (!v713)
      {
        v255 = v250;
        v256 = *(v250 + 32);
        v257 = v247;
        v256(v975, v249, v247);
        v258 = v1074;
        v259 = v1042;
        v253[2](v1042, v248 + v1074[13], v252);
        v260 = v1063;
        if ((v251[6])(v259, 1, v1063) != 1)
        {
          (v251[4])(v254, v259, v260);
          v261 = *(v248 + v974[9]) & 0x11;
          v262 = v255;
          v1073.i64[0] = *(v255 + 16);
          v263 = v1071;
          (v1073.i64[0])(v1071, v975, v257);
          v264 = (v248 + v258[16]);
          v265 = *v264;
          v266 = v264[1];
          if (v261 == 16)
          {
            v267 = 0x2000000;
          }

          else
          {
            v267 = 4096;
          }

          v1086 = v1081;
          v1087 = v1080;
          v268 = type metadata accessor for JobResult(0, &v1086);
          v1086 = v1081;
          v1087 = v1080;
          type metadata accessor for Propagation.DeleteItem(0, &v1086);
          swift_allocObject();
          v269 = v1048;
          v270 = v1048;
          v271 = sub_1CF60DADC(v263, v269, v265, v266, v267);
          v272 = *(v262 + 8);
          v1079 = v262 + 8;
          v1081.i64[0] = v272;
          v273 = v1078;
          v272(v263, v1078);
          v1091 = v268;
          sub_1CF8039C4(v1072, v271);

          v1080.i64[0] = type metadata accessor for ReconciliationSideMutation(255, v1076, v1077, v274);
          v275 = swift_getTupleTypeMetadata2();
          v276 = v1066;
          v277 = v1066 + *(v275 + 48);
          (v1073.i64[0])(v1066, v975, v273);
          swift_storeEnumTagMultiPayload();
          *v277 = 0;
          *(v277 + 8) = 0;
          *(v277 + 16) = 2;
          swift_storeEnumTagMultiPayload();
          v278 = v1064;
          swift_storeEnumTagMultiPayload();
          v279 = v1072;
          sub_1CF06EB44(v1072, v276);
          v1077 = *(v1068 + 8);
          (v1077)(v276, v278);
          v280 = v1061;
          v281 = v1049;
          v282 = v1063;
          (v1061[2])(v276, v1049, v1063);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v279, v276);
          (v1077)(v276, v278);
          (v280[1])(v281, v282);
          return (v1081.i64[0])(v975, v1078);
        }

        goto LABEL_306;
      }

      goto LABEL_303;
    }

    goto LABEL_312;
  }

  v180 = v164;
  v181 = v1091;
  (*(v1069 + 16))(v1057, v1091, v1073.i64[0]);
  v182 = v1079;
  v183 = v1078;
  v184 = (*(v1079 + 48))(v179, 1, v1078);
  v185 = v1074;
  if (v184 == 1)
  {
LABEL_301:
    __break(1u);
    goto LABEL_302;
  }

  v186 = v973;
  (*(v182 + 32))(v973, v179, v183);
  v187 = v181 + v185[13];
  v189 = type metadata accessor for ItemReconciliationHalf(0, v1059, v1060.i64[0], v188);
  if ((~*(v187 + *(v189 + 76)) & 0xCLL) != 0)
  {
    v190 = v180;
  }

  else
  {
    v190 = v180 | 0x8000000000;
  }

  v1073.i64[0] = v190;
  v191 = v1067[1].super.isa;
  v192 = v1053[1].isa;
  v193 = v1075;
  v194 = (*(*v191 + 312))(v186, v1058, v1062, v192);
  if (v193)
  {
    return (*(v182 + 8))(v186, v183);
  }

  v1057 = v191;
  v371 = v1073.i64[0];
  v1071 = v192;
  v1070.i64[0] = v189;
  v1069 = v187;
  v1075 = 0;
  if (v195)
  {
    v372 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v373 = v1039;
    v374 = v1074;
    v375 = *(v1039 + 16);
    v375(v1035, v1091, v1074);
    v376 = v1079;
    v377 = v186;
    v378 = v970;
    v1080.i64[0] = *(v1079 + 16);
    (v1080.i64[0])(v970, v377, v183);
    v379 = sub_1CF9E6108();
    v380 = sub_1CF9E72A8();
    v1081.i64[0] = v379;
    if (os_log_type_enabled(v379, v380))
    {
      v381 = swift_slowAlloc();
      v1091 = swift_slowAlloc();
      v1086.i64[0] = v1091;
      *v381 = 136446466;
      LODWORD(v1077) = v380;
      v382 = v1030;
      v383 = v1035;
      v375(v1030, v1035, v374);
      v384 = *(v373 + 8);
      v384(v383, v374);
      v385 = sub_1CF082CB0(v374);
      v387 = v386;
      v384(v382, v374);
      v388 = sub_1CEFD0DF0(v385, v387, v1086.i64);
      v387, v389, v390, v391, v392, v393, v394, v395;
      *(v381 + 4) = v388;
      *(v381 + 12) = 2082;
      v396 = v1052;
      v397 = v970;
      v398 = v1078;
      (v1080.i64[0])(v1052, v970, v1078);
      v399 = *(v376 + 8);
      v399(v397, v398);
      v400 = sub_1CF9E7F98();
      v402 = v401;
      v399(v396, v398);
      v403 = sub_1CEFD0DF0(v400, v402, v1086.i64);
      v402, v404, v405, v406, v407, v408, v409, v410;
      *(v381 + 14) = v403;
      v411 = v1081.i64[0];
      _os_log_impl(&dword_1CEFC7000, v1081.i64[0], v1077, "🚔  cannot propagate update for %{public}s: snapshot version not found for %{public}s", v381, 0x16u);
      v412 = v1091;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v412, -1, -1);
      MEMORY[0x1D386CDC0](v381, -1, -1);

      (*(v1038 + 8))(v1036, v1037);
      return (v399)(v973, v398);
    }

    else
    {
      v451 = *(v376 + 8);
      v452 = v1078;
      v451(v378, v1078);
      (*(v373 + 8))(v1035, v374);

      (*(v1038 + 8))(v1036, v1037);
      return (v451)(v973, v452);
    }
  }

  v1056 = v194;
  if ((v971 & 0x10) == 0)
  {
    v422 = v183;
    v423 = *(v1091 + v974[19]);
    v425 = v1080;
    v424 = v1081;
    v426 = v1066;
    v427 = v1073.i64[0];
    if ((v423 & 0x20) != 0)
    {
      v427 = v1073.i64[0] | 0x1000000000000;
      v1086 = v1081;
      v1087 = v1080;
      type metadata accessor for JobResult(0, &v1086);
      v428 = v1066 + *(swift_getTupleTypeMetadata2() + 48);
      (*(v1079 + 16))(v1066, v973, v183);
      swift_storeEnumTagMultiPayload();
      *v428 = 32;
      *(v428 + 8) = 1;
      v429 = v1064;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v1072, v1066);
      v430 = v429;
      v426 = v1066;
      (*(v1068 + 8))(v1066, v430);
      v425 = v1080;
      v424 = v1081;
    }

    v431 = v1071;
    v432 = v1062;
    if ((v423 & 0x10) != 0)
    {
      v427 |= 0x800000000000uLL;
      v1086 = v424;
      v1087 = v425;
      type metadata accessor for JobResult(0, &v1086);
      v433 = v426 + *(swift_getTupleTypeMetadata2() + 48);
      (*(v1079 + 16))(v426, v973, v422);
      swift_storeEnumTagMultiPayload();
      *v433 = 16;
      *(v433 + 8) = 1;
      v434 = v1064;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v1072, v426);
      (*(v1068 + 8))(v426, v434);
    }

    v435 = v1023;
    v436 = v1024;
    if ((v971 & 0x10000000000) == 0)
    {
      v437 = v971;
      v438 = v971;
LABEL_84:
      v439 = v1067;
LABEL_85:
      v440 = *v439[1]._anon_8;
      v441 = sub_1CF056558();
      v1073.i64[0] = v427;
      v1052 = v440;
      if (v441)
      {
        v443 = v1080;
        v442 = v1081;
        if ((v437 & 0x4000) != 0 && *(v1091 + v974[13]))
        {
          v437 &= ~0x4000uLL;
        }

        v1055 = v437;
      }

      else
      {
        v510 = v438 & 0x16180000D034200;
        if (v510)
        {
          v511 = fpfs_current_or_default_log();
          v512 = v1000;
          sub_1CF9E6128();
          v513 = sub_1CF9E6108();
          v514 = sub_1CF9E72B8();
          if (os_log_type_enabled(v513, v514))
          {
            v515 = swift_slowAlloc();
            v1055 = v437;
            v516 = v515;
            v517 = swift_slowAlloc();
            v1086.i64[0] = v517;
            *v516 = 136446210;
            v518 = sub_1CF071470(v510);
            v520 = v519;
            v521 = sub_1CEFD0DF0(v518, v519, v1086.i64);
            v520, v522, v523, v524, v525, v526, v527, v528;
            *(v516 + 4) = v521;
            _os_log_impl(&dword_1CEFC7000, v513, v514, "☢️  file providers don't support setting the bit: %{public}s", v516, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v517);
            MEMORY[0x1D386CDC0](v517, -1, -1);
            v529 = v516;
            v437 = v1055;
            MEMORY[0x1D386CDC0](v529, -1, -1);
          }

          (*(v1038 + 8))(v512, v1037);
          v530 = v1074;
          v437 &= 0xFE9E7FFFF2FCBDFFLL;
          v443 = v1080;
          v442 = v1081;
          v531 = v1007;
        }

        else
        {
          v443 = v1080;
          v442 = v1081;
          v531 = v1007;
          v530 = v1074;
        }

        v1055 = v437;
        if ((v437 & 8) != 0)
        {
          v639 = *(v1091 + v530[14]);
          if (v639 != 1)
          {
            if (v639 == 4)
            {
LABEL_310:
              __break(1u);
              goto LABEL_311;
            }

            v640 = v986;
            if (*(v1091 + v974[17] + 24) >> 60 == 11)
            {
              v641 = v1062;
              if ((*(v1069 + *(v1070.i64[0] + 52)) | 4) == 4)
              {
                v642 = fpfs_current_or_default_log();
                sub_1CF9E6128();
                v643 = v1039;
                v644 = *(v1039 + 16);
                v644(v640, v1091, v530);
                v645 = v530;
                v646 = sub_1CF9E6108();
                v647 = sub_1CF9E72A8();
                if (os_log_type_enabled(v646, v647))
                {
                  v648 = swift_slowAlloc();
                  v1054 = swift_slowAlloc();
                  v1086.i64[0] = v1054;
                  *v648 = 136315138;
                  v1053 = v646;
                  LODWORD(v1050) = v647;
                  v649 = v1030;
                  v644(v1030, v640, v645);
                  v650 = *(v643 + 8);
                  v650(v640, v645);
                  v651 = sub_1CF082CB0(v645);
                  v653 = v652;
                  v650(v649, v645);
                  v654 = sub_1CEFD0DF0(v651, v653, v1086.i64);
                  v653, v655, v656, v657, v658, v659, v660, v661;
                  v662 = v648;
                  *(v648 + 4) = v654;
                  v663 = v1053;
                  _os_log_impl(&dword_1CEFC7000, v1053, v1050, "☢️  trying to propagate content from a dataless item %s", v648, 0xCu);
                  v664 = v1054;
                  __swift_destroy_boxed_opaque_existential_1(v1054);
                  MEMORY[0x1D386CDC0](v664, -1, -1);
                  MEMORY[0x1D386CDC0](v662, -1, -1);

                  (*(v1038 + 8))(v1007, v1037);
                }

                else
                {
                  (*(v643 + 8))(v640, v645);

                  (*(v1038 + 8))(v531, v1037);
                }

                v853 = v1079;
                v854 = v981;
                v855 = v973;
                v856 = v1075;
                (*(*v1057 + 240))(v973, 1, v1058, v641, v1071);
                if (v856)
                {
                  return (*(v853 + 8))(v855, v1078);
                }

                v1075 = 0;
                v1055 &= ~8uLL;
                v866 = v1021;
                if ((*(v1020 + 48))(v854, 1, v1021) == 1)
                {
                  (*(v996 + 8))(v854, v1013);
                }

                else
                {
                  (*(v1020 + 32))(v976, v854, v866);
                  v1086 = v1081;
                  v1087 = v1080;
                  v1054 = type metadata accessor for JobResult(0, &v1086);
                  v1053 = type metadata accessor for ReconciliationSideMutation(255, v1076, v1077, v867);
                  v868 = swift_getTupleTypeMetadata2();
                  v869 = v1066;
                  v1050 = (v1066 + *(v868 + 48));
                  (*(v853 + 16))(v1066, v973, v1078);
                  swift_storeEnumTagMultiPayload();
                  v870 = swift_getAssociatedTypeWitness();
                  v871 = swift_getAssociatedTypeWitness();
                  v872 = v866;
                  v873 = swift_getAssociatedConformanceWitness();
                  v874 = swift_getAssociatedConformanceWitness();
                  v1086.i64[0] = v870;
                  v1086.i64[1] = v871;
                  v1087.i64[0] = v873;
                  v1087.i64[1] = v874;
                  v875 = type metadata accessor for FileItemVersion(255, &v1086);
                  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
                  v877 = *(TupleTypeMetadata3 + 48);
                  v878 = *(TupleTypeMetadata3 + 64);
                  v879 = v976;
                  v880 = v1050;
                  (*(*(v875 - 8) + 16))(v1050, &v976[*(v872 + 40)], v875);
                  *(v880 + v877) = 1;
                  *(v880 + v878) = 0;
                  swift_storeEnumTagMultiPayload();
                  v881 = v1064;
                  swift_storeEnumTagMultiPayload();
                  sub_1CF06EB44(v1072, v869);
                  (*(v1068 + 8))(v869, v881);
                  (*(v1020 + 8))(v879, v872);
                }

                v443 = v1080;
                v442 = v1081;
              }
            }
          }
        }
      }

      v1086 = v442;
      v1087 = v443;
      v882 = type metadata accessor for JobResult(0, &v1086);
      v884 = type metadata accessor for ReconciliationSideMutation(255, v1076, v1077, v883);
      v885 = swift_getTupleTypeMetadata2();
      v886 = *(v885 + 48);
      v887 = *(v1079 + 16);
      v888 = v1066;
      v889 = v973;
      v890 = (v1079 + 16);
      (v887)(v1066, v973, v1078);
      swift_storeEnumTagMultiPayload();
      *(v888 + v886) = v971;
      v1053 = v884;
      swift_storeEnumTagMultiPayload();
      v891 = v1064;
      swift_storeEnumTagMultiPayload();
      v1054 = v882;
      sub_1CF06EB44(v1072, v888);
      v892 = *(v1068 + 8);
      v1068 += 8;
      v892(v888, v891);
      if (v1055)
      {
        v1077 = v892;
        v1050 = v887;
        if ((v1055 & 8) != 0)
        {
          v896 = v1091;
          v899 = *(v1091 + v1074[14]);
          v895 = v1080;
          v894 = v1081;
          if (v899 != 1)
          {
            if (v899 == 4)
            {
LABEL_309:
              __break(1u);
              goto LABEL_310;
            }

            if (*(v1091 + v974[17] + 24) >> 60 != 11)
            {
              if (*(v1069 + *(v1070.i64[0] + 44)) == 3)
              {
                type metadata accessor for ReconciliationSideMutation(255, v1059, v1060.i64[0], v893);
                v900 = swift_getTupleTypeMetadata2();
                v901 = v1066;
                v902 = v1066 + *(v900 + 48);
                (v1050)(v1066, v973, v1078);
                swift_storeEnumTagMultiPayload();
                v903 = sub_1CF93D7F4();
                *v902 = 1283;
                *(v902 + 8) = v903;
                *(v902 + 16) = v904;
                swift_storeEnumTagMultiPayload();
                v905 = v1064;
                swift_storeEnumTagMultiPayload();
                sub_1CF06EB44(v1072, v901);
                v906 = v901;
                v896 = v1091;
                (v1077)(v906, v905);
                v895 = v1080;
                v894 = v1081;
              }

              v1073.i64[0] |= 0x8000000uLL;
            }
          }
        }

        else
        {
          v895 = v1080;
          v894 = v1081;
          v896 = v1091;
        }

        v1086 = v894;
        v1087 = v895;
        type metadata accessor for Propagation.UpdateItem(0, &v1086);
        v1086.i64[0] = v1055;
        v907 = (v896 + v1074[16]);
        v908 = *v907;
        v909 = v907[1];
        v910 = v1048;
        v911 = v1048;
        v912 = sub_1CF60E220(v973, v1056, v1086.i64, v910, v908, v909, v1073.i64[0]);
        if (!sub_1CF056558() || *(v896 + v974[17] + 24) >> 60 == 11)
        {
          sub_1CF052548(1);
        }

        v913 = v1072;
        sub_1CF8039C4(v1072, v912);
        v914 = v1066;
        v915 = v1066 + *(v885 + 48);
        v916 = v973;
        v322 = v1078;
        (v1050)(v1066, v973, v1078);
        swift_storeEnumTagMultiPayload();
        *v915 = 0;
        *(v915 + 8) = 0;
        *(v915 + 16) = 2;
        swift_storeEnumTagMultiPayload();
        v917 = v1064;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v913, v914);

        (v1077)(v914, v917);
        v234 = *(v1079 + 8);
        v235 = v916;
        goto LABEL_66;
      }

      v897 = v1001;
      v898 = v1075;
      (*(*v1057 + 240))(v889, 1, v1058, v1062, v1071);
      if (v898)
      {
        v417 = *(v1079 + 8);
        v418 = v889;
        goto LABEL_75;
      }

      v918 = v887;
      v1075 = 0;
      v919 = v1020;
      v920 = v1021;
      v921 = (*(v1020 + 48))(v897, 1, v1021);
      v1050 = v918;
      v1049 = v890;
      if (v921 == 1)
      {
        v922 = v1013;
        v923 = (*(v996 + 8))(v897, v1013);
      }

      else
      {
        (*(v919 + 32))(v987, v897, v920);
        LODWORD(v1091) = *(v1091 + v974[10]);
        v924 = v1066;
        v1074 = (v1066 + *(v885 + 48));
        (v918)(v1066, v973, v1078);
        swift_storeEnumTagMultiPayload();
        v925 = swift_getAssociatedTypeWitness();
        v926 = swift_getAssociatedTypeWitness();
        v927 = swift_getAssociatedConformanceWitness();
        v928 = swift_getAssociatedConformanceWitness();
        v1086.i64[0] = v925;
        v1086.i64[1] = v926;
        v1087.i64[0] = v927;
        v1087.i64[1] = v928;
        v929 = type metadata accessor for FileItemVersion(255, &v1086);
        v930 = swift_getTupleTypeMetadata3();
        v931 = *(v930 + 48);
        v932 = *(v930 + 64);
        v933 = v987;
        v934 = v1074;
        (*(*(v929 - 8) + 16))(v1074, &v987[*(v920 + 40)], v929);
        *(v934 + v931) = (v1091 & ~v971 & 8) == 0;
        *(v934 + v932) = 1;
        swift_storeEnumTagMultiPayload();
        v935 = v1064;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v1072, v924);
        v892(v924, v935);
        v923 = (*(v1020 + 8))(v933, v920);
        v922 = v1013;
      }

      MEMORY[0x1EEE9AC00](v923);
      qmemcpy(&v970 - 10, " item destinationItemID baseVersion fields version domainVersion ", 65);
      BYTE1(v969) = 0;
      v1086.i64[0] = v1078;
      v1086.i64[1] = v922;
      v1087.i64[0] = v1051;
      v936 = swift_getAssociatedTypeWitness();
      v937 = swift_getAssociatedTypeWitness();
      v938 = swift_getAssociatedConformanceWitness();
      v939 = swift_getAssociatedConformanceWitness();
      v1082 = v936;
      v1083 = v937;
      v1084 = v938;
      v1085 = v939;
      type metadata accessor for FileItemVersion(255, &v1082);
      v1087.i64[1] = sub_1CF9E75D8();
      v1088 = &type metadata for Fields;
      v1089 = MEMORY[0x1E69E6810];
      v1090 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
      v940 = swift_getTupleTypeMetadata();
      v941 = v940[12];
      v942 = v940[16];
      v943 = v940[20];
      v1091 = v940[24];
      v1077 = v940[28];
      v1076 = v940[32];
      v944 = v1008;
      v945 = v973;
      (v1050)(v1008, v973, v1078);
      (*(v1020 + 56))(&v944[v941], 1, 1, v1021);
      (v1061[7])(&v944[v942], 1, 1, v1063);
      v1086.i64[0] = v936;
      v1086.i64[1] = v937;
      v1087.i64[0] = v938;
      v1087.i64[1] = v939;
      v946 = type metadata accessor for FileItemVersion(0, &v1086);
      (*(*(v946 - 8) + 56))(&v944[v943], 1, 1, v946);
      *&v944[v1091] = v971;
      *&v944[v1077] = v1056;
      v947 = v1048;
      *&v944[v1076] = v1048;
      v1086 = v1081;
      v1087 = v1080;
      type metadata accessor for DirectionalTestingOperation(0, &v1086);
      swift_storeEnumTagMultiPayload();
      v948 = v1010;
      swift_storeEnumTagMultiPayload();
      v949 = *(v1067->super.isa + 65);
      v950 = v947;
      v949(v944, 0);
      (*(v1009 + 8))(v944, v948);
      v234 = *(v1079 + 8);
      v235 = v945;
LABEL_32:
      v236 = v1078;
      return v234(v235, v236);
    }

    v498 = v973;
    v499 = v1075;
    (*(*v1057 + 240))(v973, 1, v1058, v432, v431, v424, v425);
    if (v499)
    {
      v417 = *(v1079 + 8);
      v418 = v498;
      v419 = v422;
      return v417(v418, v419);
    }

    v1075 = 0;
    v547 = v1020;
    v548 = v1021;
    if ((*(v1020 + 48))(v435, 1, v1021) == 1)
    {
      (*(v996 + 8))(v435, v1013);
      v549 = v997;
      goto LABEL_226;
    }

    (*(v547 + 32))(v436, v435, v548);
    v689 = swift_getWitnessTable();
    sub_1CF06D940(v548, v689, &v1086);
    v690 = *(v1091 + v1074[14]);
    if (v1086.i8[0] == 4)
    {
      v692 = v1080;
      v691 = v1081;
      v549 = v997;
      if (v690 != 4)
      {
LABEL_231:
        v1086 = v691;
        v1087 = v692;
        type metadata accessor for JobResult(0, &v1086);
        v778 = *(swift_getTupleTypeMetadata2() + 48);
        v779 = *(v1079 + 16);
        v1077 = v1079 + 16;
        v1091 = v779;
        v780 = v422;
        v779(v426, v973, v422);
        swift_storeEnumTagMultiPayload();
        sub_1CF06D940(v1021, v689, (v426 + v778));
        v781 = v1064;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v1072, v426);
        v782 = (*(v1068 + 8))(v426, v781);
        MEMORY[0x1EEE9AC00](v782);
        qmemcpy(&v970 - 10, " item destinationItemID baseVersion fields version domainVersion ", 65);
        BYTE1(v969) = 0;
        v1086.i64[0] = v422;
        v1086.i64[1] = v1013;
        v1087.i64[0] = v1051;
        v783 = swift_getAssociatedTypeWitness();
        v784 = swift_getAssociatedTypeWitness();
        v785 = swift_getAssociatedConformanceWitness();
        v1076 = v785;
        v786 = swift_getAssociatedConformanceWitness();
        v1082 = v783;
        v1083 = v784;
        v1084 = v785;
        v1085 = v786;
        type metadata accessor for FileItemVersion(255, &v1082);
        v1087.i64[1] = sub_1CF9E75D8();
        v1088 = &type metadata for Fields;
        v1089 = MEMORY[0x1E69E6810];
        v1090 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
        v787 = swift_getTupleTypeMetadata();
        v788 = v787[12];
        v789 = v787[16];
        v790 = v780;
        v791 = v787[20];
        v792 = v1067;
        v1074 = v787[24];
        v1073.i64[0] = v787[28];
        v1072 = v787[32];
        v793 = v1008;
        (v1091)(v1008, v973, v790);
        v794 = v1020;
        (*(v1020 + 56))(&v793[v788], 1, 1, v1021);
        (v1061[7])(&v793[v789], 1, 1, v1063);
        v1086.i64[0] = v783;
        v1086.i64[1] = v784;
        v1087.i64[0] = v1076;
        v1087.i64[1] = v786;
        v795 = type metadata accessor for FileItemVersion(0, &v1086);
        (*(*(v795 - 8) + 56))(&v793[v791], 1, 1, v795);
        *(v1074 + v793) = v971;
        *&v793[v1073.i64[0]] = v1056;
        v796 = v1048;
        *&v793[v1072] = v1048;
        v1086 = v1081;
        v1087 = v1080;
        type metadata accessor for DirectionalTestingOperation(0, &v1086);
        swift_storeEnumTagMultiPayload();
        v797 = v1010;
        swift_storeEnumTagMultiPayload();
        v798 = *(v792->super.isa + 65);
        v799 = v796;
        v798(v793, 0);
        (*(v1009 + 8))(v793, v797);
        (*(v794 + 8))(v1024, v1021);
        v234 = *(v1079 + 8);
        v235 = v973;
        goto LABEL_32;
      }
    }

    else
    {
      v692 = v1080;
      v691 = v1081;
      v549 = v997;
      if (v690 == 4 || qword_1CFA0DC10[v1086.i8[0]] != qword_1CFA0DC10[v690])
      {
        goto LABEL_231;
      }
    }

    (*(v1020 + 8))(v436, v1021, v691, v692);
LABEL_226:
    v439 = v1067;
    v775 = *v1067[1]._anon_8;
    v776 = sub_1CF056558();
    v438 = v971;
    if (v776)
    {
      v777 = *(v1091 + v1074[14]);
      if (v777 == 2)
      {
        v802 = v1050;
        v803 = v1051;
        v1050[2](v549, v1069, v1051);
        if ((v1061[6])(v549, 1, v1063) == 1)
        {
          (v802[1])(v549, v803);
          v438 = v971;
          v437 = v971;
          goto LABEL_85;
        }

        v847 = v1061;
        v848 = v980;
        v849 = v549;
        v850 = v1063;
        (v1061[4])(v980, v849, v1063);
        v851 = v979;
        v852 = v1075;
        (*(*v775 + 240))(v848, 1, v1058, v432, v431);
        if (v852)
        {
          (v847[1])(v848, v850);
          return (*(v1079 + 8))(v973, v422);
        }

        v1075 = 0;
        if ((*(v1004 + 48))(v851, 1, v1005) == 1)
        {
          (v1061[1])(v980, v1063);
          (*(v993 + 8))(v851, v994);
          v438 = v971;
          v437 = v971;
        }

        else
        {
          v964 = v1005;
          v965 = swift_getWitnessTable();
          v966 = v851;
          v967 = sub_1CF937C7C(v964, v965);
          (v1061[1])(v980, v1063);
          (*(v1004 + 8))(v966, v964);
          v438 = v971;
          if (v967)
          {
            v437 = v971 | 8;
          }

          else
          {
            v437 = v971;
          }
        }

        goto LABEL_84;
      }

      v437 = v971;
      if (v777 != 4)
      {
        goto LABEL_85;
      }

      __break(1u);
    }

    v437 = v438;
    goto LABEL_85;
  }

  v453 = v1070.i64[0];
  v454 = v1069;
  v455 = *(v1069 + *(v1070.i64[0] + 44));
  v457 = v1080;
  v456 = v1081;
  if ((v455 | 2) != 3)
  {
    v507 = *v1067->tester;
    v508 = (*(*v507 + 344))(v973, v1058, v1062, v1071, v1081, v1080);
    v1075 = 0;
    if (v509 & 1 | ((v508 & ~(v371 | 0x8000001)) == 0))
    {
      v605 = 0;
    }

    else
    {
      v605 = v508;
    }

    v461 = v605 | v371 | 0x8000001;
    v606 = v1050;
    v607 = v989;
    v608 = v1051;
    v1050[2](v989, v454, v1051);
    v609 = v1061;
    v610 = v1063;
    if ((v1061[6])(v607, 1, v1063) == 1)
    {
      (v606[1])(v607, v608);
    }

    else
    {
      v746 = v610;
      v747 = v985;
      (v609[4])(v985, v607, v746);
      v1073 = vextq_s8(v1081, v1081, 8uLL);
      v1060 = vextq_s8(v1080, v1080, 8uLL);
      v1086 = v1073;
      v1087 = v1060;
      v1059 = type metadata accessor for ItemJob(255, &v1086);
      v748 = swift_getMetatypeMetadata();
      sub_1CF656CD8(v748, v748);
      swift_allocObject();
      v749 = sub_1CF9E6D68();
      v1086 = v1073;
      v1087 = v1060;
      *v750 = type metadata accessor for Materialization.MaterializeItem(0, &v1086);
      v751 = sub_1CF045898(v749, v748);
      v752 = v1075;
      v753 = (*(*v507 + 304))(v747, v751, v1058, v1062, v1071);
      if (v752)
      {
        v751, v754, v755, v756, v757, v758, v759, v760;
        (v609[1])(v747, v1063);
        return (*(v1079 + 8))(v973, v1078);
      }

      v1075 = 0;
      v809 = v753;
      v751, v754, v755, v756, v757, v758, v759, v760;
      v1086.i64[0] = v809;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      sub_1CF9E7118();
      (v609[1])(v747, v1063);
      v810 = v1082;
      v809, v811, v812, v813, v814, v815, v816, v817;
      if (v810)
      {
        v818 = *(v810 + 112);
        v458 = v1091;
        v462 = v1048;
        if (v818 == 3 || v818 == 4 && !(*(v810 + 96) & 0xFFFFFFFFFFFFFFFELL | *(v810 + 104)))
        {
        }

        else
        {
          v819 = *(v810 + 136);

          if ((v819 & ~v461) != 0)
          {
            v820 = v819;
          }

          else
          {
            v820 = 0;
          }

          v461 |= v820;
        }

        v457 = v1080;
        v456 = v1081;
        goto LABEL_154;
      }
    }

    v457 = v1080;
    v456 = v1081;
    v458 = v1091;
    goto LABEL_153;
  }

  v458 = v1091;
  if ((*(v1091 + v974[10]) & 8) != 0)
  {
    v459 = 134217730;
  }

  else
  {
    v459 = 2;
  }

  v460 = v459 | v1073.i64[0];
  if (v455 == 3)
  {
    v461 = v460 | 0x100000000000;
  }

  else
  {
    v461 = v460;
  }

  v462 = v1048;
  if (*(v1091 + v974[13]))
  {
    goto LABEL_154;
  }

  v463 = v1050;
  v464 = v1002;
  v465 = v1051;
  (v1050[2])(v1002, v1069, v1051, v1081, v1080);
  v466 = v1061;
  v467 = v1063;
  if ((v1061[6])(v464, 1, v1063) == 1)
  {
    (v463[1])(v464, v465);
LABEL_107:
    v457 = v1080;
    v456 = v1081;
    v453 = v1070.i64[0];
LABEL_153:
    v462 = v1048;
LABEL_154:
    if (*(v454 + *(v453 + 56)) == 6)
    {
      v611 = v461;
    }

    else
    {
      v611 = v461 | 0x20000;
    }

    v1086 = v456;
    v1087 = v457;
    type metadata accessor for Propagation.UpdateItem(0, &v1086);
    v1086.i64[0] = 16;
    v612 = (v458 + v1074[16]);
    v613 = v458;
    v614 = *v612;
    v615 = v612[1];
    v616 = v462;
    v617 = sub_1CF60E220(v973, v1056, v1086.i64, v462, v614, v615, v611);
    if (!sub_1CF056558() || *(v613 + v974[17] + 24) >> 60 == 11)
    {
      sub_1CF052548(1);
    }

    v1086 = v1081;
    v1087 = v1080;
    type metadata accessor for JobResult(0, &v1086);
    v1074 = v617;
    sub_1CF8039C4(v1072, v617);
    v1081.i64[0] = type metadata accessor for ReconciliationSideMutation(255, v1076, v1077, v618);
    v619 = swift_getTupleTypeMetadata2();
    v620 = v1066;
    v621 = v1066 + *(v619 + 48);
    v1080.i64[0] = *(v1079 + 16);
    v622 = v973;
    (v1080.i64[0])(v1066, v973, v1078);
    swift_storeEnumTagMultiPayload();
    *v621 = 0;
    *(v621 + 8) = 0;
    *(v621 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v623 = v1064;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v1072, v620);
    v624 = *(v1068 + 8);
    v624(v620, v623);
    v625 = *(v619 + 48);
    v626 = v622;
    v627 = v1078;
    (v1080.i64[0])(v620, v626, v1078);
    swift_storeEnumTagMultiPayload();
    sub_1CEFF5464(&stru_1F4BEC770, &v1086, v628, v629, v630, v631, v632, v633, v634);
    *(v620 + v625) = v1086.i64[0];
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v1072, v620);

    v624(v620, v623);
    return (*(v1079 + 8))(v973, v627);
  }

  v635 = v464;
  v636 = v992;
  (v466[4])(v992, v635, v467);
  v637 = v990;
  v638 = v1075;
  (*(**v1067[1]._anon_8 + 240))(v636, 1, v1058, v1062, v1071);
  if (v638)
  {
    (v466[1])(v636, v467);
    v417 = *(v1079 + 8);
    v497 = &v1005;
    goto LABEL_117;
  }

  v1075 = 0;
  v800 = v1004;
  v801 = v1005;
  if ((*(v1004 + 48))(v637, 1, v1005) == 1)
  {
    (v1061[1])(v636, v1063);
    (*(v993 + 8))(v637, v994);
    goto LABEL_107;
  }

  v821 = v984;
  (*(v800 + 32))(v984, v637, v801);
  v822 = swift_getWitnessTable();
  v823 = sub_1CF937C7C(v801, v822);
  v453 = v1070.i64[0];
  if ((v823 & 1) == 0)
  {
    (*(v800 + 8))(v821, v801);
    (v1061[1])(v636, v1063);
    v457 = v1080;
    v456 = v1081;
    goto LABEL_153;
  }

  v1086 = v1081;
  v1087 = v1080;
  type metadata accessor for JobResult(0, &v1086);
  type metadata accessor for ReconciliationSideMutation(255, v1059, v1060.i64[0], v824);
  v825 = swift_getTupleTypeMetadata2();
  v826 = v636;
  v827 = v1066;
  v828 = v458;
  v829 = v1066 + *(v825 + 48);
  v830 = v1061;
  (v1061[2])(v1066, v826, v1063);
  swift_storeEnumTagMultiPayload();
  v831 = v1074[16];
  *v829 = v455;
  *(v829 + 1) = 5;
  *(v829 + 8) = *(v828 + v831);
  swift_storeEnumTagMultiPayload();
  v832 = v1064;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v1072, v827);
  (*(v1068 + 8))(v827, v832);
  v833 = *v1067->tester;
  v1080 = vextq_s8(v1080, v1080, 8uLL);
  v1081 = vextq_s8(v1081, v1081, 8uLL);
  v1086 = v1081;
  v1087 = v1080;
  type metadata accessor for ItemJob(255, &v1086);
  v834 = swift_getMetatypeMetadata();
  sub_1CF656CD8(v834, v834);
  swift_allocObject();
  v835 = sub_1CF9E6D68();
  v1086 = v1081;
  v1087 = v1080;
  *v836 = type metadata accessor for Materialization.EvictItem(0, &v1086);
  v837 = sub_1CF045898(v835, v834);
  v838 = v1075;
  v839 = (*(*v833 + 304))(v826, v837, v1058, v1062, v1071);
  if (v838)
  {
    v837, v840, v841, v842, v843, v844, v845, v846;
    (*(v1004 + 8))(v984, v1005);
    (v830[1])(v826, v1063);
    return (*(v1079 + 8))(v973, v1078);
  }

  v951 = v839;
  v837, v840, v841, v842, v843, v844, v845, v846;
  if (!sub_1CF9E6DF8())
  {
    goto LABEL_294;
  }

  v959 = 4;
  while (1)
  {
    v960 = v959 - 4;
    v961 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v961 & 1) == 0)
    {
      break;
    }

    v962 = v959 - 3;
    if (__OFADD__(v960, 1))
    {
      goto LABEL_293;
    }

LABEL_289:
    v963 = sub_1CF67DD2C();

    sub_1CF8039C4(v1072, v963);

    ++v959;
    if (v962 == sub_1CF9E6DF8())
    {
      goto LABEL_294;
    }
  }

  sub_1CF9E7998();
  v962 = v959 - 3;
  if (!__OFADD__(v960, 1))
  {
    goto LABEL_289;
  }

LABEL_293:
  __break(1u);
LABEL_294:
  v951, v952, v953, v954, v955, v956, v957, v958;
  (*(v1004 + 8))(v984, v1005);
  (v1061[1])(v992, v1063);
  return (*(v1079 + 8))(v973, v1078);
}

uint64_t sub_1CF5E9990@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v13 = AssociatedTypeWitness;
  v14 = v4;
  v15 = AssociatedConformanceWitness;
  v16 = v6;
  type metadata accessor for ReconciliationID(255, &v13);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = v2;
  v9 = *(TupleTypeMetadata2 + 48);
  (*(*(v4 - 8) + 16))(a1, &v1[*(v8 + 576)], v4);
  swift_storeEnumTagMultiPayload();
  *(a1 + v9) = sub_1CF03D760();
  v13 = AssociatedTypeWitness;
  v14 = v4;
  v15 = AssociatedConformanceWitness;
  v16 = v6;
  v10 = type metadata accessor for ThrottlingKey(0, &v13);
  return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
}

uint64_t sub_1CF5E9B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1CF611164(a1, a4, a5, a4);
  if (v5)
  {
    return v7;
  }

  return result;
}

void sub_1CF5E9BC8()
{
  v1 = *(*v0 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v3 = *(v0 + *(*v0 + 584));
}

uint64_t sub_1CF5E9C94()
{
  v0 = sub_1CF04ADA4();
  v1 = *(*v0 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t sub_1CF5E9D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1CF611164(a1, a4, *(a5 + 8), a4);
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1CF5E9DAC(void *a1)
{
  v17 = MEMORY[0x1E69E5D08] + 64;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
  result = sub_1CF9E75D8();
  if (v2 <= 0x3F)
  {
    v18 = *(result - 8) + 64;
    swift_getAssociatedTypeWitness();
    result = sub_1CF9E75D8();
    if (v3 <= 0x3F)
    {
      v19 = *(result - 8) + 64;
      v4 = swift_getAssociatedTypeWitness();
      v5 = swift_getAssociatedConformanceWitness();
      type metadata accessor for ItemState(255, v4, v5, v6);
      result = sub_1CF9E75D8();
      if (v7 <= 0x3F)
      {
        v20 = *(result - 8) + 64;
        v21 = "@";
        v8 = swift_getAssociatedTypeWitness();
        v9 = swift_getAssociatedTypeWitness();
        v10 = swift_getAssociatedConformanceWitness();
        v11 = swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = v8;
        v14 = v9;
        AssociatedConformanceWitness = v10;
        v16 = v11;
        type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
        swift_getTupleTypeMetadata2();
        result = sub_1CF9E75D8();
        if (v12 <= 0x3F)
        {
          v22 = *(result - 8) + 64;
          v23 = "\b";
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CF5EA0F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a1;
  v58 = a2;
  v59 = a3;
  v60 = a4;
  v4 = type metadata accessor for Propagation.PropagationError(0, &v57);
  v57 = v4;
  swift_getMetatypeMetadata();
  v5 = sub_1CF9E6968();
  v57 = 46;
  v58 = 0xE100000000000000;
  v52 = &v57;
  v9 = sub_1CF2A8918(0x7FFFFFFFFFFFFFFFLL, 1, sub_1CF25107C, v51, v5, v6, 0x2EuLL, v7, v8);
  if (*v9->tree)
  {
    isa = v9[1].super.isa;
    v18 = *v9[1]._anon_8;
    v20 = *v9[1].tree;
    v19 = *v9[1].tester;
    v21 = v9;

    v21, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    v9, v10, v11, v12, v13, v14, v15, v16;
    isa = sub_1CF9E7608();
    v18 = v29;
    v20 = v30;
    v19 = v31;
  }

  v57 = v4;
  v32 = sub_1CF9E6968();
  v34 = v33;
  v55 = v32;
  v56 = v33;
  v57 = isa;
  v58 = v18;
  v59 = v20;
  v60 = v19;
  v53 = 0x6E7973736662696CLL;
  v54 = 0xE900000000000063;
  sub_1CEFE4E68();
  sub_1CF611768();
  v35 = sub_1CF9E7668();
  v19, v36, v37, v38, v39, v40, v41, v42;
  v34, v43, v44, v45, v46, v47, v48, v49;
  return v35;
}

uint64_t sub_1CF5EA290(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    *&v5[*(TupleTypeMetadata2 + 48) + 8], v8, v9, v10, v11, v12, v13, v14;
    (*(*(AssociatedTypeWitness - 8) + 8))(v5, AssociatedTypeWitness);
    return 0;
  }

  else
  {
    (*(v2 + 8))(v5, a1);
    return 1;
  }
}

unint64_t sub_1CF5EA404(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v11;
  v12 = *(v4 + 16);
  v12(v9, v2, a1);
  v13 = sub_1CF9E6948();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  v15 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  v30 = v15;
  v12(v6, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 8))(v6, a1);
  }

  else
  {
    v16 = *v6;
    if (*v6)
    {
      swift_getErrorValue();
      v17 = v24;
      v18 = v25;
      v29 = v25;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v28);
      (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v17, v18);
      sub_1CEFE9EB8(&v28, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v15;
      sub_1CF1D154C(v27, 0xD000000000000012, 0x80000001CFA54B30, isUniquelyReferenced_nonNull_native);
      v21 = v26;
    }

    else
    {
      sub_1CF1CE4A0(0xD000000000000012, 0x80000001CFA54B30, &v28);
      sub_1CEFCCC44(&v28, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      v21 = v30;
    }

    v29 = MEMORY[0x1E69E6370];
    LOBYTE(v28) = 1;
    sub_1CEFE9EB8(&v28, v27);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v21;
    sub_1CF1D154C(v27, 0xD000000000000019, 0x80000001CFA54B10, v22);

    return v26;
  }

  return v15;
}

uint64_t sub_1CF5EA738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDC6AD0](a1, WitnessTable);
}

uint64_t sub_1CF5EA78C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDC6AC0](a1, WitnessTable);
}

void sub_1CF5EA7E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (sub_1CF056558())
  {
    (*(**(a1 + 40) + 264))(&v66, a2, a3, a4, a5);
    if (v6)
    {
      return;
    }

    v47 = v78;
    v48 = v79;
    v49 = v80;
    v43 = v74;
    v44 = v75;
    v45 = v76;
    v46 = v77;
    v39 = v70;
    v40 = v71;
    v41 = v72;
    v42 = v73;
    v35 = v66;
    v36 = v67;
    v37 = v68;
    v38 = v69;
    v62 = v78;
    v63 = v79;
    v64 = v80;
    v58 = v74;
    v59 = v75;
    v60 = v76;
    v61 = v77;
    v54 = v70;
    v55 = v71;
    v56 = v72;
    v57 = v73;
    v51[0] = v66;
    v51[1] = v67;
    v50 = v81;
    v65 = v81;
    v52 = v68;
    v53 = v69;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v51) == 1 || (BYTE1(v52) & 1) != 0)
    {
      v13 = v48;
      *(a6 + 192) = v47;
      *(a6 + 208) = v13;
      *(a6 + 224) = v49;
      *(a6 + 240) = v50;
      v14 = v44;
      *(a6 + 128) = v43;
      *(a6 + 144) = v14;
      v15 = v46;
      *(a6 + 160) = v45;
      *(a6 + 176) = v15;
      v16 = v40;
      *(a6 + 64) = v39;
      *(a6 + 80) = v16;
      v17 = v42;
      *(a6 + 96) = v41;
      *(a6 + 112) = v17;
      v18 = v36;
      *a6 = v35;
      *(a6 + 16) = v18;
      v19 = v37;
      v20 = v38;
    }

    else
    {
      sub_1CEFCCC44(&v35, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      sub_1CEFE528C(v33);
      v27 = v33[13];
      *(a6 + 192) = v33[12];
      *(a6 + 208) = v27;
      *(a6 + 224) = v33[14];
      *(a6 + 240) = v34;
      v28 = v33[9];
      *(a6 + 128) = v33[8];
      *(a6 + 144) = v28;
      v29 = v33[11];
      *(a6 + 160) = v33[10];
      *(a6 + 176) = v29;
      v30 = v33[5];
      *(a6 + 64) = v33[4];
      *(a6 + 80) = v30;
      v31 = v33[7];
      *(a6 + 96) = v33[6];
      *(a6 + 112) = v31;
      v32 = v33[1];
      *a6 = v33[0];
      *(a6 + 16) = v32;
      v19 = v33[2];
      v20 = v33[3];
    }
  }

  else
  {
    sub_1CEFE528C(&v66);
    v21 = v79;
    *(a6 + 192) = v78;
    *(a6 + 208) = v21;
    *(a6 + 224) = v80;
    *(a6 + 240) = v81;
    v22 = v75;
    *(a6 + 128) = v74;
    *(a6 + 144) = v22;
    v23 = v77;
    *(a6 + 160) = v76;
    *(a6 + 176) = v23;
    v24 = v71;
    *(a6 + 64) = v70;
    *(a6 + 80) = v24;
    v25 = v73;
    *(a6 + 96) = v72;
    *(a6 + 112) = v25;
    v26 = v67;
    *a6 = v66;
    *(a6 + 16) = v26;
    v19 = v68;
    v20 = v69;
  }

  *(a6 + 32) = v19;
  *(a6 + 48) = v20;
}

uint64_t sub_1CF5EAB90@<X0>(char *a1@<X8>)
{
  v3 = v1 + *(*v1 + 664);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  result = (*(*(v7 - 8) + 48))(v3, 1, v7);
  if (result)
  {
    v9 = 4;
  }

  else
  {
    v9 = *(v3 + *(v7 + 40));
  }

  *a1 = v9;
  return result;
}

uint64_t sub_1CF5EACC4()
{
  v1 = v0 + *(*v0 + 664);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  if ((*(*(v5 - 8) + 48))(v1, 1, v5))
  {
    return 2;
  }

  v7 = v1 + *(v5 + 40);
  return *(v7 + *(type metadata accessor for ItemMetadata(0) + 112));
}

uint64_t sub_1CF5EAE00()
{
  v1 = v0 + *(*v0 + 664);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  result = 0;
  if (!v6)
  {
    v8 = v1 + *(v5 + 40);
    return *(v8 + *(type metadata accessor for ItemMetadata(0) + 104));
  }

  return result;
}

unint64_t sub_1CF5EAF44()
{
  v1 = v0 + *(*v0 + 664);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  v6 = 1;
  if ((*(*(v5 - 8) + 48))(v1, 1, v5))
  {
    v7 = 0;
  }

  else
  {
    v8 = v1 + *(v5 + 40);
    v7 = *(v8 + 4);
    v6 = *(v8 + 8);
  }

  return v7 | (v6 << 32);
}

uint64_t sub_1CF5EB088@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 664);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = 1;
  v9 = (*(*(v7 - 8) + 48))(v1 + v3, 1, v7);
  v10 = *(AssociatedTypeWitness - 8);
  if (!v9)
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v3, AssociatedTypeWitness);
    v8 = 0;
  }

  return (*(v10 + 56))(a1, v8, 1, AssociatedTypeWitness);
}

uint64_t sub_1CF5EB218()
{
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ItemState(255, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  v67 = sub_1CF9E75D8();
  v6 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v8 = &v65 - v7;
  v9 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v65 - v11;
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x74616761706F7270, 0xEC0000003C3A6465);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](0x3A726576626420, 0xE700000000000000);
  v72 = *(v1 + *(*v1 + 640));
  v12 = sub_1CF9E7F98();
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  v22 = v70;
  v23 = v71;
  v70 = 0x3A7265766D6F6420;
  v71 = 0xE800000000000000;
  v24 = *(v1 + *(*v1 + 584));
  if (v24)
  {
    v25 = [v24 description];
    v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v28 = v27;
  }

  else
  {
    v28 = 0xE500000000000000;
    v26 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1D3868CC0](v26, v28);
  v28, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v36 = v70;
  v37 = v71;
  v70 = v22;
  v71 = v23;

  MEMORY[0x1D3868CC0](v36, v37);
  v23, v38, v39, v40, v41, v42, v43, v44;
  v37, v45, v46, v47, v48, v49, v50, v51;
  v72 = v70;
  v73 = v71;
  v52 = *(*v1 + 664);
  swift_beginAccess();
  v53 = v1 + v52;
  v54 = v67;
  (*(v6 + 16))(v8, v53, v67);
  if ((*(v9 + 48))(v8, 1, v5) == 1)
  {
    (*(v6 + 8))(v8, v54);
  }

  else
  {
    v55 = v66;
    (*(v9 + 32))(v66, v8, v5);
    v68 = 0;
    v69 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x7473657571657220, 0xEB000000003A6465);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v56 = v69;
    MEMORY[0x1D3868CC0](v68, v69);
    v56, v57, v58, v59, v60, v61, v62, v63;
    (*(v9 + 8))(v55, v5);
  }

  return v72;
}

uint64_t sub_1CF5EB6FC()
{
  if ((*(v0 + 139) & 8) != 0)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

char *sub_1CF5EB718(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  v222 = a5;
  v223 = a4;
  v231 = a3;
  v224 = a2;
  v188 = a1;
  v6 = *v5;
  v7 = *(*v5 + 77);
  v8 = *(*v5 + 79);
  v187 = type metadata accessor for JobLockRule(0, v7, v8, a4);
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v185 = &v165 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  *&v227 = v11;
  *(&v227 + 1) = v12;
  *&v228 = AssociatedConformanceWitness;
  *(&v228 + 1) = v14;
  v15 = type metadata accessor for FileItemVersion(255, &v227);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v173 = sub_1CF9E75D8();
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v170 = &v165 - v16;
  v176 = sub_1CF9E75D8();
  v189 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v175 = &v165 - v17;
  v179 = v15;
  v174 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v169 = &v165 - v19;
  v183 = sub_1CF9E75D8();
  v181 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v182 = &v165 - v20;
  v191 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v165 - v22;
  v220 = v6;
  v23 = *(v6 + 78);
  v24 = *(v6 + 76);
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v211 = type metadata accessor for ItemState(0, v25, v26, v27);
  v210 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v209 = &v165 - v28;
  v29 = swift_getAssociatedConformanceWitness();
  v190 = AssociatedTypeWitness;
  v31 = type metadata accessor for ItemState(255, AssociatedTypeWitness, v29, v30);
  v193 = sub_1CF9E75D8();
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v180 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v208 = &v165 - v34;
  v196 = v31;
  v195 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v194 = &v165 - v36;
  v217 = v25;
  v205 = sub_1CF9E75D8();
  v207 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v206 = &v165 - v37;
  v38 = swift_getAssociatedTypeWitness();
  v39 = swift_getAssociatedTypeWitness();
  v40 = swift_getAssociatedConformanceWitness();
  v41 = swift_getAssociatedConformanceWitness();
  *&v227 = v38;
  *(&v227 + 1) = v39;
  v42 = v23;
  *&v228 = v40;
  *(&v228 + 1) = v41;
  v202 = type metadata accessor for FileItemVersion(255, &v227);
  v204 = sub_1CF9E75D8();
  v203 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v201 = &v165 - v43;
  v45 = type metadata accessor for SnapshotItem(255, v24, v23, v44);
  v199 = sub_1CF9E75D8();
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v47 = &v165 - v46;
  v214 = v45;
  v213 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v212 = &v165 - v49;
  v197 = v24;
  *&v50 = v24;
  v178 = v7;
  *(&v50 + 1) = v7;
  v200 = v42;
  *&v51 = v42;
  v177 = v8;
  *(&v51 + 1) = v8;
  v215 = v51;
  v227 = v50;
  v228 = v51;
  v216 = v50;
  v52 = type metadata accessor for ItemReconciliation(255, &v227);
  v53 = sub_1CF9E75D8();
  v218 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v165 - v54;
  v56 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v165 - v58;
  v60 = *(v224 + 16);
  v61 = *(v220 + 72);
  v219 = v5;
  v62 = v221;
  sub_1CF68E230(&v61[v5], v231, v223, v222, v55);
  if (!v62)
  {
    v63 = v218;
    v167 = v47;
    v220 = v61;
    v168 = v59;
    v64 = v219;
    v221 = 0;
    if ((*(v56 + 48))(v55, 1, v52) == 1)
    {
      (*(v63 + 8))(v55, v53);
      v227 = v216;
      v228 = v215;
      type metadata accessor for Propagation.PropagationError(0, &v227);
      swift_getWitnessTable();
      v65 = swift_allocError();
      v67 = v66;
      v68 = v217;
      v69 = (v66 + *(swift_getTupleTypeMetadata2() + 48));
      (*(*(v68 - 8) + 16))(v67, &v220[v64], v68);
      strcpy(v69, "no source item");
      v69[15] = -18;
      swift_storeEnumTagMultiPayload();
      v70 = *(*v64 + 86);
      v71 = *(v64 + v70);
      *(v64 + v70) = v65;
LABEL_4:

      return 0;
    }

    v218 = v60;
    v73 = v168;
    (*(v56 + 32))(v168, v55, v52);
    v55 = v52;
    v74 = v56;
    v75 = v167;
    v76 = v223;
    v77 = v222;
    v78 = v221;
    (*(**(v224 + 40) + 248))(&v220[v64], *(v64 + *(*v64 + 80)), v231, v223, v222);
    v221 = v78;
    if (v78)
    {
      (*(v74 + 8))(v73, v55);
      return v55;
    }

    v79 = v76;
    v165 = v74;
    v166 = v55;
    v80 = v213;
    v81 = v214;
    if ((*(v213 + 48))(v75, 1, v214) == 1)
    {
      (*(v198 + 8))(v75, v199);
      v227 = v216;
      v228 = v215;
      type metadata accessor for Propagation.PropagationError(0, &v227);
      swift_getWitnessTable();
      v82 = swift_allocError();
      v84 = v83;
      v85 = v217;
      v86 = (v83 + *(swift_getTupleTypeMetadata2() + 48));
      v87 = v219;
      (*(*(v85 - 8) + 16))(v84, &v220[v219], v85);
      *v86 = 0xD000000000000025;
      v86[1] = 0x80000001CFA54D50;
      swift_storeEnumTagMultiPayload();
      (*(v165 + 8))(v168, v166);
      v88 = *(*v87 + 86);
      v71 = *(v87 + v88);
      *(v87 + v88) = v82;
      goto LABEL_4;
    }

    v89 = v212;
    (*(v80 + 32))(v212, v75, v81);
    v91 = type metadata accessor for ItemReconciliationHalf(0, v197, v200, v90);
    v92 = &v168[*(v91 + 68)];
    v93 = *(v92 + 1);
    v226[0] = *v92;
    v226[1] = v93;
    v94 = *(v92 + 3);
    v226[2] = *(v92 + 2);
    v226[3] = v94;
    v95 = v219;
    v96 = (v95 + *(*v95 + 84));
    v97 = v96[3];
    v229 = v96[2];
    v230 = v97;
    v98 = v96[1];
    v227 = *v96;
    v228 = v98;
    v99 = *(v92 + 3);
    v96[2] = *(v92 + 2);
    v96[3] = v99;
    v100 = *(v92 + 1);
    *v96 = *v92;
    v96[1] = v100;
    sub_1CEFCCBDC(v226, v225, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CEFCCC44(&v227, &unk_1EC4BF260, &unk_1CFA01B60);
    v101 = v202;
    v102 = *(v202 - 8);
    v103 = v201;
    (*(v102 + 16))(v201, &v89[*(v214 + 10)], v202);
    (*(v102 + 56))(v103, 0, 1, v101);
    v104 = *(*v95 + 81);
    swift_beginAccess();
    (*(v203 + 40))(v95 + v104, v103, v204);
    swift_endAccess();
    v105 = v217;
    v106 = *(v217 - 8);
    v107 = v206;
    (*(v106 + 16))(v206, &v89[*(v214 + 9)], v217);
    (*(v106 + 56))(v107, 0, 1, v105);
    v108 = *(*v95 + 82);
    swift_beginAccess();
    v109 = v95 + v108;
    v55 = v214;
    (*(v207 + 40))(v109, v107, v205);
    swift_endAccess();
    WitnessTable = swift_getWitnessTable();
    v111 = v209;
    sub_1CF937E0C(v55, WitnessTable, v209);
    v112 = v208;
    v113 = v77;
    v114 = v221;
    sub_1CF69AAA8(v111, v231, v79, v77, v208);
    v221 = v114;
    if (v114)
    {
      (*(v210 + 8))(v111, v211);
      (*(v213 + 8))(v89, v55);
LABEL_13:
      (*(v165 + 8))(v168, v166);
      return v55;
    }

    (*(v210 + 8))(v111, v211);
    v115 = v195;
    v116 = v196;
    if ((*(v195 + 48))(v112, 1, v196) == 1)
    {
      (*(v192 + 8))(v112, v193);
      v225[1] = v215;
      v225[0] = v216;
      v117 = type metadata accessor for Propagation.PropagationError(0, v225);
      swift_getWitnessTable();
      v55 = swift_allocError();
      v119 = v118;
      v120 = v219;
      v121 = v221;
      v122 = sub_1CF66E6E4(v219, v231, v79, v113);
      v221 = v121;
      if (v121)
      {
        (*(v213 + 8))(v212, v214);
        (*(v165 + 8))(v168, v166);
        MEMORY[0x1D386CA40](v55, v117);
        return v55;
      }

      *v119 = v122;
      swift_storeEnumTagMultiPayload();
      (*(v213 + 8))(v212, v214);
      (*(v165 + 8))(v168, v166);
      v137 = *(*v120 + 86);
      v71 = *(v120 + v137);
      *(v120 + v137) = v55;
      goto LABEL_4;
    }

    v123 = v194;
    (*(v115 + 32))(v194, v112, v116);
    v124 = *(v224 + 32);
    v125 = sub_1CF056558();
    v55 = &v123[*(v116 + 40)];
    v126 = v219;
    if (v125)
    {
      v127 = *v55;
      v128 = type metadata accessor for ItemMetadata(0);
      v129 = v128;
      v55[*(v128 + 80)] = v127 != 2;
      v130 = v190;
      v131 = v191;
      v132 = v189;
      if (v127 != 2)
      {
        v55[*(v128 + 84)] = 0;
      }

      v133 = v221;
      v134 = v194;
      if (v55[*(v128 + 84)])
      {
        v135 = (*(*v124 + 544))(v194, v231, v223, v113);
        v221 = v133;
        if (v133)
        {
          (*(v195 + 8))(v134, v196);
          (*(v213 + 8))(v212, v214);
          goto LABEL_13;
        }

        *&v55[v129[19]] = v135;
      }

      v136 = v166;
    }

    else
    {
      v129 = type metadata accessor for ItemMetadata(0);
      v55[v129[20]] = 0;
      v130 = v190;
      v131 = v191;
      v136 = v166;
      v132 = v189;
      v134 = v194;
    }

    v138 = v196;
    v139 = &v134[*(v196 + 40)];
    type metadata accessor for ItemMetadata(0);
    v139[v129[18]] = 0;
    v140 = v195;
    v141 = v180;
    (*(v195 + 16))(v180, v134, v138);
    (*(v140 + 56))(v141, 0, 1, v138);
    v142 = *(*v126 + 83);
    swift_beginAccess();
    (*(v192 + 40))(v126 + v142, v141, v193);
    swift_endAccess();
    v143 = &v168[*(v136 + 13)];
    v144 = v181;
    v145 = v182;
    v146 = v183;
    (*(v181 + 16))(v182, v143, v183);
    if ((*(v131 + 48))(v145, 1, v130) == 1)
    {
      (*(v144 + 8))(v145, v146);
    }

    else
    {
      v231 = *(v131 + 32);
      (v231)(v184, v145, v130);
      v148 = &v143[*(type metadata accessor for ItemReconciliationHalf(0, v178, v177, v147) + 48)];
      v149 = v175;
      v150 = v176;
      (*(v132 + 16))(v175, v148, v176);
      v151 = v174;
      v152 = v179;
      if ((*(v174 + 48))(v149, 1, v179) == 1)
      {
        (*(v131 + 8))(v184, v130);
        (*(v132 + 8))(v149, v150);
      }

      else
      {
        v153 = *(v151 + 32);
        v154 = v169;
        v153(v169, v149, v152);
        v155 = TupleTypeMetadata2;
        v156 = *(TupleTypeMetadata2 + 48);
        v157 = v170;
        (v231)(v170, v184, v130);
        v158 = v154;
        v131 = v191;
        v153(&v157[v156], v158, v179);
        (*(*(v155 - 8) + 56))(v157, 0, 1, v155);
        v159 = *(*v126 + 85);
        swift_beginAccess();
        (*(v172 + 40))(v126 + v159, v157, v173);
        swift_endAccess();
      }
    }

    swift_beginAccess();
    sub_1CEFCCBDC((v126 + 7), v225, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v160 = v126[15];
    v161 = v185;
    v162 = v194;
    (*(v131 + 16))(v185, v194, v130);
    v163 = v187;
    swift_storeEnumTagMultiPayload();
    v55 = sub_1CF052B3C(v225, v160, v161, v164);
    (*(v186 + 8))(v161, v163);
    sub_1CEFCCC44(v225, &unk_1EC4C1BE0, &unk_1CF9FD400);
    (*(v195 + 8))(v162, v196);
    (*(v213 + 8))(v212, v214);
    (*(v165 + 8))(v168, v166);
  }

  return v55;
}

uint64_t sub_1CF5ED254(_TtC18FileProviderDaemon8FSTester *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, void (*a8)(__int128 *, void, uint64_t, unint64_t, void *), uint64_t a9, _TtC18FileProviderDaemon8FSTester *a10, uint64_t a11)
{
  v302 = a8;
  v321 = a7;
  v319 = a6;
  v324 = a5;
  v330 = a4;
  v317 = a3;
  v323 = a2;
  v309 = a1;
  v12 = *v11;
  v13 = *(*v11 + 632);
  v14 = *(*v11 + 616);
  v331 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v322 = type metadata accessor for ItemState(255, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v16 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v329 = &v288 - v17;
  v18 = *(v12 + 624);
  v325 = v11;
  v19 = *(v12 + 608);
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  *&v333 = v20;
  *(&v333 + 1) = v21;
  *&v334 = v22;
  *(&v334 + 1) = v23;
  v314 = type metadata accessor for FileItemVersion(255, &v333);
  v24 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v328 = &v288 - v25;
  *&v26 = v14;
  *(&v26 + 1) = v19;
  *&v27 = v13;
  v304 = v18;
  *(&v27 + 1) = v18;
  v333 = v26;
  v334 = v27;
  v318 = type metadata accessor for Reconciliation.ReconcileAfterPropagation(0, &v333);
  v316 = *(v318 - 8);
  MEMORY[0x1EEE9AC00](v318);
  v315 = (&v288 - v28);
  v298 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v297 = &v288 - v30;
  v32 = type metadata accessor for SnapshotItem(0, v14, v13, v31);
  v311 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v299 = &v288 - v33;
  v303 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v34);
  v300 = &v288 - v35;
  v307 = v14;
  v308 = v13;
  v37 = type metadata accessor for ItemPropagationResult(0, v14, v13, v36);
  v306 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v305 = &v288 - v38;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v39 = sub_1CF9E8238();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = (&v288 - v41);
  v310 = v32;
  v313 = sub_1CF9E75D8();
  v327 = *(v313 - 8);
  MEMORY[0x1EEE9AC00](v313);
  v312 = &v288 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v46 = MEMORY[0x1EEE9AC00](v44).n128_u64[0];
  v337 = &v288 - v47;
  if (v45)
  {
    *&v333 = 0x3A7265766D6F6420;
    *(&v333 + 1) = 0xE800000000000000;
    v48 = [v45 description];
    v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v51 = v50;

    MEMORY[0x1D3868CC0](v49, v51);
    v51, v52, v53, v54, v55, v56, v57, v58;
    v59 = *(&v333 + 1);
    v60 = v333;
  }

  else
  {
    v60 = 0;
    v59 = 0xE000000000000000;
  }

  v61 = a11;
  (*(v40 + 16))(v42, v309, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v70 = v325;
  if (EnumCaseMultiPayload == 1)
  {
    v59, v63, v64, v65, v66, v67, v68, v69;
    v71 = *v42;
    (*(v311 + 56))(v337, 1, 1, v310);
    LODWORD(AssociatedTypeWitness) = 0;
    v308 = 0;
    v309 = 0;
    v72 = 0;
    v73 = v321;
    v74 = v317;
    goto LABEL_33;
  }

  v296 = a11;
  v75 = v306;
  if ((*(v306 + 48))(v42, 1, v37) == 1)
  {
    v59, v76, v77, v78, v79, v80, v81, v82;
    v83 = (v70 + *(*v70 + 672));
    v84 = v83[1];
    v333 = *v83;
    v334 = v84;
    v85 = v83[3];
    v335 = v83[2];
    v336 = v85;
    if (*(&v334 + 1) >> 60 != 11)
    {
      v86 = v333;
      v87 = *(*(*(v324 + 4) + 16) + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
      sub_1CEFCCBDC(&v333, v332, &unk_1EC4BF260, &unk_1CFA01B60);

      os_unfair_lock_lock(v87);
      v88 = *(v87 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v87 + 8) = v88;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v88 = sub_1CF1F6AB4(0, *v88->tree + 1, 1, v88, v90, v91, v92, v93);
        *(v87 + 8) = v88;
      }

      v95 = *v88->tree;
      v94 = *v88->tester;
      if (v95 >= v94 >> 1)
      {
        v88 = sub_1CF1F6AB4((v94 > 1), v95 + 1, 1, v88, v90, v91, v92, v93);
        *(v87 + 8) = v88;
      }

      *v88->tree = v95 + 1;
      *(&v88[1].super.isa + v95) = v86;
      os_unfair_lock_unlock(v87);

      sub_1CEFCCC44(&v333, &unk_1EC4BF260, &unk_1CFA01B60);
    }

    swift_getAssociatedTypeWitness();
    v96 = swift_getAssociatedConformanceWitness();
    v97 = *(v96 + 64);
    v98 = swift_checkMetadataState();
    v99 = v97(v98, v96);
    v73 = v321;
    if (v99)
    {
      type metadata accessor for FileTreeError(0, v307, v308, v100);
      swift_getWitnessTable();
      v71 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      (*(v311 + 56))(v337, 1, 1, v310);
      LODWORD(AssociatedTypeWitness) = 0;
      v308 = 0;
      v309 = 0;
      v72 = 0;
    }

    else
    {
      v308 = 0x3A6C61757463613CLL;
      (*(v311 + 56))(v337, 1, 1, v310);
      LODWORD(AssociatedTypeWitness) = 0;
      v71 = 0;
      v72 = 0;
      v309 = 0xEC0000003E6C696ELL;
    }

    v74 = v317;
    goto LABEL_32;
  }

  v289 = v60;
  v293 = v59;
  (*(v75 + 32))(v305, v42, v37);
  v101 = *v70;
  v102 = (v70 + *(*v70 + 672));
  v103 = v102[1];
  v333 = *v102;
  v334 = v103;
  v104 = v102[3];
  v335 = v102[2];
  v336 = v104;
  if (*(&v334 + 1) >> 60 != 11)
  {
    v105 = v333;
    v106 = *(*(*(v324 + 4) + 16) + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
    sub_1CEFCCBDC(&v333, v332, &unk_1EC4BF260, &unk_1CFA01B60);

    os_unfair_lock_lock(v106);
    v107 = *(v106 + 8);
    v108 = swift_isUniquelyReferenced_nonNull_native();
    *(v106 + 8) = v107;
    if ((v108 & 1) == 0)
    {
      v107 = sub_1CF1F6AB4(0, *v107->tree + 1, 1, v107, v109, v110, v111, v112);
      *(v106 + 8) = v107;
    }

    v114 = *v107->tree;
    v113 = *v107->tester;
    if (v114 >= v113 >> 1)
    {
      v107 = sub_1CF1F6AB4((v113 > 1), v114 + 1, 1, v107, v109, v110, v111, v112);
      *(v106 + 8) = v107;
    }

    *v107->tree = v114 + 1;
    *(&v107[1].super.isa + v114) = v105;
    os_unfair_lock_unlock(v106);

    sub_1CEFCCC44(&v333, &unk_1EC4BF260, &unk_1CFA01B60);
    v101 = *v70;
  }

  v294 = v37;
  v115 = *(v101 + 576);
  swift_getAssociatedTypeWitness();
  v116 = swift_getAssociatedConformanceWitness();
  v117 = *(v116 + 64);
  v118 = swift_checkMetadataState();
  v309 = v115;
  v295 = v118;
  v304 = v116;
  v290 = v117;
  LOBYTE(v292) = v117(v118, v116) & 1;
  v292 = v292;
  v120 = v308 + 64;
  v119 = *(v308 + 64);
  v121 = v300;
  v119(v307);
  v122 = AssociatedConformanceWitness;
  v123 = AssociatedTypeWitness;
  v124 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness) & 1;
  v125 = *(v303 + 8);
  v125(v121, v123);
  v291 = v120;
  if (v292 != v124)
  {
    AssociatedConformanceWitness = v119;
    v293, v126, v127, v128, v129, v130, v131, v132;
    type metadata accessor for FileTreeError(0, v307, v308, v133);
    swift_getWitnessTable();
    v71 = swift_allocError();
    v135 = v134;
    v70 = v325;
    if (v290(v295, v304))
    {
      sub_1CF046AB4();
LABEL_29:
      v146 = 0;
LABEL_31:
      v73 = v321;
      v74 = v317;
      v147 = v306;
      (*(v303 + 56))(v135, v146, 1, AssociatedTypeWitness);
      sub_1CF9E75D8();
      swift_getTupleTypeMetadata2();
      v148 = v305;
      (AssociatedConformanceWitness)(v307, v308);
      swift_storeEnumTagMultiPayload();
      (*(v311 + 56))(v337, 1, 1, v310);
      (*(v147 + 8))(v148, v294);
      LODWORD(AssociatedTypeWitness) = 0;
      v308 = 0;
      v309 = 0;
      v72 = 0;
LABEL_32:
      v61 = v296;
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v290 = *(v304 + 72);
  LOBYTE(v292) = (v290)(v295) & 1;
  v292 = v292;
  (v119)(v307, v308);
  v136 = (*(v122 + 72))(v123, v122) & 1;
  v125(v121, v123);
  if (v292 != v136)
  {
    AssociatedConformanceWitness = v119;
    v293, v137, v138, v139, v140, v141, v142, v143;
    type metadata accessor for FileTreeError(0, v307, v308, v144);
    swift_getWitnessTable();
    v71 = swift_allocError();
    v135 = v145;
    v70 = v325;
    if (v290(v295, v304))
    {
      sub_1CF685B34();
      goto LABEL_29;
    }

LABEL_30:
    v146 = 1;
    goto LABEL_31;
  }

  v189 = *(v323 + *(v322 + 40));
  v190 = v307;
  v191 = v308;
  v192 = v305;
  sub_1CF06D940(v307, v308, v332);
  v73 = v321;
  v200 = v337;
  v201 = v294;
  if (qword_1CFA0DC10[v189] == qword_1CFA0DC10[SLOBYTE(v332[0])])
  {
    goto LABEL_41;
  }

  if (v189 != 3)
  {
    if (v189 || LOBYTE(v332[0]) != 3)
    {
      goto LABEL_53;
    }

LABEL_41:
    v202 = v297;
    (*(v298 + 16))(v297, v192, v190);
    v203 = v299;
    sub_1CF06B77C(v202, v190, v191, v299);
    v204 = v311;
    v205 = v310;
    (*(v311 + 16))(v200, v203, v310);
    (*(v204 + 56))(v200, 0, 1, v205);
    v206 = *&v192[*(v201 + 36)];
    v207 = v192[*(v201 + 40)];
    v332[0] = 0;
    v332[1] = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x3A6C61757463613CLL, 0xE800000000000000);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v209 = v332[0];
    v208 = v332[1];
    v332[0] = 0;
    v332[1] = 0xE000000000000000;
    sub_1CF9E7948();
    v332[1], v210, v211, v212, v213, v214, v215, v216;
    strcpy(v332, "stillPending:");
    HIWORD(v332[1]) = -4864;
    v72 = v206;
    v217 = sub_1CF071470(v206);
    v219 = v218;
    MEMORY[0x1D3868CC0](v217);
    v219, v220, v221, v222, v223, v224, v225, v226;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v228 = v332[0];
    v227 = v332[1];
    v332[0] = v209;
    v332[1] = v208;

    MEMORY[0x1D3868CC0](v228, v227);
    v208, v229, v230, v231, v232, v233, v234, v235;
    v227, v236, v237, v238, v239, v240, v241, v242;
    v244 = v332[0];
    v243 = v332[1];
    v332[0] = 0;
    v332[1] = 0xE000000000000000;
    sub_1CF9E7948();
    v332[1], v245, v246, v247, v248, v249, v250, v251;
    strcpy(v332, "shouldFetch:");
    BYTE5(v332[1]) = 0;
    HIWORD(v332[1]) = -5120;
    LODWORD(AssociatedTypeWitness) = v207;
    if (v207)
    {
      v252 = 1702195828;
    }

    else
    {
      v252 = 0x65736C6166;
    }

    if (v207)
    {
      v253 = 0xE400000000000000;
    }

    else
    {
      v253 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v252, v253);
    v253, v254, v255, v256, v257, v258, v259, v260;
    v261 = v293;
    MEMORY[0x1D3868CC0](v289, v293);
    v261, v262, v263, v264, v265, v266, v267, v268;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v270 = v332[0];
    v269 = v332[1];
    v332[0] = v244;
    v332[1] = v243;

    MEMORY[0x1D3868CC0](v270, v269);
    v243, v271, v272, v273, v274, v275, v276, v277;
    v269, v278, v279, v280, v281, v282, v283, v284;
    v308 = v332[0];
    v309 = v332[1];
    v285 = v205;
    v73 = v321;
    (*(v204 + 8))(v299, v285);
    (*(v306 + 8))(v192, v294);
    v71 = 0;
    goto LABEL_54;
  }

  if (!LOBYTE(v332[0]))
  {
    goto LABEL_41;
  }

LABEL_53:
  v293, v193, v194, v195, v196, v197, v198, v199;
  type metadata accessor for FileTreeError(0, v190, v191, v286);
  swift_getWitnessTable();
  v71 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (*(v311 + 56))(v200, 1, 1, v310);
  (*(v306 + 8))(v192, v201);
  LODWORD(AssociatedTypeWitness) = 0;
  v308 = 0;
  v309 = 0;
  v72 = 0;
LABEL_54:
  v74 = v317;
  v61 = v296;
  v70 = v325;
LABEL_33:
  v149 = v331;
  *(&v334 + 1) = v331;
  *&v335 = v61;
  v150 = v61;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v333);
  v152 = v73;
  (*(*v149[-1].tester + 16))(boxed_opaque_existential_0, v73, v149);
  v153 = v314;
  v154 = *(v314 - 8);
  v155 = v328;
  (*(v154 + 16))(v328, v74, v314);
  (*(v154 + 56))(v155, 0, 1, v153);
  v156 = *(v70 + *(*v70 + 640));
  v157 = v322;
  v158 = *(v322 - 8);
  v159 = v329;
  (*(v158 + 16))(v329, v323, v322);
  (*(v158 + 56))(v159, 0, 1, v157);
  v160 = v312;
  v161 = v313;
  (*(v327 + 16))(v312, v337, v313);
  v332[0] = v72;
  if (v71)
  {
    v162 = *(v70 + *(*v70 + 584));
    v163 = v71;
    v164 = v162;
  }

  else
  {
    v162 = 0;
  }

  v165 = v330;
  v166 = v330;

  v287 = v165;
  v168 = v315;
  sub_1CF98C50C(v167, v328, v156, 0, v329, v160, v332, AssociatedTypeWitness, v315, v287, v71, v162);
  v169 = v318;
  v170 = v320;
  v171 = sub_1CF98CA58(v324, v319, v152, v318, v331, v150);
  if (v170)
  {
    v309, v172, v173, v174, v175, v176, v177, v178;

    (*(v316 + 8))(v168, v169);
  }

  else
  {
    v179 = v171;
    (*(v316 + 8))(v168, v169);
    v180 = v309;
    v302(&v333, 0, v308, v309, v179);

    v180, v181, v182, v183, v184, v185, v186, v187;
  }

  (*(v327 + 8))(v337, v161);
  return sub_1CEFCCC44(&v333, &unk_1EC4C1B30, &qword_1CFA05300);
}

double sub_1CF5EEAD0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v78 = a7;
  v79 = a8;
  v80 = a5;
  v82 = a4;
  v83 = a2;
  v77 = a3;
  v71 = a1;
  v10 = *v8;
  v11 = *(*v8 + 624);
  v75 = *(*v8 + 608);
  v76 = v11;
  *&v93 = swift_getAssociatedTypeWitness();
  *(&v93 + 1) = swift_getAssociatedTypeWitness();
  *&v94 = swift_getAssociatedConformanceWitness();
  *(&v94 + 1) = swift_getAssociatedConformanceWitness();
  v81 = type metadata accessor for FileItemVersion(0, &v93);
  v12 = *(v81 - 8);
  v74 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v14 = &v66 - v13;
  v70 = &v66 - v13;
  v15 = *(v10 + 632);
  v72 = *(v10 + 616);
  v73 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  v19 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v66 - v20;
  v21 = v71[1];
  v89 = *v71;
  v90 = v21;
  v22 = v71[3];
  v23 = *v71;
  v24 = v71[1];
  v91 = v71[2];
  v92 = v22;
  v25 = a6[1];
  v26 = a6[3];
  v95 = a6[2];
  v96 = v26;
  v27 = a6[5];
  v28 = a6[7];
  v99 = a6[6];
  v100 = v28;
  v29 = a6[5];
  v30 = a6[3];
  v97 = a6[4];
  v98 = v29;
  v31 = a6[9];
  v32 = a6[11];
  v103 = a6[10];
  v104 = v32;
  v33 = a6[9];
  v34 = a6[7];
  v101 = a6[8];
  v102 = v33;
  v35 = a6[13];
  v107 = a6[14];
  v36 = a6[13];
  v37 = a6[11];
  v105 = a6[12];
  v106 = v36;
  v38 = a6[1];
  v93 = *a6;
  v94 = v38;
  v88[0] = v23;
  v88[1] = v24;
  v39 = v71[3];
  v88[2] = v91;
  v88[3] = v39;
  v86[12] = v105;
  v86[13] = v35;
  v86[14] = a6[14];
  v86[8] = v101;
  v86[9] = v31;
  v86[10] = v103;
  v86[11] = v37;
  v86[4] = v97;
  v86[5] = v27;
  v86[6] = v99;
  v86[7] = v34;
  v86[0] = v93;
  v86[1] = v25;
  v108 = *(a6 + 30);
  v40 = v82;
  v71 = *(*(v82 + 32) + 16);
  v87 = *(a6 + 30);
  v86[2] = v95;
  v86[3] = v30;
  v42 = v41;
  v67 = v41;
  (*(v41 + 16))(&v66 - v20, v83);
  (*(v12 + 16))(v14, v77, v81);
  v43 = (*(v42 + 80) + 80) & ~*(v42 + 80);
  v44 = (v19 + *(v12 + 80) + v43) & ~*(v12 + 80);
  v45 = (v74 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *&v48 = v75;
  *&v49 = v76;
  *(&v48 + 1) = v72;
  *(&v49 + 1) = v73;
  *(v47 + 16) = v48;
  *(v47 + 32) = v49;
  v50 = v78;
  *(v47 + 48) = v40;
  *(v47 + 56) = v50;
  v51 = v84;
  *(v47 + 64) = v79;
  *(v47 + 72) = v51;
  (*(v67 + 32))(v47 + v43, v69, v68);
  (*(v12 + 32))(v47 + v44, v70, v81);
  v52 = v71;
  *(v47 + v45) = v80;
  v53 = (v47 + v46);
  v54 = v92;
  v53[2] = v91;
  v53[3] = v54;
  v55 = v90;
  *v53 = v89;
  v53[1] = v55;
  v56 = v47 + ((v46 + 71) & 0xFFFFFFFFFFFFFFF8);
  v57 = v96;
  *(v56 + 32) = v95;
  *(v56 + 48) = v57;
  v58 = v94;
  *v56 = v93;
  *(v56 + 16) = v58;
  v59 = v100;
  *(v56 + 96) = v99;
  *(v56 + 112) = v59;
  v60 = v98;
  *(v56 + 64) = v97;
  *(v56 + 80) = v60;
  v61 = v104;
  *(v56 + 160) = v103;
  *(v56 + 176) = v61;
  v62 = v102;
  *(v56 + 128) = v101;
  *(v56 + 144) = v62;
  *(v56 + 240) = v108;
  v63 = v107;
  *(v56 + 208) = v106;
  *(v56 + 224) = v63;
  *(v56 + 192) = v105;
  v64 = *(*v52 + 624);

  sub_1CEFCCBDC(&v89, v85, &unk_1EC4BF260, &unk_1CFA01B60);
  sub_1CEFCCBDC(&v93, v85, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  v64(v88, v83, v86, sub_1CF61070C, v47);

  return result;
}

void sub_1CF5EF074(void *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, __int128 *a10, __int128 *a11)
{
  v68 = a7;
  v69 = a8;
  v70 = a1;
  v71 = a6;
  v74 = a4;
  v75 = a5;
  LODWORD(v65) = a2;
  v72 = a9;
  v12 = *a3;
  v13 = *(*a3 + 104);
  v14 = *(*a3 + 88);
  *&v76 = swift_getAssociatedTypeWitness();
  *(&v76 + 1) = swift_getAssociatedTypeWitness();
  *&v77 = swift_getAssociatedConformanceWitness();
  *(&v77 + 1) = swift_getAssociatedConformanceWitness();
  v67 = type metadata accessor for FileItemVersion(0, &v76);
  v64 = *(v67 - 8);
  v15 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v60 - v16;
  v17 = *(v12 + 96);
  v73 = a3;
  v18 = *(v12 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v60 - v25;
  if (v65)
  {
    v27 = swift_allocObject();
    v65 = v27;
    v28 = v75;
    *(v27 + 16) = v74;
    *(v27 + 24) = v28;
    (*(v23 + 16))(v26, v68, v22);
    v68 = v22;
    v29 = v64;
    (*(v64 + 16))(v66, v69, v67);
    v30 = (v24 + *(v29 + 80) + ((*(v23 + 80) + 64) & ~*(v23 + 80))) & ~*(v29 + 80);
    v61 = (*(v23 + 80) + 64) & ~*(v23 + 80);
    v62 = v30;
    v69 = (v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *&v33 = v14;
    *(&v33 + 1) = v18;
    *&v34 = v13;
    *(&v34 + 1) = v17;
    *(v32 + 16) = v33;
    *(v32 + 32) = v34;
    v35 = v70;
    *(v32 + 48) = v71;
    *(v32 + 56) = v35;
    (*(v23 + 32))(v32 + v61, v26, v68);
    (*(v29 + 32))(v32 + v62, v66, v67);
    v36 = v72;
    *(v32 + v69) = v73;
    *(v32 + v63) = v36;
    v37 = (v32 + v31);
    v38 = v75;
    *v37 = v74;
    v37[1] = v38;
    swift_retain_n();

    sub_1CF2B1868(v35, 1);
    v39 = type metadata accessor for Continuation();

    sub_1CF92E6B4("stageCreation(capturedContent:requestedState:otherVersion:on:result:nonSyncableAttributes:completion:)", 102, 2u, sub_1CF045408, 0, sub_1CF559418, v65, sub_1CF610E44, v32, v39, MEMORY[0x1E69E6158]);

LABEL_5:

    return;
  }

  v41 = v68;
  v40 = v69;
  v42 = v72;
  v43 = v74;
  v44 = v75;
  v45 = v70;
  v46 = v73;
  if (sub_1CF056558())
  {
    v47 = swift_allocObject();
    v48 = v43;
    *(v47 + 16) = v43;
    *(v47 + 24) = v44;
    v49 = swift_allocObject();
    v49[2] = v48;
    v49[3] = v44;
    v49[4] = v45;
    swift_retain_n();
    sub_1CF2B1868(v45, 0);
    v50 = type metadata accessor for Continuation();
    sub_1CF92E6B4("stageCreation(capturedContent:requestedState:otherVersion:on:result:nonSyncableAttributes:completion:)", 102, 2u, sub_1CF045408, 0, sub_1CF559418, v47, sub_1CF61097C, v49, v50, MEMORY[0x1E69E6158]);

    goto LABEL_5;
  }

  v51 = a10[1];
  v92[0] = *a10;
  v92[1] = v51;
  v52 = a10[3];
  v92[2] = a10[2];
  v92[3] = v52;
  v53 = a11[13];
  v88 = a11[12];
  v89 = v53;
  v90 = a11[14];
  v91 = *(a11 + 30);
  v54 = a11[9];
  v84 = a11[8];
  v85 = v54;
  v55 = a11[11];
  v86 = a11[10];
  v87 = v55;
  v56 = a11[5];
  v80 = a11[4];
  v81 = v56;
  v57 = a11[7];
  v82 = a11[6];
  v83 = v57;
  v58 = a11[1];
  v76 = *a11;
  v77 = v58;
  v59 = a11[3];
  v78 = a11[2];
  v79 = v59;
  sub_1CF5EF690(v92, v45, v41, v40, v46, v42, &v76, v43, v44);
}

uint64_t sub_1CF5EF690(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v82 = a8;
  v83 = a6;
  v91 = a3;
  v92 = a5;
  v81 = a4;
  v84 = a2;
  v78 = a1;
  v11 = *v9;
  v80 = *(*v9 + 624);
  v79 = v11[76];
  v90 = a9;
  *&v93 = swift_getAssociatedTypeWitness();
  *(&v93 + 1) = swift_getAssociatedTypeWitness();
  *&v94 = swift_getAssociatedConformanceWitness();
  *(&v94 + 1) = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for FileItemVersion(0, &v93);
  v75 = *(v12 - 8);
  v76 = v12;
  v77 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v66 - v13;
  v69 = v11;
  v14 = v11[79];
  v15 = v11[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v88 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  v86 = *(v88 - 1);
  v74 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v66 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  *&v93 = v20;
  *(&v93 + 1) = v21;
  *&v94 = v22;
  *(&v94 + 1) = v23;
  type metadata accessor for FileItemVersion(255, &v93);
  swift_getTupleTypeMetadata2();
  v24 = sub_1CF9E75D8();
  v25 = *(v24 - 8);
  v71 = v24;
  v72 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v66 - v26;
  v70 = &v66 - v26;
  v28 = *(a7 + 192);
  v29 = *(a7 + 224);
  v97[13] = *(a7 + 208);
  v97[14] = v29;
  v30 = *(a7 + 128);
  v31 = *(a7 + 160);
  v32 = *(a7 + 176);
  v97[9] = *(a7 + 144);
  v97[10] = v31;
  v97[11] = v32;
  v97[12] = v28;
  v33 = *(a7 + 64);
  v34 = *(a7 + 96);
  v35 = *(a7 + 112);
  v97[5] = *(a7 + 80);
  v97[6] = v34;
  v97[7] = v35;
  v97[8] = v30;
  v36 = *(a7 + 16);
  v97[0] = *a7;
  v97[1] = v36;
  v37 = *(a7 + 48);
  v97[2] = *(a7 + 32);
  v98 = *(a7 + 240);
  v97[3] = v37;
  v97[4] = v33;
  v38 = *(v9 + 17);
  v39 = 34;
  if ((v38 & 0x210000) != 0)
  {
    v40 = 1;
  }

  else
  {
    v39 = 32;
    v40 = 0;
  }

  v41 = 2 * v40;
  if ((v38 & 0x200) != 0)
  {
    v42 = v39;
  }

  else
  {
    v42 = v41;
  }

  v68 = v42;
  v67 = *(*(v92 + 32) + 16);
  v43 = v78[1];
  v93 = *v78;
  v94 = v43;
  v44 = v78[3];
  v95 = v78[2];
  v96 = v44;
  v78 = v69[72];
  v45 = v69[85];
  swift_beginAccess();
  (*(v25 + 16))(v27, &v9[v45], v24);
  v85 = v9;
  v69 = *&v9[*(*v9 + 584)];
  v46 = v86;
  (*(v86 + 16))(v87, v91, v88);
  v47 = v75;
  v48 = v76;
  (*(v75 + 16))(v89, v81, v76);
  v49 = (*(v46 + 80) + 80) & ~*(v46 + 80);
  v50 = (v74 + *(v47 + 80) + v49) & ~*(v47 + 80);
  v51 = (v77 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *&v53 = v79;
  *(&v53 + 1) = v15;
  *&v54 = v80;
  *(&v54 + 1) = v73;
  *(v52 + 16) = v53;
  *(v52 + 32) = v54;
  v55 = v82;
  *(v52 + 48) = v92;
  *(v52 + 56) = v55;
  v56 = v85;
  *(v52 + 64) = v90;
  *(v52 + 72) = v56;
  (*(v86 + 32))(v52 + v49, v87, v88);
  (*(v47 + 32))(v52 + v50, v89, v48);
  v57 = v67;
  v58 = v68;
  *(v52 + v51) = v83;
  *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v58;
  v59 = *v57;
  v88 = *(*v57 + 648);
  v89 = (v59 + 648);
  v60 = swift_getAssociatedTypeWitness();
  v61 = swift_getAssociatedConformanceWitness();

  v62 = v85;

  v65 = v60;
  v63 = v70;
  (v88)(v91, v84, &v93, v78 + v62, v70, v69, v58, v97, sub_1CF60FA78, v52, v65, v61);

  return (*(v72 + 8))(v63, v71);
}

uint64_t sub_1CF5EFDB4(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v65 = a6;
  v66 = a7;
  v67 = a5;
  v76 = a4;
  v63 = a3;
  v61 = a2;
  v68 = a1;
  v8 = *v7;
  v9 = *(*v7 + 624);
  v75 = *(*v7 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v82 = swift_getAssociatedConformanceWitness();
  v74 = type metadata accessor for FileItemVersion(0, &AssociatedTypeWitness);
  v62 = *(v74 - 8);
  v59 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v50 - v10;
  v11 = *(v8 + 632);
  v12 = *(v8 + 616);
  v13 = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v72 = type metadata accessor for ItemState(0, v13, v14, v15);
  v58 = *(v72 - 8);
  v53 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v50 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v60 = v11;
  v57 = v12;
  v20 = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = v17;
  v80 = v18;
  AssociatedConformanceWitness = v19;
  v82 = v20;
  v52 = type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
  v56 = sub_1CF9E75D8();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v22 = &v50 - v21;
  v78 = v13;
  v54 = *(v13 - 8);
  v23 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v69 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v77 = &v50 - v26;
  v27 = *(*(v76 + 32) + 16);
  swift_getAssociatedTypeWitness();
  v64 = v9;
  v28 = swift_getAssociatedConformanceWitness();
  v29 = *(v28 + 64);

  v30 = swift_checkMetadataState();
  v31 = v7;
  v32 = v29(v30, v28);
  v33 = *v27;
  v70 = v27;
  if (v32)
  {
    (*(v33 + 96))();
  }

  else
  {
    (*(v33 + 104))();
  }

  (*(*(v52 - 8) + 56))(v22, 1, 1);
  v52 = *(v7 + *(*v7 + 584));
  v34 = v54;
  (*(v54 + 16))(v69, v77, v78);
  v51 = v22;
  v35 = v58;
  (*(v58 + 16))(v71, v61, v72);
  v36 = v62;
  (*(v62 + 16))(v73, v63, v74);
  v37 = (*(v34 + 80) + 72) & ~*(v34 + 80);
  v38 = (v23 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (*(v35 + 80) + v38 + 8) & ~*(v35 + 80);
  v61 = (v53 + *(v36 + 80) + v39) & ~*(v36 + 80);
  v63 = (v59 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *&v41 = v75;
  *(&v41 + 1) = v57;
  *&v42 = v64;
  *(&v42 + 1) = v60;
  *(v40 + 16) = v41;
  *(v40 + 32) = v42;
  v43 = v65;
  v44 = v66;
  *(v40 + 48) = v76;
  *(v40 + 56) = v43;
  *(v40 + 64) = v44;
  (*(v34 + 32))(v40 + v37, v69, v78);
  *(v40 + v38) = v31;
  (*(v35 + 32))(v40 + v39, v71, v72);
  (*(v36 + 32))(v40 + v61, v73, v74);
  v45 = v70;
  *(v40 + v63) = v67;
  v46 = *(*v45 + 536);

  v47 = v77;
  v48 = v51;
  v46(v77, v51, v52, v68, 0, sub_1CF60F49C, v40);

  (*(v55 + 8))(v48, v56);
  return (*(v34 + 8))(v47, v78);
}

double sub_1CF5F05D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v69 = a8;
  v70 = a6;
  v64 = a5;
  v65 = a7;
  v76 = a3;
  v77 = a4;
  v63 = a1;
  v71 = a9;
  v9 = *a2;
  v68 = *(*a2 + 104);
  v67 = v9[11];
  v78[0] = swift_getAssociatedTypeWitness();
  v78[1] = swift_getAssociatedTypeWitness();
  v78[2] = swift_getAssociatedConformanceWitness();
  v78[3] = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for FileItemVersion(0, v78);
  v12 = *(v11 - 8);
  v74 = v11;
  v75 = v12;
  v62 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v51 - v13;
  v66 = a2;
  v14 = v9[12];
  v15 = v9[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = v14;
  v59 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v72 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  v19 = *(v72 - 8);
  v58 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v21 = &v51 - v20;
  v57 = &v51 - v20;
  v22 = AssociatedTypeWitness;
  v54 = AssociatedTypeWitness;
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v51 - v26;
  v56 = &v51 - v26;
  type metadata accessor for FileTreeWriter.ItemOrContinuation(255, v15, v14, v28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v29 = sub_1CF9E8238();
  v53 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v51 - v32;
  v55 = &v51 - v32;
  v34 = swift_allocObject();
  v61 = v34;
  v35 = v77;
  *(v34 + 16) = v76;
  *(v34 + 24) = v35;
  (*(v30 + 16))(v33, v63, v29);
  v51 = v23;
  (*(v23 + 16))(v27, v64, v22);
  v52 = v19;
  (*(v19 + 16))(v21, v65, v72);
  v36 = v75;
  (*(v75 + 16))(v73, v69, v74);
  v37 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v38 = (v31 + *(v23 + 80) + v37) & ~*(v23 + 80);
  v39 = (v24 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v19 + 80) + v39 + 8) & ~*(v19 + 80);
  v41 = (v58 + *(v36 + 80) + v40) & ~*(v36 + 80);
  v42 = (v62 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *&v45 = v67;
  *&v46 = v68;
  *(&v45 + 1) = v59;
  *(&v46 + 1) = v60;
  *(v44 + 16) = v45;
  *(v44 + 32) = v46;
  (*(v30 + 32))(v44 + v37, v55, v53);
  (*(v51 + 32))(v44 + v38, v56, v54);
  *(v44 + v39) = v70;
  (*(v52 + 32))(v44 + v40, v57, v72);
  (*(v75 + 32))(v44 + v41, v73, v74);
  *(v44 + v42) = v66;
  *(v44 + v43) = v71;
  v47 = (v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8));
  v48 = v77;
  *v47 = v76;
  v47[1] = v48;
  v49 = type metadata accessor for Continuation();
  swift_retain_n();

  sub_1CF92E6B4("lookup(continuation:requestedState:otherVersion:on:result:completion:)", 70, 2u, sub_1CF045408, 0, sub_1CF559418, v61, sub_1CF60F718, v44, v49, MEMORY[0x1E69E6158]);

  return result;
}

void sub_1CF5F0C8C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t), uint64_t a8, void (*a9)(__int128 *, id, uint64_t, unint64_t, void *), uint64_t a10)
{
  v89 = a7;
  v90 = a8;
  v85 = a5;
  v86 = a6;
  v81 = a3;
  v95 = a2;
  v92 = a1;
  v93 = a10;
  v94 = a9;
  v11 = *a4;
  v12 = *(*a4 + 616);
  v13 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v79 = &v76 - v14;
  v83 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v76 - v18;
  v91 = a4;
  v19 = *(v11 + 632);
  v82 = type metadata accessor for ItemPropagationResult(255, v12, v19, v20);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v21 = sub_1CF9E8238();
  v22 = *(v21 - 8);
  v87 = v21;
  v88 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v77 = (&v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v76 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v76 - v28);
  MEMORY[0x1EEE9AC00](v30);
  v76 = (&v76 - v31);
  v32 = sub_1CF9E5248();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v19;
  v37 = type metadata accessor for FileTreeWriter.ItemOrContinuation(255, v12, v19, v36);
  v38 = sub_1CF9E8238();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = (&v76 - v40);
  (*(v42 + 16))(&v76 - v40, v95, v38, v39);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = *v41;
    v44 = *v41;
    sub_1CF9E5108();
    sub_1CF60FA30(&qword_1EDEAB460, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
    v45 = sub_1CF9E5658();

    (*(v33 + 8))(v35, v32);
    if (v45 & 1) != 0 && (swift_getAssociatedTypeWitness(), AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(), v47 = *(AssociatedConformanceWitness + 72), v48 = swift_checkMetadataState(), (v47(v48, AssociatedConformanceWitness)))
    {

      v49 = v92[3];
      v50 = v92[4];
      v51 = __swift_project_boxed_opaque_existential_1(v92, v49);
      v52 = v76;
      (*(*(v82 - 8) + 56))(v76, 1, 1);
      v53 = v87;
      swift_storeEnumTagMultiPayload();
      sub_1CF5ED254(v52, v85, v86, 0, v89, v90, v51, v94, v93, v49, v50);
      (*(v88 + 8))(v52, v53);
    }

    else
    {
      v57 = v92[3];
      v58 = v92[4];
      v59 = __swift_project_boxed_opaque_existential_1(v92, v57);
      v29->super.isa = v43;
      v60 = v87;
      swift_storeEnumTagMultiPayload();
      v61 = v43;
      sub_1CF5ED254(v29, v85, v86, 0, v89, v90, v59, v94, v93, v57, v58);
      (*(v88 + 8))(v29, v60);
    }
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v55 = v83;
      if (EnumCaseMultiPayload == 1)
      {
        v56 = *v41;
        sub_1CF1A91AC(v92, &v96);

        v94(&v96, v56, 0, 0, 0);

        sub_1CEFCCC44(&v96, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      else
      {
        (*(*(v37 - 8) + 8))(v41, v37);
        v70 = v92[3];
        v71 = v92[4];
        v72 = __swift_project_boxed_opaque_existential_1(v92, v70);
        v73 = v79;
        (*(v55 + 56))(v79, 1, 1, v12);
        v102 = 0;
        v96 = 0;
        v97 = 0;
        v98 = 0;
        v99 = 0xB000000000000000;
        v100 = 0u;
        v101 = 0u;
        v74 = v77;
        sub_1CF953C88(v73, 0, v12, v84, v77);
        v75 = v87;
        swift_storeEnumTagMultiPayload();
        sub_1CF5ED254(v74, v85, v86, 0, v89, v90, v72, v94, v93, v70, v71);
        (*(v88 + 8))(v74, v75);
      }
    }

    else
    {
      v62 = v83;
      v63 = v80;
      (*(v83 + 32))(v80, v41, v12);
      v64 = v92[3];
      v65 = v92[4];
      v66 = __swift_project_boxed_opaque_existential_1(v92, v64);
      v67 = v78;
      (*(v62 + 16))(v78, v63, v12);
      v102 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0xB000000000000000;
      v100 = 0u;
      v101 = 0u;
      v68 = sub_1CF953F04(v67, &v102, 0, &v96, v12, v84, v26);
      (*(*(v82 - 8) + 56))(v26, 0, 1, v68);
      v69 = v87;
      swift_storeEnumTagMultiPayload();
      sub_1CF5ED254(v26, v85, v86, 0, v89, v90, v66, v94, v93, v64, v65);
      (*(v88 + 8))(v26, v69);
      (*(v62 + 8))(v63, v12);
    }
  }
}

void sub_1CF5F15E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, char a9)
{
  v124 = a7;
  v125 = a8;
  v121 = a6;
  v128 = a5;
  v129 = a3;
  v130 = a4;
  v119 = a1;
  v10 = *a2;
  v11 = *(*a2 + 96);
  v12 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v135 = swift_getAssociatedTypeWitness();
  v136 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v138 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, &v135);
  v14 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v114 = sub_1CF9E75D8();
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v111 = &v104 - v15;
  type metadata accessor for ItemPropagationResult(255, v12, v11, v16);
  v17 = sub_1CF9E75D8();
  v118 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v127 = &v104 - v20;
  v21 = *(v10 + 104);
  v126 = a2;
  v22 = *(v10 + 88);
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v135 = v23;
  v136 = v24;
  AssociatedConformanceWitness = v25;
  v138 = v26;
  v131 = type metadata accessor for FileItemVersion(0, &v135);
  v117 = *(v131 - 8);
  v27 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v134 = &v104 - v28;
  v123 = v12;
  v29 = swift_getAssociatedConformanceWitness();
  v133 = type metadata accessor for ItemState(0, v14, v29, v30);
  v31 = *(v133 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v104 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  v116 = v17;
  v34 = swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v35 = sub_1CF9E8238();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = (&v104 - v37);
  (*(v39 + 16))(&v104 - v37, v119, v35, v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v122 = v11;
  if (EnumCaseMultiPayload == 1)
  {
    v41 = *v38;
    v42 = swift_allocObject();
    v127 = v42;
    v43 = v130;
    *(v42 + 16) = v129;
    *(v42 + 24) = v43;
    (*(v31 + 16))(v132, v121, v133);
    v44 = v117;
    (*(v117 + 16))(v134, v124, v131);
    v45 = (*(v31 + 80) + 64) & ~*(v31 + 80);
    v46 = (v32 + *(v44 + 80) + v45) & ~*(v44 + 80);
    v124 = (v27 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v124 + 15) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    *&v49 = v22;
    *(&v49 + 1) = v123;
    *&v50 = v21;
    *(&v50 + 1) = v122;
    *(v48 + 16) = v49;
    *(v48 + 32) = v50;
    *(v48 + 48) = v128;
    *(v48 + 56) = v41;
    (*(v31 + 32))(v48 + v45, v132, v133);
    (*(v44 + 32))(v48 + v46, v134, v131);
    v51 = v125;
    *(v48 + v124) = v126;
    *(v48 + v47) = v51;
    v52 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
    v53 = v130;
    *v52 = v129;
    v52[1] = v53;
    swift_retain_n();

    v54 = v41;
    v55 = type metadata accessor for Continuation();

    sub_1CF92E6B4("create(capturedContent:stagedContext:requestedState:otherVersion:on:result:nonSyncableAttributes:completion:)", 109, 2u, sub_1CF045408, 0, sub_1CF559418, v127, sub_1CF611818, v48, v55, MEMORY[0x1E69E6158]);
  }

  else
  {
    v107 = v27;
    v109 = v31;
    v110 = v22;
    v119 = v21;
    v56 = v117;
    v57 = v131;
    v108 = *(v38 + *(v34 + 48));
    v58 = v118;
    v59 = *(v118 + 32);
    v60 = v116;
    v106 = v118 + 32;
    v105 = v59;
    v59(v127, v38, v116);
    if ((a9 & 0x20) != 0 && (v61 = v128, v62 = v58, v63 = *(*v128 + 680), swift_beginAccess(), v64 = v112, v65 = v61 + v63, v66 = v111, v67 = v114, (*(v112 + 16))(v111, v65, v114), LODWORD(v63) = (*(*(TupleTypeMetadata2 - 8) + 48))(v66, 1), (*(v64 + 8))(v66, v67), v68 = v63 == 1, v58 = v62, v68))
    {
      TupleTypeMetadata2 = *(v126[5] + 16);
      v114 = *(*v128 + 576);
      (*(v62 + 16))(v120, v127, v60);
      v69 = v109;
      (*(v109 + 16))(v132, v121, v133);
      v70 = v56;
      (*(v56 + 16))(v134, v124, v57);
      v71 = (*(v62 + 80) + 80) & ~*(v62 + 80);
      v72 = (v115 + *(v69 + 80) + v71) & ~*(v69 + 80);
      v73 = (v32 + *(v70 + 80) + v72) & ~*(v70 + 80);
      v124 = (v107 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v74 = (v124 + 15) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      *&v76 = v110;
      *(&v76 + 1) = v123;
      *&v77 = v119;
      *(&v77 + 1) = v122;
      *(v75 + 16) = v76;
      *(v75 + 32) = v77;
      v79 = v128;
      v78 = v129;
      *(v75 + 48) = v126;
      *(v75 + 56) = v79;
      v80 = v130;
      *(v75 + 64) = v78;
      *(v75 + 72) = v80;
      v105(v75 + v71, v120, v60);
      (*(v69 + 32))(v75 + v72, v132, v133);
      (*(v70 + 32))(v75 + v73, v134, v131);
      v81 = TupleTypeMetadata2;
      v82 = v108;
      v83 = v125;
      *(v75 + v124) = v108;
      *(v75 + v74) = v83;
      v84 = *(*v81 + 688);
      v85 = v82;

      v86 = v128;

      v84(v86 + v114, sub_1CF60FC88, v75);

      (*(v118 + 8))(v127, v116);
    }

    else
    {
      v87 = swift_allocObject();
      v114 = v87;
      v88 = v130;
      *(v87 + 16) = v129;
      *(v87 + 24) = v88;
      (*(v58 + 16))(v120, v127, v60);
      v89 = v109;
      (*(v109 + 16))(v132, v121, v133);
      v90 = v56;
      (*(v56 + 16))(v134, v124, v57);
      v91 = (*(v58 + 80) + 56) & ~*(v58 + 80);
      v92 = (v115 + *(v89 + 80) + v91) & ~*(v89 + 80);
      v121 = (v32 + *(v90 + 80) + v92) & ~*(v90 + 80);
      v124 = (v107 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
      v93 = (v124 + 15) & 0xFFFFFFFFFFFFFFF8;
      v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      *&v96 = v110;
      *(&v96 + 1) = v123;
      *&v97 = v119;
      *(&v97 + 1) = v122;
      *(v95 + 16) = v96;
      *(v95 + 32) = v97;
      v98 = v128;
      *(v95 + 48) = v128;
      v105(v95 + v91, v120, v60);
      (*(v89 + 32))(v95 + v92, v132, v133);
      (*(v90 + 32))(v95 + v121, v134, v131);
      v99 = v108;
      *(v95 + v124) = v108;
      *(v95 + v93) = v126;
      *(v95 + v94) = v125;
      v100 = (v95 + ((v94 + 15) & 0xFFFFFFFFFFFFFFF8));
      v101 = v130;
      *v100 = v129;
      v100[1] = v101;
      v102 = type metadata accessor for Continuation();
      swift_retain_n();
      swift_retain_n();

      v103 = v99;
      sub_1CF92E6B4("create(capturedContent:stagedContext:requestedState:otherVersion:on:result:nonSyncableAttributes:completion:)", 109, 2u, sub_1CF60FC80, v98, sub_1CF559418, v114, sub_1CF6117E8, v95, v102, MEMORY[0x1E69E6158]);

      (*(v118 + 8))(v127, v60);
    }
  }
}

uint64_t sub_1CF5F23D0(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t), uint64_t a7, void (*a8)(__int128 *, void, uint64_t, unint64_t, void *), uint64_t a9)
{
  v24 = a7;
  v25 = a8;
  v22 = a5;
  v23 = a6;
  v21 = a4;
  type metadata accessor for ItemPropagationResult(255, *(*a2 + 616), *(*a2 + 632), a4);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v11 = sub_1CF9E8238();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v20 - v13);
  v15 = a1[3];
  v16 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v14->super.isa = a3;
  swift_storeEnumTagMultiPayload();
  v18 = a3;
  sub_1CF5ED254(v14, v21, v22, 0, v23, v24, v17, v25, a9, v15, v16);
  return (*(v12 + 8))(v14, v11);
}

double sub_1CF5F2594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v65 = a8;
  v66 = a3;
  v63 = a7;
  v61 = a6;
  v72 = a5;
  v70 = a4;
  v67 = a9;
  v68 = a10;
  v10 = *a2;
  v64 = *(*a2 + 104);
  v62 = v10[11];
  v73[0] = swift_getAssociatedTypeWitness();
  v73[1] = swift_getAssociatedTypeWitness();
  v73[2] = swift_getAssociatedConformanceWitness();
  v73[3] = swift_getAssociatedConformanceWitness();
  v69 = type metadata accessor for FileItemVersion(0, v73);
  v71 = *(v69 - 8);
  v58 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v13 = &v50 - v12;
  v56 = &v50 - v12;
  v60 = a2;
  v14 = v10[10];
  v15 = v10[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  v53 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - v22;
  v55 = &v50 - v22;
  type metadata accessor for ItemPropagationResult(255, v14, v15, v24);
  v25 = sub_1CF9E75D8();
  v52 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v50 - v28;
  v54 = &v50 - v28;
  v30 = swift_allocObject();
  v59 = v30;
  v31 = v72;
  *(v30 + 16) = v70;
  *(v30 + 24) = v31;
  (*(v26 + 16))(v29, v61, v25);
  v51 = v20;
  (*(v20 + 16))(v23, v63, v19);
  v32 = v71;
  (*(v71 + 16))(v13, v65, v69);
  v33 = (*(v26 + 80) + 56) & ~*(v26 + 80);
  v34 = (v27 + *(v20 + 80) + v33) & ~*(v20 + 80);
  v35 = (v21 + *(v32 + 80) + v34) & ~*(v32 + 80);
  v36 = (v58 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *&v40 = v62;
  *(&v40 + 1) = v57;
  *&v41 = v64;
  *(&v41 + 1) = v15;
  *(v39 + 16) = v40;
  *(v39 + 32) = v41;
  v42 = v66;
  *(v39 + 48) = v66;
  (*(v26 + 32))(v39 + v33, v54, v52);
  (*(v51 + 32))(v39 + v34, v55, v53);
  (*(v71 + 32))(v39 + v35, v56, v69);
  v44 = v67;
  v43 = v68;
  *(v39 + v36) = v67;
  *(v39 + v37) = v60;
  *(v39 + v38) = v43;
  v45 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
  v46 = v72;
  *v45 = v70;
  v45[1] = v46;
  v47 = type metadata accessor for Continuation();
  swift_retain_n();
  swift_retain_n();
  v48 = v44;

  sub_1CF92E6B4("create(capturedContent:stagedContext:requestedState:otherVersion:on:result:nonSyncableAttributes:completion:)", 109, 2u, sub_1CF6117CC, v42, sub_1CF559418, v59, sub_1CF610464, v39, v47, MEMORY[0x1E69E6158]);

  return result;
}

uint64_t sub_1CF5F2B58(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(char *, uint64_t), uint64_t a8, void (*a9)(__int128 *, void, uint64_t, unint64_t, void *), uint64_t a10)
{
  v30 = a7;
  v31 = a8;
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v12 = *a2;
  v13 = *(*a2 + 616);
  v14 = *(v12 + 632);
  v25 = a10;
  v26 = a9;
  type metadata accessor for ItemPropagationResult(255, v13, v14, a4);
  v15 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v16 = sub_1CF9E8238();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v24 - v18);
  v20 = a1[3];
  v21 = a1[4];
  v22 = __swift_project_boxed_opaque_existential_1(a1, v20);
  (*(*(v15 - 8) + 16))(v19, a3, v15);
  swift_storeEnumTagMultiPayload();
  sub_1CF5ED254(v19, v27, v28, v29, v30, v31, v22, v26, v25, v20, v21);
  return (*(v17 + 8))(v19, v16);
}

void sub_1CF5F2D4C(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, char **a4, void *a5, uint64_t a6, char *a7, uint64_t a8)
{
  v121 = a8;
  v122 = a7;
  v123 = a5;
  v124 = a6;
  v127 = a4;
  v125 = a3;
  v129 = a2;
  v132 = a1;
  v9 = *v8;
  v10 = *(*v8 + 79);
  v11 = *(*v8 + 77);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = v11;
  v112 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for ItemState(255, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v16 = sub_1CF9E75D8();
  v116 = *(v16 - 8);
  v117 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v115 = &v107 - v17;
  v18 = *(v9 + 78);
  v19 = *(v9 + 76);
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v113 = v19;
  v114 = v18;
  v23 = swift_getAssociatedConformanceWitness();
  *&v187 = v20;
  *(&v187 + 1) = v21;
  *&v188 = v22;
  *(&v188 + 1) = v23;
  v24 = type metadata accessor for FileItemVersion(255, &v187);
  v25 = sub_1CF9E75D8();
  v131 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v107 - v26;
  v130 = v15;
  v128 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v109 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v119 = &v107 - v31;
  v32 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v107 - v37;
  v39 = *(*(v132 + 4) + 16);
  v40 = (v8 + *(v9 + 84));
  v41 = v40[1];
  v203 = *v40;
  v204 = v41;
  v42 = v40[3];
  v205 = v40[2];
  v206 = v42;
  v43 = *(v9 + 81);
  swift_beginAccess();
  (*(v131 + 16))(v27, v8 + v43, v25);
  v44 = (*(v32 + 48))(v27, 1, v24);
  v126 = v24;
  v118 = v38;
  v120 = v44;
  if (v44 != 1)
  {
    v110 = v39;
    (*(v32 + 32))(v35, v27, v24);
    v131 = v32;
    v48 = *(v32 + 16);
    v108 = v35;
    v48(v38, v35, v24);
    v49 = *(*v8 + 83);
    swift_beginAccess();
    v51 = v115;
    v50 = v116;
    v52 = v8 + v49;
    v53 = v117;
    (*(v116 + 16))(v115, v52, v117);
    v54 = v128;
    v55 = v130;
    if ((*(v128 + 48))(v51, 1, v130) == 1)
    {
      v46 = v110;

      sub_1CEFCCBDC(&v203, &v187, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v50 + 8))(v51, v53);
      v57 = v121;
      v56 = v122;
      v58 = v8;
      v69 = sub_1CF66E6E4(v8, v127, v122, *(v121 + 8));
      *&v70 = v113;
      *&v71 = v114;
      *(&v70 + 1) = v111;
      *(&v71 + 1) = v112;
      v188 = v71;
      v187 = v70;
      type metadata accessor for Propagation.PropagationError(0, &v187);
      swift_getWitnessTable();
      v45 = swift_allocError();
      *v72 = v69;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v32 = v131;
      (*(v131 + 8))(v108, v126);
      v8 = v58;
      if (!v129)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v59 = v109;
    (*(v54 + 32))(v109, v51, v55);
    (*(v54 + 16))(v119, v59, v55);
    v60 = *(*v8 + 72);

    sub_1CEFCCBDC(&v203, v185, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CF5EA7E0(v132, v8 + v60, v127, v122, *(v121 + 8), &v187);
    v121 = v60;
    v127 = *(v54 + 8);
    v128 = v54 + 8;
    (v127)(v59, v55);
    v83 = *(v131 + 8);
    v131 += 8;
    v122 = v83;
    (v83)(v108, v126);
    v181 = v199;
    v182 = v200;
    v183 = v201;
    v177 = v195;
    v178 = v196;
    v179 = v197;
    v180 = v198;
    v173 = v191;
    v174 = v192;
    v175 = v193;
    v176 = v194;
    v169 = v187;
    v170 = v188;
    v171 = v189;
    v172 = v190;
    v185[12] = v199;
    v185[13] = v200;
    v185[14] = v201;
    v185[8] = v195;
    v185[9] = v196;
    v185[10] = v197;
    v185[11] = v198;
    v185[4] = v191;
    v185[5] = v192;
    v185[6] = v193;
    v185[7] = v194;
    v185[0] = v187;
    v185[1] = v188;
    v184 = v202;
    v186 = v202;
    v185[2] = v189;
    v185[3] = v190;
    enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v185);
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
    {
      v85 = *(v55 + 40);
      v86 = v119 + v85 + *(type metadata accessor for ItemMetadata(0) + 152);
      *(v86 + 8), v87, v88, v89, v90, v91, v92, v93;
      *v86 = 0;
      *(v86 + 8) = 0;
    }

    v94 = v55;
    swift_getAssociatedTypeWitness();
    v95 = swift_getAssociatedConformanceWitness();
    v96 = *(v95 + 64);
    v97 = swift_checkMetadataState();
    if (v96(v97, v95) & 1) != 0 || ((*(v95 + 72))(v97, v95))
    {
      v98 = v118;
      v99 = v119;
      sub_1CF5EFDB4(v129, v119, v118, v132, v125, v123, v124);
      sub_1CEFCCC44(&v203, &unk_1EC4BF260, &unk_1CFA01B60);

      sub_1CEFCCC44(&v169, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      (v122)(v98, v126);
    }

    else
    {
      v101 = v126;
      v99 = v119;
      if (v129)
      {
        type metadata accessor for StagedContext();
        v102 = swift_dynamicCastClass();
        if (!v102)
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/Propagation.swift", 101, 2, 1038);
        }

        v103 = v102;
        v149 = v203;
        v150 = v204;
        v151 = v205;
        v152 = v206;
        v145 = v181;
        v146 = v182;
        v147 = v183;
        v148 = v184;
        v141 = v177;
        v142 = v178;
        v143 = v179;
        v144 = v180;
        v137 = v173;
        v138 = v174;
        v139 = v175;
        v140 = v176;
        v133 = v169;
        v134 = v170;
        v135 = v171;
        v136 = v172;

        sub_1CEFCCBDC(&v169, &v153, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        v104 = v103;
        v105 = v118;
        sub_1CF5EF690(&v149, v104, v99, v118, v132, v125, &v133, v123, v124);

        sub_1CEFCCC44(&v169, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        v165 = v145;
        v166 = v146;
        v167 = v147;
        v168 = v148;
        v161 = v141;
        v162 = v142;
        v163 = v143;
        v164 = v144;
        v157 = v137;
        v158 = v138;
        v159 = v139;
        v160 = v140;
        v153 = v133;
        v154 = v134;
        v155 = v135;
        v156 = v136;
        sub_1CEFCCC44(&v153, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        (v122)(v105, v101);
        sub_1CEFCCC44(&v203, &unk_1EC4BF260, &unk_1CFA01B60);
        v100 = v94;
        goto LABEL_25;
      }

      v149 = v203;
      v150 = v204;
      v151 = v205;
      v152 = v206;
      v145 = v181;
      v146 = v182;
      v147 = v183;
      v148 = v184;
      v141 = v177;
      v142 = v178;
      v143 = v179;
      v144 = v180;
      v137 = v173;
      v138 = v174;
      v139 = v175;
      v140 = v176;
      v133 = v169;
      v134 = v170;
      v135 = v171;
      v136 = v172;
      sub_1CEFCCBDC(&v169, &v153, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v106 = v118;
      sub_1CF5EEAD0(&v149, v99, v118, v132, v125, &v133, v123, v124);

      sub_1CEFCCC44(&v169, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v165 = v145;
      v166 = v146;
      v167 = v147;
      v168 = v148;
      v161 = v141;
      v162 = v142;
      v163 = v143;
      v164 = v144;
      v157 = v137;
      v158 = v138;
      v159 = v139;
      v160 = v140;
      v153 = v133;
      v154 = v134;
      v155 = v135;
      v156 = v136;
      sub_1CEFCCC44(&v153, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      (v122)(v106, v101);
      sub_1CEFCCC44(&v203, &unk_1EC4BF260, &unk_1CFA01B60);
    }

    v100 = v94;
LABEL_25:
    (v127)(v99, v100);
    return;
  }

  sub_1CEFCCBDC(&v203, &v187, &unk_1EC4BF260, &unk_1CFA01B60);
  (*(v131 + 8))(v27, v25);
  v45 = *(v8 + *(*v8 + 86));
  v46 = v39;
  if (v45)
  {
    swift_willThrow();
    v47 = v45;
  }

  else
  {
    *&v61 = v113;
    *(&v61 + 1) = v111;
    *&v62 = v114;
    *(&v62 + 1) = v112;
    v188 = v62;
    v187 = v61;
    type metadata accessor for Propagation.PropagationError(0, &v187);
    swift_getWitnessTable();
    v45 = swift_allocError();
    v64 = v63;
    v65 = swift_getAssociatedTypeWitness();
    v66 = (v64 + *(swift_getTupleTypeMetadata2() + 48));
    v67 = *(*(v65 - 8) + 16);
    v68 = v65;
    v46 = v39;
    v67(v64, v8 + *(*v8 + 72), v68);
    *v66 = 0xD000000000000019;
    v66[1] = 0x80000001CFA54D80;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v57 = v121;
  v56 = v122;
  if (!v129)
  {
    goto LABEL_14;
  }

LABEL_11:
  type metadata accessor for StagedContext();
  v73 = swift_dynamicCastClass();
  if (v73)
  {
    v74 = v73;
    v75 = swift_allocObject();
    v131 = v32;
    LODWORD(v127) = 0;
    v76 = v75;
    v75[2] = v56;
    v75[3] = v57;
    v77 = v123;
    v75[4] = v132;
    v75[5] = v77;
    v78 = v125;
    v75[6] = v124;
    v75[7] = v8;
    v75[8] = v78;
    v75[9] = v45;
    v123 = (*v46 + 640);
    v79 = *v123;

    v80 = v45;
    v79(v74, sub_1CF60F418, v76);
    v81 = v130;
    sub_1CEFCCC44(&v203, &unk_1EC4BF260, &unk_1CFA01B60);

    LODWORD(v76) = v127;
    v32 = v131;

    v82 = v120;
    if (v76)
    {
      (*(v128 + 8))(v119, v81);
    }

    goto LABEL_16;
  }

LABEL_14:
  sub_1CF60169C(v127, v45, v8, v123, v124, v132, v125, v56, v56, v57, v57);
  sub_1CEFCCC44(&v203, &unk_1EC4BF260, &unk_1CFA01B60);

  v82 = v120;
LABEL_16:
  if (v82 != 1)
  {
    (*(v32 + 8))(v118, v126);
  }
}

id sub_1CF5F3DF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 624);
  v5 = *(*v1 + 608);
  *&v25 = swift_getAssociatedTypeWitness();
  type metadata accessor for SnapshotItem(255, v5, v4, v6);
  *(&v25 + 1) = sub_1CF9E75D8();
  *&v26 = MEMORY[0x1E69E6810];
  *(&v26 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v8 = TupleTypeMetadata[12];
  v9 = TupleTypeMetadata[16];
  v10 = TupleTypeMetadata[20];
  v11 = v3[72];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v11, AssociatedTypeWitness);
  v14 = type metadata accessor for SnapshotItem(0, v5, v4, v13);
  (*(*(v14 - 8) + 56))(a1 + v8, 1, 1, v14);
  v15 = *v1;
  *(a1 + v9) = *(v1 + *(*v1 + 640));
  v24 = *(v1 + *(v15 + 584));
  *(a1 + v10) = v24;
  v16 = v3[77];
  *&v17 = v5;
  *(&v17 + 1) = v16;
  v18 = v3[79];
  *&v19 = v4;
  *(&v19 + 1) = v18;
  v25 = v17;
  v26 = v19;
  type metadata accessor for DirectionalTestingOperation(0, &v25);
  swift_storeEnumTagMultiPayload();
  *&v20 = v16;
  *(&v20 + 1) = v5;
  *&v21 = v18;
  *(&v21 + 1) = v4;
  v25 = v20;
  v26 = v21;
  v22 = type metadata accessor for TestingOperation(0, &v25);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(a1, 0, 1, v22);

  return v24;
}

void sub_1CF5F4100()
{
  v1 = *(*v0 + 648);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
  v2 = sub_1CF9E75D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 656);
  swift_getAssociatedTypeWitness();
  v4 = sub_1CF9E75D8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 664);
  v6 = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemState(255, v6, v7, v8);
  v9 = sub_1CF9E75D8();
  (*(*(v9 - 8) + 8))(v0 + v5, v9);
  sub_1CF480A8C(*(v0 + *(*v0 + 672)), *(v0 + *(*v0 + 672) + 8), *(v0 + *(*v0 + 672) + 16), *(v0 + *(*v0 + 672) + 24));
  v10 = *(*v0 + 680);
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = v11;
  v17 = v12;
  AssociatedConformanceWitness = v13;
  v19 = v14;
  type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
  swift_getTupleTypeMetadata2();
  v15 = sub_1CF9E75D8();
  (*(*(v15 - 8) + 8))(v0 + v10, v15);
}

uint64_t sub_1CF5F44C8()
{
  v0 = sub_1CF5E9C94();
  v1 = *(*v0 + 648);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
  v2 = sub_1CF9E75D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 656);
  swift_getAssociatedTypeWitness();
  v4 = sub_1CF9E75D8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 664);
  v6 = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemState(255, v6, v7, v8);
  v9 = sub_1CF9E75D8();
  (*(*(v9 - 8) + 8))(v0 + v5, v9);
  sub_1CF480A8C(*(v0 + *(*v0 + 672)), *(v0 + *(*v0 + 672) + 8), *(v0 + *(*v0 + 672) + 16), *(v0 + *(*v0 + 672) + 24));
  v10 = *(*v0 + 680);
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = v11;
  v18 = v12;
  AssociatedConformanceWitness = v13;
  v20 = v14;
  type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
  swift_getTupleTypeMetadata2();
  v15 = sub_1CF9E75D8();
  (*(*(v15 - 8) + 8))(v0 + v10, v15);

  return v0;
}

uint64_t sub_1CF5F48E0(void *a1)
{
  v17 = MEMORY[0x1E69E5D08] + 64;
  v18 = MEMORY[0x1E69E5D08] + 64;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_1CF9E75D8();
  if (v3 <= 0x3F)
  {
    v19 = *(result - 8) + 64;
    v13 = swift_getAssociatedTypeWitness();
    v14 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = swift_getAssociatedConformanceWitness();
    type metadata accessor for FileItemVersion(255, &v13);
    result = sub_1CF9E75D8();
    if (v4 <= 0x3F)
    {
      v20 = *(result - 8) + 64;
      v5 = swift_getAssociatedConformanceWitness();
      type metadata accessor for ItemState(255, AssociatedTypeWitness, v5, v6);
      result = sub_1CF9E75D8();
      if (v7 <= 0x3F)
      {
        v21 = *(result - 8) + 64;
        v22 = "@";
        v8 = swift_getAssociatedTypeWitness();
        v9 = swift_getAssociatedTypeWitness();
        v10 = swift_getAssociatedConformanceWitness();
        v11 = swift_getAssociatedConformanceWitness();
        v13 = v8;
        v14 = v9;
        AssociatedConformanceWitness = v10;
        v16 = v11;
        type metadata accessor for FileItemVersion(255, &v13);
        result = sub_1CF9E75D8();
        if (v12 <= 0x3F)
        {
          v23 = *(result - 8) + 64;
          v24 = &unk_1CFA0DA10;
          v25 = &unk_1CFA0DA10;
          v26 = "\b";
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CF5F4C30@<X0>(char *a1@<X8>)
{
  v3 = v1 + *(*v1 + 672);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  result = (*(*(v7 - 8) + 48))(v3, 1, v7);
  if (result)
  {
    v9 = 4;
  }

  else
  {
    v9 = *(v3 + *(v7 + 40));
  }

  *a1 = v9;
  return result;
}

uint64_t sub_1CF5F4D64()
{
  v1 = v0 + *(*v0 + 672);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  if ((*(*(v5 - 8) + 48))(v1, 1, v5))
  {
    return 2;
  }

  v7 = v1 + *(v5 + 40);
  return *(v7 + *(type metadata accessor for ItemMetadata(0) + 112));
}

uint64_t sub_1CF5F4EA0()
{
  v1 = v0 + *(*v0 + 672);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  result = 0;
  if (!v6)
  {
    v8 = v1 + *(v5 + 40);
    return *(v8 + *(type metadata accessor for ItemMetadata(0) + 104));
  }

  return result;
}

unint64_t sub_1CF5F4FE4()
{
  v1 = v0 + *(*v0 + 672);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  v6 = 1;
  if ((*(*(v5 - 8) + 48))(v1, 1, v5))
  {
    v7 = 0;
  }

  else
  {
    v8 = v1 + *(v5 + 40);
    v7 = *(v8 + 4);
    v6 = *(v8 + 8);
  }

  return v7 | (v6 << 32);
}

uint64_t sub_1CF5F5128@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 672);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = 1;
  v9 = (*(*(v7 - 8) + 48))(v1 + v3, 1, v7);
  v10 = *(AssociatedTypeWitness - 8);
  if (!v9)
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v3, AssociatedTypeWitness);
    v8 = 0;
  }

  return (*(v10 + 56))(a1, v8, 1, AssociatedTypeWitness);
}

uint64_t sub_1CF5F52B8()
{
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for ItemState(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  v159 = sub_1CF9E75D8();
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v146 - v5;
  v161 = v4;
  v160 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v155 = &v146 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  *&v167 = v8;
  *(&v167 + 1) = v9;
  *&v168 = v10;
  *(&v168 + 1) = v11;
  v12 = type metadata accessor for FileItemVersion(255, &v167);
  v151 = sub_1CF9E75D8();
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v146 - v13;
  v154 = v12;
  v153 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v147 = &v146 - v15;
  v16 = sub_1CF9E75D8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v146 - v18;
  v156 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v146 - v21;
  *&v167 = 0;
  *(&v167 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x74616761706F7270, 0xEC0000003C3A6465);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](0x3A726576626420, 0xE700000000000000);
  v171 = *(v1 + *(*v1 + 640));
  v22 = sub_1CF9E7F98();
  v24 = v23;
  MEMORY[0x1D3868CC0](v22);
  v24, v25, v26, v27, v28, v29, v30, v31;
  v32 = v167;
  *&v167 = 0x3A7265766D6F6420;
  *(&v167 + 1) = 0xE800000000000000;
  v33 = *(v1 + *(*v1 + 584));
  if (v33)
  {
    v34 = [v33 description];
    v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v37 = v36;
  }

  else
  {
    v37 = 0xE500000000000000;
    v35 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1D3868CC0](v35, v37);
  v37, v38, v39, v40, v41, v42, v43, v44;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v45 = v167;
  v167 = v32;

  MEMORY[0x1D3868CC0](v45, *(&v45 + 1));
  *(&v32 + 1), v46, v47, v48, v49, v50, v51, v52;
  *(&v45 + 1), v53, v54, v55, v56, v57, v58, v59;
  v172 = v167;
  v60 = *(*v1 + 656);
  swift_beginAccess();
  (*(v17 + 16))(v19, v1 + v60, v16);
  v61 = v156;
  if ((*(v156 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v19, v16);
    v62 = v161;
    v63 = v160;
  }

  else
  {
    v64 = v152;
    (*(v61 + 32))(v152, v19, AssociatedTypeWitness);
    v65 = *(*v1 + 688);
    swift_beginAccess();
    v66 = v1 + v65;
    v67 = v149;
    v68 = v151;
    (*(v150 + 16))(v149, v66, v151);
    v69 = v153;
    v70 = v154;
    v71 = (*(v153 + 48))(v67, 1, v154);
    v63 = v160;
    if (v71 == 1)
    {
      (*(v61 + 8))(v64, AssociatedTypeWitness);
      (*(*(&v45 + 1) + 8))(v67, v68);
    }

    else
    {
      v72 = v147;
      (*(v69 + 32))(v147, v67, v70);
      *&v167 = 0;
      *(&v167 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x3A74656772617420, 0xEC0000003A64693CLL);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      v73 = v61;
      v74 = *(&v167 + 1);
      MEMORY[0x1D3868CC0](v167, *(&v167 + 1));
      v74, v75, v76, v77, v78, v79, v80, v81;
      (*(v69 + 8))(v72, v70);
      (*(v73 + 8))(v64, AssociatedTypeWitness);
    }

    v62 = v161;
  }

  v82 = v158;
  v83 = *(*v1 + 672);
  swift_beginAccess();
  v84 = v1 + v83;
  v85 = v157;
  v86 = v159;
  (*(v82 + 16))(v157, v84, v159);
  if ((*(v63 + 48))(v85, 1, v62) == 1)
  {
    (*(v82 + 8))(v85, v86);
  }

  else
  {
    v87 = v155;
    (*(v63 + 32))(v155, v85, v62);
    *&v167 = 0;
    *(&v167 + 1) = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x7473657571657220, 0xEB000000003A6465);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v88 = *(&v167 + 1);
    MEMORY[0x1D3868CC0](v167, *(&v167 + 1));
    v88, v89, v90, v91, v92, v93, v94, v95;
    (*(v63 + 8))(v87, v62);
  }

  v96 = *v1;
  v97 = (v1 + *(*v1 + 680));
  v98 = v97[1];
  v167 = *v97;
  v168 = v98;
  v99 = v97[3];
  v169 = v97[2];
  v170 = v99;
  if (*(&v98 + 1) >> 60 != 11)
  {
    v165 = 0;
    v166 = 0xE000000000000000;
    v100 = v167;
    sub_1CEFF05F4(v168, *(&v98 + 1));
    MEMORY[0x1D3868CC0](0x6572757470616320, 0xEA00000000003A64);
    v163 = 677669222;
    v164 = 0xE400000000000000;
    v162 = v100;
    v101 = sub_1CF9E7F98();
    v103 = v102;
    MEMORY[0x1D3868CC0](v101);
    v103, v104, v105, v106, v107, v108, v109, v110;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v111 = v164;
    MEMORY[0x1D3868CC0](v163, v164);
    v111, v112, v113, v114, v115, v116, v117, v118;
    v119 = v166;
    MEMORY[0x1D3868CC0](v165, v166);
    v119, v120, v121, v122, v123, v124, v125, v126;
    sub_1CEFCCC44(&v167, &unk_1EC4BF260, &unk_1CFA01B60);
    v96 = *v1;
  }

  v165 = 0x3A736666696420;
  v166 = 0xE700000000000000;
  v127 = sub_1CF071470(*(v1 + *(v96 + 648)));
  v129 = v128;
  MEMORY[0x1D3868CC0](v127);
  v129, v130, v131, v132, v133, v134, v135, v136;
  v137 = v166;
  MEMORY[0x1D3868CC0](v165, v166);
  v137, v138, v139, v140, v141, v142, v143, v144;
  return v172;
}

char **sub_1CF5F5E78(uint64_t a1, uint64_t a2, char **a3, char *a4, char *a5)
{
  v566 = a5;
  v565 = a4;
  v564 = a3;
  v563.i64[0] = a2;
  v516 = a1;
  v6 = *v5;
  v7 = *(*v5 + 77);
  v8 = *(*v5 + 79);
  v521 = type metadata accessor for JobLockRule(0, v7, v8, a4);
  v515 = *(v521 - 8);
  MEMORY[0x1EEE9AC00](v521);
  v520 = v474 - v9;
  v527 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v527);
  v481 = v474 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v483 = *(v11 - 8);
  v484 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v486 = v474 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SnapshotItem(255, v7, v8, v13);
  v15 = sub_1CF9E75D8();
  v492 = *(v15 - 8);
  v493 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v503 = v474 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v505 = v474 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v488 = v474 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v494 = v474 - v22;
  v502 = v14;
  v501 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v487 = v474 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v490 = v474 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v485 = v474 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v482 = v474 - v30;
  v561 = v6;
  v640 = v5;
  v31 = *(v6 + 78);
  v32 = *(v6 + 76);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v518 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v498 = v474 - v34;
  v35 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v504 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v500 = v474 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v511 = v474 - v38;
  v508 = v35;
  v513 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v489 = v474 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v495 = v474 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v499 = v474 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v507 = v474 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v514 = v474 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v519 = v474 - v50;
  v51 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v558 = v51;
  v538 = type metadata accessor for ItemState(0, v51, AssociatedConformanceWitness, v53);
  v537 = *(v538 - 1);
  MEMORY[0x1EEE9AC00](v538);
  v536 = v474 - v54;
  v567 = v8;
  v55 = swift_getAssociatedTypeWitness();
  v568 = v55;
  v56 = swift_getAssociatedConformanceWitness();
  v58 = type metadata accessor for ItemState(255, v55, v56, v57);
  v59 = sub_1CF9E75D8();
  v522 = *(v59 - 8);
  v523 = v59;
  MEMORY[0x1EEE9AC00](v59);
  v517 = v474 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v535 = v474 - v62;
  v526 = v58;
  v525 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v524 = v474 - v64;
  v65 = swift_getAssociatedTypeWitness();
  v66 = swift_getAssociatedConformanceWitness();
  v67 = swift_getAssociatedConformanceWitness();
  v509 = AssociatedTypeWitness;
  v623.i64[0] = AssociatedTypeWitness;
  v623.i64[1] = v65;
  v497 = v66;
  v624.i64[0] = v66;
  v624.i64[1] = v67;
  v539 = type metadata accessor for FileItemVersion(255, &v623);
  v541 = sub_1CF9E75D8();
  v540 = *(v541 - 8);
  MEMORY[0x1EEE9AC00](v541);
  v496 = v474 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v512 = v474 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v534.i64[0] = v474 - v72;
  v74 = type metadata accessor for SnapshotItem(255, v32, v31, v73);
  v75 = sub_1CF9E75D8();
  v532 = *(v75 - 8);
  v533.i64[0] = v75;
  MEMORY[0x1EEE9AC00](v75);
  v545 = v474 - v76;
  v543 = v74;
  v544 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v542 = v474 - v78;
  v79 = v567;
  v80 = swift_getAssociatedTypeWitness();
  v81 = swift_getAssociatedTypeWitness();
  v82 = swift_getAssociatedConformanceWitness();
  v83 = swift_getAssociatedConformanceWitness();
  v623.i64[0] = v80;
  v623.i64[1] = v81;
  v624.i64[0] = v82;
  v624.i64[1] = v83;
  v84 = type metadata accessor for FileItemVersion(255, &v623);
  v550 = sub_1CF9E75D8();
  v549 = *(v550 - 8);
  MEMORY[0x1EEE9AC00](v550);
  v531 = v474 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v86);
  v547 = v474 - v87;
  v551 = v84;
  v552 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v546 = v474 - v89;
  v90 = v568;
  v556 = sub_1CF9E75D8();
  v555 = *(v556 - 8);
  MEMORY[0x1EEE9AC00](v556);
  v506 = v474 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v530 = v474 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v554 = (v474 - v95);
  v557 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v491 = v474 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v98);
  v100 = v474 - v99;
  v528 = v32;
  v529 = v31;
  v101.i64[0] = v32;
  v548 = v7;
  v101.i64[1] = v7;
  v102.i64[0] = v31;
  v102.i64[1] = v79;
  v559 = v102;
  v560 = v101;
  v624 = v102;
  v623 = v101;
  v103 = type metadata accessor for ItemReconciliation(255, &v623);
  v104 = sub_1CF9E75D8();
  v553 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v106 = v474 - v105;
  v107 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v110 = v474 - v109;
  v111 = *(v563.i64[0] + 16);
  v112 = *(v561 + 72);
  v113 = v562.i64[0];
  result = sub_1CF68E230(&v112[v640], v564, v565, v566, v106);
  if (!v113)
  {
    v477 = v111;
    v478 = v104;
    v561 = v112;
    v479 = v100;
    v480 = v110;
    v562.i64[0] = 0;
    if ((*(v107 + 48))(v106, 1, v103) == 1)
    {
      (*(v553 + 8))(v106, v478);
      v624 = v559;
      v623 = v560;
      type metadata accessor for Propagation.PropagationError(0, &v623);
      swift_getWitnessTable();
      v115 = swift_allocError();
      v117 = v116;
      v118 = v558;
      v119 = (v116 + *(swift_getTupleTypeMetadata2() + 48));
      v120 = v640;
      (*(*(v118 - 1) + 16))(v117, &v561[v640], v118);
      strcpy(v119, "no source item");
      v119[15] = -18;
      swift_storeEnumTagMultiPayload();
      v121 = *(*v120 + 89);
      v122 = *(v120 + v121);
      *(v120 + v121) = v115;
LABEL_9:

      return 0;
    }

    v123 = v480;
    (*(v107 + 32))(v480, v106, v103);
    v124 = *(v103 + 52);
    v553 = v103;
    v125 = &v123[v124];
    v126 = v555;
    v127 = v554;
    v128 = &v123[v124];
    v129 = v556;
    (*(v555 + 16))(v554, v128, v556);
    v130 = v557;
    v131 = v557 + 48;
    v132 = v568;
    v478 = *(v557 + 48);
    if (v478(v127, 1, v568) == 1)
    {
      (*(v126 + 8))(v127, v129);
      v624 = v559;
      v623 = v560;
      type metadata accessor for Propagation.PropagationError(0, &v623);
      v133 = v107;
      swift_getWitnessTable();
      v134 = swift_allocError();
      v136 = v135;
      v137 = v558;
      v138 = (v135 + *(swift_getTupleTypeMetadata2() + 48));
      v139 = v640;
      (*(*(v137 - 1) + 16))(v136, &v561[v640], v137);
      *v138 = 0xD000000000000010;
      v138[1] = 0x80000001CFA54A70;
      swift_storeEnumTagMultiPayload();
      (*(v133 + 8))(v480, v553);
      v140 = *(*v139 + 89);
      v122 = *(v139 + v140);
      *(v139 + v140) = v134;
      goto LABEL_9;
    }

    v475 = *(v130 + 32);
    v476 = v107;
    v475(v479, v127, v132);
    v554 = type metadata accessor for ItemReconciliationHalf(0, v548, v567, v141);
    v142 = v554[12];
    v143 = v549;
    v144 = *(v549 + 16);
    v567 = v125;
    v145 = v125 + v142;
    v146 = v547;
    v147 = v550;
    v144(v547, v145, v550);
    v148 = v551;
    if ((*(v552 + 48))(v146, 1, v551) == 1)
    {
      (*(v143 + 8))(v146, v147);
      v624 = v559;
      v623 = v560;
      type metadata accessor for Propagation.PropagationError(0, &v623);
      swift_getWitnessTable();
      v149 = swift_allocError();
      v150 = v132;
      v152 = v151;
      v153 = v558;
      v154 = (v151 + *(swift_getTupleTypeMetadata2() + 48));
      v155 = v640;
      (*(*(v153 - 1) + 16))(v152, &v561[v640], v153);
      *v154 = 0xD000000000000015;
      v154[1] = 0x80000001CFA54D30;
      swift_storeEnumTagMultiPayload();
      (*(v130 + 8))(v479, v150);
LABEL_8:
      (*(v476 + 8))(v480, v553);
      v156 = *(*v155 + 89);
      v122 = *(v155 + v156);
      *(v155 + v156) = v149;
      goto LABEL_9;
    }

    v474[1] = v130 + 32;
    v548 = v131;
    v157 = v552;
    v158 = v546;
    (*(v552 + 32))(v546, v146, v148);
    v159 = *(v563.i64[0] + 40);
    v160 = v640;
    v161 = v561;
    v162 = v545;
    v163 = v562.i64[0];
    (*(*v159 + 248))(&v561[v640], *(v160 + *(*v160 + 80)), v564, v565, v566);
    v562.i64[0] = v163;
    if (v163)
    {
      (*(v157 + 8))(v158, v148);
LABEL_13:
      (*(v557 + 8))(v479, v568);
      return (*(v476 + 8))(v480, v553);
    }

    v164 = v544;
    v165 = v543;
    v166 = (*(v544 + 48))(v162, 1, v543);
    v167 = v557;
    if (v166 == 1)
    {
      (*(v532 + 8))(v162, v533.i64[0]);
      v624 = v559;
      v623 = v560;
      type metadata accessor for Propagation.PropagationError(0, &v623);
      v168 = v161;
      swift_getWitnessTable();
      v149 = swift_allocError();
      v155 = v160;
      v170 = v169;
      v171 = v558;
      v172 = (v169 + *(swift_getTupleTypeMetadata2() + 48));
      (*(*(v171 - 1) + 16))(v170, &v168[v155], v171);
      *v172 = 0xD000000000000025;
      v172[1] = 0x80000001CFA54D50;
      swift_storeEnumTagMultiPayload();
      (*(v552 + 8))(v546, v551);
      (*(v167 + 8))(v479, v568);
      goto LABEL_8;
    }

    v173 = v542;
    (*(v164 + 32))(v542, v162, v165);
    v174 = *(v167 + 16);
    v175 = v530;
    v176 = v568;
    v561 = (v167 + 16);
    v558 = v174;
    (v174)(v530, v479, v568);
    (*(v167 + 56))(v175, 0, 1, v176);
    v177 = v160;
    v178 = v173;
    v179 = *(*v177 + 82);
    swift_beginAccess();
    (*(v555 + 40))(v177 + v179, v175, v556);
    swift_endAccess();
    v180 = v552;
    v181 = v531;
    v182 = v551;
    (*(v552 + 16))(v531, v546, v551);
    (*(v180 + 56))(v181, 0, 1, v182);
    v183 = *(*v177 + 86);
    swift_beginAccess();
    (*(v549 + 40))(v177 + v183, v181, v550);
    swift_endAccess();
    v549 = v159;
    if (sub_1CF056558() && (v178[*(v165 + 48) + v527[20]] & 1) != 0)
    {
      v185 = xmmword_1CF9FEC40;
      v186 = 0uLL;
      v187 = 0uLL;
      v188 = 0uLL;
    }

    else
    {
      v189 = type metadata accessor for ItemReconciliationHalf(0, v528, v529, v184);
      v190 = &v480[*(v189 + 68)];
      v191 = v190[1];
      v623 = *v190;
      v624 = v191;
      v192 = v190[3];
      v625 = v190[2];
      v626 = v192;
      sub_1CEFCCBDC(&v623, &v607, &unk_1EC4BF260, &unk_1CFA01B60);
      v186 = v623;
      v185 = v624;
      v187 = v625;
      v188 = v626;
    }

    v193 = v539;
    v194 = v534.i64[0];
    v195 = (v177 + *(*v177 + 85));
    v196 = v195[1];
    v639[0] = *v195;
    v639[1] = v196;
    v197 = v195[3];
    v639[2] = v195[2];
    v639[3] = v197;
    *v195 = v186;
    v195[1] = v185;
    v195[2] = v187;
    v195[3] = v188;
    sub_1CEFCCC44(v639, &unk_1EC4BF260, &unk_1CFA01B60);
    v198 = *(v193 - 8);
    v199 = *(v198 + 16);
    v550 = *(v165 + 40);
    v199(v194, &v178[v550], v193);
    (*(v198 + 56))(v194, 0, 1, v193);
    v200 = *(*v177 + 83);
    swift_beginAccess();
    (*(v540 + 40))(v177 + v200, v194, v541);
    swift_endAccess();
    v201 = *(*v177 + 87);
    v201[v177] = 0;
    v202 = *(*v177 + 88);
    v202[v177] = 0;
    WitnessTable = swift_getWitnessTable();
    v204 = v536;
    sub_1CF937E0C(v165, WitnessTable, v536);
    v205 = v535;
    v206 = v562.i64[0];
    sub_1CF69AAA8(v204, v564, v565, v566, v535);
    v562.i64[0] = v206;
    if (v206)
    {
      (*(v537 + 1))(v204, v538);
      (*(v544 + 8))(v178, v165);
      (*(v552 + 8))(v546, v551);
      goto LABEL_13;
    }

    v545 = v201;
    v547 = v202;
    (*(v537 + 1))(v204, v538);
    v208 = v525;
    v207 = v526;
    if ((*(v525 + 48))(v205, 1, v526) == 1)
    {
      (*(v522 + 8))(v205, v523);
      v624 = v559;
      v623 = v560;
      v209 = type metadata accessor for Propagation.PropagationError(0, &v623);
      swift_getWitnessTable();
      v210 = swift_allocError();
      v212 = v211;
      v213 = v640;
      v214 = v562.i64[0];
      v215 = sub_1CF66E6E4(v640, v564, v565, v566);
      v562.i64[0] = v214;
      v216 = v552;
      if (v214)
      {
        (*(v544 + 8))(v542, v543);
        (*(v216 + 8))(v546, v551);
        (*(v557 + 8))(v479, v568);
        (*(v476 + 8))(v480, v553);
        return MEMORY[0x1D386CA40](v210, v209);
      }

      *v212 = v215;
      swift_storeEnumTagMultiPayload();
      (*(v544 + 8))(v542, v543);
      (*(v216 + 8))(v546, v551);
      (*(v557 + 8))(v479, v568);
      (*(v476 + 8))(v480, v553);
      v254 = *(*v213 + 89);
      v122 = *(v213 + v254);
      *(v213 + v254) = v210;
      goto LABEL_9;
    }

    v217 = v524;
    (*(v208 + 32))(v524, v205, v207);
    v538 = *(v563.i64[0] + 32);
    v218 = sub_1CF056558();
    v220 = &v217[*(v207 + 40)];
    v221 = v552;
    if (!v218)
    {
      v220[v527[20]] = 0;
      v223 = v640;
      v224 = v543;
      v226 = v520;
      v225 = v521;
      goto LABEL_30;
    }

    if (*v220 == 2)
    {
      v222 = 0;
    }

    else
    {
      v260 = type metadata accessor for ItemReconciliationHalf(0, v528, v529, v219);
      v222 = (v480[*(v260 + 52)] & 0xFB) == 0;
    }

    v261 = v562.i64[0];
    v263 = v518;
    v262 = v519;
    v264 = v198;
    v265 = v550;
    v266 = v527[20];
    v220[v266] = v222;
    v267 = *(v640 + *(*v640 + 648));
    v537 = v220;
    v536 = v267;
    if ((v267 & 0x10) == 0)
    {
      v223 = v640;
LABEL_41:
      v224 = v543;
      v226 = v520;
      v268 = v527;
      v269 = v563.i64[0];
      v270 = v567;
LABEL_65:
      v341 = v568;
      if (v220[v266])
      {
        v225 = v521;
        goto LABEL_67;
      }

      if ((v267 & 0x10010) != 0)
      {
        v342 = v542;
        (*(*v549 + 264))(&v623, v542, v564, v565, v566);
        if (v261)
        {
          (*(v525 + 8))(v524, v526);
          (*(v544 + 8))(v342, v224);
          (*(v552 + 8))(v546, v551);
          (*(v557 + 8))(v479, v341);
          return (*(v476 + 8))(v480, v553);
        }

        v603 = v635;
        v604 = v636;
        v605 = v637;
        v599 = v631;
        v600 = v632;
        v601 = v633;
        v602 = v634;
        v595 = v627;
        v596 = v628;
        v597 = v629;
        v598 = v630;
        v591 = v623;
        v592 = v624;
        v593 = v625;
        v594 = v626;
        v619 = v635;
        v620 = v636;
        v621 = v637;
        v615 = v631;
        v616 = v632;
        v617 = v633;
        v618 = v634;
        v611 = v627;
        v612 = v628;
        v613 = v629;
        v614 = v630;
        v607 = v623;
        v608 = v624;
        v606 = v638;
        v622 = v638;
        v609 = v625;
        v610 = v626;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v607) == 1)
        {
          v350 = 6;
          v351 = 1;
        }

        else
        {
          v358 = (*(*v269 + 600))();
          v582 = v620;
          v583 = v621;
          v584 = v622;
          v577 = v615;
          v578 = v616;
          v579 = v617;
          v580 = v618;
          v581 = v619;
          v573 = v611;
          v574 = v612;
          v575 = v613;
          v576 = v614;
          v569 = v607;
          v570 = v608;
          v571 = v609;
          v572 = v610;
          sub_1CF0259D8(v358, v537, v586.i8);
          sub_1CEFCCC44(&v591, &qword_1EC4BECF0, &unk_1CF9FEEB0);
          v350 = v586.i8[0];
          v351 = v586.u8[0] == 6;
          if (v586.u8[0] == 5)
          {
LABEL_114:
            v360 = v527[21];
            v361 = 5;
LABEL_134:
            v537[v360] = v361;
            goto LABEL_135;
          }
        }

        v359 = (*(*v538 + 320))(v479, 0, v564, v565, v566);
        if (v359 != 2 && (v359 & 1) != 0)
        {
          goto LABEL_114;
        }

        v403 = *(v640 + 136);
        if ((v403 & 0x4400000000) != 0)
        {
          v360 = v527[21];
          v361 = 3;
          goto LABEL_134;
        }

        if ((v403 & 0x200000000000) == 0 || (v442 = (v567 + v554[17]), v443 = v442[1], v569 = *v442, v570 = v443, v444 = v442[3], v571 = v442[2], v572 = v444, v443.i64[1] >> 60 == 11))
        {
          if (!v351)
          {
            v537[v527[21]] = v350;
          }

          goto LABEL_135;
        }

        v586 = *v442;
        v587 = v442[1].i64[0];
        v588 = v570.i64[1];
        v445 = v442[3];
        v589 = v442[2];
        v590 = v445;
        sub_1CEFCCBDC(&v569, &v585, &unk_1EC4BF260, &unk_1CFA01B60);

        v469 = sub_1CF9BF41C(&v586);

        sub_1CEFCCC44(&v569, &unk_1EC4BF260, &unk_1CFA01B60);
        if (v469 <= 1023)
        {
          if (!v469)
          {
            v470 = 0;
            goto LABEL_216;
          }

          if (v469 == 512)
          {
            v470 = 2;
            goto LABEL_216;
          }
        }

        else
        {
          switch(v469)
          {
            case 0x400:
              v470 = 3;
              goto LABEL_216;
            case 0x800:
              v470 = 4;
              goto LABEL_216;
            case 0x8000:
              v470 = 5;
LABEL_216:
              v537[v527[21]] = v470;
LABEL_135:
              if ((v536 & 0x10) != 0)
              {
                v406 = *(v563.i64[0] + 24);
                v562 = vextq_s8(v559, v559, 8uLL);
                v563 = vextq_s8(v560, v560, 8uLL);
                v569 = v563;
                v570 = v562;
                type metadata accessor for ItemJob(255, &v569);
                MetatypeMetadata = swift_getMetatypeMetadata();
                sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
                swift_allocObject();
                v408 = sub_1CF9E6D68();
                v569 = v563;
                v570 = v562;
                *v409 = type metadata accessor for Materialization.MaterializeItem(0, &v569);
                v410 = sub_1CF045898(v408, MetatypeMetadata);
                v420 = (*(*v406 + 312))(v479, v410, v564, v565, v566);
                v410, v421, v422, v423, v424, v425, v426, v427;
                v569.i64[0] = v420;
                sub_1CF9E6E58();
                swift_getWitnessTable();
                sub_1CF9E7118();
                v428 = v586.i64[0];
                v420, v429, v430, v431, v432, v433, v434, v435;
                if (v428)
                {
                  v436 = *(v428 + 112);
                  if (v436 != 3 && (v436 != 4 || *(v428 + 96) & 0xFFFFFFFFFFFFFFFELL | *(v428 + 104)) && (v437 = *(v428 + 136), (v437 & 0x800000) != 0))
                  {
                    v459 = v527[21];
                    v460 = v537[v459];
                    if (v460 == 1)
                    {
                      LOBYTE(v460) = 4;
                    }

                    else if (v537[v459] && v460 <= 4)
                    {
                      LOBYTE(v460) = 4;
                    }

                    v537[v459] = v460;
                    v472 = *(*(v538[2] + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 26);

                    if (v472)
                    {
                      if (v437)
                      {
                        v473 = 5;
                      }

                      else
                      {
                        v473 = 6;
                      }

                      v537[v527[23]] = v473;
                    }
                  }

                  else
                  {
                  }
                }
              }

              if (v537[v527[21]])
              {
                v404 = *(v640 + 136);
                if (v404)
                {
                  if ((v404 & 0x10000800000) != 0)
                  {
                    v405 = 5;
                  }

                  else if ((v404 & 0x4400000000) != 0)
                  {
                    v405 = 0;
                  }

                  else if ((v404 & 0x200001000000) == 0x1000000)
                  {
                    v405 = 3;
                  }

                  else
                  {
                    v405 = 1;
                  }
                }

                else
                {
                  v405 = 4;
                }

                if (*(*(v538[2] + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 26) == 1)
                {
                  v261 = 0;
                  (*(*v538 + 240))(v479, 1, v564, v565, v566);
                  if ((*(v501 + 48))(v488, 1, v502) == 1)
                  {
                    (*(v492 + 8))(v488, v493);
                  }

                  else
                  {
                    v461 = v502;
                    v462 = v485;
                    (*(v501 + 32))(v485, v488, v502);
                    v463 = &v462[*(v461 + 48)];
                    if (v463[v527[21]])
                    {
                      v464 = v463[v527[23]];
                      if (v464 != 6)
                      {
                        v569.i8[0] = v464;
                        v586.i8[0] = v405;
                        ResidencyReason.convert(to:)(&v586);
                        (*(v501 + 8))(v485, v502);
                        v471 = v527;
                        v220 = v537;
                        v537[v527[23]] = v569.i8[0];
                        v268 = v471;
                        goto LABEL_191;
                      }
                    }

                    (*(v501 + 8))(v485, v502);
                  }
                }

                v465 = v527;
                v220 = v537;
                v537[v527[23]] = v405;
                v261 = 0;
                v268 = v465;
LABEL_191:
                v223 = v640;
                v226 = v520;
                v225 = v521;
                v224 = v543;
                v270 = v567;
                goto LABEL_192;
              }

              v261 = 0;
LABEL_142:
              v223 = v640;
              v226 = v520;
              v225 = v521;
              v224 = v543;
              v268 = v527;
              v270 = v567;
              v220 = v537;
LABEL_192:
              v267 = v536;
LABEL_67:
              if ((*(v270 + v554[9]) & 0x10) != 0)
              {
                v220[v268[21]] = 0;
                if ((v267 & 0x100000000000) != 0)
                {
                  if (v480[*(v553 + 56)] == 1)
                  {
                    v220[v268[15]] = 1;
                  }

                  goto LABEL_79;
                }
              }

              else if ((v267 & 0x100000000000) != 0)
              {
LABEL_79:
                if (v480[*(v553 + 56)] == 1)
                {
                  v346 = v268;
                  v347 = v268[15];
                  if (v220[v347])
                  {
                    v348 = v261;
                    v268 = v346;
                  }

                  else
                  {
                    (*(*v538 + 240))(v479, 1, v564, v565, v566);
                    v348 = v261;
                    if (v261)
                    {
                      (*(v525 + 8))(v524, v526);
                      (*(v544 + 8))(v542, v543);
LABEL_101:
                      (*(v552 + 8))(v546, v551);
                      (*(v557 + 8))(v479, v568);
                      return (*(v476 + 8))(v480, v553);
                    }

                    if ((*(v501 + 48))(v503, 1, v502) == 1)
                    {
                      (*(v492 + 8))(v503, v493);
                      v268 = v527;
                    }

                    else
                    {
                      v412 = v501;
                      v411 = v502;
                      v413 = v487;
                      (*(v501 + 32))(v487, v503, v502);
                      v414 = v413[*(v411 + 48) + v527[18]];
                      (*(v412 + 8))(v413, v411);
                      if (v414 == 1)
                      {
                        v415 = v527;
                        v416 = v537;
                        v537[v527[18]] = 1;
                        v416[v347] = 1;
                        v268 = v415;
                      }

                      else
                      {
                        v268 = v527;
                      }
                    }
                  }
                }

                else
                {
                  v348 = v261;
                }

                if (fpfs_supports_pkg_dataless_escape_prevention() && (v349 = v268[15], (v537[v349] & 1) == 0))
                {
                  if (v537[v268[28]] == 1)
                  {
                    v537[v349] = 1;
                  }

                  v261 = v348;
                  v223 = v640;
                  v226 = v520;
                  v225 = v521;
                  v224 = v543;
                  v268 = v527;
                }

                else
                {
                  v261 = v348;
                  v223 = v640;
                  v226 = v520;
                  v225 = v521;
                  v224 = v543;
                }

                v344 = v536;
LABEL_96:
                v353 = v537;
                if ((*&v344 & 0x10010) != 0)
                {
                  v354 = v268[21];
                  if (v537[v354])
                  {
                    v355 = type metadata accessor for ItemReconciliationHalf(0, v528, v529, v343);
                    if ((v480[*(v355 + 36)] & 0x10) != 0)
                    {
                      v344 = v536;
                    }

                    else
                    {
                      v356 = (*(*v538 + 488))(v479, v564, v565, v566);
                      if (v261)
                      {
                        (*(v525 + 8))(v524, v526);
                        (*(v544 + 8))(v542, v224);
                        goto LABEL_101;
                      }

                      v261 = 0;
                      v223 = v640;
                      v226 = v520;
                      v225 = v521;
                      v268 = v527;
                      v353 = v537;
                      v344 = v536;
                      if ((v356 & 1) == 0)
                      {
                        goto LABEL_104;
                      }
                    }

                    v353[v354] = 0;
                  }
                }

LABEL_104:
                if ((v344 & 0x10000) != 0)
                {
                  v227 = v524;
                  if (v353[v268[21]])
                  {
                    v357 = (*(*v538 + 544))(v524, v564, v565, v566);
                    v562.i64[0] = v261;
                    if (v261)
                    {
                      (*(v525 + 8))(v227, v526);
                      (*(v544 + 8))(v542, v224);
                      (*(v552 + 8))(v546, v551);
                      goto LABEL_13;
                    }

                    *&v537[v268[19]] = v357;
                  }

                  else
                  {
                    v562.i64[0] = v261;
                  }

LABEL_31:
                  v228 = v517;
                  v230 = v525;
                  v229 = v526;
                  (*(v525 + 16))(v517, v227, v526);
                  (*(v230 + 56))(v228, 0, 1, v229);
                  v231 = *(*v223 + 84);
                  swift_beginAccess();
                  (*(v522 + 40))(v223 + v231, v228, v523);
                  swift_endAccess();
                  v232 = *(v223 + *(*v223 + 81));
                  if (v232 == 16)
                  {
                    if ((v223[17] & 2) != 0)
                    {
                      swift_beginAccess();
                      sub_1CEFCCBDC((v223 + 7), &v623, &unk_1EC4C1BE0, &unk_1CF9FD400);
                      v640 = v223[15];
                      sub_1CF9E7FA8();
                      v233 = *(v515 + 72);
                      swift_allocObject();
                      v567 = sub_1CF9E6D68();
                      v235 = v234;
                      v236 = v479;
                      v237 = v568;
                      v238 = v558;
                      (v558)(v234, v479, v568);
                      swift_storeEnumTagMultiPayload();
                      v239 = v235 + v233;
                      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
                      v241 = *(TupleTypeMetadata3 + 48);
                      v242 = *(TupleTypeMetadata3 + 64);
                      v238(v239, v236, v237);
                      v238(v239 + v241, v227, v237);
                      v238(v239 + v242, v227, v237);
                      v243 = v521;
                      swift_storeEnumTagMultiPayload();
                      v244 = sub_1CF045898(v567, v243);
                      v246 = sub_1CF052C94(&v623, v640, v244, v245);
                      v244, v247, v248, v249, v250, v251, v252, v253;
                      sub_1CEFCCC44(&v623, &unk_1EC4C1BE0, &unk_1CF9FD400);
                      (*(v525 + 8))(v227, v526);
                      (*(v544 + 8))(v542, v543);
                      (*(v552 + 8))(v546, v551);
                      (*(v557 + 8))(v236, v237);
                      (*(v476 + 8))(v480, v553);
                      return v246;
                    }

                    goto LABEL_46;
                  }

                  if ((v232 & 8) != 0 && v227[*(v526 + 40)] == 2)
                  {
                    swift_beginAccess();
                    sub_1CEFCCBDC((v223 + 7), &v623, &unk_1EC4C1BE0, &unk_1CF9FD400);
                    v255 = v223[15];
                    v256 = v224;
                    v257 = v568;
                    (v558)(v226, v227, v568);
                    swift_storeEnumTagMultiPayload();
                    v259 = sub_1CF052B3C(&v623, v255, v226, v258);
                    (*(v515 + 8))(v226, v225);
                    sub_1CEFCCC44(&v623, &unk_1EC4C1BE0, &unk_1CF9FD400);
                    (*(v525 + 8))(v227, v526);
                    (*(v544 + 8))(v542, v256);
                    (*(v552 + 8))(v546, v551);
                    (*(v557 + 8))(v479, v257);
                  }

                  else
                  {
                    if ((v232 & 2) == 0)
                    {
LABEL_46:
                      swift_beginAccess();
                      sub_1CEFCCBDC((v223 + 7), &v623, &unk_1EC4C1BE0, &unk_1CF9FD400);
                      v640 = v223[15];
                      v272 = v568;
                      v273 = swift_getTupleTypeMetadata3();
                      v274 = *(v273 + 48);
                      v275 = *(v273 + 64);
                      v276 = v226;
                      v277 = v226;
                      v278 = v552;
                      v279 = v558;
                      (v558)(v277, v479, v272);
                      v279(v276 + v274, v227, v272);
                      v279(v276 + v275, v227, v272);
                      v280 = v521;
                      swift_storeEnumTagMultiPayload();
                      v259 = sub_1CF052B3C(&v623, v640, v276, v281);
                      (*(v515 + 8))(v276, v280);
                      sub_1CEFCCC44(&v623, &unk_1EC4C1BE0, &unk_1CF9FD400);
                      (*(v525 + 8))(v227, v526);
                      (*(v544 + 8))(v542, v543);
                      (*(v278 + 8))(v546, v551);
                      (*(v557 + 8))(v479, v272);
                      goto LABEL_47;
                    }

                    v295 = v506;
                    v296 = v479;
                    v297 = v562.i64[0];
                    (*(*v538 + 288))(v479, v564, v565, v566);
                    v562.i64[0] = v297;
                    if (v297)
                    {
                      (*(v525 + 8))(v227, v526);
                      (*(v544 + 8))(v542, v224);
                      (*(v552 + 8))(v546, v551);
                      (*(v557 + 8))(v296, v568);
                      return (*(v476 + 8))(v480, v553);
                    }

                    if (v478(v295, 1, v568) != 1)
                    {
                      v390 = v491;
                      v391 = v568;
                      v475(v491, v506, v568);
                      v392 = v640;
                      swift_beginAccess();
                      sub_1CEFCCBDC((v392 + 7), &v623, &unk_1EC4C1BE0, &unk_1CF9FD400);
                      v393 = v392[15];
                      v394 = swift_getTupleTypeMetadata3();
                      v395 = *(v394 + 48);
                      v396 = *(v394 + 64);
                      v397 = v520;
                      v398 = v558;
                      (v558)(v520, v479, v391);
                      v398(v397 + v395, v390, v391);
                      v399 = v524;
                      v398(v397 + v396, v524, v391);
                      v400 = v521;
                      swift_storeEnumTagMultiPayload();
                      v640 = sub_1CF052B3C(&v623, v393, v397, v401);
                      (*(v515 + 8))(v397, v400);
                      sub_1CEFCCC44(&v623, &unk_1EC4C1BE0, &unk_1CF9FD400);
                      v402 = *(v557 + 8);
                      v402(v390, v391);
                      (*(v525 + 8))(v399, v526);
                      (*(v544 + 8))(v542, v543);
                      (*(v552 + 8))(v546, v551);
                      v402(v479, v391);
                      (*(v476 + 8))(v480, v553);
                      return v640;
                    }

                    (*(v555 + 8))(v506, v556);
                    v324 = v640;
                    swift_beginAccess();
                    sub_1CEFCCBDC((v324 + 7), &v623, &unk_1EC4C1BE0, &unk_1CF9FD400);
                    v640 = v324[15];
                    v325 = v568;
                    v326 = swift_getTupleTypeMetadata3();
                    v327 = *(v326 + 48);
                    v328 = *(v326 + 64);
                    v329 = v520;
                    v330 = v479;
                    v331 = v558;
                    (v558)(v520, v479, v325);
                    v332 = v524;
                    v331(v329 + v327, v524, v325);
                    v331(v329 + v328, v332, v325);
                    v333 = v521;
                    swift_storeEnumTagMultiPayload();
                    v259 = sub_1CF052B3C(&v623, v640, v329, v334);
                    (*(v515 + 8))(v329, v333);
                    sub_1CEFCCC44(&v623, &unk_1EC4C1BE0, &unk_1CF9FD400);
                    (*(v525 + 8))(v332, v526);
                    (*(v544 + 8))(v542, v543);
                    (*(v552 + 8))(v546, v551);
                    (*(v557 + 8))(v330, v325);
                  }

LABEL_47:
                  (*(v476 + 8))(v480, v553);
                  return v259;
                }

                v562.i64[0] = v261;
LABEL_30:
                v227 = v524;
                goto LABEL_31;
              }

              fpfs_supports_pkg_dataless_escape_prevention();
              v344 = v536;
              goto LABEL_96;
          }
        }

        v470 = 1;
        goto LABEL_216;
      }

      v562.i64[0] = v261;
      v220[v268[21]] = 1;
      v345 = (*(*v269 + 600))();
      v267 = v536;
      if ((v536 & 8) == 0)
      {
        v261 = v562.i64[0];
        v270 = v567;
        v220 = v537;
        v225 = v521;
        goto LABEL_67;
      }

      v352 = v345;
      v261 = v562.i64[0];
      (*(*v538 + 240))(v479, 1, v564, v565, v566);
      if (!v261)
      {
        if ((*(v501 + 48))(v505, 1, v502) == 1)
        {
          (*(v492 + 8))(v505, v493);
        }

        else
        {
          (*(v501 + 32))(v490, v505, v502);
          (*(*v549 + 264))(&v623, v542, v564, v565, v566);
          v603 = v635;
          v604 = v636;
          v605 = v637;
          v599 = v631;
          v600 = v632;
          v601 = v633;
          v602 = v634;
          v595 = v627;
          v596 = v628;
          v597 = v629;
          v598 = v630;
          v591 = v623;
          v592 = v624;
          v593 = v625;
          v594 = v626;
          v619 = v635;
          v620 = v636;
          v621 = v637;
          v615 = v631;
          v616 = v632;
          v617 = v633;
          v618 = v634;
          v611 = v627;
          v612 = v628;
          v613 = v629;
          v614 = v630;
          v607 = v623;
          v608 = v624;
          v606 = v638;
          v622 = v638;
          v609 = v625;
          v610 = v626;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v607) != 1)
          {
            v457 = sub_1CEFF8538(v620, *(&v620 + 1), 0, v352, 0, 1u);
            sub_1CEFCCC44(&v591, &qword_1EC4BECF0, &unk_1CF9FEEB0);
            if (v457 == 3)
            {
              (*(v501 + 8))(v490, v502);
              v458 = 3;
            }

            else
            {
              v466 = v502;
              v467 = v490;
              v468 = v481;
              sub_1CEFF4408(&v490[*(v502 + 48)], v481);
              (*(v501 + 8))(v467, v466);
              LODWORD(v466) = *(v468 + v527[11]);
              sub_1CF06DA00(v468);
              if (v466)
              {
                v458 = 5;
              }

              else
              {
                v458 = 1;
              }
            }

            v268 = v527;
            v220 = v537;
            v537[v527[23]] = v458;
            goto LABEL_191;
          }

          (*(v501 + 8))(v490, v502);
        }

        goto LABEL_142;
      }

LABEL_131:
      (*(v525 + 8))(v524, v526);
      (*(v544 + 8))(v542, v543);
      (*(v552 + 8))(v546, v551);
      (*(v557 + 8))(v479, v568);
      return (*(v476 + 8))(v480, v553);
    }

    v271 = *(v640 + 136);
    if ((v271 & 1) == 0)
    {
      if ((v271 & 2) == 0)
      {
        v223 = v640;
        goto LABEL_41;
      }

      v535 = v266;
      v220[v266] = 1;
      v298 = *(v563.i64[0] + 24);
      v533 = vextq_s8(v559, v559, 8uLL);
      v534 = vextq_s8(v560, v560, 8uLL);
      v624 = v533;
      v623 = v534;
      type metadata accessor for ItemJob(255, &v623);
      v299 = swift_getMetatypeMetadata();
      sub_1CF656CD8(v299, v299);
      swift_allocObject();
      v300 = sub_1CF9E6D68();
      v532 = v301;
      v624 = v533;
      v623 = v534;
      v302 = type metadata accessor for Materialization.EvictItem(0, &v623);
      *v532 = v302;
      v303 = sub_1CF045898(v300, v299);
      v304 = v562.i64[0];
      v305 = (*(*v298 + 312))(v479);
      v562.i64[0] = v304;
      if (v304)
      {
        v303, v306, v307, v308, v309, v310, v311, v312;
        (*(v208 + 8))(v524, v207);
        (*(v544 + 8))(v542, v543);
        (*(v221 + 8))(v546, v551);
        goto LABEL_13;
      }

      v362 = v305;
      v303, v306, v307, v308, v309, v310, v311, v312;
      v623.i64[0] = v362;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      v363 = sub_1CF9E7128();
      v362, v364, v365, v366, v367, v368, v369, v370;
      if ((v363 & 1) == 0)
      {
        v545[v640] = 1;
      }

      if ((*(v640 + 141) & 0x10) != 0)
      {
        v261 = v562.i64[0];
        (*(*v538 + 240))(v479, 1, v564, v565, v566);
        if (v261)
        {
          goto LABEL_131;
        }

        if ((*(v501 + 48))(v494, 1, v502) != 1)
        {
          v455 = v501;
          v454 = v502;
          v456 = v482;
          (*(v501 + 32))(v482, v494, v502);
          v623.i64[0] = 8;
          v220 = v537;
          sub_1CF677700(v623.i64, &v456[*(v454 + 48)]);
          (*(v455 + 8))(v456, v454);
          v223 = v640;
          v224 = v543;
          v226 = v520;
          v268 = v527;
          v269 = v563.i64[0];
          v270 = v567;
          goto LABEL_171;
        }

        (*(v492 + 8))(v494, v493);
        v438 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v439 = sub_1CF9E6108();
        v440 = sub_1CF9E72A8();
        if (os_log_type_enabled(v439, v440))
        {
          v441 = swift_slowAlloc();
          *v441 = 0;
          _os_log_impl(&dword_1CEFC7000, v439, v440, "couldn't force the size on a DLV2 evicted item, missing item in snapshot", v441, 2u);
          MEMORY[0x1D386CDC0](v441, -1, -1);
        }

        (*(v483 + 8))(v486, v484);
        v223 = v640;
LABEL_170:
        v224 = v543;
        v226 = v520;
        v268 = v527;
        v269 = v563.i64[0];
        v270 = v567;
        v220 = v537;
LABEL_171:
        v267 = v536;
        v266 = v535;
        goto LABEL_65;
      }

      v371 = v518;
      v372 = *(v518 + 16);
      v373 = v499;
      v374 = v509;
      v372(v499, &v542[v550], v509);
      v375 = *(v371 + 56);
      v376 = 1;
      v375(v373, 0, 1, v374);
      v378 = type metadata accessor for ItemReconciliationHalf(0, v528, v529, v377);
      v379 = v496;
      (*(v540 + 16))(v496, &v480[*(v378 + 48)], v541);
      if ((*(v198 + 48))(v379, 1, v539) != 1)
      {
        v372(v495, v496, v509);
        v376 = 0;
        v540 = v198;
        v541 = v539;
      }

      (*(v540 + 8))(v496, v541);
      v380 = v495;
      v381 = v509;
      v375(v495, v376, 1, v509);
      v382 = *(TupleTypeMetadata2 + 48);
      v383 = *(v513 + 16);
      v384 = v500;
      v385 = v508;
      v383(v500, v499, v508);
      v383(&v384[v382], v380, v385);
      v386 = *(v518 + 48);
      if (v386(v384, 1, v381) == 1)
      {
        v387 = *(v513 + 8);
        v388 = v508;
        v387(v495, v508);
        v387(v499, v388);
        if (v386(&v500[v382], 1, v509) == 1)
        {
          v387(v500, v508);
          v389 = 0;
LABEL_169:
          v223 = v640;
          v547[v640] = v389 & 1;
          v261 = v562.i64[0];
          goto LABEL_170;
        }
      }

      else
      {
        v417 = v500;
        v383(v489, v500, v508);
        if (v386(&v417[v382], 1, v509) != 1)
        {
          v446 = v518;
          v447 = v498;
          v448 = v509;
          (*(v518 + 32))(v498, &v500[v382], v509);
          v449 = v489;
          v450 = sub_1CF9E6868();
          v451 = *(v446 + 8);
          v451(v447, v448);
          v452 = *(v513 + 8);
          v453 = v508;
          v452(v495, v508);
          v452(v499, v453);
          v451(v449, v448);
          v452(v500, v453);
          v389 = v450 ^ 1;
          goto LABEL_169;
        }

        v418 = *(v513 + 8);
        v419 = v508;
        v418(v495, v508);
        v418(v499, v419);
        (*(v518 + 8))(v489, v509);
      }

      (*(v504 + 8))(v500, TupleTypeMetadata2);
      v389 = 1;
      goto LABEL_169;
    }

    v535 = v266;
    v220[v266] = 0;
    v220[v527[23]] = 6;
    v282 = *(v263 + 16);
    v283 = v262;
    v284 = v509;
    v282(v262, &v542[v265], v509);
    v285 = *(v263 + 56);
    v285(v283, 0, 1, v284);
    v287 = type metadata accessor for ItemReconciliationHalf(0, v528, v529, v286);
    v288 = v512;
    (*(v540 + 16))(v512, &v480[*(v287 + 48)], v541);
    v289 = v539;
    if ((*(v264 + 48))(v288, 1, v539) == 1)
    {
      v290 = v508;
      v291 = TupleTypeMetadata2;
      v292 = v511;
      v293 = v541;
      v264 = v540;
      v294 = 1;
    }

    else
    {
      v282(v514, v288, v284);
      v294 = 0;
      v293 = v289;
      v290 = v508;
      v291 = TupleTypeMetadata2;
      v292 = v511;
    }

    (*(v264 + 8))(v512, v293);
    v313 = v514;
    v285(v514, v294, 1, v284);
    v314 = *(v291 + 48);
    v315 = *(v513 + 16);
    v315(v292, v519, v290);
    v315(&v292[v314], v313, v290);
    v316 = *(v518 + 48);
    if (v316(v292, 1, v284) == 1)
    {
      v317 = v292;
      v318 = *(v513 + 8);
      v318(v514, v290);
      v318(v519, v290);
      v319 = v316(&v292[v314], 1, v284);
      v223 = v640;
      v320 = v543;
      v226 = v520;
      v321 = v290;
      v269 = v563.i64[0];
      if (v319 == 1)
      {
        v318(v292, v321);
        v322 = 0;
LABEL_64:
        v547[v223] = v322 & 1;
        v261 = v562.i64[0];
        v270 = v567;
        v220 = v537;
        v267 = v536;
        v266 = v535;
        v224 = v320;
        v268 = v527;
        goto LABEL_65;
      }
    }

    else
    {
      v315(v507, v292, v290);
      if (v316(&v292[v314], 1, v284) != 1)
      {
        v335 = v518;
        v336 = v498;
        (*(v518 + 32))(v498, &v511[v314], v284);
        v337 = v507;
        v338 = sub_1CF9E6868();
        v339 = *(v335 + 8);
        v339(v336, v284);
        v340 = *(v513 + 8);
        v340(v514, v290);
        v340(v519, v290);
        v339(v337, v284);
        v340(v511, v290);
        v322 = v338 ^ 1;
        v223 = v640;
        v320 = v543;
        v226 = v520;
        v269 = v563.i64[0];
        goto LABEL_64;
      }

      v323 = *(v513 + 8);
      v323(v514, v290);
      v323(v519, v290);
      (*(v518 + 8))(v507, v284);
      v223 = v640;
      v320 = v543;
      v226 = v520;
      v269 = v563.i64[0];
      v317 = v511;
    }

    (*(v504 + 8))(v317, TupleTypeMetadata2);
    v322 = 1;
    goto LABEL_64;
  }

  return result;
}