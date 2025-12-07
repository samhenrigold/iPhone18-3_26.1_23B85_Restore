uint64_t Inhabited.orderedKeyedMap<A, B>(_:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v81 = a2;
  v79 = a6;
  v80 = a1;
  v77 = a7;
  v78 = type metadata accessor for OrderedDictionary(255, a4, a5, a6);
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v78, WitnessTable, v11);
  v73 = swift_getWitnessTable();
  v13 = type metadata accessor for Predicated(0, HasHead, v73, v12);
  MEMORY[0x28223BE20](v13 - 8);
  v74 = &v60 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_25F305C1C();
  v64 = *(v16 - 8);
  v65 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v70 = &v60 - v18;
  v72 = TupleTypeMetadata2;
  v71 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v68 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = &v60 - v22;
  v23 = *(a3 + 16);
  v24 = *(v23 - 1);
  v25 = MEMORY[0x28223BE20](v21);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v60 - v28;
  v30 = swift_getWitnessTable();
  v67 = v7;
  PredicatedWrapper.value.getter(a3, v30, v29);
  v66 = a3;
  v31 = *(a3 + 24);
  v32 = a4;
  v33 = a4;
  v34 = a5;
  v35 = a5;
  v36 = v31;
  v37 = v82;
  Sequence.orderedKeyedMap<A, B>(_:)(v80, v81, v23, v33, v35, v31, v79, &v83);
  v39 = *(v24 + 8);
  v38 = v24 + 8;
  v40 = v29;
  v41 = v39;
  result = (v39)(v40, v23);
  if (!v37)
  {
    v61 = v41;
    v62 = v36;
    v63 = v30;
    v43 = v68;
    v79 = v27;
    v80 = v38;
    v81 = v23;
    v82 = v34;
    v44 = v83;
    swift_getWitnessTable();
    v45 = v70;
    sub_25F30583C();
    v47 = v71;
    v46 = v72;
    if ((*(v71 + 48))(v45, 1, v72) == 1)
    {
      (*(v64 + 8))(v45, v65);
      *&v83 = 0;
      *(&v83 + 1) = 0xE000000000000000;
      sub_25F305FAC();
      MEMORY[0x25F8D7130](0xD000000000000028, 0x800000025F319130);
      v52 = v79;
      v53 = v66;
      v54 = v63;
      PredicatedWrapper.value.getter(v66, v63, v79);
      v55 = v81;
      swift_getDynamicType();
      v56 = v61;
      v61(v52, v55);
      v57 = sub_25F30685C();
      MEMORY[0x25F8D7130](v57);

      MEMORY[0x25F8D7130](0x206874697720, 0xE600000000000000);
      PredicatedWrapper.value.getter(v53, v54, v52);
      v58 = sub_25F3050EC();
      v56(v52, v55);
      v84 = v58;
      v59 = sub_25F3064DC();
      MEMORY[0x25F8D7130](v59);

      MEMORY[0x25F8D7130](0xD000000000000025, 0x800000025F3190A0);
      result = sub_25F30627C();
      __break(1u);
    }

    else
    {
      v48 = v69;
      (*(v47 + 32))(v69, v45, v46);
      v83 = v44;
      v49 = *(v46 + 48);
      (*(*(v32 - 8) + 32))(v43, v48, v32);
      (*(*(v82 - 8) + 32))(v43 + v49, &v48[v49]);
      v50 = v74;
      static Predicated.unverified(value:proof:)(&v83, v43, HasHead, v73, v74);
      (*(v47 + 8))(v43, v46);

      return Inhabited.init(predicated:)(v50, v78, WitnessTable, v51, v77);
    }
  }

  return result;
}

uint64_t sub_25F235E78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v11);
  a4(a1, v8, a3);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_25F235FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(v7 + 32))(&v11 - v8, a1, AssociatedTypeWitness);
  Inhabited<>.index(before:)(v9, a2, v5);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t Inhabited<>.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v26 = a3;
  v6 = *(*(a2 + 8) + 8);
  v7 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_25F305C1C();
  v25 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, WitnessTable, v15);
  sub_25F304C5C();
  (*(v13 + 8))(v15, v7);
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 48);
  if (v18(v12, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v17 + 32))(v26, v12, AssociatedTypeWitness);
  }

  HasHead = type metadata accessor for HasHead(255, v7, v6, v19);
  v21 = swift_getWitnessTable();
  v23 = type metadata accessor for Predicated(0, HasHead, v21, v22);
  (*(v17 + 16))(v26, v4 + *(v23 + 36), AssociatedTypeWitness);
  result = (v18)(v12, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v25 + 8))(v12, v9);
  }

  return result;
}

uint64_t Inhabited<>.reversed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v27 = a2;
  v4 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v26 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F30630C();
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v10, WitnessTable, v13);
  v15 = swift_getWitnessTable();
  v17 = type metadata accessor for Predicated(0, HasHead, v15, v16);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v26 - v18;
  v20 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, v20, v9);
  v21 = v4;
  v22 = v27;
  MEMORY[0x25F8D6E50](v21, v27);
  v23 = v30;
  Inhabited<>.last.getter(a1, v22, v30);
  static Predicated.unverified(value:proof:)(v12, v23, HasHead, v15, v19);
  (*(v31 + 8))(v23, v32);
  (*(v29 + 8))(v12, v10);
  return Inhabited.init(predicated:)(v19, v10, WitnessTable, v24, v33);
}

uint64_t Inhabited<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a3, WitnessTable, v8);
  sub_25F30572C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t Inhabited<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a3, WitnessTable, v8);
  v10 = sub_25F30573C();
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t Inhabited<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v9);
  RandomAccessCollection.subscript.getter(x8_0);
  return (*(v7 + 8))(v9, v6);
}

uint64_t Inhabited<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25F23C948(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

{
  sub_25F23CC98(a1, a2, a3, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_25F3059CC();
  (*(*(v6 - 8) + 8))(a2, v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 8);

  return v8(a1, AssociatedTypeWitness);
}

uint64_t sub_25F236C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29[1] = a1;
  v30 = a3;
  v31 = a6;
  v8 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v29 - v11;
  v13 = *(v8 + 8);
  v15 = type metadata accessor for Inhabited(0, a4, v13, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v29 - v17;
  v19 = *(v16 + 16);
  v29[0] = a2;
  v19(v29 - v17, a2, v15);
  Inhabited<>.startIndex.getter(v15, v8);
  (*(v16 + 8))(v18, v15);
  swift_getAssociatedConformanceWitness();
  LOBYTE(v18) = sub_25F304DCC();
  v20 = v12;
  v21 = v30;
  (*(v10 + 8))(v20, AssociatedTypeWitness);
  if ((v18 & 1) == 0)
  {
    HasHead = type metadata accessor for HasHead(255, a4, v13, v22);
    WitnessTable = swift_getWitnessTable();
    v26 = type metadata accessor for Predicated(0, HasHead, WitnessTable, v25);
    v21 = v29[0] + *(v26 + 36);
  }

  v27 = swift_getAssociatedTypeWitness();
  return (*(*(v27 - 8) + 16))(v31, v21, v27);
}

void (*Inhabited<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[6] = v15;
  v17 = swift_getAssociatedTypeWitness();
  v11[7] = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  v11[8] = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v11[9] = v20;
  (*(v19 + 16))();
  Inhabited<>.subscript.getter(a2, a3, v16);
  return sub_25F237120;
}

{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x50uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v10[6] = v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = sub_25F3059CC();
  v10[7] = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  v10[8] = v16;
  if (v8)
  {
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v18 = malloc(*(v16 + 64));
  }

  v10[9] = v18;
  (*(v17 + 16))();
  Inhabited<>.subscript.getter(a2, a3, a4);
  return sub_25F237964;
}

uint64_t sub_25F23736C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a3;
  v34 = a1;
  v38 = a6;
  v8 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v31 - v11;
  v35 = *(v8 + 8);
  v14 = type metadata accessor for Inhabited(0, a4, v35, v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  v18 = *(v15 + 16);
  v37 = a2;
  v32 = v18;
  v18(v17, a2, v14);
  Inhabited<>.startIndex.getter(v14, v8);
  v31 = *(v15 + 8);
  v31(v17, v14);
  v36 = a4;
  swift_getAssociatedConformanceWitness();
  sub_25F3059CC();
  LOBYTE(a2) = sub_25F3059BC();
  v19 = *(v10 + 8);
  v34 = v10 + 8;
  v19(v12, AssociatedTypeWitness);
  if (a2)
  {
    v32(v17, v37, v14);
    Inhabited<>.startIndex.getter(v14, v8);
    v31(v17, v14);
    v21 = sub_25F3058FC();
    v23 = v22;
    v24 = swift_getAssociatedTypeWitness();
    (*(*(v24 - 8) + 16))(v38, v23, v24);
    v21(v39, 0);
    return (v19)(v12, AssociatedTypeWitness);
  }

  else
  {
    HasHead = type metadata accessor for HasHead(255, v36, v35, v20);
    WitnessTable = swift_getWitnessTable();
    v29 = *(type metadata accessor for Predicated(0, HasHead, WitnessTable, v28) + 36);
    v30 = swift_getAssociatedTypeWitness();
    return (*(*(v30 - 8) + 16))(v38, v37 + v29, v30);
  }
}

void sub_25F23797C(uint64_t **a1, char a2, void (*a3)(void *, void *, uint64_t, uint64_t))
{
  v3 = *a1;
  v5 = (*a1)[8];
  v4 = (*a1)[9];
  v6 = (*a1)[6];
  v14 = (*a1)[7];
  v8 = (*a1)[4];
  v7 = (*a1)[5];
  v9 = (*a1)[3];
  v11 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v8 + 16))(v7, v6, v9);
    a3(v7, v4, v11, v10);
    (*(v5 + 8))(v4, v14);
    v12 = *(v8 + 8);
    v12(v7, v9);
    v12(v6, v9);
  }

  else
  {
    a3(v6, v4, *v3, v3[1]);
    (*(v5 + 8))(v4, v14);
    (*(v8 + 8))(v6, v9);
  }

  free(v4);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t Inhabited<>.withFirst(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v18 = a4;
  v16[1] = a2;
  v5 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v16 - v8;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  Inhabited.first.getter(a3, v14, v16 - v12);
  v17(v13);
  Inhabited<>.startIndex.getter(a3, v5);
  sub_25F23C948(v13, v9, a3, v18);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_25F237CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25F23C948(a1, a2, a3, *(a4 - 8));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*sub_25F237DC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = Inhabited<>.subscript.modify(v8, a2, a3, *(a4 - 8));
  return sub_25F23DA14;
}

void (*sub_25F237E5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = Inhabited<>.subscript.modify(v8, a2, a3, *(a4 - 8));
  return sub_25F237EEC;
}

uint64_t Inhabited<>.init(_:otherElements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a2;
  v25 = a5;
  v24 = *(*(a4 + 8) + 8);
  HasHead = type metadata accessor for HasHead(255, a3, v24, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for Predicated(0, HasHead, WitnessTable, v7);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v21 - v14;
  v16 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3059AC();
  (*(v12 + 16))(v15, a1, AssociatedTypeWitness);
  sub_25F30593C();
  v26 = v21;
  sub_25F30539C();
  swift_getWitnessTable();
  sub_25F30592C();
  static Predicated.unverified(value:proof:)(v18, a1, HasHead, WitnessTable, v10);
  (*(v12 + 8))(a1, AssociatedTypeWitness);
  (*(v16 + 8))(v18, a3);
  return Inhabited.init(predicated:)(v10, a3, v24, v19, v25);
}

uint64_t Inhabited<>.init<A>(_:otherElements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a2;
  v37 = a6;
  v31 = a4;
  v38 = a7;
  v33 = *(*(a5 + 8) + 8);
  HasHead = type metadata accessor for HasHead(255, a3, v33, a4);
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for Predicated(0, HasHead, WitnessTable, v10);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v32 = &v29 - v13;
  v14 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v30 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v29 - v19;
  v21 = *(a3 - 8);
  MEMORY[0x28223BE20](v18);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3059AC();
  (*(v17 + 16))(v20, a1, AssociatedTypeWitness);
  sub_25F30593C();
  v24 = v31;
  v25 = v36;
  (*(v14 + 16))(v30, v36, v31);
  sub_25F30592C();
  (*(v14 + 8))(v25, v24);
  v26 = v32;
  static Predicated.unverified(value:proof:)(v23, a1, HasHead, WitnessTable, v32);
  (*(v17 + 8))(a1, v29);
  (*(v21 + 8))(v23, a3);
  return Inhabited.init(predicated:)(v26, a3, v33, v27, v38);
}

uint64_t Inhabited<>.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a1;
  v28 = a3;
  v7 = *(a2 + 16);
  HasHead = type metadata accessor for HasHead(255, v7, *(*(a3 + 8) + 8), a4);
  WitnessTable = swift_getWitnessTable();
  v24 = type metadata accessor for Predicated(0, HasHead, WitnessTable, v8);
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = &v23 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v23 - v15;
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, v20, v19);
  (*(v13 + 16))(v16, v27, AssociatedTypeWitness);
  sub_25F30593C();
  v21 = v24;
  static Predicated.unverified(value:proof:)(v19, v5 + *(v24 + 36), HasHead, WitnessTable, v11);
  (*(v17 + 8))(v19, v7);
  return (*(v9 + 40))(v5, v11, v21);
}

uint64_t Inhabited<>.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v29 = a4;
  v30 = a5;
  v25 = a3;
  v28 = a1;
  v9 = *(a2 + 16);
  HasHead = type metadata accessor for HasHead(255, v9, *(*(a4 + 8) + 8), a4);
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for Predicated(0, HasHead, WitnessTable, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = *(a3 - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, v23, v22);
  (*(v16 + 16))(v19, v28, v25);
  sub_25F30592C();
  static Predicated.unverified(value:proof:)(v22, v6 + *(v11 + 36), HasHead, WitnessTable, v15);
  (*(v20 + 8))(v22, v9);
  return (*(v12 + 40))(v6, v15, v11);
}

uint64_t Inhabited<>.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v29 = a2;
  v30 = a4;
  v5 = *(a4 + 8);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v33 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v27 - v8;
  v31 = *(v5 + 8);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a3, WitnessTable, v16);
  v18 = *(v11 + 16);
  v18(v14, v28, v10);
  sub_25F30595C();
  sub_25F3057AC();
  v19 = sub_25F3058FC();
  (v18)(v14);
  v19(v35, 0);
  (*(v32 + 8))(v9, v33);
  HasHead = type metadata accessor for HasHead(255, v6, v31, v20);
  v22 = swift_getWitnessTable();
  v24 = type metadata accessor for Predicated(0, HasHead, v22, v23);
  v25 = v27;
  (*(*(v24 - 8) + 8))(v27, v24);
  static Predicated.unverified(value:proof:)(v16, v14, HasHead, v22, v25);
  (*(v11 + 8))(v14, v10);
  return (*(v34 + 8))(v16, v6);
}

uint64_t Inhabited<>.insert<A>(contentsOf:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a6;
  v36 = a2;
  v37 = a5;
  v33 = a1;
  v42 = *(*(a5 + 8) + 8);
  v10 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v34 = &v33 - v11;
  v35 = swift_getAssociatedTypeWitness();
  v12 = *(v35 - 8);
  v13 = MEMORY[0x28223BE20](v35);
  v15 = &v33 - v14;
  v16 = *(a4 - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a3, WitnessTable, v21);
  (*(v16 + 16))(v19, v33, a4);
  sub_25F30594C();
  sub_25F3057AC();
  v23 = sub_25F3058FC();
  v24 = v38;
  v25 = v34;
  v26 = AssociatedTypeWitness;
  (*(v38 + 16))(v34);
  v23(v43, 0);
  (*(v12 + 8))(v15, v35);
  HasHead = type metadata accessor for HasHead(255, v10, v42, v27);
  v29 = swift_getWitnessTable();
  v31 = type metadata accessor for Predicated(0, HasHead, v29, v30);
  (*(*(v31 - 8) + 8))(v7, v31);
  static Predicated.unverified(value:proof:)(v21, v25, HasHead, v29, v7);
  (*(v24 + 8))(v25, v26);
  return (*(v40 + 8))(v21, v10);
}

uint64_t Inhabited.init<A>(_:otherElements:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v25 = a2;
  v27 = a5;
  v7 = sub_25F3056FC();
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v7, WitnessTable, v8);
  v24 = swift_getWitnessTable();
  v11 = type metadata accessor for Predicated(0, HasHead, v24, v10);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = *(a3 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  v29 = sub_25F304A3C();
  (*(v15 + 16))(v18, a1, a3);
  sub_25F30568C();
  v21 = *(v15 + 8);
  v21(v20, a3);
  v28 = v25;
  sub_25F30539C();
  swift_getWitnessTable();
  sub_25F3056DC();
  v28 = v29;
  static Predicated.unverified(value:proof:)(&v28, a1, HasHead, v24, v14);
  v21(a1, a3);

  return Inhabited.init(predicated:)(v14, v7, WitnessTable, v22, v27);
}

uint64_t Inhabited.insert<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v30);
  (*(v6 + 16))(v9, a1, v5);
  sub_25F30568C();
  v13 = *(v6 + 8);
  v13(v11, v5);
  v29 = v30;

  v14 = sub_25F30562C();
  v16 = v15;
  v18 = v17;
  sub_25F30571C();

  sub_25F1AC3CC(v14, v16, v18 & 1);
  v19 = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v4, v19, v20);
  v22 = swift_getWitnessTable();
  v24 = type metadata accessor for Predicated(0, HasHead, v22, v23);
  v25 = v28;
  (*(*(v24 - 8) + 8))(v28, v24);
  static Predicated.unverified(value:proof:)(&v29, v11, HasHead, v22, v25);
  v13(v11, v5);
}

{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v28 - v13;
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v30);
  IdentifiedSet.insert(_:)(a1, v6);
  (*(v12 + 8))(v14, v11);
  v16 = v30;
  v28[1] = v30;
  v29 = v30;
  swift_bridgeObjectRetain_n();
  v17 = IdentifiedSet.startIndex.getter(v6);
  v19 = v18;
  LOBYTE(v12) = v20;

  v28[0] = v16;
  IdentifiedSet.subscript.getter(v17, v19);
  sub_25F1AC3CC(v17, v19, v12 & 1);

  v21 = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v6, v21, v22);
  v24 = swift_getWitnessTable();
  v26 = type metadata accessor for Predicated(0, HasHead, v24, v25);
  (*(*(v26 - 8) + 8))(v3, v26);
  static Predicated.unverified(value:proof:)(&v29, v10, HasHead, v24, v3);
  (*(v8 + 8))(v10, v7);
}

{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v27);
  OrderedIdentifiedSet.insert(_:)(a1, v6, v14);
  (*(v12 + 8))(v14, v11);
  v16 = v27;
  v17 = v28;
  v26[0] = v27;
  v26[1] = v28;

  v25[0] = v16;
  v25[1] = v17;
  OrderedIdentifiedSet.subscript.getter(0, v6, v10);

  v18 = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v6, v18, v19);
  v21 = swift_getWitnessTable();
  v23 = type metadata accessor for Predicated(0, HasHead, v21, v22);
  (*(*(v23 - 8) + 8))(v3, v23);
  static Predicated.unverified(value:proof:)(v26, v10, HasHead, v21, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t Inhabited.formUnion<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31[1] = a4;
  v9 = *(a2 + 16);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v12);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v33);
  (*(v16 + 16))(v18, a1, a3);
  sub_25F3056DC();
  v32 = v33;

  v20 = sub_25F30562C();
  v22 = v21;
  LOBYTE(v18) = v23;
  sub_25F30571C();

  sub_25F1AC3CC(v20, v22, v18 & 1);
  v24 = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v9, v24, v25);
  v27 = swift_getWitnessTable();
  v29 = type metadata accessor for Predicated(0, HasHead, v27, v28);
  (*(*(v29 - 8) + 8))(v5, v29);
  static Predicated.unverified(value:proof:)(&v32, v14, HasHead, v27, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t Inhabited.init<A>(_:otherElements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a2;
  v26 = a5;
  v7 = type metadata accessor for IdentifiedSet(255, a3, a4, a4);
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v7, WitnessTable, v8);
  v10 = swift_getWitnessTable();
  v12 = type metadata accessor for Predicated(0, HasHead, v10, v11);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = sub_25F305C1C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v23 - v17;
  IdentifiedSet.init()(a3, &v28);
  IdentifiedSet.insert(_:)(a1, v7);
  (*(v16 + 8))(v18, v15);
  v27 = v24;
  v19 = sub_25F30539C();
  v20 = swift_getWitnessTable();
  IdentifiedSet.merge<A>(_:)(&v27, v7, v19, v20);

  v27 = v28;
  static Predicated.unverified(value:proof:)(&v27, a1, HasHead, v10, v14);
  (*(*(a3 - 8) + 8))(a1, a3);

  return Inhabited.init(predicated:)(v14, v7, WitnessTable, v21, v26);
}

