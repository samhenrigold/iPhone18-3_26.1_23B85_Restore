void sub_1CF5FA3EC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v109 = a7;
  v110 = a1;
  v103 = a6;
  v111 = a3;
  v112 = a5;
  v91 = a4;
  v85 = a2;
  v93 = a10;
  v88 = a9;
  v92 = a11;
  v101 = a12;
  v15 = *v13;
  v16 = *(*v13 + 632);
  v17 = *(*v13 + 616);
  v108 = a13;
  v100 = v16;
  *&v123 = swift_getAssociatedTypeWitness();
  *(&v123 + 1) = swift_getAssociatedTypeWitness();
  *&v124 = swift_getAssociatedConformanceWitness();
  *(&v124 + 1) = swift_getAssociatedConformanceWitness();
  v89 = type metadata accessor for FileItemVersion(0, &v123);
  v104 = *(v89 - 8);
  v90 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v107 = &v79 - v18;
  v81 = v15;
  v19 = *(v15 + 608);
  v20 = *(v15 + 624);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedTypeWitness();
  v96 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  *&v123 = AssociatedTypeWitness;
  *(&v123 + 1) = v22;
  *&v124 = AssociatedConformanceWitness;
  *(&v124 + 1) = v24;
  v106 = type metadata accessor for FileItemVersion(0, &v123);
  v97 = *(v106 - 8);
  v86 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v79 - v25;
  v87 = v17;
  v26 = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedConformanceWitness();
  v102 = type metadata accessor for ItemState(0, v26, v27, v28);
  v95 = *(v102 - 8);
  v83 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v79 - v29;
  v94 = *(v26 - 8);
  v82 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v98 = &v79 - v31;
  v84 = v19;
  v32 = swift_getAssociatedTypeWitness();
  v33 = swift_getAssociatedConformanceWitness();
  *&v123 = v26;
  v80 = v26;
  *(&v123 + 1) = v32;
  *&v124 = v27;
  *(&v124 + 1) = v33;
  v34 = type metadata accessor for ReconciliationID(0, &v123);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v79 - v36;
  v38 = v85[1];
  v119 = *v85;
  v120 = v38;
  v39 = v85[3];
  v121 = v85[2];
  v122 = v39;
  v40 = a8[13];
  v135 = a8[12];
  v136 = v40;
  v137 = a8[14];
  v138 = *(a8 + 30);
  v41 = a8[9];
  v131 = a8[8];
  v132 = v41;
  v42 = a8[11];
  v133 = a8[10];
  v134 = v42;
  v43 = a8[5];
  v127 = a8[4];
  v128 = v43;
  v44 = a8[7];
  v129 = a8[6];
  v130 = v44;
  v45 = a8[1];
  v123 = *a8;
  v124 = v45;
  v46 = a8[3];
  v125 = a8[2];
  v126 = v46;
  v47 = v113;
  (*(*(v32 - 8) + 16))(&v79 - v36, v113 + *(v81 + 576), v32);
  swift_storeEnumTagMultiPayload();
  v48 = v103;
  v88 = (*(*v103 + 512))(v37, v88, v101, v108);
  (*(v35 + 8))(v37, v34);
  v85 = (v47[17] >> 33);
  v81 = *(*(v48 + 32) + 16);
  v118[0] = v119;
  v118[1] = v120;
  v118[2] = v121;
  v118[3] = v122;
  v117 = *(v47 + *(*v47 + 648));
  v115[12] = v135;
  v115[13] = v136;
  v115[14] = v137;
  v116 = v138;
  v115[8] = v131;
  v115[9] = v132;
  v115[10] = v133;
  v115[11] = v134;
  v115[4] = v127;
  v115[5] = v128;
  v115[6] = v129;
  v115[7] = v130;
  v115[0] = v123;
  v115[1] = v124;
  v115[2] = v125;
  v115[3] = v126;
  v49 = v94;
  (*(v94 + 16))(v98, v110, v26);
  v50 = v95;
  (*(v95 + 16))(v99, v111, v102);
  v51 = v97;
  (*(v97 + 16))(v105, v91, v106);
  v52 = v104;
  v53 = v89;
  (*(v104 + 16))(v107, v112, v89);
  v54 = (*(v49 + 80) + 168) & ~*(v49 + 80);
  v55 = (v82 + *(v50 + 80) + v54) & ~*(v50 + 80);
  v56 = (v83 + *(v51 + 80) + v55) & ~*(v51 + 80);
  v57 = (v86 + *(v52 + 80) + v56) & ~*(v52 + 80);
  v58 = (v90 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v120;
  *(v59 + 104) = v119;
  *(v59 + 120) = v60;
  v61 = v122;
  *(v59 + 136) = v121;
  v62 = v87;
  *(v59 + 16) = v84;
  *(v59 + 24) = v62;
  v63 = v96;
  *(v59 + 32) = v101;
  *(v59 + 40) = v63;
  v64 = v108;
  *(v59 + 48) = v100;
  *(v59 + 56) = v64;
  v65 = v93;
  v66 = v94;
  *(v59 + 64) = v48;
  *(v59 + 72) = v65;
  v67 = v113;
  *(v59 + 80) = v92;
  *(v59 + 88) = v67;
  *(v59 + 96) = v109;
  *(v59 + 152) = v61;
  (*(v66 + 32))(v59 + v54, v98, v80);
  (*(v95 + 32))(v59 + v55, v99, v102);
  (*(v97 + 32))(v59 + v56, v105, v106);
  (*(v104 + 32))(v59 + v57, v107, v53);
  v68 = v81;
  v69 = v59 + v58;
  *(v69 + 240) = v138;
  v70 = v136;
  *(v69 + 192) = v135;
  *(v69 + 208) = v70;
  *(v69 + 224) = v137;
  v71 = v132;
  *(v69 + 128) = v131;
  *(v69 + 144) = v71;
  v72 = v134;
  *(v69 + 160) = v133;
  *(v69 + 176) = v72;
  v73 = v128;
  *(v69 + 64) = v127;
  *(v69 + 80) = v73;
  v74 = v130;
  *(v69 + 96) = v129;
  *(v69 + 112) = v74;
  v75 = v124;
  *v69 = v123;
  *(v69 + 16) = v75;
  v76 = v126;
  *(v69 + 32) = v125;
  *(v69 + 48) = v76;
  v77 = *(*v68 + 632);

  sub_1CEFCCBDC(&v119, v114, &unk_1EC4BF260, &unk_1CFA01B60);
  sub_1CEFCCBDC(&v123, v114, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  v78 = v88;
  v77(v110, v118, v111, &v117, v112, v88, v115, v85 & 0x40, sub_1CF60F074, v59);
}

void sub_1CF5FADE8(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = a7;
  v19 = a3;
  v20 = a1;
  if (a2)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    v22 = swift_allocObject();
    v22[2] = a14;
    v22[3] = a15;
    v22[4] = a6;
    v22[5] = v20;
    v22[6] = a4;
    v22[7] = a5;
    v22[8] = v19;
    v22[9] = v15;
    swift_retain_n();

    sub_1CF2B1868(v20, 1);
    v23 = type metadata accessor for Continuation();

    sub_1CF92E6B4("stageUpdate(itemID:capturedContent:requestedState:otherVersion:baseVersion:on:result:nonSyncableAttributes:with:completion:)", 124, 2u, sub_1CF045408, 0, sub_1CF559418, v21, sub_1CF60F3E4, v22, v23, MEMORY[0x1E69E6158]);
  }

  else
  {
    v25 = a10;
    v26 = a11;
    v27 = a9;
    if (*(a8 + 24) >> 60 == 11 || (v30 = sub_1CF056558(), v27 = a9, v25 = a10, v26 = a11, v19 = a3, v15 = a7, v20 = a1, !v30))
    {
      v34 = *(a8 + 16);
      v46[0] = *a8;
      v46[1] = v34;
      v35 = *(a8 + 48);
      v46[2] = *(a8 + 32);
      v46[3] = v35;
      v36 = *(a13 + 208);
      v44[12] = *(a13 + 192);
      v44[13] = v36;
      v44[14] = *(a13 + 224);
      v45 = *(a13 + 240);
      v37 = *(a13 + 144);
      v44[8] = *(a13 + 128);
      v44[9] = v37;
      v38 = *(a13 + 176);
      v44[10] = *(a13 + 160);
      v44[11] = v38;
      v39 = *(a13 + 80);
      v44[4] = *(a13 + 64);
      v44[5] = v39;
      v40 = *(a13 + 112);
      v44[6] = *(a13 + 96);
      v44[7] = v40;
      v41 = *(a13 + 16);
      v44[0] = *a13;
      v44[1] = v41;
      v42 = *(a13 + 48);
      v44[2] = *(a13 + 32);
      v44[3] = v42;
      sub_1CF5FB618(v27, v46, v20, v25, v26, a12, v19, v15, v44, a4, a5);
      return;
    }

    v31 = swift_allocObject();
    *(v31 + 16) = a4;
    *(v31 + 24) = a5;
    v32 = swift_allocObject();
    v32[2] = a4;
    v32[3] = a5;
    v32[4] = a1;
    swift_retain_n();
    sub_1CF2B1868(a1, 0);
    v33 = type metadata accessor for Continuation();
    sub_1CF92E6B4("stageUpdate(itemID:capturedContent:requestedState:otherVersion:baseVersion:on:result:nonSyncableAttributes:with:completion:)", 124, 2u, sub_1CF045408, 0, sub_1CF559418, v31, sub_1CF611800, v32, v33, MEMORY[0x1E69E6158]);
  }
}

