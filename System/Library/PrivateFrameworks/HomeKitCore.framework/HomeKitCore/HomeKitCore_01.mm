uint64_t sub_2530D3B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = _s14descr2864E94D1O17DescriptorVisitorVMa(0, *(a2 + 16), *(a2 + 16), *(a2 + 24));

  return a4(a1, v6, a3);
}

uint64_t sub_2530D3BC4(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = a2[2];
  v6 = *a1;
  v24 = a2[3];
  sub_2531498A4();
  v7 = sub_253149484();
  v8 = a2[4];
  v10 = type metadata accessor for RelationshipResolver(0, v5, v8, v9);
  v11 = v7;
  v12 = RelationshipResolver.models<A>(at:)(v7, v10, a3);
  if (v12)
  {
    v13 = v12;
    v14 = v6;
  }

  else
  {
    v14 = v6;
    v15 = *(*(*(v6 + *MEMORY[0x277D84DE8] + 8) + 16) + 16);
    v25 = v5;
    v26 = v15;
    v27 = v8;
    v28 = a3;
    type metadata accessor for RelationshipResolver.ModelProxy(0, &v25);
    v13 = sub_253148CE4();
  }

  v16 = RelationshipResolver.models<A>(at:)(v11, v10, a3);
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0x277D84DE8];
  }

  else
  {
    v19 = MEMORY[0x277D84DE8];
    v20 = *(*(*(v14 + *MEMORY[0x277D84DE8] + 8) + 16) + 16);
    v25 = v5;
    v26 = v20;
    v27 = v8;
    v28 = a3;
    type metadata accessor for RelationshipResolver.ModelProxy(0, &v25);
    v21 = sub_253148CE4();
    v18 = v19;
    v17 = v21;
  }

  v22 = sub_2530DA1E0(v13, v17, v5, v24, *(*(*(v14 + *v18 + 8) + 16) + 16), v8, a3);

  if ((v22 & 1) == 0)
  {
    sub_253149474();
    sub_253148FF4();
    sub_253148FA4();
  }
}

uint64_t sub_2530D3DF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *a1;
  v11 = type metadata accessor for RelationshipResolver(0, v8, v9, a4);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v44 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v41 - v15;
  v16 = *(v10 + *MEMORY[0x277D84DE8] + 8);
  v17 = v8;
  v18 = v8;
  v46 = v8;
  v19 = v16;
  v43 = v16;
  v20 = v9;
  v41 = v9;
  v45 = _s14descr2864E94D1O17DescriptorVisitorVMa(0, v17, v16, v9);
  v50 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v22 = &v41 - v21;
  v51[0] = v18;
  v51[1] = v19;
  v51[2] = v20;
  v51[3] = a4;
  v23 = a4;
  v24 = type metadata accessor for RelationshipResolver.ModelProxy(0, v51);
  v47 = *(v24 - 8);
  v48 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v41 - v25;
  v27 = a4;
  v28 = v4;
  v29 = sub_2530D4D10(a1, a2, v27);
  v30 = *(a2 + 44);
  RelationshipResolver.model<A>(at:)(v29, v11, v23);
  v31 = *(v12 + 16);
  v32 = v28 + v30;
  v33 = v42;
  v31(v42, v32, v11);
  v34 = v44;
  v31(v44, v28 + *(a2 + 48), v11);

  sub_2530D2CEC(v35, v33, v34, v41, v22);
  v36 = v49;
  v37 = *(v49 + 8);
  v38 = v45;
  WitnessTable = swift_getWitnessTable();
  v37(v22, v38, WitnessTable, v43, v36);
  v51[0] = *&v22[*(v38 + 52)];
  sub_253149474();
  sub_253148FF4();

  swift_getWitnessTable();
  sub_253148FE4();

  (*(v50 + 8))(v22, v38);
  return (*(v47 + 8))(v26, v48);
}

uint64_t sub_2530D41D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = _s14descr2864E94D1O17DescriptorVisitorVMa(0, *(a2 + 16), *(a2 + 16), *(a2 + 24));

  return a5(a1, v8, a3, a4);
}

