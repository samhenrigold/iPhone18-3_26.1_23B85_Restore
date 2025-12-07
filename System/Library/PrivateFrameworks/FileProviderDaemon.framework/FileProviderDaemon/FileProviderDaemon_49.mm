uint64_t sub_1CF5347DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1CF9E63D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  qos_class_self();
  sub_1CF9E63B8();
  v7 = *(v4 + 48);
  if (v7(v2, 1, v3) == 1)
  {
    (*(v4 + 104))(v6, *MEMORY[0x1E69E7FA0], v3);
    if (v7(v2, 1, v3) != 1)
    {
      sub_1CEFCCC44(v2, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
  }

  return sub_1CF9E6428();
}

id sub_1CF53499C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v60 = a4;
  v61 = a6;
  v70 = a5;
  v62 = a2;
  v63 = a3;
  v49 = a1;
  v9 = *v6;
  v58 = sub_1CF9E6448();
  v68 = *(v58 - 8);
  v59 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v67 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v9;
  v56 = v72;
  v69 = v9[79];
  v65 = v9[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v64 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v66 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  [v66 setCancellable_];
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = *(v12 + 16);
  v19 = AssociatedTypeWitness;
  v48(v16, a1, AssociatedTypeWitness);
  v20 = *(v12 + 80);
  v21 = v12;
  v54 = v20 | 7;
  v22 = swift_allocObject();
  v23 = v53;
  v22[2] = v65;
  v55 = v7;
  v52 = v23[78];
  v22[3] = v52;
  v22[4] = v69;
  v50 = v23[80];
  v22[5] = v50;
  v22[6] = v17;
  v22[7] = v18;
  v24 = *(v21 + 32);
  v51 = v21 + 32;
  v53 = v24;
  v25 = v16;
  v26 = v19;
  v47 = v19;
  (v24)(v22 + ((v20 + 64) & ~v20), v25, v19);
  v72[2] = sub_1CF54FC38;
  v72[3] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  v72[0] = sub_1CEFCA444;
  v72[1] = &block_descriptor_28;
  v27 = _Block_copy(aBlock);

  sub_1CF03C63C(sub_1CF54FC38, v22);

  [v66 setCancellationHandler_];
  _Block_release(v27);

  v28 = v57;
  v48(v57, v49, v26);
  v29 = v68;
  v30 = v58;
  (*(v68 + 16))(v67, v60, v58);
  v31 = (v20 + 72) & ~v20;
  v32 = (v64 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + *(v29 + 80) + 8) & ~*(v29 + 80);
  v36 = swift_allocObject();
  *&v37 = v65;
  *(&v37 + 1) = v52;
  *&v38 = v69;
  *(&v38 + 1) = v50;
  *(v36 + 16) = v37;
  *(v36 + 32) = v38;
  v39 = v61;
  *(v36 + 48) = v70;
  *(v36 + 56) = v39;
  *(v36 + 64) = v55;
  (v53)(v36 + v31, v28, v47);
  v41 = v62;
  v40 = v63;
  *(v36 + v32) = v62;
  *(v36 + v33) = v40;
  v43 = v66;
  v42 = v67;
  *(v36 + v34) = v66;
  (*(v68 + 32))(v36 + v35, v42, v30);

  sub_1CEFD09A0(v41);
  v44 = v43;
  sub_1CF92DC74("materialize(_:request:options:qos:completion:)", 46, 2, sub_1CF045408, 0, v70, v39, sub_1CF54FCE4, v36);

  return v44;
}

double sub_1CF534F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v27 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      (*(v12 + 16))(v15, a3, AssociatedTypeWitness);
      v21 = *(v12 + 80);
      v27 = a7;
      v22 = (v21 + 56) & ~v21;
      v23 = swift_allocObject();
      v24 = v27;
      v25 = v28;
      *(v23 + 2) = a4;
      *(v23 + 3) = v25;
      *(v23 + 4) = a6;
      *(v23 + 5) = v24;
      *(v23 + 6) = v18;
      (*(v12 + 32))(&v23[v22], v15, AssociatedTypeWitness);
      *&v23[(v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v20;

      v26 = v20;
      sub_1CF92DE44("materialize(_:request:options:qos:completion:)", 46, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF54FE10, v23);
    }

    else
    {
    }
  }

  return result;
}

void sub_1CF5351C0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t a1), unint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v73 = a8;
  v75 = a1;
  v71 = a7;
  v72 = a9;
  v68 = *a4;
  v14 = sub_1CF9E5CF8();
  v65 = *(v14 - 8);
  v66 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6118();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v21 = sub_1CF9E7298();
  v22 = sub_1CF19C010(v21, "materialization waiter", 22, 2, a2, a3);
  v24 = v23;
  v25 = v16;
  v26 = v75;
  (*(v17 + 8))(v19, v25);
  v27 = v71;
  v28 = v26[3];
  v29 = v26[4];
  v30 = __swift_project_boxed_opaque_existential_1(v26, v28);
  v63 = *(v29 + 8);
  v69 = a6;
  v70 = a5;
  v31 = v73;
  v73 = a4;
  if ((sub_1CF599234(a5, a6, v27, v31, v72, v30, v22, v24, v28, v63) - 1) > 1u)
  {
    goto LABEL_16;
  }

  v64 = v24;
  v32 = v68[77];
  v33 = v68[78];
  v34 = v68[79];
  v35 = v68[80];
  v76[0] = v32;
  v76[1] = v33;
  v76[2] = v34;
  v76[3] = v35;
  type metadata accessor for ConcreteJobResult(0, v76);
  v36 = sub_1CF056580();
  v72 = sub_1CF056580();
  if ((v27 & 2) != 0)
  {
    v37 = 0x400000800000;
  }

  else
  {
    v37 = 0x800000;
  }

  v38 = v26[3];
  v39 = v26[4];
  v40 = __swift_project_boxed_opaque_existential_1(v26, v38);
  v41 = sub_1CF66523C(v69, v32, v33, v34, v35);
  v43 = v42;
  v44 = *(v39 + 8);

  v45 = v41;
  v46 = v74;
  sub_1CF5666D4(v70, v45, v43, v37, v73, v36, v72, v40, v38, v44);
  if (v46)
  {

LABEL_15:

LABEL_16:

    return;
  }

  v74 = v36;

  v47 = v75[3];
  v48 = v75[4];
  v49 = __swift_project_boxed_opaque_existential_1(v75, v47);
  v50 = v67;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v52 = v51;
  v53 = v66;
  v54 = *(v65 + 8);
  v54(v50, v66);
  v55 = v52 * 1000000000.0;
  if (COERCE__INT64(fabs(v52 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1CF521850(v74, v55, v49, v47, v48);
  v56 = v75[3];
  v57 = v75[4];
  v58 = __swift_project_boxed_opaque_existential_1(v75, v56);
  v59 = v67;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v61 = v60;
  v54(v59, v53);
  v62 = v61 * 1000000000.0;
  if (COERCE__INT64(fabs(v61 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v62 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v62 < 9.22337204e18)
  {
    sub_1CF521850(v72, v62, v58, v56, v57);
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1CF5356C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a7;
  v33 = a4;
  v34 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v16 = sub_1CF9E8238();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - v18;
  v20 = *(a5 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a1, v16, v22);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v20 + 32))(v24, v19, a5);
    sub_1CEFCCBDC(a2, v12, qword_1EC4C1588, &unk_1CFA0A260);
    v26 = type metadata accessor for TelemetrySignpost(0);
    if ((*(*(v26 - 8) + 48))(v12, 1, v26) == 1)
    {
      (*(v20 + 8))(v24, a5);
      sub_1CEFCCC44(v12, qword_1EC4C1588, &unk_1CFA0A260);
      return v34(a1);
    }

    v28 = sub_1CF51A3B0(a5, v32);
    sub_1CF51A508(v28, v29 & 1 | 0x40);
    (*(v20 + 8))(v24, a5);
    v27 = v12;
LABEL_8:
    sub_1CF007C58(v27, type metadata accessor for TelemetrySignpost);
    return v34(a1);
  }

  (*(v17 + 8))(v19, v16);
  sub_1CEFCCBDC(a2, v15, qword_1EC4C1588, &unk_1CFA0A260);
  v25 = type metadata accessor for TelemetrySignpost(0);
  if ((*(*(v25 - 8) + 48))(v15, 1, v25) != 1)
  {
    sub_1CF51A508(0, 128);
    v27 = v15;
    goto LABEL_8;
  }

  sub_1CEFCCC44(v15, qword_1EC4C1588, &unk_1CFA0A260);
  return v34(a1);
}

char *sub_1CF535AA0(char *a1, char *a2, unint64_t a3, void (*a4)(char *), unint64_t a5, int a6, uint64_t **a7, void *a8, unsigned __int8 a9, char *a10, void *a11, uint64_t a12, char *a13, unsigned __int8 a14)
{
  v141 = a6;
  v137 = a5;
  v138 = a4;
  v136 = a3;
  v148 = *a7;
  v18 = v148;
  v19 = *a8;
  v129 = sub_1CF9E6448();
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v126 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = a8;
  v127 = *(v19 + 80);
  v125 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v131 = a7;
  v132 = &v120 - v22;
  v23 = v18[77];
  v147 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v124 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v120 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v122 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v135 = &v120 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v33 = sub_1CF9E8238();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v145 = (&v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v120 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v120 - v40;
  v42 = sub_1CF9E6118();
  v143 = *(v42 - 1);
  v144 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v120 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v46 = *(v34 + 16);
  v146 = a1;
  v47 = a1;
  v48 = v46;
  v46(v41, v47, v33);
  sub_1CEFD09A0(a2);
  sub_1CEFD09A0(a2);
  v142 = v44;
  v49 = sub_1CF9E6108();
  v134 = sub_1CF9E7298();
  v50 = os_log_type_enabled(v49, v134);
  v140 = v38;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v133 = v28;
    v52 = v51;
    v121 = swift_slowAlloc();
    v149 = v121;
    *v52 = 136315394;
    v48(v38, v41, v33);
    v53 = sub_1CF9E6948();
    v120 = v49;
    v54 = v48;
    v55 = a2;
    v56 = v23;
    v57 = v53;
    v59 = v58;
    v139 = *(v34 + 8);
    v139(v41, v33);
    v60 = v57;
    v23 = v56;
    a2 = v55;
    v48 = v54;
    v61 = v148;
    v62 = sub_1CEFD0DF0(v60, v59, &v149);
    v59, v63, v64, v65, v66, v67, v68, v69;
    *(v52 + 4) = v62;
    *(v52 + 12) = 2080;
    v70 = sub_1CF665B0C(a2, v23, v61[78], v61[79], v61[80]);
    v72 = v71;
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);
    v73 = sub_1CEFD0DF0(v70, v72, &v149);
    v72, v74, v75, v76, v77, v78, v79, v80;
    *(v52 + 14) = v73;
    v81 = v120;
    _os_log_impl(&dword_1CEFC7000, v120, v134, "create fault completed with result %s request %s", v52, 0x16u);
    v82 = v121;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v82, -1, -1);
    v83 = v52;
    v28 = v133;
    MEMORY[0x1D386CDC0](v83, -1, -1);

    (*(v143 + 8))(v142, v144);
  }

  else
  {
    sub_1CF540FDC(a2);

    v84 = sub_1CF540FDC(a2);
    v139 = *(v34 + 8);
    (v139)(v41, v33, v84);
    (*(v143 + 8))(v142, v144);
    v61 = v148;
  }

  v85 = v145;
  v48(v145, v146, v33);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    LODWORD(v146) = a9;
    v143 = a12;
    v144 = a13;
    v142 = a10;
    v145 = *(v147 + 32);
    (v145)(v28, v85, v23);
    v89 = v61[79];
    if (sub_1CF937C7C(v23, v89))
    {
      if (v141 & 1) == 0 && (sub_1CF937C7C(v23, v89))
      {
        sub_1CF52C114(v130, 1, v146 & 1, 1, a2, v142, a11, v143, v144);
        return (*(v147 + 8))(v28, v23);
      }
    }

    else if ((v141 & 1) == 0)
    {
      v114 = v122;
      sub_1CEFCCBDC(v136, v122, qword_1EC4C1588, &unk_1CFA0A260);
      v115 = type metadata accessor for TelemetrySignpost(0);
      if ((*(*(v115 - 8) + 48))(v114, 1, v115) == 1)
      {
        sub_1CEFCCC44(v114, qword_1EC4C1588, &unk_1CFA0A260);
      }

      else
      {
        v118 = sub_1CF51A3B0(v23, v89);
        sub_1CF51A508(v118, v119 & 1);
        sub_1CF007C58(v114, type metadata accessor for TelemetrySignpost);
      }

      v117 = v140;
      v116 = v147;
      (*(v147 + 16))(v140, v28, v23);
      swift_storeEnumTagMultiPayload();
      v138(v117);
      goto LABEL_24;
    }

    if ((v146 & 1) == 0 || (sub_1CF06D940(v23, v89, v150), v150[0] == 1))
    {
      v140 = a2;
      result = [a11 totalUnitCount];
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        LODWORD(v139) = a14;
        [a11 setTotalUnitCount_];
        (*(v89 + 64))(v23, v89);
        v138 = a11;
        v93 = v147;
        v94 = v124;
        (*(v147 + 16))(v124, v28, v23);
        v95 = (*(v93 + 80) + 48) & ~*(v93 + 80);
        v96 = (v123 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
        v133 = v28;
        v97 = (v96 + 23) & 0xFFFFFFFFFFFFFFF8;
        v98 = (v97 + 31) & 0xFFFFFFFFFFFFFFF8;
        v136 = (v97 + 15) & 0xFFFFFFFFFFFFFFF8;
        v137 = (v98 + 17) & 0xFFFFFFFFFFFFFFF8;
        v99 = (v137 + 15) & 0xFFFFFFFFFFFFFFF8;
        v100 = swift_allocObject();
        v100[2] = v23;
        v101 = v148;
        v100[3] = v148[78];
        v100[4] = v89;
        v100[5] = v101[80];
        (v145)(v100 + v95, v94, v23);
        v102 = (v100 + v96);
        v103 = v144;
        *v102 = v143;
        v102[1] = v103;
        v104 = v130;
        *(v100 + v97) = v131;
        v105 = v100 + v136;
        v106 = v140;
        *v105 = v140;
        v105[8] = v139 & 1;
        v107 = v100 + v98;
        *v107 = v104;
        v107[8] = v141 & 1;
        v107[9] = v146 & 1;
        v108 = v142;
        v109 = v138;
        *(v100 + v137) = v142;
        *(v100 + v99) = v109;
        sub_1CEFD09A0(v106);

        v110 = v109;
        v111 = v126;
        sub_1CF5347DC();
        v112 = v132;
        v113 = sub_1CF53499C(v132, v106, v108, v111, sub_1CF550CE4, v100);

        (*(v128 + 8))(v111, v129);
        (*(v125 + 8))(v112, v127);
        [v110 addChild:v113 withPendingUnitCount:1];

        return (*(v147 + 8))(v133, v23);
      }

      return result;
    }

    v116 = v147;
    v117 = v140;
    (*(v147 + 16))(v140, v28, v23);
    swift_storeEnumTagMultiPayload();
    (v143)(v117);
LABEL_24:
    v139(v117, v33);
    return (*(v116 + 8))(v28, v23);
  }

  v86 = *v85;
  v87 = v135;
  sub_1CEFCCBDC(v136, v135, qword_1EC4C1588, &unk_1CFA0A260);
  v88 = type metadata accessor for TelemetrySignpost(0);
  if ((*(*(v88 - 8) + 48))(v87, 1, v88) == 1)
  {
    sub_1CEFCCC44(v87, qword_1EC4C1588, &unk_1CFA0A260);
  }

  else
  {
    sub_1CF51A508(0, 128);
    sub_1CF007C58(v87, type metadata accessor for TelemetrySignpost);
  }

  v91 = v140;
  *v140 = v86;
  swift_storeEnumTagMultiPayload();
  v92 = v86;
  v138(v91);

  return (v139)(v91, v33);
}

uint64_t sub_1CF536744(void *a1, void *a2, void (*a3)(void *), uint64_t a4, void *a5, unint64_t a6, int a7, void *a8, unsigned __int8 a9, unsigned __int8 a10, void *a11, uint64_t (**a12)(void, void))
{
  v129 = a7;
  v130 = a6;
  v141 = a3;
  v142 = a4;
  v145 = a2;
  v138 = a1;
  v127 = *a5;
  v14 = *a8;
  v15 = v127[77];
  v135 = v127[79];
  v146[0] = swift_getAssociatedTypeWitness();
  v146[1] = swift_getAssociatedTypeWitness();
  v146[2] = swift_getAssociatedConformanceWitness();
  v146[3] = swift_getAssociatedConformanceWitness();
  v126 = type metadata accessor for FileItemVersion(255, v146);
  v16 = sub_1CF9E75D8();
  v128 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v116 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v19 = sub_1CF9E8238();
  v133 = *(v19 - 8);
  v134 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v131 = a8;
  v132 = (&v116 - v20);
  v137 = *(v14 + 80);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v143 = &v116 - v22;
  v144 = *(v15 - 8);
  v23 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v116 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v116 - v29;
  v31 = sub_1CF9E6118();
  v139 = *(v31 - 8);
  v140 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v116 - v35;
  if (v138)
  {
    v37 = v138;
    v38 = v138;
    v39 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v40 = v144;
    (*(v144 + 16))(v27, v145, v15);
    v41 = v37;
    v42 = sub_1CF9E6108();
    v43 = sub_1CF9E72A8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v146[0] = v145;
      *v44 = 136315394;
      v45 = *(v135 + 64);
      v46 = v143;
      LODWORD(v130) = v43;
      v45(v15, v135);
      (*(v40 + 8))(v27, v15);
      v47 = v137;
      swift_getAssociatedConformanceWitness();
      v48 = sub_1CF9E7F98();
      v50 = v49;
      (*(v136 + 8))(v46, v47);
      v51 = sub_1CEFD0DF0(v48, v50, v146);
      v50, v52, v53, v54, v55, v56, v57, v58;
      *(v44 + 4) = v51;
      *(v44 + 12) = 2112;
      v59 = sub_1CF9E57E8();
      v60 = [v59 fp_prettyDescription];

      *(v44 + 14) = v60;
      v61 = v131;
      *v131 = v60;
      _os_log_impl(&dword_1CEFC7000, v42, v130, "requestMaterialization(%s) failed for vfsItemID: %@", v44, 0x16u);
      sub_1CEFCCC44(v61, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v61, -1, -1);
      v62 = v145;
      __swift_destroy_boxed_opaque_existential_1(v145);
      MEMORY[0x1D386CDC0](v62, -1, -1);
      MEMORY[0x1D386CDC0](v44, -1, -1);
    }

    else
    {
      (*(v40 + 8))(v27, v15);
    }

    (v139[1])(v33, v140);
    v89 = v132;
    *v132 = v37;
    v90 = v134;
    swift_storeEnumTagMultiPayload();
    v91 = v37;
    v141(v89);

    return (v133)[1](v89, v90);
  }

  else
  {
    v124 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v138 = v18;
    v134 = v16;
    v125 = a5;
    v132 = a11;
    v133 = a12;
    v123 = a10;
    v122 = a9;
    v63 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v64 = v144;
    v65 = *(v144 + 16);
    v121 = v144 + 16;
    v120 = v65;
    v65(v30, v145, v15);
    v66 = sub_1CF9E6108();
    v67 = sub_1CF9E7298();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v118 = v68;
      v119 = swift_slowAlloc();
      v146[0] = v119;
      *v68 = 136315138;
      v69 = v135;
      v116 = v66;
      v70 = *(v135 + 64);
      v71 = v143;
      v117 = v67;
      v70(v15, v135);
      (*(v64 + 8))(v30, v15);
      v72 = v137;
      swift_getAssociatedConformanceWitness();
      v73 = sub_1CF9E7F98();
      v75 = v74;
      (*(v136 + 8))(v71, v72);
      v76 = sub_1CEFD0DF0(v73, v75, v146);
      v77 = v75;
      v78 = v70;
      v77, v79, v80, v81, v82, v83, v84, v85;
      v86 = v118;
      *(v118 + 1) = v76;
      v87 = v116;
      _os_log_impl(&dword_1CEFC7000, v116, v117, "requestMaterialization completed for vfsItemID %s", v86, 0xCu);
      v88 = v119;
      __swift_destroy_boxed_opaque_existential_1(v119);
      MEMORY[0x1D386CDC0](v88, -1, -1);
      MEMORY[0x1D386CDC0](v86, -1, -1);

      (v139[1])(v36, v140);
    }

    else
    {
      (*(v64 + 8))(v30, v15);

      (v139[1])(v36, v140);
      v69 = v135;
      v78 = *(v135 + 64);
    }

    v93 = v126;
    v94 = v124;
    v139 = *(v125[4] + 16);

    v95 = v145;
    v78(v15, v69);
    (*(*(v93 - 8) + 56))(v138, 1, 1, v93);
    v140 = sub_1CF04F1A0();
    v120(v94, v95, v15);
    v96 = v144;
    v97 = (*(v144 + 80) + 48) & ~*(v144 + 80);
    v98 = (v23 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = (v98 + 23) & 0xFFFFFFFFFFFFFFF8;
    v145 = ((v99 + 15) & 0xFFFFFFFFFFFFFFF8);
    v100 = (v99 + 31) & 0xFFFFFFFFFFFFFFF8;
    v101 = (v100 + 17) & 0xFFFFFFFFFFFFFFF8;
    v102 = swift_allocObject();
    *(v102 + 2) = v15;
    v103 = v127;
    *(v102 + 3) = v127[78];
    *(v102 + 4) = v69;
    *(v102 + 5) = v103[80];
    (*(v96 + 32))(&v102[v97], v124, v15);
    v104 = &v102[v98];
    v105 = v142;
    *v104 = v141;
    *(v104 + 1) = v105;
    v107 = v130;
    v106 = v131;
    *&v102[v99] = v130;
    v108 = v145 + v102;
    *v108 = v125;
    v108[8] = v129 & 1;
    v109 = &v102[v100];
    *v109 = v106;
    v109[8] = v122 & 1;
    v109[9] = v123 & 1;
    v110 = v133;
    *&v102[v101] = v132;
    *&v102[(v101 + 15) & 0xFFFFFFFFFFFFFFF8] = v110;
    v111 = (*v139)[17];

    sub_1CEFD09A0(v107);

    v112 = v110;
    v113 = v143;
    v114 = v138;
    v115 = v140;
    v111(v143, v138, v140, 0, sub_1CF550DC8, v102);

    (*(v128 + 8))(v114, v134);
    return (*(v136 + 8))(v113, v137);
  }
}

void sub_1CF53733C(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, unint64_t a5, uint64_t *a6, int a7, void *a8, unsigned __int8 a9, unsigned __int8 a10, void *a11, void *a12)
{
  v205 = a7;
  v211 = a5;
  v224 = a3;
  v225 = a4;
  v228 = a2;
  v223 = *a6;
  v213 = *a8;
  v15 = v213;
  v215 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v215);
  v214 = (&v199 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v207 = a6;
  v17 = *(v223 + 616);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v18 = sub_1CF9E8238();
  v221 = *(v18 - 8);
  v222 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v212 = (&v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v217 = (&v199 - v21);
  v206 = a8;
  v220 = *(v15 + 80);
  v219 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v218 = &v199 - v23;
  v24 = *(v17 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v208 = &v199 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v204 = &v199 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v203 = &v199 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v216 = (&v199 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v199 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v199 - v37;
  v39 = sub_1CF9E6118();
  v40 = *(v39 - 8);
  v226 = v39;
  v227 = v40;
  MEMORY[0x1EEE9AC00](v39);
  v210 = &v199 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v209 = &v199 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v199 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v199 - v48;
  sub_1CF9E75D8();
  v50 = sub_1CF9E8238();
  v51 = MEMORY[0x1EEE9AC00](v50);
  v53 = (&v199 - v52);
  (*(v54 + 16))(&v199 - v52, a1, v50, v51);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = *v53;
    v56 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v24 + 16))(v38, v228, v17);
    v57 = v55;
    v58 = sub_1CF9E6108();
    v59 = sub_1CF9E7298();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v228 = swift_slowAlloc();
      v231 = v228;
      *v60 = 136315394;
      v61 = *(v223 + 632);
      v62 = *(v61 + 64);
      v63 = v218;
      LODWORD(v223) = v59;
      v62(v17, v61);
      (*(v24 + 8))(v38, v17);
      v64 = v220;
      swift_getAssociatedConformanceWitness();
      v65 = sub_1CF9E7F98();
      v67 = v66;
      (*(v219 + 8))(v63, v64);
      v68 = sub_1CEFD0DF0(v65, v67, &v231);
      v67, v69, v70, v71, v72, v73, v74, v75;
      *(v60 + 4) = v68;
      *(v60 + 12) = 2112;
      swift_getErrorValue();
      v76 = Error.prettyDescription.getter(v229, v230);
      *(v60 + 14) = v76;
      v77 = v216;
      *v216 = v76;
      _os_log_impl(&dword_1CEFC7000, v58, v223, "requestMaterialization(%s) post-materialization lookup returned an error %@", v60, 0x16u);
      sub_1CEFCCC44(v77, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v77, -1, -1);
      v78 = v228;
      __swift_destroy_boxed_opaque_existential_1(v228);
      MEMORY[0x1D386CDC0](v78, -1, -1);
      MEMORY[0x1D386CDC0](v60, -1, -1);
    }

    else
    {
      (*(v24 + 8))(v38, v17);
    }

    (*(v227 + 8))(v49, v226);
    v104 = v217;
    *v217 = v55;
    v105 = v222;
    swift_storeEnumTagMultiPayload();
    v106 = v55;
    v224(v104);

    (*(v221 + 8))(v104, v105);
  }

  else
  {
    v79 = v24;
    v80 = v17;
    if ((*(v24 + 48))(v53, 1, v17) == 1)
    {
      v81 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      (*(v24 + 16))(v35, v228, v17);
      v82 = sub_1CF9E6108();
      v83 = sub_1CF9E7298();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v216 = v84;
        v217 = swift_slowAlloc();
        v231 = v217;
        *v84 = 136315138;
        v85 = *(v223 + 632);
        v223 = *(v85 + 64);
        v86 = v17;
        v87 = v218;
        LODWORD(v215) = v83;
        (v223)(v86, v85);
        (*(v79 + 8))(v35, v86);
        v88 = v220;
        swift_getAssociatedConformanceWitness();
        v89 = sub_1CF9E7F98();
        v91 = v90;
        v92 = v219;
        (*(v219 + 8))(v87, v88);
        v93 = sub_1CEFD0DF0(v89, v91, &v231);
        v91, v94, v95, v96, v97, v98, v99, v100;
        v101 = v216;
        *(v216 + 4) = v93;
        v102 = v101;
        _os_log_impl(&dword_1CEFC7000, v82, v215, "requestMaterialization(%s) post-materialization lookup returned no item", v101, 0xCu);
        v103 = v217;
        __swift_destroy_boxed_opaque_existential_1(v217);
        MEMORY[0x1D386CDC0](v103, -1, -1);
        MEMORY[0x1D386CDC0](v102, -1, -1);

        (*(v227 + 8))(v46, v226);
        (v223)(v86, v85);
      }

      else
      {
        (*(v24 + 8))(v35, v17);

        (*(v227 + 8))(v46, v226);
        v176 = v17;
        v92 = v219;
        v88 = v220;
        v87 = v218;
        (*(*(v223 + 632) + 64))(v176, *(v223 + 632));
      }

      v177 = sub_1CF2CB460(v87, 1, v88, *(v213 + 96));
      (*(v92 + 8))(v87, v88);
      v178 = FPItemNotFoundError();

      if (v178)
      {
        v179 = v212;
        *v212 = v178;
        v180 = v222;
        swift_storeEnumTagMultiPayload();
        v224(v179);
        (*(v221 + 8))(v179, v180);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v107 = v216;
      v213 = *(v24 + 32);
      v212 = (v24 + 32);
      (v213)(v216, v53, v80);
      v108 = *(v223 + 632);
      v109 = *(v108 + 104);
      v110 = v214;
      v109(v80, v108);
      v111 = *(v110 + *(v215 + 112));
      sub_1CF007C58(v110, type metadata accessor for ItemMetadata);
      if ((v111 & 1) != 0 || (v112 = sub_1CF6656D8(v211, v80, *(v223 + 624), v108, *(v223 + 640))) == 0 || (v113 = v80, v114 = v112, v115 = [v112 requestedExtent], v117 = v116, v114, v80 = v113, v107 = v216, v117 == -1) || v115 <= 0 && (v118 = v214, v109(v80, v108), v119 = *(v118 + *(v215 + 104)), sub_1CF007C58(v118, type metadata accessor for ItemMetadata), v117 >= v119)) && (sub_1CF937C7C(v80, v108))
      {
        v214 = a12;
        v228 = a11;
        LODWORD(v222) = a10;
        LODWORD(v221) = a9;
        v120 = fpfs_current_or_default_log();
        v121 = v209;
        sub_1CF9E6128();
        v122 = v203;
        v210 = *(v24 + 16);
        (v210)(v203, v107, v80);
        v123 = sub_1CF9E6108();
        v124 = sub_1CF9E7298();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v199 = v125;
          v201 = swift_slowAlloc();
          v231 = v201;
          *v125 = 136315138;
          v202 = *(v108 + 64);
          v200 = v124;
          v126 = v80;
          v208 = (v24 + 16);
          v127 = v218;
          v202(v80, v108);
          v128 = *(v24 + 8);
          v215 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v217 = v128;
          (v128)(v122, v80);
          v129 = v220;
          swift_getAssociatedConformanceWitness();
          v130 = sub_1CF9E7F98();
          v131 = v123;
          v133 = v132;
          v134 = v129;
          v135 = v24;
          (*(v219 + 8))(v127, v134);
          v136 = sub_1CEFD0DF0(v130, v133, &v231);
          v137 = v127;
          v133, v138, v139, v140, v141, v142, v143, v144;
          v145 = v199;
          *(v199 + 1) = v136;
          v146 = v145;
          _os_log_impl(&dword_1CEFC7000, v131, v200, "requestMaterialization(%s) post-materialization lookup returned a dataless item - force ingestion", v145, 0xCu);
          v147 = v201;
          __swift_destroy_boxed_opaque_existential_1(v201);
          MEMORY[0x1D386CDC0](v147, -1, -1);
          MEMORY[0x1D386CDC0](v146, -1, -1);

          (*(v227 + 8))(v209, v226);
          v148 = v202;
        }

        else
        {
          v183 = *(v24 + 8);
          v215 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v217 = v183;
          (v183)(v122, v80);

          (*(v227 + 8))(v121, v226);
          v126 = v80;
          v148 = *(v108 + 64);
          v135 = v24;
          v137 = v218;
        }

        v184 = v216;
        v148(v126, v108);
        v185 = v204;
        (v210)(v204, v184, v126);
        v186 = (*(v135 + 80) + 120) & ~*(v135 + 80);
        v187 = swift_allocObject();
        *(v187 + 16) = v126;
        v188 = v223;
        *(v187 + 24) = *(v223 + 624);
        *(v187 + 32) = v108;
        v189 = v224;
        v190 = v225;
        *(v187 + 40) = *(v188 + 640);
        *(v187 + 48) = v189;
        *(v187 + 56) = v190;
        *(v187 + 64) = v205 & 1;
        v191 = v126;
        v192 = v137;
        v193 = v206;
        *(v187 + 72) = v207;
        *(v187 + 80) = v193;
        *(v187 + 88) = v221 & 1;
        *(v187 + 89) = v222 & 1;
        v194 = v211;
        v195 = v228;
        *(v187 + 96) = v211;
        *(v187 + 104) = v195;
        v196 = v213;
        v197 = v214;
        *(v187 + 112) = v214;
        v196(v187 + v186, v185, v191);

        sub_1CEFD09A0(v194);
        v198 = v197;
        sub_1CF52BEB4(v192, v194, sub_1CF550EAC, v187);

        (*(v219 + 8))(v192, v220);
        (v217)(v216, v191);
      }

      else
      {
        v149 = fpfs_current_or_default_log();
        v150 = v210;
        sub_1CF9E6128();
        v151 = v208;
        v215 = *(v24 + 16);
        (v215)(v208, v107, v80);
        v152 = sub_1CF9E6108();
        v153 = sub_1CF9E7298();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          v223 = v80;
          v155 = v154;
          v214 = swift_slowAlloc();
          v231 = v214;
          *v155 = 136315138;
          v156 = v218;
          (*(v108 + 64))(v223, v108);
          v157 = *(v24 + 8);
          v157(v151, v223);
          v158 = v157;
          v159 = v220;
          swift_getAssociatedConformanceWitness();
          v160 = sub_1CF9E7F98();
          v162 = v161;
          v163 = v156;
          v107 = v216;
          (*(v219 + 8))(v163, v159);
          v164 = sub_1CEFD0DF0(v160, v162, &v231);
          v162, v165, v166, v167, v168, v169, v170, v171;
          *(v155 + 4) = v164;
          v172 = v153;
          v173 = v158;
          _os_log_impl(&dword_1CEFC7000, v152, v172, "requestMaterialization(%s) post-materialization lookup succeeded", v155, 0xCu);
          v174 = v214;
          __swift_destroy_boxed_opaque_existential_1(v214);
          MEMORY[0x1D386CDC0](v174, -1, -1);
          v175 = v155;
          v80 = v223;
          MEMORY[0x1D386CDC0](v175, -1, -1);

          (*(v227 + 8))(v210, v226);
        }

        else
        {
          v173 = *(v24 + 8);
          v173(v151, v80);

          (*(v227 + 8))(v150, v226);
        }

        v181 = v217;
        (v215)(v217, v228, v80);
        v182 = v222;
        swift_storeEnumTagMultiPayload();
        v224(v181);
        (*(v221 + 8))(v181, v182);
        v173(v107, v80);
      }
    }
  }
}