{
  v24 = a2;
  v26 = a5;
  v7 = type metadata accessor for OrderedIdentifiedSet(255, a3, a4, a4);
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v7, WitnessTable, v8);
  v10 = swift_getWitnessTable();
  v12 = type metadata accessor for Predicated(0, HasHead, v10, v11);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = sub_25F305C1C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v23 - v17;
  OrderedIdentifiedSet.init()(a3, &v28);
  OrderedIdentifiedSet.insert(_:)(a1, v7, v18);
  (*(v16 + 8))(v18, v15);
  *&v27 = v24;
  v19 = sub_25F30539C();
  v20 = swift_getWitnessTable();
  OrderedIdentifiedSet.append<A>(contentsOf:)(&v27, v7, v19, v20);

  v27 = v28;
  static Predicated.unverified(value:proof:)(&v27, a1, HasHead, v10, v14);
  (*(*(a3 - 8) + 8))(a1, a3);

  return Inhabited.init(predicated:)(v14, v7, WitnessTable, v21, v26);
}

uint64_t Inhabited.contains<A>(_:)(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v6);
  LOBYTE(a2) = IdentifiedSet.contains(_:)(a1, *(a2 + 16));

  return a2 & 1;
}

{
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v6);
  LOBYTE(a2) = OrderedIdentifiedSet.contains(_:)(a1, *(a2 + 16));

  return a2 & 1;
}

uint64_t Inhabited.appending<A, B>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a3;
  v23 = a4;
  v7 = *(a2 + 16);
  v24 = *(v7 + 16);
  v25 = a5;
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v7, WitnessTable, v12);
  v14 = swift_getWitnessTable();
  v16 = type metadata accessor for Predicated(0, HasHead, v14, v15);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v22 - v17;
  v19 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, v19, &v27);
  v26 = v27;
  OrderedIdentifiedSet.appending<A>(_:)(a1, v7, v22, v23, &v28);

  v27 = v28;
  OrderedIdentifiedSet.subscript.getter(0, v7, v10);
  static Predicated.unverified(value:proof:)(&v28, v10, HasHead, v14, v18);
  (*(v8 + 8))(v10, v24);

  return Inhabited.init(predicated:)(v18, v7, WitnessTable, v20, v25);
}

{
  v22 = a3;
  v23 = a4;
  v7 = *(a2 + 16);
  v24 = *(v7 + 16);
  v25 = a5;
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v7, WitnessTable, v12);
  v14 = swift_getWitnessTable();
  v16 = type metadata accessor for Predicated(0, HasHead, v14, v15);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v22 - v17;
  v19 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, v19, &v27);
  v26 = v27;
  OrderedSet.appending<A>(contentsOf:)(a1, v7, v22, v23, &v28);

  v27 = v28;
  OrderedSet.subscript.getter(0, v7);
  static Predicated.unverified(value:proof:)(&v28, v10, HasHead, v14, v18);
  (*(v8 + 8))(v10, v24);

  return Inhabited.init(predicated:)(v18, v7, WitnessTable, v20, v25);
}

uint64_t Inhabited.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v23);
  OrderedSet.append(_:)(a1, v6);
  v12 = v23;
  v13 = v24;
  v22[0] = v23;
  v22[1] = v24;

  v21[0] = v12;
  v21[1] = v13;
  OrderedSet.subscript.getter(0, v6);

  v14 = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v6, v14, v15);
  v17 = swift_getWitnessTable();
  v19 = type metadata accessor for Predicated(0, HasHead, v17, v18);
  (*(*(v19 - 8) + 8))(v3, v19);
  static Predicated.unverified(value:proof:)(v22, v10, HasHead, v17, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t Inhabited.append<A, B>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a2 + 16);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, &v27);
  OrderedSet.append<A>(contentsOf:)(a1, v10, a3, a4);
  v16 = v27;
  v17 = v28;
  v26[0] = v27;
  v26[1] = v28;

  v25[0] = v16;
  v25[1] = v17;
  OrderedSet.subscript.getter(0, v10);

  v18 = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v10, v18, v19);
  v21 = swift_getWitnessTable();
  v23 = type metadata accessor for Predicated(0, HasHead, v21, v22);
  (*(*(v23 - 8) + 8))(v5, v23);
  static Predicated.unverified(value:proof:)(v26, v14, HasHead, v21, v5);
  (*(v12 + 8))(v14, v11);
}

uint64_t Inhabited.appending<A, B>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v36 = a3;
  v4 = *(a2 + 16);
  v5 = v4[3];
  v30 = v4[2];
  v6 = v30;
  v7 = v5;
  v34 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v27 - v9;
  v33 = *(v7 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v4, WitnessTable, v16);
  v27 = swift_getWitnessTable();
  v19 = type metadata accessor for Predicated(0, HasHead, v27, v18);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v27 - v20;
  v22 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, v22, &v39);
  v38[1] = v39;
  PredicatedWrapper.value.getter(a2, v22, v38);
  v37 = v38[0];
  OrderedDictionary.appending(contentsOf:)(&v37, v4, &v40);

  v39 = v40;
  OrderedDictionary.subscript.getter(v15, v13, 0, v4);
  v23 = TupleTypeMetadata2;
  v24 = *(TupleTypeMetadata2 + 48);
  (*(v28 + 32))(v10, v15, v30);
  (*(v33 + 32))(&v10[v24], v13, v34);
  static Predicated.unverified(value:proof:)(&v40, v10, HasHead, v27, v21);
  (*(v35 + 8))(v10, v23);

  return Inhabited.init(predicated:)(v21, v4, WitnessTable, v25, v36);
}

uint64_t Inhabited<>.uniqued()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v5 = a1;
  v35 = a4;
  v6 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v29 - v8;
  v10 = sub_25F3056FC();
  v33 = v10;
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v10, WitnessTable, v11);
  v30 = swift_getWitnessTable();
  v14 = type metadata accessor for Predicated(0, HasHead, v30, v13);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v29 - v16;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(v5, v21, v20);
  v22 = Collection<>.uniqued()(v6, v31, a3);
  (*(v18 + 8))(v20, v6);
  v36 = v22;
  v23 = sub_25F30562C();
  v25 = v24;
  LOBYTE(v5) = v26;
  sub_25F30571C();
  sub_25F1AC3CC(v23, v25, v5 & 1);
  static Predicated.unverified(value:proof:)(&v36, v9, HasHead, v30, v17);
  (*(v34 + 8))(v9, AssociatedTypeWitness);

  return Inhabited.init(predicated:)(v17, v33, WitnessTable, v27, v35);
}

uint64_t Inhabited<>.orderedUniqued()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29[0] = a3;
  v29[1] = a2;
  v33 = a4;
  v6 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v31 = AssociatedTypeWitness;
  v32 = v8;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v29 - v9;
  v13 = type metadata accessor for OrderedSet(255, v11, a3, v12);
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v13, WitnessTable, v14);
  v16 = swift_getWitnessTable();
  v18 = type metadata accessor for Predicated(0, HasHead, v16, v17);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = v29 - v20;
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v19);
  v24 = v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, v25, v24);
  v26 = Collection<>.orderedUniqued()(v6, v29[0], &v35);
  (*(v22 + 8))(v24, v6, v26);
  v34 = v35;
  OrderedSet.subscript.getter(0, v13);
  static Predicated.unverified(value:proof:)(&v35, v10, HasHead, v16, v21);
  (*(v32 + 8))(v10, v31);

  return Inhabited.init(predicated:)(v21, v13, WitnessTable, v27, v33);
}

uint64_t Inhabited<>.identified()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v6 = *(a2 + 8);
  v35 = a3;
  v36 = v6;
  v7 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v38 = AssociatedTypeWitness;
  v39 = v9;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v34 - v10;
  v14 = type metadata accessor for IdentifiedSet(255, v12, a3, v13);
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v14, WitnessTable, v15);
  v17 = swift_getWitnessTable();
  v19 = type metadata accessor for Predicated(0, HasHead, v17, v18);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v34 - v21;
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v20);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, v26, v25);
  Sequence<>.identified()(v7, v36, v35, &v43);
  (*(v23 + 8))(v25, v7);
  v27 = v43;
  v42 = v43;
  v28 = IdentifiedSet.startIndex.getter(v14);
  v30 = v29;
  LOBYTE(v23) = v31;
  v41 = v27;
  IdentifiedSet.subscript.getter(v28, v29);
  sub_25F1AC3CC(v28, v30, v23 & 1);
  static Predicated.unverified(value:proof:)(&v43, v11, HasHead, v17, v22);
  (*(v39 + 8))(v11, v38);

  return Inhabited.init(predicated:)(v22, v14, WitnessTable, v32, v40);
}

uint64_t Inhabited<>.orderedIdentified()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v6 = *(a2 + 8);
  v30[0] = a3;
  v30[1] = v6;
  v7 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  v33 = v9;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v30 - v10;
  v14 = type metadata accessor for OrderedIdentifiedSet(255, v12, a3, v13);
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v14, WitnessTable, v15);
  v17 = swift_getWitnessTable();
  v19 = type metadata accessor for Predicated(0, HasHead, v17, v18);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = v30 - v21;
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v20);
  v25 = v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, v26, v25);
  v27 = Sequence<>.orderedIdentified()(v7, &v36);
  (*(v23 + 8))(v25, v7, v27);
  v35 = v36;
  OrderedIdentifiedSet.subscript.getter(0, v14, v11);
  static Predicated.unverified(value:proof:)(&v36, v11, HasHead, v17, v22);
  (*(v33 + 8))(v11, v32);

  return Inhabited.init(predicated:)(v22, v14, WitnessTable, v28, v34);
}

uint64_t Inhabited.invert<A, B>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v73 = *(a1 + 16);
  v4 = *(v73 + 16);
  v5 = *(v4 + 16);
  v6 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v6, WitnessTable, v8);
  v64 = swift_getWitnessTable();
  v10 = type metadata accessor for Predicated(0, HasHead, v64, v9);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v63 = &v61 - v12;
  v71 = *(a1 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v72 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v5 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v81 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v80 = &v61 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  v22 = *(v4 - 8);
  v23 = MEMORY[0x28223BE20](v19);
  v84 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v61 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v61 - v28;
  Inhabited.first.getter(a1, v30, &v61 - v28);
  v82 = *(v22 + 16);
  v83 = v22 + 16;
  v82(v27, v29, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v22 + 8))(v29, v4);
    (*(*(*(v4 + 24) - 8) + 32))(v67, v27, *(v4 + 24));
    type metadata accessor for Inhabited(255, v6, WitnessTable, v31);
    sub_25F30678C();
    return swift_storeEnumTagMultiPayload();
  }

  v78 = v22;
  v62 = WitnessTable;
  v79 = v6;
  v32 = v66;
  v33 = v21;
  v76 = *(v66 + 32);
  v77 = v66 + 32;
  v76(v21, v27, v5);
  sub_25F23C8D4(v5, v5);
  swift_allocObject();
  v34 = sub_25F30527C();
  v74 = *(v32 + 16);
  v75 = v32 + 16;
  v74(v35, v21, v5);
  sub_25F1F7314(v34, v5);
  v69 = v36;
  v88 = v36;
  (*(v71 + 16))(v72, v2, a1);
  v86 = 1;
  v85 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25F30587C();
  v37 = v87[0];
  v38 = v87[1];
  v40 = v87[2];
  v39 = v87[3];
  swift_unknownObjectRetain();
  v41 = sub_25F305DEC();
  swift_unknownObjectRelease();
  if (v41 == sub_25F305E0C())
  {
LABEL_10:
    (*(v78 + 8))(v29, v4);
    swift_unknownObjectRelease();
    v87[0] = v69;
    v54 = v63;
    static Predicated.unverified(value:proof:)(v87, v33, HasHead, v64, v63);

    (*(v32 + 8))(v33, v5);
    v55 = v54;
    v56 = v79;
    v57 = v62;
    Inhabited.init(predicated:)(v55, v79, v62, v58, v67);
    type metadata accessor for Inhabited(255, v56, v57, v59);
    sub_25F30678C();
    return swift_storeEnumTagMultiPayload();
  }

  v61 = v33;
  v73 = v5;
  v71 = v39 >> 1;
  v69 = (v32 + 8);
  v72 = v41;
  v70 = v29;
  v68 = v39;
  while (1)
  {
    result = sub_25F305DFC();
    if (v72 < v40 || v71 <= v41)
    {
      break;
    }

    v43 = v40;
    v44 = v37;
    v45 = v78;
    v46 = (v38 + *(v78 + 72) * v41);
    v47 = v38;
    v48 = v84;
    v82(v84, v46, v4);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      swift_unknownObjectRelease();

      (*v69)(v61, v73);
      (*(v45 + 8))(v70, v4);
      (*(*(*(v4 + 24) - 8) + 32))(v67, v48, *(v4 + 24));
      type metadata accessor for Inhabited(255, v79, v62, v60);
      sub_25F30678C();
      return swift_storeEnumTagMultiPayload();
    }

    ++v41;
    v49 = v80;
    v50 = v32;
    v51 = v73;
    v76(v80, v48, v73);
    v74(v81, v49, v51);
    sub_25F30533C();
    v52 = v51;
    v32 = v50;
    (*v69)(v49, v52);
    v37 = v44;
    v40 = v43;
    v53 = sub_25F305E0C();
    v29 = v70;
    v38 = v47;
    if (v41 == v53)
    {
      v69 = v88;
      v5 = v73;
      v33 = v61;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t Sequence.inhabited()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Inhabited(0, a1, v8, v9);
  (*(v5 + 16))(v7, v2, a1);
  WitnessTable = swift_getWitnessTable();
  return PredicatedWrapper.init(_:)(v7, v10, WitnessTable, a2);
}

uint64_t sub_25F23C8D4(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53CC8, &qword_25F309FD0);
  }

  else
  {

    return sub_25F3064EC();
  }
}

uint64_t sub_25F23C948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a1;
  v8 = *(*(a4 + 8) + 8);
  v33 = a4;
  v34 = v8;
  v9 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &AssociatedTypeWitness - v10;
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &AssociatedTypeWitness - v15;
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &AssociatedTypeWitness - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a3, WitnessTable, v18);
  v20 = a2;
  (*(v13 + 16))(v16, a2, v12);
  v22 = AssociatedTypeWitness;
  v21 = v31;
  (*(v35 + 16))(v11, v31, AssociatedTypeWitness);
  v23 = v33;
  sub_25F304D9C();
  sub_25F236C80(v20, v4, v21, v9, v23, v11);
  HasHead = type metadata accessor for HasHead(255, v9, v34, v24);
  v26 = swift_getWitnessTable();
  v28 = type metadata accessor for Predicated(0, HasHead, v26, v27);
  (*(*(v28 - 8) + 8))(v5, v28);
  static Predicated.unverified(value:proof:)(v18, v11, HasHead, v26, v5);
  (*(v35 + 8))(v11, v22);
  return (*(v32 + 8))(v18, v9);
}

uint64_t sub_25F23CC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a1;
  v34 = a4;
  v35 = *(*(a4 + 8) + 8);
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v32 = &v30 - v10;
  v30 = swift_getAssociatedTypeWitness();
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v13 = &v30 - v12;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = sub_25F3059CC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a3, WitnessTable, v20);
  (*(v15 + 16))(v18, a2, v14);
  (*(v11 + 16))(v13, v33, v30);
  v22 = v34;
  sub_25F304D7C();
  v23 = v32;
  sub_25F23736C(a2, v5, v20, v8, v22, v32);
  HasHead = type metadata accessor for HasHead(255, v8, v35, v24);
  v26 = swift_getWitnessTable();
  v28 = type metadata accessor for Predicated(0, HasHead, v26, v27);
  (*(*(v28 - 8) + 8))(v5, v28);
  static Predicated.unverified(value:proof:)(v20, v23, HasHead, v26, v5);
  (*(v36 + 8))(v23, v37);
  return (*(v31 + 8))(v20, v8);
}

uint64_t keypath_getTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for Inhabited(0, *(a2 + a3 - 16), *(*(v6 + 8) + 8), a4);
  return a4(a2, v7, v6);
}

uint64_t keypath_setTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a3 + a4 - 8);
  v9 = type metadata accessor for Inhabited(0, *(a3 + a4 - 16), *(*(v8 + 8) + 8), a4);
  return a5(a1, a3, v9, v8);
}

uint64_t sub_25F23D3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HasHead = type metadata accessor for HasHead(255, *(a1 + 16), *(a1 + 24), a4);
  WitnessTable = swift_getWitnessTable();
  result = type metadata accessor for Predicated(319, HasHead, WitnessTable, v6);
  if (v8 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F23D48C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_25F23D704(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_25F23DA24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  if (*(v0 + 120))
  {
    v4 = *(v0 + 120);
  }

  else
  {
    v5 = sub_25F30546C();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = sub_25F23F67C();
    v7 = swift_allocObject();
    v7[2] = v0;
    v7[3] = v6;
    v7[4] = v0;
    swift_retain_n();
    v4 = sub_25F1B17E4(0, 0, v3, &unk_25F30F328, v7);
    *(v0 + 120) = v4;
  }

  return v4;
}

uint64_t sub_25F23DB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return MEMORY[0x2822009F8](sub_25F23DB84, a4, 0);
}

uint64_t sub_25F23DB84()
{
  v1 = *(v0[8] + 112);
  v0[9] = v1;
  v2 = *(v1 + 16);
  v0[10] = v2;
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v0[11] = 0;
    v0[12] = v3;
    sub_25F1BF03C(v1 + 32, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v13 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_25F23DD40;

    return v13(v4, v5);
  }

  else
  {
    v8 = v0[7];
    v9 = sub_25F23F784(MEMORY[0x277D84F90]);
    v11 = v10;

    *v8 = v9;
    v8[1] = v11;
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_25F23DD40(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  *(v2 + 112) = a1;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));

  return MEMORY[0x2822009F8](sub_25F23DE60, v3, 0);
}

