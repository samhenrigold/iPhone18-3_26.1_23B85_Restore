uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 32);
  sub_213D91C7C();
  v2 = (sub_213D9162C() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  v4 = v2[10];
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v0 + v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v0 + v3 + v4, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_213D20FF4(char *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  sub_213D91C7C();
  v5 = *(sub_213D9162C() - 8);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_213D209DC(a1, v6, v7, v8, v3, v4);
}

uint64_t Map.init<A, B>(bounds:interactionModes:selection:scope:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v63 = a7;
  v64 = a6;
  v66 = a5;
  v67 = a4;
  v71 = a3;
  v61 = a1;
  v65 = a9;
  v72 = a11;
  v70 = a10;
  v73 = a12;
  MEMORY[0x28223BE20](a1);
  v62 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75[0] = v15;
  v75[1] = MEMORY[0x277D84A98];
  v69 = v15;
  v75[2] = v16;
  v75[3] = &protocol witness table for Never;
  v60 = type metadata accessor for MapSelectionManagerBox(255, v75);
  v17 = sub_213D9162C();
  v58 = v17;
  v18 = sub_213D91C7C();
  MEMORY[0x28223BE20](v18 - 8);
  v59 = &v50 - v19;
  sub_213D91C7C();
  v68 = sub_213D9162C();
  v20 = *(v68 - 8);
  v52 = *(v20 + 64);
  MEMORY[0x28223BE20](v68);
  v22 = &v50 - v21;
  v57 = *(v17 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v54 = &v50 - v25;
  v55 = *a2;
  v53 = *(v20 + 16);
  v53(v22, a3, v24);
  sub_213D91AFC();
  v26 = sub_213D91AEC();
  v27 = *(v20 + 80);
  v56 = v20;
  v28 = (v27 + 64) & ~v27;
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  *(v29 + 2) = v26;
  *(v29 + 3) = v30;
  v32 = v69;
  v31 = v70;
  *(v29 + 4) = v69;
  *(v29 + 5) = v31;
  v33 = v73;
  *(v29 + 6) = v72;
  *(v29 + 7) = v33;
  v34 = *(v20 + 32);
  v51 = v22;
  v35 = v68;
  v34(&v29[v28], v22, v68);
  (v53)(v22, v71, v35);
  v36 = sub_213D91AEC();
  v37 = swift_allocObject();
  *(v37 + 2) = v36;
  *(v37 + 3) = MEMORY[0x277D85700];
  *(v37 + 4) = v32;
  v38 = v70;
  v40 = v72;
  v39 = v73;
  *(v37 + 5) = v70;
  *(v37 + 6) = v40;
  *(v37 + 7) = v39;
  v34(&v37[v28], v51, v35);
  v41 = v54;
  sub_213D9161C();
  v76 = 0xA000000000000000;
  v42 = v61;
  sub_213D1FCD8(v61, v75);
  v74 = v55;
  v43 = v57;
  v44 = v59;
  v45 = v58;
  (*(v57 + 16))(v59, v41, v58);
  v46 = (*(v43 + 56))(v44, 0, 1, v45);
  v47 = v62;
  v64(v46);
  *&v49 = v38;
  *(&v49 + 1) = v40;
  sub_213D2E864(&v76, v75, &v74, v44, v67, v66 & 1, v47, v69, v65, v49, v39);
  (*(v56 + 8))(v71, v68);
  sub_213D1FD48(v42);
  return (*(v43 + 8))(v41, v45);
}

{
  v64 = a7;
  v65 = a6;
  v67 = a5;
  v68 = a4;
  v72 = a3;
  v62 = a1;
  v66 = a9;
  v71 = a10;
  v74 = a12;
  MEMORY[0x28223BE20](a1);
  v63 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v15;
  v16 = *(v15 + 8);
  v76[0] = v17;
  v76[1] = v17;
  v70 = v17;
  v76[2] = v16;
  v76[3] = v15;
  v61 = type metadata accessor for MapSelectionManagerBox(255, v76);
  v18 = sub_213D9162C();
  v59 = v18;
  v19 = sub_213D91C7C();
  MEMORY[0x28223BE20](v19 - 8);
  v60 = &v51 - v20;
  sub_213D91C7C();
  v69 = sub_213D9162C();
  v21 = *(v69 - 8);
  v53 = *(v21 + 64);
  MEMORY[0x28223BE20](v69);
  v23 = &v51 - v22;
  v58 = *(v18 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v55 = &v51 - v26;
  v56 = *a2;
  v54 = *(v21 + 16);
  v54(v23, a3, v25);
  sub_213D91AFC();
  v27 = sub_213D91AEC();
  v28 = *(v21 + 80);
  v57 = v21;
  v29 = (v28 + 64) & ~v28;
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  *(v30 + 2) = v27;
  *(v30 + 3) = v31;
  v33 = v70;
  v32 = v71;
  *(v30 + 4) = v70;
  *(v30 + 5) = v32;
  v34 = v74;
  *(v30 + 6) = v73;
  *(v30 + 7) = v34;
  v35 = *(v21 + 32);
  v52 = v23;
  v36 = v69;
  v35(&v30[v29], v23, v69);
  (v54)(v23, v72, v36);
  v37 = sub_213D91AEC();
  v38 = swift_allocObject();
  *(v38 + 2) = v37;
  *(v38 + 3) = MEMORY[0x277D85700];
  *(v38 + 4) = v33;
  v39 = v71;
  v41 = v73;
  v40 = v74;
  *(v38 + 5) = v71;
  *(v38 + 6) = v41;
  *(v38 + 7) = v40;
  v35(&v38[v29], v52, v36);
  v42 = v55;
  sub_213D9161C();
  v77 = 0xA000000000000000;
  v43 = v62;
  sub_213D1FCD8(v62, v76);
  v75 = v56;
  v44 = v58;
  v45 = v60;
  v46 = v59;
  (*(v58 + 16))(v60, v42, v59);
  v47 = (*(v44 + 56))(v45, 0, 1, v46);
  v48 = v63;
  v65(v47);
  *&v50 = v39;
  *(&v50 + 1) = v41;
  sub_213D2ECA0(&v77, v76, &v75, v45, v68, v67 & 1, v48, v70, v66, v50, v40);
  (*(v57 + 8))(v72, v69);
  sub_213D1FD48(v43);
  return (*(v44 + 8))(v42, v46);
}

uint64_t Map.init<A, B>(initialPosition:bounds:interactionModes:selection:scope:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v63 = a8;
  v64 = a7;
  v66 = a6;
  v67 = a5;
  v72 = a4;
  v61 = a2;
  v65 = a9;
  v71 = a11;
  v69 = a12;
  v70 = a13;
  MEMORY[0x28223BE20](a1);
  v62 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74[0] = a10;
  v74[1] = MEMORY[0x277D84A98];
  v74[2] = v17;
  v74[3] = &protocol witness table for Never;
  v60 = type metadata accessor for MapSelectionManagerBox(255, v74);
  v18 = sub_213D9162C();
  v58 = v18;
  v19 = sub_213D91C7C();
  MEMORY[0x28223BE20](v19 - 8);
  v59 = v50 - v20;
  sub_213D91C7C();
  v68 = sub_213D9162C();
  v21 = *(v68 - 8);
  v50[1] = *(v21 + 64);
  MEMORY[0x28223BE20](v68);
  v23 = v50 - v22;
  v57 = *(v18 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v53 = v50 - v26;
  v54 = *a1;
  v55 = *a3;
  v51 = *(v21 + 16);
  v51(v23, a4, v25);
  sub_213D91AFC();
  v27 = sub_213D91AEC();
  v28 = *(v21 + 80);
  v56 = v21;
  v29 = (v28 + 64) & ~v28;
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  *(v30 + 2) = v27;
  *(v30 + 3) = v31;
  v52 = a10;
  v32 = v71;
  *(v30 + 4) = a10;
  *(v30 + 5) = v32;
  v33 = v70;
  *(v30 + 6) = v69;
  *(v30 + 7) = v33;
  v34 = *(v21 + 32);
  v50[0] = v23;
  v35 = v68;
  v34(&v30[v29], v23, v68);
  (v51)(v23, v72, v35);
  v36 = sub_213D91AEC();
  v37 = swift_allocObject();
  *(v37 + 2) = v36;
  *(v37 + 3) = MEMORY[0x277D85700];
  *(v37 + 4) = a10;
  v39 = v70;
  v38 = v71;
  v40 = v69;
  *(v37 + 5) = v71;
  *(v37 + 6) = v40;
  *(v37 + 7) = v39;
  v34(&v37[v29], v50[0], v35);
  v41 = v53;
  sub_213D9161C();
  v75 = v54;
  v42 = v61;
  sub_213D1FCD8(v61, v74);
  v73 = v55;
  v43 = v57;
  v44 = v59;
  v45 = v58;
  (*(v57 + 16))(v59, v41, v58);
  v46 = (*(v43 + 56))(v44, 0, 1, v45);
  v47 = v62;
  v64(v46);
  *&v49 = v38;
  *(&v49 + 1) = v40;
  sub_213D2E864(&v75, v74, &v73, v44, v67, v66 & 1, v47, v52, v65, v49, v39);
  (*(v56 + 8))(v72, v68);
  sub_213D1FD48(v42);
  return (*(v43 + 8))(v41, v45);
}

{
  v65 = a8;
  v66 = a7;
  v68 = a6;
  v69 = a5;
  v74 = a4;
  v63 = a2;
  v67 = a9;
  v52 = a11;
  v73 = a13;
  MEMORY[0x28223BE20](a1);
  v64 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v17;
  v18 = *(v17 + 8);
  v76[0] = a10;
  v76[1] = a10;
  v76[2] = v18;
  v76[3] = v17;
  v62 = type metadata accessor for MapSelectionManagerBox(255, v76);
  v19 = sub_213D9162C();
  v60 = v19;
  v20 = sub_213D91C7C();
  MEMORY[0x28223BE20](v20 - 8);
  v61 = &v51 - v21;
  v71 = a10;
  sub_213D91C7C();
  v70 = sub_213D9162C();
  v22 = *(v70 - 8);
  v53 = *(v22 + 64);
  MEMORY[0x28223BE20](v70);
  v24 = &v51 - v23;
  v59 = *(v19 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v55 = &v51 - v27;
  v56 = *a1;
  v57 = *a3;
  v54 = *(v22 + 16);
  v54(v24, a4, v26);
  sub_213D91AFC();
  v28 = sub_213D91AEC();
  v29 = *(v22 + 80);
  v58 = v22;
  v30 = (v29 + 64) & ~v29;
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  *(v31 + 2) = v28;
  *(v31 + 3) = v32;
  *(v31 + 4) = a10;
  *(v31 + 5) = a11;
  v34 = v72;
  v33 = v73;
  *(v31 + 6) = v72;
  *(v31 + 7) = v33;
  v35 = *(v22 + 32);
  v51 = v24;
  v36 = v70;
  v35(&v31[v30], v24, v70);
  (v54)(v24, v74, v36);
  v37 = sub_213D91AEC();
  v38 = swift_allocObject();
  *(v38 + 2) = v37;
  v39 = v71;
  *(v38 + 3) = MEMORY[0x277D85700];
  *(v38 + 4) = v39;
  v40 = v52;
  *(v38 + 5) = v52;
  *(v38 + 6) = v34;
  v41 = v73;
  *(v38 + 7) = v73;
  v35(&v38[v30], v51, v36);
  v42 = v55;
  sub_213D9161C();
  v77 = v56;
  v43 = v63;
  sub_213D1FCD8(v63, v76);
  v75 = v57;
  v44 = v59;
  v45 = v61;
  v46 = v60;
  (*(v59 + 16))(v61, v42, v60);
  v47 = (*(v44 + 56))(v45, 0, 1, v46);
  v48 = v64;
  v66(v47);
  *&v50 = v40;
  *(&v50 + 1) = v72;
  sub_213D2ECA0(&v77, v76, &v75, v45, v69, v68 & 1, v48, v71, v67, v50, v41);
  (*(v58 + 8))(v74, v70);
  sub_213D1FD48(v43);
  return (*(v44 + 8))(v42, v46);
}

uint64_t sub_213D21AD8(uint64_t (*a1)(void, void, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v5 = *(v1 + 6);
  v6 = *(v1 + 7);
  sub_213D91C7C();
  v7 = *(sub_213D9162C() - 8);
  return a1(*(v1 + 2), *(v1 + 3), &v1[(*(v7 + 80) + 64) & ~*(v7 + 80)], v3, v4, v5, v6);
}

uint64_t sub_213D21BA0(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 4);
  v6 = *(v2 + 5);
  v7 = *(v2 + 6);
  v8 = *(v2 + 7);
  sub_213D91C7C();
  v9 = *(sub_213D9162C() - 8);
  return a2(a1, *(v2 + 2), *(v2 + 3), &v2[(*(v9 + 80) + 64) & ~*(v9 + 80)], v5, v6, v7, v8);
}

uint64_t Map.init<A, B>(position:bounds:interactionModes:selection:scope:content:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v62 = a8;
  v63 = a7;
  v65 = a6;
  v66 = a5;
  v72 = a4;
  v60 = a2;
  v64 = a9;
  v70 = a12;
  v71 = a13;
  MEMORY[0x28223BE20](a1);
  v61 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74[0] = a10;
  v74[1] = MEMORY[0x277D84A98];
  v74[2] = v16;
  v74[3] = &protocol witness table for Never;
  v59 = type metadata accessor for MapSelectionManagerBox(255, v74);
  v17 = sub_213D9162C();
  v57 = v17;
  v18 = sub_213D91C7C();
  MEMORY[0x28223BE20](v18 - 8);
  v58 = &v49 - v19;
  v69 = a10;
  sub_213D91C7C();
  v68 = sub_213D9162C();
  v20 = *(v68 - 8);
  v49 = *(v20 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v49 - v21;
  v56 = *(v17 - 8);
  MEMORY[0x28223BE20](&v49 - v21);
  v51 = &v49 - v22;
  v53 = *a1;
  v52 = *(a1 + 2);
  v54 = *a3;
  v50 = *(v20 + 16);
  v50();
  sub_213D91AFC();
  v23 = sub_213D91AEC();
  v24 = *(v20 + 80);
  v55 = v20;
  v25 = (v24 + 64) & ~v24;
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 2) = v23;
  *(v26 + 3) = v27;
  *(v26 + 4) = a10;
  *(v26 + 5) = a11;
  v28 = v71;
  *(v26 + 6) = v70;
  *(v26 + 7) = v28;
  v29 = *(v20 + 32);
  v31 = v67;
  v30 = v68;
  v29(&v26[v25], v67, v68);
  v32 = v31;
  v33 = v30;
  (v50)(v32, v72, v30);
  v34 = sub_213D91AEC();
  v35 = swift_allocObject();
  *(v35 + 2) = v34;
  v36 = v69;
  *(v35 + 3) = MEMORY[0x277D85700];
  *(v35 + 4) = v36;
  *(v35 + 5) = a11;
  v38 = v70;
  v37 = v71;
  *(v35 + 6) = v70;
  *(v35 + 7) = v37;
  v29(&v35[v25], v67, v33);
  v39 = v51;
  sub_213D9161C();
  v75 = v53;
  v76 = v52;
  v40 = v60;
  sub_213D1FCD8(v60, v74);
  v73 = v54;
  v41 = v56;
  v42 = v58;
  v43 = v39;
  v44 = v57;
  (*(v56 + 16))(v58, v39, v57);
  v45 = v42;
  v46 = (*(v41 + 56))(v42, 0, 1, v44);
  v47 = v61;
  v63(v46);
  sub_213D2EA78(&v75, v74, &v73, v45, v66, v65 & 1, v47, v69, v64, a11, v38, v37);
  (*(v55 + 8))(v72, v68);
  sub_213D1FD48(v40);
  return (*(v41 + 8))(v43, v44);
}

{
  v62 = a8;
  v63 = a7;
  v65 = a6;
  v66 = a5;
  v71 = a4;
  v60 = a2;
  v64 = a9;
  v70 = a11;
  v48[0] = a13;
  MEMORY[0x28223BE20](a1);
  v61 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v16;
  v17 = *(v16 + 8);
  v73[0] = a10;
  v73[1] = a10;
  v73[2] = v17;
  v73[3] = v16;
  v59 = type metadata accessor for MapSelectionManagerBox(255, v73);
  v18 = sub_213D9162C();
  v57 = v18;
  v19 = sub_213D91C7C();
  MEMORY[0x28223BE20](v19 - 8);
  v58 = v48 - v20;
  v68 = a10;
  sub_213D91C7C();
  v67 = sub_213D9162C();
  v21 = *(v67 - 8);
  v48[1] = *(v21 + 64);
  MEMORY[0x28223BE20](v67);
  v49 = v48 - v22;
  v56 = *(v18 - 8);
  MEMORY[0x28223BE20](v48 - v22);
  v51 = v48 - v23;
  v53 = *a1;
  v52 = *(a1 + 2);
  v54 = *a3;
  v50 = *(v21 + 16);
  v50();
  sub_213D91AFC();
  v24 = sub_213D91AEC();
  v25 = *(v21 + 80);
  v55 = v21;
  v26 = (v25 + 64) & ~v25;
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 2) = v24;
  *(v27 + 3) = v28;
  v29 = v70;
  *(v27 + 4) = a10;
  *(v27 + 5) = v29;
  v30 = v69;
  *(v27 + 6) = v69;
  *(v27 + 7) = a13;
  v31 = *(v21 + 32);
  v32 = v49;
  v33 = v67;
  v31(&v27[v26], v49, v67);
  (v50)(v32, v71, v33);
  v34 = sub_213D91AEC();
  v35 = swift_allocObject();
  *(v35 + 2) = v34;
  v36 = v68;
  *(v35 + 3) = MEMORY[0x277D85700];
  *(v35 + 4) = v36;
  v37 = v70;
  *(v35 + 5) = v70;
  *(v35 + 6) = v30;
  v38 = v48[0];
  *(v35 + 7) = v48[0];
  v31(&v35[v26], v32, v33);
  v39 = v51;
  sub_213D9161C();
  v74 = v53;
  v75 = v52;
  v40 = v60;
  sub_213D1FCD8(v60, v73);
  v72 = v54;
  v41 = v56;
  v42 = v58;
  v43 = v57;
  (*(v56 + 16))(v58, v39, v57);
  v44 = v42;
  v45 = (*(v41 + 56))(v42, 0, 1, v43);
  v46 = v61;
  v63(v45);
  sub_213D2EEA8(&v74, v73, &v72, v44, v66, v65 & 1, v46, v68, v64, v37, v69, v38);
  (*(v55 + 8))(v71, v67);
  sub_213D1FD48(v40);
  return (*(v41 + 8))(v39, v43);
}

uint64_t sub_213D221A0@<X0>(uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v10 = sub_213D91C7C();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  v13 = sub_213D9162C();
  MEMORY[0x21604E7B0](v13);
  return sub_213D7B398(v12, a4, MEMORY[0x277D84A98], a6, &protocol witness table for Never, x8_0);
}

uint64_t sub_213D22260(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a1;
  v48 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v38[0] = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = v38 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x28223BE20](v16);
  v43 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v47 = v38 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v38 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v38 - v24;
  v49[0] = a5;
  v49[1] = MEMORY[0x277D84A98];
  v38[1] = a7;
  v49[2] = a7;
  v49[3] = &protocol witness table for Never;
  v26 = type metadata accessor for MapSelectionManagerBox(0, v49);
  sub_213D7B444(v26, v25);
  v42 = sub_213D9162C();
  v45 = a4;
  MEMORY[0x21604E7B0]();
  v40 = TupleTypeMetadata2;
  v27 = *(TupleTypeMetadata2 + 48);
  v44 = v15;
  v28 = *(v15 + 16);
  v46 = v25;
  v28(v14, v25, v11);
  v28(&v14[v27], v22, v11);
  v29 = *(v48 + 48);
  v30 = v29(v14, 1, a5);
  v41 = v28;
  if (v30 != 1)
  {
    v28(v47, v14, v11);
    if (v29(&v14[v27], 1, a5) != 1)
    {
      v34 = v48;
      v35 = v38[0];
      (*(v48 + 32))(v38[0], &v14[v27], a5);
      v36 = sub_213D918DC();
      v37 = *(v34 + 8);
      v37(v35, a5);
      v31 = *(v15 + 8);
      v31(v22, v11);
      v37(v47, a5);
      v31(v14, v11);
      if (v36)
      {
        return (v31)(v46, v11);
      }

LABEL_7:
      v32 = v46;
      v41(v43, v46, v11);
      sub_213D915FC();
      return (v31)(v32, v11);
    }

    v31 = *(v15 + 8);
    v31(v22, v11);
    (*(v48 + 8))(v47, a5);
LABEL_6:
    (*(v39 + 8))(v14, v40);
    goto LABEL_7;
  }

  v31 = *(v15 + 8);
  v31(v22, v11);
  if (v29(&v14[v27], 1, a5) != 1)
  {
    goto LABEL_6;
  }

  v31(v14, v11);
  return (v31)(v46, v11);
}

__n128 Map.init<>(bounds:interactionModes:selection:scope:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  sub_213D91AFC();
  v12 = v11;

  v13 = sub_213D91AEC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v9;
  v14[5] = v10;
  v14[6] = v11;
  v16 = sub_213D91AEC();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v15;
  v17[4] = v9;
  v17[5] = v10;
  v17[6] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB350, &qword_213D974D8);
  sub_213D9161C();
  v20 = v25;
  v18 = v26;
  LOBYTE(v10) = v27;
  sub_213D1FCD8(a1, &v25);
  sub_213D9156C();
  sub_213D1FD48(a1);
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 32) = 0;
  *(a6 + 56) = 1;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *(a6 + 120) = 0;
  *(a6 + 128) = 0;
  *(a6 + 112) = 0;
  *(a6 + 136) = 0;
  sub_213D1FDB0(v23, v24, 0, 0);
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *a6 = 0xA000000000000000;
  *(a6 + 24) = 0;
  sub_213D1FE30(&v25, a6 + 32);
  *(a6 + 104) = v8;
  sub_213D22948(*(a6 + 112), *(a6 + 120), *(a6 + 128), *(a6 + 136), sub_213D229BC);
  result = v20;
  *(a6 + 112) = v20;
  *(a6 + 128) = v18;
  *(a6 + 136) = v10;
  *(a6 + 144) = a4;
  *(a6 + 152) = a5 & 1;
  return result;
}

void sub_213D22948(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (a2)
  {

    a5(a3, a4);
  }
}

void sub_213D229BC(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t Map.init<A>(bounds:interactionModes:selection:scope:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, _UNKNOWN **a8)
{
  v35 = a5;
  v36 = a4;
  v39 = a3;
  v40 = a2;
  v34 = a1;
  v38 = a7;
  v37 = a8;
  MEMORY[0x28223BE20](a1);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  sub_213D91AFC();
  v17 = v16;

  v18 = sub_213D91AEC();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v14;
  v19[5] = v15;
  v19[6] = v16;
  v21 = sub_213D91AEC();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v22[4] = v14;
  v22[5] = v15;
  v22[6] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB350, &qword_213D974D8);
  sub_213D9161C();
  v23 = v44[0];
  v24 = v44[1];
  v25 = v44[2];
  LOBYTE(v14) = v45;
  v46 = 0xA000000000000000;
  v26 = v34;
  sub_213D1FCD8(v34, v44);
  v43 = v12;
  v41[0] = v23;
  v41[1] = v24;
  v41[2] = v25;
  v42 = v14;

  v27 = sub_213D22C48(v25, v14);
  v28 = v36(v27);
  *(&v32 + 1) = sub_213D22C5C(v28, v29, v30);
  *&v32 = a6;
  sub_213D2E864(&v46, v44, &v43, v41, v40, v39 & 1, v10, &type metadata for MapFeature, v38, v32, v37);

  sub_213D229BC(v25, v14);
  return sub_213D1FD48(v26);
}

id sub_213D22C48(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

unint64_t sub_213D22C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EB358[0];
  if (!qword_27C8EB358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8EB358);
  }

  return result;
}

