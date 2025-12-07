uint64_t sub_1B7A01250@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a1;
  v51 = a6;
  v45 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v46 = v10;
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  v50 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for FlowStackSheetAuthority(0, a3, a4, a5);
  v43 = a5;
  v44 = a2;
  swift_getWitnessTable();
  sub_1B7A97120();
  v48 = sub_1B7A29804();

  v11 = type metadata accessor for FlowPopoverOriginViewModifier(0, a3, a4, a5);
  v12 = *(*(v11 - 8) + 16);
  v12(&v61, a2, v11);
  v13 = v45;
  v14 = v49;
  (*(v45 + 16))(v49, v47, a3);
  v15 = (*(v13 + 80) + 169) & ~*(v13 + 80);
  v16 = swift_allocObject();
  v17 = v63[2];
  *(v16 + 120) = v63[3];
  v18 = v63[5];
  *(v16 + 136) = v63[4];
  *(v16 + 152) = v18;
  v19 = v61;
  *(v16 + 56) = v62;
  v20 = v63[1];
  *(v16 + 72) = v63[0];
  *(v16 + 88) = v20;
  *(v16 + 104) = v17;
  v21 = a3;
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v22 = a4;
  v23 = v43;
  *(v16 + 32) = v43;
  *(v16 + 168) = v64;
  *(v16 + 40) = v19;
  v24 = v14;
  v25 = v21;
  (*(v13 + 32))(v16 + v15, v24);
  v12(&v57, v44, v11);
  v26 = swift_allocObject();
  v27 = v59[2];
  *(v26 + 120) = v59[3];
  v28 = v59[5];
  *(v26 + 136) = v59[4];
  *(v26 + 152) = v28;
  v29 = v57;
  *(v26 + 56) = v58;
  v30 = v59[1];
  *(v26 + 72) = v59[0];
  *(v26 + 88) = v30;
  *(v26 + 104) = v27;
  *(v26 + 16) = v25;
  *(v26 + 24) = v22;
  *(v26 + 32) = v23;
  *(v26 + 168) = v60;
  *(v26 + 40) = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA481A0, &qword_1B7AA24E8);
  v41 = sub_1B7A02270();
  sub_1B7A4AE88(v48, sub_1B7A0269C, v16, sub_1B7A026E0, v26, v67);
  v68 = v67[0];
  v57 = v67[0];
  v58 = v67[1];
  v59[0] = v67[2];
  LOBYTE(v65[0]) = 0;
  *&v61 = v25;
  *(&v61 + 1) = v31;
  *&v62 = v31;
  *(&v62 + 1) = v22;
  *&v63[0] = v23;
  *(&v63[0] + 1) = v41;
  v32 = v23;
  *&v63[1] = v41;
  v33 = type metadata accessor for FlowStack(0, &v61);
  WitnessTable = swift_getWitnessTable();
  View.presentedBy(_:)(v65, v33, WitnessTable);
  type metadata accessor for FlowStackAuthority(255, v25, v22, v32);
  swift_getWitnessTable();
  v35 = sub_1B7A974C0();
  (*(*(v35 - 8) + 8))(&v68, v35);

  v54 = v61;
  v55 = v62;
  v56[0] = v63[0];
  *(v56 + 9) = *(v63 + 9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8, &qword_1B7AA24F0);
  v36 = sub_1B7A97590();
  v37 = sub_1B79E3274(&qword_1EBA481B0, &qword_1EBA481B8, &qword_1B7AA24F0);
  v52 = WitnessTable;
  v53 = v37;
  v38 = swift_getWitnessTable();
  sub_1B7957EE0(&v54, v36, v38);
  v57 = v54;
  v58 = v55;
  v59[0] = v56[0];
  *(v59 + 9) = *(v56 + 9);
  v39 = *(*(v36 - 8) + 8);
  v39(&v57, v36);
  v54 = v65[0];
  v55 = v65[1];
  v56[0] = v66[0];
  *(v56 + 9) = *(v66 + 9);
  sub_1B7957EE0(&v54, v36, v38);
  v61 = v54;
  v62 = v55;
  v63[0] = v56[0];
  *(v63 + 9) = *(v56 + 9);
  v39(&v61, v36);
}

uint64_t sub_1B7A0181C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v29 = a4;
  v33 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v28 - v10;
  sub_1B797C490(v44);
  v31 = v45;
  v32 = v46;
  v30 = __swift_project_boxed_opaque_existential_1(v44, v45);
  v12 = *(a1 + 24);
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  sub_1B7A64D4C(v12, FunctionTypeMetadata1, v14, &v35);
  v15 = v35;
  sub_1B7A99320();
  v15(&v35, v11);

  (*(v9 + 8))(v11, AssociatedTypeWitness);
  v16 = v35;
  v17 = v29;
  v18 = type metadata accessor for FlowPopoverOriginViewModifier(0, a2, a3, v29);
  (*(*(v18 - 8) + 16))(&v35, a1, v18);
  v19 = swift_allocObject();
  v20 = v39;
  *(v19 + 120) = v40;
  v21 = v42;
  *(v19 + 136) = v41;
  *(v19 + 152) = v21;
  v22 = v35;
  *(v19 + 56) = v36;
  v23 = v38;
  *(v19 + 72) = v37;
  *(v19 + 88) = v23;
  *(v19 + 104) = v20;
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = v17;
  *(v19 + 168) = v43;
  *(v19 + 40) = v22;
  v34 = v16;
  *&v35 = sub_1B7A987F0();
  DWORD2(v35) = 257;
  *&v36 = sub_1B7A02810;
  *(&v36 + 1) = v19;
  v24 = sub_1B7A3609C(&v35, v31, v32);

  KeyPath = swift_getKeyPath();
  result = __swift_destroy_boxed_opaque_existential_1(v44);
  v27 = v33;
  *v33 = v24;
  v27[1] = KeyPath;
  *(v27 + 16) = 0;
  return result;
}

uint64_t sub_1B7A01B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1B797C490(v35);
  v12 = v36;
  v25 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v13 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  sub_1B7A64D4C(v13, FunctionTypeMetadata1, v15, &v26);
  (v26)(&v26, a1);

  v16 = type metadata accessor for FlowPopoverOriginViewModifier(0, a3, a4, a5);
  (*(*(v16 - 8) + 16))(&v26, a2, v16);
  v17 = swift_allocObject();
  v18 = v30;
  *(v17 + 120) = v31;
  v19 = v33;
  *(v17 + 136) = v32;
  *(v17 + 152) = v19;
  v20 = v26;
  *(v17 + 56) = v27;
  v21 = v29;
  *(v17 + 72) = v28;
  *(v17 + 88) = v21;
  *(v17 + 104) = v18;
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 168) = v34;
  *(v17 + 40) = v20;
  *&v26 = sub_1B7A987F0();
  DWORD2(v26) = 256;
  *&v27 = sub_1B7A026F0;
  *(&v27 + 1) = v17;
  v22 = sub_1B7A3609C(&v26, v12, v25);

  KeyPath = swift_getKeyPath();
  result = __swift_destroy_boxed_opaque_existential_1(v35);
  *a6 = v22;
  *(a6 + 8) = KeyPath;
  *(a6 + 16) = 0;
  return result;
}

uint64_t sub_1B7A01D58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FlowStackSheetAuthority(0, a2, a3, a4);
  swift_getWitnessTable();
  sub_1B7A97120();
  sub_1B7A29044();
}

uint64_t sub_1B7A01DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a4;
  v42 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for DispatcherPerformAction(255, AssociatedTypeWitness, v7, v8);
  v10 = sub_1B7A9AB60();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = sub_1B7A994D0();
  v43 = *(v21 - 8);
  v44 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v39 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v39 - v24;
  v47 = a2;
  v48 = a3;
  v49 = v42;
  v42 = AssociatedTypeWitness;
  sub_1B7A99460();
  v26 = *(v13 + 16);
  v26(v16, v46, a2);
  v27 = swift_dynamicCast();
  v28 = *(v17 + 56);
  if (v27)
  {
    v28(v12, 0, 1, v9);
    (*(v17 + 32))(v20, v12, v9);
    v29 = v45;
    v45[3] = v9;
    v29[4] = swift_getWitnessTable();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v29);
    sub_1B7A55E4C(v25, v9, boxed_opaque_existential_1Tm);
    (*(v17 + 8))(v20, v9);
    return (*(v43 + 8))(v25, v44);
  }

  else
  {
    v28(v12, 1, 1, v9);
    (*(v40 + 8))(v12, v41);
    v33 = v43;
    v32 = v44;
    v34 = v39;
    (*(v43 + 16))(v39, v25, v44);
    v35 = v46;
    v41 = (*(a3 + 16))(a2, a3);
    v50[3] = a2;
    v50[4] = a3;
    v36 = __swift_allocate_boxed_opaque_existential_1Tm(v50);
    v26(v36, v35, a2);
    v37 = v45;
    v45[3] = v9;
    v37[4] = swift_getWitnessTable();
    v38 = __swift_allocate_boxed_opaque_existential_1Tm(v37);
    sub_1B7A55FA8(v34, v41, v50, v42, v38);
    return (*(v33 + 8))(v25, v32);
  }
}

unint64_t sub_1B7A02270()
{
  result = qword_1EBA481A8;
  if (!qword_1EBA481A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481A0, &qword_1B7AA24E8);
    sub_1B79E3274(&qword_1EBA481B0, &qword_1EBA481B8, &qword_1B7AA24F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA481A8);
  }

  return result;
}

uint64_t sub_1B7A02314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47828, &qword_1B7AA0240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7A0238C@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v30 = a4;
  v5 = *a1;
  v6 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1B7A994D0();
  v9 = *(v8 - 8);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  nullsub_1();
  v34 = v15;
  v16 = *(v5 + 80);

  v31 = v16;
  v32 = AssociatedTypeWitness;
  v33 = *(v6 + 88);
  type metadata accessor for PopoverFlowActionImplementation(0, &v31);
  swift_getWitnessTable();
  sub_1B7A994B0();

  v31 = sub_1B79EC6A4(a1, AssociatedTypeWitness);
  v32 = v17;
  type metadata accessor for PopoverFlowBackActionImplementation(0, AssociatedTypeWitness, v18, v19);

  swift_getWitnessTable();
  v20 = v29;
  sub_1B7A994B0();

  sub_1B7A9AE30();
  v21 = *(v9 + 72);
  swift_allocObject();
  v22 = sub_1B7A9A650();
  v24 = v23;
  v25 = *(v10 + 16);
  v25(v23, v14, v8);
  v25(v24 + v21, v20, v8);
  sub_1B7A2A32C(v22, v8);
  sub_1B7A994A0();

  v26 = *(v10 + 8);
  v26(v20, v8);
  return (v26)(v14, v8);
}

uint64_t objectdestroyTm_1()
{
  sub_1B79599CC(*(v0 + 40), *(v0 + 48));

  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
    if ((*(v0 + 168) & 1) == 0)
    {
LABEL_3:

      goto LABEL_7;
    }
  }

  else
  {

    if ((*(v0 + 168) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  }

LABEL_7:

  return swift_deallocObject();
}

uint64_t sub_1B7A027D4()
{
  v1 = v0[2];
  type metadata accessor for FlowStackSheetAuthority(0, v1, v0[3], v0[4]);
  return sub_1B7A298DC(v1);
}

uint64_t sub_1B7A0281C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A02870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  sub_1B7A9A760();
  v6[7] = sub_1B7A9A750();
  v8 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B7A02910, v8, v7);
}

uint64_t sub_1B7A02910()
{

  v1 = sub_1B7A99330();
  v3 = v2;
  if (sub_1B7A99A70() == v1 && v4 == v3)
  {

LABEL_8:
    v7 = v0[3];

    sub_1B7A29434(v7);
LABEL_9:
    v8 = MEMORY[0x1E69AB010];
    goto LABEL_10;
  }

  v6 = sub_1B7A9AE80();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_1B7A99AB0() == v1 && v14 == v3)
  {
  }

  else
  {
    v15 = sub_1B7A9AE80();

    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (sub_1B7A29318())
  {
    v16 = v0[3];

    sub_1B7A29804();
    v17 = v16;
    v18 = 0;
LABEL_25:
    sub_1B7A89028(v17, v18);

    goto LABEL_9;
  }

LABEL_19:
  if (sub_1B7A99AC0() == v1 && v19 == v3)
  {
  }

  else
  {
    v20 = sub_1B7A9AE80();

    if ((v20 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (sub_1B7A29318())
  {
    v21 = v0[3];
    sub_1B7A29804();
    v17 = v21;
    v18 = 1;
    goto LABEL_25;
  }

LABEL_26:
  v8 = MEMORY[0x1E69AB008];
LABEL_10:
  v9 = v0[2];
  v10 = *v8;
  v11 = sub_1B7A98FA0();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  v12 = v0[1];

  return v12();
}

uint64_t sub_1B7A02B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v14 + 16))(&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3, v17);
  v18 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  v20 = v27;
  *(v19 + 4) = a5;
  *(v19 + 5) = v20;
  (*(v14 + 32))(&v19[v18], &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *&v19[(v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1B7AA2668;
  *(v21 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46FF0, &unk_1B7AA01E0);

  v22 = sub_1B7A9A150();
  v23 = sub_1B7A9A7E0();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_1B7A9EDF0;
  v24[5] = v21;
  v24[6] = v22;

  sub_1B7A64074(0, 0, v13, &unk_1B7A9EE00, v24);

  return v22;
}

uint64_t sub_1B7A02E04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v8 = *(v1 + ((*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B798D338;

  return sub_1B7A02870(a1, v1 + v7, v8, v4, v5, v6);
}

uint64_t ShelfGridSpacing.init(vertical:horizontal:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

void ShelfGridSpacing.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
}

uint64_t ShelfGridSpacing.vertical.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ShelfGridSpacing.horizontal.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t *sub_1B7A02FE0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = v2;
  *(a2 + 24) = 0;
  return result;
}

BOOL _s18_JetEngine_SwiftUI16ShelfGridSpacingV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B7A03074(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7A03094(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

void sub_1B7A03114()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v0 sharedApplication];
  v3 = [v2 _launchTestName];

  [v1 finishedTest_];
}

uint64_t sub_1B7A03228(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1B7A03294()
{
  v0 = sub_1B7A98B00();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B7A98B30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B799B4F8();
  v8 = sub_1B7A9AA50();
  aBlock[4] = sub_1B7A03114;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7A03228;
  aBlock[3] = &block_descriptor_1;
  v9 = _Block_copy(aBlock);
  sub_1B7A98B10();
  v11[1] = MEMORY[0x1E69E7CC0];
  sub_1B7A034F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA48250, &unk_1B7AA2A60);
  sub_1B7A0354C();
  sub_1B7A9ABA0();
  MEMORY[0x1B8CABCA0](0, v7, v3, v9);
  _Block_release(v9);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B7A034F4()
{
  result = qword_1EDC0EB20;
  if (!qword_1EDC0EB20)
  {
    sub_1B7A98B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EB20);
  }

  return result;
}

unint64_t sub_1B7A0354C()
{
  result = qword_1EDC0E5F8;
  if (!qword_1EDC0E5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBA48250, &unk_1B7AA2A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0E5F8);
  }

  return result;
}

uint64_t sub_1B7A035B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v9 = *(_s23_SequenceActionProtocolVMa(0, a4, a5, a4) + 36);
  v10 = sub_1B7A99080();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a6[v9], a3, v10);
}

unint64_t sub_1B7A03654(uint64_t a1)
{
  result = sub_1B7958DD8();
  if (v2 <= 0x3F)
  {
    result = sub_1B7A99080();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t MediaArtwork.ProtocolRequestPriorityCoordinator.currentPriority.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v5));
  v6 = sub_1B7A9A7E0();
  (*(*(v6 - 8) + 16))(a1, v3 + v4, v6);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_1B7A0387C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>, double a8@<D0>)
{
  v37 = a5;
  v33 = a4;
  v34 = a2;
  v15 = sub_1B7A9A7E0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a7 = a1;
  v21 = type metadata accessor for MediaArtwork.ProtocolRequest(0, a6, v19, v20);
  v22 = v21[7];
  v23 = *(a6 - 8);
  v35 = a6;
  v36 = v23;
  (*(v23 + 16))(&a7[v22], a2, a6);
  *&a7[v21[8]] = a8;
  a7[v21[9]] = a3;
  v24 = v21[10];
  v32 = sub_1B7A97580();
  v25 = *(v32 - 8);
  (*(v25 + 16))(&a7[v24], a4, v32);
  v26 = *(v16 + 16);
  v26(v18, v37, v15);
  type metadata accessor for MediaArtwork.ProtocolRequestPriorityCoordinator();
  v27 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48360, &qword_1B7AA28D8);
  v28 = swift_allocObject();
  *(v28 + ((*(*v28 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v26((v28 + *(*v28 + *MEMORY[0x1E69E6B68] + 16)), v18, v15);
  *(v27 + 16) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB8, &unk_1B7AA28E0);
  swift_allocObject();
  v29 = sub_1B7A9A360();
  v30 = *(v16 + 8);
  v30(v18, v15);
  *(v27 + 24) = v29;
  v30(v37, v15);
  (*(v25 + 8))(v33, v32);
  result = (*(v36 + 8))(v34, v35);
  *&a7[v21[11]] = v27;
  return result;
}

uint64_t MediaArtwork.ProtocolRequest.layoutDirection.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1B7A97580();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t MediaArtwork.ProtocolRequestPriorityCoordinator.increasePriority(to:)(uint64_t a1)
{
  v3 = sub_1B7A9A7E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  v8 = MEMORY[0x1E69E6B68];
  v9 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v7 + v10));
  (*(v4 + 16))(v6, v7 + v9, v3);
  os_unfair_lock_unlock((v7 + v10));

  v11 = sub_1B7A9A790();
  v12 = (*(v4 + 8))(v6, v3);
  if (v11)
  {
    v13 = *(v1 + 16);
    MEMORY[0x1EEE9AC00](v12);
    *&v17[-16] = a1;
    v14 = *(*v13 + *v8 + 16);
    v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v13 + v15));
    sub_1B7A03F0C(v13 + v14);
    os_unfair_lock_unlock((v13 + v15));

    sub_1B7A9A350();
  }

  return v11 & 1;
}

uint64_t sub_1B7A03F0C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1B7A9A7E0();
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

unint64_t MediaArtwork.ProtocolRequestPriorityCoordinator.debugDescription.getter()
{
  v1 = 0xD000000000000024;
  v2 = *(v0 + 16);
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;

  if (os_unfair_lock_trylock((v2 + v3)))
  {
    sub_1B7A9AC50();
    MEMORY[0x1B8CAB750](0xD000000000000034, 0x80000001B7AC6600);
    sub_1B7A9A7E0();
    sub_1B7A0413C();
    v4 = sub_1B7A9AE20();
    MEMORY[0x1B8CAB750](v4);

    MEMORY[0x1B8CAB750](41, 0xE100000000000000);
    v1 = 0;
    os_unfair_lock_unlock((v2 + v3));
  }

  return v1;
}

unint64_t sub_1B7A0413C()
{
  result = qword_1EBA482D8[0];
  if (!qword_1EBA482D8[0])
  {
    sub_1B7A9A7E0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA482D8);
  }

  return result;
}

uint64_t MediaArtwork.ProtocolRequestPriorityCoordinator.deinit()
{

  return v0;
}

