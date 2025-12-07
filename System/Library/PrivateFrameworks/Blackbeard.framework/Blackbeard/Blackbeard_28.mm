uint64_t sub_1E619C53C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RoutingContextAction(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for NavigationControllerRoutingContext(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6191B74(a1, v1 + v6, v1 + v9);
}

uint64_t sub_1E619C678()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1E618C784(v2, v3, v4);
}

uint64_t sub_1E619C6E8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E618C998(a1, v6, v7, v8, v9, v1 + v5);
}

void sub_1E619C7F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  JUMPOUT(0x1E6198804);
}

uint64_t sub_1E619C90C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E5DF7474(a1, v4);
}

uint64_t sub_1E619C9C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E619CA14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v59 = a3;
  v6 = type metadata accessor for AppComposer(0);
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076038, &qword_1E65F4908);
  v12 = *(v11 - 8);
  v57 = v11;
  v58 = v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v55 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v44 - v15;
  v16 = sub_1E65DCA88();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - v21;
  v47 = v3;
  v49 = sub_1E619CF08(a1, a2);
  v54 = v22;
  sub_1E63D53AC(v49, v22);
  v45 = type metadata accessor for AppComposer;
  sub_1E5E1D624(v3, v10, type metadata accessor for AppComposer);
  v23 = *(v17 + 16);
  v51 = v16;
  v23(v20, v22, v16);
  v24 = *(v50 + 80);
  v25 = (v24 + 16) & ~v24;
  v26 = v25 + v7;
  v46 = v24 | 7;
  v27 = *(v17 + 80);
  v52 = v17;
  v28 = (v26 + v27) & ~v27;
  v29 = swift_allocObject();
  sub_1E5E1E250(v10, v29 + v25, type metadata accessor for AppComposer);
  (*(v17 + 32))(v29 + v28, v20, v16);
  v30 = v53;
  sub_1E5E1D624(v47, v53, v45);
  sub_1E5DF650C(v48, v60);
  v31 = a2[3];
  v44 = *a2;
  v45 = v31;
  v32 = a2[7];
  v47 = a2[5];
  v48 = v32;
  v50 = a2[9];
  v33 = (v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_1E5E1E250(v30, v35 + v25, type metadata accessor for AppComposer);
  *(v35 + v33) = v49;
  sub_1E5DF599C(v60, v35 + v34);
  v36 = (v35 + ((v34 + 47) & 0xFFFFFFFFFFFFFFF8));
  v37 = *(a2 + 3);
  v36[2] = *(a2 + 2);
  v36[3] = v37;
  v36[4] = *(a2 + 4);
  v38 = *(a2 + 1);
  *v36 = *a2;
  v36[1] = v38;
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076040, &qword_1E65F4910);
  sub_1E619FB2C();
  v39 = v55;
  sub_1E65DCAF8();
  (*(v52 + 8))(v54, v51);
  sub_1E5FED46C(&qword_1ED076080, &qword_1ED076038, &qword_1E65F4908, MEMORY[0x1E699EE90]);
  v41 = v56;
  v40 = v57;
  sub_1E5FEE4C8();
  v42 = *(v58 + 8);
  v42(v39, v40);
  sub_1E5FEE4C8();
  return (v42)(v41, v40);
}

uint64_t sub_1E619CF08(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = v52 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v52 - v9;
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v79 = v52 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v78 = v52 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v52 - v19;
  v22 = v21;
  v58 = v21;
  MEMORY[0x1EEE9AC00](v18);
  v24 = v52 - v23;
  v60 = 0x80000001E6613F30;
  sub_1E5E1D624(v2, v52 - v23, type metadata accessor for AppComposer);
  sub_1E5DF650C(a1, &v85);
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = (v25 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v11 + 80);
  v28 = swift_allocObject();
  v81 = v28;
  sub_1E5E1E250(v24, v28 + v25, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v85, v28 + v26);
  sub_1E5E1D624(v3, v20, type metadata accessor for AppComposer);
  v52[7] = *a2;
  v52[8] = a2[3];
  v52[9] = a2[5];
  v52[10] = a2[7];
  v52[11] = a2[9];
  v29 = swift_allocObject();
  v61 = v29;
  sub_1E5E1E250(v20, v29 + v25, type metadata accessor for AppComposer);
  v30 = (v29 + v26);
  v31 = *(a2 + 3);
  v30[2] = *(a2 + 2);
  v30[3] = v31;
  v30[4] = *(a2 + 4);
  v32 = *(a2 + 1);
  *v30 = *a2;
  v30[1] = v32;
  v33 = v78;
  v55 = type metadata accessor for AppComposer;
  sub_1E5E1D624(v3, v78, type metadata accessor for AppComposer);
  v54 = v27;
  v80 = swift_allocObject();
  v56 = type metadata accessor for AppComposer;
  sub_1E5E1E250(v33, v80 + v25, type metadata accessor for AppComposer);
  v53 = v3;
  v34 = v79;
  sub_1E5E1D624(v3, v79, type metadata accessor for AppComposer);
  v78 = swift_allocObject();
  sub_1E5E1E250(v34, v78 + v25, type metadata accessor for AppComposer);
  v59 = *v3;
  v79 = type metadata accessor for ActionButtonDescriptor(0);
  v77 = type metadata accessor for ArtworkDescriptor(0);
  v76 = type metadata accessor for ContextMenu(0);
  v75 = type metadata accessor for ItemContext(0);
  v74 = type metadata accessor for ItemMetrics(0);
  v73 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v72 = type metadata accessor for SectionMetrics(0);
  v52[6] = type metadata accessor for ViewDescriptor(0);
  v71 = sub_1E61A3DB4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v70 = sub_1E61A3DB4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v69 = sub_1E61A3DB4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v52[5] = sub_1E61A3DB4(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v52[4] = sub_1E61A3DB4(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v52[3] = sub_1E61A3DB4(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v52[2] = sub_1E61A3DB4(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  v52[1] = sub_1E61A3DB4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  v52[0] = sub_1E61A3DB4(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E61A3DB4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  swift_unknownObjectRetain();

  sub_1E65DC178();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v36 = sub_1E65DC168();
  v83 = v35;
  v84 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70, MEMORY[0x1E699D718]);
  v82 = v36;
  v37 = v63;
  sub_1E65DC248();
  v38 = v62;
  sub_1E5E1D624(v53, v62, v55);
  v39 = (v54 + 32) & ~v54;
  v40 = (v58 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v60;
  *(v41 + 16) = 0xD000000000000013;
  *(v41 + 24) = v42;
  sub_1E5E1E250(v38, v41 + v39, v56);
  v43 = (v41 + v40);
  *v43 = sub_1E5F8AA74;
  v43[1] = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 0xD000000000000013;
  *(v44 + 24) = v42;
  type metadata accessor for AppFeature(0);
  sub_1E61A3DB4(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98, MEMORY[0x1E699D758]);
  v45 = v65;
  v46 = v64;
  sub_1E65E4DE8();
  v47 = swift_allocObject();
  v48 = v61;
  *(v47 + 16) = sub_1E61A43C4;
  *(v47 + 24) = v48;

  sub_1E65E4CC8();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1E5FE9CE8;
  *(v49 + 24) = v47;

  v50 = sub_1E65E4F08();

  (*(v67 + 8))(v45, v68);
  (*(v66 + 8))(v37, v46);
  return v50;
}

uint64_t sub_1E619DBC4(uint64_t *a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for AppComposer(0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760C8, &qword_1E65F4960);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = sub_1E65DCA88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65DCC18();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  (*(v9 + 16))(v11, v21, v8);
  sub_1E65DCC08();
  sub_1E5E1D624(a1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v16 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v17 = swift_allocObject();
  sub_1E5E1E250(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AppComposer);
  type metadata accessor for AppFeature(0);
  sub_1E61A3DB4(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E61A3DB4(&qword_1ED0760D0, MEMORY[0x1E699EEB0], MEMORY[0x1E699EEA8]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v18 = sub_1E65E4F08();
  (*(v24 + 8))(v7, v25);
  (*(v13 + 8))(v15, v12);
  return v18;
}

uint64_t sub_1E619DFA4()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DCA88() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E619DBC4((v0 + v2), v5);
}

uint64_t sub_1E619E070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v39 - v8;
  v9 = sub_1E65D7848();
  v10 = *(v9 - 8);
  v41 = v9;
  v42 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1E65DD0F8();
  v12 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1E65DD0A8();
  v15 = *(v40 - 8);
  v16 = MEMORY[0x1EEE9AC00](v40);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v39 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v45 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v48 = &v39 - v24;
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128);
  v25 = *(a2 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  sub_1E65DAE08();
  v26 = v41;
  sub_1E65DD068();
  sub_1E637A69C();
  v43 = v21;
  sub_1E65DCFE8();
  (*(v12 + 8))(v14, v49);
  v27 = *(v15 + 8);
  v28 = v18;
  v29 = v40;
  v30 = v42;
  v27(v28, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v49 = a1;
  v31 = v46;
  sub_1E65E4C98();
  v32 = v44;
  sub_1E5E1F544(v44);
  sub_1E5DFE50C(v31, &qword_1ED071F78, &unk_1E65EA3F0);
  v33 = *(v30 + 48);
  if (v33(v32, 1, v26) == 1)
  {
    v34 = v47;
    sub_1E65D77C8();
    if (v33(v32, 1, v26) != 1)
    {
      sub_1E5DFE50C(v32, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    v34 = v47;
    (*(v30 + 32))(v47, v32, v26);
  }

  v35 = v45;
  v36 = v43;
  sub_1E65DCFF8();
  (*(v30 + 8))(v34, v26);
  v27(v36, v29);
  if (v25 < 2 || v25 == 3)
  {
    v37 = v48;
    sub_1E65DD028();
    v27(v35, v29);
    sub_1E63969B4();
    sub_1E65DD058();
    return (v27)(v37, v29);
  }

  else
  {
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E619E5D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for AppState(0) + 276);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v5 = sub_1E65DD0A8();
  v6 = *(*(v5 - 8) + 24);

  return v6(v3 + v4, a2, v5);
}

uint64_t sub_1E619E670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v132 = a3;
  v133 = a1;
  v134 = a2;
  v130 = a5;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076058, &qword_1E65F4918);
  MEMORY[0x1EEE9AC00](v128);
  v129 = v93 - v6;
  v7 = type metadata accessor for AppComposer(0);
  v8 = v7 - 8;
  v121 = *(v7 - 8);
  v9 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v123 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v119 = v93 - v10;
  v131 = sub_1E65D76F8();
  v120 = *(v131 - 8);
  v11 = *(v120 + 64);
  v12 = MEMORY[0x1EEE9AC00](v131);
  v124 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v122 = v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v93 - v18;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076068, &qword_1E65F4920);
  v118 = *(v126 - 8);
  v20 = MEMORY[0x1EEE9AC00](v126);
  v22 = v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v93 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = v93 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = v93 - v29;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076040, &qword_1E65F4910);
  v31 = MEMORY[0x1EEE9AC00](v133);
  v33 = v93 - v32;
  v34 = *(v31 + *(v8 + 28) + 8);
  v125 = v33;
  if (v34 < 2)
  {
    v35 = v123;
    sub_1E5E1D624(v31, v123, type metadata accessor for AppComposer);
    sub_1E5DF650C(v132, &v137);
    v36 = *(a4 + 56);
    v131 = *(a4 + 40);
    v132 = v36;
    v133 = *(a4 + 72);
    v37 = (*(v121 + 80) + 16) & ~*(v121 + 80);
    v38 = (v9 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    sub_1E5E1E250(v35, v40 + v37, type metadata accessor for AppComposer);
    *(v40 + v38) = v134;
    sub_1E5DF599C(&v137, v40 + v39);
    v41 = (v40 + ((v39 + 47) & 0xFFFFFFFFFFFFFFF8));
    v42 = *(a4 + 48);
    v41[2] = *(a4 + 32);
    v41[3] = v42;
    v41[4] = *(a4 + 64);
    v43 = *(a4 + 16);
    *v41 = *a4;
    v41[1] = v43;

    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076088, &qword_1E65F4930);
    sub_1E61A1148();
    *&v136 = sub_1E65E3E28();
    *(&v136 + 1) = v44;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076078, &qword_1E65F4928);
    v46 = sub_1E5FED46C(&qword_1ED076070, &qword_1ED076078, &qword_1E65F4928, MEMORY[0x1E697C268]);
    sub_1E5FEE4C8();

    v135 = v137;
    sub_1E5FEE4C8();
    v135 = v136;
    v47 = sub_1E5FED46C(&qword_1ED076060, &qword_1ED076068, &qword_1E65F4920, MEMORY[0x1E699D728]);
    v48 = v129;
    sub_1E62DFB74(&v135, v126, v45, v47, v46);
    v49 = sub_1E619FBB8();
    v50 = v125;
    sub_1E62DFC6C(v48, v128, MEMORY[0x1E69E73E0], v49, MEMORY[0x1E6982070]);
    sub_1E5DFE50C(v48, &qword_1ED076058, &qword_1E65F4918);

    v51 = v50;
LABEL_5:
    sub_1E619FB2C();
    sub_1E5FEE4C8();
    return sub_1E5DFE50C(v51, &qword_1ED076040, &qword_1E65F4910);
  }

  v108 = v9;
  v109 = v11;
  v110 = v17;
  v111 = v22;
  v112 = v25;
  v52 = v122;
  v53 = v119;
  v113 = v30;
  v114 = v28;
  if (v34 == 3)
  {
    v54 = sub_1E65E3E08();
    v55 = *(*(v54 - 8) + 56);
    v115 = v19;
    v55(v19, 1, 1, v54);
    sub_1E65D76E8();
    (*(v116 + 104))(v53, *MEMORY[0x1E699D720], v117);
    v56 = v133;
    v57 = v123;
    sub_1E5E1D624(v133, v123, type metadata accessor for AppComposer);
    v58 = *(v121 + 80);
    v59 = ((v58 + 16) & ~v58) + v108;
    v60 = (v58 + 16) & ~v58;
    v61 = v58 | 7;
    v121 = swift_allocObject();
    sub_1E5E1E250(v57, v121 + v60, type metadata accessor for AppComposer);
    sub_1E5E1D624(v56, v57, type metadata accessor for AppComposer);
    v117 = swift_allocObject();
    sub_1E5E1E250(v57, v117 + v60, type metadata accessor for AppComposer);
    v100 = type metadata accessor for AppComposer;
    sub_1E5E1D624(v56, v57, type metadata accessor for AppComposer);
    v101 = v59;
    v98 = v61;
    v116 = swift_allocObject();
    v94 = v60;
    v95 = type metadata accessor for AppComposer;
    sub_1E5E1E250(v57, v116 + v60, type metadata accessor for AppComposer);
    sub_1E5E1D624(v56, v57, type metadata accessor for AppComposer);
    sub_1E5DF650C(v132, &v137);
    v104 = *a4;
    v105 = *(a4 + 24);
    v106 = *(a4 + 40);
    v107 = *(a4 + 56);
    v108 = *(a4 + 72);
    v62 = v120;
    v63 = *(v120 + 16);
    v102 = v120 + 16;
    v103 = v63;
    v63(v124, v52, v131);
    v64 = (v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v96 = v64;
    v65 = (v64 + 47) & 0xFFFFFFFFFFFFFFF8;
    v99 = ((v65 + 87) & 0xFFFFFFFFFFFFFFF8) + 8;
    v97 = (v65 + 87) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v99 + *(v62 + 80)) & ~*(v62 + 80);
    v67 = swift_allocObject();
    sub_1E5E1E250(v57, v67 + v60, type metadata accessor for AppComposer);
    sub_1E5DF599C(&v137, v67 + v64);
    v109 = v67;
    v68 = (v67 + v65);
    v69 = *(a4 + 48);
    v68[2] = *(a4 + 32);
    v68[3] = v69;
    v68[4] = *(a4 + 64);
    v70 = *(a4 + 16);
    *v68 = *a4;
    v68[1] = v70;
    *(v67 + ((v65 + 87) & 0xFFFFFFFFFFFFFFF8)) = v134;
    v71 = v67 + v66;
    v72 = v124;
    (*(v62 + 32))(v71, v124, v131);
    v73 = v133;
    v74 = v100;
    sub_1E5E1D624(v133, v57, v100);
    sub_1E5DF650C(v132, &v137);
    v75 = swift_allocObject();
    v76 = v94;
    v77 = v95;
    sub_1E5E1E250(v57, v75 + v94, v95);
    sub_1E5DF599C(&v137, v75 + v96);
    v78 = (v75 + v65);
    v132 = v75;
    v79 = *(a4 + 48);
    v78[2] = *(a4 + 32);
    v78[3] = v79;
    v78[4] = *(a4 + 64);
    v80 = *(a4 + 16);
    *v78 = *a4;
    v78[1] = v80;
    *(v75 + v97) = v134;
    sub_1E5E1D624(v73, v57, v74);
    v133 = swift_allocObject();
    sub_1E5E1E250(v57, v133 + v76, v77);
    sub_1E5DFD1CC(v115, v110, &qword_1ED074410, &qword_1E65F0B78);
    v103(v72, v122, v131);
    v123 = type metadata accessor for ActionButtonDescriptor(0);
    swift_retain_n();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
    v107 = type metadata accessor for ArtworkDescriptor(0);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
    v103 = type metadata accessor for ContextMenu(0);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
    v101 = type metadata accessor for ItemContext(0);
    v100 = type metadata accessor for ItemMetrics(0);
    v99 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
    v97 = type metadata accessor for SectionMetrics(0);
    v96 = type metadata accessor for ViewDescriptor(0);
    v95 = sub_1E61A3DB4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
    v94 = sub_1E60731B0();
    v93[6] = sub_1E61A3DB4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    v93[5] = sub_1E5FEB2FC();
    v93[4] = sub_1E60C08DC();
    v93[3] = sub_1E60C15C0();
    v93[2] = sub_1E61A3DB4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
    v93[1] = sub_1E60728B0();
    sub_1E61A3DB4(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E61A3DB4(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E61A3DB4(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E61A3DB4(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E61A3DB4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
    sub_1E60C217C();
    sub_1E61A3DB4(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
    sub_1E5DF11E0();
    sub_1E5DF1338();
    sub_1E61A3DB4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    v81 = v111;
    sub_1E65DC198();
    (*(v120 + 8))(v122, v131);
    sub_1E5DFE50C(v115, &qword_1ED074410, &qword_1E65F0B78);
    v82 = sub_1E5FED46C(&qword_1ED076060, &qword_1ED076068, &qword_1E65F4920, MEMORY[0x1E699D728]);
    v83 = v112;
    v84 = v126;
    sub_1E5FEE4C8();
    v85 = *(v118 + 8);
    v85(v81, v84);
    v86 = v114;
    sub_1E5FEE4C8();
    v85(v83, v84);
    v87 = v113;
    sub_1E5FEE4C8();
    v85(v86, v84);
    sub_1E5FEE4C8();
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076078, &qword_1E65F4928);
    v89 = sub_1E5FED46C(&qword_1ED076070, &qword_1ED076078, &qword_1E65F4928, MEMORY[0x1E697C268]);
    v90 = v129;
    sub_1E62DFC6C(v86, v84, v88, v82, v89);
    v91 = sub_1E619FBB8();
    v51 = v125;
    sub_1E62DFC6C(v90, v128, MEMORY[0x1E69E73E0], v91, MEMORY[0x1E6982070]);
    sub_1E5DFE50C(v90, &qword_1ED076058, &qword_1E65F4918);
    v85(v86, v84);
    v85(v87, v84);
    goto LABEL_5;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E619FA78@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_1E619E670(v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8), a1);
}

unint64_t sub_1E619FB2C()
{
  result = qword_1ED076048;
  if (!qword_1ED076048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076040, &qword_1E65F4910);
    sub_1E619FBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076048);
  }

  return result;
}

unint64_t sub_1E619FBB8()
{
  result = qword_1ED076050;
  if (!qword_1ED076050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076058, &qword_1E65F4918);
    sub_1E5FED46C(&qword_1ED076060, &qword_1ED076068, &qword_1E65F4920, MEMORY[0x1E699D728]);
    sub_1E5FED46C(&qword_1ED076070, &qword_1ED076078, &qword_1E65F4928, MEMORY[0x1E697C268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076050);
  }

  return result;
}

uint64_t sub_1E619FC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v40 = a5;
  v39 = a4;
  v50 = a6;
  v42 = sub_1E65E4188();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760A0, &qword_1E65F4940);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076098, &qword_1E65F4938);
  v15 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v17 = &v38 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760B0, &qword_1E65F4948);
  v46 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v44 = &v38 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076088, &qword_1E65F4930);
  v19 = MEMORY[0x1EEE9AC00](v48);
  v43 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v45 = &v38 - v21;
  sub_1E65E4418();
  v51 = a2;
  v52 = a3;
  v53 = v39;
  v54 = v40;
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076068, &qword_1E65F4920);
  sub_1E5FED46C(&qword_1ED076060, &qword_1ED076068, &qword_1E65F4920, MEMORY[0x1E699D728]);
  sub_1E65E3C18();
  sub_1E65E4178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760B8, &qword_1E65F4950);
  inited = swift_initStackObject();
  v40 = xmmword_1E65EB9E0;
  *(inited + 16) = xmmword_1E65EB9E0;
  v23 = sub_1E65E43F8();
  *(inited + 32) = v23;
  v24 = sub_1E65E4418();
  *(inited + 33) = v24;
  sub_1E65E4408();
  sub_1E65E4408();
  if (sub_1E65E4408() != v23)
  {
    sub_1E65E4408();
  }

  sub_1E65E4408();
  if (sub_1E65E4408() != v24)
  {
    sub_1E65E4408();
  }

  v25 = v47;
  v26 = sub_1E5FED46C(&qword_1ED0760A8, &qword_1ED0760A0, &qword_1E65F4940, MEMORY[0x1E697BE60]);
  sub_1E65E48A8();
  (*(v41 + 8))(v10, v42);
  (*(v12 + 8))(v14, v11);
  v56 = v11;
  v57 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v44;
  sub_1E65E4878();
  (*(v15 + 8))(v17, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760C0, &qword_1E65F4958);
  v29 = swift_initStackObject();
  *(v29 + 16) = v40;
  v30 = sub_1E65E4448();
  *(v29 + 32) = v30;
  v31 = sub_1E65E4458();
  *(v29 + 33) = v31;
  v32 = sub_1E65E4478();
  sub_1E65E4478();
  if (sub_1E65E4478() != v30)
  {
    v32 = sub_1E65E4478();
  }

  sub_1E65E4478();
  if (sub_1E65E4478() != v31)
  {
    v32 = sub_1E65E4478();
  }

  v56 = v25;
  v57 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v43;
  v35 = v49;
  sub_1E6501658(v32, 0x4024000000000000, 0, v49, v33);
  (*(v46 + 8))(v28, v35);
  sub_1E61A1148();
  v36 = v45;
  sub_1E5FEE4C8();
  sub_1E5DFE50C(v34, &qword_1ED076088, &qword_1E65F4930);
  sub_1E5FEE4C8();
  return sub_1E5DFE50C(v36, &qword_1ED076088, &qword_1E65F4930);
}

uint64_t objectdestroy_2Tm()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);
  v93 = (v94 + 16) & ~v94;
  v95 = v0;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E61A1084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);

  return sub_1E619FC9C(a1, v2 + v6, v8, v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8), v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8), a2);
}

unint64_t sub_1E61A1148()
{
  result = qword_1ED076090;
  if (!qword_1ED076090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076088, &qword_1E65F4930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076098, &qword_1E65F4938);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0760A0, &qword_1E65F4940);
    sub_1E5FED46C(&qword_1ED0760A8, &qword_1ED0760A0, &qword_1E65F4940, MEMORY[0x1E697BE60]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E61A3DB4(&qword_1EE2D4C38, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076090);
  }

  return result;
}