uint64_t sub_1CF5FB134(void *a1, uint64_t *a2, void *a3, void (*a4)(__int128 *, void, void, void, void *), uint64_t a5, void (*a6)(char *, uint64_t), uint64_t a7)
{
  v59 = a6;
  v60 = a7;
  v50 = a5;
  v51 = a4;
  v57 = a3;
  v58 = a1;
  v8 = *a2;
  v9 = *(*a2 + 616);
  v10 = *(*a2 + 632);
  v56 = type metadata accessor for SnapshotItem(255, v9, v10, a4);
  v11 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = &v50 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = type metadata accessor for ItemState(255, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v16 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v52 = &v50 - v17;
  v18 = *(v8 + 624);
  v19 = *(v8 + 608);
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  *&v61 = v20;
  *(&v61 + 1) = v21;
  *&v62 = v22;
  *(&v62 + 1) = v23;
  v24 = type metadata accessor for FileItemVersion(255, &v61);
  v25 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v50 - v26;
  *&v28 = v9;
  *(&v28 + 1) = v19;
  *&v29 = v10;
  *(&v29 + 1) = v18;
  v62 = v29;
  v61 = v28;
  v30 = type metadata accessor for Reconciliation.ReconcileAfterPropagation(0, &v61);
  v54 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = (&v50 - v32);
  (*(*(v24 - 8) + 56))(v27, 1, 1, v24, v31);
  v34 = *(a2 + *(*a2 + 640));
  v35 = v52;
  (*(*(v53 - 8) + 56))(v52, 1, 1);
  v36 = v55;
  (*(*(v56 - 8) + 56))(v55, 1, 1);
  *&v61 = 0;
  v37 = *(a2 + *(*a2 + 584));
  v38 = v57;
  v39 = v57;
  v40 = v37;

  sub_1CF98C50C(v41, v27, v34, 0, v35, v36, &v61, 0, v33, 0, v38, v37);
  v42 = v58;
  sub_1CF1A91AC(v58, &v61);
  v43 = v42[3];
  v44 = v42[4];
  v45 = __swift_project_boxed_opaque_existential_1(v42, v43);
  v46 = v63;
  v47 = sub_1CF98CA58(v59, v60, v45, v30, v43, v44);
  if (!v46)
  {
    v48 = v47;
    v51(&v61, 0, 0, 0, v47);
  }

  sub_1CEFCCC44(&v61, &unk_1EC4C1B30, &qword_1CFA05300);
  return (*(v54 + 8))(v33, v30);
}

double sub_1CF5FB618(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, uint64_t a11)
{
  v93 = a8;
  v99 = a7;
  v100 = a1;
  v88 = a6;
  v89 = a5;
  v85 = a4;
  v90 = a3;
  v83 = a2;
  v92 = a11;
  v12 = *v11;
  v13 = v12[78];
  v14 = v12[76];
  v91 = a10;
  v86 = v14;
  v87 = v13;
  *&v107 = swift_getAssociatedTypeWitness();
  *(&v107 + 1) = swift_getAssociatedTypeWitness();
  *&v108 = swift_getAssociatedConformanceWitness();
  *(&v108 + 1) = swift_getAssociatedConformanceWitness();
  v98 = type metadata accessor for FileItemVersion(0, &v107);
  v96 = *(v98 - 8);
  v84 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v73 - v15;
  v16 = v12[79];
  v17 = v12[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  *&v107 = AssociatedTypeWitness;
  *(&v107 + 1) = v19;
  *&v108 = AssociatedConformanceWitness;
  *(&v108 + 1) = v21;
  v22 = type metadata accessor for FileItemVersion(0, &v107);
  v94 = *(v22 - 8);
  v95 = v22;
  v80 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v73 - v23;
  v79 = &v73 - v23;
  v81 = v17;
  v82 = v16;
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v28 = type metadata accessor for ItemState(0, v25, v26, v27);
  v76 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v73 - v31;
  v78 = &v73 - v31;
  v75 = v25;
  v33 = *(v25 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v77 = &v73 - v36;
  v37 = v83[1];
  v103 = *v83;
  v104 = v37;
  v38 = v83[3];
  v105 = v83[2];
  v106 = v38;
  v39 = a9[13];
  v119 = a9[12];
  v120 = v39;
  v121 = a9[14];
  v122 = *(a9 + 30);
  v40 = a9[9];
  v115 = a9[8];
  v116 = v40;
  v41 = a9[11];
  v117 = a9[10];
  v118 = v41;
  v42 = a9[5];
  v111 = a9[4];
  v112 = v42;
  v43 = a9[7];
  v113 = a9[6];
  v114 = v43;
  v44 = a9[1];
  v107 = *a9;
  v108 = v44;
  v45 = a9[3];
  v109 = a9[2];
  v110 = v45;
  (*(v33 + 16))(&v73 - v36, v100);
  v74 = v29;
  (*(v29 + 16))(v32, v85, v28);
  v46 = v94;
  (*(v94 + 16))(v24, v88, v95);
  v47 = v96;
  (*(v96 + 16))(v97, v89, v98);
  v48 = (*(v33 + 80) + 64) & ~*(v33 + 80);
  v49 = (v34 + *(v29 + 80) + v48) & ~*(v29 + 80);
  v50 = (v30 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
  v52 = (*(v46 + 80) + v51 + 64) & ~*(v46 + 80);
  v53 = (v80 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = (v53 + 255) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v89 + 23) & 0xFFFFFFFFFFFFFFF8;
  v85 = (*(v47 + 80) + v88 + 8) & ~*(v47 + 80);
  v54 = swift_allocObject();
  *&v55 = v86;
  *&v56 = v87;
  *(&v55 + 1) = v81;
  *(&v56 + 1) = v82;
  *(v54 + 16) = v55;
  *(v54 + 32) = v56;
  v57 = v99;
  *(v54 + 48) = v101;
  *(v54 + 56) = v57;
  (*(v33 + 32))(v54 + v48, v77, v75);
  (*(v74 + 32))(v54 + v49, v78, v76);
  *(v54 + v50) = v90;
  v58 = (v54 + v51);
  v59 = v106;
  v58[2] = v105;
  v58[3] = v59;
  v60 = v104;
  *v58 = v103;
  v58[1] = v60;
  (*(v94 + 32))(v54 + v52, v79, v95);
  v61 = v54 + v53;
  v62 = v120;
  *(v61 + 192) = v119;
  *(v61 + 208) = v62;
  *(v61 + 224) = v121;
  *(v61 + 240) = v122;
  v63 = v116;
  *(v61 + 128) = v115;
  *(v61 + 144) = v63;
  v64 = v118;
  *(v61 + 160) = v117;
  *(v61 + 176) = v64;
  v65 = v112;
  *(v61 + 64) = v111;
  *(v61 + 80) = v65;
  v66 = v114;
  *(v61 + 96) = v113;
  *(v61 + 112) = v66;
  v67 = v108;
  *v61 = v107;
  *(v61 + 16) = v67;
  v68 = v110;
  *(v61 + 32) = v109;
  *(v61 + 48) = v68;
  v69 = (v54 + v89);
  v70 = v92;
  *v69 = v91;
  v69[1] = v70;
  *(v54 + v88) = v93;
  (*(v96 + 32))(v54 + v85, v97, v98);

  v71 = v99;

  sub_1CEFCCBDC(&v103, v102, &unk_1EC4BF260, &unk_1CFA01B60);
  sub_1CEFCCBDC(&v107, v102, &qword_1EC4BECF0, &unk_1CF9FEEB0);

  sub_1CF5FBEE4(v100, v71, sub_1CF60E63C, v54);

  return result;
}

uint64_t sub_1CF5FBD84(char a1)
{
  *(v1 + 16) = 0;

  if ((*(v1 + 136) & 2) == 0 || (v3 = v1 + *(*v1 + 672), swift_beginAccess(), AssociatedTypeWitness = swift_getAssociatedTypeWitness(), AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(), v7 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6), (*(*(v7 - 8) + 48))(v3, 1, v7)) || *(v3 + *(v7 + 40)) != 1)
  {
    a1 = sub_1CF04AF48(a1 & 1);
  }

  return a1 & 1;
}

double sub_1CF5FBEE4(uint64_t a1, uint64_t a2, void (*a3)(void, void, __n128), uint64_t a4)
{
  v24 = a1;
  v25 = *v4;
  v26 = a2;
  v7 = v25[79];
  v8 = v25[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v23 - v13;
  if ((*(v4 + v25[81] + 6) & 4) != 0 && !sub_1CF056558())
  {
    v16 = swift_allocObject();
    v23 = v16;
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    (*(v10 + 16))(v14, v24, AssociatedTypeWitness);
    v17 = (*(v10 + 80) + 56) & ~*(v10 + 80);
    v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    v20 = v25;
    *(v19 + 2) = v25[76];
    *(v19 + 3) = v8;
    *(v19 + 4) = v20[78];
    *(v19 + 5) = v7;
    *(v19 + 6) = v26;
    (*(v10 + 32))(&v19[v17], v14, AssociatedTypeWitness);
    v21 = &v19[v18];
    *v21 = a3;
    *(v21 + 1) = a4;
    swift_retain_n();

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF510, &unk_1CFA01DA0);
    sub_1CF92DB1C("getListOfUpdatedConflicts(itemID:on:completion:)", 48, 2, 2, sub_1CF2B1400, v23, sub_1CF60E9D0, v19, v22);
  }

  else
  {
    a3(MEMORY[0x1E69E7CC0], 0, v12);
  }

  return result;
}

void *sub_1CF5FC1A0(_TtC18FileProviderDaemon8FSTester *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v162 = a4;
  v163 = a5;
  v189 = a3;
  v7 = *a2;
  v8 = *(*a2 + 96);
  v152 = *(v7 + 80);
  v153 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v155 = *(AssociatedTypeWitness - 8);
  v156 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v151 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v154 = &v146 - v12;
  v13 = sub_1CF9E6118();
  v157 = *v13[-1].tester;
  v158 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v160 = (&v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_getAssociatedTypeWitness();
  v16 = sub_1CF9E75D8();
  v159 = *v16[-1].tester;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v146 - v17;
  v161 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v146 - v20;
  v22 = *a1->tester;
  isa = a1[1].super.isa;
  v164 = a1;
  v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v25 = v165;
  result = (*(*a2[4] + 264))(&v173, v189, v24, v22, isa);
  if (v25)
  {
    return result;
  }

  v149 = v15;
  v150 = v18;
  v147 = v16;
  v148 = v21;
  v27 = v164;
  v165 = 0;
  v168[12] = v185;
  v168[13] = v186;
  v168[14] = v187;
  v168[8] = v181;
  v168[9] = v182;
  v168[10] = v183;
  v168[11] = v184;
  v168[4] = v177;
  v168[5] = v178;
  v168[6] = v179;
  v168[7] = v180;
  v168[0] = v173;
  v168[1] = v174;
  v168[2] = v175;
  v168[3] = v176;
  v170[12] = v185;
  v170[13] = v186;
  v171 = v187;
  v170[8] = v181;
  v170[9] = v182;
  v170[10] = v183;
  v170[11] = v184;
  v170[4] = v177;
  v170[5] = v178;
  v170[6] = v179;
  v170[7] = v180;
  v170[0] = v173;
  v170[1] = v174;
  v169 = v188;
  v172 = v188;
  v170[2] = v175;
  v170[3] = v176;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v170) == 1)
  {
    return (v162)(MEMORY[0x1E69E7CC0], 0);
  }

  v28 = v171;
  if (!v171)
  {
    sub_1CEFCCC44(v168, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    return (v162)(MEMORY[0x1E69E7CC0], 0);
  }

  v29 = v27;
  v30 = *v27->tester;
  v146 = v29[1].super.isa;
  v31 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v32 = *(*a2[2] + 160);

  v33 = v150;
  v34 = v189;
  v35 = v31;
  v36 = v165;
  v32(v189, v35, v30, v146);
  v165 = v36;
  if (v36)
  {
    v28, v37, v38, v39, v40, v41, v42, v43;
    return sub_1CEFCCC44(v168, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  }

  v44 = v161;
  v45 = v149;
  if ((*(v161 + 48))(v33, 1, v149) == 1)
  {
    v28, v46, v47, v48, v49, v50, v51, v52;
    sub_1CEFCCC44(v168, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    (v159[1].isa)(v33, v147);
    return (v162)(MEMORY[0x1E69E7CC0], 0);
  }

  v147 = v28;
  v53 = v148;
  (*(v44 + 32))(v148, v33, v45);
  if (fpfs_supports_partial_conflicts_resolution())
  {
    v54 = v45;
    v55 = *(a2[5] + 16);
    v56 = v55[17] + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
    swift_beginAccess();
    LODWORD(v189) = *(v56 + 8);
    v57 = swift_allocObject();
    v58 = v162;
    v57[2] = a2;
    v57[3] = v58;
    v59 = v53;
    v57[4] = v163;
    v60 = *(*v55 + 592);

    v61 = v147;
    v60(v59, v189, v147, sub_1CF60EA88, v57);

    v61, v62, v63, v64, v65, v66, v67, v68;
    sub_1CEFCCC44(v168, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    return (*(v44 + 8))(v59, v54);
  }

  else
  {
    v166[0] = MEMORY[0x1E69E7CC0];
    v69 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v71 = v154;
    v70 = v155;
    v72 = v34;
    v73 = v156;
    v74 = *(v155 + 16);
    v74(v154, v72, v156);
    v75 = sub_1CF9E6108();
    LODWORD(v189) = sub_1CF9E7298();
    if (os_log_type_enabled(v75, v189))
    {
      v76 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v167 = v164;
      *v76 = 136315138;
      v159 = v75;
      v77 = v151;
      v74(v151, v71, v73);
      v78 = *(v70 + 8);
      v78(v71, v73);
      swift_getAssociatedConformanceWitness();
      v79 = sub_1CF9E7F98();
      v81 = v80;
      v78(v77, v73);
      v44 = v161;
      v82 = sub_1CEFD0DF0(v79, v81, &v167);
      v81, v83, v84, v85, v86, v87, v88, v89;
      *(v76 + 4) = v82;
      v90 = v159;
      _os_log_impl(&dword_1CEFC7000, v159, v189, "⚔️  marking all loseres as resolved for %s", v76, 0xCu);
      v91 = v164;
      __swift_destroy_boxed_opaque_existential_1(v164);
      v92 = v149;
      MEMORY[0x1D386CDC0](v91, -1, -1);
      v93 = v76;
      v53 = v148;
      MEMORY[0x1D386CDC0](v93, -1, -1);

      (*(v157 + 8))(v160, v158);
      v101 = v162;
    }

    else
    {
      (*(v70 + 8))(v71, v73);

      (*(v157 + 8))(v160, v158);
      v101 = v162;
      v92 = v149;
    }

    v102 = *v147->tree;
    if (v102)
    {
      tree = v147[1].tree;
      do
      {
        v189 = v102;
        v104 = *(tree - 2);
        v105 = *(tree - 1);
        v106 = *tree;
        v107 = *(tree + 1);
        v109 = *(tree + 2);
        v108 = *(tree + 3);
        v110 = *(tree + 5);
        v157 = *(tree + 4);
        sub_1CEFE42D4(v104, v105);
        v158 = v106;

        sub_1CEFE42D4(v107, v109);

        v164 = v108;

        sub_1CEFE42D4(v104, v105);
        sub_1CEFE42D4(v107, v109);
        v111 = sub_1CF9E5B48();
        v159 = v107;
        v112 = sub_1CF9E5B48();
        v160 = v110;
        if (v110)
        {
          v113 = sub_1CF9E6888();
        }

        else
        {
          v113 = 0;
        }

        v114 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v111 metadataVersion:v112 lastEditorDeviceName:v113];

        v115 = v159;
        sub_1CEFE4714(v159, v109);

        sub_1CEFE4714(v104, v105);
        [v114 setConflictResolved_];
        v116 = v114;
        MEMORY[0x1D3868FA0]();
        if (*((v166[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CF9E6D88();
        }

        tree += 64;
        sub_1CF9E6DE8();
        sub_1CEFE4714(v104, v105);
        v158, v117, v118, v119, v120, v121, v122, v123;
        sub_1CEFE4714(v115, v109);

        v160, v124, v125, v126, v127, v128, v129, v130;
        v164, v131, v132, v133, v134, v135, v136, v137;
        v102 = v189 - 1;
      }

      while (v189 != 1);
      v138 = v166[0];
      v101 = v162;
      v53 = v148;
      v92 = v149;
      v44 = v161;
    }

    else
    {
      v138 = MEMORY[0x1E69E7CC0];
    }

    v147, v94, v95, v96, v97, v98, v99, v100;
    v101(v138, 0);
    v138, v139, v140, v141, v142, v143, v144, v145;
    sub_1CEFCCC44(v168, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    return (*(v44 + 8))(v53, v92);
  }
}

double sub_1CF5FCC68(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  a2 &= 1u;
  *(v10 + 24) = a2;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  swift_retain_n();
  sub_1CEFCF530(a1, a2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF510, &unk_1CFA01DA0);
  sub_1CF92E4B0("getListOfUpdatedConflicts(itemID:on:completion:)", 48, 2, sub_1CF045408, 0, sub_1CEFF9D98, v9, sub_1CF60EA98, v10, v11);

  return result;
}

uint64_t sub_1CF5FCDA0(uint64_t a1, void *a2, char a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v31[1] = a5;
    v32 = a4;
    v15 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v16 = a2;
    v17 = sub_1CF9E6108();
    v18 = sub_1CF9E72A8();
    sub_1CF481340(a2, 1, v19, v20, v21, v22, v23, v24);
    if (os_log_type_enabled(v17, v18))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31[0] = v5;
      v27 = v26;
      *v25 = 138412290;
      swift_getErrorValue();
      v28 = Error.prettyDescription.getter(v33, v34);
      *(v25 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_1CEFC7000, v17, v18, "⚔️  Failed updateConflictList: %@", v25, 0xCu);
      sub_1CEFCCC44(v27, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v27, -1, -1);
      MEMORY[0x1D386CDC0](v25, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    return v32(a2, 1);
  }

  else
  {
    if (a2)
    {
      v30 = a2;
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    return (a4)(v30, 0, v12);
  }
}

double sub_1CF5FCFD0(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v84 = a8;
  v89 = a7;
  v92 = a5;
  v93 = a6;
  v94 = a4;
  LODWORD(v74) = a2;
  v75 = a1;
  v81 = a14;
  v87 = a13;
  v86 = a12;
  v85 = a11;
  v72 = *a3;
  v15 = v72[78];
  v16 = v72[76];
  v88 = a9;
  v82 = v16;
  v83 = v15;
  *&v96 = swift_getAssociatedTypeWitness();
  *(&v96 + 1) = swift_getAssociatedTypeWitness();
  *&v97 = swift_getAssociatedConformanceWitness();
  *(&v97 + 1) = swift_getAssociatedConformanceWitness();
  v90 = type metadata accessor for FileItemVersion(0, &v96);
  v17 = *(v90 - 8);
  v80 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v19 = v66 - v18;
  v20 = v72[79];
  v21 = v72[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = v21;
  v79 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v24);
  v26 = *(v25 - 8);
  v76 = v25;
  v77 = v26;
  v73 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v91 = v66 - v27;
  v28 = *(AssociatedTypeWitness - 8);
  v71 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v66 - v30;
  v32 = a3;
  v33 = a3[17];
  if ((v33 & 0x200000) != 0 || (*(a3 + v72[81] + 5) & 8) != 0)
  {
    if ((v33 & 0x8000000000) == 0)
    {
      if ((v33 & 0x1000000000000) != 0)
      {
        v34 = 3074;
        goto LABEL_18;
      }

      v34 = 2;
      if ((v33 & 0x800000000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_17:
      v34 |= 0x800uLL;
      goto LABEL_18;
    }

    v34 = 66;
LABEL_14:
    if ((v33 & 0x1000000000000) != 0)
    {
      v34 |= 0xC00uLL;
    }

    if ((v33 & 0x1800000000000) != 0x800000000000)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((v33 & 0x8000000000) != 0)
  {
    v34 = 64;
    goto LABEL_14;
  }

  if ((v33 & 0x1000000000000) != 0)
  {
    v34 = 3072;
    goto LABEL_18;
  }

  v34 = 0;
  if ((v33 & 0x800000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v35 = v72[87];
  v36 = v75;
  if (v74)
  {
    v36 = 0;
  }

  v75 = v36;
  if (*(a3 + v35))
  {
    v34 |= 0x80uLL;
  }

  v37 = *(a3 + v72[88]);
  v38 = v34 | (v33 >> 36) & 0x100;
  v70 = *(*(v94 + 32) + 16);
  v39 = (v37 & ((v34 & 0x200) == 0)) == 0;
  v40 = *(a3 + v72[81]);
  if (!v39)
  {
    v38 |= 0x200uLL;
  }

  v74 = v38;
  v113 = v40;
  v41 = v84;
  v42 = v84[1];
  v112[0] = *v84;
  v112[1] = v42;
  v43 = v84[2];
  v44 = v84[3];
  v72 = *(a3 + v72[73]);
  v112[2] = v43;
  v112[3] = v44;
  v45 = a10[13];
  v108 = a10[12];
  v109 = v45;
  v110 = a10[14];
  v111 = *(a10 + 30);
  v46 = a10[9];
  v104 = a10[8];
  v105 = v46;
  v47 = a10[11];
  v106 = a10[10];
  v107 = v47;
  v48 = a10[5];
  v100 = a10[4];
  v101 = v48;
  v49 = a10[7];
  v102 = a10[6];
  v103 = v49;
  v50 = a10[1];
  v96 = *a10;
  v97 = v50;
  v51 = a10[3];
  v98 = a10[2];
  v99 = v51;
  v52 = *(v28 + 16);
  v68 = AssociatedTypeWitness;
  v69 = v31;
  v52(v31, v92, AssociatedTypeWitness);
  v53 = v76;
  v54 = v77;
  (*(v77 + 16))(v91, v93, v76);
  v55 = *(v17 + 16);
  v67 = v19;
  v55(v19, v81, v90);
  v56 = (*(v28 + 80) + 144) & ~*(v28 + 80);
  v57 = (v71 + *(v54 + 80) + v56) & ~*(v54 + 80);
  v66[1] = v32;
  v81 = (v73 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = (*(v17 + 80) + v81 + 8) & ~*(v17 + 80);
  v58 = swift_allocObject();
  *&v59 = v82;
  *&v60 = v83;
  *(&v59 + 1) = v78;
  *(&v60 + 1) = v79;
  *(v58 + 16) = v59;
  *(v58 + 32) = v60;
  *(v58 + 48) = v94;
  *(v58 + 56) = v32;
  v61 = v86;
  *(v58 + 64) = v85;
  *(v58 + 72) = v61;
  v62 = v41[1];
  *(v58 + 80) = *v41;
  *(v58 + 96) = v62;
  v63 = v41[3];
  *(v58 + 112) = v41[2];
  *(v58 + 128) = v63;
  (*(v28 + 32))(v58 + v56, v69, v68);
  (*(v54 + 32))(v58 + v57, v91, v53);
  *(v58 + v81) = v87;
  (*(v17 + 32))(v58 + v73, v67, v90);
  v64 = *(*v70 + 656);

  sub_1CEFCCBDC(v41, &v95, &unk_1EC4BF260, &unk_1CFA01B60);

  v64(v92, v93, &v113, v89, v112, v88, v72, v74, &v96, v75, sub_1CF60EABC, v58);

  return result;
}

double sub_1CF5FD6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v72 = a8;
  v70 = a7;
  v75 = a6;
  v76 = a3;
  v83 = a5;
  v84 = a4;
  v68 = a1;
  v10 = *a2;
  v74 = *(*a2 + 104);
  v73 = v10[11];
  v77 = a9;
  v71 = a10;
  v85[0] = swift_getAssociatedTypeWitness();
  v85[1] = swift_getAssociatedTypeWitness();
  v85[2] = swift_getAssociatedConformanceWitness();
  v85[3] = swift_getAssociatedConformanceWitness();
  v82 = type metadata accessor for FileItemVersion(0, v85);
  v80 = *(v82 - 8);
  v67 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v58 - v12;
  v69 = a2;
  v13 = v10[12];
  v14 = v10[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = v13;
  v64 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  v61 = v18;
  v79 = *(v18 - 8);
  v19 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v58 - v20;
  v63 = &v58 - v20;
  v60 = AssociatedTypeWitness;
  v78 = *(AssociatedTypeWitness - 8);
  v22 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - v24;
  v62 = &v58 - v24;
  type metadata accessor for ItemPropagationResult(255, v14, v13, v26);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v27 = sub_1CF9E8238();
  v58 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v58 - v30;
  v59 = &v58 - v30;
  v32 = swift_allocObject();
  v66 = v32;
  v33 = v83;
  *(v32 + 16) = v84;
  *(v32 + 24) = v33;
  (*(v28 + 16))(v31, v68, v27);
  v34 = v78;
  (*(v78 + 16))(v25, v70, AssociatedTypeWitness);
  v35 = v79;
  (*(v79 + 16))(v21, v72, v18);
  v36 = v80;
  (*(v80 + 16))(v81, v71, v82);
  v37 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v38 = (v29 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 71) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v34 + 80) + v40 + 8) & ~*(v34 + 80);
  v42 = (v22 + *(v35 + 80) + v41) & ~*(v35 + 80);
  v72 = (v19 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (*(v36 + 80) + v72 + 8) & ~*(v36 + 80);
  v44 = (v67 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *&v46 = v73;
  *&v47 = v74;
  *(&v46 + 1) = v64;
  *(&v47 + 1) = v65;
  *(v45 + 16) = v46;
  *(v45 + 32) = v47;
  (*(v28 + 32))(v45 + v37, v59, v58);
  v48 = (v45 + v38);
  v50 = v75;
  v49 = v76;
  v51 = v75[1];
  *v48 = *v75;
  v48[1] = v51;
  v52 = *(v50 + 48);
  v48[2] = *(v50 + 32);
  v48[3] = v52;
  *(v45 + v39) = v69;
  *(v45 + v40) = v49;
  (*(v78 + 32))(v45 + v41, v62, v60);
  (*(v79 + 32))(v45 + v42, v63, v61);
  *(v45 + v72) = v77;
  (*(v80 + 32))(v45 + v43, v81, v82);
  v53 = (v45 + v44);
  v54 = v83;
  *v53 = v84;
  v53[1] = v54;
  v55 = v49;
  swift_retain_n();
  swift_retain_n();
  sub_1CEFCCBDC(v50, v85, &unk_1EC4BF260, &unk_1CFA01B60);
  v56 = type metadata accessor for Continuation();

  sub_1CF92E6B4("update(itemID:capturedContent:stagedContext:requestedState:otherVersion:baseVersion:on:result:nonSyncableAttributes:completion:)", 128, 2u, sub_1CF60ECF8, v55, sub_1CF559418, v66, sub_1CF60ED00, v45, v56, MEMORY[0x1E69E6158]);

  return result;
}

uint64_t sub_1CF5FDE20(void *a1, char *a2, char **a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(__int128 *, void, unint64_t, char *, uint64_t))
{
  v316 = a8;
  v314 = a7;
  v284 = a6;
  v318 = a5;
  v329 = a3;
  v342 = a2;
  v307 = a1;
  v11 = *a4;
  v12 = *(*a4 + 96);
  v13 = *(*a4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v313 = type metadata accessor for ItemState(255, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v16 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v315 = &v281 - v17;
  v18 = *(v11 + 104);
  v317 = a4;
  v19 = *(v11 + 88);
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  *&v338 = v20;
  *(&v338 + 1) = v21;
  *&v339 = v22;
  *(&v339 + 1) = v23;
  v303 = type metadata accessor for FileItemVersion(255, &v338);
  v24 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v324 = &v281 - v25;
  *&v26 = v13;
  v285 = v19;
  *(&v26 + 1) = v19;
  v310 = v26;
  *&v27 = v12;
  v286 = v18;
  *(&v27 + 1) = v18;
  v309 = v27;
  v338 = v26;
  v339 = v27;
  v306 = type metadata accessor for Reconciliation.ReconcileAfterPropagation(0, &v338);
  v305 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306);
  v29 = &v281 - v28;
  v338 = v310;
  v339 = v309;
  v283 = type metadata accessor for ReconciliationMutation(0, &v338);
  v282 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v281 = &v281 - v30;
  v290 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v289 = &v281 - v32;
  v34 = type metadata accessor for SnapshotItem(0, v13, v12, v33);
  v300 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v299 = &v281 - v35;
  v301 = v36;
  v326 = sub_1CF9E75D8();
  v325 = *(v326 - 8);
  MEMORY[0x1EEE9AC00](v326);
  v322 = &v281 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v332 = &v281 - v39;
  v292 = AssociatedTypeWitness;
  v320 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v40);
  v327 = &v281 - v41;
  v312 = v13;
  v293 = v12;
  v43 = type metadata accessor for ItemPropagationResult(0, v13, v12, v42);
  v44 = *(v43 - 1);
  MEMORY[0x1EEE9AC00](v43);
  v291 = &v281 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v328 = &v281 - v47;
  v48 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v50 = sub_1CF9E8238();
  MEMORY[0x1EEE9AC00](v50);
  v52 = (&v281 - v51);
  v323 = v48;
  v53 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v281 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v302 = &v281 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v298 = &v281 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v297 = &v281 - v62;
  v64 = MEMORY[0x1EEE9AC00](v63);
  v66 = &v281 - v65;
  (*(v67 + 16))(v52, v342, v50, v64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v342 = v66;
  v330 = v44;
  v304 = v29;
  v331 = v53;
  v311 = v56;
  if (EnumCaseMultiPayload == 1)
  {
    v319 = *v52;
    (*(v44 + 56))(v66, 1, 1, v43);
    v288 = 0;
    v321 = 0;
    v294 = 0xE000000000000000;
    v69 = v44;
    v70 = v320;
    goto LABEL_32;
  }

  v321 = *(v52 + *(TupleTypeMetadata2 + 48));
  if ((*(v44 + 48))(v52, 1, v43) != 1)
  {
    v82 = v328;
    (*(v44 + 32))(v328, v52, v43);
    v83 = v292;
    if (v329[3] >> 60 != 11)
    {
      v84 = *v329;
      v85 = *(*(*(v317 + 4) + 16) + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
      sub_1CEFCCBDC(v329, &v338, &unk_1EC4BF260, &unk_1CFA01B60);

      os_unfair_lock_lock(v85);
      v86 = *(v85 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v85 + 8) = v86;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = sub_1CF1F6AB4(0, *v86->tree + 1, 1, v86, v88, v89, v90, v91);
        *(v85 + 8) = v86;
      }

      v93 = *v86->tree;
      v92 = *v86->tester;
      if (v93 >= v92 >> 1)
      {
        v86 = sub_1CF1F6AB4((v92 > 1), v93 + 1, 1, v86, v88, v89, v90, v91);
        *(v85 + 8) = v86;
      }

      *v86->tree = v93 + 1;
      *(&v86[1].super.isa + v93) = v84;
      os_unfair_lock_unlock(v85);

      sub_1CEFCCC44(v329, &unk_1EC4BF260, &unk_1CFA01B60);
      v82 = v328;
    }

    v94 = v330;
    v95 = v342;
    (*(v330 + 16))(v342, v82, v43);
    (*(v94 + 56))(v95, 0, 1, v43);
    v96 = v293;
    v97 = v293 + 64;
    v98 = *(v293 + 64);
    v99 = v321;
    v100 = v327;
    v329 = v97;
    v296 = v98;
    v98(v312, v96);
    FileItemID.kind.getter(v83, AssociatedConformanceWitness, &v338);
    (*(v320 + 8))(v100, v83);
    v101 = v338;
    v102 = swift_getAssociatedTypeWitness();
    v103 = swift_getAssociatedConformanceWitness();
    FileItemID.kind.getter(v102, v103, &v334);
    if (v101 != v334)
    {
      v109 = v312;
      type metadata accessor for FileTreeError(0, v312, v96, v104);
      swift_getWitnessTable();
      v319 = swift_allocError();
      v111 = v110;
      v112 = v292;
      sub_1CF9E75D8();
      swift_getTupleTypeMetadata2();
      v70 = v320;
      (*(v320 + 16))(v111, v284, v112);
      (*(v70 + 56))(v111, 0, 1, v112);
      v113 = v328;
      v296(v109, v96);
      swift_storeEnumTagMultiPayload();
      v69 = v330;
      (*(v330 + 8))(v113, v43);
      v53 = v331;
      v66 = v342;
      v71 = v321;
      if (v321)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }

    v105 = v312;
    v106 = v328;
    sub_1CF06D940(v312, v96, &v338);
    v53 = v331;
    v108 = v105;
    v69 = v330;
    v71 = v321;
    v70 = v320;
    if (qword_1CFA0DC10[v338] == qword_1CFA0DC10[*(v314 + *(v313 + 40))])
    {
LABEL_20:
      (*(v330 + 8))(v106, v43);
      v319 = 0;
      v66 = v342;
      if (v71)
      {
        goto LABEL_23;
      }

LABEL_30:
      v288 = 0;
      v321 = 0;
      v127 = 0xE000000000000000;
      goto LABEL_31;
    }

    if (v338 == 3)
    {
      if (!*(v314 + *(v313 + 40)))
      {
        goto LABEL_20;
      }
    }

    else if (!v338 && *(v314 + *(v313 + 40)) == 3)
    {
      goto LABEL_20;
    }

    type metadata accessor for FileTreeError(0, v108, v96, v107);
    swift_getWitnessTable();
    v319 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    (*(v69 + 8))(v106, v43);
    v66 = v342;
    if (v71)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  v71 = v321;
  v70 = v320;
  if (v329[3] >> 60 != 11)
  {
    v328 = *v329;
    v72 = *(*(*(v317 + 4) + 16) + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
    sub_1CEFCCBDC(v329, &v338, &unk_1EC4BF260, &unk_1CFA01B60);

    os_unfair_lock_lock(v72);
    v73 = *(v72 + 8);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    *(v72 + 8) = v73;
    if ((v74 & 1) == 0)
    {
      v73 = sub_1CF1F6AB4(0, *v73->tree + 1, 1, v73, v75, v76, v77, v78);
      *(v72 + 8) = v73;
    }

    v80 = *v73->tree;
    v79 = *v73->tester;
    if (v80 >= v79 >> 1)
    {
      v73 = sub_1CF1F6AB4((v79 > 1), v80 + 1, 1, v73, v75, v76, v77, v78);
      *(v72 + 8) = v73;
    }

    *v73->tree = v80 + 1;
    *(&v73[1].super.isa + v80) = v328;
    os_unfair_lock_unlock(v72);

    sub_1CEFCCC44(v329, &unk_1EC4BF260, &unk_1CFA01B60);
    v53 = v331;
  }

  v69 = v330;
  v66 = v342;
  (*(v330 + 56))(v342, 1, 1, v43);
  v81 = v71;
  v319 = 0;
  if (!v71)
  {
    goto LABEL_30;
  }

LABEL_23:
  *&v338 = 0x3A7265766D6F6420;
  *(&v338 + 1) = 0xE800000000000000;
  v114 = v71;
  v115 = [v114 description];
  v116 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v118 = v117;

  v119 = v116;
  v66 = v342;
  MEMORY[0x1D3868CC0](v119, v118);

  v69 = v330;
  v118, v120, v121, v122, v123, v124, v125, v126;
  v127 = *(&v338 + 1);
  v288 = v338;
LABEL_31:
  v294 = v127;
  v56 = v311;
LABEL_32:
  v295 = a9;
  v128 = *(v53 + 16);
  v129 = v297;
  v130 = v66;
  v131 = v323;
  v296 = (v53 + 16);
  v329 = v128;
  (v128)(v297, v130, v323);
  v132 = *(v69 + 48);
  v328 = (v69 + 48);
  v327 = v132;
  if ((v132)(v129, 1, v43) == 1)
  {
    v294, v133, v134, v135, v136, v137, v138, v139;
    (*(v53 + 8))(v129, v131);
    (*(v300 + 56))(v332, 1, 1, v301);
    if (v319)
    {
      v140 = 0;
    }

    else
    {
      v140 = 0x3A6C61757463613CLL;
    }

    v294 = v140;
    v141 = 0xEC0000003E6C696ELL;
    if (v319)
    {
      v141 = 0;
    }

    v297 = v141;
  }

  else
  {
    v142 = v291;
    (*(v69 + 32))(v291, v129, v43);
    v143 = v289;
    v144 = v312;
    (*(v290 + 16))(v289, v142, v312);
    v145 = v299;
    sub_1CF06B77C(v143, v144, v293, v299);
    v146 = v300;
    v147 = v332;
    v148 = v301;
    (*(v300 + 16))(v332, v145, v301);
    (*(v146 + 56))(v147, 0, 1, v148);
    *&v338 = 0;
    *(&v338 + 1) = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x3A6C61757463613CLL, 0xE800000000000000);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v149 = v338;
    *&v338 = 0;
    *(&v338 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v338 + 1), v150, v151, v152, v153, v154, v155, v156;
    strcpy(&v338, "stillPending:");
    HIWORD(v338) = -4864;
    v157 = sub_1CF071470(*&v142[v43[9]]);
    v159 = v158;
    MEMORY[0x1D3868CC0](v157);
    v159, v160, v161, v162, v163, v164, v165, v166;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v167 = v338;
    v338 = v149;

    MEMORY[0x1D3868CC0](v167, *(&v167 + 1));
    *(&v149 + 1), v168, v169, v170, v171, v172, v173, v174;
    *(&v167 + 1), v175, v176, v177, v178, v179, v180, v181;
    v182 = v338;
    *&v338 = 0;
    *(&v338 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v338 + 1), v183, v184, v185, v186, v187, v188, v189;
    strcpy(&v338, "shouldFetch:");
    BYTE13(v338) = 0;
    HIWORD(v338) = -5120;
    if (v142[v43[10]])
    {
      v190 = 1702195828;
    }

    else
    {
      v190 = 0x65736C6166;
    }

    if (v142[v43[10]])
    {
      v191 = 0xE400000000000000;
    }

    else
    {
      v191 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v190, v191);
    v191, v192, v193, v194, v195, v196, v197, v198;
    v199 = v294;
    MEMORY[0x1D3868CC0](v288, v294);
    v199, v200, v201, v202, v203, v204, v205, v206;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v208 = *(&v338 + 1);
    v207 = v338;
    v338 = v182;

    MEMORY[0x1D3868CC0](v207, v208);
    v56 = v311;
    *(&v182 + 1), v209, v210, v211, v212, v213, v214, v215;
    v216 = v208;
    v69 = v330;
    v216, v217, v218, v219, v220, v221, v222, v223;
    v297 = *(&v338 + 1);
    v294 = v338;
    v224 = v148;
    v70 = v320;
    (*(v146 + 8))(v299, v224);
    (*(v69 + 8))(v142, v43);
  }

  v225 = v318;
  v226 = v315;
  v227 = v298;
  if ((*(v318 + 141) & 0x10) != 0)
  {
    (v329)(v298, v342, v131);
    if ((v327)(v227, 1, v43) == 1)
    {
      (*(v331 + 8))(v227, v131);
    }

    else
    {
      v228 = &v227[v43[11]];
      v229 = *(v228 + 1);
      v338 = *v228;
      v339 = v229;
      v230 = *(v228 + 3);
      v340 = *(v228 + 2);
      v341 = v230;
      sub_1CEFCCBDC(&v338, &v334, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v69 + 8))(v227, v43);
      if (*(&v339 + 1) >> 60 != 11)
      {
        v334 = v310;
        v335 = v309;
        type metadata accessor for JobResult(0, &v334);
        v231 = swift_getAssociatedTypeWitness();
        v232 = swift_getAssociatedConformanceWitness();
        v233 = v292;
        *&v334 = v292;
        *(&v334 + 1) = v231;
        *&v335 = AssociatedConformanceWitness;
        *(&v335 + 1) = v232;
        type metadata accessor for ReconciliationID(255, &v334);
        type metadata accessor for ReconciliationSideMutation(255, v312, v293, v234);
        v235 = swift_getTupleTypeMetadata2();
        v236 = v281;
        v237 = &v281[*(v235 + 48)];
        (*(v70 + 16))(v281, v284, v233);
        swift_storeEnumTagMultiPayload();
        v238 = v339;
        *v237 = v338;
        *(v237 + 1) = v238;
        v239 = v341;
        *(v237 + 2) = v340;
        *(v237 + 3) = v239;
        *(v237 + 32) = 256;
        v226 = v315;
        v225 = v318;
        swift_storeEnumTagMultiPayload();
        v240 = v283;
        swift_storeEnumTagMultiPayload();
        v334 = v338;
        v335 = v339;
        v336 = v340;
        v337 = v341;
        sub_1CF1AE1DC(&v334, v333);
        sub_1CF06EB44(v316, v236);
        sub_1CEFCCC44(&v338, &unk_1EC4BF260, &unk_1CFA01B60);
        v241 = v236;
        v56 = v311;
        (*(v282 + 8))(v241, v240);
      }
    }
  }

  v242 = v303;
  v243 = *(v303 - 8);
  v244 = v324;
  (*(v243 + 16))(v324, v295, v303);
  (*(v243 + 56))(v244, 0, 1, v242);
  v245 = *(v225 + *(*v225 + 640));
  v246 = v313;
  v247 = *(v313 - 8);
  (*(v247 + 16))(v226, v314, v313);
  v248 = v246;
  v249 = v323;
  (*(v247 + 56))(v226, 0, 1, v248);
  (*(v325 + 16))(v322, v332, v326);
  v250 = v302;
  (v329)(v302, v342, v249);
  if ((v327)(v250, 1, v43) == 1)
  {
    v251 = 0;
    v252 = v331;
    v253 = v249;
  }

  else
  {
    v251 = *&v250[v43[9]];
    v252 = v330;
    v253 = v43;
  }

  (*(v252 + 8))(v250, v253);
  *&v338 = v251;
  (v329)(v56, v342, v249);
  if ((v327)(v56, 1, v43) == 1)
  {
    v254 = 0;
    v255 = v331;
    v43 = v249;
    v256 = v304;
  }

  else
  {
    v254 = v56[v43[10]];
    v256 = v304;
    v255 = v330;
  }

  v257 = v321;
  (*(v255 + 8))(v56, v43);
  v258 = v319;
  if (v319)
  {
    v259 = *(v225 + *(*v225 + 584));
    v260 = v319;
    v261 = v259;
  }

  else
  {
    v259 = 0;
  }

  sub_1CF98C50C(v262, v324, v245, 0, v226, v322, &v338, v254, v256, v257, v258, v259);
  v263 = v307;
  sub_1CF1A91AC(v307, &v338);
  v264 = v263[3];
  v265 = v263[4];
  v266 = __swift_project_boxed_opaque_existential_1(v263, v264);
  v267 = v306;
  v268 = v308;
  v269 = sub_1CF98CA58(v317, v316, v266, v306, v264, v265);
  if (v268)
  {
    v277 = v297;
  }

  else
  {
    v278 = v269;
    v279 = v297;
    a10(&v338, 0, v294, v297, v269);

    v277 = v279;
  }

  v277, v270, v271, v272, v273, v274, v275, v276;

  sub_1CEFCCC44(&v338, &unk_1EC4C1B30, &qword_1CFA05300);
  (*(v305 + 8))(v256, v267);
  (*(v325 + 8))(v332, v326);
  return (*(v331 + 8))(v342, v249);
}

void sub_1CF5FFA44(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, char **a4, void (*a5)(__int128 *, void, void, void, id), uint64_t a6, char *a7, uint64_t a8)
{
  v9 = v8;
  v207 = a8;
  v208 = a7;
  v205 = a5;
  v206 = a6;
  v199 = a4;
  v211 = a2;
  v215 = a1;
  v10 = *v8;
  v203 = a3;
  v204 = v10;
  v12 = *(v10 + 76);
  v13 = *(v10 + 79);
  v14 = *(v10 + 78);
  *&v271 = *(v10 + 77);
  v11 = v271;
  *(&v271 + 1) = v12;
  *&v272 = v13;
  *(&v272 + 1) = v14;
  v175 = type metadata accessor for ItemReconciliation(255, &v271);
  v15 = sub_1CF9E75D8();
  v176 = *(v15 - 8);
  v177 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v178 = &v173 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v216 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v213 = type metadata accessor for ItemState(255, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  v182 = sub_1CF9E75D8();
  v180 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v187 = &v173 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v188 = v11;
  v189 = v13;
  v24 = swift_getAssociatedConformanceWitness();
  *&v271 = v21;
  *(&v271 + 1) = v22;
  *&v272 = v23;
  *(&v272 + 1) = v24;
  v25 = type metadata accessor for FileItemVersion(255, &v271);
  v26 = sub_1CF9E75D8();
  v184 = *(v26 - 8);
  v185 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v183 = &v173 - v27;
  v28 = swift_getAssociatedTypeWitness();
  v29 = swift_getAssociatedTypeWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v190 = v14;
  v191 = v12;
  v31 = swift_getAssociatedConformanceWitness();
  *&v271 = v28;
  *(&v271 + 1) = v29;
  *&v272 = v30;
  *(&v272 + 1) = v31;
  v32 = type metadata accessor for FileItemVersion(255, &v271);
  v33 = sub_1CF9E75D8();
  v193 = *(v33 - 8);
  v194 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v192 = (&v173 - v34);
  v35 = v216;
  v36 = sub_1CF9E75D8();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v173 - v38;
  v200 = v25;
  v201 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v186 = &v173 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v197 = &v173 - v43;
  v209 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v179 = &v173 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v195 = &v173 - v47;
  v212 = v32;
  v214 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v202 = &v173 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v196 = &v173 - v51;
  v52 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v174 = &v173 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v173 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v198 = &v173 - v59;
  v60 = *(*(v215 + 4) + 16);
  v61 = (v9 + *(v204 + 85));
  v62 = v61[1];
  v287 = *v61;
  v288 = v62;
  v63 = v61[3];
  v289 = v61[2];
  v290 = v63;
  v64 = *(v204 + 82);
  swift_beginAccess();
  (*(v37 + 16))(v39, v9 + v64, v36);
  v65 = (*(v52 + 48))(v39, 1, v35);
  v210 = v52;
  if (v65 != 1)
  {
    v181 = v60;
    v69 = *(v52 + 32);
    v204 = v57;
    v69(v57, v39, v216);
    v70 = *(*v9 + 83);
    swift_beginAccess();
    v72 = v193;
    v71 = v194;
    v73 = v9 + v70;
    v74 = v192;
    v193[2](v192, v73, v194);
    v75 = v214;
    v76 = v212;
    if ((*(v214 + 48))(v74, 1, v212) == 1)
    {
      v60 = v181;

      sub_1CEFCCBDC(&v287, &v271, &unk_1EC4BF260, &unk_1CFA01B60);
      (v72[1])(v74, v71);
      v67 = *(v9 + *(*v9 + 89));
      if (v67)
      {
        swift_willThrow();
        v77 = v67;
      }

      else
      {
        *&v271 = v191;
        *(&v271 + 1) = v188;
        *&v272 = v190;
        *(&v272 + 1) = v189;
        type metadata accessor for Propagation.PropagationError(0, &v271);
        swift_getWitnessTable();
        v104 = swift_allocError();
        v106 = v105;
        v107 = swift_getAssociatedTypeWitness();
        v108 = (v106 + *(swift_getTupleTypeMetadata2() + 48));
        (*(*(v107 - 8) + 16))(v106, v9 + *(*v9 + 72), v107);
        *v108 = 0xD000000000000011;
        v108[1] = 0x80000001CFA54B50;
        v67 = v104;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      (*(v210 + 8))(v204, v216);
      goto LABEL_20;
    }

    v78 = v202;
    (*(v75 + 32))(v202, v74, v76);
    v79 = *(*v9 + 86);
    swift_beginAccess();
    v80 = v183;
    v81 = v184;
    v82 = v9 + v79;
    v83 = v185;
    (*(v184 + 16))(v183, v82, v185);
    v85 = v200;
    v84 = v201;
    if ((*(v201 + 48))(v80, 1, v200) == 1)
    {
      v86 = v81;
      v60 = v181;

      sub_1CEFCCBDC(&v287, &v271, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v86 + 8))(v80, v83);
      v67 = *(v9 + *(*v9 + 89));
      v87 = v204;
      if (v67)
      {
        swift_willThrow();
        v88 = v67;
        (*(v75 + 8))(v202, v76);
        v89 = v210;
      }

      else
      {
        *&v271 = v191;
        *(&v271 + 1) = v188;
        *&v272 = v190;
        *(&v272 + 1) = v189;
        type metadata accessor for Propagation.PropagationError(0, &v271);
        swift_getWitnessTable();
        v114 = swift_allocError();
        v116 = v115;
        v117 = swift_getAssociatedTypeWitness();
        v118 = (v116 + *(swift_getTupleTypeMetadata2() + 48));
        (*(*(v117 - 8) + 16))(v116, v9 + *(*v9 + 72), v117);
        *v118 = 0xD000000000000011;
        v118[1] = 0x80000001CFA54A90;
        v67 = v114;
        v119 = v210;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v214 + 8))(v202, v76);
        v89 = v119;
      }

      (*(v89 + 8))(v87, v216);
LABEL_20:
      LODWORD(v204) = 0;
      LODWORD(v202) = 0;
      v95 = v208;
      if (!v211)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    v96 = v186;
    (*(v84 + 32))(v186, v80, v85);
    v97 = v76;
    v194 = *(v210 + 16);
    v194(v198, v204, v216);
    v98 = v209;
    (*(v75 + 16))(v196, v78, v97);
    (*(v84 + 16))(v197, v96, v85);
    v99 = *(*v9 + 84);
    swift_beginAccess();
    v100 = v180;
    v101 = v9 + v99;
    v102 = v187;
    (*(v180 + 16))(v187, v101, v182);
    v103 = v213;
    if ((*(v98 + 48))(v102, 1, v213) == 1)
    {

      sub_1CEFCCBDC(&v287, &v271, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v100 + 8))(v187, v182);
      v120 = sub_1CF66E6E4(v9, v199, v208, *(v207 + 8));
      *&v271 = v191;
      *(&v271 + 1) = v188;
      *&v272 = v190;
      *(&v272 + 1) = v189;
      type metadata accessor for Propagation.PropagationError(0, &v271);
      swift_getWitnessTable();
      v67 = swift_allocError();
      *v121 = v120;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v201 + 8))(v186, v85);
      v76 = v212;
      (*(v214 + 8))(v202, v212);
      (*(v210 + 8))(v204, v216);
      LODWORD(v202) = 0;
      LODWORD(v204) = 1;
      v60 = v181;
      v95 = v208;
      if (!v211)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    v109 = v179;
    (*(v98 + 32))(v179, v187, v103);
    (*(v98 + 16))(v195, v109, v103);
    v110 = *(*v9 + 72);

    sub_1CEFCCBDC(&v287, v269, &unk_1EC4BF260, &unk_1CFA01B60);
    v111 = *(v207 + 8);
    v192 = v9;
    v112 = v9 + v110;
    v113 = v215;
    sub_1CF5EA7E0(v215, v112, v199, v208, v111, &v271);
    v193 = 0;
    v132 = *(v98 + 8);
    v209 = v98 + 8;
    v191 = v132;
    v132(v109, v103);
    v133 = *(v201 + 8);
    v201 += 8;
    v190 = v133;
    v133(v186, v200);
    v134 = *(v214 + 8);
    v135 = v202;
    v136 = v210;
    v214 += 8;
    v202 = v134;
    (v134)(v135, v212);
    v137 = *(v136 + 8);
    v210 = v136 + 8;
    v137(v204, v216);
    v265 = v283;
    v266 = v284;
    v267 = v285;
    v261 = v279;
    v262 = v280;
    v263 = v281;
    v264 = v282;
    v257 = v275;
    v258 = v276;
    v259 = v277;
    v260 = v278;
    v253 = v271;
    v254 = v272;
    v255 = v273;
    v256 = v274;
    v269[12] = v283;
    v269[13] = v284;
    v269[14] = v285;
    v269[8] = v279;
    v269[9] = v280;
    v269[10] = v281;
    v269[11] = v282;
    v269[4] = v275;
    v269[5] = v276;
    v269[6] = v277;
    v269[7] = v278;
    v269[0] = v271;
    v269[1] = v272;
    v268 = v286;
    v270 = v286;
    v269[2] = v273;
    v269[3] = v274;
    enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v269);
    v139 = v195;
    v140 = v211;
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
    {
      v141 = *(v103 + 40);
      v142 = v139 + v141 + *(type metadata accessor for ItemMetadata(0) + 152);
      *(v142 + 8), v143, v144, v145, v146, v147, v148, v149;
      *v142 = 0;
      *(v142 + 8) = 0;
    }

    v150 = v198;
    v151 = v199;
    if (v140)
    {
      v204 = v137;
      type metadata accessor for StagedContext();
      v189 = swift_dynamicCastClass();
      if (!v189)
      {
        goto LABEL_51;
      }

      v152 = v178;
      v153 = v151;
      v154 = v151;
      v155 = v208;
      v156 = v150;
      v157 = v193;
      sub_1CF68DDB0(v150, v153, v208, v111, v178);
      v158 = v157;
      if (v157)
      {
LABEL_45:
        *(&v238 + 1) = v155;
        *&v239 = v207;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v237);
        (*(*(v155 - 1) + 16))(boxed_opaque_existential_0, v154, v155);
        v161 = v158;
        v205(&v237, 0, 0, 0, v158);

        sub_1CEFCCC44(&v287, &unk_1EC4BF260, &unk_1CFA01B60);

        sub_1CEFCCC44(&v253, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        v190(v197, v200);
        (v202)(v196, v212);
        (v204)(v156, v216);
        sub_1CEFCCC44(&v237, &unk_1EC4C1B30, &qword_1CFA05300);
        v162 = v195;
LABEL_49:
        v191(v162, v213);
        return;
      }

      if ((*(*(v175 - 8) + 48))(v152, 1) == 1)
      {
        (*(v176 + 8))(v152, v177);
        v194(v174, v198, v216);
        type metadata accessor for NSFileProviderItemIdentifier(0);
        if (swift_dynamicCast())
        {
          v159 = v237;
        }

        else
        {
          v159 = 0;
        }

        v158 = FPItemNotFoundError();

        if (v158)
        {
          swift_willThrow();
          v156 = v198;
          v154 = v199;
          v155 = v208;
          goto LABEL_45;
        }

        __break(1u);
LABEL_51:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/Propagation.swift", 101, 2, 1726);
      }

      (*(v176 + 8))(v152, v177);
      v233 = v287;
      v234 = v288;
      v235 = v289;
      v236 = v290;
      v229 = v265;
      v230 = v266;
      v231 = v267;
      v232 = v268;
      v225 = v261;
      v226 = v262;
      v227 = v263;
      v228 = v264;
      v221 = v257;
      v222 = v258;
      v223 = v259;
      v224 = v260;
      v217 = v253;
      v218 = v254;
      v219 = v255;
      v220 = v256;
      sub_1CEFCCBDC(&v253, &v237, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v168 = v197;
      v169 = v198;
      v164 = v195;
      v170 = v196;
      sub_1CF5FB618(v198, &v233, v189, v195, v196, v197, v215, v203, &v217, v205, v206);

      sub_1CEFCCC44(&v253, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v249 = v229;
      v250 = v230;
      v251 = v231;
      v252 = v232;
      v245 = v225;
      v246 = v226;
      v247 = v227;
      v248 = v228;
      v241 = v221;
      v242 = v222;
      v243 = v223;
      v244 = v224;
      v237 = v217;
      v238 = v218;
      v239 = v219;
      v240 = v220;
      sub_1CEFCCC44(&v237, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v190(v168, v200);
      (v202)(v170, v212);
      (v204)(v169, v216);
    }

    else
    {
      v233 = v287;
      v234 = v288;
      v235 = v289;
      v236 = v290;
      v229 = v265;
      v230 = v266;
      v231 = v267;
      v232 = v268;
      v225 = v261;
      v226 = v262;
      v227 = v263;
      v228 = v264;
      v221 = v257;
      v222 = v258;
      v223 = v259;
      v224 = v260;
      v217 = v253;
      v218 = v254;
      v219 = v255;
      v220 = v256;
      sub_1CEFCCBDC(&v253, &v237, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v172 = v111;
      v171 = v151;
      v163 = v150;
      v164 = v195;
      v165 = v150;
      v167 = v196;
      v166 = v197;
      sub_1CF5FA3EC(v163, &v233, v195, v196, v197, v113, v203, &v217, v171, v205, v206, v208, v172);

      sub_1CEFCCC44(&v253, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v249 = v229;
      v250 = v230;
      v251 = v231;
      v252 = v232;
      v245 = v225;
      v246 = v226;
      v247 = v227;
      v248 = v228;
      v241 = v221;
      v242 = v222;
      v243 = v223;
      v244 = v224;
      v237 = v217;
      v238 = v218;
      v239 = v219;
      v240 = v220;
      sub_1CEFCCC44(&v237, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v190(v166, v200);
      (v202)(v167, v212);
      v137(v165, v216);
    }

    sub_1CEFCCC44(&v287, &unk_1EC4BF260, &unk_1CFA01B60);
    v162 = v164;
    goto LABEL_49;
  }

  v66 = v212;

  sub_1CEFCCBDC(&v287, &v271, &unk_1EC4BF260, &unk_1CFA01B60);
  (*(v37 + 8))(v39, v36);
  v67 = *(v9 + *(*v9 + 89));
  if (v67)
  {
    swift_willThrow();
    v68 = v67;
  }

  else
  {
    *&v271 = v191;
    *(&v271 + 1) = v188;
    *&v272 = v190;
    *(&v272 + 1) = v189;
    type metadata accessor for Propagation.PropagationError(0, &v271);
    swift_getWitnessTable();
    v90 = swift_allocError();
    v92 = v91;
    v93 = swift_getAssociatedTypeWitness();
    v94 = (v92 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(v93 - 8) + 16))(v92, v9 + *(*v9 + 72), v93);
    *v94 = 0xD000000000000010;
    v94[1] = 0x80000001CFA54A70;
    v67 = v90;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  LODWORD(v204) = 0;
  LODWORD(v202) = 0;
  v76 = v66;
  v95 = v208;
  if (!v211)
  {
LABEL_26:
    sub_1CF60169C(v199, v67, v9, v205, v206, v215, v203, v95, v95, v207, v207);
    sub_1CEFCCC44(&v287, &unk_1EC4BF260, &unk_1CFA01B60);

    v129 = v209;
    v130 = v214;
    v131 = v204;
    if (!v204)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_23:
  type metadata accessor for StagedContext();
  v122 = swift_dynamicCastClass();
  if (!v122)
  {
    goto LABEL_26;
  }

  v123 = v122;
  v124 = swift_allocObject();
  v125 = v207;
  v124[2] = v95;
  v124[3] = v125;
  v126 = v205;
  v124[4] = v215;
  v124[5] = v126;
  v124[6] = v206;
  v124[7] = v9;
  v124[8] = v203;
  v124[9] = v67;
  v208 = (*v60 + 640);
  v127 = *v208;

  v128 = v67;
  v127(v123, sub_1CF60E600, v124);
  v76 = v212;
  v129 = v209;
  v130 = v214;
  sub_1CEFCCC44(&v287, &unk_1EC4BF260, &unk_1CFA01B60);

  v131 = v204;
  if (v204)
  {
LABEL_27:
    (*(v201 + 8))(v197, v200);
  }

LABEL_28:
  if (v202)
  {
    (*(v129 + 8))(v195, v213);
    if (!v131)
    {
      return;
    }
  }

  else if (!v131)
  {
    return;
  }

  (*(v130 + 8))(v196, v76);
  (*(v210 + 8))(v198, v216);
}

uint64_t sub_1CF60169C(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(__int128 *, void, void, void, void *), uint64_t a5, void (*a6)(char *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v62 = a6;
  v63 = a7;
  v64 = a5;
  v65 = a4;
  v55 = a1;
  v61 = a11;
  v59 = a2;
  v60 = a9;
  v12 = *a3;
  v13 = *(*a3 + 616);
  v14 = *(*a3 + 632);
  v58 = type metadata accessor for SnapshotItem(255, v13, v14, a4);
  v15 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v57 = &v53 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for ItemState(255, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  v21 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v54 = &v53 - v22;
  v23 = *(v12 + 624);
  v24 = *(v12 + 608);
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedConformanceWitness();
  v28 = swift_getAssociatedConformanceWitness();
  *&v66 = v25;
  *(&v66 + 1) = v26;
  *&v67 = v27;
  *(&v67 + 1) = v28;
  v29 = type metadata accessor for FileItemVersion(255, &v66);
  v30 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v53 - v31;
  *&v33 = v13;
  *(&v33 + 1) = v24;
  *&v34 = v14;
  *(&v34 + 1) = v23;
  v35 = v55;
  v66 = v33;
  v67 = v34;
  v36 = type metadata accessor for Reconciliation.ReconcileAfterPropagation(0, &v66);
  v56 = *(v36 - 8);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = (&v53 - v38);
  (*(*(v29 - 8) + 56))(v32, 1, 1, v29, v37);
  v40 = *(a3 + *(*a3 + 640));
  v41 = v54;
  (*(*(v20 - 8) + 56))(v54, 1, 1, v20);
  v42 = v57;
  (*(*(v58 - 8) + 56))(v57, 1, 1);
  *&v66 = 0;
  v43 = *(a3 + *(*a3 + 584));
  v44 = v59;
  v45 = v59;
  v46 = v43;

  sub_1CF98C50C(v47, v32, v40, 0, v41, v42, &v66, 0, v39, 0, v44, v43);
  v49 = v60;
  v48 = v61;
  *(&v67 + 1) = v60;
  v68 = v61;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v66);
  (*(*v49[-1].tester + 16))(boxed_opaque_existential_0, v35, v49);
  v51 = sub_1CF98CA58(v62, v63, v35, v36, v49, v48);
  v65(&v66, 0, 0, 0, v51);

  (*(v56 + 8))(v39, v36);
  return sub_1CEFCCC44(&v66, &unk_1EC4C1B30, &qword_1CFA05300);
}

double sub_1CF601C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = swift_allocObject();
  v21[2] = a7;
  v21[3] = a8;
  v21[4] = a4;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a1;
  v21[8] = a5;
  v21[9] = a6;
  swift_retain_n();

  v22 = a6;
  v23 = type metadata accessor for Continuation();
  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, a11, v20, a12, v21, v23, MEMORY[0x1E69E6158]);

  return result;
}

uint64_t sub_1CF601DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v39 = a5;
  v7 = *(*v5 + 632);
  v37 = *(*v5 + 616);
  v38 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1CF9E75D8();
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  if (sub_1CF056558() && (*(v5 + *(*v5 + 648)) & 0x10) != 0)
  {
    v21 = v44;
    result = (*(**(a1 + 16) + 152))(v5 + *(*v5 + 576), v34, v35, v36);
    if (!v21)
    {
      if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
      {
        (*(v33 + 8))(v11, v9);
        v22 = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v24 = swift_getAssociatedConformanceWitness();
        v40 = AssociatedTypeWitness;
        v41 = v22;
        v42 = AssociatedConformanceWitness;
        v43 = v24;
        v25 = type metadata accessor for ReconciliationID(0, &v40);
        return (*(*(v25 - 8) + 56))(v39, 1, 1, v25);
      }

      else
      {
        v26 = *(v12 + 32);
        v26(v15, v11, AssociatedTypeWitness);
        v27 = v39;
        v26(v39, v15, AssociatedTypeWitness);
        v28 = swift_getAssociatedTypeWitness();
        v29 = swift_getAssociatedConformanceWitness();
        v30 = swift_getAssociatedConformanceWitness();
        v40 = AssociatedTypeWitness;
        v41 = v28;
        v42 = v29;
        v43 = v30;
        v31 = type metadata accessor for ReconciliationID(0, &v40);
        swift_storeEnumTagMultiPayload();
        return (*(*(v31 - 8) + 56))(v27, 0, 1, v31);
      }
    }
  }

  else
  {
    v16 = swift_getAssociatedTypeWitness();
    v17 = swift_getAssociatedConformanceWitness();
    v18 = swift_getAssociatedConformanceWitness();
    v40 = AssociatedTypeWitness;
    v41 = v16;
    v42 = v17;
    v43 = v18;
    v19 = type metadata accessor for ReconciliationID(0, &v40);
    return (*(*(v19 - 8) + 56))(v39, 1, 1, v19);
  }

  return result;
}

id sub_1CF6022B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 624);
  v5 = *(*v1 + 608);
  *&v37 = swift_getAssociatedTypeWitness();
  type metadata accessor for SnapshotItem(255, v5, v4, v6);
  *(&v37 + 1) = sub_1CF9E75D8();
  v7 = v3[79];
  v8 = v3[77];
  swift_getAssociatedTypeWitness();
  *&v38 = sub_1CF9E75D8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  v34 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v36[0] = AssociatedTypeWitness;
  v36[1] = v10;
  v36[2] = AssociatedConformanceWitness;
  v36[3] = v32;
  type metadata accessor for FileItemVersion(255, v36);
  *(&v38 + 1) = sub_1CF9E75D8();
  v39 = &type metadata for Fields;
  v40 = MEMORY[0x1E69E6810];
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v12 = TupleTypeMetadata[12];
  v27 = TupleTypeMetadata[16];
  v28 = TupleTypeMetadata[20];
  v29 = TupleTypeMetadata[24];
  v30 = TupleTypeMetadata[28];
  v31 = TupleTypeMetadata[32];
  v13 = v3[72];
  v14 = swift_getAssociatedTypeWitness();
  (*(*(v14 - 8) + 16))(a1, v1 + v13, v14);
  v16 = type metadata accessor for SnapshotItem(0, v5, v4, v15);
  (*(*(v16 - 8) + 56))(a1 + v12, 1, 1, v16);
  v17 = swift_getAssociatedTypeWitness();
  (*(*(v17 - 8) + 56))(a1 + v27, 1, 1, v17);
  v18 = *(*v1 + 688);
  swift_beginAccess();
  *&v37 = v34;
  *(&v37 + 1) = v10;
  *&v38 = AssociatedConformanceWitness;
  *(&v38 + 1) = v32;
  type metadata accessor for FileItemVersion(255, &v37);
  v19 = sub_1CF9E75D8();
  (*(*(v19 - 8) + 16))(a1 + v28, v1 + v18, v19);
  v20 = *v1;
  *(a1 + v29) = *(v1 + *(*v1 + 648));
  *(a1 + v30) = *(v1 + *(v20 + 640));
  v35 = *(v1 + *(v20 + 584));
  *(a1 + v31) = v35;
  *&v21 = v5;
  *(&v21 + 1) = v8;
  *&v22 = v4;
  *(&v22 + 1) = v7;
  v37 = v21;
  v38 = v22;
  type metadata accessor for DirectionalTestingOperation(0, &v37);
  swift_storeEnumTagMultiPayload();
  *&v23 = v8;
  *(&v23 + 1) = v5;
  *&v24 = v7;
  *(&v24 + 1) = v4;
  v37 = v23;
  v38 = v24;
  v25 = type metadata accessor for TestingOperation(0, &v37);
  swift_storeEnumTagMultiPayload();
  (*(*(v25 - 8) + 56))(a1, 0, 1, v25);

  return v35;
}

void sub_1CF60280C()
{
  v1 = *(*v0 + 656);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1CF9E75D8();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v15 = *(*v0 + 664);
  v16 = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, &v16);
  v4 = sub_1CF9E75D8();
  (*(*(v4 - 8) + 8))(v0 + v15, v4);
  v5 = *(*v0 + 672);
  v6 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemState(255, AssociatedTypeWitness, v6, v7);
  v8 = sub_1CF9E75D8();
  (*(*(v8 - 8) + 8))(v0 + v5, v8);
  sub_1CF480A8C(*(v0 + *(*v0 + 680)), *(v0 + *(*v0 + 680) + 8), *(v0 + *(*v0 + 680) + 16), *(v0 + *(*v0 + 680) + 24));
  v9 = *(*v0 + 688);
  v10 = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v16 = v10;
  v17 = v11;
  AssociatedConformanceWitness = v12;
  v19 = v13;
  type metadata accessor for FileItemVersion(255, &v16);
  v14 = sub_1CF9E75D8();
  (*(*(v14 - 8) + 8))(v0 + v9, v14);
}

uint64_t sub_1CF602BA8()
{
  v0 = sub_1CF5E9C94();
  v1 = *(*v0 + 656);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1CF9E75D8();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v16 = *(*v0 + 664);
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, &v17);
  v4 = sub_1CF9E75D8();
  (*(*(v4 - 8) + 8))(v0 + v16, v4);
  v5 = *(*v0 + 672);
  v6 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemState(255, AssociatedTypeWitness, v6, v7);
  v8 = sub_1CF9E75D8();
  (*(*(v8 - 8) + 8))(v0 + v5, v8);
  sub_1CF480A8C(*(v0 + *(*v0 + 680)), *(v0 + *(*v0 + 680) + 8), *(v0 + *(*v0 + 680) + 16), *(v0 + *(*v0 + 680) + 24));
  v9 = *(*v0 + 688);
  v10 = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v17 = v10;
  v18 = v11;
  AssociatedConformanceWitness = v12;
  v20 = v13;
  type metadata accessor for FileItemVersion(255, &v17);
  v14 = sub_1CF9E75D8();
  (*(*(v14 - 8) + 8))(v0 + v9, v14);

  return v0;
}

uint64_t sub_1CF602F94(uint64_t a1)
{
  v1 = *(a1 + 632);
  v2 = *(a1 + 616);
  swift_getAssociatedTypeWitness();
  result = sub_1CF9E75D8();
  if (v4 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v10 = v9;
    v8[0] = swift_getAssociatedTypeWitness();
    v8[1] = swift_getAssociatedTypeWitness();
    v8[2] = swift_getAssociatedConformanceWitness();
    v8[3] = swift_getAssociatedConformanceWitness();
    type metadata accessor for FileItemVersion(255, v8);
    result = sub_1CF9E75D8();
    if (v6 <= 0x3F)
    {
      v11 = *(result - 8) + 64;
      v12 = "\t";
      v13 = &unk_1CFA0DA78;
      v14 = &unk_1CFA0DA78;
      type metadata accessor for SnapshotItem(255, v2, v1, v5);
      result = sub_1CF9E75D8();
      if (v7 <= 0x3F)
      {
        v15 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1CF6031C0@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v4 = *v2;
  v5 = type metadata accessor for SnapshotItem(0, *(*v2 + 616), *(*v2 + 632), a1);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  v9 = *(v4 + 688);
  swift_beginAccess();
  result = (*(v6 + 48))(v2 + v9, 1, v5);
  if (result)
  {
    v11 = 4;
  }

  else
  {
    (*(v6 + 16))(v8, v2 + v9, v5);
    WitnessTable = swift_getWitnessTable();
    sub_1CF06D940(v5, WitnessTable, &v13 + 7);
    result = (*(v6 + 8))(v8, v5);
    v11 = HIBYTE(v13);
  }

  *a2 = v11;
  return result;
}

uint64_t sub_1CF60335C()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 688);
  swift_beginAccess();
  v4 = type metadata accessor for SnapshotItem(0, *(v1 + 616), *(v1 + 632), v3);
  if ((*(*(v4 - 8) + 48))(v2, 1, v4))
  {
    return 2;
  }

  v6 = v2 + *(v4 + 48);
  return *(v6 + *(type metadata accessor for ItemMetadata(0) + 112));
}

uint64_t sub_1CF603444()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 688);
  swift_beginAccess();
  v4 = type metadata accessor for SnapshotItem(0, *(v1 + 616), *(v1 + 632), v3);
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  result = 0;
  if (!v5)
  {
    v7 = v2 + *(v4 + 48);
    return *(v7 + *(type metadata accessor for ItemMetadata(0) + 104));
  }

  return result;
}

unint64_t sub_1CF603534()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 688);
  swift_beginAccess();
  v4 = type metadata accessor for SnapshotItem(0, *(v1 + 616), *(v1 + 632), v3);
  v5 = 1;
  if ((*(*(v4 - 8) + 48))(v2, 1, v4))
  {
    v6 = 0;
  }

  else
  {
    v7 = v2 + *(v4 + 48);
    v6 = *(v7 + 4);
    v5 = *(v7 + 8);
  }

  return v6 | (v5 << 32);
}

uint64_t sub_1CF603624@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1 + *(*v1 + 688);
  swift_beginAccess();
  v6 = type metadata accessor for SnapshotItem(0, *(v3 + 616), *(v3 + 632), v5);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6))
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a1, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v9 = *(v6 + 36);
    v10 = swift_getAssociatedTypeWitness();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a1, v4 + v9, v10);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }
}

uint64_t sub_1CF6037EC()
{
  v1 = v0;
  v2 = *(*v0 + 632);
  v3 = *(*v0 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
  v5 = sub_1CF9E75D8();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v40 = v39 - v6;
  v45 = v4;
  v44 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v39[0] = v39 - v8;
  v39[1] = v3;
  v39[2] = v2;
  v9 = swift_getAssociatedTypeWitness();
  v46 = sub_1CF9E75D8();
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v12 = v39 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v43 = v39 - v15;
  AssociatedTypeWitness = 0;
  v52 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  v16 = v13;
  v17 = v9;
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v49 = AssociatedTypeWitness;
  v50 = v52;
  v18 = *(*v1 + 640);
  swift_beginAccess();
  v19 = v1 + v18;
  v20 = v46;
  (*(v10 + 16))(v12, v19, v46);
  if ((*(v13 + 48))(v12, 1, v9) == 1)
  {
    (*(v10 + 8))(v12, v20);
  }

  else
  {
    v21 = v43;
    (*(v13 + 32))(v43, v12, v9);
    v22 = *(*v1 + 656);
    swift_beginAccess();
    v23 = v41;
    v24 = v1 + v22;
    v25 = v40;
    v26 = v42;
    (*(v41 + 16))(v40, v24, v42);
    v28 = v44;
    v27 = v45;
    if ((*(v44 + 48))(v25, 1, v45) == 1)
    {
      (*(v16 + 8))(v21, v9);
      (*(v23 + 8))(v25, v26);
    }

    else
    {
      v29 = v39[0];
      (*(v28 + 32))(v39[0], v25, v27);
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x3A74656772617420, 0xEC0000003A64693CLL);
      swift_getAssociatedConformanceWitness();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      v30 = v48;
      MEMORY[0x1D3868CC0](v47, v48);
      v30, v31, v32, v33, v34, v35, v36, v37;
      (*(v28 + 8))(v29, v27);
      (*(v16 + 8))(v21, v17);
    }
  }

  return v49;
}

void *sub_1CF603E10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v244 = a4;
  v245 = a5;
  v243 = a3;
  v247 = a2;
  v204 = a1;
  v6 = *v5;
  v7 = *(*v5 + 616);
  v8 = *(*v5 + 632);
  v221 = type metadata accessor for JobLockRule(0, v7, v8, a4);
  MEMORY[0x1EEE9AC00](v221);
  v206 = v190 - v9;
  v239 = v6;
  v246 = v5;
  v10 = *(v6 + 78);
  v241 = *(v6 + 76);
  v242 = v10;
  v12 = type metadata accessor for SnapshotItem(0, v241, v10, v11);
  v224 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v223 = v190 - v13;
  v201 = v14;
  v200 = sub_1CF9E75D8();
  v199 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v198 = v190 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v205 = v190 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v209 = sub_1CF9E75D8();
  v208 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v207 = v190 - v19;
  v210 = AssociatedTypeWitness;
  v216 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v203 = v190 - v21;
  v23 = type metadata accessor for SnapshotItem(255, v7, v8, v22);
  v215 = sub_1CF9E75D8();
  v214 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v220 = v190 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v219 = v190 - v26;
  v218 = v23;
  v217 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v202 = v190 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v229 = sub_1CF9E75D8();
  v228 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v212 = v190 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v211 = v190 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v222 = v190 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v225 = v190 - v36;
  v227 = v29;
  v226 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v213 = v190 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v230 = v190 - v40;
  v41 = swift_getAssociatedTypeWitness();
  v42 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = swift_getAssociatedConformanceWitness();
  *&v248 = v41;
  *(&v248 + 1) = v42;
  *&v249 = AssociatedConformanceWitness;
  *(&v249 + 1) = v44;
  v45 = type metadata accessor for FileItemVersion(255, &v248);
  v238 = sub_1CF9E75D8();
  v233 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v47 = v190 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = v190 - v49;
  v234 = v45;
  v235 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v231 = v190 - v52;
  *&v53 = v241;
  v237 = v7;
  *(&v53 + 1) = v7;
  *&v54 = v242;
  v232 = v8;
  *(&v54 + 1) = v8;
  v248 = v53;
  v249 = v54;
  v55 = type metadata accessor for ItemReconciliation(255, &v248);
  v56 = sub_1CF9E75D8();
  v236 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v58 = v190 - v57;
  v59 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = v190 - v61;
  v63 = v240;
  v64 = *(v239 + 72);
  result = sub_1CF68E230(&v246[v64], v243, v244, v245, v58);
  if (!v63)
  {
    v66 = v236;
    v196 = v56;
    v67 = v238;
    v197 = v50;
    v195 = v47;
    v68 = v237;
    v194 = v64;
    v239 = v62;
    v240 = 0;
    if ((*(v59 + 48))(v58, 1, v55) == 1)
    {
      (*(v66 + 8))(v58, v196);
      return 0;
    }

    v69 = v67;
    v70 = v239;
    (*(v59 + 32))(v239, v58, v55);
    v71 = v68;
    v72 = &v70[*(v55 + 52)];
    v74 = type metadata accessor for ItemReconciliationHalf(0, v71, v232, v73);
    v75 = v233;
    v76 = v197;
    (*(v233 + 16))(v197, &v72[*(v74 + 48)], v67);
    v77 = v235;
    v78 = v234;
    if ((*(v235 + 48))(v76, 1, v234) == 1)
    {
      (*(v59 + 8))(v70, v55);
      (*(v75 + 8))(v76, v69);
      return 0;
    }

    v237 = v55;
    v79 = v78;
    v80 = v231;
    (*(v77 + 32))(v231, v76, v79);
    v81 = v228;
    v82 = *(v228 + 16);
    v83 = v225;
    v84 = v229;
    v236 = v228 + 16;
    v232 = v82;
    v82(v225, v72, v229);
    v85 = v226;
    v86 = *(v226 + 48);
    v87 = v77;
    v88 = v227;
    v197 = (v226 + 48);
    v196 = v86;
    if (v86(v83, 1, v227) == 1)
    {
      (*(v87 + 8))(v80, v79);
      (*(v59 + 8))(v239, v237);
      (*(v81 + 8))(v83, v84);
      return 0;
    }

    v193 = v59;
    v89 = *(v85 + 32);
    v225 = (v85 + 32);
    v192 = v89;
    v89(v230, v83, v88);
    v90 = v237;
    v91 = v85;
    if (sub_1CF07F1A0(v237))
    {
      v92 = v247[4];
      v93 = sub_1CF056558();
      v94 = v231;
      v96 = v241;
      v95 = v242;
      if (v93)
      {
LABEL_12:
        v97 = v228;
        goto LABEL_14;
      }

      v127 = v219;
      v128 = v230;
      v129 = v240;
      (*(*v92 + 240))(v230, 1, v243, v244, v245);
      v240 = v129;
      if (v129)
      {
        (*(v91 + 8))(v128, v88);
        (*(v235 + 8))(v94, v79);
        return (*(v193 + 8))(v239, v90);
      }

      v157 = v217;
      v158 = v127;
      v159 = v127;
      v160 = v218;
      if ((*(v217 + 48))(v158, 1, v218) == 1)
      {
        (*(v214 + 8))(v159, v215);
        v95 = v242;
        goto LABEL_12;
      }

      v180 = v235;
      (*(v235 + 8))(v94, v79);
      v181 = v202;
      (*(v157 + 32))(v202, v159, v160);
      v182 = v231;
      (*(v180 + 16))(v231, &v181[*(v160 + 40)], v79);
      (*(v157 + 8))(v181, v160);
      v95 = v242;
      v97 = v228;
      v94 = v182;
    }

    else
    {
      v94 = v231;
      v97 = v228;
      v96 = v241;
      v95 = v242;
    }

LABEL_14:
    v98 = v222;
    v99 = *(v91 + 16);
    v100 = v222;
    v222 = (v91 + 16);
    v219 = v99;
    (v99)(v100, v230, v88);
    v202 = *(v91 + 56);
    v190[1] = v91 + 56;
    (v202)(v98, 0, 1, v88);
    v101 = v98;
    v102 = v246;
    v103 = *(*v246 + 640);
    swift_beginAccess();
    v191 = *(v97 + 40);
    v190[0] = v97 + 40;
    v191(&v102[v103], v101, v229);
    swift_endAccess();
    v104 = v235;
    v105 = v195;
    v106 = v234;
    (*(v235 + 16))(v195, v94, v234);
    (*(v104 + 56))(v105, 0, 1, v106);
    v107 = *(*v102 + 656);
    swift_beginAccess();
    (*(v233 + 40))(&v102[v107], v105, v238);
    swift_endAccess();
    v109 = type metadata accessor for ItemReconciliationHalf(0, v96, v95, v108);
    v110 = *&v239[*(v109 + 36)];
    v111 = *(*v102 + 672);
    v102[v111] = (v110 & 0x12) != 0;
    v112 = (*(*v247 + 152))();
    v113 = v224;
    v114 = v223;
    if ((v112 & 0x4000) == 0)
    {
      v115 = 0;
      v116 = v94;
LABEL_16:
      v117 = v240;
LABEL_20:
      v118 = v247;
      goto LABEL_21;
    }

    v117 = v240;
    if ((v110 & 0x10) != 0 || *(v246 + 17) == 0x2000000)
    {
      v116 = v94;
      v115 = 1;
      goto LABEL_20;
    }

    v151 = v208;
    v152 = v207;
    v153 = v209;
    (*(v208 + 16))(v207, v239, v209);
    v154 = v210;
    v155 = (*(v216 + 48))(v152, 1, v210);
    v118 = v247;
    if (v155 == 1)
    {
      (*(v151 + 8))(v152, v153);
    }

    else
    {
      v177 = v216;
      v178 = v203;
      (*(v216 + 32))(v203, v152, v154);
      v179 = v240;
      (*(*v118[5] + 240))(v178, 1, v243, v244, v245);
      v240 = v179;
      if (v179)
      {
        (*(v177 + 8))(v178, v154);
        (*(v226 + 8))(v230, v227);
        (*(v235 + 8))(v94, v234);
        return (*(v193 + 8))(v239, v237);
      }

      (*(v177 + 8))(v178, v154);
      v183 = v199;
      v184 = v198;
      v185 = v200;
      (*(v199 + 32))(v198, v205, v200);
      v186 = v201;
      if ((*(v113 + 48))(v184, 1, v201) != 1)
      {
        (*(v113 + 32))(v114, v184, v186);
        v187 = &v114[*(v186 + 48)];
        v188 = type metadata accessor for ItemMetadata(0);
        v156 = v194;
        if (v187[*(v188 + 64)] == 1)
        {
          v189 = v187[*(v188 + 60)];
          (*(v113 + 8))(v114, v186);
          if (v189)
          {
            v116 = v94;
            v115 = 1;
            goto LABEL_16;
          }
        }

        else
        {
          (*(v113 + 8))(v114, v186);
        }

        v118 = v247;
LABEL_38:
        v117 = v240;
        v115 = (*(*v118[5] + 488))(&v246[v156], v243, v244, v245);
        if (v117)
        {
          (*(v226 + 8))(v230, v227);
          (*(v235 + 8))(v94, v234);
          return (*(v193 + 8))(v239, v237);
        }

        v116 = v94;
LABEL_21:
        v119 = v245;
        v120 = v246;
        v246[*(*v246 + 680)] = v115 & 1;
        v121 = v120;
        v122 = (*(*v118[5] + 312))(v120 + v194, v243, v244, v119);
        if (!v117)
        {
          v124 = v120 + *(*v120 + 664);
          *v124 = v122;
          v124[8] = v123 & 1;
          v250 = sub_1CF9E6DA8();
          v125 = *(v120 + v111);
          if (v125 != 2 && (v125 & 1) != 0 && v239[*(v237 + 56)] == 1)
          {
            (v219)(v206, v230, v227);
            swift_storeEnumTagMultiPayload();
            sub_1CF9E6E58();
            sub_1CF9E6E18();
          }

          v126 = v220;
          (*(*v247[4] + 240))(v230, 1, v243, v244, v245);
          v240 = 0;
          v130 = v120 + *(*v120 + 688);
          swift_beginAccess();
          (*(v214 + 40))(v130, v126, v215);
          swift_endAccess();
          v131 = 1;
          v132 = v218;
          v133 = (*(v217 + 48))(v130, 1, v218);
          v134 = v211;
          if (!v133)
          {
            (v219)(v211, &v130[*(v132 + 36)], v227);
            v131 = 0;
          }

          v135 = v227;
          (v202)(v134, v131, 1, v227);
          v136 = *(*v120 + 648);
          swift_beginAccess();
          v137 = v229;
          v191(v120 + v136, v134, v229);
          swift_endAccess();
          v138 = v120 + v136;
          v139 = v137;
          v140 = v212;
          v232(v212, v138, v137);
          v141 = v196(v140, 1, v135);
          v149 = v213;
          v150 = v228;
          if (v141 != 1)
          {
            v192(v213, v140, v135);
            TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
            v162 = *(TupleTypeMetadata3 + 48);
            v163 = *(TupleTypeMetadata3 + 64);
            v164 = v206;
            v165 = v219;
            (v219)(v206, v230, v135);
            v165(&v164[v162], v149, v135);
            v165(&v164[v163], v149, v135);
            swift_storeEnumTagMultiPayload();
            sub_1CF9E6E58();
            sub_1CF9E6E18();
            swift_beginAccess();
            sub_1CEFCCBDC((v120 + 7), &v248, &unk_1EC4C1BE0, &unk_1CF9FD400);
            v166 = v250;
            v168 = sub_1CF052C94(&v248, v121[15], v250, v167);
            v166, v169, v170, v171, v172, v173, v174, v175;
            sub_1CEFCCC44(&v248, &unk_1EC4C1BE0, &unk_1CF9FD400);
            v176 = *(v226 + 8);
            v176(v149, v135);
            v176(v230, v135);
            (*(v235 + 8))(v231, v234);
            (*(v193 + 8))(v239, v237);
            return v168;
          }

          v250, v142, v143, v144, v145, v146, v147, v148;
          (*(v226 + 8))(v230, v135);
          (*(v235 + 8))(v231, v234);
          (*(v193 + 8))(v239, v237);
          (*(v150 + 8))(v140, v139);
          return 0;
        }

        (*(v226 + 8))(v230, v227);
        (*(v235 + 8))(v116, v234);
        return (*(v193 + 8))(v239, v237);
      }

      (*(v183 + 8))(v184, v185);
    }

    v156 = v194;
    goto LABEL_38;
  }

  return result;
}

id sub_1CF60583C(id result)
{
  if (result)
  {
    *&v39[0] = result;
    v1 = result;
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF1B7E64();
    if (swift_dynamicCast())
    {
      v3 = v40;
      v4 = [v40 userInfo];
      v5 = sub_1CF9E6638();

      if (!*v5->tree || (v13 = sub_1CEFE4328(0xD000000000000019, 0x80000001CFA54B10), (v6 & 1) == 0))
      {
        v5, v6, v7, v8, v9, v10, v11, v12;

        memset(v39, 0, sizeof(v39));
        sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        v38 = v1;
        return v1;
      }

      sub_1CEFD1104(*v5[1].tester + 32 * v13, v39);
      v5, v14, v15, v16, v17, v18, v19, v20;
      sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      v21 = [v3 userInfo];
      v22 = sub_1CF9E6638();

      if (*v22->tree && (v30 = sub_1CEFE4328(0xD000000000000012, 0x80000001CFA54B30), (v23 & 1) != 0))
      {
        sub_1CEFD1104(*v22[1].tester + 32 * v30, v39);
        v22, v31, v32, v33, v34, v35, v36, v37;

        if (swift_dynamicCast())
        {
          return v40;
        }
      }

      else
      {
        v22, v23, v24, v25, v26, v27, v28, v29;
      }
    }

    return 0;
  }

  return result;
}

void *sub_1CF605A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v325 = a5;
  *&v324 = a4;
  v323 = a3;
  v322 = a2;
  v321 = a1;
  v6 = *v5;
  v7 = *(*v5 + 616);
  v326 = *(*v5 + 632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(v6 + 624);
  v315 = v5;
  v10 = *(v6 + 608);
  v11 = v9;
  v12 = swift_getAssociatedTypeWitness();
  v13 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = v11;
  v16 = swift_getAssociatedConformanceWitness();
  *v328 = AssociatedTypeWitness;
  *&v328[8] = v12;
  *&v328[16] = AssociatedConformanceWitness;
  *&v328[24] = v16;
  v291 = type metadata accessor for ThrottlingKey(255, v328);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v294 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v276 = &v266 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v275 = &v266 - v20;
  v290 = sub_1CF9E5CF8();
  v289 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290);
  v288 = &v266 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v328 = v12;
  *&v328[8] = AssociatedTypeWitness;
  *&v328[16] = v16;
  v309 = AssociatedConformanceWitness;
  *&v328[24] = AssociatedConformanceWitness;
  v274 = type metadata accessor for ThrottlingKey(255, v328);
  v282 = swift_getTupleTypeMetadata2();
  v273 = sub_1CF9E75D8();
  v279 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273);
  v272 = &v266 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v278 = &v266 - v24;
  v295 = TupleTypeMetadata2;
  v292 = sub_1CF9E75D8();
  v287 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292);
  v281 = &v266 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v280 = &v266 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v284 = &v266 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v293 = &v266 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v277 = &v266 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v283 = &v266 - v35;
  v300 = sub_1CF9E75D8();
  v299 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300);
  v298 = &v266 - v36;
  v301 = v12;
  v312 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v297 = &v266 - v38;
  v39 = v13;
  *v328 = v13;
  v285 = v10;
  *&v328[8] = v10;
  v40 = v326;
  *&v328[16] = v326;
  v286 = v15;
  *&v328[24] = v15;
  v41 = type metadata accessor for ItemReconciliation(255, v328);
  v302 = sub_1CF9E75D8();
  v303 = *(v302 - 8);
  MEMORY[0x1EEE9AC00](v302);
  v310 = &v266 - v42;
  v306 = v41;
  v307 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v296 = &v266 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v305 = &v266 - v46;
  v314 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v47);
  v308 = &v266 - v48;
  v319 = AssociatedTypeWitness;
  v49 = sub_1CF9E75D8();
  v316 = swift_getTupleTypeMetadata2();
  v311 = *(v316 - 8);
  MEMORY[0x1EEE9AC00](v316);
  v313 = &v266 - v50;
  v318 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v266 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v266 - v55;
  v304 = v39;
  v58 = type metadata accessor for SnapshotItem(255, v39, v40, v57);
  v59 = sub_1CF9E75D8();
  v317 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v266 - v60;
  v62 = *(v58 - 8);
  v64 = MEMORY[0x1EEE9AC00](v63);
  v66 = &v266 - v65;
  v67 = v320;
  result = (*(**(v322 + 32) + 240))(v321, 1, v323, v324, v325, v64);
  if (!v67)
  {
    v69 = v317;
    v270 = v56;
    v268 = v53;
    v271 = v49;
    v70 = v319;
    v269 = v66;
    v320 = 0;
    if ((*(v62 + 48))(v61, 1, v58) == 1)
    {
      v69[1](v61, v59);
      return 0;
    }

    v266 = v62;
    v71 = v269;
    (*(v62 + 32))(v269, v61, v58);
    v267 = v58;
    v72 = v314;
    v73 = v270;
    (*(v314 + 16))(v270, &v71[*(v58 + 36)], v70);
    (*(v72 + 56))(v73, 0, 1, v70);
    v74 = v315;
    v75 = *(*v315 + 640);
    swift_beginAccess();
    v76 = *(v316 + 48);
    v77 = *(v318 + 16);
    v78 = v313;
    v79 = v73;
    v80 = v271;
    v77(v313, v79, v271);
    v317 = v76;
    v81 = &v76[v78];
    v82 = v80;
    v83 = v78;
    v84 = v72;
    v77(v81, &v74[v75], v82);
    v85 = *(v72 + 48);
    if (v85(v83, 1, v70) == 1)
    {
      v86 = *(v318 + 8);
      v87 = v271;
      v86(v270, v271);
      v88 = v85(v317 + v83, 1, v70);
      v89 = v312;
      v90 = v326;
      if (v88 == 1)
      {
        v86(v83, v87);
        v91 = v267;
        goto LABEL_14;
      }
    }

    else
    {
      v92 = v268;
      v93 = v271;
      v77(v268, v83, v271);
      v94 = v317;
      if (v85(v317 + v83, 1, v70) != 1)
      {
        v95 = v92;
        v96 = v308;
        (*(v84 + 32))(v308, v94 + v83, v70);
        v97 = sub_1CF9E6868();
        v98 = *(v84 + 8);
        v98(v96, v70);
        v99 = *(v318 + 8);
        v99(v270, v93);
        v100 = v95;
        v90 = v326;
        v98(v100, v70);
        v99(v83, v93);
        v89 = v312;
        v91 = v267;
        if (v97)
        {
LABEL_14:
          v101 = v310;
          v102 = v320;
          sub_1CF68DDB0(v321, v323, v324, v325, v310);
          v320 = v102;
          if (v102)
          {
LABEL_15:
            v103 = v266;
            v104 = v269;
            return (*(v103 + 8))(v104, v91);
          }

          v105 = v307;
          v106 = v306;
          if ((*(v307 + 48))(v101, 1, v306) == 1)
          {
            (*(v266 + 8))(v269, v91);
            (*(v303 + 8))(v101, v302);
            return 0;
          }

          v107 = v101;
          v108 = v305;
          (*(v105 + 32))(v305, v107, v106);
          v110 = type metadata accessor for ItemReconciliationHalf(0, v304, v90, v109);
          if ((v108[*(v110 + 36)] & 0x10) != 0)
          {
            type metadata accessor for NSFileProviderError(0);
            v327 = -2010;
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CF60FA30(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
            sub_1CF9E57D8();
            (*(v105 + 8))(v108, v106);
            (*(v266 + 8))(v269, v91);
            return *v328;
          }

          v319 = v110;
          v326 = *&v108[*(v106 + 64) + 8];
          v111 = v299;
          v112 = &v108[*(v106 + 52)];
          v113 = v106;
          v114 = v298;
          v115 = v300;
          (*(v299 + 16))(v298, v112, v300);
          v116 = v301;
          if ((*(v89 + 48))(v114, 1, v301) == 1)
          {
            (*(v111 + 8))(v114, v115);
            v117 = *(v322 + 24);
            v118 = *(*v117 + 384);
            v119 = v320;
            v120 = v118(v321, 0, v326, 0, v323, v324, v325);
            v320 = v119;
            if (v119)
            {
              (*(v105 + 8))(v305, v113);
LABEL_49:
              v91 = v267;
              goto LABEL_50;
            }

            v319 = v117;
            *v328 = v120;
            v126 = v120;
            v127 = v295;
            sub_1CF9E6E58();
            WitnessTable = swift_getWitnessTable();
            v129 = v293;
            sub_1CF9E7118();
            v126, v130, v131, v132, v133, v134, v135, v136;
            v137 = *(v294 + 48);
            if (v137(v129, 1, v127) == 1)
            {
              v318 = WitnessTable;
              v138 = *(v287 + 8);
              v138(v129, v292);
              v139 = v320;
              v140 = v118(v321, 23, v326, 0, v323, v324, v325);
              v320 = v139;
              if (v139)
              {
                (*(v307 + 8))(v305, v306);
LABEL_66:
                v91 = v267;
                goto LABEL_15;
              }

              v317 = v138;
              *v328 = v140;
              v176 = v284;
              v177 = v140;
              sub_1CF9E7118();
              v177, v178, v179, v180, v181, v182, v183, v184;
              v185 = v295;
              if (v137(v176, 1, v295) == 1)
              {
                v186 = v176;
                v187 = v292;
                v188 = &v332;
LABEL_53:
                (*(v188 - 32))(v186, v187);
LABEL_54:
                v123 = v306;
                v91 = v267;
                v105 = v307;
                v108 = v305;
LABEL_55:
                v189 = v320;
                v190 = (*(**(v322 + 24) + 384))(v321, 83, v326, 0, v323, v324, v325);
                v320 = v189;
                if (!v189)
                {
                  *v328 = v190;
                  v191 = v190;
                  v192 = v295;
                  sub_1CF9E6E58();
                  swift_getWitnessTable();
                  v193 = v280;
                  sub_1CF9E7118();
                  (*(v105 + 8))(v108, v123);
                  (*(v266 + 8))(v269, v91);
                  v191, v194, v195, v196, v197, v198, v199, v200;
                  v201 = v287;
                  v202 = v281;
                  v203 = v193;
                  v204 = v292;
                  (*(v287 + 32))(v281, v203, v292);
                  v205 = v294;
                  if ((*(v294 + 48))(v202, 1, v192) != 1)
                  {
                    v247 = *(v205 + 32);
                    v248 = v275;
                    v247(v275, v202, v192);
                    v249 = v276;
                    v247(v276, v248, v192);
                    v250 = &v249[*(v192 + 48)];
                    v251 = *(v250 + 3);
                    *&v328[32] = *(v250 + 2);
                    v329 = v251;
                    v330 = *(v250 + 8);
                    v252 = *v250;
                    *&v328[16] = *(v250 + 1);
                    *v328 = v252;
                    v253 = *&v328[40];
                    v254 = *&v328[40];
                    sub_1CF2CA1E8(v328);
                    (*(*(v291 - 8) + 8))(v249);
                    return v253;
                  }

                  (*(v201 + 8))(v202, v204);
                  return 0;
                }

                goto LABEL_26;
              }

              v245 = &v176[*(v185 + 48)];
              v144 = *v245;
              v325 = *(v245 + 24);
              v324 = *(v245 + 8);
              v145 = *(v245 + 5);
              v146 = v245[48];
              v147 = *(v245 + 7);
              v148 = *(v245 + 8);
              (*(*(v291 - 8) + 8))(v176);
              goto LABEL_36;
            }

            v142 = &v129[*(v127 + 48)];
            v143 = v129;
            goto LABEL_34;
          }

          v121 = v297;
          (*(v89 + 32))(v297, v114, v116);
          v122 = v296;
          v123 = v113;
          v124 = v320;
          sub_1CF959950(v322, v323, v113, v324, v325, v296);
          if (v124)
          {
            v320 = v124;
            (*(v89 + 8))(v121, v116);
LABEL_26:
            (*(v105 + 8))(v108, v123);
LABEL_50:
            v104 = v269;
            v103 = v266;
            return (*(v103 + 8))(v104, v91);
          }

          if ((*(v122 + *(v319 + 10)) & 2) != 0)
          {
            v166 = *(v322 + 24);
            v167 = (*v166 + 384);
            v168 = *v167;
            v169 = (*v167)(v321, 1, v326, 0, v323, v324, v325);
            v320 = 0;
            v319 = v166;
            *v328 = v169;
            v206 = v169;
            v207 = v295;
            sub_1CF9E6E58();
            swift_getWitnessTable();
            v208 = v283;
            sub_1CF9E7118();
            v206, v209, v210, v211, v212, v213, v214, v215;
            v216 = *(v294 + 48);
            if (v216(v208, 1, v207) == 1)
            {
              v318 = *(v287 + 8);
              (v318)(v208, v292);
              v217 = v320;
              v218 = v168(v321, 23, v326, 0, v323, v324, v325);
              v320 = v217;
              if (!v217)
              {
                *v328 = v218;
                v219 = v277;
                v220 = v218;
                sub_1CF9E7118();
                (*(v307 + 8))(v296, v306);
                (*(v312 + 8))(v297, v301);
                v220, v221, v222, v223, v224, v225, v226, v227;
                if (v216(v219, 1, v295) == 1)
                {
                  v186 = v277;
                  v187 = v292;
                  v188 = &v333;
                  goto LABEL_53;
                }

                v143 = v277;
                v142 = &v277[*(v295 + 48)];
LABEL_34:
                v144 = *v142;
                v325 = *(v142 + 24);
                v324 = *(v142 + 8);
                v145 = *(v142 + 5);
                v146 = v142[48];
                v147 = *(v142 + 7);
                v148 = *(v142 + 8);
                v149 = &v323;
LABEL_35:
                (*(*(*(v149 - 32) - 8) + 8))(v143);
LABEL_36:
                v150 = v306;
                goto LABEL_37;
              }

LABEL_65:
              v243 = *(v307 + 8);
              v244 = v306;
              v243(v296, v306);
              (*(v312 + 8))(v297, v301);
              v243(v305, v244);
              goto LABEL_66;
            }

            v246 = &v208[*(v295 + 48)];
            v144 = *v246;
            v325 = *(v246 + 24);
            v324 = *(v246 + 8);
            v145 = *(v246 + 5);
            v146 = v246[48];
            v147 = *(v246 + 7);
            v148 = *(v246 + 8);
            (*(*(v291 - 8) + 8))(v208);
            v150 = v306;
            (*(v307 + 8))(v296, v306);
            (*(v312 + 8))(v297, v301);
          }

          else
          {
            v320 = 0;
            v141 = v122 + *(v113 + 52);
            if ((*(v141 + *(type metadata accessor for ItemReconciliationHalf(0, v285, v286, v125) + 40)) & 2) == 0)
            {
              (*(v105 + 8))(v122, v113);
              (*(v89 + 8))(v297, v301);
              goto LABEL_55;
            }

            v171 = *(**(v322 + 24) + 376);
            v172 = v297;
            v319 = *(v322 + 24);
            v173 = v320;
            v174 = v171(v297, 1, v326, 0, v323, v324, v325);
            v320 = v173;
            if (v173)
            {
              v175 = *(v105 + 8);
              v175(v296, v113);
              (*(v89 + 8))(v172, v301);
              v175(v305, v113);
              goto LABEL_49;
            }

            *v328 = v174;
            v228 = v174;
            v229 = v282;
            sub_1CF9E6E58();
            swift_getWitnessTable();
            v230 = v278;
            sub_1CF9E7118();
            v228, v231, v232, v233, v234, v235, v236, v237;
            v238 = *(*(v229 - 8) + 48);
            if (v238(v230, 1, v229) == 1)
            {
              v239 = *(v279 + 8);
              v279 += 8;
              v240 = v239;
              v239(v230, v273);
              v241 = v320;
              v242 = v171(v172, 23, v326, 0, v323, v324, v325);
              v320 = v241;
              if (!v241)
              {
                v256 = v242;
                *v328 = v242;
                v257 = v272;
                sub_1CF9E7118();
                (*(v307 + 8))(v296, v306);
                (*(v312 + 8))(v297, v301);
                v256, v258, v259, v260, v261, v262, v263, v264;
                if (v238(v257, 1, v282) == 1)
                {
                  v240(v272, v273);
                  goto LABEL_54;
                }

                v143 = v272;
                v265 = &v272[*(v282 + 48)];
                v144 = *v265;
                v325 = *(v265 + 24);
                v324 = *(v265 + 8);
                v145 = *(v265 + 5);
                v146 = v265[48];
                v147 = *(v265 + 7);
                v148 = *(v265 + 8);
                v149 = &v306;
                goto LABEL_35;
              }

              goto LABEL_65;
            }

            v255 = &v230[*(v282 + 48)];
            v144 = *v255;
            v325 = *(v255 + 24);
            v324 = *(v255 + 8);
            v145 = *(v255 + 5);
            v146 = v255[48];
            v147 = *(v255 + 7);
            v148 = *(v255 + 8);
            (*(*(v274 - 8) + 8))(v230);
            v150 = v306;
            (*(v307 + 8))(v296, v306);
            (*(v312 + 8))(v172, v301);
          }

LABEL_37:
          v151 = v266;
          v152 = v290;
          v153 = v319;
          v328[0] = v144;
          *&v328[8] = v324;
          *&v328[24] = v325;
          *&v328[40] = v145;
          LOBYTE(v329) = v146;
          *(&v329 + 1) = v147;
          v330 = v148;
          v154 = v288;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v156 = v155;
          result = (*(v289 + 8))(v154, v152);
          v157 = v156 * 1000000000.0;
          if (COERCE__INT64(fabs(v156 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else
          {
            v158 = v267;
            if (v157 > -9.22337204e18)
            {
              if (v157 < 9.22337204e18)
              {
                v159 = v157 - v326;
                if (!__OFSUB__(v157, v326))
                {
                  (*(*v153 + 120))(&v331, result);
                  result = sub_1CF338754(&v331);
                  v160 = v334 - v159;
                  if (!__OFSUB__(v334, v159))
                  {
                    v161 = v307;
                    v162 = v305;
                    if (v160 <= 0)
                    {
                      (*(v307 + 8))(v305, v150);
                      (*(v151 + 8))(v269, v158);
                      v170 = v145;
                      sub_1CF2CA1E8(v328);
                      return v145;
                    }

                    v163 = sub_1CF60583C(v145);
                    if (v163)
                    {
                      v164 = v163;
                      _s3__C4CodeOMa_1(0);
                      v327 = -1004;
                      v165 = v164;
                      sub_1CF60FA30(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
                      sub_1CF9E5658();

                      sub_1CF2CA1E8(v328);
                      (*(v161 + 8))(v162, v150);
                      (*(v151 + 8))(v269, v158);
                      return v164;
                    }

                    sub_1CF2CA1E8(v328);
                    (*(v161 + 8))(v162, v150);
                    (*(v151 + 8))(v269, v158);
                    return 0;
                  }

LABEL_79:
                  __break(1u);
                  return result;
                }

LABEL_78:
                __break(1u);
                goto LABEL_79;
              }

LABEL_77:
              __break(1u);
              goto LABEL_78;
            }
          }

          __break(1u);
          goto LABEL_77;
        }

LABEL_10:
        (*(v266 + 8))(v269, v91);
        return 0;
      }

      (*(v318 + 8))(v270, v93);
      (*(v72 + 8))(v92, v70);
    }

    (*(v311 + 8))(v83, v316);
    v91 = v267;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1CF607D88(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, char *a4, void (*a5)(__n128 *, void, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v224 = a8;
  v225 = a7;
  v220 = a5;
  v221 = a6;
  v222 = a4;
  v219 = a3;
  v228 = a1;
  v9 = v8;
  v10 = *(*v8 + 616);
  v11 = *v8;
  v12 = *(v11 + 79);
  v13 = v9;
  v213 = type metadata accessor for SnapshotItem(255, v10, v12, a4);
  v14 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v214 = &v178 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v212 = type metadata accessor for ItemState(255, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  v19 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v209 = &v178 - v20;
  v217 = v11;
  v229 = v13;
  v21 = *(v11 + 78);
  v22 = *(v11 + 76);
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v238.n128_u64[0] = v23;
  v238.n128_u64[1] = v24;
  v239.n128_u64[0] = v25;
  v239.n128_u64[1] = v26;
  v206 = type metadata accessor for FileItemVersion(255, &v238);
  v27 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v207 = &v178 - v28;
  v29.n128_u64[0] = v21;
  v29.n128_u64[1] = v12;
  v227 = v29;
  v29.n128_u64[0] = v22;
  v29.n128_u64[1] = v10;
  v218 = v29;
  v29.n128_u64[0] = v10;
  v29.n128_u64[1] = v22;
  v226 = v29;
  v30.n128_u64[0] = v12;
  v30.n128_u64[1] = v21;
  v223 = v30;
  v238 = v29;
  v239 = v30;
  v31 = type metadata accessor for Reconciliation.ReconcileAfterPropagation(0, &v238);
  v210 = *(v31 - 8);
  v211 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v208 = (&v178 - v32);
  v204 = v21;
  v205 = v22;
  v34 = type metadata accessor for ItemReconciliationHalf(0, v22, v21, v33);
  v183 = *(v34 - 8);
  v184 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v182 = &v178 - v35;
  v37 = type metadata accessor for ItemReconciliationHalf(0, v10, v12, v36);
  v180 = *(v37 - 8);
  v181 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v179 = &v178 - v38;
  v238 = v226;
  v239 = v223;
  v39 = type metadata accessor for ItemReconciliation(255, &v238);
  v40 = sub_1CF9E75D8();
  v186 = *(v40 - 8);
  v187 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v195 = &v178 - v41;
  v192 = v39;
  v190 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v188 = &v178 - v43;
  v44 = swift_getAssociatedTypeWitness();
  v45 = swift_getAssociatedTypeWitness();
  v46 = swift_getAssociatedConformanceWitness();
  v193 = v10;
  v194 = v12;
  v47 = swift_getAssociatedConformanceWitness();
  v238.n128_u64[0] = v44;
  v238.n128_u64[1] = v45;
  v239.n128_u64[0] = v46;
  v239.n128_u64[1] = v47;
  v48 = type metadata accessor for FileItemVersion(255, &v238);
  v49 = sub_1CF9E75D8();
  v201 = *(v49 - 8);
  v202 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v216 = &v178 - v50;
  v51 = sub_1CF9E75D8();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v178 - v53;
  v215 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v196 = &v178 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v199 = &v178 - v58;
  v59 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v60);
  v191 = &v178 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v223.n128_u64[0] = &v178 - v63;
  v189 = v64;
  MEMORY[0x1EEE9AC00](v65);
  v200 = &v178 - v66;
  v67 = v229;
  v185 = *(v228 + 4);
  v68 = *(v185 + 16);
  v69 = *(v217 + 80);
  swift_beginAccess();
  v70 = v67 + v69;
  v71 = v59;
  (*(v52 + 16))(v54, v70, v51);
  v72 = (*(v59 + 48))(v54, 1, AssociatedTypeWitness);
  v226.n128_u64[0] = v68;
  v197 = v48;
  v198 = AssociatedTypeWitness;
  v203 = v59;
  if (v72 == 1)
  {
    v73 = *(v52 + 8);

    v73(v54, v51);
    v238 = v218;
    v239 = v227;
    type metadata accessor for Propagation.PropagationError(0, &v238);
    swift_getWitnessTable();
    v74 = swift_allocError();
    v76 = v75;
    v77 = swift_getAssociatedTypeWitness();
    v78 = (v76 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(v77 - 8) + 16))(v76, v229 + *(*v229 + 576), v77);
    *v78 = 0xD000000000000010;
    v78[1] = 0x80000001CFA54A70;
    swift_storeEnumTagMultiPayload();
    v227.n128_u64[0] = v74;
    swift_willThrow();
LABEL_11:
    v223.n128_u32[0] = 0;
    v218.n128_u64[0] = 0;
    v114 = v224;
    v113 = v225;
    v239.n128_u64[1] = v225;
    *&v240 = v224;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v238);
    v116 = *v113[-1].tester;
    v117 = *(v116 + 16);
    v118 = v222;
    v204 = v116 + 16;
    v205 = v117;
    v117(boxed_opaque_existential_0, v222, v113);
    v119 = v207;
    (*(*(v206 - 8) + 56))(v207, 1, 1);
    v120 = v229;
    v121 = v120 + *(*v120 + 664);
    v217 = *v121;
    LODWORD(v216) = v121[8];
    v122 = v209;
    (*(*(v212 - 8) + 56))(v209, 1, 1);
    v123 = v214;
    (*(*(v213 - 8) + 56))(v214, 1, 1);
    v234.n128_u64[0] = 0;
    v124 = *(v120 + *(*v120 + 584));

    v125 = v227.n128_u64[0];
    v126 = v227.n128_u64[0];
    v127 = v124;
    v177 = v124;
    v128 = v208;
    sub_1CF98C50C(v120, v119, v217, v216, v122, v123, &v234, 0, v208, 0, v125, v177);
    v129 = v211;
    v130 = v218.n128_u64[0];
    v131 = sub_1CF98CA58(v228, v219, v118, v211, v113, v114);
    if (v130)
    {
      (*(v210 + 8))(v128, v129);
      sub_1CEFCCC44(&v238, &unk_1EC4C1B30, &qword_1CFA05300);
      v239.n128_u64[1] = v113;
      *&v240 = v114;
      v132 = __swift_allocate_boxed_opaque_existential_0(&v238);
      v205(v132, v118, v113);
      v133 = v130;
      v220(&v238, 0, 0, 0, v130);
    }

    else
    {
      v130 = v131;
      (*(v210 + 8))(v128, v129);
      v220(&v238, 0, 0, 0, v130);
    }

    result = sub_1CEFCCC44(&v238, &unk_1EC4C1B30, &qword_1CFA05300);
    if (v223.n128_u32[0])
    {
      v215[1](v199, v197);
      return (*(v203 + 8))(v200, v198);
    }

    return result;
  }

  v79 = *(v59 + 32);
  v79(v223.n128_u64[0], v54, AssociatedTypeWitness);
  v80 = v229;
  v81 = v71;
  v82 = *(*v229 + 656);
  swift_beginAccess();
  v83 = v80 + v82;
  v84 = v216;
  (*(v201 + 16))(v216, v83, v202);
  v85 = v215;
  v86 = AssociatedTypeWitness;
  if ((v215[6])(v84, 1, v48) == 1)
  {
    v87 = *(v201 + 8);

    v87(v216, v202);
    v238 = v218;
    v239 = v227;
    type metadata accessor for Propagation.PropagationError(0, &v238);
    swift_getWitnessTable();
    v88 = swift_allocError();
    v90 = v89;
    v91 = swift_getAssociatedTypeWitness();
    v92 = (v90 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(v91 - 8) + 16))(v90, v80 + *(*v80 + 576), v91);
    *v92 = 0xD000000000000011;
    v92[1] = 0x80000001CFA54A90;
    swift_storeEnumTagMultiPayload();
    v227.n128_u64[0] = v88;
    swift_willThrow();
    v93 = v81;
LABEL_10:
    (*(v93 + 8))(v223.n128_u64[0], v86);
    goto LABEL_11;
  }

  v94 = v196;
  (v85[4])(v196, v216, v48);
  if (*(v80 + *(*v80 + 672)) == 2)
  {
    v238 = v218;
    v239 = v227;
    type metadata accessor for Propagation.PropagationError(0, &v238);
    v95 = v48;
    v96 = v85;
    swift_getWitnessTable();
    v97 = v94;
    v98 = swift_allocError();
    v100 = v99;
    v101 = swift_getAssociatedTypeWitness();
    v102 = (v100 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(v101 - 8) + 16))(v100, v229 + *(*v229 + 576), v101);
    *v102 = 0xD000000000000016;
    v102[1] = 0x80000001CFA54AB0;
    swift_storeEnumTagMultiPayload();
    v227.n128_u64[0] = v98;
    swift_willThrow();
    v103 = v96[1];

    v104 = v97;
LABEL_9:
    v103(v104, v95);
    v93 = v203;
    goto LABEL_10;
  }

  v105 = v227;
  v106 = v218;
  if (*(v229 + *(*v80 + 680)) == 2)
  {
    v238 = v218;
    v239 = v227;
    type metadata accessor for Propagation.PropagationError(0, &v238);
    v95 = v48;
    v107 = v85;
    swift_getWitnessTable();
    v108 = swift_allocError();
    v110 = v109;
    v111 = swift_getAssociatedTypeWitness();
    v112 = (v110 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(v111 - 8) + 16))(v110, v229 + *(*v229 + 576), v111);
    *v112 = 0xD000000000000011;
    v112[1] = 0x80000001CFA54AD0;
    swift_storeEnumTagMultiPayload();
    v227.n128_u64[0] = v108;
    swift_willThrow();
    v103 = v107[1];

    v104 = v196;
    goto LABEL_9;
  }

  v218.n128_u32[0] = *(v80 + *(*v80 + 672));
  v227.n128_u64[0] = v79;
  v135 = (v203 + 16);
  v136 = v200;
  v217 = *(v203 + 16);
  v217(v200, v223.n128_u64[0], AssociatedTypeWitness, v105, v106);
  v137 = v196;
  (v85[2])(v199, v196, v48);
  v138 = v48;
  v139 = *(v224 + 8);

  sub_1CF68DDB0(v136, v222, v225, v139, v195);
  v140 = v85[1];
  v222 = (v85 + 1);
  v216 = v140;
  (v140)(v137, v138);
  v141 = *(v135 - 1);
  v142 = v223.n128_u64[0];
  v223.n128_u64[0] = (v135 - 8);
  v215 = v141;
  (v141)(v142, v86);
  v143 = v190;
  v144 = v195;
  v145 = v192;
  if ((*(v190 + 48))(v195, 1, v192) == 1)
  {
    (*(v186 + 8))(v144, v187);
    v238 = 0uLL;
    v239.n128_u64[0] = 0;
    v239.n128_u64[1] = 0xB000000000000000;
    v240 = 0u;
    v241 = 0u;
    v146 = v203;
  }

  else
  {
    v214 = v135;
    v147 = v188;
    (*(v143 + 32))(v188, v144, v145);
    if (sub_1CF056558())
    {
      v149 = v180;
      v148 = v181;
      v150 = v147;
      v151 = v179;
      (*(v180 + 16))(v179, v150, v181);
      (*(v143 + 8))(v150, v145);
      v152 = &v151[*(v148 + 68)];
      v153 = *(v152 + 1);
      v234 = *v152;
      v235 = v153;
      v154 = *(v152 + 3);
      v236 = *(v152 + 2);
      v237 = v154;
      sub_1CEFCCBDC(&v234, &v238, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v149 + 8))(v151, v148);
    }

    else
    {
      v156 = v182;
      v155 = v183;
      v157 = v184;
      (*(v183 + 16))(v182, &v147[*(v145 + 52)], v184);
      (*(v143 + 8))(v147, v145);
      v158 = &v156[*(v157 + 68)];
      v159 = *(v158 + 1);
      v234 = *v158;
      v235 = v159;
      v160 = *(v158 + 3);
      v236 = *(v158 + 2);
      v237 = v160;
      sub_1CEFCCBDC(&v234, &v238, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v155 + 8))(v156, v157);
    }

    v238 = v234;
    v239 = v235;
    v240 = v236;
    v241 = v237;
    v146 = v203;
  }

  v161 = v205;
  v162 = v229;
  v214 = *(v162 + *(*v162 + 584));
  v230 = v238;
  v231 = v239;
  v232 = v240;
  v233 = v241;
  v163 = v191;
  v164 = v198;
  (v217)(v191, v200, v198);
  v165 = (*(v146 + 80) + 96) & ~*(v146 + 80);
  v166 = v164;
  v167 = (v189 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
  v168 = swift_allocObject();
  v169 = v193;
  v168[2] = v161;
  v168[3] = v169;
  v170 = v204;
  v168[4] = v225;
  v168[5] = v170;
  v171 = v224;
  v168[6] = v194;
  v168[7] = v171;
  v168[8] = v228;
  v168[9] = v162;
  v172 = v221;
  v168[10] = v220;
  v168[11] = v172;
  (v227.n128_u64[0])(v168 + v165, v163, v166);
  v173 = v226.n128_u64[0];
  *(v168 + v167) = v219;
  v174 = *(*v173 + 664);
  sub_1CEFCCBDC(&v238, &v234, &unk_1EC4BF260, &unk_1CFA01B60);

  v175 = v199;
  v176 = v200;
  v174(v200, v218.n128_u8[0] & 1, v199, v214, &v230, sub_1CF60E348, v168);

  sub_1CEFCCC44(&v238, &unk_1EC4BF260, &unk_1CFA01B60);
  v234 = v230;
  v235 = v231;
  v236 = v232;
  v237 = v233;
  sub_1CEFCCC44(&v234, &unk_1EC4BF260, &unk_1CFA01B60);
  (v216)(v175, v197);
  return (v215)(v176, v198);
}

double sub_1CF6094D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a7;
  v60 = a5;
  v47 = a4;
  v48 = a3;
  v52 = a1;
  v45 = a8;
  v46 = a9;
  v57 = a2;
  v12 = *a2;
  v55 = a6;
  v56 = v12;
  v58 = *(v12 + 96);
  v53 = *(v12 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v50 = AssociatedTypeWitness;
  v14 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v42 - v15;
  v44 = &v42 - v15;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v17 = sub_1CF9E8238();
  v42 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v20;
  v43 = &v42 - v20;
  v22 = swift_allocObject();
  v54 = v22;
  v22[2] = a8;
  v22[3] = a9;
  v22[4] = a3;
  v23 = swift_allocObject();
  v51 = v23;
  v24 = v60;
  *(v23 + 16) = a4;
  *(v23 + 24) = v24;
  (*(v18 + 16))(v21, v52, v17);
  v25 = v49;
  v26 = v16;
  v27 = v50;
  (*(v49 + 16))(v26, v55, v50);
  v28 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v29 = (v19 + *(v25 + 80) + v28) & ~*(v25 + 80);
  v55 = (v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v57;
  v34 = v56;
  *(v32 + 2) = *(v56 + 88);
  v35 = v45;
  *(v32 + 3) = v53;
  *(v32 + 4) = v35;
  *(v32 + 5) = *(v34 + 104);
  v36 = v46;
  *(v32 + 6) = v58;
  *(v32 + 7) = v36;
  (*(v18 + 32))(&v32[v28], v43, v42);
  (*(v25 + 32))(&v32[v29], v44, v27);
  v37 = v47;
  *&v32[v55] = v48;
  *&v32[v30] = v33;
  v38 = v60;
  *&v32[v31] = v59;
  v39 = &v32[(v31 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v39 = v37;
  v39[1] = v38;
  v40 = type metadata accessor for Continuation();
  swift_retain_n();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF60E410, v54, sub_1CF559418, v51, sub_1CF60E43C, v32, v40, MEMORY[0x1E69E6158]);

  return result;
}

void sub_1CF609934(void *a1, void *a2, uint64_t a3, uint64_t *a4, void (*a5)(char *, uint64_t), uint64_t a6, void (*a7)(__int128 *, void, char *, uint64_t, void *), uint64_t a8)
{
  v262 = a8;
  v263 = a7;
  v273 = a6;
  v276 = a5;
  v265 = a3;
  v280 = a2;
  v275 = a1;
  v9 = *a4;
  v10 = *(*a4 + 632);
  v11 = *(*a4 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v271 = type metadata accessor for ItemState(255, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v14 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v286 = &v242 - v15;
  v16 = *(v9 + 624);
  v274 = a4;
  v17 = *(v9 + 608);
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  *&v288 = v18;
  *(&v288 + 1) = v19;
  *&v289 = v20;
  *(&v289 + 1) = v21;
  v268 = type metadata accessor for FileItemVersion(255, &v288);
  v22 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v285 = &v242 - v23;
  *&v24 = v11;
  *(&v24 + 1) = v17;
  *&v25 = v10;
  *(&v25 + 1) = v16;
  v244 = v25;
  v288 = v24;
  v289 = v25;
  v245 = v24;
  v272 = type metadata accessor for Reconciliation.ReconcileAfterPropagation(0, &v288);
  v270 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v269 = &v242 - v26;
  v28 = type metadata accessor for SnapshotItem(0, v11, v10, v27);
  v281 = *v28[-1].tester;
  MEMORY[0x1EEE9AC00](v28);
  v264 = &v242 - v29;
  v278 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v257 = &v242 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v266 = &v242 - v33;
  v255 = sub_1CF9E75D8();
  v253 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v250 = &v242 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v252 = &v242 - v36;
  v260 = AssociatedTypeWitness;
  v261 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v37);
  v256 = &v242 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v246 = &v242 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v248 = &v242 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v251 = &v242 - v44;
  v258 = v10;
  v46 = type metadata accessor for FileTreeError(0, v11, v10, v45);
  v254 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v247 = &v242 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v242 - v49;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v52 = sub_1CF9E8238();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v55 = (&v242 - v54);
  v279 = v28;
  v56 = sub_1CF9E75D8();
  v283 = *(v56 - 8);
  v284 = v56;
  MEMORY[0x1EEE9AC00](v56);
  v282 = &v242 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v267 = &v242 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v242 - v61;
  MEMORY[0x1EEE9AC00](v63);
  v249 = &v242 - v64;
  v66 = MEMORY[0x1EEE9AC00](v65);
  v287 = &v242 - v67;
  (*(v53 + 16))(v55, v280, v52, v66);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v243 = v46;
    v100 = *(v55 + *(TupleTypeMetadata2 + 48));
    v101 = v278;
    if ((*(v278 + 6))(v55, 1, v11) == 1)
    {
      v72 = v281;
      (*(v281 + 56))(v287, 1, 1, v279);
      v102 = v100;
      v103 = 0;
      v104 = v283;
      v105 = v284;
      if (v100)
      {
LABEL_12:
        *&v288 = 0x3A7265766D6F6420;
        *(&v288 + 1) = 0xE800000000000000;
        v280 = v100;
        v106 = v100;
        v107 = [v106 description];
        v108 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v110 = v109;

        MEMORY[0x1D3868CC0](v108, v110);
        v72 = v281;

        v110, v111, v112, v113, v114, v115, v116, v117;
        v118 = *(&v288 + 1);
        v265 = v288;
LABEL_18:
        v266 = v103;
        v135 = v279;
        v71 = v287;
        goto LABEL_26;
      }
    }

    else
    {
      v119 = v266;
      (v101[4])(v266, v55, v11);
      v120 = v257;
      (v101[2])(v257, v119, v11);
      v121 = v287;
      v122 = v258;
      sub_1CF06B77C(v120, v11, v258, v287);
      (*(v281 + 56))(v121, 0, 1, v279);
      v123 = v122[8];
      v124 = v100;
      v125 = v256;
      v257 = v123;
      (v123)(v11, v122);
      v126 = v265;
      v127 = v260;
      LOBYTE(v120) = sub_1CF9E6868();
      v128 = v261;
      (*(v261 + 1))(v125, v127);
      if (v120)
      {
        v103 = 0;
        v104 = v283;
        v129 = v266;
      }

      else
      {
        swift_getWitnessTable();
        v103 = swift_allocError();
        v280 = v100;
        v131 = v130;
        swift_getTupleTypeMetadata2();
        v128[2](v131, v126, v127);
        (v128[7])(v131, 0, 1, v127);
        v132 = v266;
        (v257)(v11, v122);
        v100 = v280;
        swift_storeEnumTagMultiPayload();
        v133 = v103;
        v104 = v283;
        v129 = v132;
      }

      (*(v278 + 1))(v129, v11);
      v134 = v103;
      v72 = v281;
      v105 = v284;
      if (v100)
      {
        goto LABEL_12;
      }
    }

    v265 = 0;
    v280 = 0;
    v118 = 0xE000000000000000;
    goto LABEL_18;
  }

  v290 = *v55;
  v68 = v290;
  v69 = v290;
  v70 = swift_dynamicCast();
  v71 = v287;
  v72 = v281;
  if (v70)
  {
    v73 = v46;
    v74 = v50;
    v278 = v68;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      v136 = v71;
      v138 = v275[3];
      v137 = v275[4];
      v139 = __swift_project_boxed_opaque_existential_1(v275, v138);
      v140 = v277;
      (*(**(v276 + 4) + 240))(v265, 1, v139, v138, *(v137 + 8));
      if (v140)
      {

        (*(v254 + 8))(v50, v46);
        goto LABEL_21;
      }

      v277 = 0;
      v104 = v283;
      v105 = v284;
      v71 = v136;
      (*(v283 + 32))(v136, v62, v284);
      v266 = v278;
      (*(v254 + 8))(v50, v73);
LABEL_41:

      v265 = 0;
      v103 = 0;
      v280 = 0;
      v118 = 0xE000000000000000;
      v135 = v279;
      v72 = v281;
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v243 = v46;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      v76 = v260;
      v77 = v255;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v79 = *(TupleTypeMetadata3 + 12);
      v258 = TupleTypeMetadata3;
      v80 = *&v74[*(TupleTypeMetadata3 + 16)];
      v81 = v261;
      v82 = v251;
      v266 = *(v261 + 4);
      (v266)(v251, v74, v76);
      v83 = sub_1CF9E6868();
      v84 = *(v81 + 1);
      v280 = v81 + 8;
      AssociatedConformanceWitness = v84;
      v84(v82, v76);
      if (v83)
      {
        v257 = v80;
        v85 = &v74[v79];
        v86 = v253;
        v87 = v252;
        (*(v253 + 32))(v252, v85, v77);
        v88 = v250;
        (*(v86 + 16))(v250, v87, v77);
        v89 = v77;
        if ((*(v81 + 6))(v88, 1, v76) == 1)
        {
          (*(v86 + 8))(v88, v77);
          v90 = v278;
          v91 = v278;
          v92 = v90;
          v93 = v276;
        }

        else
        {
          v200 = v76;
          v201 = v248;
          (v266)(v248, v88, v76);
          v203 = v275[3];
          v202 = v275[4];
          v204 = __swift_project_boxed_opaque_existential_1(v275, v203);
          v205 = v277;
          v206 = sub_1CF605A5C(v201, v276, v204, v203, *(v202 + 8));
          v208 = v278;
          if (v205)
          {

            AssociatedConformanceWitness(v201, v200);
            (*(v86 + 8))(v252, v89);
            goto LABEL_21;
          }

          v210 = v206;
          LODWORD(v256) = v207;
          v277 = 0;
          v211 = *(v258 + 12);
          v212 = *(v258 + 16);
          v213 = v261;
          v214 = *(v261 + 2);
          v215 = v247;
          v214(v247, v265, v200);
          v214(&v215[v211], v201, v200);
          v216 = &v215[v211];
          v217 = v215;
          (*(v213 + 7))(v216, 0, 1, v200);
          v218 = v201;
          if (v210)
          {
            *&v215[v212] = v210;
          }

          else
          {
            v219 = v257;
            *&v215[v212] = v257;
            v220 = v219;
          }

          v93 = v276;
          v221 = v243;
          swift_storeEnumTagMultiPayload();
          WitnessTable = swift_getWitnessTable();
          v266 = swift_allocError();
          v223 = *(v254 + 16);
          v223(v224, v217, v221);
          if (v256)
          {
            v251 = v223;
            v256 = WitnessTable;
            v225 = v275[3];
            v261 = v275[4];
            v258 = __swift_project_boxed_opaque_existential_1(v275, v225);
            v226 = *(v93 + 4);
            v227 = v246;
            sub_1CF685B34();
            v228 = *(*v226 + 560);
            v229 = v210;
            v230 = v277;
            v231 = v228(v218, v227, v258, v225, *(v261 + 1));
            v277 = v230;
            if (v230)
            {

              v232 = AssociatedConformanceWitness;
              AssociatedConformanceWitness(v227, v200);
              (*(v254 + 8))(v247, v243);
              v232(v248, v200);
              (*(v253 + 8))(v252, v255);

              return;
            }

            v234 = v231;
            AssociatedConformanceWitness(v227, v200);
            v217 = v247;
            v221 = v243;
            if (v234)
            {
              v235 = v281;
              v135 = v279;
              (*(v281 + 56))(v287, 1, 1, v279);
              v236 = swift_allocError();
              v261 = v236;
              (v251)(v237, v217, v221);
              v288 = v245;
              v289 = v244;
              type metadata accessor for JobResult(0, &v288);
              v288 = v245;
              v289 = v244;
              type metadata accessor for Ingestion.ReparentTrashedItemToTrashRoot(0, &v288);
              v238 = v248;
              v239 = sub_1CF65A054();
              v240 = v236;
              sub_1CF803A0C(v273, v239);
              v72 = v235;

              (*(v254 + 8))(v247, v221);
              AssociatedConformanceWitness(v238, v260);
              v71 = v287;
              (*(v253 + 8))(v252, v255);

              v265 = 0;
              v280 = 0;
              v118 = 0xE000000000000000;
              v103 = v261;
              v104 = v283;
              v105 = v284;
              goto LABEL_26;
            }

            v93 = v276;
            v90 = v278;
            v77 = v255;
            v218 = v248;
          }

          else
          {
            v90 = v278;
            v77 = v255;
          }

          v233 = AssociatedConformanceWitness;
          (*(v254 + 8))(v217, v221);
          v233(v218, v200);
          v86 = v253;
          v92 = v266;
        }

        v95 = v275[3];
        v94 = v275[4];
        v96 = __swift_project_boxed_opaque_existential_1(v275, v95);
        v97 = *(v94 + 8);
        v98 = v249;
        v99 = v277;
        (*(**(v93 + 4) + 240))(v265, 1, v96, v95, v97);
        v71 = v287;
        if (v99)
        {
          (*(v86 + 8))(v252, v77);

LABEL_21:
          return;
        }

        v266 = v92;
        v277 = 0;
        (*(v86 + 8))(v252, v77);

        v105 = v284;
        v209 = v98;
        v104 = v283;
        (*(v283 + 32))(v71, v209, v284);
        goto LABEL_41;
      }

      (*(v253 + 8))(&v74[v79], v77);
      v71 = v287;
      v72 = v281;
    }

    else
    {
      (*(v254 + 8))(v50, v46);
    }

    v68 = v278;
  }

  v135 = v279;
  (*(v72 + 56))(v71, 1, 1, v279);
  v141 = v68;
  v142 = v68;
  v265 = 0;
  v280 = 0;
  v118 = 0xE000000000000000;
  v266 = v68;
  v104 = v283;
  v105 = v284;
  v103 = v68;
LABEL_26:
  v278 = v103;
  v143 = v267;
  v281 = *(v104 + 16);
  (v281)(v267, v71, v105);
  if ((*(v72 + 48))(v143, 1, v135) == 1)
  {
    (*(v104 + 8))(v143, v105);
    *&v288 = 0x3A6C61757463613CLL;
    *(&v288 + 1) = 0xEB000000006C696ELL;
    MEMORY[0x1D3868CC0](v265, v118);
    v118, v144, v145, v146, v147, v148, v149, v150;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v279 = *(&v288 + 1);
    v267 = v288;
  }

  else
  {
    v152 = v143;
    v153 = v264;
    (*(v72 + 32))(v264, v152, v135);
    *&v288 = 0;
    *(&v288 + 1) = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x3A6C61757463613CLL, 0xE800000000000000);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](v265, v118);
    v118, v154, v155, v156, v157, v158, v159, v160;
    MEMORY[0x1D3868CC0](8254, 0xE200000000000000);
    v279 = *(&v288 + 1);
    v267 = v288;
    (*(v72 + 8))(v153, v135);
  }

  v151 = v105;
  v161 = v275;
  sub_1CF1A91AC(v275, &v288);
  v162 = v161[3];
  v163 = v161[4];
  v164 = __swift_project_boxed_opaque_existential_1(v161, v162);
  (*(*(v268 - 8) + 56))(v285, 1, 1);
  v165 = v274;
  v166 = v165 + *(*v165 + 664);
  v167 = *v166;
  v168 = v166[8];
  (*(*(v271 - 8) + 56))(v286, 1, 1);
  (v281)(v282, v287, v151);
  v290 = 0;
  v169 = v278;
  if (v278)
  {
    v170 = *(v165 + *(*v165 + 584));
    v171 = v278;
    v172 = v170;
  }

  else
  {
    v170 = 0;
  }

  v173 = v269;

  v241 = v170;
  v175 = v280;
  sub_1CF98C50C(v174, v285, v167, v168, v286, v282, &v290, 0, v173, v280, v169, v241);
  v176 = v277;
  v177 = v272;
  v178 = sub_1CF98CA58(v276, v273, v164, v272, v162, v163);
  if (v176)
  {
    v279, v179, v180, v181, v182, v183, v184, v185;

    (*(v270 + 8))(v173, v177);
    sub_1CEFCCC44(&v288, &unk_1EC4C1B30, &qword_1CFA05300);
    (*(v283 + 8))(v287, v284);
  }

  else
  {
    v186 = v178;
    (*(v270 + 8))(v173, v177);
    v187 = v283;
    v188 = v284;
    v189 = v287;
    v190 = v266;
    if (!v186)
    {
      v191 = v266;
      v186 = v190;
    }

    v192 = v279;
    v263(&v288, 0, v267, v279, v186);
    v192, v193, v194, v195, v196, v197, v198, v199;

    sub_1CEFCCC44(&v288, &unk_1EC4C1B30, &qword_1CFA05300);
    (*(v187 + 8))(v189, v188);
  }
}

id sub_1CF60B46C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 624);
  v26 = *(*v1 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v3[79];
  v6 = v3[77];
  swift_getAssociatedTypeWitness();
  v30 = sub_1CF9E75D8();
  v7 = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  v25 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v28[0] = v7;
  v28[1] = v8;
  v28[2] = AssociatedConformanceWitness;
  v28[3] = v23;
  type metadata accessor for FileItemVersion(255, v28);
  v31 = sub_1CF9E75D8();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v10 = TupleTypeMetadata[12];
  v20 = TupleTypeMetadata[16];
  v21 = TupleTypeMetadata[20];
  v22 = TupleTypeMetadata[24];
  v11 = v3[72];
  v12 = swift_getAssociatedTypeWitness();
  (*(*(v12 - 8) + 16))(a1, v1 + v11, v12);
  v13 = *(*v1 + 640);
  swift_beginAccess();
  v14 = sub_1CF9E75D8();
  (*(*(v14 - 8) + 16))(a1 + v10, v1 + v13, v14);
  v15 = *(*v1 + 656);
  swift_beginAccess();
  AssociatedTypeWitness = v25;
  v30 = v8;
  v31 = AssociatedConformanceWitness;
  v32 = v23;
  type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
  v16 = sub_1CF9E75D8();
  (*(*(v16 - 8) + 16))(a1 + v20, v1 + v15, v16);
  v17 = *v1;
  *(a1 + v21) = *(v1 + *(*v1 + 672));
  v27 = *(v1 + *(v17 + 584));
  *(a1 + v22) = v27;
  AssociatedTypeWitness = v26;
  v30 = v6;
  v31 = v4;
  v32 = v5;
  type metadata accessor for DirectionalTestingOperation(0, &AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  AssociatedTypeWitness = v6;
  v30 = v26;
  v31 = v5;
  v32 = v4;
  v18 = type metadata accessor for TestingOperation(0, &AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(a1, 0, 1, v18);

  return v27;
}

uint64_t sub_1CF60B900()
{
  v1 = *(*v0 + 640);
  v2 = *(*v0 + 632);
  v3 = *(*v0 + 616);
  swift_getAssociatedTypeWitness();
  v4 = sub_1CF9E75D8();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v1, v4);
  v5(v0 + *(*v0 + 648), v4);
  v6 = *(*v0 + 656);
  v12[0] = swift_getAssociatedTypeWitness();
  v12[1] = swift_getAssociatedTypeWitness();
  v12[2] = swift_getAssociatedConformanceWitness();
  v12[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, v12);
  v7 = sub_1CF9E75D8();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 688);
  type metadata accessor for SnapshotItem(255, v3, v2, v9);
  v10 = sub_1CF9E75D8();
  return (*(*(v10 - 8) + 8))(v0 + v8, v10);
}

uint64_t sub_1CF60BB48()
{
  v1 = *v0;
  v2 = sub_1CF5E9C94();
  v3 = *(*v2 + 640);
  v4 = *(v1 + 632);
  v5 = *(v1 + 616);
  swift_getAssociatedTypeWitness();
  v6 = sub_1CF9E75D8();
  v7 = *(*(v6 - 8) + 8);
  v7(v2 + v3, v6);
  v7(v2 + *(*v2 + 648), v6);
  v8 = *(*v2 + 656);
  v14[0] = swift_getAssociatedTypeWitness();
  v14[1] = swift_getAssociatedTypeWitness();
  v14[2] = swift_getAssociatedConformanceWitness();
  v14[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, v14);
  v9 = sub_1CF9E75D8();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);
  v10 = *(*v2 + 688);
  type metadata accessor for SnapshotItem(255, v5, v4, v11);
  v12 = sub_1CF9E75D8();
  (*(*(v12 - 8) + 8))(v2 + v10, v12);
  return v2;
}