__n128 Map.init<>(initialPosition:bounds:interactionModes:selection:scope:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v9 = *a1;
  v22 = *a3;
  v10 = *a4;
  v11 = a4[1];
  v12 = a4[2];
  sub_213D91AFC();
  v13 = v12;

  v14 = sub_213D91AEC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v10;
  v15[5] = v11;
  v15[6] = v12;
  v17 = sub_213D91AEC();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v16;
  v18[4] = v10;
  v18[5] = v11;
  v18[6] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB350, &qword_213D974D8);
  sub_213D9161C();
  v21 = v27;
  v19 = v28;
  LOBYTE(v11) = v29;
  sub_213D1FCD8(a2, &v27);
  sub_213D9156C();
  sub_213D1FD48(a2);
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 32) = 0;
  *(a7 + 56) = 1;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0;
  *(a7 + 120) = 0;
  *(a7 + 128) = 0;
  *(a7 + 112) = 0;
  *(a7 + 136) = 0;
  sub_213D1FDB0(v25, v26, 0, 0);
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *a7 = v9;
  *(a7 + 24) = 0;
  sub_213D1FE30(&v27, a7 + 32);
  *(a7 + 104) = v22;
  sub_213D22948(*(a7 + 112), *(a7 + 120), *(a7 + 128), *(a7 + 136), sub_213D229BC);
  result = v21;
  *(a7 + 112) = v21;
  *(a7 + 128) = v19;
  *(a7 + 136) = v11;
  *(a7 + 144) = a5;
  *(a7 + 152) = a6 & 1;
  return result;
}

uint64_t Map.init<A>(initialPosition:bounds:interactionModes:selection:scope:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, int a4@<W5>, uint64_t (*a5)(id)@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, _UNKNOWN **a9)
{
  v38 = a6;
  v39 = a5;
  v41 = a4;
  v42 = a3;
  v36 = a2;
  v40 = a7;
  v37 = a9;
  MEMORY[0x28223BE20](a1);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  v35 = *v13;
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  sub_213D91AFC();
  v18 = v17;

  v19 = sub_213D91AEC();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v15;
  v20[5] = v16;
  v20[6] = v17;
  v22 = sub_213D91AEC();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v21;
  v23[4] = v15;
  v23[5] = v16;
  v23[6] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB350, &qword_213D974D8);
  sub_213D9161C();
  v24 = v46[0];
  v25 = v46[1];
  v26 = v46[2];
  v27 = v47;
  v48 = v12;
  v28 = v36;
  sub_213D1FCD8(v36, v46);
  v45 = v35;
  v43[0] = v24;
  v43[1] = v25;
  v43[2] = v26;
  v44 = v27;

  v29 = sub_213D22C48(v26, v27);
  v30 = v39(v29);
  *(&v34 + 1) = sub_213D22C5C(v30, v31, v32);
  *&v34 = a8;
  sub_213D2E864(&v48, v46, &v45, v43, v42, v41 & 1, v10, &type metadata for MapFeature, v40, v34, v37);

  sub_213D229BC(v26, v27);
  return sub_213D1FD48(v28);
}

__n128 Map.init<>(position:bounds:interactionModes:selection:scope:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v22 = *a1;
  v9 = *(a1 + 2);
  v23 = *a3;
  v10 = *a4;
  v11 = a4[1];
  v12 = a4[2];
  sub_213D91AFC();
  v13 = v12;

  v14 = sub_213D91AEC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v10;
  v15[5] = v11;
  v15[6] = v12;
  v17 = sub_213D91AEC();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v16;
  v18[4] = v10;
  v18[5] = v11;
  v18[6] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB350, &qword_213D974D8);
  sub_213D9161C();
  v21 = v28;
  v19 = v29;
  LOBYTE(v11) = v30;
  sub_213D1FCD8(a2, &v28);
  sub_213D9156C();
  sub_213D1FD48(a2);
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 32) = 0;
  *(a7 + 56) = 1;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0;
  *(a7 + 120) = 0;
  *(a7 + 128) = 0;
  *(a7 + 112) = 0;
  *(a7 + 136) = 0;
  sub_213D1FDB0(v26, v27, 0, 0);
  *a7 = v22;
  *(a7 + 16) = v9;
  *(a7 + 24) = 1;
  sub_213D1FE30(&v28, a7 + 32);
  *(a7 + 104) = v23;
  sub_213D22948(*(a7 + 112), *(a7 + 120), *(a7 + 128), *(a7 + 136), sub_213D229BC);
  result = v21;
  *(a7 + 112) = v21;
  *(a7 + 128) = v19;
  *(a7 + 136) = v11;
  *(a7 + 144) = a5;
  *(a7 + 152) = a6 & 1;
  return result;
}

uint64_t Map.init<A>(position:bounds:interactionModes:selection:scope:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, int a4@<W5>, uint64_t (*a5)(id)@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, _UNKNOWN **a9)
{
  v39 = a6;
  v40 = a5;
  v42 = a4;
  v43 = a3;
  v37 = a2;
  v41 = a7;
  v38 = a9;
  MEMORY[0x28223BE20](a1);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v11;
  v12 = *(v11 + 2);
  v36 = *v13;
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  sub_213D91AFC();
  v18 = v17;

  v19 = sub_213D91AEC();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v15;
  v20[5] = v16;
  v20[6] = v17;
  v22 = sub_213D91AEC();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v21;
  v23[4] = v15;
  v23[5] = v16;
  v23[6] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB350, &qword_213D974D8);
  sub_213D9161C();
  v24 = v47[0];
  v25 = v47[1];
  v26 = v47[2];
  v27 = v48;
  v49 = v35;
  v50 = v12;
  v28 = v37;
  sub_213D1FCD8(v37, v47);
  v46 = v36;
  v44[0] = v24;
  v44[1] = v25;
  v44[2] = v26;
  v45 = v27;

  v29 = sub_213D22C48(v26, v27);
  v30 = v40(v29);
  v33 = sub_213D22C5C(v30, v31, v32);
  sub_213D2EA78(&v49, v47, &v46, v44, v43, v42 & 1, v10, &type metadata for MapFeature, v41, a8, v33, v38);

  sub_213D229BC(v26, v27);
  return sub_213D1FD48(v28);
}

void *sub_213D235E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7 = *(v1 + 32);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB3E0, &qword_213D97548);
  result = MEMORY[0x21604E7B0](&v6, v4);
  *a1 = v6;
  *(a1 + 8) = 0;
  return result;
}

void sub_213D23648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*(a1 + 8))
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
    v10 = *a1;
  }

  v18 = a4;
  v19 = a5;
  v20 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB3E0, &qword_213D97548);
  MEMORY[0x21604E7B0](&v17);
  v11 = v17;
  if (v9)
  {
    if (v17)
    {
      v12 = v9;
      v13 = [v12 isEqual_];

      if (v13)
      {
        goto LABEL_14;
      }

LABEL_12:
      v18 = a4;
      v19 = a5;
      v20 = a6;
      v17 = v9;
      v15 = a6;

      sub_213D915FC();
      v16 = v20;

      return;
    }

    v14 = v9;
LABEL_11:

    goto LABEL_12;
  }

  if (v17)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_14:
}

uint64_t objectdestroy_29Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_213D2477C@<X0>(uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v10 = sub_213D91C7C();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  v13 = sub_213D9162C();
  MEMORY[0x21604E7B0](v13);
  return sub_213D7BD2C(v12, a4, a4, *(a6 + 8), a6, x8_0);
}

uint64_t sub_213D24834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = v39 - v13;
  v48 = *(v11 - 8);
  v15 = v48;
  MEMORY[0x28223BE20](v16);
  v45 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v50 = v39 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v39 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v39 - v24;
  v26 = *(a7 + 8);
  v52[0] = a5;
  v52[1] = a5;
  v39[1] = v26;
  v52[2] = v26;
  v52[3] = a7;
  v27 = type metadata accessor for MapSelectionManagerBox(0, v52);
  sub_213D7BDDC(v27, v25);
  v44 = sub_213D9162C();
  v47 = a4;
  MEMORY[0x21604E7B0]();
  v42 = TupleTypeMetadata2;
  v28 = *(TupleTypeMetadata2 + 48);
  v46 = v15;
  v29 = *(v15 + 16);
  v49 = v25;
  v29(v14, v25, v11);
  v29(&v14[v28], v22, v11);
  v30 = *(v51 + 48);
  v31 = v30(v14, 1, a5);
  v43 = v29;
  if (v31 != 1)
  {
    v29(v50, v14, v11);
    if (v30(&v14[v28], 1, a5) != 1)
    {
      v35 = v51;
      v36 = v40;
      (*(v51 + 32))(v40, &v14[v28], a5);
      v37 = sub_213D918DC();
      v38 = *(v35 + 8);
      v38(v36, a5);
      v32 = *(v48 + 8);
      v32(v22, v11);
      v38(v50, a5);
      v32(v14, v11);
      if (v37)
      {
        return (v32)(v49, v11);
      }

LABEL_7:
      v33 = v49;
      v43(v45, v49, v11);
      sub_213D915FC();
      return (v32)(v33, v11);
    }

    v32 = *(v48 + 8);
    v32(v22, v11);
    (*(v51 + 8))(v50, a5);
LABEL_6:
    (*(v41 + 8))(v14, v42);
    goto LABEL_7;
  }

  v32 = *(v48 + 8);
  v32(v22, v11);
  if (v30(&v14[v28], 1, a5) != 1)
  {
    goto LABEL_6;
  }

  v32(v14, v11);
  return (v32)(v49, v11);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 32);
  sub_213D91C7C();
  v2 = (sub_213D9162C() - 8);
  v3 = (*(*v2 + 80) + 64) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  v4 = v2[10];
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v0 + v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v0 + v3 + v4, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_213D24E90(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213D24F00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_213D25040(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t Group<A>.init(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8(v5);
  sub_213D914EC();
  return (*(v4 + 8))(v7, a3);
}

uint64_t static Group<A>._makeMapContent(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_213D9057C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  v12[0] = a3;
  v12[1] = a4;
  swift_getKeyPath();
  sub_213D914FC();
  sub_213D9057C();
  sub_213D9058C();

  (*(a4 + 32))(v10, a2, a3, a4);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_213D2551C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_213D2556C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB290, &qword_213D98000);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - v13;
  v48 = type metadata accessor for CustomAnnotationViewModel(0);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v45 = &v43 - v17;
  v49 = a4;
  v50 = a5;
  v52[0] = a4;
  v52[1] = a5;
  v51 = a6;
  v52[2] = a6;
  v52[3] = a7;
  v18 = type metadata accessor for MapSelectionManagerBox(0, v52);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - v20;
  v23 = v22;
  v24 = sub_213D9162C();
  v25 = sub_213D91C7C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v43 - v28;
  (*(v26 + 16))(&v43 - v28, a1, v25, v27);
  v30 = *(v24 - 8);
  if ((*(v30 + 48))(v29, 1, v24) == 1)
  {
    (*(v26 + 8))(v29, v25);
    v31 = 0;
  }

  else
  {
    MEMORY[0x21604E7B0](v24);
    (*(v30 + 8))(v29, v24);
    v31 = sub_213D7BF40(v23);
    (*(v19 + 8))(v21, v23);
  }

  v32 = v44;
  v33 = *(v44 + 16);
  if (!v33)
  {
    return MEMORY[0x277D84F90];
  }

  v34 = *(type metadata accessor for MapContentList.Item(0) - 8);
  v35 = (v46 + 48);
  v36 = (v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)));
  v37 = *(v34 + 72);
  v38 = MEMORY[0x277D84F90];
  v44 = a7;
  do
  {
    sub_213D2A380(v36, v31, v49, v51, v14);
    if ((*v35)(v14, 1, v48) == 1)
    {
      sub_213CD8330(v14, &qword_27C8EB290, &qword_213D98000);
    }

    else
    {
      v39 = v45;
      sub_213D2BE0C(v14, v45, type metadata accessor for CustomAnnotationViewModel);
      sub_213D2BE0C(v39, v47, type metadata accessor for CustomAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_213D6FD1C(0, v38[2] + 1, 1, v38);
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_213D6FD1C((v40 > 1), v41 + 1, 1, v38);
      }

      v38[2] = v41 + 1;
      sub_213D2BE0C(v47, v38 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v41, type metadata accessor for CustomAnnotationViewModel);
    }

    v36 = (v36 + v37);
    --v33;
  }

  while (v33);
  return v38;
}

void *sub_213D25A60(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a1;
  v43 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB260, qword_213D985C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - v14;
  v48 = type metadata accessor for MarkerAnnotationViewModel(0);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v44 = &v42 - v18;
  v51 = a6;
  v52 = a7;
  v53[0] = a6;
  v53[1] = a7;
  v53[2] = a8;
  v53[3] = a9;
  v49 = a9;
  v19 = type metadata accessor for MapSelectionManagerBox(0, v53);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - v21;
  v23 = sub_213D9162C();
  v24 = sub_213D91C7C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v42 - v27;
  v45 = a8;
  v50 = a3;
  if (a3)
  {
    v29 = 1;
  }

  else
  {
    (*(v25 + 16))(v28, v42, v24, v26);
    v30 = *(v23 - 8);
    if ((*(v30 + 48))(v28, 1, v23) == 1)
    {
      (*(v25 + 8))(v28, v24);
      v29 = 0;
    }

    else
    {
      MEMORY[0x21604E7B0](v23);
      (*(v30 + 8))(v28, v23);
      v29 = sub_213D7BF40(v19);
      (*(v20 + 8))(v22, v19);
    }

    a8 = v45;
  }

  v31 = v43;
  v32 = *(v43 + 16);
  if (!v32)
  {
    return MEMORY[0x277D84F90];
  }

  v33 = *(type metadata accessor for MapContentList.Item(0) - 8);
  v34 = (v46 + 48);
  v35 = (v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80)));
  v36 = *(v33 + 72);
  v37 = MEMORY[0x277D84F90];
  do
  {
    sub_213D2A838(v35, v50 & 1, v29, v51, a8, v15);
    if ((*v34)(v15, 1, v48) == 1)
    {
      sub_213CD8330(v15, &qword_27C8EB260, qword_213D985C0);
    }

    else
    {
      v38 = v44;
      sub_213D2BE0C(v15, v44, type metadata accessor for MarkerAnnotationViewModel);
      sub_213D2BE0C(v38, v47, type metadata accessor for MarkerAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_213D6FF7C(0, v37[2] + 1, 1, v37);
      }

      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        v37 = sub_213D6FF7C((v39 > 1), v40 + 1, 1, v37);
      }

      v37[2] = v40 + 1;
      sub_213D2BE0C(v47, v37 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v40, type metadata accessor for MarkerAnnotationViewModel);
      a8 = v45;
    }

    v35 += v36;
    --v32;
  }

  while (v32);
  return v37;
}

void *sub_213D25F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - v13;
  v48 = type metadata accessor for UserAnnotationViewModel(0);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v45 = &v43 - v17;
  v49 = a4;
  v50 = a5;
  v52[0] = a4;
  v52[1] = a5;
  v51 = a6;
  v52[2] = a6;
  v52[3] = a7;
  v18 = type metadata accessor for MapSelectionManagerBox(0, v52);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - v20;
  v23 = v22;
  v24 = sub_213D9162C();
  v25 = sub_213D91C7C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v43 - v28;
  (*(v26 + 16))(&v43 - v28, a1, v25, v27);
  v30 = *(v24 - 8);
  if ((*(v30 + 48))(v29, 1, v24) == 1)
  {
    (*(v26 + 8))(v29, v25);
    v31 = 0;
  }

  else
  {
    MEMORY[0x21604E7B0](v24);
    (*(v30 + 8))(v29, v24);
    v31 = sub_213D7BF40(v23);
    (*(v19 + 8))(v21, v23);
  }

  v32 = v44;
  v33 = *(v44 + 16);
  if (!v33)
  {
    return MEMORY[0x277D84F90];
  }

  v34 = *(type metadata accessor for MapContentList.Item(0) - 8);
  v35 = (v46 + 48);
  v36 = (v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)));
  v37 = *(v34 + 72);
  v38 = MEMORY[0x277D84F90];
  v44 = a7;
  do
  {
    sub_213D2ADE0(v36, v31, v49, v51, v14);
    if ((*v35)(v14, 1, v48) == 1)
    {
      sub_213CD8330(v14, &qword_27C8EB680, &unk_213D97FF0);
    }

    else
    {
      v39 = v45;
      sub_213D2BE0C(v14, v45, type metadata accessor for UserAnnotationViewModel);
      sub_213D2BE0C(v39, v47, type metadata accessor for UserAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_213D6FFA4(0, v38[2] + 1, 1, v38);
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_213D6FFA4((v40 > 1), v41 + 1, 1, v38);
      }

      v38[2] = v41 + 1;
      sub_213D2BE0C(v47, v38 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v41, type metadata accessor for UserAnnotationViewModel);
    }

    v36 += v37;
    --v33;
  }

  while (v33);
  return v38;
}

char *sub_213D26468(uint64_t a1)
{
  v2 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MapContentList.Item(0);
  MEMORY[0x28223BE20](v5);
  v42 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = *(v6 + 24);
  v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = *(v7 + 72);
  v13 = MEMORY[0x277D84F90];
  v14 = v42;
  v40 = v10;
  v41 = v2;
  v39 = v12;
  do
  {
    sub_213D2BC0C(v11, v14, type metadata accessor for MapContentList.Item);
    sub_213D2BC0C(v14 + v10, v4, type metadata accessor for MapContentList.Item.Content);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v44 = v9;
      v15 = *v4;
      v48 = v13;
      v49 = v15;
      v50 = *(v4 + 4);
      v16 = *(v4 + 2);
      v17 = *(v4 + 3);
      v18 = *(v4 + 8);
      v45 = *(v4 + 9);
      v46 = v18;
      v19 = *(v4 + 5);
      v51 = *(v4 + 6);
      v20 = *(v4 + 7);
      v21 = *(v4 + 8);
      v22 = v4[72];
      v47 = *(v4 + 10);
      v23 = *v14;
      v75 = v22;
      v43 = v23;
      if (v16)
      {
        sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);

        v24 = v49;
        v25 = v50;
        sub_213D1E7B8(v49, v50);

        sub_213D2BCD4(v21, v22);

        v26 = sub_213D91C3C();
        sub_213D1E6A0(v24, v25);

        sub_213CE2B28(v21, v22);
        sub_213D2BC74(v42, type metadata accessor for MapContentList.Item);
      }

      else
      {

        v27 = v49;
        v28 = v50;
        sub_213D1E7B8(v49, v50);

        sub_213D2BCD4(v21, v22);
        sub_213D1E6A0(v27, v28);

        sub_213CE2B28(v21, v22);
        sub_213D2BC74(v14, type metadata accessor for MapContentList.Item);
        v26 = 0;
      }

      *&v53 = v43;
      *(&v53 + 1) = v49;
      LOWORD(v54) = v50;
      *(&v54 + 2) = v76;
      WORD3(v54) = v77;
      *(&v54 + 1) = v26;
      *&v55 = v17;
      *(&v55 + 1) = __PAIR64__(v45, v46);
      *&v56 = v19;
      *(&v56 + 1) = v51;
      *&v57 = v20;
      *(&v57 + 1) = v21;
      LOBYTE(v58) = v75;
      *(&v58 + 1) = *v74;
      DWORD1(v58) = *&v74[3];
      *(&v58 + 1) = v47;
      v59[0] = v43;
      v59[1] = v49;
      v60 = v50;
      v61 = v76;
      v62 = v77;
      v63 = v26;
      v64 = v17;
      v65 = v46;
      v66 = v45;
      v67 = v19;
      v68 = v51;
      v69 = v20;
      v70 = v21;
      v71 = v75;
      *&v72[3] = *&v74[3];
      *v72 = *v74;
      v73 = v47;
      sub_213D1E6AC(&v53, &v52);
      sub_213D1E764(v59);
      v13 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v39;
      v10 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_213D6FFCC(0, *(v13 + 2) + 1, 1, v13);
      }

      v9 = v44;
      v31 = *(v13 + 2);
      v30 = *(v13 + 3);
      if (v31 >= v30 >> 1)
      {
        v13 = sub_213D6FFCC((v30 > 1), v31 + 1, 1, v13);
      }

      *(v13 + 2) = v31 + 1;
      v32 = &v13[96 * v31];
      v33 = v54;
      *(v32 + 2) = v53;
      *(v32 + 3) = v33;
      v34 = v55;
      v35 = v56;
      v36 = v58;
      *(v32 + 6) = v57;
      *(v32 + 7) = v36;
      *(v32 + 4) = v34;
      *(v32 + 5) = v35;
      v14 = v42;
    }

    else
    {
      sub_213D2BC74(v14, type metadata accessor for MapContentList.Item);
      sub_213D2BC74(v4, type metadata accessor for MapContentList.Item.Content);
    }

    v11 += v12;
    --v9;
  }

  while (v9);
  return v13;
}

