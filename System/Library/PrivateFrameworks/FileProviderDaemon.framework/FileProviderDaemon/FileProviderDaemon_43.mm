uint64_t sub_1CF49DCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a1;
  v5[2] = a3;
  v5[3] = a4;
  return (*(a4 + 32))(sub_1CF4C0BA0, v5);
}

uint64_t sub_1CF49DD04(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x46204554454C4544, 0xEC000000204D4F52);
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000002ELL, 0x80000001CFA4E390);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000044, 0x80000001CFA4E3C0);
  if (*(a2 + 32))
  {
    v6 = 20550;
  }

  else
  {
    v6 = 21318;
  }

  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);
  0xE200000000000000, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA4E410);
  swift_getAssociatedTypeWitness();
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  v15 = *(v14 + 32);
  v16 = swift_checkMetadataState();
  v17 = v15(a1, v16, v14);
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0xD000000000000050, 0x80000001CFA4E440);
  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);
  0xE200000000000000, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](0x4E2053492064695FLL, 0xEC000000294C4C55);
  return 0;
}

uint64_t sub_1CF49DF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a4;
  v129 = a3;
  v128 = a2;
  v138 = a1;
  v5 = *(*v4 + 776);
  v141 = *(*v4 + 760);
  v142 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1CF4C0B54();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v137 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v136 = v116 - v8;
  v120 = sub_1CF9E75D8();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v127 = v116 - v9;
  v126 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v122 = v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v140 = v116 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v139 = v116 - v15;
  v16 = sub_1CF9E6068();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v133 = v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v116 - v23;
  v25 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v25);
  v132 = v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDEBBE40;
  (*(v17 + 56))(v24, 1, 1, v16);
  v143 = 0;
  v144 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4C300);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v142 = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  v125 = v143;
  v123 = v144;
  v124 = v24;
  sub_1CEFE74D8(v24, v21);
  v28 = *(v17 + 48);
  v29 = v28(v21, 1, v16);
  v141 = TupleTypeMetadata3;
  if (v29 == 1)
  {
    v30 = v27;
    v31 = v133;
    sub_1CF9E6048();
    if (v28(v21, 1, v16) != 1)
    {
      sub_1CEFCCC44(v21, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v31 = v133;
    (*(v17 + 32))(v133, v21, v16);
  }

  v32 = v132;
  (*(v17 + 16))(v132, v31, v16);
  *(v32 + *(v25 + 20)) = v27;
  v33 = v32 + *(v25 + 24);
  *v33 = "SQLDB: Recursive Delete Children";
  *(v33 + 8) = 32;
  *(v33 + 16) = 2;
  v34 = v27;
  v35 = v31;
  v36 = v34;
  v37 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1CF9FA450;
  *(v38 + 56) = MEMORY[0x1E69E6158];
  *(v38 + 64) = sub_1CEFD51C4();
  v39 = v123;
  *(v38 + 32) = v125;
  *(v38 + 40) = v39;
  v125 = v36;
  sub_1CF9E6028(v37, &dword_1CEFC7000, v36, "SQLDB: Recursive Delete Children", 32, 2, v32, "%s", 2);
  v38, v40, v41, v42, v43, v44, v45, v46;
  (*(v17 + 8))(v35, v16);
  sub_1CEFCCC44(v124, &unk_1EC4BED20, &unk_1CFA00700);
  v47 = *(v131 + 8);
  v48 = v129;
  (*(v47 + 88))(v129, v47);
  v49 = v141;
  sub_1CF9E7FA8();
  swift_allocObject();
  v124 = sub_1CF9E6D68();
  v51 = v50;
  v52 = v126;
  v53 = v126 + 16;
  v54 = *(v126 + 16);
  v55 = v138;
  v54(v50, v138, v142);
  v145 = v48;
  v146 = v47;
  v147 = v130;
  v148 = v55;
  v56 = v47;
  v59 = *(v47 + 24);
  v57 = v47 + 24;
  v58 = v59;
  v60 = v134;
  v121 = v56;
  v61 = v59(sub_1CF4C0BC4, &v143, v48);
  if (v60)
  {
    (*(v52 + 8))(v51, v142);
    v62 = v124;
    sub_1CF3588D0(v124, v49);
    v62, v105, v106, v107, v108, v109, v110, v111;
    goto LABEL_26;
  }

  v116[0] = v58;
  v116[1] = v57;
  v133 = v54;
  v134 = v53;
  v63 = *(v49 + 64);
  *(v51 + *(v49 + 48)) = v61;
  *(v51 + v63) = 0;
  v149 = sub_1CF045898(v124, v49);
  v64 = sub_1CF9E6E58();
  v123 = (v137 + 6);
  v124 = (v52 + 32);
  v137 = (v52 + 8);
  v118 = v131 + 32;
  v65 = v139;
  v66 = v142;
  v67 = v127;
  v138 = v64;
  while (1)
  {
LABEL_11:
    WitnessTable = swift_getWitnessTable();
    v69 = swift_getWitnessTable();
    MEMORY[0x1D3869410](v64, WitnessTable, v69);
    if ((*v123)(v67, 1, v49) == 1)
    {
      v149, v70, v71, v72, v73, v74, v75, v76;
      (*(v119 + 8))(v67, v120);
      sub_1CF9E7458();
      goto LABEL_27;
    }

    v77 = *&v67[*(v49 + 48)];
    LODWORD(v126) = v67[*(v49 + 64)];
    isa = v124->super.isa;
    (v124->super.isa)(v65, v67, v66);
    if ([v77 next])
    {
      break;
    }

LABEL_24:
    if (v126)
    {
      v145 = v129;
      v146 = v131;
      v147 = v130;
      v148 = v65;
      (*(v131 + 32))(sub_1CF4C0BA0, &v143);
      v67 = v127;
      v64 = v138;
      (*v137)(v65, v66);
    }

    else
    {
      (*v137)(v65, v66);

      v67 = v127;
      v64 = v138;
    }
  }

  v117 = isa;
  v79 = v133;
  while (1)
  {
    v82 = *(v49 + 48);
    v83 = v66;
    v84 = *(v49 + 64);
    v85 = v136;
    (v79)(v136, v65, v83);
    *&v85[v82] = v77;
    v85[v84] = 1;
    v86 = v77;
    sub_1CF9E6E18();
    v87 = *(*(AssociatedConformanceWitness + 8) + 16);
    v88 = v86;
    v87();
    v89 = [v88 longAtIndex_];
    if (v89 <= 1)
    {
      break;
    }

    v80 = v89 == 2 || v89 == 4;
    v49 = v141;
    v66 = v142;
    v65 = v139;
    if (!v80)
    {
      goto LABEL_28;
    }

LABEL_19:
    (*v137)(v140, v66);
    v81 = [v88 next];
    v79 = v133;
    if ((v81 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v49 = v141;
  v66 = v142;
  v65 = v139;
  if (!v89)
  {
    goto LABEL_19;
  }

  if (v89 == 1)
  {
    v97 = v122;
    v98 = v140;
    (v133)(v122, v140, v142);
    v145 = v129;
    v146 = v121;
    v147 = v130;
    v148 = v98;
    v99 = (v116[0])(sub_1CF4C0BC4, &v143);
    v100 = v97;
    v101 = *(v49 + 48);
    v102 = *(v49 + 64);
    v103 = v136;
    v117(v136, v100, v142);
    *&v103[v101] = v99;
    v103[v102] = 0;
    v66 = v142;
    v64 = v138;
    sub_1CF9E6E18();

    v104 = *v137;
    (*v137)(v98, v66);
    v104(v65, v66);
    v67 = v127;
    goto LABEL_11;
  }

LABEL_28:
  v149, v90, v91, v92, v93, v94, v95, v96;
  sub_1CF1DA5D8();
  swift_allocError();
  *v114 = 0;
  swift_willThrow();

  v115 = *v137;
  (*v137)(v140, v66);
  v115(v65, v66);
LABEL_26:
  sub_1CF9E7458();
LABEL_27:
  v112 = v132;
  sub_1CF9E6038();
  return sub_1CF4C0A48(v112, type metadata accessor for Signpost);
}

uint64_t sub_1CF49ED14(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a4;
  v82 = a5;
  v80 = a3;
  v86 = a2;
  v87 = a1;
  v6 = *(*v5 + 768);
  v7 = *(*v5 + 776);
  v8 = *(*v5 + 784);
  v88 = *(*v5 + 760);
  v89 = v6;
  v71 = v6;
  v90 = v7;
  v91 = v8;
  v70 = v8;
  v74 = type metadata accessor for PersistenceTrigger(0, &v88);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &AssociatedConformanceWitness - v9;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &AssociatedConformanceWitness - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &AssociatedConformanceWitness - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &AssociatedConformanceWitness - v17;
  v19 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v19);
  v84 = &AssociatedConformanceWitness - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v77 = qword_1EDEBBE40;
  (*(v11 + 56))(v18, 1, 1, v10);
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4C300);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = AssociatedTypeWitness;
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](0x737275636572202CLL, 0xEF203A796C657669);
  if (v86)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v86)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v22, v23);
  v23, v24, v25, v26, v27, v28, v29, v30;
  v75 = v89;
  v76 = v88;
  v78 = v18;
  sub_1CEFE74D8(v18, v15);
  v31 = *(v11 + 48);
  if (v31(v15, 1, v10) == 1)
  {
    v32 = v77;
    v33 = v77;
    v34 = v79;
    sub_1CF9E6048();
    v35 = v31(v15, 1, v10);
    v36 = v32;
    if (v35 != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v34 = v79;
    (*(v11 + 32))(v79, v15, v10);
    v36 = v77;
  }

  v37 = v84;
  (*(v11 + 16))(v84, v34, v10);
  *(v37 + *(v19 + 20)) = v36;
  v38 = v37 + *(v19 + 24);
  *v38 = "SQLDB: Delete Children";
  *(v38 + 8) = 22;
  *(v38 + 16) = 2;
  v39 = v36;
  v40 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1CF9FA450;
  *(v41 + 56) = MEMORY[0x1E69E6158];
  *(v41 + 64) = sub_1CEFD51C4();
  v42 = v75;
  *(v41 + 32) = v76;
  *(v41 + 40) = v42;
  v67 = v41;
  LOBYTE(v66) = 2;
  v79 = v39;
  sub_1CF9E6028(v40, &dword_1CEFC7000, v39, "SQLDB: Delete Children", 22, 2, v37, "%s", 2);
  v41, v43, v44, v45, v46, v47, v48, v49;
  (*(v11 + 8))(v34, v10);
  sub_1CEFCCC44(v78, &unk_1EC4BED20, &unk_1CFA00700);
  v51 = v81;
  v50 = v82;
  v52 = *(v82 + 8);
  v53 = v80;
  (*(v52 + 88))(v81, v52);
  v54 = (*(v52 + 8))(v51, v52);
  v55 = v83;
  if (v54 == 2)
  {
    v54 = [*(v83 + qword_1EDEAE5C0) removeAllObjects];
  }

  v94 = 0;
  v56 = v85;
  v57 = v87;
  if (v86)
  {
    MEMORY[0x1EEE9AC00](v54);
    *(&AssociatedConformanceWitness - 6) = v51;
    *(&AssociatedConformanceWitness - 5) = v50;
    v65 = v55;
    v66 = v53;
    v67 = &v94;
    sub_1CF492238(v57, v53, sub_1CF4C0714, (&AssociatedConformanceWitness - 8), v51, v52);
    if (v56)
    {
LABEL_21:
      sub_1CF9E7458();
      sub_1CF9E6038();
      return sub_1CF4C0A48(v37, type metadata accessor for Signpost);
    }

    if (v94 < 1)
    {
      goto LABEL_19;
    }
  }

  v90 = v51;
  v91 = v50;
  v92 = v55;
  v93 = v57;
  (*(v50 + 32))(sub_1CF4C0BA0, &v88, v51, v50);
  if (v56)
  {
    goto LABEL_21;
  }

LABEL_19:
  result = swift_weakLoadStrong();
  if (result)
  {
    v59 = result;
    v60 = v69;
    v61 = v72;
    (*(*(v69 - 8) + 16))(v72, v57, v69);
    v62 = swift_getAssociatedTypeWitness();
    v63 = swift_getAssociatedConformanceWitness();
    v88 = v60;
    v89 = v62;
    v90 = AssociatedConformanceWitness;
    v91 = v63;
    type metadata accessor for ReconciliationID(0, &v88);
    swift_storeEnumTagMultiPayload();
    v64 = v74;
    swift_storeEnumTagMultiPayload();
    (*(*v59 + 312))(v61);

    (*(v73 + 8))(v61, v64);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF49F5C8(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (*a2 != 1 || (result = sub_1CF49DF64(result, a4, a6, a7), !v7))
  {
    if (__OFADD__(*a5, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a5;
    }
  }

  return result;
}

uint64_t sub_1CF49F620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a4;
  v96 = a3;
  v100 = a2;
  v117 = a1;
  v5 = *(*v4 + 760);
  v98 = *(*v4 + 776);
  v99 = v5;
  v101 = v5;
  v102 = v98;
  v6 = type metadata accessor for PersistenceTrigger(0, &v101);
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v84 - v7;
  v9 = type metadata accessor for SnapshotItem(255, v99, v98, v8);
  v10 = sub_1CF9E75D8();
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v84 - v11;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v84 - v19;
  v21 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v21);
  *&v99 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDEBBE40;
  (*(v13 + 56))(v20, 1, 1, v12);
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20747265736E69, 0xE700000000000000);
  swift_getWitnessTable();
  *&v98 = v9;
  sub_1CF9E7FE8();
  v90 = *(&v101 + 1);
  v91 = v101;
  v93 = v20;
  sub_1CEFE74D8(v20, v17);
  v24 = *(v13 + 48);
  if (v24(v17, 1, v12) == 1)
  {
    v25 = v23;
    v26 = v92;
    sub_1CF9E6048();
    v27 = v26;
    if (v24(v17, 1, v12) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v27 = v92;
    (*(v13 + 32))(v92, v17, v12);
  }

  v28 = v99;
  (*(v13 + 16))(v99, v27, v12);
  *(v28 + *(v21 + 20)) = v23;
  v29 = v28 + *(v21 + 24);
  *v29 = "SQLDB: Snapshot insert";
  *(v29 + 8) = 22;
  *(v29 + 16) = 2;
  v30 = v28;
  v31 = v23;
  v32 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1CF9FA450;
  *(v33 + 56) = MEMORY[0x1E69E6158];
  *(v33 + 64) = sub_1CEFD51C4();
  v34 = v90;
  *(v33 + 32) = v91;
  *(v33 + 40) = v34;
  v92 = v31;
  v35 = v31;
  v36 = v30;
  sub_1CF9E6028(v32, &dword_1CEFC7000, v35, "SQLDB: Snapshot insert", 22, 2, v30, "%s", 2);
  v33, v37, v38, v39, v40, v41, v42, v43;
  (*(v13 + 8))(v27, v12);
  sub_1CEFCCC44(v93, &unk_1EC4BED20, &unk_1CFA00700);
  v45 = v95;
  v44 = v96;
  v46 = *(v95 + 8);
  enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = (*(v46 + 88))(v96, v46);
  v48 = v117;
  if ((*(v97 + 32) & 1) != 0 && (v49 = v117 + *(v98 + 52), v50 = *(v49 + 208), v113 = *(v49 + 192), v114 = v50, v115 = *(v49 + 224), v116 = *(v49 + 240), v51 = *(v49 + 144), v109 = *(v49 + 128), v110 = v51, v52 = *(v49 + 176), v111 = *(v49 + 160), v112 = v52, v53 = *(v49 + 80), v105 = *(v49 + 64), v106 = v53, v54 = *(v49 + 112), v107 = *(v49 + 96), v108 = v54, v55 = *(v49 + 16), v101 = *v49, v102 = v55, v56 = *(v49 + 48), v103 = *(v49 + 32), v104 = v56, enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v101), enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 != 1))
  {
    v57 = MEMORY[0x1EEE9AC00](enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0);
    v58 = *(v45 + 32);
    v59 = sub_1CF4C0708;
  }

  else
  {
    v57 = MEMORY[0x1EEE9AC00](enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0);
    v58 = *(v45 + 32);
    v59 = sub_1CF4C06FC;
  }

  v60 = v94;
  v58(v59, v57);
  if (v60)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CF4C0A48(v36, type metadata accessor for Signpost);
  }

  else
  {
    v95 = 0;
    v62 = v98;
    v63 = *(v98 - 8);
    v64 = *(v63 + 16);
    v65 = v87;
    v93 = (v63 + 16);
    v94 = v64;
    v64(v87, v48, v98);
    v91 = *(v63 + 56);
    v91(v65, 0, 1, v62);
    sub_1CF488190(v48, v65, v100, v44, v46);
    (*(v88 + 8))(v65, v89);
    v66 = v48 + *(v62 + 52);
    v67 = *(v66 + 208);
    v113 = *(v66 + 192);
    v114 = v67;
    v115 = *(v66 + 224);
    v116 = *(v66 + 240);
    v68 = *(v66 + 144);
    v109 = *(v66 + 128);
    v110 = v68;
    v69 = *(v66 + 176);
    v111 = *(v66 + 160);
    v112 = v69;
    v70 = *(v66 + 80);
    v105 = *(v66 + 64);
    v106 = v70;
    v71 = *(v66 + 112);
    v107 = *(v66 + 96);
    v108 = v71;
    v72 = *(v66 + 16);
    v101 = *v66;
    v102 = v72;
    v73 = *(v66 + 48);
    v103 = *(v66 + 32);
    v104 = v73;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v101) == 1)
    {
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v74 = qword_1EDEABDE8;
    }

    else
    {
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      if ((~qword_1EDEABDE8 & 0x1600021AF7C0000) != 0)
      {
        v74 = qword_1EDEABDE8 | 0x1600021AF7C0000;
      }

      else
      {
        v74 = qword_1EDEABDE8;
      }
    }

    result = swift_weakLoadStrong();
    if (result)
    {
      v75 = result;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v77 = *(TupleTypeMetadata3 + 48);
      v78 = *(TupleTypeMetadata3 + 64);
      v79 = v84;
      v80 = v98;
      v81 = v91;
      v91(v84, 1, 1, v98);
      v94(&v79[v77], v117, v80);
      v81(&v79[v77], 0, 1, v80);
      *&v79[v78] = v74;
      v82 = v86;
      swift_storeEnumTagMultiPayload();
      (*(*v75 + 312))(v79);

      (*(v85 + 8))(v79, v82);
      sub_1CF9E7458();
      v83 = v99;
      sub_1CF9E6038();
      return sub_1CF4C0A48(v83, type metadata accessor for Signpost);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1CF4A0048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SnapshotItem(255, *(*a2 + 760), *(*a2 + 776), a4);
  v7 = sub_1CF9E75D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v31 - v9;
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v31[1], v11, v12, v13, v14, v15, v16, v17;
  strcpy(v31, "INSERT INTO ");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](0x5620202020200A29, 0xEF28205345554C41);
  v18 = *(v6 - 8);
  (*(v18 + 16))(v10, a3, v6);
  (*(v18 + 56))(v10, 0, 1, v6);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1CF073320(v10, v6, WitnessTable);
  v22 = v21;
  (*(v8 + 8))(v10, v7);
  MEMORY[0x1D3868CC0](v20, v22);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v31[0];
}

uint64_t sub_1CF4A02B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SnapshotItem(255, *(*a2 + 760), *(*a2 + 776), a4);
  v7 = sub_1CF9E75D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v61 - v9;
  *&v63[0] = 0;
  *(&v63[0] + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  v62 = v63[0];
  MEMORY[0x1D3868CC0](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD88), *(a2 + qword_1EDEBBD88 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA4C2C0);
  v11 = *(v6 - 8);
  (*(v11 + 16))(v10, a3, v6);
  (*(v11 + 56))(v10, 0, 1, v6);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1CF073320(v10, v6, WitnessTable);
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  MEMORY[0x1D3868CC0](v13, v15);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v23 = sub_1CEFF12E8();
  v24 = a3 + *(v6 + 52);
  v25 = *(v24 + 192);
  v26 = *(v24 + 224);
  v63[13] = *(v24 + 208);
  v63[14] = v26;
  v27 = *(v24 + 128);
  v28 = *(v24 + 160);
  v29 = *(v24 + 176);
  v63[9] = *(v24 + 144);
  v63[10] = v28;
  v63[11] = v29;
  v63[12] = v25;
  v30 = *(v24 + 80);
  v63[4] = *(v24 + 64);
  v63[5] = v30;
  v31 = *(v24 + 112);
  v63[6] = *(v24 + 96);
  v64 = *(v24 + 240);
  v63[7] = v31;
  v63[8] = v27;
  v32 = *(v24 + 16);
  v63[0] = *v24;
  v63[1] = v32;
  v33 = *(v24 + 48);
  v63[2] = *(v24 + 32);
  v63[3] = v33;
  v34 = sub_1CF07501C(v23, v63);
  v36 = v35;
  v23, v35, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](v34, v36);
  v36, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v61[1] = 0;
  v50 = sub_1CF9E7F98();
  v52 = v51;
  MEMORY[0x1D3868CC0](v50);
  v52, v53, v54, v55, v56, v57, v58, v59;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v62;
}

uint64_t sub_1CF4A0654(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v15[2] = a3;
  v15[3] = a1;
  sub_1CF487650(MEMORY[0x1E69E7CC0], sub_1CF4C0B34, v15, v3 | 0x10);
  v5 = v4;
  v15[6] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v6 = sub_1CF9E67D8();
  v5, v7, v8, v9, v10, v11, v12, v13;
  return v6;
}