uint64_t MediaArtwork.ProtocolRequestPriorityCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MediaArtwork.ProtocolRequest<>.urlMatchResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB0, &unk_1B7AA07A0) + 28);
  v4 = sub_1B7A99050();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1B7A042A8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1B7A97580();
    if (v3 <= 0x3F)
    {
      type metadata accessor for MediaArtwork.ProtocolRequestPriorityCoordinator();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A04364(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1B7A97580();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + 7;
  v15 = v11 + 9;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v16 = ((*(*(v8 - 8) + 64) + ((v15 + ((v14 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v13 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v23 = v21 - 1;
    if (v17)
    {
      v23 = 0;
      v24 = *a1;
    }

    else
    {
      v24 = 0;
    }

    return v13 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = *(a1 + v16);
    if (v21)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v12 & 0x80000000) != 0)
  {
    v26 = (a1 + v10 + 8) & ~v10;
    if (v7 == v13)
    {
      v27 = *(v6 + 48);

      return v27(v26, v7, v5);
    }

    else
    {
      v28 = *(v9 + 48);
      v29 = (v15 + ((v14 + v26) & 0xFFFFFFFFFFFFFFF8)) & ~v11;

      return v28(v29);
    }
  }

  else
  {
    v25 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }
}

void sub_1B7A045E0(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = sub_1B7A97580();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((*(*(v10 - 8) + 64) + ((v14 + 9 + ((v13 + 7 + ((v12 + 8) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + ((v14 + 9 + ((v13 + 7 + ((v12 + 8) & ~v12)) & 0xFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v15 & 0x80000000) != 0)
        {
          v25 = (a1 + v12 + 8) & ~v12;
          if (v9 == v16)
          {
            v26 = *(v29 + 56);

            v26(v25, a2, v9, v7);
          }

          else
          {
            v27 = *(v11 + 56);
            v28 = (v14 + 9 + ((v13 + 7 + v25) & 0xFFFFFFFFFFFFFFF8)) & ~v14;

            v27(v28, a2);
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *a1 = v24;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((*(*(v10 - 8) + 64) + ((v14 + 9 + ((v13 + 7 + ((v12 + 8) & ~v12)) & 0xFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((*(*(v10 - 8) + 64) + ((v14 + 9 + ((v13 + 7 + ((v12 + 8) & ~v12)) & 0xFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

unint64_t sub_1B7A048FC()
{
  result = qword_1EDC10A40;
  if (!qword_1EDC10A40)
  {
    sub_1B7A97E00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10A40);
  }

  return result;
}

uint64_t sub_1B7A04954()
{
  result = sub_1B7A9A480();
  qword_1EBA48368 = result;
  return result;
}

id static NWPathNetworkInquiry.didChangeNotification.getter()
{
  if (qword_1EBA45B60 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBA48368;

  return v1;
}

uint64_t sub_1B7A049E8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48378, &qword_1B7AA2900);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = OBJC_IVAR____TtC18_JetEngine_SwiftUI20NWPathNetworkInquiry__isInternetOffline;
  v19 = 0;
  sub_1B7A96EE0();
  (*(v5 + 32))(v2 + v8, v7, v4);
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA483A8, qword_1B7AA2A20);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *(v2 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA468D8, &qword_1B7A9D9D0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC18_JetEngine_SwiftUI20NWPathNetworkInquiry_isInternetOfflineLock) = v10;
  v11 = a1;
  v12 = [v11 path];
  v13 = [v12 status];

  swift_getKeyPath();
  swift_getKeyPath();
  v18 = (v13 & 0xFFFFFFFFFFFFFFFDLL) != 1;

  sub_1B7A96F30();
  v14 = *(v2 + 24);

  os_unfair_lock_lock((v14 + 24));

  v17 = v11;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v15 = sub_1B7A96B20();

  *(v14 + 16) = v15;
  os_unfair_lock_unlock((v14 + 24));

  return v2;
}

BOOL NWPathNetworkInquiry.isLikelyReachable.getter()
{
  v1 = [*(v0 + 16) path];
  v2 = [v1 status];

  return (v2 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

uint64_t sub_1B7A04CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B7A98B00();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B7A98B30();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B799B4F8();
  v10 = sub_1B7A9AA50();
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = sub_1B7A05FD0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7A03228;
  aBlock[3] = &block_descriptor_2;
  v12 = _Block_copy(aBlock);

  sub_1B7A98B10();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1B7A034F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA48250, &unk_1B7AA2A60);
  sub_1B7A0354C();
  sub_1B7A9ABA0();
  MEMORY[0x1B8CABCA0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_1B7A04F90(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B7A04FE8();
  }

  return result;
}

void sub_1B7A04FE8()
{
  v1 = v0;
  sub_1B7A9A210();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
  sub_1B7A98D10();
  *(swift_allocObject() + 16) = xmmword_1B7AA28F0;
  sub_1B7A98D00();
  sub_1B7A98C40();
  sub_1B7A98C40();
  v2 = [*(v0 + 16) path];
  v3 = [v2 status];

  v8 = MEMORY[0x1E69E6370];
  LOBYTE(v7[0]) = (v3 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  sub_1B7A98CE0();
  sub_1B7A05FE0(v7);
  sub_1B7A98C40();
  v8 = sub_1B7A99580();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v7);
  NWPathNetworkInquiry.interface.getter(boxed_opaque_existential_1Tm);
  sub_1B7A98CE0();
  sub_1B7A05FE0(v7);
  sub_1B7A99E40();

  __swift_destroy_boxed_opaque_existential_1(v9);
  v5 = *(v1 + OBJC_IVAR____TtC18_JetEngine_SwiftUI20NWPathNetworkInquiry_isInternetOfflineLock);
  os_unfair_lock_lock(v5 + 4);
  sub_1B7A06064();
  os_unfair_lock_unlock(v5 + 4);
  v6 = [objc_opt_self() defaultCenter];
  if (qword_1EBA45B60 != -1)
  {
    swift_once();
  }

  [v6 postNotificationName:qword_1EBA48368 object:v1];
}

id NWPathNetworkInquiry.__allocating_init()()
{
  result = [objc_opt_self() sharedDefaultEvaluator];
  if (result)
  {
    v1 = result;
    v2 = swift_allocObject();
    sub_1B7A049E8(v1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NWPathNetworkInquiry.deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);

  os_unfair_lock_lock((v2 + 24));
  if (*(v2 + 16))
  {
    sub_1B7A96AE0();
  }

  os_unfair_lock_unlock((v2 + 24));

  v3 = OBJC_IVAR____TtC18_JetEngine_SwiftUI20NWPathNetworkInquiry__isInternetOffline;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48378, &qword_1B7AA2900);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return v1;
}

uint64_t NWPathNetworkInquiry.__deallocating_deinit()
{
  NWPathNetworkInquiry.deinit();

  return swift_deallocClassInstance();
}

uint64_t NWPathNetworkInquiry.isInternetOffline.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  return v1;
}

uint64_t sub_1B7A054D0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  *a2 = v4;
  return result;
}

uint64_t sub_1B7A05550(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B7A96F30();
}

uint64_t NWPathNetworkInquiry.$isInternetOffline.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48378, &qword_1B7AA2900);
  sub_1B7A96EF0();
  return swift_endAccess();
}

uint64_t sub_1B7A05638(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48378, &qword_1B7AA2900);
  sub_1B7A96EF0();
  return swift_endAccess();
}

uint64_t sub_1B7A056B0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA483A0, &qword_1B7AA2A18);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48378, &qword_1B7AA2900);
  sub_1B7A96F00();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t NWPathNetworkInquiry.interface.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B7A99580();
  v15 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + 16) path];
  v8 = [v7 interface];

  if (v8)
  {
    v9 = [v8 type];

    if ((v9 - 1) > 3)
    {
      v10 = MEMORY[0x1E69AB1A8];
    }

    else
    {
      v10 = qword_1E7CB4A70[(v9 - 1)];
    }

    (*(v15 + 104))(v6, *v10, v3);
    return (*(v15 + 32))(a1, v6, v3);
  }

  else
  {
    v11 = *MEMORY[0x1E69AB1A0];
    v12 = *(v15 + 104);

    return v12(a1, v11, v3);
  }
}

id sub_1B7A05A00(SEL *a1)
{
  v3 = [*(v1 + 16) path];
  v4 = [v3 *a1];

  return v4;
}

uint64_t NWPathNetworkInquiry.observe(on:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v7 = *v4;
  v8 = sub_1B7A99BD0();
  if (qword_1EBA45B60 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBA48368;
  v15 = v7;
  v14 = v4;
  sub_1B7999E90(a1, v13);
  v10 = v9;

  result = sub_1B7A99BC0();
  v12 = MEMORY[0x1E69AB3D0];
  a4[3] = v8;
  a4[4] = v12;
  *a4 = result;
  return result;
}

uint64_t sub_1B7A05B64(uint64_t a1)
{
  v1 = [*(a1 + 16) path];
  v2 = [v1 status];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  if (((v2 & 0xFFFFFFFFFFFFFFFDLL) != 1) != v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_1B7A96F30();
  }

  return result;
}

BOOL sub_1B7A05C78()
{
  v1 = [*(*v0 + 16) path];
  v2 = [v1 status];

  return (v2 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

id sub_1B7A05D10(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*(*v3 + 16) path];
  v6 = [v5 *a3];

  return v6;
}

uint64_t sub_1B7A05D64@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *v5;
  v10 = sub_1B7A99BD0();
  if (qword_1EBA45B60 != -1)
  {
    swift_once();
  }

  v11 = qword_1EBA48368;
  v17 = a4;
  v16 = v9;
  sub_1B7999E90(a1, v15);
  v12 = v11;

  result = sub_1B7A99BC0();
  v14 = MEMORY[0x1E69AB3D0];
  a5[3] = v10;
  a5[4] = v14;
  *a5 = result;
  return result;
}

uint64_t type metadata accessor for NWPathNetworkInquiry(uint64_t a1)
{
  result = qword_1EBA48388;
  if (!qword_1EBA48388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7A05EA8(uint64_t a1)
{
  sub_1B7A05F6C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B7A05F6C()
{
  if (!qword_1EBA48398)
  {
    v0 = sub_1B7A96F50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA48398);
    }
  }
}

uint64_t sub_1B7A05FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B50, &qword_1B7A9DD90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B7A0608C(void *a1)
{
  type metadata accessor for FlowStackTabsAuthority(255, a1[2], a1[5], a1[6]);
  swift_getWitnessTable();
  sub_1B7A974C0();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1B7A98870();
    if (v2 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v3 <= 0x3F)
      {
        sub_1B797CE50(319, qword_1EDC0EC28, &qword_1EBA47828, &qword_1B7AA0240);
        if (v4 <= 0x3F)
        {
          sub_1B79E1700(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1B7A061E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1B7A99900() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = v12 | 7;
  if (a2 <= v9)
  {
    goto LABEL_32;
  }

  v14 = *(v10 + 80) & 0xF8 | 7;
  v15 = v11 + ((v14 + ((((((((*(v6 + 64) - (((-17 - v12) | v12) + ((-17 - v12) | v13)) + 5) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v14) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v9 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v19 < 2)
    {
LABEL_32:
      if (v9 == 0x7FFFFFFF)
      {
        v21 = *(a1 + 1);
        if (v21 >= 0xFFFFFFFF)
        {
          LODWORD(v21) = -1;
        }

        return (v21 + 1);
      }

      else
      {
        v22 = *(v6 + 48);

        return v22((v12 + ((((a1 + v13 + 16) & ~v13) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12, v7, AssociatedTypeWitness);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_32;
  }

LABEL_21:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        LODWORD(v15) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v15) = *a1;
      }
    }

    else if (v15 == 1)
    {
      LODWORD(v15) = *a1;
    }

    else
    {
      LODWORD(v15) = *a1;
    }
  }

  return v9 + (v15 | v20) + 1;
}

void sub_1B7A064C4(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (v9 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(sub_1B7A99900() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v8 + 80);
  v15 = ((v14 + 16) & ~v14) + *(v8 + 64);
  v16 = *(v12 + 80) & 0xF8 | 7;
  v17 = v13 + ((v16 + ((((((((v15 + ((v14 + 16) & ~(v14 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 41) & ~v16) + 1;
  if (a3 <= v11)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v11 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v11 < a2)
  {
    v19 = ~v11 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_63:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v17) = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v18)
  {
    goto LABEL_36;
  }

  *(a1 + v17) = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v11 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }
  }

  else
  {
    v24 = ((a1 + (v14 | 7) + 16) & ~(v14 | 7));
    if (v10 >= a2)
    {
      v28 = *(v29 + 56);

      v28((v14 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14, a2, v9, AssociatedTypeWitness);
    }

    else
    {
      if (v15 <= 3)
      {
        v25 = ~(-1 << (8 * v15));
      }

      else
      {
        v25 = -1;
      }

      if (v15)
      {
        v26 = v25 & (~v10 + a2);
        if (v15 <= 3)
        {
          v27 = v15;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v15);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            v24[2] = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }
  }
}

uint64_t sub_1B7A068E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = *(*a1 + 88);
  v19 = *(*a1 + 96);
  v34[0] = *(*a1 + 80);
  v17 = v34[0];
  v34[1] = a8;
  v34[2] = a10;
  v34[3] = v18;
  v34[4] = v19;
  v34[5] = a11;
  v34[6] = a12;
  v20 = type metadata accessor for FlowStackTabView(0, v34);
  v21 = &a9[v20[23]];
  *v21 = swift_getKeyPath();
  v21[40] = 0;
  v22 = v20[24];
  *&a9[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FlowStackTabsAuthority(0, v17, v18, v19);

  swift_getWitnessTable();
  *a9 = sub_1B7A97490();
  *(a9 + 1) = v23;
  v24 = *(*a1 + 112);
  v25 = v20[19];
  swift_getAssociatedTypeWitness();
  v26 = sub_1B7A98870();
  (*(*(v26 - 8) + 16))(&a9[v25], a1 + v24, v26);

  v28 = &a9[v20[20]];
  *v28 = a2;
  *(v28 + 1) = a3;
  v29 = &a9[v20[21]];
  *v29 = a4;
  *(v29 + 1) = a5;
  v30 = &a9[v20[22]];
  *v30 = a6;
  *(v30 + 1) = a7;
  return result;
}

uint64_t sub_1B7A06AFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v3 = a1[6];
  v133 = "idChangeNotification";
  v4 = a1[2];
  v148 = v3;
  v106 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v135 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v134 = &v101 - v5;
  v131 = sub_1B7A997E0();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v128 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v129 = &v101 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v132 = &v101 - v10;
  v156 = *(a1 - 1);
  v151 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v145 = &v101 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v125 = &v101 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v101 - v18;
  v147 = sub_1B7A98870();
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v101 - v19;
  *&v153 = a1[5];
  v144 = type metadata accessor for FlowStackTabsAuthority.Tab(255, v4, v153, v3);
  v141 = sub_1B7A9A6E0();
  *&v154 = a1[3];
  sub_1B7A97E00();
  v20 = sub_1B7A97590();
  v150 = a1[7];
  v21 = v150;
  v138 = sub_1B7A048FC();
  v169 = v21;
  v170 = v138;
  WitnessTable = swift_getWitnessTable();
  v159 = v20;
  v160 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v112 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8, &qword_1B7AA24F0);
  v23 = sub_1B7A97590();
  v139 = a1;
  v24 = sub_1B7A98E50();
  v25 = a1[8];
  v155 = v25;
  v26 = sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8, &qword_1B7AA24F0, MEMORY[0x1E6980A18]);
  v167 = v25;
  v168 = v26;
  v27 = swift_getWitnessTable();
  v166 = MEMORY[0x1E69E6168];
  v28 = swift_getWitnessTable();
  v159 = v23;
  v160 = v24;
  v161 = v27;
  v162 = v28;
  v29 = sub_1B7A987A0();
  v111 = v29;
  v30 = v141;
  v31 = swift_getWitnessTable();
  v110 = v31;
  v159 = v20;
  v160 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v109 = OpaqueTypeConformance2;
  v33 = swift_getWitnessTable();
  v108 = v33;
  v107 = swift_getWitnessTable();
  v159 = v30;
  v160 = OpaqueTypeMetadata2;
  v161 = v29;
  v162 = v31;
  v163 = OpaqueTypeConformance2;
  v164 = v33;
  v165 = v107;
  v34 = type metadata accessor for _FlowStackTabViewBody(0, &v159);
  v124 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v143 = &v101 - v35;
  v115 = v34;
  v36 = sub_1B7A97590();
  v119 = v36;
  v126 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v142 = &v101 - v37;
  v114 = swift_getWitnessTable();
  v157 = v114;
  v158 = v138;
  v38 = swift_getWitnessTable();
  v118 = v38;
  v39 = v148;
  v40 = v106;
  v41 = AssociatedTypeWitness;
  v117 = *(swift_getAssociatedConformanceWitness() + 8);
  v159 = v36;
  v160 = v41;
  v161 = v38;
  v162 = v117;
  v121 = MEMORY[0x1E6981440];
  v122 = swift_getOpaqueTypeMetadata2();
  v123 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v113 = &v101 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v116 = &v101 - v44;
  v45 = v152;
  v104 = *(v152 + 8);
  v159 = sub_1B7A8FC14();
  v46 = v139;
  v105 = *(v139 + 19);
  sub_1B7A98830();
  v47 = v156;
  v48 = *(v156 + 16);
  v137 = v156 + 16;
  v49 = v120;
  v50 = v46;
  v48(v120, v45, v46);
  v138 = *(v47 + 80);
  v51 = (v138 + 72) & ~v138;
  v52 = swift_allocObject();
  *&v53 = v40;
  *(&v53 + 1) = v154;
  v154 = v53;
  *&v54 = v112;
  *(&v54 + 1) = v153;
  v153 = v54;
  v103 = v52;
  *(v52 + 16) = v53;
  *(v52 + 32) = v54;
  v55 = v150;
  *(v52 + 48) = v39;
  *(v52 + 56) = v55;
  *(v52 + 64) = v155;
  v56 = *(v47 + 32);
  v156 = v47 + 32;
  v112 = v56;
  v56(v52 + v51, v49, v46);
  v57 = v125;
  v58 = v152;
  v102 = v48;
  v48(v125, v152, v50);
  v59 = swift_allocObject();
  v60 = v153;
  *(v59 + 16) = v154;
  *(v59 + 32) = v60;
  *(v59 + 48) = v39;
  *(v59 + 56) = v55;
  v61 = v155;
  *(v59 + 64) = v155;
  v62 = v57;
  v63 = v50;
  v64 = v50;
  v65 = v112;
  v112(v59 + v51, v62, v64);
  v48(v145, v58, v63);
  v66 = swift_allocObject();
  v67 = v153;
  *(v66 + 16) = v154;
  *(v66 + 32) = v67;
  v68 = v148;
  v69 = v150;
  *(v66 + 48) = v148;
  *(v66 + 56) = v69;
  *(v66 + 64) = v61;
  v70 = v139;
  v65(v66 + v51, v145, v139);
  v71 = v127;
  v72 = v58;
  v73 = v70;
  v102(v127, v72, v70);
  v74 = swift_allocObject();
  v75 = v153;
  *(v74 + 16) = v154;
  *(v74 + 32) = v75;
  *(v74 + 48) = v68;
  *(v74 + 56) = v69;
  *(v74 + 64) = v155;
  v65(v74 + v51, v71, v73);
  sub_1B7A09134(&v159, v146, sub_1B7A099A0, v103, sub_1B7A09C8C, v59, sub_1B7A09CB8, v66, v143, sub_1B7A09D84, v74, v141, OpaqueTypeMetadata2, v111, v110, v109, v108, v107);
  v76 = v128;
  sub_1B7A99790();
  sub_1B7A8FC14();
  v77 = sub_1B7A9A6C0();

  v162 = MEMORY[0x1E69E6530];
  v159 = v77;
  v78 = v129;
  v79 = v76;
  sub_1B7A997D0();
  v80 = *(v130 + 8);
  v81 = v131;
  v80(v79, v131);
  sub_1B7957888(&v159, &qword_1EBA46B50, &qword_1B7A9DD90);
  v162 = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_1Tm(&v159);
  v82 = v147;
  MEMORY[0x1B8CA9A40](v147);
  v83 = v132;
  sub_1B7A997D0();
  v80(v78, v81);
  sub_1B7957888(&v159, &qword_1EBA46B50, &qword_1B7A9DD90);
  v84 = v115;
  v85 = v143;
  View.automationSemantics(_:)(v83, v115, v114);
  v80(v83, v81);
  (*(v124 + 8))(v85, v84);
  v86 = v134;
  MEMORY[0x1B8CA9A40](v82);
  v87 = swift_allocObject();
  v88 = v153;
  *(v87 + 16) = v154;
  *(v87 + 32) = v88;
  v89 = v150;
  *(v87 + 48) = v148;
  *(v87 + 56) = v89;
  *(v87 + 64) = v155;
  v90 = v113;
  v91 = v119;
  v92 = AssociatedTypeWitness;
  v93 = v118;
  v94 = v117;
  v95 = v142;
  sub_1B7A984B0();

  (*(v135 + 8))(v86, v92);
  (*(v126 + 8))(v95, v91);
  v159 = v91;
  v160 = v92;
  v161 = v93;
  v162 = v94;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = v116;
  v98 = v122;
  sub_1B7957EE0(v90, v122, v96);
  v99 = *(v123 + 8);
  v99(v90, v98);
  sub_1B7957EE0(v97, v98, v96);
  return (v99)(v97, v98);
}

uint64_t sub_1B7A07A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v58 = a8;
  v65 = a5;
  v64 = a4;
  v66 = a1;
  v57 = a9;
  v52 = sub_1B7A99900();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_1B7A98F80();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1B7A98D60();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v53 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1B7A9A280();
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FlowStackTabsAuthority.Tab(255, a3, a6, a7);
  v20 = sub_1B7A9AB60();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v43 - v22;
  v24 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v63 = &v43 - v26;
  v55 = a2;
  v75[0] = sub_1B7A8FC14();
  v61 = a3;
  v67 = a3;
  v68 = v64;
  v69 = v65;
  v54 = a6;
  v70 = a6;
  v62 = a7;
  v71 = a7;
  v27 = v58;
  v72 = v58;
  v28 = v57;
  v73 = v57;
  v74 = v66;
  sub_1B7A9A6E0();
  swift_getWitnessTable();
  sub_1B7A9A5B0();

  if ((*(v24 + 48))(v23, 1, v19) == 1)
  {
    (*(v21 + 8))(v23, v20);
    v29 = v59;
    sub_1B7A9A220();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9D270;
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v76 = AssociatedTypeWitness;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v75);
    (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1Tm, v66, AssociatedTypeWitness);
    sub_1B7A98C60();
    sub_1B7957888(v75, &qword_1EBA46B50, &qword_1B7A9DD90);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A98C40();
    v32 = v60;
    sub_1B7A99E60();

    return (*(v56 + 8))(v29, v32);
  }

  else
  {
    v34 = v59;
    v35 = v60;
    v66 = v24;
    (*(v24 + 32))(v63, v23, v19);
    v75[0] = v61;
    v75[1] = v64;
    v75[2] = v65;
    v76 = v54;
    v77 = v62;
    v78 = v27;
    v79 = v28;
    type metadata accessor for FlowStackTabView(0, v75);
    sub_1B797C31C(&v80);
    if (v81)
    {
      sub_1B795C1E4(&v80, &v82);
      (*(v45 + 16))(v44, &v63[*(v19 + 44)], v46);
      v36 = v47;
      sub_1B7A98D50();
      v37 = v83;
      v38 = v84;
      __swift_project_boxed_opaque_existential_1(&v82, v83);
      v39 = v49;
      v76 = v49;
      v77 = MEMORY[0x1E69AAF30];
      v40 = __swift_allocate_boxed_opaque_existential_1Tm(v75);
      v41 = v48;
      (*(v48 + 16))(v40, v36, v39);
      v42 = v50;
      sub_1B797BE80(v50);
      (*(v38 + 24))(v75, v42, v37, v38);
      (*(v51 + 8))(v42, v52);
      (*(v41 + 8))(v36, v39);
      (*(v66 + 8))(v63, v19);
      __swift_destroy_boxed_opaque_existential_1(v75);
      return __swift_destroy_boxed_opaque_existential_1(&v82);
    }

    else
    {
      sub_1B7957888(&v80, &qword_1EBA47828, &qword_1B7AA0240);
      sub_1B7A9A240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
      sub_1B7A98D10();
      *(swift_allocObject() + 16) = xmmword_1B7A9D270;
      sub_1B7A98C40();
      sub_1B7A98C40();
      sub_1B7A99E60();

      (*(v56 + 8))(v34, v35);
      return (*(v66 + 8))(v63, v19);
    }
  }
}

uint64_t sub_1B7A08474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_1B7A9A470();

  return v7 & 1;
}

uint64_t sub_1B7A08588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v52 = a6;
  v53 = a7;
  v50 = a5;
  v55 = a2;
  v56 = a1;
  v63 = a9;
  v13 = sub_1B7A97D90();
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B7A997E0();
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v46 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A97E00();
  v19 = a4;
  v45 = a4;
  v20 = sub_1B7A97590();
  v54 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v47 = &v44 - v21;
  v22 = sub_1B7A048FC();
  v23 = a8;
  v44 = a8;
  v71 = a8;
  v72 = v22;
  WitnessTable = swift_getWitnessTable();
  v64 = v20;
  v65 = WitnessTable;
  v49 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v44 - v29;
  v64 = a3;
  v65 = v19;
  v66 = v50;
  v67 = v52;
  v68 = v53;
  v69 = v23;
  v70 = a10;
  v31 = type metadata accessor for FlowStackTabView(0, &v64);
  v32 = v56;
  v33 = v46;
  (*(v55 + *(v31 + 80)))(v56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = AssociatedTypeWitness;
  v35 = __swift_allocate_boxed_opaque_existential_1Tm(&v64);
  (*(*(AssociatedTypeWitness - 8) + 16))(v35, v32, AssociatedTypeWitness);
  v36 = v51;
  sub_1B7A997C0();
  __swift_destroy_boxed_opaque_existential_1(&v64);
  v37 = v47;
  v38 = v45;
  View.automationSemantics(_:)(v36, v45, v44);
  (*(v58 + 8))(v36, v59);
  (*(v57 + 8))(v33, v38);
  v39 = v60;
  sub_1B7A97D80();
  v40 = WitnessTable;
  sub_1B7A982E0();
  (*(v61 + 8))(v39, v62);
  (*(v54 + 8))(v37, v20);
  v64 = v20;
  v65 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B7957EE0(v27, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v42 = *(v25 + 8);
  v42(v27, OpaqueTypeMetadata2);
  sub_1B7957EE0(v30, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v42)(v30, OpaqueTypeMetadata2);
}

uint64_t sub_1B7A08AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v11 = type metadata accessor for FlowStackTabView(0, v19);
  (*(a2 + *(v11 + 84)))(v19, a1);
  v12 = __swift_project_boxed_opaque_existential_1(v19, v20);
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v15 + 16))(&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v16 = sub_1B7A987F0();
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16;
}

uint64_t sub_1B7A08C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v43 = a3;
  v52 = a2;
  v57 = a9;
  v16 = *(a5 - 8);
  v54 = a1;
  v55 = v16;
  MEMORY[0x1EEE9AC00](a1);
  v51 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8, &qword_1B7AA24F0);
  v18 = a5;
  v44 = a5;
  v19 = sub_1B7A97590();
  v47 = v19;
  v56 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v45 = v42 - v20;
  v63 = a3;
  v64 = a4;
  v65 = v18;
  v66 = a6;
  v67 = a7;
  v68 = a8;
  v69 = a10;
  v42[0] = a10;
  v21 = type metadata accessor for FlowStackTabView(255, &v63);
  v42[1] = v21;
  v22 = sub_1B7A98E50();
  v50 = v22;
  v23 = sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8, &qword_1B7AA24F0, MEMORY[0x1E6980A18]);
  v61 = a10;
  v62 = v23;
  WitnessTable = swift_getWitnessTable();
  v49 = WitnessTable;
  v60 = MEMORY[0x1E69E6168];
  v48 = swift_getWitnessTable();
  v63 = v19;
  v64 = v22;
  v65 = WitnessTable;
  v66 = v48;
  v25 = sub_1B7A987A0();
  v53 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v46 = v42 - v29;
  v30 = *(v52 + *(v21 + 88));
  v31 = type metadata accessor for FlowStackTabsAuthority.Tab(0, v43, a6, a7);
  v32 = v54;
  v33 = v51;
  v30(v54 + v31[12], *(v54 + v31[13]));
  LOBYTE(v63) = 3;
  v34 = v45;
  v35 = v44;
  View.presentedBy(_:)(&v63, v44, v42[0]);
  (*(v55 + 8))(v33, v35);
  v63 = 0;
  v64 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_1B7A9AE60();
  v58 = *(v32 + v31[16]);
  v36 = sub_1B7A9AE20();
  MEMORY[0x1B8CAB750](v36);

  v58 = v63;
  v59 = v64;
  sub_1B7A98E60();
  v58 = v63;
  v59 = v64;
  v37 = v47;
  sub_1B7A98390();

  (*(v56 + 8))(v34, v37);
  v38 = swift_getWitnessTable();
  v39 = v46;
  sub_1B7957EE0(v27, v25, v38);
  v40 = *(v53 + 8);
  v40(v27, v25);
  sub_1B7957EE0(v39, v25, v38);
  return (v40)(v39, v25);
}

uint64_t sub_1B7A09134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v76 = a7;
  v77 = a8;
  v74 = a6;
  v72 = a5;
  v69 = a4;
  v71 = a3;
  v87 = a2;
  v67 = a1;
  v81 = a9;
  v75 = a11;
  v73 = a10;
  v85 = a13;
  v86 = a16;
  v84 = a18;
  v82 = a17;
  v83 = a15;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = sub_1B7A98870();
  v79 = *(v64 - 8);
  v19 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v78 = &v60 - v21;
  v88[0] = a12;
  v88[1] = a13;
  v80 = a14;
  v88[2] = a14;
  v88[3] = a15;
  v88[4] = a16;
  v88[5] = a17;
  v88[6] = a18;
  v22 = type metadata accessor for _FlowStackTabViewBody(0, v88);
  v23 = *(v22 + 92);
  v24 = v22;
  v65 = v22;
  v25 = v81;
  v26 = v81 + v23;
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 33) = 0u;
  v27 = v25 + *(v24 + 96);
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = v25 + *(v24 + 100);
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  v68 = *(a12 - 8);
  v29 = *(v68 + 16);
  v62 = a12;
  v29(v25, a1, a12);
  v30 = v79;
  v63 = *(v79 + 16);
  v31 = v64;
  v63(v78, v87, v64);
  sub_1B7A9A760();
  v32 = sub_1B7A9A750();
  v33 = (*(v30 + 80) + 88) & ~*(v30 + 80);
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E85E0];
  *(v34 + 2) = v32;
  *(v34 + 3) = v35;
  v36 = v85;
  *(v34 + 4) = a12;
  *(v34 + 5) = v36;
  v37 = v83;
  *(v34 + 6) = v80;
  *(v34 + 7) = v37;
  v38 = v82;
  *(v34 + 8) = v86;
  *(v34 + 9) = v38;
  *(v34 + 10) = v84;
  v61 = *(v30 + 32);
  v61(&v34[v33], v78, v31);
  v39 = v66;
  v40 = v31;
  v63(v66, v87, v31);
  v41 = v69;

  v42 = sub_1B7A9A750();
  v43 = swift_allocObject();
  *(v43 + 2) = v42;
  v44 = v62;
  *(v43 + 3) = MEMORY[0x1E69E85E0];
  *(v43 + 4) = v44;
  v45 = v80;
  *(v43 + 5) = v85;
  *(v43 + 6) = v45;
  v46 = v86;
  *(v43 + 7) = v83;
  *(v43 + 8) = v46;
  v47 = v84;
  *(v43 + 9) = v82;
  *(v43 + 10) = v47;
  v48 = v39;
  v49 = v40;
  v61(&v43[v33], v48, v40);
  v50 = &v43[(v33 + v19 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v50 = v71;
  v50[1] = v41;
  v51 = v65;
  v52 = v81;
  sub_1B7A98840();

  (*(v79 + 8))(v87, v49);
  result = (*(v68 + 8))(v67, v44);
  v54 = (v52 + v51[20]);
  v55 = v74;
  *v54 = v72;
  v54[1] = v55;
  v56 = (v52 + v51[21]);
  v57 = v77;
  *v56 = v76;
  v56[1] = v57;
  v58 = (v52 + v51[22]);
  v59 = v75;
  *v58 = v73;
  v58[1] = v59;
  return result;
}

uint64_t sub_1B7A0963C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = sub_1B7A99350();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_1B7A9AE60();
  v13 = sub_1B7A8B794(v18, v19, v12);
  v15 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
  sub_1B7A98D10();
  *(swift_allocObject() + 16) = xmmword_1B7A9C180;
  sub_1B7A98CB0();
  sub_1B7A98CA0();
  v20 = MEMORY[0x1E69E6158];
  v18 = v13;
  v19 = v15;
  sub_1B7A98C70();
  sub_1B7957888(&v18, &qword_1EBA46B50, &qword_1B7A9DD90);
  sub_1B7A98CA0();
  sub_1B7A98CD0();
  sub_1B7A9A1E0();
  __swift_project_boxed_opaque_existential_1(&v18, v20);
  (*(v8 + 104))(v10, *MEMORY[0x1E69AB100], v7);
  sub_1B7A99E20();

  (*(v8 + 8))(v10, v7);
  __swift_destroy_boxed_opaque_existential_1(&v18);
}

uint64_t sub_1B7A099A0(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v12[6] = v9;
  v10 = *(type metadata accessor for FlowStackTabView(0, v12) - 8);
  return sub_1B7A07A10(a1, v1 + ((*(v10 + 80) + 72) & ~*(v10 + 80)), v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v13[0] = *(v0 + 16);
  v12 = *(v0 + 48);
  v13[1] = v2;
  v13[2] = v12;
  v14 = v1;
  v3 = type metadata accessor for FlowStackTabView(0, v13);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 72) & ~*(*(v3 - 1) + 80));

  v5 = v4 + v3[19];

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1B7A98870();
  (*(*(AssociatedTypeWitness - 8) + 8))(v5 + *(v7 + 32), AssociatedTypeWitness);

  v8 = v4 + v3[23];
  if (*(v8 + 40))
  {
    if (*(v8 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
    }
  }

  else
  {
  }

  v9 = v3[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1B7A99900();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B7A09CB8(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v12[6] = v9;
  v10 = *(type metadata accessor for FlowStackTabView(0, v12) - 8);
  return sub_1B7A08AE8(a1, v1 + ((*(v10 + 80) + 72) & ~*(v10 + 80)), v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B7A09DB0(uint64_t a1, uint64_t (*a2)(void, void *), uint64_t (*a3)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 3);
  v7 = *(v3 + 4);
  v8 = *(v3 + 5);
  v9 = *(v3 + 6);
  v10 = *(v3 + 7);
  v11 = *(v3 + 8);
  v15[0] = *(v3 + 2);
  v5 = v15[0];
  v15[1] = v6;
  v15[2] = v7;
  v15[3] = v8;
  v15[4] = v9;
  v15[5] = v10;
  v15[6] = v11;
  v12 = *(a2(0, v15) - 8);
  return a3(a1, &v3[(*(v12 + 80) + 72) & ~*(v12 + 80)], v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B7A09EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v10 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](v10);
}

uint64_t sub_1B7A09FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v20 - v17;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v16 + 16))(v18, a1, AssociatedTypeWitness);
  sub_1B7A98870();
  sub_1B7A98810();
  a5(a1);
}

uint64_t sub_1B7A0A1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v216 = a2;
  v222 = *(a1 + 16);
  v201 = *(a1 + 64);
  v3 = *(v201 + 8);
  v219 = *(a1 + 40);
  v208 = *(*(v219 + 8) + 8);
  v224.i64[0] = swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v189 = sub_1B7A98870();
  MEMORY[0x1EEE9AC00](v189);
  v190 = &v171 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48500, &unk_1B7AA2C68);
  v7 = sub_1B7A9A6E0();
  v226 = *(a1 + 24);
  *&v217 = v226.i64[1];
  v8 = sub_1B7A97E90();
  v200 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v213 = a1;
  v225 = *(a1 + 48);
  v255 = AssociatedConformanceWitness;
  v10 = AssociatedConformanceWitness;
  v220 = AssociatedConformanceWitness;
  v204 = v225.i64[1];
  v223 = vextq_s8(v225, v225, 8uLL);
  v256 = v223;
  WitnessTable = swift_getWitnessTable();
  *v257 = v8;
  *&v257[8] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = MEMORY[0x1E69E6338];
  v14 = swift_getWitnessTable();
  *v257 = v7;
  *&v257[8] = AssociatedTypeWitness;
  *&v257[16] = OpaqueTypeMetadata2;
  *&v257[24] = v14;
  *&v257[32] = v10;
  v15 = sub_1B7A988E0();
  *v257 = MEMORY[0x1E6981910];
  *&v257[8] = v15;
  *&v257[16] = MEMORY[0x1E6981E70];
  *&v257[24] = AssociatedTypeWitness;
  sub_1B7A97090();
  v16 = sub_1B7A97B40();
  v17 = sub_1B797EC34(&qword_1EBA48508, &qword_1EBA48500, &unk_1B7AA2C68, v13);
  *v257 = v6;
  *&v257[8] = MEMORY[0x1E69E6530];
  *&v257[16] = v16;
  *&v257[24] = v17;
  *&v257[32] = MEMORY[0x1E69E6540];
  v18 = sub_1B7A988E0();
  *v257 = v8;
  *&v257[8] = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = swift_getWitnessTable();
  v251 = MEMORY[0x1E6981900];
  v252 = v19;
  v253 = MEMORY[0x1E6981E60];
  v20 = swift_getWitnessTable();
  v249 = v19;
  v250 = v20;
  v248 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  *v257 = AssociatedTypeWitness;
  *&v257[8] = v18;
  v188 = v18;
  v22 = AssociatedTypeWitness;
  v23 = v220;
  *&v257[16] = v220;
  *&v257[24] = v21;
  v183 = v21;
  v24 = sub_1B7A97900();
  v25 = swift_getWitnessTable();
  *v257 = AssociatedTypeWitness;
  *&v257[8] = v24;
  *&v257[16] = v23;
  *&v257[24] = v25;
  v26 = sub_1B7A98980();
  v186 = *(v26 - 8);
  v187 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v185 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v184 = &v171 - v29;
  v221 = vextq_s8(v226, v226, 8uLL);
  *v257 = v221;
  *&v257[16] = v223;
  v30 = swift_getOpaqueTypeMetadata2();
  *v257 = v221;
  *&v257[16] = v223;
  v31 = swift_getOpaqueTypeConformance2();
  *v257 = v30;
  *&v257[8] = AssociatedTypeWitness;
  *&v257[16] = v31;
  *&v257[24] = v23;
  v218 = &unk_1B7AAA5C4;
  v32 = swift_getOpaqueTypeMetadata2();
  v33 = v222;
  *v257 = v222;
  *&v257[8] = v22;
  v34 = v219;
  *&v257[16] = v32;
  *&v257[24] = v219;
  *&v257[32] = v23;
  v35 = sub_1B7A988E0();
  *v257 = v30;
  *&v257[8] = v22;
  *&v257[16] = v31;
  *&v257[24] = v23;
  v247 = swift_getOpaqueTypeConformance2();
  v36 = swift_getWitnessTable();
  *v257 = v22;
  *&v257[8] = v35;
  *&v257[16] = v23;
  *&v257[24] = v36;
  v221.i64[0] = sub_1B7A98980();
  v223.i64[0] = sub_1B7A97B40();
  v182 = *(v223.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v223.i64[0]);
  v181 = &v171 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v180 = &v171 - v39;
  *v257 = v33;
  *&v257[8] = v22;
  *&v257[16] = v226.i64[0];
  *&v257[24] = v34;
  *&v257[32] = v23;
  sub_1B7A988E0();
  swift_getTupleTypeMetadata3();
  v40 = sub_1B7A98AC0();
  v41 = swift_getWitnessTable();
  *v257 = v22;
  *&v257[8] = v40;
  *&v257[16] = v23;
  *&v257[24] = v41;
  v42 = sub_1B7A98030();
  v43 = sub_1B7A976B0();
  v44 = swift_getWitnessTable();
  *v257 = v42;
  *&v257[8] = v43;
  v45 = MEMORY[0x1E697C270];
  *&v257[16] = v44;
  *&v257[24] = MEMORY[0x1E697C270];
  v46 = swift_getOpaqueTypeMetadata2();
  *v257 = v42;
  *&v257[8] = v43;
  *&v257[16] = v44;
  *&v257[24] = v45;
  v47 = swift_getOpaqueTypeConformance2();
  *v257 = v46;
  *&v257[8] = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  *v257 = v226.i64[1];
  *&v257[16] = v225.i64[1];
  *&v257[8] = v22;
  *&v257[24] = v23;
  v49 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788, &unk_1B7A9D6E0);
  v50 = sub_1B7A97B40();
  *v257 = v46;
  *&v257[8] = v47;
  v51 = swift_getOpaqueTypeConformance2();
  *v257 = v226.i64[1];
  *&v257[16] = v225.i64[1];
  *&v257[8] = v22;
  *&v257[24] = v23;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v222;
  v54 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
  v215 = v52;
  v245 = v52;
  v246 = v54;
  v55 = swift_getWitnessTable();
  v176 = v48;
  *v257 = v48;
  *&v257[8] = MEMORY[0x1E6981E70];
  *&v257[16] = v50;
  v174 = v51;
  v175 = v50;
  *&v257[24] = v51;
  *&v257[32] = MEMORY[0x1E6981E60];
  v258 = v55;
  v173 = v55;
  v56 = sub_1B7A979C0();
  v177 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v179 = &v171 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v178 = &v171 - v59;
  v60 = sub_1B7A97880();
  v192 = *(v60 - 8);
  v193 = v60;
  MEMORY[0x1EEE9AC00](v60);
  v191 = &v171 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = v56;
  v62 = sub_1B7A97B40();
  v202 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v207 = &v171 - v63;
  v203 = v22;
  v197 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v195 = &v171 - v65;
  v196 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v194 = &v171 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = v49;
  v199 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v198 = &v171 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v206 = &v171 - v71;
  v72 = swift_getAssociatedTypeWitness();
  v73 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v171 - v74;
  v76 = *(v224.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v171 - v78;
  v214 = v62;
  v80 = sub_1B7A97B40();
  v210 = *(v80 - 8);
  v211 = v80;
  MEMORY[0x1EEE9AC00](v80);
  v209 = &v171 - v81;
  v82 = v212;
  if (sub_1B7A9A930() != 1)
  {
    v104 = v205;
    v105 = v53;
    v106 = v213;
    v107 = &v82[*(v213 + 96)];
    v108 = *v107;
    if (v107[8] == 1)
    {
      v109 = v207;
      if ((v108 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v110 = v213;

      sub_1B7A9AA10();
      v111 = sub_1B7A97E70();
      sub_1B7A96D30();

      v112 = v191;
      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B795AE10(v108, 0);
      (*(v192 + 8))(v112, v193);
      v106 = v110;
      v53 = v105;
      v109 = v207;
      if (v257[0] != 1)
      {
        goto LABEL_11;
      }
    }

    v113 = &v82[*(v106 + 92)];
    v114 = *v113;
    v115 = *(v113 + 8);
    v116 = *(v113 + 24);
    v117 = *(v113 + 5);
    LODWORD(v113) = v113[48];
    v224 = v115;
    v217 = v116;
    if (v113 == 1)
    {
      sub_1B79EA1F4(v114, v115, *(&v115 + 1), v116, *(&v116 + 1), v117);
      v119 = v217;
      v120 = v224;
      if (v114)
      {
LABEL_9:
        v213 = v117;
        *&v257[8] = v120;
        *&v257[24] = v119;
        *v257 = v114;
        v258 = v117;
        *v121.i64 = MEMORY[0x1EEE9AC00](v118);
        *(&v171 - 10) = v53;
        v122 = v225;
        *(&v171 - 9) = v226;
        v224 = v121;
        v121.i64[0] = v219;
        v217 = v123;
        *&v123 = vdupq_laneq_s64(v122, 1).u64[0];
        *(&v123 + 1) = v201;
        *(&v171 - 5) = v123;
        *(&v171 - 7) = vzip1q_s64(v121, v122);
        *(&v171 - 3) = v82;
        *(&v171 - 2) = v257;
        MEMORY[0x1EEE9AC00](v124);
        *(&v171 - 8) = v53;
        *(&v171 - 7) = v125;
        *(&v171 - 5) = v126;
        *(&v171 - 2) = v127;
        *(&v171 - 2) = v128;
        *(&v171 - 1) = v82;
        v129 = v179;
        sub_1B7A979B0();
        v130 = v218;
        v131 = swift_getWitnessTable();
        v132 = v178;
        sub_1B7957EE0(v129, v130, v131);
        v226.i64[0] = *(v177 + 8);
        (v226.i64[0])(v129, v130);
        sub_1B7957EE0(v132, v130, v131);
        v91 = v215;
        sub_1B7959A28(v129, v104, v130, v215, v131);
        v233 = v91;
        v234 = v131;
        v133 = v202;
        v134 = v109;
        v135 = v214;
        v225.i64[0] = swift_getWitnessTable();
        v136 = swift_getWitnessTable();
        v231 = MEMORY[0x1E6981900];
        v232 = v136;
        v137 = v223.i64[0];
        v138 = swift_getWitnessTable();
        v103 = v209;
        sub_1B79B5878(v134, v135, v137, v225.i64[0], v138);

        (*(v133 + 8))(v134, v135);
        v102 = MEMORY[0x1E6981900];
        v139 = v226.i64[0];
        (v226.i64[0])(v179, v130);
        v139(v178, v130);
        goto LABEL_12;
      }
    }

    else
    {

      sub_1B7A9AA10();
      v140 = sub_1B7A97E70();
      sub_1B7A96D30();

      v53 = v105;
      v141 = v191;
      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B7A11BFC(v114, v224.i64[0], v224.i64[1], v217, *(&v217 + 1), v117, 0);
      v118 = (*(v192 + 8))(v141, v193);
      v120 = *&v257[8];
      v119 = *&v257[24];
      v114 = *v257;
      v117 = v258;
      if (*v257)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v142 = v225.i64[0];
    v143 = sub_1B7A98830();
    MEMORY[0x1EEE9AC00](v143);
    v144.i64[0] = v53;
    *&v145 = vdupq_laneq_s64(v226, 1).u64[0];
    *(&v145 + 1) = v219;
    *(&v171 - 4) = vzip1q_s64(v144, v226);
    *(&v171 - 3) = v145;
    v146 = v204;
    *(&v171 - 4) = v142;
    *(&v171 - 3) = v146;
    *(&v171 - 2) = v201;
    *(&v171 - 1) = v82;
    v147 = v185;
    sub_1B7A98960();
    v148 = v187;
    v149 = swift_getWitnessTable();
    v150 = v184;
    sub_1B7957EE0(v147, v148, v149);
    v151 = *(v186 + 8);
    v151(v147, v148);
    sub_1B7957EE0(v150, v148, v149);
    *v257 = sub_1B79F770C(v147, v148, v149);
    v152 = v221.i64[0];
    v153 = swift_getWitnessTable();
    v154 = v180;
    v155 = v152;
    v156 = MEMORY[0x1E6981900];
    sub_1B79B5878(v257, MEMORY[0x1E6981910], v155, MEMORY[0x1E6981900], v153);

    v151(v147, v148);
    v151(v150, v148);
    v243 = v156;
    v244 = v153;
    v157 = v223.i64[0];
    v158 = swift_getWitnessTable();
    v159 = v181;
    sub_1B7957EE0(v154, v157, v158);
    v160 = swift_getWitnessTable();
    v161 = v214;
    v91 = v215;
    v241 = v215;
    v242 = v160;
    v162 = swift_getWitnessTable();
    v103 = v209;
    sub_1B7959A28(v159, v161, v157, v162, v158);
    v163 = *(v182 + 8);
    v163(v159, v157);
    v163(v154, v157);
    v102 = MEMORY[0x1E6981900];
    goto LABEL_12;
  }

  sub_1B7A9A920();
  v83 = sub_1B7A9A9E0();
  v171 = v79;
  v172 = v76;
  (*(v76 + 16))(v79);
  v83(v257, 0);
  (*(v73 + 8))(v75, v72);
  v84 = v194;
  (*&v82[*(v213 + 88)])(v79);
  v85 = v195;
  sub_1B7A9AC60();
  v86 = v198;
  v87 = v217;
  v88 = v203;
  sub_1B79751D0(v85, 1, v217, v203, v204);
  (*(v197 + 8))(v85, v88);
  (*(v196 + 8))(v84, v87);
  v90 = v205;
  v89 = v206;
  v91 = v215;
  sub_1B7957EE0(v86, v205, v215);
  v226.i64[0] = *(v199 + 8);
  (v226.i64[0])(v86, v90);
  sub_1B7957EE0(v89, v90, v91);
  v92 = v218;
  v93 = swift_getWitnessTable();
  v94 = v207;
  sub_1B79B5878(v86, v90, v92, v91, v93);
  v229 = v91;
  v230 = v93;
  v95 = v202;
  v96 = v214;
  v225.i64[0] = swift_getWitnessTable();
  v97 = swift_getWitnessTable();
  v227 = MEMORY[0x1E6981900];
  v228 = v97;
  v98 = v223.i64[0];
  v99 = swift_getWitnessTable();
  v100 = v209;
  sub_1B79B5878(v94, v96, v98, v225.i64[0], v99);
  (*(v95 + 8))(v94, v96);
  v101 = v226.i64[0];
  (v226.i64[0])(v86, v90);
  v101(v206, v90);
  (*(v172 + 8))(v171, v224.i64[0]);
  v102 = MEMORY[0x1E6981900];
  v103 = v100;
LABEL_12:
  v164 = swift_getWitnessTable();
  v239 = v91;
  v240 = v164;
  v165 = swift_getWitnessTable();
  v166 = swift_getWitnessTable();
  v237 = v102;
  v238 = v166;
  v167 = swift_getWitnessTable();
  v235 = v165;
  v236 = v167;
  v168 = v211;
  v169 = swift_getWitnessTable();
  sub_1B7957EE0(v103, v168, v169);
  return (*(v210 + 8))(v103, v168);
}

uint64_t sub_1B7A0B968@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v86 = a7;
  v87 = a8;
  v91 = a2;
  v92 = a9;
  v85 = a1;
  v14 = sub_1B7A976B0();
  v89 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v88 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a10;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = sub_1B7A98870();
  MEMORY[0x1EEE9AC00](v82);
  v78 = v63 - v17;
  sub_1B7A9AB60();
  v80 = sub_1B7A98870();
  v18 = sub_1B7A9AB60();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v83 = v63 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v93 = a3;
  v94 = AssociatedTypeWitness;
  v21 = a4;
  v95 = a4;
  v96 = a6;
  v22 = a6;
  v97 = AssociatedConformanceWitness;
  sub_1B7A988E0();
  swift_getTupleTypeMetadata3();
  v23 = sub_1B7A98AC0();
  WitnessTable = swift_getWitnessTable();
  v79 = AssociatedTypeWitness;
  v93 = AssociatedTypeWitness;
  v94 = v23;
  v74 = v23;
  v81 = AssociatedConformanceWitness;
  v95 = AssociatedConformanceWitness;
  v96 = WitnessTable;
  v72 = WitnessTable;
  v25 = sub_1B7A98030();
  v75 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v71 = v63 - v26;
  v27 = swift_getWitnessTable();
  v93 = v25;
  v94 = v14;
  v28 = MEMORY[0x1E697C270];
  v95 = v27;
  v96 = MEMORY[0x1E697C270];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v68 = v63 - v30;
  v77 = v25;
  v93 = v25;
  v94 = v14;
  v90 = v14;
  v66 = v27;
  v95 = v27;
  v96 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = OpaqueTypeMetadata2;
  v93 = OpaqueTypeMetadata2;
  v94 = OpaqueTypeConformance2;
  v67 = OpaqueTypeConformance2;
  v70 = swift_getOpaqueTypeMetadata2();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v64 = v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v65 = v63 - v34;
  sub_1B7A9A760();
  v63[1] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v93 = a3;
  v94 = v21;
  v35 = v21;
  v95 = a5;
  v96 = v22;
  v63[0] = a5;
  v36 = v22;
  v38 = v86;
  v37 = v87;
  v97 = v86;
  v98 = v87;
  v39 = a3;
  v40 = v84;
  v99 = v84;
  type metadata accessor for _FlowStackTabViewBody(0, &v93);
  v41 = v85;
  sub_1B7A98830();
  v42 = v83;
  sub_1B7A98880();
  v43 = (*(*(v80 - 8) + 56))(v42, 0, 1);
  MEMORY[0x1EEE9AC00](v43);
  v63[-10] = v39;
  v63[-9] = v35;
  v63[-8] = v63[0];
  v63[-7] = v36;
  v63[-6] = v38;
  v63[-5] = v37;
  v44 = v91;
  v63[-4] = v40;
  v63[-3] = v44;
  v63[-2] = v41;
  v45 = v71;
  sub_1B7A98010();
  v46 = v88;
  sub_1B7A976A0();
  v47 = v68;
  v48 = v77;
  v49 = v90;
  sub_1B7A98510();
  (*(v89 + 8))(v46, v49);
  v50 = (*(v75 + 8))(v45, v48);
  v51 = (*v44)(v50);
  v53 = v52;
  LOBYTE(v44) = v54;
  v55 = v64;
  v56 = v76;
  v57 = v67;
  sub_1B7A98200();
  sub_1B795A450(v51, v53, v44 & 1);

  (*(v73 + 8))(v47, v56);
  v93 = v56;
  v94 = v57;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v65;
  v60 = v70;
  sub_1B7957EE0(v55, v70, v58);
  v61 = *(v69 + 8);
  v61(v55, v60);
  sub_1B7957EE0(v59, v60, v58);
  v61(v59, v60);
}

uint64_t sub_1B7A0C1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v51 = a2;
  v60 = a9;
  v61 = a1;
  v68 = a3;
  v69 = a4;
  v56 = a5;
  v70 = a5;
  v71 = a6;
  v59 = a7;
  v72 = a7;
  v73 = a8;
  v57 = a8;
  v74 = a10;
  v47 = type metadata accessor for _FlowStackTabViewBody(0, &v68);
  v13 = *(v47 - 8);
  v49 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v43 - v14;
  v15 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a10;
  v19 = *(a10 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = a3;
  v69 = AssociatedTypeWitness;
  v45 = AssociatedTypeWitness;
  v70 = a4;
  v71 = a6;
  v58 = a6;
  v72 = AssociatedConformanceWitness;
  v50 = sub_1B7A988E0();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v52 = &v43 - v24;
  sub_1B7A9A760();
  v54 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v43 = (*(v61 + 16))(isCurrentExecutor);
  v26 = v51;
  (*(v15 + 16))(v18, v51, a3);
  v27 = v44;
  v28 = v47;
  (*(v13 + 16))(v44, v26, v47);
  v29 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = a3;
  *(v30 + 3) = a4;
  v31 = v58;
  v32 = v59;
  *(v30 + 4) = v56;
  *(v30 + 5) = v31;
  v33 = v57;
  *(v30 + 6) = v32;
  *(v30 + 7) = v33;
  *(v30 + 8) = v55;
  (*(v13 + 32))(&v30[v29], v27, v28);
  v34 = v53;
  sub_1B7A988D0();
  v67[1] = v32;
  v35 = v50;
  WitnessTable = swift_getWitnessTable();
  v37 = v52;
  sub_1B7957EE0(v34, v35, WitnessTable);
  v38 = v48;
  v39 = *(v48 + 8);
  v40 = v39(v34, v35);
  v41 = (*(v61 + 32))(v40);
  v67[0] = v43;
  v68 = v67;
  (*(v38 + 16))(v34, v37, v35);
  v66 = v41;
  v69 = v34;
  v70 = &v66;

  v65[0] = MEMORY[0x1E6981910];
  v65[1] = v35;
  v65[2] = MEMORY[0x1E6981910];
  v62 = MEMORY[0x1E6981900];
  v63 = WitnessTable;
  v64 = MEMORY[0x1E6981900];
  sub_1B7959BAC(&v68, 3uLL, v65);

  v39(v37, v35);

  v39(v34, v35);
}

uint64_t sub_1B7A0C770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v32 = a8;
  v33 = a2;
  v36 = a9;
  v37 = a7;
  v35 = a1;
  v29 = a10;
  v30 = a5;
  v34 = *(a10 + 8);
  v28[1] = swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v28 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v28 - v21;
  sub_1B7A9A760();
  v28[0] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v38[0] = a3;
  v38[1] = a4;
  v38[2] = v30;
  v38[3] = a6;
  v23 = v37;
  v38[4] = v37;
  v38[5] = v32;
  v38[6] = v29;
  v24 = type metadata accessor for _FlowStackTabViewBody(0, v38);
  v25 = *(v33 + *(v24 + 80));
  swift_checkMetadataState();
  sub_1B7A9AC60();
  v25(v15);
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  sub_1B7957EE0(v19, a4, v23);
  v26 = *(v16 + 8);
  v26(v19, a4);
  sub_1B7957EE0(v22, a4, v23);
  v26(v22, a4);
}

uint64_t sub_1B7A0CA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)()@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v91 = a2;
  v93 = a1;
  v102 = a7;
  v84 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v82 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v12;
  v13 = *(v12 + 8);
  v85 = *(*(*(v14 + 8) + 8) + 8);
  v89 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedTypeWitness();
  v79 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v112 = a3;
  v113 = v17;
  v114 = a6;
  v115 = AssociatedConformanceWitness;
  v101 = AssociatedConformanceWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v83 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v81 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v77 - v22;
  v100 = swift_checkMetadataState();
  v88 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v87 = &v77 - v23;
  v78 = sub_1B7A9AB60();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v25 = &v77 - v24;
  v104 = AssociatedTypeWitness;
  v103 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v26);
  v86 = &v77 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788, &unk_1B7A9D6E0);
  v99 = OpaqueTypeMetadata2;
  v94 = v28;
  v98 = sub_1B7A97B40();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v77 - v29;
  sub_1B7A9A760();
  v95 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v31 = v89;
  v32 = v91;
  *(&v77 - 8) = v89;
  *(&v77 - 7) = v32;
  v90 = a3;
  *(&v77 - 6) = a3;
  *(&v77 - 5) = a4;
  v33 = v31;
  *(&v77 - 4) = a5;
  *(&v77 - 3) = a6;
  v105 = a6;
  v34 = a5;
  v35 = v92;
  v36 = v93;
  *(&v77 - 2) = v92;
  *(&v77 - 1) = v36;
  sub_1B7A9A5B0();
  v38 = v103;
  v37 = v104;
  if ((*(v103 + 48))(v25, 1, v104) == 1)
  {
    (*(v77 + 8))(v25, v78);
    v112 = 0;
    v113 = 0xE000000000000000;
    sub_1B7A9AC50();
    v108 = v112;
    v109 = v113;
    MEMORY[0x1B8CAB750](0x6F697463656C6553, 0xEB0000000060206ELL);
    v112 = v33;
    v113 = v32;
    v39 = v90;
    v114 = v90;
    v115 = a4;
    v116 = v34;
    v40 = v105;
    v117 = v105;
    v118 = v35;
    type metadata accessor for _FlowStackTabViewBody(0, &v112);
    v41 = v100;
    v42 = sub_1B7A98870();
    v43 = v87;
    MEMORY[0x1B8CA9A40](v42);
    sub_1B7A9AE60();
    (*(v88 + 8))(v43, v41);
    v44 = MEMORY[0x1B8CAB750](0xD000000000000015, 0x80000001B7AC68E0);
    v46 = v108;
    v45 = v109;
    v112 = v108;
    v113 = v109;
    sub_1B7999DD8(v44, v47, v48);

    v49 = sub_1B7A98080();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = swift_allocObject();
    *(v56 + 16) = v46;
    *(v56 + 24) = v45;
    v112 = v49;
    v113 = v51;
    LOBYTE(v114) = v53 & 1;
    v115 = v55;
    v116 = sub_1B797D598;
    v117 = v56;
    v108 = v39;
    v109 = v41;
    v57 = v101;
    v110 = v40;
    v111 = v101;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v59 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    v60 = v96;
    sub_1B7959A28(&v112, v99, v94, OpaqueTypeConformance2, v59);
    sub_1B795A450(v112, v113, v114);
  }

  else
  {
    v61 = v86;
    (*(v38 + 32))(v86, v25, v37);
    v112 = v33;
    v113 = v32;
    v39 = v90;
    v114 = v90;
    v115 = a4;
    v116 = v34;
    v62 = v105;
    v117 = v105;
    v118 = v35;
    v63 = type metadata accessor for _FlowStackTabViewBody(0, &v112);
    v64 = v82;
    (*(v36 + *(v63 + 88)))(v61);
    v65 = v87;
    sub_1B7A9AC60();
    v66 = v81;
    v41 = v100;
    v57 = v101;
    sub_1B79751D0(v65, 1, v39, v100, v62);
    (*(v88 + 8))(v65, v41);
    (*(v84 + 8))(v64, v39);
    v112 = v39;
    v113 = v41;
    v114 = v62;
    v115 = v57;
    v67 = swift_getOpaqueTypeConformance2();
    v68 = v80;
    v69 = v99;
    sub_1B7957EE0(v66, v99, v67);
    v70 = *(v83 + 8);
    v70(v66, v69);
    sub_1B7957EE0(v68, v69, v67);
    v71 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    v60 = v96;
    sub_1B79B5878(v66, v69, v94, v67, v71);
    v70(v66, v69);
    v70(v68, v69);
    (*(v103 + 8))(v86, v104);
    v40 = v105;
  }

  v112 = v39;
  v113 = v41;
  v114 = v40;
  v115 = v57;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
  v106 = v72;
  v107 = v73;
  v74 = v98;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v60, v74, WitnessTable);
  (*(v97 + 8))(v60, v74);
}

uint64_t sub_1B7A0D504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a7;
  v27 = a8;
  v22 = a4;
  v28 = a2;
  v20 = a1;
  v23 = a9;
  v24 = a5;
  v25 = a6;
  v21 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_checkMetadataState();
  sub_1B7A9AC60();
  v29[0] = v21;
  v29[1] = v22;
  v29[2] = v24;
  v29[3] = v25;
  v29[4] = v26;
  v29[5] = v27;
  v29[6] = v23;
  type metadata accessor for _FlowStackTabViewBody(0, v29);
  v16 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](v16);
  swift_getAssociatedConformanceWitness();
  v17 = sub_1B7A9A470();
  v18 = *(v10 + 8);
  v18(v12, AssociatedTypeWitness);
  v18(v15, AssociatedTypeWitness);

  return v17 & 1;
}

uint64_t sub_1B7A0D788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v77 = a1;
  v86 = a9;
  v100 = a2;
  v101 = a3;
  v102 = a4;
  v103 = a5;
  v104 = a6;
  v105 = a7;
  v106 = a8;
  v79 = type metadata accessor for _FlowStackTabViewBody(0, &v100);
  v78 = *(v79 - 8);
  v75 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48500, &unk_1B7AA2C68);
  v83 = a5;
  v70 = *(*(*(a5 + 8) + 8) + 8);
  v80 = a2;
  swift_getAssociatedTypeWitness();
  v18 = sub_1B7A9A6E0();
  v88 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = a4;
  v81 = a3;
  v20 = sub_1B7A97E90();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v97 = AssociatedConformanceWitness;
  v98 = a7;
  v84 = a7;
  v99 = a6;
  WitnessTable = swift_getWitnessTable();
  v72 = v20;
  v100 = v20;
  v101 = WitnessTable;
  v65 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = MEMORY[0x1E69E6338];
  v25 = swift_getWitnessTable();
  v100 = v18;
  v101 = AssociatedTypeWitness;
  v102 = OpaqueTypeMetadata2;
  v103 = v25;
  v104 = AssociatedConformanceWitness;
  v26 = sub_1B7A988E0();
  v100 = MEMORY[0x1E6981910];
  v101 = v26;
  v102 = MEMORY[0x1E6981E70];
  v103 = AssociatedTypeWitness;
  v85 = AssociatedTypeWitness;
  v27 = sub_1B7A97090();
  v63 = v26;
  v64 = v27;
  v28 = sub_1B7A97B40();
  v29 = sub_1B797EC34(&qword_1EBA48508, &qword_1EBA48500, &unk_1B7AA2C68, v24);
  v87 = v17;
  v100 = v17;
  v101 = MEMORY[0x1E69E6530];
  v71 = v28;
  v102 = v28;
  v103 = v29;
  v69 = v29;
  v104 = MEMORY[0x1E69E6540];
  v74 = sub_1B7A988E0();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v67 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v68 = &v61 - v32;
  sub_1B7A9A760();
  v66 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v96 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v34 = v80;
  v35 = v81;
  *(&v61 - 8) = v80;
  *(&v61 - 7) = v35;
  v36 = v82;
  v37 = v83;
  *(&v61 - 6) = v82;
  *(&v61 - 5) = v37;
  *(&v61 - 4) = a6;
  v62 = a6;
  v38 = v84;
  v39 = v88;
  *(&v61 - 3) = v84;
  v59 = v39;
  v40 = v77;
  sub_1B7A9A5D0();
  v96 = v100;
  v41 = v78;
  v42 = v76;
  v43 = v79;
  (*(v78 + 16))(v76, v40, v79);
  v44 = (*(v41 + 80) + 72) & ~*(v41 + 80);
  v45 = swift_allocObject();
  *(v45 + 2) = v34;
  *(v45 + 3) = v35;
  *(v45 + 4) = v36;
  *(v45 + 5) = v37;
  *(v45 + 6) = v62;
  *(v45 + 7) = v38;
  *(v45 + 8) = v88;
  (*(v41 + 32))(&v45[v44], v42, v43);
  v100 = v72;
  v101 = v65;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = swift_getWitnessTable();
  v92 = MEMORY[0x1E6981900];
  v93 = v46;
  v94 = MEMORY[0x1E6981E60];
  v47 = swift_getWitnessTable();
  v90 = v46;
  v91 = v47;
  v48 = swift_getWitnessTable();
  v51 = sub_1B7A11EA0(v48, v49, v50);
  v59 = v48;
  v60 = v51;
  v52 = v67;
  sub_1B7A988C0();
  v89 = v48;
  v53 = v74;
  swift_getWitnessTable();
  v54 = v73;
  v55 = *(v73 + 16);
  v56 = v68;
  v55(v68, v52, v53);
  v57 = *(v54 + 8);
  v57(v52, v53);
  v55(v86, v56, v53);
  v57(v56, v53);
}

uint64_t sub_1B7A0DEF4(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a9 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10(v20, AssociatedTypeWitness, a9);
  sub_1B7A12418(v20, &v22);
  if (v23)
  {
    sub_1B7957888(v20, &qword_1EBA48528, &qword_1B7AA2C80);
    sub_1B795C1E4(&v22, v19);
    sub_1B795C1E4(v19, &v22);
  }

  else
  {
    sub_1B7957888(&v22, &qword_1EBA48528, &qword_1B7AA2C80);
    if (qword_1EBA45B68 != -1)
    {
      swift_once();
    }

    sub_1B7957888(v20, &qword_1EBA48528, &qword_1B7AA2C80);
    sub_1B7A12488(qword_1EBA483B0, &v22);
  }

  v12 = *a1;
  if (sub_1B7A0E250(&v22, *a1))
  {
    sub_1B7A124C0(&v22);
  }

  else
  {
    sub_1B7A12488(&v22, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1B7987D14(0, *(v12 + 2) + 1, 1, v12);
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B7987D14((v14 > 1), v15 + 1, 1, v12);
    }

    sub_1B7A124C0(&v22);
    *(v12 + 2) = v15 + 1;
    v16 = &v12[40 * v15];
    v17 = v21;
    v18 = v20[1];
    *(v16 + 2) = v20[0];
    *(v16 + 3) = v18;
    *(v16 + 8) = v17;

    *a1 = v12;
  }

  return result;
}

uint64_t sub_1B7A0E170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B7A12418(a1, &v5);
  if (v6)
  {
    sub_1B7957888(a1, &qword_1EBA48528, &qword_1B7AA2C80);
    sub_1B795C1E4(&v5, v7);
    return sub_1B795C1E4(v7, a2);
  }

  else
  {
    sub_1B7957888(&v5, &qword_1EBA48528, &qword_1B7AA2C80);
    if (qword_1EBA45B68 != -1)
    {
      swift_once();
    }

    sub_1B7957888(a1, &qword_1EBA48528, &qword_1B7AA2C80);
    return sub_1B7A12488(qword_1EBA483B0, a2);
  }
}

BOOL sub_1B7A0E250(void *a1, uint64_t a2)
{
  v16 = a1;
  v2 = a2 + 32;
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v17 = v2 + 40;
    sub_1B7A12488(v2, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(AssociatedTypeWitness - 8);
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v7 = &v15 - v6;
    sub_1B7A9AC60();
    swift_getAssociatedConformanceWitness();
    v8 = sub_1B7A9A400();
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v9 = swift_getAssociatedTypeWitness();
    v10 = *(v9 - 8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = &v15 - v11;
    sub_1B7A9AC60();
    swift_getAssociatedConformanceWitness();
    v13 = sub_1B7A9A400();
    (*(v10 + 8))(v12, v9);
    sub_1B7A124C0(v18);
    v2 = v17;
  }

  while (v8 != v13);
  return v3 != 0;
}

uint64_t sub_1B7A0E4E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v135 = a8;
  v138 = a3;
  v132 = a2;
  v131 = a1;
  v130 = a9;
  v139 = a10;
  v120 = *(*(*(a6 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v15 = sub_1B7A9A6E0();
  v16 = *(a10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v118 = v16;
  v18 = sub_1B7A97E90();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v163 = a8;
  v164 = a7;
  v137 = v18;
  WitnessTable = swift_getWitnessTable();
  v119 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v112 = swift_getWitnessTable();
  v116 = AssociatedConformanceWitness;
  v159 = AssociatedConformanceWitness;
  v19 = sub_1B7A988E0();
  v155 = MEMORY[0x1E6981910];
  v156 = v19;
  v157 = MEMORY[0x1E6981E70];
  v158 = AssociatedTypeWitness;
  v129 = AssociatedTypeWitness;
  v20 = sub_1B7A97090();
  v117 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v115 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v114 = &v105 - v23;
  v24 = v138;
  v155 = v138;
  v156 = a4;
  v133 = a4;
  v25 = a7;
  v134 = a5;
  v157 = a5;
  v158 = a6;
  v26 = v135;
  v27 = a6;
  v159 = v25;
  v160 = v135;
  v161 = v139;
  v108 = type metadata accessor for _FlowStackTabViewBody(0, &v155);
  v107 = *(v108 - 8);
  v105 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v105 - v28;
  v111 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v110 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v109 = &v105 - v32;
  v128 = v20;
  v126 = sub_1B7A97B40();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v105 - v33;
  v34 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  v123 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v127 = v19;
  v38 = v138;
  v39 = (*(v34 + 16))(v37, v132, v138);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v133;
  *(&v105 - 8) = v38;
  *(&v105 - 7) = v40;
  *(&v105 - 6) = v134;
  *(&v105 - 5) = v27;
  v121 = v27;
  v122 = v25;
  *(&v105 - 4) = v25;
  *(&v105 - 3) = v26;
  v41 = v131;
  v103 = v139;
  v104 = v131;
  v120 = sub_1B7A9A5C0();
  if (qword_1EBA45B68 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v42 = swift_getAssociatedTypeWitness();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v105 - v44;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v46 = sub_1B7A9A400();
  (*(v43 + 8))(v45, v42);
  __swift_project_boxed_opaque_existential_1(qword_1EBA483B0, qword_1EBA483C8);
  v47 = swift_getAssociatedTypeWitness();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v105 - v49;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v51 = sub_1B7A9A400();
  v52 = (*(v48 + 8))(v50, v47);
  v53 = MEMORY[0x1E6981E60];
  if (v46 == v51)
  {
    v144 = v120;
    v54 = v107;
    v55 = v106;
    v56 = v108;
    (*(v107 + 16))(v106, v132, v108);
    v57 = (*(v54 + 80) + 72) & ~*(v54 + 80);
    v58 = swift_allocObject();
    v59 = v133;
    *(v58 + 2) = v138;
    *(v58 + 3) = v59;
    v60 = v121;
    *(v58 + 4) = v134;
    *(v58 + 5) = v60;
    v61 = v135;
    *(v58 + 6) = v122;
    *(v58 + 7) = v61;
    *(v58 + 8) = v139;
    (*(v54 + 32))(&v58[v57], v55, v56);
    v155 = v137;
    v156 = WitnessTable;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v103 = OpaqueTypeConformance2;
    v104 = v118;
    v63 = v110;
    v64 = v129;
    sub_1B7A988C0();
    v143 = OpaqueTypeConformance2;
    v65 = v127;
    v66 = swift_getWitnessTable();
    v67 = v111;
    v68 = *(v111 + 16);
    v69 = v109;
    v68(v109, v63, v65);
    v70 = *(v67 + 8);
    v70(v63, v65);
    v68(v63, v69, v65);
    v140 = MEMORY[0x1E6981900];
    v141 = v66;
    v142 = v53;
    v71 = v128;
    v72 = swift_getWitnessTable();
    v73 = v124;
    sub_1B7A0F7BC(v63, v64, v65, v71, v66, v72);
    v70(v63, v65);
    v70(v69, v65);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v52);
    v74 = v133;
    *(&v105 - 10) = v138;
    *(&v105 - 9) = v74;
    v75 = v134;
    v76 = v121;
    *(&v105 - 8) = v134;
    *(&v105 - 7) = v76;
    v77 = v135;
    *(&v105 - 6) = v122;
    *(&v105 - 5) = v77;
    v78 = v120;
    *(&v105 - 4) = v139;
    *(&v105 - 3) = v78;
    MEMORY[0x1EEE9AC00](v75);
    *(&v105 - 10) = v80;
    *(&v105 - 9) = v79;
    *(&v105 - 8) = v81;
    *(&v105 - 7) = v82;
    *(&v105 - 6) = v84;
    *(&v105 - 5) = v83;
    *(&v105 - 4) = v86;
    *(&v105 - 3) = v85;
    v155 = v137;
    v156 = WitnessTable;
    v154 = swift_getOpaqueTypeConformance2();
    v87 = v127;
    v88 = swift_getWitnessTable();
    v103 = v88;
    v104 = v116;
    v89 = v115;
    v90 = v129;
    v91 = MEMORY[0x1E6981900];
    sub_1B7A97080();

    v151 = v91;
    v152 = v88;
    v153 = MEMORY[0x1E6981E60];
    v92 = v128;
    v139 = swift_getWitnessTable();
    v93 = v117;
    v94 = *(v117 + 16);
    v95 = v114;
    v94(v114, v89, v92);
    v96 = *(v93 + 8);
    v96(v89, v92);
    v94(v89, v95, v92);
    v73 = v124;
    sub_1B7A10AD0(v89, v90, v87, v92, v88, v139);
    v97 = v89;
    v53 = MEMORY[0x1E6981E60];
    v96(v97, v92);
    v96(v95, v92);
  }

  v155 = v137;
  v156 = WitnessTable;
  v150 = swift_getOpaqueTypeConformance2();
  v98 = swift_getWitnessTable();
  v147 = MEMORY[0x1E6981900];
  v148 = v98;
  v149 = v53;
  v99 = swift_getWitnessTable();
  v145 = v98;
  v146 = v99;
  v100 = v126;
  swift_getWitnessTable();
  v101 = v125;
  (*(v125 + 16))(v130, v73, v100);
  (*(v101 + 8))(v73, v100);
}

BOOL sub_1B7A0F3DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B7A9A760();
  v23 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a9 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10(v25, AssociatedTypeWitness, a9);
  sub_1B7A12418(v25, &v26);
  if (v27)
  {
    sub_1B7957888(v25, &qword_1EBA48528, &qword_1B7AA2C80);
    sub_1B795C1E4(&v26, v24);
    sub_1B795C1E4(v24, &v26);
  }

  else
  {
    sub_1B7957888(&v26, &qword_1EBA48528, &qword_1B7AA2C80);
    if (qword_1EBA45B68 != -1)
    {
      swift_once();
    }

    sub_1B7957888(v25, &qword_1EBA48528, &qword_1B7AA2C80);
    sub_1B7A12488(qword_1EBA483B0, &v26);
  }

  __swift_project_boxed_opaque_existential_1(&v26, v27);
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v16 = sub_1B7A9A400();
  (*(v13 + 8))(v15, v12);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v21 = sub_1B7A9A400();
  (*(v18 + 8))(v20, v17);
  sub_1B7A124C0(&v26);

  return v16 == v21;
}

uint64_t sub_1B7A0F7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1B7A97B10();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  (*(*(a3 - 8) + 16))(&v16 - v13, a1, a3, v12);
  swift_storeEnumTagMultiPayload();
  return MEMORY[0x1B8CA8D60](v14, a3, a4, a5, a6);
}

uint64_t sub_1B7A0F8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v56 = a2;
  v65 = a1;
  v66 = a9;
  v72 = a3;
  v73 = a4;
  v74 = a5;
  v75 = a6;
  v76 = a7;
  v77 = a8;
  v78 = a10;
  v55 = type metadata accessor for _FlowStackTabViewBody(0, &v72);
  v53 = *(v55 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v17 = &v46 - v16;
  v62 = a6;
  v58 = a3;
  swift_getAssociatedTypeWitness();
  v18 = sub_1B7A9A6E0();
  v59 = a10;
  v19 = *(a10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = a4;
  v61 = a5;
  v21 = sub_1B7A97E90();
  v52 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = AssociatedConformanceWitness;
  v70 = a8;
  v63 = a7;
  v64 = a8;
  v71 = a7;
  WitnessTable = swift_getWitnessTable();
  v50 = v21;
  v72 = v21;
  v73 = WitnessTable;
  v47 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = swift_getWitnessTable();
  v57 = v18;
  v72 = v18;
  v73 = AssociatedTypeWitness;
  v54 = AssociatedTypeWitness;
  v49 = OpaqueTypeMetadata2;
  v74 = OpaqueTypeMetadata2;
  v75 = v25;
  v48 = v25;
  v76 = AssociatedConformanceWitness;
  v26 = sub_1B7A988E0();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v46 - v31;
  sub_1B7A9A760();
  v46 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v68 = v65;
  v33 = v53;
  v34 = v55;
  (*(v53 + 16))(v17, v56, v55);
  v35 = (*(v33 + 80) + 72) & ~*(v33 + 80);
  v36 = swift_allocObject();
  v37 = v60;
  v38 = v61;
  *(v36 + 2) = v58;
  *(v36 + 3) = v37;
  v39 = v62;
  v40 = v63;
  *(v36 + 4) = v38;
  *(v36 + 5) = v39;
  v41 = v64;
  *(v36 + 6) = v40;
  *(v36 + 7) = v41;
  *(v36 + 8) = v59;
  (*(v33 + 32))(&v36[v35], v17, v34);

  v72 = v50;
  v73 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B7A988C0();
  v67 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v42 = *(v27 + 16);
  v42(v32, v29, v26);
  v43 = *(v27 + 8);
  v43(v29, v26);
  v42(v66, v32, v26);
  v43(v32, v26);
}

uint64_t sub_1B7A0FDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v79 = a2;
  v82 = a1;
  v83 = a9;
  v75 = a13;
  v73 = a12;
  v61 = sub_1B7A97880();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48518, &qword_1B7AA2C78);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v65 = a10;
  v21 = *(a10 + 8);
  v66 = a6;
  v76 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v77 = a4;
  v78 = a5;
  v23 = sub_1B7A97E90();
  v80 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v85 = &v59 - v24;
  v84 = v21;
  v67 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v93 = AssociatedConformanceWitness;
  v94 = a8;
  v25 = a8;
  v26 = a7;
  v95 = a7;
  WitnessTable = swift_getWitnessTable();
  v81 = v23;
  v86 = v23;
  v87 = WitnessTable;
  v71 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v69 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v70 = &v59 - v30;
  sub_1B7A9A760();
  v68 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = swift_checkMetadataState();
  v32 = v82;
  sub_1B7A9AC60();
  v33 = v65;
  v34 = *(v65 + 24);
  v62 = v31;
  v35 = v34(v31, v65);
  v63 = &v59;
  MEMORY[0x1EEE9AC00](v35);
  v36 = v76;
  v37 = v77;
  *(&v59 - 10) = v76;
  *(&v59 - 9) = v37;
  v38 = v78;
  v39 = v79;
  v40 = v66;
  *(&v59 - 8) = v78;
  *(&v59 - 7) = v40;
  *(&v59 - 6) = v26;
  *(&v59 - 5) = v25;
  MEMORY[0x1EEE9AC00](v41);
  *(&v59 - 10) = v36;
  *(&v59 - 9) = v37;
  *(&v59 - 8) = v38;
  *(&v59 - 7) = v40;
  *(&v59 - 6) = v26;
  *(&v59 - 5) = v25;
  v57 = v25;
  v58 = v26;
  v55 = v37;
  v56 = AssociatedConformanceWitness;
  sub_1B7A97E80();
  v86 = v36;
  v87 = v37;
  v88 = v38;
  v89 = v40;
  v90 = v26;
  v91 = v25;
  v92 = v33;
  v42 = v39 + *(type metadata accessor for _FlowStackTabViewBody(0, &v86) + 100);
  v43 = *v42;
  LOBYTE(v36) = *(v42 + 8);

  if ((v36 & 1) == 0)
  {
    sub_1B7A9AA10();
    v44 = sub_1B7A97E70();
    sub_1B7A96D30();

    v45 = v59;
    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v43);
    (*(v60 + 8))(v45, v61);
    v43 = v86;
  }

  if (v43)
  {
    sub_1B7A4D1D0(v32, v62, v84);
  }

  v46 = v69;
  v47 = v81;
  v48 = v85;
  sub_1B7A97070();

  (*(v80 + 8))(v48, v47);
  v49 = v72;
  v50 = *(v72 + 16);
  v51 = v70;
  v52 = OpaqueTypeMetadata2;
  v50(v70, v46, OpaqueTypeMetadata2);
  v53 = *(v49 + 8);
  v53(v46, v52);
  v50(v83, v51, v52);
  v53(v51, v52);
}

uint64_t sub_1B7A104F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v25 = a6;
  v26 = a7;
  v24 = a4;
  v27 = a1;
  v28 = a2;
  v29 = a9;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - v18;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30[0] = a3;
  v30[1] = v24;
  v30[2] = a5;
  v30[3] = v25;
  v30[4] = v26;
  v30[5] = a8;
  v30[6] = a10;
  v20 = type metadata accessor for _FlowStackTabViewBody(0, v30);
  (*(v27 + *(v20 + 88)))(v28);
  sub_1B7957EE0(v16, a5, a8);
  v21 = *(v14 + 8);
  v21(v16, a5);
  sub_1B7957EE0(v19, a5, a8);
  v21(v19, a5);
}

uint64_t sub_1B7A106E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v33 = a8;
  v34 = a1;
  v37 = a9;
  v38 = a7;
  v36 = a2;
  v30 = a10;
  v31 = a5;
  v35 = *(a10 + 8);
  v29[1] = swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = v29 - v15;
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v29 - v22;
  sub_1B7A9A760();
  v29[0] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v39[0] = a3;
  v39[1] = a4;
  v39[2] = v31;
  v39[3] = a6;
  v24 = v38;
  v39[4] = v38;
  v39[5] = v33;
  v39[6] = v30;
  v25 = type metadata accessor for _FlowStackTabViewBody(0, v39);
  v26 = *(v34 + *(v25 + 80));
  swift_checkMetadataState();
  sub_1B7A9AC60();
  v26(v16);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  sub_1B7957EE0(v20, a4, v24);
  v27 = *(v17 + 8);
  v27(v20, a4);
  sub_1B7957EE0(v23, a4, v24);
  v27(v23, a4);
}

uint64_t sub_1B7A109C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a7;
  v22[5] = a8;
  v22[6] = a10;
  v16 = type metadata accessor for _FlowStackTabViewBody(0, v22);
  v17 = (*(a1 + *(v16 + 84)))(a2);

  *a9 = v17;
  return result;
}

uint64_t sub_1B7A10AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1B7A97B10();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  (*(*(a4 - 8) + 16))(&v16 - v13, a1, a4, v12);
  swift_storeEnumTagMultiPayload();
  return MEMORY[0x1B8CA8D60](v14, a3, a4, a5, a6);
}

uint64_t sub_1B7A10BD4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B7A9AE80();
  }
}

uint64_t sub_1B7A10C04()
{
  sub_1B7A9AF80();
  sub_1B7A9A500();
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7A10C58()
{
  sub_1B7A9AF80();
  sub_1B7A9A500();
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7A10CA0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1B7A10CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = &type metadata for _TabSection.EmptySection;
  v4[4] = sub_1B7A123C4(a1, a2, a3);
  v4[0] = 0x7974706D65;
  v4[1] = 0xE500000000000000;
  return sub_1B7A0E170(v4, qword_1EBA483B0);
}

uint64_t sub_1B7A10D00@<X0>(uint64_t *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v9 - v5;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v7 = sub_1B7A9A400();
  result = (*(v4 + 8))(v6, AssociatedTypeWitness);
  *a1 = v7;
  return result;
}

BOOL sub_1B7A10E40(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v14 - v5;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v7 = sub_1B7A9A400();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  v12 = sub_1B7A9A400();
  (*(v9 + 8))(v11, v8);
  return v7 == v12;
}

uint64_t sub_1B7A11080()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v8 = *(sub_1B7A98870() - 8);
  return sub_1B7A09EC8(v0[2], v0[3], v0 + ((*(v8 + 80) + 88) & ~*(v8 + 80)), v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1B7A11188(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v10 = *(sub_1B7A98870() - 8);
  v11 = (*(v10 + 80) + 88) & ~*(v10 + 80);
  v12 = v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1B7A09FE4(a1, v1[2], v1[3], v1 + v11, *v12, *(v12 + 1), v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1B7A112EC(void *a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v1 = sub_1B7A98870();
    if (v3 <= 0x3F)
    {
      v1 = sub_1B7958DD8();
      if (v4 <= 0x3F)
      {
        sub_1B797CE50(319, &qword_1EBA484D8, &qword_1EBA484E0, &qword_1B7AA2BF8);
        v1 = v5;
        if (v6 <= 0x3F)
        {
          sub_1B7A11B38();
          v1 = v7;
          if (v8 <= 0x3F)
          {
            sub_1B797CE50(319, &qword_1EBA484F0, &qword_1EBA484F8, qword_1B7AA2C00);
            v1 = v9;
            if (v10 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1B7A1147C(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v5 = a3[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 | 7;
  v15 = (v11 | 7) + *(v6 + 64);
  if (v13 >= a2)
  {
    goto LABEL_31;
  }

  v16 = ((((((((*(*(AssociatedTypeWitness - 8) + 64) + ((v11 + 16) & ~v11) + (v15 & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v16 <= 3)
  {
    v17 = ((a2 - v13 + 255) >> 8) + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *&a1[v16];
      if (!*&a1[v16])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v20 = *&a1[v16];
      if (!v20)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v22 = (v20 - 1) << (8 * v16);
    if (v16 <= 3)
    {
      v23 = *a1;
    }

    else
    {
      v22 = 0;
      v23 = *a1;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = a1[v16];
    if (a1[v16])
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if (v7 >= v12)
  {
    v26 = *(v6 + 48);

    return v26(a1, v7, v5);
  }

  else
  {
    v24 = (((&a1[v15] & ~v14) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) != 0)
    {
      v27 = *(v9 + 48);

      return v27((v24 + v11 + 8) & ~v11);
    }

    else
    {
      v25 = *v24;
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }
  }
}

void sub_1B7A11774(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[2];
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = (v12 | 7) + *(v8 + 64);
  v16 = ((v12 + 16) & ~v12) + *(v10 + 64);
  v17 = ((((((((v16 + (v15 & ~(v12 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 >= a3)
  {
    v20 = 0;
    if (v14 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ((a3 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v14 >= a2)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v17] = 0;
      }

      else if (v20)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 >= v13)
      {
        v27 = *(v31 + 56);

        v27(a1, a2, v9, v7);
      }

      else
      {
        v23 = (&a1[v15] & ~(v12 | 7));
        if (v13 >= a2)
        {
          v28 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v11 & 0x80000000) != 0)
          {
            v30 = *(v10 + 56);

            v30((v28 + v12 + 8) & ~v12, a2);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v29 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v29 = (a2 - 1);
            }

            *v28 = v29;
          }
        }

        else
        {
          if (v16 <= 3)
          {
            v24 = ~(-1 << (8 * v16));
          }

          else
          {
            v24 = -1;
          }

          if (v16)
          {
            v25 = v24 & (~v13 + a2);
            if (v16 <= 3)
            {
              v26 = v16;
            }

            else
            {
              v26 = 4;
            }

            bzero(v23, v16);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *v23 = v25;
                v23[2] = BYTE2(v25);
              }

              else
              {
                *v23 = v25;
              }
            }

            else if (v26 == 1)
            {
              *v23 = v25;
            }

            else
            {
              *v23 = v25;
            }
          }
        }
      }

      return;
    }
  }

  v21 = ~v14 + a2;
  bzero(a1, ((((((((v16 + (v15 & ~(v12 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v17 <= 3)
  {
    v22 = (v21 >> 8) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_30:
      if (v20 == 2)
      {
        *&a1[v17] = v22;
      }

      else
      {
        *&a1[v17] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v20)
  {
    a1[v17] = v22;
  }
}

void sub_1B7A11B38()
{
  if (!qword_1EBA484E8)
  {
    v0 = sub_1B7A970E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA484E8);
    }
  }
}

uint64_t sub_1B7A11BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    return sub_1B7A11C08(a1);
  }

  else
  {
  }
}

uint64_t sub_1B7A11C08(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B7A11DCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v14[6] = v11;
  v12 = *(type metadata accessor for _FlowStackTabViewBody(0, v14) - 8);
  return sub_1B7A0E4E0(a1, v2 + ((*(v12 + 80) + 72) & ~*(v12 + 80)), v5, v6, v7, v8, v9, v10, a2, v11);
}

unint64_t sub_1B7A11EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48510;
  if (!qword_1EBA48510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48510);
  }

  return result;
}

uint64_t sub_1B7A11FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v13 = v5[6];
  v12 = v5[7];
  v14 = v5[8];
  v20[0] = v5[2];
  v8 = v20[0];
  v20[1] = v9;
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v13;
  v20[5] = v12;
  v20[6] = v14;
  v15 = *(type metadata accessor for _FlowStackTabViewBody(0, v20) - 8);
  return sub_1B7A0FDFC(a1, v5 + ((*(v15 + 80) + 72) & ~*(v15 + 80)), v8, v9, v10, v11, v13, v12, a5, v14, a2, a3, a4);
}

uint64_t objectdestroy_51Tm()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v10 = *(v0 + 16);
  v13 = *(v0 + 32);
  v11 = *(v0 + 40);
  v12 = v10;
  v14 = v11;
  v15 = v1;
  v16 = v2;
  v3 = (type metadata accessor for _FlowStackTabViewBody(0, &v12) - 8);
  v4 = v0 + ((*(*v3 + 80) + 72) & ~*(*v3 + 80));
  (*(*(v10 - 8) + 8))(v4, v10);
  v5 = v4 + v3[21];

  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1B7A98870();
  (*(*(AssociatedTypeWitness - 8) + 8))(v5 + *(v7 + 32), AssociatedTypeWitness);

  v8 = v4 + v3[25];
  sub_1B7A11BFC(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48));
  sub_1B795AE10(*(v4 + v3[26]), *(v4 + v3[26] + 8));
  j__swift_release(*(v4 + v3[27]));
  return swift_deallocObject();
}

unint64_t sub_1B7A123C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48520;
  if (!qword_1EBA48520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48520);
  }

  return result;
}

uint64_t sub_1B7A12418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48528, &qword_1B7AA2C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A124F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B7A12538(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B7A125A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48530;
  if (!qword_1EBA48530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48530);
  }

  return result;
}

unint64_t sub_1B7A125FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48538;
  if (!qword_1EBA48538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48538);
  }

  return result;
}

unint64_t sub_1B7A12654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48540;
  if (!qword_1EBA48540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48540);
  }

  return result;
}

uint64_t sub_1B7A126B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7995018(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

uint64_t sub_1B7A126F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v49 = a3;
  v45 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v39 - v7;
  type metadata accessor for AppMetricsViewModifier(255);
  v8 = sub_1B7A97590();
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48570, &qword_1B7AA2F98);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v39 - v14;
  v16 = sub_1B7A99360();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B7A97B40();
  v47 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  sub_1B7A99210();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1B7957888(v15, &qword_1EBA48570, &qword_1B7AA2F98);
    v23 = v43;
    v24 = v49;
    sub_1B7957EE0(v46, a2, v49);
    v25 = v44;
    sub_1B7957EE0(v23, a2, v24);
    v26 = sub_1B7A14574(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier, &unk_1B7AA2F08);
    v56 = v24;
    v57 = v26;
    WitnessTable = swift_getWitnessTable();
    sub_1B7959A28(v25, v8, a2, WitnessTable, v24);
    v28 = *(v45 + 8);
    v28(v25, a2);
    v28(v23, a2);
  }

  else
  {
    v39 = v19;
    v40 = v17;
    (*(v17 + 32))(v19, v15, v16);
    v45 = v20;
    v29 = v49;
    View.appMetrics(pipeline:)(v19, a2, v49);
    v30 = sub_1B7A14574(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier, &unk_1B7AA2F08);
    v50 = v29;
    v51 = v30;
    v31 = swift_getWitnessTable();
    v32 = v41;
    sub_1B7957EE0(v10, v8, v31);
    v33 = *(v42 + 8);
    v33(v10, v8);
    sub_1B7957EE0(v32, v8, v31);
    v34 = v29;
    v20 = v45;
    sub_1B79B5878(v10, v8, a2, v31, v34);
    v33(v10, v8);
    v33(v32, v8);
    (*(v40 + 8))(v39, v16);
  }

  v35 = sub_1B7A14574(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier, &unk_1B7AA2F08);
  v36 = v49;
  v54 = v49;
  v55 = v35;
  v52 = swift_getWitnessTable();
  v53 = v36;
  v37 = swift_getWitnessTable();
  sub_1B7957EE0(v22, v20, v37);
  return (*(v47 + 8))(v22, v20);
}

uint64_t View.appMetrics(pipeline:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A99360();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppMetricsViewModifier(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v11);
  *(v13 + 3) = 0;
  v14 = *(v10 + 24);
  *&v13[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
  swift_storeEnumTagMultiPayload();
  v15 = *(v10 + 28);
  *&v13[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v9, v6);
  *v13 = sub_1B7A145BC;
  *(v13 + 1) = v17;
  v13[16] = 0;
  MEMORY[0x1B8CA96D0](v13, a2, v10, a3);
  return sub_1B7A13388(v13);
}

uint64_t type metadata accessor for AppMetricsViewModifier(uint64_t a1)
{
  result = qword_1EBA48548;
  if (!qword_1EBA48548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t View.appMetrics(pipeline:scene:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v32 = a3;
  v34 = a2;
  v36 = a5;
  v6 = sub_1B7A99360();
  v31 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = type metadata accessor for AppMetricsViewModifier(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B7A97590();
  v33 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  (*(v7 + 16))(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v16);
  v19 = *(v9 + 24);
  *&v11[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
  swift_storeEnumTagMultiPayload();
  v20 = *(v9 + 28);
  *&v11[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = swift_allocObject();
  (*(v7 + 32))(v22 + v21, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  *v11 = sub_1B7A13544;
  *(v11 + 1) = v22;
  v11[16] = 0;
  v23 = v34;
  *(v11 + 3) = v34;
  v24 = v23;
  v25 = v35;
  MEMORY[0x1B8CA96D0](v11, v32, v9, v35);
  sub_1B7A13388(v11);
  v26 = sub_1B7A14574(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier, &unk_1B7AA2F08);
  v37 = v25;
  v38 = v26;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v14, v12, WitnessTable);
  v28 = *(v33 + 8);
  v28(v14, v12);
  sub_1B7957EE0(v18, v12, WitnessTable);
  return (v28)(v18, v12);
}

uint64_t View.appMetricsPresenter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();

  sub_1B7A98150();
}

uint64_t sub_1B7A13388(uint64_t a1)
{
  v2 = type metadata accessor for AppMetricsViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7A133E4(uint64_t a1)
{
  v2 = sub_1B7A99360();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_1B7A99760();
  swift_allocObject();
  return sub_1B7A99750();
}

uint64_t objectdestroyTm_3()
{
  v1 = sub_1B7A99360();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_1B7A135C4(uint64_t a1)
{
  sub_1B7A13708(319);
  if (v1 <= 0x3F)
  {
    sub_1B7A137E8(319, &qword_1EBA48568, sub_1B7A1379C, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B7A137E8(319, &qword_1EDC108B8, MEMORY[0x1E697BE48], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1B7A137E8(319, &qword_1EDC10148, MEMORY[0x1E69AB2B8], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7A13708(uint64_t a1)
{
  if (!qword_1EBA48558)
  {
    sub_1B7A99760();
    sub_1B7A14574(&qword_1EBA48560, MEMORY[0x1E69AB278], &protocol conformance descriptor for AppMetricsPresenter);
    v1 = sub_1B7A97140();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA48558);
    }
  }
}

unint64_t sub_1B7A1379C()
{
  result = qword_1EDC0FC58;
  if (!qword_1EDC0FC58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC0FC58);
  }

  return result;
}

void sub_1B7A137E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B7A13868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v21 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E28, &qword_1B7A9C5B8) - 8;
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v16 - v3;
  v5 = type metadata accessor for AppMetricsViewModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1B7A140D0(v2, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_1B7A14134(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v8);
  KeyPath = swift_getKeyPath();
  sub_1B7A99760();
  sub_1B7A14574(&qword_1EBA48560, MEMORY[0x1E69AB278], &protocol conformance descriptor for AppMetricsPresenter);
  v9 = sub_1B7A97120();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E58, &unk_1B7AA2F60);
  (*(*(v10 - 8) + 16))(v4, v19, v10);
  v11 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E48, &unk_1B7A9C5C0) + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  sub_1B7A140D0(v2, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_1B7A14134(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v8);
  v13 = swift_getKeyPath();
  v14 = &v4[*(v20 + 44)];
  *v14 = sub_1B7A143AC;
  *(v14 + 1) = v12;
  *(v14 + 2) = v13;
  *(v14 + 3) = 0;
  *(v14 + 16) = 0;
  sub_1B797A8B8(*(v2 + 24), sub_1B7A14198, v18, v21);

  return sub_1B7957888(v4, &qword_1EBA45E28, &qword_1B7A9C5B8);
}

uint64_t sub_1B7A13B44(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B7A99900();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1B7A97040();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x1E697BE30])
  {
    sub_1B7A99760();
    sub_1B7A14574(&qword_1EBA48560, MEMORY[0x1E69AB278], &protocol conformance descriptor for AppMetricsPresenter);
    sub_1B7A97120();
    type metadata accessor for AppMetricsViewModifier(0);
    sub_1B797BE80(v6);
    sub_1B7A99740();
LABEL_5:

    return (*(v4 + 8))(v6, v3);
  }

  if (v12 == *MEMORY[0x1E697BE38])
  {
    sub_1B7A99760();
    sub_1B7A14574(&qword_1EBA48560, MEMORY[0x1E69AB278], &protocol conformance descriptor for AppMetricsPresenter);
    sub_1B7A97120();
    type metadata accessor for AppMetricsViewModifier(0);
    sub_1B797BE80(v6);
    sub_1B7A99730();
    goto LABEL_5;
  }

  return (*(v8 + 8))(v11, v7);
}

void sub_1B7A13E28(char a1, uint64_t *a2)
{
  v4 = sub_1B7A99900();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1B7A97040();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  if (a1)
  {
    if (a2[3])
    {
      if ([a2[3] activationState])
      {
        return;
      }
    }

    else
    {
      v17 = v13;
      type metadata accessor for AppMetricsViewModifier(0);
      sub_1B797C2F4(v16);
      (*(v9 + 104))(v11, *MEMORY[0x1E697BE38], v17);
      v18 = sub_1B7A97030();
      v19 = *(v9 + 8);
      v19(v11, v17);
      v19(v16, v17);
      if ((v18 & 1) == 0)
      {
        return;
      }
    }

    sub_1B7A99760();
    sub_1B7A14574(&qword_1EBA48560, MEMORY[0x1E69AB278], &protocol conformance descriptor for AppMetricsPresenter);
    sub_1B7A97120();
    type metadata accessor for AppMetricsViewModifier(0);
    sub_1B797BE80(v7);
    sub_1B7A99730();

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1B7A140D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppMetricsViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A14134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppMetricsViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A14198(uint64_t a1)
{
  v3 = *(type metadata accessor for AppMetricsViewModifier(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1B7A13B44(a1, v4);
}

uint64_t objectdestroy_16Tm()
{
  v1 = type metadata accessor for AppMetricsViewModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1B79599CC(*v2, *(v2 + 8));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1B7A97040();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B7A99900();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1B7A143AC(char a1)
{
  v3 = *(type metadata accessor for AppMetricsViewModifier(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_1B7A13E28(a1, v4);
}

unint64_t sub_1B7A1442C()
{
  result = qword_1EBA48578;
  if (!qword_1EBA48578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48580, &qword_1B7AA2FC0);
    sub_1B797DF30();
    sub_1B7A144B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48578);
  }

  return result;
}

unint64_t sub_1B7A144B8()
{
  result = qword_1EBA45E68;
  if (!qword_1EBA45E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E10, &qword_1B7A9C5A0);
    sub_1B797DFBC();
    sub_1B7A14574(&qword_1EDC10978, type metadata accessor for _OnScenePhaseChange, &unk_1B7AA0978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45E68);
  }

  return result;
}

uint64_t sub_1B7A14574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B7A14628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48588;
  if (!qword_1EBA48588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48588);
  }

  return result;
}

unint64_t sub_1B7A146E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48590;
  if (!qword_1EBA48590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48590);
  }

  return result;
}

uint64_t sub_1B7A14734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v78 = a1;
  v83 = a2;
  v75 = sub_1B7A97A30();
  v62 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v60 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485C0, &qword_1B7AA31F0);
  v64 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v63 = &v57 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485C8, &qword_1B7AA31F8);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v57 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485D0, &qword_1B7AA3200);
  MEMORY[0x1EEE9AC00](v82);
  v76 = &v57 - v7;
  v71 = sub_1B7A97C80();
  v58 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v57 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485D8, &qword_1B7AA3208);
  v61 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v59 = &v57 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485E0, &qword_1B7AA3210);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v57 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485E8, &qword_1B7AA3218);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v57 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485F0, &qword_1B7AA3220);
  MEMORY[0x1EEE9AC00](v80);
  v70 = &v57 - v12;
  v13 = sub_1B7A97950();
  v65 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B7A97CC0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA485F8, &qword_1B7AA3228);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48600, &qword_1B7AA3230);
  v25 = *(v24 - 8);
  v67 = v24;
  v68 = v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - v27;
  v29 = *v3;
  (*(v17 + 16))(v19, v78, v16, v26);
  sub_1B7A986A0();
  v30 = (v21 + 8);
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v37 = v57;
      sub_1B7A97C70();
      v38 = sub_1B797EC34(&qword_1EBA48608, &qword_1EBA485F8, &qword_1B7AA3228, MEMORY[0x1E697D658]);
      v39 = sub_1B7A15820(&qword_1EBA48618, MEMORY[0x1E697C848], MEMORY[0x1E697C840]);
      v40 = v59;
      v41 = v71;
      sub_1B7A980E0();
      (*(v58 + 8))(v37, v41);
      (*v30)(v23, v20);
      v42 = v61;
      v43 = v73;
      (*(v61 + 16))(v74, v40, v73);
      swift_storeEnumTagMultiPayload();
      v84 = v20;
      v85 = v41;
      v86 = v38;
      v87 = v39;
      swift_getOpaqueTypeConformance2();
      v44 = sub_1B7A15820(&qword_1EBA48610, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
      v84 = v20;
      v85 = v75;
      v86 = v38;
      v87 = v44;
      swift_getOpaqueTypeConformance2();
      v45 = v76;
      sub_1B7A97B30();
      sub_1B7957820(v45, v81, &qword_1EBA485D0, &qword_1B7AA3200);
      swift_storeEnumTagMultiPayload();
      sub_1B7A156DC();
      sub_1B7A15868();
      sub_1B7A97B30();
      sub_1B7957888(v45, &qword_1EBA485D0, &qword_1B7AA3200);
      return (*(v42 + 8))(v40, v43);
    }

    else
    {
      v48 = v60;
      sub_1B7A97A20();
      v49 = sub_1B797EC34(&qword_1EBA48608, &qword_1EBA485F8, &qword_1B7AA3228, MEMORY[0x1E697D658]);
      v50 = sub_1B7A15820(&qword_1EBA48610, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
      v51 = v63;
      v52 = v75;
      sub_1B7A980E0();
      (*(v62 + 8))(v48, v52);
      (*v30)(v23, v20);
      v53 = v64;
      v54 = v77;
      (*(v64 + 16))(v74, v51, v77);
      swift_storeEnumTagMultiPayload();
      v55 = sub_1B7A15820(&qword_1EBA48618, MEMORY[0x1E697C848], MEMORY[0x1E697C840]);
      v84 = v20;
      v85 = v71;
      v86 = v49;
      v87 = v55;
      swift_getOpaqueTypeConformance2();
      v84 = v20;
      v85 = v52;
      v86 = v49;
      v87 = v50;
      swift_getOpaqueTypeConformance2();
      v56 = v76;
      sub_1B7A97B30();
      sub_1B7957820(v56, v81, &qword_1EBA485D0, &qword_1B7AA3200);
      swift_storeEnumTagMultiPayload();
      sub_1B7A156DC();
      sub_1B7A15868();
      sub_1B7A97B30();
      sub_1B7957888(v56, &qword_1EBA485D0, &qword_1B7AA3200);
      return (*(v53 + 8))(v51, v54);
    }
  }

  else
  {
    sub_1B7A97940();
    v31 = sub_1B797EC34(&qword_1EBA48608, &qword_1EBA485F8, &qword_1B7AA3228, MEMORY[0x1E697D658]);
    v32 = sub_1B7A15820(&qword_1EBA48628, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    v33 = v28;
    sub_1B7A980E0();
    (*(v65 + 8))(v15, v13);
    (*v30)(v23, v20);
    v34 = v68;
    v35 = v28;
    v36 = v67;
    (*(v68 + 16))(v69, v35, v67);
    swift_storeEnumTagMultiPayload();
    v84 = v20;
    v85 = v13;
    v86 = v31;
    v87 = v32;
    swift_getOpaqueTypeConformance2();
    v46 = v70;
    sub_1B7A97B30();
    sub_1B7957820(v46, v81, &qword_1EBA485F0, &qword_1B7AA3220);
    swift_storeEnumTagMultiPayload();
    sub_1B7A156DC();
    sub_1B7A15868();
    sub_1B7A97B30();
    sub_1B7957888(v46, &qword_1EBA485F0, &qword_1B7AA3220);
    return (*(v34 + 8))(v33, v36);
  }
}

uint64_t FlowSheetDoneButtonLabelStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

unint64_t sub_1B7A15580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48598;
  if (!qword_1EBA48598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48598);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA26_PreferenceWritingModifierVy011_JetEngine_aB033_FlowSheetDoneButtonLabelStyleKeyOGGAaBHPxAaBHD1__AjA0cH0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1B7A97590();
  sub_1B797EC34(a4, a2, a3, MEMORY[0x1E6980758]);
  return swift_getWitnessTable();
}

unint64_t sub_1B7A156DC()
{
  result = qword_1EBA48620;
  if (!qword_1EBA48620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA485F0, &qword_1B7AA3220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA485F8, &qword_1B7AA3228);
    sub_1B7A97950();
    sub_1B797EC34(&qword_1EBA48608, &qword_1EBA485F8, &qword_1B7AA3228, MEMORY[0x1E697D658]);
    sub_1B7A15820(&qword_1EBA48628, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48620);
  }

  return result;
}

uint64_t sub_1B7A15820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B7A15868()
{
  result = qword_1EBA48630;
  if (!qword_1EBA48630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA485D0, &qword_1B7AA3200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA485F8, &qword_1B7AA3228);
    sub_1B7A97C80();
    sub_1B797EC34(&qword_1EBA48608, &qword_1EBA485F8, &qword_1B7AA3228, MEMORY[0x1E697D658]);
    sub_1B7A15820(&qword_1EBA48618, MEMORY[0x1E697C848], MEMORY[0x1E697C840]);
    swift_getOpaqueTypeConformance2();
    sub_1B7A97A30();
    sub_1B7A15820(&qword_1EBA48610, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48630);
  }

  return result;
}

unint64_t sub_1B7A15A0C()
{
  result = qword_1EBA48638;
  if (!qword_1EBA48638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48640, &qword_1B7AA3238);
    sub_1B7A156DC();
    sub_1B7A15868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48638);
  }

  return result;
}

uint64_t MediaArtworkProtocol<>.match(_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 16))(a4, a1, AssociatedTypeWitness);
  v7 = *(v9 + 56);

  return v7(a4, 0, 1, AssociatedTypeWitness);
}

uint64_t ShelfGrid.init(_:layout:padding:spacing:shelfPosition:itemContent:itemDivider:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *a2;
  v19 = a2[1];
  v20 = a2[2];
  v21 = a2[3];
  v22 = a2[4];
  v37 = a2[5];
  v36 = *(a2 + 48);
  v41 = *a3;
  v40 = *(a3 + 8);
  v39 = a3[2];
  v38 = *(a3 + 24);
  v45 = *a4;
  v44 = *(a4 + 8);
  v43 = a4[2];
  v42 = *(a4 + 24);
  v51 = a12;
  v52 = a13;
  v53 = a14;
  v54 = a15;
  v55 = a16;
  v56 = a17;
  v23 = type metadata accessor for ShelfGrid(0, &v51);
  v24 = a9 + v23[23];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = a9 + v23[24];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a9 + v23[25];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = a9 + v23[26];
  *v27 = swift_getKeyPath();
  *(v27 + 32) = 0;
  v28 = a9 + v23[27];
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  v51 = v18;
  v52 = v19;
  v53 = v20;
  v54 = v21;
  v55 = v22;
  v56 = v37;
  v57 = v36;
  sub_1B7A15E9C(&v51);
  result = (*(*(a12 - 8) + 32))(a9, a1, a12);
  v30 = a9 + v23[17];
  *v30 = v18;
  *(v30 + 8) = v19;
  *(v30 + 16) = v20;
  *(v30 + 24) = v21;
  *(v30 + 32) = v22;
  *(v30 + 40) = v37;
  *(v30 + 48) = v36;
  v31 = a9 + v23[18];
  *v31 = v41;
  *(v31 + 8) = v40;
  *(v31 + 16) = v39;
  *(v31 + 24) = v38;
  v32 = a9 + v23[19];
  *v32 = v45;
  *(v32 + 8) = v44;
  *(v32 + 16) = v43;
  *(v32 + 24) = v42;
  v33 = a9 + v23[20];
  *v33 = a5;
  *(v33 + 8) = a6 & 1;
  v34 = (a9 + v23[21]);
  *v34 = a7;
  v34[1] = a8;
  v35 = (a9 + v23[22]);
  *v35 = a10;
  v35[1] = a11;
  return result;
}

void sub_1B7A15E9C(void *a1)
{
  v2 = sub_1B7A9A280();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    sub_1B7A9A220();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98C40();
    sub_1B7A99E50();

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t ShelfGrid.init<>(_:layout:padding:spacing:shelfPosition:itemContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v47 = a7;
  v48 = a8;
  v45 = a6;
  v46 = a5;
  v42 = a1;
  v44 = a9;
  v41 = a11;
  v38 = a10;
  v43 = *(a10 - 8);
  v40 = a12;
  v39 = a13;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v21 = *(a2 + 8);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = *(a2 + 32);
  v25 = *(a2 + 40);
  v57[0] = *a2;
  v20 = v57[0];
  v57[1] = v21;
  v57[2] = v22;
  v57[3] = v23;
  v57[4] = v24;
  v57[5] = v25;
  LOBYTE(a2) = *(a2 + 48);
  v58 = a2;
  v26 = *(a3 + 8);
  v27 = *(a3 + 16);
  v28 = *(a3 + 24);
  v53 = *a3;
  v54 = v26;
  v55 = v27;
  v56 = v28;
  v29 = *(a4 + 8);
  v30 = *(a4 + 16);
  v31 = *(a4 + 24);
  v49 = *a4;
  v50 = v29;
  v51 = v30;
  v52 = v31;
  sub_1B7A16C88(v57[0], v21, v22, v23, v24, v25, a2);
  v32 = sub_1B7A988A0();
  v33 = sub_1B7A1D2FC(&qword_1EBA47DB8, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
  v36 = v32;
  v34 = v38;
  ShelfGrid.init(_:layout:padding:spacing:shelfPosition:itemContent:itemDivider:)(v18, v57, &v53, &v49, v46, v45 & 1, v47, v48, v44, sub_1B7A1F914, 0, v38, v41, v36, v40, v39, v33);
  sub_1B7A16CD4(v20, v21, v22, v23, v24, v25, a2);
  return (*(v43 + 8))(v42, v34);
}

uint64_t sub_1B7A162D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + *(a1 + 68);
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  v14 = *(v5 + 48);
  sub_1B7A16C88(*v5, v9, v10, v11, v12, v13, v14);
  v6 = sub_1B7A16370(a1);
  sub_1B7A46004(v6 & 1, a2);

  return sub_1B7A16CD4(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1B7A16370(uint64_t a1)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 92);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1B7A9AA10();
    v9 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE10(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1B7A164C4(uint64_t a1)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 96);
  result = *v7;
  v9 = *(v7 + 8);
  if (*(v7 + 9) != 1)
  {
    v10 = *v7;

    sub_1B7A9AA10();
    v11 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7A1F1D0(v10, v9, 0);
    (*(v4 + 8))(v6, v3);
    return v12;
  }

  return result;
}

void sub_1B7A1662C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1B7A97880();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 100);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1B7A9AA10();
    v11 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE10(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1B7A16788@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1B7A97880();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A1F52C(v2 + *(a1 + 104), v12);
  if (v13 == 1)
  {
    return sub_1B7957D50(v12, a2);
  }

  sub_1B7A9AA10();
  v10 = sub_1B7A97E70();
  sub_1B7A96D30();

  sub_1B7A97870();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

void *sub_1B7A168EC(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_1B7A1F8B0(x0_0, a2, a3);

  return sub_1B7A97890();
}

uint64_t sub_1B7A16934(uint64_t a1)
{
  sub_1B79948D0(a1, v6);
  v1 = sub_1B79948D0(v6, &v5);
  sub_1B7A1F8B0(v1, v2, v3);
  sub_1B7A978A0();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

double sub_1B7A16994(uint64_t a1)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 108);
  v9 = *v7;
  v8 = *(v7 + 8);
  if (*(v7 + 16) == 1)
  {
    return *v7;
  }

  sub_1B7A9AA10();
  v11 = sub_1B7A97E70();
  sub_1B7A96D30();

  sub_1B7A97870();
  swift_getAtKeyPath();
  sub_1B7A1F1D0(v9, v8, 0);
  (*(v4 + 8))(v6, v3);
  return v12;
}

double EnvironmentValues.shelfGridConstrainedContainerSize.getter()
{
  type metadata accessor for ShelfContainerEnvironmentValues(0);
  sub_1B7A1D2FC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
  v0 = sub_1B7A978B0();
  if (!v0)
  {
    return 0.0;
  }

  v1 = *&v0;
  swift_getKeyPath();
  sub_1B7A96CB0();

  v3 = *(*&v1 + 16);
  sub_1B79888A8(v2, v4, v5);
  v6 = sub_1B7A97890();
  v9 = v1;
  if (v11)
  {
    v9 = INFINITY;
  }

  if (v9 < v3)
  {
    v3 = v9;
  }

  sub_1B7A1D08C(v6, v7, v8);
  sub_1B7A97890();
  if ((LOBYTE(v1) & 1) == 0)
  {
    swift_getKeyPath();
    sub_1B7A96CB0();
  }

  return v3;
}

double sub_1B7A16C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 5;
  if (v7 <= 4 && ((1 << v7) & 0x13) != 0)
  {
    return sub_1B7A16CBC(a2, a3, a4);
  }

  return result;
}

double sub_1B7A16CBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_1B7A16CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 5;
  if (v7 <= 4 && ((1 << v7) & 0x13) != 0)
  {
    return sub_1B7A16D08(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B7A16D08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_1B7A16D20(uint64_t *a1, uint64_t a2)
{
  v2 = *(sub_1B7A98D30() + 16);

  return sub_1B7A1F708(v2, sub_1B7A1F81C);
}

void sub_1B7A16DCC(int64x2_t **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  v64 = a7;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(sub_1B7A98D30() + 16);

  v39 = v12;
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = 0;
  while (1)
  {
    *&v44 = v64;
    *(&v44 + 1) = a8;
    v45 = a9;
    v46 = a10;
    v14 = type metadata accessor for ShelfGrid(0, &v44);
    v15 = sub_1B7A16994(v14);
    v17 = v16;
    v18 = *(v14 + 76);
    v19 = (a3 + *(v14 + 72));
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = v19[2];
    LOBYTE(v19) = *(v19 + 24);
    v23 = (a3 + v18);
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = v23[2];
    LOBYTE(v23) = *(v23 + 24);
    v57 = v21;
    v56 = v19;
    v55 = v25;
    v53 = v23;
    type metadata accessor for ShelfGridItemWidth.Context._OffsetStorage();
    v27 = swift_allocObject();
    *(v27 + 16) = v13;
    *(v27 + 24) = 0;
    *&v58 = v27;
    *(&v58 + 1) = v15;
    *&v59 = v17;
    *(&v59 + 1) = v20;
    LOBYTE(v60) = v57;
    *(&v60 + 1) = v44;
    DWORD1(v60) = *(&v44 + 3);
    *(&v60 + 1) = v22;
    LOBYTE(v61) = v56;
    *(&v61 + 1) = v50;
    DWORD1(v61) = *(&v50 + 3);
    *(&v61 + 1) = v24;
    LOBYTE(v62) = v55;
    DWORD1(v62) = *&v54[3];
    *(&v62 + 1) = *v54;
    *(&v62 + 1) = v26;
    v63 = v53;
    v50 = a4;
    v51 = a5;
    v52 = a6;
    v47 = v61;
    v48 = v62;
    v49 = v53;
    v45 = v59;
    v46 = v60;
    v44 = v58;
    ShelfGridItemWidth.resolve(using:)(&v44, *&v27);
    if (*(v58 + 24) != 1)
    {
      break;
    }

    (*a1)->i64[v13] = v28;
    sub_1B7A1F85C(&v58);
    if (v39 == ++v13)
    {
      goto LABEL_19;
    }
  }

  v29 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v30 = a1[1];
  if ((v30 & 0x8000000000000000) == 0)
  {
    if (v30)
    {
      if (v30 > 3)
      {
        v31 = v30 & 0x7FFFFFFFFFFFFFFCLL;
        v32 = vdupq_lane_s64(v28, 0);
        v33 = v29 + 1;
        v34 = v30 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v33[-1] = v32;
          *v33 = v32;
          v33 += 2;
          v34 -= 4;
        }

        while (v34);
        if (v30 == v31)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v31 = 0;
      }

      v35 = &v30->i8[-v31];
      v36 = &v29->i64[v31];
      do
      {
        *v36++ = v28;
        --v35;
      }

      while (v35);
    }

LABEL_18:
    sub_1B7A1F85C(&v58);
LABEL_19:
    v37 = *(sub_1B7A98D30() + 16);

    *a2 = v37;
    return;
  }

  __break(1u);
}

uint64_t sub_1B7A170EC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a3;
  v94 = a2[5];
  v5 = *(v94 + 2);
  v103 = a2[2];
  v80 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v78 = &v77 - v6;
  v92 = sub_1B7A99110();
  v106 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v77 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v77 - v11;
  v12 = a2[3];
  v90 = a2[4];
  v88 = v12;
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  v86 = sub_1B7A97B40();
  v13 = sub_1B7A985B0();
  v91 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - v14;
  WitnessTable = swift_getWitnessTable();
  v82 = a2[6];
  v126 = WitnessTable;
  v127 = v82;
  v83 = swift_getWitnessTable();
  v125 = v83;
  v17 = swift_getWitnessTable();
  v85 = v17;
  v84 = sub_1B7A1D2A8(v17, v18, v19);
  v121 = v13;
  v122 = &type metadata for ComponentModelViewID;
  v123 = v17;
  v124 = v84;
  v20 = sub_1B7A987A0();
  v87 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  v23 = sub_1B7A97590();
  v89 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - v24;
  v26 = sub_1B7A97590();
  v97 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v77 - v27;
  sub_1B7A97E00();
  v98 = v26;
  v100 = sub_1B7A97590();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v95 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v96 = &v77 - v31;
  *&v32 = v103;
  *(&v32 + 1) = v88;
  *&v33 = v90;
  *(&v33 + 1) = v94;
  v108 = v33;
  v107 = v32;
  v34 = a2[7];
  v109 = v82;
  v110 = v34;
  v111 = a1;
  v112 = v104;
  sub_1B7A985A0();
  v35 = a1[4];
  v36 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v35);
  ComponentModel.viewID.getter(v35, v36);
  sub_1B7A98390();
  sub_1B79F9A0C(&v121);
  v37 = v15;
  v38 = v92;
  (*(v91 + 8))(v37, v13);
  v39 = swift_getWitnessTable();
  View._shelfGridPrefersEagerLayout(_:)(1, v20, v39);
  (*(v87 + 8))(v22, v20);
  v40 = a1[6];
  v41 = sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8, &qword_1B7AA33D0);
  v119 = v39;
  v120 = v41;
  v42 = swift_getWitnessTable();
  v94 = v28;
  View.unifiedImpressionableLayoutItem(_:position:)((a1 + 1), v40, 0, v23, v42);
  (*(v89 + 8))(v25, v23);
  v43 = v93;
  sub_1B7A99100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47590, &qword_1B7A9FC58);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1B7A9C180;
  v45 = a1[4];
  v46 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v45);
  v47 = sub_1B7A18694(v45, v46);
  v48 = MEMORY[0x1E69E6158];
  *(v44 + 56) = MEMORY[0x1E69E6158];
  *(v44 + 32) = v47;
  *(v44 + 40) = v49;
  sub_1B7A990F0();

  v50 = *(v106 + 8);
  v106 += 8;
  v50(v43, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48768, &unk_1B7AA35C0);
  sub_1B7A99780();
  *(swift_allocObject() + 16) = xmmword_1B7A9D270;
  v51 = a1[4];
  v52 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v51);
  v53 = sub_1B7A18890(v51, v52);
  v124 = v48;
  v121 = v53;
  v122 = v54;
  sub_1B7A99770();
  v55 = a1[4];
  v56 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v55);
  v57 = sub_1B7A18AA4(v55, v56);
  v124 = v48;
  if (!v58)
  {
    v117 = 0;
    v118 = 0xE000000000000000;
    v59 = v78;
    sub_1B7A9AC60();
    v60 = AssociatedTypeWitness;
    sub_1B7A9AE60();
    (*(v79 + 8))(v59, v60);
    v57 = v117;
    v58 = v118;
  }

  v121 = v57;
  v122 = v58;
  sub_1B7A99770();
  v61 = v101;
  v62 = v105;
  sub_1B7A990E0();

  v63 = (v50)(v62, v38);
  v66 = sub_1B79F8F4C(v63, v64, v65);
  v115 = v42;
  v116 = v66;
  v67 = v98;
  v68 = swift_getWitnessTable();
  v69 = v95;
  v70 = v94;
  View._automationIdentifier(_:)();
  v50(v61, v38);
  (*(v97 + 8))(v70, v67);
  v71 = sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v113 = v68;
  v114 = v71;
  v72 = v100;
  v73 = swift_getWitnessTable();
  v74 = v96;
  sub_1B7957EE0(v69, v72, v73);
  v75 = *(v99 + 8);
  v75(v69, v72);
  sub_1B7957EE0(v74, v72, v73);
  return (v75)(v74, v72);
}

uint64_t sub_1B7A17CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v68 = a8;
  v73 = a7;
  v74 = a9;
  v66 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v64 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v57 - v17;
  swift_getTupleTypeMetadata2();
  v18 = sub_1B7A98AC0();
  WitnessTable = swift_getWitnessTable();
  v60 = v18;
  v59 = WitnessTable;
  v20 = sub_1B7A987E0();
  v63 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v61 = &v57 - v23;
  v67 = v24;
  v25 = a4;
  v26 = sub_1B7A97B40();
  v71 = *(v26 - 8);
  v72 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v70 = &v57 - v27;
  sub_1B7A9A760();
  v69 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = *(a1 + 64);
  v29 = *(a1 + 72);
  v30 = *(a1 + 80);
  v31 = *(a1 + 88);
  v32 = *(a1 + 96);
  v33 = *(a1 + 104);
  v34 = *(a1 + 48);
  v78 = *(a1 + 56);
  v79 = v28;
  v80 = v29;
  v81 = v30;
  v82 = v31;
  v83 = v32;
  v84 = v33;
  sub_1B7A16C88(v78, v28, v29, v30, v31, v32, v33);
  v35 = a2;
  v36 = *(sub_1B7A98D30() + 16);

  v77[0] = a3;
  v77[1] = a4;
  v77[2] = a5;
  v77[3] = a6;
  v57 = a5;
  v37 = v73;
  v58 = a6;
  v38 = v68;
  v77[4] = v73;
  v77[5] = v68;
  v39 = type metadata accessor for ShelfGrid(0, v77);
  sub_1B7A1662C(v39, v77);
  v40 = sub_1B7A46488(v34, v36, v77);
  sub_1B7A16CD4(v78, v79, v80, v81, v82, v83, v84);
  if (v40)
  {
    v41 = sub_1B7A979A0();
    MEMORY[0x1EEE9AC00](v41);
    *(&v57 - 8) = a3;
    *(&v57 - 7) = v25;
    v42 = v58;
    *(&v57 - 6) = v57;
    *(&v57 - 5) = v42;
    *(&v57 - 4) = v37;
    *(&v57 - 3) = v38;
    *(&v57 - 2) = v35;
    *(&v57 - 1) = a1;
    v43 = v62;
    sub_1B7A987D0();
    v44 = v67;
    v45 = swift_getWitnessTable();
    v46 = v61;
    sub_1B7957EE0(v43, v44, v45);
    v47 = *(v63 + 8);
    v47(v43, v44);
    sub_1B7957EE0(v46, v44, v45);
    v48 = v70;
    sub_1B79B5878(v43, v44, v25, v45, v37);
    v47(v43, v44);
    v47(v46, v44);
  }

  else
  {
    v49 = v64;
    (*(v35 + *(v39 + 84)))(a1);
    v50 = v65;
    sub_1B7957EE0(v49, v25, v37);
    v51 = *(v66 + 8);
    v51(v49, v25);
    sub_1B7957EE0(v50, v25, v37);
    v52 = v67;
    v53 = swift_getWitnessTable();
    v48 = v70;
    sub_1B7959A28(v49, v52, v25, v53, v37);
    v51(v49, v25);
    v51(v50, v25);
  }

  v75 = swift_getWitnessTable();
  v76 = v37;
  v54 = v72;
  v55 = swift_getWitnessTable();
  sub_1B7957EE0(v48, v54, v55);
  (*(v71 + 8))(v48, v54);
}

uint64_t sub_1B7A182F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v50 = a8;
  v51 = a3;
  v46 = a2;
  v49 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v39 - v15;
  v17 = v16;
  v44 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  sub_1B7A9A760();
  v48 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v55 = v51;
  v56 = v17;
  v57 = a4;
  v58 = a5;
  v42 = a6;
  v59 = a6;
  v60 = a7;
  v24 = a7;
  v25 = type metadata accessor for ShelfGrid(0, &v55);
  v26 = a1;
  v27 = *(a1 + *(v25 + 84));
  v28 = v46;
  v27(v46);
  sub_1B7957EE0(v20, v17, a6);
  v51 = v23;
  v29 = v44;
  v40 = v20;
  v41 = v24;
  v43 = *(v44 + 8);
  v43(v20, v17);
  v30 = *(v26 + *(v25 + 88));
  v31 = v45;
  v30(v28);
  v32 = v47;
  sub_1B7957EE0(v31, a4, v24);
  v33 = v49;
  v34 = v17;
  v35 = *(v49 + 8);
  v35(v31, a4);
  v36 = v40;
  (*(v29 + 16))(v40, v51, v34);
  v55 = v36;
  (*(v33 + 16))(v31, v32, a4);
  v56 = v31;
  v54[0] = v34;
  v54[1] = a4;
  v52 = v42;
  v53 = v41;
  sub_1B7959BAC(&v55, 2uLL, v54);
  v35(v32, a4);
  v37 = v43;
  v43(v51, v34);
  v35(v31, a4);
  v37(v36, v34);
}

uint64_t sub_1B7A18694(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  sub_1B7A9A370();
  v5 = sub_1B7A99670();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B7957888(v4, &qword_1EBA45C90, &qword_1B7A9C190);
LABEL_9:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_10;
  }

  v7 = sub_1B7A99660();
  (*(v6 + 8))(v4, v5);
  if (!*(v7 + 16) || (v8 = sub_1B79948B8(0x6973736572706D69, 0xEE00657079546E6FLL), (v9 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_1B79948D0(*(v7 + 56) + 32 * v8, &v12);

  if (!*(&v13 + 1))
  {
LABEL_10:
    sub_1B7957888(&v12, &qword_1EBA46B50, &qword_1B7A9DD90);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v11;
  }

LABEL_11:
  swift_getDynamicType();
  return sub_1B7A9AFF0();
}

uint64_t sub_1B7A18890(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B7A99630();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14[-v7 - 8];
  sub_1B7A9A370();
  v9 = sub_1B7A99670();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B7957888(v8, &qword_1EBA45C90, &qword_1B7A9C190);
    _s9JetEngine14ComponentModelP01_aB8_SwiftUIE6viewIDAD0cd4ViewH0Vvg_0();
    v11 = _s9JetEngine12MediaArtworkV01_aB8_SwiftUIE8CacheKeyV16debugDescriptionSSvg_0();
    sub_1B7991408(v14);
  }

  else
  {
    sub_1B7A99650();
    (*(v10 + 8))(v8, v9);
    v11 = sub_1B7A99620();
    (*(v3 + 8))(v5, v2);
  }

  return v11;
}

uint64_t sub_1B7A18AA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B7A99630();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  sub_1B7A9A370();
  v9 = sub_1B7A99670();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B7957888(v8, &qword_1EBA45C90, &qword_1B7A9C190);
    return 0;
  }

  else
  {
    sub_1B7A99650();
    (*(v10 + 8))(v8, v9);
    v12 = sub_1B7A99610();
    (*(v3 + 8))(v5, v2);
    return v12;
  }
}

uint64_t ShelfGrid.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48650, &qword_1B7AA33B8);
  v3 = a1[5];
  v43 = a1[2];
  v44 = v3;
  type metadata accessor for UnifiedImpressionableLayoutViewModifier(255, v43, v3, v4);
  sub_1B7A97590();
  v5 = sub_1B7A1D0E0();
  WitnessTable = swift_getWitnessTable();
  v77 = v5;
  v78 = WitnessTable;
  v6 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v37[1] = sub_1B7A97690();
  v7 = a1[3];
  v42 = a1[4];
  v40 = v7;
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97B40();
  v8 = sub_1B7A985B0();
  v41 = MEMORY[0x1E6981870];
  v9 = swift_getWitnessTable();
  v39 = a1[6];
  v75 = v9;
  v76 = v39;
  v37[2] = MEMORY[0x1E697F968];
  v74 = swift_getWitnessTable();
  v70 = v8;
  v71 = &type metadata for ComponentModelViewID;
  v72 = swift_getWitnessTable();
  v73 = sub_1B7A1D2A8(v72, v10, v11);
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97E00();
  v12 = sub_1B7A97590();
  v68 = swift_getWitnessTable();
  v69 = sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8, &qword_1B7AA33D0);
  v66 = swift_getWitnessTable();
  v67 = sub_1B79F8F4C(v66, v13, v14);
  v64 = swift_getWitnessTable();
  v65 = sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v15 = swift_getWitnessTable();
  type metadata accessor for _ResolvedVerticalShelfLayout(255, v12, v15, v16);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97B40();
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = MEMORY[0x1E697E5D8];
  v62 = v18;
  v63 = MEMORY[0x1E697E5D8];
  v60 = swift_getWitnessTable();
  v61 = v19;
  v37[0] = v6;
  v58 = swift_getWitnessTable();
  v59 = MEMORY[0x1E697EBF8];
  v56 = swift_getWitnessTable();
  v57 = WitnessTable;
  v54 = v17;
  v55 = swift_getWitnessTable();
  swift_getWitnessTable();
  v20 = sub_1B7A987E0();
  WitnessTable = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v37 - v21;
  v23 = sub_1B7A97590();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v37 - v28;
  sub_1B7A97990();
  *&v31 = v42;
  *&v30 = v43;
  *(&v30 + 1) = v40;
  *(&v31 + 1) = v44;
  v47 = v30;
  v48 = v31;
  v32 = a1[7];
  v49 = v39;
  v50 = v32;
  v51 = v45;
  sub_1B7A987D0();
  sub_1B7A98A20();
  v36 = swift_getWitnessTable();
  sub_1B7A98410();
  (*(WitnessTable + 8))(v22, v20);
  v52 = v36;
  v53 = MEMORY[0x1E697EBF8];
  v33 = swift_getWitnessTable();
  sub_1B7957EE0(v26, v23, v33);
  v34 = *(v24 + 8);
  v34(v26, v23);
  sub_1B7957EE0(v29, v23, v33);
  return (v34)(v29, v23);
}