uint64_t sub_1CF538654(uint64_t a1, char *a2, void (*a3)(uint64_t *), char *a4, int a5, uint64_t *a6, uint64_t *a7, int a8, char a9, unint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  LODWORD(v94) = a8;
  LODWORD(v93) = a5;
  v96 = a4;
  v97 = a3;
  v95 = a2;
  v92 = *a6;
  v14 = v92;
  v15 = *a7;
  v16 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v88 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E5268();
  v89 = *(v18 - 8);
  v90 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v15 + 80);
  v87 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v78 - v23;
  v25 = *(v14 + 616);
  v91 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v78 - v27;
  v29 = sub_1CF9E6118();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v33 = sub_1CF9E8238();
  MEMORY[0x1EEE9AC00](v33);
  v37 = (&v78 - v36);
  if (v95)
  {
    v38 = v95;
    *v37 = v95;
    v39 = v34;
    v40 = v35;
    v41 = v37;
    swift_storeEnumTagMultiPayload();
    v42 = v38;
    v97(v41);
    return (*(v40 + 8))(v41, v39);
  }

  else
  {
    v83 = v21;
    v84 = v28;
    v82 = v24;
    v44 = v91;
    v45 = v92;
    v85 = v30;
    v86 = v29;
    v95 = v20;
    if (v93)
    {
      return sub_1CF52C114(a7, v94 & 1, a9 & 1, 0, a10, a11, a12, v97, v96);
    }

    else
    {
      v81 = v37;
      v93 = v34;
      v94 = v35;
      v46 = fpfs_current_or_default_log();
      v47 = v32;
      sub_1CF9E6128();
      v48 = v44;
      v49 = v84;
      (*(v44 + 16))(v84, a13, v25);
      v50 = sub_1CF9E6108();
      v51 = sub_1CF9E7298();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v79 = v52;
        v80 = swift_slowAlloc();
        v98 = v80;
        *v52 = 136315138;
        v53 = *(v45 + 632);
        v54 = v82;
        v55 = v51;
        (*(v53 + 64))(v25, v53);
        (*(v48 + 8))(v49, v25);
        v56 = v83;
        swift_getAssociatedConformanceWitness();
        v57 = sub_1CF9E7F98();
        v59 = v58;
        (*(v87 + 8))(v54, v56);
        v60 = sub_1CEFD0DF0(v57, v59, &v98);
        v59, v61, v62, v63, v64, v65, v66, v67;
        v68 = v79;
        *(v79 + 1) = v60;
        v69 = v68;
        _os_log_impl(&dword_1CEFC7000, v50, v55, "requestMaterialization(%s) post-materialization retry failed", v68, 0xCu);
        v70 = v80;
        __swift_destroy_boxed_opaque_existential_1(v80);
        MEMORY[0x1D386CDC0](v70, -1, -1);
        MEMORY[0x1D386CDC0](v69, -1, -1);
      }

      else
      {
        (*(v44 + 8))(v49, v25);
      }

      (*(v85 + 8))(v47, v86);
      v71 = v97;
      v73 = v89;
      v72 = v90;
      v74 = v95;
      sub_1CF9E5198();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00E8B4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      sub_1CF9E57D8();
      v75 = sub_1CF9E50D8();
      (*(v73 + 8))(v74, v72);
      v76 = v81;
      *v81 = v75;
      v77 = v93;
      swift_storeEnumTagMultiPayload();
      v71(v76);
      return (*(v94 + 8))(v76, v77);
    }
  }
}

void sub_1CF538D30(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = v12[77];
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v14 = sub_1CF9E8238();
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v61[-v15];
  v16 = sub_1CF9E6118();
  v68 = *(v16 - 8);
  v69 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = swift_allocObject();
  v72 = v13;
  v19[2] = v13;
  v20 = v12[78];
  v19[3] = v20;
  v71 = v12[79];
  v19[4] = v71;
  v73 = v12[80];
  v19[5] = v73;
  v19[6] = a4;
  v70 = a4;
  v19[7] = a5;

  if (a3 < 51)
  {
    if (sub_1CF5551A8(v21))
    {
      v52 = swift_allocObject();
      *&v54 = v71;
      *&v53 = v72;
      *(&v53 + 1) = v20;
      *(&v54 + 1) = v73;
      *(v52 + 16) = v53;
      *(v52 + 32) = v54;
      *(v52 + 48) = sub_1CF5507F4;
      *(v52 + 56) = v19;

      sub_1CF539D9C(a2, sub_1CF550840, v52);
    }

    else
    {
      v59 = sub_1CF6651BC(a2);
      v60 = swift_allocObject();
      v60[2] = sub_1CF5507F4;
      v60[3] = v19;
      v60[4] = v6;
      v60[5] = a2;
      v60[6] = a1;
      v60[7] = a3;
      v60[8] = v70;
      v60[9] = a5;

      sub_1CEFD09A0(a2);

      sub_1CF52FB88(a1, 0, 0, v59, sub_1CF55080C, v60);

      sub_1CF540FDC(v59);
    }
  }

  else
  {

    v22 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFD09A0(a2);
    sub_1CEFD09A0(a2);

    v23 = sub_1CF9E6108();
    v24 = sub_1CF9E72B8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v64 = v26;
      v74 = v26;
      *v25 = 136446466;
      v63 = v23;
      v27 = sub_1CF554E8C(v26);
      v62 = v24;
      v29 = v28;

      v30 = sub_1CEFD0DF0(v27, v29, &v74);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v25 + 4) = v30;
      *(v25 + 12) = 2082;
      v38 = v72;
      v39 = sub_1CF665B0C(a2, v72, v20, v71, v73);
      v41 = v40;
      sub_1CF540FDC(a2);
      sub_1CF540FDC(a2);
      v42 = sub_1CEFD0DF0(v39, v41, &v74);
      v41, v43, v44, v45, v46, v47, v48, v49;
      *(v25 + 14) = v42;
      v50 = v63;
      _os_log_impl(&dword_1CEFC7000, v63, v62, "Recursion too deep for backgroundLookup of itemID %{public}s request %{public}s", v25, 0x16u);
      v51 = v64;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v51, -1, -1);
      MEMORY[0x1D386CDC0](v25, -1, -1);

      (*(v68 + 8))(v18, v69);
    }

    else
    {
      sub_1CF540FDC(a2);
      sub_1CF540FDC(a2);

      (*(v68 + 8))(v18, v69);
      v38 = v72;
    }

    v55 = sub_1CF9E6888();
    v56 = FPInvalidParameterError();

    if (v56)
    {
      v57 = v65;
      *v65 = v56;
      v58 = v67;
      swift_storeEnumTagMultiPayload();
      sub_1CF53934C(v57, v70, a5, v38);

      (*(v66 + 8))(v57, v58);
    }

    else
    {

      __break(1u);
    }
  }
}

uint64_t sub_1CF53934C(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v37 = a2;
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E75D8();
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v32 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v14 = sub_1CF9E8238();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v32 - v20);
  (*(v15 + 16))(&v32 - v20, a1, v14, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v17 = v22;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v37(v17);

    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v33 = v15;
    v25 = v8;
    v26 = v6;
    v27 = v36;
    v28 = a4;
    v29 = v9;
    v30 = v35;
    (*(v36 + 32))(v35, v21, v29);
    (*(v27 + 16))(v11, v30, v29);
    if ((*(v26 + 48))(v11, 1, v28) == 1)
    {
      v31 = *(v36 + 8);
      v31(v11, v29);
      (*(v26 + 56))(v17, 1, 1, v28);
      swift_storeEnumTagMultiPayload();
      v37(v17);
      (*(v33 + 8))(v17, v14);
      return (v31)(v35, v29);
    }

    else
    {
      (*(v26 + 32))(v25, v11, v28);
      (*(v26 + 16))(v17, v25, v28);
      (*(v26 + 56))(v17, 0, 1, v28);
      swift_storeEnumTagMultiPayload();
      v37(v17);
      (*(v33 + 8))(v17, v14);
      (*(v26 + 8))(v25, v28);
      return (*(v36 + 8))(v35, v29);
    }
  }
}

uint64_t sub_1CF5397EC(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a3;
  v42 = a2;
  v12 = sub_1CF9E75D8();
  v37 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v36 - v13;
  v41 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[0] = a4;
  v46[1] = a5;
  v46[2] = a6;
  v46[3] = a7;
  v16 = type metadata accessor for ItemLookupResult(0, v46);
  v43 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v36 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v18 = sub_1CF9E8238();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v36 - v20);
  sub_1CF9E75D8();
  v22 = sub_1CF9E8238();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = (&v36 - v24);
  (*(v26 + 16))(&v36 - v24, a1, v22, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v25;
    *v21 = *v25;
    swift_storeEnumTagMultiPayload();
    v28 = v27;
    v42(v21);

    return (*(v19 + 8))(v21, v18);
  }

  v29 = v42;
  if ((*(v43 + 48))(v25, 1, v16) == 1)
  {
    v45 = sub_1CF9E5328();
    swift_dynamicCast();
    *v21 = v46[0];
    swift_storeEnumTagMultiPayload();
    v29(v21);
    return (*(v19 + 8))(v21, v18);
  }

  v31 = v40;
  (*(v43 + 32))();
  v32 = v39;
  sub_1CF52D0F8(v16, v39);
  v33 = v32;
  v34 = v41;
  if ((*(v41 + 48))(v33, 1, a4) == 1)
  {
    (*(v37 + 8))(v33, v12);
    (*(v34 + 56))(v21, 1, 1, a4);
    swift_storeEnumTagMultiPayload();
    v29(v21);
    (*(v19 + 8))(v21, v18);
  }

  else
  {
    v35 = v38;
    (*(v34 + 32))(v38, v33, a4);
    (*(v34 + 16))(v21, v35, a4);
    (*(v34 + 56))(v21, 0, 1, a4);
    swift_storeEnumTagMultiPayload();
    v29(v21);
    (*(v19 + 8))(v21, v18);
    (*(v34 + 8))(v35, a4);
  }

  return (*(v43 + 8))(v31, v16);
}

double sub_1CF539D9C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v18 = *(*v3 + 632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v22 = AssociatedTypeWitness;
  v23 = v6;
  v24 = AssociatedConformanceWitness;
  v25 = v8;
  v9 = type metadata accessor for ReconciliationID(0, &v22);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v22 = AssociatedTypeWitness;
  v23 = v6;
  v24 = AssociatedConformanceWitness;
  v25 = v8;
  v12 = type metadata accessor for FPFSID(0, &v22);
  (*(**(*(v4 + 40) + 16) + 96))(v12);
  swift_storeEnumTagMultiPayload();
  v13 = sub_1CF554514(v11);
  v14 = v19;
  v15 = sub_1CF6651BC(v19);
  v16 = swift_allocObject();
  v16[2] = v20;
  v16[3] = v21;
  v16[4] = v14;
  v16[5] = v4;

  sub_1CEFD09A0(v14);

  sub_1CF52FB88(v13, 1, 0, v15, sub_1CF54EA68, v16);

  sub_1CF540FDC(v15);

  return result;
}

void sub_1CF53A02C(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v86 = a7;
  v87 = a8;
  v88 = a6;
  v89 = a5;
  v91 = a2;
  v92 = a3;
  v90 = a1;
  v10 = *a4;
  v11 = *a4;
  v12 = sub_1CF9E6118();
  v81 = *(v12 - 8);
  v82 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 616);
  v15 = sub_1CF9E75D8();
  v76 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v75 - v16;
  v79 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v75 - v18;
  v19 = *(v11 + 632);
  *&v20 = v14;
  v84 = *(v10 + 624);
  *(&v20 + 1) = v84;
  v83 = v19;
  v93[1] = v19;
  v93[0] = v20;
  v21 = type metadata accessor for ItemLookupResult(0, v93);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v75 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v24 = sub_1CF9E8238();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v75 - v26);
  sub_1CF9E75D8();
  v28 = sub_1CF9E8238();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = (&v75 - v30);
  (*(v32 + 16))(&v75 - v30, v90, v28, v29);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v31;
    *v27 = *v31;
    swift_storeEnumTagMultiPayload();
    v34 = v33;
    v91(v27);

    (*(v25 + 8))(v27, v24);
    return;
  }

  if ((*(v22 + 48))(v31, 1, v21) == 1)
  {
    v35 = fpfs_current_or_default_log();
    v36 = v85;
    sub_1CF9E6128();
    v37 = v89;
    sub_1CEFD09A0(v89);
    sub_1CEFD09A0(v37);
    v38 = v88;

    v39 = sub_1CF9E6108();
    v40 = sub_1CF9E7298();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v93[0] = v42;
      *v41 = 136315394;
      v43 = sub_1CF554E8C(v42);
      v45 = v44;

      v46 = sub_1CEFD0DF0(v43, v45, v93);
      v45, v47, v48, v49, v50, v51, v52, v53;
      *(v41 + 4) = v46;
      *(v41 + 12) = 2080;
      v54 = sub_1CF665B0C(v37, v14, v84, v83, *(&v83 + 1));
      v56 = v55;
      sub_1CF540FDC(v37);
      sub_1CF540FDC(v37);
      v57 = sub_1CEFD0DF0(v54, v56, v93);
      v56, v58, v59, v60, v61, v62, v63, v64;
      *(v41 + 14) = v57;
      _os_log_impl(&dword_1CEFC7000, v39, v40, "Item cannot be found on disk, looking for parent for %s request %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v42, -1, -1);
      MEMORY[0x1D386CDC0](v41, -1, -1);

      (*(v81 + 8))(v85, v82);
    }

    else
    {
      sub_1CF540FDC(v37);
      sub_1CF540FDC(v37);

      (*(v81 + 8))(v36, v82);
    }

    v71 = v91;
    v70 = v92;
    goto LABEL_12;
  }

  v65 = v80;
  (*(v22 + 32))(v80, v31, v21);
  v37 = v89;
  if ((sub_1CF54EF04(v65, 1, v89, v14, v84, v83, *(&v83 + 1)) & 1) == 0)
  {
    (*(v22 + 8))(v65, v21);
    v71 = v91;
    v70 = v92;
    v38 = v88;
LABEL_12:
    v72 = swift_allocObject();
    v72[2] = v71;
    v72[3] = v70;
    v72[4] = a4;
    v72[5] = v37;
    v73 = v87;
    v72[6] = v86;
    v72[7] = v73;
    v72[8] = a9;
    sub_1CEFD09A0(v37);

    sub_1CF52D66C(v38, sub_1CF550870, v72);

    return;
  }

  v66 = v78;
  v67 = v65;
  sub_1CF52D0F8(v21, v78);
  v68 = v66;
  v69 = v79;
  if ((*(v79 + 48))(v68, 1, v14) == 1)
  {
    (*(v76 + 8))(v68, v15);
    (*(v69 + 56))(v27, 1, 1, v14);
    swift_storeEnumTagMultiPayload();
    v91(v27);
    (*(v25 + 8))(v27, v24);
  }

  else
  {
    v74 = v77;
    (*(v69 + 32))(v77, v68, v14);
    (*(v69 + 16))(v27, v74, v14);
    (*(v69 + 56))(v27, 0, 1, v14);
    swift_storeEnumTagMultiPayload();
    v91(v27);
    (*(v25 + 8))(v27, v24);
    (*(v69 + 8))(v74, v14);
  }

  (*(v22 + 8))(v67, v21);
}

uint64_t sub_1CF53A8FC(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v29 = a6;
  v30 = a3;
  v26 = a5;
  v31 = a2;
  v9 = *a4;
  v32 = *(*a4 + 616);
  v33[0] = v32;
  v33[1] = *(v9 + 632);
  v10 = _s20ParentIDLookupResultVMa(0, v33);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v26 - v12);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v14 = sub_1CF9E8238();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v26 - v16);
  v18 = sub_1CF9E8238();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v26 - v20);
  (*(v22 + 16))(&v26 - v20, a1, v18, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v21;
    *v17 = *v21;
    swift_storeEnumTagMultiPayload();
    v24 = v23;
    v31(v17);

    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    result = (*(v11 + 32))(v13, v21, v10);
    if (__OFADD__(v29, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1CF538D30(*v13, v26, v29 + 1, v27, v28);
      return (*(v11 + 8))(v13, v10);
    }
  }

  return result;
}

double sub_1CF53AC20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CF9E6118();
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a2);
  sub_1CEFD09A0(a2);

  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E7298();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v49 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v47 = v19;
    v52 = v19;
    *v18 = 136315394;
    v20 = sub_1CF554E8C(v19);
    v48 = a3;
    v22 = v21;

    v23 = sub_1CEFD0DF0(v20, v22, &v52);
    v22, v24, v25, v26, v27, v28, v29, v30;
    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v31 = sub_1CF665B0C(a2, v10[77], v10[78], v10[79], v10[80]);
    v33 = v32;
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);
    v34 = sub_1CEFD0DF0(v31, v33, &v52);
    v35 = v33;
    a3 = v48;
    v35, v36, v37, v38, v39, v40, v41, v42;
    *(v18 + 14) = v34;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "Request to background materialize content of itemID %s reason %s", v18, 0x16u);
    v43 = v47;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v43, -1, -1);
    v44 = v18;
    a4 = v49;
    MEMORY[0x1D386CDC0](v44, -1, -1);
  }

  else
  {
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);
  }

  (*(v50 + 8))(v13, v51);
  v45 = swift_allocObject();
  v45[2] = a3;
  v45[3] = a4;
  v45[4] = a2;
  v45[5] = a1;
  v45[6] = v5;
  sub_1CEFD09A0(a2);

  sub_1CF538D30(a1, a2, 0, sub_1CF5507E4, v45);

  return result;
}

uint64_t sub_1CF53AF48(uint64_t a1, void (*a2)(void *), uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  v177 = a2;
  v178 = a3;
  v9 = *a5;
  v174 = *a6;
  v10 = v174;
  v175 = a4;
  v11 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v162 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E5268();
  v163 = *(v13 - 8);
  v164 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v161 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v172 = *(v15 - 8);
  v173 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v166 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v168 = &v148 - v18;
  v171 = a6;
  v19 = v10[77];
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v170 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v148 - v24;
  v167 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v176 = &v148 - v28;
  v169 = a5;
  v29 = *(v9 + 80);
  v30 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v165 = v30;
  v31 = sub_1CF9E8238();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = (&v148 - v33);
  sub_1CF9E75D8();
  v35 = sub_1CF9E8238();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = (&v148 - v37);
  (*(v39 + 16))(&v148 - v37, a1, v35, v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v38;
    *v34 = *v38;
    swift_storeEnumTagMultiPayload();
    v41 = v40;
    v177(v34);

    return (*(v32 + 8))(v34, v31);
  }

  else
  {
    v160 = v32;
    if ((*(v20 + 48))(v38, 1, v19) == 1)
    {
      (*(*(v29 - 8) + 56))(v34, 1, 1, v29);
      swift_storeEnumTagMultiPayload();
      v177(v34);
      return (*(v160 + 8))(v34, v31);
    }

    else
    {
      v43 = *(v20 + 32);
      v44 = v176;
      v157 = v20 + 32;
      v156 = v43;
      (v43)(v176, v38, v19);
      v45 = fpfs_current_or_default_log();
      v46 = v168;
      sub_1CF9E6128();
      v47 = *(v20 + 16);
      v47(v25, v44, v19);
      v48 = v175;
      sub_1CEFD09A0(v175);
      sub_1CEFD09A0(v48);
      v49 = sub_1CF9E6108();
      v153 = sub_1CF9E7298();
      v50 = os_log_type_enabled(v49, v153);
      v152 = v31;
      v159 = v20;
      v155 = v20 + 16;
      v154 = v47;
      if (v50)
      {
        v51 = swift_slowAlloc();
        v149 = v51;
        v151 = swift_slowAlloc();
        v179[0] = v151;
        *v51 = 136315394;
        v150 = v49;
        v52 = v170;
        v47(v170, v25, v19);
        v53 = *(v20 + 8);
        v53(v25, v19);
        v54 = v174;
        v55 = v174[79];
        v56 = sub_1CF9E7F98();
        v58 = v57;
        v158 = v53;
        v53(v52, v19);
        v48 = v175;
        v59 = sub_1CEFD0DF0(v56, v58, v179);
        v58, v60, v61, v62, v63, v64, v65, v66;
        v67 = v149;
        *(v149 + 1) = v59;
        *(v67 + 6) = 2080;
        v68 = v54[78];
        v69 = v54[80];
        v70 = v55;
        v71 = sub_1CF665B0C(v48, v19, v68, v55, v69);
        v73 = v72;
        sub_1CF540FDC(v48);
        sub_1CF540FDC(v48);
        v74 = sub_1CEFD0DF0(v71, v73, v179);
        v73, v75, v76, v77, v78, v79, v80, v81;
        *(v67 + 14) = v74;
        v82 = v150;
        _os_log_impl(&dword_1CEFC7000, v150, v153, "Found item %s, request %s", v67, 0x16u);
        v83 = v151;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v83, -1, -1);
        MEMORY[0x1D386CDC0](v67, -1, -1);

        v84 = *(v172 + 8);
        v84(v46, v173);
      }

      else
      {
        v85 = sub_1CF540FDC(v48);
        v158 = *(v20 + 8);
        v158(v25, v19, v85);
        sub_1CF540FDC(v48);

        v84 = *(v172 + 8);
        v84(v46, v173);
        v70 = v174[79];
      }

      v86 = sub_1CF937C7C(v19, v70);
      v87 = v160;
      if (v86)
      {
        v88 = v174[78];
        v89 = v174[80];
        v179[0] = v19;
        v179[1] = v88;
        v179[2] = v70;
        v179[3] = v89;
        type metadata accessor for SQLJobRegistry(0, v179);
        v90 = swift_dynamicCastClass();
        if (v90)
        {
          v91 = v90;
          v168 = v70;
          v92 = v170;
          v154(v170, v176, v19);
          v93 = (*(v159 + 80) + 56) & ~*(v159 + 80);
          v94 = (v167 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
          v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
          v96 = swift_allocObject();
          *(v96 + 2) = v19;
          *(v96 + 3) = v88;
          *(v96 + 4) = v168;
          *(v96 + 5) = v89;
          *(v96 + 6) = v91;
          v156(&v96[v93], v92);
          *&v96[v94] = v171;
          v97 = v175;
          *&v96[v95] = v175;
          v98 = &v96[(v95 + 15) & 0xFFFFFFFFFFFFFFF8];
          v100 = v177;
          v99 = v178;
          *v98 = v177;
          *(v98 + 1) = v99;

          sub_1CEFD09A0(v97);

          sub_1CF92E4B0("backgroundMaterialize(_:request:completionHandler:)", 51, 2, sub_1CF045408, 0, v100, v99, sub_1CF5508C8, v96, v165);
        }

        else
        {
          sub_1CF9E5108();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF00E8B4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v144 = v161;
          v145 = v164;
          sub_1CF9E57D8();
          v146 = sub_1CF9E50D8();
          (*(v163 + 8))(v144, v145);
          *v34 = v146;
          v147 = v152;
          swift_storeEnumTagMultiPayload();
          v177(v34);
          (*(v87 + 8))(v34, v147);
        }

        v101 = v176;
        v102 = v19;
      }

      else
      {
        v103 = v19;
        v104 = fpfs_current_or_default_log();
        v105 = v166;
        sub_1CF9E6128();
        sub_1CEFD09A0(v48);
        sub_1CEFD09A0(v48);

        v106 = sub_1CF9E6108();
        v107 = sub_1CF9E7298();
        v108 = os_log_type_enabled(v106, v107);
        v168 = v70;
        if (v108)
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v179[0] = v110;
          *v109 = 136315394;
          v111 = sub_1CF554E8C(v110);
          v165 = v84;
          v113 = v112;

          v114 = sub_1CEFD0DF0(v111, v113, v179);
          v113, v115, v116, v117, v118, v119, v120, v121;
          *(v109 + 4) = v114;
          *(v109 + 12) = 2080;
          v122 = v174[78];
          v123 = v122;
          v174 = v174[80];
          v124 = sub_1CF665B0C(v175, v103, v122, v70, v174);
          v126 = v125;
          sub_1CF540FDC(v175);
          sub_1CF540FDC(v175);
          v127 = sub_1CEFD0DF0(v124, v126, v179);
          v126, v128, v129, v130, v131, v132, v133, v134;
          *(v109 + 14) = v127;
          _os_log_impl(&dword_1CEFC7000, v106, v107, "Item is not dataless, lookup and propagate %s request %s", v109, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v110, -1, -1);
          v135 = v109;
          v48 = v175;
          MEMORY[0x1D386CDC0](v135, -1, -1);

          v165(v105, v173);
        }

        else
        {
          sub_1CF540FDC(v48);
          sub_1CF540FDC(v48);

          v84(v105, v173);
          v123 = v174[78];
          v174 = v174[80];
        }

        v136 = v178;
        v137 = v154;
        v138 = v168;
        v139 = v174;
        v140 = sub_1CF6651BC(v48);
        v141 = v170;
        v137(v170, v176, v103);
        v142 = (*(v159 + 80) + 64) & ~*(v159 + 80);
        v143 = swift_allocObject();
        v143[2] = v103;
        v143[3] = v123;
        v143[4] = v138;
        v143[5] = v139;
        v143[6] = v177;
        v143[7] = v136;
        (v156)(v143 + v142, v141, v103);

        sub_1CF532AE0(v169, 1, 1, 0, v140, sub_1CF550884, v143);

        sub_1CF540FDC(v140);
        v101 = v176;
        v102 = v103;
      }

      return (v158)(v101, v102);
    }
  }
}

uint64_t sub_1CF53BD68(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a4;
  v41 = a3;
  v39 = a2;
  v13 = sub_1CF9E75D8();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v42[0] = a5;
  v42[1] = a6;
  v42[2] = a7;
  v42[3] = a8;
  v16 = type metadata accessor for ItemLookupResult(0, v42);
  v40 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v34 - v17;
  v35 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v19 = sub_1CF9E8238();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v34 - v21);
  sub_1CF9E75D8();
  v23 = sub_1CF9E8238();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = (&v34 - v25);
  (*(v27 + 16))(&v34 - v25, a1, v23, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v26;
    *v22 = *v26;
    swift_storeEnumTagMultiPayload();
    v29 = v28;
    v39(v22);

    return (*(v20 + 8))(v22, v19);
  }

  v30 = v39;
  if ((*(v40 + 48))(v26, 1, v16) == 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v22, 1, 1, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    v30(v22);
    return (*(v20 + 8))(v22, v19);
  }

  v32 = v38;
  (*(v40 + 32))(v38);
  sub_1CF52D0F8(v16, v15);
  v33 = (*(*(a5 - 8) + 48))(v15, 1, a5);
  (*(v36 + 8))(v15, v37);
  if (v33 == 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v22, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(v35 + 64))(a5);
    (*(*(AssociatedTypeWitness - 8) + 56))(v22, 0, 1, AssociatedTypeWitness);
  }

  swift_storeEnumTagMultiPayload();
  v30(v22);
  (*(v20 + 8))(v22, v19);
  return (*(v40 + 8))(v32, v16);
}

