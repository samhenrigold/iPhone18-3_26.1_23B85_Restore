uint64_t ColumnSlice.eraseToAnyColumn()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = *v2;
  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  v6 = *(v2 + 4);
  a2[3] = a1;
  a2[4] = &off_282CAA478;
  v7 = swift_allocObject();
  *a2 = v7;
  *(v7 + 16) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v6;
}

void (*sub_21B2901AC(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = ColumnSlice.name.modify(v4, a2);
  return sub_21B28A810;
}

Swift::Int sub_21B290224@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ColumnSlice.index(before:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int __swiftcall ColumnSlice.index(before:)(Swift::Int before)
{
  v2 = v1;

  type metadata accessor for Column(255, *(v2 + 16), v3, v4);
  swift_getWitnessTable();
  sub_21B34BB44();
  swift_getWitnessTable();
  sub_21B34BB54();

  return v6;
}

Swift::Int sub_21B290334(Swift::Int *a1)
{
  result = ColumnSlice.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_21B290360@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = ColumnSlice.startIndex.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21B2903A0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = ColumnSlice.endIndex.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21B2903E0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v6 = *(v2 + 2);
  v5 = *(v2 + 3);
  v7 = *(v2 + 4);
  v13 = *v2;
  v14 = v6;
  v15 = v5;
  v16 = v7;

  type metadata accessor for Column(255, *(a1 + 16), v8, v9);
  swift_getWitnessTable();
  v10 = sub_21B34BB44();
  a2(&v12, v10);

  return v12;
}

void (*sub_21B290498(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B290520(v6, *a2, a3);
  return sub_21B285370;
}

void (*sub_21B290520(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = sub_21B34B474();
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  ColumnSlice.subscript.getter(a2, a3);
  return sub_21B2854A4;
}

double ColumnSlice.subscript.getter@<D0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  type metadata accessor for Column(255, *(a3 + 16), v6, v7);
  swift_getWitnessTable();
  sub_21B34BB44();
  swift_getWitnessTable();
  sub_21B34BB84();

  *a4 = v9;
  *(a4 + 16) = v10;
  result = *&v11;
  *(a4 + 24) = v11;
  return result;
}

void *sub_21B290710()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

uint64_t ColumnSlice.count.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Column(255, *(a1 + 16), a3, a4);

  swift_getWitnessTable();
  sub_21B34BB44();
  swift_getWitnessTable();
  v4 = sub_21B34B264();

  return v4;
}

Swift::Int sub_21B290854@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ColumnSlice.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int __swiftcall ColumnSlice.index(after:)(Swift::Int after)
{
  v2 = v1;

  type metadata accessor for Column(255, *(v2 + 16), v3, v4);
  swift_getWitnessTable();
  sub_21B34BB44();
  sub_21B34BB04();

  return v6;
}

Swift::Int sub_21B290940(Swift::Int *a1)
{
  result = ColumnSlice.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_21B29096C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  *a2 = *v2;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;

  v8 = ColumnSlice.startIndex.getter(a1);

  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_21B2909E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B290A3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_21B2DBAB0(v1, a1, WitnessTable);

  return v4;
}

uint64_t ColumnSlice.missingCount.getter(uint64_t a1)
{
  swift_getWitnessTable();
  sub_21B34B194();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  sub_21B28EBB0(&qword_27CD7E980, MEMORY[0x277D83D28]);
  sub_21B34AF24();
  v1 = sub_21B34B004();

  return v1;
}

uint64_t sub_21B290BA0(Swift::Int *a1, __int128 *a2, uint64_t a3)
{
  v4 = *a1;
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v7 = *(a2 + 4);
  v13 = *a2;
  v14 = v6;
  v15 = v5;
  v16 = v7;

  type metadata accessor for Column(255, a3, v8, v9);
  swift_getWitnessTable();
  v10 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](&v12, v10);

  LOBYTE(v7) = Column.isNil(at:)(v4);

  return v7 & 1;
}

uint64_t sub_21B290C80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = type metadata accessor for ColumnSlice(0, *(a2 + a3 - 8), a3, a4);
  return ColumnSlice.subscript.getter(v4, v5);
}

uint64_t ColumnSlice.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B29318C(a1, a2, a3);
  v4 = sub_21B34B474();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*ColumnSlice.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = sub_21B34B474();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  ColumnSlice.subscript.getter(a2, a3);
  return sub_21B290E94;
}

void sub_21B290E94(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_21B29318C(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_21B29318C((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double sub_21B290F8C@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v6 = *(a2 + a3 - 8);
  v7 = *(a1 + 2);
  *&v13[3] = *a1;
  v13[5] = v7;
  v14 = *(a1 + 24);
  v8 = type metadata accessor for ColumnSlice(0, v6, a3, a5);
  ColumnSlice.subscript.getter(v8, &v11);
  v9 = v12;
  *a4 = v11;
  *(a4 + 16) = v9;
  result = *v13;
  *(a4 + 24) = *v13;
  return result;
}

uint64_t sub_21B29101C(__int128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v12 = *a1;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v10 = type metadata accessor for ColumnSlice(0, v4, a3, a4);

  return ColumnSlice.subscript.setter(&v12, v5, v6, v10);
}

uint64_t ColumnSlice.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v15 = *a1;
  v16 = v7;
  v17 = v8;
  v18 = v9;

  v14[0] = a2;
  v14[1] = a3;
  type metadata accessor for Column(255, *(a4 + 16), v10, v11);
  swift_getWitnessTable();
  v12 = sub_21B34BB44();
  swift_getWitnessTable();
  sub_21B2932D0(&v15, v14, v12);
}

void (*ColumnSlice.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(__int128 **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x48uLL);
  }

  *a1 = v9;
  v9[7] = a4;
  v9[8] = v4;
  v9[5] = a2;
  v9[6] = a3;
  ColumnSlice.subscript.getter(a4, v9);
  return sub_21B291244;
}

void sub_21B291244(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 7);
  v5 = *(*a1 + 5);
  v4 = *(*a1 + 6);
  if (a2)
  {
    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    v8 = *(v2 + 4);
    v9 = *v2;
    v10 = v7;
    v11 = v6;
    v12 = v8;

    ColumnSlice.subscript.setter(&v9, v5, v4, v3);
  }

  else
  {
    ColumnSlice.subscript.setter(*a1, v5, v4, v3);
  }

  free(v2);
}

uint64_t sub_21B2912FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_21B29318C(a1, *a2, a3);
  v4 = sub_21B34B474();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*sub_21B291378(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = ColumnSlice.subscript.modify(v6, *a2, a3);
  return sub_21B28EF30;
}

void (*sub_21B291410(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = ColumnSlice.subscript.modify(v6, *a2, a2[1], a3);
  return sub_21B28EF30;
}

uint64_t static ColumnSlice<A>.== infix(_:_:)(void (***a1)(void), uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v72 = a4;
  v80 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v74 = &v69 - v9;
  v10 = sub_21B34B474();
  v79 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v75 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v69 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v87 = &v69 - v16;
  MEMORY[0x28223BE20](v15);
  v85 = v17;
  v86 = &v69 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_21B34B474();
  MEMORY[0x28223BE20](v19 - 8);
  v77 = &v69 - v20;
  v21 = a1[1];
  v22 = a1[2];
  v23 = a1[3];
  v24 = a1[4];
  v25 = *a2;
  v26 = a2[1];
  v27 = a2[2];
  v28 = a2[3];
  v29 = a2[4];
  v73 = *a1;
  *&v106 = v73;
  *(&v106 + 1) = v21;
  v81 = v21;
  v69 = v23;
  v70 = v22;
  *&v107 = v22;
  *(&v107 + 1) = v23;
  v83 = v24;
  *&v108 = v24;
  v88 = a3;
  v32 = type metadata accessor for ColumnSlice(0, a3, v30, v31);
  v33 = ColumnSlice.name.getter(v32);
  v35 = v34;
  v82 = v25;
  *&v89 = v25;
  *(&v89 + 1) = v26;
  *&v90 = v27;
  *(&v90 + 1) = v28;
  *&v91 = v29;
  v84 = v32;
  if (v33 == ColumnSlice.name.getter(v32) && v35 == v36)
  {
  }

  else
  {
    v37 = sub_21B34B9F4();

    result = 0;
    if ((v37 & 1) == 0)
    {
      return result;
    }
  }

  *&v96 = v73;
  *(&v96 + 1) = v81;
  *&v97 = v70;
  *(&v97 + 1) = v69;
  *&v98 = v83;
  v101 = v82;
  v102 = v26;
  v103 = v27;
  v104 = v28;
  v105 = v29;
  v39 = v84;
  WitnessTable = swift_getWitnessTable();
  sub_21B34BA54();
  v98 = v91;
  v99 = v92;
  v100 = v93;
  v96 = v89;
  v97 = v90;
  v101 = v39;
  v102 = v39;
  v103 = WitnessTable;
  v104 = WitnessTable;
  v83 = WitnessTable;
  sub_21B34B674();
  sub_21B34B644();
  v41 = TupleTypeMetadata2;
  v81 = (v79 + 32);
  v82 = TupleTypeMetadata2 - 8;
  v42 = (v80 + 6);
  v73 = (v79 + 16);
  v43 = (v80 + 4);
  v70 = v80 + 1;
  v80 = (v79 + 8);
  v44 = v77;
  while (1)
  {
    *&v89 = v84;
    *(&v89 + 1) = v84;
    *&v90 = v83;
    *(&v90 + 1) = v83;
    v46 = sub_21B34B664();
    sub_21B34B654();
    if ((*(*(v41 - 8) + 48))(v44, 1, v41) == 1)
    {
      v93 = v110;
      v94 = v111;
      v95 = v112;
      v89 = v106;
      v90 = v107;
      v91 = v108;
      v92 = v109;
      (*(*(v46 - 8) + 8))(&v89, v46);
      return 1;
    }

    v79 = v46;
    v47 = *(v41 + 48);
    v48 = v42;
    v49 = *v81;
    v51 = v85;
    v50 = v86;
    (*v81)(v86, v44, v85);
    v49(v87, &v44[v47], v51);
    v42 = v48;
    v52 = *v48;
    if ((*v48)(v50, 1, v88) == 1 && v52(v87, 1, v88) == 1)
    {
      goto LABEL_6;
    }

    v53 = v43;
    v54 = v51;
    v55 = *v73;
    v56 = v76;
    (*v73)(v76, v86, v51);
    if (v52(v56, 1, v88) == 1)
    {
      v93 = v110;
      v94 = v111;
      v95 = v112;
      v89 = v106;
      v90 = v107;
      v91 = v108;
      v92 = v109;
      (*(*(v79 - 8) + 8))(&v89);
      v67 = *v80;
      (*v80)(v56, v51);
      goto LABEL_17;
    }

    v57 = *v53;
    v58 = v74;
    v59 = v56;
    v60 = v88;
    (*v53)(v74, v59, v88);
    v61 = v75;
    v55();
    if (v52(v61, 1, v60) == 1)
    {
      break;
    }

    v62 = v71;
    v63 = v88;
    v57(v71, v61, v88);
    v64 = sub_21B34AC54();
    v65 = *v70;
    (*v70)(v62, v63);
    v65(v58, v63);
    v51 = v85;
    v44 = v77;
    v43 = v53;
    v41 = TupleTypeMetadata2;
    if ((v64 & 1) == 0)
    {
      v93 = v110;
      v94 = v111;
      v95 = v112;
      v89 = v106;
      v90 = v107;
      v91 = v108;
      v92 = v109;
      (*(*(v79 - 8) + 8))(&v89);
      v66 = *v80;
      (*v80)(v86, v51);
      v66(v87, v51);
      return 0;
    }

LABEL_6:
    v45 = *v80;
    (*v80)(v86, v51);
    v45(v87, v51);
  }

  (*v70)(v58, v88);
  v93 = v110;
  v94 = v111;
  v95 = v112;
  v89 = v106;
  v90 = v107;
  v91 = v108;
  v92 = v109;
  (*(*(v79 - 8) + 8))(&v89);
  v67 = *v80;
  v68 = v61;
  v54 = v85;
  (*v80)(v68, v85);
LABEL_17:
  v67(v86, v54);
  v67(v87, v54);
  return 0;
}

uint64_t ColumnSlice<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = *(a2 + 16);
  v4 = sub_21B34B474();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[3];
  v17 = v3[2];
  v10 = v3[4];
  v25 = v7;
  v26 = v8;
  v27 = v17;
  v28 = v9;
  v29 = v10;
  ColumnSlice.name.getter(v18);
  sub_21B34AD94();

  v20 = v7;
  v21 = v8;
  v22 = v17;
  v23 = v9;
  v24 = v10;
  v25 = v7;
  v26 = v8;
  v27 = v17;
  v28 = v9;
  v29 = v10;
  type metadata accessor for Column(255, v19, v11, v12);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_getWitnessTable();
  sub_21B34BB44();
  sub_21B34BAD4();

  sub_21B34AAC4();
  if (v30 != v20)
  {
    v13 = (v16 + 8);
    do
    {
      sub_21B34BB94();
      sub_21B34BB34();
      sub_21B34B484();
      (*v13)(v6, v4);
      sub_21B34AAC4();
    }

    while (v30 != v20);
  }
}

void ColumnSlice<A>.distinct()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a1;
  WitnessTable = a2;
  v42 = *(a1 + 16);
  v43 = a3;
  v4 = sub_21B34B474();
  v51 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = &v40 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_21B34B474();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v40 - v13);
  v16 = *v3;
  v45 = v3[1];
  v15 = v45;
  v46 = v16;
  v17 = v3[3];
  v44 = v3[2];
  v18 = v3[4];
  v72 = WitnessTable;
  WitnessTable = swift_getWitnessTable();
  v73 = sub_21B34A994();
  v69 = 0;
  v70 = 0;
  v71 = 2;
  *&v65 = v16;
  *(&v65 + 1) = v15;
  v19 = v44;
  *&v66 = v44;
  *(&v66 + 1) = v17;
  *&v67 = v18;
  swift_getWitnessTable();
  sub_21B34B194();
  *v56 = v57[0];
  *&v61 = v46;
  *(&v61 + 1) = v45;
  *&v62 = v19;
  *(&v62 + 1) = v17;
  v40 = v18;
  v41 = v17;
  v63 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  v21 = sub_21B28EBB0(&qword_27CD7E980, MEMORY[0x277D83D28]);
  v22 = v54;
  v23 = swift_getWitnessTable();
  sub_21B34BA54();
  v61 = v58;
  v62 = v59;
  v63 = *&v60[0];
  v64 = *(v60 + 8);
  *&v65 = v20;
  *(&v65 + 1) = v22;
  *&v66 = v21;
  *(&v66 + 1) = v23;
  sub_21B34B674();
  sub_21B34B644();
  v52 = (v51 + 4);
  v53 = TupleTypeMetadata2 - 8;
  v47 = (v51 + 2);
  v48 = v23;
  ++v51;
  while (1)
  {
    while (1)
    {
      *&v58 = v20;
      *(&v58 + 1) = v54;
      *&v59 = v21;
      *(&v59 + 1) = v23;
      v24 = sub_21B34B664();
      sub_21B34B654();
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
      {
        v60[0] = v67;
        v60[1] = v68[0];
        *(&v60[1] + 9) = *(v68 + 9);
        v58 = v65;
        v59 = v66;
        (*(*(v24 - 8) + 8))(&v58, v24);

        *&v61 = v46;
        *(&v61 + 1) = v45;
        *&v62 = v44;
        *(&v62 + 1) = v41;
        v63 = v40;
        v36 = v42;
        type metadata accessor for Column(255, v42, v37, v38);
        swift_getWitnessTable();
        v39 = sub_21B34BB44();
        MEMORY[0x21CEEE2D0](v57, v39);
        v56[0] = *&v57[0];
        *&v56[1] = *(v57 + 8);
        sub_21B2D3D88(v56, v69, v70, v71, v36, v43);
        return;
      }

      v25 = *v14;
      (*v52)(v10, v14 + *(TupleTypeMetadata2 + 48), v4);
      if ((sub_21B34B114() & 1) == 0)
      {
        break;
      }

      (*v51)(v10, v4);
    }

    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 < v25)
    {
      goto LABEL_10;
    }

    sub_21B28DFBC(v25, v26);
    (*v47)(v50, v10, v4);
    sub_21B34B124();
    v27 = v14;
    v28 = v21;
    v29 = v4;
    v30 = v10;
    v31 = TupleTypeMetadata2;
    v32 = v20;
    v33 = v49;
    sub_21B34B104();
    v34 = *v51;
    v35 = v33;
    v20 = v32;
    TupleTypeMetadata2 = v31;
    v10 = v30;
    v4 = v29;
    v21 = v28;
    v14 = v27;
    v23 = v48;
    (*v51)(v35, v4);
    v34(v10, v4);
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t ColumnSlice<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 2);
  v8 = *v2;
  v9 = v5;
  v10 = *(v2 + 24);
  sub_21B34BBC4();
  ColumnSlice<A>.hash(into:)(v7, a1, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B2925CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_21B34BBC4();
  ColumnSlice<A>.hash(into:)(v6, a2, v4);
  return sub_21B34BC24();
}

uint64_t sub_21B292620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  v11 = *(v3 + 2);
  v18 = *v3;
  v19 = v11;
  v20 = *(v3 + 24);
  v17[1] = a1;
  type metadata accessor for Column(255, v6, v12, v13);
  swift_getWitnessTable();
  sub_21B34BB44();
  swift_getWitnessTable();
  sub_21B34BB64();
  v14 = *(v6 - 8);
  if ((*(v14 + 48))(v10, 1, v6) == 1)
  {
    result = (*(v8 + 8))(v10, v7);
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v14 + 32))(boxed_opaque_existential_1, v10, v6);
  }

  return result;
}

void *sub_21B292808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v22 = a1;
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = *(v3 + 2);
  v31 = *v3;
  v32 = v10;
  v33 = *(v3 + 24);
  v13 = type metadata accessor for Column(255, v5, v11, v12);
  swift_getWitnessTable();
  sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v34);
  sub_21B2832C0(a2, &v24);
  if (v26)
  {
    sub_21B261720(&v24, &v31);
    sub_21B2616C4(&v31, &v24);
    swift_dynamicCast();
    (*(*(v5 - 8) + 56))(v9, 0, 1, v5);
    sub_21B28E8DC(v9, v22, v13, v14);
    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(&v31);
  }

  else
  {
    sub_21B28EEB4(&v24);
    (*(*(v5 - 8) + 56))(v9, 1, 1, v5);
    sub_21B28E8DC(v9, v22, v13, v15);
    (*(v7 + 8))(v9, v6);
  }

  v28 = v34[0];
  v29 = v34[1];
  v30 = v34[2];
  v16 = *(v3 + 2);
  v31 = *v3;
  v32 = v16;
  v33 = *(v3 + 24);

  sub_21B34BAD4();
  v17 = v27;
  v18 = *(v3 + 2);
  v24 = *v3;
  v25 = v18;
  v26 = *(v3 + 24);
  result = sub_21B34AAC4();
  if (v23 < v17)
  {
    __break(1u);
  }

  else
  {
    *&v24 = v17;
    *(&v24 + 1) = v23;
    sub_21B34BAE4();

    v22 = v31;
    v20 = v32;
    v21 = v33;

    *v3 = v22;
    *(v3 + 2) = v20;
    *(v3 + 24) = v21;
  }

  return result;
}

void *sub_21B292B64@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v32[3] = *v5;
  v32[4] = v7;
  v32[5] = v8;
  v32[6] = v9;
  v32[7] = v10;
  v28 = *(a3 + 16);
  v11 = type metadata accessor for Column(255, v28, a3, a4);
  swift_getWitnessTable();
  sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v32);
  sub_21B34BAD4();
  result = sub_21B34AAC4();
  if (v30 < v31)
  {
    __break(1u);
  }

  else
  {
    if (v31 == v30)
    {
      v13 = 0;
    }

    else
    {
      v13 = v31;
    }

    if (v31 == v30)
    {
      v14 = 0;
    }

    else
    {
      v14 = v30;
    }

    v15 = a1 == a2;
    if (a1 == a2)
    {
      v16 = 0;
    }

    else
    {
      v16 = a1;
    }

    if (a1 == a2)
    {
      v17 = 0;
    }

    else
    {
      v17 = a2;
    }

    v18 = 2 * v15;
    v19 = sub_21B248CCC(v16, v17, 2 * v15, v13, v14, 2 * (v31 == v30));
    v21 = v20;
    v23 = v22;
    sub_21B23A9F4(v16, v17, v18);
    a5[3] = type metadata accessor for DiscontiguousColumnSlice(0, v28, v24, v25);
    a5[4] = &off_282CAB618;
    v26 = swift_allocObject();
    *a5 = v26;
    sub_21B28B2B8(v19, v21, v23, v11, v26 + 16);
    sub_21B23A9F4(v19, v21, v23);
  }

  return result;
}