uint64_t sub_2530D4244(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a3;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *a1;
  v11 = type metadata accessor for RelationshipResolver(0, v8, v9, a4);
  v98 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v83 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v61 - v14;
  v81 = *(v10 + *MEMORY[0x277D84DE8] + 8);
  v90 = *(v81 + 16);
  v15 = v90;
  v16 = sub_2531491F4();
  v91 = v9;
  v80 = _s14descr2864E94D1O17DescriptorVisitorVMa(0, v8, v16, v9);
  v97 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v100 = &v61 - v17;
  v79 = sub_253148944();
  v93 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v92 = v18;
  v78 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102[0] = v8;
  v102[1] = v15;
  v102[2] = v9;
  v102[3] = a4;
  v19 = type metadata accessor for RelationshipResolver.ModelProxy(0, v102);
  v88 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v87 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v21;
  MEMORY[0x28223BE20](v20);
  v99 = &v61 - v22;
  v23 = *(a2 + 24);
  sub_2531498A4();
  v85 = a1;
  v24 = sub_253149484();
  v76 = v4 + *(a2 + 44);
  v25 = RelationshipResolver.models<A>(at:)(v24, v11, a4);
  v95 = v4;
  v96 = a2;
  v26 = v4 + *(a2 + 48);
  v63 = v24;
  v84 = v11;
  v27 = a4;
  v75 = v26;
  v28 = RelationshipResolver.models<A>(at:)(v24, v11, a4);
  v94 = v8;
  v77 = v23;
  v29 = v25;
  v86 = v27;
  v30 = sub_2530DA1E0(v25, v28, v8, v23, v90, v91, v27);

  if (!sub_253148D44())
  {

    if ((v30 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v31 = 0;
  v71 = *(v89 + 16);
  v72 = v89 + 16;
  v32 = v30 ^ 1;
  v33 = v88;
  v74 = (v88 + 16);
  v70 = (v88 + 32);
  v69 = v92 + 48;
  v68 = (v93 + 32);
  v67 = (v98 + 16);
  v66 = (v97 + 8);
  v65 = (v88 + 8);
  v34 = v87;
  v73 = v29;
  v64 = v19;
  while (1)
  {
    v35 = sub_253148CF4();
    sub_253148CC4();
    if ((v35 & 1) == 0)
    {
      break;
    }

    (*(v33 + 16))(v99, v29 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v31, v19);
    v36 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v97 = v36;
    v98 = v31;
    LODWORD(v93) = v32;
    (*v70)(v34, v99, v19);
    v37 = v78;
    v38 = RelationshipResolver.ModelProxy.id.getter(v19);
    MEMORY[0x28223BE20](v38);
    v40 = (&v61 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    v41 = v77;
    *v40 = v94;
    v40[1] = v41;
    v43 = v90;
    v42 = v91;
    v40[2] = v90;
    v40[3] = v42;
    v44 = v89;
    v45 = v86;
    v40[4] = v89;
    v40[5] = v45;
    (*v68)((v40 + 6), v37, v79);
    swift_getKeyPath();
    sub_2531498A4();
    v46 = sub_253149484();

    v47 = sub_2530D4FC4(v46, v96, v45);
    LODWORD(v92) = v48;
    v49 = *v67;
    v50 = v82;
    v51 = v84;
    (*v67)(v82, v76, v84);
    v52 = v83;
    v53 = v51;
    v54 = v80;
    v49(v83, v75, v53);

    v56 = v50;
    v34 = v87;
    sub_2530D2CEC(v55, v56, v52, v42, v100);
    WitnessTable = swift_getWitnessTable();
    v58 = v44;
    v59 = v100;
    v71(v100, v54, WitnessTable, v43, v58);
    sub_253149474();
    if (sub_253148FB4())
    {

      v32 = v92 | v93;
      (*v66)(v59, v54);
      v19 = v64;
      (*v65)(v34, v64);
    }

    else
    {
      v102[0] = *&v59[*(v54 + 52)];
      sub_253149474();
      sub_253148FF4();

      swift_getWitnessTable();
      sub_253148FE4();
      v101 = v47;

      sub_253148FA4();

      (*v66)(v59, v54);
      v19 = v64;
      (*v65)(v34, v64);
      v32 = 1;
    }

    v33 = v88;
    v29 = v73;
    v31 = v98 + 1;
    if (v97 == sub_253148D44())
    {
      goto LABEL_13;
    }
  }

  result = sub_2531493F4();
  if (v62 != 8)
  {
    __break(1u);
    return result;
  }

  v102[0] = result;
  (*v74)(v99, v102, v19);
  swift_unknownObjectRelease();
  v36 = v31 + 1;
  if (!__OFADD__(v31, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  if ((v32 & 1) == 0)
  {
  }

LABEL_14:
  v101 = v63;
  sub_253149474();
  sub_253148FF4();
  sub_253148FA4();
}

uint64_t sub_2530D4D10(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[2];
  v21 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v6 = a2[4];
  v25[0] = v5;
  v25[1] = v21;
  v25[2] = v6;
  v25[3] = a3;
  v7 = type metadata accessor for RelationshipResolver.ModelProxy(0, v25);
  v22 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  sub_2531498A4();
  v13 = sub_253149484();
  v19 = v5;
  v15 = type metadata accessor for RelationshipResolver(0, v5, v6, v14);
  RelationshipResolver.model<A>(at:)(v13, v15, a3);
  v20 = v3;
  RelationshipResolver.model<A>(at:)(v13, v15, a3);
  v23 = v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if ((sub_253148B44() & 1) == 0)
  {
    v24 = v13;
    sub_253149474();
    sub_253148FF4();

    sub_253148FA4();
  }

  v16 = v23;
  v17 = *(v22 + 8);
  v17(v10, v23);
  v17(v12, v16);
  return v13;
}

void *sub_2530D4FC4(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(*a1 + *MEMORY[0x277D84DE8] + 8) + 16);
  v94 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v80 = &v79 - v8;
  v104 = v9;
  v10 = sub_2531491F4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v93 = &v79 - v12;
  v101 = v10;
  v98 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v82 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v96 = &v79 - v16;
  MEMORY[0x28223BE20](v15);
  v102 = &v79 - v17;
  v18 = a2[2];
  v99 = a2[4];
  v106[0] = v18;
  v106[1] = v5;
  v81 = v5;
  v106[2] = v99;
  v106[3] = a3;
  v19 = type metadata accessor for RelationshipResolver.ModelProxy(255, v106);
  v100 = sub_2531491F4();
  v103 = *(v100 - 8);
  v20 = MEMORY[0x28223BE20](v100);
  v90 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v79 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v79 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  sub_2531498A4();
  v30 = sub_253149484();
  v84 = v18;
  v32 = type metadata accessor for RelationshipResolver(0, v18, v99, v31);
  v33 = v94;
  RelationshipResolver.model<A>(at:)(v30, v32, v94, v29);
  v85 = a2;
  v86 = v3;
  v99 = v27;
  v34 = v27;
  v35 = v103;
  v91 = v30;
  v36 = v33;
  v37 = v100;
  RelationshipResolver.model<A>(at:)(v30, v32, v36, v34);
  v38 = *(v35 + 16);
  v92 = v29;
  v89 = v38;
  v38(v24, v29, v37);
  v39 = *(v19 - 8);
  v40 = 1;
  v88 = *(v39 + 48);
  if (v88(v24, 1, v19) == 1)
  {
    v41 = v35;
    v42 = v37;
    v43 = v95;
    v44 = v102;
  }

  else
  {
    v43 = v95;
    v44 = v102;
    (*(v95 + 16))(v102, &v24[*(v19 + 52)], v104);
    v40 = 0;
    v41 = v39;
    v42 = v19;
  }

  (*(v41 + 8))(v24, v42);
  v45 = 1;
  v46 = v40;
  v47 = v104;
  v87 = *(v43 + 56);
  v87(v44, v46, 1, v104);
  v48 = v90;
  v89(v90, v99, v37);
  if (v88(v48, 1, v19) == 1)
  {
    v39 = v103;
    v49 = v37;
    v50 = v98;
    v51 = v96;
  }

  else
  {
    v51 = v96;
    (*(v43 + 16))(v96, &v48[*(v19 + 52)], v47);
    v45 = 0;
    v50 = v98;
    v49 = v19;
  }

  (*(v39 + 8))(v48, v49);
  v52 = v104;
  v87(v51, v45, 1, v104);
  v53 = *(TupleTypeMetadata2 + 48);
  v54 = v51;
  v55 = *(v50 + 16);
  v56 = v93;
  v57 = v101;
  v58 = v102;
  v55(v93, v102, v101);
  v90 = v53;
  v55(&v53[v56], v54, v57);
  v59 = *(v43 + 48);
  if (v59(v56, 1, v52) == 1)
  {
    v60 = *(v50 + 8);
    v61 = v101;
    v60(v54, v101);
    v60(v58, v61);
    v62 = v59(&v90[v56], 1, v104);
    v63 = v91;
    if (v62 == 1)
    {
      v60(v56, v61);
LABEL_15:
      v76 = *(v103 + 8);
      v77 = v100;
      v76(v99, v100);
      v76(v92, v77);
      return v63;
    }

    goto LABEL_12;
  }

  v64 = v82;
  v65 = v101;
  v55(v82, v56, v101);
  v66 = v90;
  if (v59(&v90[v56], 1, v104) == 1)
  {
    v67 = *(v98 + 8);
    v67(v96, v65);
    v67(v102, v65);
    (*(v95 + 8))(v64, v104);
    v63 = v91;
LABEL_12:
    (*(v83 + 8))(v56, TupleTypeMetadata2);
    goto LABEL_13;
  }

  v70 = v95;
  v71 = v80;
  v72 = v104;
  (*(v95 + 32))(v80, &v66[v56], v104);
  swift_getAssociatedConformanceWitness();
  v73 = sub_253148B44();
  v74 = *(v70 + 8);
  v74(v71, v72);
  v75 = *(v98 + 8);
  v75(v96, v65);
  v75(v102, v65);
  v74(v64, v72);
  v75(v56, v65);
  v63 = v91;
  if (v73)
  {
    goto LABEL_15;
  }

LABEL_13:
  v105 = v63;
  sub_253149474();
  sub_253148FF4();

  sub_253148FA4();

  v68 = *(v103 + 8);
  v69 = v100;
  v68(v99, v100);
  v68(v92, v69);
  return v63;
}

uint64_t sub_2530D5928(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_2530DA700(&qword_27F580C40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return sub_253148B44() & 1;
}

void *sub_2530D59B0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  result = sub_2530D4FC4(a2, a3, a4);
  if (v5)
  {
    v6 = result;
    sub_2531498A4();
    sub_253149484();
    sub_253149474();
    sub_253148FF4();
    sub_253148FA4();

    return v6;
  }

  return result;
}

uint64_t sub_2530D5AB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2530DA4C8();
  result = MEMORY[0x259BFCB80](v2, &type metadata for HomesStore.ModelType, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_2530D6108(&v12, *(*(a1 + 56) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
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

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
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

uint64_t RelationshipResolver<>.keyPathDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v28 = a3;
  v29 = a4;
  v26 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  v16 = _s14descr2864E94D1O34RelationshipModelDescriptorVisitorVMa(0, v14, v13, v15);
  v27 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  v19 = *(v6 + 16);
  v19(v11, v4, a2);
  v19(v9, v26, a2);
  sub_2530D2B60(v11, v9, v14, v13, v18);
  v20 = v28;
  v21 = *(v28 + 8);
  WitnessTable = swift_getWitnessTable();
  v21(v18, v16, WitnessTable, v14, v20);
  v23 = *&v18[*(_s14descr2864E94D1O17DescriptorVisitorVMa(0, *(v16 + 16), *(v16 + 16), *(v16 + 24)) + 52)];
  v24 = *(v27 + 8);

  v24(v18, v16);
  return sub_25311C8A8(v23, v29);
}

uint64_t sub_2530D5DFC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_253148944();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2530DA700(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_253148B04();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2530DA700(&qword_27F580C40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_253148B44();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2530D7A3C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2530D6108(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_253149814();
  MEMORY[0x259BFD420](a2);
  v6 = sub_253149844();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2530D7CE0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2530D6200(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_253149804();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_2530D7F50(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2530D62E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *v4;
  sub_253149814();
  if ((a4 & 0x80) != 0)
  {
    MEMORY[0x259BFD420](1);
    sub_253148BB4();
    sub_253149834();
  }

  else
  {
    MEMORY[0x259BFD420](0);
    sub_253148BB4();
  }

  v8 = sub_253149844();
  v9 = -1 << *(v27 + 32);
  v10 = v8 & ~v9;
  if (((*(v27 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_26:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v24;
    sub_2530DA7BC(a2, a3);
    sub_2530D8070(a2, a3, a4, v10, isUniquelyReferenced_nonNull_native);
    *v24 = v28;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v26 = ~v9;
  while (1)
  {
    v11 = *(v27 + 48) + 24 * v10;
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    if ((v14 & 0x80000000) == 0)
    {
      break;
    }

    if ((a4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    if (v13 == a2 && v12 == a3)
    {
      sub_2530DA7BC(a2, a3);
      sub_2530DA7BC(a2, a3);
      sub_2530DA7C4(a2, a3);
      sub_2530DA7C4(a2, a3);
    }

    else
    {
      v18 = sub_253149734();
      sub_2530DA7BC(a2, a3);
      sub_2530DA7BC(v13, v12);
      sub_2530DA7C4(v13, v12);
      sub_2530DA7C4(a2, a3);
      if ((v18 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (((a4 ^ v14) & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_8:
    v10 = (v10 + 1) & v26;
    if (((*(v27 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if ((a4 & 0x80) != 0)
  {
LABEL_7:
    sub_2530DA7BC(a2, a3);
    sub_2530DA7BC(v13, v12);
    sub_2530DA7C4(v13, v12);
    sub_2530DA7C4(a2, a3);
    goto LABEL_8;
  }

  if (v13 != a2 || v12 != a3)
  {
    v16 = sub_253149734();
    sub_2530DA7BC(a2, a3);
    sub_2530DA7BC(v13, v12);
    sub_2530DA7C4(v13, v12);
    sub_2530DA7C4(a2, a3);
    if (v16)
    {
      goto LABEL_28;
    }

    goto LABEL_8;
  }

  sub_2530DA7C4(a2, a3);
LABEL_28:
  sub_2530DA7C4(a2, a3);
  v21 = *(v27 + 48) + 24 * v10;
  v22 = *v21;
  v23 = *(v21 + 8);
  *a1 = *v21;
  *(a1 + 8) = v23;
  *(a1 + 16) = *(v21 + 16);
  sub_2530DA7BC(v22, v23);
  return 0;
}

uint64_t sub_2530D6664(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_2531492F4();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = sub_2531492E4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_2530D68F0(v15, result + 1, a4, a5, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_2530D7798(v28 + 1, a4, a5);
        }

        v29 = v16;
        sub_2530D79B8(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = sub_253149184();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_253149194();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_2530D83E4(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2530D68F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_253149394();
    v21 = v8;
    sub_2531492A4();
    if (sub_253149314())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_2530D7798(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = sub_253149184();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_253149314());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_2530D6AE8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_253148944();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C48, &qword_25314D180);
  result = sub_253149384();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2530DA700(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_253148B04();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_2530D6E44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C60, &qword_25314D1F0);
  result = sub_253149384();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_253149814();
      MEMORY[0x259BFD420](v17);
      result = sub_253149844();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2530D7094(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C68, &qword_25314D1F8);
  result = sub_253149384();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
LABEL_13:
      sub_253149814();
      sub_253148BB4();
      result = sub_253149844();
      v15 = -1 << *(v5 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v12 + 8 * v17);
          if (v21 != -1)
          {
            v13 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v10 &= v10 - 1;
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      ++*(v5 + 16);
    }

    while (1)
    {
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = v7[v14];
      ++v6;
      if (v10)
      {
        v6 = v14;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v3 + 32);
    if (v22 >= 64)
    {
      bzero((v3 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v22;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2530D72C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C50, &qword_25314D1E8);
  result = sub_253149384();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_253149804();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2530D74EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C88, &unk_25314D210);
  result = sub_253149384();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_253149814();
      if (v21 < 0)
      {
        MEMORY[0x259BFD420](1);
        sub_253148BB4();
        sub_253149834();
      }

      else
      {
        MEMORY[0x259BFD420](0);
        sub_253148BB4();
      }

      result = sub_253149844();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2530D7798(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_253149384();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_253149184();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_2530D79B8(uint64_t a1, uint64_t a2)
{
  sub_253149184();
  result = sub_253149284();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2530D7A3C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_253148944();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2530D6AE8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2530D8568();
      goto LABEL_12;
    }

    sub_2530D8DE8(v10 + 1);
  }

  v12 = *v3;
  sub_2530DA700(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_253148B04();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2530DA700(&qword_27F580C40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_253148B44();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_253149774();
  __break(1u);
  return result;
}

uint64_t sub_2530D7CE0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2530D6E44(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2530D87A0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2530D9104(v5 + 1);
  }

  v8 = *v3;
  sub_253149814();
  MEMORY[0x259BFD420](v4);
  result = sub_253149844();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_253149774();
  __break(1u);
  return result;
}

unint64_t sub_2530D7E2C(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_2530D7094(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_2530D9324(v3 + 1);
LABEL_8:
      v6 = *v2;
      sub_253149814();
      sub_253148BB4();
      result = sub_253149844() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_2530D88E0();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_253149774();
  __break(1u);
  return result;
}

uint64_t sub_2530D7F50(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2530D72C8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2530D89EC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2530D9528(v5 + 1);
  }

  v8 = *v3;
  result = sub_253149804();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_253149774();
  __break(1u);
  return result;
}

uint64_t sub_2530D8070(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v7 = a3;
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_2530D74EC(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        result = sub_2530D8B2C();
        goto LABEL_33;
      }

      sub_2530D9718(v10 + 1);
    }

    v28 = *v5;
    sub_253149814();
    if ((v7 & 0x80) != 0)
    {
      MEMORY[0x259BFD420](1);
      sub_253148BB4();
      sub_253149834();
    }

    else
    {
      MEMORY[0x259BFD420](0);
      sub_253148BB4();
    }

    result = sub_253149844();
    v12 = -1 << *(v28 + 32);
    a4 = result & ~v12;
    if ((*(v28 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v13 = ~v12;
      do
      {
        v14 = *(v28 + 48) + 24 * a4;
        v16 = *v14;
        v15 = *(v14 + 8);
        v17 = *(v14 + 16);
        if (v17 < 0)
        {
          if ((v7 & 0x80) == 0)
          {
            goto LABEL_14;
          }

          if (v16 == v9 && v15 == a2)
          {
            sub_2530DA7BC(v9, a2);
            sub_2530DA7BC(v9, a2);
            sub_2530DA7C4(v9, a2);
            result = sub_2530DA7C4(v9, a2);
          }

          else
          {
            v21 = sub_253149734();
            sub_2530DA7BC(v9, a2);
            sub_2530DA7BC(v16, v15);
            sub_2530DA7C4(v16, v15);
            result = sub_2530DA7C4(v9, a2);
            if ((v21 & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          if (((v7 ^ v17) & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if ((v7 & 0x80) != 0)
          {
LABEL_14:
            sub_2530DA7BC(v9, a2);
            sub_2530DA7BC(v16, v15);
            sub_2530DA7C4(v16, v15);
            result = sub_2530DA7C4(v9, a2);
            goto LABEL_15;
          }

          if (v16 == v9 && v15 == a2)
          {
            goto LABEL_36;
          }

          v19 = sub_253149734();
          sub_2530DA7BC(v9, a2);
          sub_2530DA7BC(v16, v15);
          sub_2530DA7C4(v16, v15);
          result = sub_2530DA7C4(v9, a2);
          if (v19)
          {
            goto LABEL_37;
          }
        }

LABEL_15:
        a4 = (a4 + 1) & v13;
      }

      while (((*(v28 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_33:
  v22 = *v27;
  *(*v27 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = v9;
  *(v23 + 8) = a2;
  *(v23 + 16) = v7;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_36:
    sub_2530DA7BC(v9, a2);
    sub_2530DA7BC(v9, a2);
    sub_2530DA7C4(v9, a2);
    sub_2530DA7C4(v9, a2);
LABEL_37:
    result = sub_253149774();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

void sub_2530D83E4(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_2530D7798(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_2530D8CA8(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_2530D99A4(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_253149184();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_253149194();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_253149774();
  __break(1u);
}

void *sub_2530D8568()
{
  v1 = v0;
  v2 = sub_253148944();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C48, &qword_25314D180);
  v6 = *v0;
  v7 = sub_253149374();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_2530D87A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C60, &qword_25314D1F0);
  v2 = *v0;
  v3 = sub_253149374();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2530D88E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C68, &qword_25314D1F8);
  v2 = *v0;
  v3 = sub_253149374();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

void *sub_2530D89EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C50, &qword_25314D1E8);
  v2 = *v0;
  v3 = sub_253149374();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2530D8B2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C88, &unk_25314D210);
  v2 = *v0;
  v3 = sub_253149374();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_2530DA7BC(v19, v20);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2530D8CA8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_253149374();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_2530D8DE8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_253148944();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C48, &qword_25314D180);
  v7 = sub_253149384();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_2530DA700(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_253148B04();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2530D9104(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C60, &qword_25314D1F0);
  result = sub_253149384();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_253149814();
      MEMORY[0x259BFD420](v16);
      result = sub_253149844();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2530D9324(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C68, &qword_25314D1F8);
  result = sub_253149384();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
LABEL_13:
      sub_253149814();
      sub_253148BB4();
      result = sub_253149844();
      v14 = -1 << *(v5 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v11 + 8 * v16);
          if (v20 != -1)
          {
            v12 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v9 &= v9 - 1;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++*(v5 + 16);
    }

    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v2 = v1;
        goto LABEL_24;
      }

      v9 = *(v3 + 56 + 8 * v13);
      ++v6;
      if (v9)
      {
        v6 = v13;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

LABEL_24:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2530D9528(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C50, &qword_25314D1E8);
  result = sub_253149384();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_253149804();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_2530D9718(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C88, &unk_25314D210);
  result = sub_253149384();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_253149814();
      if (v21 < 0)
      {
        MEMORY[0x259BFD420](1);

        sub_253148BB4();
        sub_253149834();
      }

      else
      {
        MEMORY[0x259BFD420](0);

        sub_253148BB4();
      }

      result = sub_253149844();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2530D99A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_253149384();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_253149184();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_2530D9BB0(uint64_t a1)
{
  result = _s14descr2864E94D1O17DescriptorVisitorVMa(319, *(a1 + 16), *(a1 + 16), *(a1 + 24));
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2530D9C24(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
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

  v8 = *(v4 + 80) & 0xF8;
  v9 = v8 | 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + ((v8 + 15) & ~v9) + 40) & ~v9) + 48;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v9 + 8) & ~v9);
    }

    v19 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void *sub_2530D9D80(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80) & 0xF8;
  v9 = v8 | 7;
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + ((v8 + 15) & ~(v8 | 7)) + 40) & ~v9) + 48;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + ((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + v9 + ((v8 + 15) & ~(v8 | 7)) + 40) & ~v9) == -48)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v10) = 0;
      }

      else if (v14)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);
        v21 = (result + v9 + 8) & ~v9;

        return v20(v21);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *result = v19;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + ((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + v9 + ((v8 + 15) & ~(v8 | 7)) + 40) & ~v9) == -48)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + ((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + v9 + ((v8 + 15) & ~(v8 | 7)) + 40) & ~v9) != -48)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, v10);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v10) = v16;
    }

    else
    {
      *(result + v10) = v16;
    }
  }

  else if (v14)
  {
    *(result + v10) = v16;
  }

  return result;
}

uint64_t sub_2530D9F80(void *a1)
{
  v2 = a1[2];
  result = sub_2531498A4();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for RelationshipResolver(319, v2, a1[4], v4);
    if (v6 <= 0x3F)
    {
      sub_253149474();
      result = sub_253148FF4();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2530DA044(uint64_t a1)
{
  v2 = sub_253148944();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_2530DA700(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x259BFCB80](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_2530D5DFC(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_2530DA1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v35[5] = a1;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35[0] = a3;
  v35[1] = a5;
  v35[2] = a6;
  v35[3] = a7;
  type metadata accessor for RelationshipResolver.ModelProxy(255, v35);
  v11 = sub_253148D64();
  v12 = sub_253148944();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_253146F4C(sub_2530DA7CC, v29, v11, v12, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);
  v16 = sub_2530DA044(v15);

  v35[0] = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = v7;
  v18 = sub_253146F4C(sub_2530DA374, v23, v11, v12, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v17);
  v19 = sub_2530DA044(v18);

  LOBYTE(v7) = sub_25310BAD8(v16, v19);

  return v7 & 1;
}

uint64_t sub_2530DA38C()
{
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v6 = v1;
  v2 = type metadata accessor for RelationshipResolver.ModelProxy(0, &v4);
  return RelationshipResolver.ModelProxy.id.getter(v2);
}

uint64_t keypath_destroyTm(uint64_t a1)
{
  v2 = sub_253148944();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t keypath_hashTm()
{
  sub_253148944();
  sub_2530DA700(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_253148B24();
}

unint64_t sub_2530DA4C8()
{
  result = qword_27F580C58;
  if (!qword_27F580C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580C58);
  }

  return result;
}

unint64_t sub_2530DA51C()
{
  result = qword_27F580910;
  if (!qword_27F580910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F580910);
  }

  return result;
}

uint64_t sub_2530DA568(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2531492E4())
  {
    v4 = sub_2530DA51C();
    v5 = sub_2530DA700(&qword_27F580C78, sub_2530DA51C, MEMORY[0x277D85378]);
    result = MEMORY[0x259BFCB80](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x259BFD000](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2530D6664(&v11, v9, sub_2530DA51C, &qword_27F580C70, &qword_25314D200, sub_2530DA51C);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2531492E4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2530DA700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2530DA748(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2530DA4C8();
  result = MEMORY[0x259BFCB80](v2, &type metadata for HomesStore.ModelType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_2530D6108(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2530DA7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15[3] = a8;
  *&v16 = sub_2530EB040(a4, a7);
  *(&v16 + 1) = v12;
  v17 = 0;
  v18 = 1;
  v19 = 0;
  v13 = (*(a6 + 32))(&v16, a3, a6);
  if (v9)
  {
    v24 = v16;
    sub_2530DAA9C(&v24);
    v25 = v17;
    sub_2530CD33C(&v25, &qword_27F580C90, &qword_25314D280);
    v23 = v19;
    sub_2530CD33C(&v23, &qword_27F580C98, &qword_25314D288);
  }

  else
  {
    v15[1] = v15;
    v15[2] = v13;
    v15[4] = v13;
    MEMORY[0x28223BE20](v13);
    swift_getAssociatedTypeWitness();
    sub_253148D64();
    swift_getWitnessTable();
    v8 = sub_253148C34();
    v22 = v16;
    sub_2530DAA9C(&v22);
    v21 = v17;
    sub_2530CD33C(&v21, &qword_27F580C90, &qword_25314D280);
    v20 = v19;
    sub_2530CD33C(&v20, &qword_27F580C98, &qword_25314D288);
  }

  return v8;
}

uint64_t sub_2530DAAF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  result = (*(v2[8] + 40))(*a1, v5, v5, v2[6], v2[4]);
  if (!v3)
  {
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }

  return result;
}

uint64_t sub_2530DAB88(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2530DAC80(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2531492E4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2531492E4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2530CA880();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2530DDEA0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2530DAD70(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2530F46D0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for AnyModelStateChange(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2530DAE9C()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F580CA0);
  __swift_project_value_buffer(v0, qword_27F580CA0);
  return sub_253148A84();
}

uint64_t sub_2530DAF1C(uint64_t a1)
{
  *(v2 + 64) = v1;
  v4 = *v1;
  *(v2 + 72) = *v1;
  v5 = *(v4 + 88);
  *(v2 + 80) = v5;
  v6 = *(v5 - 8);
  *(v2 + 88) = v6;
  *(v2 + 96) = *(v6 + 64);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = *a1;
  *(v2 + 128) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_2530DB034, v1, 0);
}

uint64_t sub_2530DB034()
{
  v19 = v0[15];
  v20 = v0[16];
  v1 = v0[14];
  v18 = v0[13];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v0[7] = v5;
  (*(v2 + 16))();
  v6 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[17] = v7;
  v8 = v3[10];
  v0[18] = v8;
  *(v7 + 2) = v8;
  *(v7 + 3) = v4;
  v9 = v4;
  v17 = v4;
  v10 = v3[12];
  v0[19] = v10;
  *(v7 + 4) = v10;
  v11 = v3[13];
  v0[20] = v11;
  *(v7 + 5) = v11;
  *(v7 + 6) = v5;
  *(v7 + 7) = v1;
  *(v7 + 8) = v19;
  *(v7 + 9) = v20;
  (*(v2 + 32))(&v7[v6], v18, v9);

  v12 = swift_task_alloc();
  v0[21] = v12;
  v0[2] = v8;
  v0[3] = v17;
  v0[4] = v10;
  v0[5] = v11;
  v13 = type metadata accessor for ModelStateSubscriptionManager(0, (v0 + 2));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DC8, &qword_25314D440);
  WitnessTable = swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_2530DB25C;

  return sub_2530EEC10((v0 + 6), sub_2530DCFA0, v7, v13, v14, WitnessTable);
}

void sub_2530DB25C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 64);

    MEMORY[0x2822009F8](sub_2530DB39C, v3, 0);
  }
}

uint64_t sub_2530DB39C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  *(v0 + 176) = v4;
  v5 = *(v3 + *(*v3 + 144));
  *(v0 + 184) = v5;
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  v7 = *(v0 + 152);
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = v7;
  *(v6 + 48) = v4;

  return MEMORY[0x2822009F8](sub_2530DB450, v5, 0);
}

uint64_t sub_2530DB450()
{
  sub_2530BE8BC(v0[22], sub_2530DCFF4, v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2530DB4F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, void *a7@<X8>)
{
  v10 = *a2;
  *a7 = MEMORY[0x277D84F90];
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v13 = v10[10];
  v14 = v10[11];
  v15 = v10[12];
  v16 = v10[13];
  v17 = sub_2530DE020(&v25, a1, a6, v13, v14, v15, v16);
  sub_2530DAD70(v17);
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v18 = sub_2530DE558(&v25, a1, a6, v13, v14, v15, v16);
  sub_2530DAD70(v18);
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v19 = sub_2530DEDBC(&v25, a1, a6, v13, v14, v15, v16);
  sub_2530DAD70(v19);
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v20 = sub_2530DF604(&v25, a1, a6, v13, v14, v15, v16);
  return sub_2530DAD70(v20);
}

BOOL sub_2530DB67C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  v8 = *a1;
  v9 = *(a2 + 16);
  do
  {
    v10 = v7;
    if (v9 == v7)
    {
      break;
    }

    v11 = *(type metadata accessor for AnyModelStateChange(0) - 8);
    ++v7;
  }

  while (!sub_2530DB764(a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10, v8));
  return v9 != v10;
}

BOOL sub_2530DB764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyModelStateChange.Tombstone(0);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AnyModelStateChange(0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2530DFB6C(a1, v9, type metadata accessor for AnyModelStateChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2530DFBD4(v9, v6, type metadata accessor for AnyModelStateChange.Tombstone);
      v13 = *(a2 + 16);
      v14 = (a2 + 32);
      do
      {
        v15 = v13-- != 0;
        v12 = v15;
        if (!v15)
        {
          break;
        }

        v16 = *v14++;
      }

      while (v16 != v6[*(v4 + 20)]);
      sub_2530DFCAC(v6, type metadata accessor for AnyModelStateChange.Tombstone);
    }

    else
    {
      sub_2530DFCAC(v9, type metadata accessor for AnyModelStateChange);
      return 0;
    }
  }

  else
  {
    v11 = *(v9 + 1);
    v18[0] = *v9;
    v18[1] = v11;
    v19 = *(v9 + 4);
    v12 = sub_2530DD988(v18, a2);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return v12;
}

uint64_t sub_2530DB93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v11 = type metadata accessor for ModelStateSubscriptionManager.RelationshipModelSet(0, v14);
  *(a7 + *(v11 + 56)) = MEMORY[0x277D84F98];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  return (*(*(a4 - 8) + 32))(a7 + *(v11 + 52), a2, a4);
}

uint64_t sub_2530DBA90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v43 = v3 + 64;
  v4 = 1 << *(v3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v3 + 64);
  v42 = (v4 + 63) >> 6;

  v8 = 0;
  v44 = v7;
  do
  {
LABEL_6:
    if (!v6)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (v9 >= v42)
        {
          break;
        }

        v6 = *(v43 + 8 * v9);
        ++v8;
        if (v6)
        {
          v8 = v9;
          goto LABEL_11;
        }
      }
    }

LABEL_11:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = *(v7 + 56) + 16 * v11;
  }

  while (!*(*(v12 + 8) + 16));
  v13 = *(*(v7 + 48) + 8 * v11);
  v52 = *(v12 + 8);
  v14 = *v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v17 = *(v16 + 56);
  v18 = v13;
  v19 = v14;
  v20 = v52;
  v48 = v19;

  v21 = swift_checkMetadataState();
  v49 = v18;
  v17(v18, v21, v16);
  v22 = *(AssociatedConformanceWitness + 40);
  v23 = swift_checkMetadataState();
  v24 = v22(v23, AssociatedConformanceWitness);
  v25 = 1 << *(v52 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v52 + 56);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  v50 = v24;
  while (v27)
  {
LABEL_21:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = *(v20 + 48) + 24 * (v31 | (v29 << 6));
    AssociatedTypeWitness = *(v32 + 16);
    if ((AssociatedTypeWitness & 0x80000000) != 0)
    {
      v33 = *(v32 + 8);
      v51 = *v32;

      v34 = [v24 relationshipsByName];
      sub_2530DFADC();
      v35 = sub_253148AD4();

      if (*(v35 + 16))
      {
        v45 = sub_25311D908(v51, v33);
        v47 = v36;
        sub_2530DA7C4(v51, v33);
        if (v47)
        {
          AssociatedTypeWitness = *(*(v35 + 56) + 8 * v45);

          sub_2530DD1FC(AssociatedTypeWitness, a2);
          if (sub_2530DD0B4(a2))
          {
            goto LABEL_33;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_2530DA7C4(v51, v33);
      }

      v20 = v52;
      v24 = v50;
    }
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      swift_unknownObjectRelease();
      v7 = v44;
      goto LABEL_6;
    }

    v27 = *(v52 + 56 + 8 * v30);
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_33:
  if (qword_27F580218 != -1)
  {
LABEL_40:
    swift_once();
  }

  v38 = sub_253148A94();
  __swift_project_value_buffer(v38, qword_27F580CA0);
  v39 = sub_253148A74();
  v40 = sub_2531490A4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_2530B8000, v39, v40, "Change set matched all relationship model types", v41, 2u);
    MEMORY[0x259BFDC60](v41, -1, -1);
  }

  swift_unknownObjectRelease();
}

void *sub_2530DBF94(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_253118710(*(v2 + 16), 0);
  v5 = sub_253118814(&v8, (v4 + 4), v3, v2);
  v6 = v8;

  sub_2530DFAD4(v6);
  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t *sub_2530DC054()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 128));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2530DC160()
{
  sub_2530DC054();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2530DC1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2530DC250(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DB8, &unk_25314D418);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530DC384, v1, 0);
}

uint64_t sub_2530DC384()
{
  v1 = v0[3];
  v2 = *(*v1 + 136);
  if (!*(v1 + v2))
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[6];
    v17 = v0[7];
    v18 = v3;
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[2];
    v9 = sub_253148DE4();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = v8;
    v12 = v6;
    (*(v5 + 16))(v4, v11, v6);
    v13 = (*(v5 + 80) + 64) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = *(v7 + 80);
    *(v14 + 40) = *(v7 + 88);
    *(v14 + 56) = *(v7 + 104);
    (*(v5 + 32))(v14 + v13, v4, v12);
    *(v14 + ((v17 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
    *(v1 + v2) = sub_253112858(0, 0, v18, &unk_25314D430, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_2530DC574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DC0, &qword_25314D438);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530DC644, 0, 0);
}

uint64_t sub_2530DC644()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DB8, &unk_25314D418);
  sub_253148E54();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_2530DC72C;
  v2 = *(v0 + 104);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v2);
}

uint64_t sub_2530DC72C()
{

  return MEMORY[0x2822009F8](sub_2530DC828, 0, 0);
}

uint64_t sub_2530DC828()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[17] = v2;
  v0[18] = v1;
  v3 = v0[7];
  v0[19] = v3;
  if (v2)
  {
    Strong = swift_weakLoadStrong();
    v0[20] = Strong;
    if (Strong)
    {
      v0[8] = v2;
      v0[9] = v1;
      v0[10] = v3;
      v5 = swift_task_alloc();
      v0[21] = v5;
      *v5 = v0;
      v5[1] = sub_2530DC988;

      return sub_2530DAF1C((v0 + 8));
    }

    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_2530DCF54(v2, v1, v3);
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_2530DC988()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);

  sub_2530DCF54(v3, v2, v1);

  return MEMORY[0x2822009F8](sub_2530DCAD8, 0, 0);
}

uint64_t sub_2530DCAD8()
{

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_2530DC72C;
  v2 = *(v0 + 104);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v2);
}

uint64_t sub_2530DCB88(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2530DCBAC, v2, 0);
}

uint64_t sub_2530DCBAC()
{
  v1 = v0[4];
  v2 = *(v0[5] + *(*v0[5] + 144));
  v0[6] = v2;
  v0[2] = v1;

  return MEMORY[0x2822009F8](sub_2530DCC38, v2, 0);
}

uint64_t sub_2530DCC38()
{
  sub_2530BDED4(v0 + 16, *(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530DCCA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2530CD684;

  return sub_2530DC250(a1);
}

uint64_t sub_2530DCD40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2530BF218;

  return sub_2530DCB88(a1, a2);
}

uint64_t sub_2530DCDF4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DB8, &unk_25314D418) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2530BF218;

  return sub_2530DC574(a1, v7, v8, v1 + v6, v9);
}

uint64_t sub_2530DCF54(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2530DD004()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DD8, &unk_25314D450);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25314D290;
  v1 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
  v2 = sub_2530DFB28(&qword_27F580DE0, &unk_25314FF98);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  return v0;
}

uint64_t sub_2530DD0B4(uint64_t a1)
{
  result = sub_2530DD004();
  v4 = result;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v7 = *(v1 + *(a1 + 56));
    v8 = result + 48;
    while (v6 < *(v4 + 16))
    {
      (*(*(*v8 + 8) + 48))(&v13);
      if (!*(v7 + 16) || (v9 = sub_25311D9C4(v13), (v10 & 1) == 0))
      {
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        sub_2530CD33C(v11, &qword_27F580DD0, &qword_25314D448);

        return 0;
      }

      ++v6;
      sub_2530C25FC(*(v7 + 56) + 40 * v9, v11);
      result = sub_2530CD33C(v11, &qword_27F580DD0, &qword_25314D448);
      v8 += 24;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return 1;
  }

  return result;
}

uint64_t sub_2530DD1FC(void *a1, uint64_t a2)
{
  v4 = sub_2530DD004();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 3;
      sub_2530DD280(a1, v7, a2, v7, v8, v9);
      --v5;
    }

    while (v5);
  }
}

void sub_2530DD280(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v58 = a2;
  v13 = sub_2531491F4();
  v54 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v56 = &v48 - v15;
  v16 = *(a4 - 8);
  MEMORY[0x28223BE20](v14);
  v55 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a6 + 8);
  (*(v18 + 48))(&v59, a4, v18);
  v19 = v59;
  v53 = *(a3 + 56);
  v20 = *(v6 + v53);
  if (*(v20 + 16) && (v57 = v18, v21 = a3, v22 = v13, v23 = a4, v24 = v7, v25 = a1, v26 = v16, v27 = a5, v28 = a6, v29 = v59, v30 = sub_25311D9C4(v59), v19 = v29, a6 = v28, a5 = v27, v16 = v26, a1 = v25, v7 = v24, a4 = v23, v13 = v22, a3 = v21, v18 = v57, (v31 & 1) != 0))
  {
    sub_2530C25FC(*(v20 + 56) + 40 * v30, &v59);
    sub_2530CD33C(&v59, &qword_27F580DD0, &qword_25314D448);
  }

  else
  {
    v52 = v19;
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    sub_2530CD33C(&v59, &qword_27F580DD0, &qword_25314D448);
    if (sub_2530E8EB0(a1, a4, a5))
    {
      v49 = v13;
      v50 = v16;
      v51 = *(a3 + 52);
      swift_getAssociatedTypeWitness();
      v57 = v7;
      swift_getAssociatedConformanceWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v33 = *(a3 + 24);
      v34 = v57;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      *&v59 = sub_2530DA7E4(v58, v34 + v51, AssociatedTypeWitness, a4, v33, AssociatedConformanceWitness, a5, v18);
      sub_253148D64();
      swift_getWitnessTable();
      v36 = v56;
      sub_253149034();
      v37 = v50;
      if ((*(v50 + 48))(v36, 1, a4) == 1)
      {
        (*(v54 + 8))(v36, v49);

        if (qword_27F580218 != -1)
        {
          swift_once();
        }

        v38 = sub_253148A94();
        __swift_project_value_buffer(v38, qword_27F580CA0);
        v39 = sub_253148A74();
        v40 = sub_2531490B4();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *&v59 = v42;
          *v41 = 136315138;
          v43 = sub_2531498D4();
          v45 = sub_253146498(v43, v44, &v59);

          *(v41 + 4) = v45;
          _os_log_impl(&dword_2530B8000, v39, v40, "Relationship model is not present: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x259BFDC60](v42, -1, -1);
          MEMORY[0x259BFDC60](v41, -1, -1);
        }
      }

      else
      {
        v46 = v55;
        (*(v37 + 32))(v55, v36, a4);

        *(&v60 + 1) = a4;
        v61 = a6;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v59);
        (*(v37 + 16))(boxed_opaque_existential_0, v46, a4);
        sub_25312ADA8(&v59, v52);
        (*(v37 + 8))(v46, a4);
      }
    }
  }
}

BOOL sub_2530DD988(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  sub_2530D2104(v3, v4);
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = *v6++;
  }

  while (v9 != v11);
  return v7 != 0;
}

unint64_t *sub_2530DDA08(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v26 = a4;
  v21 = result;
  v22 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 48) + 24 * v15;
    v17 = *(v16 + 8);
    v23 = *v16;
    v24 = v17;
    v25 = *(v16 + 16);
    sub_2530DA7BC(v23, v17);
    v18 = v26(&v23);
    result = sub_2530DA7C4(v23, v24);
    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_2530DDC14(v21, a2, v22, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2530DDB84(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_2530DDA08(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2530DDC14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580C88, &unk_25314D210);
  result = sub_2531493A4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v31 = v4;
  v32 = result;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_253149814();
    if (v19 < 0)
    {
      MEMORY[0x259BFD420](1);

      v20 = v17;
      sub_253148BB4();
      sub_253149834();
    }

    else
    {
      MEMORY[0x259BFD420](0);

      v20 = v17;
      sub_253148BB4();
    }

    result = sub_253149844();
    v9 = v32;
    v21 = -1 << *(v32 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v32 + 48) + 24 * v24;
    *v29 = v20;
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
    ++*(v32 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v31;
    v10 = v33;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v33 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_2530DDEA0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2531492E4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2531492E4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2530DFD0C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580E00, &unk_25314D480);
            v9 = sub_2530FBA64(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        _s5ProxyCMa_0();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2530DE020(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a6;
  v62 = a7;
  v58 = a3;
  v59 = a4;
  v57 = a2;
  v60 = a5;
  v8 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  v54 = type metadata accessor for AnyModelStateChange(0);
  v13 = MEMORY[0x28223BE20](v54);
  v48 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v46 = v15;
  v47 = &v46 - v16;
  v17 = *a1;
  v18 = *a1 + 64;
  v19 = 1 << *(*a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(*a1 + 64);
  v22 = (v19 + 63) >> 6;
  v50 = (v15 + 48);
  v51 = (v8 + 16);
  v63 = v17;

  v24 = 0;
  v49 = MEMORY[0x277D84F90];
  v52 = v22;
  v53 = v18;
  v55 = v12;
LABEL_4:
  v25 = v24;
  if (!v21)
  {
    goto LABEL_6;
  }

  do
  {
    v24 = v25;
LABEL_9:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v27 = (v24 << 9) | (8 * v26);
    v28 = *(*(v63 + 48) + v27);
    v29 = *(*(v63 + 56) + v27);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v31 = *(AssociatedConformanceWitness + 56);
    v32 = v28;
    v33 = v29;
    v34 = swift_checkMetadataState();
    v35 = v31(v32, v34, AssociatedConformanceWitness);
    v64[0] = v33;
    v36 = v56;
    v37 = v60;
    (*v51)(v56, v58, v60);
    v38 = v33;
    swift_unknownObjectRetain();
    v39 = swift_checkMetadataState();
    v40 = v55;
    sub_2530FC314(v64, v35, v36, v37, v39, v62, v55);
    if ((*v50)(v40, 1, v54) != 1)
    {
      v41 = v47;
      sub_2530DFBD4(v40, v47, type metadata accessor for AnyModelStateChange);
      sub_2530DFB6C(v41, v48, type metadata accessor for AnyModelStateChange);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_2530F46D0(0, v49[2] + 1, 1, v49);
      }

      v18 = v53;
      v43 = v49[2];
      v42 = v49[3];
      if (v43 >= v42 >> 1)
      {
        v49 = sub_2530F46D0((v42 > 1), v43 + 1, 1, v49);
      }

      swift_unknownObjectRelease();

      sub_2530DFCAC(v47, type metadata accessor for AnyModelStateChange);
      v44 = v48;
      v45 = v49;
      v49[2] = v43 + 1;
      result = sub_2530DFBD4(v44, v45 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43, type metadata accessor for AnyModelStateChange);
      v22 = v52;
      goto LABEL_4;
    }

    swift_unknownObjectRelease();
    result = sub_2530CD33C(v40, &qword_27F5807B0, &qword_25314D460);
    v25 = v24;
    v22 = v52;
    v18 = v53;
  }

  while (v21);
LABEL_6:
  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      return v49;
    }

    v21 = *(v18 + 8 * v24);
    ++v25;
    if (v21)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_2530DE558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v83 = a6;
  v84 = a7;
  v80 = a3;
  v81 = a4;
  v74 = a2;
  v90 = *MEMORY[0x277D85DE8];
  v82 = a5;
  v8 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v79 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460);
  MEMORY[0x28223BE20](v10 - 8);
  v78 = &v68 - v11;
  v77 = type metadata accessor for AnyModelStateChange(0);
  v12 = MEMORY[0x28223BE20](v77);
  v72 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = &v68 - v15;
  v16 = *(a1 + 8);
  v17 = 1 << *(v16 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v16 + 64);
  v20 = (v17 + 63) >> 6;
  v76 = (v8 + 16);
  v21 = v16 + 64;
  v70 = v14;
  v75 = (v14 + 48);

  v22 = 0;
  v69 = 0;
  v73 = MEMORY[0x277D84F90];
  v86 = v16 + 64;
  v87 = v20;
  v85 = v16;
LABEL_5:
  v23 = v22;
  if (!v19)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v22 = v23;
LABEL_13:
      v24 = __clz(__rbit64(v19)) | (v22 << 6);
      v25 = *(*(v16 + 48) + 8 * v24);
      v88 = *(*(v16 + 56) + 16 * v24);
      v26 = *(&v88 + 1);
      LOBYTE(v24) = *(*(&v88 + 1) + 32);
      v27 = v24 & 0x3F;
      v28 = ((1 << v24) + 63) >> 6;
      v29 = 8 * v28;

      if (v27 <= 0xD)
      {
        v30 = v25;
        v31 = v25;
        v32 = v88;

        goto LABEL_15;
      }

      swift_bridgeObjectRetain_n();
      v57 = v25;
      v58 = v88;
      if (swift_stdlib_isStackAllocationSafe())
      {
        v30 = v25;

LABEL_15:
        MEMORY[0x28223BE20](v33);
        bzero(&v68 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0), v29);
        v34 = 0;
        v35 = 0;
        v36 = 1 << *(v26 + 32);
        if (v36 < 64)
        {
          v37 = ~(-1 << v36);
        }

        else
        {
          v37 = -1;
        }

        v38 = v37 & *(v26 + 56);
        v39 = (v36 + 63) >> 6;
        while (v38)
        {
          v40 = __clz(__rbit64(v38));
          v38 &= v38 - 1;
          v41 = v40 | (v35 << 6);
LABEL_26:
          if ((*(*(v26 + 48) + 24 * v41 + 16) & 0x80000000) == 0)
          {
            *(&v68 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v41;
            if (__OFADD__(v34++, 1))
            {
              goto LABEL_47;
            }
          }
        }

        v42 = v35;
        while (1)
        {
          v35 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if (v35 >= v39)
          {
            v45 = sub_2530DDC14((&v68 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0)), v28, v34, v26);
            v25 = v30;
            goto LABEL_31;
          }

          v43 = *(v26 + 56 + 8 * v35);
          ++v42;
          if (v43)
          {
            v38 = (v43 - 1) & v43;
            v41 = __clz(__rbit64(v43)) | (v35 << 6);
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
      }

      v59 = swift_slowAlloc();

      v60 = v69;
      v61 = sub_2530DDB84(v59, v28, v26, sub_2530DB92C);
      v69 = v60;
      if (v60)
      {

        swift_bridgeObjectRelease_n();
        result = MEMORY[0x259BFDC60](v59, -1, -1);
        __break(1u);
        return result;
      }

      v62 = v61;
      swift_bridgeObjectRelease_n();
      MEMORY[0x259BFDC60](v59, -1, -1);
      v45 = v62;
      v21 = v86;
LABEL_31:
      v19 &= v19 - 1;
      v46 = *(v45 + 16);

      if (v46)
      {
        break;
      }

      v23 = v22;
      v20 = v87;
      if (!v19)
      {
        goto LABEL_8;
      }
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v48 = v25;
    v49 = *(AssociatedConformanceWitness + 56);
    v50 = swift_checkMetadataState();
    v51 = v49(v25, v50, AssociatedConformanceWitness);
    v89 = v88;
    v52 = v79;
    v53 = v82;
    (*v76)(v79, v80, v82);
    v54 = v88;

    swift_unknownObjectRetain();
    v55 = swift_checkMetadataState();
    v56 = v78;
    sub_2530FC678(&v89, v51, v52, v53, v55, v84, v78);
    if ((*v75)(v56, 1, v77) != 1)
    {
      *&v88 = v48;
      v63 = v71;
      sub_2530DFBD4(v56, v71, type metadata accessor for AnyModelStateChange);
      sub_2530DFB6C(v63, v72, type metadata accessor for AnyModelStateChange);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_2530F46D0(0, v73[2] + 1, 1, v73);
      }

      v65 = v73[2];
      v64 = v73[3];
      v16 = v85;
      if (v65 >= v64 >> 1)
      {
        v73 = sub_2530F46D0((v64 > 1), v65 + 1, 1, v73);
      }

      v21 = v86;
      swift_unknownObjectRelease();

      sub_2530DFCAC(v71, type metadata accessor for AnyModelStateChange);
      v66 = v73;
      v73[2] = v65 + 1;
      sub_2530DFBD4(v72, v66 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v65, type metadata accessor for AnyModelStateChange);
      v20 = v87;
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
    sub_2530CD33C(v56, &qword_27F5807B0, &qword_25314D460);
    v23 = v22;
    v16 = v85;
    v21 = v86;
    v20 = v87;
  }

  while (v19);
  while (1)
  {
LABEL_8:
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_46;
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = *(v21 + 8 * v22);
    ++v23;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  return v73;
}

void *sub_2530DEDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v81 = a6;
  v82 = a7;
  v78 = a3;
  v79 = a4;
  v71 = a2;
  v80 = a5;
  v8 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v77 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v63 - v11;
  v76 = type metadata accessor for AnyModelStateChange(0);
  v13 = *(v76 - 8);
  v14 = MEMORY[0x28223BE20](v76);
  v66 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = &v63 - v16;
  v17 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
  v69 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v84 = &v63 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DF0, &qword_25314D468);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = (&v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v83 = (&v63 - v26);
  v27 = *(a1 + 16);
  v28 = *(v27 + 64);
  v68 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v73 = (v8 + 16);
  v64 = v13;
  v72 = (v13 + 48);
  v70 = v27;

  v34 = 0;
  v67 = MEMORY[0x277D84F90];
  v74 = v32;
  v75 = v25;
  while (1)
  {
    v35 = v34;
    if (!v31)
    {
      break;
    }

    while (1)
    {
      v36 = v35;
LABEL_13:
      v39 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v40 = v39 | (v36 << 6);
      v41 = *(*(v70 + 48) + 8 * v40);
      v42 = v84;
      sub_2530DFB6C(*(v70 + 56) + *(v69 + 72) * v40, v84, type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DF8, &unk_25314D470);
      v44 = *(v43 + 48);
      *v25 = v41;
      sub_2530DFBD4(v42, v25 + v44, type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete);
      (*(*(v43 - 8) + 56))(v25, 0, 1, v43);
      v45 = v41;
      v38 = v36;
LABEL_14:
      v46 = v83;
      sub_2530DFC3C(v25, v83);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DF8, &unk_25314D470);
      if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
      {

        return v67;
      }

      v85 = v38;
      v48 = *v46;
      sub_2530DFBD4(v46 + *(v47 + 48), v20, type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v50 = *(AssociatedConformanceWitness + 56);
      v51 = swift_checkMetadataState();
      v52 = v50(v48, v51, AssociatedConformanceWitness);
      v53 = v84;
      sub_2530DFB6C(v20, v84, type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete);
      v54 = v77;
      v55 = v80;
      (*v73)(v77, v78, v80);
      swift_unknownObjectRetain();
      swift_checkMetadataState();
      sub_2530FC9E0(v53, v52, v54, v55, v82, v12);
      if ((*v72)(v12, 1, v76) != 1)
      {
        break;
      }

      sub_2530DFCAC(v20, type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete);

      swift_unknownObjectRelease();
      result = sub_2530CD33C(v12, &qword_27F5807B0, &qword_25314D460);
      v35 = v85;
      v32 = v74;
      v25 = v75;
      if (!v31)
      {
        goto LABEL_6;
      }
    }

    v57 = v65;
    sub_2530DFBD4(v12, v65, type metadata accessor for AnyModelStateChange);
    sub_2530DFB6C(v57, v66, type metadata accessor for AnyModelStateChange);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v74;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v67 = sub_2530F46D0(0, v67[2] + 1, 1, v67);
    }

    v60 = v67[2];
    v59 = v67[3];
    if (v60 >= v59 >> 1)
    {
      v67 = sub_2530F46D0((v59 > 1), v60 + 1, 1, v67);
    }

    swift_unknownObjectRelease();

    sub_2530DFCAC(v65, type metadata accessor for AnyModelStateChange);
    sub_2530DFCAC(v20, type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete);
    v61 = v66;
    v62 = v67;
    v67[2] = v60 + 1;
    result = sub_2530DFBD4(v61, v62 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v60, type metadata accessor for AnyModelStateChange);
    v25 = v75;
    v34 = v85;
  }

LABEL_6:
  if (v32 <= v35 + 1)
  {
    v37 = v35 + 1;
  }

  else
  {
    v37 = v32;
  }

  v38 = v37 - 1;
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v32)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DF8, &unk_25314D470);
      (*(*(v56 - 8) + 56))(v25, 1, 1, v56);
      v31 = 0;
      goto LABEL_14;
    }

    v31 = *(v68 + 8 * v36);
    ++v35;
    if (v31)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2530DF604(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a7;
  v43 = a2;
  v44 = a3;
  *&v42 = a1;
  v10 = type metadata accessor for AnyModelStateChange(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = a5;
  v41 = *(a5 - 8);
  MEMORY[0x28223BE20](v12);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v39 = a4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v38 - v18;
  *&v47 = a4;
  *(&v47 + 1) = a5;
  v48 = a6;
  v49 = v46;
  v20 = type metadata accessor for ModelStateSubscriptionManager.RelationshipModelSet(0, &v47);
  v45 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - v21;
  v23 = *(v42 + 16);
  v24 = *(v17 + 16);
  v42 = *v42;
  v24(v19, v43, AssociatedTypeWitness);
  v25 = v40;
  v26 = v38;
  (*(v41 + 16))(v40, v44, v38);
  sub_2530DB93C(v19, v25, v39, v26, a6, v46, v22);
  v47 = v42;
  v48 = v23;
  sub_2530DBA90(&v47, v20);
  v27 = sub_2530DBF94(v20);
  v28 = v27[2];
  if (v28)
  {
    v44 = v22;
    v46 = v20;
    v51 = MEMORY[0x277D84F90];
    sub_2530F4E10(0, v28, 0);
    v29 = v51;
    v30 = (v27 + 4);
    do
    {
      sub_2530C25FC(v30, &v47);
      v31 = v49;
      v32 = v50;
      v33 = __swift_project_boxed_opaque_existential_1(&v47, v49);
      v14[3] = v31;
      v14[4] = *(v32 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
      (*(*(v31 - 8) + 16))(boxed_opaque_existential_0, v33, v31);
      swift_storeEnumTagMultiPayload();
      __swift_destroy_boxed_opaque_existential_0(&v47);
      v51 = v29;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2530F4E10((v35 > 1), v36 + 1, 1);
        v29 = v51;
      }

      *(v29 + 16) = v36 + 1;
      sub_2530DFBD4(v14, v29 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v36, type metadata accessor for AnyModelStateChange);
      v30 += 40;
      --v28;
    }

    while (v28);
    (*(v45 + 8))(v44, v46);
  }

  else
  {

    (*(v45 + 8))(v22, v20);
    return MEMORY[0x277D84F90];
  }

  return v29;
}

unint64_t sub_2530DFADC()
{
  result = qword_27F580918;
  if (!qword_27F580918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F580918);
  }

  return result;
}

uint64_t sub_2530DFB28(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomesStore.HomesRelationshipModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2530DFB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2530DFBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2530DFC3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DF0, &qword_25314D468);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530DFCAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2530DFD0C()
{
  result = qword_27F580E08[0];
  if (!qword_27F580E08[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F580E00, &unk_25314D480);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F580E08);
  }

  return result;
}

void sub_2530DFD78(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_2530E042C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2530DFE8C(int *a1, unsigned int a2, void *a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(a3[3] - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
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
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25, v10);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_2530E0144(_DWORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(a4[3] - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  if (v12 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = v13 + v14;
  v18 = (v13 + v14) & ~v14;
  v19 = v15 + 7;
  v20 = ((v15 + 7 + v18) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v15 + 7 + v18) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = a3 - v16 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v16 < a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a2 > v16)
  {
    if (v20)
    {
      v25 = 1;
    }

    else
    {
      v25 = a2 - v16;
    }

    if (v20)
    {
      v26 = ~v16 + a2;
      bzero(a1, v20);
      *a1 = v26;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }
    }

    else if (v24)
    {
      *(a1 + v20) = v25;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v20) = 0;
  }

  else if (v24)
  {
    *(a1 + v20) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v10 == v16)
  {
    v27 = *(v9 + 56);

    v27(a1, a2, v10, AssociatedTypeWitness);
  }

  else
  {
    v28 = (a1 + v17) & ~v14;
    if (v12 == v16)
    {
      v29 = *(v11 + 56);

      v29(v28, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v30 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v30 = (a2 - 1);
      }

      *((v19 + v28) & 0xFFFFFFFFFFFFFFF8) = v30;
    }
  }
}

void sub_2530E042C(uint64_t a1)
{
  if (!qword_27F580E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F580E98, qword_25314D4A8);
    sub_2530DA4C8();
    v1 = sub_253148AF4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F580E90);
    }
  }
}

unint64_t sub_2530E04A8()
{
  result = qword_27F580EA0;
  if (!qword_27F580EA0)
  {
    _s5ProxyCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580EA0);
  }

  return result;
}

void sub_2530E0500(uint64_t *a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_253148B54();
  v5 = [v3 initWithEntityName_];

  [v5 setResultType_];
  [v5 setPredicate_];
  [v5 setReturnsObjectsAsFaults_];
  if (a1[4])
  {
    v6 = sub_253148C84();
  }

  else
  {
    v6 = 0;
  }

  [v5 setRelationshipKeyPathsForPrefetching_];

  sub_2530CF970(0, &qword_27F580EA8, 0x277CBE438);
  v7 = sub_253149154();

  if (v1)
  {
    return;
  }

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_16:

    return;
  }

  v8 = sub_2531492E4();
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_7:
  sub_2531494C4();
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        v11 = MEMORY[0x259BFD000]();
        _s5ProxyCMa_0();
        *(swift_allocObject() + 16) = v11;
        sub_253149494();
        sub_2531494D4();
        sub_2531494E4();
        sub_2531494A4();
        v9 = v10;
      }

      while (v8 != v10);
    }

    else
    {
      _s5ProxyCMa_0();
      v12 = 32;
      do
      {
        v13 = *(v7 + v12);
        *(swift_allocObject() + 16) = v13;
        v14 = v13;
        sub_253149494();
        sub_2531494D4();
        sub_2531494E4();
        sub_2531494A4();
        v12 += 8;
        --v8;
      }

      while (v8);
    }
  }
}

id sub_2530E078C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 persistentStoreCoordinator];
  if (result)
  {
    v7 = result;
    v8 = [result managedObjectModel];

    v9 = [v8 entitiesByName];
    sub_2530CF970(0, &qword_27F580910, 0x277CBE408);
    v10 = sub_253148AD4();

    if (*(v10 + 16) && (v11 = sub_25311D908(a1, a2), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      return v13;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2530E08A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_253149144();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530E096C, 0, 0);
}

uint64_t sub_2530E096C()
{
  (*(v0[8] + 104))(v0[9], *MEMORY[0x277CBE110], v0[7]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_2530E0A34;
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return MEMORY[0x28210EE50](v6, v2, v4, v5, v3);
}

uint64_t sub_2530E0A34()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2530E0BDC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2530E0BDC()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_2530E0C88(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [v1 executeRequest:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_253148844();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_2530E0D68(uint64_t a1)
{
  v2 = [*v1 objectWithID_];
  _s5ProxyCMa_0();
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_2530E0DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2530BF218;

  return sub_2530E08A4(a1, a2, a3, a4);
}

id sub_2530E0EA4(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if ([v1 setQueryGenerationFromToken:a1 error:v4])
  {
    return v4[0];
  }

  v3 = v4[0];
  sub_253148844();

  return swift_willThrow();
}

unint64_t sub_2530E0F54()
{
  result = qword_27F580940;
  if (!qword_27F580940)
  {
    type metadata accessor for HMCDUserSharedSettingsModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580940);
  }

  return result;
}

uint64_t sub_2530E0FB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HomesStore.User.SharedSettings(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 modelID];
  sub_253148924();

  v7[v4[5]] = [a1 isExplicitContentAllowed];
  v7[v4[6]] = [a1 isiTunesAccountAllowed];
  v7[v4[7]] = [a1 isDolbyAtmosEnabled];
  v7[v4[8]] = [a1 isLosslessMusicEnabled];
  v7[v4[9]] = [a1 isPlaybackInfluencesEnabled];
  LOBYTE(v8) = [a1 isSiriIdentifyVoiceEnabled];

  v7[v4[10]] = v8;
  sub_2530E1368(v7, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_2530E1158()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB0, &qword_25314D550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314D510;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x44496C65646F6DLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000018;
  *(inited + 72) = 0x800000025314ABB0;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000016;
  *(inited + 96) = 0x800000025314ABD0;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000013;
  *(inited + 120) = 0x800000025314ABF0;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000016;
  *(inited + 144) = 0x800000025314AC10;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD00000000000001BLL;
  *(inited + 168) = 0x800000025314AC30;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD00000000000001ALL;
  *(inited + 192) = 0x800000025314AC50;
  v1 = sub_253109C78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB8, &qword_25314D638);
  result = swift_arrayDestroy();
  qword_27F58D080 = v1;
  return result;
}

uint64_t sub_2530E130C()
{
  if (qword_27F580220 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2530E1368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.User.SharedSettings(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530E13CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_2530F4E54(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  result = sub_253149264();
  v6 = result;
  v7 = 0;
  v25 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_36;
    }

    v26 = *(a1 + 36);
    v10 = *(*(a1 + 48) + v6);
    if (v10 > 3)
    {
      if (*(*(a1 + 48) + v6) > 5u)
      {
        if (v10 == 6)
        {
          v27 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
          v11 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
          v12 = &protocol conformance descriptor for HomesStore.Accessory.AppleMediaDevice;
          v13 = &qword_27F5806F0;
        }

        else
        {
          v27 = type metadata accessor for HomesStore.User.SharedSettings(0);
          v11 = type metadata accessor for HomesStore.User.SharedSettings;
          v12 = &protocol conformance descriptor for HomesStore.User.SharedSettings;
          v13 = &unk_27F5806E8;
        }
      }

      else if (v10 == 4)
      {
        v27 = type metadata accessor for HomesStore.User(0);
        v11 = type metadata accessor for HomesStore.User;
        v12 = &protocol conformance descriptor for HomesStore.User;
        v13 = &unk_27F580700;
      }

      else
      {
        v27 = type metadata accessor for HomesStore.Zone(0);
        v11 = type metadata accessor for HomesStore.Zone;
        v12 = &protocol conformance descriptor for HomesStore.Zone;
        v13 = &qword_27F5806F8;
      }
    }

    else if (*(*(a1 + 48) + v6) > 1u)
    {
      if (v10 == 2)
      {
        v27 = type metadata accessor for HomesStore.Home(0);
        v11 = type metadata accessor for HomesStore.Home;
        v12 = &protocol conformance descriptor for HomesStore.Home;
        v13 = &qword_27F580710;
      }

      else
      {
        v27 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
        v11 = type metadata accessor for HomesStore.HomesRelationshipModel;
        v12 = &protocol conformance descriptor for HomesStore.HomesRelationshipModel;
        v13 = &qword_27F580708;
      }
    }

    else if (*(*(a1 + 48) + v6))
    {
      v27 = type metadata accessor for HomesStore.Room(0);
      v11 = type metadata accessor for HomesStore.Room;
      v12 = &protocol conformance descriptor for HomesStore.Room;
      v13 = &qword_27F580718;
    }

    else
    {
      v27 = type metadata accessor for HomesStore.Accessory(0);
      v11 = type metadata accessor for HomesStore.Accessory;
      v12 = &protocol conformance descriptor for HomesStore.Accessory;
      v13 = &qword_27F580720;
    }

    result = sub_2530E836C(v13, v11, v12);
    v14 = result;
    v16 = *(v28 + 16);
    v15 = *(v28 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_2530F4E54((v15 > 1), v16 + 1, 1);
    }

    *(v28 + 16) = v16 + 1;
    v17 = v28 + 16 * v16;
    *(v17 + 32) = v27;
    *(v17 + 40) = v14;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_37;
    }

    v4 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_38;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_39;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_2530BA974(v6, v26, 0);
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_2530BA974(v6, v26, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2530E1814()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F580EC0);
  __swift_project_value_buffer(v0, qword_27F580EC0);
  return sub_253148A84();
}

void RelationshipObserver.resolver.getter(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8);
  type metadata accessor for RelationshipResolver(0, *(a1 + 16), *(a1 + 24), a2);
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_2530E1A98(v5 + v6, a3);
  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_2530E1948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v11 = *v8;
  v12 = *(**v8 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11 + v12, a2);
  v13 = *(*v11 + 112);
  swift_beginAccess();
  sub_2530C25FC(v11 + v13, v16);
  return sub_2531477CC(v10, v16, a2, a3, a4);
}

uint64_t sub_2530E1ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v114 = a2;
  v111 = a6;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581368, &qword_25314D8F8);
  v10 = MEMORY[0x28223BE20](v125);
  v124 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v123 = &v94 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v122 = &v94 - v15;
  MEMORY[0x28223BE20](v14);
  v121 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  MEMORY[0x28223BE20](v17 - 8);
  v108 = &v94 - v18;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D8, &unk_25314D920);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v94 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v104 = *(v105 - 8);
  v20 = MEMORY[0x28223BE20](v105);
  v99 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v21;
  MEMORY[0x28223BE20](v20);
  v101 = &v94 - v22;
  v100 = type metadata accessor for HomesStore.AnyChanges(0);
  v102 = *(v100 - 8);
  v23 = MEMORY[0x28223BE20](v100);
  v106 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v24;
  MEMORY[0x28223BE20](v23);
  v112 = &v94 - v25;
  v27 = type metadata accessor for RelationshipObserver.State(0, a4, a5, v26);
  v109 = a3;
  sub_2530C25FC(a3, &v131);
  *&v131 = sub_2530E788C(a1, &v131, v28, v29);
  v30 = sub_2530E78E0(&v131, v27);

  v107 = v30;

  v115 = a4;
  v113 = a5;
  v110 = a1;
  v31 = sub_2530E9588(a4);
  v32 = *(v31 + 16);
  if (v32)
  {
    *&v131 = MEMORY[0x277D84F90];
    sub_2530F4DB0(0, v32, 0);
    v33 = v131;
    v34 = v31 + 64;
    result = sub_253149264();
    v36 = result;
    v37 = 0;
    v38 = *(v31 + 36);
    v116 = v31 + 72;
    v117 = v32;
    v118 = v38;
    v119 = v31 + 64;
    v120 = v31;
    while ((v36 & 0x8000000000000000) == 0 && v36 < 1 << *(v31 + 32))
    {
      v41 = v36 >> 6;
      if ((*(v34 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
      {
        goto LABEL_24;
      }

      if (v38 != *(v31 + 36))
      {
        goto LABEL_25;
      }

      v126 = v37;
      v127 = 1 << v36;
      v42 = v125;
      v43 = *(v125 + 48);
      v44 = *(v31 + 48);
      v45 = sub_253148944();
      v46 = *(v45 - 8);
      v47 = v46;
      v48 = v44 + *(v46 + 72) * v36;
      v49 = *(v46 + 16);
      v128 = v33;
      v50 = v121;
      v49(v121, v48, v45);
      sub_2530C25FC(*(v31 + 56) + 40 * v36, &v50[v43]);
      v51 = *(v47 + 32);
      v52 = v122;
      v51(v122, v50, v45);
      sub_2530BDB14(&v50[v43], v52 + *(v42 + 48));
      v53 = v123;
      sub_2530E7F5C(v52, v123);
      v54 = *(v42 + 48);
      v55 = v124;
      v56 = &v124[v54];
      v51(v124, v53, v45);
      v57 = (v53 + v54);
      v33 = v128;
      sub_2530BDB14(v57, v55 + v54);
      v58 = *(v56 + 3);
      v59 = *(v56 + 4);
      __swift_project_boxed_opaque_existential_1(v56, v58);
      sub_253133AC0(v58, v59);
      v60 = v130;
      sub_2530CD33C(v55, &qword_27F581368, &qword_25314D8F8);
      result = sub_2530CD33C(v52, &qword_27F581368, &qword_25314D8F8);
      *&v131 = v33;
      v62 = *(v33 + 16);
      v61 = *(v33 + 24);
      if (v62 >= v61 >> 1)
      {
        result = sub_2530F4DB0((v61 > 1), v62 + 1, 1);
        v33 = v131;
      }

      *(v33 + 16) = v62 + 1;
      *(v33 + v62 + 32) = v60;
      v31 = v120;
      v39 = 1 << *(v120 + 32);
      if (v36 >= v39)
      {
        goto LABEL_26;
      }

      v34 = v119;
      v63 = *(v119 + 8 * v41);
      if ((v63 & v127) == 0)
      {
        goto LABEL_27;
      }

      LODWORD(v38) = v118;
      if (v118 != *(v120 + 36))
      {
        goto LABEL_28;
      }

      v64 = v63 & (-2 << (v36 & 0x3F));
      if (v64)
      {
        v39 = __clz(__rbit64(v64)) | v36 & 0x7FFFFFFFFFFFFFC0;
        v40 = v117;
      }

      else
      {
        v65 = v41 << 6;
        v66 = v41 + 1;
        v40 = v117;
        v67 = (v116 + 8 * v41);
        while (v66 < (v39 + 63) >> 6)
        {
          v69 = *v67++;
          v68 = v69;
          v65 += 64;
          ++v66;
          if (v69)
          {
            result = sub_2530BA974(v36, v118, 0);
            v39 = __clz(__rbit64(v68)) + v65;
            goto LABEL_4;
          }
        }

        result = sub_2530BA974(v36, v118, 0);
      }

LABEL_4:
      v37 = v126 + 1;
      v36 = v39;
      if (v126 + 1 == v40)
      {

        goto LABEL_22;
      }
    }

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
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
LABEL_22:
    v70 = sub_2530DA748(v33);

    v130 = v70;
    (*(*(v113 + 8) + 48))(&v129);
    sub_2530D6108(&v131, v129);
    v128 = sub_2530E13CC(v130);

    type metadata accessor for AnyModelStateChange(0);
    v71 = v96;
    v72 = v95;
    v73 = v97;
    (*(v96 + 104))(v95, *MEMORY[0x277D858A0], v97);
    v74 = v101;
    sub_253148ED4();
    (*(v71 + 8))(v72, v73);
    v75 = sub_253148DE4();
    v76 = *(*(v75 - 8) + 56);
    v77 = v108;
    v76(v108, 1, 1, v75);
    sub_2530C25FC(v114 + 16, &v131);
    v78 = v104;
    v79 = v99;
    v80 = v105;
    (*(v104 + 16))(v99, v74, v105);
    v81 = (*(v78 + 80) + 80) & ~*(v78 + 80);
    v82 = swift_allocObject();
    *(v82 + 2) = 0;
    *(v82 + 3) = 0;
    *(v82 + 4) = v128;
    sub_2530BDB14(&v131, (v82 + 40));
    (*(v78 + 32))(&v82[v81], v79, v80);
    v83 = sub_253112858(0, 0, v77, &unk_25314D930, v82);
    (*(v78 + 8))(v74, v80);
    v84 = v112;
    *&v112[*(v100 + 20)] = v83;
    v76(v77, 1, 1, v75);
    v85 = v106;
    sub_2530E80D4(v84, v106, type metadata accessor for HomesStore.AnyChanges);
    v86 = (*(v102 + 80) + 48) & ~*(v102 + 80);
    v87 = (v103 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
    v88 = swift_allocObject();
    v88[2] = 0;
    v88[3] = 0;
    v89 = v115;
    v90 = v113;
    v88[4] = v115;
    v88[5] = v90;
    sub_2530E82D0(v85, v88 + v86, type metadata accessor for HomesStore.AnyChanges);
    v91 = v107;
    *(v88 + v87) = v107;

    v92 = sub_253122330(0, 0, v77, &unk_25314D948, v88);

    __swift_destroy_boxed_opaque_existential_0(v109);
    (*(*(v89 - 8) + 8))(v110, v89);
    result = sub_2530E8270(v84, type metadata accessor for HomesStore.AnyChanges);
    v93 = v111;
    *v111 = v92;
    v93[1] = v91;
  }

  return result;
}

uint64_t sub_2530E2620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = type metadata accessor for AnyModelStateChange(0);
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460);
  v7[10] = swift_task_alloc();
  v7[11] = type metadata accessor for HomesStore.AnyChanges.AsyncIterator(0);
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530E274C, 0, 0);
}

uint64_t sub_2530E274C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  sub_253148E54();
  *(v1 + *(v2 + 20)) = *(v3 + *(type metadata accessor for HomesStore.AnyChanges(0) + 20));
  v4 = sub_2530E836C(&qword_27F581380, type metadata accessor for HomesStore.AnyChanges.AsyncIterator, &protocol conformance descriptor for HomesStore.AnyChanges.AsyncIterator);

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_2530E2874;
  v6 = v0[11];
  v7 = v0[10];

  return MEMORY[0x282200308](v7, v6, v4);
}

uint64_t sub_2530E2874()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2530E2BE4;
  }

  else
  {
    v2 = sub_2530E2988;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2530E2988()
{
  v1 = *(v0 + 80);
  v2 = (*(*(v0 + 64) + 48))(v1, 1, *(v0 + 56));
  v3 = *(v0 + 72);
  if (v2 == 1)
  {
    sub_2530E8270(*(v0 + 96), type metadata accessor for HomesStore.AnyChanges.AsyncIterator);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 32);
    v13 = *(v0 + 40);
    sub_2530E82D0(v1, v3, type metadata accessor for AnyModelStateChange);
    v7 = swift_task_alloc();
    *(v7 + 16) = v13;
    *(v7 + 32) = v3;
    v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v6 + v8));
    sub_2530E8338();
    os_unfair_lock_unlock((v6 + v8));

    sub_2530E8270(v3, type metadata accessor for AnyModelStateChange);
    v9 = sub_2530E836C(&qword_27F581380, type metadata accessor for HomesStore.AnyChanges.AsyncIterator, &protocol conformance descriptor for HomesStore.AnyChanges.AsyncIterator);
    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v10[1] = sub_2530E2874;
    v11 = *(v0 + 88);
    v12 = *(v0 + 80);

    return MEMORY[0x282200308](v12, v11, v9);
  }
}