uint64_t sub_1CF53C294(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v59 = a7;
  v60 = a5;
  v56 = a6;
  v61 = a4;
  v68 = a3;
  v52 = *a2;
  v9 = v52;
  v10 = *(v52 + 632);
  v53 = *(v10 - 8);
  v50 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v45 - v11;
  v12 = sub_1CF9E6448();
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1CF9E5CF8();
  v14 = *(v66 - 1);
  MEMORY[0x1EEE9AC00](v66);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v9 + 648);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v62 = (&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v22 = a1[3];
  v64 = a1[4];
  v49 = a1;
  v23 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v63 = a2[4];
  v24 = *(v17 + 64);
  v55 = v10;
  v48 = v17;
  v47 = v24;
  v24(v10, v17);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v26 = v25;
  result = (*(v14 + 8))(v16, v66);
  v28 = v26 * 1000000000.0;
  if (COERCE__INT64(fabs(v26 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v29 = v65;
  sub_1CF347AC0(v21, 32, v28, v23, v22, v64);
  if (v29)
  {
    return (*(v69 + 8))(v21, AssociatedTypeWitness);
  }

  v30 = *(v69 + 8);
  v69 += 8;
  v66 = v30;
  v30(v21, AssociatedTypeWitness);
  v65 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  v31 = v49[4];
  v63 = v49[3];
  v46 = v31;
  v64 = __swift_project_boxed_opaque_existential_1(v49, v63);
  v32 = v68;
  v33 = v55;
  v34 = v48;
  v47(v55, v48);
  v35 = v54;
  sub_1CF9E63E8();
  v36 = v53;
  v37 = v51;
  (*(v53 + 16))(v51, v32, v33);
  v38 = (*(v36 + 80) + 64) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 2) = v33;
  v40 = v52;
  *(v39 + 3) = *(v52 + 640);
  *(v39 + 4) = v34;
  v41 = v56;
  *(v39 + 5) = *(v40 + 656);
  *(v39 + 6) = v41;
  *(v39 + 7) = v59;
  (*(v36 + 32))(&v39[v38], v37, v33);
  v42 = *(v46 + 8);

  v43 = v62;
  v44 = v65;
  sub_1CF599234(v62, v60, 0, v65, v35, v64, sub_1CF550A20, v39, v63, v42);

  (*(v57 + 8))(v35, v58);
  return v66(v43, AssociatedTypeWitness);
}

uint64_t sub_1CF53C850(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v12 = sub_1CF9E8238();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v19 - v15);
  if (a1)
  {
    *v16 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
  }

  else
  {
    (*(a7 + 64))(a5, a7, v14);
    (*(*(AssociatedTypeWitness - 8) + 56))(v16, 0, 1, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
  }

  a2(v16);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1CF53CA2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v5 = *a1;
  v6 = *(*a1 + 632);
  v7 = *(*a1 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for FileItemVersion(0, &AssociatedTypeWitness);
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v19 = *(v11 - 8);
  v20 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = *(a1[4] + 16);
  v15 = *(v6 + 64);

  v15(v7, v6);
  (*(v6 + 112))(v7, v6);
  AssociatedTypeWitness = 0;
  v26 = 0;
  AssociatedConformanceWitness = 0;
  v28 = 0xB000000000000000;
  v29 = 0u;
  v30 = 0u;
  v16 = swift_allocObject();
  v16[2] = v7;
  v16[3] = *(v5 + 624);
  v16[4] = v6;
  v16[5] = *(v5 + 640);
  v16[6] = v23;
  v16[7] = v24;
  v17 = *(*v14 + 664);

  v17(v13, 0, v10, 0, &AssociatedTypeWitness, sub_1CF5507C4, v16);

  (*(v21 + 8))(v10, v22);
  return (*(v19 + 8))(v13, v20);
}

void sub_1CF53CD98(uint64_t a1, void (*a2)(void *, void), uint64_t a3, uint64_t a4)
{
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v5 = sub_1CF9E8238();
  sub_1CF52CCD8(sub_1CF089FF4, v5, &v8);
  v6 = v8;
  v7 = v9;
  a2(v8, v9);
  sub_1CF0BA6EC(v6, v7);
}

uint64_t sub_1CF53CEA0(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void), uint64_t a5)
{
  v47 = a4;
  v48 = a5;
  v56 = a3;
  v7 = (*a2 + 624);
  v8 = *(*a2 + 632);
  v9 = *(*a2 + 616);
  v10 = (*a2 + 640);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v41 - v12;
  *&v13 = v9;
  *(&v13 + 1) = *v7;
  *&v14 = v8;
  *(&v14 + 1) = *v10;
  v55[0] = v13;
  v55[1] = v14;
  v15 = type metadata accessor for ItemReconciliation(255, v55);
  v16 = sub_1CF9E75D8();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v45 = v15;
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  v23 = a1[3];
  v22 = a1[4];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v23);
  v44 = a2;
  v25 = *(v8 + 64);
  v26 = v51;
  v46 = v9;
  v27 = v9;
  v28 = v8;
  v25(v27, v8);
  v49 = v18;
  v29 = v54;
  sub_1CF68DDB0(v26, v24, v23, v22, v18);
  if (v29)
  {
    return (*(v52 + 8))(v26, v53);
  }

  v32 = v42;
  v31 = v43;
  v54 = 0;
  v33 = v46;
  v34 = v47;
  v35 = v44;
  v36 = v48;
  (*(v52 + 8))(v26, v53);
  v37 = v45;
  if ((*(v50 + 48))(v49, 1, v45) == 1)
  {
    (*(v32 + 8))(v49, v31);
    return v34(0, 0);
  }

  else
  {
    (*(v50 + 32))(v21, v49, v37);
    if (sub_1CF07CD80(v37))
    {
      v34(0, 0);
      return (*(v50 + 8))(v21, v37);
    }

    else
    {
      v39 = type metadata accessor for ItemReconciliationHalf(0, v33, v28, v38);
      v40 = (v50 + 8);
      if (v21[*(v39 + 64) + 16])
      {
        v34(0, 0);
      }

      else
      {
        sub_1CF53CA2C(v35, v56, v34, v36);
      }

      return (*v40)(v21, v37);
    }
  }
}

void sub_1CF53D2D0(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v95 = a5;
  v96 = a6;
  v105 = a4;
  LODWORD(v106) = a3;
  v94 = a2;
  v85 = a1;
  v12 = *v8;
  v101 = sub_1CF9E63A8();
  v103 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1CF9E6448();
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(a7 - 8);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v12;
  isa = v12[79].isa;
  v87 = v12[77].isa;
  v17 = v87;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v82 = &v80 - v18;
  v19 = swift_allocObject();
  v107 = v19;
  *(v19 + 16) = 0;
  *(v19 + 24) = -1;
  v20 = dispatch_group_create();
  dispatch_group_enter(v20);
  v21 = *(v8[4] + 16);
  v22 = *(a8 + 64);

  v83 = a7;
  v23 = a8;
  v84 = a8;
  v22(a7, a8);
  v86 = v97[78].isa;
  v88 = v97[80].isa;
  v24 = v105;
  v81 = sub_1CF6656D8(v105, v17, v86, isa, v88);
  v25 = swift_allocObject();
  *(v25 + 16) = a7;
  *(v25 + 24) = v23;
  v26 = v107;
  *(v25 + 32) = v20;
  *(v25 + 40) = v26;
  *(v25 + 48) = v8;
  *(v25 + 56) = v106;
  *(v25 + 64) = v24;
  v27 = swift_allocObject();
  *(v27 + 16) = v20;
  *(v27 + 24) = v26;
  v28 = *(*v21 + 144);
  v29 = v20;
  swift_retain_n();
  v97 = v29;

  sub_1CEFD09A0(v24);
  v30 = v82;
  v31 = v81;
  v28(v82, v94, 0, v81, sub_1CF550324, v25, sub_1CF55033C, v27);

  (*(v89 + 8))(v30, AssociatedTypeWitness);
  v32 = sub_1CF042F4C();
  v33 = v92;
  v34 = v91;
  v35 = v83;
  (*(v92 + 16))(v91, v85, v83);
  v36 = v33;
  v37 = (*(v33 + 80) + 96) & ~*(v33 + 80);
  v38 = v37 + v93;
  v39 = (v37 + v93) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v86;
  *(v40 + 2) = v87;
  *(v40 + 3) = v41;
  v42 = isa;
  *(v40 + 4) = v35;
  *(v40 + 5) = v42;
  v43 = v84;
  *(v40 + 6) = v88;
  *(v40 + 7) = v43;
  v44 = v95;
  v45 = v96;
  *(v40 + 8) = v107;
  *(v40 + 9) = v44;
  *(v40 + 10) = v45;
  *(v40 + 11) = v9;
  (*(v36 + 32))(&v40[v37], v34, v35);
  v40[v38] = v106;
  v46 = v105;
  *&v40[v39 + 8] = v105;

  sub_1CEFD09A0(v46);
  v47 = v32;

  v48 = fpfs_current_log();
  v106 = fpfs_adopt_log();
  v49 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v110 = v50;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v51 = sub_1CF9E7988();
  v53 = v52;
  MEMORY[0x1D3868CC0](v51);
  v53, v54, v55, v56, v57, v58, v59, v60;
  v61 = v110;
  sub_1CF9E6978();
  v61, v62, v63, v64, v65, v66, v67, v68;
  v69 = __fp_log_fork();

  *(v49 + 16) = v69;
  v70 = swift_allocObject();
  *(v70 + 16) = v48;
  *(v70 + 24) = v49;
  *(v70 + 32) = v47;
  *(v70 + 40) = "materializeIgnoredItem(_:continuation:duringDiskImport:request:completionHandler:)";
  *(v70 + 48) = 82;
  *(v70 + 56) = 2;
  *(v70 + 64) = sub_1CF550348;
  *(v70 + 72) = v40;
  v113 = sub_1CEFD504C;
  v114 = v70;
  aBlock = MEMORY[0x1E69E9820];
  v110 = 1107296256;
  v111 = sub_1CEFCA444;
  v112 = &block_descriptor_96;
  v71 = _Block_copy(&aBlock);
  v72 = v47;
  v73 = v48;

  v74 = v98;
  sub_1CF9E63F8();
  v108 = MEMORY[0x1E69E7CC0];
  sub_1CF00E8B4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF01049C();
  v75 = v99;
  v76 = v101;
  sub_1CF9E77B8();
  v77 = v97;
  sub_1CF9E7308();
  _Block_release(v71);
  (*(v103 + 8))(v75, v76);
  (*(v100 + 8))(v74, v102);

  v78 = v106;
  v79 = fpfs_adopt_log();
}

uint64_t sub_1CF53DB4C(uint64_t a1, NSObject *a2, uint64_t a3, void *a4, int a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a7;
  v60 = a8;
  v57 = a4;
  v58 = a6;
  v63 = a5;
  v10 = a1;
  v62 = *a4;
  v11 = v62[77];
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v65 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49[-v15];
  v61 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49[-v19];
  if (objc_sync_enter(v21))
  {
LABEL_24:
    swift_unknownObjectRetain();
    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a2);
  }

  swift_beginAccess();
  v22 = *(a3 + 24);
  v51 = *(a3 + 16);
  sub_1CF5503E0(v51, v22);
  if (objc_sync_exit(a2))
  {
    swift_unknownObjectRetain();
    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a2);
  }

  if (v22 != 255 && (v22 & 1) != 0)
  {
    v23 = 1;
    goto LABEL_22;
  }

  if (!sub_1CF9E6DF8())
  {
    v23 = 0;
    goto LABEL_22;
  }

  v50 = v22;
  v56 = a3;
  v24 = 0;
  v71 = v62[79];
  v25 = *(v71 + 144);
  v68 = v71 + 144;
  v69 = v20;
  v72 = (v12 + 16);
  v70 = (v12 + 32);
  v66 = (v12 + 8);
  v67 = v25;
  v52 = v63 & 1;
  v64 = a2;
  v55 = v10;
  v54 = v12;
  v53 = v16;
  while (1)
  {
    v26 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v26)
    {
      v27 = *(v12 + 16);
      v28 = v69;
      v27(v69, v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24, v11);
      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      goto LABEL_12;
    }

    v46 = sub_1CF9E7998();
    if (v61 != 8)
    {
      __break(1u);
      goto LABEL_24;
    }

    v73 = v46;
    v27 = *v72;
    v47 = v69;
    (*v72)(v69, &v73, v11);
    v28 = v47;
    swift_unknownObjectRelease();
    v29 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

LABEL_12:
    v30 = *v70;
    (*v70)(v16, v28, v11);
    v31 = v67(v11, v71);
    if (v32 >> 62 == 2 && !v31 && v32 == 0x8000000000000000)
    {
      dispatch_group_enter(a2);
      v27(v65, v16, v11);
      v33 = (*(v12 + 80) + 88) & ~*(v12 + 80);
      v34 = v33 + v61;
      v35 = (v33 + v61) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      *(v36 + 2) = v11;
      v37 = v62;
      v38 = v59;
      *(v36 + 3) = v62[78];
      *(v36 + 4) = v38;
      *(v36 + 5) = v71;
      v39 = v60;
      *(v36 + 6) = v37[80];
      *(v36 + 7) = v39;
      v40 = v65;
      v42 = v56;
      v41 = v57;
      *(v36 + 8) = v64;
      *(v36 + 9) = v42;
      *(v36 + 10) = v41;
      v30(&v36[v33], v40, v11);
      v36[v34] = v52;
      v10 = v55;
      v43 = &v36[v35];
      a2 = v64;
      v44 = v58;
      *(v43 + 1) = v58;
      v45 = a2;
      v16 = v53;

      sub_1CEFD09A0(v44);
      v12 = v54;
      sub_1CF550490(v16, v63 & 1, sub_1CF5503F8, v36);
    }

    else
    {
      sub_1CF07638C(v31, v32);
    }

    (*v66)(v16, v11);
    ++v24;
    if (v29 == sub_1CF9E6DF8())
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_20:
  v23 = 0;
  LOBYTE(v22) = v50;
LABEL_22:
  sub_1CF518C0C(v51, v22);
  return v23;
}

double sub_1CF53E070(void *a1, char a2, NSObject *a3, uint64_t a4, uint64_t *a5, uint64_t a6, char a7, unint64_t a8)
{
  if (a2)
  {
    v11 = a1;
    sub_1CF516D6C(a3, (a4 + 16), a1);
LABEL_4:

    dispatch_group_leave(a3);
    return result;
  }

  if (a1)
  {
    goto LABEL_4;
  }

  v16 = *a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = *(v16 + 616);
  v19 = *(v16 + 632);
  v20 = a3;

  sub_1CF53E22C(a6, 0, a7 & 1, a8, sub_1CF5507DC, v17, v18, v19);

  return result;
}

void sub_1CF53E1C8(void *a1, NSObject *a2, uint64_t a3)
{
  v6 = a1;
  sub_1CF516E64(a2, a1, (a3 + 16));

  dispatch_group_leave(a2);
}

uint64_t sub_1CF53E22C(uint64_t a1, int a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v43 = a6;
  v41 = a5;
  v45 = a4;
  v44 = a3;
  v42 = a2;
  v13 = *v9;
  v14 = sub_1CF9E6448();
  v46 = *(v14 - 8);
  v47 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a7 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v13;
  v37 = *(v13 + 632);
  v35 = *(v13 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v34 - v21;
  v34 = a8;
  (*(a8 + 64))(a7, a8, v20);
  (*(v16 + 16))(v19, a1, a7);
  v23 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v24 = (v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v36;
  *(v26 + 2) = v35;
  *(v26 + 3) = *(v27 + 624);
  *(v26 + 4) = a7;
  *(v26 + 5) = v37;
  *(v26 + 6) = *(v27 + 640);
  *(v26 + 7) = v34;
  (*(v16 + 32))(&v26[v23], v19, a7);
  v28 = &v26[v24];
  v29 = v43;
  *v28 = v41;
  v28[1] = v29;
  v30 = &v26[v25];
  *v30 = v9;
  v30[8] = v42;
  v30[9] = v44;
  v31 = v45;
  *&v26[(v25 + 17) & 0xFFFFFFFFFFFFFFF8] = v45;

  sub_1CEFD09A0(v31);
  v32 = v39;
  sub_1CF5347DC();

  (*(v46 + 8))(v32, v47);
  return (*(v38 + 8))(v22, AssociatedTypeWitness);
}

void sub_1CF53E5DC(void *a1, char a2, NSObject *a3, uint64_t a4)
{
  sub_1CF2B1868(a1, a2 & 1);
  sub_1CF516F70(a3, a4 + 16, a1, a2 & 1);

  dispatch_group_leave(a3);
}

void sub_1CF53E64C(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  v16 = *(a1 + 24);
  if (v16 != 255)
  {
    v17 = *(a1 + 16);
    if (v16)
    {
      sub_1CF2B1868(v17, 1);
      a2(v17);
LABEL_6:
      sub_1CF518C0C(v17, v16);
      return;
    }

    if (v17)
    {
      sub_1CF2B1868(v17, 0);
      sub_1CF53D2D0(a5, v17, a6 & 1, a7, a2, a3, a8, a9);
      goto LABEL_6;
    }
  }

  a2(0);
}

void sub_1CF53E74C(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t *a5, _BOOL4 a6, int a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v49 = a8;
  v50 = a3;
  v48 = a7;
  v41 = a6;
  v51 = a4;
  v45 = *a5;
  v13 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = v14;
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 616);
  v44 = *(v16 + 632);
  v42 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v47 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v40 - v19;
  v20 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v40 = v15;
    v23 = *(a10 + 104);
    v24 = a1;
    v23(a9, a10);
    v25 = v22[*(v20 + 80)];
    sub_1CF007C58(v22, type metadata accessor for ItemMetadata);
    if (v25 == 1)
    {
      v26 = a1;
      v50(a1);

      return;
    }

    v15 = v40;
  }

  v27 = *(a5[4] + 16);
  v28 = *(a10 + 64);

  v28(a9, a10);
  if (v41)
  {
    sub_1CF06D940(a9, a10, &v53);
    v41 = v53 == 1;
  }

  else
  {
    v41 = 0;
  }

  (*(v13 + 16))(v15, a2, a9);
  v29 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v30 = (v29 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v15;
  v32 = (v29 + v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 2) = v42;
  v34 = v45;
  *(v33 + 3) = *(v45 + 624);
  *(v33 + 4) = a9;
  *(v33 + 5) = v44;
  *(v33 + 6) = *(v34 + 640);
  *(v33 + 7) = a10;
  v35 = v51;
  *(v33 + 8) = v50;
  *(v33 + 9) = v35;
  (*(v13 + 32))(&v33[v29], v31, a9);
  v36 = &v33[v30];
  *v36 = a5;
  v36[8] = v48 & 1;
  v37 = v49;
  *&v33[v32] = v49;
  v38 = *(*v27 + 864);

  sub_1CEFD09A0(v37);
  v39 = v52;
  v38(v52, v41, sub_1CF550280, v33);

  (*(v46 + 8))(v39, v47);
}

void sub_1CF53EBA4(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v12 = a1;
    a2(a1);
  }

  else
  {
    sub_1CF06D940(a8, a9, &v17);
    if (v17 == 1)
    {
      sub_1CF53D2D0(a4, 0, a6 & 1, a7, a2, a3, a8, a9);
    }

    else
    {
      a2(0);
    }
  }
}

double sub_1CF53ECA4(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a3;
  v40 = a4;
  v37 = a2;
  v38 = v6;
  v35 = *v7;
  v36 = *(a5 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v19 = *(a6 + 104);
  v19(a5, a6, v16);
  v20 = v18[*(v12 + 64)];
  sub_1CF007C58(v18, type metadata accessor for ItemMetadata);
  if (v20 & 1) != 0 || ((v19)(a5, a6), v22 = v14[*(v12 + 68)], sub_1CF007C58(v14, type metadata accessor for ItemMetadata), v22 != 2) && (v22)
  {
    v39(1, 0);
  }

  else
  {
    v23 = v36;
    v24 = v34;
    (*(v36 + 16))(v34, a1, a5);
    v25 = (*(v23 + 80) + 72) & ~*(v23 + 80);
    v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 2) = v35[77];
    *(v28 + 3) = v29[78];
    *(v28 + 4) = a5;
    *(v28 + 5) = v29[79];
    *(v28 + 6) = v29[80];
    *(v28 + 7) = a6;
    *(v28 + 8) = v38;
    (*(v23 + 32))(&v28[v25], v24, a5);
    v30 = &v28[v26];
    v31 = v40;
    *v30 = v39;
    *(v30 + 1) = v31;
    v32 = v37;
    *&v28[v27] = v37;

    sub_1CEFD09A0(v32);
    sub_1CF92DFCC("checkIsInIgnoredHierarchy(_:request:completion:)", 48, 2, 2, nullsub_1, 0, sub_1CF550A64, v28);
  }

  return result;
}

uint64_t sub_1CF53EFD0(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5, unint64_t a6, void (*a7)(void, void), uint64_t a8)
{
  v81 = a8;
  v85 = a7;
  v65 = a6;
  v74 = a4;
  v75 = a5;
  v82 = a3;
  v10 = *a2;
  v11 = *a2;
  v79 = (*a2 + 624);
  v12 = *(v10 + 632);
  v13 = *(v10 + 616);
  v14 = (v11 + 640);
  *&v83 = swift_getAssociatedTypeWitness();
  *(&v83 + 1) = swift_getAssociatedTypeWitness();
  *&v84 = swift_getAssociatedConformanceWitness();
  *(&v84 + 1) = swift_getAssociatedConformanceWitness();
  v60 = type metadata accessor for FileItemVersion(255, &v83);
  v63 = sub_1CF9E75D8();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v60 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v70 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  v76 = v13;
  v77 = v12;
  *&v22 = v13;
  *(&v22 + 1) = *v79;
  *&v23 = v12;
  *(&v23 + 1) = *v14;
  v84 = v23;
  v83 = v22;
  v24 = type metadata accessor for ItemReconciliation(255, &v83);
  v25 = sub_1CF9E75D8();
  v66 = *(v25 - 8);
  v67 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v60 - v26;
  v79 = v24;
  v78 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v60 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v33 = __swift_project_boxed_opaque_existential_1(a1, v32);
  v64 = a2;
  v69 = *(v81 + 64);
  v69(v85);
  v34 = v73;
  sub_1CF68DDB0(v21, v33, v32, v31, v27);
  if (v34)
  {

    v35 = v21;
    v36 = AssociatedTypeWitness;
    v68 = *(v80 + 8);
    v68(v35, AssociatedTypeWitness);
    (*(v78 + 56))(v27, 1, 1, v79);
LABEL_5:
    v39 = v85;
    v73 = 0;
    (*(v66 + 8))(v27, v67);
    goto LABEL_6;
  }

  v37 = *(v80 + 8);
  v38 = v21;
  v36 = AssociatedTypeWitness;
  v37(v38, AssociatedTypeWitness);
  if ((*(v78 + 48))(v27, 1, v79) == 1)
  {
    v68 = v37;
    goto LABEL_5;
  }

  (*(v78 + 32))(v30, v27, v79);
  v59 = type metadata accessor for ItemReconciliationHalf(0, v76, v77, v58);
  v39 = v85;
  if ((v30[*(v59 + 36)] & 0x10) != 0)
  {
    v74(1, 0);
    return (*(v78 + 8))(v30, v79);
  }

  v68 = v37;
  v73 = 0;
  (*(v78 + 8))(v30, v79);
LABEL_6:
  v40 = v81;
  v41 = v71;
  v85 = *(v81 + 72);
  v85(v39, v81);
  v42 = v70;
  (v69)(v39, v40);
  v43 = v41;
  swift_getAssociatedConformanceWitness();
  v44 = v36;
  v45 = sub_1CF9E6868();
  v46 = v80 + 8;
  v47 = v42;
  v48 = v68;
  v68(v47, v44);
  v48(v43, v44);
  if (v45)
  {
    return (v74)(0, 0);
  }

  v82 = v46;
  v50 = v39;
  v51 = v64;
  v52 = *(v64[4] + 16);

  v85(v50, v40);
  v53 = v61;
  (*(*(v60 - 8) + 56))(v61, 1, 1);
  v54 = v43;
  v55 = swift_allocObject();
  v55[2] = v50;
  v55[3] = v40;
  v55[4] = v74;
  v55[5] = v75;
  v55[6] = v51;
  v56 = v65;
  v55[7] = v65;
  v57 = *(*v52 + 136);

  sub_1CEFD09A0(v56);
  v57(v54, v53, 0, 2, sub_1CF550AF4, v55);

  (*(v62 + 8))(v53, v63);
  return (v48)(v54, v44);
}

void sub_1CF53F7B0(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v22 = a5;
  v8 = *a4;
  v9 = *(*a4 + 616);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - v11;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v21 - v15);
  (*(v17 + 16))(&v21 - v15, a1, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v16;
    v19 = *v16;
    a2(v18, 1);
  }

  else if ((*(v10 + 48))(v16, 1, v9) == 1)
  {
    a2(0, 0);
  }

  else
  {
    (*(v10 + 32))(v12, v16, v9);
    v20 = sub_1CF53ECA4(v12, v22, a2, a3, v9, *(v8 + 632));
    (*(v10 + 8))(v12, v9, v20);
  }
}

uint64_t sub_1CF53FA4C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, unint64_t a4, void *a5)
{
  v57 = a4;
  v58 = a2;
  v59 = a3;
  v7 = *a5;
  v8 = *(*a5 + 632);
  v9 = *(*a5 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v54 = &v50 - v11;
  v12 = sub_1CF9E6118();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = v9;
  v50 = *(v7 + 624);
  *(&v14 + 1) = v50;
  v15 = *(v7 + 640);
  *&v16 = v8;
  *(&v16 + 1) = v15;
  v60[0] = v14;
  v60[1] = v16;
  v17 = type metadata accessor for ItemLookupResult(255, v60);
  v18 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v19 = sub_1CF9E8238();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - v22;
  (*(v20 + 16))(&v50 - v22, a1, v19, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v20 + 8))(v23, v19);
    return v58(a1);
  }

  if ((*(*(v17 - 8) + 48))(v23, 1, v17) != 1)
  {
    (*(*(v18 - 8) + 8))(v23, v18);
    return v58(a1);
  }

  v24 = fpfs_current_or_default_log();
  v25 = v51;
  sub_1CF9E6128();
  v26 = v57;
  sub_1CEFD09A0(v57);
  v27 = sub_1CF9E6108();
  v28 = sub_1CF9E7298();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v60[0] = v30;
    *v29 = 136315138;
    sub_1CEFD09A0(v26);
    v31 = sub_1CF665B0C(v26, v9, v50, v8, v15);
    v32 = v25;
    v33 = v28;
    v34 = v31;
    v36 = v35;
    sub_1CF540FDC(v26);
    sub_1CF540FDC(v26);
    v37 = sub_1CEFD0DF0(v34, v36, v60);
    v36, v38, v39, v40, v41, v42, v43, v44;
    *(v29 + 4) = v37;
    _os_log_impl(&dword_1CEFC7000, v27, v33, "Waiting for propagation of root to the FP request %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1D386CDC0](v30, -1, -1);
    MEMORY[0x1D386CDC0](v29, -1, -1);

    v45 = (*(v52 + 8))(v32, v53);
  }

  else
  {
    sub_1CF540FDC(v26);

    v45 = (*(v52 + 8))(v25, v53);
  }

  v47 = v54;
  (*(**(a5[4] + 16) + 96))(v45);
  v48 = swift_allocObject();
  v49 = v59;
  v48[2] = v58;
  v48[3] = v49;
  v48[4] = v26;
  v48[5] = a5;
  sub_1CEFD09A0(v26);

  sub_1CF52BEB4(v47, v26, sub_1CF54EABC, v48);

  return (*(v55 + 8))(v47, v56);
}

double sub_1CF53FFAC(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, unint64_t a5, void *a6)
{
  v64 = a3;
  v65 = a5;
  v62 = a2;
  v63 = a4;
  v7 = *a6;
  v8 = *(*a6 + 632);
  v9 = *(*a6 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(v7 + 640);
  v12 = *(v7 + 624);
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = AssociatedTypeWitness;
  v58 = swift_getAssociatedConformanceWitness();
  v66 = AssociatedTypeWitness;
  v67 = v13;
  v60 = AssociatedConformanceWitness;
  v68 = AssociatedConformanceWitness;
  v69 = v58;
  v61 = type metadata accessor for ReconciliationID(0, &v66);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v51[-v15];
  v66 = v9;
  v67 = v12;
  v68 = v8;
  v69 = v11;
  type metadata accessor for ItemLookupResult(255, &v66);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v16 = sub_1CF9E8238();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v51[-v18];
  v20 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v51[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v62)
  {
    v25 = v62;
    *v19 = v62;
    swift_storeEnumTagMultiPayload();
    v26 = v25;
    v64(v19);
    (*(v17 + 8))(v19, v16);
  }

  else
  {
    v28 = v24;
    v54 = v22;
    v55 = v21;
    v56 = v13;
    v62 = a6;
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFD09A0(v65);
    v30 = sub_1CF9E6108();
    v31 = sub_1CF9E7298();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v66 = v53;
      *v32 = 136315138;
      v52 = v31;
      v33 = v65;
      sub_1CEFD09A0(v65);
      v34 = sub_1CF665B0C(v33, v9, v12, v8, v11);
      v36 = v35;
      sub_1CF540FDC(v33);
      sub_1CF540FDC(v33);
      v37 = sub_1CEFD0DF0(v34, v36, &v66);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v32 + 4) = v37;
      _os_log_impl(&dword_1CEFC7000, v30, v52, "Root propagated, retry lookup request %s", v32, 0xCu);
      v45 = v53;
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1D386CDC0](v45, -1, -1);
      MEMORY[0x1D386CDC0](v32, -1, -1);
    }

    else
    {
      sub_1CF540FDC(v65);
    }

    (*(v54 + 8))(v28, v55);
    v46 = v63;
    v47 = v64;
    v48 = v59;
    v66 = v57;
    v67 = v56;
    v68 = v60;
    v69 = v58;
    type metadata accessor for FPFSID(0, &v66);
    (*(**(v62[5] + 16) + 96))();
    swift_storeEnumTagMultiPayload();
    v49 = sub_1CF554514(v48);
    v50 = sub_1CF6651BC(v65);
    sub_1CF52FB88(v49, 1, 0, v50, v47, v46);
    sub_1CF540FDC(v50);
  }

  return result;
}

uint64_t sub_1CF5404E0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v7 = 2;
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  _s14LookupBehaviorOMa(0, v6);
  swift_getWitnessTable();
  return sub_1CF9E8088() & 1;
}

unint64_t sub_1CF540564(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E7C78();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF5405B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1CF9E8088();
}

uint64_t sub_1CF540624(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1CF540690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1CF540700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1CF540770@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF540564(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1CF5407AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF09919C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1CF5407F0(uint64_t a1, int a2, int a3, unint64_t a4, void *a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v9 = v8;
  v120 = a7;
  v126 = a6;
  v114 = a5;
  v113 = a3;
  v14 = *(*v8 + 616);
  v15 = *(*v8 + 632);
  v16 = *(*v8 + 640);
  v123 = *(*v8 + 624);
  v124 = v14;
  v127[0] = v14;
  v127[1] = v123;
  v121 = v16;
  v122 = v15;
  v127[2] = v15;
  v127[3] = v16;
  type metadata accessor for ItemLookupResult(255, v127);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v17 = sub_1CF9E8238();
  v116 = *(v17 - 8);
  v117 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v108[-v18];
  v19 = sub_1CF9E6118();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v108[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v108[-v23];
  v25 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);

  v26 = sub_1CF9E6108();
  v27 = sub_1CF9E7298();
  v28 = os_log_type_enabled(v26, v27);
  v125 = v19;
  v112 = a2;
  if (v28)
  {
    v109 = v27;
    v118 = v20;
    v111 = a8;
    v29 = a2;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v127[0] = v31;
    *v30 = 136315906;
    v32 = sub_1CF554E8C(v31);
    v34 = v33;
    v110 = a1;

    v35 = sub_1CEFD0DF0(v32, v34, v127);
    v34, v36, v37, v38, v39, v40, v41, v42;
    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    if (v29)
    {
      if (v29 == 1)
      {
        v43 = 0x74616761706F7270;
      }

      else
      {
        v43 = 0xD000000000000010;
      }

      if (v29 == 1)
      {
        v44 = 0xED000053466F5465;
      }

      else
      {
        v44 = 0x80000001CFA2C3C0;
      }
    }

    else
    {
      v44 = 0x80000001CFA2C390;
      v43 = 0xD000000000000013;
    }

    v54 = sub_1CEFD0DF0(v43, v44, v127);
    v44, v55, v56, v57, v58, v59, v60, v61;
    *(v30 + 14) = v54;
    *(v30 + 22) = 2080;
    v62 = sub_1CF665B0C(a4, v124, v123, v122, v121);
    v64 = v63;
    sub_1CF540FDC(a4);
    sub_1CF540FDC(a4);
    v65 = sub_1CEFD0DF0(v62, v64, v127);
    v64, v66, v67, v68, v69, v70, v71, v72;
    *(v30 + 24) = v65;
    *(v30 + 32) = 2048;
    v73 = v126;
    *(v30 + 34) = v126;
    _os_log_impl(&dword_1CEFC7000, v26, v109, "Lookup itemID %s with behavior %s request %s iteration %ld", v30, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v31, -1, -1);
    MEMORY[0x1D386CDC0](v30, -1, -1);

    v20 = v118;
    v45 = *(v118 + 8);
    v46 = v45(v24, v125);
    a1 = v110;
    a8 = v111;
    if (v73 >= 51)
    {
      goto LABEL_15;
    }

LABEL_10:
    if (sub_1CF5551A8(v46))
    {
      sub_1CF539D9C(a4, v120, a8);
    }

    else
    {
      v47 = sub_1CF6651BC(a4);
      v48 = swift_allocObject();
      *(v48 + 16) = v120;
      *(v48 + 24) = a8;
      *(v48 + 32) = v9;
      v49 = v113;
      *(v48 + 40) = v112;
      *(v48 + 48) = a4;
      *(v48 + 56) = a1;
      v50 = v49 & 1;
      *(v48 + 64) = v49 & 1;
      v51 = v114;
      v52 = v126;
      *(v48 + 72) = v114;
      *(v48 + 80) = v52;
      sub_1CEFD09A0(a4);

      v53 = v51;
      sub_1CF52FB88(a1, 0, v50, v47, sub_1CF54E964, v48);

      sub_1CF540FDC(v47);
    }

    return;
  }

  sub_1CF540FDC(a4);
  sub_1CF540FDC(a4);

  v45 = *(v20 + 8);
  v46 = v45(v24, v19);
  if (v126 < 51)
  {
    goto LABEL_10;
  }

LABEL_15:
  v74 = fpfs_current_or_default_log();
  v75 = v119;
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);

  v76 = sub_1CF9E6108();
  v77 = sub_1CF9E72B8();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v118 = v20;
    v80 = v79;
    v127[0] = v79;
    *v78 = 136446466;
    v81 = sub_1CF554E8C(v79);
    v83 = v82;

    v84 = sub_1CEFD0DF0(v81, v83, v127);
    v83, v85, v86, v87, v88, v89, v90, v91;
    *(v78 + 4) = v84;
    *(v78 + 12) = 2082;
    v92 = sub_1CF665B0C(a4, v124, v123, v122, v121);
    v94 = v93;
    sub_1CF540FDC(a4);
    sub_1CF540FDC(a4);
    v95 = sub_1CEFD0DF0(v92, v94, v127);
    v94, v96, v97, v98, v99, v100, v101, v102;
    *(v78 + 14) = v95;
    _os_log_impl(&dword_1CEFC7000, v76, v77, "Recursion too deep for lookup of itemID %{public}s request %{public}s", v78, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v80, -1, -1);
    MEMORY[0x1D386CDC0](v78, -1, -1);

    v103 = v119;
  }

  else
  {
    sub_1CF540FDC(a4);
    sub_1CF540FDC(a4);

    v103 = v75;
  }

  v45(v103, v125);
  v104 = sub_1CF9E6888();
  v105 = FPInvalidParameterError();

  if (v105)
  {
    v106 = v115;
    *v115 = v105;
    v107 = v117;
    swift_storeEnumTagMultiPayload();
    v120(v106);
    (*(v116 + 8))(v106, v107);
  }

  else
  {
    __break(1u);
  }
}