void sub_1CF4A0738(_TtC18FileProviderDaemon8FSTester **a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v1134 = a4;
  v1136 = a1;
  v1137 = a3;
  v7 = *a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v1131 = &v1129 - v9;
  v10 = *(v7 + 776);
  v11 = *(v7 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v1129 = *(v13 - 8);
  v1130 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v1129 - v14;
  v1132 = v11;
  v1133 = v10;
  v16 = swift_getAssociatedTypeWitness();
  v17 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v1129 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v1129 - v24;
  v26 = *a2;
  if (v26 > 0x7FFFFFF)
  {
    if (v26 > 0xFFFFFFFFFFLL)
    {
      if (v26 <= 0xFFFFFFFFFFFFLL)
      {
        if (v26 <= 0xFFFFFFFFFFFLL)
        {
          switch(v26)
          {
            case 0x10000000000:
              *&v1147 = 0;
              *(&v1147 + 1) = 0xE000000000000000;
              sub_1CF9E7948();
              *(&v1147 + 1), v463, v464, v465, v466, v467, v468, v469;
              v1142 = 0xD000000000000010;
              v1143 = 0x80000001CFA483A0;
              v471 = type metadata accessor for SnapshotItem(0, v1132, v1133, v470);
              WitnessTable = swift_getWitnessTable();
              sub_1CF06D940(v471, WitnessTable, &v1145);
              v473 = qword_1CFA062F0[v1145];
              *(&v1148 + 1) = MEMORY[0x1E69E6530];
              *&v1147 = v473;
              v474 = sub_1CEFF8EA0(&v1147);
              v476 = v475;
              sub_1CEFCCC44(&v1147, &unk_1EC4BEC50, &qword_1CF9FB4B0);
              if (!v476)
              {
                goto LABEL_242;
              }

              v372 = v474;
              v373 = v476;
              goto LABEL_149;
            case 0x20000000000:
              v196 = v1132;
              v195 = v1133;
              v197 = swift_getAssociatedTypeWitness();
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              type metadata accessor for ItemStateVersion(0, v197, AssociatedConformanceWitness, v199);
              if (swift_dynamicCastMetatype())
              {
                return;
              }

              *&v1147 = 0;
              *(&v1147 + 1) = 0xE000000000000000;
              sub_1CF9E7948();
              *(&v1147 + 1), v200, v201, v202, v203, v204, v205, v206;
              v1142 = 0xD000000000000015;
              v1143 = 0x80000001CFA4E290;
              v208 = *(type metadata accessor for SnapshotItem(0, v196, v195, v207) + 40);
              v209 = swift_getAssociatedConformanceWitness();
              v210 = swift_getAssociatedConformanceWitness();
              *&v1147 = v16;
              *(&v1147 + 1) = AssociatedTypeWitness;
              *&v1148 = v209;
              *(&v1148 + 1) = v210;
              v211 = type metadata accessor for FileItemVersion(0, &v1147);
              v212 = *(AssociatedTypeWitness - 8);
              (*(v212 + 16))(v15, v1134 + *(v211 + 56) + v208, AssociatedTypeWitness);
              (*(v212 + 56))(v15, 0, 1, AssociatedTypeWitness);
              v213 = sub_1CF4C0DE0(v15, AssociatedTypeWitness, *(v210 + 24));
              v215 = v214;
              (*(v1129 + 8))(v15, v1130);
              MEMORY[0x1D3868CC0](v213, v215);
              v223 = v215;
              goto LABEL_167;
            case 0x80000000000:
              return;
          }

          goto LABEL_241;
        }

        if (v26 <= 0x3FFFFFFFFFFFLL)
        {
          if (v26 != 0x100000000000)
          {
            if (v26 == 0x200000000000)
            {
              *&v1147 = 0;
              *(&v1147 + 1) = 0xE000000000000000;
              sub_1CF9E7948();
              *(&v1147 + 1), v587, v588, v589, v590, v591, v592, v593;
              *&v1147 = 0xD000000000000016;
              *(&v1147 + 1) = 0x80000001CFA4E2B0;
              v595 = type metadata accessor for SnapshotItem(0, v1132, v1133, v594);
              v89 = [v1137 bindBooleanParameter_];
              goto LABEL_201;
            }

            goto LABEL_241;
          }

          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v80, v81, v82, v83, v84, v85, v86;
          *&v1147 = 0xD000000000000017;
          *(&v1147 + 1) = 0x80000001CFA4E040;
          v88 = type metadata accessor for SnapshotItem(0, v1132, v1133, v87);
          v89 = [v1137 bindBooleanParameter_];
          goto LABEL_201;
        }

        if (v26 == 0x400000000000)
        {
          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v374, v375, v376, v377, v378, v379, v380;
          *&v1147 = 0xD000000000000013;
          *(&v1147 + 1) = 0x80000001CFA4DC60;
          v382 = *(type metadata accessor for SnapshotItem(0, v1132, v1133, v381) + 48);
          v383 = v1134 + *(type metadata accessor for ItemMetadata(0) + 140) + v382;
          v384 = sub_1CF074EDC(*v383, *(v383 + 8));
        }

        else
        {
          if (v26 != 0x800000000000)
          {
            goto LABEL_241;
          }

          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v651, v652, v653, v654, v655, v656, v657;
          *&v1147 = 0xD000000000000016;
          *(&v1147 + 1) = 0x80000001CFA4DC40;
          v659 = *(type metadata accessor for SnapshotItem(0, v1132, v1133, v658) + 48);
          v660 = (v1134 + *(type metadata accessor for ItemMetadata(0) + 148) + v659);
          v661 = *v660;
          LOBYTE(v1142) = *(v660 + 4);
          v384 = sub_1CF074C58(v661 | (v1142 << 32));
        }

        goto LABEL_140;
      }

      if (v26 > 0x7FFFFFFFFFFFFLL)
      {
        if (v26 <= 0x3FFFFFFFFFFFFFFLL)
        {
          if (v26 != 0x8000000000000)
          {
            if (v26 != 0x10000000000000)
            {
              goto LABEL_241;
            }

            *&v1147 = 0;
            *(&v1147 + 1) = 0xE000000000000000;
            sub_1CF9E7948();
            *(&v1147 + 1), v613, v614, v615, v616, v617, v618, v619;
            *&v1147 = 0xD00000000000001CLL;
            *(&v1147 + 1) = 0x80000001CFA4DBA0;
            v621 = type metadata accessor for SnapshotItem(0, v1132, v1133, v620);
            v622 = [v1137 bindBooleanParameter_];
            v623 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v625 = v624;

            MEMORY[0x1D3868CC0](v623, v625);
            v633 = v625;
            goto LABEL_141;
          }

          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v141, v142, v143, v144, v145, v146, v147;
          v1142 = 0xD000000000000025;
          v1143 = 0x80000001CFA4DBC0;
          v149 = type metadata accessor for SnapshotItem(0, v1132, v1133, v148);
          v150 = v1134 + *(v149 + 52);
          v151 = *(v150 + 208);
          v1159 = *(v150 + 192);
          v1160 = v151;
          v1161 = *(v150 + 224);
          v1162 = *(v150 + 240);
          v152 = *(v150 + 144);
          v1155 = *(v150 + 128);
          v1156 = v152;
          v153 = *(v150 + 176);
          v1157 = *(v150 + 160);
          v1158 = v153;
          v154 = *(v150 + 80);
          v1151 = *(v150 + 64);
          v1152 = v154;
          v155 = *(v150 + 112);
          v1153 = *(v150 + 96);
          v1154 = v155;
          v156 = *(v150 + 16);
          v1147 = *v150;
          v1148 = v156;
          v157 = *(v150 + 48);
          v1149 = *(v150 + 32);
          v1150 = v157;
          v158 = 0;
          v123 = 0;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147) == 1)
          {
            goto LABEL_186;
          }

          v158 = *(&v1161 + 1);
          v123 = v1162;
          goto LABEL_185;
        }

        if (v26 != 0x400000000000000)
        {
          if (v26 == 0x800000000000000)
          {
            *&v1147 = 0;
            *(&v1147 + 1) = 0xE000000000000000;
            sub_1CF9E7948();
            *(&v1147 + 1), v683, v684, v685, v686, v687, v688, v689;
            *&v1147 = 0xD00000000000001FLL;
            *(&v1147 + 1) = 0x80000001CFA4E060;
            v691 = type metadata accessor for SnapshotItem(0, v1132, v1133, v690);
            v89 = [v1137 bindBooleanParameter_];
            goto LABEL_201;
          }

          goto LABEL_241;
        }

        v1145 = 0;
        v1146 = 0xE000000000000000;
        v405 = type metadata accessor for SnapshotItem(0, v1132, v1133, v21);
        v406 = v1134 + *(v405 + 52);
        v407 = *(v406 + 208);
        v1159 = *(v406 + 192);
        v1160 = v407;
        v1161 = *(v406 + 224);
        v1162 = *(v406 + 240);
        v408 = *(v406 + 144);
        v1155 = *(v406 + 128);
        v1156 = v408;
        v409 = *(v406 + 176);
        v1157 = *(v406 + 160);
        v1158 = v409;
        v410 = *(v406 + 80);
        v1151 = *(v406 + 64);
        v1152 = v410;
        v411 = *(v406 + 112);
        v1153 = *(v406 + 96);
        v1154 = v411;
        v412 = *(v406 + 16);
        v1147 = *v406;
        v1148 = v412;
        v413 = *(v406 + 48);
        v1149 = *(v406 + 32);
        v1150 = v413;
        enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147);
        v415 = *(&v1160 + 1);
        if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
        {
          v415 = 0;
        }

        v1144 = MEMORY[0x1E69E6530];
        v1142 = v415;
        v416 = sub_1CEFF8EA0(&v1142);
        v418 = v417;
        sub_1CEFCCC44(&v1142, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        if (!v418)
        {
          while (1)
          {
LABEL_242:
            sub_1CF9E7B68();
            __break(1u);
          }
        }

        MEMORY[0x1D3868CC0](v416, v418);
        v418, v419, v420, v421, v422, v423, v424, v425;
        v265 = v1145;
        v426 = v1146;
        v1142 = 0xD000000000000026;
        v1143 = 0x80000001CFA4DBF0;
        goto LABEL_116;
      }

      if (v26 == 0x1000000000000)
      {
        *&v1147 = 0;
        *(&v1147 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        *(&v1147 + 1), v494, v495, v496, v497, v498, v499, v500;
        *&v1147 = 0xD000000000000025;
        *(&v1147 + 1) = 0x80000001CFA4DE20;
        v502 = *(type metadata accessor for SnapshotItem(0, v1132, v1133, v501) + 48);
        v503 = (v1134 + *(type metadata accessor for ItemMetadata(0) + 152) + v502);
        v384 = sub_1CF0757A0(*v503, v503[1]);
LABEL_140:
        v662 = v385;
        MEMORY[0x1D3868CC0](v384);
        v633 = v662;
LABEL_141:
        v633, v626, v627, v628, v629, v630, v631, v632;
        v664 = *(&v1147 + 1);
        v663 = v1147;
LABEL_224:
        v1019 = v1136;
        sub_1CF680848();
        v1020 = *(*v1019)->tree;
        sub_1CF680894(v1020, v1021, v1022, v1023, v1024, v1025, v1026, v1027);
        v1028 = *v1019;
        *v1028->tree = &v1020->super.isa + 1;
        v1029 = v1028 + 16 * v1020;
        *(v1029 + 32) = v663;
        *(v1029 + 40) = v664;
        *v1019 = v1028;
        return;
      }

      if (v26 != 0x2000000000000)
      {
        if (v26 != 0x4000000000000)
        {
          goto LABEL_241;
        }

        *&v1147 = 0;
        *(&v1147 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        *(&v1147 + 1), v561, v562, v563, v564, v565, v566, v567;
        v1142 = 0xD000000000000022;
        v1143 = 0x80000001CFA4DC80;
        v569 = type metadata accessor for SnapshotItem(0, v1132, v1133, v568);
        v570 = v1134 + *(v569 + 52);
        v571 = *(v570 + 208);
        v1159 = *(v570 + 192);
        v1160 = v571;
        v1161 = *(v570 + 224);
        v1162 = *(v570 + 240);
        v572 = *(v570 + 144);
        v1155 = *(v570 + 128);
        v1156 = v572;
        v573 = *(v570 + 176);
        v1157 = *(v570 + 160);
        v1158 = v573;
        v574 = *(v570 + 80);
        v1151 = *(v570 + 64);
        v1152 = v574;
        v575 = *(v570 + 112);
        v1153 = *(v570 + 96);
        v1154 = v575;
        v576 = *(v570 + 16);
        v1147 = *v570;
        v1148 = v576;
        v577 = *(v570 + 48);
        v1149 = *(v570 + 32);
        v1150 = v577;
        v123 = 0;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147) != 1)
        {
          v123 = v1161;
        }

        v124 = sub_1CF075F44(v123);
        goto LABEL_187;
      }

      *&v1147 = 0;
      *(&v1147 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v1147 + 1), v245, v246, v247, v248, v249, v250, v251;
      v1142 = 0xD00000000000001CLL;
      v1143 = 0x80000001CFA4DC20;
      v253 = type metadata accessor for SnapshotItem(0, v1132, v1133, v252);
      v254 = v1134 + *(v253 + 52);
      v255 = *(v254 + 208);
      v1159 = *(v254 + 192);
      v1160 = v255;
      v1161 = *(v254 + 224);
      v1162 = *(v254 + 240);
      v256 = *(v254 + 144);
      v1155 = *(v254 + 128);
      v1156 = v256;
      v257 = *(v254 + 176);
      v1157 = *(v254 + 160);
      v1158 = v257;
      v258 = *(v254 + 80);
      v1151 = *(v254 + 64);
      v1152 = v258;
      v259 = *(v254 + 112);
      v1153 = *(v254 + 96);
      v1154 = v259;
      v260 = *(v254 + 16);
      v1147 = *v254;
      v1148 = v260;
      v261 = *(v254 + 48);
      v1149 = *(v254 + 32);
      v1150 = v261;
      v262 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147);
      v263 = v262 == 1;
      if (v262 == 1)
      {
        v264 = 0;
      }

      else
      {
        v264 = v1160;
      }

      v265 = sub_1CF4BF914(v264, v263);
LABEL_221:
      v426 = v266;
      goto LABEL_222;
    }

    if (v26 > 0x1FFFFFFFFLL)
    {
      if (v26 > 0xFFFFFFFFFLL)
      {
        if (v26 > 0x3FFFFFFFFFLL)
        {
          if (v26 != 0x4000000000)
          {
            if (v26 != 0x8000000000)
            {
              goto LABEL_241;
            }

            *&v1147 = 0;
            *(&v1147 + 1) = 0xE000000000000000;
            sub_1CF9E7948();
            *(&v1147 + 1), v918, v919, v920, v921, v922, v923, v924;
            v1142 = 0xD000000000000017;
            v1143 = 0x80000001CFA4DCB0;
            v926 = type metadata accessor for SnapshotItem(0, v1132, v1133, v925);
            v927 = v1134 + *(v926 + 52);
            v928 = *(v927 + 208);
            v1159 = *(v927 + 192);
            v1160 = v928;
            v1161 = *(v927 + 224);
            v1162 = *(v927 + 240);
            v929 = *(v927 + 144);
            v1155 = *(v927 + 128);
            v1156 = v929;
            v930 = *(v927 + 176);
            v1157 = *(v927 + 160);
            v1158 = v930;
            v931 = *(v927 + 80);
            v1151 = *(v927 + 64);
            v1152 = v931;
            v932 = *(v927 + 112);
            v1153 = *(v927 + 96);
            v1154 = v932;
            v933 = *(v927 + 16);
            v1147 = *v927;
            v1148 = v933;
            v934 = *(v927 + 48);
            v1149 = *(v927 + 32);
            v1150 = v934;
            v935 = 0;
            v936 = 0;
            if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147) != 1)
            {
              v936 = *(&v1159 + 1);
              v935 = v1159;
              sub_1CF075D00(v1159, *(&v1159 + 1));
            }

            v937 = sub_1CF075B2C(v935, v936);
            v939 = v938;
            sub_1CF24CCFC(v935, v936, v940, v941, v942, v943, v944, v945);
            MEMORY[0x1D3868CC0](v937, v939);
            v876 = v939;
            goto LABEL_223;
          }

          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v437, v438, v439, v440, v441, v442, v443;
          v1142 = 0xD00000000000001DLL;
          v1143 = 0x80000001CFA4DCD0;
          v445 = type metadata accessor for SnapshotItem(0, v1132, v1133, v444);
          v446 = v1134 + *(v445 + 52);
          v447 = *(v446 + 208);
          v1159 = *(v446 + 192);
          v1160 = v447;
          v1161 = *(v446 + 224);
          v1162 = *(v446 + 240);
          v448 = *(v446 + 144);
          v1155 = *(v446 + 128);
          v1156 = v448;
          v449 = *(v446 + 176);
          v1157 = *(v446 + 160);
          v1158 = v449;
          v450 = *(v446 + 80);
          v1151 = *(v446 + 64);
          v1152 = v450;
          v451 = *(v446 + 112);
          v1153 = *(v446 + 96);
          v1154 = v451;
          v452 = *(v446 + 16);
          v1147 = *v446;
          v1148 = v452;
          v453 = *(v446 + 48);
          v1149 = *(v446 + 32);
          v1150 = v453;
          v123 = 0;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147) != 1)
          {
            v123 = *(&v1158 + 1);
          }

          v124 = sub_1CF075944(v123);
          goto LABEL_187;
        }

        if (v26 == 0x1000000000)
        {
          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v99, v100, v101, v102, v103, v104, v105;
          v1142 = 0xD00000000000001ALL;
          v1143 = 0x80000001CFA4DD20;
          v107 = type metadata accessor for SnapshotItem(0, v1132, v1133, v106);
          v108 = v1134 + *(v107 + 52);
          v109 = *(v108 + 208);
          v1159 = *(v108 + 192);
          v1160 = v109;
          v1161 = *(v108 + 224);
          v1162 = *(v108 + 240);
          v110 = *(v108 + 144);
          v1155 = *(v108 + 128);
          v1156 = v110;
          v111 = *(v108 + 176);
          v1157 = *(v108 + 160);
          v1158 = v111;
          v112 = *(v108 + 80);
          v1151 = *(v108 + 64);
          v1152 = v112;
          v113 = *(v108 + 112);
          v1153 = *(v108 + 96);
          v1154 = v113;
          v114 = *(v108 + 16);
          v1147 = *v108;
          v1148 = v114;
          v115 = *(v108 + 48);
          v1149 = *(v108 + 32);
          v1150 = v115;
          v122 = 0;
          v123 = 0;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147) != 1)
          {
            v123 = *(&v1157 + 1);
            v122 = v1157;
          }

          v124 = sub_1CF074DF4(v122, v123, v116, v117, v118, v119, v120, v121);
          goto LABEL_187;
        }

        if (v26 != 0x2000000000)
        {
          goto LABEL_241;
        }

        *&v1147 = 0;
        *(&v1147 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        *(&v1147 + 1), v892, v893, v894, v895, v896, v897, v898;
        v1142 = 0xD000000000000026;
        v1143 = 0x80000001CFA4DCF0;
        v900 = type metadata accessor for SnapshotItem(0, v1132, v1133, v899);
        v901 = v1134 + *(v900 + 52);
        v902 = *(v901 + 208);
        v1159 = *(v901 + 192);
        v1160 = v902;
        v1161 = *(v901 + 224);
        v1162 = *(v901 + 240);
        v903 = *(v901 + 144);
        v1155 = *(v901 + 128);
        v1156 = v903;
        v904 = *(v901 + 176);
        v1157 = *(v901 + 160);
        v1158 = v904;
        v905 = *(v901 + 80);
        v1151 = *(v901 + 64);
        v1152 = v905;
        v906 = *(v901 + 112);
        v1153 = *(v901 + 96);
        v1154 = v906;
        v907 = *(v901 + 16);
        v1147 = *v901;
        v1148 = v907;
        v908 = *(v901 + 48);
        v1149 = *(v901 + 32);
        v1150 = v908;
        v350 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147);
        v351 = v1158;
        goto LABEL_217;
      }

      if (v26 == 0x200000000)
      {
        v1142 = 0;
        v1143 = 0xE000000000000000;
        v515 = type metadata accessor for SnapshotItem(0, v1132, v1133, v21);
        v516 = v1134 + *(v515 + 52);
        v517 = *(v516 + 208);
        v1159 = *(v516 + 192);
        v1160 = v517;
        v1161 = *(v516 + 224);
        v1162 = *(v516 + 240);
        v518 = *(v516 + 144);
        v1155 = *(v516 + 128);
        v1156 = v518;
        v519 = *(v516 + 176);
        v1157 = *(v516 + 160);
        v1158 = v519;
        v520 = *(v516 + 80);
        v1151 = *(v516 + 64);
        v1152 = v520;
        v521 = *(v516 + 112);
        v1153 = *(v516 + 96);
        v1154 = v521;
        v522 = *(v516 + 16);
        v1147 = *v516;
        v1148 = v522;
        v523 = *(v516 + 48);
        v1149 = *(v516 + 32);
        v1150 = v523;
        v524 = 0;
        v525 = 0;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147) != 1)
        {
          v525 = *(&v1154 + 1);
          v524 = v1154;
        }

        v526 = sub_1CF0757A0(v524, v525);
        v528 = v527;
        v525, v527, v529, v530, v531, v532, v533, v534;
        MEMORY[0x1D3868CC0](v526, v528);
        v528, v535, v536, v537, v538, v539, v540, v541;
        v265 = v1142;
        v426 = v1143;
        v1142 = 0xD00000000000002DLL;
        v1143 = 0x80000001CFA4DDA0;
LABEL_116:
        v266 = v426;
LABEL_222:
        MEMORY[0x1D3868CC0](v265, v266);
        v876 = v426;
        goto LABEL_223;
      }

      if (v26 != 0x400000000)
      {
        if (v26 != 0x800000000)
        {
          goto LABEL_241;
        }

        *&v1147 = 0;
        *(&v1147 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        *(&v1147 + 1), v850, v851, v852, v853, v854, v855, v856;
        v1142 = 0xD000000000000024;
        v1143 = 0x80000001CFA4DD40;
        v858 = type metadata accessor for SnapshotItem(0, v1132, v1133, v857);
        v859 = v1134 + *(v858 + 52);
        v860 = *(v859 + 208);
        v1159 = *(v859 + 192);
        v1160 = v860;
        v1161 = *(v859 + 224);
        v1162 = *(v859 + 240);
        v861 = *(v859 + 144);
        v1155 = *(v859 + 128);
        v1156 = v861;
        v862 = *(v859 + 176);
        v1157 = *(v859 + 160);
        v1158 = v862;
        v863 = *(v859 + 80);
        v1151 = *(v859 + 64);
        v1152 = v863;
        v864 = *(v859 + 112);
        v1153 = *(v859 + 96);
        v1154 = v864;
        v865 = *(v859 + 16);
        v1147 = *v859;
        v1148 = v865;
        v866 = *(v859 + 48);
        v1149 = *(v859 + 32);
        v1150 = v866;
        v158 = 0;
        v123 = 0;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147) == 1)
        {
          goto LABEL_186;
        }

        v123 = *(&v1156 + 1);
        v158 = v1156;
        goto LABEL_185;
      }

      *&v1147 = 0;
      *(&v1147 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v1147 + 1), v277, v278, v279, v280, v281, v282, v283;
      v1142 = 0xD000000000000028;
      v1143 = 0x80000001CFA4DD70;
      v285 = type metadata accessor for SnapshotItem(0, v1132, v1133, v284);
      v286 = v1134 + *(v285 + 52);
      v287 = *(v286 + 208);
      v1159 = *(v286 + 192);
      v1160 = v287;
      v1161 = *(v286 + 224);
      v1162 = *(v286 + 240);
      v288 = *(v286 + 144);
      v1155 = *(v286 + 128);
      v1156 = v288;
      v289 = *(v286 + 176);
      v1157 = *(v286 + 160);
      v1158 = v289;
      v290 = *(v286 + 80);
      v1151 = *(v286 + 64);
      v1152 = v290;
      v291 = *(v286 + 112);
      v1153 = *(v286 + 96);
      v1154 = v291;
      v292 = *(v286 + 16);
      v1147 = *v286;
      v1148 = v292;
      v293 = *(v286 + 48);
      v1149 = *(v286 + 32);
      v1150 = v293;
      v158 = 0;
      v123 = 0;
      if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147) != 1)
      {
        v123 = *(&v1155 + 1);
        v158 = v1155;
LABEL_185:

        goto LABEL_186;
      }

      goto LABEL_186;
    }

    if (v26 > 0x3FFFFFFF)
    {
      switch(v26)
      {
        case 0x40000000:
          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v822, v823, v824, v825, v826, v827, v828;
          v1142 = 0xD000000000000021;
          v1143 = 0x80000001CFA4DE50;
          v830 = type metadata accessor for SnapshotItem(0, v1132, v1133, v829);
          v831 = v1134 + *(v830 + 52);
          v832 = *(v831 + 208);
          v1159 = *(v831 + 192);
          v1160 = v832;
          v1161 = *(v831 + 224);
          v1162 = *(v831 + 240);
          v833 = *(v831 + 144);
          v1155 = *(v831 + 128);
          v1156 = v833;
          v834 = *(v831 + 176);
          v1157 = *(v831 + 160);
          v1158 = v834;
          v835 = *(v831 + 80);
          v1151 = *(v831 + 64);
          v1152 = v835;
          v836 = *(v831 + 112);
          v1153 = *(v831 + 96);
          v1154 = v836;
          v837 = *(v831 + 16);
          v1147 = *v831;
          v1148 = v837;
          v838 = *(v831 + 48);
          v1149 = *(v831 + 32);
          v1150 = v838;
          v158 = 0;
          v123 = 0;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147) != 1)
          {
            v123 = *(&v1152 + 1);
            v158 = v1152;
            goto LABEL_185;
          }

LABEL_186:
          v124 = sub_1CF0757A0(v158, v123);
LABEL_187:
          v867 = v124;
          v868 = v125;
          v123, v125, v126, v127, v128, v129, v130, v131;
          MEMORY[0x1D3868CC0](v867, v868);
          v876 = v868;
LABEL_223:
          v876, v869, v870, v871, v872, v873, v874, v875;
          v663 = v1142;
          v664 = v1143;
          goto LABEL_224;
        case 0x80000000:
          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v333, v334, v335, v336, v337, v338, v339;
          v1142 = 0xD00000000000001ALL;
          v1143 = 0x80000001CFA4DE00;
          v341 = type metadata accessor for SnapshotItem(0, v1132, v1133, v340);
          v342 = v1134 + *(v341 + 52);
          v343 = *(v342 + 208);
          v1159 = *(v342 + 192);
          v1160 = v343;
          v1161 = *(v342 + 224);
          v1162 = *(v342 + 240);
          v344 = *(v342 + 144);
          v1155 = *(v342 + 128);
          v1156 = v344;
          v345 = *(v342 + 176);
          v1157 = *(v342 + 160);
          v1158 = v345;
          v346 = *(v342 + 80);
          v1151 = *(v342 + 64);
          v1152 = v346;
          v347 = *(v342 + 112);
          v1153 = *(v342 + 96);
          v1154 = v347;
          v348 = *(v342 + 16);
          v1147 = *v342;
          v1148 = v348;
          v349 = *(v342 + 48);
          v1149 = *(v342 + 32);
          v1150 = v349;
          v350 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147);
          v351 = BYTE8(v1153);
          break;
        case 0x100000000:
          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v1001, v1002, v1003, v1004, v1005, v1006, v1007;
          v1142 = 0xD000000000000023;
          v1143 = 0x80000001CFA4DDD0;
          v1009 = type metadata accessor for SnapshotItem(0, v1132, v1133, v1008);
          v1010 = v1134 + *(v1009 + 52);
          v1011 = *(v1010 + 208);
          v1159 = *(v1010 + 192);
          v1160 = v1011;
          v1161 = *(v1010 + 224);
          v1162 = *(v1010 + 240);
          v1012 = *(v1010 + 144);
          v1155 = *(v1010 + 128);
          v1156 = v1012;
          v1013 = *(v1010 + 176);
          v1157 = *(v1010 + 160);
          v1158 = v1013;
          v1014 = *(v1010 + 80);
          v1151 = *(v1010 + 64);
          v1152 = v1014;
          v1015 = *(v1010 + 112);
          v1153 = *(v1010 + 96);
          v1154 = v1015;
          v1016 = *(v1010 + 16);
          v1147 = *v1010;
          v1148 = v1016;
          v1017 = *(v1010 + 48);
          v1149 = *(v1010 + 32);
          v1150 = v1017;
          v350 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147);
          v351 = BYTE9(v1153);
          break;
        default:
          goto LABEL_241;
      }
    }

    else
    {
      if (v26 == 0x8000000)
      {
        *&v1147 = 0;
        *(&v1147 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        *(&v1147 + 1), v741, v742, v743, v744, v745, v746, v747;
        v1142 = 0xD000000000000025;
        v1143 = 0x80000001CFA4DEF0;
        v749 = type metadata accessor for SnapshotItem(0, v1132, v1133, v748);
        v750 = v1134 + *(v749 + 52);
        v751 = *(v750 + 208);
        v1159 = *(v750 + 192);
        v1160 = v751;
        v1161 = *(v750 + 224);
        v1162 = *(v750 + 240);
        v752 = *(v750 + 144);
        v1155 = *(v750 + 128);
        v1156 = v752;
        v753 = *(v750 + 176);
        v1157 = *(v750 + 160);
        v1158 = v753;
        v754 = *(v750 + 80);
        v1151 = *(v750 + 64);
        v1152 = v754;
        v755 = *(v750 + 112);
        v1153 = *(v750 + 96);
        v1154 = v755;
        v756 = *(v750 + 16);
        v1147 = *v750;
        v1148 = v756;
        v757 = *(v750 + 48);
        v1149 = *(v750 + 32);
        v1150 = v757;
        v758 = 0;
        v759 = 0;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147) != 1)
        {
          v758 = *(&v1149 + 1);
          v759 = v1150;
        }

        v175 = sub_1CF0757A0(v758, v759);
        v177 = v760;
        v759, v760, v761, v762, v763, v764, v765, v766;
        goto LABEL_166;
      }

      if (v26 == 0x10000000)
      {
        v164 = type metadata accessor for SnapshotItem(0, v1132, v1133, v21);
        v165 = v1134 + *(v164 + 52);
        v166 = *(v165 + 208);
        v1159 = *(v165 + 192);
        v1160 = v166;
        v1161 = *(v165 + 224);
        v1162 = *(v165 + 240);
        v167 = *(v165 + 144);
        v1155 = *(v165 + 128);
        v1156 = v167;
        v168 = *(v165 + 176);
        v1157 = *(v165 + 160);
        v1158 = v168;
        v169 = *(v165 + 80);
        v1151 = *(v165 + 64);
        v1152 = v169;
        v170 = *(v165 + 112);
        v1153 = *(v165 + 96);
        v1154 = v170;
        v171 = *(v165 + 16);
        v1147 = *v165;
        v1148 = v171;
        v172 = *(v165 + 48);
        v1149 = *(v165 + 32);
        v1150 = v172;
        v173 = 0;
        v174 = 0;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147) != 1)
        {
          v173 = *(&v1150 + 1);
          v174 = v1151;
        }

        v175 = sub_1CF0757A0(v173, v174);
        v177 = v176;
        v174, v176, v178, v179, v180, v181, v182, v183;
        v1142 = 0xD000000000000032;
        v1143 = 0x80000001CFA4DEB0;
LABEL_166:
        MEMORY[0x1D3868CC0](v175, v177);
        v223 = v177;
        goto LABEL_167;
      }

      if (v26 != 0x20000000)
      {
        goto LABEL_241;
      }

      *&v1147 = 0;
      *(&v1147 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v1147 + 1), v965, v966, v967, v968, v969, v970, v971;
      v1142 = 0xD000000000000029;
      v1143 = 0x80000001CFA4DE80;
      v973 = type metadata accessor for SnapshotItem(0, v1132, v1133, v972);
      v974 = v1134 + *(v973 + 52);
      v975 = *(v974 + 208);
      v1159 = *(v974 + 192);
      v1160 = v975;
      v1161 = *(v974 + 224);
      v1162 = *(v974 + 240);
      v976 = *(v974 + 144);
      v1155 = *(v974 + 128);
      v1156 = v976;
      v977 = *(v974 + 176);
      v1157 = *(v974 + 160);
      v1158 = v977;
      v978 = *(v974 + 80);
      v1151 = *(v974 + 64);
      v1152 = v978;
      v979 = *(v974 + 112);
      v1153 = *(v974 + 96);
      v1154 = v979;
      v980 = *(v974 + 16);
      v1147 = *v974;
      v1148 = v980;
      v981 = *(v974 + 48);
      v1149 = *(v974 + 32);
      v1150 = v981;
      v350 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147);
      v351 = BYTE8(v1151);
    }