uint64_t sub_2530E2BE4()
{
  *(v0 + 16) = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580730, &qword_25314F190);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2530E2C78, 0, 0);
}

uint64_t sub_2530E2C78()
{
  sub_2530E8270(*(v0 + 96), type metadata accessor for HomesStore.AnyChanges.AsyncIterator);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530E2D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_253148944();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = *(type metadata accessor for RelationshipObserver.ObserverState(0, a3, a4, v11) + 36);
  type metadata accessor for RelationshipObserver.Change(255, a3, a4, v13);
  v14 = sub_253148E44();
  v15 = *(*(v14 - 8) + 32);

  return v15(a5 + v12, a2, v14);
}

uint64_t sub_2530E2E04(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v40 = a1;
  v3 = *v2;
  v4 = sub_253148944();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 88);
  v7 = *(v3 + 80);
  v31 = v6;
  v32 = v7;
  v9 = type metadata accessor for RelationshipObserver.ObserverState(0, v7, v6, v8);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  type metadata accessor for RelationshipObserver.Change(255, v7, v6, v14);
  v15 = sub_253148E24();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  v19 = sub_253148E44();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v30 - v24;
  swift_checkMetadataState();
  sub_2530BE4A4(v18);
  sub_253148DF4();
  (*(v16 + 8))(v18, v15);
  v26 = v34;
  sub_253148934();
  (*(v20 + 16))(v23, v25, v19);
  sub_2530E2D18(v26, v23, v32, v31, v13);
  v28 = v35;
  v27 = v36;
  (*(v35 + 16))(v33, v13, v36);
  swift_beginAccess();
  sub_253148D64();
  sub_253148D34();
  swift_endAccess();
  (*(v20 + 8))(v25, v19);
  (*(v38 + 16))(v40, v13, v39);
  return (*(v28 + 8))(v13, v27);
}