char *sub_213D26950(uint64_t a1)
{
  v2 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MapContentList.Item(0);
  MEMORY[0x28223BE20](v5);
  v50 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = *(v6 + 24);
  v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = *(v7 + 72);
  v13 = MEMORY[0x277D84F90];
  v14 = v50;
  v48 = v10;
  v49 = v2;
  v47 = v12;
  do
  {
    sub_213D2BC0C(v11, v14, type metadata accessor for MapContentList.Item);
    sub_213D2BC0C(v14 + v10, v4, type metadata accessor for MapContentList.Item.Content);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v54 = v9;
      v58 = v13;
      v15 = *(v4 + 1);
      v60 = *v4;
      v61 = v15;
      v17 = *(v4 + 2);
      v16 = *(v4 + 3);
      v18 = *(v4 + 4);
      v19 = *(v4 + 10);
      v55 = *(v4 + 11);
      v56 = v19;
      v20 = *(v4 + 6);
      v21 = *(v4 + 7);
      v22 = *(v4 + 8);
      v64 = *(v4 + 9);
      v23 = v4[80];
      v24 = *(v4 + 11);
      v62 = v21;
      v63 = v24;
      LODWORD(v21) = v4[96];
      v57 = *(v4 + 13);
      v25 = *v14;
      v90 = v23;
      v59 = v21;
      v88 = v21;
      v53 = v25;
      v52 = v23;
      if (v16)
      {
        sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);

        v27 = v60;
        v26 = v61;
        sub_213D2BD34(v60, v61, v17);

        sub_213D2BCD4(v64, v23);
        v51 = v17;
        v28 = v63;
        v29 = v59;
        sub_213D2BCD4(v63, v59);

        v30 = sub_213D91C3C();
        sub_213D1E5E8(v27, v26, v51);

        sub_213CE2B28(v64, v52);
        v31 = v28;
        v17 = v51;
        sub_213CE2B28(v31, v29);
        sub_213D2BC74(v50, type metadata accessor for MapContentList.Item);
      }

      else
      {

        v33 = v60;
        v32 = v61;
        sub_213D2BD34(v60, v61, v17);

        v34 = v23;
        v35 = v64;
        sub_213D2BCD4(v64, v34);
        v36 = v63;
        sub_213D2BCD4(v63, v59);
        sub_213D1E5E8(v33, v32, v17);

        sub_213CE2B28(v35, v52);
        sub_213CE2B28(v36, v59);
        sub_213D2BC74(v14, type metadata accessor for MapContentList.Item);
        v30 = 0;
      }

      *&v66 = v53;
      *(&v66 + 1) = v60;
      *&v67 = v61;
      *(&v67 + 1) = v17;
      *&v68 = v30;
      *(&v68 + 1) = v18;
      *&v69 = __PAIR64__(v55, v56);
      *(&v69 + 1) = v20;
      *&v70 = v62;
      *(&v70 + 1) = v22;
      *&v71 = v64;
      BYTE8(v71) = v90;
      *(&v71 + 9) = *v89;
      HIDWORD(v71) = *&v89[3];
      *&v72 = v63;
      BYTE8(v72) = v88;
      *(&v72 + 9) = *v87;
      HIDWORD(v72) = *&v87[3];
      v73 = v57;
      v74[0] = v53;
      v74[1] = v60;
      v74[2] = v61;
      v74[3] = v17;
      v74[4] = v30;
      v74[5] = v18;
      v75 = v56;
      v76 = v55;
      v77 = v20;
      v78 = v62;
      v79 = v22;
      v80 = v64;
      v81 = v90;
      *&v82[3] = *&v89[3];
      *v82 = *v89;
      v83 = v63;
      v84 = v88;
      *&v85[3] = *&v87[3];
      *v85 = *v87;
      v86 = v57;
      sub_213D1E518(&v66, &v65);
      sub_213D1E4C4(v74);
      v13 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_213D700EC(0, *(v13 + 2) + 1, 1, v13);
      }

      v12 = v47;
      v9 = v54;
      v38 = *(v13 + 2);
      v37 = *(v13 + 3);
      if (v38 >= v37 >> 1)
      {
        v13 = sub_213D700EC((v37 > 1), v38 + 1, 1, v13);
      }

      *(v13 + 2) = v38 + 1;
      v39 = &v13[120 * v38];
      v40 = v66;
      v41 = v67;
      v42 = v69;
      *(v39 + 4) = v68;
      *(v39 + 5) = v42;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v43 = v70;
      v44 = v71;
      v45 = v72;
      *(v39 + 18) = v73;
      *(v39 + 7) = v44;
      *(v39 + 8) = v45;
      *(v39 + 6) = v43;
      v14 = v50;
      v10 = v48;
    }

    else
    {
      sub_213D2BC74(v14, type metadata accessor for MapContentList.Item);
      sub_213D2BC74(v4, type metadata accessor for MapContentList.Item.Content);
    }

    v11 += v12;
    --v9;
  }

  while (v9);
  return v13;
}

char *sub_213D26EB4(uint64_t a1)
{
  v2 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for MapContentList.Item(0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = *(v6 + 24);
  v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v13 = *(v7 + 72);
  v14 = MEMORY[0x277D84F90];
  v37 = v11;
  v38 = v2;
  v36 = v13;
  do
  {
    sub_213D2BC0C(v12, v9, type metadata accessor for MapContentList.Item);
    sub_213D2BC0C(v9 + v11, v4, type metadata accessor for MapContentList.Item.Content);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v47 = v14;
      v15 = v4[5];
      v85 = v4[4];
      v86 = v15;
      v16 = v4[7];
      v87 = v4[6];
      v88 = v16;
      v17 = v4[1];
      v81 = *v4;
      v82 = v17;
      v18 = v4[3];
      v83 = v4[2];
      v84 = v18;
      v19 = *v9;
      v42 = *(&v81 + 1);
      v43 = v81;
      v40 = *(&v82 + 1);
      v41 = v82;
      v20 = v18;
      v44 = HIDWORD(v18);
      v45 = DWORD2(v18);
      v21 = v85;
      v48 = *(&v86 + 1);
      v22 = v86;
      v49 = *(&v85 + 1);
      v23 = v87;
      v50 = *(&v87 + 1);
      v24 = v88;
      v46 = *(&v88 + 1);
      v39 = v83;
      v91 = v83;
      v90 = v87;
      v89 = v88;
      v25 = *(&v83 + 1);
      if (*(&v83 + 1))
      {
        sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);

        sub_213D2BCD4(v48, v23);
        sub_213D2BCD4(v50, v24);

        v25 = sub_213D91C3C();
      }

      else
      {

        sub_213D2BCD4(v48, v23);
        sub_213D2BCD4(v50, v24);
      }

      sub_213D2BCE0(&v81);
      sub_213D2BC74(v9, type metadata accessor for MapContentList.Item);
      *&v52 = v19;
      *(&v52 + 1) = v43;
      *&v53 = v42;
      *(&v53 + 1) = v41;
      *&v54 = v40;
      BYTE8(v54) = v39;
      *(&v54 + 9) = *v80;
      HIDWORD(v54) = *&v80[3];
      *&v55 = v25;
      *(&v55 + 1) = v20;
      *&v56 = __PAIR64__(v44, v45);
      *(&v56 + 1) = v21;
      *&v57 = v49;
      *(&v57 + 1) = v22;
      *&v58 = v48;
      BYTE8(v58) = v23;
      *(&v58 + 9) = *v79;
      HIDWORD(v58) = *&v79[3];
      *&v59 = v50;
      BYTE8(v59) = v24;
      *(&v59 + 9) = *v78;
      HIDWORD(v59) = *&v78[3];
      v60 = v46;
      v61[0] = v19;
      v61[1] = v43;
      v61[2] = v42;
      v61[3] = v41;
      v61[4] = v40;
      v62 = v39;
      *&v63[3] = *&v80[3];
      *v63 = *v80;
      v64 = v25;
      v65 = v20;
      v66 = v45;
      v67 = v44;
      v68 = v21;
      v69 = v49;
      v70 = v22;
      v71 = v48;
      v72 = v23;
      *&v73[3] = *&v79[3];
      *v73 = *v79;
      v74 = v50;
      v75 = v24;
      *&v76[3] = *&v78[3];
      *v76 = *v78;
      v77 = v46;
      sub_213D1E18C(&v52, &v51);
      sub_213D1E108(v61);
      v14 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_213D70210(0, *(v14 + 2) + 1, 1, v14);
      }

      v11 = v37;
      v27 = *(v14 + 2);
      v26 = *(v14 + 3);
      if (v27 >= v26 >> 1)
      {
        v14 = sub_213D70210((v26 > 1), v27 + 1, 1, v14);
      }

      *(v14 + 2) = v27 + 1;
      v28 = &v14[136 * v27];
      *(v28 + 2) = v52;
      v29 = v53;
      v30 = v54;
      v31 = v56;
      *(v28 + 5) = v55;
      *(v28 + 6) = v31;
      *(v28 + 3) = v29;
      *(v28 + 4) = v30;
      v32 = v57;
      v33 = v58;
      v34 = v59;
      *(v28 + 20) = v60;
      *(v28 + 8) = v33;
      *(v28 + 9) = v34;
      *(v28 + 7) = v32;
      v13 = v36;
    }

    else
    {
      sub_213D2BC74(v9, type metadata accessor for MapContentList.Item);
      sub_213D2BC74(v4, type metadata accessor for MapContentList.Item.Content);
    }

    v12 += v13;
    --v10;
  }

  while (v10);
  return v14;
}

uint64_t sub_213D27418(void *a1)
{
  v2 = *(v1 + *a1);

  return v2;
}

uint64_t sub_213D27470()
{
  v0 = sub_213D9046C();
  __swift_allocate_value_buffer(v0, qword_27C8F7330);
  __swift_project_value_buffer(v0, qword_27C8F7330);
  return sub_213D9045C();
}

void sub_213D274EC(uint64_t a1, id a2, uint64_t a3, void *a4)
{
  [a2 setCoordinate_];
  if (*(a3 + 16))
  {
    v8 = sub_213D9190C();
  }

  else
  {
    v8 = 0;
  }

  [a2 setTitle_];

  if (*(a3 + 32))
  {
    v9 = sub_213D9190C();
  }

  else
  {
    v9 = 0;
  }

  [a2 setSubtitle_];

  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  v12 = (*(v11 + 24))(a2, v10, v11);
  if (v12)
  {
    v14 = v12;
    type metadata accessor for SwiftUIAnnotationView();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      sub_213D2763C(v13, a1);
    }
  }
}

id sub_213D2763C(char *a1, uint64_t a2)
{
  v3 = v2;
  *&a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView] = *(v2 + 72);
  swift_retain_n();

  v6 = *&a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_hostView];
  sub_213D907FC();
  v7 = [v6 superview];
  if (v7)
  {
  }

  else
  {
    [a1 addSubview_];
  }

  sub_213D8C140();

  v8 = *(v3 + 80);
  v9 = *(v3 + 88);
  v10 = &a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
  *v10 = v8;
  v10[1] = v9;
  [a1 frame];
  [a1 setCenterOffset_];
  if ((*(v3 + 120) & 1) == 0)
  {
    v14 = *(v3 + 104);
    v13 = *(v3 + 112);
    v15 = &a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_accessoryAnchorPoint];
    *v15 = v14;
    v15[1] = v13;
    [a1 frame];
    [a1 setAccessoryOffset_];
  }

  if (a2)
  {
    v18 = 1;
    [a1 setTitleVisibility_];
  }

  else
  {
    [a1 setTitleVisibility_];
    v18 = qword_213D98030[*(v3 + 49)];
  }

  return [a1 setSubtitleVisibility_];
}

void sub_213D27828(uint64_t a1, id a2, uint64_t a3, void *a4)
{
  [a2 setCoordinate_];
  if (*(a3 + 16))
  {
    v8 = sub_213D9190C();
  }

  else
  {
    v8 = 0;
  }

  [a2 setTitle_];

  if (*(a3 + 32))
  {
    v9 = sub_213D9190C();
  }

  else
  {
    v9 = 0;
  }

  [a2 setSubtitle_];

  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  v12 = (*(v11 + 24))(a2, v10, v11);
  if (v12)
  {
    v14 = v12;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      sub_213D2797C(v13, a1);
    }
  }
}

id sub_213D2797C(void *a1, uint64_t a2)
{
  [a1 setMarkerTintColor_];
  v5 = *(v2 + 40);
  if (v5)
  {
    v6 = [*(v2 + 40) _muid];
  }

  else
  {
    v6 = 0;
  }

  [a1 _setFeatureId_];
  if (*(v2 + 64))
  {
    v7 = sub_213D9190C();
  }

  else
  {
    v7 = 0;
  }

  [a1 setGlyphText_];

  [a1 setGlyphImage_];
  v8 = [v5 _styleAttributes];
  [a1 _setStyleAttributes_];

  if (a2)
  {
    v9 = 1;
    [a1 setTitleVisibility_];
  }

  else
  {
    [a1 setTitleVisibility_];
    v9 = qword_213D98030[*(v2 + 81)];
  }

  [a1 setSubtitleVisibility_];
  LODWORD(v10) = 1148846080;
  [a1 setDisplayPriority_];
  v11 = *(v2 + 104);

  return [a1 setEnabled_];
}

void sub_213D27B04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 24))(a3, v6, v7);
  if (v8)
  {
    v16 = v8;
    type metadata accessor for SwiftUIAnnotationView();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = *(a4 + 24);
      v11 = *(a4 + 32);
      v12 = &v9[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
      *v12 = v10;
      v12[1] = v11;
      v13 = v9;
      [v9 frame];
      [v13 setCenterOffset_];
    }
  }
}

void sub_213D27C18(char *a1, void **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = &a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
  *v8 = v6;
  v8[1] = v7;
  [a1 frame];
  [a1 setCenterOffset_];
  v11 = *(v2 + 8);
  if (v11 && v4 != 1)
  {
    v12 = *(v2 + 16);
    v16[0] = v4;
    v16[1] = v5;
    sub_213CD4E28(v11, v12);
    sub_213D2BD84(v4, v5);
    v13 = v11(v16);
    *&a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView] = v13;

    v14 = *&a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_hostView];
    v16[0] = v13;
    sub_213D907FC();
    v15 = [v14 superview];
    if (v15)
    {
    }

    else
    {
      [a1 addSubview_];
    }

    sub_213D8C140();
    sub_213CCE520(v11, v12);
    sub_213D2BDC8(v4, v5);
  }
}

char *sub_213D27D94(uint64_t a1, void *a2, double a3)
{
  if (*(v3 + 8))
  {
    if (a2)
    {
      v5 = a2;
      v6 = sub_213D9190C();
      v7 = [v5 dequeueReusableAnnotationViewWithIdentifier:v6 forAnnotation:a1];

      type metadata accessor for SwiftUIAnnotationView();
      v8 = swift_dynamicCastClassUnconditional();
      v9 = [v5 userLocation];
      if (v9)
      {

        v10 = [v5 userLocation];
        v11 = [v10 location];
        v12 = [v10 heading];

LABEL_8:
        v16[0] = v11;
        v16[1] = v12;
        sub_213D27C18(v8, v16);
        sub_213D2BDC8(v11, v12);
        return v8;
      }
    }

    else
    {
      type metadata accessor for SwiftUIAnnotationView();
      v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v14 = sub_213D9190C();
      v8 = [v13 initWithAnnotation:a1 reuseIdentifier:v14];
    }

    v12 = 0;
    v11 = 1;
    goto LABEL_8;
  }

  return 0;
}

void sub_213D27F48(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = (*(v5 + 48))(a3, v4, v5);
  if (v6)
  {
    v9 = v6;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      sub_213D28034(v7);
      [v8 setNeedsDisplay];
    }
  }
}

void sub_213D28034(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 44);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);

  [a1 setLineWidth_];
  [a1 setLineCap_];
  [a1 setLineJoin_];
  [a1 setMiterLimit_];
  if (*(v6 + 16))
  {

    sub_213D18410(v10);

    sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
    v11 = sub_213D919EC();
  }

  else
  {
    v11 = 0;
  }

  [a1 setLineDashPattern_];

  [a1 setLineDashPhase_];

  if (!v9)
  {
    sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
    goto LABEL_17;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
    if (!*(v8 + 16))
    {
      sub_213D9149C();
      goto LABEL_18;
    }

LABEL_17:

LABEL_18:
    v21 = sub_213D91C3C();
    [a1 setStrokeColor_];
    v19 = v21;
    goto LABEL_23;
  }

  v23 = MEMORY[0x277D84F90];
  v12 = *(v8 + 16);
  if (v12)
  {
    sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
    v13 = a1;
    v14 = (v8 + 40);
    v15 = MEMORY[0x277D84F90];
    do
    {
      v16 = *v14;
      swift_retain_n();
      sub_213D91C3C();
      MEMORY[0x21604EBA0]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_213D91A1C();
      }

      sub_213D91A6C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_213D6FD44(0, *(v15 + 2) + 1, 1, v15);
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        v15 = sub_213D6FD44((v17 > 1), v18 + 1, 1, v15);
      }

      *(v15 + 2) = v18 + 1;
      *&v15[8 * v18 + 32] = v16;
      v14 += 2;
      --v12;
    }

    while (v12);
  }

  else
  {
    v20 = a1;
  }

  sub_213D91C0C();

  v19 = a1;
LABEL_23:
}

void sub_213D283B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 48))(a3, v6, v7);
  if (v8)
  {
    v22 = v8;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = *(a4 + 56);
      v25 = *(a4 + 40);
      v26 = v11;
      v27 = *(a4 + 72);
      v12 = *(&v11 + 1);
      v13 = *&v25;
      sub_213D1E3A4(&v25, v24);
      [v10 setLineWidth_];
      [v10 setLineCap_];
      [v10 setLineJoin_];
      [v10 setMiterLimit_];
      if (*(v12 + 16))
      {

        sub_213D18410(v14);
        sub_213D1E400(&v25);
        sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
        v15 = sub_213D919EC();
      }

      else
      {
        v15 = 0;
      }

      v16 = *(a4 + 80);
      v17 = *(a4 + 88);
      [v10 setLineDashPattern_];

      [v10 setLineDashPhase_];
      sub_213D1E400(&v25);
      if ((v17 & 1) != 0 && !*(v16 + 16))
      {
        sub_213D9149C();
      }

      else
      {
      }

      v18 = *(a4 + 96);
      v19 = *(a4 + 104);
      sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
      v20 = sub_213D91C3C();
      [v10 setStrokeColor_];

      if ((v19 & 1) != 0 && !*(v18 + 16))
      {
        sub_213D9149C();
      }

      else
      {
      }

      v21 = sub_213D91C3C();
      [v10 setFillColor_];

      [v10 setNeedsDisplay];
    }

    else
    {
    }
  }
}

id sub_213D28658(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);
  v11 = *(v1 + 104);
  v12 = [objc_allocWithZone(MEMORY[0x277CD4F20]) initWithPolygon_];

  [v12 setLineWidth_];
  [v12 setLineCap_];
  [v12 setLineJoin_];
  [v12 setMiterLimit_];
  if (*(v6 + 16))
  {

    sub_213D18410(v13);

    sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
    v14 = sub_213D919EC();
  }

  else
  {
    v14 = 0;
  }

  [v12 setLineDashPattern_];

  [v12 setLineDashPhase_];

  if ((v9 & 1) != 0 && !*(v8 + 16))
  {
    sub_213D9149C();
  }

  else
  {
  }

  sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
  v15 = sub_213D91C3C();
  [v12 setStrokeColor_];

  if ((v11 & 1) != 0 && !*(v10 + 16))
  {
    sub_213D9149C();
  }

  else
  {
  }

  v16 = sub_213D91C3C();
  [v12 setFillColor_];

  return v12;
}

void sub_213D28880(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 48))(a3, v6, v7);
  if (v8)
  {
    v18 = v8;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = *(a4 + 72);
      v21 = *(a4 + 56);
      v22 = v11;
      v23 = *(a4 + 88);
      v12 = *(&v11 + 1);
      v13 = *&v21;
      sub_213D1E3A4(&v21, v20);
      [v10 setLineWidth_];
      [v10 setLineCap_];
      [v10 setLineJoin_];
      [v10 setMiterLimit_];
      if (*(v12 + 16))
      {

        sub_213D18410(v14);
        sub_213D1E400(&v21);
        sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
        v15 = sub_213D919EC();
      }

      else
      {
        v15 = 0;
      }

      [v10 setLineDashPattern_];

      [v10 setLineDashPhase_];
      sub_213D1E400(&v21);
      if ((*(a4 + 104) & 1) != 0 && !*(*(a4 + 96) + 16))
      {
        sub_213D9149C();
      }

      else
      {
      }

      sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
      v16 = sub_213D91C3C();
      [v10 setStrokeColor_];

      if ((*(a4 + 120) & 1) != 0 && !*(*(a4 + 112) + 16))
      {
        sub_213D9149C();
      }

      else
      {
      }

      v17 = sub_213D91C3C();
      [v10 setFillColor_];

      [v10 setNeedsDisplay];
    }

    else
    {
    }
  }
}

void sub_213D28B34(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *v4;
  sub_213CE2B34(0, &qword_27C8EB510, 0x277CD4E80);
  v7 = sub_213D919EC();
  [v6 *a4];
}

void sub_213D28BB8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
  v5 = sub_213D919EC();
  [v4 addOverlays:v5 level:a2];
}

void sub_213D28C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, SEL *a6)
{
  v8 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = sub_213D919EC();
  [v8 *a6];
}

uint64_t sub_213D28D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getTupleTypeMetadata2();
  v8 = sub_213D91A3C();
  sub_213D2CADC(v8, a3, a2, a5);

  swift_getTupleTypeMetadata2();
  v9 = sub_213D91A3C();
  v12 = sub_213D29DEC(v9, v10, v11);
  sub_213D2CADC(v9, &type metadata for MapContentList.ID, a3, v12);

  return 0xFFFFFFFFLL;
}

void sub_213D28DF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 40;
    do
    {
      v3 = *(v2 - 8);

      v3(v4);

      v2 += 16;
      --v1;
    }

    while (v1);
  }
}

void sub_213D28E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = a2 + 40;
    do
    {
      v4 = *(v3 - 8);

      v4(v5);

      v3 += 16;
      --v2;
    }

    while (v2);
  }
}

id sub_213D28EA8(double a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = v1 + qword_27C8EB3F0;
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v6 = type metadata accessor for CustomAnnotationViewModel(0);
  v7 = type metadata accessor for MapBridgingCustomAnnotation();
  v8 = *((v3 & v2) + 0x58);
  v9 = MEMORY[0x277D85378];
  v10 = sub_213D2A1D8(&qword_27C8EB6A8, type metadata accessor for MapBridgingCustomAnnotation, MEMORY[0x277D85378]);
  sub_213D28D20(v10, v6, v7, v11, v10);
  *v4 = -1;
  *(v4 + 1) = 0;
  *(v4 + 2) = v12;
  *(v4 + 3) = v13;
  v14 = v1 + qword_27C8EB3F8;
  v15 = type metadata accessor for MarkerAnnotationViewModel(0);
  v16 = type metadata accessor for MapBridgingMarker();
  v17 = sub_213D2A1D8(&qword_27C8EB6B0, type metadata accessor for MapBridgingMarker, v9);
  v19 = sub_213D28D20(v17, v15, v16, v18, v17);
  *v14 = -1;
  *(v14 + 1) = 0;
  *(v14 + 2) = v20;
  *(v14 + 3) = v21;
  v22 = v1 + qword_27C8EB400;
  sub_213D28D20(v19, v15, v16, v21, v17);
  *v22 = -1;
  *(v22 + 1) = 0;
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  v25 = v1 + qword_27C8EB408;
  v26 = type metadata accessor for UserAnnotationViewModel(0);
  v27 = type metadata accessor for MapBridgingUserAnnotation();
  v28 = sub_213D2A1D8(&qword_27C8EB6B8, type metadata accessor for MapBridgingUserAnnotation, v9);
  v30 = sub_213D28D20(v28, v26, v27, v29, v28);
  *v25 = -1;
  *(v25 + 1) = 0;
  *(v25 + 2) = v31;
  *(v25 + 3) = v32;
  v33 = v1 + qword_27C8EB410;
  sub_213D28D20(v30, v26, v27, v32, v28);
  *v33 = -1;
  *(v33 + 1) = 0;
  *(v33 + 2) = v34;
  *(v33 + 3) = v35;
  *(v1 + qword_27C8EB418) = 0;
  v36 = v1 + qword_27C8EB420;
  v37 = sub_213CE2B34(0, &qword_27C8EB6C0, 0x277CD4F28);
  v38 = sub_213D2CFE0(&unk_27C8EB6C8, &qword_27C8EB6C0, 0x277CD4F28);
  sub_213D28D20(v38, &type metadata for PolylineOverlayViewModel, v37, v39, v38);
  *v36 = -1;
  *(v36 + 1) = 0;
  *(v36 + 2) = v40;
  *(v36 + 3) = v41;
  v42 = v1 + qword_27C8EB428;
  v43 = sub_213CE2B34(0, &qword_27C8EB1C0, 0x277CD4F18);
  v44 = sub_213D2CFE0(&unk_27C8EB6D8, &qword_27C8EB1C0, 0x277CD4F18);
  sub_213D28D20(v44, &type metadata for PolygonOverlayViewModel, v43, v45, v44);
  *v42 = -1;
  *(v42 + 1) = 0;
  *(v42 + 2) = v46;
  *(v42 + 3) = v47;
  v48 = v1 + qword_27C8EB430;
  v49 = sub_213CE2B34(0, &qword_27C8EB180, 0x277CD4DA0);
  v50 = sub_213D2CFE0(&qword_27C8EB6E8, &qword_27C8EB180, 0x277CD4DA0);
  sub_213D28D20(v50, &type metadata for CircleOverlayViewModel, v49, v51, v50);
  *v48 = -1;
  *(v48 + 1) = 0;
  *(v48 + 2) = v52;
  *(v48 + 3) = v53;
  *(v1 + qword_27C8EB438) = 0;
  v55.receiver = v1;
  v55.super_class = type metadata accessor for MapContentCoordinator(0, v5, v8, v53);
  return objc_msgSendSuper2(&v55, sel_init);
}