LABEL_217:
    if (v350 == 1)
    {
      v1018 = 2;
    }

    else
    {
      v1018 = v351;
    }

    v265 = sub_1CF1DFAEC(v1018);
    goto LABEL_221;
  }

  if (v26 < 0x2000)
  {
    if (v26 > 63)
    {
      if (v26 > 511)
      {
        if (v26 > 2047)
        {
          if (v26 != 2048)
          {
            if (v26 == 4096)
            {
              *&v1147 = 0;
              *(&v1147 + 1) = 0xE000000000000000;
              sub_1CF9E7948();
              *(&v1147 + 1), v909, v910, v911, v912, v913, v914, v915;
              *&v1147 = 0xD000000000000015;
              *(&v1147 + 1) = 0x80000001CFA4E1A0;
              v917 = type metadata accessor for SnapshotItem(0, v1132, v1133, v916);
              v89 = [v1137 bindBooleanParameter_];
              goto LABEL_201;
            }

            goto LABEL_241;
          }

          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v427, v428, v429, v430, v431, v432, v433;
          *&v1147 = 0xD000000000000025;
          *(&v1147 + 1) = 0x80000001CFA4E1C0;
          v435 = *(type metadata accessor for SnapshotItem(0, v1132, v1133, v434) + 48);
          v436 = *(type metadata accessor for ItemMetadata(0) + 32);
        }

        else
        {
          if (v26 == 512)
          {
            *&v1147 = 0;
            *(&v1147 + 1) = 0xE000000000000000;
            sub_1CF9E7948();
            *(&v1147 + 1), v90, v91, v92, v93, v94, v95, v96;
            *&v1147 = 0xD000000000000015;
            *(&v1147 + 1) = 0x80000001CFA4E230;
            v98 = type metadata accessor for SnapshotItem(0, v1132, v1133, v97);
            v89 = [v1137 bindBooleanParameter_];
            goto LABEL_201;
          }

          if (v26 != 1024)
          {
            goto LABEL_241;
          }

          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v877, v878, v879, v880, v881, v882, v883;
          *&v1147 = 0xD000000000000019;
          *(&v1147 + 1) = 0x80000001CFA4E1F0;
          v435 = *(type metadata accessor for SnapshotItem(0, v1132, v1133, v884) + 48);
          v436 = *(type metadata accessor for ItemMetadata(0) + 28);
        }

        v885 = v1134 + v436;
        v886 = sub_1CF9E5CF8();
        v887 = *(v886 - 8);
        v888 = v1131;
        (*(v887 + 16))(v1131, v885 + v435, v886);
        (*(v887 + 56))(v888, 0, 1, v886);
        v889 = sub_1CF074698(v888);
        v891 = v890;
        sub_1CEFCCC44(v888, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_202:
        MEMORY[0x1D3868CC0](v889, v891);
        v964 = v891;
LABEL_208:
        v964, v957, v958, v959, v960, v961, v962, v963;
        v768 = *(&v1147 + 1);
        v767 = v1147;
        goto LABEL_209;
      }

      switch(v26)
      {
        case 64:
          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v504, v505, v506, v507, v508, v509, v510;
          *&v1147 = 0xD000000000000014;
          *(&v1147 + 1) = 0x80000001CFA4E120;
          v512 = type metadata accessor for SnapshotItem(0, v1132, v1133, v511);
          v513 = v1134 + *(v512 + 48);
          v514 = type metadata accessor for ItemMetadata(0);
          v162 = sub_1CF0748F0(*(v513 + *(v514 + 124)));
          break;
        case 128:
          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v267, v268, v269, v270, v271, v272, v273;
          *&v1147 = 0xD000000000000019;
          *(&v1147 + 1) = 0x80000001CFA4E100;
          v275 = *(type metadata accessor for SnapshotItem(0, v1132, v1133, v274) + 48);
          v276 = v1134 + *(type metadata accessor for ItemMetadata(0) + 128) + v275;
          v162 = sub_1CF074ABC(*v276, *(v276 + 8));
          break;
        case 256:
          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v839, v840, v841, v842, v843, v844, v845;
          *&v1147 = 0xD00000000000001FLL;
          *(&v1147 + 1) = 0x80000001CFA4E0E0;
          v847 = type metadata accessor for SnapshotItem(0, v1132, v1133, v846);
          v848 = v1134 + *(v847 + 48);
          v849 = type metadata accessor for ItemMetadata(0);
          v162 = sub_1CF1DF550(*(v848 + *(v849 + 132)));
          break;
        default:
          goto LABEL_241;
      }

LABEL_207:
      v992 = v163;
      MEMORY[0x1D3868CC0](v162);
      v964 = v992;
      goto LABEL_208;
    }

    if (v26 <= 7)
    {
      if (v26 != 1)
      {
        if (v26 != 2)
        {
          if (v26 == 4)
          {
            *&v1147 = 0;
            *(&v1147 + 1) = 0xE000000000000000;
            sub_1CF9E7948();
            *(&v1147 + 1), v946, v947, v948, v949, v950, v951, v952;
            *&v1147 = 0xD00000000000001DLL;
            *(&v1147 + 1) = 0x80000001CFA4E210;
            v954 = type metadata accessor for SnapshotItem(0, v1132, v1133, v953);
            v89 = [v1137 bindUnsignedShortParameter_];
            goto LABEL_201;
          }

          goto LABEL_241;
        }

        strcpy(&v1147, "parent_id = ");
        BYTE13(v1147) = 0;
        HIWORD(v1147) = -5120;
        type metadata accessor for SnapshotItem(0, v1132, v1133, v21);
        swift_getAssociatedTypeWitness();
        v159 = *(swift_getAssociatedConformanceWitness() + 8);
        v160 = *(v159 + 32);
        v161 = swift_checkMetadataState();
        v162 = v160(v1137, v161, v159);
        goto LABEL_207;
      }

      strcpy(&v1147, "filename = ");
      HIDWORD(v1147) = -352321536;
      v692 = type metadata accessor for SnapshotItem(0, v1132, v1133, v21);
      v699 = sub_1CF074DF4(*(v1134 + *(v692 + 44)), *(v1134 + *(v692 + 44) + 8), v693, v694, v695, v696, v697, v698);
      v701 = v700;
      MEMORY[0x1D3868CC0](v699);
      v701, v702, v703, v704, v705, v706, v707, v708;
      v709 = v1147;
      v59 = v1136;
      v710 = *v1136;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v710 = sub_1CF0710C0(0, *v710->tree + 1, 1, v710, v711, v712, v713, v714);
      }

      v716 = *v710->tree;
      v715 = *v710->tester;
      if (v716 >= v715 >> 1)
      {
        v710 = sub_1CF0710C0((v715 > 1), v716 + 1, 1, v710, v711, v712, v713, v714);
      }

      *v710->tree = v716 + 1;
      *(&v710[1].super.isa + v716) = v709;
      *v59 = v710;
      *&v1147 = 0;
      *(&v1147 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v1147 + 1), v717, v718, v719, v720, v721, v722, v723;
      *&v1147 = 0xD000000000000022;
      *(&v1147 + 1) = 0x80000001CFA4E330;
      v724 = *(v692 + 48);
      v725 = (v1134 + *(type metadata accessor for ItemMetadata(0) + 56) + v724);
      v331 = sub_1CF074DF4(*v725, v725[1], v726, v727, v728, v729, v730, v731);
      goto LABEL_157;
    }

    if (v26 != 8)
    {
      if (v26 != 16)
      {
        if (v26 != 32)
        {
          goto LABEL_241;
        }

        *&v1147 = 0;
        *(&v1147 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        *(&v1147 + 1), v982, v983, v984, v985, v986, v987, v988;
        *&v1147 = 0xD00000000000001ALL;
        *(&v1147 + 1) = 0x80000001CFA4E140;
        v990 = *(type metadata accessor for SnapshotItem(0, v1132, v1133, v989) + 48);
        v991 = type metadata accessor for ItemMetadata(0);
        v162 = sub_1CF074698(v1134 + *(v991 + 120) + v990);
        goto LABEL_207;
      }

      *&v1147 = 0;
      *(&v1147 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v1147 + 1), v294, v295, v296, v297, v298, v299, v300;
      *&v1147 = 0xD000000000000017;
      *(&v1147 + 1) = 0x80000001CFA4E250;
      v302 = type metadata accessor for SnapshotItem(0, v1132, v1133, v301);
      v303 = v1134 + *(v302 + 48);
      v304 = type metadata accessor for ItemMetadata(0);
      v305 = [v1137 bindBooleanParameter_];
      v306 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v308 = v307;

      MEMORY[0x1D3868CC0](v306, v308);
      v308, v309, v310, v311, v312, v313, v314, v315;
      v316 = v1147;
      v317 = *v1136;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v317 = sub_1CF0710C0(0, *v317->tree + 1, 1, v317, v318, v319, v320, v321);
      }

      v323 = *v317->tree;
      v322 = *v317->tester;
      if (v323 >= v322 >> 1)
      {
        v317 = sub_1CF0710C0((v322 > 1), v323 + 1, 1, v317, v318, v319, v320, v321);
      }

      *v317->tree = v323 + 1;
      *(&v317[1].super.isa + v323) = v316;
      v59 = v1136;
      *v1136 = v317;
      *&v1147 = 0;
      *(&v1147 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v1147 + 1), v324, v325, v326, v327, v328, v329, v330;
      *&v1147 = 0xD000000000000019;
      *(&v1147 + 1) = 0x80000001CFA4E270;
      v331 = sub_1CF0744FC(*(v303 + *(v304 + 108)), 0);
LABEL_157:
      v732 = v332;
      MEMORY[0x1D3868CC0](v331);
      v79 = v732;
LABEL_158:
      v79, v72, v73, v74, v75, v76, v77, v78;
      v733 = v1147;
      v734 = *v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v734 = sub_1CF0710C0(0, *v734->tree + 1, 1, v734, v735, v736, v737, v738);
      }

      v740 = *v734->tree;
      v739 = *v734->tester;
      if (v740 >= v739 >> 1)
      {
        v734 = sub_1CF0710C0((v739 > 1), v740 + 1, 1, v734, v735, v736, v737, v738);
      }

      *v734->tree = v740 + 1;
      *(&v734[1].super.isa + v740) = v733;
      *v59 = v734;
      return;
    }

    v769 = v23;
    v770 = v22;
    if ((a5[4] & 1) != 0 || !swift_dynamicCastMetatype())
    {
      *&v1147 = 0;
      *(&v1147 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v1147 + 1), v1030, v1031, v1032, v1033, v1034, v1035, v1036;
      *&v1147 = 0xD000000000000012;
      *(&v1147 + 1) = 0x80000001CFA4E2D0;
      v772 = type metadata accessor for SnapshotItem(0, v1132, v1133, v1037);
      (*(v769 + 16))(v19, v1134 + *(v772 + 40), v16);
      (*(v769 + 56))(v19, 0, 1, v16);
      v1038 = swift_getAssociatedConformanceWitness();
      v1039 = sub_1CF4C0DE0(v19, v16, *(v1038 + 24));
      v1041 = v1040;
      (*(v770 + 8))(v19, v17);
      MEMORY[0x1D3868CC0](v1039, v1041);
      v1041, v1042, v1043, v1044, v1045, v1046, v1047, v1048;
      v813 = *(&v1147 + 1);
      v812 = v1147;
      v814 = *v1136;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v814 = sub_1CF0710C0(0, *v814->tree + 1, 1, v814, v815, v816, v817, v818);
      }

      v820 = *v814->tree;
      v819 = *v814->tester;
      v821 = v820 + 1;
      if (v820 < v819 >> 1)
      {
        goto LABEL_229;
      }
    }

    else
    {
      v772 = type metadata accessor for SnapshotItem(0, v1132, v1133, v771);
      (*(v769 + 16))(v25, v1134 + *(v772 + 40), v16);
      swift_dynamicCast();
      v773 = v1147;
      v774 = DWORD2(v1147);
      strcpy(&v1147, "vfs_fileid = ");
      HIWORD(v1147) = -4864;
      v775 = sub_1CF074ABC(v773, 0);
      v777 = v776;
      MEMORY[0x1D3868CC0](v775);
      v777, v778, v779, v780, v781, v782, v783, v784;
      v785 = v1147;
      v786 = *v1136;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v786 = sub_1CF0710C0(0, *v786->tree + 1, 1, v786, v787, v788, v789, v790);
      }

      v792 = *v786->tree;
      v791 = *v786->tester;
      if (v792 >= v791 >> 1)
      {
        v786 = sub_1CF0710C0((v791 > 1), v792 + 1, 1, v786, v787, v788, v789, v790);
      }

      *v786->tree = v792 + 1;
      *(&v786[1].super.isa + v792) = v785;
      v793 = v1136;
      *v1136 = v786;
      *&v1147 = 0;
      *(&v1147 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v1147 + 1), v794, v795, v796, v797, v798, v799, v800;
      *&v1147 = 0xD000000000000013;
      *(&v1147 + 1) = 0x80000001CFA4E310;
      v801 = [v1137 bindUnsignedIntegerParameter_];
      v802 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v804 = v803;

      MEMORY[0x1D3868CC0](v802, v804);
      v804, v805, v806, v807, v808, v809, v810, v811;
      v813 = *(&v1147 + 1);
      v812 = v1147;
      v814 = *v793;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v814 = sub_1CF0710C0(0, *v814->tree + 1, 1, v814, v815, v816, v817, v818);
      }

      v820 = *v814->tree;
      v819 = *v814->tester;
      v821 = v820 + 1;
      if (v820 < v819 >> 1)
      {
        goto LABEL_229;
      }
    }

    v814 = sub_1CF0710C0((v819 > 1), v821, 1, v814, v815, v816, v817, v818);
LABEL_229:
    *v814->tree = v821;
    v1049 = v814 + 16 * v820;
    *(v1049 + 4) = v812;
    *(v1049 + 5) = v813;
    v1050 = v1136;
    *v1136 = v814;
    *&v1147 = 0;
    *(&v1147 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v1147 + 1), v1051, v1052, v1053, v1054, v1055, v1056, v1057;
    *&v1147 = 0xD000000000000010;
    *(&v1147 + 1) = 0x80000001CFA4E2F0;
    type metadata accessor for SnapshotItem(0, v1132, v1133, v1058);
    v1059 = *(v772 + 48);
    v1060 = v1050;
    v1061 = v1134 + v1059;
    v1062 = type metadata accessor for ItemMetadata(0);
    v1063 = sub_1CF0744FC(*(v1061 + *(v1062 + 104)), 0);
    v1065 = v1064;
    MEMORY[0x1D3868CC0](v1063);
    v1065, v1066, v1067, v1068, v1069, v1070, v1071, v1072;
    v1073 = v1147;
    v1074 = *v1060;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1074 = sub_1CF0710C0(0, *v1074->tree + 1, 1, v1074, v1075, v1076, v1077, v1078);
    }

    v1080 = *v1074->tree;
    v1079 = *v1074->tester;
    if (v1080 >= v1079 >> 1)
    {
      v1074 = sub_1CF0710C0((v1079 > 1), v1080 + 1, 1, v1074, v1075, v1076, v1077, v1078);
    }

    *v1074->tree = v1080 + 1;
    *(&v1074[1].super.isa + v1080) = v1073;
    v242 = v1136;
    *v1136 = v1074;
    *&v1147 = 0;
    *(&v1147 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v1147 + 1), v1081, v1082, v1083, v1084, v1085, v1086, v1087;
    *&v1147 = 0xD000000000000019;
    *(&v1147 + 1) = 0x80000001CFA4E270;
    v1088 = sub_1CF0744FC(*(v1061 + *(v1062 + 108)), 0);
    v1090 = v1089;
    MEMORY[0x1D3868CC0](v1088);
    v1090, v1091, v1092, v1093, v1094, v1095, v1096, v1097;
    v768 = *(&v1147 + 1);
    v767 = v1147;
    goto LABEL_210;
  }

  if (v26 >= 0x100000)
  {
    if (v26 >= 0x800000)
    {
      if (v26 > 0x1FFFFFF)
      {
        if (v26 != 0x2000000)
        {
          if (v26 == 0x4000000)
          {
            *&v1147 = 0;
            *(&v1147 + 1) = 0xE000000000000000;
            sub_1CF9E7948();
            *(&v1147 + 1), v665, v666, v667, v668, v669, v670, v671;
            v1142 = 0xD000000000000027;
            v1143 = 0x80000001CFA4DF20;
            v673 = type metadata accessor for SnapshotItem(0, v1132, v1133, v672);
            v674 = v1134 + *(v673 + 52);
            v675 = *(v674 + 208);
            v1159 = *(v674 + 192);
            v1160 = v675;
            v1161 = *(v674 + 224);
            v1162 = *(v674 + 240);
            v676 = *(v674 + 144);
            v1155 = *(v674 + 128);
            v1156 = v676;
            v677 = *(v674 + 176);
            v1157 = *(v674 + 160);
            v1158 = v677;
            v678 = *(v674 + 80);
            v1151 = *(v674 + 64);
            v1152 = v678;
            v679 = *(v674 + 112);
            v1153 = *(v674 + 96);
            v1154 = v679;
            v680 = *(v674 + 16);
            v1147 = *v674;
            v1148 = v680;
            v681 = *(v674 + 48);
            v1149 = *(v674 + 32);
            v1150 = v681;
            v403 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147);
            v404 = BYTE2(v1149);
            goto LABEL_144;
          }

          goto LABEL_241;
        }

        *&v1147 = 0;
        *(&v1147 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        *(&v1147 + 1), v386, v387, v388, v389, v390, v391, v392;
        v1142 = 0xD000000000000026;
        v1143 = 0x80000001CFA4DF50;
        v394 = type metadata accessor for SnapshotItem(0, v1132, v1133, v393);
        v395 = v1134 + *(v394 + 52);
        v396 = *(v395 + 208);
        v1159 = *(v395 + 192);
        v1160 = v396;
        v1161 = *(v395 + 224);
        v1162 = *(v395 + 240);
        v397 = *(v395 + 144);
        v1155 = *(v395 + 128);
        v1156 = v397;
        v398 = *(v395 + 176);
        v1157 = *(v395 + 160);
        v1158 = v398;
        v399 = *(v395 + 80);
        v1151 = *(v395 + 64);
        v1152 = v399;
        v400 = *(v395 + 112);
        v1153 = *(v395 + 96);
        v1154 = v400;
        v401 = *(v395 + 16);
        v1147 = *v395;
        v1148 = v401;
        v402 = *(v395 + 48);
        v1149 = *(v395 + 32);
        v1150 = v402;
        v403 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147);
        v404 = BYTE1(v1149);
      }

      else
      {
        if (v26 == 0x800000)
        {
          *&v1147 = 0;
          *(&v1147 + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          *(&v1147 + 1), v132, v133, v134, v135, v136, v137, v138;
          *&v1147 = 0xD000000000000019;
          *(&v1147 + 1) = 0x80000001CFA4E020;
          v140 = type metadata accessor for SnapshotItem(0, v1132, v1133, v139);
          v89 = [v1137 bindBooleanParameter_];
          goto LABEL_201;
        }

        if (v26 != 0x1000000)
        {
          goto LABEL_241;
        }

        *&v1147 = 0;
        *(&v1147 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        *(&v1147 + 1), v596, v597, v598, v599, v600, v601, v602;
        v1142 = 0xD000000000000017;
        v1143 = 0x80000001CFA4DF80;
        v604 = type metadata accessor for SnapshotItem(0, v1132, v1133, v603);
        v605 = v1134 + *(v604 + 52);
        v606 = *(v605 + 208);
        v1159 = *(v605 + 192);
        v1160 = v606;
        v1161 = *(v605 + 224);
        v1162 = *(v605 + 240);
        v607 = *(v605 + 144);
        v1155 = *(v605 + 128);
        v1156 = v607;
        v608 = *(v605 + 176);
        v1157 = *(v605 + 160);
        v1158 = v608;
        v609 = *(v605 + 80);
        v1151 = *(v605 + 64);
        v1152 = v609;
        v610 = *(v605 + 112);
        v1153 = *(v605 + 96);
        v1154 = v610;
        v611 = *(v605 + 16);
        v1147 = *v605;
        v1148 = v611;
        v612 = *(v605 + 48);
        v1149 = *(v605 + 32);
        v1150 = v612;
        v403 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147);
        v404 = v1149;
      }

LABEL_144:
      if (v403 == 1)
      {
        v682 = 2;
      }

      else
      {
        v682 = v404;
      }

      v372 = sub_1CF1DFAEC(v682);
      goto LABEL_148;
    }

    switch(v26)
    {
      case 0x100000:
        *&v1147 = 0;
        *(&v1147 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        *(&v1147 + 1), v477, v478, v479, v480, v481, v482, v483;
        v1142 = 0xD000000000000019;
        v1143 = 0x80000001CFA4DFC0;
        v485 = type metadata accessor for SnapshotItem(0, v1132, v1133, v484);
        v486 = v1134 + *(v485 + 52);
        v487 = *(v486 + 208);
        v1159 = *(v486 + 192);
        v1160 = v487;
        v1161 = *(v486 + 224);
        v1162 = *(v486 + 240);
        v488 = *(v486 + 144);
        v1155 = *(v486 + 128);
        v1156 = v488;
        v489 = *(v486 + 176);
        v1157 = *(v486 + 160);
        v1158 = v489;
        v490 = *(v486 + 80);
        v1151 = *(v486 + 64);
        v1152 = v490;
        v491 = *(v486 + 112);
        v1153 = *(v486 + 96);
        v1154 = v491;
        v492 = *(v486 + 16);
        v1147 = *v486;
        v1148 = v492;
        v493 = *(v486 + 48);
        v1149 = *(v486 + 32);
        v1150 = v493;
        v403 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147);
        v404 = BYTE9(v1147);
        goto LABEL_144;
      case 0x200000:
        v1145 = 0;
        v1146 = 0xE000000000000000;
        sub_1CF9E7948();
        v1146, v224, v225, v226, v227, v228, v229, v230;
        v1142 = 0xD00000000000001DLL;
        v1143 = 0x80000001CFA4DFA0;
        v232 = type metadata accessor for SnapshotItem(0, v1132, v1133, v231);
        v233 = v1134 + *(v232 + 52);
        v234 = *(v233 + 208);
        v1159 = *(v233 + 192);
        v1160 = v234;
        v1161 = *(v233 + 224);
        v1162 = *(v233 + 240);
        v235 = *(v233 + 144);
        v1155 = *(v233 + 128);
        v1156 = v235;
        v236 = *(v233 + 176);
        v1157 = *(v233 + 160);
        v1158 = v236;
        v237 = *(v233 + 80);
        v1151 = *(v233 + 64);
        v1152 = v237;
        v238 = *(v233 + 112);
        v1153 = *(v233 + 96);
        v1154 = v238;
        v239 = *(v233 + 16);
        v1147 = *v233;
        v1148 = v239;
        v240 = *(v233 + 48);
        v1149 = *(v233 + 32);
        v1150 = v240;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147) != 1)
        {
          v241 = v1148;
          v242 = v1136;
          if (v1148)
          {
            swift_getErrorValue();
            v243 = v1138;
            v244 = v1139;
LABEL_236:
            v1098 = v241;
            v1099 = v1135;
            v1100 = sub_1CF4C2330(v243, v244);
            if (v1099)
            {

              v1135 = 0;
              return;
            }

            v559 = v1100;
            v560 = v1101;
            v1135 = 0;

            goto LABEL_240;
          }

LABEL_238:
          v559 = 0;
          v560 = 0xF000000000000000;
          goto LABEL_240;
        }

        break;
      case 0x400000:
        v1145 = 0;
        v1146 = 0xE000000000000000;
        sub_1CF9E7948();
        v1146, v542, v543, v544, v545, v546, v547, v548;
        v1142 = 0xD00000000000001DLL;
        v1143 = 0x80000001CFA4DFA0;
        v550 = type metadata accessor for SnapshotItem(0, v1132, v1133, v549);
        v551 = v1134 + *(v550 + 52);
        v552 = *(v551 + 208);
        v1159 = *(v551 + 192);
        v1160 = v552;
        v1161 = *(v551 + 224);
        v1162 = *(v551 + 240);
        v553 = *(v551 + 144);
        v1155 = *(v551 + 128);
        v1156 = v553;
        v554 = *(v551 + 176);
        v1157 = *(v551 + 160);
        v1158 = v554;
        v555 = *(v551 + 80);
        v1151 = *(v551 + 64);
        v1152 = v555;
        v556 = *(v551 + 112);
        v1153 = *(v551 + 96);
        v1154 = v556;
        v557 = *(v551 + 16);
        v1147 = *v551;
        v1148 = v557;
        v558 = *(v551 + 48);
        v1149 = *(v551 + 32);
        v1150 = v558;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147) != 1)
        {
          v241 = *(&v1148 + 1);
          v242 = v1136;
          if (*(&v1148 + 1))
          {
            swift_getErrorValue();
            v243 = v1140;
            v244 = v1141;
            goto LABEL_236;
          }

          goto LABEL_238;
        }

        break;
      default:
        goto LABEL_241;
    }

    v559 = 0;
    v560 = 0xF000000000000000;
    v242 = v1136;
LABEL_240:
    v1102 = sub_1CF04E5D8(v559, v560);
    v1104 = v1103;
    sub_1CEFE48D8(v559, v560);
    MEMORY[0x1D3868CC0](v1102, v1104);
    v1104, v1105, v1106, v1107, v1108, v1109, v1110, v1111;
    v767 = v1142;
    v768 = v1143;
    goto LABEL_210;
  }

  if (v26 < 0x10000)
  {
    if (v26 != 0x2000)
    {
      if (v26 != 0x4000)
      {
        if (v26 == 0x8000)
        {
          return;
        }

        goto LABEL_241;
      }

      *&v1147 = 0;
      *(&v1147 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v1147 + 1), v184, v185, v186, v187, v188, v189, v190;
      *&v1147 = 0xD00000000000001CLL;
      *(&v1147 + 1) = 0x80000001CFA4E160;
      v192 = type metadata accessor for SnapshotItem(0, v1132, v1133, v191);
      v193 = v1134 + *(v192 + 48);
      v194 = *(v193 + 4);
      LOBYTE(v1142) = *(v193 + 8);
      v162 = sub_1CF074C58(v194 | (v1142 << 32));
      goto LABEL_207;
    }

    *&v1147 = 0;
    *(&v1147 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v1147 + 1), v454, v455, v456, v457, v458, v459, v460;
    *&v1147 = 0xD00000000000001CLL;
    *(&v1147 + 1) = 0x80000001CFA4E180;
    v462 = type metadata accessor for SnapshotItem(0, v1132, v1133, v461);
    v89 = [v1137 bindBooleanParameter_];
LABEL_201:
    v955 = v89;
    v889 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v891 = v956;

    goto LABEL_202;
  }

  if (v26 < 0x40000)
  {
    if (v26 == 0x10000)
    {
      v27 = type metadata accessor for SnapshotItem(0, v1132, v1133, v21);
      v28 = v1134 + *(v27 + 48);
      v29 = type metadata accessor for ItemMetadata(0);
      v30 = *(v28 + *(v29 + 92));
      v31 = *(v28 + *(v29 + 84));
      if (v30 == 6)
      {
        v32 = 0;
      }

      else
      {
        v32 = (v30 + 1) << 16;
      }

      *&v1147 = 0;
      *(&v1147 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v1147 + 1), v33, v34, v35, v36, v37, v38, v39;
      *&v1147 = 0xD000000000000018;
      *(&v1147 + 1) = 0x80000001CFA4E0A0;
      v40 = [v1137 bindUnsignedIntegerParameter_];
      v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v43 = v42;

      MEMORY[0x1D3868CC0](v41, v43);
      v43, v44, v45, v46, v47, v48, v49, v50;
      v51 = v1147;
      v52 = *v1136;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1CF0710C0(0, *v52->tree + 1, 1, v52, v53, v54, v55, v56);
      }

      v58 = *v52->tree;
      v57 = *v52->tester;
      if (v58 >= v57 >> 1)
      {
        v52 = sub_1CF0710C0((v57 > 1), v58 + 1, 1, v52, v53, v54, v55, v56);
      }

      *v52->tree = v58 + 1;
      *(&v52[1].super.isa + v58) = v51;
      v59 = v1136;
      *v1136 = v52;
      *&v1147 = 0;
      *(&v1147 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v1147 + 1), v60, v61, v62, v63, v64, v65, v66;
      *&v1147 = 0xD00000000000001CLL;
      *(&v1147 + 1) = 0x80000001CFA4E0C0;
      v67 = sub_1CF9E8268();
      v68 = [v1137 bindObjectParameter_];

      v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v71 = v70;

      MEMORY[0x1D3868CC0](v69, v71);
      v79 = v71;
      goto LABEL_158;
    }

    if (v26 == 0x20000)
    {
      *&v1147 = 0;
      *(&v1147 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v1147 + 1), v578, v579, v580, v581, v582, v583, v584;
      *&v1147 = 0xD000000000000015;
      *(&v1147 + 1) = 0x80000001CFA4E080;
      v586 = type metadata accessor for SnapshotItem(0, v1132, v1133, v585);
      v89 = [v1137 bindBooleanParameter_];
      goto LABEL_201;
    }

    goto LABEL_241;
  }

  if (v26 != 0x40000)
  {
    if (v26 == 0x80000)
    {
      *&v1147 = 0;
      *(&v1147 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v1147 + 1), v634, v635, v636, v637, v638, v639, v640;
      v1142 = 0xD00000000000001ALL;
      v1143 = 0x80000001CFA4DFE0;
      v642 = type metadata accessor for SnapshotItem(0, v1132, v1133, v641);
      v643 = v1134 + *(v642 + 52);
      v644 = *(v643 + 208);
      v1159 = *(v643 + 192);
      v1160 = v644;
      v1161 = *(v643 + 224);
      v1162 = *(v643 + 240);
      v645 = *(v643 + 144);
      v1155 = *(v643 + 128);
      v1156 = v645;
      v646 = *(v643 + 176);
      v1157 = *(v643 + 160);
      v1158 = v646;
      v647 = *(v643 + 80);
      v1151 = *(v643 + 64);
      v1152 = v647;
      v648 = *(v643 + 112);
      v1153 = *(v643 + 96);
      v1154 = v648;
      v649 = *(v643 + 16);
      v1147 = *v643;
      v1148 = v649;
      v650 = *(v643 + 48);
      v1149 = *(v643 + 32);
      v1150 = v650;
      v403 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147);
      v404 = BYTE8(v1147);
      goto LABEL_144;
    }

LABEL_241:
    *&v1147 = 0;
    *(&v1147 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v1147 + 1), v1112, v1113, v1114, v1115, v1116, v1117, v1118;
    *&v1147 = 0xD000000000000017;
    *(&v1147 + 1) = 0x80000001CFA4DB80;
    v1119 = sub_1CF071470(v26);
    v1121 = v1120;
    MEMORY[0x1D3868CC0](v1119);
    v1121, v1122, v1123, v1124, v1125, v1126, v1127, v1128;
    goto LABEL_242;
  }

  *&v1147 = 0;
  *(&v1147 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  *(&v1147 + 1), v352, v353, v354, v355, v356, v357, v358;
  v1142 = 0xD00000000000001ALL;
  v1143 = 0x80000001CFA4E000;
  v360 = type metadata accessor for SnapshotItem(0, v1132, v1133, v359);
  v361 = v1134 + *(v360 + 52);
  v362 = *(v361 + 208);
  v1159 = *(v361 + 192);
  v1160 = v362;
  v1161 = *(v361 + 224);
  v1162 = *(v361 + 240);
  v363 = *(v361 + 144);
  v1155 = *(v361 + 128);
  v1156 = v363;
  v364 = *(v361 + 176);
  v1157 = *(v361 + 160);
  v1158 = v364;
  v365 = *(v361 + 80);
  v1151 = *(v361 + 64);
  v1152 = v365;
  v366 = *(v361 + 112);
  v1153 = *(v361 + 96);
  v1154 = v366;
  v367 = *(v361 + 16);
  v1147 = *v361;
  v1148 = v367;
  v368 = *(v361 + 48);
  v1149 = *(v361 + 32);
  v1150 = v368;
  v369 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1147);
  v370 = v369 == 1;
  if (v369 == 1)
  {
    v371 = 0;
  }

  else
  {
    v371 = v1147;
  }

  v372 = sub_1CF1CCF08(v371, v370);
LABEL_148:
  v476 = v373;
LABEL_149:
  MEMORY[0x1D3868CC0](v372, v373);
  v223 = v476;
LABEL_167:
  v223, v216, v217, v218, v219, v220, v221, v222;
  v767 = v1142;
  v768 = v1143;
LABEL_209:
  v242 = v1136;
LABEL_210:
  v993 = *v242;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v993 = sub_1CF0710C0(0, *v993->tree + 1, 1, v993, v994, v995, v996, v997);
  }

  v999 = *v993->tree;
  v998 = *v993->tester;
  if (v999 >= v998 >> 1)
  {
    v993 = sub_1CF0710C0((v998 > 1), v999 + 1, 1, v993, v994, v995, v996, v997);
  }

  *v993->tree = v999 + 1;
  v1000 = v993 + 16 * v999;
  *(v1000 + 4) = v767;
  *(v1000 + 5) = v768;
  *v242 = v993;
}

