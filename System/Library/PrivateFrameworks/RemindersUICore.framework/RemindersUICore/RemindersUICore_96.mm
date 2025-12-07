uint64_t TTRTreeContentsQueryable.topLevelItem(containing:)@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v41 = a1;
  v37 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v30 - v19;
  v21 = *(a3 + 48);
  v22 = v41;
  v33 = a3;
  v34 = a2;
  v41 = v21;
  v21(v22, a2, a3, v18);
  v40 = *(v13 + 48);
  if (v40(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v35 + 8))(v12, v36);
    return (*(v13 + 56))(v37, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v38 = *(v13 + 32);
    v39 = v13 + 32;
    v38(v20, v12, AssociatedTypeWitness);
    v24 = *(v13 + 16);
    v31 = v20;
    v24(v16, v20, AssociatedTypeWitness);
    v26 = v33;
    v25 = v34;
    v41(v16, v34, v33);
    v27 = v40(v9, 1, AssociatedTypeWitness);
    v32 = v13;
    v28 = *(v13 + 8);
    if (v27 != 1)
    {
      do
      {
        v28(v16, AssociatedTypeWitness);
        v38(v16, v9, AssociatedTypeWitness);
        v41(v16, v25, v26);
      }

      while (v40(v9, 1, AssociatedTypeWitness) != 1);
    }

    v28(v31, AssociatedTypeWitness);
    (*(v35 + 8))(v9, v36);
    v29 = v37;
    v38(v37, v16, AssociatedTypeWitness);
    return (*(v32 + 56))(v29, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_21D9E147C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)) + *(*(v3 - 8) + 64);
  swift_getAssociatedTypeWitness();
  v6 = *(sub_21DBFBA8C() - 8);
  return (*(v4 + 32))(*a1, v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80)), v3, v4);
}

uint64_t sub_21D9E1590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v12 = *(AssociatedConformanceWitness + 24);
  v13 = swift_checkMetadataState();
  v12(v13, AssociatedConformanceWitness);
  v12(v13, AssociatedConformanceWitness);
  swift_getAssociatedConformanceWitness();
  v14 = sub_21DBFA10C();
  v15 = *(v6 + 8);
  v15(v8, AssociatedTypeWitness);
  v15(v11, AssociatedTypeWitness);
  return v14 & 1;
}

uint64_t TTRTreeContentsQueryable.childIndex(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  TTRTreeContentsQueryable.parentAndChildIndex(for:)(a1, a2, a3, &v14 - v10);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v11, 1, TupleTypeMetadata2) == 1)
  {
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  else
  {
    v12 = *&v11[*(TupleTypeMetadata2 + 48)];
    (*(*(v6 - 8) + 8))(v11, v6);
  }

  return v12;
}

uint64_t TTRTreeContentsQueryable.level(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v28 = a2;
  v14 = TTRTreeContentsQueryable.contains(_:)(a1, a2, a3);
  v15 = 0;
  if (v14)
  {
    v24[3] = v14;
    v25 = v7;
    v16 = a1;
    v17 = v10 + 16;
    (*(v10 + 16))(v13, v16, AssociatedTypeWitness);
    v15 = 0;
    v27 = a3;
    v18 = *(a3 + 48);
    v19 = (v10 + 8);
    v20 = (v17 + 32);
    v21 = (v17 + 16);
    while (1)
    {
      v18(v13, v28, v27);
      (*v19)(v13, AssociatedTypeWitness);
      if ((*v20)(v9, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      (*v21)(v13, v9, AssociatedTypeWitness);
      if (__OFADD__(v15++, 1))
      {
        __break(1u);
        break;
      }
    }

    (*(v26 + 8))(v9, v25);
  }

  return v15;
}

BOOL TTRTreeContentsQueryable.isTopLevel(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  if (!TTRTreeContentsQueryable.contains(_:)(a1, a2, a3))
  {
    return 0;
  }

  (*(a3 + 48))(a1, a2, a3);
  v11 = (*(*(AssociatedTypeWitness - 8) + 48))(v10, 1, AssociatedTypeWitness) == 1;
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_21D9E1D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  return sub_21D9E1DF8(v9, a2, a3, a4);
}

uint64_t sub_21D9E1DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_21DBFBA8C();
  v9 = *(v24 - 8);
  v10 = MEMORY[0x28223BE20](v24);
  v12 = &v24 - v11;
  v13 = *(a2 - 8);
  (*(v13 + 16))(a4, a1, a2, v10);
  v15 = type metadata accessor for DerivedTreePreorderIterator.Level(255, a2, a3, v14);
  sub_21DBFC5CC();
  swift_allocObject();
  v16 = sub_21DBFA60C();
  v18 = v17;
  (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
  v19 = TTRTreeContentsQueryable.children(of:)(v12, a2, a3);
  (*(v9 + 8))(v12, v24);
  *v18 = v19;
  v18[1] = 0;
  sub_21D23C8B4(v16, v15);
  v21 = v20;
  (*(v13 + 8))(a1, a2);
  result = type metadata accessor for DerivedTreePreorderIterator(0, a2, a3, v22);
  *(v25 + *(result + 36)) = v21;
  return result;
}

uint64_t TTRTreeContentsQueryable.firstTopLevelItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 56);
  v13 = 1;
  v22 = v11 + 56;
  v12(&v20 - v9, 1, 1, AssociatedTypeWitness, v8);
  v14 = *(a2 + 24);
  v21 = a1;
  v15 = v14(v10, a1, a2);
  v16 = *(v7 + 8);
  v20 = v6;
  v16(v10, v6);
  if (v15 < 1)
  {
    v18 = v23;
  }

  else
  {
    (v12)(v10, 1, 1, AssociatedTypeWitness);
    v17 = v23;
    (*(a2 + 32))(0, v10, v21, a2);
    v16(v10, v20);
    v13 = 0;
    v18 = v17;
  }

  return (v12)(v18, v13, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeContentsQueryable.lastChild(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (*(a3 + 24))();
  v9 = v8 < 1;
  v10 = v8 - 1;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    (*(a3 + 32))(v10, a1, a2, a3);
    v11 = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 56);

  return v13(a4, v11, 1, AssociatedTypeWitness);
}

uint64_t sub_21D9E2300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v12 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v9 + 32))(v15 + v13, v12, a3);
  *(v15 + v14) = a2;
  swift_getAssociatedTypeWitness();

  result = sub_21DBFBE4C();
  *a5 = result;
  return result;
}

uint64_t sub_21D9E247C@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v19 - v8;
  v10 = sub_21DBFBA8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  v14 = swift_projectBox();
  swift_beginAccess();
  (*(v7 + 16))(v9, v14, AssociatedTypeWitness);
  (*(a3 + 48))(v9, a2, a3);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  if ((*(v7 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v15 = 1;
    v16 = v20;
  }

  else
  {
    v17 = v20;
    (*(v7 + 32))(v20, v13, AssociatedTypeWitness);
    swift_beginAccess();
    (*(v7 + 24))(v14, v17, AssociatedTypeWitness);
    v15 = 0;
    v16 = v17;
  }

  return (*(v7 + 56))(v16, v15, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeContentsQueryable.bestInsertionLocation(among:localItemIDsToBeMoved:allowsInsertingAtRootLevel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v83 = a2;
  v92 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_21DBFBA8C();
  v79 = *(v13 - 8);
  v80 = v13;
  MEMORY[0x28223BE20](v13);
  v84 = &v68 - v14;
  v86 = v12;
  v85 = *(v12 - 8);
  MEMORY[0x28223BE20](v15);
  v78 = &v68 - v16;
  v82 = AssociatedConformanceWitness;
  v18 = type metadata accessor for TTRTreeLocation(255, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  v19 = sub_21DBFBA8C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v81 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v77 = &v68 - v23;
  MEMORY[0x28223BE20](v24);
  v91 = &v68 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v68 - v27;
  v93 = *(v18 - 8);
  MEMORY[0x28223BE20](v29);
  v75 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v89 = a5;
  v90 = &v68 - v33;
  v95 = a1;
  v88 = a4;
  if (a3)
  {
    sub_21DBF8E0C();
  }

  else
  {
    v76 = &v68;
    MEMORY[0x28223BE20](v32);
    *(&v68 - 2) = a4;
    *(&v68 - 1) = a5;
    v34 = v20;
    v35 = v19;
    v36 = sub_21DBFA74C();
    sub_21DBF8E0C();
    swift_getWitnessTable(MEMORY[0x277D83960], v36);
    swift_getWitnessTable(MEMORY[0x277D83990], v36);
    v19 = v35;
    v20 = v34;
    sub_21DBFAD6C();
    a1 = v95;
  }

  v94 = a1;
  v37 = sub_21DBFA74C();
  sub_21DBF8E0C();
  swift_getWitnessTable(MEMORY[0x277D83988], v37);
  sub_21DBFACEC();
  v38 = v93;
  v76 = *(v93 + 48);
  if ((v76)(v28, 1, v18) == 1)
  {

    (*(v20 + 8))(v28, v19);

    return (*(v38 + 56))(v92, 1, 1, v18);
  }

  v74 = v37;
  v40 = *(v38 + 32);
  v41 = v90;
  v72 = v38 + 32;
  v71 = v40;
  v40(v90, v28, v18);

  v42 = *(v38 + 16);
  v43 = v38;
  v44 = v91;
  v42(v91, v41, v18);
  v45 = *(v43 + 56);
  v70 = v43 + 56;
  v69 = v45;
  v45(v44, 0, 1, v18);
  v46 = sub_21DBFA6DC();
  if (v46 >= 2)
  {
    v68 = v20;
    v73 = v19;
    v94 = v83;
    MEMORY[0x28223BE20](v46);
    v47 = v89;
    *(&v68 - 4) = v88;
    *(&v68 - 3) = v47;
    v48 = v86;
    *(&v68 - 2) = v87;
    swift_getAssociatedConformanceWitness();
    v49 = sub_21DBFABAC();
    swift_getWitnessTable(MEMORY[0x277D83B68], v49);
    v50 = v48;
    v51 = sub_21DBFA42C();
    if (sub_21DBFAAFC() == 1)
    {
      v94 = v51;
      swift_getWitnessTable(MEMORY[0x277D83B78], v49);
      v52 = v84;
      sub_21DBFACEC();

      v53 = v85;
      if ((*(v85 + 48))(v52, 1, v50) != 1)
      {
        v54 = v78;
        v55 = (*(v53 + 32))(v78, v52, v50);
        v84 = &v68;
        v94 = a1;
        MEMORY[0x28223BE20](v55);
        v57 = v88;
        v56 = v89;
        *(&v68 - 4) = v88;
        *(&v68 - 3) = v56;
        *(&v68 - 2) = v54;
        sub_21DBF8E0C();
        swift_getWitnessTable(MEMORY[0x277D83970], v74);
        v58 = v53;
        v59 = v77;
        sub_21DBFA51C();

        v60 = (v76)(v59, 1, v18);
        v20 = v68;
        v61 = *(v68 + 8);
        if (v60 != 1)
        {
          v44 = v91;
          v19 = v73;
          v61(v91, v73);
          (*(v93 + 8))(v90, v18);

          v65 = v75;
          v66 = v59;
          v67 = v71;
          v71(v75, v66, v18);
          v67(v44, v65, v18);
          v69(v44, 0, 1, v18);
          (*(v58 + 8))(v78, v86);
          return (*(v20 + 32))(v92, v44, v19);
        }

        v61(v59, v73);
        v62 = (*(v53 + 8))(v78, v86);
        goto LABEL_14;
      }
    }

    else
    {

      v52 = v84;
      (*(v85 + 56))(v84, 1, 1, v50);
    }

    v62 = (*(v79 + 8))(v52, v80);
    v20 = v68;
    v57 = v88;
LABEL_14:
    v94 = a1;
    MEMORY[0x28223BE20](v62);
    v63 = v89;
    *(&v68 - 4) = v57;
    *(&v68 - 3) = v63;
    *(&v68 - 2) = v87;
    sub_21DBF8E0C();
    swift_getWitnessTable(MEMORY[0x277D83970], v74);
    v64 = v81;
    sub_21DBFA50C();

    v44 = v91;
    v19 = v73;
    (*(v20 + 8))(v91, v73);
    (*(v93 + 8))(v90, v18);

    (*(v20 + 32))(v44, v64, v19);
    return (*(v20 + 32))(v92, v44, v19);
  }

  (*(v43 + 8))(v41, v18);

  return (*(v20 + 32))(v92, v44, v19);
}

BOOL sub_21D9E31B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, a1, v5, v7);
  v10 = (*(*(AssociatedTypeWitness - 8) + 48))(v9, 1, AssociatedTypeWitness) == 1;
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_21D9E3304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_21DBFBA8C();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v17);
  v34 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v38 = &v32 - v21;
  v22 = *(a4 + 40);
  v35 = a2;
  v22(a1, a3, a4, v20);
  v23 = v16[6];
  if (v23(v15, 1, AssociatedTypeWitness) == 1)
  {
    v12 = v15;
    v24 = v39;
  }

  else
  {
    v25 = v38;
    v33 = v16[4];
    v33(v38, v15, AssociatedTypeWitness);
    (*(a4 + 48))(v25, a3, a4);
    if (v23(v12, 1, AssociatedTypeWitness) != 1)
    {
      v27 = v34;
      v33(v34, v12, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v24 = v39;
      (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v29 = v16[1];
      v29(v27, AssociatedTypeWitness);
      v29(v38, AssociatedTypeWitness);
      v26 = 0;
      goto LABEL_7;
    }

    (v16[1])(v38, AssociatedTypeWitness);
    v24 = v39;
  }

  (*(v36 + 8))(v12, v37);
  swift_getAssociatedConformanceWitness();
  v26 = 1;
LABEL_7:
  v30 = swift_getAssociatedTypeWitness();
  return (*(*(v30 - 8) + 56))(v24, v26, 1, v30);
}

uint64_t sub_21D9E36D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v66 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v55 = &v54 - v8;
  v10 = v9;
  v11 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v59 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v54 - v12;
  v14 = sub_21DBFBA8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  v60 = v11;
  v64 = *(v11 - 8);
  MEMORY[0x28223BE20](v18);
  v58 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v63 = &v54 - v21;
  v23 = MEMORY[0x28223BE20](v22);
  v67 = &v54 - v24;
  (*(v15 + 16))(v17, a1, v14, v23);
  v25 = *(AssociatedTypeWitness - 8);
  v26 = 1;
  v27 = (*(v25 + 48))(v17, 1, AssociatedTypeWitness);
  v62 = v13;
  v56 = AssociatedConformanceWitness;
  v57 = AssociatedTypeWitness;
  if (v27 != 1)
  {
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v26 = 0;
    v15 = v25;
    v14 = AssociatedTypeWitness;
  }

  (*(v15 + 8))(v17, v14);
  v28 = v66;
  v29 = *(v66 + 56);
  v30 = v67;
  v31 = v26;
  v32 = v10;
  v29(v67, v31, 1, v10);
  v33 = v63;
  (*(v28 + 16))(v63, v61, v10);
  v29(v33, 0, 1, v10);
  v34 = v64;
  v35 = *(TupleTypeMetadata2 + 48);
  v36 = *(v64 + 16);
  v37 = v62;
  v38 = v30;
  v39 = v60;
  v36(v62, v38, v60);
  v61 = v35;
  v36(&v37[v35], v33, v39);
  v40 = v28;
  v41 = v37;
  v42 = *(v40 + 48);
  if (v42(v41, 1, v32) != 1)
  {
    v45 = v58;
    v36(v58, v41, v39);
    v46 = v61;
    v47 = v32;
    if (v42(&v41[v61], 1, v32) != 1)
    {
      v49 = v66;
      v50 = v55;
      (*(v66 + 32))(v55, &v41[v46], v32);
      swift_getAssociatedConformanceWitness();
      v44 = sub_21DBFA10C();
      v51 = *(v49 + 8);
      v51(v50, v32);
      v52 = *(v64 + 8);
      v52(v63, v39);
      v52(v67, v39);
      v51(v45, v32);
      v52(v41, v39);
      return v44 & 1;
    }

    v48 = *(v64 + 8);
    v48(v63, v39);
    v48(v67, v39);
    (*(v66 + 8))(v45, v47);
    goto LABEL_8;
  }

  v43 = *(v34 + 8);
  v43(v33, v39);
  v43(v67, v39);
  if (v42(&v41[v61], 1, v32) != 1)
  {
LABEL_8:
    (*(v59 + 8))(v41, TupleTypeMetadata2);
    v44 = 0;
    return v44 & 1;
  }

  v43(v41, v39);
  v44 = 1;
  return v44 & 1;
}

BOOL sub_21D9E3D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  v17 = a4;
  v18 = a5;
  v19 = a3;
  swift_getAssociatedTypeWitness();
  sub_21DBFBA8C();
  v8 = MEMORY[0x277D84A98];
  v9 = MEMORY[0x277D83B88];
  sub_21D10AA90(sub_21D9E6E60, v16, MEMORY[0x277D84A98], MEMORY[0x277D83B88], v10, &v20);
  if (v21)
  {
    v12 = -1;
  }

  else
  {
    v12 = v20;
  }

  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a3;
  sub_21D10AA90(sub_21D9E6CF4, v15, v8, v9, v11, &v20);
  v13 = v20;
  if (v21)
  {
    v13 = -1;
  }

  return v12 < v13;
}

uint64_t TTRTreeContentsQueryable.sortByIndexPath(_:unknownIndexPathTreatment:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = &v34 - v17;
  if (*a2)
  {
    if (*a2 == 1)
    {
      (*(v10 + 56))(&v34 - v17, 1, 1, v9, v18);
      goto LABEL_7;
    }

    sub_21DBF5D1C();
  }

  else
  {
    sub_21DBF5D4C();
  }

  (*(v10 + 56))(v19, 0, 1, v9, v20);
LABEL_7:
  sub_21D1B1F58(v19, v15);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    v21 = sub_21D31DD48(v15);
    v36 = a1;
    MEMORY[0x28223BE20](v21);
    *(&v34 - 4) = a3;
    *(&v34 - 3) = a4;
    *(&v34 - 2) = v4;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v22 = sub_21DBFA74C();
    swift_getTupleTypeMetadata2();
    v23 = MEMORY[0x277D83970];
    swift_getWitnessTable(MEMORY[0x277D83970], v22);
    v36 = sub_21DBFA4EC();
    MEMORY[0x28223BE20](v36);
    *(&v34 - 2) = a3;
    *(&v34 - 1) = a4;
    v24 = sub_21DBFA74C();
    swift_getWitnessTable(v23, v24);
    v25 = sub_21DBFA55C();

    v36 = v25;
    *&v27 = MEMORY[0x28223BE20](v26).n128_u64[0];
    *(&v34 - 2) = a3;
    *(&v34 - 1) = a4;
    WitnessTable = swift_getWitnessTable(MEMORY[0x277D83988], v24, v27);
    v30 = sub_21D0E5014(sub_21D9E63A8, (&v34 - 4), v24, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v29);

    sub_21D31DD48(v19);
  }

  else
  {
    v31 = (*(v10 + 32))(v12, v15, v9);
    v36 = a1;
    MEMORY[0x28223BE20](v31);
    *(&v34 - 4) = a3;
    *(&v34 - 3) = a4;
    *(&v34 - 2) = v4;
    *(&v34 - 1) = v12;
    swift_getAssociatedTypeWitness();
    v32 = sub_21DBFA74C();
    swift_getWitnessTable(MEMORY[0x277D83970], v32);
    v30 = sub_21DBFA55C();
    sub_21D31DD48(v19);
    (*(v10 + 8))(v12, v9);
  }

  return v30;
}

uint64_t sub_21D9E4370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  TTRTreeContentsQueryable.indexPath(for:)(a1, a4, &v15 - v10);
  v12 = sub_21DBF5D5C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    return (*(v13 + 32))(a5, v11, v12);
  }

  sub_21D31DD48(v11);
  return (*(v13 + 16))(a5, a2, v12);
}

uint64_t sub_21D9E44C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a2;
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  sub_21D9E4370(a1, a4, a6, &v18 - v14);
  sub_21D9E4370(v19, a4, a6, v12);
  LOBYTE(a6) = sub_21DBF5C8C();
  v16 = *(v10 + 8);
  v16(v12, v9);
  v16(v15, v9);
  return a6 & 1;
}

uint64_t sub_21D9E4638@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = sub_21DBF5D5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRTreeContentsQueryable.indexPath(for:)(a1, a3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21D31DD48(v9);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v22, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v21[1] = v4;
    v16 = *(v11 + 32);
    v16(v13, v9, v10);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v18 = swift_getTupleTypeMetadata2();
    v19 = *(v18 + 48);
    v20 = v22;
    (*(*(AssociatedTypeWitness - 8) + 16))(v22, a1, AssociatedTypeWitness);
    v16((v20 + v19), v13, v10);
    return (*(*(v18 - 8) + 56))(v20, 0, 1, v18);
  }
}