uint64_t sub_1E61A1320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v97 = a5;
  v99 = a3;
  v103 = a2;
  v95 = a6;
  v8 = type metadata accessor for AppComposer(0);
  v98 = *(v8 - 8);
  v9 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v68 - v12;
  v88 = v68 - v12;
  v104 = sub_1E65D76F8();
  v100 = *(v104 - 8);
  v84 = *(v100 + 64);
  v14 = MEMORY[0x1EEE9AC00](v104);
  v102 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v83 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076068, &qword_1E65F4920);
  v24 = *(v23 - 8);
  v93 = v23;
  v94 = v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v89 = v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v90 = v68 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v91 = v68 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v92 = v68 - v31;
  v32 = sub_1E65E3E08();
  v33 = *(v32 - 8);
  v34 = *(v33 + 16);
  v101 = v22;
  v34(v22, v97, v32);
  (*(v33 + 56))(v22, 0, 1, v32);
  v105 = v17;
  sub_1E65D76E8();
  (*(v11 + 104))(v13, *MEMORY[0x1E699D720], v10);
  v35 = v82;
  sub_1E5E1D624(a1, v82, type metadata accessor for AppComposer);
  v36 = *(v98 + 80);
  v37 = (v36 + 16) & ~v36;
  v38 = v36 | 7;
  v87 = swift_allocObject();
  sub_1E5E1E250(v35, v87 + v37, type metadata accessor for AppComposer);
  sub_1E5E1D624(a1, v35, type metadata accessor for AppComposer);
  v96 = v38;
  v86 = swift_allocObject();
  v97 = type metadata accessor for AppComposer;
  v98 = v37;
  sub_1E5E1E250(v35, v86 + v37, type metadata accessor for AppComposer);
  v72 = a1;
  v73 = type metadata accessor for AppComposer;
  sub_1E5E1D624(a1, v35, type metadata accessor for AppComposer);
  v74 = v37 + v9;
  v85 = swift_allocObject();
  sub_1E5E1E250(v35, v85 + v37, type metadata accessor for AppComposer);
  v39 = v35;
  sub_1E5E1D624(a1, v35, type metadata accessor for AppComposer);
  sub_1E5DF650C(v99, &v106);
  v40 = a4;
  v77 = *a4;
  v78 = a4[3];
  v79 = a4[5];
  v80 = a4[7];
  v81 = a4[9];
  v41 = v100;
  v42 = *(v100 + 16);
  v75 = v100 + 16;
  v76 = v42;
  v43 = v102;
  v44 = v104;
  v42(v102, v105, v104);
  v45 = (v37 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = v45;
  v46 = (v45 + 47) & 0xFFFFFFFFFFFFFFF8;
  v70 = v46;
  v47 = (v46 + 87) & 0xFFFFFFFFFFFFFFF8;
  v71 = v47 + 8;
  v48 = (v47 + 8 + *(v41 + 80)) & ~*(v41 + 80);
  v49 = swift_allocObject();
  sub_1E5E1E250(v39, v49 + v98, v97);
  sub_1E5DF599C(&v106, v49 + v45);
  v84 = v49;
  v50 = (v49 + v46);
  v51 = v40[3];
  v50[2] = v40[2];
  v50[3] = v51;
  v50[4] = v40[4];
  v52 = v40[1];
  *v50 = *v40;
  v50[1] = v52;
  *(v49 + v47) = v103;
  (*(v41 + 32))(v49 + v48, v43, v44);
  v53 = v72;
  v54 = v73;
  sub_1E5E1D624(v72, v39, v73);
  sub_1E5DF650C(v99, &v106);
  v55 = swift_allocObject();
  v57 = v97;
  v56 = v98;
  sub_1E5E1E250(v39, v55 + v98, v97);
  sub_1E5DF599C(&v106, v55 + v69);
  v58 = (v55 + v70);
  v99 = v55;
  v59 = v40[3];
  v58[2] = v40[2];
  v58[3] = v59;
  v58[4] = v40[4];
  v60 = v40[1];
  *v58 = *v40;
  v58[1] = v60;
  *(v55 + v47) = v103;
  sub_1E5E1D624(v53, v39, v54);
  v96 = swift_allocObject();
  sub_1E5E1E250(v39, v96 + v56, v57);
  sub_1E5DFD1CC(v101, v83, &qword_1ED074410, &qword_1E65F0B78);
  v76(v102, v105, v104);
  v98 = type metadata accessor for ActionButtonDescriptor(0);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v82 = type metadata accessor for ArtworkDescriptor(0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v78 = type metadata accessor for ContextMenu(0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v76 = type metadata accessor for ItemContext(0);
  v75 = type metadata accessor for ItemMetrics(0);
  v74 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  v72 = type metadata accessor for SectionMetrics(0);
  v71 = type metadata accessor for ViewDescriptor(0);
  v70 = sub_1E61A3DB4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v69 = sub_1E60731B0();
  v68[6] = sub_1E61A3DB4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v68[5] = sub_1E5FEB2FC();
  v68[4] = sub_1E60C08DC();
  v68[3] = sub_1E60C15C0();
  v68[2] = sub_1E61A3DB4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v68[1] = sub_1E60728B0();
  sub_1E61A3DB4(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E61A3DB4(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E61A3DB4(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E61A3DB4(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E61A3DB4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  sub_1E60C217C();
  sub_1E61A3DB4(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E61A3DB4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v61 = v89;
  sub_1E65DC198();
  (*(v100 + 8))(v105, v104);
  sub_1E5DFE50C(v101, &qword_1ED074410, &qword_1E65F0B78);
  sub_1E5FED46C(&qword_1ED076060, &qword_1ED076068, &qword_1E65F4920, MEMORY[0x1E699D728]);
  v62 = v90;
  v63 = v93;
  sub_1E5FEE4C8();
  v64 = *(v94 + 8);
  v64(v61, v63);
  v65 = v91;
  sub_1E5FEE4C8();
  v64(v62, v63);
  v66 = v92;
  sub_1E5FEE4C8();
  v64(v65, v63);
  sub_1E5FEE4C8();
  return (v64)(v66, v63);
}

uint64_t objectdestroy_19Tm()
{
  v46 = type metadata accessor for AppComposer(0);
  v99 = *(*(v46 - 1) + 80);
  v97 = *(*(v46 - 1) + 64);
  v1 = sub_1E65D76F8();
  v100 = *(v1 - 8);
  v101 = v1;
  v96 = *(v100 + 80);
  v102 = v0;
  v98 = (v99 + 16) & ~v99;
  v93 = v0 + v98;

  v2 = v0 + v98 + v46[5];
  swift_unknownObjectRelease();
  v3 = type metadata accessor for AppEnvironment(0);
  v4 = v3[6];
  v95 = type metadata accessor for AccountService();
  v94 = *(v95[-1].Description + 1);
  v94(v2 + v4, v95);
  v5 = v3[7];
  v92 = type metadata accessor for AppStateService();
  v91 = *(v92[-1].Description + 1);
  v91(v2 + v5, v92);
  v6 = v3[8];
  v90 = type metadata accessor for ArchivedSessionService();
  v89 = *(v90[-1].Description + 1);
  v89(v2 + v6, v90);
  v7 = v3[9];
  v88 = type metadata accessor for AssetService();
  v87 = *(v88[-1].Description + 1);
  v87(v2 + v7, v88);
  v8 = v3[10];
  v86 = type metadata accessor for AwardsService();
  v85 = *(v86[-1].Description + 1);
  v85(v2 + v8, v86);
  v9 = v3[11];
  v84 = type metadata accessor for BookmarkService();
  v83 = *(v84[-1].Description + 1);
  v83(v2 + v9, v84);
  v10 = v3[12];
  v82 = type metadata accessor for CatalogService();
  v81 = *(v82[-1].Description + 1);
  v81(v2 + v10, v82);
  v11 = v3[13];
  v80 = type metadata accessor for ConfigurationService();
  v79 = *(v80[-1].Description + 1);
  v79(v2 + v11, v80);
  v12 = v3[14];
  v78 = type metadata accessor for ContentAvailabilityService();
  v77 = *(v78[-1].Description + 1);
  v77(v2 + v12, v78);
  v13 = v3[15];
  v76 = type metadata accessor for EngagementService();
  v75 = *(v76[-1].Description + 1);
  v75(v2 + v13, v76);
  v14 = v3[16];
  v74 = type metadata accessor for HealthDataService();
  v73 = *(v74[-1].Description + 1);
  v73(v2 + v14, v74);
  v15 = v3[17];
  v72 = type metadata accessor for InteropService();
  v71 = *(v72[-1].Description + 1);
  v71(v2 + v15, v72);
  v16 = v3[18];
  v70 = type metadata accessor for LocalizationService();
  v69 = *(v70[-1].Description + 1);
  v69(v2 + v16, v70);
  v17 = v3[19];
  v68 = type metadata accessor for MarketingService();
  v67 = *(v68[-1].Description + 1);
  v67(v2 + v17, v68);
  v18 = v3[20];
  v66 = type metadata accessor for MetricService();
  v65 = *(v66[-1].Description + 1);
  v65(v2 + v18, v66);
  v19 = v3[21];
  v64 = type metadata accessor for PersonalizationService();
  v63 = *(v64[-1].Description + 1);
  v63(v2 + v19, v64);
  v20 = v3[22];
  v62 = type metadata accessor for PlayerService();
  v61 = *(v62[-1].Description + 1);
  v61(v2 + v20, v62);
  v21 = v3[23];
  v60 = type metadata accessor for PrivacyPreferenceService();
  v59 = *(v60[-1].Description + 1);
  v59(v2 + v21, v60);
  v22 = v3[24];
  v58 = type metadata accessor for RecommendationService();
  v57 = *(v58[-1].Description + 1);
  v57(v2 + v22, v58);
  v23 = v3[25];
  v56 = type metadata accessor for RemoteBrowsingService();
  v55 = *(v56[-1].Description + 1);
  v55(v2 + v23, v56);
  v24 = v3[26];
  v54 = type metadata accessor for SearchService();
  v53 = *(v54[-1].Description + 1);
  v53(v2 + v24, v54);
  v25 = v3[27];
  v52 = type metadata accessor for ServiceSubscriptionService();
  v51 = *(v52[-1].Description + 1);
  v51(v2 + v25, v52);
  v26 = v3[28];
  v44 = type metadata accessor for SessionService();
  v50 = *(v44[-1].Description + 1);
  v50(v2 + v26, v44);
  v27 = v3[29];
  v28 = type metadata accessor for SharePlayService();
  v49 = *(v28[-1].Description + 1);
  v49(v2 + v27, v28);
  v29 = v3[30];
  v30 = type metadata accessor for SiriService();
  v48 = *(v30[-1].Description + 1);
  v48(v2 + v29, v30);
  v31 = v3[31];
  v32 = type metadata accessor for SyncService();
  v47 = *(v32[-1].Description + 1);
  v47(v2 + v31, v32);

  v33 = v3[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v45 = *(QueueService[-1].Description + 1);
  v45(v2 + v33, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v3[34]));

  v35 = v3[36];
  v36 = type metadata accessor for WorkoutPlanService();
  v43 = *(v36[-1].Description + 1);
  v43(v2 + v35, v36);

  v37 = v93 + v46[7];

  v38 = v37 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v94(v38 + v3[6], v95);
  v91(v38 + v3[7], v92);
  v89(v38 + v3[8], v90);
  v87(v38 + v3[9], v88);
  v85(v38 + v3[10], v86);
  v83(v38 + v3[11], v84);
  v81(v38 + v3[12], v82);
  v79(v38 + v3[13], v80);
  v77(v38 + v3[14], v78);
  v75(v38 + v3[15], v76);
  v73(v38 + v3[16], v74);
  v71(v38 + v3[17], v72);
  v69(v38 + v3[18], v70);
  v67(v38 + v3[19], v68);
  v65(v38 + v3[20], v66);
  v63(v38 + v3[21], v64);
  v61(v38 + v3[22], v62);
  v59(v38 + v3[23], v60);
  v57(v38 + v3[24], v58);
  v55(v38 + v3[25], v56);
  v53(v38 + v3[26], v54);
  v51(v38 + v3[27], v52);
  v50(v38 + v3[28], v44);
  v49(v38 + v3[29], v28);
  v48(v38 + v3[30], v30);
  v47(v38 + v3[31], v32);

  v45(v38 + v3[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v38 + v3[34]));

  v43(v38 + v3[36], v36);
  swift_unknownObjectRelease();
  if (*(v93 + v46[9] + 8) >= 0xCuLL)
  {
  }

  v39 = (v93 + v46[10]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = (v97 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v96 + ((((v40 + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v96;
  __swift_destroy_boxed_opaque_existential_1((v102 + v40));
  swift_unknownObjectRelease();

  (*(v100 + 8))(v102 + v41, v101);

  return swift_deallocObject();
}

uint64_t objectdestroy_22Tm()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);
  v93 = (v94 + 16) & ~v94;
  v95 = v0;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8)));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E61A3D20(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E61A3DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E61A3DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchItemContext(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1D624(a1, v8, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1E5E1E250(v8, v11, type metadata accessor for SearchItemContext);
    sub_1E624E170(a2, a3);
    return sub_1E61A6420(v11, type metadata accessor for SearchItemContext);
  }

  else
  {
    sub_1E61A6420(v8, type metadata accessor for ItemContext);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_1E61A3FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E61A3DFC(a1, v6, a2);
}

uint64_t sub_1E61A406C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v29 - v16;
  v32 = v29 - v16;
  v31 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1E5DFD1CC(a1, v14, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 16))(v10, v33, v6);
  v19 = a4[3];
  v29[0] = *a4;
  v29[1] = v19;
  v20 = a4[7];
  v29[2] = a4[5];
  v29[3] = v20;
  v33 = a4[9];
  v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v22 = (v12 + *(v7 + 80) + v21) & ~*(v7 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1E5FAB460(v14, v24 + v21, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 32))(v24 + v22, v10, v6);
  *(v24 + v23) = v31;
  v25 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = *(a4 + 4);
  v25[3] = *(a4 + 3);
  v25[4] = v26;
  v27 = *(a4 + 2);
  v25[1] = *(a4 + 1);
  v25[2] = v27;
  *v25 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v32, &unk_1E65EC0C8, v24);
}

uint64_t sub_1E61A43C4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E61A406C(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E61A4470(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65DD0A8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61A4530, 0, 0);
}

uint64_t sub_1E61A4530()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v4 = sub_1E65DD048();
  v6 = v5;
  v8 = v7;
  v9 = v7;
  (*(v2 + 8))(v1, v3);
  if (v9 == 1)
  {
    v10 = swift_task_alloc();
    *(v10 + 16) = *(v0 + 16);
    v11 = sub_1E5F9F7B8(sub_1E61A64C0, v10, v4);
    sub_1E61A64A0(v4, v6, 1u);
  }

  else
  {
    sub_1E61A64A0(v4, v6, v8);
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_1E61A4684(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FE99E8;

  return sub_1E61A4470(a1, v1 + v5);
}

uint64_t sub_1E61A475C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E61A477C, 0, 0);
}

uint64_t sub_1E61A477C()
{
  v1 = v0[3];
  v2 = *(v1 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1E61A482C;
  v4 = v0[2];

  return sub_1E61A4A04(v4, v2);
}

uint64_t sub_1E61A482C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1E61A492C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E61A475C(a1, v1 + v5);
}

uint64_t sub_1E61A4A04(uint64_t a1, char a2)
{
  *(v3 + 224) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072088, &qword_1E65EA770);
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = type metadata accessor for ItemContext(0);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = type metadata accessor for SearchItemContext(0);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v5 = sub_1E65DCCE8();
  *(v3 + 96) = v5;
  *(v3 + 104) = *(v5 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  v6 = sub_1E65D9CC8();
  *(v3 + 128) = v6;
  *(v3 + 136) = *(v6 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  *(v3 + 160) = v7;
  *(v3 + 168) = *(v7 - 8);
  *(v3 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61A4C78, 0, 0);
}

uint64_t sub_1E61A4C78()
{
  v1 = v0[21];
  v2 = v0[2];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[2] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = 63 - v7;
  v10 = v0[13];
  v11 = v9 >> 6;
  v44 = (v1 + 8);
  v40 = (v10 + 8);
  v41 = (v10 + 32);
  v42 = v0[17];
  v43 = (v42 + 32);
  v45 = v0[2];

  v13 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v0[23] = v47;
    if (!v8)
    {
      break;
    }

LABEL_11:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v1 + 16))(v0[22], *(v45 + 48) + *(v1 + 72) * (v18 | (v13 << 6)), v0[20]);
    sub_1E65E04E8();
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      v14 = type metadata accessor for ItemContext;
      v15 = v0 + 8;
      goto LABEL_5;
    }

    v20 = v0[10];
    v19 = v0[11];
    sub_1E5E1E250(v0[8], v19, type metadata accessor for SearchItemContext);
    sub_1E5E1E250(v19, v20, type metadata accessor for SearchItemContext);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v0[15];
      v38 = v0[14];
      v22 = v0[12];
      v23 = *v41;
      (*v41)();
      (v23)(v21, v38, v22);
      sub_1E65DCCB8();
      sub_1E65DCCA8();
      v24 = v0[20];
      v25 = v0[18];
      v37 = v0[16];
      v39 = v0[19];
      v36 = v0[15];
      v34 = v0[22];
      v35 = v0[12];
      sub_1E65D9C88();
      (*v44)(v34, v24);
      (*v40)(v36, v35);
      v26 = *v43;
      (*v43)(v39, v25, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_1E64F610C(0, v47[2] + 1, 1, v47);
      }

      v28 = v47[2];
      v27 = v47[3];
      if (v28 >= v27 >> 1)
      {
        v47 = sub_1E64F610C((v27 > 1), v28 + 1, 1, v47);
      }

      v29 = v0[19];
      v30 = v0[16];
      v47[2] = v28 + 1;
      result = v26(v47 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v28, v29, v30);
    }

    else
    {
      v14 = type metadata accessor for SearchItemContext;
      v15 = v0 + 10;
LABEL_5:
      v16 = *v15;
      (*v44)(v0[22], v0[20]);
      result = sub_1E61A6420(v16, v14);
    }
  }

  while (1)
  {
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v17 >= v11)
    {
      break;
    }

    v8 = *(v4 + 8 * v17);
    ++v13;
    if (v8)
    {
      v13 = v17;
      goto LABEL_11;
    }
  }

  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v31 = CatalogService.fetchRemoteCatalogLockups.getter();
  v0[24] = v32;
  v46 = (v31 + *v31);
  v33 = swift_task_alloc();
  v0[25] = v33;
  *v33 = v0;
  v33[1] = sub_1E61A5118;

  return (v46)(4, v47);
}

uint64_t sub_1E61A5118(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_1E61A55E8;
  }

  else
  {

    v4 = sub_1E61A523C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E61A523C()
{
  v37 = v0;
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  if (v2)
  {
    v33 = *(v0 + 40);
    v34 = *(v0 + 48);
    v32 = *(v0 + 32);
    v35 = MEMORY[0x1E69E7CC0];
    sub_1E601BF24(0, v2, 0);
    v31 = sub_1E65D8258();
    v3 = *(v31 - 8);
    v30 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v29 = *(v3 + 72);
    do
    {
      v5 = v0;
      v6 = *(v0 + 48);
      v30(v6 + *(v32 + 48), v4, v31);
      v7 = sub_1E65D8078();
      v9 = v8;
      v10 = sub_1E65D81B8();
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      v36[0] = v7;
      v36[1] = v9;

      MEMORY[0x1E694D7C0](v12, v13);

      *v6 = v7;
      *(v34 + 8) = v9;
      v15 = *(v35 + 16);
      v14 = *(v35 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1E601BF24((v14 > 1), v15 + 1, 1);
      }

      v16 = *(v5 + 48);
      *(v35 + 16) = v15 + 1;
      sub_1E5FAB460(v16, v35 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v15, &qword_1ED072088, &qword_1E65EA770);
      v4 += v29;
      --v2;
      v0 = v5;
    }

    while (v2);

    if (*(v35 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072928, &qword_1E65EC048);
      v17 = sub_1E65E6A28();
      goto LABEL_16;
    }
  }

  v17 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v18 = *(v0 + 216);
  v36[0] = v17;

  sub_1E64346A8(v19, 1, v36);
  if (v18)
  {

    return swift_unexpectedError();
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 16);
    v23 = *(v0 + 24);

    v24 = v36[0];
    v25 = swift_task_alloc();
    *(v25 + 16) = v24;
    *(v25 + 24) = v23;
    *(v25 + 32) = v21;
    v26 = sub_1E6402E7C(sub_1E61A6480, v25, v22);

    v27 = sub_1E600A848(v26);

    v28 = *(v0 + 8);

    return v28(v27);
  }
}

uint64_t sub_1E61A55E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61A56D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v90 = a4;
  v99 = a3;
  v108 = a2;
  v109 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v93 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v103 = &v80 - v10;
  v92 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v92);
  v102 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v88 = *(v12 - 8);
  v89 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v80 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v101 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v85 = &v80 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v80 - v19;
  v20 = sub_1E65D7848();
  v96 = *(v20 - 8);
  v97 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E65DCA68();
  v94 = *(v23 - 8);
  v95 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760D8, &qword_1E65F4990);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v86 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v98 = &v80 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v106 = &v80 - v31;
  v107 = sub_1E65D8258();
  v104 = *(v107 - 8);
  v32 = MEMORY[0x1EEE9AC00](v107);
  v34 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v105 = &v80 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760E0, &qword_1E65F4998);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v80 - v37;
  v39 = sub_1E65DCCE8();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v80 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a1;
  sub_1E628C28C(v38);
  v43 = v39;
  v44 = v40;
  if ((*(v40 + 48))(v38, 1, v43) == 1)
  {
    sub_1E5DFE50C(v38, &qword_1ED0760E0, &qword_1E65F4998);
    v45 = 1;
LABEL_10:
    v67 = v109;
    goto LABEL_11;
  }

  v84 = v5;
  v46 = *(v40 + 32);
  v83 = v43;
  v46(v42, v38, v43);
  v47 = sub_1E65DCC98();
  v49 = v108;
  if (!*(v108 + 16))
  {

    goto LABEL_8;
  }

  v50 = sub_1E6215038(v47, v48);
  v52 = v51;

  if ((v52 & 1) == 0)
  {
LABEL_8:
    (*(v44 + 8))(v42, v83);
    goto LABEL_9;
  }

  v81 = v42;
  v82 = v44;
  v53 = v104;
  v54 = *(v49 + 56) + *(v104 + 72) * v50;
  v55 = v107;
  (*(v104 + 16))(v34, v54, v107);
  (*(v53 + 32))(v105, v34, v55);
  v57 = v94;
  v56 = v95;
  (*(v94 + 104))(v25, *MEMORY[0x1E699EE70], v95);
  v58 = v99;
  v59 = *v99;
  swift_getKeyPath();
  v108 = v59;
  sub_1E65E4EC8();

  v60 = v58 + *(type metadata accessor for AppComposer(0) + 20);
  v61 = type metadata accessor for AppEnvironment(0);
  v62 = v106;
  sub_1E645B850(v25, v22, &v60[*(v61 + 136)], v106);
  (*(v96 + 8))(v22, v97);
  (*(v57 + 8))(v25, v56);
  v63 = v98;
  sub_1E5DFD1CC(v62, v98, &qword_1ED0760D8, &qword_1E65F4990);
  v64 = sub_1E65DCF98();
  v65 = *(v64 - 8);
  v66 = *(v65 + 48);
  if ((v66)(v63, 1, v64) == 1)
  {
    sub_1E5DFE50C(v62, &qword_1ED0760D8, &qword_1E65F4990);
    (*(v53 + 8))(v105, v107);
    (*(v82 + 8))(v81, v83);
    sub_1E5DFE50C(v63, &qword_1ED0760D8, &qword_1E65F4990);
LABEL_9:
    v45 = 1;
    goto LABEL_10;
  }

  swift_getKeyPath();
  v99 = v66;
  v70 = v87;
  sub_1E65E4EC8();

  v71 = v85;
  sub_1E5FC39B8(v70, v90, v85);
  (*(v88 + 8))(v70, v89);
  v72 = v63;
  v73 = *(v65 + 8);
  v73(v72, v64);
  v74 = v100;
  sub_1E5FAB460(v71, v100, &qword_1ED072610, &qword_1E65EB930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  sub_1E65E04E8();
  sub_1E5DFD1CC(v74, v101, &qword_1ED072610, &qword_1E65EB930);
  v75 = type metadata accessor for ContextMenu(0);
  (*(*(v75 - 8) + 56))(v103, 1, 1, v75);
  v76 = v86;
  sub_1E5DFD1CC(v106, v86, &qword_1ED0760D8, &qword_1E65F4990);
  if ((v99)(v76, 1, v64) == 1)
  {
    sub_1E5DFE50C(v76, &qword_1ED0760D8, &qword_1E65F4990);
    v77 = 1;
    v78 = v93;
  }

  else
  {
    v78 = v93;
    sub_1E601320C(v93);
    v73(v76, v64);
    v77 = 0;
  }

  v79 = type metadata accessor for ItemMetrics(0);
  (*(*(v79 - 8) + 56))(v78, v77, 1, v79);
  v108 = type metadata accessor for ActionButtonDescriptor(0);
  v99 = type metadata accessor for ArtworkDescriptor(0);
  v98 = type metadata accessor for ViewDescriptor(0);
  v97 = sub_1E61A3DB4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  sub_1E61A3DB4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E61A3DB4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E61A3DB4(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E61A3DB4(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E61A3DB4(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E61A3DB4(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E61A3DB4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v67 = v109;
  sub_1E65E0488();
  sub_1E5DFE50C(v100, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v106, &qword_1ED0760D8, &qword_1E65F4990);
  (*(v104 + 8))(v105, v107);
  (*(v82 + 8))(v81, v83);
  v45 = 0;
LABEL_11:
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v68 - 8) + 56))(v67, v45, 1, v68);
}

uint64_t sub_1E61A6420(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61A64A0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1E61A64C0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for AppComposer(0);
  return sub_1E5FC0EB4(v4, *(v3 + *(v5 + 20) + 8), a1);
}

uint64_t dispatch thunk of RouteDetourResolving.resolveDestination(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFA78C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1E61A6698@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RouteDestination(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1E61A6704(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E61A6724, 0, 0);
}

uint64_t sub_1E61A6724()
{
  sub_1E5F9CE1C(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1E61A6788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for PageMetricsClick(0);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v7 = sub_1E65E2928();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_1E65E24A8();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61A68E4, 0, 0);
}

uint64_t sub_1E61A68E4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E699F2F8])
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
LABEL_3:

    v5 = v0[1];

    return v5();
  }

  if (v4 == *MEMORY[0x1E699F2E0])
  {
    v7 = v0[13];
    v8 = v0[10];
    v9 = v0[8];
    v10 = v0[9];
    v11 = v0[4];
    (*(v0[12] + 96))(v7, v0[11]);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760E8, &qword_1E65F4AD8);
    (*(v10 + 32))(v8, v7 + *(v12 + 48), v9);
    v14 = *(v11 + 48);
    v13 = *(v11 + 56);
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_1E61A7198;
    v16 = v0[10];

    return sub_1E61A786C(v14, v13, v16);
  }

  if (v4 == *MEMORY[0x1E699F2F0])
  {
    goto LABEL_3;
  }

  if (v4 == *MEMORY[0x1E699F2E8])
  {
    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[4];
    v20 = sub_1E65D9D78();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    v21 = v18[5];
    v22 = *MEMORY[0x1E69CBAA0];
    v23 = sub_1E65D8C68();
    (*(*(v23 - 8) + 104))(v17 + v21, v22, v23);
    v24 = v18[6];
    v25 = sub_1E65D74E8();
    (*(*(v25 - 8) + 56))(v17 + v24, 1, 1, v25);
    v26 = v18[8];
    v27 = sub_1E65DA208();
    (*(*(v27 - 8) + 56))(v17 + v26, 1, 1, v27);
    v28 = v18[14];
    v29 = *MEMORY[0x1E69CBCD8];
    v30 = sub_1E65D8F28();
    (*(*(v30 - 8) + 104))(v17 + v28, v29, v30);
    v31 = v18[15];
    v32 = *MEMORY[0x1E69CC448];
    v33 = sub_1E65D9908();
    v34 = *(v33 - 8);
    (*(v34 + 104))(v17 + v31, v32, v33);
    (*(v34 + 56))(v17 + v31, 0, 1, v33);
    v35 = MEMORY[0x1E69E7CC0];
    v36 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v17 + v18[7]) = v35;
    v37 = (v17 + v18[9]);
    *v37 = 0;
    v37[1] = 0;
    v38 = (v17 + v18[10]);
    *v38 = 0;
    v38[1] = 0;
    *(v17 + v18[11]) = v36;
    v39 = (v17 + v18[12]);
    *v39 = 0;
    v39[1] = 0;
    *(v17 + v18[13]) = xmmword_1E65F4AC0;
    v68 = (*(v19 + 48) + **(v19 + 48));
    v40 = swift_task_alloc();
    v0[18] = v40;
    *v40 = v0;
    v40[1] = sub_1E61A759C;
    v41 = v0[6];
