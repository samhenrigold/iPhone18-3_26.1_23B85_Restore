unint64_t sub_265CFD7C0()
{
  result = qword_28003E8B8;
  if (!qword_28003E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E8B8);
  }

  return result;
}

uint64_t sub_265CFD864(uint64_t a1, uint64_t a2)
{
  v2 = sub_265D58AC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_265D58EB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_265D0ECB4(0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v7 + 104))(v9, *MEMORY[0x277D4E070], v6);
    sub_265D59020();
    sub_265D58C70();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_265CFDAF0(uint64_t a1)
{
  v121 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  MEMORY[0x28223BE20](v2 - 8);
  v126 = v107 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  MEMORY[0x28223BE20](v4 - 8);
  v125 = v107 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  MEMORY[0x28223BE20](v6 - 8);
  v124 = v107 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  MEMORY[0x28223BE20](v8 - 8);
  v123 = v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  MEMORY[0x28223BE20](v10 - 8);
  v122 = v107 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  MEMORY[0x28223BE20](v12 - 8);
  v120 = v107 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  MEMORY[0x28223BE20](v14 - 8);
  v119 = v107 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  MEMORY[0x28223BE20](v16 - 8);
  v118 = v107 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  MEMORY[0x28223BE20](v18 - 8);
  v117 = v107 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  MEMORY[0x28223BE20](v20 - 8);
  v116 = v107 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  MEMORY[0x28223BE20](v22 - 8);
  v144 = v107 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  MEMORY[0x28223BE20](v24 - 8);
  v143 = v107 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  MEMORY[0x28223BE20](v26 - 8);
  v142 = v107 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  MEMORY[0x28223BE20](v28 - 8);
  v141 = v107 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  MEMORY[0x28223BE20](v30 - 8);
  v140 = v107 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  MEMORY[0x28223BE20](v32 - 8);
  v139 = v107 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  MEMORY[0x28223BE20](v34 - 8);
  v138 = v107 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  MEMORY[0x28223BE20](v36 - 8);
  v137 = v107 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  MEMORY[0x28223BE20](v38 - 8);
  v136 = v107 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  MEMORY[0x28223BE20](v40 - 8);
  v135 = v107 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  MEMORY[0x28223BE20](v42 - 8);
  v134 = v107 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  MEMORY[0x28223BE20](v44 - 8);
  v133 = v107 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  MEMORY[0x28223BE20](v46 - 8);
  v132 = v107 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  MEMORY[0x28223BE20](v48 - 8);
  v131 = v107 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  MEMORY[0x28223BE20](v50 - 8);
  v130 = v107 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  MEMORY[0x28223BE20](v52 - 8);
  v129 = v107 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  MEMORY[0x28223BE20](v54 - 8);
  v128 = v107 - v55;
  v115 = sub_265D58130();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = v107 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_265D59DE0();
  v58 = *(v57 - 8);
  v59 = MEMORY[0x28223BE20](v57);
  v61 = v107 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v63 = v107 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  MEMORY[0x28223BE20](v64 - 8);
  v66 = v107 - v65;
  v67 = sub_265D58AC0();
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v70 = v107 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v1;
  sub_265D0389C(v66);
  if ((*(v68 + 48))(v66, 1, v67) == 1)
  {
    sub_265CA4AE8(v66, &qword_28003E708, &unk_265D5CCC0);
    sub_265D595F0();
    v71 = sub_265D59DD0();
    v72 = sub_265D5A080();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_265C01000, v71, v72, "Session system received termination with no active session", v73, 2u);
      MEMORY[0x266770CF0](v73, -1, -1);
    }

    return (*(v58 + 8))(v61, v57);
  }

  else
  {
    v112 = v68;
    v75 = *(v68 + 32);
    v110 = v70;
    v111 = v67;
    v75(v70, v66, v67);
    sub_265D595F0();
    sub_265D59DC0();
    (*(v58 + 8))(v63, v57);
    v107[3] = sub_265D5A4C0();
    v109 = sub_265D589D0();
    v108 = v76;
    v77 = sub_265D58020();
    (*(*(v77 - 8) + 56))(v128, 1, 1, v77);
    v78 = sub_265D58410();
    (*(*(v78 - 8) + 56))(v129, 1, 1, v78);
    v79 = sub_265D58590();
    (*(*(v79 - 8) + 56))(v130, 1, 1, v79);
    v80 = sub_265D58050();
    (*(*(v80 - 8) + 56))(v131, 1, 1, v80);
    v81 = sub_265D58200();
    (*(*(v81 - 8) + 56))(v132, 1, 1, v81);
    v82 = sub_265D58BC0();
    (*(*(v82 - 8) + 56))(v133, 1, 1, v82);
    v83 = sub_265D583E0();
    (*(*(v83 - 8) + 56))(v134, 1, 1, v83);
    v84 = sub_265D581B0();
    (*(*(v84 - 8) + 56))(v135, 1, 1, v84);
    v85 = sub_265D57F50();
    (*(*(v85 - 8) + 56))(v136, 1, 1, v85);
    v86 = sub_265D582A0();
    (*(*(v86 - 8) + 56))(v137, 1, 1, v86);
    v87 = sub_265D58680();
    (*(*(v87 - 8) + 56))(v138, 1, 1, v87);
    v88 = sub_265D58210();
    (*(*(v88 - 8) + 56))(v139, 1, 1, v88);
    v89 = sub_265D57E80();
    (*(*(v89 - 8) + 56))(v140, 1, 1, v89);
    v90 = sub_265D58430();
    (*(*(v90 - 8) + 56))(v141, 1, 1, v90);
    v91 = sub_265D58300();
    (*(*(v91 - 8) + 56))(v142, 1, 1, v91);
    v92 = sub_265D586F0();
    (*(*(v92 - 8) + 56))(v143, 1, 1, v92);
    v93 = sub_265D57E90();
    (*(*(v93 - 8) + 56))(v144, 1, 1, v93);
    v94 = sub_265D581C0();
    (*(*(v94 - 8) + 56))(v116, 1, 1, v94);
    v95 = sub_265D58BB0();
    (*(*(v95 - 8) + 56))(v117, 1, 1, v95);
    v96 = sub_265D585C0();
    (*(*(v96 - 8) + 56))(v118, 1, 1, v96);
    v97 = sub_265D57EA0();
    (*(*(v97 - 8) + 56))(v119, 1, 1, v97);
    v98 = sub_265D57ED0();
    v99 = *(v98 - 8);
    v100 = v120;
    (*(v99 + 16))(v120, v121, v98);
    (*(v99 + 56))(v100, 0, 1, v98);
    v101 = sub_265D58240();
    (*(*(v101 - 8) + 56))(v122, 1, 1, v101);
    v102 = sub_265D58400();
    (*(*(v102 - 8) + 56))(v123, 1, 1, v102);
    v103 = sub_265D58600();
    (*(*(v103 - 8) + 56))(v124, 1, 1, v103);
    v104 = sub_265D58630();
    (*(*(v104 - 8) + 56))(v125, 1, 1, v104);
    v105 = sub_265D58B10();
    (*(*(v105 - 8) + 56))(v126, 1, 1, v105);
    sub_265D5A030();
    v106 = v113;
    sub_265D580B0();
    sub_265D01B9C(v106, 0);
    (*(v114 + 8))(v106, v115);
    return (*(v112 + 8))(v110, v111);
  }
}

uint64_t sub_265CFEFD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  MEMORY[0x28223BE20](v2 - 8);
  v125 = &v109 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v109 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  MEMORY[0x28223BE20](v7 - 8);
  v124 = &v109 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v109 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  MEMORY[0x28223BE20](v12 - 8);
  v130 = &v109 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  MEMORY[0x28223BE20](v14 - 8);
  v129 = &v109 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  MEMORY[0x28223BE20](v16 - 8);
  v128 = &v109 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  MEMORY[0x28223BE20](v18 - 8);
  v127 = &v109 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  MEMORY[0x28223BE20](v20 - 8);
  v126 = &v109 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  MEMORY[0x28223BE20](v22 - 8);
  v147 = &v109 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  MEMORY[0x28223BE20](v24 - 8);
  v146 = &v109 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  MEMORY[0x28223BE20](v26 - 8);
  v145 = &v109 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  MEMORY[0x28223BE20](v28 - 8);
  v123 = &v109 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  MEMORY[0x28223BE20](v30 - 8);
  v144 = &v109 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  MEMORY[0x28223BE20](v32 - 8);
  v143 = &v109 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  MEMORY[0x28223BE20](v34 - 8);
  v142 = &v109 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  MEMORY[0x28223BE20](v36 - 8);
  v141 = &v109 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  MEMORY[0x28223BE20](v38 - 8);
  v140 = &v109 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  MEMORY[0x28223BE20](v40 - 8);
  v139 = &v109 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  MEMORY[0x28223BE20](v42 - 8);
  v138 = &v109 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  MEMORY[0x28223BE20](v44 - 8);
  v137 = &v109 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  MEMORY[0x28223BE20](v46 - 8);
  v136 = &v109 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  MEMORY[0x28223BE20](v48 - 8);
  v135 = &v109 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  MEMORY[0x28223BE20](v50 - 8);
  v134 = &v109 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  MEMORY[0x28223BE20](v52 - 8);
  v133 = &v109 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  MEMORY[0x28223BE20](v54 - 8);
  v132 = &v109 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  MEMORY[0x28223BE20](v56 - 8);
  v131 = &v109 - v57;
  v114 = sub_265D58330();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v109 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_265D58130();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v109 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_265D58300();
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v63 = &v109 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_265D59DE0();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v65 = &v109 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  v66 = *(v61 + 16);
  v116 = v61 + 16;
  v115 = v66;
  v66(v63, a1, v60);
  v67 = sub_265D59DD0();
  v68 = sub_265D5A080();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v117 = v61;
    v110 = a1;
    v70 = v69;
    v71 = swift_slowAlloc();
    v111 = v6;
    v72 = v71;
    v148 = v71;
    *v70 = 136315138;
    sub_265D10E08(&qword_28003E320, MEMORY[0x277D50FB0], MEMORY[0x277D50FB8]);
    v73 = sub_265D5A3B0();
    v75 = v74;
    (*(v117 + 8))(v63, v60);
    v76 = sub_265CF4FFC(v73, v75, &v148);

    *(v70 + 4) = v76;
    _os_log_impl(&dword_265C01000, v67, v68, "SessionSystem: observed MultiUserSessionUpdated %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    v6 = v111;
    MEMORY[0x266770CF0](v72, -1, -1);
    v77 = v70;
    a1 = v110;
    v61 = v117;
    MEMORY[0x266770CF0](v77, -1, -1);
  }

  else
  {

    (*(v61 + 8))(v63, v60);
  }

  (*(v118 + 8))(v65, v119);
  LODWORD(v119) = sub_265D5A4C0();
  v78 = v112;
  sub_265D582F0();
  v118 = sub_265D58310();
  v117 = v79;
  (*(v113 + 8))(v78, v114);
  v80 = sub_265D58020();
  (*(*(v80 - 8) + 56))(v131, 1, 1, v80);
  v81 = sub_265D58410();
  (*(*(v81 - 8) + 56))(v132, 1, 1, v81);
  v82 = sub_265D58590();
  (*(*(v82 - 8) + 56))(v133, 1, 1, v82);
  v83 = sub_265D58050();
  (*(*(v83 - 8) + 56))(v134, 1, 1, v83);
  v84 = sub_265D58200();
  (*(*(v84 - 8) + 56))(v135, 1, 1, v84);
  v85 = sub_265D58BC0();
  (*(*(v85 - 8) + 56))(v136, 1, 1, v85);
  v86 = sub_265D583E0();
  (*(*(v86 - 8) + 56))(v137, 1, 1, v86);
  v87 = sub_265D581B0();
  (*(*(v87 - 8) + 56))(v138, 1, 1, v87);
  v88 = sub_265D57F50();
  (*(*(v88 - 8) + 56))(v139, 1, 1, v88);
  v89 = sub_265D582A0();
  (*(*(v89 - 8) + 56))(v140, 1, 1, v89);
  v90 = sub_265D58680();
  (*(*(v90 - 8) + 56))(v141, 1, 1, v90);
  v91 = sub_265D58210();
  (*(*(v91 - 8) + 56))(v142, 1, 1, v91);
  v92 = sub_265D57E80();
  (*(*(v92 - 8) + 56))(v143, 1, 1, v92);
  v93 = sub_265D58430();
  (*(*(v93 - 8) + 56))(v144, 1, 1, v93);
  v94 = v123;
  v115(v123, a1, v60);
  (*(v61 + 56))(v94, 0, 1, v60);
  v95 = sub_265D586F0();
  (*(*(v95 - 8) + 56))(v145, 1, 1, v95);
  v96 = sub_265D57E90();
  (*(*(v96 - 8) + 56))(v146, 1, 1, v96);
  v97 = sub_265D581C0();
  (*(*(v97 - 8) + 56))(v147, 1, 1, v97);
  v98 = sub_265D58BB0();
  (*(*(v98 - 8) + 56))(v126, 1, 1, v98);
  v99 = sub_265D585C0();
  (*(*(v99 - 8) + 56))(v127, 1, 1, v99);
  v100 = sub_265D57EA0();
  (*(*(v100 - 8) + 56))(v128, 1, 1, v100);
  v101 = sub_265D57ED0();
  (*(*(v101 - 8) + 56))(v129, 1, 1, v101);
  v102 = sub_265D58240();
  (*(*(v102 - 8) + 56))(v130, 1, 1, v102);
  v103 = sub_265D58400();
  (*(*(v103 - 8) + 56))(v11, 1, 1, v103);
  v104 = sub_265D58600();
  (*(*(v104 - 8) + 56))(v124, 1, 1, v104);
  v105 = sub_265D58630();
  (*(*(v105 - 8) + 56))(v6, 1, 1, v105);
  v106 = sub_265D58B10();
  (*(*(v106 - 8) + 56))(v125, 1, 1, v106);
  sub_265D5A030();
  v107 = v120;
  sub_265D580B0();
  sub_265D01B9C(v107, 4u);
  return (*(v121 + 8))(v107, v122);
}

uint64_t sub_265D00518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_265D0063C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  MEMORY[0x28223BE20](v2 - 8);
  v125 = &v108 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  MEMORY[0x28223BE20](v4 - 8);
  v119 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v108 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v108 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  MEMORY[0x28223BE20](v12 - 8);
  v124 = &v108 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  MEMORY[0x28223BE20](v14 - 8);
  v123 = &v108 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  MEMORY[0x28223BE20](v16 - 8);
  v122 = &v108 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  MEMORY[0x28223BE20](v18 - 8);
  v121 = &v108 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  MEMORY[0x28223BE20](v20 - 8);
  v120 = &v108 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  MEMORY[0x28223BE20](v22 - 8);
  v142 = &v108 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  MEMORY[0x28223BE20](v24 - 8);
  v141 = &v108 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  MEMORY[0x28223BE20](v26 - 8);
  v118 = &v108 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  MEMORY[0x28223BE20](v28 - 8);
  v140 = &v108 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  MEMORY[0x28223BE20](v30 - 8);
  v139 = &v108 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  MEMORY[0x28223BE20](v32 - 8);
  v138 = &v108 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  MEMORY[0x28223BE20](v34 - 8);
  v137 = &v108 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  MEMORY[0x28223BE20](v36 - 8);
  v136 = &v108 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  MEMORY[0x28223BE20](v38 - 8);
  v135 = &v108 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  MEMORY[0x28223BE20](v40 - 8);
  v134 = &v108 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  MEMORY[0x28223BE20](v42 - 8);
  v133 = &v108 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  MEMORY[0x28223BE20](v44 - 8);
  v132 = &v108 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  MEMORY[0x28223BE20](v46 - 8);
  v131 = &v108 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  MEMORY[0x28223BE20](v48 - 8);
  v130 = &v108 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  MEMORY[0x28223BE20](v50 - 8);
  v129 = &v108 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  MEMORY[0x28223BE20](v52 - 8);
  v128 = &v108 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  MEMORY[0x28223BE20](v54 - 8);
  v127 = &v108 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  MEMORY[0x28223BE20](v56 - 8);
  v126 = &v108 - v57;
  v117 = sub_265D58130();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v108 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_265D586F0();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v62 = &v108 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_265D59DE0();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v64 = &v108 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  v65 = *(v60 + 16);
  v111 = v60 + 16;
  v110 = v65;
  v65(v62, a1, v59);
  v66 = sub_265D59DD0();
  v67 = sub_265D5A080();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v112 = a1;
    v69 = v68;
    v108 = swift_slowAlloc();
    v143 = v108;
    *v69 = 136315138;
    sub_265D10E08(&qword_28003E458, MEMORY[0x277D53008], MEMORY[0x277D53010]);
    v70 = sub_265D5A3B0();
    v109 = v11;
    v71 = v60;
    v72 = v59;
    v74 = v73;
    (*(v71 + 8))(v62, v72);
    v75 = sub_265CF4FFC(v70, v74, &v143);
    v59 = v72;
    v60 = v71;
    v11 = v109;

    *(v69 + 4) = v75;
    _os_log_impl(&dword_265C01000, v66, v67, "SessionSystem: observed MultiUserSessionIdentitiesUpdated %s", v69, 0xCu);
    v76 = v108;
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    MEMORY[0x266770CF0](v76, -1, -1);
    v77 = v69;
    a1 = v112;
    MEMORY[0x266770CF0](v77, -1, -1);
  }

  else
  {

    (*(v60 + 8))(v62, v59);
  }

  (*(v113 + 8))(v64, v114);
  LODWORD(v112) = sub_265D5A4C0();
  v114 = sub_265D586E0();
  v113 = v78;
  v79 = sub_265D58020();
  (*(*(v79 - 8) + 56))(v126, 1, 1, v79);
  v80 = sub_265D58410();
  (*(*(v80 - 8) + 56))(v127, 1, 1, v80);
  v81 = sub_265D58590();
  (*(*(v81 - 8) + 56))(v128, 1, 1, v81);
  v82 = sub_265D58050();
  (*(*(v82 - 8) + 56))(v129, 1, 1, v82);
  v83 = sub_265D58200();
  (*(*(v83 - 8) + 56))(v130, 1, 1, v83);
  v84 = sub_265D58BC0();
  (*(*(v84 - 8) + 56))(v131, 1, 1, v84);
  v85 = sub_265D583E0();
  (*(*(v85 - 8) + 56))(v132, 1, 1, v85);
  v86 = sub_265D581B0();
  (*(*(v86 - 8) + 56))(v133, 1, 1, v86);
  v87 = sub_265D57F50();
  (*(*(v87 - 8) + 56))(v134, 1, 1, v87);
  v88 = sub_265D582A0();
  (*(*(v88 - 8) + 56))(v135, 1, 1, v88);
  v89 = sub_265D58680();
  (*(*(v89 - 8) + 56))(v136, 1, 1, v89);
  v90 = sub_265D58210();
  (*(*(v90 - 8) + 56))(v137, 1, 1, v90);
  v91 = sub_265D57E80();
  (*(*(v91 - 8) + 56))(v138, 1, 1, v91);
  v92 = sub_265D58430();
  (*(*(v92 - 8) + 56))(v139, 1, 1, v92);
  v93 = sub_265D58300();
  (*(*(v93 - 8) + 56))(v140, 1, 1, v93);
  v94 = v118;
  v110(v118, a1, v59);
  (*(v60 + 56))(v94, 0, 1, v59);
  v95 = sub_265D57E90();
  (*(*(v95 - 8) + 56))(v141, 1, 1, v95);
  v96 = sub_265D581C0();
  (*(*(v96 - 8) + 56))(v142, 1, 1, v96);
  v97 = sub_265D58BB0();
  (*(*(v97 - 8) + 56))(v120, 1, 1, v97);
  v98 = sub_265D585C0();
  (*(*(v98 - 8) + 56))(v121, 1, 1, v98);
  v99 = sub_265D57EA0();
  (*(*(v99 - 8) + 56))(v122, 1, 1, v99);
  v100 = sub_265D57ED0();
  (*(*(v100 - 8) + 56))(v123, 1, 1, v100);
  v101 = sub_265D58240();
  (*(*(v101 - 8) + 56))(v124, 1, 1, v101);
  v102 = sub_265D58400();
  (*(*(v102 - 8) + 56))(v11, 1, 1, v102);
  v103 = sub_265D58600();
  (*(*(v103 - 8) + 56))(v8, 1, 1, v103);
  v104 = sub_265D58630();
  (*(*(v104 - 8) + 56))(v119, 1, 1, v104);
  v105 = sub_265D58B10();
  (*(*(v105 - 8) + 56))(v125, 1, 1, v105);
  sub_265D5A030();
  v106 = v115;
  sub_265D580B0();
  sub_265D01B9C(v106, 4u);
  return (*(v116 + 8))(v106, v117);
}

uint64_t sub_265D01A8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_265D58130();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265D59070();
    sub_265D01B9C(v5, 0);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_265D01B9C(void (*a1)(void, void), unsigned int a2)
{
  v261 = a2;
  v262 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  MEMORY[0x28223BE20](v3 - 8);
  v249 = v235 - v4;
  v248 = sub_265D58E80();
  v247 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v246 = v235 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SessionSystem.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v242 = v235 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265D59DE0();
  v265 = *(v8 - 8);
  v266 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v235 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v240 = v235 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v243 = v235 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v245 = v235 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v255 = v235 - v19;
  MEMORY[0x28223BE20](v18);
  v253 = v235 - v20;
  v21 = sub_265D58130();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v235 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v239 = v235 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v241 = v235 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v244 = v235 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v254 = v235 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v267 = v235 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v250 = v235 - v37;
  MEMORY[0x28223BE20](v36);
  v257 = v235 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v252 = v235 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = v235 - v42;
  v44 = sub_265D58AC0();
  v45 = *(v44 - 8);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = v235 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v46);
  v258 = v235 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v251 = v235 - v52;
  MEMORY[0x28223BE20](v51);
  v54 = v235 - v53;
  v259 = v2;
  sub_265D0389C(v43);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    sub_265CA4AE8(v43, &qword_28003E708, &unk_265D5CCC0);
    sub_265D595F0();
    (*(v22 + 16))(v25, v262, v21);
    v55 = sub_265D59DD0();
    v56 = sub_265D5A070();
    v57 = v22;
    if (os_log_type_enabled(v55, v56))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v269[0] = v59;
      *v58 = 136446210;
      v60 = sub_265D580D0();
      v62 = v61;
      (*(v57 + 8))(v25, v21);
      v63 = sub_265CF4FFC(v60, v62, v269);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_265C01000, v55, v56, "No active session for update: %{public}s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x266770CF0](v59, -1, -1);
      MEMORY[0x266770CF0](v58, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v25, v21);
    }

    return (*(v265 + 8))(v11, v266);
  }

  v260 = v22;
  v264 = v21;
  (*(v45 + 32))(v54, v43, v44);
  v256 = v54;
  v64 = sub_265D589D0();
  v66 = v65;
  v67 = v262;
  v68 = sub_265D580D0();
  v263 = v44;
  if (v64 == v68 && v66 == v69)
  {

    v70 = v267;
    v71 = v261;
    v72 = v253;
  }

  else
  {
    v73 = sub_265D5A3C0();

    v70 = v267;
    v71 = v261;
    v72 = v253;
    if ((v73 & 1) == 0)
    {
      v80 = v240;
      sub_265D595F0();
      v81 = v260;
      v82 = v239;
      v83 = v67;
      v84 = v45;
      v86 = v263;
      v85 = v264;
      (*(v260 + 16))(v239, v83, v264);
      v87 = *(v45 + 16);
      v88 = v256;
      v87(v48, v256, v86);
      v89 = sub_265D59DD0();
      v90 = sub_265D5A070();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = v82;
        v92 = swift_slowAlloc();
        v267 = swift_slowAlloc();
        v269[0] = v267;
        *v92 = 136315394;
        v93 = sub_265D580D0();
        v95 = v94;
        (*(v81 + 8))(v91, v85);
        v96 = sub_265CF4FFC(v93, v95, v269);

        *(v92 + 4) = v96;
        *(v92 + 12) = 2082;
        v97 = sub_265D589D0();
        v99 = v98;
        v100 = *(v84 + 8);
        v101 = v48;
        v102 = v263;
        v100(v101, v263);
        v103 = sub_265CF4FFC(v97, v99, v269);

        *(v92 + 14) = v103;
        _os_log_impl(&dword_265C01000, v89, v90, "Remote session update identifier %s != active session %{public}s", v92, 0x16u);
        v104 = v267;
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v104, -1, -1);
        MEMORY[0x266770CF0](v92, -1, -1);

        (*(v265 + 8))(v240, v266);
        return (v100)(v256, v102);
      }

      else
      {

        v234 = *(v84 + 8);
        v234(v48, v86);
        (*(v81 + 8))(v82, v85);
        (*(v265 + 8))(v80, v266);
        return (v234)(v88, v86);
      }
    }
  }

  v235[1] = v259[47];
  v74 = sub_265D4607C(v71);
  v75 = v260;
  v76 = *(v260 + 16);
  v253 = (v260 + 16);
  v240 = v76;
  (v76)(v257, v67, v264);
  sub_265D5A030();
  v78 = v77;
  v236 = "ejection";
  if (v71)
  {
    v105 = sub_265D5A3C0();

    if ((v105 & 1) == 0)
    {
      v107 = v250;
      v108 = v257;
      sub_265D58060();
      v239 = sub_265D580D0();
      v110 = v109;
      sub_265D58090();
      v112 = v111;
      v106 = *(v75 + 8);
      v113 = v264;
      v106(v107, v264);
      v106(v108, v113);
      __swift_project_boxed_opaque_existential_1(v259 + 2, v259[5]);
      v269[3] = &type metadata for SessionUpdateAnalyticsEvent;
      v269[4] = sub_265D0EEE0();
      v114 = swift_allocObject();
      v269[0] = v114;
      *(v114 + 16) = v78 - v112;
      *(v114 + 24) = v239;
      *(v114 + 32) = v110;
      *(v114 + 40) = v71;
      v70 = v267;
      sub_265D59000();
      __swift_destroy_boxed_opaque_existential_1Tm(v269);
      goto LABEL_18;
    }
  }

  else
  {
  }

  v106 = *(v75 + 8);
  v106(v257, v264);