uint64_t sub_21D9E4900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_21DBF5D5C();
  swift_getTupleTypeMetadata2();
  return sub_21DBF5C8C() & 1;
}

uint64_t sub_21D9E4990@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBF5D5C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = v15 - v10;
  (*(v12 + 16))(v15 - v10, a1, TupleTypeMetadata2, v9);
  v13 = *(TupleTypeMetadata2 + 48);
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, v11, AssociatedTypeWitness);
  return (*(*(v7 - 8) + 8))(&v11[v13], v7);
}

uint64_t TTRTreeContentsQueryable.ancestorsToExpand<A>(forRevealing:transform:isExpanded:itemExpandedStateIsUnknownIfParentIsCollapsed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v10 = sub_21DBFA74C();
  v11 = sub_21DBFA74C();
  v12 = MEMORY[0x277D83970];
  swift_getWitnessTable(MEMORY[0x277D83970], v10);
  swift_getWitnessTable(v12, v11);
  sub_21DBFA56C();
  v13 = sub_21DBFA4AC();

  return v13;
}

uint64_t sub_21D9E4C7C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a7;
  v45 = a8;
  v43 = a6;
  v41 = a4;
  v42 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = AssociatedTypeWitness;
  if (a2)
  {
    sub_21D23CE60(AssociatedTypeWitness, AssociatedTypeWitness);
    v16 = *(v15 - 8);
    swift_allocObject();
    v17 = sub_21DBFA60C();
    (*(v16 + 16))(v18, a1, v15);
    sub_21D23C8B4(v17, v15);
  }

  else
  {
    sub_21DBFA68C();
  }

  *&v46 = TTRTreeContentsQueryable.ancestors(of:)(a1, a9, a11);
  v19 = sub_21DBFBE5C();
  swift_getWitnessTable(MEMORY[0x277D84060], v19);
  sub_21DBFA76C();
  v20 = sub_21DBFA66C();

  v47 = v20;
  v21 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83958], v21);
  v23 = MEMORY[0x223D42810](&v46, v21, WitnessTable);
  v47 = v46;
  MEMORY[0x28223BE20](v23);
  v34 = a9;
  v35 = a10;
  v36 = a11;
  v37 = a12;
  v40 = a11;
  v38 = v41;
  v39 = v42;
  v24 = sub_21DBFC39C();
  v25 = swift_getWitnessTable(MEMORY[0x277D84450], v24);
  v27 = sub_21D0E5014(sub_21D9E6C8C, &v33, v24, a10, MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v26);

  if (v43)
  {
    v47 = v27;
    v29 = sub_21DBFA74C();
    swift_getWitnessTable(MEMORY[0x277D83988], v29);
    sub_21DBFACDC();
    v30 = sub_21DBFBC2C();
    swift_getWitnessTable(MEMORY[0x277D83FB0], v30);
    return sub_21DBFA76C();
  }

  else
  {
    *&v46 = v27;
    MEMORY[0x28223BE20](v28);
    v34 = a9;
    v35 = a10;
    v36 = v40;
    v37 = a12;
    v38 = v44;
    v39 = v45;
    v32 = sub_21DBFA74C();
    swift_getWitnessTable(MEMORY[0x277D83998], v32);
    return sub_21DBFBFDC();
  }
}

uint64_t TTRTreeContentsUnknownIndexPathTreatment.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t (*sub_21D9E50FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a2);
  return sub_21D9E6E08;
}

uint64_t sub_21D9E522C(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  (*(v13 + 16))(&v16 - v11, a1, AssociatedTypeWitness, v10);
  (*(v13 + 56))(v12, 0, 1, AssociatedTypeWitness);
  v14 = a2(v12);
  (*(v9 + 8))(v12, v8);
  return v14;
}

uint64_t (*sub_21D9E53A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  sub_21D0D32E4(a1, v9);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  sub_21D0D0FD0(v9, (v7 + 5));
  return sub_21D9E6DBC;
}

uint64_t TTRTreeContentsQueryable.debugTreeDescription.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v18 = MEMORY[0x277D84F90];
  (*(*(AssociatedTypeWitness - 8) + 56))(&v13[-v8], 1, 1, AssociatedTypeWitness, v7);
  v14 = a1;
  v15 = a2;
  v16 = &v18;
  v10 = TTRTreeContentsQueryable.debugTraverse(startingWithChildrenOf:using:)(v9, sub_21D9E64C4, v13, a1, a2);
  (*(v6 + 8))(v9, v5, v10);
  v17 = v18;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
  v11 = sub_21DBFA07C();
  swift_bridgeObjectRelease_n();
  return v11;
}

char *sub_21D9E5620(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_21DBFA6DC();
  v7 = sub_21DBFA3BC();
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v13 = v12;
  sub_21DBFBEEC();

  MEMORY[0x223D42AA0](0x6574692865646F4ELL, 0xEB00000000203A6DLL);
  MEMORY[0x223D42AA0](v11, v13);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  v14 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v14;
  if ((result & 1) == 0)
  {
    result = sub_21D210A84(0, *(v14 + 2) + 1, 1, v14);
    v14 = result;
    *a3 = result;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    result = sub_21D210A84((v16 > 1), v17 + 1, 1, v14);
    v14 = result;
    *a3 = result;
  }

  *(v14 + 2) = v17 + 1;
  v18 = &v14[16 * v17];
  *(v18 + 4) = v7;
  *(v18 + 5) = v9;
  return result;
}

double TTRTreeContentsQueryable.debugTraverse(startingWithChildrenOf:using:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = TTRTreeContentsQueryable.children(of:)(a1, a4, a5);
  swift_getAssociatedTypeWitness();
  v10 = sub_21DBFA68C();
  sub_21D9E58A0(v9, v10, a2, a3, a4, a5);

  return result;
}