double sub_1CF540FDC(unint64_t a1)
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

double sub_1CF541020(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, int a5, unint64_t a6, uint64_t *a7, int a8, void *a9, uint64_t a10)
{
  LODWORD(v114) = a8;
  v117 = a7;
  v118 = a6;
  LODWORD(v123) = a5;
  v14 = *a4;
  v15 = sub_1CF9E6118();
  v115 = *(v15 - 8);
  v116 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v113 = &v108 - v18;
  v19 = v14[78];
  v20 = v14[79];
  v21 = v14[80];
  v119 = v14[77];
  v120 = v19;
  v126 = v119;
  v127 = v19;
  v121 = v20;
  v122 = v21;
  v128 = v20;
  v129 = v21;
  v22 = type metadata accessor for ItemLookupResult(0, &v126);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v108 - v24;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v26 = sub_1CF9E8238();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v111 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v108 - v31;
  (*(v27 + 16))(&v108 - v31, a1, v26, v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v27 + 8))(v32, v26);
    a2(a1);
    return result;
  }

  v109 = a2;
  v110 = a3;
  if ((*(v23 + 48))(v32, 1, v22) != 1)
  {
    (*(v23 + 32))(v25, v32, v22);
    v68 = v119;
    v67 = v120;
    v70 = v121;
    v69 = v122;
    v71 = sub_1CF5404E0(v123, v119, v120, v121, v122);
    v72 = v118;
    if (sub_1CF54EF04(v25, v71 & 1, v118, v68, v67, v70, v69))
    {
      v109(a1);
      (*(v23 + 8))(v25, v22);
      return result;
    }

    (*(v23 + 8))(v25, v22);
    v74 = v117;
    v34 = v123;
    goto LABEL_16;
  }

  v34 = v123;
  v125 = v123;
  v124 = 0;
  v126 = v119;
  v127 = v120;
  v128 = v121;
  v129 = v122;
  _s14LookupBehaviorOMa(0, &v126);
  swift_getWitnessTable();
  v35 = sub_1CF9E8088();
  v36 = fpfs_current_or_default_log();
  if ((v35 & 1) == 0)
  {
    v73 = v112;
    sub_1CF9E6128();
    v72 = v118;
    sub_1CEFD09A0(v118);
    sub_1CEFD09A0(v72);
    v74 = v117;

    v75 = sub_1CF9E6108();
    v76 = sub_1CF9E7298();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v126 = v78;
      *v77 = 136315394;
      v79 = sub_1CF554E8C(v78);
      v81 = v80;

      v82 = sub_1CEFD0DF0(v79, v81, &v126);
      v83 = v81;
      v72 = v118;
      v83, v84, v85, v86, v87, v88, v89, v90;
      *(v77 + 4) = v82;
      *(v77 + 12) = 2080;
      v91 = sub_1CF665B0C(v72, v119, v120, v121, v122);
      v93 = v92;
      sub_1CF540FDC(v72);
      sub_1CF540FDC(v72);
      v94 = sub_1CEFD0DF0(v91, v93, &v126);
      v93, v95, v96, v97, v98, v99, v100, v101;
      *(v77 + 14) = v94;
      _os_log_impl(&dword_1CEFC7000, v75, v76, "Item cannot be found on disk, looking for parent for %s request %s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v78, -1, -1);
      v102 = v77;
      v74 = v117;
      MEMORY[0x1D386CDC0](v102, -1, -1);
    }

    else
    {
      sub_1CF540FDC(v72);
      sub_1CF540FDC(v72);
    }

    (*(v115 + 8))(v73, v116);
LABEL_16:
    v105 = swift_allocObject();
    v106 = v110;
    *(v105 + 16) = v109;
    *(v105 + 24) = v106;
    *(v105 + 32) = v74;
    *(v105 + 40) = a4;
    *(v105 + 48) = v34;
    *(v105 + 49) = v114 & 1;
    *(v105 + 56) = v72;
    *(v105 + 64) = a9;
    *(v105 + 72) = a10;
    sub_1CEFD09A0(v72);

    v107 = a9;
    sub_1CF52D66C(v74, sub_1CF54EEC8, v105);

    return result;
  }

  v123 = v23;
  v37 = v113;
  sub_1CF9E6128();
  v38 = v118;
  sub_1CEFD09A0(v118);
  sub_1CEFD09A0(v38);

  v39 = sub_1CF9E6108();
  v40 = sub_1CF9E7298();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v114 = v39;
    v42 = v41;
    v43 = swift_slowAlloc();
    v126 = v43;
    *v42 = 136315394;
    v44 = sub_1CF554E8C(v43);
    v46 = v45;

    v47 = sub_1CEFD0DF0(v44, v46, &v126);
    v46, v48, v49, v50, v51, v52, v53, v54;
    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    v55 = sub_1CF665B0C(v38, v119, v120, v121, v122);
    v57 = v56;
    sub_1CF540FDC(v38);
    sub_1CF540FDC(v38);
    v58 = sub_1CEFD0DF0(v55, v57, &v126);
    v57, v59, v60, v61, v62, v63, v64, v65;
    *(v42 + 14) = v58;
    v66 = v114;
    _os_log_impl(&dword_1CEFC7000, v114, v40, "Item cannot be found on disk, only looking for existing item %s, request %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v43, -1, -1);
    MEMORY[0x1D386CDC0](v42, -1, -1);

    (*(v115 + 8))(v113, v116);
  }

  else
  {
    sub_1CF540FDC(v38);
    sub_1CF540FDC(v38);

    (*(v115 + 8))(v37, v116);
  }

  v103 = v109;
  v104 = v111;
  (*(v123 + 56))(v111, 1, 1, v22);
  swift_storeEnumTagMultiPayload();
  v103(v104);
  (*(v27 + 8))(v104, v26);
  return result;
}

uint64_t sub_1CF5418DC(char *a1, void (*a2)(char *), uint64_t a3, uint64_t *a4, void *a5, int a6, int a7, unint64_t a8, char *a9, uint64_t a10)
{
  v85 = a8;
  v83 = a7;
  v84 = a6;
  v96 = a3;
  v97 = a2;
  v98 = a1;
  v11 = *a5;
  v12 = *(*a4 + 80);
  v13 = *(*a4 + 88);
  v14 = *a4;
  v15 = *(*a4 + 96);
  v95 = a4;
  v16 = *(v14 + 104);
  v78 = v12;
  v99 = v12;
  v100 = v13;
  v77 = v15;
  v101 = v15;
  v102 = v16;
  v76 = v16;
  v79 = type metadata accessor for ReconciliationID(0, &v99);
  MEMORY[0x1EEE9AC00](v79);
  v75 = &v71 - v17;
  v18 = sub_1CF9E75D8();
  v90 = *(v18 - 8);
  v91 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v71 - v19;
  v92 = v13;
  v93 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v74 = &v71 - v21;
  v22 = v11[77];
  v23 = v11[78];
  v24 = v11[79];
  v82 = a5;
  v25 = v11[80];
  v99 = v22;
  v100 = v23;
  v101 = v24;
  v102 = v25;
  v26 = _s20ParentIDLookupResultVMa(0, &v99);
  v94 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v81 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v71 - v29);
  v99 = v22;
  v100 = v23;
  v101 = v24;
  v102 = v25;
  type metadata accessor for ItemLookupResult(255, &v99);
  v31 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v88 = v31;
  v32 = sub_1CF9E8238();
  v86 = *(v32 - 8);
  v87 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v71 - v33;
  v35 = sub_1CF9E8238();
  v36 = *(v35 - 1);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v71 - v38;
  (*(v36 + 16))(&v71 - v38, v98, v35, v37);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = (*(v36 + 8))(v39, v35);
    MEMORY[0x1EEE9AC00](v40);
    *(&v71 - 4) = v22;
    *(&v71 - 3) = v23;
    *(&v71 - 2) = v24;
    *(&v71 - 1) = v25;
    sub_1CF52CCD8(sub_1CF54FB28, v35, v34);
    v97(v34);
    return (*(v86 + 8))(v34, v87);
  }

  else
  {
    v86 = v25;
    v87 = v24;
    v98 = v23;
    v88 = v22;
    v42 = a10;
    v43 = v94;
    v44 = *(v94 + 32);
    v73 = v94 + 32;
    v72 = v44;
    v44(v30, v39, v26);
    v46 = v89;
    v45 = v90;
    v47 = v91;
    (*(v90 + 16))(v89, v30 + *(v26 + 52), v91);
    v48 = v92;
    if ((*(v93 + 48))(v46, 1, v92) == 1)
    {
      (*(v45 + 8))(v46, v47);
    }

    else
    {
      v49 = *(v93 + 32);
      v50 = v74;
      v49(v74, v46, v48);
      v99 = v78;
      v100 = v48;
      v101 = v77;
      v102 = v76;
      type metadata accessor for FPFSID(0, &v99);
      v51 = v75;
      v52 = v50;
      v42 = a10;
      v49(v75, v52, v48);
      swift_storeEnumTagMultiPayload();
      result = sub_1CF554514(v51);
      v95 = result;
    }

    v54 = v97;
    v53 = v98;
    v55 = v88;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
    }

    else
    {
      v92 = a9;
      v93 = v42 + 1;
      v97 = *v30;
      v56 = v81;
      (*(v43 + 16))(v81, v30, v26);
      v57 = *(v43 + 80);
      v91 = v26;
      v98 = v30;
      v58 = (v57 + 97) & ~v57;
      v59 = (v80 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      *(v60 + 16) = v55;
      *(v60 + 24) = v53;
      v61 = v86;
      *(v60 + 32) = v87;
      *(v60 + 40) = v61;
      v63 = v95;
      v62 = v96;
      *(v60 + 48) = v54;
      *(v60 + 56) = v62;
      LOBYTE(v61) = v83;
      v64 = v84;
      *(v60 + 64) = v84;
      v65 = v85;
      *(v60 + 72) = v63;
      *(v60 + 80) = v65;
      *(v60 + 88) = v82;
      v66 = v61 & 1;
      *(v60 + 96) = v61 & 1;
      v67 = v56;
      v68 = v91;
      v72(v60 + v58, v67, v91);
      v69 = v92;
      *(v60 + v59) = v92;

      sub_1CEFD09A0(v65);

      v70 = v69;
      sub_1CF5407F0(v97, v64, v66, v65, v70, v93, sub_1CF54FA6C, v60);

      return (*(v94 + 8))(v98, v68);
    }
  }

  return result;
}

char *sub_1CF5420D4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, int a4, void *a5, unint64_t a6, void *a7, int a8, uint64_t a9, char *a10)
{
  v275 = a8;
  v284 = a6;
  v285 = a4;
  v293 = a2;
  v294 = a3;
  v13 = *a5;
  v14 = *a7;
  v270 = sub_1CF9E6448();
  v269 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270);
  v268 = &v252 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = a5;
  v16 = *(v13 + 80);
  v272 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v267 = &v252 - v18;
  v19 = v14[77];
  v20 = v14[78];
  v21 = v14[79];
  v276 = a7;
  v22 = v14[80];
  v295 = v19;
  v296 = v20;
  v297 = v21;
  v298 = v22;
  v271 = _s20ParentIDLookupResultVMa(0, &v295);
  v279 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v262 = &v252 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v261 = &v252 - v25;
  v26 = sub_1CF9E6118();
  v282 = *(v26 - 8);
  v283 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v264 = &v252 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v263 = &v252 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v274 = &v252 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v280 = &v252 - v33;
  v273 = v16;
  v260 = sub_1CF9E75D8();
  v259 = *(v260 - 1);
  MEMORY[0x1EEE9AC00](v260);
  v258 = &v252 - v34;
  v35 = sub_1CF9E75D8();
  v277 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v252 - v36;
  v289 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v266 = &v252 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = v39;
  MEMORY[0x1EEE9AC00](v40);
  v286 = v20;
  v287 = &v252 - v41;
  v290 = v19;
  v291 = v21;
  v295 = v19;
  v296 = v20;
  v297 = v21;
  v298 = v22;
  v288 = v22;
  v42 = type metadata accessor for ItemLookupResult(0, &v295);
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v252 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v278 = &v252 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v292 = &v252 - v49;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v50 = sub_1CF9E8238();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v252 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = &v252 - v56;
  (*(v51 + 16))(&v252 - v56, a1, v50, v55);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v51 + 8))(v57, v50);
    return v293(a1);
  }

  if ((*(v43 + 48))(v57, 1, v42) == 1)
  {
    return v293(a1);
  }

  v256 = v45;
  v59 = v292;
  (*(v43 + 32))(v292, v57, v42);
  sub_1CF52D0F8(v42, v37);
  v61 = v289;
  v60 = v290;
  if ((*(v289 + 48))(v37, 1, v290) == 1)
  {
    (*(v277 + 8))(v37, v35);
    (*(v43 + 56))(v53, 1, 1, v42);
    swift_storeEnumTagMultiPayload();
    v293(v53);
    (*(v51 + 8))(v53, v50);
    return (*(v43 + 8))(v59, v42);
  }

  v257 = v43;
  v62 = *(v61 + 32);
  v254 = v61 + 32;
  v253 = v62;
  v62(v287, v37, v60);
  v63 = sub_1CF5404E0(v285, v60, v286, v291, v288);
  v277 = v42;
  if (v63)
  {
    v255 = 1;
    v64 = v257;
    v65 = v292;
    v66 = v280;
    v67 = v278;
  }

  else
  {
    v65 = v292;
    v64 = v257;
    v67 = v278;
    if (v292[*(v42 + 60)] == 1)
    {
      v68 = v258;
      sub_1CF5559E4(v258);
      v255 = (*(v272 + 48))(v68, 1, v273) == 1;
      (*(v259 + 8))(v68, v260);
    }

    else
    {
      v255 = 1;
    }

    v66 = v280;
  }

  v69 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v70 = *(v64 + 16);
  v71 = v277;
  v70(v67, v65, v277);
  v72 = v284;
  sub_1CEFD09A0(v284);
  sub_1CEFD09A0(v72);
  v73 = sub_1CF9E6108();
  v74 = sub_1CF9E7298();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v260 = swift_slowAlloc();
    v295 = v260;
    *v75 = 136315906;
    v76 = v256;
    v70(v256, v67, v71);
    v77 = *(v64 + 8);
    v77(v67, v71);
    v78 = sub_1CF52D1B4(v71);
    v80 = v79;
    v278 = v77;
    v77(v76, v71);
    v81 = sub_1CEFD0DF0(v78, v80, &v295);
    v80, v82, v83, v84, v85, v86, v87, v88;
    *(v75 + 4) = v81;
    *(v75 + 12) = 2080;
    if (v285)
    {
      if (v285 == 1)
      {
        v89 = 0x74616761706F7270;
      }

      else
      {
        v89 = 0xD000000000000010;
      }

      if (v285 == 1)
      {
        v90 = 0xED000053466F5465;
      }

      else
      {
        v90 = 0x80000001CFA2C3C0;
      }
    }

    else
    {
      v90 = 0x80000001CFA2C390;
      v89 = 0xD000000000000013;
    }

    v93 = v284;
    v94 = v291;
    v96 = v255;
    v97 = sub_1CEFD0DF0(v89, v90, &v295);
    v90, v98, v99, v100, v101, v102, v103, v104;
    *(v75 + 14) = v97;
    *(v75 + 22) = 1024;
    *(v75 + 24) = v96;
    *(v75 + 28) = 2080;
    v105 = v290;
    v106 = sub_1CF665B0C(v93, v290, v286, v94, v288);
    v108 = v107;
    sub_1CF540FDC(v93);
    sub_1CF540FDC(v93);
    v109 = sub_1CEFD0DF0(v106, v108, &v295);
    v108, v110, v111, v112, v113, v114, v115, v116;
    *(v75 + 30) = v109;
    _os_log_impl(&dword_1CEFC7000, v73, v74, "Found parent %s, behavior: %s, shouldReconcile: %{BOOL}d request %s", v75, 0x26u);
    v117 = v260;
    swift_arrayDestroy();
    v95 = v105;
    MEMORY[0x1D386CDC0](v117, -1, -1);
    MEMORY[0x1D386CDC0](v75, -1, -1);

    v92 = *(v282 + 8);
    v92(v280, v283);
  }

  else
  {
    v91 = sub_1CF540FDC(v72);
    v278 = *(v64 + 8);
    (v278)(v67, v71, v91);
    sub_1CF540FDC(v72);

    v92 = *(v282 + 8);
    v92(v66, v283);
    v93 = v72;
    v95 = v290;
    v94 = v291;
    v96 = v255;
  }

  if (((sub_1CF937C7C(v95, v94) | v96) & 1) == 0)
  {
    v160 = fpfs_current_or_default_log();
    v161 = v274;
    sub_1CF9E6128();
    sub_1CEFD09A0(v93);
    sub_1CEFD09A0(v93);

    v162 = sub_1CF9E6108();
    v163 = sub_1CF9E7298();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v280 = v165;
      v295 = v165;
      *v164 = 136315394;
      v166 = sub_1CF554E8C(v165);
      v168 = v167;

      v169 = sub_1CEFD0DF0(v166, v168, &v295);
      v168, v170, v171, v172, v173, v174, v175, v176;
      *(v164 + 4) = v169;
      *(v164 + 12) = 2080;
      v177 = v93;
      v178 = v95;
      v179 = v286;
      v260 = v92;
      v180 = v93;
      v181 = v95;
      v182 = v291;
      v183 = v288;
      v184 = sub_1CF665B0C(v177, v178, v286, v291, v288);
      v186 = v185;
      sub_1CF540FDC(v180);
      sub_1CF540FDC(v180);
      v187 = sub_1CEFD0DF0(v184, v186, &v295);
      v186, v188, v189, v190, v191, v192, v193, v194;
      *(v164 + 14) = v187;
      _os_log_impl(&dword_1CEFC7000, v162, v163, "Parent item is not dataless, lookup and propagate %s request %s", v164, 0x16u);
      v195 = v280;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v195, -1, -1);
      MEMORY[0x1D386CDC0](v164, -1, -1);

      (v260)(v274, v283);
      v196 = v277;
    }

    else
    {
      sub_1CF540FDC(v93);
      sub_1CF540FDC(v93);

      v92(v161, v283);
      v196 = v277;
      v179 = v286;
      v180 = v93;
      v181 = v95;
      v182 = v291;
      v183 = v288;
    }

    v230 = sub_1CF5404E0(v285, v181, v179, v182, v183);
    v231 = sub_1CF6651BC(v180);
    sub_1CF532AE0(v281, 1, v230 & 1, v275 & 1, v231, v293, v294);
    v232 = sub_1CF540FDC(v231);
    (*(v289 + 8))(v287, v181, v232);
    v233 = v292;
    v234 = v196;
    return (v278)(v233, v234);
  }

  v118 = a10;
  v119 = sub_1CF937C7C(v95, v94);
  v120 = fpfs_current_or_default_log();
  v121 = (v279 + 16);
  v280 = a10;
  if (v119)
  {
    v122 = v263;
    sub_1CF9E6128();
    v123 = v261;
    v124 = v271;
    (*v121)(v261, a9, v271);
    sub_1CEFD09A0(v93);
    sub_1CEFD09A0(v93);
    v125 = sub_1CF9E6108();
    v126 = sub_1CF9E7298();
    v127 = os_log_type_enabled(v125, v126);
    v128 = v288;
    if (v127)
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v260 = v92;
      v131 = v124;
      v274 = v130;
      v295 = v130;
      *v129 = 136315394;
      v132 = *(v279 + 8);

      v133 = v132(v123, v131);
      v134 = sub_1CF554E8C(v133);
      v136 = v135;

      v137 = sub_1CEFD0DF0(v134, v136, &v295);
      v138 = v284;
      v136, v139, v140, v141, v142, v143, v144, v145;
      *(v129 + 4) = v137;
      *(v129 + 12) = 2080;
      v146 = sub_1CF665B0C(v138, v95, v286, v291, v128);
      v148 = v147;
      sub_1CF540FDC(v138);
      sub_1CF540FDC(v138);
      v149 = sub_1CEFD0DF0(v146, v148, &v295);
      v148, v150, v151, v152, v153, v154, v155, v156;
      *(v129 + 14) = v149;
      _os_log_impl(&dword_1CEFC7000, v125, v126, "Parent item is dataless, materializing %s request %s", v129, 0x16u);
      v157 = v274;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v157, -1, -1);
      v158 = v129;
      v118 = v280;
      MEMORY[0x1D386CDC0](v158, -1, -1);

      v159 = &v295;
LABEL_32:
      (v260)(*(v159 - 32), v283);
      goto LABEL_36;
    }
  }

  else
  {
    v122 = v264;
    sub_1CF9E6128();
    v123 = v262;
    v124 = v271;
    (*v121)(v262, a9, v271);
    sub_1CEFD09A0(v93);
    sub_1CEFD09A0(v93);
    v125 = sub_1CF9E6108();
    v197 = sub_1CF9E7298();
    v198 = os_log_type_enabled(v125, v197);
    v199 = v288;
    if (v198)
    {
      v200 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      v260 = v92;
      v202 = v124;
      v274 = v201;
      v295 = v201;
      *v200 = 136315394;
      v203 = *(v279 + 8);

      v204 = v203(v123, v202);
      v205 = sub_1CF554E8C(v204);
      v207 = v206;

      v208 = sub_1CEFD0DF0(v205, v207, &v295);
      v209 = v284;
      v207, v210, v211, v212, v213, v214, v215, v216;
      *(v200 + 4) = v208;
      *(v200 + 12) = 2080;
      v217 = sub_1CF665B0C(v209, v95, v286, v291, v199);
      v219 = v218;
      sub_1CF540FDC(v209);
      sub_1CF540FDC(v209);
      v220 = sub_1CEFD0DF0(v217, v219, &v295);
      v219, v221, v222, v223, v224, v225, v226, v227;
      *(v200 + 14) = v220;
      _os_log_impl(&dword_1CEFC7000, v125, v197, "Parent item must be imported, materializing %s request %s", v200, 0x16u);
      v228 = v274;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v228, -1, -1);
      v229 = v200;
      v118 = v280;
      MEMORY[0x1D386CDC0](v229, -1, -1);

      v159 = &v296;
      goto LABEL_32;
    }
  }

  v235 = sub_1CF540FDC(v93);
  (*(v279 + 8))(v123, v124, v235);
  sub_1CF540FDC(v93);

  v92(v122, v283);
LABEL_36:
  v236 = v289;
  result = [v118 totalUnitCount];
  if (!__OFADD__(result, 1))
  {
    [v118 setTotalUnitCount_];
    v237 = v291;
    v238 = v267;
    v239 = v287;
    v240 = v95;
    (*(v291 + 64))(v95, v291);
    v241 = v266;
    (*(v236 + 16))(v266, v239, v95);
    v242 = (*(v236 + 80) + 80) & ~*(v236 + 80);
    v243 = (v265 + v242 + 7) & 0xFFFFFFFFFFFFFFF8;
    v244 = swift_allocObject();
    v245 = v286;
    *(v244 + 2) = v95;
    *(v244 + 3) = v245;
    v246 = v288;
    *(v244 + 4) = v237;
    *(v244 + 5) = v246;
    v247 = v294;
    *(v244 + 6) = v293;
    *(v244 + 7) = v247;
    v248 = v284;
    *(v244 + 8) = v281;
    *(v244 + 9) = v248;
    v253(&v244[v242], v241, v240);
    v249 = &v244[v243];
    *v249 = v276;
    v249[8] = v275 & 1;
    v249[9] = v285;
    sub_1CEFD09A0(v248);

    v250 = v268;
    sub_1CF5347DC();
    v251 = sub_1CF53499C(v238, v248, 1, v250, sub_1CF54FB9C, v244);

    (*(v269 + 8))(v250, v270);
    (*(v272 + 8))(v238, v273);
    [v280 addChild:v251 withPendingUnitCount:1];

    (*(v236 + 8))(v287, v240);
    v233 = v292;
    v234 = v277;
    return (v278)(v233, v234);
  }

  __break(1u);
  return result;
}

double sub_1CF5436E8(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, int a8, char a9)
{
  v68 = a8;
  v71 = a6;
  v72 = a4;
  v73 = a5;
  v75 = a2;
  v76 = a3;
  v11 = *a7;
  v12 = sub_1CF9E6118();
  v69 = *(v12 - 8);
  v70 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v74 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v11[77];
  v15 = v11[78];
  v16 = v11[79];
  v17 = v11[80];
  v77[0] = v14;
  v77[1] = v15;
  v77[2] = v16;
  v77[3] = v17;
  type metadata accessor for ItemLookupResult(255, v77);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v18 = sub_1CF9E8238();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (v64 - v20);
  if (a1)
  {
    *v21 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v75(v21);
    (*(v19 + 8))(v21, v18);
  }

  else
  {
    v64[1] = a7;
    v65 = v14;
    v66 = v17;
    v67 = v15;
    v24 = v16;
    v25 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v26 = v73;
    sub_1CEFD09A0(v73);
    sub_1CEFD09A0(v26);
    v27 = v72;

    v28 = sub_1CF9E6108();
    v29 = sub_1CF9E7298();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v77[0] = v31;
      *v30 = 136315394;
      v32 = sub_1CF554E8C(v31);
      v34 = v33;

      v35 = sub_1CEFD0DF0(v32, v34, v77);
      v34, v36, v37, v38, v39, v40, v41, v42;
      *(v30 + 4) = v35;
      *(v30 + 12) = 2080;
      v43 = v65;
      v44 = sub_1CF665B0C(v26, v65, v67, v24, v66);
      v46 = v45;
      sub_1CF540FDC(v26);
      sub_1CF540FDC(v26);
      v47 = sub_1CEFD0DF0(v44, v46, v77);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v30 + 14) = v47;
      _os_log_impl(&dword_1CEFC7000, v28, v29, "Parent is materialized, lookup %s again request %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v31, -1, -1);
      MEMORY[0x1D386CDC0](v30, -1, -1);

      (*(v69 + 8))(v74, v70);
      v56 = v75;
      v55 = v76;
      v57 = v68;
    }

    else
    {
      sub_1CF540FDC(v26);
      sub_1CF540FDC(v26);

      (*(v69 + 8))(v74, v70);
      v56 = v75;
      v55 = v76;
      v57 = v68;
      v43 = v65;
    }

    *(v27 + *(*v27 + 128)) = 0;
    if (sub_1CF937C7C(v43, v24))
    {
      v58 = sub_1CF6651BC(v73);
      sub_1CF52FB88(v27, 1, v57 & 1, v58, v56, v55);
      v59 = v58;
    }

    else
    {
      v60 = sub_1CF5404E0(a9, v43, v67, v24, v66);
      v61 = sub_1CF6651BC(v73);
      v62 = v55;
      v63 = v61;
      sub_1CF532AE0(v27, 1, v60 & 1, v57 & 1, v61, v56, v62);
      v59 = v63;
    }

    return sub_1CF540FDC(v59);
  }

  return result;
}

uint64_t sub_1CF543BDC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a3;
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a4;
  v26[0] = a5;
  v26[1] = a6;
  v26[2] = a7;
  v26[3] = a8;
  type metadata accessor for ItemLookupResult(255, v26);
  sub_1CF9E75D8();
  v17 = sub_1CF9E8238();
  sub_1CF52CEEC(sub_1CF550170, v17, v16);
  v20(v16);
  return (*(v14 + 8))(v16, v13);
}