LABEL_18:
  sub_265D58060();
  sub_265D595F0();
  v115 = *(v45 + 16);
  v116 = v251;
  v117 = v256;
  v239 = (v45 + 16);
  v237 = v115;
  v115(v251, v256, v263);
  v118 = sub_265D59DD0();
  v119 = sub_265D5A080();
  v120 = os_log_type_enabled(v118, v119);
  v257 = v106;
  if (v120)
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v269[0] = v122;
    *v121 = 141558274;
    *(v121 + 4) = 1752392040;
    *(v121 + 12) = 2080;
    sub_265D10E08(&qword_28003E7E8, MEMORY[0x277D53AE0], MEMORY[0x277D53AF0]);
    v123 = sub_265D5A3B0();
    v125 = v124;
    v126 = v45;
    v251 = *(v45 + 8);
    (v251)(v116, v263);
    v127 = sub_265CF4FFC(v123, v125, v269);

    *(v121 + 14) = v127;
    _os_log_impl(&dword_265C01000, v118, v119, "Prior Session: %{mask.hash}s", v121, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    v128 = v122;
    v106 = v257;
    v117 = v256;
    MEMORY[0x266770CF0](v128, -1, -1);
    v129 = v121;
    v70 = v267;
    MEMORY[0x266770CF0](v129, -1, -1);
  }

  else
  {

    v126 = v45;
    v251 = *(v45 + 8);
    (v251)(v116, v263);
  }

  v262 = *(v265 + 8);
  v262(v72, v266);
  v130 = v255;
  sub_265D595F0();
  v131 = v254;
  v132 = v264;
  (v240)(v254, v70, v264);
  v133 = sub_265D59DD0();
  v134 = sub_265D5A080();
  v135 = os_log_type_enabled(v133, v134);
  v238 = v126;
  if (v135)
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v269[0] = v137;
    *v136 = 136315906;
    v138 = 0x8000000265D5FC00;
    v139 = 0xD000000000000014;
    v140 = 0x8000000265D5FC20;
    v141 = 0xD000000000000018;
    if (v261 != 3)
    {
      v141 = 0xD000000000000010;
      v140 = 0x8000000265D5FC40;
    }

    if (v261 != 2)
    {
      v139 = v141;
      v138 = v140;
    }

    v142 = v236 | 0x8000000000000000;
    v143 = 0xD000000000000016;
    if (!v261)
    {
      v143 = 0x7665446C61636F6CLL;
      v142 = 0xEB00000000656369;
    }

    if (v261 <= 1u)
    {
      v144 = v143;
    }

    else
    {
      v144 = v139;
    }

    if (v261 <= 1u)
    {
      v145 = v142;
    }

    else
    {
      v145 = v138;
    }

    v146 = sub_265CF4FFC(v144, v145, v269);

    *(v136 + 4) = v146;
    *(v136 + 12) = 2050;
    *(v136 + 14) = v74;
    *(v136 + 22) = 2160;
    *(v136 + 24) = 1752392040;
    *(v136 + 32) = 2080;
    sub_265D10E08(&qword_28003E4B8, MEMORY[0x277D506A0], MEMORY[0x277D506A8]);
    v147 = v254;
    v148 = v264;
    v149 = sub_265D5A3B0();
    v151 = v150;
    v106(v147, v148);
    v152 = sub_265CF4FFC(v149, v151, v269);

    *(v136 + 34) = v152;
    _os_log_impl(&dword_265C01000, v133, v134, "Transformed remote update from %s with timestamp offset %{public}f. Update: %{mask.hash}s", v136, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266770CF0](v137, -1, -1);
    MEMORY[0x266770CF0](v136, -1, -1);

    v262(v255, v266);
    v153 = v238;
    v117 = v256;
    v70 = v267;
  }

  else
  {

    v106(v131, v132);
    v262(v130, v266);
    v153 = v126;
  }

  v154 = v258;
  sub_265D58990();
  sub_265D10E08(&qword_28003E8D8, MEMORY[0x277D53AE0], MEMORY[0x277D53AE8]);
  if (sub_265D59E80())
  {
    v155 = v243;
    sub_265D595F0();
    v156 = v241;
    v157 = v264;
    (v240)(v241, v70, v264);
    v158 = sub_265D59DD0();
    v159 = sub_265D5A070();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v269[0] = v161;
      *v160 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8E0, &qword_265D5D7C8);
      v162 = v155;
      v163 = swift_allocObject();
      *(v163 + 16) = xmmword_265D5AF60;
      v164 = sub_265D580C0();
      v165 = MEMORY[0x277D84D30];
      *(v163 + 56) = MEMORY[0x277D84CC0];
      *(v163 + 64) = v165;
      *(v163 + 32) = v164;
      v166 = sub_265D59EB0();
      v168 = v167;
      v169 = v156;
      v170 = v257;
      (v257)(v169, v264);
      v171 = sub_265CF4FFC(v166, v168, v269);
      v157 = v264;

      *(v160 + 4) = v171;
      _os_log_impl(&dword_265C01000, v158, v159, "Session update (identifier: %{public}s) had no new attributes", v160, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v161);
      MEMORY[0x266770CF0](v161, -1, -1);
      v172 = v160;
      v70 = v267;
      MEMORY[0x266770CF0](v172, -1, -1);

      v262(v162, v266);
      v173 = v263;
      v174 = v251;
      (v251)(v258, v263);
      v175 = v256;
    }

    else
    {

      v219 = v156;
      v170 = v257;
      (v257)(v219, v157);
      v262(v155, v266);
      v173 = v263;
      v174 = v251;
      (v251)(v258, v263);
      v175 = v117;
    }

    v174(v175, v173);
    return v170(v70, v157);
  }

  else
  {
    v176 = v259;
    __swift_project_boxed_opaque_existential_1(v259 + 7, v259[10]);
    v177 = v252;
    v178 = v117;
    v179 = v263;
    v180 = v237;
    v237(v252, v178, v263);
    v181 = (v153 + 56);
    v182 = *(v153 + 56);
    (v182)(v177, 0, 1, v179);
    sub_265CE72D0(v267, v177);
    sub_265CA4AE8(v177, &qword_28003E708, &unk_265D5CCC0);
    v183 = v242;
    v180(v242, v154, v179);
    v184 = v264;
    v255 = v181;
    v254 = v182;
    v185 = (v182)(v183, 0, 1, v179);
    MEMORY[0x28223BE20](v185);
    v235[-2] = v176;
    v235[-1] = v183;
    sub_265D58CA0();
    sub_265D0E6F4(v183);
    v186 = off_2877801D0[0];
    v187 = type metadata accessor for SessionConnectionPool();
    v188 = v186();
    v189 = v267;
    v190 = v188;
    LODWORD(v243) = off_287780190(v187, &off_287780188);
    v191 = v245;
    sub_265D595F0();
    v192 = v244;
    (v240)(v244, v189, v184);
    swift_bridgeObjectRetain_n();
    v193 = sub_265D59DD0();
    v194 = sub_265D5A080();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = v192;
      v196 = swift_slowAlloc();
      v253 = swift_slowAlloc();
      v269[0] = v253;
      *v196 = 136446978;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8E0, &qword_265D5D7C8);
      v197 = swift_allocObject();
      *(v197 + 16) = xmmword_265D5AF60;
      v198 = sub_265D580C0();
      v199 = MEMORY[0x277D84D30];
      *(v197 + 56) = MEMORY[0x277D84CC0];
      *(v197 + 64) = v199;
      *(v197 + 32) = v198;
      v200 = sub_265D59EB0();
      v202 = v201;
      (v257)(v195, v184);
      v203 = sub_265CF4FFC(v200, v202, v269);

      *(v196 + 4) = v203;
      *(v196 + 12) = 2048;
      v204 = *(v190 + 16);

      *(v196 + 14) = v204;

      *(v196 + 22) = 2082;
      v205 = 0x8000000265D5FC00;
      v206 = 0xD000000000000014;
      v207 = 0x8000000265D5FC20;
      v208 = 0xD000000000000018;
      if (v261 != 3)
      {
        v208 = 0xD000000000000010;
        v207 = 0x8000000265D5FC40;
      }

      if (v261 != 2)
      {
        v206 = v208;
        v205 = v207;
      }

      v209 = v236 | 0x8000000000000000;
      v210 = 0xD000000000000016;
      if (!v261)
      {
        v210 = 0x7665446C61636F6CLL;
        v209 = 0xEB00000000656369;
      }

      if (v261 <= 1u)
      {
        v211 = v210;
      }

      else
      {
        v211 = v206;
      }

      if (v261 <= 1u)
      {
        v212 = v209;
      }

      else
      {
        v212 = v205;
      }

      v213 = sub_265CF4FFC(v211, v212, v269);

      *(v196 + 24) = v213;
      *(v196 + 32) = 2080;
      v268 = v243;
      v214 = sub_265D59EC0();
      v216 = sub_265CF4FFC(v214, v215, v269);

      *(v196 + 34) = v216;
      _os_log_impl(&dword_265C01000, v193, v194, "Broadcasting session update (update identifier: %{public}s to %ld connection(s) from %{public}s in %s mode", v196, 0x2Au);
      v217 = v253;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v217, -1, -1);
      MEMORY[0x266770CF0](v196, -1, -1);

      v218 = (v262)(v191, v266);
      v189 = v267;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (v257)(v192, v184);
      v218 = (v262)(v191, v266);
    }

    MEMORY[0x28223BE20](v218);
    v235[-2] = v189;
    sub_265CBA26C(sub_265D0EF34, &v235[-4], v190);

    v220 = v259;
    __swift_project_boxed_opaque_existential_1(v259 + 37, v259[40]);
    v221 = v252;
    v222 = v256;
    v223 = v263;
    v224 = v237;
    v237(v252, v256, v263);
    v225 = v254;
    (v254)(v221, 0, 1, v223);
    sub_265CE915C(v267, v221);
    sub_265CA4AE8(v221, &qword_28003E708, &unk_265D5CCC0);
    v224(v221, v222, v223);
    v225(v221, 0, 1, v223);
    sub_265CF2DC8(v267, v221);
    sub_265CA4AE8(v221, &qword_28003E708, &unk_265D5CCC0);
    __swift_project_boxed_opaque_existential_1(v220 + 64, v220[67]);
    sub_265D255C0();
    __swift_project_boxed_opaque_existential_1(v220 + 70, v220[73]);
    sub_265CE6954();
    __swift_project_boxed_opaque_existential_1(v220 + 27, v220[30]);
    sub_265CDB8D4();
    __swift_project_boxed_opaque_existential_1(v220 + 50, v220[53]);
    sub_265D53380();
    swift_getObjectType();
    v226 = v258;
    sub_265D589A0();
    v227 = v246;
    sub_265D58E70();
    v228 = v248;
    v229 = v267;
    sub_265D58ED0();
    (*(v247 + 8))(v227, v228);
    v230 = v249;
    sub_265D58080();
    v231 = sub_265D57ED0();
    if ((*(*(v231 - 8) + 48))(v230, 1, v231) == 1)
    {
      v232 = v251;
      (v251)(v226, v223);
      v232(v222, v223);
      sub_265CA4AE8(v230, &qword_28003E840, &unk_265D5D0D0);
    }

    else
    {
      sub_265CA4AE8(v230, &qword_28003E840, &unk_265D5D0D0);
      sub_265D06414();
      v233 = v251;
      (v251)(v226, v223);
      v233(v222, v223);
    }

    return (v257)(v229, v264);
  }
}

uint64_t sub_265D0389C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SessionSystem.State(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-v6];
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265D595F0();
  sub_265D59DC0();
  (*(v9 + 8))(v11, v8);
  sub_265D58CA0();
  sub_265D0EFC8(v7, v5);
  v12 = sub_265D58AC0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    sub_265D0E6F4(v5);
    v14 = 1;
  }

  else
  {
    (*(v13 + 32))(a1, v5, v12);
    v14 = 0;
  }

  return (*(v13 + 56))(a1, v14, 1, v12);
}

void sub_265D03B04(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_265D58AC0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v49 = &v46 - v5;
  v6 = type metadata accessor for SessionSystem.State(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  v12 = sub_265D59DE0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  sub_265D595F0();
  sub_265D59DC0();
  v21 = *(v13 + 8);
  v53 = v12;
  v22 = v12;
  v23 = v21;
  v50 = v13 + 8;
  v21(v20, v22);
  sub_265D58CA0();
  v24 = v1;
  v54 = v11;
  sub_265D0EE7C(v11, v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_265D595F0();
    v25 = sub_265D59DD0();
    v26 = sub_265D5A080();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_265C01000, v25, v26, "Session system is inactive, new sessions are allowed", v27, 2u);
      MEMORY[0x266770CF0](v27, -1, -1);
    }

    v23(v18, v53);
    sub_265D58970();
    sub_265D0E6F4(v54);
  }

  else
  {
    v28 = v49;
    (*(v2 + 32))(v49, v9, v1);
    sub_265D595F0();
    (*(v2 + 16))(v51, v28, v1);
    v29 = sub_265D59DD0();
    v30 = sub_265D5A080();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v48 = v24;
      v32 = v31;
      v33 = swift_slowAlloc();
      v56 = v33;
      *v32 = 136446210;
      v34 = v51;
      v35 = sub_265D589D0();
      v47 = v23;
      v36 = v28;
      v38 = v37;
      v39 = *(v2 + 8);
      v39(v34, v48);
      v40 = sub_265CF4FFC(v35, v38, &v56);
      v28 = v36;

      *(v32 + 4) = v40;
      _os_log_impl(&dword_265C01000, v29, v30, "Session system is active %{public}s, not allowing new session", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x266770CF0](v33, -1, -1);
      v41 = v32;
      v24 = v48;
      MEMORY[0x266770CF0](v41, -1, -1);

      v47(v52, v53);
    }

    else
    {

      v39 = *(v2 + 8);
      v39(v51, v24);
      v23(v52, v53);
    }

    v42 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
    v43 = swift_allocError();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D50380], v42);
    *(swift_allocObject() + 16) = v43;
    v45 = v43;
    sub_265D58940();
    v39(v28, v24);
    sub_265D0E6F4(v54);
  }
}

uint64_t sub_265D04134(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_265D59DE0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v8 + 8))(v10, v7);
  sub_265D0389C(v6);
  v11 = sub_265D58AC0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_265CA4AE8(v6, &qword_28003E708, &unk_265D5CCC0);
LABEL_3:
    v13 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D50338], v13);
    *(swift_allocObject() + 16) = v14;
    return sub_265D58940();
  }

  v17 = sub_265D589D0();
  v19 = v18;
  (*(v12 + 8))(v6, v11);
  if (v17 == a1 && v19 == a2)
  {
  }

  else
  {
    v21 = sub_265D5A3C0();

    if ((v21 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return sub_265D58970();
}

uint64_t sub_265D04464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v56 = a4;
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  sub_265D595F0();
  swift_unknownObjectRetain();
  v16 = sub_265D59DD0();
  v17 = sub_265D5A080();
  swift_unknownObjectRelease();
  v18 = os_log_type_enabled(v16, v17);
  v53 = a2;
  v54 = a3;
  v55 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v52 = a5;
    v20 = v19;
    v51 = swift_slowAlloc();
    v57[2] = a3;
    v58 = v51;
    *v20 = 136446466;
    v57[0] = a1;
    v57[1] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    v21 = sub_265D59EC0();
    v23 = v9;
    v24 = v13;
    v25 = v10;
    v26 = sub_265CF4FFC(v21, v22, &v58);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2082;
    LOBYTE(v57[0]) = v56;
    v27 = sub_265D59EC0();
    v29 = sub_265CF4FFC(v27, v28, &v58);
    v10 = v25;
    v13 = v24;
    v9 = v23;

    *(v20 + 14) = v29;
    _os_log_impl(&dword_265C01000, v16, v17, "Updating session connection pool with %{public}s role %{public}s", v20, 0x16u);
    v30 = v51;
    swift_arrayDestroy();
    MEMORY[0x266770CF0](v30, -1, -1);
    MEMORY[0x266770CF0](v20, -1, -1);
  }

  v31 = *(v10 + 8);
  v31(v15, v9);
  if (v56 > 2u)
  {
    v32 = v55;
    if (v56 == 3)
    {
      v44 = off_2877801A0[0];
      v45 = type metadata accessor for SessionConnectionPool();
      v44(v32, v53, v54, v45, &off_287780188);
      return sub_265D58970();
    }

    if (v56 == 4)
    {
      v41 = off_287780198[0];
      type metadata accessor for SessionConnectionPool();
      v41();
      return sub_265D58970();
    }

LABEL_10:
    v42 = off_287780198[0];
    v43 = type metadata accessor for SessionConnectionPool();
    v42();
    off_2877801A8(v32, v53, v54, v43, &off_287780188);
    return sub_265D58970();
  }

  v32 = v55;
  if (v56 >= 2u)
  {
    goto LABEL_10;
  }

  sub_265D595F0();
  v33 = sub_265D59DD0();
  v34 = sub_265D5A070();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v55 = v10;
    v37 = v36;
    v57[0] = v36;
    *v35 = 136446210;
    LOBYTE(v58) = v56;
    v38 = sub_265D59EC0();
    v40 = sub_265CF4FFC(v38, v39, v57);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_265C01000, v33, v34, "Unexpected connection pool role: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266770CF0](v37, -1, -1);
    MEMORY[0x266770CF0](v35, -1, -1);
  }

  v31(v13, v9);
  v47 = sub_265D57FE0();
  sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
  v48 = swift_allocError();
  (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D50348], v47);
  *(swift_allocObject() + 16) = v48;
  return sub_265D58940();
}

uint64_t sub_265D049EC()
{
  v0 = sub_265D59DE0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v1 + 8))(v3, v0);
  v4 = off_287780198[0];
  type metadata accessor for SessionConnectionPool();
  v4();
  (off_2877801C0)();
  return (off_2877801C8)();
}

uint64_t sub_265D04B60(uint64_t result)
{
  if (result <= 2u)
  {
    if (result < 2u)
    {
      return result;
    }

LABEL_7:
    v2 = off_287780198[0];
    type metadata accessor for SessionConnectionPool();
    v2();
    return (off_2877801C8)();
  }

  if (result != 3)
  {
    if (result == 4)
    {
      v1 = off_287780198[0];
      type metadata accessor for SessionConnectionPool();
      return v1();
    }

    goto LABEL_7;
  }

  v3 = off_2877801C0;
  type metadata accessor for SessionConnectionPool();
  return v3();
}

uint64_t sub_265D04C6C@<X0>(uint64_t *a1@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v7 = off_2877801B0;
  type metadata accessor for SessionConnectionPool();
  v7();
  return sub_265D04464(*a1, a1[1], a1[2], a3, a4);
}

uint64_t sub_265D04D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSystem.State(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_265D58AC0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v11 = a2;
  v12 = v6;
  sub_265D58CA0();
  return sub_265D0E6F4(v6);
}

uint64_t sub_265D04E54@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_265D58AC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D0389C(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_265CA4AE8(v7, &qword_28003E708, &unk_265D5CCC0);
    v12 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
    v13 = swift_allocError();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D50358], v12);
    *(swift_allocObject() + 16) = v13;
    return sub_265D58940();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_265D42790(v11, a2, x8_0);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_265D050CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_265D589D0();
  v10 = v9;
  sub_265D0389C(v7);
  v11 = sub_265D58AC0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_265CA4AE8(v7, &qword_28003E708, &unk_265D5CCC0);