uint64_t sub_1CF60BDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  result = a6(a1, a2, a3, a4, *(a5 + 8));
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1CF60BE30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, unint64_t, id), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v186 = a6;
  v187 = a5;
  v190 = a4;
  v167 = a3;
  v179 = a2;
  v12 = *v8;
  v13 = *(*v8 + 608);
  v14 = *(*v8 + 624);
  v15 = type metadata accessor for SnapshotItem(255, v13, v14, a4);
  v165 = sub_1CF9E75D8();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v174 = &v147 - v16;
  v17 = *(v12 + 600);
  v180 = v8;
  v18 = *(v12 + 616);
  v194 = v13;
  v195 = v17;
  v196 = v14;
  v197 = v18;
  v169 = type metadata accessor for ReconciliationMutation(0, &v194);
  v178 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v168 = &v147 - v19;
  v173 = v13;
  v194 = v13;
  v195 = v17;
  v170 = v17;
  v171 = v14;
  v196 = v14;
  v197 = v18;
  v172 = v18;
  v20 = type metadata accessor for ItemReconciliation(255, &v194);
  v182 = sub_1CF9E75D8();
  v177 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v183 = &v147 - v21;
  v184 = v20;
  v176 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v175 = (&v147 - v23);
  v185 = *(v15 - 8);
  v24 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v166 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v147 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v189 = &v147 - v30;
  v31 = sub_1CF9E6118();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((*(*a1 + 152))(v33) & 0x4000) == 0)
  {
    v197 = a7;
    v198 = a8;
    v36 = __swift_allocate_boxed_opaque_existential_0(&v194);
    (*(*(a7 - 8) + 16))(v36, v190, a7);
    v37 = FPNotSupportedError();
LABEL_7:
    v47 = v37;
    v187(&v194, 0, 0, 0, v47);

    return sub_1CEFCCC44(&v194, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v181 = a8;
  v188 = a7;
  v38 = a1[4];
  if (sub_1CF056558())
  {
    v39 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v40 = sub_1CF9E6108();
    v41 = sub_1CF9E72A8();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v181;
    if (v42)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1CEFC7000, v40, v41, "DeletionAcked triggered on FS snapshot", v44, 2u);
      MEMORY[0x1D386CDC0](v44, -1, -1);
    }

    (*(v32 + 8))(v35, v31);
    v45 = v188;
    v197 = v188;
    v198 = v43;
    v46 = __swift_allocate_boxed_opaque_existential_0(&v194);
    (*(*(v45 - 8) + 16))(v46, v190, v45);
    v37 = FPNotSupportedError();
    goto LABEL_7;
  }

  v159 = a1;
  v48 = *(*v180 + 576);
  v49 = *(v181 + 8);
  v51 = (*(*v38 + 496))(v180 + v48, v179);
  v179 = v49;
  v155 = v38;
  v154 = v48;
  v158 = v52;
  v156 = sub_1CF9E6DF8();
  if (sub_1CF9E6DF8())
  {
    v61 = 0;
    v152 = 0;
    v157 = 0;
    v163 = (v185 + 16);
    v162 = (v185 + 32);
    v160 = (v176 + 6);
    v161 = (v185 + 8);
    ++v177;
    v153 = (v176 + 4);
    ++v176;
    v151 = (v178 + 8);
    v62 = v179;
    while (2)
    {
      v63 = v61;
      v64 = v159;
      while (1)
      {
        v65 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v65)
        {
          result = (*(v185 + 16))(v189, v51 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v63, v15);
          v61 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            goto LABEL_40;
          }
        }

        else
        {
          result = sub_1CF9E7998();
          if (v24 != 8)
          {
            goto LABEL_42;
          }

          v194 = result;
          (*v163)(v189, &v194, v15);
          result = swift_unknownObjectRelease();
          v61 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }
        }

        (*v162)(v28, v189, v15);
        v66 = v62;
        v67 = v183;
        sub_1CF68DDB0(v28, v190, v188, v66, v183);
        if ((*v160)(v67, 1, v184) != 1)
        {
          break;
        }

        (*v161)(v28, v15);
        (*v177)(v67, v182);
        v68 = sub_1CF9E6DF8();
        ++v63;
        v62 = v179;
        if (v61 == v68)
        {
          v80 = v188;
          v81 = v181;
          goto LABEL_32;
        }
      }

      v69 = v175;
      (*v153)(v175, v67, v184);
      v70 = v64;
      v80 = v188;
      v81 = v181;
      result = sub_1CF61A3C8(v69, v70, v190, v188, v181);
      if (result)
      {
        v157 = v152 + 1;
        v62 = v179;
        if (__OFADD__(v152, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        WitnessTable = swift_getWitnessTable();
        sub_1CF06D940(v15, WitnessTable, &v194);
        if (v194 == 1 && ((*(*v155 + 384))(v28, 1, v190, v80, v62) & 1) == 0)
        {
          v194 = v173;
          v195 = v170;
          v196 = v171;
          v197 = v172;
          v152 = type metadata accessor for JobResult(0, &v194);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v150 = swift_getAssociatedTypeWitness();
          v73 = AssociatedTypeWitness;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v81 = v181;
          v74 = v150;
          v75 = swift_getAssociatedConformanceWitness();
          v194 = v73;
          v195 = v74;
          v196 = AssociatedConformanceWitness;
          v197 = v75;
          AssociatedConformanceWitness = type metadata accessor for ReconciliationID(255, &v194);
          v150 = type metadata accessor for ReconciliationSideMutation(255, v173, v171, v76);
          v148 = *(swift_getTupleTypeMetadata2() + 48);
          v77 = *(*(v73 - 8) + 16);
          v78 = v168;
          v79 = v73;
          v80 = v188;
          v77(v168, v28, v79);
          swift_storeEnumTagMultiPayload();
          *(v78 + v148) = *(v180 + 15);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v167, v78);
          (*v151)(v168, v169);
        }

        v152 = v157;
      }

      else
      {
        v62 = v179;
      }

      (*v176)(v175, v184);
      (*v161)(v28, v15);
      if (v61 != sub_1CF9E6DF8())
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v157 = 0;
    v81 = v181;
    v62 = v179;
    v80 = v188;
  }

