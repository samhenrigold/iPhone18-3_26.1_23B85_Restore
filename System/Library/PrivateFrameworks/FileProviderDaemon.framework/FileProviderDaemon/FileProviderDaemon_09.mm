uint64_t sub_1CF09D7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1CF9E5CF8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1CF09D850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1CF9E5CF8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1CF09D904()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09D9F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v1 + 52);
  v5 = sub_1CF9E6448();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  *(v3 + *(v2 + 64)), v6, v7, v8, v9, v10, v11, v12;

  return swift_deallocObject();
}

uint64_t sub_1CF09DB08()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09DB40()
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

uint64_t sub_1CF09DC4C()
{
  v18 = *(v0 + 40);
  v19[0] = *(v0 + 16);
  v19[1] = v18;
  v1 = (type metadata accessor for ConcreteDatabase.MaterializationRequest(0, v19) - 8);
  v2 = (*(*v1 + 80) + 88) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);

  v7 = v0 + v2;
  v8 = v1[15];
  v9 = sub_1CF9E6448();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  *(v7 + v1[16]), v10, v11, v12, v13, v14, v15, v16;

  (*(v5 + 8))(v0 + v6, AssociatedTypeWitness);
  return swift_deallocObject();
}

uint64_t sub_1CF09DE34()
{
  v1 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = v1;
  *&v7 = type metadata accessor for UserRequest(255, &v7);
  *(&v7 + 1) = &type metadata for MaterializationRequestOptions;
  *&v8 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  *(&v8 + 1) = sub_1CF9E6448();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  v2 = (swift_getTupleTypeMetadata() - 8);
  v3 = (*(*v2 + 80) + 80) & ~*(*v2 + 80);

  sub_1CF5DE5B8(*(v0 + v3));

  v4 = v2[22];
  v5 = sub_1CF9E6448();
  (*(*(v5 - 8) + 8))(v0 + v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1CF09DFB4()
{
  v24 = *(v0 + 40);
  v25[0] = *(v0 + 16);
  v25[1] = v24;
  v1 = (type metadata accessor for ConcreteDatabase.MaterializationRequest(0, v25) - 8);
  v2 = (*(*v1 + 80) + 96) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = (*(v5 + 80) + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v5 + 80);
  sub_1CF481340(*(v0 + 64), *(v0 + 72), v7, v8, v9, v10, v11, v12);

  v13 = v0 + v2;
  v14 = v1[15];
  v15 = sub_1CF9E6448();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);
  *(v13 + v1[16]), v16, v17, v18, v19, v20, v21, v22;

  (*(v5 + 8))(v0 + v6, AssociatedTypeWitness);
  return swift_deallocObject();
}

uint64_t sub_1CF09E1BC(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF09E1F4()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09E22C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF09E31C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF09E434()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedConformanceWitness();
  v21 = AssociatedTypeWitness;
  v22 = v2;
  v23 = AssociatedConformanceWitness;
  v24 = v4;
  v5 = *(type metadata accessor for ReconciliationID(0, &v21) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v21 = AssociatedTypeWitness;
  v22 = v2;
  v8 = (v6 + 80) & ~v6;
  v23 = AssociatedConformanceWitness;
  v24 = v4;
  v9 = *(type metadata accessor for ThrottlingKey(0, &v21) - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  swift_unknownObjectRelease();

  *(v0 + 72), v11, v12, v13, v14, v15, v16, v17;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v2;
  }

  else
  {
    v18 = AssociatedTypeWitness;
  }

  (*(*(v18 - 8) + 8))(v0 + v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v2;
  }

  else
  {
    v19 = AssociatedTypeWitness;
  }

  (*(*(v19 - 8) + 8))(v0 + v10);
  return swift_deallocObject();
}

uint64_t sub_1CF09E680()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1CF9E6068();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1CF09E780()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  v3 = sub_1CF9E6068();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1CF09E8E0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09E920(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 64), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF09E958(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 72), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF09E9B0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  *(v0 + 72), v4, v5, v6, v7, v8, v9, v10;
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF09EA9C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09EAE4()
{

  sub_1CF5DE5B8(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1CF09EB2C()
{

  return swift_deallocObject();
}

__n128 sub_1CF09EB7C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1CF09EB90()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09EBCC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09EC04()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  *(v0 + 80), v5, v6, v7, v8, v9, v10, v11;
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);
  sub_1CF5DE5B8(*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF09ED3C()
{

  *(v0 + 72), v1, v2, v3, v4, v5, v6, v7;
  sub_1CF5DE5B8(*(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_1CF09EDC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF09EDFC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  *(v0 + 88), v5, v6, v7, v8, v9, v10, v11;
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);
  sub_1CF5DE5B8(*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF09EF40()
{

  *(v0 + 72), v1, v2, v3, v4, v5, v6, v7;
  sub_1CF5DE5B8(*(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_1CF09F0E4()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09F13C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF09F23C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09F274()
{
  v1 = *(v0 + 24);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v3 = *(sub_1CF9E8238() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v11 = *(v3 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = (v0 + v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v9 = *(v1 - 8);
    if (!(*(v9 + 48))(v0 + v4, 1, v1))
    {
      (*(v9 + 8))(v0 + v4, v1);
    }
  }

  (*(v6 + 8))(v0 + ((v4 + v11 + v7) & ~v7), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF09F534()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v187 = AssociatedTypeWitness;
  v188 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v3 = v188 + *(v2 + 64);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = (type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v5) - 8);
  v185 = (v3 + *(*v6 + 80)) & ~*(*v6 + 80);
  v7 = (((*(*v6 + 64) + v185 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v192 = swift_getAssociatedTypeWitness();
  v193 = swift_getAssociatedTypeWitness();
  v196 = v192;
  v197 = v193;
  v198 = swift_getAssociatedConformanceWitness();
  v199 = swift_getAssociatedConformanceWitness();
  v190 = v7;
  v191 = type metadata accessor for FileItemVersion(0, &v196);
  v194 = *(*(v191 - 1) + 80);
  v189 = (v7 + v194 + 64) & ~v194;
  v186 = *(*(v191 - 1) + 64) + v189;
  v8 = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v195 = v8;
  v196 = v8;
  v197 = v9;
  v198 = v10;
  v199 = v11;
  v12 = type metadata accessor for FileItemVersion(0, &v196);
  v13 = *(*(v12 - 1) + 80);

  v14 = *(v2 + 8);
  v14(v0 + v188, v187);
  v14(v0 + v185, v187);
  *(v0 + v185 + v6[11] + 8), v15, v16, v17, v18, v19, v20, v21;
  v22 = v0 + v185 + v6[12];
  v23 = type metadata accessor for ItemMetadata(0);
  v24 = v23[7];
  v25 = sub_1CF9E5CF8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 8);
  v27(v22 + v24, v25);
  v27(v22 + v23[8], v25);
  *(v22 + v23[14] + 8), v28, v29, v30, v31, v32, v33, v34;
  v35 = v23[30];
  if (!(*(v26 + 48))(v22 + v35, 1, v25))
  {
    v27(v22 + v35, v25);
  }

  *(v22 + v23[31]), v36, v37, v38, v39, v40, v41, v42;
  *(v22 + v23[33]), v43, v44, v45, v46, v47, v48, v49;
  v56 = (v22 + v23[34]);
  v57 = v56[1];
  if (v57 >> 60 != 15)
  {
    sub_1CEFE4714(*v56, v57);
  }

  v58 = (v186 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v22 + v23[38] + 8), v57, v50, v51, v52, v53, v54, v55;

  v59 = *(v0 + v190 + 24);
  if (v59 >> 60 != 15 && (v59 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + v190 + 16), v59);
  }

  (*(*(v192 - 8) + 8))(v0 + v189);
  *(v0 + v189 + v191[13]), v61, v62, v63, v64, v65, v66, v67;
  (*(*(v193 - 8) + 8))(v0 + v189 + v191[14]);
  *(v0 + v189 + v191[15]), v68, v69, v70, v71, v72, v73, v74;
  *(v0 + v189 + v191[16] + 8), v75, v76, v77, v78, v79, v80, v81;
  v82 = v0 + v58;
  v83 = *(v0 + v58 + 16);
  if (v83 != 1)
  {

    *(v82 + 48), v84, v85, v86, v87, v88, v89, v90;
    *(v82 + 64), v91, v92, v93, v94, v95, v96, v97;
    *(v82 + 88), v98, v99, v100, v101, v102, v103, v104;

    *(v82 + 120), v105, v106, v107, v108, v109, v110, v111;
    *(v82 + 136), v112, v113, v114, v115, v116, v117, v118;
    *(v82 + 152), v119, v120, v121, v122, v123, v124, v125;
    *(v82 + 168), v126, v127, v128, v129, v130, v131, v132;
    *(v82 + 184), v133, v134, v135, v136, v137, v138, v139;
    v147 = *(v82 + 192);
    if (v147)
    {
      v147, v140, v141, v142, v143, v144, v145, v146;
      *(v82 + 200), v148, v149, v150, v151, v152, v153, v154;
    }

    *(v82 + 224), v140, v141, v142, v143, v144, v145, v146;
    *(v82 + 240), v155, v156, v157, v158, v159, v160, v161;
  }

  v162 = v0 + ((((((v58 + 255) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13);
  (*(*(v195 - 8) + 8))(v162);
  *(v162 + v12[13]), v163, v164, v165, v166, v167, v168, v169;
  (*(*(v9 - 8) + 8))(v162 + v12[14]);
  *(v162 + v12[15]), v170, v171, v172, v173, v174, v175, v176;
  *(v162 + v12[16] + 8), v177, v178, v179, v180, v181, v182, v183;
  return swift_deallocObject();
}

uint64_t sub_1CF09FC38()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF09FD2C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF09FD6C(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  sub_1CF481340(*(v8 + 16), *(v8 + 24), a3, a4, a5, a6, a7, a8);

  return swift_deallocObject();
}

uint64_t sub_1CF09FDB0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v77 = (*(v2 + 80) + 144) & ~*(v2 + 80);
  v3 = v77 + *(v2 + 64);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v79 = *(*(v6 - 8) + 80);
  v82 = (v3 + v79) & ~v79;
  v78 = *(*(v6 - 8) + 64);
  v80 = swift_getAssociatedTypeWitness();
  v81 = swift_getAssociatedTypeWitness();
  v83[0] = v80;
  v83[1] = v81;
  v83[2] = swift_getAssociatedConformanceWitness();
  v83[3] = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for FileItemVersion(0, v83);
  v8 = *(*(v7 - 1) + 80);

  v9 = *(v0 + 104);
  if (v9 >> 60 != 15 && (v9 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 96), v9);
  }

  v10 = *(v2 + 8);
  v10(v0 + v77, AssociatedTypeWitness);
  v10(v0 + v82, AssociatedTypeWitness);
  *(v0 + v82 + *(v6 + 36) + 8), v11, v12, v13, v14, v15, v16, v17;
  v18 = v0 + v82 + *(v6 + 40);
  v19 = type metadata accessor for ItemMetadata(0);
  v20 = v19[7];
  v21 = sub_1CF9E5CF8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  v23(v18 + v20, v21);
  v23(v18 + v19[8], v21);
  *(v18 + v19[14] + 8), v24, v25, v26, v27, v28, v29, v30;
  v31 = v19[30];
  if (!(*(v22 + 48))(v18 + v31, 1, v21))
  {
    v23(v18 + v31, v21);
  }

  *(v18 + v19[31]), v32, v33, v34, v35, v36, v37, v38;
  *(v18 + v19[33]), v39, v40, v41, v42, v43, v44, v45;
  v52 = (v18 + v19[34]);
  v53 = v52[1];
  if (v53 >> 60 != 15)
  {
    sub_1CEFE4714(*v52, v53);
  }

  *(v18 + v19[38] + 8), v53, v46, v47, v48, v49, v50, v51;

  v54 = v0 + ((((v78 + v82 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
  (*(*(v80 - 8) + 8))(v54);
  *(v54 + v7[13]), v55, v56, v57, v58, v59, v60, v61;
  (*(*(v81 - 8) + 8))(v54 + v7[14]);
  *(v54 + v7[15]), v62, v63, v64, v65, v66, v67, v68;
  *(v54 + v7[16] + 8), v69, v70, v71, v72, v73, v74, v75;
  return swift_deallocObject();
}

uint64_t sub_1CF0A025C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v91 = type metadata accessor for ItemPropagationResult(255, v5, *(v4 + 40), a4);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v90 = TupleTypeMetadata2;
  v7 = sub_1CF9E8238();
  v100 = *(*(v7 - 8) + 80);
  v92 = (v100 + 48) & ~v100;
  v93 = (*(*(v7 - 8) + 64) + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = (*(v9 + 80) + ((((v93 + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v94 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v101 = *(*(v94 - 8) + 80);
  v95 = v10;
  v14 = v10 + v11 + v101;
  v97 = *(*(v94 - 8) + 64);
  v98 = swift_getAssociatedTypeWitness();
  v99 = swift_getAssociatedTypeWitness();
  v102[0] = v98;
  v102[1] = v99;
  v102[2] = swift_getAssociatedConformanceWitness();
  v102[3] = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for FileItemVersion(0, v102);
  v96 = *(*(v15 - 1) + 80);
  v16 = (v4 + v92);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    if (!(*(*(v91 - 8) + 48))(v16, 1, v91))
    {
      (*(*(v5 - 8) + 8))(v16);
      v17 = v16 + *(v91 + 44);
      v18 = *(v17 + 3);
      if (v18 >> 60 != 15 && (v18 & 0xF000000000000000) != 0xB000000000000000)
      {
        sub_1CEFE4714(*(v17 + 2), v18);
      }
    }
  }

  v20 = v14 & ~v101;
  v21 = *(v4 + v93 + 24);
  if (v21 >> 60 != 15 && (v21 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v4 + v93 + 16), v21);
  }

  v23 = *(v9 + 8);
  v23(v4 + v95, AssociatedTypeWitness);
  v23(v4 + v20, AssociatedTypeWitness);
  *(v4 + v20 + *(v94 + 36) + 8), v24, v25, v26, v27, v28, v29, v30;
  v31 = v4 + v20 + *(v94 + 40);
  v32 = type metadata accessor for ItemMetadata(0);
  v33 = v32[7];
  v34 = sub_1CF9E5CF8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 8);
  v36(v31 + v33, v34);
  v36(v31 + v32[8], v34);
  *(v31 + v32[14] + 8), v37, v38, v39, v40, v41, v42, v43;
  v44 = v32[30];
  if (!(*(v35 + 48))(v31 + v44, 1, v34))
  {
    v36(v31 + v44, v34);
  }

  *(v31 + v32[31]), v45, v46, v47, v48, v49, v50, v51;
  *(v31 + v32[33]), v52, v53, v54, v55, v56, v57, v58;
  v65 = (v31 + v32[34]);
  v66 = v65[1];
  if (v66 >> 60 != 15)
  {
    sub_1CEFE4714(*v65, v66);
  }

  *(v31 + v32[38] + 8), v66, v59, v60, v61, v62, v63, v64;

  v67 = v4 + ((((v97 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + v96 + 8) & ~v96);
  (*(*(v98 - 8) + 8))(v67);
  *(v67 + v15[13]), v68, v69, v70, v71, v72, v73, v74;
  (*(*(v99 - 8) + 8))(v67 + v15[14]);
  *(v67 + v15[15]), v75, v76, v77, v78, v79, v80, v81;
  *(v67 + v15[16] + 8), v82, v83, v84, v85, v86, v87, v88;

  return swift_deallocObject();
}

uint64_t sub_1CF0A0908()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v185 = *(AssociatedTypeWitness - 8);
  v188 = (*(v185 + 80) + 168) & ~*(v185 + 80);
  v2 = v188 + *(v185 + 64);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v189 = AssociatedTypeWitness;
  v187 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  v198 = *(*(v187 - 8) + 80);
  v197 = *(*(v187 - 8) + 64);
  v194 = swift_getAssociatedTypeWitness();
  v195 = swift_getAssociatedTypeWitness();
  v199 = v194;
  v200 = v195;
  v201 = swift_getAssociatedConformanceWitness();
  v202 = swift_getAssociatedConformanceWitness();
  v190 = type metadata accessor for FileItemVersion(0, &v199);
  v5 = *(*(v190 - 1) + 80);
  v186 = (v2 + v198) & ~v198;
  v6 = (v186 + v197 + v5) & ~v5;
  v7 = *(*(v190 - 1) + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v192 = v8;
  v193 = v9;
  v199 = v8;
  v200 = v9;
  v201 = v10;
  v202 = v11;
  v12 = type metadata accessor for FileItemVersion(0, &v199);
  v191 = v6;
  v196 = *(*(v12 - 1) + 80);
  v184 = (v6 + v7 + v196) & ~v196;
  v13 = *(*(v12 - 1) + 64) + v184;

  v14 = *(v0 + 128);
  if (v14 >> 60 != 15 && (v14 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 120), v14);
  }

  v15 = v13 + 7;
  v16 = *(v185 + 8);
  v16(v0 + v188, v189);
  v16(v0 + v186, v189);
  *(v0 + v186 + *(v187 + 36) + 8), v17, v18, v19, v20, v21, v22, v23;
  v24 = v0 + v186 + *(v187 + 40);
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

  v45 = v15 & 0xFFFFFFFFFFFFFFF8;
  *(v24 + v25[31]), v38, v39, v40, v41, v42, v43, v44;
  *(v24 + v25[33]), v46, v47, v48, v49, v50, v51, v52;
  v59 = (v24 + v25[34]);
  v60 = v59[1];
  if (v60 >> 60 != 15)
  {
    sub_1CEFE4714(*v59, v60);
  }

  *(v24 + v25[38] + 8), v60, v53, v54, v55, v56, v57, v58;
  (*(*(v194 - 8) + 8))(v0 + v191);
  *(v0 + v191 + v190[13]), v61, v62, v63, v64, v65, v66, v67;
  (*(*(v195 - 8) + 8))(v0 + v191 + v190[14]);
  *(v0 + v191 + v190[15]), v68, v69, v70, v71, v72, v73, v74;
  *(v0 + v191 + v190[16] + 8), v75, v76, v77, v78, v79, v80, v81;
  (*(*(v192 - 8) + 8))(v0 + v184);
  *(v0 + v184 + v12[13]), v82, v83, v84, v85, v86, v87, v88;
  (*(*(v193 - 8) + 8))(v0 + v184 + v12[14]);
  *(v0 + v184 + v12[15]), v89, v90, v91, v92, v93, v94, v95;
  *(v0 + v184 + v12[16] + 8), v96, v97, v98, v99, v100, v101, v102;
  v103 = v0 + v45;
  v104 = *(v0 + v45 + 16);
  if (v104 != 1)
  {

    *(v103 + 48), v105, v106, v107, v108, v109, v110, v111;
    *(v103 + 64), v112, v113, v114, v115, v116, v117, v118;
    *(v103 + 88), v119, v120, v121, v122, v123, v124, v125;

    *(v103 + 120), v126, v127, v128, v129, v130, v131, v132;
    *(v103 + 136), v133, v134, v135, v136, v137, v138, v139;
    *(v103 + 152), v140, v141, v142, v143, v144, v145, v146;
    *(v103 + 168), v147, v148, v149, v150, v151, v152, v153;
    *(v103 + 184), v154, v155, v156, v157, v158, v159, v160;
    v168 = *(v103 + 192);
    if (v168)
    {
      v168, v161, v162, v163, v164, v165, v166, v167;
      *(v103 + 200), v169, v170, v171, v172, v173, v174, v175;
    }

    *(v103 + 224), v161, v162, v163, v164, v165, v166, v167;
    *(v103 + 240), v176, v177, v178, v179, v180, v181, v182;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0A0FE4()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A103C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v76 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v75 = (*(v2 + 64) + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = (type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4) - 8);
  v80 = (v75 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  v77 = *(*v5 + 64);
  v78 = swift_getAssociatedTypeWitness();
  v81 = v78;
  v82 = swift_getAssociatedTypeWitness();
  v79 = v82;
  v83 = swift_getAssociatedConformanceWitness();
  v84 = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for FileItemVersion(0, &v81);
  v7 = *(*(v6 - 1) + 80);

  v8 = *(v2 + 8);
  v8(v0 + v76, AssociatedTypeWitness);

  v8(v0 + v80, AssociatedTypeWitness);
  *(v0 + v80 + v5[11] + 8), v9, v10, v11, v12, v13, v14, v15;
  v16 = v0 + v80 + v5[12];
  v17 = type metadata accessor for ItemMetadata(0);
  v18 = v17[7];
  v19 = sub_1CF9E5CF8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 8);
  v21(v16 + v18, v19);
  v21(v16 + v17[8], v19);
  *(v16 + v17[14] + 8), v22, v23, v24, v25, v26, v27, v28;
  v29 = v17[30];
  if (!(*(v20 + 48))(v16 + v29, 1, v19))
  {
    v21(v16 + v29, v19);
  }

  *(v16 + v17[31]), v30, v31, v32, v33, v34, v35, v36;
  *(v16 + v17[33]), v37, v38, v39, v40, v41, v42, v43;
  v50 = (v16 + v17[34]);
  v51 = v50[1];
  if (v51 >> 60 != 15)
  {
    sub_1CEFE4714(*v50, v51);
  }

  *(v16 + v17[38] + 8), v51, v44, v45, v46, v47, v48, v49;
  v52 = v0 + ((v80 + v77 + v7) & ~v7);
  (*(*(v78 - 8) + 8))(v52);
  *(v52 + v6[13]), v53, v54, v55, v56, v57, v58, v59;
  (*(*(v79 - 8) + 8))(v52 + v6[14]);
  *(v52 + v6[15]), v60, v61, v62, v63, v64, v65, v66;
  *(v52 + v6[16] + 8), v67, v68, v69, v70, v71, v72, v73;

  return swift_deallocObject();
}

uint64_t sub_1CF0A14D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  type metadata accessor for FileTreeWriter.ItemOrContinuation(255, v5, *(v4 + 40), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v6 = sub_1CF9E8238();
  v95 = *(*(v6 - 8) + 80);
  v7 = *(*(v6 - 8) + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v90 = (((v95 + 48) & ~v95) + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v10 = (*(v9 + 64) + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v93 = *(*(v13 - 8) + 80);
  v96 = (v10 + v93 + 8) & ~v93;
  v91 = *(*(v13 - 8) + 64);
  v92 = swift_getAssociatedTypeWitness();
  v97 = v92;
  v98 = swift_getAssociatedTypeWitness();
  v94 = v98;
  v99 = swift_getAssociatedConformanceWitness();
  v100 = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for FileItemVersion(0, &v97);
  v15 = *(*(v14 - 1) + 80);
  v16 = v4 + ((v95 + 48) & ~v95);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        sub_1CF60F704(*v16, *(v16 + 8), *(v16 + 16), v85, v86, v87, v88, v89);
        break;
      case 1:

        break;
      case 0:
        (*(*(v5 - 8) + 8))(v16);
        break;
    }
  }

  v17 = *(v9 + 8);
  v17(v4 + v90, AssociatedTypeWitness);

  v17(v4 + v96, AssociatedTypeWitness);
  *(v4 + v96 + *(v13 + 36) + 8), v18, v19, v20, v21, v22, v23, v24;
  v25 = v4 + v96 + *(v13 + 40);
  v26 = type metadata accessor for ItemMetadata(0);
  v27 = v26[7];
  v28 = sub_1CF9E5CF8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 8);
  v30(v25 + v27, v28);
  v30(v25 + v26[8], v28);
  *(v25 + v26[14] + 8), v31, v32, v33, v34, v35, v36, v37;
  v38 = v26[30];
  if (!(*(v29 + 48))(v25 + v38, 1, v28))
  {
    v30(v25 + v38, v28);
  }

  *(v25 + v26[31]), v39, v40, v41, v42, v43, v44, v45;
  *(v25 + v26[33]), v46, v47, v48, v49, v50, v51, v52;
  v59 = (v25 + v26[34]);
  v60 = v59[1];
  if (v60 >> 60 != 15)
  {
    sub_1CEFE4714(*v59, v60);
  }

  *(v25 + v26[38] + 8), v60, v53, v54, v55, v56, v57, v58;
  v61 = v4 + ((v96 + v91 + v15) & ~v15);
  (*(*(v92 - 8) + 8))(v61);
  *(v61 + v14[13]), v62, v63, v64, v65, v66, v67, v68;
  (*(*(v94 - 8) + 8))(v61 + v14[14]);
  *(v61 + v14[15]), v69, v70, v71, v72, v73, v74, v75;
  *(v61 + v14[16] + 8), v76, v77, v78, v79, v80, v81, v82;

  return swift_deallocObject();
}

uint64_t sub_1CF0A1AC4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = (type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v3) - 8);
  v5 = (*(*v4 + 80) + 80) & ~*(*v4 + 80);
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

uint64_t sub_1CF0A1EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = type metadata accessor for ItemPropagationResult(255, v5, *(v4 + 40), a4);
  v7 = *(sub_1CF9E75D8() - 8);
  v84 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v8 = v84 + *(v7 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v85 = type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v88 = *(*(v85 - 8) + 80);
  v91 = (v8 + v88) & ~v88;
  v87 = *(*(v85 - 8) + 64);
  v89 = swift_getAssociatedTypeWitness();
  v90 = swift_getAssociatedTypeWitness();
  v92[0] = v89;
  v92[1] = v90;
  v92[2] = swift_getAssociatedConformanceWitness();
  v92[3] = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for FileItemVersion(0, v92);
  v13 = *(*(v12 - 1) + 80);
  v86 = *(*(v12 - 1) + 64);

  v14 = v4 + v84;
  if (!(*(*(v6 - 8) + 48))(v4 + v84, 1, v6))
  {
    (*(*(v5 - 8) + 8))(v14, v5);
    v15 = v14 + *(v6 + 44);
    v16 = *(v15 + 24);
    if (v16 >> 60 != 15 && (v16 & 0xF000000000000000) != 0xB000000000000000)
    {
      sub_1CEFE4714(*(v15 + 16), v16);
    }
  }

  (*(*(AssociatedTypeWitness - 8) + 8))(v4 + v91, AssociatedTypeWitness);
  *(v4 + v91 + *(v85 + 36) + 8), v18, v19, v20, v21, v22, v23, v24;
  v25 = v4 + v91 + *(v85 + 40);
  v26 = type metadata accessor for ItemMetadata(0);
  v27 = v26[7];
  v28 = sub_1CF9E5CF8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 8);
  v30(v25 + v27, v28);
  v30(v25 + v26[8], v28);
  *(v25 + v26[14] + 8), v31, v32, v33, v34, v35, v36, v37;
  v38 = v26[30];
  if (!(*(v29 + 48))(v25 + v38, 1, v28))
  {
    v30(v25 + v38, v28);
  }

  *(v25 + v26[31]), v39, v40, v41, v42, v43, v44, v45;
  *(v25 + v26[33]), v46, v47, v48, v49, v50, v51, v52;
  v59 = (v25 + v26[34]);
  v60 = v59[1];
  if (v60 >> 60 != 15)
  {
    sub_1CEFE4714(*v59, v60);
  }

  v61 = (v91 + v87 + v13) & ~v13;
  *(v25 + v26[38] + 8), v60, v53, v54, v55, v56, v57, v58;
  (*(*(v89 - 8) + 8))(v4 + v61);
  *(v4 + v61 + v12[13]), v62, v63, v64, v65, v66, v67, v68;
  (*(*(v90 - 8) + 8))(v4 + v61 + v12[14]);
  *(v4 + v61 + v12[15]), v69, v70, v71, v72, v73, v74, v75;
  *(v4 + v61 + v12[16] + 8), v76, v77, v78, v79, v80, v81, v82;

  return swift_deallocObject();
}

uint64_t sub_1CF0A2438()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A2474()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = (type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v3) - 8);
  v5 = (*(*v4 + 80) + 80) & ~*(*v4 + 80);
  v160 = *(*v4 + 64);
  v158 = swift_getAssociatedTypeWitness();
  v159 = swift_getAssociatedTypeWitness();
  v161[0] = v158;
  v161[1] = v159;
  v161[2] = swift_getAssociatedConformanceWitness();
  v161[3] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for FileItemVersion(0, v161);
  v7 = *(*(v6 - 1) + 80);
  v157 = (v5 + v160 + v7) & ~v7;
  v8 = (((*(*(v6 - 1) + 64) + v157 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v5, AssociatedTypeWitness);
  *(v0 + v5 + v4[11] + 8), v9, v10, v11, v12, v13, v14, v15;
  v16 = v0 + v5 + v4[12];
  v17 = type metadata accessor for ItemMetadata(0);
  v18 = v17[7];
  v19 = sub_1CF9E5CF8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 8);
  v21(v16 + v18, v19);
  v21(v16 + v17[8], v19);
  *(v16 + v17[14] + 8), v22, v23, v24, v25, v26, v27, v28;
  v29 = v17[30];
  if (!(*(v20 + 48))(v16 + v29, 1, v19))
  {
    v21(v16 + v29, v19);
  }

  *(v16 + v17[31]), v30, v31, v32, v33, v34, v35, v36;
  *(v16 + v17[33]), v37, v38, v39, v40, v41, v42, v43;
  v50 = (v16 + v17[34]);
  v51 = v50[1];
  if (v51 >> 60 != 15)
  {
    sub_1CEFE4714(*v50, v51);
  }

  v52 = (v8 + 71) & 0xFFFFFFFFFFFFFFF8;
  *(v16 + v17[38] + 8), v51, v44, v45, v46, v47, v48, v49;
  (*(*(v158 - 8) + 8))(v0 + v157);
  *(v0 + v157 + v6[13]), v53, v54, v55, v56, v57, v58, v59;
  (*(*(v159 - 8) + 8))(v0 + v157 + v6[14]);
  *(v0 + v157 + v6[15]), v60, v61, v62, v63, v64, v65, v66;
  *(v0 + v157 + v6[16] + 8), v67, v68, v69, v70, v71, v72, v73;

  v74 = *(v0 + v8 + 24);
  if (v74 >> 60 != 15 && (v74 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + v8 + 16), v74);
  }

  v76 = v0 + v52;
  v77 = *(v0 + v52 + 16);
  if (v77 != 1)
  {

    *(v76 + 48), v78, v79, v80, v81, v82, v83, v84;
    *(v76 + 64), v85, v86, v87, v88, v89, v90, v91;
    *(v76 + 88), v92, v93, v94, v95, v96, v97, v98;

    *(v76 + 120), v99, v100, v101, v102, v103, v104, v105;
    *(v76 + 136), v106, v107, v108, v109, v110, v111, v112;
    *(v76 + 152), v113, v114, v115, v116, v117, v118, v119;
    *(v76 + 168), v120, v121, v122, v123, v124, v125, v126;
    *(v76 + 184), v127, v128, v129, v130, v131, v132, v133;
    v141 = *(v76 + 192);
    if (v141)
    {
      v141, v134, v135, v136, v137, v138, v139, v140;
      *(v76 + 200), v142, v143, v144, v145, v146, v147, v148;
    }

    *(v76 + 224), v134, v135, v136, v137, v138, v139, v140;
    *(v76 + 240), v149, v150, v151, v152, v153, v154, v155;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0A29FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 40);
  v7 = *(type metadata accessor for JobLockRule(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v11 = *(type metadata accessor for FileTreeWriter.FileTreeChange(0, v5, v6, v10) - 8);
  v12 = (v8 + v9 + *(v11 + 80)) & ~*(v11 + 80);

  v13 = v4 + v8;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = v12;
  if (EnumCaseMultiPayload <= 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:
LABEL_10:
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        (*(*(AssociatedTypeWitness - 8) + 8))(v13, AssociatedTypeWitness);
        break;
      case 1:
        v27 = swift_getAssociatedTypeWitness();
        v28 = *(*(v27 - 8) + 8);
        v28(v13, v27);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v28(v13 + *(TupleTypeMetadata3 + 48), v27);
        v28(v13 + *(TupleTypeMetadata3 + 64), v27);
        break;
      case 2:
        v15 = swift_getAssociatedTypeWitness();
        v16 = *(v15 - 8);
        v30 = *(v16 + 8);
        v30(v13, v15);
        sub_1CF9E75D8();
        v17 = *(swift_getTupleTypeMetadata2() + 48);
        if (!(*(v16 + 48))(v13 + v17, 1, v15))
        {
          v30(v13 + v17, v15);
        }

        break;
    }
  }

  else if (EnumCaseMultiPayload <= 5 || EnumCaseMultiPayload == 6)
  {
    goto LABEL_10;
  }

  v19 = v4 + v31;
  v20 = swift_getEnumCaseMultiPayload();
  if (v20 > 2)
  {
    if (v20 == 3 || v20 == 5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v20)
    {
      if (v20 != 1)
      {
        goto LABEL_21;
      }

LABEL_17:
      v21 = swift_getAssociatedTypeWitness();
      (*(*(v21 - 8) + 8))(v19, v21);
      goto LABEL_21;
    }

    v22 = swift_getAssociatedTypeWitness();
    (*(*(v22 - 8) + 8))(v19, v22);
    sub_1CF9E75D8();
    type metadata accessor for JobLockAggregator(255, v5, v6, v23);
    sub_1CF9E75D8();
    v24 = *(swift_getTupleTypeMetadata3() + 48);
    v25 = *(v5 - 8);
    if (!(*(v25 + 48))(v19 + v24, 1, v5))
    {
      (*(v25 + 8))(v19 + v24, v5);
    }
  }

LABEL_21:

  return swift_deallocObject();
}

uint64_t sub_1CF0A2F4C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A2FAC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A2FE4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A30A8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A316C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);

  *(v0 + 80), v4, v5, v6, v7, v8, v9, v10;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A3238()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 49) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1CF0A3320()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A341C()
{

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  sub_1CF060D50(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v8, v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1CF0A348C(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0A34DC()
{

  swift_unknownObjectRelease();

  *(v0 + 120), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF0A3588()
{
  v1 = *(v0 + 16);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v3 = *(sub_1CF9E8238() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);

  v5 = (v0 + v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = *(v1 - 8);
    if (!(*(v6 + 48))(v0 + v4, 1, v1))
    {
      (*(v6 + 8))(v0 + v4, v1);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0A3780()
{
  v289 = *(v0 + 40);
  v291 = *(v0 + 16);
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  *&v296 = AssociatedTypeWitness;
  *(&v296 + 1) = v4;
  *&v297 = swift_getAssociatedConformanceWitness();
  *(&v297 + 1) = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for FileItemVersion(0, &v296);
  v276 = *(v5 - 1);
  v287 = (*(v276 + 80) + 112) & ~*(v276 + 80);
  v6 = (*(v276 + 64) + v287 + 7) & 0xFFFFFFFFFFFFFFF8;
  v297 = v289;
  v296 = v291;
  v293 = type metadata accessor for ItemReconciliation(0, &v296);
  v282 = *(*(v293 - 8) + 80);
  v275 = (v6 + v282 + 8) & ~v282;
  v281 = *(*(v293 - 8) + 64) + v275;
  v277 = v2;
  v278 = v1;
  v8 = type metadata accessor for SnapshotItem(0, v1, v2, v7);
  v294 = *(*(v8 - 8) + 80);
  v295 = v8;
  v280 = *(*(v8 - 8) + 64);
  v9 = v291;
  v10 = v289;
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v290 = v11;
  *&v296 = v11;
  *(&v296 + 1) = v12;
  v292 = v12;
  *&v297 = AssociatedConformanceWitness;
  *(&v297 + 1) = v14;
  v15 = type metadata accessor for FileItemVersion(0, &v296);
  v16 = *(v15 - 1);
  v279 = *(v16 + 80);

  v17 = v0 + v287;
  v285 = *(*(AssociatedTypeWitness - 8) + 8);
  v286 = AssociatedTypeWitness;
  v285(v0 + v287, AssociatedTypeWitness);
  *(v0 + v287 + v5[13]), v18, v19, v20, v21, v22, v23, v24;
  v288 = v4;
  v284 = *(*(v4 - 8) + 8);
  v284(v17 + v5[14], v4);
  *(v17 + v5[15]), v25, v26, v27, v28, v29, v30, v31;
  *(v17 + v5[16] + 8), v32, v33, v34, v35, v36, v37, v38;

  v283 = v0;
  v39 = v0 + v275;
  v40 = swift_getAssociatedTypeWitness();
  v41 = *(v40 - 8);
  if (!(*(v41 + 48))(v39, 1, v40))
  {
    (*(v41 + 8))(v39, v40);
  }

  v43 = type metadata accessor for ItemReconciliationHalf(0, v9, v10, v42);
  v44 = v39 + v43[12];
  if (!(*(v16 + 48))(v44, 1, v15))
  {
    (*(*(v290 - 8) + 8))(v44);
    *(v44 + v15[13]), v45, v46, v47, v48, v49, v50, v51;
    (*(*(v292 - 8) + 8))(v44 + v15[14]);
    *(v44 + v15[15]), v52, v53, v54, v55, v56, v57, v58;
    *(v44 + v15[16] + 8), v59, v60, v61, v62, v63, v64, v65;
  }

  sub_1CF03D7A8(*(v39 + v43[16]), *(v39 + v43[16] + 8), *(v39 + v43[16] + 16));
  v66 = v39 + v43[17];
  v67 = *(v66 + 24);
  if (v67 >> 60 != 15 && (v67 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v66 + 16), v67);
  }

  v68 = v39 + *(v293 + 52);
  v69 = swift_getAssociatedTypeWitness();
  v70 = *(v69 - 8);
  if (!(*(v70 + 48))(v68, 1, v69))
  {
    (*(v70 + 8))(v68, v69);
  }

  v72 = type metadata accessor for ItemReconciliationHalf(0, v278, v277, v71);
  v73 = v68 + v72[12];
  if (!(*(v276 + 48))(v73, 1, v5))
  {
    v285(v73, v286);
    *(v73 + v5[13]), v74, v75, v76, v77, v78, v79, v80;
    v284(v73 + v5[14], v288);
    *(v73 + v5[15]), v81, v82, v83, v84, v85, v86, v87;
    *(v73 + v5[16] + 8), v88, v89, v90, v91, v92, v93, v94;
  }

  v95 = (((v281 + 7) & 0xFFFFFFFFFFFFFFF8) + v294 + 9) & ~v294;
  sub_1CF03D7A8(*(v68 + v72[16]), *(v68 + v72[16] + 8), *(v68 + v72[16] + 16));
  v96 = v68 + v72[17];
  v97 = *(v96 + 24);
  if (v97 >> 60 != 15 && (v97 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v96 + 16), v97);
  }

  *(v39 + *(v293 + 60)), v98, v99, v100, v101, v102, v103, v104;
  v105 = v283 + v95;
  v106 = *(v70 + 8);
  v106(v283 + v95, v69);
  v106(v283 + v95 + v295[9], v69);
  v107 = v283 + v95 + v295[10];
  v285(v107, v286);
  *(v107 + v5[13]), v108, v109, v110, v111, v112, v113, v114;
  v284(v107 + v5[14], v288);
  *(v107 + v5[15]), v115, v116, v117, v118, v119, v120, v121;
  *(v107 + v5[16] + 8), v122, v123, v124, v125, v126, v127, v128;
  *(v283 + v95 + v295[11] + 8), v129, v130, v131, v132, v133, v134, v135;
  v136 = v283 + v95 + v295[12];
  v137 = type metadata accessor for ItemMetadata(0);
  v138 = v137[7];
  v139 = sub_1CF9E5CF8();
  v140 = *(v139 - 8);
  v141 = *(v140 + 8);
  v141(v136 + v138, v139);
  v141(v136 + v137[8], v139);
  *(v136 + v137[14] + 8), v142, v143, v144, v145, v146, v147, v148;
  v149 = v137[30];
  if (!(*(v140 + 48))(v136 + v149, 1, v139))
  {
    v141(v136 + v149, v139);
  }

  *(v136 + v137[31]), v150, v151, v152, v153, v154, v155, v156;
  *(v136 + v137[33]), v157, v158, v159, v160, v161, v162, v163;
  v170 = (v136 + v137[34]);
  v171 = v170[1];
  if (v171 >> 60 != 15)
  {
    sub_1CEFE4714(*v170, v171);
  }

  *(v136 + v137[38] + 8), v171, v164, v165, v166, v167, v168, v169;
  v172 = v105 + v295[13];
  v173 = *(v172 + 16);
  if (v173 != 1)
  {

    *(v172 + 48), v174, v175, v176, v177, v178, v179, v180;
    *(v172 + 64), v181, v182, v183, v184, v185, v186, v187;
    *(v172 + 88), v188, v189, v190, v191, v192, v193, v194;

    *(v172 + 120), v195, v196, v197, v198, v199, v200, v201;
    *(v172 + 136), v202, v203, v204, v205, v206, v207, v208;
    *(v172 + 152), v209, v210, v211, v212, v213, v214, v215;
    *(v172 + 168), v216, v217, v218, v219, v220, v221, v222;
    *(v172 + 184), v223, v224, v225, v226, v227, v228, v229;
    v237 = *(v172 + 192);
    if (v237)
    {
      v237, v230, v231, v232, v233, v234, v235, v236;
      *(v172 + 200), v238, v239, v240, v241, v242, v243, v244;
    }

    *(v172 + 224), v230, v231, v232, v233, v234, v235, v236;
    *(v172 + 240), v245, v246, v247, v248, v249, v250, v251;
  }

  sub_1CF07638C(*(v105 + v295[17]), *(v105 + v295[17] + 8));
  v252 = v283 + ((v95 + v280 + v279) & ~v279);
  (*(*(v290 - 8) + 8))(v252);
  *(v252 + v15[13]), v253, v254, v255, v256, v257, v258, v259;
  (*(*(v292 - 8) + 8))(v252 + v15[14]);
  *(v252 + v15[15]), v260, v261, v262, v263, v264, v265, v266;
  *(v252 + v15[16] + 8), v267, v268, v269, v270, v271, v272, v273;
  return swift_deallocObject();
}

uint64_t sub_1CF0A4244()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = swift_getAssociatedTypeWitness();
  v33[0] = AssociatedTypeWitness;
  v33[1] = v2;
  v33[2] = swift_getAssociatedConformanceWitness();
  v33[3] = swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for FileItemVersion(255, v33);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v5 = *(*(TupleTypeMetadata3 - 8) + 64);
  v32 = *(*(TupleTypeMetadata3 - 8) + 80);
  v6 = (v32 + 48) & ~v32;
  v7 = v0 + v6;
  v8 = *(v0 + v6 + 24);
  if (v8 >> 60 != 15)
  {
    sub_1CEFE4714(*(v7 + 16), v8);
  }

  v9 = v7 + *(TupleTypeMetadata3 + 48);
  (*(*(AssociatedTypeWitness - 8) + 8))(v9, AssociatedTypeWitness);
  *(v9 + v3[13]), v10, v11, v12, v13, v14, v15, v16;
  (*(*(v2 - 8) + 8))(v9 + v3[14], v2);
  *(v9 + v3[15]), v17, v18, v19, v20, v21, v22, v23;
  *(v9 + v3[16] + 8), v24, v25, v26, v27, v28, v29, v30;

  return swift_deallocObject();
}

uint64_t sub_1CF0A44D0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = swift_getAssociatedTypeWitness();
  v31[0] = AssociatedTypeWitness;
  v31[1] = v2;
  v31[2] = swift_getAssociatedConformanceWitness();
  v31[3] = swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for FileItemVersion(255, v31);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v5 = (*(*(TupleTypeMetadata3 - 8) + 80) + 80) & ~*(*(TupleTypeMetadata3 - 8) + 80);

  v6 = v0 + v5;
  v7 = *(v0 + v5 + 24);
  if (v7 >> 60 != 15)
  {
    sub_1CEFE4714(*(v6 + 16), v7);
  }

  v8 = v6 + *(TupleTypeMetadata3 + 48);
  (*(*(AssociatedTypeWitness - 8) + 8))(v8, AssociatedTypeWitness);
  *(v8 + v3[13]), v9, v10, v11, v12, v13, v14, v15;
  (*(*(v2 - 8) + 8))(v8 + v3[14], v2);
  *(v8 + v3[15]), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + v3[16] + 8), v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

uint64_t sub_1CF0A472C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = swift_getAssociatedTypeWitness();
  v30[0] = AssociatedTypeWitness;
  v30[1] = v2;
  v30[2] = swift_getAssociatedConformanceWitness();
  v30[3] = swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for FileItemVersion(255, v30);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v5 = v0 + ((*(*(TupleTypeMetadata3 - 8) + 80) + 48) & ~*(*(TupleTypeMetadata3 - 8) + 80));
  v6 = *(v5 + 24);
  if (v6 >> 60 != 15)
  {
    sub_1CEFE4714(*(v5 + 16), v6);
  }

  v7 = v5 + *(TupleTypeMetadata3 + 48);
  (*(*(AssociatedTypeWitness - 8) + 8))(v7, AssociatedTypeWitness);
  *(v7 + v3[13]), v8, v9, v10, v11, v12, v13, v14;
  (*(*(v2 - 8) + 8))(v7 + v3[14], v2);
  *(v7 + v3[15]), v15, v16, v17, v18, v19, v20, v21;
  *(v7 + v3[16] + 8), v22, v23, v24, v25, v26, v27, v28;

  return swift_deallocObject();
}

uint64_t sub_1CF0A4978()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A49B8()
{
  v1 = *(v0 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v2 = *(sub_1CF9E75D8() - 8);
  v35 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v37 = (*(v2 + 64) + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = swift_getAssociatedTypeWitness();
  v38[0] = AssociatedTypeWitness;
  v38[1] = v34;
  v38[2] = swift_getAssociatedConformanceWitness();
  v38[3] = swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for FileItemVersion(255, v38);
  v4 = *(sub_1CF9E75D8() - 8);
  v5 = (((((((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 20) & ~*(v4 + 80);

  v6 = v0 + v35;
  v7 = (*(*(TupleTypeMetadata2 - 8) + 48))(v0 + v35, 1, TupleTypeMetadata2);
  v8 = v37;
  if (!v7)
  {
    v9 = *(v6 + 24);
    if (v9 >> 60 != 15)
    {
      sub_1CEFE4714(*(v6 + 16), v9);
    }

    (*(*(v1 - 8) + 8))(v6 + *(TupleTypeMetadata2 + 48), v1);
    v8 = v37;
  }

  v10 = v0 + v5;
  if (!(*(*(v3 - 1) + 48))(v0 + v5, 1, v3))
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v5);
    *(v10 + v3[13]), v11, v12, v13, v14, v15, v16, v17;
    (*(*(v34 - 8) + 8))(v10 + v3[14]);
    *(v10 + v3[15]), v18, v19, v20, v21, v22, v23, v24;
    *(v10 + v3[16] + 8), v25, v26, v27, v28, v29, v30, v31;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0A4D70()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((((((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF0A4E78()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A4ECC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = swift_getAssociatedTypeWitness();
  v29[0] = AssociatedTypeWitness;
  v29[1] = v2;
  v29[2] = swift_getAssociatedConformanceWitness();
  v29[3] = swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for FileItemVersion(255, v29);
  v4 = *(sub_1CF9E75D8() - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);

  v6 = v0 + v5;
  if (!(*(*(v3 - 1) + 48))(v0 + v5, 1, v3))
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v5, AssociatedTypeWitness);
    *(v6 + v3[13]), v7, v8, v9, v10, v11, v12, v13;
    (*(*(v2 - 8) + 8))(v6 + v3[14], v2);
    *(v6 + v3[15]), v14, v15, v16, v17, v18, v19, v20;
    *(v6 + v3[16] + 8), v21, v22, v23, v24, v25, v26, v27;
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0A5104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  type metadata accessor for FileTreeWriter.ItemOrContinuation(255, v5, *(v4 + 40), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v6 = *(sub_1CF9E8238() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v4 + v7;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        sub_1CF60F704(*v8, *(v8 + 8), *(v8 + 16), v11, v12, v13, v14, v15);
        break;
      case 1:

        break;
      case 0:
        (*(*(v5 - 8) + 8))(v4 + v7, v5);
        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0A53EC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  v8 = sub_1CF65C684(*(v0 + 96));
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness, v8);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1CF0A565C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A5694()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  v8 = sub_1CF65C684(*(v0 + 80));
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness, v8);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1CF0A5858()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);
  sub_1CF65C684(*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF0A5998()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);
  sub_1CF65C684(*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF0A5ABC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A5B0C(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0A5EE0()
{
  sub_1CF66DD30(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0A604C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1CF9E5CF8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1CF0A60C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1CF9E5CF8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1CF0A6140()
{

  return swift_deallocObject();
}

__n128 sub_1CF0A6188(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1CF0A61DC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A6214()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A625C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SnapshotItem(0, *(v4 + 16), *(v4 + 40), a4);
  v158 = *(*(v5 - 1) + 80);
  v6 = v4 + ((v158 + 64) & ~v158);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 8);
  v8(v6, AssociatedTypeWitness);
  v8(v6 + v5[9], AssociatedTypeWitness);
  v9 = v6 + v5[10];
  v10 = swift_getAssociatedTypeWitness();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = swift_getAssociatedTypeWitness();
  v159[0] = v10;
  v159[1] = v11;
  v159[2] = swift_getAssociatedConformanceWitness();
  v159[3] = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for FileItemVersion(0, v159);
  *(v9 + v12[13]), v13, v14, v15, v16, v17, v18, v19;
  (*(*(v11 - 8) + 8))(v9 + v12[14], v11);
  *(v9 + v12[15]), v20, v21, v22, v23, v24, v25, v26;
  *(v9 + v12[16] + 8), v27, v28, v29, v30, v31, v32, v33;
  *(v6 + v5[11] + 8), v34, v35, v36, v37, v38, v39, v40;
  v41 = v6 + v5[12];
  v42 = type metadata accessor for ItemMetadata(0);
  v43 = v42[7];
  v44 = sub_1CF9E5CF8();
  v45 = *(v44 - 8);
  v46 = *(v45 + 8);
  v46(v41 + v43, v44);
  v46(v41 + v42[8], v44);
  *(v41 + v42[14] + 8), v47, v48, v49, v50, v51, v52, v53;
  v54 = v42[30];
  if (!(*(v45 + 48))(v41 + v54, 1, v44))
  {
    v46(v41 + v54, v44);
  }

  *(v41 + v42[31]), v55, v56, v57, v58, v59, v60, v61;
  *(v41 + v42[33]), v62, v63, v64, v65, v66, v67, v68;
  v75 = (v41 + v42[34]);
  v76 = v75[1];
  if (v76 >> 60 != 15)
  {
    sub_1CEFE4714(*v75, v76);
  }

  *(v41 + v42[38] + 8), v76, v69, v70, v71, v72, v73, v74;
  v77 = v6 + v5[13];
  v78 = *(v77 + 16);
  if (v78 != 1)
  {

    *(v77 + 48), v79, v80, v81, v82, v83, v84, v85;
    *(v77 + 64), v86, v87, v88, v89, v90, v91, v92;
    *(v77 + 88), v93, v94, v95, v96, v97, v98, v99;

    *(v77 + 120), v100, v101, v102, v103, v104, v105, v106;
    *(v77 + 136), v107, v108, v109, v110, v111, v112, v113;
    *(v77 + 152), v114, v115, v116, v117, v118, v119, v120;
    *(v77 + 168), v121, v122, v123, v124, v125, v126, v127;
    *(v77 + 184), v128, v129, v130, v131, v132, v133, v134;
    v142 = *(v77 + 192);
    if (v142)
    {
      v142, v135, v136, v137, v138, v139, v140, v141;
      *(v77 + 200), v143, v144, v145, v146, v147, v148, v149;
    }

    *(v77 + 224), v135, v136, v137, v138, v139, v140, v141;
    *(v77 + 240), v150, v151, v152, v153, v154, v155, v156;
  }

  sub_1CF07638C(*(v6 + v5[17]), *(v6 + v5[17] + 8));
  return swift_deallocObject();
}

uint64_t sub_1CF0A683C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A6874()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A693C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1CF0A69B0(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0A69E8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A6A28()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A6A64()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A6A9C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0A6AD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v155 = *(*(v1 - 1) + 80);

  v2 = (v0 + ((v155 + 32) & ~v155));
  v2[8], v3, v4, v5, v6, v7, v8, v9;
  v2[12], v10, v11, v12, v13, v14, v15, v16;
  v2[13], v17, v18, v19, v20, v21, v22, v23;
  v2[15], v24, v25, v26, v27, v28, v29, v30;
  v2[17], v31, v32, v33, v34, v35, v36, v37;
  v38 = v2 + v1[12];
  v39 = type metadata accessor for ItemMetadata(0);
  v40 = v39[7];
  v41 = sub_1CF9E5CF8();
  v42 = *(v41 - 8);
  v43 = *(v42 + 8);
  v43(&v38[v40], v41);
  v43(&v38[v39[8]], v41);
  *&v38[v39[14] + 8], v44, v45, v46, v47, v48, v49, v50;
  v51 = v39[30];
  if (!(*(v42 + 48))(&v38[v51], 1, v41))
  {
    v43(&v38[v51], v41);
  }

  *&v38[v39[31]], v52, v53, v54, v55, v56, v57, v58;
  *&v38[v39[33]], v59, v60, v61, v62, v63, v64, v65;
  v72 = &v38[v39[34]];
  v73 = v72[1];
  if (v73 >> 60 != 15)
  {
    sub_1CEFE4714(*v72, v73);
  }

  *&v38[v39[38] + 8], v73, v66, v67, v68, v69, v70, v71;
  v74 = v2 + v1[13];
  v75 = *(v74 + 2);
  if (v75 != 1)
  {

    *(v74 + 6), v76, v77, v78, v79, v80, v81, v82;
    *(v74 + 8), v83, v84, v85, v86, v87, v88, v89;
    *(v74 + 11), v90, v91, v92, v93, v94, v95, v96;

    *(v74 + 15), v97, v98, v99, v100, v101, v102, v103;
    *(v74 + 17), v104, v105, v106, v107, v108, v109, v110;
    *(v74 + 19), v111, v112, v113, v114, v115, v116, v117;
    *(v74 + 21), v118, v119, v120, v121, v122, v123, v124;
    *(v74 + 23), v125, v126, v127, v128, v129, v130, v131;
    v139 = *(v74 + 24);
    if (v139)
    {
      v139, v132, v133, v134, v135, v136, v137, v138;
      *(v74 + 25), v140, v141, v142, v143, v144, v145, v146;
    }

    *(v74 + 28), v132, v133, v134, v135, v136, v137, v138;
    *(v74 + 30), v147, v148, v149, v150, v151, v152, v153;
  }

  sub_1CF07638C(*(v2 + v1[17]), *(v2 + v1[17] + 8));

  return swift_deallocObject();
}

uint64_t sub_1CF0A6D98()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF0A6E80()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0A6EBC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 56) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v5, v1);
  v8(v0 + v6, v1);
  *(v0 + v7), v9, v10, v11, v12, v13, v14, v15;
  if (*(v0 + ((((((v7 + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0A7000()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0A7050()
{

  if (*(v0 + 32))
  {
  }

  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 64), v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1CF0A70C8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7124()
{
  sub_1CEFE4714(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF0A717C(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0A73E8@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>)
{
  result = sub_1CF735448(a1, a2, *(a3 + 16), *(a3 + 24), a5, a6, a7, a8);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1CF0A750C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0A7558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5D98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1CF0A7624(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CF9E5D98();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1CF0A76DC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7724()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7770()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7810()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7850()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7890()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0A78C8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7920()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7968()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A79A0()
{

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 64), v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1CF0A7A38()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7A88()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7C14()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7C4C(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0A7C9C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7CEC(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0A7D3C()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0A7D7C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_1CF0A7DB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_1CF0A7DE8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7E40()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7E88()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7EE8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A7F24()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_1CEFD0A98(*(v0 + 32));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A800C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A80D8()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A8110()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A8150()
{
  v1 = sub_1CF9E6448();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  sub_1CEFD0A98(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A822C()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0A850C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A85F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0A8634()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A8670()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A86B0()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1CF9E6068();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1CF0A87E0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v161 = v4;
    v162 = (v2 + 32) & ~v2;
    v5[8], v7, v8, v9, v10, v11, v12, v13;
    v5[12], v14, v15, v16, v17, v18, v19, v20;
    v5[13], v21, v22, v23, v24, v25, v26, v27;
    v5[15], v28, v29, v30, v31, v32, v33, v34;
    v5[17], v35, v36, v37, v38, v39, v40, v41;
    v42 = v5 + v6[12];
    v43 = type metadata accessor for ItemMetadata(0);
    v44 = v43[7];
    v45 = sub_1CF9E5CF8();
    v46 = *(v45 - 8);
    v47 = *(v46 + 8);
    v47(&v42[v44], v45);
    v47(&v42[v43[8]], v45);
    *&v42[v43[14] + 8], v48, v49, v50, v51, v52, v53, v54;
    v55 = v43[30];
    if (!(*(v46 + 48))(&v42[v55], 1, v45))
    {
      v47(&v42[v55], v45);
    }

    *&v42[v43[31]], v56, v57, v58, v59, v60, v61, v62;
    *&v42[v43[33]], v63, v64, v65, v66, v67, v68, v69;
    v76 = &v42[v43[34]];
    v77 = v76[1];
    if (v77 >> 60 != 15)
    {
      sub_1CEFE4714(*v76, v77);
    }

    *&v42[v43[38] + 8], v77, v70, v71, v72, v73, v74, v75;
    v78 = v5 + v6[13];
    v79 = *(v78 + 2);
    v4 = v161;
    if (v79 != 1)
    {

      *(v78 + 6), v80, v81, v82, v83, v84, v85, v86;
      *(v78 + 8), v87, v88, v89, v90, v91, v92, v93;
      *(v78 + 11), v94, v95, v96, v97, v98, v99, v100;

      *(v78 + 15), v101, v102, v103, v104, v105, v106, v107;
      *(v78 + 17), v108, v109, v110, v111, v112, v113, v114;
      *(v78 + 19), v115, v116, v117, v118, v119, v120, v121;
      *(v78 + 21), v122, v123, v124, v125, v126, v127, v128;
      *(v78 + 23), v129, v130, v131, v132, v133, v134, v135;
      v143 = *(v78 + 24);
      if (v143)
      {
        v143, v136, v137, v138, v139, v140, v141, v142;
        *(v78 + 25), v144, v145, v146, v147, v148, v149, v150;
      }

      *(v78 + 28), v136, v137, v138, v139, v140, v141, v142;
      *(v78 + 30), v151, v152, v153, v154, v155, v156, v157;
    }

    sub_1CF07638C(*(v5 + v6[17]), *(v5 + v6[17] + 8));
    v3 = v162;
  }

  v158 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v159 = (v158 + 15) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

uint64_t sub_1CF0A8B5C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A8B94()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A8BE4()
{

  if (v0[13])
  {
    v0[9], v1, v2, v3, v4, v5, v6, v7;
    v0[13], v8, v9, v10, v11, v12, v13, v14;
    v0[14], v15, v16, v17, v18, v19, v20, v21;
    v0[16], v22, v23, v24, v25, v26, v27, v28;
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF0A8C6C()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_1CF7B9940(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v5, v6, v7, v8);
  (*(v2 + 8))(v0 + v3, v1, v9);

  return swift_deallocObject();
}

uint64_t sub_1CF0A8D88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0A8DC0()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A8DF8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A8E38()
{
  v1 = sub_1CF9E6448();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  sub_1CEFD0A98(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A8F18()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1CF9E6068();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1CF0A9068()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A90A0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0A90D8()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A9190()
{

  sub_1CEFE4714(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF0A91E0()
{
  sub_1CEFE4714(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

id sub_1CF0A93DC()
{
  v1 = [*v0 lastError];

  return v1;
}

id sub_1CF0A943C()
{
  v1 = [*v0 userVersion];

  return v1;
}

uint64_t sub_1CF0A94BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0A94F4()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A952C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A956C()
{
  v1 = sub_1CF9E6448();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  sub_1CEFD0A98(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0A9648()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1CF9E6068();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1CF0A9748()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1CF9E6068();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1CF0A9890()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A98D0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0A9910(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5D98();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CF0A997C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5D98();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CF0A9A0C(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = *(v8 + 56);
  if (v9 > 0xC)
  {
    if (*(v8 + 56) > 0xEu)
    {
      if (v9 != 15)
      {
        if (v9 == 16)
        {
        }

        goto LABEL_17;
      }
    }

    else if (v9 != 13 && v9 != 14)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1((v8 + 16));
    goto LABEL_17;
  }

  if (*(v8 + 56) <= 2u)
  {
    if (v9 != 1 && v9 != 2)
    {
      goto LABEL_17;
    }

LABEL_12:
    *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
    goto LABEL_17;
  }

  if (v9 == 3 || v9 == 5)
  {
    goto LABEL_12;
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1CF0A9EC8()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0A9F00()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  *(v0 + v4), v5, v6, v7, v8, v9, v10, v11;

  return swift_deallocObject();
}

uint64_t sub_1CF0A9FEC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0AA024()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0AA0F4()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF0AA204()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);

  v3 = v0 + v2;
  v4 = sub_1CF9E6068();
  (*(*(v4 - 8) + 8))(v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1CF0AA31C()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 16) & ~*(v5 + 80);

  v7 = sub_1CF9E6068();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1CF0AA4BC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0AA594()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0AA638()
{
  sub_1CEFD0994(*(v0 + 16), *(v0 + 24), *(v0 + 25));

  return swift_deallocObject();
}

uint64_t sub_1CF0AA680()
{
  sub_1CEFD0A98(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF0AA6E0()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF0AA7A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1CF9E5D98();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1CF9E5CF8();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CF0AA91C()
{
  _Block_release(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1CF0AAA18()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0AAB48(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0AAB90(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0AABE4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0AAC38()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0AAC74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4800, &unk_1CF9FB4A0);
  sub_1CF8E3958(v0);

  return swift_deallocObject();
}

uint64_t sub_1CF0AACCC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0AADFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF343AC4();
  *a1 = result;
  return result;
}

__n128 sub_1CF0AAE5C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1CF0AAE68()
{
  v1 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v32 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = sub_1CF9E5D98();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v1[5];
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2 + v5, v6);
  v9 = v1[6];
  if (!(*(v7 + 48))(v0 + v2 + v9, 1, v6))
  {
    v8(v3 + v9, v6);
  }

  *(v3 + v1[7]), v10, v11, v12, v13, v14, v15, v16;
  *(v3 + v1[8]), v17, v18, v19, v20, v21, v22, v23;
  *(v3 + v1[9]), v24, v25, v26, v27, v28, v29, v30;

  v8(v3 + v1[13], v6);

  return swift_deallocObject();
}

uint64_t sub_1CF0AB088()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46A0, &unk_1CFA16780) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = type metadata accessor for ChangeEnumeratorAnchor(0);
    if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
    {
      v5 = sub_1CF9E5D98();
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0AB1EC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0AB288()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0AB2E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF0AB338()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF0AB390()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF0AB3D8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0AB430()
{
  swift_unknownObjectRelease();

  sub_1CEFD0994(*(v0 + 40), *(v0 + 48), *(v0 + 49));

  if (*(v0 + 168))
  {
    *(v0 + 136), v1, v2, v3, v4, v5, v6, v7;
    *(v0 + 168), v8, v9, v10, v11, v12, v13, v14;
    *(v0 + 176), v15, v16, v17, v18, v19, v20, v21;
    *(v0 + 192), v22, v23, v24, v25, v26, v27, v28;
  }

  sub_1CF03D7A8(*(v0 + 208), *(v0 + 216), *(v0 + 224));
  v29 = *(v0 + 256);
  if (v29 >> 60 != 15 && (v29 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 248), v29);
  }

  if (*(v0 + 360) != 1)
  {
    sub_1CEFE4714(*(v0 + 344), *(v0 + 352));
    *(v0 + 360), v31, v32, v33, v34, v35, v36, v37;
    sub_1CEFE4714(*(v0 + 368), *(v0 + 376));
    *(v0 + 384), v38, v39, v40, v41, v42, v43, v44;
    *(v0 + 400), v45, v46, v47, v48, v49, v50, v51;
  }

  sub_1CF03D7A8(*(v0 + 416), *(v0 + 424), *(v0 + 432));
  v52 = *(v0 + 464);
  if (v52 >> 60 != 15 && (v52 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 456), v52);
  }

  *(v0 + 528), v53, v54, v55, v56, v57, v58, v59;

  return swift_deallocObject();
}

uint64_t sub_1CF0AB598()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0AB62C()
{

  sub_1CEFD0A98(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1CF0AB678()
{
  v1 = type metadata accessor for VFSItem(0);
  v135 = *(*(v1 - 1) + 80);
  v133 = *(*(v1 - 1) + 64);
  v2 = sub_1CF9E5A58();
  v136 = *(v2 - 8);
  v137 = v2;
  v132 = *(v136 + 80);
  v134 = (v135 + 16) & ~v135;
  v3 = v0 + v134;
  *(v0 + v134 + 40), v4, v5, v6, v7, v8, v9, v10;
  v11 = v0 + v134 + v1[7];
  v12 = type metadata accessor for ItemMetadata(0);
  v13 = v12[7];
  v14 = sub_1CF9E5CF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v11 + v13, v14);
  v16(v11 + v12[8], v14);
  *(v11 + v12[14] + 8), v17, v18, v19, v20, v21, v22, v23;
  v24 = v12[30];
  if (!(*(v15 + 48))(v11 + v24, 1, v14))
  {
    v16(v11 + v24, v14);
  }

  *(v11 + v12[31]), v25, v26, v27, v28, v29, v30, v31;
  *(v11 + v12[33]), v32, v33, v34, v35, v36, v37, v38;
  v45 = (v11 + v12[34]);
  v46 = v45[1];
  if (v46 >> 60 != 15)
  {
    sub_1CEFE4714(*v45, v46);
  }

  *(v11 + v12[38] + 8), v46, v39, v40, v41, v42, v43, v44;
  v47 = v3 + v1[8];
  v48 = *(v47 + 16);
  if (v48 != 1)
  {

    *(v47 + 48), v49, v50, v51, v52, v53, v54, v55;
    *(v47 + 64), v56, v57, v58, v59, v60, v61, v62;
    *(v47 + 88), v63, v64, v65, v66, v67, v68, v69;

    *(v47 + 120), v70, v71, v72, v73, v74, v75, v76;
    *(v47 + 136), v77, v78, v79, v80, v81, v82, v83;
    *(v47 + 152), v84, v85, v86, v87, v88, v89, v90;
    *(v47 + 168), v91, v92, v93, v94, v95, v96, v97;
    *(v47 + 184), v98, v99, v100, v101, v102, v103, v104;
    v112 = *(v47 + 192);
    if (v112)
    {
      v112, v105, v106, v107, v108, v109, v110, v111;
      *(v47 + 200), v113, v114, v115, v116, v117, v118, v119;
    }

    *(v47 + 224), v105, v106, v107, v108, v109, v110, v111;
    *(v47 + 240), v120, v121, v122, v123, v124, v125, v126;
  }

  v127 = v1[12];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v128 - 8) + 48))(v3 + v127, 1, v128) && !(*(v136 + 48))(v3 + v127, 1, v137))
  {
    (*(v136 + 8))(v3 + v127, v137);
  }

  v129 = (v133 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
  v130 = (((((v129 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CEFD0A98(*(v0 + v129));

  (*(v136 + 8))(v0 + ((v132 + v130 + 8) & ~v132), v137);

  return swift_deallocObject();
}

uint64_t sub_1CF0ABA58()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0ABA98()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0ABB6C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0ABC48()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v161 = *(*(v5 - 1) + 80);
  v159 = *(*(v5 - 1) + 64);

  (*(v2 + 8))(v0 + v3, v1);

  v160 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + v161 + 8) & ~v161;
  v6 = v0 + v160;

  sub_1CEFE4714(*(v6 + 16), *(v6 + 24));
  *(v0 + v160 + 32), v7, v8, v9, v10, v11, v12, v13;
  sub_1CEFE4714(*(v6 + 40), *(v6 + 48));
  *(v0 + v160 + 56), v14, v15, v16, v17, v18, v19, v20;
  *(v0 + v160 + 72), v21, v22, v23, v24, v25, v26, v27;
  *(v0 + v160 + 88), v28, v29, v30, v31, v32, v33, v34;
  v35 = v0 + v160 + v5[12];
  v36 = type metadata accessor for ItemMetadata(0);
  v37 = v36[7];
  v38 = sub_1CF9E5CF8();
  v39 = *(v38 - 8);
  v40 = *(v39 + 8);
  v40(v35 + v37, v38);
  v40(v35 + v36[8], v38);
  *(v35 + v36[14] + 8), v41, v42, v43, v44, v45, v46, v47;
  v48 = v36[30];
  if (!(*(v39 + 48))(v35 + v48, 1, v38))
  {
    v40(v35 + v48, v38);
  }

  *(v35 + v36[31]), v49, v50, v51, v52, v53, v54, v55;
  *(v35 + v36[33]), v56, v57, v58, v59, v60, v61, v62;
  v69 = (v35 + v36[34]);
  v70 = v69[1];
  if (v70 >> 60 != 15)
  {
    sub_1CEFE4714(*v69, v70);
  }

  *(v35 + v36[38] + 8), v70, v63, v64, v65, v66, v67, v68;
  v71 = v6 + v5[13];
  v72 = *(v71 + 16);
  if (v72 != 1)
  {

    *(v71 + 48), v73, v74, v75, v76, v77, v78, v79;
    *(v71 + 64), v80, v81, v82, v83, v84, v85, v86;
    *(v71 + 88), v87, v88, v89, v90, v91, v92, v93;

    *(v71 + 120), v94, v95, v96, v97, v98, v99, v100;
    *(v71 + 136), v101, v102, v103, v104, v105, v106, v107;
    *(v71 + 152), v108, v109, v110, v111, v112, v113, v114;
    *(v71 + 168), v115, v116, v117, v118, v119, v120, v121;
    *(v71 + 184), v122, v123, v124, v125, v126, v127, v128;
    v136 = *(v71 + 192);
    if (v136)
    {
      v136, v129, v130, v131, v132, v133, v134, v135;
      *(v71 + 200), v137, v138, v139, v140, v141, v142, v143;
    }

    *(v71 + 224), v129, v130, v131, v132, v133, v134, v135;
    *(v71 + 240), v144, v145, v146, v147, v148, v149, v150;
  }

  sub_1CF07638C(*(v6 + v5[17]), *(v6 + v5[17] + 8));
  *(v0 + ((v159 + v160 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v151, v152, v153, v154, v155, v156, v157;

  return swift_deallocObject();
}

uint64_t sub_1CF0ABFE8()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v162 = *(*(v6 - 1) + 80);
  v160 = *(*(v6 - 1) + 64);

  (*(v2 + 8))(v0 + v3, v1);

  v161 = (v162 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v162;
  v7 = v0 + v161;

  sub_1CEFE4714(*(v7 + 16), *(v7 + 24));
  *(v0 + v161 + 32), v8, v9, v10, v11, v12, v13, v14;
  sub_1CEFE4714(*(v7 + 40), *(v7 + 48));
  *(v0 + v161 + 56), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + v161 + 72), v22, v23, v24, v25, v26, v27, v28;
  *(v0 + v161 + 88), v29, v30, v31, v32, v33, v34, v35;
  v36 = v0 + v161 + v6[12];
  v37 = type metadata accessor for ItemMetadata(0);
  v38 = v37[7];
  v39 = sub_1CF9E5CF8();
  v40 = *(v39 - 8);
  v41 = *(v40 + 8);
  v41(v36 + v38, v39);
  v41(v36 + v37[8], v39);
  *(v36 + v37[14] + 8), v42, v43, v44, v45, v46, v47, v48;
  v49 = v37[30];
  if (!(*(v40 + 48))(v36 + v49, 1, v39))
  {
    v41(v36 + v49, v39);
  }

  *(v36 + v37[31]), v50, v51, v52, v53, v54, v55, v56;
  *(v36 + v37[33]), v57, v58, v59, v60, v61, v62, v63;
  v70 = (v36 + v37[34]);
  v71 = v70[1];
  if (v71 >> 60 != 15)
  {
    sub_1CEFE4714(*v70, v71);
  }

  *(v36 + v37[38] + 8), v71, v64, v65, v66, v67, v68, v69;
  v72 = v7 + v6[13];
  v73 = *(v72 + 16);
  if (v73 != 1)
  {

    *(v72 + 48), v74, v75, v76, v77, v78, v79, v80;
    *(v72 + 64), v81, v82, v83, v84, v85, v86, v87;
    *(v72 + 88), v88, v89, v90, v91, v92, v93, v94;

    *(v72 + 120), v95, v96, v97, v98, v99, v100, v101;
    *(v72 + 136), v102, v103, v104, v105, v106, v107, v108;
    *(v72 + 152), v109, v110, v111, v112, v113, v114, v115;
    *(v72 + 168), v116, v117, v118, v119, v120, v121, v122;
    *(v72 + 184), v123, v124, v125, v126, v127, v128, v129;
    v137 = *(v72 + 192);
    if (v137)
    {
      v137, v130, v131, v132, v133, v134, v135, v136;
      *(v72 + 200), v138, v139, v140, v141, v142, v143, v144;
    }

    *(v72 + 224), v130, v131, v132, v133, v134, v135, v136;
    *(v72 + 240), v145, v146, v147, v148, v149, v150, v151;
  }

  sub_1CF07638C(*(v7 + v6[17]), *(v7 + v6[17] + 8));
  *(v0 + ((v160 + v161 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v152, v153, v154, v155, v156, v157, v158;

  return swift_deallocObject();
}

uint64_t sub_1CF0AC3C0()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 16), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0AC408()
{
  v1 = (type metadata accessor for StagedRemoteVersion(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  v5 = v1[7];
  v6 = sub_1CF9E5A58();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1CF0AC52C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 16) & ~v3;
  v8 = (((v5 + v7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v172 = *(*(v173 - 1) + 80);
  v170 = *(*(v173 - 1) + 64);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  *(v0 + v6 + 8), v10, v11, v12, v13, v14, v15, v16;
  v9(v0 + v7, v1);

  v171 = (v172 + v8 + 8) & ~v172;
  v17 = v0 + v171;

  sub_1CEFE4714(*(v17 + 16), *(v17 + 24));
  *(v0 + v171 + 32), v18, v19, v20, v21, v22, v23, v24;
  sub_1CEFE4714(*(v17 + 40), *(v17 + 48));
  *(v0 + v171 + 56), v25, v26, v27, v28, v29, v30, v31;
  *(v0 + v171 + 72), v32, v33, v34, v35, v36, v37, v38;
  *(v0 + v171 + 88), v39, v40, v41, v42, v43, v44, v45;
  v46 = v0 + v171 + v173[12];
  v47 = type metadata accessor for ItemMetadata(0);
  v48 = v47[7];
  v49 = sub_1CF9E5CF8();
  v50 = *(v49 - 8);
  v51 = *(v50 + 8);
  v51(v46 + v48, v49);
  v51(v46 + v47[8], v49);
  *(v46 + v47[14] + 8), v52, v53, v54, v55, v56, v57, v58;
  v59 = v47[30];
  if (!(*(v50 + 48))(v46 + v59, 1, v49))
  {
    v51(v46 + v59, v49);
  }

  *(v46 + v47[31]), v60, v61, v62, v63, v64, v65, v66;
  *(v46 + v47[33]), v67, v68, v69, v70, v71, v72, v73;
  v80 = (v46 + v47[34]);
  v81 = v80[1];
  if (v81 >> 60 != 15)
  {
    sub_1CEFE4714(*v80, v81);
  }

  *(v46 + v47[38] + 8), v81, v74, v75, v76, v77, v78, v79;
  v82 = v17 + v173[13];
  v83 = *(v82 + 16);
  if (v83 != 1)
  {

    *(v82 + 48), v84, v85, v86, v87, v88, v89, v90;
    *(v82 + 64), v91, v92, v93, v94, v95, v96, v97;
    *(v82 + 88), v98, v99, v100, v101, v102, v103, v104;

    *(v82 + 120), v105, v106, v107, v108, v109, v110, v111;
    *(v82 + 136), v112, v113, v114, v115, v116, v117, v118;
    *(v82 + 152), v119, v120, v121, v122, v123, v124, v125;
    *(v82 + 168), v126, v127, v128, v129, v130, v131, v132;
    *(v82 + 184), v133, v134, v135, v136, v137, v138, v139;
    v147 = *(v82 + 192);
    if (v147)
    {
      v147, v140, v141, v142, v143, v144, v145, v146;
      *(v82 + 200), v148, v149, v150, v151, v152, v153, v154;
    }

    *(v82 + 224), v140, v141, v142, v143, v144, v145, v146;
    *(v82 + 240), v155, v156, v157, v158, v159, v160, v161;
  }

  sub_1CF07638C(*(v17 + v173[17]), *(v17 + v173[17] + 8));

  *(v0 + ((((v170 + v171 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v162, v163, v164, v165, v166, v167, v168;

  return swift_deallocObject();
}

uint64_t sub_1CF0AC940()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0ACA2C()
{

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF0ACA74()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_1CEFD0A98(*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF0ACB78()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 112) != 1)
  {
    sub_1CEFE4714(*(v0 + 96), *(v0 + 104));
    *(v0 + 112), v5, v6, v7, v8, v9, v10, v11;
    sub_1CEFE4714(*(v0 + 120), *(v0 + 128));
    *(v0 + 136), v12, v13, v14, v15, v16, v17, v18;
    *(v0 + 152), v19, v20, v21, v22, v23, v24, v25;
  }

  sub_1CF03D7A8(*(v0 + 168), *(v0 + 176), *(v0 + 184));
  v26 = *(v0 + 216);
  if (v26 >> 60 != 15 && (v26 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 208), v26);
  }

  if (*(v0 + 376))
  {
    *(v0 + 344), v28, v29, v30, v31, v32, v33, v34;
    *(v0 + 376), v35, v36, v37, v38, v39, v40, v41;
    *(v0 + 384), v42, v43, v44, v45, v46, v47, v48;
    *(v0 + 400), v49, v50, v51, v52, v53, v54, v55;
  }

  sub_1CF03D7A8(*(v0 + 416), *(v0 + 424), *(v0 + 432));
  v56 = *(v0 + 464);
  if (v56 >> 60 != 15 && (v56 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 456), v56);
  }

  v57 = (v3 + 584) & ~v3;
  v58 = (v4 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;

  *(v0 + 528), v59, v60, v61, v62, v63, v64, v65;
  (*(v2 + 8))(v0 + v57, v1);

  sub_1CEFD0A98(*(v0 + ((((v58 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF0ACD64()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  sub_1CEFD0A98(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0ACE6C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  sub_1CEFD0A98(*(v0 + 40));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0ACF80()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  sub_1CEFD0A98(*(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF0AD0A4()
{

  sub_1CEFD0A98(*(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_1CF0AD108()
{

  sub_1CEFD0A98(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1CF0AD168()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 96) != 1)
  {
    sub_1CEFE4714(*(v0 + 80), *(v0 + 88));
    *(v0 + 96), v5, v6, v7, v8, v9, v10, v11;
    sub_1CEFE4714(*(v0 + 104), *(v0 + 112));
    *(v0 + 120), v12, v13, v14, v15, v16, v17, v18;
    *(v0 + 136), v19, v20, v21, v22, v23, v24, v25;
  }

  sub_1CF03D7A8(*(v0 + 152), *(v0 + 160), *(v0 + 168));
  v26 = *(v0 + 200);
  if (v26 >> 60 != 15 && (v26 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 192), v26);
  }

  if (*(v0 + 360))
  {
    *(v0 + 328), v28, v29, v30, v31, v32, v33, v34;
    *(v0 + 360), v35, v36, v37, v38, v39, v40, v41;
    *(v0 + 368), v42, v43, v44, v45, v46, v47, v48;
    *(v0 + 384), v49, v50, v51, v52, v53, v54, v55;
  }

  sub_1CF03D7A8(*(v0 + 400), *(v0 + 408), *(v0 + 416));
  v56 = *(v0 + 448);
  if (v56 >> 60 != 15 && (v56 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 440), v56);
  }

  v57 = (v3 + 568) & ~v3;
  v58 = (((v4 + v57 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  *(v0 + 512), v59, v60, v61, v62, v63, v64, v65;
  (*(v2 + 8))(v0 + v57, v1);

  sub_1CEFD0A98(*(v0 + ((((v58 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF0AD368()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (((((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  sub_1CEFD0A98(*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF0AD494()
{

  sub_1CEFD0A98(*(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1CF0AD4F4()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0AD544()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  *(v0 + v4 + 8), v5, v6, v7, v8, v9, v10, v11;
  sub_1CEFD0A98(*(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF0AD664()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  *(v0 + v4 + 8), v6, v7, v8, v9, v10, v11, v12;

  sub_1CEFD0A98(*(v0 + v5));

  return swift_deallocObject();
}

uint64_t sub_1CF0AD7A8()
{
  v1 = type metadata accessor for VFSItem(0);
  v134 = *(*(v1 - 1) + 80);
  v132 = *(*(v1 - 1) + 64);
  v133 = (v134 + 16) & ~v134;
  v2 = v0 + v133;
  *(v0 + v133 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v133 + v1[7];
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
  v46 = v2 + v1[8];
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

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  v130 = (((v132 + v133 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  sub_1CEFD0A98(*(v0 + ((v130 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF0ADB70()
{
  v1 = sub_1CF9E6448();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  sub_1CEFD0A98(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0ADC4C()
{
  v1 = type metadata accessor for VFSItem(0);
  v134 = *(*(v1 - 1) + 80);
  v132 = *(*(v1 - 1) + 64);
  v133 = (v134 + 16) & ~v134;
  v2 = v0 + v133;
  *(v0 + v133 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v133 + v1[7];
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
  v46 = v2 + v1[8];
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

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  v130 = (((v132 + v133 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  sub_1CEFD0A98(*(v0 + v130));

  return swift_deallocObject();
}

uint64_t sub_1CF0ADFF8()
{
  v1 = type metadata accessor for VFSItem(0);
  v131 = *(*(v1 - 1) + 80);

  sub_1CEFD0A98(*(v0 + 64));

  v2 = v0 + ((v131 + 88) & ~v131);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
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
  v46 = v2 + v1[8];
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

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0AE374()
{

  sub_1CEFD0A98(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1CF0AE3CC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0AE4CC()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0AE514()
{

  sub_1CEFD0A98(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1CF0AE55C()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0AE5E0(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1CF0AE630()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40) - 8) + 80);

  v2 = v0 + ((v1 + 32) & ~v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload == 6)
        {

          v179 = *(v2 + 8);
          goto LABEL_99;
        }

        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_100;
        }
      }

      v179 = *v2;
LABEL_99:

      goto LABEL_100;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_100;
        }

        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
        v5 = v2 + v4[12];
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
        if (!(*(*(v6 - 1) + 48))(v5, 1, v6))
        {
          v986 = v4;

          sub_1CEFE4714(*(v5 + 16), *(v5 + 24));
          *(v5 + 32), v14, v15, v16, v17, v18, v19, v20;
          sub_1CEFE4714(*(v5 + 40), *(v5 + 48));
          *(v5 + 56), v21, v22, v23, v24, v25, v26, v27;
          *(v5 + 72), v28, v29, v30, v31, v32, v33, v34;
          *(v5 + 88), v35, v36, v37, v38, v39, v40, v41;
          v42 = v5 + v6[12];
          v43 = type metadata accessor for ItemMetadata(0);
          v974 = v43[7];
          v44 = sub_1CF9E5CF8();
          v45 = *(v44 - 8);
          v46 = *(v45 + 8);
          v46(v42 + v974, v44);
          v975 = v46;
          v46(v42 + v43[8], v44);
          *(v42 + v43[14] + 8), v47, v48, v49, v50, v51, v52, v53;
          v54 = v43[30];
          if (!(*(v45 + 48))(v42 + v54, 1, v44))
          {
            v975(v42 + v54, v44);
          }

          *(v42 + v43[31]), v55, v56, v57, v58, v59, v60, v61;
          *(v42 + v43[33]), v62, v63, v64, v65, v66, v67, v68;
          v75 = (v42 + v43[34]);
          v76 = v75[1];
          if (v76 >> 60 != 15)
          {
            sub_1CEFE4714(*v75, v76);
          }

          *(v42 + v43[38] + 8), v76, v69, v70, v71, v72, v73, v74;
          v4 = v986;
          v77 = v5 + v6[13];
          v78 = *(v77 + 16);
          if (v78 != 1)
          {

            *(v77 + 48), v79, v80, v81, v82, v83, v84, v85;
            *(v77 + 64), v86, v87, v88, v89, v90, v91, v92;
            *(v77 + 88), v93, v94, v95, v96, v97, v98, v99;

            *(v77 + 120), v100, v101, v102, v103, v104, v105, v106;
            *(v77 + 136), v107, v108, v109, v110, v111, v112, v113;
            *(v77 + 152), v114, v115, v116, v117, v118, v119, v120;
            *(v77 + 168), v121, v122, v123, v124, v125, v126, v127;
            *(v77 + 184), v128, v129, v130, v131, v132, v133, v134;
            v142 = *(v77 + 192);
            if (v142)
            {
              v142, v135, v136, v137, v138, v139, v140, v141;
              *(v77 + 200), v143, v144, v145, v146, v147, v148, v149;
            }

            *(v77 + 224), v135, v136, v137, v138, v139, v140, v141;
            *(v77 + 240), v150, v151, v152, v153, v154, v155, v156;
          }

          sub_1CF07638C(*(v5 + v6[17]), *(v5 + v6[17] + 8));
        }

        v157 = (v2 + v4[20]);
        if (v157[8])
        {
          v157[4], v7, v8, v9, v10, v11, v12, v13;
          v157[8], v158, v159, v160, v161, v162, v163, v164;
          v157[9], v165, v166, v167, v168, v169, v170, v171;
          v157[11], v172, v173, v174, v175, v176, v177, v178;
        }

        v179 = *(v2 + v4[32]);
        goto LABEL_99;
      }

      v726 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
      v727 = v2 + *(v726 + 48);
      v801 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
      if ((*(*(v801 - 8) + 48))(v727, 1, v801))
      {
        goto LABEL_94;
      }

      v988 = v726;

      sub_1CEFE4714(*(v727 + 16), *(v727 + 24));
      *(v727 + 32), v802, v803, v804, v805, v806, v807, v808;
      sub_1CEFE4714(*(v727 + 40), *(v727 + 48));
      *(v727 + 56), v809, v810, v811, v812, v813, v814, v815;
      *(v727 + 72), v816, v817, v818, v819, v820, v821, v822;
      *(v727 + 88), v823, v824, v825, v826, v827, v828, v829;
      v985 = v801;
      v830 = v727 + *(v801 + 48);
      v831 = type metadata accessor for ItemMetadata(0);
      v981 = v831[7];
      v832 = sub_1CF9E5CF8();
      v833 = *(v832 - 8);
      v834 = *(v833 + 8);
      v834(v830 + v981, v832);
      v982 = v834;
      v834(v830 + v831[8], v832);
      *(v830 + v831[14] + 8), v835, v836, v837, v838, v839, v840, v841;
      v842 = v831[30];
      if (!(*(v833 + 48))(v830 + v842, 1, v832))
      {
        v982(v830 + v842, v832);
      }

      *(v830 + v831[31]), v843, v844, v845, v846, v847, v848, v849;
      *(v830 + v831[33]), v850, v851, v852, v853, v854, v855, v856;
      v863 = (v830 + v831[34]);
      v864 = v863[1];
      if (v864 >> 60 != 15)
      {
        sub_1CEFE4714(*v863, v864);
      }

      *(v830 + v831[38] + 8), v864, v857, v858, v859, v860, v861, v862;
      v800 = v985;
      goto LABEL_89;
    }

    if (EnumCaseMultiPayload == 2)
    {

      if (*(v2 + 88))
      {
        *(v2 + 56), v945, v946, v947, v948, v949, v950, v951;
        *(v2 + 88), v952, v953, v954, v955, v956, v957, v958;
        *(v2 + 96), v959, v960, v961, v962, v963, v964, v965;
        *(v2 + 112), v966, v967, v968, v969, v970, v971, v972;
      }

      v179 = *(v2 + 128);
      goto LABEL_99;
    }

    v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1D0, &unk_1CFA18150);
    v487 = v2 + *(v486 + 48);
    v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
    if (!(*(*(v488 - 8) + 48))(v487, 1, v488))
    {
      v987 = v486;

      sub_1CEFE4714(*(v487 + 16), *(v487 + 24));
      *(v487 + 32), v496, v497, v498, v499, v500, v501, v502;
      sub_1CEFE4714(*(v487 + 40), *(v487 + 48));
      *(v487 + 56), v503, v504, v505, v506, v507, v508, v509;
      *(v487 + 72), v510, v511, v512, v513, v514, v515, v516;
      *(v487 + 88), v517, v518, v519, v520, v521, v522, v523;
      v984 = v488;
      v524 = v487 + *(v488 + 48);
      v525 = type metadata accessor for ItemMetadata(0);
      v977 = v525[7];
      v526 = sub_1CF9E5CF8();
      v527 = *(v526 - 8);
      v528 = *(v527 + 8);
      v528(v524 + v977, v526);
      v978 = v528;
      v528(v524 + v525[8], v526);
      *(v524 + v525[14] + 8), v529, v530, v531, v532, v533, v534, v535;
      v536 = v525[30];
      if (!(*(v527 + 48))(v524 + v536, 1, v526))
      {
        v978(v524 + v536, v526);
      }

      *(v524 + v525[31]), v537, v538, v539, v540, v541, v542, v543;
      *(v524 + v525[33]), v544, v545, v546, v547, v548, v549, v550;
      v557 = (v524 + v525[34]);
      v558 = v557[1];
      if (v558 >> 60 != 15)
      {
        sub_1CEFE4714(*v557, v558);
      }

      *(v524 + v525[38] + 8), v558, v551, v552, v553, v554, v555, v556;
      v559 = v984;
LABEL_71:
      v646 = v487 + *(v559 + 52);
      v647 = *(v646 + 16);
      v486 = v987;
      if (v647 != 1)
      {

        *(v646 + 48), v648, v649, v650, v651, v652, v653, v654;
        *(v646 + 64), v655, v656, v657, v658, v659, v660, v661;
        *(v646 + 88), v662, v663, v664, v665, v666, v667, v668;

        *(v646 + 120), v669, v670, v671, v672, v673, v674, v675;
        *(v646 + 136), v676, v677, v678, v679, v680, v681, v682;
        *(v646 + 152), v683, v684, v685, v686, v687, v688, v689;
        *(v646 + 168), v690, v691, v692, v693, v694, v695, v696;
        *(v646 + 184), v697, v698, v699, v700, v701, v702, v703;
        v711 = *(v646 + 192);
        if (v711)
        {
          v711, v704, v705, v706, v707, v708, v709, v710;
          *(v646 + 200), v712, v713, v714, v715, v716, v717, v718;
        }

        *(v646 + 224), v704, v705, v706, v707, v708, v709, v710;
        *(v646 + 240), v719, v720, v721, v722, v723, v724, v725;
      }

      sub_1CF07638C(*(v487 + *(v559 + 68)), *(v487 + *(v559 + 68) + 8));
      goto LABEL_76;
    }

    goto LABEL_76;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v180 = swift_getEnumCaseMultiPayload();
  if (v180 <= 1)
  {
    if (v180)
    {
      if (v180 != 1)
      {
        goto LABEL_100;
      }

      v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
      v311 = (v2 + v310[12]);
      v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      if (!(*(*(v312 - 8) + 48))(v311, 1, v312))
      {
        v311[8], v313, v314, v315, v316, v317, v318, v319;
        v311[12], v320, v321, v322, v323, v324, v325, v326;
        v311[13], v327, v328, v329, v330, v331, v332, v333;
        v311[15], v334, v335, v336, v337, v338, v339, v340;
        v311[17], v341, v342, v343, v344, v345, v346, v347;
        v976 = v312;
        v983 = v311;
        v348 = v311 + *(v312 + 48);
        v349 = type metadata accessor for ItemMetadata(0);
        v350 = v349[7];
        v351 = sub_1CF9E5CF8();
        v352 = *(v351 - 8);
        v353 = *(v352 + 8);
        v353(&v348[v350], v351);
        v353(&v348[v349[8]], v351);
        *&v348[v349[14] + 8], v354, v355, v356, v357, v358, v359, v360;
        v361 = v349[30];
        if (!(*(v352 + 48))(&v348[v361], 1, v351))
        {
          v353(&v348[v361], v351);
        }

        *&v348[v349[31]], v362, v363, v364, v365, v366, v367, v368;
        *&v348[v349[33]], v369, v370, v371, v372, v373, v374, v375;
        v382 = &v348[v349[34]];
        v383 = v382[1];
        if (v383 >> 60 != 15)
        {
          sub_1CEFE4714(*v382, v383);
        }

        *&v348[v349[38] + 8], v383, v376, v377, v378, v379, v380, v381;
        v384 = v983 + *(v976 + 52);
        v385 = *(v384 + 2);
        if (v385 != 1)
        {

          *(v384 + 6), v386, v387, v388, v389, v390, v391, v392;
          *(v384 + 8), v393, v394, v395, v396, v397, v398, v399;
          *(v384 + 11), v400, v401, v402, v403, v404, v405, v406;

          *(v384 + 15), v407, v408, v409, v410, v411, v412, v413;
          *(v384 + 17), v414, v415, v416, v417, v418, v419, v420;
          *(v384 + 19), v421, v422, v423, v424, v425, v426, v427;
          *(v384 + 21), v428, v429, v430, v431, v432, v433, v434;
          *(v384 + 23), v435, v436, v437, v438, v439, v440, v441;
          v449 = *(v384 + 24);
          if (v449)
          {
            v449, v442, v443, v444, v445, v446, v447, v448;
            *(v384 + 25), v450, v451, v452, v453, v454, v455, v456;
          }

          *(v384 + 28), v442, v443, v444, v445, v446, v447, v448;
          *(v384 + 30), v457, v458, v459, v460, v461, v462, v463;
        }

        sub_1CF07638C(*(v983 + *(v976 + 68)), *(v983 + *(v976 + 68) + 8));
      }

      v464 = v2 + v310[20];
      if (*(v464 + 16) != 1)
      {
        sub_1CEFE4714(*v464, *(v464 + 8));
        *(v464 + 16), v465, v466, v467, v468, v469, v470, v471;
        sub_1CEFE4714(*(v464 + 24), *(v464 + 32));
        *(v464 + 40), v472, v473, v474, v475, v476, v477, v478;
        *(v464 + 56), v479, v480, v481, v482, v483, v484, v485;
      }

      v179 = *(v2 + v310[32]);
      goto LABEL_99;
    }

    v726 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
    v727 = v2 + *(v726 + 48);
    v728 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    if ((*(*(v728 - 8) + 48))(v727, 1, v728))
    {
      goto LABEL_94;
    }

    v988 = v726;
    *(v727 + 64), v729, v730, v731, v732, v733, v734, v735;
    *(v727 + 96), v736, v737, v738, v739, v740, v741, v742;
    *(v727 + 104), v743, v744, v745, v746, v747, v748, v749;
    *(v727 + 120), v750, v751, v752, v753, v754, v755, v756;
    *(v727 + 136), v757, v758, v759, v760, v761, v762, v763;
    v980 = v728;
    v764 = v727 + *(v728 + 48);
    v765 = type metadata accessor for ItemMetadata(0);
    v766 = v765[7];
    v767 = sub_1CF9E5CF8();
    v768 = *(v767 - 8);
    v769 = *(v768 + 8);
    v769(v764 + v766, v767);
    v769(v764 + v765[8], v767);
    *(v764 + v765[14] + 8), v770, v771, v772, v773, v774, v775, v776;
    v777 = v765[30];
    if (!(*(v768 + 48))(v764 + v777, 1, v767))
    {
      v769(v764 + v777, v767);
    }

    *(v764 + v765[31]), v778, v779, v780, v781, v782, v783, v784;
    *(v764 + v765[33]), v785, v786, v787, v788, v789, v790, v791;
    v798 = (v764 + v765[34]);
    v799 = v798[1];
    if (v799 >> 60 != 15)
    {
      sub_1CEFE4714(*v798, v799);
    }

    *(v764 + v765[38] + 8), v799, v792, v793, v794, v795, v796, v797;
    v800 = v980;
LABEL_89:
    v865 = v727 + *(v800 + 52);
    v866 = *(v865 + 16);
    v726 = v988;
    if (v866 != 1)
    {

      *(v865 + 48), v867, v868, v869, v870, v871, v872, v873;
      *(v865 + 64), v874, v875, v876, v877, v878, v879, v880;
      *(v865 + 88), v881, v882, v883, v884, v885, v886, v887;

      *(v865 + 120), v888, v889, v890, v891, v892, v893, v894;
      *(v865 + 136), v895, v896, v897, v898, v899, v900, v901;
      *(v865 + 152), v902, v903, v904, v905, v906, v907, v908;
      *(v865 + 168), v909, v910, v911, v912, v913, v914, v915;
      *(v865 + 184), v916, v917, v918, v919, v920, v921, v922;
      v930 = *(v865 + 192);
      if (v930)
      {
        v930, v923, v924, v925, v926, v927, v928, v929;
        *(v865 + 200), v931, v932, v933, v934, v935, v936, v937;
      }

      *(v865 + 224), v923, v924, v925, v926, v927, v928, v929;
      *(v865 + 240), v938, v939, v940, v941, v942, v943, v944;
    }

    sub_1CF07638C(*(v727 + *(v800 + 68)), *(v727 + *(v800 + 68) + 8));
LABEL_94:
    v179 = *(v2 + *(v726 + 80));
    goto LABEL_99;
  }

  switch(v180)
  {
    case 2:

      if (*(v2 + 40) != 1)
      {
        sub_1CEFE4714(*(v2 + 24), *(v2 + 32));
        *(v2 + 40), v560, v561, v562, v563, v564, v565, v566;
        sub_1CEFE4714(*(v2 + 48), *(v2 + 56));
        *(v2 + 64), v567, v568, v569, v570, v571, v572, v573;
        *(v2 + 80), v574, v575, v576, v577, v578, v579, v580;
      }

      v179 = *(v2 + 96);
      goto LABEL_99;
    case 3:
      v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FA0, &unk_1CFA19770);
      v487 = v2 + *(v486 + 48);
      v581 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      if (!(*(*(v581 - 8) + 48))(v487, 1, v581))
      {
        v987 = v486;
        *(v487 + 64), v489, v490, v491, v492, v493, v494, v495;
        *(v487 + 96), v582, v583, v584, v585, v586, v587, v588;
        *(v487 + 104), v589, v590, v591, v592, v593, v594, v595;
        *(v487 + 120), v596, v597, v598, v599, v600, v601, v602;
        *(v487 + 136), v603, v604, v605, v606, v607, v608, v609;
        v979 = v581;
        v610 = v487 + *(v581 + 48);
        v611 = type metadata accessor for ItemMetadata(0);
        v612 = v611[7];
        v613 = sub_1CF9E5CF8();
        v614 = *(v613 - 8);
        v615 = *(v614 + 8);
        v615(v610 + v612, v613);
        v615(v610 + v611[8], v613);
        *(v610 + v611[14] + 8), v616, v617, v618, v619, v620, v621, v622;
        v623 = v611[30];
        if (!(*(v614 + 48))(v610 + v623, 1, v613))
        {
          v615(v610 + v623, v613);
        }

        *(v610 + v611[31]), v624, v625, v626, v627, v628, v629, v630;
        *(v610 + v611[33]), v631, v632, v633, v634, v635, v636, v637;
        v644 = (v610 + v611[34]);
        v645 = v644[1];
        if (v645 >> 60 != 15)
        {
          sub_1CEFE4714(*v644, v645);
        }

        *(v610 + v611[38] + 8), v645, v638, v639, v640, v641, v642, v643;
        v559 = v979;
        goto LABEL_71;
      }

LABEL_76:
      *(v2 + *(v486 + 64) + 8), v489, v490, v491, v492, v493, v494, v495;
      break;
    case 6:
      v181 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEC0, &unk_1CFA05590) + 48);
      v182 = type metadata accessor for VFSItem(0);
      if (!(*(*(v182 - 1) + 48))(v181, 1, v182))
      {
        *(v181 + 40), v183, v184, v185, v186, v187, v188, v189;
        v190 = v181 + v182[7];
        v191 = type metadata accessor for ItemMetadata(0);
        v192 = v191[7];
        v193 = sub_1CF9E5CF8();
        v194 = *(v193 - 8);
        v195 = *(v194 + 8);
        v195(v190 + v192, v193);
        v195(v190 + v191[8], v193);
        *(v190 + v191[14] + 8), v196, v197, v198, v199, v200, v201, v202;
        v203 = v191[30];
        if (!(*(v194 + 48))(v190 + v203, 1, v193))
        {
          v195(v190 + v203, v193);
        }

        *(v190 + v191[31]), v204, v205, v206, v207, v208, v209, v210;
        *(v190 + v191[33]), v211, v212, v213, v214, v215, v216, v217;
        v224 = (v190 + v191[34]);
        v225 = v224[1];
        if (v225 >> 60 != 15)
        {
          sub_1CEFE4714(*v224, v225);
        }

        *(v190 + v191[38] + 8), v225, v218, v219, v220, v221, v222, v223;
        v226 = v181 + v182[8];
        v227 = *(v226 + 16);
        if (v227 != 1)
        {

          *(v226 + 48), v228, v229, v230, v231, v232, v233, v234;
          *(v226 + 64), v235, v236, v237, v238, v239, v240, v241;
          *(v226 + 88), v242, v243, v244, v245, v246, v247, v248;

          *(v226 + 120), v249, v250, v251, v252, v253, v254, v255;
          *(v226 + 136), v256, v257, v258, v259, v260, v261, v262;
          *(v226 + 152), v263, v264, v265, v266, v267, v268, v269;
          *(v226 + 168), v270, v271, v272, v273, v274, v275, v276;
          *(v226 + 184), v277, v278, v279, v280, v281, v282, v283;
          v291 = *(v226 + 192);
          if (v291)
          {
            v291, v284, v285, v286, v287, v288, v289, v290;
            *(v226 + 200), v292, v293, v294, v295, v296, v297, v298;
          }

          *(v226 + 224), v284, v285, v286, v287, v288, v289, v290;
          *(v226 + 240), v299, v300, v301, v302, v303, v304, v305;
        }

        v306 = v182[12];
        v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
        if (!(*(*(v307 - 8) + 48))(v181 + v306, 1, v307))
        {
          v308 = sub_1CF9E5A58();
          v309 = *(v308 - 8);
          if (!(*(v309 + 48))(v181 + v306, 1, v308))
          {
            (*(v309 + 8))(v181 + v306, v308);
          }
        }
      }

      break;
  }

LABEL_100:

  return swift_deallocObject();
}

uint64_t sub_1CF0AF990()
{
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF0AF9F0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0AFA40()
{
  v1 = type metadata accessor for VFSItem(0);
  v143 = *(*(v1 - 1) + 80);
  v140 = *(*(v1 - 1) + 64);
  v2 = sub_1CF9E5A58();
  v144 = *(v2 - 8);
  v145 = v2;
  v142 = *(v144 + 80);
  v139 = *(v144 + 64);

  v141 = (v143 + 24) & ~v143;
  v3 = v0 + v141;
  *(v0 + v141 + 40), v4, v5, v6, v7, v8, v9, v10;
  v11 = v0 + v141 + v1[7];
  v12 = type metadata accessor for ItemMetadata(0);
  v13 = v12[7];
  v14 = sub_1CF9E5CF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v11 + v13, v14);
  v16(v11 + v12[8], v14);
  *(v11 + v12[14] + 8), v17, v18, v19, v20, v21, v22, v23;
  v24 = v12[30];
  if (!(*(v15 + 48))(v11 + v24, 1, v14))
  {
    v16(v11 + v24, v14);
  }

  *(v11 + v12[31]), v25, v26, v27, v28, v29, v30, v31;
  *(v11 + v12[33]), v32, v33, v34, v35, v36, v37, v38;
  v45 = (v11 + v12[34]);
  v46 = v45[1];
  if (v46 >> 60 != 15)
  {
    sub_1CEFE4714(*v45, v46);
  }

  *(v11 + v12[38] + 8), v46, v39, v40, v41, v42, v43, v44;
  v47 = v3 + v1[8];
  v48 = *(v47 + 16);
  if (v48 != 1)
  {

    *(v47 + 48), v49, v50, v51, v52, v53, v54, v55;
    *(v47 + 64), v56, v57, v58, v59, v60, v61, v62;
    *(v47 + 88), v63, v64, v65, v66, v67, v68, v69;

    *(v47 + 120), v70, v71, v72, v73, v74, v75, v76;
    *(v47 + 136), v77, v78, v79, v80, v81, v82, v83;
    *(v47 + 152), v84, v85, v86, v87, v88, v89, v90;
    *(v47 + 168), v91, v92, v93, v94, v95, v96, v97;
    *(v47 + 184), v98, v99, v100, v101, v102, v103, v104;
    v112 = *(v47 + 192);
    if (v112)
    {
      v112, v105, v106, v107, v108, v109, v110, v111;
      *(v47 + 200), v113, v114, v115, v116, v117, v118, v119;
    }

    *(v47 + 224), v105, v106, v107, v108, v109, v110, v111;
    *(v47 + 240), v120, v121, v122, v123, v124, v125, v126;
  }

  v127 = v1[12];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v128 - 8) + 48))(v3 + v127, 1, v128) && !(*(v144 + 48))(v3 + v127, 1, v145))
  {
    (*(v144 + 8))(v3 + v127, v145);
  }

  v129 = (v140 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
  v130 = (((v129 + 15) & 0xFFFFFFFFFFFFFFF8) + v142 + 16) & ~v142;

  (*(v144 + 8))(v0 + v130, v145);
  *(v0 + ((v139 + v130 + 7) & 0xFFFFFFFFFFFFFFF8)), v131, v132, v133, v134, v135, v136, v137;

  return swift_deallocObject();
}

uint64_t sub_1CF0AFE4C()
{
  v1 = type metadata accessor for VFSItem(0);
  v136 = *(*(v1 - 1) + 80);
  v134 = *(*(v1 - 1) + 64);
  v2 = sub_1CF9E5A58();
  v137 = *(v2 - 8);
  v138 = v2;
  v133 = *(v137 + 80);
  v132 = *(v137 + 64);

  v135 = (v136 + 24) & ~v136;
  v3 = v0 + v135;
  *(v0 + v135 + 40), v4, v5, v6, v7, v8, v9, v10;
  v11 = v0 + v135 + v1[7];
  v12 = type metadata accessor for ItemMetadata(0);
  v13 = v12[7];
  v14 = sub_1CF9E5CF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v11 + v13, v14);
  v16(v11 + v12[8], v14);
  *(v11 + v12[14] + 8), v17, v18, v19, v20, v21, v22, v23;
  v24 = v12[30];
  if (!(*(v15 + 48))(v11 + v24, 1, v14))
  {
    v16(v11 + v24, v14);
  }

  *(v11 + v12[31]), v25, v26, v27, v28, v29, v30, v31;
  *(v11 + v12[33]), v32, v33, v34, v35, v36, v37, v38;
  v45 = (v11 + v12[34]);
  v46 = v45[1];
  if (v46 >> 60 != 15)
  {
    sub_1CEFE4714(*v45, v46);
  }

  *(v11 + v12[38] + 8), v46, v39, v40, v41, v42, v43, v44;
  v47 = v3 + v1[8];
  v48 = *(v47 + 16);
  if (v48 != 1)
  {

    *(v47 + 48), v49, v50, v51, v52, v53, v54, v55;
    *(v47 + 64), v56, v57, v58, v59, v60, v61, v62;
    *(v47 + 88), v63, v64, v65, v66, v67, v68, v69;

    *(v47 + 120), v70, v71, v72, v73, v74, v75, v76;
    *(v47 + 136), v77, v78, v79, v80, v81, v82, v83;
    *(v47 + 152), v84, v85, v86, v87, v88, v89, v90;
    *(v47 + 168), v91, v92, v93, v94, v95, v96, v97;
    *(v47 + 184), v98, v99, v100, v101, v102, v103, v104;
    v112 = *(v47 + 192);
    if (v112)
    {
      v112, v105, v106, v107, v108, v109, v110, v111;
      *(v47 + 200), v113, v114, v115, v116, v117, v118, v119;
    }

    *(v47 + 224), v105, v106, v107, v108, v109, v110, v111;
    *(v47 + 240), v120, v121, v122, v123, v124, v125, v126;
  }

  v127 = v1[12];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v128 - 8) + 48))(v3 + v127, 1, v128) && !(*(v137 + 48))(v3 + v127, 1, v138))
  {
    (*(v137 + 8))(v3 + v127, v138);
  }

  v129 = (v134 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
  v130 = (((v129 + 15) & 0xFFFFFFFFFFFFFFF8) + v133 + 16) & ~v133;

  (*(v137 + 8))(v0 + v130, v138);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0228()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0348()
{
  v1 = type metadata accessor for VFSItem(0);
  v138 = *(*(v1 - 1) + 80);
  v134 = *(*(v1 - 1) + 64);
  v2 = sub_1CF9E5A58();
  v136 = *(v2 - 8);
  v137 = v2;
  v133 = *(v136 + 80);
  v132 = *(v136 + 64);
  v135 = (v138 + 16) & ~v138;
  v3 = v0 + v135;
  *(v0 + v135 + 40), v4, v5, v6, v7, v8, v9, v10;
  v11 = v0 + v135 + v1[7];
  v12 = type metadata accessor for ItemMetadata(0);
  v13 = v12[7];
  v14 = sub_1CF9E5CF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v11 + v13, v14);
  v16(v11 + v12[8], v14);
  *(v11 + v12[14] + 8), v17, v18, v19, v20, v21, v22, v23;
  v24 = v12[30];
  if (!(*(v15 + 48))(v11 + v24, 1, v14))
  {
    v16(v11 + v24, v14);
  }

  *(v11 + v12[31]), v25, v26, v27, v28, v29, v30, v31;
  *(v11 + v12[33]), v32, v33, v34, v35, v36, v37, v38;
  v45 = (v11 + v12[34]);
  v46 = v45[1];
  if (v46 >> 60 != 15)
  {
    sub_1CEFE4714(*v45, v46);
  }

  *(v11 + v12[38] + 8), v46, v39, v40, v41, v42, v43, v44;
  v47 = v3 + v1[8];
  v48 = *(v47 + 16);
  if (v48 != 1)
  {

    *(v47 + 48), v49, v50, v51, v52, v53, v54, v55;
    *(v47 + 64), v56, v57, v58, v59, v60, v61, v62;
    *(v47 + 88), v63, v64, v65, v66, v67, v68, v69;

    *(v47 + 120), v70, v71, v72, v73, v74, v75, v76;
    *(v47 + 136), v77, v78, v79, v80, v81, v82, v83;
    *(v47 + 152), v84, v85, v86, v87, v88, v89, v90;
    *(v47 + 168), v91, v92, v93, v94, v95, v96, v97;
    *(v47 + 184), v98, v99, v100, v101, v102, v103, v104;
    v112 = *(v47 + 192);
    if (v112)
    {
      v112, v105, v106, v107, v108, v109, v110, v111;
      *(v47 + 200), v113, v114, v115, v116, v117, v118, v119;
    }

    *(v47 + 224), v105, v106, v107, v108, v109, v110, v111;
    *(v47 + 240), v120, v121, v122, v123, v124, v125, v126;
  }

  v127 = v1[12];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v128 - 8) + 48))(v3 + v127, 1, v128) && !(*(v136 + 48))(v3 + v127, 1, v137))
  {
    (*(v136 + 8))(v3 + v127, v137);
  }

  v129 = (v135 + v134 + v133) & ~v133;
  v130 = (v132 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v136 + 8))(v0 + v129, v137);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0710()
{
  v1 = type metadata accessor for VFSItem(0);
  v136 = *(*(v1 - 1) + 80);
  v134 = *(*(v1 - 1) + 64);
  v2 = sub_1CF9E5A58();
  v137 = *(v2 - 8);
  v138 = v2;
  v133 = *(v137 + 80);
  v132 = *(v137 + 64);

  v135 = (v136 + 24) & ~v136;
  v3 = v0 + v135;
  *(v0 + v135 + 40), v4, v5, v6, v7, v8, v9, v10;
  v11 = v0 + v135 + v1[7];
  v12 = type metadata accessor for ItemMetadata(0);
  v13 = v12[7];
  v14 = sub_1CF9E5CF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v11 + v13, v14);
  v16(v11 + v12[8], v14);
  *(v11 + v12[14] + 8), v17, v18, v19, v20, v21, v22, v23;
  v24 = v12[30];
  if (!(*(v15 + 48))(v11 + v24, 1, v14))
  {
    v16(v11 + v24, v14);
  }

  *(v11 + v12[31]), v25, v26, v27, v28, v29, v30, v31;
  *(v11 + v12[33]), v32, v33, v34, v35, v36, v37, v38;
  v45 = (v11 + v12[34]);
  v46 = v45[1];
  if (v46 >> 60 != 15)
  {
    sub_1CEFE4714(*v45, v46);
  }

  *(v11 + v12[38] + 8), v46, v39, v40, v41, v42, v43, v44;
  v47 = v3 + v1[8];
  v48 = *(v47 + 16);
  if (v48 != 1)
  {

    *(v47 + 48), v49, v50, v51, v52, v53, v54, v55;
    *(v47 + 64), v56, v57, v58, v59, v60, v61, v62;
    *(v47 + 88), v63, v64, v65, v66, v67, v68, v69;

    *(v47 + 120), v70, v71, v72, v73, v74, v75, v76;
    *(v47 + 136), v77, v78, v79, v80, v81, v82, v83;
    *(v47 + 152), v84, v85, v86, v87, v88, v89, v90;
    *(v47 + 168), v91, v92, v93, v94, v95, v96, v97;
    *(v47 + 184), v98, v99, v100, v101, v102, v103, v104;
    v112 = *(v47 + 192);
    if (v112)
    {
      v112, v105, v106, v107, v108, v109, v110, v111;
      *(v47 + 200), v113, v114, v115, v116, v117, v118, v119;
    }

    *(v47 + 224), v105, v106, v107, v108, v109, v110, v111;
    *(v47 + 240), v120, v121, v122, v123, v124, v125, v126;
  }

  v127 = v1[12];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v128 - 8) + 48))(v3 + v127, 1, v128) && !(*(v137 + 48))(v3 + v127, 1, v138))
  {
    (*(v137 + 8))(v3 + v127, v138);
  }

  v129 = (v134 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
  v130 = (((v129 + 15) & 0xFFFFFFFFFFFFFFF8) + v133 + 16) & ~v133;

  (*(v137 + 8))(v0 + v130, v138);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0AF0()
{

  sub_1CEFD0A98(*(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1CF0B0B50()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B0BC0()
{

  sub_1CEFD0A98(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1CF0B0C44()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  *(v0 + 32), v4, v5, v6, v7, v8, v9, v10;
  sub_1CEFD0A98(*(v0 + 40));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0D40()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B0D7C()
{
  sub_1CEFD0A98(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF0B0DE4()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  sub_1CEFD0A98(*(v0 + 40));

  *(v0 + 56), v6, v7, v8, v9, v10, v11, v12;

  v13 = *(v2 + 8);
  v13(v0 + v4, v1);
  v13(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0F10()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_1CEFD0A98(*(v0 + 32));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B0FF8()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_1CEFD0A98(*(v0 + 24));

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);
  *(v0 + v7), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1CF0B113C()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CEFD0A98(*(v0 + 16));

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);
  *(v0 + v7), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1CF0B1280()
{
  sub_1CEFD0A98(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF0B12EC()
{
  v1 = type metadata accessor for VFSItem(0);
  v131 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v131 + 40) & ~v131);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
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
  v46 = v2 + v1[8];
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

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B164C()
{
  v1 = type metadata accessor for VFSItem(0);
  v131 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v131 + 40) & ~v131);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
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
  v46 = v2 + v1[8];
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

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B19B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5030, qword_1CFA177B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  sub_1CEFD0A98(*(v0 + 24));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B1A88()
{

  sub_1CEFD0A98(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1CF0B1AE0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B1B30()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0B1B9C()
{

  sub_1CEFD0A98(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1CF0B1BEC()
{

  sub_1CEFD0A98(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1CF0B1C3C()
{

  sub_1CEFD0A98(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1CF0B1C94()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0B1CEC()
{
  sub_1CEFD0A98(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF0B1D34()
{
  sub_1CEFD0A98(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF0B1D84()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B1DF0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B1E44()
{

  sub_1CF8F99BC(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF0B1E94()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B1EEC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);

  v3 = sub_1CF9E5CF8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B205C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B20A4(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0B2104()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B216C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B21CC()
{

  sub_1CEFD0A98(*(v0 + 32));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF0B223C()
{
  v1 = type metadata accessor for VFSItem(0);
  v134 = *(*(v1 - 1) + 80);
  v132 = *(*(v1 - 1) + 64);

  sub_1CEFD0A98(*(v0 + 32));

  v133 = (v134 + 48) & ~v134;
  v2 = v0 + v133;
  *(v0 + v133 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v133 + v1[7];
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
  v46 = v2 + v1[8];
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

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  v130 = (((v132 + v133 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CF0B25FC()
{
  v1 = type metadata accessor for VFSItem(0);
  v133 = *(*(v1 - 1) + 80);
  v131 = *(*(v1 - 1) + 64);

  v132 = (v133 + 24) & ~v133;
  v2 = v0 + v132;
  *(v0 + v132 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v132 + v1[7];
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
  v46 = v2 + v1[8];
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

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  sub_1CEFD0A98(*(v0 + ((((v131 + v132 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF0B297C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B29D4()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B2A34()
{
  v1 = type metadata accessor for VFSItem(0);
  v131 = *(*(v1 - 1) + 80);

  sub_1CEFD0A98(*(v0 + 24));
  v2 = v0 + ((v131 + 32) & ~v131);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
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
  v46 = v2 + v1[8];
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

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B2DB4()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_1CF9E6068();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1CF0B2F40()
{
  v1 = (type metadata accessor for Signpost(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = sub_1CF9E6068();
  (*(*(v5 - 8) + 8))(v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1CF0B3080()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_1CEFD0A98(*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1CF0B3188()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B31E0()
{
  v1 = type metadata accessor for VFSItem(0);
  v133 = *(*(v1 - 1) + 80);
  v131 = *(*(v1 - 1) + 64);

  v132 = (v133 + 24) & ~v133;
  v2 = v0 + v132;
  *(v0 + v132 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v132 + v1[7];
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
  v46 = v2 + v1[8];
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

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  sub_1CEFD0A98(*(v0 + ((v131 + v132 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1CF0B3554()
{
  sub_1CF480678(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_1CF0B35B8()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_1CEFD0A98(*(v0 + 40));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B3698()
{
  v1 = type metadata accessor for VFSItem(0);
  v135 = *(*(v1 - 1) + 80);
  v133 = *(*(v1 - 1) + 64);

  v134 = (v135 + 24) & ~v135;
  v2 = v0 + v134;
  *(v0 + v134 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v134 + v1[7];
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
  v46 = v2 + v1[8];
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

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  v130 = (v133 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
  v131 = (v130 + 15) & 0xFFFFFFFFFFFFFFF8;

  sub_1CEFD0A98(*(v0 + v131));

  return swift_deallocObject();
}

uint64_t sub_1CF0B3A28()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0B3A70()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B3ACC()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0B3B24()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0B3B94()
{

  sub_1CEFD0A98(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1CF0B3BFC()
{

  sub_1CEFD0A98(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF0B3C44()
{

  sub_1CEFD0A98(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1CF0B3CC8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B3D20(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0B3D90()
{
  v1 = type metadata accessor for VFSItem(0);
  v134 = *(*(v1 - 1) + 80);
  v132 = *(*(v1 - 1) + 64);
  v133 = (v134 + 16) & ~v134;
  v2 = v0 + v133;
  *(v0 + v133 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v0 + v133 + v1[7];
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
  v46 = v2 + v1[8];
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

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  v130 = (((v132 + v133 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

uint64_t sub_1CF0B4110()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B4158()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B41B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  sub_1CF901FB0(*(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), a5, a6, a7, a8);

  return swift_deallocObject();
}

uint64_t sub_1CF0B4200()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B4238()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B4314()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B434C(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0B4394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VFSCounters(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DBCounters(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for SnapshotCounters(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1CF0B44D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for VFSCounters(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for DBCounters(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for SnapshotCounters(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1CF0B57A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5D98();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CF0B580C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5D98();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CF0B5A9C()
{

  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF0B5B30()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B5B68()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B5BA8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B5C18()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B5C90()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B5CD0()
{

  sub_1CEFD0A98(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1CF0B5D4C()
{
  v1 = type metadata accessor for VFSItem(0);
  v131 = *(*(v1 - 1) + 80);

  sub_1CEFD0A98(*(v0 + 40));
  v2 = v0 + ((v131 + 48) & ~v131);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
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
  v46 = v2 + v1[8];
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

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B60C8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0B6100()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF0B6138()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B6178()
{
  v1 = sub_1CF9E6448();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  sub_1CEFD0A98(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B6254()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B6298()
{
  sub_1CEFD0A98(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1CF0B62E8()
{
  sub_1CEFD0A98(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0B6328()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B637C()
{

  *(v0 + 88), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 120), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 128), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + 144), v22, v23, v24, v25, v26, v27, v28;
  v29 = *(v0 + 184);
  if (v29 >> 60 != 15 && (v29 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 176), v29);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B6440()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B6478()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 56), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 64), v15, v16, v17, v18, v19, v20, v21;

  return swift_deallocObject();
}

uint64_t sub_1CF0B64E8()
{
  sub_1CEFD0994(*(v0 + 16), *(v0 + 24), *(v0 + 25));

  return swift_deallocObject();
}

uint64_t sub_1CF0B6530()
{
  sub_1CEFD0A98(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF0B65AC(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0B65E4()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B6634()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B66A0()
{
  v1 = type metadata accessor for VFSItem(0);
  v131 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v131 + 48) & ~v131);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = v2 + v1[7];
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
  v46 = v2 + v1[8];
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

  v126 = v1[12];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v127 - 8) + 48))(v2 + v126, 1, v127))
  {
    v128 = sub_1CF9E5A58();
    v129 = *(v128 - 8);
    if (!(*(v129 + 48))(v2 + v126, 1, v128))
    {
      (*(v129 + 8))(v2 + v126, v128);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B6A08()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for VFSItem(0);
  v5 = *(v4 - 8);
  v6 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 8) & ~*(v5 + 80);

  v7 = v0 + v2;
  v266 = v4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else if (!(*(v5 + 48))(v7, 1, v4))
  {
    v15 = v0;
    v16 = v6;
    *(v7 + 40), v8, v9, v10, v11, v12, v13, v14;
    v17 = v7 + *(v4 + 28);
    v18 = type metadata accessor for ItemMetadata(0);
    v19 = v18[7];
    v20 = sub_1CF9E5CF8();
    v21 = *(v20 - 8);
    v22 = *(v21 + 8);
    v22(v17 + v19, v20);
    v22(v17 + v18[8], v20);
    *(v17 + v18[14] + 8), v23, v24, v25, v26, v27, v28, v29;
    v30 = v18[30];
    if (!(*(v21 + 48))(v17 + v30, 1, v20))
    {
      v22(v17 + v30, v20);
    }

    *(v17 + v18[31]), v31, v32, v33, v34, v35, v36, v37;
    *(v17 + v18[33]), v38, v39, v40, v41, v42, v43, v44;
    v51 = (v17 + v18[34]);
    v52 = v51[1];
    if (v52 >> 60 != 15)
    {
      sub_1CEFE4714(*v51, v52);
    }

    *(v17 + v18[38] + 8), v52, v45, v46, v47, v48, v49, v50;
    v4 = v266;
    v53 = v7 + *(v266 + 32);
    v54 = *(v53 + 16);
    v6 = v16;
    v0 = v15;
    if (v54 != 1)
    {

      *(v53 + 48), v55, v56, v57, v58, v59, v60, v61;
      *(v53 + 64), v62, v63, v64, v65, v66, v67, v68;
      *(v53 + 88), v69, v70, v71, v72, v73, v74, v75;

      *(v53 + 120), v76, v77, v78, v79, v80, v81, v82;
      *(v53 + 136), v83, v84, v85, v86, v87, v88, v89;
      *(v53 + 152), v90, v91, v92, v93, v94, v95, v96;
      *(v53 + 168), v97, v98, v99, v100, v101, v102, v103;
      *(v53 + 184), v104, v105, v106, v107, v108, v109, v110;
      v118 = *(v53 + 192);
      if (v118)
      {
        v118, v111, v112, v113, v114, v115, v116, v117;
        *(v53 + 200), v119, v120, v121, v122, v123, v124, v125;
      }

      *(v53 + 224), v111, v112, v113, v114, v115, v116, v117;
      *(v53 + 240), v126, v127, v128, v129, v130, v131, v132;
    }

    v133 = *(v266 + 48);
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    if (!(*(*(v134 - 8) + 48))(v7 + v133, 1, v134))
    {
      v135 = sub_1CF9E5A58();
      v136 = *(v135 - 8);
      if (!(*(v136 + 48))(v7 + v133, 1, v135))
      {
        (*(v136 + 8))(v7 + v133, v135);
      }
    }
  }

  v137 = v0 + v6;
  *(v0 + v6 + 40), v138, v139, v140, v141, v142, v143, v144;
  v145 = v0 + v6 + *(v4 + 28);
  v146 = type metadata accessor for ItemMetadata(0);
  v147 = v146[7];
  v148 = sub_1CF9E5CF8();
  v149 = *(v148 - 8);
  v150 = *(v149 + 8);
  v150(v145 + v147, v148);
  v150(v145 + v146[8], v148);
  *(v145 + v146[14] + 8), v151, v152, v153, v154, v155, v156, v157;
  v158 = v146[30];
  if (!(*(v149 + 48))(v145 + v158, 1, v148))
  {
    v150(v145 + v158, v148);
  }

  *(v145 + v146[31]), v159, v160, v161, v162, v163, v164, v165;
  *(v145 + v146[33]), v166, v167, v168, v169, v170, v171, v172;
  v179 = (v145 + v146[34]);
  v180 = v179[1];
  if (v180 >> 60 != 15)
  {
    sub_1CEFE4714(*v179, v180);
  }

  *(v145 + v146[38] + 8), v180, v173, v174, v175, v176, v177, v178;
  v181 = v137 + *(v266 + 32);
  v182 = *(v181 + 16);
  if (v182 != 1)
  {

    *(v181 + 48), v183, v184, v185, v186, v187, v188, v189;
    *(v181 + 64), v190, v191, v192, v193, v194, v195, v196;
    *(v181 + 88), v197, v198, v199, v200, v201, v202, v203;

    *(v181 + 120), v204, v205, v206, v207, v208, v209, v210;
    *(v181 + 136), v211, v212, v213, v214, v215, v216, v217;
    *(v181 + 152), v218, v219, v220, v221, v222, v223, v224;
    *(v181 + 168), v225, v226, v227, v228, v229, v230, v231;
    *(v181 + 184), v232, v233, v234, v235, v236, v237, v238;
    v246 = *(v181 + 192);
    if (v246)
    {
      v246, v239, v240, v241, v242, v243, v244, v245;
      *(v181 + 200), v247, v248, v249, v250, v251, v252, v253;
    }

    *(v181 + 224), v239, v240, v241, v242, v243, v244, v245;
    *(v181 + 240), v254, v255, v256, v257, v258, v259, v260;
  }

  v261 = *(v266 + 48);
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v262 - 8) + 48))(v137 + v261, 1, v262))
  {
    v263 = sub_1CF9E5A58();
    v264 = *(v263 - 8);
    if (!(*(v264 + 48))(v137 + v261, 1, v263))
    {
      (*(v264 + 8))(v137 + v261, v263);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0B711C()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF0B7164()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B71C4()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 48), v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

uint64_t sub_1CF0B721C()
{

  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF0B72A4()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF0B72F4()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B733C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B7390()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B764C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B7684()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0B76BC()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  sub_1CEFE4714(*(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));

  return swift_deallocObject();
}

uint64_t sub_1CF0B778C()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B7854()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B78A4()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B78DC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B7914()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B794C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B79A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0B79F0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B7A30(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0B7A68()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B7AA0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B7AD8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1CF0B7BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StagedRemoteVersion(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      v15 = ((4 * v14) & 0xC) == 0;
      v16 = ((4 * v14) & 0xC | (v14 >> 2)) ^ 0xF;
      if (v15)
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1CF0B7D20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for StagedRemoteVersion(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CF0B7E44(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CF9E5A58();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1CF0B7EF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1CF9E5A58();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

BOOL sub_1CF0B7F9C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1CF0B7FF0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1CF0B80AC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B80F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0B8130()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B8168()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B81B8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B81F0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B8268()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B82B8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B82F0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B8348()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v8 = type metadata accessor for SnapshotItem(0, v1, v2, v7);
  v161 = *(*(v8 - 1) + 80);

  (*(v4 + 8))(v0 + v5, AssociatedTypeWitness);
  v9 = v0 + ((v5 + v6 + v161) & ~v161);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v11(v9 + v8[9], v10);
  v12 = v9 + v8[10];
  v13 = swift_getAssociatedTypeWitness();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = swift_getAssociatedTypeWitness();
  v162[0] = v13;
  v162[1] = v14;
  v162[2] = swift_getAssociatedConformanceWitness();
  v162[3] = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for FileItemVersion(0, v162);
  *(v12 + v15[13]), v16, v17, v18, v19, v20, v21, v22;
  (*(*(v14 - 8) + 8))(v12 + v15[14], v14);
  *(v12 + v15[15]), v23, v24, v25, v26, v27, v28, v29;
  *(v12 + v15[16] + 8), v30, v31, v32, v33, v34, v35, v36;
  *(v9 + v8[11] + 8), v37, v38, v39, v40, v41, v42, v43;
  v44 = v9 + v8[12];
  v45 = type metadata accessor for ItemMetadata(0);
  v46 = v45[7];
  v47 = sub_1CF9E5CF8();
  v48 = *(v47 - 8);
  v49 = *(v48 + 8);
  v49(v44 + v46, v47);
  v49(v44 + v45[8], v47);
  *(v44 + v45[14] + 8), v50, v51, v52, v53, v54, v55, v56;
  v57 = v45[30];
  if (!(*(v48 + 48))(v44 + v57, 1, v47))
  {
    v49(v44 + v57, v47);
  }

  *(v44 + v45[31]), v58, v59, v60, v61, v62, v63, v64;
  *(v44 + v45[33]), v65, v66, v67, v68, v69, v70, v71;
  v78 = (v44 + v45[34]);
  v79 = v78[1];
  if (v79 >> 60 != 15)
  {
    sub_1CEFE4714(*v78, v79);
  }

  *(v44 + v45[38] + 8), v79, v72, v73, v74, v75, v76, v77;
  v80 = v9 + v8[13];
  v81 = *(v80 + 16);
  if (v81 != 1)
  {

    *(v80 + 48), v82, v83, v84, v85, v86, v87, v88;
    *(v80 + 64), v89, v90, v91, v92, v93, v94, v95;
    *(v80 + 88), v96, v97, v98, v99, v100, v101, v102;

    *(v80 + 120), v103, v104, v105, v106, v107, v108, v109;
    *(v80 + 136), v110, v111, v112, v113, v114, v115, v116;
    *(v80 + 152), v117, v118, v119, v120, v121, v122, v123;
    *(v80 + 168), v124, v125, v126, v127, v128, v129, v130;
    *(v80 + 184), v131, v132, v133, v134, v135, v136, v137;
    v145 = *(v80 + 192);
    if (v145)
    {
      v145, v138, v139, v140, v141, v142, v143, v144;
      *(v80 + 200), v146, v147, v148, v149, v150, v151, v152;
    }

    *(v80 + 224), v138, v139, v140, v141, v142, v143, v144;
    *(v80 + 240), v153, v154, v155, v156, v157, v158, v159;
  }

  sub_1CF07638C(*(v9 + v8[17]), *(v9 + v8[17] + 8));

  return swift_deallocObject();
}

uint64_t sub_1CF0B883C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B8874()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B88BC()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0B89D4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 152) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  *(v0 + 128), v5, v6, v7, v8, v9, v10, v11;

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);
  *(v0 + v4), v12, v13, v14, v15, v16, v17, v18;

  return swift_deallocObject();
}

uint64_t sub_1CF0B8B14()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B8B64()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);
  *(v0 + v4), v5, v6, v7, v8, v9, v10, v11;
  *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), v12, v13, v14, v15, v16, v17, v18;

  return swift_deallocObject();
}

uint64_t sub_1CF0B8C7C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B8CBC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 136) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  *(v0 + 96), v5, v6, v7, v8, v9, v10, v11;

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);
  *(v0 + v4), v12, v13, v14, v15, v16, v17, v18;

  return swift_deallocObject();
}

uint64_t sub_1CF0B8DDC()
{
  v1 = (type metadata accessor for StagedRemoteVersion(0) - 8);
  v2 = (*(*v1 + 80) + 80) & ~*(*v1 + 80);
  v10 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = (v10 + *(v4 + 80) + 8) & ~*(v4 + 80);

  v6 = (v0 + v2);

  v7 = v1[7];
  v8 = *(v4 + 8);
  v8(v6 + v7, v3);

  v8((v0 + v5), v3);

  return swift_deallocObject();
}

uint64_t sub_1CF0B8FC4()
{
  v1 = (type metadata accessor for StagedRemoteVersion(0) - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  v5 = v1[7];
  v6 = sub_1CF9E5A58();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1CF0B9110()
{

  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1CF0B9290()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF0B92C8()
{

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

unint64_t sub_1CF0B9308(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_1CF0B9318()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B9370()
{
  v92 = *(v0 + 40);
  v94 = *(v0 + 16);
  v95 = v92;
  v1 = (type metadata accessor for Bouncing.BouncingContext(0, &v94) - 8);
  v87 = (*(*v1 + 80) + 80) & ~*(*v1 + 80);
  v2 = v87 + *(*v1 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = (type metadata accessor for ItemState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v5) - 8);
  v93 = (v2 + *(*v6 + 80)) & ~*(*v6 + 80);
  v89 = *(*v6 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v90 = v7;
  v91 = v8;
  *&v94 = v7;
  *(&v94 + 1) = v8;
  *&v95 = v9;
  *(&v95 + 1) = v10;
  v11 = type metadata accessor for FileItemVersion(0, &v94);
  v88 = *(*(v11 - 1) + 80);

  v12 = swift_getAssociatedTypeWitness();
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v87, v12);
  *(v0 + v87 + v1[15] + 8), v14, v15, v16, v17, v18, v19, v20;
  v13(v0 + v87 + v1[16], v12);
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v93, AssociatedTypeWitness);
  *(v0 + v93 + v6[11] + 8), v21, v22, v23, v24, v25, v26, v27;
  v28 = v0 + v93 + v6[12];
  v29 = type metadata accessor for ItemMetadata(0);
  v30 = v29[7];
  v31 = sub_1CF9E5CF8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 8);
  v33(v28 + v30, v31);
  v33(v28 + v29[8], v31);
  *(v28 + v29[14] + 8), v34, v35, v36, v37, v38, v39, v40;
  v41 = v29[30];
  if (!(*(v32 + 48))(v28 + v41, 1, v31))
  {
    v33(v28 + v41, v31);
  }

  *(v28 + v29[31]), v42, v43, v44, v45, v46, v47, v48;
  *(v28 + v29[33]), v49, v50, v51, v52, v53, v54, v55;
  v62 = (v28 + v29[34]);
  v63 = v62[1];
  if (v63 >> 60 != 15)
  {
    sub_1CEFE4714(*v62, v63);
  }

  *(v28 + v29[38] + 8), v63, v56, v57, v58, v59, v60, v61;
  v64 = v0 + ((v93 + v89 + v88) & ~v88);
  (*(*(v90 - 8) + 8))(v64);
  *(v64 + v11[13]), v65, v66, v67, v68, v69, v70, v71;
  (*(*(v91 - 8) + 8))(v64 + v11[14]);
  *(v64 + v11[15]), v72, v73, v74, v75, v76, v77, v78;
  *(v64 + v11[16] + 8), v79, v80, v81, v82, v83, v84, v85;

  return swift_deallocObject();
}

uint64_t sub_1CF0B9890()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = swift_getAssociatedTypeWitness();
  v76[0] = AssociatedTypeWitness;
  v76[1] = v2;
  v76[2] = swift_getAssociatedConformanceWitness();
  v76[3] = swift_getAssociatedConformanceWitness();
  v3 = (type metadata accessor for FileItemVersion(0, v76) - 8);
  v4 = (*(*v3 + 80) + 96) & ~*(*v3 + 80);
  v5 = v4 + *(*v3 + 64);
  v6 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (type metadata accessor for ItemState(0, v6, AssociatedConformanceWitness, v8) - 8);
  v10 = (v5 + *(*v9 + 80)) & ~*(*v9 + 80);

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v4, AssociatedTypeWitness);
  *(v0 + v4 + v3[15]), v11, v12, v13, v14, v15, v16, v17;
  (*(*(v2 - 8) + 8))(v0 + v4 + v3[16], v2);
  *(v0 + v4 + v3[17]), v18, v19, v20, v21, v22, v23, v24;
  *(v0 + v4 + v3[18] + 8), v25, v26, v27, v28, v29, v30, v31;
  (*(*(v6 - 8) + 8))(v0 + v10, v6);
  *(v0 + v10 + v9[11] + 8), v32, v33, v34, v35, v36, v37, v38;
  v39 = v0 + v10 + v9[12];
  v40 = type metadata accessor for ItemMetadata(0);
  v41 = v40[7];
  v42 = sub_1CF9E5CF8();
  v43 = *(v42 - 8);
  v44 = *(v43 + 8);
  v44(v39 + v41, v42);
  v44(v39 + v40[8], v42);
  *(v39 + v40[14] + 8), v45, v46, v47, v48, v49, v50, v51;
  v52 = v40[30];
  if (!(*(v43 + 48))(v39 + v52, 1, v42))
  {
    v44(v39 + v52, v42);
  }

  *(v39 + v40[31]), v53, v54, v55, v56, v57, v58, v59;
  *(v39 + v40[33]), v60, v61, v62, v63, v64, v65, v66;
  v73 = (v39 + v40[34]);
  v74 = v73[1];
  if (v74 >> 60 != 15)
  {
    sub_1CEFE4714(*v73, v74);
  }

  *(v39 + v40[38] + 8), v74, v67, v68, v69, v70, v71, v72;

  return swift_deallocObject();
}

uint64_t sub_1CF0B9C9C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B9CD4()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B9D0C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0B9D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v89 = type metadata accessor for ItemPropagationResult(255, v5, *(v4 + 40), a4);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v88 = TupleTypeMetadata2;
  v7 = *(sub_1CF9E8238() - 8);
  v90 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v8 = (*(v7 + 64) + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  v93[0] = AssociatedTypeWitness;
  v93[1] = v10;
  v93[2] = swift_getAssociatedConformanceWitness();
  v93[3] = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for FileItemVersion(0, v93);
  v92 = *(*(v11 - 1) + 80);
  v12 = (v8 + v92 + 8) & ~v92;
  v13 = *(*(v11 - 1) + 64);
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for ItemState(0, v14, AssociatedConformanceWitness, v16);
  v91 = *(*(v17 - 8) + 80);
  v18 = (v12 + v13 + v91) & ~v91;
  v19 = (v4 + v90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    if (!(*(*(v89 - 8) + 48))(v19, 1, v89))
    {
      (*(*(v5 - 8) + 8))(v19, v5);
      v20 = v19 + *(v89 + 44);
      v21 = *(v20 + 3);
      if (v21 >> 60 != 15 && (v21 & 0xF000000000000000) != 0xB000000000000000)
      {
        sub_1CEFE4714(*(v20 + 2), v21);
      }
    }
  }

  (*(*(AssociatedTypeWitness - 8) + 8))(v4 + v12, AssociatedTypeWitness);
  *(v4 + v12 + v11[13]), v23, v24, v25, v26, v27, v28, v29;
  (*(*(v10 - 8) + 8))(v4 + v12 + v11[14], v10);
  *(v4 + v12 + v11[15]), v30, v31, v32, v33, v34, v35, v36;
  *(v4 + v12 + v11[16] + 8), v37, v38, v39, v40, v41, v42, v43;
  (*(*(v14 - 8) + 8))(v4 + v18, v14);
  *(v4 + v18 + *(v17 + 36) + 8), v44, v45, v46, v47, v48, v49, v50;
  v51 = v4 + v18 + *(v17 + 40);
  v52 = type metadata accessor for ItemMetadata(0);
  v53 = v52[7];
  v54 = sub_1CF9E5CF8();
  v55 = *(v54 - 8);
  v56 = *(v55 + 8);
  v56(v51 + v53, v54);
  v56(v51 + v52[8], v54);
  *(v51 + v52[14] + 8), v57, v58, v59, v60, v61, v62, v63;
  v64 = v52[30];
  if (!(*(v55 + 48))(v51 + v64, 1, v54))
  {
    v56(v51 + v64, v54);
  }

  *(v51 + v52[31]), v65, v66, v67, v68, v69, v70, v71;
  *(v51 + v52[33]), v72, v73, v74, v75, v76, v77, v78;
  v85 = (v51 + v52[34]);
  v86 = v85[1];
  if (v86 >> 60 != 15)
  {
    sub_1CEFE4714(*v85, v86);
  }

  *(v51 + v52[38] + 8), v86, v79, v80, v81, v82, v83, v84;

  return swift_deallocObject();
}

uint64_t sub_1CF0BA380()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0BA3D0()
{

  return swift_deallocObject();
}

uint64_t sub_1CF0BA440()
{
  v1 = *(v0 + 48);
  if (v1 >> 60 != 15 && (v1 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v0 + 40), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF0BA4A4(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = *(v8 + 56);
  if (v9 > 0xC)
  {
    if (*(v8 + 56) > 0xEu)
    {
      if (v9 != 15)
      {
        if (v9 == 16)
        {
        }

        goto LABEL_17;
      }
    }

    else if (v9 != 13 && v9 != 14)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1((v8 + 16));
    goto LABEL_17;
  }

  if (*(v8 + 56) <= 2u)
  {
    if (v9 != 1 && v9 != 2)
    {
      goto LABEL_17;
    }

LABEL_12:
    *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
    goto LABEL_17;
  }

  if (v9 == 3 || v9 == 5)
  {
    goto LABEL_12;
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1CF0BA558()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF0BA590()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1CF0BA6EC(id a1, char a2)
{
  if (a2)
  {
  }
}

_DWORD *sub_1CF0BA754@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1CF0BA780@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

void sub_1CF0BA850(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a2 != 1)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t sub_1CF0BA864(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

unint64_t sub_1CF0BA8D4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF08BAD4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CF0BA900(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

__CFString *defaultsKeyForErrorInjectionCategory(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return @"base";
  }
}

uint64_t errorInjectionCategoryByName(const char *a1)
{
  if (!strcmp(a1, [@"base" UTF8String]))
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

id FPDAppStoreServiceXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4C8C038];
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4C68CD8];
  FPSetOperationClientOnXPCInterface();
  [v0 setInterface:v1 forSelector:sel_startOperation_toFetchAppStoreIconsForAppBundleIDs_desiredSizeToScale_completionHandler_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_1CF0BB434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF0BBFD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x34u);
}

uint64_t fp_configuration_store_int_check(void *a1, void *a2, uint64_t a3, int a4, int a5, int a6)
{
  LODWORD(v7) = a5;
  v19 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = [a1 levelForFactor:v11 withNamespaceName:a3];
  v13 = v12;
  if (v12 && [v12 levelOneOfCase] == 13)
  {
    a4 = [v13 longValue];
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = v11;
      _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_INFO, "[INFO] Unable to load value for %{public}@", &v17, 0xCu);
    }
  }

  if (a4 >= a6)
  {
    v15 = a6;
  }

  else
  {
    v15 = a4;
  }

  if (a4 <= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = v15;
  }

  return v7;
}

uint64_t fp_configuration_store_BOOL_check(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 levelForFactor:a2 withNamespaceName:@"COREOS_FPFS_CONFIG"];
  v5 = v4;
  if (v4 && [v4 levelOneOfCase] == 10)
  {
    a3 = [v5 BOOLeanValue];
  }

  return a3;
}

double fp_configuration_store_double_check(void *a1, void *a2, double a3, double a4, double a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = [a1 levelForFactor:v9 withNamespaceName:@"COREOS_FPFS_CONFIG"];
  v11 = v10;
  if (v10 && [v10 levelOneOfCase] == 15)
  {
    [v11 doubleValue];
    a3 = v12;
  }

  else
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_INFO, "[INFO] Unable to load value for %{public}@", &v16, 0xCu);
    }
  }

  if (a3 < a5)
  {
    v14 = a3;
  }

  else
  {
    v14 = a5;
  }

  if (a3 > a4)
  {
    a4 = v14;
  }

  return a4;
}

uint64_t fp_configuration_store_int64_check(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = [a1 levelForFactor:v11 withNamespaceName:a3];
  v13 = v12;
  if (v12 && [v12 levelOneOfCase] == 13)
  {
    a4 = [v13 longValue];
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = v11;
      _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_INFO, "[INFO] Unable to load value for %{public}@", &v17, 0xCu);
    }
  }

  if (a4 >= a6)
  {
    v15 = a6;
  }

  else
  {
    v15 = a4;
  }

  if (a4 > a5)
  {
    a5 = v15;
  }

  return a5;
}

id fp_configuration_store_string_check(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 levelForFactor:a2 withNamespaceName:@"COREOS_FPFS_CONFIG"];
  v7 = v6;
  if (v6 && [v6 levelOneOfCase] == 11)
  {
    v8 = [v7 stringValue];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

void sub_1CF0C09A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF0C11FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF0CD938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  __fp_leave_section_Debug();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

id OUTLINED_FUNCTION_12(uint64_t a1)
{
  v2 = (*(a1 + 40) + 8);

  return objc_loadWeakRetained(v2);
}

void OUTLINED_FUNCTION_16(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_1CF0D1F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak((v44 + 32));
  objc_destroyWeak((v49 + 32));
  objc_destroyWeak((v48 + 32));
  objc_destroyWeak((v47 + 32));
  objc_destroyWeak(&a39);
  objc_destroyWeak(&a44);
  objc_destroyWeak((v46 + 32));
  objc_destroyWeak((v50 - 136));
  objc_destroyWeak((v50 - 128));
  objc_destroyWeak((v50 - 120));
  __fp_leave_section_Debug();
  _Unwind_Resume(a1);
}

void sub_1CF0D47B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id objectForKeyOfClass(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = [a1 objectForKey:a2];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_1CF0DB690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF0DC038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id internalUserDefaults(uint64_t a1)
{
  if (internalUserDefaults_onceToken != -1)
  {
    internalUserDefaults_cold_1();
  }

  v2 = internalUserDefaults_defaults;

  return v2;
}

void sub_1CF0DD790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v17);
  _Unwind_Resume(a1);
}

void __internalUserDefaults_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
  v1 = internalUserDefaults_defaults;
  internalUserDefaults_defaults = v0;
}

void sub_1CF0DE4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1CF0DE96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1CF0DFAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF0E0B40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1CF0E0E78(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void firstUnlockNotificationCallback(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2[6];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __firstUnlockNotificationCallback_block_invoke;
  block[3] = &unk_1E83BE068;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void pastBuddyNotificationCallback(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2[6];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pastBuddyNotificationCallback_block_invoke;
  block[3] = &unk_1E83BE068;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_1CF0E2654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

uint64_t __firstUnlockNotificationCallback_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] Device was first unlocked", v5, 2u);
  }

  return [*(a1 + 32) _computeUnlockedStatusAndSetup];
}

uint64_t __pastBuddyNotificationCallback_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] Device setup has been run", v5, 2u);
  }

  return [*(a1 + 32) _computeUnlockedStatusAndSetup];
}

void sub_1CF0E3C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1CF0E55BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1CF0E7000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  __fp_leave_section_Debug();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF0E716C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  __fp_leave_section_Debug();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF0E73D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF0E7C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF0EAC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void registerClaim(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (initRequestDictionary_onceToken != -1)
  {
    registerClaim_cold_1();
  }

  v4 = requestPerClaimID;
  objc_sync_enter(v4);
  [requestPerClaimID setObject:v3 forKeyedSubscript:v5];
  objc_sync_exit(v4);
}

void unregisterClaim(void *a1)
{
  v2 = a1;
  if (initRequestDictionary_onceToken != -1)
  {
    registerClaim_cold_1();
  }

  v1 = requestPerClaimID;
  objc_sync_enter(v1);
  [requestPerClaimID setObject:0 forKeyedSubscript:v2];
  objc_sync_exit(v1);
}

void __initRequestDictionary_block_invoke()
{
  v0 = objc_opt_new();
  v1 = requestPerClaimID;
  requestPerClaimID = v0;
}

void sub_1CF0EDC04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF0EE408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void firstUnlockNotificationCallback_0()
{
  v0 = +[FPDAccessControlStore sharedStore];
  [v0 reopenDatabaseAfterUnlock];
}

void sub_1CF0F02E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF0F05DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t checkBundleRecord(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 bundleIdentifier];
  if (!v5)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v3;
      v15 = 2112;
      v16 = v4;
      v8 = "[WARNING] containing bundle %@ for consumer %@ has no bundle identifier";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 22;
LABEL_8:
      _os_log_impl(&dword_1CEFC7000, v9, v10, v8, &v13, v11);
    }

LABEL_9:

    v6 = 0;
    goto LABEL_10;
  }

  if (([v4 hasPrefix:v5] & 1) == 0)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 138412802;
      v14 = v3;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      v8 = "[INFO] containing bundle %@ for consumer %@ has surprising bundle identifier %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_INFO;
      v11 = 32;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v6 = 1;
LABEL_10:

  return v6;
}

void sub_1CF0F0CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __accessControlBaseURL_block_invoke()
{
  v0 = MEMORY[0x1E695DFF8];
  if (accessControlDirectory_onceToken != -1)
  {
    __accessControlBaseURL_block_invoke_cold_1();
  }

  v1 = accessControlDirectory_dir;
  v4 = [v1 stringByAppendingPathComponent:@"AccessControl"];
  v2 = [v0 fileURLWithPath:v4 isDirectory:0];
  v3 = accessControlBaseURL_url;
  accessControlBaseURL_url = v2;
}

void __accessControlDirectory_block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] fp_supportDirectory];
  v1 = [v0 path];
  v2 = accessControlDirectory_dir;
  accessControlDirectory_dir = v1;

  v3 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v3 fileExistsAtPath:accessControlDirectory_dir isDirectory:0] & 1) == 0)
  {
    v8 = 0;
    v4 = [v3 createDirectoryAtPath:accessControlDirectory_dir withIntermediateDirectories:1 attributes:0 error:&v8];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __accessControlDirectory_block_invoke_cold_1(v5);
      }

      fp_simulate_crash();
      v7 = fp_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __accessControlDirectory_block_invoke_cold_2();
      }
    }
  }
}

id containingApplicationRecord(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }

  v2 = 0;
LABEL_7:

  return v2;
}

void OUTLINED_FUNCTION_3_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

void sub_1CF0F1BB0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  __fp_leave_section_Debug();
  _Unwind_Resume(a1);
}

void sub_1CF0F2030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  objc_sync_exit(v18);
  __fp_leave_section_Debug();
  _Unwind_Resume(a1);
}

void sub_1CF0F2158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  objc_sync_exit(v10);
  __fp_leave_section_Debug();
  _Unwind_Resume(a1);
}

void sub_1CF0F276C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  objc_sync_exit(obj);
  __fp_leave_section_Debug();
  _Unwind_Resume(a1);
}

void sub_1CF0F2A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  objc_sync_exit(v20);
  __fp_leave_section_Debug();
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1CF0F33D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF0F43C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF0F6BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  __fp_leave_section_Notice();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF0F873C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a32, 8);
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF0F99F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  __fp_leave_section_Debug();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF0F9D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  __fp_leave_section_Debug();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void __providedItemsOperationQueue_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = providedItemsOperationQueue_operationQueue;
  providedItemsOperationQueue_operationQueue = v0;

  [providedItemsOperationQueue_operationQueue setMaxConcurrentOperationCount:1];
  v2 = objc_opt_new();
  v3 = fileCoordinationProviderByURL;
  fileCoordinationProviderByURL = v2;
}

void ___executableNameIsBlockedForMaterialization_block_invoke()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 addSuiteNamed:@"com.apple.fileproviderd"];
  v1 = [MEMORY[0x1E695DFA8] setWithArray:&unk_1F4C628E0];
  v2 = _executableNameIsBlockedForMaterialization_blockedProcesses;
  _executableNameIsBlockedForMaterialization_blockedProcesses = v1;

  v3 = [v0 arrayForKey:@"vfs-materialization.exclude.processes"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [_executableNameIsBlockedForMaterialization_blockedProcesses addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v9 = [v0 arrayForKey:@"vfs-materialization.include.processes"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [_executableNameIsBlockedForMaterialization_blockedProcesses removeObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }
}

void OUTLINED_FUNCTION_13_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_1CF103880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  objc_sync_exit(v16);
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void addRootPathKeys(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v4 rootURLs];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * v10) fp_realpathURL];
          v12 = [v11 path];
          [v3 setObject:v5 forKeyedSubscript:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

void removeRootPathKeys(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && a2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [a2 rootURLs];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * v8) fp_realpathURL];
          v10 = [v9 path];
          [v3 removeObjectForKey:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

void sub_1CF1042E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose((v26 - 160), 8);
  __fp_leave_section_Notice();
  _Unwind_Resume(a1);
}

void sub_1CF104C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose((v38 - 160), 8);
  __fp_leave_section_Notice();
  _Unwind_Resume(a1);
}

void sub_1CF107498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id obj, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_sync_exit(obj);
  __fp_leave_section_Notice();
  _Unwind_Resume(a1);
}

void sub_1CF10880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  __fp_leave_section_Debug();
  objc_sync_exit(v26);
  _Unwind_Resume(a1);
}

void sub_1CF10A164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  objc_sync_exit(v43);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v44 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_13_1(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_15_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_1CF10EAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF10F0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF110BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF110E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__54(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1CF1116A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF111864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __schedulers_block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v1 = schedulers_allSchedulers;
  schedulers_allSchedulers = v0;
}

void __internalQueueForBGST_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.fileproviderd.bgst-manipulation", v2);
  v1 = internalQueueForBGST_bgstQueue;
  internalQueueForBGST_bgstQueue = v0;
}

id fp_resolver_log(uint64_t a1)
{
  if (fp_resolver_log_once != -1)
  {
    fp_resolver_log_cold_1();
  }

  v2 = fp_resolver_log_logger;

  return v2;
}

void __fp_resolver_log_block_invoke()
{
  v0 = os_log_create("com.apple.FileProvider", "Resolver");
  v1 = fp_resolver_log_logger;
  fp_resolver_log_logger = v0;
}

id FPSerialNumber(uint64_t a1)
{
  if (FPSerialNumber_pred[0] != -1)
  {
    FPSerialNumber_cold_1();
  }

  v2 = FPSerialNumber_SerialNumber;

  return v2;
}

void __FPSerialNumber_block_invoke()
{
  if (fpfs_is_internal_build())
  {
    v0 = MGCopyAnswerWithError();
    v1 = v0;
    if (v0 && [v0 length])
    {
      v2 = v1;
      v3 = FPSerialNumber_SerialNumber;
      FPSerialNumber_SerialNumber = v2;
    }

    else
    {
      v3 = fp_current_or_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __FPSerialNumber_block_invoke_cold_1();
      }
    }
  }
}

void FPLogApplicationVersions(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 URL];
    v7 = [v6 fp_shortDescription];
    v8 = [v4 URL];
    v9 = [v8 fp_shortDescription];
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] applicationForCaller=%{public}@, applicationForRunningProvider=%{public}@", &v10, 0x16u);
  }
}

uint64_t FPGetRelation(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (([v3 isEqual:v4] & 1) == 0)
  {
    v6 = [v3 bundleVersion];
    v7 = [v4 bundleVersion];
    v8 = v7;
    if (v6)
    {
      if (!v7)
      {
        v11 = fp_current_or_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEFAULT, "[NOTICE] Application version for running provider not found.", &v17, 2u);
        }

        FPLogApplicationVersions(v3, v4);
        goto LABEL_19;
      }

      if ([v6 isEqualToString:v7])
      {
        v9 = fp_current_or_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          FPGetRelation_cold_1();
        }

        v5 = 0;
        goto LABEL_24;
      }

      v12 = [MEMORY[0x1E6963608] defaultWorkspace];
      v13 = [v12 isVersion:v6 greaterThanOrEqualToVersion:v8];

      v14 = fp_current_or_default_log();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          v17 = 138412546;
          v18 = v6;
          v19 = 2112;
          v20 = v8;
          _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[NOTICE] callerVersion > runningVersion, returning FPVersionRelationCallerNewer. %@ > %@", &v17, 0x16u);
        }

LABEL_19:
        v5 = 1;
LABEL_24:

        goto LABEL_25;
      }

      if (v15)
      {
        v17 = 138412546;
        v18 = v6;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[NOTICE] callerVersion < runningVersion, returning FPVersionRelationCallerOlder. %@ < %@", &v17, 0x16u);
      }
    }

    else
    {
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEFAULT, "[NOTICE] Application version for calling provider not found.", &v17, 2u);
      }

      FPLogApplicationVersions(v3, v4);
    }

    v5 = 2;
    goto LABEL_24;
  }

  v5 = 0;
LABEL_25:

  return v5;
}

void sub_1CF11BBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  __fp_pop_log();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF11F0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  __fp_pop_log();
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF1281A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void hasNonUploadedFiles(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count])
  {
    v5 = [v3 lastObject];
    [v3 removeLastObject];
    v6 = [v5 defaultBackend];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __hasNonUploadedFiles_block_invoke;
    v7[3] = &unk_1E83C0948;
    v9 = v4;
    v8 = v3;
    [v6 hasNonUploadedFilesWithCompletionHandler:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

void sub_1CF13778C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF14B1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  __fp_pop_log();
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __hasNonUploadedFiles_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    hasNonUploadedFiles(*(a1 + 32), *(a1 + 40));
  }
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  *(a2 + 22) = 2080;
  return result;
}

void OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2)
{
  *(a2 + 22) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v2;
  *(a2 + 34) = 0;
  *(a2 + 42) = v2;
  *(a2 + 44) = 0;
}

void OUTLINED_FUNCTION_11_1(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = v2;
  *(a2 + 32) = v3;
  *(a2 + 34) = 0;
}

void OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2)
{
  *(a2 + 34) = v3;
  *(a2 + 42) = v2;
  *(a2 + 44) = 0;
}

id FPDFPCKServiceXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4C8C450];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v1 setWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_prepareFPCKForDomain_domainUserInfo_domainRootURL_databaseBackupPath_accessingPaths_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_completionHandler_ argumentIndex:1 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v0 setClasses:v8 forSelector:sel_prepareFPCKForDomain_domainUserInfo_domainRootURL_databaseBackupPath_accessingPaths_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_completionHandler_ argumentIndex:4 ofReply:0];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v0 setClasses:v11 forSelector:sel_prepareFPCKForDomain_domainUserInfo_domainRootURL_databaseBackupPath_accessingPaths_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_completionHandler_ argumentIndex:5 ofReply:0];

  v12 = FPDFPCKUpdateReceivingXPCInterface();
  [v0 setInterface:v12 forSelector:sel_runFPCKWithPauseHandler_contentBarrier_completionHandler_ argumentIndex:0 ofReply:0];

  return v0;
}

id FPDFPCKUpdateReceivingXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4C7CE00];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v1 setWithObjects:{v2, v3, v4, v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_saveCheckpointWithReport_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_1CF14D028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  __fp_pop_log();
  _Unwind_Resume(a1);
}

void sub_1CF14DB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF14EA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v7 - 56));
  __fp_leave_section_Debug();
  _Unwind_Resume(a1);
}

void __appStoreServiceConnection_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __appStoreServiceConnection_block_invoke_cold_1(v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __appStoreServiceConnection_block_invoke_124(uint64_t a1, uint64_t a2)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __appStoreServiceConnection_block_invoke_124_cold_1();
  }
}

void sub_1CF14F668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __hardcodedUUIDs_block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"/System/Library/PrivateFrameworks/DocumentManagerUICore.framework";
  v0 = [MEMORY[0x1E6967518] _dmIdentifier];
  v4[1] = @"/System/Library/PrivateFrameworks/DesktopServicesPriv.framework";
  v5[0] = v0;
  v1 = [MEMORY[0x1E6967518] _dsIdentifier];
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = hardcodedUUIDs_ret;
  hardcodedUUIDs_ret = v2;
}

void sub_1CF153064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getDEExtensionManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDEExtensionManagerClass_softClass;
  v7 = getDEExtensionManagerClass_softClass;
  if (!getDEExtensionManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDEExtensionManagerClass_block_invoke;
    v3[3] = &unk_1E83C0CC0;
    v3[4] = &v4;
    __getDEExtensionManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CF155288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF1556D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

Class __getDEExtensionManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!DiagnosticExtensionsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __DiagnosticExtensionsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E83C0CE0;
    v5 = 0;
    DiagnosticExtensionsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!DiagnosticExtensionsLibraryCore_frameworkLibrary)
  {
    __getDEExtensionManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("DEExtensionManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDEExtensionManagerClass_block_invoke_cold_1();
  }

  getDEExtensionManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DiagnosticExtensionsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  DiagnosticExtensionsLibraryCore_frameworkLibrary = result;
  return result;
}

char *fpfs_fsevent_stream_open(const char *a1, uint64_t a2, uint64_t a3, const __CFArray *a4, FSEventStreamEventId a5, FSEventStreamCreateFlags a6, void *a7, CFTimeInterval a8)
{
  v15 = a7;
  v16 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A0040A8140769uLL);
  v17 = v16;
  if (v16)
  {
    snprintf(v16, 0x41uLL, "%s", a1);
    *(v17 + 80) = a2;
    *(v17 + 88) = a3;
    *(v17 + 96) = 0;
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      fpfs_fsevent_stream_open_cold_1(v17, v18);
    }

    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = v17;
    v19 = FSEventStreamCreate(0, _internalFSEventStreamCallback, &context, a4, a5, a8, a6);
    *(v17 + 72) = v19;
    FSEventStreamSetDispatchQueue(v19, v15);
  }

  return v17;
}

uint64_t _internalFSEventStreamCallback(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(a2 + 80))(result, *(a2 + 88));
  }

  return result;
}

uint64_t fpfs_fsevent_stream_get_wrapped(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void fpfs_fsevent_stream_flush(uint64_t a1)
{
  if (a1)
  {
    FSEventStreamFlushSync(*(a1 + 72));
  }
}

void fpfs_fsevent_stream_suspend(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      fpfs_fsevent_stream_suspend_cold_1(a1, v3);
    }

    os_unfair_lock_lock((a1 + 96));
    FSEventStreamStop(*(a1 + 72));
    os_unfair_lock_unlock((a1 + 96));
  }
}

void fpfs_fsevent_stream_resume(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 96));
    FSEventStreamStart(*(a1 + 72));

    os_unfair_lock_unlock((a1 + 96));
  }
}

void fpfs_fsevent_stream_close(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 96));
    v2 = *(a1 + 72);
    *(a1 + 72) = 0;
    FSEventStreamStop(v2);
    os_unfair_lock_unlock((a1 + 96));
    FSEventStreamInvalidate(v2);
    FSEventStreamRelease(v2);

    free(a1);
  }
}

void sub_1CF1595E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF15A008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fseventsCallback(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = objc_autoreleasePoolPush();
  if (a3)
  {
    context = v11;
    v33 = a2;
    v35 = fpfs_adopt_log();
    v12 = a4;
    v31 = objc_opt_new();
    v34 = v12;
    if (v12 && [v12 count] == a3)
    {
      v13 = a3 - 1;
      if (a3 >= 1)
      {
        v30 = 0;
        while (1)
        {
          v14 = objc_autoreleasePoolPush();
          if (v33[81] != 1)
          {
            break;
          }

          v15 = fp_current_or_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v37 = (v13 + 1);
            _os_log_debug_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] draining %zd fsevents", buf, 0xCu);
          }

          v16 = 1;
LABEL_18:

          objc_autoreleasePoolPop(v14);
          if (v16 != 7 && v16)
          {
            goto LABEL_29;
          }

          if (--v13 >= 0xFFFFFFFFFFFFFFFELL)
          {
            goto LABEL_28;
          }
        }

        v17 = *(a5 + 4 * v13);
        v18 = [v34 objectAtIndexedSubscript:v13];
        v15 = [v18 objectForKey:@"path"];

        v19 = [v34 objectAtIndexedSubscript:v13];
        v32 = [v19 objectForKey:@"fileID"];

        v20 = [v34 objectAtIndexedSubscript:v13];
        v21 = [v20 objectForKey:@"docID"];

        v22 = -[FPFSChangeRecord initWithPath:fileID:docID:flags:eventID:]([FPFSChangeRecord alloc], "initWithPath:fileID:docID:flags:eventID:", v15, [v32 unsignedLongLongValue], objc_msgSend(v21, "unsignedIntValue"), v17, *(a6 + 8 * v13));
        v23 = v33;
        objc_sync_enter(v23);
        if (v33[86] == 1)
        {
          v24 = ([(FPFSChangeRecord *)v22 flags]>> 19) & 1;
          if ((v24 & v30) != 0)
          {
            objc_sync_exit(v23);

            v16 = 7;
            v30 = 1;
LABEL_17:

            goto LABEL_18;
          }

          v30 |= v24;
        }

        objc_sync_exit(v23);

        v25 = fp_current_or_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v37 = (v13 + 1);
          v38 = 2048;
          v39 = a3;
          v40 = 2112;
          v41 = v22;
          _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] Enqueuing event: %zd/%zd %@", buf, 0x20u);
        }

        [v31 insertObject:v22 atIndex:0];
        v16 = 0;
        goto LABEL_17;
      }

      LOBYTE(v30) = 0;
LABEL_28:
      [v33 queueEvents:v31 markSelfEncountered:v30 & 1];
    }

    else
    {
      v26 = [MEMORY[0x1E696AD60] string];
      v27 = 0;
      do
      {
        [v26 appendFormat:@"<id:%llu, flg:0x%x> ", *(a6 + 8 * v27), *(a5 + 4 * v27)];
        ++v27;
      }

      while (a3 != v27);
      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        v37 = v34;
        v38 = 2048;
        v39 = a3;
        v40 = 2048;
        v41 = [v34 count];
        v42 = 2112;
        v43 = v26;
        _os_log_error_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_ERROR, "[ERROR] Dropping FSEvent, eventPaths=%p with numEvents=%zd (eventInfo.count=%lu): %@", buf, 0x2Au);
      }

      [v33 resetWithReason:7 newFSEventID:-1];
    }

LABEL_29:

    __fp_pop_log();
    v11 = context;
  }

  objc_autoreleasePoolPop(v11);
}

void sub_1CF15B2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fpfs_generate_fsevent_at(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AFB0] UUID];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [v1 UUIDString];
  v4 = [v2 stringWithFormat:@".notify.%@.nosync", v3];

  [v4 fileSystemRepresentation];
  v6 = v4;
  v5 = v4;
  fpfs_openat();
}

uint64_t __fpfs_generate_fsevent_at_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) fileSystemRepresentation];

  return unlinkat(v1, v2, 0);
}

NSObject *fpfs_set_unlock_timer_handler(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dup(a1);
  if (v7 < 0)
  {
    v6[2](v6);
    v10 = 0;
  }

  else
  {
    v8 = v7;
    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v5);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpfs_set_unlock_timer_handler_block_invoke;
    block[3] = &unk_1E83C0F40;
    v18 = v8;
    v17 = v6;
    v10 = v9;
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
    dispatch_source_set_event_handler(v10, v11);

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __fpfs_set_unlock_timer_handler_block_invoke_2;
    handler[3] = &__block_descriptor_36_e5_v8__0l;
    v15 = v8;
    dispatch_source_set_cancel_handler(v10, handler);
    v12 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v10, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(v10);
  }

  return v10;
}

uint64_t __fpfs_set_unlock_timer_handler_block_invoke(uint64_t a1)
{
  result = fpfs_file_is_flocked();
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

NSObject *fpfs_set_unlock_handler(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dup(a1);
  if ((v7 & 0x80000000) != 0)
  {
    v6[2](v6);
    v11 = 0;
  }

  else
  {
    v8 = v7;
    v9 = dispatch_source_create(MEMORY[0x1E69E9728], v7, 0x141uLL, v5);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __fpfs_set_unlock_handler_block_invoke;
    handler[3] = &unk_1E83C0F40;
    v17 = v8;
    v10 = v6;
    v16 = v10;
    dispatch_source_set_event_handler(v9, handler);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __fpfs_set_unlock_handler_block_invoke_2;
    v13[3] = &__block_descriptor_36_e5_v8__0l;
    v14 = v8;
    dispatch_source_set_cancel_handler(v9, v13);
    dispatch_resume(v9);
    if (fpfs_file_is_flocked())
    {
      v11 = v9;
    }

    else
    {
      dispatch_source_cancel(v9);
      v10[2](v10);
      v11 = 0;
    }
  }

  return v11;
}

uint64_t __fpfs_set_unlock_handler_block_invoke(uint64_t a1)
{
  result = fpfs_file_is_flocked();
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

fp_task_tracker *fp_task_tracker_create(const char *a1)
{
  v2 = objc_alloc_init(fp_task_tracker);
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = "unlabeled";
  }

  v2->label = strdup(v3);
  v4 = dispatch_group_create();
  group = v2->group;
  v2->group = v4;

  return v2;
}

uint64_t __fp_task_tracker_async_and_qos_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void fp_task_tracker_cancel(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    fp_task_tracker_cancel_cold_1();
  }

  atomic_store(1u, v1 + 24);
}

void fp_task_tracker_sync(void *a1, void *a2, void *a3)
{
  v10 = a1;
  v5 = a2;
  v6 = a3;
  if (!v10)
  {
    fp_task_tracker_sync_cold_1();
  }

  v7 = v6;
  dispatch_group_enter(*(v10 + 2));
  v8 = atomic_load(v10 + 24);
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v9[2]();
  dispatch_group_leave(*(v10 + 2));
}

id fileProviderDirectory()
{
  v0 = [MEMORY[0x1E695DFF8] fp_supportDirectory];
  v1 = [v0 path];

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v2 fileExistsAtPath:v1 isDirectory:0] & 1) == 0)
  {
    v7 = 0;
    v3 = [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v7];
    v4 = v7;
    if ((v3 & 1) == 0)
    {
      v5 = fp_current_or_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        fileProviderDirectory_cold_1(v4);
      }
    }
  }

  return v1;
}

id alternateContentsPlistURL(uint64_t a1)
{
  if (alternateContentsPlistURL_onceToken != -1)
  {
    alternateContentsPlistURL_cold_1();
  }

  v2 = alternateContentsPlistURL_url;

  return v2;
}

id pausedSyncItemslistURL(uint64_t a1)
{
  if (pausedSyncItemslistURL_onceToken != -1)
  {
    pausedSyncItemslistURL_cold_1();
  }

  v2 = pausedSyncItemslistURL_url;

  return v2;
}

void __alternateContentsPlistURL_block_invoke()
{
  v0 = MEMORY[0x1E695DFF8];
  v4 = fileProviderDirectory();
  v1 = [v4 stringByAppendingPathComponent:@"AlternateContents.plist"];
  v2 = [v0 fileURLWithPath:v1 isDirectory:0];
  v3 = alternateContentsPlistURL_url;
  alternateContentsPlistURL_url = v2;
}

void __pausedSyncItemslistURL_block_invoke()
{
  v0 = MEMORY[0x1E695DFF8];
  v4 = fileProviderDirectory();
  v1 = [v4 stringByAppendingPathComponent:@"pausedSyncItems.plist"];
  v2 = [v0 fileURLWithPath:v1 isDirectory:0];
  v3 = pausedSyncItemslistURL_url;
  pausedSyncItemslistURL_url = v2;
}

void sub_1CF16CF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF16F050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF1723FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF176B8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

BOOL fsevents_docidpath_parse(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = (a1 + 6);
  do
  {
    v8 = *(v7 - 6);
    ++v7;
  }

  while (v8 == 47);
  if (strncmp(v7 - 7, ".docid/", 7uLL))
  {
    return 0;
  }

  __endptr = v7;
  if ((*v7 - 48) <= 9)
  {
    *__error() = 0;
    strtoll(v7, &__endptr, 10);
    if (*__error())
    {
      return 0;
    }

    v7 = __endptr + 1;
    if (*__endptr != 47)
    {
      return 0;
    }
  }

  if (strncmp(v7, "changed/", 8uLL))
  {
    return 0;
  }

  v10 = v7 + 8;
  __endptr = v10;
  *__error() = 0;
  v11 = strtoll(v10, &__endptr, 10);
  if (*__error())
  {
    return 0;
  }

  *a2 = v11;
  v12 = __endptr;
  if (strncmp(__endptr, "/src=", 5uLL))
  {
    return 0;
  }

  v13 = v12 + 5;
  __endptr = v13;
  *__error() = 0;
  v14 = strtoll(v13, &__endptr, 10);
  if (*__error())
  {
    return 0;
  }

  *a3 = v14;
  v15 = __endptr;
  if (strncmp(__endptr, ",dst=", 5uLL))
  {
    return 0;
  }

  v16 = v15 + 5;
  __endptr = v16;
  *__error() = 0;
  v17 = strtoll(v16, &__endptr, 10);
  if (*__error())
  {
    return 0;
  }

  *a4 = v17;
  return *__endptr == 0;
}