LABEL_3:
    sub_265D0F294(*a3, a3[1], a3[2], a1);
    v13 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D50350], v13);
    return swift_willThrow();
  }

  v22 = a1;
  v16 = sub_265D589D0();
  v18 = v17;
  (*(v12 + 8))(v7, v11);
  if (v8 == v16 && v10 == v18)
  {
  }

  else
  {
    v20 = sub_265D5A3C0();

    a1 = v22;
    if ((v20 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_265D05334(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = sub_265D58AC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D0389C(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_265CA4AE8(v7, &qword_28003E708, &unk_265D5CCC0);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_265D0553C(v11, *a3, a3[1]);
  swift_getObjectType();
  v13[0] = *(a2 + 376);
  v13[1] = v13[0];
  sub_265C95A64();
  swift_unknownObjectRetain();
  sub_265D58ED0();
  swift_unknownObjectRelease();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_265D0553C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v26 = a1;
  v3 = sub_265D59DE0();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_265D58EB0();
  v6 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D58130();
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_265D58AC0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D0389C(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_265CA4AE8(v14, &qword_28003E708, &unk_265D5CCC0);
    sub_265D595F0();
    v19 = sub_265D59DD0();
    v20 = sub_265D5A070();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_265C01000, v19, v20, "No active session. This is unexpected", v21, 2u);
      MEMORY[0x266770CF0](v21, -1, -1);
    }

    return (*(v30 + 8))(v5, v31);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_265D589A0();
    swift_getObjectType();
    v23 = v27;
    (*(v6 + 104))(v8, *MEMORY[0x277D4E040], v27);
    sub_265D58C70();
    (*(v6 + 8))(v8, v23);
    (*(v25 + 8))(v11, v9);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_265D0596C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC22SeymourSessionServices13SessionSystem_state;
  swift_beginAccess();
  sub_265D0EE00(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_265D059D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D58EB0();
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D58F40();
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x28223BE20](v6);
  v90 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265D581A0();
  v84 = *(v8 - 8);
  v85 = v8;
  MEMORY[0x28223BE20](v8);
  v83 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SessionSystem.State(0);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265D58AC0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v78 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v78 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v78 - v21;
  v23 = sub_265D59DE0();
  v97 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v98 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v78 - v26;
  sub_265D595F0();
  v28 = v13;
  v29 = *(v13 + 16);
  v29(v22, a1, v12);
  v94 = a1;
  v99 = v29;
  v29(v20, a1, v12);
  v30 = sub_265D59DD0();
  v31 = sub_265D5A080();
  v32 = os_log_type_enabled(v30, v31);
  v100 = v23;
  v88 = v13 + 16;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v101[0] = v80;
    *v33 = 136446722;
    v79 = v31;
    v34 = sub_265D589D0();
    v78 = v30;
    v36 = v35;
    v87 = v2;
    v37 = *(v28 + 8);
    v37(v22, v12);
    v38 = sub_265CF4FFC(v34, v36, v101);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2160;
    *(v33 + 14) = 1752392040;
    *(v33 + 22) = 2080;
    sub_265D10E08(&qword_28003E7E8, MEMORY[0x277D53AE0], MEMORY[0x277D53AF0]);
    v39 = sub_265D5A3B0();
    v41 = v40;
    v82 = v37;
    v37(v20, v12);
    v2 = v87;
    v42 = sub_265CF4FFC(v39, v41, v101);

    *(v33 + 24) = v42;
    v43 = v78;
    _os_log_impl(&dword_265C01000, v78, v79, "Activating session: %{public}s, details: %{mask.hash}s", v33, 0x20u);
    v44 = v80;
    swift_arrayDestroy();
    MEMORY[0x266770CF0](v44, -1, -1);
    MEMORY[0x266770CF0](v33, -1, -1);

    v45 = *(v97 + 8);
    v46 = v27;
    v47 = v100;
  }

  else
  {

    v48 = *(v13 + 8);
    v48(v20, v12);
    v82 = v48;
    v48(v22, v12);
    v45 = *(v97 + 8);
    v46 = v27;
    v47 = v23;
  }

  v80 = v45;
  v45(v46, v47);
  v49 = v28;
  v50 = v81;
  v51 = v94;
  v52 = v99;
  v99(v81, v94, v12);
  v87 = v49;
  v53 = (*(v49 + 56))(v50, 0, 1, v12);
  MEMORY[0x28223BE20](v53);
  sub_265D58CA0();
  sub_265D0E6F4(v50);
  __swift_project_boxed_opaque_existential_1(v2 + 64, v2[67]);
  sub_265D252F4();
  __swift_project_boxed_opaque_existential_1(v2 + 76, v2[79]);
  sub_265D59330();
  v54 = v83;
  sub_265D58A10();
  v55 = sub_265D58190();
  v57 = v56;
  v59 = v58;
  (*(v84 + 8))(v54, v85);
  if (v59)
  {
    sub_265D58B40();
  }

  else
  {
    sub_265CA4B90(v55, v57, 0);
  }

  __swift_project_boxed_opaque_existential_1(v2 + 27, v2[30]);
  sub_265CDAFE4();
  v60 = v98;
  sub_265D595F0();
  v61 = v86;
  v52(v86, v51, v12);
  v62 = sub_265D59DD0();
  v63 = sub_265D5A080();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = v61;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v101[0] = v66;
    *v65 = 136446210;
    v67 = sub_265D589D0();
    v69 = v68;
    v82(v64, v12);
    v70 = sub_265CF4FFC(v67, v69, v101);
    v52 = v99;

    *(v65 + 4) = v70;
    _os_log_impl(&dword_265C01000, v62, v63, "Activated session with identifier: %{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x266770CF0](v66, -1, -1);
    MEMORY[0x266770CF0](v65, -1, -1);

    v71 = v98;
  }

  else
  {

    v82(v61, v12);
    v71 = v60;
  }

  v80(v71, v100);
  swift_getObjectType();
  v52(v89, v51, v12);
  v72 = v90;
  sub_265D58F30();
  v73 = v92;
  sub_265D58ED0();
  (*(v91 + 8))(v72, v73);
  sub_265D0ECB4(1);
  swift_getObjectType();
  v75 = v95;
  v74 = v96;
  v76 = v93;
  (*(v95 + 104))(v93, *MEMORY[0x277D4E058], v96);
  sub_265D58C70();
  return (*(v75 + 8))(v76, v74);
}

uint64_t sub_265D06414()
{
  v1 = v0;
  v2 = sub_265D59040();
  v72 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SessionSystem.State(0);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_265D59DE0();
  v73 = *(v75 - 8);
  v7 = MEMORY[0x28223BE20](v75);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v69 = v60 - v11;
  MEMORY[0x28223BE20](v10);
  v66 = v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v60 - v14;
  v16 = sub_265D58AC0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v70 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v60 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v60 - v23;
  sub_265D0389C(v15);
  v74 = v17;
  v25 = v17;
  v26 = v16;
  if ((*(v25 + 48))(v15, 1, v16) == 1)
  {
    sub_265CA4AE8(v15, &qword_28003E708, &unk_265D5CCC0);
    sub_265D595F0();
    v27 = sub_265D59DD0();
    v28 = sub_265D5A080();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_265C01000, v27, v28, "No active session to deactivate", v29, 2u);
      MEMORY[0x266770CF0](v29, -1, -1);
    }

    return v73[1](v9, v75);
  }

  else
  {
    v63 = v4;
    v64 = v2;
    v31 = v74;
    (*(v74 + 32))(v24, v15, v16);
    v32 = v66;
    sub_265D595F0();
    v67 = *(v31 + 16);
    v68 = v31 + 16;
    v67(v22, v24, v26);
    v33 = sub_265D59DD0();
    v34 = sub_265D5A080();
    v35 = os_log_type_enabled(v33, v34);
    v65 = v24;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v76[0] = v37;
      *v36 = 136446210;
      v38 = sub_265D589D0();
      v40 = v39;
      v41 = *(v74 + 8);
      v61 = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v62 = v41;
      v41(v22, v26);
      v42 = sub_265CF4FFC(v38, v40, v76);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_265C01000, v33, v34, "Deactivating session: %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      v43 = v37;
      v24 = v65;
      MEMORY[0x266770CF0](v43, -1, -1);
      MEMORY[0x266770CF0](v36, -1, -1);
    }

    else
    {

      v44 = *(v74 + 8);
      v61 = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v62 = v44;
      v44(v22, v26);
    }

    v45 = v73[1];
    v60[1] = (v73 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v73 = v45;
    (v45)(v32, v75);
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v46 = v70;
    v67(v70, v24, v26);
    v47 = off_287780190;
    type metadata accessor for SessionConnectionPool();
    v48 = v47();
    v76[3] = type metadata accessor for SessionCompletionAnalyticsEvent(0);
    v76[4] = sub_265D10E08(&qword_28003E8E8, type metadata accessor for SessionCompletionAnalyticsEvent, &unk_265D5CD30);
    *__swift_allocate_boxed_opaque_existential_1Tm(v76) = v48;
    sub_265D58A30();
    sub_265D58A60();
    sub_265D589F0();
    sub_265D58A70();
    sub_265D58A80();
    v49 = v62;
    v62(v46, v26);
    sub_265D59000();
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    sub_265D049EC();
    __swift_project_boxed_opaque_existential_1(v1 + 50, v1[53]);
    v50 = off_287780790;
    type metadata accessor for SessionHandshakeCoordinator();
    v50();
    __swift_project_boxed_opaque_existential_1(v1 + 55, v1[58]);
    v51 = off_28777D8D8;
    type metadata accessor for RemoteParticipantHandshakeRegistry();
    v51();
    v52 = off_28777DB68[0];
    type metadata accessor for SessionHeartbeatCoordinator();
    v52();
    v53 = *__swift_project_boxed_opaque_existential_1(v1 + 64, v1[67]);
    v54 = v69;
    sub_265D595F0();
    sub_265D59DC0();
    (v73)(v54, v75);
    *(v53 + 72) = 0;
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(v1 + 76, v1[79]);
    sub_265D59320();
    __swift_project_boxed_opaque_existential_1(v1 + 27, v1[30]);
    v55 = v65;
    sub_265CDB4A0();
    v56 = v71;
    v57 = (*(v74 + 56))(v71, 1, 1, v26);
    MEMORY[0x28223BE20](v57);
    sub_265D58CA0();
    sub_265D0E6F4(v56);
    swift_getObjectType();
    v67(v46, v55, v26);
    v58 = v63;
    sub_265D59030();
    v59 = v64;
    sub_265D58ED0();
    (*(v72 + 8))(v58, v59);
    return v49(v55, v26);
  }
}

void *sub_265D06D60()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 42);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 50);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 55);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 70);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 76);
  swift_unknownObjectRelease();
  sub_265D0E6F4(v0 + OBJC_IVAR____TtC22SeymourSessionServices13SessionSystem_state);
  return v0;
}

uint64_t sub_265D06E30()
{
  sub_265D06D60();

  return swift_deallocClassInstance();
}

uint64_t sub_265D06EB0(uint64_t a1)
{
  result = type metadata accessor for SessionSystem.State(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_265D06FD4(uint64_t a1)
{
  v1 = sub_265D58AC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_265D0702C@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v22 - v2;
  v4 = sub_265D58AC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v12 + 8))(v14, v11);
  sub_265D0389C(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_265CA4AE8(v3, &qword_28003E708, &unk_265D5CCC0);
    v15 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
    v16 = swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D50358], v15);
    *(swift_allocObject() + 16) = v16;
    return sub_265D58940();
  }

  else
  {
    v19 = *(v5 + 32);
    v19(v10, v3, v4);
    (*(v5 + 16))(v8, v10, v4);
    v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v21 = swift_allocObject();
    v19((v21 + v20), v8, v4);
    sub_265D58940();
    return (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_265D07404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v27 = a1;
  v26 = sub_265D58AC0();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v28);
  v8 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v12 + 8))(v14, v11);
  v15 = v30;
  sub_265D03B04(v10);
  v16 = v26;
  (*(v2 + 16))(v4, v27, v26);
  v17 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  (*(v2 + 32))(v18 + v17, v4, v16);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_265D10BD0;
  *(v19 + 24) = v18;
  v20 = v28;
  (*(v5 + 16))(v8, v10, v28);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  (*(v5 + 32))(v22 + v21, v8, v20);
  v23 = (v22 + ((v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_265CC4B4C;
  v23[1] = v19;

  sub_265D58930();
  return (*(v5 + 8))(v10, v20);
}

uint64_t sub_265D077A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12[1] = a3;
  v5 = sub_265D58AC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_265D049EC();
  __swift_project_boxed_opaque_existential_1((a1 + 400), *(a1 + 424));
  v8 = off_287780790;
  type metadata accessor for SessionHandshakeCoordinator();
  v8();
  sub_265D059D8(a2);
  (*(v6 + 16))(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  return sub_265D58940();
}

uint64_t sub_265D07940@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E260, &unk_265D5EDA0);
  v68 = *(v70 - 8);
  v3 = *(v68 + 64);
  v4 = MEMORY[0x28223BE20](v70);
  v67 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v71 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v8;
  MEMORY[0x28223BE20](v7);
  v73 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v64 - v11;
  v13 = sub_265D58AC0();
  v79 = *(v13 - 8);
  v80 = v13;
  v14 = *(v79 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v77 = &v64 - v16;
  v17 = sub_265D59DE0();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v64 - v22;
  sub_265D595F0();
  sub_265D59DC0();
  v24 = *(v18 + 8);
  v24(v23, v17);
  v72 = a1;
  if (a1 <= 2u)
  {
    if (a1 < 2u)
    {
      sub_265D595F0();
      v25 = sub_265D59DD0();
      v26 = sub_265D5A070();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_265C01000, v25, v26, "This method should not be called from a non session-host device", v27, 2u);
        MEMORY[0x266770CF0](v27, -1, -1);
      }

      v24(v21, v17);
      v28 = sub_265D57FE0();
      sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
      v29 = swift_allocError();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D50398], v28);
      *(swift_allocObject() + 16) = v29;
      return sub_265D58940();
    }

LABEL_9:
    v31 = 3;
    goto LABEL_11;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      v31 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v31 = 2;
LABEL_11:
  v32 = v78;
  sub_265D0389C(v12);
  v34 = v79;
  v33 = v80;
  if ((*(v79 + 48))(v12, 1, v80) == 1)
  {
    sub_265CA4AE8(v12, &qword_28003E708, &unk_265D5CCC0);
    v35 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
    v36 = swift_allocError();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D50358], v35);
    *(swift_allocObject() + 16) = v36;
    return sub_265D58940();
  }

  v66 = v31;
  v65 = *(v34 + 32);
  v39 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v77;
  v65();
  __swift_project_boxed_opaque_existential_1((v32 + 400), *(v32 + 424));
  v41 = v72;
  sub_265D537E0(v72, v76);
  (*(v34 + 16))(v39, v40, v33);
  v42 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v43 = swift_allocObject();
  v44 = v33;
  v45 = v43;
  *(v43 + 16) = v78;
  (v65)(v43 + v42, v39, v44);
  v46 = (v45 + v42 + v14);
  *v46 = v41;
  v46[1] = v66;
  v48 = v67;
  v47 = v68;
  v49 = v76;
  v50 = v70;
  (*(v68 + 16))(v67, v76, v70);
  v51 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v52 = swift_allocObject();
  (*(v47 + 32))(v52 + v51, v48, v50);
  v53 = (v52 + ((v3 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v53 = sub_265D106CC;
  v53[1] = v45;

  v54 = v73;
  sub_265D58930();
  (*(v47 + 8))(v49, v50);
  v55 = swift_allocObject();
  *(v55 + 16) = v41;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_265D107A4;
  *(v56 + 24) = v55;
  v58 = v74;
  v57 = v75;
  v59 = v71;
  (*(v74 + 16))(v71, v54, v75);
  v60 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v61 = (v69 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  (*(v58 + 32))(v62 + v60, v59, v57);
  v63 = (v62 + v61);
  *v63 = sub_265D10E50;
  v63[1] = v56;
  sub_265D58930();
  (*(v58 + 8))(v54, v57);
  return (*(v79 + 8))(v77, v80);
}

uint64_t sub_265D08260@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v159) = a5;
  v153 = a4;
  v143 = a3;
  v141 = a6;
  v144 = sub_265D58AC0();
  v151 = *(v144 - 8);
  v146 = *(v151 + 64);
  MEMORY[0x28223BE20](v144);
  v145 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E250, "<Q");
  v136 = *(v137 - 8);
  v135 = *(v136 + 64);
  v9 = MEMORY[0x28223BE20](v137);
  v134 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v132 = &v127 - v11;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v12 = *(v149 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v149);
  v15 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v127 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v142 = &v127 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v133 = &v127 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v138 = &v127 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v139 = &v127 - v26;
  MEMORY[0x28223BE20](v25);
  v140 = &v127 - v27;
  v28 = sub_265D59DE0();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[1];
  v161 = *a1;
  v162 = v32;
  v163 = *(a1 + 4);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v29 + 8))(v31, v28);
  v33 = v143;
  v34 = sub_265D589D0();
  sub_265D04134(v34, v35);

  v36 = swift_allocObject();
  *(v36 + 16) = a2;
  v37 = v162;
  *(v36 + 24) = v161;
  *(v36 + 40) = v37;
  *(v36 + 56) = v163;
  *(v36 + 64) = v159;
  *(v36 + 65) = v153;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_265D10EC0;
  *(v38 + 24) = v36;
  v39 = v12;
  v156 = *(v12 + 16);
  v157 = v12 + 16;
  v40 = v18;
  v41 = v18;
  v42 = v149;
  v156(v15, v40, v149);
  v43 = *(v39 + 80);
  v159 = v43;
  v44 = (v43 + 16) & ~v43;
  v155 = v44;
  v45 = (v13 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v152 = *(v39 + 32);
  v158 = v39 + 32;
  v47 = v46 + v44;
  v48 = v42;
  v152(v47, v15, v42);
  v49 = (v46 + v45);
  *v49 = sub_265D10E6C;
  v49[1] = v38;
  v147 = a2;

  sub_265D0F15C(&v161, v160);
  v50 = v142;
  sub_265D58930();
  v51 = *(v39 + 8);
  v154 = v39 + 8;
  v150 = v51;
  v52 = v41;
  v51(v41, v48);
  v53 = v151;
  v54 = *(v151 + 16);
  v130 = v151 + 16;
  v131 = v54;
  v55 = v145;
  v56 = v33;
  v57 = v144;
  v54(v145, v56, v144);
  v128 = *(v53 + 80);
  v58 = (v128 + 24) & ~v128;
  v59 = v58 + v146;
  v60 = swift_allocObject();
  *(v60 + 16) = a2;
  v61 = *(v53 + 32);
  v151 = v53 + 32;
  v129 = v61;
  v61(v60 + v58, v55, v57);
  *(v60 + v59) = v153;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_265D10EC8;
  *(v62 + 24) = v60;
  v63 = v50;
  v64 = v50;
  v65 = v149;
  v156(v52, v64, v149);
  v148 = v45;
  v66 = swift_allocObject();
  v152(v66 + v155, v52, v65);
  v67 = (v66 + v45);
  *v67 = sub_265CC4B4C;
  v67[1] = v62;
  v68 = v147;

  v69 = v132;
  sub_265D58930();
  v70 = v150;
  v150(v63, v65);
  v71 = swift_allocObject();
  *(v71 + 16) = sub_265D10E78;
  *(v71 + 24) = v68;
  v72 = v136;
  v73 = v134;
  v74 = v69;
  v75 = v137;
  (*(v136 + 16))(v134, v69, v137);
  v76 = v72;
  v77 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v78 = (v135 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = v73;
  v81 = v75;
  (*(v76 + 32))(v79 + v77, v80, v75);
  v82 = (v79 + v78);
  *v82 = sub_265D10E70;
  v82[1] = v71;

  v83 = v133;
  sub_265D58930();
  (*(v76 + 8))(v74, v81);
  v84 = swift_allocObject();
  *(v84 + 16) = v68;
  v85 = v68;
  v86 = v162;
  *(v84 + 24) = v161;
  *(v84 + 40) = v86;
  *(v84 + 56) = v163;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_265D10EC4;
  *(v87 + 24) = v84;
  v88 = v142;
  v89 = v149;
  v156(v142, v83, v149);
  v90 = v148;
  v91 = swift_allocObject();
  v152(v91 + v155, v88, v89);
  v92 = (v91 + v90);
  *v92 = sub_265D10E6C;
  v92[1] = v87;

  sub_265D0F15C(&v161, v160);
  v93 = v138;
  sub_265D58930();
  v70(v83, v89);
  v94 = v145;
  v95 = v144;
  v131(v145, v143, v144);
  v96 = (v128 + 16) & ~v128;
  v97 = (v146 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  v129(v98 + v96, v94, v95);
  *(v98 + v97) = v85;
  v99 = v98 + ((v97 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v99 + 32) = v163;
  v100 = v162;
  *v99 = v161;
  *(v99 + 16) = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = sub_265D10ECC;
  *(v101 + 24) = v98;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_265D10F40;
  *(v102 + 24) = v101;
  v103 = v93;
  v104 = v156;
  v156(v83, v93, v89);
  v105 = v148;
  v106 = swift_allocObject();
  v107 = v155;
  v108 = v83;
  v109 = v152;
  v152(v106 + v155, v108, v89);
  v110 = (v106 + v105);
  *v110 = sub_265D10E50;
  v110[1] = v102;
  v111 = v147;

  sub_265D0F15C(&v161, v160);
  v112 = v139;
  sub_265D58930();
  v150(v103, v89);
  v113 = swift_allocObject();
  *(v113 + 16) = v111;
  v114 = v162;
  *(v113 + 24) = v161;
  *(v113 + 40) = v114;
  *(v113 + 56) = v163;
  v115 = swift_allocObject();
  *(v115 + 16) = sub_265D10EA8;
  *(v115 + 24) = v113;
  v104(v103, v112, v89);
  v116 = v148;
  v117 = swift_allocObject();
  v109(v117 + v107, v103, v89);
  v118 = (v117 + v116);
  *v118 = sub_265D10E50;
  v118[1] = v115;
  v119 = v147;

  sub_265D0F15C(&v161, v160);
  v120 = v140;
  sub_265D58930();
  v121 = v150;
  v150(v112, v89);
  v122 = swift_allocObject();
  *(v122 + 16) = v119;
  *(v122 + 24) = v153;
  v123 = swift_allocObject();
  *(v123 + 16) = sub_265D10E90;
  *(v123 + 24) = v122;
  v156(v112, v120, v89);
  v124 = swift_allocObject();
  v109(v124 + v155, v112, v89);
  v125 = (v124 + v116);
  *v125 = sub_265D10E74;
  v125[1] = v123;

  sub_265D58930();
  return v121(v120, v89);
}

uint64_t sub_265D09094(uint64_t a1, char a2)
{
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  v8 = sub_265D59DD0();
  v9 = sub_265D5A080();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    v18 = a2;
    v13 = sub_265D59EC0();
    v15 = sub_265CF4FFC(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_265C01000, v8, v9, "Distributed session participant role request succeeded: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266770CF0](v12, -1, -1);
    MEMORY[0x266770CF0](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_265D09254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = sub_265D583D0();
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x28223BE20](v3);
  v81 = v4;
  v82 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E260, &unk_265D5EDA0);
  v77 = *(v5 - 8);
  v78 = v5;
  v6 = *(v77 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v76 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v86 = *(v9 - 8);
  v87 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v79 = v11;
  v80 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v83 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v74 - v14;
  v16 = sub_265D58AC0();
  v92 = *(v16 - 8);
  v93 = v16;
  v17 = *(v92 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v91 = &v74 - v20;
  v21 = sub_265D59DE0();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v74 - v26;
  sub_265D595F0();
  sub_265D59DC0();
  v28 = *(v22 + 8);
  v28(v27, v21);
  v89 = a1;
  v29 = sub_265D583C0();
  if ((v30 & 1) == 0)
  {
    v38 = sub_265D58580();
    sub_265D10E08(&qword_28003E220, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v39 = swift_allocError();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D525E8], v38);
    *(swift_allocObject() + 16) = v39;
    return sub_265D58940();
  }

  v31 = v29;
  if (v29 <= 2u)
  {
    if (v29 < 2u)
    {
      sub_265D595F0();
      v32 = sub_265D59DD0();
      v33 = sub_265D5A070();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_265C01000, v32, v33, "This method should not be called from a non session-host device", v34, 2u);
        MEMORY[0x266770CF0](v34, -1, -1);
      }

      v28(v25, v21);
      v35 = sub_265D57FE0();
      sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
      v36 = swift_allocError();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D50398], v35);
      *(swift_allocObject() + 16) = v36;
      return sub_265D58940();
    }

LABEL_11:
    v41 = 3;
    goto LABEL_13;
  }

  if (v29 == 3)
  {
    v41 = 2;
    goto LABEL_13;
  }

  if (v29 != 4)
  {
    goto LABEL_11;
  }

  v41 = 1;
LABEL_13:
  v42 = v90;
  sub_265D0389C(v15);
  v44 = v92;
  v43 = v93;
  if ((*(v92 + 48))(v15, 1, v93) != 1)
  {
    v49 = v42;
    v75 = v41;
    v74 = *(v44 + 32);
    v74(v91, v15, v43);
    __swift_project_boxed_opaque_existential_1((v42 + 400), *(v42 + 424));
    sub_265D54900(v89, v88);
    (*(v44 + 16))(v19, v91, v43);
    v50 = (*(v44 + 80) + 24) & ~*(v44 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v49;
    v74((v51 + v50), v19, v43);
    v52 = (v51 + v50 + v17);
    *v52 = v31;
    v52[1] = v75;
    v54 = v76;
    v53 = v77;
    v55 = v88;
    v56 = v78;
    (*(v77 + 16))(v76, v88, v78);
    v57 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v58 = swift_allocObject();
    (*(v53 + 32))(v58 + v57, v54, v56);
    v59 = (v58 + ((v6 + v57 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v59 = sub_265D0F084;
    v59[1] = v51;

    v60 = v83;
    sub_265D58930();
    (*(v53 + 8))(v55, v56);
    v62 = v84;
    v61 = v85;
    v63 = v82;
    (*(v84 + 16))(v82, v89, v85);
    v64 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v65 = swift_allocObject();
    (*(v62 + 32))(v65 + v64, v63, v61);
    v66 = swift_allocObject();
    *(v66 + 16) = sub_265D0F0C4;
    *(v66 + 24) = v65;
    v68 = v86;
    v67 = v87;
    v69 = v80;
    (*(v86 + 16))(v80, v60, v87);
    v70 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v71 = (v79 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    (*(v68 + 32))(v72 + v70, v69, v67);
    v73 = (v72 + v71);
    *v73 = sub_265D10E50;
    v73[1] = v66;
    sub_265D58930();
    (*(v68 + 8))(v60, v67);
    return (*(v92 + 8))(v91, v93);
  }

  sub_265CA4AE8(v15, &qword_28003E708, &unk_265D5CCC0);
  v45 = sub_265D57FE0();
  sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
  v46 = swift_allocError();
  (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D50358], v45);
  *(swift_allocObject() + 16) = v46;
  return sub_265D58940();
}

uint64_t sub_265D09D00@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v159) = a5;
  v153 = a4;
  v143 = a3;
  v141 = a6;
  v144 = sub_265D58AC0();
  v151 = *(v144 - 8);
  v146 = *(v151 + 64);
  MEMORY[0x28223BE20](v144);
  v145 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E250, "<Q");
  v136 = *(v137 - 8);
  v135 = *(v136 + 64);
  v9 = MEMORY[0x28223BE20](v137);
  v134 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v132 = &v127 - v11;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v12 = *(v149 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v149);
  v15 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v127 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v142 = &v127 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v133 = &v127 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v138 = &v127 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v139 = &v127 - v26;
  MEMORY[0x28223BE20](v25);
  v140 = &v127 - v27;
  v28 = sub_265D59DE0();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[1];
  v161 = *a1;
  v162 = v32;
  v163 = *(a1 + 4);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v29 + 8))(v31, v28);
  v33 = v143;
  v34 = sub_265D589D0();
  sub_265D04134(v34, v35);

  v36 = swift_allocObject();
  *(v36 + 16) = a2;
  v37 = v162;
  *(v36 + 24) = v161;
  *(v36 + 40) = v37;
  *(v36 + 56) = v163;
  *(v36 + 64) = v159;
  *(v36 + 65) = v153;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_265D0F140;
  *(v38 + 24) = v36;
  v39 = v12;
  v156 = *(v12 + 16);
  v157 = v12 + 16;
  v40 = v18;
  v41 = v18;
  v42 = v149;
  v156(v15, v40, v149);
  v43 = *(v39 + 80);
  v159 = v43;
  v44 = (v43 + 16) & ~v43;
  v155 = v44;
  v45 = (v13 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v152 = *(v39 + 32);
  v158 = v39 + 32;
  v47 = v46 + v44;
  v48 = v42;
  v152(v47, v15, v42);
  v49 = (v46 + v45);
  *v49 = sub_265D0F154;
  v49[1] = v38;
  v147 = a2;

  sub_265D0F15C(&v161, v160);
  v50 = v142;
  sub_265D58930();
  v51 = *(v39 + 8);
  v154 = v39 + 8;
  v150 = v51;
  v52 = v41;
  v51(v41, v48);
  v53 = v151;
  v54 = *(v151 + 16);
  v130 = v151 + 16;
  v131 = v54;
  v55 = v145;
  v56 = v33;
  v57 = v144;
  v54(v145, v56, v144);
  v128 = *(v53 + 80);
  v58 = (v128 + 24) & ~v128;
  v59 = v58 + v146;
  v60 = swift_allocObject();
  *(v60 + 16) = a2;
  v61 = *(v53 + 32);
  v151 = v53 + 32;
  v129 = v61;
  v61(v60 + v58, v55, v57);
  *(v60 + v59) = v153;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_265D0F1B8;
  *(v62 + 24) = v60;
  v63 = v50;
  v64 = v50;
  v65 = v149;
  v156(v52, v64, v149);
  v148 = v45;
  v66 = swift_allocObject();
  v152(v66 + v155, v52, v65);
  v67 = (v66 + v45);
  *v67 = sub_265CC4B4C;
  v67[1] = v62;
  v68 = v147;

  v69 = v132;
  sub_265D58930();
  v70 = v150;
  v150(v63, v65);
  v71 = swift_allocObject();
  *(v71 + 16) = sub_265D0F1BC;
  *(v71 + 24) = v68;
  v72 = v136;
  v73 = v134;
  v74 = v69;
  v75 = v137;
  (*(v136 + 16))(v134, v69, v137);
  v76 = v72;
  v77 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v78 = (v135 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = v73;
  v81 = v75;
  (*(v76 + 32))(v79 + v77, v80, v75);
  v82 = (v79 + v78);
  *v82 = sub_265D0F1D8;
  v82[1] = v71;

  v83 = v133;
  sub_265D58930();
  (*(v76 + 8))(v74, v81);
  v84 = swift_allocObject();
  *(v84 + 16) = v68;
  v85 = v68;
  v86 = v162;
  *(v84 + 24) = v161;
  *(v84 + 40) = v86;
  *(v84 + 56) = v163;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_265D0F1E0;
  *(v87 + 24) = v84;
  v88 = v142;
  v89 = v149;
  v156(v142, v83, v149);
  v90 = v148;
  v91 = swift_allocObject();
  v152(v91 + v155, v88, v89);
  v92 = (v91 + v90);
  *v92 = sub_265D10E6C;
  v92[1] = v87;

  sub_265D0F15C(&v161, v160);
  v93 = v138;
  sub_265D58930();
  v70(v83, v89);
  v94 = v145;
  v95 = v144;
  v131(v145, v143, v144);
  v96 = (v128 + 16) & ~v128;
  v97 = (v146 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  v129(v98 + v96, v94, v95);
  *(v98 + v97) = v85;
  v99 = v98 + ((v97 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v99 + 32) = v163;
  v100 = v162;
  *v99 = v161;
  *(v99 + 16) = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = sub_265D0F1EC;
  *(v101 + 24) = v98;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_265D0F204;
  *(v102 + 24) = v101;
  v103 = v93;
  v104 = v156;
  v156(v83, v93, v89);
  v105 = v148;
  v106 = swift_allocObject();
  v107 = v155;
  v108 = v83;
  v109 = v152;
  v152(v106 + v155, v108, v89);
  v110 = (v106 + v105);
  *v110 = sub_265D10E50;
  v110[1] = v102;
  v111 = v147;

  sub_265D0F15C(&v161, v160);
  v112 = v139;
  sub_265D58930();
  v150(v103, v89);
  v113 = swift_allocObject();
  *(v113 + 16) = v111;
  v114 = v162;
  *(v113 + 24) = v161;
  *(v113 + 40) = v114;
  *(v113 + 56) = v163;
  v115 = swift_allocObject();
  *(v115 + 16) = sub_265D0F22C;
  *(v115 + 24) = v113;
  v104(v103, v112, v89);
  v116 = v148;
  v117 = swift_allocObject();
  v109(v117 + v107, v103, v89);
  v118 = (v117 + v116);
  *v118 = sub_265D10E50;
  v118[1] = v115;
  v119 = v147;

  sub_265D0F15C(&v161, v160);
  v120 = v140;
  sub_265D58930();
  v121 = v150;
  v150(v112, v89);
  v122 = swift_allocObject();
  *(v122 + 16) = v119;
  *(v122 + 24) = v153;
  v123 = swift_allocObject();
  *(v123 + 16) = sub_265D0F24C;
  *(v123 + 24) = v122;
  v156(v112, v120, v89);
  v124 = swift_allocObject();
  v109(v124 + v155, v112, v89);
  v125 = (v124 + v116);
  *v125 = sub_265D0F264;
  v125[1] = v123;

  sub_265D58930();
  return v121(v120, v89);
}

uint64_t sub_265D0AB34(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D583D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265D59DE0();
  v24 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  (*(v5 + 16))(v7, a2, v4);
  v11 = sub_265D59DD0();
  v12 = sub_265D5A080();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v8;
    v14 = v13;
    v21 = swift_slowAlloc();
    v25 = v21;
    *v14 = 136446210;
    sub_265D10E08(&qword_28003E8F0, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
    v15 = sub_265D5A3B0();
    v23 = v2;
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    v18 = sub_265CF4FFC(v15, v17, &v25);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_265C01000, v11, v12, "Distributed session participant request succeeded: %{public}s", v14, 0xCu);
    v19 = v21;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x266770CF0](v19, -1, -1);
    MEMORY[0x266770CF0](v14, -1, -1);

    return (*(v24 + 8))(v10, v22);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return (*(v24 + 8))(v10, v8);
  }
}

uint64_t sub_265D0AE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33[1] = a1;
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E208, &qword_265D5D7D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v33 - v12;
  v14 = *(v2 + 360);
  v33[0] = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 336), v14);
  sub_265D59D20();
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  sub_265D59CF0();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_265D0B3B8;
  *(v15 + 24) = 0;
  (*(v4 + 16))(v7, v9, v3);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v16, v7, v3);
  v18 = (v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_265D0F048;
  v18[1] = v15;
  sub_265D58930();
  (*(v4 + 8))(v9, v3);
  v19 = v34;
  v20 = sub_265D58960();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_265CA4BF4, v21);

  (*(v35 + 8))(v13, v19);
  v22 = sub_265D583C0();
  if (v23)
  {
    if (((1 << v22) & 0x34) != 0)
    {
      v24 = off_2877801C8;
      type metadata accessor for SessionConnectionPool();
      v24();
LABEL_9:
      sub_265D58970();
      return __swift_destroy_boxed_opaque_existential_1Tm(v37);
    }

    if (((1 << v22) & 3) == 0)
    {
      __swift_project_boxed_opaque_existential_1((v33[0] + 560), *(v33[0] + 584));
      v31 = off_28777D928;
      type metadata accessor for SessionRemoteDisplayCoordinator();
      v31();
      goto LABEL_9;
    }

    v28 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D50348], v28);
    *(swift_allocObject() + 16) = v29;
  }

  else
  {
    v25 = sub_265D58580();
    sub_265D10E08(&qword_28003E220, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v26 = swift_allocError();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D525E8], v25);
    *(swift_allocObject() + 16) = v26;
  }

  sub_265D58940();
  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