LABEL_32:
  v51, v54, v55, v56, v57, v58, v59, v60;
  v82 = v190;
  v83 = v158;
  v84 = v80;
  if (!v158)
  {
    v121 = v62;
    v122 = v81;
    v123 = v180;
    v124 = v154;
    v125 = v174;
    (*(*v155 + 240))(v180 + v154, 1, v190, v80, v121);
    v126 = v185;
    if ((*(v185 + 48))(v125, 1, v15) == 1)
    {
      (*(v164 + 8))(v125, v165);
      v83 = v158;
      v81 = v122;
    }

    else
    {
      v127 = v166;
      (*(v126 + 32))(v166, v125, v15);
      v128 = swift_getWitnessTable();
      sub_1CF06D940(v15, v128, &v194);
      if (v194 == 1)
      {
        v194 = v173;
        v129 = v173;
        v130 = v170;
        v195 = v170;
        v196 = v171;
        v131 = v171;
        v197 = v172;
        v189 = type metadata accessor for JobResult(0, &v194);
        v194 = v129;
        v195 = v130;
        v196 = v131;
        v197 = v172;
        type metadata accessor for Ingestion.ReSnapshotChildren(0, &v194);
        v132 = sub_1CF656FE0(v123 + v124, v123[15], v123[16], v123[17]);
        sub_1CF803A0C(v167, v132);

        v133 = v171;
        v134 = v173;
        v135 = swift_getAssociatedTypeWitness();
        v136 = swift_getAssociatedTypeWitness();
        v137 = v133;
        v138 = swift_getAssociatedConformanceWitness();
        v139 = swift_getAssociatedConformanceWitness();
        v194 = v135;
        v195 = v136;
        v196 = v138;
        v197 = v139;
        type metadata accessor for ReconciliationID(255, &v194);
        type metadata accessor for ReconciliationSideMutation(255, v134, v137, v140);
        v141 = *(swift_getTupleTypeMetadata2() + 48);
        v142 = v180;
        v143 = v168;
        (*(*(v135 - 8) + 16))(v168, v180 + v154, v135);
        swift_storeEnumTagMultiPayload();
        *(v143 + v141) = 1;
        v81 = v181;
        swift_storeEnumTagMultiPayload();
        v144 = v169;
        swift_storeEnumTagMultiPayload();
        v145 = v167;
        sub_1CF06EB44(v167, v143);
        (*(v178 + 8))(v143, v144);
        v194 = v173;
        v195 = v170;
        v196 = v171;
        v197 = v172;
        type metadata accessor for Ingestion.DeleteFolderFromSnapshotIfEmpty(0, &v194);
        sub_1CF65A050(v142 + v154, v142[15], v142[16], v142[17]);
        v146 = sub_1CF052548(8);

        sub_1CF803A0C(v145, v146);

        (*(v185 + 8))(v166, v15);
        v83 = v158;
      }

      else
      {
        (*(v126 + 8))(v127, v15);
        v83 = v158;
        v81 = v122;
      }

      v84 = v80;
    }
  }

  v197 = v84;
  v198 = v81;
  v85 = __swift_allocate_boxed_opaque_existential_0(&v194);
  (*(*(v84 - 8) + 16))(v85, v82, v84);
  v192 = 0;
  v193 = 0xE000000000000000;

  sub_1CF9E7948();
  v193, v86, v87, v88, v89, v90, v91, v92;
  v192 = 0x3A656C6174733CLL;
  v193 = 0xE700000000000000;
  v191 = v157;
  v93 = sub_1CF9E7F98();
  v95 = v94;
  MEMORY[0x1D3868CC0](v93);
  v95, v96, v97, v98, v99, v100, v101, v102;
  MEMORY[0x1D3868CC0](0x3A6C61746F7420, 0xE700000000000000);
  v191 = v156;
  v103 = sub_1CF9E7F98();
  v105 = v104;
  MEMORY[0x1D3868CC0](v103);
  v105, v106, v107, v108, v109, v110, v111, v112;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v113 = v193;
  v187(&v194, v83, v192, v193, 0);
  v113, v114, v115, v116, v117, v118, v119, v120;

  return sub_1CEFCCC44(&v194, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF60D1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF55900C(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v5;
}

double sub_1CF60D284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(*(a1 + 32) + 16);
  v15 = *(*v8 + 576);
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a1;
  v16[5] = a5;
  v16[6] = a6;
  v17 = *(*v14 + 792);

  v17(v8 + v15, sub_1CF60E2A4, v16);

  return result;
}