void sub_21D9E58A0(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v52 = a2;
  v53 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = sub_21DBFBA8C();
  v13 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v40 - v14;
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v16;
  MEMORY[0x28223BE20](v18);
  v56 = &v40 - v19;
  if (sub_21DBFA6DC())
  {
    v20 = 0;
    v21 = (v54 + 16);
    v44 = (v54 + 56);
    v45 = (v54 + 32);
    v42 = (v54 + 8);
    v43 = (v13 + 8);
    v50 = a6;
    v51 = v7;
    v46 = a1;
    v47 = a5;
    v41 = a3;
    while (1)
    {
      v24 = sub_21DBFA6AC();
      sub_21DBFA61C();
      v25 = a3;
      if (v24)
      {
        v26 = v21;
        v27 = *(v54 + 16);
        v28 = v26;
        v27(v56, a1 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v20, AssociatedTypeWitness);
      }

      else
      {
        v38 = sub_21DBFBF7C();
        if (v40 != 8)
        {
          goto LABEL_14;
        }

        v57 = v38;
        v39 = v21;
        v27 = *v21;
        v28 = v39;
        v27(v56, &v57, AssociatedTypeWitness);
        swift_unknownObjectRelease();
      }

      v29 = v52;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v55 = v20 + 1;
      (*v45)(v17, v56, AssociatedTypeWitness);
      v25(v17, v29);
      v30 = v48;
      v27(v48, v17, AssociatedTypeWitness);
      (*v44)(v30, 0, 1, AssociatedTypeWitness);
      v31 = TTRTreeContentsQueryable.children(of:)(v30, a5, v50);
      (*v43)(v30, v49);
      v57 = v31;
      v32 = sub_21DBFA74C();
      swift_getWitnessTable(MEMORY[0x277D83988], v32);
      if (sub_21DBFACFC())
      {
        (*v42)(v17, AssociatedTypeWitness);

        v22 = v41;
      }

      else
      {
        sub_21D23CE60(AssociatedTypeWitness, AssociatedTypeWitness);
        v33 = v54;
        swift_allocObject();
        v34 = sub_21DBFA60C();
        v27(v35, v17, AssociatedTypeWitness);
        sub_21D23C8B4(v34, AssociatedTypeWitness);
        v36 = sub_21DBFA66C();

        v37 = v41;
        sub_21D9E58A0(v31, v36, v41, v53, a5, v50);

        (*(v33 + 8))(v17, AssociatedTypeWitness);
        v22 = v37;
      }

      v21 = v28;
      a1 = v46;
      v23 = sub_21DBFA6DC();
      ++v20;
      a5 = v47;
      a3 = v22;
      if (v55 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_21D9E5D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_21DBFBA8C();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v35 = &v35 - v9;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v41 = &v35 - v12;
  v13 = *(a1 + 36);
  v38 = v6;
  v39 = v5;
  v40 = type metadata accessor for DerivedTreePreorderIterator.Level(255, v6, v5, v14);
  v15 = sub_21DBFA74C();
  while (1)
  {
    v16 = *(v3 + v13);
    *&v45 = v16;
    WitnessTable = swift_getWitnessTable(MEMORY[0x277D83958], v15, v35);
    sub_21DBFA04C();
    if (!v47)
    {
      break;
    }

    v18 = *(&v47 + 1);
    sub_21DBF8E0C();
    v19 = sub_21DBFA6DC();
    swift_bridgeObjectRelease_n();
    if (v18 != v19)
    {
      break;
    }

    v20 = swift_getWitnessTable(MEMORY[0x277D83990], v15);
    MEMORY[0x223D43510](&v47, v15, WitnessTable, v20);
  }

  v46 = v16;
  swift_getWitnessTable(MEMORY[0x277D83980], v15);
  sub_21DBFAC2C();
  v45 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A050, &qword_21DC10D10);
  sub_21D0E8418(&qword_280D0C360, MEMORY[0x277D83D18]);
  sub_21DBFA04C();
  if (v44)
  {
    return (*(v10 + 56))(v42, 1, 1, AssociatedTypeWitness);
  }

  v22 = v43;
  v23 = v40;
  sub_21DBFA78C();
  v24 = v41;
  sub_21DBFA78C();

  sub_21DBFA67C();
  v25 = *(v3 + v13);
  result = sub_21D345304(v22, v25, v23);
  v26 = v25 + 16 * v22;
  v28 = *(v26 + 40);
  v27 = (v26 + 40);
  v29 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    *v27 = v29;
    nullsub_1();
    v30 = v35;
    (*(v10 + 16))(v35, v24, AssociatedTypeWitness);
    v31 = *(v10 + 56);
    v31(v30, 0, 1, AssociatedTypeWitness);
    v32 = TTRTreeContentsQueryable.children(of:)(v30, v38, v39);
    (*(v36 + 8))(v30, v37);
    *&v47 = v32;
    v33 = sub_21DBFA74C();
    swift_getWitnessTable(MEMORY[0x277D83988], v33);
    if (sub_21DBFACFC())
    {
    }

    else
    {
      v47 = v32;
      sub_21DBFA6FC();
    }

    v34 = v42;
    (*(v10 + 32))(v42, v41, AssociatedTypeWitness);
    return (v31)(v34, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_21D9E642C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 48);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v5(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  *a2 = result;
  return result;
}

unint64_t sub_21D9E64D4()
{
  result = qword_27CE64958;
  if (!qword_27CE64958)
  {
    atomic_store(result, &qword_27CE64958);
  }

  return result;
}

uint64_t sub_21D9E658C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21D9E6628(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    sub_21DBF8E0C();
  }

  return v3;
}

double sub_21D9E6720(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t sub_21D9E6790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D9E6810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D9E689C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_21D9E6918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_21D9E699C(_DWORD *a1, unsigned int a2, uint64_t a3)
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

_DWORD *sub_21D9E6AD8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_21D9E6D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = TTRTreeContentsQueryable.level(of:)(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_21D9E6DBC(uint64_t a1)
{
  v3 = v1[8];
  v4 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  return TTRTreeContentsQueryable.children(of:)(a1, v3, v4);
}

uint64_t TTRShowRemindersInListTipKitDataModelSource.__allocating_init(store:list:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TTRShowRemindersInListTipKitDataModelSource.init(store:list:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

RemindersUICore::TTRTipKitDataModelSourceContextKeyCondition __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowRemindersInListTipKitDataModelSource.hasCompletedReminders()()
{
  v2 = v0;
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v3 = [objc_allocWithZone(MEMORY[0x277D448E0]) initWithStore_];
  v4 = [*(v1 + 24) objectID];
  v11 = 0;
  v5 = [v3 fetchCompletedRemindersCountInList:v4 error:&v11];

  if (v5)
  {
    v6 = v11;
    v7 = [v5 longLongValue];

    if (v7 <= 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    *v2 = v9;
  }

  else
  {
    v10 = v11;
    sub_21DBF52DC();

    swift_willThrow();
  }

  return result;
}

uint64_t TTRShowRemindersInListTipKitDataModelSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id TTRShowRemindersInListTemplateContext.sourceListForSavingAsTemplate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = 0;
  return v2;
}

uint64_t TTRShowRemindersInListTemplateContext.__allocating_init(list:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TTRShowRemindersInListTemplateContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_21D9E715C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = 0;
  return v2;
}

uint64_t static REMReminderChangeItem.dueDateComponents(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = a1;
  v2 = sub_21DBF5C4C();
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF583C();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF5A2C();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8, &qword_21DC109A0);
  v10 = sub_21DBF5A0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21DC35610;
  v15 = *(v11 + 104);
  v15(v14 + v13, *MEMORY[0x277CC99C0], v10);
  v15(v14 + v13 + v12, *MEMORY[0x277CC9978], v10);
  v15(v14 + v13 + 2 * v12, *MEMORY[0x277CC99C8], v10);
  v15(v14 + v13 + 3 * v12, *MEMORY[0x277CC9988], v10);
  v15(v14 + v13 + 4 * v12, *MEMORY[0x277CC9998], v10);
  v15(v14 + v13 + 5 * v12, *MEMORY[0x277CC9968], v10);
  v15(v14 + v13 + 6 * v12, *MEMORY[0x277CC9980], v10);
  v15(v14 + v13 + 7 * v12, *MEMORY[0x277CC99A0], v10);
  sub_21D1D0F50(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v17 = v21;
  v16 = v22;
  (*(v21 + 104))(v6, *MEMORY[0x277CC9830], v22);
  sub_21DBF584C();
  (*(v17 + 8))(v6, v16);
  v18 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  sub_21DBF59FC();
  sub_21DBF58DC();

  return (*(v23 + 8))(v9, v24);
}

id (*REMReminderFlaggedContextChangeItem.isFlagged.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 flagged] > 0;
  return sub_21D9E7714;
}

void sub_21D9E7788(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21D82E490(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_21D9E98D4(v4);
  *a1 = v2;
}

id static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)()
{
  v0 = [objc_opt_self() configurationWithPointSize_];
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  return v2;
}

uint64_t AXTechnology.ttrShouldUseSpeakableStrings.getter(uint64_t a1)
{
  v1 = sub_21DBFA16C();
  v3 = v2;
  if (v1 == sub_21DBFA16C() && v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = sub_21DBFC64C();

  if ((v6 & 1) == 0)
  {
    v8 = sub_21DBFA16C();
    v10 = v9;
    if (v8 != sub_21DBFA16C() || v10 != v11)
    {
      v13 = sub_21DBFC64C();

      if (v13)
      {
        goto LABEL_6;
      }

      v14 = sub_21DBFA16C();
      v16 = v15;
      if (v14 != sub_21DBFA16C() || v16 != v17)
      {
        v19 = sub_21DBFC64C();

        if (v19)
        {
          goto LABEL_6;
        }

        v20 = sub_21DBFA16C();
        v22 = v21;
        if (v20 != sub_21DBFA16C() || v22 != v23)
        {
          v24 = sub_21DBFC64C();

          if (v24)
          {
            goto LABEL_6;
          }

          v25 = sub_21DBFA16C();
          v27 = v26;
          if (v25 == sub_21DBFA16C() && v27 == v28)
          {
            goto LABEL_23;
          }

          v29 = sub_21DBFC64C();

          if ((v29 & 1) == 0)
          {
            v30 = sub_21DBFA16C();
            v32 = v31;
            if (v30 == sub_21DBFA16C() && v32 == v33)
            {
              goto LABEL_23;
            }

            v34 = sub_21DBFC64C();

            if (v34)
            {
              goto LABEL_25;
            }

            v35 = sub_21DBFA16C();
            v37 = v36;
            if (v35 == sub_21DBFA16C() && v37 == v38)
            {
LABEL_23:
              v7 = 1;
              goto LABEL_15;
            }

            v39 = sub_21DBFC64C();

            if ((v39 & 1) == 0)
            {
              v40 = sub_21DBFA16C();
              v42 = v41;
              if (v40 != sub_21DBFA16C() || v42 != v43)
              {
                v7 = sub_21DBFC64C();
                goto LABEL_15;
              }

              goto LABEL_23;
            }
          }

LABEL_25:
          v7 = 1;
          return v7 & 1;
        }
      }
    }

LABEL_14:
    v7 = 0;
LABEL_15:

    return v7 & 1;
  }

LABEL_6:
  v7 = 0;
  return v7 & 1;
}

uint64_t AXTechnology.ttrShouldProvideAdditionalContext.getter(uint64_t a1)
{
  v1 = sub_21DBFA16C();
  v3 = v2;
  if (v1 == sub_21DBFA16C() && v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = sub_21DBFC64C();

  if ((v6 & 1) == 0)
  {
    v8 = sub_21DBFA16C();
    v10 = v9;
    if (v8 != sub_21DBFA16C() || v10 != v11)
    {
      v13 = sub_21DBFC64C();

      if (v13)
      {
        goto LABEL_6;
      }

      v14 = sub_21DBFA16C();
      v16 = v15;
      if (v14 != sub_21DBFA16C() || v16 != v17)
      {
        v19 = sub_21DBFC64C();

        if (v19)
        {
          goto LABEL_6;
        }

        v20 = sub_21DBFA16C();
        v22 = v21;
        if (v20 != sub_21DBFA16C() || v22 != v23)
        {
          v24 = sub_21DBFC64C();

          if (v24)
          {
            goto LABEL_6;
          }

          v25 = sub_21DBFA16C();
          v27 = v26;
          if (v25 != sub_21DBFA16C() || v27 != v28)
          {
            v29 = sub_21DBFC64C();

            if (v29)
            {
              goto LABEL_6;
            }

            v30 = sub_21DBFA16C();
            v32 = v31;
            if (v30 == sub_21DBFA16C() && v32 == v33)
            {
              goto LABEL_26;
            }

            v34 = sub_21DBFC64C();

            if ((v34 & 1) == 0)
            {
              v35 = sub_21DBFA16C();
              v37 = v36;
              if (v35 == sub_21DBFA16C() && v37 == v38)
              {
LABEL_26:
                v7 = 1;
                goto LABEL_15;
              }

              v39 = sub_21DBFC64C();

              if ((v39 & 1) == 0)
              {
                v40 = sub_21DBFA16C();
                v42 = v41;
                if (v40 != sub_21DBFA16C() || v42 != v43)
                {
                  v7 = sub_21DBFC64C();
                  goto LABEL_15;
                }

                goto LABEL_26;
              }
            }

            v7 = 1;
            return v7 & 1;
          }
        }
      }
    }

LABEL_14:
    v7 = 0;
LABEL_15:

    return v7 & 1;
  }

LABEL_6:
  v7 = 0;
  return v7 & 1;
}

uint64_t Array<A>.ttrAccessibilitySpeakableList.getter(void *a1)
{
  v2 = a1[2];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_21DC08D20;
      v5 = MEMORY[0x277D837D0];
      *(v4 + 56) = MEMORY[0x277D837D0];
      v6 = sub_21D17A884();
      v7 = a1[5];
      *(v4 + 32) = a1[4];
      *(v4 + 40) = v7;
      *(v4 + 96) = v5;
      *(v4 + 104) = v6;
      v8 = a1[6];
      v9 = a1[7];
      *(v4 + 64) = v6;
      *(v4 + 72) = v8;
      *(v4 + 80) = v9;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v3 = sub_21DBFA13C();
    }

    else
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v10 = qword_280D1B938;
      sub_21DBF8E0C();
      if (v10 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64960, &qword_21DC35620);
      sub_21D9E9868();
      v11 = sub_21DBFA07C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_21DC08D00;
      *(v12 + 56) = MEMORY[0x277D837D0];
      *(v12 + 64) = sub_21D17A884();
      v13 = &a1[2 * v2 + 4];
      v14 = *(v13 - 1);
      *(v12 + 32) = *(v13 - 2);
      *(v12 + 40) = v14;
      sub_21DBF8E0C();
      v15 = sub_21DBFA13C();
      v17 = v16;

      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](v15, v17);

      return v11;
    }
  }

  else if (v2)
  {
    v3 = a1[4];
    sub_21DBF8E0C();
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t static NSDateFormatter.ttrAccessibilityVoiceOverPronounceableStringForHourOfDay(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v39 - v3;
  v5 = sub_21DBF582C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_21DBFA12C();
  v11 = [objc_opt_self() currentLocale];
  sub_21DBF577C();

  v12 = sub_21DBF574C();
  (*(v6 + 8))(v8, v5);
  v13 = [v9 dateFormatFromTemplate:v10 options:0 locale:v12];

  if (v13 && (v14 = sub_21DBFA16C(), v16 = v15, v13, v40 = v14, v41 = v16, v39[0] = 97, v39[1] = 0xE100000000000000, (*(v6 + 56))(v4, 1, 1, v5), sub_21D176F0C(), v17 = MEMORY[0x277D837D0], sub_21DBFBBAC(), v19 = v18, sub_21D0CF7E0(v4, &unk_27CE65010, &qword_21DC08D60), , (v19 & 1) == 0))
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v32 = sub_21DBF516C();
    v34 = v33;
    if (a1 % 12)
    {
      v35 = a1 % 12;
    }

    else
    {
      v35 = 12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_21DC08D20;
    v37 = MEMORY[0x277D83C10];
    *(v36 + 56) = MEMORY[0x277D83B88];
    *(v36 + 64) = v37;
    *(v36 + 32) = v35;
    *(v36 + 96) = v17;
    *(v36 + 104) = sub_21D17A884();
    *(v36 + 72) = v32;
    *(v36 + 80) = v34;
    v38 = sub_21DBFA13C();

    return v38;
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    if (a1)
    {
      v20 = MEMORY[0x277D837D0];
      sub_21DBF516C();
      if (a1 <= 24)
      {
        v21 = a1;
      }

      else
      {
        v21 = a1 % 24;
      }

      if (v21 > 9)
      {

        v40 = v21;
        v25 = sub_21DBFC5BC();
        v27 = v29;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
        v22 = swift_allocObject();
        v23 = MEMORY[0x277D83B88];
        *(v22 + 16) = xmmword_21DC08D00;
        v24 = MEMORY[0x277D83C10];
        *(v22 + 56) = v23;
        *(v22 + 64) = v24;
        *(v22 + 32) = v21;
        v25 = sub_21DBFA13C();
        v27 = v26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_21DC08D00;
      *(v30 + 56) = v20;
      *(v30 + 64) = sub_21D17A884();
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v31 = sub_21DBFA13C();

      return v31;
    }

    else
    {

      return sub_21DBF516C();
    }
  }
}

id NSAttributedString.ttrAccessibilityConvertedToHaveVoiceOverReadableTagList(withIncludedTags:andExcludedTags:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v78 = 0;
  v79 = 1;
  v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v6 = qword_27CE57130;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_27CE66808;
  v9 = [v7 string];
  v10 = sub_21DBFA16C();
  v12 = v11;

  v13 = MEMORY[0x223D42B30](v10, v12);

  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(v14 + 24) = &v78;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21D9E98CC;
  *(v15 + 24) = v14;
  v76 = sub_21D24B3B4;
  v77 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v73 = 1107296256;
  v74 = sub_21D1A6068;
  v75 = &block_descriptor_129;
  v16 = _Block_copy(&aBlock);
  v17 = v7;

  v70 = v17;
  [v17 enumerateAttribute:v8 inRange:0 options:v13 usingBlock:{2, v16}];
  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
    goto LABEL_45;
  }

  v18 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v20 = sub_21D9D6344(*(a1 + 16), 0);
    v21 = sub_21D9D4F98(&aBlock, v20 + 4, v18, a1);
    v22 = aBlock;
    sub_21DBF8E0C();
    sub_21D0CFAF8(v22);
    if (v21 == v18)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v20 = v19;
LABEL_8:
  aBlock = v20;

  sub_21D9E7788(&aBlock);

  v23 = aBlock;
  v24 = *(aBlock + 2);
  if (v24)
  {
    aBlock = v19;
    sub_21D18E678(0, v24, 0);
    v25 = aBlock;
    v26 = (v23 + 40);
    do
    {
      v27 = *(v26 - 1);
      v28 = *v26;
      v29 = qword_27CE57550;
      sub_21DBF8E0C();
      if (v29 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_21DC08D00;
      *(v30 + 56) = MEMORY[0x277D837D0];
      *(v30 + 64) = sub_21D17A884();
      *(v30 + 32) = v27;
      *(v30 + 40) = v28;
      sub_21DBF8E0C();
      v31 = sub_21DBFA13C();
      v33 = v32;

      aBlock = v25;
      v35 = *(v25 + 2);
      v34 = *(v25 + 3);
      if (v35 >= v34 >> 1)
      {
        sub_21D18E678((v34 > 1), v35 + 1, 1);
        v25 = aBlock;
      }

      *(v25 + 2) = v35 + 1;
      v36 = &v25[16 * v35];
      *(v36 + 4) = v31;
      *(v36 + 5) = v33;
      v26 += 2;
      --v24;
    }

    while (v24);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v68 = Array<A>.ttrAccessibilitySpeakableList.getter(v25);
  v69 = v37;

  v8 = a2;
  v38 = *(a2 + 16);
  v39 = MEMORY[0x277D84F90];
  if (v38)
  {
    v40 = sub_21D9D6344(*(a2 + 16), 0);
    v41 = sub_21D9D4F98(&aBlock, v40 + 4, v38, a2);
    v42 = aBlock;
    v14 = v76;
    sub_21DBF8E0C();
    sub_21D0CFAF8(v42);
    if (v41 == v38)
    {
      v39 = MEMORY[0x277D84F90];
      goto LABEL_21;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v40 = MEMORY[0x277D84F90];
LABEL_21:
  aBlock = v40;

  sub_21D9E7788(&aBlock);

  v43 = aBlock;
  v44 = *(aBlock + 2);
  if (v44)
  {
    aBlock = v39;
    sub_21D18E678(0, v44, 0);
    v45 = aBlock;
    v46 = (v43 + 40);
    do
    {
      v47 = *(v46 - 1);
      v48 = *v46;
      v49 = qword_27CE57550;
      sub_21DBF8E0C();
      if (v49 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_21DC08D00;
      *(v50 + 56) = MEMORY[0x277D837D0];
      *(v50 + 64) = sub_21D17A884();
      *(v50 + 32) = v47;
      *(v50 + 40) = v48;
      sub_21DBF8E0C();
      v51 = sub_21DBFA13C();
      v53 = v52;

      aBlock = v45;
      v55 = *(v45 + 2);
      v54 = *(v45 + 3);
      if (v55 >= v54 >> 1)
      {
        sub_21D18E678((v54 > 1), v55 + 1, 1);
        v45 = aBlock;
      }

      *(v45 + 2) = v55 + 1;
      v56 = &v45[16 * v55];
      *(v56 + 4) = v51;
      *(v56 + 5) = v53;
      v46 += 2;
      --v44;
    }

    while (v44);
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  v14 = Array<A>.ttrAccessibilitySpeakableList.getter(v45);
  v8 = v57;

  aBlock = 0;
  v73 = 0xE000000000000000;
  if (v69)
  {
    MEMORY[0x223D42AA0](v68, v69);

    if (!v8)
    {
      goto LABEL_40;
    }

LABEL_36:
    if (qword_280D1B938 == -1)
    {
LABEL_37:
      MEMORY[0x223D42AA0](qword_280D1B940, qword_280D1B948[0]);
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_21DC08D00;
      *(v58 + 56) = MEMORY[0x277D837D0];
      *(v58 + 64) = sub_21D17A884();
      *(v58 + 32) = v14;
      *(v58 + 40) = v8;
      v59 = sub_21DBFA13C();
      v61 = v60;

      MEMORY[0x223D42AA0](v59, v61);

      goto LABEL_40;
    }

LABEL_46:
    swift_once();
    goto LABEL_37;
  }

  if (qword_27CE57570 != -1)
  {
    swift_once();
  }

  MEMORY[0x223D42AA0](qword_27CE671D0, *algn_27CE671D8);
  if (v8)
  {
    goto LABEL_36;
  }

LABEL_40:
  if (v79 == 1)
  {
    v62 = v70;
  }

  else
  {
    v63 = v78;
    v64 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v65 = sub_21DBFA12C();

    v66 = [v64 initWithString_];

    v62 = v70;
    [v70 insertAttributedString:v66 atIndex:v63];
  }

  return v62;
}

void sub_21D9E92E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_21D0DB414(a1, v12);
  if (v13)
  {
    if ((swift_dynamicCast() & 1) != 0 && v11 >= 1)
    {
      v10 = sub_21DBFA12C();
      [a5 replaceCharactersInRange:a2 withString:{a3, v10}];

      *a6 = a2;
      *(a6 + 8) = 0;
    }
  }

  else
  {
    sub_21D0CF7E0(v12, &qword_27CE5C690, &unk_21DC11AB0);
  }
}

unint64_t Array<A>.ttrAccessibilitySharingSummary()(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_33:
    v3 = sub_21DBFBD7C();
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v28 = v2;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v27 = 0x800000021DC730A0;
  sub_21DBF516C();
  v4 = 0;
  v29 = MEMORY[0x277D84F90];
  v2 = 0x277CBD000uLL;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223D44740](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v8 = [objc_opt_self() stringFromContact:v5 style:{0, v27}];
    if (v8)
    {

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    else
    {
    }

    ++v4;
  }

  while (v7 != v3);
  v9 = MEMORY[0x277D837D0];
  if ((v29 & 0x8000000000000000) == 0 && (v29 & 0x4000000000000000) == 0)
  {
    if (*(v29 + 16))
    {
      goto LABEL_18;
    }

LABEL_36:

LABEL_37:
    v2 = v28;
    if (qword_27CE57200 == -1)
    {
LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_21DC08D00;
      if (v2)
      {
        v23 = sub_21DBFBD7C();
      }

      else
      {
        v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = MEMORY[0x277D83C10];
      *(v22 + 56) = MEMORY[0x277D83B88];
      *(v22 + 64) = v24;
      *(v22 + 32) = v23;
      goto LABEL_42;
    }

LABEL_47:
    swift_once();
    goto LABEL_38;
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x223D44740](0, v29);
  }

  else
  {
    if (!*(v29 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    v10 = *(v29 + 32);
  }

  v11 = v10;

  v12 = [objc_opt_self() stringFromContact:v11 style:0];
  if (!v12)
  {

    goto LABEL_37;
  }

  v13 = v12;
  v14 = sub_21DBFA16C();
  v16 = v15;

  if (v28)
  {
    v17 = sub_21DBFBD7C();
    if (v17 == 1)
    {
LABEL_43:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_21DC08D00;
      *(v26 + 56) = v9;
      *(v26 + 64) = sub_21D17A884();
      *(v26 + 32) = v14;
      *(v26 + 40) = v16;
      v21 = sub_21DBFA13C();

      return v21;
    }
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 == 1)
    {
      goto LABEL_43;
    }
  }

  if (qword_27CE57208 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21DC08D20;
  *(v18 + 56) = v9;
  result = sub_21D17A884();
  *(v18 + 64) = result;
  *(v18 + 32) = v14;
  *(v18 + 40) = v16;
  if (!__OFSUB__(v17, 1))
  {
    v20 = MEMORY[0x277D83C10];
    *(v18 + 96) = MEMORY[0x277D83B88];
    *(v18 + 104) = v20;
    *(v18 + 72) = v17 - 1;
LABEL_42:
    v14 = sub_21DBFA13C();
    v16 = v25;

    goto LABEL_43;
  }

  __break(1u);
  return result;
}

unint64_t sub_21D9E9868()
{
  result = qword_27CE64968;
  if (!qword_27CE64968)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE64960, &qword_21DC35620);
    result = swift_getWitnessTable(MEMORY[0x277D83FA0], v3, v0, v1);
    atomic_store(result, &qword_27CE64968);
  }

  return result;
}

void sub_21D9E98D4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21DBFC59C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_21DBFA69C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_21D9E9A9C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21D9E99CC(0, v2, 1, a1);
  }
}

uint64_t sub_21D9E99CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_21DBFC64C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_21D9E9A9C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_21D82E300(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_21D9EA078((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_21DBFC64C();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_21DBFC64C()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_21D210B90(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_21D210B90((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_21D9EA078((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21D82E300(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_21D82E274(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_21DBFC64C() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_21D9EA078(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_21DBFC64C() & 1) != 0)
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
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_21DBFC64C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

id static REMUserActivity.platformBlankAppIcon(format:scale:)(uint64_t a1, double a2)
{
  v3 = sub_21DBFAF8C();
  v4 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v3 scale:0 orientation:a2];

  return v4;
}

id REMUserActivity.platformAppIconAndName(format:scale:)(uint64_t a1, double a2)
{
  v3 = sub_21DBFAF9C();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v3 scale:0 orientation:a2];

  return v5;
}

void *TTRAttachmentThumbnailsManager.__allocating_init(thumbnailSizeProvider:thumbnailGenerator:)(void *a1, __int128 *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = sub_21D9EBAF0(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

char *TTRAttachmentThumbnailsManager.thumbnails(for:scale:)(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    v4 = sub_21DBFBD7C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x277D84F90];
  result = sub_21D18F418(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v18;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      TTRAttachmentThumbnailsManager.thumbnail(for:scale:)(v8, &v16, a2);

      v10 = v16;
      v11 = v17;
      v18 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v16;
        sub_21D18F418((v12 > 1), v13 + 1, 1);
        v10 = v15;
        v5 = v18;
      }

      ++v7;
      *(v5 + 16) = v13 + 1;
      v14 = v5 + 24 * v13;
      *(v14 + 32) = v10;
      *(v14 + 48) = v11;
    }

    while (v4 != v7);
    return v5;
  }

  __break(1u);
  return result;
}

id TTRAttachmentThumbnailsManager.Result.image.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRAttachmentThumbnailsManager.thumbnail(for:scale:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v55 - v9;
  v11 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0);
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = (v55 - v16);
  v18 = [a1 objectID];
  v19 = [a1 fileURL];
  if (v19)
  {
    v20 = v19;
    sub_21DBF546C();

    v21 = sub_21DBF54CC();
    (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  }

  else
  {
    v22 = sub_21DBF54CC();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  }

  *v17 = v18;
  sub_21D57690C(v10, v17 + *(v11 + 20));
  v23 = v18;
  v24 = sub_21D9EAB7C();
  v25 = [v24 objectForKey_];

  if (v25)
  {
    result = sub_21D9EBEB0(v17);
    v27 = 0;
  }

  else
  {
    swift_beginAccess();
    v29 = v4[14];
    sub_21DBF8E0C();
    v30 = sub_21D1E3370(v17, v29);

    if (v30)
    {
      result = sub_21D9EBEB0(v17);
      v28 = 0;
      v27 = 2;
      goto LABEL_13;
    }

    swift_beginAccess();
    v31 = v4[13];
    if (!*(v31 + 16) || (v32 = sub_21D17EFA0(v17), (v33 & 1) == 0))
    {
      swift_endAccess();
      v34 = [a1 width];
      v35 = [a1 height];
      v36 = v4[5];
      v37 = v4[6];
      __swift_project_boxed_opaque_existential_1(v4 + 2, v36);
      v38 = (*(v37 + 8))(v36, v37, v34, v35, a3);
      v40 = v39;
      v42 = v41;
      v43 = MEMORY[0x28223BE20](v38).n128_u64[0];
      v55[-6] = v4;
      v55[-5] = a1;
      *&v55[-4] = a3;
      v55[-3] = v43;
      v55[-2] = v44;
      v55[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64970, &qword_21DC35638);
      v55[1] = sub_21DBF82FC();
      v45 = swift_allocObject();
      swift_weakInit();
      sub_21D9EBCB8(v17, v13);
      v46 = (*(v56 + 80) + 24) & ~*(v56 + 80);
      v55[2] = *(v56 + 80);
      v56 = v46 + v12;
      v47 = (v46 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      *(v48 + 16) = v45;
      sub_21D9EBD1C(v13, v48 + v46);
      *(v48 + v47) = v23;
      v49 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v49 = v40;
      v49[1] = v42;
      v28 = v23;
      v50 = sub_21DBF816C();
      sub_21DBF820C();

      v51 = swift_allocObject();
      swift_weakInit();
      sub_21D9EBCB8(v17, v13);
      v52 = swift_allocObject();
      *(v52 + 16) = v51;
      sub_21D9EBD1C(v13, v52 + v46);

      v53 = sub_21DBF816C();
      v23 = sub_21DBF822C();

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v4[13];
      v4[13] = 0x8000000000000000;
      sub_21D479680(v23, v17, isUniquelyReferenced_nonNull_native);
      v4[13] = v57;
      swift_endAccess();
      result = sub_21D9EBEB0(v17);
      v27 = 1;
      goto LABEL_13;
    }

    v25 = *(*(v31 + 56) + 8 * v32);
    swift_endAccess();

    result = sub_21D9EBEB0(v17);
    v27 = 1;
  }

  v28 = v23;
  v23 = v25;
LABEL_13:
  *a2 = v23;
  *(a2 + 8) = v28;
  *(a2 + 16) = v27;
  return result;
}

id sub_21D9EAB7C()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[12];
  }

  else
  {
    sub_21D9EB634(v0);
    v3 = v0[12];
    v0[12] = v4;
    v2 = v4;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_21D9EABD8@<X0>(void **a1@<X0>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v21 = a4;
  v12 = sub_21DBF9D8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a1;
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v15 = sub_21DBFB12C();
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  LOBYTE(a1) = sub_21DBF9DAC();
  result = (*(v13 + 8))(v15, v12);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_7:
    *a5 = v16;
    return v16;
  }

  swift_beginAccess();
  sub_21D8741FC(a3);
  swift_endAccess();

  result = sub_21D9EAB7C();
  v18 = a6 * a7;
  if (COERCE__INT64(fabs(a6 * a7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v18 < 9.22337204e18)
  {
    v19 = result;
    [result setObject:v16 forKey:v21 cost:v18];

    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21D9EAE14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8];
  v10 = sub_21DBF9D8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v13 = sub_21DBFB12C();
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v14 = sub_21DBF9DAC();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_beginAccess();
      sub_21D8741FC(a3);
      swift_endAccess();

      sub_21D9EBCB8(a3, v6);
      swift_beginAccess();
      sub_21D29ED2C(v9, v6);
      swift_endAccess();

      return sub_21D9EBEB0(v9);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D9EB04C(uint64_t a1)
{
  v3 = sub_21DBF54CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_21DBFC7DC();
  sub_21DBFB64C();
  sub_21D3050B8(v1 + *(a1 + 20), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_21DBFC7FC();
    sub_21D9EC920(&qword_280D171E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_21DBFA00C();
    (*(v4 + 8))(v6, v3);
  }

  return sub_21DBFC82C();
}

void sub_21D9EB248(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v11 - v9;
  sub_21DBFB64C();
  sub_21D3050B8(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_21DBFC7FC();
    sub_21D9EC920(&qword_280D171E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_21DBFA00C();
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_21D9EB430(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_21DBFC7DC();
  sub_21DBFB64C();
  sub_21D3050B8(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_21DBFC7FC();
    sub_21D9EC920(&qword_280D171E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_21DBFA00C();
    (*(v5 + 8))(v7, v4);
  }

  return sub_21DBFC82C();
}

void sub_21D9EB634(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v5 * v6;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 * 25) >> 64 == (25 * v7) >> 63)
  {
    [v2 setTotalCostLimit_];
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t TTRAttachmentThumbnailsManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return v0;
}

uint64_t TTRAttachmentThumbnailsManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

BOOL sub_21D9EB7B8(void *a1, void *a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0, &unk_21DC09120);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0) + 20);
  v15 = *(v11 + 48);
  sub_21D3050B8(a1 + v14, v13);
  sub_21D3050B8(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &qword_27CE5EA20, &qword_21DC0D4A0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_21D3050B8(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_21D0CF7E0(v13, &unk_27CE5F2A0, &unk_21DC09120);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_21D9EC920(&qword_280D171D0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v18 = sub_21DBFA10C();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_21D0CF7E0(v13, &qword_27CE5EA20, &qword_21DC0D4A0);
  return (v18 & 1) != 0;
}

void *sub_21D9EBAF0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  return sub_21D0D14E4(v11, a2, v12, a4, a5);
}

uint64_t type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(uint64_t a1)
{
  result = qword_280D12908;
  if (!qword_280D12908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D9EBC38()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v1[10];
  v7 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v6);
  return (*(v7 + 8))(v2, v6, v7, v3, v4, v5);
}

uint64_t sub_21D9EBCB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D9EBD1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_21D9EBD80@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_21D9EABD8(a1, (v2 + v6), *(v2 + v7), a2, *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_21D9EBE3C(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0) - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_21D9EAE14(a1, v4, v5);
}

uint64_t sub_21D9EBEB0(uint64_t a1)
{
  v2 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D9EBF84(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D72DABC(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRAttachmentThumbnailsManager.Result(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D72DABC(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D72DB24(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRAttachmentThumbnailsManager.Result(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D72DB24(v4, v5, v6);
  return a1;
}

void **sub_21D9EC080(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v8 = sub_21DBF54CC();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    v11 = v4;
    if (v10(a2 + v7, 1, v8))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
      memcpy(v6 + v7, a2 + v7, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(v6 + v7, a2 + v7, v8);
      (*(v9 + 56))(v6 + v7, 0, 1, v8);
    }
  }

  return v6;
}

uint64_t sub_21D9EC200(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_21DBF54CC();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

void **sub_21D9EC2D4(void **a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v5;
  if (v9(a2 + v6, 1, v7))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(a1 + v6, a2 + v6, *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  return a1;
}

void **sub_21D9EC3F4(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = sub_21DBF54CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  LODWORD(v7) = v12(a1 + v9, 1, v10);
  v13 = v12(a2 + v9, 1, v10);
  if (!v7)
  {
    if (!v13)
    {
      (*(v11 + 24))(a1 + v9, a2 + v9, v10);
      return a1;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(a1 + v9, a2 + v9, *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v11 + 16))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
  return a1;
}

char *sub_21D9EC57C(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

void **sub_21D9EC690(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

void sub_21D9EC83C(uint64_t a1)
{
  sub_21D514D00(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_21D9EC920(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

id TTRIDebugDropIndicatorView.continueShowing(in:dropSession:dropContext:)(void *a1, void *a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  v8 = __swift_project_boxed_opaque_existential_1(a3, v6);

  return sub_21D9EE598(a1, a2, v8, v3, v6, v7);
}

Swift::Void __swiftcall TTRIDebugDropIndicatorView.stopShowing()()
{
  [v0 removeFromSuperview];
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForActiveDropTargetView;
  sub_21D0D8CF0(0, &qword_280D177D0, 0x277CCAAD0);
  sub_21DBF8E0C();
  v3 = sub_21DBFA5DC();

  [v1 deactivateConstraints_];

  *&v0[v2] = MEMORY[0x277D84F90];

  v4 = *&v0[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_lineYPositionInTargetViewConstraint];
  *&v0[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_lineYPositionInTargetViewConstraint] = 0;
}

uint64_t TTRIDebugDropIndicatorView.currentDropContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext);
  swift_beginAccess();
  sub_21D9EEC34(a1, v4);
  swift_endAccess();
  v5 = v4[3];
  if (v5)
  {
    v6 = v4[4];
    v7 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v8 = *(v5 - 8);
    v9 = MEMORY[0x28223BE20](v7);
    v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = (*(v6 + 16))(v5, v6);
    (*(v8 + 8))(v11, v5);
  }

  else
  {
    v12 = [objc_opt_self() grayColor];
  }

  [*(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line) setBackgroundColor_];

  v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_info);
  v14 = v4[3];
  if (v14)
  {
    v15 = v4[4];
    v16 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v17 = *(v14 - 8);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    (*(v15 + 8))(v14, v15);
    (*(v17 + 8))(v20, v14);
  }

  v21 = sub_21DBFA12C();

  [v13 setText_];

  return sub_21D9EECA4(a1);
}

uint64_t TTRIDebugDropIndicatorView.currentDropContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext;
  swift_beginAccess();
  return sub_21D9EED0C(v1 + v3, a1);
}

uint64_t sub_21D9ECEEC(uint64_t a1, uint64_t *a2, __n128 a3)
{
  sub_21D9EED0C(a1, v7);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext;
  swift_beginAccess();
  sub_21D9EEC34(v7, v4 + v5);
  swift_endAccess();
  sub_21D9ECF60();
  sub_21D9ED0F0();
  return sub_21D9EECA4(v7);
}

void sub_21D9ECF60()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext);
  swift_beginAccess();
  v3 = v2[3];
  if (v3)
  {
    v4 = v2[4];
    v5 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v6 = *(v3 - 8);
    v7 = MEMORY[0x28223BE20](v5);
    v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = (*(v4 + 16))(v3, v4);
    (*(v6 + 8))(v9, v3);
  }

  else
  {
    v10 = [objc_opt_self() grayColor];
  }

  [*(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line) setBackgroundColor_];
}

void sub_21D9ED0F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_info);
  v2 = (v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext);
  swift_beginAccess();
  v3 = v2[3];
  if (v3)
  {
    v4 = v2[4];
    v5 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v6 = *(v3 - 8);
    v7 = MEMORY[0x28223BE20](v5);
    v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    (*(v4 + 8))(v3, v4);
    (*(v6 + 8))(v9, v3);
  }

  v10 = sub_21DBFA12C();

  [v1 setText_];
}

uint64_t (*TTRIDebugDropIndicatorView.currentDropContext.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21D9ED318;
}

void sub_21D9ED318(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = v5 + v4;
    v7 = *(v5 + v4 + 24);
    if (v7)
    {
      v8 = *(v6 + 32);
      v9 = __swift_project_boxed_opaque_existential_1((v5 + v4), *(v5 + v4 + 24));
      v10 = *(v7 - 8);
      v11 = MEMORY[0x28223BE20](v9);
      v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = (*(v8 + 16))(v7, v8);
      (*(v10 + 8))(v13, v7);
    }

    else
    {
      v14 = [objc_opt_self() grayColor];
    }

    v15 = v3[3];
    [*(v15 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line) setBackgroundColor_];

    v16 = *(v15 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_info);
    v17 = *(v6 + 24);
    if (v17)
    {
      v18 = (v3[3] + v3[4]);
      v19 = v18[4];
      v20 = __swift_project_boxed_opaque_existential_1(v18, v17);
      v21 = *(v17 - 8);
      v22 = MEMORY[0x28223BE20](v20);
      v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24, v22);
      (*(v19 + 8))(v17, v19);
      (*(v21 + 8))(v24, v17);
    }

    v25 = sub_21DBFA12C();

    [v16 setText_];
  }

  free(v3);
}

char *sub_21D9ED5F0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_lineYPositionInTargetViewConstraint] = 0;
  v10 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForInfoContainerAboveLine] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForInfoContainerBelowLine] = v10;
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForActiveDropTargetView] = v10;
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_activeDropTargetView] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_shouldPositionInfoContainerAboveLine] = 1;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line] = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v13 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_infoContainer;
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_infoContainer] = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [*&v4[v13] layer];
  v15 = objc_opt_self();
  v16 = [v15 blackColor];
  v17 = [v16 CGColor];

  [v14 setBorderColor_];
  v18 = [*&v4[v13] layer];
  [v18 setBorderWidth_];

  v19 = *&v4[v13];
  v20 = [v15 whiteColor];
  [v19 setBackgroundColor_];

  v21 = [*&v4[v13] layer];
  [v21 setCornerRadius_];

  v22 = [*&v4[v13] layer];
  [v22 setCornerCurve_];

  [*&v4[v13] setClipsToBounds_];
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v24 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_info;
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_info] = v23;
  [v23 setNumberOfLines_];
  [*&v4[v24] setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = *&v4[v24];
  v26 = sub_21DBFA12C();
  v27 = [objc_opt_self() fontWithName:v26 size:12.0];

  [v25 setFont_];
  v28 = *&v4[v24];
  v29 = [v15 blackColor];
  [v28 setTextColor_];

  v30 = *&v4[v24];
  v31 = sub_21DBFA12C();
  [v30 setText_];

  LODWORD(v32) = 1144750080;
  [*&v4[v24] setContentCompressionResistancePriority:1 forAxis:v32];
  v86.receiver = v4;
  v86.super_class = ObjectType;
  v33 = objc_msgSendSuper2(&v86, sel_initWithFrame_, a1, a2, a3, a4);
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_infoContainer;
  [v33 addSubview_];
  v35 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_info;
  [*&v33[v34] addSubview_];
  v36 = OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line;
  [v33 addSubview_];
  v85 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_21DC357A0;
  v38 = [*&v33[v34] trailingAnchor];
  v39 = [v33 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v37 + 32) = v40;
  v41 = [*&v33[v34] topAnchor];
  v42 = [*&v33[v35] topAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:-10.0];

  *(v37 + 40) = v43;
  v44 = [*&v33[v34] leftAnchor];
  v45 = [*&v33[v35] leftAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:-10.0];

  *(v37 + 48) = v46;
  v47 = [*&v33[v34] rightAnchor];
  v48 = [*&v33[v35] rightAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:10.0];

  *(v37 + 56) = v49;
  v50 = [*&v33[v34] bottomAnchor];
  v51 = [*&v33[v35] bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:10.0];

  *(v37 + 64) = v52;
  v53 = [*&v33[v36] leadingAnchor];
  v54 = [v33 leadingAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v37 + 72) = v55;
  v56 = [*&v33[v36] trailingAnchor];
  v57 = [v33 trailingAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v37 + 80) = v58;
  v59 = [*&v33[v36] heightAnchor];
  v60 = [v59 constraintEqualToConstant_];

  *(v37 + 88) = v60;
  sub_21D0D8CF0(0, &qword_280D177D0, 0x277CCAAD0);
  v61 = sub_21DBFA5DC();

  [v85 activateConstraints_];

  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_21DC0BFD0;
  v63 = [*&v33[v34] topAnchor];
  v64 = [v33 topAnchor];
  v65 = [v63 constraintEqualToAnchor_];

  *(v62 + 32) = v65;
  v66 = [*&v33[v36] bottomAnchor];
  v67 = [v33 bottomAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v62 + 40) = v68;
  v69 = [*&v33[v34] bottomAnchor];
  v70 = [*&v33[v36] topAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:-40.0];

  *(v62 + 48) = v71;
  *&v33[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForInfoContainerAboveLine] = v62;

  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_21DC0BFD0;
  v73 = [*&v33[v34] bottomAnchor];
  v74 = [v33 bottomAnchor];
  v75 = [v73 constraintEqualToAnchor_];

  *(v72 + 32) = v75;
  v76 = [*&v33[v36] topAnchor];
  v77 = [v33 topAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(v72 + 40) = v78;
  v79 = [*&v33[v34] topAnchor];
  v80 = [*&v33[v36] bottomAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:40.0];

  *(v72 + 48) = v81;
  *&v33[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForInfoContainerBelowLine] = v72;

  LODWORD(v82) = 1148846080;
  [v33 setContentCompressionResistancePriority:1 forAxis:v82];
  [v33 setUserInteractionEnabled_];
  [v33 setClipsToBounds_];

  [v33 setNeedsUpdateConstraints];
  return v33;
}

Swift::Void __swiftcall TTRIDebugDropIndicatorView.layoutSubviews()()
{
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 safeAreaInsets];
    v12 = v11;
    v14 = v13;

    v15 = UIEdgeInsetsInsetRect(v4, v6, v8, v10, v12, v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [*&v0[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_infoContainer] bounds];
    v23 = v22;
    v24 = *&v0[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line];
    [v24 bounds];
    [v2 convertRect:v24 fromCoordinateSpace:?];
    MinY = CGRectGetMinY(v30);
    v31.origin.x = v15;
    v31.origin.y = v17;
    v31.size.width = v19;
    v31.size.height = v21;
    v26 = MinY - CGRectGetMinY(v31);
    if (v26 < 0.0)
    {
      v26 = 0.0;
    }

    v27 = v23 + 40.0 <= v26;
    v28 = v0[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_shouldPositionInfoContainerAboveLine];
    v0[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_shouldPositionInfoContainerAboveLine] = v27;
    if (v28 != v27)
    {
      [v0 setNeedsUpdateConstraints];
    }
  }
}

Swift::Void __swiftcall TTRIDebugDropIndicatorView.updateConstraints()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_updateConstraints);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v1 = objc_opt_self();
  sub_21D0D8CF0(0, &qword_280D177D0, 0x277CCAAD0);
  v2 = sub_21DBFA5DC();

  [v1 deactivateConstraints_];

  v3 = sub_21DBFA5DC();

  [v1 activateConstraints_];
}

id TTRIDebugDropIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21D9EE598(void *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v58[3] = a5;
  v58[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v58);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a3, a5);
  result = [a4 window];
  if (!result)
  {
    result = [a1 window];
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  v13 = result;
  v14 = [a4 window];
  if (v14)
  {
    v15 = v14;
    sub_21D0D8CF0(0, &qword_27CE629A8, 0x277D75DA0);
    v16 = sub_21DBFB63C();

    if (v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  TTRIDebugDropIndicatorView.stopShowing()();
  v17 = v13;
  [v17 addSubview_];
  v18 = [a4 widthAnchor];
  v19 = [a1 widthAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  v21 = [a4 leadingAnchor];
  v22 = [a1 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  v24 = [*&a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line] centerYAnchor];
  v25 = [v17 topAnchor];

  v26 = [v24 constraintEqualToAnchor_];
  v27 = *&a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_lineYPositionInTargetViewConstraint];
  *&a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_lineYPositionInTargetViewConstraint] = v26;
  v28 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21DC0BFD0;
  *(v29 + 32) = v20;
  *(v29 + 40) = v23;
  *(v29 + 48) = v28;
  *&a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForActiveDropTargetView] = v29;
  v30 = v28;
  v31 = v20;
  v32 = v23;

  v33 = objc_opt_self();
  sub_21D0D8CF0(0, &qword_280D177D0, 0x277CCAAD0);
  sub_21DBF8E0C();
  v34 = sub_21DBFA5DC();

  [v33 activateConstraints_];

  [a4 setHidden_];
LABEL_8:
  v35 = *&a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_lineYPositionInTargetViewConstraint];
  if (v35)
  {
    v36 = v35;
    [a2 locationInView_];
    [v36 setConstant_];
  }

  [v13 bringSubviewToFront_];
  [a4 setNeedsLayout];
  sub_21D0D32E4(v58, v57);
  v38 = &a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext];
  swift_beginAccess();
  sub_21D9EEC34(v57, v38);
  swift_endAccess();
  v39 = *(v38 + 3);
  if (v39)
  {
    v40 = *(v38 + 4);
    v41 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
    v42 = *(v39 - 8);
    v43 = MEMORY[0x28223BE20](v41);
    v45 = v57 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v42 + 16))(v45, v43);
    v46 = (*(v40 + 16))(v39, v40);
    (*(v42 + 8))(v45, v39);
  }

  else
  {
    v46 = [objc_opt_self() grayColor];
  }

  [*&a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_line] setBackgroundColor_];

  v47 = *&a4[OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_info];
  v48 = *(v38 + 3);
  if (v48)
  {
    v49 = *(v38 + 4);
    v50 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
    v51 = *(v48 - 8);
    v52 = MEMORY[0x28223BE20](v50);
    v54 = v57 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v51 + 16))(v54, v52);
    (*(v49 + 8))(v48, v49);
    (*(v51 + 8))(v54, v48);
  }

  v55 = sub_21DBFA12C();

  [v47 setText_];

  sub_21D9EECA4(v57);
  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t sub_21D9EEC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64998, qword_21DC357B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D9EECA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64998, qword_21DC357B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D9EED0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64998, qword_21DC357B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21D9EEDC8()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_currentDropContext;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_lineYPositionInTargetViewConstraint) = 0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForInfoContainerAboveLine) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForInfoContainerBelowLine) = v2;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_constraintsForActiveDropTargetView) = v2;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_activeDropTargetView) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIDebugDropIndicatorView_shouldPositionInfoContainerAboveLine) = 1;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D9EEE90()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE649D8);
  v1 = __swift_project_value_buffer(v0, qword_27CE649D8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D9EEF5C()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    if (sub_21DBFBD7C() != 1 || !sub_21DBFBD7C())
    {
      return;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    return;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x223D44740](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;
  v4 = [v2 objectID];
  v5 = v4;
  v6 = v0[4];
  if (*(v6 + 16) && (v7 = sub_21D17E07C(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    sub_21DBF8E0C();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (*(v9 + 16) == 1)
  {
    v10 = *(v9 + 40);
    v11 = *(v9 + 32);

    v12 = v11;
    v13 = v12;
    if (v10)
    {
      v14 = [v12 name];
    }

    else
    {
      v14 = [v12 displayName];
    }

    v15 = v14;
    sub_21DBFA16C();
  }

  else
  {
  }
}

uint64_t TTRAccountsListsDeleteArgumentsType.singleItemName.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v3 = sub_21D0D8CF0(0, &qword_27CE5DDD0, 0x277D44548);
  sub_21D9EFC18(v3, &v13);

  v4 = v13;
  if (!v13)
  {
    return 0;
  }

  v5 = [v13 objectID];
  (*(a2 + 56))();

  sub_21D9EFC18(&type metadata for TTRListOrCustomSmartList, &v13);

  v6 = v14;
  if (v14 == 255)
  {

    return 0;
  }

  v7 = v13;
  v8 = v13;
  if (v6)
  {
    v9 = [v8 name];
  }

  else
  {
    v9 = [v8 displayName];
  }

  v11 = v9;
  v12 = sub_21DBFA16C();

  sub_21D157864(v7, v6);
  sub_21D157864(v7, v6);

  return v12;
}

uint64_t TTRAccountsListsDeleteArgumentsType.hasOnlyGroupsToDelete.getter(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = (*(a2 + 16))();
  v7[2] = a1;
  v7[3] = v3;
  v8 = v2;
  LOBYTE(v3) = sub_21D3233D4(sub_21D9EFCFC, v7, v5);

  return v3 & 1;
}

char *sub_21D9EF308()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v3 = 0;
    v4 = *(v42 + 32);
    v40 = v1 & 0xC000000000000001;
    v36 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x277D84F90];
    v37 = v1;
    v38 = v4;
    v35 = (v1 + 32);
    v39 = i;
    while (1)
    {
      if (v40)
      {
        v6 = MEMORY[0x223D44740](v3, v37);
      }

      else
      {
        if (v3 >= *(v36 + 16))
        {
          goto LABEL_58;
        }

        v6 = *&v35[8 * v3];
      }

      v7 = v6;
      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        goto LABEL_53;
      }

      v9 = [v6 objectID];
      v10 = v9;
      if (*(v4 + 16) && (v11 = sub_21D17E07C(v9), (v12 & 1) != 0))
      {
        v13 = *(*(v4 + 56) + 8 * v11);
        sub_21DBF8E0C();
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
      }

      v14 = *(v13 + 16);
      v1 = *(v5 + 2);
      v15 = (v1 + v14);
      if (__OFADD__(v1, v14))
      {
        break;
      }

      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v15 <= *(v5 + 3) >> 1)
      {
        if (*(v13 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v1 <= v15)
        {
          v19 = v1 + v14;
        }

        else
        {
          v19 = v1;
        }

        v5 = sub_21D2146A4(isUniquelyReferenced_nonNull_native, v19, 1, v5);
        if (*(v13 + 16))
        {
LABEL_18:
          if ((*(v5 + 3) >> 1) - *(v5 + 2) < v14)
          {
            goto LABEL_56;
          }

          swift_arrayInitWithCopy();

          if (v14)
          {
            v17 = *(v5 + 2);
            v8 = __OFADD__(v17, v14);
            v18 = v17 + v14;
            if (v8)
            {
              goto LABEL_57;
            }

            *(v5 + 2) = v18;
          }

          goto LABEL_27;
        }
      }

      if (v14)
      {
        goto LABEL_55;
      }

LABEL_27:
      v41 = v7;
      v20 = *(v13 + 16);
      if (v20)
      {
        v1 = v13 + 40;
        do
        {
          if (*v1)
          {
            goto LABEL_30;
          }

          v21 = *(v1 - 8);
          if (![v21 isGroup])
          {

            goto LABEL_30;
          }

          v22 = [v21 objectID];
          v23 = v22;
          v24 = *(v42 + 40);
          if (*(v24 + 16) && (v25 = sub_21D17E07C(v22), (v26 & 1) != 0))
          {
            v27 = *(*(v24 + 56) + 8 * v25);
            sub_21DBF8E0C();
          }

          else
          {
            v27 = MEMORY[0x277D84F90];
          }

          v28 = *(v27 + 16);
          v29 = *(v5 + 2);
          v30 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            goto LABEL_50;
          }

          if (v30 > *(v5 + 3) >> 1)
          {
            if (v29 <= v30)
            {
              v33 = v29 + v28;
            }

            else
            {
              v33 = *(v5 + 2);
            }

            v5 = sub_21D2146A4(1, v33, 1, v5);
            v29 = *(v5 + 2);
            if (*(v27 + 16))
            {
LABEL_40:
              if (((*(v5 + 3) >> 1) - v29) < v28)
              {
                goto LABEL_51;
              }

              swift_arrayInitWithCopy();

              if (v28)
              {
                v31 = *(v5 + 2);
                v8 = __OFADD__(v31, v28);
                v32 = v31 + v28;
                if (v8)
                {
                  goto LABEL_52;
                }

                *(v5 + 2) = v32;
              }

              goto LABEL_30;
            }
          }

          else if (v28)
          {
            goto LABEL_40;
          }

          if (v28)
          {
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_30:
          v1 += 16;
          --v20;
        }

        while (v20);
      }

      v4 = v38;
      if (v3 == v39)
      {
        return v5;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t TTRAccountsListsDeleteArgumentsType.allListsToDelete()(uint64_t a1, uint64_t (**a2)(void))
{
  isUniquelyReferenced_nonNull_native = a2[2]();
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_51;
  }

  v4 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = isUniquelyReferenced_nonNull_native;
  while (v4)
  {
    v5 = 0;
    v34 = a2[7];
    v35 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v30 = isUniquelyReferenced_nonNull_native + 32;
    v31 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x277D84F90];
    v33 = v4;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x223D44740](v5, v32);
      }

      else
      {
        if (v5 >= *(v31 + 16))
        {
          goto LABEL_50;
        }

        isUniquelyReferenced_nonNull_native = *(v30 + 8 * v5);
      }

      v7 = isUniquelyReferenced_nonNull_native;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        goto LABEL_45;
      }

      v9 = [isUniquelyReferenced_nonNull_native objectID];
      v10 = v34();

      v11 = *(v10 + 16);
      v12 = *(v6 + 16);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        break;
      }

      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v13 <= *(v6 + 24) >> 1)
      {
        if (*(v10 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v16 = v12 + v11;
        }

        else
        {
          v16 = v12;
        }

        isUniquelyReferenced_nonNull_native = sub_21D2146A4(isUniquelyReferenced_nonNull_native, v16, 1, v6);
        v6 = isUniquelyReferenced_nonNull_native;
        if (*(v10 + 16))
        {
LABEL_14:
          if ((*(v6 + 24) >> 1) - *(v6 + 16) < v11)
          {
            goto LABEL_48;
          }

          swift_arrayInitWithCopy();

          if (v11)
          {
            v14 = *(v6 + 16);
            v8 = __OFADD__(v14, v11);
            v15 = v14 + v11;
            if (v8)
            {
              goto LABEL_49;
            }

            *(v6 + 16) = v15;
          }

          goto LABEL_23;
        }
      }

      if (v11)
      {
        goto LABEL_47;
      }

LABEL_23:
      v36 = v7;
      v17 = *(v10 + 16);
      if (v17)
      {
        v18 = (v10 + 40);
        do
        {
          if (*v18)
          {
            goto LABEL_26;
          }

          v19 = *(v18 - 1);
          if (![v19 isGroup])
          {

            goto LABEL_26;
          }

          v20 = [v19 objectID];
          v21 = a2[8]();

          v22 = *(v21 + 16);
          v23 = *(v6 + 16);
          v24 = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            goto LABEL_42;
          }

          if (v24 > *(v6 + 24) >> 1)
          {
            if (v23 <= v24)
            {
              v27 = v23 + v22;
            }

            else
            {
              v27 = *(v6 + 16);
            }

            isUniquelyReferenced_nonNull_native = sub_21D2146A4(1, v27, 1, v6);
            v6 = isUniquelyReferenced_nonNull_native;
            v23 = *(isUniquelyReferenced_nonNull_native + 16);
            if (*(v21 + 16))
            {
LABEL_32:
              if (((*(v6 + 24) >> 1) - v23) < v22)
              {
                goto LABEL_43;
              }

              swift_arrayInitWithCopy();

              if (v22)
              {
                v25 = *(v6 + 16);
                v8 = __OFADD__(v25, v22);
                v26 = v25 + v22;
                if (v8)
                {
                  goto LABEL_44;
                }

                *(v6 + 16) = v26;
              }

              goto LABEL_26;
            }
          }

          else if (v22)
          {
            goto LABEL_32;
          }

          if (v22)
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

LABEL_26:
          v18 += 16;
          --v17;
        }

        while (v17);
      }

      if (v5 == v33)
      {
        goto LABEL_53;
      }
    }

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
LABEL_51:
    v28 = isUniquelyReferenced_nonNull_native;
    v4 = sub_21DBFBD7C();
    isUniquelyReferenced_nonNull_native = v28;
    v32 = v28;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_53:

  return v6;
}

