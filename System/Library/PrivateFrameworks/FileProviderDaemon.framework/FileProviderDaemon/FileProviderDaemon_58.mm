uint64_t sub_1CF64A31C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v108 = a1;
  v102 = a8;
  v104 = a7;
  v105 = a6;
  v99 = a5;
  v100 = a4;
  v106 = a12;
  v107 = a10;
  v14 = *(*a3 + 88);
  v15 = *(*a3 + 96);
  v16 = *(*a3 + 104);
  v113 = *(*a3 + 80);
  v13 = v113;
  v114 = v14;
  v115 = v15;
  v116 = v16;
  v17 = type metadata accessor for ReconciliationMutation(0, &v113);
  v98 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v91 - v18;
  v110 = v13;
  v113 = v13;
  v114 = v14;
  v101 = v15;
  v115 = v15;
  v116 = v16;
  v20 = type metadata accessor for ItemReconciliation(255, &v113);
  v21 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v91 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v91 - v27;
  v103 = a2;
  if (a2)
  {
    v30 = v107;
    v29 = v108;
    v31 = v106;
    v32 = v101;
LABEL_8:
    v116 = v30;
    v117 = v31;
    v52 = __swift_allocate_boxed_opaque_existential_0(&v113);
    (*(*(v30 - 8) + 16))(v52, v29, v30);
    v111 = 0x6572646C6968633CLL;
    v112 = 0xEA00000000003A6ELL;
    type metadata accessor for SnapshotItem(0, v110, v32, v53);
    v118 = sub_1CF9E6DF8();
    v54 = sub_1CF9E7F98();
    v56 = v55;
    MEMORY[0x1D3868CC0](v54);
    v56, v57, v58, v59, v60, v61, v62, v63;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v64 = v112;
    v105(&v113, v103, v111, v112, 0);
    v64, v65, v66, v67, v68, v69, v70, v71;
    return sub_1CEFCCC44(&v113, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v91 = v26;
  v92 = v28;
  v93 = v25;
  v94 = v19;
  v95 = v17;
  v97 = v16;
  v96 = v14;
  if (sub_1CF056558() || (v100[136] & 1) == 0)
  {
    goto LABEL_5;
  }

  v73 = *(*v100 + 576);
  v74 = v109;
  result = sub_1CF68DDB0(&v100[v73], v108, v107, *(v106 + 8), v23);
  v75 = v97;
  if (!v74)
  {
    v109 = 0;
    v76 = v93;
    if ((*(v93 + 48))(v23, 1, v20) == 1)
    {
      (*(v91 + 8))(v23, v21);
    }

    else
    {
      v77 = v92;
      (*(v76 + 32))(v92, v23, v20);
      v78 = &v77[*(v20 + 52)];
      v79 = v96;
      if (v78[*(type metadata accessor for ItemReconciliationHalf(0, v96, v75, v80) + 44)] == 5)
      {
        v81 = v110;
        v113 = v110;
        v114 = v79;
        v32 = v101;
        v115 = v101;
        v116 = v75;
        v91 = type metadata accessor for JobResult(0, &v113);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v83 = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v85 = swift_getAssociatedConformanceWitness();
        v113 = AssociatedTypeWitness;
        v114 = v83;
        v115 = AssociatedConformanceWitness;
        v116 = v85;
        type metadata accessor for ReconciliationID(255, &v113);
        type metadata accessor for ReconciliationSideMutation(255, v81, v32, v86);
        v87 = *(swift_getTupleTypeMetadata2() + 48);
        v40 = v100;
        v88 = &v100[v73];
        v89 = v94;
        (*(*(AssociatedTypeWitness - 8) + 16))(v94, v88, AssociatedTypeWitness);
        swift_storeEnumTagMultiPayload();
        *(v89 + v87) = 0;
        swift_storeEnumTagMultiPayload();
        v90 = v95;
        swift_storeEnumTagMultiPayload();
        v43 = v99;
        sub_1CF06EB44(v99, v89);
        (*(v98 + 8))(v89, v90);
        (*(v76 + 8))(v92, v20);
        v44 = *(v40 + 17);
        if ((v44 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      (*(v76 + 8))(v77, v20);
    }

LABEL_5:
    v33 = v110;
    v113 = v110;
    v114 = v96;
    v32 = v101;
    v115 = v101;
    v116 = v97;
    v93 = type metadata accessor for JobResult(0, &v113);
    v34 = swift_getAssociatedTypeWitness();
    v35 = swift_getAssociatedTypeWitness();
    v36 = swift_getAssociatedConformanceWitness();
    v37 = swift_getAssociatedConformanceWitness();
    v113 = v34;
    v114 = v35;
    v115 = v36;
    v116 = v37;
    type metadata accessor for ReconciliationID(255, &v113);
    type metadata accessor for ReconciliationSideMutation(255, v33, v32, v38);
    v39 = *(swift_getTupleTypeMetadata2() + 48);
    v40 = v100;
    v41 = v94;
    (*(*(v34 - 8) + 16))(v94, &v40[*(*v40 + 576)], v34);
    swift_storeEnumTagMultiPayload();
    *(v41 + v39) = 2;
    swift_storeEnumTagMultiPayload();
    v42 = v95;
    swift_storeEnumTagMultiPayload();
    v43 = v99;
    sub_1CF06EB44(v99, v41);
    (*(v98 + 8))(v41, v42);
    v44 = *(v40 + 17);
    if ((v44 & 0x80000000) == 0)
    {
LABEL_7:
      v30 = v107;
      v29 = v108;
      v31 = v106;
      goto LABEL_8;
    }

LABEL_6:
    v45 = v110;
    v46 = v96;
    v113 = v110;
    v114 = v96;
    v47 = v97;
    v115 = v32;
    v116 = v97;
    type metadata accessor for JobResult(0, &v113);
    v113 = v45;
    v114 = v46;
    v115 = v32;
    v116 = v47;
    type metadata accessor for Ingestion.MarkParentDeleted(0, &v113);
    v48 = *(*v40 + 576);
    v49 = *(v40 + 15);
    v50 = *(v40 + 16);
    swift_allocObject();
    v51 = sub_1CF052464(&v40[v48], v49, v50, v44);
    sub_1CF803A0C(v43, v51);

    goto LABEL_7;
  }

  return result;
}

void sub_1CF64ABF0(void *a1, char *a2, _TtC18FileProviderDaemon8FSTester *a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(char *, uint64_t), int a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a12, uint64_t a13, void *a14, NSObject *a15)
{
  v122 = a8;
  v147 = a5;
  v148 = a7;
  v145 = a4;
  v146 = a1;
  v134 = *a2;
  v18 = v134[77];
  v133 = v134[75];
  v127 = v18;
  v128 = type metadata accessor for SnapshotItem(0, v133, v18, a4);
  v143 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v142 = v119 - v19;
  v126 = sub_1CF9E5CF8();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1CF9E6118();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v22 = v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v123 = v119 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v139 = v119 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v119 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v121 = v119 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v119 - v33;
  v35 = [objc_allocWithZone(FPLoggerScope) init];
  v36 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v140 = a3;
  swift_unknownObjectRetain_n();

  v37 = v35;
  v38 = sub_1CF9E6108();
  v39 = sub_1CF9E7288();

  v40 = os_log_type_enabled(v38, v39);
  v144 = a6;
  v130 = v37;
  v119[1] = v22;
  v120 = v29;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v137 = v42;
    v138 = swift_slowAlloc();
    v149[0] = v138;
    *v41 = 138412802;
    v43 = [v37 enter];
    *(v41 + 4) = v43;
    *v42 = v43;
    *(v41 + 12) = 2082;
    v136 = v38;
    v44 = v39;
    v45 = sub_1CF044BA4();
    v47 = v46;

    v48 = sub_1CEFD0DF0(v45, v47, v149);
    v47, v49, v50, v51, v52, v53, v54, v55;
    *(v41 + 14) = v48;
    *(v41 + 22) = 2050;
    v56 = sub_1CF9E7758();
    swift_unknownObjectRelease();
    *(v41 + 24) = v56;
    swift_unknownObjectRelease();
    v57 = v136;
    _os_log_impl(&dword_1CEFC7000, v136, v44, "%@ processing item batch %{public}s -> <items:%{public}ld>", v41, 0x20u);
    v58 = v137;
    sub_1CEFCCC44(v137, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v58, -1, -1);
    v59 = v138;
    __swift_destroy_boxed_opaque_existential_1(v138);
    MEMORY[0x1D386CDC0](v59, -1, -1);
    MEMORY[0x1D386CDC0](v41, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  v60 = v132;
  v129 = *(v131 + 8);
  v129(v34, v132);
  v62 = v146[3];
  v61 = v146[4];
  v63 = __swift_project_boxed_opaque_existential_1(v146, v62);
  if ((*(a2 + 17) & 0x10000) != 0)
  {
    v64 = 3;
  }

  else
  {
    v64 = 1;
  }

  v65 = v141;
  v66 = sub_1CF62DA88(&a2[*(*a2 + 576)], v64, v148, v63, v62, *(v61 + 8));
  if (v65)
  {
    v68 = fpfs_current_or_default_log();
    v69 = v139;
    sub_1CF9E6128();
    v70 = v130;
    v71 = v130;
    v72 = sub_1CF9E6108();
    v73 = sub_1CF9E7288();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      v76 = [v71 leave];
      *(v74 + 4) = v76;
      *v75 = v76;
      _os_log_impl(&dword_1CEFC7000, v72, v73, "%@", v74, 0xCu);
      sub_1CEFCCC44(v75, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v75, -1, -1);
      MEMORY[0x1D386CDC0](v74, -1, -1);

      v77 = v69;
      v108 = v132;
    }

    else
    {

      v77 = v69;
      v108 = v60;
    }

    v129(v77, v108);

    return;
  }

  v140 = v67;
  v135 = v66;
  v136 = a15;
  v137 = a14;
  v138 = a2;
  v78 = v134[76];
  v79 = v134[78];
  v149[0] = v133;
  v149[1] = v78;
  v149[2] = v127;
  v149[3] = v79;
  type metadata accessor for ConcreteJobResult(0, v149);
  v141 = sub_1CF056580();
  v80 = v147;
  v81 = v144;
  v82 = v128;
  v83 = sub_1CF9E7738();
  v84 = sub_1CF9E7768();
  v139 = v83;
  if (v83 != v84)
  {
    v133 = v143 + 16;
    v134 = (v81 >> 1);
    v92 = (v143 + 8);
    v93 = v139;
    while (1)
    {
      sub_1CF9E7748();
      if (v139 < v80 || v134 <= v93)
      {
        break;
      }

      v94 = v142;
      (*(v143 + 16))(v142, v145 + *(v143 + 72) * v93, v82);
      v95 = objc_autoreleasePoolPush();
      sub_1CF64BB48(v135, v140, v146, v94, v148, v138, v141, v137, v136, v149);
      ++v93;
      objc_autoreleasePoolPop(v95);
      (*v92)(v94, v82);
      v80 = v147;
      if (v93 == sub_1CF9E7768())
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_15:
  v140, v85, v86, v87, v88, v89, v90, v91;
  v96 = v146;
  v97 = v146[3];
  v98 = v146[4];
  v99 = __swift_project_boxed_opaque_existential_1(v146, v97);
  v100 = v124;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v102 = v101;
  (*(v125 + 8))(v100, v126);
  v103 = v102 * 1000000000.0;
  if (COERCE__INT64(fabs(v102 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v103 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v103 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  sub_1CF521850(v141, v103, v99, v97, v98);
  v104 = v96;
  v106 = v96[3];
  v105 = v96[4];
  v107 = __swift_project_boxed_opaque_existential_1(v104, v106);
  sub_1CF64A31C(v107, a9, v148, v138, a10, a11, a12, a13, v137, v106, v136, v105);
  v109 = v132;
  v110 = v130;

  v111 = fpfs_current_or_default_log();
  v112 = v120;
  sub_1CF9E6128();
  v113 = v110;
  v114 = sub_1CF9E6108();
  v115 = sub_1CF9E7288();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v116 = 138412290;
    v118 = [v113 leave];
    *(v116 + 4) = v118;
    *v117 = v118;
    _os_log_impl(&dword_1CEFC7000, v114, v115, "%@", v116, 0xCu);
    sub_1CEFCCC44(v117, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v117, -1, -1);
    MEMORY[0x1D386CDC0](v116, -1, -1);
  }

  v129(v112, v109);
}

void sub_1CF64BB48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v71 = a6;
  v65 = *a5;
  v17 = v65[10];
  v18 = v65[12];
  v63 = type metadata accessor for FileTreeError(0, v17, v18, a4);
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v60 - v19;
  v69 = v18;
  v70 = v17;
  v21 = type metadata accessor for SnapshotItem(255, v17, v18, v20);
  v22 = sub_1CF9E75D8();
  v67 = *(v22 - 8);
  v68 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v66 = &v60 - v23;
  v24 = sub_1CF9E5CF8();
  v64 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_27;
  }

  v60 = a7;
  v27 = a3[3];
  v28 = a3[4];
  v29 = __swift_project_boxed_opaque_existential_1(a3, v27);
  v30 = sub_1CF62D810(a4, a5, v29, v27, *(v28 + 8));
  v11 = v10;
  if (v10)
  {
LABEL_3:
    *a10 = v11;
    return;
  }

  a7 = v60;
  if (v30)
  {
LABEL_27:
    v31 = (a4 + *(v21 + 68));
    v32 = v31[1];
    if (v32 >> 62)
    {
      if (v32 >> 62 == 1)
      {
        v33 = *v31;
        v34 = v32 & 0x3FFFFFFFFFFFFFFFLL;
        v35 = v65[11];
        v36 = v65[13];
        v72 = v70;
        v73 = v35;
        v74 = v69;
        v75 = v36;
        v67 = v36;
        v68 = v32;
        type metadata accessor for Ingestion.TrackTemporaryItem(0, &v72);

        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v38 = v37;
        (*(v64 + 8))(v26, v24);
        v39 = v38 * 1000000000.0;
        if (COERCE__INT64(fabs(v38 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v39 > -9.22337204e18)
        {
          if (v39 < 9.22337204e18)
          {
            v40 = a4;
            v41 = v39;
            v42 = v71[17];
            swift_allocObject();
            v43 = sub_1CF052464(v40, 0x2000000000000000, v41, v42);
            v44 = *(v43 + 96);
            v45 = *(v43 + 104);
            *(v43 + 96) = 256;
            *(v43 + 104) = v34;
            v46 = *(v43 + 112);
            *(v43 + 112) = 0;
            v47 = v68;
            sub_1CF658C88(v33, v68);

            sub_1CF03D7A8(v44, v45, v46);

            v72 = v70;
            v73 = v35;
            v74 = v69;
            v75 = v67;
            type metadata accessor for JobResult(0, &v72);
            sub_1CF803A0C(a7, v43);

            sub_1CF07638C(v33, v47);
            return;
          }

          goto LABEL_24;
        }

        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v48 = a3[3];
      v70 = a3[4];
      v49 = __swift_project_boxed_opaque_existential_1(a3, v48);
      v50 = a4;
      v51 = a7;
      v52 = v11;
      v53 = *(v21 - 8);
      v54 = v66;
      (*(v53 + 16))(v66, v50, v21);
      (*(v53 + 56))(v54, 0, 1, v21);
      v59 = v71[17];
      if ((v59 & 0x10000) != 0)
      {
        v55 = 3;
      }

      else
      {
        v55 = 1;
      }

      sub_1CF611904(v54, v50, v55, 1, 0, a5, v71[15], v71[16], v59, v51, v49, v48, v70);
      v11 = v52;
      if (v52)
      {
        (*(v67 + 8))(v54, v68);
        v72 = v52;
        v56 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v58 = v62;
        v57 = v63;
        if (swift_dynamicCast())
        {
          if (swift_getEnumCaseMultiPayload() == 15)
          {

            return;
          }

          (*(v61 + 8))(v58, v57);
        }

        goto LABEL_3;
      }

      (*(v67 + 8))(v54, v68);
    }
  }
}

uint64_t sub_1CF64C12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v37 = a5;
  v7 = *(*v5 + 624);
  v8 = *(*v5 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1CF9E75D8();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v30 - v14;
  if (sub_1CF056558())
  {
    v16 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = swift_getAssociatedConformanceWitness();
    v38 = v16;
    v39 = AssociatedTypeWitness;
LABEL_3:
    v40 = AssociatedConformanceWitness;
    v41 = v18;
    v19 = type metadata accessor for ReconciliationID(0, &v38);
    return (*(*(v19 - 8) + 56))(v37, 1, 1, v19);
  }

  v30[1] = v8;
  v30[2] = v7;
  v21 = v42;
  result = (*(**(a1 + 16) + 160))(v5 + *(*v5 + 576), v34, v35, v36);
  if (!v21)
  {
    v42 = 0;
    v22 = v33;
    if ((*(v33 + 48))(v12, 1, AssociatedTypeWitness) == 1)
    {
      (*(v31 + 8))(v12, v32);
      v23 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v18 = swift_getAssociatedConformanceWitness();
      v38 = v23;
      v39 = AssociatedTypeWitness;
      goto LABEL_3;
    }

    v24 = *(v22 + 32);
    v24(v15, v12, AssociatedTypeWitness);
    v25 = v37;
    v24(v37, v15, AssociatedTypeWitness);
    v26 = swift_getAssociatedTypeWitness();
    v27 = swift_getAssociatedConformanceWitness();
    v28 = swift_getAssociatedConformanceWitness();
    v38 = v26;
    v39 = AssociatedTypeWitness;
    v40 = v27;
    v41 = v28;
    v29 = type metadata accessor for ReconciliationID(0, &v38);
    swift_storeEnumTagMultiPayload();
    return (*(*(v29 - 8) + 56))(v25, 0, 1, v29);
  }

  return result;
}

uint64_t sub_1CF64C5BC@<X0>(uint64_t a2@<X8>)
{
  v4 = *(*v2 + 576);
  v5 = (*v2 + 608);
  v6 = *(*v2 + 616);
  v7 = *(*v2 + 600);
  v8 = (*v2 + 624);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, v2 + v4, AssociatedTypeWitness);
  *&v10 = v7;
  *(&v10 + 1) = *v5;
  *&v11 = v6;
  *(&v11 + 1) = *v8;
  v14 = v11;
  v15 = v10;
  v16 = v10;
  v17 = v11;
  type metadata accessor for DirectionalTestingOperation(0, &v16);
  swift_storeEnumTagMultiPayload();
  v16 = v15;
  v17 = v14;
  v12 = type metadata accessor for TestingOperation(0, &v16);
  swift_storeEnumTagMultiPayload();
  return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
}

uint64_t sub_1CF64C758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for JobLockRule(0, *(*v5 + 600), *(*v5 + 616), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9 + 22;
  v11 = *(**(*(a2 + 32) + 16) + 312);

  LOBYTE(v11) = v11(v12);

  if (v11)
  {
    return 0;
  }

  swift_beginAccess();
  sub_1CEFCCBDC((v5 + 7), v18, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v14 = v5[15];
  swift_storeEnumTagMultiPayload();
  v16 = sub_1CF052B3C(v18, v14, v10, v15);
  (*(v8 + 8))(v10, v7);
  sub_1CEFCCC44(v18, &unk_1EC4C1BE0, &unk_1CF9FD400);
  return v16;
}

void sub_1CF64C94C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (*(*a1 + 216))(a1, a2, a3, a4);
  v17 = sub_1CF056904(v13, v14, v15, v16);

  v18 = *(a1[4] + 16);
  v19 = *(*a1 + 272);

  v25 = v19(v20);
  v21 = swift_allocObject();
  v21[2] = a7;
  v21[3] = a8;
  v21[4] = a1;
  v21[5] = v8;
  v21[6] = a5;
  v21[7] = a6;
  v21[8] = a3;
  v21[9] = v17;
  v22 = *(*v18 + 696);

  v22(v25, sub_1CF6588F8, v21);
}

double sub_1CF64CB0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = *a3;
  v15 = swift_allocObject();
  v15[2] = a9;
  v15[3] = a10;
  v15[4] = a4;
  v15[5] = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = a9;
  *(v17 + 24) = a10;
  *(v17 + 32) = a3;
  *(v17 + 40) = a2;
  v18 = *(a1 + 16);
  *(v17 + 48) = *a1;
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 32);
  *(v17 + 88) = a7;
  *(v17 + 96) = a4;
  *(v17 + 104) = a5;
  *(v17 + 112) = a6;
  *(v17 + 120) = a8;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  type metadata accessor for FileTreeWriter.EventStreamBatch(255, *(v26 + 80), *(v26 + 96), v19);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v20 = sub_1CF9E8238();
  (*(*(v20 - 8) + 16))(v27, a1, v20);
  v21 = type metadata accessor for Continuation();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF55942C, v15, sub_1CF559418, v16, sub_1CF65892C, v17, v21, MEMORY[0x1E69E6158]);

  return result;
}

void *sub_1CF64CD58(void *a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, void (**a5)(char *, uint64_t), uint64_t *a6, void (*a7)(uint64_t *, void, void, void, uint64_t), uint64_t a8, objc_class *a9, uint64_t a10, uint64_t a11)
{
  v283 = a7;
  v299 = a5;
  v308 = a1;
  v309 = a4;
  v15 = *a2;
  v16 = *(*a2 + 80);
  v17 = *(*a2 + 96);
  v292 = type metadata accessor for FileTreeError(0, v16, v17, a4);
  v279 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292);
  v287 = &v277 - v18;
  v19 = sub_1CF9E75D8();
  v295 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v291 = &v277 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v288 = &v277 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v294 = sub_1CF9E75D8();
  v281 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v289 = &v277 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v296 = &v277 - v26;
  v316 = v19;
  v27 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v312 = &v277 - v28;
  v304 = *(v16 - 1);
  v284 = *(v304 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v313 = &v277 - v30;
  v301 = sub_1CF9E5CF8();
  v298 = *(v301 - 1);
  MEMORY[0x1EEE9AC00](v301);
  v300 = &v277 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v32);
  v297 = &v277 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v311 = &v277 - v35;
  v280 = v36;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v306 = &v277 - v39;
  v286 = v15;
  v40 = *(v15 + 152);
  v307 = a2;
  v41 = v40(v38);
  v314 = v16;
  v315 = AssociatedTypeWitness;
  v285 = v41;
  v282 = a8;
  v303 = v17;
  if ((v41 & 0x40) != 0)
  {
    v53 = v283;
    v54 = a6;
  }

  else
  {
    v305 = a6;
    v42 = 0;
    v43 = a3;
    v310 = *(a3 + 16);
    while (v310 != v42)
    {
      v44 = *(type metadata accessor for SyncState(0) - 8);
      v45 = v43 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v42;
      v46 = *(v307 + 7);
      ObjectType = swift_getObjectType();
      v49 = v308[3];
      v48 = v308[4];
      v50 = __swift_project_boxed_opaque_existential_1(v308, v49);
      v51 = v317;
      result = (*(v46 + 8))(v45, v50, v49, v48, ObjectType, v46);
      ++v42;
      v317 = v51;
      if (v51)
      {
        return result;
      }
    }

    v53 = v283;
    v16 = v314;
    AssociatedTypeWitness = v315;
    v17 = v303;
    a3 = v43;
    v54 = v305;
  }

  v55 = *(v309 + 32);
  v305 = *v309;
  if (v55)
  {
    _s3__C4CodeOMa_1(0);
    v321 = -1002;
    sub_1CF00BC98(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
    if (sub_1CF9E5658())
    {
      if ((v285 & 0x40) != 0)
      {
        v73 = v53;
        v204 = *(*(v307 + 4) + 16);
        v205 = *(v204 + 16);
        if (v205)
        {
          v206 = *(v204 + 24);
          v207 = type metadata accessor for FileTreeWriter.FileTreeChange(255, v16, v17, v56);
          sub_1CF9E7FA8();
          swift_allocObject();

          v208 = v54;
          v209 = sub_1CF9E6D68();
          *v210 = 0;
          *(v210 + 8) = 7;
          *(v210 + 16) = 1;
          swift_storeEnumTagMultiPayload();
          v211 = v209;
          v54 = v208;
          v16 = v314;
          v212 = sub_1CF045898(v211, v207);
          v205(v212, a3, 0, 0);
          sub_1CEFF7124(v205, v206);
          v212, v213, v214, v215, v216, v217, v218, v219;
        }
      }

      else
      {
        v305 = v54;
        v57 = *v286[2].tester;
        v58 = *v286[3]._anon_8;
        v321 = v16;
        v322 = v57;
        v323 = v17;
        v324 = v58;
        v316 = type metadata accessor for JobResult(0, &v321);
        v321 = v16;
        v322 = v57;
        v323 = v17;
        v324 = v58;
        type metadata accessor for Ingestion.FetchItemMetadata(0, &v321);
        sub_1CF046AB4();
        v59 = v300;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v61 = v60;
        v62 = *v298->_anon_8;
        result = v62(v59, v301);
        v63 = v61 * 1000000000.0;
        if (COERCE__INT64(fabs(v61 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_105;
        }

        if (v63 <= -9.22337204e18)
        {
          goto LABEL_106;
        }

        if (v63 >= 9.22337204e18)
        {
          goto LABEL_107;
        }

        v64 = v306;
        v65 = sub_1CF657094(v306, 0, v63, 0x8000, type metadata accessor for Ingestion.FetchItemMetadata);
        v66 = *(v293 + 8);
        v66(v64, v315);
        sub_1CF803A0C(v299, v65);

        sub_1CF685B34();
        v67 = v300;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v69 = v68;
        result = v62(v67, v301);
        v70 = v69 * 1000000000.0;
        if (COERCE__INT64(fabs(v69 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_108;
        }

        v16 = v314;
        v54 = v305;
        if (v70 <= -9.22337204e18)
        {
          goto LABEL_109;
        }

        if (v70 >= 9.22337204e18)
        {
          goto LABEL_110;
        }

        v71 = v306;
        v72 = sub_1CF657094(v306, 0, v70, 0x8000, type metadata accessor for Ingestion.FetchItemMetadata);
        v66(v71, v315);
        sub_1CF803A0C(v299, v72);

        v73 = v283;
        v17 = v303;
      }

      v220 = *v286[2].tester;
      v221 = *v286[3]._anon_8;
      v321 = v16;
      v322 = v220;
      v323 = v17;
      v324 = v221;
      type metadata accessor for JobResult(0, &v321);
      v321 = v16;
      v322 = v220;
      v323 = v17;
      v324 = v221;
      type metadata accessor for Ingestion.FetchEventStream(0, &v321);
      v222 = v54;
      v223 = *(*v54 + 576);
      v224 = v300;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v226 = v225;
      result = (*v298->_anon_8)(v224, v301);
      v227 = v226 * 1000000000.0;
      if (COERCE__INT64(fabs(v226 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_102;
      }

      if (v227 <= -9.22337204e18)
      {
        goto LABEL_103;
      }

      if (v227 >= 9.22337204e18)
      {
        goto LABEL_104;
      }

      v228 = sub_1CF0523F0(v222 + v223, 0x2000000000000000, v227, v222[17]);
      sub_1CF803A0C(v299, v228);

      sub_1CF1A91AC(v308, &v321);
      type metadata accessor for NSFileProviderError(0);
      v325 = -1002;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00BC98(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();
      v229 = v319;
      v73(&v321, 0, 0, 0, v319);
    }

    else
    {
      v158 = v53;
      v159 = *v286[2].tester;
      v160 = *v286[3]._anon_8;
      v321 = v16;
      v322 = v159;
      v323 = v17;
      v324 = v160;
      type metadata accessor for JobResult(0, &v321);
      v321 = v16;
      v322 = v159;
      v323 = v17;
      v324 = v160;
      type metadata accessor for Ingestion.FetchEventStream(0, &v321);
      v161 = v54;
      v162 = *(*v54 + 576);
      v163 = v300;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v165 = v164;
      result = (*v298->_anon_8)(v163, v301);
      v166 = v165 * 1000000000.0;
      if (COERCE__INT64(fabs(v165 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_97;
      }

      if (v166 <= -9.22337204e18)
      {
        goto LABEL_99;
      }

      if (v166 >= 9.22337204e18)
      {
        goto LABEL_101;
      }

      v167 = sub_1CF0523F0(v161 + v162, 0x2000000000000000, v166, v161[17]);
      sub_1CF803A0C(v299, v167);

      sub_1CF1A91AC(v308, &v321);
      v158(&v321, 0, 0, 0, v305);
    }

    return sub_1CEFCCC44(&v321, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v302 = *(v309 + 8);
  v74 = *(v309 + 24);
  v278 = *(v309 + 16);
  v277 = a3;
  if (v278)
  {
    v75 = *v286[2].tester;
    v76 = *v286[3]._anon_8;
    v321 = v16;
    v322 = v75;
    v323 = v17;
    v324 = v76;
    type metadata accessor for JobResult(0, &v321);
    v321 = v16;
    v322 = v75;
    v323 = v17;
    v324 = v76;
    type metadata accessor for Ingestion.FetchEventStream(0, &v321);
    v77 = *(*v54 + 576);
    v78 = v300;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v80 = v79;
    result = (*v298->_anon_8)(v78, v301);
    v81 = v80 * 1000000000.0;
    if (COERCE__INT64(fabs(v80 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_96;
    }

    if (v81 <= -9.22337204e18)
    {
      goto LABEL_98;
    }

    if (v81 >= 9.22337204e18)
    {
      goto LABEL_100;
    }

    v82 = sub_1CF0523F0(v54 + v77, 0x2000000000000000, v81, v54[17]);
    sub_1CF803A0C(v299, v82);

    AssociatedTypeWitness = v315;
  }

  v83 = v316;
  swift_getTupleTypeMetadata2();
  v84 = sub_1CF9E6DA8();
  v310 = *(swift_getAssociatedConformanceWitness() + 40);
  v85 = sub_1CF04F294(v84, AssociatedTypeWitness, v83, v310);
  v84, v86, v87, v88, v89, v90, v91, v92;
  v325 = v85;
  v93 = v305;
  if (sub_1CF9E6DF8())
  {
    v94 = 0;
    v300 = *(v17 + 64);
    v301 = (v17 + 64);
    v309 = v304 + 16;
    v299 = (v304 + 56);
    v298 = (v295 + 56);
    v95 = (v304 + 8);
    v96 = v312;
    do
    {
      v97 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v97)
      {
        v98 = v93 + ((*(v304 + 80) + 32) & ~*(v304 + 80)) + *(v304 + 72) * v94;
        v99 = *(v304 + 16);
        (v99)(v313, v98, v16);
        v100 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v284 != 8)
        {
          goto LABEL_111;
        }

        v321 = result;
        v99 = *v309;
        (*v309)(v313, &v321, v16);
        swift_unknownObjectRelease();
        v100 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
LABEL_32:
          __break(1u);
          break;
        }
      }

      v102 = v313;
      v101 = v314;
      (v300)(v314, v303);
      (v99)(v96, v102, v101);
      (*v299)(v96, 0, 1, v101);
      (v298->super.isa)(v96, 0, 1, v316);
      sub_1CF9E6708();
      sub_1CF9E6738();
      (*v95)(v102, v101);
      v93 = v305;
      ++v94;
      v16 = v101;
    }

    while (v100 != sub_1CF9E6DF8());
  }

  v103 = v302;
  v104 = v315;
  result = sub_1CF9E6DF8();
  v112 = v293;
  if (!result)
  {
    goto LABEL_44;
  }

  v113 = 0;
  v114 = (v293 + 16);
  v115 = (v304 + 56);
  v116 = (v295 + 56);
  while (1)
  {
    v117 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v117 & 1) == 0)
    {
      break;
    }

    result = (*(v112 + 16))(v311, v103 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v113, v104);
    v118 = (v113 + 1);
    if (__OFADD__(v113, 1))
    {
      goto LABEL_43;
    }

LABEL_37:
    v119 = v312;
    (*v115)(v312, 1, 1, v314);
    (*v116)(v119, 0, 1, v316);
    sub_1CF9E6708();
    sub_1CF9E6738();
    v120 = v302;
    result = sub_1CF9E6DF8();
    ++v113;
    v121 = v118 == result;
    v103 = v120;
    if (v121)
    {
      goto LABEL_44;
    }
  }

  result = sub_1CF9E7998();
  if (v280 != 8)
  {
    goto LABEL_112;
  }

  v321 = result;
  (*v114)(v311, &v321, v104);
  result = swift_unknownObjectRelease();
  v118 = (v113 + 1);
  if (!__OFADD__(v113, 1))
  {
    goto LABEL_37;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  v304 = a11;
  v309 = a10;
  v301 = a9;
  if ((v285 & 0x40) != 0)
  {
    v168 = *(*(v307 + 4) + 16);
    v169 = *(v168 + 16);
    if (v169)
    {
      v170 = *(v168 + 24);
      v171 = v325;
      v321 = v325;
      MEMORY[0x1EEE9AC00](result);
      v172 = v286;
      v173 = v309;
      *(&v277 - 6) = *v286[2].tester;
      *(&v277 - 5) = v173;
      v174 = v304;
      *(&v277 - 4) = *v172[3]._anon_8;
      *(&v277 - 3) = v174;
      *(&v277 - 2) = v301;
      MEMORY[0x1EEE9AC00](v175);
      v176 = v314;
      *(&v277 - 8) = v314;
      *(&v277 - 7) = v177;
      v178 = v303;
      *(&v277 - 6) = v179;
      *(&v277 - 5) = v178;
      *(&v277 - 4) = v180;
      *(&v277 - 3) = v174;
      *(&v277 - 2) = sub_1CF65896C;
      *(&v277 - 1) = v181;
      v182 = sub_1CF9E6708();
      v184 = type metadata accessor for FileTreeWriter.FileTreeChange(0, v176, v178, v183);

      WitnessTable = swift_getWitnessTable();
      v186 = v317;
      v188 = sub_1CF054A5C(sub_1CF65897C, (&v277 - 10), v182, v184, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v187);
      v317 = v186;
      v171, v189, v190, v191, v192, v193, v194, v195;
      v169(v188, v277, 0, 0);
      v196 = v283;
      sub_1CEFF7124(v169, v170);
      v188, v197, v198, v199, v200, v201, v202, v203;
    }

    else
    {
      v325, v105, v106, v107, v108, v109, v110, v111;
      v196 = v283;
    }

LABEL_81:
    if (v74 >= 30.0)
    {
      sub_1CF2F462C();
      v230 = swift_allocError();
      *v231 = 0;
      *(v231 + 8) = 0;
      *(v231 + 16) = -4;
    }

    else
    {
      v230 = 0;
    }

    sub_1CF1A91AC(v308, &v321);
    v319 = 0;
    v320 = 0xE000000000000000;
    v232 = v230;
    sub_1CF9E7948();
    v320, v233, v234, v235, v236, v237, v238, v239;
    v319 = 0x646574616470753CLL;
    v320 = 0xE90000000000003ALL;
    v318 = sub_1CF9E6DF8();
    v240 = sub_1CF9E7F98();
    v242 = v241;
    MEMORY[0x1D3868CC0](v240);
    v242, v243, v244, v245, v246, v247, v248, v249;
    MEMORY[0x1D3868CC0](0x6F6974656C656420, 0xEB000000003A736ELL);
    v318 = sub_1CF9E6DF8();
    v250 = sub_1CF9E7F98();
    v252 = v251;
    MEMORY[0x1D3868CC0](v250);
    v252, v253, v254, v255, v256, v257, v258, v259;
    MEMORY[0x1D3868CC0](0x65726F4D73616820, 0xE90000000000003ALL);
    if (v278)
    {
      v260 = 1702195828;
    }

    else
    {
      v260 = 0x65736C6166;
    }

    if (v278)
    {
      v261 = 0xE400000000000000;
    }

    else
    {
      v261 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v260, v261);
    v261, v262, v263, v264, v265, v266, v267, v268;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v269 = v320;
    v196(&v321, 0, v319, v320, v230);

    v269, v270, v271, v272, v273, v274, v275, v276;
    return sub_1CEFCCC44(&v321, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v122 = 0;
  v124 = (v325 + 64);
  v123 = *(v325 + 64);
  v286 = v325;
  v125 = 1 << *(v325 + 32);
  v126 = -1;
  if (v125 < 64)
  {
    v126 = ~(-1 << v125);
  }

  v127 = v126 & v123;
  v280 = (v125 + 63) >> 6;
  v128 = TupleTypeMetadata2;
  v310 = TupleTypeMetadata2 - 8;
  v285 = v112 + 16;
  v284 = v295 + 16;
  v312 = (v295 + 32);
  v313 = (v112 + 32);
  v303 = (v281 + 32);
  v299 = (v295 + 8);
  v300 = (v112 + 8);
  v129 = v292;
  v130 = v291;
  v131 = v289;
  v132 = v296;
  v298 = (v325 + 64);
  while (v127)
  {
    v133 = v122;
LABEL_60:
    v136 = __clz(__rbit64(v127));
    v127 &= v127 - 1;
    v137 = v136 | (v133 << 6);
    v138 = v286;
    v139 = v293;
    v140 = v306;
    v141 = v315;
    (*(v293 + 16))(v306, *v286[1].tree + *(v293 + 72) * v137, v315);
    v142 = v295;
    v143 = *v138[1].tester + *(v295 + 72) * v137;
    v144 = v288;
    v145 = v316;
    (*(v295 + 16))(v288, v143, v316);
    v128 = TupleTypeMetadata2;
    v311 = *(TupleTypeMetadata2 + 48);
    v146 = *(v139 + 32);
    v147 = v289;
    v146(v289, v140, v141);
    v148 = *(v142 + 32);
    v131 = v147;
    v148(&v311[v147], v144, v145);
    v149 = 0;
    v129 = v292;
    v130 = v291;
    v132 = v296;
LABEL_61:
    v150 = *(v128 - 8);
    (*(v150 + 56))(v131, v149, 1, v128);
    (*v303)(v132, v131, v294);
    if ((*(v150 + 48))(v132, 1, v128) == 1)
    {

      v196 = v283;
      goto LABEL_81;
    }

    v151 = *(v128 + 48);
    v152 = v297;
    (*v313)(v297, v132, v315);
    (*v312)(v130, &v132[v151], v316);
    v153 = objc_autoreleasePoolPush();
    v154 = v317;
    sub_1CF64EBD8(v308, v152, v130, v301, v307, v309, v304, &v321);
    if (v154)
    {
      v155 = v321;
      objc_autoreleasePoolPop(v153);
      v321 = v155;
      v317 = v155;
      v156 = v155;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v157 = v287;
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_94:

        (*v299)(v130, v316);
        return (*v300)(v297, v315);
      }

      if (swift_getEnumCaseMultiPayload() != 15)
      {

        (*(v279 + 8))(v157, v129);
        goto LABEL_94;
      }

      v317 = 0;
      v132 = v296;
    }

    else
    {
      v317 = 0;
      objc_autoreleasePoolPop(v153);
    }

    (*v299)(v130, v316);
    result = (*v300)(v297, v315);
    v124 = v298;
  }

  if (v280 <= v122 + 1)
  {
    v134 = v122 + 1;
  }

  else
  {
    v134 = v280;
  }

  v135 = v134 - 1;
  while (1)
  {
    v133 = v122 + 1;
    if (__OFADD__(v122, 1))
    {
      break;
    }

    if (v133 >= v280)
    {
      v127 = 0;
      v149 = 1;
      v122 = v135;
      goto LABEL_61;
    }

    v127 = *(&v124->super.isa + v133);
    ++v122;
    if (v127)
    {
      v122 = v133;
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
  return result;
}

uint64_t sub_1CF64E978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(*a3 + 88);
  v9 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  sub_1CF9E75D8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v13 = *(TupleTypeMetadata3 + 48);
  v14 = *(TupleTypeMetadata3 + 64);
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);
  (*(*(v11 - 8) + 16))(a4 + v13, a2, v11);
  *(a4 + v14) = a3;
  type metadata accessor for FileTreeWriter.FileTreeChange(0, v9, v8, v15);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF64EB20(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

void sub_1CF64EBD8(void *a1, uint64_t a2, uint64_t a3, objc_class *a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, void *a8)
{
  v51 = a8;
  v57 = a3;
  v56 = a2;
  v11 = *a4;
  v12 = *a5;
  v13 = sub_1CF9E5CF8();
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 80);
  v16 = *(v11 + 88);
  v55 = type metadata accessor for FileTreeWriter.FileTreeChange(0, v15, v16, v17);
  v18 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v20 = (&v47 - v19);
  v21 = *(v12 + 88);
  v22 = *(v12 + 104);
  v59[0] = v15;
  v59[1] = v21;
  v59[2] = v16;
  v59[3] = v22;
  type metadata accessor for ConcreteJobResult(0, v59);
  v52 = sub_1CF056580();
  v23 = a1[3];
  v54 = a1[4];
  v50 = a1;
  v53 = __swift_project_boxed_opaque_existential_1(a1, v23);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = sub_1CF9E75D8();
  type metadata accessor for JobLockAggregator(255, v15, v16, v26);
  sub_1CF9E75D8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v28 = *(TupleTypeMetadata3 + 48);
  v29 = *(TupleTypeMetadata3 + 64);
  (*(*(AssociatedTypeWitness - 8) + 16))(v20, v56, AssociatedTypeWitness);
  v30 = *(*(v25 - 8) + 16);
  v31 = v20 + v28;
  v32 = v52;
  v33 = v25;
  v34 = v55;
  v30(v31, v57, v33);
  *(&v20->isa + v29) = a4;
  swift_storeEnumTagMultiPayload();

  v35 = v58;
  sub_1CF6180A8(v20, 0, v32, a5, v53, v23, v54);
  if (v35)
  {

    (*(v18 + 8))(v20, v34);
    *v51 = v35;
    return;
  }

  (*(v18 + 8))(v20, v34);
  v36 = v50;
  v37 = v50[3];
  v38 = v50[4];
  v39 = __swift_project_boxed_opaque_existential_1(v50, v37);
  v40 = v47;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v42 = v41;
  (*(v48 + 8))(v40, v49);
  v43 = v42 * 1000000000.0;
  if (COERCE__INT64(fabs(v42 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v43 < 9.22337204e18)
  {
    sub_1CF521850(v32, v43, v39, v37, v38);
    v44 = v36[3];
    v45 = v36[4];
    v46 = __swift_project_boxed_opaque_existential_1(v36, v44);
    (*(*a5 + 576))(v46, v44, v45);

    return;
  }

LABEL_9:
  __break(1u);
}

double sub_1CF64F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(*(a1 + 32) + 16);
  v15 = *(*v8 + 576);
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a1;
  v16[5] = a5;
  v16[6] = a6;
  v17 = *(*v14 + 616);

  v17(v8 + v15, sub_1CF658844, v16);

  return result;
}

double sub_1CF64F1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = type metadata accessor for Continuation();
  swift_retain_n();
  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559418, v5, sub_1CF658854, v6, v7, MEMORY[0x1E69E6158]);

  return result;
}

uint64_t sub_1CF64F2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(*(a1 + 32) + 16);
  v15 = v8[10];
  v27[0] = v8[9];
  v27[1] = v15;
  v16 = v8[12];
  v18 = v8[9];
  v17 = v8[10];
  v27[2] = v8[11];
  v27[3] = v16;
  v23 = v18;
  v24 = v17;
  v19 = v8[12];
  v25 = v8[11];
  v26 = v19;
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a8;
  v20[4] = a1;
  v20[5] = a5;
  v20[6] = a6;
  v21 = *(*v14 + 728);

  sub_1CF1AE1DC(v27, v28);

  v21(&v23, sub_1CF6587C8, v20);

  v28[0] = v23;
  v28[1] = v24;
  v28[2] = v25;
  v28[3] = v26;
  return sub_1CF1AE25C(v28);
}

uint64_t sub_1CF64F480(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v4[9] = *a1;
  v4[10] = v5;
  v6 = a1[3];
  v4[11] = a1[2];
  v4[12] = v6;
  return sub_1CF0525C8(a2, a3, a4);
}

uint64_t sub_1CF64F4A4()
{
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  return 979659110;
}

uint64_t sub_1CF64F514@<X0>(uint64_t a1@<X8>)
{
  v4[0] = swift_getAssociatedTypeWitness();
  v4[1] = swift_getAssociatedTypeWitness();
  v4[2] = swift_getAssociatedConformanceWitness();
  v4[3] = swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for ReconciliationID(0, v4);
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t sub_1CF64F680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(*(a1 + 32) + 16);
  v15 = v8[10];
  v27[0] = v8[9];
  v27[1] = v15;
  v16 = v8[12];
  v18 = v8[9];
  v17 = v8[10];
  v27[2] = v8[11];
  v27[3] = v16;
  v23 = v18;
  v24 = v17;
  v19 = v8[12];
  v25 = v8[11];
  v26 = v19;
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a8;
  v20[4] = a1;
  v20[5] = a5;
  v20[6] = a6;
  v21 = *(*v14 + 816);

  sub_1CF1AE1DC(v27, v28);

  v21(&v23, sub_1CF658774, v20);

  v28[0] = v23;
  v28[1] = v24;
  v28[2] = v25;
  v28[3] = v26;
  return sub_1CF1AE25C(v28);
}

double sub_1CF64F7C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  swift_retain_n();
  v15 = a1;
  v16 = type metadata accessor for Continuation();
  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, a9, v13, a10, v14, v16, MEMORY[0x1E69E6158]);

  return result;
}

uint64_t sub_1CF64F8E0()
{
  v0 = sub_1CF04ADA4();
  sub_1CEFE48D8(*(v0 + 160), *(v0 + 168));
  return v0;
}

uint64_t sub_1CF64F918()
{
  v0 = sub_1CF04ADA4();
  sub_1CEFE48D8(*(v0 + 160), *(v0 + 168));

  return swift_deallocClassInstance();
}

uint64_t sub_1CF64F97C(uint64_t a1)
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

uint64_t sub_1CF64FA44()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](540945696, 0xE400000000000000);
  sub_1CF9E7FE8();
  return 0;
}

uint64_t sub_1CF64FB60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v3, AssociatedTypeWitness);
  v6[0] = AssociatedTypeWitness;
  v6[1] = swift_getAssociatedTypeWitness();
  v6[2] = swift_getAssociatedConformanceWitness();
  v6[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID(0, v6);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF64FCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v60 = a3;
  v61 = a4;
  v56 = a1;
  v9 = *v6;
  v10 = *(*v6 + 560);
  v11 = *(*v6 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v58 = AssociatedTypeWitness;
  v59 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - v18;
  v20 = *(v9 + 576);
  v21 = *(a5 + 8);
  v22 = *(a2 + 32);
  v23 = v63;
  (*(*v22 + 288))(&v6[v20], v60, v61, v21, v17);
  if (!v23)
  {
    v24 = v57;
    v63 = 0;
    if ((*(v59 + 48))(v15, 1, v58) == 1)
    {
      (*(v24 + 8))(v15, v13);
      return 0;
    }

    else
    {
      v25 = v59;
      v26 = *(v59 + 32);
      v55 = v19;
      v27 = v19;
      v28 = v58;
      v26(v27, v15, v58);
      swift_beginAccess();
      sub_1CEFCCBDC((v6 + 56), v62, &unk_1EC4C1BE0, &unk_1CF9FD400);
      v61 = *(v6 + 15);
      v30 = type metadata accessor for JobLockRule(255, v11, v10, v29);
      v57 = v30;
      sub_1CF9E7FA8();
      v54 = *(*(v30 - 8) + 72);
      swift_allocObject();
      v60 = sub_1CF9E6D68();
      v32 = v31;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v34 = *(TupleTypeMetadata3 + 48);
      v35 = *(TupleTypeMetadata3 + 64);
      v36 = *(v25 + 16);
      v36(v32, &v6[v20], v28);
      v37 = v32 + v34;
      v38 = v55;
      v36(v37, v55, v28);
      v36(v32 + v35, v38, v28);
      v39 = v57;
      swift_storeEnumTagMultiPayload();
      v40 = v32 + v54;
      v41 = *(TupleTypeMetadata3 + 48);
      v42 = *(TupleTypeMetadata3 + 64);
      v36(v40, &v6[*(*v6 + 584)], v28);
      v43 = v55;
      v36(v40 + v41, v55, v28);
      v36(v40 + v42, v43, v28);
      swift_storeEnumTagMultiPayload();
      v44 = sub_1CF045898(v60, v39);
      v22 = sub_1CF052C94(v62, v61, v44, v45);
      v44, v46, v47, v48, v49, v50, v51, v52;
      sub_1CEFCCC44(v62, &unk_1EC4C1BE0, &unk_1CF9FD400);
      (*(v59 + 8))(v43, v28);
    }
  }

  return v22;
}

uint64_t sub_1CF6501B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v164 = a7;
  v165 = a8;
  v158 = a5;
  v159 = a6;
  v166 = a4;
  v160 = a3;
  v161 = a1;
  v9 = v8;
  v10 = *v8;
  v11 = v10[69];
  v12 = v9;
  v153 = v10[71];
  v13 = v153;
  v14 = v11;
  v154 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v142 = sub_1CF9E75D8();
  v140 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v128 - v16;
  v17 = v12;
  v18 = v10[68];
  v19 = v10[70];
  v20 = v17;
  v22 = type metadata accessor for SnapshotItem(255, v18, v19, v21);
  v145 = sub_1CF9E75D8();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v139 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v157 = &v128 - v25;
  v147 = v22;
  v148 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v137 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v146 = &v128 - v29;
  *&v30 = v18;
  *(&v30 + 1) = v14;
  *&v31 = v19;
  *(&v31 + 1) = v13;
  v162 = v31;
  v163 = v30;
  v168 = v31;
  v167 = v30;
  v32 = type metadata accessor for ReconciliationMutation(0, &v167);
  v33 = *(v32 - 8);
  v155 = v32;
  v156 = v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v128 - v34;
  v36 = swift_getAssociatedTypeWitness();
  v37 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = swift_getAssociatedConformanceWitness();
  *&v167 = v36;
  *(&v167 + 1) = v37;
  *&v168 = AssociatedConformanceWitness;
  *(&v168 + 1) = v39;
  v151 = type metadata accessor for FileItemVersion(0, &v167);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v128 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v138 = &v128 - v42;
  v168 = v162;
  v167 = v163;
  v152 = type metadata accessor for JobResult(0, &v167);
  v43 = swift_getAssociatedTypeWitness();
  v44 = swift_getAssociatedConformanceWitness();
  v45 = swift_getAssociatedConformanceWitness();
  *&v167 = v43;
  *(&v167 + 1) = AssociatedTypeWitness;
  v141 = AssociatedTypeWitness;
  *&v168 = v44;
  *(&v168 + 1) = v45;
  type metadata accessor for ReconciliationID(255, &v167);
  type metadata accessor for ReconciliationSideMutation(255, v18, v19, v46);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = v10;
  v49 = &v35[*(TupleTypeMetadata2 + 48)];
  v50 = v20;
  v51 = v48[73];
  v52 = *(v43 - 8);
  v154 = *(v52 + 16);
  v153 = v52 + 16;
  v154(v35, &v20[v51], v43);
  swift_storeEnumTagMultiPayload();
  *v49 = xmmword_1CF9FD920;
  v49[16] = 4;
  swift_storeEnumTagMultiPayload();
  v53 = v155;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v160, v35);
  v54 = v164;
  v156[1](v35, v53);
  v55 = *(v161 + 32);
  v56 = *(*v55 + 240);
  v57 = *v55 + 240;
  v58 = *(v165 + 8);
  v59 = v50;
  v60 = &v50[v51];
  v61 = v157;
  v56(v60, 1, v166, v54, v58);
  v136 = v58;
  v133 = v57;
  v152 = 0;
  v134 = v56;
  v135 = v55;
  v62 = v146;
  v132 = v51;
  v155 = v43;
  v156 = v59;
  v63 = v148;
  v64 = *(v148 + 48);
  v65 = v147;
  if (v64(v61, 1, v147) == 1)
  {
    (*(v144 + 8))(v61, v145);
    v168 = v162;
    v167 = v163;
    type metadata accessor for Propagation.PropagationError(0, &v167);
    swift_getWitnessTable();
    v66 = swift_allocError();
    v68 = v67;
    v69 = v155;
    v70 = (v67 + *(swift_getTupleTypeMetadata2() + 48));
    v154(v68, v156 + *(*v156 + 72), v69);
    *v70 = 0xD000000000000013;
    v70[1] = 0x80000001CFA553B0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v71 = v66;
    v72 = 0;
LABEL_11:
    v91 = v164;
LABEL_12:
    *(&v168 + 1) = v91;
    v169 = v165;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v167);
    (*(*(v91 - 8) + 16))(boxed_opaque_existential_0, v166, v91);
    v101 = v71;
    v158(&v167, 0, 0, 0, v71);

    result = sub_1CEFCCC44(&v167, &unk_1EC4C1B30, &qword_1CFA05300);
    if (v72)
    {
      return (*(v150 + 8))(v149, v151);
    }

    return result;
  }

  v131 = v64;
  v157 = *(v63 + 32);
  (v157)(v62, v61, v65);
  v73 = v150 + 16;
  v74 = &v62[*(v65 + 40)];
  v130 = *(v150 + 16);
  v130(v149, v74, v151);
  WitnessTable = swift_getWitnessTable();
  sub_1CF06D940(v65, WitnessTable, &v167);
  v77 = *(v63 + 8);
  v76 = v63 + 8;
  v75 = v77;
  v77(v62, v65);
  LODWORD(v146) = v167;
  v78 = *(*v156 + 72);
  v79 = v143;
  v80 = v136;
  v71 = v152;
  (*(**(v161 + 16) + 160))(v156 + v78, v166, v164, v136);
  if (v71)
  {
    v72 = 1;
    goto LABEL_11;
  }

  v128 = v73;
  v152 = v75;
  v81 = v76;
  v82 = v78;
  v83 = v157;
  v148 = v81;
  v84 = (*(*(v141 - 8) + 48))(v79, 1);
  (*(v140 + 8))(v79, v142);
  if (v84 != 1)
  {
    v167 = v163;
    v168 = v162;
    type metadata accessor for Propagation.PropagationError(0, &v167);
    swift_getWitnessTable();
    v95 = swift_allocError();
    v97 = v96;
    v98 = v155;
    v99 = (v96 + *(swift_getTupleTypeMetadata2() + 48));
    v154(v97, v156 + v82, v98);
    *v99 = 0xD000000000000019;
    v99[1] = 0x80000001CFA55400;
    v72 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v71 = v95;
    goto LABEL_11;
  }

  v85 = v139;
  v86 = v80;
  v87 = v135;
  v134(v156 + v78, 1, v166, v164, v86);
  v89 = v154;
  v88 = v155;
  v90 = v147;
  if (v131(v85, 1, v147) == 1)
  {
    (*(v144 + 8))(v85, v145);
    v91 = v164;
    v92 = v156;
    if (v146 == 1)
    {
      *(&v168 + 1) = v164;
      v169 = v165;
      v93 = __swift_allocate_boxed_opaque_existential_0(&v167);
      (*(*(v91 - 8) + 16))(v93, v166, v91);
      v158(&v167, 0, 0, 0, 0);
      (*(v150 + 8))(v149, v151);
      return sub_1CEFCCC44(&v167, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    v167 = v163;
    v168 = v162;
    type metadata accessor for Propagation.PropagationError(0, &v167);
    swift_getWitnessTable();
    v116 = swift_allocError();
    v118 = v117;
    v119 = (v117 + *(swift_getTupleTypeMetadata2() + 48));
    v89(v118, v92 + v82, v88);
    *v119 = 0xD00000000000002DLL;
    v119[1] = 0x80000001CFA553D0;
    v72 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v71 = v116;
    goto LABEL_12;
  }

  v102 = v137;
  v83(v137, v85, v90);
  sub_1CF06D940(v90, WitnessTable, &v167);
  v103 = v90;
  v104 = v167;
  v105 = v138;
  v130(v138, &v102[*(v103 + 40)], v151);
  v152(v102, v103);
  v106 = *(v87 + 16);
  v107 = v104 == 1;
  v108 = v164;
  v109 = v156;
  if (v107)
  {
    v110 = swift_allocObject();
    v111 = v165;
    v110[2] = v108;
    v110[3] = v111;
    v112 = v160;
    v113 = v158;
    v114 = v159;
    v110[4] = v161;
    v110[5] = v113;
    v110[6] = v114;
    v110[7] = v112;
    v110[8] = v109;
    v115 = *(*v106 + 672);

    v115(v109 + v82, v109 + v132, sub_1CF6586E8, v110);
    v125 = v149;
  }

  else
  {
    v120 = swift_allocObject();
    v121 = v165;
    v120[2] = v108;
    v120[3] = v121;
    v122 = v160;
    v120[4] = v161;
    v120[5] = v109;
    v123 = v159;
    v120[6] = v158;
    v120[7] = v123;
    v120[8] = v122;
    v124 = *(*v106 + 680);

    v125 = v149;
    v124(v109 + v82, v105, v109 + v132, v149, sub_1CF6586D0, v120);
  }

  v126 = *(v150 + 8);
  v127 = v151;
  v126(v125, v151);
  return (v126)(v105, v127);
}

double sub_1CF651240(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a1;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a2;
  v17[8] = a3;
  v17[9] = a4;
  swift_retain_n();
  v18 = a1;
  v19 = type metadata accessor for Continuation();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559418, v16, sub_1CF65871C, v17, v19, MEMORY[0x1E69E6158]);

  return result;
}

uint64_t sub_1CF6513A4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), void (*a5)(char *, uint64_t), void (*a6)(uint64_t *, void, void, void, uint64_t), uint64_t a7)
{
  v71 = a5;
  v68 = a7;
  v69 = a6;
  v77 = a2;
  v70 = a1;
  v10 = *(*a3 + 88);
  v11 = *(*a3 + 96);
  v12 = *(*a3 + 104);
  v73 = *(*a3 + 80);
  v9 = v73;
  v74 = v10;
  v75 = v11;
  v76 = v12;
  v13 = type metadata accessor for ReconciliationMutation(0, &v73);
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v57 - v14;
  v73 = v9;
  v74 = v10;
  v75 = v11;
  v76 = v12;
  v15 = type metadata accessor for ItemReconciliation(255, &v73);
  v16 = sub_1CF9E75D8();
  v63 = *(v16 - 8);
  v64 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v66 = v15;
  v67 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v57 - v20;
  v22 = type metadata accessor for SnapshotItem(255, v9, v11, v21);
  v23 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v57 - v26;
  if (v77)
  {
    v58 = v12;
    v59 = a3;
    v28 = v70;
    v29 = v70[3];
    v30 = v70[4];
    v31 = __swift_project_boxed_opaque_existential_1(v70, v29);
    v32 = v72;
    v33 = *(v30 + 8);
    v34 = *(*a4 + 576);
    result = sub_1CF68DDB0(a4 + v34, v31, v29, v33, v18);
    if (!v32)
    {
      v57 = v34;
      v71 = a4;
      v72 = 0;
      v36 = v28;
      v38 = v66;
      v37 = v67;
      if ((*(v67 + 48))(v18, 1, v66) == 1)
      {
        (*(v63 + 8))(v18, v64);
        sub_1CF1A91AC(v36, &v73);
        v69(&v73, 0, 0, 0, v77);
        return sub_1CEFCCC44(&v73, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      else
      {
        v45 = v65;
        (*(v37 + 32))(v65, v18, v38);
        if (sub_1CF07CD80(v38) || *&v45[*(type metadata accessor for ItemReconciliationHalf(0, v9, v11, v46) + 36)])
        {
          sub_1CF1A91AC(v36, &v73);
          v69(&v73, 0, 0, 0, v77);
          sub_1CEFCCC44(&v73, &unk_1EC4C1B30, &qword_1CFA05300);
          return (*(v37 + 8))(v45, v38);
        }

        else
        {
          v73 = v9;
          v74 = v10;
          v75 = v11;
          v76 = v58;
          v64 = type metadata accessor for JobResult(0, &v73);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v48 = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v50 = swift_getAssociatedConformanceWitness();
          v73 = AssociatedTypeWitness;
          v74 = v48;
          v75 = AssociatedConformanceWitness;
          v76 = v50;
          type metadata accessor for ReconciliationID(255, &v73);
          type metadata accessor for ReconciliationSideMutation(255, v9, v11, v51);
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          v53 = v60;
          v54 = &v60[*(TupleTypeMetadata2 + 48)];
          v55 = v71;
          (*(*(AssociatedTypeWitness - 8) + 16))(v60, v71 + v57, AssociatedTypeWitness);
          swift_storeEnumTagMultiPayload();
          if (qword_1EDEABDE0 != -1)
          {
            swift_once();
          }

          *v54 = qword_1EDEABDE8;
          *(v54 + 8) = *(v55 + 120);
          swift_storeEnumTagMultiPayload();
          v56 = v62;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v59, v53);
          (*(v61 + 8))(v53, v56);
          sub_1CF1A91AC(v36, &v73);
          v69(&v73, 0, 0, 0, v77);
          sub_1CEFCCC44(&v73, &unk_1EC4C1B30, &qword_1CFA05300);
          return (*(v67 + 8))(v65, v38);
        }
      }
    }
  }

  else
  {
    v67 = v25;
    v77 = v24;
    v73 = v9;
    v74 = v10;
    v75 = v11;
    v76 = v12;
    v66 = type metadata accessor for JobResult(0, &v73);
    v73 = v9;
    v74 = v10;
    v75 = v11;
    v76 = v12;
    type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v73);
    v39 = v70;
    v40 = sub_1CF657094(a4 + *(*a4 + 584), *(a4 + 15), *(a4 + 16), *(a4 + 17) | 0x800, type metadata accessor for Ingestion.FetchChildrenMetadata);
    sub_1CF803A0C(a3, v40);

    v42 = v39[3];
    v41 = v39[4];
    v43 = __swift_project_boxed_opaque_existential_1(v39, v42);
    (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
    v44 = v72;
    sub_1CF611904(v27, a4 + *(*a4 + 576), 0, 0, 0, v71, *(a4 + 15), *(a4 + 16), *(a4 + 17) | 0x400, a3, v43, v42, v41);
    if (v44)
    {
      return (*(v67 + 8))(v27, v77);
    }

    else
    {
      (*(v67 + 8))(v27, v77);
      sub_1CF1A91AC(v39, &v73);
      v69(&v73, 0, 0, 0, 0);
      return sub_1CEFCCC44(&v73, &unk_1EC4C1B30, &qword_1CFA05300);
    }
  }

  return result;
}

double sub_1CF651C00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a3;
  v15[5] = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a6;
  v17[5] = a3;
  v17[6] = a1;
  v17[7] = a2;
  v17[8] = a4;
  v17[9] = a5;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v18 = a1;
  v19 = type metadata accessor for Continuation();
  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF559114, v15, sub_1CF559418, v16, sub_1CF658748, v17, v19, MEMORY[0x1E69E6158]);

  return result;
}

uint64_t sub_1CF651D94(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(char *, uint64_t), void (*a6)(__int128 *, void, void, void, uint64_t), uint64_t a7)
{
  v42 = a7;
  v43 = a6;
  v40 = a5;
  v49 = a4;
  v50 = a1;
  v47 = a3;
  v8 = *a2;
  v9 = *(*a2 + 80);
  v10 = *(*a2 + 96);
  v38 = type metadata accessor for SnapshotItem(255, v9, v10, a4);
  v39 = sub_1CF9E75D8();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v37 - v11;
  *&v12 = v9;
  *(&v12 + 1) = *(v8 + 88);
  v52 = v12;
  v13 = *(v8 + 104);
  v44 = v10;
  *&v14 = v10;
  *(&v14 + 1) = v13;
  v51 = v14;
  v53 = v12;
  v54 = v14;
  v46 = type metadata accessor for ReconciliationMutation(0, &v53);
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v16 = &v37 - v15;
  v53 = v52;
  v54 = v51;
  v45 = type metadata accessor for JobResult(0, &v53);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  *&v53 = AssociatedTypeWitness;
  *(&v53 + 1) = v18;
  v21 = v47;
  *&v54 = AssociatedConformanceWitness;
  *(&v54 + 1) = v20;
  type metadata accessor for ReconciliationID(255, &v53);
  type metadata accessor for ReconciliationSideMutation(255, v9, v44, v22);
  v23 = &v16[*(swift_getTupleTypeMetadata2() + 48)];
  v24 = *(*v21 + 576);
  (*(*(AssociatedTypeWitness - 8) + 16))(v16, v21 + v24, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *v23 = xmmword_1CF9FD920;
  v23[16] = 4;
  v25 = v49;
  swift_storeEnumTagMultiPayload();
  v26 = v46;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(a2, v16);
  (*(v48 + 8))(v16, v26);
  if (v25)
  {
    v53 = v52;
    v54 = v51;
    type metadata accessor for Ingestion.FetchItemMetadata(0, &v53);
    v27 = sub_1CF657094(v21 + v24, v21[15], v21[16], v21[17] | 0x800, type metadata accessor for Ingestion.FetchItemMetadata);
    sub_1CF803A0C(a2, v27);

    sub_1CF1A91AC(v50, &v53);
    v43(&v53, 0, 0, 0, v25);
    return sub_1CEFCCC44(&v53, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  else
  {
    v29 = v37;
    v30 = v50;
    v31 = v50[3];
    v32 = v50[4];
    v33 = v21;
    v34 = __swift_project_boxed_opaque_existential_1(v50, v31);
    v35 = v41;
    (*(*(v38 - 8) + 56))(v41, 1, 1);
    v36 = v55;
    sub_1CF611904(v35, v33 + v24, 0, 0, 0, v40, v33[15], v33[16], v33[17] | 0x400, a2, v34, v31, v32);
    if (v36)
    {
      return (*(v29 + 8))(v41, v39);
    }

    else
    {
      (*(v29 + 8))(v41, v39);
      sub_1CF1A91AC(v30, &v53);
      v43(&v53, 0, 0, 0, 0);
      return sub_1CEFCCC44(&v53, &unk_1EC4C1B30, &qword_1CFA05300);
    }
  }
}

uint64_t sub_1CF6522FC()
{
  v1 = *(*v0 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);
  (v5)((AssociatedTypeWitness - 8), v0 + v1, AssociatedTypeWitness);
  v3 = v0 + *(*v0 + 584);

  return v5(v3, AssociatedTypeWitness);
}

uint64_t sub_1CF6523F4()
{
  v0 = sub_1CF04ADA4();
  v1 = *(*v0 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);
  v3(v0 + v1, AssociatedTypeWitness);
  v3(v0 + *(*v0 + 584), AssociatedTypeWitness);
  return v0;
}

uint64_t sub_1CF6524F8@<X0>(uint64_t a1@<X8>)
{
  sub_1CF64FB60(a1);
  v4[0] = swift_getAssociatedTypeWitness();
  v4[1] = swift_getAssociatedTypeWitness();
  v4[2] = swift_getAssociatedConformanceWitness();
  v4[3] = swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for ReconciliationID(0, v4);
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_1CF652684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for JobLockRule(0, *(*v4 + 600), *(*v4 + 616), a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7 + 22;
  swift_beginAccess();
  sub_1CEFCCBDC((v4 + 56), v17, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v9 = *(v4 + 15);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1CF9E75D8();
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 16))(v8, &v4[*(*v4 + 576)], AssociatedTypeWitness);
  (*(v12 + 56))(&v8[v11], 1, 1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v14 = sub_1CF052B3C(v17, v9, v8, v13);
  (*(v6 + 8))(v8, v5);
  sub_1CEFCCC44(v17, &unk_1EC4C1BE0, &unk_1CF9FD400);
  return v14;
}

uint64_t sub_1CF6528E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  LODWORD(v94) = a5;
  v100 = a4;
  v101 = a2;
  v102 = a8;
  v13 = *v9;
  v14 = *v9;
  v95 = a3;
  v96 = v14;
  v15 = *(v13 + 600);
  v99 = *(v15 - 8);
  v16 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v97 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v89 - v18;
  v20 = *(v19 + 616);
  v22 = type metadata accessor for FileTreeWriter.ItemOrContinuation(255, v15, v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v23 = sub_1CF9E8238();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = (&v89 - v25);
  (*(v27 + 16))(&v89 - v25, a1, v23, v24);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v37 = v101;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v39 = a6;
    if (EnumCaseMultiPayload)
    {
      v40 = v102;
      if (EnumCaseMultiPayload == 1)
      {
        (*(*(v22 - 8) + 8))(v26, v22);
        v41 = swift_allocObject();
        *(v41 + 16) = v39;
        *(v41 + 24) = a7;
        v42 = swift_allocObject();
        v42[2] = v39;
        v42[3] = a7;
        v42[4] = v37;
        v43 = type metadata accessor for Continuation();
        swift_retain_n();

        sub_1CF92E6B4("handleLookupResult(lookupResult:baseContinuation:result:db:expectTrackedItem:completion:)", 89, 2u, sub_1CF045408, 0, sub_1CF559418, v41, sub_1CF658128, v42, v43, MEMORY[0x1E69E6158]);
      }

      else
      {
        (*(*(v22 - 8) + 8))(v26, v22);
        v63 = swift_allocObject();
        *(v63 + 16) = v39;
        *(v63 + 24) = a7;
        v64 = swift_allocObject();
        *(v64 + 16) = v39;
        *(v64 + 24) = a7;
        v65 = type metadata accessor for Continuation();
        swift_retain_n();
        sub_1CF92E6B4("handleLookupResult(lookupResult:baseContinuation:result:db:expectTrackedItem:completion:)", 89, 2u, sub_1CF045408, 0, sub_1CF559418, v63, sub_1CF658100, v64, v65, MEMORY[0x1E69E6158]);
      }

      type metadata accessor for TrackingContinuation();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v35 = *(*(TupleTypeMetadata2 - 8) + 56);
      v36 = v40;
      return v35(v36, 1, 1, TupleTypeMetadata2);
    }

    v44 = v98;
    v45 = *(v99 + 32);
    v92 = v99 + 32;
    v93 = a6;
    v91 = v45;
    v45(v98, v26, v15);
    (*(v20 + 144))(v15, v20);
    v47 = v46;
    if (v46 >> 62)
    {
      v48 = a7;
      if (v46 >> 62 != 1)
      {
        v76 = swift_allocObject();
        v101 = v76;
        *(v76 + 16) = v93;
        *(v76 + 24) = a7;
        v77 = v99;
        v78 = v97;
        (*(v99 + 16))(v97, v44, v15);
        v79 = (*(v77 + 80) + 49) & ~*(v77 + 80);
        v90 = (v16 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
        v80 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
        v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
        v82 = swift_allocObject();
        *(v82 + 16) = v15;
        v83 = v96;
        *(v82 + 24) = *(v96 + 608);
        *(v82 + 32) = v20;
        *(v82 + 40) = *(v83 + 624);
        *(v82 + 48) = v94 & 1;
        v91(v82 + v79, v78, v15);
        *(v82 + v90) = v100;
        *(v82 + v80) = v9;
        *(v82 + v81) = v95;
        v84 = (v82 + ((v81 + 15) & 0xFFFFFFFFFFFFFFF8));
        *v84 = v93;
        v84[1] = v48;
        v85 = type metadata accessor for Continuation();
        swift_retain_n();

        sub_1CF92E6B4("handleLookupResult(lookupResult:baseContinuation:result:db:expectTrackedItem:completion:)", 89, 2u, sub_1CF045408, 0, sub_1CF559418, v101, sub_1CF658058, v82, v85, MEMORY[0x1E69E6158]);

        (*(v99 + 8))(v98, v15);
        goto LABEL_3;
      }

      v47 = v46 & 0x3FFFFFFFFFFFFFFFLL;
      if (v37)
      {
LABEL_10:
        v49 = *(*v47 + 112);

        v51 = v49(v50);
        if (!v52)
        {

          type metadata accessor for TrackingContinuation();
          v86 = swift_getTupleTypeMetadata2();
          v87 = *(v86 + 48);
          v88 = v102;
          v91(v102, v44, v15);
          *(v88 + v87) = v47;
          return (*(*(v86 - 8) + 56))(v88, 0, 1, v86);
        }

        v53 = v52;
        v94 = v51;
        v54 = swift_allocObject();
        v95 = v54;
        v55 = v93;
        *(v54 + 16) = v93;
        *(v54 + 24) = a7;
        v56 = v99;
        v57 = v97;
        (*(v99 + 16))(v97, v44, v15);
        v58 = (*(v56 + 80) + 88) & ~*(v56 + 80);
        v59 = v44;
        v60 = swift_allocObject();
        v60[2] = v15;
        v61 = v96;
        v60[3] = *(v96 + 608);
        v60[4] = v20;
        v60[5] = *(v61 + 624);
        v60[6] = v55;
        v60[7] = a7;
        v60[8] = v47;
        v60[9] = v94;
        v60[10] = v53;
        v91(v60 + v58, v57, v15);
        v62 = type metadata accessor for Continuation();
        swift_retain_n();
        sub_1CF92E6B4("handleLookupResult(lookupResult:baseContinuation:result:db:expectTrackedItem:completion:)", 89, 2u, sub_1CF045408, 0, sub_1CF559418, v95, sub_1CF657FE8, v60, v62, MEMORY[0x1E69E6158]);

        (*(v99 + 8))(v59, v15);
        goto LABEL_3;
      }
    }

    else
    {
      v48 = a7;
      if (v37)
      {
        goto LABEL_10;
      }
    }

    v67 = swift_allocObject();
    v101 = v67;
    v68 = v93;
    *(v67 + 16) = v93;
    *(v67 + 24) = v48;
    v69 = v99;
    v70 = v97;
    (*(v99 + 16))(v97, v44, v15);
    v71 = (*(v69 + 80) + 72) & ~*(v69 + 80);
    v72 = v48;
    v73 = swift_allocObject();
    v73[2] = v15;
    v74 = v96;
    v73[3] = *(v96 + 608);
    v73[4] = v20;
    v73[5] = *(v74 + 624);
    v73[6] = v68;
    v73[7] = v72;
    v73[8] = v47;
    v91(v73 + v71, v70, v15);
    v75 = type metadata accessor for Continuation();
    swift_retain_n();
    sub_1CF92E6B4("handleLookupResult(lookupResult:baseContinuation:result:db:expectTrackedItem:completion:)", 89, 2u, sub_1CF045408, 0, sub_1CF559418, v101, sub_1CF657F80, v73, v75, MEMORY[0x1E69E6158]);

    (*(v69 + 8))(v98, v15);
    goto LABEL_3;
  }

  v28 = *v26;
  v29 = swift_allocObject();
  v30 = a6;
  *(v29 + 16) = a6;
  *(v29 + 24) = a7;
  v31 = swift_allocObject();
  v31[2] = v9;
  v31[3] = v28;
  v31[4] = v101;
  v31[5] = v30;
  v31[6] = a7;
  swift_retain_n();

  v32 = v28;
  v33 = type metadata accessor for Continuation();

  sub_1CF92E6B4("handleLookupResult(lookupResult:baseContinuation:result:db:expectTrackedItem:completion:)", 89, 2u, sub_1CF045408, 0, sub_1CF559418, v29, sub_1CF658148, v31, v33, MEMORY[0x1E69E6158]);

LABEL_3:
  type metadata accessor for TrackingContinuation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(*(TupleTypeMetadata2 - 8) + 56);
  v36 = v102;
  return v35(v36, 1, 1, TupleTypeMetadata2);
}

uint64_t sub_1CF653478(void *a1, uint64_t **a2, void *a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void *), uint64_t a6)
{
  v10 = *a2;
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  return sub_1CF658174(a3, a4, v13, a5, a6, v10[75], v10[76], v11, v10[77], v10[78], v12);
}

uint64_t sub_1CF65355C(uint64_t a1, void (*a2)(_BYTE *, uint64_t, void, void, void *), uint64_t a3, uint64_t a4)
{
  sub_1CF1A91AC(a1, v17);
  sub_1CF658638(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CF65866C();
  v6 = swift_allocError();
  *v7 = v15[0];
  v8 = v15[4];
  v10 = v15[1];
  v9 = v15[2];
  *(v7 + 48) = v15[3];
  *(v7 + 64) = v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  v12 = v15[6];
  v11 = v15[7];
  v13 = v15[5];
  *(v7 + 128) = v16;
  *(v7 + 96) = v12;
  *(v7 + 112) = v11;
  *(v7 + 80) = v13;
  a2(v17, a4, 0, 0, v6);

  return sub_1CEFCCC44(v17, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF653654(void *a1, int a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t *a5, uint64_t a6, void (*a7)(uint64_t *, void, uint64_t, unint64_t, void), uint64_t a8)
{
  v64 = a6;
  v59 = a8;
  v60 = a7;
  v63 = a5;
  LODWORD(v61) = a2;
  v72 = a1;
  v56 = *a4;
  v10 = v56[12];
  v11 = v56[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v58 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v55 - v13;
  v16 = type metadata accessor for SnapshotItem(255, v11, v10, v15);
  v17 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  v62 = *(v16 - 8);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v29 = &v55 - v28;
  if (v61)
  {
    v57 = a3;
    v58 = v26;
    v61 = v24;
    (*(v25 + 16))(v22, a3, v11, v27);
    v56 = v10;
    sub_1CF06B77C(v22, v11, v10, v29);
    v31 = v72[3];
    v30 = v72[4];
    v32 = __swift_project_boxed_opaque_existential_1(v72, v31);
    v33 = v62;
    (*(v62 + 16))(v19, v29, v16);
    (*(v33 + 56))(v19, 0, 1, v16);
    v34 = v65;
    sub_1CF611904(v19, v29, 0, 0, 0, a4, v63[15], v63[16], v63[17], v64, v32, v31, v30);
    (*(v58 + 8))(v19, v61);
    if (!v34)
    {
      sub_1CF1A91AC(v72, &v68);
      v66 = 0;
      v67 = 0xE000000000000000;
      MEMORY[0x1D3868CC0](0x3A64656B63617274, 0xE800000000000000);
      sub_1CF9E7FE8();
      v47 = v67;
      v60(&v68, 0, v66, v67, 0);
      v47, v48, v49, v50, v51, v52, v53, v54;
      sub_1CEFCCC44(&v68, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    return (*(v62 + 8))(v29, v16);
  }

  else
  {
    v35 = v56[11];
    v36 = v56[13];
    v68 = v11;
    v69 = v35;
    v70 = v10;
    v71 = v36;
    type metadata accessor for JobResult(0, &v68);
    v68 = v11;
    v69 = v35;
    v70 = v10;
    v71 = v36;
    type metadata accessor for Ingestion.FetchItemMetadata(0, &v68);
    (*(v10 + 64))(v11, v10);
    v37 = sub_1CF657094(v14, v63[15], v63[16], 2048, type metadata accessor for Ingestion.FetchItemMetadata);
    (*(v57 + 8))(v14, v58);
    sub_1CF803A0C(v64, v37);

    sub_1CF1A91AC(v72, &v68);
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA55370);
    sub_1CF9E7FE8();
    v38 = v67;
    v60(&v68, 0, v66, v67, 0);
    v38, v39, v40, v41, v42, v43, v44, v45;
    return sub_1CEFCCC44(&v68, &unk_1EC4C1B30, &qword_1CFA05300);
  }
}

uint64_t sub_1CF653C0C(uint64_t a1, void (*a2)(_BYTE *, uint64_t, void, unint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1CF1A91AC(a1, v18);
  MEMORY[0x1D3868CC0](0x2D676E697373696DLL, 0xED00003A65736162);
  sub_1CF9E7FE8();
  a2(v18, a4, 0, 0xE000000000000000, 0);
  0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
  return sub_1CEFCCC44(v18, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF653CF4(uint64_t a1, void (*a2)(_BYTE *, uint64_t, void, unint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1CF1A91AC(a1, v22);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  sub_1CF9E7FE8();
  a2(v22, a4, 0, 0xE000000000000000, 0);
  0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
  return sub_1CEFCCC44(v22, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF653DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v28 = a7;
  v29 = a8;
  v30 = a5;
  v31 = a6;
  v25 = *v8;
  v32[0] = swift_getAssociatedTypeWitness();
  v32[1] = swift_getAssociatedTypeWitness();
  v32[2] = swift_getAssociatedConformanceWitness();
  v32[3] = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for FileItemVersion(255, v32);
  v14 = sub_1CF9E75D8();
  v26 = *(v14 - 8);
  v27 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = *(*(a1 + 32) + 16);
  if (a2)
  {
    type metadata accessor for TrackingContinuation();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
    }
  }

  else
  {
    v18 = 0;
  }

  v25 = *(v25 + 576);
  (*(*(v13 - 8) + 56))(v16, 1, 1, v13);
  v19 = swift_allocObject();
  v20 = v29;
  v19[2] = v28;
  v19[3] = v20;
  v19[4] = v9;
  v19[5] = v18;
  v19[6] = a3;
  v19[7] = a1;
  v21 = v31;
  v19[8] = v30;
  v19[9] = v21;
  v19[10] = v17;
  v22 = *(*v17 + 536);

  swift_retain_n();

  v22(&v9[v25], v16, 0, 0, 2048, sub_1CF657EA0, v19);

  return (*(v26 + 8))(v16, v27);
}

uint64_t sub_1CF654120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = a8;
  v39 = a1;
  v41 = a5;
  v42 = a7;
  v40 = a6;
  v13 = *(*a2 + 600);
  v43[0] = swift_getAssociatedTypeWitness();
  v43[1] = swift_getAssociatedTypeWitness();
  v43[2] = swift_getAssociatedConformanceWitness();
  v43[3] = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for FileItemVersion(255, v43);
  v15 = sub_1CF9E75D8();
  v35 = *(v15 - 8);
  v36 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  type metadata accessor for TrackingContinuation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_1CF9E75D8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - v21;
  v23 = v39;
  v37 = a3;
  v39 = a4;
  v24 = a4;
  v25 = v40;
  sub_1CF6528E0(v23, a3, v24, v41, 0, v40, v42, &v33 - v21);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v22, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v20 + 8))(v22, v19);
  }

  v27 = *&v22[*(TupleTypeMetadata2 + 48)];
  (*(*(v13 - 8) + 8))(v22, v13);
  v34 = *(*a2 + 576);
  (*(*(v14 - 8) + 56))(v17, 1, 1, v14);
  v28 = swift_allocObject();
  v30 = v38;
  v29 = v39;
  v28[2] = a9;
  v28[3] = a10;
  v28[4] = a2;
  v28[5] = v37;
  v28[6] = v27;
  v31 = v41;
  v28[7] = v29;
  v28[8] = v31;
  v28[9] = v25;
  v28[10] = v42;
  v32 = *(*v30 + 536);

  v32(a2 + v34, v17, 0, 0, 3072, sub_1CF657EB8, v28);

  return (*(v35 + 8))(v17, v36);
}

uint64_t sub_1CF654564(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11)
{
  v53 = a5;
  v54 = a8;
  v51 = a4;
  v52 = a1;
  v48 = *a2;
  v14 = *(v48 + 600);
  type metadata accessor for TrackingContinuation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_1CF9E75D8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - v18;
  v49 = v14;
  v50 = *(v14 - 8);
  v20 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v22 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v55 = &v44 - v24;
  v25 = v52;
  if (a3)
  {
    v26 = a3;
  }

  else
  {
    v26 = v51;
  }

  v27 = v53;
  v52 = a7;
  v53 = a6;
  v28 = a6;
  v29 = v54;
  sub_1CF6528E0(v25, v26, v27, v28, 1, a7, v54, v19);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v19, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v17 + 8))(v19, v16);
  }

  v51 = a11;
  v46 = *&v19[*(TupleTypeMetadata2 + 48)];
  v47 = a10;
  v31 = v49;
  v32 = v50;
  v45 = *(v50 + 32);
  v33 = v55;
  v45(v55, v19, v49);
  v34 = swift_allocObject();
  v35 = v52;
  *(v34 + 16) = v52;
  *(v34 + 24) = v29;
  (*(v32 + 16))(v22, v33, v31);
  v36 = (*(v32 + 80) + 88) & ~*(v32 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = v31;
  v38 = v48;
  v40 = v46;
  v39 = v47;
  *(v37 + 3) = *(v48 + 608);
  *(v37 + 4) = v39;
  *(v37 + 5) = *(v38 + 616);
  v41 = v51;
  *(v37 + 6) = *(v38 + 624);
  *(v37 + 7) = v41;
  *(v37 + 8) = v35;
  *(v37 + 9) = v29;
  *(v37 + 10) = v40;
  v42 = v31;
  v45(&v37[v36], v22, v31);
  v43 = type metadata accessor for Continuation();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559418, v34, sub_1CF657F10, v37, v43, MEMORY[0x1E69E6158]);

  return (*(v32 + 8))(v55, v42);
}

uint64_t sub_1CF65496C(uint64_t a1, void (*a2)(_BYTE *, uint64_t, void, unint64_t, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1CF1A91AC(a1, v22);
  MEMORY[0x1D3868CC0](0x636172742D746F6ELL, 0xEC0000003A64656BLL);
  sub_1CF9E7FE8();
  type metadata accessor for FileTreeError(0, a6, a9, v12);
  swift_getWitnessTable();
  v13 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  a2(v22, a4, 0, 0xE000000000000000, v13);

  0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
  return sub_1CEFCCC44(v22, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF654ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SnapshotItem(255, *(a1 + 600), *(a1 + 616), a4);
  result = sub_1CF9E75D8();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF654B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v52 = a5;
  v53 = a3;
  v54 = a4;
  v48 = a1;
  v8 = *v6;
  v9 = *(*v6 + 600);
  v10 = *(*v6 + 616);
  v11 = type metadata accessor for JobLockRule(0, v9, v10, a4);
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v43 - v12;
  v14 = type metadata accessor for SnapshotItem(255, v9, v10, v13);
  v15 = sub_1CF9E75D8();
  v49 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  v50 = v14;
  v51 = *(v14 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - v23;
  v25 = *(a2 + 32);
  v26 = *(v8 + 576);
  v27 = v56;
  (*(*v25 + 240))(&v6[v26], 1, v53, v54, *(v52 + 1), v22);
  if (!v27)
  {
    v52 = v17;
    v53 = v9;
    v54 = v15;
    v44 = v24;
    v56 = 0;
    if ((*(v51 + 48))(v20, 1, v50) == 1)
    {
      (*(v49 + 8))(v20, v54);
      return 0;
    }

    else
    {
      v28 = v50;
      v29 = v51;
      v30 = v44;
      (*(v51 + 32))(v44, v20, v50);
      v31 = v52;
      (*(v29 + 16))(v52, v30, v28);
      (*(v29 + 56))(v31, 0, 1, v28);
      v32 = *(*v6 + 632);
      swift_beginAccess();
      (*(v49 + 40))(&v6[v32], v31, v54);
      swift_endAccess();
      swift_beginAccess();
      sub_1CEFCCBDC((v6 + 56), v55, &unk_1EC4C1BE0, &unk_1CF9FD400);
      v54 = *(v6 + 15);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v34 = *(swift_getTupleTypeMetadata3() + 48);
      v35 = *(*(AssociatedTypeWitness - 8) + 16);
      v36 = &v6[v26];
      v37 = v45;
      v35(v45, v36, AssociatedTypeWitness);
      v38 = (v37 + v34);
      v39 = v44;
      v35(v38, &v44[*(v28 + 36)], AssociatedTypeWitness);
      sub_1CF685B34();
      v40 = v47;
      swift_storeEnumTagMultiPayload();
      v25 = sub_1CF052B3C(v55, v54, v37, v41);
      (*(v46 + 8))(v37, v40);
      sub_1CEFCCC44(v55, &unk_1EC4C1BE0, &unk_1CF9FD400);
      (*(v51 + 8))(v39, v28);
    }
  }

  return v25;
}

uint64_t sub_1CF655094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v50 = a8;
  v51 = a7;
  v52 = a5;
  v53 = a6;
  v47 = a4;
  v48 = a3;
  v54 = a1;
  v10 = *v8;
  v11 = *(*v8 + 616);
  v12 = *(v10 + 600);
  v55[0] = swift_getAssociatedTypeWitness();
  v55[1] = swift_getAssociatedTypeWitness();
  v55[2] = swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = type metadata accessor for FileItemVersion(255, v55);
  v13 = sub_1CF9E75D8();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v42 - v14;
  v16 = type metadata accessor for SnapshotItem(255, v12, v11, v15);
  v17 = sub_1CF9E75D8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  v21 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  v49 = *(*(v54 + 32) + 16);
  v25 = *(v10 + 632);
  swift_beginAccess();
  (*(v18 + 16))(v20, v9 + v25, v17);
  if ((*(v21 + 48))(v20, 1, v16) == 1)
  {
    v26 = *(v18 + 8);

    v26(v20, v17);
    v27 = v51;
    AssociatedConformanceWitness = v51;
    v57 = v50;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v55);
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_0, v47, v27);
    v29 = *(*v9 + 576);
    v30 = v44;
    (*(*(v43 - 8) + 56))(v44, 1, 1);
    type metadata accessor for FileTreeError(0, v12, v11, v31);
    swift_getWitnessTable();
    v32 = swift_allocError();
    sub_1CF72C4D8(v9 + v29, v30, 0, v12, v11, v33);
    (*(v45 + 8))(v30, v46);
    v52(v55, 0, 0, 0, v32);

    return sub_1CEFCCC44(v55, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  else
  {
    (*(v21 + 32))(v24, v20, v16);
    v47 = *(v16 + 40);
    v35 = swift_allocObject();
    v37 = v48;
    v36 = v49;
    v38 = v50;
    v35[2] = v51;
    v35[3] = v38;
    v39 = v53;
    v40 = v52;
    v35[4] = v54;
    v35[5] = v40;
    v35[6] = v39;
    v35[7] = v9;
    v35[8] = v37;
    v52 = (*v36 + 832);
    v41 = *v52;

    v41(v24, &v24[v47], sub_1CF657E5C, v35);

    return (*(v21 + 8))(v24, v16);
  }
}

double sub_1CF65562C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v37 = a5;
  v34 = a7;
  v38 = a6;
  v31 = a4;
  v32 = a3;
  v12 = *a2;
  v33 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v30 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  v18 = swift_allocObject();
  v35 = v18;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v14 + 16))(v17, a1, v13);
  v19 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v33;
  *(v23 + 3) = v12[11];
  *(v23 + 4) = v34;
  *(v23 + 5) = v12[12];
  *(v23 + 6) = v12[13];
  *(v23 + 7) = v36;
  (*(v14 + 32))(&v23[v19], v17, v30);
  *&v23[v20] = a2;
  v24 = v38;
  *&v23[v21] = v37;
  *&v23[v22] = v24;
  v25 = &v23[(v22 + 15) & 0xFFFFFFFFFFFFFFF8];
  v26 = v31;
  *v25 = v32;
  v25[1] = v26;
  v27 = type metadata accessor for Continuation();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559088, v35, sub_1CF657E74, v23, v27, MEMORY[0x1E69E6158]);

  return result;
}

uint64_t sub_1CF65591C(void *a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t *a4, uint64_t a5, void (*a6)(_BYTE *, void, uint64_t, uint64_t, void *), uint64_t a7)
{
  v50 = a7;
  v51 = a6;
  v48 = a5;
  v46 = a4;
  v52 = a2;
  v57 = a1;
  v8 = *(*a3 + 80);
  v45 = *(*a3 + 96);
  v9 = type metadata accessor for SnapshotItem(255, v8, v45, a4);
  v49 = sub_1CF9E75D8();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v11 = &v45 - v10;
  v54 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v45 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v21 = sub_1CF9E8238();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (&v45 - v23);
  (*(v25 + 16))(&v45 - v23, v52, v21, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v24;
    sub_1CF1A91AC(v57, v56);
    v27 = v26;
    v51(v56, 0, 0, 0, v26);

    return sub_1CEFCCC44(v56, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  else
  {
    v29 = v53;
    (*(v15 + 32))(v53, v24, v8);
    v52 = v15;
    (*(v15 + 16))(v18, v29, v8);
    sub_1CF06B77C(v18, v8, v45, v14);
    v30 = v57[3];
    v31 = v57[4];
    v32 = __swift_project_boxed_opaque_existential_1(v57, v30);
    v33 = v54;
    (*(v54 + 16))(v11, v14, v9);
    (*(v33 + 56))(v11, 0, 1, v9);
    v34 = v55;
    sub_1CF611904(v11, v14, 0, 0, 0, a3, v46[15], v46[16], v46[17], v48, v32, v30, v31);
    (*(v47 + 8))(v11, v49);
    if (!v34)
    {
      sub_1CF1A91AC(v57, v56);
      v35 = sub_1CF06FB20(v9);
      v37 = v36;
      v51(v56, 0, v35, v36, 0);
      v37, v38, v39, v40, v41, v42, v43, v44;
      sub_1CEFCCC44(v56, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    (*(v54 + 8))(v14, v9);
    return (*(v52 + 8))(v53, v8);
  }
}

uint64_t sub_1CF655E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 632);
  type metadata accessor for SnapshotItem(255, *(*v4 + 600), *(*v4 + 616), a4);
  v6 = sub_1CF9E75D8();
  v7 = *(*(v6 - 8) + 8);

  return v7(v4 + v5, v6);
}

uint64_t *sub_1CF655ED8()
{
  v1 = *v0;
  v2 = sub_1CF059B48();
  v3 = *(*v2 + 632);
  type metadata accessor for SnapshotItem(255, *(v1 + 600), *(v1 + 616), v4);
  v5 = sub_1CF9E75D8();
  (*(*(v5 - 8) + 8))(v2 + v3, v5);
  return v2;
}

uint64_t sub_1CF655FA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v110 = a8;
  v117 = a7;
  v95 = a6;
  v116 = a4;
  v13 = *v9;
  v15 = *(*v9 + 600);
  v16 = *(*v9 + 624);
  v17 = *(*v9 + 616);
  v119 = *(*v9 + 608);
  v14 = v119;
  v120 = v15;
  v121 = v16;
  v122 = v17;
  v87 = type metadata accessor for ItemReconciliation(0, &v119);
  v91 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v78 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = sub_1CF9E75D8();
  v85 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v78 - v20;
  v96 = AssociatedTypeWitness;
  v84 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v78 - v22;
  v119 = v15;
  v120 = v14;
  v100 = v14;
  v121 = v17;
  v122 = v16;
  v98 = v16;
  v23 = type metadata accessor for ItemReconciliation(255, &v119);
  v101 = sub_1CF9E75D8();
  v83 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v112 = &v78 - v24;
  v114 = v23;
  v106 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v103 = &v78 - v26;
  v99 = v15;
  v97 = v17;
  v28 = type metadata accessor for SnapshotItem(0, v15, v17, v27);
  v102 = *(v28 - 8);
  v29 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v113 = &v78 - v32;
  v115 = a1;
  v33 = a1[4];
  v34 = *(v110 + 8);
  v35 = (*(*v33 + 496))(v9 + *(v13 + 576), a2, v31);
  v111 = v34;
  v94 = v33;
  v80 = v36;
  v118 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v35;
  v38 = sub_1CF9E6DF8();
  v46 = v29;
  v47 = v102;
  v48 = v113;
  if (!v38)
  {
LABEL_17:
    v37, v39, v40, v41, v42, v43, v44, v45;
    v75 = v117;
    v122 = v117;
    v123 = v110;
    v76 = __swift_allocate_boxed_opaque_existential_0(&v119);
    (*(*(v75 - 8) + 16))(v76, v116, v75);
    v77 = v80;

    a5(&v119, v77, 0, 0, 0);

    return sub_1CEFCCC44(&v119, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v49 = 0;
  v109 = (v102 + 16);
  v104 = (v106 + 6);
  v105 = (v102 + 32);
  v92 = (v106 + 4);
  v93 = (v106 + 1);
  v106 = (v102 + 8);
  v82 = (v85 + 2);
  v81 = (v84 + 6);
  v78 = (v84 + 4);
  v79 = v91 + 1;
  ++v84;
  ++v85;
  v91 = (v83 + 8);
  v107 = v28;
  v108 = a5;
  while (1)
  {
    v51 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v51)
    {
      result = (*(v47 + 16))(v48, v37 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v49, v28);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v46 != 8)
      {
        goto LABEL_19;
      }

      v119 = result;
      (*v109)(v48, &v119, v28);
      result = swift_unknownObjectRelease();
    }

    v53 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    v54 = v28;
    v55 = v37;
    v56 = v118;
    (*v105)(v118, v48, v54);
    v57 = v112;
    sub_1CF68DDB0(v56, v116, v117, v111, v112);
    v58 = v114;
    v37 = v55;
    if ((*v104)(v57, 1, v114) == 1)
    {
      v28 = v107;
      (*v106)(v118, v107);
      (*v91)(v57, v101);
    }

    else
    {
      v102 = v49 + 1;
      v59 = v103;
      (*v92)(v103, v57, v58);
      if (sub_1CF056558())
      {
        v60 = v88;
        v61 = v89;
        (*v82)(v88, v59 + *(v58 + 52), v89);
        v62 = v96;
        v63 = (*v81)(v60, 1, v96);
        v64 = v90;
        if (v63 != 1)
        {
          v67 = v86;
          (*v78)(v86, v60, v62);
          v68 = v58;
          v69 = v64;
          v70 = v103;
          v72 = sub_1CF07EE34(v68, v71, v64);
          v73 = (*(*v115 + 176))(v72);
          sub_1CF657B8C(v67, v64, v73, v116, v99, v100, v117, v97, v98, v110);
          v53 = v102;

          (*v79)(v69, v87);
          (*v84)(v67, v96);
          (*v93)(v70, v114);
          v74 = v107;
          (*v106)(v118, v107);
          v37 = v55;
          v28 = v74;
          goto LABEL_4;
        }

        (*v93)(v103, v58);
        v65 = v107;
        (*v106)(v118, v107);
        (*v85)(v60, v61);
        v37 = v55;
        v28 = v65;
      }

      else
      {
        v66 = v118;
        sub_1CF657B8C(v118, v59, v115, v116, v99, v100, v117, v97, v98, v110);
        (*v93)(v59, v114);
        v28 = v107;
        (*v106)(v66, v107);
      }

      v53 = v102;
    }

LABEL_4:
    v50 = sub_1CF9E6DF8();
    ++v49;
    a5 = v108;
    v48 = v113;
    if (v53 == v50)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1CF656C8C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v2 = result;
    result = sub_1CF9E6DB8();
    *(result + 16) = v2;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1CF656CD8(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  }

  else
  {

    return sub_1CF9E7FA8();
  }
}

uint64_t sub_1CF656D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*v5 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 16);
  v13(v5 + v11, a1, AssociatedTypeWitness);
  v13(v5 + *(*v5 + 584), a2, AssociatedTypeWitness);

  return sub_1CF0525C8(a3, a4, a5);
}

uint64_t sub_1CF656FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, _OWORD *))
{
  v10 = *(v5 + 616);
  v12[0] = *(v5 + 600);
  v12[1] = v10;
  a5(0, v12);
  swift_allocObject();
  return sub_1CF052464(a1, a2, a3, a4);
}

uint64_t sub_1CF657094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, _OWORD *))
{
  v10 = *(v5 + 616);
  v13[0] = *(v5 + 600);
  v13[1] = v10;
  a5(0, v13);
  swift_allocObject();
  v11 = sub_1CF052464(a1, a2, a3, a4);
  sub_1CF052548(0x2000);
  return v11;
}

uint64_t sub_1CF657128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v4 + v9, 1, 1, AssociatedTypeWitness);

  return sub_1CF052464(a1, a2, a3, a4);
}

uint64_t sub_1CF65722C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 632);
  v10 = type metadata accessor for SnapshotItem(0, *(*v4 + 600), *(*v4 + 616), a4);
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);

  return sub_1CF052464(a1, a2, a3, a4);
}