uint64_t sub_25F23DE60()
{
  v1 = v0[14];
  result = v0[12];
  v3 = *(v1 + 16);
  v4 = *(result + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0[12];
  if (isUniquelyReferenced_nonNull_native && v5 <= v7[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v12 = v4 + v3;
    }

    else
    {
      v12 = v4;
    }

    v7 = sub_25F2F0824(isUniquelyReferenced_nonNull_native, v12, 1, v0[12]);
    if (*(v1 + 16))
    {
LABEL_5:
      v8 = (v7[3] >> 1) - v7[2];
      result = sub_25F3044DC();
      if (v8 >= v3)
      {
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v9 = v7[2];
        v10 = __OFADD__(v9, v3);
        v11 = v9 + v3;
        if (!v10)
        {
          v7[2] = v11;
          goto LABEL_14;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  if (v3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v13 = v0[11] + 1;
  if (v13 == v0[10])
  {
    v14 = v0[7];
    v15 = sub_25F23F784(v7);
    v17 = v16;

    *v14 = v15;
    v14[1] = v17;
    v18 = v0[1];

    return v18();
  }

  else
  {
    v0[11] = v13;
    v0[12] = v7;
    sub_25F1BF03C(v0[9] + 40 * v13 + 32, (v0 + 2));
    v19 = v0[5];
    v20 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v19);
    v22 = (*(v20 + 8) + **(v20 + 8));
    v21 = swift_task_alloc();
    v0[13] = v21;
    *v21 = v0;
    v21[1] = sub_25F23DD40;

    return v22(v19, v20);
  }
}

uint64_t BuiltProductPathResolver.__allocating_init(providers:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  *(v2 + 120) = 0;
  return v2;
}

uint64_t BuiltProductPathResolver.init(providers:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  *(v1 + 120) = 0;
  return v1;
}

uint64_t sub_25F23E180(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_25F23E1A4, v2, 0);
}

uint64_t sub_25F23E1A4()
{
  v1 = sub_25F23DA24();
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_25F23E258;

  return MEMORY[0x282200460](v0 + 16, v1, &type metadata for BuiltProductPathResolver.Cache);
}

uint64_t sub_25F23E258()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_25F23E384, v1, 0);
}

uint64_t sub_25F23E384()
{
  v1 = sub_25F23E418(v0[4], v0[5], v0[2], v0[3]);
  v3 = v2;

  v4 = v0[1];

  return v4(v1, v3);
}

uint64_t sub_25F23E418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BC8, &unk_25F30F308);
  v5 = MEMORY[0x28223BE20](v78);
  v83 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v77 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100);
  v85 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v75 = (&v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v75 - v12;
  MEMORY[0x28223BE20](v11);
  v79 = &v75 - v14;
  v15 = sub_25F3044DC();
  v16 = *(v15 - 8);
  v80 = v15;
  v81 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v76 = &v75 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v75 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v75 - v25;
  v27 = sub_25F304DDC();
  v28 = [v27 lastPathComponent];

  v29 = sub_25F304E0C();
  v31 = v30;

  if (!*(a3 + 16) || (v32 = sub_25F219234(v29, v31), (v33 & 1) == 0))
  {
    v38 = v86;
    if (*(v86 + 16))
    {
      v39 = sub_25F219234(v29, v31);
      v41 = v40;

      if (v41)
      {
        sub_25F21FC08(*(v38 + 56) + *(v85 + 72) * v39, v13);
        v42 = v79;
        sub_25F23F614(v13, v79, &qword_27FD52C48, &qword_25F308100);
        v43 = sub_25F304DDC();
        v44 = [v43 pathComponents];

        v45 = sub_25F30525C();
        v46 = sub_25F1BF47C(v45);

        v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BD0, &qword_25F30F318) + 36);
        v48 = v78;
        v49 = *(v78 + 48);
        v50 = v83;
        *v83 = 0;
        v51 = v80;
        v52 = v81;
        v53 = *(v81 + 16);
        v82 = v49;
        v84 = v53;
        v85 = v81 + 16;
        v53(v50 + v49, v42 + v47, v80);
        v54 = v75;
        sub_25F21FC08(v42, v75);
        v55 = *v54;

        sub_25F1AF698(v54, &qword_27FD52C48, &qword_25F308100);
        v56 = *(v55 + 16);
        if (v56)
        {
          v86 = v46;
          v57 = 0;
          v58 = *(v52 + 80);
          v75 = v55;
          v59 = v55 + ((v58 + 32) & ~v58);
          v60 = *(v52 + 72);
          v61 = (v52 + 8);
          v62 = (v52 + 40);
          do
          {
            v84(v19, v59, v51);
            sub_25F3044BC();
            v63 = v51;
            v64 = sub_25F304DDC();

            v65 = [v64 pathComponents];

            v66 = sub_25F30525C();
            v67 = sub_25F1BF47C(v66);

            v68 = sub_25F23EDC0(v86, v67)[2];

            if (v57 >= v68)
            {
              (*v61)(v19, v63);
            }

            else
            {
              v70 = v82;
              v69 = v83;
              *v83 = v68;
              (*v62)(v69 + v70, v19, v63);
              v57 = v68;
            }

            v51 = v63;
            v59 += v60;
            --v56;
          }

          while (v56);

          v48 = v78;
          v52 = v81;
        }

        else
        {
        }

        v72 = v77;
        sub_25F23F614(v83, v77, &qword_27FD55BC8, &unk_25F30F308);
        v73 = v72 + *(v48 + 48);
        v74 = v76;
        (*(v52 + 32))(v76, v73, v51);
        v37 = sub_25F3044BC();
        (*(v52 + 8))(v74, v51);
        sub_25F1AF698(v79, &qword_27FD52C48, &qword_25F308100);
        return v37;
      }
    }

    else
    {
    }

    return 0;
  }

  v34 = v32;

  v35 = v80;
  v36 = v81;
  (*(v81 + 16))(v24, *(a3 + 56) + *(v81 + 72) * v34, v80);
  (*(v36 + 32))(v26, v24, v35);
  v37 = sub_25F3044BC();
  (*(v36 + 8))(v26, v35);
  return v37;
}

uint64_t BuiltProductPathResolver.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BuiltProductPathResolver.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of BuiltProductPathResolver.resolve(path:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F23ECAC;

  return v8(a1, a2);
}

uint64_t sub_25F23ECAC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