uint64_t sub_265D0B3B8(void *a1)
{
  v1 = sub_265D58EB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v2 + 104))(v4, *MEMORY[0x277D4E128], v1);
  sub_265D58C80();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_265D0B4D8(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  MEMORY[0x28223BE20](v4 - 8);
  v122 = v111 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v111 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  MEMORY[0x28223BE20](v9 - 8);
  v121 = v111 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v111 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v111 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v111 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v111 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v111 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  MEMORY[0x28223BE20](v26 - 8);
  v146 = v111 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  MEMORY[0x28223BE20](v28 - 8);
  v145 = v111 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  MEMORY[0x28223BE20](v30 - 8);
  v144 = v111 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  MEMORY[0x28223BE20](v32 - 8);
  v143 = v111 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = v111 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  MEMORY[0x28223BE20](v37 - 8);
  v142 = v111 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  MEMORY[0x28223BE20](v39 - 8);
  v141 = v111 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  MEMORY[0x28223BE20](v41 - 8);
  v140 = v111 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  MEMORY[0x28223BE20](v43 - 8);
  v139 = v111 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  MEMORY[0x28223BE20](v45 - 8);
  v138 = v111 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  MEMORY[0x28223BE20](v47 - 8);
  v137 = v111 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  MEMORY[0x28223BE20](v49 - 8);
  v136 = v111 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  MEMORY[0x28223BE20](v51 - 8);
  v135 = v111 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  MEMORY[0x28223BE20](v53 - 8);
  v134 = v111 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  MEMORY[0x28223BE20](v55 - 8);
  v133 = v111 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  MEMORY[0x28223BE20](v57 - 8);
  v132 = v111 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  MEMORY[0x28223BE20](v59 - 8);
  v131 = v111 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  MEMORY[0x28223BE20](v61 - 8);
  v130 = v111 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  MEMORY[0x28223BE20](v63 - 8);
  v129 = v111 - v64;
  v127 = sub_265D58130();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v124 = v111 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_265D585C0();
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v148 = v111 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  MEMORY[0x28223BE20](v67 - 8);
  v69 = v111 - v68;
  v147 = sub_265D58AC0();
  v128 = *(v147 - 8);
  result = MEMORY[0x28223BE20](v147);
  v72 = v111 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v3)
  {
    v116 = v13;
    v119 = v36;
    v73 = v25;
    v120 = v22;
    v118 = v19;
    v74 = off_287780190;
    v117 = v72;
    type metadata accessor for SessionConnectionPool();
    result = v74();
    v75 = v119;
    v76 = v118;
    v77 = v120;
    if (!result)
    {
      v115 = v8;
      sub_265D0389C(v69);
      v78 = v128;
      if ((*(v128 + 48))(v69, 1, v147) == 1)
      {
        return sub_265CA4AE8(v69, &qword_28003E708, &unk_265D5CCC0);
      }

      else
      {
        (*(v78 + 32))();
        sub_265D5A030();
        sub_265D585A0();
        v112 = sub_265D5A4C0();
        v114 = sub_265D589D0();
        v113 = v79;
        v80 = sub_265D58020();
        (*(*(v80 - 8) + 56))(v129, 1, 1, v80);
        v81 = sub_265D58410();
        (*(*(v81 - 8) + 56))(v130, 1, 1, v81);
        v82 = sub_265D58590();
        (*(*(v82 - 8) + 56))(v131, 1, 1, v82);
        v83 = sub_265D58050();
        (*(*(v83 - 8) + 56))(v132, 1, 1, v83);
        v84 = sub_265D58200();
        (*(*(v84 - 8) + 56))(v133, 1, 1, v84);
        v85 = sub_265D58BC0();
        (*(*(v85 - 8) + 56))(v134, 1, 1, v85);
        v86 = sub_265D583E0();
        (*(*(v86 - 8) + 56))(v135, 1, 1, v86);
        v87 = sub_265D581B0();
        (*(*(v87 - 8) + 56))(v136, 1, 1, v87);
        v88 = sub_265D57F50();
        (*(*(v88 - 8) + 56))(v137, 1, 1, v88);
        v89 = sub_265D582A0();
        (*(*(v89 - 8) + 56))(v138, 1, 1, v89);
        v90 = sub_265D58680();
        (*(*(v90 - 8) + 56))(v139, 1, 1, v90);
        v91 = sub_265D58210();
        (*(*(v91 - 8) + 56))(v140, 1, 1, v91);
        v92 = sub_265D57E80();
        (*(*(v92 - 8) + 56))(v141, 1, 1, v92);
        v93 = sub_265D58430();
        (*(*(v93 - 8) + 56))(v142, 1, 1, v93);
        v94 = sub_265D58300();
        (*(*(v94 - 8) + 56))(v75, 1, 1, v94);
        v95 = sub_265D586F0();
        (*(*(v95 - 8) + 56))(v143, 1, 1, v95);
        v96 = sub_265D57E90();
        (*(*(v96 - 8) + 56))(v144, 1, 1, v96);
        v97 = sub_265D581C0();
        (*(*(v97 - 8) + 56))(v145, 1, 1, v97);
        v98 = sub_265D58BB0();
        (*(*(v98 - 8) + 56))(v146, 1, 1, v98);
        v99 = v116;
        v111[1] = v2;
        v100 = v78;
        v101 = v123;
        v102 = v125;
        (*(v123 + 16))(v73, v148, v125);
        (*(v101 + 56))(v73, 0, 1, v102);
        v103 = sub_265D57EA0();
        (*(*(v103 - 8) + 56))(v77, 1, 1, v103);
        v104 = sub_265D57ED0();
        (*(*(v104 - 8) + 56))(v76, 1, 1, v104);
        v105 = sub_265D58240();
        (*(*(v105 - 8) + 56))(v16, 1, 1, v105);
        v106 = sub_265D58400();
        (*(*(v106 - 8) + 56))(v99, 1, 1, v106);
        v107 = sub_265D58600();
        (*(*(v107 - 8) + 56))(v121, 1, 1, v107);
        v108 = sub_265D58630();
        (*(*(v108 - 8) + 56))(v115, 1, 1, v108);
        v109 = sub_265D58B10();
        (*(*(v109 - 8) + 56))(v122, 1, 1, v109);
        sub_265D5A030();
        v110 = v124;
        sub_265D580B0();
        sub_265D01B9C(v110, 0);
        sub_265D06414();
        (*(v126 + 8))(v110, v127);
        (*(v101 + 8))(v148, v102);
        return (*(v100 + 8))(v117, v147);
      }
    }
  }

  return result;
}

uint64_t sub_265D0C8D0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v132) = a2;
  v124 = a3;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E250, "<Q");
  v120 = *(v121 - 8);
  v4 = MEMORY[0x28223BE20](v121);
  v118 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v136 = &v109 - v7;
  v117 = v8;
  MEMORY[0x28223BE20](v6);
  v119 = &v109 - v9;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v145 = *(v139 - 8);
  v10 = MEMORY[0x28223BE20](v139);
  v114 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v140 = &v109 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v122 = &v109 - v15;
  v130 = v16;
  MEMORY[0x28223BE20](v14);
  v123 = &v109 - v17;
  v18 = sub_265D58AC0();
  v143 = *(v18 - 8);
  v144 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v137 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v20;
  MEMORY[0x28223BE20](v19);
  v138 = &v109 - v21;
  v22 = sub_265D58670();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v131 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v109 - v26;
  v28 = sub_265D59DE0();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  v32 = v23[2];
  v135 = a1;
  v133 = v22;
  v129 = v32;
  v32(v27, a1, v22);
  v33 = sub_265D59DD0();
  v34 = sub_265D5A080();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v127 = v28;
    v36 = v35;
    v126 = swift_slowAlloc();
    v147[0] = v126;
    *v36 = 136446210;
    sub_265D10E08(&qword_28003E8C0, MEMORY[0x277D52DA0], MEMORY[0x277D52DA8]);
    v37 = v133;
    v38 = sub_265D5A3B0();
    v128 = v23;
    v39 = v29;
    v41 = v40;
    (*(v128 + 1))(v27, v37);
    v42 = sub_265CF4FFC(v38, v41, v147);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_265C01000, v33, v34, "Handling distributed session activation request %{public}s", v36, 0xCu);
    v43 = v126;
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    MEMORY[0x266770CF0](v43, -1, -1);
    MEMORY[0x266770CF0](v36, -1, -1);

    (*(v39 + 8))(v31, v127);
    v23 = v128;
  }

  else
  {

    (v23[1])(v27, v133);
    (*(v29 + 8))(v31, v28);
  }

  v44 = v137;
  v45 = v135;
  sub_265D58660();
  sub_265D58640();
  v46 = v138;
  sub_265D589B0();
  v47 = v143;
  v48 = *(v143 + 8);
  v115 = v143 + 8;
  v116 = v48;
  v49 = v144;
  v48(v44, v144);
  v50 = v142;
  sub_265D03B04(v140);
  v51 = v131;
  v52 = v133;
  v129(v131, v45, v133);
  v125 = *(v47 + 16);
  v135 = v47 + 16;
  v53 = v44;
  v125(v44, v46, v49);
  v54 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v113 = *(v47 + 80);
  v55 = v47;
  v56 = (v134 + v113 + v54) & ~v113;
  v134 = v113 | 7;
  v57 = swift_allocObject();
  *(v57 + 16) = v132;
  *(v57 + 24) = v50;
  (v23[4])(v57 + v54, v51, v52);
  v58 = *(v55 + 32);
  v143 = v55 + 32;
  v131 = v58;
  (v58)(v57 + v56, v53, v49);
  v59 = swift_allocObject();
  *(v59 + 16) = sub_265D0E750;
  *(v59 + 24) = v57;
  v60 = v145;
  v61 = *(v145 + 16);
  v132 = v145 + 16;
  v133 = v61;
  v62 = v114;
  v64 = v139;
  v63 = v140;
  v61(v114, v140, v139);
  v65 = *(v60 + 80);
  v129 = v65;
  v66 = (v65 + 16) & ~v65;
  v127 = v66;
  v67 = (v130 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v112 = v67;
  v68 = swift_allocObject();
  v69 = *(v60 + 32);
  v126 = (v60 + 32);
  v128 = v69;
  v69(v68 + v66, v62, v64);
  v70 = (v68 + v67);
  *v70 = sub_265CC3740;
  v70[1] = v59;

  v71 = v136;
  sub_265D58930();
  v72 = *(v60 + 8);
  v145 = v60 + 8;
  v130 = v72;
  v72(v63, v64);
  v73 = *__swift_project_boxed_opaque_existential_1((v50 + 96), *(v50 + 120));
  v147[3] = type metadata accessor for AppRequirementCoordinator(0);
  v147[4] = &off_28777FBC0;
  v147[0] = v73;
  sub_265C97624(v147, &v146);
  v111 = swift_allocObject();
  sub_265C033C4(&v146, v111 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm(v147);
  v74 = v120;
  v114 = *(v120 + 16);
  v75 = v118;
  v76 = v121;
  (v114)(v118, v71, v121);
  v77 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v110 = v77;
  v78 = (v117 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v117 = *(v74 + 32);
  v117(v79 + v77, v75, v76);
  v80 = (v79 + v78);
  v81 = v111;
  *v80 = sub_265D0E854;
  v80[1] = v81;
  v82 = v119;
  sub_265D58930();
  v120 = *(v74 + 8);
  v83 = v136;
  (v120)(v136, v76);
  v84 = *(v142 + 392);
  (v114)(v83, v82, v76);
  v85 = swift_allocObject();
  v117(v85 + v110, v83, v76);
  v86 = (v85 + v78);
  *v86 = sub_265D0E8C4;
  v86[1] = v84;

  v87 = v122;
  sub_265D58930();
  (v120)(v82, v76);
  v89 = v137;
  v88 = v138;
  v90 = v144;
  v125(v137, v138, v144);
  v91 = (v113 + 24) & ~v113;
  v92 = swift_allocObject();
  v93 = v142;
  *(v92 + 16) = v142;
  (v131)(v92 + v91, v89, v90);
  v94 = swift_allocObject();
  *(v94 + 16) = sub_265D0E8F0;
  *(v94 + 24) = v92;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_265D0E954;
  *(v95 + 24) = v94;
  v97 = v139;
  v96 = v140;
  v133(v140, v87, v139);
  v98 = v112;
  v99 = swift_allocObject();
  v128(v99 + v127, v96, v97);
  v100 = (v99 + v98);
  *v100 = sub_265CC49C0;
  v100[1] = v95;

  v101 = v123;
  sub_265D58930();
  v130(v87, v97);
  v102 = v144;
  v125(v89, v88, v144);
  v103 = swift_allocObject();
  *(v103 + 16) = v93;
  (v131)(v103 + v91, v89, v102);
  v104 = swift_allocObject();
  *(v104 + 16) = sub_265D0EA38;
  *(v104 + 24) = v103;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_265D10F28;
  *(v105 + 24) = v104;
  v133(v87, v101, v97);
  v106 = swift_allocObject();
  v128(v106 + v127, v87, v97);
  v107 = (v106 + v98);
  *v107 = sub_265D10E50;
  v107[1] = v105;

  sub_265D58930();
  v130(v101, v97);
  return v116(v88, v102);
}

uint64_t sub_265D0D7B4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = sub_265D58AC0();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v32);
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) >= 3u)
  {
    sub_265D595F0();
    v17 = sub_265D59DD0();
    v18 = sub_265D5A070();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136446210;
      if (a1)
      {
        v21 = 0xD000000000000010;
      }

      else
      {
        v21 = 0x7665446C61636F6CLL;
      }

      if (a1)
      {
        v22 = 0x8000000265D5FC40;
      }

      else
      {
        v22 = 0xEB00000000656369;
      }

      v23 = sub_265CF4FFC(v21, v22, &v33);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_265C01000, v17, v18, "Unexpected request for distributed session from: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x266770CF0](v20, -1, -1);
      MEMORY[0x266770CF0](v19, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v24 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
    v25 = swift_allocError();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D50348], v24);
    *(swift_allocObject() + 16) = v25;
  }

  else
  {
    v30 = a4;
    v13 = v32;
    v28[1] = a1;
    v29 = a3;
    v14 = off_287780198[0];
    type metadata accessor for SessionConnectionPool();
    v14();
    sub_265D58640();
    off_2877801B0();
    (*(v7 + 16))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v13);
    v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v16 = swift_allocObject();
    (*(v7 + 32))(v16 + v15, v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  }

  return sub_265D58940();
}

uint64_t sub_265D0DC0C(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  v2 = sub_265D58AC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D59470();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v3 + 16))(v5, v12, v2);
  sub_265D59460();
  sub_265D58ED0();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_265D0DDB8(uint64_t *a1, uint64_t a2)
{
  v2 = sub_265D58EB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v3 + 104))(v5, *MEMORY[0x277D4E040], v2);
  sub_265D58130();
  sub_265D58C70();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_265D0DEFC(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v24 - v4;
  v5 = sub_265D58EB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  v13 = *(v10 + 8);
  v26 = v12;
  v27 = v10 + 8;
  v28 = v9;
  v25 = v13;
  v13(v12, v9);
  v29 = v2;
  v14 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  result = v14();
  v33 = *(result + 16);
  v34 = result;
  if (v33)
  {
    v16 = 0;
    v17 = *MEMORY[0x277D4E128];
    v18 = v34 + 40;
    while (v16 < *(v34 + 16))
    {
      ++v16;
      swift_getObjectType();
      (*(v6 + 104))(v8, v17, v5);
      swift_unknownObjectRetain();
      sub_265D58C80();
      swift_unknownObjectRelease();
      result = (*(v6 + 8))(v8, v5);
      v18 += 24;
      if (v33 == v16)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    sub_265D06414();
    v19 = v26;
    sub_265D595E0();
    sub_265D59DC0();
    v25(v19, v28);
    sub_265D58CA0();
    v20 = v30;
    sub_265D58970();
    v21 = v32;
    v22 = sub_265D58960();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    v22(sub_265CA442C, v23);

    return (*(v31 + 8))(v20, v21);
  }

  return result;
}

void sub_265D0E334(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  v8 = *(v5 + 8);
  v8(v7, v4);
  __swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
  sub_265D595E0();
  sub_265D59DC0();
  v8(v7, v4);
  v9 = sub_265D57FE0();
  sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
  v10 = swift_allocError();
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D503A8], v9);
  sub_265D2AAC8(v10, 1, a1);
}

uint64_t sub_265D0E550()
{
  v1 = sub_265D59DE0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_265D595F0();
  sub_265D59DC0();
  (*(v2 + 8))(v4, v1);
  v6 = *(v5 + 392);
  v7 = sub_265D580D0();
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v9;
  sub_265D58AC0();

  return sub_265D58940();
}

uint64_t sub_265D0E6F4(uint64_t a1)
{
  v2 = type metadata accessor for SessionSystem.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D0E750@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_265D58670() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_265D58AC0() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_265D0D7B4(v7, v1 + v4, v8, a1);
}

uint64_t sub_265D0E984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  return sub_265D58930();
}

uint64_t sub_265D0EA38()
{
  v1 = *(sub_265D58AC0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_265D0DC0C(v2, v3);
}

void sub_265D0EA9C(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr))
{
  a3(&v5);
  v4 = v5;
  v6 = 0;
  a1(&v5);

  sub_265CA4470(v4, 0);
}

uint64_t sub_265D0EB50(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 2);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = *a1;
  *(v7 + 48) = v6;

  swift_unknownObjectRetain();

  return sub_265D58930();
}

void sub_265D0EC10(void (*a1)(__int128 *), uint64_t a2, void (*a3)(void **__return_ptr, __int128 *), uint64_t a4, __int128 *a5)
{
  v6 = *(a5 + 2);
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  *&v8 = v10;
  BYTE8(v8) = 0;
  a1(&v8);

  sub_265CA4470(v7, 0);
}