uint64_t sub_2530E320C(void *a1)
{
  v2 = v1;
  v4 = sub_253148944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531493D4();
  v8 = *(v2 + *(*v2 + 104));
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  v9 = sub_25311D834(v7);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    (*(v5 + 8))(v7, v4);
    v11 = 0;
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    goto LABEL_6;
  }

  sub_2530C25FC(*(v8 + 56) + 40 * v9, v13);
  (*(v5 + 8))(v7, v4);

  v11 = 1;
LABEL_6:
  sub_2530CD33C(v13, &qword_27F581370, &qword_25314D908);
  return v11;
}

uint64_t sub_2530E33A8(uint64_t a1)
{
  v2 = type metadata accessor for AnyModelStateChange(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v27 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  if (qword_27F580228 != -1)
  {
    swift_once();
  }

  v11 = sub_253148A94();
  __swift_project_value_buffer(v11, qword_27F580EC0);
  sub_2530E80D4(a1, v10, type metadata accessor for AnyModelStateChange);
  v12 = sub_253148A74();
  v13 = sub_2531490A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v28 = v15;
    *v14 = 136315138;
    sub_2530E80D4(v10, v8, type metadata accessor for AnyModelStateChange);
    v16 = sub_253148B74();
    v27[1] = v2;
    v18 = v17;
    sub_2530E8270(v10, type metadata accessor for AnyModelStateChange);
    v19 = sub_253146498(v16, v18, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2530B8000, v12, v13, "Got change: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x259BFDC60](v15, -1, -1);
    MEMORY[0x259BFDC60](v14, -1, -1);
  }

  else
  {

    sub_2530E8270(v10, type metadata accessor for AnyModelStateChange);
  }

  sub_2530E80D4(a1, v5, type metadata accessor for AnyModelStateChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v25 = *(v5 + 1);
    v28 = *v5;
    v29 = v25;
    v30 = *(v5 + 4);
    sub_2530E3A8C(&v28, v21, v22, v23);
    return sub_2530C26A4(&v28);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v24 = *(v5 + 1);
    v28 = *v5;
    v29 = v24;
    v30 = *(v5 + 4);
    sub_2530E36D4(&v28, v21, v22, v23);
    return sub_2530C26A4(&v28);
  }

  return sub_2530E8270(v5, type metadata accessor for AnyModelStateChange);
}

uint64_t sub_2530E36D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*v5 + 80);
  v8 = *(*v5 + 88);
  v9 = type metadata accessor for RelationshipObserver.State.ChangeState(0, v7, v8, a4);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  updated = type metadata accessor for RelationshipObserver.State.PendingRelationshipUpdateState(0, v7, v8, v12);
  v14 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v41 = &v41 - v15;
  v16 = a1[3];
  v17 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  v19 = (v5 + *(*v5 + 112));
  swift_beginAccess();
  v21 = v19[3];
  v20 = v19[4];
  __swift_mutable_project_boxed_opaque_existential_1(v19, v21);
  v22 = *(v20 + 32);
  v23 = v16;
  v24 = v14;
  v25 = v20;
  v26 = v42;
  v22(v18, v23, v17, v21, v25);
  swift_endAccess();
  v27 = *(*v5 + 128);
  swift_beginAccess();
  v28 = v5 + v27;
  v29 = v43;
  (*(v26 + 16))(v11, v28, v43);
  if ((*(v14 + 48))(v11, 1, updated) == 1)
  {
    return (*(v26 + 8))(v11, v29);
  }

  v31 = *(v14 + 32);
  v32 = v41;
  v31(v41, v11, updated);
  v33 = __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v34 = *(v32 + *(updated + 36));
  if (sub_25312B2C0(v34, *v33))
  {
    sub_2530E41D0(v32, v34, v35, v36);
  }

  else
  {
    if (qword_27F580228 != -1)
    {
      swift_once();
    }

    v37 = sub_253148A94();
    __swift_project_value_buffer(v37, qword_27F580EC0);
    v38 = sub_253148A74();
    v39 = sub_2531490A4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2530B8000, v38, v39, "Received model during pending relationship change, waiting for remaining models", v40, 2u);
      MEMORY[0x259BFDC60](v40, -1, -1);
    }
  }

  return (*(v24 + 8))(v32, updated);
}