void sub_21D9EFA30(void *a1, uint64_t a2)
{
  v3 = [a1 objectID];
  v4 = v3;
  v5 = *(a2 + 32);
  if (*(v5 + 16) && (v6 = sub_21D17E07C(v3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    sub_21DBF8E0C();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = (v8 + 40);
  v10 = -*(v8 + 16);
  v11 = -1;
  while (1)
  {
    if (v10 + v11 == -1)
    {
LABEL_10:

      return;
    }

    if (++v11 >= *(v8 + 16))
    {
      break;
    }

    if ((*v9 & 1) == 0)
    {
      v12 = v9 + 16;
      v13 = [*(v9 - 1) isGroup];
      v9 = v12;
      if (v13)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_21D9EFB28(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*a1 objectID];
  v6 = (*(a4 + 56))();

  v7 = (v6 + 40);
  v8 = -*(v6 + 16);
  v9 = -1;
  while (1)
  {
    if (v8 + v9 == -1)
    {
LABEL_6:

      return;
    }

    if (++v9 >= *(v6 + 16))
    {
      break;
    }

    if ((*v7 & 1) == 0)
    {
      v10 = v7 + 16;
      v11 = [*(v7 - 1) isGroup];
      v7 = v10;
      if (v11)
      {
        continue;
      }
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_21D9EFC18@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (sub_21DBFA6DC() == 1)
  {
    v5 = sub_21DBFA74C();
    swift_getWitnessTable(MEMORY[0x277D83988], v5);
    return sub_21DBFACEC();
  }

  else
  {
    v7 = *(*(a2 - 8) + 56);

    return v7(a3, 1, 1, a2);
  }
}

uint64_t TTRAccountsListsInteractorDeleteArguments.init(items:viewModel:currentList:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v301 = *MEMORY[0x277D85DE8];
  v248 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v8 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v10 = &v239 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v239 - v12;
  v276 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v268 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v269 = (&v239 - v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v239 - v19;
  v26 = MEMORY[0x28223BE20](v21);
  v27 = &v239 - v22;
  v260 = *a3;
  v267 = *(a3 + 8);
  v279 = MEMORY[0x277D84F90];
  v264 = *(a1 + 16);
  v254 = a4;
  if (!v264)
  {
    v215 = 0;
    v214 = 0;
    v277 = 0;
    v213 = 0;
    v210 = 0;
    v211 = MEMORY[0x277D84F90];
    v209 = MEMORY[0x277D84F98];
    v212 = MEMORY[0x277D84F98];
    goto LABEL_169;
  }

  v256 = v10;
  v257 = 0;
  v243 = v8;
  v244 = v25;
  v242 = v24;
  v245 = v23;
  v246 = 0;
  v28 = 0;
  v261 = 0;
  v252 = 0;
  v270 = 0;
  v273 = 0;
  v274 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree;
  v255 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes;
  v29 = MEMORY[0x277D84F98];
  v26.n128_u64[0] = 138412290;
  v241 = v26;
  v258 = &v239 - v22;
  v259 = MEMORY[0x277D84F90];
  v249 = a1;
  v250 = MEMORY[0x277D84F98];
  v265 = v20;
  v266 = a2;
  v271 = v13;
  while (2)
  {
    if (v28 >= *(a1 + 16))
    {
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      swift_once();
LABEL_172:
      v198 = sub_21DBF84BC();
      __swift_project_value_buffer(v198, qword_27CE649D8);
      v199 = v245;
      sub_21D0FE6CC(v27, v245, type metadata accessor for TTRAccountsListsViewModel.Item);
      v200 = sub_21DBF84AC();
      v201 = sub_21DBFAEBC();
      if (os_log_type_enabled(v200, v201))
      {
        v202 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        *&v288 = v203;
        *v202 = 136315138;
        v204 = sub_21D25D428();
        v206 = v205;
        sub_21D1013F0(v199, type metadata accessor for TTRAccountsListsViewModel.Item);
        v207 = sub_21D0CDFB4(v204, v206, &v288);

        *(v202 + 4) = v207;
        _os_log_impl(&dword_21D0C9000, v200, v201, "Unexpected item for TTRAccountsListsInteractorDeleteArguments {item: %s}", v202, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v203);
        MEMORY[0x223D46520](v203, -1, -1);
        MEMORY[0x223D46520](v202, -1, -1);
        goto LABEL_189;
      }

      v208 = v199;
      goto LABEL_191;
    }

    v275 = v28 + 1;
    sub_21D0FE6CC(a1 + ((*(v268 + 80) + 32) & ~*(v268 + 80)) + *(v268 + 72) * v28, v27, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D0FE6CC(v27, v20, type metadata accessor for TTRAccountsListsViewModel.Item);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:

        sub_21D157864(v260, v267);

        sub_21D1013F0(v20, type metadata accessor for TTRAccountsListsViewModel.Item);
        goto LABEL_171;
      case 5u:
      case 7u:
        sub_21D1013F0(v20, type metadata accessor for TTRAccountsListsViewModel.Item);
        TTRAccountsListsViewModel.listOrCustomSmartList(for:)(v27, &v288);
        if (BYTE8(v288) == 255)
        {

          sub_21D157864(v260, v267);

          goto LABEL_178;
        }

        if (BYTE8(v288))
        {
          sub_21D157864(v288, SBYTE8(v288));

          sub_21D157864(v260, v267);

LABEL_178:

          v272 = v29;
          if (qword_27CE56F40 == -1)
          {
LABEL_179:
            v216 = sub_21DBF84BC();
            __swift_project_value_buffer(v216, qword_27CE649D8);
            v217 = v27;
            v218 = v244;
            goto LABEL_187;
          }

LABEL_211:
          swift_once();
          goto LABEL_179;
        }

        v263 = BYTE8(v288);
        v277 = v288;
        v30 = [v288 account];
        v31 = [v30 objectID];
        v32 = v31;
        if (v29[2] && (sub_21D17E07C(v31), (v33 & 1) != 0))
        {

          v34 = v273;
        }

        else
        {

          v35 = v30;
          MEMORY[0x223D42D80]();
          v34 = v273;
          if (*((v279 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v279 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          v259 = v279;
        }

        v36 = [v30 objectID];
        sub_21D0D0E88(v34, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v288 = v29;
        v39 = sub_21D17E07C(v36);
        v40 = v29[2];
        v41 = (v38 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_204;
        }

        v43 = v38;
        if (v29[3] >= v42)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v46 = v288;
            if (v38)
            {
              goto LABEL_28;
            }
          }

          else
          {
            sub_21D225F64();
            v46 = v288;
            if (v43)
            {
              goto LABEL_28;
            }
          }

LABEL_26:
          v46[(v39 >> 6) + 8] |= 1 << v39;
          *(v46[6] + 8 * v39) = v36;
          *(v46[7] + 8 * v39) = MEMORY[0x277D84F90];
          v55 = v46[2];
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_206;
          }

          v46[2] = v57;
          v58 = v36;
          goto LABEL_28;
        }

        sub_21D21F318(v42, isUniquelyReferenced_nonNull_native);
        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v44 = sub_21D17E07C(v36);
        if ((v43 & 1) != (v45 & 1))
        {
          sub_21DBFC70C();
          __break(1u);
LABEL_215:
          result = sub_21DBFC70C();
          __break(1u);
          return result;
        }

        v39 = v44;
        v46 = v288;
        if ((v43 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_28:
        v272 = v46;
        v59 = v46[7];
        v60 = *(v59 + 8 * v39);
        v61 = v277;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        *(v59 + 8 * v39) = v60;
        v262 = v30;
        if ((v62 & 1) == 0)
        {
          v60 = sub_21D2146A4(0, *(v60 + 2) + 1, 1, v60);
          *(v59 + 8 * v39) = v60;
        }

        v64 = *(v60 + 2);
        v63 = *(v60 + 3);
        if (v64 >= v63 >> 1)
        {
          *(v59 + 8 * v39) = sub_21D2146A4((v63 > 1), v64 + 1, 1, v60);
        }

        v65 = *(v59 + 8 * v39);
        *(v65 + 16) = v64 + 1;
        v66 = v65 + 16 * v64;
        *(v66 + 32) = v277;
        *(v66 + 40) = 0;
        v67 = v267;
        if ((v267 & 1) == 0)
        {
          sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
          v68 = v260;
          v69 = [v260 objectID];
          v70 = [v61 objectID];
          v71 = sub_21DBFB63C();
          sub_21D157864(v68, v67);

          v261 = v71 | v261;
        }

        break;
      case 6u:
        sub_21D1013F0(v20, type metadata accessor for TTRAccountsListsViewModel.Item);
        TTRAccountsListsViewModel.listOrCustomSmartList(for:)(v27, &v288);
        v47 = BYTE8(v288);
        if (BYTE8(v288) == 255)
        {

          sub_21D157864(v260, v267);
        }

        else
        {
          if (BYTE8(v288))
          {
            v277 = v288;
            v48 = [v288 accountID];
            sub_21DA1CE20(v48, &v288);

            v49 = v288;
            v50 = BYTE8(v288);
            if (BYTE8(v288))
            {
              if (BYTE8(v288) == 255)
              {
              }

              else
              {

                sub_21D103A34(v49, v50);
              }

              sub_21D157864(v260, v267);

              v230 = v277;
              v229 = v254;
              if (qword_27CE56F40 != -1)
              {
                swift_once();
              }

              v231 = sub_21DBF84BC();
              __swift_project_value_buffer(v231, qword_27CE649D8);
              v232 = v230;
              v233 = sub_21DBF84AC();
              v234 = sub_21DBFAEBC();
              sub_21D157864(v230, v47);
              if (os_log_type_enabled(v233, v234))
              {
                v235 = swift_slowAlloc();
                v236 = swift_slowAlloc();
                *v235 = v241.n128_u32[0];
                v237 = [v232 objectID];
                *(v235 + 4) = v237;
                *v236 = v237;
                _os_log_impl(&dword_21D0C9000, v233, v234, "Failed to fetch account for smart list {remSmartList.objectID: %@}", v235, 0xCu);
                sub_21D0CF7E0(v236, &unk_27CE60070, &unk_21DC09550);
                MEMORY[0x223D46520](v236, -1, -1);
                MEMORY[0x223D46520](v235, -1, -1);

                sub_21D157864(v230, v47);
                v238 = v258;
              }

              else
              {
                sub_21D157864(v230, v47);

                v238 = v27;
              }

              sub_21D1013F0(v238, type metadata accessor for TTRAccountsListsViewModel.Item);

              sub_21D0D0E88(v273, 0);
              result = sub_21D0D0E88(v257, 0);
              goto LABEL_193;
            }

            v51 = [v288 objectID];
            v52 = v51;
            if (v29[2] && (sub_21D17E07C(v51), (v53 & 1) != 0))
            {

              v54 = v257;
            }

            else
            {

              v73 = sub_21D0FF19C(v49, 0);
              MEMORY[0x223D42D80](v73);
              v54 = v257;
              if (*((v279 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v279 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_21DBFA63C();
              }

              sub_21DBFA6CC();
              v259 = v279;
            }

            v74 = [v49 objectID];
            sub_21D0D0E88(v54, 0);
            v75 = swift_isUniquelyReferenced_nonNull_native();
            *&v288 = v29;
            v27 = sub_21D17E07C(v74);
            v77 = v29[2];
            v78 = (v76 & 1) == 0;
            v79 = v77 + v78;
            if (__OFADD__(v77, v78))
            {
              goto LABEL_207;
            }

            v80 = v76;
            if (v29[3] >= v79)
            {
              v83 = a2;
              if (v75)
              {
                v84 = v288;
                if (v76)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                sub_21D225F64();
                v84 = v288;
                if (v80)
                {
                  goto LABEL_49;
                }
              }
            }

            else
            {
              sub_21D21F318(v79, v75);
              sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
              v81 = sub_21D17E07C(v74);
              if ((v80 & 1) != (v82 & 1))
              {
                goto LABEL_215;
              }

              v27 = v81;
              v83 = a2;
              v84 = v288;
              if (v80)
              {
                goto LABEL_49;
              }
            }

            v84[(v27 >> 6) + 8] |= 1 << v27;
            *(v84[6] + 8 * v27) = v74;
            *(v84[7] + 8 * v27) = MEMORY[0x277D84F90];
            v85 = v84[2];
            v56 = __OFADD__(v85, 1);
            v86 = v85 + 1;
            if (v56)
            {
              __break(1u);
              goto LABEL_211;
            }

            v84[2] = v86;
            v87 = v74;
LABEL_49:
            v88 = v84[7];
            v89 = *(v88 + 8 * v27);
            v90 = swift_isUniquelyReferenced_nonNull_native();
            *(v88 + 8 * v27) = v89;
            if ((v90 & 1) == 0)
            {
              v89 = sub_21D2146A4(0, *(v89 + 2) + 1, 1, v89);
              *(v88 + 8 * v27) = v89;
            }

            v92 = *(v89 + 2);
            v91 = *(v89 + 3);
            if (v92 >= v91 >> 1)
            {
              *(v88 + 8 * v27) = sub_21D2146A4((v91 > 1), v92 + 1, 1, v89);
            }

            sub_21D103A34(v49, 0);
            v93 = v258;
            sub_21D1013F0(v258, type metadata accessor for TTRAccountsListsViewModel.Item);
            v94 = *(v88 + 8 * v27);
            v27 = v93;
            *(v94 + 16) = v92 + 1;
            v95 = v94 + 16 * v92;
            *(v95 + 32) = v277;
            v252 = 1;
            *(v95 + 40) = 1;
            v257 = sub_21D9F2F78;
            v29 = v84;
            a2 = v83;
            a1 = v249;
LABEL_54:
            v20 = v265;
            goto LABEL_55;
          }

          sub_21D157864(v288, SBYTE8(v288));

          sub_21D157864(v260, v267);
        }

        v272 = v29;
        if (qword_27CE56F40 != -1)
        {
          goto LABEL_213;
        }

        goto LABEL_186;
      case 0xFu:
      case 0x10u:

        sub_21D157864(v260, v267);

        goto LABEL_171;
      default:

        sub_21D157864(v260, v267);

        v219 = sub_21DBF56BC();
        (*(*(v219 - 8) + 8))(v20, v219);
LABEL_171:
        v272 = v29;
        if (qword_27CE56F40 == -1)
        {
          goto LABEL_172;
        }

        goto LABEL_209;
    }

    a2 = v266;
    v72 = v271;
    v29 = v272;
    sub_21D0FE6CC(v27, v269, type metadata accessor for TTRAccountsListsViewModel.Item);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 6u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
        sub_21D1013F0(v27, type metadata accessor for TTRAccountsListsViewModel.Item);

        sub_21D157864(v277, v263);
        sub_21D1013F0(v269, type metadata accessor for TTRAccountsListsViewModel.Item);
        goto LABEL_36;
      case 5u:
        v128 = v269[11];
        v298 = v269[10];
        v299 = v128;
        v300[0] = v269[12];
        *(v300 + 10) = *(v269 + 202);
        v129 = v269[7];
        v294 = v269[6];
        v295 = v129;
        v130 = v269[9];
        v296 = v269[8];
        v297 = v130;
        v131 = v269[3];
        v290 = v269[2];
        v291 = v131;
        v132 = v269[5];
        v292 = v269[4];
        v293 = v132;
        v133 = v269[1];
        v288 = *v269;
        v289 = v133;
        if (!__OFADD__(v246, *(&v133 + 1)))
        {
          v246 += *(&v133 + 1);
          if (v252)
          {
            sub_21D1013F0(v27, type metadata accessor for TTRAccountsListsViewModel.Item);

            sub_21D157864(v277, v263);
            sub_21D1077D8(&v288);
            v134 = 1;
          }

          else
          {
            v284 = 0;
            v135 = [v61 fetchRemindersCountWithError_];
            if (!v135)
            {
              v182 = v284;
              v183 = sub_21DBF52DC();

              swift_willThrow();
              if (qword_27CE56F40 != -1)
              {
                swift_once();
              }

              v270 = 0;
              v184 = sub_21DBF84BC();
              __swift_project_value_buffer(v184, qword_27CE649D8);
              v185 = v61;
              v186 = sub_21DBF84AC();
              v187 = sub_21DBFAEBC();
              v188 = v277;
              v189 = v263;
              sub_21D157864(v277, v263);
              if (os_log_type_enabled(v186, v187))
              {
                v190 = v188;
                v191 = swift_slowAlloc();
                v192 = swift_slowAlloc();
                *v191 = v241.n128_u32[0];
                v193 = [v185 objectID];
                *(v191 + 4) = v193;
                *v192 = v193;
                _os_log_impl(&dword_21D0C9000, v186, v187, "Unable to fetch reminders count {remList.objectID: %@}", v191, 0xCu);
                sub_21D0CF7E0(v192, &unk_27CE60070, &unk_21DC09550);
                v194 = v192;
                v27 = v258;
                MEMORY[0x223D46520](v194, -1, -1);
                MEMORY[0x223D46520](v191, -1, -1);

                sub_21D1077D8(&v288);
                sub_21D157864(v190, v263);
              }

              else
              {

                sub_21D157864(v188, v189);
                sub_21D1077D8(&v288);
              }

              sub_21D1013F0(v27, type metadata accessor for TTRAccountsListsViewModel.Item);
              v252 = 0;
              v20 = v265;
              v29 = v272;
              goto LABEL_103;
            }

            v136 = v135;
            v137 = v284;
            v138 = [v136 integerValue];

            sub_21D1077D8(&v288);
            sub_21D157864(v277, v263);

            sub_21D1013F0(v27, type metadata accessor for TTRAccountsListsViewModel.Item);
            v134 = v138 > 0;
          }

          v252 = v134;
          v20 = v265;
LABEL_103:
          v273 = sub_21D9F2F78;
LABEL_55:
          v28 = v275;
          if (v275 == v264)
          {
            v209 = v29;
            v277 = (v252 & 1);
            v210 = v261 & 1;
            v211 = v259;
            v212 = v250;
            v213 = v246;
            v214 = v257;
            v215 = v273;
LABEL_169:
            sub_21D157864(v260, v267);

            sub_21D0D0E88(v215, 0);
            result = sub_21D0D0E88(v214, 0);
            v196 = v254;
            v197 = v277;
            *v254 = v211;
            v196[1] = v197;
            v196[2] = v213;
            v196[3] = v210;
            v196[4] = v209;
            v196[5] = v212;
            return result;
          }

          continue;
        }

        __break(1u);
LABEL_213:
        swift_once();
LABEL_186:
        v220 = sub_21DBF84BC();
        __swift_project_value_buffer(v220, qword_27CE649D8);
        v217 = v27;
        v218 = v242;
LABEL_187:
        sub_21D0FE6CC(v217, v218, type metadata accessor for TTRAccountsListsViewModel.Item);
        v200 = sub_21DBF84AC();
        v221 = sub_21DBFAEBC();
        if (!os_log_type_enabled(v200, v221))
        {

          v208 = v218;
LABEL_191:
          sub_21D1013F0(v208, type metadata accessor for TTRAccountsListsViewModel.Item);
          v228 = v27;
          goto LABEL_192;
        }

        v222 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        *&v288 = v223;
        *v222 = 136315138;
        v224 = sub_21D25D428();
        v226 = v225;
        sub_21D1013F0(v218, type metadata accessor for TTRAccountsListsViewModel.Item);
        v227 = sub_21D0CDFB4(v224, v226, &v288);

        *(v222 + 4) = v227;
        _os_log_impl(&dword_21D0C9000, v200, v221, "Failed to find model for item -- failed delete {item: %s}", v222, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v223);
        MEMORY[0x223D46520](v223, -1, -1);
        MEMORY[0x223D46520](v222, -1, -1);
LABEL_189:

        v228 = v258;
LABEL_192:
        sub_21D1013F0(v228, type metadata accessor for TTRAccountsListsViewModel.Item);

        sub_21D0D0E88(v273, 0);
        result = sub_21D0D0E88(v257, 0);
        v229 = v254;
LABEL_193:
        v229[1] = 0u;
        v229[2] = 0u;
        *v229 = 0u;
        return result;
      case 7u:
        v96 = v269[1];
        v280 = *v269;
        v281 = v96;
        v97 = v269[3];
        v282 = v269[2];
        v283 = v97;
        v240 = v97;
        v98 = sub_21DA1A714(v97);
        if (v98)
        {
          v99 = v98;
        }

        else
        {
          v99 = MEMORY[0x277D84F90];
        }

        v100 = *(v99 + 16);
        v251 = v99;
        if (!v100)
        {
          v247 = MEMORY[0x277D84F90];
          goto LABEL_105;
        }

        v101 = 0;
        v102 = v99 + 32;
        v253 = v100 - 1;
        v247 = MEMORY[0x277D84F90];
        v273 = v99 + 32;
        while (1)
        {
          v27 = v102 + 224 * v101;
          v103 = v101;
          while (1)
          {
            if (v103 >= *(v99 + 16))
            {
              goto LABEL_202;
            }

            v105 = *(v27 + 16);
            v288 = *v27;
            v289 = v105;
            v106 = *(v27 + 32);
            v107 = *(v27 + 48);
            v108 = *(v27 + 80);
            v292 = *(v27 + 64);
            v293 = v108;
            v290 = v106;
            v291 = v107;
            v109 = *(v27 + 96);
            v110 = *(v27 + 112);
            v111 = *(v27 + 144);
            v296 = *(v27 + 128);
            v297 = v111;
            v294 = v109;
            v295 = v110;
            v112 = *(v27 + 160);
            v113 = *(v27 + 176);
            v114 = *(v27 + 192);
            *(v300 + 10) = *(v27 + 202);
            v299 = v113;
            v300[0] = v114;
            v298 = v112;
            v115 = BYTE2(v111);
            v116 = v288;
            if (BYTE2(v111) != 2 && (BYTE2(v111) & 1) != 0)
            {
              break;
            }

            sub_21D567868(&v288, &v284);
            sub_21DA1CE20(v116, &v286);
            if (v287 != 255)
            {
              if (v287 == 1 || v287 == 4)
              {
                v120 = v286;
                sub_21D1077D8(&v288);
                v121 = 0;
                goto LABEL_89;
              }

              sub_21D103A34(v286, v287);
            }

            if (v115 == 2 || (v115 & 1) == 0)
            {
              sub_21DA1CE20(v116, &v284);
              if (v285 != 255)
              {
                v104 = v284;
                if (v285 == 2)
                {
LABEL_87:
                  v120 = v104;
                  sub_21D1077D8(&v288);
                  v121 = 1;
                  goto LABEL_89;
                }

                sub_21D103A34(v284, v285);
              }

              goto LABEL_66;
            }

LABEL_81:
            v286 = *(a2 + v255);
            MEMORY[0x28223BE20](v118);
            *(&v239 - 2) = v116;
            sub_21DBF8E0C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90, &qword_21DC29A60);
            sub_21D9F2B60();
            v119 = v270;
            sub_21DBFA48C();
            v270 = v119;

            if (v285 == 255)
            {
              v98 = sub_21D1077D8(&v288);
              v72 = v271;
              v99 = v251;
              goto LABEL_67;
            }

            v104 = v284;
            v72 = v271;
            v99 = v251;
            if (v285)
            {
              goto LABEL_87;
            }

            sub_21D157864(v284, v285);
LABEL_66:
            v98 = sub_21D1077D8(&v288);
LABEL_67:
            ++v103;
            v27 += 224;
            if (v100 == v103)
            {
              v27 = v258;
              goto LABEL_105;
            }
          }

          v278 = *(a2 + v255);
          MEMORY[0x28223BE20](v98);
          *(&v239 - 2) = v116;
          sub_21D567868(&v288, &v284);
          sub_21DBF8E0C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90, &qword_21DC29A60);
          sub_21D9F2B60();
          v117 = v270;
          sub_21DBFA48C();
          v270 = v117;

          if (v287 == 255)
          {
            goto LABEL_74;
          }

          if (v287)
          {
            break;
          }

          v120 = v286;
          sub_21D1077D8(&v288);
          v121 = 0;
          a2 = v266;
          v99 = v251;
LABEL_89:
          v98 = swift_isUniquelyReferenced_nonNull_native();
          v27 = v258;
          if ((v98 & 1) == 0)
          {
            v98 = sub_21D2146A4(0, *(v247 + 2) + 1, 1, v247);
            v247 = v98;
          }

          v122 = v120;
          v124 = *(v247 + 2);
          v123 = *(v247 + 3);
          if (v124 >= v123 >> 1)
          {
            v98 = sub_21D2146A4((v123 > 1), v124 + 1, 1, v247);
            v247 = v98;
            v122 = v120;
          }

          v101 = v103 + 1;
          v125 = v247;
          *(v247 + 2) = v124 + 1;
          v126 = &v125[16 * v124];
          *(v126 + 4) = v122;
          v126[40] = v121;
          v72 = v271;
          v102 = v273;
          if (v253 == v103)
          {
LABEL_105:
            v288 = v280;
            v289 = v281;
            v290 = v282;
            v291 = v283;
            v139 = TTRAccountsListsViewModel.pinnedLists(in:)(&v288);
            v140 = *(v139 + 16);
            if (!v140)
            {

              v162 = MEMORY[0x277D84F90];
LABEL_142:
              v163 = v247;
              *&v288 = v247;
              sub_21DBF8E0C();
              sub_21D563720(v162);
              v164 = v288;
              v165 = v240;
              v166 = v250;
              v167 = swift_isUniquelyReferenced_nonNull_native();
              *&v288 = v166;
              sub_21D479824(v164, v165, v167);

              v250 = v288;
              v168 = *(v163 + 2);
              v169 = v168 != 0;
              v20 = v265;
              v170 = v251;
              if ((v261 | v267))
              {
                a1 = v249;
              }

              else
              {
                LODWORD(v253) = v168 != 0;
                v171 = (v163 + 32);
                v273 = v260;
                v172 = -v168;
                v27 = -1;
                do
                {
                  v261 = v172 + v27 != -1;
                  if (v172 + v27 == -1)
                  {
                    break;
                  }

                  if (++v27 >= *(v247 + 2))
                  {
                    goto LABEL_208;
                  }

                  v173 = v171 + 2;
                  v174 = *v171;
                  v175 = [v273 objectID];
                  v176 = [v174 objectID];
                  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
                  v177 = sub_21DBFB63C();

                  v170 = v251;
                  v20 = v265;

                  v171 = v173;
                }

                while ((v177 & 1) == 0);
                sub_21D157864(v260, v267);
                v27 = v258;
                a1 = v249;
                v169 = v253;
              }

              v178 = v246;
              if (v100)
              {
                v179 = *(v170 + 16);
                v180 = (v170 + 248);
                while (v179)
                {
                  if ((*v180 & 1) == 0)
                  {
                    v181 = *(v180 - 24);
                    v56 = __OFADD__(v178, v181);
                    v178 += v181;
                    if (v56)
                    {
                      goto LABEL_205;
                    }
                  }

                  --v179;
                  v180 += 224;
                  if (!--v100)
                  {
                    goto LABEL_157;
                  }
                }

                goto LABEL_203;
              }

LABEL_157:
              v246 = v178;
              v252 = v169 | v252;
              sub_21D1013F0(v27, type metadata accessor for TTRAccountsListsViewModel.Item);

              sub_21D9F2BC4(&v280);
              sub_21D157864(v277, v263);

              v273 = sub_21D9F2F78;
              v29 = v272;
              goto LABEL_55;
            }

            v141 = *(v243 + 80);
            v239 = v139;
            v142 = v139 + ((v141 + 32) & ~v141);
            v273 = *(v243 + 72);
            v253 = MEMORY[0x277D84F90];
            while (2)
            {
              sub_21D0FE6CC(v142, v72, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
              v143 = v256;
              sub_21D0FE6CC(v72, v256, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              if (EnumCaseMultiPayload != 1)
              {
                sub_21D1013F0(v72, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
                sub_21D1013F0(v143, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
                goto LABEL_108;
              }

              v145 = v143[11];
              v298 = v143[10];
              v299 = v145;
              v300[0] = v143[12];
              *(v300 + 10) = *(v143 + 202);
              v146 = v143[7];
              v294 = v143[6];
              v295 = v146;
              v147 = v143[9];
              v296 = v143[8];
              v297 = v147;
              v148 = v143[3];
              v290 = v143[2];
              v291 = v148;
              v149 = v143[5];
              v292 = v143[4];
              v293 = v149;
              v150 = v143[1];
              v288 = *v143;
              v289 = v150;
              v151 = v288;
              v152 = BYTE2(v297);
              if (BYTE2(v297) != 2 && (BYTE2(v297) & 1) != 0)
              {
                v286 = *(a2 + v255);
                MEMORY[0x28223BE20](EnumCaseMultiPayload);
                *(&v239 - 2) = v151;
                sub_21DBF8E0C();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90, &qword_21DC29A60);
                sub_21D9F2B60();
                v153 = v270;
                sub_21DBFA48C();
                v270 = v153;

                if (v285 == 255)
                {
                  goto LABEL_122;
                }

                v155 = v284;
                if (v285)
                {
                  sub_21D157864(v284, v285);
                  goto LABEL_122;
                }

                v72 = v271;
LABEL_132:
                sub_21D1013F0(v72, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
                sub_21D1077D8(&v288);
                v157 = 0;
                v27 = v258;
LABEL_133:
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v158 = v253;
                }

                else
                {
                  v158 = sub_21D2146A4(0, *(v253 + 2) + 1, 1, v253);
                }

                v160 = *(v158 + 2);
                v159 = *(v158 + 3);
                if (v160 >= v159 >> 1)
                {
                  v158 = sub_21D2146A4((v159 > 1), v160 + 1, 1, v158);
                }

                *(v158 + 2) = v160 + 1;
                v253 = v158;
                v161 = &v158[16 * v160];
                *(v161 + 4) = v155;
                v161[40] = v157;
                a2 = v266;
LABEL_138:
                v72 = v271;
LABEL_108:
                v142 += v273;
                if (!--v140)
                {

                  v162 = v253;
                  goto LABEL_142;
                }

                continue;
              }

              break;
            }

            sub_21DA1CE20(v288, &v284);
            v155 = v284;
            if (v285 == 1)
            {
              goto LABEL_132;
            }

            if (v285 != 255)
            {
              if (v285 == 4)
              {
                goto LABEL_132;
              }

              sub_21D103A34(v284, v285);
            }

            if (v152 == 2 || (v152 & 1) == 0)
            {
              sub_21DA1CE20(v151, &v284);
              sub_21D1013F0(v72, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
              if (v285 == 255)
              {
                sub_21D1077D8(&v288);
                v27 = v258;
                goto LABEL_108;
              }

              v155 = v284;
              v27 = v258;
              if (v285 != 2)
              {
                sub_21D103A34(v284, v285);
                sub_21D1077D8(&v288);
                goto LABEL_108;
              }
            }

            else
            {
LABEL_122:
              v286 = *(v266 + v255);
              MEMORY[0x28223BE20](v154);
              *(&v239 - 2) = v151;
              sub_21DBF8E0C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90, &qword_21DC29A60);
              sub_21D9F2B60();
              v156 = v270;
              sub_21DBFA48C();
              v270 = v156;
              sub_21D1013F0(v271, type metadata accessor for TTRAccountsListsViewModel.PinnedList);

              if (v285 == 255)
              {
                sub_21D1077D8(&v288);
                a2 = v266;
                v27 = v258;
                goto LABEL_138;
              }

              v155 = v284;
              a2 = v266;
              v27 = v258;
              if ((v285 & 1) == 0)
              {
                sub_21D157864(v284, v285);
                sub_21D1077D8(&v288);
                goto LABEL_138;
              }
            }

            sub_21D1077D8(&v288);
            v157 = 1;
            goto LABEL_133;
          }
        }

        sub_21D157864(v286, v287);
LABEL_74:
        a2 = v266;
        goto LABEL_81;
      case 0xFu:
      case 0x10u:
        sub_21D1013F0(v27, type metadata accessor for TTRAccountsListsViewModel.Item);

        sub_21D157864(v277, v263);
        goto LABEL_36;
      default:
        sub_21D1013F0(v27, type metadata accessor for TTRAccountsListsViewModel.Item);

        sub_21D157864(v277, v263);
        v127 = sub_21DBF56BC();
        (*(*(v127 - 8) + 8))(v269, v127);
LABEL_36:
        v273 = sub_21D9F2F78;
        goto LABEL_54;
    }
  }
}

void TTRAccountsListsInteractorDeleteArguments.init(pinnedLists:viewModel:currentList:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v49 = a2;
  v50 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46[-v7];
  v9 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v9);
  v54 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = *a3;
  v47 = *(a3 + 8);
  v53 = *(a1 + 16);
  if (v53)
  {
    v12 = 0;
    v13 = (a1 + 32);
    v14 = MEMORY[0x277D84F90];
    v51 = v10;
    v52 = a1;
    v15 = (v10 + 56);
    while (v12 < *(a1 + 16))
    {
      v16 = v13[11];
      v17 = v13[9];
      v68 = v13[10];
      v69 = v16;
      v18 = v13[11];
      v70[0] = v13[12];
      *(v70 + 10) = *(v13 + 202);
      v19 = v13[7];
      v20 = v13[5];
      v64 = v13[6];
      v65 = v19;
      v21 = v13[7];
      v22 = v13[9];
      v66 = v13[8];
      v67 = v22;
      v23 = v13[3];
      v24 = v13[1];
      v60 = v13[2];
      v61 = v23;
      v25 = v13[3];
      v26 = v13[5];
      v62 = v13[4];
      v63 = v26;
      v27 = v13[1];
      v58 = *v13;
      v59 = v27;
      v81 = v68;
      v82 = v18;
      v83[0] = v13[12];
      *(v83 + 10) = *(v13 + 202);
      v77 = v64;
      v78 = v21;
      v79 = v66;
      v80 = v17;
      v73 = v60;
      v74 = v25;
      v75 = v62;
      v76 = v20;
      v71 = v58;
      v72 = v24;
      v28 = sub_21D1577AC(&v71);
      v29 = sub_21D14D0D4(&v71);
      if (v28 == 1)
      {
        v30 = v29[1];
        *v8 = *v29;
        v8[1] = v30;
        v31 = v29[5];
        v33 = v29[2];
        v32 = v29[3];
        v8[4] = v29[4];
        v8[5] = v31;
        v8[2] = v33;
        v8[3] = v32;
        v34 = v29[9];
        v36 = v29[6];
        v35 = v29[7];
        v8[8] = v29[8];
        v8[9] = v34;
        v8[6] = v36;
        v8[7] = v35;
        v37 = *(v29 + 202);
        v38 = v29[12];
        v39 = v29[10];
        v8[11] = v29[11];
        v8[12] = v38;
        v8[10] = v39;
        *(v8 + 202) = v37;
        swift_storeEnumTagMultiPayload();
        (*v15)(v8, 0, 1, v9);
        sub_21D9F2C18(v8, v54);
        v56[10] = v68;
        v56[11] = v69;
        v57[0] = v70[0];
        *(v57 + 10) = *(v70 + 10);
        v56[6] = v64;
        v56[7] = v65;
        v56[8] = v66;
        v56[9] = v67;
        v56[2] = v60;
        v56[3] = v61;
        v56[4] = v62;
        v56[5] = v63;
        v56[0] = v58;
        v56[1] = v59;
        v40 = sub_21D14D0D4(v56);
        sub_21D567868(v40, &v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_21D103C5C(0, v14[2] + 1, 1, v14);
        }

        v42 = v14[2];
        v41 = v14[3];
        if (v42 >= v41 >> 1)
        {
          v14 = sub_21D103C5C((v41 > 1), v42 + 1, 1, v14);
        }

        v14[2] = v42 + 1;
        sub_21D9F2C18(v54, v14 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42);
        a1 = v52;
      }

      else
      {
        (*v15)(v8, 1, 1, v9);
        sub_21D0CF7E0(v8, &qword_27CE5A490, &unk_21DC0F950);
      }

      ++v12;
      v13 += 14;
      if (v53 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_13:

    *&v58 = v48;
    BYTE8(v58) = v47;
    TTRAccountsListsInteractorDeleteArguments.init(items:viewModel:currentList:)(v14, v49, &v58, &v71);
    v43 = v72;
    v44 = v73;
    v45 = v50;
    *v50 = v71;
    v45[1] = v43;
    v45[2] = v44;
  }
}

void TTRAccountsListsInteractorDeleteArguments.listsToDelete(forAccountID:)(uint64_t a1)
{
  if (*(*(v1 + 32) + 16))
  {
    sub_21D17E07C(a1);
    if (v2)
    {
      sub_21DBF8E0C();
    }
  }
}

void TTRAccountsListsInteractorDeleteArguments.sublistsToDelete(forGroupID:)(uint64_t a1)
{
  if (*(*(v1 + 40) + 16))
  {
    sub_21D17E07C(a1);
    if (v2)
    {
      sub_21DBF8E0C();
    }
  }
}

void TTRAccountsListsInteractorDeleteArguments.description.getter()
{
  v1 = v0[1];
  v25[0] = *v0;
  v25[1] = v1;
  v26 = v0[2];
  v2 = *&v25[0];
  if (*&v25[0] >> 62)
  {
    v22 = sub_21DBFBD7C();
    v2 = *&v25[0];
    v3 = v22;
    if (!v22)
    {
      return;
    }
  }

  else
  {
    v3 = *((*&v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = v26;
    v23 = v2 & 0xC000000000000001;
    v24 = v2;
    do
    {
      if (v23)
      {
        v16 = MEMORY[0x223D44740](v4);
      }

      else
      {
        v16 = *(v2 + 8 * v4 + 32);
      }

      v17 = v16;
      v18 = [v16 objectID];
      v19 = v18;
      if (*(v5 + 16) && (v20 = sub_21D17E07C(v18), (v21 & 1) != 0))
      {
        v6 = *(*(v5 + 56) + 8 * v20);
        sub_21DBF8E0C();
      }

      else
      {
        v6 = MEMORY[0x277D84F90];
      }

      ++v4;

      sub_21D9F2594(v6, v25);
      v8 = v7;
      v10 = v9;

      sub_21DBFBEEC();

      v11 = [v17 objectID];
      v12 = [v11 description];
      v13 = sub_21DBFA16C();
      v15 = v14;

      MEMORY[0x223D42AA0](v13, v15);

      MEMORY[0x223D42AA0](8236, 0xE200000000000000);
      MEMORY[0x223D42AA0](v8, v10);

      MEMORY[0x223D42AA0](8236, 0xE200000000000000);
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC733F0);

      v2 = v24;
    }

    while (v3 != v4);
  }
}

void sub_21D9F2594(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_17:
    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    return;
  }

  v3 = a2;
  v4 = 0;
  v5 = a1 + 32;
  v37 = a1 + 32;
  v38 = *(a1 + 16);
  while (1)
  {
    v14 = v5 + 16 * v4;
    v15 = *v14;
    if (*(v14 + 8))
    {
      v6 = *v14;
      v7 = v15;
      sub_21DBFBEEC();

      v42 = 0xD00000000000001ALL;
      v43 = 0x800000021DC73410;
      v8 = [v7 objectID];
      v9 = [v8 description];
      goto LABEL_4;
    }

    v16 = *(v3 + 40);
    v17 = v15;
    v18 = [v17 objectID];
    v19 = v18;
    if (*(v16 + 16))
    {
      v20 = sub_21D17E07C(v18);
      if (v21)
      {
        break;
      }
    }

    v6 = v15;

LABEL_15:
    sub_21DBFBEEC();

    v42 = 0x6A626F2E7473696CLL;
    v43 = 0xEF203A4449746365;
    v8 = [v17 objectID];
    v9 = [v8 description];
LABEL_4:
    v10 = v9;
    v11 = sub_21DBFA16C();
    v13 = v12;

    MEMORY[0x223D42AA0](v11, v13);

    MEMORY[0x223D42AA0](8236, 0xE200000000000000);
    MEMORY[0x223D42AA0](v42, v43);
LABEL_5:
    ++v4;

    if (v4 == v2)
    {
      goto LABEL_17;
    }
  }

  v41 = v17;
  v22 = *(*(v16 + 56) + 8 * v20);
  sub_21DBF8E0C();

  v23 = *(v22 + 16);
  if (!v23)
  {
    v6 = v15;

    v17 = v41;
    goto LABEL_15;
  }

  v40 = v15;
  v24 = 0;
  v25 = 32;
  while (v24 < *(v22 + 16))
  {
    ++v24;
    v26 = *(v22 + v25);
    v27 = [v26 objectID];
    v28 = [v27 description];
    v29 = sub_21DBFA16C();
    v31 = v30;

    MEMORY[0x223D42AA0](v29, v31);

    MEMORY[0x223D42AA0](8236, 0xE200000000000000);
    MEMORY[0x223D42AA0](0, 0xE000000000000000);

    v25 += 16;
    if (v23 == v24)
    {

      sub_21DBFBEEC();

      v32 = [v41 objectID];
      v33 = [v32 description];
      v34 = sub_21DBFA16C();
      v36 = v35;

      MEMORY[0x223D42AA0](v34, v36);

      MEMORY[0x223D42AA0](0x73696C627573202CLL, 0xEC000000203A7374);
      MEMORY[0x223D42AA0](0, 0xE000000000000000);

      MEMORY[0x223D42AA0](0xD000000000000010, 0x800000021DC73430);
      v2 = v38;
      v3 = a2;
      v5 = v37;
      v6 = v40;
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_21D9F2A18()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = *(v0 + 32);
  v5[2] = &v6;
  return sub_21D3233D4(sub_21D9F2F38, v5, v6) & 1;
}

void sub_21D9F2ACC(uint64_t a1)
{
  if (*(*(v1 + 32) + 16))
  {
    sub_21D17E07C(a1);
    if (v2)
    {
      sub_21DBF8E0C();
    }
  }
}

void sub_21D9F2B14(uint64_t a1)
{
  if (*(*(v1 + 40) + 16))
  {
    sub_21D17E07C(a1);
    if (v2)
    {
      sub_21DBF8E0C();
    }
  }
}

unint64_t sub_21D9F2B60()
{
  result = qword_280D0C3F0;
  if (!qword_280D0C3F0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE61C90, &qword_21DC29A60);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_280D0C3F0);
  }

  return result;
}

uint64_t sub_21D9F2C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D9F2C7C(uint64_t a1)
{
  result = sub_21D9F2CA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21D9F2CA4()
{
  result = qword_27CE649F0;
  if (!qword_27CE649F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAccountsListsInteractorDeleteArguments, &type metadata for TTRAccountsListsInteractorDeleteArguments, v0, v1);
    atomic_store(result, &qword_27CE649F0);
  }

  return result;
}

double destroy for TTRAccountsListsInteractorDeleteArguments()
{

  return result;
}

uint64_t initializeWithCopy for TTRAccountsListsInteractorDeleteArguments(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  v3 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsInteractorDeleteArguments(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = a2[4];
  sub_21DBF8E0C();

  *(a1 + 40) = a2[5];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRAccountsListsInteractorDeleteArguments(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t sub_21D9F2F38(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = v2[1];
  v7[0] = *v2;
  v7[1] = v4;
  v7[2] = v2[2];
  sub_21D9EFA30(v3, v7);
  return v5 & 1;
}

Swift::Void __swiftcall TTRWidgetCenter.reloadAllTimelines()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_21DBFA16C();
  v4 = v3;

  if (v2 == 0xD000000000000011 && 0x800000021DC4A6B0 == v4)
  {
  }

  else
  {
    v6 = sub_21DBFC64C();

    if ((v6 & 1) == 0)
    {
      if (qword_280D0F1A8 != -1)
      {
        swift_once();
      }

      v7 = sub_21DBF84BC();
      __swift_project_value_buffer(v7, qword_280D0F1B0);
      v8 = sub_21DBF84AC();
      v9 = sub_21DBFAEDC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_21D0C9000, v8, v9, "TTRWidgetCenter will reload all timelines", v10, 2u);
        MEMORY[0x223D46520](v10, -1, -1);
      }

      sub_21DBF9DFC();
      return;
    }
  }

  if (qword_280D0F1A8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F1B0);
  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAEDC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21D0C9000, v12, v13, "TTRWidgetCenter will refresh widgets", v14, 2u);
    MEMORY[0x223D46520](v14, -1, -1);
  }

  sub_21DBF615C();
  MEMORY[0x223D3E900]();
}

uint64_t sub_21D9F31D8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F1B0);
  v1 = __swift_project_value_buffer(v0, qword_280D0F1B0);
  if (qword_280D0C8A0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRWidgetCenter.__allocating_init(widgetCenter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TTRWidgetCenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AttributedString.ttr_stringValue.getter()
{
  v0 = sub_21DBF50EC();
  MEMORY[0x28223BE20](v0);
  sub_21DBF50DC();
  sub_21D9F33F4();
  return sub_21DBFA3DC();
}

unint64_t sub_21D9F33F4()
{
  result = qword_27CE649F8;
  if (!qword_27CE649F8)
  {
    v3 = sub_21DBF50EC();
    result = swift_getWitnessTable(MEMORY[0x277CC8B40], v3, v0, v1);
    atomic_store(result, &qword_27CE649F8);
  }

  return result;
}

void UIScrollView.bottomContentInset(forAvoiding:of:)(uint64_t a1)
{
  [v1 convertRect:a1 fromView:?];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v1 coordinateSpace];
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v1 safeAreaInsets];
  v20 = v18 - v19;
  [objc_msgSend(v1 coordinateSpace)];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  swift_unknownObjectRelease();
  v33.origin.x = v22;
  v33.origin.y = v24;
  v33.size.width = v26;
  v33.size.height = v28;
  v37.origin.x = v12;
  v37.origin.y = v14;
  v37.size.width = v16;
  v37.size.height = v20;
  v34 = CGRectIntersection(v33, v37);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  if (!CGRectIsEmpty(v34))
  {
    v35.origin.x = v12;
    v35.origin.y = v14;
    v35.size.width = v16;
    v35.size.height = v20;
    CGRectGetMaxY(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    CGRectGetMinY(v36);
  }

  swift_unknownObjectRelease();
}

uint64_t UIScrollView.iterativelyScrollRectToFullyVisible(with:)(uint64_t (*a1)(void *))
{
  v2 = v1;
  v3 = 0;
  v28 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  height = 0.0;
  width = 0.0;
  y = 0.0;
  x = 0.0;
  while (1)
  {
    v11 = x;
    v12 = y;
    v13 = width;
    v14 = height;
    v15 = a1(v2);
    sub_21D9F3A04(v15, &v36);

    if ((v37 & 1) != 0 || (x = v36.origin.x, y = v36.origin.y, width = v36.size.width, height = v36.size.height, v38.origin.x = v11, v38.origin.y = v12, v38.size.width = v13, v38.size.height = v14, CGRectEqualToRect(v36, v38)))
    {
      v26 = v6;
      v27 = v5;
LABEL_12:
      sub_21D0D0E88(v26, v27);
      return sub_21D0D0E88(v4, v28);
    }

    [v2 scrollRectToVisible:0 animated:{x, y, width, height}];
    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    v18 = v2;
    sub_21D0D0E88(v6, v5);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_21D9F40C4;
    *(v19 + 24) = v17;
    v34 = sub_21D0E6070;
    v35 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_21D0E6204;
    v33 = &block_descriptor_130;
    v20 = _Block_copy(&aBlock);

    [v16 performWithoutAnimation_];
    _Block_release(v20);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if (v20)
    {
      break;
    }

    if (!v3)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        [v18 scrollRectToVisible:0 animated:{x, y, width, height}];
        v22 = swift_allocObject();
        *(v22 + 16) = v18;
        v23 = v18;
        sub_21D0D0E88(v4, v28);
        v24 = swift_allocObject();
        v4 = sub_21D9F3B84;
        *(v24 + 16) = sub_21D9F3B84;
        *(v24 + 24) = v22;
        v34 = sub_21D0E622C;
        v35 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v31 = 1107296256;
        v32 = sub_21D0E6204;
        v33 = &block_descriptor_13_7;
        v25 = _Block_copy(&aBlock);

        [v16 performWithoutAnimation_];
        _Block_release(v25);
        LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

        if (v25)
        {
          goto LABEL_14;
        }

        v28 = v22;
      }
    }

    --v3;
    v6 = sub_21D9F40C4;
    v5 = v17;
    if (v3 == -10)
    {
      v26 = sub_21D9F40C4;
      v27 = v17;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_21D9F3A04@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = result;
  v6 = *(result + 16);
  v7 = (result + 56);
  v8 = v6 + 1;
  while (--v8)
  {
    v9 = v7 + 4;
    v11 = *(v7 - 1);
    v10 = *v7;
    v32 = *(v7 - 3);
    [v3 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [v3 adjustedContentInset];
    v24 = UIEdgeInsetsInsetRect_0(v13, v15, v17, v19, v20, v21, v22, v23);
    v26 = v25;
    v33.origin.x = 0.0;
    v33.origin.y = 0.0;
    v33.size.width = v11;
    v33.size.height = v10;
    v35 = CGRectInset(v33, 0.1, 0.1);
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = v24;
    v34.size.height = v26;
    result = CGRectContainsRect(v34, v35);
    v7 = v9;
    if (result)
    {
      v27 = 0;
      v28 = v11;
      v29 = v10;
      v30 = v32;
      goto LABEL_8;
    }
  }

  if (v6)
  {
    v27 = 0;
    v31 = v4 + 32 * v6;
    v30 = *v31;
    v28 = *(v31 + 16);
    v29 = *(v31 + 24);
  }

  else
  {
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0uLL;
    v27 = 1;
  }

LABEL_8:
  *a2 = v30;
  *(a2 + 16) = v28;
  *(a2 + 24) = v29;
  *(a2 + 32) = v27;
  return result;
}

Swift::Void __swiftcall UIScrollView.scrollRectToFullyVisibleAnimated(_:)(Swift::OpaquePointer a1)
{
  sub_21D9F3A04(a1._rawValue, v6);
  if ((v7 & 1) == 0)
  {
    v2 = *&v6[2];
    v3 = *&v6[3];
    v4 = *v6;
    v5 = *&v6[1];

    [v1 scrollRectToVisible:1 animated:{v4, v5, v2, v3}];
  }
}

Swift::Bool __swiftcall UIScrollView.canScrollRectToFullVisible(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  [v1 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v1 adjustedContentInset];
  v16 = UIEdgeInsetsInsetRect_0(v5, v7, v9, v11, v12, v13, v14, v15);
  v18 = v17;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = width;
  v20.size.height = height;
  v22 = CGRectInset(v20, 0.1, 0.1);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v16;
  v21.size.height = v18;
  return CGRectContainsRect(v21, v22);
}

double UIScrollView.bottomContentInset(forAvoidingKeyboardWith:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = [v1 window];
  v9 = 0.0;
  if (v8)
  {
    v10 = v8;
    sub_21D1B2ABC();
    v11 = [v10 screen];
    v12 = sub_21DBFB63C();

    if (v12)
    {
      v13 = [v3 coordinateSpace];
      [v2 bounds];
      v15 = v14;
      v38 = v16;
      v18 = v17;
      v20 = v19;
      [v2 safeAreaInsets];
      v22 = v20 - v21;
      [objc_msgSend(v2 coordinateSpace)];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      swift_unknownObjectRelease();
      v39.origin.x = v24;
      v39.origin.y = v26;
      v39.size.width = v28;
      v39.size.height = v30;
      v43.origin.x = v15;
      v43.origin.y = v38;
      v43.size.width = v18;
      v43.size.height = v22;
      v40 = CGRectIntersection(v39, v43);
      x = v40.origin.x;
      y = v40.origin.y;
      width = v40.size.width;
      height = v40.size.height;
      if (!CGRectIsEmpty(v40))
      {
        v41.size.width = v18;
        v41.origin.x = v15;
        v41.origin.y = v38;
        v41.size.height = v22;
        MaxY = CGRectGetMaxY(v41);
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        MinY = CGRectGetMinY(v42);
        swift_unknownObjectRelease();

        return MaxY - MinY;
      }

      swift_unknownObjectRelease();
    }
  }

  return v9;
}

double UIScrollView.bottomInsetRelativeToBounds(forAvoidingKeyboardWith:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = [v1 window];
  v9 = 0.0;
  if (v8)
  {
    v10 = v8;
    sub_21D1B2ABC();
    v11 = [v10 screen];
    v12 = sub_21DBFB63C();

    if (v12)
    {
      v13 = [v3 coordinateSpace];
      [v2 bounds];
      v15 = v14;
      v17 = v16;
      v36 = v18;
      v20 = v19;
      [objc_msgSend(v2 coordinateSpace)];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      swift_unknownObjectRelease();
      v37.origin.x = v22;
      v37.origin.y = v24;
      v37.size.width = v26;
      v37.size.height = v28;
      v41.origin.x = v15;
      v41.origin.y = v17;
      v41.size.width = v36;
      v41.size.height = v20;
      v38 = CGRectIntersection(v37, v41);
      x = v38.origin.x;
      y = v38.origin.y;
      width = v38.size.width;
      height = v38.size.height;
      if (!CGRectIsEmpty(v38))
      {
        v39.origin.x = v15;
        v39.origin.y = v17;
        v39.size.width = v36;
        v39.size.height = v20;
        MaxY = CGRectGetMaxY(v39);
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        MinY = CGRectGetMinY(v40);
        swift_unknownObjectRelease();

        return MaxY - MinY;
      }

      swift_unknownObjectRelease();
    }
  }

  return v9;
}

void *TTRSectionLite.init(sectionID:displayName:canonicalName:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = *result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t TTRSectionLite.init(sectionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF6F4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D453E0])
  {
    (*(v5 + 8))(a1, v4);
    result = (*(v5 + 96))(v8, v4);
    v11 = *v8;
    v12 = *(v8 + 1);
    v13 = *(v8 + 2);
    v14 = *(v8 + 24);
LABEL_5:
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    return result;
  }

  if (v9 == *MEMORY[0x277D453D8])
  {
    result = (*(v5 + 8))(a1, v4);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0uLL;
    goto LABEL_5;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

id TTRSectionID.remObjectID.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRSectionID.description.getter()
{
  if (!*v0)
  {
    return 0x6C6E6F6974636573;
  }

  v1 = [*v0 description];
  v2 = sub_21DBFA16C();

  return v2;
}

uint64_t TTRSectionID.hash(into:)(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x223D44FA0](1);
  }

  MEMORY[0x223D44FA0](0);
  return sub_21DBFB64C();
}

uint64_t TTRSectionID.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1)
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFB64C();
  }

  else
  {
    MEMORY[0x223D44FA0](1);
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D9F43E0()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1)
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFB64C();
  }

  else
  {
    MEMORY[0x223D44FA0](1);
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D9F4444(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x223D44FA0](1);
  }

  MEMORY[0x223D44FA0](0);
  return sub_21DBFB64C();
}

uint64_t sub_21D9F449C(uint64_t a1)
{
  v2 = *v1;
  sub_21DBFC7DC();
  if (v2)
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFB64C();
  }

  else
  {
    MEMORY[0x223D44FA0](1);
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D9F44FC()
{
  if (!*v0)
  {
    return 0x6C6E6F6974636573;
  }

  v1 = [*v0 description];
  v2 = sub_21DBFA16C();

  return v2;
}

id TTRSectionLite.sectionID.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t TTRSectionLite.displayName.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRSectionLite.canonicalName.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

BOOL _s15RemindersUICore12TTRSectionIDO2eeoiySbAC_ACtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_21D1B2ABC();
      v4 = v3;
      v5 = v2;
      v6 = sub_21DBFB63C();

      return v6 & 1;
    }

    return 0;
  }

  return !v3;
}

BOOL _s15RemindersUICore14TTRSectionLiteV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (*a1)
  {
    if (!v8)
    {
      return 0;
    }

    v21 = *(a2 + 32);
    v12 = *(a1 + 32);
    v13 = *(a2 + 24);
    v14 = *(a1 + 24);
    sub_21D1B2ABC();
    v15 = v8;
    v16 = v2;
    v17 = sub_21DBFB63C();

    v4 = v14;
    v9 = v13;
    v6 = v12;
    v11 = v21;
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }

    if (v3 != v7 || v5 != v10)
    {
      v18 = v4;
      v19 = sub_21DBFC64C();
      v4 = v18;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    return v11 && (v4 == v9 && v6 == v11 || (sub_21DBFC64C() & 1) != 0);
  }

  return !v11;
}

unint64_t sub_21D9F47B4()
{
  result = qword_27CE64A00;
  if (!qword_27CE64A00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRSectionID, &type metadata for TTRSectionID, v0, v1);
    atomic_store(result, &qword_27CE64A00);
  }

  return result;
}

uint64_t static TTRLocalizableStrings.InCellQuickBar.none.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.InCellQuickBar.custom.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21D9F49A0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64A08);
  v1 = __swift_project_value_buffer(v0, qword_27CE64A08);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static TTRLocalizableStrings.InCellQuickBar.today.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.InCellQuickBar.tomorrow.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

void _s15RemindersUICore21TTRLocalizableStringsO14InCellQuickBarO9timeOfDayySSSo016REMLocalizedTimejK0VFZ_0(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      case 4:
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      case 5:
        if (qword_280D1BAA8 == -1)
        {
LABEL_19:
          sub_21DBF516C();
          return;
        }

LABEL_20:
        swift_once();
        goto LABEL_19;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      case 1:
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      case 2:
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
    }
  }

  if (qword_27CE56F48 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE64A08);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_21D17716C(MEMORY[0x277D84F90]);
  v4 = sub_21D17716C(v2);
  sub_21DAEAB00("Unknown time of day", 19, 2, v3, v4);
  __break(1u);
}

uint64_t TTRObservationTrackingUpdateHelper.__allocating_init(loggingPrefix:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *v4;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 16) = (*(*(v5 + 88) + 16))();
  return v4;
}

