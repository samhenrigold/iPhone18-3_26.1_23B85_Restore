uint64_t sub_227393B30(uint64_t a1)
{
  *(v1 + 64) = sub_2276697B0();
  *(v1 + 72) = v2;
}

uint64_t getEnumTagSinglePayload for SyncError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_20;
  }

  v2 = a2 + 19;
  if (a2 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 19;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 19;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 5)
  {
    v8 = v7 - 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0x10)
  {
    return v8 - 15;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SyncError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 19;
  if (a3 + 19 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xED)
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_227393CD8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_227393CEC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

void sub_227393D0C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v22 - v7;
  v9 = [a1 identifier];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  v11 = sub_22766C000();

  v12 = [a1 title];
  if (!v12)
  {

LABEL_7:
    v19 = sub_227664DD0();
    sub_2273944B0(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51028], v19);
    swift_willThrow();

    return;
  }

  v13 = v12;
  v14 = sub_22766C000();
  v22[3] = v15;

  v16 = [a1 thumbnailURL];
  if (v16)
  {
    v22[0] = v14;
    v22[1] = v11;

    v17 = [a1 thumbnailURL];
    if (v17)
    {
      v18 = v17;
      sub_22766C000();
    }

    sub_227662310();
  }

  else
  {
    v21 = sub_2276624A0();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  sub_227125BF8(v8, v4);
  sub_227668790();

  sub_226FB1188(v8);
}

uint64_t static AssetRequestMediaStreamMetadata.representativeSamples()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v0 - 8);
  v33 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v32 = v24 - v3;
  v31 = sub_2276687D0();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766C090();
  v8 = sub_22766C090();
  v9 = sub_2276622F0();
  v43 = v8;
  v44[0] = v7;
  v44[1] = v44;
  v44[2] = &v43;
  v42 = v9;
  v44[3] = &v42;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v40 = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v36 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v37 = v36;
  v38 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v10 = sub_2276638E0();

  v11 = *(v10 + 16);
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_226F1F488(0, v11, 0);
    v12 = v35;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF60, &qword_2276827E8);
    v14 = 0;
    v27 = result;
    v26 = *(result - 8);
    v25 = v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v24[1] = v4 + 32;
    v29 = v10;
    v30 = v4;
    v28 = v11;
    while (v14 < *(v10 + 16))
    {
      v15 = v6;
      v16 = (v25 + *(v26 + 72) * v14);
      v34 = *v16;
      v17 = *(v27 + 64);
      v18 = sub_2276624A0();
      v19 = *(v18 - 8);
      v20 = v16 + v17;
      v6 = v15;
      v21 = v32;
      (*(v19 + 16))(v32, v20, v18);
      (*(v19 + 56))(v21, 0, 1, v18);
      sub_227125BF8(v21, v33);

      sub_227668790();
      sub_226FB1188(v21);
      v35 = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1F488((v22 > 1), v23 + 1, 1);
        v12 = v35;
      }

      ++v14;
      *(v12 + 16) = v23 + 1;
      result = (*(v30 + 32))(v12 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v23, v15, v31);
      v10 = v29;
      if (v28 == v14)
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

uint64_t sub_227394458(uint64_t a1)
{
  result = sub_2273944B0(&qword_28139B490, MEMORY[0x277D535A0], &protocol conformance descriptor for AssetRequestMediaStreamMetadata);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2273944B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2273944F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  sub_2276687A0();
  v5 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_2276687C0();
  v6 = sub_22766BFD0();

  [a1 setTitle_];

  sub_2276687B0();
  v7 = sub_2276624A0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_226FB1188(v4);
    v9 = 0;
  }

  else
  {
    sub_227662390();
    (*(v8 + 8))(v4, v7);
    v9 = sub_22766BFD0();
  }

  [a1 setThumbnailURL_];
}

uint64_t sub_2273946A4(uint64_t result)
{
  if (result)
  {
    if (result == 101)
    {
      return 2;
    }

    else if (result == 100)
    {
      return 1;
    }

    else
    {
      v1 = result;
      v2 = _s15SeymourServices19SQLiteDatabaseErrorO8rawValueACSgs5Int32V_tcfC_0(result);
      if (v2 == 28)
      {
        sub_22706F95C();
        swift_allocError();
        *v3 = v1;
        *(v3 + 8) = 0;
        *(v3 + 16) = 1;
      }

      else
      {
        v4 = v2;
        sub_22706F9EC();
        swift_allocError();
        *v5 = v4;
      }

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_2273947E4(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v149 = a2;
  v160 = *v4;
  v158 = sub_227665A20();
  v153 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v152 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_22766B390();
  v145 = *(v146 - 1);
  MEMORY[0x28223BE20](v146);
  v144 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_227664140();
  v154 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v151 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v161 = &v136 - v14;
  v15 = *(a3 - 1);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v15 + 16);
  v20(v19, a1, a3, v17);
  v21 = sub_22766C250();
  (v20)(v19, a1, a3);
  v22 = a3;
  v23 = sub_22766C250();
  v24 = v160;
  v148 = v21;
  v168 = v21;
  v25 = v22;
  v162 = *(v160 + 10);
  v163 = v22;
  v160 = v6;
  v164 = *(v24 + 11);
  v26 = v164;
  v165 = a4;
  v159 = a4;
  v27 = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE710, &qword_22768D920);
  swift_getAssociatedTypeWitness();
  sub_227396F7C();
  v168 = sub_22766C240();
  sub_22766C3D0();
  v28 = v149;
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v29 = sub_22766C740();
  v31 = type metadata accessor for PairedSyncZoneCoordinator(0, v27, v26, v30);
  WitnessTable = swift_getWitnessTable();
  v33 = sub_2274F6F98(v29, v28, v31, WitnessTable);

  if (v5)
  {

    return v29;
  }

  v150 = v23;
  v157 = &v136;
  v168 = v33;
  MEMORY[0x28223BE20](v34);
  v36 = v159;
  v35 = v160;
  *(&v136 - 4) = v25;
  *(&v136 - 3) = v36;
  *(&v136 - 2) = v35;
  v37 = sub_22766C730();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  v39 = swift_getWitnessTable();
  v40 = v38;
  v41 = v39;
  v42 = sub_2274F47D0(sub_227396FE0, (&v136 - 6), v37, v158, v40, v39, MEMORY[0x277D84950], &v166);
  v138 = v41;
  v139 = v37;
  v140 = v33;
  v141 = v27;
  v142 = v26;
  v137 = v42;
  v143 = 0;
  v44 = v148;
  v45 = v148[2];
  v147 = v25;
  v46 = v150;
  if (v45)
  {
    v168 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v47 = v168;
    v156 = *(v154 + 16);
    v48 = v44 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
    v155 = *(v154 + 72);
    v157 = (v154 + 16);
    v49 = (v154 + 8);
    v50 = v170;
    v51 = v161;
    do
    {
      v156(v51, v48, v50);
      v52 = sub_2276640C0();
      v50 = v170;
      v53 = v52;
      v55 = v54;
      (*v49)(v51, v170);
      v168 = v47;
      v56 = *(v47 + 16);
      if (v56 >= *(v47 + 24) >> 1)
      {
        sub_226F1EF90();
        v50 = v170;
        v47 = v168;
      }

      *(v47 + 16) = v56 + 1;
      v57 = v47 + 16 * v56;
      *(v57 + 32) = v53;
      *(v57 + 40) = v55;
      v48 += v155;
      --v45;
      v51 = v161;
    }

    while (v45);

    v25 = v147;
    v46 = v150;
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
  }

  v58 = sub_226F3E6A8(v47);

  v168 = v140;
  MEMORY[0x28223BE20](v59);
  *(&v136 - 4) = v141;
  *(&v136 - 3) = v25;
  v60 = v142;
  v61 = v159;
  *(&v136 - 2) = v142;
  *(&v136 - 1) = v61;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v136 - 4) = v25;
  *(&v136 - 3) = v60;
  *(&v136 - 2) = v61;
  *(&v136 - 1) = v63;
  v64 = v143;
  v66 = sub_2274F47D0(sub_227397004, (&v136 - 6), v139, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v138, MEMORY[0x277D84AC0], v65);
  v161 = v64;

  v67 = sub_227009018(v66, v58);

  v68 = v160;
  if (!v67[2])
  {

    goto LABEL_18;
  }

  v69 = v144;
  sub_22766A6B0();

  v70 = sub_22766B380();
  v71 = sub_22766C8B0();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v168 = v73;
    *v72 = 136446210;
    v74 = sub_22766C610();
    v76 = sub_226E97AE8(v74, v75, &v168);

    *(v72 + 4) = v76;
    _os_log_impl(&dword_226E8E000, v70, v71, "Deleting orphaned sync operations: %{public}s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x22AA9A450](v73, -1, -1);
    MEMORY[0x22AA9A450](v72, -1, -1);
  }

  (*(v145 + 8))(v69, v146);
  v77 = __swift_project_boxed_opaque_existential_0(v149, v149[3]);
  v78 = *v77;
  v79 = v77[1];
  v80 = *(v77 + 16);
  v81 = v77[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB328, &unk_227681200);
  v82 = swift_allocObject();
  v83 = v78;
  v84 = v79;

  sub_22766A070();
  v148 = v83;
  *(v82 + 16) = v83;
  *(v82 + 24) = v84;
  v146 = v84;
  LODWORD(v156) = v80;
  *(v82 + 32) = v80;
  v157 = v81;
  *(v82 + 40) = v81;
  swift_getKeyPath();
  sub_227230638(v67);
  v86 = v85;

  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v168 = v86;
  v87 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v155 = v87;
  v88 = sub_22766C820();
  sub_226ED25F8(&v168, &v166);
  v89 = v167;
  if (v167)
  {
    v90 = __swift_project_boxed_opaque_existential_0(&v166, v167);
    v91 = *(v89 - 8);
    v92 = MEMORY[0x28223BE20](v90);
    v94 = v82;
    v95 = &v136 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v91 + 16))(v95, v92);
    v96 = sub_22766D170();
    v97 = v95;
    v82 = v94;
    (*(v91 + 8))(v97, v89);
    __swift_destroy_boxed_opaque_existential_0(&v166);
  }

  else
  {
    v96 = 0;
  }

  v149 = objc_opt_self();
  v109 = [v149 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB330, qword_227681240);
  [objc_allocWithZone(v99) initWithLeftExpression:v88 rightExpression:v109 modifier:0 type:10 options:0];

  sub_226EBC888(&v168);
  v103 = qword_2813B2078;
  swift_beginAccess();
  v25 = sub_22766A080();
  v111 = v110;
  MEMORY[0x22AA985C0]();
  if (*((*v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_43:
    sub_22766C360();
    v68 = v160;
  }

  sub_22766C3A0();
  (v25)(&v168, 0);
  swift_endAccess();

  swift_getKeyPath();
  v112 = sub_2276633C0();
  v169 = MEMORY[0x277D849A8];
  LODWORD(v168) = v112;

  v113 = sub_22766C820();
  sub_226ED25F8(&v168, &v166);
  v114 = v167;
  if (v167)
  {
    v115 = __swift_project_boxed_opaque_existential_0(&v166, v167);
    v155 = &v136;
    v116 = v99;
    v117 = v82;
    v118 = *(v114 - 8);
    v119 = MEMORY[0x28223BE20](v115);
    v25 = &v136 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v118 + 16))(v25, v119);
    v121 = sub_22766D170();
    (*(v118 + 8))(v25, v114);
    v82 = v117;
    v99 = v116;
    v68 = v160;
    __swift_destroy_boxed_opaque_existential_0(&v166);
  }

  else
  {
    v121 = 0;
  }

  v122 = [v149 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v123 = [objc_allocWithZone(v99) initWithLeftExpression:v113 rightExpression:v122 modifier:0 type:4 options:0];

  sub_226EBC888(&v168);
  swift_beginAccess();
  v124 = v123;
  v125 = sub_22766A080();
  v127 = v126;
  MEMORY[0x22AA985C0]();
  if (*((*v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v125(&v168, 0);
  swift_endAccess();

  v128 = sub_227542300(v82 + v103, v156, v157);
  if (!v128)
  {
    v130 = v161;
    v131 = sub_22728497C(0);
    v46 = v150;
    if (v130)
    {
LABEL_41:

      swift_setDeallocating();
      v29 = qword_2813B2078;
      v134 = sub_22766A100();
      (*(*(v134 - 8) + 8))(v82 + v29, v134);
      swift_deallocClassInstance();
      return v29;
    }

    v132 = v131;
    [v131 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v133 = sub_22766C9E0();
    v161 = 0;
    v135 = sub_226EDAB24(v133);

    sub_226EDAB78(v135, v146);

LABEL_18:
    v98 = v153;
    v99 = *(v46 + 16);
    if (!v99)
    {
      goto LABEL_36;
    }

    goto LABEL_19;
  }

  v98 = v153;
  v46 = v150;
  if (v128 != 1)
  {
    swift_willThrow();
    goto LABEL_41;
  }

  v99 = *(v46 + 16);
  if (!v99)
  {
LABEL_36:

    v102 = MEMORY[0x277D84F90];
LABEL_37:
    v129 = sub_226F47124(v137);

    v29 = sub_22742F6A0(v102, v129);

    return v29;
  }

LABEL_19:
  v168 = MEMORY[0x277D84F90];
  sub_226F20588(0, v99, 0);
  v100 = 0;
  v101 = v154;
  v102 = v168;
  v157 = (v46 + ((*(v154 + 80) + 32) & ~*(v154 + 80)));
  v156 = (v154 + 16);
  v82 = v154 + 8;
  v103 = v98 + 32;
  while (1)
  {
    if (v100 >= *(v150 + 16))
    {
      __break(1u);
      goto LABEL_43;
    }

    v104 = v151;
    v25 = v68;
    v105 = v170;
    (*(v101 + 16))(v151, v157 + *(v101 + 72) * v100, v170);
    v106 = v161;
    sub_227395EBC(v104, v25);
    v161 = v106;
    if (v106)
    {
      break;
    }

    (*v82)(v104, v105);
    v168 = v102;
    v108 = *(v102 + 16);
    v107 = *(v102 + 24);
    if (v108 >= v107 >> 1)
    {
      sub_226F20588((v107 > 1), v108 + 1, 1);
      v102 = v168;
    }

    v100 = (v100 + 1);
    *(v102 + 16) = v108 + 1;
    (*(v153 + 32))(v102 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v108, v152, v158);
    v68 = v160;
    v101 = v154;
    if (v99 == v100)
    {

      goto LABEL_37;
    }
  }

  (*v82)(v104, v105);

  __break(1u);
  return result;
}

uint64_t sub_227395B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_2276640C0();
  swift_getAssociatedConformanceWitness();
  return sub_22766D160();
}

uint64_t sub_227395BD0@<X0>(uint64_t a1@<X1>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v16 - v8;
  v10 = sub_2276694E0();
  MEMORY[0x28223BE20](v10 - 8);
  result = sub_227667700();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    v16[0] = v12;
    v16[1] = 0;
    v14 = type metadata accessor for PairedSyncZoneCoordinator(0, v6, v5, v13);
    WitnessTable = swift_getWitnessTable();
    sub_2274F5148(v14, WitnessTable);
    (*(v5 + 104))(v6, v5);
    swift_getAssociatedConformanceWitness();
    sub_22766D140();
    (*(v17 + 8))(v9, AssociatedTypeWitness);
    return sub_227665A00();
  }

  return result;
}

uint64_t sub_227395E28@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_22766D140();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_227395EBC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_2276694E0();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for PairedSyncZoneCoordinator(0, *(v2 + 80), *(v2 + 88), v4);
  WitnessTable = swift_getWitnessTable();
  sub_2274F5148(v5, WitnessTable);
  sub_2276640C0();
  return sub_227665A00();
}

uint64_t sub_227395FD4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  return MEMORY[0x2822009F8](sub_22739601C, 0, 0);
}