uint64_t sub_2530E3A8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 88);
  v9 = type metadata accessor for RelationshipObserver.Change(0, v7, v8, a4);
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x28223BE20](v9);
  v69 = &v62 - v10;
  v12 = type metadata accessor for RelationshipObserver.State.ChangeState(0, v7, v8, v11);
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x28223BE20](v12);
  v66 = &v62 - v13;
  updated = type metadata accessor for RelationshipObserver.State.PendingRelationshipUpdateState(0, v7, v8, v14);
  v64 = *(updated - 8);
  v65 = updated;
  MEMORY[0x28223BE20](updated);
  v63 = &v62 - v16;
  v17 = sub_2531491F4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v62 - v20;
  v22 = *(v7 - 8);
  v23 = MEMORY[0x28223BE20](v19);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v62 - v26;
  sub_2530C25FC(a1, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581378, &unk_25314D910);
  v28 = swift_dynamicCast();
  v29 = *(v22 + 56);
  if (v28)
  {
    v29(v21, 0, 1, v7);
    v30 = *(v22 + 32);
    v30(v27, v21, v7);
    v31 = *(*v5 + 96);
    swift_beginAccess();
    (*(v22 + 16))(v25, v5 + v31, v7);
    LOBYTE(v31) = sub_253148B44();
    v32 = *(v22 + 8);
    v32(v25, v7);
    if (v31)
    {
      return (v32)(v27, v7);
    }

    v33 = sub_2530E9588(v7);
    v34 = (v5 + *(*v5 + 112));
    swift_beginAccess();
    v35 = __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    if (sub_25312B2C0(v33, *v35))
    {
      sub_2530E41D0(v27, v33, v36, v37);

      return (v32)(v27, v7);
    }

    if (qword_27F580228 != -1)
    {
      swift_once();
    }

    v51 = sub_253148A94();
    __swift_project_value_buffer(v51, qword_27F580EC0);
    v52 = sub_253148A74();
    v53 = sub_253149094();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v33;
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2530B8000, v52, v53, "Pending relationship update since we don't have all models yet", v55, 2u);
      v56 = v55;
      v33 = v54;
      MEMORY[0x259BFDC60](v56, -1, -1);
    }

    v30(v25, v27, v7);
    v57 = v63;
    v30(v63, v25, v7);
    v59 = v64;
    v58 = v65;
    *&v57[*(v65 + 36)] = v33;
    v60 = v66;
    (*(v59 + 32))(v66, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = *(*v5 + 128);
    swift_beginAccess();
    (*(v67 + 40))(v5 + v61, v60, v68);
    return swift_endAccess();
  }

  else
  {
    v29(v21, 1, 1, v7);
    (*(v18 + 8))(v21, v17);
    result = sub_2530E320C(a1);
    if (result)
    {
      v39 = a1[3];
      v40 = a1[4];
      v41 = __swift_project_boxed_opaque_existential_1(a1, v39);
      v42 = v5 + *(*v5 + 112);
      swift_beginAccess();
      v43 = *(v42 + 24);
      v44 = *(v42 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
      (*(v44 + 32))(v41, v39, v40, v43, v44);
      swift_endAccess();
      v45 = a1;
      v46 = v69;
      sub_2530E76B4(v45, v69);
      type metadata accessor for AnyModelStateChange(0);
      swift_storeEnumTagMultiPayload();
      v47 = v71;
      swift_storeEnumTagMultiPayload();
      sub_2530E5480(v46, v48, v49, v50);
      return (*(v70 + 8))(v46, v47);
    }
  }

  return result;
}