uint64_t sub_1B7A19374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v137 = a6;
  *(&v137 + 1) = a7;
  v142 = a5;
  v135 = a1;
  v131 = a8;
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97B40();
  v12 = sub_1B7A985B0();
  WitnessTable = swift_getWitnessTable();
  v227 = a6;
  v225 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v16 = sub_1B7A1D2A8(v13, v14, v15);
  *&v216[0] = v12;
  *(&v216[0] + 1) = &type metadata for ComponentModelViewID;
  *&v216[1] = v13;
  *(&v216[1] + 1) = v16;
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97E00();
  v17 = sub_1B7A97590();
  v18 = swift_getWitnessTable();
  v19 = sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8, &qword_1B7AA33D0);
  v223 = v18;
  v224 = v19;
  v20 = swift_getWitnessTable();
  v23 = sub_1B79F8F4C(v20, v21, v22);
  v221 = v20;
  v222 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v219 = v24;
  v220 = v25;
  v117 = swift_getWitnessTable();
  v118 = v17;
  v140 = type metadata accessor for _ResolvedVerticalShelfLayout(255, v17, v117, v26);
  v141 = sub_1B7A97590();
  v136 = sub_1B7A97590();
  v27 = sub_1B7A97590();
  v28 = v142;
  type metadata accessor for UnifiedImpressionableLayoutViewModifier(255, a2, v142, v29);
  v133 = v27;
  v30 = sub_1B7A97590();
  v122 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v121 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v119 = &v113 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v120 = &v113 - v35;
  v139 = a2;
  *&v216[0] = a2;
  v125 = a3;
  v126 = a4;
  *(&v216[0] + 1) = a3;
  *&v216[1] = a4;
  *(&v216[1] + 1) = v28;
  v216[2] = v137;
  v36 = type metadata accessor for ShelfGrid(0, v216);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v123 = &v113 - v39;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48650, &qword_1B7AA33B8);
  v40 = sub_1B7A97590();
  v41 = sub_1B7A1D0E0();
  v42 = swift_getWitnessTable();
  v217 = v41;
  v218 = v42;
  v138 = v42;
  v115 = swift_getWitnessTable();
  v116 = v40;
  v43 = sub_1B7A97690();
  v132 = v30;
  v44 = sub_1B7A97B40();
  v129 = *(v44 - 8);
  v130 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v113 - v45;
  sub_1B7A9A760();
  v128 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v47 = v135;
  sub_1B7A162D8(v36, v228);
  v124 = *v228;
  v127 = v43;
  v48 = MEMORY[0x1E697EBF8];
  v134 = v46;
  if (((1 << (v230 >> 5)) & 0x13) == 0)
  {
    v116 = sub_1B7A98D30();
    v69 = v47 + *(v36 + 76);
    v70 = *v69;
    v71 = *(v69 + 8);
    v72 = *(v69 + 16);
    LOBYTE(v69) = *(v69 + 24);
    v189 = v70;
    v190 = v71;
    v191 = v72;
    v192 = v69;
    v73 = *(&v229 + 1);
    v74 = v229;
    v75 = v230 >> 5;
    if (v75 <= 2)
    {
      if (v75 == 1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (v75 == 3)
    {
      v74 = *&v228[8];
      v73 = *&v228[16];
    }

    else
    {
      if (v75 == 4)
      {
        if ((v230 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v74 = *&v228[8];
      v73 = *&v228[16];
      if (v228[24])
      {
LABEL_14:
        v74 = sub_1B7A989F0();
      }
    }

LABEL_15:
    v115 = v73;
    sub_1B7A1662C(v36, v216);
    v76 = v123;
    (*(v37 + 16))(v123, v47, v36);
    v77 = (*(v37 + 80) + 64) & ~*(v37 + 80);
    v78 = swift_allocObject();
    v79 = v125;
    v80 = v126;
    *(v78 + 2) = v139;
    *(v78 + 3) = v79;
    v81 = v142;
    *(v78 + 4) = v80;
    *(v78 + 5) = v81;
    v82 = *(&v137 + 1);
    *(v78 + 6) = v137;
    *(v78 + 7) = v82;
    v83 = *(v37 + 32);
    v114 = v36;
    v83(&v78[v77], v76, v36);
    v84 = &v78[(v38 + v77 + 7) & 0xFFFFFFFFFFFFFFF8];
    v85 = *&v228[16];
    *v84 = *v228;
    *(v84 + 1) = v85;
    *(v84 + 2) = v229;
    v84[48] = v230;
    sub_1B79CD298(v116, v124, &v189, v74, v115, v216, sub_1B7A1F1DC, v78, v187);
    sub_1B7A1F2D4(v228, v216);
    sub_1B7A97F00();
    v86 = v135;
    v87 = v140;
    v88 = swift_getWitnessTable();
    sub_1B7A98450();
    v185[4] = v187[4];
    v185[5] = v187[5];
    v186 = v188;
    v185[0] = v187[0];
    v185[1] = v187[1];
    v185[2] = v187[2];
    v185[3] = v187[3];
    (*(*(v87 - 8) + 8))(v185, v87);
    v181 = v199;
    v182 = v200;
    v183 = v201;
    v184 = v202;
    v177 = v195;
    v178 = v196;
    v179 = v197;
    v180 = v198;
    v175 = v193;
    v176 = v194;
    sub_1B7A97F20();
    v168 = v88;
    v169 = MEMORY[0x1E697E5D8];
    *(&v137 + 1) = MEMORY[0x1E697E858];
    v89 = v141;
    v90 = swift_getWitnessTable();
    sub_1B7A98450();
    v170[6] = v181;
    v170[7] = v182;
    v170[8] = v183;
    v171 = v184;
    v170[2] = v177;
    v170[3] = v178;
    v170[4] = v179;
    v170[5] = v180;
    v170[0] = v175;
    v170[1] = v176;
    (*(*(v89 - 8) + 8))(v170, v89);
    v174[10] = v213;
    v174[11] = v214;
    LOBYTE(v174[12]) = v215;
    v174[6] = v209;
    v174[7] = v210;
    v174[8] = v211;
    v174[9] = v212;
    v174[2] = v205;
    v174[3] = v206;
    v174[4] = v207;
    v174[5] = v208;
    v174[0] = v203;
    v174[1] = v204;
    v91 = v114;
    sub_1B7A164C4(v114);
    sub_1B7A98A20();
    v166 = v90;
    v167 = MEMORY[0x1E697E5D8];
    v111 = v136;
    v112 = swift_getWitnessTable();
    sub_1B7A98410();
    v172[10] = v174[10];
    v172[11] = v174[11];
    v173 = v174[12];
    v172[6] = v174[6];
    v172[7] = v174[7];
    v172[8] = v174[8];
    v172[9] = v174[9];
    v172[2] = v174[2];
    v172[3] = v174[3];
    v172[4] = v174[4];
    v172[5] = v174[5];
    v172[0] = v174[0];
    v172[1] = v174[1];
    (*(*(v111 - 8) + 8))(v172, v111);
    memcpy(v165, v216, sizeof(v165));
    v92 = v86 + *(v91 + 80);
    v93 = *v92;
    v94 = *(v92 + 8);
    v163 = v112;
    v164 = MEMORY[0x1E697EBF8];
    v95 = v133;
    v96 = swift_getWitnessTable();
    v97 = v119;
    View.unifiedImpressionableLayout<A>(_:position:definesParentContext:)(v86, v93, v94, 1u, v95, v139, v96, v142, v119);
    memcpy(v174, v165, 0x138uLL);
    (*(*(v95 - 8) + 8))(v174, v95);
    v161 = v96;
    v162 = v138;
    v98 = v132;
    v99 = swift_getWitnessTable();
    v100 = v120;
    sub_1B7957EE0(v97, v98, v99);
    v101 = *(v122 + 8);
    v101(v97, v98);
    v102 = v121;
    sub_1B7957EE0(v100, v98, v99);
    v103 = v127;
    v104 = swift_getWitnessTable();
    v68 = v134;
    sub_1B7959A28(v102, v103, v98, v104, v99);
    sub_1B7A1F330(v228);
    v101(v102, v98);
    v105 = v100;
    v61 = MEMORY[0x1E697EBF8];
    v101(v105, v98);
    v65 = MEMORY[0x1E697E5D8];
    goto LABEL_16;
  }

  v216[0] = *&v228[8];
  LOBYTE(v216[1]) = v228[24];
  v122 = sub_1B7A16D20(v216, v36);
  v49 = v123;
  (*(v37 + 16))(v123, v47, v36);
  v50 = (*(v37 + 80) + 64) & ~*(v37 + 80);
  v51 = v48;
  v52 = (v38 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v125;
  v55 = v126;
  *(v53 + 2) = v139;
  *(v53 + 3) = v54;
  v56 = v142;
  *(v53 + 4) = v55;
  *(v53 + 5) = v56;
  v57 = *(&v137 + 1);
  *(v53 + 6) = v137;
  *(v53 + 7) = v57;
  (*(v37 + 32))(&v53[v50], v49, v36);
  *&v53[v52] = v124;
  v58 = &v53[(v52 + 15) & 0xFFFFFFFFFFFFFFF8];
  v58[48] = v230;
  v59 = v229;
  v60 = *v228;
  *(v58 + 1) = *&v228[16];
  *(v58 + 2) = v59;
  *v58 = v60;
  *&v53[(v52 + 71) & 0xFFFFFFFFFFFFFFF8] = v122;
  sub_1B7A1F2D4(v228, v216);
  v61 = v51;
  *&v174[0] = sub_1B7A97680();
  *(&v174[0] + 1) = v62;
  v63 = v127;
  v64 = swift_getWitnessTable();
  sub_1B7957EE0(v174, v63, v64);

  *v165 = v216[0];
  sub_1B7957EE0(v165, v63, v64);
  *v165 = v174[0];

  v149 = swift_getWitnessTable();
  v65 = MEMORY[0x1E697E5D8];
  v150 = MEMORY[0x1E697E5D8];
  v147 = swift_getWitnessTable();
  v148 = v65;
  v145 = swift_getWitnessTable();
  v146 = v61;
  v143 = swift_getWitnessTable();
  v144 = v138;
  v66 = v132;
  v67 = swift_getWitnessTable();
  sub_1B79B5878(v165, v63, v66, v64, v67);
  sub_1B7A1F330(v228);

  v68 = v134;

LABEL_16:
  v106 = swift_getWitnessTable();
  v159 = swift_getWitnessTable();
  v160 = v65;
  v157 = swift_getWitnessTable();
  v158 = v65;
  v155 = swift_getWitnessTable();
  v156 = v61;
  v153 = swift_getWitnessTable();
  v154 = v138;
  v107 = swift_getWitnessTable();
  v151 = v106;
  v152 = v107;
  v108 = v130;
  v109 = swift_getWitnessTable();
  sub_1B7957EE0(v68, v108, v109);
  (*(v129 + 8))(v68, v108);
}

uint64_t sub_1B7A1A400@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v164 = a5;
  v161 = a4;
  v162 = a1;
  v152 = a2;
  v153 = a3;
  v159 = a8;
  v155 = a11;
  v163 = a9;
  v13 = sub_1B7A97D60();
  v157 = *(v13 - 8);
  v158 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v156 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B7A97B60();
  v150 = *(v15 - 8);
  v151 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v149 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = a7;
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97B40();
  v17 = sub_1B7A985B0();
  WitnessTable = swift_getWitnessTable();
  v183 = a10;
  v154 = a10;
  v181 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v21 = sub_1B7A1D2A8(v18, v19, v20);
  *&v184 = v17;
  *(&v184 + 1) = &type metadata for ComponentModelViewID;
  *&v185 = v18;
  *(&v185 + 1) = v21;
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97E00();
  sub_1B7A97590();
  v22 = sub_1B7A97590();
  v23 = swift_getWitnessTable();
  v24 = sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8, &qword_1B7AA33D0);
  v179 = v23;
  v180 = v24;
  v25 = swift_getWitnessTable();
  v28 = sub_1B79F8F4C(v25, v26, v27);
  v177 = v25;
  v178 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v175 = v29;
  v176 = v30;
  v173 = swift_getWitnessTable();
  v174 = MEMORY[0x1E697E040];
  v31 = swift_getWitnessTable();
  v33 = type metadata accessor for _ResolvedHorizontalShelfLayout(255, v22, v31, v32);
  v34 = swift_getWitnessTable();
  v136 = v33;
  v133 = v34;
  v35 = sub_1B7A97050();
  v138 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v134 = &v118 - v36;
  v37 = swift_getWitnessTable();
  *&v184 = v35;
  *(&v184 + 1) = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v135 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v40 = &v118 - v39;
  v41 = v35;
  *&v184 = v35;
  *(&v184 + 1) = v37;
  v127 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v184 = OpaqueTypeMetadata2;
  *(&v184 + 1) = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeMetadata2();
  v129 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v124 = &v118 - v44;
  v125 = OpaqueTypeConformance2;
  v137 = OpaqueTypeMetadata2;
  *&v184 = OpaqueTypeMetadata2;
  *(&v184 + 1) = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  *&v184 = v43;
  *(&v184 + 1) = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v122 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v119 = &v118 - v47;
  v120 = v45;
  v131 = v43;
  *&v184 = v43;
  *(&v184 + 1) = v45;
  v48 = swift_getOpaqueTypeConformance2();
  v130 = v46;
  *&v184 = v46;
  *(&v184 + 1) = v48;
  v121 = v48;
  v128 = swift_getOpaqueTypeMetadata2();
  v126 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v123 = &v118 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48748, &qword_1B7AA35A0);
  v139 = *(v50 - 8);
  v140 = v50;
  MEMORY[0x1EEE9AC00](v50);
  v160 = &v118 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48650, &qword_1B7AA33B8);
  MEMORY[0x1EEE9AC00](v52);
  v142 = &v118 - v53;
  v55 = type metadata accessor for UnifiedImpressionableLayoutViewModifier(255, v164, v163, v54);
  v143 = v52;
  v141 = v55;
  v56 = sub_1B7A97590();
  v147 = *(v56 - 8);
  v148 = v56;
  MEMORY[0x1EEE9AC00](v56);
  v145 = &v118 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v146 = &v118 - v59;
  sub_1B7A9A760();
  v144 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v60 = sub_1B7A97EA0();
  MEMORY[0x1EEE9AC00](v60);
  v61 = v164;
  *(&v118 - 10) = v164;
  *(&v118 - 9) = a6;
  v62 = v132;
  v118 = a6;
  v63 = v162;
  v64 = v163;
  *(&v118 - 8) = v132;
  *(&v118 - 7) = v64;
  v65 = v154;
  v66 = v155;
  v112 = v154;
  v113 = v155;
  v114 = v63;
  v115 = v152;
  v116 = v153;
  v117 = v161;
  v67 = v134;
  sub_1B7A3879C(v68, sub_1B7A1F48C);
  v69 = v149;
  sub_1B7A97B50();
  sub_1B7A97EA0();
  sub_1B7A982F0();
  (*(v150 + 8))(v69, v151);
  (*(v138 + 8))(v67, v41);
  *&v184 = v61;
  *(&v184 + 1) = v118;
  *&v185 = v62;
  *(&v185 + 1) = v64;
  *&v186 = v65;
  *(&v186 + 1) = v66;
  v70 = type metadata accessor for ShelfGrid(0, &v184);
  v71 = v162;
  sub_1B7A164C4(v70);
  v72 = v124;
  v73 = v137;
  sub_1B7A98290();
  v74 = v40;
  v75 = v71;
  (*(v135 + 8))(v74, v73);
  sub_1B7A97F00();
  v76 = v119;
  v77 = v131;
  sub_1B7A98300();
  (*(v129 + 8))(v72, v77);
  sub_1B7A97F20();
  v78 = v123;
  v79 = v130;
  v80 = v121;
  sub_1B7A98300();
  (*(v122 + 8))(v76, v79);
  sub_1B7A16788(v70, &v184);
  v81 = v75 + *(v70 + 76);
  v82 = *v81;
  v83 = *(v81 + 8);
  v84 = *(v81 + 16);
  LOBYTE(v81) = *(v81 + 24);
  v168 = v80;
  v169 = v82;
  v170 = v83;
  v171 = v84;
  v172 = v81;
  v167 = v79;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = v128;
  sub_1B7A1BEE4(&v184, v161, &v169, v128, v85, &v167);
  __swift_destroy_boxed_opaque_existential_1(&v184);
  (*(v126 + 8))(v78, v86);
  v87 = v167;
  v88 = v168;
  *&v184 = v167;
  BYTE8(v184) = v168;
  v89 = v156;
  sub_1B7A97D40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48750, &qword_1B7AA35A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D270;
  v91 = sub_1B7A97EC0();
  *(inited + 32) = v91;
  v92 = sub_1B7A97EA0();
  *(inited + 33) = v92;
  sub_1B7A97EB0();
  sub_1B7A97EB0();
  if (sub_1B7A97EB0() != v91)
  {
    sub_1B7A97EB0();
  }

  sub_1B7A97EB0();
  if (sub_1B7A97EB0() != v92)
  {
    sub_1B7A97EB0();
  }

  v93 = v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48660, &qword_1B7AA33C0);
  sub_1B7A1D1A8();
  sub_1B7A98230();
  (*(v157 + 8))(v89, v158);
  sub_1B7A1F4C4(v87, v88);
  sub_1B7A164C4(v70);
  v116 = sub_1B7A98A20();
  v117 = v94;
  LOBYTE(v115) = 1;
  v114 = 0;
  LOBYTE(v113) = 1;
  v112 = 0;
  sub_1B7A976F0();
  v95 = v142;
  (*(v139 + 32))(v142, v93, v140);
  v96 = v143;
  v97 = (v95 + *(v143 + 36));
  v98 = v189;
  v97[4] = v188;
  v97[5] = v98;
  v97[6] = v190;
  v99 = v185;
  *v97 = v184;
  v97[1] = v99;
  v100 = v187;
  v97[2] = v186;
  v97[3] = v100;
  v101 = v75 + *(v70 + 80);
  v102 = *v101;
  v103 = *(v101 + 8);
  v104 = sub_1B7A1D0E0();
  v105 = v145;
  View.unifiedImpressionableLayout<A>(_:position:definesParentContext:)(v75, v102, v103, 1u, v96, v164, v104, v163, v145);
  sub_1B79694AC(v95);
  v106 = swift_getWitnessTable();
  v165 = v104;
  v166 = v106;
  v107 = v148;
  v108 = swift_getWitnessTable();
  v109 = v146;
  sub_1B7957EE0(v105, v107, v108);
  v110 = *(v147 + 8);
  v110(v105, v107);
  sub_1B7957EE0(v109, v107, v108);
  v110(v109, v107);
}