uint64_t sub_22739601C()
{
  v1 = *(v0 + 72);
  v12 = *(v0 + 80);
  v2 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_0(v1 + 15, v1[18]);
  *(v0 + 120) = 4;
  sub_226F19410();
  sub_226F19464();
  sub_22766A130();
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v3);
  v5 = swift_allocObject();
  *(v0 + 88) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = *(v4 + 24);

  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *(v0 + 104) = type metadata accessor for SyncablesUpdated(255, *(v12 + 80), *(v12 + 88), v8);
  v9 = sub_22766CB90();
  *v7 = v0;
  v7[1] = sub_227396264;

  return (v11)(v0 + 16, sub_227397030, v5, v9, v3, v4);
}

uint64_t sub_227396264()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_22739647C;
  }

  else
  {

    v2 = sub_227396380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227396380()
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

  sub_2273964EC(*(v0 + 72));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22739647C()
{
  v1 = *(v0 + 72);

  sub_2273964EC(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2273964EC(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1 + 15, a1[18]);
  sub_226F19410();
  sub_226F19464();
  return sub_22766A120();
}

void sub_22739659C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v74 = a1;
  v72 = a4;
  v5 = *a3;
  v6 = *(*a3 + 88);
  v73 = a3;
  v7 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = sub_22766CB90();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v89 = &v70 - v9;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v86 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = &v70 - v14;
  MEMORY[0x28223BE20](v15);
  v84 = &v70 - v16;
  v99 = *(v7 - 8);
  MEMORY[0x28223BE20](v17);
  v88 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v70 - v20;
  v100 = sub_227665A20();
  v21 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v94 = &v70 - v25;
  v81 = *(v6 + 32);
  v103 = sub_22766BE60();
  v97 = v6;
  v26 = v7;
  v27 = v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v91 = AssociatedTypeWitness;
  v80 = AssociatedConformanceWitness;
  v29 = sub_22766BE60();
  v31 = a2 + 56;
  v30 = *(a2 + 56);
  v32 = 1 << *(a2 + 32);
  v33 = -1;
  v102 = v29;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v30;
  v35 = (v32 + 63) >> 6;
  v92 = v27 + 32;
  v93 = v27 + 16;
  v79 = (v99 + 8);
  v95 = (v27 + 8);
  v87 = (v10 + 48);
  v78 = (v10 + 32);
  v77 = (v10 + 16);
  v76 = (v10 + 8);
  v36 = v23;
  v99 = a2;

  v37 = 0;
  v96 = v36;
  v90 = a2 + 56;
  v82 = v27;
  v75 = v26;
  while (v34)
  {
LABEL_12:
    v46 = v100;
    v47 = v94;
    (*(v27 + 16))(v94, *(v99 + 48) + *(v27 + 72) * (__clz(__rbit64(v34)) | (v37 << 6)), v100);
    (*(v27 + 32))(v36, v47, v46);
    v48 = sub_227665A10();
    if (v49 >> 60 == 15)
    {
      sub_2276659E0();
      v38 = v91;
      swift_getAssociatedConformanceWitness();
      v39 = v89;
      sub_22766D160();
      if ((*v87)(v39, 1, v38) == 1)
      {

        (*(v70 + 8))(v39, v71);
        sub_226F1893C();
        swift_allocError();
        *v69 = 16;
        swift_willThrow();

        (*v95)(v96, v100);
        return;
      }

      v40 = v91;
      v41 = v84;
      (*v78)(v84, v39, v91);
      (*v77)(v86, v41, v40);
      sub_22766C730();
      v42 = v85;
      sub_22766C6E0();
      v43 = *v76;
      (*v76)(v42, v40);
      v44 = v41;
      v26 = v75;
      v43(v44, v40);
    }

    else
    {
      v50 = v48;
      v51 = v49;
      sub_226F5E0B4(v48, v49);
      v52 = v98;
      sub_2276676F0();
      v98 = v52;
      if (v52)
      {

        sub_226FB1424(v50, v51);
        (*v95)(v96, v100);

        return;
      }

      sub_22766C730();
      v53 = v83;
      sub_22766C6E0();
      sub_226FB1424(v50, v51);
      v54 = v53;
      v27 = v82;
      (*v79)(v54, v26);
    }

    v34 &= v34 - 1;
    v36 = v96;
    (*v95)(v96, v100);
    v31 = v90;
  }

  while (1)
  {
    v45 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      return;
    }

    if (v45 >= v35)
    {
      break;
    }

    v34 = *(v31 + 8 * v45);
    ++v37;
    if (v34)
    {
      v37 = v45;
      goto LABEL_12;
    }
  }

  v101 = v73;
  v55 = v26;
  v56 = v103;
  v57 = v102;
  v59 = type metadata accessor for PairedSyncZoneCoordinator(0, v55, v97, v58);
  WitnessTable = swift_getWitnessTable();
  v61 = v98;
  sub_2274F54D0(v56, v57, v74, v59, WitnessTable);
  v63 = v62;
  v65 = v64;
  v67 = v66;

  if (!v61)
  {
    v68 = v72;
    *v72 = v63;
    v68[1] = v65;
    v68[2] = v67;
  }
}

BOOL sub_227396DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v4[112])
  {
    if (v4[112] != 2)
    {
      return 0;
    }

    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  v6 = type metadata accessor for PairedSyncZoneCoordinator(0, *(*v4 + 80), *(*v4 + 88), a4);
  WitnessTable = swift_getWitnessTable();

  return sub_2274F6E04(v5, v6, WitnessTable);
}

uint64_t sub_227396EA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E92F34;

  return sub_227395FD4(a1);
}

unint64_t sub_227396F7C()
{
  result = qword_281399110;
  if (!qword_281399110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE710, &qword_22768D920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399110);
  }

  return result;
}

uint64_t sub_22739704C(uint64_t a1)
{
  v35 = sub_227664E20();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_227664E00();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_226F1EFF0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_226EB526C(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_227397354(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v23 = MEMORY[0x277D84F90];
  sub_226F1F468(0, v1, 0);
  v2 = v23;
  v22 = a1 + 56;
  result = sub_22766CC90();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v22 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    v10 = *(a1 + 36);
    result = sub_227669410();
    if (result < 0xFFFFFFFF80000000)
    {
      goto LABEL_24;
    }

    if (result > 0x7FFFFFFF)
    {
      goto LABEL_25;
    }

    v12 = *(v23 + 16);
    v11 = *(v23 + 24);
    if (v12 >= v11 >> 1)
    {
      v20 = result;
      sub_226F1F468((v11 > 1), v12 + 1, 1);
      result = v20;
    }

    *(v23 + 16) = v12 + 1;
    *(v23 + 4 * v12 + 32) = result;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_26;
    }

    v13 = *(v22 + 8 * v9);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_27;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_28;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v21;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v8 = v21;
      v17 = (a1 + 64 + 8 * v9);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_226EB526C(v5, v10, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
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
LABEL_28:
  __break(1u);
  return result;
}

void sub_2273975B8(uint64_t a1, void *a2)
{
  v40[4] = *MEMORY[0x277D85DE8];
  v4 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF68, qword_227682A48);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  v36 = v10;
  v37 = v11;
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  v35 = v8;
  *(v9 + 40) = v8;
  swift_getKeyPath();
  v12 = sub_22739704C(a1);
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v40[0] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226ED25F8(v40, v38);
  v14 = v39;
  if (v39)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v38, v39);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x28223BE20](v15);
    v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = sub_22766D170();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF70 qword_227682A88))];

  sub_226EBC888(v40);
  swift_beginAccess();
  v22 = sub_22766A080();
  v24 = v23;
  MEMORY[0x22AA985C0]();
  if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v22(v40, 0);
  swift_endAccess();

  v25 = sub_22723BD10(0);
  if (v2)
  {
  }

  else
  {
    v26 = v25;
    v27 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
    [v27 setResultType_];
    v40[0] = 0;
    v28 = v37;
    v29 = [v37 executeRequest:v27 error:v40];
    if (v29)
    {
      v30 = v29;
      v31 = v40[0];

      swift_setDeallocating();
      v32 = qword_2813B2078;
      v33 = sub_22766A100();
      (*(*(v33 - 8) + 8))(v9 + v32, v33);
      swift_deallocClassInstance();
    }

    else
    {
      v34 = v40[0];
      sub_2276622C0();

      swift_willThrow();
    }
  }
}

char *sub_227397AA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v33[5] = a4;
  v29[1] = a3;
  v30 = a2;
  v6 = __swift_project_boxed_opaque_existential_0(a5, a5[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF68, qword_227682A48);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  v14 = sub_227397354(a1);
  v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC3E8, &unk_227685D70);
  v33[0] = v14;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226ED25F8(v33, v31);
  v16 = v32;
  if (v32)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v31, v32);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF70 qword_227682A88))];

  sub_226EBC888(v33);
  swift_beginAccess();
  v24 = sub_22766A080();
  v26 = v25;
  MEMORY[0x22AA985C0]();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v24(v33, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_227397EAC();

  swift_beginAccess();
  sub_22766A0D0();
  sub_22766A0F0();
  swift_endAccess();
  v27 = sub_2272319B8(100);

  return v27;
}

uint64_t sub_227397EAC()
{
  v1 = v0;
  sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);

  sub_22766C900();
  swift_beginAccess();
  v2 = sub_22766A0A0();
  v4 = v3;
  MEMORY[0x22AA985C0]();
  if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v2(v6, 0);
  swift_endAccess();
  return v1;
}

uint64_t sub_227397FCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  [v5 addObserver:v0 selector:sel_onAccountChanged name:*MEMORY[0x277CBBF00] object:0];

  v6 = [v4 defaultCenter];
  [v6 addObserver:v0 selector:sel_onIdentityChanged name:*MEMORY[0x277CBBF90] object:0];

  v7 = sub_22766C4B0();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;

  sub_2272CA940(0, 0, v3, &unk_227682B88, v8);
}

uint64_t sub_227398170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_22766B390();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22739823C, 0, 0);
}

uint64_t sub_22739823C()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 48) + 32), *(*(v0 + 48) + 56));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_2273982DC;

  return sub_2274FEB58();
}