LABEL_15:

    return v68(v41);
  }

  if (v4 == *MEMORY[0x1E699F300])
  {
    v42 = v0[7];
    v43 = v0[4];
    v44 = v0[5];
    v45 = *MEMORY[0x1E69CC908];
    v46 = sub_1E65D9D78();
    v47 = *(v46 - 8);
    (*(v47 + 104))(v42, v45, v46);
    (*(v47 + 56))(v42, 0, 1, v46);
    v48 = v44[5];
    v49 = *MEMORY[0x1E69CBA90];
    v50 = sub_1E65D8C68();
    (*(*(v50 - 8) + 104))(v42 + v48, v49, v50);
    v51 = v44[6];
    v52 = sub_1E65D74E8();
    (*(*(v52 - 8) + 56))(v42 + v51, 1, 1, v52);
    v53 = v44[8];
    v54 = sub_1E65DA208();
    (*(*(v54 - 8) + 56))(v42 + v53, 1, 1, v54);
    v55 = v44[14];
    v56 = *MEMORY[0x1E69CBCC8];
    v57 = sub_1E65D8F28();
    (*(*(v57 - 8) + 104))(v42 + v55, v56, v57);
    v58 = v44[15];
    v59 = *MEMORY[0x1E69CC448];
    v60 = sub_1E65D9908();
    v61 = *(v60 - 8);
    (*(v61 + 104))(v42 + v58, v59, v60);
    (*(v61 + 56))(v42 + v58, 0, 1, v60);
    v62 = MEMORY[0x1E69E7CC0];
    v63 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v42 + v44[7]) = v62;
    v64 = (v42 + v44[9]);
    *v64 = 0;
    v64[1] = 0;
    v65 = (v42 + v44[10]);
    *v65 = 0;
    v65[1] = 0;
    *(v42 + v44[11]) = v63;
    v66 = (v42 + v44[12]);
    *v66 = 0;
    v66[1] = 0;
    *(v42 + v44[13]) = xmmword_1E65F4AB0;
    v68 = (*(v43 + 48) + **(v43 + 48));
    v67 = swift_task_alloc();
    v0[16] = v67;
    *v67 = v0;
    v67[1] = sub_1E61A73F4;
    v41 = v0[7];
    goto LABEL_15;
  }

  return sub_1E65E6C08();
}

uint64_t sub_1E61A7198()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1E61A7350;
  }

  else
  {
    v2 = sub_1E61A72AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61A72AC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E61A7350()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E61A73F4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1E61A7744;
  }

  else
  {
    v2 = sub_1E61A7508;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61A7508()
{
  sub_1E5FC0990(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61A759C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1E61A77D8;
  }

  else
  {
    v2 = sub_1E61A76B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61A76B0()
{
  sub_1E5FC0990(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61A7744()
{
  sub_1E5FC0990(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61A77D8()
{
  sub_1E5FC0990(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61A786C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  v5 = sub_1E65D76F8();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v4[29] = swift_task_alloc();
  v6 = sub_1E65D8C68();
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v4[33] = swift_task_alloc();
  v4[34] = type metadata accessor for PageMetricsClick(0);
  v4[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61A7AB4, 0, 0);
}

uint64_t sub_1E61A7AB4()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  active = WorkoutPlanService.queryActiveWorkoutPlan.getter();
  v0[39] = v2;
  v6 = (active + *active);
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_1E61A7BD0;
  v4 = v0[38];

  return v6(v4);
}

uint64_t sub_1E61A7BD0()
{

  if (v0)
  {

    v1 = sub_1E61A85F0;
  }

  else
  {

    v1 = sub_1E61A7D18;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E61A7D18()
{
  v1 = v0;
  v2 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v59 = v0[29];
  v61 = v0[38];
  v63 = v0[28];
  v64 = v0[37];
  v6 = sub_1E65D7EB8();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v61, 0, 1, v6);
  v8 = *MEMORY[0x1E69CC908];
  v9 = sub_1E65D9D78();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v3, v8, v9);
  v11 = v9;
  v12 = v6;
  v13 = v7;
  (*(v10 + 56))(v3, 0, 1, v11);
  (*(v4 + 104))(v2, *MEMORY[0x1E69CBA50], v5);
  v14 = sub_1E65D74E8();
  (*(*(v14 - 8) + 56))(v59, 1, 1, v14);
  v15 = sub_1E65DA208();
  (*(*(v15 - 8) + 56))(v63, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  *(inited + 32) = 9;
  v17 = v64;
  sub_1E61A8DB4(v61, v64);
  v65 = *(v13 + 48);
  v18 = v65(v17, 1, v12);
  v19 = v1[37];
  v57 = v13;
  if (v18 == 1)
  {
    sub_1E61A8E24(v19);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = v1[26];
    v23 = v1[27];
    v24 = v1[25];
    sub_1E65D7DC8();
    (*(v13 + 8))(v19, v12);
    v20 = sub_1E65D76C8();
    v21 = v25;
    (*(v22 + 8))(v23, v24);
  }

  v26 = v1[38];
  v27 = v1[36];
  v1[18] = v20;
  v1[19] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E5DF4B74(&qword_1ED072980, &qword_1ED072978, &unk_1E65F0E80, MEMORY[0x1E69E7C78]);
  sub_1E65E6848();
  *(inited + 80) = 12;
  sub_1E61A8DB4(v26, v27);
  v28 = v65(v27, 1, v12);
  v29 = v1[36];
  v52 = v12;
  if (v28 == 1)
  {
    sub_1E61A8E24(v29);
    v30 = 0;
  }

  else
  {
    v30 = sub_1E65D7DA8();
    (*(v57 + 8))(v29, v12);
  }

  v31 = v1[38];
  v33 = v1[34];
  v32 = v1[35];
  v55 = v1[32];
  v34 = v1[31];
  v53 = v1[33];
  v54 = v1[30];
  v58 = v1[29];
  v60 = v1[28];
  v62 = v1[21];
  v1[20] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760F0, &qword_1E65F4AE8);
  sub_1E61A8E8C();
  sub_1E65E6848();
  v56 = sub_1E6427784(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
  swift_arrayDestroy();
  v65(v31, 1, v52);
  v35 = sub_1E65E2918();
  v37 = v36;
  v38 = v33[14];
  v39 = *MEMORY[0x1E69CBCC8];
  v40 = sub_1E65D8F28();
  (*(*(v40 - 8) + 104))(v32 + v38, v39, v40);
  v41 = v33[15];
  v42 = *MEMORY[0x1E69CC448];
  v43 = sub_1E65D9908();
  v44 = *(v43 - 8);
  (*(v44 + 104))(v32 + v41, v42, v43);
  (*(v44 + 56))(v32 + v41, 0, 1, v43);
  sub_1E5FAB460(v53, v32, &qword_1ED073578, &qword_1E65F0E60);
  (*(v34 + 32))(v32 + v33[5], v55, v54);
  sub_1E5FAB460(v58, v32 + v33[6], &qword_1ED072340, &qword_1E65EA410);
  *(v32 + v33[7]) = MEMORY[0x1E69E7CC0];
  sub_1E5FAB460(v60, v32 + v33[8], &qword_1ED073570, &unk_1E65F4570);
  v45 = (v32 + v33[9]);
  *v45 = 0;
  v45[1] = 0;
  v46 = (v32 + v33[10]);
  *v46 = 0;
  v46[1] = 0;
  *(v32 + v33[11]) = v56;
  v47 = (v32 + v33[12]);
  *v47 = 0;
  v47[1] = 0;
  v48 = (v32 + v33[13]);
  *v48 = v35;
  v48[1] = v37;
  v66 = (v62 + *v62);
  v49 = swift_task_alloc();
  v1[41] = v49;
  *v49 = v1;
  v49[1] = sub_1E61A83F4;
  v50 = v1[35];

  return v66(v50);
}

uint64_t sub_1E61A83F4()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1E61A8CCC;
  }

  else
  {
    v2 = sub_1E61A8508;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61A8508()
{
  v1 = v0[38];
  sub_1E5FC0990(v0[35]);
  sub_1E61A8E24(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E61A85F0()
{
  v1 = v0;
  v2 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v59 = v0[29];
  v61 = v0[38];
  v63 = v0[28];
  v64 = v0[37];
  v6 = sub_1E65D7EB8();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v61, 1, 1, v6);
  v8 = *MEMORY[0x1E69CC908];
  v9 = sub_1E65D9D78();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v3, v8, v9);
  v11 = v9;
  v12 = v6;
  v13 = v7;
  (*(v10 + 56))(v3, 0, 1, v11);
  (*(v4 + 104))(v2, *MEMORY[0x1E69CBA50], v5);
  v14 = sub_1E65D74E8();
  (*(*(v14 - 8) + 56))(v59, 1, 1, v14);
  v15 = sub_1E65DA208();
  (*(*(v15 - 8) + 56))(v63, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  *(inited + 32) = 9;
  v17 = v64;
  sub_1E61A8DB4(v61, v64);
  v65 = *(v13 + 48);
  v18 = v65(v17, 1, v12);
  v19 = v1[37];
  v57 = v13;
  if (v18 == 1)
  {
    sub_1E61A8E24(v19);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = v1[26];
    v23 = v1[27];
    v24 = v1[25];
    sub_1E65D7DC8();
    (*(v13 + 8))(v19, v12);
    v20 = sub_1E65D76C8();
    v21 = v25;
    (*(v22 + 8))(v23, v24);
  }

  v26 = v1[38];
  v27 = v1[36];
  v1[18] = v20;
  v1[19] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E5DF4B74(&qword_1ED072980, &qword_1ED072978, &unk_1E65F0E80, MEMORY[0x1E69E7C78]);
  sub_1E65E6848();
  *(inited + 80) = 12;
  sub_1E61A8DB4(v26, v27);
  v28 = v65(v27, 1, v12);
  v29 = v1[36];
  v52 = v12;
  if (v28 == 1)
  {
    sub_1E61A8E24(v29);
    v30 = 0;
  }

  else
  {
    v30 = sub_1E65D7DA8();
    (*(v57 + 8))(v29, v12);
  }

  v31 = v1[38];
  v33 = v1[34];
  v32 = v1[35];
  v55 = v1[32];
  v34 = v1[31];
  v53 = v1[33];
  v54 = v1[30];
  v58 = v1[29];
  v60 = v1[28];
  v62 = v1[21];
  v1[20] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760F0, &qword_1E65F4AE8);
  sub_1E61A8E8C();
  sub_1E65E6848();
  v56 = sub_1E6427784(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
  swift_arrayDestroy();
  v65(v31, 1, v52);
  v35 = sub_1E65E2918();
  v37 = v36;
  v38 = v33[14];
  v39 = *MEMORY[0x1E69CBCC8];
  v40 = sub_1E65D8F28();
  (*(*(v40 - 8) + 104))(v32 + v38, v39, v40);
  v41 = v33[15];
  v42 = *MEMORY[0x1E69CC448];
  v43 = sub_1E65D9908();
  v44 = *(v43 - 8);
  (*(v44 + 104))(v32 + v41, v42, v43);
  (*(v44 + 56))(v32 + v41, 0, 1, v43);
  sub_1E5FAB460(v53, v32, &qword_1ED073578, &qword_1E65F0E60);
  (*(v34 + 32))(v32 + v33[5], v55, v54);
  sub_1E5FAB460(v58, v32 + v33[6], &qword_1ED072340, &qword_1E65EA410);
  *(v32 + v33[7]) = MEMORY[0x1E69E7CC0];
  sub_1E5FAB460(v60, v32 + v33[8], &qword_1ED073570, &unk_1E65F4570);
  v45 = (v32 + v33[9]);
  *v45 = 0;
  v45[1] = 0;
  v46 = (v32 + v33[10]);
  *v46 = 0;
  v46[1] = 0;
  *(v32 + v33[11]) = v56;
  v47 = (v32 + v33[12]);
  *v47 = 0;
  v47[1] = 0;
  v48 = (v32 + v33[13]);
  *v48 = v35;
  v48[1] = v37;
  v66 = (v62 + *v62);
  v49 = swift_task_alloc();
  v1[41] = v49;
  *v49 = v1;
  v49[1] = sub_1E61A83F4;
  v50 = v1[35];

  return v66(v50);
}

uint64_t sub_1E61A8CCC()
{
  v1 = v0[38];
  sub_1E5FC0990(v0[35]);
  sub_1E61A8E24(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E61A8DB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61A8E24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E61A8E8C()
{
  result = qword_1ED0760F8;
  if (!qword_1ED0760F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0760F0, &qword_1E65F4AE8);
    sub_1E61A8F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0760F8);
  }

  return result;
}

unint64_t sub_1E61A8F10()
{
  result = qword_1ED076100;
  if (!qword_1ED076100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076108, &unk_1E65F4AF0);
    sub_1E5DF4B74(&qword_1ED076110, &qword_1ED074F18, &qword_1E65F1150, MEMORY[0x1E69E6308]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076100);
  }

  return result;
}

uint64_t sub_1E61A8FC0(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
  sub_1E65D7FB8();
  return v4;
}

uint64_t sub_1E61A9028()
{
  v1 = *v0;
  v2 = 0x6574656C706D6F63;
  v3 = 0x656C756465686373;
  v4 = 0x6B63617473;
  if (v1 != 3)
  {
    v4 = 0x616C696176616E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79636E65636572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E61A90C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E61AA880(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E61A90F0(uint64_t a1)
{
  v2 = sub_1E61A9900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61A912C(uint64_t a1)
{
  v2 = sub_1E61A9900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61A9168(uint64_t a1)
{
  v2 = sub_1E61A9AA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61A91A4(uint64_t a1)
{
  v2 = sub_1E61A9AA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61A91E0(uint64_t a1)
{
  v2 = sub_1E61A9A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61A921C(uint64_t a1)
{
  v2 = sub_1E61A9A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61A9258(uint64_t a1)
{
  v2 = sub_1E61A99FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61A9294(uint64_t a1)
{
  v2 = sub_1E61A99FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61A92D0(uint64_t a1)
{
  v2 = sub_1E61A99A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61A930C(uint64_t a1)
{
  v2 = sub_1E61A99A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61A9348(uint64_t a1)
{
  v2 = sub_1E61A9954();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61A9384(uint64_t a1)
{
  v2 = sub_1E61A9954();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkOverlayTag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076118, &qword_1E65F4B00);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076120, &qword_1E65F4B08);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076128, &qword_1E65F4B10);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076130, &qword_1E65F4B18);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076138, &qword_1E65F4B20);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076140, &qword_1E65F4B28);
  v15 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1E61A9900();
  sub_1E65E6DA8();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_1E61A9A50();
      v31 = v45;
      sub_1E65E6B18();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_1E61A9AA4();
      v31 = v45;
      sub_1E65E6B18();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_1E61A99FC();
      v22 = v33;
      v23 = v45;
      sub_1E65E6B18();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_1E61A99A8();
      v22 = v36;
      v23 = v45;
      sub_1E65E6B18();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_1E61A9954();
      v22 = v39;
      v23 = v45;
      sub_1E65E6B18();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

unint64_t sub_1E61A9900()
{
  result = qword_1ED076148;
  if (!qword_1ED076148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076148);
  }

  return result;
}

unint64_t sub_1E61A9954()
{
  result = qword_1ED076150;
  if (!qword_1ED076150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076150);
  }

  return result;
}

unint64_t sub_1E61A99A8()
{
  result = qword_1ED076158;
  if (!qword_1ED076158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076158);
  }

  return result;
}

unint64_t sub_1E61A99FC()
{
  result = qword_1ED076160;
  if (!qword_1ED076160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076160);
  }

  return result;
}

unint64_t sub_1E61A9A50()
{
  result = qword_1ED076168;
  if (!qword_1ED076168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076168);
  }

  return result;
}

unint64_t sub_1E61A9AA4()
{
  result = qword_1ED076170;
  if (!qword_1ED076170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076170);
  }

  return result;
}

uint64_t ArtworkOverlayTag.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076178, &qword_1E65F4B30);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076180, &qword_1E65F4B38);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076188, &qword_1E65F4B40);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v57 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076190, &qword_1E65F4B48);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076198, &qword_1E65F4B50);
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0761A0, &unk_1E65F4B58);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E61A9900();
  v19 = v61;
  sub_1E65E6D98();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v13;
  v45 = v11;
  v46 = 0;
  v22 = v57;
  v21 = v58;
  v61 = v15;
  v23 = v59;
  v24 = v14;
  v25 = sub_1E65E6AF8();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = sub_1E5FBE3EC();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = sub_1E65E68F8();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
    *v34 = &type metadata for ArtworkOverlayTag;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v61 + 8))(v17, v14);
    goto LABEL_10;
  }

  v66 = v27;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v67 = 1;
      sub_1E61A9A50();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      sub_1E65E6A68();
      if (v44)
      {
        v40 = v61;
        goto LABEL_23;
      }

      (*(v49 + 8))(v43, v50);
      (*(v61 + 8))(v17, v14);
    }

    else
    {
      v67 = 0;
      sub_1E61A9AA4();
      v37 = v46;
      sub_1E65E6A68();
      if (v37)
      {
        (*(v61 + 8))(v17, v14);
        goto LABEL_10;
      }

      (*(v47 + 8))(v20, v45);
      (*(v61 + 8))(v17, v14);
    }

    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
    goto LABEL_30;
  }

  v28 = v23;
  if (v27 == 2)
  {
    v67 = 2;
    sub_1E61A99FC();
    v38 = v24;
    v39 = v46;
    sub_1E65E6A68();
    v40 = v61;
    if (!v39)
    {
      (*(v48 + 8))(v22, v51);
      (*(v40 + 8))(v17, v38);
LABEL_25:
      swift_unknownObjectRelease();
      v35 = v60;
      goto LABEL_30;
    }

LABEL_23:
    (*(v40 + 8))(v17, v38);
    goto LABEL_10;
  }

  v29 = v17;
  v30 = v61;
  if (v27 != 3)
  {
    v67 = 4;
    sub_1E61A9954();
    v41 = v56;
    v42 = v46;
    sub_1E65E6A68();
    if (v42)
    {
      (*(v30 + 8))(v29, v24);
      goto LABEL_10;
    }

    (*(v52 + 8))(v41, v55);
    (*(v30 + 8))(v29, v24);
    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
LABEL_30:
    *v28 = v66;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v67 = 3;
  sub_1E61A99A8();
  v31 = v46;
  sub_1E65E6A68();
  if (!v31)
  {
    (*(v54 + 8))(v21, v53);
    (*(v30 + 8))(v29, v24);
    goto LABEL_25;
  }

  (*(v30 + 8))(v29, v24);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v60;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t ArtworkOverlayTag.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E61AA40C()
{
  result = qword_1ED0761A8;
  if (!qword_1ED0761A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761A8);
  }

  return result;
}

unint64_t sub_1E61AA464()
{
  result = qword_1ED0761B0;
  if (!qword_1ED0761B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761B0);
  }

  return result;
}

unint64_t sub_1E61AA4BC()
{
  result = qword_1ED0761B8;
  if (!qword_1ED0761B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761B8);
  }

  return result;
}

unint64_t sub_1E61AA514()
{
  result = qword_1ED0761C0;
  if (!qword_1ED0761C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761C0);
  }

  return result;
}

unint64_t sub_1E61AA56C()
{
  result = qword_1ED0761C8;
  if (!qword_1ED0761C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761C8);
  }

  return result;
}

unint64_t sub_1E61AA5C4()
{
  result = qword_1ED0761D0;
  if (!qword_1ED0761D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761D0);
  }

  return result;
}

unint64_t sub_1E61AA61C()
{
  result = qword_1ED0761D8;
  if (!qword_1ED0761D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761D8);
  }

  return result;
}

unint64_t sub_1E61AA674()
{
  result = qword_1ED0761E0;
  if (!qword_1ED0761E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761E0);
  }

  return result;
}

unint64_t sub_1E61AA6CC()
{
  result = qword_1ED0761E8;
  if (!qword_1ED0761E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761E8);
  }

  return result;
}

unint64_t sub_1E61AA724()
{
  result = qword_1ED0761F0;
  if (!qword_1ED0761F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761F0);
  }

  return result;
}

unint64_t sub_1E61AA77C()
{
  result = qword_1ED0761F8;
  if (!qword_1ED0761F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0761F8);
  }

  return result;
}

unint64_t sub_1E61AA7D4()
{
  result = qword_1ED076200;
  if (!qword_1ED076200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076200);
  }

  return result;
}

unint64_t sub_1E61AA82C()
{
  result = qword_1ED076208;
  if (!qword_1ED076208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076208);
  }

  return result;
}

uint64_t sub_1E61AA880(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E65636572 && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_1E61AAA48(void *a1)
{
  v19 = a1;
  v2 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = v5 >> 6;
  if (v5 >> 6 > 1)
  {
    if (v6 == 2)
    {
      [v19 setModalPresentationStyle_];
      v7 = [v19 popoverPresentationController];
      if (v7)
      {
        v8 = v7;
        [v7 setSourceView_];
      }
    }

    else if (__PAIR128__(-64, 1) >= __PAIR128__(v5, v4))
    {
      if (v4 | v5 ^ 0xC0)
      {
        v13 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:1];
        [v13 setContentViewController_];
        sub_1E65E5BA8();
        type metadata accessor for LocalizationBundle();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v15 = [objc_opt_self() bundleForClass_];
        sub_1E65D77C8();
        sub_1E65E5D48();
        v16 = sub_1E65E5C48();

        v17 = [objc_opt_self() actionWithTitle:v16 style:0 handler:0];

        [v13 addAction_];
        return v13;
      }
    }

    else if (v5 == 192 && v4 == 2)
    {
      [v19 setModalPresentationStyle_];
    }

    else if (v5 == 192 && v4 == 3)
    {
      [v19 setModalPresentationStyle_];
    }

    else
    {
      [v19 setModalPresentationStyle_];
    }
  }

  else if (v6)
  {
    [v19 setModalPresentationStyle_];
    if ((v5 & 1) == 0)
    {
      v9 = [v19 sheetPresentationController];
      if (v9)
      {
        v10 = v9;
        sub_1E65E6488();
      }
    }
  }

  else
  {
    [v19 setModalPresentationStyle_];
    [v19 setModalInPresentation_];
  }

  return v19;
}

uint64_t RoutingContextPresentationStyle.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v4 == 2)
    {
      MEMORY[0x1E694E740](7);
      return sub_1E65E65B8();
    }

    else
    {
      if (__PAIR128__(-64, 1) >= __PAIR128__(v3, v2))
      {
        v9 = (v2 | *(v1 + 8) ^ 0xC0) != 0;
      }

      else if (*(v1 + 8) == 192 && v2 == 2)
      {
        v9 = 3;
      }

      else if (*(v1 + 8) == 192 && v2 == 3)
      {
        v9 = 4;
      }

      else
      {
        v9 = 5;
      }

      return MEMORY[0x1E694E740](v9);
    }
  }

  else if (v4)
  {
    MEMORY[0x1E694E740](6);
    if (v3)
    {
      return sub_1E65E6D48();
    }

    else
    {
      sub_1E65E6D48();
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v2;
      }

      else
      {
        v8 = 0;
      }

      return MEMORY[0x1E694E770](v8);
    }
  }

  else
  {
    MEMORY[0x1E694E740](2);
    return sub_1E65E6D48();
  }
}

uint64_t RoutingContextPresentationStyle.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1E65E6D28();
  RoutingContextPresentationStyle.hash(into:)(v3);
  return sub_1E65E6D78();
}

uint64_t sub_1E61AAF08()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1E65E6D28();
  RoutingContextPresentationStyle.hash(into:)(v3);
  return sub_1E65E6D78();
}

uint64_t sub_1E61AAF60(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_1E65E6D28();
  RoutingContextPresentationStyle.hash(into:)(v4);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard31RoutingContextPresentationStyleO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v6 == 2)
    {
      if ((v5 & 0xC0) == 0x80)
      {
        sub_1E61AB3BC();
        sub_1E5FA9D20(*&v4, v5);
        sub_1E5FA9D20(*&v2, v3);
        v8 = sub_1E65E65A8();
        sub_1E5F94E00(*&v2, v3);
        sub_1E5F94E00(*&v4, v5);
        return v8 & 1;
      }

      v13 = *&v2;
      goto LABEL_27;
    }

    if (__PAIR128__(-64, 1) >= __PAIR128__(v3, *&v2))
    {
      if (*&v2 | *(a1 + 8) ^ 0xC0)
      {
        if (v5 >= 0xC0 && *&v4 == 1 && v5 == 192)
        {
          sub_1E5F94E00(*a1, v3);
          v7 = 1;
          sub_1E5F94E00(1, 192);
          return v7 & 1;
        }

        goto LABEL_27;
      }

      if (v5 < 0xC0 || v4 != 0.0 || v5 != 192)
      {
LABEL_27:
        sub_1E5FA9D20(*&v4, v5);
        sub_1E5F94E00(*&v2, v3);
        sub_1E5F94E00(*&v4, v5);
        goto LABEL_28;
      }

      sub_1E5F94E00(*a1, v3);
      v12 = 0;
    }

    else if (*(a1 + 8) == 192 && *&v2 == 2)
    {
      if (v5 < 0xC0 || *&v4 != 2 || v5 != 192)
      {
        goto LABEL_27;
      }

      sub_1E5F94E00(*a1, v3);
      v12 = 2;
    }

    else if (*(a1 + 8) == 192 && *&v2 == 3)
    {
      if (v5 < 0xC0 || *&v4 != 3 || v5 != 192)
      {
        goto LABEL_27;
      }

      sub_1E5F94E00(*a1, v3);
      v12 = 3;
    }

    else
    {
      if (v5 < 0xC0 || *&v4 != 4 || v5 != 192)
      {
        goto LABEL_27;
      }

      sub_1E5F94E00(*a1, v3);
      v12 = 4;
    }

    sub_1E5F94E00(v12, 192);
    v7 = 1;
    return v7 & 1;
  }

  if (v6)
  {
    if ((v5 & 0xC0) == 0x40)
    {
      sub_1E5F94E00(*a1, v3);
      sub_1E5F94E00(*&v4, v5);
      if (v3)
      {
        if ((v5 & 1) == 0)
        {
LABEL_28:
          v7 = 0;
          return v7 & 1;
        }
      }

      else if ((v5 & 1) != 0 || v2 != v4)
      {
        goto LABEL_28;
      }

      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_27;
  }

  if (v5 >= 0x40)
  {
    goto LABEL_27;
  }

  sub_1E5F94E00(*a1, v3);
  sub_1E5F94E00(*&v4, v5);
  v7 = LOBYTE(v4) ^ LOBYTE(v2) ^ 1;
  return v7 & 1;
}

unint64_t sub_1E61AB244()
{
  result = qword_1ED076210;
  if (!qword_1ED076210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076210);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Blackbeard31RoutingContextPresentationStyleO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E61AB2C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 9))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E61AB31C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1E61AB380(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

unint64_t sub_1E61AB3BC()
{
  result = qword_1ED076218;
  if (!qword_1ED076218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED076218);
  }

  return result;
}