BOOL TTRObservationTrackingUpdateHelper.hasUpdates.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  v0 = sub_21DBFAB4C();

  return (v0 & 1) == 0;
}

void TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a2;
  v62 = a3;
  v6 = *v3;
  v7 = *(v6 + 80);
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52[-v10];
  v64 = *(v7 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v52[-v16];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v67 = &v52[-v18];
  swift_beginAccess();
  v19 = *(*(v6 + 88) + 8);
  sub_21DBF8E0C();
  v66 = v19;
  LOBYTE(v19) = sub_21DBFAB6C();

  if (v19)
  {
    v56 = v14;
    v23 = v4[7];
    v58 = v9;
    v59 = v8;
    v65 = a1;
    v24 = v11;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = sub_21D9F5C10(v4, v20, v21, v22);
    }

    v57 = *(v64 + 16);
    v57(v17, v65, v7);
    swift_beginAccess();
    v26 = sub_21DBFABAC();

    v27 = v67;
    v60 = v26;
    v28 = sub_21DBFAB2C();
    v29 = swift_endAccess();
    *v27 = v28 & 1;
    v30 = v24;
    if ((v28 & 1) == 0)
    {
      if (qword_27CE56F50 != -1)
      {
        swift_once();
      }

      v31 = sub_21DBF84BC();
      __swift_project_value_buffer(v31, qword_27CE64A20);
      v32 = v56;
      v57(v56, v65, v7);

      v33 = sub_21DBF84AC();
      v34 = sub_21DBFAEBC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v69[0] = v55;
        *v35 = 136315394;
        v54 = v33;
        v36 = sub_21D9F5CD0();
        v38 = sub_21D0CDFB4(v36, v37, v69);
        v53 = v34;
        v39 = v38;

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        v57(v17, v32, v7);
        v40 = sub_21DBFA1AC();
        v42 = v41;
        (*(v64 + 8))(v32, v7);
        v43 = sub_21D0CDFB4(v40, v42, v69);

        *(v35 + 14) = v43;
        v44 = v54;
        _os_log_impl(&dword_21D0C9000, v54, v53, "%s: unexpected nested updateIfNeeded calls with the same update flag. This will not work correctly {updateFlag: %s}", v35, 0x16u);
        v45 = v55;
        swift_arrayDestroy();
        MEMORY[0x223D46520](v45, -1, -1);
        MEMORY[0x223D46520](v35, -1, -1);
      }

      else
      {

        v29 = (*(v64 + 8))(v32, v7);
      }
    }

    v46 = v25[2];
    MEMORY[0x28223BE20](v29);
    v47 = v62;
    *&v52[-16] = v61;
    *&v52[-8] = v47;
    MEMORY[0x28223BE20](v48);
    *&v52[-16] = v4;
    *&v52[-8] = v46;
    sub_21DBF8E0C();
    sub_21DBF5D7C();

    swift_beginAccess();
    sub_21DBFAB3C();
    swift_endAccess();
    v49 = v59;
    v50 = *(v58 + 8);
    v50(v30, v59);
    sub_21DBF8E0C();
    v51 = sub_21DBFAB4C();

    if (v51)
    {
      v4[7] = 0;
    }

    swift_beginAccess();
    sub_21DBFAB3C();
    swift_endAccess();

    v50(v30, v49);
    (*(v63 + 8))(v67, TupleTypeMetadata2);
  }
}