uint64_t sub_1CF4A3A80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v202 = a4;
  v200 = a1;
  v201 = a5;
  v204 = a3;
  v7 = *v5;
  v8 = *(*v5 + 776);
  v9 = *(*v5 + 760);
  *&v205 = swift_getAssociatedTypeWitness();
  *(&v205 + 1) = swift_getAssociatedTypeWitness();
  *&v206 = swift_getAssociatedConformanceWitness();
  *(&v206 + 1) = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for FileItemVersion(255, &v205);
  v185 = sub_1CF9E75D8();
  v183 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v12 = &v168[-v11];
  *&v13 = v9;
  v177 = *(v7 + 768);
  *(&v13 + 1) = v177;
  *&v14 = v8;
  v176 = *(v7 + 784);
  *(&v14 + 1) = v176;
  v174 = v14;
  v206 = v14;
  v175 = v13;
  v205 = v13;
  v15 = type metadata accessor for PersistenceTrigger(0, &v205);
  v180 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v179 = &v168[-v16];
  v17 = sub_1CF9E6068();
  v188 = *(v17 - 8);
  v189 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v187 = &v168[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v184 = &v168[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v194 = &v168[-v22];
  v186 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v186);
  v24 = &v168[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v190 = v9;
  v191 = v8;
  v26 = type metadata accessor for SnapshotItem(255, v9, v8, v25);
  v27 = sub_1CF9E75D8();
  v28 = *(v27 - 8);
  v192 = v27;
  v193 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v172 = &v168[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v178 = &v168[-v31];
  MEMORY[0x1EEE9AC00](v32);
  v173 = &v168[-v33];
  MEMORY[0x1EEE9AC00](v34);
  v182 = &v168[-v35];
  MEMORY[0x1EEE9AC00](v36);
  v181 = &v168[-v37];
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v168[-v39];
  v197 = v26;
  v196 = *(v26 - 8);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v195 = &v168[-v43];
  v44 = *a2;
  v45 = v202;
  v46 = *(v201[1] + 88);
  v198 = v201[1];
  result = v46(v202, v42);
  v207 = v44;
  v199 = v5;
  v48 = v5[32];
  if ((v48 & 1) == 0)
  {
    v44 &= 0xFE9FFFDE5083FFFFLL;
    v207 = v44;
  }

  if (qword_1EDEABDE0 == -1)
  {
    if (!v44)
    {
      return result;
    }

LABEL_5:
    v171 = v24;
    v49 = qword_1EDEABDE8;
    v50 = v203;
    result = sub_1CF48C08C(v200, v204, v45, v198, v40);
    if (v50)
    {
      return result;
    }

    v170 = v15;
    v52 = v196;
    v51 = v197;
    if ((*(v196 + 48))(v40, 1, v197) == 1)
    {
      (*(v193 + 8))(v40, v192);
      (*(*(v10 - 8) + 56))(v12, 1, 1, v10);
      v54 = v190;
      v53 = v191;
      type metadata accessor for FileTreeError(0, v190, v191, v55);
      swift_getWitnessTable();
      swift_allocError();
      sub_1CF72C4D8(v200, v12, 0, v54, v53, v56);
      (*(v183 + 8))(v12, v185);
      return swift_willThrow();
    }

    v169 = v48;
    v203 = 0;
    (*(v52 + 32))(v195, v40, v51);
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v57 = v44 & 0xFFFFFFFFFF7FFFEFLL & (v49 | 0x409000000C000);
    v58 = qword_1EDEBBE40;
    v59 = v188;
    v60 = v189;
    v61 = v194;
    (*(v188 + 56))(v194, 1, 1, v189);
    *&v205 = 0;
    *(&v205 + 1) = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x20657461647075, 0xE700000000000000);
    v62 = sub_1CF071470(v207);
    v64 = v63;
    MEMORY[0x1D3868CC0](v62);
    v64, v65, v66, v67, v68, v69, v70, v71;
    MEMORY[0x1D3868CC0](543584032, 0xE400000000000000);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v183 = *(&v205 + 1);
    v185 = v205;
    v72 = v184;
    sub_1CEFE74D8(v61, v184);
    v73 = *(v59 + 48);
    if (v73(v72, 1, v60) == 1)
    {
      v74 = v58;
      v75 = v187;
      sub_1CF9E6048();
      if (v73(v72, 1, v60) != 1)
      {
        sub_1CEFCCC44(v72, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v75 = v187;
      (*(v59 + 32))(v187, v72, v60);
    }

    LODWORD(v187) = v57 != 0;
    v76 = v171;
    (*(v59 + 16))(v171, v75, v60);
    v77 = v186;
    *(v76 + *(v186 + 20)) = v58;
    v78 = v76 + *(v77 + 24);
    *v78 = "SQLDB: Snapshot update";
    *(v78 + 8) = 22;
    *(v78 + 16) = 2;
    v79 = v58;
    v80 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1CF9FA450;
    *(v81 + 56) = MEMORY[0x1E69E6158];
    *(v81 + 64) = sub_1CEFD51C4();
    v82 = v183;
    *(v81 + 32) = v185;
    *(v81 + 40) = v82;
    v166 = v81;
    LOBYTE(v165) = 2;
    sub_1CF9E6028(v80, &dword_1CEFC7000, v79, "SQLDB: Snapshot update", 22, 2, v76, "%s", 2);
    v81, v83, v84, v85, v86, v87, v88, v89;
    (*(v59 + 8))(v75, v60);
    v90 = sub_1CEFCCC44(v194, &unk_1EC4BED20, &unk_1CFA00700);
    v91 = MEMORY[0x1EEE9AC00](v90);
    v92 = v201;
    v93 = v202;
    *&v168[-48] = v202;
    *&v168[-40] = v92;
    v94 = v200;
    v164 = v199;
    v165 = v200;
    v166 = &v207;
    v167 = v187;
    v96 = v203;
    v95 = v204;
    (v92[4])(sub_1CF4C06E8, v91);
    if (v96)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      (*(v196 + 8))(v195, v197);
      v97 = v76;
      return sub_1CF4C0A48(v97, type metadata accessor for Signpost);
    }

    v201 = v79;
    v203 = 0;
    v99 = v196;
    v98 = v197;
    v100 = v181;
    v194 = *(v196 + 16);
    (v194)(v181, v94, v197);
    v102 = *(v99 + 56);
    v101 = v99 + 56;
    v189 = v102;
    v102(v100, 0, 1, v98);
    v103 = v198;
    sub_1CF488190(v94, v100, v95, v93, v198);
    v104 = *(v193 + 8);
    v193 += 8;
    v104(v100, v192);
    v105 = v207;
    if ((v207 & 8) != 0)
    {
      v107 = v203;
      v108 = v182;
      if (v169)
      {
        result = swift_weakLoadStrong();
        if (!result)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        (*(*result + 176))(result);

        *&v205 = v177;
        *(&v205 + 1) = v190;
        *&v206 = v176;
        *(&v206 + 1) = v191;
        type metadata accessor for SQLDatabase(0, &v205);
        if (swift_dynamicCastClass())
        {
          v187 = v104;
          v186 = v105;
          v109 = v197;
          v110 = v194;
          (v194)(v178, v195, v197);
          v111 = v189;
          v189(v178, 0, 1, v109);
          v112 = v172;
          (v110)(v172, v94, v109);
          v113 = v178;
          v111(v112, 0, 1, v109);
          v114 = v203;
          v115 = v94;
          v116 = v198;
          sub_1CF5A85A4(v113, v112, v204, v202, v198);
LABEL_29:
          v107 = v114;
          if (v114)
          {

            v120 = v192;
            v121 = v187;
            (v187)(v112, v192);
            v121(v113, v120);
            sub_1CF9E7458();
            v122 = v171;
            sub_1CF9E6038();
            (*(v196 + 8))(v195, v197);
            return sub_1CF4C0A48(v122, type metadata accessor for Signpost);
          }

          v123 = v112;
          v124 = v192;
          v105 = v187;
          (v187)(v123, v192);
          (v105)(v113, v124);
          v103 = v116;
          v94 = v115;
          LOBYTE(v105) = v186;
LABEL_34:
          v203 = v107;
          v125 = v171;
          if ((v105 & 0x10) == 0)
          {
            goto LABEL_43;
          }

          v126 = *(v197 + 48);
          v127 = *(type metadata accessor for ItemMetadata(0) + 80);
          v128 = *(v94 + v126 + v127);
          v129 = v195[v126 + v127];
          if (v128 == 1)
          {
            v103 = v198;
            if (v129)
            {
              goto LABEL_43;
            }

            result = swift_weakLoadStrong();
            v193 = result;
            if (!result)
            {
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v131 = swift_getAssociatedTypeWitness();
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            v133 = swift_getAssociatedConformanceWitness();
            *&v205 = AssociatedTypeWitness;
            *(&v205 + 1) = v131;
            *&v206 = AssociatedConformanceWitness;
            *(&v206 + 1) = v133;
            type metadata accessor for ReconciliationID(255, &v205);
            v134 = *(swift_getTupleTypeMetadata2() + 48);
            v187 = AssociatedTypeWitness;
            v135 = *(*(AssociatedTypeWitness - 8) + 16);
            v136 = v179;
            v137 = v200;
            v135(v179, v200, AssociatedTypeWitness);
            swift_storeEnumTagMultiPayload();
            v135(&v136[v134], v137 + *(v197 + 36), v187);
            swift_storeEnumTagMultiPayload();
            v138 = v193;
          }

          else
          {
            v103 = v198;
            if (!v129)
            {
              goto LABEL_43;
            }

            result = swift_weakLoadStrong();
            if (!result)
            {
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            v138 = result;
            v139 = swift_getAssociatedTypeWitness();
            v136 = v179;
            (*(*(v139 - 8) + 16))(v179, v94, v139);
            v193 = swift_getAssociatedTypeWitness();
            v187 = swift_getAssociatedConformanceWitness();
            v140 = v193;
            v141 = swift_getAssociatedConformanceWitness();
            *&v205 = v139;
            *(&v205 + 1) = v140;
            *&v206 = v187;
            *(&v206 + 1) = v141;
            type metadata accessor for ReconciliationID(0, &v205);
            swift_storeEnumTagMultiPayload();
          }

          v142 = v170;
          swift_storeEnumTagMultiPayload();
          (*(*v138 + 312))(v136);

          (*(v180 + 8))(v136, v142);
          v125 = v171;
          v103 = v198;
LABEL_43:
          if ((v105 & 2) != 0)
          {
            v153 = v103;
            v154 = *(v197 + 36);
            v155 = v195;
            v156 = v203;
            v157 = sub_1CF4947C8(&v195[v154], 1, v204, v202, v153);
            if (v156)
            {
              sub_1CF9E7458();
              sub_1CF9E6038();
              (*(v196 + 8))(v155, v197);
              v97 = v125;
              return sub_1CF4C0A48(v97, type metadata accessor for Signpost);
            }

            v203 = 0;
            v188 = v101;
            if ((v157 & 1) == 0)
            {
              result = swift_weakLoadStrong();
              if (!result)
              {
LABEL_60:
                __break(1u);
                return result;
              }

              v158 = result;
              v159 = swift_getAssociatedTypeWitness();
              (*(*(v159 - 8) + 16))(v179, &v195[v154], v159);
              v160 = swift_getAssociatedTypeWitness();
              v161 = swift_getAssociatedConformanceWitness();
              v162 = swift_getAssociatedConformanceWitness();
              *&v205 = v159;
              *(&v205 + 1) = v160;
              *&v206 = v161;
              *(&v206 + 1) = v162;
              v143 = v179;
              type metadata accessor for ReconciliationID(0, &v205);
              swift_storeEnumTagMultiPayload();
              v163 = v170;
              swift_storeEnumTagMultiPayload();
              (*(*v158 + 312))(v143);

              (*(v180 + 8))(v143, v163);
              goto LABEL_46;
            }
          }

          else
          {
            v188 = v101;
          }

          v143 = v179;
LABEL_46:
          result = swift_weakLoadStrong();
          if (result)
          {
            v144 = result;
            TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
            v146 = *(TupleTypeMetadata3 + 48);
            v147 = *(TupleTypeMetadata3 + 64);
            v148 = v194;
            v149 = v197;
            (v194)(v143, v195, v197);
            v150 = v189;
            v189(v143, 0, 1, v149);
            (v148)(&v143[v146], v200, v149);
            v150(&v143[v146], 0, 1, v149);
            *&v143[v147] = v207;
            v151 = v170;
            swift_storeEnumTagMultiPayload();
            (*(*v144 + 312))(v143);

            (*(v180 + 8))(v143, v151);
            sub_1CF9E7458();
            v152 = v171;
            sub_1CF9E6038();
            (*(v196 + 8))(v195, v149);
            return sub_1CF4C0A48(v152, type metadata accessor for Signpost);
          }

          __break(1u);
          goto LABEL_57;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v106 = v169;
      if ((v207 & 0x800000) == 0)
      {
        v106 = 1;
      }

      v107 = v203;
      v108 = v182;
      if (v106)
      {
        goto LABEL_34;
      }
    }

    if (!swift_weakLoadStrong())
    {
LABEL_32:
      v103 = v198;
      goto LABEL_34;
    }

    v205 = v175;
    v206 = v174;
    type metadata accessor for SQLDatabase(0, &v205);
    if (swift_dynamicCastClass())
    {
      v187 = v104;
      v186 = v105;
      v117 = v197;
      v118 = v194;
      (v194)(v108, v195, v197);
      v119 = v189;
      v189(v182, 0, 1, v117);
      v112 = v173;
      (v118)(v173, v94, v117);
      v113 = v182;
      v119(v112, 0, 1, v117);
      v114 = v203;
      v115 = v94;
      v116 = v198;
      sub_1CF5A7DB4(v113, v112, v204, v202, v198);
      goto LABEL_29;
    }

LABEL_31:

    v107 = v203;
    goto LABEL_32;
  }

  result = swift_once();
  if (v44)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1CF4A51BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, char a5)
{
  sub_1CF9E7948();
  0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
  v51 = 0x20455441445055;
  v52 = 0xE700000000000000;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v50 = *a4;
  v17 = sub_1CF4A0654(a3, &v50, a1);
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0x202020202020200ALL, 0xE800000000000000);
  if (a5)
  {
    v27 = 0xD000000000000029;
  }

  else
  {
    v27 = 0;
  }

  if (a5)
  {
    v28 = 0x80000001CFA4C270;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v27, v28);
  v28, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v36 = *(swift_getAssociatedConformanceWitness() + 8);
  v37 = *(v36 + 32);
  v38 = swift_checkMetadataState();
  v39 = v37(a1, v38, v36);
  v41 = v40;
  MEMORY[0x1D3868CC0](v39);
  v41, v42, v43, v44, v45, v46, v47, v48;
  return v51;
}

uint64_t sub_1CF4A53D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v34 = type metadata accessor for SnapshotItem(255, *(*v5 + 760), *(*v5 + 776), a4);
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v31 - v12;
  v13 = v39;
  result = sub_1CF48C08C(a1, a2, a3, a4, &v31 - v12);
  if (!v13)
  {
    v15 = v11;
    v39 = 0;
    v16 = *(v34 - 8);
    v17 = v32;
    if ((*(v16 + 48))(v32, 1) == 1)
    {
      (*(v15 + 8))(v17, v10);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v19 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v21 = swift_getAssociatedConformanceWitness();
      v35 = AssociatedTypeWitness;
      v36 = v19;
      v37 = AssociatedConformanceWitness;
      v38 = v21;
      v22 = type metadata accessor for FileItemVersion(0, &v35);
      return (*(*(v22 - 8) + 56))(v33, 1, 1, v22);
    }

    else
    {
      v23 = v34;
      v31 = *(v34 + 40);
      v24 = swift_getAssociatedTypeWitness();
      v25 = swift_getAssociatedTypeWitness();
      v26 = swift_getAssociatedConformanceWitness();
      v27 = swift_getAssociatedConformanceWitness();
      v35 = v24;
      v36 = v25;
      v37 = v26;
      v38 = v27;
      v28 = type metadata accessor for FileItemVersion(0, &v35);
      v29 = *(v28 - 8);
      v30 = v33;
      (*(v29 + 16))(v33, &v17[v31], v28);
      (*(v16 + 8))(v17, v23);
      return (*(v29 + 56))(v30, 0, 1, v28);
    }
  }

  return result;
}

uint64_t sub_1CF4A57A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v9 = type metadata accessor for SnapshotItem(255, *(*v5 + 760), *(*v5 + 776), a4);
  v10 = sub_1CF9E75D8();
  v22 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  result = sub_1CF056558();
  if (result)
  {
    goto LABEL_2;
  }

  result = sub_1CF48C08C(a1, v23, v24, v25, v12);
  if (!v6)
  {
    if ((*(v13 + 48))(v12, 1, v9) != 1)
    {
      (*(v13 + 32))(v16, v12, v9);
      v19 = &v16[*(v9 + 48)];
      v20 = *&v19[*(type metadata accessor for ItemMetadata(0) + 104)];
      WitnessTable = swift_getWitnessTable();
      sub_1CF06D940(v9, WitnessTable, &v26);
      result = (*(v13 + 8))(v16, v9);
      v18 = v26;
      *a5 = v20;
      goto LABEL_3;
    }

    result = (*(v22 + 8))(v12, v10);
LABEL_2:
    *a5 = 0;
    v18 = 4;
LABEL_3:
    *(a5 + 8) = v18;
  }

  return result;
}

uint64_t sub_1CF4A5A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v34 = a2;
  v35 = a1;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEBBE40;
  (*(v6 + 56))(v14, 1, 1, v5);
  v33 = v14;
  sub_1CEFE74D8(v14, v11);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) == 1)
  {
    v20 = v18;
    sub_1CF9E6048();
    if (v19(v11, 1, v5) != 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
  }

  (*(v6 + 16))(v17, v8, v5);
  *&v17[*(v15 + 20)] = v18;
  v21 = &v17[*(v15 + 24)];
  *v21 = "SQLDB: Update closest sync root for descendents of unignored item";
  *(v21 + 1) = 65;
  v21[16] = 2;
  v22 = v18;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v6 + 8))(v8, v5);
  v23 = sub_1CEFCCC44(v33, &unk_1EC4BED20, &unk_1CFA00700);
  v24 = &v32;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = v39;
  v27 = v40;
  *(&v32 - 6) = v39;
  *(&v32 - 5) = v27;
  v28 = v35;
  v29 = v34;
  *(&v32 - 4) = v36;
  *(&v32 - 3) = v29;
  *(&v32 - 2) = v28;
  *(&v32 - 1) = 200;
  v30 = v37;
  (*(v27 + 32))(sub_1CF4C06B8, v25);
  if (!v30)
  {
    LOBYTE(v24) = (*(v27 + 24))(v26, v27) > 199;
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v17, type metadata accessor for Signpost);
  return v24 & 1;
}

uint64_t sub_1CF4A5E88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA4C1F0);
  v6 = sub_1CF9E8268();
  v7 = [a1 bindObjectParameter_];

  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA4C220);
  v18 = sub_1CF9E8268();
  v19 = [a1 bindObjectParameter_];

  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  MEMORY[0x1D3868CC0](v20, v22);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0x2054494D494C0ALL, 0xE700000000000000);
  v30 = sub_1CF9E7F98();
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  return 0;
}

id sub_1CF4A606C(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v46 = a4;
  v44 = a2;
  v45 = a3;
  v43 = a1;
  v7 = sub_1CF9E6068();
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6[32])
  {
    return 0;
  }

  swift_getAssociatedTypeWitness();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v38 = v9;
    v40 = v18;
    v41 = v5;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDEBBE40;
    v21 = v42;
    (*(v42 + 56))(v15, 1, 1, v7);
    sub_1CEFE74D8(v15, v12);
    v22 = *(v21 + 48);
    v23 = v22(v12, 1, v7);
    v39 = v20;
    if (v23 == 1)
    {
      v24 = v20;
      v25 = v38;
      sub_1CF9E6048();
      if (v22(v12, 1, v7) != 1)
      {
        sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v25 = v38;
      (*(v21 + 32))(v38, v12, v7);
    }

    v26 = v40;
    (*(v21 + 16))(v40, v25, v7);
    v27 = v39;
    *(v26 + *(v16 + 20)) = v39;
    v28 = v26 + *(v16 + 24);
    *v28 = "SQLDB: Find closest sync root in parent chain";
    *(v28 + 8) = 45;
    *(v28 + 16) = 2;
    v29 = v27;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v21 + 8))(v25, v7);
    v30 = sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    v31 = MEMORY[0x1EEE9AC00](v30);
    v32 = v46;
    *(&v38 - 4) = v45;
    *(&v38 - 3) = v32;
    v33 = v43;
    *(&v38 - 2) = v6;
    *(&v38 - 1) = v33;
    v34 = v41;
    v35 = (*(v32 + 24))(sub_1CF4C06AC, v31);
    if (v34)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      return sub_1CF4C0A48(v26, type metadata accessor for Signpost);
    }

    else
    {
      v36 = v35;
      if ([v35 next])
      {
        v37 = [v36 unsignedLongLongAtIndex_];
      }

      else
      {
        v37 = 0;
      }

      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CF4C0A48(v26, type metadata accessor for Signpost);
      return v37;
    }
  }

  return result;
}

uint64_t sub_1CF4A6564(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000B6, 0x80000001CFA4BEE0);
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x455845444E49200ALL, 0xED00002059422044);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA4BFA0);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 32);
  v8 = swift_checkMetadataState();
  v9 = v7(a1, v8, v6);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA4BFD0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x202C64692ELL, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA4C010);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA4C040);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA4C070);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4C0A0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA4C0C0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000009ALL, 0x80000001CFA4C100);
  return 0;
}

uint64_t sub_1CF4A68B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a1;
  v6[2] = a3;
  v6[3] = a4;
  return (*(a4 + 24))(a5, v6);
}

uint64_t sub_1CF4A6900(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000073, 0x80000001CFA4DA50);
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x524548572020200ALL, 0xEF203D2064692045);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 32);
  v8 = swift_checkMetadataState();
  v9 = v7(a1, v8, v6);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4BCE0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x202C64692ELL, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x5F746E657261702ELL, 0xEC000000202C6469);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4DAD0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4BD20);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000085, 0x80000001CFA4DAF0);
  return 0;
}

char *sub_1CF4A6B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v119 = a2;
  v10 = *(*v5 + 760);
  v113 = *(*v5 + 776);
  v117 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v116 = *(AssociatedTypeWitness - 1);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v111 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v114 = &v102 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v102 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v115 = &v102 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v102 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v102 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v102 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v102 - v28;
  v124 = a4;
  v125 = a5;
  v126 = v5;
  v127 = a1;
  v30 = a5;
  v31 = *(a5 + 24);
  v32 = a4;
  v33 = a4;
  v34 = v30;
  v35 = v31(sub_1CF4C0B28, &v122, v33, v30, v27);
  if (v6)
  {
    return v29;
  }

  v105 = v25;
  v109 = v35;
  v106 = v22;
  v107 = v29;
  v36 = AssociatedTypeWitness;
  v124 = v32;
  v125 = v34;
  v126 = v5;
  v127 = v119;
  v108 = (v31)(sub_1CF4C0B28, &v122, v32, v34);
  v119 = 0;
  v38 = v109;
  if ([v109 next])
  {
    v39 = v36;
    v40 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
    v41 = v38;
    v29 = v105;
    v42 = v119;
    v40();
    v119 = v42;
    if (v42)
    {

      return v29;
    }

    v44 = v116;
    v43 = v107;
    (*(v116 + 32))(v107, v29, v39);
  }

  else
  {
    v43 = v107;
    sub_1CF046AB4();
    v39 = v36;
    v44 = v116;
  }

  if ([v108 next])
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v46 = *(AssociatedConformanceWitness[1] + 16);
    v29 = v108;
    v47 = v112;
    v48 = v119;
    v46();
    v119 = v48;
    if (v48)
    {
      (*(v44 + 8))(v107, v39);

      return v29;
    }

    v49 = v106;
    (*(v44 + 32))(v106, v47, v39);
    v43 = v107;
  }

  else
  {
    v49 = v106;
    sub_1CF046AB4();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  }

  v117 = *(AssociatedConformanceWitness[5] + 8);
  if (sub_1CF9E6868())
  {
    v29 = sub_1CF9E6DA8();

    v50 = *(v44 + 8);
    v50(v49, v39);
    v50(v43, v39);
    return v29;
  }

  v128 = sub_1CF9E6DA8();
  v112 = AssociatedConformanceWitness[8];
  v113 = AssociatedConformanceWitness + 8;
  v51 = (v112)(v39, AssociatedConformanceWitness);
  v102 = AssociatedConformanceWitness;
  if (v51)
  {
    v52 = v115;
  }

  else
  {
    v53 = *(v44 + 16);
    v52 = v115;
    v53(v115, v43, v39);
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    if ([v109 next])
    {
      v54 = *(AssociatedConformanceWitness[1] + 16);
      do
      {
        v55 = v109;
        v56 = v119;
        v54();
        v119 = v56;
        if (v56)
        {

          v29 = *(v116 + 8);
          (v29)(v106, v39);
          (v29)(v107, v39);
          v82 = v128;
          goto LABEL_37;
        }

        sub_1CF9E6E18();
      }

      while (([v55 next] & 1) != 0);
    }
  }

  v121 = sub_1CF9E6DA8();
  v57 = v116;
  v58 = *(v116 + 16);
  v59 = v114;
  v110 = (v116 + 16);
  v105 = v58;
  (v58)(v114, v106, v39);
  v60 = v102;
  if ((v112)(v39, v102))
  {
LABEL_23:

    v61 = *(v116 + 8);
    (v61)(v59, v39);
    v121, v62, v63, v64, v65, v66, v67, v68;
LABEL_35:
    (v61)(v106, v39);
    (v61)(v107, v39);
    return v128;
  }

  v69 = sub_1CF9E6E58();
  v104 = (v57 + 8);
  v103 = (v57 + 32);
  v70 = v111;
  while (1)
  {
    v71 = v128;
    v120 = v128;
    swift_getWitnessTable();
    result = sub_1CF9E7148();
    if ((v123 & 1) == 0)
    {
      if (v122 < 0)
      {
        __break(1u);
        return result;
      }

      v122 = sub_1CF9E6E98();
      v123 = v83;
      v124 = v84;
      v125 = v85;
      sub_1CF9E7778();
      swift_getWitnessTable();
      v86 = sub_1CF9E6E88();
      v71, v87, v88, v89, v90, v91, v92, v93;
      v128 = v86;
      v120 = v121;
      WitnessTable = swift_getWitnessTable();
LABEL_34:
      MEMORY[0x1D3868A50](&v122, v69, WitnessTable);
      v120 = v122;
      sub_1CF9E7BA8();
      swift_getWitnessTable();
      sub_1CF9E6E08();

      v61 = *v104;
      (*v104)(v59, v39);
      goto LABEL_35;
    }

    (v105)(v52, v59, v39);
    sub_1CF9E6E18();
    if (([v108 next] & 1) == 0)
    {
      v120 = v121;
      WitnessTable = swift_getWitnessTable();
      goto LABEL_34;
    }

    AssociatedTypeWitness = *(v60[1] + 16);
    v72 = v108;
    v73 = v119;
    AssociatedTypeWitness();
    v119 = v73;
    if (v73)
    {
      break;
    }

    v59 = v114;
    (*v104)(v114, v39);
    (*v103)(v59, v70, v39);
    v74 = (v112)(v39, v60);
    v52 = v115;
    if (v74)
    {
      goto LABEL_23;
    }
  }

  v29 = *v104;
  (*v104)(v114, v39);
  v121, v95, v96, v97, v98, v99, v100, v101;
  (v29)(v106, v39);
  (v29)(v107, v39);
  v82 = v71;
LABEL_37:
  v82, v75, v76, v77, v78, v79, v80, v81;
  return v29;
}

uint64_t sub_1CF4A76A0(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000040, 0x80000001CFA4BE20);
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x524548572020200ALL, 0xEF203D2064692045);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 32);
  v8 = swift_checkMetadataState();
  v9 = v7(a1, v8, v6);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4BCE0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4BD00);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4BD20);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4BD40);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x203D212064692ELL, 0xE700000000000000);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA4BE70);
  v19 = v7(a1, v8, v6);
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  return 0;
}

uint64_t sub_1CF4A79B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v49 = a7;
  v47 = a5;
  v48 = a6;
  v43 = a3;
  v44 = a4;
  v40 = a1;
  v41 = a2;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v9 + 56))(v17, 1, 1, v8);
  v39 = v17;
  sub_1CEFE74D8(v17, v14);
  v22 = *(v9 + 48);
  if (v22(v14, 1, v8) == 1)
  {
    v23 = v21;
    sub_1CF9E6048();
    if (v22(v14, 1, v8) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
  }

  (*(v9 + 16))(v20, v11, v8);
  *&v20[*(v18 + 20)] = v21;
  v24 = &v20[*(v18 + 24)];
  v25 = v49;
  *v24 = v48;
  *(v24 + 1) = v25;
  v24[16] = 2;
  v26 = v21;
  sub_1CF9E7468();
  sub_1CF9E6038();
  v28 = *(v9 + 8);
  v27 = v9 + 8;
  v28(v11, v8);
  v29 = sub_1CEFCCC44(v39, &unk_1EC4BED20, &unk_1CFA00700);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v31 = v45;
  v33 = v46;
  v32 = v47;
  *(&v39 - 6) = v44;
  *(&v39 - 5) = v32;
  v35 = v40;
  v34 = v41;
  *(&v39 - 4) = v42;
  *(&v39 - 3) = v35;
  *(&v39 - 2) = v34;
  v36 = (*(v32 + 24))(v31, v30);
  if (!v33)
  {
    v37 = v36;
    v27 = [v36 next];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v20, type metadata accessor for Signpost);
  return v27 & 1;
}