uint64_t type metadata accessor for BrowsePage(uint64_t a1)
{
  result = qword_1EE2DBCF0;
  if (!qword_1EE2DBCF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E61AB454(uint64_t a1)
{
  sub_1E5DEF56C();
  if (v1 <= 0x3F)
  {
    sub_1E5DF1414(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void RouteResource.hash(into:)(uint64_t a1)
{
  v322 = a1;
  v307 = sub_1E65D9048();
  v305 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307);
  v303 = &v242 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = sub_1E65E58D8();
  v304 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306);
  v302 = &v242 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_1E65DA308();
  v299 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301);
  v295 = &v242 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = sub_1E65E56B8();
  v297 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300);
  v294 = &v242 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = sub_1E65D7EB8();
  v290 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292);
  v289 = &v242 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = sub_1E65E55E8();
  v287 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v286 = &v242 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_1E65DAEB8();
  v247 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v246 = &v242 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = type metadata accessor for PlaylistType(0);
  v8 = MEMORY[0x1EEE9AC00](v275);
  v277 = &v242 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v285 = &v242 - v10;
  v11 = sub_1E65E52B8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v274 = &v242 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_1E65E5528();
  v283 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v281 = &v242 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_1E65E57D8();
  v279 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280);
  v313 = &v242 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = sub_1E65D7A38();
  v308 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  v250 = &v242 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = sub_1E65DB5D8();
  v293 = *(v296 - 8);
  MEMORY[0x1EEE9AC00](v296);
  v249 = &v242 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_1E65DB3E8();
  v276 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278);
  v245 = &v242 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v291 = &v242 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v298 = &v242 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077770, &unk_1E660C190);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v282 = &v242 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v317 = &v242 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076220, &unk_1E65FA4A0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v273 = &v242 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v316 = &v242 - v29;
  v272 = sub_1E65D96F8();
  v271 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v244 = &v242 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v269 = &v242 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v270 = &v242 - v34;
  v262 = sub_1E65DB718();
  v261 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v259 = &v242 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E65D74E8();
  v37 = *(v36 - 8);
  v320 = v36;
  v321 = v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v314 = &v242 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v266 = &v242 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v265 = &v242 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v315 = &v242 - v44;
  v264 = sub_1E65E1518();
  v263 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v260 = &v242 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E65DB848();
  v318 = *(v46 - 8);
  v319 = v46;
  v47 = MEMORY[0x1EEE9AC00](v46);
  v258 = &v242 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v257 = &v242 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v312 = &v242 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v255 = &v242 - v53;
  v54 = sub_1E65E0B48();
  MEMORY[0x1EEE9AC00](v54 - 8);
  v56 = &v242 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_1E65D72D8();
  v251 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v58 = &v242 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_1E65E1FC8();
  v267 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v243 = &v242 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_1E65E2CF8();
  v254 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v242 = &v242 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1E65D76F8();
  v310 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v242 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v65 = MEMORY[0x1EEE9AC00](v64 - 8);
  v253 = &v242 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v242 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v70 = MEMORY[0x1EEE9AC00](v69 - 8);
  v72 = &v242 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v74 = &v242 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v76 = MEMORY[0x1EEE9AC00](v75 - 8);
  v78 = &v242 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v311 = &v242 - v79;
  v80 = type metadata accessor for RouteResource(0);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v242 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E61B7384(v323, v82, type metadata accessor for RouteResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v129 = &v82[v128[12]];
      v131 = *v129;
      v130 = *(v129 + 1);
      v318 = v131;
      v319 = v130;
      v132 = v128[16];
      v320 = *&v82[v128[20]];
      v133 = v128[24];
      LODWORD(v321) = v82[v128[28]];
      v134 = &v82[v128[32]];
      v317 = *v134;
      LODWORD(v323) = v134[8];
      v135 = v311;
      sub_1E5FAB460(v82, v311, &unk_1ED077760, &unk_1E66011D0);
      sub_1E5FAB460(&v82[v132], v74, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5FAB460(&v82[v133], v68, &unk_1ED077750, &unk_1E66011C0);
      v136 = v322;
      MEMORY[0x1E694E740](3);
      sub_1E5DFD1CC(v135, v78, &unk_1ED077760, &unk_1E66011D0);
      v137 = v310;
      if ((*(v310 + 48))(v78, 1, v61) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        (*(v137 + 32))(v63, v78, v61);
        sub_1E65E6D48();
        sub_1E61B7730(&qword_1EE2D71A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1E65E5B48();
        (*(v137 + 8))(v63, v61);
      }

      v214 = v268;
      v215 = v267;
      v216 = v256;
      v217 = v254;
      if (v319)
      {
        sub_1E65E6D48();
        sub_1E65E5D78();
      }

      else
      {
        sub_1E65E6D48();
      }

      sub_1E5DFD1CC(v74, v72, &qword_1ED072B60, &unk_1E65FA490);
      if ((*(v217 + 48))(v72, 1, v216) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v218 = v242;
        (*(v217 + 32))(v242, v72, v216);
        sub_1E65E6D48();
        sub_1E61B7730(&qword_1ED076298, MEMORY[0x1E699F5D8], MEMORY[0x1E699F5E0]);
        sub_1E65E5B48();
        (*(v217 + 8))(v218, v216);
      }

      v219 = v253;
      sub_1E61B0084(v136, v320);

      sub_1E5DFD1CC(v68, v219, &unk_1ED077750, &unk_1E66011C0);
      if ((*(v215 + 48))(v219, 1, v214) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v220 = v243;
        (*(v215 + 32))(v243, v219, v214);
        sub_1E65E6D48();
        sub_1E61B7730(&qword_1ED0762A0, MEMORY[0x1E699F198], MEMORY[0x1E699F1A0]);
        sub_1E65E5B48();
        (*(v215 + 8))(v220, v214);
      }

      v221 = v323;
      v222 = sub_1E65E2938();
      MEMORY[0x1E694E740](v222);
      sub_1E65E6D48();
      if (!v221)
      {
        MEMORY[0x1E694E740](v317);
      }

      sub_1E5DFE50C(v68, &unk_1ED077750, &unk_1E66011C0);
      sub_1E5DFE50C(v74, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5DFE50C(v311, &unk_1ED077760, &unk_1E66011D0);
      return;
    case 2u:
      v83 = 4;
      goto LABEL_40;
    case 3u:
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0);
      v119 = v251;
      v120 = v252;
      (*(v251 + 32))(v58, &v82[*(v118 + 80)], v252);
      MEMORY[0x1E694E740](5);
      sub_1E65E5D78();

      sub_1E65E03C8();
      sub_1E65E5D78();

      sub_1E65DFB58();
      sub_1E65E5D78();

      sub_1E61B7730(&qword_1ED0734B0, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
      sub_1E65E5B48();
      (*(v119 + 8))(v58, v120);
      return;
    case 4u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280);
      sub_1E61B7400(v82, v56, MEMORY[0x1E699DD40]);
      MEMORY[0x1E694E740](6);
      sub_1E65E0B38();
      sub_1E65E5D78();

      sub_1E61B76D0(v56, MEMORY[0x1E699DD40]);
      return;
    case 5u:
      MEMORY[0x1E694E740](9);
      sub_1E65DF568();
      sub_1E65E5D78();

      return;
    case 6u:
      v150 = *v82;
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v152 = *(v151 + 64);
      v154 = v318;
      v153 = v319;
      v155 = v255;
      (*(v318 + 32))(v255, &v82[*(v151 + 48)], v319);
      v156 = v263;
      v157 = v260;
      v158 = v264;
      (*(v263 + 32))(v260, &v82[v152], v264);
      MEMORY[0x1E694E740](10);
      sub_1E65E6D48();
      if (v150)
      {
        v150 = v150;
        sub_1E65E65B8();
      }

      sub_1E61B7730(&qword_1ED076260, MEMORY[0x1E69CD620], MEMORY[0x1E69CD628]);
      sub_1E65E5B48();
      sub_1E61B7730(&qword_1EE2D64F0, MEMORY[0x1E699E860], MEMORY[0x1E699E870]);
      sub_1E65E5B48();

      (*(v156 + 8))(v157, v158);
      (*(v154 + 8))(v155, v153);
      return;
    case 7u:
      v121 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720D0, &unk_1E65EA290) + 48);
      v123 = v318;
      v122 = v319;
      v124 = v312;
      (*(v318 + 32))(v312, v82, v319);
      v125 = v320;
      v126 = v321;
      v127 = v315;
      (*(v321 + 32))(v315, &v82[v121], v320);
      MEMORY[0x1E694E740](11);
      sub_1E61B7730(&qword_1ED076260, MEMORY[0x1E69CD620], MEMORY[0x1E69CD628]);
      sub_1E65E5B48();
      sub_1E61B7730(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1E65E5B48();
      (*(v126 + 8))(v127, v125);
      (*(v123 + 8))(v124, v122);
      return;
    case 8u:
      v102 = *v82;
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v164 = *(v163 + 64);
      v106 = v318;
      v105 = v319;
      v107 = v257;
      (*(v318 + 32))(v257, &v82[*(v163 + 48)], v319);
      v108 = v320;
      v109 = v321;
      v110 = v265;
      (*(v321 + 32))(v265, &v82[v164], v320);
      v111 = 12;
      goto LABEL_42;
    case 9u:
      v102 = *v82;
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v104 = *(v103 + 64);
      v106 = v318;
      v105 = v319;
      v107 = v258;
      (*(v318 + 32))(v258, &v82[*(v103 + 48)], v319);
      v108 = v320;
      v109 = v321;
      v110 = v266;
      (*(v321 + 32))(v266, &v82[v104], v320);
      v111 = 13;
LABEL_42:
      MEMORY[0x1E694E740](v111);
      sub_1E65E6D48();
      if (v102)
      {
        v102 = v102;
        sub_1E65E65B8();
      }

      sub_1E61B7730(&qword_1ED076260, MEMORY[0x1E69CD620], MEMORY[0x1E69CD628]);
      sub_1E65E5B48();
      sub_1E61B7730(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1E65E5B48();

      (*(v109 + 8))(v110, v108);
      (*(v106 + 8))(v107, v105);
      return;
    case 0xAu:
      v83 = 14;
      goto LABEL_40;
    case 0xBu:
      v83 = 15;
      goto LABEL_40;
    case 0xCu:
      v99 = *(v82 + 2);
      v100 = v82[24];
      v101 = v322;
      MEMORY[0x1E694E740](16);
      sub_1E65E5D78();

      *&v324 = v99;
      BYTE8(v324) = v100;
      RoutingContextPresentationStyle.hash(into:)(v101);
      sub_1E5F94E00(v99, v100);
      return;
    case 0xDu:
      v83 = 17;
      goto LABEL_40;
    case 0xEu:
      v90 = v261;
      v91 = v259;
      v92 = v262;
      (*(v261 + 32))(v259, v82, v262);
      MEMORY[0x1E694E740](21);
      v93 = &unk_1ED076290;
      v94 = MEMORY[0x1E69CD5A8];
      v95 = MEMORY[0x1E69CD5B0];
      goto LABEL_52;
    case 0xFu:
      v83 = 22;
      goto LABEL_40;
    case 0x10u:
      v83 = 24;
      goto LABEL_40;
    case 0x11u:
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720E0, &unk_1E65EA2A0);
      v115 = v320;
      v116 = v321;
      v117 = v315;
      (*(v321 + 32))(v315, &v82[*(v140 + 48)], v320);
      MEMORY[0x1E694E740](26);
      sub_1E65E5D78();

      sub_1E61B7730(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1E65E5B48();
      goto LABEL_28;
    case 0x12u:
      v159 = *v82;
      v160 = *(v82 + 1);
      v161 = v82[16];
      v162 = v322;
      MEMORY[0x1E694E740](27);
      *&v324 = v159;
      *(&v324 + 1) = v160;
      LOBYTE(v325) = v161;
      QueuedSessionType.hash(into:)(v162);
      sub_1E5F94E14(v159, v160, v161);
      return;
    case 0x13u:
      v92 = v320;
      v90 = v321;
      v91 = v315;
      (*(v321 + 32))(v315, v82, v320);
      MEMORY[0x1E694E740](28);
      v93 = &qword_1ED073F58;
      v94 = MEMORY[0x1E6968FB0];
      v95 = MEMORY[0x1E6968FC0];
LABEL_52:
      sub_1E61B7730(v93, v94, v95);
      sub_1E65E5B48();
      (*(v90 + 8))(v91, v92);
      return;
    case 0x14u:
      v141 = *(v82 + 1);
      v142 = *(v82 + 4);
      v143 = *(v82 + 6);
      v144 = *(v82 + 7);
      MEMORY[0x1E694E740](29);
      sub_1E65E6D48();
      if (v141)
      {
        sub_1E65E5D78();
      }

      sub_1E65E5D78();

      MEMORY[0x1E694E740](v142);
      sub_1E65D89A8();
      sub_1E65E5D78();

      v223 = 0.0;
      if (v143 != 0.0)
      {
        v223 = v143;
      }

      MEMORY[0x1E694E770](*&v223);
      sub_1E65E65B8();

      return;
    case 0x15u:
      v145 = *(v82 + 1);
      v146 = *(v82 + 4);
      v147 = *(v82 + 6);
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0);
      v149 = v270;
      sub_1E5FAB460(&v82[*(v148 + 112)], v270, &unk_1ED077780, &unk_1E66097F0);
      MEMORY[0x1E694E740](30);
      sub_1E65E6D48();
      if (v145)
      {
        sub_1E65E5D78();
      }

      v224 = v272;
      v225 = v271;
      v226 = v269;
      sub_1E65E5D78();

      MEMORY[0x1E694E740](v146);
      sub_1E65D89A8();
      sub_1E65E5D78();

      v227 = 0.0;
      if (v147 != 0.0)
      {
        v227 = v147;
      }

      MEMORY[0x1E694E770](*&v227);
      sub_1E5DFD1CC(v149, v226, &unk_1ED077780, &unk_1E66097F0);
      if ((*(v225 + 48))(v226, 1, v224) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v228 = v244;
        (*(v225 + 32))(v244, v226, v224);
        sub_1E65E6D48();
        sub_1E61B7730(&qword_1ED074190, MEMORY[0x1E69CC278], MEMORY[0x1E69CC280]);
        sub_1E65E5B48();
        (*(v225 + 8))(v228, v224);
      }

      sub_1E5DFE50C(v149, &unk_1ED077780, &unk_1E66097F0);
      return;
    case 0x16u:
      v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v180 = v179[12];
      v181 = *&v82[v179[16] + 8];
      v182 = v179[20];
      v183 = &v82[v179[24]];
      v184 = v183[1];
      v319 = *v183;
      v185 = &v82[v179[28]];
      v186 = v185[1];
      v323 = *v185;
      v187 = v179[32];
      v188 = v179[36];
      v189 = *(v82 + 1);
      v324 = *v82;
      v325 = v189;
      v326 = *(v82 + 4);
      v190 = v320;
      (*(v321 + 32))(v314, &v82[v180], v320);
      sub_1E5FAB460(&v82[v182], v316, &qword_1ED076220, &unk_1E65FA4A0);
      sub_1E5FAB460(&v82[v187], v317, &unk_1ED077770, &unk_1E660C190);
      v191 = &v82[v188];
      v192 = v298;
      sub_1E5FAB460(v191, v298, &unk_1ED07B500, &qword_1E65F0EE0);
      MEMORY[0x1E694E740](31);
      sub_1E65E6838();
      sub_1E61B7730(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1E65E5B48();
      sub_1E65E6D48();
      if (v181)
      {
        sub_1E65E5D78();
      }

      v229 = v293;
      v230 = v278;
      v231 = v276;
      v232 = v273;
      sub_1E5DFD1CC(v316, v273, &qword_1ED076220, &unk_1E65FA4A0);
      if ((*(v231 + 48))(v232, 1, v230) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v233 = v245;
        (*(v231 + 32))(v245, v232, v230);
        sub_1E65E6D48();
        sub_1E61B7730(&qword_1ED076278, MEMORY[0x1E69CD4E0], MEMORY[0x1E69CD4E8]);
        sub_1E65E5B48();
        (*(v231 + 8))(v233, v230);
      }

      sub_1E65E6D48();
      if (v184)
      {
        sub_1E65E5D78();
      }

      v234 = v321;
      v235 = v308;
      v236 = v296;
      sub_1E65E6D48();
      if (v186)
      {
        sub_1E65E5D78();
      }

      v237 = v309;
      v238 = v282;
      sub_1E5DFD1CC(v317, v282, &unk_1ED077770, &unk_1E660C190);
      if ((*(v229 + 48))(v238, 1, v236) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v239 = v249;
        (*(v229 + 32))(v249, v238, v236);
        sub_1E65E6D48();
        sub_1E61B7730(&qword_1ED076280, MEMORY[0x1E69CD550], MEMORY[0x1E69CD558]);
        sub_1E65E5B48();
        (*(v229 + 8))(v239, v236);
      }

      v240 = v291;
      sub_1E5DFD1CC(v192, v291, &unk_1ED07B500, &qword_1E65F0EE0);
      if ((*(v235 + 48))(v240, 1, v237) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v241 = v250;
        (*(v235 + 32))(v250, v240, v237);
        sub_1E65E6D48();
        sub_1E61B7730(&qword_1ED076288, MEMORY[0x1E69CAF60], MEMORY[0x1E69CAF68]);
        sub_1E65E5B48();
        (*(v235 + 8))(v241, v237);
      }

      sub_1E5DFE50C(v192, &unk_1ED07B500, &qword_1E65F0EE0);
      sub_1E5DFE50C(v317, &unk_1ED077770, &unk_1E660C190);
      sub_1E5DFE50C(v316, &qword_1ED076220, &unk_1E65FA4A0);
      (*(v234 + 8))(v314, v190);
      sub_1E6009FC0(&v324);
      return;
    case 0x17u:
      v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v194 = v193[12];
      v195 = &v82[v193[16]];
      v196 = *v195;
      v321 = v195[1];
      v197 = v279;
      v198 = *(v279 + 32);
      LODWORD(v323) = v82[v193[20]];
      v199 = v280;
      v198(v313, v82, v280);
      v200 = v283;
      v201 = v281;
      v202 = v284;
      (*(v283 + 32))(v281, &v82[v194], v284);
      MEMORY[0x1E694E740](32);
      sub_1E61B7730(&qword_1ED076268, MEMORY[0x1E69CD910], MEMORY[0x1E69CD918]);
      v203 = v199;
      sub_1E65E5B48();
      sub_1E61B7730(&qword_1ED076270, MEMORY[0x1E69CD868], MEMORY[0x1E69CD870]);
      sub_1E65E5B48();
      v204 = v321;
      sub_1E65D8CC8();
      sub_1E61B73EC(v196, v204);
      sub_1E65E5D78();

      sub_1E65DA218();
      sub_1E65E5D78();

      (*(v200 + 8))(v201, v202);
      (*(v197 + 8))(v313, v203);
      return;
    case 0x18u:
      v113 = *v82;
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0);
      v116 = v318;
      v115 = v319;
      v117 = v312;
      (*(v318 + 32))(v312, &v82[*(v114 + 48)], v319);
      MEMORY[0x1E694E740](33);
      sub_1E65E65B8();
      sub_1E61B7730(&qword_1ED076260, MEMORY[0x1E69CD620], MEMORY[0x1E69CD628]);
      sub_1E65E5B48();

      goto LABEL_28;
    case 0x19u:
      v112 = *v82;
      MEMORY[0x1E694E740](34);
      MEMORY[0x1E694E740](v112);
      return;
    case 0x1Au:
      v213 = v274;
      sub_1E61B7400(v82, v274, MEMORY[0x1E69CD768]);
      MEMORY[0x1E694E740](35);
      sub_1E65E52A8();
      sub_1E61B76D0(v213, MEMORY[0x1E69CD768]);
      return;
    case 0x1Bu:
      v85 = v285;
      sub_1E61B7400(v82, v285, type metadata accessor for PlaylistType);
      MEMORY[0x1E694E740](36);
      v86 = v277;
      sub_1E61B7384(v85, v277, type metadata accessor for PlaylistType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v87 = v247;
        v88 = v246;
        v89 = v248;
        (*(v247 + 32))(v246, v86, v248);
        MEMORY[0x1E694E740](1);
        sub_1E61B7730(&qword_1ED076258, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
        sub_1E65E5B48();
        (*(v87 + 8))(v88, v89);
      }

      else
      {
        MEMORY[0x1E694E740](0);
        sub_1E65E5D78();
      }

      sub_1E61B76D0(v85, type metadata accessor for PlaylistType);
      return;
    case 0x1Cu:
      v205 = v310;
      (*(v310 + 32))(v63, v82, v61);
      MEMORY[0x1E694E740](38);
      sub_1E61B7730(&qword_1EE2D71A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1E65E5B48();
      (*(v205 + 8))(v63, v61);
      return;
    case 0x1Du:
      v206 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v207 = v287;
      v208 = v286;
      v209 = v288;
      (*(v287 + 32))(v286, v82, v288);
      v210 = v290;
      v211 = v289;
      v212 = v292;
      (*(v290 + 32))(v289, &v82[v206], v292);
      MEMORY[0x1E694E740](39);
      sub_1E61B7730(&qword_1ED076248, MEMORY[0x1E69CD8B0], MEMORY[0x1E69CD8B8]);
      sub_1E65E5B48();
      sub_1E61B7730(&qword_1ED076250, MEMORY[0x1E69CB0E0], MEMORY[0x1E69CB0F0]);
      sub_1E65E5B48();
      (*(v210 + 8))(v211, v212);
      (*(v207 + 8))(v208, v209);
      return;
    case 0x1Eu:
      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072110, &unk_1E65EA2D0);
      v166 = *&v82[*(v165 + 48)];
      v167 = *&v82[*(v165 + 64)];
      v96 = v297;
      v97 = v294;
      v98 = v300;
      (*(v297 + 32))(v294, v82, v300);
      v168 = v322;
      MEMORY[0x1E694E740](40);
      sub_1E61B7730(&qword_1ED076240, MEMORY[0x1E69CD8D8], MEMORY[0x1E69CD8E0]);
      sub_1E65E5B48();
      sub_1E61B0648(v168, v166, MEMORY[0x1E69CCF28], &qword_1ED072C50, MEMORY[0x1E69CCF28], MEMORY[0x1E69CCF30]);

      sub_1E61B0648(v168, v167, MEMORY[0x1E69CC8D0], &qword_1ED0741A0, MEMORY[0x1E69CC8D0], MEMORY[0x1E69CC8D8]);

      goto LABEL_45;
    case 0x1Fu:
      v138 = *&v82[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48)];
      v116 = v299;
      v117 = v295;
      v115 = v301;
      (*(v299 + 32))(v295, v82, v301);
      v139 = v322;
      MEMORY[0x1E694E740](41);
      sub_1E61B7730(&qword_1ED076238, MEMORY[0x1E69CCC50], MEMORY[0x1E69CCC58]);
      sub_1E65E5B48();
      sub_1E61B0648(v139, v138, MEMORY[0x1E69CC8D0], &qword_1ED0741A0, MEMORY[0x1E69CC8D0], MEMORY[0x1E69CC8D8]);

LABEL_28:
      (*(v116 + 8))(v117, v115);
      return;
    case 0x20u:
      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072120, &qword_1E65EA2E0);
      v170 = *&v82[*(v169 + 48)];
      v171 = *&v82[*(v169 + 64)];
      v172 = v304;
      v173 = v302;
      v174 = v306;
      (*(v304 + 32))(v302, v82, v306);
      v175 = v322;
      MEMORY[0x1E694E740](42);
      sub_1E61B7730(&qword_1ED076230, MEMORY[0x1E69CD970], MEMORY[0x1E69CD978]);
      sub_1E65E5B48();
      v176 = MEMORY[0x1E69CC8D0];
      v177 = MEMORY[0x1E69CC8D0];
      v178 = MEMORY[0x1E69CC8D8];
      sub_1E61B0648(v175, v170, MEMORY[0x1E69CC8D0], &qword_1ED0741A0, MEMORY[0x1E69CC8D0], MEMORY[0x1E69CC8D8]);

      sub_1E61B0648(v175, v171, v176, &qword_1ED0741A0, v177, v178);

      (*(v172 + 8))(v173, v174);
      return;
    case 0x21u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077830, &qword_1E65F0F68);
      v96 = v305;
      v97 = v303;
      v98 = v307;
      (*(v305 + 32))(v303, v82, v307);
      MEMORY[0x1E694E740](43);
      sub_1E61B7730(&qword_1ED076228, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE50]);
      sub_1E65E5B48();
      sub_1E65E6D48();
      sub_1E65E6D48();
LABEL_45:
      (*(v96 + 8))(v97, v98);
      return;
    case 0x22u:
      v84 = 0;
      goto LABEL_58;
    case 0x23u:
      v84 = 2;
      goto LABEL_58;
    case 0x24u:
      v84 = 7;
      goto LABEL_58;
    case 0x25u:
      v84 = 8;
      goto LABEL_58;
    case 0x26u:
      v84 = 18;
      goto LABEL_58;
    case 0x27u:
      v84 = 19;
      goto LABEL_58;
    case 0x28u:
      v84 = 20;
      goto LABEL_58;
    case 0x29u:
      v84 = 23;
      goto LABEL_58;
    case 0x2Au:
      v84 = 25;
      goto LABEL_58;
    case 0x2Bu:
      v84 = 37;
LABEL_58:
      MEMORY[0x1E694E740](v84);
      break;
    default:
      v83 = 1;
LABEL_40:
      MEMORY[0x1E694E740](v83);
      sub_1E65E5D78();

      break;
  }
}