unint64_t *sub_25F23EDC0(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_25F23F014((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_25F23EF84(v11, v6, a2, a1);

    MEMORY[0x25F8D9510](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_25F23EF84(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_25F23F014(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_25F23F014(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_25F30671C();

      sub_25F304F0C();
      v26 = sub_25F30676C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_25F30659C() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_25F23F3F0(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_25F30671C();

      sub_25F304F0C();
      v39 = sub_25F30676C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_25F30659C() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F23F3F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E60, &unk_25F3084B0);
  result = sub_25F305F3C();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_25F30671C();

    sub_25F304F0C();
    result = sub_25F30676C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25F23F614(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_25F23F67C()
{
  result = qword_27FD55BD8;
  if (!qword_27FD55BD8)
  {
    type metadata accessor for BuiltProductPathResolver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55BD8);
  }

  return result;
}

uint64_t sub_25F23F6D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F1AFDB0;

  return sub_25F23DB64(a1, v4, v5, v6);
}

void *sub_25F23F784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550B0, &unk_25F30F330);
  MEMORY[0x28223BE20](v2 - 8);
  v119 = &v113 - v3;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BD0, &qword_25F30F318);
  MEMORY[0x28223BE20](v129);
  v124 = (&v113 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100);
  v123 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v118 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v128 = &v113 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v130 = &v113 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v122 = &v113 - v13;
  MEMORY[0x28223BE20](v12);
  v134 = (&v113 - v14);
  v15 = sub_25F3044DC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v126 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v121 = &v113 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v131 = &v113 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v117 = &v113 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v127 = &v113 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v113 - v27;
  v29 = MEMORY[0x277D84F90];
  v30 = sub_25F1B637C(MEMORY[0x277D84F90]);
  v142 = sub_25F1B6568(v29);
  v31 = *(a1 + 16);
  if (!v31)
  {
    return v30;
  }

  v33 = *(v16 + 16);
  v32 = v16 + 16;
  v139 = v33;
  v116 = *(v32 + 64);
  v132 = (v116 + 32) & ~v116;
  v34 = a1 + v132;
  v35 = (v32 + 16);
  v135 = (v32 - 8);
  v140 = *(v32 + 56);
  v114 = (v32 + 40);
  v120 = (v32 + 24);
  v113 = xmmword_25F3077D0;
  v136 = v15;
  v133 = v32;
  v36 = v121;
  v137 = v28;
  v115 = (v32 + 16);
  while (1)
  {
    v138 = v31;
    v139(v28, v34, v15);
    v39 = sub_25F30445C();
    v41 = v40;
    v42 = *(v142 + 16);
    v143 = v40;
    v141 = v39;
    if (v42)
    {
      v43 = sub_25F219234(v39, v40);
      v41 = v143;
      if (v44)
      {
        v45 = *(v123 + 72);
        v46 = v122;
        sub_25F21FC08(*(v142 + 56) + v45 * v43, v122);
        v47 = v46;
        v48 = v134;
        sub_25F23F614(v47, v134, &qword_27FD52C48, &qword_25F308100);
        v49 = *v48;
        v139(v131, v28, v15);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_25F2F0824(0, *(v49 + 2) + 1, 1, v49);
        }

        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          v49 = sub_25F2F0824((v50 > 1), v51 + 1, 1, v49);
        }

        *(v49 + 2) = v51 + 1;
        (*v35)(&v49[v132 + v51 * v140], v131, v15);
        v52 = v124;
        v53 = v134;
        v139(v124 + *(v129 + 36), v134 + *(v129 + 36), v15);
        *v52 = v49;
        sub_25F2403C0(v52, v53, &qword_27FD55BD0, &qword_25F30F318);
        sub_25F21FC08(v53, v130);
        v54 = v142;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v144 = v54;
        v56 = v141;
        v57 = sub_25F219234(v141, v143);
        v59 = *(v54 + 16);
        v60 = (v58 & 1) == 0;
        v61 = __OFADD__(v59, v60);
        v62 = v59 + v60;
        if (v61)
        {
          goto LABEL_45;
        }

        v63 = v58;
        if (*(v54 + 24) >= v62)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v106 = v57;
            sub_25F21E8B4();
            v57 = v106;
            v36 = v121;
            v15 = v136;
            if (v63)
            {
              goto LABEL_34;
            }

            goto LABEL_40;
          }
        }

        else
        {
          sub_25F21BD1C(v62, isUniquelyReferenced_nonNull_native);
          v57 = sub_25F219234(v56, v143);
          if ((v63 & 1) != (v64 & 1))
          {
            goto LABEL_48;
          }
        }

        v15 = v136;
        if (v63)
        {
LABEL_34:
          v103 = v57;

          v142 = v144;
          sub_25F2403C0(v130, v144[7] + v103 * v45, &qword_27FD52C48, &qword_25F308100);
          v28 = v137;
          (*v135)(v137, v15);
LABEL_42:
          sub_25F1AF698(v134, &qword_27FD52C48, &qword_25F308100);
          goto LABEL_4;
        }

LABEL_40:
        v107 = v144;
        v144[(v57 >> 6) + 8] |= 1 << v57;
        v108 = (v107[6] + 16 * v57);
        v109 = v143;
        *v108 = v141;
        v108[1] = v109;
        sub_25F23F614(v130, v107[7] + v57 * v45, &qword_27FD52C48, &qword_25F308100);
        v28 = v137;
        (*v135)(v137, v15);
        v110 = v107[2];
        v61 = __OFADD__(v110, 1);
        v111 = v110 + 1;
        if (v61)
        {
          goto LABEL_47;
        }

        v142 = v107;
        v107[2] = v111;
        goto LABEL_42;
      }
    }

    if (v30[2])
    {
      v65 = sub_25F219234(v141, v41);
      v41 = v143;
      if (v66)
      {
        v67 = v117;
        v68 = v35;
        v69 = v139;
        v139(v117, v30[7] + v65 * v140, v15);
        v70 = v127;
        v125 = *v68;
        v125(v127, v67, v15);
        v71 = v128;
        v72 = *(v129 + 36);
        v69(&v128[v72], v70, v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BE0, &unk_25F316540);
        v73 = v132;
        v74 = swift_allocObject();
        *(v74 + 16) = v113;
        v69((v74 + v73), v137, v15);
        v69(v126, &v71[v72], v15);
        v75 = sub_25F2F0824(0, 1, 1, MEMORY[0x277D84F90]);
        v77 = *(v75 + 2);
        v76 = *(v75 + 3);
        if (v77 >= v76 >> 1)
        {
          v75 = sub_25F2F0824((v76 > 1), v77 + 1, 1, v75);
        }

        *(v75 + 2) = v77 + 1;
        v78 = v125;
        v15 = v136;
        v35 = v115;
        v125(&v75[v132 + v77 * v140], v126, v136);
        v144 = v75;
        sub_25F1BA4CC(v74);
        v79 = v128;
        *v128 = v144;
        v80 = v118;
        sub_25F23F614(v79, v118, &qword_27FD52C48, &qword_25F308100);
        v81 = v142;
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v144 = v81;
        v83 = v141;
        v84 = v143;
        sub_25F210C90(v80, v141, v143, v82);
        v142 = v144;
        v85 = sub_25F219234(v83, v84);
        v36 = v121;
        if (v86)
        {
          v87 = v85;
          v88 = swift_isUniquelyReferenced_nonNull_native();
          v144 = v30;
          v89 = v119;
          v28 = v137;
          if (!v88)
          {
            sub_25F21E634();
            v89 = v119;
            v30 = v144;
          }

          v78(v89, v30[7] + v87 * v140, v15);
          sub_25F1BB6D4(v87, v30);
          v90 = 0;
        }

        else
        {
          v90 = 1;
          v89 = v119;
          v28 = v137;
        }

        (*v114)(v89, v90, 1, v15);

        sub_25F1AF698(v89, &qword_27FD550B0, &unk_25F30F330);
        v104 = *v135;
        (*v135)(v127, v15);
        v104(v28, v15);
        v38 = v138;
        goto LABEL_5;
      }
    }

    v139(v36, v28, v15);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v144 = v30;
    v92 = sub_25F219234(v141, v41);
    v94 = v30[2];
    v95 = (v93 & 1) == 0;
    v61 = __OFADD__(v94, v95);
    v96 = v94 + v95;
    if (v61)
    {
      break;
    }

    v97 = v93;
    if (v30[3] >= v96)
    {
      if ((v91 & 1) == 0)
      {
        v105 = v92;
        sub_25F21E634();
        v92 = v105;
        v15 = v136;
        if ((v97 & 1) == 0)
        {
LABEL_30:
          v30 = v144;
          v144[(v92 >> 6) + 8] |= 1 << v92;
          v99 = (v30[6] + 16 * v92);
          v100 = v143;
          *v99 = v141;
          v99[1] = v100;
          (*v35)((v30[7] + v92 * v140), v36, v15);
          v28 = v137;
          (*v135)(v137, v15);
          v101 = v30[2];
          v61 = __OFADD__(v101, 1);
          v102 = v101 + 1;
          if (v61)
          {
            goto LABEL_46;
          }

          v30[2] = v102;
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_25F21B99C(v96, v91);
      v92 = sub_25F219234(v141, v143);
      if ((v97 & 1) != (v98 & 1))
      {
        goto LABEL_48;
      }
    }

    v15 = v136;
    if ((v97 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_3:
    v37 = v92;

    v30 = v144;
    (*v120)(v144[7] + v37 * v140, v36, v15);
    v28 = v137;
    (*v135)(v137, v15);
LABEL_4:
    v38 = v138;
LABEL_5:
    v34 += v140;
    v31 = v38 - 1;
    if (!v31)
    {
      return v30;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_25F30665C();
  __break(1u);
  return result;
}

uint64_t sub_25F2403C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t audit_token_t.pid.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v5.val = a1;
  *&v5.val[2] = a2;
  *&v5.val[4] = a3;
  *&v5.val[6] = a4;
  return audit_token_to_pid(&v5);
}

uint64_t static audit_token_t.current.getter()
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  current_process_audit_token = get_current_process_audit_token(v4);
  if (!current_process_audit_token)
  {
    return *&v4[0];
  }

  v1 = current_process_audit_token;
  sub_25F240554();
  swift_allocError();
  *v2 = v1;
  return swift_willThrow();
}

unint64_t sub_25F240554()
{
  result = qword_27FD55BE8;
  if (!qword_27FD55BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55BE8);
  }

  return result;
}

uint64_t Query.uncachedValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(v3, a1, a2, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t Query.debugDescription.getter(uint64_t a1)
{
  swift_getDynamicType();

  return sub_25F30685C();
}

uint64_t NSThread.currentExecutionExclusivity.getter()
{
  sub_25F24078C();
  v0 = [objc_opt_self() currentThread];
  v1 = sub_25F305B7C();

  if (v1)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25F24078C()
{
  result = qword_27FD55BF0;
  if (!qword_27FD55BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD55BF0);
  }

  return result;
}

uint64_t sub_25F2407D8()
{
  sub_25F24078C();
  v0 = [objc_opt_self() currentThread];
  v1 = sub_25F305B7C();

  if (v1)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t TimingRecord.ID.init()@<X0>(void *a1@<X8>)
{
  v3 = 0;
  result = MEMORY[0x25F8D9530](&v3, 8);
  *a1 = v3;
  return result;
}

void TimingRecord.parent.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t TimingRecord.parent.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t TimingRecord.range.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TimingRecord(0) + 24);

  return sub_25F2409B8(a1, v3);
}

uint64_t sub_25F2409B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TimingRecord.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TimingRecord(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v3 + 16);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

__n128 TimingRecord.category.setter(__n128 *a1)
{
  v9 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u8[0];
  v5 = a1[2].n128_u64[1];
  v6 = a1[3].n128_u8[0];
  v7 = (v1 + *(type metadata accessor for TimingRecord(0) + 28));

  result = v9;
  *v7 = v9;
  v7[1].n128_u64[0] = v2;
  v7[1].n128_u64[1] = v3;
  v7[2].n128_u8[0] = v4;
  v7[2].n128_u64[1] = v5;
  v7[3].n128_u8[0] = v6;
  return result;
}

uint64_t TimingRecord.tag.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TimingRecord(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TimingRecord.details.getter()
{
  v1 = *(v0 + *(type metadata accessor for TimingRecord(0) + 36));

  return v1;
}

uint64_t TimingRecord.details.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TimingRecord(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double TimingRecord.elapsedTime.getter()
{
  v1 = type metadata accessor for TimingRecord.Point(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = v0 + *(type metadata accessor for TimingRecord(0) + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  sub_25F240E98(v7 + *(v8 + 36), v6);
  sub_25F30458C();
  v10 = v9;
  v11 = sub_25F30462C();
  v12 = *(*(v11 - 8) + 8);
  v12(v6, v11);
  sub_25F240E98(v7, v4);
  sub_25F30458C();
  v14 = v13;
  v12(v4, v11);
  return v10 - v14;
}

uint64_t sub_25F240E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimingRecord.Point(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TimingRecord.init(id:parent:range:category:tag:details:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *a4;
  v15 = a4[1];
  v16 = a4[2];
  v25 = a4[3];
  v24 = *(a4 + 32);
  v23 = a4[5];
  v22 = *(a4 + 48);
  v31 = 0;
  MEMORY[0x25F8D9530](&v31, 8);
  *a9 = v31;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  if (v11 == 1)
  {
    v31 = 0;
    MEMORY[0x25F8D9530](&v31, 8);
    v10 = v31;
  }

  v17 = type metadata accessor for TimingRecord(0);
  v18 = a9 + v17[8];
  v19 = (a9 + v17[9]);
  *a9 = v10;
  *(a9 + 8) = v12;
  *(a9 + 16) = v13;
  result = sub_25F23F614(a3, a9 + v17[6], &qword_27FD55BF8, &qword_25F30F450);
  v21 = a9 + v17[7];
  *v21 = v14;
  *(v21 + 8) = v15;
  *(v21 + 16) = v16;
  *(v21 + 24) = v25;
  *(v21 + 32) = v24;
  *(v21 + 40) = v23;
  *(v21 + 48) = v22;
  *v18 = a5;
  *(v18 + 8) = a6 & 1;
  *v19 = a7;
  v19[1] = a8;
  return result;
}

uint64_t TimingRecord.init(id:parent:start:category:tag:details:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56 = a7;
  v55 = a6;
  v54 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C00, &qword_25F30F458);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  MEMORY[0x28223BE20](v46);
  v22 = &v41 - v21;
  v41 = *a1;
  v23 = *a2;
  LODWORD(v21) = *(a2 + 8);
  v47 = *(a1 + 8);
  v48 = v21;
  v24 = *a4;
  v25 = a4[1];
  v26 = a4[2];
  v52 = a4[3];
  v53 = v26;
  v51 = *(a4 + 32);
  v27 = a4[5];
  v49 = v23;
  v50 = v27;
  v28 = *(a4 + 48);
  result = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v42 = v28;
    v43 = v25;
    v44 = v24;
    v45 = a8;
    sub_25F240E98(a3, v20);
    sub_25F240E98(a3, &v20[*(v15 + 48)]);
    sub_25F1B7174(v20, v18, &qword_27FD55C00, &qword_25F30F458);
    v30 = *(v15 + 48);
    sub_25F243B54(v18, v22, type metadata accessor for TimingRecord.Point);
    sub_25F243BBC(&v18[v30], type metadata accessor for TimingRecord.Point);
    sub_25F23F614(v20, v18, &qword_27FD55C00, &qword_25F30F458);
    sub_25F243B54(&v18[*(v15 + 48)], &v22[*(v46 + 36)], type metadata accessor for TimingRecord.Point);
    sub_25F243BBC(v18, type metadata accessor for TimingRecord.Point);
    v57 = 0;
    MEMORY[0x25F8D9530](&v57, 8);
    *a9 = v57;
    *(a9 + 8) = 0;
    *(a9 + 16) = 1;
    v31 = v22;
    if (v47)
    {
      v57 = 0;
      MEMORY[0x25F8D9530](&v57, 8);
      sub_25F243BBC(a3, type metadata accessor for TimingRecord.Point);
      v32 = v57;
      v33 = v45;
    }

    else
    {
      sub_25F243BBC(a3, type metadata accessor for TimingRecord.Point);
      v33 = v45;
      v32 = v41;
    }

    v34 = type metadata accessor for TimingRecord(0);
    v35 = a9 + v34[8];
    v36 = (a9 + v34[9]);
    v37 = v49;
    *a9 = v32;
    *(a9 + 8) = v37;
    *(a9 + 16) = v48;
    result = sub_25F23F614(v31, a9 + v34[6], &qword_27FD55BF8, &qword_25F30F450);
    v38 = a9 + v34[7];
    v39 = v43;
    *v38 = v44;
    *(v38 + 8) = v39;
    v40 = v52;
    *(v38 + 16) = v53;
    *(v38 + 24) = v40;
    *(v38 + 32) = v51;
    *(v38 + 40) = v50;
    *(v38 + 48) = v42;
    *v35 = v54;
    *(v35 + 8) = v55 & 1;
    *v36 = v56;
    v36[1] = v33;
  }

  return result;
}

uint64_t TimingRecord.updateEndTime(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C00, &qword_25F30F458);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = type metadata accessor for TimingRecord.Point(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = v1 + *(type metadata accessor for TimingRecord(0) + 24);
  if (_s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0())
  {
    v16 = v15;
  }

  else
  {
    v16 = a1;
  }

  sub_25F240E98(v16, v14);
  sub_25F240E98(v15, v12);
  result = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0();
  if (result)
  {
    __break(1u);
  }

  else
  {
    sub_25F243B54(v12, v8, type metadata accessor for TimingRecord.Point);
    sub_25F243B54(v14, &v8[*(v3 + 48)], type metadata accessor for TimingRecord.Point);
    sub_25F1B7174(v8, v6, &qword_27FD55C00, &qword_25F30F458);
    v18 = *(v3 + 48);
    sub_25F1AF698(v15, &qword_27FD55BF8, &qword_25F30F450);
    sub_25F243B54(v6, v15, type metadata accessor for TimingRecord.Point);
    sub_25F243BBC(&v6[v18], type metadata accessor for TimingRecord.Point);
    sub_25F23F614(v8, v6, &qword_27FD55C00, &qword_25F30F458);
    v19 = *(v3 + 48);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
    sub_25F243B54(&v6[v19], v15 + *(v20 + 36), type metadata accessor for TimingRecord.Point);
    return sub_25F243BBC(v6, type metadata accessor for TimingRecord.Point);
  }

  return result;
}

uint64_t TimingRecord.hash(into:)(uint64_t a1)
{
  MEMORY[0x25F8D8900](*v1);
  if (*(v1 + 16) == 1)
  {
    sub_25F30673C();
  }

  else
  {
    v2 = *(v1 + 8);
    sub_25F30673C();
    MEMORY[0x25F8D8900](v2);
  }

  v3 = type metadata accessor for TimingRecord(0);
  sub_25F30462C();
  sub_25F243C84(&qword_27FD55C08, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25F304BDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  sub_25F304BDC();
  MEMORY[0x25F8D8900](*(v1 + v3[7] + 40));
  v4 = (v1 + v3[8]);
  if (*(v4 + 8) == 1)
  {
    sub_25F30673C();
  }

  else
  {
    v5 = *v4;
    sub_25F30673C();
    MEMORY[0x25F8D8900](v5);
  }

  if (!*(v1 + v3[9] + 8))
  {
    return sub_25F30673C();
  }

  sub_25F30673C();

  return sub_25F304F0C();
}

uint64_t TimingRecord.hashValue.getter()
{
  sub_25F30671C();
  TimingRecord.hash(into:)(v1);
  return sub_25F30676C();
}

uint64_t sub_25F2417FC()
{
  sub_25F30671C();
  TimingRecord.hash(into:)(v1);
  return sub_25F30676C();
}

uint64_t sub_25F241840(uint64_t a1)
{
  sub_25F30671C();
  TimingRecord.hash(into:)(v2);
  return sub_25F30676C();
}

uint64_t TimingRecord.ID.hashValue.getter()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D8900](v1);
  return sub_25F30676C();
}

uint64_t TimingRecord.Point.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F30462C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TimingRecord.Point.timestamp.setter(uint64_t a1)
{
  v3 = sub_25F30462C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TimingRecord.Point.init(timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F30462C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t TimingRecord.Point.hash(into:)(uint64_t a1)
{
  sub_25F30462C();
  sub_25F243C84(&qword_27FD55C08, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);

  return sub_25F304BDC();
}

uint64_t TimingRecord.Point.hashValue.getter()
{
  sub_25F30671C();
  sub_25F30462C();
  sub_25F243C84(&qword_27FD55C08, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25F304BDC();
  return sub_25F30676C();
}

uint64_t sub_25F241BC8()
{
  sub_25F30671C();
  sub_25F30462C();
  sub_25F243C84(&qword_27FD55C08, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25F304BDC();
  return sub_25F30676C();
}

uint64_t sub_25F241C50(uint64_t a1)
{
  sub_25F30462C();
  sub_25F243C84(&qword_27FD55C08, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);

  return sub_25F304BDC();
}

uint64_t sub_25F241CD4(uint64_t a1)
{
  sub_25F30671C();
  sub_25F30462C();
  sub_25F243C84(&qword_27FD55C08, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25F304BDC();
  return sub_25F30676C();
}

uint64_t TimingRecord.Point.description.getter(uint64_t a1)
{
  sub_25F30458C();
  sub_25F30561C();
  return 0;
}

uint64_t sub_25F241E14(uint64_t a1)
{
  sub_25F30458C();
  sub_25F30561C();
  return 0;
}

uint64_t ClosedRange<>.isEmpty.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);

  return _s20PreviewsFoundationOS12TimingRecordV5PointV2eeoiySbAE_AEtFZ_0();
}

double ClosedRange<>.elapsedTime.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TimingRecord.Point(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  sub_25F240E98(v1 + *(v8 + 36), v7);
  sub_25F30458C();
  v10 = v9;
  v11 = sub_25F30462C();
  v12 = *(*(v11 - 8) + 8);
  v12(v7, v11);
  sub_25F240E98(v1, v5);
  sub_25F30458C();
  v14 = v13;
  v12(v5, v11);
  return v10 - v14;
}

uint64_t ClosedRange<>.pointAtPercent(_:)(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for TimingRecord.Point(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F240E98(v2, v5);
  sub_25F30458C();
  v6 = sub_25F30462C();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  sub_25F240E98(v2 + *(v8 + 36), v5);
  sub_25F30458C();
  v7(v5, v6);
  return sub_25F30457C();
}

uint64_t ClosedRange<>.addingSecondsToLowerBound(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C00, &qword_25F30F458);
  v4 = MEMORY[0x28223BE20](v32);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v31 = &v30 - v7;
  v8 = type metadata accessor for TimingRecord.Point(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = sub_25F30462C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F240E98(v3, v16);
  sub_25F30458C();
  v21 = *(v18 + 8);
  v21(v16, v17);
  sub_25F30457C();
  (*(v18 + 16))(v14, v20, v17);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  v22 = *(v30 + 36);
  if (_s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0())
  {
    v23 = v3 + v22;
  }

  else
  {
    v23 = v14;
  }

  sub_25F240E98(v23, v11);
  v24 = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0();
  sub_25F243BBC(v14, type metadata accessor for TimingRecord.Point);
  result = (v21)(v20, v17);
  if (v24)
  {
    __break(1u);
  }

  else
  {
    v26 = v31;
    sub_25F243B54(v11, v31, type metadata accessor for TimingRecord.Point);
    v27 = v32;
    sub_25F240E98(v3 + v22, v26 + *(v32 + 48));
    sub_25F1B7174(v26, v6, &qword_27FD55C00, &qword_25F30F458);
    v28 = *(v27 + 48);
    v29 = v33;
    sub_25F243B54(v6, v33, type metadata accessor for TimingRecord.Point);
    sub_25F243BBC(&v6[v28], type metadata accessor for TimingRecord.Point);
    sub_25F23F614(v26, v6, &qword_27FD55C00, &qword_25F30F458);
    sub_25F243B54(&v6[*(v27 + 48)], v29 + *(v30 + 36), type metadata accessor for TimingRecord.Point);
    return sub_25F243BBC(v6, type metadata accessor for TimingRecord.Point);
  }

  return result;
}

uint64_t Collection<>.asTextRowsForDiagnostics.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimingRecord.Point(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v83 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v82 = &v77 - v7;
  v8 = type metadata accessor for TimingRecord(0);
  v86 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C18, &unk_25F30F460);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v77 - v13;
  v15 = *(a1 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v77 - v19;
  (*(v15 + 16))(v17, v2, a1);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = v20;
  v85 = AssociatedTypeWitness;
  v81 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v22 = *(v86 + 48);
  v86 += 48;
  v80 = v22;
  v23 = v22(v14, 1, v8);
  v24 = MEMORY[0x277D84F90];
  if (v23 != 1)
  {
    v79 = v14;
    do
    {
      sub_25F243B54(v14, v10, type metadata accessor for TimingRecord);
      v87 = *v10;
      sub_25F243B00();
      v27 = sub_25F30508C();
      v29 = v28;
      v30 = sub_25F2EFB20(0, 1, 1, MEMORY[0x277D84F90]);
      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_25F2EFB20((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[16 * v32];
      *(v33 + 4) = v27;
      *(v33 + 5) = v29;
      v34 = &v10[v8[6]];
      v87 = 0;
      v88 = 0xE000000000000000;
      sub_25F30458C();
      sub_25F30561C();
      v35 = v87;
      v36 = v88;
      v38 = *(v30 + 2);
      v37 = *(v30 + 3);
      if (v38 >= v37 >> 1)
      {
        v30 = sub_25F2EFB20((v37 > 1), v38 + 1, 1, v30);
      }

      *(v30 + 2) = v38 + 1;
      v39 = &v30[16 * v38];
      *(v39 + 4) = v35;
      *(v39 + 5) = v36;
      v87 = 0;
      v88 = 0xE000000000000000;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
      v41 = v82;
      sub_25F240E98(v34 + *(v40 + 36), v82);
      sub_25F30458C();
      v42 = sub_25F30462C();
      v43 = *(*(v42 - 8) + 8);
      v43(v41, v42);
      v44 = v83;
      sub_25F240E98(v34, v83);
      sub_25F30458C();
      v43(v44, v42);
      sub_25F30561C();
      MEMORY[0x25F8D7130](115, 0xE100000000000000);
      v45 = v87;
      v46 = v88;
      v48 = *(v30 + 2);
      v47 = *(v30 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v30 = sub_25F2EFB20((v47 > 1), v48 + 1, 1, v30);
      }

      *(v30 + 2) = v49;
      v50 = &v30[16 * v48];
      *(v50 + 4) = v45;
      *(v50 + 5) = v46;
      if (v10[16])
      {
        v51 = 0;
        v52 = 0xE000000000000000;
      }

      else
      {
        v87 = *(v10 + 1);
        v51 = sub_25F30508C();
        v49 = *(v30 + 2);
      }

      v53 = *(v30 + 3);
      v54 = v49 + 1;
      if (v49 >= v53 >> 1)
      {
        v74 = v51;
        v75 = v52;
        v76 = sub_25F2EFB20((v53 > 1), v49 + 1, 1, v30);
        v52 = v75;
        v30 = v76;
        v51 = v74;
      }

      *(v30 + 2) = v54;
      v55 = &v30[16 * v49];
      *(v55 + 4) = v51;
      *(v55 + 5) = v52;
      v56 = &v10[v8[7]];
      v58 = *v56;
      v57 = *(v56 + 1);
      v59 = *(v30 + 3);
      v60 = v49 + 2;

      if ((v49 + 2) > (v59 >> 1))
      {
        v30 = sub_25F2EFB20((v59 > 1), v49 + 2, 1, v30);
      }

      *(v30 + 2) = v60;
      v61 = &v30[16 * v54];
      *(v61 + 4) = v58;
      *(v61 + 5) = v57;
      v62 = &v10[v8[9]];
      v63 = *(v62 + 1);
      if (v63)
      {
        v64 = *v62;
      }

      else
      {
        v64 = 0;
      }

      if (v63)
      {
        v65 = *(v62 + 1);
      }

      else
      {
        v65 = 0xE000000000000000;
      }

      v66 = *(v30 + 3);

      if ((v49 + 3) > (v66 >> 1))
      {
        v30 = sub_25F2EFB20((v66 > 1), v49 + 3, 1, v30);
      }

      v14 = v79;
      *(v30 + 2) = v49 + 3;
      v67 = &v30[16 * v60];
      *(v67 + 4) = v64;
      *(v67 + 5) = v65;
      v87 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
      sub_25F1C3498();
      v68 = sub_25F304CAC();
      v70 = v69;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_25F2EFB20(0, *(v24 + 2) + 1, 1, v24);
      }

      v72 = *(v24 + 2);
      v71 = *(v24 + 3);
      if (v72 >= v71 >> 1)
      {
        v24 = sub_25F2EFB20((v71 > 1), v72 + 1, 1, v24);
      }

      sub_25F243BBC(v10, type metadata accessor for TimingRecord);
      *(v24 + 2) = v72 + 1;
      v73 = &v24[16 * v72];
      *(v73 + 4) = v68;
      *(v73 + 5) = v70;
      sub_25F305CDC();
    }

    while (v80(v14, 1, v8) != 1);
  }

  (*(v78 + 8))(v84, v85);
  v87 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v25 = sub_25F304CAC();

  return v25;
}

uint64_t Collection<>.filterWithinRange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2);
  v10 = a1;
  return sub_25F30517C();
}

uint64_t sub_25F242DF4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TimingRecord(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  if (_s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0())
  {
    v2 = 0;
  }

  else
  {
    v2 = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0() ^ 1;
  }

  return v2 & 1;
}

uint64_t Collection<>.totalRange.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a2;
  v16 = a3;
  v4 = *(a2 + 8);
  v5 = sub_25F305FEC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD55BF8, &qword_25F30F450);
  v9 = sub_25F30617C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  MEMORY[0x25F8D7310](a1, v4);
  swift_getWitnessTable();
  sub_25F30638C();
  (*(v6 + 8))(v8, v5);
  v17 = v15;
  swift_getWitnessTable();
  Collection<>.totalRange.getter(v9, v16);
  return (*(v10 + 8))(v12, v9);
}

uint64_t Collection<>.totalRange.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v77 = a3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C00, &qword_25F30F458);
  v5 = MEMORY[0x28223BE20](v75);
  v76 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v74 = &v65 - v8;
  AssociatedConformanceWitness = *(a1 - 8);
  MEMORY[0x28223BE20](v7);
  v72 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v70 = &v65 - v11;
  v69 = *(swift_getAssociatedConformanceWitness() + 8);
  v71 = AssociatedTypeWitness;
  v80 = swift_getAssociatedTypeWitness();
  v73 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v81 = &v65 - v12;
  v13 = type metadata accessor for TimingRecord.Point(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v79 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v82 = &v65 - v20;
  MEMORY[0x28223BE20](v19);
  v67 = &v65 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C20, &qword_25F30F470);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v65 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v65 - v33;
  v68 = a1;
  sub_25F30583C();
  v37 = *(v29 + 48);
  v35 = v29 + 48;
  v36 = v37;
  if (v37(v27, 1, v28) == 1)
  {
    v38 = v28;
    sub_25F1AF698(v27, &qword_27FD55C20, &qword_25F30F470);
    sub_25F30457C();
    v39 = v79;
    sub_25F30457C();
    result = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0();
    if ((result & 1) == 0)
    {
      v41 = v74;
      sub_25F243B54(v18, v74, type metadata accessor for TimingRecord.Point);
      v42 = (v75 + 48);
      sub_25F243B54(v39, v41 + *(v75 + 48), type metadata accessor for TimingRecord.Point);
      v43 = v76;
      sub_25F1B7174(v41, v76, &qword_27FD55C00, &qword_25F30F458);
      v44 = *v42;
      v45 = v77;
      sub_25F243B54(v43, v77, type metadata accessor for TimingRecord.Point);
      sub_25F243BBC(v43 + v44, type metadata accessor for TimingRecord.Point);
      sub_25F23F614(v41, v43, &qword_27FD55C00, &qword_25F30F458);
      v46 = (v38 + 36);
LABEL_7:
      sub_25F243B54(v43 + *v42, v45 + *v46, type metadata accessor for TimingRecord.Point);
      return sub_25F243BBC(v43, type metadata accessor for TimingRecord.Point);
    }

    __break(1u);
  }

  else
  {
    sub_25F23F614(v27, v34, &qword_27FD55BF8, &qword_25F30F450);
    v65 = v36;
    v47 = v67;
    sub_25F240E98(v34, v67);
    v48 = *(v28 + 36);
    v79 = (v28 + 36);
    v66 = v34;
    sub_25F240E98(&v34[v48], v82);
    (*(AssociatedConformanceWitness + 16))(v72, v3, v68);
    sub_25F3058AC();
    sub_25F3050DC();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_25F305CDC();
    v49 = v65;
    v50 = v47;
    if (v65(v25, 1, v28) != 1)
    {
      v56 = v28;
      v57 = v35;
      v58 = v49;
      do
      {
        v59 = v56;
        sub_25F23F614(v25, v32, &qword_27FD55BF8, &qword_25F30F450);
        if (_s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0())
        {
          sub_25F243BBC(v50, type metadata accessor for TimingRecord.Point);
          sub_25F240E98(v32, v50);
        }

        v60 = *v79;
        if (_s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0())
        {
          v61 = v57;
          v62 = v50;
          v63 = v82;
          sub_25F243BBC(v82, type metadata accessor for TimingRecord.Point);
          v64 = v63;
          v50 = v62;
          v57 = v61;
          sub_25F240E98(&v32[v60], v64);
        }

        sub_25F1AF698(v32, &qword_27FD55BF8, &qword_25F30F450);
        sub_25F305CDC();
        v56 = v59;
      }

      while (v58(v25, 1, v59) != 1);
    }

    (*(v73 + 8))(v81, v80);
    v51 = v50;
    v52 = v82;
    v53 = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0();
    result = sub_25F1AF698(v66, &qword_27FD55BF8, &qword_25F30F450);
    if ((v53 & 1) == 0)
    {
      v54 = v74;
      sub_25F243B54(v51, v74, type metadata accessor for TimingRecord.Point);
      v42 = (v75 + 48);
      sub_25F243B54(v52, v54 + *(v75 + 48), type metadata accessor for TimingRecord.Point);
      v43 = v76;
      sub_25F1B7174(v54, v76, &qword_27FD55C00, &qword_25F30F458);
      v55 = *v42;
      v45 = v77;
      sub_25F243B54(v43, v77, type metadata accessor for TimingRecord.Point);
      sub_25F243BBC(v43 + v55, type metadata accessor for TimingRecord.Point);
      sub_25F23F614(v54, v43, &qword_27FD55C00, &qword_25F30F458);
      v46 = v79;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

BOOL _s20PreviewsFoundationOS12TimingRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v6 = type metadata accessor for TimingRecord(0);
  if ((_s20PreviewsFoundationOS12TimingRecordV5PointV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
  if ((_s20PreviewsFoundationOS12TimingRecordV5PointV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(a1 + v6[7] + 40) != *(a2 + v6[7] + 40))
  {
    return 0;
  }

  v7 = v6[8];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 8);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = v6[9];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    return v16 && (*v13 == *v15 && v14 == v16 || (sub_25F30659C() & 1) != 0);
  }

  return !v16;
}

unint64_t sub_25F243B00()
{
  result = qword_27FD55C10;
  if (!qword_27FD55C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55C10);
  }

  return result;
}

uint64_t sub_25F243B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F243BBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F243C84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25F243CD0()
{
  result = qword_27FD55C30;
  if (!qword_27FD55C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55C30);
  }

  return result;
}

unint64_t sub_25F243D24()
{
  result = qword_27FD55C38;
  if (!qword_27FD55C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55C38);
  }

  return result;
}

void sub_25F243DA0(uint64_t a1)
{
  sub_25F243F28(319, &qword_27FD55C58, &type metadata for TimingRecord.ID);
  if (v1 <= 0x3F)
  {
    sub_25F243E94(319);
    if (v2 <= 0x3F)
    {
      sub_25F243F28(319, &qword_27FD55C70, MEMORY[0x277D84D38]);
      if (v3 <= 0x3F)
      {
        sub_25F243F28(319, &qword_27FD55C78, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25F243E94(uint64_t a1)
{
  if (!qword_27FD55C60)
  {
    type metadata accessor for TimingRecord.Point(255);
    sub_25F243C84(&qword_27FD55C68, type metadata accessor for TimingRecord.Point, &protocol conformance descriptor for TimingRecord.Point);
    v1 = sub_25F304DAC();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD55C60);
    }
  }
}

void sub_25F243F28(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25F305C1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25F243FAC(uint64_t a1)
{
  result = sub_25F30462C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TimingRecordCategory.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TimingRecordCategory.init(name:logsDuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *a5 = sub_25F305FFC();
  *(a5 + 8) = v7;
  v9 = 0;
  result = MEMORY[0x25F8D9530](&v9, 8);
  *(a5 + 40) = v9;
  *(a5 + 48) = a4;
  return result;
}

uint64_t sub_25F2440D0()
{
  *&xmmword_27FD55CA0 = "PreviewServiceNeedsUpdate";
  *(&xmmword_27FD55CA0 + 1) = 25;
  byte_27FD55CB0 = 2;
  qword_27FD55C90 = sub_25F305FFC();
  *algn_27FD55C98 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55CB8 = v2;
  byte_27FD55CC0 = 0;
  return result;
}

uint64_t static TimingRecordCategory.previewServiceNeedsUpdateEvent.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527B8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55C98;
  v3 = byte_27FD55CB0;
  v4 = qword_27FD55CB8;
  v5 = byte_27FD55CC0;
  *a1 = qword_27FD55C90;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55CA0;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F2441D4()
{
  *&xmmword_27FD55CD8 = "PreviewUpdateSession";
  *(&xmmword_27FD55CD8 + 1) = 20;
  byte_27FD55CE8 = 2;
  qword_27FD55CC8 = sub_25F305FFC();
  unk_27FD55CD0 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55CF0 = v2;
  byte_27FD55CF8 = 1;
  return result;
}

uint64_t static TimingRecordCategory.previewUpdateSession.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527C0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55CD0;
  v3 = byte_27FD55CE8;
  v4 = qword_27FD55CF0;
  v5 = byte_27FD55CF8;
  *a1 = qword_27FD55CC8;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55CD8;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F2442DC()
{
  *&xmmword_27FD55D10 = "MakeBuildGraph";
  *(&xmmword_27FD55D10 + 1) = 14;
  byte_27FD55D20 = 2;
  qword_27FD55D00 = sub_25F305FFC();
  *algn_27FD55D08 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55D28 = v2;
  byte_27FD55D30 = 1;
  return result;
}

uint64_t static TimingRecordCategory.makeBuildGraph.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527C8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55D08;
  v3 = byte_27FD55D20;
  v4 = qword_27FD55D28;
  v5 = byte_27FD55D30;
  *a1 = qword_27FD55D00;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55D10;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F2443E4()
{
  *&xmmword_27FD55D48 = "WorkspaceBuild";
  *(&xmmword_27FD55D48 + 1) = 14;
  byte_27FD55D58 = 2;
  qword_27FD55D38 = sub_25F305FFC();
  unk_27FD55D40 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55D60 = v2;
  byte_27FD55D68 = 1;
  return result;
}

uint64_t static TimingRecordCategory.workspaceBuild.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527D0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55D40;
  v3 = byte_27FD55D58;
  v4 = qword_27FD55D60;
  v5 = byte_27FD55D68;
  *a1 = qword_27FD55D38;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55D48;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F2444EC()
{
  *&xmmword_27FD55D80 = "ThunkBuild";
  *(&xmmword_27FD55D80 + 1) = 10;
  byte_27FD55D90 = 2;
  qword_27FD55D70 = sub_25F305FFC();
  *algn_27FD55D78 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55D98 = v2;
  byte_27FD55DA0 = 1;
  return result;
}

uint64_t static TimingRecordCategory.thunkBuild.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527D8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55D78;
  v3 = byte_27FD55D90;
  v4 = qword_27FD55D98;
  v5 = byte_27FD55DA0;
  *a1 = qword_27FD55D70;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55D80;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F2445F4()
{
  *&xmmword_27FD55DB8 = "ThunkLink";
  *(&xmmword_27FD55DB8 + 1) = 9;
  byte_27FD55DC8 = 2;
  qword_27FD55DA8 = sub_25F305FFC();
  unk_27FD55DB0 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55DD0 = v2;
  byte_27FD55DD8 = 1;
  return result;
}

uint64_t static TimingRecordCategory.thunkLink.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527E0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55DB0;
  v3 = byte_27FD55DC8;
  v4 = qword_27FD55DD0;
  v5 = byte_27FD55DD8;
  *a1 = qword_27FD55DA8;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55DB8;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F2446FC()
{
  *&xmmword_27FD55DF0 = "ThunkCodeSign";
  *(&xmmword_27FD55DF0 + 1) = 13;
  byte_27FD55E00 = 2;
  qword_27FD55DE0 = sub_25F305FFC();
  *algn_27FD55DE8 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55E08 = v2;
  byte_27FD55E10 = 1;
  return result;
}

uint64_t static TimingRecordCategory.thunkCodeSign.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527E8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55DE8;
  v3 = byte_27FD55E00;
  v4 = qword_27FD55E08;
  v5 = byte_27FD55E10;
  *a1 = qword_27FD55DE0;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55DF0;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F244804()
{
  *&xmmword_27FD55E28 = "ProductTransfer";
  *(&xmmword_27FD55E28 + 1) = 15;
  byte_27FD55E38 = 2;
  qword_27FD55E18 = sub_25F305FFC();
  unk_27FD55E20 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55E40 = v2;
  byte_27FD55E48 = 1;
  return result;
}

uint64_t static TimingRecordCategory.productTransfer.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527F0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55E20;
  v3 = byte_27FD55E38;
  v4 = qword_27FD55E40;
  v5 = byte_27FD55E48;
  *a1 = qword_27FD55E18;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55E28;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F24490C()
{
  *&xmmword_27FD55E60 = "SimulatorBoot";
  *(&xmmword_27FD55E60 + 1) = 13;
  byte_27FD55E70 = 2;
  qword_27FD55E50 = sub_25F305FFC();
  *algn_27FD55E58 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55E78 = v2;
  byte_27FD55E80 = 1;
  return result;
}

uint64_t static TimingRecordCategory.simBoot.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527F8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55E58;
  v3 = byte_27FD55E70;
  v4 = qword_27FD55E78;
  v5 = byte_27FD55E80;
  *a1 = qword_27FD55E50;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55E60;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F244A14()
{
  *&xmmword_27FD55E98 = "AllBuiltTargetDescriptions";
  *(&xmmword_27FD55E98 + 1) = 26;
  byte_27FD55EA8 = 2;
  qword_27FD55E88 = sub_25F305FFC();
  unk_27FD55E90 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55EB0 = v2;
  byte_27FD55EB8 = 1;
  return result;
}

uint64_t static TimingRecordCategory.allBuiltTargetDescriptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52800 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55E90;
  v3 = byte_27FD55EA8;
  v4 = qword_27FD55EB0;
  v5 = byte_27FD55EB8;
  *a1 = qword_27FD55E88;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55E98;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F244B1C()
{
  *&xmmword_27FD55ED0 = "IDEBuiltTargetDescriptionRequest";
  *(&xmmword_27FD55ED0 + 1) = 32;
  byte_27FD55EE0 = 2;
  qword_27FD55EC0 = sub_25F305FFC();
  *algn_27FD55EC8 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55EE8 = v2;
  byte_27FD55EF0 = 1;
  return result;
}

uint64_t static TimingRecordCategory.ideBuiltTargetDescriptionRequest.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52808 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55EC8;
  v3 = byte_27FD55EE0;
  v4 = qword_27FD55EE8;
  v5 = byte_27FD55EF0;
  *a1 = qword_27FD55EC0;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55ED0;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F244C24()
{
  *&xmmword_27FD55F08 = "ProcessBuiltTargetDescription";
  *(&xmmword_27FD55F08 + 1) = 29;
  byte_27FD55F18 = 2;
  qword_27FD55EF8 = sub_25F305FFC();
  unk_27FD55F00 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55F20 = v2;
  byte_27FD55F28 = 1;
  return result;
}

uint64_t static TimingRecordCategory.processBuiltTargetDescription.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52810 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55F00;
  v3 = byte_27FD55F18;
  v4 = qword_27FD55F20;
  v5 = byte_27FD55F28;
  *a1 = qword_27FD55EF8;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55F08;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F244D2C()
{
  *&xmmword_27FD55F40 = "AgentLaunch";
  *(&xmmword_27FD55F40 + 1) = 11;
  byte_27FD55F50 = 2;
  qword_27FD55F30 = sub_25F305FFC();
  *algn_27FD55F38 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55F58 = v2;
  byte_27FD55F60 = 1;
  return result;
}

uint64_t static TimingRecordCategory.agentLaunch.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52818 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55F38;
  v3 = byte_27FD55F50;
  v4 = qword_27FD55F58;
  v5 = byte_27FD55F60;
  *a1 = qword_27FD55F30;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55F40;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F244E34()
{
  *&xmmword_27FD55F78 = "LoadTargetDescriptions";
  *(&xmmword_27FD55F78 + 1) = 22;
  byte_27FD55F88 = 2;
  qword_27FD55F68 = sub_25F305FFC();
  unk_27FD55F70 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55F90 = v2;
  byte_27FD55F98 = 1;
  return result;
}

uint64_t static TimingRecordCategory.loadTargetDescriptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52820 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55F70;
  v3 = byte_27FD55F88;
  v4 = qword_27FD55F90;
  v5 = byte_27FD55F98;
  *a1 = qword_27FD55F68;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55F78;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F244F3C()
{
  *&xmmword_27FD55FB0 = "UpdateTargetDescriptions";
  *(&xmmword_27FD55FB0 + 1) = 24;
  byte_27FD55FC0 = 2;
  qword_27FD55FA0 = sub_25F305FFC();
  *algn_27FD55FA8 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD55FC8 = v2;
  byte_27FD55FD0 = 1;
  return result;
}

uint64_t static TimingRecordCategory.updateTargetDescriptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52828 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD55FA8;
  v3 = byte_27FD55FC0;
  v4 = qword_27FD55FC8;
  v5 = byte_27FD55FD0;
  *a1 = qword_27FD55FA0;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55FB0;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F245044()
{
  *&xmmword_27FD55FE8 = "InitialJITLink";
  *(&xmmword_27FD55FE8 + 1) = 14;
  byte_27FD55FF8 = 2;
  qword_27FD55FD8 = sub_25F305FFC();
  unk_27FD55FE0 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD56000 = v2;
  byte_27FD56008 = 1;
  return result;
}

uint64_t static TimingRecordCategory.initialJITLink.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52830 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD55FE0;
  v3 = byte_27FD55FF8;
  v4 = qword_27FD56000;
  v5 = byte_27FD56008;
  *a1 = qword_27FD55FD8;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD55FE8;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F24514C()
{
  *&xmmword_27FD56020 = "ApplyPendingUpdates";
  *(&xmmword_27FD56020 + 1) = 19;
  byte_27FD56030 = 2;
  qword_27FD56010 = sub_25F305FFC();
  *algn_27FD56018 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD56038 = v2;
  byte_27FD56040 = 1;
  return result;
}

uint64_t static TimingRecordCategory.applyPendingUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52838 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *algn_27FD56018;
  v3 = byte_27FD56030;
  v4 = qword_27FD56038;
  v5 = byte_27FD56040;
  *a1 = qword_27FD56010;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD56020;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_25F245254()
{
  *&xmmword_27FD56058 = "RunNewInitializers";
  *(&xmmword_27FD56058 + 1) = 18;
  byte_27FD56068 = 2;
  qword_27FD56048 = sub_25F305FFC();
  unk_27FD56050 = v0;
  v2 = 0;
  result = MEMORY[0x25F8D9530](&v2, 8);
  qword_27FD56070 = v2;
  byte_27FD56078 = 1;
  return result;
}

uint64_t static TimingRecordCategory.runNewInitializers.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD52840 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = unk_27FD56050;
  v3 = byte_27FD56068;
  v4 = qword_27FD56070;
  v5 = byte_27FD56078;
  *a1 = qword_27FD56048;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_27FD56058;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t TimingRecordCategory.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_25F30671C();
  MEMORY[0x25F8D8900](v1);
  return sub_25F30676C();
}

uint64_t sub_25F2453D0()
{
  v1 = *(v0 + 40);
  sub_25F30671C();
  MEMORY[0x25F8D8900](v1);
  return sub_25F30676C();
}

uint64_t sub_25F245444(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_25F30671C();
  MEMORY[0x25F8D8900](v2);
  return sub_25F30676C();
}

unint64_t sub_25F24548C()
{
  result = qword_27FD56080;
  if (!qword_27FD56080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56080);
  }

  return result;
}

uint64_t sub_25F245504(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F2D8AE0(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_25F30647C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E18, &qword_25F308468);
      v7 = sub_25F3052EC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25F247B30(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t TimingRecordKeeper.__allocating_init()()
{
  v0 = type metadata accessor for TimingRecordKeeper.State(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = swift_allocObject();
  *v2 = sub_25F1B6748(MEMORY[0x277D84F90]);
  _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56090, &unk_25F30F880);
  v4 = swift_allocObject();
  *(v4 + ((*(*v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_25F2483CC(v2, v4 + *(*v4 + *MEMORY[0x277D841D0] + 16), type metadata accessor for TimingRecordKeeper.State);
  *(v3 + 16) = v4;
  return v3;
}

uint64_t TimingRecordKeeper.init()()
{
  v1 = type metadata accessor for TimingRecordKeeper.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = sub_25F1B6748(MEMORY[0x277D84F90]);
  _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56090, &unk_25F30F880);
  v4 = swift_allocObject();
  *(v4 + ((*(*v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_25F2483CC(v3, v4 + *(*v4 + *MEMORY[0x277D841D0] + 16), type metadata accessor for TimingRecordKeeper.State);
  *(v0 + 16) = v4;
  return v0;
}

uint64_t type metadata accessor for TimingRecordKeeper.State(uint64_t a1)
{
  result = qword_27FD56098;
  if (!qword_27FD56098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F245960()
{
  v0 = type metadata accessor for TimingRecordKeeper.State(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TimingRecordKeeper();
  v3 = swift_allocObject();
  *v2 = sub_25F1B6748(MEMORY[0x277D84F90]);
  _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56090, &unk_25F30F880);
  v4 = swift_allocObject();
  *(v4 + ((*(*v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  result = sub_25F2483CC(v2, v4 + *(*v4 + *MEMORY[0x277D841D0] + 16), type metadata accessor for TimingRecordKeeper.State);
  *(v3 + 16) = v4;
  qword_27FD56088 = v3;
  return result;
}

uint64_t static TimingRecordKeeper.shared.getter()
{
  if (qword_27FD52848 != -1)
  {
    swift_once();
  }
}

uint64_t TimingRecordKeeper.log(parent:category:tag:details:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v77 = a6;
  v71 = a3;
  v72 = a5;
  v64 = a4;
  v68 = a7;
  v9 = sub_25F30472C();
  v67 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C00, &qword_25F30F458);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  v17 = type metadata accessor for TimingRecord.Point(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TimingRecord(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *a1;
  v69 = *(a1 + 8);
  v23 = *a2;
  v24 = *(a2 + 8);
  v25 = *(a2 + 16);
  v74 = *(a2 + 24);
  v75 = *(a2 + 32);
  v26 = *(a2 + 40);
  v62 = v23;
  v63 = v26;
  v27 = *(a2 + 48);
  _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
  v76 = v24;

  if (_s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0())
  {
    __break(1u);
  }

  else
  {
    v61 = v9;
    v73 = v27;
    sub_25F248434(v19, v16, type metadata accessor for TimingRecord.Point);
    sub_25F248434(v19, &v16[*(v11 + 48)], type metadata accessor for TimingRecord.Point);
    sub_25F1B7174(v16, v14, &qword_27FD55C00, &qword_25F30F458);
    v24 = v20;
    v28 = *(v11 + 48);
    v29 = &v22[v24[6]];
    v60 = v25;
    sub_25F2483CC(v14, v29, type metadata accessor for TimingRecord.Point);
    sub_25F243BBC(&v14[v28], type metadata accessor for TimingRecord.Point);
    sub_25F2482BC(v16, v14);
    v30 = *(v11 + 48);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
    v32 = v60;
    sub_25F2483CC(&v14[v30], v29 + *(v31 + 36), type metadata accessor for TimingRecord.Point);
    sub_25F243BBC(v14, type metadata accessor for TimingRecord.Point);
    v78[0] = 0;
    MEMORY[0x25F8D9530](v78, 8);
    *v22 = v78[0];
    *(v22 + 1) = 0;
    v22[16] = 1;
    v33 = &v22[v24[8]];
    v34 = &v22[v24[9]];
    v78[0] = 0;
    MEMORY[0x25F8D9530](v78, 8);
    sub_25F243BBC(v19, type metadata accessor for TimingRecord.Point);
    v35 = v70;
    *v22 = v78[0];
    *(v22 + 1) = v35;
    v22[16] = v69;
    v36 = &v22[v24[7]];
    v9 = v62;
    *v36 = v62;
    v37 = v77;
    *(v36 + 1) = v76;
    *(v36 + 2) = v32;
    *(v36 + 3) = v74;
    v36[32] = v75;
    *(v36 + 5) = v63;
    v36[48] = v73;
    *v33 = v71;
    LOBYTE(v24) = v64;
    v33[8] = v64 & 1;
    *v34 = v72;
    v34[1] = v37;
    v38 = *(v65 + 16);
    MEMORY[0x28223BE20](v37);
    *(&v59 - 2) = v39;
    *(&v59 - 1) = v22;
    v40 = *(*v38 + *MEMORY[0x277D841D0] + 16);
    v41 = (*(*v38 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v38 + v41));
    sub_25F24832C((v38 + v40));
    os_unfair_lock_unlock((v38 + v41));
    v14 = *v22;
    sub_25F243BBC(v22, type metadata accessor for TimingRecord);
    if (qword_27FD52928 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v42 = sub_25F30479C();
  __swift_project_value_buffer(v42, qword_27FD571D8);
  v43 = v76;

  v44 = v77;

  v45 = sub_25F30477C();
  v46 = sub_25F3059EC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v78[0] = v48;
    *v47 = 136447234;
    *(v47 + 4) = sub_25F1C53AC(v9, v43, v78);
    *(v47 + 12) = 2050;
    *(v47 + 14) = v14;
    *(v47 + 22) = 2050;
    v49 = v70;
    if (v69)
    {
      v49 = 0;
    }

    *(v47 + 24) = v49;
    *(v47 + 32) = 2050;
    v50 = v71;
    if (v24)
    {
      v50 = 0;
    }

    *(v47 + 34) = v50;
    *(v47 + 42) = 2080;
    v51 = v44 == 0;
    v52 = v44;
    if (v44)
    {
      v53 = v72;
    }

    else
    {
      v53 = 0;
    }

    if (v51)
    {
      v54 = 0xE000000000000000;
    }

    else
    {
      v54 = v52;
    }

    v55 = sub_25F1C53AC(v53, v54, v78);

    *(v47 + 44) = v55;
    _os_log_impl(&dword_25F1A2000, v45, v46, "%{public}s,%{public}llx,start,%{public}llx,%{public}llu,%s", v47, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v48, -1, -1);
    MEMORY[0x25F8D9510](v47, -1, -1);
  }

  v56 = v61;
  if (v73)
  {
    sub_25F305AFC();
  }

  else
  {
    sub_25F305B0C();
  }

  if (qword_27FD528A0 != -1)
  {
    swift_once();
  }

  v57 = v66;
  sub_25F30471C();
  sub_25F30470C();
  result = (*(v67 + 8))(v57, v56);
  *v68 = v14;
  return result;
}

void TimingRecordKeeper.insert(record:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_25F248A60((v5 + v6));
  os_unfair_lock_unlock((v5 + v7));
  *a2 = *a1;
}

uint64_t sub_25F2462C8(char *a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for TimingRecord(0);
  sub_25F246330(a3 + *(v5 + 24));
  sub_25F2464C8(a3);

  return sub_25F248708(a1);
}

uint64_t sub_25F246330(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TimingRecord.Point(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F248434(a1, v6, type metadata accessor for TimingRecord.Point);
  sub_25F30458C();
  v8 = v7;
  v9 = v7;
  result = sub_25F243BBC(v6, type metadata accessor for TimingRecord.Point);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v11 = *v2;
  if (*(*v2 + 16) && (v12 = sub_25F21940C(v8 >> 6), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {
    type metadata accessor for TimingRecordBucket();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D84F90];
    *(v14 + 16) = sub_25F1B6850(MEMORY[0x277D84F90]);
    *(v14 + 24) = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_25F210E00(v14, v8 >> 6, isUniquelyReferenced_nonNull_native);
    *v2 = v18;
  }

  return v14;
}

uint64_t sub_25F2464C8(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TimingRecord(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_beginAccess();
  v9 = *(v1 + 16);
  if (!*(v9 + 16) || (v10 = sub_25F21FC78(v8), (v11 & 1) == 0))
  {
    swift_endAccess();
    v15 = *a1;
    swift_beginAccess();
    v16 = *(*(v2 + 24) + 16);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_25F210F4C(v16, v15, isUniquelyReferenced_nonNull_native);
    *(v2 + 16) = v23;
    swift_endAccess();
    sub_25F248434(a1, v7, type metadata accessor for TimingRecord);
    swift_beginAccess();
    v18 = *(v2 + 24);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 24) = v18;
    if ((v19 & 1) == 0)
    {
      v18 = sub_25F2F096C(0, v18[2] + 1, 1, v18);
      *(v2 + 24) = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_25F2F096C((v20 > 1), v21 + 1, 1, v18);
    }

    v18[2] = v21 + 1;
    sub_25F2483CC(v7, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, type metadata accessor for TimingRecord);
    *(v2 + 24) = v18;
    return swift_endAccess();
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  swift_endAccess();
  swift_beginAccess();
  v13 = *(v2 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v13;
  if (result)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_25F1E10C4(v13);
  v13 = result;
  *(v2 + 24) = result;
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v12 < v13[2])
  {
    sub_25F2489F8(a1, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12);
    *(v2 + 24) = v13;
    return swift_endAccess();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t TimingRecordKeeper.markCompleted(id:)(uint64_t *a1)
{
  v3 = sub_25F30472C();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TimingRecord.Point(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v74 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v70 - v8;
  v9 = type metadata accessor for TimingRecord(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v81 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v77 = &v70 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v76 = &v70 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v75 = &v70 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v70 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C18, &unk_25F30F460);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = (&v70 - v25);
  v27 = *a1;
  v28 = *(v1 + 16);
  v82 = v1;
  v83 = v27;
  v72 = v27;
  v29 = *(*v28 + *MEMORY[0x277D841D0] + 16);
  v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v28 + v30));
  sub_25F248348((v28 + v29), v26);
  v31 = (v28 + v30);
  v32 = v9;
  os_unfair_lock_unlock(v31);
  sub_25F1B7174(v26, v24, &qword_27FD55C18, &unk_25F30F460);
  if ((*(v10 + 48))(v24, 1, v9) == 1)
  {
    sub_25F248364(v26);
    v33 = v24;
  }

  else
  {
    v71 = v26;
    sub_25F2483CC(v24, v20, type metadata accessor for TimingRecord);
    v34 = &v20[*(v9 + 24)];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
    v36 = v73;
    sub_25F248434(v34 + *(v35 + 36), v73, type metadata accessor for TimingRecord.Point);
    sub_25F30458C();
    v38 = v37;
    v39 = sub_25F30462C();
    v40 = *(*(v39 - 8) + 8);
    v40(v36, v39);
    v41 = v74;
    sub_25F248434(v34, v74, type metadata accessor for TimingRecord.Point);
    sub_25F30458C();
    v43 = v42;
    v40(v41, v39);
    if (qword_27FD52928 != -1)
    {
      swift_once();
    }

    v44 = sub_25F30479C();
    __swift_project_value_buffer(v44, qword_27FD571D8);
    v45 = v75;
    sub_25F248434(v20, v75, type metadata accessor for TimingRecord);
    v46 = v76;
    sub_25F248434(v20, v76, type metadata accessor for TimingRecord);
    v47 = v77;
    sub_25F248434(v20, v77, type metadata accessor for TimingRecord);
    v48 = v81;
    sub_25F248434(v20, v81, type metadata accessor for TimingRecord);
    v49 = sub_25F30477C();
    v50 = sub_25F3059EC();
    if (os_log_type_enabled(v49, v50))
    {
      v74 = v20;
      v51 = v38 - v43;
      v52 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v84[0] = v73;
      *v52 = 136447490;
      v53 = (v45 + v32[7]);
      v54 = v45;
      v55 = *v53;
      v56 = v53[1];

      sub_25F243BBC(v54, type metadata accessor for TimingRecord);
      v57 = sub_25F1C53AC(v55, v56, v84);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2050;
      *(v52 + 14) = v72;
      *(v52 + 22) = 2050;
      v58 = v47;
      if (*(v46 + 16))
      {
        v59 = 0;
      }

      else
      {
        v59 = *(v46 + 8);
      }

      sub_25F243BBC(v46, type metadata accessor for TimingRecord);
      *(v52 + 24) = v59;
      v60 = v81;
      *(v52 + 32) = 2050;
      v61 = v58 + v32[8];
      if (*(v61 + 8))
      {
        v62 = 0;
      }

      else
      {
        v62 = *v61;
      }

      sub_25F243BBC(v58, type metadata accessor for TimingRecord);
      *(v52 + 34) = v62;
      *(v52 + 42) = 2048;
      *(v52 + 44) = v51;
      *(v52 + 52) = 2080;
      v63 = (v60 + v32[9]);
      if (v63[1])
      {
        v64 = *v63;
        v65 = v63[1];
      }

      else
      {
        v64 = 0;
        v65 = 0xE000000000000000;
      }

      sub_25F243BBC(v60, type metadata accessor for TimingRecord);
      v66 = sub_25F1C53AC(v64, v65, v84);

      *(v52 + 54) = v66;
      _os_log_impl(&dword_25F1A2000, v49, v50, "%{public}s,%{public}llx,end,%{public}llx,%{public}llu,%fs,%s", v52, 0x3Eu);
      v67 = v73;
      swift_arrayDestroy();
      MEMORY[0x25F8D9510](v67, -1, -1);
      MEMORY[0x25F8D9510](v52, -1, -1);

      v20 = v74;
    }

    else
    {
      sub_25F243BBC(v47, type metadata accessor for TimingRecord);
      sub_25F243BBC(v46, type metadata accessor for TimingRecord);

      sub_25F243BBC(v48, type metadata accessor for TimingRecord);
      sub_25F243BBC(v45, type metadata accessor for TimingRecord);
    }

    sub_25F305AEC();
    if (qword_27FD528A0 != -1)
    {
      swift_once();
    }

    v68 = v78;
    sub_25F30471C();
    sub_25F30470C();
    (*(v79 + 8))(v68, v80);
    sub_25F243BBC(v20, type metadata accessor for TimingRecord);
    v33 = v71;
  }

  return sub_25F248364(v33);
}

uint64_t sub_25F246F98@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v5 = type metadata accessor for TimingRecord.Point(0);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for TimingRecord(0);
  v7 = *(v32 - 8);
  result = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v33 = a1;
  v11 = *a1;
  v12 = *a1 + 64;
  v13 = 1 << *(*a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(*a1 + 64);
  v16 = (v13 + 63) >> 6;
  while (1)
  {
    if (!v15)
    {
      while (1)
      {
        v17 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v17 >= v16)
        {
          v29 = 1;
          v28 = v34;
          goto LABEL_16;
        }

        v15 = *(v12 + 8 * v17);
        ++v10;
        if (v15)
        {
          v10 = v17;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_10:
    v18 = *(*(v11 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v15)))));
    swift_beginAccess();
    v19 = *(v18 + 16);
    if (*(v19 + 16))
    {
      v20 = sub_25F21FC78(a2);
      if (v21)
      {
        break;
      }
    }

    v15 &= v15 - 1;
    result = swift_endAccess();
  }

  v22 = *(*(v19 + 56) + 8 * v20);
  swift_endAccess();
  result = swift_beginAccess();
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = *(v18 + 24);
  v24 = v34;
  if (v22 >= *(v23 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v25 = v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22;
  v26 = v30;
  sub_25F248434(v25, v30, type metadata accessor for TimingRecord);
  sub_25F2483CC(v26, v24, type metadata accessor for TimingRecord);

  v27 = v31;
  _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
  TimingRecord.updateEndTime(_:)(v27);
  sub_25F243BBC(v27, type metadata accessor for TimingRecord.Point);
  sub_25F2464C8(v24);

  v28 = v24;
  v29 = 0;
LABEL_16:
  (*(v7 + 56))(v28, v29, 1, v32);
  return sub_25F248708(v33);
}

void TimingRecordKeeper.record(withID:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 16);
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_25F247354((v5 + v6), v4, a2);

  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_25F247354@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v30 = type metadata accessor for TimingRecord(0);
  v5 = *(v30 - 8);
  result = MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *a1;
  v10 = *a1 + 64;
  v11 = 1 << *(*a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(*a1 + 64);
  v14 = (v11 + 63) >> 6;
  while (1)
  {
    if (!v13)
    {
      while (1)
      {
        v15 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v15 >= v14)
        {
          v27 = 1;
          v26 = v29;
          return (*(v5 + 56))(v26, v27, 1, v30);
        }

        v13 = *(v10 + 8 * v15);
        ++v8;
        if (v13)
        {
          v8 = v15;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_10:
    v16 = *(*(v9 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v13)))));
    swift_beginAccess();
    v17 = *(v16 + 16);
    if (*(v17 + 16))
    {
      v18 = sub_25F21FC78(a2);
      if (v19)
      {
        break;
      }
    }

    v13 &= v13 - 1;
    result = swift_endAccess();
  }

  v20 = *(*(v17 + 56) + 8 * v18);
  swift_endAccess();
  result = swift_beginAccess();
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = *(v16 + 24);
  if (v20 >= *(v21 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v22 = v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20;
  v23 = v28;
  sub_25F248434(v22, v28, type metadata accessor for TimingRecord);
  v24 = v23;
  v25 = v29;
  sub_25F2483CC(v24, v29, type metadata accessor for TimingRecord);
  v26 = v25;
  v27 = 0;
  return (*(v5 + 56))(v26, v27, 1, v30);
}

void *TimingRecordKeeper.gatherRecords()()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v26 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v26));
  v27 = v1;
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_25F1BAAF0(*(v3 + 16), 0);
  v6 = sub_25F1BED00(&v28, v5 + 4, v4, v3);
  v7 = v28;

  sub_25F1BF034(v7);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  v28 = v5;
  sub_25F245504(&v28);
  v8 = v28;
  v9 = v28[2];
  if (!v9)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_24:

    os_unfair_lock_unlock((v27 + v26));
    return v12;
  }

  v10 = 0;
  v11 = v28 + 5;
  v12 = MEMORY[0x277D84F90];
  while (v10 < *(v8 + 16))
  {
    v13 = *v11;
    swift_beginAccess();
    v14 = *(v13 + 24);
    v15 = *(v14 + 16);
    v16 = v12[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_26;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v19 = v12[3] >> 1, v19 >= v17))
    {
      if (*(v14 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v20 = v16 + v15;
      }

      else
      {
        v20 = v16;
      }

      v12 = sub_25F2F096C(isUniquelyReferenced_nonNull_native, v20, 1, v12);
      v19 = v12[3] >> 1;
      if (*(v14 + 16))
      {
LABEL_19:
        v21 = v19 - v12[2];
        type metadata accessor for TimingRecord(0);
        if (v21 < v15)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v22 = v12[2];
          v23 = __OFADD__(v22, v15);
          v24 = v22 + v15;
          if (v23)
          {
            goto LABEL_29;
          }

          v12[2] = v24;
        }

        goto LABEL_8;
      }
    }

    if (v15)
    {
      goto LABEL_27;
    }

LABEL_8:
    ++v10;

    v11 += 2;
    if (v9 == v10)
    {
      goto LABEL_24;
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

  __break(1u);
  return result;
}

Swift::Void __swiftcall TimingRecordKeeper.pruneNow()()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_25F24849C((v1 + v2));

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t TimingRecordKeeper.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25F247968()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  return sub_25F30676C();
}

uint64_t sub_25F2479DC(uint64_t a1)
{
  v2 = *v1;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v2);
  return sub_25F30676C();
}

uint64_t sub_25F247A70()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_25F247AB0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_25F247AF8(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_25F247B30(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25F2D89A0(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_25F2480B8((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25F2D89B4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_25F2D89B4((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
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
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_25F2480B8((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_25F2480B8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_25F2482BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C00, &qword_25F30F458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F248364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C18, &unk_25F30F460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F2483CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F248434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_25F248560(uint64_t a1)
{
  sub_25F2485E4(319);
  if (v1 <= 0x3F)
  {
    sub_25F30462C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F2485E4(uint64_t a1)
{
  if (!qword_27FD560A8)
  {
    type metadata accessor for TimingRecordBucket();
    sub_25F248650();
    v1 = sub_25F304B4C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD560A8);
    }
  }
}

unint64_t sub_25F248650()
{
  result = qword_27FD560B0;
  if (!qword_27FD560B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD560B0);
  }

  return result;
}

unint64_t sub_25F2486B4()
{
  result = qword_27FD560B8;
  if (!qword_27FD560B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD560B8);
  }

  return result;
}

uint64_t sub_25F248708(char *a1)
{
  v2 = type metadata accessor for TimingRecord.Point(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F30462C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v31 - v10;
  v12 = *(type metadata accessor for TimingRecordKeeper.State(0) + 20);
  sub_25F3045EC();
  v13 = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0();
  v14 = *(v6 + 8);
  result = v14(v11, v5);
  if ((v13 & 1) == 0)
  {
    return result;
  }

  _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
  (*(v6 + 40))(&a1[v12], v11, v5);
  sub_25F30457C();
  v34 = a1;
  v16 = *a1;
  v17 = *(*a1 + 16);
  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = sub_25F1BAA60(*(*a1 + 16), 0);
  v19 = sub_25F1BEC00(v35, v18 + 4, v17, v16);
  v32 = v35[0];
  v33 = v19;
  v31[0] = v35[4];
  v31[1] = v35[3];

  sub_25F1BF034(v32);
  if (v33 != v17)
  {
    __break(1u);
LABEL_5:
    v18 = MEMORY[0x277D84F90];
  }

  v33 = v18;
  v20 = v18[2];
  if (v20)
  {
    v21 = v33 + 4;
    do
    {
      v23 = *v21++;
      v22 = v23;
      sub_25F30457C();
      v24 = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0();
      v14(v4, v5);
      if (v24)
      {
        v25 = sub_25F21940C(v22);
        if (v26)
        {
          v27 = v25;
          v28 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = *v28;
          v35[0] = *v28;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_25F21EAEC();
            v30 = v35[0];
          }

          sub_25F1BB8C0(v27, v30);
          *v28 = v30;
        }
      }

      --v20;
    }

    while (v20);
  }

  return v14(v9, v5);
}

uint64_t sub_25F2489F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimingRecord(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t WeakArray.init()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for Weak(0, a1, a3, a4);
  result = sub_25F3052DC();
  *a2 = result;
  return result;
}

uint64_t WeakArray.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v9 = type metadata accessor for Weak(0, a2, a3, a4);
  v11 = sub_25F2E3888(sub_25F24928C, v13, a3, v9, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], v10);
  result = (*(*(a3 - 1) + 8))(a1, a3);
  *a5 = v11;
  return result;
}

uint64_t WeakArray.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = a1;
  v5 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  result = WeakArray.init<A>(_:)(&v8, a2, v5, WitnessTable, &v9);
  *a3 = v9;
  return result;
}

uint64_t WeakArray.array.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Weak(255, *(a1 + 16), a3, a4);
  sub_25F30539C();

  swift_getWitnessTable();
  v4 = sub_25F30511C();

  return v4;
}

uint64_t WeakArray.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Weak(0, *(a1 + 16), a3, a4);

  return sub_25F30531C();
}

Swift::Int __swiftcall WeakArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall WeakArray.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t WeakArray.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Weak(0, *(a2 + 16), a3, a4);
  sub_25F3053DC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_25F248DA0(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = type metadata accessor for WeakArray(0, *(a3 + a4 - 8), a3, a4);
  v6 = swift_unknownObjectRetain();
  return WeakArray.subscript.setter(v6, v4, v5, v7);
}

uint64_t WeakArray.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Weak(0, *(a3 + 16), a3, a4);
  v8 = sub_25F2E8318(a1);
  sub_25F30539C();
  sub_25F3052CC();
  v9 = *v4;
  sub_25F24933C(a2, *v4, v7);
  swift_unknownObjectRelease();
  *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = v8;
}

uint64_t (*WeakArray.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  a1[2] = a3;
  a1[3] = v4;
  a1[1] = a2;
  *a1 = WeakArray.subscript.getter(a2, a3, a3, a4);
  return sub_25F248F08;
}

uint64_t sub_25F248F08(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = a1[1];
  if ((a2 & 1) == 0)
  {
    return WeakArray.subscript.setter(*a1, v5, v4, a4);
  }

  v6 = swift_unknownObjectRetain();
  WeakArray.subscript.setter(v6, v5, v4, v7);

  return swift_unknownObjectRelease();
}

uint64_t WeakArray.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Weak(0, *(a2 + 16), a3, a4);
  sub_25F2E8318(a1);
  sub_25F30539C();
  return sub_25F30533C();
}

uint64_t sub_25F249008@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = WeakArray.endIndex.getter(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t (*sub_25F249030(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v8 = v6;
  *a1 = v6;
  v9 = sub_25F249104(v6, *a2, a3, v7);
  v8[4] = v10;
  v8[5] = v9;
  return sub_25F2490BC;
}

void sub_25F2490BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t (*sub_25F249104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  *a1 = *v4;
  a1[1] = WeakArray.subscript.getter(a2, a3, a3, a4);
  return sub_25F24915C;
}

uint64_t sub_25F249164(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_25F2491DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F249230(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_25F2B6F1C(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_25F24928C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *(v4 + 16);
  v7 = *a1;
  type metadata accessor for Weak(0, v6, a3, a4);
  result = sub_25F2E8318(v7);
  *a2 = result;
  return result;
}

uint64_t sub_25F2492E0@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_25F24933C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_25F2493AC()
{
  result = qword_27FD560D0;
  if (!qword_27FD560D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD560D0);
  }

  return result;
}

uint64_t sub_25F249500(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD560C8, &qword_25F30FA10);
    sub_25F2493AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F249578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static MergeOperation.perform<A>(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = QueryManager.allValues<A>(for:)(a1, a4, a6);
  v8 = *(a5 + 24);
  swift_getAssociatedTypeWitness();
  v9 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v8(&v12, v9, WitnessTable, a3, a5);
}

uint64_t static ConcatenationMerge.perform<A>(values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F30607C();
  MEMORY[0x28223BE20](v10);
  (*(v7 + 16))(v9, a1, a3);
  swift_getAssociatedTypeWitness();
  v12[1] = sub_25F3052DC();
  sub_25F30539C();
  swift_getWitnessTable();
  sub_25F30606C();
  swift_getWitnessTable();
  return sub_25F3053CC();
}

uint64_t sub_25F249944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = static ConcatenationMerge.perform<A>(values:)(a1, *(a4 + 16), a2, *(a4 + 24), a3);
  *a5 = result;
  return result;
}

uint64_t static UnionMerge.perform<A>(values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F305E4C();
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  sub_25F30519C();
  return (*(v10 + 8))(v12, a2);
}

uint64_t sub_25F249AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = *(v7 + 16);
  v11(v14 - v12);
  (v11)(v10, a2, a3);
  return sub_25F305E2C();
}

void *static OrderedUnionMerge.perform<A>(values:)@<X0>(uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  sub_25F30519C();
  v7 = v15[0];
  if (v15[0] < 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13 = sub_25F3052DC();
    return OrderedSet.init(arrayLiteral:)(v13, AssociatedTypeWitness, a5, a6);
  }

  else
  {
    v8 = swift_getAssociatedTypeWitness();
    OrderedSet.init()(v15);
    type metadata accessor for OrderedSet(0, v8, a5, v9);
    OrderedSet.reserveCapacity(_:)(v7);
    MEMORY[0x28223BE20](v10);
    return sub_25F30518C();
  }
}

uint64_t sub_25F249D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for OrderedSet(0, AssociatedTypeWitness, a7, v12);
  return OrderedSet.append<A>(contentsOf:)(a2, v13, a3, a5);
}

uint64_t static KeyValueMerge.perform<A>(values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getTupleTypeMetadata2();
  v9 = sub_25F3052DC();
  sub_25F1CCBBC(v9, a2, a3, a5);

  sub_25F304B4C();
  sub_25F30518C();
  return v11;
}

uint64_t sub_25F249F24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_25F304B4C();

  return sub_25F304AFC();
}

uint64_t sub_25F249FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  result = static KeyValueMerge.perform<A>(values:)(a1, a4[2], a4[3], a2, a4[4], a3);
  *a5 = result;
  return result;
}

uint64_t static SumMerge.perform<A>(values:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v15[0] = a6;
  v15[1] = a1;
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_25F30661C();
  sub_25F30656C();
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  sub_25F30519C();
  return (*(v10 + 8))(v12, a2);
}

uint64_t sub_25F24A254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = static LogicalOrMerge.perform<A>(values:)(a1, a2, a3);
  *a4 = result & 1;
  return result;
}

uint64_t static FutureMerge.perform<A>(values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v14 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ValueCombiner.swift";
  *(&v14 + 1) = 125;
  v15 = 2;
  v16 = xmmword_25F30FC80;
  v17 = "perform(values:)";
  v18 = 16;
  v19 = 2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Sequence.invert<A>(callsite:andAccumulateErrors:)(&v14, 0, a3, AssociatedTypeWitness, a5);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  sub_25F30539C();
  v11 = swift_getAssociatedTypeWitness();
  v14 = 0uLL;
  v12 = sub_25F286460("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ValueCombiner.swift", 125, 2, 136, 25, "perform(values:)", 16, 2, &v14, sub_25F24A654, v10, v11);

  sub_25F2033DC(v14);
  return v12;
}

uint64_t sub_25F24A464(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *a1;
  v6 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  return v6(&v10, v7, WitnessTable, a2, a4);
}

uint64_t sub_25F24A524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = static FutureMerge.perform<A>(values:)(a1, *(a4 + 16), a2, *(a4 + 24), a3);
  *a5 = result;
  return result;
}

uint64_t sub_25F24A578@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_25F3050EC();
  if (__OFADD__(v3, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + result;
  }

  return result;
}

uint64_t AnyComparable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyComparableBoxImpl(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  v12 = sub_25F24A8C8(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v12;
  return result;
}

uint64_t sub_25F24A8C8(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 112) - 8) + 32))(v2 + *(*v2 + 128), a1);
  return v2;
}

unint64_t sub_25F24AA3C()
{
  result = qword_27FD56568[0];
  if (!qword_27FD56568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD56568);
  }

  return result;
}

uint64_t sub_25F24ACB8(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_25F24ADF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnyComparableBoxImpl(0, *(*v4 + 112), *(*v4 + 120), a4);
  result = swift_dynamicCastClass();
  if (result)
  {

    v6 = sub_25F304CCC();

    return v6 & 1;
  }

  return result;
}

uint64_t sub_25F24AEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnyComparableBoxImpl(0, *(*v4 + 112), *(*v4 + 120), a4);
  result = swift_dynamicCastClass();
  if (result)
  {

    v6 = sub_25F304DCC();

    return v6 & 1;
  }

  return result;
}

uint64_t sub_25F24AFE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 112);
  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, v1 + v2, v3);
}

uint64_t sub_25F24B0D4()
{
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 128));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_25F24B184()
{
  result = qword_27FD565F0[0];
  if (!qword_27FD565F0[0])
  {
    type metadata accessor for AnyComparableBox();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD565F0);
  }

  return result;
}

uint64_t GeneratingSequence.init(from:advancingBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25F305C1C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for GeneratingSequence(0, a4, v11, v12);
  v14 = (a5 + *(result + 28));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t sub_25F24B294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for GeneratingSequence.Iterator.State(255, a2, a4, a5);
  v9 = sub_25F305C1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18[-v11];
  v19 = a2;
  v13 = sub_25F305C1C();
  sub_25F20977C(sub_25F24C260, v18, MEMORY[0x277D84A98], v8, v14, v12);
  (*(*(v13 - 8) + 8))(a1, v13);
  v15 = *(v8 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v8) != 1)
  {
    return (*(v15 + 32))(a3, v12, v8);
  }

  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  result = (v16)(v12, 1, v8);
  if (result != 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_25F24B4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25F305C1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  (*(v11 + 16))(&v20 - v12, a1, v10);
  sub_25F24B294(v13, a4, a5, v14, v15);
  (*(v11 + 8))(a1, v10);
  result = type metadata accessor for GeneratingSequence.Iterator(0, a4, v16, v17);
  v19 = (a5 + *(result + 28));
  *v19 = a2;
  v19[1] = a3;
  return result;
}

uint64_t GeneratingSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_25F305C1C();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  (*(v9 + 16))(&v14 - v7, v2);
  v10 = (v2 + *(a1 + 28));
  v11 = *v10;
  v12 = v10[1];

  return sub_25F24B4C8(v8, v11, v12, v5, a2);
}

uint64_t sub_25F24B6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  GeneratingSequence.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t GeneratingSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_25F305C1C();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v12 = type metadata accessor for GeneratingSequence.Iterator.State(0, v6, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  (*(v13 + 16))(&v24 - v17, v3, v12);
  v19 = *(v6 - 8);
  if ((*(v19 + 48))(v18, 1, v6) == 1)
  {
    (*(v13 + 8))(v18, v12);
    v20 = 1;
  }

  else
  {
    (*(v19 + 32))(a2, v18, v6);
    (*(v3 + *(a1 + 28)))(a2);
    sub_25F24B294(v9, v6, v16, v21, v22);
    (*(v13 + 40))(v3, v16, v12);
    v20 = 0;
  }

  return (*(v19 + 56))(a2, v20, 1, v6);
}

unint64_t sub_25F24B9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = (a4)(319, *(a1 + 16), a3);
  if (v5 <= 0x3F)
  {
    result = sub_25F1D67AC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F24BA80(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_25F24BBF0(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
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

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v22 = a2 & 0x7FFFFFFF;
      v22[1] = 0;
    }

    else
    {
      *v22 = a2 - 1;
    }
  }

  else if (v7 >= a2)
  {
    v23 = *(v5 + 56);

    v23();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t sub_25F24BE58(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_25F24BEB4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_25F24C034(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_25F24C260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t StructuredStringConvertible.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84F90];
  (*(a2 + 16))(&v4, a1);
  v2 = Array<A>.builtDescription.getter(v4);

  return v2;
}

uint64_t Array<A>.builtDescription.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_beginAccess();
  if (v2)
  {
    v4 = 0;
    v25 = a1 + 48;
    v26 = a1 + 32;
    v29 = 1;
    v30 = 0;
    v27 = v2;
LABEL_3:
    v28 = v4;
LABEL_4:
    v5 = (v25 + 24 * v4);
    v6 = v4;
    while (1)
    {
      if (v6 >= v2)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        return result;
      }

      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_64;
      }

      v11 = *(v5 - 2);
      v10 = *(v5 - 1);
      v12 = *v5;
      if (!(v29 & 1 | (v28 != v6)))
      {
        sub_25F24CB7C(*(v5 - 2), *(v5 - 1), *v5);
        result = sub_25F24CB94(v11, v10, v12);
        v29 = 0;
        if (v4 != v2)
        {
          goto LABEL_4;
        }

        goto LABEL_62;
      }

      if (v4 >= v2)
      {
        v15 = 0;
        v14 = 0;
        v16 = 254;
      }

      else
      {
        if (v4 < 0)
        {
          goto LABEL_65;
        }

        v13 = v26 + 24 * v4;
        v15 = *v13;
        v14 = *(v13 + 8);
        v16 = *(v13 + 16);
        sub_25F24CB7C(*v13, v14, *(v13 + 16));
      }

      v17 = v12 >> 6;
      if (v12 >> 6 <= 1)
      {
        if (!v17)
        {
          sub_25F24CB7C(v11, v10, v12);
          sub_25F24CBAC(v15, v14, v16);
          sub_25F24CB7C(v11, v10, v12);
          v20._countAndFlagsBits = sub_25F30507C();
          v21 = String.prefixingEachLine(with:startingOnLine:)(v20, 0);

          swift_beginAccess();
          MEMORY[0x25F8D7130](v21._countAndFlagsBits, v21._object);
          swift_endAccess();

          sub_25F24CB94(v11, v10, v12);
          result = sub_25F24CB94(v11, v10, v12);
          goto LABEL_7;
        }

        if (v16 <= 0xFD)
        {
          if (v16 >= 0xC0 && v15 == 2 && !v14 && v16 == 192)
          {
            sub_25F24CB7C(v11, v10, v12);
            sub_25F24CBAC(2, 0, 0xC0u);
            if (v12)
            {
LABEL_61:
              result = sub_25F24CB94(v11, v10, v12);
              v29 = 0;
              v2 = v27;
              if (v4 != v27)
              {
                goto LABEL_3;
              }

              goto LABEL_62;
            }
          }

          else
          {
            sub_25F24CB7C(v11, v10, v12);
            sub_25F24CBAC(v15, v14, v16);
          }
        }

        else
        {
          sub_25F24CB7C(v11, v10, v12);
        }

        sub_25F24CB7C(v11, v10, v12);
        MEMORY[0x25F8D7130](31520, 0xE200000000000000);
        v7._countAndFlagsBits = sub_25F30507C();
        v8 = String.prefixingEachLine(with:startingOnLine:)(v7, 0);

        swift_beginAccess();
        MEMORY[0x25F8D7130](v8._countAndFlagsBits, v8._object);
        swift_endAccess();

        sub_25F24CB94(v11, v10, v12);

        v9 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      }

      if (v17 == 2)
      {
        if (v16 <= 0xFD)
        {
          if (v16 >= 0xC0 && v15 == 3 && !v14 && v16 == 192)
          {
            sub_25F24CB7C(v11, v10, v12);
            sub_25F24CBAC(3, 0, 0xC0u);
            if (v12)
            {
              goto LABEL_61;
            }
          }

          else
          {
            sub_25F24CB7C(v11, v10, v12);
            sub_25F24CBAC(v15, v14, v16);
          }
        }

        else
        {
          sub_25F24CB7C(v11, v10, v12);
        }

        sub_25F24CB7C(v11, v10, v12);
        MEMORY[0x25F8D7130](23328, 0xE200000000000000);
        v18._countAndFlagsBits = sub_25F30507C();
        v19 = String.prefixingEachLine(with:startingOnLine:)(v18, 0);

        swift_beginAccess();
        MEMORY[0x25F8D7130](v19._countAndFlagsBits, v19._object);
        swift_endAccess();

        sub_25F24CB94(v11, v10, v12);

        v9 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_66;
        }

        goto LABEL_6;
      }

      if (!(v10 | v11) && v12 == 192)
      {
        break;
      }

      if (v11 == 1 && !v10 && v12 == 192)
      {
        sub_25F24CB7C(1, 0, 0xC0u);
        result = sub_25F24CBAC(v15, v14, v16);
        v9 = v30 - 1;
        if (__OFSUB__(v30, 1))
        {
          goto LABEL_69;
        }

        goto LABEL_6;
      }

      if (v11 == 2 && !v10 && v12 == 192)
      {
        sub_25F24CB7C(2, 0, 0xC0u);
        result = sub_25F24CBAC(v15, v14, v16);
        v22 = v30 - 1;
        if (__OFSUB__(v30, 1))
        {
          goto LABEL_71;
        }
      }

      else
      {
        sub_25F24CB7C(3, 0, 0xC0u);
        result = sub_25F24CBAC(v15, v14, v16);
        v22 = v30 - 1;
        if (__OFSUB__(v30, 1))
        {
          goto LABEL_70;
        }
      }

      v23._countAndFlagsBits = sub_25F30507C();
      v24 = String.prefixingEachLine(with:startingOnLine:)(v23, 0);

      swift_beginAccess();
      MEMORY[0x25F8D7130](v24._countAndFlagsBits, v24._object);
      swift_endAccess();

      v30 = v22;
LABEL_7:
      v2 = v27;
      ++v6;
      v5 += 24;
      if (v4 == v27)
      {
        goto LABEL_62;
      }
    }

    sub_25F24CB7C(0, 0, 0xC0u);
    result = sub_25F24CBAC(v15, v14, v16);
    v9 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_68;
    }

LABEL_6:
    v30 = v9;
    goto LABEL_7;
  }

LABEL_62:
  swift_beginAccess();
  return 0;
}

uint64_t sub_25F24CB7C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_25F24CB94(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_25F24CBAC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_25F24CB94(a1, a2, a3);
  }

  return a1;
}

uint64_t Array<A>.describe<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))(v3, a2);
}

{
  v4 = v3;
  v5 = sub_25F3064DC();
  v7 = v6;
  v8 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F2EFA04(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_25F2EFA04((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 24 * v11;
  *(v12 + 32) = v5;
  *(v12 + 40) = v7;
  *(v12 + 48) = 0;
  *v4 = v8;
  return result;
}

double Array<A>.withMap(_:skipEmpty:handler:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t *))
{
  v5 = v4;
  v10 = *v4;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_25F2EFA04(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_25F2EFA04((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[24 * v12];
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  v13[48] = a3 & 1 | 0x40;
  *v4 = v10;
  a4(v4);
  v14 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_25F2EFA04(0, *(v14 + 16) + 1, 1, v14);
  }

  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_25F2EFA04((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 16) = v16 + 1;
  v17 = v14 + 24 * v16;
  *&result = 2;
  *(v17 + 32) = xmmword_25F3101A0;
  *(v17 + 48) = -64;
  *v5 = v14;
  return result;
}

double Array<A>.withCollection(_:skipEmpty:handler:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t *))
{
  v5 = v4;
  v10 = *v4;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_25F2EFA04(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_25F2EFA04((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[24 * v12];
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  v13[48] = a3 & 1 | 0x80;
  *v4 = v10;
  a4(v4);
  v14 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_25F2EFA04(0, *(v14 + 16) + 1, 1, v14);
  }

  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_25F2EFA04((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 16) = v16 + 1;
  v17 = v14 + 24 * v16;
  *&result = 3;
  *(v17 + 32) = xmmword_25F3101B0;
  *(v17 + 48) = -64;
  *v5 = v14;
  return result;
}

uint64_t Array<A>.print<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_25F305C1C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = *(a4 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a3, v9);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    return (*(v10 + 8))(v13, v9);
  }

  (*(v14 + 32))(v16, v13, a4);
  v28 = a1;
  v29 = a2;

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  v18 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v18);

  v19 = v28;
  v20 = v29;
  v21 = v27;
  v22 = *v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_25F2EFA04(0, *(v22 + 2) + 1, 1, v22);
  }

  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_25F2EFA04((v23 > 1), v24 + 1, 1, v22);
  }

  result = (*(v14 + 8))(v16, a4);
  *(v22 + 2) = v24 + 1;
  v25 = &v22[24 * v24];
  *(v25 + 4) = v19;
  *(v25 + 5) = v20;
  v25[48] = 0;
  *v21 = v22;
  return result;
}

{
  v6 = v5;
  v27 = a5;
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a3, v11);
  if ((*(v16 + 48))(v15, 1, a4) == 1)
  {
    return (*(v12 + 8))(v15, v11);
  }

  (*(v16 + 32))(v18, v15, a4);
  v28 = a1;
  v29 = a2;

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  v20 = v28;
  v21 = v29;
  v22 = *v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_25F2EFA04(0, *(v22 + 2) + 1, 1, v22);
  }

  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_25F2EFA04((v23 > 1), v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v25 = &v22[24 * v24];
  *(v25 + 4) = v20;
  *(v25 + 5) = v21;
  v25[48] = 0;
  *v6 = v22;
  (*(v27 + 16))(v6, a4);
  return (*(v16 + 8))(v18, a4);
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS32StructuredDescriptionBuildActionO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25F24D4F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25F24D54C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_25F24D5B0(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t static ActorTunnel.create()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F3054AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = sub_25F3054DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  nullsub_2();
  sub_25F1AF2E0(v7);
  sub_25F30547C();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 32))(a1, v11, v8);
}

uint64_t ActorTunnel.send(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v2);
  sub_25F3054DC();
  return sub_25F3054BC();
}

Swift::Void __swiftcall ActorTunnel.invalidate()()
{
  sub_25F3054DC();

  sub_25F3054CC();
}

uint64_t sub_25F24D8A0(uint64_t a1)
{
  result = sub_25F3054DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F24D978(uint64_t a1)
{
  v8[3] = &type metadata for InvalidAuditTokenDeserialization;
  v8[0] = a1;
  __swift_project_boxed_opaque_existential_1(v8, &type metadata for InvalidAuditTokenDeserialization);
  swift_getDynamicType();

  v2 = sub_25F30685C();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(v8);
  v8[0] = v2;
  v8[1] = v4;
  sub_25F305FAC();

  v5 = MEMORY[0x25F8D7420](a1, MEMORY[0x277D84CC0]);
  MEMORY[0x25F8D7130](v5);

  MEMORY[0x25F8D7130](0xD000000000000027, 0x800000025F3181D0);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);

  sub_25F1BF118();
  v6 = sub_25F305D2C();

  return v6;
}

uint64_t sub_25F24DB00(uint64_t a1, uint64_t a2)
{
  v11 = &type metadata for InvalidUUID;
  v9 = a1;
  v10 = a2;
  __swift_project_boxed_opaque_existential_1(&v9, &type metadata for InvalidUUID);
  swift_getDynamicType();

  v4 = sub_25F30685C();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(&v9);
  v9 = v4;
  v10 = v6;
  sub_25F305FAC();

  MEMORY[0x25F8D7130](a1, a2);
  MEMORY[0x25F8D7130](0xD000000000000015, 0x800000025F318100);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);

  sub_25F1BF118();
  v7 = sub_25F305D2C();

  return v7;
}