uint64_t sub_265D0ECB4(uint64_t a1)
{
  v1 = sub_265D59DE0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v2 + 8))(v4, v1);
  sub_265D59420();
  LODWORD(v1) = sub_265D593D0();
  v5 = sub_265D58D80();
  notify_set_state(v1, v5);
  sub_265D593C0();
  v6 = sub_265D59EE0();

  notify_post((v6 + 32));
}

uint64_t sub_265D0EE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSystem.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D0EE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSystem.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_265D0EEE0()
{
  result = qword_28003E8D0;
  if (!qword_28003E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E8D0);
  }

  return result;
}

uint64_t sub_265D0EF68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices13SessionSystem_state;
  swift_beginAccess();
  return sub_265D0EE7C(v1 + v3, a1);
}

uint64_t sub_265D0EFC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSystem.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D0F294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a4;
  v133 = a2;
  v129 = a1;
  v4 = sub_265D58EB0();
  v131 = *(v4 - 8);
  v132 = v4;
  MEMORY[0x28223BE20](v4);
  v130 = v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v128 = v107 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  MEMORY[0x28223BE20](v8 - 8);
  v127 = v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  MEMORY[0x28223BE20](v10 - 8);
  v126 = v107 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  MEMORY[0x28223BE20](v12 - 8);
  v125 = v107 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  MEMORY[0x28223BE20](v14 - 8);
  v124 = v107 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  MEMORY[0x28223BE20](v16 - 8);
  v123 = v107 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  MEMORY[0x28223BE20](v18 - 8);
  v122 = v107 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  MEMORY[0x28223BE20](v20 - 8);
  v121 = v107 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  MEMORY[0x28223BE20](v22 - 8);
  v120 = v107 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  MEMORY[0x28223BE20](v24 - 8);
  v144 = v107 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  MEMORY[0x28223BE20](v26 - 8);
  v143 = v107 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  MEMORY[0x28223BE20](v28 - 8);
  v142 = v107 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  MEMORY[0x28223BE20](v30 - 8);
  v141 = v107 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  MEMORY[0x28223BE20](v32 - 8);
  v140 = v107 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  MEMORY[0x28223BE20](v34 - 8);
  v139 = v107 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  MEMORY[0x28223BE20](v36 - 8);
  v138 = v107 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  MEMORY[0x28223BE20](v38 - 8);
  v137 = v107 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  MEMORY[0x28223BE20](v40 - 8);
  v136 = v107 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = v107 - v43;
  v107[1] = v107 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = v107 - v46;
  v107[2] = v107 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = v107 - v49;
  v107[3] = v107 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = v107 - v52;
  v107[4] = v107 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  MEMORY[0x28223BE20](v54 - 8);
  v56 = v107 - v55;
  v109 = v107 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = v107 - v58;
  v110 = v107 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  MEMORY[0x28223BE20](v60 - 8);
  v62 = v107 - v61;
  v111 = v107 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  MEMORY[0x28223BE20](v63 - 8);
  v65 = v107 - v64;
  v112 = v107 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  MEMORY[0x28223BE20](v66 - 8);
  v68 = v107 - v67;
  v113 = v107 - v67;
  v118 = sub_265D58130();
  v119 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = v107 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_265D57ED0();
  v108 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v135 = v107 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D5A030();
  v145 = 1;
  sub_265D57EB0();
  v114 = sub_265D5A4C0();
  v117 = sub_265D589D0();
  v115 = v71;
  v72 = sub_265D58020();
  (*(*(v72 - 8) + 56))(v68, 1, 1, v72);
  v73 = sub_265D58410();
  (*(*(v73 - 8) + 56))(v65, 1, 1, v73);
  v74 = sub_265D58590();
  (*(*(v74 - 8) + 56))(v62, 1, 1, v74);
  v75 = sub_265D58050();
  (*(*(v75 - 8) + 56))(v59, 1, 1, v75);
  v76 = sub_265D58200();
  (*(*(v76 - 8) + 56))(v56, 1, 1, v76);
  v77 = sub_265D58BC0();
  (*(*(v77 - 8) + 56))(v53, 1, 1, v77);
  v78 = sub_265D583E0();
  (*(*(v78 - 8) + 56))(v50, 1, 1, v78);
  v79 = sub_265D581B0();
  (*(*(v79 - 8) + 56))(v47, 1, 1, v79);
  v80 = sub_265D57F50();
  (*(*(v80 - 8) + 56))(v44, 1, 1, v80);
  v81 = sub_265D582A0();
  (*(*(v81 - 8) + 56))(v136, 1, 1, v81);
  v82 = sub_265D58680();
  (*(*(v82 - 8) + 56))(v137, 1, 1, v82);
  v83 = sub_265D58210();
  (*(*(v83 - 8) + 56))(v138, 1, 1, v83);
  v84 = sub_265D57E80();
  (*(*(v84 - 8) + 56))(v139, 1, 1, v84);
  v85 = sub_265D58430();
  (*(*(v85 - 8) + 56))(v140, 1, 1, v85);
  v86 = sub_265D58300();
  (*(*(v86 - 8) + 56))(v141, 1, 1, v86);
  v87 = sub_265D586F0();
  (*(*(v87 - 8) + 56))(v142, 1, 1, v87);
  v88 = sub_265D57E90();
  (*(*(v88 - 8) + 56))(v143, 1, 1, v88);
  v89 = sub_265D581C0();
  (*(*(v89 - 8) + 56))(v144, 1, 1, v89);
  v90 = sub_265D58BB0();
  (*(*(v90 - 8) + 56))(v120, 1, 1, v90);
  v91 = sub_265D585C0();
  (*(*(v91 - 8) + 56))(v121, 1, 1, v91);
  v92 = sub_265D57EA0();
  (*(*(v92 - 8) + 56))(v122, 1, 1, v92);
  v93 = v108;
  v94 = v123;
  v95 = v134;
  (*(v108 + 16))(v123, v135, v134);
  (*(v93 + 56))(v94, 0, 1, v95);
  v96 = sub_265D58240();
  (*(*(v96 - 8) + 56))(v124, 1, 1, v96);
  v97 = sub_265D58400();
  (*(*(v97 - 8) + 56))(v125, 1, 1, v97);
  v98 = sub_265D58600();
  (*(*(v98 - 8) + 56))(v126, 1, 1, v98);
  v99 = sub_265D58630();
  (*(*(v99 - 8) + 56))(v127, 1, 1, v99);
  v100 = sub_265D58B10();
  (*(*(v100 - 8) + 56))(v128, 1, 1, v100);
  sub_265D5A030();
  v101 = v116;
  sub_265D580B0();
  swift_getObjectType();
  v102 = v130;
  v103 = v131;
  v104 = v132;
  (*(v131 + 104))(v130, *MEMORY[0x277D4E040], v132);
  v105 = v118;
  sub_265D58C70();
  (*(v103 + 8))(v102, v104);
  (*(v119 + 8))(v101, v105);
  return (*(v93 + 8))(v135, v134);
}

uint64_t objectdestroy_111Tm()
{
  v1 = sub_265D58AC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 2, v3 | 7);
}

uint64_t sub_265D106E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_265D58AC0();
  v4 = *(v2 + 16);

  return a2(a1, v4);
}

uint64_t objectdestroy_142Tm()
{
  v1 = sub_265D58AC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

void sub_265D10888(uint64_t a1@<X8>)
{
  v3 = *(sub_265D58AC0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v6 = *(v5 + *(v3 + 64));
  __swift_project_boxed_opaque_existential_1((v4 + 176), *(v4 + 200));
  sub_265D26244(v5, v6, a1);
}

uint64_t objectdestroy_171Tm()
{
  v1 = sub_265D58AC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_265D109E0()
{
  v1 = *(sub_265D58AC0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265D050CC(v0 + v2, *(v0 + v3), (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_132Tm(uint64_t a1)
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

id sub_265D10AC8(void *a1)
{
  sub_265D04B60(*(v1 + 24));
  swift_willThrow();
  return a1;
}

uint64_t objectdestroy_35Tm()
{
  v1 = sub_265D58AC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265D10BD0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_265D58AC0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_265D077A8(v4, v5, a1);
}

uint64_t sub_265D10C44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_68Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_265D10E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265D10F80(uint64_t a1, uint64_t a2)
{
  v2 = sub_265D58AC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265D58F20();
    sub_265D1108C(v5);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_265D1108C(uint64_t a1)
{
  v52 = a1;
  v53 = sub_265D58AC0();
  v2 = *(v53 - 8);
  v3 = MEMORY[0x28223BE20](v53);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v51 - v6;
  v8 = sub_265D59DE0();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v51 = v1;
  v17 = off_287780190;
  type metadata accessor for SessionConnectionPool();
  v18 = v17();
  if (v18 > 2u)
  {
LABEL_4:
    sub_265D59600();
    v19 = sub_265D59DD0();
    v20 = sub_265D5A080();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v57 = v22;
      *v21 = 136446210;
      v56 = v18;
      v23 = sub_265D59EC0();
      v25 = sub_265CF4FFC(v23, v24, &v57);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_265C01000, v19, v20, "Unsupported multiplex mode for remote key delivery coordinator: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x266770CF0](v22, -1, -1);
      MEMORY[0x266770CF0](v21, -1, -1);
    }

    (*(v54 + 8))(v11, v55);
    return;
  }

  if (v18)
  {
    if (v18 == 1)
    {
      goto LABEL_4;
    }

    sub_265D59600();
    v37 = v2;
    v38 = *(v2 + 16);
    v39 = v53;
    v38(v5, v52, v53);
    v40 = sub_265D59DD0();
    v41 = sub_265D5A080();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v57 = v43;
      *v42 = 136446210;
      sub_265D1DF34(&qword_28003E7E8, MEMORY[0x277D53AE0], MEMORY[0x277D53AF0]);
      v44 = sub_265D5A3B0();
      v46 = v45;
      (*(v37 + 8))(v5, v39);
      v47 = sub_265CF4FFC(v44, v46, &v57);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_265C01000, v40, v41, "Session %{public}s activated on participant client, waiting for connection pool to update for Remote Key Delivery", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x266770CF0](v43, -1, -1);
      MEMORY[0x266770CF0](v42, -1, -1);
    }

    else
    {

      (*(v37 + 8))(v5, v39);
    }

    (*(v54 + 8))(v14, v55);
  }

  else
  {
    sub_265D59600();
    v26 = v2;
    v27 = *(v2 + 16);
    v28 = v53;
    v27(v7, v52, v53);
    v29 = sub_265D59DD0();
    v30 = sub_265D5A080();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v57 = v32;
      *v31 = 136446210;
      sub_265D1DF34(&qword_28003E7E8, MEMORY[0x277D53AE0], MEMORY[0x277D53AF0]);
      v33 = sub_265D5A3B0();
      v35 = v34;
      (*(v26 + 8))(v7, v28);
      v36 = sub_265CF4FFC(v33, v35, &v57);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_265C01000, v29, v30, "Session %{public}s activated on display host, making reverse connection for Remote Key Delivery", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266770CF0](v32, -1, -1);
      MEMORY[0x266770CF0](v31, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v7, v28);
    }

    (*(v54 + 8))(v16, v55);
    v48 = *(v51 + 184);
    v49 = *(*v48 + *MEMORY[0x277D841D0] + 16);
    v50 = (*(*v48 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v48 + v50));
    sub_265D1DF7C((v48 + v49));
    os_unfair_lock_unlock((v48 + v50));
  }
}

uint64_t sub_265D116E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D58AC0();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265D59040();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265D59DE0();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  (*(v8 + 16))(v10, a1, v7);
  v14 = sub_265D59DD0();
  v15 = sub_265D5A080();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v15;
    v17 = v16;
    v27 = swift_slowAlloc();
    v33[0] = v27;
    *v17 = 136446210;
    sub_265D59020();
    sub_265D1DF34(&qword_28003E7E8, MEMORY[0x277D53AE0], MEMORY[0x277D53AF0]);
    v18 = sub_265D5A3B0();
    v29 = a2;
    v20 = v19;
    (*(v30 + 8))(v6, v4);
    (*(v8 + 8))(v10, v7);
    v21 = sub_265CF4FFC(v18, v20, v33);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_265C01000, v14, v28, "Deactivating Remote Key Delivery Participant Coordinator for %{public}s", v17, 0xCu);
    v22 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x266770CF0](v22, -1, -1);
    MEMORY[0x266770CF0](v17, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  (*(v31 + 8))(v13, v32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = *(result + 184);
    v25 = *(*v24 + *MEMORY[0x277D841D0] + 16);
    v26 = (*(*v24 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v24 + v26));
    sub_265D136E0((v24 + v25));
    os_unfair_lock_unlock((v24 + v26));
  }

  return result;
}

uint64_t sub_265D11AE4(uint64_t a1)
{
  v1 = sub_265D59DE0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  v5 = sub_265D59DD0();
  v6 = sub_265D5A080();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_265C01000, v5, v6, "Deactivating Remote Key Delivery Participant Coordinator for distributed session", v7, 2u);
    MEMORY[0x266770CF0](v7, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 184);
    v10 = *(*v9 + *MEMORY[0x277D841D0] + 16);
    v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v9 + v11));
    sub_265D136E0((v9 + v10));
    os_unfair_lock_unlock((v9 + v11));
  }

  return result;
}

uint64_t sub_265D11CB8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265D11D10();
  }

  return result;
}

void sub_265D11D10()
{
  v1 = sub_265D59DE0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = off_287780190;
  type metadata accessor for SessionConnectionPool();
  v6 = v5();
  if (((1 << v6) & 0x1A) != 0)
  {
    v7 = v6;
    sub_265D59600();
    v8 = sub_265D59DD0();
    v9 = sub_265D5A080();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      v18[15] = v7;
      v12 = sub_265D59EC0();
      v14 = sub_265CF4FFC(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_265C01000, v8, v9, "Unsupported multiplex mode for remote key delivery coordinator to transition to connecting: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x266770CF0](v11, -1, -1);
      MEMORY[0x266770CF0](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v15 = *(v0 + 184);
    v16 = *(*v15 + *MEMORY[0x277D841D0] + 16);
    v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v15 + v17));
    sub_265D1D8DC((v15 + v16));

    os_unfair_lock_unlock((v15 + v17));
  }
}

uint64_t sub_265D11FA0(char *a1, uint64_t a2)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_265D1D0DC(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_265D1D140(v9);
  }

  sub_265D1D140(a1);
  v11 = *v9;
  sub_265D59600();
  sub_265D59DC0();
  (*(v4 + 8))(v6, v3);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E918, &qword_265D5D900) + 48);
  *a1 = v11;
  v13 = sub_265D58520();
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  swift_storeEnumTagMultiPayload();

  sub_265D59160();
}

uint64_t sub_265D121E8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E208, &qword_265D5D7D0);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v2[9] = *(v4 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = sub_265D59DE0();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D12330, 0, 0);
}

uint64_t sub_265D12330(uint64_t a1)
{
  sub_265D59600();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_265C01000, v2, v3, "Brokering remote key delivery connection...", v4, 2u);
    MEMORY[0x266770CF0](v4, -1, -1);
  }

  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[13];
  v9 = v1[10];
  v8 = v1[11];
  v10 = v1[8];
  v21 = v1[9];
  v22 = v1[12];
  v12 = v1[6];
  v11 = v1[7];

  (*(v5 + 8))(v6, v7);
  sub_265D12884(v8);
  (*(v10 + 16))(v9, v8, v11);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v9, v11);
  v15 = (v14 + ((v21 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_265D1D994;
  v15[1] = v12;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
  sub_265D58930();
  v17 = *(v10 + 8);
  v1[16] = v17;
  v1[17] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v8, v11);
  v18 = swift_task_alloc();
  v1[18] = v18;
  *(v18 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v18 + 24) = 68;
  *(v18 + 32) = 2;
  *(v18 + 40) = 131;
  *(v18 + 48) = v22;
  v19 = swift_task_alloc();
  v1[19] = v19;
  *v19 = v1;
  v19[1] = sub_265D12600;

  return MEMORY[0x2822008A0](v1 + 2, 0, 0, 0xD000000000000013, 0x8000000265D61700, sub_265D1D9C4, v18, v16);
}

uint64_t sub_265D12600()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D127E4, 0, 0);
  }

  else
  {
    v4 = *(v2 + 128);
    v5 = *(v2 + 96);
    v6 = *(v2 + 56);
    v7 = *(v2 + 32);
    v8 = *(v2 + 40);
    v11 = *(v2 + 16);

    *v8 = v11;
    *(v8 + 16) = v7;
    v4(v5, v6);

    v9 = *(v3 + 8);

    return v9();
  }
}

uint64_t sub_265D127E4()
{
  (*(v0 + 128))(*(v0 + 96), *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265D12884@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_265D59DE0();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_265D59BA0();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = off_287780190;
  type metadata accessor for SessionConnectionPool();
  v14 = v13();
  if (v14 > 2)
  {
    goto LABEL_4;
  }

  if (v14)
  {
    if (v14 != 1)
    {
      v30 = (off_287780200)();
      if (v30)
      {
        v33 = v30;
        v34 = v31;
        v35 = v32;
        v36 = swift_allocObject();
        v36[2] = v33;
        v36[3] = v34;
        v36[4] = v35;
      }

      else
      {
        v40 = sub_265D58580();
        sub_265D1DF34(&qword_28003E220, MEMORY[0x277D52688], MEMORY[0x277D52690]);
        v41 = swift_allocError();
        (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D52628], v40);
        *(swift_allocObject() + 16) = v41;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
      goto LABEL_5;
    }

LABEL_4:
    v15 = sub_265D58580();
    sub_265D1DF34(&qword_28003E220, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v16 = swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D52620], v15);
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
LABEL_5:

    return sub_265D58940();
  }

  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  v19 = off_28777D8D0[0];
  v20 = type metadata accessor for RemoteParticipantHandshakeRegistry();
  v19(3, v20, &off_28777D8A8);
  v21 = v47;
  v22 = v48;
  if ((*(v47 + 48))(v6, 1, v48) == 1)
  {
    sub_265CA4AE8(v6, &qword_28003E6C8, &unk_265D5C9D0);
    v23 = v44;
    sub_265D59600();
    v24 = sub_265D59DD0();
    v25 = sub_265D5A070();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_265C01000, v24, v25, "Brokering key delivery, but no incoming handshake request recorded in registry", v26, 2u);
      MEMORY[0x266770CF0](v26, -1, -1);
    }

    v45[1](v23, v46);
    v27 = sub_265D58580();
    sub_265D1DF34(&qword_28003E220, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D52670], v27);
    *(swift_allocObject() + 16) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    return sub_265D58940();
  }

  else
  {
    v37 = *(v21 + 32);
    v44 = (v21 + 32);
    v45 = v37;
    (v37)(v12, v6, v22);
    __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
    sub_265D59D20();
    v46 = v50[4];
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    (*(v21 + 16))(v10, v12, v22);
    v38 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v1;
    (v45)(v39 + v38, v10, v22);

    sub_265D59CA0();

    (*(v21 + 8))(v12, v22);
    return __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }
}

void sub_265D13024(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D59DE0();
  v56 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v52 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v52 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  v16 = sub_265D58580();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24) == 1)
  {
    v54 = a2;
    v55 = v4;
    v20 = *a1;
    v21 = *(a1 + 8);
    v22 = *(a1 + 16);
    v59 = v20;
    sub_265D1DB44(v20, v21, v22, 1);
    v23 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
    if (swift_dynamicCast())
    {
      v53 = v21;
      v24 = (*(v17 + 88))(v19, v16);
      if (v24 == *MEMORY[0x277D52620])
      {
        sub_265D59600();

        v25 = sub_265D59DD0();
        v26 = sub_265D5A070();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v52 = v22;
          v29 = v28;
          v58[0] = v28;
          *v27 = 136446210;
          v30 = off_287780190;
          type metadata accessor for SessionConnectionPool();
          v57 = v30();
          v31 = sub_265D59EC0();
          v33 = sub_265CF4FFC(v31, v32, v58);

          *(v27 + 4) = v33;
          _os_log_impl(&dword_265C01000, v25, v26, "We are in the wrong multiplex mode %{public}s to be used with the key delivery connection broker", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          MEMORY[0x266770CF0](v29, -1, -1);
          MEMORY[0x266770CF0](v27, -1, -1);

          sub_265CA4010(v20, v53, v52, 1);
        }

        else
        {
          sub_265CA4010(v20, v53, v22, 1);
        }

        (*(v56 + 8))(v15, v55);
LABEL_23:

        return;
      }

      if (v24 == *MEMORY[0x277D52628])
      {
        v34 = v22;
        sub_265D59600();
        v35 = sub_265D59DD0();
        v36 = sub_265D5A070();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_265C01000, v35, v36, "Unable to find an existing remote participant connection", v37, 2u);
          MEMORY[0x266770CF0](v37, -1, -1);

          sub_265CA4010(v20, v53, v34, 1);
        }

        else
        {
          sub_265CA4010(v20, v53, v34, 1);
        }

        (*(v56 + 8))(v10, v55);
        goto LABEL_23;
      }

      if (v24 == *MEMORY[0x277D52670])
      {
        sub_265D59600();
        v38 = sub_265D59DD0();
        v39 = sub_265D5A070();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = v22;
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_265C01000, v38, v39, "Unable to find a remote display clien for the display host", v41, 2u);
          MEMORY[0x266770CF0](v41, -1, -1);

          sub_265CA4010(v20, v53, v40, 1);
        }

        else
        {
          sub_265CA4010(v20, v53, v22, 1);
        }

        (*(v56 + 8))(v13, v55);
        goto LABEL_23;
      }

      (*(v17 + 8))(v19, v16);
      v21 = v53;
    }

    sub_265D59600();
    v42 = v20;
    v43 = sub_265D59DD0();
    v44 = sub_265D5A070();
    sub_265CA4010(v20, v21, v22, 1);
    v45 = v21;
    if (os_log_type_enabled(v43, v44))
    {
      v46 = v22;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v59 = v48;
      *v47 = 136446210;
      swift_getErrorValue();
      v49 = MEMORY[0x2667704D0](v58[2], v58[3]);
      v51 = sub_265CF4FFC(v49, v50, &v59);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_265C01000, v43, v44, "Error brokering remote key delivery participant connection: %{public}s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x266770CF0](v48, -1, -1);
      MEMORY[0x266770CF0](v47, -1, -1);

      sub_265CA4010(v20, v45, v46, 1);
    }

    else
    {
      sub_265CA4010(v20, v21, v22, 1);
    }

    (*(v56 + 8))(v7, v55);
  }
}

uint64_t sub_265D136E0(uint64_t *a1)
{
  v92 = sub_265D58F70();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v93 = &v84 - v4;
  v5 = sub_265D58520();
  v105 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v99 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v96 = &v84 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v98 = &v84 - v11;
  MEMORY[0x28223BE20](v10);
  v104 = &v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8F8, "vj");
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v84 - v17;
  v19 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_265D59DE0();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v100 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v97 = &v84 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v84 - v28;
  sub_265D59600();
  sub_265D59DC0();
  v30 = *(v23 + 8);
  v106 = v29;
  v102 = v30;
  v103 = v22;
  v101 = v23 + 8;
  v30(v29, v22);
  v108 = a1;
  sub_265C959E0(a1, v21);
  v107 = v19;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v32 = *v21;
  if (EnumCaseMultiPayload == 1)
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E918, &qword_265D5D900);
    sub_265D1D19C(v21 + *(v33 + 48), v18);
    sub_265C97870(v18, v16, &qword_28003E8F8, "vj");
    v34 = v105;
    if ((*(v105 + 48))(v16, 1, v5) == 1)
    {
      sub_265CA4AE8(v18, &qword_28003E8F8, "vj");

      v35 = v16;
LABEL_12:
      sub_265CA4AE8(v35, &qword_28003E8F8, "vj");
      goto LABEL_15;
    }

    v36 = v104;
    (*(v34 + 32))(v104, v16, v5);
    v37 = v97;
    sub_265D59600();
    v38 = *(v34 + 16);
    v39 = v98;
    v38(v98, v36, v5);
    v40 = sub_265D59DD0();
    v85 = sub_265D5A070();
    v41 = os_log_type_enabled(v40, v85);
    v88 = v18;
    v87 = v34 + 16;
    v86 = v38;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v89 = v5;
      v43 = v42;
      v84 = swift_slowAlloc();
      v110[0] = v84;
      *v43 = 141558274;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2080;
      v38(v96, v39, v89);
      v44 = sub_265D59EC0();
      v45 = v37;
      v46 = v32;
      v48 = v47;
      v98 = *(v34 + 8);
      (v98)(v39, v89);
      v49 = v104;
      v50 = sub_265CF4FFC(v44, v48, v110);
      v32 = v46;

      *(v43 + 14) = v50;
      _os_log_impl(&dword_265C01000, v40, v85, "Found an existing server playback context, releasing %{mask.hash}s", v43, 0x16u);
      v51 = v84;
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x266770CF0](v51, -1, -1);
      v5 = v89;
      MEMORY[0x266770CF0](v43, -1, -1);

      v102(v45, v103);
      v52 = v99;
    }

    else
    {

      v98 = *(v34 + 8);
      (v98)(v39, v5);
      v102(v37, v103);
      v52 = v99;
      v49 = v104;
    }

    v53 = v109;
    sub_265D59140();
    v109 = v53;
    v54 = v100;
    if (!v53)
    {
      v103 = v110[1];
      swift_getObjectType();
      v75 = v91;
      v76 = v90;
      v77 = v92;
      (*(v91 + 104))(v90, *MEMORY[0x277D4E4C8], v92);
      v78 = v93;
      sub_265D58C50();
      swift_unknownObjectRelease();
      (*(v75 + 8))(v76, v77);
      v79 = v95;
      v80 = sub_265D58960();
      v81 = swift_allocObject();
      *(v81 + 16) = 0;
      *(v81 + 24) = 0;
      v80(sub_265CA4BF4, v81);

      (*(v94 + 8))(v78, v79);
      (v98)(v49, v5);
      v35 = v88;
      goto LABEL_12;
    }

    v99 = v32;
    sub_265D59600();
    v55 = v49;
    v56 = v86;
    v86(v52, v55, v5);
    v57 = v109;
    v58 = v109;
    v59 = sub_265D59DD0();
    v60 = sub_265D5A070();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v110[0] = v97;
      *v61 = 141558530;
      *(v61 + 4) = 1752392040;
      *(v61 + 12) = 2080;
      v56(v96, v52, v5);
      v62 = sub_265D59EC0();
      v63 = v5;
      v64 = v109;
      v66 = v65;
      v105 += 8;
      v67 = v52;
      v68 = v98;
      (v98)(v67, v5);
      v69 = sub_265CF4FFC(v62, v66, v110);

      *(v61 + 14) = v69;
      *(v61 + 22) = 2082;
      v110[5] = v64;
      v70 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
      v71 = sub_265D59EC0();
      v73 = sub_265CF4FFC(v71, v72, v110);

      *(v61 + 24) = v73;
      _os_log_impl(&dword_265C01000, v59, v60, "Unable to release existing server playback context %{mask.hash}s on transition to idle: %{public}s", v61, 0x20u);
      v74 = v97;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v74, -1, -1);
      MEMORY[0x266770CF0](v61, -1, -1);

      v102(v100, v103);
      v68(v104, v63);
    }

    else
    {

      v82 = v98;
      (v98)(v52, v5);
      v102(v54, v103);
      v82(v104, v5);
    }

    sub_265CA4AE8(v88, &qword_28003E8F8, "vj");
    v109 = 0;
  }

  else
  {
    sub_265D59120();
  }