uint64_t sub_2273982DC(char a1)
{
  v3 = *v2;
  *(v3 + 105) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_2273985B8;
  }

  else
  {
    v4 = sub_2273983F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2273983F4()
{
  v18 = v0;
  sub_22766A700();
  v1 = sub_22766B380();
  v2 = sub_22766C8B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 105);
    v4 = *(v0 + 80);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v0 + 104) = v3;
    v9 = MEMORY[0x22AA958B0](MEMORY[0x277D51260], MEMORY[0x277D51258]);
    v11 = sub_226E97AE8(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226E8E000, v1, v2, "Updating Account Status to %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v12 = *(v0 + 80);
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);

    (*(v14 + 8))(v12, v13);
  }

  sub_2273988E8(*(v0 + 105));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2273985B8()
{
  v20 = v0;
  v1 = v0[12];
  sub_22766A700();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Could not query for account info with error: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[12];
  sub_2273988E8(4);

  v17 = v0[1];

  return v17();
}

uint64_t sub_2273988E8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  v26 = v2;
  sub_2276696A0();
  v7 = v28;
  v8 = sub_227664EE0();
  v10 = v9;
  if (v8 == sub_227664EE0() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_22766D190();

    if ((v13 & 1) == 0)
    {
      sub_22766A700();
      v15 = sub_22766B380();
      v16 = sub_22766C8B0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v23 = v17;
        v24 = swift_slowAlloc();
        v28 = v24;
        *v17 = 136446210;
        v27 = v2;
        v18 = MEMORY[0x22AA958B0](MEMORY[0x277D51260], MEMORY[0x277D51258]);
        v20 = sub_226E97AE8(v18, v19, &v28);

        v21 = v23;
        *(v23 + 1) = v20;
        _os_log_impl(&dword_226E8E000, v15, v16, "New account status: %{public}s", v21, 0xCu);
        v22 = v24;
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x22AA9A450](v22, -1, -1);
        MEMORY[0x22AA9A450](v21, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
      swift_getObjectType();
      LOBYTE(v28) = v7;
      BYTE1(v28) = v2;
      sub_2271DC194();
      return sub_2276699D0();
    }
  }

  return result;
}

uint64_t sub_227398B94()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_227398C00(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  sub_22766A700();
  v9 = a1;
  v10 = sub_22766B380();
  v11 = sub_22766C8B0();

  v12 = os_log_type_enabled(v10, v11);
  v39 = v5;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v42 = v9;
    v43 = v14;
    *v13 = 136446210;
    type metadata accessor for CKError(0);
    v38 = v2;
    v15 = v3;
    v17 = v16;
    v18 = sub_227399064(&unk_281399178, &unk_227670608);
    v19 = MEMORY[0x22AA995D0](v17, v18);
    v21 = sub_226E97AE8(v19, v20, &v43);

    *(v13 + 4) = v21;
    v3 = v15;
    v2 = v38;
    _os_log_impl(&dword_226E8E000, v10, v11, "Received account status error: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA9A450](v14, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);
  }

  v22 = *(v3 + 8);
  v22(v8, v2);
  v43 = v9;
  type metadata accessor for CKError(0);
  v24 = v23;
  sub_227399064(&qword_27D7B8328, &unk_22767064C);
  sub_227662280();
  if (v42 == 32)
  {
    goto LABEL_9;
  }

  if (v42 == 9)
  {
    v25 = 4;
    return sub_2273988E8(v25);
  }

  v41 = v9;
  sub_227662280();
  if (v40 == 111)
  {
LABEL_9:
    v25 = 3;
    return sub_2273988E8(v25);
  }

  if (v40 == 110)
  {
    v25 = 1;
    return sub_2273988E8(v25);
  }

  v27 = v39;
  sub_22766A700();
  v28 = v9;
  v29 = sub_22766B380();
  v30 = sub_22766C8A0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v28;
    v41 = v32;
    *v31 = 136446210;
    v33 = sub_227399064(&unk_281399178, &unk_227670608);
    v34 = MEMORY[0x22AA995D0](v24, v33);
    v36 = sub_226E97AE8(v34, v35, &v41);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_226E8E000, v29, v30, "Unhandled account error: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v31, -1, -1);

    v37 = v39;
  }

  else
  {

    v37 = v27;
  }

  return (v22)(v37, v2);
}

uint64_t sub_227399064(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2273990B4(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 80);
  *(v2 + 80) = *(v1 + 24);
  *a1 = v3;
}

uint64_t sub_2273990CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_227398170(a1, v4, v5, v6);
}

uint64_t sub_227399180(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_227398170(a1, v4, v5, v6);
}

uint64_t ScriptError.hashValue.getter()
{
  v1 = *v0;
  sub_22766D370();
  MEMORY[0x22AA996B0](v1);
  return sub_22766D3F0();
}