uint64_t sub_21B292D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B233A10(a3, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E718, &qword_21B352338);
  swift_dynamicCast();
  v12 = v15;
  v13 = v16;
  v14 = v17;
  v11[0] = a1;
  v11[1] = a2;
  type metadata accessor for Column(255, *(a4 + 16), v7, v8);
  swift_getWitnessTable();
  v9 = sub_21B34BB44();
  swift_getWitnessTable();
  sub_21B2932D0(&v12, v11, v9);
}

void *sub_21B292E5C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v24 = a3;
  v7 = v5[1];
  v9 = v5[2];
  v8 = v5[3];
  v10 = v5[4];
  v28[3] = *v5;
  v28[4] = v7;
  v28[5] = v9;
  v28[6] = v8;
  v28[7] = v10;
  v25 = *(a4 + 16);
  v11 = type metadata accessor for Column(255, v25, a3, a4);
  swift_getWitnessTable();
  sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v28);
  sub_21B34BAD4();
  result = sub_21B34AAC4();
  if (v26 < v27)
  {
    __break(1u);
  }

  else
  {
    if (v27 == v26)
    {
      v13 = 0;
    }

    else
    {
      v13 = v27;
    }

    if (v27 == v26)
    {
      v14 = 0;
    }

    else
    {
      v14 = v26;
    }

    v15 = sub_21B248CCC(a1, a2, v24, v13, v14, 2 * (v27 == v26));
    v17 = v16;
    v19 = v18;
    a5[3] = type metadata accessor for DiscontiguousColumnSlice(0, v25, v18, v20);
    a5[4] = &off_282CAB618;
    v21 = swift_allocObject();
    *a5 = v21;
    sub_21B28B2B8(v15, v17, v19, v11, v21 + 16);
    sub_21B23A9F4(v15, v17, v19);
  }

  return result;
}

uint64_t sub_21B293018@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v18 = *v2;
  v19 = v5;
  v20 = v7;
  v21 = v6;
  v22 = v8;
  v9 = ColumnSlice.name.getter(a1);
  v11 = v10;
  v17[0] = v18;
  v17[1] = v5;
  v17[2] = v7;
  v17[3] = v6;
  v17[4] = v8;
  v12 = *(a1 + 16);
  a2[3] = type metadata accessor for Column(0, v12, v13, v14);
  a2[4] = &off_282CAA128;

  WitnessTable = swift_getWitnessTable();
  return Column.init<A>(name:contents:)(v9, v11, v17, v12, a1, WitnessTable, a2);
}

uint64_t sub_21B293134(uint64_t a1, void *a2)
{
  result = (*(v2 + 32))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_21B29318C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(v12 - v7, a1);
  v12[1] = a2;
  type metadata accessor for Column(255, v5, v9, v10);
  swift_getWitnessTable();
  sub_21B34BB44();
  swift_getWitnessTable();
  return sub_21B34BB74();
}

uint64_t sub_21B2932D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_21B34B934();
}

uint64_t sub_21B29338C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B2933C8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B2934A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B2934DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B293524(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Alignment.roundToAligment(_:)(uint64_t result)
{
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (v1 < 0)
    {
      v1 = result + 62;
    }

    v2 = v1 >> 6;
    if ((v2 - 0x1FFFFFFFFFFFFFFLL) >> 58 == 63)
    {
      return (v2 << 6) + 64;
    }
  }

  __break(1u);
  return result;
}

unint64_t static PackedOptionalsBuffer.nilBitmapSize(capacity:)(unint64_t result)
{
  v1 = result + 7;
  if (__OFADD__(result, 7))
  {
    __break(1u);
  }

  else
  {
    if (v1 < 0)
    {
      v1 = result + 14;
    }

    v2 = v1 >> 3;
    v4 = v2 - 1;
    v3 = v2 < 1;
    v5 = v2 + 62;
    if (!v3)
    {
      v5 = v4;
    }

    return (v5 & 0xFFFFFFFFFFFFFFC0) + 64;
  }

  return result;
}

unint64_t PackedOptionalsBuffer.nilBitmapSize.getter()
{
  if (!*v0)
  {
    goto LABEL_7;
  }

  v1 = **v0;
  v2 = __OFADD__(v1, 7);
  v3 = v1 + 7;
  if (v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = v3 / 8;
  v6 = v4 - 1;
  v5 = v4 < 1;
  v7 = v4 + 62;
  if (!v5)
  {
    v7 = v6;
  }

  return (v7 & 0xFFFFFFFFFFFFFFC0) + 64;
}

uint64_t PackedOptionalsBuffer.capacity.getter()
{
  if (*v0)
  {
    return **v0;
  }

  __break(1u);
  return result;
}

uint64_t PackedOptionalsBuffer.headerAddress.getter()
{
  result = *v0;
  if (!*v0)
  {
    __break(1u);
  }

  return result;
}

unint64_t PackedOptionalsBuffer.firstElementAddress.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    goto LABEL_9;
  }

  v2 = *v1 + 7;
  if (__OFADD__(*v1, 7))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    v2 = *v1 + 14;
  }

  v3 = v2 >> 3;
  v5 = v3 - 1;
  v4 = v3 < 1;
  v6 = v3 + 62;
  if (!v4)
  {
    v6 = v5;
  }

  return v1 + (v6 & 0xFFFFFFFFFFFFFFC0) + 128;
}