uint64_t objectdestroyTm_4()
{
  v80 = *(v0 + 40);
  v82 = *(v0 + 16);
  v79 = v82;
  v83 = v80;
  v81 = type metadata accessor for ItemReconciliation(0, &v82);
  v78 = *(*(v81 - 8) + 80);
  v1 = v0 + ((v78 + 64) & ~v78);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  if (!(*(v3 + 48))(v1, 1, AssociatedTypeWitness))
  {
    (*(v3 + 8))(v1, AssociatedTypeWitness);
  }

  v5 = type metadata accessor for ItemReconciliationHalf(0, v79, v80, v4);
  v6 = v1 + v5[12];
  v7 = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *&v82 = v7;
  *(&v82 + 1) = v8;
  *&v83 = AssociatedConformanceWitness;
  *(&v83 + 1) = v10;
  v11 = type metadata accessor for FileItemVersion(0, &v82);
  if (!(*(*(v11 - 1) + 48))(v6, 1, v11))
  {
    (*(*(v7 - 8) + 8))(v6, v7);
    *(v6 + v11[13]), v12, v13, v14, v15, v16, v17, v18;
    (*(*(v8 - 8) + 8))(v6 + v11[14], v8);
    *(v6 + v11[15]), v19, v20, v21, v22, v23, v24, v25;
    *(v6 + v11[16] + 8), v26, v27, v28, v29, v30, v31, v32;
  }

  sub_1CF03D7A8(*(v1 + v5[16]), *(v1 + v5[16] + 8), *(v1 + v5[16] + 16));
  v33 = v1 + v5[17];
  v34 = *(v33 + 24);
  if (v34 >> 60 != 15 && (v34 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v33 + 16), v34);
  }

  v36 = v1 + *(v81 + 52);
  v37 = swift_getAssociatedTypeWitness();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v36, 1, v37))
  {
    (*(v38 + 8))(v36, v37);
  }

  v40 = type metadata accessor for ItemReconciliationHalf(0, *(&v79 + 1), *(&v80 + 1), v39);
  v41 = v36 + v40[12];
  v42 = swift_getAssociatedTypeWitness();
  v43 = swift_getAssociatedTypeWitness();
  v44 = swift_getAssociatedConformanceWitness();
  v45 = swift_getAssociatedConformanceWitness();
  *&v82 = v42;
  *(&v82 + 1) = v43;
  *&v83 = v44;
  *(&v83 + 1) = v45;
  v46 = type metadata accessor for FileItemVersion(0, &v82);
  if (!(*(*(v46 - 1) + 48))(v41, 1, v46))
  {
    (*(*(v42 - 8) + 8))(v41, v42);
    *(v41 + v46[13]), v47, v48, v49, v50, v51, v52, v53;
    (*(*(v43 - 8) + 8))(v41 + v46[14], v43);
    *(v41 + v46[15]), v54, v55, v56, v57, v58, v59, v60;
    *(v41 + v46[16] + 8), v61, v62, v63, v64, v65, v66, v67;
  }

  sub_1CF03D7A8(*(v36 + v40[16]), *(v36 + v40[16] + 8), *(v36 + v40[16] + 16));
  v68 = v36 + v40[17];
  v69 = *(v68 + 24);
  if (v69 >> 60 != 15 && (v69 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v68 + 16), v69);
  }

  *(v1 + *(v81 + 60)), v70, v71, v72, v73, v74, v75, v76;
  return swift_deallocObject();
}