uint64_t sub_21D9F584C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64A20);
  v1 = __swift_project_value_buffer(v0, qword_27CE64A20);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double TTRObservationTrackingUpdateHelper.dirtyUpdateFlags.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D9F594C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21D9F59E0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t TTRObservationTrackingUpdateHelper.scheduleUpdate.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_21D0D0E78(v1, *(v0 + 32));
  return v1;
}

uint64_t TTRObservationTrackingUpdateHelper.scheduleUpdate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_21D0D0E88(v5, v6);
}

uint64_t *TTRObservationTrackingUpdateHelper.init(loggingPrefix:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v2 + 5) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 7) = 0u;
  v2[5] = a1;
  v2[6] = a2;
  v2[2] = (*(*(v3 + 88) + 16))();
  return v2;
}

void *sub_21D9F5C10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRObservationTrackingUpdateHelper.UpdateContext(0, *(*a1 + 80), *(*a1 + 88), a4);
  swift_allocObject();
  v5 = sub_21D9F6588();
  a1[7] = v5;

  return v5;
}

unint64_t sub_21D9F5CD0()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    sub_21DBFBEEC();

    v2 = sub_21DBFC8EC();
    MEMORY[0x223D42AA0](v2);

    MEMORY[0x223D42AA0](62, 0xE100000000000000);
    v1 = 0xD000000000000023;
  }

  sub_21DBF8E0C();
  return v1;
}