uint64_t sub_1CF4A7DE8(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA4BCA0);
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x524548572020200ALL, 0xEF203D2064692045);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 32);
  v8 = swift_checkMetadataState();
  v9 = a1;
  v10 = v7(a1, v8, v6);
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4BCE0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4BD00);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4BD20);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4BD40);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x203D212064692ELL, 0xE700000000000000);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4BD60);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x5F746E657261702ELL, 0xEE00203D21206469);
  v20 = v7(v9, v8, v6);
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xD000000000000055, 0x80000001CFA4BD80);
  if (*(a2 + 32))
  {
    v30 = 20550;
  }

  else
  {
    v30 = 21318;
  }

  MEMORY[0x1D3868CC0](v30, 0xE200000000000000);
  0xE200000000000000, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4BDE0);
  MEMORY[0x1D3868CC0](v30, 0xE200000000000000);
  0xE200000000000000, v38, v39, v40, v41, v42, v43, v44;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA39E10);
  v45 = sub_1CF9E7F98();
  v47 = v46;
  MEMORY[0x1D3868CC0](v45);
  v47, v48, v49, v50, v51, v52, v53, v54;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4BE00);
  MEMORY[0x1D3868CC0](v30, 0xE200000000000000);
  0xE200000000000000, v55, v56, v57, v58, v59, v60, v61;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA39DD0);
  v62 = sub_1CF9E7F98();
  v64 = v63;
  MEMORY[0x1D3868CC0](v62);
  v64, v65, v66, v67, v68, v69, v70, v71;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEB000000002E7472);
  MEMORY[0x1D3868CC0](v30, 0xE200000000000000);
  0xE200000000000000, v72, v73, v74, v75, v76, v77, v78;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v79 = sub_1CF9E7F98();
  v81 = v80;
  MEMORY[0x1D3868CC0](v79);
  v81, v82, v83, v84, v85, v86, v87, v88;
  MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF4A82F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a6;
  v42 = a4;
  v43 = a5;
  v40 = a3;
  v41 = a2;
  v39 = a1;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEBBE40;
  (*(v7 + 56))(v15, 1, 1, v6);
  sub_1CEFE74D8(v15, v12);
  v19 = *(v7 + 48);
  if (v19(v12, 1, v6) == 1)
  {
    v20 = v18;
    sub_1CF9E6048();
    if (v19(v12, 1, v6) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
  }

  v21 = v46;
  (*(v7 + 16))(v46, v9, v6);
  *(v21 + *(v16 + 20)) = v18;
  v22 = v21 + *(v16 + 24);
  *v22 = "SQLDB: check path-matching loop";
  *(v22 + 8) = 31;
  *(v22 + 16) = 2;
  v23 = v18;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v7 + 8))(v9, v6);
  sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
  v24 = v47;
  v25 = *(v47 + 32);
  result = swift_weakLoadStrong();
  if ((v25 & 1) == 0)
  {
    if (result)
    {
      v27 = 40;
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = 32;
LABEL_12:
  v28 = *(result + v27);

  v29 = *(v28 + 16);

  LOBYTE(v28) = (*(*v29 + 112))(v30);

  v32 = MEMORY[0x1EEE9AC00](v31);
  v33 = v44;
  v34 = v45;
  *(&v39 - 6) = v43;
  *(&v39 - 5) = v34;
  v35 = v39;
  *(&v39 - 4) = v24;
  *(&v39 - 3) = v35;
  *(&v39 - 16) = v28 & 1;
  *(&v39 - 15) = v40 & 1;
  v36 = v42;
  *(&v39 - 1) = v41;
  v37 = (*(v34 + 24))(sub_1CF4C064C, v32);
  if (!v33)
  {
    v38 = v37;
    v36 = [v37 next];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v21, type metadata accessor for Signpost);
  return v36 & 1;
}

uint64_t sub_1CF4A87F0(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, char a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007ELL, 0x80000001CFA4B720);
  v7 = 21318;
  if (*(a2 + 32))
  {
    v8 = 20550;
  }

  else
  {
    v8 = 21318;
  }

  if (!*(a2 + 32))
  {
    v7 = 20550;
  }

  v138 = v7;
  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);
  0xE200000000000000, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4B7A0);
  v139 = *(a2 + qword_1EDEBBD78 + 8);
  v140 = *(a2 + qword_1EDEBBD78);
  MEMORY[0x1D3868CC0]();
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA4B7C0);
  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);
  0xE200000000000000, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA4B800);
  swift_getAssociatedTypeWitness();
  v33 = *(swift_getAssociatedConformanceWitness() + 8);
  v34 = *(v33 + 32);
  v141 = swift_checkMetadataState();
  v35 = v34(a1);
  v37 = v36;
  MEMORY[0x1D3868CC0](v35);
  v37, v38, v39, v40, v41, v42, v43, v44;
  MEMORY[0x1D3868CC0](0xD0000000000000CDLL, 0x80000001CFA4B820);
  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);
  0xE200000000000000, v45, v46, v47, v48, v49, v50, v51;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v52 = sub_1CF9E7F98();
  v54 = v53;
  MEMORY[0x1D3868CC0](v52);
  v54, v55, v56, v57, v58, v59, v60, v61;
  MEMORY[0x1D3868CC0](0xD00000000000012DLL, 0x80000001CFA4B8F0);
  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);
  0xE200000000000000, v62, v63, v64, v65, v66, v67, v68;
  MEMORY[0x1D3868CC0](0x202020200A64695FLL, 0xED0000204E494F4ALL);
  MEMORY[0x1D3868CC0](v138, 0xE200000000000000);
  0xE200000000000000, v69, v70, v71, v72, v73, v74, v75;
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA4BA20);
  MEMORY[0x1D3868CC0](v138, 0xE200000000000000);
  0xE200000000000000, v76, v77, v78, v79, v80, v81, v82;
  MEMORY[0x1D3868CC0](0xD0000000000000C3, 0x80000001CFA4BA50);
  if (a4)
  {
    v83 = 41;
  }

  else
  {
    v83 = 0x204554414C4C4F43;
  }

  if (a4)
  {
    v84 = 0xE100000000000000;
  }

  else
  {
    v84 = 0xEF29455341434F4ELL;
  }

  MEMORY[0x1D3868CC0](v83, v84);
  v84, v85, v86, v87, v88, v89, v90, v91;
  MEMORY[0x1D3868CC0](0xD0000000000000D9, 0x80000001CFA4BB20);
  MEMORY[0x1D3868CC0](v138, 0xE200000000000000);
  0xE200000000000000, v92, v93, v94, v95, v96, v97, v98;
  MEMORY[0x1D3868CC0](0x202020200A64695FLL, 0xED0000204E494F4ALL);
  MEMORY[0x1D3868CC0](v140, v139);
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4BC00);
  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);
  0xE200000000000000, v99, v100, v101, v102, v103, v104, v105;
  MEMORY[0x1D3868CC0](0x572020200A64695FLL, 0xED00002045524548);
  if (a5)
  {
    v106 = 0x80000001CFA4BC50;
    v107 = 0xD000000000000018;
    v108 = a1;
    v109 = v141;
  }

  else
  {
    v108 = a1;
    v109 = v141;
    v110 = (v34)(a1, v141, v33);
    v112 = v111;
    MEMORY[0x1D3868CC0](v110);
    v112, v113, v114, v115, v116, v117, v118, v119;
    v107 = 0x203D212064692E73;
    v106 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v107, v106);
  v106, v120, v121, v122, v123, v124, v125, v126;
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA4BC20);
  v127 = (v34)(v108, v109, v33);
  v129 = v128;
  MEMORY[0x1D3868CC0](v127);
  v129, v130, v131, v132, v133, v134, v135, v136;
  return 0;
}

uint64_t sub_1CF4A8DC8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = 21318;
  }

  else
  {
    v3 = 20550;
  }

  if (*(a2 + 32))
  {
    v4 = 20550;
  }

  else
  {
    v4 = 21318;
  }

  MEMORY[0x1D3868CC0](v3, 0xE200000000000000);
  0xE200000000000000, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](0x6F687370616E735FLL, 0xE900000000000074);
  0xE000000000000000, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](v3, 0xE200000000000000);
  0xE200000000000000, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](6580575, 0xE300000000000000);
  0xE300000000000000, v26, v27, v28, v29, v30, v31, v32;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA4B610);
  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA4B660);
  MEMORY[0x1D3868CC0](v3, 0xE200000000000000);
  0xE200000000000000, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA4B680);
  MEMORY[0x1D3868CC0](v3, 0xE200000000000000);
  0xE200000000000000, v47, v48, v49, v50, v51, v52, v53;
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4B6B0);
  swift_getAssociatedTypeWitness();
  v54 = *(swift_getAssociatedConformanceWitness() + 8);
  v55 = *(v54 + 32);
  v56 = swift_checkMetadataState();
  v57 = v55(a1, v56, v54);
  v59 = v58;
  MEMORY[0x1D3868CC0](v57);
  v59, v60, v61, v62, v63, v64, v65, v66;
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4B6D0);
  swift_getAssociatedTypeWitness();
  v67 = *(swift_getAssociatedConformanceWitness() + 8);
  v68 = *(v67 + 32);
  v69 = swift_checkMetadataState();
  v70 = v68(a1, v69, v67);
  v72 = v71;
  MEMORY[0x1D3868CC0](v70);
  v72, v73, v74, v75, v76, v77, v78, v79;
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA4B6F0);
  return 0;
}

uint64_t sub_1CF4A91A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a4;
  v41 = a2;
  v42 = a3;
  v38 = a5;
  v39 = a1;
  v37 = *v5;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEBBE40;
  (*(v7 + 56))(v15, 1, 1, v6);
  sub_1CEFE74D8(v15, v12);
  v19 = *(v7 + 48);
  if (v19(v12, 1, v6) == 1)
  {
    v20 = v18;
    sub_1CF9E6048();
    if (v19(v12, 1, v6) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
  }

  v21 = v45;
  (*(v7 + 16))(v45, v9, v6);
  *(v21 + *(v16 + 20)) = v18;
  v22 = v21 + *(v16 + 24);
  *v22 = "SQLDB: lookupPathMatchingItemIDInCreationParentHierarchy";
  *(v22 + 8) = 56;
  *(v22 + 16) = 2;
  v23 = v18;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v7 + 8))(v9, v6);
  v24 = sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v43;
  v26 = v44;
  *(&v37 - 6) = v42;
  *(&v37 - 5) = v26;
  v28 = v39;
  *(&v37 - 4) = v40;
  *(&v37 - 3) = v28;
  *(&v37 - 2) = 1026;
  v29 = (*(v26 + 24))(sub_1CF4C061C, v25);
  if (!v27)
  {
    v30 = v29;
    v31 = [v29 next];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v33 = AssociatedTypeWitness;
    if (v31)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v35 = v38;
      (*(*(AssociatedConformanceWitness + 8) + 16))(v30, 0, v33);
      (*(*(v33 - 8) + 56))(v35, 0, 1, v33);
      v21 = v45;
    }

    else
    {
      (*(*(AssociatedTypeWitness - 8) + 56))(v38, 1, 1, AssociatedTypeWitness);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF4C0A48(v21, type metadata accessor for Signpost);
}

uint64_t sub_1CF4A96D0(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000054, 0x80000001CFA4B260);
  if (*(a2 + 32))
  {
    v3 = 20550;
  }

  else
  {
    v3 = 21318;
  }

  MEMORY[0x1D3868CC0](v3, 0xE200000000000000);
  0xE200000000000000, v4, v5, v6, v7, v8, v9, v10;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4B2C0);
  MEMORY[0x1D3868CC0](v3, 0xE200000000000000);
  0xE200000000000000, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA4B2E0);
  v18 = *(a2 + qword_1EDEBBD78);
  v19 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v18, v19);
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA4B310);
  MEMORY[0x1D3868CC0](v3, 0xE200000000000000);
  0xE200000000000000, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0xD00000000000004BLL, 0x80000001CFA4B360);
  MEMORY[0x1D3868CC0](v3, 0xE200000000000000);
  0xE200000000000000, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA4B3B0);
  swift_getAssociatedTypeWitness();
  v34 = *(swift_getAssociatedConformanceWitness() + 8);
  v35 = *(v34 + 32);
  v36 = swift_checkMetadataState();
  v37 = v35(a1, v36, v34);
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA4B3E0);
  MEMORY[0x1D3868CC0](v3, 0xE200000000000000);
  0xE200000000000000, v47, v48, v49, v50, v51, v52, v53;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v54 = sub_1CF9E7F98();
  v56 = v55;
  MEMORY[0x1D3868CC0](v54);
  v56, v57, v58, v59, v60, v61, v62, v63;
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA4B400);
  MEMORY[0x1D3868CC0](v3, 0xE200000000000000);
  0xE200000000000000, v64, v65, v66, v67, v68, v69, v70;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4B2C0);
  MEMORY[0x1D3868CC0](v3, 0xE200000000000000);
  0xE200000000000000, v71, v72, v73, v74, v75, v76, v77;
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA4B440);
  MEMORY[0x1D3868CC0](v18, v19);
  MEMORY[0x1D3868CC0](0xD00000000000006DLL, 0x80000001CFA4B490);
  MEMORY[0x1D3868CC0](v3, 0xE200000000000000);
  0xE200000000000000, v78, v79, v80, v81, v82, v83, v84;
  MEMORY[0x1D3868CC0](0xD00000000000006CLL, 0x80000001CFA4B500);
  v85 = sub_1CF9E7F98();
  v87 = v86;
  MEMORY[0x1D3868CC0](v85);
  v87, v88, v89, v90, v91, v92, v93, v94;
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA4B570);
  MEMORY[0x1D3868CC0](v3, 0xE200000000000000);
  0xE200000000000000, v95, v96, v97, v98, v99, v100, v101;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v102 = sub_1CF9E7F98();
  v104 = v103;
  MEMORY[0x1D3868CC0](v102);
  v104, v105, v106, v107, v108, v109, v110, v111;
  MEMORY[0x1D3868CC0](0xD00000000000005FLL, 0x80000001CFA4B590);
  v112 = sub_1CF9E7F98();
  v114 = v113;
  MEMORY[0x1D3868CC0](v112);
  v114, v115, v116, v117, v118, v119, v120, v121;
  MEMORY[0x1D3868CC0](0x494C0A30203D2120, 0xED0000312054494DLL);
  return 0;
}

uint64_t sub_1CF4A9BF8(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000053, 0x80000001CFA4B070);
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA4B0D0);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 32);
  v8 = swift_checkMetadataState();
  v9 = v7(a1, v8, v6);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD00000000000005FLL, 0x80000001CFA4B100);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000073, 0x80000001CFA4B160);
  v19 = v7(a1, v8, v6);
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](0xD00000000000003BLL, 0x80000001CFA4B1E0);
  v29 = v7(a1, v8, v6);
  v31 = v30;
  MEMORY[0x1D3868CC0](v29);
  v31, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x1D3868CC0](0x312054494D494C0ALL, 0xE800000000000000);
  return 0;
}

uint64_t sub_1CF4A9ECC(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v184 = 0;
  v185 = 0xE000000000000000;
  sub_1CF9E7948();
  v188 = 0;
  v189 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x5443454C45532020, 0xEC0000002E747220);
  v180 = *(a2 + 32);
  if (*(a2 + 32))
  {
    v11 = 21318;
  }

  else
  {
    v11 = 20550;
  }

  MEMORY[0x1D3868CC0](v11, 0xE200000000000000);
  0xE200000000000000, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000056, 0x80000001CFA4AED0);
  v187 = MEMORY[0x1E69E6530];
  v184 = a3;
  v19 = sub_1CEFF8EA0(&v184);
  v21 = v20;
  sub_1CEFCCC44(&v184, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v21)
  {
    v181 = a5;
    v182 = a1;
    v183 = a6;
    MEMORY[0x1D3868CC0](v19, v21);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x4E4120202020200ALL, 0xED00002E74722044);
    MEMORY[0x1D3868CC0](v11, 0xE200000000000000);
    0xE200000000000000, v29, v30, v31, v32, v33, v34, v35;
    MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4AF30);
    MEMORY[0x1D3868CC0](v11, 0xE200000000000000);
    0xE200000000000000, v36, v37, v38, v39, v40, v41, v42;
    MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
    v184 = 0x40000;
    v43 = sub_1CF9E7F98();
    v45 = v44;
    MEMORY[0x1D3868CC0](v43);
    v45, v46, v47, v48, v49, v50, v51, v52;
    MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4AF50);
    MEMORY[0x1D3868CC0](v11, 0xE200000000000000);
    0xE200000000000000, v53, v54, v55, v56, v57, v58, v59;
    MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4ACA0);
    v184 = 16;
    v60 = sub_1CF9E7F98();
    v62 = v61;
    MEMORY[0x1D3868CC0](v60);
    v62, v63, v64, v65, v66, v67, v68, v69;
    MEMORY[0x1D3868CC0](540877088, 0xE400000000000000);
    v184 = 16;
    v70 = sub_1CF9E7F98();
    v72 = v71;
    MEMORY[0x1D3868CC0](v70);
    v72, v73, v74, v75, v76, v77, v78, v79;
    MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4AF70);
    MEMORY[0x1D3868CC0](v11, 0xE200000000000000);
    0xE200000000000000, v80, v81, v82, v83, v84, v85, v86;
    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA4AF90);
    MEMORY[0x1D3868CC0](v11, 0xE200000000000000);
    0xE200000000000000, v87, v88, v89, v90, v91, v92, v93;
    MEMORY[0x1D3868CC0](0xD000000000000040, 0x80000001CFA4AFB0);
    v184 = MEMORY[0x1E69E7CC0];
    sub_1CF680C9C(0, 12, 0);
    v94 = v184;
    v95 = *(v184 + 16);
    v96 = 0x20u;
    do
    {
      v97 = *(&unk_1F4BED230 + v96);
      v184 = v94;
      v98 = *(v94 + 24);
      if (v95 >= v98 >> 1)
      {
        sub_1CF680C9C((v98 > 1), v95 + 1, 1);
        v94 = v184;
      }

      *(v94 + 16) = v95 + 1;
      *(v94 + 8 * v95 + 32) = v97;
      v96 += 8;
      ++v95;
    }

    while (v96 != 128);
    v184 = v94;
    v185 = sub_1CF067ADC;
    v186 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
    sub_1CEFE4E68();
    v99 = sub_1CF9E6C18();
    v101 = v100;

    MEMORY[0x1D3868CC0](v99, v101);
    v101, v102, v103, v104, v105, v106, v107, v108;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    MEMORY[0x1D3868CC0](40, 0xE100000000000000);
    0xE100000000000000, v109, v110, v111, v112, v113, v114, v115;
    MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4B000);
    MEMORY[0x1D3868CC0](v11, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA39DD0);
    v184 = 2;
    v116 = sub_1CF9E7F98();
    v118 = v117;
    MEMORY[0x1D3868CC0](v116);
    v118, v119, v120, v121, v122, v123, v124, v125;
    MEMORY[0x1D3868CC0](0x20202020200A2929, 0xEC00000020444E41);
    swift_getAssociatedTypeWitness();
    v126 = *(swift_getAssociatedConformanceWitness() + 8);
    v127 = *(v126 + 32);
    v128 = swift_checkMetadataState();
    v129 = v127(a1, v128, v126);
    v131 = v130;
    MEMORY[0x1D3868CC0](v129);
    v131, v132, v133, v134, v135, v136, v137, v138;
    MEMORY[0x1D3868CC0](0x28204E4920, 0xE500000000000000);
    v184 = 3044466;
    v185 = 0xE300000000000000;
    if (v180)
    {
      v139 = 20550;
    }

    else
    {
      v139 = 21318;
    }

    MEMORY[0x1D3868CC0](v139, 0xE200000000000000);
    MEMORY[0x1D3868CC0](6580575, 0xE300000000000000);
    v140 = v185;
    v141 = sub_1CF4BF1B4(v184, v185, *(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8), 49, 0xE100000000000000);
    v143 = v142;
    v140, v142, v144, v145, v146, v147, v148, v149;
    MEMORY[0x1D3868CC0](v141, v143);
    v143, v150, v151, v152, v153, v154, v155, v156;
    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4B020);
    v157 = [a1 bindLongParameter_];
    v158 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v160 = v159;

    MEMORY[0x1D3868CC0](v158, v160);
    v160, v161, v162, v163, v164, v165, v166, v167;
    MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3A850);
    v168 = [v182 bindLongParameter_];
    v169 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v171 = v170;

    MEMORY[0x1D3868CC0](v169, v171);
    v171, v172, v173, v174, v175, v176, v177, v178;
    return v188;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF4AA69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v84 = a8;
  v82 = a6;
  v76 = a5;
  v86 = a4;
  v78 = a3;
  v79 = a2;
  v77 = a1;
  v89 = *v11;
  v90 = a7;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v75 - v20;
  v22 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v75 = a11;
  v87 = a9;
  v88 = a10;
  v24 = qword_1EDEBBE40;
  (*(v13 + 56))(v21, 1, 1, v12);
  sub_1CEFE74D8(v21, v18);
  v25 = *(v13 + 48);
  if (v25(v18, 1, v12) == 1)
  {
    v26 = v24;
    sub_1CF9E6048();
    if (v25(v18, 1, v12) != 1)
    {
      sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
  }

  v27 = v85;
  (*(v13 + 16))(v85, v15, v12);
  *(v27 + *(v22 + 20)) = v24;
  v28 = v27 + *(v22 + 24);
  v29 = v88;
  *v28 = v87;
  *(v28 + 8) = v29;
  *(v28 + 16) = 2;
  v30 = v24;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v13 + 8))(v15, v12);
  sub_1CEFCCC44(v21, &unk_1EC4BED20, &unk_1CFA00700);
  v31 = 100;
  if ((v76 & 1) == 0)
  {
    v31 = v86;
  }

  v86 = v31;
  v32 = v89[98];
  v33 = v89[96];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = sub_1CF9E6DA8();
  v36 = sub_1CF9E6DF8();
  v81 = v30;
  if (v36)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v45 = sub_1CF981D64(v35, AssociatedTypeWitness, *(AssociatedConformanceWitness + 40));
  }

  else
  {
    v45 = MEMORY[0x1E69E7CD0];
  }

  v46 = v84;
  v47 = v90;
  v35, v37, v38, v39, v40, v41, v42, v43;
  v94 = v45;
  v49 = MEMORY[0x1EEE9AC00](v48);
  *(&v75 - 8) = v47;
  *(&v75 - 7) = v46;
  v50 = v77;
  v51 = v78;
  *(&v75 - 6) = v80;
  *(&v75 - 5) = v51;
  *(&v75 - 4) = v50;
  v52 = v86;
  *(&v75 - 3) = v79;
  v74 = v52;
  v53 = v83;
  v54 = (*(v46 + 24))(v75, v49);
  if (v53)
  {
    v45, v55, v56, v57, v58, v59, v60, v61;
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v27, type metadata accessor for Signpost);
  }

  else
  {
    v62 = v54;
    v92 = 0;
    v93 = 1;
    if ([v54 next])
    {
      do
      {
        v63 = objc_autoreleasePoolPush();
        v64 = v89[95];
        v65 = v89[97];
        v74 = v46;
        sub_1CF4AB2B8(&v94, v62, &v92, v64, v33, v90, v65, v32);
        objc_autoreleasePoolPop(v63);
      }

      while (([v62 next] & 1) != 0);
      v45 = v94;
    }

    swift_getAssociatedConformanceWitness();

    if (sub_1CF9E6FD8() < v86)
    {
      v92 = 0;
      v93 = 1;
    }

    v91 = v45;
    sub_1CF9E7068();
    swift_getWitnessTable();
    v33 = sub_1CF9E6E88();
    v45, v66, v67, v68, v69, v70, v71, v72;

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CF4C0A48(v27, type metadata accessor for Signpost);
  }

  return v33;
}

uint64_t sub_1CF4AAD14(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v129 = 0;
  v130 = 0xE000000000000000;
  sub_1CF9E7948();
  v135 = 0;
  v136 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA4AD50);
  v9 = *(a2 + 32);
  if (*(a2 + 32))
  {
    v10 = 21318;
  }

  else
  {
    v10 = 20550;
  }

  MEMORY[0x1D3868CC0](v10, 0xE200000000000000);
  0xE200000000000000, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA4AD80);
  MEMORY[0x1D3868CC0](v10, 0xE200000000000000);
  0xE200000000000000, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA4ADC0);
  v25 = MEMORY[0x1E69E6530];
  v26 = sub_1CF9E7F98();
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4ADF0);
  v133 = 40;
  v134 = 0xE100000000000000;
  v130 = sub_1CF067ADC;
  v131 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v36 = sub_1CF9E6C18();
  v38 = v37;
  MEMORY[0x1D3868CC0](v36);
  v38, v39, v40, v41, v42, v43, v44, v45;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v46, v47, v48, v49, v50, v51, v52;
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA4AE10);
  v132 = v25;
  v129 = a3;
  v53 = sub_1CEFF8EA0(&v129);
  v55 = v54;
  sub_1CEFCCC44(&v129, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v55)
  {
    MEMORY[0x1D3868CC0](v53, v55);
    v55, v56, v57, v58, v59, v60, v61, v62;
    MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA4AE40);
    v129 = 0x40000;
    v63 = sub_1CF9E7F98();
    v65 = v64;
    MEMORY[0x1D3868CC0](v63);
    v65, v66, v67, v68, v69, v70, v71, v72;
    MEMORY[0x1D3868CC0](0x2020200A30203D20, 0xED000020444E4120);
    swift_getAssociatedTypeWitness();
    v73 = *(swift_getAssociatedConformanceWitness() + 8);
    v74 = *(v73 + 32);
    v75 = swift_checkMetadataState();
    v76 = v74(a1, v75, v73);
    v78 = v77;
    MEMORY[0x1D3868CC0](v76);
    v78, v79, v80, v81, v82, v83, v84, v85;
    MEMORY[0x1D3868CC0](0x28204E4920, 0xE500000000000000);
    v129 = 3044466;
    v130 = 0xE300000000000000;
    if (v9)
    {
      v86 = 20550;
    }

    else
    {
      v86 = 21318;
    }

    MEMORY[0x1D3868CC0](v86, 0xE200000000000000);
    MEMORY[0x1D3868CC0](6580575, 0xE300000000000000);
    v87 = v130;
    v88 = sub_1CF4BF1B4(v129, v130, *(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8), 49, 0xE100000000000000);
    v90 = v89;
    v87, v89, v91, v92, v93, v94, v95, v96;
    MEMORY[0x1D3868CC0](v88, v90);
    v90, v97, v98, v99, v100, v101, v102, v103;
    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4AE70);
    v104 = [a1 bindLongParameter_];
    v105 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v107 = v106;

    MEMORY[0x1D3868CC0](v105, v107);
    v107, v108, v109, v110, v111, v112, v113, v114;
    MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA38C10);
    v115 = [a1 bindLongParameter_];
    v116 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v118 = v117;

    MEMORY[0x1D3868CC0](v116, v118);
    v118, v119, v120, v121, v122, v123, v124, v125;
    return v135;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

id sub_1CF4AB2B8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a1;
  v21 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v13 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v14 = a2;
  v15 = v22;
  result = v13();
  if (!v15)
  {
    sub_1CF9E7068();
    sub_1CF9E6FF8();
    (*(v19 + 8))(v12, AssociatedTypeWitness);
    result = [v14 integerAtIndex_];
    v17 = v21;
    *v21 = result;
    *(v17 + 8) = 0;
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF4AB488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a7;
  v53 = a8;
  v50 = a6;
  v44 = a5;
  v45 = a4;
  v46 = a1;
  v47 = a3;
  v48 = a2;
  v43 = *v8;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v19);
  v56 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v10 + 56))(v18, 1, 1, v9);
  sub_1CEFE74D8(v18, v15);
  v22 = *(v10 + 48);
  if (v22(v15, 1, v9) == 1)
  {
    v23 = v21;
    sub_1CF9E6048();
    if (v22(v15, 1, v9) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
  }

  v24 = v56;
  (*(v10 + 16))(v56, v12, v9);
  *(v24 + *(v19 + 20)) = v21;
  v25 = v24 + *(v19 + 24);
  *v25 = "SQLDB: list not yet created descendents";
  *(v25 + 8) = 39;
  *(v25 + 16) = 2;
  v26 = v21;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v10 + 8))(v12, v9);
  v27 = sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
  v28 = &v42;
  if (v44)
  {
    v29 = 100;
  }

  else
  {
    v29 = v45;
  }

  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = v52;
  v31 = v53;
  *(&v42 - 8) = v52;
  *(&v42 - 7) = v31;
  v33 = v46;
  v34 = v47;
  *(&v42 - 6) = v49;
  *(&v42 - 5) = v34;
  *(&v42 - 4) = v33;
  *(&v42 - 3) = v48;
  *(&v42 - 2) = v29;
  v35 = v51;
  v36 = (*(v31 + 24))(sub_1CF4C05A0, v30);
  if (!v35)
  {
    v37 = v36;
    v54 = 0;
    v55 = 1;
    MEMORY[0x1EEE9AC00](v36);
    v38 = v43;
    *(&v42 - 4) = *(v43 + 760);
    *(&v42 - 6) = v32;
    *(&v42 - 5) = *(v38 + 776);
    *(&v42 - 3) = v31;
    *(&v42 - 2) = &v54;
    *(&v42 - 1) = v39;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v28 = sub_1CF4C1FE4(sub_1CF381BA0, (&v42 - 10), AssociatedTypeWitness);
    sub_1CF9E6DF8();
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v24, type metadata accessor for Signpost);
  return v28;
}