void sub_1CF543D70(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v91 = a2;
  v92 = a7;
  v12 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5268();
  v87 = *(v14 - 8);
  v88 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1CF9E6118();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1CF550180();
  v83 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v78 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v79 = &v65 - v19;
  v94[0] = a3;
  v94[1] = a4;
  v74 = a5;
  v94[2] = a5;
  v94[3] = a6;
  v20 = type metadata accessor for ItemLookupResult(255, v94);
  v21 = sub_1CF9E75D8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v65 - v25;
  v27 = sub_1CF9E75D8();
  v89 = *(v27 - 8);
  v90 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v93 = a3;
  v30 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v69 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v71 = &v65 - v34;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v65 - v37;
  v39 = *(v22 + 16);
  v84 = a1;
  v76 = v39;
  (v39)(v26, a1, v21, v36);
  v40 = *(v20 - 8);
  v75 = *(v40 + 48);
  v41 = v75(v26, 1, v20);
  v82 = v21;
  v70 = v22;
  v68 = v40;
  v77 = v20;
  if (v41 == 1)
  {
    (*(v22 + 8))(v26, v21);
    v42 = v93;
    (*(v30 + 56))(v29, 1, 1);
  }

  else
  {
    sub_1CF52D0F8(v20, v29);
    (*(v40 + 8))(v26, v20);
    v42 = v93;
    if ((*(v30 + 48))(v29, 1) != 1)
    {
      v49 = *(v30 + 32);
      v49(v38, v29, v42);
      v49(v92, v38, v42);
      goto LABEL_15;
    }
  }

  (*(v89 + 8))(v29, v90);
  if (((v91 >> 58) & 0x3C | (v91 >> 1) & 3) != 3)
  {
LABEL_17:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00E8B4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v62 = v85;
    v63 = v88;
    sub_1CF9E57D8();
    v64 = sub_1CF9E50D8();
    (*(v87 + 8))(v62, v63);
    *v92 = v64;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E8238();
    goto LABEL_18;
  }

  v43 = swift_projectBox();
  v44 = v79;
  v45 = TupleTypeMetadata2;
  (*(v78 + 16))(v79, v43, TupleTypeMetadata2);

  (*(*(v83 - 8) + 8))(v44);
  v46 = v80;
  v47 = v82;
  v76(v80, v84, v82);
  v48 = v77;
  if (v75(v46, 1, v77) == 1)
  {
    (*(v70 + 8))(v46, v47);
    goto LABEL_17;
  }

  v50 = v69;
  (*(v30 + 16))(v69, v46, v42);
  (*(v68 + 8))(v46, v48);
  v51 = v30;
  v52 = *(v30 + 32);
  v53 = v71;
  v52(v71, v50, v42);
  v54 = v73;
  (*(v74 + 104))(v42);
  sub_1CF9E5C98();
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v55 < 9.22337204e18)
  {
    v56 = v51;
    is_busy_date = fpfs_is_busy_date();
    sub_1CF007C58(v54, type metadata accessor for ItemMetadata);
    if (!is_busy_date)
    {
      (*(v56 + 8))(v53, v42);
      goto LABEL_17;
    }

    v58 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v59 = sub_1CF9E6108();
    v60 = sub_1CF9E7298();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1CEFC7000, v59, v60, "🏗 Forcing busy item return for URL resolution", v61, 2u);
      MEMORY[0x1D386CDC0](v61, -1, -1);
    }

    (*(v65 + 8))(v67, v66);
    v52(v92, v53, v42);
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E8238();
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1CF5447C4(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  LODWORD(v99) = a4;
  v98 = a3;
  v4 = sub_1CF9E63D8();
  v97 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v96 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v103 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v90 - v9;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v90 - v18;
  v20 = type metadata accessor for Signpost(0);
  v100 = *(v20 - 8);
  v21 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v101 = (&v90 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v105 = &v90 - v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      v90 = v4;
      v30 = swift_allocObject();
      v31 = v98;
      *(v30 + 16) = v27;
      *(v30 + 24) = v31;
      *(v30 + 32) = v99;
      v99 = v30;
      *(v30 + 40) = v29;
      v104 = v27;

      v98 = v29;
      v95 = fpfs_adopt_log();
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v32 = qword_1EDEBBE40;
      (*(v11 + 56))(v19, 1, 1, v10);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v33 = sub_1CF9E7988();
      v35 = v34;
      MEMORY[0x1D3868CC0](v33);
      v35, v36, v37, v38, v39, v40, v41, v42;
      v93 = *(&aBlock + 1);
      v94 = aBlock;
      sub_1CEFCCBDC(v19, v16, &unk_1EC4BED20, &unk_1CFA00700);
      v43 = *(v11 + 48);
      if (v43(v16, 1, v10) == 1)
      {
        v44 = v32;
        sub_1CF9E6048();
        v45 = v13;
        if (v43(v16, 1, v10) != 1)
        {
          sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (*(v11 + 32))(v13, v16, v10);
        v45 = v13;
      }

      v46 = v105;
      (*(v11 + 16))(v105, v45, v10);
      *(v46 + *(v20 + 20)) = v32;
      v47 = v46 + *(v20 + 24);
      *v47 = "DB queue wait";
      *(v47 + 8) = 13;
      *(v47 + 16) = 2;
      v48 = v32;
      v49 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1CF9FA450;
      *(v50 + 56) = MEMORY[0x1E69E6158];
      *(v50 + 64) = sub_1CEFD51C4();
      v51 = v93;
      *(v50 + 32) = v94;
      *(v50 + 40) = v51;
      sub_1CF9E6028(v49, &dword_1CEFC7000, v48, "DB queue wait", 13, 2, v46, "%s", 2);
      v50, v52, v53, v54, v55, v56, v57, v58;
      (*(v11 + 8))(v45, v10);
      sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
      v93 = *(v104 + 168);
      v94 = *(v104 + 64);
      v91 = sub_1CF9E6448();
      v92 = *(v91 - 8);
      (*(v92 + 56))(v106, 1, 1, v91);
      v59 = v101;
      sub_1CEFE4F8C(v46, v101, type metadata accessor for Signpost);
      v60 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v61 = (v21 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      sub_1CEFE4D98(v59, v62 + v60, type metadata accessor for Signpost);
      v63 = (v62 + v61);
      v101 = nullsub_1;
      *v63 = nullsub_1;
      v63[1] = 0;
      v64 = v102;
      sub_1CEFE4F8C(v46, v102, type metadata accessor for Signpost);
      v65 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
      v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
      v67 = (v66 + 25) & 0xFFFFFFFFFFFFFFF8;
      v100 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
      v68 = v104;
      v69 = swift_allocObject();
      sub_1CEFE4D98(v64, v69 + v60, type metadata accessor for Signpost);
      v70 = (v69 + v61);
      *v70 = sub_1CF045408;
      v70[1] = 0;
      *(v69 + v65) = v68;
      v71 = v69 + v66;
      *v71 = "evict(_:request:qos:evictionReason:completion:)";
      *(v71 + 8) = 47;
      *(v71 + 16) = 2;
      v72 = (v69 + v67);
      v73 = v92;
      *v72 = v101;
      v72[1] = 0;
      v74 = v69;
      v75 = (v69 + v100);
      v76 = v91;
      v77 = v99;
      *v75 = sub_1CF552D20;
      v75[1] = v77;
      v78 = swift_allocObject();
      v78[2] = sub_1CF554408;
      v78[3] = v62;
      v79 = v93;
      v78[4] = v93;

      v80 = fpfs_current_log();
      v102 = *(v79 + 16);
      v81 = v103;
      sub_1CEFCCBDC(v106, v103, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v73 + 48))(v81, 1, v76) == 1)
      {
        sub_1CEFCCC44(v81, &unk_1EC4BE370, qword_1CFA01B30);
        v82 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v83 = v96;
        sub_1CF9E6438();
        (*(v73 + 8))(v81, v76);
        v82 = sub_1CF9E63C8();
        (*(v97 + 8))(v83, v90);
      }

      v84 = swift_allocObject();
      v84[2] = v80;
      v84[3] = sub_1CF4858EC;
      v84[4] = v74;
      v110 = sub_1CF2BA17C;
      v111 = v84;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v108 = sub_1CEFCA444;
      v109 = &block_descriptor_388_0;
      v85 = _Block_copy(&aBlock);
      v86 = v80;

      v110 = sub_1CF2BA180;
      v111 = v78;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v108 = sub_1CEFCA444;
      v109 = &block_descriptor_391;
      v87 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v102, v94, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v82, v85, v87);
      _Block_release(v87);
      _Block_release(v85);

      sub_1CEFCCC44(v106, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CF007C58(v105, type metadata accessor for Signpost);
      v88 = v95;
      v89 = fpfs_adopt_log();
    }

    else
    {
    }
  }
}