uint64_t sub_2530E41D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a1;
  v7 = *v4;
  v8 = v7[10];
  v9 = v7[11];
  v10 = type metadata accessor for RelationshipObserver.Change(0, v8, v9, a4);
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v66 = &v56 - v12;
  v59 = *(v8 - 8);
  MEMORY[0x28223BE20](v11);
  v60 = &v56 - v13;
  v15 = type metadata accessor for RelationshipResolver(0, v8, v9, v14);
  v62 = *(v15 - 8);
  v63 = v15;
  MEMORY[0x28223BE20](v15);
  v61 = &v56 - v16;
  v65 = v9;
  v18 = type metadata accessor for RelationshipObserver.State.ChangeState(0, v8, v9, v17);
  v57 = *(v18 - 8);
  v58 = v18;
  MEMORY[0x28223BE20](v18);
  v56 = &v56 - v19;
  v20 = v7[13];
  v21 = *&v5[v20];

  v22 = sub_2530E7D4C(a2, v21);

  v24 = sub_2530E7D4C(v23, a2);

  if (qword_27F580228 != -1)
  {
    swift_once();
  }

  v25 = sub_253148A94();
  __swift_project_value_buffer(v25, qword_27F580EC0);

  v26 = sub_253148A74();
  v27 = sub_253149094();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134218240;
    *(v28 + 4) = *(v22 + 16);

    *(v28 + 12) = 2048;
    *(v28 + 14) = *(v24 + 16);

    _os_log_impl(&dword_2530B8000, v26, v27, "Processing relationship update(s), added: %ld, removed: %ld", v28, 0x16u);
    MEMORY[0x259BFDC60](v28, -1, -1);
  }

  else
  {
  }

  v29 = &v5[*(*v5 + 112)];
  swift_beginAccess();
  v31 = *(v29 + 24);
  v30 = *(v29 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v29, v31);
  (*(v30 + 24))(a2, v31, v30);
  swift_endAccess();
  v32 = *(*v5 + 96);
  swift_beginAccess();
  v33 = v59;
  v34 = v64;
  (*(v59 + 24))(&v5[v32], v64, v8);
  swift_endAccess();
  *&v5[v20] = a2;

  v35 = v65;
  updated = type metadata accessor for RelationshipObserver.State.PendingRelationshipUpdateState(0, v8, v65, v36);
  v38 = v56;
  (*(*(updated - 8) + 56))(v56, 1, 1, updated);
  v39 = *(*v5 + 128);
  swift_beginAccess();
  (*(v57 + 40))(&v5[v39], v38, v58);
  swift_endAccess();
  sub_2530E4804(v22, v40, v41, v42);

  sub_2530E4E84(v24, v43, v44, v45);

  v46 = v60;
  (*(v33 + 16))(v60, v34, v8);
  sub_2530C25FC(v29, v69);
  v47 = v61;
  sub_2531477CC(v46, v69, v8, v35, v61);
  v49 = v62;
  v48 = v63;
  v50 = v66;
  (*(v62 + 16))(v66, v47, v63);
  v51 = v68;
  swift_storeEnumTagMultiPayload();
  sub_2530E5480(v50, v52, v53, v54);
  (*(v67 + 8))(v50, v51);
  return (*(v49 + 8))(v47, v48);
}