uint64_t (*sub_21D9F5DAC(uint64_t *a1, uint64_t a2))()
{
  v3 = *a1;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = *(v3 + 80);
  v5[3] = *(v3 + 88);
  v5[4] = v4;
  v5[5] = a2;
  sub_21DBF8E0C();
  return sub_21D9F6B48;
}

uint64_t sub_21D9F5E80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D9F5EE0(a2);
  }

  return result;
}

void sub_21D9F5EE0(uint64_t a1)
{
  if (*(v1 + 56))
  {
    swift_beginAccess();
    v3 = qword_27CE56F50;
    sub_21DBF8E0C();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE64A20);
    sub_21DBF8E0C();

    sub_21DBF8E0C();
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v7 = 136315650;
      v8 = sub_21D9F5CD0();
      v10 = sub_21D0CDFB4(v8, v9, &v20);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v11 = sub_21DBFABAC();
      swift_getWitnessTable(MEMORY[0x277D83B80], v11);
      v12 = sub_21DBFC5BC();
      v14 = sub_21D0CDFB4(v12, v13, &v20);

      *(v7 + 14) = v14;
      *(v7 + 22) = 2080;
      v15 = sub_21DBFC5BC();
      v17 = v16;

      v18 = sub_21D0CDFB4(v15, v17, &v20);

      *(v7 + 24) = v18;
      _os_log_impl(&dword_21D0C9000, v5, v6, "%s: @Observable object changed during update unexpectedly. This may result in an update loop {tryingToAdd: %s, whileUpdating: %s}", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v19, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    else
    {
    }
  }

  TTRObservationTrackingUpdateHelper.markAsDirty(_:)(a1);
}