uint64_t sub_1B7A1B310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10)
{
  v68 = a4;
  v62 = a2;
  v64 = a9;
  *&v95 = a5;
  *(&v95 + 1) = a6;
  v56 = a6;
  v57 = *(&a10 + 1);
  v58 = a7;
  *&v96 = a7;
  *(&v96 + 1) = a8;
  v65 = a8;
  v67 = a10;
  v97 = a10;
  v13 = type metadata accessor for ShelfGrid(0, &v95);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v16;
  sub_1B7A9A760();
  v63 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v61 = sub_1B7A98D30();
  v18 = a1 + *(v13 + 76);
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  LOBYTE(v18) = *(v18 + 24);
  v91 = v19;
  v92 = v20;
  v93 = v21;
  v94 = v18;
  v22 = *(a3 + 4);
  v23 = *(a3 + 5);
  v24 = *(a3 + 48);
  v25 = v24 >> 5;
  v66 = a3;
  if (v24 >> 5 <= 2)
  {
    if (v25 == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v25 == 3)
  {
    v22 = *(a3 + 1);
    v23 = *(a3 + 2);
  }

  else
  {
    if (v25 == 4)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v22 = *(a3 + 1);
    v23 = *(a3 + 2);
    if (*(a3 + 24))
    {
LABEL_12:
      v22 = sub_1B7A989F0();
    }
  }

LABEL_13:
  v59 = v22;
  v60 = v23;
  v26 = v14;
  (*(v14 + 16))(v17, a1, v13);
  v27 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v28 = swift_allocObject();
  v29 = v56;
  *(v28 + 2) = a5;
  *(v28 + 3) = v29;
  v30 = v65;
  *(v28 + 4) = v58;
  *(v28 + 5) = v30;
  v31 = v57;
  *(v28 + 6) = v67;
  *(v28 + 7) = v31;
  (*(v26 + 32))(&v28[v27], v17, v13);
  v32 = &v28[(v27 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  v33 = v66;
  v34 = v66[1];
  *v32 = *v66;
  *(v32 + 1) = v34;
  *(v32 + 2) = v33[2];
  v32[48] = *(v33 + 48);
  *&v28[(v27 + v15 + 63) & 0xFFFFFFFFFFFFFFF8] = v68;
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97B40();
  v35 = sub_1B7A985B0();
  WitnessTable = swift_getWitnessTable();
  v84 = v67;
  v82 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v39 = sub_1B7A1D2A8(v36, v37, v38);
  *&v95 = v35;
  *(&v95 + 1) = &type metadata for ComponentModelViewID;
  *&v96 = v36;
  *(&v96 + 1) = v39;
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97E00();
  sub_1B7A97590();
  v40 = sub_1B7A97590();
  v41 = swift_getWitnessTable();
  v42 = sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8, &qword_1B7AA33D0);
  v80 = v41;
  v81 = v42;
  v43 = swift_getWitnessTable();
  v46 = sub_1B79F8F4C(v43, v44, v45);
  v78 = v43;
  v79 = v46;
  v47 = swift_getWitnessTable();
  v48 = sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v76 = v47;
  v77 = v48;
  v74 = swift_getWitnessTable();
  v75 = MEMORY[0x1E697E040];
  v54 = swift_getWitnessTable();
  sub_1B7A68240(v61, v62, &v91, v59, v60, sub_1B7A1F59C, v28, &v86);
  v50 = type metadata accessor for _ResolvedHorizontalShelfLayout(0, v40, v54, v49);
  v51 = swift_getWitnessTable();
  sub_1B7957EE0(&v86, v50, v51);
  v85[2] = v88;
  v85[3] = v89;
  v85[4] = v90;
  v85[0] = v86;
  v85[1] = v87;
  sub_1B7A1F2D4(v66, &v69);
  v52 = *(*(v50 - 8) + 8);

  v52(v85, v50);
  v71 = v97;
  v72 = v98;
  v73 = v99;
  v69 = v95;
  v70 = v96;
  sub_1B7957EE0(&v69, v50, v51);
  v88 = v71;
  v89 = v72;
  v90 = v73;
  v86 = v69;
  v87 = v70;
  v52(&v86, v50);
}

uint64_t sub_1B7A1B980@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = a1;
  v55 = a7;
  v49 = a8;
  v50 = a4;
  v53 = a2;
  v56 = a11;
  v51 = a10;
  v52 = a6;
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97B40();
  v13 = sub_1B7A985B0();
  WitnessTable = swift_getWitnessTable();
  v78 = a10;
  v76 = swift_getWitnessTable();
  v66 = v13;
  v67 = &type metadata for ComponentModelViewID;
  v68 = swift_getWitnessTable();
  v69 = sub_1B7A1D2A8(v68, v14, v15);
  v16 = sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  v44[0] = v16;
  v44[1] = sub_1B7A97590();
  v17 = sub_1B7A97590();
  sub_1B7A97E00();
  v44[2] = v17;
  v18 = sub_1B7A97590();
  v47 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v44 - v19;
  v21 = sub_1B7A97590();
  v48 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v45 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v46 = v44 - v24;
  sub_1B7999E90(v53, &v67);
  v25 = a5;
  v26 = *(sub_1B7A98D30() + 16);

  v27 = v54;
  v70 = v54;
  v66 = v26;
  v28 = a3[1];
  v71 = *a3;
  v72 = v28;
  v73 = a3[2];
  v74 = *(a3 + 48);
  v75 = 2;
  sub_1B7A1F2D4(a3, v65);
  v65[0] = v25;
  v65[1] = v52;
  v65[2] = v55;
  v65[3] = a9;
  v65[4] = v51;
  v65[5] = v56;
  v29 = type metadata accessor for ShelfGrid(0, v65);
  sub_1B7A170EC(&v66, v29, v20);
  result = sub_1B7A1F6A0(&v66);
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v50 + 16) > v27)
  {
    v56 = sub_1B7A98A30();
    v31 = swift_getWitnessTable();
    v32 = sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8, &qword_1B7AA33D0);
    v63 = v31;
    v64 = v32;
    v33 = swift_getWitnessTable();
    v36 = sub_1B79F8F4C(v33, v34, v35);
    v61 = v33;
    v62 = v36;
    v37 = swift_getWitnessTable();
    v38 = sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    v59 = v37;
    v60 = v38;
    v39 = swift_getWitnessTable();
    v40 = v45;
    sub_1B7A98400();
    (*(v47 + 8))(v20, v18);
    v57 = v39;
    v58 = MEMORY[0x1E697E040];
    v41 = swift_getWitnessTable();
    v42 = v46;
    sub_1B7957EE0(v40, v21, v41);
    v43 = *(v48 + 8);
    v43(v40, v21);
    sub_1B7957EE0(v42, v21, v41);
    return (v43)(v42, v21);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7A1BEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v90 = a2;
  v105 = a1;
  v106 = a6;
  *&v117 = a4;
  *(&v117 + 1) = sub_1B7A97E50();
  *&v118 = a5;
  *(&v118 + 1) = MEMORY[0x1E697CC08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v97 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v95 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v82 - v11;
  v94 = sub_1B7A97E30();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v82 - v14;
  v16 = swift_checkMetadataState();
  v104 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82 - v17;
  v19 = MEMORY[0x1E697C890];
  *&v117 = a4;
  *(&v117 + 1) = MEMORY[0x1E697C890];
  v20 = MEMORY[0x1E697C888];
  *&v118 = a5;
  *(&v118 + 1) = MEMORY[0x1E697C888];
  v21 = swift_getOpaqueTypeMetadata2();
  v99 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v84 = &v82 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v88 = &v82 - v26;
  *&v117 = a4;
  *(&v117 + 1) = v19;
  *&v118 = a5;
  *(&v118 + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v117 = v21;
  *(&v117 + 1) = v16;
  v103 = OpaqueTypeConformance2;
  *&v118 = OpaqueTypeConformance2;
  *(&v118 + 1) = MEMORY[0x1E697CC08];
  v28 = swift_getOpaqueTypeMetadata2();
  v91 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v89 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v86 = &v82 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v87 = &v82 - v33;
  v34 = sub_1B7A97B40();
  v102 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v101 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v100 = &v82 - v37;
  v38 = *a3;
  v83 = *(a3 + 8);
  v82 = a3[2];
  v39 = *(a3 + 24);
  sub_1B79948D0(v105, &v109);
  if (swift_dynamicCast())
  {
    LODWORD(v95) = v39;
    v96 = v15;
    v97 = v18;
    v105 = v34;
    OpaqueTypeMetadata2 = v16;
    v117 = v115[0];
    v118 = v115[1];
    v119 = v116;
    sub_1B7A1D64C(v115);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48688, &qword_1B7AA3400);
    if (swift_dynamicCast())
    {

      sub_1B7A1D528(v90, &v109);
      sub_1B7A1D64C(v115);
      v40 = swift_dynamicCast();
      if (v40)
      {
        v43 = v38;
        v44 = v107;
        v45 = v108;
        v46 = sub_1B7A1F4D8(v40, v41, v42);
        v47 = swift_allocObject();
        *(v47 + 16) = v44;
        *(v47 + 24) = v43;
        *(v47 + 32) = v83;
        *(v47 + 40) = v82;
        *(v47 + 48) = v95;
        *(v47 + 49) = v45;
        sub_1B7A1D9D8(&v109);
        v48 = &type metadata for _CenterAlignedShelfGridScrollTargetBehavior;
      }

      else
      {
        v47 = v109;
        v107 = v110;
        v48 = v111;
        v46 = v112;
      }

      v65 = v104;
      v66 = v97;
      *&v115[0] = v47;
      *(v115 + 8) = v107;
      *(&v115[1] + 1) = v48;
      v116 = v46;
      v67 = v88;
      sub_1B7A98310();
      sub_1B7A1D9D8(v115);
      v68 = v96;
      sub_1B7A97E10();
      v69 = v93;
      v70 = v94;
      (*(v93 + 16))(v92, v68, v94);
      sub_1B7A97E40();
      (*(v69 + 8))(v68, v70);
      v71 = v86;
      v62 = OpaqueTypeMetadata2;
      v60 = v103;
      v72 = MEMORY[0x1E697CC08];
      sub_1B7A98310();
      (*(v65 + 8))(v66, v62);
      (*(v99 + 8))(v67, v21);
      *&v115[0] = v21;
      *(&v115[0] + 1) = v62;
      *&v115[1] = v60;
      *(&v115[1] + 1) = v72;
      v73 = swift_getOpaqueTypeConformance2();
      v74 = v87;
      sub_1B7957EE0(v71, v28, v73);
      v75 = *(v91 + 8);
      v75(v71, v28);
      v76 = v89;
      sub_1B7957EE0(v74, v28, v73);
      v64 = v100;
      sub_1B79B5878(v76, v28, v21, v73, v60);
      v75(v76, v28);
      v75(v74, v28);
    }

    else
    {
      v58 = v85;
      sub_1B7A98310();
      v59 = v84;
      v60 = v103;
      sub_1B7957EE0(v58, v21, v103);
      v61 = *(v99 + 8);
      v61(v58, v21);
      sub_1B7957EE0(v59, v21, v60);
      v62 = OpaqueTypeMetadata2;
      *&v115[0] = v21;
      *(&v115[0] + 1) = OpaqueTypeMetadata2;
      *&v115[1] = v60;
      *(&v115[1] + 1) = MEMORY[0x1E697CC08];
      v63 = swift_getOpaqueTypeConformance2();
      v64 = v100;
      sub_1B7959A28(v58, v28, v21, v63, v60);
      v61(v58, v21);
      v61(v59, v21);
    }

    v77 = v105;
    *&v115[0] = v21;
    *(&v115[0] + 1) = v62;
    *&v115[1] = v60;
    *(&v115[1] + 1) = MEMORY[0x1E697CC08];
    v113 = swift_getOpaqueTypeConformance2();
    v114 = v60;
    WitnessTable = swift_getWitnessTable();
    v79 = v101;
    sub_1B7957EE0(v64, v77, WitnessTable);
    v109 = sub_1B79F770C(v79, v77, WitnessTable);
    LOBYTE(v110) = 0;
    sub_1B7A97B30();
    v80 = *(v102 + 8);
    v80(v79, v77);
    v80(v64, v77);
    result = sub_1B7A1D9D8(&v117);
    v56 = *&v115[0];
    v57 = BYTE8(v115[0]);
  }

  else
  {
    v116 = 0;
    memset(v115, 0, sizeof(v115));
    sub_1B7957888(v115, qword_1EBA48690, &unk_1B7AA3408);
    sub_1B7A97E20();
    sub_1B7A97E40();
    v49 = v95;
    v50 = MEMORY[0x1E697CC08];
    sub_1B7A98310();
    (*(v104 + 8))(v18, v16);
    *&v117 = a4;
    *(&v117 + 1) = v16;
    *&v118 = a5;
    *(&v118 + 1) = v50;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = v96;
    v53 = OpaqueTypeMetadata2;
    sub_1B7957EE0(v49, OpaqueTypeMetadata2, v51);
    v54 = *(v97 + 1);
    v54(v49, v53);
    sub_1B7957EE0(v52, v53, v51);
    *&v115[0] = sub_1B79F770C(v49, v53, v51);
    BYTE8(v115[0]) = 1;
    sub_1B7A97B30();
    v54(v49, v53);
    result = (v54)(v52, v53);
    v56 = v117;
    v57 = BYTE8(v117);
  }

  v81 = v106;
  *v106 = v56;
  *(v81 + 8) = v57;
  return result;
}