uint64_t RouteResource.hashValue.getter()
{
  sub_1E65E6D28();
  RouteResource.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E61AE7B8()
{
  sub_1E65E6D28();
  RouteResource.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E61AE7FC(uint64_t a1)
{
  sub_1E65E6D28();
  RouteResource.hash(into:)(v2);
  return sub_1E65E6D78();
}

uint64_t sub_1E61AE83C(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762C8, &qword_1E65F53B8);
  v3 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D0, &qword_1E65F53C0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - v8;
  v10 = *(a2 + 64);
  v44 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v46 = v3 + 16;
  v15 = (v3 + 32);
  v48 = v3;
  v49 = a2;
  v50 = (v3 + 8);

  v17 = 0;
  v18 = 0;
  v19 = &unk_1E65F9E50;
  v47 = v9;
  v45 = (v3 + 32);
  while (1)
  {
    v20 = v19;
    v55 = v17;
    if (!v13)
    {
      break;
    }

    v21 = v18;
LABEL_13:
    v25 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v26 = v25 | (v21 << 6);
    v27 = v48;
    v28 = (*(v49 + 48) + 16 * v26);
    v29 = *v28;
    v30 = v28[1];
    v31 = v53;
    v32 = v54;
    (*(v48 + 16))(v53, *(v49 + 56) + *(v48 + 72) * v26, v54);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D8, v20);
    v34 = *(v33 + 48);
    v35 = v52;
    *v52 = v29;
    *(v35 + 1) = v30;
    v24 = v35;
    v36 = v32;
    v15 = v45;
    (*(v27 + 32))(&v35[v34], v31, v36);
    (*(*(v33 - 8) + 56))(v24, 0, 1, v33);

    v23 = v21;
    v19 = v20;
    v9 = v47;
LABEL_14:
    sub_1E5FAB460(v24, v9, &qword_1ED0762D0, &qword_1E65F53C0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D8, v19);
    if ((*(*(v37 - 8) + 48))(v9, 1, v37) == 1)
    {

      return MEMORY[0x1E694E740](v55);
    }

    v38 = v23;
    v40 = v53;
    v39 = v54;
    (*v15)(v53, &v9[*(v37 + 48)], v54);
    v41 = *(v51 + 48);
    v58 = *(v51 + 32);
    v59 = v41;
    v60 = *(v51 + 64);
    v42 = *(v51 + 16);
    v56 = *v51;
    v57 = v42;
    sub_1E65E5D78();

    sub_1E61B767C(&qword_1ED0762E0, &qword_1ED0762C8, &qword_1E65F53B8);
    sub_1E65E5B48();
    (*v50)(v40, v39);
    result = sub_1E65E6D78();
    v17 = result ^ v55;
    v18 = v38;
  }

  if (v14 <= v18 + 1)
  {
    v22 = v18 + 1;
  }

  else
  {
    v22 = v14;
  }

  v23 = v22 - 1;
  v24 = v52;
  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v14)
    {
      v19 = v20;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762D8, v20);
      (*(*(v43 - 8) + 56))(v24, 1, 1, v43);
      v13 = 0;
      goto LABEL_14;
    }

    v13 = *(v44 + 8 * v21);
    ++v18;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61AECB8(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762E8, &qword_1E65F53C8);
  v3 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F0, &qword_1E65F53D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - v8;
  v10 = *(a2 + 64);
  v44 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v46 = v3 + 16;
  v15 = (v3 + 32);
  v48 = v3;
  v49 = a2;
  v50 = (v3 + 8);

  v17 = 0;
  v18 = 0;
  v19 = &unk_1E65F9E60;
  v47 = v9;
  v45 = (v3 + 32);
  while (1)
  {
    v20 = v19;
    v55 = v17;
    if (!v13)
    {
      break;
    }

    v21 = v18;
LABEL_13:
    v25 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v26 = v25 | (v21 << 6);
    v27 = v48;
    v28 = (*(v49 + 48) + 16 * v26);
    v29 = *v28;
    v30 = v28[1];
    v31 = v53;
    v32 = v54;
    (*(v48 + 16))(v53, *(v49 + 56) + *(v48 + 72) * v26, v54);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F8, v20);
    v34 = *(v33 + 48);
    v35 = v52;
    *v52 = v29;
    *(v35 + 1) = v30;
    v24 = v35;
    v36 = v32;
    v15 = v45;
    (*(v27 + 32))(&v35[v34], v31, v36);
    (*(*(v33 - 8) + 56))(v24, 0, 1, v33);

    v23 = v21;
    v19 = v20;
    v9 = v47;
LABEL_14:
    sub_1E5FAB460(v24, v9, &qword_1ED0762F0, &qword_1E65F53D0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F8, v19);
    if ((*(*(v37 - 8) + 48))(v9, 1, v37) == 1)
    {

      return MEMORY[0x1E694E740](v55);
    }

    v38 = v23;
    v40 = v53;
    v39 = v54;
    (*v15)(v53, &v9[*(v37 + 48)], v54);
    v41 = *(v51 + 48);
    v58 = *(v51 + 32);
    v59 = v41;
    v60 = *(v51 + 64);
    v42 = *(v51 + 16);
    v56 = *v51;
    v57 = v42;
    sub_1E65E5D78();

    sub_1E61B767C(&qword_1ED076300, &qword_1ED0762E8, &qword_1E65F53C8);
    sub_1E65E5B48();
    (*v50)(v40, v39);
    result = sub_1E65E6D78();
    v17 = result ^ v55;
    v18 = v38;
  }

  if (v14 <= v18 + 1)
  {
    v22 = v18 + 1;
  }

  else
  {
    v22 = v14;
  }

  v23 = v22 - 1;
  v24 = v52;
  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v14)
    {
      v19 = v20;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762F8, v20);
      (*(*(v43 - 8) + 56))(v24, 1, 1, v43);
      v13 = 0;
      goto LABEL_14;
    }

    v13 = *(v44 + 8 * v21);
    ++v18;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61AF134(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076308, &qword_1E65F53D8);
  v3 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076310, &qword_1E65F53E0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - v8;
  v10 = *(a2 + 64);
  v44 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v46 = v3 + 16;
  v15 = (v3 + 32);
  v48 = v3;
  v49 = a2;
  v50 = (v3 + 8);

  v17 = 0;
  v18 = 0;
  v19 = &unk_1E65F9E70;
  v47 = v9;
  v45 = (v3 + 32);
  while (1)
  {
    v20 = v19;
    v55 = v17;
    if (!v13)
    {
      break;
    }

    v21 = v18;
LABEL_13:
    v25 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v26 = v25 | (v21 << 6);
    v27 = v48;
    v28 = (*(v49 + 48) + 16 * v26);
    v29 = *v28;
    v30 = v28[1];
    v31 = v53;
    v32 = v54;
    (*(v48 + 16))(v53, *(v49 + 56) + *(v48 + 72) * v26, v54);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076318, v20);
    v34 = *(v33 + 48);
    v35 = v52;
    *v52 = v29;
    *(v35 + 1) = v30;
    v24 = v35;
    v36 = v32;
    v15 = v45;
    (*(v27 + 32))(&v35[v34], v31, v36);
    (*(*(v33 - 8) + 56))(v24, 0, 1, v33);

    v23 = v21;
    v19 = v20;
    v9 = v47;
LABEL_14:
    sub_1E5FAB460(v24, v9, &qword_1ED076310, &qword_1E65F53E0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076318, v19);
    if ((*(*(v37 - 8) + 48))(v9, 1, v37) == 1)
    {

      return MEMORY[0x1E694E740](v55);
    }

    v38 = v23;
    v40 = v53;
    v39 = v54;
    (*v15)(v53, &v9[*(v37 + 48)], v54);
    v41 = *(v51 + 48);
    v58 = *(v51 + 32);
    v59 = v41;
    v60 = *(v51 + 64);
    v42 = *(v51 + 16);
    v56 = *v51;
    v57 = v42;
    sub_1E65E5D78();

    sub_1E61B767C(&qword_1ED076320, &qword_1ED076308, &qword_1E65F53D8);
    sub_1E65E5B48();
    (*v50)(v40, v39);
    result = sub_1E65E6D78();
    v17 = result ^ v55;
    v18 = v38;
  }

  if (v14 <= v18 + 1)
  {
    v22 = v18 + 1;
  }

  else
  {
    v22 = v14;
  }

  v23 = v22 - 1;
  v24 = v52;
  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v14)
    {
      v19 = v20;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076318, v20);
      (*(*(v43 - 8) + 56))(v24, 1, 1, v43);
      v13 = 0;
      goto LABEL_14;
    }

    v13 = *(v44 + 8 * v21);
    ++v18;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61AF5B0(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v3 = *(v58 - 8);
  v4 = MEMORY[0x1EEE9AC00](v58);
  v55 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v51 = v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076328, &qword_1E65F53E8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v48 - v11;
  v13 = *(a2 + 64);
  v48[0] = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v48[1] = v3 + 16;
  v57 = (v3 + 32);
  v52 = v3;
  v53 = a2;
  v54 = (v3 + 8);

  v19 = 0;
  v49 = v12;
  v50 = v10;
  v60 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v52;
      v26 = *(v53 + 48) + 24 * v24;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = v51;
      v31 = v58;
      (*(v52 + 16))(v51, *(v53 + 56) + *(v52 + 72) * v24, v58);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076330, &unk_1E65F9E80);
      v33 = *(v32 + 48);
      v34 = v50;
      *v50 = v27;
      v34[1] = v28;
      *(v34 + 16) = v29;
      v35 = v31;
      v10 = v34;
      (*(v25 + 32))(v34 + v33, v30, v35);
      (*(*(v32 - 8) + 56))(v10, 0, 1, v32);
      sub_1E600B01C(v27, v28, v29);
      v22 = v20;
      v12 = v49;
LABEL_13:
      sub_1E5FAB460(v10, v12, &qword_1ED076328, &qword_1E65F53E8);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076330, &unk_1E65F9E80);
      if ((*(*(v36 - 8) + 48))(v12, 1, v36) == 1)
      {
        break;
      }

      v37 = *(v36 + 48);
      v59 = v22;
      v38 = *v12;
      v39 = *(v12 + 1);
      v40 = v58;
      v41 = v12[16];
      v42 = v10;
      v43 = v55;
      (*v57)(v55, &v12[v37], v58);
      v44 = *(v56 + 48);
      v63 = *(v56 + 32);
      v64 = v44;
      v65 = *(v56 + 64);
      v45 = *(v56 + 16);
      v61 = *v56;
      v62 = v45;
      MEMORY[0x1E694E740](v41);
      sub_1E65E5D78();
      sub_1E6001C2C(v38, v39, v41);
      sub_1E61B767C(&qword_1ED076338, &qword_1ED072AE0, &qword_1E65F9E00);
      sub_1E65E5B48();
      v46 = v43;
      v10 = v42;
      (*v54)(v46, v40);
      result = sub_1E65E6D78();
      v19 = v59;
      v60 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1E694E740](v60);
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076330, &unk_1E65F9E80);
        (*(*(v47 - 8) + 56))(v10, 1, 1, v47);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v48[0] + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E61AFA9C(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v3 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076340, &qword_1E65F53F0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - v8;
  v10 = *(a2 + 64);
  v44 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v46 = v3 + 16;
  v15 = (v3 + 32);
  v48 = v3;
  v49 = a2;
  v50 = (v3 + 8);

  v17 = 0;
  v18 = 0;
  v19 = &unk_1E65F9E90;
  v47 = v9;
  v45 = (v3 + 32);
  while (1)
  {
    v20 = v19;
    v55 = v17;
    if (!v13)
    {
      break;
    }

    v21 = v18;
LABEL_13:
    v25 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v26 = v25 | (v21 << 6);
    v27 = v48;
    v28 = (*(v49 + 48) + 16 * v26);
    v29 = *v28;
    v30 = v28[1];
    v31 = v53;
    v32 = v54;
    (*(v48 + 16))(v53, *(v49 + 56) + *(v48 + 72) * v26, v54);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076348, v20);
    v34 = *(v33 + 48);
    v35 = v52;
    *v52 = v29;
    *(v35 + 1) = v30;
    v24 = v35;
    v36 = v32;
    v15 = v45;
    (*(v27 + 32))(&v35[v34], v31, v36);
    (*(*(v33 - 8) + 56))(v24, 0, 1, v33);

    v23 = v21;
    v19 = v20;
    v9 = v47;
LABEL_14:
    sub_1E5FAB460(v24, v9, &qword_1ED076340, &qword_1E65F53F0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076348, v19);
    if ((*(*(v37 - 8) + 48))(v9, 1, v37) == 1)
    {

      return MEMORY[0x1E694E740](v55);
    }

    v38 = v23;
    v40 = v53;
    v39 = v54;
    (*v15)(v53, &v9[*(v37 + 48)], v54);
    v41 = *(v51 + 48);
    v58 = *(v51 + 32);
    v59 = v41;
    v60 = *(v51 + 64);
    v42 = *(v51 + 16);
    v56 = *v51;
    v57 = v42;
    sub_1E65E5D78();

    sub_1E61B767C(&qword_1ED076338, &qword_1ED072AE0, &qword_1E65F9E00);
    sub_1E65E5B48();
    (*v50)(v40, v39);
    result = sub_1E65E6D78();
    v17 = result ^ v55;
    v18 = v38;
  }

  if (v14 <= v18 + 1)
  {
    v22 = v18 + 1;
  }

  else
  {
    v22 = v14;
  }

  v23 = v22 - 1;
  v24 = v52;
  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v14)
    {
      v19 = v20;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076348, v20);
      (*(*(v43 - 8) + 56))(v24, 1, 1, v43);
      v13 = 0;
      goto LABEL_14;
    }

    v13 = *(v44 + 8 * v21);
    ++v18;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61AFF18(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E694E740](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_1E65E5D78();

        sub_1E65E5D78();

        result = sub_1E65E6D78();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61B0084(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v52 = sub_1E65E2A38();
  v3 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076350, &qword_1E65F53F8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = *(a2 + 64);
  v41 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v43 = v3 + 16;
  v15 = (v3 + 32);
  v45 = v3;
  v46 = a2;
  v47 = (v3 + 8);

  v17 = 0;
  v18 = 0;
  v44 = v9;
  v42 = (v3 + 32);
  if (v13)
  {
    while (1)
    {
      v50 = v17;
      v19 = v18;
LABEL_13:
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v45;
      v25 = (*(v46 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v29 = v51;
      v28 = v52;
      (*(v45 + 16))(v51, *(v46 + 56) + *(v45 + 72) * v23, v52);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
      v31 = *(v30 + 48);
      v32 = v49;
      *v49 = v26;
      v32[1] = v27;
      v21 = v32;
      v33 = *(v24 + 32);
      v15 = v42;
      v33(v21 + v31, v29, v28);
      (*(*(v30 - 8) + 56))(v21, 0, 1, v30);

      v53 = v19;
      v9 = v44;
      v17 = v50;
LABEL_14:
      sub_1E5FAB460(v21, v9, &qword_1ED076350, &qword_1E65F53F8);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
      if ((*(*(v34 - 8) + 48))(v9, 1, v34) == 1)
      {
        break;
      }

      v36 = v51;
      v35 = v52;
      (*v15)(v51, &v9[*(v34 + 48)], v52);
      v37 = *(v48 + 48);
      v56 = *(v48 + 32);
      v57 = v37;
      v58 = *(v48 + 64);
      v38 = *(v48 + 16);
      v54 = *v48;
      v55 = v38;
      sub_1E65E5D78();

      sub_1E61B7730(&qword_1ED076360, MEMORY[0x1E699F498], MEMORY[0x1E699F4A0]);
      sub_1E65E5B48();
      (*v47)(v36, v35);
      result = sub_1E65E6D78();
      v17 ^= result;
      v18 = v53;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1E694E740](v17);
  }

  else
  {
LABEL_5:
    if (v14 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v14;
    }

    v21 = v49;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v14)
      {
        v53 = v20 - 1;
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
        (*(*(v39 - 8) + 56))(v21, 1, 1, v39);
        v13 = 0;
        goto LABEL_14;
      }

      v13 = *(v41 + 8 * v19);
      ++v18;
      if (v13)
      {
        v50 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E61B051C(__int128 *a1, uint64_t a2)
{
  result = sub_1E65E6D78();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_1E65E6D28();
    MEMORY[0x1E694E740](v12);
    result = sub_1E65E6D78();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1E694E740](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61B0648(__int128 *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - v10;
  v12 = a1[3];
  v32 = a1[2];
  v33 = v12;
  v34 = *(a1 + 8);
  v14 = *a1;
  v13 = a1[1];
  v26[1] = a1;
  v30 = v14;
  v31 = v13;
  v15 = sub_1E65E6D78();
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;
  v26[3] = v9 + 16;
  v26[4] = v15;
  v26[2] = v9 + 8;

  v21 = 0;
  for (i = 0; v18; v21 ^= v25)
  {
    v23 = i;
LABEL_9:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    (*(v9 + 16))(v11, *(a2 + 48) + *(v9 + 72) * (v24 | (v23 << 6)), v8);
    sub_1E61B7730(v27, v28, v29);
    v25 = sub_1E65E5B38();
    result = (*(v9 + 8))(v11, v8);
  }

  while (1)
  {
    v23 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return MEMORY[0x1E694E740](v21);
    }

    v18 = *(a2 + 56 + 8 * v23);
    ++i;
    if (v18)
    {
      i = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s10Blackbeard13RouteResourceO2eeoiySbAC_ACtFZ_0(char *a1, uint64_t *a2)
{
  v898 = a1;
  v899 = a2;
  v867 = sub_1E65D9048();
  v866 = *(v867 - 8);
  MEMORY[0x1EEE9AC00](v867);
  v807 = &v751 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v869 = sub_1E65E58D8();
  v868 = *(v869 - 8);
  MEMORY[0x1EEE9AC00](v869);
  v808 = &v751 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v863 = sub_1E65DA308();
  v862 = *(v863 - 8);
  MEMORY[0x1EEE9AC00](v863);
  v806 = &v751 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v865 = sub_1E65E56B8();
  v864 = *(v865 - 8);
  MEMORY[0x1EEE9AC00](v865);
  v805 = &v751 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v861 = sub_1E65D7EB8();
  v860 = *(v861 - 8);
  v6 = MEMORY[0x1EEE9AC00](v861);
  v804 = &v751 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v872 = &v751 - v8;
  v890 = sub_1E65E55E8();
  v859 = *(v890 - 8);
  MEMORY[0x1EEE9AC00](v890);
  v817 = &v751 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlaylistType(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v803 = &v751 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65E52B8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v802 = &v751 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v882 = sub_1E65E5528();
  v886 = *(v882 - 8);
  v14 = MEMORY[0x1EEE9AC00](v882);
  v812 = &v751 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v884 = &v751 - v16;
  v885 = sub_1E65E57D8();
  v870 = *(v885 - 8);
  MEMORY[0x1EEE9AC00](v885);
  v818 = &v751 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v756 = sub_1E65D7A38();
  v755 = *(v756 - 8);
  MEMORY[0x1EEE9AC00](v756);
  v751 = &v751 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v753 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076368, &qword_1E65F5400);
  MEMORY[0x1EEE9AC00](v753);
  v760 = &v751 - v19;
  v762 = sub_1E65DB5D8();
  v761 = *(v762 - 8);
  MEMORY[0x1EEE9AC00](v762);
  v752 = &v751 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v759 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076370, &qword_1E65F5408);
  MEMORY[0x1EEE9AC00](v759);
  v764 = &v751 - v21;
  v784 = sub_1E65DB3E8();
  v778 = *(v784 - 8);
  MEMORY[0x1EEE9AC00](v784);
  v766 = &v751 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v774 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076378, &qword_1E65F5410);
  MEMORY[0x1EEE9AC00](v774);
  v785 = &v751 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v754 = &v751 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v810 = &v751 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v873 = &v751 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077770, &unk_1E660C190);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v758 = &v751 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v809 = &v751 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v874 = &v751 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076220, &unk_1E65FA4A0);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v771 = &v751 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v813 = &v751 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v877 = &v751 - v41;
  v773 = sub_1E65D96F8();
  v775 = *(v773 - 8);
  MEMORY[0x1EEE9AC00](v773);
  v765 = &v751 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v772 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076380, &qword_1E65F5418);
  MEMORY[0x1EEE9AC00](v772);
  v777 = &v751 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  v45 = MEMORY[0x1EEE9AC00](v44 - 8);
  v787 = &v751 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v857 = &v751 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v858 = &v751 - v49;
  v856 = sub_1E65DB718();
  v855 = *(v856 - 8);
  MEMORY[0x1EEE9AC00](v856);
  v797 = &v751 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E65D74E8();
  v52 = *(v51 - 8);
  v895 = v51;
  v896 = v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v811 = &v751 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v883 = &v751 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v796 = &v751 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v799 = &v751 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v854 = &v751 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v801 = &v751 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v881 = &v751 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v800 = &v751 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v880 = &v751 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v795 = &v751 - v72;
  MEMORY[0x1EEE9AC00](v71);
  v871 = &v751 - v73;
  v74 = sub_1E65E1518();
  v891 = *(v74 - 8);
  v892 = v74;
  v75 = MEMORY[0x1EEE9AC00](v74);
  v798 = &v751 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v879 = &v751 - v77;
  v78 = sub_1E65DB848();
  v893 = *(v78 - 8);
  v894 = v78;
  v79 = MEMORY[0x1EEE9AC00](v78);
  v792 = &v751 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x1EEE9AC00](v79);
  v793 = &v751 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v851 = &v751 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v853 = &v751 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v849 = &v751 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v852 = &v751 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v816 = &v751 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v847 = &v751 - v94;
  MEMORY[0x1EEE9AC00](v93);
  v848 = &v751 - v95;
  v96 = sub_1E65E0B48();
  MEMORY[0x1EEE9AC00](v96 - 8);
  v791 = &v751 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v850 = sub_1E65D72D8();
  v887 = *(v850 - 8);
  v98 = MEMORY[0x1EEE9AC00](v850);
  v794 = &v751 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v98);
  v819 = &v751 - v100;
  v776 = sub_1E65E1FC8();
  v770 = *(v776 - 8);
  MEMORY[0x1EEE9AC00](v776);
  v757 = &v751 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v767 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076388, &qword_1E65F5420);
  MEMORY[0x1EEE9AC00](v767);
  v769 = &v751 - v102;
  v781 = sub_1E65E2CF8();
  v782 = *(v781 - 8);
  MEMORY[0x1EEE9AC00](v781);
  v768 = &v751 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v779 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076390, &qword_1E65F5428);
  MEMORY[0x1EEE9AC00](v779);
  v780 = &v751 - v104;
  v889 = sub_1E65D76F8();
  v888 = *(v889 - 8);
  v105 = MEMORY[0x1EEE9AC00](v889);
  v789 = &v751 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v105);
  v783 = &v751 - v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  MEMORY[0x1EEE9AC00](v108 - 8);
  v788 = &v751 - v109;
  v790 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076398, &qword_1E65F5430);
  MEMORY[0x1EEE9AC00](v790);
  v815 = &v751 - v110;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v112 = MEMORY[0x1EEE9AC00](v111 - 8);
  v763 = &v751 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = MEMORY[0x1EEE9AC00](v112);
  v875 = &v751 - v115;
  MEMORY[0x1EEE9AC00](v114);
  v876 = &v751 - v116;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v118 = MEMORY[0x1EEE9AC00](v117 - 8);
  v786 = &v751 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = MEMORY[0x1EEE9AC00](v118);
  v814 = &v751 - v121;
  MEMORY[0x1EEE9AC00](v120);
  v878 = &v751 - v122;
  v897 = type metadata accessor for RouteResource(0);
  v123 = MEMORY[0x1EEE9AC00](v897);
  v844 = &v751 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = MEMORY[0x1EEE9AC00](v123);
  v845 = &v751 - v126;
  v127 = MEMORY[0x1EEE9AC00](v125);
  v842 = &v751 - v128;
  v129 = MEMORY[0x1EEE9AC00](v127);
  v843 = &v751 - v130;
  v131 = MEMORY[0x1EEE9AC00](v129);
  v841 = &v751 - v132;
  v133 = MEMORY[0x1EEE9AC00](v131);
  v839 = &v751 - v134;
  v135 = MEMORY[0x1EEE9AC00](v133);
  v838 = &v751 - v136;
  v137 = MEMORY[0x1EEE9AC00](v135);
  v837 = &v751 - v138;
  v139 = MEMORY[0x1EEE9AC00](v137);
  v834 = (&v751 - v140);
  v141 = MEMORY[0x1EEE9AC00](v139);
  v836 = (&v751 - v142);
  v143 = MEMORY[0x1EEE9AC00](v141);
  v840 = &v751 - v144;
  v145 = MEMORY[0x1EEE9AC00](v143);
  v846 = &v751 - v146;
  v147 = MEMORY[0x1EEE9AC00](v145);
  v835 = &v751 - v148;
  v149 = MEMORY[0x1EEE9AC00](v147);
  v831 = &v751 - v150;
  v151 = MEMORY[0x1EEE9AC00](v149);
  v833 = &v751 - v152;
  v153 = MEMORY[0x1EEE9AC00](v151);
  v829 = &v751 - v154;
  v155 = MEMORY[0x1EEE9AC00](v153);
  v832 = &v751 - v156;
  v157 = MEMORY[0x1EEE9AC00](v155);
  v828 = (&v751 - v158);
  v159 = MEMORY[0x1EEE9AC00](v157);
  v825 = (&v751 - v160);
  v161 = MEMORY[0x1EEE9AC00](v159);
  v830 = &v751 - v162;
  v163 = MEMORY[0x1EEE9AC00](v161);
  v822 = (&v751 - v164);
  v165 = MEMORY[0x1EEE9AC00](v163);
  v821 = &v751 - v166;
  v167 = MEMORY[0x1EEE9AC00](v165);
  v169 = (&v751 - v168);
  v170 = MEMORY[0x1EEE9AC00](v167);
  v172 = (&v751 - v171);
  v173 = MEMORY[0x1EEE9AC00](v170);
  v827 = (&v751 - v174);
  v175 = MEMORY[0x1EEE9AC00](v173);
  v823 = (&v751 - v176);
  v177 = MEMORY[0x1EEE9AC00](v175);
  v826 = &v751 - v178;
  v179 = MEMORY[0x1EEE9AC00](v177);
  v820 = (&v751 - v180);
  v181 = MEMORY[0x1EEE9AC00](v179);
  v183 = &v751 - v182;
  v184 = MEMORY[0x1EEE9AC00](v181);
  v186 = &v751 - v185;
  v187 = MEMORY[0x1EEE9AC00](v184);
  v189 = &v751 - v188;
  v190 = MEMORY[0x1EEE9AC00](v187);
  v192 = (&v751 - v191);
  v193 = MEMORY[0x1EEE9AC00](v190);
  v824 = &v751 - v194;
  MEMORY[0x1EEE9AC00](v193);
  v196 = (&v751 - v195);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0763A0, &qword_1E65F5438);
  v198 = MEMORY[0x1EEE9AC00](v197 - 8);
  v200 = &v751 - v199;
  v201 = &v751 + *(v198 + 56) - v199;
  sub_1E61B7384(v898, &v751 - v199, type metadata accessor for RouteResource);
  v202 = v899;
  v899 = v201;
  sub_1E61B7384(v202, v201, type metadata accessor for RouteResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v898 = v200;
      v315 = v824;
      sub_1E61B7384(v200, v824, type metadata accessor for RouteResource);
      v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v317 = v316[12];
      v318 = *(v315 + v317 + 8);
      v896 = *(v315 + v317);
      v319 = v316[16];
      v320 = v316[20];
      v321 = *(v315 + v320);
      v322 = v316[24];
      v323 = v316[28];
      LODWORD(v895) = *(v315 + v323);
      v324 = v316[32];
      v893 = *(v315 + v324);
      LODWORD(v894) = *(v315 + v324 + 8);
      v325 = v899;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        sub_1E5DFE50C(v315 + v322, &unk_1ED077750, &unk_1E66011C0);
        sub_1E5DFE50C(v315 + v319, &qword_1ED072B60, &unk_1E65FA490);
        sub_1E5DFE50C(v315, &unk_1ED077760, &unk_1E66011D0);
        v200 = v898;
        goto LABEL_173;
      }

      v891 = v318;
      v892 = v321;
      v897 = *(v325 + v320);
      v326 = *(v325 + v317 + 8);
      v890 = *(v325 + v317);
      LODWORD(v887) = *(v325 + v323);
      v885 = *(v325 + v324);
      LODWORD(v886) = *(v325 + v324 + 8);
      sub_1E5FAB460(v315 + v319, v878, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5FAB460(v315 + v322, v876, &unk_1ED077750, &unk_1E66011C0);
      v327 = v325 + v319;
      v328 = v814;
      sub_1E5FAB460(v327, v814, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5FAB460(v325 + v322, v875, &unk_1ED077750, &unk_1E66011C0);
      v329 = *(v790 + 48);
      v330 = v815;
      sub_1E5FAB460(v315, v815, &unk_1ED077760, &unk_1E66011D0);
      sub_1E5FAB460(v325, v330 + v329, &unk_1ED077760, &unk_1E66011D0);
      v331 = v888;
      v332 = *(v888 + 48);
      v333 = v889;
      if (v332(v330, 1, v889) == 1)
      {
        v334 = v332(v330 + v329, 1, v333) == 1;
        v335 = v330;
        v200 = v898;
        if (!v334)
        {

LABEL_233:
          v612 = &qword_1ED076398;
          v613 = &qword_1E65F5430;
          v614 = v815;
LABEL_234:
          sub_1E5DFE50C(v614, v612, v613);
LABEL_235:
          sub_1E5DFE50C(v875, &unk_1ED077750, &unk_1E66011C0);
          sub_1E5DFE50C(v328, &qword_1ED072B60, &unk_1E65FA490);
          sub_1E5DFE50C(v876, &unk_1ED077750, &unk_1E66011C0);
          v615 = v878;
          v616 = &qword_1ED072B60;
          v617 = &unk_1E65FA490;
          goto LABEL_309;
        }

        sub_1E5DFE50C(v335, &unk_1ED077760, &unk_1E66011D0);
        v336 = v891;
      }

      else
      {
        v578 = v788;
        sub_1E5DFD1CC(v330, v788, &unk_1ED077760, &unk_1E66011D0);
        v579 = v332(v330 + v329, 1, v333);
        v580 = v898;
        if (v579 == 1)
        {

          (*(v331 + 8))(v578, v333);
          v200 = v580;
          v328 = v814;
          goto LABEL_233;
        }

        v618 = v330 + v329;
        v619 = v783;
        (*(v331 + 32))(v783, v618, v333);
        sub_1E61B7730(&qword_1EE2D71A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v620 = sub_1E65E5B98();
        v621 = *(v331 + 8);
        v621(v619, v333);
        v621(v578, v333);
        sub_1E5DFE50C(v330, &unk_1ED077760, &unk_1E66011D0);
        v200 = v580;
        v328 = v814;
        v336 = v891;
        if ((v620 & 1) == 0)
        {

          goto LABEL_235;
        }
      }

      if (v336)
      {
        v622 = v786;
        if (!v326)
        {

          goto LABEL_348;
        }

        if (v896 == v890 && v336 == v326)
        {
        }

        else
        {
          v673 = sub_1E65E6C18();

          if ((v673 & 1) == 0)
          {
            goto LABEL_348;
          }
        }
      }

      else
      {
        v622 = v786;
        if (v326)
        {

          goto LABEL_235;
        }
      }

      v674 = v897;
      v675 = *(v779 + 48);
      v676 = v780;
      sub_1E5DFD1CC(v878, v780, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5DFD1CC(v328, v676 + v675, &qword_1ED072B60, &unk_1E65FA490);
      v677 = *(v782 + 48);
      v678 = v781;
      if (v677(v676, 1, v781) == 1)
      {
        v679 = v677(v676 + v675, 1, v678);
        v680 = v776;
        if (v679 == 1)
        {
          sub_1E5DFE50C(v676, &qword_1ED072B60, &unk_1E65FA490);
          v681 = v892;
          goto LABEL_329;
        }

LABEL_327:
        v612 = &qword_1ED076390;
        v613 = &qword_1E65F5428;
        v614 = v676;
        goto LABEL_234;
      }

      sub_1E5DFD1CC(v676, v622, &qword_1ED072B60, &unk_1E65FA490);
      if (v677(v676 + v675, 1, v678) == 1)
      {

        (*(v782 + 8))(v622, v678);
        goto LABEL_327;
      }

      v689 = v782;
      v690 = v676 + v675;
      v691 = v768;
      (*(v782 + 32))(v768, v690, v678);
      sub_1E61B7730(&qword_1ED0763D8, MEMORY[0x1E699F5D8], MEMORY[0x1E699F5E8]);
      v692 = sub_1E65E5B98();
      v693 = *(v689 + 8);
      v693(v691, v678);
      v693(v622, v678);
      v680 = v776;
      sub_1E5DFE50C(v676, &qword_1ED072B60, &unk_1E65FA490);
      v681 = v892;
      if (v692)
      {
LABEL_329:
        v694 = sub_1E62871C8(v681, v674);

        if ((v694 & 1) == 0)
        {
          goto LABEL_235;
        }

        v695 = *(v767 + 48);
        v696 = v769;
        sub_1E5DFD1CC(v876, v769, &unk_1ED077750, &unk_1E66011C0);
        sub_1E5DFD1CC(v875, v696 + v695, &unk_1ED077750, &unk_1E66011C0);
        v697 = *(v770 + 48);
        if (v697(v696, 1, v680) == 1)
        {
          v334 = v697(v696 + v695, 1, v680) == 1;
          v614 = v696;
          if (!v334)
          {
            goto LABEL_353;
          }

          sub_1E5DFE50C(v696, &unk_1ED077750, &unk_1E66011C0);
        }

        else
        {
          v707 = v763;
          sub_1E5DFD1CC(v696, v763, &unk_1ED077750, &unk_1E66011C0);
          if (v697(v696 + v695, 1, v680) == 1)
          {
            (*(v770 + 8))(v707, v680);
            v614 = v769;
LABEL_353:
            v612 = &qword_1ED076388;
            v613 = &qword_1E65F5420;
            goto LABEL_234;
          }

          v709 = v770;
          v710 = v680;
          v711 = v707;
          v712 = v769;
          v713 = v769 + v695;
          v714 = v757;
          (*(v770 + 32))(v757, v713, v710);
          sub_1E61B7730(&qword_1ED0763D0, MEMORY[0x1E699F198], MEMORY[0x1E699F1A8]);
          v715 = sub_1E65E5B98();
          v716 = *(v709 + 8);
          v716(v714, v710);
          v716(v711, v710);
          sub_1E5DFE50C(v712, &unk_1ED077750, &unk_1E66011C0);
          if ((v715 & 1) == 0)
          {
            goto LABEL_235;
          }
        }

        v717 = sub_1E65E2938();
        v718 = sub_1E65E2938();
        sub_1E5DFE50C(v875, &unk_1ED077750, &unk_1E66011C0);
        sub_1E5DFE50C(v328, &qword_1ED072B60, &unk_1E65FA490);
        sub_1E5DFE50C(v876, &unk_1ED077750, &unk_1E66011C0);
        sub_1E5DFE50C(v878, &qword_1ED072B60, &unk_1E65FA490);
        if (v717 == v718)
        {
          if (v894)
          {
            if (v886)
            {
              goto LABEL_397;
            }
          }

          else
          {
            v727 = v886;
            if (v893 != v885)
            {
              v727 = 1;
            }

            if ((v727 & 1) == 0)
            {
              goto LABEL_397;
            }
          }

          goto LABEL_376;
        }

        goto LABEL_310;
      }

LABEL_348:

      goto LABEL_235;
    case 2u:
      sub_1E61B7384(v200, v192, type metadata accessor for RouteResource);
      v204 = *v192;
      v203 = v192[1];
      v205 = v899;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_161;
      }

      goto LABEL_89;
    case 3u:
      sub_1E61B7384(v200, v189, type metadata accessor for RouteResource);
      v288 = *v189;
      v287 = *(v189 + 1);
      v289 = v189[17];
      v290 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v291 = v899;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v887 + 8))(&v189[v290], v850);

        goto LABEL_173;
      }

      LODWORD(v897) = v289;
      v898 = v200;
      v293 = *v291;
      v292 = v291[1];
      LODWORD(v896) = *(v291 + 16);
      LODWORD(v895) = *(v291 + 17);
      v294 = *(v887 + 32);
      v295 = &v189[v290];
      v296 = v850;
      v294(v819, v295, v850);
      v297 = v291 + v290;
      v298 = v794;
      v294(v794, v297, v296);
      if (v288 == v293 && v287 == v292)
      {

LABEL_185:
        v572 = sub_1E65E03C8();
        v574 = v573;
        v575 = sub_1E65E03C8();
        v266 = v898;
        if (v572 == v575 && v574 == v576)
        {
        }

        else
        {
          v589 = sub_1E65E6C18();

          if ((v589 & 1) == 0)
          {
LABEL_225:
            v607 = *(v887 + 8);
            v607(v298, v296);
            v607(v819, v296);
LABEL_277:
            sub_1E61B76D0(v266, type metadata accessor for RouteResource);
            goto LABEL_174;
          }
        }

        v590 = sub_1E65DFB58();
        v592 = v591;
        if (v590 == sub_1E65DFB58() && v592 == v593)
        {

LABEL_223:
          v605 = v819;
          v209 = sub_1E65D7288();
          v606 = *(v887 + 8);
          v606(v298, v296);
          v606(v605, v296);
          goto LABEL_224;
        }

        v604 = sub_1E65E6C18();

        if (v604)
        {
          goto LABEL_223;
        }

        goto LABEL_225;
      }

      v571 = sub_1E65E6C18();

      if (v571)
      {
        goto LABEL_185;
      }

      v611 = *(v887 + 8);
      v611(v298, v296);
      v611(v819, v296);
      goto LABEL_376;
    case 4u:
      sub_1E61B7384(v200, v186, type metadata accessor for RouteResource);
      v231 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48);
      v233 = *&v186[v231];
      v232 = *&v186[v231 + 8];
      v234 = v899;
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        sub_1E61B76D0(v186, MEMORY[0x1E699DD40]);
        goto LABEL_173;
      }

      v236 = *(v234 + v231);
      v235 = *(v234 + v231 + 8);
      v237 = v791;
      sub_1E61B7400(v234, v791, MEMORY[0x1E699DD40]);
      v238 = MEMORY[0x1E6948530](v186, v237);
      sub_1E61B76D0(v186, MEMORY[0x1E699DD40]);
      if ((v238 & 1) == 0)
      {
        sub_1E61B76D0(v237, MEMORY[0x1E699DD40]);

        goto LABEL_310;
      }

      if (v233 == v236 && v232 == v235)
      {

        sub_1E61B76D0(v237, MEMORY[0x1E699DD40]);
        goto LABEL_227;
      }

      v608 = sub_1E65E6C18();

      sub_1E61B76D0(v237, MEMORY[0x1E699DD40]);
      if (v608)
      {
        goto LABEL_227;
      }

      goto LABEL_310;
    case 5u:
      sub_1E61B7384(v200, v183, type metadata accessor for RouteResource);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_173;
      }

      v381 = sub_1E65DF568();
      v383 = v382;
      if (v381 != sub_1E65DF568() || v383 != v384)
      {
        goto LABEL_194;
      }

      goto LABEL_103;
    case 6u:
      v404 = v820;
      sub_1E61B7384(v200, v820, type metadata accessor for RouteResource);
      v405 = *v404;
      v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v407 = *(v406 + 48);
      v408 = *(v406 + 64);
      v409 = v899;
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        (*(v891 + 8))(v404 + v408, v892);
        (*(v893 + 8))(v404 + v407, v894);
        goto LABEL_173;
      }

      v897 = *v409;
      v898 = v200;
      v410 = v894;
      v411 = *(v893 + 32);
      v411(v848, v404 + v407, v894);
      v412 = v892;
      v413 = v404;
      v414 = *(v891 + 32);
      v414(v879, v413 + v408, v892);
      v411(v847, v409 + v407, v410);
      v415 = v798;
      v414(v798, v409 + v408, v412);
      if (v405)
      {
        v416 = v897;
        if (!v897)
        {
          v266 = v898;
          v421 = v894;
          v420 = v848;
          goto LABEL_250;
        }

        sub_1E5DEF738(0, &qword_1ED0723A0, 0x1E6959A28);
        v417 = v405;
        v418 = v416;
        v419 = sub_1E65E65A8();

        v266 = v898;
        v420 = v848;
        if ((v419 & 1) == 0)
        {

          v405 = v418;
          v421 = v894;
LABEL_250:

          v628 = v892;
          v629 = *(v891 + 8);
          v629(v415, v892);
          v630 = *(v893 + 8);
          v630(v847, v421);
          v629(v879, v628);
          v630(v420, v421);
          goto LABEL_277;
        }
      }

      else
      {
        v416 = v897;
        v266 = v898;
        v420 = v848;
        if (v897)
        {
          v405 = v897;
          v421 = v894;
          goto LABEL_250;
        }
      }

      v598 = v847;
      v599 = sub_1E65DB828();
      v600 = v894;
      if (v599)
      {
        v209 = MEMORY[0x1E6948EE0](v879, v415);

        v601 = v892;
        v602 = *(v891 + 8);
        v602(v415, v892);
        v603 = *(v893 + 8);
        v603(v598, v600);
        v602(v879, v601);
        v603(v420, v600);
        goto LABEL_224;
      }

      v650 = v892;
      v651 = *(v891 + 8);
      v651(v415, v892);
      v652 = *(v893 + 8);
      v652(v598, v600);
      v651(v879, v650);
      v652(v420, v600);
      goto LABEL_277;
    case 7u:
      v299 = v826;
      sub_1E61B7384(v200, v826, type metadata accessor for RouteResource);
      v300 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720D0, &unk_1E65EA290) + 48);
      v301 = v899;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        (*(v896 + 8))(v299 + v300, v895);
        (*(v893 + 8))(v299, v894);
        goto LABEL_173;
      }

      v302 = v893;
      v303 = v816;
      (*(v893 + 32))(v816, v301, v894);
      v305 = v895;
      v304 = v896;
      v306 = *(v896 + 32);
      v306(v871, v299 + v300, v895);
      v307 = v301 + v300;
      v308 = v795;
      v306(v795, v307, v305);
      v309 = sub_1E65DB828();
      v310 = *(v302 + 8);
      v311 = v299;
      v312 = v894;
      v310(v311, v894);
      if (v309)
      {
        v313 = v871;
        v209 = sub_1E65D7468();
        v314 = *(v304 + 8);
        v314(v308, v305);
        v314(v313, v305);
        v310(v816, v312);
        goto LABEL_149;
      }

      v577 = *(v304 + 8);
      v577(v308, v305);
      v577(v871, v305);
      v310(v303, v312);
      goto LABEL_310;
    case 8u:
      v250 = v823;
      sub_1E61B7384(v200, v823, type metadata accessor for RouteResource);
      v251 = *v250;
      v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v253 = *(v435 + 48);
      v254 = *(v435 + 64);
      v436 = v899;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_109;
      }

      v897 = *v436;
      v898 = v200;
      v437 = v894;
      v438 = *(v893 + 32);
      v438(v852, v250 + v253, v894);
      v439 = *(v896 + 32);
      v440 = v250 + v254;
      v441 = v895;
      v439(v880, v440, v895);
      v438(v849, v436 + v253, v437);
      v442 = v800;
      v439(v800, v436 + v254, v441);
      if (v251)
      {
        v443 = v897;
        if (!v897)
        {
          v266 = v898;
          v267 = v894;
          v268 = v852;
          v447 = v849;
          goto LABEL_252;
        }

        sub_1E5DEF738(0, &qword_1ED0723A0, 0x1E6959A28);
        v444 = v251;
        v445 = v443;
        v446 = sub_1E65E65A8();

        v266 = v898;
        v267 = v894;
        v268 = v852;
        v447 = v849;
        if ((v446 & 1) == 0)
        {

          v251 = v445;
LABEL_252:

          goto LABEL_275;
        }
      }

      else
      {
        v443 = v897;
        v266 = v898;
        v267 = v894;
        v268 = v852;
        v447 = v849;
        if (v897)
        {
          v251 = v897;
          goto LABEL_252;
        }
      }

      if (sub_1E65DB828())
      {
        v209 = sub_1E65D7468();

        v594 = v895;
        v595 = *(v896 + 8);
        v595(v442, v895);
        v596 = *(v893 + 8);
        v596(v447, v267);
        v597 = &v906;
        goto LABEL_221;
      }