_OWORD *sub_25F24DC78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_25F1B707C(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_25F210778(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_25F1AF698(a1, &qword_27FD53DF8, &unk_25F30A470);
    v7 = sub_25F2192AC(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_25F21DD68();
        v11 = v13;
      }

      sub_25F1B707C((*(v11 + 56) + 32 * v9), v14);
      sub_25F1BAD28(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_25F1AF698(v14, &qword_27FD53DF8, &unk_25F30A470);
  }

  return result;
}

uint64_t sub_25F24DD7C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25F1B707C(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_25F2109F8(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_25F1BF670(a2);
    *v2 = v6;
  }

  else
  {
    sub_25F1AF698(a1, &qword_27FD53DF8, &unk_25F30A470);
    sub_25F1E4A70(a2, v7);
    sub_25F1BF670(a2);
    return sub_25F1AF698(v7, &qword_27FD53DF8, &unk_25F30A470);
  }

  return result;
}

uint64_t sub_25F24DE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_25F1B707C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_25F211070(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_25F1AF698(a1, &qword_27FD53DF8, &unk_25F30A470);
    sub_25F21052C(a2, a3, v9);

    return sub_25F1AF698(v9, &qword_27FD53DF8, &unk_25F30A470);
  }

  return result;
}

uint64_t sub_25F24DF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{

  v6 = sub_25F3063BC();

  if (!v6)
  {
    v7 = 0;
    goto LABEL_5;
  }

  if (v6 == 1)
  {
    v7 = 1;
LABEL_5:

    *a3 = v7;
    return result;
  }

  sub_25F202604();
  swift_allocError();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56860, &qword_25F310B88);
  *v10 = &type metadata for HumanReadableErrorSeverity;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 24) = v11;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 112) = 3;
  return swift_willThrow();
}