double sub_1CF60D3A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  swift_retain_n();
  v9 = a1;
  v10 = type metadata accessor for Continuation();
  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559088, v7, sub_1CF60E2B4, v8, v10, MEMORY[0x1E69E6158]);

  return result;
}

uint64_t sub_1CF60D4D8(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF60D548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*v5 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v5 + v11, a1, AssociatedTypeWitness);
  *(v5 + *(*v5 + 584)) = a2;
  v13 = sub_1CF0525C8(a3, a4, a5);
  v14 = *(v13 + 96);
  v15 = *(v13 + 104);
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  LOBYTE(a3) = *(v13 + 112);
  *(v13 + 112) = 0;

  sub_1CF03D7A8(v14, v15, a3);

  return v13;
}

uint64_t sub_1CF60D678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*v6 + 648);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for FileItemVersion(0, &AssociatedTypeWitness);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  v9 = *(*v6 + 656);
  v10 = swift_getAssociatedTypeWitness();
  (*(*(v10 - 8) + 56))(v6 + v9, 1, 1, v10);
  v11 = *(*v6 + 664);
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for ItemState(0, v12, v13, v14);
  (*(*(v15 - 8) + 56))(v6 + v11, 1, 1, v15);
  v16 = v6 + *(*v6 + 672);
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0xB000000000000000;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  v17 = *(*v6 + 680);
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = v18;
  v31 = v19;
  AssociatedConformanceWitness = v20;
  v33 = v21;
  type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 56))(v6 + v17, 1, 1, TupleTypeMetadata2);
  *(v6 + *(*v6 + 688)) = 0;
  *(v6 + *(*v6 + 640)) = a2;
  return sub_1CF60D548(a1, a3, a4, a5, a6);
}

uint64_t sub_1CF60DADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*v5 + 640);
  v9 = *(*v5 + 632);
  v10 = *(*v5 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 56);
  v12(v5 + v8, 1, 1, AssociatedTypeWitness);
  v12(v5 + *(*v5 + 648), 1, 1, AssociatedTypeWitness);
  v13 = *(*v5 + 656);
  v23[0] = swift_getAssociatedTypeWitness();
  v23[1] = swift_getAssociatedTypeWitness();
  v23[2] = swift_getAssociatedConformanceWitness();
  v23[3] = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for FileItemVersion(0, v23);
  (*(*(v14 - 8) + 56))(v5 + v13, 1, 1, v14);
  v15 = v5 + *(*v5 + 664);
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v5 + *(*v5 + 672)) = 2;
  *(v5 + *(*v5 + 680)) = 2;
  v16 = *(*v5 + 688);
  v18 = type metadata accessor for SnapshotItem(0, v10, v9, v17);
  (*(*(v18 - 8) + 56))(v5 + v16, 1, 1, v18);
  return sub_1CF60D548(a1, a2, a3, a4, a5);
}

uint64_t sub_1CF60DE10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = *a3;
  v8 = *(*v7 + 656);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v7 + v8, 1, 1, AssociatedTypeWitness);
  v23 = *(*v7 + 664);
  v31 = swift_getAssociatedTypeWitness();
  v32 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for FileItemVersion(0, &v31);
  (*(*(v10 - 8) + 56))(v7 + v23, 1, 1, v10);
  v11 = *(*v7 + 672);
  v12 = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for ItemState(0, AssociatedTypeWitness, v12, v13);
  (*(*(v14 - 8) + 56))(v7 + v11, 1, 1, v14);
  v15 = v7 + *(*v7 + 680);
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xB000000000000000;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  v16 = *(*v7 + 688);
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v31 = v17;
  v32 = v18;
  AssociatedConformanceWitness = v19;
  v34 = v20;
  v21 = type metadata accessor for FileItemVersion(0, &v31);
  (*(*(v21 - 8) + 56))(v7 + v16, 1, 1, v21);
  *(v7 + *(*v7 + 712)) = 0;
  *(v7 + *(*v7 + 640)) = a2;
  *(v7 + *(*v7 + 648)) = v25;
  *(v7 + *(*v7 + 696)) = 0;
  *(v7 + *(*v7 + 704)) = 0;
  return sub_1CF60D548(a1, a4, a5, a6, a7);
}

uint64_t sub_1CF60E2B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  sub_1CF1A91AC(a1, v5);
  v2(v5, 0, 0, 0, v3);
  return sub_1CEFCCC44(v5, &unk_1EC4C1B30, &qword_1CFA05300);
}

double sub_1CF60E348(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  return sub_1CF6094D0(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), v1 + v6, *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4);
}

void sub_1CF60E43C(void *a1)
{
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v3 = *(sub_1CF9E8238() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF609934(a1, (v1 + v4), v1 + v7, *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

double sub_1CF60E63C(uint64_t a1, char a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = (*(*(AssociatedTypeWitness - 8) + 80) + 64) & ~*(*(AssociatedTypeWitness - 8) + 80);
  v4 = v20 + *(*(AssociatedTypeWitness - 8) + 64);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6) - 8);
  v19 = (v4 + *(v7 + 80)) & ~*(v7 + 80);
  v18 = (*(v7 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v8 = *(type metadata accessor for FileItemVersion(0, &v23) - 8);
  v9 = (((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 255) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v16 = *(type metadata accessor for FileItemVersion(0, &v23) - 8);
  return sub_1CF5FCFD0(a1, a2 & 1, *(v2 + 48), *(v2 + 56), v2 + v20, v2 + v19, *(v2 + v18), (v2 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)), v2 + v9, (v2 + v10), *(v2 + v11), *(v2 + v11 + 8), *(v2 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), v2 + ((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v16 + 80) + 8) & ~*(v16 + 80)));
}

void *sub_1CF60E9D0(_TtC18FileProviderDaemon8FSTester *a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1CF5FC1A0(a1, *(v1 + 48), v1 + v4, *v5, *(v5 + 8));
}

double sub_1CF60EABC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = (*(*(AssociatedTypeWitness - 8) + 80) + 144) & ~*(*(AssociatedTypeWitness - 8) + 80);
  v4 = v3 + *(*(AssociatedTypeWitness - 8) + 64);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6) - 8);
  v8 = (v4 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13[0] = swift_getAssociatedTypeWitness();
  v13[1] = swift_getAssociatedTypeWitness();
  v13[2] = swift_getAssociatedConformanceWitness();
  v13[3] = swift_getAssociatedConformanceWitness();
  v10 = *(type metadata accessor for FileItemVersion(0, v13) - 8);
  return sub_1CF5FD6B0(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), (v1 + 80), v1 + v3, v1 + v8, *(v1 + v9), v1 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80)));
}