uint64_t sub_1CF4ABA10(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v150 = 0;
  v151 = 0xE000000000000000;
  sub_1CF9E7948();
  v154 = 0;
  v155 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD0000000000000EELL, 0x80000001CFA4AB50);
  v9 = *(a2 + 32);
  if (*(a2 + 32))
  {
    v10 = 20550;
  }

  else
  {
    v10 = 21318;
  }

  MEMORY[0x1D3868CC0](v10, 0xE200000000000000);
  0xE200000000000000, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0xD000000000000052, 0x80000001CFA4AC40);
  v153 = MEMORY[0x1E69E6530];
  v150 = a3;
  v147 = a1;
  v18 = sub_1CEFF8EA0(&v150);
  v20 = v19;
  sub_1CEFCCC44(&v150, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v20)
  {
    MEMORY[0x1D3868CC0](v18, v20);
    v20, v21, v22, v23, v24, v25, v26, v27;
    MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEB000000002E7472);
    MEMORY[0x1D3868CC0](v10, 0xE200000000000000);
    0xE200000000000000, v28, v29, v30, v31, v32, v33, v34;
    MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
    v150 = 0x40000;
    v35 = sub_1CF9E7F98();
    v37 = v36;
    MEMORY[0x1D3868CC0](v35);
    v37, v38, v39, v40, v41, v42, v43, v44;
    MEMORY[0x1D3868CC0](0x2020200A30203D20, 0xEF2E747220444E41);
    MEMORY[0x1D3868CC0](v10, 0xE200000000000000);
    0xE200000000000000, v45, v46, v47, v48, v49, v50, v51;
    MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4ACA0);
    v150 = 16;
    v52 = sub_1CF9E7F98();
    v54 = v53;
    MEMORY[0x1D3868CC0](v52);
    v54, v55, v56, v57, v58, v59, v60, v61;
    MEMORY[0x1D3868CC0](540877088, 0xE400000000000000);
    v150 = 16;
    v62 = sub_1CF9E7F98();
    v64 = v63;
    MEMORY[0x1D3868CC0](v62);
    v64, v65, v66, v67, v68, v69, v70, v71;
    MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3BAD0);
    v150 = MEMORY[0x1E69E7CC0];
    sub_1CF680C9C(0, 12, 0);
    v72 = v150;
    v73 = *(v150 + 16);
    v74 = 0x20u;
    do
    {
      v75 = *(&unk_1F4BED230 + v74);
      v150 = v72;
      v76 = *(v72 + 24);
      if (v73 >= v76 >> 1)
      {
        sub_1CF680C9C((v76 > 1), v73 + 1, 1);
        v72 = v150;
      }

      *(v72 + 16) = v73 + 1;
      *(v72 + 8 * v73 + 32) = v75;
      v74 += 8;
      ++v73;
    }

    while (v74 != 128);
    v150 = v72;
    v151 = sub_1CF067ADC;
    v152 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
    sub_1CEFE4E68();
    v77 = sub_1CF9E6C18();
    v79 = v78;

    MEMORY[0x1D3868CC0](v77, v79);
    v79, v80, v81, v82, v83, v84, v85, v86;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    MEMORY[0x1D3868CC0](40, 0xE100000000000000);
    0xE100000000000000, v87, v88, v89, v90, v91, v92, v93;
    MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEB000000002E7472);
    if (v9)
    {
      v94 = 21318;
    }

    else
    {
      v94 = 20550;
    }

    MEMORY[0x1D3868CC0](v94, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4ACC0);
    swift_getAssociatedTypeWitness();
    v95 = *(swift_getAssociatedConformanceWitness() + 8);
    v96 = *(v95 + 32);
    v97 = swift_checkMetadataState();
    v98 = v96(v147, v97, v95);
    v100 = v99;
    MEMORY[0x1D3868CC0](v98);
    v100, v101, v102, v103, v104, v105, v106, v107;
    MEMORY[0x1D3868CC0](0x28204E4920, 0xE500000000000000);
    v150 = 3044466;
    v151 = 0xE300000000000000;
    MEMORY[0x1D3868CC0](v10, 0xE200000000000000);
    MEMORY[0x1D3868CC0](6580575, 0xE300000000000000);
    v108 = v151;
    v109 = sub_1CF4BF1B4(v150, v151, *(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8), 49, 0xE100000000000000);
    v111 = v110;
    v108, v110, v112, v113, v114, v115, v116, v117;
    MEMORY[0x1D3868CC0](v109, v111);
    v111, v118, v119, v120, v121, v122, v123, v124;
    MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4ACE0);
    v125 = [v147 bindLongParameter_];
    v126 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v128 = v127;

    MEMORY[0x1D3868CC0](v126, v128);
    v128, v129, v130, v131, v132, v133, v134, v135;
    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
    v150 = a6;
    v136 = sub_1CF9E7F98();
    v138 = v137;
    MEMORY[0x1D3868CC0](v136);
    v138, v139, v140, v141, v142, v143, v144, v145;
    return v154;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF4AC0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  TupleTypeMetadata2 = a2;
  v45 = a1;
  v52 = *v4;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDEBBE40;
  (*(v6 + 56))(v14, 1, 1, v5);
  sub_1CEFE74D8(v14, v11);
  v18 = *(v6 + 48);
  if (v18(v11, 1, v5) == 1)
  {
    v19 = v17;
    sub_1CF9E6048();
    if (v18(v11, 1, v5) != 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
  }

  v20 = v51;
  (*(v6 + 16))(v51, v8, v5);
  *(v20 + *(v15 + 20)) = v17;
  v21 = v20 + *(v15 + 24);
  *v21 = "SQLDB: list packages";
  *(v21 + 8) = 20;
  *(v21 + 16) = 2;
  v22 = v17;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v6 + 8))(v8, v5);
  v23 = sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v49;
  v25 = v50;
  *(&v44 - 6) = v49;
  *(&v44 - 5) = v25;
  v27 = v45;
  *(&v44 - 4) = v46;
  *(&v44 - 3) = v27;
  v43 = 100;
  v28 = v48;
  v29 = (*(v25 + 24))(sub_1CF4C0588, v24);
  if (!v28)
  {
    v30 = v29;
    v48 = v22;
    v31 = v52[97];
    v32 = v52[95];
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v22 = sub_1CF9E6DA8();
    v54 = v22;
    v53 = 0;
    if ([v30 next])
    {
      do
      {
        v33 = objc_autoreleasePoolPush();
        v34 = v52[96];
        v43 = v25;
        sub_1CF4AC7B0(&v53, v30, &v54, v32, v34, v26, v31);
        objc_autoreleasePoolPop(v33);
      }

      while (([v30 next] & 1) != 0);
      v22 = v54;
    }

    sub_1CF9E6DF8();
    v22, v35, v36, v37, v38, v39, v40, v41;
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CF4C0A48(v20, type metadata accessor for Signpost);
  return v22;
}

uint64_t sub_1CF4AC65C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA4AAC0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA4AAF0);
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v17 = sub_1CF9E7F98();
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  return 0;
}

void sub_1CF4AC7B0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = (&v33 - v10);
  v34 = *(AssociatedTypeWitness - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v33 - v14;
  *a1 = [a2 longAtIndex_];
  v16 = [a2 stringAtIndex_];
  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;

  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  v21 = *(v20 + 16);
  v22 = a2;
  v23 = v37;
  v21(v22, 3, AssociatedTypeWitness, v20);
  if (v23)
  {
    v19, v24, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    v31 = v34;
    v32 = *(TupleTypeMetadata2 + 48);
    *v11 = v17;
    v11[1] = v19;
    (*(v31 + 32))(v11 + v32, v15, AssociatedTypeWitness);
    sub_1CF9E6E58();
    sub_1CF9E6E18();
  }
}

id sub_1CF4AC9EC(id a1, uint64_t a2, uint64_t a3)
{
  v8[2] = a2;
  v8[3] = a3;
  v5 = (*(a3 + 24))(sub_1CF4C057C, v8, a2);
  if (!v3)
  {
    v6 = v5;
    if ([v5 next])
    {
      a1 = [v6 longAtIndex_];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

unint64_t sub_1CF4ACAA4(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  return 0xD000000000000017;
}

void sub_1CF4ACB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a5;
  v59 = a4;
  v57 = a3;
  v54 = a1;
  v55 = a2;
  v11 = *v7;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v49 - v19;
  v20 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v20);
  v56 = v7;
  if (*(v7 + 32) == 1)
  {
    v49 = v21;
    v58 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = a6;
    v52 = a7;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v23 = qword_1EDEBBE40;
    v24 = v60;
    (*(v13 + 56))(v60, 1, 1, v12);
    sub_1CEFE74D8(v24, v17);
    v25 = *(v13 + 48);
    v26 = v25(v17, 1, v12);
    v27 = v53;
    v50 = v23;
    if (v26 == 1)
    {
      v28 = v23;
      sub_1CF9E6048();
      v29 = v25(v17, 1, v12);
      v30 = v59;
      if (v29 != 1)
      {
        sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v13 + 32))(v53, v17, v12);
      v30 = v59;
    }

    v31 = v58;
    (*(v13 + 16))(v58, v27, v12);
    v32 = v49;
    v33 = v50;
    *&v31[*(v49 + 20)] = v50;
    v34 = &v31[*(v32 + 24)];
    *v34 = "SQLDB: get mostRecentItems";
    *(v34 + 1) = 26;
    v34[16] = 2;
    v33;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v13 + 8))(v27, v12);
    v35 = sub_1CEFCCC44(v60, &unk_1EC4BED20, &unk_1CFA00700);
    v36 = MEMORY[0x1EEE9AC00](v35);
    v38 = v51;
    v37 = v52;
    *(&v49 - 6) = v51;
    *(&v49 - 5) = v37;
    v40 = v54;
    v39 = v55;
    *(&v49 - 4) = v56;
    *(&v49 - 3) = v40;
    v48 = v39;
    v41 = (*(v37 + 24))(sub_1CF4C0564, v36);
    if (v8)
    {
      sub_1CF9E7458();
    }

    else
    {
      v42 = v41;
      if ([v41 next])
      {
        do
        {
          v43 = objc_autoreleasePoolPush();
          v44 = v11[95];
          v45 = v11[96];
          v46 = v11[97];
          v48 = v37;
          sub_1CF4ADAA4(v42, v30, v61, v44, v45, v38, v46);
          objc_autoreleasePoolPop(v43);
        }

        while (([v42 next] & 1) != 0);
      }

      sub_1CF9E7458();
    }

    v47 = v58;
    sub_1CF9E6038();
    sub_1CF4C0A48(v47, type metadata accessor for Signpost);
  }
}

uint64_t sub_1CF4AD020(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA4A980);
  if (*(a2 + 32))
  {
    v7 = 20550;
  }

  else
  {
    v7 = 21318;
  }

  MEMORY[0x1D3868CC0](v7, 0xE200000000000000);
  0xE200000000000000, v8, v9, v10, v11, v12, v13, v14;
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4A9C0);
  v15 = sub_1CF9E5C48();
  v16 = [a1 bindObjectParameter_];

  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;

  MEMORY[0x1D3868CC0](v17, v19);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA4AA00);
  v27 = sub_1CF9E7F98();
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  v37 = sub_1CF4BFA00(0x2E70616E73, 0xE500000000000000, xmmword_1CFA06070);
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEB000000002E7472);
  MEMORY[0x1D3868CC0](v7, 0xE200000000000000);
  0xE200000000000000, v47, v48, v49, v50, v51, v52, v53;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4A870);
  v54 = sub_1CF9E7F98();
  v56 = v55;
  MEMORY[0x1D3868CC0](v54);
  v56, v57, v58, v59, v60, v61, v62, v63;
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v64 = sub_1CF9E7F98();
  v66 = v65;
  MEMORY[0x1D3868CC0](v64);
  v66, v67, v68, v69, v70, v71, v72, v73;
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA4AA20);
  v74 = sub_1CF9E7F98();
  v76 = v75;
  MEMORY[0x1D3868CC0](v74);
  v76, v77, v78, v79, v80, v81, v82, v83;
  MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA4AA50);
  v84 = [a1 bindLongParameter_];
  v85 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v87 = v86;

  MEMORY[0x1D3868CC0](v85, v87);
  v87, v88, v89, v90, v91, v92, v93, v94;
  return 0;
}

void sub_1CF4AD3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a4;
  v57 = a3;
  v55 = a2;
  v53 = a1;
  v10 = *v6;
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v47 - v18;
  v19 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v19);
  v54 = v6;
  if (*(v6 + 32) == 1)
  {
    v48 = v20;
    v56 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = a5;
    v51 = a6;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDEBBE40;
    v23 = v58;
    (*(v12 + 56))(v58, 1, 1, v11);
    sub_1CEFE74D8(v23, v16);
    v24 = *(v12 + 48);
    v25 = v24(v16, 1, v11);
    v26 = v52;
    v49 = v22;
    if (v25 == 1)
    {
      v27 = v22;
      sub_1CF9E6048();
      v28 = v24(v16, 1, v11);
      v29 = v57;
      if (v28 != 1)
      {
        sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v12 + 32))(v52, v16, v11);
      v29 = v57;
    }

    v30 = v56;
    (*(v12 + 16))(v56, v26, v11);
    v31 = v48;
    v32 = v49;
    *&v30[*(v48 + 20)] = v49;
    v33 = &v30[*(v31 + 24)];
    *v33 = "SQLDB: get last_used unindexedItems";
    *(v33 + 1) = 35;
    v33[16] = 2;
    v32;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v12 + 8))(v26, v11);
    v34 = sub_1CEFCCC44(v58, &unk_1EC4BED20, &unk_1CFA00700);
    v35 = MEMORY[0x1EEE9AC00](v34);
    v37 = v50;
    v36 = v51;
    *(&v47 - 4) = v50;
    *(&v47 - 3) = v36;
    v45 = v54;
    v46 = v53;
    v38 = (*(v36 + 24))(sub_1CF4C0558, v35);
    if (v7)
    {
      sub_1CF9E7458();
    }

    else
    {
      v39 = v38;
      if ([v38 next])
      {
        do
        {
          v40 = objc_autoreleasePoolPush();
          v41 = v10[95];
          v42 = v10[96];
          v43 = v10[97];
          v45 = v36;
          sub_1CF4ADAA4(v39, v29, v59, v41, v42, v37, v43);
          objc_autoreleasePoolPop(v40);
        }

        while (([v39 next] & 1) != 0);
      }

      sub_1CF9E7458();
    }

    v44 = v56;
    sub_1CF9E6038();
    sub_1CF4C0A48(v44, type metadata accessor for Signpost);
  }
}

uint64_t sub_1CF4AD8F0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEA00000000002E74);
  if (*(a2 + 32))
  {
    v6 = 20550;
  }

  else
  {
    v6 = 21318;
  }

  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);
  0xE200000000000000, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0x200A64695FLL, 0xE500000000000000);
  v14 = sub_1CF4BFAC0();
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4A8C0);
  v24 = [a1 bindLongParameter_];
  v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v26;

  MEMORY[0x1D3868CC0](v25, v27);
  v27, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1D3868CC0](0xD000000000000070, 0x80000001CFA4A8E0);
  v35 = [a1 bindLongParameter_];
  v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v38 = v37;

  MEMORY[0x1D3868CC0](v36, v38);
  v38, v39, v40, v41, v42, v43, v44, v45;
  return 0;
}

uint64_t sub_1CF4ADAA4(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[1] = a3;
  v16 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v15 - v11;
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v13 + 16))(a1, 0, AssociatedTypeWitness, v13);
  if (!v7)
  {
    v16(v12);
    return (*(v10 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF4ADC18(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (**a7)(uint64_t (*)(), __n128))
{
  v66 = a7;
  v67 = a6;
  v65 = a5;
  v61 = a3;
  v62 = a2;
  v63 = a1;
  v10 = *v7;
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v20 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v7;
  if (v7[32] == 1)
  {
    v58 = a4;
    v59 = v19;
    v69 = v10;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDEBBE40;
    v23 = v59;
    (*(v12 + 56))(v59, 1, 1, v11);
    sub_1CEFE74D8(v23, v16);
    v24 = *(v12 + 48);
    v25 = v24(v16, 1, v11);
    v26 = v60;
    v57 = v22;
    if (v25 == 1)
    {
      v27 = v22;
      sub_1CF9E6048();
      if (v24(v16, 1, v11) != 1)
      {
        sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v12 + 32))(v60, v16, v11);
    }

    v29 = v68;
    (*(v12 + 16))(v68, v26, v11);
    v30 = v57;
    *(v29 + *(v20 + 20)) = v57;
    v31 = v29 + *(v20 + 24);
    *v31 = "SQLDB: get last_used unindexedItems for index drop";
    *(v31 + 8) = 50;
    *(v31 + 16) = 2;
    v32 = v30;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v12 + 8))(v26, v11);
    v33 = sub_1CEFCCC44(v59, &unk_1EC4BED20, &unk_1CFA00700);
    v34 = MEMORY[0x1EEE9AC00](v33);
    v35 = v66;
    *(&v57 - 6) = v67;
    *(&v57 - 5) = v35;
    v36 = v63;
    *(&v57 - 4) = v64;
    *(&v57 - 3) = v36;
    v55 = v37;
    v56 = v58;
    v38 = v35[3](sub_1CF4C0540, v34);
    if (v8)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      return sub_1CF4C0A48(v29, type metadata accessor for Signpost);
    }

    else
    {
      v39 = v38;
      v65 = v32;
      v40 = v69[97];
      v41 = v69[95];
      swift_getAssociatedTypeWitness();
      v42 = sub_1CF9E6DA8();
      v71 = v42;
      v70 = 0;
      if ([v39 next])
      {
        v43 = v67;
        do
        {
          v44 = objc_autoreleasePoolPush();
          v45 = v69[96];
          v55 = v35;
          sub_1CF4AE444(&v70, v39, &v71, v41, v45, v43, v40);
          objc_autoreleasePoolPop(v44);
        }

        while (([v39 next] & 1) != 0);
        v46 = v71;
      }

      else
      {
        v46 = v42;
      }

      sub_1CF9E6DF8();
      v46, v47, v48, v49, v50, v51, v52, v53;

      sub_1CF9E7458();
      v54 = v68;
      sub_1CF9E6038();
      sub_1CF4C0A48(v54, type metadata accessor for Signpost);
      return v46;
    }
  }

  else
  {
    swift_getAssociatedTypeWitness();
    return sub_1CF9E6DA8();
  }
}

uint64_t sub_1CF4AE228(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4A6D0);
  if (*(a2 + 32))
  {
    v10 = 20550;
  }

  else
  {
    v10 = 21318;
  }

  MEMORY[0x1D3868CC0](v10, 0xE200000000000000);
  0xE200000000000000, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0x200A64695FLL, 0xE500000000000000);
  v18 = sub_1CF4BFAC0();
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4A6F0);
  v28 = [a1 bindLongParameter_];
  v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v31 = v30;

  MEMORY[0x1D3868CC0](v29, v31);
  v31, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA4A710);
  v39 = [a1 bindLongParameter_];
  v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v42 = v41;

  MEMORY[0x1D3868CC0](v40, v42);
  v42, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v50 = [a1 bindLongParameter_];
  v51 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v53 = v52;

  MEMORY[0x1D3868CC0](v51, v53);
  v53, v54, v55, v56, v57, v58, v59, v60;
  return 0;
}

uint64_t sub_1CF4AE444(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = v22 - v15;
  *a1 = [a2 longAtIndex_];
  v17 = *(swift_getAssociatedConformanceWitness() + 8);
  v18 = *(v17 + 16);
  v19 = a2;
  v20 = v22[3];
  result = v18(v19, 1, AssociatedTypeWitness, v17);
  if (!v20)
  {
    (*(v10 + 16))(v12, v16, AssociatedTypeWitness);
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    return (*(v10 + 8))(v16, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1CF4AE61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a6;
  v62 = a7;
  v54 = a4;
  v55 = a5;
  v59 = a2;
  v11 = *v7;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v51 - v19;
  v20 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v20);
  v60 = v7;
  if (*(v7 + 32) != 1)
  {
    return 0;
  }

  v53 = a3;
  v56 = a1;
  v57 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDEBBE40;
  v23 = v63;
  (*(v13 + 56))(v63, 1, 1, v12);
  sub_1CEFE74D8(v23, v17);
  v24 = *(v13 + 48);
  v25 = v24(v17, 1, v12);
  v52 = v22;
  if (v25 == 1)
  {
    v26 = v22;
    v27 = v58;
    sub_1CF9E6048();
    if (v24(v17, 1, v12) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v27 = v58;
    (*(v13 + 32))(v58, v17, v12);
  }

  v29 = v57;
  (*(v13 + 16))(v57, v27, v12);
  v30 = v52;
  *(v29 + *(v20 + 20)) = v52;
  v31 = v29 + *(v20 + 24);
  *v31 = "SQLDB: get indexable speculativeSet";
  *(v31 + 8) = 35;
  *(v31 + 16) = 2;
  v32 = v30;
  sub_1CF9E7468();
  v58 = v32;
  sub_1CF9E6038();
  (*(v13 + 8))(v27, v12);
  v33 = sub_1CEFCCC44(v63, &unk_1EC4BED20, &unk_1CFA00700);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = v61;
  v35 = v62;
  *(&v51 - 6) = v61;
  *(&v51 - 5) = v35;
  v48 = v60;
  v49 = v59;
  v50 = v56;
  v37 = (*(v35 + 24))(sub_1CF4C0528, v34);
  if (v8)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    return sub_1CF4C0A48(v29, type metadata accessor for Signpost);
  }

  else
  {
    v38 = v37;
    v65 = 0;
    v64 = 0;
    if ([v37 next])
    {
      v40 = v54;
      v39 = v55;
      do
      {
        v41 = objc_autoreleasePoolPush();
        v42 = v11[95];
        v43 = v11[96];
        v44 = v11[97];
        v49 = v11[98];
        v50 = v35;
        sub_1CF4AEDF4(v38, &v64, &v65, v40, v39, v42, v43, v36, v44);
        objc_autoreleasePoolPop(v41);
      }

      while (([v38 next] & 1) != 0);
      v45 = v65;
      v46 = v64;
    }

    else
    {
      v46 = 0;
      v45 = 0;
    }

    if (v45 != v56)
    {
      v46 = 0;
    }

    sub_1CF9E7458();
    v47 = v57;
    sub_1CF9E6038();
    sub_1CF4C0A48(v47, type metadata accessor for Signpost);
    return v46;
  }
}

uint64_t sub_1CF4AEB94(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007FLL, 0x80000001CFA4A590);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA4A610);
  v8 = sub_1CF9E7F98();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  v18 = sub_1CF4BFA00(0x2E70616E73, 0xE500000000000000, xmmword_1CFA06070);
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4A640);
  v28 = [a1 bindLongParameter_];
  v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v31 = v30;

  MEMORY[0x1D3868CC0](v29, v31);
  v31, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA4A660);
  v39 = [a1 bindLongParameter_];
  v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v42 = v41;

  MEMORY[0x1D3868CC0](v40, v42);
  v42, v43, v44, v45, v46, v47, v48, v49;
  return 0;
}

void sub_1CF4AEDF4(void *a1, void *a2, void *a3, void (*a4)(char *, void *, id, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48[3] = a5;
  v45 = a3;
  v46 = a4;
  v44 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v47 = &v40 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v40 - v15;
  v17 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v18 = a1;
  v17();
  if (!v9)
  {
    v19 = v44;
    v20 = v45;
    v41 = v16;
    v42 = v14;
    v21 = v46;
    v43 = 0;
    v22 = 1;
    v23 = [v18 stringAtIndex_];
    v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v25 = v24;

    v26 = [v18 longLongAtIndex_];
    v27 = [v18 isNullAtIndex_];
    v28 = v47;
    if ((v27 & 1) == 0)
    {
      v29 = [v18 dateAtIndex_];
      sub_1CF9E5CB8();

      v22 = 0;
    }

    v30 = sub_1CF9E5CF8();
    (*(*(v30 - 8) + 56))(v28, v22, 1, v30);
    *v19 = [v18 longAtIndex_];
    if (__OFADD__(*v20, 1))
    {
      __break(1u);
    }

    else
    {
      v31 = v21;
      ++*v20;
      v32 = v41;
      v48[0] = v40;
      v48[1] = v25;
      v31(v41, v48, v26, v28);
      sub_1CEFCCC44(v28, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      (*(v42 + 8))(v32, AssociatedTypeWitness);
      v25, v33, v34, v35, v36, v37, v38, v39;
    }
  }
}

uint64_t sub_1CF4AF13C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA444D0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000002DLL, 0x80000001CFA4D900);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4D930);
  v13 = sub_1CF9E7F98();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  return 0;
}

id sub_1CF4AF294(uint64_t a1)
{
  if (*(v1 + 32) != 1)
  {
    return 0;
  }

  v3 = MEMORY[0x1EEE9AC00](a1);
  result = (*(v4 + 24))(v5, v3);
  if (!v2)
  {
    v7 = result;
    if ([result next])
    {
      v8 = [v7 longAtIndex_];
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

uint64_t sub_1CF4AF378(uint64_t a1, void *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA444D0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x455245485720200ALL, 0xE900000000000020);
  v3 = sub_1CF4BFA00(0, 0xE000000000000000, xmmword_1CFA02F50);
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4D8E0);
  v13 = sub_1CF9E7F98();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  return 0;
}

id sub_1CF4AF554(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(v5 + 32) != 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7E8, &qword_1CFA03228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA440;
  *(inited + 32) = a1;
  v10 = MEMORY[0x1EEE9AC00](inited);
  v11 = (*(a4 + 24))(a5, v10);
  result = swift_setDeallocating();
  if (!v6)
  {
    if ([v11 next])
    {
      v13 = [v11 longAtIndex_];
    }

    else
    {
      v13 = 0;
    }

    return v13;
  }

  return result;
}

uint64_t sub_1CF4AF6A4(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA444D0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x455245485720200ALL, 0xE900000000000020);
  v5 = sub_1CF4BF4F0(0, 0xE000000000000000, a3);
  v7 = v6;
  MEMORY[0x1D3868CC0](v5);
  v7, v8, v9, v10, v11, v12, v13, v14;
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4D8E0);
  v15 = sub_1CF9E7F98();
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  return 0;
}

id sub_1CF4AF818(uint64_t a1)
{
  if (*(v1 + 32) != 1)
  {
    return 0;
  }

  v3 = MEMORY[0x1EEE9AC00](a1);
  result = (*(v4 + 24))(sub_1CF4C0AE4, v3);
  if (!v2)
  {
    v6 = result;
    if ([result next])
    {
      v7 = [v6 longAtIndex_];
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }

  return result;
}

uint64_t sub_1CF4AF900(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA444D0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA4D8B0);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4D8E0);
  v13 = sub_1CF9E7F98();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF4AFA30(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v61 = a4;
  v57 = a2;
  v58 = a1;
  v8 = *v5;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v56 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v53 - v16;
  v18 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v18);
  v59 = v5;
  if (v5[32])
  {
    swift_getAssociatedTypeWitness();
    return sub_1CF9E6DA8();
  }

  else
  {
    v54 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = v17;
    v53[1] = a3;
    v62 = v8;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDEBBE40;
    v22 = v55;
    (*(v10 + 56))(v55, 1, 1, v9);
    sub_1CEFE74D8(v22, v14);
    v23 = *(v10 + 48);
    v24 = v23(v14, 1, v9);
    v25 = v56;
    v53[0] = v21;
    if (v24 == 1)
    {
      v26 = v21;
      sub_1CF9E6048();
      if (v23(v14, 1, v9) != 1)
      {
        sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v10 + 32))(v56, v14, v9);
    }

    v27 = v54;
    (*(v10 + 16))(v54, v25, v9);
    v28 = v53[0];
    *(v27 + *(v18 + 20)) = v53[0];
    v29 = v27 + *(v18 + 24);
    *v29 = "SQLDB: list non evictable items with keepDownloaded policy";
    *(v29 + 8) = 58;
    *(v29 + 16) = 2;
    v30 = v28;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v10 + 8))(v25, v9);
    v31 = sub_1CEFCCC44(v55, &unk_1EC4BED20, &unk_1CFA00700);
    v32 = MEMORY[0x1EEE9AC00](v31);
    v33 = v60;
    v53[-6] = v61;
    v53[-5] = v33;
    v53[-4] = v59;
    v53[-3] = v34;
    v52 = 100;
    v35 = (*(v33 + 24))(sub_1CF4C0510, v32);
    if (v6)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      return sub_1CF4C0A48(v27, type metadata accessor for Signpost);
    }

    else
    {
      v36 = v35;
      v59 = v30;
      v37 = v62[97];
      v38 = v62[95];
      swift_getAssociatedTypeWitness();
      v39 = sub_1CF9E6DA8();
      v64 = v39;
      v63 = 0;
      if ([v36 next])
      {
        v40 = v61;
        do
        {
          v41 = objc_autoreleasePoolPush();
          v42 = v62[96];
          v52 = v33;
          sub_1CF4B0BA8(&v63, v36, &v64, v38, v42, v40, v37);
          objc_autoreleasePoolPop(v41);
        }

        while (([v36 next] & 1) != 0);
        v43 = v64;
      }

      else
      {
        v43 = v39;
      }

      sub_1CF9E6DF8();
      v43, v44, v45, v46, v47, v48, v49, v50;

      sub_1CF9E7458();
      v51 = v54;
      sub_1CF9E6038();
      sub_1CF4C0A48(v51, type metadata accessor for Signpost);
      return v43;
    }
  }
}