id sub_213D2924C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MapContentCoordinator(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_213D292BC(uint64_t a1)
{
}

uint64_t sub_213D293FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 56))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_213D29458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_213D2952C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_213D29574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_213D2961C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_213D29664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_213D296F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_213D29740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213D297F0(uint64_t a1)
{
  sub_213CF649C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v2 <= 0x3F)
    {
      sub_213CF3CE4(319, qword_27C8EA948, &type metadata for MapItemDetailSelectionAccessoryStyle);
      if (v3 <= 0x3F)
      {
        sub_213D9100C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_213D29914(uint64_t a1)
{
  sub_213CF3CE4(319, &unk_27C8EB500, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_213D29AB4(319, qword_27C8EA798, &qword_27C8EB510, 0x277CD4E80);
    if (v2 <= 0x3F)
    {
      sub_213D29AB4(319, &unk_27C8EB518, &unk_27C8E9360, 0x277D755B8);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CLLocationCoordinate2D(319);
        if (v4 <= 0x3F)
        {
          sub_213CF3CE4(319, qword_27C8EA948, &type metadata for MapItemDetailSelectionAccessoryStyle);
          if (v5 <= 0x3F)
          {
            sub_213D29AB4(319, &unk_27C8EB528, &qword_27C8E9370, 0x277D75348);
            if (v6 <= 0x3F)
            {
              sub_213D9100C();
              if (v7 <= 0x3F)
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

void sub_213D29AB4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_213CE2B34(255, a3, a4);
    v5 = sub_213D91C7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_213D29B54(uint64_t a1)
{
  sub_213CF3CE4(319, &unk_27C8EB500, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_213D29AB4(319, qword_27C8EA798, &qword_27C8EB510, 0x277CD4E80);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CLLocationCoordinate2D(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGPoint(319);
        if (v4 <= 0x3F)
        {
          sub_213D29CB8(319);
          if (v5 <= 0x3F)
          {
            sub_213CF3CE4(319, qword_27C8EA948, &type metadata for MapItemDetailSelectionAccessoryStyle);
            if (v6 <= 0x3F)
            {
              sub_213D9100C();
              if (v7 <= 0x3F)
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

void sub_213D29CB8(uint64_t a1)
{
  if (!qword_27C8EB548[0])
  {
    type metadata accessor for CGPoint(255);
    v1 = sub_213D91C7C();
    if (!v2)
    {
      atomic_store(v1, qword_27C8EB548);
    }
  }
}

uint64_t sub_213D29D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213D29D4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213D29D94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213D29DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ECC10;
  if (!qword_27C8ECC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECC10);
  }

  return result;
}

unint64_t sub_213D29E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_213D29E68(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D29E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EB5D8;
  if (!qword_27C8EB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB5D8);
  }

  return result;
}

unint64_t sub_213D29EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_213D29EE4(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D29EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EB5E0;
  if (!qword_27C8EB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB5E0);
  }

  return result;
}

unint64_t sub_213D29F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_213D29F60(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D29F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EB5F0;
  if (!qword_27C8EB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB5F0);
  }

  return result;
}

unint64_t sub_213D29FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_213D29FDC(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D29FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EB5F8;
  if (!qword_27C8EB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB5F8);
  }

  return result;
}

unint64_t sub_213D2A030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_213D2A058(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D2A058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EB608;
  if (!qword_27C8EB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB608);
  }

  return result;
}

unint64_t sub_213D2A0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_213D2A0D4(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D2A0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EB610;
  if (!qword_27C8EB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB610);
  }

  return result;
}

uint64_t sub_213D2A128(uint64_t a1)
{
  result = sub_213D2A1D8(&unk_27C8EB620, type metadata accessor for UserAnnotationViewModel, &unk_213D97EA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D2A180(uint64_t a1)
{
  result = sub_213D2A1D8(&unk_27C8EB630, type metadata accessor for UserAnnotationViewModel, &unk_213D97ED8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D2A1D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213D2A220(uint64_t a1)
{
  result = sub_213D2A1D8(&unk_27C8EB640, type metadata accessor for MarkerAnnotationViewModel, &unk_213D97F10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D2A278(uint64_t a1)
{
  result = sub_213D2A1D8(&unk_27C8EB650, type metadata accessor for MarkerAnnotationViewModel, &unk_213D97F48);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D2A2D0(uint64_t a1)
{
  result = sub_213D2A1D8(&unk_27C8EB660, type metadata accessor for CustomAnnotationViewModel, ")(Jn");
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D2A328(uint64_t a1)
{
  result = sub_213D2A1D8(&unk_27C8EB670, type metadata accessor for CustomAnnotationViewModel, &unk_213D97FB8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D2A380@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v62 = a3;
  v63 = a4;
  v64 = a2;
  v7 = sub_213D91C7C();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - v8;
  v10 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ResolvedAnnotation(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for MapContentList.Item(0);
  v17 = a1;
  sub_213D2BC0C(a1 + *(v16 + 24), v12, type metadata accessor for MapContentList.Item.Content);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_213D2BC74(v12, type metadata accessor for MapContentList.Item.Content);
    v18 = type metadata accessor for CustomAnnotationViewModel(0);
    return (*(*(v18 - 8) + 56))(a5, 1, 1, v18);
  }

  else
  {
    sub_213D2BE0C(v12, v15, type metadata accessor for ResolvedAnnotation);
    v60 = *(v16 + 28);
    v61 = a1;
    v20 = v9;
    v21 = v9;
    v22 = v62;
    sub_213D66EE0(v62, v63, v21, v23);
    v24 = *v17;
    v25 = v13;
    v59 = v24;

    v26 = sub_213D90CDC();
    if (v26)
    {
      v27 = v26;
      v28 = [v26 string];

      v29 = sub_213D9193C();
      v57 = v30;
      v58 = v29;
    }

    else
    {
      v57 = 0;
      v58 = 0;
    }

    v31 = sub_213D90CCC();
    if (v31)
    {
      v32 = v31;
      v33 = [v31 &off_278172178];

      v63 = sub_213D9193C();
      v56 = v34;
    }

    else
    {
      v63 = 0;
      v56 = 0;
    }

    v35 = v64;
    v36 = *(v15 + v13[12]);
    v37 = v13[10];
    v64 = *(v15 + v13[9]);
    LODWORD(v62) = *(v15 + v37);
    v38 = *v15;
    v39 = v15[1];
    v40 = *(v15 + v13[7]);
    v41 = v15[2];
    v42 = v15[3];
    v55 = (v35 & 1) != 0 && (*(*(v22 - 8) + 48))(v20, 1, v22) != 1;
    v43 = v15 + v13[11];
    v44 = *(v43 + 1);
    v54 = *v43;
    v45 = v43[16];
    v46 = *(v15 + v25[13]);
    v47 = v36;

    sub_213D2BC74(v15, type metadata accessor for ResolvedAnnotation);
    v48 = type metadata accessor for CustomAnnotationViewModel(0);
    v49 = *(v48 + 64);
    v50 = sub_213D9100C();
    (*(*(v50 - 8) + 16))(a5 + v49, v61 + v60, v50);
    v51 = v58;
    *a5 = v59;
    *(a5 + 8) = v51;
    v52 = v63;
    *(a5 + 16) = v57;
    *(a5 + 24) = v52;
    *(a5 + 32) = v56;
    *(a5 + 40) = v36;
    *(a5 + 48) = v64;
    *(a5 + 49) = v62;
    *(a5 + 56) = v38;
    *(a5 + 64) = v39;
    *(a5 + 72) = v40;
    *(a5 + 80) = v41;
    *(a5 + 88) = v42;
    *(a5 + 96) = v55;
    *(a5 + 104) = v54;
    *(a5 + 112) = v44;
    *(a5 + 120) = v45;
    *(a5 + 121) = v46;
    (*(*(v48 - 8) + 56))(a5, 0, 1, v48);
    return (*(v65 + 8))(v20, v66);
  }
}

uint64_t sub_213D2A838@<X0>(char *a1@<X0>, _BOOL4 a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v69 = a6;
  v64 = a5;
  LODWORD(v63) = a3;
  v70 = a2;
  v8 = type metadata accessor for MarkerAnnotationViewModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a4;
  v12 = sub_213D91C7C();
  v66 = *(v12 - 8);
  v67 = v12;
  MEMORY[0x28223BE20](v12);
  v71 = &v57 - v13;
  v14 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ResolvedMarker(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MapContentList.Item(0);
  v21 = *(v20 + 24);
  v72 = a1;
  sub_213D2BC0C(&a1[v21], v16, type metadata accessor for MapContentList.Item.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = v9;
    v68 = v8;
    sub_213D2BE0C(v16, v19, type metadata accessor for ResolvedMarker);
    v22 = sub_213D90CCC();
    if (v22)
    {
      v23 = v22;
      v24 = [v22 string];

      v25 = sub_213D9193C();
      v60 = v26;
      v61 = v25;
    }

    else
    {
      v60 = 0;
      v61 = 0;
    }

    v28 = sub_213D90CEC();
    if (v28)
    {
      v30 = v28;
      v31 = [v28 string];

      v32 = sub_213D9193C();
      v58 = v33;
      v59 = v32;
    }

    else
    {
      v58 = 0;
      v59 = 0;
    }

    v57 = *(v20 + 28);
    v34 = v65;
    sub_213D66EE0(v65, v64, v71, v29);
    if (!v70 && (v63 & 1) != 0)
    {
      v70 = (*(*(v34 - 8) + 48))(v71, 1, v34) != 1;
    }

    v65 = *v72;

    v35 = sub_213D90CDC();
    if (v35)
    {
      v36 = v35;
      v37 = [v35 string];

      v38 = sub_213D9193C();
      v63 = v39;
      v64 = v38;
    }

    else
    {
      v63 = 0;
      v64 = 0;
    }

    v40 = *&v19[v17[9]];
    v41 = v19[v17[10]];
    v42 = v40;
    v43 = sub_213D90CBC();
    v44 = *(v19 + 8);
    v45 = *v19;
    v46 = *(v19 + 1);
    v47 = v19[18];
    v48 = *(v68 + 68);
    v49 = sub_213D9100C();
    (*(*(v49 - 8) + 16))(&v11[v48], v72 + v57, v49);
    v50 = v64;
    *v11 = v65;
    *(v11 + 1) = v50;
    v51 = v60;
    v52 = v61;
    *(v11 + 2) = v63;
    *(v11 + 3) = v52;
    *(v11 + 4) = v51;
    *(v11 + 5) = v40;
    v11[48] = v41;
    v53 = v58;
    *(v11 + 7) = v59;
    *(v11 + 8) = v53;
    *(v11 + 9) = v43;
    *(v11 + 40) = v44;
    *(v11 + 11) = v45;
    *(v11 + 12) = v46;
    v11[104] = v70;
    v11[105] = v47;
    *(v11 + 14) = 0;
    if (*&v19[v17[11]])
    {
      sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);

      v54 = sub_213D91C3C();
      sub_213D2BC74(v19, type metadata accessor for ResolvedMarker);
      *(v11 + 14) = v54;
    }

    else
    {
      sub_213D2BC74(v19, type metadata accessor for ResolvedMarker);
    }

    v55 = v69;
    v56 = v62;
    sub_213D2BC0C(v11, v69, type metadata accessor for MarkerAnnotationViewModel);
    (*(v56 + 56))(v55, 0, 1, v68);
    sub_213D2BC74(v11, type metadata accessor for MarkerAnnotationViewModel);
    return (*(v66 + 8))(v71, v67);
  }

  else
  {
    sub_213D2BC74(v16, type metadata accessor for MapContentList.Item.Content);
    return (*(v9 + 56))(v69, 1, 1, v8);
  }
}

uint64_t sub_213D2ADE0@<X0>(char *a1@<X0>, _BOOL4 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v31 = a4;
  v32 = a2;
  v34 = sub_213D91C7C();
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v10 = &v30 - v9;
  v11 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResolvedUserAnnotation(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MapContentList.Item(0);
  sub_213D2BC0C(&a1[*(v17 + 24)], v13, type metadata accessor for MapContentList.Item.Content);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v30 = v5;
    sub_213D2BE0C(v13, v16, type metadata accessor for ResolvedUserAnnotation);
    v18 = *(v17 + 28);
    sub_213D66EE0(a3, v31, v10, v19);
    v20 = *a1;
    v22 = *(v16 + 2);
    v21 = *(v16 + 3);
    v23 = *v16;
    v24 = *(v16 + 1);
    v32 = v32 && (*(*(a3 - 8) + 48))(v10, 1, a3) != 1;
    LODWORD(v31) = v16[40];

    sub_213CD4E28(v22, v21);
    sub_213D2BC74(v16, type metadata accessor for ResolvedUserAnnotation);
    v27 = type metadata accessor for UserAnnotationViewModel(0);
    v28 = *(v27 + 36);
    v29 = sub_213D9100C();
    (*(*(v29 - 8) + 16))(a5 + v28, &a1[v18], v29);
    *a5 = v20;
    *(a5 + 8) = v22;
    *(a5 + 16) = v21;
    *(a5 + 24) = v23;
    *(a5 + 32) = v24;
    *(a5 + 40) = v32;
    *(a5 + 41) = v31;
    (*(*(v27 - 8) + 56))(a5, 0, 1, v27);
    return (*(v33 + 8))(v10, v34);
  }

  else
  {
    sub_213D2BC74(v13, type metadata accessor for MapContentList.Item.Content);
    v25 = type metadata accessor for UserAnnotationViewModel(0);
    return (*(*(v25 - 8) + 56))(a5, 1, 1, v25);
  }
}

void *sub_213D2B188@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  if (v3 >> 62)
  {
    v21 = *v1;
    v22 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v23 = v5;
    v24 = v4;
    v25 = v7;
    v26 = v6;
    if (v3 >> 62 == 1)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB698, &qword_213D98018);
      result = MEMORY[0x21604E7B0](&v18, v8);
      v10 = v19;
      *a1 = v18;
      *(a1 + 16) = v10;
      *(a1 + 32) = 0;
      v11 = 1;
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB690, &qword_213D98010);
      result = MEMORY[0x21604E7B0](&v18, v16);
      v17 = v19;
      *a1 = v18;
      *(a1 + 16) = v17;
      *(a1 + 32) = 0;
      v11 = 2;
    }

    *(a1 + 40) = v11;
  }

  else
  {
    v12 = v1[6];
    v21 = *v1;
    v22 = v3;
    v23 = v5;
    v24 = v4;
    v25 = v7;
    v26 = v6;
    v27 = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB688, &qword_213D98008);
    result = MEMORY[0x21604E7B0](&v18, v13);
    v14 = v20;
    v15 = v19;
    *a1 = v18;
    *(a1 + 16) = v15;
    *(a1 + 32) = v14;
    *(a1 + 40) = 0;
  }

  return result;
}

void sub_213D2B29C(void *a1)
{
  v2 = *(v1 + 1);
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(v1 + 5);
  v102 = v1[4];
  v103 = *v1;
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      v6 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v109 = *v1;
      v110 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v111 = v3;
      v112 = v4;
      v113 = v102;
      v114 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB698, &qword_213D98018);
      MEMORY[0x21604E7B0](&v104);
      v8 = v104;
      v7 = v105;
      v10 = v106;
      v9 = v107;
      [a1 visibleMapRect];
      if (v8 != v14 || v7 != v11 || v10 != v12 || v9 != v13)
      {
        if (qword_27C8E99D0 != -1)
        {
          swift_once();
        }

        v18 = sub_213D9046C();
        __swift_project_value_buffer(v18, qword_27C8F7330);
        v19 = sub_213D9044C();
        v20 = sub_213D91BBC();
        if (os_log_type_enabled(v19, v20))
        {
          v98 = v3;
          v21 = swift_slowAlloc();
          v89 = v5;
          v22 = COERCE_DOUBLE(swift_slowAlloc());
          v104 = v22;
          *v21 = 136380675;
          v109 = v8;
          v110 = *&v7;
          v111 = v10;
          v112 = v9;
          type metadata accessor for MKMapRect(0);
          v23 = sub_213D9194C();
          v25 = v4;
          v26 = sub_213D63E10(v23, v24, &v104);

          *(v21 + 4) = v26;
          v4 = v25;
          _os_log_impl(&dword_213CCA000, v19, v20, "mapview -> model %{private}s", v21, 0xCu);
          v27 = __swift_destroy_boxed_opaque_existential_1(*&v22);
          v28 = v22;
          v5 = v89;
          MEMORY[0x21604FC60](*&v28, -1, -1, v27);
          v29 = v21;
          v3 = v98;
          MEMORY[0x21604FC60](v29, -1, -1);
        }

        [a1 visibleMapRect];
        v109 = v103;
        v110 = v6;
LABEL_37:
        v111 = v3;
        v112 = v4;
        v113 = v102;
        v114 = v5;
        v104 = *&v30;
        v105 = v31;
        v106 = v32;
        v107 = v33;
        sub_213D915FC();
        return;
      }

      if (qword_27C8E99D0 != -1)
      {
        swift_once();
      }

      v84 = sub_213D9046C();
      __swift_project_value_buffer(v84, qword_27C8F7330);
      v48 = sub_213D9044C();
      v49 = sub_213D91BBC();
      if (!os_log_type_enabled(v48, v49))
      {
        goto LABEL_48;
      }

      v50 = swift_slowAlloc();
      v51 = COERCE_DOUBLE(swift_slowAlloc());
      v104 = v51;
      *v50 = 136380675;
      v109 = v8;
      v110 = *&v7;
      v111 = v10;
      v112 = v9;
      type metadata accessor for MKMapRect(0);
    }

    else
    {
      v52 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v109 = *v1;
      v110 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v111 = v3;
      v112 = v4;
      v113 = v102;
      v114 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB690, &qword_213D98010);
      MEMORY[0x21604E7B0](&v104);
      v54 = v104;
      v53 = v105;
      v56 = v106;
      v55 = v107;
      [a1 region];
      if (vabdd_f64(v54, v60) >= 0.00000000999999994 || vabdd_f64(v53, v57) >= 0.00000000999999994 || vabdd_f64(v56, v58) >= 0.00000000999999994 || vabdd_f64(v55, v59) >= 0.00000000999999994)
      {
        if (qword_27C8E99D0 != -1)
        {
          swift_once();
        }

        v62 = sub_213D9046C();
        __swift_project_value_buffer(v62, qword_27C8F7330);
        v63 = sub_213D9044C();
        v64 = sub_213D91BBC();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v90 = v5;
          v66 = COERCE_DOUBLE(swift_slowAlloc());
          v104 = v66;
          *v65 = 136380675;
          v109 = v54;
          v110 = *&v53;
          v111 = v56;
          v112 = v55;
          type metadata accessor for MKCoordinateRegion(0);
          v67 = sub_213D9194C();
          v69 = v4;
          v70 = sub_213D63E10(v67, v68, &v104);

          *(v65 + 4) = v70;
          v4 = v69;
          _os_log_impl(&dword_213CCA000, v63, v64, "mapview -> model %{private}s", v65, 0xCu);
          v71 = __swift_destroy_boxed_opaque_existential_1(*&v66);
          v72 = v66;
          v5 = v90;
          MEMORY[0x21604FC60](*&v72, -1, -1, v71);
          MEMORY[0x21604FC60](v65, -1, -1);
        }

        [a1 region];
        v109 = v103;
        v110 = v52;
        goto LABEL_37;
      }

      if (qword_27C8E99D0 != -1)
      {
        swift_once();
      }

      v61 = sub_213D9046C();
      __swift_project_value_buffer(v61, qword_27C8F7330);
      v48 = sub_213D9044C();
      v49 = sub_213D91BBC();
      if (!os_log_type_enabled(v48, v49))
      {
        goto LABEL_48;
      }

      v50 = swift_slowAlloc();
      v51 = COERCE_DOUBLE(swift_slowAlloc());
      v104 = v51;
      *v50 = 136380675;
      v109 = v54;
      v110 = *&v53;
      v111 = v56;
      v112 = v55;
      type metadata accessor for MKCoordinateRegion(0);
    }

    goto LABEL_47;
  }

  v34 = *(v1 + 6);
  v109 = *v1;
  v110 = v2;
  v111 = v3;
  v112 = v4;
  v113 = v102;
  v114 = v5;
  v115 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB688, &qword_213D98008);
  MEMORY[0x21604E7B0](&v104);
  v92 = v104;
  v35 = v106;
  v93 = v105;
  v94 = v107;
  v95 = v108;
  v36 = [a1 camera];
  [v36 centerCoordinate];
  v99 = v37;
  v101 = v38;
  [v36 centerCoordinateDistance];
  v40 = v39;
  [v36 heading];
  v97 = v41;
  [v36 pitch];
  v96 = v42;

  v43.f64[0] = v94;
  v43.f64[1] = v95;
  v44.f64[0] = v92;
  v44.f64[1] = v93;
  v45.f64[0] = v97;
  v45.f64[1] = v96;
  v46.f64[0] = v99;
  v46.f64[1] = v101;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v44, v46), vceqq_f64(v43, v45)))) & 1) != 0 && v35 == v40)
  {
    if (qword_27C8E99D0 != -1)
    {
      swift_once();
    }

    v47 = sub_213D9046C();
    __swift_project_value_buffer(v47, qword_27C8F7330);
    v48 = sub_213D9044C();
    v49 = sub_213D91BBC();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_48;
    }

    v50 = swift_slowAlloc();
    v51 = COERCE_DOUBLE(swift_slowAlloc());
    v104 = v51;
    *v50 = 136380675;
    v109 = v92;
    v110 = *&v93;
    v111 = v35;
    v112 = v94;
    v113 = v95;
LABEL_47:
    v85 = sub_213D9194C();
    v87 = sub_213D63E10(v85, v86, &v104);

    *(v50 + 4) = v87;
    _os_log_impl(&dword_213CCA000, v48, v49, "mapview == model %{private}s", v50, 0xCu);
    v88 = __swift_destroy_boxed_opaque_existential_1(*&v51);
    MEMORY[0x21604FC60](*&v51, -1, -1, v88);
    MEMORY[0x21604FC60](v50, -1, -1);