LABEL_275:
      v646 = v895;
      v647 = *(v896 + 8);
      v647(v442, v895);
      v648 = *(v893 + 8);
      v648(v447, v267);
      v649 = &v906;
LABEL_276:
      v647(*(v649 - 32), v646);
      v648(v268, v267);
      goto LABEL_277;
    case 9u:
      v250 = v827;
      sub_1E61B7384(v200, v827, type metadata accessor for RouteResource);
      v251 = *v250;
      v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v253 = *(v252 + 48);
      v254 = *(v252 + 64);
      v255 = v899;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_109:

        (*(v896 + 8))(v250 + v254, v895);
        (*(v893 + 8))(v250 + v253, v894);
        goto LABEL_173;
      }

      v897 = *v255;
      v898 = v200;
      v256 = v894;
      v257 = *(v893 + 32);
      v257(v853, v250 + v253, v894);
      v258 = *(v896 + 32);
      v259 = v250 + v254;
      v260 = v895;
      v258(v881, v259, v895);
      v257(v851, v255 + v253, v256);
      v261 = v801;
      v258(v801, v255 + v254, v260);
      if (v251)
      {
        v262 = v897;
        if (!v897)
        {
          v266 = v898;
          v267 = v894;
          v268 = v853;
          v269 = v851;
          goto LABEL_246;
        }

        sub_1E5DEF738(0, &qword_1ED0723A0, 0x1E6959A28);
        v263 = v251;
        v264 = v262;
        v265 = sub_1E65E65A8();

        v266 = v898;
        v267 = v894;
        v268 = v853;
        v269 = v851;
        if ((v265 & 1) == 0)
        {

          v251 = v264;
LABEL_246:

LABEL_272:
          v646 = v895;
          v647 = *(v896 + 8);
          v647(v261, v895);
          v648 = *(v893 + 8);
          v648(v269, v267);
          v649 = &v907;
          goto LABEL_276;
        }
      }

      else
      {
        v262 = v897;
        v266 = v898;
        v267 = v894;
        v268 = v853;
        v269 = v851;
        if (v897)
        {
          v251 = v897;
          goto LABEL_246;
        }
      }

      if ((sub_1E65DB828() & 1) == 0)
      {

        goto LABEL_272;
      }

      v209 = sub_1E65D7468();

      v594 = v895;
      v595 = *(v896 + 8);
      v595(v261, v895);
      v596 = *(v893 + 8);
      v596(v269, v267);
      v597 = &v907;
LABEL_221:
      v595(*(v597 - 32), v594);
      v596(v268, v267);
LABEL_224:
      sub_1E61B76D0(v266, type metadata accessor for RouteResource);
      return v209 & 1;
    case 0xAu:
      sub_1E61B7384(v200, v172, type metadata accessor for RouteResource);
      v431 = *v172;
      v430 = v172[1];
      v432 = v899;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_161;
      }

      v433 = *v432;
      v434 = v432[1];
      if (v431 == v433 && v430 == v434)
      {
        goto LABEL_103;
      }

LABEL_194:
      v584 = sub_1E65E6C18();

      if ((v584 & 1) == 0)
      {
        goto LABEL_310;
      }

      goto LABEL_227;
    case 0xBu:
      sub_1E61B7384(v200, v169, type metadata accessor for RouteResource);
      v204 = *v169;
      v203 = v169[1];
      v205 = v899;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_161;
      }

      goto LABEL_89;
    case 0xCu:
      v239 = v200;
      v240 = v821;
      sub_1E61B7384(v200, v821, type metadata accessor for RouteResource);
      v242 = *v240;
      v241 = *(v240 + 8);
      v243 = *(v240 + 16);
      v244 = *(v240 + 24);
      v245 = v899;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        sub_1E5F94E00(v243, v244);

        v200 = v239;
        goto LABEL_173;
      }

      v246 = *v245;
      v247 = v245[1];
      v248 = v245[2];
      v249 = *(v245 + 24);
      if (v242 == v246 && v241 == v247)
      {
      }

      else
      {
        v569 = sub_1E65E6C18();

        if ((v569 & 1) == 0)
        {
          sub_1E5F94E00(v248, v249);
          sub_1E5F94E00(v243, v244);
LABEL_231:
          sub_1E61B76D0(v239, type metadata accessor for RouteResource);
          goto LABEL_174;
        }
      }

      *&v903 = v243;
      BYTE8(v903) = v244;
      v900 = v248;
      LOBYTE(v901) = v249;
      v209 = _s10Blackbeard31RoutingContextPresentationStyleO2eeoiySbAC_ACtFZ_0(&v903, &v900);
      sub_1E5F94E00(v248, v249);
      sub_1E5F94E00(v243, v244);
      goto LABEL_181;
    case 0xDu:
      v400 = v822;
      sub_1E61B7384(v200, v822, type metadata accessor for RouteResource);
      v204 = *v400;
      v203 = v400[1];
      v205 = v899;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_89;
      }

      goto LABEL_161;
    case 0xEu:
      v212 = v830;
      sub_1E61B7384(v200, v830, type metadata accessor for RouteResource);
      v213 = v899;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v214 = v855;
        v215 = v797;
        v216 = v856;
        (*(v855 + 32))(v797, v213, v856);
        v217 = MEMORY[0x1E6943110](v212, v215);
        goto LABEL_140;
      }

      (*(v855 + 8))(v212, v856);
      goto LABEL_173;
    case 0xFu:
      v286 = v825;
      sub_1E61B7384(v200, v825, type metadata accessor for RouteResource);
      v204 = *v286;
      v203 = v286[1];
      v205 = v899;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_161;
      }

      goto LABEL_89;
    case 0x10u:
      v211 = v828;
      sub_1E61B7384(v200, v828, type metadata accessor for RouteResource);
      v204 = *v211;
      v203 = v211[1];
      v205 = v899;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_161;
      }

      goto LABEL_89;
    case 0x11u:
      v347 = v832;
      sub_1E61B7384(v200, v832, type metadata accessor for RouteResource);
      v349 = *v347;
      v348 = *(v347 + 1);
      v350 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720E0, &unk_1E65EA2A0) + 48);
      v351 = v899;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        (*(v896 + 8))(&v347[v350], v895);
LABEL_161:

LABEL_173:
        sub_1E5DFE50C(v200, &qword_1ED0763A0, &qword_1E65F5438);
        goto LABEL_174;
      }

      v898 = v200;
      v353 = *v351;
      v352 = v351[1];
      v354 = v896;
      v355 = *(v896 + 32);
      v356 = &v347[v350];
      v357 = v351;
      v358 = v895;
      v355(v854, v356, v895);
      v359 = v357 + v350;
      v360 = v799;
      v355(v799, v359, v358);
      if (v349 == v353 && v348 == v352)
      {

        v361 = v898;
      }

      else
      {
        v581 = sub_1E65E6C18();

        v361 = v898;
        if ((v581 & 1) == 0)
        {
          v623 = *(v354 + 8);
          v623(v360, v358);
          v623(v854, v358);
          sub_1E61B76D0(v361, type metadata accessor for RouteResource);
LABEL_174:
          v209 = 0;
          return v209 & 1;
        }
      }

      v582 = v854;
      v209 = sub_1E65D7468();
      v583 = *(v354 + 8);
      v583(v360, v358);
      v583(v582, v358);
      sub_1E61B76D0(v361, type metadata accessor for RouteResource);
      return v209 & 1;
    case 0x12u:
      v422 = v829;
      sub_1E61B7384(v200, v829, type metadata accessor for RouteResource);
      v424 = *v422;
      v423 = *(v422 + 8);
      v425 = *(v422 + 16);
      v426 = v899;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        sub_1E5F94E14(v424, v423, v425);
        goto LABEL_173;
      }

      v427 = *v426;
      v428 = v426[1];
      v239 = v200;
      v429 = *(v426 + 16);
      *&v903 = v424;
      *(&v903 + 1) = v423;
      LOBYTE(v904) = v425;
      v900 = v427;
      v901 = v428;
      v902 = v429;
      v209 = _s10Blackbeard17QueuedSessionTypeO2eeoiySbAC_ACtFZ_0(&v903, &v900);
      sub_1E5F94E14(v427, v428, v429);
      sub_1E5F94E14(v424, v423, v425);