Swift::Bool __swiftcall TTRObservationTrackingUpdateHelper.assertNoRemainingUpdates()()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  v0 = sub_21DBFAB4C();

  if ((v0 & 1) == 0)
  {
    if (qword_27CE56F50 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_27CE64A20);

    v2 = sub_21DBF84AC();
    v3 = sub_21DBFAEBC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315394;
      v6 = sub_21D9F5CD0();
      v8 = sub_21D0CDFB4(v6, v7, &v14);

      *(v4 + 4) = v8;
      *(v4 + 12) = 2080;
      v9 = sub_21DBFABAC();
      swift_getWitnessTable(MEMORY[0x277D83B80], v9);
      v10 = sub_21DBFC5BC();
      v12 = sub_21D0CDFB4(v10, v11, &v14);

      *(v4 + 14) = v12;
      swift_arrayDestroy();
      MEMORY[0x223D46520](v5, -1, -1);
      MEMORY[0x223D46520](v4, -1, -1);
    }
  }

  return v0 & 1;
}

void TTRObservationTrackingUpdateHelper.markAsDirty(_:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = sub_21DBFABAC();
  sub_21DBF8E0C();
  swift_getWitnessTable(MEMORY[0x277D83B68], v2);
  sub_21DBFAB8C();
  swift_endAccess();
  sub_21DBF8E0C();
  v3 = sub_21DBFAB4C();

  if ((v3 & 1) == 0 && !v1[8])
  {
    swift_beginAccess();
    v4 = v1[3];
    if (v4)
    {
      v5 = v1[4];

      v4(v6);
      sub_21D0D0E88(v4, v5);
    }
  }
}

uint64_t (*TTRObservationTrackingUpdateHelper.withUpdateSchedulingDisabled<A>(_:)(uint64_t (*result)(void)))(void)
{
  v2 = *(v1 + 64);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 64) = v4;
    result = result();
    v5 = *(v1 + 64);
    v3 = __OFSUB__(v5, 1);
    v6 = v5 - 1;
    if (!v3)
    {
      *(v1 + 64) = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *sub_21D9F6588()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_21DBFA68C();
  if (sub_21DBFA6DC())
  {
    v4 = sub_21D495A08(v3, v2, *(*(v1 + 88) + 8));
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  v0[2] = v4;
  return v0;
}

uint64_t TTRObservationTrackingUpdateHelper.deinit()
{

  sub_21D0D0E88(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t TTRObservationTrackingUpdateHelper.__deallocating_deinit()
{
  TTRObservationTrackingUpdateHelper.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRObservationTrackingUpdateHelper.description.getter()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  sub_21DBF8E0C();
  LOBYTE(v2) = sub_21DBFAB4C();

  if (v2)
  {
    v5 = 0xE700000000000000;
    v6 = 0x297974706D6528;
  }

  else
  {
    v7 = *(v4 + 16);
    sub_21DBF8E0C();
    v7(v3, v4);
    v8 = sub_21DBFAADC();

    if (v8)
    {
      v5 = 0xEC00000029676E69;
      v6 = 0x6874797265766528;
    }

    else
    {
      v9 = sub_21DBFABAC();
      swift_getWitnessTable(MEMORY[0x277D83B80], v9);
      sub_21DBFC5FC();
      v6 = 0;
      v5 = 0xE000000000000000;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D20;
  *(v10 + 32) = sub_21D9F5CD0();
  *(v10 + 40) = v11;
  sub_21DBFBEEC();

  MEMORY[0x223D42AA0](v6, v5);

  *(v10 + 48) = 0xD000000000000011;
  *(v10 + 56) = 0x800000021DC73760;
  if (v1[7])
  {
    swift_beginAccess();
    sub_21DBF8E0C();
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000018, 0x800000021DC73780);
    v12 = sub_21DBFABAC();
    swift_getWitnessTable(MEMORY[0x277D83B80], v12);
    sub_21DBFC5FC();

    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      v10 = sub_21D210A84((v13 > 1), v14 + 1, 1, v10);
    }

    *(v10 + 16) = v14 + 1;
    v15 = v10 + 16 * v14;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v16 = sub_21DBFA07C();
  v18 = v17;

  MEMORY[0x223D42AA0](v16, v18);

  MEMORY[0x223D42AA0](62, 0xE100000000000000);
  return 60;
}

uint64_t TTRReminderCellHashtagTextUpdate.HashtagAndRange.init(hashtag:range:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

RemindersUICore::TTRReminderCellHashtagTextUpdate __swiftcall TTRReminderCellHashtagTextUpdate.init(hashtagsToAdd:expectedCurrentText:)(Swift::OpaquePointer hashtagsToAdd, Swift::String expectedCurrentText)
{
  *v2 = hashtagsToAdd;
  *(v2 + 8) = expectedCurrentText;
  result.expectedCurrentText = expectedCurrentText;
  result.hashtagsToAdd = hashtagsToAdd;
  return result;
}

uint64_t TTRReminderCellTextHighlights.init(expectedCurrentText:highlights:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void __swiftcall TTRReminderTextChangeDetail.init(originalText:originalRangeReplaced:replacementText:)(RemindersUICore::TTRReminderTextChangeDetail *__return_ptr retstr, NSAttributedString originalText, __C::_NSRange originalRangeReplaced, Swift::String_optional replacementText)
{
  retstr->originalText = originalText;
  retstr->originalRangeReplaced = originalRangeReplaced;
  retstr->replacementText = replacementText;
}

RemindersUICore::TTRReminderCellStyleAttributeUpdate __swiftcall TTRReminderCellStyleAttributeUpdate.init(rangeToChange:attributes:)(__C::_NSRange rangeToChange, Swift::OpaquePointer attributes)
{
  *v2 = rangeToChange;
  *(v2 + 16) = attributes;
  result.rangeToChange = rangeToChange;
  result.attributes = attributes;
  return result;
}

RemindersUICore::TTRReminderCellTextReplacement __swiftcall TTRReminderCellTextReplacement.init(rangeToChange:replacementText:)(__C::_NSRange rangeToChange, Swift::String replacementText)
{
  *v2 = rangeToChange;
  *(v2 + 16) = replacementText;
  result.replacementText = replacementText;
  result.rangeToChange = rangeToChange;
  return result;
}

double static TTRReminderCellInlineHashtagVisibility.showAll.getter@<D0>(void *a1@<X8>)
{
  if (qword_280D0F940 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_280D0F948;

  sub_21DBF8E0C();
  return result;
}

uint64_t TTRReminderCellInlineHashtagVisibility.unhiding(objectIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (v4)
  {
    if (*(a1 + 16) <= *(v4 + 16) >> 3)
    {
      sub_21DBF8E0C();
      sub_21D9F86E8(a1);
      result = v4;
    }

    else
    {
      sub_21DBF8E0C();
      result = sub_21D9F8D40(a1, v4);
    }
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

RemindersUICore::TTRReminderCellTextHighlights::Highlight __swiftcall TTRReminderCellTextHighlights.Highlight.init(range:type:)(__C::_NSRange range, RemindersUICore::TTRReminderCellTextHighlights::HighlightType type)
{
  v3 = *type;
  *v2 = range;
  *(v2 + 16) = v3;
  result.range = range;
  result.type = type;
  return result;
}

uint64_t TTRReminderCellTextReplacement.resultantRangeOfReplacementText.getter()
{
  v1 = *v0;
  MEMORY[0x223D42B30](v0[2], v0[3]);
  return v1;
}

__n128 TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange.init(paragraphStyleWithOrderInfo:range:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u8[0];
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u8[0] = v4;
  a4[1].n128_u64[1] = a2;
  a4[2].n128_u64[0] = a3;
  return result;
}

Swift::Void __swiftcall NSMutableAttributedString.addParagraphStyles(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    [v1 beginEditing];
    sub_21D9F82C4(v1, a1._rawValue);

    [v1 endEditing];
  }
}

Swift::Void __swiftcall NSMutableAttributedString.addHashtags(_:removingUncommittedAttributes:)(Swift::OpaquePointer _, Swift::Bool removingUncommittedAttributes)
{
  if (*(_._rawValue + 2))
  {
    [v2 beginEditing];
    sub_21D9F80F0(v2, _._rawValue, removingUncommittedAttributes);

    [v2 endEditing];
  }
}

uint64_t static TTRReminderCellInlineHashtagVisibility.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_21DBF8E0C();
      v3 = sub_21DBF8E0C();
      v4 = sub_21D3220EC(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

void TTRReminderCellTextHighlights.rebased(forCurrentText:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A38, &qword_21DC35B60);
  MEMORY[0x28223BE20](v7);
  v9 = v61 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A40, &qword_21DC35B68);
  v10 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = v61 - v11;
  v12 = v3[2];
  if (!*(v12 + 16) || (v14 = *v3, v13 = v3[1], v14 == a1) && v13 == a2 || (sub_21DBFC64C() & 1) != 0)
  {
    *a3 = a1;
    a3[1] = a2;
    a3[2] = v12;
    sub_21DBF8E0C();
LABEL_6:
    sub_21DBF8E0C();
    return;
  }

  v62 = a3;
  v69[0] = a1;
  v69[1] = a2;
  v69[5] = v14;
  v69[6] = v13;
  sub_21D9FD848();
  sub_21DBF8E0C();
  v61[1] = v13;
  sub_21DBF8E0C();
  sub_21DBFA06C();
  v15 = *(v12 + 16);
  v63 = v10;
  v64 = a1;
  if (v15)
  {
    v16 = sub_21D9D63C8(v15, 0);
    v17 = sub_21D9D4E8C(v69, (v16 + 4), v15, v12);
    v18 = v69[0];
    v65 = v69[4];
    v66 = v69[3];
    sub_21DBF8E0C();
    sub_21D0CFAF8(v18);
    if (v17 != v15)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v19 = v68;
  v20 = sub_21D7F5CEC(v16);

  (*(v63 + 16))(v9, v67, v19);
  v21 = *(v7 + 36);
  sub_21D0D0F1C(&qword_280D0C160, &qword_27CE64A40, &qword_21DC35B68, MEMORY[0x277D84490]);
  sub_21DBFAC3C();
  sub_21DBFACAC();
  if (*&v9[v21] == v69[0])
  {
    v22 = v20;
LABEL_52:
    sub_21D0CF7E0(v9, &qword_27CE64A38, &qword_21DC35B60);
    v46 = a2;
    v47 = sub_21DBFA12C();
    v48 = *(v22 + 2);
    if (v48)
    {
      sub_21DBF8E0C();
      v49 = 0;
      v50 = 0;
      v51 = v22;
      do
      {
        v53 = &v22[v49];
        if (v22[v49 + 48] != 2)
        {
          v55 = *(v53 + 4);
          v54 = *(v53 + 5);
          if ([v47 rangeOfComposedCharacterSequencesForRange_] != v55 || v56 != v54)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v51 = sub_21D256B64(v51);
            }

            if (v50 >= *(v51 + 2))
            {
              __break(1u);
              goto LABEL_68;
            }

            v52 = &v51[v49];
            *(v52 + 4) = 0;
            *(v52 + 5) = 0;
            v52[48] = 2;
          }
        }

        ++v50;
        v49 += 24;
      }

      while (v48 != v50);
    }

    else
    {
      v51 = v22;
    }

    v69[0] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A48, &unk_21DC35B70);
    sub_21D0D0F1C(&qword_280D0C3E0, &qword_27CE64A48, &unk_21DC35B70, MEMORY[0x277D83970]);
    v58 = sub_21DBFA41C();

    v59 = sub_21D19F0A4(v58);

    (*(v63 + 8))(v67, v68);
    v60 = v62;
    *v62 = v64;
    v60[1] = v46;
    v60[2] = v59;
    goto LABEL_6;
  }

  v61[0] = a2;
LABEL_14:
  v65 = v20;
  while (1)
  {
    v23 = sub_21DBFAD3C();
    v25 = *v24;
    v26 = *(v24 + 25);
    v23(v69, 0);
    sub_21DBFACBC();
    v27 = *(v20 + 16);
    if ((v26 & 1) == 0)
    {
      break;
    }

    if (v27)
    {
      v66 = v25;
      sub_21DBF8E0C();
      v28 = 0;
      v29 = 32;
      v22 = v20;
      while (1)
      {
        v31 = (v20 + v29);
        v32 = *(v20 + v29 + 16);
        if (v32 == 2)
        {
          goto LABEL_22;
        }

        v34 = *v31;
        v33 = v31[1];
        if (v66 < *v31)
        {
          break;
        }

        if (v66 >= v33 + v34)
        {
          goto LABEL_21;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = sub_21D256B64(v22);
        }

        if (v28 >= *(v22 + 2))
        {
          goto LABEL_71;
        }

        v36 = &v22[v29];
        *v36 = 0;
        *(v36 + 1) = 0;
        v36[16] = 2;
LABEL_22:
        ++v28;
        v29 += 24;
        if (v27 == v28)
        {
          goto LABEL_49;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_21D256B64(v22);
      }

      if (v28 >= *(v22 + 2))
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v30 = &v22[v29];
      *v30 = v34 - 1;
      *(v30 + 1) = v33;
      v30[16] = v32 & 1;
LABEL_21:
      v20 = v65;
      goto LABEL_22;
    }

LABEL_16:
    sub_21DBFACAC();
    if (*&v9[v21] == v69[0])
    {
      v22 = v20;
      a2 = v61[0];
      goto LABEL_52;
    }
  }

  if (!v27)
  {
    goto LABEL_16;
  }

  v66 = v25;
  sub_21DBF8E0C();
  v37 = 0;
  v38 = 48;
  v22 = v20;
  while (1)
  {
    v40 = v20 + v38;
    v41 = *(v20 + v38);
    if (v41 == 2)
    {
      goto LABEL_36;
    }

    v42 = *(v40 - 16);
    v43 = *(v40 - 8);
    if (v42 < v66)
    {
      if (v66 < v43 + v42)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_21D256B64(v22);
        }

        if (v37 >= *(v22 + 2))
        {
          goto LABEL_72;
        }

        v44 = &v22[v38];
        *(v44 - 2) = 0;
        *(v44 - 1) = 0;
        *v44 = 2;
      }

      goto LABEL_36;
    }

    v45 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_69;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_21D256B64(v22);
    }

    if (v37 >= *(v22 + 2))
    {
      break;
    }

    v39 = &v22[v38];
    *(v39 - 2) = v45;
    *(v39 - 1) = v43;
    *v39 = v41 & 1;
    v20 = v65;
LABEL_36:
    ++v37;
    v38 += 24;
    if (v27 == v37)
    {
LABEL_49:

      sub_21DBFACAC();
      v20 = v22;
      a2 = v61[0];
      if (*&v9[v21] == v69[0])
      {
        goto LABEL_52;
      }

      goto LABEL_14;
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

uint64_t sub_21D9F75F0()
{
  result = sub_21DBFA12C();
  qword_280D177C0 = result;
  return result;
}

id static NSAttributedStringKey.ttr_uncommittedHashtag.getter()
{
  if (qword_280D177B8 != -1)
  {
    swift_once();
  }

  v1 = qword_280D177C0;

  return v1;
}

void static TTRReminderCellStyleAttributeUpdate.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    sub_21D37135C(a1[2], a2[2]);
  }
}

void sub_21D9F76B4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    sub_21D37135C(a1[2], a2[2]);
  }
}

unint64_t TTRReminderCellStyleAttributeUpdate.description.getter()
{
  sub_21DBFBEEC();

  v0 = sub_21DBFB9BC();
  MEMORY[0x223D42AA0](v0);

  MEMORY[0x223D42AA0](0x203A68746977202CLL, 0xE800000000000000);
  type metadata accessor for Key(0);
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  sub_21D9FE5DC(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
  v1 = sub_21DBF9E7C();
  MEMORY[0x223D42AA0](v1);

  MEMORY[0x223D42AA0](125, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

uint64_t TTRReminderCellTextReplacement.rangeToChange.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t TTRReminderCellTextReplacement.replacementText.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

void TTRReminderCellTextReplacement.replacementText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t static TTRReminderCellTextReplacement.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_21DBFC64C();
  }
}

uint64_t sub_21D9F7924(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_21DBFC64C();
  }
}