LABEL_48:

    return;
  }

  if (qword_27C8E99D0 != -1)
  {
    swift_once();
  }

  v73 = sub_213D9046C();
  __swift_project_value_buffer(v73, qword_27C8F7330);
  v74 = sub_213D9044C();
  v75 = sub_213D91BBC();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v91 = v5;
    v77 = COERCE_DOUBLE(swift_slowAlloc());
    v104 = v77;
    *v76 = 136380675;
    v109 = v92;
    v110 = *&v93;
    v111 = v35;
    v112 = v94;
    v113 = v95;
    v78 = sub_213D9194C();
    v80 = v3;
    v81 = v4;
    v82 = sub_213D63E10(v78, v79, &v104);

    *(v76 + 4) = v82;
    v4 = v81;
    v3 = v80;
    _os_log_impl(&dword_213CCA000, v74, v75, "mapview -> model %{private}s", v76, 0xCu);
    v83 = __swift_destroy_boxed_opaque_existential_1(*&v77);
    v5 = v91;
    MEMORY[0x21604FC60](*&v77, -1, -1, v83);
    MEMORY[0x21604FC60](v76, -1, -1);
  }

  v109 = v103;
  v110 = v2;
  v111 = v3;
  v112 = v4;
  v113 = v102;
  v114 = v5;
  v115 = v34;
  v104 = v99;
  v105 = v101;
  v106 = v40;
  v107 = v97;
  v108 = v96;

  sub_213D915FC();
}

uint64_t sub_213D2BC0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213D2BC74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D2BCD4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_213D2BD34(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {

    return a1;
  }

  else
  {
  }
}

id sub_213D2BD84(id result, void *a2)
{
  if (result != 1)
  {
    v4 = result;
    v3 = a2;

    return v4;
  }

  return result;
}

void sub_213D2BDC8(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_213D2BE0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_213D2BED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D918AC();

  return sub_213D2BF34(a1, v6, a2, a3);
}

unint64_t sub_213D2BF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_213D918DC();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_213D2C0BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_213D2CAC8(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_213D91F2C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 1);
          if (v13 >= *(v12 - 3))
          {
            break;
          }

          v14 = *(v12 + 4);
          v15 = *(v12 + 1);
          v16 = *(v12 - 8);
          *(v12 + 8) = *(v12 - 24);
          *(v12 + 24) = v16;
          *(v12 - 3) = v13;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for MKMapRect(0);
      v7 = sub_213D91A4C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_213D2C214(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_213D2C214(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_213D2C9B0(v8);
      v8 = result;
    }

    v85 = (v8 + 16);
    v86 = *(v8 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v8 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_213D2C7AC((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = 32 * v9;
      v12 = (*a3 + 32 * v9);
      v14 = *v12;
      v13 = v12 + 8;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 4;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
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
        v21 = 32 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v28 + v11);
            v24 = v28 + v21;
            v25 = *v23;
            v26 = v23[1];
            v27 = *(v24 - 16);
            *v23 = *(v24 - 32);
            v23[1] = v27;
            *(v24 - 32) = v25;
            *(v24 - 16) = v26;
          }

          ++v22;
          --v20;
          v21 -= 32;
          v11 += 32;
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
      result = sub_213D2C9C4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v39 = *(v8 + 24);
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      result = sub_213D2C9C4((v39 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v40;
    v41 = v8 + 32;
    v42 = (v8 + 32 + 16 * v5);
    *v42 = v9;
    v42[1] = v7;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = *(v8 + 32);
          v44 = *(v8 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v8 + 16 * v40);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v41 + 16 * v5);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v8 + 16 * v40);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v41 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v40)
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

        v80 = (v41 + 16 * (v5 - 1));
        v81 = *v80;
        v82 = (v41 + 16 * v5);
        v83 = v82[1];
        sub_213D2C7AC((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v8 + 16);
        if (v5 >= v84)
        {
          goto LABEL_101;
        }

        v40 = v84 - 1;
        result = memmove((v41 + 16 * v5), v82 + 2, 16 * (v84 - 1 - v5));
        *(v8 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v41 + 16 * v40;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v8 + 16 * v40);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v41 + 16 * v5);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7 - 32;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 56);
    v36 = *(v34 + 40);
    v37 = *(v34 + 16);
    *(v34 + 32) = *v34;
    *(v34 + 48) = v37;
    *v34 = v32;
    *(v34 + 8) = v36;
    *(v34 + 24) = v35;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
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