uint64_t PropertyListRepresentable<>.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v24 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v22 - v8;
  v23 = sub_25F305C1C();
  v10 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v12 = &v22 - v11;
  v13 = *(v7 + 16);
  v25 = a1;
  v14 = a1;
  v15 = v13;
  v13(v9, v14, AssociatedTypeWitness);
  sub_25F3051FC();
  v16 = *(a2 - 8);
  if ((*(v16 + 48))(v12, 1, a2) == 1)
  {
    (*(v10 + 8))(v12, v23);
    sub_25F202604();
    swift_allocError();
    v18 = v17;
    *(v17 + 24) = swift_getMetatypeMetadata();
    *v18 = a2;
    *(v18 + 56) = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 32));
    v20 = v25;
    v15(boxed_opaque_existential_1, v25, AssociatedTypeWitness);
    *(v18 + 112) = 3;
    swift_willThrow();
    return (*(v7 + 8))(v20, AssociatedTypeWitness);
  }

  else
  {
    (*(v7 + 8))(v25, AssociatedTypeWitness);
    return (*(v16 + 32))(v24, v12, a2);
  }
}

uint64_t PropertyListRepresentable.propertyList.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  (*(a2 + 24))(a1, a2);
  (*(v7 + 16))(v10, v12, AssociatedTypeWitness);
  v13 = swift_dynamicCast();
  if (v13)
  {
    *a3 = v15[1];
  }

  else
  {
    MEMORY[0x28223BE20](v13);
    v15[-4] = a1;
    v15[-3] = a2;
    v15[-2] = v12;
    sub_25F251FC4(sub_25F251FB8, a3);
  }

  return (*(v7 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_25F24E4A4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];

  v6 = sub_25F3063BC();

  if (!v6)
  {
    v7 = 0;
    goto LABEL_5;
  }

  if (v6 == 1)
  {
    v7 = 1;
LABEL_5:

    *a2 = v7;
    return result;
  }

  sub_25F202604();
  swift_allocError();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54978, &unk_25F310BC0);
  *v10 = v2;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 24) = v11;
  *(v10 + 32) = v4;
  *(v10 + 40) = v5;
  *(v10 + 112) = 3;
  return swift_willThrow();
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F>(_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v85 = a8;
  v95 = a6;
  v109 = a5;
  v92 = a4;
  v108 = a3;
  v104 = a2;
  v91 = a1;
  v96 = a17;
  v90 = a15;
  v111 = a11;
  v102 = a9;
  v97 = a13;
  v99 = a12;
  v107 = sub_25F305C1C();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v98 = &v82 - v19;
  v94 = a10;
  v20 = sub_25F305C1C();
  v101 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v93 = &v82 - v21;
  v22 = sub_25F305C1C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v84 = &v82 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v110 = *(TupleTypeMetadata2 - 8);
  v25 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v100 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v82 - v27;
  v29 = swift_getTupleTypeMetadata2();
  v106 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v88 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v82 - v32;
  v34 = a7;
  v35 = swift_getTupleTypeMetadata2();
  v103 = *(v35 - 8);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v82 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v82 - v39;
  v83 = *(v34 - 8);
  (*(v83 + 16))(&v82 - v39, v91, v34);
  (*(v23 + 16))(&v40[*(v35 + 48)], v104, v22);
  v87 = *(v102 - 8);
  (*(v87 + 16))(v33, v108);
  v108 = v29;
  v41 = *(v29 + 48);
  v42 = *(v101 + 16);
  v104 = v33;
  v43 = v92;
  v92 = v20;
  v42(&v33[v41], v43, v20);
  v91 = *(v111 - 8);
  (*(v91 + 16))(v28, v109);
  v44 = *(TupleTypeMetadata2 + 48);
  v45 = *(v105 + 16);
  v109 = v28;
  v45(&v28[v44], v95, v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3081F0;
  v47 = *(v97 + 8);
  v86 = v34;
  *(inited + 32) = v47(v34);
  v89 = inited + 32;
  *(inited + 40) = v48;
  v49 = *(v103 + 16);
  v95 = v40;
  v50 = v40;
  v51 = v84;
  v49(v38, v50, v35);
  v97 = v35;
  v52 = *(v35 + 48);
  v53 = v85;
  v54 = v38;
  (*(v23 + 32))(v51, &v38[v52], v22);
  v55 = *(v53 - 8);
  if ((*(v55 + 48))(v51, 1, v53) == 1)
  {
    (*(v83 + 8))(v54, v86);
    (*(v23 + 8))(v51, v22);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v56 = *(a14 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v56(v53, a14);
    (*(v55 + 8))(v51, v53);
    (*(v83 + 8))(v54, v86);
  }

  v57 = v104;
  v58 = v102;
  *(inited + 88) = (*(v90 + 8))(v102);
  *(inited + 96) = v59;
  v60 = v88;
  v61 = v108;
  (*(v106 + 16))(v88, v57, v108);
  v62 = v101;
  v63 = v93;
  v64 = v92;
  (*(v101 + 32))(v93, &v60[*(v61 + 48)], v92);
  v65 = v94;
  v66 = *(v94 - 8);
  v67 = (*(v66 + 48))(v63, 1, v94);
  v68 = v99;
  v69 = TupleTypeMetadata2;
  if (v67 == 1)
  {
    (*(v87 + 8))(v60, v58);
    (*(v62 + 8))(v63, v64);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v101 = *(a16 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    (v101)(v65, a16);
    (*(v66 + 8))(v63, v65);
    v69 = TupleTypeMetadata2;
    (*(v87 + 8))(v60, v58);
  }

  v70 = v111;
  v71 = v100;
  v72 = v109;
  *(inited + 144) = (*(v96 + 8))(v111);
  *(inited + 152) = v73;
  (*(v110 + 16))(v71, v72, v69);
  v74 = v105;
  v75 = v98;
  v76 = v107;
  (*(v105 + 32))(v98, &v71[*(v69 + 48)], v107);
  v77 = *(v68 - 8);
  if ((*(v77 + 48))(v75, 1, v68) == 1)
  {
    (*(v91 + 8))(v71, v70);
    (*(v74 + 8))(v75, v76);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v78 = *(a18 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v78(v68, a18);
    (*(v77 + 8))(v75, v68);
    (*(v91 + 8))(v100, v70);
  }

  v79 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v80 = sub_25F252D8C(v79);

  (*(v110 + 8))(v109, v69);
  (*(v106 + 8))(v104, v108);
  (*(v103 + 8))(v95, v97);
  return v80;
}

void *PropertyList.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1();
  result = sub_25F252514(v3, &v5);
  *a2 = v5;
  return result;
}

uint64_t PropertyList.unarchiveValue<A>(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (*(v9 + 16))
  {
    v14 = sub_25F219234(v12, v13);
    v16 = v15;

    if (v16)
    {
      sub_25F1B7118(*(v9 + 56) + 32 * v14, v20);
      sub_25F1B707C(v20, v21);
      *&v20[0] = v9;
      sub_25F253DB0(v21, a1, a2, a3, a4);
      return __swift_destroy_boxed_opaque_existential_1(v21);
    }
  }

  else
  {
  }

  sub_25F202604();
  swift_allocError();
  v19 = v18;
  *v18 = v9;
  sub_25F1BF03C(a1, (v18 + 1));
  *(v19 + 112) = 0;
  swift_willThrow();
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T>(_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, char *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v270 = a8;
  v325 = a7;
  v268 = a6;
  v321 = a5;
  v263 = a4;
  v320 = a3;
  v318 = a2;
  v258 = a1;
  v275 = a45;
  v271 = a43;
  v356 = a39;
  v360 = a37;
  v359 = a35;
  v340 = a33;
  v357 = a31;
  v339 = a29;
  v358 = a27;
  v338 = a25;
  v336 = a23;
  v259 = a22;
  v337 = a21;
  v288 = a41;
  v282 = a20;
  v267 = a19;
  v283 = a18;
  v266 = a17;
  v279 = a16;
  v265 = a15;
  v276 = a14;
  v264 = a13;
  v273 = a12;
  v262 = a11;
  v261 = a10;
  v260 = a9;
  v296 = a40;
  v355 = sub_25F305C1C();
  v335 = *(v355 - 8);
  MEMORY[0x28223BE20](v355);
  v294 = a38;
  v295 = &v251 - v60;
  v333 = sub_25F305C1C();
  v332 = *(v333 - 8);
  MEMORY[0x28223BE20](v333);
  v292 = a36;
  v293 = &v251 - v61;
  v323 = sub_25F305C1C();
  v322 = *(v323 - 8);
  MEMORY[0x28223BE20](v323);
  v290 = a34;
  v291 = &v251 - v62;
  v63 = sub_25F305C1C();
  v314 = *(v63 - 8);
  v315 = v63;
  MEMORY[0x28223BE20](v63);
  v286 = a32;
  v287 = &v251 - v64;
  v65 = sub_25F305C1C();
  v312 = *(v65 - 8);
  v313 = v65;
  MEMORY[0x28223BE20](v65);
  v284 = a30;
  v285 = &v251 - v66;
  v67 = sub_25F305C1C();
  v310 = *(v67 - 8);
  v311 = v67;
  MEMORY[0x28223BE20](v67);
  v280 = &v251 - v68;
  v281 = a28;
  v69 = sub_25F305C1C();
  v308 = *(v69 - 8);
  v309 = v69;
  MEMORY[0x28223BE20](v69);
  v277 = &v251 - v70;
  v278 = a26;
  v71 = sub_25F305C1C();
  v306 = *(v71 - 8);
  v307 = v71;
  MEMORY[0x28223BE20](v71);
  v272 = &v251 - v72;
  v274 = a24;
  v73 = sub_25F305C1C();
  v304 = *(v73 - 8);
  v305 = v73;
  MEMORY[0x28223BE20](v73);
  v269 = &v251 - v74;
  v75 = sub_25F305C1C();
  v253 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v257 = &v251 - v76;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v334 = *(TupleTypeMetadata2 - 8);
  v77 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v303 = &v251 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v353 = &v251 - v79;
  v352 = swift_getTupleTypeMetadata2();
  v331 = *(v352 - 8);
  v80 = MEMORY[0x28223BE20](v352);
  v289 = &v251 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v351 = &v251 - v82;
  v350 = swift_getTupleTypeMetadata2();
  v330 = *(v350 - 8);
  v83 = MEMORY[0x28223BE20](v350);
  v302 = &v251 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v349 = &v251 - v85;
  v348 = swift_getTupleTypeMetadata2();
  v329 = *(v348 - 8);
  v86 = MEMORY[0x28223BE20](v348);
  v301 = &v251 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v347 = &v251 - v88;
  v346 = swift_getTupleTypeMetadata2();
  v328 = *(v346 - 8);
  v89 = MEMORY[0x28223BE20](v346);
  v300 = &v251 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v89);
  v345 = &v251 - v91;
  v344 = swift_getTupleTypeMetadata2();
  v327 = *(v344 - 8);
  v92 = MEMORY[0x28223BE20](v344);
  v299 = &v251 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92);
  v343 = &v251 - v94;
  v342 = swift_getTupleTypeMetadata2();
  v326 = *(v342 - 8);
  v95 = MEMORY[0x28223BE20](v342);
  v298 = &v251 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95);
  v98 = &v251 - v97;
  v341 = swift_getTupleTypeMetadata2();
  v324 = *(v341 - 8);
  v99 = MEMORY[0x28223BE20](v341);
  v297 = &v251 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  v102 = &v251 - v101;
  v103 = v336;
  v104 = swift_getTupleTypeMetadata2();
  v319 = *(v104 - 8);
  v105 = MEMORY[0x28223BE20](v104);
  v256 = &v251 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v105);
  v108 = &v251 - v107;
  v109 = v337;
  v110 = swift_getTupleTypeMetadata2();
  v317 = v110;
  v316 = *(v110 - 8);
  v111 = MEMORY[0x28223BE20](v110);
  v252 = &v251 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v111);
  v114 = &v251 - v113;
  v254 = *(v109 - 8);
  (*(v254 + 16))(&v251 - v113, v258, v109);
  v115 = v253;
  (*(v253 + 16))(&v114[*(v110 + 48)], v318, v75);
  v255 = *(v103 - 8);
  (*(v255 + 16))(v108, v320, v103);
  v320 = v104;
  v116 = *(v104 + 48);
  v117 = *(v304 + 16);
  v318 = v108;
  v117(&v108[v116], v263, v305);
  v258 = *(v338 - 8);
  (*(v258 + 16))(v102, v321);
  v118 = *(v341 + 48);
  v119 = *(v306 + 16);
  v321 = v102;
  v119(&v102[v118], v268, v307);
  v263 = *(v358 - 8);
  (*(v263 + 16))(v98, v325);
  v120 = *(v342 + 48);
  v121 = *(v308 + 16);
  v325 = v98;
  v121(&v98[v120], v270, v309);
  v268 = *(v339 - 8);
  v122 = v343;
  (*(v268 + 16))(v343, v260);
  (*(v310 + 16))(&v122[*(v344 + 48)], v261, v311);
  v270 = *(v357 - 8);
  v123 = v345;
  (*(v270 + 16))(v345, v262);
  (*(v312 + 16))(&v123[*(v346 + 48)], v273, v313);
  v273 = *(v340 - 8);
  v124 = v347;
  (*(v273 + 16))(v347, v264);
  (*(v314 + 16))(&v124[*(v348 + 48)], v276, v315);
  v276 = *(v359 - 1);
  v125 = v349;
  (*(v276 + 16))(v349, v265);
  (*(v322 + 16))(&v125[*(v350 + 48)], v279, v323);
  v279 = *(v360 - 1);
  v126 = v351;
  (*(v279 + 16))(v351, v266);
  (*(v332 + 16))(&v126[*(v352 + 48)], v283, v333);
  v283 = *(v356 - 8);
  v127 = v353;
  (*(v283 + 16))(v353, v267);
  (*(v335 + 16))(&v127[*(TupleTypeMetadata2 + 48)], v282, v355);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F30BAB0;
  *(inited + 32) = (*(v288 + 1))(v337);
  v282 = inited + 32;
  *(inited + 40) = v129;
  v130 = *(v316 + 16);
  v131 = v252;
  v288 = v114;
  v132 = v114;
  v133 = v257;
  v134 = v317;
  v130(v252, v132, v317);
  v135 = *(v134 + 48);
  v136 = v131;
  (*(v115 + 32))(v133, &v131[v135], v75);
  v137 = *(v259 - 8);
  v138 = v259;
  if ((*(v137 + 48))(v133, 1) == 1)
  {
    (*(v254 + 8))(v136, v337);
    (*(v115 + 8))(v133, v75);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v139 = *(a42 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v139(v138, a42);
    (*(v137 + 8))(v133, v138);
    (*(v254 + 8))(v136, v337);
  }

  v337 = a47;
  v140 = v318;
  v141 = v336;
  *(inited + 88) = (*(v271 + 8))(v336);
  *(inited + 96) = v142;
  v143 = v256;
  v144 = v140;
  v145 = v320;
  (*(v319 + 16))(v256, v144, v320);
  v147 = v304;
  v146 = v305;
  v148 = v269;
  (*(v304 + 32))(v269, &v143[*(v145 + 48)], v305);
  v149 = v274;
  v150 = *(v274 - 8);
  if ((*(v150 + 48))(v148, 1, v274) == 1)
  {
    (*(v255 + 8))(v143, v141);
    (*(v147 + 8))(v148, v146);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v151 = *(a44 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v151(v149, a44);
    (*(v150 + 8))(v148, v149);
    (*(v255 + 8))(v143, v336);
  }

  v152 = v272;
  v154 = v306;
  v153 = v307;
  v336 = a49;
  v155 = v321;
  v156 = v338;
  *(inited + 144) = (*(v275 + 8))(v338);
  *(inited + 152) = v157;
  v158 = v297;
  v159 = v155;
  v160 = v341;
  (*(v324 + 16))(v297, v159, v341);
  (*(v154 + 32))(v152, &v158[*(v160 + 48)], v153);
  v161 = v278;
  v162 = *(v278 - 8);
  if ((*(v162 + 48))(v152, 1, v278) == 1)
  {
    (*(v258 + 8))(v158, v156);
    (*(v154 + 8))(v152, v153);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v163 = *(a46 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v163(v161, a46);
    (*(v162 + 8))(v152, v161);
    (*(v258 + 8))(v297, v156);
  }

  v164 = v277;
  v165 = v298;
  v166 = v358;
  v338 = a51;
  v167 = v325;
  *(inited + 200) = (*(v337 + 8))(v358);
  *(inited + 208) = v168;
  v169 = v167;
  v170 = v342;
  (*(v326 + 16))(v165, v169, v342);
  v172 = v308;
  v171 = v309;
  (*(v308 + 32))(v164, &v165[*(v170 + 48)], v309);
  v173 = v281;
  v174 = *(v281 - 8);
  if ((*(v174 + 48))(v164, 1, v281) == 1)
  {
    (*(v263 + 8))(v165, v166);
    (*(v172 + 8))(v164, v171);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v175 = *(a48 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v175(v173, a48);
    (*(v174 + 8))(v164, v173);
    (*(v263 + 8))(v298, v358);
  }

  v176 = v339;
  v178 = v310;
  v177 = v311;
  v179 = v299;
  v339 = a53;
  v180 = v343;
  *(inited + 256) = (*(v336 + 8))(v176);
  *(inited + 264) = v181;
  v182 = v180;
  v183 = v344;
  (*(v327 + 16))(v179, v182, v344);
  v184 = v280;
  (*(v178 + 32))(v280, &v179[*(v183 + 48)], v177);
  v185 = v284;
  v186 = *(v284 - 8);
  if ((*(v186 + 48))(v184, 1, v284) == 1)
  {
    (*(v268 + 8))(v179, v176);
    (*(v178 + 8))(v184, v177);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v187 = *(a50 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    v187(v185, a50);
    (*(v186 + 8))(v184, v185);
    (*(v268 + 8))(v299, v176);
  }

  v188 = v285;
  v189 = v300;
  v190 = v357;
  v358 = a55;
  v191 = v345;
  *(inited + 312) = (*(v338 + 8))(v357);
  *(inited + 320) = v192;
  v193 = v191;
  v194 = v346;
  (*(v328 + 16))(v189, v193, v346);
  v196 = v312;
  v195 = v313;
  (*(v312 + 32))(v188, &v189[*(v194 + 48)], v313);
  v197 = v286;
  v198 = *(v286 - 8);
  if ((*(v198 + 48))(v188, 1, v286) == 1)
  {
    (*(v270 + 8))(v189, v190);
    (*(v196 + 8))(v188, v195);
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  else
  {
    v199 = *(a52 + 24);
    *(inited + 352) = swift_getAssociatedTypeWitness();
    *(inited + 360) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 328));
    v199(v197, a52);
    (*(v198 + 8))(v188, v197);
    (*(v270 + 8))(v300, v357);
  }

  v200 = v340;
  v201 = v290;
  v202 = v315;
  v357 = a57;
  v203 = v347;
  *(inited + 368) = (*(v339 + 8))(v340);
  *(inited + 376) = v204;
  v205 = v301;
  v206 = v203;
  v207 = v348;
  (*(v329 + 16))(v301, v206, v348);
  v208 = v314;
  v209 = &v205[*(v207 + 48)];
  v210 = v287;
  (*(v314 + 32))(v287, v209, v202);
  v211 = *(v201 - 8);
  if ((*(v211 + 48))(v210, 1, v201) == 1)
  {
    (*(v273 + 8))(v205, v200);
    (*(v208 + 8))(v210, v202);
    *(inited + 416) = 0;
    *(inited + 384) = 0u;
    *(inited + 400) = 0u;
  }

  else
  {
    v212 = *(a54 + 24);
    *(inited + 408) = swift_getAssociatedTypeWitness();
    *(inited + 416) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 384));
    v212(v201, a54);
    (*(v211 + 8))(v210, v201);
    (*(v273 + 8))(v301, v200);
  }

  v213 = v359;
  v214 = v323;
  v215 = v322;
  v340 = a59;
  v216 = v349;
  *(inited + 424) = (*(v358 + 8))(v359);
  *(inited + 432) = v217;
  v218 = v302;
  v219 = v216;
  v220 = v350;
  (*(v330 + 16))(v302, v219, v350);
  v221 = v291;
  (*(v215 + 32))(v291, &v218[*(v220 + 48)], v214);
  v222 = v292;
  v223 = *(v292 - 8);
  if ((*(v223 + 48))(v221, 1, v292) == 1)
  {
    (*(v276 + 8))(v218, v213);
    (*(v215 + 8))(v221, v214);
    *(inited + 472) = 0;
    *(inited + 440) = 0u;
    *(inited + 456) = 0u;
  }

  else
  {
    v224 = *(a56 + 24);
    *(inited + 464) = swift_getAssociatedTypeWitness();
    *(inited + 472) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 440));
    v224(v222, a56);
    (*(v223 + 8))(v221, v222);
    (*(v276 + 8))(v302, v359);
  }

  v225 = v332;
  v226 = v351;
  v227 = v360;
  *(inited + 480) = (*(v357 + 8))(v360);
  *(inited + 488) = v228;
  v229 = v289;
  v230 = v226;
  v231 = v352;
  (*(v331 + 16))(v289, v230, v352);
  v232 = v293;
  v233 = v333;
  (*(v225 + 32))(v293, &v229[*(v231 + 48)], v333);
  v234 = v294;
  v235 = *(v294 - 8);
  if ((*(v235 + 48))(v232, 1, v294) == 1)
  {
    (*(v279 + 8))(v229, v227);
    (*(v225 + 8))(v232, v233);
    *(inited + 528) = 0;
    *(inited + 496) = 0u;
    *(inited + 512) = 0u;
  }

  else
  {
    v359 = *(a58 + 24);
    *(inited + 520) = swift_getAssociatedTypeWitness();
    *(inited + 528) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 496));
    (v359)(v234, a58);
    (*(v235 + 8))(v232, v234);
    (*(v279 + 8))(v229, v360);
  }

  v236 = v356;
  v237 = v355;
  v238 = v353;
  *(inited + 536) = (*(v340 + 8))(v356);
  *(inited + 544) = v239;
  v240 = v303;
  v241 = v238;
  v242 = TupleTypeMetadata2;
  (*(v334 + 16))(v303, v241, TupleTypeMetadata2);
  v243 = v335;
  v244 = &v240[*(v242 + 48)];
  v245 = v295;
  (*(v335 + 32))(v295, v244, v237);
  v246 = v296;
  v247 = *(v296 - 8);
  if ((*(v247 + 48))(v245, 1, v296) == 1)
  {
    (*(v283 + 8))(v240, v236);
    (*(v243 + 8))(v245, v237);
    *(inited + 584) = 0;
    *(inited + 552) = 0u;
    *(inited + 568) = 0u;
  }

  else
  {
    v360 = *(a60 + 24);
    *(inited + 576) = swift_getAssociatedTypeWitness();
    *(inited + 584) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 552));
    (v360)(v246, a60);
    (*(v247 + 8))(v245, v246);
    (*(v283 + 8))(v303, v236);
  }

  v248 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v249 = sub_25F252D8C(v248);

  (*(v334 + 8))(v353, TupleTypeMetadata2);
  (*(v331 + 8))(v351, v352);
  (*(v330 + 8))(v349, v350);
  (*(v329 + 8))(v347, v348);
  (*(v328 + 8))(v345, v346);
  (*(v327 + 8))(v343, v344);
  (*(v326 + 8))(v325, v342);
  (*(v324 + 8))(v321, v341);
  (*(v319 + 8))(v318, v320);
  (*(v316 + 8))(v288, v317);
  return v249;
}