void sub_1CF545334(void *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, char a6, unint64_t a7, void *a8, uint64_t a9, char a10)
{
  v89 = a4;
  v85 = a8;
  v86 = a7;
  v87 = a1;
  v88 = a3;
  v13 = sub_1CF9E5CF8();
  v83 = *(v13 - 8);
  v84 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E53C8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a5;
  v94 = a6;
  v23 = objc_sync_enter(a2);
  if (v23)
  {
LABEL_16:
    MEMORY[0x1EEE9AC00](v23);
    v81 = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, &v80, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v24 = *(a2 + qword_1EDEADAA8);
  v25 = objc_sync_exit(a2);
  if (v25)
  {
    MEMORY[0x1EEE9AC00](v25);
    v81 = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, &v80, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v24)
  {
    v91 = 35;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00E8B4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    v26 = sub_1CF9E53A8();
    (*(v20 + 8))(v22, v19);
    v88(v26);

    return;
  }

  v27 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v28 = sub_1CF9E7298();
  v29 = sub_1CF19C010(v28, "eviction waiter", 15, 2, v88, v89);
  v31 = v30;
  (*(v16 + 8))(v18, v15);
  v32 = v87;
  v33 = v87[3];
  v34 = v87[4];
  v35 = __swift_project_boxed_opaque_existential_1(v87, v33);
  v36 = v86;
  if (sub_1CF5AD73C(&v93, v86, v85, a9, v35, v29, v31, v33, *(v34 + 8)) != 1)
  {

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
  inited = swift_initStackObject();
  v38 = MEMORY[0x1E69E7CC0];
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  *(inited + 24) = v38;
  *(inited + 32) = v38;
  *(inited + 40) = v38;
  *(inited + 48) = 0;
  v39 = v32[3];
  v40 = v32[4];
  v41 = __swift_project_boxed_opaque_existential_1(v32, v39);
  LOBYTE(v91) = 4;
  v42 = sub_1CF9042A4(v36);
  v92 = a10;
  v43 = v90;
  sub_1CF5673DC(&v93, &v91, v42, v44, 0x800000, a2, &v92, inited, v41, v39, *(v40 + 8));
  if (v43)
  {

    return;
  }

  v45 = v32[3];
  v46 = v32[4];
  v47 = __swift_project_boxed_opaque_existential_1(v32, v45);
  v48 = v82;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v50 = v49;
  v23 = (*(v83 + 8))(v48, v84);
  v51 = v50 * 1000000000.0;
  if (COERCE__INT64(fabs(v50 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v51 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v51 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1CF521850(inited, v51, v47, v45, v46);

  swift_setDeallocating();
  *(inited + 16), v52, v53, v54, v55, v56, v57, v58;
  *(inited + 24), v59, v60, v61, v62, v63, v64, v65;
  *(inited + 32), v66, v67, v68, v69, v70, v71, v72;
  *(inited + 40), v73, v74, v75, v76, v77, v78, v79;
}

void sub_1CF545900(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, unint64_t a5, int a6, void *a7)
{
  v703 = a7;
  LODWORD(v700) = a6;
  v705 = a5;
  v707 = a4;
  v711 = a3;
  v710 = a2;
  v709 = a1;
  v8 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v636 = &v615 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5268();
  v637 = *(v10 - 8);
  v638 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v635 = &v615 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E63A8();
  v643 = *(v12 - 8);
  v644 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v642 = &v615 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6118();
  v664 = *(v14 - 8);
  v665 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v663 = &v615 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v626 = &v615 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v646 = &v615 - v19;
  v699 = sub_1CF9E6448();
  v698 = *(v699 - 8);
  MEMORY[0x1EEE9AC00](v699);
  v641 = &v615 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v628 = &v615 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v640 = &v615 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v648 = &v615 - v26;
  v653 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v667 = &v615 - v29;
  v30 = sub_1CF9E63D8();
  v677 = *(v30 - 8);
  v678 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v625 = &v615 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v645 = &v615 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v668 = &v615 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v632 = &v615 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v639 = &v615 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v662 = &v615 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v679 = &v615 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v652 = &v615 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v666 = &v615 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v675 = &v615 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v691 = (&v615 - v51);
  v685 = sub_1CF9E6068();
  v690 = *(v685 - 8);
  MEMORY[0x1EEE9AC00](v685);
  v631 = &v615 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v661 = &v615 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v651 = &v615 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v673 = &v615 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v627 = &v615 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v633 = &v615 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v658 = &v615 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v674 = &v615 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v647 = &v615 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v655 = &v615 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v670 = &v615 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v688 = &v615 - v74;
  v684 = type metadata accessor for Signpost(0);
  v686 = *(v684 - 8);
  MEMORY[0x1EEE9AC00](v684);
  v630 = &v615 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v629 = &v615 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v634 = &v615 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v660 = &v615 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v659 = &v615 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v676 = &v615 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v650 = &v615 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v649 = &v615 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v656 = &v615 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v672 = &v615 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v671 = &v615 - v95;
  v687 = v96;
  MEMORY[0x1EEE9AC00](v97);
  v689 = &v615 - v98;
  v683 = type metadata accessor for VFSItem(0);
  v693 = *(v683 - 8);
  v99 = *(v693 + 64);
  MEMORY[0x1EEE9AC00](v683);
  v697 = &v615 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100);
  v682 = &v615 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v654 = &v615 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v696 = &v615 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v681 = &v615 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v701 = &v615 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v694 = &v615 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v704 = &v615 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v692 = &v615 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v706 = &v615 - v117;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v119 = *(v118 - 8);
  v120 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v657 = &v615 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v121);
  v624 = &v615 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v669 = &v615 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v695 = (&v615 - v126);
  MEMORY[0x1EEE9AC00](v127);
  v680 = &v615 - v128;
  MEMORY[0x1EEE9AC00](v129);
  v702 = &v615 - v130;
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v615 - v132;
  MEMORY[0x1EEE9AC00](v134);
  v708 = &v615 - v135;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v136);
  v138 = (&v615 - v137);
  sub_1CEFCCBDC(v709, &v615 - v137, &qword_1EC4C5020, &qword_1CFA0A278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v139 = *v138;
    v140 = *v138;
    (v710)(v139);

    return;
  }

  if ((*(v119 + 48))(v138, 1, v118) == 1)
  {
    (v710)(0);
    return;
  }

  v141 = v708;
  sub_1CEFE55D0(v138, v708, &qword_1EC4C5220, &qword_1CFA0A270);
  if (*(v141 + *(v118 + 56)))
  {
    sub_1CF4810BC();
    v142 = swift_allocError();
    *v143 = 1;
    v710();

    sub_1CEFCCC44(v141, &qword_1EC4C5220, &qword_1CFA0A270);
    return;
  }

  v617 = v118;
  v623 = type metadata accessor for VFSItem;
  v144 = v706;
  sub_1CEFE4F8C(v141, v706, type metadata accessor for VFSItem);
  v145 = v692;
  sub_1CEFE4F8C(v144, v692, type metadata accessor for VFSItem);
  sub_1CEFE4F8C(v145, v704, type metadata accessor for VFSItem);
  v146 = *(v693 + 80);
  v621 = ~v146;
  v622 = v146;
  v147 = (v146 + 24) & ~v146;
  v619 = v119;
  v620 = v147;
  v709 = v146 | 7;
  v618 = (v147 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v148 = (v147 + v99 + 23) & 0xFFFFFFFFFFFFFFF8;
  v149 = swift_allocObject();
  *(v149 + 16) = v707;
  v150 = v145;
  v151 = v623;
  sub_1CEFE4D98(v150, v149 + v147, v623);
  v152 = v618;
  v153 = v149 + v618;
  *v153 = v705;
  *(v153 + 8) = v700;
  v154 = (v149 + v148);
  v155 = v711;
  *v154 = v710;
  v154[1] = v155;
  v693 = v149;
  *(v149 + ((v148 + 23) & 0xFFFFFFFFFFFFFFF8)) = v703;
  v156 = v694;
  sub_1CEFE4F8C(v144, v694, v151);
  sub_1CEFCCBDC(v708, v133, &qword_1EC4C5220, &qword_1CFA0A270);
  sub_1CEFE4F8C(v156, v701, v151);
  sub_1CEFCCBDC(v133, v702, &qword_1EC4C5220, &qword_1CFA0A270);
  v157 = *(v619 + 80);
  v619 = ~v157;
  v615 = v157 + 16;
  v158 = swift_allocObject();
  *(v158 + 16) = v707;
  sub_1CEFE4D98(v156, v158 + v620, v623);
  v159 = (v158 + v152);
  v160 = v711;
  *v159 = v710;
  v159[1] = v160;
  sub_1CEFE55D0(v133, v158 + ((v157 + 16 + v152) & ~v157), &qword_1EC4C5220, &qword_1CFA0A270);
  v692 = v158;
  v616 = v157;
  if (((v705 >> 58) & 0x3C | (v705 >> 1) & 3) != 0x1B)
  {
    LODWORD(v689) = (v705 >> 58) & 0x3C | (v705 >> 1) & 3;
    v721[0] = 1;
    v207 = swift_allocObject();
    v696 = v207;
    *(v207 + 16) = 1;
    v208 = (v207 + 16);
    v209 = *(v708 + *(v617 + 52));
    v691 = v208;
    if (v209)
    {
      *v717 = v209;
      MEMORY[0x1EEE9AC00](v208);
      v210 = v707;
      *(&v615 - 8) = v707;
      *(&v615 - 7) = v717;
      *(&v615 - 6) = v706;
      *(&v615 - 5) = sub_1CF552504;
      v611 = v158;
      v612 = v700;
      v613 = v211;
      v614 = v721;
      v212 = *(*v210 + 464);
      swift_retain_n();
      swift_retain_n();
      v213 = v703;
      sub_1CEFD09A0(v705);
      v214 = v209;
      v212(0, "evict(_:request:evictionReason:progress:completionHandler:)", 59, 2, 2, sub_1CF552718, &v615 - 10, MEMORY[0x1E69E7CA8] + 8);
    }

    else
    {
      swift_retain_n();
      swift_retain_n();
      v224 = v703;
      sub_1CEFD09A0(v705);
    }

    v273 = v621;
    v272 = v622;
    LODWORD(v694) = v721[0];
    v274 = v682;
    sub_1CEFE4F8C(v706, v682, type metadata accessor for VFSItem);
    sub_1CEFE4F8C(v274, v697, type metadata accessor for VFSItem);
    v275 = (v272 + 16) & v273;
    v688 = v99 + 7;
    v276 = (v99 + 7 + v275) & 0xFFFFFFFFFFFFFFF8;
    v277 = (v276 + 23) & 0xFFFFFFFFFFFFFFF8;
    v278 = (v277 + 15) & 0xFFFFFFFFFFFFFFF8;
    v279 = swift_allocObject();
    sub_1CEFE4D98(v274, v279 + v275, type metadata accessor for VFSItem);
    v280 = (v279 + v276);
    v281 = v711;
    *v280 = v710;
    v280[1] = v281;
    *(v279 + v277) = v696;
    v282 = v707;
    *(v279 + v278) = v707;
    v695 = v279;
    v283 = (v279 + ((v278 + 15) & 0xFFFFFFFFFFFFFFF8));
    v284 = v693;
    *v283 = sub_1CF552450;
    v283[1] = v284;
    if (v694 == 1)
    {
      v285 = v282[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
      v286 = swift_dynamicCastClass();
      if (v286)
      {
        v287 = v286;
        v288 = v657;
        sub_1CEFCCBDC(v708, v657, &qword_1EC4C5220, &qword_1CFA0A270);
        v289 = v615 & v619;
        v290 = (v120 + (v615 & v619) + 7) & 0xFFFFFFFFFFFFFFF8;
        v291 = swift_allocObject();
        sub_1CEFE55D0(v288, v291 + v289, &qword_1EC4C5220, &qword_1CFA0A270);
        *(v291 + v290) = v287;
        v709 = v291;
        v292 = (v291 + ((v290 + 15) & 0xFFFFFFFFFFFFFFF8));
        v293 = v695;
        *v292 = sub_1CF5525F4;
        v292[1] = v293;
        v294 = swift_allocObject();
        *(v294 + 16) = v710;
        v710 = v294;
        *(v294 + 24) = v711;
        swift_retain_n();
        v705 = v285;
        swift_retain_n();

        v703 = fpfs_adopt_log();
        if (qword_1EDEAE980 != -1)
        {
          swift_once();
        }

        v295 = qword_1EDEBBE40;
        v296 = v690;
        v297 = v674;
        v298 = v685;
        (*(v690 + 7))(v674, 1, 1, v685);
        strcpy(v717, "async batch ");
        v717[13] = 0;
        *&v717[14] = -5120;
        v299 = sub_1CF9E7988();
        v301 = v300;
        MEMORY[0x1D3868CC0](v299);
        v301, v302, v303, v304, v305, v306, v307, v308;
        v711 = *v717;
        v309 = *&v717[8];
        v310 = v658;
        sub_1CEFCCBDC(v297, v658, &unk_1EC4BED20, &unk_1CFA00700);
        v311 = *(v296 + 6);
        if (v311(v310, 1, v298) == 1)
        {
          v312 = v295;
          v313 = v661;
          sub_1CF9E6048();
          if (v311(v310, 1, v298) != 1)
          {
            sub_1CEFCCC44(v310, &unk_1EC4BED20, &unk_1CFA00700);
          }
        }

        else
        {
          v313 = v661;
          (*(v296 + 4))(v661, v310, v298);
        }

        v338 = v676;
        (*(v296 + 2))(v676, v313, v298);
        v339 = v684;
        *(v338 + *(v684 + 20)) = v295;
        v340 = v338 + *(v339 + 24);
        *v340 = "DB queue wait";
        *(v340 + 8) = 13;
        *(v340 + 16) = 2;
        v341 = v295;
        v342 = sub_1CF9E7468();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v343 = swift_allocObject();
        *(v343 + 16) = xmmword_1CF9FA450;
        *(v343 + 56) = MEMORY[0x1E69E6158];
        *(v343 + 64) = sub_1CEFD51C4();
        *(v343 + 32) = v711;
        *(v343 + 40) = v309;
        v613 = v343;
        v612 = 2;
        sub_1CF9E6028(v342, &dword_1CEFC7000, v341, "DB queue wait", 13, 2, v338, "%s", 2);
        v343, v344, v345, v346, v347, v348, v349, v350;
        (*(v296 + 1))(v313, v298);
        sub_1CEFCCC44(v674, &unk_1EC4BED20, &unk_1CFA00700);
        v694 = v707[21];
        v700 = v707[8];
        (*(v698 + 56))(v679, 1, 1, v699);
        v351 = v659;
        sub_1CEFE4F8C(v338, v659, type metadata accessor for Signpost);
        v352 = (*(v686 + 80) + 16) & ~*(v686 + 80);
        v353 = (v687 + v352 + 7) & 0xFFFFFFFFFFFFFFF8;
        v354 = swift_allocObject();
        v711 = v354;
        sub_1CEFE4D98(v351, v354 + v352, type metadata accessor for Signpost);
        v355 = (v354 + v353);
        v691 = sub_1CF5543A4;
        v356 = v710;
        *v355 = sub_1CF5543A4;
        v355[1] = v356;
        v357 = v660;
        sub_1CEFE4F8C(v338, v660, type metadata accessor for Signpost);
        v358 = (v353 + 23) & 0xFFFFFFFFFFFFFFF8;
        v359 = (v358 + 15) & 0xFFFFFFFFFFFFFFF8;
        v360 = (v359 + 25) & 0xFFFFFFFFFFFFFFF8;
        v361 = swift_allocObject();
        sub_1CEFE4D98(v357, v361 + v352, type metadata accessor for Signpost);
        v362 = (v361 + v353);
        *v362 = sub_1CF045408;
        v362[1] = 0;
        *(v361 + v358) = v707;
        v363 = v361 + v359;
        v364 = v699;
        v365 = v698;
        *v363 = "removeDownload(_:_:)";
        *(v363 + 8) = 20;
        *(v363 + 16) = 2;
        v366 = (v361 + v360);
        v367 = v710;
        *v366 = v691;
        v366[1] = v367;
        v368 = (v361 + ((v360 + 23) & 0xFFFFFFFFFFFFFFF8));
        v369 = v709;
        *v368 = sub_1CF5526EC;
        v368[1] = v369;
        v370 = swift_allocObject();
        v371 = v711;
        v370[2] = sub_1CF554408;
        v370[3] = v371;
        v372 = v694;
        v370[4] = v694;
        swift_retain_n();

        v373 = fpfs_current_log();
        v707 = *(v372 + 2);
        v374 = v662;
        sub_1CEFCCBDC(v679, v662, &unk_1EC4BE370, qword_1CFA01B30);
        if ((*(v365 + 48))(v374, 1, v364) == 1)
        {
          sub_1CEFCCC44(v374, &unk_1EC4BE370, qword_1CFA01B30);
          v375 = QOS_CLASS_UNSPECIFIED;
        }

        else
        {
          v376 = v668;
          sub_1CF9E6438();
          (*(v365 + 8))(v374, v364);
          v375 = sub_1CF9E63C8();
          (*(v677 + 8))(v376, v678);
        }

        v377 = swift_allocObject();
        v377[2] = v373;
        v377[3] = sub_1CF4858EC;
        v377[4] = v361;
        *&v717[32] = sub_1CF2BA17C;
        *&v717[40] = v377;
        *v717 = MEMORY[0x1E69E9820];
        *&v717[8] = 1107296256;
        *&v717[16] = sub_1CEFCA444;
        *&v717[24] = &block_descriptor_255;
        v378 = _Block_copy(v717);
        v379 = v373;

        *&v717[32] = sub_1CF2BA180;
        *&v717[40] = v370;
        *v717 = MEMORY[0x1E69E9820];
        *&v717[8] = 1107296256;
        *&v717[16] = sub_1CEFCA444;
        *&v717[24] = &block_descriptor_258_1;
        v380 = _Block_copy(v717);

        fp_task_tracker_async_and_qos(v707, v700, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v375, v378, v380);
        _Block_release(v380);
        _Block_release(v378);

        sub_1CEFCCC44(v679, &unk_1EC4BE370, qword_1CFA01B30);
        sub_1CF007C58(v676, type metadata accessor for Signpost);
        v381 = v703;
        v382 = fpfs_adopt_log();

        sub_1CF007C58(v697, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v702, &qword_1EC4C5220, &qword_1CFA0A270);
        sub_1CF007C58(v701, type metadata accessor for VFSItem);
        sub_1CF007C58(v704, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v708, &qword_1EC4C5220, &qword_1CFA0A270);

        goto LABEL_100;
      }
    }

    v314 = v683;
    v315 = v697;
    v316 = (v697 + *(v683 + 28));
    v317 = type metadata accessor for ItemMetadata(0);
    v318 = v317;
    v319 = v704;
    if (v316[*(v317 + 80)] == 1)
    {
      if (*v316 == 1 || v316[*(v317 + 112)] == 1)
      {
        swift_retain_n();

        (v710)(0);

        sub_1CF007C58(v315, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v702, &qword_1EC4C5220, &qword_1CFA0A270);
        sub_1CF007C58(v701, type metadata accessor for VFSItem);
        sub_1CF007C58(v319, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v708, &qword_1EC4C5220, &qword_1CFA0A270);
LABEL_99:

        goto LABEL_100;
      }

      swift_retain_n();

      if (!fpfs_supports_partial_materialization() || !*&v316[*(v318 + 108)])
      {
        (v710)(0);

LABEL_98:
        sub_1CF007C58(v315, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v702, &qword_1EC4C5220, &qword_1CFA0A270);
        sub_1CF007C58(v701, type metadata accessor for VFSItem);
        sub_1CF007C58(v319, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v708, &qword_1EC4C5220, &qword_1CFA0A270);
        goto LABEL_99;
      }
    }

    else
    {
      swift_retain_n();
    }

    v320 = v691;
    swift_beginAccess();
    if (*v320 == 1 && (*v316 == 1 || v316[*(v318 + 84)]))
    {
      if (*(v319 + *(v314 + 28)) - 1 > 1 || v689 == 6 || v689 == 9 && ![*((v705 & 0xFFFFFFFFFFFFFF9) + 0x18) isProviderInitiated])
      {
        v385 = *(v282[4] + 16);
        v717[0] = v700;
        v386 = v654;
        sub_1CEFE4F8C(v319, v654, type metadata accessor for VFSItem);
        v387 = (v622 + 40) & v621;
        v388 = v282;
        v389 = (v688 + v387) & 0xFFFFFFFFFFFFFFF8;
        v390 = swift_allocObject();
        v391 = v711;
        v390[2] = v710;
        v390[3] = v391;
        v390[4] = v388;
        sub_1CEFE4D98(v386, v390 + v387, type metadata accessor for VFSItem);
        v392 = v705;
        *(v390 + v389) = v705;
        v393 = (*v385 + 744);
        v394 = *v393;
        v315 = v697;

        v319 = v704;

        sub_1CEFD09A0(v392);

        v395 = v394(v319, v717, sub_1CF5526C8, v390);
      }

      else
      {
        v321 = *v319;
        v322 = *(v319 + 8);
        qos_class_self();
        v323 = v626;
        sub_1CF9E63B8();
        v325 = v677;
        v324 = v678;
        v326 = *(v677 + 48);
        if (v326(v323, 1, v678) == 1)
        {
          (*(v325 + 104))(v625, *MEMORY[0x1E69E7FA0], v324);
          if (v326(v323, 1, v324) != 1)
          {
            sub_1CEFCCC44(v323, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v325 + 32))(v625, v323, v324);
        }

        sub_1CF9E6428();
        v509 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
        [v509 setCancellable_];
        v510 = swift_allocObject();
        swift_weakInit();
        v511 = swift_allocObject();
        v694 = v509;
        swift_unknownObjectWeakInit();
        v512 = swift_allocObject();
        *(v512 + 16) = v510;
        *(v512 + 24) = v511;
        *(v512 + 32) = v321;
        *(v512 + 40) = v322;
        *&v717[32] = sub_1CF5526CC;
        *&v717[40] = v512;
        *v717 = MEMORY[0x1E69E9820];
        v7 = 1107296256;
        *&v717[8] = 1107296256;
        *&v717[16] = sub_1CEFCA444;
        *&v717[24] = &block_descriptor_229;
        v513 = _Block_copy(v717);
        v709 = v321;

        sub_1CF03C63C(sub_1CF5526CC, v512);

        [v509 setCancellationHandler_];
        _Block_release(v513);

        v514 = v698;
        v515 = v628;
        v516 = v699;
        (*(v698 + 16))(v628, v640, v699);
        v517 = (*(v514 + 80) + 72) & ~*(v514 + 80);
        v518 = v517 + v653;
        v519 = swift_allocObject();
        v520 = v322;
        v521 = v519;
        v522 = v710;
        *(v519 + 16) = v707;
        *(v519 + 24) = v522;
        v523 = v711;
        v524 = v709;
        *(v519 + 32) = v711;
        *(v519 + 40) = v524;
        *(v519 + 48) = v520;
        v525 = v705;
        v526 = v694;
        *(v519 + 56) = v705;
        *(v519 + 64) = v526;
        (*(v514 + 32))(v519 + v517, v515, v516);
        v709 = v521;
        *(v521 + v518) = v700;
        v527 = swift_allocObject();
        *(v527 + 16) = v522;
        *(v527 + 24) = v523;
        v710 = v527;
        swift_retain_n();

        sub_1CEFD09A0(v525);
        v528 = v694;
        v700 = fpfs_adopt_log();
        if (qword_1EDEAE980 != -1)
        {
          swift_once();
        }

        v529 = qword_1EDEBBE40;
        v530 = v690;
        v531 = v633;
        v532 = v685;
        (*(v690 + 7))(v633, 1, 1, v685);
        strcpy(v717, "async batch ");
        v717[13] = 0;
        *&v717[14] = -5120;
        v533 = sub_1CF9E7988();
        v535 = v534;
        MEMORY[0x1D3868CC0](v533);
        v535, v536, v537, v538, v539, v540, v541, v542;
        v711 = *v717;
        v543 = *&v717[8];
        v544 = v531;
        v545 = v627;
        sub_1CEFCCBDC(v544, v627, &unk_1EC4BED20, &unk_1CFA00700);
        v546 = *(v530 + 6);
        v547 = v546(v545, 1, v532);
        v548 = v631;
        v705 = v528;
        if (v547 == 1)
        {
          v549 = v529;
          sub_1CF9E6048();
          if (v546(v545, 1, v532) != 1)
          {
            sub_1CEFCCC44(v545, &unk_1EC4BED20, &unk_1CFA00700);
          }
        }

        else
        {
          (*(v530 + 4))(v631, v545, v532);
        }

        v550 = v690;
        v551 = v634;
        (*(v690 + 2))(v634, v548, v532);
        v552 = v684;
        *(v551 + *(v684 + 20)) = v529;
        v553 = v551 + *(v552 + 24);
        *v553 = "DB queue wait";
        *(v553 + 8) = 13;
        *(v553 + 16) = 2;
        v554 = v529;
        v555 = sub_1CF9E7468();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v556 = v548;
        v557 = swift_allocObject();
        *(v557 + 16) = xmmword_1CF9FA450;
        *(v557 + 56) = MEMORY[0x1E69E6158];
        *(v557 + 64) = sub_1CEFD51C4();
        *(v557 + 32) = v711;
        *(v557 + 40) = v543;
        v613 = v557;
        v612 = 2;
        sub_1CF9E6028(v555, &dword_1CEFC7000, v554, "DB queue wait", 13, 2, v551, "%s", 2);
        v557, v558, v559, v560, v561, v562, v563, v564;
        (*(v550 + 1))(v556, v532);
        sub_1CEFCCC44(v633, &unk_1EC4BED20, &unk_1CFA00700);
        v691 = v707[21];
        v694 = v707[8];
        (*(v698 + 56))(v639, 1, 1, v699);
        v565 = v629;
        sub_1CEFE4F8C(v551, v629, type metadata accessor for Signpost);
        v566 = (*(v686 + 80) + 16) & ~*(v686 + 80);
        v567 = (v687 + v566 + 7) & 0xFFFFFFFFFFFFFFF8;
        v568 = swift_allocObject();
        v711 = v568;
        sub_1CEFE4D98(v565, v568 + v566, type metadata accessor for Signpost);
        v569 = (v568 + v567);
        v690 = sub_1CF4814BC;
        v570 = v710;
        *v569 = sub_1CF4814BC;
        v569[1] = v570;
        v571 = v630;
        sub_1CEFE4F8C(v551, v630, type metadata accessor for Signpost);
        v572 = (v567 + 23) & 0xFFFFFFFFFFFFFFF8;
        v573 = (v572 + 15) & 0xFFFFFFFFFFFFFFF8;
        v574 = (v573 + 25) & 0xFFFFFFFFFFFFFFF8;
        v575 = swift_allocObject();
        sub_1CEFE4D98(v571, v575 + v566, type metadata accessor for Signpost);
        v576 = (v575 + v567);
        *v576 = sub_1CF045408;
        v576[1] = 0;
        *(v575 + v572) = v707;
        v577 = v699;
        v578 = v575 + v573;
        *v578 = "evict(_:request:qos:evictionReason:completion:)";
        *(v578 + 8) = 47;
        *(v578 + 16) = 2;
        v579 = (v575 + v574);
        v580 = v698;
        v581 = v710;
        *v579 = v690;
        v579[1] = v581;
        v582 = (v575 + ((v574 + 23) & 0xFFFFFFFFFFFFFFF8));
        v583 = v709;
        *v582 = sub_1CF5526D0;
        v582[1] = v583;
        v584 = swift_allocObject();
        v585 = v711;
        v584[2] = sub_1CF5526E8;
        v584[3] = v585;
        v586 = v691;
        v584[4] = v691;
        swift_retain_n();

        v587 = fpfs_current_log();
        v588 = *(v586 + 2);
        v589 = v632;
        sub_1CEFCCBDC(v639, v632, &unk_1EC4BE370, qword_1CFA01B30);
        v590 = (*(v580 + 48))(v589, 1, v577);
        v707 = v588;
        if (v590 == 1)
        {
          sub_1CEFCCC44(v589, &unk_1EC4BE370, qword_1CFA01B30);
          v591 = QOS_CLASS_UNSPECIFIED;
        }

        else
        {
          v592 = v668;
          sub_1CF9E6438();
          (*(v580 + 8))(v589, v577);
          v591 = sub_1CF9E63C8();
          (*(v677 + 8))(v592, v678);
        }

        v593 = swift_allocObject();
        v593[2] = v587;
        v593[3] = sub_1CF48100C;
        v593[4] = v575;
        *&v717[32] = sub_1CEFCA438;
        *&v717[40] = v593;
        *v717 = MEMORY[0x1E69E9820];
        *&v717[8] = 1107296256;
        *&v717[16] = sub_1CEFCA444;
        *&v717[24] = &block_descriptor_223_0;
        v594 = _Block_copy(v717);
        v595 = v587;

        *&v717[32] = sub_1CF2AF9E8;
        *&v717[40] = v584;
        *v717 = MEMORY[0x1E69E9820];
        *&v717[8] = 1107296256;
        *&v717[16] = sub_1CEFCA444;
        *&v717[24] = &block_descriptor_226;
        v596 = _Block_copy(v717);
        v393 = *&v717[40];

        fp_task_tracker_async_and_qos(v707, v694, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v591, v594, v596);
        _Block_release(v596);
        _Block_release(v594);

        sub_1CEFCCC44(v639, &unk_1EC4BE370, qword_1CFA01B30);
        sub_1CF007C58(v634, type metadata accessor for Signpost);
        v597 = v700;
        v598 = fpfs_adopt_log();

        (*(v698 + 8))(v640, v699);
        v319 = v704;
        v315 = v697;
        v395 = v705;
      }

      v599 = v395;
      v600 = v703;
      v601 = [v703 totalUnitCount];
      if (__OFADD__(v601, 1))
      {
        goto LABEL_103;
      }

      [v600 setTotalUnitCount_];
      [v600 addChild:v599 withPendingUnitCount:1];
    }

    else
    {
      v327 = swift_allocBox();
      sub_1CEFE4F8C(v315, v328, type metadata accessor for VFSItem);
      type metadata accessor for VFSFileTree(0);
      v329 = swift_dynamicCastClass();
      if (v329)
      {
        v330 = *(v329 + 216);
        v331 = swift_allocObject();
        v332 = v710;
        v331[2] = v327;
        v331[3] = v332;
        v709 = v327;
        v331[4] = v711;
        *&v717[32] = sub_1CF5526BC;
        *&v717[40] = v331;
        *v717 = MEMORY[0x1E69E9820];
        *&v717[8] = 1107296256;
        *&v717[16] = sub_1CEFCA444;
        *&v717[24] = &block_descriptor_192;
        v333 = _Block_copy(v717);

        v334 = v330;

        v335 = v641;
        sub_1CF9E63F8();
        v713[0] = MEMORY[0x1E69E7CC0];
        sub_1CF00E8B4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
        sub_1CF01049C();
        v336 = v642;
        v337 = v644;
        sub_1CF9E77B8();
        MEMORY[0x1D3869630](0, v335, v336, v333);
        _Block_release(v333);

        (*(v643 + 8))(v336, v337);
        (*(v698 + 8))(v335, v699);
        sub_1CF007C58(v697, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v702, &qword_1EC4C5220, &qword_1CFA0A270);
        sub_1CF007C58(v701, type metadata accessor for VFSItem);
        sub_1CF007C58(v704, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v708, &qword_1EC4C5220, &qword_1CFA0A270);

        goto LABEL_100;
      }

      sub_1CF9E50F8();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00E8B4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v396 = v635;
      v397 = v638;
      sub_1CF9E57D8();
      v398 = sub_1CF9E50D8();
      (*(v637 + 8))(v396, v397);
      (v710)(v398);
    }

    goto LABEL_98;
  }

  v161 = v681;
  sub_1CEFE4F8C(v706, v681, type metadata accessor for VFSItem);
  v162 = v680;
  sub_1CEFCCBDC(v708, v680, &qword_1EC4C5220, &qword_1CFA0A270);
  sub_1CEFE4F8C(v161, v696, type metadata accessor for VFSItem);
  sub_1CEFCCBDC(v162, v695, &qword_1EC4C5220, &qword_1CFA0A270);
  v163 = (v622 + 16) & v621;
  v676 = v99 + 7;
  v164 = v157;
  v165 = (v99 + 7 + v163) & 0xFFFFFFFFFFFFFFF8;
  v166 = (v165 + v164 + 8) & v619;
  v679 = v120 + 7;
  v167 = (v120 + 7 + v166) & 0xFFFFFFFFFFFFFFF8;
  v694 = ((v167 + 23) & 0xFFFFFFFFFFFFFFF8);
  v682 = (v694 + 23) & 0xFFFFFFFFFFFFFFF8;
  v168 = swift_allocObject();
  sub_1CEFE4D98(v161, v168 + v163, type metadata accessor for VFSItem);
  v169 = v707;
  *(v168 + v165) = v707;
  v170 = v692;
  sub_1CEFE55D0(v162, v168 + v166, &qword_1EC4C5220, &qword_1CFA0A270);
  v171 = (v168 + v167);
  *v171 = sub_1CF552504;
  v171[1] = v170;
  v172 = &v694[v168];
  v173 = v711;
  *v172 = v710;
  v172[1] = v173;
  v174 = (v168 + v682);
  v175 = v693;
  *v174 = sub_1CF552450;
  v174[1] = v175;
  v176 = v169[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v177 = swift_dynamicCastClass();
  v178 = v173;
  v697 = v168;
  if (v177)
  {
    v179 = v177;
    v180 = v669;
    sub_1CEFCCBDC(v708, v669, &qword_1EC4C5220, &qword_1CFA0A270);
    v181 = v615 & v619;
    v182 = (v679 + (v615 & v619)) & 0xFFFFFFFFFFFFFFF8;
    v183 = swift_allocObject();
    sub_1CEFE55D0(v180, v183 + v181, &qword_1EC4C5220, &qword_1CFA0A270);
    *(v183 + v182) = v179;
    v709 = v183;
    v184 = (v183 + ((v182 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v184 = sub_1CF552754;
    v184[1] = v168;
    v185 = swift_allocObject();
    *(v185 + 16) = v710;
    *(v185 + 24) = v178;
    v710 = v185;
    swift_retain_n();
    swift_retain_n();
    v700 = v176;
    swift_retain_n();
    v186 = v703;
    sub_1CEFD09A0(v705);

    v705 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v187 = qword_1EDEBBE40;
    v188 = v690;
    v189 = v688;
    v190 = v685;
    (*(v690 + 7))(v688, 1, 1, v685);
    strcpy(v717, "async batch ");
    v717[13] = 0;
    *&v717[14] = -5120;
    v191 = sub_1CF9E7988();
    v193 = v192;
    MEMORY[0x1D3868CC0](v191);
    v193, v194, v195, v196, v197, v198, v199, v200;
    v711 = *v717;
    v201 = *&v717[8];
    v202 = v670;
    sub_1CEFCCBDC(v189, v670, &unk_1EC4BED20, &unk_1CFA00700);
    v203 = *(v188 + 6);
    v204 = v203(v202, 1, v190);
    v205 = v673;
    if (v204 == 1)
    {
      v206 = v187;
      sub_1CF9E6048();
      if (v203(v202, 1, v190) != 1)
      {
        sub_1CEFCCC44(v202, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v188 + 4))(v673, v202, v190);
    }

    v225 = v689;
    (*(v188 + 2))(v689, v205, v190);
    v226 = v684;
    *(v225 + *(v684 + 20)) = v187;
    v227 = v225 + *(v226 + 24);
    *v227 = "DB queue wait";
    *(v227 + 8) = 13;
    *(v227 + 16) = 2;
    v228 = v187;
    v229 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v230 = swift_allocObject();
    *(v230 + 16) = xmmword_1CF9FA450;
    *(v230 + 56) = MEMORY[0x1E69E6158];
    *(v230 + 64) = sub_1CEFD51C4();
    *(v230 + 32) = v711;
    *(v230 + 40) = v201;
    v613 = v230;
    v612 = 2;
    sub_1CF9E6028(v229, &dword_1CEFC7000, v228, "DB queue wait", 13, 2, v225, "%s", 2);
    v230, v231, v232, v233, v234, v235, v236, v237;
    (*(v188 + 1))(v205, v190);
    sub_1CEFCCC44(v688, &unk_1EC4BED20, &unk_1CFA00700);
    v694 = v707[21];
    v703 = v707[8];
    (*(v698 + 56))(v691, 1, 1, v699);
    v238 = v671;
    sub_1CEFE4F8C(v225, v671, type metadata accessor for Signpost);
    v239 = (*(v686 + 80) + 16) & ~*(v686 + 80);
    v240 = (v687 + v239 + 7) & 0xFFFFFFFFFFFFFFF8;
    v241 = swift_allocObject();
    v711 = v241;
    sub_1CEFE4D98(v238, v241 + v239, type metadata accessor for Signpost);
    v242 = (v241 + v240);
    v690 = sub_1CF5543A4;
    v243 = v710;
    *v242 = sub_1CF5543A4;
    v242[1] = v243;
    v244 = v672;
    sub_1CEFE4F8C(v225, v672, type metadata accessor for Signpost);
    v245 = (v240 + 23) & 0xFFFFFFFFFFFFFFF8;
    v246 = (v245 + 15) & 0xFFFFFFFFFFFFFFF8;
    v247 = (v246 + 25) & 0xFFFFFFFFFFFFFFF8;
    v248 = swift_allocObject();
    sub_1CEFE4D98(v244, v248 + v239, type metadata accessor for Signpost);
    v249 = (v248 + v240);
    *v249 = sub_1CF045408;
    v249[1] = 0;
    *(v248 + v245) = v707;
    v250 = v248 + v246;
    v251 = v698;
    *v250 = "removeDownload(_:_:)";
    *(v250 + 8) = 20;
    *(v250 + 16) = 2;
    v252 = (v248 + v247);
    v253 = v710;
    *v252 = v690;
    v252[1] = v253;
    v254 = v248;
    v255 = (v248 + ((v247 + 23) & 0xFFFFFFFFFFFFFFF8));
    v256 = v699;
    v257 = v709;
    *v255 = sub_1CF554434;
    v255[1] = v257;
    v258 = swift_allocObject();
    v259 = v711;
    v258[2] = sub_1CF554408;
    v258[3] = v259;
    v260 = v694;
    v258[4] = v694;
    swift_retain_n();

    v261 = fpfs_current_log();
    v707 = *(v260 + 2);
    v262 = v675;
    sub_1CEFCCBDC(v691, v675, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v251 + 48))(v262, 1, v256) == 1)
    {
      sub_1CEFCCC44(v262, &unk_1EC4BE370, qword_1CFA01B30);
      v263 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v264 = v668;
      sub_1CF9E6438();
      (*(v251 + 8))(v262, v256);
      v263 = sub_1CF9E63C8();
      (*(v677 + 8))(v264, v678);
    }

    v265 = swift_allocObject();
    v265[2] = v261;
    v265[3] = sub_1CF4858EC;
    v265[4] = v254;
    *&v717[32] = sub_1CF2BA17C;
    *&v717[40] = v265;
    *v717 = MEMORY[0x1E69E9820];
    *&v717[8] = 1107296256;
    *&v717[16] = sub_1CEFCA444;
    *&v717[24] = &block_descriptor_334_0;
    v266 = _Block_copy(v717);
    v267 = v261;

    *&v717[32] = sub_1CF2BA180;
    *&v717[40] = v258;
    *v717 = MEMORY[0x1E69E9820];
    *&v717[8] = 1107296256;
    *&v717[16] = sub_1CEFCA444;
    *&v717[24] = &block_descriptor_337;
    v268 = _Block_copy(v717);

    fp_task_tracker_async_and_qos(v707, v703, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v263, v266, v268);
    _Block_release(v268);
    _Block_release(v266);

    sub_1CEFCCC44(v691, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007C58(v689, type metadata accessor for Signpost);
    v269 = v705;
    v270 = fpfs_adopt_log();

    sub_1CEFCCC44(v695, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CF007C58(v696, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v702, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CF007C58(v701, type metadata accessor for VFSItem);
    v271 = v704;
  }

  else
  {

    v215 = v707;

    v722 = 0;
    memset(v721, 0, sizeof(v721));
    sub_1CEFCCBDC(v721, v717, &qword_1EC4C0700, &qword_1CFA05B10);
    v216 = v704;
    if (*&v717[24])
    {
      sub_1CF054EA0(v717, v718);
      v217 = v683;
      v218 = v696 + *(v683 + 28);
      if (*(v218 + *(type metadata accessor for ItemMetadata(0) + 80)))
      {
        v219 = v719;
        v694 = v720;
        v220 = __swift_project_boxed_opaque_existential_1(v718, v719);
        v221 = *(v695 + 8);
        v715 = *v695;
        v222 = v711;
        v716 = v221;
        swift_retain_n();
        swift_retain_n();
        v223 = v703;
        sub_1CEFD09A0(v705);

        sub_1CF68DDB0(&v715, v220, v219, v694, v717);
        memcpy(v714, v717, sizeof(v714));
        v399 = sub_1CF08B99C(v714);
        v216 = v704;
        if (v399 == 1)
        {
          memcpy(v713, v717, sizeof(v713));
          sub_1CEFCCC44(v713, &unk_1EC4BFC20, &unk_1CFA0A290);
          __swift_destroy_boxed_opaque_existential_1(v718);
          v215 = v707;
          v217 = v683;
        }

        else
        {
          memcpy(v713, v717, sizeof(v713));
          v215 = v707;
          v217 = v683;
          if (v713[24] >> 60 != 11)
          {
            v602 = *(v707[4] + 16);
            v712 = 2;
            v603 = v624;
            sub_1CEFCCBDC(v702, v624, &qword_1EC4C5220, &qword_1CFA0A270);
            v604 = v215;
            v605 = (v616 + 40) & v619;
            v606 = swift_allocObject();
            v607 = v710;
            v606[2] = v604;
            v606[3] = v607;
            v606[4] = v222;
            sub_1CEFE55D0(v603, v606 + v605, &qword_1EC4C5220, &qword_1CFA0A270);
            v608 = v216;
            v609 = *(*v602 + 824);

            v610 = v701;
            v609(v701, &v712, sub_1CF552894, v606);

            sub_1CEFCCC44(v721, &qword_1EC4C0700, &qword_1CFA05B10);
            sub_1CEFCCC44(v695, &qword_1EC4C5220, &qword_1CFA0A270);
            sub_1CF007C58(v696, type metadata accessor for VFSItem);
            sub_1CEFCCC44(v702, &qword_1EC4C5220, &qword_1CFA0A270);
            sub_1CF007C58(v610, type metadata accessor for VFSItem);
            sub_1CF007C58(v608, type metadata accessor for VFSItem);
            sub_1CEFCCC44(v708, &qword_1EC4C5220, &qword_1CFA0A270);
            sub_1CEFCCC44(v713, &unk_1EC4BFC20, &unk_1CFA0A290);
            __swift_destroy_boxed_opaque_existential_1(v718);
            goto LABEL_100;
          }

          sub_1CEFCCC44(v713, &unk_1EC4BFC20, &unk_1CFA0A290);
          __swift_destroy_boxed_opaque_existential_1(v718);
        }

        v178 = v222;
      }

      else
      {
        swift_retain_n();
        swift_retain_n();
        v384 = v703;
        sub_1CEFD09A0(v705);

        __swift_destroy_boxed_opaque_existential_1(v718);
      }
    }

    else
    {
      swift_retain_n();
      swift_retain_n();
      v383 = v703;
      sub_1CEFD09A0(v705);

      sub_1CEFCCC44(v717, &qword_1EC4C0700, &qword_1CFA05B10);
      v217 = v683;
    }

    v400 = v676;
    if (*(v216 + *(v217 + 28)) - 1 > 1)
    {
      v407 = *(v215[4] + 16);
      v717[0] = v700;
      v408 = v654;
      sub_1CEFE4F8C(v216, v654, type metadata accessor for VFSItem);
      v409 = v178;
      v410 = (v622 + 40) & v621;
      v411 = v215;
      v412 = (v400 + v410) & 0xFFFFFFFFFFFFFFF8;
      v413 = swift_allocObject();
      v413[2] = v710;
      v413[3] = v409;
      v413[4] = v411;
      sub_1CEFE4D98(v408, v413 + v410, type metadata accessor for VFSItem);
      v414 = v705;
      *(v413 + v412) = v705;
      v393 = *(*v407 + 744);

      v415 = v704;

      sub_1CEFD09A0(v414);

      v416 = (v393)(v415, v717, sub_1CF55440C, v413);

      goto LABEL_82;
    }

    v401 = *v216;
    v402 = *(v216 + 8);
    qos_class_self();
    v403 = v646;
    sub_1CF9E63B8();
    v405 = v677;
    v404 = v678;
    v406 = *(v677 + 48);
    if (v406(v403, 1, v678) == 1)
    {
      (*(v405 + 104))(v645, *MEMORY[0x1E69E7FA0], v404);
      if (v406(v403, 1, v404) != 1)
      {
        sub_1CEFCCC44(v403, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v405 + 32))(v645, v403, v404);
    }

    sub_1CF9E6428();
    v417 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
    [v417 setCancellable_];
    v418 = swift_allocObject();
    swift_weakInit();
    v419 = swift_allocObject();
    v694 = v417;
    swift_unknownObjectWeakInit();
    v420 = swift_allocObject();
    *(v420 + 16) = v418;
    *(v420 + 24) = v419;
    *(v420 + 32) = v401;
    *(v420 + 40) = v402;
    *&v717[32] = sub_1CF5543A8;
    *&v717[40] = v420;
    *v717 = MEMORY[0x1E69E9820];
    v7 = 1107296256;
    *&v717[8] = 1107296256;
    *&v717[16] = sub_1CEFCA444;
    *&v717[24] = &block_descriptor_304;
    v421 = _Block_copy(v717);
    v709 = v401;

    sub_1CF03C63C(sub_1CF5543A8, v420);

    [v417 setCancellationHandler_];
    _Block_release(v421);

    v422 = v698;
    v423 = v648;
    v424 = v699;
    (*(v698 + 16))(v648, v667, v699);
    v425 = (*(v422 + 80) + 72) & ~*(v422 + 80);
    v426 = v425 + v653;
    v427 = swift_allocObject();
    v428 = v402;
    v429 = v427;
    v430 = v710;
    *(v427 + 16) = v707;
    *(v427 + 24) = v430;
    v431 = v711;
    v432 = v709;
    *(v427 + 32) = v711;
    *(v427 + 40) = v432;
    *(v427 + 48) = v428;
    v433 = v705;
    v434 = v694;
    *(v427 + 56) = v705;
    *(v427 + 64) = v434;
    v435 = v422;
    v393 = v707;
    (*(v435 + 32))(v427 + v425, v423, v424);
    v709 = v429;
    *(v429 + v426) = v700;
    v436 = swift_allocObject();
    *(v436 + 16) = v430;
    *(v436 + 24) = v431;
    v710 = v436;
    swift_retain_n();

    sub_1CEFD09A0(v433);
    v705 = v694;
    v700 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      goto LABEL_104;
    }

    while (1)
    {
      v437 = qword_1EDEBBE40;
      v438 = v690;
      v439 = v655;
      v440 = v685;
      (*(v690 + 7))(v655, 1, 1, v685);
      strcpy(v717, "async batch ");
      v717[13] = 0;
      *&v717[14] = -5120;
      v441 = sub_1CF9E7988();
      v443 = v442;
      MEMORY[0x1D3868CC0](v441);
      v443, v444, v445, v446, v447, v448, v449, v450;
      v711 = *v717;
      v694 = *&v717[8];
      v451 = v439;
      v452 = v647;
      sub_1CEFCCBDC(v451, v647, &unk_1EC4BED20, &unk_1CFA00700);
      v453 = *(v438 + 6);
      if (v453(v452, 1, v440) == 1)
      {
        v454 = v437;
        v455 = v651;
        sub_1CF9E6048();
        if (v453(v452, 1, v440) != 1)
        {
          sub_1CEFCCC44(v452, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        v456 = *(v438 + 4);
        v455 = v651;
        v456(v651, v452, v440);
      }

      v457 = v690;
      v458 = v656;
      (*(v690 + 2))(v656, v455, v440);
      v459 = v684;
      *(v458 + *(v684 + 20)) = v437;
      v460 = v458 + *(v459 + 24);
      *v460 = "DB queue wait";
      *(v460 + 8) = 13;
      *(v460 + 16) = 2;
      v461 = v437;
      v462 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v463 = v455;
      v464 = swift_allocObject();
      *(v464 + 16) = xmmword_1CF9FA450;
      *(v464 + 56) = MEMORY[0x1E69E6158];
      *(v464 + 64) = sub_1CEFD51C4();
      v465 = v694;
      *(v464 + 32) = v711;
      *(v464 + 40) = v465;
      v613 = v464;
      v612 = 2;
      sub_1CF9E6028(v462, &dword_1CEFC7000, v461, "DB queue wait", 13, 2, v458, "%s", 2);
      v464, v466, v467, v468, v469, v470, v471, v472;
      (*(v457 + 1))(v463, v440);
      sub_1CEFCCC44(v655, &unk_1EC4BED20, &unk_1CFA00700);
      v691 = v393[21];
      v694 = v393[8];
      (*(v698 + 56))(v666, 1, 1, v699);
      v473 = v649;
      sub_1CEFE4F8C(v458, v649, type metadata accessor for Signpost);
      v474 = (*(v686 + 80) + 16) & ~*(v686 + 80);
      v475 = (v687 + v474 + 7) & 0xFFFFFFFFFFFFFFF8;
      v476 = swift_allocObject();
      v711 = v476;
      sub_1CEFE4D98(v473, v476 + v474, type metadata accessor for Signpost);
      v477 = (v476 + v475);
      v690 = sub_1CF5543A4;
      v478 = v710;
      *v477 = sub_1CF5543A4;
      v477[1] = v478;
      v479 = v650;
      sub_1CEFE4F8C(v458, v650, type metadata accessor for Signpost);
      v480 = (v475 + 23) & 0xFFFFFFFFFFFFFFF8;
      v481 = (v480 + 15) & 0xFFFFFFFFFFFFFFF8;
      v482 = (v481 + 25) & 0xFFFFFFFFFFFFFFF8;
      v483 = swift_allocObject();
      sub_1CEFE4D98(v479, v483 + v474, type metadata accessor for Signpost);
      v484 = (v483 + v475);
      v485 = v699;
      *v484 = sub_1CF045408;
      v484[1] = 0;
      *(v483 + v480) = v707;
      v486 = v483 + v481;
      v487 = v698;
      *v486 = "evict(_:request:qos:evictionReason:completion:)";
      *(v486 + 8) = 47;
      *(v486 + 16) = 2;
      v488 = (v483 + v482);
      v489 = v710;
      *v488 = v690;
      v488[1] = v489;
      v490 = (v483 + ((v482 + 23) & 0xFFFFFFFFFFFFFFF8));
      v491 = v709;
      *v490 = sub_1CF55441C;
      v490[1] = v491;
      v492 = swift_allocObject();
      v493 = v711;
      v492[2] = sub_1CF554408;
      v492[3] = v493;
      v494 = v691;
      v492[4] = v691;
      swift_retain_n();

      v495 = v494;

      v496 = fpfs_current_log();
      v707 = *(v495 + 2);
      v497 = v652;
      sub_1CEFCCBDC(v666, v652, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v487 + 48))(v497, 1, v485) == 1)
      {
        sub_1CEFCCC44(v497, &unk_1EC4BE370, qword_1CFA01B30);
        LODWORD(v691) = 0;
      }

      else
      {
        v498 = v668;
        sub_1CF9E6438();
        (*(v487 + 8))(v497, v485);
        LODWORD(v691) = sub_1CF9E63C8();
        (*(v677 + 8))(v498, v678);
      }

      v499 = v487;
      v500 = swift_allocObject();
      v500[2] = v496;
      v500[3] = sub_1CF4858EC;
      v500[4] = v483;
      *&v717[32] = sub_1CF2BA17C;
      *&v717[40] = v500;
      *v717 = MEMORY[0x1E69E9820];
      *&v717[8] = v7;
      *&v717[16] = sub_1CEFCA444;
      *&v717[24] = &block_descriptor_298;
      v501 = _Block_copy(v717);
      v502 = v496;

      *&v717[32] = sub_1CF2BA180;
      *&v717[40] = v492;
      *v717 = MEMORY[0x1E69E9820];
      *&v717[8] = v7;
      *&v717[16] = sub_1CEFCA444;
      *&v717[24] = &block_descriptor_301;
      v393 = _Block_copy(v717);

      fp_task_tracker_async_and_qos(v707, v694, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v691, v501, v393);
      _Block_release(v393);
      _Block_release(v501);

      sub_1CEFCCC44(v666, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CF007C58(v656, type metadata accessor for Signpost);
      v503 = v700;
      v504 = fpfs_adopt_log();

      (*(v499 + 8))(v667, v699);
      v415 = v704;
      v416 = v705;
LABEL_82:
      v505 = v416;
      v506 = v703;
      v507 = [v703 totalUnitCount];
      v508 = v695;
      if (!__OFADD__(v507, 1))
      {
        break;
      }

      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      swift_once();
    }

    [v506 setTotalUnitCount_];
    [v506 addChild:v505 withPendingUnitCount:1];

    sub_1CEFCCC44(v721, &qword_1EC4C0700, &qword_1CFA05B10);
    sub_1CEFCCC44(v508, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CF007C58(v696, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v702, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CF007C58(v701, type metadata accessor for VFSItem);
    v271 = v415;
  }

  sub_1CF007C58(v271, type metadata accessor for VFSItem);
  sub_1CEFCCC44(v708, &qword_1EC4C5220, &qword_1CFA0A270);
LABEL_100:
  sub_1CF007C58(v706, type metadata accessor for VFSItem);
}

uint64_t sub_1CF54A5AC(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v36 = a5;
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 8);
  v39 = *a2;
  v40 = v13;
  v14 = a1[3];
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1CF348CFC(&v39, 8, v16, v14, v15);
  if (v5)
  {
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = v5;
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E72A8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35 = a4;
      v22 = v21;
      v23 = swift_slowAlloc();
      v34 = v9;
      v24 = v23;
      *v22 = 138412290;
      swift_getErrorValue();
      v25 = Error.prettyDescription.getter(v37, v38);
      *(v22 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&dword_1CEFC7000, v19, v20, "⏰ Failed to remove pending downloads %@", v22, 0xCu);
      sub_1CEFCCC44(v24, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v26 = v24;
      v9 = v34;
      MEMORY[0x1D386CDC0](v26, -1, -1);
      v27 = v22;
      a4 = v35;
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v12, v9);
  }

  v28 = a1[3];
  v29 = a1[4];
  v30 = __swift_project_boxed_opaque_existential_1(a1, v28);
  v41 = v28;
  v42 = *(v29 + 8);
  v31 = __swift_allocate_boxed_opaque_existential_0(&v39);
  (*(*(v28 - 8) + 16))(v31, v30, v28);
  a4(&v39);
  return sub_1CEFCCC44(&v39, &qword_1EC4C0700, &qword_1CFA05B10);
}

void sub_1CF54A888(void *a1, uint64_t *a2, unint64_t a3, int a4, uint64_t a5, void *a6, void *a7)
{
  v171 = a7;
  v172 = a1;
  v168 = a5;
  v169 = a6;
  LODWORD(v167) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v159 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v166 = &v144 - v13;
  v157 = sub_1CF9E6068();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v155 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v151 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v162 = &v144 - v18;
  v152 = type metadata accessor for Signpost(0);
  v153 = *(v152 - 8);
  v19 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v158 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v154 = &v144 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v163 = &v144 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v144 - v25;
  v27 = sub_1CF9E63D8();
  v160 = *(v27 - 8);
  v161 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v149 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v144 - v30;
  v170 = sub_1CF9E6448();
  v165 = *(v170 - 8);
  v32 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v150 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v164 = &v144 - v34;
  v35 = type metadata accessor for VFSItem(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  *&v38 = MEMORY[0x1EEE9AC00](v35 - 8).n128_u64[0];
  v39 = &v144 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a2;
  if (*(a2 + *(v40 + 36)) - 1 > 1 || (v42 = (a3 >> 58) & 0x3C | (a3 >> 1) & 3, v42 == 6) || v42 == 9 && ([*((a3 & 0xFFFFFFFFFFFFFF9) + 0x18) isProviderInitiated] & 1) == 0)
  {
    v48 = v172;
    v49 = *(v172[4] + 16);
    LOBYTE(aBlock) = v167;
    sub_1CEFE4F8C(a2, &v144 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VFSItem);
    v50 = (*(v36 + 80) + 40) & ~*(v36 + 80);
    v51 = (v37 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v53 = v169;
    v52[2] = v168;
    v52[3] = v53;
    v52[4] = v48;
    sub_1CEFE4D98(v39, v52 + v50, type metadata accessor for VFSItem);
    *(v52 + v51) = a3;
    v54 = *(*v49 + 744);

    sub_1CEFD09A0(a3);
    v55 = v54(v41, &aBlock, sub_1CF55440C, v52);

    goto LABEL_19;
  }

  v145 = a3;
  v147 = *a2;
  v43 = *(a2 + 8);
  qos_class_self();
  sub_1CF9E63B8();
  v45 = v160;
  v44 = v161;
  v46 = *(v160 + 48);
  v47 = v46(v26, 1, v161);
  v144 = v19;
  if (v47 == 1)
  {
    (*(v45 + 104))(v31, *MEMORY[0x1E69E7FA0], v44);
    if (v46(v26, 1, v44) != 1)
    {
      sub_1CEFCCC44(v26, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v45 + 32))(v31, v26, v44);
  }

  sub_1CF9E6428();
  v56 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  [v56 setCancellable_];
  v57 = swift_allocObject();
  swift_weakInit();
  v58 = swift_allocObject();
  v146 = v56;
  swift_unknownObjectWeakInit();
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  *(v59 + 24) = v58;
  *(v59 + 32) = v147;
  *(v59 + 40) = v43;
  v176 = sub_1CF5543A8;
  v177 = v59;
  *&aBlock = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  *(&aBlock + 1) = 1107296256;
  v174 = sub_1CEFCA444;
  v175 = &block_descriptor_465;
  v60 = _Block_copy(&aBlock);

  sub_1CF03C63C(sub_1CF5543A8, v59);

  [v56 setCancellationHandler_];
  _Block_release(v60);

  v61 = v165;
  v62 = v150;
  v63 = v170;
  (*(v165 + 16))(v150, v164, v170);
  v64 = (*(v61 + 80) + 72) & ~*(v61 + 80);
  v65 = swift_allocObject();
  v66 = v43;
  v68 = v168;
  v67 = v169;
  *(v65 + 16) = v172;
  *(v65 + 24) = v68;
  v69 = v147;
  *(v65 + 32) = v67;
  *(v65 + 40) = v69;
  *(v65 + 48) = v66;
  v70 = v145;
  v71 = v146;
  *(v65 + 56) = v145;
  *(v65 + 64) = v71;
  (*(v61 + 32))(v65 + v64, v62, v63);
  v148 = v65;
  *(v65 + v64 + v32) = v167;
  v72 = swift_allocObject();
  *(v72 + 16) = v68;
  *(v72 + 24) = v67;
  v168 = v72;
  swift_retain_n();

  sub_1CEFD09A0(v70);
  v169 = v146;
  v167 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v73 = qword_1EDEBBE40;
    v74 = v156;
    v75 = v162;
    v76 = v157;
    (*(v156 + 7))(v162, 1, 1, v157);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v77 = sub_1CF9E7988();
    v79 = v78;
    MEMORY[0x1D3868CC0](v77);
    v79, v80, v81, v82, v83, v84, v85, v86;
    v87 = aBlock;
    v88 = v151;
    sub_1CEFCCBDC(v75, v151, &unk_1EC4BED20, &unk_1CFA00700);
    v89 = *(v74 + 6);
    v90 = v89(v88, 1, v76);
    v91 = v155;
    if (v90 == 1)
    {
      v92 = v73;
      sub_1CF9E6048();
      if (v89(v88, 1, v76) != 1)
      {
        sub_1CEFCCC44(v88, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v74 + 4))(v155, v88, v76);
    }

    v93 = v163;
    (*(v74 + 2))(v163, v91, v76);
    v94 = v152;
    *(v93 + *(v152 + 20)) = v73;
    v95 = v93 + *(v94 + 24);
    *v95 = "DB queue wait";
    *(v95 + 8) = 13;
    *(v95 + 16) = 2;
    v96 = v73;
    v97 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v98 = v91;
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_1CF9FA450;
    *(v99 + 56) = MEMORY[0x1E69E6158];
    *(v99 + 64) = sub_1CEFD51C4();
    *(v99 + 32) = v87;
    sub_1CF9E6028(v97, &dword_1CEFC7000, v96, "DB queue wait", 13, 2, v93, "%s", 2);
    v99, v100, v101, v102, v103, v104, v105, v106;
    (*(v74 + 1))(v98, v76);
    sub_1CEFCCC44(v162, &unk_1EC4BED20, &unk_1CFA00700);
    v157 = v172[21];
    v162 = v172[8];
    (*(v165 + 56))(v166, 1, 1, v170);
    v107 = v154;
    sub_1CEFE4F8C(v93, v154, type metadata accessor for Signpost);
    v108 = (*(v153 + 80) + 16) & ~*(v153 + 80);
    v109 = (v144 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
    v110 = swift_allocObject();
    sub_1CEFE4D98(v107, v110 + v108, type metadata accessor for Signpost);
    v111 = (v110 + v109);
    v156 = sub_1CF5543A4;
    v112 = v168;
    *v111 = sub_1CF5543A4;
    v111[1] = v112;
    v113 = v158;
    sub_1CEFE4F8C(v93, v158, type metadata accessor for Signpost);
    v114 = (v109 + 23) & 0xFFFFFFFFFFFFFFF8;
    v115 = (v114 + 15) & 0xFFFFFFFFFFFFFFF8;
    v116 = (v115 + 25) & 0xFFFFFFFFFFFFFFF8;
    v117 = (v116 + 23) & 0xFFFFFFFFFFFFFFF8;
    v118 = swift_allocObject();
    sub_1CEFE4D98(v113, v118 + v108, type metadata accessor for Signpost);
    v119 = (v118 + v109);
    *v119 = sub_1CF045408;
    v119[1] = 0;
    *(v118 + v114) = v172;
    v120 = v118 + v115;
    *v120 = "evict(_:request:qos:evictionReason:completion:)";
    *(v120 + 8) = 47;
    *(v120 + 16) = 2;
    v121 = (v118 + v116);
    v122 = v165;
    v123 = v168;
    *v121 = v156;
    v121[1] = v123;
    v124 = v118;
    v125 = (v118 + v117);
    v126 = v170;
    v127 = v148;
    *v125 = sub_1CF55441C;
    v125[1] = v127;
    v128 = swift_allocObject();
    v128[2] = sub_1CF554408;
    v128[3] = v110;
    v129 = v157;
    v128[4] = v157;
    swift_retain_n();

    v172 = v110;

    v130 = fpfs_current_log();
    v158 = *(v129 + 16);
    v131 = v159;
    sub_1CEFCCBDC(v166, v159, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v122 + 48))(v131, 1, v126) == 1)
    {
      sub_1CEFCCC44(v131, &unk_1EC4BE370, qword_1CFA01B30);
      v132 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v133 = v149;
      sub_1CF9E6438();
      (*(v122 + 8))(v131, v126);
      v132 = sub_1CF9E63C8();
      (*(v160 + 8))(v133, v161);
    }

    v134 = v122;
    v135 = swift_allocObject();
    v135[2] = v130;
    v135[3] = sub_1CF4858EC;
    v135[4] = v124;
    v176 = sub_1CF2BA17C;
    v177 = v135;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = v7;
    v174 = sub_1CEFCA444;
    v175 = &block_descriptor_459;
    v136 = _Block_copy(&aBlock);
    v137 = v130;

    v176 = sub_1CF2BA180;
    v177 = v128;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = v7;
    v174 = sub_1CEFCA444;
    v175 = &block_descriptor_462;
    v138 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v158, v162, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v132, v136, v138);
    _Block_release(v138);
    _Block_release(v136);

    sub_1CEFCCC44(v166, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007C58(v163, type metadata accessor for Signpost);
    v139 = v167;
    v140 = fpfs_adopt_log();

    (*(v134 + 8))(v164, v170);
    v55 = v169;
LABEL_19:
    v141 = v55;
    v142 = v171;
    v143 = [v171 totalUnitCount];
    if (!__OFADD__(v143, 1))
    {
      break;
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  [v142 setTotalUnitCount_];
  [v142 addChild:v141 withPendingUnitCount:1];
}

void sub_1CF54B9FC(void *a1, void (*a2)(void *), void *a3, void *a4, uint64_t a5, unint64_t a6)
{
  v127 = a5;
  v128 = a6;
  v131 = a4;
  v132 = a2;
  v133 = a3;
  v7 = sub_1CF9E63D8();
  v126 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v111 - v14;
  v16 = sub_1CF9E6068();
  v129 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v111 - v23);
  v25 = type metadata accessor for Signpost(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  if (a1)
  {
    v34 = a1;
    v132(a1);
  }

  else
  {
    v115 = v21;
    v116 = v29;
    v124 = v24;
    v117 = v18;
    v118 = v33;
    v119 = v32;
    v120 = v16;
    v121 = v31;
    v122 = v12;
    v112 = v9;
    v113 = v7;
    v125 = &v111 - v30;
    v130 = v15;
    v35 = *v127;
    v36 = *(v127 + 8);
    v37 = swift_allocObject();
    v38 = v133;
    *(v37 + 16) = v132;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    *(v39 + 16) = v35;
    *(v39 + 24) = v36;
    v40 = v128;
    v41 = v131;
    *(v39 + 32) = v128;
    *(v39 + 40) = v41;
    *(v39 + 48) = sub_1CF552D44;
    *(v39 + 56) = v37;
    v127 = v39;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1CF552D44;
    *(v42 + 24) = v37;
    v132 = v42;
    v123 = v37;
    swift_retain_n();

    sub_1CEFD09A0(v40);

    v133 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v43 = qword_1EDEBBE40;
    v44 = v129;
    v45 = v124;
    v46 = v120;
    v129[7](v124, 1, 1, v120);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v47 = sub_1CF9E7988();
    v49 = v48;
    MEMORY[0x1D3868CC0](v47);
    v49, v50, v51, v52, v53, v54, v55, v56;
    v114 = *(&aBlock + 1);
    v128 = aBlock;
    v57 = v115;
    sub_1CEFCCBDC(v45, v115, &unk_1EC4BED20, &unk_1CFA00700);
    v58 = v44[6];
    v59 = v58(v57, 1, v46);
    v60 = v117;
    if (v59 == 1)
    {
      v61 = v43;
      sub_1CF9E6048();
      if (v58(v57, 1, v46) != 1)
      {
        sub_1CEFCCC44(v57, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (v44[4])(v117, v57, v46);
    }

    v62 = v125;
    (v44[2])(v125, v60, v46);
    v63 = v116;
    *(v62 + *(v116 + 20)) = v43;
    v64 = v62 + *(v63 + 24);
    *v64 = "DB queue wait";
    *(v64 + 8) = 13;
    *(v64 + 16) = 2;
    v65 = v43;
    v66 = v60;
    v67 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1CF9FA450;
    *(v68 + 56) = MEMORY[0x1E69E6158];
    *(v68 + 64) = sub_1CEFD51C4();
    v69 = v114;
    *(v68 + 32) = v128;
    *(v68 + 40) = v69;
    sub_1CF9E6028(v67, &dword_1CEFC7000, v65, "DB queue wait", 13, 2, v62, "%s", 2);
    v68, v70, v71, v72, v73, v74, v75, v76;
    (v44[1])(v66, v46);
    sub_1CEFCCC44(v124, &unk_1EC4BED20, &unk_1CFA00700);
    v77 = v41[8];
    v128 = v41[21];
    v129 = v77;
    v120 = sub_1CF9E6448();
    v124 = *(v120 - 8);
    v124[7](v130, 1, 1, v120);
    v78 = v119;
    sub_1CEFE4F8C(v62, v119, type metadata accessor for Signpost);
    v79 = (*(v118 + 80) + 16) & ~*(v118 + 80);
    v80 = (v26 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = swift_allocObject();
    sub_1CEFE4D98(v78, v81 + v79, type metadata accessor for Signpost);
    v82 = (v81 + v80);
    v119 = sub_1CF552D94;
    v83 = v132;
    *v82 = sub_1CF552D94;
    v82[1] = v83;
    v84 = v121;
    sub_1CEFE4F8C(v62, v121, type metadata accessor for Signpost);
    v85 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
    v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
    v87 = (v86 + 25) & 0xFFFFFFFFFFFFFFF8;
    v88 = swift_allocObject();
    sub_1CEFE4D98(v84, v88 + v79, type metadata accessor for Signpost);
    v89 = (v88 + v80);
    *v89 = sub_1CF045408;
    v89[1] = 0;
    v90 = v132;
    *(v88 + v85) = v131;
    v91 = v120;
    v92 = v88 + v86;
    v93 = v124;
    *v92 = "propagateToFP(itemID:request:completion:)";
    *(v92 + 8) = 41;
    *(v92 + 16) = 2;
    v94 = (v88 + v87);
    *v94 = v119;
    v94[1] = v90;
    v95 = v88;
    v96 = (v88 + ((v87 + 23) & 0xFFFFFFFFFFFFFFF8));
    v97 = v127;
    *v96 = sub_1CF552D70;
    v96[1] = v97;
    v98 = swift_allocObject();
    v98[2] = sub_1CF554408;
    v98[3] = v81;
    v99 = v128;
    v98[4] = v128;
    swift_retain_n();

    v100 = v99;

    v101 = fpfs_current_log();
    v131 = *(v100 + 16);
    v102 = v122;
    sub_1CEFCCBDC(v130, v122, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v93 + 48))(v102, 1, v91) == 1)
    {
      sub_1CEFCCC44(v102, &unk_1EC4BE370, qword_1CFA01B30);
      v103 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v104 = v112;
      sub_1CF9E6438();
      (*(v93 + 8))(v102, v91);
      v103 = sub_1CF9E63C8();
      (*(v126 + 8))(v104, v113);
    }

    v105 = swift_allocObject();
    v105[2] = v101;
    v105[3] = sub_1CF4858EC;
    v105[4] = v95;
    v137 = sub_1CF2BA17C;
    v138 = v105;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v135 = sub_1CEFCA444;
    v136 = &block_descriptor_419;
    v106 = _Block_copy(&aBlock);
    v107 = v101;

    v137 = sub_1CF2BA180;
    v138 = v98;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v135 = sub_1CEFCA444;
    v136 = &block_descriptor_422;
    v108 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v131, v129, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v103, v106, v108);
    _Block_release(v108);
    _Block_release(v106);

    sub_1CEFCCC44(v130, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007C58(v125, type metadata accessor for Signpost);
    v109 = v133;
    v110 = fpfs_adopt_log();
  }
}

double sub_1CF54C5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(*(a1 + 32) + 16);
  v19 = 2;
  sub_1CEFCCBDC(a5, &v18 - v11, &qword_1EC4C5220, &qword_1CFA0A270);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a3;
  v15[4] = a4;
  sub_1CEFE55D0(v12, v15 + v14, &qword_1EC4C5220, &qword_1CFA0A270);
  v16 = *(*v13 + 824);

  v16(v18, &v19, sub_1CF554410, v15);

  return result;
}

void sub_1CF54C7A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v117 = a4;
  v122 = a3;
  v107 = sub_1CF9E63D8();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v118 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v105 - v11;
  v109 = sub_1CF9E6068();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v105 - v17;
  v110 = type metadata accessor for Signpost(0);
  v113 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v116 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v114 = v22;
  v115 = (&v105 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v121 = &v105 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v105 - v28;
  sub_1CEFCCBDC(a5, &v105 - v28, &qword_1EC4C5220, &qword_1CFA0A270);
  v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v31 = (v27 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  sub_1CEFE55D0(v29, v32 + v30, &qword_1EC4C5220, &qword_1CFA0A270);
  *(v32 + v31) = a2;
  v120 = v32;
  v33 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
  v34 = v122;
  v35 = v117;
  *v33 = v122;
  v33[1] = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;
  v122 = v36;
  swift_retain_n();
  v119 = a2;

  v117 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v37 = qword_1EDEBBE40;
  v38 = v108;
  v39 = v109;
  (*(v108 + 56))(v18, 1, 1, v109);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v40 = sub_1CF9E7988();
  v42 = v41;
  MEMORY[0x1D3868CC0](v40);
  v42, v43, v44, v45, v46, v47, v48, v49;
  v50 = aBlock;
  sub_1CEFCCBDC(v18, v15, &unk_1EC4BED20, &unk_1CFA00700);
  v51 = *(v38 + 48);
  v52 = v51(v15, 1, v39);
  v111 = v18;
  if (v52 == 1)
  {
    v53 = v37;
    v54 = v112;
    sub_1CF9E6048();
    if (v51(v15, 1, v39) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v54 = v112;
    (*(v38 + 32))(v112, v15, v39);
  }

  v55 = *(v38 + 16);
  v56 = v38;
  v57 = v121;
  v55(v121, v54, v39);
  v58 = v110;
  *(v57 + *(v110 + 20)) = v37;
  v59 = v57 + *(v58 + 24);
  *v59 = "DB queue wait";
  *(v59 + 8) = 13;
  *(v59 + 16) = 2;
  v60 = v37;
  v61 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v62 = v54;
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1CF9FA450;
  *(v63 + 56) = MEMORY[0x1E69E6158];
  *(v63 + 64) = sub_1CEFD51C4();
  *(v63 + 32) = v50;
  sub_1CF9E6028(v61, &dword_1CEFC7000, v60, "DB queue wait", 13, 2, v57, "%s", 2);
  v63, v64, v65, v66, v67, v68, v69, v70;
  (*(v56 + 8))(v62, v39);
  sub_1CEFCCC44(v111, &unk_1EC4BED20, &unk_1CFA00700);
  v71 = *(v119 + 64);
  v111 = *(v119 + 168);
  v112 = v71;
  v109 = sub_1CF9E6448();
  v110 = *(v109 - 8);
  (*(v110 + 56))(v123, 1, 1, v109);
  v72 = v115;
  sub_1CEFE4F8C(v57, v115, type metadata accessor for Signpost);
  v73 = (*(v113 + 80) + 16) & ~*(v113 + 80);
  v74 = (v114 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  sub_1CEFE4D98(v72, v75 + v73, type metadata accessor for Signpost);
  v76 = (v75 + v74);
  v115 = sub_1CF5543A4;
  v77 = v122;
  *v76 = sub_1CF5543A4;
  v76[1] = v77;
  v78 = v116;
  sub_1CEFE4F8C(v57, v116, type metadata accessor for Signpost);
  v79 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 25) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  v83 = v78;
  v84 = v109;
  sub_1CEFE4D98(v83, v82 + v73, type metadata accessor for Signpost);
  v85 = (v82 + v74);
  v86 = v110;
  *v85 = sub_1CF045408;
  v85[1] = 0;
  *(v82 + v79) = v119;
  v87 = v82 + v80;
  *v87 = "evict(_:request:evictionReason:progress:completionHandler:)";
  *(v87 + 8) = 59;
  *(v87 + 16) = 2;
  v88 = (v82 + v81);
  v89 = v122;
  *v88 = v115;
  v88[1] = v89;
  v90 = (v82 + ((v81 + 23) & 0xFFFFFFFFFFFFFFF8));
  v91 = v120;
  *v90 = sub_1CF552C30;
  v90[1] = v91;
  v92 = swift_allocObject();
  v92[2] = sub_1CF554408;
  v92[3] = v75;
  v93 = v111;
  v92[4] = v111;
  swift_retain_n();

  v119 = v75;

  v94 = fpfs_current_log();
  v95 = *(v93 + 16);
  v96 = v118;
  sub_1CEFCCBDC(v123, v118, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v86 + 48))(v96, 1, v84) == 1)
  {
    sub_1CEFCCC44(v96, &unk_1EC4BE370, qword_1CFA01B30);
    v97 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v98 = v105;
    sub_1CF9E6438();
    (*(v86 + 8))(v96, v84);
    v97 = sub_1CF9E63C8();
    (*(v106 + 8))(v98, v107);
  }

  v99 = swift_allocObject();
  v99[2] = v94;
  v99[3] = sub_1CF4858EC;
  v99[4] = v82;
  v127 = sub_1CF2BA17C;
  v128 = v99;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v125 = sub_1CEFCA444;
  v126 = &block_descriptor_363;
  v100 = _Block_copy(&aBlock);
  v101 = v94;

  v127 = sub_1CF2BA180;
  v128 = v92;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v125 = sub_1CEFCA444;
  v126 = &block_descriptor_366;
  v102 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v95, v112, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v97, v100, v102);
  _Block_release(v102);
  _Block_release(v100);

  sub_1CEFCCC44(v123, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CF007C58(v121, type metadata accessor for Signpost);
  v103 = v117;
  v104 = fpfs_adopt_log();
}

void sub_1CF54D380(void *a1, uint64_t a2, unint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v64 = a5;
  v65 = a4;
  v73 = a1;
  v75 = sub_1CF9E5CF8();
  v7 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
  inited = swift_initStackObject();
  v10 = MEMORY[0x1E69E7CC0];
  inited[2] = MEMORY[0x1E69E7CC0];
  inited[3] = v10;
  inited[4] = v10;
  inited[5] = v10;
  v11 = (inited + 5);
  v69 = inited;
  inited[6] = 0;
  v12 = *a2;
  v77 = *(a2 + 8);
  v105 = 0;
  v76 = (inited + 4);
  swift_beginAccess();
  v13 = sub_1CF1F8144(0, 1, 1, v10);
  v15 = *v13->tree;
  v14 = *v13->tester;
  v16 = (v15 + 1);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1CF1F8144((v14 > 1), (v15 + 1), 1, v13);
  }

  *v13->tree = v16;
  v17 = v13 + 120 * v15;
  v18 = v12;
  *(v17 + 4) = v12;
  v17[40] = v77;
  v17[41] = 0;
  *(v17 + 6) = 0;
  *(v17 + 7) = 0;
  *(v17 + 8) = 0;
  *(v17 + 9) = 0xB000000000000000;
  *(v17 + 5) = 0u;
  *(v17 + 6) = 0u;
  *(v17 + 56) = 257;
  *(v17 + 73) = 2573;
  *v76 = v13;
  swift_endAccess();
  v19 = *(a3 + 81);
  v70 = a3;
  if (v19 < 0 && *(a2 + *(type metadata accessor for VFSItem(0) + 28)) - 1 > 1)
  {
    v20 = v74;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v22 = v21;
    (*(v7 + 8))(v20, v75);
    v24 = v22 * 1000000000.0;
    v25 = fabs(v22 * 1000000000.0);
    if (v25 > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_30;
    }

    v25 = 0xC3E0000000000001;
    if (v24 <= -9.22337204e18)
    {
      goto LABEL_31;
    }

    v25 = 0x43E0000000000000;
    if (v24 >= 9.22337204e18)
    {
      goto LABEL_32;
    }

    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9D0, &qword_1CF9FAD60);
    a3 = swift_allocObject();
    *(a3 + 152) = v77;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *(a3 + 48) = 1;
    *(a3 + 7) = 0u;
    *(a3 + 9) = 0u;
    a3[11] = 0;
    *(a3 + 6) = xmmword_1CF9FEC30;
    *(a3 + 112) = 0;
    a3[15] = 0;
    a3[16] = v26;
    a3[17] = 2;
    a3[18] = v18;
    swift_beginAccess();

    v23 = sub_1CF1F8120(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v18 = *v23->tree;
    v25 = *v23->tester;
    v16 = (v18 + 1);
    if (v18 >= v25 >> 1)
    {
      goto LABEL_33;
    }

    goto LABEL_10;
  }

  v68 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v92 = 0;
    v27 = v74;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v29 = v28;
    v31 = *(v7 + 8);
    v7 += 8;
    v30 = v31;
    v72 = v7;
    v31(v27, v75);
    v32 = v29 * 1000000000.0;
    if (COERCE__INT64(fabs(v29 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v32 <= -9.22337204e18)
    {
      goto LABEL_24;
    }

    if (v32 < 9.22337204e18)
    {
      a2 = v32;
      a3 = &v93;
      v16 = &v79;
      v93 = v18;
      v94 = v77;
      v7 = v92;
      v95 = v92;
      v96 = v90;
      v97 = v91;
      v66 = xmmword_1CFA00210;
      v98 = xmmword_1CFA00210;
      v99 = v32;
      v100 = v88;
      *v101 = v89[0];
      *&v101[10] = *(v89 + 10);
      v102 = 0;
      *v104 = v87;
      v103 = v86;
      v104[16] = 9;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v30;
      v27 = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    v13 = sub_1CF1F8144(0, (*v13->tree + 1), 1, v13);
LABEL_15:
    v35 = *v13->tree;
    v34 = *v13->tester;
    if (v35 >= v34 >> 1)
    {
      v13 = sub_1CF1F8144((v34 > 1), (v35 + 1), 1, v13);
      v7 = v92;
    }

    *v13->tree = v35 + 1;
    v36 = v13 + 120 * v35;
    v37 = *a3;
    v38 = *(a3 + 1);
    v39 = *(a3 + 3);
    *(v36 + 4) = *(a3 + 2);
    *(v36 + 5) = v39;
    *(v36 + 2) = v37;
    *(v36 + 3) = v38;
    v40 = *(a3 + 4);
    v41 = *(a3 + 5);
    v42 = *(a3 + 6);
    *(v36 + 36) = *&v104[13];
    *(v36 + 7) = v41;
    *(v36 + 8) = v42;
    *(v36 + 6) = v40;
    *v76 = v13;
    swift_endAccess();
    v79 = v27;
    v80 = v77;
    v81 = v7;
    *(v16 + 10) = v90;
    v82 = v91;
    *(v16 + 1) = v66;
    v83 = a2;
    v43 = v89[0];
    *(v16 + 5) = v88;
    *(v16 + 7) = v43;
    *(v16 + 66) = *(v16 + 178);
    v84 = 0;
    v44 = v86;
    *(v16 + 99) = v87;
    *(v16 + 83) = v44;
    v85 = 9;
    v16 = &qword_1CF9FE560;
    sub_1CEFCCBDC(&v93, &v78, &qword_1EC4BE6D0, &qword_1CF9FE560);
    sub_1CEFCCC44(&v79, &qword_1EC4BE6D0, &qword_1CF9FE560);
    v11 = v73[3];
    a2 = v73[4];
    v18 = __swift_project_boxed_opaque_existential_1(v73, v11);
    v45 = v74;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v47 = v46;
    v67(v45, v75);
    v48 = v47 * 1000000000.0;
    v25 = fabs(v47 * 1000000000.0);
    if (v25 > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_28;
    }

    v25 = 0xC3E0000000000001;
    if (v48 > -9.22337204e18)
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v23 = sub_1CF1F8120((v25 > 1), v16, 1, v23);
LABEL_10:
    *v23->tree = v16;
    *(&v23[1].super.isa + v18) = a3;
    v68 = v23;
    *v11 = v23;
    swift_endAccess();

    v18 = *a2;
    v77 = *(a2 + 8);
  }

  v25 = 0x43E0000000000000;
  if (v48 >= 9.22337204e18)
  {
    goto LABEL_29;
  }

  v49 = v71;
  sub_1CF521850(v69, v48, v18, v11, a2);
  if (!v49)
  {
    v65(0);
  }

  v13, v50, v51, v52, v53, v54, v55, v56;
  swift_setDeallocating();
  v68, v57, v58, v59, v60, v61, v62, v63;
}

uint64_t sub_1CF54DA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(void *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t))
{
  sub_1CEFCCBDC(a1, __src, &qword_1EC4C0700, &qword_1CFA05B10);
  if (!*&__src[24])
  {
    v17 = sub_1CEFCCC44(__src, &qword_1EC4C0700, &qword_1CFA05B10);
    return a9(v17);
  }

  sub_1CF054EA0(__src, v26);
  v12 = a2 + *(type metadata accessor for VFSItem(0) + 28);
  if ((*(v12 + *(type metadata accessor for ItemMetadata(0) + 80)) & 1) == 0)
  {
LABEL_9:
    v17 = __swift_destroy_boxed_opaque_existential_1(v26);
    return a9(v17);
  }

  v13 = v27;
  v14 = v28;
  v15 = __swift_project_boxed_opaque_existential_1(v26, v27);
  v16 = *(a4 + 8);
  v23 = *a4;
  v24 = v16;
  sub_1CF68DDB0(&v23, v15, v13, v14, __src);
  memcpy(__dst, __src, 0x208uLL);
  v18 = sub_1CF08B99C(__dst);
  if (v18 == 1)
  {
    memcpy(v21, __src, sizeof(v21));
LABEL_8:
    sub_1CEFCCC44(v21, &unk_1EC4BFC20, &unk_1CFA0A290);
    goto LABEL_9;
  }

  v19 = memcpy(v21, __src, sizeof(v21));
  if (v21[24] >> 60 == 11)
  {
    goto LABEL_8;
  }

  a5(v19);
  sub_1CEFCCC44(v21, &unk_1EC4BFC20, &unk_1CFA0A290);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

void *sub_1CF54DC70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, int a7, char *a8, BOOL *a9)
{
  v61 = a7;
  v60[0] = a3;
  v15 = a1[3];
  v14 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  result = sub_1CF68E230(v60, v16, v15, v14, __src);
  if (!v9)
  {
    v18 = a4;
    v19 = v61;
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v57, __src, sizeof(v57));
      return sub_1CEFCCC44(v57, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }

    memcpy(v57, __src, sizeof(v57));
    v20 = v57[64];
    v21 = (v18 + *(type metadata accessor for VFSItem(0) + 28));
    if ((v21[*(type metadata accessor for ItemMetadata(0) + 80)] & 1) != 0 && v57[50] >> 60 != 11)
    {
      a5();
      return sub_1CEFCCC44(v57, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }

    v22 = v20;
    v23 = a1[3];
    v24 = a1[4];
    v25 = __swift_project_boxed_opaque_existential_1(a1, v23);
    (*(**(a2 + 40) + 264))(&v41, v60, v25, v23, v24);
    v35[12] = v53;
    v35[13] = v54;
    v35[14] = v55;
    v35[8] = v49;
    v35[9] = v50;
    v35[10] = v51;
    v35[11] = v52;
    v35[4] = v45;
    v35[5] = v46;
    v35[6] = v47;
    v35[7] = v48;
    v35[0] = v41;
    v35[1] = v42;
    v35[2] = v43;
    v35[3] = v44;
    v37[12] = v53;
    v38 = v54;
    v39 = v55;
    v37[8] = v49;
    v37[9] = v50;
    v37[10] = v51;
    v37[11] = v52;
    v37[4] = v45;
    v37[5] = v46;
    v37[6] = v47;
    v37[7] = v48;
    v37[0] = v41;
    v37[1] = v42;
    v36 = v56;
    v40 = v56;
    v37[2] = v43;
    v37[3] = v44;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v37) == 1)
    {
      return sub_1CEFCCC44(v57, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    }

    else
    {
      v26 = *(a2 + 80);
      if ((v26 & 0x20000) != 0)
      {
        v27 = 3;
      }

      else
      {
        v27 = 1;
      }

      if ((v26 & 0x200) != 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = (v26 & 0x20000uLL) >> 16;
      }

      v29 = sub_1CEFF8538(v38, *(&v38 + 1), 0, v28, 1u, v22 & 1);
      sub_1CEFCCC44(v35, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v30 = (v19 == 2) & (v26 >> 20);
      if (v29 == 3)
      {
        v31 = v30;
      }

      else
      {
        v31 = 1;
      }

      *a8 = v31;
      result = sub_1CEFCCC44(v57, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      if (*v21 == 1 && (v30 & 1) == 0)
      {
        v33 = v29 != 3 && v29 != 500;
        *a9 = v33;
      }
    }
  }

  return result;
}

void sub_1CF54DFA4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__n128), uint64_t a8)
{
  v41 = a8;
  v42 = a7;
  v43 = a6;
  v44 = a3;
  v45 = a4;
  v10 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1CF9E5268();
  v36 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E63A8();
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6448();
  v37 = *(v17 - 8);
  v38 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (a2 + *(type metadata accessor for VFSItem(0) + 28));
  v21 = type metadata accessor for ItemMetadata(0);
  v22 = v21;
  if (v20[*(v21 + 80)] == 1 && (*v20 == 1 || v20[*(v21 + 112)] == 1 || !fpfs_supports_partial_materialization() || !*&v20[*(v22 + 108)]))
  {
    v44(0);
  }

  else
  {
    v23 = swift_beginAccess();
    if (*(a5 + 16) == 1 && (*v20 == 1 || v20[*(v22 + 84)]))
    {
      (v42)(v23);
    }

    else
    {
      v24 = swift_allocBox();
      sub_1CEFE4F8C(a2, v25, type metadata accessor for VFSItem);
      type metadata accessor for VFSFileTree(0);
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v27 = *(v26 + 216);
        v28 = swift_allocObject();
        v29 = v44;
        v30 = v45;
        v28[2] = v24;
        v28[3] = v29;
        v28[4] = v30;
        aBlock[4] = sub_1CF554468;
        aBlock[5] = v28;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1CEFCA444;
        aBlock[3] = &block_descriptor_476;
        v31 = _Block_copy(aBlock);

        v32 = v27;

        sub_1CF9E63F8();
        v46 = MEMORY[0x1E69E7CC0];
        sub_1CF00E8B4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
        sub_1CF01049C();
        v33 = v40;
        sub_1CF9E77B8();
        MEMORY[0x1D3869630](0, v19, v16, v31);
        _Block_release(v31);

        (*(v39 + 8))(v16, v33);
        (*(v37 + 8))(v19, v38);
      }

      else
      {

        sub_1CF9E50F8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00E8B4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        sub_1CF9E57D8();
        v34 = sub_1CF9E50D8();
        (*(v36 + 8))(v13, v11);
        v44(v34);
      }
    }
  }
}

void sub_1CF54E500(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v29 = a3;
  v30 = a2;
  v3 = sub_1CF9E6118();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1CF9E5268();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_1CF9E5A58();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VFSItem(0);
  swift_projectBox();
  swift_beginAccess();
  sub_1CF25116C(v13);
  swift_endAccess();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1CEFCCC44(v13, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00E8B4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v18 = sub_1CF9E50D8();
    (*(v8 + 8))(v10, v7);
    v30(v18);
  }

  else
  {
    v19 = v30;
    (*(v15 + 32))(v17, v13, v14);
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v21 = sub_1CF9E6108();
    v22 = sub_1CF9E72A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1CEFC7000, v21, v22, "Should not procedd with eviction due to content policy prevention", v23, 2u);
      MEMORY[0x1D386CDC0](v23, -1, -1);
    }

    (*(v27 + 8))(v5, v28);
    v24 = sub_1CF9E5928();
    v25 = FPMissingAllowsEvictingCapabilitiesError();

    v19(v25);
    (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_1CF54E97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v6);
  v10 = sub_1CF9E7F98();
  (*(v5 + 8))(v8, a3);
  return v10;
}

uint64_t objectdestroy_2Tm()
{

  sub_1CF540FDC(*(v0 + 32));

  return swift_deallocObject();
}

void sub_1CF54EAC8(void *a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF532130(a1, (v1 + v4), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1CF54EB94(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + 8);
  v9 = *a3;
  v10 = v5;
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  sub_1CF5AA338(&v9, a4, v8, v6, v7);
}

uint64_t sub_1CF54EC3C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  swift_getAssociatedTypeWitness();
  v10 = *(sub_1CF9E75D8() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  return sub_1CF530E9C(a1, *(v1 + 48), *(v1 + 56), v1 + v8, v1 + v11, *(v1 + v11 + *(v10 + 64)), *(v1 + v11 + *(v10 + 64) + 1), v3, v4, v5, v6);
}

uint64_t sub_1CF54EDA0(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 64);
  v8 = swift_checkMetadataState();
  if (v7(v8, AssociatedConformanceWitness))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = 0x23u >> a2;
    if (a2 > 6u)
    {
      LOBYTE(v9) = 1;
    }
  }

  return v9 & 1;
}

uint64_t sub_1CF54EF04(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v127 = a3;
  v126 = a2;
  v132 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v124 = *(AssociatedTypeWitness - 8);
  v125 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v116 - v12;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  v119 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v116 - v16;
  v121 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v120 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = a4;
  v129 = a6;
  v133[0] = a4;
  v133[1] = a5;
  v122 = a5;
  v123 = a7;
  v133[2] = a6;
  v133[3] = a7;
  v20 = type metadata accessor for ItemLookupResult(0, v133);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v116 - v24;
  v26 = sub_1CF9E6118();
  v27 = v132;
  v130 = *(v26 - 8);
  v131 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v116 - v34;
  if (*(v27 + *(v20 + 56)) == 1)
  {
    v36 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v21 + 16))(v25, v27, v20);
    v37 = v127;
    sub_1CEFD09A0(v127);
    sub_1CEFD09A0(v37);
    v38 = v21;
    v39 = sub_1CF9E6108();
    v40 = sub_1CF9E7298();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v133[0] = v132;
      *v41 = 136315394;
      v42 = v121;
      v43 = *(v121 + 16);
      v126 = v40;
      v44 = v120;
      v45 = v128;
      v43(v120, v25, v128);
      (*(v38 + 8))(v25, v20);
      v46 = v129;
      v47 = sub_1CF9E7F98();
      v49 = v48;
      (*(v42 + 8))(v44, v45);
      v50 = sub_1CEFD0DF0(v47, v49, v133);
      v49, v51, v52, v53, v54, v55, v56, v57;
      *(v41 + 4) = v50;
      *(v41 + 12) = 2080;
      v58 = sub_1CF665B0C(v37, v45, v122, v46, v123);
      v60 = v59;
      sub_1CF540FDC(v37);
      sub_1CF540FDC(v37);
      v61 = sub_1CEFD0DF0(v58, v60, v133);
      v60, v62, v63, v64, v65, v66, v67, v68;
      *(v41 + 14) = v61;
      _os_log_impl(&dword_1CEFC7000, v39, v126, "Found item on disk, but item is not accessible yet %s, request %s", v41, 0x16u);
      v69 = v132;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v69, -1, -1);
      MEMORY[0x1D386CDC0](v41, -1, -1);
LABEL_14:

      (*(v130 + 8))(v35, v131);
      return 0;
    }

    v112 = sub_1CF540FDC(v37);
    (*(v38 + 8))(v25, v20, v112);
    v113 = v37;
LABEL_13:
    sub_1CF540FDC(v113);
    goto LABEL_14;
  }

  v117 = v32;
  if ((v126 & 1) != 0 && (v70 = v119, (*(v119 + 16))(v17, v27 + *(v20 + 52), v15, v33), v71 = (*(*(v14 - 8) + 48))(v17, 1, v14), (*(v70 + 8))(v17, v15), v71 == 1))
  {
    v72 = fpfs_current_or_default_log();
    v35 = v117;
    sub_1CF9E6128();
    v73 = v118;
    (*(v21 + 16))(v118, v27, v20);
    v74 = v127;
    sub_1CEFD09A0(v127);
    sub_1CEFD09A0(v74);
    v75 = v21;
    v39 = sub_1CF9E6108();
    v76 = sub_1CF9E7298();
    if (!os_log_type_enabled(v39, v76))
    {
      v115 = sub_1CF540FDC(v74);
      (*(v75 + 8))(v73, v20, v115);
      v113 = v74;
      goto LABEL_13;
    }

    v77 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v133[0] = v132;
    *v77 = 136315394;
    v78 = v120;
    v79 = v121;
    v80 = v128;
    (*(v121 + 16))(v120, v73, v128);
    (*(v75 + 8))(v73, v20);
    v81 = v129;
    v82 = sub_1CF9E7F98();
    v84 = v83;
    (*(v79 + 8))(v78, v80);
    v85 = sub_1CEFD0DF0(v82, v84, v133);
    v84, v86, v87, v88, v89, v90, v91, v92;
    *(v77 + 4) = v85;
    *(v77 + 12) = 2080;
    v93 = sub_1CF665B0C(v74, v80, v122, v81, v123);
    v95 = v94;
    sub_1CF540FDC(v74);
    sub_1CF540FDC(v74);
    v96 = sub_1CEFD0DF0(v93, v95, v133);
    v95, v97, v98, v99, v100, v101, v102, v103;
    *(v77 + 14) = v96;
    _os_log_impl(&dword_1CEFC7000, v39, v76, "Found item on disk, but item is not reconciled yet %s, request %s", v77, 0x16u);
    v104 = v132;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v104, -1, -1);
    MEMORY[0x1D386CDC0](v77, -1, -1);

    (*(v130 + 8))(v117, v131);
  }

  else
  {
    (*(v129 + 64))(v128, v129, v33);
    v105 = v125;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v107 = (*(AssociatedConformanceWitness + 72))(v105, AssociatedConformanceWitness);
    (*(v124 + 8))(v13, v105);
    if ((v107 & 1) == 0)
    {
      return 1;
    }

    v108 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v109 = sub_1CF9E6108();
    v110 = sub_1CF9E7298();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_1CEFC7000, v109, v110, "Found item on the trash, lookup the root to make sure it's materialized", v111, 2u);
      MEMORY[0x1D386CDC0](v111, -1, -1);
    }

    (*(v130 + 8))(v29, v131);
  }

  return 0;
}

uint64_t sub_1CF54F8BC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_1CF52F30C(a1, v8, v9, v10, v3, v4, v5, v6);
}