unint64_t sub_1CF6578C0()
{
  v1 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6[0] = *(v0 + 16);
  v4 = v6[0];
  v6[1] = v5;
  v2 = *(type metadata accessor for ItemReconciliation(0, v6) - 8);
  return sub_1CF62D788(v0 + ((*(v2 + 80) + 64) & ~*(v2 + 80)), v4, *(&v4 + 1), v1, v5, *(&v5 + 1));
}

uint64_t sub_1CF65796C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  type metadata accessor for SnapshotItem(255, v5, v8, a4);
  v9 = *(sub_1CF9E75D8() - 8);
  return sub_1CF62D6B0(v4 + ((*(v9 + 80) + 64) & ~*(v9 + 80)), v5, v6, v7, v8);
}

double sub_1CF657A18(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4 >= 2u)
    {
      return result;
    }

LABEL_7:

    return result;
  }

  if (a4 == 2)
  {
    goto LABEL_7;
  }

  if (a4 == 3)
  {
  }

  return result;
}

double sub_1CF657A58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 40);
  v8 = *(type metadata accessor for JobLockRule(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v12 = *(type metadata accessor for FileTreeWriter.FileTreeChange(0, v6, v7, v11) - 8);
  v13 = (v9 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  return sub_1CF62F2A0(a1, *(v4 + 64), (v4 + v9), (v4 + v13), *(v4 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF657B8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v40 = a7;
  v14 = *a3;
  v15 = sub_1CF9E53C8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  v23 = a2 + *(type metadata accessor for ItemReconciliationHalf(0, *(v14 + 80), *(v14 + 96), v22) + 64);
  if (!*(v23 + 16))
  {
    v37 = v16;
    v38 = a1;
    v39 = a4;
    if (*(v23 + 1))
    {
      v36 = a10;
      v24 = a3[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FD0, &unk_1CF9FE690);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1CF9FA440;
      v42 = 13;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00BC98(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1CF9E57D8();
      v26 = sub_1CF9E53A8();
      v27 = *(v37 + 8);
      v27(v21, v15);
      *(v25 + 32) = v26;
      v41 = 1;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF9E57D8();
      v28 = sub_1CF9E53A8();
      v27(v18, v15);
      *(v25 + 40) = v28;
      (*(*v24 + 440))(v38, v25, v39, v40, v36);
      v25, v29, v30, v31, v32, v33, v34, v35;
    }
  }
}

uint64_t sub_1CF658058(void *a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 49) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF653654(a1, *(v1 + 48), v1 + v2, *(v1 + v3), *(v1 + v4), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF658174(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, void, void, void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39 = a5;
  v40 = a4;
  v37 = a11;
  v38 = a3;
  v14 = type metadata accessor for FileTreeError(255, a6, a9, a4);
  v15 = sub_1CF9E75D8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v36 - v17;
  v47 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v20 = swift_dynamicCast();
  v21 = *(*(v14 - 8) + 56);
  if (!v20)
  {
    v21(v18, 1, 1, v14);
    v22 = v16;
    v14 = v15;
    goto LABEL_5;
  }

  v22 = *(v14 - 8);
  v21(v18, 0, 1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
LABEL_5:
    (*(v22 + 8))(v18, v14);
    v45 = a8;
    v46 = v37;
    v34 = __swift_allocate_boxed_opaque_existential_0(&AssociatedTypeWitness);
    (*(*(a8 - 8) + 16))(v34, v38, a8);
    v33 = a2;
    goto LABEL_6;
  }

  v36[2] = v36;
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  v36[1] = &v36[-6];
  strcpy(&v36[-6], " at originalError previousError ");
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36[0] = AssociatedConformanceWitness;
  v27 = swift_getAssociatedConformanceWitness();
  v41[0] = v24;
  v41[1] = v25;
  v41[2] = AssociatedConformanceWitness;
  v41[3] = v27;
  type metadata accessor for FileItemVersion(255, v41);
  v43 = sub_1CF9E75D8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  v45 = v44;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v29 = TupleTypeMetadata[12];

  AssociatedTypeWitness = v24;
  v43 = v25;
  v44 = v36[0];
  v45 = v27;
  type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
  v30 = sub_1CF9E75D8();
  (*(*(v30 - 8) + 8))(&v18[v29], v30);
  v31 = swift_getAssociatedTypeWitness();
  (*(*(v31 - 8) + 8))(v18, v31);
  v45 = a8;
  v46 = v37;
  v32 = __swift_allocate_boxed_opaque_existential_0(&AssociatedTypeWitness);
  (*(*(a8 - 8) + 16))(v32, v38, a8);
  v33 = 0;
LABEL_6:
  v40(&AssociatedTypeWitness, v33, 0, 0, a1);
  return sub_1CEFCCC44(&AssociatedTypeWitness, &unk_1EC4C1B30, &qword_1CFA05300);
}

double sub_1CF658638(uint64_t a1)
{
  *a1 = 11;
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

unint64_t sub_1CF65866C()
{
  result = qword_1EDEAB030;
  if (!qword_1EDEAB030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE320, &unk_1CFA08B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB030);
  }

  return result;
}

uint64_t sub_1CF658874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  sub_1CF1A91AC(a1, v8);
  v6(v8, 0, a2, a3, 0);
  return sub_1CEFCCC44(v8, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t objectdestroy_209Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_101Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 80));

  return swift_deallocObject();
}

uint64_t sub_1CF658AC0(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v13 = v1[10];
  v14 = v1[2];
  v10 = a1[3];
  v9 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  return sub_1CF64A31C(v11, v3, v4, v5, v6, v7, v8, v13, v14, v10, v2, v9);
}

uint64_t objectdestroy_166Tm(void (*a1)(void), void (*a2)(void, __n128), void (*a3)(void))
{
  a1(v3[4]);

  (a2)(v3[6]);
  a3(v3[7]);

  return swift_deallocObject();
}

uint64_t sub_1CF658C88(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_1CF658DC0(uint64_t a1, uint64_t (*a2)(uint64_t, char *, void, void, void, void, void, uint64_t, uint64_t))
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 56);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v7 = *(sub_1CF9E8238() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, (v2 + v8), *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v5, v6);
}

uint64_t objectdestroy_92Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1CF658F5C(void *a1)
{
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v3 = *(sub_1CF9E8238() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF642650(a1, *(v1 + 64), *(v1 + 72), (v1 + v4), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1CF659094(uint64_t a1)
{
  v21 = *(v1 + 32);
  v23 = *(v1 + 40);
  v24 = *(v1 + 16);
  v20 = *(v1 + 56);
  v2 = *(v1 + 24);
  v3 = *(v1 + 48);
  *&v25 = swift_getAssociatedTypeWitness();
  *(&v25 + 1) = swift_getAssociatedTypeWitness();
  *&v26 = swift_getAssociatedConformanceWitness();
  *(&v26 + 1) = swift_getAssociatedConformanceWitness();
  v4 = *(type metadata accessor for FileItemVersion(0, &v25) - 8);
  v19 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v5 = (*(v4 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = v23;
  v25 = v24;
  v6 = *(type metadata accessor for ItemReconciliation(0, &v25) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for SnapshotItem(0, v2, v3, v9) - 8);
  v11 = (v8 + *(v10 + 80) + 9) & ~*(v10 + 80);
  v18 = *(v10 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  *&v25 = AssociatedTypeWitness;
  *(&v25 + 1) = v13;
  *&v26 = AssociatedConformanceWitness;
  *(&v26 + 1) = v15;
  v16 = *(type metadata accessor for FileItemVersion(0, &v25) - 8);
  v17 = (v11 + v18 + *(v16 + 80)) & ~*(v16 + 80);
  sub_1CF63EE60(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), v1 + v19, *(v1 + v5), v1 + v7, *(v1 + v8), *(v1 + v8 + 8), v1 + v11, v1 + v17, *(v1 + ((*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8)), v21, v20);
}

double sub_1CF659424(uint64_t a1)
{
  v17[0] = swift_getAssociatedTypeWitness();
  v17[1] = swift_getAssociatedTypeWitness();
  v17[2] = swift_getAssociatedConformanceWitness();
  v17[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, v17);
  v3 = *(swift_getTupleTypeMetadata3() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = (v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_1CF63C2C0(a1, (v1 + v4), v9, v10, v11, v12, v14, v15);
}

double sub_1CF6595D4(void *a1)
{
  v7[0] = swift_getAssociatedTypeWitness();
  v7[1] = swift_getAssociatedTypeWitness();
  v7[2] = swift_getAssociatedConformanceWitness();
  v7[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, v7);
  v3 = *(swift_getTupleTypeMetadata3() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1CF63D33C(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + v4, *v5, v5[1]);
}

uint64_t sub_1CF659758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = swift_getAssociatedTypeWitness();
  v15[1] = swift_getAssociatedTypeWitness();
  v15[2] = swift_getAssociatedConformanceWitness();
  v15[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, v15);
  v9 = *(swift_getTupleTypeMetadata3() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF63D62C(a1, a2, a3, a4, a5, (v5 + v10), *(v5 + v11), *(v5 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF65995C(void *a1)
{
  swift_getTupleTypeMetadata2();
  v2 = *(sub_1CF9E75D8() - 8);
  v8 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v7 = (*(v2 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10[0] = swift_getAssociatedTypeWitness();
  v10[1] = swift_getAssociatedTypeWitness();
  v10[2] = swift_getAssociatedConformanceWitness();
  v10[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, v10);
  v5 = *(sub_1CF9E75D8() - 8);
  sub_1CF6338F0(a1, *(v1 + 48), *(v1 + 56), v1 + v8, *(v1 + v7), *(v1 + v6), *(v1 + v3), *(v1 + v4), *(v1 + v4 + 8), *(v1 + v4 + 16), *(v1 + v4 + 17), *(v1 + v4 + 18), *(v1 + v4 + 19), v1 + ((v4 + *(v5 + 80) + 20) & ~*(v5 + 80)));
}

double sub_1CF659B7C(void *a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = (v1 + v6);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF639DEC(a1, v1 + v4, v9, v11, v12, v13, v14, v15);
}

uint64_t objectdestroy_337Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1CF659D2C(void *a1)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v6 = v1[8];
  v5 = v1[9];
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  return sub_1CF63A5FC(v2, v3, v4, v9, v6, v5, v7, *(v8 + 8));
}

uint64_t sub_1CF659DB0(uint64_t a1)
{
  v5[0] = swift_getAssociatedTypeWitness();
  v5[1] = swift_getAssociatedTypeWitness();
  v5[2] = swift_getAssociatedConformanceWitness();
  v5[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, v5);
  v3 = *(sub_1CF9E75D8() - 8);
  return sub_1CF63B53C(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), v1 + ((*(v3 + 80) + 120) & ~*(v3 + 80)));
}

void sub_1CF659F14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FileTreeWriter.ItemOrContinuation(255, *(v4 + 16), *(v4 + 40), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v6 = *(sub_1CF9E8238() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF63024C(a1, (v4 + v7), *(v4 + v8), *(v4 + v8 + 8), *(v4 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF65A16C()
{
  sub_1CF65C654();
}

uint64_t sub_1CF65A194()
{

  sub_1CEFF7124(*(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t sub_1CF65A1C4()
{
  sub_1CF65A194();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF65A25C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    a1 = a2;
  }

  return a3(a1);
}

void sub_1CF65A28C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  a3(a1, a2);
  swift_beginAccess();
  if (*(a5 + 16) == 1)
  {
    v8 = *(a6 + 24);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      *(a6 + 24) = v10;
    }
  }
}

double sub_1CF65A300(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, objc_class *a7, uint64_t a8, uint64_t a9, uint64_t a10, objc_class *a11, uint64_t (*a12)())
{
  v55 = a8;
  v49 = a1;
  v50 = a7;
  v53 = a5;
  v54 = a6;
  v44 = a3;
  v45 = a4;
  v56 = a2;
  v51 = a9;
  v52 = a10;
  v13 = *v12;
  v47 = *(*v12 + 120);
  v46 = v13[11];
  v58 = a12;
  v57 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v38 - v17;
  v41 = &v38 - v17;
  v43 = v13[14];
  v42 = v13[10];
  v39 = swift_getAssociatedTypeWitness();
  v19 = *(v39 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v39);
  v23 = &v38 - v22;
  v48 = *(v12 + 2);
  (*(v19 + 16))(&v38 - v22, v44, v21);
  (*(v15 + 16))(v18, v45, AssociatedTypeWitness);
  v24 = (*(v19 + 80) + 112) & ~*(v19 + 80);
  v25 = (v20 + *(v15 + 80) + v24) & ~*(v15 + 80);
  v45 = (v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v46;
  v26[2].isa = v42;
  v26[3].isa = v27;
  v26[4].isa = v13[12];
  v26[5].isa = v13[13];
  v28 = v43;
  v26[6].isa = v57;
  v26[7].isa = v28;
  v29 = v58;
  v26[8].isa = v47;
  v26[9].isa = v29;
  v30 = v49;
  v31 = v50;
  v26[10].isa = v12;
  v26[11].isa = v31;
  v32 = v56;
  v26[12].isa = v30;
  v26[13].isa = v32;
  (*(v19 + 32))(v26 + v24, v23, v39);
  (*(v15 + 32))(v26 + v25, v41, v40);
  v33 = (v26 + v45);
  v34 = v54;
  *v33 = v53;
  v33[1] = v34;
  v35 = (v26 + v44);
  v36 = v52;
  *v35 = v51;
  v35[1] = v36;

  sub_1CEFD09A0(v30);

  sub_1CF5CF660(v30, v56, v55, sub_1CF65C6C8, v26, v57, v58);

  return result;
}

uint64_t sub_1CF65A6A4()
{

  return swift_deallocClassInstance();
}

void sub_1CF65A704(char a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a7;
  v26 = a8;
  v17 = sub_1CF9E64A8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1CF042F4C();
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v22 = v21;
  LOBYTE(v21) = sub_1CF9E64D8();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    if (*(a4 + 16))
    {
      v23 = a12;
      if ((a1 & 1) == 0)
      {
LABEL_5:
        sub_1CF65A8A8(a5, a6, v25, v26, a9, a10, a4, a11, v23);
        return;
      }
    }

    else
    {
      *(a4 + 16) = a2;
      v24 = a2;
      v23 = a12;
      if ((a1 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *(a4 + 24) = 1;
    goto LABEL_5;
  }

  __break(1u);
}

double sub_1CF65A8A8(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v58 = a8;
  v55 = a2;
  v56 = a7;
  v43 = a6;
  v44 = a5;
  v49 = a4;
  v47 = a3;
  v54 = a1;
  v13 = *v10;
  v52 = *(*v10 + 120);
  v50 = v13[11];
  v57 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = AssociatedTypeWitness;
  v59 = *(AssociatedTypeWitness - 8);
  v45 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v39 - v15;
  v42 = &v39 - v15;
  v48 = v13[14];
  v46 = v13[10];
  v17 = swift_getAssociatedTypeWitness();
  v39 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v20;
  v40 = &v39 - v20;
  v53 = v10[2];
  v22 = swift_allocObject();
  v51 = v22;
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;
  (*(v18 + 16))(v21, v47, v17);
  v23 = v59;
  (*(v59 + 16))(v16, v49, AssociatedTypeWitness);
  v24 = (*(v18 + 80) + 72) & ~*(v18 + 80);
  v49 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v23 + 80) + v26 + 8) & ~*(v23 + 80);
  v28 = (v45 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v50;
  *(v29 + 2) = v46;
  *(v29 + 3) = v30;
  *(v29 + 4) = v13[12];
  *(v29 + 5) = v13[13];
  v31 = v52;
  *(v29 + 6) = v48;
  *(v29 + 7) = v31;
  *(v29 + 8) = v10;
  (*(v18 + 32))(&v29[v24], v40, v39);
  v32 = v54;
  *&v29[v49] = v54;
  v33 = v56;
  *&v29[v25] = v55;
  *&v29[v26] = v33;
  (*(v59 + 32))(&v29[v27], v42, v41);
  v34 = &v29[v28];
  v35 = v43;
  *v34 = v44;
  v34[1] = v35;
  v36 = &v29[(v28 + 23) & 0xFFFFFFFFFFFFFFF8];
  v37 = v57;
  *v36 = v58;
  v36[1] = v37;
  swift_retain_n();

  sub_1CEFD09A0(v32);

  sub_1CF382FBC("waitForDiskIngestionStep2(request:barrierTimestamp:fsID:itemIdentifier:cancelHandler:errorTracker:completionHandler:)", 117, 2, 2, sub_1CF2AF9D0, v51, sub_1CF65C840, v29);

  return result;
}

double sub_1CF65ACAC(void *a1, objc_class *a2, uint64_t a3, unint64_t a4, uint64_t a5, objc_class *a6, unint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void *), uint64_t a11)
{
  v63 = a8;
  v51 = a7;
  v58 = a4;
  v59 = a6;
  v67 = a5;
  v66 = a3;
  v60 = a11;
  v13 = *a2;
  v56 = *(*a2 + 120);
  v52 = v13[11];
  v61 = a9;
  v62 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v44 - v15;
  v47 = &v44 - v15;
  v50 = v13[14];
  v49 = v13[10];
  v17 = swift_getAssociatedTypeWitness();
  v45 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - v20;
  v46 = &v44 - v20;
  v22 = a1[4];
  v55 = a1[3];
  v57 = v22;
  v23 = __swift_project_boxed_opaque_existential_1(a1, v55);
  v24 = *(a2 + 2);
  v53 = v23;
  v54 = v24;
  (*(v18 + 16))(v21, v66, v17);
  v25 = v48;
  (*(v48 + 16))(v16, v51, AssociatedTypeWitness);
  v26 = (*(v18 + 80) + 96) & ~*(v18 + 80);
  v27 = (v19 + *(v25 + 80) + v26) & ~*(v25 + 80);
  v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v52;
  v29[2].isa = v49;
  v29[3].isa = v30;
  v29[4].isa = v13[12];
  v29[5].isa = v13[13];
  v31 = v56;
  v29[6].isa = v50;
  v29[7].isa = v31;
  v33 = v58;
  v32 = v59;
  v29[8].isa = a2;
  v29[9].isa = v32;
  v34 = v67;
  v29[10].isa = v33;
  v29[11].isa = v34;
  v35 = v29 + v26;
  v36 = v60;
  (*(v18 + 32))(v35, v46, v45);
  (*(v25 + 32))(v29 + v27, v47, AssociatedTypeWitness);
  v37 = (v29 + v28);
  v38 = v62;
  v39 = v61;
  *v37 = v63;
  v37[1] = v39;
  v40 = (&v29->isa + v51);
  *v40 = v38;
  v40[1] = v36;

  sub_1CEFD09A0(v33);

  v41 = v64;
  sub_1CF5CF828(v66, v33, v67, v53, sub_1CF65C86C, v29, v55, v57);

  if (v41)
  {
    v43 = v41;
    v38(0, v41);
  }

  return result;
}

void sub_1CF65B0B0(char a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a7;
  v26 = a8;
  v17 = sub_1CF9E64A8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1CF042F4C();
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v22 = v21;
  LOBYTE(v21) = sub_1CF9E64D8();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    if (*(a4 + 16))
    {
      v23 = a12;
      if ((a1 & 1) == 0)
      {
LABEL_5:
        sub_1CF65B254(a5, a6, v25, v26, a9, a10, a4, a11, v23);
        return;
      }
    }

    else
    {
      *(a4 + 16) = a2;
      v24 = a2;
      v23 = a12;
      if ((a1 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *(a4 + 24) = 1;
    goto LABEL_5;
  }

  __break(1u);
}

double sub_1CF65B254(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v54 = a6;
  v55 = a8;
  v50 = a2;
  v51 = a7;
  v53 = a5;
  v45 = a4;
  v43 = a3;
  v49 = a1;
  v11 = *v9;
  v47 = *(*v9 + 120);
  v46 = v11[11];
  v52 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v38 - v15;
  v41 = &v38 - v15;
  v44 = v11[14];
  v42 = v11[10];
  v39 = swift_getAssociatedTypeWitness();
  v17 = *(v39 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v39);
  v21 = &v38 - v20;
  v48 = *(v10 + 16);
  (*(v17 + 16))(&v38 - v20, v43, v19);
  v38 = v13;
  (*(v13 + 16))(v16, v45, AssociatedTypeWitness);
  v22 = (*(v17 + 80) + 72) & ~*(v17 + 80);
  v45 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v13 + 80) + v24 + 8) & ~*(v13 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v46;
  *(v27 + 2) = v42;
  *(v27 + 3) = v28;
  *(v27 + 4) = v11[12];
  *(v27 + 5) = v11[13];
  v29 = v47;
  *(v27 + 6) = v44;
  *(v27 + 7) = v29;
  *(v27 + 8) = v10;
  (*(v17 + 32))(&v27[v22], v21, v39);
  v30 = v49;
  *&v27[v45] = v49;
  v31 = v51;
  *&v27[v23] = v50;
  *&v27[v24] = v31;
  (*(v38 + 32))(&v27[v25], v41, v40);
  v32 = &v27[v26];
  v34 = v53;
  v33 = v54;
  *v32 = v53;
  v32[1] = v33;
  v35 = &v27[v43];
  v36 = v52;
  *v35 = v55;
  v35[1] = v36;

  sub_1CEFD09A0(v30);

  sub_1CF92DC74("waitForDiskIngestionStep3(request:barrierTimestamp:fsID:itemIdentifier:cancelHandler:errorTracker:completionHandler:)", 117, 2, sub_1CF045408, 0, v34, v33, sub_1CF65CBC4, v27);

  return result;
}

double sub_1CF65B634(void *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void *), uint64_t a11)
{
  v51 = a8;
  v52 = a3;
  v37 = a6;
  v48 = a4;
  v49 = a5;
  v50 = a11;
  v41 = *a2;
  v15 = v41;
  v40 = *(v41 + 120);
  v39 = *(v41 + 88);
  v43 = a10;
  v46 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v37 - v19;
  v21 = a1[4];
  v45 = a1[3];
  v47 = v21;
  v42 = __swift_project_boxed_opaque_existential_1(a1, v45);
  v44 = a2[2];
  (*(v17 + 16))(v20, a7, AssociatedTypeWitness);
  v22 = (*(v17 + 80) + 96) & ~*(v17 + 80);
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = *(v15 + 80);
  v25 = v38;
  *(v24 + 24) = v39;
  *(v24 + 32) = *(v41 + 96);
  *(v24 + 48) = *(v15 + 112);
  *(v24 + 56) = v40;
  *(v24 + 64) = a2;
  *(v24 + 72) = a6;
  v26 = v48;
  v27 = v49;
  *(v24 + 80) = v48;
  *(v24 + 88) = v27;
  v28 = v20;
  v29 = v43;
  (*(v17 + 32))(v24 + v22, v28, v25);
  v30 = v50;
  v31 = (v24 + v23);
  v32 = v46;
  *v31 = v51;
  v31[1] = v32;
  v33 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v33 = v29;
  v33[1] = v30;

  sub_1CEFD09A0(v26);

  v34 = v53;
  sub_1CF5CC8E0(v52, v26, v27, v42, sub_1CF65CD80, v24, v45, v47);

  if (v34)
  {
    v36 = v34;
    v29(0, v34);
  }

  return result;
}

double sub_1CF65B944(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v45 = a7;
  v46 = a8;
  v41 = a6;
  v42 = a4;
  v44 = a5;
  v39 = a1;
  v40 = a2;
  v38 = *v8;
  v11 = v38;
  v37 = *(v38 + 120);
  v36 = *(v38 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v33 - v15;
  v43 = v8[2];
  (*(v12 + 16))(&v33 - v15, a3, v14);
  v17 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v34 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = *(v11 + 80);
  v23 = AssociatedTypeWitness;
  *(v22 + 24) = v36;
  *(v22 + 32) = *(v38 + 96);
  *(v22 + 48) = *(v11 + 112);
  *(v22 + 56) = v37;
  *(v22 + 64) = v9;
  (*(v12 + 32))(v22 + v17, v16, v23);
  v24 = v39;
  *(v22 + v34) = v39;
  v25 = v41;
  *(v22 + v18) = v40;
  *(v22 + v19) = v25;
  v26 = (v22 + v20);
  v27 = v42;
  v29 = v44;
  v28 = v45;
  *v26 = v42;
  v26[1] = v29;
  v30 = (v22 + v21);
  v31 = v46;
  *v30 = v28;
  v30[1] = v31;

  sub_1CEFD09A0(v24);

  sub_1CF92DC74("waitForDiskIngestionStep4(request:barrierTimestamp:itemIdentifier:cancelHandler:errorTracker:completionHandler:)", 112, 2, sub_1CF045408, 0, v27, v29, sub_1CF65CD98, v22);

  return result;
}

double sub_1CF65BC1C(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void, void *), uint64_t a10)
{
  v49 = a8;
  v47 = a6;
  v48 = a7;
  v51 = a5;
  v46 = a4;
  v13 = *a2;
  v14 = *a2;
  v38 = a3;
  v39 = v14;
  v37 = v13[15];
  v36 = v13[11];
  v43 = a10;
  v41 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v35 - v18;
  v20 = a1[4];
  v44 = a1[3];
  v45 = v20;
  v40 = __swift_project_boxed_opaque_existential_1(a1, v44);
  v42 = a2[2];
  (*(v16 + 16))(v19, a3, AssociatedTypeWitness);
  v21 = (*(v16 + 80) + 96) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v13[10];
  v24 = v35;
  *(v23 + 24) = v36;
  *(v23 + 32) = *(v39 + 6);
  *(v23 + 48) = v13[14];
  *(v23 + 56) = v37;
  *(v23 + 64) = a2;
  v25 = v46;
  *(v23 + 72) = v47;
  *(v23 + 80) = v25;
  *(v23 + 88) = v51;
  v26 = v19;
  v27 = v41;
  (*(v16 + 32))(v23 + v21, v26, v24);
  v28 = v43;
  v29 = (v23 + v22);
  v30 = v49;
  *v29 = v48;
  v29[1] = v30;
  v31 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v31 = v27;
  v31[1] = v28;

  sub_1CEFD09A0(v25);

  v32 = v50;
  sub_1CF5CC5AC(v38, v25, v51, v40, sub_1CF65CFB0, v23, v44, v45);

  if (v32)
  {
    v34 = v32;
    v27(0, v32);
  }

  return result;
}

uint64_t sub_1CF65BF20(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v25 = a7;
  v26 = a8;
  v17 = sub_1CF9E64A8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1CF042F4C();
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v22 = v21;
  LOBYTE(v21) = sub_1CF9E64D8();
  result = (*(v18 + 8))(v20, v17);
  if (v21)
  {
    if (*(a4 + 16))
    {
      if ((a1 & 1) == 0)
      {
        return a12(a5, a6, v25, v26, a9, a4, a10, a11);
      }
    }

    else
    {
      *(a4 + 16) = a2;
      v24 = a2;
      if ((a1 & 1) == 0)
      {
        return a12(a5, a6, v25, v26, a9, a4, a10, a11);
      }
    }

    *(a4 + 24) = 1;
    return a12(a5, a6, v25, v26, a9, a4, a10, a11);
  }

  __break(1u);
  return result;
}

double sub_1CF65C0B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v36 = a7;
  v37 = a8;
  v34 = a2;
  v35 = a6;
  v38 = a4;
  v39 = a5;
  v31 = *v8;
  v11 = v31;
  v32 = a1;
  v30 = *(v31 + 120);
  v29 = *(v31 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &AssociatedTypeWitness - v15;
  v33 = v9[2];
  (*(v12 + 16))(&AssociatedTypeWitness - v15, a3, v14);
  v17 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = *(v11 + 80);
  v22 = AssociatedTypeWitness;
  *(v21 + 24) = v29;
  *(v21 + 32) = *(v31 + 96);
  *(v21 + 48) = *(v11 + 112);
  *(v21 + 56) = v30;
  *(v21 + 64) = v9;
  (*(v12 + 32))(v21 + v17, v16, v22);
  v23 = v32;
  *(v21 + v18) = v32;
  v24 = v35;
  *(v21 + v19) = v34;
  *(v21 + v20) = v24;
  v25 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v37;
  *v25 = v36;
  v25[1] = v26;

  sub_1CEFD09A0(v23);

  sub_1CF92DC74("waitForDiskIngestionStep5(request:barrierTimestamp:itemIdentifier:cancelHandler:errorTracker:completionHandler:)", 112, 2, sub_1CF045408, 0, v38, v39, sub_1CF65D0B0, v21);

  return result;
}

double sub_1CF65C360(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v13 = a1[3];
  v19 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;

  sub_1CF5CC278(a3, a4, a5, v14, sub_1CF65D18C, v15, v13, v19);

  if (v21)
  {
    v17 = v21;
    a7(0);
  }

  return result;
}

void sub_1CF65C498(char a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *))
{
  v9 = sub_1CF9E64A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1CF042F4C();
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = sub_1CF9E64D8();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v15 = *(a4 + 16);
    if (v15)
    {
      if (a1)
      {
LABEL_4:
        v16 = 1;
        *(a4 + 24) = 1;
LABEL_7:
        v18 = v15;
        a5(v16, v15);

        return;
      }
    }

    else
    {
      *(a4 + 16) = a2;
      v17 = a2;
      v15 = a2;
      if (a1)
      {
        goto LABEL_4;
      }
    }

    v16 = *(a4 + 24);
    goto LABEL_7;
  }

  __break(1u);
}

double sub_1CF65C684(unint64_t a1)
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

void sub_1CF65C6C8(char a1, void *a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF65A704(a1, a2, *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), v2 + v5, v2 + v8, *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1CF65C86C(char a1, void *a2)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF65B0B0(a1, a2, *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), v2 + v6, v2 + v9, *(v2 + v10), *(v2 + v10 + 8), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_6Tm_0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = swift_getAssociatedTypeWitness();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v5 + 80);

  (*(v1 + 8))(v0 + v2, AssociatedTypeWitness);
  sub_1CF65C684(*(v0 + v3));

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1CF65CBF0(uint64_t a1, uint64_t (*a2)(uint64_t, void, char *, void, void, void, char *, void, void, void, void))
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, *(v2 + 64), (v2 + v4), *(v2 + v5), *(v2 + v6), *(v2 + v7), (v2 + v9), *(v2 + v10), *(v2 + v10 + 8), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

double sub_1CF65CD98(void *a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF65BC1C(a1, *(v1 + 64), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + v8 + 8), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_15Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);

  v4 = sub_1CF65C684(*(v0 + 80));
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness, v4);

  return swift_deallocObject();
}

uint64_t sub_1CF65CFC8(char a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF65BF20(a1, a2, v3[8], v3[9], v3[10], v3[11], v3 + v8, *(v3 + v9), *(v3 + v9 + 8), *(v3 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a3);
}

double sub_1CF65D0B0(void *a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF65C360(a1, *(v1 + 64), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void *sub_1CF65D19C(void *result, char *a2, uint64_t a3)
{
  v4 = result;
  v6 = v3[2];
  v5 = v3[3];
  v12 = v5;
  v13 = v6;
  if (!a2)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_14;
  }

  v7 = a3;
  if (!a3)
  {
LABEL_14:
    *v4 = v3;
    v4[1] = v5;
    v4[2] = v6;
    return v7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 1;
    while (1)
    {
      v3 = &v11;
      sub_1CF65E5E4(__src);
      memcpy(__dst, __src, 0x489uLL);
      if (sub_1CF65F598(__dst) == 1)
      {
        v3 = v11;
        v5 = v12;
        v7 = v9 - 1;
        goto LABEL_13;
      }

      memcpy(v8, __src, 0x489uLL);
      if (v7 == v9)
      {
        break;
      }

      v8 += 1168;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v3 = v11;
    v5 = v12;
LABEL_13:
    v6 = v13;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF65D27C(int a1, void *a2, void *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (a1)
  {
    v6 = a1;
    if (*a2 != -1)
    {
LABEL_14:
      v19 = a3;
      swift_once();
      a3 = v19;
    }

    v7 = 0;
    v8 = *a3;
    while (1)
    {
      v10 = v6 & -v6;
      if (*(v8 + 16))
      {
        v11 = a4(v6 & -v6);
        if (v12)
        {
          v13 = (*(v8 + 56) + 32 * v11);
          v15 = *v13;
          v14 = v13[1];
          v16 = __OFADD__(v15, v14);
          v17 = v15 + v14;
          if (v16)
          {
            __break(1u);
            goto LABEL_14;
          }

          v16 = __OFADD__(v7, v17);
          v7 += v17;
          if (v16)
          {
            break;
          }
        }
      }

      v9 = v6 == v10;
      v6 ^= v10;
      if (v9)
      {
        return v7;
      }
    }

    __break(1u);
  }

  return 0;
}

uint64_t sub_1CF65D340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDEA7DD0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = qword_1EDEBB938;
    v6 = *(qword_1EDEBB938 + 16);
    if (!v6)
    {
      return a1;
    }

    v7 = 0;
    v8 = qword_1EDEBB938 + 32;
    while (v7 < *(v5 + 16))
    {
      v9 = *(v8 + 4 * v7);
      if ((v9 & ~a3) == 0)
      {
        if (qword_1EDEA7DF8 != -1)
        {
          swift_once();
        }

        v10 = qword_1EDEBB940;
        if (!*(qword_1EDEBB940 + 16) || (v11 = sub_1CF7D52AC(), (v12 & 1) == 0))
        {
          v21 = 13;
LABEL_17:
          sub_1CEFDB034();
          swift_allocError();
          v23 = v22;
          *(v22 + 24) = &type metadata for VFSAttributes.Common.AttributeSet;
          *(v22 + 32) = sub_1CF19BEF4();
          *v23 = v9;
          *(v23 + 40) = v21;
          swift_willThrow();
          return a1;
        }

        v13 = v9;
        v14 = v5;
        v15 = v6;
        v16 = v8;
        v17 = a3;
        v18 = (*(v10 + 56) + 32 * v11);
        a3 = *v18;
        v19 = a2;
        if (a2 < *v18)
        {
          v21 = 14;
          v9 = v13;
          goto LABEL_17;
        }

        v20 = v18[2];

        v20(a1, a2);

        a2 -= a3;
        if (__OFSUB__(v19, a3))
        {
          goto LABEL_20;
        }

        a1 += a3;
        a3 = v17;
        v8 = v16;
        v6 = v15;
        v5 = v14;
      }

      if (v6 == ++v7)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_1CF65D544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDEA7DA8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = qword_1EDEBB930;
    v6 = *(qword_1EDEBB930 + 16);
    if (!v6)
    {
      return a1;
    }

    v7 = 0;
    v8 = qword_1EDEBB930 + 32;
    while (v7 < *(v5 + 16))
    {
      v9 = *(v8 + 4 * v7);
      if ((v9 & ~a3) == 0)
      {
        if (qword_1EC4BCD30 != -1)
        {
          swift_once();
        }

        v10 = qword_1EC4EBD40;
        if (!*(qword_1EC4EBD40 + 16) || (v11 = sub_1CF7D52AC(), (v12 & 1) == 0))
        {
          v21 = 13;
LABEL_17:
          sub_1CEFDB034();
          swift_allocError();
          v23 = v22;
          *(v22 + 24) = &type metadata for VFSAttributes.Volume.AttributeSet;
          *(v22 + 32) = sub_1CF520DC8();
          *v23 = v9;
          *(v23 + 40) = v21;
          swift_willThrow();
          return a1;
        }

        v13 = v9;
        v14 = v5;
        v15 = v6;
        v16 = v8;
        v17 = a3;
        v18 = (*(v10 + 56) + 32 * v11);
        a3 = *v18;
        v19 = a2;
        if (a2 < *v18)
        {
          v21 = 14;
          v9 = v13;
          goto LABEL_17;
        }

        v20 = v18[2];

        v20(a1, a2);

        a2 -= a3;
        if (__OFSUB__(v19, a3))
        {
          goto LABEL_20;
        }

        a1 += a3;
        a3 = v17;
        v8 = v16;
        v6 = v15;
        v5 = v14;
      }

      if (v6 == ++v7)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_1CF65D748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDEA7D68 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = qword_1EDEBB918;
    v6 = *(qword_1EDEBB918 + 16);
    if (!v6)
    {
      return a1;
    }

    v7 = 0;
    v8 = qword_1EDEBB918 + 32;
    while (v7 < *(v5 + 16))
    {
      v9 = *(v8 + 4 * v7);
      if ((v9 & ~a3) == 0)
      {
        if (qword_1EC4BCD40 != -1)
        {
          swift_once();
        }

        v10 = qword_1EC4EBD48;
        if (!*(qword_1EC4EBD48 + 16) || (v11 = sub_1CF7D52AC(), (v12 & 1) == 0))
        {
          v21 = 13;
LABEL_17:
          sub_1CEFDB034();
          swift_allocError();
          v23 = v22;
          *(v22 + 24) = &type metadata for VFSAttributes.Directory.AttributeSet;
          *(v22 + 32) = sub_1CF520B8C();
          *v23 = v9;
          *(v23 + 40) = v21;
          swift_willThrow();
          return a1;
        }

        v13 = v9;
        v14 = v5;
        v15 = v6;
        v16 = v8;
        v17 = a3;
        v18 = (*(v10 + 56) + 32 * v11);
        a3 = *v18;
        v19 = a2;
        if (a2 < *v18)
        {
          v21 = 14;
          v9 = v13;
          goto LABEL_17;
        }

        v20 = v18[2];

        v20(a1, a2);

        a2 -= a3;
        if (__OFSUB__(v19, a3))
        {
          goto LABEL_20;
        }

        a1 += a3;
        a3 = v17;
        v8 = v16;
        v6 = v15;
        v5 = v14;
      }

      if (v6 == ++v7)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_1CF65D94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDEA7E98 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = qword_1EDEBB950;
    v6 = *(qword_1EDEBB950 + 16);
    if (!v6)
    {
      return a1;
    }

    v7 = 0;
    v8 = qword_1EDEBB950 + 32;
    while (v7 < *(v5 + 16))
    {
      v9 = *(v8 + 4 * v7);
      if ((v9 & ~a3) == 0)
      {
        if (qword_1EDEA7EA0 != -1)
        {
          swift_once();
        }

        v10 = qword_1EDEBB958;
        if (!*(qword_1EDEBB958 + 16) || (v11 = sub_1CF7D52AC(), (v12 & 1) == 0))
        {
          v21 = 13;
LABEL_17:
          sub_1CEFDB034();
          swift_allocError();
          v23 = v22;
          *(v22 + 24) = &type metadata for VFSAttributes.File.AttributeSet;
          *(v22 + 32) = sub_1CF520950();
          *v23 = v9;
          *(v23 + 40) = v21;
          swift_willThrow();
          return a1;
        }

        v13 = v9;
        v14 = v5;
        v15 = v6;
        v16 = v8;
        v17 = a3;
        v18 = (*(v10 + 56) + 32 * v11);
        a3 = *v18;
        v19 = a2;
        if (a2 < *v18)
        {
          v21 = 14;
          v9 = v13;
          goto LABEL_17;
        }

        v20 = v18[2];

        v20(a1, a2);

        a2 -= a3;
        if (__OFSUB__(v19, a3))
        {
          goto LABEL_20;
        }

        a1 += a3;
        a3 = v17;
        v8 = v16;
        v6 = v15;
        v5 = v14;
      }

      if (v6 == ++v7)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_1CF65DB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDEA7D70 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = qword_1EDEBB920;
    v6 = *(qword_1EDEBB920 + 16);
    if (!v6)
    {
      return a1;
    }

    v7 = 0;
    v8 = qword_1EDEBB920 + 32;
    while (v7 < *(v5 + 16))
    {
      v9 = *(v8 + 4 * v7);
      if ((v9 & ~a3) == 0)
      {
        if (qword_1EDEA7D98 != -1)
        {
          swift_once();
        }

        v10 = qword_1EDEBB928;
        if (!*(qword_1EDEBB928 + 16) || (v11 = sub_1CF7D52AC(), (v12 & 1) == 0))
        {
          v21 = 13;
LABEL_17:
          sub_1CEFDB034();
          swift_allocError();
          v23 = v22;
          *(v22 + 24) = &type metadata for VFSAttributes.Extended.AttributeSet;
          *(v22 + 32) = sub_1CF520714();
          *v23 = v9;
          *(v23 + 40) = v21;
          swift_willThrow();
          return a1;
        }

        v13 = v9;
        v14 = v5;
        v15 = v6;
        v16 = v8;
        v17 = a3;
        v18 = (*(v10 + 56) + 32 * v11);
        a3 = *v18;
        v19 = a2;
        if (a2 < *v18)
        {
          v21 = 14;
          v9 = v13;
          goto LABEL_17;
        }

        v20 = v18[2];

        v20(a1, a2);

        a2 -= a3;
        if (__OFSUB__(v19, a3))
        {
          goto LABEL_20;
        }

        a1 += a3;
        a3 = v17;
        v8 = v16;
        v6 = v15;
        v5 = v14;
      }

      if (v6 == ++v7)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_1CF65DD54(unsigned int *a1)
{
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = *a1;
  v8 = sub_1CF65D340((a1 + 6), v7 - 24, a1[1] & 0x7FFFFFFF);
  if (v1)
  {
    return a1 + v7;
  }

  result = sub_1CF65D544(v8, v9, v4 & 0x7FFFFFFF);
  if ((v3 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1CF65D748(result, v11, v3);
  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  result = sub_1CF65D94C(result, v12, v6);
  if ((v5 & 0x80000000) == 0)
  {
    sub_1CF65DB50(result, v13, v5);
    return a1 + v7;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_1CF65DE04@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, void *a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = a5;
  v13 = a1;
  if (!a2)
  {
    v14 = 0;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 < 0)
  {
    goto LABEL_29;
  }

  v14 = a2 | 0x80000000;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((a5 & 0x80000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = (a1 & 0x180000 | a5) != 0;
  v16 = sub_1CF65D27C(a1, &qword_1EDEA7DF8, &qword_1EDEBB940, sub_1CF7D52AC, sub_1CF51E4B8);
  v17 = v16 + 24;
  if (__OFADD__(v16, 24))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = sub_1CF65D27C(a2, &qword_1EC4BCD30, &qword_1EC4EBD40, sub_1CF7D52AC, sub_1CF51EB84);
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = sub_1CF65D27C(a3, &qword_1EC4BCD40, &qword_1EC4EBD48, sub_1CF7D52AC, sub_1CF51EDE0);
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = sub_1CF65D27C(a4, &qword_1EDEA7EA0, &qword_1EDEBB958, sub_1CF7D52AC, sub_1CF51F0E0);
  v21 = __OFADD__(v22, v23);
  v24 = v22 + v23;
  if (v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = sub_1CF65D27C(v9, &qword_1EDEA7D98, &qword_1EDEBB928, sub_1CF7D52AC, sub_1CF51F494);
  v21 = __OFADD__(v24, v25);
  v26 = v24 + v25;
  if (v21)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v7 = __src;
  v31[0] = 5;
  v31[1] = v13 | 0x80000000;
  v31[2] = v14;
  v31[3] = a3;
  v31[4] = a4;
  v31[5] = v9;
  v9 = swift_slowAlloc();
  a1 = fgetattrlist(a6, v31, v9, v26, 32 * v15);
  if ((a1 & 0x80000000) != 0)
  {
LABEL_17:
    v27 = MEMORY[0x1D38683F0](a1);
    *&__src[0] = 28;
    *(v7 + 8) = 0u;
    *(v7 + 24) = 0u;
    BYTE8(__src[2]) = 19;
    sub_1CF19BBE4(v27, __src);
    sub_1CF1969CC(__src);
    swift_willThrow();
    return MEMORY[0x1D386CDC0](v9, -1, -1);
  }

  *(&__src[27] + 1) = *v36;
  *(&__src[50] + 13) = v34;
  *(&__src[54] + 9) = *v33;
  *(&__src[62] + 9) = *v32;
  BYTE4(__src[1]) = 1;
  LOBYTE(__src[2]) = 1;
  BYTE8(__src[2]) = 1;
  LOBYTE(__src[3]) = 1;
  BYTE12(__src[3]) = 1;
  BYTE8(__src[4]) = 1;
  BYTE4(__src[5]) = 1;
  BYTE12(__src[5]) = 1;
  *(&__src[3] + 4) = 0;
  *(&__src[4] + 12) = 0;
  *(&__src[7] + 8) = 0u;
  *(&__src[10] + 8) = 0u;
  *(&__src[14] + 1) = 0u;
  *(&__src[13] + 1) = 0u;
  *(&__src[21] + 4) = 0u;
  *(&__src[24] + 8) = 0u;
  *(&__src[25] + 8) = 0u;
  *(&__src[27] + 4) = *&v36[3];
  BYTE12(__src[27]) = 1;
  BYTE4(__src[28]) = 1;
  LOBYTE(__src[29]) = 1;
  *(&__src[39] + 8) = 0u;
  *(&__src[41] + 4) = 0u;
  *(&__src[42] + 4) = 0u;
  *(&__src[43] + 5) = 0u;
  *(&__src[48] + 12) = 0;
  *(&__src[46] + 12) = 0u;
  *(&__src[47] + 12) = 0u;
  *(&__src[49] + 8) = 0u;
  HIBYTE(__src[50]) = v35;
  BYTE4(__src[51]) = 1;
  BYTE12(__src[51]) = 1;
  BYTE4(__src[52]) = 1;
  LOBYTE(__src[53]) = 1;
  BYTE8(__src[53]) = 1;
  BYTE8(__src[54]) = 1;
  HIDWORD(__src[54]) = *&v33[3];
  LOBYTE(__src[56]) = 1;
  LOBYTE(__src[57]) = 1;
  BYTE8(__src[57]) = 1;
  LOBYTE(__src[58]) = 1;
  BYTE8(__src[58]) = 1;
  BYTE8(__src[59]) = 1;
  BYTE8(__src[60]) = 1;
  BYTE8(__src[61]) = 1;
  BYTE8(__src[62]) = 1;
  HIDWORD(__src[62]) = *&v32[3];
  __dst[0] = 1;
  LOBYTE(__src[7]) = 1;
  BYTE8(__src[8]) = 1;
  LOBYTE(__src[10]) = 1;
  BYTE8(__src[11]) = 1;
  LOBYTE(__src[13]) = 1;
  BYTE1(__src[15]) = 1;
  BYTE8(__src[15]) = 1;
  LOBYTE(__src[16]) = 1;
  BYTE8(__src[16]) = 1;
  LOBYTE(__src[17]) = 1;
  BYTE8(__src[17]) = 1;
  LOBYTE(__src[18]) = 1;
  BYTE8(__src[18]) = 1;
  LOBYTE(__src[21]) = 1;
  BYTE4(__src[22]) = 1;
  LOBYTE(__src[23]) = 1;
  LOBYTE(__src[24]) = 1;
  BYTE8(__src[26]) = 1;
  LOBYTE(__src[27]) = 1;
  LOBYTE(__src[30]) = 1;
  LOBYTE(__src[31]) = 1;
  LOBYTE(__src[32]) = 1;
  LOBYTE(__src[33]) = 1;
  LOBYTE(__src[34]) = 1;
  BYTE8(__src[34]) = 1;
  LOBYTE(__src[35]) = 1;
  BYTE8(__src[35]) = 1;
  LOBYTE(__src[36]) = 1;
  BYTE8(__src[36]) = 1;
  BYTE4(__src[39]) = 1;
  LOBYTE(__src[41]) = 1;
  BYTE4(__src[43]) = 1;
  BYTE5(__src[44]) = 1;
  BYTE12(__src[44]) = 1;
  BYTE8(__src[45]) = 1;
  BYTE8(__src[46]) = 1;
  BYTE4(__src[49]) = 1;
  BYTE12(__src[50]) = 1;
  BYTE4(__src[55]) = 1;
  BYTE8(__src[64]) = 1;
  BYTE8(__src[65]) = 1;
  BYTE4(__src[67]) = 1;
  LOBYTE(__src[68]) = 1;
  LOBYTE(__src[69]) = 1;
  LOBYTE(__src[70]) = 1;
  LOBYTE(__src[71]) = 1;
  LOBYTE(__src[72]) = 1;
  BYTE8(__src[72]) = 1;
  memset(__src, 0, 20);
  *(&__src[1] + 1) = 0;
  DWORD1(__src[2]) = 0;
  HIDWORD(__src[2]) = 0;
  *&__src[4] = 0;
  DWORD2(__src[5]) = 0;
  __src[6] = 0u;
  __src[9] = 0u;
  __src[12] = 0u;
  DWORD1(__src[15]) = 0;
  HIDWORD(__src[15]) = 0;
  DWORD1(__src[16]) = 0;
  HIDWORD(__src[16]) = 0;
  DWORD1(__src[17]) = 0;
  HIDWORD(__src[17]) = 0;
  DWORD1(__src[18]) = 0;
  __src[19] = xmmword_1CF9F4E20;
  __src[20] = 0u;
  *(&__src[22] + 1) = 0;
  *(&__src[23] + 1) = 0;
  HIDWORD(__src[26]) = 0;
  LODWORD(__src[28]) = 0;
  *(&__src[28] + 1) = 0;
  *(&__src[29] + 1) = 0;
  *(&__src[30] + 1) = 0;
  *(&__src[31] + 1) = 0;
  *(&__src[32] + 1) = 0;
  *(&__src[33] + 1) = 0;
  DWORD1(__src[34]) = 0;
  HIDWORD(__src[34]) = 0;
  DWORD1(__src[35]) = 0;
  HIDWORD(__src[35]) = 0;
  DWORD1(__src[36]) = 0;
  memset(&__src[37], 0, 36);
  *(&__src[40] + 1) = 0;
  DWORD2(__src[44]) = 0;
  *&__src[45] = 0;
  *&__src[46] = 0;
  DWORD2(__src[50]) = 0;
  LODWORD(__src[51]) = 0;
  DWORD2(__src[51]) = 0;
  LODWORD(__src[52]) = 0;
  *(&__src[52] + 1) = 0;
  DWORD1(__src[53]) = 0;
  *&__src[54] = 0;
  LODWORD(__src[55]) = 0;
  *(&__src[55] + 1) = 0;
  *(&__src[56] + 1) = 0;
  DWORD1(__src[57]) = 0;
  HIDWORD(__src[57]) = 0;
  DWORD1(__src[58]) = 0;
  *&__src[59] = 0;
  *&__src[60] = 0;
  *&__src[61] = 0;
  *&__src[62] = 0;
  memset(&__src[63], 0, 24);
  *&__src[65] = 0;
  memset(&__src[66], 0, 20);
  *(&__src[67] + 1) = 0;
  *(&__src[68] + 1) = 0;
  *(&__src[69] + 1) = 0;
  *(&__src[70] + 1) = 0;
  *(&__src[71] + 1) = 0;
  DWORD1(__src[72]) = 0;
  sub_1CF65DD54(v9);
  if (v30)
  {
    memcpy(__dst, __src, 0x489uLL);
    sub_1CF19BF48(__dst);
    return MEMORY[0x1D386CDC0](v9, -1, -1);
  }

  memcpy(__dst, __src, 0x489uLL);
  MEMORY[0x1D386CDC0](v9, -1, -1);
  return memcpy(a7, __dst, 0x489uLL);
}

void *sub_1CF65E5E4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    sub_1CF65ED6C(v18);
    return memcpy(a1, v18, 0x489uLL);
  }

  *(&__src[27] + 1) = *v17;
  *(&__src[50] + 13) = v15;
  *(&__src[54] + 9) = *v14;
  *(&__src[62] + 9) = *v13;
  BYTE4(__src[1]) = 1;
  LOBYTE(__src[2]) = 1;
  BYTE8(__src[2]) = 1;
  LOBYTE(__src[3]) = 1;
  BYTE12(__src[3]) = 1;
  BYTE8(__src[4]) = 1;
  BYTE4(__src[5]) = 1;
  BYTE12(__src[5]) = 1;
  *(&__src[21] + 4) = 0u;
  *(&__src[24] + 8) = 0u;
  *(&__src[25] + 8) = 0u;
  *(&__src[27] + 4) = *&v17[3];
  BYTE12(__src[27]) = 1;
  BYTE4(__src[28]) = 1;
  LOBYTE(__src[29]) = 1;
  *(&__src[39] + 8) = 0u;
  *(&__src[41] + 4) = 0u;
  *(&__src[42] + 4) = 0u;
  *(&__src[43] + 5) = 0u;
  *(&__src[48] + 12) = 0;
  *(&__src[46] + 12) = 0u;
  *(&__src[47] + 12) = 0u;
  v12 = 1;
  v11 = 1;
  v10 = 1;
  v9 = 1;
  v8 = 1;
  v7 = 1;
  __dst[1296] = 1;
  *(&__src[3] + 4) = 0;
  *(&__src[4] + 12) = 0;
  *(&__src[7] + 8) = 0u;
  *(&__src[10] + 8) = 0u;
  *(&__src[14] + 1) = 0u;
  *(&__src[13] + 1) = 0u;
  *(&__src[49] + 8) = 0u;
  HIBYTE(__src[50]) = v16;
  BYTE4(__src[51]) = 1;
  BYTE12(__src[51]) = 1;
  BYTE4(__src[52]) = 1;
  LOBYTE(__src[53]) = 1;
  BYTE8(__src[53]) = 1;
  BYTE8(__src[54]) = 1;
  HIDWORD(__src[54]) = *&v14[3];
  LOBYTE(__src[56]) = 1;
  LOBYTE(__src[57]) = 1;
  BYTE8(__src[57]) = 1;
  LOBYTE(__src[58]) = 1;
  BYTE8(__src[58]) = 1;
  BYTE8(__src[59]) = 1;
  BYTE8(__src[60]) = 1;
  BYTE8(__src[61]) = 1;
  BYTE8(__src[62]) = 1;
  HIDWORD(__src[62]) = *&v13[3];
  __dst[1204] = 1;
  __dst[1200] = 1;
  __dst[1192] = 1;
  __dst[1184] = 1;
  __dst[1176] = 1;
  __dst[1288] = 1;
  __dst[1280] = 1;
  __dst[1272] = 1;
  __dst[1268] = 1;
  __dst[1264] = 1;
  __dst[1256] = 1;
  __dst[1248] = 1;
  __dst[1240] = 1;
  __dst[1232] = 1;
  __dst[1224] = 1;
  __dst[1216] = 1;
  __dst[1208] = 1;
  LOBYTE(v18[0]) = 1;
  __dst[0] = 1;
  __dst[1352] = 1;
  __dst[1344] = 1;
  __dst[1336] = 1;
  __dst[1328] = 1;
  __dst[1320] = 1;
  __dst[1312] = 1;
  __dst[1304] = 1;
  LOBYTE(__src[7]) = 1;
  BYTE8(__src[8]) = 1;
  LOBYTE(__src[10]) = 1;
  BYTE8(__src[11]) = 1;
  LOBYTE(__src[13]) = 1;
  BYTE1(__src[15]) = 1;
  BYTE8(__src[15]) = 1;
  LOBYTE(__src[16]) = 1;
  BYTE8(__src[16]) = 1;
  LOBYTE(__src[17]) = 1;
  BYTE8(__src[17]) = 1;
  LOBYTE(__src[18]) = 1;
  BYTE8(__src[18]) = 1;
  LOBYTE(__src[21]) = 1;
  BYTE4(__src[22]) = 1;
  LOBYTE(__src[23]) = 1;
  LOBYTE(__src[24]) = 1;
  BYTE8(__src[26]) = 1;
  LOBYTE(__src[27]) = 1;
  LOBYTE(__src[30]) = 1;
  LOBYTE(__src[31]) = 1;
  LOBYTE(__src[32]) = 1;
  LOBYTE(__src[33]) = 1;
  LOBYTE(__src[34]) = 1;
  BYTE8(__src[34]) = 1;
  LOBYTE(__src[35]) = 1;
  BYTE8(__src[35]) = 1;
  LOBYTE(__src[36]) = 1;
  BYTE8(__src[36]) = 1;
  BYTE4(__src[39]) = 1;
  LOBYTE(__src[41]) = 1;
  BYTE4(__src[43]) = 1;
  BYTE5(__src[44]) = 1;
  BYTE12(__src[44]) = 1;
  BYTE8(__src[45]) = 1;
  BYTE8(__src[46]) = 1;
  BYTE4(__src[49]) = 1;
  BYTE12(__src[50]) = 1;
  BYTE4(__src[55]) = 1;
  BYTE8(__src[64]) = 1;
  BYTE8(__src[65]) = 1;
  BYTE4(__src[67]) = 1;
  LOBYTE(__src[68]) = 1;
  LOBYTE(__src[69]) = 1;
  LOBYTE(__src[70]) = 1;
  LOBYTE(__src[71]) = 1;
  LOBYTE(__src[72]) = 1;
  memset(__src, 0, 20);
  *(&__src[1] + 1) = 0;
  DWORD1(__src[2]) = 0;
  HIDWORD(__src[2]) = 0;
  *&__src[4] = 0;
  DWORD2(__src[5]) = 0;
  __src[6] = 0u;
  __src[9] = 0u;
  __src[12] = 0u;
  DWORD1(__src[15]) = 0;
  HIDWORD(__src[15]) = 0;
  DWORD1(__src[16]) = 0;
  HIDWORD(__src[16]) = 0;
  DWORD1(__src[17]) = 0;
  HIDWORD(__src[17]) = 0;
  DWORD1(__src[18]) = 0;
  __src[19] = xmmword_1CF9F4E20;
  __src[20] = 0u;
  *(&__src[22] + 1) = 0;
  *(&__src[23] + 1) = 0;
  HIDWORD(__src[26]) = 0;
  LODWORD(__src[28]) = 0;
  *(&__src[28] + 1) = 0;
  *(&__src[29] + 1) = 0;
  *(&__src[30] + 1) = 0;
  *(&__src[31] + 1) = 0;
  *(&__src[32] + 1) = 0;
  *(&__src[33] + 1) = 0;
  DWORD1(__src[34]) = 0;
  HIDWORD(__src[34]) = 0;
  DWORD1(__src[35]) = 0;
  HIDWORD(__src[35]) = 0;
  DWORD1(__src[36]) = 0;
  memset(&__src[37], 0, 36);
  *(&__src[40] + 1) = 0;
  DWORD2(__src[44]) = 0;
  *&__src[45] = 0;
  *&__src[46] = 0;
  DWORD2(__src[50]) = 0;
  LODWORD(__src[51]) = 0;
  DWORD2(__src[51]) = 0;
  LODWORD(__src[52]) = 0;
  *(&__src[52] + 1) = 0;
  DWORD1(__src[53]) = 0;
  *&__src[54] = 0;
  LODWORD(__src[55]) = 0;
  *(&__src[55] + 1) = 0;
  *(&__src[56] + 1) = 0;
  DWORD1(__src[57]) = 0;
  HIDWORD(__src[57]) = 0;
  DWORD1(__src[58]) = 0;
  *&__src[59] = 0;
  *&__src[60] = 0;
  *&__src[61] = 0;
  *&__src[62] = 0;
  memset(&__src[63], 0, 24);
  *&__src[65] = 0;
  memset(&__src[66], 0, 20);
  *(&__src[67] + 1) = 0;
  *(&__src[68] + 1) = 0;
  *(&__src[69] + 1) = 0;
  *(&__src[70] + 1) = 0;
  *(&__src[71] + 1) = 0;
  DWORD1(__src[72]) = 0;
  BYTE8(__src[72]) = 1;
  result = sub_1CF65DD54(*(v1 + 8));
  *(v1 + 8) = result;
  if (!__OFSUB__(v3, 1))
  {
    *(v1 + 16) = v3 - 1;
    memcpy(__dst, __src, 0x489uLL);
    nullsub_1();
    memcpy(v18, __dst, 0x489uLL);
    return memcpy(a1, v18, 0x489uLL);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF65EBCC()
{
  MEMORY[0x1D386CDC0](*(v0 + 24), -1, -1);

  return swift_deallocClassInstance();
}

unint64_t sub_1CF65EC34()
{
  result = qword_1EC4C1EE8;
  if (!qword_1EC4C1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1EE8);
  }

  return result;
}

void sub_1CF65EC88(void *a1@<X8>)
{
  v3 = *(*v1 + 16);
  v2 = *(*v1 + 24);
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_1CF65ECA8()
{
  sub_1CF65F7F4(*v0);
  v2 = v1;

  return v2;
}

void *sub_1CF65ED80@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, void *a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v8 = a5;
  v12 = a1;
  if (!a2)
  {
    v13 = 0;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 < 0)
  {
    goto LABEL_29;
  }

  v13 = a2 | 0x80000000;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((a5 & 0x80000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (a1 & 0x180000 | a5) != 0;
  v15 = sub_1CF65D27C(a1, &qword_1EDEA7DF8, &qword_1EDEBB940, sub_1CF7D52AC, sub_1CF51E4B8);
  v16 = v15 + 24;
  if (__OFADD__(v15, 24))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = sub_1CF65D27C(a2, &qword_1EC4BCD30, &qword_1EC4EBD40, sub_1CF7D52AC, sub_1CF51EB84);
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = sub_1CF65D27C(a3, &qword_1EC4BCD40, &qword_1EC4EBD48, sub_1CF7D52AC, sub_1CF51EDE0);
  v18 = __OFADD__(v19, v20);
  v21 = v19 + v20;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = sub_1CF65D27C(a4, &qword_1EDEA7EA0, &qword_1EDEBB958, sub_1CF7D52AC, sub_1CF51F0E0);
  v18 = __OFADD__(v21, v22);
  v23 = v21 + v22;
  if (v18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = sub_1CF65D27C(v8, &qword_1EDEA7D98, &qword_1EDEBB928, sub_1CF7D52AC, sub_1CF51F494);
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v41[0] = 5;
  v41[1] = v12 | 0x80000000;
  v41[2] = v13;
  v41[3] = a3;
  v41[4] = a4;
  v41[5] = v8;
  v8 = swift_slowAlloc();
  sub_1CF9E5A18();
  v27 = v26;
  v28 = sub_1CF9E6978();
  v27, v29, v30, v31, v32, v33, v34, v35;
  LODWORD(v27) = getattrlist((v28 + 32), v41, v8, v25, (32 * v14) | ((a6 & 1) == 0));

  if ((v27 & 0x80000000) != 0)
  {
LABEL_17:
    v36 = MEMORY[0x1D38683F0](a1);
    *&__src[0] = 28;
    *(__src + 8) = 0u;
    *(&__src[1] + 8) = 0u;
    BYTE8(__src[2]) = 19;
    sub_1CF19BBE4(v36, __src);
    sub_1CF1969CC(__src);
    swift_willThrow();
    return MEMORY[0x1D386CDC0](v8, -1, -1);
  }

  *(&__src[27] + 1) = *v46;
  *(&__src[50] + 13) = v44;
  *(&__src[54] + 9) = *v43;
  *(&__src[62] + 9) = *v42;
  BYTE4(__src[1]) = 1;
  LOBYTE(__src[2]) = 1;
  BYTE8(__src[2]) = 1;
  LOBYTE(__src[3]) = 1;
  BYTE12(__src[3]) = 1;
  BYTE8(__src[4]) = 1;
  BYTE4(__src[5]) = 1;
  BYTE12(__src[5]) = 1;
  *(&__src[3] + 4) = 0;
  *(&__src[4] + 12) = 0;
  *(&__src[7] + 8) = 0u;
  *(&__src[10] + 8) = 0u;
  *(&__src[14] + 1) = 0u;
  *(&__src[13] + 1) = 0u;
  *(&__src[21] + 4) = 0u;
  *(&__src[24] + 8) = 0u;
  *(&__src[25] + 8) = 0u;
  *(&__src[27] + 4) = *&v46[3];
  BYTE12(__src[27]) = 1;
  BYTE4(__src[28]) = 1;
  LOBYTE(__src[29]) = 1;
  *(&__src[39] + 8) = 0u;
  *(&__src[41] + 4) = 0u;
  *(&__src[42] + 4) = 0u;
  *(&__src[43] + 5) = 0u;
  *(&__src[48] + 12) = 0;
  *(&__src[46] + 12) = 0u;
  *(&__src[47] + 12) = 0u;
  *(&__src[49] + 8) = 0u;
  HIBYTE(__src[50]) = v45;
  BYTE4(__src[51]) = 1;
  BYTE12(__src[51]) = 1;
  BYTE4(__src[52]) = 1;
  LOBYTE(__src[53]) = 1;
  BYTE8(__src[53]) = 1;
  BYTE8(__src[54]) = 1;
  HIDWORD(__src[54]) = *&v43[3];
  LOBYTE(__src[56]) = 1;
  LOBYTE(__src[57]) = 1;
  BYTE8(__src[57]) = 1;
  LOBYTE(__src[58]) = 1;
  BYTE8(__src[58]) = 1;
  BYTE8(__src[59]) = 1;
  BYTE8(__src[60]) = 1;
  BYTE8(__src[61]) = 1;
  BYTE8(__src[62]) = 1;
  HIDWORD(__src[62]) = *&v42[3];
  __dst[0] = 1;
  LOBYTE(__src[7]) = 1;
  BYTE8(__src[8]) = 1;
  LOBYTE(__src[10]) = 1;
  BYTE8(__src[11]) = 1;
  LOBYTE(__src[13]) = 1;
  BYTE1(__src[15]) = 1;
  BYTE8(__src[15]) = 1;
  LOBYTE(__src[16]) = 1;
  BYTE8(__src[16]) = 1;
  LOBYTE(__src[17]) = 1;
  BYTE8(__src[17]) = 1;
  LOBYTE(__src[18]) = 1;
  BYTE8(__src[18]) = 1;
  LOBYTE(__src[21]) = 1;
  BYTE4(__src[22]) = 1;
  LOBYTE(__src[23]) = 1;
  LOBYTE(__src[24]) = 1;
  BYTE8(__src[26]) = 1;
  LOBYTE(__src[27]) = 1;
  LOBYTE(__src[30]) = 1;
  LOBYTE(__src[31]) = 1;
  LOBYTE(__src[32]) = 1;
  LOBYTE(__src[33]) = 1;
  LOBYTE(__src[34]) = 1;
  BYTE8(__src[34]) = 1;
  LOBYTE(__src[35]) = 1;
  BYTE8(__src[35]) = 1;
  LOBYTE(__src[36]) = 1;
  BYTE8(__src[36]) = 1;
  BYTE4(__src[39]) = 1;
  LOBYTE(__src[41]) = 1;
  BYTE4(__src[43]) = 1;
  BYTE5(__src[44]) = 1;
  BYTE12(__src[44]) = 1;
  BYTE8(__src[45]) = 1;
  BYTE8(__src[46]) = 1;
  BYTE4(__src[49]) = 1;
  BYTE12(__src[50]) = 1;
  BYTE4(__src[55]) = 1;
  BYTE8(__src[64]) = 1;
  BYTE8(__src[65]) = 1;
  BYTE4(__src[67]) = 1;
  LOBYTE(__src[68]) = 1;
  LOBYTE(__src[69]) = 1;
  LOBYTE(__src[70]) = 1;
  LOBYTE(__src[71]) = 1;
  LOBYTE(__src[72]) = 1;
  BYTE8(__src[72]) = 1;
  memset(__src, 0, 20);
  *(&__src[1] + 1) = 0;
  DWORD1(__src[2]) = 0;
  HIDWORD(__src[2]) = 0;
  *&__src[4] = 0;
  DWORD2(__src[5]) = 0;
  __src[6] = 0u;
  __src[9] = 0u;
  __src[12] = 0u;
  DWORD1(__src[15]) = 0;
  HIDWORD(__src[15]) = 0;
  DWORD1(__src[16]) = 0;
  HIDWORD(__src[16]) = 0;
  DWORD1(__src[17]) = 0;
  HIDWORD(__src[17]) = 0;
  DWORD1(__src[18]) = 0;
  __src[19] = xmmword_1CF9F4E20;
  __src[20] = 0u;
  *(&__src[22] + 1) = 0;
  *(&__src[23] + 1) = 0;
  HIDWORD(__src[26]) = 0;
  LODWORD(__src[28]) = 0;
  *(&__src[28] + 1) = 0;
  *(&__src[29] + 1) = 0;
  *(&__src[30] + 1) = 0;
  *(&__src[31] + 1) = 0;
  *(&__src[32] + 1) = 0;
  *(&__src[33] + 1) = 0;
  DWORD1(__src[34]) = 0;
  HIDWORD(__src[34]) = 0;
  DWORD1(__src[35]) = 0;
  HIDWORD(__src[35]) = 0;
  DWORD1(__src[36]) = 0;
  memset(&__src[37], 0, 36);
  *(&__src[40] + 1) = 0;
  DWORD2(__src[44]) = 0;
  *&__src[45] = 0;
  *&__src[46] = 0;
  DWORD2(__src[50]) = 0;
  LODWORD(__src[51]) = 0;
  DWORD2(__src[51]) = 0;
  LODWORD(__src[52]) = 0;
  *(&__src[52] + 1) = 0;
  DWORD1(__src[53]) = 0;
  *&__src[54] = 0;
  LODWORD(__src[55]) = 0;
  *(&__src[55] + 1) = 0;
  *(&__src[56] + 1) = 0;
  DWORD1(__src[57]) = 0;
  HIDWORD(__src[57]) = 0;
  DWORD1(__src[58]) = 0;
  *&__src[59] = 0;
  *&__src[60] = 0;
  *&__src[61] = 0;
  *&__src[62] = 0;
  memset(&__src[63], 0, 24);
  *&__src[65] = 0;
  memset(&__src[66], 0, 20);
  *(&__src[67] + 1) = 0;
  *(&__src[68] + 1) = 0;
  *(&__src[69] + 1) = 0;
  *(&__src[70] + 1) = 0;
  *(&__src[71] + 1) = 0;
  DWORD1(__src[72]) = 0;
  sub_1CF65DD54(v8);
  if (v39)
  {
    memcpy(__dst, __src, 0x489uLL);
    sub_1CF19BF48(__dst);
    return MEMORY[0x1D386CDC0](v8, -1, -1);
  }

  memcpy(__dst, __src, 0x489uLL);
  MEMORY[0x1D386CDC0](v8, -1, -1);
  return memcpy(a7, __dst, 0x489uLL);
}

uint64_t sub_1CF65F598(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1CF65F65C(int a1, uint64_t *a2, uint64_t *a3)
{
  v3 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v6 = a1;
    v7 = 0;
    v8 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v7)
      {
        v9 = v3[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 29;
        }

        v15 = v14 >> 2;
        v12[2] = v11;
        v12[3] = 2 * (v14 >> 2);
        v16 = (v12 + 4);
        v17 = v3[3] >> 1;
        if (v3[2])
        {
          if (v12 != v3 || v16 >= v3 + 4 * v17 + 32)
          {
            memmove(v12 + 4, v3 + 4, 4 * v17);
          }

          v3[2] = 0;
        }

        v8 = (v16 + 4 * v17);
        v7 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;

        v3 = v12;
      }

      v19 = __OFSUB__(v7--, 1);
      if (v19)
      {
        break;
      }

      v20 = v6 & -v6;
      *v8++ = v20;
      v21 = v6 == v20;
      v6 ^= v20;
      if (v21)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = 0;
LABEL_24:
  v22 = v3[3];
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v19 = __OFSUB__(v23, v7);
    v24 = v23 - v7;
    if (v19)
    {
LABEL_30:
      __break(1u);
      return;
    }

    v3[2] = v24;
  }
}

void sub_1CF65F7F4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    if (v3 <= 0)
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1EF0, &qword_1CFA0E430);
      v4 = swift_allocObject();
      v5 = _swift_stdlib_malloc_size(v4);
      *(v4 + 2) = v3;
      *(v4 + 3) = 2 * ((v5 - 32) / 1168);
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v4 + 3);

  v7 = *(v2 + 24);
  v24 = v2;
  v25 = v7;
  v26 = v3;
  if (v3 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v8 = v4 + 32;
  v9 = v6 >> 1;
  if (v3)
  {
    v9 -= v3;

    while (1)
    {
      sub_1CF65E5E4(__src);
      memcpy(v30, __src, 0x489uLL);
      if (sub_1CF65F598(v30) == 1)
      {
        goto LABEL_39;
      }

      memmove(v8, __src, 0x489uLL);
      v8 += 1168;
      if (!--v3)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_14:
  sub_1CF65E5E4(v27);
  memcpy(v23, v27, 0x489uLL);
  memcpy(__dst, v27, 0x489uLL);
  if (sub_1CF65F598(__dst) != 1)
  {
    while (1)
    {
      if (!v9)
      {
        v10 = *(v4 + 3);
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1EF0, &qword_1CFA0E430);
        v13 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v13) - 32) / 1168;
        *(v13 + 2) = v12;
        *(v13 + 3) = 2 * v14;
        v15 = (v13 + 32);
        v16 = *(v4 + 3) >> 1;
        v17 = 1168 * v16;
        if (*(v4 + 2))
        {
          if (v13 != v4 || v15 >= &v4[v17 + 32])
          {
            memmove(v13 + 32, v4 + 32, v17);
          }

          *(v4 + 2) = 0;
        }

        v8 = (v15 + v17);
        v9 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v4 = v13;
      }

      v19 = __OFSUB__(v9--, 1);
      if (v19)
      {
        break;
      }

      memmove(v8, v23, 0x489uLL);
      v8 += 1168;
      sub_1CF65E5E4(v27);
      memcpy(v23, v27, 0x489uLL);
      memcpy(__dst, v27, 0x489uLL);
      if (sub_1CF65F598(__dst) == 1)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_31:

  v20 = *(v4 + 3);
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v19 = __OFSUB__(v21, v9);
    v22 = v21 - v9;
    if (v19)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    *(v4 + 2) = v22;
  }
}

void sub_1CF65FC00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v6 = a1;
    v7 = 0;
    v8 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v7)
      {
        v9 = v3[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 25;
        }

        v15 = v14 >> 3;
        v12[2] = v11;
        v12[3] = 2 * (v14 >> 3);
        v16 = (v12 + 4);
        v17 = v3[3] >> 1;
        if (v3[2])
        {
          if (v12 != v3 || v16 >= &v3[v17 + 4])
          {
            memmove(v12 + 4, v3 + 4, 8 * v17);
          }

          v3[2] = 0;
        }

        v8 = (v16 + 8 * v17);
        v7 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;

        v3 = v12;
      }

      v19 = __OFSUB__(v7--, 1);
      if (v19)
      {
        break;
      }

      v20 = v6 & -v6;
      *v8++ = v20;
      v21 = v6 == v20;
      v6 ^= v20;
      if (v21)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = 0;
LABEL_24:
  v22 = v3[3];
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v19 = __OFSUB__(v23, v7);
    v24 = v23 - v7;
    if (v19)
    {
LABEL_30:
      __break(1u);
      return;
    }

    v3[2] = v24;
  }
}

void sub_1CF65FD5C(unint64_t a1)
{
  type metadata accessor for BrokenInvariants(0);
  sub_1CF660144(&qword_1EDEA36C0, type metadata accessor for BrokenInvariants, &unk_1CF9F6A38);
  v2 = sub_1CF9E7798();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  if ((v2 & 1) == 0)
  {
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      v6 = __clz(__rbit64(a1));
      if (v6 >= 0x40)
      {
        v7 = 0;
      }

      else
      {
        v7 = 1 << v6;
      }

      if ((sub_1CF9E7798() & 1) == 0)
      {
        a1 &= ~v7;
      }

      if (!v4)
      {
        v8 = v3[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1F50, &qword_1CFA0E4A0);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 25;
        }

        v14 = v13 >> 3;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 3);
        v15 = (v11 + 4);
        v16 = v3[3] >> 1;
        if (v3[2])
        {
          v17 = v3 + 4;
          if (v11 != v3 || v15 >= v17 + 8 * v16)
          {
            memmove(v11 + 4, v17, 8 * v16);
          }

          v3[2] = 0;
        }

        v5 = (v15 + 8 * v16);
        v4 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v3 = v11;
      }

      v18 = __OFSUB__(v4--, 1);
      if (v18)
      {
        break;
      }

      *v5++ = v7;
      if (sub_1CF9E7798())
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_23:
  v19 = v3[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v18 = __OFSUB__(v20, v4);
    v21 = v20 - v4;
    if (v18)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v3[2] = v21;
  }
}

void sub_1CF65FF50(unint64_t a1)
{
  type metadata accessor for NSFileProviderItemFields(0);
  sub_1CF660144(&qword_1EC4BD1B8, type metadata accessor for NSFileProviderItemFields, &unk_1CF9F6070);
  v2 = sub_1CF9E7798();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  if ((v2 & 1) == 0)
  {
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      v6 = __clz(__rbit64(a1));
      if (v6 >= 0x40)
      {
        v7 = 0;
      }

      else
      {
        v7 = 1 << v6;
      }

      if ((sub_1CF9E7798() & 1) == 0)
      {
        a1 &= ~v7;
      }

      if (!v4)
      {
        v8 = v3[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1F48, &unk_1CFA0E490);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 25;
        }

        v14 = v13 >> 3;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 3);
        v15 = (v11 + 4);
        v16 = v3[3] >> 1;
        if (v3[2])
        {
          v17 = v3 + 4;
          if (v11 != v3 || v15 >= v17 + 8 * v16)
          {
            memmove(v11 + 4, v17, 8 * v16);
          }

          v3[2] = 0;
        }

        v5 = (v15 + 8 * v16);
        v4 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v3 = v11;
      }

      v18 = __OFSUB__(v4--, 1);
      if (v18)
      {
        break;
      }

      *v5++ = v7;
      if (sub_1CF9E7798())
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_23:
  v19 = v3[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v18 = __OFSUB__(v20, v4);
    v21 = v20 - v4;
    if (v18)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v3[2] = v21;
  }
}

uint64_t sub_1CF660144(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF6601AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v4 += 24;
      v7 = objc_allocWithZone(MEMORY[0x1E6967428]);

      v8 = sub_1CF9E6888();
      [v7 initWithLabel:v8 color:v6];
      v5, v9, v10, v11, v12, v13, v14, v15;

      sub_1CF9E7A18();
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      --v2;
    }

    while (v2);
    return v16;
  }

  return result;
}

uint64_t sub_1CF6602A8()
{
  v0 = sub_1CF9E6888();
  v1 = [v0 fp_obfuscatedFilename];

  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v2;
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  return v14;
}

uint64_t sub_1CF66035C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2008, &qword_1CFA0E800);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v7 = *v1;
  v8 = v1[1];
  v21 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF661660();

  sub_1CF9E82A8();
  v19 = v7;
  v20 = v8;
  v22 = 0;
  sub_1CF1E60E8();
  v9 = v18[1];
  sub_1CF9E7F08();
  v20, v10, v11, v12, v13, v14, v15, v16;
  if (!v9)
  {
    LOBYTE(v19) = 1;
    sub_1CF9E7F38();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1CF6604F8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1FF8, &qword_1CFA0E7F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF661660();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v20 = 0;
    sub_1CF1E613C();
    sub_1CF9E7D88();
    v10 = v19[0];
    v9 = v19[1];
    LOBYTE(v19[0]) = 1;
    v11 = sub_1CF9E7DB8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v9;
    *(a2 + 16) = v11;

    __swift_destroy_boxed_opaque_existential_1(a1);
    v9, v12, v13, v14, v15, v16, v17, v18;
  }
}

uint64_t sub_1CF6606D0()
{
  if (*v0)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 1701667182;
  }
}

void sub_1CF660700(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, char *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v11 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {
    0xE500000000000000, a2, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_1CF6607D8(uint64_t a1)
{
  v2 = sub_1CF661660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF660814(uint64_t a1)
{
  v2 = sub_1CF661660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF660888(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*result)
    {
      v3 = *(result + 8);
      v4 = sub_1CF9E6A58();
      v6 = v5;
      if (v3 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v3;
      }

      swift_beginAccess();
      v8 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_1CF1F65BC(0, *v8->tree + 1, 1, v8, v10, v11, v12, v13);
        *(a2 + 16) = v8;
      }

      v15 = *v8->tree;
      v14 = *v8->tester;
      if (v15 >= v14 >> 1)
      {
        v8 = sub_1CF1F65BC((v14 > 1), v15 + 1, 1, v8, v10, v11, v12, v13);
      }

      *v8->tree = v15 + 1;
      v16 = v8 + 24 * v15;
      *(v16 + 4) = v4;
      *(v16 + 5) = v6;
      v16[48] = v7;
      *(a2 + 16) = v8;
      swift_endAccess();
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF66099C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v1, 0);
    v2 = v40;
    v4 = a1 + 48;
    do
    {
      v5 = *(v4 - 8);

      v6 = sub_1CF9E6888();
      v7 = [v6 fp_obfuscatedFilename];

      v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v10 = v9;

      MEMORY[0x1D3868CC0](58, 0xE100000000000000);
      v11 = sub_1CF9E7F98();
      v13 = v12;
      MEMORY[0x1D3868CC0](v11);
      v5, v14, v15, v16, v17, v18, v19, v20;
      v13, v21, v22, v23, v24, v25, v26, v27;
      v29 = *(v40 + 16);
      v28 = *(v40 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1CEFE95CC((v28 > 1), v29 + 1, 1);
      }

      v4 += 24;
      *(v40 + 16) = v29 + 1;
      v30 = v40 + 16 * v29;
      *(v30 + 32) = v8;
      *(v30 + 40) = v10;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CF0711CC();
  v31 = sub_1CF9E67D8();
  v2, v32, v33, v34, v35, v36, v37, v38;
  return v31;
}

uint64_t sub_1CF660B5C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1FC8, &qword_1CFA0E610);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF661334();
  sub_1CF9E82A8();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1FB0, &qword_1CFA0E608);
  sub_1CF6613DC(&qword_1EC4C1FD0, sub_1CF661454, MEMORY[0x1E69E6300]);
  sub_1CF9E7F08();
  return (*(v5 + 8))(v7, v4);
}

void sub_1CF660CF8(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  if (a1 == 1936154996 && a2 == 0xE400000000000000)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v20 = 0;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    v20 = v12 ^ 1;
  }

  *a3 = v20 & 1;
}

uint64_t sub_1CF660D80(uint64_t a1)
{
  v2 = sub_1CF661334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF660DBC(uint64_t a1)
{
  v2 = sub_1CF661334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1CF660DF8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1CF661180(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_1CF660E54(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = sub_1CEFE7394(*a1, v2);
  if (!v9)
  {
    goto LABEL_7;
  }

  if (v8 == 12565487 && v9 == 0xA300000000000000)
  {
    v9, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v17 = v9;
    v18 = sub_1CF9E8048();
    v17, v19, v20, v21, v22, v23, v24, v25;
    if ((v18 & 1) == 0)
    {
LABEL_7:

      goto LABEL_10;
    }
  }

  v26 = sub_1CF9E69E8();
  v27 = sub_1CF025150(v26, v3, v2);
  v29 = v28;
  v3 = MEMORY[0x1D3868C10](v27);
  v2 = v30;
  v29, v30, v31, v32, v33, v34, v35, v36;
LABEL_10:
  v37 = sub_1CEFE7394(v6, v5);
  if (!v38)
  {
    goto LABEL_16;
  }

  if (v37 == 12565487 && v38 == 0xA300000000000000)
  {
    v38, v38, v39, v40, v41, v42, v43, v44;
LABEL_19:
    v62 = sub_1CF9E69E8();
    v63 = sub_1CF025150(v62, v6, v5);
    v65 = v64;
    v66 = MEMORY[0x1D3868C10](v63);
    v5 = v67;
    v65, v67, v68, v69, v70, v71, v72, v73;
    if (v3 != v66)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v46 = v38;
  v47 = sub_1CF9E8048();
  v46, v48, v49, v50, v51, v52, v53, v54;
  if (v47)
  {
    goto LABEL_19;
  }

LABEL_16:

  if (v3 != v6)
  {
LABEL_22:
    v81 = sub_1CF9E8048();
    v5, v82, v83, v84, v85, v86, v87, v88;
    v2, v89, v90, v91, v92, v93, v94, v95;
    result = 0;
    if ((v81 & 1) == 0)
    {
      return result;
    }

    return v4 == v7;
  }

LABEL_20:
  if (v2 != v5)
  {
    goto LABEL_22;
  }

  v5, v55, v56, v57, v58, v59, v60, v61;
  v2, v74, v75, v76, v77, v78, v79, v80;
  return v4 == v7;
}

uint64_t sub_1CF661030(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v8[6] = a1;
  v8[7] = a2;
  v9 = a3;
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v4 = (v3 + 16);
  v8[4] = sub_1CF6614A8;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1CF1AD9FC;
  v8[3] = &block_descriptor_33;
  v5 = _Block_copy(v8);

  fpfs_deserialize_tags();
  _Block_release(v5);
  swift_beginAccess();
  v6 = *v4;
  if (*(v6 + 16))
  {
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void *sub_1CF661180(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1FA0, &qword_1CFA0E600);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF661334();
  sub_1CF9E8298();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1FB0, &qword_1CFA0E608);
    sub_1CF6613DC(&qword_1EC4C1FB8, sub_1CF661388, MEMORY[0x1E69E6330]);
    sub_1CF9E7D88();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_1CF661334()
{
  result = qword_1EC4C1FA8;
  if (!qword_1EC4C1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1FA8);
  }

  return result;
}

unint64_t sub_1CF661388()
{
  result = qword_1EC4C1FC0;
  if (!qword_1EC4C1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1FC0);
  }

  return result;
}

uint64_t sub_1CF6613DC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C1FB0, &qword_1CFA0E608);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF661454()
{
  result = qword_1EC4C1FD8;
  if (!qword_1EC4C1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1FD8);
  }

  return result;
}

uint64_t sub_1CF6614C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1CF661508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CF66155C()
{
  result = qword_1EC4C1FE0;
  if (!qword_1EC4C1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1FE0);
  }

  return result;
}

unint64_t sub_1CF6615B4()
{
  result = qword_1EC4C1FE8;
  if (!qword_1EC4C1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1FE8);
  }

  return result;
}

unint64_t sub_1CF66160C()
{
  result = qword_1EC4C1FF0;
  if (!qword_1EC4C1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1FF0);
  }

  return result;
}

unint64_t sub_1CF661660()
{
  result = qword_1EC4C2000;
  if (!qword_1EC4C2000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2000);
  }

  return result;
}

unint64_t sub_1CF6616C8()
{
  result = qword_1EC4C2010;
  if (!qword_1EC4C2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2010);
  }

  return result;
}

unint64_t sub_1CF661720()
{
  result = qword_1EC4C2018;
  if (!qword_1EC4C2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2018);
  }

  return result;
}

unint64_t sub_1CF661778()
{
  result = qword_1EC4C2020;
  if (!qword_1EC4C2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2020);
  }

  return result;
}

BOOL sub_1CF6618A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v3 < v2)
  {
    return 1;
  }

  return v2 == v3 && *(a1 + 24) < *(a2 + 24);
}

void *sub_1CF661928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CF9E77C8();
  if (result == (1 << *(a1 + 32)))
  {
    v5 = 0;
    v6 = -1;
  }

  else
  {
    result = sub_1CF663770(result, *(a1 + 36), a1, &v7);
    v5 = v7;
    v6 = v8;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

void *sub_1CF6619B0(uint64_t a1)
{
  v2 = sub_1CF9E77C8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1CF663658(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1CF661A30(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_1CF9E5B28();
  v4 = 0;
  return v3 | (v4 << 8);
}

void *sub_1CF661AB8(uint64_t a1)
{
  v2 = sub_1CF9E77C8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1CF6636EC(&v4, v2, *(a1 + 36), 0, a1);
  }
}

unint64_t sub_1CF661B34(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = result;
  v2 = sub_1CF9E7818();
  result = v1;
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1D3869C30](0, result);
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
  return result;
}

double sub_1CF661BE8@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = *(a1 + 64);
    v6 = *(a1 + 96);
    v12 = *(a1 + 80);
    v5 = v12;
    v13 = v6;
    v14 = *(a1 + 112);
    v8 = *(a1 + 48);
    v11[0] = *(a1 + 32);
    v7 = v11[0];
    v11[1] = v8;
    v11[2] = v4;
    *(a4 + 80) = v14;
    *(a4 + 32) = v4;
    *(a4 + 48) = v5;
    *(a4 + 64) = v6;
    *a4 = v7;
    *(a4 + 16) = v8;
    sub_1CEFCCBDC(v11, v10, a2, a3);
  }

  else
  {
    result = 0.0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 48) = 0;
    *(a4 + 56) = 1;
    *(a4 + 72) = 0;
    *(a4 + 80) = 0;
    *(a4 + 64) = 0;
  }

  return result;
}

uint64_t static Filename.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = sub_1CEFE7394(*a1, v2);
  if (!v7)
  {
    goto LABEL_7;
  }

  if (v6 == 12565487 && v7 == 0xA300000000000000)
  {
    v7, v7, v8, v9, v10, v11, v12, v13;
  }

  else
  {
    v15 = v7;
    v16 = sub_1CF9E8048();
    v15, v17, v18, v19, v20, v21, v22, v23;
    if ((v16 & 1) == 0)
    {
LABEL_7:

      goto LABEL_10;
    }
  }

  v24 = sub_1CF9E69E8();
  v25 = sub_1CF025150(v24, v3, v2);
  v27 = v26;
  v3 = MEMORY[0x1D3868C10](v25);
  v2 = v28;
  v27, v28, v29, v30, v31, v32, v33, v34;
LABEL_10:
  v35 = sub_1CEFE7394(v5, v4);
  if (!v36)
  {
    goto LABEL_16;
  }

  if (v35 == 12565487 && v36 == 0xA300000000000000)
  {
    v36, v36, v37, v38, v39, v40, v41, v42;
  }

  else
  {
    v44 = v36;
    v45 = sub_1CF9E8048();
    v44, v46, v47, v48, v49, v50, v51, v52;
    if ((v45 & 1) == 0)
    {
LABEL_16:

      if (v3 != v5)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  v60 = sub_1CF9E69E8();
  v61 = sub_1CF025150(v60, v5, v4);
  v63 = v62;
  v64 = MEMORY[0x1D3868C10](v61);
  v4 = v65;
  v63, v65, v66, v67, v68, v69, v70, v71;
  if (v3 != v64)
  {
LABEL_22:
    v72 = sub_1CF9E8048();
    goto LABEL_23;
  }

LABEL_20:
  if (v2 != v4)
  {
    goto LABEL_22;
  }

  v72 = 1;
LABEL_23:
  v4, v53, v54, v55, v56, v57, v58, v59;
  v2, v73, v74, v75, v76, v77, v78, v79;
  return v72 & 1;
}

void sub_1CF661EA4(uint64_t a1@<X0>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v143 = a1;
  v154 = sub_1CF9E5A58();
  v6 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v141[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v152 = &v141[-v9];
  sub_1CF51B588(&v161);
  v155 = v161;
  v156 = v162;
  v10 = v163;
  v11 = v166;
  v146 = v165;
  if (v164)
  {
    v10 = 0;
  }

  v144 = v10;
  v12 = [objc_opt_self() fp_maximumBounceLevel];
  v167 = v12;
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  v142 = a4;
  v13 = 0;
  v149 = (v6 + 8);
  v150 = (v6 + 16);
  v151 = v11;
  v148 = a3;
  do
  {
    v145 = v13;
    if (v13)
    {
      v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      [v14 setDateStyle_];
      [v14 setTimeStyle_];
      v15 = sub_1CF9E5C48();
      v16 = [v14 stringFromDate_];

      v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v19 = v18;

      v161 = v17;
      v162 = v19;
      v159 = 58;
      v160 = 0xE100000000000000;
      v157 = 39;
      v158 = 0xE100000000000000;
      v20 = sub_1CEFE4E68();
      v21 = MEMORY[0x1E69E6158];
      v22 = sub_1CF9E7668();
      v24 = v23;
      v19, v23, v25, v26, v27, v28, v29, v30;
      v161 = v22;
      v162 = v24;
      v159 = 47;
      v160 = 0xE100000000000000;
      v157 = 58;
      v158 = 0xE100000000000000;
      v139 = v20;
      v140 = v20;
      v137 = v21;
      v138 = v20;
      v31 = sub_1CF9E7668();
      v33 = v32;
      v24, v32, v34, v35, v36, v37, v38, v39;
      v161 = v155;
      v162 = v156;
      MEMORY[0x1D3868CC0](0x209380E220, 0xA500000000000000);
      MEMORY[0x1D3868CC0](v31, v33);

      v33, v40, v41, v42, v43, v44, v45, v46;
      v155 = v161;
      v156 = v162;
    }

    if (v144 < v167)
    {
      v47 = v144;
      while (1)
      {
        if (v47 == 1)
        {
          goto LABEL_18;
        }

        if (v47)
        {
          break;
        }

        v48 = v156;

        v49 = v155;
        if (v11)
        {
          goto LABEL_13;
        }

LABEL_14:

        v12 = objc_sync_enter(a3);
        if (v12)
        {
          goto LABEL_27;
        }

        v57 = a3[20];

        v58 = objc_sync_exit(a3);
        if (v58)
        {
          MEMORY[0x1EEE9AC00](v58);
          v139 = v148;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, &v137, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

        v59 = v153;
        v60 = v154;
        (*v150)(v153, v57 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v154);

        v161 = v49;
        v162 = v48;
        v159 = 47;
        v160 = 0xE100000000000000;
        v157 = 58;
        v158 = 0xE100000000000000;
        v139 = sub_1CEFE4E68();
        v140 = v139;
        v138 = v139;
        v137 = MEMORY[0x1E69E6158];
        sub_1CF9E7668();
        v147 = v49;
        v62 = v61;
        v63 = v152;
        sub_1CF9E5958();
        v62, v64, v65, v66, v67, v68, v69, v70;
        v71 = *v149;
        (*v149)(v59, v60);
        sub_1CF9E5A18();
        v73 = v72;
        v74 = sub_1CF9E6978();
        v73, v75, v76, v77, v78, v79, v80, v81;
        LODWORD(v73) = faccessat(-2, (v74 + 32), 0, 32);
        v71(v63, v60);
        v48, v82, v83, v84, v85, v86, v87, v88;

        if (v73)
        {

          v151, v107, v108, v109, v110, v111, v112, v113;
          v156, v114, v115, v116, v117, v118, v119, v120;
          v121 = v142;
          *v142 = v147;
          v121[1] = v48;
          return;
        }

        v48, v89, v90, v91, v92, v93, v94, v95;
        a3 = v148;
        v11 = v151;
LABEL_18:
        if (v167 == v47)
        {
          goto LABEL_5;
        }

        if (__CFADD__(v47++, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          MEMORY[0x1EEE9AC00](v12);
          v139 = a3;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, &v137, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }
      }

      v161 = v155;
      v162 = v156;

      MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      v159 = v47;
      v97 = sub_1CF9E7F98();
      v99 = v98;
      MEMORY[0x1D3868CC0](v97);
      v99, v100, v101, v102, v103, v104, v105, v106;
      v49 = v161;
      v48 = v162;
      if (!v11)
      {
        goto LABEL_14;
      }

LABEL_13:
      v161 = v49;
      v162 = v48;

      MEMORY[0x1D3868CC0](46, 0xE100000000000000);
      MEMORY[0x1D3868CC0](v146, v11);
      v11, v50, v51, v52, v53, v54, v55, v56;
      v49 = v161;
      v48 = v162;
      goto LABEL_14;
    }

LABEL_5:
    v13 = 1;
  }

  while ((v145 & 1) == 0);

  v156, v122, v123, v124, v125, v126, v127, v128;
  v11, v129, v130, v131, v132, v133, v134, v135;
  v136 = v142;
  *v142 = 0;
  v136[1] = 0;
}

void sub_1CF662530(int a2@<W2>, uint64_t *a3@<X8>)
{
  v114 = *MEMORY[0x1E69E9840];
  sub_1CF51B588(&v113);
  st_ino = v113.st_ino;
  v112 = *&v113.st_dev;
  v5 = *&v113.st_uid;
  tv_nsec = v113.st_atimespec.tv_nsec;
  tv_sec = v113.st_atimespec.tv_sec;
  if (LOBYTE(v113.st_rdev))
  {
    v5 = 0;
  }

  v108 = v5;
  v7 = [objc_opt_self() fp_maximumBounceLevel];
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
  }

  v15 = v7;
  v107 = a3;
  v16 = 0;
  do
  {
    v109 = v16;
    if (v16)
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      [v17 setDateStyle_];
      [v17 setTimeStyle_];
      v18 = sub_1CF9E5C48();
      v19 = [v17 stringFromDate_];

      v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v22 = v21;

      *&v113.st_dev = v20;
      v113.st_ino = v22;
      sub_1CEFE4E68();
      v23 = sub_1CF9E7668();
      v25 = v24;
      v22, v24, v26, v27, v28, v29, v30, v31;
      *&v113.st_dev = v23;
      v113.st_ino = v25;
      v32 = sub_1CF9E7668();
      v34 = v33;
      v25, v33, v35, v36, v37, v38, v39, v40;
      *&v113.st_dev = v112;
      v113.st_ino = st_ino;
      MEMORY[0x1D3868CC0](0x209380E220, 0xA500000000000000);
      MEMORY[0x1D3868CC0](v32, v34);

      v34, v41, v42, v43, v44, v45, v46, v47;
      st_ino = v113.st_ino;
      v112 = *&v113.st_dev;
    }

    if (v108 < v15)
    {
      v48 = v108;
      while (1)
      {
        if (v48 == 1)
        {
          goto LABEL_16;
        }

        if (v48)
        {
          break;
        }

        v49 = v112;
        v50 = st_ino;
        if (tv_nsec)
        {
          goto LABEL_13;
        }

LABEL_14:
        memset(&v113, 0, sizeof(v113));
        sub_1CEFE4E68();

        sub_1CF9E7668();
        v59 = v58;
        v60 = sub_1CF9E6978();
        v59, v61, v62, v63, v64, v65, v66, v67;
        LODWORD(v59) = fstatat(a2, (v60 + 32), &v113, 32);
        v50, v68, v69, v70, v71, v72, v73, v74;

        if ((v59 & 0x80000000) != 0)
        {
          tv_nsec, v75, v76, v77, v78, v79, v80, v81;
          st_ino, v93, v94, v95, v96, v97, v98, v99;
          *v107 = v49;
          v107[1] = v50;
          return;
        }

        v50, v75, v76, v77, v78, v79, v80, v81;
LABEL_16:
        if (v15 == v48)
        {
          goto LABEL_5;
        }

        if (__CFADD__(v48++, 1))
        {
          __break(1u);
          goto LABEL_24;
        }
      }

      *&v113.st_dev = v112;
      v113.st_ino = st_ino;

      MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      v83 = sub_1CF9E7F98();
      v85 = v84;
      MEMORY[0x1D3868CC0](v83);
      v85, v86, v87, v88, v89, v90, v91, v92;
      v49 = *&v113.st_dev;
      v50 = v113.st_ino;
      if (!tv_nsec)
      {
        goto LABEL_14;
      }

LABEL_13:
      *&v113.st_dev = v49;
      v113.st_ino = v50;

      MEMORY[0x1D3868CC0](46, 0xE100000000000000);
      MEMORY[0x1D3868CC0](tv_sec, tv_nsec);
      tv_nsec, v51, v52, v53, v54, v55, v56, v57;
      v49 = *&v113.st_dev;
      v50 = v113.st_ino;
      goto LABEL_14;
    }

LABEL_5:
    v16 = 1;
  }

  while ((v109 & 1) == 0);
  st_ino, v8, v9, v10, v11, v12, v13, v14;
  tv_nsec, v100, v101, v102, v103, v104, v105, v106;
  *v107 = 0;
  v107[1] = 0;
}

void sub_1CF662980(uint64_t (*a1)(uint64_t *)@<X1>, uint64_t *a2@<X8>)
{
  sub_1CF51B588(&v126);
  v3 = v127;
  v132 = v126;
  v4 = v131;
  v124 = v130;
  if (v129)
  {
    v5 = 0;
  }

  else
  {
    v5 = v128;
  }

  v6 = [objc_opt_self() fp_maximumBounceLevel];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v14 = v6;
    v15 = 0;
    v122 = v5;
    do
    {
      v123 = v15;
      if (v15)
      {
        v16 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        [v16 setDateStyle_];
        v121 = v16;
        [v16 setTimeStyle_];
        v17 = sub_1CF9E5C48();
        v18 = [v16 stringFromDate_];

        v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v21 = v20;

        v126 = v19;
        v127 = v21;
        sub_1CEFE4E68();
        v22 = sub_1CF9E7668();
        v24 = v23;
        v21, v23, v25, v26, v27, v28, v29, v30;
        v126 = v22;
        v127 = v24;
        v31 = sub_1CF9E7668();
        v33 = v32;
        v24, v32, v34, v35, v36, v37, v38, v39;
        v126 = v132;
        v127 = v3;
        MEMORY[0x1D3868CC0](0x209380E220, 0xA500000000000000);
        v40 = v31;
        v5 = v122;
        MEMORY[0x1D3868CC0](v40, v33);

        v33, v41, v42, v43, v44, v45, v46, v47;
        v3 = v127;
        v132 = v126;
      }

      if (v5 < v14)
      {
        while (1)
        {
          if (v5 == 1)
          {
            goto LABEL_18;
          }

          if (v5)
          {
            break;
          }

          v48 = v132;
          v49 = v3;
          if (v4)
          {
            goto LABEL_14;
          }

LABEL_15:
          v126 = v48;
          v127 = v49;

          v57 = a1(&v126);
          if (v2)
          {
            v84 = v127;
            v3, v58, v59, v60, v61, v62, v63, v64;
            v4, v85, v86, v87, v88, v89, v90, v91;
            v49, v92, v93, v94, v95, v96, v97, v98;
            v84, v99, v100, v101, v102, v103, v104, v105;
            return;
          }

          v65 = v57;
          v127, v58, v59, v60, v61, v62, v63, v64;
          if (v65)
          {
            v4, v66, v67, v68, v69, v70, v71, v72;
            v3, v106, v107, v108, v109, v110, v111, v112;
            *a2 = v48;
            a2[1] = v49;
            return;
          }

          v49, v66, v67, v68, v69, v70, v71, v72;
LABEL_18:
          if (v14 == v5)
          {
            v5 = v122;
            goto LABEL_7;
          }

          if (__CFADD__(v5++, 1))
          {
            __break(1u);
            goto LABEL_27;
          }
        }

        v126 = v132;
        v127 = v3;

        MEMORY[0x1D3868CC0](32, 0xE100000000000000);
        v74 = sub_1CF9E7F98();
        v76 = v75;
        MEMORY[0x1D3868CC0](v74);
        v76, v77, v78, v79, v80, v81, v82, v83;
        v48 = v126;
        v49 = v127;
        if (!v4)
        {
          goto LABEL_15;
        }

LABEL_14:
        v126 = v48;
        v127 = v49;

        MEMORY[0x1D3868CC0](46, 0xE100000000000000);
        MEMORY[0x1D3868CC0](v124, v4);
        v4, v50, v51, v52, v53, v54, v55, v56;
        v48 = v126;
        v49 = v127;
        goto LABEL_15;
      }

LABEL_7:
      v15 = 1;
    }

    while ((v123 & 1) == 0);
    v3, v7, v8, v9, v10, v11, v12, v13;
    v4, v113, v114, v115, v116, v117, v118, v119;
    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t Filename.isValid.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v1 == 11822 && v2 == 0xE200000000000000;
  if (v3 || (sub_1CF9E8048() & 1) != 0 || (v1 == 46 ? (v4 = v2 == 0xE100000000000000) : (v4 = 0), v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1CF9E8048() ^ 1;
  }

  return v5 & 1;
}

uint64_t Filename.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Filename.description.getter()
{
  v0 = sub_1CF9E6888();
  v1 = [v0 fp_obfuscatedFilename];

  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  return v2;
}

uint64_t sub_1CF662E90()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1CEFE7394(v1, v2);
  if (!v4)
  {
    goto LABEL_7;
  }

  if (v3 == 12565487 && v4 == 0xA300000000000000)
  {
    v4, v4, v5, v6, v7, v8, v9, v10;
    goto LABEL_9;
  }

  v12 = v4;
  v13 = sub_1CF9E8048();
  v12, v14, v15, v16, v17, v18, v19, v20;
  if (v13)
  {
LABEL_9:
    v21 = sub_1CF9E69E8();
    v22 = sub_1CF025150(v21, v1, v2);
    v24 = v23;
    v1 = MEMORY[0x1D3868C10](v22);
    v24, v25, v26, v27, v28, v29, v30, v31;
    return v1;
  }

LABEL_7:

  return v1;
}

void *sub_1CF662F58@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

double sub_1CF662F64@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_1CF662F70()
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF662FC4(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF66300C()
{
  v0 = sub_1CF9E6888();
  v1 = [v0 fp_obfuscatedFilename];

  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  return v2;
}

uint64_t sub_1CF663074()
{
  v0 = sub_1CF662E90();
  v2 = v1;
  v4 = sub_1CF662E90();
  v10 = v3;
  if (v0 == v4 && v2 == v3)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1CF9E8048();
  }

  v10, v3, v4, v5, v6, v7, v8, v9;
  v2, v12, v13, v14, v15, v16, v17, v18;
  return v11 & 1;
}

uint64_t Filename.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1CF1A91AC(a1, v10);
  v5 = sub_1CF9E69B8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v6;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_1CF6631B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1CF1A91AC(a1, v10);
  v5 = sub_1CF9E69B8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v6;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v8;
  a2[1] = v9;
  return result;
}

void _s18FileProviderDaemon8FilenameV13stringLiteralACSS_tcfC_0(_TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1CEFE4E68();
  v5 = sub_1CF9E7668();
  v7 = v6;
  a2, v6, v8, v9, v10, v11, v12, v13;
  *a3 = v5;
  a3[1] = v7;
}

void sub_1CF6632EC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  sub_1CEFE4E68();
  v4 = sub_1CF9E7668();
  v6 = v5;
  v3, v5, v7, v8, v9, v10, v11, v12;
  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1CF6633F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  sub_1CEFE4E68();
  result = sub_1CF9E7668();
  *a4 = result;
  *a5 = v8;
  return result;
}

double sub_1CF6634AC@<D0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a5@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = a3;
    v10 = a5;
    swift_once();
    a2 = v8;
    a5 = v10;
    a3 = v9;
  }

  v6 = *a3;
  *a5 = *a2;
  a5[1] = v6;

  return result;
}

unint64_t sub_1CF663520()
{
  result = qword_1EC4C2048;
  if (!qword_1EC4C2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2048);
  }

  return result;
}

unint64_t sub_1CF663578()
{
  result = qword_1EC4C2050;
  if (!qword_1EC4C2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2050);
  }

  return result;
}

unint64_t sub_1CF6635DC()
{
  result = qword_1EC4C2058;
  if (!qword_1EC4C2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2058);
  }

  return result;
}

void *sub_1CF663658(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1CF6636EC(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);
    v6 = v5;

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1CF663770@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(a3 + 48) + 16 * result;
    v5 = *v4;
    LOBYTE(v4) = *(v4 + 8);
    *a4 = v5;
    *(a4 + 8) = v4;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1CF6637D0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL static FileItemVersion.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1CF9E6868() & 1) == 0)
  {
    return 0;
  }

  v40[0] = a3;
  v40[1] = a4;
  v40[2] = a5;
  v40[3] = a6;
  v12 = type metadata accessor for FileItemVersion(0, v40);
  v13 = v12[13];
  v14 = *(a2 + v13);
  if (*(a1 + v13))
  {
    if (!v14)
    {
      return 0;
    }

    v15 = sub_1CF9E6E78();
    v14, v16, v17, v18, v19, v20, v21, v22;
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (sub_1CF9E6868())
  {
    v23 = v12[15];
    v24 = *(a2 + v23);
    if (*(a1 + v23))
    {
      if (!v24)
      {
        return 0;
      }

      v25 = sub_1CF9E6E78();
      v24, v26, v27, v28, v29, v30, v31, v32;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v24)
    {
      return 0;
    }

    v33 = v12[16];
    v34 = (a1 + v33);
    v35 = *(a1 + v33 + 8);
    v36 = (a2 + v33);
    v37 = v36[1];
    if (v35)
    {
      if (!v37)
      {
        return 0;
      }

      v38 = *v34 == *v36 && v35 == v37;
      return v38 || (sub_1CF9E8048() & 1) != 0;
    }

    if (!v37)
    {
      return 1;
    }
  }

  return 0;
}

void FileItemVersion.equivalentContentVersions.setter(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = *(a2 + 52);
  *(v8 + v10), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + v10) = a1;
}

void FileItemVersion.equivalentStructureVersions.setter(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = *(a2 + 60);
  *(v8 + v10), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + v10) = a1;
}

uint64_t FileItemVersion.lastEditorDeviceName.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

void FileItemVersion.lastEditorDeviceName.setter(uint64_t a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v11 = v8 + *(a3 + 64);
  *(v11 + 8), a2, a3, a4, a5, a6, a7, a8;
  *v11 = a1;
  *(v11 + 8) = a2;
}

uint64_t sub_1CF663C4C(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x80000001CFA55B30;
    if (a1 == 0xD000000000000019 && 0x80000001CFA55B30 == a2 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x7275746375727473 && a2 == 0xE900000000000065 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = 0x80000001CFA55B50;
      if (a1 == 0xD00000000000001BLL && 0x80000001CFA55B50 == a2 || (sub_1CF9E8048() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0xD000000000000014 && 0x80000001CFA55B70 == a2)
      {
        a2, 0x80000001CFA55B70, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else
      {
        v14 = sub_1CF9E8048();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
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
}

unint64_t sub_1CF663E0C(unsigned __int8 a1)
{
  v1 = 0x746E65746E6F63;
  v2 = 0x7275746375727473;
  v3 = 0xD00000000000001BLL;
  if (a1 != 3)
  {
    v3 = 0xD000000000000014;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000019;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF663EF0(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF0BA820(v3, *v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF663F4C@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X6>, void *a6@<X7>)
{
  result = sub_1CF663C4C(a1, a2, *(a4 + 16), *(a4 + 24), *(a4 + 32), *(a4 + 40), a5, a6);
  *a3 = result;
  return result;
}

uint64_t sub_1CF663F80@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1CF664CD8();
  *a2 = result;
  return result;
}

uint64_t sub_1CF663FB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF664008(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FileItemVersion.encode(to:)(void *a1, int *a2)
{
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  v6 = *(a2 + 4);
  v5 = *(a2 + 5);
  v18 = a2;
  v19 = v6;
  v24[0] = v4;
  v24[1] = v3;
  v17[0] = v5;
  v17[1] = v3;
  v24[2] = v6;
  v24[3] = v5;
  type metadata accessor for FileItemVersion.CodingKeys(255, v24);
  swift_getWitnessTable();
  v7 = sub_1CF9E7F78();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  LOBYTE(v24[0]) = 0;
  v11 = v20;
  v12 = *(v19 + 24);
  v13 = v21;
  sub_1CF9E7F08();
  if (v13)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = v8;
  v16 = v18;
  v24[0] = *(v11 + v18[13]);
  v25 = 1;
  sub_1CF9E6E58();
  v23 = v12;
  swift_getWitnessTable();
  sub_1CF9E7E68();
  LOBYTE(v24[0]) = 2;
  v21 = *(v17[0] + 24);
  sub_1CF9E7F08();
  v24[0] = *(v11 + v16[15]);
  v25 = 3;
  sub_1CF9E6E58();
  v22 = v21;
  swift_getWitnessTable();
  sub_1CF9E7E68();
  LOBYTE(v24[0]) = 4;
  sub_1CF9E7E38();
  return (*(v15 + 8))(v10, v7);
}

void FileItemVersion.init(from:)(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a6;
  v47 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v15;
  v59 = v16;
  v60 = v17;
  v61 = v18;
  type metadata accessor for FileItemVersion.CodingKeys(255, &v58);
  swift_getWitnessTable();
  v19 = sub_1CF9E7E08();
  v20 = *(v19 - 8);
  v52 = v19;
  v53 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - v21;
  v58 = a2;
  v59 = a3;
  v50 = a3;
  v51 = a4;
  v60 = a4;
  v61 = a5;
  v45 = a5;
  v23 = type metadata accessor for FileItemVersion(0, &v58);
  v43 = *(v23 - 1);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v42 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v54 = v22;
  v26 = v55;
  sub_1CF9E8298();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v55 = v25;
    v27 = v50;
    LOBYTE(v58) = 0;
    v28 = *(v51 + 2);
    v29 = v49;
    sub_1CF9E7D88();
    (*(v48 + 32))(v55, v29, a2);
    v51 = a2;
    sub_1CF9E6E58();
    v62 = 1;
    v57 = v28;
    swift_getWitnessTable();
    sub_1CF9E7CF8();
    v30 = v23[13];
    v49 = v58;
    *&v55[v30] = v58;
    LOBYTE(v58) = 2;
    v31 = v46;
    v32 = *(v45 + 16);
    sub_1CF9E7D88();
    (*(v47 + 32))(&v55[v23[14]], v31, v27);
    sub_1CF9E6E58();
    v62 = 3;
    v56 = v32;
    swift_getWitnessTable();
    v33 = v54;
    sub_1CF9E7CF8();
    *&v55[v23[15]] = v58;
    LOBYTE(v58) = 4;
    v34 = sub_1CF9E7CB8();
    v36 = v35;
    v37 = v34;
    v38 = v33;
    v39 = v55;
    v40 = &v55[v23[16]];
    (*(v53 + 8))(v38, v52);
    *v40 = v37;
    v40[1] = v36;
    v41 = v43;
    (*(v43 + 16))(v44, v39, v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v41 + 8))(v39, v23);
  }
}

uint64_t FileItemVersion<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E81D8();
  sub_1CF9E6758();
  sub_1CF9E6758();
  return sub_1CF9E8228();
}

uint64_t sub_1CF664AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_1CF9E81D8();
  FileItemVersion<>.hash(into:)(v7, a2, v4, v5);
  return sub_1CF9E8228();
}

void sub_1CF664B90(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1CF9E6E58();
    sub_1CF9E75D8();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1CF9E6E58();
        sub_1CF9E75D8();
        if (v4 <= 0x3F)
        {
          sub_1CF4EFEB4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1CF664CE0(uint64_t a1)
{
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF664D7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  if (((*(*(*(a3 + 24) - 8) + 64) + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64) <= ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v3 = ((*(*(*(a3 + 24) - 8) + 64) + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v8 < 2)
    {
LABEL_26:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_26;
  }

LABEL_15:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}