unint64_t sub_2273992C0()
{
  result = qword_27D7BCF78;
  if (!qword_27D7BCF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCF78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScriptError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScriptError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for AssetLoaderResponse(uint64_t a1)
{
  result = qword_2813A1AF8;
  if (!qword_2813A1AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2273994D8(uint64_t a1)
{
  result = sub_2276624A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22739954C(void *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_2276694E0();
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_227662750();
  v11 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  v18 = [a1 zoneName];
  if (v18)
  {
    v40 = a2;
    v41 = v2;
    v19 = a1;
    v20 = v18;
    v42 = sub_22766C000();

    v21 = [v19 timestamp];
    if (v21)
    {
      v22 = v21;
      v39 = v19;
      sub_227662710();

      v23 = v11;
      v24 = *(v11 + 32);
      v25 = v17;
      v26 = v13;
      v27 = v44;
      v38 = v24;
      v24(v17, v26, v44);
      sub_2276694B0();
      v28 = v43;
      if ((*(v43 + 48))(v7, 1, v8) == 1)
      {
        sub_226E97D1C(v7, &qword_27D7B8460, qword_2276709E0);
        v29 = sub_227664DD0();
        sub_227399B78(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D51028], v29);
        swift_willThrow();

        (*(v23 + 8))(v25, v27);
      }

      else
      {

        v35 = *(v28 + 32);
        v35(v10, v7, v8);
        v36 = v40;
        v35(v40, v10, v8);
        v37 = type metadata accessor for DirtySyncZone(0);
        v38(&v36[*(v37 + 20)], v25, v27);
      }
    }

    else
    {

      v33 = sub_227664DD0();
      sub_227399B78(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51028], v33);
      swift_willThrow();
    }
  }

  else
  {
    v31 = sub_227664DD0();
    sub_227399B78(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51028], v31);
    swift_willThrow();
  }
}

void sub_227399A88(void *a1)
{
  sub_2276694C0();
  v2 = sub_22766BFD0();

  [a1 setZoneName_];

  v3 = sub_2276626A0();
  [a1 setTimestamp_];
}

uint64_t sub_227399B20(uint64_t a1)
{
  result = sub_227399B78(&unk_28139B088, type metadata accessor for DirtySyncZone, &unk_227682C98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227399B78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227399BC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF80, qword_227682CE0);
  v1 = *(v0 - 8);
  v30 = v0;
  v31 = v1;
  MEMORY[0x28223BE20](v0);
  v3 = v26 - v2;
  v4 = type metadata accessor for DirtySyncZone(0);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276694D0();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = sub_2274CD740(*(v7 + 16), 0);
    v11 = *(sub_2276694E0() - 8);
    sub_2274CDD98(v39, &v10[(*(v11 + 80) + 32) & ~*(v11 + 80)], v9, v8);
    v13 = v12;
    sub_226EBB21C(v39[0]);
    if (v13 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v14 = sub_2276694E0();
  v15 = sub_22766C330();

  sub_227662630();
  v16 = sub_227662750();
  v17 = sub_22766C330();

  v37 = v17;
  v38 = v15;
  v39[0] = &v38;
  v39[1] = &v37;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D30, &qword_227671EF8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v33 = sub_226F5BF60(&qword_27D7B8D40, &qword_27D7B8D30, &qword_227671EF8);
  v34 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v18 = sub_2276638E0();

  v19 = *(v18 + 16);
  if (v19)
  {
    v32 = MEMORY[0x277D84F90];
    result = sub_226F1F010(0, v19, 0);
    v21 = 0;
    v22 = v32;
    v27 = v18 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v26[0] = v16 - 8;
    v26[1] = v14 - 8;
    while (v21 < *(v18 + 16))
    {
      sub_22739A01C(v27 + *(v31 + 72) * v21, v3);
      v23 = *(v30 + 48);
      (*(*(v14 - 8) + 16))(v6, v3, v14);
      (*(*(v16 - 8) + 16))(&v6[*(v29 + 20)], &v3[v23], v16);
      sub_226E97D1C(v3, &qword_27D7BCF80, qword_227682CE0);
      v32 = v22;
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1F010((v24 > 1), v25 + 1, 1);
        v22 = v32;
      }

      ++v21;
      *(v22 + 16) = v25 + 1;
      result = sub_2271302D4(v6, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25);
      if (v19 == v21)
      {

        return v22;
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

uint64_t sub_22739A01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF80, qword_227682CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22739A08C()
{
  v1 = sub_2276629D0();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_227666CE0();
  v3 = v2 + 56;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v6 &= v6 - 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
      sub_227663B00();
      if (v18 != 3)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2273A50E4(0, *(v9 + 2) + 1, 1, v9);
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v17 = v12 + 1;
      v14 = v9;
      v15 = *(v9 + 2);
      v16 = sub_2273A50E4((v11 > 1), v12 + 1, 1, v14);
      v12 = v15;
      v13 = v17;
      v9 = v16;
    }

    *(v9 + 2) = v13;
    v9[v12 + 32] = v18;
  }

  while (v6);
LABEL_6:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      sub_226F419F4(v9);

      sub_227666CF0();
      sub_227666CC0();
      sub_227666D00();
      sub_227666D10();
      sub_227662AC0();
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_4;
    }
  }

  __break(1u);
}

uint64_t sub_22739A2E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D68];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22739A360@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227668E00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22739A388(uint64_t a1)
{
  *(a1 + 24) = sub_22739A3F0(&qword_2813A5540, &unk_22768E2C8);
  result = sub_22739A3F0(&unk_2813A5530, MEMORY[0x277D538C0]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22739A3F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227668E30();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MetricRecordingContext(uint64_t a1)
{
  result = qword_28139A3F8;
  if (!qword_28139A3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22739A4A8(uint64_t a1)
{
  result = sub_227666C80();
  if (v2 <= 0x3F)
  {
    result = sub_2276666A0();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MetricServiceSubscriptionState(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_22739A564(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v53 - v5;
  v7 = sub_227662750();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v53 - v14;
  v16 = sub_2276624A0();
  v65 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v64 = v53 - v21;
  v22 = [a1 identifier];
  if (!v22)
  {
    goto LABEL_9;
  }

  v58 = v18;
  v23 = a2;
  v60 = v12;
  v24 = v22;
  v59 = sub_22766C000();
  v26 = v25;

  v27 = [a1 userIdentifier];
  if (!v27)
  {
    goto LABEL_8;
  }

  v61 = v26;
  v28 = v27;
  v57 = sub_22766C000();
  v30 = v29;

  v31 = [a1 workoutIdentifier];
  if (!v31)
  {

LABEL_8:

LABEL_9:
    v40 = sub_227664DD0();
    sub_22739B35C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51028], v40);
    swift_willThrow();

    return;
  }

  v56 = v16;
  v32 = v31;
  v55 = sub_22766C000();
  v34 = v33;

  v35 = [a1 slotIdentifier];
  if (!v35)
  {

    goto LABEL_8;
  }

  v53[3] = v34;
  v53[4] = v30;
  v54 = v6;
  v53[1] = v23;
  v36 = v35;
  v53[0] = sub_22766C000();
  v53[2] = v37;

  v38 = [a1 masterPlaylist];
  if (v38)
  {
    v39 = v38;
    sub_22766C000();
  }

  v42 = v54;
  v43 = v56;
  sub_227662310();
  v44 = v65;
  if ((*(v65 + 48))(v15, 1, v43) == 1)
  {

    sub_226E97D1C(v15, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_9;
  }

  (*(v44 + 32))(v64, v15, v43);
  v54 = [a1 version];
  LODWORD(v56) = [a1 canFreeDeviceSlot];
  v45 = [a1 renewDate];
  if (v45)
  {
    v46 = v45;
    sub_227662710();

    v47 = v62;
    v48 = v63;
    v49 = *(v62 + 32);
    v49(v42, v9, v63);
    (*(v47 + 56))(v42, 0, 1, v48);
    v49(v60, v42, v48);
    v44 = v65;
  }

  else
  {
    v51 = v62;
    v50 = v63;
    (*(v62 + 56))(v42, 1, 1, v63);
    sub_227662740();
    if ((*(v51 + 48))(v42, 1, v50) != 1)
    {
      sub_226E97D1C(v42, &qword_27D7B9690, qword_227670B50);
    }
  }

  v52 = v64;
  (*(v44 + 16))(v58, v64, v43);
  sub_227666800();

  (*(v44 + 8))(v52, v43);
}

void *static AssetRequestKeyMetadata.representativeSamples()()
{
  v41 = sub_2276624A0();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = v27 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_227662750();
  v45 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF88, &qword_227682DC8);
  v2 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = v27 - v3;
  v36 = sub_2276668A0();
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766C090();
  sub_226F05E24();
  v47 = sub_22766CFA0();
  v46 = sub_22766C410();
  v9 = sub_22766C090();
  v10 = sub_22766C090();
  v11 = sub_22766C090();
  v12 = sub_227662630();
  v13 = sub_2276622F0();
  v71 = v47;
  v72[0] = v8;
  v72[1] = v72;
  v72[2] = &v71;
  v69 = v9;
  v70 = v46;
  v72[3] = &v70;
  v72[4] = &v69;
  v67 = v11;
  v68 = v10;
  v72[5] = &v68;
  v72[6] = &v67;
  v65 = v13;
  v66 = v12;
  v72[7] = &v66;
  v72[8] = &v65;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v57 = v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8ED8, &qword_227672868);
  v60 = v14;
  v61 = v14;
  v62 = v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v15 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v49 = v15;
  v50 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v51 = sub_226F5BF60(&qword_27D7B8EE8, &qword_27D7B8ED8, &qword_227672868);
  v52 = v15;
  v53 = v15;
  v54 = v15;
  v55 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v56 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v16 = sub_2276638E0();

  v17 = *(v16 + 16);
  if (v17)
  {
    v48 = MEMORY[0x277D84F90];
    result = sub_226F1F4A8(0, v17, 0);
    v19 = 0;
    v20 = v48;
    v30 = v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v31 = v17;
    v28 = (v44 + 16);
    v29 = (v45 + 16);
    v27[1] = v5 + 32;
    v34 = v5;
    v35 = v2;
    v32 = v16;
    v33 = v7;
    while (v19 < *(v16 + 16))
    {
      sub_22739B294(v30 + *(v2 + 72) * v19, v4);
      v21 = *v4;
      v46 = *(v4 + 2);
      v47 = v21;
      LODWORD(v45) = v4[24];
      v22 = *(v4 + 4);
      v43 = *(v4 + 6);
      v44 = v22;
      v42 = *(v4 + 8);
      v23 = *(v37 + 144);
      (*v29)(v38, &v4[*(v37 + 128)], v39);
      (*v28)(v40, &v4[v23], v41);

      v24 = v33;
      sub_227666800();
      sub_226E97D1C(v4, &qword_27D7BCF88, &qword_227682DC8);
      v48 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226F1F4A8((v25 > 1), v26 + 1, 1);
        v20 = v48;
      }

      ++v19;
      *(v20 + 16) = v26 + 1;
      result = (*(v34 + 32))(v20 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v26, v24, v36);
      v16 = v32;
      v2 = v35;
      if (v31 == v19)
      {

        return v20;
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

uint64_t sub_22739B294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF88, &qword_227682DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22739B304(uint64_t a1)
{
  result = sub_22739B35C(&qword_28139B618, MEMORY[0x277D526D0], &protocol conformance descriptor for AssetRequestKeyMetadata);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22739B35C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22739B3A4(void *a1)
{
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227662750();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227666810();
  v10 = sub_22766BFD0();

  [a1 setIdentifier_];

  v11 = sub_227666870();
  v12 = 0x7FFFFFFFLL;
  if (v11 < 0x7FFFFFFF)
  {
    v12 = v11;
  }

  if (v12 <= 0xFFFFFFFF80000000)
  {
    v13 = 0xFFFFFFFF80000000;
  }

  else
  {
    v13 = v12;
  }

  [a1 setVersion_];
  [a1 setCanFreeDeviceSlot_];
  sub_227666840();
  v14 = sub_22766BFD0();

  [a1 setUserIdentifier_];

  sub_227666860();
  v15 = sub_22766BFD0();

  [a1 setWorkoutIdentifier_];

  sub_227666830();
  v16 = sub_22766BFD0();

  [a1 setSlotIdentifier_];

  sub_227666890();
  v17 = sub_2276626A0();
  (*(v7 + 8))(v9, v6);
  [a1 setRenewDate_];

  sub_227666820();
  sub_227662390();
  (*(v3 + 8))(v5, v2);
  v18 = sub_22766BFD0();

  [a1 setMasterPlaylist_];
}

unint64_t sub_22739B6AC()
{
  result = qword_27D7BCF90;
  if (!qword_27D7BCF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCF90);
  }

  return result;
}

unint64_t sub_22739B700(uint64_t a1)
{
  result = sub_22739B728();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22739B728()
{
  result = qword_27D7BCF98;
  if (!qword_27D7BCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCF98);
  }

  return result;
}

uint64_t sub_22739B77C(uint64_t a1)
{
  v1 = sub_22766C090();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1EEF0(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226F1EEF0((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22739B884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v27 = a3;
  v26 = a4;
  v9 = sub_22766CB90();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = [v6 recordID];
  v15 = [v14 recordName];

  v16 = sub_22766C000();
  v18 = v17;

  v19 = type metadata accessor for SyncEncryptionKey(0);
  sub_22739C5E8(a1 + *(v19 + 20), v16, v18);
  if (v5)
  {
  }

  v21 = v10;
  v22 = v26;

  sub_22766D160();
  v23 = *(a2 - 8);
  if ((*(v23 + 48))(v13, 1, a2) != 1)
  {
    return (*(v23 + 32))(v22, v13, a2);
  }

  (*(v21 + 8))(v13, v9);
  sub_226F1893C();
  swift_allocError();
  *v24 = 16;
  return swift_willThrow();
}

uint64_t sub_22739BAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B4C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  if (sub_22766B4B0() == 256)
  {
    v27 = sub_2274EE270(0xD000000000000013, 0x800000022769F460);
    v28 = v15;
    sub_22766B5A0();
    sub_22739D19C(&qword_2813991E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v26[0] = a2;
    sub_22739C52C();
    sub_22766B570();
    sub_226EDC420(v27, v28);
    v27 = sub_2274EE270(0xD000000000000015, 0x800000022769F480);
    v28 = v16;
    sub_22766B570();
    sub_226EDC420(v27, v28);
    v17 = v26[1];
    sub_22766B470();
    v18 = v27;
    v19 = v28;
    (*(v9 + 16))(v29, v14, v8);
    v27 = v18;
    v28 = v19;
    sub_22766B520();
    v20 = *(v9 + 8);
    if (v17)
    {
      v20(v29, v8);
    }

    v20(v11, v8);
    return (v20)(v14, v8);
  }

  else
  {
    sub_22766A6B0();
    v21 = sub_22766B380();
    v22 = sub_22766C890();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_226E8E000, v21, v22, "Invalid Encryption Key: Not a 256 bit key.", v23, 2u);
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    sub_226F1893C();
    swift_allocError();
    *v24 = 7;
    return swift_willThrow();
  }
}

uint64_t sub_22739BEAC(char *a1, uint64_t a2, unint64_t a3)
{
  v65 = a1;
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v63 = v5;
  v64 = v6;
  MEMORY[0x28223BE20](v5);
  v59 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFA0, &unk_227682F10);
  MEMORY[0x28223BE20](v10 - 8);
  v62 = &v52 - v11;
  v12 = sub_22766B560();
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x28223BE20](v12);
  v61 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B530();
  v60 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22766B4C0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  v21 = sub_2274EE270(a2, a3);
  v23 = v22;
  v24 = v68;
  sub_22739BAC0(v20, v16, v65);
  if (v24)
  {
    sub_226EDC420(v21, v23);
  }

  else
  {
    v25 = v18;
    v68 = v17;
    v54 = v21;
    v55 = v23;
    v66 = v21;
    v67 = v23;
    v26 = v60;
    v27 = *(v60 + 16);
    v28 = v62;
    v65 = v16;
    v27(v62, v16, v14);
    v29 = v26;
    (*(v26 + 56))(v28, 0, 1, v14);
    sub_22739C52C();
    v30 = v61;
    sub_22766B500();
    v53 = v14;
    v31 = v20;
    sub_22739C580(v28);
    v32 = sub_22766B540();
    v34 = v33;
    (*(v57 + 8))(v30, v58);
    v36 = v63;
    v35 = v64;
    if (v34 >> 60 == 15)
    {
      v37 = v59;
      sub_22766A6B0();
      v38 = sub_22766B380();
      v39 = sub_22766C890();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_226E8E000, v38, v39, "Couldn't encrypt string.", v40, 2u);
        MEMORY[0x22AA9A450](v40, -1, -1);
      }

      v41 = *(v35 + 8);
      v21 = v35 + 8;
      v41(v37, v36);
      sub_226F1893C();
      swift_allocError();
      *v42 = 8;
      swift_willThrow();
      sub_226EDC420(v54, v55);
      (*(v29 + 8))(v65, v53);
      (*(v25 + 8))(v31, v68);
    }

    else
    {
      v21 = sub_227662570();
      if (sub_22766C110() < 256)
      {
        sub_226FB1424(v32, v34);
        sub_226EDC420(v54, v55);
        (*(v29 + 8))(v65, v53);
        (*(v25 + 8))(v31, v68);
      }

      else
      {
        v61 = v32;
        v62 = v31;

        v44 = v56;
        sub_22766A6B0();
        v45 = sub_22766B380();
        v21 = sub_22766C8A0();
        v46 = os_log_type_enabled(v45, v21);
        v47 = v68;
        v48 = v65;
        if (v46)
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_226E8E000, v45, v21, "Resulting identifier would be too long.", v49, 2u);
          v50 = v49;
          v44 = v56;
          MEMORY[0x22AA9A450](v50, -1, -1);
        }

        (*(v64 + 8))(v44, v36);
        sub_226F1893C();
        swift_allocError();
        *v51 = 8;
        swift_willThrow();
        sub_226FB1424(v61, v34);
        sub_226EDC420(v54, v55);
        (*(v29 + 8))(v48, v53);
        (*(v25 + 8))(v62, v47);
      }
    }
  }

  return v21;
}

unint64_t sub_22739C52C()
{
  result = qword_28139BDC8;
  if (!qword_28139BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BDC8);
  }

  return result;
}

uint64_t sub_22739C580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFA0, &unk_227682F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSObject *sub_22739C5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = sub_22766B390();
  v66 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v53 - v7;
  MEMORY[0x28223BE20](v8);
  v57 = &v53 - v9;
  MEMORY[0x28223BE20](v10);
  v55 = &v53 - v11;
  v12 = sub_22766C050();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_22766B560();
  v56 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22766B530();
  v60 = *(v18 - 8);
  v61 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22766B4C0();
  v62 = *(v21 - 8);
  v63 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_227662510();
  if (v25 >> 60 != 15)
  {
    v64 = v24;
    v59 = v25;
    v29 = v65;
    sub_22739BAC0(v23, v20, a1);
    if (v29)
    {
      sub_226FB1424(v64, v59);
      return v14;
    }

    v65 = v23;
    v30 = v64;
    v31 = v59;
    sub_226F5E0B4(v64, v59);
    sub_2273FC4D8(12, v30, v31, v69);
    v32 = v69[0];
    v33 = v69[1];
    v54 = v20;
    sub_22766B510();
    v53 = 0;
    v34 = v67;
    v35 = v68;
    LOBYTE(v30) = sub_227130B5C(v32, v33, v67, v68);
    sub_226EDC420(v32, v33);
    sub_226EDC420(v34, v35);
    if (v30)
    {
      v36 = v64;
      sub_226F5E0B4(v64, v31);
      v37 = v53;
      sub_22739CE8C(v36, v31);
      if (!v37)
      {
        v44 = sub_22766B4F0();
        v46 = v45;
        (*(v56 + 8))(v17, v15);
        sub_22766C040();
        v47 = sub_22766C020();
        if (v48)
        {
          v14 = v47;
          sub_226EDC420(v44, v46);
          sub_226FB1424(v64, v59);
          (*(v60 + 8))(v54, v61);
          (*(v62 + 8))(v65, v63);
          return v14;
        }

        v49 = v55;
        sub_22766A6B0();
        v14 = sub_22766B380();
        v50 = sub_22766C890();
        if (os_log_type_enabled(v14, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_226E8E000, v14, v50, "Decrypted data isn't valid utf8", v51, 2u);
          MEMORY[0x22AA9A450](v51, -1, -1);
        }

        (*(v66 + 8))(v49, v70);
        sub_226F1893C();
        swift_allocError();
        *v52 = 8;
        swift_willThrow();
        sub_226EDC420(v44, v46);
        goto LABEL_17;
      }

      v38 = v57;
      sub_22766A6B0();
      v14 = sub_22766B380();
      v39 = sub_22766C890();
      if (os_log_type_enabled(v14, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        v41 = "Couldn't decrypt data.";
        goto LABEL_15;
      }
    }

    else
    {
      v38 = v58;
      sub_22766A6B0();
      v14 = sub_22766B380();
      v39 = sub_22766C890();
      if (os_log_type_enabled(v14, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        v41 = "Data nonce doesn't match key nonce.";
LABEL_15:
        _os_log_impl(&dword_226E8E000, v14, v39, v41, v40, 2u);
        MEMORY[0x22AA9A450](v40, -1, -1);
      }
    }

    (*(v66 + 8))(v38, v70);
    sub_226F1893C();
    swift_allocError();
    *v42 = 8;
    swift_willThrow();
LABEL_17:
    sub_226FB1424(v64, v59);
    (*(v60 + 8))(v54, v61);
    (*(v62 + 8))(v65, v63);
    return v14;
  }

  sub_22766A6B0();
  v14 = sub_22766B380();
  v26 = sub_22766C890();
  if (os_log_type_enabled(v14, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_226E8E000, v14, v26, "Invalid Identifier: Not in base64", v27, 2u);
    MEMORY[0x22AA9A450](v27, -1, -1);
  }

  (*(v66 + 8))(v5, v70);
  sub_226F1893C();
  swift_allocError();
  *v28 = 8;
  swift_willThrow();
  return v14;
}

uint64_t sub_22739CDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_0(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_2274F1248(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_2274F13A0(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_2274F141C(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_22739CE8C(uint64_t a1, unint64_t a2)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_226EDC420(a1, a2);
      v7 = sub_22766B440();
      sub_22739D19C(&qword_27D7BCFA8, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = MEMORY[0x277CC9318];
  v29[4] = MEMORY[0x277CC9300];
  v29[0] = a1;
  v29[1] = a2;
  v10 = __swift_project_boxed_opaque_existential_0(v29, MEMORY[0x277CC9318]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = sub_227662060();
    if (v18)
    {
      v19 = sub_227662090();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = sub_227662060();
      if (!v18)
      {
LABEL_25:
        v24 = sub_227662080();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = sub_227662090();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  sub_2274F0FC8(v15, v14, &v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return sub_22766B550();
}

uint64_t sub_22739D19C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22739D1FC()
{
  v1 = v0;
  v2 = sub_227669A70();
  v58 = *(v2 - 8);
  v3 = v58;
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = v1[2];
  v52 = v1[4];
  ObjectType = swift_getObjectType();
  v59 = v10;
  v12 = *MEMORY[0x277D4E908];
  v55 = *(v3 + 104);
  v55(v5, v12, v2);
  swift_allocObject();
  v49 = v1;
  swift_weakInit();
  v51 = sub_227666C80();
  swift_unknownObjectRetain_n();
  v53 = ObjectType;
  sub_227669E90();

  v13 = v58 + 8;
  v56 = *(v58 + 8);
  v56(v5, v2);
  v58 = v13;
  swift_unknownObjectRelease();
  v59 = v10;
  v14 = v55;
  v55(v5, *MEMORY[0x277D4E8A0], v2);
  swift_allocObject();
  swift_weakInit();
  v50 = sub_2276666A0();
  swift_unknownObjectRetain();
  sub_227669E90();

  v56(v5, v2);
  swift_unknownObjectRelease();
  v59 = v10;
  v14(v5, *MEMORY[0x277D4E8D8], v2);
  v54 = v3 + 104;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v15 = v2;
  v57 = v2;
  v16 = v2;
  v17 = v56;
  v56(v5, v16);
  swift_unknownObjectRelease();
  v59 = v10;
  v14(v5, *MEMORY[0x277D4E888], v15);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v17(v5, v57);
  swift_unknownObjectRelease();
  v59 = v10;
  v48 = *MEMORY[0x277D4E9C0];
  (v14)(v5);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v18 = v56;
  v56(v5, v57);
  swift_unknownObjectRelease();
  v59 = v10;
  v47 = *MEMORY[0x277D4E938];
  v19 = v55;
  (v55)(v5);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v20 = v57;
  v18(v5, v57);
  swift_unknownObjectRelease();
  v59 = v10;
  v19(v5, *MEMORY[0x277D4EA30], v20);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFB0, &qword_227682F60);
  sub_22739F1C4();
  sub_22739F248();
  sub_227669E90();

  v21 = v20;
  v22 = v56;
  v56(v5, v21);
  swift_unknownObjectRelease();
  v59 = v10;
  v46 = *MEMORY[0x277D4E8E0];
  v23 = v55;
  (v55)(v5);
  swift_allocObject();
  swift_weakInit();
  v45 = sub_227666710();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v24 = v57;
  v22(v5, v57);
  swift_unknownObjectRelease();
  v59 = v10;
  v44 = *MEMORY[0x277D4EC88];
  v25 = v24;
  v23(v5);
  swift_allocObject();
  v26 = v49;
  swift_weakInit();
  v43 = sub_227668A00();
  sub_227669EE0();

  v27 = v56;
  v56(v5, v25);
  swift_unknownObjectRelease();
  v59 = v10;
  v28 = v25;
  v29 = v55;
  v55(v5, *MEMORY[0x277D4EC68], v28);
  swift_allocObject();
  swift_weakInit();
  sub_227669ED0();

  v30 = v57;
  v27(v5, v57);
  swift_unknownObjectRelease();
  v31 = v26[11];
  v32 = v26[13];
  v53 = swift_getObjectType();
  v59 = v31;
  v29(v5, v48, v30);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v33 = v32;
  sub_227669EA0();

  v35 = v56;
  v34 = v57;
  v56(v5, v57);
  swift_unknownObjectRelease();
  v59 = v31;
  v29(v5, v47, v34);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v52 = v33;
  sub_227669EA0();

  v36 = v57;
  v35(v5, v57);
  swift_unknownObjectRelease();
  v59 = v31;
  v55(v5, v46, v36);
  swift_allocObject();
  swift_weakInit();
  sub_227669EA0();

  v37 = v57;
  v35(v5, v57);
  swift_unknownObjectRelease();
  v59 = v31;
  v55(v5, v44, v37);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v35(v5, v37);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v26 + 6, v26[9]);
  v38 = swift_allocObject();
  swift_weakInit();
  sub_226F66214(47, sub_22739F544, v38);

  __swift_project_boxed_opaque_existential_0(v26 + 6, v26[9]);
  v39 = swift_allocObject();
  swift_weakInit();
  sub_226F66024(48, sub_22739F548, v39);

  __swift_project_boxed_opaque_existential_0(v26 + 6, v26[9]);
  v40 = swift_allocObject();
  swift_weakInit();
  sub_226F66024(9, sub_22739F528, v40);

  __swift_project_boxed_opaque_existential_0(v26 + 6, v26[9]);
  v41 = swift_allocObject();
  swift_weakInit();
  sub_226F66024(10, sub_22739F54C, v41);
}

uint64_t sub_22739E058@<X0>(unsigned __int8 *a1@<X0>, void (*a3)(uint64_t)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    a3(v10);

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return (*(*(v12 - 8) + 56))(a6, v11, 1, v12);
}

uint64_t sub_22739E150@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 40);

    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    v9 = __swift_project_boxed_opaque_existential_0((v8 + 16), *(v8 + 40));
    v10 = *(*v9 + 56);
    v11 = *(*v9 + 64);
    __swift_project_boxed_opaque_existential_0((*v9 + 32), v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFB0, &qword_227682F60);
    sub_226ECF5D8(sub_2273622C4, 0, v10, v12, v11, a2);

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD550, &unk_22767E3F0);
  return (*(*(v14 - 8) + 56))(a2, v13, 1, v14);
}

uint64_t sub_22739E35C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22739E37C, 0, 0);
}

uint64_t sub_22739E37C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[7] = *(Strong + 40);

    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_2270026B8;
    v3 = v0[5];

    return sub_226FC1684(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22739E484(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22739E4A4, 0, 0);
}

uint64_t sub_22739E4A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[7] = *(Strong + 40);

    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_22739E5EC;
    v3 = v0[5];

    return sub_226FC1D60(v3);
  }

  else
  {
    v5 = v0[5];
    v6 = sub_227668A00();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22739E5EC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22700162C;
  }

  else
  {

    v2 = sub_22739E708;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22739E708()
{
  v1 = *(v0 + 40);
  v2 = sub_227668A00();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22739E7A8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 40);

    sub_22766A730();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    __swift_project_boxed_opaque_existential_0((v10 + 16), *(v10 + 40));
    sub_227360EBC(a1, a3);

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v12 - 8) + 56))(a3, v11, 1, v12);
}

uint64_t sub_22739E974@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 40);

    sub_22766A730();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    __swift_project_boxed_opaque_existential_0((v10 + 16), *(v10 + 40));
    sub_2273617E0(a1, a3);

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v12 - 8) + 56))(a3, v11, 1, v12);
}