LABEL_181:
      sub_1E61B76D0(v239, type metadata accessor for RouteResource);
      return v209 & 1;
    case 0x13u:
      v507 = v833;
      sub_1E61B7384(v200, v833, type metadata accessor for RouteResource);
      v508 = v899;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v510 = v895;
        v509 = v896;
        v511 = v796;
        (*(v896 + 32))(v796, v508, v895);
        v209 = sub_1E65D7468();
        v512 = *(v509 + 8);
        v512(v511, v510);
        v512(v507, v510);
        goto LABEL_149;
      }

      (*(v896 + 8))(v507, v895);
      goto LABEL_173;
    case 0x14u:
      v362 = v200;
      v363 = v831;
      sub_1E61B7384(v200, v831, type metadata accessor for RouteResource);
      v364 = *v363;
      v365 = *(v363 + 8);
      v367 = *(v363 + 16);
      v366 = *(v363 + 24);
      v368 = *(v363 + 32);
      v369 = *(v363 + 40);
      v370 = *(v363 + 48);
      v371 = *(v363 + 56);
      v372 = v899;
      if (swift_getEnumCaseMultiPayload() != 20)
      {

        v200 = v362;
        goto LABEL_173;
      }

      LODWORD(v897) = v369;
      v373 = v372;
      v375 = *(v372 + 1);
      v374 = *(v372 + 2);
      v376 = *(v372 + 3);
      v377 = *(v373 + 4);
      v378 = *(v373 + 40);
      v379 = v373[6];
      v380 = *(v373 + 7);
      if (v365)
      {
        if (v375)
        {
          v896 = v377;
          LODWORD(v895) = v378;
          v898 = v380;
          if (v364 == *v899 && v365 == v375)
          {

            goto LABEL_254;
          }

          v631 = sub_1E65E6C18();

          if (v631)
          {
LABEL_254:
            if (v367 == v374 && v366 == v376)
            {

              goto LABEL_258;
            }

            v632 = sub_1E65E6C18();

            if (v632)
            {
LABEL_258:
              v633 = v362;
              if (v368 == v896)
              {
                v634 = sub_1E65D89A8();
                v636 = v635;
                if (v634 == sub_1E65D89A8() && v636 == v637)
                {

                  goto LABEL_299;
                }

                v665 = sub_1E65E6C18();

                if (v665)
                {
LABEL_299:
                  if (v370 == v379)
                  {
                    sub_1E5DEF738(0, &qword_1ED076218, 0x1E69E58C0);
                    v666 = v898;
                    v209 = sub_1E65E65A8();

                    sub_1E61B76D0(v633, type metadata accessor for RouteResource);
                    return v209 & 1;
                  }
                }
              }

              sub_1E61B76D0(v633, type metadata accessor for RouteResource);
              goto LABEL_174;
            }

LABEL_289:
            sub_1E61B76D0(v362, type metadata accessor for RouteResource);
            goto LABEL_174;
          }
        }

        else
        {
          v627 = v380;
        }
      }

      else
      {
        v896 = v377;
        LODWORD(v895) = v378;
        v898 = v380;
        if (!v375)
        {
          goto LABEL_254;
        }
      }

      goto LABEL_289;
    case 0x15u:
      v385 = v200;
      v386 = v835;
      sub_1E61B7384(v200, v835, type metadata accessor for RouteResource);
      v388 = *v386;
      v387 = *(v386 + 8);
      v389 = *(v386 + 24);
      v898 = *(v386 + 16);
      v390 = *(v386 + 32);
      v391 = *(v386 + 40);
      v392 = *(v386 + 48);
      v393 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v394 = v899;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        sub_1E5DFE50C(v386 + v393, &unk_1ED077780, &unk_1E66097F0);

        v200 = v385;
        goto LABEL_173;
      }

      v895 = v390;
      LODWORD(v893) = v391;
      v396 = *v394;
      v395 = *(v394 + 1);
      v397 = *(v394 + 3);
      v896 = *(v394 + 2);
      v897 = v397;
      v894 = *(v394 + 4);
      LODWORD(v892) = *(v394 + 40);
      v398 = v394[6];
      sub_1E5FAB460(v386 + v393, v858, &unk_1ED077780, &unk_1E66097F0);
      sub_1E5FAB460(v394 + v393, v857, &unk_1ED077780, &unk_1E66097F0);
      v200 = v385;
      if (v387)
      {
        if (!v395)
        {

          v399 = v857;
LABEL_292:
          sub_1E5DFE50C(v399, &unk_1ED077780, &unk_1E66097F0);
          v615 = v858;
LABEL_308:
          v616 = &unk_1ED077780;
          v617 = &unk_1E66097F0;
          goto LABEL_309;
        }

        if (v388 == *&v396 && v387 == v395)
        {

          v399 = v857;
LABEL_263:
          if (v898 == v896 && v389 == v897)
          {

            v639 = v858;
            v640 = v787;
          }

          else
          {
            v641 = sub_1E65E6C18();

            v639 = v858;
            v640 = v787;
            if ((v641 & 1) == 0)
            {
              goto LABEL_307;
            }
          }

          if (v895 == v894)
          {
            v642 = sub_1E65D89A8();
            v644 = v643;
            if (v642 == sub_1E65D89A8() && v644 == v645)
            {

              goto LABEL_303;
            }

            v667 = sub_1E65E6C18();

            if (v667)
            {
LABEL_303:
              if (v392 == v398)
              {
                v668 = *(v772 + 48);
                v669 = v777;
                sub_1E5DFD1CC(v639, v777, &unk_1ED077780, &unk_1E66097F0);
                sub_1E5DFD1CC(v399, v669 + v668, &unk_1ED077780, &unk_1E66097F0);
                v670 = *(v775 + 48);
                v671 = v773;
                if (v670(v669, 1, v773) == 1)
                {
                  sub_1E5DFE50C(v399, &unk_1ED077780, &unk_1E66097F0);
                  v672 = v777;
                  sub_1E5DFE50C(v639, &unk_1ED077780, &unk_1E66097F0);
                  if (v670(v672 + v668, 1, v671) == 1)
                  {
                    sub_1E5DFE50C(v672, &unk_1ED077780, &unk_1E66097F0);
                    goto LABEL_227;
                  }
                }

                else
                {
                  sub_1E5DFD1CC(v669, v640, &unk_1ED077780, &unk_1E66097F0);
                  if (v670(v669 + v668, 1, v671) != 1)
                  {
                    v703 = v775;
                    v704 = v669 + v668;
                    v705 = v765;
                    (*(v775 + 32))(v765, v704, v671);
                    sub_1E61B7730(&qword_1ED0763C8, MEMORY[0x1E69CC278], MEMORY[0x1E69CC290]);
                    LODWORD(v899) = sub_1E65E5B98();
                    v706 = *(v703 + 8);
                    v706(v705, v671);
                    sub_1E5DFE50C(v399, &unk_1ED077780, &unk_1E66097F0);
                    sub_1E5DFE50C(v639, &unk_1ED077780, &unk_1E66097F0);
                    v706(v640, v671);
                    sub_1E5DFE50C(v669, &unk_1ED077780, &unk_1E66097F0);
                    if (v899)
                    {
LABEL_227:
                      v609 = v200;
LABEL_228:
                      sub_1E61B76D0(v609, type metadata accessor for RouteResource);
                      v209 = 1;
                      return v209 & 1;
                    }

LABEL_310:
                    sub_1E61B76D0(v200, type metadata accessor for RouteResource);
                    goto LABEL_174;
                  }

                  sub_1E5DFE50C(v399, &unk_1ED077780, &unk_1E66097F0);
                  v672 = v777;
                  sub_1E5DFE50C(v639, &unk_1ED077780, &unk_1E66097F0);
                  (*(v775 + 8))(v640, v671);
                }

                v616 = &qword_1ED076380;
                v617 = &qword_1E65F5418;
                v615 = v672;
LABEL_309:
                sub_1E5DFE50C(v615, v616, v617);
                goto LABEL_310;
              }
            }
          }

LABEL_307:
          sub_1E5DFE50C(v399, &unk_1ED077780, &unk_1E66097F0);
          v615 = v639;
          goto LABEL_308;
        }

        v638 = sub_1E65E6C18();

        v399 = v857;
        if (v638)
        {
          goto LABEL_263;
        }
      }

      else
      {
        v399 = v857;
        if (!v395)
        {
          goto LABEL_263;
        }
      }

      goto LABEL_292;
    case 0x16u:
      v474 = v846;
      sub_1E61B7384(v200, v846, type metadata accessor for RouteResource);
      v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v476 = v475[12];
      v477 = v475[16];
      v478 = *(v474 + v477);
      v479 = *(v474 + v477 + 8);
      v893 = v475[20];
      v894 = v476;
      v480 = v475[24];
      v481 = *(v474 + v480 + 8);
      v890 = *(v474 + v480);
      v891 = v478;
      v482 = v475[28];
      v483 = *(v474 + v482 + 8);
      v889 = *(v474 + v482);
      v484 = v475[32];
      v892 = v475[36];
      v485 = v899;
      if (swift_getEnumCaseMultiPayload() != 22)
      {

        sub_1E5DFE50C(v474 + v892, &unk_1ED07B500, &qword_1E65F0EE0);
        sub_1E5DFE50C(v474 + v484, &unk_1ED077770, &unk_1E660C190);
        sub_1E5DFE50C(v474 + v893, &qword_1ED076220, &unk_1E65FA4A0);
        (*(v896 + 8))(v474 + v894, v895);
        sub_1E6009FC0(v474);
        goto LABEL_173;
      }

      v888 = v479;
      v884 = v481;
      v897 = v483;
      v898 = v200;
      v486 = *(v485 + v477 + 8);
      v882 = *(v485 + v477);
      v887 = v486;
      v487 = *(v485 + v480 + 8);
      v881 = *(v485 + v480);
      v886 = v487;
      v488 = *(v485 + v482 + 8);
      v880 = *(v485 + v482);
      v885 = v488;
      v489 = *(v485 + 1);
      v903 = *v485;
      v904 = v489;
      v905 = v485[4];
      v490 = v895;
      v491 = *(v896 + 32);
      v492 = v894;
      v491(v883, v474 + v894, v895);
      v493 = v893;
      sub_1E5FAB460(v474 + v893, v877, &qword_1ED076220, &unk_1E65FA4A0);
      sub_1E5FAB460(v474 + v484, v874, &unk_1ED077770, &unk_1E660C190);
      v494 = v892;
      sub_1E5FAB460(v474 + v892, v873, &unk_1ED07B500, &qword_1E65F0EE0);
      v495 = v485 + v492;
      v496 = v811;
      v491(v811, v495, v490);
      v497 = v813;
      sub_1E5FAB460(v485 + v493, v813, &qword_1ED076220, &unk_1E65FA4A0);
      v498 = v809;
      sub_1E5FAB460(v485 + v484, v809, &unk_1ED077770, &unk_1E660C190);
      v499 = v810;
      sub_1E5FAB460(v485 + v494, v810, &unk_1ED07B500, &qword_1E65F0EE0);
      LOBYTE(v494) = MEMORY[0x1E694E230](v474, &v903);
      sub_1E6009FC0(v474);
      if (v494)
      {
        v500 = v887;
        v501 = v885;
        v502 = v886;
        v503 = v883;
        if (sub_1E65D7468())
        {
          v504 = v896;
          if (v888)
          {
            v505 = v785;
            v506 = v784;
            if (v500)
            {
              if (v891 == v882 && v888 == v500)
              {

                goto LABEL_321;
              }

              v684 = sub_1E65E6C18();

              if (v684)
              {
LABEL_321:
                v685 = *(v774 + 48);
                sub_1E5DFD1CC(v877, v505, &qword_1ED076220, &unk_1E65FA4A0);
                sub_1E5DFD1CC(v813, v505 + v685, &qword_1ED076220, &unk_1E65FA4A0);
                v686 = *(v778 + 48);
                if (v686(v505, 1, v506) == 1)
                {
                  if (v686(v505 + v685, 1, v506) == 1)
                  {
                    sub_1E5DFE50C(v505, &qword_1ED076220, &unk_1E65FA4A0);
                    v687 = v897;
                    goto LABEL_340;
                  }
                }

                else
                {
                  v688 = v771;
                  sub_1E5DFD1CC(v505, v771, &qword_1ED076220, &unk_1E65FA4A0);
                  if (v686(v505 + v685, 1, v506) != 1)
                  {
                    v698 = v778;
                    v699 = v505 + v685;
                    v700 = v766;
                    (*(v778 + 32))(v766, v699, v506);
                    sub_1E61B7730(&qword_1ED0763C0, MEMORY[0x1E69CD4E0], MEMORY[0x1E69CD4F0]);
                    LODWORD(v899) = sub_1E65E5B98();
                    v701 = *(v698 + 8);
                    v701(v700, v506);
                    v701(v688, v506);
                    sub_1E5DFE50C(v505, &qword_1ED076220, &unk_1E65FA4A0);
                    v687 = v897;
                    if ((v899 & 1) == 0)
                    {

                      goto LABEL_371;
                    }

LABEL_340:
                    if (v884)
                    {
                      if (v502)
                      {
                        if (v890 == v881 && v884 == v502)
                        {

                          goto LABEL_359;
                        }

                        v708 = sub_1E65E6C18();

                        if (v708)
                        {
LABEL_359:
                          if (v687)
                          {
                            if (v501)
                            {
                              if (v889 == v880 && v687 == v501)
                              {

                                goto LABEL_378;
                              }

                              v722 = sub_1E65E6C18();

                              if (v722)
                              {
LABEL_378:
                                v723 = *(v759 + 48);
                                v724 = v764;
                                sub_1E5DFD1CC(v874, v764, &unk_1ED077770, &unk_1E660C190);
                                sub_1E5DFD1CC(v498, v724 + v723, &unk_1ED077770, &unk_1E660C190);
                                v725 = *(v761 + 48);
                                v726 = v762;
                                if (v725(v724, 1, v762) == 1)
                                {
                                  if (v725(v724 + v723, 1, v726) == 1)
                                  {
                                    sub_1E5DFE50C(v764, &unk_1ED077770, &unk_1E660C190);
                                    goto LABEL_390;
                                  }
                                }

                                else
                                {
                                  sub_1E5DFD1CC(v724, v758, &unk_1ED077770, &unk_1E660C190);
                                  if (v725(v724 + v723, 1, v726) != 1)
                                  {
                                    v728 = v761;
                                    v729 = v764;
                                    v730 = v764 + v723;
                                    v731 = v752;
                                    v732 = v762;
                                    (*(v761 + 32))(v752, v730, v762);
                                    sub_1E61B7730(&qword_1ED0763B8, MEMORY[0x1E69CD550], MEMORY[0x1E69CD560]);
                                    v733 = v758;
                                    v734 = sub_1E65E5B98();
                                    v735 = *(v728 + 8);
                                    v735(v731, v732);
                                    v735(v733, v732);
                                    sub_1E5DFE50C(v729, &unk_1ED077770, &unk_1E660C190);
                                    if (v734)
                                    {
LABEL_390:
                                      v736 = *(v753 + 48);
                                      v737 = v760;
                                      sub_1E5DFD1CC(v873, v760, &unk_1ED07B500, &qword_1E65F0EE0);
                                      sub_1E5DFD1CC(v810, v737 + v736, &unk_1ED07B500, &qword_1E65F0EE0);
                                      v738 = *(v755 + 48);
                                      if (v738(v737, 1, v756) == 1)
                                      {
                                        sub_1E5DFE50C(v810, &unk_1ED07B500, &qword_1E65F0EE0);
                                        sub_1E5DFE50C(v809, &unk_1ED077770, &unk_1E660C190);
                                        sub_1E5DFE50C(v813, &qword_1ED076220, &unk_1E65FA4A0);
                                        v739 = v895;
                                        v740 = *(v896 + 8);
                                        v740(v811, v895);
                                        sub_1E5DFE50C(v873, &unk_1ED07B500, &qword_1E65F0EE0);
                                        sub_1E5DFE50C(v874, &unk_1ED077770, &unk_1E660C190);
                                        sub_1E5DFE50C(v877, &qword_1ED076220, &unk_1E65FA4A0);
                                        v740(v883, v739);
                                        sub_1E6009FC0(&v903);
                                        if (v738(v760 + v736, 1, v756) == 1)
                                        {
                                          sub_1E5DFE50C(v760, &unk_1ED07B500, &qword_1E65F0EE0);
LABEL_397:
                                          v609 = v898;
                                          goto LABEL_228;
                                        }
                                      }

                                      else
                                      {
                                        v741 = v760;
                                        sub_1E5DFD1CC(v760, v754, &unk_1ED07B500, &qword_1E65F0EE0);
                                        if (v738(v741 + v736, 1, v756) != 1)
                                        {
                                          v744 = v755;
                                          v745 = v751;
                                          v746 = v756;
                                          (*(v755 + 32))(v751, v760 + v736, v756);
                                          sub_1E61B7730(&qword_1ED0763B0, MEMORY[0x1E69CAF60], MEMORY[0x1E69CAF70]);
                                          v747 = v754;
                                          LODWORD(v899) = sub_1E65E5B98();
                                          v748 = *(v744 + 8);
                                          v748(v745, v746);
                                          sub_1E5DFE50C(v810, &unk_1ED07B500, &qword_1E65F0EE0);
                                          sub_1E5DFE50C(v809, &unk_1ED077770, &unk_1E660C190);
                                          sub_1E5DFE50C(v813, &qword_1ED076220, &unk_1E65FA4A0);
                                          v749 = v895;
                                          v750 = *(v896 + 8);
                                          v750(v811, v895);
                                          sub_1E5DFE50C(v873, &unk_1ED07B500, &qword_1E65F0EE0);
                                          sub_1E5DFE50C(v874, &unk_1ED077770, &unk_1E660C190);
                                          sub_1E5DFE50C(v877, &qword_1ED076220, &unk_1E65FA4A0);
                                          v750(v883, v749);
                                          sub_1E6009FC0(&v903);
                                          v748(v747, v746);
                                          sub_1E5DFE50C(v760, &unk_1ED07B500, &qword_1E65F0EE0);
                                          if (v899)
                                          {
                                            goto LABEL_397;
                                          }

LABEL_376:
                                          sub_1E61B76D0(v898, type metadata accessor for RouteResource);
                                          goto LABEL_174;
                                        }

                                        sub_1E5DFE50C(v810, &unk_1ED07B500, &qword_1E65F0EE0);
                                        sub_1E5DFE50C(v809, &unk_1ED077770, &unk_1E660C190);
                                        sub_1E5DFE50C(v813, &qword_1ED076220, &unk_1E65FA4A0);
                                        v742 = v895;
                                        v743 = *(v896 + 8);
                                        v743(v811, v895);
                                        sub_1E5DFE50C(v873, &unk_1ED07B500, &qword_1E65F0EE0);
                                        sub_1E5DFE50C(v874, &unk_1ED077770, &unk_1E660C190);
                                        sub_1E5DFE50C(v877, &qword_1ED076220, &unk_1E65FA4A0);
                                        v743(v883, v742);
                                        sub_1E6009FC0(&v903);
                                        (*(v755 + 8))(v754, v756);
                                      }

                                      sub_1E5DFE50C(v760, &qword_1ED076368, &qword_1E65F5400);
                                      goto LABEL_376;
                                    }

                                    goto LABEL_384;
                                  }

                                  (*(v761 + 8))(v758, v762);
                                }

                                sub_1E5DFE50C(v764, &qword_1ED076370, &qword_1E65F5408);
LABEL_384:
                                sub_1E5DFE50C(v810, &unk_1ED07B500, &qword_1E65F0EE0);
                                v719 = v809;
                                goto LABEL_373;
                              }

LABEL_372:
                              sub_1E5DFE50C(v499, &unk_1ED07B500, &qword_1E65F0EE0);
                              v719 = v498;
LABEL_373:
                              sub_1E5DFE50C(v719, &unk_1ED077770, &unk_1E660C190);
                              sub_1E5DFE50C(v813, &qword_1ED076220, &unk_1E65FA4A0);
                              v702 = v896;
                              goto LABEL_374;
                            }
                          }

                          else if (!v501)
                          {
                            goto LABEL_378;
                          }

LABEL_371:

                          goto LABEL_372;
                        }
                      }

                      else
                      {
                      }

                      goto LABEL_371;
                    }

                    if (v502)
                    {

                      goto LABEL_371;
                    }

                    goto LABEL_359;
                  }

                  (*(v778 + 8))(v688, v506);
                }

                sub_1E5DFE50C(v505, &qword_1ED076378, &qword_1E65F5410);
                goto LABEL_372;
              }

              v661 = v504;
            }

            else
            {
              v661 = v896;
            }
          }

          else
          {
            v505 = v785;
            v506 = v784;
            if (!v500)
            {
              goto LABEL_321;
            }

            v661 = v896;
          }

          sub_1E5DFE50C(v499, &unk_1ED07B500, &qword_1E65F0EE0);
          sub_1E5DFE50C(v498, &unk_1ED077770, &unk_1E660C190);
          sub_1E5DFE50C(v813, &qword_1ED076220, &unk_1E65FA4A0);
          v702 = v661;
LABEL_374:
          v720 = *(v702 + 8);
          v721 = v895;
          v720(v811, v895);
          sub_1E5DFE50C(v873, &unk_1ED07B500, &qword_1E65F0EE0);
          sub_1E5DFE50C(v874, &unk_1ED077770, &unk_1E660C190);
          sub_1E5DFE50C(v877, &qword_1ED076220, &unk_1E65FA4A0);
          v720(v883, v721);
          goto LABEL_375;
        }

        sub_1E5DFE50C(v499, &unk_1ED07B500, &qword_1E65F0EE0);
        sub_1E5DFE50C(v498, &unk_1ED077770, &unk_1E660C190);
        sub_1E5DFE50C(v497, &qword_1ED076220, &unk_1E65FA4A0);
        v624 = *(v896 + 8);
        v625 = v895;
        v624(v496, v895);
        sub_1E5DFE50C(v873, &unk_1ED07B500, &qword_1E65F0EE0);
        sub_1E5DFE50C(v874, &unk_1ED077770, &unk_1E660C190);
        sub_1E5DFE50C(v877, &qword_1ED076220, &unk_1E65FA4A0);
        v624(v503, v625);
      }

      else
      {

        sub_1E5DFE50C(v499, &unk_1ED07B500, &qword_1E65F0EE0);
        sub_1E5DFE50C(v498, &unk_1ED077770, &unk_1E660C190);
        sub_1E5DFE50C(v497, &qword_1ED076220, &unk_1E65FA4A0);
        v585 = *(v896 + 8);
        v586 = v895;
        v585(v496, v895);
        sub_1E5DFE50C(v873, &unk_1ED07B500, &qword_1E65F0EE0);
        sub_1E5DFE50C(v874, &unk_1ED077770, &unk_1E660C190);
        sub_1E5DFE50C(v877, &qword_1ED076220, &unk_1E65FA4A0);
        v585(v883, v586);
      }

LABEL_375:
      sub_1E6009FC0(&v903);
      goto LABEL_376;
    case 0x17u:
      v513 = v840;
      sub_1E61B7384(v200, v840, type metadata accessor for RouteResource);
      v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v515 = v514[12];
      v516 = v514[16];
      v518 = *(v513 + v516);
      v517 = *(v513 + v516 + 8);
      v519 = v514[20];
      v520 = *(v513 + v519);
      v521 = v899;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        sub_1E61B73EC(v518, v517);
        (*(v886 + 8))(v513 + v515, v882);
        (*(v870 + 8))(v513, v885);
        goto LABEL_173;
      }

      v896 = v518;
      v897 = v517;
      LODWORD(v893) = v520;
      v898 = v200;
      v522 = *(v521 + v516);
      v894 = *(v521 + v516 + 8);
      v895 = v522;
      LODWORD(v892) = *(v521 + v519);
      v523 = v870;
      v524 = v818;
      v525 = v885;
      (*(v870 + 32))(v818, v521, v885);
      v526 = v886;
      v527 = *(v886 + 32);
      v528 = v882;
      v527(v884, v513 + v515, v882);
      v529 = v521 + v515;
      v530 = v812;
      v527(v812, v529, v528);
      v531 = MEMORY[0x1E694D1D0](v513, v524);
      v532 = *(v523 + 8);
      v532(v513, v525);
      if ((v531 & 1) == 0)
      {
        sub_1E61B73EC(v895, v894);
        sub_1E61B73EC(v896, v897);
        v587 = *(v526 + 8);
        v587(v530, v528);
        v587(v884, v528);
        v532(v524, v525);
        goto LABEL_376;
      }

      v533 = v894;
      v534 = v895;
      sub_1E61B7730(&qword_1ED0763A8, MEMORY[0x1E69CD868], MEMORY[0x1E69CD878]);
      v535 = v884;
      sub_1E65E5E98();
      sub_1E65E5E98();
      if (v903 != v900)
      {
        sub_1E61B73EC(v534, v533);
        sub_1E61B73EC(v896, v897);
        v626 = *(v886 + 8);
        v626(v530, v528);
        v626(v535, v528);
        v532(v818, v885);
        goto LABEL_376;
      }

      v537 = v896;
      v536 = v897;
      v538 = sub_1E65D8CC8();
      v540 = v539;
      sub_1E61B73EC(v537, v536);
      v541 = v533;
      v542 = sub_1E65D8CC8();
      v544 = v543;
      sub_1E61B73EC(v534, v541);
      if (v538 == v542 && v540 == v544)
      {

        v239 = v898;
        v545 = v886;
        v546 = v885;
        v547 = v818;
      }

      else
      {
        v653 = sub_1E65E6C18();

        v239 = v898;
        v545 = v886;
        v546 = v885;
        v547 = v818;
        if ((v653 & 1) == 0)
        {
          v682 = *(v886 + 8);
          v683 = v882;
          v682(v812, v882);
          v682(v884, v683);
          v532(v547, v546);
          goto LABEL_231;
        }
      }

      v654 = sub_1E65DA218();
      v656 = v655;
      v657 = sub_1E65DA218();
      v659 = v882;
      if (v654 == v657 && v656 == v658)
      {

        v660 = *(v545 + 8);
        v660(v812, v659);
        v660(v884, v659);
        v532(v547, v546);
      }

      else
      {
        v662 = v547;
        v663 = sub_1E65E6C18();

        v664 = *(v545 + 8);
        v664(v812, v659);
        v664(v884, v659);
        v532(v662, v546);
        if ((v663 & 1) == 0)
        {
          goto LABEL_231;
        }
      }

      v609 = v239;
      goto LABEL_228;
    case 0x18u:
      v272 = v836;
      sub_1E61B7384(v200, v836, type metadata accessor for RouteResource);
      v273 = *v272;
      v274 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v275 = v899;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        (*(v893 + 8))(v272 + v274, v894);

        goto LABEL_173;
      }

      v276 = *v275;
      v277 = v893;
      v278 = *(v893 + 32);
      v279 = v272 + v274;
      v280 = v793;
      v281 = v894;
      v278(v793, v279, v894);
      v282 = v275 + v274;
      v283 = v792;
      v278(v792, v282, v281);
      sub_1E5DEF738(0, &qword_1ED076218, 0x1E69E58C0);
      v284 = sub_1E65E65A8();

      if (v284)
      {
        v209 = sub_1E65DB828();
        v285 = *(v277 + 8);
        v285(v283, v281);
        v285(v280, v281);
        goto LABEL_149;
      }

      v570 = *(v277 + 8);
      v570(v283, v281);
      v570(v280, v281);
      goto LABEL_310;
    case 0x19u:
      v270 = v834;
      sub_1E61B7384(v200, v834, type metadata accessor for RouteResource);
      v271 = v899;
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        goto LABEL_173;
      }

      v209 = *v270 == *v271;
      goto LABEL_149;
    case 0x1Au:
      v206 = v837;
      sub_1E61B7384(v200, v837, type metadata accessor for RouteResource);
      v566 = v899;
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        v208 = v802;
        sub_1E61B7400(v566, v802, MEMORY[0x1E69CD768]);
        v209 = MEMORY[0x1E694CCA0](v206, v208);
        v210 = MEMORY[0x1E69CD768];
        goto LABEL_148;
      }

      v568 = MEMORY[0x1E69CD768];
      goto LABEL_178;
    case 0x1Bu:
      v206 = v838;
      sub_1E61B7384(v200, v838, type metadata accessor for RouteResource);
      v207 = v899;
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        v208 = v803;
        sub_1E61B7400(v207, v803, type metadata accessor for PlaylistType);
        v209 = _s10Blackbeard12PlaylistTypeO2eeoiySbAC_ACtFZ_0(v206, v208);
        v210 = type metadata accessor for PlaylistType;
LABEL_148:
        v567 = v210;
        sub_1E61B76D0(v208, v210);
        sub_1E61B76D0(v206, v567);
        goto LABEL_149;
      }

      v568 = type metadata accessor for PlaylistType;
LABEL_178:
      sub_1E61B76D0(v206, v568);
      goto LABEL_173;
    case 0x1Cu:
      v212 = v839;
      sub_1E61B7384(v200, v839, type metadata accessor for RouteResource);
      v548 = v899;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        (*(v888 + 8))(v212, v889);
        goto LABEL_173;
      }

      v214 = v888;
      v215 = v789;
      v216 = v889;
      (*(v888 + 32))(v789, v548, v889);
      v217 = sub_1E65D76D8();