uint64_t sub_213D2C7AC(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
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
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 4;
    v5 -= 4;
    v19 = v14;
    do
    {
      v20 = v5 + 4;
      v21 = *(v19 - 4);
      v19 -= 4;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 4, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 4;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v24 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

char *sub_213D2C9C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB6A0, &unk_213D98020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_213D2CADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_213D91A7C())
  {
    sub_213D91EFC();
    v13 = sub_213D91EEC();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_213D91A7C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_213D91A5C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_213D91DAC();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_213D2BED8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_213D2CDC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {

LABEL_28:
    v25 = 1;
    v9 = 0.0;
    v4 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    goto LABEL_29;
  }

  v29 = a1;

  sub_213D2C0BC(&v29);

  v3 = *(v29 + 2);
  if (!v3)
  {

    goto LABEL_28;
  }

  v4 = fmin(*(v29 + 5), INFINITY);
  v5 = vmaxnmq_f64(vaddq_f64(*(v29 + 2), *(v29 + 3)), vdupq_n_s64(0xFFF0000000000000));
  v6 = v3 == 1;
  v28 = *(v29 + 2);
  if (v3 == 1)
  {
    v26 = v5;

    *&v7 = *&vsubq_f64(v26, v28);
    v8 = v26.f64[1] - v4;
    v9 = v28.f64[0];
  }

  else
  {
    v10 = -v3;
    v11 = 1;
    v12.f64[0] = 0.0;
    v13 = 0.0;
    v14 = 1;
    do
    {
      v15 = v13;
      v9 = v12.f64[0];
      if (v14)
      {
        v16 = -INFINITY;
      }

      else
      {
        v16 = v13;
      }

      v17 = &v29[32 * v11++ + 48];
      v18 = v5;
      while (1)
      {
        v12 = v17[-1];
        v19 = vmovn_s64(vcgtq_f64(v12, v18)).u8[0];
        v20 = vaddq_f64(v12, *v17);
        v21 = vcgeq_f64(v20, v18);
        if (v17[-1].f64[1] < v4)
        {
          v4 = v17[-1].f64[1];
        }

        v5 = vbslq_s8(v21, v20, v18);
        if (v19)
        {
          v13 = vsubq_f64(v12, v18).f64[0];
          if (v16 < v13)
          {
            break;
          }
        }

        v17 += 2;
        ++v11;
        v18 = v5;
        if (v10 + v11 == 1)
        {
          goto LABEL_19;
        }
      }

      v14 = 0;
    }

    while (v10 + v11);
    v14 = v6;
    v15 = v13;
    v9 = v17[-1].f64[0];
LABEL_19:
    v22 = v5.f64[1];
    v27 = v5.f64[0];

    v7 = v27 - v28.f64[0];
    v8 = v22 - v4;
    if ((v14 & 1) != 0 || (v23 = *(MEMORY[0x277CD4BB8] + 16), v23 - v7 >= v15))
    {
      v9 = v28.f64[0];
    }

    else
    {
      v7 = v23 - v15;
    }
  }

  if (v9 == *MEMORY[0x277CD4BB0] && v4 == *(MEMORY[0x277CD4BB0] + 8))
  {
    goto LABEL_28;
  }

  v25 = 0;
LABEL_29:
  *a2 = v9;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v25;
}

uint64_t sub_213D2CFE0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_213CE2B34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_213D2D09C(uint64_t a1@<X8>)
{
  v2 = *(v1 + qword_27C8EB3F0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_213D48CE4(*(v2 + 16), 0);
    v5 = sub_213D48EFC(v91, (v4 + 32), v3, v2);
    v6 = *&v91[0];
    swift_bridgeObjectRetain_n();

    sub_213CDE778(v6);
    if (v5 != v3)
    {
      __break(1u);
      goto LABEL_133;
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v7 = sub_213D91EAC();
  }

  else
  {
    sub_213D91F6C();
    v7 = v4;
  }

  v8 = *(v89 + qword_27C8EB3F8 + 16);
  v9 = *(v8 + 16);
  if (!v9)
  {
    v10 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v83 = v7;
  v10 = sub_213D48CE4(v9, 0);
  v11 = sub_213D48EFC(v91, (v10 + 32), v9, v8);
  v12 = *&v91[0];
  swift_bridgeObjectRetain_n();

  sub_213CDE778(v12);
  if (v11 != v9)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v7 = v83;
LABEL_12:

  if ((v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v13 = sub_213D91EAC();
  }

  else
  {
    sub_213D91F6C();
    v13 = v10;
  }

  *&v91[0] = v7;
  sub_213D6E828(v13);
  v14 = *&v91[0];
  v15 = *(v89 + qword_27C8EB400 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    v84 = *&v91[0];
    v17 = sub_213D48CE4(v16, 0);
    v18 = sub_213D48EFC(v91, (v17 + 32), v16, v15);
    v19 = *&v91[0];
    swift_bridgeObjectRetain_n();

    sub_213CDE778(v19);
    if (v18 == v16)
    {

      v14 = v84;
      goto LABEL_19;
    }

LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    return;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_19:

  if ((v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
  {
    goto LABEL_59;
  }

  sub_213D91F6C();
  v20 = v17;
  while (1)
  {

    *&v91[0] = v14;
    sub_213D6E828(v20);
    v21 = *&v91[0];
    if (*&v91[0] >> 62)
    {
      v22 = sub_213D91EBC();
      if (!v22)
      {
LABEL_38:
        v24 = MEMORY[0x277D84F90];
        goto LABEL_39;
      }
    }

    else
    {
      v22 = *((*&v91[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_38;
      }
    }

    if (v22 < 1)
    {
      goto LABEL_135;
    }

    v23 = 0;
    v14 = v21 & 0xC000000000000001;
    v24 = MEMORY[0x277D84F90];
    do
    {
      if (v14)
      {
        v25 = MEMORY[0x21604EF80](v23, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v23 + 32);
        swift_unknownObjectRetain();
      }

      [v25 coordinate];
      v26 = MKMapPointForCoordinate(v93);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_213D70330(0, *(v24 + 2) + 1, 1, v24);
      }

      v28 = *(v24 + 2);
      v27 = *(v24 + 3);
      if (v28 >= v27 >> 1)
      {
        v24 = sub_213D70330((v27 > 1), v28 + 1, 1, v24);
      }

      ++v23;
      swift_unknownObjectRelease();
      *(v24 + 2) = v28 + 1;
      v29 = &v24[32 * v28];
      *(v29 + 2) = v26;
      *(v29 + 6) = 0;
      *(v29 + 7) = 0;
    }

    while (v22 != v23);
LABEL_39:

    v30 = *(v89 + qword_27C8EB420 + 16);
    v31 = *(v30 + 16);
    if (v31)
    {
      break;
    }

    v32 = MEMORY[0x277D84F90];
    *&v91[0] = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

LABEL_44:
    if ((v32 & 0x4000000000000000) != 0)
    {
      goto LABEL_60;
    }

    v34 = *(v32 + 16);
    if (!v34)
    {
      goto LABEL_61;
    }

LABEL_46:
    v35 = 0;
    while (1)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x21604EF80](v35, v32);
      }

      else
      {
        if (v35 >= *(v32 + 16))
        {
          goto LABEL_58;
        }

        v36 = *(v32 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if ([v36 pointCount] <= 0)
      {
      }

      else
      {
        sub_213D91DEC();
        v14 = *(*&v91[0] + 16);
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
      }

      ++v35;
      if (v38 == v34)
      {
        v39 = *&v91[0];
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v20 = sub_213D91EAC();
  }

  v14 = *(v89 + qword_27C8EB420 + 24);
  v32 = sub_213D48CE4(*(v30 + 16), 0);
  v85 = sub_213D48EFC(v91, (v32 + 32), v31, v30);
  v33 = *&v91[0];
  swift_bridgeObjectRetain_n();

  sub_213CDE778(v33);
  if (v85 != v31)
  {
    goto LABEL_136;
  }

  *&v91[0] = MEMORY[0x277D84F90];
  if ((v32 & 0x8000000000000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_60:
  v34 = sub_213D91EBC();
  if (v34)
  {
    goto LABEL_46;
  }

LABEL_61:
  v39 = MEMORY[0x277D84F90];
LABEL_62:
  v86 = v39;

  v40 = *(v89 + qword_27C8EB428 + 16);
  v41 = *(v40 + 16);
  if (!v41)
  {
    v43 = MEMORY[0x277D84F90];
    *&v91[0] = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_82;
  }

  v42 = *(v89 + qword_27C8EB428 + 24);
  v43 = sub_213D48CE4(*(v40 + 16), 0);
  v44 = sub_213D48EFC(v91, (v43 + 32), v41, v40);
  v81 = *&v91[0];
  v82 = v44;
  swift_bridgeObjectRetain_n();
  v80 = v42;

  sub_213CDE778(v81);
  if (v82 != v41)
  {
    goto LABEL_137;
  }

  *&v91[0] = MEMORY[0x277D84F90];
  if ((v43 & 0x8000000000000000) != 0)
  {
    goto LABEL_82;
  }

LABEL_67:
  if ((v43 & 0x4000000000000000) == 0)
  {
    v45 = *(v43 + 16);
    if (v45)
    {
      goto LABEL_69;
    }

    goto LABEL_83;
  }

LABEL_82:
  while (1)
  {
    v45 = sub_213D91EBC();
    if (!v45)
    {
      break;
    }

LABEL_69:
    v46 = 0;
    while (1)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x21604EF80](v46, v43);
      }

      else
      {
        if (v46 >= *(v43 + 16))
        {
          goto LABEL_81;
        }

        v47 = *(v43 + 8 * v46 + 32);
      }

      v48 = v47;
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if ([v47 pointCount] <= 0)
      {
      }

      else
      {
        sub_213D91DEC();
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
      }

      ++v46;
      if (v49 == v45)
      {
        v50 = *&v91[0];
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
  }

LABEL_83:
  v50 = MEMORY[0x277D84F90];
LABEL_84:

  if (v86 < 0 || (v86 & 0x4000000000000000) != 0)
  {
    goto LABEL_127;
  }

  sub_213D91F6C();
  v51 = v86;
LABEL_87:

  if (v50 < 0 || (v50 & 0x4000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
    v52 = sub_213D91EAC();
  }

  else
  {
    sub_213D91F6C();
    v52 = v50;
  }

  *&v91[0] = v51;
  sub_213D6E810(v52);
  v53 = *&v91[0];
  v54 = *(v89 + qword_27C8EB430 + 16);
  v55 = *(v54 + 16);
  if (!v55)
  {
    v56 = MEMORY[0x277D84F90];
    goto LABEL_94;
  }

  v87 = *&v91[0];
  v56 = sub_213D48CE4(v55, 0);
  v90 = sub_213D48EFC(v91, (v56 + 32), v55, v54);
  v50 = *&v91[0];
  swift_bridgeObjectRetain_n();

  sub_213CDE778(v50);
  if (v90 != v55)
  {
    goto LABEL_138;
  }

  v53 = v87;
LABEL_94:

  if ((v56 & 0x8000000000000000) != 0 || (v56 & 0x4000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
    v57 = sub_213D91EAC();
  }

  else
  {
    sub_213D91F6C();
    v57 = v56;
  }

  *&v91[0] = v53;
  sub_213D6E810(v57);
  v58 = *&v91[0];
  if (*&v91[0] >> 62)
  {
    v59 = sub_213D91EBC();
    if (v59)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v59 = *((*&v91[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
LABEL_99:
      v60 = 0;
      v61 = *MEMORY[0x277CD4BB8];
      v62 = *(MEMORY[0x277CD4BB8] + 16);
      v89 = v58 & 0xFFFFFFFFFFFFFF8;
      v63 = *MEMORY[0x277CD4BB8] + v62;
      do
      {
        if ((v58 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x21604EF80](v60, v58);
          v65 = __OFADD__(v60++, 1);
          if (v65)
          {
            goto LABEL_125;
          }
        }

        else
        {
          if (v60 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_126;
          }

          v64 = *(v58 + 32 + 8 * v60);
          swift_unknownObjectRetain();
          v65 = __OFADD__(v60++, 1);
          if (v65)
          {
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
            v51 = sub_213D91EAC();

            goto LABEL_87;
          }
        }

        [v64 boundingMapRect];
        v68 = v67;
        v70 = v69;
        v71 = v66;
        v73 = v72;
        v74 = v67 + v66;
        if (v68 < -v62 || v62 < v74)
        {
          if (v62 < v66)
          {
            do
            {
              v71 = v71 - v62;
            }

            while (v62 < v71);
            v74 = v68 + v71;
          }

          while (v63 < v74)
          {
            v68 = v68 - v62;
            v74 = v71 + v68;
          }

          while (v74 < v61)
          {
            v68 = v62 + v68;
            v74 = v71 + v68;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_213D70330(0, *(v24 + 2) + 1, 1, v24);
        }

        v77 = *(v24 + 2);
        v76 = *(v24 + 3);
        v50 = v77 + 1;
        if (v77 >= v76 >> 1)
        {
          v24 = sub_213D70330((v76 > 1), v77 + 1, 1, v24);
        }

        swift_unknownObjectRelease();
        *(v24 + 2) = v50;
        v78 = &v24[32 * v77];
        *(v78 + 4) = v68;
        *(v78 + 5) = v70;
        *(v78 + 6) = v71;
        *(v78 + 7) = v73;
      }

      while (v60 != v59);
    }
  }

  sub_213D2CDC8(v24, v91);
  v79 = v91[1];
  *a1 = v91[0];
  *(a1 + 16) = v79;
  *(a1 + 32) = v92;
}

void *sub_213D2DC44(uint64_t a1)
{
  v2 = sub_213D91CCC();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_213D49164(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

uint64_t sub_213D2DCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213D91CCC();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_213D49050(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for UserAnnotationViewModel(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_213D2DD70(void *a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for UserAnnotationViewModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v21 = a3;
    if ([v21 showsUserLocation] && (v14 = *(v3 + qword_27C8EB418)) != 0)
    {
      v15 = v14;

      sub_213D2DCB4(v16, v9);

      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        sub_213CD8330(v9, &qword_27C8EB680, &unk_213D97FF0);
      }

      else
      {
        sub_213D49AE0(v9, v13, type metadata accessor for UserAnnotationViewModel);
        v22 = a1;
        v23 = a2;
        v18 = a2;
        v19 = a1;
        sub_213D27C18(v15, &v22);

        sub_213D2BDC8(v22, v23);
        sub_213D49B70(v13, type metadata accessor for UserAnnotationViewModel);
      }
    }

    else
    {
      v17 = v21;
    }
  }
}

char *sub_213D2DFCC(uint64_t a1, void *a2)
{
  v3 = v2;
  v72 = a2;
  v4 = type metadata accessor for UserAnnotationViewModel(0);
  v70 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v69 - v8;
  v10 = type metadata accessor for CustomAnnotationViewModel(0);
  v71 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MarkerAnnotationViewModel(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v69 - v18;
  type metadata accessor for MapBridgingMarker();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    v22 = *(v2 + qword_27C8EB400 + 16);
    if (*(v22 + 16))
    {
      swift_unknownObjectRetain();

      v23 = sub_213CE2448(v21);
      if (v24)
      {
        sub_213D4CAEC(*(v22 + 56) + *(v14 + 72) * v23, v19, type metadata accessor for MarkerAnnotationViewModel);

        if (v72)
        {
          v25 = v72;
          v26 = sub_213D9190C();
          v27 = [v25 dequeueReusableAnnotationViewWithIdentifier:v26 forAnnotation:v21];

          objc_opt_self();
          v28 = swift_dynamicCastObjCClassUnconditional();
        }

        else
        {
          sub_213CE2B34(0, &unk_27C8EBB10, 0x277CD4ED0);
          v51 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v52 = sub_213D9190C();
          v28 = [v51 initWithAnnotation:v21 reuseIdentifier:v52];
        }

        sub_213D2797C(v28, 0);
        swift_unknownObjectRelease();
        v53 = type metadata accessor for MarkerAnnotationViewModel;
        v54 = v19;
LABEL_39:
        sub_213D49B70(v54, v53);
        return v28;
      }

      swift_unknownObjectRelease();
    }

    v29 = *(v3 + qword_27C8EB3F8 + 16);
    if (*(v29 + 16))
    {
      swift_unknownObjectRetain();

      v30 = sub_213CE2448(v21);
      if (v31)
      {
        sub_213D4CAEC(*(v29 + 56) + *(v14 + 72) * v30, v16, type metadata accessor for MarkerAnnotationViewModel);

        if (v72)
        {
          v32 = v72;
          v33 = sub_213D9190C();
          v34 = [v32 dequeueReusableAnnotationViewWithIdentifier:v33 forAnnotation:v21];

          objc_opt_self();
          v28 = swift_dynamicCastObjCClassUnconditional();
        }

        else
        {
          sub_213CE2B34(0, &unk_27C8EBB10, 0x277CD4ED0);
          v64 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v65 = sub_213D9190C();
          v28 = [v64 initWithAnnotation:v21 reuseIdentifier:v65];
        }

        sub_213D2797C(v28, 0);
        swift_unknownObjectRelease();
        v53 = type metadata accessor for MarkerAnnotationViewModel;
        v54 = v16;
        goto LABEL_39;
      }

      swift_unknownObjectRelease();
    }
  }

  type metadata accessor for MapBridgingCustomAnnotation();
  v35 = swift_dynamicCastClass();
  if (v35)
  {
    v36 = *(v3 + qword_27C8EB3F0 + 16);
    if (*(v36 + 16))
    {
      v37 = v35;
      swift_unknownObjectRetain();

      v38 = sub_213CE249C(v37);
      if (v39)
      {
        sub_213D4CAEC(*(v36 + 56) + *(v71 + 72) * v38, v12, type metadata accessor for CustomAnnotationViewModel);

        if (v72)
        {
          v40 = v72;
          v41 = sub_213D9190C();
          v42 = [v40 dequeueReusableAnnotationViewWithIdentifier:v41 forAnnotation:v37];

          type metadata accessor for SwiftUIAnnotationView();
          v28 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          type metadata accessor for SwiftUIAnnotationView();
          v66 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v67 = sub_213D9190C();
          v28 = [v66 initWithAnnotation:v37 reuseIdentifier:v67];
        }

        sub_213D2763C(v28, 0);
        swift_unknownObjectRelease();
        v53 = type metadata accessor for CustomAnnotationViewModel;
        v54 = v12;
        goto LABEL_39;
      }

      swift_unknownObjectRelease();
    }
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return 0;
  }

  v43 = v3 + qword_27C8EB410;

  v45 = sub_213D2DC44(v44);

  if (!v45)
  {
LABEL_27:
    v55 = v3 + qword_27C8EB408;

    v57 = sub_213D2DC44(v56);

    if (v57)
    {
      v58 = *(v55 + 16);
      if (*(v58 + 16))
      {

        v59 = sub_213CE23F4(v57);
        if (v60)
        {
          sub_213D4CAEC(*(v58 + 56) + *(v70 + 72) * v59, v6, type metadata accessor for UserAnnotationViewModel);

          v28 = sub_213D27D94(v57, v72, v61);

          v50 = v6;
          goto LABEL_31;
        }
      }
    }

    return 0;
  }

  v46 = *(v43 + 16);
  if (!*(v46 + 16))
  {
LABEL_26:

    goto LABEL_27;
  }

  v47 = sub_213CE23F4(v45);
  if ((v48 & 1) == 0)
  {

    goto LABEL_26;
  }

  sub_213D4CAEC(*(v46 + 56) + *(v70 + 72) * v47, v9, type metadata accessor for UserAnnotationViewModel);

  v28 = sub_213D27D94(v45, v72, v49);

  v50 = v9;
LABEL_31:
  sub_213D49B70(v50, type metadata accessor for UserAnnotationViewModel);
  v62 = *(v3 + qword_27C8EB418);
  *(v3 + qword_27C8EB418) = v28;
  v63 = v28;

  return v28;
}

uint64_t sub_213D2E864@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, _UNKNOWN **a11)
{
  v14 = *a1;
  v15 = *a3;
  v29 = 0xA000000000000000;
  sub_213D9156C();
  *a9 = v26;
  *(a9 + 8) = v27;
  *(a9 + 24) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 32) = 0;
  *(a9 + 56) = 1;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0;
  v26 = a8;
  v27 = a10;
  v28 = a11;
  v16 = type metadata accessor for MapContentView(0, &v26);
  v17 = v16[15];
  v26 = a8;
  *&v27 = MEMORY[0x277D84A98];
  *(&v27 + 1) = *(&a10 + 1);
  v28 = &protocol witness table for Never;
  type metadata accessor for MapSelectionManagerBox(255, &v26);
  v18 = sub_213D9162C();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = a9 + v16[16];
  sub_213D1FDB0(*a9, *(a9 + 8), *(a9 + 16), *(a9 + 24));
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = v14;
  *(a9 + 24) = 0;
  sub_213D4A7D0(a2, a9 + 32, qword_27C8EB6F0, &qword_213D98050);
  *(a9 + 104) = v15;
  v20 = sub_213D91C7C();
  (*(*(v20 - 8) + 40))(a9 + v17, a4, v20);
  *v19 = a5;
  *(v19 + 8) = a6 & 1;
  return (*(*(a10 - 8) + 32))(a9 + v16[17], a7, a10);
}

uint64_t sub_213D2EA78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _UNKNOWN **a12)
{
  v15 = a1[1];
  v24 = a1[2];
  v25 = *a1;
  v16 = *a3;
  v33 = 0xA000000000000000;
  sub_213D9156C();
  v17 = v31;
  *a9 = v30;
  *(a9 + 16) = v17;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 56) = 1;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0;
  *&v30 = a8;
  *(&v30 + 1) = a10;
  v31 = a11;
  v32 = a12;
  v18 = type metadata accessor for MapContentView(0, &v30);
  v19 = v18[15];
  *&v30 = a8;
  *(&v30 + 1) = MEMORY[0x277D84A98];
  v31 = a11;
  v32 = &protocol witness table for Never;
  type metadata accessor for MapSelectionManagerBox(255, &v30);
  v20 = sub_213D9162C();
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  if (v15)
  {
    sub_213D1FDB0(*a9, *(a9 + 8), *(a9 + 16), *(a9 + 24));
    *a9 = v25;
    *(a9 + 8) = v15;
    *(a9 + 16) = v24;
    *(a9 + 24) = 1;
  }

  v21 = a9 + v18[16];
  sub_213D4A7D0(a2, a9 + 32, qword_27C8EB6F0, &qword_213D98050);
  *(a9 + 104) = v16;
  v22 = sub_213D91C7C();
  (*(*(v22 - 8) + 40))(a9 + v19, a4, v22);
  *v21 = a5;
  *(v21 + 8) = a6 & 1;
  return (*(*(a10 - 8) + 32))(a9 + v18[17], a7, a10);
}

uint64_t sub_213D2ECA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v14 = *a1;
  v15 = *a3;
  v30 = 0xA000000000000000;
  sub_213D9156C();
  *a9 = v27;
  *(a9 + 8) = v28;
  *(a9 + 24) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 32) = 0;
  *(a9 + 56) = 1;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0;
  v27 = a8;
  v28 = a10;
  v29 = a11;
  v16 = type metadata accessor for MapSelectableContentView(0, &v27);
  v17 = v16[15];
  v18 = *(*(&a10 + 1) + 8);
  v27 = a8;
  *&v28 = a8;
  *(&v28 + 1) = v18;
  v29 = *(&a10 + 1);
  type metadata accessor for MapSelectionManagerBox(255, &v27);
  v19 = sub_213D9162C();
  (*(*(v19 - 8) + 56))(a9 + v17, 1, 1, v19);
  v20 = a9 + v16[16];
  sub_213D1FDB0(*a9, *(a9 + 8), *(a9 + 16), *(a9 + 24));
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = v14;
  *(a9 + 24) = 0;
  sub_213D4A7D0(a2, a9 + 32, qword_27C8EB6F0, &qword_213D98050);
  *(a9 + 104) = v15;
  v21 = sub_213D91C7C();
  (*(*(v21 - 8) + 40))(a9 + v17, a4, v21);
  *v20 = a5;
  *(v20 + 8) = a6 & 1;
  return (*(*(a10 - 8) + 32))(a9 + v16[17], a7, a10);
}

uint64_t sub_213D2EEA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = a1[1];
  v25 = a1[2];
  v26 = *a1;
  v16 = *a3;
  v34 = 0xA000000000000000;
  sub_213D9156C();
  v17 = v32;
  *a9 = v31;
  *(a9 + 16) = v17;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 56) = 1;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0;
  *&v31 = a8;
  *(&v31 + 1) = a10;
  v32 = a11;
  v33 = a12;
  v18 = type metadata accessor for MapSelectableContentView(0, &v31);
  v19 = v18[15];
  v20 = *(a11 + 8);
  *&v31 = a8;
  *(&v31 + 1) = a8;
  v32 = v20;
  v33 = a11;
  type metadata accessor for MapSelectionManagerBox(255, &v31);
  v21 = sub_213D9162C();
  (*(*(v21 - 8) + 56))(a9 + v19, 1, 1, v21);
  if (v15)
  {
    sub_213D1FDB0(*a9, *(a9 + 8), *(a9 + 16), *(a9 + 24));
    *a9 = v26;
    *(a9 + 8) = v15;
    *(a9 + 16) = v25;
    *(a9 + 24) = 1;
  }

  v22 = a9 + v18[16];
  sub_213D4A7D0(a2, a9 + 32, qword_27C8EB6F0, &qword_213D98050);
  *(a9 + 104) = v16;
  v23 = sub_213D91C7C();
  (*(*(v23 - 8) + 40))(a9 + v19, a4, v23);
  *v22 = a5;
  *(v22 + 8) = a6 & 1;
  return (*(*(a10 - 8) + 32))(a9 + v18[17], a7, a10);
}

uint64_t MapSelectableContentView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = a1;
  v38 = a2;
  v4 = *(a1 + 24);
  v32 = v4;
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v8 + 8);
  *&v40 = v7;
  *(&v40 + 1) = v7;
  v41 = v9;
  v42 = v8;
  v10 = v9;
  v35 = v8;
  v36 = v9;
  v11 = v8;
  type metadata accessor for MapSelectionManagerBox(255, &v40);
  sub_213D9162C();
  v12 = sub_213D91C7C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v33 = *(v3 + 40);
  *&v40 = v7;
  *(&v40 + 1) = v7;
  v41 = v4;
  v42 = v10;
  v43 = v11;
  v44 = v33;
  v16 = type metadata accessor for _MapContentView(0, &v40);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  sub_213D2F5E8();
  v45 = v47;
  v46 = v48;
  sub_213CE2C28(v2 + 32, &v40, qword_27C8EB6F0, &qword_213D98050);
  v39 = *(v2 + 104);
  (*(v13 + 16))(v15, v2 + *(v3 + 60), v12);
  v23 = *(v3 + 68);
  v24 = v2 + *(v3 + 64);
  v25 = *v24;
  LOBYTE(v3) = *(v24 + 8);
  v26 = v2 + v23;
  v27 = v37;
  v28 = v32;
  (*(v34 + 16))(v37, v26, v32);
  sub_213D2F474(&v45, &v40, &v39, v15, v25, v3, v27, v7, v19, v7, v28, v36, v35, v33);
  swift_getWitnessTable();
  v29 = *(v17 + 16);
  v29(v22, v19, v16);
  v30 = *(v17 + 8);
  v30(v19, v16);
  v29(v38, v22, v16);
  return (v30)(v22, v16);
}

uint64_t sub_213D2F474@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = *a1;
  v18 = *a2;
  *(a9 + 40) = a2[1];
  v19 = a2[3];
  *(a9 + 56) = a2[2];
  *(a9 + 72) = v19;
  v20 = *a3;
  *(a9 + 16) = *(a1 + 16);
  *(a9 + 88) = *(a2 + 64);
  *(a9 + 24) = v18;
  *(a9 + 96) = v20;
  v28 = a8;
  v29 = a10;
  v30 = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  v21 = type metadata accessor for _MapContentView(0, &v28);
  v22 = v21[19];
  v28 = a8;
  v29 = a10;
  v30 = a12;
  v31 = a13;
  type metadata accessor for MapSelectionManagerBox(255, &v28);
  sub_213D9162C();
  v23 = sub_213D91C7C();
  (*(*(v23 - 8) + 32))(a9 + v22, a4, v23);
  v24 = a9 + v21[20];
  *v24 = a5;
  *(v24 + 8) = a6 & 1;
  return (*(*(a11 - 8) + 32))(a9 + v21[21], a7, a11);
}

double sub_213D2F5E8()
{
  if (*(v1 + 24))
  {
    v4 = *(v1 + 16);

    sub_213D1DFC0(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
    sub_213D9160C();

    return sub_213D1E068(v4);
  }

  else
  {
    v3 = *v1;
    sub_213D1DFC0(*v1);

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBB80, &qword_213D985E8);
    sub_213D9159C();
    sub_213D1E068(v3);
  }

  return result;
}

uint64_t MapContentView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = a1;
  v37 = a2;
  v4 = *(a1 + 24);
  v32 = v4;
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 32);
  *&v39 = *(v6 + 16);
  *(&v39 + 1) = MEMORY[0x277D84A98];
  v8 = v39;
  v34 = v39;
  v40 = v7;
  v41 = &protocol witness table for Never;
  v9 = v7;
  v33 = v7;
  type metadata accessor for MapSelectionManagerBox(255, &v39);
  sub_213D9162C();
  v10 = sub_213D91C7C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = *(v3 + 40);
  *&v39 = v8;
  *(&v39 + 1) = MEMORY[0x277D84A98];
  v40 = v4;
  v41 = v9;
  v42 = &protocol witness table for Never;
  v43 = v14;
  v15 = type metadata accessor for _MapContentView(0, &v39);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  sub_213D2F5E8();
  v44 = v46;
  v45 = v47;
  sub_213CE2C28(v2 + 32, &v39, qword_27C8EB6F0, &qword_213D98050);
  v38 = *(v2 + 104);
  (*(v11 + 16))(v13, v2 + *(v3 + 60), v10);
  v22 = *(v3 + 68);
  v23 = v2 + *(v3 + 64);
  v24 = *v23;
  LOBYTE(v3) = *(v23 + 8);
  v25 = v35;
  v26 = v2 + v22;
  v27 = v32;
  (*(v36 + 16))(v35, v26, v32);
  sub_213D2F474(&v44, &v39, &v38, v13, v24, v3, v25, v34, v18, MEMORY[0x277D84A98], v27, v33, &protocol witness table for Never, v14);
  swift_getWitnessTable();
  v28 = *(v16 + 16);
  v28(v21, v18, v15);
  v29 = *(v16 + 8);
  v29(v18, v15);
  v28(v37, v21, v15);
  return (v29)(v21, v15);
}

void sub_213D2FAD8(void *a1)
{
  sub_213D4C63C(319, &qword_27C8EB778, &type metadata for MapCameraPosition, type metadata accessor for StateOrBinding);
  if (v3 <= 0x3F)
  {
    v15 = 0;
    v20 = v2;
    sub_213D4C63C(319, qword_27C8EB780, &type metadata for MapCameraBounds, MEMORY[0x277D83D88]);
    if (v5 <= 0x3F)
    {
      v16 = 0;
      v21 = v4;
      v22 = &type metadata for MapInteractionModes;
      v6 = a1[4];
      v7 = *(v6 + 8);
      v14[0] = a1[2];
      v14[1] = v14[0];
      v14[2] = v7;
      v14[3] = v6;
      type metadata accessor for MapSelectionManagerBox(255, v14);
      sub_213D9162C();
      v8 = sub_213D91C7C();
      if (v9 <= 0x3F)
      {
        v17 = 0;
        v23 = v8;
        sub_213D4C63C(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
        if (v11 <= 0x3F)
        {
          v18 = 0;
          v24 = v10;
          v12 = swift_checkMetadataState();
          if (v13 <= 0x3F)
          {
            v19 = 0;
            v25 = v12;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213D2FC64(void *a1)
{
  sub_213D4C63C(319, &qword_27C8EB778, &type metadata for MapCameraPosition, type metadata accessor for StateOrBinding);
  if (v3 <= 0x3F)
  {
    v14 = 0;
    v19 = v2;
    sub_213D4C63C(319, qword_27C8EB780, &type metadata for MapCameraBounds, MEMORY[0x277D83D88]);
    if (v5 <= 0x3F)
    {
      v15 = 0;
      v20 = v4;
      v21 = &type metadata for MapInteractionModes;
      v6 = a1[4];
      v13[0] = a1[2];
      v13[1] = MEMORY[0x277D84A98];
      v13[2] = v6;
      v13[3] = &protocol witness table for Never;
      type metadata accessor for MapSelectionManagerBox(255, v13);
      sub_213D9162C();
      v7 = sub_213D91C7C();
      if (v8 <= 0x3F)
      {
        v16 = 0;
        v22 = v7;
        sub_213D4C63C(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
        if (v10 <= 0x3F)
        {
          v17 = 0;
          v23 = v9;
          v11 = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v18 = 0;
            v24 = v11;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_213D2FDE4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(*(a3 + 24) - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v4 + 80);
  if (!*(v4 + 84))
  {
    ++v5;
  }

  v11 = *(v6 + 80);
  if (v5 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v12 + ((v13 + 23) & ~(v13 | 7)) + 1;
  v16 = v11 + 9;
  v17 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_31;
  }

  v18 = ((v16 + ((v15 + ((v13 + 119) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + *(*(*(a3 + 24) - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v22 < 2)
    {
LABEL_31:
      v24 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v14 + 112) & ~v14;
      if (v8 > 0x7FFFFFFE)
      {
        return (*(v7 + 48))((v16 + ((v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
      }

      v25 = *((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      if ((v25 + 1) >= 2)
      {
        return v25;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_31;
  }

LABEL_20:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 > 3)
    {
      LODWORD(v18) = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v18) = *a1;
      }
    }

    else if (v18 == 1)
    {
      LODWORD(v18) = *a1;
    }

    else
    {
      LODWORD(v18) = *a1;
    }
  }

  return v9 + (v18 | v23) + 1;
}

void sub_213D30028(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 64);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 + 84) == 0;
  v12 = *(v6 + 80) & 0xF8;
  v13 = v12 | 7;
  v14 = (v12 + 119) & ~(v12 | 7);
  v15 = (v12 + 23) & ~(v12 | 7);
  if (v11)
  {
    ++v7;
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v16 = v7 + v15 + 1;
  v17 = (v16 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v8 + 80);
  v19 = ((v18 + 9 + v17) & ~v18) + *(*(*(a4 + 24) - 8) + 64);
  v20 = a3 >= v10;
  v21 = a3 - v10;
  if (v21 != 0 && v20)
  {
    if (v19 <= 3)
    {
      v25 = ((v21 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v10 < a2)
  {
    v23 = ~v10 + a2;
    if (v19 < 4)
    {
      v24 = (v23 >> (8 * v19)) + 1;
      if (v19)
      {
        v27 = v23 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_59:
              if (v22 == 2)
              {
                *(a1 + v19) = v24;
              }

              else
              {
                *(a1 + v19) = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }

        *a1 = v27;
        *(a1 + 2) = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_59;
      }
    }

LABEL_56:
    if (v22)
    {
      *(a1 + v19) = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v19) = 0;
LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!v22)
  {
    goto LABEL_34;
  }

  *(a1 + v19) = 0;
  if (!a2)
  {
    return;
  }

LABEL_35:
  v28 = (((a1 & 0xFFFFFFFFFFFFFFF8) + v13 + 112) & ~v13);
  if (v9 > 0x7FFFFFFE)
  {
    v29 = *(v8 + 56);

    v29((v18 + 9 + (&v28[v16 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v18);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    if (v16 <= 3)
    {
      v30 = ~(-1 << (8 * v16));
    }

    else
    {
      v30 = -1;
    }

    if (v16)
    {
      v31 = v30 & (a2 - 0x7FFFFFFF);
      if (v16 <= 3)
      {
        v32 = v16;
      }

      else
      {
        v32 = 4;
      }

      bzero(v28, v16);
      if (v32 > 2)
      {
        if (v32 == 3)
        {
          *v28 = v31;
          v28[2] = BYTE2(v31);
        }

        else
        {
          *v28 = v31;
        }
      }

      else if (v32 == 1)
      {
        *v28 = v31;
      }

      else
      {
        *v28 = v31;
      }
    }
  }

  else
  {
    *((v28 + 15) & 0xFFFFFFFFFFFFFFF8) = a2;
  }
}

uint64_t sub_213D303BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v42 = a2;
  v41 = a1;
  v45 = a9;
  v63 = *MEMORY[0x277D85DE8];
  v57 = a3;
  v58 = a4;
  v59 = a6;
  v60 = a7;
  v15 = type metadata accessor for MapBridgingView(255, &v57);
  WitnessTable = swift_getWitnessTable();
  v57 = v15;
  v58 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = v15;
  v58 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = OpaqueTypeMetadata2;
  v58 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v57 = OpaqueTypeMetadata2;
  v58 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v22 = type metadata accessor for MapPreferenceWrapper(255, v19, v20, v21);
  v44 = sub_213D9057C();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v37 - v23;
  v24 = a3;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v60 = a6;
  v61 = a7;
  v62 = a8;
  v25 = type metadata accessor for _MapContentView.Child(0, &v57);
  v39 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v38 = &v37 - v29;
  v57 = v24;
  v58 = a4;
  v59 = a5;
  v60 = a6;
  v61 = a7;
  v62 = a8;
  type metadata accessor for _MapContentView(0, &v57);
  v50 = v24;
  v51 = a4;
  v52 = a5;
  v53 = a6;
  v54 = a7;
  v55 = a8;
  v56 = v41;
  swift_getWitnessTable();
  sub_213D9128C();
  v30 = v38;
  swift_dynamicCast();
  v31 = v39;
  (*(v39 + 16))(v27, v30, v25);
  v47 = v22;
  v48 = v25;
  v49 = swift_getWitnessTable();
  v32 = sub_213D903FC();
  sub_213CDDDA4(v27, sub_213CDE72C, v46, v25, MEMORY[0x277D84A98], v32, MEMORY[0x277D84AC0], v33);
  v34 = *(v31 + 8);
  v34(v27, v25);
  v35 = v40;
  sub_213CDF770(v57, v40);
  swift_getWitnessTable();
  sub_213D9129C();
  (*(v43 + 8))(v35, v44);
  return (v34)(v30, v25);
}

uint64_t sub_213D30858@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v169 = a8;
  v161 = a6;
  v162 = a7;
  v158 = a5;
  v159 = a4;
  v155 = a3;
  v152 = a2;
  v150 = a1;
  v129 = a9;
  v160 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA58, &qword_213D98430);
  v134 = *(v14 - 8);
  v135 = v14;
  MEMORY[0x28223BE20](v14);
  v132 = v15;
  v133 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v165 = &v128 - v17;
  v208 = a4;
  v209 = a5;
  v210 = a7;
  v211 = a8;
  type metadata accessor for MapSelectionManagerBox(255, &v208);
  sub_213D9162C();
  v163 = sub_213D91C7C();
  v18 = sub_213D9057C();
  v130 = *(v18 - 8);
  v131 = v18;
  MEMORY[0x28223BE20](v18);
  v164 = (&v128 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA60, &qword_213D98438);
  v138 = *(v20 - 8);
  v139 = v20;
  MEMORY[0x28223BE20](v20);
  v136 = v21;
  v137 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v167 = &v128 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA68, &qword_213D98440);
  v142 = *(v24 - 8);
  v143 = v24;
  MEMORY[0x28223BE20](v24);
  v140 = v25;
  v141 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v168 = &v128 - v27;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBA70, &qword_213D98448);
  v166 = *(v154 - 8);
  v157 = *(v166 + 64);
  MEMORY[0x28223BE20](v154);
  v156 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v170 = &v128 - v30;
  v153 = sub_213D9057C();
  v151 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v149 = &v128 - v31;
  v32 = type metadata accessor for _MapContentOutputs(0);
  MEMORY[0x28223BE20](v32 - 8);
  v171 = (&v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = sub_213D9059C();
  v145 = *(v147 - 8);
  v34 = v145;
  MEMORY[0x28223BE20](v147);
  v148 = &v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v128 - v37;
  v144 = &v128 - v37;
  v39 = sub_213D90C5C();
  v146 = *(v39 - 8);
  v40 = v146;
  MEMORY[0x28223BE20](v39);
  v42 = &v128 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for _MapContentInputs(0);
  v44 = v43 - 8;
  MEMORY[0x28223BE20](v43);
  v128 = &v128 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v128 - v48;
  v50 = *(v40 + 16);
  v50(v42, v150, v39, v47);
  v51 = *(v34 + 16);
  v52 = v38;
  v53 = v147;
  v51(v52, v152, v147);
  *&v49[*(v44 + 36)] = *MEMORY[0x277CEF7D0];
  (v50)(v49, v42, v39);
  v54 = v144;
  v51(&v49[*(v44 + 28)], v144, v53);
  v51(v148, v54, v53);
  sub_213D90F1C();
  (*(v145 + 8))(v54, v53);
  v55 = (*(v146 + 8))(v42, v39);
  v56 = v169;
  sub_213CD84E0(v55, v57, v58);
  v59 = sub_213D90F0C();
  sub_213CD848C(v59, v60, v61);
  v62 = sub_213D90F0C();
  sub_213CD8438(v62, v63, v64);
  v65 = sub_213D90F0C();
  sub_213CD83E4(v65, v66, v67);
  v68 = sub_213D90F0C();
  sub_213CD8390(v68, v69, v70);
  v71 = sub_213D90F0C();
  sub_213CD82DC(v71, v72, v73);
  sub_213D90F0C();
  v75 = v158;
  v74 = v159;
  v202 = v159;
  v203 = v158;
  v77 = v161;
  v76 = v162;
  v204 = v161;
  v205 = v162;
  v78 = v160;
  v206 = v56;
  v207 = v160;
  v208 = v159;
  v209 = v158;
  v210 = v161;
  v211 = v162;
  v212 = v56;
  v213 = v160;
  type metadata accessor for _MapContentView(255, &v208);
  v152 = sub_213D9057C();
  v79 = v149;
  sub_213D514F4(sub_213D48D6C, v152, v77, v149);
  v80 = *(v78 + 32);
  v150 = v49;
  v80(v79, v49, v77, v78);
  (*(v151 + 8))(v79, v153);
  v196 = v74;
  v197 = v75;
  v198 = v77;
  v199 = v76;
  v81 = v169;
  v200 = v169;
  v201 = v78;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  v83 = v152;
  sub_213D514F4(sub_213D48D84, v152, v82, v170);
  v190 = v74;
  v191 = v75;
  v192 = v77;
  v193 = v76;
  v194 = v81;
  v195 = v78;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB6F0, &qword_213D98050);
  sub_213D514F4(sub_213D48D9C, v83, v84, v168);
  v184 = v74;
  v185 = v75;
  v186 = v77;
  v187 = v76;
  v188 = v81;
  v189 = v78;
  sub_213D514F4(sub_213D48DB4, v83, &type metadata for MapInteractionModes, v167);
  v178 = v74;
  v179 = v75;
  v180 = v77;
  v181 = v76;
  v182 = v81;
  v183 = v78;
  sub_213D514F4(sub_213D48DCC, v83, v163, v164);
  v172 = v74;
  v173 = v75;
  v174 = v77;
  v175 = v76;
  v176 = v81;
  v177 = v78;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBA90, &unk_213D98458);
  v86 = v166;
  sub_213D514F4(sub_213D48DE4, v83, v85, v165);
  v87 = sub_213CD6C60();
  v88 = sub_213CD6C80();
  v89 = sub_213CD6F08();
  v90 = sub_213CD6F28();
  LODWORD(v155) = sub_213CD6F48();
  v91 = sub_213CD6EC8();
  v92 = v156;
  LODWORD(v153) = v91;
  v93 = v154;
  result = (*(v86 + 16))(v156, v170);
  if (v157 != 4)
  {
    __break(1u);
    goto LABEL_7;
  }

  LODWORD(v151) = v90;
  LODWORD(v152) = v89;
  v95 = *v92;
  v97 = *(v86 + 8);
  v96 = v86 + 8;
  v157 = v97;
  v97(v92, v93);
  v98 = v141;
  v99 = v142;
  v100 = v143;
  result = (*(v142 + 16))(v141, v168, v143);
  if (v140 != 4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  LODWORD(v149) = v95;
  LODWORD(v156) = v88;
  LODWORD(v148) = *v98;
  v101 = *(v99 + 8);
  v101(v98, v100);
  v103 = v137;
  v102 = v138;
  v104 = v139;
  result = (*(v138 + 16))(v137, v167, v139);
  if (v136 != 4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  LODWORD(v147) = v87;
  LODWORD(v146) = *v103;
  v166 = v96;
  v105 = v93;
  v106 = *(v102 + 8);
  v106(v103, v104);
  v107 = v164;
  v108 = sub_213CDF810(v164, v163);
  (*(v130 + 8))(v107, v131);
  v106(v167, v104);
  v101(v168, v100);
  v157(v170, v105);
  sub_213D49B70(v171, type metadata accessor for _MapContentOutputs);
  v110 = v133;
  v109 = v134;
  v111 = v135;
  result = (*(v134 + 32))(v133, v165, v135);
  if (v132 == 4)
  {
    LODWORD(v170) = *v110;
    (*(v109 + 8))(v110, v111);
    v171 = type metadata accessor for _MapContentInputs;
    v112 = v128;
    sub_213D49AE0(v150, v128, type metadata accessor for _MapContentInputs);
    v114 = v159;
    v113 = v160;
    v115 = v108;
    v116 = v158;
    v208 = v159;
    v209 = v158;
    v118 = v161;
    v117 = v162;
    v210 = v161;
    v211 = v162;
    v119 = v169;
    v212 = v169;
    v213 = v160;
    v120 = type metadata accessor for _MapContentView.Child(0, &v208);
    v121 = v129;
    *(v129 + 24) = v120;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v121);
    v123 = v156;
    *boxed_opaque_existential_0 = v147;
    *(boxed_opaque_existential_0 + 1) = v123;
    v124 = v151;
    *(boxed_opaque_existential_0 + 2) = v152;
    *(boxed_opaque_existential_0 + 3) = v124;
    v125 = v153;
    *(boxed_opaque_existential_0 + 4) = v155;
    *(boxed_opaque_existential_0 + 5) = v125;
    v126 = v148;
    *(boxed_opaque_existential_0 + 6) = v149;
    *(boxed_opaque_existential_0 + 7) = v126;
    *(boxed_opaque_existential_0 + 8) = v146;
    *(boxed_opaque_existential_0 + 9) = v115;
    *(boxed_opaque_existential_0 + 10) = v170;
    v208 = v114;
    v209 = v116;
    v210 = v118;
    v211 = v117;
    v212 = v119;
    v213 = v113;
    v127 = type metadata accessor for _MapContentView.Child(0, &v208);
    return sub_213D49AE0(v112, boxed_opaque_existential_0 + *(v127 + 108), v171);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_213D3155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v9 = type metadata accessor for _MapContentView(0, v15);
  v10 = *(v9 + 84);
  v14[2] = v9;
  v14[3] = a4;
  v11 = sub_213D9041C();
  sub_213D48E14(a1 + v10, sub_213D4CEC8, v14, a4, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v12);
  return v15[0];
}

uint64_t sub_213D31604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v12[2] = type metadata accessor for _MapContentView(0, v13);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  v9 = sub_213D9041C();
  sub_213D48E14(a1, sub_213D4CEC8, v12, v8, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);
  return v13[0];
}

uint64_t sub_213D316C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v12[2] = type metadata accessor for _MapContentView(0, v13);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB6F0, &qword_213D98050);
  v9 = sub_213D9041C();
  sub_213D48E14(a1 + 24, sub_213D4CEC8, v12, v8, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);
  return v13[0];
}

uint64_t sub_213D3177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v11[2] = type metadata accessor for _MapContentView(0, v12);
  v8 = sub_213D9041C();
  sub_213D48E14(a1 + 96, sub_213D4CEC8, v11, &type metadata for MapInteractionModes, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
  return v12[0];
}

uint64_t sub_213D31824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v12 = type metadata accessor for _MapContentView(0, &v19);
  v13 = *(v12 + 76);
  v17[2] = v12;
  v19 = a2;
  v20 = a3;
  v21 = a5;
  v22 = a6;
  type metadata accessor for MapSelectionManagerBox(255, &v19);
  sub_213D9162C();
  v18 = sub_213D91C7C();
  v14 = sub_213D9041C();
  sub_213D48E14(a1 + v13, sub_213D4CEC8, v17, v18, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);
  return v19;
}

uint64_t sub_213D31920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v8 = type metadata accessor for _MapContentView(0, v15);
  v9 = *(v8 + 80);
  v14[2] = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBA90, &unk_213D98458);
  v11 = sub_213D9041C();
  sub_213D48E14(a1 + v9, sub_213D48EF0, v14, v10, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v12);
  return v15[0];
}

unint64_t sub_213D319E0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  Value = AGGraphGetValue();
  v3 = Value[1];
  v4 = Value[2];
  *a1 = *Value;
  a1[1] = v3;
  a1[2] = v4;

  return sub_213D1DFC0(v4);
}

uint64_t sub_213D31A64@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB6F0, &qword_213D98050);
  Value = AGGraphGetValue();
  return sub_213CE2C28(Value, a1, qword_27C8EB6F0, &qword_213D98050);
}

uint64_t sub_213D31ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v7[0] = *(a1 + 16);
  v7[1] = v3;
  type metadata accessor for MapSelectionManagerBox(255, v7);
  sub_213D9162C();
  v4 = sub_213D91C7C();
  Value = AGGraphGetValue();
  return (*(*(v4 - 8) + 16))(a2, Value, v4);
}

uint64_t sub_213D31B78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v4 = *(a1 - 8);
  v32 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v6 + 16);
  v33 = *(v6 + 40);
  v37 = v31;
  v38 = v33;
  v7 = type metadata accessor for MapBridgingView(255, &v37);
  WitnessTable = swift_getWitnessTable();
  *&v37 = v7;
  *(&v37 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v37 = v7;
  *(&v37 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v37 = OpaqueTypeMetadata2;
  *(&v37 + 1) = OpaqueTypeConformance2;
  v11 = swift_getOpaqueTypeMetadata2();
  v29 = v11;
  *&v37 = OpaqueTypeMetadata2;
  *(&v37 + 1) = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v13 = type metadata accessor for MapPreferenceWrapper(0, v11, v28, v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBA90, &unk_213D98458);
  Value = AGGraphGetValue();
  v27 = *Value;
  LOBYTE(WitnessTable) = *(Value + 8);
  sub_213D319E0(&v37);
  v35 = v37;
  v36 = v38;
  v21 = v30;
  (*(v4 + 16))(v30, v2, a1);
  v22 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v31;
  *(v23 + 32) = *(a1 + 32);
  *(v23 + 40) = v33;
  *(v23 + 56) = *(a1 + 56);
  (*(v4 + 32))(v23 + v22, v21, a1);
  sub_213D32DA8(v27, WitnessTable, &v35, sub_213D4C750, v23, v29, v28, v16);
  swift_getWitnessTable();
  v24 = *(v14 + 16);
  v24(v19, v16, v13);
  v25 = *(v14 + 8);
  v25(v16, v13);
  v24(v34, v19, v13);
  return (v25)(v19, v13);
}

uint64_t sub_213D31F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v113 = a6;
  v93 = a2;
  v109 = a1;
  v111 = a9;
  v112 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBE80, &unk_213D988C0);
  MEMORY[0x28223BE20](v15 - 8);
  v107 = (&v80 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB060, &unk_213D96E60);
  MEMORY[0x28223BE20](v17 - 8);
  v106 = (&v80 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBE90, &qword_213D988D0);
  MEMORY[0x28223BE20](v19 - 8);
  v104 = (&v80 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  MEMORY[0x28223BE20](v21 - 8);
  v115 = &v80 - v22;
  v23 = type metadata accessor for _MapContentInputs(0);
  MEMORY[0x28223BE20](v23 - 8);
  v114 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v125 = a4;
  *(&v125 + 1) = a5;
  *&v126 = a7;
  *(&v126 + 1) = a8;
  type metadata accessor for MapSelectionManagerBox(255, &v125);
  sub_213D9162C();
  v25 = sub_213D91C7C();
  MEMORY[0x28223BE20](v25 - 8);
  *&v116 = &v80 - v26;
  *&v125 = a4;
  *(&v125 + 1) = a5;
  *&v126 = a7;
  *(&v126 + 1) = a8;
  v27 = type metadata accessor for MapBridgingView(0, &v125);
  v103 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v100 = &v80 - v28;
  WitnessTable = swift_getWitnessTable();
  *&v125 = v27;
  *(&v125 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v101 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v98 = WitnessTable;
  v99 = &v80 - v31;
  v105 = v27;
  *&v125 = v27;
  *(&v125 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v102 = OpaqueTypeMetadata2;
  *&v125 = OpaqueTypeMetadata2;
  *(&v125 + 1) = OpaqueTypeConformance2;
  v96 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeMetadata2();
  v94 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v95 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v97 = &v80 - v36;
  v110 = a4;
  *&v125 = a4;
  *(&v125 + 1) = a5;
  v108 = a5;
  *&v126 = v113;
  *(&v126 + 1) = a7;
  v37 = a7;
  v113 = a8;
  *&v127 = a8;
  *(&v127 + 1) = v112;
  v38 = type metadata accessor for _MapContentView.Child(0, &v125);
  v39 = sub_213CFB45C();
  if (!v39)
  {
    v39 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v41 = v39;
  v42 = v40;
  v43 = sub_213CFB4C0();
  v45 = v116;
  if (!v43)
  {
    v43 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v46 = v43;
  v112 = v44;
  v47 = sub_213CFB524();
  if (!v47)
  {
    v47 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v91 = v48;
  v92 = v47;
  v49 = sub_213CFB588();
  if (!v49)
  {
    v49 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v89 = v50;
  v90 = v49;
  v51 = sub_213CFB5EC();
  if (!v51)
  {
    v51 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v87 = v52;
  v88 = v51;
  v53 = sub_213CFB650();
  if (!v53)
  {
    v53 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v85 = v54;
  v86 = v53;
  sub_213D319E0(&v123);
  v121 = v123;
  v122 = v124;
  sub_213D31A64(v120);
  v119 = *AGGraphGetValue();
  sub_213D31ACC(v38, v45);
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x277CEF7D0])
  {
    __break(1u);
  }

  else
  {
    v84 = v42;
    v83 = AGGraphGetAttributeSubgraph();
    sub_213D4CAEC(a3 + *(v38 + 108), v114, type metadata accessor for _MapContentInputs);
    sub_213CE2C28(v93, v115, qword_27C8EB9C8, qword_213D98278);
    v82 = v41;
    v56 = v104;
    sub_213D328F0(&qword_27C8EB0A8, &qword_213D97020, v104);
    v57 = v106;
    sub_213D328F0(&qword_27C8EB0B0, &qword_213D97058, v106);
    KeyPath = swift_getKeyPath();
    *&v125 = swift_getKeyPath();
    sub_213D1DFB8(&v125);
    v117[6] = v131;
    v117[7] = v132;
    *v118 = v133[0];
    *&v118[15] = *(v133 + 15);
    v117[2] = v127;
    v117[3] = v128;
    v117[4] = v129;
    v117[5] = v130;
    v117[0] = v125;
    v117[1] = v126;
    v93 = v33;
    v58 = v107;
    sub_213D328F0(&unk_27C8EBAF8, &qword_213D985A0, v107);
    v59 = swift_getKeyPath();
    v60 = swift_getKeyPath();
    v61 = v46;
    v62 = v37;
    v63 = swift_getKeyPath();
    *&v125 = swift_getKeyPath();
    BYTE8(v125) = 0;
    v64 = swift_getKeyPath();
    v65 = swift_getKeyPath();
    v79 = v56;
    *(&v78 + 1) = v87;
    *&v78 = v88;
    v66 = v100;
    sub_213D32954(v82, v84, v61, v112, v92, v91, v90, v89, v100, v78, v86, v85, &v121, v120, &v119, v116, v83, v114, v115, v109, v79, v57, KeyPath, 0, v117, v58, v59, 0, v60, 0, 0, v63, 0, 0, &v125, v64, 0, v65, 0, v110, v108, v62, v113);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBE98, &qword_213D989C8);
    sub_213D909FC();
    v67 = swift_allocObject();
    v116 = xmmword_213D94520;
    *(v67 + 16) = xmmword_213D94520;

    sub_213D909EC();
    v68 = v99;
    v69 = v105;
    MEMORY[0x21604E520](1, v67, v105, v98);

    (*(v103 + 8))(v66, v69);
    v70 = swift_allocObject();
    *(v70 + 16) = v116;
    sub_213D909DC();
    v71 = v95;
    v72 = v102;
    MEMORY[0x21604E520](1, v70, v102, v96);

    (*(v101 + 8))(v68, v72);
    v73 = v93;
    v74 = v94;
    v75 = *(v94 + 16);
    v76 = v97;
    v75(v97, v71, v93);
    v77 = *(v74 + 8);
    v77(v71, v73);
    v75(v111, v76, v73);
    return (v77)(v76, v73);
  }

  return result;
}

uint64_t sub_213D328F0@<X0>(uint64_t *a2@<X5>, uint64_t *a3@<X6>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_213D32954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, __int128 *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, __int128 *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t *a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v44 = a25[7];
  v87 = a25[6];
  v88 = v44;
  v89[0] = a25[8];
  *(v89 + 15) = *(a25 + 143);
  v45 = a25[2];
  v46 = a25[3];
  v47 = a25[4];
  v48 = a25[5];
  v49 = *a25;
  v50 = a25[1];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v83 = v45;
  v84 = v46;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  v85 = v47;
  v86 = v48;
  v51 = *a13;
  v52 = *(a13 + 2);
  v81 = v49;
  v82 = v50;
  *(a9 + 64) = a10;
  *(a9 + 96) = v51;
  *(a9 + 112) = v52;
  v53 = *(a14 + 16);
  *(a9 + 120) = *a14;
  v54 = *(a14 + 32);
  v55 = *(a14 + 48);
  *(a9 + 184) = *(a14 + 64);
  *(a9 + 192) = *a15;
  v76 = *a35;
  v75 = *(a35 + 8);
  *(a9 + 168) = v55;
  *(a9 + 152) = v54;
  *(a9 + 136) = v53;
  v77 = a40;
  v78 = a41;
  v79 = a42;
  v80 = a43;
  v56 = type metadata accessor for MapBridgingView(0, &v77);
  v57 = v56[21];
  v77 = a40;
  v78 = a41;
  v79 = a42;
  v80 = a43;
  type metadata accessor for MapSelectionManagerBox(255, &v77);
  sub_213D9162C();
  v58 = sub_213D91C7C();
  (*(*(v58 - 8) + 32))(a9 + v57, a16, v58);
  *(a9 + v56[22]) = a17;
  sub_213D49AE0(a18, a9 + v56[23], type metadata accessor for _MapContentInputs);
  sub_213CED608(a19, a9 + v56[24], qword_27C8EB9C8, qword_213D98278);
  *(a9 + v56[25]) = a20;
  v59 = v56[26];
  *(a9 + v59) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC550, &qword_213D94A80);
  swift_storeEnumTagMultiPayload();
  v60 = v56[27];
  *(a9 + v60) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  swift_storeEnumTagMultiPayload();
  sub_213CED608(a21, a9 + v56[28], &qword_27C8EBE90, &qword_213D988D0);
  sub_213CED608(a22, a9 + v56[29], &unk_27C8EB060, &unk_213D96E60);
  v61 = a9 + v56[30];
  *v61 = a23;
  *(v61 + 8) = a24 & 1;
  v62 = a9 + v56[31];
  v63 = v88;
  *(v62 + 96) = v87;
  *(v62 + 112) = v63;
  *(v62 + 128) = v89[0];
  *(v62 + 143) = *(v89 + 15);
  v64 = v84;
  *(v62 + 32) = v83;
  *(v62 + 48) = v64;
  v65 = v86;
  *(v62 + 64) = v85;
  *(v62 + 80) = v65;
  v66 = v82;
  *v62 = v81;
  *(v62 + 16) = v66;
  sub_213CED608(a26, a9 + v56[32], &unk_27C8EBE80, &unk_213D988C0);
  v67 = a9 + v56[33];
  *v67 = a27;
  *(v67 + 8) = a28 & 1;
  v68 = a9 + v56[34];
  *v68 = a29;
  *(v68 + 8) = a30;
  *(v68 + 16) = a31 & 1;
  v69 = a9 + v56[35];
  *v69 = a32;
  *(v69 + 8) = a33;
  *(v69 + 16) = a34 & 1;
  v70 = a9 + v56[36];
  *v70 = v76;
  *(v70 + 8) = v75;
  v71 = a9 + v56[37];
  *v71 = a36;
  *(v71 + 8) = a37 & 1;
  v72 = a9 + v56[38];
  result = swift_getKeyPath();
  *v72 = result;
  *(v72 + 8) = 0;
  v74 = a9 + v56[39];
  *v74 = a38;
  *(v74 + 8) = a39 & 1;
  return result;
}

double sub_213D32DA8@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v28 - v16;
  *v28 = *a3;
  v18 = *(a3 + 16);
  type metadata accessor for MapPreferenceWrapperHolder();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_213D4C8F8(&qword_27C8EBB08, v19, type metadata accessor for MapPreferenceWrapperHolder, &unk_213D983A8);
  *a8 = sub_213D907AC();
  *(a8 + 8) = v20;
  *(a8 + 16) = swift_getKeyPath();
  *(a8 + 24) = 0;
  *(a8 + 48) = swift_getKeyPath();
  v22 = type metadata accessor for MapPreferenceWrapper(0, a6, a7, v21);
  *(a8 + 56) = 0;
  *(a8 + 64) = 0;
  *(a8 + 72) = 0;
  v23 = type metadata accessor for KeyframeAnimationState(0);
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  sub_213D335D4(v17);
  *(a8 + 32) = a1;
  *(a8 + 40) = a2 & 1;
  v24 = a8 + *(v22 + 52);
  result = v28[0];
  *v24 = *v28;
  *(v24 + 16) = v18;
  v26 = (a8 + *(v22 + 56));
  v27 = v29;
  *v26 = a4;
  v26[1] = v27;
  return result;
}

uint64_t sub_213D32F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v13[0] = *(a1 + 16);
  v13[1] = v3;
  v4 = type metadata accessor for MapBridgingView(255, v13);
  WitnessTable = swift_getWitnessTable();
  *&v13[0] = v4;
  *(&v13[0] + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v13[0] = v4;
  *(&v13[0] + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v13[0] = OpaqueTypeMetadata2;
  *(&v13[0] + 1) = OpaqueTypeConformance2;
  v8 = swift_getOpaqueTypeMetadata2();
  *&v13[0] = OpaqueTypeMetadata2;
  *(&v13[0] + 1) = OpaqueTypeConformance2;
  v9 = swift_getOpaqueTypeConformance2();
  v11 = type metadata accessor for MapPreferenceWrapper(0, v8, v9, v10);
  return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
}

uint64_t sub_213D330D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  v9[4] = a7;
  v9[5] = a8;
  type metadata accessor for _MapContentView(0, v9);
  swift_getWitnessTable();
  return sub_213D90A0C();
}

double sub_213D331F4()
{
  type metadata accessor for MapPreferenceWrapperHolder();
  sub_213D4C8F8(&qword_27C8EBB08, v0, type metadata accessor for MapPreferenceWrapperHolder, &unk_213D983A8);
  sub_213D9047C();
  sub_213D9048C();

  return result;
}

uint64_t sub_213D33278()
{
  sub_213CE2AD4(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_213D332D4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapPreferenceWrapperHolder();
  result = sub_213D9047C();
  *a2 = result;
  return result;
}

double sub_213D33310()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    return *(v0 + 16);
  }

  sub_213D91BDC();
  v7 = sub_213D9119C();
  sub_213D9043C();

  sub_213D90BFC();
  swift_getAtKeyPath();
  sub_213CCCE18(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_213D3345C()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 64);
  if (*(v0 + 72) == 1)
  {
    sub_213CF95E4(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  else
  {

    sub_213D91BDC();
    v8 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    v9 = sub_213D4C940(v6, v5, v7, 0);
    (*(v2 + 8))(v4, v1, v9);
    return v11[1];
  }

  return v6;
}

uint64_t sub_213D335D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  MEMORY[0x28223BE20](v3);
  sub_213CE2C28(a1, &v6 - v4, &qword_27C8EBB58, &unk_213D985B0);
  sub_213D9156C();
  return sub_213CD8330(a1, &qword_27C8EBB58, &unk_213D985B0);
}

uint64_t sub_213D3369C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_213CE2C28(a1, &v5 - v3, &qword_27C8EBB58, &unk_213D985B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);
  sub_213D9158C();
  return sub_213CD8330(a1, &qword_27C8EBB58, &unk_213D985B0);
}

void (*sub_213D33774(void **a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0) - 8) + 64);
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v5);
    v7 = malloc(v5);
  }

  a1[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);
  a1[2] = v8;
  v9 = *(*(v8 - 1) + 64);
  if (v6)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(v9);
  }

  a1[3] = v10;
  sub_213CE2C28(v2 + *(a2 + 48), v10, qword_27C8EBCB0, &qword_213D98708);
  sub_213D9157C();
  return sub_213D338B0;
}

void sub_213D338B0(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_213CE2C28(*(a1 + 8), v3, &qword_27C8EBB58, &unk_213D985B0);
    sub_213D9158C();
    sub_213CD8330(v2, qword_27C8EBCB0, &qword_213D98708);
    v5 = v4;
    v6 = &qword_27C8EBB58;
    v7 = &unk_213D985B0;
  }

  else
  {
    sub_213D9158C();
    v6 = qword_27C8EBCB0;
    v7 = &qword_213D98708;
    v5 = v2;
  }

  sub_213CD8330(v5, v6, v7);
  free(v2);
  free(v4);

  free(v3);
}

double sub_213D33988(uint64_t *a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 52) + 16);

  sub_213D1DFC0(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  sub_213D915FC();

  return sub_213D1E068(v4);
}

uint64_t sub_213D33A20@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  v18 = a1;
  v19 = sub_213D90FEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA0, &qword_213D98B38);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA8, &qword_213D98B40);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEB0, &qword_213D98B48);
  sub_213D908CC();
  v2 = MEMORY[0x277CE0800];
  v30 = *(v18 + 24);
  v31 = sub_213CEDCEC(&qword_27C8EBEB8, &qword_27C8EBEA0, &qword_213D98B38, MEMORY[0x277CE0800]);
  WitnessTable = swift_getWitnessTable();
  v29 = sub_213CEDCEC(&qword_27C8EBEC0, &qword_27C8EBEA8, &qword_213D98B40, v2);
  v26 = swift_getWitnessTable();
  v27 = sub_213CEDCEC(&qword_27C8EBEC8, &qword_27C8EBEB0, &qword_213D98B48, v2);
  swift_getWitnessTable();
  sub_213D9077C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBED0, &qword_213D98B50);
  swift_getWitnessTable();
  sub_213D4C820();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v4 = sub_213D9031C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v6 = sub_213D4C8F8(&qword_27C8EBEE8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v22 = OpaqueTypeMetadata2;
  v23 = v4;
  v24 = OpaqueTypeConformance2;
  v25 = v6;
  swift_getOpaqueTypeMetadata2();
  sub_213D4C8F8(&qword_27C8EBEF0, 255, MEMORY[0x277CDE300], MEMORY[0x277CDE2F8]);
  v7 = sub_213D905EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_213D33E60(v18, v10);
  v22 = OpaqueTypeMetadata2;
  v23 = v4;
  v24 = OpaqueTypeConformance2;
  v25 = v6;
  v21 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v14 = *(v8 + 16);
  v14(v13, v10, v7);
  v15 = *(v8 + 8);
  v15(v10, v7);
  v14(v20, v13, v7);
  return (v15)(v13, v7);
}

uint64_t sub_213D33E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v34 = sub_213D90FEC();
  MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);
  sub_213D9157C();
  v10 = type metadata accessor for KeyframeAnimationState(0);
  (*(*(v10 - 8) + 48))(v8, 1, v10);
  sub_213CD8330(v8, &qword_27C8EBB58, &unk_213D985B0);
  sub_213D90FDC();
  (*(v4 + 16))(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v13 = *(a1 + 24);
  *(v12 + 16) = *(a1 + 16);
  *(v12 + 24) = v13;
  (*(v4 + 32))(v12 + v11, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA0, &qword_213D98B38);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA8, &qword_213D98B40);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEB0, &qword_213D98B48);
  sub_213D908CC();
  v14 = MEMORY[0x277CE0800];
  v15 = sub_213CEDCEC(&qword_27C8EBEB8, &qword_27C8EBEA0, &qword_213D98B38, MEMORY[0x277CE0800]);
  v44 = v13;
  v45 = v15;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_213CEDCEC(&qword_27C8EBEC0, &qword_27C8EBEA8, &qword_213D98B40, v14);
  v42 = WitnessTable;
  v43 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_213CEDCEC(&qword_27C8EBEC8, &qword_27C8EBEB0, &qword_213D98B48, v14);
  v40 = v18;
  v41 = v19;
  swift_getWitnessTable();
  v20 = sub_213D9077C();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBED0, &qword_213D98B50);
  v22 = swift_getWitnessTable();
  v23 = sub_213D4C820();
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = sub_213D9031C();
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_213D4C8F8(&qword_27C8EBEE8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v36 = OpaqueTypeMetadata2;
  v37 = v25;
  v38 = OpaqueTypeConformance2;
  v39 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v29 = sub_213D4C8F8(&qword_27C8EBEF0, 255, MEMORY[0x277CDE300], MEMORY[0x277CDE2F8]);
  v36 = OpaqueTypeMetadata2;
  v37 = v25;
  v38 = OpaqueTypeConformance2;
  v39 = v27;
  v30 = swift_getOpaqueTypeConformance2();
  return sub_213D36140(v33, sub_213D4C98C, v12, v34, v28, v29, v30);
}

uint64_t sub_213D34388(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = *(v1 + *(a1 + 56));
  v7 = *(v1 + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);
  sub_213D9159C();
  v6(v7, v5);

  return sub_213CD8330(v5, qword_27C8EB9C8, qword_213D98278);
}

uint64_t sub_213D34490@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 24);
  *(v7 + 16) = *(a1 + 16);
  *(v7 + 24) = v8;
  (*(v3 + 32))(v7 + v6, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA0, &qword_213D98B38);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA8, &qword_213D98B40);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEB0, &qword_213D98B48);
  sub_213D908CC();
  v9 = MEMORY[0x277CE0800];
  v10 = sub_213CEDCEC(&qword_27C8EBEB8, &qword_27C8EBEA0, &qword_213D98B38, MEMORY[0x277CE0800]);
  v24 = v8;
  v25 = v10;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_213CEDCEC(&qword_27C8EBEC0, &qword_27C8EBEA8, &qword_213D98B40, v9);
  v22 = WitnessTable;
  v23 = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_213CEDCEC(&qword_27C8EBEC8, &qword_27C8EBEB0, &qword_213D98B48, v9);
  v20 = v13;
  v21 = v14;
  swift_getWitnessTable();
  result = sub_213D9076C();
  v16 = v19;
  *v19 = result;
  v16[1] = v17;
  return result;
}