LABEL_15:
  sub_265D59600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDF8, &qword_265D5AFA8);
  swift_allocObject();
  *v108 = sub_265D59150();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_265D14284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v91 = a3;
  v92 = a4;
  v90 = a2;
  v78 = a1;
  v93 = a6;
  v75 = sub_265D583D0();
  v7 = *(v75 - 8);
  v74 = *(v7 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E298, &qword_265D5B620);
  v9 = *(v80 - 8);
  v79 = *(v9 + 64);
  v10 = MEMORY[0x28223BE20](v80);
  v77 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v69 - v12;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E288, &qword_265D5B610);
  v83 = *(v85 - 8);
  v82 = *(v83 + 64);
  v13 = MEMORY[0x28223BE20](v85);
  v81 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v76 = &v69 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v88 = *(v16 - 8);
  v89 = v16;
  v87 = *(v88 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v86 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v84 = &v69 - v19;
  v20 = sub_265D59DE0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_265D58870();
  v71 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59B70();
  v70 = sub_265D58860();
  v69 = v28;
  (*(v25 + 8))(v27, v24);
  sub_265D59600();
  sub_265D59DC0();
  (*(v21 + 8))(v23, v20);
  v29 = sub_265D58B20();
  v31 = v30;
  __swift_project_boxed_opaque_existential_1((a5 + 136), *(a5 + 160));
  v32 = v72;
  sub_265D59A60();
  v33 = v73;
  v34 = v75;
  (*(v7 + 16))(v73, v78, v75);
  v35 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v36 = (v74 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v29;
  *(v37 + 24) = v31;
  (*(v7 + 32))(v37 + v35, v33, v34);
  v38 = (v37 + v36);
  v39 = v69;
  *v38 = v70;
  v38[1] = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_265D1DCDC;
  *(v40 + 24) = v37;
  v41 = v77;
  v42 = v80;
  (*(v9 + 16))(v77, v32, v80);
  v43 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v44 = (v79 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v9 + 32))(v45 + v43, v41, v42);
  v46 = (v45 + v44);
  *v46 = sub_265D1DD8C;
  v46[1] = v40;
  v47 = v76;
  sub_265D58930();
  (*(v9 + 8))(v32, v42);
  v48 = swift_allocObject();
  v49 = v91;
  *(v48 + 2) = v90;
  *(v48 + 3) = v49;
  *(v48 + 4) = v92;
  v50 = v83;
  v51 = v81;
  v52 = v85;
  (*(v83 + 16))(v81, v47, v85);
  v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v54 = (v82 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  (*(v50 + 32))(v55 + v53, v51, v52);
  v56 = (v55 + v54);
  *v56 = sub_265D1DDBC;
  v56[1] = v48;
  swift_unknownObjectRetain();
  v57 = v84;
  sub_265D58930();
  (*(v50 + 8))(v47, v52);
  v58 = swift_allocObject();
  *(v58 + 16) = sub_265D10F58;
  *(v58 + 24) = 0;
  v59 = v88;
  v60 = v89;
  v61 = v86;
  v62 = v57;
  (*(v88 + 16))(v86, v57, v89);
  v63 = v59;
  v64 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v65 = (v87 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  (*(v63 + 32))(v66 + v64, v61, v60);
  v67 = (v66 + v65);
  *v67 = sub_265CC49C0;
  v67[1] = v58;
  sub_265D58930();
  return (*(v63 + 8))(v62, v60);
}

uint64_t sub_265D14AE4@<X0>(uint64_t a1@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X8>)
{
  v12[6] = a1;
  v12[4] = a6;
  v12[5] = a4;
  v12[3] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C0, &qword_265D5C9C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v12 - v7;
  sub_265D58B40();
  v13 = sub_265D58760();
  sub_265D1DEE0();
  sub_265D57FC0();
  v12[2] = v12[8];
  sub_265D59990();
  v12[1] = v9;
  sub_265D59C80();
  sub_265D59C90();

  sub_265D57F10();
  v10 = sub_265D57F40();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_265D583B0();

  sub_265D5A030();
  return sub_265D58850();
}

uint64_t sub_265D14C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_265D58F70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v4 + 104))(v6, *MEMORY[0x277D4E858], v3);
  sub_265D58870();
  sub_265D58C50();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_265D14DD4()
{
  v0 = sub_265D59DE0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  v4 = sub_265D59DD0();
  v5 = sub_265D5A080();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_265C01000, v4, v5, "Remote key delivery handshake succeeded", v6, 2u);
    MEMORY[0x266770CF0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_265D14F08()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State(uint64_t a1)
{
  result = qword_2813B6E68;
  if (!qword_2813B6E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265D15030(uint64_t a1)
{
  sub_265D150A4();
  if (v1 <= 0x3F)
  {
    sub_265D15150(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_265D150A4()
{
  if (!qword_2813B8FB8)
  {
    sub_265D150EC(0);
    if (!v1)
    {
      atomic_store(v0, &qword_2813B8FB8);
    }
  }
}

void sub_265D150EC(uint64_t a1)
{
  if (!qword_2813B8FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28003E800, &qword_265D5B5A0);
    v1 = sub_265D59170();
    if (!v2)
    {
      atomic_store(v1, &qword_2813B8FB0);
    }
  }
}

void sub_265D15150(uint64_t a1)
{
  if (!qword_2813B8FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003DDF8, &qword_265D5AFA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003E8F8, "vj");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813B8FC0);
    }
  }
}

uint64_t sub_265D151DC(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_265D58F70();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C8, &unk_265D5B650);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State(0);
  v2[17] = swift_task_alloc();
  v5 = sub_265D59DE0();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D1539C, 0, 0);
}

uint64_t sub_265D1539C(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[18];
  v4 = v1[19];
  v5 = v1[17];
  v6 = v1[9];
  sub_265D59600();
  sub_265D59DC0();
  v7 = *(v4 + 8);
  v1[22] = v7;
  v1[23] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  v8 = *(v6 + 184);
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_265D1D0DC(v8 + v9, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v1[24] = *v5;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = v1[17];
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E918, &qword_265D5D900);
    sub_265CA4AE8(v12 + *(v13 + 48), &qword_28003E8F8, "vj");
  }

  os_unfair_lock_unlock((v8 + v10));
  v14 = swift_task_alloc();
  v1[25] = v14;
  *v14 = v1;
  v14[1] = sub_265D1556C;

  return MEMORY[0x2821AEF08](v1 + 2);
}

uint64_t sub_265D1556C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_265D15C60;
  }

  else
  {

    v2 = sub_265D15688;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265D15688(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 16);
  *(v1 + 216) = v2;
  v25 = *(v1 + 24);
  sub_265D59600();
  swift_unknownObjectRetain();
  v3 = sub_265D59DD0();
  v4 = sub_265D5A080();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v24 = *(v1 + 176);
    v5 = *(v1 + 160);
    v6 = *(v1 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136446210;
    *(v1 + 40) = v2;
    *(v1 + 48) = v25;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    v9 = sub_265D59EC0();
    v11 = sub_265CF4FFC(v9, v10, &v26);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_265C01000, v3, v4, "Requesting key certificate over %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266770CF0](v8, -1, -1);
    MEMORY[0x266770CF0](v7, -1, -1);

    v24(v5, v6);
  }

  else
  {
    v12 = *(v1 + 176);
    v13 = *(v1 + 160);
    v14 = *(v1 + 144);

    v12(v13, v14);
  }

  v15 = *(v1 + 120);
  v17 = *(v1 + 88);
  v16 = *(v1 + 96);
  v18 = *(v1 + 80);
  swift_getObjectType();
  (*(v17 + 104))(v16, *MEMORY[0x277D4E830], v18);
  v19 = sub_265D58490();
  sub_265D58C60();
  (*(v17 + 8))(v16, v18);
  v20 = swift_task_alloc();
  *(v1 + 224) = v20;
  *(v20 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v20 + 24) = 68;
  *(v20 + 32) = 2;
  *(v20 + 40) = 233;
  *(v20 + 48) = v15;
  v21 = swift_task_alloc();
  *(v1 + 232) = v21;
  *v21 = v1;
  v21[1] = sub_265D159A0;
  v22 = *(v1 + 64);

  return MEMORY[0x2822008A0](v22, 0, 0, 0xD000000000000013, 0x8000000265D61700, sub_265D1D7D4, v20, v19);
}

uint64_t sub_265D159A0()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_265D15B9C;
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v3 = sub_265D15AF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265D15AF0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265D15B9C()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  swift_unknownObjectRelease();

  v1 = v0[1];

  return v1();
}

uint64_t sub_265D15C60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265D15D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_265D58F70();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2B8, &qword_265D5B640);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State(0);
  v3[18] = swift_task_alloc();
  v6 = sub_265D59DE0();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D15ECC, 0, 0);
}

uint64_t sub_265D15ECC(uint64_t a1)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  v5 = *(v1 + 144);
  v6 = *(v1 + 72);
  sub_265D59600();
  sub_265D59DC0();
  v7 = *(v4 + 8);
  *(v1 + 184) = v7;
  *(v1 + 192) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  v8 = *(v6 + 184);
  *(v1 + 200) = v8;
  v9 = *v8;
  v10 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  *(v1 + 208) = v10;
  v11 = *(v9 + 48);
  *(v1 + 272) = v11;
  v12 = (v11 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v12));
  sub_265D1D0DC(v8 + v10, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *(v1 + 216) = *v5;
  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(v1 + 144);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E918, &qword_265D5D900);
    sub_265CA4AE8(v14 + *(v15 + 48), &qword_28003E8F8, "vj");
  }

  os_unfair_lock_unlock((v8 + v12));
  v16 = swift_task_alloc();
  *(v1 + 224) = v16;
  *v16 = v1;
  v16[1] = sub_265D160A8;

  return MEMORY[0x2821AEF08](v1 + 16);
}

uint64_t sub_265D160A8()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_265D16870;
  }

  else
  {

    v2 = sub_265D161C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265D161C4(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 16);
  *(v1 + 240) = v2;
  v25 = *(v1 + 24);
  sub_265D59600();
  swift_unknownObjectRetain();
  v3 = sub_265D59DD0();
  v4 = sub_265D5A080();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v24 = *(v1 + 184);
    v5 = *(v1 + 168);
    v6 = *(v1 + 152);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136446210;
    *(v1 + 40) = v2;
    *(v1 + 48) = v25;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    v9 = sub_265D59EC0();
    v11 = sub_265CF4FFC(v9, v10, &v26);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_265C01000, v3, v4, "Requesting key context over %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266770CF0](v8, -1, -1);
    MEMORY[0x266770CF0](v7, -1, -1);

    v24(v5, v6);
  }

  else
  {
    v12 = *(v1 + 184);
    v13 = *(v1 + 168);
    v14 = *(v1 + 152);

    v12(v13, v14);
  }

  v15 = *(v1 + 128);
  v17 = *(v1 + 96);
  v16 = *(v1 + 104);
  v18 = *(v1 + 88);
  swift_getObjectType();
  (*(v17 + 104))(v16, *MEMORY[0x277D4E418], v18);
  sub_265D58520();
  v19 = sub_265D57E60();
  sub_265D58C40();
  (*(v17 + 8))(v16, v18);
  v20 = swift_task_alloc();
  *(v1 + 248) = v20;
  *(v20 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v20 + 24) = 68;
  *(v20 + 32) = 2;
  *(v20 + 40) = 243;
  *(v20 + 48) = v15;
  v21 = swift_task_alloc();
  *(v1 + 256) = v21;
  *v21 = v1;
  v21[1] = sub_265D16500;
  v22 = *(v1 + 64);

  return MEMORY[0x2822008A0](v22, 0, 0, 0xD000000000000013, 0x8000000265D61700, sub_265D1DF98, v20, v19);
}

uint64_t sub_265D16500()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {

    v3 = sub_265D167AC;
  }

  else
  {
    v5 = v2[15];
    v4 = v2[16];
    v6 = v2[14];

    (*(v5 + 8))(v4, v6);
    v3 = sub_265D16658;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_265D16658()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 80);
  v5 = (*(v0 + 272) + 3) & 0x1FFFFFFFCLL;
  *(swift_task_alloc() + 16) = v4;
  os_unfair_lock_lock((v3 + v5));
  sub_265D1D564((v3 + v2));
  if (v1)
  {
    v6 = (*(v0 + 200) + ((*(v0 + 272) + 3) & 0x1FFFFFFFCLL));

    os_unfair_lock_unlock(v6);
  }

  else
  {
    os_unfair_lock_unlock((*(v0 + 200) + ((*(v0 + 272) + 3) & 0x1FFFFFFFCLL)));
    swift_unknownObjectRelease();

    v7 = *(v0 + 8);

    v7();
  }
}

uint64_t sub_265D167AC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  swift_unknownObjectRelease();

  v1 = v0[1];

  return v1();
}

uint64_t sub_265D16870()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265D16918(char *a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_265D58520();
  v40 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = sub_265D59DE0();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8F8, "vj");
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - v16;
  sub_265D1D0DC(a1, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_265D1D140(v14);
  }

  v18 = *v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E918, &qword_265D5D900);
  sub_265D1D19C(v14 + *(v36 + 48), v17);
  if ((*(v40 + 48))(v17, 1, v3) == 1)
  {
    v34 = v18;
    sub_265D1D140(a1);
    sub_265D59600();
    v35 = *(v40 + 16);
    v35(v8, v39, v3);
    v19 = sub_265D59DD0();
    v33 = sub_265D5A080();
    if (os_log_type_enabled(v19, v33))
    {
      v20 = swift_slowAlloc();
      v32 = v19;
      v21 = v20;
      v31 = swift_slowAlloc();
      v41 = v31;
      *v21 = 141558274;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2080;
      v35(v6, v8, v3);
      v30 = sub_265D59EC0();
      v23 = v22;
      (*(v40 + 8))(v8, v3);
      v24 = sub_265CF4FFC(v30, v23, &v41);

      *(v21 + 14) = v24;
      v25 = v32;
      _os_log_impl(&dword_265C01000, v32, v33, "Capturing first playback context: %{mask.hash}s", v21, 0x16u);
      v26 = v31;
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x266770CF0](v26, -1, -1);
      MEMORY[0x266770CF0](v21, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v8, v3);
    }

    (*(v37 + 8))(v11, v38);
    sub_265CA4AE8(v17, &qword_28003E8F8, "vj");
    v28 = *(v36 + 48);
    v29 = v35;
    *a1 = v34;
    v29(&a1[v28], v39, v3);
    (*(v40 + 56))(&a1[v28], 0, 1, v3);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {

    return sub_265CA4AE8(v17, &qword_28003E8F8, "vj");
  }
}

uint64_t sub_265D16DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_265D58F70();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2B8, &qword_265D5B640);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State(0);
  v3[18] = swift_task_alloc();
  v6 = sub_265D59DE0();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D16F8C, 0, 0);
}

uint64_t sub_265D16F8C(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[18];
  v6 = v1[9];
  sub_265D59600();
  sub_265D59DC0();
  v7 = *(v4 + 8);
  v1[23] = v7;
  v1[24] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  v8 = *(v6 + 184);
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_265D1D0DC(v8 + v9, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v1[25] = *v5;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = v1[18];
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E918, &qword_265D5D900);
    sub_265CA4AE8(v12 + *(v13 + 48), &qword_28003E8F8, "vj");
  }

  os_unfair_lock_unlock((v8 + v10));
  v14 = swift_task_alloc();
  v1[26] = v14;
  *v14 = v1;
  v14[1] = sub_265D1715C;

  return MEMORY[0x2821AEF08](v1 + 2);
}

uint64_t sub_265D1715C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_265D17874;
  }

  else
  {

    v2 = sub_265D17278;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265D17278(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 16);
  *(v1 + 224) = v2;
  v25 = *(v1 + 24);
  sub_265D59600();
  swift_unknownObjectRetain();
  v3 = sub_265D59DD0();
  v4 = sub_265D5A080();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v24 = *(v1 + 184);
    v5 = *(v1 + 168);
    v6 = *(v1 + 152);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136446210;
    *(v1 + 40) = v2;
    *(v1 + 48) = v25;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    v9 = sub_265D59EC0();
    v11 = sub_265CF4FFC(v9, v10, &v26);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_265C01000, v3, v4, "Requesting key context renewal over %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266770CF0](v8, -1, -1);
    MEMORY[0x266770CF0](v7, -1, -1);

    v24(v5, v6);
  }

  else
  {
    v12 = *(v1 + 184);
    v13 = *(v1 + 168);
    v14 = *(v1 + 152);

    v12(v13, v14);
  }

  v15 = *(v1 + 128);
  v17 = *(v1 + 96);
  v16 = *(v1 + 104);
  v18 = *(v1 + 88);
  swift_getObjectType();
  (*(v17 + 104))(v16, *MEMORY[0x277D4E448], v18);
  sub_265D58520();
  v19 = sub_265D57E60();
  sub_265D58C40();
  (*(v17 + 8))(v16, v18);
  v20 = swift_task_alloc();
  *(v1 + 232) = v20;
  *(v20 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v20 + 24) = 68;
  *(v20 + 32) = 2;
  *(v20 + 40) = 262;
  *(v20 + 48) = v15;
  v21 = swift_task_alloc();
  *(v1 + 240) = v21;
  *v21 = v1;
  v21[1] = sub_265D175B4;
  v22 = *(v1 + 64);

  return MEMORY[0x2822008A0](v22, 0, 0, 0xD000000000000013, 0x8000000265D61700, sub_265D1D424, v20, v19);
}

uint64_t sub_265D175B4()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_265D177B0;
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v3 = sub_265D17704;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265D17704()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265D177B0()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  swift_unknownObjectRelease();

  v1 = v0[1];

  return v1();
}

uint64_t sub_265D17874()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265D1791C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_265D58F70();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_265D59DE0();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D17AA4, 0, 0);
}

uint64_t sub_265D17AA4()
{
  v30 = v0;
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 48) + 184);
  *(swift_task_alloc() + 16) = v1;
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_265D1D018((v2 + v3), &v28);
  os_unfair_lock_unlock((v2 + v4));
  v5 = v28;
  *(v0 + 136) = v28;
  v27 = v29;

  sub_265D59600();
  swift_unknownObjectRetain();
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  swift_unknownObjectRelease();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v11 = *(v0 + 112);
  if (v8)
  {
    v26 = *(v0 + 128);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136446210;
    *(v0 + 16) = v5;
    *(v0 + 24) = v27;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    v14 = sub_265D59EC0();
    v16 = sub_265CF4FFC(v14, v15, &v28);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_265C01000, v6, v7, "Requesting key context release over %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266770CF0](v13, -1, -1);
    MEMORY[0x266770CF0](v12, -1, -1);

    (*(v9 + 8))(v26, v11);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v17 = *(v0 + 104);
  v19 = *(v0 + 72);
  v18 = *(v0 + 80);
  v20 = *(v0 + 64);
  swift_getObjectType();
  (*(v19 + 104))(v18, *MEMORY[0x277D4E4C8], v20);
  sub_265D58520();
  sub_265D58C50();
  (*(v19 + 8))(v18, v20);
  v21 = swift_task_alloc();
  *(v0 + 144) = v21;
  *(v21 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v21 + 24) = 68;
  *(v21 + 32) = 2;
  *(v21 + 40) = 287;
  *(v21 + 48) = v17;
  v22 = swift_task_alloc();
  *(v0 + 152) = v22;
  *v22 = v0;
  v22[1] = sub_265D17EB4;
  v23 = *(v0 + 40);
  v24 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v23, 0, 0, 0xD000000000000013, 0x8000000265D61700, sub_265D1D034, v21, v24);
}

uint64_t sub_265D17EB4()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {

    v3 = sub_265D18098;
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[11];

    (*(v5 + 8))(v4, v6);
    v3 = sub_265D1800C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265D1800C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265D18098()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  swift_unknownObjectRelease();

  v1 = v0[1];

  return v1();
}