uint64_t PackedOptionalsBuffer.elementsBuffer.getter()
{
  if (*v0)
  {
    if (!__OFADD__(**v0, 7))
    {
      return sub_21B34B4A4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PackedOptionalsBuffer.count.getter()
{
  if (*v0)
  {
    return *(*v0 + 8);
  }

  __break(1u);
  return result;
}

uint64_t PackedOptionalsBuffer.count.setter(uint64_t result)
{
  if (*v1)
  {
    *(*v1 + 8) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*PackedOptionalsBuffer.count.modify(uint64_t (*result)()))()
{
  v2 = *v1;
  *(result + 1) = *v1;
  if (v2)
  {
    *result = *(v2 + 8);
    return sub_21B293784;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PackedOptionalsBuffer.nilCount.getter()
{
  if (*v0)
  {
    return *(*v0 + 16);
  }

  __break(1u);
  return result;
}

uint64_t PackedOptionalsBuffer.nilCount.setter(uint64_t result)
{
  if (*v1)
  {
    *(*v1 + 16) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*PackedOptionalsBuffer.nilCount.modify(uint64_t (*result)()))()
{
  v2 = *v1;
  *(result + 1) = *v1;
  if (v2)
  {
    *result = *(v2 + 16);
    return sub_21B293800;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PackedOptionalsBuffer.init(rawBuffer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void static PackedOptionalsBuffer.allocate(capacity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = a1 + 14;
  if (v3 >= 0)
  {
    v7 = a1 + 7;
  }

  v8 = v7 >> 3;
  v10 = v8 - 1;
  v9 = v8 < 1;
  v11 = v8 + 62;
  if (!v9)
  {
    v11 = v10;
  }

  v12 = *(*(a2 - 8) + 72);
  v13 = v12 * a1;
  if ((v12 * a1) >> 64 != (v12 * a1) >> 63)
  {
    goto LABEL_13;
  }

  v14 = v11 & 0xFFFFFFFFFFFFFFC0;
  v15 = (v11 & 0xFFFFFFFFFFFFFFC0) + 128;
  v16 = v15 + v13;
  if (__OFADD__(v15, v13))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = swift_slowAlloc();
  v21[0] = a1;
  v20 = type metadata accessor for PackedOptionalsBuffer.Header(0, a2, v18, v19);
  v21[1] = 0;
  v21[2] = 0;
  (*(*(v20 - 8) + 32))(v17, v21, v20);
  if (v3 < -1015)
  {
LABEL_15:
    __break(1u);
    return;
  }

  if (v14 != -64)
  {
    bzero((v17 + 64), v14 + 64);
  }

  *a3 = v17;
  a3[1] = v17 + v16;
}

uint64_t PackedOptionalsBuffer.Header.init(capacity:count:nilCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void PackedOptionalsBuffer.init(copying:capacity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v52 = a3;
  v6 = MEMORY[0x28223BE20](a1);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v6;
  if (!*v6)
  {
    goto LABEL_50;
  }

  if (*v10 > a2)
  {
    __break(1u);
    goto LABEL_42;
  }

  v11 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v11 < 0)
  {
    v11 = a2 + 14;
  }

  v12 = v11 >> 3;
  v14 = v12 - 1;
  v13 = v12 < 1;
  v15 = v12 + 62;
  if (!v13)
  {
    v15 = v14;
  }

  v16 = *(v7 + 72);
  v17 = v16 * a2;
  if ((v16 * a2) >> 64 != (v16 * a2) >> 63)
  {
    goto LABEL_43;
  }

  v18 = v15 & 0xFFFFFFFFFFFFFFC0;
  v19 = (v15 & 0xFFFFFFFFFFFFFFC0) + 128;
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v49 = v7;
  v21 = swift_slowAlloc();
  *&v55 = v21;
  *(&v55 + 1) = v21 + v20;
  if (!v21)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v24 = v21;
  v53 = a2;
  v54 = *(v10 + 1);
  v25 = type metadata accessor for PackedOptionalsBuffer.Header(0, v52, v22, v23);
  (*(*(v25 - 8) + 32))(v24, &v53, v25);
  v51 = v55;
  v26 = v55;
  if (!v55)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v27 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
  if (!v27)
  {
LABEL_53:
    __break(1u);
    return;
  }

  v28 = *v10 + 7;
  if (__OFADD__(*v10, 7))
  {
    goto LABEL_45;
  }

  if (v28 < 0)
  {
    v28 = *v10 + 14;
  }

  v29 = v28 >> 3;
  v30 = v29 - 1;
  v13 = v29 < 1;
  v31 = v29 + 62;
  if (!v13)
  {
    v31 = v30;
  }

  memcpy((v26 + 64), v27, (v31 & 0xFFFFFFFFFFFFFFC0) + 64);
  v32 = *v10 + 7;
  v33 = __OFADD__(*v10, 7);
  if (__OFADD__(*v10, 7))
  {
    goto LABEL_46;
  }

  v34 = *v10 + 14;
  if (v32 >= 0)
  {
    v34 = *v10 + 7;
  }

  v35 = v34 >> 3;
  v36 = v35 - 1;
  v37 = v35 + 62;
  if (v36 >= 0)
  {
    v37 = v36;
  }

  v38 = v37 & 0xFFFFFFFFFFFFFFC0;
  if ((v18 - v38) < 0)
  {
    goto LABEL_47;
  }

  if (v18 != v38)
  {
    bzero((v26 + 64 + v38 + 64), v18 - v38);
    v32 = *v10 + 7;
    v33 = __OFADD__(*v10, 7);
  }

  if (v33)
  {
    goto LABEL_48;
  }

  v39 = v32 / 8;
  v40 = v39 - 1;
  v13 = v39 < 1;
  v41 = v39 + 62;
  if (!v13)
  {
    v41 = v40;
  }

  v42 = *(v26 + 8);
  if (v42 < 0)
  {
    goto LABEL_49;
  }

  v50 = a4;
  if (v42)
  {
    v43 = 0;
    v44 = v26 + v19;
    v45 = v10 + (v41 & 0xFFFFFFFFFFFFFFC0) + 128;
    v46 = (v49 + 16);
    v47 = (v49 + 32);
    do
    {
      if ((*(PackedOptionalsBuffer.nilBitmapBuffer.getter() + (v43 >> 3)) >> (v43 & 7)))
      {
        v48 = v52;
        (*v46)(v9, v45, v52);
        (*v47)(v44, v9, v48);
      }

      ++v43;
      v45 += v16;
      v44 += v16;
    }

    while (v42 != v43);
  }

  *v50 = v51;
}

Swift::Bool __swiftcall PackedOptionalsBuffer.isNil(at:)(Swift::Int at)
{
  v2 = at - (v1 & 0xFFFFFFFFFFFFFFF8);
  v3 = *(PackedOptionalsBuffer.nilBitmapBuffer.getter() + at / 8);
  v4 = 1 << v2;
  if (v2 < 0)
  {
    v4 = 0;
  }

  return (v4 & v3) == 0;
}

void PackedOptionalsBuffer.init(moving:capacity:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_55;
  }

  if (*v4 > a2)
  {
    __break(1u);
    goto LABEL_46;
  }

  v7 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v7 < 0)
  {
    v7 = a2 + 14;
  }

  v9 = v7 >> 3;
  v11 = v9 - 1;
  v10 = v9 < 1;
  v12 = v9 + 62;
  if (!v10)
  {
    v12 = v11;
  }

  v13 = *(*(a3 - 8) + 72);
  v14 = v13 * a2;
  if ((v13 * a2) >> 64 != (v13 * a2) >> 63)
  {
    goto LABEL_47;
  }

  v15 = v12 & 0xFFFFFFFFFFFFFFC0;
  v16 = (v12 & 0xFFFFFFFFFFFFFFC0) + 128;
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v45 = v16;
  v18 = swift_slowAlloc();
  *&v49 = v18;
  *(&v49 + 1) = v18 + v17;
  if (!v18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v21 = v18;
  v47 = a2;
  v48 = *(v4 + 1);
  v22 = type metadata accessor for PackedOptionalsBuffer.Header(0, a3, v19, v20);
  (*(*(v22 - 8) + 32))(v21, &v47, v22);
  v46 = v49;
  v23 = v49;
  if (!v49)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v24 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
  if (v24)
  {
    v25 = *v4 + 7;
    if (!__OFADD__(*v4, 7))
    {
      if (v25 < 0)
      {
        v25 = *v4 + 14;
      }

      v26 = v25 >> 3;
      v27 = v26 - 1;
      v10 = v26 < 1;
      v28 = v26 + 62;
      if (!v10)
      {
        v28 = v27;
      }

      memcpy((v23 + 64), v24, (v28 & 0xFFFFFFFFFFFFFFC0) + 64);
      v29 = *v4 + 7;
      v30 = __OFADD__(*v4, 7);
      if (!__OFADD__(*v4, 7))
      {
        v31 = *v4 + 14;
        if (v29 >= 0)
        {
          v31 = *v4 + 7;
        }

        v32 = v31 >> 3;
        v33 = v32 - 1;
        v34 = v32 + 62;
        if (v33 >= 0)
        {
          v34 = v33;
        }

        v35 = v34 & 0xFFFFFFFFFFFFFFC0;
        if ((v15 - v35) >= 0)
        {
          if (v15 != v35)
          {
            bzero((v23 + 64 + v35 + 64), v15 - v35);
            v29 = *v4 + 7;
            v30 = __OFADD__(*v4, 7);
          }

          if (!v30)
          {
            v36 = v29 / 8;
            v37 = v36 - 1;
            v10 = v36 < 1;
            v38 = v36 + 62;
            if (!v10)
            {
              v38 = v37;
            }

            v39 = *(v23 + 8);
            if ((v39 & 0x8000000000000000) == 0)
            {
              if (v39)
              {
                v40 = 0;
                v41 = v23 + v45;
                v42 = v4 + (v38 & 0xFFFFFFFFFFFFFFC0) + 128;
                do
                {
                  if ((*(PackedOptionalsBuffer.nilBitmapBuffer.getter() + (v40 >> 3)) >> (v40 & 7)))
                  {
                    sub_21B34B464();
                  }

                  ++v40;
                  v42 += v13;
                  v41 += v13;
                }

                while (v39 != v40);
              }

              v43 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
              if (!v43)
              {
                goto LABEL_44;
              }

              if ((v44 & 0x8000000000000000) == 0)
              {
                if (v44)
                {
                  bzero(v43, v44);
                }

LABEL_44:
                v4[2] = *(v23 + 8);
                *a4 = v46;
                return;
              }

              goto LABEL_54;
            }

LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_58:
  __break(1u);
}

Swift::Void __swiftcall PackedOptionalsBuffer.setNil(at:)(Swift::Int at)
{
  v2 = at / 8;
  v3 = at - (v1 & 0xFFFFFFFFFFFFFFF8);
  v4 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
  if (v3 >= 0)
  {
    v5 = ~(1 << v3);
  }

  else
  {
    v5 = -1;
  }

  *(v4 + v2) &= v5;
}

Swift::Void __swiftcall PackedOptionalsBuffer.setNonNil(at:)(Swift::Int at)
{
  v2 = at / 8;
  v3 = at - (v1 & 0xFFFFFFFFFFFFFFF8);
  v4 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
  v5 = 1 << v3;
  if (v3 < 0)
  {
    LOBYTE(v5) = 0;
  }

  *(v4 + v2) |= v5;
}

Swift::Void __swiftcall PackedOptionalsBuffer.resize(by:)(Swift::Int by)
{
  v2 = *v1;
  if (!*v1)
  {
    goto LABEL_35;
  }

  v3 = *v2 + 7;
  if (__OFADD__(*v2, 7))
  {
    goto LABEL_29;
  }

  if (v3 < 0)
  {
    v3 = *v2 + 14;
  }

  v4 = v3 >> 3;
  v6 = v4 - 1;
  v5 = v4 < 1;
  v7 = v4 + 62;
  if (!v5)
  {
    v7 = v6;
  }

  if ((by & 0x8000000000000000) == 0)
  {
    v8 = v2[2];
    v9 = __OFADD__(v8, by);
    v10 = v8 + by;
    if (v9)
    {
      goto LABEL_31;
    }

    v2[2] = v10;
    goto LABEL_13;
  }

  v11 = v2[1];
  v12 = v11 + by;
  if (__OFADD__(v11, by))
  {
    goto LABEL_32;
  }

  if (v11 < v12)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  if (v12 != v11)
  {
    if (v12 < v11)
    {
      while (1)
      {
        v16 = v12 - (v7 & 0xFFFFFFFFFFFFFFF8);
        v17 = *(PackedOptionalsBuffer.nilBitmapBuffer.getter() + v12 / 8);
        if (v16 >= 0)
        {
          v18 = 1 << v16;
        }

        else
        {
          v18 = 0;
        }

        if ((v18 & v17) != 0)
        {
          sub_21B34B454();
          v15 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
          if (v16 >= 0)
          {
            LOBYTE(v7) = ~(1 << v16);
          }

          else
          {
            LOBYTE(v7) = -1;
          }

          *(v15 + v12 / 8) &= v7;
        }

        else
        {
          v19 = v2[2];
          v9 = __OFSUB__(v19, 1);
          v7 = v19 - 1;
          if (v9)
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v2[2] = v7;
        }

        if (v11 == ++v12)
        {
          goto LABEL_13;
        }
      }
    }

    goto LABEL_34;
  }

LABEL_13:
  v13 = v2[1];
  v9 = __OFADD__(v13, by);
  v14 = v13 + by;
  if (v9)
  {
    goto LABEL_30;
  }

  v2[1] = v14;
}

Swift::Void __swiftcall PackedOptionalsBuffer.clear(at:)(Swift::Int at)
{
  v3 = at / 8;
  v4 = at - (v1 & 0xFFFFFFFFFFFFFFF8);
  v5 = *(PackedOptionalsBuffer.nilBitmapBuffer.getter() + at / 8);
  if (v4 >= 0)
  {
    v6 = 1 << v4;
  }

  else
  {
    v6 = 0;
  }

  if ((v6 & v5) != 0)
  {
    v7 = *v2;
    if (*v2)
    {
      if (__OFADD__(*v7, 7))
      {
        __break(1u);
      }

      else
      {
        sub_21B34B454();
        v8 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
        if (v4 >= 0)
        {
          v9 = ~(1 << v4);
        }

        else
        {
          v9 = -1;
        }

        *(v8 + v3) &= v9;
        v10 = v7[2];
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (!v11)
        {
          v7[2] = v12;
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t PackedOptionalsBuffer.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_21B34B474();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = *(v4 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  (*(v6 + 16))(v9, a1, v5);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    result = (*(v6 + 8))(v9, v5);
    v17 = *v2;
    if (!*v2)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v18 = v17[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_19;
    }

    v17[2] = v20;
LABEL_16:
    v34 = v17[1];
    v19 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (!v19)
    {
      v17[1] = v35;
      return result;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = *(v10 + 32);
  result = v21(v15, v9, v4);
  v17 = *v2;
  if (*v2)
  {
    v22 = *v17 + 7;
    if (__OFADD__(*v17, 7))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v22 < 0)
    {
      v22 = *v17 + 14;
    }

    v23 = v22 >> 3;
    v25 = v23 - 1;
    v24 = v23 < 1;
    v26 = v23 + 62;
    if (!v24)
    {
      v26 = v25;
    }

    v27 = v17 + (v26 & 0xFFFFFFFFFFFFFFC0) + *(v10 + 72) * v17[1];
    (*(v10 + 16))(v13, v15, v4);
    v21((v27 + 128), v13, v4);
    v28 = v17[1];
    v29 = v28 + 7;
    if (v28 >= 0)
    {
      v29 = v17[1];
    }

    v30 = v29 >> 3;
    v31 = v28 - (v29 & 0xFFFFFFFFFFFFFFF8);
    v32 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
    v33 = 1 << v31;
    if (v31 < 0)
    {
      LOBYTE(v33) = 0;
    }

    *(v32 + v30) |= v33;
    result = (*(v10 + 8))(v15, v4);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

Swift::Void __swiftcall PackedOptionalsBuffer.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_28;
  }

  if (__OFADD__(*v4, 7))
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    MEMORY[0x2821FE280](a1, a2, v2);
    return;
  }

  v5 = a2;
  v6 = a1;
  v27 = v2;
  v7 = (*v4 + 7) / 8;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  v11 = v4 + (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v12 = a1 - (v4 & 0xFFFFFFFFFFFFFFF8);
  v26 = a1 / 8;
  LOBYTE(v13) = *(PackedOptionalsBuffer.nilBitmapBuffer.getter() + a1 / 8);
  if (v12 >= 0)
  {
    v14 = 1 << v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = (v13 & v14);
  v16 = v5 - (v13 & 0xFFFFFFFFFFFFFFF8);
  v17 = *(PackedOptionalsBuffer.nilBitmapBuffer.getter() + v5 / 8);
  if (v16 >= 0)
  {
    v18 = 1 << v16;
  }

  else
  {
    v18 = 0;
  }

  v19 = v17 & v18;
  if (v15)
  {
    v20 = *(*(*(v27 + 16) - 8) + 72);
    a2 = v11 + v20 * v6;
    if (v19)
    {
      a1 = v11 + v20 * v5;
      v2 = *(v27 + 16);

      goto LABEL_29;
    }

    sub_21B34B464();
    v25 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
    *(v25 + v5 / 8) |= v18;
    v22 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
    if (v12 >= 0)
    {
      v23 = ~(1 << v12);
    }

    else
    {
      v23 = -1;
    }

    v24 = v26;
  }

  else
  {
    if (!v19)
    {
      return;
    }

    sub_21B34B464();
    v21 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
    *(v21 + v26) |= v14;
    v22 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
    if (v16 >= 0)
    {
      v23 = ~(1 << v16);
    }

    else
    {
      v23 = -1;
    }

    v24 = v5 / 8;
  }

  *(v22 + v24) &= v23;
}

Swift::Void __swiftcall PackedOptionalsBuffer.move(from:to:)(Swift::Int from, Swift::Int to)
{
  v3 = *v2;
  if (!*v2)
  {
    goto LABEL_29;
  }

  if (__OFADD__(*v3, 7))
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v5 = (*v3 + 7) / 8;
  v7 = v5 - 1;
  v6 = v5 < 1;
  v8 = v5 + 62;
  if (!v6)
  {
    v8 = v7;
  }

  v28 = *v2;
  v9 = from - (v8 & 0xFFFFFFFFFFFFFFF8);
  v29 = from / 8;
  LODWORD(v10) = *(PackedOptionalsBuffer.nilBitmapBuffer.getter() + from / 8);
  if (v9 >= 0)
  {
    v11 = 1 << v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 & v10;
  v13 = to - (v10 & 0xFFFFFFFFFFFFFFF8);
  v27 = to / 8;
  v14 = *(PackedOptionalsBuffer.nilBitmapBuffer.getter() + to / 8);
  if (v13 >= 0)
  {
    v15 = 1 << v13;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  LOBYTE(v16) = v14 & v15;
  if (v12)
  {
    if (v9 >= 0)
    {
      v17 = ~(1 << v9);
    }

    else
    {
      v17 = -1;
    }

    if (!v16)
    {
      sub_21B34B464();
      v25 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
      *(v25 + v29) &= v17;
      v26 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
      *(v26 + v27) |= v15;
      return;
    }

    sub_21B34B444();
    v18 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
    v19 = v28;
    *(v18 + v29) &= v17;
    v20 = v28[2];
    v21 = __OFADD__(v20, 1);
    v16 = v20 + 1;
    if (!v21)
    {
LABEL_24:
      v19[2] = v16;
      return;
    }

    __break(1u);
  }

  if (v16)
  {
    sub_21B34B454();
    v22 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
    if (v13 >= 0)
    {
      v23 = ~(1 << v13);
    }

    else
    {
      v23 = -1;
    }

    *(v22 + v27) &= v23;
    v19 = v28;
    v24 = v28[2];
    v21 = __OFADD__(v24, 1);
    v16 = v24 + 1;
    if (!v21)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }
}

Swift::Int __swiftcall PackedOptionalsBuffer.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall PackedOptionalsBuffer.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall PackedOptionalsBuffer.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

BOOL PackedOptionalsBuffer.isEmpty.getter()
{
  if (*v0)
  {
    return *(*v0 + 8) == 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B294AC4()
{
  if (*v0)
  {
    return *(*v0 + 8);
  }

  __break(1u);
  return result;
}

void *PackedOptionalsBuffer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1 / 8;
  v8 = a1 - (a3 & 0xFFFFFFFFFFFFFFF8);
  result = PackedOptionalsBuffer.nilBitmapBuffer.getter();
  v10 = 1 << v8;
  if (v8 < 0)
  {
    LOBYTE(v10) = 0;
  }

  if ((v10 & *(result + v7)) != 0)
  {
    v11 = *v3;
    if (*v3)
    {
      v12 = *v11 + 7;
      if (!__OFADD__(*v11, 7))
      {
        if (v12 < 0)
        {
          v12 = *v11 + 14;
        }

        v13 = v12 >> 3;
        v15 = v13 - 1;
        v14 = v13 < 1;
        v16 = v13 + 62;
        if (!v14)
        {
          v16 = v15;
        }

        v17 = *(a2 + 16);
        v22 = *(v17 - 8);
        (*(v22 + 16))(a3, v11 + (v16 & 0xFFFFFFFFFFFFFFC0) + *(v22 + 72) * a1 + 128, v17);
        v18 = *(v22 + 56);
        v19 = a3;
        v20 = 0;
        v21 = v17;
        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v21 = *(a2 + 16);
  v18 = *(*(v21 - 8) + 56);
  v19 = a3;
  v20 = 1;
LABEL_12:

  return v18(v19, v20, 1, v21);
}

void *sub_21B294C6C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for PackedOptionalsBuffer(0, *(a1 + a2 - 8), a2, a3);
  return PackedOptionalsBuffer.subscript.getter(v5, v6, a4);
}

void *sub_21B294CD0(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 8);
  v8 = sub_21B34B474();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = *a3;
  (*(v12 + 16))(&v17 - v9, a1);
  v17 = *a2;
  v15 = type metadata accessor for PackedOptionalsBuffer(0, v7, v13, v14);
  return PackedOptionalsBuffer.subscript.setter(v10, v11, v15);
}

void *PackedOptionalsBuffer.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = *(v6 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v48 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  (*(v8 + 16))(v11, a1, v7);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    v17 = *(v8 + 8);
    v17(v11, v7);
    PackedOptionalsBuffer.clear(at:)(a2);
    return (v17)(a1, v7);
  }

  v46 = a1;
  v47 = v16;
  v19 = *(v12 + 32);
  v19(v16, v11, v6);
  v21 = a2 - (v20 & 0xFFFFFFFFFFFFFFF8);
  result = PackedOptionalsBuffer.nilBitmapBuffer.getter();
  if (v21 >= 0)
  {
    v22 = 1 << v21;
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  if ((*(result + a2 / 8) & v22) == 0)
  {
    v30 = *v3;
    if (!*v3)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v44 = a2 / 8;
    v45 = v19;
    v31 = *v30 + 7;
    v32 = v47;
    if (!__OFADD__(*v30, 7))
    {
      if (v31 < 0)
      {
        v31 = *v30 + 14;
      }

      v33 = v31 >> 3;
      v34 = v33 - 1;
      v27 = v33 < 1;
      v35 = v33 + 62;
      if (!v27)
      {
        v35 = v34;
      }

      v36 = v30 + (v35 & 0xFFFFFFFFFFFFFFC0) + *(v12 + 72) * a2;
      v37 = *(v12 + 16);
      v38 = v48;
      v43 = v30;
      v37(v48, v47, v6);
      v45(v36 + 128, v38, v6);
      v39 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
      *(v39 + v44) |= v22;
      (*(v8 + 8))(v46, v7);
      result = (*(v12 + 8))(v32, v6);
      v40 = v43[2];
      v41 = __OFSUB__(v40, 1);
      v42 = v40 - 1;
      if (!v41)
      {
        v43[2] = v42;
        return result;
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = *v3;
  if (!*v3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = *v23 + 7;
  v25 = v46;
  if (__OFADD__(*v23, 7))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v24 < 0)
  {
    v24 = *v23 + 14;
  }

  v26 = v24 >> 3;
  v28 = v26 - 1;
  v27 = v26 < 1;
  v29 = v26 + 62;
  if (!v27)
  {
    v29 = v28;
  }

  (*(v12 + 40))(v23 + (v29 & 0xFFFFFFFFFFFFFFC0) + *(v12 + 72) * a2 + 128, v47, v6);
  return (*(v8 + 8))(v25, v7);
}

void (*PackedOptionalsBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(Swift::Int **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = sub_21B34B474();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  PackedOptionalsBuffer.subscript.getter(a2, a3, v13);
  return sub_21B2952AC;
}

void sub_21B2952AC(Swift::Int **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    PackedOptionalsBuffer.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PackedOptionalsBuffer.subscript.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*sub_21B295380(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = PackedOptionalsBuffer.subscript.modify(v6, *a2, a3);
  return sub_21B28EF30;
}

uint64_t sub_21B295408(_OWORD *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v6 = *a2;
  return sub_21B2DBAB4(v7, &v6, a3, a4);
}

void (*sub_21B295440(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
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
  v8[4] = sub_21B2D9394(v8, a2, a3, a4);
  return sub_21B28A810;
}

uint64_t sub_21B29555C@<X0>(uint64_t *a1@<X8>)
{
  result = PackedOptionalsBuffer.underestimatedCount.getter();
  *a1 = result;
  return result;
}

void (*sub_21B295584(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B29560C(v6, *a2, a3);
  return sub_21B285370;
}

void (*sub_21B29560C(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = sub_21B34B474();
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  PackedOptionalsBuffer.subscript.getter(a2, a3, v8);
  return sub_21B2854A4;
}

uint64_t sub_21B2956E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21B2D9760(a1, a2, WitnessTable, a3);
}

void *sub_21B29574C()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

__n128 sub_21B2957C0@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_21B2957D4(uint64_t a1)
{
  v5 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_21B2DBAB0(&v5, a1, WitnessTable);
}

double PackedOptionalsBuffer.init()@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  static PackedOptionalsBuffer.allocate(capacity:)(0, a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

void PackedOptionalsBuffer.replaceSubrange<A>(_:with:)(uint64_t a1, Swift::Int a2, void (**a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_21B34B1D4();

  PackedOptionalsBuffer.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, v12, a3, a4, a5, a6);
}

void PackedOptionalsBuffer.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, Swift::Int a2, uint64_t a3, void (**a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = sub_21B34B474();
  v59 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v63 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = MEMORY[0x28223BE20](v20);
  v67 = (&v56 - v23);
  v24 = *v8;
  if (!*v8)
  {
    goto LABEL_93;
  }

  v25 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_69;
  }

  v65 = v18;
  v26 = a3 - v25;
  if (__OFSUB__(a3, v25))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (__OFADD__(a2, v26))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v68 = v16;
  v27 = *(v24 + 8);
  if (__OFSUB__(v27, a2))
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v57 = a2 + v26;
  v60 = v21;
  if (v26 >= 1)
  {
    PackedOptionalsBuffer.resize(by:)(a3 - v25);
    if (v27 >= a2)
    {
      if (v27 != a2)
      {
        while (v27 > a2)
        {
          if (__OFADD__(--v27, v26))
          {
            goto LABEL_47;
          }

          PackedOptionalsBuffer.swapAt(_:_:)(v27, v27 + v26);
          if (a2 == v27)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_12:
      v58 = a3;
      sub_21B34B1B4();
      v64 = a4;
      v66 = a7;
      v56 = a1;
      if (a1 != a2)
      {
        v29 = v56;
        if (a2 < v56)
        {
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        if (v56 >= a2)
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v62 = (v59 + 16);
        do
        {
          v69 = (v29 + 1);
          v30 = sub_21B34B314();
          v31 = v65;
          (*v62)(v65);
          v30(v70, 0);
          PackedOptionalsBuffer.subscript.setter(v31, v29, a5);
          sub_21B34B244();
          v29 = v69;
        }

        while (a2 != v69);
      }

      if (v57 >= a2)
      {
        v32 = v67;
        if (v57 == a2)
        {
LABEL_64:
          (*(v61 + 8))(v32, v60);
          return;
        }

        if (v57 > a2)
        {
          v69 = (v59 + 16);
          v62 = (v58 + v56);
          v33 = v65;
          v34 = v67;
          do
          {
            v35 = sub_21B34B314();
            (*v69)(v33);
            v35(v70, 0);
            PackedOptionalsBuffer.subscript.setter(v33, a2, a5);
            sub_21B34B244();
            ++a2;
          }

          while (v62 != a2);
          v32 = v34;
          goto LABEL_64;
        }

        goto LABEL_88;
      }

      goto LABEL_76;
    }

    goto LABEL_73;
  }

  v62 = (v27 - a2);
  v69 = v22;
  sub_21B34B1B4();
  if (a3 < 0)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v56 = a1;
  v58 = a3;
  v36 = v63;
  v28 = v69;
  if (a3)
  {
    v64 = (v59 + 16);
    v37 = v58;
    v38 = v56;
    while (1)
    {
      v66 = v37;
      v39 = v36;
      v67 = sub_21B34B314();
      v40 = v65;
      (*v64)(v65);
      (v67)(v70, 0);
      PackedOptionalsBuffer.subscript.setter(v40, v38, a5);
      if (v38 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v38;
      sub_21B34B244();
      v37 = v66 - 1;
      v28 = v69;
      v36 = v39;
      if (v66 == 1)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_28:
  if (!v26)
  {
LABEL_48:
    v32 = v28;
    goto LABEL_64;
  }

  v41 = -v26;
  if (__OFSUB__(0, v26))
  {
    goto LABEL_75;
  }

  v42 = v58;
  if (v41 < v62)
  {
    v43 = a2 - v26;
    if (__OFADD__(a2, v41))
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if (v43 < a2)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v43 != a2)
    {
      if (v43 <= a2)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v44 = a2 - (v58 + v56);
      v45 = a2;
      while (!__OFADD__(v45, v26))
      {
        v46 = v45 + 1;
        PackedOptionalsBuffer.move(from:to:)(v45, v45 + v26);
        v45 = v46;
        if (!--v44)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_66;
    }

LABEL_38:
    v47 = v62 + a2;
    if (__OFADD__(a2, v62))
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v47 < v43)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (v43 != v47)
    {
      if (v43 >= v47)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v48 = v27 + v58 + v56 - 2 * a2;
      while (!__OFSUB__(v43, v41))
      {
        PackedOptionalsBuffer.move(from:to:)(v43, v43 + v26);
        ++v43;
        if (!--v48)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_68;
    }

LABEL_63:
    PackedOptionalsBuffer.resize(by:)(v26);
    v32 = v69;
    goto LABEL_64;
  }

  v49 = v62 + a2;
  if (__OFADD__(a2, v62))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v49 < a2)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v49 != a2)
  {
    if (v49 <= a2)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v50 = a2;
    while (!__OFADD__(v50, v26))
    {
      v51 = v50 + 1;
      PackedOptionalsBuffer.move(from:to:)(v50, v50 + v26);
      v50 = v51;
      if (v27 == v51)
      {
        goto LABEL_56;
      }
    }

    goto LABEL_67;
  }

LABEL_56:
  v52 = v62 + v57;
  if (__OFADD__(v57, v62))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v53 = v57 - v26;
  if (__OFADD__(v57, v41))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v53 < v52)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v52 == v53)
  {
    goto LABEL_63;
  }

  if (v52 < v53)
  {
    v54 = 2 * a2 - v27 - v42 - v56;
    do
    {
      v55 = v52 + 1;
      PackedOptionalsBuffer.clear(at:)(v52);
      v52 = v55;
      --v54;
    }

    while (v54);
    goto LABEL_63;
  }

LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

uint64_t sub_21B296024(uint64_t *a1, void (**a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  PackedOptionalsBuffer.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_21B2960D0(uint64_t a1, uint64_t a2)
{
  PackedOptionalsBuffer.append(_:)(a1, a2);
  v3 = sub_21B34B474();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t PackedOptionalsBuffer.customMirror.getter(uint64_t a1)
{
  v2 = sub_21B34BC44();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB0, &qword_21B353890);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB8, &qword_21B353898);
  result = swift_allocObject();
  *(result + 16) = xmmword_21B352090;
  *(result + 32) = 0x7974696361706163;
  *(result + 40) = 0xE800000000000000;
  if (v9)
  {
    v11 = MEMORY[0x277D83B88];
    *(result + 48) = *v9;
    *(result + 72) = v11;
    *(result + 80) = 0x746E756F63;
    *(result + 88) = 0xE500000000000000;
    *(result + 96) = v9[1];
    *(result + 120) = v11;
    *(result + 128) = 0x746E756F436C696ELL;
    *(result + 136) = 0xE800000000000000;
    v12 = v9[2];
    *(result + 168) = v11;
    *(result + 144) = v12;
    v14[0] = v9;
    v14[1] = v8;
    v13 = sub_21B34BC34();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_21B32F190(v4);
    return sub_21B34BC54();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B296610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B29664C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B29666C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_21B296694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B2966F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v28 = &v27 - v9;
  v33 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v30 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v32 = sub_21B34AFD4();
  v40 = v32;
  v14 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v15 = sub_21B34AFD4();
  v34 = a3;
  v16 = sub_21B2E97E8(v15, AssociatedTypeWitness, v14, a3);

  v39 = v16;
  sub_21B34B1B4();
  v17 = v38;
  sub_21B34B234();
  if (v17 == v35)
  {
    v18 = v32;
LABEL_13:

    return v18;
  }

  v19 = (v33 + 16);
  v31 = (v33 + 8);
  v32 = a2;
  v33 = v3;
  while (1)
  {
    v37 = v17;
    v20 = sub_21B34B314();
    v21 = *v19;
    (*v19)(v13);
    v20(&v35, 0);
    sub_21B34AA14();
    if (v36)
    {
      break;
    }

    v25 = v35;
    sub_21B34B054();
    sub_21B34AFC4();
    result = sub_21B305254(v25, v40, TupleTypeMetadata2);
    v26 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_15;
    }

    if (v26 < v17)
    {
      goto LABEL_17;
    }

    sub_21B28DFBC(v17, v26);
    nullsub_14();
LABEL_4:
    sub_21B34B244();
    (*v31)(v13, AssociatedTypeWitness);
    v17 = v38;
    sub_21B34B234();
    if (v17 == v35)
    {
      v18 = v40;
      goto LABEL_13;
    }
  }

  (v21)(v30, v13, AssociatedTypeWitness);
  v35 = sub_21B34B004();
  v36 = 0;
  sub_21B34AA04();
  result = sub_21B34AA24();
  v23 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    if (v23 < v17)
    {
      goto LABEL_16;
    }

    v24 = &v28[*(TupleTypeMetadata2 + 48)];
    (v21)(v28, v13, AssociatedTypeWitness);
    *v24 = v17;
    *(v24 + 1) = v23;
    v24[16] = 0;
    sub_21B34B054();
    sub_21B34B024();
    goto LABEL_4;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_21B296B98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v61 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v53 - v9;
  v10 = *(a2 + 24);
  v11 = sub_21B34B424();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v53 - v16;
  v65 = *(v6 - 8);
  MEMORY[0x28223BE20](v15);
  v67 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21B34B474();
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v68 = v10;
  v25 = type metadata accessor for _RangeSetStorage(0, v6, v10, v24);
  swift_getWitnessTable();
  v26 = sub_21B34B2B4();
  v66 = v3;
  if ((v26 & 1) == 0)
  {
    v58 = v21;
    swift_getWitnessTable();
    sub_21B34AB34();
    result = (*(v12 + 48))(v23, 1, v11);
    if (result == 1)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v28 = v65;
    v29 = v67;
    (*(v65 + 16))(v67, &v23[*(v11 + 36)], v6);
    (*(v12 + 8))(v23, v11);
    v30 = sub_21B34ABB4();
    result = (*(v28 + 8))(v29, v6);
    v21 = v58;
    if ((v30 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  result = sub_21B34B404();
  if (result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (sub_21B34B2B4())
  {
    goto LABEL_12;
  }

  swift_getWitnessTable();
  sub_21B34AB34();
  result = (*(v12 + 48))(v21, 1, v11);
  if (result != 1)
  {
    v31 = v65;
    v32 = &v21[*(v11 + 36)];
    v33 = v67;
    v58 = *(v65 + 16);
    (v58)(v67, v32, v6);
    v57 = *(v12 + 8);
    v57(v21, v11);
    v34 = sub_21B34AC54();
    v35 = v33;
    v36 = *(v31 + 8);
    v36(v35, v6);
    if (v34)
    {
      v56 = a1;
      result = sub_21B2D9D20(v25);
      if (!__OFSUB__(result, 1))
      {
        v55 = result - 1;
        v37 = sub_21B2D9D20(v25);
        v39 = __OFSUB__(v37, 1);
        result = v37 - 1;
        if (!v39)
        {
          v54 = v36;
          v40 = v63;
          sub_21B2D91CC(result, v25, v38, v63);
          v41 = v67;
          (v58)(v67, v40, v6);
          v57(v40, v11);
          v42 = *(v11 + 36);
          v43 = v56;
          result = sub_21B34ABB4();
          if (result)
          {
            v68 = *(v65 + 32);
            v44 = v59;
            v68(v59, v41, v6);
            v45 = TupleTypeMetadata2;
            (v58)(&v44[*(TupleTypeMetadata2 + 48)], v43 + v42, v6);
            v46 = v60;
            v47 = v61;
            (*(v60 + 16))(v61, v44, v45);
            v48 = *(v45 + 48);
            v68(v64, v47, v6);
            v49 = &v47[v48];
            v50 = v54;
            v54(v49, v6);
            (*(v46 + 32))(v47, v44, v45);
            v51 = v64;
            v68(&v64[*(v11 + 36)], &v47[*(v45 + 48)], v6);
            v50(v47, v6);
            return sub_21B2D9E68(v51, v55, v25, v52);
          }

          goto LABEL_17;
        }

LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_12:
    (*(v12 + 16))(v64, a1, v11);
    swift_getWitnessTable();
    return sub_21B34B374();
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2972F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _RangeSetStorage(0, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();

  return sub_21B34B2B4();
}

uint64_t sub_21B297350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = type metadata accessor for _RangeSetStorage(0, *(a1 + 16), *(a1 + 24), a3);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  (*(v6 + 16))(&v10 - v7, v3, v5);
  return (*(v6 + 32))(a2, v8, v5);
}

uint64_t sub_21B297438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v106 = a1;
  v77 = a3;
  v6 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v102 = *(TupleTypeMetadata2 - 8);
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v90 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v89 = &v74 - v10;
  v11 = *(v6 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v95 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v98 = &v74 - v15;
  MEMORY[0x28223BE20](v14);
  v101 = &v74 - v16;
  v79 = a2;
  v17 = *(a2 + 24);
  v18 = sub_21B34B424();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v104 = &v74 - v24;
  MEMORY[0x28223BE20](v23);
  v83 = &v74 - v25;
  v103 = v17;
  v27 = type metadata accessor for _RangeSetStorage(255, v6, v17, v26);
  swift_getWitnessTable();
  v28 = sub_21B34B7D4();
  v75 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v74 - v29;
  v108 = sub_21B34AFD4();
  v31 = *(*(v27 - 8) + 16);
  v78 = v4;
  v31(v30, v4, v27);
  v76 = v28;
  v32 = *(v28 + 36);
  *&v30[v32] = 0;
  v33 = v27;
  if (sub_21B2DBB54(v27))
  {
    v35 = 0;
    v82 = (v19 + 32);
    v105 = (v11 + 16);
    v36 = (v19 + 8);
    v37 = 0;
    v99 = v36;
    v100 = (v11 + 8);
    v88 = (v102 + 16);
    v87 = (v11 + 32);
    v86 = (v102 + 32);
    v81 = v30;
    v80 = v32;
    v85 = v18;
    v93 = v33;
    do
    {
      v39 = v33;
      v40 = v83;
      sub_21B2D91CC(v37, v39, v34, v83);
      v107 = v37;
      swift_getWitnessTable();
      sub_21B34B164();
      (*v82)(v104, v40, v18);
      v33 = v39;
      if (v35 >= sub_21B2DBB54(v39))
      {
        v42 = v99;
      }

      else
      {
        v42 = v99;
        do
        {
          sub_21B2D91CC(v35, v33, v41, v22);
          v43 = v101;
          (*v105)(v101, &v22[*(v18 + 36)], v6);
          (*v42)(v22, v18);
          v44 = sub_21B34ABB4();
          (*v100)(v43, v6);
          if ((v44 & 1) == 0)
          {
            break;
          }

          ++v35;
        }

        while (v35 < sub_21B2DBB54(v33));
      }

      v45 = sub_21B2DBB54(v33);
      v84 = v42 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v35 >= v45)
      {
        v94 = *v42;
      }

      else
      {
        do
        {
          sub_21B2D91CC(v35, v33, v46, v22);
          v47 = v101;
          v102 = *v105;
          v102(v101, v22, v6);
          v48 = *v42;
          (*v42)(v22, v18);
          v96 = *(v18 + 36);
          v49 = sub_21B34AB94();
          v97 = *v100;
          v97(v47, v6);
          v94 = v48;
          if ((v49 & 1) == 0)
          {
            break;
          }

          sub_21B2D91CC(v35, v33, v50, v22);
          v51 = v101;
          v102(v101, v22, v6);
          v48(v22, v18);
          v52 = v48;
          v53 = v22;
          sub_21B34BA34();
          v54 = v97;
          v97(v51, v6);
          v92 = v35;
          sub_21B2D91CC(v35, v33, v55, v22);
          v102(v51, &v22[*(v18 + 36)], v6);
          v52(v22, v18);
          sub_21B34BA44();
          v54(v51, v6);
          result = sub_21B34ABB4();
          if ((result & 1) == 0)
          {
            __break(1u);
            return result;
          }

          v57 = v89;
          v58 = v102;
          v102(v89, v98, v6);
          v59 = TupleTypeMetadata2;
          v58(&v57[*(TupleTypeMetadata2 + 48)], v95, v6);
          v60 = v90;
          (*v88)(v90, v57, v59);
          v61 = *(v59 + 48);
          v62 = *v87;
          (*v87)(v53, v60, v6);
          v63 = v97;
          v97(&v60[v61], v6);
          v64 = v57;
          v65 = v101;
          (*v86)(v60, v64, v59);
          v66 = *(v59 + 48);
          v67 = v85;
          v62(v53 + *(v85 + 36), &v60[v66], v6);
          v68 = v92;
          v63(v60, v6);
          sub_21B34B054();
          sub_21B34B024();
          sub_21B2D91CC(v68, v93, v69, v53);
          v102(v65, (v53 + *(v67 + 36)), v6);
          v70 = v67;
          v94(v53, v67);
          LOBYTE(v61) = sub_21B34AB84();
          v63(v65, v6);
          v63(v95, v6);
          v63(v98, v6);
          v33 = v93;
          if ((v61 & 1) == 0)
          {
            v18 = v70;
            v94(v104, v70);
            v22 = v53;
            v35 = v68;
            goto LABEL_5;
          }

          v71 = v68 + 1;
          v72 = v71 < sub_21B2DBB54(v93);
          v18 = v70;
          v22 = v53;
          v35 = v71;
          v42 = v99;
        }

        while (v72);
      }

      v94(v104, v18);
LABEL_5:
      v30 = v81;
      v38 = sub_21B2DBB54(v33);
      v37 = *&v30[v80];
    }

    while (v37 != v38);
  }

  (*(v75 + 8))(v30, v76);
  sub_21B2987A4(v108, v6, v103, v77, v73);
  return (*(*(v79 - 8) + 8))(v78);
}

uint64_t sub_21B297EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  sub_21B2D9BF0(a2, a3, a3, a5);
  v9 = sub_21B34B424();
  if (sub_21B34B404())
  {
    v11 = *(*(v9 - 8) + 8);

    return v11(a1, v9);
  }

  else
  {
    v13 = type metadata accessor for _RangeSetStorage(0, a2, a3, v10);
    (*(*(v13 - 8) + 8))(a4, v13);

    return sub_21B2D9C3C(a1, a2, a3, a4);
  }
}

uint64_t sub_21B297FB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = sub_21B34B424();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - v11;
  v22 = v3;
  v23 = v8;
  v20[1] = a1;
  v24 = a1;
  v14 = type metadata accessor for _RangeSetStorage(0, v3, v8, v13);
  WitnessTable = swift_getWitnessTable();
  sub_21B2D3090(sub_21B2990B8, v21, v14, WitnessTable, &v25);
  v16 = v25;
  if (v16 == sub_21B2DBB54(v14))
  {
    v18 = 0;
  }

  else
  {
    sub_21B2D91CC(v16, v14, v17, v12);
    (*(v4 + 16))(v6, v12, v3);
    (*(v10 + 8))(v12, v9);
    v18 = sub_21B34ABB4();
    (*(v4 + 8))(v6, v3);
  }

  return v18 & 1;
}

uint64_t sub_21B2981F4(uint64_t a1)
{
  v51 = a1;
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = sub_21B34B424();
  v55 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = sub_21B34B474();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v56 = v2;
  v57 = v1;
  v14 = type metadata accessor for _RangeSet.Ranges(255, v1, v2, v13);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_21B34BB44();
  v54 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v50 = &v40 - v17;
  v52 = *(v14 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v48 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - v20;
  v22 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v60 = v14;
  v61 = v15;
  v43 = v14;
  v45 = v15;
  v46 = v23;
  v62 = v22;
  v63 = v23;
  v47 = v22;
  v24 = v23;
  v49 = sub_21B34B674();
  MEMORY[0x28223BE20](v49);
  v44 = &v40 - v25;
  v60 = v14;
  v61 = v15;
  v62 = v22;
  v63 = v24;
  v58 = sub_21B34B664();
  v41 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v59 = &v40 - v26;
  v42 = v21;
  v27 = v51;
  sub_21B297350(v51, v21, v28);
  sub_21B297350(v27, v48, v29);
  v30 = v50;
  v31 = v43;
  sub_21B34B2D4();
  v32 = v45;
  sub_21B34BA54();
  (*(v54 + 8))(v30, v32);
  (*(v52 + 8))(v42, v31);
  sub_21B34B644();
  v33 = (v55 + 32);
  v34 = (v55 + 8);
  while (1)
  {
    sub_21B34B654();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v12, 1, TupleTypeMetadata2) == 1)
    {
      return (*(v41 + 8))(v59, v58);
    }

    v35 = *(TupleTypeMetadata2 + 48);
    v36 = *v33;
    (*v33)(v8, v12, v3);
    v36(v6, &v12[v35], v3);
    result = sub_21B34B404();
    if (result)
    {
      break;
    }

    result = sub_21B34B404();
    if (result)
    {
      goto LABEL_9;
    }

    v38 = sub_21B34AB94();
    v39 = *v34;
    (*v34)(v6, v3);
    v39(v8, v3);
    if ((v38 & 1) == 0)
    {
      __break(1u);
      return (*(v41 + 8))(v59, v58);
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21B2987A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  sub_21B2D9BF0(a2, a3, a3, a5);
  v10 = type metadata accessor for _RangeSetStorage(0, a2, a3, v9);
  (*(*(v10 - 8) + 8))(a4, v10);
  sub_21B2D9CD8(a1, a2, a3, v11, a4);
  v13 = type metadata accessor for _RangeSet(0, a2, a3, v12);
  return sub_21B2981F4(v13);
}

uint64_t sub_21B298854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _RangeSetStorage(0, *(a2 + 16), *(a2 + 24), a4);

  return sub_21B2DABCC(a1, v6, a3);
}

uint64_t sub_21B2988AC(uint64_t a1, uint64_t a2)
{
  sub_21B34BBC4();
  v5 = type metadata accessor for _RangeSetStorage(0, *(a1 + 16), *(a1 + 24), v4);
  sub_21B2DABCC(v7, v5, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B29892C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_21B34BBC4();
  sub_21B298854(v7, a2, v4, v5);
  return sub_21B34BC24();
}

uint64_t sub_21B298980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _RangeSetStorage(0, *(a1 + 16), *(a1 + 24), a4);

  return sub_21B2DBB54(v4);
}

uint64_t sub_21B2989B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_21B298A38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_21B298980(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

void (*sub_21B298A60(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B298AE8(v6, *a2, a3);
  return sub_21B285370;
}

void (*sub_21B298AE8(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = sub_21B34B424();
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v11 = v9;
  a1[2] = v9;
  v12 = type metadata accessor for _RangeSetStorage(0, v5, v6, v10);
  sub_21B2D91CC(a2, v12, v13, v11);
  return sub_21B2854A4;
}

void *sub_21B298BD8()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

uint64_t sub_21B298C48(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_21B34B164();
}

uint64_t sub_21B298CD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_21B298D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_21B34B7D4();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21B298DD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B298E28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_21B2DBAB0(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_21B298EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 24);
  v13 = *(a1 + 16);
  v14 = v4;
  v5 = type metadata accessor for _RangeSetStorage(0, v13, v4, a4);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_21B2FCC28(sub_21B299128, &v12, v5, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  sub_21B299148();
  v8 = sub_21B34AB74();
  v10 = v9;

  v15 = 0x655365676E61525FLL;
  v16 = 0xEA00000000002874;
  MEMORY[0x21CEED5E0](v8, v10);

  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  return v15;
}

uint64_t sub_21B298FE4@<X0>(void *a4@<X8>)
{
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](3943982, 0xE300000000000000);
  sub_21B34B424();
  result = sub_21B34B9C4();
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  return result;
}

unint64_t sub_21B299148()
{
  result = qword_27CD7E848;
  if (!qword_27CD7E848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E840, &qword_21B352A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E848);
  }

  return result;
}

uint64_t sub_21B2991AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for _RangeSetStorage(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B29921C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = 8;
  if (((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64) > 8)
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 3)
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
    goto LABEL_25;
  }

LABEL_14:
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

  return (v4 | v9) + 254;
}

void sub_21B299370(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_21B299740(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_21B299788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B299824(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_21B29986C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2998F4(uint64_t result)
{
  v2 = *(v1 + 25);
  v3 = *(v1 + 27);
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(v4, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v1 + 26) >= v4 + result)
  {
    v5 = v4 + result;
  }

  else
  {
    v5 = *(v1 + 26);
  }

  v6 = v5 - v4;
  if (v5 < v4)
  {
    goto LABEL_12;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = __OFADD__(v3, v6);
  v8 = v3 + v6;
  if (!v7)
  {
    v9 = v1[3];
    v10 = v1[5];
    v30 = v1[4];
    v31 = v10;
    v11 = v1[1];
    v27[0] = *v1;
    v27[1] = v11;
    v12 = v1[3];
    v14 = *v1;
    v13 = v1[1];
    v28 = v1[2];
    v15 = v28;
    v29 = v12;
    v16 = v1[5];
    v24 = v30;
    v25 = v16;
    v20 = v14;
    v21 = v13;
    *(v1 + 27) = v8;
    v32 = *(v1 + 12);
    v26 = *(v1 + 12);
    v22 = v15;
    v23 = v9;
    v17 = *(v1 + 24);
    sub_21B23325C(v27, v18);
    sub_21B279460(v17, v4, v5, &v20, v1);
    v18[4] = v24;
    v18[5] = v25;
    v19 = v26;
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    v18[3] = v23;
    return sub_21B299E64(v18);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_21B299A1C(uint64_t result)
{
  v2 = *(v1 + 26);
  v3 = *(v1 + 28);
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(v4, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v1 + 27) >= v4 + result)
  {
    v5 = v4 + result;
  }

  else
  {
    v5 = *(v1 + 27);
  }

  v6 = v5 - v4;
  if (v5 < v4)
  {
    goto LABEL_12;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = __OFADD__(v3, v6);
  v8 = v3 + v6;
  if (!v7)
  {
    v9 = v1[3];
    v10 = v1[5];
    v30 = v1[4];
    v31 = v10;
    v11 = v1[1];
    v27[0] = *v1;
    v27[1] = v11;
    v12 = v1[3];
    v14 = *v1;
    v13 = v1[1];
    v28 = v1[2];
    v15 = v28;
    v29 = v12;
    v16 = v1[5];
    v24 = v30;
    v25 = v16;
    v20 = v14;
    v21 = v13;
    *(v1 + 28) = v8;
    v32 = *(v1 + 12);
    v26 = *(v1 + 12);
    v22 = v15;
    v23 = v9;
    v17 = *(v1 + 25);
    sub_21B23325C(v27, v18);
    sub_21B279E98(v17, v4, v5, &v20);
    v18[4] = v24;
    v18[5] = v25;
    v19 = v26;
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    v18[3] = v23;
    return sub_21B299E64(v18);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_21B299B44(uint64_t result, void (*a2)(uint64_t, uint64_t, uint64_t, __int128 *, __int128 *))
{
  v3 = *(v2 + 23);
  v4 = *(v2 + 25);
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(v5, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v2 + 24) >= v5 + result)
  {
    v6 = v5 + result;
  }

  else
  {
    v6 = *(v2 + 24);
  }

  v7 = v6 - v5;
  if (v6 < v5)
  {
    goto LABEL_12;
  }

  if (__OFSUB__(v6, v5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFADD__(v4, v7);
  v9 = v4 + v7;
  if (!v8)
  {
    v11 = v2[3];
    v12 = v2[5];
    v32 = v2[4];
    v33 = v12;
    v13 = v2[1];
    v29[0] = *v2;
    v29[1] = v13;
    v14 = v2[3];
    v16 = *v2;
    v15 = v2[1];
    v30 = v2[2];
    v17 = v30;
    v31 = v14;
    v18 = v2[5];
    v26 = v32;
    v27 = v18;
    v22 = v16;
    v23 = v15;
    *(v2 + 25) = v9;
    v34 = *(v2 + 12);
    v28 = *(v2 + 12);
    v24 = v17;
    v25 = v11;
    v19 = *(v2 + 22);
    sub_21B23325C(v29, v20);
    a2(v19, v5, v6, &v22, v2);
    v20[4] = v26;
    v20[5] = v27;
    v21 = v28;
    v20[0] = v22;
    v20[1] = v23;
    v20[2] = v24;
    v20[3] = v25;
    return sub_21B299E64(v20);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_21B299CB4@<X0>(void *a1@<X8>)
{
  v4 = v1[28];
  v3 = v1[29];
  v5 = v1[30];
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E150, &unk_21B3526D0);
  a1[4] = &off_282CAA128;
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
}

uint64_t sub_21B299D28(uint64_t a1, uint64_t a2)
{

  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return result;
}

uint64_t sub_21B299DCC@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v6 = v3[26];
  v5 = v3[27];
  v7 = v3[28];
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  a3[4] = &off_282CAA128;
  *a3 = v6;
  a3[1] = v5;
  a3[2] = v7;
}

uint64_t sub_21B299F44(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  sub_21B254034(0, v5, 0);
  v6 = v17;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v15[0] = *(i - 1);
    v15[1] = v10;

    a1(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21B254034((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B29A070(void (*a1)(void *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v25 = MEMORY[0x277D84F90];
    sub_21B254328(0, v4, 0);
    v5 = v25;
    for (i = a3 + 32; ; i += 40)
    {
      a1(v21, i, &v20);
      if (v3)
      {
        break;
      }

      v9 = v21[0];
      v8 = v21[1];
      v10 = v22;
      v11 = v23;
      v12 = v24;
      v25 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        v18 = v23;
        v17 = v22;
        sub_21B254328((v13 > 1), v14 + 1, 1);
        v10 = v17;
        v11 = v18;
        v5 = v25;
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 48 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v8;
      *(v15 + 48) = v10;
      *(v15 + 56) = v11;
      *(v15 + 72) = v12;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

TabularData::DataFrame __swiftcall DataFrame.summary()()
{
  v2 = sub_21B29A1B0(*v1, v0);
  result.columnIndicesByName._rawValue = v4;
  result.aliases._rawValue = v3;
  result.columns._rawValue = v2;
  return result;
}

uint64_t sub_21B29A1B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v130 = 0x6E6D756C6F63;
  v131 = 0xE600000000000000;
  v4 = MEMORY[0x277D84F90];
  v132 = sub_21B25DFE0(MEMORY[0x277D84F90]);
  sub_21B2FD5CC(v3);
  v127 = 1851876717;
  v128 = 0xE400000000000000;
  sub_21B25E224(v4);
  v129 = v5;
  sub_21B2FD590(v3);
  v124 = 6583411;
  v125 = 0xE300000000000000;
  sub_21B25E224(v4);
  v126 = v6;
  sub_21B2FD590(v3);
  v121 = 7235949;
  v122 = 0xE300000000000000;
  sub_21B25E224(v4);
  v123 = v7;
  sub_21B2FD590(v3);
  v118 = 7889261;
  v119 = 0xE300000000000000;
  sub_21B25E224(v4);
  v120 = v8;
  sub_21B2FD590(v3);
  v115 = 0x6E616964656DLL;
  v116 = 0xE600000000000000;
  sub_21B25E224(v4);
  v117 = v9;
  sub_21B2FD590(v3);
  v112 = 12625;
  v113 = 0xE200000000000000;
  sub_21B25E224(v4);
  v114 = v10;
  sub_21B2FD590(v3);
  v109 = 13137;
  v110 = 0xE200000000000000;
  sub_21B25E224(v4);
  v111 = v11;
  sub_21B2FD590(v3);
  v106 = 1701080941;
  v107 = 0xE400000000000000;
  v108 = sub_21B25E44C(v4);
  sub_21B2FD4BC(v3);
  v103 = 0x6F43657571696E75;
  v104 = 0xEB00000000746E75;
  sub_21B234EF8(v4);
  v105 = v12;
  sub_21B2351E8(v3);
  v100 = 0x6E756F43656E6F6ELL;
  v101 = 0xE900000000000074;
  sub_21B234EF8(v4);
  v102 = v13;
  sub_21B2351E8(v3);
  v97 = 0x6E756F43656D6F73;
  v98 = 0xE900000000000074;
  sub_21B234EF8(v4);
  v99 = v14;
  sub_21B2351E8(v3);
  if (!v3)
  {
LABEL_31:
    v62 = MEMORY[0x277D84F90];
    *a2 = MEMORY[0x277D84F90];
    a2[1] = v62;
    a2[2] = sub_21B25DC2C(v62);
    v64 = v130;
    v63 = v131;
    v65 = v132;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
    v87 = &off_282CAA128;
    v83 = v64;
    v84 = v63;
    v85 = v65;

    DataFrame.append(column:)(&v83);
    sub_21B233960(&v83);
    v67 = v127;
    v66 = v128;
    v68 = v129;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
    v86 = v69;
    v87 = &off_282CAA128;
    v83 = v67;
    v84 = v66;
    v85 = v68;

    DataFrame.append(column:)(&v83);
    sub_21B233960(&v83);
    v86 = v69;
    v87 = &off_282CAA128;
    v83 = v124;
    v84 = v125;
    v85 = v126;

    DataFrame.append(column:)(&v83);
    sub_21B233960(&v83);
    v86 = v69;
    v87 = &off_282CAA128;
    v83 = v121;
    v84 = v122;
    v85 = v123;

    DataFrame.append(column:)(&v83);
    sub_21B233960(&v83);
    v86 = v69;
    v87 = &off_282CAA128;
    v83 = v118;
    v84 = v119;
    v85 = v120;

    DataFrame.append(column:)(&v83);
    sub_21B233960(&v83);
    v86 = v69;
    v87 = &off_282CAA128;
    v83 = v115;
    v84 = v116;
    v85 = v117;

    DataFrame.append(column:)(&v83);
    sub_21B233960(&v83);
    v86 = v69;
    v87 = &off_282CAA128;
    v83 = v112;
    v84 = v113;
    v85 = v114;

    DataFrame.append(column:)(&v83);
    sub_21B233960(&v83);
    v86 = v69;
    v87 = &off_282CAA128;
    v83 = v109;
    v84 = v110;
    v85 = v111;

    DataFrame.append(column:)(&v83);
    sub_21B233960(&v83);
    v70 = v106;
    v71 = v107;
    v72 = v108;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EBC8, &qword_21B3542A0);
    v87 = &off_282CAA128;
    v83 = v70;
    v84 = v71;
    v85 = v72;

    DataFrame.append(column:)(&v83);
    sub_21B233960(&v83);
    v74 = v103;
    v73 = v104;
    v75 = v105;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
    v86 = v76;
    v87 = &off_282CAA128;
    v83 = v74;
    v84 = v73;
    v85 = v75;

    DataFrame.append(column:)(&v83);
    sub_21B233960(&v83);
    v86 = v76;
    v87 = &off_282CAA128;
    v83 = v100;
    v84 = v101;
    v85 = v102;

    DataFrame.append(column:)(&v83);
    sub_21B233960(&v83);
    v86 = v76;
    v87 = &off_282CAA128;
    v83 = v97;
    v84 = v98;
    v85 = v99;

    DataFrame.append(column:)(&v83);

    return sub_21B233960(&v83);
  }

  v15 = 0;
  v16 = a1 + 32;
  while (1)
  {
    sub_21B233A74(v16, v94);
    v17 = v95;
    v18 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    v19 = (*(*(v18 + 8) + 8))(v17);
    sub_21B22E8E4(v19, v20);

    sub_21B26CA90(&v83);
    v21 = v83;
    v22 = v84;
    v23 = v85;

    sub_21B2FE8E0();

    sub_21B235528(v23, 0);
    sub_21B235528(v22, 0);
    sub_21B235528(v21, 0);

    sub_21B233A10(v94, v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E160, &unk_21B352A10);
    if (swift_dynamicCast())
    {
      v41 = v92;
      result = swift_beginAccess();
      v42 = *(v41 + 16);
      if (!v42)
      {
        goto LABEL_36;
      }

      v43 = *v42 + 7;
      if (__OFADD__(*v42, 7))
      {
        goto LABEL_33;
      }

      if (v43 < 0)
      {
        v43 = *v42 + 14;
      }

      v44 = v43 >> 3;
      v45 = v44 - 1;
      v29 = v44 < 1;
      v46 = v44 + 62;
      if (!v29)
      {
        v46 = v45;
      }

      sub_21B29C5B8(v42 + (v46 & 0xFFFFFFFFFFFFFFC0) + 128, *v42, v41, &v83);
      v47 = v85;
      v48 = *&v86;
      v49 = v87;
      v50 = *&v88;
      sub_21B2FE174(COERCE__INT64(*(&v86 + 1)), 0);
      sub_21B2FE174(COERCE__INT64(*&v49), 0);
      sub_21B2FE174(COERCE__INT64(*(&v49 + 1)), 0);
      sub_21B2FE174(COERCE__INT64(v50), 0);
      sub_21B2FE174(COERCE__INT64(*&v47), 0);
      sub_21B2FE174(COERCE__INT64(*(&v47 + 1)), 0);
      sub_21B2FE174(COERCE__INT64(v48), 0);

      goto LABEL_4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_21B2FE174(0, 1);
      sub_21B2FE174(0, 1);
      sub_21B2FE174(0, 1);
      sub_21B2FE174(0, 1);
      sub_21B2FE174(0, 1);
      sub_21B2FE174(0, 1);
      sub_21B2FE174(0, 1);
      goto LABEL_5;
    }

    v51 = v92;
    result = swift_beginAccess();
    v52 = *(v51 + 16);
    if (!v52)
    {
      goto LABEL_37;
    }

    v53 = *v52 + 7;
    if (__OFADD__(*v52, 7))
    {
      goto LABEL_34;
    }

    if (v53 < 0)
    {
      v53 = *v52 + 14;
    }

    v54 = v53 >> 3;
    v55 = v54 - 1;
    v29 = v54 < 1;
    v56 = v54 + 62;
    if (!v29)
    {
      v56 = v55;
    }

    sub_21B29D880(v52 + (v56 & 0xFFFFFFFFFFFFFFC0) + 128, *v52, v51, &v83);
    v82 = v16;
    v57 = v85;
    v78 = v86;
    v80 = v87;
    v58 = v89;
    v59 = v90;
    v60 = v91;
    sub_21B2FE174(v88, 0);
    sub_21B2FE174(v58, 0);
    sub_21B2FE174(v59, 0);
    sub_21B2FE174(v60, 0);
    v61 = v57;
    v16 = v82;
    sub_21B2FE174(v61, 0);
    sub_21B2FE174(v78, 0);
    v40 = v80;
LABEL_3:
    sub_21B2FE174(v40, 0);

LABEL_4:

LABEL_5:
    sub_21B233960(v94);
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    v16 += 40;
    if (!--v3)
    {
      goto LABEL_31;
    }
  }

  v24 = v92;
  result = swift_beginAccess();
  v26 = *(v24 + 16);
  if (!v26)
  {
    goto LABEL_35;
  }

  v27 = *v26 + 7;
  if (!__OFADD__(*v26, 7))
  {
    if (v27 < 0)
    {
      v27 = *v26 + 14;
    }

    v28 = v27 >> 3;
    v30 = v28 - 1;
    v29 = v28 < 1;
    v31 = v28 + 62;
    if (!v29)
    {
      v31 = v30;
    }

    sub_21B29C7E0(v26 + (v31 & 0xFFFFFFFFFFFFFFC0) + 128, *v26, v24, &v83);
    v32 = v15;
    v33 = v85;
    v34 = v86;
    v79 = v87;
    v81 = v3;
    v35 = v16;
    v37 = v89;
    v36 = v90;
    v38 = v91;
    sub_21B2FE174(v88, 0);
    sub_21B2FE174(v37, 0);
    v39 = v36;
    v16 = v35;
    v15 = v32;
    sub_21B2FE174(v39, 0);
    sub_21B2FE174(v38, 0);
    sub_21B2FE174(v33, 0);
    sub_21B2FE174(v34, 0);
    v40 = v79;
    v3 = v81;
    goto LABEL_3;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t DataFrame.summary(of:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = a2;
    v13 = MEMORY[0x277D84F90];
    sub_21B254034(0, v2, 0);
    v3 = v13;
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v8 = sub_21B23AC94(v6, v7);

      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_21B254034((v9 > 1), v10 + 1, 1);
      }

      *(v13 + 16) = v10 + 1;
      *(v13 + 8 * v10 + 32) = v8;
      v5 += 2;
      --v2;
    }

    while (v2);
    a2 = v12;
  }

  sub_21B29AEEC(v3, a2);
}

uint64_t sub_21B29AEEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = a2;
    v7 = *v2;
    v19 = MEMORY[0x277D84F90];
    result = sub_21B254088(0, v3, 0);
    v4 = v19;
    v9 = (a1 + 32);
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      if ((v11 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v10 >= *(v7 + 16))
      {
        goto LABEL_11;
      }

      result = sub_21B233A74(v7 + 32 + 40 * v10, v17);
      v19 = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_21B254088((v12 > 1), v13 + 1, 1);
        v4 = v19;
      }

      *(v4 + 16) = v13 + 1;
      v14 = v4 + 40 * v13;
      v15 = v17[0];
      v16 = v17[1];
      *(v14 + 64) = v18;
      *(v14 + 32) = v15;
      *(v14 + 48) = v16;
      if (!--v3)
      {
        a2 = v6;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:
    sub_21B29A1B0(v4, a2);
  }

  return result;
}

TabularData::DataFrame __swiftcall DataFrame.Slice.summary()()
{
  v1 = v0;
  v2 = DataFrame.Slice.columns.getter();
  sub_21B29B0B4(v2, v1);

  result.columnIndicesByName._rawValue = v5;
  result.aliases._rawValue = v4;
  result.columns._rawValue = v3;
  return result;
}

uint64_t sub_21B29B0B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v160 = 0x6E6D756C6F63;
  v161 = 0xE600000000000000;
  v4 = MEMORY[0x277D84F90];
  v162 = sub_21B25DFE0(MEMORY[0x277D84F90]);
  sub_21B2FD5CC(v3);
  v157 = 1851876717;
  v158 = 0xE400000000000000;
  sub_21B25E224(v4);
  v159 = v5;
  sub_21B2FD590(v3);
  v154 = 6583411;
  v155 = 0xE300000000000000;
  sub_21B25E224(v4);
  v156 = v6;
  sub_21B2FD590(v3);
  v151 = 7235949;
  v152 = 0xE300000000000000;
  sub_21B25E224(v4);
  v153 = v7;
  sub_21B2FD590(v3);
  v148 = 7889261;
  v149 = 0xE300000000000000;
  sub_21B25E224(v4);
  v150 = v8;
  sub_21B2FD590(v3);
  v145 = 0x6E616964656DLL;
  v146 = 0xE600000000000000;
  sub_21B25E224(v4);
  v147 = v9;
  sub_21B2FD590(v3);
  v142 = 12625;
  v143 = 0xE200000000000000;
  sub_21B25E224(v4);
  v144 = v10;
  sub_21B2FD590(v3);
  v139 = 13137;
  v140 = 0xE200000000000000;
  sub_21B25E224(v4);
  v141 = v11;
  sub_21B2FD590(v3);
  v136 = 1701080941;
  v137 = 0xE400000000000000;
  v138 = sub_21B25E44C(v4);
  sub_21B2FD4BC(v3);
  v133 = 0x6F43657571696E75;
  v134 = 0xEB00000000746E75;
  sub_21B234EF8(v4);
  v135 = v12;
  sub_21B2351E8(v3);
  v130 = 0x6E756F43656E6F6ELL;
  v131 = 0xE900000000000074;
  sub_21B234EF8(v4);
  v132 = v13;
  sub_21B2351E8(v3);
  v127 = 0x6E756F43656D6F73;
  v128 = 0xE900000000000074;
  sub_21B234EF8(v4);
  v129 = v14;
  sub_21B2351E8(v3);
  if (!v3)
  {
LABEL_55:
    v96 = MEMORY[0x277D84F90];
    *a2 = MEMORY[0x277D84F90];
    a2[1] = v96;
    a2[2] = sub_21B25DC2C(v96);
    v97 = v160;
    v98 = v161;
    v99 = v162;
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
    v116 = &off_282CAA128;
    v112 = v97;
    v113 = v98;
    v114 = v99;

    DataFrame.append(column:)(&v112);
    sub_21B233960(&v112);
    v100 = v157;
    v101 = v158;
    v102 = v159;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
    v115 = v103;
    v116 = &off_282CAA128;
    v112 = v100;
    v113 = v101;
    v114 = v102;

    DataFrame.append(column:)(&v112);
    sub_21B233960(&v112);
    v115 = v103;
    v116 = &off_282CAA128;
    v112 = v154;
    v113 = v155;
    v114 = v156;

    DataFrame.append(column:)(&v112);
    sub_21B233960(&v112);
    v115 = v103;
    v116 = &off_282CAA128;
    v112 = v151;
    v113 = v152;
    v114 = v153;

    DataFrame.append(column:)(&v112);
    sub_21B233960(&v112);
    v115 = v103;
    v116 = &off_282CAA128;
    v112 = v148;
    v113 = v149;
    v114 = v150;

    DataFrame.append(column:)(&v112);
    sub_21B233960(&v112);
    v115 = v103;
    v116 = &off_282CAA128;
    v112 = v145;
    v113 = v146;
    v114 = v147;

    DataFrame.append(column:)(&v112);
    sub_21B233960(&v112);
    v115 = v103;
    v116 = &off_282CAA128;
    v112 = v142;
    v113 = v143;
    v114 = v144;

    DataFrame.append(column:)(&v112);
    sub_21B233960(&v112);
    v115 = v103;
    v116 = &off_282CAA128;
    v112 = v139;
    v113 = v140;
    v114 = v141;

    DataFrame.append(column:)(&v112);
    sub_21B233960(&v112);
    v104 = v136;
    v105 = v137;
    v106 = v138;
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EBC8, &qword_21B3542A0);
    v116 = &off_282CAA128;
    v112 = v104;
    v113 = v105;
    v114 = v106;

    DataFrame.append(column:)(&v112);
    sub_21B233960(&v112);
    v108 = v133;
    v107 = v134;
    v109 = v135;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
    v115 = v110;
    v116 = &off_282CAA128;
    v112 = v108;
    v113 = v107;
    v114 = v109;

    DataFrame.append(column:)(&v112);
    sub_21B233960(&v112);
    v115 = v110;
    v116 = &off_282CAA128;
    v112 = v130;
    v113 = v131;
    v114 = v132;

    DataFrame.append(column:)(&v112);
    sub_21B233960(&v112);
    v115 = v110;
    v116 = &off_282CAA128;
    v112 = v127;
    v113 = v128;
    v114 = v129;

    DataFrame.append(column:)(&v112);

    return sub_21B233960(&v112);
  }

  v15 = a1 + 32;
  while (1)
  {
    sub_21B25EFA4(v15, v124);
    v16 = v125;
    v17 = v126;
    __swift_project_boxed_opaque_existential_1(v124, v125);
    v18 = (*(*(v17 + 8) + 8))(v16);
    sub_21B22E8E4(v18, v19);

    AnyColumnSlice.summary()(&v112);
    v20 = v112;
    v21 = v113;
    v22 = v114;

    sub_21B2FE8E0();

    sub_21B235528(v22, 0);
    sub_21B235528(v21, 0);
    sub_21B235528(v20, 0);

    sub_21B233A10(v124, v123);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E718, &qword_21B352338);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E738, &qword_21B352358);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E730, &qword_21B352350);
    if (swift_dynamicCast())
    {
      v165[0] = v121;
      v165[1] = *v122;
      v40 = *&v122[16];
      v166 = *&v122[16];
      result = swift_beginAccess();
      v41 = *(v40 + 16);
      if (!v41)
      {
        goto LABEL_63;
      }

      v42 = *v41 + 7;
      if (__OFADD__(*v41, 7))
      {
        goto LABEL_57;
      }

      if (v42 < 0)
      {
        v42 = *v41 + 14;
      }

      v43 = v42 >> 3;
      v44 = v43 - 1;
      v28 = v43 < 1;
      v45 = v43 + 62;
      if (!v28)
      {
        v45 = v44;
      }

      sub_21B29CA08(v41 + (v45 & 0xFFFFFFFFFFFFFFC0) + 128, v165, &v112);
      v46 = v114;
      v47 = *&v115;
      v48 = v116;
      v49 = *&v117;
      sub_21B2FE174(COERCE__INT64(*(&v115 + 1)), 0);
      sub_21B2FE174(COERCE__INT64(*&v48), 0);
      sub_21B2FE174(COERCE__INT64(*(&v48 + 1)), 0);
      sub_21B2FE174(COERCE__INT64(v49), 0);
      sub_21B2FE174(COERCE__INT64(*&v46), 0);
      sub_21B2FE174(COERCE__INT64(*(&v46 + 1)), 0);
      sub_21B2FE174(COERCE__INT64(v47), 0);
      v37 = v165;
      v38 = &qword_27CD7E730;
      v39 = &qword_21B352350;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E720, &qword_21B352340);
      if (swift_dynamicCast())
      {
        v167[0] = v121;
        v167[1] = *v122;
        v50 = *&v122[16];
        v168 = *&v122[16];
        result = swift_beginAccess();
        v51 = *(v50 + 16);
        if (!v51)
        {
          goto LABEL_64;
        }

        v52 = *v51 + 7;
        if (__OFADD__(*v51, 7))
        {
          goto LABEL_58;
        }

        if (v52 < 0)
        {
          v52 = *v51 + 14;
        }

        v53 = v52 >> 3;
        v54 = v53 - 1;
        v28 = v53 < 1;
        v55 = v53 + 62;
        if (!v28)
        {
          v55 = v54;
        }

        sub_21B29DA98(v51 + (v55 & 0xFFFFFFFFFFFFFFC0) + 128, v167, &v112);
        v56 = v114;
        v57 = v115;
        v58 = v116;
        v59 = v118;
        v60 = v119;
        v61 = v120;
        sub_21B2FE174(v117, 0);
        sub_21B2FE174(v59, 0);
        sub_21B2FE174(v60, 0);
        sub_21B2FE174(v61, 0);
        sub_21B2FE174(v56, 0);
        sub_21B2FE174(v57, 0);
        sub_21B2FE174(v58, 0);
        v37 = v167;
        v38 = &qword_27CD7E720;
        v39 = &qword_21B352340;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6F8, &qword_21B352318);
        if (swift_dynamicCast())
        {
          v169 = v121;
          v170[0] = *v122;
          *(v170 + 9) = *&v122[9];
          v62 = *v122;
          result = swift_beginAccess();
          v63 = *(v62 + 16);
          if (!v63)
          {
            goto LABEL_65;
          }

          v64 = *v63 + 7;
          if (__OFADD__(*v63, 7))
          {
            goto LABEL_59;
          }

          if (v64 < 0)
          {
            v64 = *v63 + 14;
          }

          v65 = v64 >> 3;
          v66 = v65 - 1;
          v28 = v65 < 1;
          v67 = v65 + 62;
          if (!v28)
          {
            v67 = v66;
          }

          sub_21B29D3FC(v63 + (v67 & 0xFFFFFFFFFFFFFFC0) + 128, &v169, &v112);
          v68 = v114;
          v69 = v115;
          v70 = v116;
          v71 = v118;
          v72 = v119;
          v73 = v120;
          sub_21B2FE174(v117, 0);
          sub_21B2FE174(v71, 0);
          sub_21B2FE174(v72, 0);
          sub_21B2FE174(v73, 0);
          sub_21B2FE174(v68, 0);
          sub_21B2FE174(v69, 0);
          sub_21B2FE174(v70, 0);
          v37 = &v169;
          v38 = &qword_27CD7E6F8;
          v39 = &qword_21B352318;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E700, &qword_21B352320);
          if (swift_dynamicCast())
          {
            v171 = v121;
            v172[0] = *v122;
            *(v172 + 9) = *&v122[9];
            v74 = *v122;
            result = swift_beginAccess();
            v75 = *(v74 + 16);
            if (!v75)
            {
              goto LABEL_66;
            }

            v76 = *v75 + 7;
            if (__OFADD__(*v75, 7))
            {
              goto LABEL_60;
            }

            if (v76 < 0)
            {
              v76 = *v75 + 14;
            }

            v77 = v76 >> 3;
            v78 = v77 - 1;
            v28 = v77 < 1;
            v79 = v77 + 62;
            if (!v28)
            {
              v79 = v78;
            }

            sub_21B29CF78(v75 + (v79 & 0xFFFFFFFFFFFFFFC0) + 128, &v171, &v112);
            v80 = v114;
            v81 = *&v115;
            v82 = v116;
            v83 = *&v117;
            sub_21B2FE174(COERCE__INT64(*(&v115 + 1)), 0);
            sub_21B2FE174(COERCE__INT64(*&v82), 0);
            sub_21B2FE174(COERCE__INT64(*(&v82 + 1)), 0);
            sub_21B2FE174(COERCE__INT64(v83), 0);
            sub_21B2FE174(COERCE__INT64(*&v80), 0);
            sub_21B2FE174(COERCE__INT64(*(&v80 + 1)), 0);
            sub_21B2FE174(COERCE__INT64(v81), 0);
            v37 = &v171;
            v38 = &qword_27CD7E700;
            v39 = &qword_21B352320;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E710, &qword_21B352330);
            if ((swift_dynamicCast() & 1) == 0)
            {
              sub_21B2FE174(0, 1);
              sub_21B2FE174(0, 1);
              sub_21B2FE174(0, 1);
              sub_21B2FE174(0, 1);
              sub_21B2FE174(0, 1);
              sub_21B2FE174(0, 1);
              sub_21B2FE174(0, 1);
              goto LABEL_52;
            }

            v173 = v121;
            v174[0] = *v122;
            *(v174 + 9) = *&v122[9];
            v84 = *v122;
            result = swift_beginAccess();
            v85 = *(v84 + 16);
            if (!v85)
            {
              goto LABEL_67;
            }

            v86 = *v85 + 7;
            if (__OFADD__(*v85, 7))
            {
              goto LABEL_61;
            }

            if (v86 < 0)
            {
              v86 = *v85 + 14;
            }

            v87 = v86 >> 3;
            v88 = v87 - 1;
            v28 = v87 < 1;
            v89 = v87 + 62;
            if (!v28)
            {
              v89 = v88;
            }

            sub_21B29DD4C(v85 + (v89 & 0xFFFFFFFFFFFFFFC0) + 128, &v173, &v112);
            v90 = v114;
            v91 = v115;
            v92 = v116;
            v93 = v118;
            v94 = v119;
            v95 = v120;
            sub_21B2FE174(v117, 0);
            sub_21B2FE174(v93, 0);
            sub_21B2FE174(v94, 0);
            sub_21B2FE174(v95, 0);
            sub_21B2FE174(v90, 0);
            sub_21B2FE174(v91, 0);
            sub_21B2FE174(v92, 0);
            v37 = &v173;
            v38 = &qword_27CD7E710;
            v39 = &qword_21B352330;
          }
        }
      }
    }

LABEL_51:
    sub_21B261664(v37, v38, v39);
LABEL_52:
    sub_21B25F000(v124);
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    v15 += 40;
    if (!--v3)
    {
      goto LABEL_55;
    }
  }

  v163[0] = v121;
  v163[1] = *v122;
  v23 = *&v122[16];
  v164 = *&v122[16];
  result = swift_beginAccess();
  v25 = *(v23 + 16);
  if (!v25)
  {
    goto LABEL_62;
  }

  v26 = *v25 + 7;
  if (!__OFADD__(*v25, 7))
  {
    if (v26 < 0)
    {
      v26 = *v25 + 14;
    }

    v27 = v26 >> 3;
    v29 = v27 - 1;
    v28 = v27 < 1;
    v30 = v27 + 62;
    if (!v28)
    {
      v30 = v29;
    }

    sub_21B29CCC0(v25 + (v30 & 0xFFFFFFFFFFFFFFC0) + 128, v163, &v112);
    v31 = v114;
    v32 = v115;
    v33 = v116;
    v34 = v118;
    v35 = v119;
    v36 = v120;
    sub_21B2FE174(v117, 0);
    sub_21B2FE174(v34, 0);
    sub_21B2FE174(v35, 0);
    sub_21B2FE174(v36, 0);
    sub_21B2FE174(v31, 0);
    sub_21B2FE174(v32, 0);
    sub_21B2FE174(v33, 0);
    v37 = v163;
    v38 = &qword_27CD7E738;
    v39 = &qword_21B352358;
    goto LABEL_51;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

uint64_t DataFrame.Slice.summary(of:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = a2;
    v13 = MEMORY[0x277D84F90];
    sub_21B254034(0, v2, 0);
    v3 = v13;
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v8 = sub_21B23AC94(v6, v7);

      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_21B254034((v9 > 1), v10 + 1, 1);
      }

      *(v13 + 16) = v10 + 1;
      *(v13 + 8 * v10 + 32) = v8;
      v5 += 2;
      --v2;
    }

    while (v2);
    a2 = v12;
  }

  sub_21B29C30C(v3, a2);
}

uint64_t sub_21B29C30C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_17:
    sub_21B29B0B4(v12, a2);
  }

  v29 = a2;
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(v2 + 40);
  v9 = *v2;
  v43 = MEMORY[0x277D84F90];
  result = sub_21B254014(0, v3, 0);
  v11 = 0;
  v32 = a1 + 32;
  v33 = *(v9 + 16);
  v30 = v9 + 32;
  v31 = v3;
  v12 = v43;
  while (1)
  {
    v13 = v33;
    v14 = *(v32 + 8 * v11);
    if (v33)
    {
      break;
    }

    v15 = v4;
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

LABEL_11:
    if (v14 >= *(v15 + 16))
    {
      goto LABEL_19;
    }

    sub_21B25EFA4(v15 + 40 * v14 + 32, &v40);

    v43 = v12;
    v25 = *(v12 + 16);
    v24 = *(v12 + 24);
    if (v25 >= v24 >> 1)
    {
      result = sub_21B254014((v24 > 1), v25 + 1, 1);
      v12 = v43;
    }

    ++v11;
    *(v12 + 16) = v25 + 1;
    v26 = v12 + 40 * v25;
    v27 = v40;
    v28 = v41;
    *(v26 + 64) = v42;
    *(v26 + 32) = v27;
    *(v26 + 48) = v28;
    if (v11 == v3)
    {
      a2 = v29;
      goto LABEL_17;
    }
  }

  v34 = *(v32 + 8 * v11);
  v35 = v12;
  v39 = v4;
  sub_21B254014(0, v33, 0);
  v15 = v39;
  v16 = v30;
  do
  {
    sub_21B233A74(v16, v36);
    v18 = v37;
    v17 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    (*(*(v17 + 8) + 160))(&v40, v6, v7, v8, v18);
    result = sub_21B233960(v36);
    v39 = v15;
    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_21B254014((v19 > 1), v20 + 1, 1);
      v15 = v39;
    }

    *(v15 + 16) = v20 + 1;
    v21 = v15 + 40 * v20;
    v22 = v40;
    v23 = v41;
    *(v21 + 64) = v42;
    *(v21 + 32) = v22;
    *(v21 + 48) = v23;
    v16 += 40;
    --v13;
  }

  while (v13);
  v4 = MEMORY[0x277D84F90];
  v3 = v31;
  v12 = v35;
  v14 = v34;
  if ((v34 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B29C5B8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v7 = v6;
    v10 = result;
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
    while (a2 != v11)
    {
      if (v11 >= a2)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_23;
      }

      result = swift_beginAccess();
      v15 = *(a5 + 16);
      if (!v15)
      {
        goto LABEL_26;
      }

      v16 = *(v15 + (v11 >> 3) + 64);
      v17 = v11++ & 7;
      if ((v16 >> v17))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v26 = v7;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v13 + 16) + 1, 1);
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_21B254034((v18 > 1), v19 + 1, 1);
        }

        *(v13 + 16) = v19 + 1;
        *(v13 + 8 * v19 + 32) = v11 - 1;
        v11 = v14;
        v7 = v26;
      }
    }

    v20 = *(v13 + 16);
    if (v20)
    {
      result = sub_21B2542C8(0, v20, 0);
      v21 = 0;
      while (v21 < *(v13 + 16))
      {
        v22 = *(v10 + 4 * *(v13 + 8 * v21 + 32));
        v24 = v12[1].u64[0];
        v23 = v12[1].u64[1];
        if (v24 >= v23 >> 1)
        {
          result = sub_21B2542C8((v23 > 1), v24 + 1, 1);
        }

        ++v21;
        v12[1].i64[0] = v24 + 1;
        v12[2].i32[v24] = v22;
        if (v20 == v21)
        {

          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_21:
    sub_21B3392C8(v12, a2 - v20, x8_0, v25);
  }

  return result;
}

uint64_t sub_21B29C7E0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v7 = v6;
    v10 = result;
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
    while (a2 != v11)
    {
      if (v11 >= a2)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_23;
      }

      result = swift_beginAccess();
      v15 = *(a5 + 16);
      if (!v15)
      {
        goto LABEL_26;
      }

      v16 = *(v15 + (v11 >> 3) + 64);
      v17 = v11++ & 7;
      if ((v16 >> v17))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v26 = v7;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v13 + 16) + 1, 1);
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_21B254034((v18 > 1), v19 + 1, 1);
        }

        *(v13 + 16) = v19 + 1;
        *(v13 + 8 * v19 + 32) = v11 - 1;
        v11 = v14;
        v7 = v26;
      }
    }

    v20 = *(v13 + 16);
    if (v20)
    {
      result = sub_21B2542A8(0, v20, 0);
      v21 = 0;
      while (v21 < *(v13 + 16))
      {
        v22 = *(v10 + 8 * *(v13 + 8 * v21 + 32));
        v24 = *(v12 + 16);
        v23 = *(v12 + 24);
        if (v24 >= v23 >> 1)
        {
          result = sub_21B2542A8((v23 > 1), v24 + 1, 1);
        }

        ++v21;
        *(v12 + 16) = v24 + 1;
        *(v12 + 8 * v24 + 32) = v22;
        if (v20 == v21)
        {

          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_21:
    sub_21B339014(v12, a2 - v20, x8_0, v25);
  }

  return result;
}

uint64_t sub_21B29CA08@<X0>(uint64_t a1@<X0>, __int128 *a3@<X2>, uint64_t x8_0@<X8>)
{
  v4 = *(a3 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EBD8, &qword_21B3542B0);
  result = sub_21B34BB14();
  v6 = MEMORY[0x277D84F90];
  v7 = v29;
LABEL_2:
  if (v7 <= v30)
  {
    v8 = v30;
  }

  else
  {
    v8 = v7;
  }

  v9 = v7;
  while (v30 != v9)
  {
    if (v30 < v29)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v7 < v29)
    {
      goto LABEL_31;
    }

    if (v8 == v9)
    {
      goto LABEL_32;
    }

    result = swift_beginAccess();
    v11 = *(v4 + 16);
    if (!v11)
    {
      goto LABEL_36;
    }

    v12 = v9 + 1;
    v13 = v9 - (v10 & 0xFFFFFFFFFFFFFFF8);
    v14 = *(v11 + v9 / 8 + 64);
    v15 = 1 << v13;
    if (v13 < 0)
    {
      v15 = 0;
    }

    ++v9;
    if ((v15 & v14) != 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B254034(0, *(v6 + 16) + 1, 1);
      }

      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_21B254034((v16 > 1), v17 + 1, 1);
      }

      *(v6 + 16) = v17 + 1;
      *(v6 + 8 * v17 + 32) = v12 - 1;
      v7 = v12;
      goto LABEL_2;
    }
  }

  result = sub_21B34BB14();
  v18 = v30 - v29;
  if (__OFSUB__(v30, v29))
  {
    goto LABEL_34;
  }

  v19 = *(v6 + 16);
  v20 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v19)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_21B2542C8(0, v19, 0);
    v21 = 0;
    v22 = v31;
    while (v21 < *(v6 + 16))
    {
      v23 = *(a1 + 4 * *(v6 + 8 * v21 + 32));
      v25 = v31[1].u64[0];
      v24 = v31[1].u64[1];
      if (v25 >= v24 >> 1)
      {
        result = sub_21B2542C8((v24 > 1), v25 + 1, 1);
      }

      ++v21;
      v31[1].i64[0] = v25 + 1;
      v31[2].i32[v25] = v23;
      if (v19 == v21)
      {

        goto LABEL_29;
      }
    }

    goto LABEL_33;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21B3392C8(v22, v20, x8_0, v26);
}

uint64_t sub_21B29CCC0@<X0>(uint64_t a1@<X0>, __int128 *a3@<X2>, uint64_t x8_0@<X8>)
{
  v4 = *(a3 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EBD0, &qword_21B3542A8);
  result = sub_21B34BB14();
  v6 = MEMORY[0x277D84F90];
  v7 = v29;
LABEL_2:
  if (v7 <= v30)
  {
    v8 = v30;
  }

  else
  {
    v8 = v7;
  }

  v9 = v7;
  while (v30 != v9)
  {
    if (v30 < v29)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v7 < v29)
    {
      goto LABEL_31;
    }

    if (v8 == v9)
    {
      goto LABEL_32;
    }

    result = swift_beginAccess();
    v11 = *(v4 + 16);
    if (!v11)
    {
      goto LABEL_36;
    }

    v12 = v9 + 1;
    v13 = v9 - (v10 & 0xFFFFFFFFFFFFFFF8);
    v14 = *(v11 + v9 / 8 + 64);
    v15 = 1 << v13;
    if (v13 < 0)
    {
      v15 = 0;
    }

    ++v9;
    if ((v15 & v14) != 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B254034(0, *(v6 + 16) + 1, 1);
      }

      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_21B254034((v16 > 1), v17 + 1, 1);
      }

      *(v6 + 16) = v17 + 1;
      *(v6 + 8 * v17 + 32) = v12 - 1;
      v7 = v12;
      goto LABEL_2;
    }
  }

  result = sub_21B34BB14();
  v18 = v30 - v29;
  if (__OFSUB__(v30, v29))
  {
    goto LABEL_34;
  }

  v19 = *(v6 + 16);
  v20 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v19)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v19, 0);
    v21 = 0;
    v22 = v31;
    while (v21 < *(v6 + 16))
    {
      v23 = *(a1 + 8 * *(v6 + 8 * v21 + 32));
      v25 = *(v31 + 16);
      v24 = *(v31 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_21B2542A8((v24 > 1), v25 + 1, 1);
      }

      ++v21;
      *(v31 + 16) = v25 + 1;
      *(v31 + 8 * v25 + 32) = v23;
      if (v19 == v21)
      {

        goto LABEL_29;
      }
    }

    goto LABEL_33;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21B339014(v22, v20, x8_0, v26);
}

uint64_t sub_21B29CF78@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 40);
  v48 = *(a3 + 24);
  v51 = *(a3 + 32);
  v6 = sub_21B2FB104(v48, v51, *(a3 + 40));
  v7 = 0;
  v8 = *(v6 + 16);
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 == v7)
    {

      if (v5)
      {
        v20 = v48;
        if (v5 == 1 && *(v48 + 16))
        {
          v21 = *(v48 + 32);
LABEL_22:
          v23 = *(v20 + 16);
          goto LABEL_23;
        }

        swift_beginAccess();
        v22 = *(v4 + 16);
        if (!v22)
        {
          goto LABEL_69;
        }

        v21 = *(v22 + 8);
        if (v5 != 2)
        {
          v20 = v48;
          goto LABEL_22;
        }

        v23 = 0;
      }

      else
      {
        v23 = 1;
        v21 = v48;
      }

LABEL_23:
      swift_beginAccess();
      v24 = *(v4 + 16);
      if (!v24)
      {
        goto LABEL_68;
      }

      v50 = *(v24 + 8);
      if (v50 < v21)
      {
        goto LABEL_64;
      }

      if (!v23 && v21 == v50)
      {
        v25 = 0;
LABEL_48:
        sub_21B2615FC(a3, v52, &qword_27CD7E700, &qword_21B352320);

        sub_21B23A9F4(v48, v51, v5);
        v37 = *(v9 + 16);
        if (__OFSUB__(v25, v37))
        {
          goto LABEL_65;
        }

        if (v37)
        {
          v52[0] = MEMORY[0x277D84F90];
          sub_21B2542C8(0, v37, 0);
          v38 = 0;
          v39 = v52[0];
          while (v38 < *(v9 + 16))
          {
            v40 = *(a1 + 4 * *(v9 + 8 * v38 + 32));
            v52[0] = v39;
            v42 = v39[1].u64[0];
            v41 = v39[1].u64[1];
            if (v42 >= v41 >> 1)
            {
              sub_21B2542C8((v41 > 1), v42 + 1, 1);
              v39 = v52[0];
            }

            ++v38;
            v39[1].i64[0] = v42 + 1;
            v39[2].i32[v42] = v40;
            if (v37 == v38)
            {

              goto LABEL_57;
            }
          }

          goto LABEL_59;
        }

        v39 = MEMORY[0x277D84F90];
LABEL_57:
        sub_21B3392C8(v39, v25 - v37, x8_0, v43);
      }

      v26 = 0;
      v27 = 0;
      v28 = v48;
      v29 = v48 + 32;
      while (1)
      {
        v25 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_60;
        }

        if (__OFADD__(v21++, 1))
        {
          goto LABEL_61;
        }

        if (v5)
        {
          if (v5 != 1)
          {
            goto LABEL_70;
          }

          if (v27 >= *(v28 + 16))
          {
            goto LABEL_62;
          }

          v32 = (v29 + 16 * v27);
          v33 = *v32;
          v31 = v32[1];
          if (v21 < v33)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v31 = v51;
          if (v27)
          {
            goto LABEL_63;
          }

          if (v21 < v28)
          {
            goto LABEL_39;
          }
        }

        if (v21 < v31)
        {
          goto LABEL_46;
        }

LABEL_39:
        if (!v5)
        {
          v27 = 1;
LABEL_43:
          swift_beginAccess();
          v36 = *(v4 + 16);
          if (!v36)
          {
            goto LABEL_67;
          }

          v35 = (v36 + 8);
          v28 = v48;
          goto LABEL_45;
        }

        v34 = v27 + 1;
        v27 = *(v28 + 16);
        if (v34 >= v27)
        {
          goto LABEL_43;
        }

        v35 = (v29 + 16 * v34);
        v27 = v34;
LABEL_45:
        v21 = *v35;
LABEL_46:
        ++v26;
        if (v27 == v23 && v21 == v50)
        {
          goto LABEL_48;
        }
      }
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    v10 = *(v6 + 8 * v7 + 32);
    swift_beginAccess();
    v12 = *(v4 + 16);
    if (!v12)
    {
      goto LABEL_66;
    }

    ++v7;
    v13 = v10 - (v11 & 0xFFFFFFFFFFFFFFF8);
    v14 = *(v12 + v10 / 8 + 64);
    v15 = 1 << v13;
    if (v13 < 0)
    {
      v15 = 0;
    }

    if ((v15 & v14) != 0)
    {
      v52[0] = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21B254034(0, *(v9 + 16) + 1, 1);
        v9 = v52[0];
      }

      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v19 = v17 + 1;
        v49 = v17;
        sub_21B254034((v16 > 1), v17 + 1, 1);
        v18 = v19;
        v17 = v49;
        v9 = v52[0];
      }

      *(v9 + 16) = v18;
      *(v9 + 8 * v17 + 32) = v10;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
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
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B29D3FC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 40);
  v48 = *(a3 + 24);
  v51 = *(a3 + 32);
  v6 = sub_21B2FB104(v48, v51, *(a3 + 40));
  v7 = 0;
  v8 = *(v6 + 16);
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 == v7)
    {

      if (v5)
      {
        v20 = v48;
        if (v5 == 1 && *(v48 + 16))
        {
          v21 = *(v48 + 32);
LABEL_22:
          v23 = *(v20 + 16);
          goto LABEL_23;
        }

        swift_beginAccess();
        v22 = *(v4 + 16);
        if (!v22)
        {
          goto LABEL_69;
        }

        v21 = *(v22 + 8);
        if (v5 != 2)
        {
          v20 = v48;
          goto LABEL_22;
        }

        v23 = 0;
      }

      else
      {
        v23 = 1;
        v21 = v48;
      }

LABEL_23:
      swift_beginAccess();
      v24 = *(v4 + 16);
      if (!v24)
      {
        goto LABEL_68;
      }

      v50 = *(v24 + 8);
      if (v50 < v21)
      {
        goto LABEL_64;
      }

      if (!v23 && v21 == v50)
      {
        v25 = 0;
LABEL_48:
        sub_21B2615FC(a3, v52, &qword_27CD7E6F8, &qword_21B352318);

        sub_21B23A9F4(v48, v51, v5);
        v37 = *(v9 + 16);
        if (__OFSUB__(v25, v37))
        {
          goto LABEL_65;
        }

        if (v37)
        {
          v52[0] = MEMORY[0x277D84F90];
          sub_21B2542A8(0, v37, 0);
          v38 = 0;
          v39 = v52[0];
          while (v38 < *(v9 + 16))
          {
            v40 = *(a1 + 8 * *(v9 + 8 * v38 + 32));
            v52[0] = v39;
            v42 = *(v39 + 16);
            v41 = *(v39 + 24);
            if (v42 >= v41 >> 1)
            {
              sub_21B2542A8((v41 > 1), v42 + 1, 1);
              v39 = v52[0];
            }

            ++v38;
            *(v39 + 16) = v42 + 1;
            *(v39 + 8 * v42 + 32) = v40;
            if (v37 == v38)
            {

              goto LABEL_57;
            }
          }

          goto LABEL_59;
        }

        v39 = MEMORY[0x277D84F90];
LABEL_57:
        sub_21B339014(v39, v25 - v37, x8_0, v43);
      }

      v26 = 0;
      v27 = 0;
      v28 = v48;
      v29 = v48 + 32;
      while (1)
      {
        v25 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_60;
        }

        if (__OFADD__(v21++, 1))
        {
          goto LABEL_61;
        }

        if (v5)
        {
          if (v5 != 1)
          {
            goto LABEL_70;
          }

          if (v27 >= *(v28 + 16))
          {
            goto LABEL_62;
          }

          v32 = (v29 + 16 * v27);
          v33 = *v32;
          v31 = v32[1];
          if (v21 < v33)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v31 = v51;
          if (v27)
          {
            goto LABEL_63;
          }

          if (v21 < v28)
          {
            goto LABEL_39;
          }
        }

        if (v21 < v31)
        {
          goto LABEL_46;
        }

LABEL_39:
        if (!v5)
        {
          v27 = 1;
LABEL_43:
          swift_beginAccess();
          v36 = *(v4 + 16);
          if (!v36)
          {
            goto LABEL_67;
          }

          v35 = (v36 + 8);
          v28 = v48;
          goto LABEL_45;
        }

        v34 = v27 + 1;
        v27 = *(v28 + 16);
        if (v34 >= v27)
        {
          goto LABEL_43;
        }

        v35 = (v29 + 16 * v34);
        v27 = v34;
LABEL_45:
        v21 = *v35;
LABEL_46:
        ++v26;
        if (v27 == v23 && v21 == v50)
        {
          goto LABEL_48;
        }
      }
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    v10 = *(v6 + 8 * v7 + 32);
    swift_beginAccess();
    v12 = *(v4 + 16);
    if (!v12)
    {
      goto LABEL_66;
    }

    ++v7;
    v13 = v10 - (v11 & 0xFFFFFFFFFFFFFFF8);
    v14 = *(v12 + v10 / 8 + 64);
    v15 = 1 << v13;
    if (v13 < 0)
    {
      v15 = 0;
    }

    if ((v15 & v14) != 0)
    {
      v52[0] = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21B254034(0, *(v9 + 16) + 1, 1);
        v9 = v52[0];
      }

      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v19 = v17 + 1;
        v49 = v17;
        sub_21B254034((v16 > 1), v17 + 1, 1);
        v18 = v19;
        v17 = v49;
        v9 = v52[0];
      }

      *(v9 + 16) = v18;
      *(v9 + 8 * v17 + 32) = v10;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
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
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B29D880@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    while (a2 != v9)
    {
      if (v9 >= a2)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_23;
      }

      result = swift_beginAccess();
      v13 = *(a5 + 16);
      if (!v13)
      {
        goto LABEL_26;
      }

      v14 = *(v13 + (v9 >> 3) + 64);
      v15 = v9++ & 7;
      if ((v14 >> v15))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v11 + 16) + 1, 1);
        }

        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_21B254034((v16 > 1), v17 + 1, 1);
        }

        *(v11 + 16) = v17 + 1;
        *(v11 + 8 * v17 + 32) = v9 - 1;
        v9 = v12;
      }
    }

    v18 = *(v11 + 16);
    if (v18)
    {
      result = sub_21B2542A8(0, v18, 0);
      v19 = 0;
      while (v19 < *(v11 + 16))
      {
        v20 = *(v8 + 8 * *(v11 + 8 * v19 + 32));
        v22 = *(v10 + 16);
        v21 = *(v10 + 24);
        if (v22 >= v21 >> 1)
        {
          result = sub_21B2542A8((v21 > 1), v22 + 1, 1);
        }

        ++v19;
        *(v10 + 16) = v22 + 1;
        *(v10 + 8 * v22 + 32) = v20;
        if (v18 == v19)
        {

          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_21:
    sub_21B339014(v10, a2 - v18, x8_0, v23);
  }

  return result;
}

uint64_t sub_21B29DA98@<X0>(uint64_t a1@<X0>, __int128 *a3@<X2>, uint64_t x8_0@<X8>)
{
  v4 = *(a3 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EBE0, &qword_21B3542B8);
  result = sub_21B34BB14();
  v6 = MEMORY[0x277D84F90];
  v7 = v29;
LABEL_2:
  if (v7 <= v30)
  {
    v8 = v30;
  }

  else
  {
    v8 = v7;
  }

  v9 = v7;
  while (v30 != v9)
  {
    if (v30 < v29)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v7 < v29)
    {
      goto LABEL_31;
    }

    if (v8 == v9)
    {
      goto LABEL_32;
    }

    result = swift_beginAccess();
    v11 = *(v4 + 16);
    if (!v11)
    {
      goto LABEL_36;
    }

    v12 = v9 + 1;
    v13 = v9 - (v10 & 0xFFFFFFFFFFFFFFF8);
    v14 = *(v11 + v9 / 8 + 64);
    v15 = 1 << v13;
    if (v13 < 0)
    {
      v15 = 0;
    }

    ++v9;
    if ((v15 & v14) != 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B254034(0, *(v6 + 16) + 1, 1);
      }

      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_21B254034((v16 > 1), v17 + 1, 1);
      }

      *(v6 + 16) = v17 + 1;
      *(v6 + 8 * v17 + 32) = v12 - 1;
      v7 = v12;
      goto LABEL_2;
    }
  }

  result = sub_21B34BB14();
  v18 = v30 - v29;
  if (__OFSUB__(v30, v29))
  {
    goto LABEL_34;
  }

  v19 = *(v6 + 16);
  v20 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v19)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v19, 0);
    v21 = 0;
    v22 = v31;
    while (v21 < *(v6 + 16))
    {
      v23 = *(a1 + 8 * *(v6 + 8 * v21 + 32));
      v25 = *(v31 + 16);
      v24 = *(v31 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_21B2542A8((v24 > 1), v25 + 1, 1);
      }

      ++v21;
      *(v31 + 16) = v25 + 1;
      *(v31 + 8 * v25 + 32) = v23;
      if (v19 == v21)
      {

        goto LABEL_29;
      }
    }

    goto LABEL_33;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21B339014(v22, v20, x8_0, v26);
}

uint64_t sub_21B29DD4C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(a3 + 40);
  v49 = v5;
  v53 = *(a3 + 32);
  v7 = sub_21B2FB104(v5, v53, v6);
  v8 = 0;
  v9 = *(v7 + 16);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v9 == v8)
    {

      if (v6)
      {
        v21 = v49;
        if (v6 == 1 && *(v49 + 16))
        {
          v22 = *(v49 + 32);
LABEL_22:
          v24 = *(v21 + 16);
          goto LABEL_23;
        }

        swift_beginAccess();
        v23 = *(v4 + 16);
        if (!v23)
        {
          goto LABEL_69;
        }

        v22 = *(v23 + 8);
        if (v6 != 2)
        {
          v21 = v49;
          goto LABEL_22;
        }

        v24 = 0;
      }

      else
      {
        v24 = 1;
        v22 = v49;
      }

LABEL_23:
      swift_beginAccess();
      v25 = *(v4 + 16);
      if (!v25)
      {
        goto LABEL_68;
      }

      v51 = *(v25 + 8);
      if (v51 < v22)
      {
        goto LABEL_64;
      }

      if (!v24 && v22 == v51)
      {
        v26 = 0;
LABEL_48:
        sub_21B2615FC(a3, v52, &qword_27CD7E710, &qword_21B352330);

        sub_21B23A9F4(v49, v53, v6);
        v38 = *(v10 + 16);
        if (__OFSUB__(v26, v38))
        {
          goto LABEL_65;
        }

        if (v38)
        {
          v52[0] = MEMORY[0x277D84F90];
          sub_21B2542A8(0, v38, 0);
          v39 = 0;
          v40 = v52[0];
          while (v39 < *(v10 + 16))
          {
            v41 = *(a1 + 8 * *(v10 + 8 * v39 + 32));
            v52[0] = v40;
            v43 = *(v40 + 16);
            v42 = *(v40 + 24);
            if (v43 >= v42 >> 1)
            {
              sub_21B2542A8((v42 > 1), v43 + 1, 1);
              v40 = v52[0];
            }

            ++v39;
            *(v40 + 16) = v43 + 1;
            *(v40 + 8 * v43 + 32) = v41;
            if (v38 == v39)
            {

              goto LABEL_57;
            }
          }

          goto LABEL_59;
        }

        v40 = MEMORY[0x277D84F90];
LABEL_57:
        sub_21B339014(v40, v26 - v38, x8_0, v44);
      }

      v27 = 0;
      v28 = 0;
      v29 = v49;
      v30 = v49 + 32;
      while (1)
      {
        v26 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_60;
        }

        if (__OFADD__(v22++, 1))
        {
          goto LABEL_61;
        }

        if (v6)
        {
          if (v6 != 1)
          {
            goto LABEL_70;
          }

          if (v28 >= *(v29 + 16))
          {
            goto LABEL_62;
          }

          v33 = (v30 + 16 * v28);
          v34 = *v33;
          v32 = v33[1];
          if (v22 < v34)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v32 = v53;
          if (v28)
          {
            goto LABEL_63;
          }

          if (v22 < v29)
          {
            goto LABEL_39;
          }
        }

        if (v22 < v32)
        {
          goto LABEL_46;
        }

LABEL_39:
        if (!v6)
        {
          v28 = 1;
LABEL_43:
          swift_beginAccess();
          v37 = *(v4 + 16);
          if (!v37)
          {
            goto LABEL_67;
          }

          v36 = (v37 + 8);
          v29 = v49;
          goto LABEL_45;
        }

        v35 = v28 + 1;
        v28 = *(v29 + 16);
        if (v35 >= v28)
        {
          goto LABEL_43;
        }

        v36 = (v30 + 16 * v35);
        v28 = v35;
LABEL_45:
        v22 = *v36;
LABEL_46:
        ++v27;
        if (v28 == v24 && v22 == v51)
        {
          goto LABEL_48;
        }
      }
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v11 = *(v7 + 8 * v8 + 32);
    swift_beginAccess();
    v13 = *(v4 + 16);
    if (!v13)
    {
      goto LABEL_66;
    }

    ++v8;
    v14 = v11 - (v12 & 0xFFFFFFFFFFFFFFF8);
    v15 = *(v13 + v11 / 8 + 64);
    v16 = 1 << v14;
    if (v14 < 0)
    {
      v16 = 0;
    }

    if ((v16 & v15) != 0)
    {
      v52[0] = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21B254034(0, *(v10 + 16) + 1, 1);
        v10 = v52[0];
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v20 = v18 + 1;
        v50 = v18;
        sub_21B254034((v17 > 1), v18 + 1, 1);
        v19 = v20;
        v18 = v50;
        v10 = v52[0];
      }

      *(v10 + 16) = v19;
      *(v10 + 8 * v18 + 32) = v11;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
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
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DataFrame.combineColumns<A, B, C>(_:_:into:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, char *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v89 = a8;
  v88 = a7;
  v94 = a5;
  v90 = sub_21B34B474();
  v80 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v71 = &v69 - v18;
  v85 = sub_21B34B474();
  v73 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v70 = &v69 - v19;
  v99 = a11;
  v82 = sub_21B34B474();
  v72 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v74 = &v69 - v20;
  v21 = v11[2];
  v103 = *v11;
  v104 = v21;
  v76 = a1;
  v77 = a2;
  v86 = a9;
  DataFrame.subscript.getter(a1, a2, v86, v86);
  v98 = *(&v108 + 1);
  v84 = v108;
  v96 = v109;
  v22 = v11[2];
  v103 = *v11;
  v104 = v22;
  v78 = a3;
  v79 = a4;
  v87 = a10;
  DataFrame.subscript.getter(a3, a4, v87, v87);
  v97 = *(&v108 + 1);
  v83 = v108;
  v95 = v109;
  if (*(*v11 + 16))
  {
    sub_21B233A74(*v11 + 32, &v103);
    v23 = v105;
    v24 = v106;
    __swift_project_boxed_opaque_existential_1(&v103, v105);
    v25 = *(v24 + 8);
    v26 = *(v25 + 48);
    v93 = a6;

    v27 = v26(v23, v25);
    result = sub_21B233960(&v103);
    if (v27 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    v29 = v93;
    if (v27)
    {
      v30 = 0;
      goto LABEL_7;
    }
  }

  else
  {

    v29 = a6;
  }

  v27 = 0;
  v30 = 2;
LABEL_7:
  v31 = v94;
  v32 = sub_21B2FB1D4(0, v27, v30);

  sub_21B23A9F4(0, v27, v30);
  Column.init(name:capacity:)(v31, v29, v32, v99, &v108);
  v33 = *v12;
  v34 = v12[1];
  v35 = v12[2];
  v36 = *(*v12 + 16);
  v91 = *v12;
  if (!v36)
  {

LABEL_12:
    v42 = 2;
    sub_21B2A6400();
    v41 = 0;
    if (v45)
    {
      v43 = 0;
    }

    else
    {
      v43 = v44;
    }

    goto LABEL_15;
  }

  sub_21B233A74(v33 + 32, &v103);
  v37 = v105;
  v38 = v106;
  __swift_project_boxed_opaque_existential_1(&v103, v105);
  v39 = *(v38 + 8);
  v40 = *(v39 + 48);

  v41 = v40(v37, v39);
  result = sub_21B233960(&v103);
  if (v41 < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v33 = v91;
  if (!v41)
  {
    goto LABEL_12;
  }

  v42 = 0;
  v43 = 0;
LABEL_15:
  v93 = v35;
  v94 = v34;
  v75 = v12;
  v92 = v42;
  sub_21B2A6400();
  if (v47)
  {
    v48 = 0;
  }

  else
  {
    v48 = v46;
  }

  v81 = v48;
  if (v43 == v48)
  {
LABEL_23:

    sub_21B23A9F4(0, v41, v92);
    v103 = v108;
    v104 = v109;

    DataFrame.replaceColumn<A>(_:with:)(v76, v77, &v103, v99);

    DataFrame.removeColumn(_:)(v78, v79, &v103);

    sub_21B233960(&v103);
  }

  else
  {
    v49 = v80 + 1;
    v80 = (v73 + 8);
    v50 = (v72 + 8);
    v51 = v71;
    v52 = v70;
    v53 = v74;
    while (1)
    {
      *&v103 = v33;
      *(&v103 + 1) = v94;
      v104 = v93;
      v105 = 0;
      v54 = v41;
      v106 = v41;
      v107 = v92;
      v55 = DataFrame.Rows.index(after:)(v43);
      *&v103 = v84;
      *(&v103 + 1) = v98;
      v104 = v96;
      v58 = type metadata accessor for Column(0, v86, v56, v57);
      Column.subscript.getter(v43, v58, v52);
      v100 = v83;
      v101 = v97;
      v102 = v95;
      v61 = type metadata accessor for Column(0, v87, v59, v60);
      Column.subscript.getter(v43, v61, v51);
      v62 = v110;
      v88(v52, v51);
      if (v62)
      {
        break;
      }

      v110 = 0;
      (*v49)(v51, v90);
      (*v80)(v52, v85);
      v65 = type metadata accessor for Column(0, v99, v63, v64);
      Column.append(_:)(v53, v65, v66, v67);
      (*v50)(v53, v82);
      v43 = v55;
      v68 = v55 == v81;
      v33 = v91;
      v41 = v54;
      if (v68)
      {
        goto LABEL_23;
      }
    }

    (*v49)(v51, v90);
    (*v80)(v52, v85);

    return sub_21B23A9F4(0, v54, v92);
  }
}

uint64_t DataFrame.combineColumns<A, B, C>(_:_:into:transform:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v86 = a6;
  v85 = a5;
  v94 = a3;
  v87 = sub_21B34B474();
  v70 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v73 = &v69 - v16;
  v84 = sub_21B34B474();
  v69 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v72 = &v69 - v17;
  v99 = a9;
  v81 = sub_21B34B474();
  v71 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v74 = &v69 - v18;
  v20 = *a1;
  v19 = a1[1];
  v21 = *a2;
  v22 = a2[1];
  v23 = v10[2];
  v103 = *v10;
  v104 = v23;
  v77 = v20;
  v100 = v20;
  v101 = v19;
  v76 = v19;

  v90 = a7;
  DataFrame.subscript.getter(&v100, a7);

  v83 = v108;
  v97 = v109;
  v98 = *(&v108 + 1);
  v24 = v10[2];
  v103 = *v10;
  v104 = v24;
  v79 = v21;
  v100 = v21;
  v101 = v22;
  v78 = v22;

  v91 = a8;
  DataFrame.subscript.getter(&v100, a8);

  v82 = v108;
  v95 = v109;
  v96 = *(&v108 + 1);
  if (*(*v10 + 16))
  {
    sub_21B233A74(*v10 + 32, &v103);
    v25 = v105;
    v26 = v106;
    __swift_project_boxed_opaque_existential_1(&v103, v105);
    v27 = *(v26 + 8);
    v28 = *(v27 + 48);
    v93 = a4;

    v29 = v28(v25, v27);
    result = sub_21B233960(&v103);
    if (v29 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    a4 = v93;
    if (v29)
    {
      v31 = 0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v29 = 0;
  v31 = 2;
LABEL_7:
  v32 = sub_21B2FB1D4(0, v29, v31);

  sub_21B23A9F4(0, v29, v31);
  Column.init(name:capacity:)(v94, a4, v32, v99, &v108);
  v33 = *v10;
  v34 = v10[1];
  v35 = v10[2];
  v36 = *(*v10 + 16);
  v89 = *v10;
  v88 = v35;
  v94 = v34;
  if (!v36)
  {

LABEL_12:
    v42 = 2;
    sub_21B2A6400();
    v41 = 0;
    if (v45)
    {
      v43 = 0;
    }

    else
    {
      v43 = v44;
    }

    goto LABEL_15;
  }

  sub_21B233A74(v33 + 32, &v103);
  v37 = v105;
  v38 = v106;
  __swift_project_boxed_opaque_existential_1(&v103, v105);
  v39 = *(v38 + 8);
  v40 = *(v39 + 48);

  v41 = v40(v37, v39);
  result = sub_21B233960(&v103);
  if (v41 < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v33 = v89;
  v35 = v88;
  if (!v41)
  {
    goto LABEL_12;
  }

  v42 = 0;
  v43 = 0;
LABEL_15:
  v75 = v10;
  v93 = v41;
  v92 = v42;
  sub_21B2A6400();
  if (v47)
  {
    v48 = 0;
  }

  else
  {
    v48 = v46;
  }

  v80 = v48;
  if (v43 == v48)
  {
LABEL_23:

    sub_21B23A9F4(0, v93, v92);
    v100 = v77;
    v101 = v76;
    v103 = v108;
    v104 = v109;

    DataFrame.replaceColumn<A, B>(_:with:)(&v100, &v103, v90, v99);

    v100 = v79;
    v101 = v78;
    DataFrame.removeColumn<A>(_:)(&v100, v91);
  }

  else
  {
    v49 = (v70 + 8);
    v50 = (v69 + 8);
    v51 = (v71 + 8);
    v52 = v73;
    v53 = v72;
    v54 = v74;
    while (1)
    {
      *&v103 = v33;
      *(&v103 + 1) = v94;
      v104 = v35;
      v105 = 0;
      v106 = v93;
      v107 = v92;
      v55 = DataFrame.Rows.index(after:)(v43);
      *&v103 = v83;
      *(&v103 + 1) = v98;
      v104 = v97;
      v58 = type metadata accessor for Column(0, v90, v56, v57);
      Column.subscript.getter(v43, v58, v53);
      v100 = v82;
      v101 = v96;
      v102 = v95;
      v61 = type metadata accessor for Column(0, v91, v59, v60);
      Column.subscript.getter(v43, v61, v52);
      v62 = v110;
      v85(v53, v52);
      if (v62)
      {
        break;
      }

      v110 = 0;
      (*v49)(v52, v87);
      (*v50)(v53, v84);
      v65 = type metadata accessor for Column(0, v99, v63, v64);
      Column.append(_:)(v54, v65, v66, v67);
      (*v51)(v54, v81);
      v43 = v55;
      v68 = v55 == v80;
      v33 = v89;
      v35 = v88;
      if (v68)
      {
        goto LABEL_23;
      }
    }

    (*v49)(v52, v87);
    (*v50)(v53, v84);

    return sub_21B23A9F4(0, v93, v92);
  }
}

uint64_t DataFrame.combineColumns<A, B, C, D>(_:_:_:into:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, char *, char *), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v110 = a8;
  v109 = a7;
  v90 = a5;
  v89 = a4;
  v106 = sub_21B34B474();
  v95 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v83 = &v78 - v20;
  v105 = sub_21B34B474();
  v94 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v80 = &v78 - v21;
  v101 = sub_21B34B474();
  v79 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v82 = &v78 - v22;
  v117 = a14;
  v97 = sub_21B34B474();
  v78 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v81 = &v78 - v23;
  v24 = v14[2];
  v124 = *v14;
  v125 = v24;
  v85 = a1;
  v86 = a2;
  v102 = a11;
  DataFrame.subscript.getter(a1, a2, v102, v102);
  v116 = *(&v129 + 1);
  v100 = v129;
  v114 = v130;
  v25 = v14[2];
  v124 = *v14;
  v125 = v25;
  v87 = a3;
  v103 = a12;
  DataFrame.subscript.getter(a3, v89, v103, v103);
  v115 = *(&v129 + 1);
  v99 = v129;
  v112 = v130;
  v26 = v14[2];
  v124 = *v14;
  v125 = v26;
  v88 = a6;
  v104 = a13;
  DataFrame.subscript.getter(v90, a6, v104, v104);
  v113 = *(&v129 + 1);
  v98 = v129;
  v111 = v130;
  v27 = *v14;
  v28 = *(*v14 + 16);
  v108 = v14[1];
  if (v28)
  {
    sub_21B233A74(v27 + 32, &v124);
    v30 = v126;
    v29 = v127;
    __swift_project_boxed_opaque_existential_1(&v124, v126);
    v31 = *(v29 + 8);
    v32 = *(v31 + 48);
    v33 = v110;

    v34 = v32(v30, v31);
    result = sub_21B233960(&v124);
    if (v34 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v34)
    {
      v36 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v33 = v110;
  }

  v34 = 0;
  v36 = 2;
LABEL_7:
  v37 = v109;
  v38 = sub_21B2FB1D4(0, v34, v36);

  sub_21B23A9F4(0, v34, v36);
  Column.init(name:capacity:)(v37, v33, v38, v117, &v129);
  v40 = *v15;
  v39 = v15[1];
  v41 = v15[2];
  v42 = *(*v15 + 16);
  v107 = *v15;
  if (!v42)
  {

LABEL_12:
    v48 = 2;
    sub_21B2A6400();
    v47 = 0;
    if (v51)
    {
      v49 = 0;
    }

    else
    {
      v49 = v50;
    }

    goto LABEL_15;
  }

  sub_21B233A74(v40 + 32, &v124);
  v43 = v126;
  v44 = v127;
  __swift_project_boxed_opaque_existential_1(&v124, v126);
  v45 = *(v44 + 8);
  v46 = *(v45 + 48);

  v47 = v46(v43, v45);
  result = sub_21B233960(&v124);
  if (v47 < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v40 = v107;
  if (!v47)
  {
    goto LABEL_12;
  }

  v48 = 0;
  v49 = 0;
LABEL_15:
  v109 = v41;
  v110 = v39;
  v84 = v15;
  LODWORD(v108) = v48;
  sub_21B2A6400();
  if (v53)
  {
    v54 = 0;
  }

  else
  {
    v54 = v52;
  }

  v96 = v54;
  if (v49 == v54)
  {
LABEL_23:

    sub_21B23A9F4(0, v47, v108);
    v124 = v129;
    v125 = v130;

    DataFrame.replaceColumn<A>(_:with:)(v85, v86, &v124, v117);

    DataFrame.removeColumn(_:)(v87, v89, &v124);
    sub_21B233960(&v124);
    DataFrame.removeColumn(_:)(v90, v88, &v124);

    sub_21B233960(&v124);
  }

  else
  {
    v92 = a10;
    v91 = a9;
    v93 = v95 + 1;
    ++v94;
    v95 = (v79 + 8);
    v55 = (v78 + 8);
    v56 = v83;
    v57 = v80;
    v58 = v82;
    v59 = v81;
    while (1)
    {
      *&v124 = v40;
      *(&v124 + 1) = v110;
      v125 = v109;
      v126 = 0;
      v60 = v47;
      v127 = v47;
      v128 = v108;
      v61 = DataFrame.Rows.index(after:)(v49);
      *&v124 = v100;
      *(&v124 + 1) = v116;
      v125 = v114;
      v64 = type metadata accessor for Column(0, v102, v62, v63);
      Column.subscript.getter(v49, v64, v58);
      v121 = v99;
      v122 = v115;
      v123 = v112;
      v67 = type metadata accessor for Column(0, v103, v65, v66);
      Column.subscript.getter(v49, v67, v57);
      v118 = v98;
      v119 = v113;
      v120 = v111;
      v70 = type metadata accessor for Column(0, v104, v68, v69);
      Column.subscript.getter(v49, v70, v56);
      v71 = v131;
      v91(v58, v57, v56);
      v131 = v71;
      if (v71)
      {
        break;
      }

      (*v93)(v56, v106);
      (*v94)(v57, v105);
      (*v95)(v58, v101);
      v74 = type metadata accessor for Column(0, v117, v72, v73);
      Column.append(_:)(v59, v74, v75, v76);
      (*v55)(v59, v97);
      v49 = v61;
      v77 = v61 == v96;
      v40 = v107;
      v47 = v60;
      if (v77)
      {
        goto LABEL_23;
      }
    }

    (*v93)(v56, v106);
    (*v94)(v57, v105);
    (*v95)(v58, v101);

    return sub_21B23A9F4(0, v60, v108);
  }
}

uint64_t DataFrame.combineColumns<A, B, C, D>(_:_:_:into:transform:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v106 = a7;
  v105 = a6;
  v114 = a5;
  v113 = a4;
  v107 = sub_21B34B474();
  v97 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v85 = &v82 - v17;
  v104 = sub_21B34B474();
  v96 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v87 = &v82 - v18;
  v103 = sub_21B34B474();
  v83 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v86 = &v82 - v19;
  v121 = a11;
  v99 = sub_21B34B474();
  v82 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v84 = &v82 - v20;
  v22 = *a1;
  v21 = a1[1];
  v24 = *a2;
  v23 = a2[1];
  v26 = *a3;
  v25 = a3[1];
  v27 = v12[2];
  v128 = *v12;
  v129 = v27;
  v90 = v22;
  v125 = v22;
  v126 = v21;
  v89 = v21;

  v109 = a8;
  DataFrame.subscript.getter(&v125, a8);

  v102 = v133;
  v119 = v134;
  v120 = *(&v133 + 1);
  v28 = v12[2];
  v128 = *v12;
  v129 = v28;
  v92 = v24;
  v125 = v24;
  v126 = v23;
  v91 = v23;

  v110 = a9;
  DataFrame.subscript.getter(&v125, a9);

  v101 = v133;
  v117 = v134;
  v118 = *(&v133 + 1);
  v29 = v12[2];
  v128 = *v12;
  v129 = v29;
  v125 = v26;
  v126 = v25;
  v93 = v25;

  v111 = a10;
  DataFrame.subscript.getter(&v125, a10);

  v116 = *(&v133 + 1);
  v100 = v133;
  v115 = v134;
  v31 = *v12;
  v30 = v12[1];
  v32 = *(*v12 + 16);
  v94 = v26;
  v112 = v30;
  if (v32)
  {
    sub_21B233A74(v31 + 32, &v128);
    v34 = v130;
    v33 = v131;
    __swift_project_boxed_opaque_existential_1(&v128, v130);
    v35 = *(v33 + 8);
    v36 = *(v35 + 48);
    v37 = v114;

    v38 = v36(v34, v35);
    result = sub_21B233960(&v128);
    if (v38 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v38)
    {
      v40 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v37 = v114;
  }

  v38 = 0;
  v40 = 2;
LABEL_7:
  v41 = v113;
  v42 = sub_21B2FB1D4(0, v38, v40);

  sub_21B23A9F4(0, v38, v40);
  Column.init(name:capacity:)(v41, v37, v42, v121, &v133);
  v44 = *v12;
  v43 = v12[1];
  v45 = v12[2];
  v46 = *(*v12 + 16);
  v108 = *v12;
  v114 = v45;
  if (!v46)
  {

LABEL_12:
    v52 = 2;
    sub_21B2A6400();
    v51 = 0;
    if (v55)
    {
      v53 = 0;
    }

    else
    {
      v53 = v54;
    }

    goto LABEL_15;
  }

  sub_21B233A74(v44 + 32, &v128);
  v47 = v130;
  v48 = v131;
  __swift_project_boxed_opaque_existential_1(&v128, v130);
  v49 = *(v48 + 8);
  v50 = *(v49 + 48);

  v51 = v50(v47, v49);
  result = sub_21B233960(&v128);
  if (v51 < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v44 = v108;
  if (!v51)
  {
    goto LABEL_12;
  }

  v52 = 0;
  v53 = 0;
LABEL_15:
  v113 = v43;
  v88 = v12;
  LODWORD(v112) = v52;
  sub_21B2A6400();
  if (v57)
  {
    v58 = 0;
  }

  else
  {
    v58 = v56;
  }

  v98 = v58;
  if (v53 == v58)
  {
LABEL_23:

    sub_21B23A9F4(0, v51, v112);
    v125 = v90;
    v126 = v89;
    v128 = v133;
    v129 = v134;

    DataFrame.replaceColumn<A, B>(_:with:)(&v125, &v128, v109, v121);

    v125 = v92;
    v126 = v91;
    DataFrame.removeColumn<A>(_:)(&v125, v110);

    v125 = v94;
    v126 = v93;
    DataFrame.removeColumn<A>(_:)(&v125, v111);
  }

  else
  {
    v95 = v97 + 1;
    ++v96;
    v97 = (v83 + 8);
    v59 = (v82 + 8);
    v60 = v85;
    v61 = v87;
    v62 = v86;
    v63 = v84;
    while (1)
    {
      *&v128 = v44;
      *(&v128 + 1) = v113;
      v129 = v114;
      v130 = 0;
      v64 = v51;
      v131 = v51;
      v132 = v112;
      v65 = DataFrame.Rows.index(after:)(v53);
      *&v128 = v102;
      *(&v128 + 1) = v120;
      v129 = v119;
      v68 = type metadata accessor for Column(0, v109, v66, v67);
      Column.subscript.getter(v53, v68, v62);
      v125 = v101;
      v126 = v118;
      v127 = v117;
      v71 = type metadata accessor for Column(0, v110, v69, v70);
      Column.subscript.getter(v53, v71, v61);
      v122 = v100;
      v123 = v116;
      v124 = v115;
      v74 = type metadata accessor for Column(0, v111, v72, v73);
      Column.subscript.getter(v53, v74, v60);
      v75 = v135;
      v105(v62, v61, v60);
      if (v75)
      {
        break;
      }

      v135 = 0;
      (*v95)(v60, v107);
      (*v96)(v61, v104);
      (*v97)(v62, v103);
      v78 = type metadata accessor for Column(0, v121, v76, v77);
      Column.append(_:)(v63, v78, v79, v80);
      (*v59)(v63, v99);
      v53 = v65;
      v81 = v65 == v98;
      v44 = v108;
      v51 = v64;
      if (v81)
      {
        goto LABEL_23;
      }
    }

    (*v95)(v60, v107);
    (*v96)(v61, v104);
    (*v97)(v62, v103);

    return sub_21B23A9F4(0, v64, v112);
  }
}

unint64_t SFrameReadingError.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (*(v0 + 16))
    {
      if (v3 != 1)
      {
        sub_21B34B634();

        v9 = 0xD000000000000017;
        v7 = sub_21B34B944();
        MEMORY[0x21CEED5E0](v7);

        v5 = 46;
        v6 = 0xE100000000000000;
        goto LABEL_14;
      }

      sub_21B34B634();

      v4 = 0xD00000000000001CLL;
    }

    else
    {
      sub_21B34B634();

      v4 = 0xD000000000000014;
    }

LABEL_13:
    v9 = v4;
    v5 = v1;
    v6 = v2;
    goto LABEL_14;
  }

  if (*(v0 + 16) <= 4u)
  {
    if (v3 == 3)
    {
      sub_21B34B634();

      v4 = 0xD000000000000019;
    }

    else
    {
      sub_21B34B634();

      v4 = 0xD000000000000013;
    }

    goto LABEL_13;
  }

  if (v3 == 5)
  {
    sub_21B34B634();

    v9 = 0xD00000000000001ALL;
    MEMORY[0x21CEED5E0](v1, v2);
    v5 = 11815;
    v6 = 0xE200000000000000;
LABEL_14:
    MEMORY[0x21CEED5E0](v5, v6);
    return v9;
  }

  return 0xD000000000000037;
}

uint64_t get_enum_tag_for_layout_string_11TabularData18SFrameReadingErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21B2A0AA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B2A0AEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B2A0B30(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_21B2A0B58(uint64_t a1, uint64_t a2)
{

  v2 = 0;
  while (1)
  {
    v3 = sub_21B34AE14();
    if (!v4)
    {
      break;
    }

    v5 = sub_21B2A0BE0(v3, v4);

    v6 = __OFADD__(v2, v5);
    v2 += v5;
    if (v6)
    {
      __break(1u);
      break;
    }
  }

  return v2;
}

unint64_t sub_21B2A0BE0(unint64_t a1, unint64_t a2)
{
  v4 = sub_21B34BCE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21B2A135C(a1, a2);
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_113;
  }

  v9 = 1;
  if ((result - 14) > 0xFFFFFFFB || (result - 8232) < 2 || result == 133)
  {
    return v9;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    return 0;
  }

  v50 = 4 * v10;
  v11 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v51 = 4 << v11;
  v52 = v4;
  v47 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v48 = a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = (v5 + 8);

  v9 = 0;
  v13 = 15;
  v49 = v10;
  while (1)
  {
    v14 = v13;
    v15 = v13 & 0xC;
    v16 = (v13 & 1) == 0 || v15 == v51;
    v17 = v16;
    if (!v16)
    {
      break;
    }

    result = v13;
    if (v15 == v51)
    {
      result = sub_21B2E1AD0(v13, a1, a2);
      if (v10 <= result >> 16)
      {
        goto LABEL_105;
      }
    }

    else if (v10 <= v13 >> 16)
    {
      goto LABEL_105;
    }

    if ((result & 1) == 0)
    {
      result = result & 0xC | sub_21B2A15B8(result, a1, a2) & 0xFFFFFFFFFFFFFFF3 | 1;
    }

LABEL_27:
    if ((a2 & 0x1000000000000000) != 0)
    {
      v13 = sub_21B34AD74();
      if (!v17)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v53 = a1;
        v54 = v48;
        v20 = *(&v53 + v18);
      }

      else
      {
        v19 = v47;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v19 = sub_21B34B6F4();
        }

        v20 = *(v19 + v18);
      }

      v22 = v20;
      v23 = __clz(v20 ^ 0xFF) - 24;
      if (v22 >= 0)
      {
        LOBYTE(v23) = 1;
      }

      v13 = ((v18 + v23) << 16) | 5;
      if (!v17)
      {
LABEL_33:
        v21 = v14 >> 16;
        result = v14;
        if (v14 >> 16 >= v10)
        {
          goto LABEL_106;
        }

LABEL_43:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_59;
      }
    }

    result = v14;
    if (v15 == v51)
    {
      result = sub_21B2E1AD0(v14, a1, a2);
    }

    v21 = result >> 16;
    if (result >> 16 >= v10)
    {
      goto LABEL_107;
    }

    if (result)
    {
      goto LABEL_43;
    }

    v21 = sub_21B2A15B8(result, a1, a2) >> 16;
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_44:
      if ((a2 & 0x2000000000000000) != 0)
      {
        v53 = a1;
        v54 = v48;
        v25 = &v53 + v21;
      }

      else
      {
        v24 = v47;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v24 = sub_21B34B6F4();
        }

        v25 = (v24 + v21);
      }

      v26 = *v25;
      if (*v25 < 0)
      {
        v27 = (__clz(v26 ^ 0xFF) - 24);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            v26 = ((v26 & 0xF) << 12) | ((v25[1] & 0x3F) << 6) | v25[2] & 0x3F;
          }

          else
          {
            v26 = ((v26 & 0xF) << 18) | ((v25[1] & 0x3F) << 12) | ((v25[2] & 0x3F) << 6) | v25[3] & 0x3F;
          }
        }

        else if (v27 != 1)
        {
          v26 = v25[1] & 0x3F | ((v26 & 0x1F) << 6);
        }
      }

      goto LABEL_60;
    }

LABEL_59:
    v26 = sub_21B34B624();
LABEL_60:
    sub_21B34BCF4();
    v28 = sub_21B34BCD4();
    v29 = *v12;
    (*v12)(v7, v52);
    if ((v28 & 1) == 0)
    {
      if (v26 == 8205 || (sub_21B34BCF4(), v32 = sub_21B34BCC4(), v33 = v52, v29(v7, v52), (v32 & 1) != 0) || (sub_21B34BCF4(), v34 = sub_21B34BCA4(), result = (v29)(v7, v33), (v34 & 1) != 0))
      {
        v10 = v49;
      }

      else
      {
        v35 = __OFADD__(v9++, 1);
        v10 = v49;
        if (v35)
        {
          goto LABEL_112;
        }
      }

      goto LABEL_13;
    }

    v30 = sub_21B2A14AC(v14, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v31 = sub_21B34AD74();
    }

    else
    {
      v31 = ((sub_21B34B614() + (v30 >> 16)) << 16) | 5;
    }

    v10 = v49;
    if (v50 <= v31 >> 14)
    {
      goto LABEL_91;
    }

    v36 = sub_21B2A14AC(v31, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21B34B624();
    }

    else
    {
      v37 = v36 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v53 = a1;
        v54 = v48;
        v39 = &v53 + v37;
      }

      else
      {
        v38 = v47;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v38 = sub_21B34B6F4();
        }

        v39 = (v38 + v37);
      }

      result = *v39;
      if (*v39 < 0)
      {
        v40 = (__clz(result ^ 0xFF) - 24);
        if (v40 > 2)
        {
          if (v40 == 3)
          {
            v41 = v39[1];
            v42 = v39[2];
            v43 = ((result & 0xF) << 12) | ((v41 & 0x3F) << 6);
          }

          else
          {
            v44 = v39[1];
            v45 = v39[2];
            v42 = v39[3];
            v43 = ((result & 0xF) << 18) | ((v44 & 0x3F) << 12) | ((v45 & 0x3F) << 6);
          }

          result = v43 & 0xFFFFFFC0 | v42 & 0x3F;
        }

        else if (v40 != 1)
        {
          result = v39[1] & 0x3F | ((result & 0x1F) << 6);
        }
      }
    }

    if (result == 65038)
    {
      v35 = __OFADD__(v9++, 1);
      if (v35)
      {
        goto LABEL_111;
      }

      goto LABEL_13;
    }

    if (result == 65039)
    {
      v35 = __OFADD__(v9, 2);
      v9 += 2;
      if (v35)
      {
        goto LABEL_110;
      }
    }

    else
    {
LABEL_91:
      sub_21B34BCF4();
      v46 = sub_21B34BCB4();
      result = (v29)(v7, v52);
      if (v46)
      {
        v35 = __OFADD__(v9, 2);
        v9 += 2;
        if (v35)
        {
          goto LABEL_108;
        }
      }

      else
      {
        v35 = __OFADD__(v9++, 1);
        if (v35)
        {
          goto LABEL_109;
        }
      }
    }

LABEL_13:
    if (v50 == v13 >> 14)
    {

      return v9;
    }
  }

  result = v13;
  if (v10 > v13 >> 16)
  {
    goto LABEL_27;
  }

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
  return result;
}

uint64_t sub_21B2A11F8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  v4 = 0;
  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v6 = 4 * v5;
  if (!v5 || a1 < 1)
  {
LABEL_10:
    if (v4 == v6)
    {
    }

    else
    {
      sub_21B34ADC4();
      v14 = sub_21B34AEB4();
      v15 = MEMORY[0x21CEED540](v14);

      MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

      return v15;
    }

    return v3;
  }

  v8 = 0;
  while (1)
  {
    v9 = sub_21B34AE94();
    v11 = sub_21B2A0BE0(v9, v10);

    v13 = __OFADD__(v8, v11);
    v8 += v11;
    if (v13)
    {
      break;
    }

    v4 = sub_21B34ADB4() >> 14;
    if (v4 >= v6 || v8 >= a1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21B2A135C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_21B2A14AC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_21B34B624();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_21B34B6F4() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}