uint64_t sub_213D34720@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v62 = a1;
  v71 = a5;
  v8 = sub_213D906CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF00, &unk_213D98B60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v57 - v13;
  v60 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA0, &qword_213D98B38);
  v59 = a3;
  v18 = sub_213D908CC();
  v63 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA8, &qword_213D98B40);
  v64 = v18;
  v21 = sub_213D908CC();
  v68 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v65 = &v57 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEB0, &qword_213D98B48);
  v69 = v21;
  v61 = sub_213D908CC();
  v70 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v66 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v67 = &v57 - v25;
  v27 = type metadata accessor for MapPreferenceWrapper(0, a3, a4, v26);
  v58 = a2;
  sub_213D34388(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF08, &unk_213D99D40);
  v28 = v11;
  (*(v9 + 16))(v11, v62, v8);
  v29 = sub_213D33310();
  v30 = *(v9 + 56);
  v30(v14, 1, 1, v8);
  sub_213CD8330(v14, &qword_27C8EBF10, &qword_213D98B70);
  (*(v9 + 32))(v14, v28, v8);
  v30(v14, 0, 1, v8);
  v31 = type metadata accessor for MapSizingInformation(0);
  *&v14[*(v31 + 20)] = v29;
  (*(*(v31 - 8) + 56))(v14, 0, 1, v31);
  sub_213CEDCEC(&qword_27C8EBF18, &qword_27C8EBF08, &unk_213D99D40, &unk_213D99F20);
  v62 = v20;
  v32 = v59;
  sub_213D912DC();
  v33 = v17;
  v34 = v58;
  (*(v60 + 8))(v33, v32);
  sub_213CD8330(v14, &qword_27C8EBF00, &unk_213D98B60);
  v35 = *(v34 + 32);
  LOBYTE(v32) = *(v34 + 40);
  sub_213CE2A1C(*(v34 + 8) + 16, &v76);
  if (v32)
  {
    v36 = sub_213D1DC64(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBF40, &unk_213D98B88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_213D94520;
    *(inited + 32) = v35;
    sub_213CE2A1C(&v76, inited + 40);
    v36 = sub_213D1DC64(inited);
    swift_setDeallocating();
    sub_213CD8330(inited + 32, &unk_27C8EB340, &qword_213D97480);
  }

  sub_213CE2AD4(&v76);
  v76 = v36;
  v38 = MEMORY[0x277CE0800];
  v39 = sub_213CEDCEC(&qword_27C8EBEB8, &qword_27C8EBEA0, &qword_213D98B38, MEMORY[0x277CE0800]);
  v78 = a4;
  v79 = v39;
  v40 = v64;
  WitnessTable = swift_getWitnessTable();
  sub_213D4CE4C(WitnessTable, v42, v43);
  v44 = v65;
  v45 = v62;
  sub_213D912DC();

  (*(v63 + 8))(v45, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF28, &qword_213D98B78);
  sub_213CE2A1C(*(v34 + 8) + 16, &v76);
  v77 = 0;
  v46 = sub_213CEDCEC(&qword_27C8EBEC0, &qword_27C8EBEA8, &qword_213D98B40, v38);
  v74 = WitnessTable;
  v75 = v46;
  v47 = v69;
  v48 = swift_getWitnessTable();
  sub_213CEDCEC(&qword_27C8EBF30, &qword_27C8EBF28, &qword_213D98B78, &unk_213D99F20);
  v49 = v66;
  sub_213D912DC();
  sub_213CD8330(&v76, &qword_27C8EBF38, &qword_213D98B80);
  (*(v68 + 8))(v44, v47);
  v50 = sub_213CEDCEC(&qword_27C8EBEC8, &qword_27C8EBEB0, &qword_213D98B48, v38);
  v72 = v48;
  v73 = v50;
  v51 = v61;
  swift_getWitnessTable();
  v52 = v70;
  v53 = *(v70 + 16);
  v54 = v67;
  v53(v67, v49, v51);
  v55 = *(v52 + 8);
  v55(v49, v51);
  v53(v71, v54, v51);
  return (v55)(v54, v51);
}