uint64_t sub_265D18140@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v94 = a3;
  v108 = a2;
  v106 = a1;
  v3 = sub_265D58520();
  v109 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v100 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v97 = &v90 - v7;
  MEMORY[0x28223BE20](v6);
  v101 = &v90 - v8;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E908, &qword_265D5D8F8);
  MEMORY[0x28223BE20](v99);
  v107 = &v90 - v9;
  v10 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8F8, "vj");
  v13 = MEMORY[0x28223BE20](v92);
  v96 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v95 = &v90 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v90 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v90 - v20;
  v22 = sub_265D59DE0();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v105 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v98 = &v90 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v90 - v28;
  sub_265D59600();
  sub_265D59DC0();
  v30 = *(v23 + 8);
  v103 = v23 + 8;
  v104 = v22;
  v102 = v30;
  v30(v29, v22);
  sub_265D1D0DC(v106, v12);
  v93 = v10;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v105 = *v12;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E918, &qword_265D5D900);
    sub_265D1D19C(v12 + *(v31 + 48), v21);
    v32 = v109;
    v33 = *(v109 + 16);
    v100 = (v109 + 16);
    v91 = v33;
    v33(v19, v108, v3);
    (*(v32 + 56))(v19, 0, 1, v3);
    v34 = *(v99 + 48);
    v35 = v107;
    sub_265C97870(v19, v107, &qword_28003E8F8, "vj");
    sub_265C97870(v21, v35 + v34, &qword_28003E8F8, "vj");
    v36 = *(v32 + 48);
    v37 = v36(v35, 1, v3);
    v38 = v21;
    if (v37 == 1)
    {
      sub_265CA4AE8(v19, &qword_28003E8F8, "vj");
      v39 = v107;
      v40 = v36(v107 + v34, 1, v3) == 1;
      v41 = v3;
      v42 = v39;
      if (!v40)
      {
        goto LABEL_10;
      }

      sub_265CA4AE8(v39, &qword_28003E8F8, "vj");
    }

    else
    {
      v56 = v107;
      v57 = v95;
      sub_265C97870(v107, v95, &qword_28003E8F8, "vj");
      v58 = v36(v56 + v34, 1, v3);
      v41 = v3;
      if (v58 == 1)
      {
        sub_265CA4AE8(v19, &qword_28003E8F8, "vj");
        (*(v109 + 8))(v57, v3);
        v42 = v107;
LABEL_10:
        sub_265CA4AE8(v42, &qword_28003E908, &qword_265D5D8F8);
        v59 = v108;
        v60 = v91;
LABEL_11:
        v61 = v98;
        sub_265D59600();
        v62 = v97;
        v60(v97, v59, v41);
        v63 = v96;
        sub_265C97870(v38, v96, &qword_28003E8F8, "vj");
        v64 = sub_265D59DD0();
        v65 = sub_265D5A070();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v107 = v38;
          v67 = v60;
          v68 = v62;
          v69 = v66;
          v108 = swift_slowAlloc();
          v110 = v108;
          *v69 = 141558786;
          *(v69 + 4) = 1752392040;
          *(v69 + 12) = 2080;
          v67(v101, v68, v41);
          v70 = sub_265D59EC0();
          v72 = v71;
          (*(v109 + 8))(v68, v41);
          v73 = sub_265CF4FFC(v70, v72, &v110);
          v38 = v107;

          *(v69 + 14) = v73;
          *(v69 + 22) = 2160;
          *(v69 + 24) = 1752392040;
          *(v69 + 32) = 2080;
          v74 = sub_265D5A0E0();
          v76 = v75;
          sub_265CA4AE8(v63, &qword_28003E8F8, "vj");
          v77 = sub_265CF4FFC(v74, v76, &v110);

          *(v69 + 34) = v77;
          _os_log_impl(&dword_265C01000, v64, v65, "Existing server playback context doesn't match what we have on file %{mask.hash}s != %{mask.hash}s", v69, 0x2Au);
          v78 = v108;
          swift_arrayDestroy();
          MEMORY[0x266770CF0](v78, -1, -1);
          MEMORY[0x266770CF0](v69, -1, -1);

          v79 = v98;
        }

        else
        {

          sub_265CA4AE8(v63, &qword_28003E8F8, "vj");
          (*(v109 + 8))(v62, v41);
          v79 = v61;
        }

        v102(v79, v104);
        v83 = sub_265D58570();
        sub_265D1DF34(&qword_28003E910, MEMORY[0x277D525D0], MEMORY[0x277D525D8]);
        swift_allocError();
        (*(*(v83 - 8) + 104))(v84, *MEMORY[0x277D525C8], v83);
        swift_willThrow();

        return sub_265CA4AE8(v38, &qword_28003E8F8, "vj");
      }

      v85 = v109;
      v86 = v107 + v34;
      v87 = v101;
      (*(v109 + 32))(v101, v86, v3);
      sub_265D1DF34(&qword_28003E920, MEMORY[0x277D521C8], MEMORY[0x277D521D0]);
      LODWORD(v99) = sub_265D59E80();
      v88 = *(v85 + 8);
      v88(v87, v3);
      sub_265CA4AE8(v19, &qword_28003E8F8, "vj");
      v88(v57, v3);
      v41 = v3;
      sub_265CA4AE8(v107, &qword_28003E8F8, "vj");
      v59 = v108;
      v60 = v91;
      if ((v99 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v89 = v106;
    sub_265D1D140(v106);
    sub_265D59600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDF8, &qword_265D5AFA8);
    swift_allocObject();
    *v89 = sub_265D59150();
    swift_storeEnumTagMultiPayload();
    sub_265D59140();
    sub_265CA4AE8(v38, &qword_28003E8F8, "vj");
  }

  sub_265D1D140(v12);
  sub_265D59600();
  v43 = v109;
  v44 = *(v109 + 16);
  v45 = v100;
  v44(v100, v108, v3);
  v46 = sub_265D59DD0();
  v47 = sub_265D5A070();
  v48 = v3;
  if (os_log_type_enabled(v46, v47))
  {
    v49 = v43;
    v50 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v110 = v108;
    *v50 = 141558274;
    *(v50 + 4) = 1752392040;
    *(v50 + 12) = 2080;
    v44(v101, v45, v3);
    v51 = sub_265D59EC0();
    v53 = v52;
    (*(v49 + 8))(v45, v48);
    v54 = sub_265CF4FFC(v51, v53, &v110);

    *(v50 + 14) = v54;
    _os_log_impl(&dword_265C01000, v46, v47, "Not in the right state to release a context: %{mask.hash}s", v50, 0x16u);
    v55 = v108;
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    MEMORY[0x266770CF0](v55, -1, -1);
    MEMORY[0x266770CF0](v50, -1, -1);
  }

  else
  {

    (*(v43 + 8))(v45, v3);
  }

  v102(v105, v104);
  v80 = sub_265D58570();
  sub_265D1DF34(&qword_28003E910, MEMORY[0x277D525D0], MEMORY[0x277D525D8]);
  swift_allocError();
  (*(*(v80 - 8) + 104))(v81, *MEMORY[0x277D525C0], v80);
  return swift_willThrow();
}

uint64_t sub_265D18DA8()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v2 + 24) = 68;
  *(v2 + 32) = 2;
  *(v2 + 40) = 228;
  *(v2 + 48) = &unk_265D5D948;
  *(v2 + 56) = v1;
  sub_265D58490();

  return sub_265D58930();
}

uint64_t sub_265D18E64(uint64_t a1)
{
  v3 = sub_265D58520();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v9 + 24) = 68;
  *(v9 + 32) = 2;
  *(v9 + 40) = 238;
  *(v9 + 48) = &unk_265D5D938;
  *(v9 + 56) = v8;
  sub_265D57E60();

  return sub_265D58930();
}

uint64_t sub_265D19008(uint64_t a1)
{
  v3 = sub_265D58520();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v9 + 24) = 68;
  *(v9 + 32) = 2;
  *(v9 + 40) = 257;
  *(v9 + 48) = &unk_265D5D910;
  *(v9 + 56) = v8;
  sub_265D57E60();

  return sub_265D58930();
}

uint64_t sub_265D191AC(uint64_t a1)
{
  v3 = sub_265D58520();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v9 + 24) = 68;
  *(v9 + 32) = 2;
  *(v9 + 40) = 267;
  *(v9 + 48) = &unk_265D5D8B0;
  *(v9 + 56) = v8;

  return sub_265D58930();
}

uint64_t sub_265D1934C(uint64_t a1)
{
  v4 = *(sub_265D58520() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D1791C(a1, v6, v1 + v5);
}

uint64_t sub_265D19430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E938, &unk_265D5D990);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_265D59DE0();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_265D1A3A0(0x65uLL);
  sub_265D595D0();
  v17 = sub_265D59DD0();
  v40 = sub_265D5A080();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_265D5A210();
    v38 = v8;
    v22 = sub_265CF4FFC(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_265C01000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266770CF0](v29, -1, -1);
    MEMORY[0x266770CF0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E208, &qword_265D5D7D0);
  v33 = sub_265D58960();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_265D1DA60;
  *(v34 + 24) = v32;

  v33(sub_265D1DAF4, v34);
}

uint64_t sub_265D1980C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E930, &qword_265D5D970);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_265D59DE0();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_265D1A3A0(0x65uLL);
  sub_265D595D0();
  v17 = sub_265D59DD0();
  v40 = sub_265D5A080();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_265D5A210();
    v38 = v8;
    v22 = sub_265CF4FFC(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_265C01000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266770CF0](v29, -1, -1);
    MEMORY[0x266770CF0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C8, &unk_265D5B650);
  v33 = sub_265D58960();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_265D1D7EC;
  *(v34 + 24) = v32;

  v33(sub_265D1DF9C, v34);
}

uint64_t sub_265D19BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E928, &qword_265D5D928);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_265D59DE0();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_265D1A3A0(0x65uLL);
  sub_265D595D0();
  v17 = sub_265D59DD0();
  v40 = sub_265D5A080();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_265D5A210();
    v38 = v8;
    v22 = sub_265CF4FFC(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_265C01000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266770CF0](v29, -1, -1);
    MEMORY[0x266770CF0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2B8, &qword_265D5B640);
  v33 = sub_265D58960();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_265D1D454;
  *(v34 + 24) = v32;

  v33(sub_265D1D47C, v34);
}

uint64_t sub_265D19FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E900, &qword_265D5D8F0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_265D59DE0();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_265D1A3A0(0x65uLL);
  sub_265D595D0();
  v17 = sub_265D59DD0();
  v40 = sub_265D5A080();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_265D5A210();
    v38 = v8;
    v22 = sub_265CF4FFC(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_265C01000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266770CF0](v29, -1, -1);
    MEMORY[0x266770CF0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v33 = sub_265D58960();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_265D1D04C;
  *(v34 + 24) = v32;

  v33(sub_265CA442C, v34);
}

unint64_t sub_265D1A3A0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x266770D10](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x266770D10](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_265D1A42C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v33 = a8;
  v32 = a7;
  v35 = a4;
  v34 = a2;
  v13 = sub_265D59DE0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595D0();
  v17 = sub_265D59DD0();
  v18 = sub_265D5A080();
  if (os_log_type_enabled(v17, v18))
  {
    v29 = a9;
    v19 = swift_slowAlloc();
    v31 = a10;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = a3;
    v22 = v21;
    v36[0] = v21;
    *v20 = 134218498;
    *(v20 + 4) = a5;
    *(v20 + 12) = 2080;
    v23 = sub_265D5A210();
    v25 = sub_265CF4FFC(v23, v24, v36);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v29;
    _os_log_impl(&dword_265C01000, v17, v18, "Finished P->A conversion: %ld:%s:%lu", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v26 = v22;
    a3 = v30;
    MEMORY[0x266770CF0](v26, -1, -1);
    MEMORY[0x266770CF0](v20, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v36[0] = a1;
  if (v35)
  {
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E938, &unk_265D5D990);
    return sub_265D59F60();
  }

  else
  {
    v36[1] = v34;
    v36[2] = a3;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E938, &unk_265D5D990);
    return sub_265D59F70();
  }
}

uint64_t sub_265D1A6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_265D58490();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2D0, &unk_265D5D960);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_265D59DE0();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595D0();
  v19 = sub_265D59DD0();
  v20 = sub_265D5A080();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_265D5A210();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_265CF4FFC(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_265C01000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x266770CF0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x266770CF0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_265C97870(a1, v15, &qword_28003E2D0, &unk_265D5D960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E930, &qword_265D5D970);
    return sub_265D59F60();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E930, &qword_265D5D970);
    return sub_265D59F70();
  }
}

uint64_t sub_265D1AA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_265D57E60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C0, &qword_265D5B648);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_265D59DE0();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595D0();
  v19 = sub_265D59DD0();
  v20 = sub_265D5A080();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_265D5A210();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_265CF4FFC(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_265C01000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x266770CF0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x266770CF0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_265C97870(a1, v15, &qword_28003E2C0, &qword_265D5B648);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E928, &qword_265D5D928);
    return sub_265D59F60();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E928, &qword_265D5D928);
    return sub_265D59F70();
  }
}

uint64_t sub_265D1AD88(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v28 = a6;
  v30 = a2;
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595D0();
  v15 = sub_265D59DD0();
  v16 = sub_265D5A080();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[1] = a8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[0] = a1;
    v20 = v19;
    v31 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = sub_265D5A210();
    v23 = sub_265CF4FFC(v21, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_265C01000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v24 = v20;
    a1 = v27[0];
    MEMORY[0x266770CF0](v24, -1, -1);
    MEMORY[0x266770CF0](v18, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  if (v30)
  {
    v31 = a1;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E900, &qword_265D5D8F0);
    return sub_265D59F60();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E900, &qword_265D5D8F0);
    return sub_265D59F70();
  }
}

uint64_t sub_265D1AFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a7;
  v48 = a8;
  v11 = a5;
  v49 = a10;
  v46 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_265D59DE0();
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_265D1A3A0(0x65uLL);
  sub_265D595D0();
  v22 = sub_265D59DD0();
  v23 = sub_265D5A080();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = a1;
    v25 = v24;
    v40 = swift_slowAlloc();
    v51 = v40;
    *v25 = 134218498;
    *(v25 + 4) = v50;
    *(v25 + 12) = 2080;
    v26 = sub_265D5A210();
    v43 = a6;
    v41 = v18;
    v28 = a4;
    v29 = v11;
    v30 = a2;
    v31 = sub_265CF4FFC(v26, v27, &v51);
    v32 = a3;
    v33 = v43;

    *(v25 + 14) = v31;
    a2 = v30;
    v11 = v29;
    a4 = v28;
    *(v25 + 22) = 2048;
    a6 = v33;
    *(v25 + 24) = v33;
    a3 = v32;
    v18 = v41;
    _os_log_impl(&dword_265C01000, v22, v23, "Converting from Async-Await to Promise: %ld:%s:%lu", v25, 0x20u);
    v34 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x266770CF0](v34, -1, -1);
    v35 = v25;
    a1 = v42;
    MEMORY[0x266770CF0](v35, -1, -1);
  }

  (*(v44 + 8))(v21, v45);
  v36 = sub_265D59FA0();
  (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v47;
  v38 = v50;
  *(v37 + 40) = v48;
  *(v37 + 48) = v38;
  *(v37 + 56) = a3;
  *(v37 + 64) = a4;
  *(v37 + 72) = v11;
  *(v37 + 80) = a6;
  *(v37 + 88) = a1;
  *(v37 + 96) = a2;

  sub_265D1CA74(0, 0, v18, v49, v37);
}

uint64_t sub_265D1B31C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2D0, &unk_265D5D960);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_265D59DE0();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_265D58490();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_265D1B540;

  return v15(v12);
}

uint64_t sub_265D1B540()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_265D1B8BC;
  }

  else
  {
    v2 = sub_265D1B654;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265D1B654(uint64_t a1)
{
  v25 = v1;
  sub_265D595D0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_265D5A210();
    v10 = sub_265CF4FFC(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_265C01000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266770CF0](v7, -1, -1);
    MEMORY[0x266770CF0](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_265CA4AE8(v17, &qword_28003E2D0, &unk_265D5D960);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_265D1B8BC(uint64_t a1)
{
  v24 = v1;
  sub_265D595D0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_265D5A210();
    v10 = sub_265CF4FFC(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_265C01000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266770CF0](v7, -1, -1);
    MEMORY[0x266770CF0](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_265CA4AE8(v15, &qword_28003E2D0, &unk_265D5D960);

  v18 = v1[1];

  return v18();
}

uint64_t sub_265D1BAF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C0, &qword_265D5B648);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_265D59DE0();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_265D57E60();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_265D1BD1C;

  return v15(v12);
}

uint64_t sub_265D1BD1C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_265D1C098;
  }

  else
  {
    v2 = sub_265D1BE30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265D1BE30(uint64_t a1)
{
  v25 = v1;
  sub_265D595D0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_265D5A210();
    v10 = sub_265CF4FFC(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_265C01000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266770CF0](v7, -1, -1);
    MEMORY[0x266770CF0](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_265CA4AE8(v17, &qword_28003E2C0, &qword_265D5B648);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_265D1C098(uint64_t a1)
{
  v24 = v1;
  sub_265D595D0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_265D5A210();
    v10 = sub_265CF4FFC(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_265C01000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266770CF0](v7, -1, -1);
    MEMORY[0x266770CF0](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_265CA4AE8(v15, &qword_28003E2C0, &qword_265D5B648);

  v18 = v1[1];

  return v18();
}

uint64_t sub_265D1C2D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v17;
  *(v8 + 40) = v16;
  *(v8 + 112) = v15;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = sub_265D59DE0();
  *(v8 + 64) = v10;
  *(v8 + 72) = *(v10 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 96) = v11;
  *v11 = v8;
  v11[1] = sub_265D1C454;

  return v13();
}

uint64_t sub_265D1C454()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_265D1C754;
  }

  else
  {
    v2 = sub_265D1C568;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265D1C568(uint64_t a1)
{
  v22 = v1;
  sub_265D595D0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[9];
    v18 = v1[8];
    v19 = v1[11];
    v17 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_265D5A210();
    v10 = sub_265CF4FFC(v8, v9, &v20);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v17;
    _os_log_impl(&dword_265C01000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266770CF0](v7, -1, -1);
    MEMORY[0x266770CF0](v6, -1, -1);

    (*(v4 + 8))(v19, v18);
  }

  else
  {
    v11 = v1[11];
    v12 = v1[8];
    v13 = v1[9];

    (*(v13 + 8))(v11, v12);
  }

  v14 = v1[6];
  v20 = 0;
  v21 = 0;
  v14(&v20);

  v15 = v1[1];

  return v15();
}

uint64_t sub_265D1C754(uint64_t a1)
{
  v24 = v1;
  sub_265D595D0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[9];
    v20 = v1[8];
    v21 = v1[10];
    v19 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_265D5A210();
    v10 = sub_265CF4FFC(v8, v9, &v22);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v19;
    _os_log_impl(&dword_265C01000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266770CF0](v7, -1, -1);
    MEMORY[0x266770CF0](v6, -1, -1);

    (*(v4 + 8))(v21, v20);
  }

  else
  {
    v12 = v1[9];
    v11 = v1[10];
    v13 = v1[8];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[13];
  v15 = v1[6];
  v22 = v14;
  v23 = 1;
  v16 = v14;
  v15(&v22);

  v17 = v1[1];

  return v17();
}

void sub_265D1C960()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265C978E0;

  JUMPOUT(0x265D1C2D4);
}

uint64_t sub_265D1CA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_265C97870(a3, v23 - v10, &qword_28003E530, &qword_265D5BF68);
  v12 = sub_265D59FA0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_265CA4AE8(v11, &qword_28003E530, &qword_265D5BF68);
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

  sub_265D59F90();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_265D59F50();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_265D59EE0() + 32;
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

    sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);

    return v21;
  }

LABEL_8:
  sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);
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

uint64_t sub_265D1CD70(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265D1CE68;

  return v6(a1);
}

uint64_t sub_265D1CE68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_265D1CF60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265C978E0;

  return sub_265D1CD70(a1, v4);
}

uint64_t sub_265D1D04C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E900, &qword_265D5D8F0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(v1 + 40);
  v11 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_265D1AD88(v8, v9, v4, v5, v6, v10, v7, v11);
}

uint64_t sub_265D1D0DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D1D140(uint64_t a1)
{
  v2 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D1D19C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8F8, "vj");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D1D20C(uint64_t a1)
{
  v4 = *(sub_265D58520() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D16DC8(a1, v6, v1 + v5);
}

void sub_265D1D310()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265C96620;

  JUMPOUT(0x265D1BAF8);
}

uint64_t sub_265D1D480(uint64_t a1)
{
  v4 = *(sub_265D58520() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D15D08(a1, v6, v1 + v5);
}

uint64_t sub_265D1D580(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265C978E0;

  return sub_265D151DC(a1, v1);
}

uint64_t objectdestroy_8Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_265D1D6C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265C978E0;

  JUMPOUT(0x265D1B31CLL);
}

uint64_t sub_265D1D814(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_265D1D8AC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_265D1D8F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265C96620;

  return sub_265D121E8(a1, v1);
}

uint64_t objectdestroy_25Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

__int128 *sub_265D1DAF4(__int128 *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 2);
  v4 = *(result + 24);
  v5 = *result;
  v6 = v3;
  v7 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

id sub_265D1DB44(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t objectdestroyTm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_265D1DC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_265D59BA0();
  v11 = *(v5 + 16);

  return sub_265D14284(a1, a2, a3, a4, v11, a5);
}

uint64_t sub_265D1DCDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_265D583D0() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  return sub_265D14AE4(*(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_265D1DE18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_265D1DEE0()
{
  result = qword_28003E940;
  if (!qword_28003E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E940);
  }

  return result;
}

uint64_t sub_265D1DF34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265D1DFA4()
{
  v1 = v0;
  v2 = sub_265D58F70();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D59DE0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v7 + 8))(v9, v6);
  v10 = *(v1 + 16);
  v33 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v47 = v10;
  v39 = *MEMORY[0x277D4E830];
  v11 = *(v3 + 104);
  v11(v5);
  v44 = v3 + 104;
  swift_allocObject();
  v45 = v1;
  swift_weakInit();
  v38 = sub_265D58490();
  swift_unknownObjectRetain_n();
  sub_265D591F0();

  v12 = v43 + 8;
  v46 = *(v43 + 8);
  v46(v5, v42);
  v43 = v12;
  swift_unknownObjectRelease();
  v47 = v10;
  v37 = *MEMORY[0x277D4E418];
  v40 = v11;
  v11(v5);
  swift_allocObject();
  swift_weakInit();
  v13 = sub_265D58520();
  v14 = sub_265D57E60();
  swift_unknownObjectRetain();
  v34 = v14;
  sub_265D591E0();

  v46(v5, v42);
  swift_unknownObjectRelease();
  v47 = v10;
  v36 = *MEMORY[0x277D4E448];
  v11(v5);
  swift_allocObject();
  swift_weakInit();
  v41 = v13;
  sub_265D591E0();

  v15 = v42;
  v16 = v46;
  v46(v5, v42);
  swift_unknownObjectRelease();
  v47 = v10;
  v35 = *MEMORY[0x277D4E4C8];
  v40(v5);
  swift_allocObject();
  v17 = v45;
  swift_weakInit();
  sub_265D59200();

  v16(v5, v15);
  swift_unknownObjectRelease();
  v18 = *(v17 + 40);
  v33 = *(v17 + 56);
  ObjectType = swift_getObjectType();
  v47 = v18;
  v19 = v40;
  (v40)(v5, v39, v15);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_265D591F0();

  v20 = v42;
  v46(v5, v42);
  swift_unknownObjectRelease();
  v47 = v18;
  (v19)(v5, v37, v20);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D591E0();

  v46(v5, v20);
  swift_unknownObjectRelease();
  v47 = v18;
  (v40)(v5, v36, v20);
  swift_allocObject();
  swift_weakInit();
  sub_265D591E0();

  v21 = v46;
  v46(v5, v20);
  swift_unknownObjectRelease();
  v47 = v18;
  v22 = v40;
  (v40)(v5, v35, v20);
  swift_allocObject();
  v23 = v45;
  swift_weakInit();
  sub_265D59200();

  v24 = v42;
  v21(v5, v42);
  swift_unknownObjectRelease();
  v25 = *(v23 + 64);
  v33 = *(v23 + 80);
  v26 = swift_getObjectType();
  v47 = v25;
  (v22)(v5, v39, v24);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  ObjectType = v26;
  sub_265D591F0();

  v27 = v42;
  v46(v5, v42);
  swift_unknownObjectRelease();
  v47 = v25;
  (v22)(v5, v37, v27);
  v28 = v22;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D591E0();

  v46(v5, v27);
  swift_unknownObjectRelease();
  v47 = v25;
  (v22)(v5, v36, v27);
  swift_allocObject();
  swift_weakInit();
  sub_265D591E0();

  v29 = v46;
  v46(v5, v27);
  swift_unknownObjectRelease();
  v47 = v25;
  (v28)(v5, v35, v27);
  swift_allocObject();
  swift_weakInit();
  sub_265D59200();

  v29(v5, v27);
  return swift_unknownObjectRelease();
}

uint64_t sub_265D1EB60@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v9);

    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_265D20678(a2, a3);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C8, &unk_265D5B650);
    (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C8, &unk_265D5B650);
    return (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  }
}

uint64_t sub_265D1EC90@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v17);

    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    a6(a1, a5);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    (*(*(v14 - 8) + 56))(a7, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    return (*(*(v16 - 8) + 56))(a7, 1, 1, v16);
  }
}

uint64_t sub_265D1EDD8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_265D1F110()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C8, &unk_265D5B650);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  sub_265D59DC0();
  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_1((v1 + 64), *(v1 + 88));
  sub_265D58C10();
  (*(v3 + 16))(v6, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v13, v6, v2);
  v15 = (v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_265D24CEC;
  v15[1] = v1;
  sub_265D58490();

  sub_265D58930();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_265D1F3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D58490();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  return sub_265D58940();
}

uint64_t sub_265D1F514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v31 = a2;
  v2 = sub_265D58520();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2A8, &qword_265D5B630);
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v30);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  sub_265D59DC0();
  (*(v12 + 8))(v14, v11);
  (*(v3 + 16))(v5, v27, v2);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = (v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v15, v5, v2);
  v18 = v29;
  *(v17 + v16) = v29;
  v19 = v18;

  sub_265D58940();
  sub_265C97624(v19 + 64, v32);
  v20 = swift_allocObject();
  sub_265C033C4(v32, v20 + 16);
  v21 = v28;
  v22 = v30;
  (*(v6 + 16))(v28, v10, v30);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  (*(v6 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_265D248C8;
  v25[1] = v20;
  sub_265D57E60();
  sub_265D58930();
  return (*(v6 + 8))(v10, v22);
}

uint64_t sub_265D1F8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v31 = a2;
  v2 = sub_265D58520();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2A8, &qword_265D5B630);
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v30);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  sub_265D59DC0();
  (*(v12 + 8))(v14, v11);
  (*(v3 + 16))(v5, v27, v2);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = (v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v15, v5, v2);
  v18 = v29;
  *(v17 + v16) = v29;
  v19 = v18;

  sub_265D58940();
  sub_265C97624(v19 + 64, v32);
  v20 = swift_allocObject();
  sub_265C033C4(v32, v20 + 16);
  v21 = v28;
  v22 = v30;
  (*(v6 + 16))(v28, v10, v30);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  (*(v6 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_265D24754;
  v25[1] = v20;
  sub_265D57E60();
  sub_265D58930();
  return (*(v6 + 8))(v10, v22);
}

uint64_t sub_265D1FCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v31 = a2;
  v2 = sub_265D58520();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2A8, &qword_265D5B630);
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v30);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  sub_265D59DC0();
  (*(v12 + 8))(v14, v11);
  (*(v3 + 16))(v5, v27, v2);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = (v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v15, v5, v2);
  v18 = v29;
  *(v17 + v16) = v29;
  v19 = v18;

  sub_265D58940();
  sub_265C97624(v19 + 64, v32);
  v20 = swift_allocObject();
  sub_265C033C4(v32, v20 + 16);
  v21 = v28;
  v22 = v30;
  (*(v6 + 16))(v28, v10, v30);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  (*(v6 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_265D2469C;
  v25[1] = v20;
  sub_265D58930();
  return (*(v6 + 8))(v10, v22);
}

uint64_t sub_265D200C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22[2] = a2;
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E950, &qword_265D5DA58);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_265D57DA0();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_265D59DE0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  sub_265D59DC0();
  (*(v8 + 8))(v10, v7);
  v11 = sub_265D584D0();
  v12 = sub_265D58500();
  v14 = v13;
  v15 = *(a1 + 56);
  v16 = sub_265D57DB0();
  v23[0] = 0;
  v17 = [v15 serverPlaybackContextForPlaybackContext:v16 remoteContextIdentifier:v11 error:v23];

  if (v23[0])
  {
    v23[0];

    swift_willThrow();
  }

  else
  {
    v19 = sub_265D57DC0();
    v22[0] = v20;
    v22[1] = v19;

    sub_265D584F0();
    sub_265D58510();
    v21 = sub_265D58220();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    sub_265D584E0();
  }

  return sub_265C9889C(v12, v14);
}