LABEL_140:
      v209 = v217;
      v549 = *(v214 + 8);
      v549(v215, v216);
      v549(v212, v216);
      goto LABEL_149;
    case 0x1Du:
      v550 = v841;
      sub_1E61B7384(v200, v841, type metadata accessor for RouteResource);
      v551 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v552 = v899;
      if (swift_getEnumCaseMultiPayload() != 29)
      {
        (*(v860 + 8))(v550 + v551, v861);
        (*(v859 + 8))(v550, v890);
        goto LABEL_173;
      }

      v553 = v859;
      v554 = v817;
      (*(v859 + 32))(v817, v552, v890);
      v555 = v860;
      v556 = *(v860 + 32);
      v557 = v861;
      v556(v872, v550 + v551, v861);
      v558 = v552 + v551;
      v559 = v804;
      v556(v804, v558, v557);
      v560 = MEMORY[0x1E694CFE0](v550, v554);
      v561 = *(v553 + 8);
      v562 = v550;
      v563 = v890;
      v561(v562, v890);
      if (v560)
      {
        v564 = v872;
        v209 = MEMORY[0x1E693F820](v872, v559);
        v565 = *(v555 + 8);
        v565(v559, v557);
        v565(v564, v557);
        v561(v817, v563);
        goto LABEL_149;
      }

      v588 = *(v555 + 8);
      v588(v559, v557);
      v588(v872, v557);
      v561(v554, v563);
      goto LABEL_310;
    case 0x1Eu:
      v448 = v843;
      sub_1E61B7384(v200, v843, type metadata accessor for RouteResource);
      v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072110, &unk_1E65EA2D0);
      v450 = *(v449 + 48);
      v451 = *(v448 + v450);
      v452 = *(v449 + 64);
      v453 = *(v448 + v452);
      v454 = v899;
      if (swift_getEnumCaseMultiPayload() != 30)
      {

        (*(v864 + 8))(v448, v865);
        goto LABEL_173;
      }

      v898 = v453;
      v455 = *(v454 + v450);
      v456 = *(v454 + v452);
      v457 = v864;
      v458 = v805;
      v459 = v865;
      (*(v864 + 32))(v805, v454, v865);
      v460 = sub_1E65E56A8();
      v461 = *(v457 + 8);
      v461(v448, v459);
      if ((v460 & 1) == 0)
      {
        goto LABEL_167;
      }

      v462 = sub_1E63DA488(v451, v455);
      goto LABEL_116;
    case 0x1Fu:
      v337 = v842;
      sub_1E61B7384(v200, v842, type metadata accessor for RouteResource);
      v338 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      v339 = *(v337 + v338);
      v340 = v899;
      if (swift_getEnumCaseMultiPayload() != 31)
      {

        (*(v862 + 8))(v337, v863);
        goto LABEL_173;
      }

      v341 = *(v340 + v338);
      v342 = v862;
      v343 = v806;
      v344 = v863;
      (*(v862 + 32))(v806, v340, v863);
      v345 = MEMORY[0x1E6941D00](v337, v343);
      v346 = *(v342 + 8);
      v346(v337, v344);
      if (v345)
      {
        v209 = sub_1E63DA838(v339, v341);

        v346(v343, v344);
        goto LABEL_149;
      }

      v346(v343, v344);

      goto LABEL_310;
    case 0x20u:
      v463 = v845;
      sub_1E61B7384(v200, v845, type metadata accessor for RouteResource);
      v464 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072120, &qword_1E65EA2E0);
      v465 = *(v464 + 48);
      v466 = *(v463 + v465);
      v467 = *(v464 + 64);
      v468 = *(v463 + v467);
      v469 = v899;
      if (swift_getEnumCaseMultiPayload() != 32)
      {

        (*(v868 + 8))(v463, v869);
        goto LABEL_173;
      }

      v898 = v468;
      v470 = *(v469 + v465);
      v456 = *(v469 + v467);
      v471 = v868;
      v458 = v808;
      v459 = v869;
      (*(v868 + 32))(v808, v469, v869);
      v472 = MEMORY[0x1E694D2C0](v463, v458);
      v461 = *(v471 + 8);
      v461(v463, v459);
      if ((v472 & 1) == 0)
      {
LABEL_167:
        v461(v458, v459);

LABEL_197:

        goto LABEL_310;
      }

      v462 = sub_1E63DA838(v466, v470);
LABEL_116:
      v473 = v462;

      if ((v473 & 1) == 0)
      {
        v461(v458, v459);
        goto LABEL_197;
      }

      v209 = sub_1E63DA838(v898, v456);

      v461(v458, v459);
LABEL_149:
      sub_1E61B76D0(v200, type metadata accessor for RouteResource);
      return v209 & 1;
    case 0x21u:
      v218 = v844;
      sub_1E61B7384(v200, v844, type metadata accessor for RouteResource);
      v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077830, &qword_1E65F0F68);
      v220 = *(v219 + 48);
      v221 = *(v218 + v220);
      v222 = *(v219 + 64);
      v223 = *(v218 + v222);
      v224 = v899;
      if (swift_getEnumCaseMultiPayload() != 33)
      {
        (*(v866 + 8))(v218, v867);
        goto LABEL_173;
      }

      LODWORD(v898) = *(v224 + v220);
      v225 = *(v224 + v222);
      v226 = v866;
      v227 = v807;
      v228 = v867;
      (*(v866 + 32))(v807, v224, v867);
      v229 = MEMORY[0x1E6940A30](v218, v227);
      v230 = *(v226 + 8);
      v230(v227, v228);
      v230(v218, v228);
      if ((v229 & 1) != 0 && v221 == v898)
      {
        sub_1E61B76D0(v200, type metadata accessor for RouteResource);
        v209 = v223 ^ v225 ^ 1;
        return v209 & 1;
      }

      goto LABEL_310;
    case 0x22u:
      if (swift_getEnumCaseMultiPayload() == 34)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x23u:
      if (swift_getEnumCaseMultiPayload() == 35)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x24u:
      if (swift_getEnumCaseMultiPayload() == 36)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x25u:
      if (swift_getEnumCaseMultiPayload() == 37)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x26u:
      if (swift_getEnumCaseMultiPayload() == 38)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x27u:
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x28u:
      if (swift_getEnumCaseMultiPayload() == 40)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x29u:
      if (swift_getEnumCaseMultiPayload() == 41)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x2Au:
      if (swift_getEnumCaseMultiPayload() == 42)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    case 0x2Bu:
      if (swift_getEnumCaseMultiPayload() == 43)
      {
        goto LABEL_227;
      }

      goto LABEL_173;
    default:
      sub_1E61B7384(v200, v196, type metadata accessor for RouteResource);
      v204 = *v196;
      v203 = v196[1];
      v205 = v899;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_161;
      }

LABEL_89:
      v401 = *v205;
      v402 = v205[1];
      if (v204 == v401 && v203 == v402)
      {
LABEL_103:

        goto LABEL_227;
      }

      v403 = sub_1E65E6C18();

      if (v403)
      {
        goto LABEL_227;
      }

      goto LABEL_310;
  }
}

uint64_t sub_1E61B7384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61B73EC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t sub_1E61B7400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1E61B74B0(uint64_t a1)
{
  if (!qword_1EE2D7190)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077760, &unk_1E66011D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072B60, &unk_1E65FA490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0762B0, &qword_1E65F52F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077750, &unk_1E66011C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0762B8, &qword_1E65F52F8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D7190);
    }
  }
}

uint64_t sub_1E61B767C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E61B76D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61B7730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E61B777C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDestination(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1E61BA270(v13, v10, type metadata accessor for RouteDestination);
      sub_1E61BA270(v14, v7, type metadata accessor for RouteDestination);
      if ((static RouteResource.== infix(_:_:)(v10, v7) & 1) == 0 || (static RouteSource.== infix(_:_:)(&v10[*(v4 + 20)], &v7[*(v4 + 20)]) & 1) == 0)
      {
        break;
      }

      v16 = sub_1E63DAF94();
      sub_1E61BA1A0(v7, type metadata accessor for RouteDestination);
      sub_1E61BA1A0(v10, type metadata accessor for RouteDestination);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1E61BA1A0(v7, type metadata accessor for RouteDestination);
    sub_1E61BA1A0(v10, type metadata accessor for RouteDestination);
    goto LABEL_12;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1E61B7A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_1E61BA2D8(v31, v32, v33);
    v25 = sub_1E65E5B98();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61B7C00(uint64_t a1, _BYTE *a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  *(v3 + 64) = swift_task_alloc();
  type metadata accessor for RouteDestination(0);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = type metadata accessor for RoutingContextAction(0);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 29) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1E61B7D10, 0, 0);
}

uint64_t sub_1E61B7D10()
{
  sub_1E61BA270(*(v0 + 56), *(v0 + 96), type metadata accessor for RoutingContextAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v45 = *(v0 + 48);
      v46 = **(v0 + 96);
      v47 = v45[3];
      v48 = v45[4];
      __swift_project_boxed_opaque_existential_1(v45, v47);
      v71 = (*(v48 + 64) + **(v48 + 64));
      v49 = swift_task_alloc();
      *(v0 + 152) = v49;
      *v49 = v0;
      v49[1] = sub_1E61B8A4C;
      v7 = v46;
      v8 = v47;
      v9 = v48;
      v10 = v71;

      return v10(v7, v8, v9);
    }

    if (EnumCaseMultiPayload == 4)
    {
      v12 = *(v0 + 29);
      v13 = *(v0 + 96);
      v14 = *(v0 + 72);
      v15 = *(v0 + 48);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540);
      v17 = v13 + *(v16 + 48);
      v18 = *v17;
      *(v0 + 168) = *v17;
      v19 = *(v17 + 8);
      *(v0 + 30) = v19;
      v20 = *(v13 + *(v16 + 64));
      sub_1E5F9CE80(v13, v14);
      v21 = v15[3];
      v22 = v15[4];
      __swift_project_boxed_opaque_existential_1(v15, v21);
      *(v0 + 32) = v18;
      *(v0 + 40) = v19;
      *(v0 + 26) = v12;
      v69 = (*(v22 + 72) + **(v22 + 72));
      v23 = swift_task_alloc();
      *(v0 + 176) = v23;
      *v23 = v0;
      v23[1] = sub_1E61B8B60;
      v24 = *(v0 + 72);
      v25 = v0 + 32;
      v26 = v20;
      v27 = v0 + 26;
      v28 = v21;
      v29 = v22;
      v30 = v69;
    }

    else
    {
      v58 = *(v0 + 29);
      v59 = *(v0 + 96);
      v60 = *(v0 + 48);
      v61 = *v59;
      *(v0 + 192) = *v59;
      v62 = v59[1];
      *(v0 + 200) = v62;
      v63 = *(v59 + 16);
      *(v0 + 31) = v63;
      v64 = *(v59 + 17);
      v65 = v60[3];
      v66 = v60[4];
      __swift_project_boxed_opaque_existential_1(v60, v65);
      *(v0 + 16) = v62;
      *(v0 + 24) = v63;
      *(v0 + 25) = v58;
      v73 = (*(v66 + 80) + **(v66 + 80));
      v67 = swift_task_alloc();
      *(v0 + 208) = v67;
      *v67 = v0;
      v67[1] = sub_1E61B8D2C;
      v24 = v61;
      v25 = v0 + 16;
      v26 = v64;
      v27 = v0 + 25;
      v28 = v65;
      v29 = v66;
      v30 = v73;
    }

    return v30(v24, v25, v26, v27, v28, v29);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v2 = *(v0 + 48);
        v3 = **(v0 + 96);
        v4 = v2[3];
        v5 = v2[4];
        __swift_project_boxed_opaque_existential_1(v2, v4);
        v68 = (*(v5 + 40) + **(v5 + 40));
        v6 = swift_task_alloc();
        *(v0 + 120) = v6;
        *v6 = v0;
        v6[1] = sub_1E61B86F4;
        v7 = v3;
        v8 = v4;
        v9 = v5;
        v10 = v68;

        return v10(v7, v8, v9);
      }

      v50 = *(v0 + 29);
      v51 = *(v0 + 96);
      v52 = *(v0 + 64);
      v53 = *(v0 + 48);
      v54 = *(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF8, &qword_1E65F4878) + 48));
      sub_1E61BA130(v51, v52);
      v55 = v53[3];
      v56 = v53[4];
      __swift_project_boxed_opaque_existential_1(v53, v55);
      *(v0 + 27) = v50;
      v72 = (*(v56 + 48) + **(v56 + 48));
      v57 = swift_task_alloc();
      *(v0 + 136) = v57;
      *v57 = v0;
      v57[1] = sub_1E61B8894;
      v39 = *(v0 + 64);
      v40 = v54;
      v41 = v0 + 27;
      v42 = v55;
      v43 = v56;
      v44 = v72;
    }

    else
    {
      v31 = *(v0 + 29);
      v32 = *(v0 + 96);
      v33 = *(v0 + 80);
      v34 = *(v0 + 48);
      v35 = *(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076000, &unk_1E65F5550) + 48));
      sub_1E5F9CE80(v32, v33);
      v36 = v34[3];
      v37 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v36);
      *(v0 + 28) = v31;
      v70 = (*(v37 + 32) + **(v37 + 32));
      v38 = swift_task_alloc();
      *(v0 + 104) = v38;
      *v38 = v0;
      v38[1] = sub_1E61B8538;
      v39 = *(v0 + 80);
      v40 = v35;
      v41 = v0 + 28;
      v42 = v36;
      v43 = v37;
      v44 = v70;
    }

    return v44(v39, v40, v41, v42, v43);
  }
}

uint64_t sub_1E61B8538()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1E61B8EF4;
  }

  else
  {
    v2 = sub_1E61B864C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61B864C()
{
  sub_1E61BA1A0(*(v0 + 80), type metadata accessor for RouteDestination);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61B86F4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1E61B8F9C;
  }

  else
  {
    v2 = sub_1E61B8808;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61B8808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61B8894()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1E61B9028;
  }

  else
  {
    v2 = sub_1E61B89A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61B89A8()
{
  sub_1E5DFE50C(*(v0 + 64), &unk_1ED072040, &qword_1E65F0860);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61B8A4C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1E61B90CC;
  }

  else
  {
    v2 = sub_1E61BA320;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61B8B60()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1E61B9158;
  }

  else
  {
    v2 = sub_1E61B8C74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61B8C74()
{
  v1 = *(v0 + 72);
  sub_1E5F94E00(*(v0 + 168), *(v0 + 30));
  sub_1E61BA1A0(v1, type metadata accessor for RouteDestination);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E61B8D2C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1E61B9214;
  }

  else
  {
    v2 = sub_1E61B8E5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61B8E5C()
{
  sub_1E5F94E00(*(v0 + 200), *(v0 + 31));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61B8EF4()
{
  sub_1E61BA1A0(*(v0 + 80), type metadata accessor for RouteDestination);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61B8F9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61B9028()
{
  sub_1E5DFE50C(*(v0 + 64), &unk_1ED072040, &qword_1E65F0860);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61B90CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61B9158()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 30);
  sub_1E61BA1A0(*(v0 + 72), type metadata accessor for RouteDestination);
  sub_1E5F94E00(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E61B9214()
{
  sub_1E5F94E00(*(v0 + 200), *(v0 + 31));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RoutingContextAction.Priority.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard20RoutingContextActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v86 = &v84 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CC0, &qword_1E65EEAA8);
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v84 - v5;
  v92 = type metadata accessor for RouteDestination(0);
  v89 = *(v92 - 8);
  v6 = MEMORY[0x1EEE9AC00](v92);
  v90 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v85 = &v84 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v84 - v10;
  v11 = type metadata accessor for RoutingContextAction(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v84 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v84 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v84 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v84 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v84 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0763F0, &qword_1E65F5560);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v84 + *(v30 + 56) - v31;
  v33 = a1;
  v34 = &v84 - v31;
  sub_1E61BA270(v33, &v84 - v31, type metadata accessor for RoutingContextAction);
  sub_1E61BA270(v93, v32, type metadata accessor for RoutingContextAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1E61BA270(v34, v20, type metadata accessor for RoutingContextAction);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v36 = *v20;
        goto LABEL_18;
      }

      goto LABEL_33;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v37 = v34;
      sub_1E61BA270(v34, v17, type metadata accessor for RoutingContextAction);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540);
      v39 = *(v38 + 48);
      v40 = *&v17[v39];
      v41 = v17[v39 + 8];
      v42 = *(v38 + 64);
      v43 = v17[v42];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1E5F94E00(v40, v41);
        sub_1E61BA1A0(v17, type metadata accessor for RouteDestination);
        v34 = v37;
        goto LABEL_33;
      }

      v44 = *&v32[v39];
      v45 = v32[v39 + 8];
      v46 = v32[v42];
      v47 = v32;
      v48 = v90;
      sub_1E5F9CE80(v47, v90);
      if (static RouteResource.== infix(_:_:)(v17, v48) & 1) != 0 && (static RouteSource.== infix(_:_:)(&v17[*(v92 + 20)], v48 + *(v92 + 20)) & 1) != 0 && (sub_1E63DAF94())
      {
        sub_1E61BA1A0(v17, type metadata accessor for RouteDestination);
        v96 = v40;
        v97 = v41;
        v94 = v44;
        v95 = v45;
        v49 = _s10Blackbeard31RoutingContextPresentationStyleO2eeoiySbAC_ACtFZ_0(&v96, &v94);
        v50 = v48;
        v51 = v49;
        sub_1E61BA1A0(v50, type metadata accessor for RouteDestination);
        sub_1E5F94E00(v44, v45);
        sub_1E5F94E00(v40, v41);
        if (v51)
        {
          v52 = v43 ^ v46;
LABEL_25:
          v55 = v37;
          goto LABEL_19;
        }
      }

      else
      {
        sub_1E5F94E00(v44, v45);
        sub_1E5F94E00(v40, v41);
        sub_1E61BA1A0(v17, type metadata accessor for RouteDestination);
        sub_1E61BA1A0(v48, type metadata accessor for RouteDestination);
      }

      goto LABEL_51;
    }

    v64 = v34;
    sub_1E61BA270(v34, v14, type metadata accessor for RoutingContextAction);
    v66 = *v14;
    v65 = *(v14 + 1);
    v67 = v14[16];
    v68 = v14[17];
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_1E5F94E00(v65, v67);

      v34 = v64;
      goto LABEL_33;
    }

    v69 = *(v32 + 1);
    v70 = v32[16];
    v71 = v32[17];
    v72 = sub_1E61B777C(v66, *v32);

    if (v72)
    {
      v96 = v65;
      v97 = v67;
      v94 = v69;
      v95 = v70;
      v73 = _s10Blackbeard31RoutingContextPresentationStyleO2eeoiySbAC_ACtFZ_0(&v96, &v94);
      sub_1E5F94E00(v69, v70);
      sub_1E5F94E00(v65, v67);
      if (v73)
      {
        v52 = v68 ^ v71;
        v55 = v64;
        goto LABEL_19;
      }
    }

    else
    {
      sub_1E5F94E00(v69, v70);
      sub_1E5F94E00(v65, v67);
    }

    v77 = v64;
LABEL_52:
    sub_1E61BA1A0(v77, type metadata accessor for RoutingContextAction);
    goto LABEL_53;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E61BA270(v34, v28, type metadata accessor for RoutingContextAction);
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076000, &unk_1E65F5550) + 48);
    v54 = v28[v53];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1E61BA1A0(v28, type metadata accessor for RouteDestination);
      goto LABEL_33;
    }

    v74 = v34;
    v75 = v32[v53];
    v76 = v87;
    sub_1E5F9CE80(v32, v87);
    if (static RouteResource.== infix(_:_:)(v28, v76) & 1) != 0 && (static RouteSource.== infix(_:_:)(&v28[*(v92 + 20)], v76 + *(v92 + 20)) & 1) != 0 && (sub_1E63DAF94())
    {
      sub_1E61BA1A0(v76, type metadata accessor for RouteDestination);
      sub_1E61BA1A0(v28, type metadata accessor for RouteDestination);
      v52 = v54 ^ v75;
      v55 = v74;
      goto LABEL_19;
    }

    sub_1E61BA1A0(v76, type metadata accessor for RouteDestination);
    sub_1E61BA1A0(v28, type metadata accessor for RouteDestination);
    v77 = v74;
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v37 = v34;
    sub_1E61BA270(v34, v23, type metadata accessor for RoutingContextAction);
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF8, &qword_1E65F4878) + 48);
    v58 = v23[v57];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1E5DFE50C(v23, &unk_1ED072040, &qword_1E65F0860);
      v34 = v37;
      goto LABEL_33;
    }

    v59 = v32[v57];
    v60 = *(v88 + 48);
    v61 = v91;
    sub_1E61BA130(v23, v91);
    sub_1E61BA130(v32, v61 + v60);
    v62 = *(v89 + 48);
    v63 = v92;
    if (v62(v61, 1, v92) == 1)
    {
      if (v62(v61 + v60, 1, v63) == 1)
      {
        sub_1E5DFE50C(v61, &unk_1ED072040, &qword_1E65F0860);
LABEL_24:
        v52 = v58 ^ v59;
        goto LABEL_25;
      }
    }

    else
    {
      v78 = v86;
      sub_1E61BA200(v61, v86);
      if (v62(v61 + v60, 1, v63) != 1)
      {
        v81 = v85;
        sub_1E5F9CE80(v61 + v60, v85);
        if (static RouteResource.== infix(_:_:)(v78, v81) & 1) != 0 && (static RouteSource.== infix(_:_:)(v78 + *(v63 + 20), v81 + *(v63 + 20)))
        {
          v82 = sub_1E63DAF94();
          sub_1E61BA1A0(v81, type metadata accessor for RouteDestination);
          sub_1E61BA1A0(v78, type metadata accessor for RouteDestination);
          sub_1E5DFE50C(v61, &unk_1ED072040, &qword_1E65F0860);
          if (v82)
          {
            goto LABEL_24;
          }

          goto LABEL_51;
        }

        sub_1E61BA1A0(v81, type metadata accessor for RouteDestination);
        sub_1E61BA1A0(v78, type metadata accessor for RouteDestination);
        v79 = &unk_1ED072040;
        v80 = &qword_1E65F0860;
        goto LABEL_50;
      }

      sub_1E61BA1A0(v78, type metadata accessor for RouteDestination);
    }

    v79 = &qword_1ED073CC0;
    v80 = &qword_1E65EEAA8;
LABEL_50:
    sub_1E5DFE50C(v61, v79, v80);
LABEL_51:
    v77 = v37;
    goto LABEL_52;
  }

  sub_1E61BA270(v34, v26, type metadata accessor for RoutingContextAction);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_33:
    sub_1E5DFE50C(v34, &qword_1ED0763F0, &qword_1E65F5560);
LABEL_53:
    v56 = 0;
    return v56 & 1;
  }

  v36 = *v26;
LABEL_18:
  v52 = v36 ^ *v32;
  v55 = v34;
LABEL_19:
  sub_1E61BA1A0(v55, type metadata accessor for RoutingContextAction);
  v56 = v52 ^ 1;
  return v56 & 1;
}

unint64_t sub_1E61B9DF4()
{
  result = qword_1ED0763E0;
  if (!qword_1ED0763E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0763E0);
  }

  return result;
}

uint64_t type metadata accessor for RoutingContextAction(uint64_t a1)
{
  result = qword_1EE2D93F8;
  if (!qword_1EE2D93F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E61B9E94(uint64_t a1)
{
  sub_1E61B9F48(319);
  if (v1 <= 0x3F)
  {
    sub_1E5E03AA8();
    if (v2 <= 0x3F)
    {
      sub_1E61B9FB4(319);
      if (v3 <= 0x3F)
      {
        sub_1E61BA02C(319);
        if (v4 <= 0x3F)
        {
          sub_1E61BA0A0(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E61B9F48(uint64_t a1)
{
  if (!qword_1EE2D9FA8)
  {
    type metadata accessor for RouteDestination(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D9FA8);
    }
  }
}

void sub_1E61B9FB4(uint64_t a1)
{
  if (!qword_1EE2DA010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED072040, &qword_1E65F0860);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2DA010);
    }
  }
}

void sub_1E61BA02C(uint64_t a1)
{
  if (!qword_1EE2D9FB0)
  {
    type metadata accessor for RouteDestination(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D9FB0);
    }
  }
}

void sub_1E61BA0A0(uint64_t a1)
{
  if (!qword_1EE2D48A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0763E8, &qword_1E65F5500);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D48A0);
    }
  }
}

uint64_t sub_1E61BA130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61BA1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61BA200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61BA270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61BA2D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E61BA324()
{
  v1 = type metadata accessor for RouteDestination(0);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E6D28();
  sub_1E61BA730(v0, v6);
  sub_1E5F9CE80(v6, v4);
  MEMORY[0x1E694E740](0);
  RouteResource.hash(into:)(v9);
  RouteSource.hash(into:)(v9);
  sub_1E61B7778();
  sub_1E60111F8(v4);
  return sub_1E65E6D78();
}

uint64_t sub_1E61BA444(uint64_t a1)
{
  v3 = type metadata accessor for RouteDestination(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E61BA730(v1, v8);
  sub_1E5F9CE80(v8, v6);
  MEMORY[0x1E694E740](0);
  RouteResource.hash(into:)(a1);
  RouteSource.hash(into:)(a1);
  sub_1E61B7778();
  return sub_1E60111F8(v6);
}

uint64_t sub_1E61BA558(uint64_t a1)
{
  v2 = type metadata accessor for RouteDestination(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E6D28();
  sub_1E61BA730(v1, v7);
  sub_1E5F9CE80(v7, v5);
  MEMORY[0x1E694E740](0);
  RouteResource.hash(into:)(v10);
  RouteSource.hash(into:)(v10);
  sub_1E61B7778();
  sub_1E60111F8(v5);
  return sub_1E65E6D78();
}

unint64_t sub_1E61BA68C()
{
  result = qword_1ED076400;
  if (!qword_1ED076400)
  {
    type metadata accessor for CanvasTaskIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076400);
  }

  return result;
}

uint64_t type metadata accessor for CanvasTaskIdentifier(uint64_t a1)
{
  result = qword_1ED076410;
  if (!qword_1ED076410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E61BA730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasTaskIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1E61BA794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDestination(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076408, &qword_1E65F55E8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - v12;
  v14 = *(v11 + 56);
  sub_1E61BA730(a1, &v17 - v12);
  sub_1E61BA730(a2, &v13[v14]);
  sub_1E5F9CE80(v13, v9);
  sub_1E5F9CE80(&v13[v14], v7);
  v15 = (static RouteResource.== infix(_:_:)(v9, v7) & 1) != 0 && (static RouteSource.== infix(_:_:)(&v9[*(v4 + 20)], &v7[*(v4 + 20)]) & 1) != 0 && (sub_1E63DAF94() & 1) != 0;
  sub_1E60111F8(v7);
  sub_1E60111F8(v9);
  return v15;
}

uint64_t sub_1E61BA918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDestination(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1E5EABB54);
}

uint64_t sub_1E61BA970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RouteDestination(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1E5EABC60);
}

uint64_t sub_1E61BA9D8(uint64_t a1)
{
  result = type metadata accessor for RouteDestination(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}