uint64_t sub_213D34F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v70 = a2;
  v64 = a1;
  v68 = a5;
  v73 = sub_213D9031C();
  v67 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v66 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for MapPreferenceWrapper(0, a3, a4, v8);
  v63 = *(v61 - 8);
  v71 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  v62 = v47 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA0, &qword_213D98B38);
  v72 = a3;
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA8, &qword_213D98B40);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEB0, &qword_213D98B48);
  sub_213D908CC();
  v10 = MEMORY[0x277CE0800];
  v11 = sub_213CEDCEC(&qword_27C8EBEB8, &qword_27C8EBEA0, &qword_213D98B38, MEMORY[0x277CE0800]);
  v65 = a4;
  v85 = a4;
  v86 = v11;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_213CEDCEC(&qword_27C8EBEC0, &qword_27C8EBEA8, &qword_213D98B40, v10);
  v83 = WitnessTable;
  v84 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_213CEDCEC(&qword_27C8EBEC8, &qword_27C8EBEB0, &qword_213D98B48, v10);
  v81 = v14;
  v82 = v15;
  swift_getWitnessTable();
  v16 = sub_213D9077C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBED0, &qword_213D98B50);
  v18 = swift_getWitnessTable();
  v19 = sub_213D4C820();
  v77 = v16;
  v78 = v17;
  v79 = v18;
  v80 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v69 = v47 - v21;
  v51 = v16;
  v77 = v16;
  v78 = v17;
  v56 = v17;
  v54 = v18;
  v79 = v18;
  v80 = v19;
  v53 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_213D4C8F8(&qword_27C8EBEE8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v60 = OpaqueTypeMetadata2;
  v77 = OpaqueTypeMetadata2;
  v78 = v73;
  v55 = OpaqueTypeConformance2;
  v79 = OpaqueTypeConformance2;
  v80 = v23;
  v50 = v23;
  v58 = swift_getOpaqueTypeMetadata2();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v49 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v52 = v47 - v26;
  v27 = v61;
  v28 = v70;
  sub_213D34490(v61, &v77);
  v75 = v77;
  v76 = v78;
  v47[1] = v78;
  v29 = sub_213D3345C();
  if (v29)
  {
  }

  v74 = v29;
  v30 = v63;
  v48 = *(v63 + 16);
  v31 = v62;
  v48(v62, v28, v27);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = swift_allocObject();
  v34 = v65;
  *(v33 + 16) = v72;
  *(v33 + 24) = v34;
  v63 = *(v30 + 32);
  (v63)(v33 + v32, v31, v27);
  swift_checkMetadataState();
  sub_213D9144C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBEF8, &qword_213D98B58);
  v35 = v66;
  sub_213D905BC();
  v48(v31, v70, v27);
  v36 = swift_allocObject();
  *(v36 + 16) = v72;
  *(v36 + 24) = v34;
  (v63)(v36 + v32, v31, v27);
  v37 = v49;
  v38 = v60;
  v39 = v73;
  v40 = v69;
  sub_213D9144C();

  (*(v67 + 8))(v35, v39);
  (*(v59 + 8))(v40, v38);
  v41 = v57;
  v42 = *(v57 + 16);
  v43 = v52;
  v44 = v58;
  v42(v52, v37, v58);
  v45 = *(v41 + 8);
  v45(v37, v44);
  v42(v68, v43, v44);
  return (v45)(v43, v44);
}

double sub_213D35790(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930);
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v38 - v14;
  v16 = *a1;
  if (*a1)
  {
    v17 = *a2 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v40 = v12;
    v18 = *(*v16 + 80);

    v20 = v18(v19);
    if ((v20 & 1) != 0 || (v22 = type metadata accessor for MapPreferenceWrapper(0, a4, a5, v21), !sub_213D3345C()))
    {
    }

    else
    {
      v24 = v23;
      sub_213CE2A1C(*(a3 + 8) + 16, v41);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_213CE2AD4(v41);
      if (Strong)
      {
        v26 = [Strong camera];
        v39 = v24;
        v27 = v26;
        [v26 centerCoordinate];
        v29 = v28;
        v31 = v30;
        [v27 centerCoordinateDistance];
        v33 = v32;
        [v27 heading];
        v35 = v34;
        [v27 pitch];
        v37 = v36;

        v41[0] = v29;
        v41[1] = v31;
        v41[2] = v33;
        v41[3] = v35;
        v41[4] = v37;
        v39(v41);
        sub_213D35A78(v15, v22);

        (*(v11 + 8))(v15, v40);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_213D35A78(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = type metadata accessor for KeyframeAnimationState(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v7 + 16);
  v15(v9, a1, v6, v12);
  (v15)(v14, v9, v6);
  v16 = *(v10 + 20);
  sub_213D9030C();
  (*(v7 + 8))(v9, v6);
  v17 = *(v10 + 24);
  v18 = sub_213D9031C();
  (*(*(v18 - 8) + 16))(&v14[v17], &v14[v16], v18);
  sub_213D4CAEC(v14, v5, type metadata accessor for KeyframeAnimationState);
  (*(v11 + 56))(v5, 0, 1, v10);
  v19 = v25;
  sub_213D3369C(v5);
  sub_213D9090C();
  v20 = v27;
  v21 = swift_allocObject();
  v22 = v26[1];
  *(v21 + 16) = v26[0];
  *(v21 + 32) = v22;
  *(v21 + 48) = v20;
  *&v26[0] = v21 | 0x6000000000000000;
  sub_213D33988(v26, v19);
  return sub_213D49B70(v14, type metadata accessor for KeyframeAnimationState);
}

uint64_t sub_213D35D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  MEMORY[0x28223BE20](v9 - 8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for KeyframeAnimationState(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MapPreferenceWrapper(0, a4, a5, v18);
  v20 = sub_213D33774(v39, v19);
  v22 = v21;
  v37 = v15;
  v23 = *(v15 + 48);
  if (!v23(v21, 1, v14))
  {
    v36 = v17;
    v24 = a3;
    v25 = a2;
    v26 = *(v14 + 24);
    v27 = sub_213D9031C();
    v28 = v25;
    a3 = v24;
    v17 = v36;
    (*(*(v27 - 8) + 24))(v22 + v26, v28, v27);
  }

  v20(v39, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);
  sub_213D9157C();
  if (v23(v13, 1, v14) == 1)
  {
    return sub_213CD8330(v13, &qword_27C8EBB58, &unk_213D985B0);
  }

  sub_213D49AE0(v13, v17, type metadata accessor for KeyframeAnimationState);
  sub_213CE2A1C(*(a3 + 8) + 16, v39);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_213CE2AD4(v39);
  if (Strong)
  {
    sub_213D902FC();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930);
    sub_213D9091C();
    if (v33 < v32)
    {
      v34 = v38;
      (*(v37 + 56))(v38, 1, 1, v14);
      sub_213D3369C(v34);
    }

    sub_213D902FC();
    sub_213D908FC();
    v35 = [objc_opt_self() cameraLookingAtCenterCoordinate:*v39 fromDistance:*&v39[1] pitch:*&v39[2] heading:{*&v39[4], *&v39[3]}];
    [Strong setCamera:v35 animated:0];
  }

  return sub_213D49B70(v17, type metadata accessor for KeyframeAnimationState);
}

uint64_t sub_213D36140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v15);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a2;
  v18[7] = a3;
  sub_213D905DC();
  return (*(v14 + 8))(a1, a4);
}

uint64_t sub_213D3629C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_213D90C0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0A8, &qword_213D97020);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_213CE2C28(v2 + *(a1 + 112), &v15 - v10, &qword_27C8EB0A8, &qword_213D97020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_213D90C7C();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_213D91BDC();
    v14 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_213D364A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_213D90C0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0B0, &qword_213D97058);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_213CE2C28(v2 + *(a1 + 116), &v15 - v10, &qword_27C8EB0B0, &qword_213D97058);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_213D9089C();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_213D91BDC();
    v14 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_213D366A4(uint64_t a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 120);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = v8 >> 8;
  }

  else
  {

    sub_213D91BDC();
    v10 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v12[14];
    LODWORD(v9) = v12[15];
  }

  return (v8 & 1) | (v9 << 8);
}

uint64_t sub_213D36808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = sub_213D90C0C();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v2 + *(a1 + 124));
  v9 = v8[7];
  v10 = v8[5];
  v54 = v8[6];
  v55 = v9;
  v11 = v8[7];
  v56[0] = v8[8];
  v12 = v8[3];
  v13 = v8[1];
  v50 = v8[2];
  v51 = v12;
  v14 = v8[3];
  v15 = v8[5];
  v52 = v8[4];
  v53 = v15;
  v16 = v8[1];
  v48 = *v8;
  v49 = v16;
  v57[6] = v54;
  v57[7] = v11;
  v58[0] = v8[8];
  v57[2] = v50;
  v57[3] = v14;
  v57[4] = v52;
  v57[5] = v10;
  *(v56 + 15) = *(v8 + 143);
  *(v58 + 15) = *(v8 + 143);
  v57[0] = v48;
  v57[1] = v13;
  if (sub_213D1E0A4(v57) == 1)
  {
    nullsub_2();
    v36 = v54;
    v37 = v55;
    v38[0] = v56[0];
    *(v38 + 15) = *(v56 + 15);
    v32 = v50;
    v33 = v51;
    v34 = v52;
    v35 = v53;
    v30 = v48;
    v31 = v49;
    nullsub_2();
    v18 = *(v17 + 16);
    *a2 = *v17;
    *(a2 + 16) = v18;
    v19 = *(v17 + 32);
    v20 = *(v17 + 48);
    v21 = *(v17 + 80);
    *(a2 + 64) = *(v17 + 64);
    *(a2 + 80) = v21;
    *(a2 + 32) = v19;
    *(a2 + 48) = v20;
    v22 = *(v17 + 96);
    v23 = *(v17 + 112);
    v24 = *(v17 + 128);
    *(a2 + 144) = *(v17 + 144);
    *(a2 + 112) = v23;
    *(a2 + 128) = v24;
    *(a2 + 96) = v22;
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v47[0] = v56[0];
    *(v47 + 15) = *(v56 + 15);
    nullsub_2();
    return sub_213D1E0AC(v25, &v29);
  }

  else
  {
    nullsub_2();
    v36 = v54;
    v37 = v55;
    v38[0] = v56[0];
    *(v38 + 15) = *(v56 + 15);
    v32 = v50;
    v33 = v51;
    v34 = v52;
    v35 = v53;
    v30 = v48;
    v31 = v49;
    nullsub_2();
    v39 = v48;
    v40 = v49;
    v43 = v52;
    v44 = v53;
    v41 = v50;
    v42 = v51;
    *(v47 + 15) = *(v56 + 15);
    v46 = v55;
    v47[0] = v56[0];
    v45 = v54;
    nullsub_2();

    sub_213D91BDC();
    v27 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CD8330(&v48, &unk_27C8EB0F0, &qword_213D971E8);
    return (*(v5 + 8))(v7, v28);
  }
}

uint64_t sub_213D36B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_213D90C0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAF8, &qword_213D985A0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_213CE2C28(v2 + *(a1 + 128), &v14 - v10, &unk_27C8EBAF8, &qword_213D985A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_213D49AE0(v11, a2, type metadata accessor for MapControlsConfig);
  }

  sub_213D91BDC();
  v13 = sub_213D9119C();
  sub_213D9043C();

  sub_213D90BFC();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_213D36D00(uint64_t a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 132);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_213D91BDC();
    v9 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[15];
  }

  return v8;
}

uint64_t (*sub_213D36E54(uint64_t a1))()
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 136));
  v8 = *v7;
  LODWORD(v7) = *(v7 + 16);
  v9 = v8;
  v14 = v8;
  if (v7 == 1)
  {
    sub_213CD4E28(v8, *(&v8 + 1));
    v10 = v14;
    if (v14)
    {
LABEL_3:
      *(swift_allocObject() + 16) = v10;
      return sub_213D4CEA8;
    }
  }

  else
  {

    sub_213D91BDC();
    v12 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    v13 = sub_213D497CC(v9, *(&v14 + 1), 0, sub_213D4CEC0);
    (*(v4 + 8))(v6, v3, v13);
    v10 = v15;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_213D3702C(uint64_t a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 140);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (*(v7 + 16) == 1)
  {
    sub_213CD4E28(*v7, v9);
  }

  else
  {

    sub_213D91BDC();
    v10 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    v11 = sub_213D497CC(v8, v9, 0, sub_213D4CEC0);
    (*(v4 + 8))(v6, v3, v11);
    return v13;
  }

  return v8;
}

void sub_213D371B4(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_213D90C0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 144);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_213D91BDC();
    v11 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_213D37310(uint64_t a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 148);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
  }

  else
  {

    sub_213D91BDC();
    v9 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CE2B28(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[1];
  }

  return v8;
}

uint64_t sub_213D3746C(uint64_t a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 156);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_213D91BDC();
    v9 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[15];
  }

  return v8;
}

uint64_t sub_213D375C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_213D3763C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_213D376B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_213D90E1C();
  __break(1u);
}

id sub_213D376F8(uint64_t a1)
{
  type metadata accessor for _SwiftUIMKMapView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for SwiftUIAnnotationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_213D9190C();
  [v5 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v6];

  sub_213CE2B34(0, &unk_27C8EBB10, 0x277CD4ED0);
  v7 = swift_getObjCClassFromMetadata();
  v8 = sub_213D9190C();
  [v5 registerClass:v7 forAnnotationViewWithReuseIdentifier:v8];

  v9 = sub_213D9190C();
  [v5 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v9];

  sub_213CE2A1C(*(v1 + *(a1 + 100)) + 16, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_213CE2AD4(v12);
  if (!Strong || (Strong, Strong != v5))
  {
    swift_unknownObjectWeakAssign();

    sub_213D905AC();
  }

  return v5;
}

uint64_t sub_213D378B8(void *a1, uint64_t a2, int *a3)
{
  v5 = sub_213D90C0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_213D910BC();
  sub_213D910AC();
  v9 = sub_213D9055C();

  v10 = 0;
  if ((v9 & 1) == 0)
  {
    sub_213D910AC();
    v10 = sub_213D9056C();
  }

  sub_213D9108C();
  v11 = v13[1];
  sub_213D9109C();
  sub_213D37A4C(a1, v11, v8, v10, a3);

  return (*(v6 + 8))(v8, v5);
}