void sub_265D203D8(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  sub_265D59DC0();
  (*(v3 + 8))(v5, v2);
  v6 = *(a1 + 56);
  v7 = sub_265D58480();
  v9 = v8;
  v10 = sub_265D57DB0();
  sub_265C9889C(v7, v9);
  v13[0] = 0;
  v11 = [v6 remoteServerPlaybackContextForCertificate:v10 error:v13];

  if (v13[0])
  {
    v13[0];

    swift_willThrow();
  }

  else
  {
    sub_265D58480();
    v12 = [v11 blob];
    sub_265D57DC0();

    [v11 identifier];
    sub_265D58470();
  }
}

uint64_t sub_265D20604()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_265D20678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v79 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v84 = *(v5 - 8);
  v85 = v5;
  v73 = *(v84 + 64);
  v6 = MEMORY[0x28223BE20](v5);
  v72 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v60 - v8;
  v86 = sub_265D57E30();
  v77 = *(v86 - 8);
  v76 = *(v77 + 64);
  v9 = MEMORY[0x28223BE20](v86);
  v74 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v87 = &v60 - v11;
  v12 = sub_265D59DB0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265D59D90();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C8, &unk_265D5B650);
  v81 = *(v17 - 8);
  v82 = v17;
  v18 = v81[8];
  v19 = MEMORY[0x28223BE20](v17);
  v80 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v70 = &v60 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
  v78 = sub_265D58DB0();
  v75 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59640();
  v69 = v23;
  sub_265D20F18(v4, v3);
  sub_265D58D70();
  swift_allocObject();
  v26 = sub_265D58D40();
  v71 = v25;
  sub_265D58DA0();

  sub_265D59DA0();
  sub_265D59D80();
  (*(v13 + 8))(v15, v12);
  sub_265D58DA0();
  sub_265D596B0();
  swift_allocObject();
  v27 = sub_265D59680();
  v67 = v27;
  v88 = v26;
  v28 = sub_265D59EC0();
  v66 = v28;
  v30 = v29;
  sub_265D57E10();
  v31 = swift_allocObject();
  v68 = v26;
  *(v31 + 16) = v26;
  *(v31 + 24) = v27;
  *(v31 + 32) = v28;
  *(v31 + 40) = v30;
  v65 = v30;
  *(v31 + 48) = "RemoteKeyDeliverySystem::handleFetchCertificateRequest";
  *(v31 + 56) = 54;
  *(v31 + 64) = 2;

  v32 = v83;
  sub_265D58930();
  v33 = v81;
  v64 = v81[2];
  v34 = v80;
  v35 = v82;
  v64(v80, v23, v82);
  v63 = *(v33 + 80);
  v60 = ((v63 + 16) & ~v63) + v18;
  v36 = (v63 + 16) & ~v63;
  v62 = v36;
  v37 = swift_allocObject();
  v61 = v33[4];
  v61(v37 + v36, v34, v35);
  v38 = v84;
  v39 = v85;
  v40 = v72;
  (*(v84 + 16))(v72, v32, v85);
  v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v42 = (v73 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v38 + 32))(v43 + v41, v40, v39);
  v44 = (v43 + v42);
  *v44 = sub_265D24A44;
  v44[1] = v37;
  v73 = sub_265D58490();
  v45 = v70;
  sub_265D58930();
  v46 = v77;
  v47 = v74;
  v48 = v86;
  (*(v77 + 16))(v74, v87, v86);
  v49 = (*(v46 + 80) + 49) & ~*(v46 + 80);
  v50 = (v76 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = v65;
  *(v51 + 16) = v66;
  *(v51 + 24) = v52;
  *(v51 + 32) = "RemoteKeyDeliverySystem::handleFetchCertificateRequest";
  *(v51 + 40) = 54;
  *(v51 + 48) = 2;
  (*(v46 + 32))(v51 + v49, v47, v48);
  *(v51 + v50) = v67;
  *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v68;
  v53 = v80;
  v54 = v82;
  v64(v80, v45, v82);
  v55 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v61(v56 + v62, v53, v54);
  v57 = (v56 + v55);
  *v57 = sub_265D24BE8;
  v57[1] = v51;

  sub_265D58930();
  v58 = v81[1];
  v58(v45, v54);
  (*(v84 + 8))(v83, v85);
  (*(v46 + 8))(v87, v86);
  v58(v69, v54);
  (*(v75 + 8))(v71, v78);
}

uint64_t sub_265D20F18(unsigned __int8 a1, uint64_t a2)
{
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  if (a1 - 2 >= 2)
  {
    if (a1)
    {
      v19 = sub_265D582B0();
      sub_265D2462C();
      v20 = swift_allocError();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D50EB8], v19);
      *(swift_allocObject() + 16) = v20;
      sub_265D58490();

      return sub_265D58940();
    }

    else
    {
      sub_265D59600();
      v15 = sub_265D59DD0();
      v16 = sub_265D5A080();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_265C01000, v15, v16, "Sending fetchCertficate request to remote key delivery system", v17, 2u);
        MEMORY[0x266770CF0](v17, -1, -1);
      }

      (*(v5 + 8))(v10, v4);
      __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
      v18 = off_28777ED70[0];
      type metadata accessor for RemoteKeyDeliveryParticipantCoordinator();
      return v18();
    }
  }

  else
  {
    sub_265D59600();
    v11 = sub_265D59DD0();
    v12 = sub_265D5A080();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_265C01000, v11, v12, "Got remote fetchCertificate request", v13, 2u);
      MEMORY[0x266770CF0](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return sub_265D1F110();
  }
}

uint64_t sub_265D21244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v69 = a1;
  v80 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v85 = *(v6 - 8);
  v86 = v6;
  v74 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v6);
  v73 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v61 - v9;
  v87 = sub_265D57E30();
  v78 = *(v87 - 8);
  v77 = *(v78 + 64);
  v10 = MEMORY[0x28223BE20](v87);
  v75 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = &v61 - v12;
  v13 = sub_265D59DB0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_265D59D90();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2B8, &qword_265D5B640);
  v82 = *(v18 - 8);
  v83 = v18;
  v19 = v82[8];
  v20 = MEMORY[0x28223BE20](v18);
  v81 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v71 = &v61 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v61 - v23;
  v79 = sub_265D58DB0();
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59640();
  v70 = v24;
  sub_265D21AEC(v5, v4, v69, v24);
  sub_265D58D70();
  swift_allocObject();
  v27 = sub_265D58D40();
  v72 = v26;
  sub_265D58DA0();

  sub_265D59DA0();
  sub_265D59D80();
  (*(v14 + 8))(v16, v13);
  sub_265D58DA0();
  sub_265D596B0();
  swift_allocObject();
  v28 = sub_265D59680();
  v68 = v28;
  v89 = v27;
  v29 = sub_265D59EC0();
  v67 = v29;
  v31 = v30;
  sub_265D57E10();
  v32 = swift_allocObject();
  v69 = v27;
  *(v32 + 16) = v27;
  *(v32 + 24) = v28;
  *(v32 + 32) = v29;
  *(v32 + 40) = v31;
  v66 = v31;
  *(v32 + 48) = "RemoteKeyDeliverySystem::handleFetchContextRequest";
  *(v32 + 56) = 50;
  *(v32 + 64) = 2;

  v33 = v84;
  sub_265D58930();
  v34 = v82;
  v65 = v82[2];
  v35 = v81;
  v36 = v83;
  v65(v81, v24, v83);
  v64 = *(v34 + 80);
  v61 = ((v64 + 16) & ~v64) + v19;
  v37 = (v64 + 16) & ~v64;
  v63 = v37;
  v38 = swift_allocObject();
  v62 = v34[4];
  v62(v38 + v37, v35, v36);
  v39 = v85;
  v40 = v86;
  v41 = v73;
  (*(v85 + 16))(v73, v33, v86);
  v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = (v74 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v39 + 32))(v44 + v42, v41, v40);
  v45 = (v44 + v43);
  *v45 = sub_265D24E74;
  v45[1] = v38;
  v74 = sub_265D57E60();
  v46 = v71;
  sub_265D58930();
  v47 = v78;
  v48 = v75;
  v49 = v87;
  (*(v78 + 16))(v75, v88, v87);
  v50 = (*(v47 + 80) + 49) & ~*(v47 + 80);
  v51 = (v77 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v66;
  *(v52 + 16) = v67;
  *(v52 + 24) = v53;
  *(v52 + 32) = "RemoteKeyDeliverySystem::handleFetchContextRequest";
  *(v52 + 40) = 50;
  *(v52 + 48) = 2;
  (*(v47 + 32))(v52 + v50, v48, v49);
  *(v52 + v51) = v68;
  *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
  v54 = v81;
  v55 = v83;
  v65(v81, v46, v83);
  v56 = (v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v62(v57 + v63, v54, v55);
  v58 = (v57 + v56);
  *v58 = sub_265D24E54;
  v58[1] = v52;

  sub_265D58930();
  v59 = v82[1];
  v59(v46, v55);
  (*(v85 + 8))(v84, v86);
  (*(v47 + 8))(v88, v87);
  v59(v70, v55);
  (*(v76 + 8))(v72, v79);
}

uint64_t sub_265D21AEC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  if (a1 - 2 >= 2)
  {
    if (a1)
    {
      v23 = sub_265D582B0();
      sub_265D2462C();
      v24 = swift_allocError();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D50EB8], v23);
      *(swift_allocObject() + 16) = v24;
      sub_265D57E60();

      return sub_265D58940();
    }

    else
    {
      sub_265D59600();
      v19 = sub_265D59DD0();
      v20 = sub_265D5A080();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_265C01000, v19, v20, "Sending fetchKeyContext request to remote key delivery system", v21, 2u);
        MEMORY[0x266770CF0](v21, -1, -1);
      }

      (*(v9 + 8))(v14, v8);
      __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
      v22 = off_28777ED78[0];
      type metadata accessor for RemoteKeyDeliveryParticipantCoordinator();
      return v22(a3);
    }
  }

  else
  {
    sub_265D59600();
    v15 = sub_265D59DD0();
    v16 = sub_265D5A080();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_265C01000, v15, v16, "Got remote fetchKeyContext request", v17, 2u);
      MEMORY[0x266770CF0](v17, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    return sub_265D1F514(a3, a4);
  }
}

uint64_t sub_265D21E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v69 = a1;
  v80 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v85 = *(v6 - 8);
  v86 = v6;
  v74 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v6);
  v73 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v61 - v9;
  v87 = sub_265D57E30();
  v78 = *(v87 - 8);
  v77 = *(v78 + 64);
  v10 = MEMORY[0x28223BE20](v87);
  v75 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = &v61 - v12;
  v13 = sub_265D59DB0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_265D59D90();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2B8, &qword_265D5B640);
  v82 = *(v18 - 8);
  v83 = v18;
  v19 = v82[8];
  v20 = MEMORY[0x28223BE20](v18);
  v81 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v71 = &v61 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v61 - v23;
  v79 = sub_265D58DB0();
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59640();
  v70 = v24;
  sub_265D226DC(v5, v4, v69, v24);
  sub_265D58D70();
  swift_allocObject();
  v27 = sub_265D58D40();
  v72 = v26;
  sub_265D58DA0();

  sub_265D59DA0();
  sub_265D59D80();
  (*(v14 + 8))(v16, v13);
  sub_265D58DA0();
  sub_265D596B0();
  swift_allocObject();
  v28 = sub_265D59680();
  v68 = v28;
  v89 = v27;
  v29 = sub_265D59EC0();
  v67 = v29;
  v31 = v30;
  sub_265D57E10();
  v32 = swift_allocObject();
  v69 = v27;
  *(v32 + 16) = v27;
  *(v32 + 24) = v28;
  *(v32 + 32) = v29;
  *(v32 + 40) = v31;
  v66 = v31;
  *(v32 + 48) = "RemoteKeyDeliverySystem::handleRenewContextRequest";
  *(v32 + 56) = 50;
  *(v32 + 64) = 2;

  v33 = v84;
  sub_265D58930();
  v34 = v82;
  v65 = v82[2];
  v35 = v81;
  v36 = v83;
  v65(v81, v24, v83);
  v64 = *(v34 + 80);
  v61 = ((v64 + 16) & ~v64) + v19;
  v37 = (v64 + 16) & ~v64;
  v63 = v37;
  v38 = swift_allocObject();
  v62 = v34[4];
  v62(v38 + v37, v35, v36);
  v39 = v85;
  v40 = v86;
  v41 = v73;
  (*(v85 + 16))(v73, v33, v86);
  v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = (v74 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v39 + 32))(v44 + v42, v41, v40);
  v45 = (v44 + v43);
  *v45 = sub_265D246DC;
  v45[1] = v38;
  v74 = sub_265D57E60();
  v46 = v71;
  sub_265D58930();
  v47 = v78;
  v48 = v75;
  v49 = v87;
  (*(v78 + 16))(v75, v88, v87);
  v50 = (*(v47 + 80) + 49) & ~*(v47 + 80);
  v51 = (v77 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v66;
  *(v52 + 16) = v67;
  *(v52 + 24) = v53;
  *(v52 + 32) = "RemoteKeyDeliverySystem::handleRenewContextRequest";
  *(v52 + 40) = 50;
  *(v52 + 48) = 2;
  (*(v47 + 32))(v52 + v50, v48, v49);
  *(v52 + v51) = v68;
  *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
  v54 = v81;
  v55 = v83;
  v65(v81, v46, v83);
  v56 = (v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v62(v57 + v63, v54, v55);
  v58 = (v57 + v56);
  *v58 = sub_265D24718;
  v58[1] = v52;

  sub_265D58930();
  v59 = v82[1];
  v59(v46, v55);
  (*(v85 + 8))(v84, v86);
  (*(v47 + 8))(v88, v87);
  v59(v70, v55);
  (*(v76 + 8))(v72, v79);
}

uint64_t sub_265D226DC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  if (a1 - 2 >= 2)
  {
    if (a1)
    {
      v23 = sub_265D582B0();
      sub_265D2462C();
      v24 = swift_allocError();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D50EB8], v23);
      *(swift_allocObject() + 16) = v24;
      sub_265D57E60();

      return sub_265D58940();
    }

    else
    {
      sub_265D59600();
      v19 = sub_265D59DD0();
      v20 = sub_265D5A080();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_265C01000, v19, v20, "Sending renewContext request to remote key delivery system", v21, 2u);
        MEMORY[0x266770CF0](v21, -1, -1);
      }

      (*(v9 + 8))(v14, v8);
      __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
      v22 = off_28777ED80[0];
      type metadata accessor for RemoteKeyDeliveryParticipantCoordinator();
      return v22(a3);
    }
  }

  else
  {
    sub_265D59600();
    v15 = sub_265D59DD0();
    v16 = sub_265D5A080();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_265C01000, v15, v16, "Got remote renewContext request", v17, 2u);
      MEMORY[0x266770CF0](v17, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    return sub_265D1F8F8(a3, a4);
  }
}

uint64_t sub_265D22A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v3 = a2;
  v85 = sub_265D57E30();
  v78 = *(v85 - 8);
  v77 = *(v78 + 64);
  v5 = MEMORY[0x28223BE20](v85);
  v75 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v86 = &v61 - v7;
  v8 = sub_265D59DB0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265D59D90();
  MEMORY[0x28223BE20](v12 - 8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v83 = *(v71 - 8);
  v13 = v83[8];
  v14 = MEMORY[0x28223BE20](v71);
  v72 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v82 = &v61 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v84 = &v61 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v81 = &v61 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v61 - v21;
  v76 = sub_265D58DB0();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59640();
  v70 = v22;
  sub_265D23234(v3, v80, a1, v22);
  sub_265D58D70();
  swift_allocObject();
  v25 = sub_265D58D40();
  v73 = v24;
  sub_265D58DA0();

  sub_265D59DA0();
  sub_265D59D80();
  (*(v9 + 8))(v11, v8);
  sub_265D58DA0();
  sub_265D596B0();
  swift_allocObject();
  v26 = sub_265D59680();
  v68 = v26;
  v87 = v25;
  v27 = sub_265D59EC0();
  v67 = v27;
  v29 = v28;
  sub_265D57E10();
  v30 = swift_allocObject();
  v69 = v25;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  v66 = v29;
  *(v30 + 48) = "RemoteKeyDeliverySystem::handleReleaseContextRequest";
  *(v30 + 56) = 52;
  *(v30 + 64) = 2;

  v31 = v81;
  sub_265D58930();
  v33 = v82;
  v32 = v83;
  v34 = v83[2];
  v80 = v83 + 2;
  v35 = v71;
  v34(v82, v22, v71);
  v65 = v34;
  v36 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v63 = *(v32 + 80);
  v61 = swift_allocObject();
  v37 = v32[4];
  v64 = v36;
  v38 = v35;
  v37(v61 + v36, v33, v35);
  v39 = v37;
  v62 = v37;
  v40 = v72;
  v34(v72, v31, v38);
  v41 = (v36 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v42 + v36;
  v44 = v38;
  v39(v43, v40, v38);
  v45 = (v42 + v41);
  v46 = v61;
  *v45 = sub_265CD76A8;
  v45[1] = v46;
  sub_265D58930();
  v47 = v78;
  v48 = v75;
  v49 = v85;
  (*(v78 + 16))(v75, v86, v85);
  v50 = (*(v47 + 80) + 49) & ~*(v47 + 80);
  v51 = (v77 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v66;
  *(v52 + 16) = v67;
  *(v52 + 24) = v53;
  *(v52 + 32) = "RemoteKeyDeliverySystem::handleReleaseContextRequest";
  *(v52 + 40) = 52;
  *(v52 + 48) = 2;
  (*(v47 + 32))(v52 + v50, v48, v49);
  v54 = v69;
  *(v52 + v51) = v68;
  *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v54;
  v55 = v82;
  v56 = v84;
  v65(v82, v84, v44);
  v57 = swift_allocObject();
  v62(v57 + v64, v55, v44);
  v58 = (v57 + v41);
  *v58 = sub_265D24540;
  v58[1] = v52;

  sub_265D58930();
  v59 = v83[1];
  v59(v56, v44);
  v59(v81, v44);
  (*(v47 + 8))(v86, v85);
  v59(v70, v44);
  (*(v74 + 8))(v73, v76);
}

uint64_t sub_265D23234@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  if (a1 - 2 >= 2)
  {
    if (a1)
    {
      v23 = sub_265D582B0();
      sub_265D2462C();
      v24 = swift_allocError();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D50EB8], v23);
      *(swift_allocObject() + 16) = v24;

      return sub_265D58940();
    }

    else
    {
      sub_265D59600();
      v19 = sub_265D59DD0();
      v20 = sub_265D5A080();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_265C01000, v19, v20, "Sending releaseContext request to remote key delivery system", v21, 2u);
        MEMORY[0x266770CF0](v21, -1, -1);
      }

      (*(v9 + 8))(v14, v8);
      __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
      v22 = off_28777ED88[0];
      type metadata accessor for RemoteKeyDeliveryParticipantCoordinator();
      return v22(a3);
    }
  }

  else
  {
    sub_265D59600();
    v15 = sub_265D59DD0();
    v16 = sub_265D5A080();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_265C01000, v15, v16, "Got remote releaseContext request", v17, 2u);
      MEMORY[0x266770CF0](v17, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    return sub_265D1FCDC(a3, a4);
  }
}

void sub_265D23578(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v29 = a5;
  v12 = sub_265D59DE0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D58D60();
  sub_265D596A0();
  sub_265D58D90();

  v16 = sub_265D59DD0();
  v17 = sub_265D5A080();

  if (os_log_type_enabled(v16, v17))
  {
    v28 = a1;
    v18 = swift_slowAlloc();
    v27[1] = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v27[0] = v12;
    v21 = v20;
    v32 = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_265CF4FFC(v29, a6, &v32);
    *(v19 + 12) = 2082;
    v22 = sub_265D5A210();
    v24 = sub_265CF4FFC(v22, v23, &v32);
    a1 = v28;

    *(v19 + 14) = v24;
    _os_log_impl(&dword_265C01000, v16, v17, "[%{public}s] %{public}s begin", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266770CF0](v21, -1, -1);
    MEMORY[0x266770CF0](v19, -1, -1);

    (*(v13 + 8))(v15, v27[0]);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
  sub_265D5A4B0();
  v25 = v32;
  v26 = v33;
  v30 = v32;
  v31 = v33;
  a1(&v30);
  sub_265CA4470(v25, v26);
}

uint64_t sub_265D23810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v68 = a7;
  v69 = a3;
  v64 = a6;
  v63[1] = a4;
  v63[2] = a5;
  v63[0] = a2;
  v73 = a9;
  v74 = a8;
  v12 = sub_265D57E30();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v67 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v63 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v63 - v19;
  v21 = sub_265D59DE0();
  v71 = *(v21 - 8);
  v72 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v70 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v63 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  MEMORY[0x28223BE20](v26);
  v28 = (v63 - v27);
  v65 = a10;
  v66 = a11;
  sub_265C97870(a1, v63 - v27, a10, a11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    sub_265D58D90();
    (*(v13 + 16))(v18, v68, v12);
    v30 = v69;

    v31 = v29;
    v32 = sub_265D59DD0();
    v33 = sub_265D5A070();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v75[0] = v68;
      *v34 = 136446978;
      *(v34 + 4) = sub_265CF4FFC(v63[0], v30, v75);
      *(v34 + 12) = 2082;
      v35 = sub_265D5A210();
      v37 = sub_265CF4FFC(v35, v36, v75);

      *(v34 + 14) = v37;
      *(v34 + 22) = 2048;
      v38 = v67;
      sub_265D57E10();
      sub_265D57DE0();
      v40 = v39;
      v41 = *(v13 + 8);
      v41(v38, v12);
      v41(v18, v12);
      *(v34 + 24) = v40;
      *(v34 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v44 + 16))(v63 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
      v45 = sub_265D59EC0();
      v47 = sub_265CF4FFC(v45, v46, v75);

      *(v34 + 34) = v47;
      _os_log_impl(&dword_265C01000, v32, v33, "[%{public}s] %{public}s ended in %fs -> %{public}s", v34, 0x2Au);
      v48 = v68;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v48, -1, -1);
      MEMORY[0x266770CF0](v34, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v18, v12);
    }

    (*(v71 + 8))(v70, v72);
  }

  else
  {
    sub_265D58D90();
    v49 = v12;
    (*(v13 + 16))(v20, v68, v12);
    v50 = v69;

    v51 = sub_265D59DD0();
    v52 = sub_265D5A080();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v75[0] = v54;
      *v53 = 136446722;
      *(v53 + 4) = sub_265CF4FFC(v63[0], v50, v75);
      *(v53 + 12) = 2082;
      v55 = sub_265D5A210();
      LODWORD(v70) = v52;
      v57 = sub_265CF4FFC(v55, v56, v75);

      *(v53 + 14) = v57;
      *(v53 + 22) = 2048;
      v58 = v67;
      sub_265D57E10();
      sub_265D57DE0();
      v60 = v59;
      v61 = *(v13 + 8);
      v61(v58, v49);
      v61(v20, v49);
      *(v53 + 24) = v60;
      _os_log_impl(&dword_265C01000, v51, v70, "[%{public}s] %{public}s ended in %fs", v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v54, -1, -1);
      MEMORY[0x266770CF0](v53, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v20, v49);
    }

    (*(v71 + 8))(v25, v72);
    sub_265CA4AE8(v28, v65, v66);
  }

  sub_265D59690();
  return sub_265D58D50();
}