uint64_t sub_22739EB44@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_226FC0E44(a1, a3);

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v6 - 8) + 56))(a3, v5, 1, v6);
}

uint64_t sub_22739EC24@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 40);

    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    __swift_project_boxed_opaque_existential_0((v8 + 16), *(v8 + 40));
    sub_227360A74(a2);

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  return (*(*(v10 - 8) + 56))(a2, v9, 1, v10);
}

uint64_t sub_22739EDE0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 40);

    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    __swift_project_boxed_opaque_existential_0((v8 + 16), *(v8 + 40));
    sub_226EDD55C(a2);

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  return (*(*(v10 - 8) + 56))(a2, v9, 1, v10);
}

uint64_t sub_22739EF9C@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_226EDE0C0(a2);

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  return (*(*(v4 - 8) + 56))(a2, v3, 1, v4);
}

uint64_t sub_22739F074()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_22739F1C4()
{
  result = qword_281398D20;
  if (!qword_281398D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCFB0, &qword_227682F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D20);
  }

  return result;
}

unint64_t sub_22739F248()
{
  result = qword_281398D18;
  if (!qword_281398D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCFB0, &qword_227682F60);
    sub_22739F2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D18);
  }

  return result;
}

unint64_t sub_22739F2CC()
{
  result = qword_28139B640;
  if (!qword_28139B640)
  {
    sub_227666710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B640);
  }

  return result;
}

uint64_t sub_22739F324(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22739E35C(a1, v1);
}

uint64_t sub_22739F3BC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_22739E484(a1, v1);
}

uint64_t sub_22739F490(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22739E35C(a1, v1);
}