uint64_t sub_1B7A1CB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v39 = a6;
  v40 = a2;
  v42 = a1;
  v43 = a8;
  v41 = a10;
  v37[0] = a9;
  v38 = a5;
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97B40();
  v13 = sub_1B7A985B0();
  WitnessTable = swift_getWitnessTable();
  v63 = a9;
  v61 = swift_getWitnessTable();
  v51 = v13;
  v52 = &type metadata for ComponentModelViewID;
  v53 = swift_getWitnessTable();
  v54 = sub_1B7A1D2A8(v53, v14, v15);
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  v37[1] = sub_1B7A97590();
  v37[2] = sub_1B7A97590();
  sub_1B7A97E00();
  v16 = sub_1B7A97590();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v37 - v21;
  sub_1B7999E90(v40, &v52);
  v23 = *(sub_1B7A98D30() + 16);

  v50[0] = a4;
  v50[1] = v38;
  v50[2] = v39;
  v50[3] = a7;
  v50[4] = v37[0];
  v50[5] = v41;
  v24 = type metadata accessor for ShelfGrid(0, v50);
  sub_1B7A1662C(v24, v50);
  v55 = v42;
  v51 = v23;
  v25 = a3[1];
  v56 = *a3;
  v57 = v25;
  v58 = a3[2];
  v59 = *(a3 + 48);
  v60 = v50[0];
  sub_1B7A1F2D4(a3, v50);
  sub_1B7A170EC(&v51, v24, v19);
  sub_1B7A1F6A0(&v51);
  v26 = swift_getWitnessTable();
  v27 = sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8, &qword_1B7AA33D0);
  v48 = v26;
  v49 = v27;
  v28 = swift_getWitnessTable();
  v31 = sub_1B79F8F4C(v28, v29, v30);
  v46 = v28;
  v47 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v44 = v32;
  v45 = v33;
  v34 = swift_getWitnessTable();
  sub_1B7957EE0(v19, v16, v34);
  v35 = *(v17 + 8);
  v35(v19, v16);
  sub_1B7957EE0(v22, v16, v34);
  return (v35)(v22, v16);
}