uint64_t sub_1CF60ED00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ItemPropagationResult(255, *(v4 + 24), *(v4 + 40), a4);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v5 = *(sub_1CF9E8238() - 8);
  v19 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v18 = (*(v5 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v18 + 71) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = (*(*(AssociatedTypeWitness - 8) + 80) + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(*(AssociatedTypeWitness - 8) + 80);
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9) - 8);
  v11 = (v16 + v7 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21[0] = swift_getAssociatedTypeWitness();
  v21[1] = swift_getAssociatedTypeWitness();
  v21[2] = swift_getAssociatedConformanceWitness();
  v21[3] = swift_getAssociatedConformanceWitness();
  v13 = *(type metadata accessor for FileItemVersion(0, v21) - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  return sub_1CF5FDE20(a1, (v4 + v19), (v4 + v18), *(v4 + v17), *(v4 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)), v4 + v16, v4 + v11, *(v4 + v12), v4 + v14, *(v4 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF60F074(void *a1, char a2)
{
  v22 = v2[4];
  v20 = v2[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = (*(*(AssociatedTypeWitness - 8) + 80) + 168) & ~*(*(AssociatedTypeWitness - 8) + 80);
  v4 = v19 + *(*(AssociatedTypeWitness - 8) + 64);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6) - 8);
  v18 = (v4 + *(v7 + 80)) & ~*(v7 + 80);
  v8 = *(v7 + 64);
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedConformanceWitness();
  v9 = *(type metadata accessor for FileItemVersion(0, &v24) - 8);
  v10 = (v18 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v16 = *(type metadata accessor for FileItemVersion(0, &v24) - 8);
  v17 = (v10 + v11 + *(v16 + 80)) & ~*(v16 + 80);
  sub_1CF5FADE8(a1, a2 & 1, v2[8], v2[9], v2[10], v2[11], v2[12], (v2 + 13), v2 + v19, v2 + v18, v2 + v10, v2 + v17, v2 + ((*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8), v22, v20);
}

double sub_1CF60F49C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = (*(*(AssociatedTypeWitness - 8) + 80) + 72) & ~*(*(AssociatedTypeWitness - 8) + 80);
  v3 = (*(*(AssociatedTypeWitness - 8) + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v5) - 8);
  v7 = (v3 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v14[0] = swift_getAssociatedTypeWitness();
  v14[1] = swift_getAssociatedTypeWitness();
  v14[2] = swift_getAssociatedConformanceWitness();
  v14[3] = swift_getAssociatedConformanceWitness();
  v9 = *(type metadata accessor for FileItemVersion(0, v14) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  return sub_1CF5F05D8(a1, v1[6], v1[7], v1[8], v1 + v12, *(v1 + v3), v1 + v7, v1 + v10, *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF60F704(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (!a3)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_1CF60F718(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FileTreeWriter.ItemOrContinuation(255, *(v4 + 24), *(v4 + 40), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v5 = *(sub_1CF9E8238() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v19 = v6;
  v7 = *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = (v6 + v7 + *(*(AssociatedTypeWitness - 8) + 80)) & ~*(*(AssociatedTypeWitness - 8) + 80);
  v9 = (*(*(AssociatedTypeWitness - 8) + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11) - 8);
  v13 = (v9 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v17 = *(v12 + 64);
  v21[0] = swift_getAssociatedTypeWitness();
  v21[1] = swift_getAssociatedTypeWitness();
  v21[2] = swift_getAssociatedConformanceWitness();
  v21[3] = swift_getAssociatedConformanceWitness();
  v14 = *(type metadata accessor for FileItemVersion(0, v21) - 8);
  v15 = (v13 + v17 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF5F0C8C(a1, v4 + v19, v4 + v18, *(v4 + v9), v4 + v13, v4 + v15, *(v4 + v16), *(v4 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF60FA30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1CF60FA78(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v5) - 8);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v12[0] = swift_getAssociatedTypeWitness();
  v12[1] = swift_getAssociatedTypeWitness();
  v12[2] = swift_getAssociatedConformanceWitness();
  v12[3] = swift_getAssociatedConformanceWitness();
  v9 = *(type metadata accessor for FileItemVersion(0, v12) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF5F15E4(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + v7, v1 + v10, *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1CF60FC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ItemPropagationResult(255, v4[3], v4[5], a4);
  v5 = *(sub_1CF9E75D8() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10) - 8);
  v12 = (v7 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v19[0] = swift_getAssociatedTypeWitness();
  v19[1] = swift_getAssociatedTypeWitness();
  v19[2] = swift_getAssociatedConformanceWitness();
  v19[3] = swift_getAssociatedConformanceWitness();
  v14 = *(type metadata accessor for FileItemVersion(0, v19) - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF5F2594(a1, v4[6], v4[7], v4[8], v4[9], v4 + v6, v4 + v12, v4 + v15, *(v4 + v16), *(v4 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_102Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = type metadata accessor for ItemPropagationResult(255, v5, *(v4 + 40), a4);
  v7 = *(sub_1CF9E75D8() - 8);
  v83 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v8 = v83 + *(v7 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v88 = (v8 + *(*(v84 - 8) + 80)) & ~*(*(v84 - 8) + 80);
  v87 = *(*(v84 - 8) + 64);
  v89 = swift_getAssociatedTypeWitness();
  v90 = swift_getAssociatedTypeWitness();
  v91[0] = v89;
  v91[1] = v90;
  v91[2] = swift_getAssociatedConformanceWitness();
  v91[3] = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for FileItemVersion(0, v91);
  v86 = *(*(v12 - 1) + 80);
  v85 = *(*(v12 - 1) + 64);

  v13 = v4 + v83;
  if (!(*(*(v6 - 8) + 48))(v4 + v83, 1, v6))
  {
    (*(*(v5 - 8) + 8))(v13, v5);
    v14 = v13 + *(v6 + 44);
    v15 = *(v14 + 24);
    if (v15 >> 60 != 15 && (v15 & 0xF000000000000000) != 0xB000000000000000)
    {
      sub_1CEFE4714(*(v14 + 16), v15);
    }
  }

  (*(*(AssociatedTypeWitness - 8) + 8))(v4 + v88, AssociatedTypeWitness);
  *(v4 + v88 + *(v84 + 36) + 8), v17, v18, v19, v20, v21, v22, v23;
  v24 = v4 + v88 + *(v84 + 40);
  v25 = type metadata accessor for ItemMetadata(0);
  v26 = v25[7];
  v27 = sub_1CF9E5CF8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 8);
  v29(v24 + v26, v27);
  v29(v24 + v25[8], v27);
  *(v24 + v25[14] + 8), v30, v31, v32, v33, v34, v35, v36;
  v37 = v25[30];
  if (!(*(v28 + 48))(v24 + v37, 1, v27))
  {
    v29(v24 + v37, v27);
  }

  *(v24 + v25[31]), v38, v39, v40, v41, v42, v43, v44;
  *(v24 + v25[33]), v45, v46, v47, v48, v49, v50, v51;
  v58 = (v24 + v25[34]);
  v59 = v58[1];
  if (v59 >> 60 != 15)
  {
    sub_1CEFE4714(*v58, v59);
  }

  v60 = (v88 + v87 + v86) & ~v86;
  *(v24 + v25[38] + 8), v59, v52, v53, v54, v55, v56, v57;
  (*(*(v89 - 8) + 8))(v4 + v60);
  *(v4 + v60 + v12[13]), v61, v62, v63, v64, v65, v66, v67;
  (*(*(v90 - 8) + 8))(v4 + v60 + v12[14]);
  *(v4 + v60 + v12[15]), v68, v69, v70, v71, v72, v73, v74;
  *(v4 + v60 + v12[16] + 8), v75, v76, v77, v78, v79, v80, v81;

  return swift_deallocObject();
}

uint64_t sub_1CF61047C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ItemPropagationResult(255, *(v4 + 24), *(v4 + 40), a4);
  v5 = *(sub_1CF9E75D8() - 8);
  v18 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v6 = v18 + *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9) - 8);
  v11 = (v6 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v20[0] = swift_getAssociatedTypeWitness();
  v20[1] = swift_getAssociatedTypeWitness();
  v20[2] = swift_getAssociatedConformanceWitness();
  v20[3] = swift_getAssociatedConformanceWitness();
  v13 = *(type metadata accessor for FileItemVersion(0, v20) - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF5F2B58(a1, *(v4 + 48), v4 + v18, v4 + v11, v4 + v14, *(v4 + v15), *(v4 + v16), *(v4 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1CF61070C(void *a1, char a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6) - 8);
  v8 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v14[0] = swift_getAssociatedTypeWitness();
  v14[1] = swift_getAssociatedTypeWitness();
  v14[2] = swift_getAssociatedConformanceWitness();
  v14[3] = swift_getAssociatedConformanceWitness();
  v10 = *(type metadata accessor for FileItemVersion(0, v14) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF5EF074(a1, a2 & 1, *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), v2 + v8, v2 + v11, *(v2 + v12), (v2 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)), (v2 + ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_10Tm_0(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF610994(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  sub_1CF1A91AC(a1, v5);
  v2(v5, v3, 0, 0, 0);
  return sub_1CEFCCC44(v5, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t objectdestroy_112Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = (type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v3) - 8);
  v5 = (*(*v4 + 80) + 64) & ~*(*v4 + 80);
  v74 = *(*v4 + 64);
  v76 = swift_getAssociatedTypeWitness();
  v77 = swift_getAssociatedTypeWitness();
  v78[0] = v76;
  v78[1] = v77;
  v78[2] = swift_getAssociatedConformanceWitness();
  v78[3] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for FileItemVersion(0, v78);
  v7 = *(*(v6 - 1) + 80);

  v75 = v5;
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v5, AssociatedTypeWitness);
  *(v0 + v5 + v4[11] + 8), v8, v9, v10, v11, v12, v13, v14;
  v15 = v0 + v5 + v4[12];
  v16 = type metadata accessor for ItemMetadata(0);
  v17 = v16[7];
  v18 = sub_1CF9E5CF8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v20(v15 + v17, v18);
  v20(v15 + v16[8], v18);
  *(v15 + v16[14] + 8), v21, v22, v23, v24, v25, v26, v27;
  v28 = v16[30];
  if (!(*(v19 + 48))(v15 + v28, 1, v18))
  {
    v20(v15 + v28, v18);
  }

  *(v15 + v16[31]), v29, v30, v31, v32, v33, v34, v35;
  *(v15 + v16[33]), v36, v37, v38, v39, v40, v41, v42;
  v49 = (v15 + v16[34]);
  v50 = v49[1];
  if (v50 >> 60 != 15)
  {
    sub_1CEFE4714(*v49, v50);
  }

  *(v15 + v16[38] + 8), v50, v43, v44, v45, v46, v47, v48;
  v51 = v0 + ((v75 + v74 + v7) & ~v7);
  (*(*(v76 - 8) + 8))(v51);
  *(v51 + v6[13]), v52, v53, v54, v55, v56, v57, v58;
  (*(*(v77 - 8) + 8))(v51 + v6[14]);
  *(v51 + v6[15]), v59, v60, v61, v62, v63, v64, v65;
  *(v51 + v6[16] + 8), v66, v67, v68, v69, v70, v71, v72;

  return swift_deallocObject();
}

uint64_t sub_1CF610E5C(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v13[0] = swift_getAssociatedTypeWitness();
  v13[1] = swift_getAssociatedTypeWitness();
  v13[2] = swift_getAssociatedConformanceWitness();
  v13[3] = swift_getAssociatedConformanceWitness();
  v8 = *(type metadata accessor for FileItemVersion(0, v13) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF5F23D0(a1, *(v1 + 48), *(v1 + 56), v1 + v6, v1 + v9, *(v1 + v10), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_26Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1CF6110D8(void *a1)
{
  v2 = v1[3];
  v13 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v8 = v1[8];
  v7 = v1[9];
  v10 = a1[3];
  v9 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  return sub_1CF60169C(v11, v7, v3, v4, v5, v6, v8, v13, v10, v2, v9);
}

uint64_t sub_1CF611164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for JobLockRule(0, *(*v4 + 544), *(*v4 + 560), a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7 + 22;
  swift_beginAccess();
  sub_1CEFCCBDC((v4 + 56), v16, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v9 = *(v4 + 15);
  v10 = *(*v4 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v8, &v4[v10], AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v13 = sub_1CF052B3C(v16, v9, v8, v12);
  (*(v6 + 8))(v8, v5);
  sub_1CEFCCC44(v16, &unk_1EC4C1BE0, &unk_1CF9FD400);
  return v13;
}

void sub_1CF61135C(uint64_t a1)
{
  sub_1CF6116A0();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1CF611408(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v6 = v5 | 1;
  if ((v5 | 1) <= 3)
  {
    v7 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *&a1[v6];
      if (*&a1[v6])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = *&a1[v6];
      if (v10)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v14 = a1[v5];
    if (v14 >= 2)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_27;
  }

LABEL_23:
  v12 = (v10 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 255;
}

void sub_1CF611530(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 | 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v8] = 0;
    }

    else if (v11)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v7] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v8 <= 3)
  {
    v9 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = a2 - 255;
  bzero(a1, v7 | 1);
  if (v8 <= 3)
  {
    v13 = (v12 >> 8) + 1;
  }

  else
  {
    v13 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_21:
      if (v11 == 2)
      {
        *&a1[v8] = v13;
      }

      else
      {
        *&a1[v8] = v13;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v11)
  {
    a1[v8] = v13;
  }
}

void sub_1CF6116A0()
{
  if (!qword_1EDEA3370)
  {
    sub_1CF6116E8(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA3370);
    }
  }
}

void sub_1CF6116E8(uint64_t a1)
{
  if (!qword_1EDEA3368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v1 = sub_1CF9E75D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEA3368);
    }
  }
}

unint64_t sub_1CF611768()
{
  result = qword_1EDEA3918;
  if (!qword_1EDEA3918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3918);
  }

  return result;
}

unint64_t sub_1CF611848(unint64_t result, unint64_t a2)
{
  if (a2 > result)
  {
    return a2;
  }

  return result;
}

uint64_t sub_1CF611880(uint64_t result, char a2)
{
  if (a2)
  {
    *v2 |= result;
  }

  return result;
}

uint64_t sub_1CF611894(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = a1[1];
  v8[9] = *a1;
  v8[10] = v9;
  v10 = a1[3];
  v8[11] = a1[2];
  v8[12] = v10;
  return sub_1CF0525C8(a2, a3, a4);
}

uint64_t sub_1CF611904(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, void (*a6)(char *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, NSObject *a11, _TtC18FileProviderDaemon8FSTester *a12, uint64_t a13)
{
  v161 = a8;
  v160 = a7;
  v159 = a5;
  v166 = a4;
  v170 = a3;
  v150 = a2;
  v169 = a13;
  v15 = *a6;
  v16 = *(*a6 + 96);
  v17 = *(*a6 + 80);
  v158 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v173 = *(AssociatedTypeWitness - 8);
  v174 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v139 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v144 = &v139 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v152 = &v139 - v23;
  v155 = sub_1CF9E6118();
  v172 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v142 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v171 = &v139 - v26;
  *&v178 = v17;
  *(&v178 + 1) = v17;
  *&v179 = v16;
  *(&v179 + 1) = v16;
  v27 = type metadata accessor for ItemChange(255, &v178);
  v141 = sub_1CF9E75D8();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v164 = &v139 - v28;
  v168 = v27;
  v157 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v176 = &v139 - v30;
  *&v31 = v17;
  *(&v31 + 1) = *(v15 + 88);
  v180 = a6;
  *&v32 = v16;
  *(&v32 + 1) = *(v15 + 104);
  v179 = v32;
  v178 = v31;
  v177 = type metadata accessor for PersistenceTrigger(0, &v178);
  isa = v177[-1].isa;
  MEMORY[0x1EEE9AC00](v177);
  v34 = &v139 - v33;
  v145 = v17;
  v146 = v16;
  v36 = type metadata accessor for SnapshotItem(255, v17, v16, v35);
  v37 = sub_1CF9E75D8();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v139 - v40;
  v42 = *(v38 + 16);
  v165 = a1;
  v42(&v139 - v40, a1, v37, v39);
  LODWORD(v36) = (*(*(v36 - 8) + 48))(v41, 1, v36);
  (*(v38 + 8))(v41, v37);
  v167 = a9;
  if (v36 == 1)
  {
    if ((a9 & 0x80000000000) != 0)
    {
      v44 = *(**(*(v180 + 4) + 16) + 920);

      v44(v45);
    }
  }

  else
  {
    v46 = v174;
    if ((a9 & 0x80000000000) != 0)
    {
      (*(v173 + 2))(v34, v150, v174);
      v47 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v49 = swift_getAssociatedConformanceWitness();
      *&v178 = v46;
      *(&v178 + 1) = v47;
      *&v179 = AssociatedConformanceWitness;
      *(&v179 + 1) = v49;
      type metadata accessor for ReconciliationID(0, &v178);
      swift_storeEnumTagMultiPayload();
      v50 = v177;
      swift_storeEnumTagMultiPayload();
      (*(*v180 + 312))(v34);
      v43 = (*(isa + 1))(v34, v50);
    }
  }

  v51 = a12;
  v177 = a11;
  v162 = (v157 + 6);
  v156 = (v157 + 4);
  isa = (v173 + 16);
  v153 = v173 + 8;
  v154 = (v172 + 8);
  v173 = *(v169 + 8);
  ++v157;
  v52 = 1;
  v43.n128_u64[0] = 136315394;
  v143 = v43;
  v53 = 1;
  v54 = v150;
  v55 = v170;
  v56 = v171;
  v57 = v175;
  v58 = v168;
  v151 = a12;
  while (1)
  {
    v171 = v53;
    v60 = v52;
    v61 = v164;
    v62 = v167;
    result = sub_1CF62E388(v165, v54, v55, v166 & 1, v167, v180, v177, v51, v164, v173);
    if (v57)
    {
      break;
    }

    if ((*v162)(v61, 1, v58) == 1)
    {
      return (*(v140 + 8))(v61, v141);
    }

    LODWORD(v172) = v60;
    (*v156)(v176, v61, v58);
    if ((v159 & 1) == 0)
    {
      v64 = *(v180 + 4);
      v65 = *(**(v64 + 16) + 312);

      v67 = v65(v66);

      if ((v67 & 1) != 0 && ((*(*v180 + 152))(v68) & 0x40) != 0)
      {
        v70 = *(v64 + 16);
        v71 = *(v70 + 16);
        if (v71)
        {
          v72 = *(v70 + 24);
          v73 = type metadata accessor for FileTreeWriter.FileTreeChange(255, v145, v146, v69);
          sub_1CF9E7FA8();
          swift_allocObject();

          v74 = sub_1CF9E6D68();
          (*isa)(v75, v150, v174);
          v55 = v170;
          swift_storeEnumTagMultiPayload();
          v76 = v74;
          v54 = v150;
          v77 = sub_1CF045898(v76, v73);
          v71(v77, MEMORY[0x1E69E7CC0], 0, 0);
          sub_1CEFF7124(v71, v72);
          v78 = v77;
          v62 = v167;
          v78, v79, v80, v81, v82, v83, v84, v85;
        }
      }
    }

    v86 = sub_1CF61CD04(v176, v54, v55, v180, v160, v161, v62, v158, v177, v51, v169);
    if (((((*(*v180 + 152))() & 0x4000) != 0) & v86) == 0)
    {
      return (*v157)(v176, v168);
    }

    v175 = 0;
    v87 = v180;
    v88 = v177;
    v89 = v173;
    (*(**(v180 + 2) + 528))(v177, v51, v173);
    (*(**(v87 + 4) + 688))(v88, v51, v89);
    (*(**(v87 + 5) + 688))(v88, v51, v89);
    v90 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v91 = *isa;
    v92 = v56;
    v93 = v152;
    v94 = v174;
    (*isa)(v152, v54, v174);
    v95 = sub_1CF9E6108();
    v96 = sub_1CF9E7288();
    v97 = os_log_type_enabled(v95, v96);
    v148 = v91;
    if (v97)
    {
      v98 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *&v178 = v147;
      *v98 = v143.n128_u32[0];
      v99 = v144;
      v91(v144, v93, v94);
      v100 = *v153;
      (*v153)(v93, v94);
      swift_getAssociatedConformanceWitness();
      v101 = sub_1CF9E7F98();
      v103 = v102;
      v149 = v100;
      v100(v99, v174);
      v104 = sub_1CEFD0DF0(v101, v103, &v178);
      v105 = v103;
      v94 = v174;
      v105, v106, v107, v108, v109, v110, v111, v112;
      *(v98 + 4) = v104;
      *(v98 + 12) = 2048;
      *(v98 + 14) = v171;
      _os_log_impl(&dword_1CEFC7000, v95, v96, "Ingesting %s, retries %ld", v98, 0x16u);
      v113 = v147;
      __swift_destroy_boxed_opaque_existential_1(v147);
      v55 = v170;
      MEMORY[0x1D386CDC0](v113, -1, -1);
      v114 = v98;
      v54 = v150;
      MEMORY[0x1D386CDC0](v114, -1, -1);

      v59 = *v154;
      (*v154)(v92, v155);
      v58 = v168;
      (*v157)(v176, v168);
      v56 = v92;
    }

    else
    {
      v149 = *v153;
      v149(v93, v94);

      v59 = *v154;
      (*v154)(v92, v155);
      v58 = v168;
      (*v157)(v176, v168);
      v56 = v92;
      v55 = v170;
    }

    v52 = 0;
    v53 = 2;
    v57 = v175;
    v51 = v151;
    if ((v172 & 1) == 0)
    {
      v115 = fpfs_current_or_default_log();
      v116 = v142;
      sub_1CF9E6128();
      v117 = v139;
      v118 = v148;
      v148(v139, v54, v94);
      v119 = sub_1CF9E6108();
      v120 = sub_1CF9E72A8();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v180 = v122;
        *v121 = 136315138;
        v177 = v119;
        *&v178 = v122;
        v123 = v144;
        v118(v144, v117, v94);
        LODWORD(v176) = v120;
        v124 = v149;
        v149(v117, v94);
        swift_getAssociatedConformanceWitness();
        v125 = sub_1CF9E7F98();
        v127 = v126;
        v124(v123, v94);
        v128 = sub_1CEFD0DF0(v125, v127, &v178);
        v127, v129, v130, v131, v132, v133, v134, v135;
        *(v121 + 4) = v128;
        v136 = v177;
        _os_log_impl(&dword_1CEFC7000, v177, v176, "Transform could not converge for item %s", v121, 0xCu);
        v137 = v180;
        __swift_destroy_boxed_opaque_existential_1(v180);
        MEMORY[0x1D386CDC0](v137, -1, -1);
        MEMORY[0x1D386CDC0](v121, -1, -1);

        v138 = v142;
      }

      else
      {
        v149(v117, v94);

        v138 = v116;
      }

      return (v59)(v138, v155);
    }
  }

  return result;
}

uint64_t sub_1CF61295C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a6(a1, a2, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v7;
}

uint64_t sub_1CF6129E4(uint64_t a1, uint64_t a2, unint64_t *a3, void **a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v308 = a7;
  v309 = a8;
  v273 = a6;
  v292 = a5;
  v301 = a3;
  v306 = a2;
  v11 = *a4;
  v49 = (*a4)[11];
  v12 = (*a4)[13];
  v307 = a9;
  v13 = type metadata accessor for SnapshotItem(255, v49, v12, a4);
  v14 = sub_1CF9E75D8();
  v266 = *(v14 - 8);
  v267 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v271 = &v264 - v15;
  v269 = v13;
  v270 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v268 = &v264 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_1CF9E75D8();
  v277 = *(v19 - 8);
  v278 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v276 = &v264 - v20;
  v284 = AssociatedTypeWitness;
  v279 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v21);
  v272 = &v264 - v22;
  v23 = v11[10];
  v24.i64[0] = v23;
  v283 = v49;
  v24.i64[1] = v49;
  v311 = v24;
  v312 = a4;
  v25 = v11[12];
  v26.i64[0] = v25;
  v282 = v12;
  v26.i64[1] = v12;
  v310 = v26;
  v332 = v24;
  v333 = v26;
  v27 = type metadata accessor for ItemReconciliation(255, &v332);
  v28 = sub_1CF9E75D8();
  v274 = *(v28 - 8);
  v275 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v299 = &v264 - v29;
  v289 = v27;
  v288 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v286 = &v264 - v31;
  v332 = v311;
  v333 = v310;
  v32 = type metadata accessor for ReconciliationMutation(0, &v332);
  v280 = *(v32 - 8);
  v281 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v285 = &v264 - v33;
  v291 = sub_1CF9E5CF8();
  v287 = *(v291 - 8);
  MEMORY[0x1EEE9AC00](v291);
  v290 = &v264 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = swift_getAssociatedTypeWitness();
  v297 = *(v35 - 8);
  v298 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v293 = &v264 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v294 = &v264 - v38;
  v295 = v25;
  v296 = v23;
  v40 = type metadata accessor for SnapshotItem(255, v23, v25, v39);
  v41 = sub_1CF9E75D8();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v304 = (&v264 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v264 - v46;
  LOBYTE(v49) = v42 + 16;
  v48 = *(v42 + 16);
  WitnessTable = a1;
  v303 = v48;
  (v48)(&v264 - v46, a1, v41, v45);
  v50 = *(v40 - 8);
  v302 = *(v50 + 48);
  v51 = (v302)(v47, 1, v40);
  v313 = v40;
  if (v51 == 1)
  {
    (*(v42 + 8))(v47, v41);
    v300 = 0;
    v52 = v312;
  }

  else
  {
    v53 = &v47[*(v40 + 52)];
    v54 = *(v53 + 13);
    v328 = *(v53 + 12);
    v329 = v54;
    v330 = *(v53 + 14);
    v331 = *(v53 + 30);
    v55 = *(v53 + 9);
    v324 = *(v53 + 8);
    v325 = v55;
    v56 = *(v53 + 11);
    v326 = *(v53 + 10);
    v327 = v56;
    v57 = *(v53 + 5);
    v320 = *(v53 + 4);
    v321 = v57;
    v58 = *(v53 + 7);
    v322 = *(v53 + 6);
    v323 = v58;
    v59 = *(v53 + 1);
    v316 = *v53;
    v317 = v59;
    v60 = *(v53 + 3);
    v318 = *(v53 + 2);
    v319 = v60;
    sub_1CEFCCBDC(&v316, v315, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v265 = v50;
    (*(v50 + 8))(v47, v40);
    v344 = v328;
    v345 = v329;
    v346 = v330;
    v347 = v331;
    v340 = v324;
    v341 = v325;
    v342 = v326;
    v343 = v327;
    v336 = v320;
    v337 = v321;
    v338 = v322;
    v339 = v323;
    v332 = v316;
    v333 = v317;
    v334 = v318;
    v335 = v319;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v332) == 1)
    {
      v300 = 0;
    }

    else
    {
      sub_1CEFCCC44(&v316, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v300 = v345;
    }

    v52 = v312;
    v50 = v265;
  }

  v61 = v42;
  v62 = v304;
  v303(v304, WitnessTable, v41);
  v63 = v313;
  if ((v302)(v62, 1, v313) == 1)
  {
    (*(v61 + 8))(v62, v41);
  }

  else
  {
    v64 = v62 + *(v63 + 52);
    v65 = *(v64 + 208);
    v328 = *(v64 + 192);
    v329 = v65;
    v330 = *(v64 + 224);
    v331 = *(v64 + 240);
    v66 = *(v64 + 144);
    v324 = *(v64 + 128);
    v325 = v66;
    v67 = *(v64 + 176);
    v326 = *(v64 + 160);
    v327 = v67;
    v68 = *(v64 + 80);
    v320 = *(v64 + 64);
    v321 = v68;
    v69 = *(v64 + 112);
    v322 = *(v64 + 96);
    v323 = v69;
    v70 = *(v64 + 16);
    v316 = *v64;
    v317 = v70;
    v71 = *(v64 + 48);
    v318 = *(v64 + 32);
    v319 = v71;
    sub_1CEFCCBDC(&v316, v315, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    (*(v50 + 8))(v62, v63);
    v344 = v328;
    v345 = v329;
    v346 = v330;
    v347 = v331;
    v340 = v324;
    v341 = v325;
    v342 = v326;
    v343 = v327;
    v336 = v320;
    v337 = v321;
    v338 = v322;
    v339 = v323;
    v332 = v316;
    v333 = v317;
    v334 = v318;
    v335 = v319;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v332) != 1)
    {
      sub_1CEFCCC44(&v316, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v75 = *(&v345 + 1);
      v72 = v306;
      goto LABEL_13;
    }
  }

  v72 = v306;
  v73 = v314;
  v74 = (*(*v52[4] + 344))(v306, v308, v309, *(v307 + 8));
  if (v73)
  {
    return v49 & 1;
  }

  v75 = v74;
  v314 = 0;
LABEL_13:
  v49 = v72 + *(v63 + 52);
  v76 = *(v49 + 208);
  v344 = *(v49 + 192);
  v345 = v76;
  v346 = *(v49 + 224);
  v347 = *(v49 + 240);
  v77 = *(v49 + 144);
  v340 = *(v49 + 128);
  v341 = v77;
  v78 = *(v49 + 176);
  v342 = *(v49 + 160);
  v343 = v78;
  v79 = *(v49 + 80);
  v336 = *(v49 + 64);
  v337 = v79;
  v80 = *(v49 + 112);
  v338 = *(v49 + 96);
  v339 = v80;
  v81 = *(v49 + 16);
  v332 = *v49;
  v333 = v81;
  v82 = *(v49 + 48);
  v334 = *(v49 + 32);
  v335 = v82;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v332) == 1)
  {
    v83 = 0;
  }

  else
  {
    v83 = *(v49 + 208);
  }

  v84 = *v301;
  v303 = v83;
  v304 = v75;
  if ((v84 & 2) != 0)
  {
    v302 = v84;
    v87 = v297;
    v86 = v298;
    v88 = *(v297 + 16);
    WitnessTable = *(v313 + 36);
    v89 = v294;
    v88(v294, v72 + WitnessTable, v298);
    v90 = v72;
    v91 = v293;
    v88(v293, v90, v86);
    swift_getAssociatedConformanceWitness();
    v92 = sub_1CF9E6868();
    v93 = *(v87 + 8);
    v93(v91, v86);
    v93(v89, v86);
    if (v92)
    {
      v83 = v303;
      v85 = v304;
      v52 = v312;
      v72 = v90;
      goto LABEL_20;
    }

    v109 = v314;
    v110 = (*(*v312[4] + 352))(v90 + WitnessTable, v308, v309, *(v307 + 8));
    if (!v109)
    {
      v72 = v90;
      v314 = 0;
      if (v110 == v304)
      {
        v85 = v304;
        v52 = v312;
        v83 = v303;
        goto LABEL_20;
      }

      v75 = v110;
      v168 = *(v49 + 208);
      v328 = *(v49 + 192);
      v329 = v168;
      v330 = *(v49 + 224);
      v331 = *(v49 + 240);
      v169 = *(v49 + 144);
      v324 = *(v49 + 128);
      v325 = v169;
      v170 = *(v49 + 176);
      v326 = *(v49 + 160);
      v327 = v170;
      v171 = *(v49 + 80);
      v320 = *(v49 + 64);
      v321 = v171;
      v172 = *(v49 + 112);
      v322 = *(v49 + 96);
      v323 = v172;
      v173 = *(v49 + 16);
      v316 = *v49;
      v317 = v173;
      v174 = *(v49 + 48);
      v318 = *(v49 + 32);
      v319 = v174;
      enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v316);
      v52 = v312;
      v83 = v303;
      if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 != 1)
      {
        *(v49 + 216) = v75;
      }

      if ((v302 & 0x400000000000000) == 0)
      {
        *v301 = v302 | 0x400000000000000;
      }

      goto LABEL_17;
    }

    return v49 & 1;
  }

LABEL_17:
  v85 = v75;
LABEL_20:
  v94 = v313;
  WitnessTable = swift_getWitnessTable();
  v95 = sub_1CF06D940(v94, WitnessTable, &v316);
  v301 = v85;
  if (v316.u8[0] != 1 || (v96 = sub_1CF67E058(v300, v304), v95 = sub_1CF67E058(v83, v85), v96 == v95))
  {
    LODWORD(v49) = 0;
    goto LABEL_23;
  }

  if (v95 != 1003 && v95 != 502 && (v95 != 501 || (fpfs_supports_indexAllRemoteItems() & 1) != 0))
  {
    v316 = v311;
    v317 = v310;
    type metadata accessor for JobResult(0, &v316);
    v316 = v311;
    v317 = v310;
    type metadata accessor for Maintenance.RefreshInheritedContentPolicy(0, &v316);
    v111 = v290;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v113 = v112;
    result = (*(v287 + 8))(v111, v291);
    v115 = v113 * 1000000000.0;
    if (COERCE__INT64(fabs(v113 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v115 > -9.22337204e18)
      {
        if (v115 < 9.22337204e18)
        {
          v116 = sub_1CF559420();
          sub_1CF803A0C(v292, v116);
          LODWORD(v49) = 0;
LABEL_55:

          goto LABEL_23;
        }

        goto LABEL_204;
      }

LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  v316 = v311;
  v317 = v310;
  type metadata accessor for JobResult(0, &v316);
  v316 = v311;
  v317 = v310;
  type metadata accessor for Maintenance.RefreshInheritedContentPolicy(0, &v316);
  v117 = v290;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v119 = v118;
  v120 = *(v287 + 8);
  result = v120(v117, v291);
  v121 = v119 * 1000000000.0;
  if (COERCE__INT64(fabs(v119 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_200;
  }

  if (v121 <= -9.22337204e18)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  if (v121 >= 9.22337204e18)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  sub_1CF559420();
  v122 = sub_1CF052548(0x800000);

  sub_1CF803A0C(v292, v122);

  if (v273)
  {
    v316 = v311;
    v317 = v310;
    type metadata accessor for Maintenance.PaceRefreshInheritedContentPolicy(0, &v316);
    v52 = v312;
    sub_1CF046AB4();
    v123 = v290;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v125 = v124;
    result = v120(v123, v291);
    v126 = v125 * 1000000000.0;
    if (COERCE__INT64(fabs(v125 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v126 > -9.22337204e18)
      {
        v94 = v313;
        if (v126 < 9.22337204e18)
        {
          v127 = v294;
          sub_1CF559420();
          (*(v297 + 8))(v127, v298);
          v128 = sub_1CF052548(0x1000000);

          sub_1CF803A0C(v292, v128);
          LODWORD(v49) = 1;
          goto LABEL_55;
        }

LABEL_207:
        __break(1u);
        goto LABEL_208;
      }

LABEL_206:
      __break(1u);
      goto LABEL_207;
    }

LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  LODWORD(v49) = 1;
  v52 = v312;
  v94 = v313;
LABEL_23:
  LODWORD(v302) = ((*v52)[75])(v95);
  sub_1CF06D940(v94, WitnessTable, &v316);
  if (v316.u8[0] - 1 < 2)
  {
    goto LABEL_63;
  }

  sub_1CF06D940(v94, WitnessTable, &v316);
  v97 = v316.u8[0] == 1;
  v98 = v304;
  v99 = v302;
  v100 = sub_1CEFF8538(v300, v304, 0, v302, v97, 0);
  v101 = sub_1CEFF8538(v98, 0, 1, v99, v97, 0);
  if (v100 == 501)
  {
    v102 = v101;
    fpfs_supports_indexAllRemoteItems();
    v100 = v102;
  }

  sub_1CF06D940(v94, WitnessTable, &v316);
  v103 = v316.u8[0] == 1;
  v104 = v301;
  v105 = v302;
  v106 = sub_1CEFF8538(v303, v301, 0, v302, v103, 0);
  v107 = sub_1CEFF8538(v104, 0, 1, v105, v103, 0);
  if (v106 == 501)
  {
    v108 = v107;
    fpfs_supports_indexAllRemoteItems();
    v106 = v108;
  }

  if (v106 == 3 || v106 == 1002)
  {
    if (v100 != 3 && v100 != 1002)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if (v106 == 500)
    {
      if (v100 == 500)
      {
        goto LABEL_63;
      }

LABEL_59:
      v273 = v49;
      v316 = v311;
      v317 = v310;
      v265 = type metadata accessor for JobResult(0, &v316);
      v129 = v295;
      v130 = v296;
      v131 = v298;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v133 = v284;
      v134 = swift_getAssociatedConformanceWitness();
      v316.i64[0] = v131;
      v316.i64[1] = v133;
      v317.i64[0] = AssociatedConformanceWitness;
      v317.i64[1] = v134;
      type metadata accessor for ReconciliationID(255, &v316);
      type metadata accessor for ReconciliationSideMutation(255, v130, v129, v135);
      v136 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v297 + 16))(v285, v72, v131);
      swift_storeEnumTagMultiPayload();
      v137 = v290;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v139 = v138;
      (*(v287 + 8))(v137, v291);
      v140 = v139 * 1000000000.0;
      if (COERCE__INT64(fabs(v139 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v140 > -9.22337204e18)
      {
        if (v140 < 9.22337204e18)
        {
          v141 = v285;
          v142 = &v285[v136];
          *v142 = xmmword_1CFA04E60;
          *(v142 + 2) = v140;
          swift_storeEnumTagMultiPayload();
          v49 = v281;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v292, v141);
          (*(v280 + 8))(v141, v49);
          LODWORD(v49) = v273;
          goto LABEL_63;
        }

LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      __break(1u);
      goto LABEL_187;
    }

    if (v100 == 3 || v100 == 1002 || v100 == 500)
    {
      goto LABEL_59;
    }
  }

LABEL_63:
  v143 = *(v307 + 8);
  v144 = v299;
  v145 = v314;
  sub_1CF68DDB0(v72, v308, v309, v143, v299);
  if (v145)
  {
    return v49 & 1;
  }

  v314 = 0;
  v146 = v288;
  v147 = v289;
  if ((*(v288 + 48))(v144, 1, v289) == 1)
  {
    (*(v274 + 8))(v144, v275);
    return v49 & 1;
  }

  v275 = v143;
  v148 = *(v146 + 32);
  v149 = v286;
  v148(v286, v144, v147);
  v150 = &v149[*(v147 + 52)];
  v151 = v276;
  v152 = v277;
  v153 = v278;
  (*(v277 + 16))(v276, v150, v278);
  v154 = v279;
  v155 = v284;
  if ((*(v279 + 48))(v151, 1, v284) == 1)
  {
    (*(v152 + 8))(v151, v153);
    v156 = v313;
    sub_1CF06D940(v313, WitnessTable, &v316);
    v157 = v316.i8[0];
    v273 = v49;
    if (v300 > 501)
    {
      v158 = v303;
      v159 = v289;
      if ((v300 - 1000) >= 3)
      {
        if (v300 == 502)
        {
          v160 = &unk_1CFA0E208;
          goto LABEL_101;
        }

        if (v300 == 1003)
        {
          v160 = &unk_1CFA0E228;
          goto LABEL_101;
        }

LABEL_96:
        v176 = -1;
        goto LABEL_102;
      }
    }

    else
    {
      v158 = v303;
      v159 = v289;
      if (v300 == 3)
      {
        v176 = -5;
        goto LABEL_102;
      }

      if (v300 != 500)
      {
        if (v300 == 501 && (fpfs_supports_indexAllRemoteItems() & 1) == 0)
        {
          v160 = &unk_1CFA0E1E8;
LABEL_101:
          v176 = v160[v157];
          goto LABEL_102;
        }

        goto LABEL_96;
      }
    }

    if (v316.i8[0] == 1)
    {
      v176 = -5;
    }

    else
    {
      v176 = -1;
    }

LABEL_102:
    v184 = *&v286[*(v159 + 80)];
    sub_1CF06D940(v156, WitnessTable, &v316);
    v185 = v316.i8[0];
    if (v158 > 501)
    {
      if ((v158 - 1000) < 3)
      {
        goto LABEL_110;
      }

      if (v158 == 502)
      {
        v186 = 64;
        if ((0xEu >> (v316.i8[0] & 0xF)) & 1 | ((v184 & 2) != 0))
        {
          v186 = 0;
        }

LABEL_126:
        if ((v186 & v176) == 0)
        {
          goto LABEL_132;
        }

        v188 = v297;
        v187 = v298;
        v189 = *(v297 + 16);
        v190 = v294;
        v189(v294, v72, v298);
        v313 = *(v156 + 36);
        v191 = v72 + v313;
        v192 = v72;
        v193 = v293;
        v189(v293, v191, v187);
        swift_getAssociatedConformanceWitness();
        v194 = sub_1CF9E6868();
        v195 = *(v188 + 8);
        v195(v193, v187);
        v195(v190, v187);
        if (v194)
        {
          goto LABEL_132;
        }

        v316 = v311;
        v317 = v310;
        type metadata accessor for JobResult(0, &v316);
        v316 = v311;
        v317 = v310;
        type metadata accessor for Materialization.BackgroundMaterializeParentHierarchy(0, &v316);
        v196 = v290;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v198 = v197;
        result = (*(v287 + 8))(v196, v291);
        v199 = v198 * 1000000000.0;
        if (COERCE__INT64(fabs(v198 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v199 > -9.22337204e18)
          {
            if (v199 < 9.22337204e18)
            {
              v200 = sub_1CF574884(v192 + v313, 0, v199, 0);
              sub_1CF803A0C(v292, v200);

LABEL_132:
              (*(v288 + 8))(v286, v159);
              LOBYTE(v49) = v273;
              return v49 & 1;
            }

            goto LABEL_210;
          }

LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
          goto LABEL_211;
        }

LABEL_208:
        __break(1u);
        goto LABEL_209;
      }

      if (v158 != 1003 || v316.u8[0] - 2 < 2)
      {
LABEL_114:
        v186 = 0;
        goto LABEL_126;
      }

      if (!v316.i8[0])
      {
        if ((v184 & 2) == 0)
        {
          v186 = 64;
          goto LABEL_126;
        }

        goto LABEL_114;
      }
    }

    else if (v158 != 3)
    {
      if (v158 != 500)
      {
        if (v158 == 501 && (fpfs_supports_indexAllRemoteItems() & 1) == 0)
        {
          v186 = 16;
          if (((1u >> (v185 & 0xF)) & ((v184 & 3) == 0)) == 0)
          {
            v186 = 0;
          }

          goto LABEL_126;
        }

        goto LABEL_114;
      }

LABEL_110:
      v186 = 4 * (v316.u8[0] == 1);
      goto LABEL_126;
    }

    v186 = 4;
    goto LABEL_126;
  }

  v161 = v272;
  (*(v154 + 32))(v272, v151, v155);
  v163 = type metadata accessor for ItemReconciliationHalf(0, v283, v282, v162);
  if (*(v150 + *(v163 + 56)) != 6)
  {
    (*(v154 + 8))(v161, v155);
    (*(v288 + 8))(v286, v289);
    return v49 & 1;
  }

  v165 = v163;
  v166 = type metadata accessor for ItemReconciliationHalf(0, v296, v295, v164);
  v167 = v286;
  if (v286[*(v166 + 52)] == 2)
  {
    (*(v279 + 8))(v272, v284);
    (*(v288 + 8))(v167, v289);
    return v49 & 1;
  }

  v294 = v165;
  v299 = v150;
  v177 = *&v286[*(v289 + 80)];
  v178 = v313;
  v179 = WitnessTable;
  sub_1CF06D940(v313, WitnessTable, &v316);
  v180 = sub_1CEFF8538(v300, v304, 0, v302, v316.u8[0] == 1, v177 != 0);
  sub_1CF06D940(v178, v179, &v316);
  v181 = v316.i8[0];
  v273 = v49;
  if (v180 > 501)
  {
    if ((v180 - 1000) >= 3)
    {
      if (v180 == 502)
      {
        v182 = &unk_1CFA0E1A8;
        goto LABEL_135;
      }

      if (v180 == 1003)
      {
        v182 = &unk_1CFA0E1C8;
        goto LABEL_135;
      }

LABEL_121:
      v304 = 0;
      goto LABEL_137;
    }
  }

  else
  {
    if (v180 == 3)
    {
      v183 = 4;
      goto LABEL_136;
    }

    if (v180 != 500)
    {
      if (v180 == 501 && (fpfs_supports_indexAllRemoteItems() & 1) == 0)
      {
        v182 = &unk_1CFA0E188;
LABEL_135:
        v183 = v182[v181];
        goto LABEL_136;
      }

      goto LABEL_121;
    }
  }

  v183 = 4 * (v316.i8[0] == 1);
LABEL_136:
  v304 = v183;
LABEL_137:
  v201 = v313;
  v202 = WitnessTable;
  sub_1CF06D940(v313, WitnessTable, &v316);
  v49 = sub_1CEFF8538(v303, v301, 0, v302, v316.u8[0] == 1, v177 != 0);
  sub_1CF06D940(v201, v202, &v316);
  v203 = v316.i8[0];
  if (v49 <= 501)
  {
    v204 = v312;
    if (v49 != 3)
    {
      if (v49 != 500)
      {
        if (v49 == 501 && (fpfs_supports_indexAllRemoteItems() & 1) == 0)
        {
          if (((1u >> (v203 & 0xF)) & ((v177 & 3) == 0)) != 0)
          {
            v130 = 16;
          }

          else
          {
            v130 = 0;
          }

          goto LABEL_158;
        }

        goto LABEL_150;
      }

LABEL_146:
      v130 = 4 * (v316.u8[0] == 1);
      goto LABEL_158;
    }

    goto LABEL_157;
  }

  v204 = v312;
  if ((v49 - 1000) < 3)
  {
    goto LABEL_146;
  }

  if (v49 == 502)
  {
    if ((0xEu >> (v316.i8[0] & 0xF)) & 1 | ((v177 & 2) != 0))
    {
      v130 = 0;
    }

    else
    {
      v130 = 64;
    }

    goto LABEL_158;
  }

  if (v49 != 1003 || v316.u8[0] - 2 < 2)
  {
LABEL_150:
    v130 = 0;
    goto LABEL_158;
  }

  if (!v316.i8[0])
  {
    if ((v177 & 2) == 0)
    {
      v130 = 64;
      goto LABEL_158;
    }

    goto LABEL_150;
  }

LABEL_157:
  v130 = 4;
LABEL_158:
  if ((((*v204)[19])() & 0x40000) == 0 && v49 == 501 && (v177 & 2) != 0)
  {
    v316 = v311;
    v317 = v310;
    WitnessTable = type metadata accessor for JobResult(0, &v316);
    v205 = v298;
    v206 = swift_getAssociatedConformanceWitness();
    v313 = v130;
    v207 = v206;
    v208 = v284;
    v209 = swift_getAssociatedConformanceWitness();
    v316.i64[0] = v205;
    v316.i64[1] = v208;
    v317.i64[0] = v207;
    v317.i64[1] = v209;
    type metadata accessor for ReconciliationID(255, &v316);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v211 = *(TupleTypeMetadata3 + 48);
    v212 = *(TupleTypeMetadata3 + 64);
    v213 = v285;
    (*(v297 + 16))(v285, v72, v205);
    v204 = v312;
    swift_storeEnumTagMultiPayload();
    *(v213 + v211) = 1;
    *(v213 + v212) = 0;
    v214 = v281;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v292, v213);
    v215 = v213;
    v130 = v313;
    (*(v280 + 8))(v215, v214);
  }

  if (v180 != 1)
  {
    goto LABEL_167;
  }

  v217 = v271;
  v216 = v272;
  v218 = v314;
  (*(*v204[5] + 240))(v272, 1, v308, v309, v275);
  v314 = v218;
  if (v218)
  {
    (*(v279 + 8))(v216, v284);
    (*(v288 + 8))(v286, v289);
    return v49 & 1;
  }

  v220 = v269;
  v219 = v270;
  if ((*(v270 + 48))(v217, 1, v269) == 1)
  {
    (*(v266 + 8))(v217, v267);
LABEL_167:
    v221 = v314;
    v222 = v288;
    v49 = v289;
    v223 = v279;
LABEL_168:
    v224 = v304;
    v225 = v272;
    goto LABEL_169;
  }

  v226 = v217;
  v227 = v268;
  (*(v219 + 32))(v268, v226, v220);
  v228 = swift_getWitnessTable();
  if ((sub_1CF937C7C(v220, v228) & 1) == 0)
  {
    (*(v219 + 8))(v227, v220);
    goto LABEL_175;
  }

  if (*(v299 + *(v294 + 17) + 24) >> 60 == 11)
  {
    (*(v270 + 8))(v268, v220);
LABEL_175:
    v221 = v314;
    v222 = v288;
    v49 = v289;
    v223 = v279;
    v204 = v312;
    goto LABEL_168;
  }

  if (v49 > 501)
  {
    if (v49 != 502 && v49 != 1003)
    {
      goto LABEL_184;
    }

    goto LABEL_183;
  }

  WitnessTable = v228;
  if (v49 != 2)
  {
    if (v49 != 501 || (fpfs_supports_indexAllRemoteItems() & 1) != 0)
    {
LABEL_184:
      (*(v270 + 8))(v268, v220);
      v221 = v314;
LABEL_198:
      v222 = v288;
      v49 = v289;
      v223 = v279;
      v225 = v272;
      v204 = v312;
      v224 = v304;
LABEL_169:
      (*(*v204[3] + 472))(v225, (v130 ^ v224) & v224, v130 & (v130 ^ v224) & 0x14, v308, v309, v307);
      (*(v223 + 8))(v225, v284);
      (*(v222 + 8))(v286, v49);
      if (!v221)
      {
        LOBYTE(v49) = v273;
      }

      return v49 & 1;
    }

LABEL_183:
    v316 = v311;
    v317 = v310;
    type metadata accessor for JobResult(0, &v316);
    v229 = v298;
    v230 = swift_getAssociatedConformanceWitness();
    v231 = v284;
    v232 = swift_getAssociatedConformanceWitness();
    v316.i64[0] = v229;
    v316.i64[1] = v231;
    v317.i64[0] = v230;
    v317.i64[1] = v232;
    type metadata accessor for ReconciliationID(255, &v316);
    v233 = swift_getTupleTypeMetadata3();
    v234 = *(v233 + 48);
    v235 = *(v233 + 64);
    v236 = v285;
    (*(v297 + 16))(v285, v72, v229);
    swift_storeEnumTagMultiPayload();
    *(v236 + v234) = 1;
    *(v236 + v235) = 0;
    v49 = v281;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v292, v236);
    (*(v280 + 8))(v236, v49);
    (*(v270 + 8))(v268, v269);
    (*(v279 + 8))(v272, v231);
    (*(v288 + 8))(v286, v289);
    LOBYTE(v49) = 0;
    return v49 & 1;
  }

LABEL_188:
  v313 = v130;
  v316 = v311;
  v317 = v310;
  type metadata accessor for JobResult(0, &v316);
  v237 = v298;
  v238 = swift_getAssociatedConformanceWitness();
  v240 = v282;
  v239 = v283;
  v241 = v284;
  v242 = swift_getAssociatedConformanceWitness();
  v316.i64[0] = v237;
  v316.i64[1] = v241;
  v317.i64[0] = v238;
  v317.i64[1] = v242;
  type metadata accessor for ReconciliationID(255, &v316);
  type metadata accessor for ReconciliationSideMutation(255, v239, v240, v243);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v245 = v285;
  v246 = &v285[*(TupleTypeMetadata2 + 48)];
  (*(v279 + 16))(v285, v272, v241);
  swift_storeEnumTagMultiPayload();
  *v246 = 0;
  *(v246 + 1) = 0;
  *(v246 + 2) = 0;
  *(v246 + 3) = 0xB000000000000000;
  *(v246 + 2) = 0u;
  *(v246 + 3) = 0u;
  *(v246 + 32) = 257;
  swift_storeEnumTagMultiPayload();
  v247 = v281;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v292, v245);
  v248 = *(v280 + 8);
  v249 = v248(v245, v247);
  if ((((*v312)[69])(v249) & 1) == 0)
  {
    goto LABEL_194;
  }

  sub_1CF06D940(v269, WitnessTable, &v316);
  if (v316.u8[0] - 1 < 2)
  {
    goto LABEL_194;
  }

  v316 = vextq_s8(v311, v311, 8uLL);
  v317 = vextq_s8(v310, v310, 8uLL);
  type metadata accessor for RemoteVersion.CleanRemoteVersions(0, &v316);
  v251 = v290;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v253 = v252;
  result = (*(v287 + 8))(v251, v291);
  v254 = v253 * 1000000000.0;
  if (COERCE__INT64(fabs(v253 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  if (v254 <= -9.22337204e18)
  {
LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

  if (v254 < 9.22337204e18)
  {
    v255 = sub_1CF989304(v272, 0, v254, 2);
    sub_1CF8039C4(v292, v255);

LABEL_194:
    type metadata accessor for ReconciliationSideMutation(255, v296, v295, v250);
    v256 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v297 + 16))(v285, v306, v298);
    swift_storeEnumTagMultiPayload();
    v257 = v290;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v259 = v258;
    result = (*(v287 + 8))(v257, v291);
    v260 = v259 * 1000000000.0;
    if (COERCE__INT64(fabs(v259 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_211:
      __break(1u);
      goto LABEL_212;
    }

    if (v260 <= -9.22337204e18)
    {
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    if (v260 >= 9.22337204e18)
    {
LABEL_213:
      __break(1u);
      goto LABEL_214;
    }

    v261 = v285;
    v262 = &v285[v256];
    *v262 = xmmword_1CFA00210;
    *(v262 + 2) = v260;
    swift_storeEnumTagMultiPayload();
    v263 = v281;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v292, v261);
    v248(v261, v263);
    (*(v270 + 8))(v268, v269);
    v130 = v313;
    v221 = v314;
    goto LABEL_198;
  }

LABEL_216:
  __break(1u);
  return result;
}

char *sub_1CF614EB4(void (*a1)(void, void, void), void (*a2)(uint64_t, uint64_t), uint64_t a3, void *a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t), void (*a6)(void, void, void, void), char *a7)
{
  v428 = a6;
  v429 = a7;
  v432 = a5;
  v414 = a3;
  v421 = a2;
  v457 = a1;
  v8 = (*a4 + 88);
  v9 = *(*a4 + 96);
  v10 = *(*a4 + 80);
  v11 = (*a4 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v416 = sub_1CF9E75D8();
  v383 = *(v416 - 8);
  MEMORY[0x1EEE9AC00](v416);
  v385 = &v378 - v13;
  v420 = type metadata accessor for JobLockRule(0, v10, v9, v14);
  v413 = *(v420 - 8);
  MEMORY[0x1EEE9AC00](v420);
  v405 = &v378 - v15;
  v424 = AssociatedTypeWitness;
  v422 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v382 = &v378 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v389 = &v378 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v390 = &v378 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v388 = &v378 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v386 = &v378 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v391 = &v378 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v392 = &v378 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v402 = &v378 - v31;
  v398 = type metadata accessor for ItemReconciliationHalf(0, v10, v9, v32);
  v394 = *(v398 - 1);
  MEMORY[0x1EEE9AC00](v398);
  v393 = &v378 - v33;
  *&v34 = v10;
  *(&v34 + 1) = *v8;
  *&v35 = v9;
  *(&v35 + 1) = *v11;
  v430 = v35;
  v431 = v34;
  v442 = v35;
  v441 = v34;
  v36 = type metadata accessor for ItemReconciliation(255, &v441);
  v37 = sub_1CF9E75D8();
  v399 = *(v37 - 8);
  v400 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v387 = &v378 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v395 = &v378 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v396 = &v378 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v403 = &v378 - v44;
  v401 = v36;
  v404 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v384 = &v378 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v397 = &v378 - v48;
  v419 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v406 = &v378 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v409 = &v378 - v52;
  v423 = v9;
  v54 = type metadata accessor for SnapshotItem(255, v10, v9, v53);
  v55 = sub_1CF9E75D8();
  v407 = *(v55 - 8);
  v408 = v55;
  MEMORY[0x1EEE9AC00](v55);
  v426 = &v378 - v56;
  v412 = v54;
  v410 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v411 = &v378 - v58;
  v425 = v10;
  v415 = sub_1CF9E75D8();
  v418 = *(v415 - 8);
  MEMORY[0x1EEE9AC00](v415);
  v60 = &v378 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v378 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v378 - v65;
  MEMORY[0x1EEE9AC00](v67);
  v69 = (&v378 - v68);
  v417 = a4;
  v70 = a4[3];
  v442 = v430;
  v441 = v431;
  ItemMetadata = type metadata accessor for Ingestion.FetchItemMetadata(0, &v441);
  v72 = *(*v70 + 328);
  v73 = v427;
  v74 = v72(v457, ItemMetadata, 0, v432, v428, v429);
  if (v73)
  {
    return v60;
  }

  v380 = v60;
  v381 = v69;
  v378 = v63;
  v379 = v66;
  v60 = v426;
  v427 = 0;
  if (v74)
  {
    *&v441 = 0;
    *(&v441 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA55280);
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7FE8();
LABEL_5:
    v76 = *(&v441 + 1);
    v60 = v441;
    sub_1CF657A18(v441, *(&v441 + 1), 0, 2u);
    v76, v77, v78, v79, v80, v81, v82, v83;
    return v60;
  }

  v441 = v431;
  v442 = v430;
  v84 = type metadata accessor for Ingestion.DeleteFolderFromSnapshotIfEmpty(0, &v441);
  v85 = v457;
  v87 = v428;
  v86 = v429;
  v88 = v427;
  v89 = v72(v457, v84, 0, v432, v428, v429);
  if (v88)
  {
    return v60;
  }

  v427 = 0;
  if (v89)
  {
    sub_1CF9E7FA8();
    swift_allocObject();
    v90 = 1;
    v432 = sub_1CF9E6D68();
    v92 = v91;
    v93 = v424;
    v94 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v422 + 16))(v92, v85, v93);
    v95 = v381;
    v96 = v415;
    (*(v418 + 16))(v381, v421, v415);
    v97 = v419;
    v98 = v425;
    if ((*(v419 + 48))(v95, 1, v425) == 1)
    {
      v99 = v423;
      v100 = v418;
    }

    else
    {
      v107 = v97;
      v99 = v423;
      (*(v423 + 72))(v98, v423);
      v90 = 0;
      v100 = v107;
      v93 = v424;
      v96 = v98;
    }

    (*(v100 + 8))(v95, v96);
    (*(v422 + 56))(v92 + v94, v90, 1, v93);
    v108 = v420;
    swift_storeEnumTagMultiPayload();
    v109 = sub_1CF045898(v432, v108);
    v110 = *(**(v417[4] + 16) + 312);

    LOBYTE(v110) = v110(v111);

    v60 = sub_1CF06A504(v109, v414, v110 & 1, v112, v113, v98, v114, v115, v99);
    v109, v116, v117, v118, v119, v120, v121, v122;
    return v60;
  }

  v101 = v419 + 48;
  v102 = *(v419 + 48);
  if (v102(v421, 1, v425) == 1)
  {
    v441 = v431;
    v442 = v430;
    type metadata accessor for Propagation.DeleteItem(0, &v441);
    v103 = sub_1CF057C00();
    v104 = v427;
    v105 = (*(*v70 + 248))(v103, 0, v432, v87, v86);
    if (v104)
    {
      return v60;
    }

    if (v105)
    {
      v106 = 0x80000001CFA55230;
      v60 = 0xD000000000000041;
LABEL_37:
      sub_1CF657A18(v60, v106, 0, 2u);
      return v60;
    }

    if (!v414)
    {
      v106 = 0x80000001CFA55040;
      v60 = 0xD000000000000021;
      goto LABEL_37;
    }

    *&v431 = v101;
  }

  else
  {
    *&v431 = v101;
    v104 = v427;
  }

  v123 = v417[4];
  (*(*v123 + 240))(v457, 1, v432, v87, v86);
  v124 = v422;
  if (v104)
  {
    return v60;
  }

  v381 = v102;
  *&v430 = v123;
  v427 = 0;
  v125 = v410;
  v126 = v412;
  v127 = (*(v410 + 48))(v60, 1, v412);
  v128 = (v418 + 16);
  if (v127 != 1)
  {
    (*(v125 + 32))(v411, v60, v126);
    v144 = *v128;
    v145 = v379;
    v146 = v415;
    v426 = v128;
    v408 = v144;
    v144(v379, v421, v415);
    v147 = v425;
    v60 = v431;
    if (v381(v145, 1, v425) == 1)
    {
      *&v431 = v60;
      (*(v418 + 8))(v145, v146);
LABEL_27:
      sub_1CF9E7FA8();
      v417 = *(v413 + 72);
      swift_allocObject();
      v432 = sub_1CF9E6D68();
      v149 = v148;
      v150 = v424;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v152 = *(TupleTypeMetadata2 + 48);
      v153 = v422;
      v154 = *(v422 + 16);
      v155 = v457;
      v154(v149, v457, v150);
      v416 = v412[9];
      v154(v149 + v152, &v411[v416], v150);
      v428 = *(v153 + 56);
      v429 = (v153 + 56);
      v428(v149 + v152, 0, 1, v150);
      swift_storeEnumTagMultiPayload();
      v156 = v417 + v149;
      v157 = *(TupleTypeMetadata2 + 48);
      v154(v417 + v149, v155, v150);
      v158 = v378;
      v408(v378, v421, v415);
      v159 = v425;
      if (v381(v158, 1, v425) == 1)
      {
        (*(v418 + 8))(v158, v415);
        v154(&v156[v157], &v411[v416], v150);
        v160 = v423;
      }

      else
      {
        v160 = v423;
        v168 = v402;
        (*(v423 + 72))(v159, v423);
        (*(v419 + 8))(v158, v159);
        (*(v422 + 32))(&v156[v157], v168, v150);
      }

      v169 = v430;
      v170 = v410;
      v428(&v156[v157], 0, 1, v150);
      v171 = v420;
      swift_storeEnumTagMultiPayload();
      v172 = sub_1CF045898(v432, v171);
      v173 = *(**(v169 + 16) + 312);

      LOBYTE(v173) = v173(v174);

      v60 = sub_1CF06A504(v172, v414, v173 & 1, v175, v176, v159, v177, v178, v160);
      v172, v179, v180, v181, v182, v183, v184, v185;
      (*(v170 + 8))(v411, v412);
      return v60;
    }

    (*(v419 + 32))(v409, v145, v147);
    (*(v423 + 120))(v439, v147, v423);
    v453 = v439[12];
    v454 = v439[13];
    v455 = v439[14];
    v456 = v440;
    v449 = v439[8];
    v450 = v439[9];
    v451 = v439[10];
    v452 = v439[11];
    v445 = v439[4];
    v446 = v439[5];
    v447 = v439[6];
    v448 = v439[7];
    v441 = v439[0];
    v442 = v439[1];
    v443 = v439[2];
    v444 = v439[3];
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v441) == 1)
    {
      v166 = v427;
      v167 = v409;
    }

    else
    {
      sub_1CEFCCC44(v439, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v186 = &v411[v412[13]];
      v187 = *(v186 + 13);
      v437[12] = *(v186 + 12);
      v437[13] = v187;
      v437[14] = *(v186 + 14);
      v438 = *(v186 + 30);
      v188 = *(v186 + 9);
      v437[8] = *(v186 + 8);
      v437[9] = v188;
      v189 = *(v186 + 11);
      v437[10] = *(v186 + 10);
      v437[11] = v189;
      v190 = *(v186 + 4);
      v437[5] = *(v186 + 5);
      v191 = *(v186 + 7);
      v437[6] = *(v186 + 6);
      v437[7] = v191;
      v192 = *(v186 + 1);
      v437[0] = *v186;
      v437[1] = v192;
      v193 = *(v186 + 2);
      v437[3] = *(v186 + 3);
      v437[4] = v190;
      v437[2] = v193;
      enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v437);
      v167 = v409;
      if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
      {
        v166 = v427;
        (*(*v430 + 264))(v435, v457, v432, v428, v429);
        if (v166)
        {
          (*(v419 + 8))(v167, v425);
          (*(v410 + 8))(v411, v412);
          return v60;
        }

        v249 = *(v186 + 13);
        v433[12] = *(v186 + 12);
        v433[13] = v249;
        v433[14] = *(v186 + 14);
        v434 = *(v186 + 30);
        v250 = *(v186 + 9);
        v433[8] = *(v186 + 8);
        v433[9] = v250;
        v251 = *(v186 + 11);
        v433[10] = *(v186 + 10);
        v433[11] = v251;
        v252 = *(v186 + 5);
        v433[4] = *(v186 + 4);
        v433[5] = v252;
        v253 = *(v186 + 7);
        v433[6] = *(v186 + 6);
        v433[7] = v253;
        v254 = *(v186 + 1);
        v433[0] = *v186;
        v433[1] = v254;
        v255 = *(v186 + 3);
        v433[2] = *(v186 + 2);
        v433[3] = v255;
        sub_1CEFCCC44(v433, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        v256 = v435[13];
        *(v186 + 12) = v435[12];
        *(v186 + 13) = v256;
        *(v186 + 14) = v435[14];
        *(v186 + 30) = v436;
        v257 = v435[9];
        *(v186 + 8) = v435[8];
        *(v186 + 9) = v257;
        v258 = v435[11];
        *(v186 + 10) = v435[10];
        *(v186 + 11) = v258;
        v259 = v435[5];
        *(v186 + 4) = v435[4];
        *(v186 + 5) = v259;
        v260 = v435[7];
        *(v186 + 6) = v435[6];
        *(v186 + 7) = v260;
        v261 = v435[1];
        *v186 = v435[0];
        *(v186 + 1) = v261;
        v262 = v435[3];
        *(v186 + 2) = v435[2];
        *(v186 + 3) = v262;
      }

      else
      {
        v166 = v427;
      }
    }

    v263 = v403;
    sub_1CF68DDB0(v457, v432, v428, v429, v403);
    v427 = v166;
    v264 = v404;
    if (v166)
    {
      (*(v419 + 8))(v167, v425);
      v265 = v411;
      v266 = *(v410 + 8);
    }

    else
    {
      v267 = *(v404 + 48);
      v268 = v401;
      v417 = (v404 + 48);
      v407 = v267;
      if (v267(v263, 1, v401) == 1)
      {
        v269 = v400;
        (*(v399 + 8))(v263, v400);
        v270 = v411;
        v271 = v425;
      }

      else
      {
        v272 = v397;
        (*(v264 + 32))(v397, v263, v268);
        v273 = v272[v398[19]];
        v274 = &v411[v412[12]];
        v275 = type metadata accessor for ItemMetadata(0);
        v276 = v268;
        v277 = v275;
        v274[*(v275 + 96)] = (v273 & 4) != 0;
        (*(v264 + 8))(v272, v276);
        v274[*(v277 + 100)] = (v273 & 8) != 0;
        v167 = v409;
        v270 = v411;
        v271 = v425;
        v269 = v400;
      }

      *&v431 = v60;
      swift_getWitnessTable();
      sub_1CF937F9C(v167);
      if (*&v437[0])
      {
        (*(v419 + 8))(v167, v271);
        goto LABEL_27;
      }

      v60 = v270;
      v278 = v271;
      v279 = v396;
      v280 = v427;
      sub_1CF68DDB0(v457, v432, v428, v429, v396);
      v427 = v280;
      if (!v280)
      {
        (*(v419 + 8))(v167, v278);
        v281 = v399;
        v282 = v395;
        (*(v399 + 32))(v395, v279, v269);
        v283 = v401;
        if (v407(v282, 1, v401) == 1)
        {
          (*(v281 + 8))(v282, v269);
        }

        else
        {
          v299 = v393;
          v298 = v394;
          v300 = v398;
          (*(v394 + 16))(v393, v282, v398);
          (*(v404 + 8))(v282, v283);
          v301 = *&v299[v300[9]];
          (*(v298 + 8))(v299, v300);
          if (v301)
          {
            goto LABEL_27;
          }
        }

        (*(v410 + 8))(v411, v412);
        return 0;
      }

      (*(v419 + 8))(v167, v278);
      v266 = *(v410 + 8);
      v265 = v270;
    }

    v266(v265, v412);
    return v60;
  }

  (*(v407 + 1))(v60, v408);
  v60 = v380;
  v129 = v415;
  (*v128)(v380, v421, v415);
  v130 = v425;
  if (v381(v60, 1, v425) == 1)
  {
    v131 = (*(v418 + 8))(v60, v129);
    (*(*v417 + 216))(v131);
    v132 = v424;
    v133 = *(swift_getTupleTypeMetadata2() + 48);
    v134 = v405;
    (*(v124 + 16))(v405, v457, v132);
    (*(v124 + 56))(v134 + v133, 1, 1, v132);
    v135 = v420;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v133) = sub_1CF52A078(v134);

    (*(v413 + 8))(v134, v135);
    if ((v133 & 1) == 0)
    {
      return 0xD000000000000018;
    }

    *&v441 = 0;
    *(&v441 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000048, 0x80000001CFA55090);
    if (*(v430 + 32))
    {
      v136 = 20550;
    }

    else
    {
      v136 = 21318;
    }

    MEMORY[0x1D3868CC0](v136, 0xE200000000000000);
    0xE200000000000000, v137, v138, v139, v140, v141, v142, v143;
    goto LABEL_5;
  }

  v161 = v419;
  v162 = v406;
  (*(v419 + 32))(v406, v60, v130);
  v163 = v423;
  v164 = (*(v423 + 144))(v130, v423);
  LODWORD(v60) = v164;
  if (!(v165 >> 62))
  {
    sub_1CF07638C(v164, v165);
    *&v441 = 0;
    *(&v441 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v441 + 1), v195, v196, v197, v198, v199, v200, v201;
    *&v441 = 0xD000000000000019;
    *(&v441 + 1) = 0x80000001CFA550E0;
    v202 = fpfs_tempfile_pattern_t.description.getter(v60);
    v204 = v203;
    MEMORY[0x1D3868CC0](v202);
    v204, v205, v206, v207, v208, v209, v210, v211;
    v60 = v441;
    (*(v161 + 8))(v162, v130);
    return v60;
  }

  if (v165 >> 62 == 1)
  {
    (*(v161 + 8))(v162, v130);
    return v60;
  }

  v212 = *(v163 + 80);
  v212(&v441, v130, v163);
  v220 = *(&v441 + 1);
  v221 = v441;
  if (v441 == __PAIR128__(0xE200000000000000, 11822) || (sub_1CF9E8048() & 1) != 0 || v221 == 46 && v220 == 0xE100000000000000)
  {
    v220, v213, v214, v215, v216, v217, v218, v219;
LABEL_50:
    *&v441 = 0;
    *(&v441 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v441 + 1), v222, v223, v224, v225, v226, v227, v228;
    *&v441 = 0xD00000000000001ELL;
    *(&v441 + 1) = 0x80000001CFA55210;
    v229 = v406;
    v212(v439, v130, v163);
    v230 = *(&v439[0] + 1);
    v231 = sub_1CF9E6888();
    v232 = [v231 fp_obfuscatedFilename];

    v233 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v235 = v234;
    v230, v234, v236, v237, v238, v239, v240, v241;

    MEMORY[0x1D3868CC0](v233, v235);
    v235, v242, v243, v244, v245, v246, v247, v248;
    v60 = v441;
    (*(v161 + 8))(v229, v130);
    return v60;
  }

  v284 = sub_1CF9E8048();
  v220, v285, v286, v287, v288, v289, v290, v291;
  if (v284)
  {
    goto LABEL_50;
  }

  v60 = (v163 + 64);
  v292 = v392;
  v421 = *(v163 + 64);
  v421(v130, v163);
  v293 = v424;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v295 = (*(AssociatedConformanceWitness + 64))(v293, AssociatedConformanceWitness);
  v296 = *(v422 + 8);
  *&v431 = v422 + 8;
  v426 = v296;
  (v296)(v292, v293);
  if ((v295 & 1) != 0 && sub_1CF056558())
  {
    v297 = 0x80000001CFA551E0;
    v60 = 0xD000000000000024;
LABEL_75:
    v305.n128_f64[0] = sub_1CF657A18(v60, v297, 0, 2u);
    (*(v419 + 8))(v406, v425, v305);
    return v60;
  }

  v302 = v391;
  v421(v425, v423);
  v303 = v424;
  v304 = (*(AssociatedConformanceWitness + 72))(v424, AssociatedConformanceWitness);
  (v426)(v302, v303);
  if ((v304 & 1) != 0 && sub_1CF056558())
  {
    v297 = 0x80000001CFA551B0;
    v60 = 0xD000000000000025;
    goto LABEL_75;
  }

  v306 = *(**(v430 + 16) + 312);

  v308 = v306(v307);

  if ((v308 & 1) == 0)
  {
    if (v414)
    {
      v310 = v424;
      v311 = *(swift_getTupleTypeMetadata2() + 48);
      v312 = v422;
      v313 = v405;
      (*(v422 + 16))(v405, v457, v310);
      v418 = *(v423 + 72);
      (v418)(v425);
      (*(v312 + 56))(v313 + v311, 0, 1, v310);
      v314 = v420;
      swift_storeEnumTagMultiPayload();
      v315 = sub_1CF068B74(v313);
      v309 = (*(v413 + 8))(v313, v314);
      if (v315)
      {
        *&v441 = 0;
        *(&v441 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA55170);
        v316 = v386;
        v317 = v406;
        v318 = v425;
        (v418)(v425, v423);
        v319 = v424;
        sub_1CF9E7FE8();
        (v426)(v316, v319);
        v320 = *(&v441 + 1);
        v60 = v441;
        sub_1CF657A18(v441, *(&v441 + 1), 0, 2u);
        v320, v321, v322, v323, v324, v325, v326, v327;
        (*(v419 + 8))(v317, v318, v328);
        return v60;
      }
    }
  }

  if (((*(*v417 + 256))(v309) & 1) == 0 || !sub_1CF056558())
  {
    goto LABEL_92;
  }

  v329 = *(v423 + 72);
  v330 = v388;
  v329(v425);
  v331 = v427;
  sub_1CF68DDB0(v330, v432, v428, v429, v387);
  v427 = v331;
  if (v331)
  {
    (v426)(v388, v424);
    (*(v419 + 8))(v406, v425);
    return v60;
  }

  (v426)(v388, v424);
  if ((*(v404 + 48))(v387, 1, v401) == 1)
  {
    (*(v399 + 8))(v387, v400);
    goto LABEL_92;
  }

  v332 = v384;
  (*(v404 + 32))(v384, v387, v401);
  if (v332[v398[14]] != 3 || (v333 = v384[v398[13]], v333 == 2))
  {
    (*(v404 + 8))(v384, v401);
LABEL_92:
    v338 = v390;
    v339 = v425;
    v340 = v423;
    v421(v425, v423);
    v341 = v389;
    (*(v340 + 72))(v339, v340);
    v342 = v427;
    v343 = sub_1CF62E2F8(v338, v341, 0, v417, v432, v428, v429);
    if (v342)
    {
      v345 = v424;
      v60 = v426;
      (v426)(v389, v424);
      (v60)(v390, v345);
      (*(v419 + 8))(v406, v425);
    }

    else
    {
      v60 = v343;
      v346 = v344;
      v347 = v424;
      v348 = v426;
      (v426)(v389, v424);
      (v348)(v390, v347);
      if (v346)
      {
        (*(v419 + 8))(v406, v425);
      }

      else
      {
        *&v441 = sub_1CF9E6DA8();
        v349 = v424;
        v429 = swift_getTupleTypeMetadata2();
        v350 = *(v429 + 12);
        v351 = v422;
        v352 = v405;
        v353 = v457;
        v457 = *(v422 + 16);
        v457(v405, v353, v349);
        v432 = *(v351 + 56);
        v432(&v352[v350], 1, 1, v349);
        swift_storeEnumTagMultiPayload();
        v428 = sub_1CF9E6E58();
        sub_1CF9E6E18();
        v354 = *(**(v430 + 16) + 544);

        v355 = v385;
        v354(v406, v425, v423);

        if ((*(v351 + 48))(v355, 1, v349) == 1)
        {
          (*(v383 + 8))(v385, v416);
        }

        else
        {
          v356 = v382;
          v357 = v424;
          (*(v422 + 32))(v382, v385, v424);
          v358 = *(v429 + 12);
          v359 = v405;
          v457(v405, v356, v357);
          v432(&v359[v358], 1, 1, v357);
          swift_storeEnumTagMultiPayload();
          sub_1CF9E6E18();
          (v426)(v356, v357);
        }

        v360 = v441;
        v361 = *(**(v430 + 16) + 312);

        v363 = v361(v362);

        v364 = v425;
        v60 = sub_1CF06A504(v360, v414, v363 & 1, v365, v366, v425, v367, v368, v423);
        v360, v369, v370, v371, v372, v373, v374, v375;
        (*(v419 + 8))(v406, v364);
      }
    }

    return v60;
  }

  *&v441 = 0;
  *(&v441 + 1) = 0xE000000000000000;
  if (v333)
  {
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x6620746E65726170, 0xEE00207265646C6FLL);
    v376 = v386;
    v335 = v406;
    v336 = v425;
    (v329)(v425, v423);
    v377 = v424;
    sub_1CF9E7FE8();
    (v426)(v376, v377);
    MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA55100);
  }

  else
  {
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x6620746E65726170, 0xEE00207265646C6FLL);
    v334 = v386;
    v335 = v406;
    v336 = v425;
    (v329)(v425, v423);
    v337 = v424;
    sub_1CF9E7FE8();
    (v426)(v334, v337);
    MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA55130);
  }

  v60 = v441;
  (*(v404 + 8))(v384, v401);
  (*(v419 + 8))(v335, v336);
  return v60;
}

void sub_1CF617584(uint64_t a1, unsigned __int8 *a2, void *a3, void *a4)
{
  v123 = a1;
  v101 = *a3;
  v103 = sub_1CF9E5CF8();
  v107 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v101[11];
  v102 = v101[13];
  v104 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v110 = sub_1CF9E75D8();
  v114 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v117 = &v100 - v10;
  v113 = AssociatedTypeWitness;
  v112 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v100 - v12;
  v13 = sub_1CF9E53C8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v100 - v18;
  v105 = *a2;
  v20 = a4[4];
  v119 = a4[3];
  v120 = v20;
  v116 = a4;
  v118 = __swift_project_boxed_opaque_existential_1(a4, v119);
  v115 = a3;
  v122 = a3[3];
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FD0, &unk_1CF9FE690);
  v21 = swift_allocObject();
  v108 = xmmword_1CF9FA440;
  *(v21 + 16) = xmmword_1CF9FA440;
  LODWORD(v124) = 13;
  v22 = MEMORY[0x1E69E7CC0];
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF00BC98(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
  sub_1CF9E57D8();
  v23 = sub_1CF9E53A8();
  v24 = *(v14 + 8);
  v24(v19, v13);
  *(v21 + 32) = v23;
  LODWORD(v124) = 1;
  sub_1CF4C5FCC(v22);
  sub_1CF9E57D8();
  v25 = sub_1CF9E53A8();
  v24(v16, v13);
  v27 = v122;
  v26 = v123;
  *(v21 + 40) = v25;
  v28 = v121;
  (*(*v27 + 440))(v26, v21, v118, v119, v120);
  v21, v29, v30, v31, v32, v33, v34, v35;
  if (!v28)
  {
    v100 = v13;
    v118 = v24;
    v119 = v19;
    v36 = v114;
    v120 = v14 + 8;
    v121 = v16;
    v37 = v116;
    v38 = v116[3];
    v39 = v116[4];
    v40 = __swift_project_boxed_opaque_existential_1(v116, v38);
    (*(*v115[2] + 160))(v123, v40, v38, *(v39 + 8));
    v42 = v112;
    v41 = v113;
    if ((*(v112 + 48))(v117, 1, v113) == 1)
    {
      (*(v36 + 8))(v117, v110);
      return;
    }

    (*(v42 + 32))(v111, v117, v41);
    v43 = v37[4];
    v114 = v37[3];
    v117 = v43;
    v110 = __swift_project_boxed_opaque_existential_1(v37, v114);
    v44 = swift_allocObject();
    *(v44 + 16) = v108;
    LODWORD(v124) = 13;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    v46 = v119;
    v47 = v100;
    v109 = 0;
    v48 = v42;
    sub_1CF9E57D8();
    v49 = sub_1CF9E53A8();
    v50 = v118;
    v118(v46, v47);
    *(v44 + 32) = v49;
    LODWORD(v124) = 1;
    sub_1CF4C5FCC(v45);
    v51 = v121;
    sub_1CF9E57D8();
    v52 = sub_1CF9E53A8();
    v53 = v47;
    v54 = v111;
    v50(v51, v53);
    v55 = v122;
    *(v44 + 40) = v52;
    v56 = v109;
    (*(*v55 + 448))(v54, v44, v110, v114, v117);
    if (v56)
    {
      (*(v48 + 8))(v54, v113);
      v44, v64, v65, v66, v67, v68, v69, v70;
      return;
    }

    v71 = v116;
    v44, v57, v58, v59, v60, v61, v62, v63;
    if (v105 != 1)
    {
      (*(v112 + 8))(v54, v113);
      return;
    }

    v72 = v71[3];
    v122 = v71[4];
    v73 = __swift_project_boxed_opaque_existential_1(v71, v72);
    v74 = v101[12];
    v120 = v101[10];
    v124 = v120;
    v125 = v104;
    v121 = v74;
    v75 = v102;
    v126 = v74;
    v127 = v102;
    type metadata accessor for Ingestion.ReactToOwnershipChange(0, &v124);
    v76 = v106;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v78 = v77;
    v79 = *(v107 + 8);
    v80 = v103;
    v107 += 8;
    v79(v76, v103);
    v81 = v78 * 1000000000.0;
    if (COERCE__INT64(fabs(v78 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v81 > -9.22337204e18)
    {
      if (v81 < 9.22337204e18)
      {
        v82 = sub_1CF656F74(v123, 0x2000000000000000, v81, 2048, sub_1CF052464);
        v83 = v106;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v85 = v84;
        v79(v83, v80);
        v86 = v85 * 1000000000.0;
        if (COERCE__INT64(fabs(v85 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v86 > -9.22337204e18)
          {
            if (v86 < 9.22337204e18)
            {
              v87 = v115;
              sub_1CF5215C0(v82, v86, v73, v72, v122);

              v89 = v71[3];
              v88 = v71[4];
              v90 = __swift_project_boxed_opaque_existential_1(v71, v89);
              v123 = (*(*v87 + 176))();
              v124 = v104;
              v125 = v120;
              v126 = v75;
              v127 = v121;
              type metadata accessor for Ingestion.ReactToOwnershipChange(0, &v124);
              v91 = v106;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v93 = v92;
              v79(v91, v80);
              v94 = v93 * 1000000000.0;
              if (COERCE__INT64(fabs(v93 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v94 > -9.22337204e18)
                {
                  v122 = v89;
                  if (v94 < 9.22337204e18)
                  {
                    v95 = sub_1CF656F74(v111, 0x2000000000000000, v94, 2048, sub_1CF052464);
                    v96 = v106;
                    sub_1CF9E5CE8();
                    sub_1CF9E5C98();
                    v98 = v97;
                    v79(v96, v80);
                    v99 = v98 * 1000000000.0;
                    if (COERCE__INT64(fabs(v98 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (v99 > -9.22337204e18)
                      {
                        if (v99 < 9.22337204e18)
                        {
                          sub_1CF5215C0(v95, v99, v90, v122, v88);
                          (*(v112 + 8))(v111, v113);

                          return;
                        }

LABEL_34:
                        __break(1u);
                        return;
                      }

LABEL_33:
                      __break(1u);
                      goto LABEL_34;
                    }

LABEL_32:
                    __break(1u);
                    goto LABEL_33;
                  }

LABEL_31:
                  __break(1u);
                  goto LABEL_32;
                }

LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_25;
  }
}

uint64_t sub_1CF6180A8(NSObject *a1, int a2, void *a3, void (*a4)(char *, uint64_t), _TtC18FileProviderDaemon8FSTester *a5, _TtC18FileProviderDaemon8FSTester *a6, NSObject *a7)
{
  v436 = a7;
  v437 = a4;
  v438 = a5;
  v439 = a6;
  v413 = a2;
  v447 = a1;
  v427 = *a3;
  v7 = v427[10];
  v430 = a3;
  v8 = v427[12];
  type metadata accessor for SnapshotItem(255, v7, v8, a4);
  v414 = sub_1CF9E75D8();
  v417 = *(v414 - 8);
  MEMORY[0x1EEE9AC00](v414);
  v425 = (v395 - v9);
  v409 = type metadata accessor for JobLockRule(0, v7, v8, v10);
  v406 = *(v409 - 8);
  MEMORY[0x1EEE9AC00](v409);
  v408 = v395 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v405 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v410 = v395 - v13;
  v14 = sub_1CF9E5CF8();
  v432 = *(v14 - 8);
  v433 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v431 = v395 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6118();
  v434 = *(v16 - 8);
  v435 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v423 = v395 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v421 = v395 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v424 = (v395 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v426 = v395 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v411 = v395 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v422 = v395 - v27;
  v29 = type metadata accessor for FileTreeWriter.FileTreeChange(0, v7, v8, v28);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v420 = v395 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v419 = v395 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v415 = v395 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v407 = v395 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v428 = v395 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v418 = v395 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v395 - v43;
  v444 = sub_1CF9E75D8();
  v446 = *(v444 - 8);
  MEMORY[0x1EEE9AC00](v444);
  v412 = v395 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v429 = (v395 - v47);
  MEMORY[0x1EEE9AC00](v48);
  v416 = v395 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v404 = v395 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v442 = v395 - v53;
  v440 = v8;
  v441 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v443 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v55 = v395 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = v395 - v57;
  v60 = MEMORY[0x1EEE9AC00](v59);
  v62 = v395 - v61;
  v63 = v30;
  v66 = *(v30 + 16);
  v65 = v30 + 16;
  v64 = v66;
  (v66)(v44, v447, v29, v60);
  if (swift_getEnumCaseMultiPayload())
  {
    return (*(v63 + 8))(v44, v29);
  }

  v399 = v55;
  v398 = v58;
  v396 = v31;
  v401 = v64;
  v403 = v65;
  v402 = v29;
  v400 = v63;
  type metadata accessor for JobLockAggregator(255, v441, v440, v67);
  sub_1CF9E75D8();
  v69 = v444;
  v70 = AssociatedTypeWitness;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v72 = v442;
  v73 = v443;
  v74 = v446;
  v75 = v70;
  v76 = *(TupleTypeMetadata3 + 48);
  v77 = *&v44[*(TupleTypeMetadata3 + 64)];
  v78 = v75;
  (*(v443 + 32))(v62, v44);
  v79 = &v44[v76];
  v80 = v77;
  (*(v74 + 32))(v72, v79, v69);
  v82 = v436;
  v81 = v437;
  v83 = v448;
  v84 = sub_1CF614EB4(v62, v72, v80, v437, v438, v439, v436[1].isa);
  if (v83)
  {

    (*(v74 + 8))(v72, v69);
    return (*(v73 + 8))(v62, v78);
  }

  v397 = v62;
  v448 = 0;
  v395[1] = v80;
  v92 = v86;
  if (v87 <= 1u)
  {
    v116 = v84;
    v117 = v434;
    v118 = v402;
    if (!v87)
    {
      v119 = v85;
      v120 = fpfs_current_or_default_log();
      v121 = v423;
      sub_1CF9E6128();
      v122 = v420;
      v123 = v401;
      v401(v420, v447, v118);

      v124 = sub_1CF9E6108();
      v125 = v118;
      v126 = sub_1CF9E7298();
      v438 = v119;
      sub_1CF5DFDEC(v116, v119, v92, 0, v127, v128, v129, v130);
      LODWORD(v441) = v126;
      v447 = v124;
      if (os_log_type_enabled(v124, v126))
      {
        v131 = v116;
        v132 = swift_slowAlloc();
        v440 = swift_slowAlloc();
        v449 = v440;
        *v132 = 136315394;
        v133 = v428;
        v123(v428, v122, v125);
        v426 = v92;
        v134 = *(v400 + 8);
        v134(v122, v125);
        v135 = sub_1CF06AB58(v125);
        v136 = v434;
        v138 = v137;
        v134(v133, v125);
        v139 = sub_1CEFD0DF0(v135, v138, &v449);
        v138, v140, v141, v142, v143, v144, v145, v146;
        *(v132 + 4) = v139;
        *(v132 + 12) = 2080;
        v147 = v131;
        v148 = v131;
        v149 = v438;
        v150 = sub_1CEFD0DF0(v148, v438, &v449);
        sub_1CF5DFDEC(v147, v149, v426, 0, v151, v152, v153, v154);
        *(v132 + 14) = v150;
        v155 = v447;
        _os_log_impl(&dword_1CEFC7000, v447, v441, "⛔️  discarded %s: %s", v132, 0x16u);
        v156 = v440;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v156, -1, -1);
        MEMORY[0x1D386CDC0](v132, -1, -1);

        (*(v136 + 8))(v423, v435);
      }

      else
      {
        (*(v400 + 8))(v122, v125);

        sub_1CF5DFDEC(v116, v438, v92, 0, v282, v283, v284, v285);
        (*(v434 + 8))(v121, v435);
      }

LABEL_56:
      (*(v446 + 8))(v442, v444);
      return (*(v443 + 8))(v397, AssociatedTypeWitness);
    }

    v217 = v447;
    v218 = v426;
    if (v85)
    {
      if ((v413 & 1) == 0)
      {
        v219 = v85;
        v220 = (*(*v81 + 152))();
        v85 = v219;
        v218 = v426;
        if ((v220 & 4) == 0)
        {
          v221 = v85;
          v222 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v223 = v407;
          v224 = v217;
          v225 = v401;
          v401(v407, v224, v118);

          v226 = sub_1CF9E6108();
          v227 = sub_1CF9E7288();
          v438 = v221;
          sub_1CF5DFDEC(v116, v221, v92, 1, v228, v229, v230, v231);
          LODWORD(v430) = v227;
          if (os_log_type_enabled(v226, v227))
          {
            v232 = swift_slowAlloc();
            v429 = swift_slowAlloc();
            v449 = v429;
            *v232 = 136446466;
            v425 = v226;
            v233 = v428;
            v225(v428, v223, v118);
            v426 = v92;
            v234 = *(v400 + 8);
            v234(v223, v118);
            v235 = sub_1CF06AB58(v118);
            v237 = v236;
            v234(v233, v118);
            v238 = sub_1CEFD0DF0(v235, v237, &v449);
            v237, v239, v240, v241, v242, v243, v244, v245;
            *(v232 + 4) = v238;
            *(v232 + 12) = 2080;
            v246 = v232;
            v247 = v438;
            v248 = sub_1CEFD0DF0(v116, v438, &v449);
            sub_1CF5DFDEC(v116, v247, v426, 1, v249, v250, v251, v252);
            *(v246 + 14) = v248;
            v253 = v425;
            _os_log_impl(&dword_1CEFC7000, v425, v430, "defer ingestion of %{public}s: %s", v246, 0x16u);
            v254 = v429;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v254, -1, -1);
            MEMORY[0x1D386CDC0](v246, -1, -1);
          }

          else
          {
            (*(v400 + 8))(v223, v118);
            sub_1CF5DFDEC(v116, v438, v92, 1, v353, v354, v355, v356);
          }

          (*(v117 + 8))(v411, v435);
          v357 = v443;
          v358 = v397;
          v360 = v432;
          v359 = v433;
          v361 = v431;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v363 = v362;
          result = (*(v360 + 8))(v361, v359);
          v364 = v363 * 1000000000.0;
          if (COERCE__INT64(fabs(v363 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_67;
          }

          v365 = v428;
          v366 = v410;
          if (v364 <= -9.22337204e18)
          {
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          if (v364 >= 9.22337204e18)
          {
LABEL_69:
            __break(1u);
            return result;
          }

          v438 = v364;
          v367 = AssociatedTypeWitness;
          sub_1CF9E75D8();
          v368 = *(swift_getTupleTypeMetadata2() + 48);
          v369 = v357;
          (*(v357 + 16))(v366, v358, v367);
          v370 = v404;
          (*(v446 + 16))();
          v371 = v441;
          v372 = *(v441 - 1);
          v373 = 1;
          if ((*(v372 + 48))(v370, 1, v441) == 1)
          {
            v372 = v446;
            v374 = v444;
          }

          else
          {
            (*(v440 + 72))(v371);
            v373 = 0;
            v374 = v371;
          }

          v375 = v409;
          v376 = v370;
          v377 = v408;
          (*(v372 + 8))(v376, v374);
          (*(v369 + 56))(&v366[v368], v373, 1, AssociatedTypeWitness);
          v378 = swift_storeEnumTagMultiPayload();
          v379 = v437;
          v380 = v375;
          (*(*v437 + 216))(v378);
          sub_1CF529738();

          LODWORD(v435) = *(*(v379 + 4) + 32);
          v381 = v406;
          (*(v406 + 16))(v377, v366, v380);
          v382 = v381;
          v383 = v402;
          v401(v365, v447, v402);
          v384 = (*(v381 + 80) + 72) & ~*(v381 + 80);
          v385 = v400;
          v386 = (v405 + *(v400 + 80) + v384) & ~*(v400 + 80);
          v387 = (v396 + v386 + 7) & 0xFFFFFFFFFFFFFFF8;
          v388 = swift_allocObject();
          *(v388 + 2) = v441;
          v389 = v427;
          v391 = v439;
          v390 = v440;
          *(v388 + 3) = v427[11];
          *(v388 + 4) = v391;
          *(v388 + 5) = v390;
          v392 = v436;
          *(v388 + 6) = v389[13];
          *(v388 + 7) = v392;
          *(v388 + 8) = v379;
          (*(v382 + 32))(&v388[v384], v408, v380);
          (*(v385 + 32))(&v388[v386], v428, v383);
          *&v388[v387] = v438;
          v393 = *(*v379 + 448);

          v393("ingest(itemChange:ignoreAfterFlush:result:db:with:)", 51, 2, v435, 1, nullsub_1, 0, sub_1CF657A58, v388);

          (*(v382 + 8))(v410, v409);
          goto LABEL_56;
        }
      }

      sub_1CF5DFDEC(v116, v85, v92, 1, v88, v89, v90, v91);
    }

    v286 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v287 = v415;
    v288 = v401;
    v401(v415, v217, v118);
    v289 = v218;
    v290 = sub_1CF9E6108();
    v291 = sub_1CF9E7288();
    if (os_log_type_enabled(v290, v291))
    {
      v292 = swift_slowAlloc();
      v447 = swift_slowAlloc();
      v449 = v447;
      *v292 = 136446210;
      v293 = v428;
      v288(v428, v287, v118);
      v294 = *(v400 + 8);
      v294(v287, v118);
      v295 = sub_1CF06AB58(v118);
      v296 = v118;
      v297 = v434;
      v299 = v298;
      v294(v293, v296);
      v82 = v436;
      v300 = sub_1CEFD0DF0(v295, v299, &v449);
      v299, v301, v302, v303, v304, v305, v306, v307;
      *(v292 + 4) = v300;
      _os_log_impl(&dword_1CEFC7000, v290, v291, "%{public}s", v292, 0xCu);
      v308 = v447;
      __swift_destroy_boxed_opaque_existential_1(v447);
      MEMORY[0x1D386CDC0](v308, -1, -1);
      v309 = v292;
      v81 = v437;
      MEMORY[0x1D386CDC0](v309, -1, -1);

      (*(v297 + 8))(v426, v435);
    }

    else
    {
      (*(v400 + 8))(v287, v118);

      (*(v434 + 8))(v289, v435);
    }

    v311 = v442;
    v310 = v443;
    v312 = v397;
    v313 = v440;
    v314 = v441;
    v315 = AssociatedTypeWitness;
    v316 = v416;
    (*(v446 + 16))(v416, v442, v444);
    sub_1CF06B4E0(v316, v314, v313, v425);
    v317 = v431;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v319 = v318;
    result = (*(v432 + 8))(v317, v433);
    v320 = v319 * 1000000000.0;
    v321 = v417;
    if (COERCE__INT64(fabs(v319 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v322 = v414;
      if (v320 > -9.22337204e18)
      {
        if (v320 < 9.22337204e18)
        {
          v394 = v82;
          v323 = v425;
          sub_1CF611904(v425, v312, 0, 0, 0, v81, 0x2000000000000000, v320, 2048, v430, v438, v439, v394);

          (*(v321 + 8))(v323, v322);
          (*(v446 + 8))(v311, v444);
          return (*(v310 + 8))(v312, v315);
        }

        goto LABEL_66;
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v93 = v446;
  v94 = v397;
  v95 = v435;
  v96 = v402;
  if (v87 != 2)
  {
    if (v87 == 3)
    {
      v447 = v84;
      v438 = v85;
      v426 = v86;
      v97 = fpfs_current_or_default_log();
      v98 = v424;
      sub_1CF9E6128();
      v99 = v444;
      v439 = *(v93 + 16);
      (v439)(v429, v442, v444);
      v100 = v443;
      v101 = v399;
      v102 = AssociatedTypeWitness;
      (*(v443 + 16))(v399, v94, AssociatedTypeWitness);
      v103 = v93;
      v104 = sub_1CF9E6108();
      v105 = sub_1CF9E7288();
      if (os_log_type_enabled(v104, v105))
      {
        LODWORD(v437) = v105;
        v106 = swift_slowAlloc();
        v436 = swift_slowAlloc();
        v449 = v436;
        *v106 = 136315138;
        v107 = v412;
        (v439)(v412, v429, v99);
        v108 = v441;
        v109 = *(v441 - 1);
        if ((*(v109 + 48))(v107, 1, v441) == 1)
        {
          v110 = v446;
          (*(v446 + 8))(v107, v99);
          v111 = AssociatedTypeWitness;
          swift_getAssociatedConformanceWitness();
          v112 = v399;
          v113 = sub_1CF9E7F98();
          v115 = v114;
        }

        else
        {
          v113 = sub_1CF9E7F98();
          v115 = v324;
          (*(v109 + 8))(v107, v108);
          v111 = AssociatedTypeWitness;
          v110 = v446;
          v112 = v399;
        }

        v439 = *(v443 + 8);
        (v439)(v112, v111);
        v281 = *(v110 + 8);
        v281(v429, v99);
        v325 = sub_1CEFD0DF0(v113, v115, &v449);
        v115, v326, v327, v328, v329, v330, v331, v332;
        *(v106 + 4) = v325;
        _os_log_impl(&dword_1CEFC7000, v104, v437, "delay tracking of temporary item %s", v106, 0xCu);
        v333 = v436;
        __swift_destroy_boxed_opaque_existential_1(v436);
        MEMORY[0x1D386CDC0](v333, -1, -1);
        MEMORY[0x1D386CDC0](v106, -1, -1);

        (*(v434 + 8))(v424, v435);
      }

      else
      {

        v439 = *(v100 + 8);
        (v439)(v101, v102);
        v281 = *(v103 + 8);
        v281(v429, v99);
        (*(v434 + 8))(v98, v435);
      }

      v334 = v427[11];
      v335 = v427[13];
      v449 = v441;
      v450 = v334;
      v451 = v440;
      v452 = v335;
      type metadata accessor for Ingestion.TrackTemporaryItem(0, &v449);
      v336 = v431;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v338 = v337;
      result = (*(v432 + 8))(v336, v433);
      v339 = v338 * 1000000000.0;
      if (COERCE__INT64(fabs(v338 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v339 > -9.22337204e18)
        {
          v436 = v334;
          v437 = v281;
          if (v339 < 9.22337204e18)
          {
            v340 = v339;
            swift_allocObject();
            v341 = v397;
            v342 = sub_1CF052464(v397, 0x2000000000000000, v340, 2048);
            v343 = *(v342 + 96);
            v344 = *(v342 + 104);
            v345 = v438;
            *(v342 + 96) = 256;
            *(v342 + 104) = v345;
            v346 = *(v342 + 112);
            *(v342 + 112) = 0;
            v347 = v447;
            v348 = v426;
            sub_1CF657A18(v447, v345, v426, 3u);

            sub_1CF03D7A8(v343, v344, v346);

            v449 = v441;
            v450 = v436;
            v451 = v440;
            v452 = v335;
            type metadata accessor for JobResult(0, &v449);
            sub_1CF803A0C(v430, v342);

            sub_1CF5DFDEC(v347, v345, v348, 3, v349, v350, v351, v352);
            v437(v442, v444);
            return (v439)(v341, AssociatedTypeWitness);
          }

          goto LABEL_63;
        }

        goto LABEL_61;
      }

      goto LABEL_59;
    }

    v193 = fpfs_current_or_default_log();
    v194 = v421;
    sub_1CF9E6128();
    v195 = v419;
    v196 = v401;
    v401(v419, v447, v96);
    v197 = sub_1CF9E6108();
    v198 = sub_1CF9E7298();
    if (!os_log_type_enabled(v197, v198))
    {
      (*(v400 + 8))(v195, v96);

      (*(v434 + 8))(v194, v435);
      (*(v93 + 8))(v442, v444);
      return (*(v443 + 8))(v94, AssociatedTypeWitness);
    }

    v199 = swift_slowAlloc();
    v441 = v199;
    v447 = swift_slowAlloc();
    v449 = v447;
    *v199 = 136315138;
    v200 = v428;
    v196(v428, v195, v96);
    v201 = *(v400 + 8);
    v201(v195, v96);
    v202 = v93;
    v203 = sub_1CF06AB58(v96);
    v205 = v204;
    v201(v200, v96);
    v206 = sub_1CEFD0DF0(v203, v205, &v449);
    v205, v207, v208, v209, v210, v211, v212, v213;
    v214 = v441;
    *(v441 + 1) = v206;
    v215 = v214;
    _os_log_impl(&dword_1CEFC7000, v197, v198, "⛔️  already known %s", v214, 0xCu);
    v216 = v447;
    __swift_destroy_boxed_opaque_existential_1(v447);
    MEMORY[0x1D386CDC0](v216, -1, -1);
    MEMORY[0x1D386CDC0](v215, -1, -1);

    (*(v434 + 8))(v421, v435);
    (*(v202 + 8))(v442, v444);
    return (*(v443 + 8))(v397, AssociatedTypeWitness);
  }

  v157 = v85;
  v158 = v84;
  v159 = fpfs_current_or_default_log();
  v160 = v422;
  sub_1CF9E6128();
  v161 = v418;
  v401(v418, v447, v96);

  v162 = sub_1CF9E6108();
  v163 = sub_1CF9E7288();
  v447 = v158;
  v164 = v158;
  v165 = v157;
  sub_1CF5DFDEC(v164, v157, v92, 2, v166, v167, v168, v169);
  LODWORD(v425) = v163;
  v429 = v162;
  if (os_log_type_enabled(v162, v163))
  {
    v170 = swift_slowAlloc();
    v424 = swift_slowAlloc();
    v449 = v424;
    *v170 = 136446466;
    v171 = v428;
    v401(v428, v161, v96);
    v426 = v92;
    v172 = *(v400 + 8);
    v172(v161, v96);
    v173 = sub_1CF06AB58(v96);
    v175 = v174;
    v172(v171, v96);
    v176 = sub_1CEFD0DF0(v173, v175, &v449);
    v175, v177, v178, v179, v180, v181, v182, v183;
    *(v170 + 4) = v176;
    *(v170 + 12) = 2082;
    v184 = v447;
    v185 = sub_1CEFD0DF0(v447, v165, &v449);
    v186 = v426;
    sub_1CF5DFDEC(v184, v165, v426, 2, v187, v188, v189, v190);
    *(v170 + 14) = v185;
    v191 = v429;
    _os_log_impl(&dword_1CEFC7000, v429, v425, "%{public}s force fetch: %{public}s", v170, 0x16u);
    v192 = v424;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v192, -1, -1);
    MEMORY[0x1D386CDC0](v170, -1, -1);

    (*(v434 + 8))(v422, v435);
  }

  else
  {
    (*(v400 + 8))(v161, v96);
    v255 = v157;
    v186 = v92;
    sub_1CF5DFDEC(v447, v255, v92, 2, v256, v257, v258, v259);

    (*(v434 + 8))(v160, v95);
  }

  v260 = v443;
  v262 = v432;
  v261 = v433;
  v263 = v431;
  v264 = v398;
  (*(v443 + 16))(v398, v397, AssociatedTypeWitness);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v266 = v265;
  result = (*(v262 + 8))(v263, v261);
  v267 = v266 * 1000000000.0;
  if (COERCE__INT64(fabs(v266 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v267 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v267 >= 9.22337204e18)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v268 = v267;
  if ((v186 & 0xFFFFFFFFFFFFF7FFLL) != 0)
  {
    v269 = v186 | 0x800;
  }

  else
  {
    v269 = 2048;
  }

  v270 = v427[11];
  v271 = v427[13];
  v273 = v440;
  v272 = v441;
  v449 = v441;
  v450 = v270;
  v451 = v440;
  v452 = v271;
  type metadata accessor for Ingestion.FetchItemMetadata(0, &v449);
  v274 = sub_1CF657094(v264, 0x2000000000000000, v268, v269, type metadata accessor for Ingestion.FetchItemMetadata);
  v275 = v264;
  v276 = AssociatedTypeWitness;
  v447 = *(v260 + 8);
  (v447)(v275, AssociatedTypeWitness);
  v278 = *(v274 + 96);
  v277 = *(v274 + 104);
  *(v274 + 96) = xmmword_1CFA0DC30;
  v279 = *(v274 + 112);
  *(v274 + 112) = 0;

  sub_1CF03D7A8(v278, v277, v279);

  v449 = v272;
  v450 = v270;
  v451 = v273;
  v452 = v271;
  type metadata accessor for JobResult(0, &v449);
  sub_1CF803A0C(v430, v274);
  v280 = v397;
  (*(**(v437 + 3) + 408))(v397, 3, v438, v439, v436);

  (*(v446 + 8))(v442, v444);
  return (v447)(v280, v276);
}