uint64_t sub_1CF54F970(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_1CF52EC50(a1, v8, v9, v10, v3, v4, v5, v6);
}

char *sub_1CF54FA6C(uint64_t a1)
{
  v3 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v3;
  v4 = *(_s20ParentIDLookupResultVMa(0, v7) - 8);
  v5 = (*(v4 + 80) + 97) & ~*(v4 + 80);
  return sub_1CF5420D4(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), v1 + v5, *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF54FB28@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for ItemLookupResult(0, v6);
  return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
}

double sub_1CF54FB9C(void *a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 80) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = v1 + ((*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1CF5436E8(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + v2, *v3, *(v3 + 8), *(v3 + 9));
}

double sub_1CF54FC38()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return sub_1CF534F74(v6, v7, v8, v1, v2, v3, v4);
}

void sub_1CF54FCE4(void *a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1CF9E6448() - 8);
  sub_1CF5351C0(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), (v1 + v4), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), (v1 + ((*(v6 + 80) + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v6 + 80))));
}

uint64_t sub_1CF54FE10(void *a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  return sub_1CF5AA338((v1 + v4), v5, v8, v6, v7);
}

uint64_t objectdestroy_53Tm()
{

  sub_1CF540FDC(*(v0 + 24));

  return swift_deallocObject();
}