uint64_t sub_22739F55C(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v26 = a2;
  v28 = MEMORY[0x277D84F90];
  v27 = *(a1 + 16);
  a2(0, v3, 0);
  v4 = v28;
  v6 = a1 + 56;
  result = sub_22766CC90();
  v8 = v27;
  v9 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v6 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v13 = *(*(a1 + 48) + result);
    v14 = *(a1 + 36);
    v16 = *(v28 + 16);
    v15 = *(v28 + 24);
    if (v16 >= v15 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      v26(v15 > 1, v16 + 1, 1);
      v8 = v27;
      v14 = v24;
      result = v25;
    }

    *(v28 + 16) = v16 + 1;
    *(v28 + v16 + 32) = v13;
    v10 = 1 << *(a1 + 32);
    if (result >= v10)
    {
      goto LABEL_22;
    }

    v17 = *(v6 + 8 * v11);
    if ((v17 & v12) == 0)
    {
      goto LABEL_23;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v10 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (a1 + 64 + 8 * v11);
      while (v20 < (v10 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_226EB526C(result, v14, 0);
          v8 = v27;
          v10 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_226EB526C(result, v14, 0);
      v8 = v27;
    }

LABEL_4:
    ++v9;
    result = v10;
    if (v9 == v8)
    {
      return v4;
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

uint64_t sub_22739F788(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(BOOL, unint64_t, uint64_t), void (*a5)(uint64_t))
{
  v54 = a5;
  v53 = a2(0);
  v9 = *(v53 - 8);
  v10 = MEMORY[0x28223BE20](v53);
  v52 = &v40 - v11;
  v51 = (a3)(0, v10);
  v12 = *(v51 - 8);
  v13 = MEMORY[0x28223BE20](v51);
  v15 = &v40 - v14;
  v16 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v49 = v15;
    v41 = a4;
    v42 = v5;
    v58 = MEMORY[0x277D84F90];
    (a4)(0, v16, 0, v13);
    v56 = a1 + 56;
    v57 = v58;
    result = sub_22766CC90();
    v18 = result;
    v19 = 0;
    v47 = v9 + 8;
    v48 = v9 + 16;
    v50 = v12;
    v45 = v9;
    v46 = v12 + 32;
    v43 = a1 + 64;
    v44 = v16;
    v20 = v9;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
    {
      v23 = v18 >> 6;
      if ((*(v56 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_22;
      }

      v55 = *(a1 + 36);
      v25 = v52;
      v24 = v53;
      v26 = (*(v20 + 16))(v52, *(a1 + 48) + *(v20 + 72) * v18, v53);
      v27 = a1;
      v28 = v49;
      v54(v26);
      (*(v20 + 8))(v25, v24);
      v29 = v57;
      v58 = v57;
      v31 = *(v57 + 16);
      v30 = *(v57 + 24);
      if (v31 >= v30 >> 1)
      {
        v41(v30 > 1, v31 + 1, 1);
        v29 = v58;
      }

      *(v29 + 16) = v31 + 1;
      v32 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v57 = v29;
      result = (*(v50 + 32))(v29 + v32 + *(v50 + 72) * v31, v28, v51);
      v21 = 1 << *(v27 + 32);
      if (v18 >= v21)
      {
        goto LABEL_23;
      }

      v33 = *(v56 + 8 * v23);
      if ((v33 & (1 << v18)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v27;
      if (v55 != *(v27 + 36))
      {
        goto LABEL_25;
      }

      v34 = v33 & (-2 << (v18 & 0x3F));
      if (v34)
      {
        v21 = __clz(__rbit64(v34)) | v18 & 0x7FFFFFFFFFFFFFC0;
        v22 = v44;
      }

      else
      {
        v35 = v23 << 6;
        v36 = v23 + 1;
        v22 = v44;
        v37 = (v43 + 8 * v23);
        while (v36 < (v21 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_226EB526C(v18, v55, 0);
            v21 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v18, v55, 0);
      }

LABEL_4:
      ++v19;
      v18 = v21;
      v20 = v45;
      if (v19 == v22)
      {
        return v57;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22739FB64@<X0>(uint64_t a1@<X8>)
{
  v20[7] = a1;
  v1 = sub_227662CA0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v11 - 8);
  v20[6] = sub_227667060();
  sub_227667040();
  sub_227667070();
  v12 = sub_227667080();
  v13 = sub_22739F788(v12, MEMORY[0x277D533E0], MEMORY[0x277D494A8], sub_226F20428, sub_226F76214);

  v20[5] = sub_226F465A8(v13);

  sub_2276670C0();
  v20[4] = sub_2276670A0();
  v20[3] = sub_2276670D0();
  v20[2] = sub_227667030();
  v20[1] = sub_227667090();
  v22 = sub_2276670F0();
  v23 = v14 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9298, &unk_227676680);
  sub_227663B00();
  v15 = MEMORY[0x277D494D8];
  if (v21 > 1u)
  {
    if (v21 != 2)
    {
      (*(v2 + 104))(v10, *MEMORY[0x277D494D8], v1);
      goto LABEL_9;
    }

    v15 = MEMORY[0x277D494E8];
  }

  else if (!v21)
  {
    v15 = MEMORY[0x277D494E0];
  }

  (*(v2 + 104))(v4, *v15, v1);
  v16 = *(v2 + 32);
  v16(v7, v4, v1);
  v16(v10, v7, v1);
LABEL_9:
  v17 = sub_2276670E0();
  v18 = sub_22739F55C(v17, sub_226F1F808);

  sub_226F46744(v18);

  return sub_227662DD0();
}

uint64_t sub_22739FED0@<X0>(uint64_t a1@<X8>)
{
  v15[4] = a1;
  v1 = sub_227662CA0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v8 - 8);
  v15[3] = sub_227662DE0();
  sub_227662DC0();
  sub_227662DF0();
  v9 = sub_227662E00();
  v10 = sub_22739F788(v9, MEMORY[0x277D494A8], MEMORY[0x277D533E0], sub_226F203C8, sub_227521184);

  v15[2] = sub_226F46364(v10);

  sub_227662E30();
  v15[1] = sub_227662E20();
  v15[0] = sub_227662E60();
  sub_227662DB0();
  sub_227662E10();
  sub_227662E80();
  (*(v2 + 32))(v4, v7, v1);
  v11 = (*(v2 + 88))(v4, v1);
  if (v11 != *MEMORY[0x277D494D8] && v11 != *MEMORY[0x277D494E0] && v11 != *MEMORY[0x277D494E8])
  {
    (*(v2 + 8))(v4, v1);
  }

  v12 = sub_227662E70();
  v13 = sub_22739F55C(v12, sub_226F1FB48);

  sub_226F43718(v13);

  return sub_227667050();
}

uint64_t sub_2273A01F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  if ((LODWORD(a4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v6 = *(a2 + 16);
    v9 = floorf(v6() * a4);
    result = (v6)(a1, a2);
    if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v9 > -9.2234e18)
    {
      if (v9 < 9.2234e18)
      {
        sub_227663CB0();
        v5 = 0;
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  v5 = 1;
LABEL_7:
  v11 = sub_227663CD0();
  v12 = *(*(v11 - 8) + 56);

  return v12(a3, v5, 1, v11);
}

id sub_2273A033C(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0 &unk_227671120))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A0544(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFC0, &qword_227683170);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A074C(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A0954(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFD8 qword_2276832F0))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A0B5C(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B8EB0 &unk_2276833A0))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A0D64(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EF8 qword_2276830E0))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A0F6C(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF70 qword_227682A88))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A1174(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9068 &unk_227683240))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A137C(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C50 qword_2276759C0))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A1584(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFC0, &qword_227683170);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC528 &qword_22767DED0))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A178C(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFB8 &qword_227683030))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A1994(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDE8 &qword_2276835A0))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A1B9C(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFE0 qword_2276833D8))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A1DA4(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFE8 &qword_227683420))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A1FAC(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F30 qword_227683060))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A21B4(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC388 &qword_22767D6B0))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A23BC(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC378 &unk_227683640))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A25C4(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFC0, &qword_227683170);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFC8 qword_227683178))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A27CC(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC368 &qword_22767D640))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A29D4(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4C8 qword_22767DC60))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A2BDC(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9180 &qword_227673220))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A2DE4(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0A0 &qword_22767C630))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A2FEC(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9ED8 &unk_227676A90))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A31F4(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE98 &qword_227681E28))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A33FC(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F18 &unk_227676BA0))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A3604(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50 &qword_2276834E0))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A380C(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFD0 qword_2276831F0))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A3A20(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFF0, &qword_227683488);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0E8 &qword_22767C9E0))];

  sub_226EBC888(v15);
  return v11;
}

id sub_2273A3C28(uint64_t a1)
{
  swift_getKeyPath();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFF0, &qword_227683488);
  v15[0] = a1;
  sub_226F06498();

  v2 = sub_22766C820();
  sub_226ED25F8(v15, v13);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_22766D170();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFF8 qword_227683490))];

  sub_226EBC888(v15);
  return v11;
}

uint64_t sub_2273A3EB8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CE8];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2273A3F2C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_227664E00();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2273A3F54(uint64_t a1)
{
  *(a1 + 24) = sub_2273A3FBC(&qword_2813A5760, &unk_227689A68);
  result = sub_2273A3FBC(&unk_2813A5750, MEMORY[0x277D51070]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2273A3FBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227664E20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2273A4000(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD020, &qword_227683790);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2273A47C4();
  sub_22766D480();
  LOBYTE(v14) = 0;
  sub_22766D0F0();
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    v16 = 1;
    sub_226F5E0B4(v12, v13);
    sub_2273A486C();
    sub_22766D120();
    sub_226EDC420(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2273A419C()
{
  if (*v0)
  {
    return 0x4965746176697270;
  }

  else
  {
    return 0x456465646E696C62;
  }
}

void sub_2273A41EC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x456465646E696C62 && a2 == 0xEE00746E656D656CLL;
  if (v6 || (sub_22766D190() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4965746176697270 && a2 == 0xEC0000007475706ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22766D190();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_2273A42E0(uint64_t a1)
{
  v2 = sub_2273A47C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2273A431C(uint64_t a1)
{
  v2 = sub_2273A47C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2273A4358@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2273A45A8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_2273A43A8()
{
  sub_22766D370();
  sub_22766C100();
  sub_2276625A0();
  return sub_22766D3F0();
}

uint64_t sub_2273A4410(uint64_t a1)
{
  sub_22766C100();

  return sub_2276625A0();
}

uint64_t sub_2273A4460(uint64_t a1)
{
  sub_22766D370();
  sub_22766C100();
  sub_2276625A0();
  return sub_22766D3F0();
}

BOOL sub_2273A44C4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_22766D190() & 1) == 0)
  {
    return 0;
  }

  return sub_227130B5C(v2, v3, v4, v5);
}

unint64_t sub_2273A4554()
{
  result = qword_27D7BD000;
  if (!qword_27D7BD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD000);
  }

  return result;
}

uint64_t sub_2273A45A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD008, &qword_227683788);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2273A47C4();
  sub_22766D460();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v12) = 0;
    v7 = sub_22766D080();
    v11[15] = 1;
    sub_2273A4818();
    sub_22766D0B0();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;

    sub_226F5E0B4(v9, v10);
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_226EDC420(v9, v10);
  }

  return v7;
}

unint64_t sub_2273A47C4()
{
  result = qword_27D7BD010;
  if (!qword_27D7BD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD010);
  }

  return result;
}

unint64_t sub_2273A4818()
{
  result = qword_27D7BD018;
  if (!qword_27D7BD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD018);
  }

  return result;
}

unint64_t sub_2273A486C()
{
  result = qword_27D7BD028;
  if (!qword_27D7BD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD028);
  }

  return result;
}

uint64_t sub_2273A48D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2273A4918(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2273A496C()
{
  result = qword_27D7BD030;
  if (!qword_27D7BD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD030);
  }

  return result;
}

unint64_t sub_2273A49C4()
{
  result = qword_27D7BD038;
  if (!qword_27D7BD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD038);
  }

  return result;
}

unint64_t sub_2273A4A1C()
{
  result = qword_27D7BD040;
  if (!qword_27D7BD040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD040);
  }

  return result;
}

void static WorkoutPlanScheduleFilterProperty.representativeSamples()(uint64_t a1)
{
  v1 = sub_22766C090();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v1 + 40);
    v6 = MEMORY[0x277D84F90];
    while (v4 < *(v2 + 16))
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD8, &qword_227679728);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2276707E0;
      *(inited + 32) = v7;
      *(inited + 40) = v8;
      *(inited + 48) = 0;
      *(inited + 56) = v7;
      *(inited + 64) = v8;
      *(inited + 72) = 1;
      *(inited + 80) = v7;
      *(inited + 88) = v8;
      *(inited + 96) = 2;
      *(inited + 104) = v7;
      *(inited + 112) = v8;
      *(inited + 120) = 3;
      v10 = *(v6 + 2);
      v11 = v10 + 4;
      if (__OFADD__(v10, 4))
      {
        goto LABEL_16;
      }

      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v13 = *(v6 + 3) >> 1, v13 < v11))
      {
        if (v10 <= v11)
        {
          v14 = v10 + 4;
        }

        else
        {
          v14 = v10;
        }

        v6 = sub_2273A6B58(isUniquelyReferenced_nonNull_native, v14, 1, v6, &qword_27D7BACD8, &qword_227679728, MEMORY[0x277D537D8]);
        v13 = *(v6 + 3) >> 1;
      }

      if (v13 - *(v6 + 2) < 4)
      {
        goto LABEL_17;
      }

      swift_arrayInitWithCopy();

      v15 = *(v6 + 2);
      v16 = __OFADD__(v15, 4);
      v17 = v15 + 4;
      if (v16)
      {
        goto LABEL_18;
      }

      ++v4;
      *(v6 + 2) = v17;
      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

void sub_2273A4C44(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2273A73F8(a1);
  v7 = v6;
  v9 = v8;

  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v9;
  }
}

void *sub_2273A4CC4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEE8, &qword_227679978);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEF0, &qword_227679980);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2273A4FB0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB0A0, &qword_227679BC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB0A8, &qword_227679BD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2273A5120(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B92A0, &qword_2276767A0);
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

char *sub_2273A5360(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1F0, &qword_227678898);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_2273A5460(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF20, &qword_2276799C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2273A5624(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD0F8, &qword_227683A40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD100, &qword_227683A48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2273A57A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABC8, &qword_2276795C0);
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

char *sub_2273A58D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEB0, &qword_227679930);
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

void *sub_2273A5A4C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
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