uint64_t sub_2530E4804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for RelationshipObserver.Change(0, *(*v4 + 80), *(*v4 + 88), a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v52 = &v49 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581368, &qword_25314D8F8);
  v10 = MEMORY[0x28223BE20](v60);
  v59 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v49 - v12;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v50 = v8;
    v51 = v7;
    v66 = MEMORY[0x277D84F90];
    sub_2530F4E74(0, v13, 0);
    v14 = v66;
    v15 = a1 + 64;
    result = sub_253149264();
    v17 = result;
    v18 = 0;
    v19 = *(a1 + 36);
    v53 = a1 + 72;
    v54 = v13;
    v55 = v19;
    v56 = a1 + 64;
    v57 = a1;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
    {
      if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_26;
      }

      if (v19 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v62 = v17 >> 6;
      v63 = 1 << v17;
      v61 = v18;
      v21 = v60;
      v22 = *(v60 + 48);
      v23 = *(a1 + 48);
      v24 = sub_253148944();
      v25 = v14;
      v26 = v5;
      v27 = *(v24 - 8);
      v28 = v58;
      (*(v27 + 16))(v58, v23 + *(v27 + 72) * v17, v24);
      sub_2530C25FC(*(a1 + 56) + 40 * v17, &v28[v22]);
      v29 = v59;
      (*(v27 + 32))(v59, v28, v24);
      v5 = v26;
      v14 = v25;
      v30 = *(v21 + 48);
      sub_2530BDB14(&v28[v22], v29 + v30);
      sub_2530E4CF8((v29 + v30), v5, v64);
      result = sub_2530CD33C(v29, &qword_27F581368, &qword_25314D8F8);
      v66 = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_2530F4E74((v31 > 1), v32 + 1, 1);
        v14 = v66;
      }

      *(v14 + 16) = v32 + 1;
      v33 = v14 + 40 * v32;
      v34 = v64[0];
      v35 = v64[1];
      *(v33 + 64) = v65;
      *(v33 + 32) = v34;
      *(v33 + 48) = v35;
      a1 = v57;
      v20 = 1 << *(v57 + 32);
      if (v17 >= v20)
      {
        goto LABEL_28;
      }

      v15 = v56;
      v36 = *(v56 + 8 * v62);
      if ((v36 & v63) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v19) = v55;
      if (v55 != *(v57 + 36))
      {
        goto LABEL_30;
      }

      v37 = v36 & (-2 << (v17 & 0x3F));
      if (v37)
      {
        v20 = __clz(__rbit64(v37)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v38 = v62 << 6;
        v39 = v62 + 1;
        v40 = (v53 + 8 * v62);
        while (v39 < (v20 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            result = sub_2530BA974(v17, v55, 0);
            v20 = __clz(__rbit64(v41)) + v38;
            goto LABEL_4;
          }
        }

        result = sub_2530BA974(v17, v55, 0);
      }

LABEL_4:
      v18 = v61 + 1;
      v17 = v20;
      if (v61 + 1 == v54)
      {
        v8 = v50;
        v7 = v51;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_21:
    v43 = *(v14 + 16);
    v44 = v52;
    if (v43)
    {
      v45 = v14 + 32;
      do
      {
        sub_2530E76B4(v45, v44);
        type metadata accessor for AnyModelStateChange(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_2530E5480(v44, v46, v47, v48);
        (*(v8 + 8))(v44, v7);
        v45 += 40;
        --v43;
      }

      while (v43);
    }
  }

  return result;
}

uint64_t sub_2530E4CF8@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = (a2 + *(*a2 + 112));
  swift_beginAccess();
  v6 = __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_25312B174(a1, *v6, &v9);
  if (v10)
  {
    sub_2530BDB14(&v9, v11);
    return sub_2530BDB14(v11, a3);
  }

  else
  {
    sub_2530CD33C(&v9, &qword_27F5806E0, &qword_25314D900);
    *&v11[0] = 0;
    *(&v11[0] + 1) = 0xE000000000000000;
    sub_2531493C4();

    *&v11[0] = 0xD000000000000017;
    *(&v11[0] + 1) = 0x800000025314AE00;
    sub_253148944();
    sub_2530E836C(&qword_27F5807B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v8 = sub_2531496F4();
    MEMORY[0x259BFC7D0](v8);

    result = sub_253149594();
    __break(1u);
  }

  return result;
}

uint64_t sub_2530E4E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RelationshipObserver.Change(0, *(*v4 + 80), *(*v4 + 88), a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581368, &qword_25314D8F8);
  v10 = MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = &v55 - v12;
  v64 = type metadata accessor for AnyModelStateChange.Tombstone(0);
  v68 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v55 = v7;
    v56 = v9;
    v57 = v6;
    v58 = v4;
    v73 = MEMORY[0x277D84F90];
    sub_2530F4E94(0, v15, 0);
    v16 = v73;
    v17 = a1 + 64;
    result = sub_253149264();
    v19 = result;
    v20 = 0;
    v21 = *(a1 + 36);
    v59 = a1 + 72;
    v60 = v15;
    v22 = a1;
    v61 = v21;
    v62 = a1 + 64;
    v63 = a1;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v22 + 32))
    {
      v24 = v19 >> 6;
      if ((*(v17 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_26;
      }

      if (v21 != *(v22 + 36))
      {
        goto LABEL_27;
      }

      v69 = v20;
      v70 = 1 << v19;
      v71 = v16;
      v25 = v67;
      v26 = *(v67 + 48);
      v27 = *(v22 + 48);
      v28 = sub_253148944();
      v29 = v22;
      v30 = *(v28 - 8);
      v31 = v14;
      v32 = v65;
      (*(v30 + 16))(v65, v27 + *(v30 + 72) * v19, v28);
      sub_2530C25FC(*(v29 + 56) + 40 * v19, &v32[v26]);
      v33 = v66;
      (*(v30 + 32))(v66, v32, v28);
      v34 = *(v25 + 48);
      v16 = v71;
      v35 = (v33 + v34);
      v36 = &v32[v26];
      v14 = v31;
      sub_2530BDB14(v36, v33 + v34);
      __swift_project_boxed_opaque_existential_1(v35, v35[3]);
      sub_2531493D4();
      v37 = v35[3];
      v38 = v35[4];
      __swift_project_boxed_opaque_existential_1(v35, v37);
      sub_253133AC0(v37, v38);
      *(v31 + *(v64 + 20)) = v72;
      sub_2530CD33C(v33, &qword_27F581368, &qword_25314D8F8);
      v73 = v16;
      v40 = *(v16 + 16);
      v39 = *(v16 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_2530F4E94((v39 > 1), v40 + 1, 1);
        v16 = v73;
      }

      *(v16 + 16) = v40 + 1;
      result = sub_2530E82D0(v31, v16 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v40, type metadata accessor for AnyModelStateChange.Tombstone);
      v22 = v63;
      v23 = 1 << *(v63 + 32);
      if (v19 >= v23)
      {
        goto LABEL_28;
      }

      v17 = v62;
      v41 = *(v62 + 8 * v24);
      if ((v41 & v70) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v21) = v61;
      if (v61 != *(v63 + 36))
      {
        goto LABEL_30;
      }

      v42 = v41 & (-2 << (v19 & 0x3F));
      if (v42)
      {
        v23 = __clz(__rbit64(v42)) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v43 = v24 << 6;
        v44 = v24 + 1;
        v45 = (v59 + 8 * v24);
        while (v44 < (v23 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            result = sub_2530BA974(v19, v61, 0);
            v23 = __clz(__rbit64(v46)) + v43;
            goto LABEL_4;
          }
        }

        result = sub_2530BA974(v19, v61, 0);
      }

LABEL_4:
      v20 = v69 + 1;
      v19 = v23;
      if (v69 + 1 == v60)
      {
        v6 = v57;
        v7 = v55;
        v9 = v56;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_21:
    v48 = *(v16 + 16);
    if (v48)
    {
      v49 = v16 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v50 = *(v68 + 72);
      v51 = (v7 + 8);
      do
      {
        sub_2530E80D4(v49, v9, type metadata accessor for AnyModelStateChange.Tombstone);
        type metadata accessor for AnyModelStateChange(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_2530E5480(v9, v52, v53, v54);
        (*v51)(v9, v6);
        v49 += v50;
        --v48;
      }

      while (v48);
    }
  }

  return result;
}

uint64_t sub_2530E5480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a1;
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v8 = type metadata accessor for RelationshipObserver.Change(0, v6, v7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v41 = &v29 - v10;
  v40 = sub_253148E44();
  v11 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v29 - v12;
  v42 = v8;
  v38 = sub_253148E04();
  v13 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v29 - v14;
  v16 = type metadata accessor for RelationshipObserver.ObserverState(0, v6, v7, v15);
  v17 = *(v16 - 8);
  v29 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  v20 = *(v5 + 120);
  swift_beginAccess();
  v21 = *(v4 + v20);

  if (!sub_253148D44())
  {
  }

  v22 = 0;
  v35 = *(v16 + 36);
  v36 = (v17 + 16);
  v33 = (v17 + 8);
  v34 = (v11 + 16);
  v31 = (v11 + 8);
  v32 = (v9 + 16);
  v30 = (v13 + 8);
  while (1)
  {
    v23 = sub_253148CF4();
    sub_253148CC4();
    if (v23)
    {
      (*(v17 + 16))(v19, v21 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v22, v16);
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_2531493F4();
    if (v29 != 8)
    {
      break;
    }

    v44 = result;
    (*v36)(v19, &v44, v16);
    swift_unknownObjectRelease();
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_10:
      __break(1u);
    }

LABEL_5:
    v26 = v39;
    v25 = v40;
    (*v34)(v39, &v19[v35], v40);
    (*v33)(v19, v16);
    (*v32)(v41, v43, v42);
    v27 = v37;
    sub_253148E34();
    (*v31)(v26, v25);
    (*v30)(v27, v38);
    ++v22;
    if (v24 == sub_253148D44())
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_2530E58F4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 96), v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 112)));

  v3 = *(*v0 + 128);
  v5 = type metadata accessor for RelationshipObserver.State.ChangeState(0, v2, *(v1 + 88), v4);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  return v0;
}