void sub_1CF550004(void *a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF531774(a1, (v1 + v4), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_59Tm()
{

  sub_1CF540FDC(*(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_1CF550180()
{
  result = qword_1EDEA3730;
  if (!qword_1EDEA3730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEA3730);
  }

  return result;
}

void sub_1CF5501CC(void *a1)
{
  v2 = (*(*(*(v1 + 32) - 8) + 80) + 64) & ~*(*(*(v1 + 32) - 8) + 80);
  v3 = (*(*(*(v1 + 32) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF53E74C(a1, v1 + v2, *(v1 + v3), *(v1 + v3 + 8), *(v1 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 9), *(v1 + ((((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8)), *(v1 + 32), *(v1 + 56));
}

id sub_1CF5503E0(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1CF2B1868(result, a2 & 1);
  }

  return result;
}

double sub_1CF550490(uint64_t a1, char a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v25 = *v5;
  v10 = *(v25 + 616);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - v13;
  v16 = *(v15 + 632);
  if (sub_1CF937C7C(v10, v16))
  {
    if (a2)
    {

      sub_1CF53CA2C(v5, a1, a3, a4);
    }

    else
    {
      v18 = swift_allocObject();
      v24 = v18;
      *(v18 + 16) = a3;
      *(v18 + 24) = a4;
      (*(v11 + 16))(v14, a1, v10);
      v19 = (*(v11 + 80) + 56) & ~*(v11 + 80);
      v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      *(v21 + 2) = v10;
      v22 = v25;
      *(v21 + 3) = *(v25 + 624);
      *(v21 + 4) = v16;
      *(v21 + 5) = *(v22 + 640);
      *(v21 + 6) = v5;
      (*(v11 + 32))(&v21[v19], v14, v10);
      v23 = &v21[v20];
      *v23 = a3;
      *(v23 + 1) = a4;
      swift_retain_n();

      sub_1CF92DB1C("deleteIfNeeded(childOfDeletedItem:duringDiskImport:request:completionHandler:)", 78, 2, 2, sub_1CF2B1548, v24, sub_1CF550740, v21, MEMORY[0x1E69E6370]);
    }
  }

  else
  {
    a3(0, 0);
  }

  return result;
}

uint64_t sub_1CF550740(void *a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 56) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = v1 + ((*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1CF53CEA0(a1, *(v1 + 48), v1 + v2, *v3, *(v3 + 8));
}

uint64_t sub_1CF5508C8(void *a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 56) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF53C294(a1, *(v1 + 48), v1 + v2, *(v1 + v3), *(v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_128Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF550A64(void *a1)
{
  v2 = (*(*(*(v1 + 32) - 8) + 80) + 72) & ~*(*(*(v1 + 32) - 8) + 80);
  v3 = (*(*(*(v1 + 32) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF53EFD0(a1, *(v1 + 64), v1 + v2, *(v1 + v3), *(v1 + v3 + 8), *(v1 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + 32), *(v1 + 56));
}

uint64_t sub_1CF550B04(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_1CF5356C4(a1, v1 + v7, v9, v10, v3, v4, v5);
}

char *sub_1CF550BD8(char *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF535AA0(a1, *(v1 + 48), v1 + v4, *(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v8), *(v1 + v9), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_1CF550CE4(void *a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 48) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF536744(a1, (v1 + v2), *(v1 + v3), *(v1 + v3 + 8), *(v1 + v4), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v5), *(v1 + v5 + 8), *(v1 + v5 + 9), *(v1 + ((v5 + 17) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF550DC8(uint64_t a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 48) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF53733C(a1, (v1 + v2), *(v1 + v3), *(v1 + v3 + 8), *(v1 + v4), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v5), *(v1 + v5 + 8), *(v1 + v5 + 9), *(v1 + ((v5 + 17) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1CF550F28(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v157 = a6;
  v158 = a4;
  LODWORD(v160) = a3;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v161 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v154 - v15;
  v163 = a7;

  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a2);
  sub_1CEFD09A0(a2);

  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E7298();
  v20 = os_log_type_enabled(v18, v19);
  v164 = a5;
  v159 = v11;
  v162 = v12;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v165[0] = v156;
    *v21 = 136315650;
    v22 = swift_beginAccess();
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v25 = NSFileProviderItemIdentifier.description.getter(v23);
      v27 = v26;
      sub_1CEFD0994(v23, v24, 1);
    }

    else
    {
      v167 = *(a1 + 32);
      v168 = v24;
      v25 = VFSItemID.description.getter(v22);
      v27 = v29;
    }

    v30 = sub_1CEFD0DF0(v25, v27, v165);
    v27, v31, v32, v33, v34, v35, v36, v37;
    *(v21 + 4) = v30;
    *(v21 + 12) = 2080;
    v38 = sub_1CEFD11AC(a2);
    v40 = v39;
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);
    v41 = sub_1CEFD0DF0(v38, v40, v165);
    v40, v42, v43, v44, v45, v46, v47, v48;
    v49 = v160;
    v50 = 0xE700000000000000;
    *(v21 + 14) = v41;
    v51 = 0x6E776F6E6B6E75;
    v52 = 0xEA00000000006E6FLL;
    *(v21 + 22) = 2080;
    v53 = 0x697461646E756F66;
    v54 = 0xE200000000000000;
    v55 = 28774;
    if (v49 != 4)
    {
      v55 = 0x705565746F6D6572;
      v54 = 0xEC00000065746164;
    }

    if (v49 != 3)
    {
      v53 = v55;
      v52 = v54;
    }

    v56 = 0xEB00000000657465;
    v57 = 0x6C65446568636163;
    if (v49 != 1)
    {
      v57 = 1919251317;
      v56 = 0xE400000000000000;
    }

    if (v49)
    {
      v51 = v57;
      v50 = v56;
    }

    if (v49 <= 2)
    {
      v58 = v51;
    }

    else
    {
      v58 = v53;
    }

    if (v49 <= 2)
    {
      v59 = v50;
    }

    else
    {
      v59 = v52;
    }

    v60 = sub_1CEFD0DF0(v58, v59, v165);
    v59, v61, v62, v63, v64, v65, v66, v67;
    *(v21 + 24) = v60;
    _os_log_impl(&dword_1CEFC7000, v18, v19, "Request to eviction of content of itemID %s request %s reason %s", v21, 0x20u);
    v68 = v156;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v68, -1, -1);
    MEMORY[0x1D386CDC0](v21, -1, -1);

    v28 = v159;
    v156 = *(v162 + 8);
    v156(v16, v159);
    a5 = v164;
  }

  else
  {
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);

    v156 = *(v12 + 8);
    v156(v16, v11);
    v28 = v11;
  }

  v69 = swift_allocObject();
  v70 = v163;
  *(v69 + 16) = v157;
  *(v69 + 24) = v70;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_1CF5534C4;
  *(v71 + 24) = v69;
  *(v71 + 32) = a5;
  *(v71 + 40) = a2;
  *(v71 + 48) = v160;
  v72 = v158;
  *(v71 + 56) = v158;

  sub_1CEFD09A0(a2);

  v73 = v72;

  sub_1CEFD09A0(a2);

  v160 = v73;

  v74 = fpfs_current_or_default_log();
  v75 = v161;
  sub_1CF9E6128();
  sub_1CEFD09A0(a2);
  sub_1CEFD09A0(a2);

  v76 = sub_1CF9E6108();
  v77 = sub_1CF9E7298();
  if (os_log_type_enabled(v76, v77))
  {
    v155 = v69;
    v78 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v166 = v158;
    *v78 = 136315906;
    v79 = swift_beginAccess();
    v80 = *(a1 + 32);
    v81 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v82 = NSFileProviderItemIdentifier.description.getter(v80);
      v84 = v83;
      sub_1CEFD0994(v80, v81, 1);
    }

    else
    {
      v167 = *(a1 + 32);
      v168 = v81;
      v82 = VFSItemID.description.getter(v79);
      v84 = v85;
    }

    v86 = sub_1CEFD0DF0(v82, v84, &v166);
    v84, v87, v88, v89, v90, v91, v92, v93;
    *(v78 + 4) = v86;
    *(v78 + 12) = 2080;
    *(v78 + 14) = sub_1CEFD0DF0(0xD000000000000013, 0x80000001CFA2C390, &v166);
    *(v78 + 22) = 2080;
    v94 = sub_1CEFD11AC(a2);
    v96 = v95;
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);
    v97 = sub_1CEFD0DF0(v94, v96, &v166);
    v96, v98, v99, v100, v101, v102, v103, v104;
    *(v78 + 24) = v97;
    *(v78 + 32) = 2048;
    *(v78 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v76, v77, "Lookup itemID %s with behavior %s request %s iteration %ld", v78, 0x2Au);
    v105 = v158;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v105, -1, -1);
    MEMORY[0x1D386CDC0](v78, -1, -1);

    v156(v161, v159);
    a5 = v164;
    v69 = v155;
  }

  else
  {
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);

    v156(v75, v28);
  }

  swift_beginAccess();
  v106 = *(a1 + 32);
  v107 = *(a1 + 40);
  if (*(a1 + 41))
  {
    v108 = qword_1EDEA34B0;
    v109 = v106;
    if (v108 != -1)
    {
      swift_once();
    }

    v110 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v112 = v111;
    v114 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v120 = v113;
    if (v110 == v114 && v112 == v113)
    {
      v112, v113, v114, v115, v116, v117, v118, v119;
      v120, v121, v122, v123, v124, v125, v126, v127;
      sub_1CEFD0994(v106, v107, 1);
LABEL_35:
      sub_1CF90CAC8(a2, sub_1CF554414, v71);
      v128 = v160;
      goto LABEL_41;
    }

    v129 = sub_1CF9E8048();
    v112, v130, v131, v132, v133, v134, v135, v136;
    v120, v137, v138, v139, v140, v141, v142, v143;
    sub_1CEFD0994(v106, v107, 1);
    if (v129)
    {
      goto LABEL_35;
    }
  }

  else if (!v106 && v107 == 2)
  {
    goto LABEL_35;
  }

  v155 = v69;
  if (((a2 >> 58) & 0x3C | (a2 >> 1) & 3) == 0x1E)
  {
    v144 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v145 = v144;
  }

  else
  {
    v146 = swift_allocObject();
    *(v146 + 16) = a2;
    v145 = v146 | 0x7000000000000004;
    v144 = a2;
  }

  sub_1CEFD09A0(v144);
  v147 = swift_allocObject();
  *(v147 + 16) = sub_1CF554414;
  *(v147 + 24) = v71;
  *(v147 + 32) = a5;
  *(v147 + 40) = 0;
  *(v147 + 48) = a2;
  *(v147 + 56) = a1;
  *(v147 + 64) = 0;
  v148 = v160;
  *(v147 + 72) = v160;
  *(v147 + 80) = 0;
  v149 = swift_allocObject();
  *(v149 + 16) = a1;
  *(v149 + 24) = a5;
  *(v149 + 32) = 0;
  *(v149 + 40) = sub_1CF554418;
  *(v149 + 48) = v147;
  *(v149 + 56) = v145;
  v150 = swift_allocObject();
  *(v150 + 16) = sub_1CF554418;
  *(v150 + 24) = v147;
  v151 = *(*v164 + 472);

  sub_1CEFD09A0(a2);
  v128 = v148;

  v152 = v148;

  sub_1CEFD09A0(v145);
  v151("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v150, sub_1CF55444C, v149);

  sub_1CF540FDC(v145);
LABEL_41:

  sub_1CF540FDC(a2);

  return result;
}

double sub_1CF55197C(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v158 = a6;
  v159 = a4;
  LODWORD(v160) = a3;
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v161 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v156 - v17;
  v165 = a7;

  v164 = a8;

  v19 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a2);
  sub_1CEFD09A0(a2);

  v20 = sub_1CF9E6108();
  v21 = sub_1CF9E7298();
  v22 = os_log_type_enabled(v20, v21);
  v166 = a5;
  v162 = v14;
  v163 = v13;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v167[0] = v157;
    *v23 = 136315650;
    v24 = swift_beginAccess();
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v27 = NSFileProviderItemIdentifier.description.getter(v25);
      v29 = v28;
      sub_1CEFD0994(v25, v26, 1);
    }

    else
    {
      v169 = *(a1 + 32);
      v170 = v26;
      v27 = VFSItemID.description.getter(v24);
      v29 = v30;
    }

    v31 = sub_1CEFD0DF0(v27, v29, v167);
    v29, v32, v33, v34, v35, v36, v37, v38;
    *(v23 + 4) = v31;
    *(v23 + 12) = 2080;
    v39 = sub_1CEFD11AC(a2);
    v41 = v40;
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);
    v42 = sub_1CEFD0DF0(v39, v41, v167);
    v41, v43, v44, v45, v46, v47, v48, v49;
    v50 = v160;
    v51 = 0xE700000000000000;
    *(v23 + 14) = v42;
    v52 = 0x6E776F6E6B6E75;
    v53 = 0xEA00000000006E6FLL;
    *(v23 + 22) = 2080;
    v54 = 0x697461646E756F66;
    v55 = 0xE200000000000000;
    v56 = 28774;
    if (v50 != 4)
    {
      v56 = 0x705565746F6D6572;
      v55 = 0xEC00000065746164;
    }

    if (v50 != 3)
    {
      v54 = v56;
      v53 = v55;
    }

    v57 = 0xEB00000000657465;
    v58 = 0x6C65446568636163;
    if (v50 != 1)
    {
      v58 = 1919251317;
      v57 = 0xE400000000000000;
    }

    if (v50)
    {
      v52 = v58;
      v51 = v57;
    }

    if (v50 <= 2)
    {
      v59 = v52;
    }

    else
    {
      v59 = v54;
    }

    if (v50 <= 2)
    {
      v60 = v51;
    }

    else
    {
      v60 = v53;
    }

    v61 = sub_1CEFD0DF0(v59, v60, v167);
    v60, v62, v63, v64, v65, v66, v67, v68;
    *(v23 + 24) = v61;
    _os_log_impl(&dword_1CEFC7000, v20, v21, "Request to eviction of content of itemID %s request %s reason %s", v23, 0x20u);
    v69 = v157;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v69, -1, -1);
    MEMORY[0x1D386CDC0](v23, -1, -1);

    v157 = *(v162 + 8);
    v157(v18, v163);
    a5 = v166;
  }

  else
  {
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);

    v157 = *(v14 + 8);
    v157(v18, v13);
  }

  v70 = swift_allocObject();
  v72 = v164;
  v71 = v165;
  v70[2] = v158;
  v70[3] = v71;
  v70[4] = v72;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_1CF5523F4;
  *(v73 + 24) = v70;
  *(v73 + 32) = a5;
  *(v73 + 40) = a2;
  *(v73 + 48) = v160;
  v74 = v159;
  *(v73 + 56) = v159;

  sub_1CEFD09A0(a2);

  v75 = v74;

  sub_1CEFD09A0(a2);

  v160 = v75;

  v76 = fpfs_current_or_default_log();
  v77 = v161;
  sub_1CF9E6128();
  sub_1CEFD09A0(a2);
  sub_1CEFD09A0(a2);

  v78 = sub_1CF9E6108();
  v79 = sub_1CF9E7298();
  if (os_log_type_enabled(v78, v79))
  {
    v156 = v70;
    v80 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v168 = v159;
    *v80 = 136315906;
    v81 = swift_beginAccess();
    v82 = *(a1 + 32);
    v83 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v84 = NSFileProviderItemIdentifier.description.getter(v82);
      v86 = v85;
      sub_1CEFD0994(v82, v83, 1);
    }

    else
    {
      v169 = *(a1 + 32);
      v170 = v83;
      v84 = VFSItemID.description.getter(v81);
      v86 = v87;
    }

    v88 = sub_1CEFD0DF0(v84, v86, &v168);
    v86, v89, v90, v91, v92, v93, v94, v95;
    *(v80 + 4) = v88;
    *(v80 + 12) = 2080;
    *(v80 + 14) = sub_1CEFD0DF0(0xD000000000000013, 0x80000001CFA2C390, &v168);
    *(v80 + 22) = 2080;
    v96 = sub_1CEFD11AC(a2);
    v98 = v97;
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);
    v99 = sub_1CEFD0DF0(v96, v98, &v168);
    v98, v100, v101, v102, v103, v104, v105, v106;
    *(v80 + 24) = v99;
    *(v80 + 32) = 2048;
    *(v80 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v78, v79, "Lookup itemID %s with behavior %s request %s iteration %ld", v80, 0x2Au);
    v107 = v159;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v107, -1, -1);
    MEMORY[0x1D386CDC0](v80, -1, -1);

    v157(v161, v163);
    a5 = v166;
    v70 = v156;
  }

  else
  {
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);

    v157(v77, v163);
  }

  swift_beginAccess();
  v108 = *(a1 + 32);
  v109 = *(a1 + 40);
  if (*(a1 + 41))
  {
    v110 = qword_1EDEA34B0;
    v111 = v108;
    if (v110 != -1)
    {
      swift_once();
    }

    v112 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v114 = v113;
    v116 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v122 = v115;
    if (v112 == v116 && v114 == v115)
    {
      v114, v115, v116, v117, v118, v119, v120, v121;
      v122, v123, v124, v125, v126, v127, v128, v129;
      sub_1CEFD0994(v108, v109, 1);
LABEL_35:
      sub_1CF90CAC8(a2, sub_1CF552400, v73);
      v130 = v160;
      goto LABEL_41;
    }

    v131 = sub_1CF9E8048();
    v114, v132, v133, v134, v135, v136, v137, v138;
    v122, v139, v140, v141, v142, v143, v144, v145;
    sub_1CEFD0994(v108, v109, 1);
    if (v131)
    {
      goto LABEL_35;
    }
  }

  else if (!v108 && v109 == 2)
  {
    goto LABEL_35;
  }

  v156 = v70;
  if (((a2 >> 58) & 0x3C | (a2 >> 1) & 3) == 0x1E)
  {
    v146 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v147 = v146;
  }

  else
  {
    v148 = swift_allocObject();
    *(v148 + 16) = a2;
    v147 = v148 | 0x7000000000000004;
    v146 = a2;
  }

  sub_1CEFD09A0(v146);
  v149 = swift_allocObject();
  *(v149 + 16) = sub_1CF552400;
  *(v149 + 24) = v73;
  *(v149 + 32) = a5;
  *(v149 + 40) = 0;
  *(v149 + 48) = a2;
  *(v149 + 56) = a1;
  *(v149 + 64) = 0;
  v150 = v160;
  *(v149 + 72) = v160;
  *(v149 + 80) = 0;
  v151 = swift_allocObject();
  *(v151 + 16) = a1;
  *(v151 + 24) = a5;
  *(v151 + 32) = 0;
  *(v151 + 40) = sub_1CF552404;
  *(v151 + 48) = v149;
  *(v151 + 56) = v147;
  v152 = swift_allocObject();
  *(v152 + 16) = sub_1CF552404;
  *(v152 + 24) = v149;
  v153 = *(*v166 + 472);

  sub_1CEFD09A0(a2);
  v130 = v150;

  v154 = v150;

  sub_1CEFD09A0(v147);
  v153("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF552448, v152, sub_1CF55241C, v151, v156);

  sub_1CF540FDC(v147);
LABEL_41:

  sub_1CF540FDC(a2);

  return result;
}

void sub_1CF552450()
{
  v1 = *(type metadata accessor for VFSItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = v0 + v4;
  v9 = *v8;
  v10 = (v0 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v0 + v6);
  v14 = *(v8 + 8);

  sub_1CF54A888(v7, (v0 + v2), v9, v14, v11, v12, v13);
}

double sub_1CF552504()
{
  v1 = *(type metadata accessor for VFSItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270) - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = *(v0 + v3 + 8);
  v8 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1CF54C5E4(v5, v0 + v2, v6, v7, v8);
}

void sub_1CF5525F4(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v5;
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *v8;
  v12 = *(v8 + 8);
  v13 = v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);

  sub_1CF54DFA4(a1, v1 + v4, v11, v12, v9, v10, v14, v15);
}

uint64_t sub_1CF552754(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF54DA7C(a1, v1 + v4, *(v1 + v5), (v1 + v7), *(v1 + v8), *(v1 + v8 + 8), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_231Tm()
{
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v132 = *(*(v131 - 8) + 80);
  v1 = v0 + ((v132 + 16) & ~v132);
  *(v1 + 40), v2, v3, v4, v5, v6, v7, v8;
  v9 = type metadata accessor for VFSItem(0);
  v10 = v1 + v9[7];
  v11 = type metadata accessor for ItemMetadata(0);
  v12 = v11[7];
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v10 + v12, v13);
  v15(v10 + v11[8], v13);
  *(v10 + v11[14] + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[30];
  if (!(*(v14 + 48))(v10 + v23, 1, v13))
  {
    v15(v10 + v23, v13);
  }

  *(v10 + v11[31]), v24, v25, v26, v27, v28, v29, v30;
  *(v10 + v11[33]), v31, v32, v33, v34, v35, v36, v37;
  v44 = (v10 + v11[34]);
  v45 = v44[1];
  if (v45 >> 60 != 15)
  {
    sub_1CEFE4714(*v44, v45);
  }

  *(v10 + v11[38] + 8), v45, v38, v39, v40, v41, v42, v43;
  v46 = v1 + v9[8];
  v47 = *(v46 + 16);
  if (v47 != 1)
  {

    *(v46 + 48), v48, v49, v50, v51, v52, v53, v54;
    *(v46 + 64), v55, v56, v57, v58, v59, v60, v61;
    *(v46 + 88), v62, v63, v64, v65, v66, v67, v68;

    *(v46 + 120), v69, v70, v71, v72, v73, v74, v75;
    *(v46 + 136), v76, v77, v78, v79, v80, v81, v82;
    *(v46 + 152), v83, v84, v85, v86, v87, v88, v89;
    *(v46 + 168), v90, v91, v92, v93, v94, v95, v96;
    *(v46 + 184), v97, v98, v99, v100, v101, v102, v103;
    v111 = *(v46 + 192);
    if (v111)
    {
      v111, v104, v105, v106, v107, v108, v109, v110;
      *(v46 + 200), v112, v113, v114, v115, v116, v117, v118;
    }

    *(v46 + 224), v104, v105, v106, v107, v108, v109, v110;
    *(v46 + 240), v119, v120, v121, v122, v123, v124, v125;
  }

  v126 = v9[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v1 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v1 + v126, 1, v128))
    {
      (*(v129 + 8))(v1 + v126, v128);
    }
  }

  return swift_deallocObject();
}