uint64_t sub_1CF4B0034(void *a1, void *a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000ECLL, 0x80000001CFA4A2F0);
  v5 = sub_1CF9E7F98();
  v7 = v6;
  MEMORY[0x1D3868CC0](v5);
  v7, v8, v9, v10, v11, v12, v13, v14;
  MEMORY[0x1D3868CC0](0x20200A30203D2029, 0xED000020444E4120);
  v15 = sub_1CF4BFA00(3043430, 0xE300000000000000, xmmword_1CFA02F50);
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](0xD00000000000004BLL, 0x80000001CFA4A3E0);
  v25 = sub_1CF9E7F98();
  v27 = v26;
  MEMORY[0x1D3868CC0](v25);
  v27, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA4A430);
  v35 = sub_1CF9E7F98();
  v37 = v36;
  MEMORY[0x1D3868CC0](v35);
  v37, v38, v39, v40, v41, v42, v43, v44;
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA4A460);
  v45 = [a1 bindLongParameter_];
  v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v48 = v47;

  MEMORY[0x1D3868CC0](v46, v48);
  v48, v49, v50, v51, v52, v53, v54, v55;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v56 = sub_1CF9E7F98();
  v58 = v57;
  MEMORY[0x1D3868CC0](v56);
  v58, v59, v60, v61, v62, v63, v64, v65;
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF4B02F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v58 = a3;
  v56 = a1;
  v7 = *v4;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v54 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v52 - v15;
  v17 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v17);
  v55 = v4;
  if (*(v4 + 32) == 1)
  {
    v52[1] = a2;
    v53 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = v7;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v19 = qword_1EDEBBE40;
    (*(v9 + 56))(v16, 1, 1, v8);
    sub_1CEFE74D8(v16, v13);
    v20 = *(v9 + 48);
    v21 = v20(v13, 1, v8);
    v52[0] = v19;
    if (v21 == 1)
    {
      v22 = v19;
      v23 = v16;
      v24 = v54;
      sub_1CF9E6048();
      v25 = v24;
      v16 = v23;
      if (v20(v13, 1, v8) != 1)
      {
        sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v25 = v54;
      (*(v9 + 32))(v54, v13, v8);
    }

    v27 = v53;
    (*(v9 + 16))(v53, v25, v8);
    v28 = v52[0];
    *(v27 + *(v17 + 20)) = v52[0];
    v29 = v27 + *(v17 + 24);
    *v29 = "SQLDB: list folders with non-propagated content policy";
    *(v29 + 8) = 54;
    *(v29 + 16) = 2;
    v30 = v28;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (*(v9 + 8))(v25, v8);
    v31 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
    v32 = MEMORY[0x1EEE9AC00](v31);
    v33 = v57;
    v52[-6] = v58;
    v52[-5] = v33;
    v34 = v56;
    v52[-4] = v55;
    v52[-3] = v34;
    v51 = 100;
    v35 = (*(v33 + 24))(sub_1CF4C04F8, v32);
    if (v5)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      return sub_1CF4C0A48(v27, type metadata accessor for Signpost);
    }

    else
    {
      v36 = v35;
      v56 = v30;
      v37 = v59[97];
      v38 = v59[95];
      swift_getAssociatedTypeWitness();
      v39 = sub_1CF9E6DA8();
      v61 = v39;
      v60 = 0;
      if ([v36 next])
      {
        v40 = v58;
        do
        {
          v41 = objc_autoreleasePoolPush();
          v42 = v59[96];
          v51 = v33;
          sub_1CF4B0BA8(&v60, v36, &v61, v38, v42, v40, v37);
          objc_autoreleasePoolPop(v41);
        }

        while (([v36 next] & 1) != 0);
        v43 = v61;
        v27 = v53;
      }

      else
      {
        v43 = v39;
      }

      sub_1CF9E6DF8();
      v43, v44, v45, v46, v47, v48, v49, v50;

      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CF4C0A48(v27, type metadata accessor for Signpost);
      return v43;
    }
  }

  else
  {
    swift_getAssociatedTypeWitness();
    return sub_1CF9E6DA8();
  }
}

uint64_t sub_1CF4B08F4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4A0C0);
  v6 = *(a2 + qword_1EDEBBD78);
  v7 = *(a2 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v6, v7);
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA4A0E0);
  v8 = sub_1CF9E7F98();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA4A110);
  v18 = sub_1CF9E7F98();
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4A140);
  v28 = sub_1CF9E7F98();
  v30 = v29;
  MEMORY[0x1D3868CC0](v28);
  v30, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA4A180);
  MEMORY[0x1D3868CC0](v6, v7);
  MEMORY[0x1D3868CC0](0xD00000000000009ALL, 0x80000001CFA4A1C0);
  v38 = sub_1CF9E7F98();
  v40 = v39;
  MEMORY[0x1D3868CC0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA4A260);
  v48 = [a1 bindLongParameter_];
  v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v51 = v50;

  MEMORY[0x1D3868CC0](v49, v51);
  v51, v52, v53, v54, v55, v56, v57, v58;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA4A290);
  v59 = sub_1CF9E7F98();
  v61 = v60;
  MEMORY[0x1D3868CC0](v59);
  v61, v62, v63, v64, v65, v66, v67, v68;
  return 0;
}

uint64_t sub_1CF4B0BA8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = [a2 longAtIndex_];
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v11 + 16))(a2, 1, AssociatedTypeWitness, v11);
  if (!v7)
  {
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

uint64_t sub_1CF4B0CF0(uint64_t result)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = MEMORY[0x1EEE9AC00](result);
    v6 = v3;
    v7 = v4;
    v8 = v1;
    v9 = v5;
    return (*(v4 + 32))(sub_1CF4C04C0, v2);
  }

  return result;
}

uint64_t sub_1CF4B0D78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1CF9E7948();
  v51 = 0;
  v52 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x4554414450552020, 0xE900000000000020);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003DLL, 0x80000001CFA4A040);
  v46 = a3;
  v41[1] = *(v10 + 760);
  v42 = a4;
  v43 = *(v10 + 776);
  v44 = a5;
  v45 = a1;
  swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E6E58();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1CF054A5C(sub_1CF4C04CC, v41, v11, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);
  v49 = 40;
  v50 = 0xE100000000000000;
  v46 = v14;
  v47 = sub_1CF4BF1A8;
  v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C07E8, &qword_1CFA06180);
  sub_1CEFCCCEC(&qword_1EC4C07F0, &qword_1EC4C07E8, &qword_1CFA06180, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v15 = sub_1CF9E6C18();
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v14, v25, v26, v27, v28, v29, v30, v31;
  v32 = v50;
  MEMORY[0x1D3868CC0](v49, v50);
  v32, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](59, 0xE100000000000000);
  return v51;
}

uint64_t sub_1CF4B0FF8@<X0>(uint64_t a1@<X1>, uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 32);
  v8 = swift_checkMetadataState();
  result = v7(a1, v8, v6);
  *a4 = result;
  a4[1] = v10;
  return result;
}

id sub_1CF4B10C8(uint64_t a1)
{
  if (*(v1 + 32))
  {
    return 0;
  }

  v4 = MEMORY[0x1EEE9AC00](a1);
  result = (*(v5 + 24))(sub_1CF4C04B4, v4);
  if (!v2)
  {
    v6 = result;
    if ([result next])
    {
      v7 = [v6 longAtIndex_];
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }

  return result;
}

uint64_t sub_1CF4B11B4(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA49FE0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA4A000);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  return 0;
}

void sub_1CF4B1290(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + qword_1EDEBBD78 + 8), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + qword_1EDEBBD98 + 8), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + qword_1EDEBBD88 + 8), v16, v17, v18, v19, v20, v21, v22;
  v23 = *(v8 + qword_1EDEAE5C0);
}

uint64_t sub_1CF4B12FC()
{
  v0 = sub_1CF685B78();
  *(v0 + qword_1EDEBBD78 + 8), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + qword_1EDEBBD98 + 8), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + qword_1EDEBBD88 + 8), v15, v16, v17, v18, v19, v20, v21;

  return v0;
}

uint64_t sub_1CF4B1370()
{
  sub_1CF4B12FC();

  return swift_deallocClassInstance();
}

void sub_1CF4B13DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for VFSItem(0);
  swift_dynamicCastMetatype();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (swift_dynamicCastMetatype())
  {
    v6 = 0x80000001CFA49490;
  }

  else
  {
    sub_1CF9E7948();
    0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
    v17 = v16;
    MEMORY[0x1D3868CC0](v15);
    v17, v18, v19, v20, v21, v22, v23, v24;
    MEMORY[0x1D3868CC0](0x4C554E20544F4E20, 0xEA00000000002C4CLL);
    v6 = 0x80000001CFA49450;
  }

  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemStateVersion(0, v26, v27, v28);
  v29 = swift_dynamicCastMetatype();
  v30 = 0xE000000000000000;
  if (!v29)
  {
    sub_1CF9E7948();
    0xE000000000000000, v31, v32, v33, v34, v35, v36, v37;
    v38 = swift_getAssociatedConformanceWitness();
    v39 = (*(*(v38 + 8) + 8))(v25);
    v41 = v40;
    MEMORY[0x1D3868CC0](v39);
    v41, v42, v43, v44, v45, v46, v47, v48;
    v29 = MEMORY[0x1D3868CC0](0x4C554E20544F4E20, 0xEA00000000002C4CLL);
    v30 = 0x80000001CFA49470;
  }

  v49 = MEMORY[0x1EEE9AC00](v29);
  v50 = *(a3 + 32);
  v50(sub_1CF4C034C, v49);
  v30, v51, v52, v53, v54, v55, v56, v57;
  v6, v58, v59, v60, v61, v62, v63, v64;
  if (!v76)
  {
    v66 = MEMORY[0x1EEE9AC00](v65);
    v67 = (v50)(sub_1CF4C03A8, v66);
    v68 = MEMORY[0x1EEE9AC00](v67);
    v69 = (v50)(sub_1CF4C03B4, v68);
    v70 = MEMORY[0x1EEE9AC00](v69);
    v71 = (v50)(sub_1CF4C0380, v70);
    v72 = (*(**(v3 + 16) + 112))(v71);
    v73 = MEMORY[0x1EEE9AC00](v72);
    v74 = (v50)(sub_1CF4C038C, v73);
    if ((*(v3 + 32) & 1) == 0)
    {
      v75 = MEMORY[0x1EEE9AC00](v74);
      v50(sub_1CF4C039C, v75);
    }
  }
}

uint64_t sub_1CF4B1970(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a2 + 32))
  {
    v9 = 0xD000000000000432;
  }

  else
  {
    v9 = 0xD000000000000077;
  }

  v43 = v9;
  if (*(a2 + 32))
  {
    v10 = "_parent_id_idx ON ";
  }

  else
  {
    v10 = "red_content BLOB NULL,\n\n  ";
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x5420455441455243, 0xED000020454C4241);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x20646920200A2820, 0xE800000000000000);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = *(v12 + 8);
  v14 = v13(AssociatedTypeWitness, v12);
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA49A40);
  v24 = v13(AssociatedTypeWitness, v12);
  v26 = v25;
  MEMORY[0x1D3868CC0](v24);
  v26, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA49A60);
  MEMORY[0x1D3868CC0](a3, a4);
  MEMORY[0x1D3868CC0](2105354, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](0xD0000000000003DALL, 0x80000001CFA49A90);
  MEMORY[0x1D3868CC0](v43, v10 | 0x8000000000000000);
  (v10 | 0x8000000000000000), v34, v35, v36, v37, v38, v39, v40;
  MEMORY[0x1D3868CC0](10506, 0xE200000000000000);
  return 0;
}

uint64_t sub_1CF4B1C04(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  strcpy(v14, "CREATE INDEX ");
  HIWORD(v14[1]) = -4864;
  v10 = a2 + qword_1EDEBBD78;
  v11 = *(a2 + qword_1EDEBBD78);
  v12 = *(v10 + 8);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA49510);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0x6C69665F73667628, 0xEC00000029646965);
  return v14[0];
}

uint64_t sub_1CF4B1CEC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA48580);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA494D0);
  return 0;
}

uint64_t sub_1CF4B1DDC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  strcpy(v14, "CREATE INDEX ");
  HIWORD(v14[1]) = -4864;
  v10 = a2 + qword_1EDEBBD78;
  v11 = *(a2 + qword_1EDEBBD78);
  v12 = *(v10 + 8);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA495E0);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0x5F746E6572617028, 0xEB00000000296469);
  return v14[0];
}

uint64_t sub_1CF4B1EC4(uint64_t a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v5 = a2 + qword_1EDEBBD78;
  v6 = *(a2 + qword_1EDEBBD78);
  v7 = *(v5 + 8);
  MEMORY[0x1D3868CC0](v6, v7);
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA49590);
  MEMORY[0x1D3868CC0](v6, v7);
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA495C0);
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0x4554414C4C4F4320;
  }

  if (a3)
  {
    v9 = 0xE000000000000000;
  }

  else
  {
    v9 = 0xEF455341434F4E20;
  }

  MEMORY[0x1D3868CC0](v8, v9);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF4B200C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA49530);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA49550);
  return 0;
}

uint64_t sub_1CF4B20F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a7;
  v22 = a8;
  v23 = a1;
  v24 = a2;
  v25 = v8;
  v26 = a5;
  v27 = a6;
  v28 = *(a8 + 32);
  result = (v28)(sub_1CF4BFF38, v20, a7, a8);
  if (!v9)
  {
    v11 = MEMORY[0x1EEE9AC00](result);
    v12 = v28(sub_1CF4BFF50, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = v28(sub_1CF4BFF68, v13);
    v15 = MEMORY[0x1EEE9AC00](v14);
    v16 = v28(sub_1CF4BFF80, v15);
    v17 = MEMORY[0x1EEE9AC00](v16);
    v18 = v28(sub_1CF4BFFD4, v17);
    v19 = MEMORY[0x1EEE9AC00](v18);
    return v28(sub_1CF4BFFEC, v19);
  }

  return result;
}

uint64_t sub_1CF4B23BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v9 = a4 + qword_1EDEBBD78;
  v10 = *(a4 + qword_1EDEBBD78);
  v11 = *(v9 + 8);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA47EE0);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA47F00);
  v12 = a5(779576686, 0xE400000000000000);
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA476E0);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA484D0);
  return 0;
}

uint64_t sub_1CF4B25AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v7 = a4 + qword_1EDEBBD78;
  v8 = *(a4 + qword_1EDEBBD78);
  v9 = *(v7 + 8);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA47680);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA476B0);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA476E0);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA47700);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD00000000000002ELL, 0x80000001CFA48400);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD000000000000093, 0x80000001CFA48430);
  return 0;
}

uint64_t sub_1CF4B27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t))
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v10 = a4 + qword_1EDEBBD78;
  v11 = *(a4 + qword_1EDEBBD78);
  v12 = *(v10 + 8);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA47AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v13 = sub_1CF9E67D8();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](542002976, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA47AD0);
  v23 = a6(778333295, 0xE400000000000000);
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0x28203D212029, 0xE600000000000000);
  v33 = a6(779576686, 0xE400000000000000);
  v35 = v34;
  MEMORY[0x1D3868CC0](v33);
  v35, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](0xD000000000000046, 0x80000001CFA47AF0);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2045534143203D20, 0xED0000204E454857);
  v43 = a6(779576686, 0xE400000000000000);
  v45 = v44;
  MEMORY[0x1D3868CC0](v43);
  v45, v46, v47, v48, v49, v50, v51, v52;
  MEMORY[0x1D3868CC0](0x204E45485420, 0xE600000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA47A10);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD00000000000003BLL, 0x80000001CFA483C0);
  v53 = a6(779576686, 0xE400000000000000);
  v55 = v54;
  MEMORY[0x1D3868CC0](v53);
  v55, v56, v57, v58, v59, v60, v61, v62;
  MEMORY[0x1D3868CC0](0x28203D212029, 0xE600000000000000);
  v63 = a6(778333295, 0xE400000000000000);
  v65 = v64;
  MEMORY[0x1D3868CC0](v63);
  v65, v66, v67, v68, v69, v70, v71, v72;
  MEMORY[0x1D3868CC0](0x444E450A3B29, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF4B2BBC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4554414450552020, 0xE900000000000020);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA480C0);
  return 0;
}

uint64_t sub_1CF4B2C5C(uint64_t result)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    v3 = MEMORY[0x1EEE9AC00](result);
    v16 = *(v4 + 32);
    result = v16(sub_1CF4BF104, v3);
    if (!v2)
    {
      v5 = MEMORY[0x1EEE9AC00](result);
      v6 = v16(sub_1CF4BF11C, v5);
      v7 = MEMORY[0x1EEE9AC00](v6);
      v8 = v16(sub_1CF4BF134, v7);
      v9 = MEMORY[0x1EEE9AC00](v8);
      v10 = v16(sub_1CF4C0DD4, v9);
      v11 = MEMORY[0x1EEE9AC00](v10);
      v12 = v16(sub_1CF4C0DD8, v11);
      v13 = MEMORY[0x1EEE9AC00](v12);
      v14 = v16(sub_1CF4BF178, v13);
      v15 = MEMORY[0x1EEE9AC00](v14);
      return v16(sub_1CF4C0DDC, v15);
    }
  }

  return result;
}

uint64_t sub_1CF4B2FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v9 = a4 + qword_1EDEBBD78;
  v10 = *(a4 + qword_1EDEBBD78);
  v11 = *(v9 + 8);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA47EE0);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA47F00);
  v12 = a5(779576686, 0xE400000000000000);
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA476E0);
  MEMORY[0x1D3868CC0](v10, v11);
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA47F20);
  v22 = sub_1CF682A60();
  v30 = *v22->tree;
  if (v30)
  {
    v77 = MEMORY[0x1E69E7CC0];
    v31 = v22;
    sub_1CF680C9C(0, v30, 0);
    v39 = v31;
    v40 = v77;
    v41 = *(v77 + 16);
    v42 = 32;
    do
    {
      v43 = *(&v39->super.isa + v42);
      v44 = *(v77 + 24);
      if (v41 >= v44 >> 1)
      {
        sub_1CF680C9C((v44 > 1), v41 + 1, 1);
        v39 = v31;
      }

      v45 = qword_1CFA062F0[v43];
      *(v77 + 16) = v41 + 1;
      *(v77 + 8 * v41 + 32) = v45;
      ++v42;
      ++v41;
      --v30;
    }

    while (v30);
    v39, v32, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    v22, v23, v24, v25, v26, v27, v28, v29;
    v40 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v46 = sub_1CF9E6C18();
  v48 = v47;
  v40, v47, v49, v50, v51, v52, v53, v54;
  MEMORY[0x1D3868CC0](v46, v48);
  v48, v55, v56, v57, v58, v59, v60, v61;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v40, v62, v63, v64, v65, v66, v67, v68;
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v69, v70, v71, v72, v73, v74, v75;
  MEMORY[0x1D3868CC0](0xD00000000000013ALL, 0x80000001CFA47F60);
  return 0;
}

uint64_t sub_1CF4B3390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t))
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v10 = a4 + qword_1EDEBBD78;
  v11 = *(a4 + qword_1EDEBBD78);
  v12 = *(v10 + 8);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA47AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v13 = sub_1CF9E67D8();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](542002976, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA47AD0);
  v23 = a6(778333295, 0xE400000000000000);
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0x28203D212029, 0xE600000000000000);
  v33 = a6(779576686, 0xE400000000000000);
  v35 = v34;
  MEMORY[0x1D3868CC0](v33);
  v35, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](0xD000000000000046, 0x80000001CFA47AF0);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA47B40);
  v43 = sub_1CF682A60();
  v51 = *v43->tree;
  if (v51)
  {
    v108 = MEMORY[0x1E69E7CC0];
    v52 = v43;
    sub_1CF680C9C(0, v51, 0);
    v60 = v52;
    v61 = v108;
    v62 = *(v108 + 16);
    v63 = 32;
    do
    {
      v64 = *(&v60->super.isa + v63);
      v65 = *(v108 + 24);
      if (v62 >= v65 >> 1)
      {
        sub_1CF680C9C((v65 > 1), v62 + 1, 1);
        v60 = v52;
      }

      v66 = qword_1CFA062F0[v64];
      *(v108 + 16) = v62 + 1;
      *(v108 + 8 * v62 + 32) = v66;
      ++v63;
      ++v62;
      --v51;
    }

    while (v51);
    v60, v53, v54, v55, v56, v57, v58, v59;
  }

  else
  {
    v43, v44, v45, v46, v47, v48, v49, v50;
    v61 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v67 = sub_1CF9E6C18();
  v69 = v68;
  v61, v68, v70, v71, v72, v73, v74, v75;
  MEMORY[0x1D3868CC0](v67, v69);
  v69, v76, v77, v78, v79, v80, v81, v82;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v61, v83, v84, v85, v86, v87, v88, v89;
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v90, v91, v92, v93, v94, v95, v96;
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA47B70);
  v97 = a6(779576686, 0xE400000000000000);
  v99 = v98;
  MEMORY[0x1D3868CC0](v97);
  v99, v100, v101, v102, v103, v104, v105, v106;
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA47BA0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000153, 0x80000001CFA47BD0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD00000000000016ALL, 0x80000001CFA47D30);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA47EA0);
  return 0;
}

uint64_t sub_1CF4B38E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD00000000000008BLL, 0x80000001CFA47920);
  MEMORY[0x1D3868CC0](*(a4 + qword_1EDEBBD78), *(a4 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000056, 0x80000001CFA479B0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA47A10);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000050, 0x80000001CFA47A40);
  v9 = sub_1CF682A60();
  v17 = *v9->tree;
  if (v17)
  {
    v18 = a5;
    v75 = MEMORY[0x1E69E7CC0];
    v19 = v9;
    sub_1CF680C9C(0, v17, 0);
    v27 = v19;
    v28 = v75;
    v29 = *(v75 + 16);
    v30 = 32;
    do
    {
      v31 = *(&v27->super.isa + v30);
      v32 = *(v75 + 24);
      if (v29 >= v32 >> 1)
      {
        sub_1CF680C9C((v32 > 1), v29 + 1, 1);
        v27 = v19;
      }

      v33 = qword_1CFA062F0[v31];
      *(v75 + 16) = v29 + 1;
      *(v75 + 8 * v29 + 32) = v33;
      ++v30;
      ++v29;
      --v17;
    }

    while (v17);
    v27, v20, v21, v22, v23, v24, v25, v26;
    a5 = v18;
  }

  else
  {
    v9, v10, v11, v12, v13, v14, v15, v16;
    v28 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v34 = sub_1CF9E6C18();
  v36 = v35;
  v28, v35, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](v34, v36);
  v36, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v28, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v57, v58, v59, v60, v61, v62, v63;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  v64 = a5(0, 0xE000000000000000);
  v66 = v65;
  MEMORY[0x1D3868CC0](v64);
  v66, v67, v68, v69, v70, v71, v72, v73;
  MEMORY[0x1D3868CC0](0x444E450A3BLL, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF4B3C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v7 = a4 + qword_1EDEBBD78;
  v8 = *(a4 + qword_1EDEBBD78);
  v9 = *(v7 + 8);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA478D0);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA476E0);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2E646C6F202D20, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA478F0);
  return 0;
}

uint64_t sub_1CF4B3E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v7 = *(a4 + qword_1EDEBBD78);
  v8 = *(a4 + qword_1EDEBBD78 + 8);
  MEMORY[0x1D3868CC0](v7, v8);
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA477E0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](542002976, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v7, v8);
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA47810);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2E77656E203D2120, 0xE800000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000053, 0x80000001CFA47830);
  MEMORY[0x1D3868CC0](v7, v8);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2E646C6F202D20, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2E77656E202B20, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA47890);
  v9 = sub_1CF4BF1B4(0x657261702E646C6FLL, 0xED000064695F746ELL, *(a4 + qword_1EDEBBD78), *(a4 + qword_1EDEBBD78 + 8), 49, 0xE100000000000000);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0x444E450A3B2929, 0xE700000000000000);
  return 0;
}

uint64_t sub_1CF4B411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v7 = a4 + qword_1EDEBBD78;
  v8 = *(a4 + qword_1EDEBBD78);
  v9 = *(v7 + 8);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA47680);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA476B0);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA476E0);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA47700);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA47720);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD00000000000008DLL, 0x80000001CFA47750);
  return 0;
}

uint64_t sub_1CF4B435C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA474A0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v7 = a4 + qword_1EDEBBD78;
  v8 = *(a4 + qword_1EDEBBD78);
  v9 = *(v7 + 8);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD00000000000003BLL, 0x80000001CFA474C0);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0xD00000000000007ALL, 0x80000001CFA47500);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2E77656E202D20, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000093, 0x80000001CFA47580);
  MEMORY[0x1D3868CC0](v8, v9);
  MEMORY[0x1D3868CC0](0x455320202020200ALL, 0xEA00000000002054);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2E77656E202B20, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000055, 0x80000001CFA47620);
  return 0;
}

uint64_t sub_1CF4B45C8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();

  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA480A0);
  return a1;
}

uint64_t sub_1CF4B464C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 32) & 1) == 0)
  {
    v7 = result;
    result = sub_1CF4B20F8(0xD00000000000001DLL, 0x80000001CFA48320, &unk_1F4BEEDE8, result, sub_1CF4B471C, 0, a2, a3);
    if (!v4)
    {
      return sub_1CF4B20F8(0xD000000000000019, 0x80000001CFA48340, &unk_1F4BEEE28, v7, sub_1CF4B4740, 0, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1CF4B4764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA48360);
  v9 = sub_1CF9E7F98();
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](a4, a5);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA48380);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA483A0);
  v19 = sub_1CF9E7F98();
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  return 0;
}

uint64_t sub_1CF4B48E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 32) == 1)
  {
    v7 = result;
    result = sub_1CF4B20F8(0xD000000000000021, 0x80000001CFA48D80, &unk_1F4BEEE68, result, sub_1CF4B49BC, 0, a2, a3);
    if (!v4)
    {
      return sub_1CF4B20F8(0xD000000000000022, 0x80000001CFA48DB0, &unk_1F4BEEE98, v7, sub_1CF4B49C4, 0, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1CF4B49CC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA48DE0);
  v11 = sub_1CF9E7F98();
  v13 = v12;
  MEMORY[0x1D3868CC0](v11);
  v13, v14, v15, v16, v17, v18, v19, v20;
  MEMORY[0x1D3868CC0](0x30203D2029, 0xE500000000000000);
  return 40;
}

uint64_t sub_1CF4B4AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v21 = a1;
  v22 = a2;
  v23 = v5;
  v7 = *(a5 + 32);
  result = (v7)(sub_1CF4BFDFC, v18, a4, a5);
  if (!v6)
  {
    v9 = MEMORY[0x1EEE9AC00](result);
    v10 = v7(sub_1CF4BFE54, v9);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v12 = v7(sub_1CF4BFE7C, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = v7(sub_1CF4BFE98, v13);
    v15 = MEMORY[0x1EEE9AC00](v14);
    v16 = v7(sub_1CF4BFEC0, v15);
    v17 = MEMORY[0x1EEE9AC00](v16);
    return v7(sub_1CF4BFED8, v17);
  }

  return result;
}

unint64_t sub_1CF4B4D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1CF9E7948();
  0xE000000000000000, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  MEMORY[0x1D3868CC0](*(a4 + qword_1EDEBBD78), *(a4 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](a8, a9);
  return 0xD000000000000018;
}

unint64_t sub_1CF4B4DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  MEMORY[0x1D3868CC0](*(a4 + qword_1EDEBBD78), *(a4 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA48170);
  return 0xD000000000000018;
}

uint64_t sub_1CF4B4EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA480F0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  MEMORY[0x1D3868CC0](*(a4 + qword_1EDEBBD78), *(a4 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA48150);
  return 0;
}

uint64_t sub_1CF4B4F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF4B4AA8(0xD00000000000001DLL, 0x80000001CFA48320, a1, a2, a3);
  if (!v3)
  {
    sub_1CF4B4AA8(0xD000000000000019, 0x80000001CFA48340, a1, a2, a3);
    v8 = sub_1CF4B4AA8(0xD000000000000016, 0x80000001CFA484F0, a1, a2, a3);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10 = *(a3 + 32);
    v11 = v10(sub_1CF4C0004, v9);
    v12 = MEMORY[0x1EEE9AC00](v11);
    return v10(sub_1CF4C0010, v12);
  }

  return result;
}

uint64_t sub_1CF4B5134(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA48510);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA48560);
  return 0;
}

uint64_t sub_1CF4B51D8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA48510);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA48540);
  return 0;
}

uint64_t sub_1CF4B527C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA480F0);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA48110);
  return 0;
}

uint64_t sub_1CF4B5324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF4B4AA8(0xD000000000000012, 0x80000001CFA48CA0, a1, a2, a3);
  if (!v3)
  {
    return sub_1CF4B4AA8(0xD000000000000018, 0x80000001CFA48C80, a1, a2, a3);
  }

  return result;
}

uint64_t sub_1CF4B53AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF4B4AA8(0xD000000000000023, 0x80000001CFA47470, a1, a2, a3);
  if (!v3)
  {
    v7[2] = 0xD000000000000023;
    v7[3] = 0x80000001CFA47470;
    return (*(a3 + 32))(sub_1CF4BFDF4, v7, a2, a3);
  }

  return result;
}

uint64_t sub_1CF4B5460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v19 = v3;
  v5 = *(a3 + 32);
  result = (v5)(sub_1CF4C0028, v16, a2, a3);
  if (!v4)
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    v8 = v5(sub_1CF4C0034, v7);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10 = v5(sub_1CF4C0040, v9);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v12 = v5(sub_1CF4C0078, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = v5(sub_1CF4C0084, v13);
    v15 = MEMORY[0x1EEE9AC00](v14);
    return v5(sub_1CF4C0090, v15);
  }

  return result;
}

uint64_t sub_1CF4B56B4(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA486E0);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA48790);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA487D0);
  return 0;
}

uint64_t sub_1CF4B5794(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA486E0);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA48700);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA48750);
  return 0;
}

uint64_t sub_1CF4B5874(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA48670);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA486C0);
  return 0;
}

uint64_t sub_1CF4B5918(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA48670);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA486A0);
  return 0;
}

unint64_t sub_1CF4B59BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](a6, a7);
  return 0xD000000000000020;
}

uint64_t sub_1CF4B5A58(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 32) & 1) == 0)
  {
    return sub_1CF4B20F8(0xD000000000000018, 0x80000001CFA48C80, &unk_1F4BEEDB8, result, sub_1CF4C0DD0, 0, a2, a3);
  }

  return result;
}