void *sub_2273A5BDC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_2273A5D10(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE78, &qword_2276798E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE80, &unk_2276798F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2273A5E68(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_2273A6074(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
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

void *sub_2273A61B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE38, &qword_2276798A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE40, &qword_2276798A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2273A6300(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
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

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_2273A6460(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
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
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2273A6668(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
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

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2273A67C0(uint64_t a1)
{
  result = sub_2273A67E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2273A67E8()
{
  result = qword_27D7BD048;
  if (!qword_27D7BD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD048);
  }

  return result;
}

char *sub_2273A6850(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
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
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_2273A6B58(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
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

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2273A6D3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD090, &qword_2276839E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2273A6E5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEA0, &qword_227679918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2273A7008(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD058, &qword_2276839B0);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_2273A7134(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD0D8, &qword_227683A20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD0E0, &qword_227683A28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2273A727C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
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
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void sub_2273A7390(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_22766BFD0();
  [a1 *off_2785D40E8[a4]];
}

uint64_t sub_2273A73F8(void *a1)
{
  v3 = [a1 bodyFocus];
  if (v3 || (v3 = [a1 equipment]) != 0 || (v3 = objc_msgSend(a1, sel_skillLevel)) != 0 || (v3 = objc_msgSend(a1, sel_theme)) != 0)
  {
    v4 = v3;
    v1 = sub_22766C000();
  }

  else
  {
    v6 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_2273A753C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2273A75C8(char a1, uint64_t a2)
{
  *(v3 + 128) = a2;
  *(v3 + 136) = v2;
  *(v3 + 288) = a1;
  v4 = sub_22766AE90();
  *(v3 + 144) = v4;
  *(v3 + 152) = *(v4 - 8);
  *(v3 + 160) = swift_task_alloc();
  v5 = sub_22766B390();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273A7700, v2, 0);
}

uint64_t sub_2273A7700(uint64_t a1)
{
  v20 = v1;
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 200);
  v6 = *(v1 + 168);
  v7 = *(v1 + 176);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = sub_227666360();
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v2, v3, "[CatalogSyncCoordinator] Catalog sync requested with mode: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  *(v1 + 208) = v13;
  if (*(v1 + 288) == 2)
  {
    v14 = swift_task_alloc();
    *(v1 + 216) = v14;
    *v14 = v1;
    v14[1] = sub_2273A793C;

    return sub_2273A86A8();
  }

  else
  {
    v16 = swift_task_alloc();
    *(v1 + 232) = v16;
    *v16 = v1;
    v16[1] = sub_2273A7B08;
    v17 = *(v1 + 128);
    v18 = *(v1 + 288);

    return sub_227500130(v17, v18);
  }
}

uint64_t sub_2273A793C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_2273A7EEC;
  }

  else
  {
    v4 = sub_2273A7A68;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2273A7A68()
{
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_2273A7B08;
  v2 = *(v0 + 128);
  v3 = *(v0 + 288);

  return sub_227500130(v2, v3);
}

uint64_t sub_2273A7B08()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_2273A80EC;
  }

  else
  {
    v4 = sub_2273A7C34;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2273A7C34()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 288);
  sub_226E91B50(v1 + 256, v0 + 16);
  v3 = swift_allocObject();
  *(v0 + 248) = v3;
  sub_226F19770((v0 + 16), v3 + 16);
  *(v3 + 56) = v1;
  *(v3 + 64) = v2;

  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_2273A7D38;

  return MEMORY[0x2821AFC88](v4, &unk_227683B68, v3);
}

uint64_t sub_2273A7D38()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = sub_2273A84A0;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_2273A7E60;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2273A7E60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2273A7EEC(uint64_t a1)
{
  v20 = v1;
  v2 = v1[28];
  sub_22766A730();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v18 = v1[26];
    v6 = v1[24];
    v7 = v1[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](v1[11], v1[12]);
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v4, v5, "[CatalogSyncCoordinator] Failed deleting catalog - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v18(v6, v7);
  }

  else
  {
    v13 = v1[26];
    v14 = v1[24];
    v15 = v1[21];

    v13(v14, v15);
  }

  swift_willThrow();

  v16 = v1[1];

  return v16();
}

uint64_t sub_2273A80EC()
{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_2273A8184;

  return MEMORY[0x2821AFC80]();
}

uint64_t sub_2273A8184()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_2273A8344;
  }

  else
  {
    v4 = sub_2273A82B0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2273A82B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2273A8344()
{
  v1 = *(v0 + 280);
  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 152) + 88))(*(v0 + 160), *(v0 + 144)) == *MEMORY[0x277D4FB00])
    {

      swift_willThrow();
      v3 = *(v0 + 104);
      goto LABEL_6;
    }

    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  }

  v4 = *(v0 + 240);

  swift_willThrow();
  v3 = v4;
LABEL_6:

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2273A84A0()
{
  v19 = v0;
  v1 = v0[33];

  sub_22766A730();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v17 = v0[26];
    v5 = v0[23];
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x22AA995D0](v0[8], v0[9]);
    v11 = sub_226E97AE8(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "[CatalogSyncCoordinator] Sync remote catalog failed - %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    v17(v5, v6);
  }

  else
  {
    v12 = v0[26];
    v13 = v0[23];
    v14 = v0[21];

    v12(v13, v14);
  }

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_2273A86A8()
{
  v1[2] = v0;
  v2 = sub_2276698B0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_22766B390();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273A87C4, v0, 0);
}

uint64_t sub_2273A87C4(uint64_t a1)
{
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  v4 = *(v1 + 48);
  v5 = *(v1 + 16);
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  __swift_project_boxed_opaque_existential_0(v5 + 32, v5[35]);
  *(v1 + 88) = 18;
  sub_226F19410();
  sub_226F19464();
  sub_22766A130();
  v6 = v5[31];
  __swift_project_boxed_opaque_existential_0(v5 + 27, v5[30]);
  v7 = *(v6 + 24);

  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v1 + 72) = v8;
  *v8 = v1;
  v8[1] = sub_2273A8A04;

  return v10();
}

uint64_t sub_2273A8A04()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_2273A8C2C;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_2273A8B48;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2273A8B48()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  swift_getObjectType();
  sub_2276698A0();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);
  sub_2273AA154(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2273A8C2C()
{
  v1 = *(v0 + 16);

  sub_2273AA154(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2273A8CBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 273) = a4;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  v6 = sub_2276698E0();
  *(v4 + 32) = v6;
  *(v4 + 40) = *(v6 - 8);
  *(v4 + 48) = swift_task_alloc();
  v7 = sub_227669A90();
  *(v4 + 56) = v7;
  *(v4 + 64) = *(v7 - 8);
  *(v4 + 72) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  *(v4 + 80) = v8;
  *(v4 + 88) = *(v8 - 8);
  *(v4 + 96) = swift_task_alloc();
  v9 = sub_227665030();
  *(v4 + 104) = v9;
  *(v4 + 112) = *(v9 - 8);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v10 = sub_22766B390();
  *(v4 + 136) = v10;
  *(v4 + 144) = *(v10 - 8);
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A0, &unk_227683B80);
  *(v4 + 168) = v11;
  *(v4 + 176) = *(v11 - 8);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  *(v4 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273A8FBC, a3, 0);
}

uint64_t sub_2273A8FBC()
{
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v8 = *(v0 + 136);
  v3 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_0(*(v0 + 16), *(*(v0 + 16) + 24));
  *(v0 + 272) = 17;
  sub_226F19410();
  sub_226F19464();
  sub_22766A130();
  sub_22766A730();
  sub_22766B370();
  v4 = *(v2 + 8);
  *(v0 + 208) = v4;
  *(v0 + 216) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v8);
  v5 = v3[30];
  v6 = v3[31];
  __swift_project_boxed_opaque_existential_0(v3 + 27, v5);

  sub_226ECF5D8(sub_2273AA324, v3, v5, v10, v6, v9);

  return MEMORY[0x2822009F8](sub_2273A917C, 0, 0);
}

uint64_t sub_2273A917C()
{
  v1 = v0[23];
  v2 = swift_task_alloc();
  v0[28] = v2;
  *(v2 + 16) = "SeymourServices/CatalogSyncCoordinator.swift";
  *(v2 + 24) = 44;
  *(v2 + 32) = 2;
  *(v2 + 40) = 76;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_2273A9288;
  v5 = v0[24];
  v4 = v0[25];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2273AA374, v2, v5);
}

uint64_t sub_2273A9288()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {

    v3 = sub_2273A96F0;
    v4 = 0;
  }

  else
  {
    v6 = v2[22];
    v5 = v2[23];
    v7 = v2[21];
    v8 = v2[3];

    (*(v6 + 8))(v5, v7);
    v3 = sub_2273A93F0;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2273A93F0()
{
  v1 = v0[25];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_0((v0[3] + 152), *(v0[3] + 176));
  sub_2274E556C(v1, v2);

  return MEMORY[0x2822009F8](sub_2273A9480, 0, 0);
}

uint64_t sub_2273A9480()
{
  v1 = v0[12];
  v2 = swift_task_alloc();
  v0[31] = v2;
  *(v2 + 16) = "SeymourServices/CatalogSyncCoordinator.swift";
  *(v2 + 24) = 44;
  *(v2 + 32) = 2;
  *(v2 + 40) = 77;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_2273A9588;
  v4 = v0[16];
  v5 = v0[13];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2273AA38C, v2, v5);
}