uint64_t sub_2530E5A30()
{
  sub_2530E58F4();

  return swift_deallocClassInstance();
}

uint64_t sub_2530E5A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_253148944();
  type metadata accessor for RelationshipObserver.Change(255, a4, a5, v11);
  v12 = sub_253148E94();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = TupleTypeMetadata2 - 8;
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v20[-v15];
  v21 = a4;
  v22 = a5;
  v17 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v17));
  sub_2530E844C(v16);
  os_unfair_lock_unlock((a3 + v17));
  v18 = *(v14 + 56);
  (*(*(v10 - 8) + 32))(a1, v16, v10);
  return (*(*(v12 - 8) + 32))(a2, &v16[v18], v12);
}

uint64_t sub_2530E5C38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_253148944();
  type metadata accessor for RelationshipObserver.Change(255, a1, a2, v6);
  sub_253148E94();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_2530E2E04(a3, a3 + *(TupleTypeMetadata2 + 48));
}

uint64_t RelationshipObserver.Changes.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  type metadata accessor for RelationshipObserver.Change(255, *(a2 + 16), *(a2 + 24), v6);
  v7 = sub_253148E84();
  *v5 = v2;
  v5[1] = sub_2530BF218;

  return MEMORY[0x2822003F0](a1, v7);
}

uint64_t sub_2530E5DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for RelationshipObserver.Change(255, a2, a3, a4);
  v7 = sub_253148E84();
  v8 = *(*(v7 - 8) + 32);

  return v8(a5, a1, v7);
}

uint64_t sub_2530E5E24(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2530E5ECC;

  return RelationshipObserver.Changes.AsyncIterator.next()(a1, a2);
}

uint64_t sub_2530E5ECC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2530E5FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2530E6090;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_2530E6090()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2530E618C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for RelationshipObserver.Changes(0, a2, a3, a5);
  sub_2530E5A88(a4, a4 + *(v9 + 36), a1, a2, a3);
}

uint64_t RelationshipObserver.Changes.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for RelationshipObserver.Change(255, v4, v5, a2);
  v6 = sub_253148E84();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_253148E94();
  sub_253148E54();
  return sub_2530E5DAC(v8, v4, v5, v9, a3);
}

uint64_t sub_2530E62C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  RelationshipObserver.Changes.makeAsyncIterator()(a1, a2, a3);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t RelationshipObserver.changes()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  return sub_2530E618C(v5, v3, v4, a2, v6);
}

uint64_t sub_2530E63A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2530E63E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2530E6430(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2530E6484(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for RelationshipObserver.State.ChangeState(319, result, *(a1 + 88), v3);
    if (v5 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2530E658C(uint64_t a1)
{
  result = type metadata accessor for AnyModelStateChange(319);
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for RelationshipResolver(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2530E6604(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_253148944() - 8) + 64);
  if ((v6 + 1) > 0x28)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 40;
  }

  v8 = *(*(a3 + 16) - 8);
  if (((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 40 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = ((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_29;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 254) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v14 < 2)
    {
LABEL_29:
      v16 = *(a1 + v9);
      if (v16 >= 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_29;
  }

LABEL_18:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 255;
}

void sub_2530E6780(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_253148944() - 8) + 64);
  if ((v8 + 1) > 0x28)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 40;
  }

  v10 = *(*(a4 + 16) - 8);
  if (((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 40 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = ((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  }

  v12 = v11 + 1;
  if (a3 < 0xFF)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 254) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFE)
  {
    v14 = a2 - 255;
    if (v12 >= 4)
    {
      bzero(a1, v11 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v11 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_43:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v11] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_28;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_2530E69D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RelationshipObserver.Change(255, *(a1 + 16), *(a1 + 24), a4);
  result = sub_253148E84();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2530E6AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = sub_253148944();
  if (v8 <= 0x3F)
  {
    v9 = type metadata accessor for RelationshipObserver.Change(255, *(a1 + 16), *(a1 + 24), v7);
    result = a4(319, v9);
    if (v10 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  v8 = sub_253148944();
  v10 = *(v8 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v8);
  }

  else
  {
    v13 = type metadata accessor for RelationshipObserver.Change(255, *(a3 + 16), *(a3 + 24), v9);
    v14 = a4(0, v13);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 36);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  v10 = sub_253148944();
  v12 = *(v10 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v10);
  }

  else
  {
    v15 = type metadata accessor for RelationshipObserver.Change(255, *(a4 + 16), *(a4 + 24), v11);
    v16 = a5(0, v15);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 36);

    return v17(v18, a2, a2, v16);
  }
}

uint64_t sub_2530E6DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for RelationshipObserver.State.PendingRelationshipUpdateState(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return updated;
}

uint64_t sub_2530E6E08(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v7 - 1 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  v11 = v9 + 2;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    if (v5 < 0x7FFFFFFF)
    {
      v18 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      v17 = v18 + 1;
    }

    else
    {
      v17 = (*(v4 + 48))(a1);
    }

    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_27;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_27;
  }

LABEL_23:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return (v10 | v16) + v7;
}

unsigned int *sub_2530E6F6C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a3 - v7 + 2;
  if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = a2 - v7;
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = result;
      bzero(result, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v17;
      *v17 = v15;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(result + v10) = v16;
      }

      else
      {
        *(result + v10) = v16;
      }
    }

    else if (v14)
    {
      *(result + v10) = v16;
    }

    return result;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(result + v10) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_35;
    }

    *(result + v10) = 0;
  }

  else if (v14)
  {
    *(result + v10) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return result;
  }

LABEL_35:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = ((result + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (((a2 + 1) & 0x80000000) != 0)
    {
      v20 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v20 = a2;
    }

    *v19 = v20;
  }

  else
  {
    v18 = *(v5 + 56);

    return v18();
  }

  return result;
}

void sub_2530E714C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2530E74C4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2530E71D4(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_2530E7310(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_2530E74C4(uint64_t a1)
{
  if (!qword_27F5812D8)
  {
    sub_253148944();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F5812E0, qword_25314D860);
    sub_2530E836C(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_253148AF4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5812D8);
    }
  }
}

uint64_t sub_2530E757C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t *sub_2530E7618(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_2530E795C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_2530E7710(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(*v5 + 120);
  v9 = *(*v5 + 80);
  v10 = *(*v5 + 88);
  type metadata accessor for RelationshipObserver.ObserverState(0, v9, v10, a4);
  *(v5 + v8) = sub_253148AA4();
  v11 = *(*v5 + 128);
  updated = type metadata accessor for RelationshipObserver.State.PendingRelationshipUpdateState(0, v9, v10, v12);
  (*(*(updated - 8) + 56))(v5 + v11, 1, 1, updated);
  (*(*(v9 - 8) + 16))(v5 + *(*v5 + 96), a1, v9);
  *(v5 + *(*v5 + 104)) = sub_2530E9588(v9);
  sub_2530BDB14(a2, v5 + *(*v5 + 112));
  return v5;
}

uint64_t sub_2530E788C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RelationshipObserver.State(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_2530E7710(a1, a2, v7, v8);
}

uint64_t sub_2530E78E0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_253149454();
  return sub_253149444();
}

uint64_t sub_2530E795C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v40 = a2;
  v41 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581368, &qword_25314D8F8);
  v6 = MEMORY[0x28223BE20](v57);
  v53 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v39 - v8;
  v9 = sub_253148944();
  result = MEMORY[0x28223BE20](v9);
  v52 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v13 = 0;
  v49 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v43 = (v17 + 63) >> 6;
  v46 = v11 + 16;
  v47 = v11;
  v45 = (v11 + 8);
  v48 = result;
  while (v19)
  {
    v25 = __clz(__rbit64(v19));
    v50 = (v19 - 1) & v19;
LABEL_13:
    v28 = v25 | (v13 << 6);
    v29 = v49;
    v30 = *(v47 + 16);
    v31 = v52;
    v30(v52, v49[6] + *(v47 + 72) * v28, v9);
    v32 = v29[7];
    v44 = v28;
    sub_2530C25FC(v32 + 40 * v28, v56);
    v33 = v51;
    v30(v51, v31, v9);
    sub_2530C25FC(v56, v33 + *(v57 + 48));
    v34 = v33;
    v35 = v53;
    sub_2530E7F5C(v34, v53);
    if (*(a4 + 16) && (v36 = sub_25311D834(v35), (v37 & 1) != 0))
    {
      sub_2530C25FC(*(a4 + 56) + 40 * v36, v54);
      sub_2530CD33C(v51, &qword_27F581368, &qword_25314D8F8);
      v20 = 0;
    }

    else
    {
      sub_2530CD33C(v51, &qword_27F581368, &qword_25314D8F8);
      memset(v54, 0, sizeof(v54));
      v20 = 1;
      v55 = 0;
    }

    v21 = *(v57 + 48);
    sub_2530CD33C(v54, &qword_27F581370, &qword_25314D908);
    v22 = v53;
    __swift_destroy_boxed_opaque_existential_0((v53 + v21));
    v23 = *v45;
    v24 = v22;
    v9 = v48;
    (*v45)(v24, v48);
    __swift_destroy_boxed_opaque_existential_0(v56);
    result = v23(v52, v9);
    v19 = v50;
    if (v20)
    {
      *(v41 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      if (__OFADD__(v42++, 1))
      {
        __break(1u);
        return sub_2531307B0(v41, v40, v42, v49);
      }
    }
  }

  v26 = v13;
  while (1)
  {
    v13 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v13 >= v43)
    {
      return sub_2531307B0(v41, v40, v42, v49);
    }

    v27 = v15[v13];
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v50 = (v27 - 1) & v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}