uint64_t sub_1CF4B5ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v5 = MEMORY[0x1EEE9AC00](result);
    return (*(a3 + 32))(sub_1CF4C0340, v5);
  }

  return result;
}

uint64_t sub_1CF4B5BC0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA493F0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA49410);
  return 0;
}

uint64_t sub_1CF4B5CEC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA493B0);
  return 0;
}

uint64_t sub_1CF4B5D90(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA49350);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA49370);
  return 0;
}

uint64_t sub_1CF4B5EA8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0x67616B6361705F5FLL, 0xED0000204E4F2065);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA49330);
  return 0;
}

uint64_t sub_1CF4B5FC4(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000045, 0x80000001CFA492E0);
  return 0;
}

uint64_t sub_1CF4B6068(uint64_t result)
{
  if (*(v1 + 32) == 1)
  {
    v3 = MEMORY[0x1EEE9AC00](result);
    v5 = *(v4 + 32);
    result = v5(sub_1CF4C02EC, v3);
    if (!v2)
    {
      v6 = MEMORY[0x1EEE9AC00](result);
      v7 = v5(sub_1CF4C02F8, v6);
      v8 = MEMORY[0x1EEE9AC00](v7);
      return v5(sub_1CF4C0304, v8);
    }
  }

  return result;
}

uint64_t sub_1CF4B61D4(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA492A0);
  return 0;
}

uint64_t sub_1CF4B6278(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48FC0);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000043, 0x80000001CFA491A0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA491F0);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA476E0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000084, 0x80000001CFA49210);
  return 0;
}

uint64_t sub_1CF4B63E0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48FC0);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000004CLL, 0x80000001CFA48FF0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000004CLL, 0x80000001CFA49040);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA476E0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000078, 0x80000001CFA49090);
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD00000000000008ALL, 0x80000001CFA49110);
  return 0;
}

uint64_t sub_1CF4B65C8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA48F80);
  return 0;
}

uint64_t sub_1CF4B666C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 32) & 1) == 0)
  {
    v7 = result;
    result = sub_1CF4B4F9C(result, a2, a3);
    if (!v4)
    {
      v8 = MEMORY[0x1EEE9AC00](result);
      v9 = *(a3 + 32);
      v9(sub_1CF4C02C8, v8);
      v10 = sub_1CF4B464C(v7, a2, a3);
      v11 = MEMORY[0x1EEE9AC00](v10);
      return (v9)(sub_1CF4C02D4, v11);
    }
  }

  return result;
}

uint64_t sub_1CF4B67A0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000045, 0x80000001CFA48F30);
  return 0;
}

uint64_t sub_1CF4B6844(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA48EA0);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA48EE0);
  return 0;
}

uint64_t sub_1CF4B6940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 32))
  {
    v8 = MEMORY[0x1EEE9AC00](a1);
    v9 = *(a3 + 32);
    result = v9(sub_1CF4C0298, v8);
    if (!v4)
    {
      v11 = MEMORY[0x1EEE9AC00](result);
      v9(sub_1CF4C02A4, v11);
      v12 = sub_1CF4B48E8(a1, a2, a3);
      v13 = MEMORY[0x1EEE9AC00](v12);
      v14 = v9(sub_1CF4C02B0, v13);
      v15 = MEMORY[0x1EEE9AC00](v14);
      return v9(sub_1CF4C02BC, v15);
    }
  }

  else
  {
    result = sub_1CF4B5324(a1, a2, a3);
    if (!v4)
    {
      if ((*(v3 + 32) & 1) == 0)
      {
        sub_1CF4B20F8(0xD000000000000018, 0x80000001CFA48C80, &unk_1F4BEEDB8, a1, sub_1CF4C0DD0, 0, a2, a3);
      }

      sub_1CF4B4F9C(a1, a2, a3);
      return sub_1CF4B464C(a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1CF4B6BCC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA48E50);
  return 0;
}

uint64_t sub_1CF4B6C70(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000004ELL, 0x80000001CFA48E00);
  return 0;
}

uint64_t sub_1CF4B6D14(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000050, 0x80000001CFA48D20);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0x30203D2029, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF4B6DFC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000051, 0x80000001CFA48CC0);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0x30203D2029, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF4B6EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for VFSItem(0);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v5 = MEMORY[0x1EEE9AC00](result);
    return (*(a3 + 32))(sub_1CF4C028C, v5);
  }

  return result;
}

uint64_t sub_1CF4B6FC0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA48C50);
  return 0;
}

uint64_t sub_1CF4B7090(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA48C10);
  return 0;
}

uint64_t sub_1CF4B7174(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000045, 0x80000001CFA48BC0);
  return 0;
}

uint64_t sub_1CF4B7218(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000004FLL, 0x80000001CFA48B70);
  return 0;
}

uint64_t sub_1CF4B72E8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA48B30);
  return 0;
}

uint64_t sub_1CF4B73B8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000057, 0x80000001CFA48AD0);
  return 0;
}

uint64_t sub_1CF4B7488(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA48A90);
  return 0;
}

uint64_t sub_1CF4B752C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v7[2] = a2;
  v7[3] = a3;
  if (v4 == 1)
  {
    v5 = sub_1CF4C0238;
  }

  else
  {
    v5 = sub_1CF4C022C;
  }

  return (*(a3 + 32))(v5, v7, a2);
}

uint64_t sub_1CF4B75BC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000057, 0x80000001CFA489F0);
  return 0;
}

uint64_t sub_1CF4B7660(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA48A50);
  return 0;
}

uint64_t sub_1CF4B7704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v21 = v3;
  v5 = *(a3 + 32);
  result = (v5)(sub_1CF4C0104, v18, a2, a3);
  if (!v4)
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    v8 = v5(sub_1CF4C0124, v7);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10 = v5(sub_1CF4C0144, v9);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v12 = v5(sub_1CF4C0164, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = v5(sub_1CF4C0184, v13);
    v15 = MEMORY[0x1EEE9AC00](v14);
    v16 = v5(sub_1CF4C01C8, v15);
    v17 = MEMORY[0x1EEE9AC00](v16);
    return v5(sub_1CF4C01E8, v17);
  }

  return result;
}

uint64_t sub_1CF4B79F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a2;
  v13 = a3;
  v14 = v5;
  v8 = *(a3 + 32);
  result = (v8)(a4, v11, a2, a3);
  if (!v6)
  {
    v10 = MEMORY[0x1EEE9AC00](result);
    return v8(a5, v10);
  }

  return result;
}

uint64_t sub_1CF4B7AE8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003DLL, 0x80000001CFA489B0);
  return 0;
}

void sub_1CF4B7C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(**(v3 + 16) + 112))();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 40);

    v8 = *(v7 + 16);

    v10 = (*(*v8 + 112))(v9);

    if (v10 != 2 && (v5 & 1) == 0 && (v10 & 1) != 0)
    {
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(a3 + 32))(sub_1CF4C00EC, v12);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF4B7D80(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA48960);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA48990);
  return 0;
}

uint64_t sub_1CF4B7E98(uint64_t result)
{
  if (*(v1 + 32) == 1)
  {
    v2 = MEMORY[0x1EEE9AC00](result);
    v6 = v3;
    v7 = v4;
    v8 = v1;
    return (*(v4 + 32))(v5, v2);
  }

  return result;
}

uint64_t sub_1CF4B7F20(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA488A0);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000091, 0x80000001CFA488C0);
  return 0;
}

uint64_t sub_1CF4B800C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v23 = v3;
  v5 = *(a3 + 32);
  result = (v5)(sub_1CF4C0DCC, v20, a2, a3);
  if (!v4)
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    v8 = v5(sub_1CF4C0DB4, v7);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10 = v5(sub_1CF4C0DC4, v9);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v12 = v5(sub_1CF4C0DC8, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = v5(sub_1CF4C0DB8, v13);
    v15 = MEMORY[0x1EEE9AC00](v14);
    v16 = v5(sub_1CF4C0DBC, v15);
    v17 = MEMORY[0x1EEE9AC00](v16);
    v18 = v5(sub_1CF4C0DC0, v17);
    v19 = MEMORY[0x1EEE9AC00](v18);
    return v5(sub_1CF4C00D4, v19);
  }

  return result;
}

uint64_t sub_1CF4B8318(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48800);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA48170);
  return 0;
}

uint64_t sub_1CF4B83BC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48800);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA48880);
  return 0;
}

uint64_t sub_1CF4B8460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48800);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](a6, a7);
  return 0;
}

uint64_t sub_1CF4B8500(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48800);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA48860);
  return 0;
}

uint64_t sub_1CF4B85A4(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48800);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA46260);
  return 0;
}

uint64_t sub_1CF4B8648(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48800);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA46240);
  return 0;
}

uint64_t sub_1CF4B86EC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA48800);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA48830);
  return 0;
}

uint64_t sub_1CF4B87BC(uint64_t result)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = MEMORY[0x1EEE9AC00](result);
    v6 = v3;
    v7 = v4;
    v8 = v1;
    return (*(v4 + 32))(v5, v2);
  }

  return result;
}

uint64_t sub_1CF4B8840(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA48220);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA48630);
  return 0;
}

uint64_t sub_1CF4B892C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 32) & 1) == 0)
  {
    v7 = result;
    v8 = MEMORY[0x1EEE9AC00](result);
    v10 = *(v9 + 32);
    result = v10(sub_1CF4BFF08, v8);
    if (!v4)
    {
      v11 = MEMORY[0x1EEE9AC00](result);
      v10(sub_1CF4BFF14, v11);
      sub_1CF4B4F9C(v7, a2, a3);
      v12 = sub_1CF4B464C(v7, a2, a3);
      v13 = MEMORY[0x1EEE9AC00](v12);
      v14 = v10(sub_1CF4BFF20, v13);
      v15 = MEMORY[0x1EEE9AC00](v14);
      return v10(sub_1CF4BFF2C, v15);
    }
  }

  return result;
}

unint64_t sub_1CF4B8B30(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA48610);
  return 0xD000000000000016;
}

uint64_t sub_1CF4B8BD0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA48580);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA485B0);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0x30203D2029, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF4B8D0C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA3FCD0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA482E0);
  return 0;
}

uint64_t sub_1CF4B8DB8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v3 = a2 + qword_1EDEBBD78;
  v4 = *(a2 + qword_1EDEBBD78);
  v5 = *(v3 + 8);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA48220);
  MEMORY[0x1D3868CC0](v4, v5);
  MEMORY[0x1D3868CC0](0xD000000000000063, 0x80000001CFA48270);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](10537, 0xE200000000000000);
  return 0;
}

uint64_t sub_1CF4B8EEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 32) & 1) == 0)
  {
    v7 = result;
    v8 = MEMORY[0x1EEE9AC00](result);
    result = (*(v9 + 32))(sub_1CF4BFEFC, v8);
    if (!v4)
    {
      result = sub_1CF4B53AC(v7, a2, a3);
      if ((*(v3 + 32) & 1) == 0)
      {
        return sub_1CF4B2C5C(0xD000000000000023);
      }
    }
  }

  return result;
}

uint64_t sub_1CF4B9008(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000004FLL, 0x80000001CFA48190);
  return 0;
}

void sub_1CF4B90AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v3 + 32) & 1) == 0)
  {
    v13 = MEMORY[0x1EEE9AC00](v10);
    *(&v24 - 4) = a2;
    *(&v24 - 3) = a3;
    v26 = v3;
    *(&v24 - 2) = v3;
    (*(a3 + 32))(sub_1CF4BFEF0, v13);
    if (v4)
    {
      v25 = v9;
      v14 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v15 = v4;
      v16 = sub_1CF9E6108();
      v17 = sub_1CF9E7288();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v24 = a1;
        v19 = v18;
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        v21 = v4;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v22;
        *v20 = v22;
        _os_log_impl(&dword_1CEFC7000, v16, v17, "Could not find recursive_dataless_with_clone_count: %@", v19, 0xCu);
        sub_1CEFCCC44(v20, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v20, -1, -1);
        v23 = v19;
        a1 = v24;
        MEMORY[0x1D386CDC0](v23, -1, -1);
      }

      else
      {
      }

      (*(v25 + 8))(v12, v8);
      sub_1CF4B8EEC(a1, a2, a3);
    }
  }
}

uint64_t sub_1CF4B9348(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA481E0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x455245485720200ALL, 0xEC000000313D3020);
  return 0;
}

uint64_t sub_1CF4B93EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 32) & 1) == 0)
  {
    v5 = result;
    result = sub_1CF4B53AC(result, a2, a3);
    if (!v4)
    {
      result = sub_1CF4B87BC(v5);
      if ((*(v3 + 32) & 1) == 0)
      {
        return sub_1CF4B2C5C(0xD000000000000023);
      }
    }
  }

  return result;
}

void sub_1CF4B9A30(uint64_t a1, void (*a2)(id, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a3;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a4;
  v47 = a5;
  v48 = v5;
  v15 = (*(a5 + 24))(sub_1CF4C0454, v45, a4, a5, v12);
  if (!v6)
  {
    v16 = v15;
    v49 = v10;
    if ([v15 next])
    {
      v42 = a2;
      v44 = (v11 + 8);
      v17 = v49;
      while (1)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = v16;
        v20 = [v19 stringAtIndex_];
        if (!v20)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v22 = v21;
          v20 = sub_1CF9E6888();
          v22, v23, v24, v25, v26, v27, v28, v29;
        }

        if ([v19 isNullAtIndex_])
        {
          goto LABEL_11;
        }

        v30 = [v19 dataAtIndex_];
        v31 = sub_1CF9E5B88();
        v33 = v32;

        sub_1CF4C2898(v31, v33);
        v40 = v34;
        sub_1CEFE4714(v31, v33);
        if (!v40)
        {
          break;
        }

        v42(v20, v40);

        v17 = v49;
LABEL_5:
        objc_autoreleasePoolPop(v18);
        if (([v19 next] & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v17 = v49;
LABEL_11:
      v35 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v36 = sub_1CF9E6108();
      v37 = sub_1CF9E72A8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1CEFC7000, v36, v37, "Unable to parse uploading error", v38, 2u);
        v39 = v38;
        v17 = v49;
        MEMORY[0x1D386CDC0](v39, -1, -1);
      }

      (*v44)(v14, v17);
      goto LABEL_5;
    }

LABEL_15:
  }
}

uint64_t sub_1CF4B9D74(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002DLL, 0x80000001CFA49F60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA49F90);
  return 0;
}

void sub_1CF4B9E20(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27[-v14];
  v28 = a5;
  v29 = a6;
  v30 = v6;
  v31 = a1;
  v16 = (*(a6 + 24))(sub_1CF4C043C, v27, a5, a6, v13);
  if (!v7)
  {
    v17 = v16;
    if ([v16 next])
    {
      do
      {
        v18 = objc_autoreleasePoolPush();
        v19 = sub_1CF1CBB20();
        sub_1CF2408F8(v19, v17, 0, v15);
        v19, v20, v21, v22, v23, v24, v25, v26;
        a3(v15);
        sub_1CEFCCC44(v15, &unk_1EC4BE360, &qword_1CF9FE650);
        objc_autoreleasePoolPop(v18);
      }

      while (([v17 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF4B9FE4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA49EF0);
  v13 = [a1 bindLongParameter_];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  MEMORY[0x1D3868CC0](v14, v16);
  v16, v17, v18, v19, v20, v21, v22, v23;
  return 0x205443454C4553;
}

uint64_t sub_1CF4BA108(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a4;
  v13[3] = a5;
  v14 = v5;
  v8 = (*(a5 + 24))(sub_1CF4C0430, v13, a4, a5);
  if (!v6)
  {
    v11 = v8;
    while ([v11 next])
    {
      v12 = objc_autoreleasePoolPush();
      sub_1CF4BA314(v11, a2, &v15, &v16);
      objc_autoreleasePoolPop(v12);
      if ((v16 & 1) == 0)
      {

        v9 = 0;
        return v9 & 1;
      }
    }

    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_1CF4BA268(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  return 0x205443454C4553;
}

void sub_1CF4BA314(void *a1@<X0>, uint64_t (*a2)(char *)@<X1>, void *a3@<X7>, _BYTE *a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_1CF1CBB20();
  sub_1CF2408F8(v12, a1, 0, v11);
  v12, v13, v14, v15, v16, v17, v18, v19;
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    v20 = a2(v11);
    sub_1CEFCCC44(v11, &unk_1EC4BE360, &qword_1CF9FE650);
    *a4 = v20 & 1;
  }
}

uint64_t sub_1CF4BA428(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD98), *(a2 + qword_1EDEBBD98 + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  v5 = a2 + qword_1EDEBBD78;
  v6 = *(a2 + qword_1EDEBBD78);
  v7 = *(v5 + 8);
  MEMORY[0x1D3868CC0](v6, v7);
  MEMORY[0x1D3868CC0](0x44455845444E4920, 0xEC00000020594220);
  MEMORY[0x1D3868CC0](v6, v7);
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA49F30);
  v8 = sub_1CF9E8268();
  v9 = [a1 bindObjectParameter_];

  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  MEMORY[0x1D3868CC0](v10, v12);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return 0;
}

double sub_1CF4BA5A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v51 = a3;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v17);
  v53 = v4;
  if (*(v4 + 32))
  {
    sub_1CF512520("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLSnapshot.swift", 130, 2, 3706);
  }

  v54 = a1;
  v61 = a2;
  v52 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a4;
  if (qword_1EDEAE980 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v19 = qword_1EDEBBE40;
    v9[7](v16, 1, 1, v8);
    sub_1CEFE74D8(v16, v13);
    v20 = v9[6];
    v21 = (v20)(v13, 1, v8);
    v22 = v49;
    if (v21 == 1)
    {
      v23 = v19;
      sub_1CF9E6048();
      if ((v20)(v13, 1, v8) != 1)
      {
        sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (v9[4])(v49, v13, v8);
    }

    v24 = v52;
    (v9[2])(v52, v22, v8);
    *(v24 + *(v17 + 20)) = v19;
    v25 = v24 + *(v17 + 24);
    *v25 = "SQLDB: building telemetry report";
    *(v25 + 8) = 32;
    *(v25 + 16) = 2;
    v26 = v19;
    sub_1CF9E7468();
    sub_1CF9E6038();
    (v9[1])(v22, v8);
    v27 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
    v28 = MEMORY[0x1EEE9AC00](v27);
    v29 = v50;
    v30 = v51;
    *(&v47 - 4) = v61;
    *(&v47 - 3) = v30;
    *(&v47 - 2) = v53;
    v31 = *(v30 + 24);
    v32 = v31(sub_1CF4C0C58, v28);
    v16 = v29;
    if (v29)
    {
      sub_1CF9E7458();
      sub_1CF9E6038();
      sub_1CF4C0A48(v24, type metadata accessor for Signpost);
      return result;
    }

    v8 = v32;
    v49 = &v47;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v33 = [v32 next];
    if (v33)
    {
      do
      {
        v34 = objc_autoreleasePoolPush();
        sub_1CF4BAC84(v8, &v55);
        objc_autoreleasePoolPop(v34);
        v33 = [v8 next];
      }

      while ((v33 & 1) != 0);
    }

    v50 = v26;
    v35 = MEMORY[0x1EEE9AC00](v33);
    *(&v47 - 4) = v61;
    *(&v47 - 3) = v30;
    *(&v47 - 2) = v53;
    v37 = v31(sub_1CF4C0C64, v35);
    v17 = *(&v60 + 1);
    v13 = v60;
    if (![v37 next])
    {
      break;
    }

    v9 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
    while (1)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = [v37 unsignedLongAtIndex_];
      v40 = __CFADD__(v13, v39);
      v13 = &v39[v13];
      if (v40)
      {
        break;
      }

      v41 = v39;
      if (([v37 BOOLAtIndex_] & 1) == 0)
      {
        v40 = __CFADD__(v17, v41);
        v17 += v41;
        if (v40)
        {
          __break(1u);
          goto LABEL_19;
        }
      }

      objc_autoreleasePoolPop(v38);
      if (([v37 next] & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_19:
  *&v60 = v13;
  *(&v60 + 1) = v17;

  sub_1CF9E7458();
  v42 = v52;
  sub_1CF9E6038();
  sub_1CF4C0A48(v42, type metadata accessor for Signpost);
  v43 = v58;
  v44 = v48;
  v48[2] = v57;
  v44[3] = v43;
  v45 = v60;
  v44[4] = v59;
  v44[5] = v45;
  result = *&v55;
  v46 = v56;
  *v44 = v55;
  v44[1] = v46;
  return result;
}

uint64_t sub_1CF4BABE0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000089, 0x80000001CFA4ECF0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA4ED80);
  return 0;
}

id sub_1CF4BAC84(void *a1, void *a2)
{
  v36 = a2;
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 integerAtIndex_];
  v9 = (v8 > 4) | (8u >> v8);
  if (v8 <= 4)
  {
    v10 = 0x304020100uLL >> (8 * v8);
  }

  else
  {
    v10 = 4;
  }

  v11 = [a1 BOOLAtIndex_];
  result = [a1 unsignedLongAtIndex_];
  if (v9)
  {
    goto LABEL_5;
  }

  if (!v11)
  {
    if (v10 <= 1u)
    {
      if (v10)
      {
        v36[4] = result;
        return result;
      }

      goto LABEL_29;
    }

    if (v10 == 2)
    {
      v36[7] = result;
      return result;
    }

LABEL_36:
    v36[6] = result;
    return result;
  }

  if (v10 <= 1u)
  {
    if (v10)
    {
      v36[5] = result;
      return result;
    }

LABEL_29:
    v33 = result;
    v34 = [a1 BOOLAtIndex_];
    result = [a1 unsignedLongAtIndex_];
    if (v11)
    {
      if (v34)
      {
        v36[3] = v33;
      }

      else
      {
        v36[1] = v33;
      }
    }

    else
    {
      v35 = v36;
      if (v34)
      {
        v36[2] = v33;
        v35[9] = result;
      }

      else
      {
        *v36 = v33;
        v35[8] = result;
      }
    }

    return result;
  }

  if (v10 != 2)
  {
    goto LABEL_36;
  }

LABEL_5:
  v13 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v14 = sub_1CF9E6108();
  v15 = sub_1CF9E72A8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136315138;
    v18 = 0xE300000000000000;
    v19 = 6516580;
    v20 = 0xE700000000000000;
    v21 = 0x6B6E696C6D7973;
    if (v10 != 2)
    {
      v21 = 0x7361696C61;
      v20 = 0xE500000000000000;
    }

    if (v10)
    {
      v19 = 7498084;
      v18 = 0xE300000000000000;
    }

    if (v10 <= 1u)
    {
      v22 = v19;
    }

    else
    {
      v22 = v21;
    }

    if (v10 > 1u)
    {
      v18 = v20;
    }

    if (v9)
    {
      v23 = 7104878;
    }

    else
    {
      v23 = v22;
    }

    if (v9)
    {
      v24 = 0xE300000000000000;
    }

    else
    {
      v24 = v18;
    }

    v25 = sub_1CEFD0DF0(v23, v24, &v37);
    v24, v26, v27, v28, v29, v30, v31, v32;
    *(v16 + 4) = v25;
    _os_log_impl(&dword_1CEFC7000, v14, v15, "Invalid object: %s cannot be dataless", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1D386CDC0](v17, -1, -1);
    MEMORY[0x1D386CDC0](v16, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1CF4BAFF8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4EC50);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA4EC90);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4ECD0);
  return 0;
}

uint64_t sub_1CF4BB0F0@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v98 = a5;
  v100 = a3;
  LODWORD(v94) = a2;
  v93 = a1;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v95 = (&v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82 - v17;
  v19 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v19);
  v99 = v6;
  if (v6[32] != 1)
  {
    sub_1CF5127A8("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLSnapshot.swift", 130, 2, 3788);
  }

  v96 = v7;
  v101 = a4;
  v92 = a6;
  v102 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v11 + 56))(v18, 1, 1, v10);
  sub_1CEFE74D8(v18, v15);
  v22 = *(v11 + 48);
  v23 = v22(v15, 1, v10);
  v24 = v95;
  if (v23 == 1)
  {
    v25 = v21;
    sub_1CF9E6048();
    if (v22(v15, 1, v10) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v11 + 32))(v95, v15, v10);
  }

  v26 = v102;
  (*(v11 + 16))(v102, v24, v10);
  *(v26 + *(v19 + 20)) = v21;
  v27 = v26 + *(v19 + 24);
  *v27 = "SQLDB: building FP telemetry report";
  *(v27 + 8) = 35;
  *(v27 + 16) = 2;
  v28 = v21;
  v29 = v24;
  v30 = v28;
  sub_1CF9E7468();
  v97 = v30;
  sub_1CF9E6038();
  (*(v11 + 8))(v29, v10);
  v31 = sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v33 = v101;
  v34 = v98;
  v35 = v99;
  *(&v82 - 4) = v101;
  *(&v82 - 3) = v34;
  *(&v82 - 2) = v35;
  v36 = v34[3];
  v37 = v96;
  v38 = v36(sub_1CF4C0C04, v32);
  if (!v37)
  {
    v39 = v38;
    v40 = [v38 next];
    v41 = v40;
    v96 = &v82;
    v42 = MEMORY[0x1EEE9AC00](v40);
    *(&v82 - 4) = v33;
    *(&v82 - 3) = v34;
    *(&v82 - 2) = v35;
    v43 = v36(sub_1CF4C0C10, v42);
    v95 = v36;
    v91 = v39;
    v90 = v41;
    v44 = [v43 next];
    if (v44)
    {
      v89 = [v43 unsignedLongLongAtIndex_];
      v88 = [v43 unsignedLongLongAtIndex_];
      v87 = [v43 unsignedLongLongAtIndex_];
      v45 = [v43 unsignedLongLongAtIndex_];
      v34 = v98;
      v44 = [v43 unsignedLongLongAtIndex_];
      v86 = v44;
    }

    else
    {
      v87 = 0;
      v88 = 0;
      v45 = 0;
      v89 = 0;
      v86 = 0;
    }

    v46 = v99;
    v47 = v93;
    if (v94)
    {
      v99 = v45;
      v100 = 0;
      v93 = 0;
    }

    else
    {
      v50 = MEMORY[0x1EEE9AC00](v44);
      *(&v82 - 4) = v101;
      *(&v82 - 3) = v34;
      *(&v82 - 2) = v46;
      *(&v82 - 1) = v47;
      v51 = v95(sub_1CF4C0C40, v50);
      v55 = v51;
      v56 = [v51 next];
      v96 = v55;
      if (v56)
      {
        v56 = [v55 unsignedLongLongAtIndex_];
        v100 = v56;
      }

      else
      {
        v100 = 0;
      }

      v72 = MEMORY[0x1EEE9AC00](v56);
      *(&v82 - 4) = v101;
      *(&v82 - 3) = v34;
      *(&v82 - 2) = v46;
      *(&v82 - 1) = v47;
      v73 = v95(sub_1CF4C0C4C, v72);
      v74 = v73;
      if ([v73 next])
      {
        v93 = [v74 unsignedLongLongAtIndex_];
      }

      else
      {
        v93 = 0;
      }

      v99 = v45;
    }

    v48 = MEMORY[0x1EEE9AC00](v44);
    *(&v82 - 4) = v101;
    *(&v82 - 3) = v34;
    *(&v82 - 2) = v46;
    v49 = v95(sub_1CF4C0C1C, v48);
    v52 = v49;
    v53 = [v49 next];
    if (v53)
    {
      v53 = [v52 unsignedLongLongAtIndex_];
      v54 = v53;
    }

    else
    {
      v54 = 0;
    }

    if (v94)
    {
      v101 = v54;
      v94 = 0;
      v57 = 0;
      v58 = v52;
      v59 = v90;
      v60 = v91;
      v62 = v88;
      v61 = v89;
LABEL_23:

      sub_1CF9E7458();
      v63 = v102;
      sub_1CF9E6038();
      result = sub_1CF4C0A48(v63, type metadata accessor for Signpost);
      v65 = v92;
      v66 = v87;
      *v92 = v62;
      v65[1] = v66;
      v65[2] = v99;
      *(v65 + 24) = v59;
      v67 = v86;
      v65[4] = v61;
      v65[5] = v67;
      v68 = v93;
      v65[6] = v100;
      v65[7] = v68;
      v69 = v94;
      v65[8] = v101;
      v65[9] = v69;
      v65[10] = v57;
      return result;
    }

    v85 = v52;
    v70 = MEMORY[0x1EEE9AC00](v53);
    *(&v82 - 4) = v101;
    *(&v82 - 3) = v34;
    *(&v82 - 2) = v46;
    *(&v82 - 1) = v47;
    v71 = v95(sub_1CF4C0C28, v70);
    v84 = 0;
    v75 = v71;
    v76 = [v71 next];
    v83 = v75;
    if (v76)
    {
      v76 = [v75 unsignedLongLongAtIndex_];
      v94 = v76;
    }

    else
    {
      v94 = 0;
    }

    v77 = v85;
    v96 = &v82;
    v78 = MEMORY[0x1EEE9AC00](v76);
    v79 = v98;
    *(&v82 - 4) = v101;
    *(&v82 - 3) = v79;
    *(&v82 - 2) = v46;
    *(&v82 - 1) = v47;
    v80 = v84;
    v81 = v95(sub_1CF4C0C34, v78);
    if (!v80)
    {
      v58 = v81;
      v101 = v54;
      if ([v81 next])
      {
        v98 = [v58 unsignedLongLongAtIndex_];
      }

      else
      {
        v98 = 0;
      }

      v59 = v90;
      v62 = v88;
      v61 = v89;

      v60 = v85;
      v43 = v83;
      v57 = v98;
      goto LABEL_23;
    }

    v26 = v102;
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF4C0A48(v26, type metadata accessor for Signpost);
}