uint64_t sub_2273A9588()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {

    v3 = sub_2273A9D58;
    v4 = 0;
  }

  else
  {
    v6 = v2[11];
    v5 = v2[12];
    v7 = v2[10];
    v8 = v2[3];

    (*(v6 + 8))(v5, v7);
    v3 = sub_2273A985C;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2273A96F0()
{
  v1 = v0[3];
  (*(v0[22] + 8))(v0[23], v0[21]);

  return MEMORY[0x2822009F8](sub_2273A976C, v1, 0);
}

uint64_t sub_2273A976C()
{
  sub_2273A9F80(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2273A985C()
{
  v48 = v0;
  v1 = *(v0 + 264);
  v2 = [objc_opt_self() standardUserDefaults];
  sub_2273AA424(&qword_28139B868, MEMORY[0x277D512E8]);
  v3 = sub_2276683C0();
  v5 = *(v0 + 128);
  if (v1)
  {
    v6 = *(v0 + 200);
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);

    (*(v8 + 8))(v5, v7);
    sub_2273AA3BC(v6);
    sub_2273A9F80(*(v0 + 16));

    v9 = *(v0 + 8);
  }

  else
  {
    v41 = *(v0 + 112);
    v43 = *(v0 + 104);
    v45 = *(v0 + 120);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    v37 = *(v0 + 32);
    v38 = *(v0 + 40);
    v14 = v3;
    v15 = v4;
    v16 = sub_227662560();
    sub_226EDC420(v14, v15);
    (*(v11 + 104))(v10, *MEMORY[0x277D4F010], v12);
    sub_227669A80();
    (*(v11 + 8))(v10, v12);
    v17 = sub_22766BFD0();

    [v2 setValue:v16 forKey:v17];

    swift_getObjectType();
    sub_2276698D0();
    sub_2276699D0();
    (*(v38 + 8))(v13, v37);
    sub_22766A730();
    (*(v41 + 16))(v45, v5, v43);
    v18 = sub_22766B380();
    v19 = sub_22766C8B0();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 208);
    v22 = *(v0 + 200);
    v42 = *(v0 + 136);
    v44 = *(v0 + 152);
    v46 = *(v0 + 128);
    v24 = *(v0 + 112);
    v23 = *(v0 + 120);
    v25 = *(v0 + 104);
    if (v20)
    {
      v40 = *(v0 + 208);
      v26 = swift_slowAlloc();
      v36 = v19;
      v27 = swift_slowAlloc();
      v47 = v27;
      *v26 = 136315138;
      sub_2273AA424(&qword_28139B878, MEMORY[0x277D51308]);
      v39 = v22;
      v28 = sub_22766D140();
      v30 = v29;
      v31 = *(v24 + 8);
      v31(v23, v25);
      v32 = sub_226E97AE8(v28, v30, &v47);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_226E8E000, v18, v36, "[CatalogSyncCoordinator] Sync remote catalog succeeded - anchor: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA9A450](v27, -1, -1);
      MEMORY[0x22AA9A450](v26, -1, -1);

      v40(v44, v42);
      v31(v46, v25);
      v33 = v39;
    }

    else
    {

      v34 = *(v24 + 8);
      v34(v23, v25);
      v21(v44, v42);
      v34(v46, v25);
      v33 = v22;
    }

    sub_2273AA3BC(v33);
    sub_2273A9F80(*(v0 + 16));

    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_2273A9D58()
{
  v1 = v0[3];
  (*(v0[11] + 8))(v0[12], v0[10]);

  return MEMORY[0x2822009F8](sub_2273A9DD4, v1, 0);
}

uint64_t sub_2273A9DD4()
{
  sub_2273AA3BC(*(v0 + 200));
  sub_2273A9F80(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2273A9ECC(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E92F34;

  return sub_2273A8CBC(a1, v1 + 16, v4, v5);
}

uint64_t sub_2273A9F80(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10[15] = 17;
  sub_226F19410();
  sub_226F19464();
  sub_22766A120();
  sub_22766A710();
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226E8E000, v6, v7, "Finished catalog sync", v8, 2u);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2273AA154(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_0(a1 + 32, a1[35]);
  v10[15] = 18;
  sub_226F19410();
  sub_226F19464();
  sub_22766A120();
  sub_22766A710();
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226E8E000, v6, v7, "Finished deleting catalog", v8, 2u);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2273AA3BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2273AA424(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227665030();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2273AA468(uint64_t a1@<X8>)
{
  v2 = sub_227662190();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_227666A70();
  v5 = v4;
  v7 = v6 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
  sub_227663B00();
  sub_226EB2DFC(v3, v5, v7);
  if (v31 == 3 || (v8 = sub_227666B50(), v10 = v9, v12 = v11 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B98, &qword_227675438), sub_227663B00(), sub_226EB2DFC(v8, v10, v12), v31 == 4))
  {
    v13 = 1;
LABEL_20:
    v29 = sub_227662D00();
    (*(*(v29 - 8) + 56))(a1, v13, 1, v29);
  }

  else
  {
    sub_227666A50();
    sub_227666AC0();
    sub_227666B00();
    sub_227666AD0();
    sub_227666A60();
    sub_227666B40();
    sub_227666A90();
    sub_227666AE0();
    sub_227666AF0();
    sub_227666A80();
    sub_227666AA0();
    v14 = sub_227666B20();
    v15 = v14 + 56;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 56);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    v21 = MEMORY[0x277D84F90];
    if (!v18)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_7:
      while (1)
      {
        v18 &= v18 - 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
        sub_227663B00();
        if (v31 != 9)
        {
          break;
        }

        if (!v18)
        {
          goto LABEL_9;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2273A6A8C(0, *(v21 + 2) + 1, 1, v21);
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v30 = v24 + 1;
        v26 = v21;
        v27 = *(v21 + 2);
        v28 = sub_2273A6A8C((v23 > 1), v24 + 1, 1, v26);
        v25 = v30;
        v24 = v27;
        v21 = v28;
      }

      *(v21 + 2) = v25;
      v21[v24 + 32] = v31;
    }

    while (v18);
LABEL_9:
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        sub_226F46778(v21);

        sub_227662CF0();
        v13 = 0;
        goto LABEL_20;
      }

      v18 = *(v15 + 8 * v22);
      ++v20;
      if (v18)
      {
        v20 = v22;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2273AA834(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v27 - v4;
  v35 = sub_2276687D0();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v33 = v7;
  v27 = v1;
  v39 = MEMORY[0x277D84F90];
  sub_226F1F488(0, v8, 0);
  v9 = v39;
  v38 = a1 + 56;
  result = sub_22766CC90();
  v11 = result;
  v12 = 0;
  v31 = v5 + 32;
  v32 = "workoutIdentifier";
  v28 = a1 + 64;
  v29 = v8;
  v34 = v5;
  v30 = a1;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v38 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v37 = *(a1 + 36);
    v15 = sub_2276624A0();
    (*(*(v15 - 8) + 56))(v36, 1, 1, v15);

    v16 = v33;
    sub_227668790();
    v39 = v9;
    v18 = *(v9 + 16);
    v17 = *(v9 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_226F1F488((v17 > 1), v18 + 1, 1);
      v9 = v39;
    }

    *(v9 + 16) = v18 + 1;
    result = (*(v34 + 32))(v9 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v18, v16, v35);
    a1 = v30;
    v13 = 1 << *(v30 + 32);
    if (v11 >= v13)
    {
      goto LABEL_23;
    }

    v19 = *(v38 + 8 * v14);
    if ((v19 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (v37 != *(v30 + 36))
    {
      goto LABEL_25;
    }

    v20 = v19 & (-2 << (v11 & 0x3F));
    if (v20)
    {
      v13 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v30;
      v22 = v14 << 6;
      v23 = v14 + 1;
      v24 = (v28 + 8 * v14);
      while (v23 < (v13 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_226EB526C(v11, v37, 0);
          v13 = __clz(__rbit64(v25)) + v22;
          goto LABEL_19;
        }
      }

      result = sub_226EB526C(v11, v37, 0);
LABEL_19:
      a1 = v21;
    }

    ++v12;
    v11 = v13;
    if (v12 == v29)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_2273AABE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v3 = 0;
    v14 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v4 = MEMORY[0x22AA991A0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = sub_22766BFD0();
      v8 = [v5 valueForKey_];

      if (v8)
      {
        sub_22766CC20();
        swift_unknownObjectRelease();
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
      }

      v13[0] = v11;
      v13[1] = v12;
      if (*(&v12 + 1))
      {
        if (swift_dynamicCast())
        {

          v9 = v5;
          sub_2270BF598(v13, v9);
          v10 = *&v13[0];

          goto LABEL_6;
        }
      }

      else
      {
        sub_226E97D1C(v13, &unk_27D7BC990, &qword_227670A30);
      }

LABEL_6:
      ++v3;
      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

void sub_2273AADB8(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AA991A0](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = v8;
      sub_2273B27C4(&v11, a2);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_2273AAEB8(void *(*a1)(_OWORD *__return_ptr), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = v4;
  v11 = sub_227284634(0);
  if (!v5)
  {
    v12 = v11;
    v13 = *(v4 + 24);
    type metadata accessor for ManagedDirtySyncZone();
    v26 = v13;
    v14 = sub_22766C9E0();
    v15 = sub_226F472C0(v14);

    v25 = v15;
    v16 = sub_2273B53C8(v15, a1, a2, sub_226F205A8, sub_2274DDA38, &qword_27D7BD228, &unk_227684170);
    if (v16[2])
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9858, &qword_227674CA8);
      v18 = sub_22766D010();
      v16 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F98];
    }

    v27 = v18;
    sub_2273B5DAC(v16, 1, &v27, a3, a4, sub_226FED094, sub_226FF4C40);
    v19 = v27;
    v20 = *(v6 + 16);
    v21 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_22766CD20();
      v21 = sub_2270C1E70(v22, v23);
    }

    v24 = sub_22700ACE8(v19, v21);
    sub_2273AC208(v24, v20, v26, type metadata accessor for ManagedDirtySyncZone, &qword_27D7B87A0, type metadata accessor for ManagedDirtySyncZone);
  }
}

void sub_2273AB108(void *(*a1)(_OWORD *__return_ptr), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = v4;
  v11 = sub_2272849AC(0);
  if (!v5)
  {
    v12 = v11;
    v13 = *(v4 + 24);
    type metadata accessor for ManagedHealthKitMindfulSession();
    v26 = v13;
    v14 = sub_22766C9E0();
    v15 = sub_226F3DA04(v14);

    v25 = v15;
    v16 = sub_2273B53C8(v15, a1, a2, sub_226F205C8, sub_2274DDC5C, &qword_27D7BD220, &unk_2276840D8);
    if (v16[2])
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9850, &qword_227674CA0);
      v18 = sub_22766D010();
      v16 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F98];
    }

    v27 = v18;
    sub_2273B5DAC(v16, 1, &v27, a3, a4, sub_226FED0A8, sub_226FF4C54);
    v19 = v27;
    v20 = *(v6 + 16);
    v21 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_22766CD20();
      v21 = sub_2270C1BFC(v22, v23);
    }

    v24 = sub_22700AD90(v19, v21);
    sub_2273AC208(v24, v20, v26, type metadata accessor for ManagedHealthKitMindfulSession, &qword_27D7B8798, type metadata accessor for ManagedHealthKitMindfulSession);
  }
}

void sub_2273AB358(void *(*a1)(_OWORD *__return_ptr), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = v4;
  v11 = sub_2272849DC(0);
  if (!v5)
  {
    v12 = v11;
    v13 = *(v4 + 24);
    type metadata accessor for ManagedPrivacyAcknowledgement();
    v26 = v13;
    v14 = sub_22766C9E0();
    v15 = sub_226F47308(v14);

    v25 = v15;
    v16 = sub_2273B53C8(v15, a1, a2, sub_226F205E8, sub_2274DDC74, &qword_27D7BD218, &qword_2276840D0);
    if (v16[2])
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9848, &qword_227674C98);
      v18 = sub_22766D010();
      v16 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F98];
    }

    v27 = v18;
    sub_2273B5DAC(v16, 1, &v27, a3, a4, sub_226FED0BC, sub_226FF4C68);
    v19 = v27;
    v20 = *(v6 + 16);
    v21 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_22766CD20();
      v21 = sub_2270C1E98(v22, v23);
    }

    v24 = sub_22700B370(v19, v21);
    sub_2273AC208(v24, v20, v26, type metadata accessor for ManagedPrivacyAcknowledgement, &qword_27D7B8790, type metadata accessor for ManagedPrivacyAcknowledgement);
  }
}

void sub_2273AB5A8(void *(*a1)(_OWORD *__return_ptr), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = v4;
  v11 = sub_2272846DC(0);
  if (!v5)
  {
    v12 = v11;
    v13 = *(v4 + 24);
    type metadata accessor for ManagedEngagementBadge();
    v26 = v13;
    v14 = sub_22766C9E0();
    v15 = sub_226F47350(v14);

    v25 = v15;
    v16 = sub_2273B53C8(v15, a1, a2, sub_226F20608, sub_2274DDC8C, &qword_27D7BD1B8, &qword_227684070);
    if (v16[2])
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9840, &qword_227674C90);
      v18 = sub_22766D010();
      v16 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F98];
    }

    v27 = v18;
    sub_2273B5DAC(v16, 1, &v27, a3, a4, sub_226FED0D0, sub_226FF4C7C);
    v19 = v27;
    v20 = *(v6 + 16);
    v21 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_22766CD20();
      v21 = sub_2270C1EC0(v22, v23);
    }

    v24 = sub_22700B418(v19, v21);
    sub_2273AC208(v24, v20, v26, type metadata accessor for ManagedEngagementBadge, &qword_27D7B8788, type metadata accessor for ManagedEngagementBadge);
  }
}

void sub_2273AB7F8(void *(*a1)(_OWORD *__return_ptr), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = v4;
  v11 = sub_227252148(0);
  if (!v5)
  {
    v12 = v11;
    v13 = *(v4 + 24);
    type metadata accessor for ManagedPlaylistItem();
    v26 = v13;
    v14 = sub_22766C9E0();
    v15 = sub_226F3DA4C(v14);

    v25 = v15;
    v16 = sub_2273B53C8(v15, a1, a2, sub_226F20628, sub_2274DDCA4, &qword_27D7BD1A8, &qword_227684068);
    if (v16[2])
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9838, &qword_227674C88);
      v18 = sub_22766D010();
      v16 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F98];
    }

    v27 = v18;
    sub_2273B5DAC(v16, 1, &v27, a3, a4, sub_226FED0E4, sub_226FF4C90);
    v19 = v27;
    v20 = *(v6 + 16);
    v21 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_22766CD20();
      v21 = sub_2270C1C24(v22, v23);
    }

    v24 = sub_22700B4C0(v19, v21);
    sub_2273AC208(v24, v20, v26, type metadata accessor for ManagedPlaylistItem, &qword_27D7B8780, type metadata accessor for ManagedPlaylistItem);
  }
}

void sub_2273ABA48(void *(*a1)(_OWORD *__return_ptr), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = v4;
  v11 = sub_227284A54(0);
  if (!v5)
  {
    v12 = v11;
    v13 = *(v4 + 24);
    type metadata accessor for ManagedArchivedWorkoutPlanSession();
    v26 = v13;
    v14 = sub_22766C9E0();
    v15 = sub_226F47410(v14);

    v25 = v15;
    v16 = sub_2273B53C8(v15, a1, a2, sub_226F20648, sub_2274DDCBC, &qword_27D7BD198, &qword_227684058);
    if (v16[2])
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9830, &qword_227674C80);
      v18 = sub_22766D010();
      v16 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F98];
    }

    v27 = v18;
    sub_2273B5DAC(v16, 1, &v27, a3, a4, sub_226FED0F8, sub_226FF4CA4);
    v19 = v27;
    v20 = *(v6 + 16);
    v21 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_22766CD20();
      v21 = sub_2270C1EE8(v22, v23);
    }

    v24 = sub_22700B568(v19, v21);
    sub_2273AC208(v24, v20, v26, type metadata accessor for ManagedArchivedWorkoutPlanSession, &qword_27D7B8768, type metadata accessor for ManagedArchivedWorkoutPlanSession);
  }
}

void sub_2273ABC98(void (*a1)(void), uint64_t a2, uint64_t (*a3)(id), uint64_t a4)
{
  v6 = v4;
  v11 = sub_22724B330(0);
  if (!v5)
  {
    v12 = v11;
    v13 = *(v4 + 24);
    type metadata accessor for ManagedWorkoutPlanSummaryViewed();
    v26 = v13;
    v14 = sub_22766C9E0();
    v15 = sub_226F47458(v14);

    v25 = v15;
    v16 = sub_2273B5748(v15, a1, a2);
    if (*(v16 + 16))
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9828, &qword_227674C78);
      v18 = sub_22766D010();
      v16 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F98];
    }

    v27 = v18;
    sub_2273B60E4(v16, 1, &v27, a3, a4);
    v19 = v27;
    v20 = *(v6 + 16);
    v21 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v22 = v25;
      }

      else
      {
        v22 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_22766CD20();
      v21 = sub_2270C1F10(v22, v23);
    }

    v24 = sub_22700B610(v19, v21);
    sub_2273AC208(v24, v20, v26, type metadata accessor for ManagedWorkoutPlanSummaryViewed, &qword_27D7B8758, type metadata accessor for ManagedWorkoutPlanSummaryViewed);
  }
}

void sub_2273ABE88(uint64_t a1, id a2, id a3)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22766CCE0();
    sub_226E99364(0, &qword_27D7B8770, 0x277CBE438);
    sub_2273B6624();
    sub_22766C700();
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
    v7 = v30;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v6;
  v12 = v7;
  v13 = v6;
  if (v7)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v15)
    {
      while (1)
      {
        v16 = [v15 managedObjectContext];
        if (v16 && (v17 = v16, v16, v17 == a3))
        {
          [a3 deleteObject_];
        }

        else
        {
          v18 = [v15 managedObjectContext];
          if (!v18 || (v19 = v18, v18, v19 != a2))
          {
            v22 = sub_227664DD0();
            sub_2273B65DC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
            swift_allocError();
            (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D50FE8], v22);
            swift_willThrow();
            sub_226EBB21C(v3);

            return;
          }

          v20 = [v15 objectID];
          v21 = [a3 objectWithID_];

          [a3 deleteObject_];
          v15 = v21;
        }

        v6 = v13;
        v7 = v14;
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_22766CD50())
        {
          sub_226E99364(0, &qword_27D7B8770, 0x277CBE438);
          swift_dynamicCast();
          v15 = v31;
          v13 = v6;
          v14 = v7;
          if (v31)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_24:
    sub_226EBB21C(v3);
    return;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}