uint64_t sub_1B7A1D050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A1D08C(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

unint64_t sub_1B7A1D08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48648;
  if (!qword_1EBA48648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48648);
  }

  return result;
}

unint64_t sub_1B7A1D0E0()
{
  result = qword_1EBA48658;
  if (!qword_1EBA48658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48650, &qword_1B7AA33B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48660, &qword_1B7AA33C0);
    sub_1B7A1D1A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48658);
  }

  return result;
}

unint64_t sub_1B7A1D1A8()
{
  result = qword_1EBA48668;
  if (!qword_1EBA48668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48660, &qword_1B7AA33C0);
    sub_1B7A1D22C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48668);
  }

  return result;
}

unint64_t sub_1B7A1D22C()
{
  result = qword_1EBA48670;
  if (!qword_1EBA48670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48678, &qword_1B7AA33C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48670);
  }

  return result;
}

unint64_t sub_1B7A1D2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48680;
  if (!qword_1EBA48680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48680);
  }

  return result;
}

uint64_t sub_1B7A1D2FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t View.shelfGridIgnoresContainerHeightForItemWidth(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t sub_1B7A1D3CC@<X0>(uint64_t **a1@<X8>)
{
  v3 = sub_1B7A97E30();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  sub_1B7A97E10();
  (*(v4 + 16))(v6, v9, v3);
  a1[3] = MEMORY[0x1E697C890];
  v10 = swift_allocObject();
  *a1 = v10;
  v11 = sub_1B7A97E50();
  v12 = MEMORY[0x1E697CC08];
  v10[5] = v11;
  v10[6] = v12;
  __swift_allocate_boxed_opaque_existential_1Tm(v10 + 2);
  sub_1B7A97E40();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1B7A1D528@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B7A1D64C(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48688, &qword_1B7AA3400);
  if (!swift_dynamicCast())
  {
    return sub_1B7A1D97C(v2, a2);
  }

  v5 = 32;
  v6 = *(a1 + 16);
  do
  {
    v7 = v6;
    if (!v6)
    {
      break;
    }

    v8 = *(a1 + v5);
    v5 += 8;
    --v6;
  }

  while (v8 == *(a1 + 32));
  v9 = v7 == 0;

  a2[3] = &type metadata for _CenterAlignedShelfGridScrollTargetBehavior;
  a2[4] = sub_1B7A1F4D8(v10, v11, v12);
  result = swift_allocObject();
  *a2 = result;
  *(result + 16) = a1;
  *(result + 24) = v14;
  *(result + 32) = v15;
  *(result + 40) = v16;
  *(result + 48) = v17;
  *(result + 49) = v9;
  return result;
}

uint64_t sub_1B7A1D64C@<X0>(void *a1@<X8>)
{
  sub_1B7999E90(v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48688, &qword_1B7AA3400);
  if (swift_dynamicCast())
  {
    v8[0] = v4;
    v8[1] = v5;
    v9 = v6;
    sub_1B7A1D64C(a1);
    return sub_1B7A1D9D8(v8);
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    sub_1B7957888(&v4, qword_1EBA48690, &unk_1B7AA3408);
    return sub_1B7999E90(v1, a1);
  }
}

uint64_t ShelfGrid.horizontalScrollTargetBehavior(_:)(void *a1, uint64_t a2)
{
  sub_1B7999E90(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48688, &qword_1B7AA3400);
  v3 = MEMORY[0x1E697C890];
  if (swift_dynamicCast())
  {
    v14 = v10;
    v15 = v11;
    v16 = v12;
    swift_getKeyPath();
    v13[3] = v3;
    v13[0] = swift_allocObject();
    sub_1B7A1D97C(&v14, v13[0] + 16);
    swift_getWitnessTable();
    sub_1B7A98150();

    sub_1B7A1D9D8(&v14);
    v4 = v13;
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_1B7957888(&v10, qword_1EBA48690, &unk_1B7AA3408);
    swift_getKeyPath();
    v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = MEMORY[0x1EEE9AC00](v5);
    (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    *(&v15 + 1) = v3;
    *&v14 = swift_allocObject();
    sub_1B7A97CA0();
    swift_getWitnessTable();
    sub_1B7A98150();

    v4 = &v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void _CenterAlignedShelfGridScrollTargetBehavior.updateTarget(_:context:)(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v4 = sub_1B7A9A280();
  v91 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7A971B0();
  v90 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v84 - v11;
  v13 = sub_1B7A97220();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*v2 + 16);
  if (v17 >= 2)
  {
    v88 = *v2;
    v89 = a1;
    v85 = v17;
    v18 = v2[3];
    v19 = *(v2 + 33);
    v86 = *(v2 + 32);
    v87 = v19;
    sub_1B7A97DE0();
    v20 = sub_1B7A97EA0();
    sub_1B7A97EB0();
    if (sub_1B7A97EB0() != v20)
    {
      sub_1B7A9A220();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
      sub_1B7A98D10();
      *(swift_allocObject() + 16) = xmmword_1B7A9C180;
      sub_1B7A98C40();
      sub_1B7A99E60();

      (*(v91 + 8))(v6, v4);
      return;
    }

    sub_1B7A97DC0();
    sub_1B7A97210();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v31 = *(v14 + 8);
    v29 = v14 + 8;
    v30 = v31;
    v31(v16, v13);
    v94.origin.x = v22;
    v94.origin.y = v24;
    v94.size.width = v26;
    v94.size.height = v28;
    MinX = CGRectGetMinX(v94);
    sub_1B7A97210();
    v33 = CGRectGetMinX(v95);
    v34 = v88;
    if (MinX != v33)
    {
      v91 = v29;
      if (MinX < v33)
      {
        v35 = 1;
      }

      else
      {
        v35 = -1;
      }

      if (v86)
      {
        sub_1B7A971A0();
        sub_1B7A971A0();
        sub_1B7A97190();
        v18 = v36;
        v37 = *(v90 + 8);
        v37(v9, v7);
        v37(v12, v7);
        v34 = v88;
      }

      if (v87 && *(v34 + 16))
      {
        v38 = *(v34 + 32);
        sub_1B7A97DC0();
        sub_1B7A97210();
        v39 = CGRectGetMinX(v96);
        sub_1B7A97DD0();
        v41 = v40;
        v30(v16, v13);
        v42 = trunc((v39 + v41 * 0.5) / (v18 + v38));
        if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v42 > -9.22337204e18)
          {
            if (v42 < 9.22337204e18)
            {
              sub_1B7A97210();
              v43 = CGRectGetMinX(v97);
              sub_1B7A97DD0();
              v45 = trunc((v43 + v44 * 0.5) / (v18 + v38));
              if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v45 > -9.22337204e18)
                {
                  if (v45 < 9.22337204e18)
                  {
                    v46 = v42;
                    v47 = v45;
                    if (*&v42 != *&v45 || (v47 = v46 + v35, !__OFADD__(v46, v35)))
                    {
                      if (v47 >= (v85 - 1))
                      {
                        v47 = v85 - 1;
                      }

                      v48 = v38 * (v47 & ~(v47 >> 63)) + v18 * (v47 & ~(v47 >> 63));
                      v49 = 0.5;
                      v50 = v38 * 0.5 + v48;
                      goto LABEL_66;
                    }

LABEL_77:
                    __break(1u);
                    return;
                  }

LABEL_76:
                  __break(1u);
                  goto LABEL_77;
                }

LABEL_75:
                __break(1u);
                goto LABEL_76;
              }

LABEL_74:
              __break(1u);
              goto LABEL_75;
            }

LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      sub_1B7A97DC0();
      sub_1B7A97210();
      v51 = CGRectGetMinX(v98);
      sub_1B7A97DD0();
      v53 = v52;
      v30(v16, v13);
      sub_1B7A97210();
      v54 = CGRectGetMinX(v99);
      sub_1B7A97DD0();
      v56 = *(v88 + 16);
      if (v56)
      {
        v57 = 0;
        v58 = v51 + v53 * 0.5;
        v59 = v54 + v55 * 0.5;
        v60 = v85;
        v61 = v85 - 1;
        v62 = 0.0;
        v63 = -1;
        v64 = -1;
        v65 = -1;
        while (1)
        {
          v66 = *(v88 + 32 + 8 * v57);
          if ((v63 & 0x8000000000000000) == 0)
          {
            v64 = v65;
            if ((v65 & 0x8000000000000000) == 0)
            {
              v64 = v65;
              goto LABEL_49;
            }
          }

          if (v61 == v57)
          {
            break;
          }

          v67 = v18 + v62 + v66;
          if (v63 < 0 && v58 < v67 && v62 < v58)
          {
            v63 = v57;
          }

          v70 = v62 < v59;
          if (v59 >= v67)
          {
            v70 = 0;
          }

          if (v70 && v64 < 0)
          {
            v64 = v57;
            v65 = v57;
          }

          v62 = v62 + v18 + v66;
          if (v56 == ++v57)
          {
            goto LABEL_49;
          }
        }

        if (v64 < 0)
        {
          v64 = v85 - 1;
        }

        if (v63 < 0)
        {
          v63 = v85 - 1;
        }

LABEL_49:
        if (v63 != v64)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v63 = -1;
        v60 = v85;
      }

      v64 = v63 + v35;
      if (__OFADD__(v63, v35))
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v61 = v60 - 1;
LABEL_52:
      if (v64 >= v61)
      {
        v64 = v61;
      }

      if (v64 > v56)
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v71 = v64 & ~(v64 >> 63);
      if (v64 < 1)
      {
        v73 = 0.0;
        goto LABEL_64;
      }

      if (v64 > 3)
      {
        v72 = v64 & 0x7FFFFFFFFFFFFFFCLL;
        v74 = (v88 + 48);
        v73 = 0.0;
        v75 = v64 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v73 = v73 + *(v74 - 2) + *(v74 - 1) + *v74 + v74[1];
          v74 += 4;
          v75 -= 4;
        }

        while (v75);
        if (v64 == v72)
        {
LABEL_64:
          if (v71 < v56)
          {
            v79 = v18 * v71 + v73;
            v49 = 0.5;
            v50 = v79 + *(v88 + 32 + 8 * v71) * 0.5;
LABEL_66:
            sub_1B7A97DD0();
            v81 = v50 - v80 * v49;
            v82 = sub_1B7A97200();
            *v83 = v81;
            v82(v93, 0);
            return;
          }

          goto LABEL_69;
        }
      }

      else
      {
        v72 = 0;
        v73 = 0.0;
      }

      v76 = v64 - v72;
      v77 = (v88 + 8 * v72 + 32);
      do
      {
        v78 = *v77++;
        v73 = v73 + v78;
        --v76;
      }

      while (v76);
      goto LABEL_64;
    }
  }
}

void static ScrollTargetBehavior<>.centerAligned.getter(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 256;
}

uint64_t ShelfGrid.init(_:layout:padding:spacing:itemContent:itemDivider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v37 = a6;
  v38 = a5;
  v39 = a3;
  v40 = a4;
  v33 = a1;
  v36 = a7;
  v35 = a9;
  v34 = a10;
  v12 = *(a8 - 8);
  v32 = a11;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v31 = *(v19 + 24);
  v30 = *v23;
  v29 = *(v23 + 8);
  v28 = *(v23 + 16);
  v27 = *(v23 + 24);
  (*(v12 + 16))(v15, v13);
  v24 = *(a2 + 16);
  v49[0] = *a2;
  v49[1] = v24;
  v50 = v16;
  v51 = v17;
  v52 = v18;
  v45 = v20;
  v46 = v21;
  v47 = v22;
  v48 = v31;
  v41 = v30;
  v42 = v29;
  v43 = v28;
  v44 = v27;
  ShelfGrid.init(_:layout:padding:spacing:shelfPosition:itemContent:itemDivider:)(v15, v49, &v45, &v41, 0, 1, v39, v40, v36, v38, v37, a8, v35, *(&v35 + 1), v34, *(&v34 + 1), v32);
  return (*(v12 + 8))(v33, a8);
}

uint64_t ShelfGrid.init<>(_:layout:padding:spacing:itemContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v39 = a8;
  v40 = a1;
  v43 = a5;
  v44 = a6;
  v42 = a9;
  v36 = a7;
  v41 = *(a7 - 8);
  v38 = a10;
  v37 = a11;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v19 = *(a2 + 8);
  v21 = *(a2 + 16);
  v20 = *(a2 + 24);
  v22 = *(a2 + 32);
  v23 = *(a2 + 40);
  v53[0] = *a2;
  v18 = v53[0];
  v53[1] = v19;
  v53[2] = v21;
  v53[3] = v20;
  v53[4] = v22;
  v53[5] = v23;
  LOBYTE(a2) = *(a2 + 48);
  v54 = a2;
  v24 = *(a3 + 8);
  v25 = *(a3 + 16);
  v26 = *(a3 + 24);
  v49 = *a3;
  v50 = v24;
  v51 = v25;
  v52 = v26;
  v27 = *(a4 + 8);
  v28 = *(a4 + 16);
  v29 = *(a4 + 24);
  v45 = *a4;
  v46 = v27;
  v47 = v28;
  v48 = v29;
  sub_1B7A16C88(v53[0], v19, v21, v20, v22, v23, a2);
  v30 = sub_1B7A988A0();
  v31 = sub_1B7A1D2FC(&qword_1EBA47DB8, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
  v34 = v30;
  v32 = v36;
  ShelfGrid.init(_:layout:padding:spacing:shelfPosition:itemContent:itemDivider:)(v16, v53, &v49, &v45, 0, 1, v43, v44, v42, sub_1B7A1F914, 0, v36, v39, v34, v38, v37, v31);
  sub_1B7A16CD4(v18, v19, v21, v20, v22, v23, a2);
  return (*(v41 + 8))(v40, v32);
}

uint64_t ShelfGrid.init(_:layout:spacing:itemContent:itemDivider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11)
{
  v33 = a6;
  v34 = a5;
  v35 = a3;
  v36 = a4;
  v29 = a1;
  v32 = a8;
  v31 = a9;
  v30 = a10;
  v13 = *(a7 - 8);
  v28 = a11;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  v27 = *(v20 + 24);
  (*(v13 + 16))(v16, v14);
  v24 = *(a2 + 16);
  v45[0] = *a2;
  v45[1] = v24;
  v46 = v17;
  v47 = v18;
  v48 = v19;
  v41 = 0;
  v42 = 1;
  v43 = 0;
  v44 = 1;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = v27;
  ShelfGrid.init(_:layout:padding:spacing:shelfPosition:itemContent:itemDivider:)(v16, v45, &v41, &v37, 0, 1, v35, v36, v32, v34, v33, a7, v31, *(&v31 + 1), v30, *(&v30 + 1), v28);
  return (*(v13 + 8))(v29, a7);
}

uint64_t ShelfGrid.init<>(_:layout:spacing:itemContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a1;
  v30 = a8;
  v32 = a7;
  v33 = a4;
  v34 = a5;
  v31 = a9;
  v27 = a6;
  v12 = *(a6 - 8);
  v28 = a10;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v13);
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v20 = *(a2 + 32);
  v21 = *(a2 + 40);
  v43[0] = *a2;
  v16 = v43[0];
  v43[1] = v17;
  v43[2] = v18;
  v43[3] = v19;
  v43[4] = v20;
  v43[5] = v21;
  LOBYTE(a2) = *(a2 + 48);
  v44 = a2;
  v39 = 0;
  v40 = 1;
  v41 = 0;
  v42 = 1;
  v22 = *(a3 + 8);
  v23 = a3[2];
  v24 = *(a3 + 24);
  v35 = *a3;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  sub_1B7A16C88(v43[0], v17, v18, v19, v20, v21, a2);
  v25 = v27;
  ShelfGrid.init<>(_:layout:padding:spacing:shelfPosition:itemContent:)(v15, v43, &v39, &v35, 0, 1, v33, v34, v31, v27, v32, v30, v28);
  sub_1B7A16CD4(v16, v17, v18, v19, v20, v21, a2);
  return (*(v12 + 8))(v29, v25);
}

void sub_1B7A1EB08(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1B7A1F068(319, &qword_1EDC0FC70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v3 <= 0x3F)
      {
        sub_1B7A1F068(319, &qword_1EBA484E8, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1B797CE50(319, &qword_1EBA48718, &qword_1EBA463B8, &qword_1B7A9D080);
          if (v5 <= 0x3F)
          {
            sub_1B797CE50(319, &qword_1EBA48720, &qword_1EBA46460, &unk_1B7A9D160);
            if (v6 <= 0x3F)
            {
              sub_1B7A1F068(319, &qword_1EBA48728, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1B7A1F0B8(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B7A1ECDC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 143) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    if ((*((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 24) >> 2) > 0x80000000)
    {
      return -(*((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 24) >> 2);
    }

    return 0;
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * (((((((((v6 - 113) & 0xF8) + 23) & 0xF8) + 39) & 0xF8) + 73) & 0xF8) + 17));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}