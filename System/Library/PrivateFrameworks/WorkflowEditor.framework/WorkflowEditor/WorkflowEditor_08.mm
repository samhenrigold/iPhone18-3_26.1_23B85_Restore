uint64_t sub_2744BCA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27463B70C("%d more actions…", v23);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_27463C38C();

    v25 = sub_274412BBC();
    v24 = MEMORY[0x277D837D0];
    sub_27463C0FC();
    MEMORY[0x277C57EA0](0xD000000000000010, 0x800000027468ABB0);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v7 = qword_28094BB00;
    v8 = sub_27463B66C();

    v9 = sub_27463B66C();

    v10 = [v7 localizedStringForKey:v8 value:v9 table:{0, v24, v25, v25, v25, 32, 0xE100000000000000, 10, 0xE100000000000000}];

    sub_27463B6AC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D83B88];
  *(v11 + 16) = xmmword_274648570;
  v13 = MEMORY[0x277D83C10];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = a1;
  sub_27463B67C();

  sub_274412BBC();
  v14 = sub_27463A53C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_27463AC2C();
  *a2 = v14;
  *(a2 + 8) = v16;
  v18 &= 1u;
  *(a2 + 16) = v18;
  *(a2 + 24) = v20;
  *(a2 + 32) = v21;
  sub_27440B094(v14, v16, v18);

  sub_274412C10(v14, v16, v18);
}

uint64_t sub_2744BCD38@<X0>(double *a1@<X8>)
{
  sub_2746393BC();
  v3 = v2 * 0.5;
  v4 = *(sub_27463970C() + 20);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_274639BFC();
  (*(*(v6 - 8) + 104))(a1 + v4, v5, v6);
  *a1 = v3;
  a1[1] = v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E030, &unk_274651B28);
  *(a1 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_2744BCDF0(uint64_t a1)
{
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkflowView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58, &unk_2746514C8);
  sub_27463B16C();
  v6 = v11;
  v7 = *(a1 + 72);
  LOBYTE(a1) = *(a1 + 80);

  if ((a1 & 1) == 0)
  {
    sub_27463BC0C();
    v8 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    j__swift_release(v7);
    (*(v3 + 8))(v5, v2);
    v7 = v11;
  }

  *(v6 + 32) = v7;
}

uint64_t sub_2744BCF84@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, _BYTE *a4@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  result = sub_27451F0C0(v6);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2744BCFC8(_BYTE *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_27463B13C();
  sub_27463946C();
}

uint64_t sub_2744BD040(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  if (a1)
  {
    return sub_27451F0D4(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return sub_27451F174(v9, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_2744BD098@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_274412C20(v2 + *(a2 + 60), &v15 - v10, &qword_28094BDF0, &qword_274653F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_274639C4C();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_2744BD2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v36 = *(a1 + 16);
  v33 = a1;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E750, &qword_274652D50);
  v31 = *(a1 + 24);
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getTupleTypeMetadata3();
  v3 = sub_27463B19C();
  WitnessTable = swift_getWitnessTable();
  v29[0] = sub_27463AE6C();
  v29[1] = sub_27463ADAC();
  v29[2] = sub_274639DEC();
  v5 = sub_27463AC1C();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - v6;
  v8 = sub_27463965C();
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C600, &qword_27464FD90);
  v11 = sub_27463965C();
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  v14 = sub_27463965C();
  v38 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v30 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v35 = v29 - v17;
  v42 = v36;
  v43 = v31;
  v44 = *(v33 + 32);
  v45 = v39;
  sub_2744BE35C(sub_2744CA964, v41, v33, v3, WitnessTable);
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v54 = v18;
  v55 = v19;
  v53 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  sub_27463A9DC();
  (*(v32 + 8))(v7, v5);
  sub_27463AB8C();
  v51 = v20;
  v52 = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  sub_27463A78C();

  (*(v34 + 8))(v10, v8);
  v50 = sub_27463AB5C();
  v22 = sub_2744CA97C(&unk_28094D180, &qword_28094C600);
  v48 = v21;
  v49 = v22;
  v23 = swift_getWitnessTable();
  sub_274415328(v11);
  v24 = v30;
  sub_27463A65C();

  (*(v37 + 8))(v13, v11);
  v25 = sub_2744CA97C(&qword_28094A710, &qword_280951400);
  v46 = v23;
  v47 = v25;
  swift_getWitnessTable();
  v26 = v35;
  sub_2744E9688();
  v27 = *(v38 + 8);
  v27(v24, v14);
  sub_2744E9688();
  return (v27)(v26, v14);
}

uint64_t sub_2744BD9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v67 = a6;
  swift_getTupleTypeMetadata2();
  v63 = sub_27463B19C();
  WitnessTable = swift_getWitnessTable();
  v64 = sub_27463ADAC();
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v68 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v66 = &v51 - v12;
  swift_getTupleTypeMetadata2();
  v13 = sub_27463B19C();
  swift_getWitnessTable();
  v14 = sub_27463ADAC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v62 = a2;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  v74 = v69;
  v75 = a1;
  sub_27456E924(v13);
  sub_27463AD9C();
  v21 = swift_getWitnessTable();
  v70 = v20;
  v57 = v21;
  sub_2744E9688();
  v58 = v15;
  v22 = *(v15 + 8);
  v60 = v15 + 8;
  v59 = v22;
  v23 = v22(v17, v14);
  v24 = *(a1 + 40);
  if (v24)
  {
    v80 = *(a1 + 32);
    v81 = v24;
    sub_274412BBC();

    v25 = a3;
    v26 = a1;
    v27 = sub_27463A53C();
    v29 = v28;
    v31 = v30;
    v51 = a4;
    v56 = sub_27463A4FC();
    v55 = v32;
    v34 = v33;
    v54 = v35;
    v36 = v27;
    a1 = v26;
    a3 = v25;
    sub_274412C10(v36, v29, v31 & 1);
    a4 = v51;

    v53 = v34 & 1;
  }

  else
  {
    v56 = 0;
    v55 = 0;
    v53 = 0;
    v54 = 0;
  }

  MEMORY[0x28223BE20](v23);
  *(&v51 - 6) = v62;
  *(&v51 - 5) = a3;
  v37 = v69;
  *(&v51 - 4) = a4;
  *(&v51 - 3) = v37;
  *(&v51 - 2) = a1;
  sub_27456E924(v63);
  v38 = v68;
  sub_27463AD9C();
  v39 = v64;
  v63 = swift_getWitnessTable();
  v40 = v66;
  sub_2744E9688();
  v41 = v65;
  v69 = *(v65 + 8);
  v69(v38, v39);
  (*(v58 + 16))(v17, v70, v14);
  v42 = v17;
  v52 = v17;
  v43 = v56;
  v44 = v14;
  v45 = v55;
  v80 = v56;
  v81 = v55;
  v46 = v53;
  v47 = v54;
  v82 = v53;
  v83 = v54;
  v84[0] = v42;
  v84[1] = &v80;
  (*(v41 + 16))(v38, v40, v39);
  v84[2] = v38;
  sub_274483EE8(v43, v45, v46, v47);
  v79[0] = v44;
  v79[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E750, &qword_274652D50);
  v79[2] = v39;
  v76 = v57;
  v77 = sub_2744CAA68();
  v78 = v63;
  sub_274575750(v84, 3, v79);
  sub_274483F2C(v43, v45, v46, v47);
  v48 = v69;
  v69(v40, v39);
  v49 = v59;
  v59(v70, v44);
  v48(v38, v39);
  sub_274483F2C(v80, v81, v82, v83);
  return v49(v52, v44);
}

uint64_t sub_2744BE020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  (*v13)(v10);
  sub_2744E9688();
  v14 = *(v6 + 8);
  v14(v8, a2);
  (*(v6 + 16))(v8, v12, a2);
  v18 = 0;
  v19 = 1;
  v20[0] = v8;
  v20[1] = &v18;
  v17[0] = a2;
  v17[1] = MEMORY[0x277CE1180];
  v16[0] = a4;
  v16[1] = MEMORY[0x277CE1170];
  sub_274575750(v20, 2, v17);
  v14(v12, a2);
  return (v14)(v8, a2);
}

uint64_t sub_2744BE1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  (*(v14 + 16))(v11);
  sub_2744E9688();
  v15 = *(v7 + 8);
  v15(v9, a3);
  v19 = 0;
  v20 = 1;
  v21[0] = &v19;
  (*(v7 + 16))(v9, v13, a3);
  v21[1] = v9;
  v18[0] = MEMORY[0x277CE1180];
  v18[1] = a3;
  v17[0] = MEMORY[0x277CE1170];
  v17[1] = a5;
  sub_274575750(v21, 2, v18);
  v15(v13, a3);
  return (v15)(v9, a3);
}

uint64_t sub_2744BE35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_27463AE6C();
  sub_27463ADAC();
  sub_274639DEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_27463AC0C();
}

uint64_t sub_2744BE470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v52 = a8;
  v56 = a3;
  v54 = a2;
  v53 = a1;
  v60 = a9;
  v51 = a6;
  v13 = sub_27463ADAC();
  v50 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v49 = &v45 - v16;
  v17 = sub_27463AE6C();
  v48 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v45 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v47 = &v45 - v20;
  v21 = sub_274639C4C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v13;
  v25 = sub_274639DEC();
  v58 = *(v25 - 8);
  v59 = v25;
  MEMORY[0x28223BE20](v25);
  v57 = &v45 - v26;
  v71[0] = a4;
  v71[1] = a5;
  v27 = a5;
  v28 = a7;
  v71[2] = a7;
  v29 = v52;
  v71[3] = v52;
  v30 = type metadata accessor for WorkflowAuxiliaryBarContentView(0, v71);
  sub_2744BD098(v24, v30);
  LOBYTE(a5) = sub_274639C3C();
  v31 = v24;
  v32 = v51;
  (*(v22 + 8))(v31, v21);
  v61 = a4;
  v62 = v27;
  v63 = v32;
  v64 = v28;
  v65 = v29;
  v66 = a10;
  v67 = v54;
  v68 = v56;
  if (a5)
  {
    sub_274415324(v32);
    v33 = v45;
    sub_27463AE5C();
    swift_getWitnessTable();
    v34 = v47;
    sub_2744E9688();
    v35 = *(v48 + 8);
    v35(v33, v17);
    sub_2744E9688();
    swift_getWitnessTable();
    v36 = v57;
    sub_27456E7CC();
    v35(v33, v17);
    v35(v34, v17);
  }

  else
  {
    sub_27456E924(v32);
    v37 = v46;
    sub_27463AD9C();
    v38 = v55;
    swift_getWitnessTable();
    v39 = v49;
    sub_2744E9688();
    v40 = *(v50 + 8);
    v40(v37, v38);
    sub_2744E9688();
    swift_getWitnessTable();
    v36 = v57;
    sub_27456E878();
    v40(v37, v38);
    v40(v39, v38);
  }

  WitnessTable = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v69 = WitnessTable;
  v70 = v42;
  v43 = v59;
  swift_getWitnessTable();
  sub_2744E9688();
  return (*(v58 + 8))(v36, v43);
}

void sub_2744BEABC()
{
  OUTLINED_FUNCTION_55_1();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v6 = v4 - v5;
  v8 = MEMORY[0x28223BE20](v7);
  v9(v8);
  OUTLINED_FUNCTION_43_2();
  sub_2744E9688();
  v10 = *(v2 + 8);
  v10(v6, v1);
  OUTLINED_FUNCTION_34_3();
  sub_2744E9688();
  v11 = OUTLINED_FUNCTION_34_3();
  (v10)(v11);
  OUTLINED_FUNCTION_56_0();
}

uint64_t sub_2744BEBD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v88 = a3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E4F8, &qword_2746526F0);
  MEMORY[0x28223BE20](v74);
  v79 = &v70 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E500, &qword_2746526F8);
  MEMORY[0x28223BE20](v78);
  v6 = (&v70 - v5);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E508, &qword_274652700);
  MEMORY[0x28223BE20](v87);
  v80 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E510, &qword_274652708);
  MEMORY[0x28223BE20](v8);
  v10 = (&v70 - v9);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E518, &qword_274652710);
  MEMORY[0x28223BE20](v84);
  v86 = &v70 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E520, &qword_274652718);
  MEMORY[0x28223BE20](v81);
  v13 = &v70 - v12;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E528, &qword_274652720);
  MEMORY[0x28223BE20](v85);
  v15 = &v70 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E530, &qword_274652728);
  MEMORY[0x28223BE20](v82);
  v17 = (&v70 - v16);
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = a1;
    sub_274638FAC();

    v19 = v90;
    v20 = v93;
    if (v96)
    {
      if (v96 == 1)
      {
        v80 = v95;
        v74 = v15;
        v21 = v94;
        v77 = v94;
        v22 = v18;
        v73 = v18;
        v23 = a1;
        v24 = v92;
        v76 = v92;
        v72 = v13;
        v25 = v91;
        v75 = v91;

        v26 = [v19 localizedName];
        v27 = sub_27463B6AC();
        v78 = v19;
        v28 = v27;
        v71 = v29;

        v30 = swift_allocObject();
        v31 = v8;
        v32 = v83;
        *(v30 + 2) = v23;
        *(v30 + 3) = v32;
        *(v30 + 4) = v24;
        *(v30 + 5) = v20;
        v33 = swift_allocObject();
        v79 = v20;
        v34 = v33;
        *(v33 + 2) = v25;
        *(v33 + 3) = v23;
        *(v33 + 4) = v32;
        *(v33 + 5) = v21;
        v35 = v80;
        *(v33 + 6) = v80;
        v36 = *(v31 + 60);
        *(v10 + v36) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
        swift_storeEnumTagMultiPayload();
        v37 = v71;
        v10[4] = v28;
        v10[5] = v37;
        *v10 = sub_2744C9C08;
        v10[1] = v30;
        v10[2] = sub_2744C9C14;
        v10[3] = v34;
        sub_274412C20(v10, v72, &qword_28094E510, &qword_274652708);
        swift_storeEnumTagMultiPayload();
        sub_2744CA97C(&qword_28094E548, &qword_28094E530);
        sub_2744CA97C(&qword_28094E550, &qword_28094E510);
        v38 = v73;
        v39 = v79;

        v40 = v75;
        swift_unknownObjectRetain();

        v41 = v74;
        sub_274639DDC();
        sub_274412C20(v41, v86, &qword_28094E528, &qword_274652720);
        swift_storeEnumTagMultiPayload();
        sub_2744C9A28();
        sub_2744C9B08();
        sub_274639DDC();
        sub_27443C9D4(v78, v40, v76, v39, v77, v35, 1);
        sub_2744C9C24(v41, &qword_28094E528);
        v42 = v10;
        v43 = &qword_28094E510;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_274638FAC();

        v57 = v89;
        if (v89)
        {
          sub_27463B70C("Choose a Parameter", 18);
          if (qword_2809492C0 != -1)
          {
            swift_once();
          }

          v58 = qword_28094BB00;
          v59 = sub_27463B66C();
          v60 = sub_27463B66C();

          v61 = [v58 localizedStringForKey:v59 value:v60 table:0];

          v62 = sub_27463B6AC();
          v64 = v63;

          v65 = swift_allocObject();
          v66 = v83;
          *(v65 + 16) = a1;
          *(v65 + 24) = v66;
          v67 = v78[15];
          *(v6 + v67) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
          swift_storeEnumTagMultiPayload();
          v6[4] = v62;
          v6[5] = v64;
          *v6 = sub_2744C9BC0;
          v6[1] = v65;
          v6[2] = CGSizeMake;
          v6[3] = 0;
          sub_274412C20(v6, v79, &qword_28094E500, &qword_2746526F8);
          swift_storeEnumTagMultiPayload();
          sub_2744CA97C(&qword_28094E538, &qword_28094E500);
          v68 = v18;
          v69 = v80;
          sub_274639DDC();
          sub_2744C9BC8(v57);
          sub_2744C9C24(v6, &qword_28094E500);
        }

        else
        {
          swift_storeEnumTagMultiPayload();
          sub_2744CA97C(&qword_28094E538, &qword_28094E500);
          v69 = v80;
          sub_274639DDC();
        }

        sub_274412C20(v69, v86, &qword_28094E508, &qword_274652700);
        swift_storeEnumTagMultiPayload();
        sub_2744C9A28();
        sub_2744C9B08();
        sub_274639DDC();
        v42 = v69;
        v43 = &qword_28094E508;
      }

      return sub_2744C9C24(v42, v43);
    }

    else
    {
      v75 = v91;
      v78 = v90;
      v76 = v92;
      v79 = v93;
      v77 = v94;
      v80 = v95;

      sub_27463B70C("Select a Magic Variable", 23);
      if (qword_2809492C0 != -1)
      {
        swift_once();
      }

      v44 = qword_28094BB00;
      v45 = sub_27463B66C();
      v46 = sub_27463B66C();

      v47 = [v44 localizedStringForKey:v45 value:v46 table:0];

      v48 = sub_27463B6AC();
      v50 = v49;

      v51 = swift_allocObject();
      v53 = v82;
      v52 = v83;
      *(v51 + 16) = a1;
      *(v51 + 24) = v52;
      v54 = *(v53 + 60);
      *(v17 + v54) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
      swift_storeEnumTagMultiPayload();
      v17[4] = v48;
      v17[5] = v50;
      *v17 = CGSizeMake;
      v17[1] = 0;
      v17[2] = sub_2744C9C74;
      v17[3] = v51;
      sub_274412C20(v17, v13, &qword_28094E530, &qword_274652728);
      swift_storeEnumTagMultiPayload();
      sub_2744CA97C(&qword_28094E548, &qword_28094E530);
      sub_2744CA97C(&qword_28094E550, &qword_28094E510);
      v55 = v18;
      sub_274639DDC();
      sub_274412C20(v15, v86, &qword_28094E528, &qword_274652720);
      swift_storeEnumTagMultiPayload();
      sub_2744C9A28();
      sub_2744C9B08();
      sub_274639DDC();
      sub_27443C9D4(v78, v75, v76, v79, v77, v80, 0);
      sub_2744C9C24(v15, &qword_28094E528);
      return sub_2744C9C24(v17, &qword_28094E530);
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744BF860(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;

  return sub_27463AD5C();
}

void sub_2744BF904(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    sub_27443DB34(0);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2744BF9B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[0] = a3;
  v19[1] = a5;
  v8 = sub_2746396BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E560, &qword_274652780);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v19[0];
  v16[5] = a4;
  v17 = a1;

  sub_27463AD5C();
  sub_2746396AC();
  sub_2744CA97C(&qword_28094E568, &qword_28094E560);
  sub_2744C9840(&qword_280949470, MEMORY[0x277CDDB18]);
  sub_27463A69C();
  (*(v9 + 8))(v11, v8);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_2744BFC34(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1)
  {
    memset(v13, 0, sizeof(v13));
    v14 = 2;
    v4 = a1;
    sub_27443CA58(v13);

    return a3(v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744BFCF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v11 = a2;

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CA00, &qword_27464ED50);
  sub_2744CA97C(&unk_28094CDA0, &unk_28094CA00);

  return sub_27463AD5C();
}

uint64_t sub_2744BFE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  sub_27463B13C();
  sub_27463946C();
}

uint64_t sub_2744BFE84(uint64_t a1, id a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    if (a2)
    {
      v7 = v6;
      swift_unknownObjectRetain();
      a2 = a2;
      sub_27463B1BC();
      sub_27443DA88(v7, 1, v8, v9, 0);
      swift_unknownObjectRelease();

LABEL_5:
      memset(v19, 0, sizeof(v19));
      v20 = 2;
      v10 = a2;
      sub_27443CA58(v19);

      return a4(v11, v12, v13, v14, v15, v16, v17);
    }

    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    swift_unknownObjectRetain();
  }

  else
  {
    if (a2)
    {
      goto LABEL_5;
    }

    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  }

  result = sub_27463978C();
  __break(1u);
  return result;
}

uint64_t sub_2744C0030()
{
  sub_27463B70C("Go Back", 7);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v0 = qword_28094BB00;
  v1 = sub_27463B66C();
  v2 = sub_27463B66C();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  sub_27463B6AC();
  sub_274412BBC();
  return sub_27463ACCC();
}

uint64_t sub_2744C015C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v5 = sub_2746396BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E560, &qword_274652780);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = a1;
  sub_27463AD5C();
  sub_2746396AC();
  sub_2744CA97C(&qword_28094E568, &qword_28094E560);
  sub_2744C9840(&qword_280949470, MEMORY[0x277CDDB18]);
  sub_27463A69C();
  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

void sub_2744C03CC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = 0uLL;
    v4 = 0;
    v2 = a1;
    sub_27443D214(&v3);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2744C0488@<X0>(uint64_t a1@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E308, &qword_2746524E0);
  MEMORY[0x28223BE20](v41);
  v4 = v32 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E310, &qword_2746524E8);
  MEMORY[0x28223BE20](v38);
  v37 = (v32 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E318, &qword_2746524F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v32 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E320, &qword_2746524F8);
  MEMORY[0x28223BE20](v39);
  v13 = v32 - v12;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E328, &qword_274652500);
  MEMORY[0x28223BE20](v40);
  v15 = v32 - v14;
  v16 = *v1;
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    sub_274638FAC();

    v18 = v42;
    v19 = v43;
    if (v48)
    {
      sub_27443C9D4(v42, v43, v44, v45, v46, v47, v48);
      swift_storeEnumTagMultiPayload();
      sub_2744C93D4(&qword_28094E330, &qword_28094E328, &qword_274652500, sub_2744C944C);
      return sub_274639DDC();
    }

    else
    {
      v33 = v47;
      v34 = v46;
      v35 = v45;
      v36 = v44;
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v22 = v21;
        v32[0] = v19;
        v32[1] = a1;
        v23 = *(*(v1 + 32) + 24);
        swift_unknownObjectRetain();
        v24 = [v23 actionTree];
        v25 = [v24 outputsForAction:*(v1 + 16) inScopeOfAction:v22];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952610, &qword_274652550);
        v26 = sub_27463B81C();

        if (sub_274453594())
        {
          *v11 = sub_274639B2C();
          *(v11 + 1) = 0;
          v11[16] = 1;
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E350, &qword_274652558);
          sub_2744C0A70(v26, v18, v1, &v11[*(v27 + 44)]);

          sub_274412C20(v11, v8, &qword_28094E318, &qword_2746524F0);
          v28 = v37;
          *v37 = 0;
          *(v28 + 8) = 1;
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E358, &qword_274652560);
          sub_274412C20(v8, v28 + *(v29 + 48), &qword_28094E318, &qword_2746524F0);
          swift_unknownObjectRelease();
          sub_2744C9C24(v11, &qword_28094E318);
          sub_2744C9C24(v8, &qword_28094E318);
          sub_27441277C(v28, v13, &qword_28094E310, &qword_2746524E8);
          v30 = 0;
        }

        else
        {

          swift_unknownObjectRelease();
          v30 = 1;
        }

        v19 = v32[0];
        __swift_storeEnumTagSinglePayload(v13, v30, 1, v38);
        sub_27441277C(v13, v15, &qword_28094E320, &qword_2746524F8);
        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      __swift_storeEnumTagSinglePayload(v15, v31, 1, v39);
      sub_274412C20(v15, v4, &qword_28094E328, &qword_274652500);
      swift_storeEnumTagMultiPayload();
      sub_2744C93D4(&qword_28094E330, &qword_28094E328, &qword_274652500, sub_2744C944C);
      sub_274639DDC();
      sub_27443C9D4(v18, v19, v36, v35, v34, v33, 0);
      return sub_2744C9C24(v15, &qword_28094E328);
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744C0A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v44 = a4;
  v7 = sub_2746396BC();
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  MEMORY[0x28223BE20](v7);
  v41 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E360, &qword_274652568);
  MEMORY[0x28223BE20](v40);
  v11 = v35 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E368, &qword_274652570);
  MEMORY[0x28223BE20](v38);
  v36 = v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E370, &qword_274652578);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v39 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v37 = v35 - v17;
  *v11 = sub_274639B2C();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v35[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E378, qword_274652580) + 44);
  v35[0] = a1;
  v47 = a1;
  v35[1] = swift_getKeyPath();
  v18 = *a3;
  v19 = *(a3 + 2);
  v48 = *(a3 + 24);
  v49 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  v21 = a3[1];
  *(v20 + 24) = *a3;
  *(v20 + 40) = v21;
  *(v20 + 56) = *(a3 + 4);

  swift_unknownObjectRetain();
  sub_274412C20(&v49, v46, &qword_28094C6C0, &qword_27464E1D0);
  v22 = v19;
  sub_274412C20(&v48, v46, &qword_28094E388, &qword_2746525C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E390, &qword_2746525C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E398, &qword_2746525D0);
  sub_2744CA97C(&qword_28094E3A0, &qword_28094E390);
  sub_2744CA97C(&qword_28094E3A8, &qword_28094E398);
  sub_27463AF7C();
  v45 = v35[0];
  sub_2744CA97C(&qword_28094E3B0, &qword_28094E360);
  sub_2744C951C();
  v23 = v36;
  sub_27463A61C();
  sub_2744C9C24(v11, &qword_28094E360);
  v24 = v41;
  sub_2746396AC();
  sub_2744C9840(&qword_280949470, MEMORY[0x277CDDB18]);
  v25 = v37;
  v26 = v42;
  sub_27463A69C();
  (*(v43 + 8))(v24, v26);
  sub_2744C9C24(v23, &qword_28094E368);
  v27 = *(v14 + 16);
  v28 = v39;
  v27(v39, v25, v13);
  v29 = v44;
  *v44 = 0;
  *(v29 + 8) = 1;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E3F0, &qword_2746525F0);
  v27(&v30[*(v31 + 48)], v28, v13);
  v32 = &v30[*(v31 + 64)];
  *v32 = 0;
  v32[8] = 1;
  v33 = *(v14 + 8);
  v33(v25, v13);
  return (v33)(v28, v13);
}

void sub_2744C1028(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_27463B6AC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_2744C1080(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v5 = *a1;
  v6 = *a3;
  v7 = *(a3 + 2);
  v13 = *(a3 + 24);
  v14 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = a2;
  v9 = a3[1];
  *(v8 + 32) = *a3;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a3 + 4);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_274412C20(&v14, v12, &qword_28094C6C0, &qword_27464E1D0);
  v10 = v7;
  sub_274412C20(&v13, v12, &qword_28094E388, &qword_2746525C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E408, &qword_274652608);
  sub_2744C9758();
  return sub_27463AD5C();
}

void sub_2744C11AC(void *a1, uint64_t a2, id *a3)
{
  v4 = [a1 variableWithProvider_];
  if (*a3)
  {
    v5 = v4;
    v6 = *a3;
    v7 = v5;
    sub_27443DB34(v5);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2744C1290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 displayName];
  sub_27463B6AC();

  v5 = [a1 icon];
  sub_274638B3C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E408, &qword_274652608);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2744C1348(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E3F8, &qword_2746525F8);
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E3C8, &qword_2746525D8);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  if (sub_274453594() < 2)
  {
    sub_274412C20(a1, v4, &qword_28094E360, &qword_274652568);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E360, &qword_274652568);
    sub_2744C95D4();
    sub_2744CA97C(&qword_28094E3B0, &qword_28094E360);
    return sub_274639DDC();
  }

  else
  {
    v8 = sub_27463A32C();
    sub_2746390AC();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    sub_274412C20(a1, v7, &qword_28094E360, &qword_274652568);
    v17 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E3D8, &qword_2746525E0) + 36)];
    *v17 = v8;
    *(v17 + 1) = v10;
    *(v17 + 2) = v12;
    *(v17 + 3) = v14;
    *(v17 + 4) = v16;
    v17[40] = 0;
    v18 = &v7[*(v5 + 36)];
    v19 = *(sub_27463970C() + 20);
    v20 = *MEMORY[0x277CE0118];
    v21 = sub_274639BFC();
    (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
    __asm { FMOV            V0.2D, #8.0 }

    *v18 = _Q0;
    sub_27463AB1C();
    v27 = sub_27463ABAC();

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E400, &qword_274652600);
    *&v18[*(v28 + 52)] = v27;
    *&v18[*(v28 + 56)] = 256;
    v29 = sub_27463B0CC();
    v31 = v30;
    v32 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E3E8, &qword_2746525E8) + 36)];
    *v32 = v29;
    v32[1] = v31;
    sub_274412C20(v7, v4, &qword_28094E3C8, &qword_2746525D8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E360, &qword_274652568);
    sub_2744C95D4();
    sub_2744CA97C(&qword_28094E3B0, &qword_28094E360);
    sub_274639DDC();
    return sub_2744C9C24(v7, &qword_28094E3C8);
  }
}

uint64_t sub_2744C1714@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v36 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E470, &qword_274652650);
  MEMORY[0x28223BE20](v35);
  v5 = &v26 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E478, &qword_274652658);
  MEMORY[0x28223BE20](v33);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E480, &qword_274652660);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E488, &qword_274652668);
  MEMORY[0x28223BE20](v34);
  v15 = &v26 - v14;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = a1;
    sub_274638FAC();

    v17 = v37;
    v18 = v38;
    if (v43)
    {
      sub_27443C9D4(v37, v38, v39, v40, v41, v42, v43);
      swift_storeEnumTagMultiPayload();
      sub_2744C9964();
      return sub_274639DDC();
    }

    else
    {
      v28 = v42;
      v29 = v41;
      v30 = v40;
      v31 = v39;
      v20 = 1;
      if (v38)
      {
        v21 = objc_allocWithZone(MEMORY[0x277D7C888]);
        v22 = swift_unknownObjectRetain();
        v23 = sub_2745C2578(v22, 0);
        v27 = v23;
        *v13 = sub_274639B2C();
        *(v13 + 1) = 0;
        v13[16] = 1;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E4A0, &qword_274652670);
        sub_2744C1B7C(a1, v32, v23, &v13[*(v24 + 44)]);
        sub_274412C20(v13, v10, &qword_28094E480, &qword_274652660);
        *v7 = 0;
        v7[8] = 1;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E4A8, &qword_274652678);
        sub_274412C20(v10, &v7[*(v25 + 48)], &qword_28094E480, &qword_274652660);

        sub_2744C9C24(v13, &qword_28094E480);
        sub_2744C9C24(v10, &qword_28094E480);
        sub_27441277C(v7, v15, &qword_28094E478, &qword_274652658);
        v20 = 0;
      }

      __swift_storeEnumTagSinglePayload(v15, v20, 1, v33);
      sub_274412C20(v15, v5, &qword_28094E488, &qword_274652668);
      swift_storeEnumTagMultiPayload();
      sub_2744C9964();
      sub_274639DDC();
      sub_27443C9D4(v17, v18, v31, v30, v29, v28, 0);
      return sub_2744C9C24(v15, &qword_28094E488);
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744C1B7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v39 = a4;
  v7 = sub_2746396BC();
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  MEMORY[0x28223BE20](v7);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E4B0, &qword_274652680);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E4B8, &qword_274652688);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v40 = a3;
  sub_274638B4C();
  sub_2744C9840(&qword_28094D360, MEMORY[0x277D7D598]);
  v22 = a1;
  v23 = a3;
  sub_27463AD5C();
  v24 = v34;
  sub_2746396AC();
  sub_2744CA97C(&qword_28094E4C0, &qword_28094E4B0);
  sub_2744C9840(&qword_280949470, MEMORY[0x277CDDB18]);
  v25 = v35;
  v26 = v37;
  sub_27463A69C();
  (*(v38 + 8))(v24, v26);
  (*(v36 + 8))(v13, v25);
  v27 = *(v15 + 16);
  v27(v17, v20, v14);
  v28 = v39;
  *v39 = 0;
  *(v28 + 8) = 1;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E4C8, &qword_274652690);
  v27(&v29[*(v30 + 48)], v17, v14);
  v31 = &v29[*(v30 + 64)];
  *v31 = 0;
  v31[8] = 1;
  v32 = *(v15 + 8);
  v32(v20, v14);
  return (v32)(v17, v14);
}

void sub_2744C1F8C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
    sub_27443DB34(a3);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2744C203C(void *a1)
{
  v2 = [a1 name];
  sub_27463B6AC();

  v3 = [a1 icon];

  return sub_274638B3C();
}

uint64_t sub_2744C20EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v24 = a1;
  v23 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v3 = sub_27463ADAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  WitnessTable = swift_getWitnessTable();
  sub_27463914C();
  swift_getWitnessTable();
  sub_2746394AC();
  v10 = sub_274639DEC();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  LOBYTE(v11) = *v2;
  v14 = *(v2 + 8);
  v13 = *(v2 + 16);
  if (v11)
  {
    LOBYTE(v35) = 1;
    v36 = v14;
    v37 = v13;
    sub_2744C297C(v24, 0.0, 0.0);
    v15 = WitnessTable;
    sub_2744E9688();
    v16 = *(v4 + 8);
    v16(v6, v3);
    sub_2744E9688();
    swift_getWitnessTable();
    sub_27456E878();
    v16(v6, v3);
    v16(v9, v3);
  }

  else
  {
    v17 = swift_allocObject();
    v18 = *(v24 + 24);
    *(v17 + 16) = v23;
    *(v17 + 24) = v18;
    *(v17 + 32) = 0;
    *(v17 + 40) = v14;
    *(v17 + 48) = v13;

    v31 = sub_27463949C();
    v32 = v19;
    swift_getWitnessTable();
    sub_2744E9688();

    v29 = v35;
    v30 = v36;
    sub_2744E9688();
    v29 = v31;
    v30 = v32;
    v15 = WitnessTable;
    sub_27456E7CC();
  }

  v33 = swift_getWitnessTable();
  v34 = v15;
  v20 = v26;
  swift_getWitnessTable();
  sub_2744E9688();
  return (*(v25 + 8))(v12, v20);
}

uint64_t sub_2744C2544@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a1;
  v25 = a4;
  v26 = a7;
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v11 = sub_27463ADAC();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_27463914C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  v28 = a5;
  v29 = a6;
  v30 = a2 & 1;
  v31 = a3;
  v32 = v25;
  v33 = v24;
  v20 = sub_27463A30C();
  sub_2744B2C08(v20, sub_2744C9130, v27, v11, WitnessTable);
  swift_getWitnessTable();
  sub_2744E9688();
  v21 = *(v14 + 8);
  v21(v16, v13);
  sub_2744E9688();
  return (v21)(v19, v13);
}

uint64_t sub_2744C2778@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v26 = a6;
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v11 = sub_27463ADAC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v27 = a1 & 1;
  v28 = a2;
  v29 = a3;
  sub_2746393BC();
  v19 = v18;
  v21 = v20;
  v23 = type metadata accessor for WorkflowScrollView(0, a4, a5, v22);
  sub_2744C297C(v23, v19, v21);
  swift_getWitnessTable();
  sub_2744E9688();
  v24 = *(v12 + 8);
  v24(v14, v11);
  sub_2744E9688();
  return (v24)(v17, v11);
}

uint64_t sub_2744C297C(uint64_t a1, double a2, double a3)
{
  swift_getTupleTypeMetadata3();
  v3 = sub_27463B19C();
  swift_getWitnessTable();
  sub_27456E924(v3);
  return sub_27463AD9C();
}

uint64_t sub_2744C2A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  v14(v11);
  sub_2744E9688();
  v15 = *(v7 + 8);
  v15(v9, a4);
  v21 = 0;
  v22 = 1;
  v23[0] = &v21;
  (*(v7 + 16))(v9, v13, a4);
  v19 = 0;
  v20 = 1;
  v23[1] = v9;
  v23[2] = &v19;
  v18[0] = MEMORY[0x277CE1180];
  v18[1] = a4;
  v18[2] = MEMORY[0x277CE1180];
  v17[1] = MEMORY[0x277CE1170];
  v17[2] = a5;
  v17[3] = MEMORY[0x277CE1170];
  sub_274575750(v23, 3, v18);
  v15(v13, a4);
  return (v15)(v9, a4);
}

uint64_t sub_2744C2C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_27463A35C();

  sub_27451FA64(v5);

  sub_2746390AC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2F8, &qword_2746524D0);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E300, &qword_2746524D8);
  v17 = a2 + *(result + 36);
  *v17 = v6;
  *(v17 + 8) = v8;
  *(v17 + 16) = v10;
  *(v17 + 24) = v12;
  *(v17 + 32) = v14;
  *(v17 + 40) = 0;
  return result;
}

double sub_2744C2D50@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  if ((sub_27451F9FC(a2) & 1) == 0)
  {
    sub_27463AB7C();
    sub_27463B0CC();
    sub_2746392FC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E458, &qword_274652648);
  sub_2744C988C();
  sub_2744C98E0();
  sub_274639DDC();
  *a1 = v4;
  a1[1] = v5;
  a1[2] = *v6;
  result = *&v6[9];
  *(a1 + 41) = *&v6[9];
  return result;
}

uint64_t sub_2744C2E84@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E4E0, &unk_2746526D8);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  if (qword_280949280 != -1)
  {
    swift_once();
  }

  v6 = qword_280965DC8;
  v33 = sub_27463ABDC();
  sub_27463B0CC();
  sub_2746392FC();
  v7 = v35;
  v8 = v36;
  v9 = v37;
  v10 = v38;
  v11 = v39;
  v12 = v40;
  v13 = &v5[*(v3 + 36)];
  v14 = *(sub_27463970C() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_274639BFC();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #1.0 }

  *v13 = _Q0;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A6C8, &unk_274649500) + 36)] = 256;
  *v5 = v33;
  *(v5 + 1) = v7;
  v5[16] = v8;
  *(v5 + 3) = v9;
  v5[32] = v10;
  *(v5 + 5) = v11;
  *(v5 + 6) = v12;
  LOBYTE(v15) = sub_27463A38C();
  sub_2746390AC();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v34;
  sub_27441277C(v5, v34, &unk_28094E4E0, &unk_2746526D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E4F0, &qword_2746526E8);
  v32 = v30 + *(result + 36);
  *v32 = v15;
  *(v32 + 8) = v23;
  *(v32 + 16) = v25;
  *(v32 + 24) = v27;
  *(v32 + 32) = v29;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_2744C3100@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2D8, &qword_2746524B0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2E0, &qword_2746524B8);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if (a1)
  {
    v14 = a1;
    v15 = sub_27443A0F0();

    if (v15)
    {
      if ([v15 numberOfItems] > 0)
      {
        *v13 = sub_274639C5C();
        *(v13 + 1) = 0;
        v13[16] = 0;
        v16 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2E8, &qword_2746524C0) + 44)];
        v17 = v15;
        sub_27440FB1C(v17, v10);
        *(v10 + *(v5 + 52)) = v17;
        sub_274412C20(v10, v7, &qword_28094E2D8, &qword_2746524B0);
        *v16 = 0;
        v16[8] = 1;
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2F0, &qword_2746524C8);
        sub_274412C20(v7, &v16[*(v18 + 48)], &qword_28094E2D8, &qword_2746524B0);
        v19 = v17;
        sub_2744C9C24(v10, &qword_28094E2D8);
        sub_2744C9C24(v7, &qword_28094E2D8);
        sub_27463932C();
        sub_27463B14C();
        sub_27463933C();

        sub_27463932C();
        sub_27463B14C();
        sub_27463933C();

        v20 = sub_27463931C();

        *&v13[*(v11 + 36)] = v20;
        sub_27441277C(v13, a3, &qword_28094E2E0, &qword_2746524B8);
        return __swift_storeEnumTagSinglePayload(a3, 0, 1, v11);
      }
    }

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v11);
  }

  else
  {
    type metadata accessor for WorkflowEditorResults(0);
    sub_2744C9840(&unk_28094C450, type metadata accessor for WorkflowEditorResults);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

void *sub_2744C347C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_274639C5C();
  v18 = 1;
  sub_2744C3598(__src);
  memcpy(__dst, __src, 0x99uLL);
  memcpy(v20, __src, 0x99uLL);
  sub_274412C20(__dst, &v15, &qword_28094E4D0, &qword_274652698);
  sub_2744C9C24(v20, &qword_28094E4D0);
  memcpy(&v17[7], __dst, 0x99uLL);
  v4 = v18;
  v5 = sub_27463A38C();
  sub_2746390AC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  result = memcpy((a2 + 17), v17, 0xA0uLL);
  *(a2 + 184) = v5;
  *(a2 + 192) = v7;
  *(a2 + 200) = v9;
  *(a2 + 208) = v11;
  *(a2 + 216) = v13;
  *(a2 + 224) = 0;
  return result;
}

uint64_t sub_2744C3598@<X0>(uint64_t a1@<X8>)
{
  if (sub_2744C3848())
  {
    sub_27463B70C("Add actions from below to create a shortcut.", 44);
  }

  else
  {
    sub_27463B70C("Add actions from the right to create a shortcut.", 48);
  }

  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v2 = qword_28094BB00;
  v3 = sub_27463B66C();
  v4 = sub_27463B66C();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  sub_27463B6AC();
  sub_27463ABCC();
  v6 = sub_27463A4DC();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  KeyPath = swift_getKeyPath();
  v14 = sub_27463A31C();
  sub_2746390AC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v10 & 1;
  v55 = v10 & 1;
  v54 = 0;
  v24 = sub_27463A33C();
  sub_2746390AC();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v56 = 0;
  __src[0] = v6;
  __src[1] = v8;
  LOBYTE(__src[2]) = v23;
  __src[3] = v12;
  __src[4] = KeyPath;
  LOBYTE(__src[5]) = 1;
  LOBYTE(__src[6]) = v14;
  __src[7] = v16;
  __src[8] = v18;
  __src[9] = v20;
  __src[10] = v22;
  LOBYTE(__src[11]) = 0;
  LOBYTE(__src[12]) = v24;
  __src[13] = v25;
  __src[14] = v27;
  __src[15] = v29;
  __src[16] = v31;
  LOBYTE(__src[17]) = 0;
  memcpy(__dst, __src, 0x89uLL);
  v34[144] = 1;
  memcpy(a1, __dst, 0x90uLL);
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  v37[0] = v6;
  v37[1] = v8;
  v38 = v23;
  v39 = v12;
  v40 = KeyPath;
  v41 = 1;
  v42 = v14;
  v43 = v16;
  v44 = v18;
  v45 = v20;
  v46 = v22;
  v47 = 0;
  v48 = v24;
  v49 = v26;
  v50 = v28;
  v51 = v30;
  v52 = v32;
  v53 = 0;
  sub_274412C20(__src, v34, &qword_28094E4D8, &qword_2746526D0);
  return sub_2744C9C24(v37, &qword_28094E4D8);
}

uint64_t sub_2744C3848()
{
  v0 = sub_274639FEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BC50, &qword_2746517C0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A610, &qword_2746493F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  type metadata accessor for EmptyStateView(0);
  sub_2744C6930();
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_274412C20(v15, v6, &qword_28094A610, &qword_2746493F0);
  sub_274412C20(v12, &v6[v16], &qword_28094A610, &qword_2746493F0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) != 1)
  {
    sub_274412C20(v6, v9, &qword_28094A610, &qword_2746493F0);
    if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) != 1)
    {
      v18 = &v6[v16];
      v19 = v23;
      (*(v1 + 32))(v23, v18, v0);
      sub_2744C9840(&unk_28094BC90, MEMORY[0x277CE0570]);
      v17 = sub_27463B5BC();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_2744C9C24(v12, &qword_28094A610);
      sub_2744C9C24(v15, &qword_28094A610);
      v20(v9, v0);
      sub_2744C9C24(v6, &qword_28094A610);
      return v17 & 1;
    }

    sub_2744C9C24(v12, &qword_28094A610);
    sub_2744C9C24(v15, &qword_28094A610);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_2744C9C24(v12, &qword_28094A610);
  sub_2744C9C24(v15, &qword_28094A610);
  if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_2744C9C24(v6, &unk_28094BC50);
    v17 = 0;
    return v17 & 1;
  }

  sub_2744C9C24(v6, &qword_28094A610);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_2744C3C84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a4@<X8>)
{
  if (a2)
  {
    v6 = a2;
    v7 = sub_27443CDC8();
    v9 = v8;

    *a4 = sub_27463B0BC();
    a4[1] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2A0, &qword_274652478);
    sub_2744C3D78(a1, v7, v9, a4 + *(v11 + 44));
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744C3D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2A8, &qword_274652480);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v37 = v8;
  v15 = *(v8 + 16);
  v15(&v36 - v13, a1, v7, v12);
  if (sub_27463B72C() < 1)
  {
    v24 = 0;
    v25 = 0;
    v38 = 0;
    v39 = 0;
    v26 = 0;
    v17 = 0;
    v19 = 0;
    v21 = 0;
    v23 = 0;
  }

  else
  {
    LOBYTE(v26) = sub_27463A34C();
    sub_2746390AC();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    LOBYTE(v42[0]) = 0;
    v39 = 0;

    sub_27463932C();
    v24 = a2;
    sub_27463B14C();
    v38 = sub_27463933C();

    v25 = a3;

    v26 = v26;
  }

  (v15)(v10, v14, v7);
  v27 = v40;
  (v15)(v40, v10, v7);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2B0, &qword_274652488) + 48);
  __src[0] = v24;
  __src[1] = v25;
  __src[2] = v26;
  __src[3] = v17;
  __src[4] = v19;
  __src[5] = v21;
  __src[6] = v23;
  v29 = v10;
  v30 = v24;
  v31 = v39;
  v32 = v25;
  v33 = v38;
  __src[7] = v39;
  __src[8] = v38;
  memcpy((v27 + v28), __src, 0x48uLL);
  sub_274412C20(__src, v42, &qword_28094E2B8, &qword_274652490);
  v34 = *(v37 + 8);
  v34(v14, v7);
  v42[0] = v30;
  v42[1] = v32;
  v42[2] = v26;
  v42[3] = v17;
  v42[4] = v19;
  v42[5] = v21;
  v42[6] = v23;
  v42[7] = v31;
  v42[8] = v33;
  sub_2744C9C24(v42, &qword_28094E2B8);
  return (v34)(v29, v7);
}

uint64_t sub_2744C4088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v3 = type metadata accessor for ScrollToRunningActionModifier(0);
  MEMORY[0x28223BE20](v3 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2C0, &qword_274652498);
  MEMORY[0x28223BE20](v17);
  v5 = v16 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2C8, &qword_2746524A0);
  MEMORY[0x28223BE20](v18);
  v7 = v16 - v6;
  if (*v2)
  {
    v16[0] = *(*v2 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_onScrollToAction);
    sub_2744C9158();
    v16[1] = v2;
    v8 = swift_allocObject();
    sub_2744C7648();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_2744CAAF4;
    *(v9 + 24) = v8;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2D0, &qword_2746524A8);
    (*(*(v10 - 8) + 16))(v5, v19, v10);
    v11 = v17;
    *&v5[*(v17 + 52)] = v16[0];
    v12 = &v5[*(v11 + 56)];
    *v12 = sub_27444A550;
    v12[1] = v9;
    sub_2744C9158();
    v13 = swift_allocObject();
    sub_2744C7648();
    sub_27441277C(v5, v7, &qword_28094E2C0, &qword_274652498);
    v14 = &v7[*(v18 + 36)];
    *v14 = sub_2744C92D0;
    *(v14 + 1) = v13;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    sub_27441277C(v7, v20, &qword_28094E2C8, &qword_2746524A0);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

void sub_2744C4408()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0, &unk_274651B60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v55 - v6;
  v8 = sub_27463969C();
  v69 = *(v8 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v16 = v55 - v15;
  v17 = *v0;
  if (*v0)
  {
    v18 = &v17[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters];
    v19 = *&v17[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters];
    if (v19)
    {
      v61 = v2;
      v62 = v14;
      v20 = v12;
      v21 = v1;
      v65 = v13;
      v66 = v17;
      v22 = *(v18 + 2);
      v63 = *(v18 + 3);
      v64 = v22;
      v23 = v18[32];
      v68 = *(v18 + 2);
      v60 = v23;
      v73 = v23 & 1;
      v24 = type metadata accessor for ScrollToRunningActionModifier(0);
      v70 = v0;
      v25 = v19;
      v26 = v70;
      sub_2744C6930();
      if (__swift_getEnumTagSinglePayload(v7, 1, v20) == 1)
      {

        sub_2744C9C24(v7, &unk_28094D7C0);
      }

      else
      {
        v59 = v25;
        v27 = *(v69 + 32);
        v28 = v20;
        v58 = v69 + 32;
        v57 = v27;
        v27(v16, v7, v20);
        v55[1] = v24;
        v29 = v26 + *(v24 + 24);
        v30 = *v29;
        v31 = *(v29 + 8);

        v32 = v30;
        v67 = v16;
        v33 = v21;
        v34 = v61;
        if ((v31 & 1) == 0)
        {
          sub_27463BC0C();
          v35 = sub_27463A2FC();
          sub_274638CEC();

          v16 = v67;
          sub_274639AAC();
          swift_getAtKeyPath();
          j__swift_release(v30);
          (*(v34 + 8))(v4, v21);
          v32 = v72[0];
        }

        if (v32)
        {
          sub_27463874C();
        }

        v56 = v68 & 1;

        v36 = v28;
        if ((v31 & 1) == 0)
        {
          sub_27463BC0C();
          v37 = sub_27463A2FC();
          sub_274638CEC();

          v16 = v67;
          sub_274639AAC();
          swift_getAtKeyPath();
          j__swift_release(v30);
          (*(v34 + 8))(v4, v33);
          v30 = v72[0];
        }

        v38 = v69;
        v39 = v59;
        if (v30)
        {
          v40 = [v59 localizedName];
          sub_27463B6AC();

          v16 = v67;
          sub_27463875C();
        }

        v41 = *(v38 + 16);
        v42 = v62;
        v41(v62, v16, v28);
        v43 = v65;
        v41(v65, v42, v36);
        v44 = (*(v38 + 80) + 16) & ~*(v38 + 80);
        v45 = swift_allocObject();
        v57(v45 + v44, v42, v36);
        v46 = v45 + ((v9 + v44 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v46 = v39;
        *(v46 + 8) = v56;
        *(v46 + 9) = v74[0];
        *(v46 + 12) = *(v74 + 3);
        v47 = v63;
        *(v46 + 16) = v64;
        *(v46 + 24) = v47;
        *(v46 + 32) = v73;
        if (v68)
        {
          v48 = *(v38 + 8);
          v49 = v39;
          v48(v43, v36);
          v50 = sub_27463B11C();
          MEMORY[0x28223BE20](v50);
          v55[-2] = sub_2744C9328;
          v55[-1] = v45;

          sub_27463946C();
        }

        else
        {
          v71 = v39;
          sub_27444A444();
          v51 = v39;
          sub_27463C31C();
          sub_27463968C();
          sub_274430664(v72);
          v48 = *(v38 + 8);
          v48(v43, v36);
        }

        v52 = v66;

        v48(v67, v36);
        v53 = &v52[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters];
        v54 = *&v52[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters];
        v53[32] = 0;
        *v53 = 0u;
        *(v53 + 1) = 0u;
      }
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2744C4BB8(uint64_t a1, uint64_t *a2)
{
  sub_27444A444();
  sub_27463C31C();
  sub_27463968C();
  return sub_274430664(v3);
}

uint64_t sub_2744C4C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(v2 + 40);
  v17 = *v2;
  v18 = *(v2 + 1);
  v19 = v5;
  v20 = v6;
  v21 = v7;
  sub_2744C4D94(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v8 = sub_27463B0AC();
  v10 = v9;
  memcpy(v22, __dst, 0xE8uLL);
  v22[29] = v8;
  v22[30] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E420, &qword_274652610);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E428, &qword_274652618);
  memcpy((a2 + *(v12 + 36)), v22, 0xF8uLL);
  memcpy(v23, __dst, sizeof(v23));
  v24 = v8;
  v25 = v10;
  sub_274412C20(v22, v14, &unk_28094E430, &unk_274652620);
  return sub_2744C9C24(v23, &unk_28094E430);
}

void *sub_2744C4D94@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FF8, &qword_274654850);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31[-v4 - 8];
  v6 = sub_274639ABC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = v1[1];
  v38 = *v1;
  v39[0] = v10;
  *(v39 + 9) = *(v1 + 25);
  v11 = *(v1 + 4);
  v40 = v11;
  v41 = *(v1 + 40);
  if (v41 != 1)
  {

    sub_27463BC0C();
    v28 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2744C9C24(&v40, &qword_28094E440);
    (*(v7 + 8))(v9, v6);
    if (v37)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2744C9884(v36);
    return memcpy(a1, v36, 0xE8uLL);
  }

  v37 = v11;

  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:

  v12 = sub_274639C6C();
  v32 = 0;
  sub_2744C5140(&v38, v36);
  memcpy(v33, v36, sizeof(v33));
  memcpy(v34, v36, sizeof(v34));
  sub_274412C20(v33, v35, &qword_28094E448, &qword_274652638);
  sub_2744C9C24(v34, &qword_28094E448);
  memcpy(&v31[7], v33, 0x80uLL);
  v13 = v32;
  v14 = sub_27463A32C();
  sub_2746390AC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v36[0] = 0;
  sub_27463ABBC();
  v23 = sub_27463ABAC();

  v24 = sub_27463A32C();
  v25 = sub_27463A3BC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v25);
  v26 = sub_27463A40C();
  sub_2744C9C24(v5, &qword_280949FF8);
  KeyPath = swift_getKeyPath();
  v35[0] = v12;
  v35[1] = 0x4000000000000000;
  LOBYTE(v35[2]) = v13;
  memcpy(&v35[2] + 1, v31, 0x87uLL);
  LOBYTE(v35[19]) = v14;
  v35[20] = v16;
  v35[21] = v18;
  v35[22] = v20;
  v35[23] = v22;
  LOBYTE(v35[24]) = 0;
  v35[25] = v23;
  LOWORD(v35[26]) = v24;
  v35[27] = KeyPath;
  v35[28] = v26;
  CGSizeMake();
  memcpy(v36, v35, sizeof(v36));
  return memcpy(a1, v36, 0xE8uLL);
}

uint64_t sub_2744C5140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_274639B9C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_274639B8C();
  sub_274639B7C();
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = [*a1 identifier];
  sub_27463B6AC();

  sub_274639B6C();

  sub_274639B7C();
  v54[0] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E450, &qword_274652640);
  sub_27463B6BC();
  sub_274639B6C();

  sub_274639B7C();
  sub_274639BBC();
  v35 = sub_27463A52C();
  v34 = v8;
  v33 = v9;
  v36 = v10;
  sub_2745272B0(v4);
  if (v11)
  {
    sub_274639B8C();
    sub_274639B7C();
    sub_274639B6C();

    sub_274639B7C();
    sub_274639BBC();
    v12 = sub_27463A52C();
    v14 = v13;
    v16 = v15 & 1;
    v32 = v12;
    v31 = v17;
    sub_27440B094(v12, v17, v15 & 1);
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v16 = 0;
    v14 = 0;
  }

  sub_274639B8C();
  sub_274639B7C();
  v54[0] = v6;
  sub_274639B5C();
  sub_274639B7C();
  v54[0] = v5;
  sub_274639B5C();
  sub_274639B7C();
  sub_274639BBC();
  v18 = sub_27463A52C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_274639B8C();
  sub_274639B7C();
  sub_27451FA64(v4);
  v54[0] = v25;
  sub_274639B5C();
  sub_274639B7C();
  sub_274639BBC();
  v26 = sub_27463A52C();
  v50 = v35;
  v51 = v34;
  v52 = v33 & 1;
  v53 = v36;
  v46 = v32;
  v47 = v31;
  v48 = v16;
  v49 = v14;
  v54[0] = &v50;
  v54[1] = &v46;
  v42 = v18;
  v43 = v20;
  v44 = v22 & 1;
  v45 = v24;
  v38 = v26;
  v39 = v27;
  v40 = v28 & 1;
  v41 = v29;
  v54[2] = &v42;
  v54[3] = &v38;
  sub_2744B2774(v54, a2);
  sub_274483F2C(v32, v31, v16, v14);
  sub_274412C10(v38, v39, v40);

  sub_274412C10(v42, v43, v44);

  sub_274483F2C(v46, v47, v48, v49);
  sub_274412C10(v50, v51, v52);
}

uint64_t sub_2744C567C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2744C5834();
  v6 = *(v2 + 56);
  sub_2744C9D4C(v2, v13);
  v7 = swift_allocObject();
  memcpy((v7 + 16), v13, 0x69uLL);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E570, &qword_274652788) + 36);
  sub_274434ED4(v2, v8);
  *(v8 + 48) = v5 & 1;
  *(v8 + 56) = v6;
  *(v8 + 64) = sub_2744C9D84;
  *(v8 + 72) = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E578, &qword_274652790);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  KeyPath = swift_getKeyPath();
  v13[3] = &type metadata for ReorderableActionModifier;
  v13[4] = sub_2744C9D8C();
  v13[0] = swift_allocObject();
  sub_2744C9D4C(v2, v13[0] + 16);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E588, &qword_2746527C8) + 36));
  sub_274412C20(v13, (v11 + 1), qword_28094E590, &unk_2746527D0);
  *v11 = KeyPath;

  return sub_2744C9C24(v13, qword_28094E590);
}

uint64_t sub_2744C5834()
{
  v1 = v0;
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 80);
  if (v6)
  {
    v7 = v6;
    v8 = sub_27443B4C4();

    if (v8)
    {
LABEL_3:
      v9 = 0;
      return v9 & 1;
    }

    v10 = *(v1 + 96);
    if (*(v1 + 104) == 1)
    {
      if (v10)
      {
        goto LABEL_3;
      }
    }

    else
    {

      sub_27463BC0C();
      v11 = sub_27463A2FC();
      sub_274638CEC();

      sub_274639AAC();
      swift_getAtKeyPath();
      sub_2743F45E8(v10, 0);
      (*(v3 + 8))(v5, v2);
      if (v15)
      {
        goto LABEL_3;
      }
    }

    v12 = *(v1 + 72);
    v15 = *(v1 + 64);
    v16 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0, &qword_27464C120);
    sub_27463ACEC();
    v9 = v14[15] ^ 1;
    return v9 & 1;
  }

  type metadata accessor for WorkflowEditorOptions(0);
  sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  result = sub_27463978C();
  __break(1u);
  return result;
}

id sub_2744C5A50(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
  [v2 registerObject:*(a1 + 48) visibility:3];
  return v2;
}

uint64_t sub_2744C5AEC()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27452F6C4();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2744C5BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_53_0(v5);
  OUTLINED_FUNCTION_30_2();

  return sub_2744B7380(a1, v2 + v6, a2);
}

uint64_t objectdestroyTm_4()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_3_14();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  j__swift_release(*(v3 + 72));
  v4 = v3 + *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DCE0, &qword_2746515C8);
  OUTLINED_FUNCTION_4_2();
  (*(v5 + 8))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58, &unk_2746514C8);
  OUTLINED_FUNCTION_58_1();
  v6 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_73_0(v7))
    {
      OUTLINED_FUNCTION_25_0();
      (*(v8 + 8))(v3 + v6, v4);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

void sub_2744C5E34(_BYTE *a1)
{
  v3 = type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();

  sub_2744B8BA4(a1, v1 + v4);
}

unint64_t sub_2744C5EA0()
{
  result = qword_28094DD48;
  if (!qword_28094DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DCF8, &qword_2746515E0);
    sub_2744C5F58();
    sub_2744CA97C(&unk_28094DDA0, &qword_280953AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DD48);
  }

  return result;
}

unint64_t sub_2744C5F58()
{
  result = qword_28094DD50;
  if (!qword_28094DD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DCF0, &qword_2746515D8);
    sub_2744C5FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DD50);
  }

  return result;
}

unint64_t sub_2744C5FE4()
{
  result = qword_28094DD58;
  if (!qword_28094DD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DD40, &qword_274651680);
    sub_2744C609C();
    sub_2744CA97C(&qword_28094DD90, &unk_28094DD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DD58);
  }

  return result;
}

unint64_t sub_2744C609C()
{
  result = qword_28094DD60;
  if (!qword_28094DD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DD28, &qword_274651638);
    sub_2744C6154();
    sub_2744CA97C(&qword_28094DD88, &qword_28094DD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DD60);
  }

  return result;
}

unint64_t sub_2744C6154()
{
  result = qword_28094DD68;
  if (!qword_28094DD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DD20, &qword_274651608);
    sub_2744CA97C(&qword_28094DD70, &unk_28094DD78);
    sub_2744C620C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DD68);
  }

  return result;
}

unint64_t sub_2744C620C()
{
  result = qword_28094DD80;
  if (!qword_28094DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DD80);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{
  sub_27463969C();
  OUTLINED_FUNCTION_4_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2744C62DC()
{
  v0 = sub_27463969C();
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_30_2();
  return sub_2744B8C80();
}

uint64_t objectdestroy_25Tm()
{
  type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_3_14();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = *(v4 + 64);
  v5 = sub_27463969C();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = v1 + v3;

  j__swift_release(*(v1 + v3 + 72));
  v10 = v1 + v3 + *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DCE0, &qword_2746515C8);
  OUTLINED_FUNCTION_4_2();
  (*(v11 + 8))(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58, &unk_2746514C8);

  v12 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_274639FEC();
    if (!__swift_getEnumTagSinglePayload(v9 + v12, 1, v13))
    {
      OUTLINED_FUNCTION_25_0();
      (*(v14 + 8))(v9 + v12, v13);
    }
  }

  else
  {
  }

  (*(v7 + 8))(v1 + ((v3 + v16 + v8) & ~v8), v5);
  OUTLINED_FUNCTION_90();

  return swift_deallocObject();
}

uint64_t sub_2744C6598(uint64_t a1)
{
  OUTLINED_FUNCTION_6_9();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_27463969C();
  OUTLINED_FUNCTION_53_0(v7);
  return sub_2744B8D60(a1, v1 + v4, v1 + ((v4 + v6 + *(v8 + 80)) & ~*(v8 + 80)));
}

id sub_2744C664C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_2744C665C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2744C666C(double a1, double a2)
{
  v5 = OUTLINED_FUNCTION_45_2();
  v6 = type metadata accessor for WorkflowView(v5);
  OUTLINED_FUNCTION_53_0(v6);
  OUTLINED_FUNCTION_30_2();

  return sub_2744B8EB4(v3 + v7, v2, a1);
}

uint64_t sub_2744C66E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E098, &unk_274651B88);
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - v2;
  v4 = sub_274638C8C();
  __swift_allocate_value_buffer(v4, qword_280965EA0);
  v5 = OUTLINED_FUNCTION_25_1();
  __swift_project_value_buffer(v5, v6);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  return sub_274638C5C();
}

uint64_t sub_2744C67B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0, &unk_274651B60);
  __swift_allocate_value_buffer(v0, qword_28094DC40);
  v1 = __swift_project_value_buffer(v0, qword_28094DC40);
  v2 = sub_27463969C();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_2744C6830@<X0>(uint64_t a1@<X8>)
{
  if (qword_280949308 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0, &unk_274651B60);
  v3 = __swift_project_value_buffer(v2, qword_28094DC40);
  return sub_274412C20(v3, a1, &unk_28094D7C0, &unk_274651B60);
}

void sub_2744C6930()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v21 = v9;
  sub_274639ABC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v6);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_274412C20(v0, &v20 - v12, v8, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27441277C(v13, v21, v4, v2);
  }

  else
  {
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    OUTLINED_FUNCTION_14_9(v14, &dword_2743F0000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v16, v17, MEMORY[0x277D84F90]);

    sub_274639AAC();
    OUTLINED_FUNCTION_24_5();
    swift_getAtKeyPath();

    v18 = OUTLINED_FUNCTION_4_3();
    v19(v18);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2744C6ABC()
{
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_45_2();
  sub_274639ABC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_18();
  sub_274412C20(v1, v10, &qword_28094E078, &qword_27465AF70);
  if (v12 == 1)
  {
    v3 = v10[1];
    *v0 = v10[0];
    *(v0 + 16) = v3;
    *(v0 + 32) = v11;
  }

  else
  {
    sub_27463BC0C();
    v4 = sub_27463A2FC();
    OUTLINED_FUNCTION_14_9(v4, &dword_2743F0000, v5, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v6, v7, MEMORY[0x277D84F90]);

    sub_274639AAC();
    OUTLINED_FUNCTION_24_5();
    swift_getAtKeyPath();

    v8 = OUTLINED_FUNCTION_15_2();
    v9(v8);
  }

  OUTLINED_FUNCTION_56_0();
}

void sub_2744C6C3C()
{
  OUTLINED_FUNCTION_24();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_45_2();
  sub_274639ABC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v6);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_48_2();
  sub_274412C20(v1, v2, v8, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4(0);
    OUTLINED_FUNCTION_7();
    (*(v11 + 32))(v0, v2);
  }

  else
  {
    sub_27463BC0C();
    v12 = sub_27463A2FC();
    OUTLINED_FUNCTION_14_9(v12, &dword_2743F0000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v14, v15, MEMORY[0x277D84F90]);

    sub_274639AAC();
    OUTLINED_FUNCTION_24_5();
    swift_getAtKeyPath();

    v16 = OUTLINED_FUNCTION_15_2();
    v17(v16);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2744C6DD8()
{
  OUTLINED_FUNCTION_55_1();
  v1 = v0;
  v3 = v2;
  sub_274639ABC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_18();
  sub_274412C20(v1, v11, &qword_28094E088, &qword_274651B78);
  if (v11[9] == 1)
  {
    sub_27441277C(v11, v3, &qword_28094E090, &qword_274651B80);
  }

  else
  {
    sub_27463BC0C();
    v5 = sub_27463A2FC();
    OUTLINED_FUNCTION_14_9(v5, &dword_2743F0000, v6, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v7, v8, MEMORY[0x277D84F90]);

    sub_274639AAC();
    OUTLINED_FUNCTION_24_5();
    swift_getAtKeyPath();

    v9 = OUTLINED_FUNCTION_4_3();
    v10(v9);
  }

  OUTLINED_FUNCTION_56_0();
}

void sub_2744C6F1C()
{
  OUTLINED_FUNCTION_55_1();
  v1 = v0;
  v3 = v2;
  sub_274639ABC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_18();
  sub_274412C20(v1, v11, &qword_28094E080, &qword_274651B70);
  if (v11[8] == 1)
  {
    sub_27441277C(v11, v3, &unk_28094A0F0, &unk_27465AFF0);
  }

  else
  {
    sub_27463BC0C();
    v5 = sub_27463A2FC();
    OUTLINED_FUNCTION_14_9(v5, &dword_2743F0000, v6, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v7, v8, MEMORY[0x277D84F90]);

    sub_274639AAC();
    OUTLINED_FUNCTION_24_5();
    swift_getAtKeyPath();

    v9 = OUTLINED_FUNCTION_4_3();
    v10(v9);
  }

  OUTLINED_FUNCTION_56_0();
}

uint64_t sub_2744C7078(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_30_2();

  return a1(v1 + v3);
}

unint64_t sub_2744C70E4()
{
  result = qword_28094DE08;
  if (!qword_28094DE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DDE8, &qword_274651720);
    sub_2744C7170();
    sub_2744C749C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DE08);
  }

  return result;
}

unint64_t sub_2744C7170()
{
  result = qword_28094DE10;
  if (!qword_28094DE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DDE0, &qword_274651718);
    sub_2744C71FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DE10);
  }

  return result;
}

unint64_t sub_2744C71FC()
{
  result = qword_28094DE18;
  if (!qword_28094DE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DDD8, &qword_274651710);
    sub_2744C72B4();
    sub_2744CA97C(&unk_28094DE30, &qword_28094AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DE18);
  }

  return result;
}

unint64_t sub_2744C72B4()
{
  result = qword_28094DE20;
  if (!qword_28094DE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DDD0, &qword_274651708);
    sub_2744C7370();
    sub_2744C9840(&qword_28094A720, type metadata accessor for VariableEditorModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DE20);
  }

  return result;
}

unint64_t sub_2744C7370()
{
  result = qword_28094DE28;
  if (!qword_28094DE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DDC8, &qword_274651700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DDF0, &unk_274651770);
    sub_2744CA97C(&qword_28094DDF8, &qword_28094DDF0);
    swift_getOpaqueTypeConformance2();
    sub_2744C9840(&qword_28094A6C0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DE28);
  }

  return result;
}

unint64_t sub_2744C749C()
{
  result = qword_28094DE40;
  if (!qword_28094DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DE40);
  }

  return result;
}

uint64_t sub_2744C753C()
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_3_18();
  v0 = OUTLINED_FUNCTION_4_3();

  return sub_2744BAC3C(v0, v1, v2, v3, v4);
}

uint64_t sub_2744C75D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D900, &qword_274650D18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2744C7648()
{
  v1 = OUTLINED_FUNCTION_50_2();
  v2(v1);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_5_0();
  v4(v3);
  return v0;
}

id sub_2744C76A4(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

void *sub_2744C76B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  OUTLINED_FUNCTION_3_18();
  v3 = *(v0 + v2);

  return sub_2744B31D4(v0 + v1, v3);
}

uint64_t sub_2744C7748@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E160, &qword_274649748);
  v2 = sub_274638C8C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_274648570;
  if (qword_280949300 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280965EA0);
  (*(v3 + 16))(v5 + v4, v6, v2);
  type metadata accessor for DragReorderingCoordinator(0);
  swift_allocObject();
  result = sub_2744A933C(v5, 20.0);
  *a1 = result;
  return result;
}

uint64_t sub_2744C7890(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2744C7988;

  return v6(a1);
}

uint64_t sub_2744C7988()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v1 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v2 = v1;

  OUTLINED_FUNCTION_92();

  return v3();
}

uint64_t objectdestroy_91Tm()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_76_0();

  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DCE0, &qword_2746515C8);
  OUTLINED_FUNCTION_4_2();
  (*(v3 + 8))(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58, &unk_2746514C8);
  OUTLINED_FUNCTION_58_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (OUTLINED_FUNCTION_75_0(v4) == 1)
  {
    v5 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_25_7(v5))
    {
      OUTLINED_FUNCTION_25_0();
      v6 = OUTLINED_FUNCTION_62_1();
      v7(v6);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_46_2();

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_2744C7C04(uint64_t a1)
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_3_18();

  return sub_2744BC290(a1, (v1 + v3));
}

void sub_2744C7C90(uint64_t a1)
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_3_18();
  v4 = *(v1 + 16);
  v6 = *(v1 + v5);

  sub_2744BC434(a1, v4, v1 + v3, v6);
}

uint64_t sub_2744C7D30(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_3_18();
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];

  return a1(v1 + v2, v5, v6, v7);
}

unint64_t sub_2744C7DC8()
{
  result = qword_28094DFA8;
  if (!qword_28094DFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DFA0, &qword_274651A88);
    sub_2744C7E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DFA8);
  }

  return result;
}

unint64_t sub_2744C7E54()
{
  result = qword_28094DFB0;
  if (!qword_28094DFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DFB8, &qword_274651A90);
    sub_2744C7F0C();
    sub_2744CA97C(&qword_28094E010, &unk_28094E018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DFB0);
  }

  return result;
}

unint64_t sub_2744C7F0C()
{
  result = qword_28094DFC0;
  if (!qword_28094DFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DFC8, &qword_274651A98);
    sub_2744C7FC4();
    sub_2744CA97C(&unk_28094D180, &qword_28094C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DFC0);
  }

  return result;
}

unint64_t sub_2744C7FC4()
{
  result = qword_28094DFD0;
  if (!qword_28094DFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DFD8, &qword_274651AA0);
    sub_2744C807C();
    sub_2744CA97C(&unk_28094AA00, &qword_28094CC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DFD0);
  }

  return result;
}

unint64_t sub_2744C807C()
{
  result = qword_28094DFE0;
  if (!qword_28094DFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DFE8, &qword_274651AA8);
    sub_2744C8108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DFE0);
  }

  return result;
}

unint64_t sub_2744C8108()
{
  result = qword_28094DFF0;
  if (!qword_28094DFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DFF8, &qword_274651AB0);
    sub_2744CA97C(&qword_28094E000, &unk_28094E008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DFF0);
  }

  return result;
}

uint64_t sub_2744C81C0()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_2746399FC();
  *v0 = result;
  return result;
}

uint64_t sub_2744C8214()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_2746398DC();
  *v0 = result;
  return result;
}

uint64_t sub_2744C8268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v8 + 24);
  v11 = *(v8 + 32);
  return sub_27451F174(&v10, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_2744C82B4@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_3_18();
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];

  return sub_2744BCF84(v5, v6, v7, a1);
}

uint64_t objectdestroy_128Tm()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_3_14();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_76_0();

  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DCE0, &qword_2746515C8);
  OUTLINED_FUNCTION_4_2();
  (*(v3 + 8))(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58, &unk_2746514C8);
  OUTLINED_FUNCTION_58_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (OUTLINED_FUNCTION_75_0(v4) == 1)
  {
    v5 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_25_7(v5))
    {
      OUTLINED_FUNCTION_25_0();
      v6 = OUTLINED_FUNCTION_62_1();
      v7(v6);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_46_2();

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_2744C84CC(_BYTE *a1)
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_3_18();
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = (v1 + v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  return sub_2744BCFC8(a1, v4, v5, v6, v1 + v3, v9, v10, v11);
}

uint64_t sub_2744C8580(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_27440B094(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2744C85D0()
{
  OUTLINED_FUNCTION_42_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_4(v0);
  *v1 = v2;
  v1[1] = sub_27444E7E4;
  OUTLINED_FUNCTION_7_1();

  return sub_2744B5554(v3, v4, v5);
}

uint64_t sub_2744C8670()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_4(v3);
  *v4 = v5;
  v4[1] = sub_27445358C;
  v6 = OUTLINED_FUNCTION_49_1();

  return sub_2744B5EBC(v6, v7, v1, v2);
}

uint64_t sub_2744C8710()
{
  OUTLINED_FUNCTION_42_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_4(v0);
  *v1 = v2;
  v1[1] = sub_27444E7E4;
  v3 = OUTLINED_FUNCTION_49_1();

  return v4(v3);
}

uint64_t sub_2744C87BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0E8, &qword_274651BF0);
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_30_2();
  v1 = OUTLINED_FUNCTION_4_3();

  return sub_2744B6274(v1);
}

uint64_t sub_2744C883C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_29_4(v7);
  *v8 = v9;
  v8[1] = sub_27445358C;
  v10 = OUTLINED_FUNCTION_49_1();

  return sub_2744B4AEC(v10, v11, v1, v2, v3, v4, v5, v6);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_136Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_2744C899C()
{
  result = qword_28094E158;
  if (!qword_28094E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E158);
  }

  return result;
}

void sub_2744C8A38(uint64_t a1)
{
  sub_274481024(319);
  if (v1 <= 0x3F)
  {
    sub_274458288(319, &qword_280950D10, &unk_28094D7C0, &unk_274651B60);
    if (v2 <= 0x3F)
    {
      sub_274458288(319, &qword_28094DCB0, &qword_28094DCB8, &unk_2746514F0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2744C8B1C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744C8B5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2744C8C20(uint64_t a1)
{
  sub_274481024(319);
  if (v1 <= 0x3F)
  {
    sub_274458288(319, &qword_28094E1A0, &unk_28094A0F0, &unk_27465AFF0);
    if (v2 <= 0x3F)
    {
      sub_274458288(319, &qword_28094BC00, &qword_28094A610, &qword_2746493F0);
      if (v3 <= 0x3F)
      {
        sub_2744C8D34(319, qword_28094E1A8, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2744C8D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t storeEnumTagSinglePayload for ConnectorView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2744C8DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2744C8E28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      OUTLINED_FUNCTION_30_4();
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744C8E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2744C8EE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744C8F20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744C9158()
{
  v1 = OUTLINED_FUNCTION_50_2();
  v2(v1);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_5_0();
  v4(v3);
  return v0;
}

uint64_t objectdestroy_258Tm()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ScrollToRunningActionModifier(0);
  OUTLINED_FUNCTION_3_14();
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  v5 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_27463969C();
    if (!OUTLINED_FUNCTION_73_0(v6))
    {
      OUTLINED_FUNCTION_25_0();
      (*(v7 + 8))(v4 + v5, v2);
    }
  }

  else
  {
  }

  j__swift_release(*(v4 + *(v0 + 24)));
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

void sub_2744C92D4()
{
  v0 = type metadata accessor for ScrollToRunningActionModifier(0);
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_30_2();
  sub_2744C4408();
}

uint64_t sub_2744C9328()
{
  sub_27463969C();
  OUTLINED_FUNCTION_3_18();

  return sub_2744C4BB8(v0 + v1, (v0 + v2));
}

uint64_t sub_2744C93D4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_60_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2744C944C()
{
  result = qword_28094E338;
  if (!qword_28094E338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E320, &qword_2746524F8);
    sub_2744CA97C(&unk_28094E340, &qword_28094E310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E338);
  }

  return result;
}

unint64_t sub_2744C951C()
{
  result = qword_28094E3B8;
  if (!qword_28094E3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E368, &qword_274652570);
    sub_2744C95D4();
    sub_2744CA97C(&qword_28094E3B0, &qword_28094E360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E3B8);
  }

  return result;
}

unint64_t sub_2744C95D4()
{
  result = qword_28094E3C0;
  if (!qword_28094E3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E3C8, &qword_2746525D8);
    sub_2744C968C();
    sub_2744CA97C(&qword_28094E3E0, &qword_28094E3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E3C0);
  }

  return result;
}

unint64_t sub_2744C968C()
{
  result = qword_28094E3D0;
  if (!qword_28094E3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E3D8, &qword_2746525E0);
    sub_2744CA97C(&qword_28094E3B0, &qword_28094E360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E3D0);
  }

  return result;
}

unint64_t sub_2744C9758()
{
  result = qword_28094E410;
  if (!qword_28094E410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E408, &qword_274652608);
    sub_2744C9840(&qword_28094D360, MEMORY[0x277D7D598]);
    sub_2744CA97C(&unk_28094DE30, &qword_28094AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E410);
  }

  return result;
}

uint64_t sub_2744C9840(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2744C988C()
{
  result = qword_28094E460;
  if (!qword_28094E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E460);
  }

  return result;
}

unint64_t sub_2744C98E0()
{
  result = qword_28094E468;
  if (!qword_28094E468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E458, &qword_274652648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E468);
  }

  return result;
}

unint64_t sub_2744C9964()
{
  result = qword_28094E490;
  if (!qword_28094E490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E488, &qword_274652668);
    sub_2744CA97C(&qword_28094E498, &qword_28094E478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E490);
  }

  return result;
}

unint64_t sub_2744C9A28()
{
  result = qword_28094E540;
  if (!qword_28094E540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E528, &qword_274652720);
    sub_2744CA97C(&qword_28094E548, &qword_28094E530);
    sub_2744CA97C(&qword_28094E550, &qword_28094E510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E540);
  }

  return result;
}

unint64_t sub_2744C9B08()
{
  result = qword_28094E558;
  if (!qword_28094E558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E508, &qword_274652700);
    sub_2744CA97C(&qword_28094E538, &qword_28094E500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E558);
  }

  return result;
}

uint64_t sub_2744C9BC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2744C9C24(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_60_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_4_2();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_304Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_301Tm()
{

  OUTLINED_FUNCTION_47_2();

  return swift_deallocObject();
}

unint64_t sub_2744C9D8C()
{
  result = qword_28094E580;
  if (!qword_28094E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E580);
  }

  return result;
}

uint64_t objectdestroy_322Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_2743F45E8(*(v0 + 112), *(v0 + 120));

  return swift_deallocObject();
}

void sub_2744C9E4C(uint64_t a1)
{
  sub_274431930();
  if (v1 <= 0x3F)
  {
    sub_2744C9F7C(319, &qword_28094E620, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2744C8D34(319, qword_28094E1A8, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2744C9F7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2744C9FCC()
{
  result = qword_28094E638;
  if (!qword_28094E638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E2C8, &qword_2746524A0);
    sub_2744CA97C(&qword_28094E640, &qword_28094E2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E638);
  }

  return result;
}

unint64_t sub_2744CA084()
{
  result = qword_28094E658;
  if (!qword_28094E658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E2E0, &qword_2746524B8);
    sub_2744CA97C(&qword_28094E660, &unk_28094E668);
    sub_2744CA97C(&unk_28094E670, &unk_28094A920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E658);
  }

  return result;
}

unint64_t sub_2744CA168()
{
  result = qword_28094E680;
  if (!qword_28094E680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E300, &qword_2746524D8);
    sub_2744CA97C(&qword_28094E688, &qword_28094E2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E680);
  }

  return result;
}

unint64_t sub_2744CA220()
{
  result = qword_28094E690;
  if (!qword_28094E690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E698, &qword_274652830);
    sub_2744C93D4(&qword_28094E330, &qword_28094E328, &qword_274652500, sub_2744C944C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E690);
  }

  return result;
}

unint64_t sub_2744CA2D8()
{
  result = qword_28094E6A0;
  if (!qword_28094E6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E428, &qword_274652618);
    sub_2744CA97C(&qword_28094E6A8, &qword_28094E420);
    sub_2744CA97C(&qword_28094E6B0, &unk_28094E430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E6A0);
  }

  return result;
}

unint64_t sub_2744CA3BC()
{
  result = qword_28094E6B8;
  if (!qword_28094E6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E6C0, &qword_274652838);
    sub_2744C988C();
    sub_2744C98E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E6B8);
  }

  return result;
}

unint64_t sub_2744CA448()
{
  result = qword_28094E6C8;
  if (!qword_28094E6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E6D0, &qword_274652840);
    sub_2744C9964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E6C8);
  }

  return result;
}

unint64_t sub_2744CA4D4()
{
  result = qword_28094E6D8;
  if (!qword_28094E6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E6E0, &qword_274652848);
    sub_2744CA97C(&qword_28094E6E8, &unk_28094E6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E6D8);
  }

  return result;
}

unint64_t sub_2744CA58C()
{
  result = qword_28094E6F8;
  if (!qword_28094E6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E4F0, &qword_2746526E8);
    sub_2744CA618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E6F8);
  }

  return result;
}

unint64_t sub_2744CA618()
{
  result = qword_28094E700;
  if (!qword_28094E700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094E4E0, &unk_2746526D8);
    sub_2744C98E0();
    sub_2744CA97C(&unk_28094A6D0, &qword_28094A6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E700);
  }

  return result;
}

unint64_t sub_2744CA6D0()
{
  result = qword_28094E710;
  if (!qword_28094E710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E718, &qword_274652858);
    sub_2744C9A28();
    sub_2744C9B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E710);
  }

  return result;
}

unint64_t sub_2744CA75C()
{
  result = qword_28094E720;
  if (!qword_28094E720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E588, &qword_2746527C8);
    sub_2744CA814();
    sub_2744CA97C(&qword_28094E740, &unk_28094E748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E720);
  }

  return result;
}

unint64_t sub_2744CA814()
{
  result = qword_28094E728;
  if (!qword_28094E728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E570, &qword_274652788);
    sub_2744CA97C(&qword_28094E730, &qword_28094E578);
    sub_2744CA8CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E728);
  }

  return result;
}

unint64_t sub_2744CA8CC()
{
  result = qword_28094E738;
  if (!qword_28094E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E738);
  }

  return result;
}

uint64_t sub_2744CA97C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_60_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2744CAA68()
{
  result = qword_28094E758;
  if (!qword_28094E758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E750, &qword_274652D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E758);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_8()
{
}

uint64_t OUTLINED_FUNCTION_14_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_274638CEC();
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_46_2()
{
}

uint64_t OUTLINED_FUNCTION_58_1()
{
}

uint64_t OUTLINED_FUNCTION_73_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return sub_27463B19C();
}

uint64_t OUTLINED_FUNCTION_75_0(uint64_t a1)
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_76_0()
{
}

uint64_t WFStepperParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_3_12();
  sub_274466E38(v3, v4, &protocol conformance descriptor for ParameterStateStore);

  sub_27463950C();
  OUTLINED_FUNCTION_39();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_274466BEC;
  *(v5 + 24) = a1;
  OUTLINED_FUNCTION_39();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_274458A90;
  *(v6 + 24) = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B608, &unk_2746528D0));
  swift_retain_n();
  sub_27444A604(v1);
  OUTLINED_FUNCTION_10_6();
  sub_27440CA78(v7, &qword_28094B608, &unk_2746528D0, v8);
  sub_27463950C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C0D0, &unk_27464CCD8);
  sub_27463ACDC();
  swift_getKeyPath();
  sub_2744CCFC4();
  return sub_27463AE9C();
}

id WFStepperParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  sub_274466DA4();
  v3 = [v1 localizedLabel];
  v4 = sub_27463B6AC();
  v6 = v5;

  v7 = sub_27444C12C(v1);
  v9 = v8;
  v10 = sub_27463B66C();
  v11 = sub_27444AEE4(v4, v6, v7, v9, v10);
  if (!a1)
  {
    v12 = 0;
LABEL_6:
    v15 = [v1 localizedLabelWithState:v12 includingPrefix:0];
    if (v15)
    {
      v16 = v15;
      v17 = sub_27463B6AC();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    if ([objc_opt_self() isGerman])
    {
      if (v19)
      {
        goto LABEL_14;
      }
    }

    else if (v19)
    {
      v22 = v17;
      v23 = v19;
      sub_274412BBC();
      sub_27463C0DC();

LABEL_14:
      v20 = sub_27463B66C();

LABEL_16:
      [v11 populateWithString_];

      return v11;
    }

    v20 = 0;
    goto LABEL_16;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  v13 = [v12 variable];
  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v13;
  [v11 populateWith_];

  swift_unknownObjectRelease();
  return v11;
}

id sub_2744CB284(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFStepperParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2744CB2F4()
{
  static WFStepperParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_2744CB31C(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for SummaryModal());
  v5 = v2;
  sub_274407A8C(v5, 1);
  v6 = *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_073C17B42FC52C4719BEB2DDCC24406D29StepperParameterSummaryEditor_modal];
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_073C17B42FC52C4719BEB2DDCC24406D29StepperParameterSummaryEditor_modal] = v7;
  v8 = v7;

  sub_27440A42C(a2);
}

double sub_2744CB3BC@<D0>(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, uint64_t a3@<X0>)
{
  v5 = [a2 parameter];
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_3_12();
  sub_274466E38(v6, v7, &protocol conformance descriptor for ParameterStateStore);

  v8 = sub_27463950C();
  v27 = v9;
  v28 = v8;
  OUTLINED_FUNCTION_39();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_274467390;
  *(v26 + 24) = a3;
  OUTLINED_FUNCTION_39();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_274467398;
  *(v25 + 24) = a3;
  KeyPath = swift_getKeyPath();
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B608, &unk_2746528D0));
  swift_retain_n();
  v11 = v5;
  sub_27444A604(v11);
  OUTLINED_FUNCTION_10_6();
  sub_27440CA78(v12, &qword_28094B608, &unk_2746528D0, v13);
  v14 = sub_27463950C();
  v16 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C0D0, &unk_27464CCD8);
  sub_27463ACDC();
  v17 = sub_2746390EC();
  v19 = v18;
  v20 = v17 & 1;
  LOBYTE(v5) = v21 & 1;
  v22 = sub_27463A32C();
  *a1 = KeyPath;
  a1[1] = 0;
  *(a1 + 16) = 0;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v28;
  a1[6] = v27;
  a1[7] = sub_2744CD5D8;
  a1[8] = v26;
  a1[9] = sub_2744CD5DC;
  a1[10] = v25;
  *(a1 + 44) = 256;
  a1[12] = v29;
  *(a1 + 104) = v30;
  a1[14] = v31;
  *(a1 + 120) = v20;
  a1[16] = v19;
  *(a1 + 136) = v5;
  *(a1 + 144) = v22;
  result = 0.0;
  *(a1 + 21) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 184) = 1;
  return result;
}

uint64_t sub_2744CB6A8()
{
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_2744CB740, v3, v2);
}

uint64_t sub_2744CB740()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_2744CB85C;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_16;
  v0[7].receiver = v2;
  v3 = type metadata accessor for StepperParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_2744CB85C()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_2744CB960, v2, v1);
}

uint64_t sub_2744CB960()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 160);

  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_073C17B42FC52C4719BEB2DDCC24406D29StepperParameterSummaryEditor_modal);
  if (v2)
  {
    v3 = v2;
    sub_27440A5E8();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2744CBA58(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2744CBAF0, v4, v3);
}

uint64_t sub_2744CBAF0()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_2744CB6A8();
}

id sub_2744CBBCC(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_073C17B42FC52C4719BEB2DDCC24406D29StepperParameterSummaryEditor_modal] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for StepperParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2744CBC88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StepperParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2744CBCD0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x62uLL);
  v3 = *(__dst[1] + qword_28094A100);
  memcpy(v30, v1, 0x62uLL);
  v4 = v3;
  v5 = sub_2744CC03C();
  v7 = v6;
  v32[0] = *&__dst[2];
  v32[1] = *&__dst[4];
  v32[2] = *&__dst[6];
  *&__dst[13] = *&__dst[2];
  *&__dst[15] = *&__dst[4];
  *&__dst[17] = *&__dst[6];
  sub_274439BF0(v32, &v28, &unk_28094C0C0, &qword_27464CBC8);
  v8 = sub_274465B00();
  v25 = v9;
  v11 = v10;
  sub_274415174(v32, &unk_28094C0C0, &qword_27464CBC8);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274466E38(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  __src[28] = sub_27463979C();
  __src[29] = v12;
  __src[30] = swift_getKeyPath();
  LOBYTE(__src[31]) = 0;
  __src[32] = swift_getKeyPath();
  LOBYTE(__src[33]) = 0;
  __src[34] = swift_getKeyPath();
  LOBYTE(__src[35]) = 0;
  __src[36] = swift_getKeyPath();
  LOBYTE(__src[41]) = 0;
  __src[42] = swift_getKeyPath();
  LOBYTE(__src[43]) = 0;
  sub_27463ACDC();
  LOBYTE(__src[44]) = v28;
  __src[45] = v29;
  sub_27463ACDC();
  LOBYTE(__src[46]) = v28;
  __src[47] = v29;
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v14 = v4;
  sub_27444A564(v14);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  __src[0] = sub_27463950C();
  __src[1] = v15;
  if (!v7)
  {
    v16 = [v14 localizedLabel];
    v5 = sub_27463B6AC();
    v7 = v17;
  }

  __src[2] = v5;
  __src[3] = v7;
  v18 = [v14 localizedDescription];
  if (v18)
  {
    v19 = v18;
    v20 = sub_27463B6AC();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  __src[4] = v20;
  __src[5] = v22;
  __src[6] = 1;
  __src[7] = v8;
  __src[8] = v26;
  __src[9] = v11;
  sub_2744CC160(__dst, &__src[10]);

  BYTE1(__src[27]) = 0;
  v23 = swift_allocObject();
  memcpy((v23 + 16), __dst, 0x62uLL);
  memcpy(a1, __src, 0x180uLL);
  a1[48] = sub_2744CD118;
  a1[49] = v23;
  return sub_2744CD120(__dst, v30);
}

uint64_t sub_2744CC03C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  (*(v0 + 32))(&v13);
  v5 = v13;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C130, &qword_274652B50);
  sub_27463ACEC();
  if ((v12 & 1) == 0)
  {
    v6 = sub_2746386DC();
    v7 = [objc_allocWithZone(MEMORY[0x277D7C6B0]) initWithNumber_];

    v5 = v7;
  }

  v8 = [*(v1 + qword_28094A100) localizedLabelWithState:v5 includingPrefix:1];
  if (v8)
  {
    v9 = v8;
    v10 = sub_27463B6AC();
  }

  else
  {

    return 0;
  }

  return v10;
}

double sub_2744CC160@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274639ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(a1 + 8) + qword_28094A100);
  v9 = *(a1 + 32);
  v44 = *(a1 + 16);
  v45 = v9;
  v46 = *(a1 + 48);
  v42 = *(a1 + 88);
  v43 = *(a1 + 96);
  v10 = v42;
  if (HIBYTE(v43) == 1)
  {
    v11 = v43;
    v39 = v42;
    v40 = v43 & 1;
    v12 = v8;
    sub_274439BF0(&v44, &v36, &unk_28094C0C0, &qword_27464CBC8);
  }

  else
  {
    v13 = v8;
    sub_274439BF0(&v44, &v36, &unk_28094C0C0, &qword_27464CBC8);
    sub_274439BF0(&v42, &v36, &unk_28094E788, &qword_274652B58);
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274415174(&v42, &unk_28094E788, &qword_274652B58);
    (*(v5 + 8))(v7, v4);
    v10 = v39;
    v11 = v40;
  }

  v15 = v11 & (v10 == 1);
  KeyPath = swift_getKeyPath();
  v41 = 0;
  v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B608, &unk_2746528D0));
  v18 = v8;
  sub_27444A604(v18);
  sub_27440CA78(&unk_28094E760, &qword_28094B608, &unk_2746528D0, &unk_274648AD8);
  v19 = sub_27463950C();
  v21 = v20;

  v36 = v44;
  v37 = v45;
  *v38 = v46;
  v31[1] = 0;
  v32 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C0D0, &unk_27464CCD8);
  sub_27463ACDC();
  v22 = v33;
  v23 = v35;
  LOBYTE(v33) = v34;
  v24 = sub_2746390EC();
  v25 = v37;
  *(a2 + 40) = v36;
  v27 = v41;
  v28 = v33;
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v27;
  *(a2 + 24) = v19;
  *(a2 + 32) = v21;
  *(a2 + 56) = v25;
  result = v38[0];
  *(a2 + 72) = *v38;
  *(a2 + 88) = v15;
  *(a2 + 89) = 0;
  *(a2 + 96) = v22;
  *(a2 + 104) = v28;
  *(a2 + 112) = v23;
  *(a2 + 120) = v24 & 1;
  *(a2 + 128) = v30;
  *(a2 + 136) = v26 & 1;
  return result;
}

void sub_2744CC528()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E7C8, &qword_274652D48);
  MEMORY[0x28223BE20](v1);
  v3 = v22 - v2;
  memcpy(v27, v0, 0x89uLL);
  sub_27463B9CC();
  sub_2744CD3E8(v27, &v25);
  v4 = sub_27463B9BC();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  memcpy(v5 + 4, v27, 0x89uLL);
  sub_2744CD3E8(v27, &v25);
  v7 = sub_27463B9BC();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  memcpy(v8 + 4, v27, 0x89uLL);
  sub_27463AF0C();
  v23 = v25;
  v24 = v26;
  v9 = *&v27[2];
  v10 = qword_28094A100;
  v11 = [*(*&v27[2] + qword_28094A100) minimumValue];
  [v11 doubleValue];
  v13 = v12;

  v14 = [*(v9 + v10) maximumValue];
  [v14 doubleValue];
  v16 = v15;

  if (v13 > v16)
  {
    __break(1u);
  }

  else
  {
    v22[1] = v13;
    v22[2] = v16;
    v17 = swift_allocObject();
    v18 = memcpy((v17 + 16), v27, 0x89uLL);
    MEMORY[0x28223BE20](v18);
    v22[0] = 1.0;
    sub_2744CD3E8(v27, &v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E750, &qword_274652D50);
    sub_2744CAA68();
    sub_27463AFEC();
    v25 = v27[6];
    v26 = *&v27[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C130, &qword_274652B50);
    sub_27463ACEC();
    v19 = BYTE8(v23);
    v20 = &v3[*(v1 + 36)];
    *v20 = v23;
    v20[8] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E7D0, &qword_274652D58);
    v21 = sub_2744CD448();
    *&v25 = v1;
    *(&v25 + 1) = v21;
    swift_getOpaqueTypeConformance2();
    sub_27463A60C();
    sub_274415174(v3, &qword_28094E7C8, &qword_274652D48);
  }
}

uint64_t sub_2744CC910(uint64_t a1, __int128 *a2)
{
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  v12 = *a2;
  v7 = v12;
  if (v13 != 1)
  {

    sub_27463BC0C();
    v10 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274415174(&v12, &qword_28094C138, &qword_27464CE60);
    result = (*(v4 + 8))(v6, v3);
    v7 = v11[0];
    v8 = v11[1];
    if (!v11[0])
    {
      return result;
    }

    goto LABEL_5;
  }

  v8 = *(&v12 + 1);
  result = sub_2744069F0(v12, *(&v12 + 1));
  if (v7)
  {
LABEL_5:
    v7(result);
    return sub_274406A94(v7, v8);
  }

  return result;
}

void sub_2744CCAA4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 88))
  {
    sub_27463B9CC();
    sub_2744CD3E8(a1, v28);
    v4 = sub_27463B9BC();
    v5 = swift_allocObject();
    v6 = MEMORY[0x277D85700];
    v5[2] = v4;
    v5[3] = v6;
    memcpy(v5 + 4, a1, 0x89uLL);
    sub_2744CD3E8(a1, v28);
    v7 = sub_27463B9BC();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v6;
    memcpy(v8 + 4, a1, 0x89uLL);
    sub_27463AF0C();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E800, &unk_274652D70);
    MEMORY[0x277C575F0](&v27, v9);
    v10 = v27;

    v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v12 = [objc_allocWithZone(MEMORY[0x277D7C6B0]) initWithNumber_];

    v13 = *(a1 + 32);
    v14 = qword_28094A100;
    v15 = [*(v13 + qword_28094A100) localizedLabelWithState:v12 includingPrefix:0];
    if (!v15)
    {
      v15 = [*(v13 + v14) localizedLabel];
    }

    v16 = sub_27463B6AC();
    v18 = v17;

    v28[0] = v16;
    v28[1] = v18;
    sub_274412BBC();
    v19 = sub_27463A53C();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = v23 & 1;
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v26 = 0;
    v25 = 0;
  }

  *a2 = v19;
  a2[1] = v21;
  a2[2] = v26;
  a2[3] = v25;
}

uint64_t sub_2744CCD00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E7C8, &qword_274652D48);
  sub_2744CD448();
  return sub_27463A71C();
}

void sub_2744CCD58(uint64_t a1@<X2>, void *a2@<X8>)
{
  (*(a1 + 56))(&v8);
  v4 = v8;
  if (v8 && (v5 = [v8 number], v4, v5))
  {
    [v5 doubleValue];
  }

  else
  {
    v5 = [*(*(a1 + 32) + qword_28094A100) minimumValue];
    [v5 doubleValue];
  }

  v7 = v6;

  *a2 = v7;
}

uint64_t sub_2744CCE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2744CD3E8(a4, v13);
  v5 = sub_2746386DC();
  v6 = [objc_allocWithZone(MEMORY[0x277D7C6B0]) initWithNumber_];

  v7 = *(a4 + 56);
  v8 = *(a4 + 72);
  v13[0] = v6;
  v8(v13);

  v9 = sub_2744CD5A0(a4);
  v7(v13, v9);
  v10 = v13[0];
  if (v13[0])
  {
    v11 = [v13[0] number];

    if (v11)
    {
      [v11 doubleValue];
    }
  }

  *v13 = *(a4 + 96);
  v14 = *(a4 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C130, &qword_274652B50);
  return sub_27463ACFC();
}

void *sub_2744CCF64(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v5);
  v4 = v6;
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_2744CCFC4()
{
  result = qword_28094E770;
  if (!qword_28094E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E770);
  }

  return result;
}

uint64_t sub_2744CD050(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 98))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744CD090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744CD158()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444C34C;

  return sub_2744CBA58(v2, v3);
}

uint64_t sub_2744CD234(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 137))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744CD274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2744CD2E8()
{
  result = qword_28094E798;
  if (!qword_28094E798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E7A0, &qword_274652C98);
    sub_27440CA78(&qword_28094E7A8, &qword_28094E7B0, &qword_274652CA0, &unk_274656A70);
    sub_27440CA78(&qword_28094E7B8, &qword_28094E7C0, qword_274652CA8, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E798);
  }

  return result;
}

unint64_t sub_2744CD448()
{
  result = qword_28094E7D8;
  if (!qword_28094E7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E7C8, &qword_274652D48);
    sub_27440CA78(&qword_28094E7E0, &qword_28094E7E8, &qword_274652D60, MEMORY[0x277CDF0B8]);
    sub_27440CA78(&qword_28094E7F0, &qword_28094E7F8, &qword_274652D68, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E7D8);
  }

  return result;
}

uint64_t objectdestroy_55Tm()
{
  swift_unknownObjectRelease();
  sub_2744671A4(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

void *sub_2744CD5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a7;
  v22[5] = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E808, &qword_274652D80);
  result = MEMORY[0x277C575F0](v22, v18);
  v20 = v22[0];
  v21 = v22[1];
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = v20;
  a9[9] = v21;
  a9[10] = 0;
  return result;
}

uint64_t sub_2744CD68C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744CD6CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744CD74C()
{
  v1 = v0[1];
  v8 = *v0;
  v9 = v1;
  v6 = *(v0 + 4);
  v7 = v0[10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8, &qword_27464FCA0);
  sub_27463AD0C();
  v2 = swift_allocObject();
  memcpy((v2 + 16), v0, 0x58uLL);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v0, 0x58uLL);
  sub_2744CDA1C(v0, &v5);
  sub_2744CDA1C(v0, &v5);
  sub_274412BBC();
  return sub_27463B17C();
}

uint64_t sub_2744CD898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8, &qword_27464FCA0);
  sub_27463ACEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E808, &qword_274652D80);
  return sub_27463AEBC();
}

uint64_t sub_2744CD968(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return sub_2744CD898();
  }

  return result;
}

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

unint64_t sub_2744CDA54()
{
  result = qword_280952FC0;
  if (!qword_280952FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D688, &qword_27465C710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952FC0);
  }

  return result;
}

uint64_t sub_2744CDAC4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744CDB04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744CDB70@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E810, &qword_274652F58);
  v1 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E818, &qword_274652F60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E820, &qword_274652F68);
  MEMORY[0x28223BE20](v56);
  v57 = &v48 - v9;
  *v8 = sub_274639C5C();
  *(v8 + 1) = 0x4024000000000000;
  v8[16] = 0;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E828, &qword_274652F70) + 44);
  sub_27463B70C("This action cannot be run because scripting actions are disabled.", 65);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v11 = &v8[v10];
  v12 = qword_28094BB00;
  v13 = sub_27463B66C();
  v14 = sub_27463B66C();

  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  v16 = sub_27463B6AC();
  v18 = v17;

  __src[0] = v16;
  __src[1] = v18;
  sub_274412BBC();
  v19 = sub_27463A53C();
  v49 = v19;
  v21 = v20;
  v23 = v22;
  v52 = v24;
  KeyPath = swift_getKeyPath();
  LOBYTE(__src[0]) = v23 & 1;
  v50 = v23 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E838, &qword_274652FA8);
  __src[0] = MEMORY[0x277CE0BD8];
  __src[1] = MEMORY[0x277CE0BD8];
  __src[2] = MEMORY[0x277CE0BC8];
  __src[3] = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v25 = v5;
  sub_27463AD5C();
  v53 = v8;
  v26 = *(v1 + 16);
  v27 = v54;
  v28 = v5;
  v29 = v55;
  v26(v54, v28, v55);
  *&v60 = v19;
  *(&v60 + 1) = v21;
  LOBYTE(v61) = v23 & 1;
  v30 = v52;
  *(&v61 + 1) = v52;
  LOWORD(v62) = 256;
  v31 = KeyPath;
  *(&v62 + 1) = KeyPath;
  v63 = 1;
  v11[48] = 1;
  v32 = v61;
  *v11 = v60;
  *(v11 + 1) = v32;
  *(v11 + 2) = v62;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E840, &qword_274652FB0);
  v26(&v11[*(v33 + 48)], v27, v29);
  sub_2744CE500(&v60, __src);
  v34 = *(v1 + 8);
  v34(v25, v29);
  v34(v27, v29);
  v64[0] = v49;
  v64[1] = v21;
  v65 = v50;
  v66 = v30;
  v67 = 256;
  v68 = v31;
  v69 = 1;
  sub_2744CE570(v64);
  sub_27463B0CC();
  sub_27463973C();
  v35 = v57;
  sub_2744CE5D8(v53, v57, &qword_28094E818, &qword_274652F60);
  memcpy((v35 + *(v56 + 36)), __src, 0x70uLL);
  LOBYTE(v21) = sub_27463A32C();
  sub_2746390AC();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v35;
  v45 = v58;
  sub_2744CE5D8(v44, v58, &qword_28094E820, &qword_274652F68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E850, &unk_274652FC0);
  v47 = v45 + *(result + 36);
  *v47 = v21;
  *(v47 + 8) = v37;
  *(v47 + 16) = v39;
  *(v47 + 24) = v41;
  *(v47 + 32) = v43;
  *(v47 + 40) = 0;
  return result;
}

void sub_2744CE150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10, &unk_274648610);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = [objc_opt_self() sharedContext];
  sub_274637E1C();
  v4 = sub_274637E2C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_274637DFC();
    (*(*(v4 - 8) + 8))(v2, v4);
    [v3 openURL_];
  }
}

uint64_t sub_2744CE284()
{
  v0 = sub_274638AFC();
  v1 = *(v0 - 8);
  *&v2 = MEMORY[0x28223BE20](v0).n128_u64[0];
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27463B70C("Open Settings", 13, v2);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v5 = qword_28094BB00;
  v6 = sub_27463B66C();
  v7 = sub_27463B66C();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_27463B6AC();
  v11 = v10;

  v19 = v9;
  v20 = v11;
  sub_274412BBC();
  v12 = sub_27463A53C();
  v14 = v13;
  v19 = v12;
  v20 = v13;
  v16 = v15 & 1;
  v21 = v15 & 1;
  v22 = v17;
  sub_274638AEC();
  sub_27463A5EC();
  (*(v1 + 8))(v4, v0);
  sub_274412C10(v12, v14, v16);
}

uint64_t sub_2744CE4B0@<X0>(uint64_t a2@<X8>)
{
  result = sub_27463A4FC();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_2744CE500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E848, &qword_274652FB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2744CE570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E848, &qword_274652FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2744CE5D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2744CE640()
{
  result = qword_28094E860;
  if (!qword_28094E860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094E850, &unk_274652FC0);
    sub_2744CE6CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E860);
  }

  return result;
}

unint64_t sub_2744CE6CC()
{
  result = qword_28094E868;
  if (!qword_28094E868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E820, &qword_274652F68);
    sub_2744CE758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E868);
  }

  return result;
}

unint64_t sub_2744CE758()
{
  result = qword_28094E870;
  if (!qword_28094E870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E818, &qword_274652F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E870);
  }

  return result;
}

uint64_t sub_2744CE7BC()
{

  return MEMORY[0x2821FE8D8](v0);
}

void WFSlotTemplateSlot.populate(with:askVariableName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_27463822C();
  v7 = [v6 attributedString];

  if (a3)
  {
    v8 = sub_27463B66C();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v4 populateWithAttributedVariableString:v7 attachmentName:?];
}

void sub_2744CE8D8(void *a1)
{
  v3 = [objc_allocWithZone(WFSlotTemplateVariableToken) initWithVariable_];
  v4 = [a1 type];
  v5 = sub_27463B6AC();
  v7 = v6;
  if (v5 == sub_27463B6AC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_27463C6BC();

    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_2744CEA8C(v1);
  if (v11)
  {
    v13 = sub_27463B66C();

    v12 = v13;
    goto LABEL_11;
  }

LABEL_10:
  v12 = 0;
LABEL_11:
  v14 = v12;
  [v1 populateWithSlotTemplateToken:v3 attachmentName:?];
}

void sub_2744CEA24(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2744CE8D8(v4);
}

uint64_t sub_2744CEA8C(void *a1)
{
  v1 = [a1 localizedName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B6AC();

  return v3;
}

void sub_2744CEAF0(long double a1)
{
  v2 = a1 / 3600.0;
  if (a1 / 3600.0 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = fmod(a1, 3600.0);
  v4 = v3 / 60.0;
  if (v3 / 60.0 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = COERCE_UNSIGNED_INT64(fabs(v3 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v6 = fmod(v3, 60.0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v5)
  {
    goto LABEL_17;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker);
  [v8 selectRow:v2 inComponent:0 animated:0];
  [v8 selectRow:v4 inComponent:1 animated:0];
  [v8 selectRow:v7 inComponent:2 animated:0];

  sub_2744CF8DC(1);
}

id sub_2744CEC70()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_A7122D355652C430CB8A6535180FDA307RowView____lazy_storage___textLabel;
  v2 = *&v0[OBJC_IVAR____TtC14WorkflowEditorP33_A7122D355652C430CB8A6535180FDA307RowView____lazy_storage___textLabel];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC14WorkflowEditorP33_A7122D355652C430CB8A6535180FDA307RowView____lazy_storage___textLabel];
  }

  else
  {
    v4 = sub_2744CECD4(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2744CECD4(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v3) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v4];
  [a1 addSubview_];
  v5 = WFShouldReverseLayoutDirection();
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_274653070;
  v8 = [v2 centerYAnchor];
  v9 = [a1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [v2 heightAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v7 + 40) = v12;
  v13 = [v2 trailingAnchor];

  v14 = [a1 leadingAnchor];
  v15 = 47.0;
  if (v5)
  {
    v15 = 51.0;
  }

  v16 = [v13 constraintEqualToAnchor:v14 constant:v15];

  *(v7 + 48) = v16;
  sub_274412734(0, &qword_28094E990, 0x277CCAAD0);
  v17 = sub_27463B7FC();

  [v6 activateConstraints_];

  return v2;
}

id sub_2744CEF54(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC14WorkflowEditorP33_A7122D355652C430CB8A6535180FDA307RowView____lazy_storage___textLabel] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for RowView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_2744CEFEC(void *a1)
{
  *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_A7122D355652C430CB8A6535180FDA307RowView____lazy_storage___textLabel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RowView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

unint64_t sub_2744CF0DC(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_2744CF0F4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2744CF0DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2744CF120@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2744CF0EC(*v1);
  *a1 = result;
  return result;
}

char *sub_2744CF14C()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_hoursLabel) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_minutesLabel) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_secondsLabel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_onDurationChange);
  *v1 = 0;
  v1[1] = 0;
  v2 = objc_allocWithZone(MEMORY[0x277D75840]);
  v3 = OUTLINED_FUNCTION_0_25();
  v6 = [v4 v5];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker) = v6;
  v15 = type metadata accessor for DurationPickerView();
  v7 = OUTLINED_FUNCTION_0_25();
  v10 = objc_msgSendSuper2(v8, v9, v7, v0, v15);
  v11 = OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker;
  v12 = *&v10[OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker];
  v13 = v10;
  [v12 setDataSource_];
  [*&v10[v11] setDelegate_];
  [v13 addSubview_];

  return v13;
}

void sub_2744CF280()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_hoursLabel) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_minutesLabel) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_secondsLabel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_onDurationChange);
  *v1 = 0;
  v1[1] = 0;
  sub_27463C56C();
  __break(1u);
}

id sub_2744CF340(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2744CF424(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    return 0;
  }

  else
  {
    return qword_274653170[a2];
  }
}

char *sub_2744CF4A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a4 && (type metadata accessor for RowView(), (v9 = swift_dynamicCastClass()) != 0))
  {
    v10 = v9;
    v11 = a4;
  }

  else
  {
    type metadata accessor for RowView();
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v12 = sub_2744CEC70();
  [v12 setTextAlignment_];

  v36 = OBJC_IVAR____TtC14WorkflowEditorP33_A7122D355652C430CB8A6535180FDA307RowView____lazy_storage___textLabel;
  v13 = *&v10[OBJC_IVAR____TtC14WorkflowEditorP33_A7122D355652C430CB8A6535180FDA307RowView____lazy_storage___textLabel];
  v14 = objc_opt_self();
  v15 = v10;
  v16 = v13;
  v17 = [v14 systemFontOfSize_];
  [v16 setFont_];

  [v5 pickerView:*&v5[OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker] widthForComponent:a3];
  [v15 setFrame_];

  v19 = [objc_opt_self() labelColor];
  v20 = objc_opt_self();
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v22 = [v20 localizedStringFromNumber:v21 numberStyle:0];

  v23 = sub_27463B6AC();
  v25 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E998, &unk_274653160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648570;
  v27 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  *(inited + 64) = sub_274412734(0, qword_28094A770, 0x277D75348);
  *(inited + 40) = v19;
  type metadata accessor for Key(0);
  sub_2744D0860();
  v28 = v27;
  v29 = v19;
  v30 = sub_27463B4DC();
  v31 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v32 = sub_2745A9D88(v23, v25, v30);
  v33 = *&v10[v36];

  v34 = v32;
  [v33 setAttributedText_];

  return v15;
}

uint64_t sub_2744CF840()
{
  sub_2744CF8DC(1);
  result = sub_2744CFA0C();
  v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_onDurationChange);
  if (v3)
  {
    v4 = v2;
    v5 = result;
    v6 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_onDurationChange + 8);

    v3(v5, v4);

    return sub_274406A94(v3, v6);
  }

  return result;
}

uint64_t sub_2744CF8DC(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker);
  v4 = [v3 selectedRowInComponent_];
  v5 = [v3 selectedRowInComponent_];
  v6 = [v3 selectedRowInComponent_];
  v7 = sub_2744CFCD8(v4, "hours", 5);
  sub_2744CFEF0(0, v7, v8, v2);

  v9 = sub_2744CFCD8(v5, "min", 3);
  sub_2744CFEF0(1, v9, v10, v2);

  v11 = sub_2744CFCD8(v6, "sec", 3);
  sub_2744CFEF0(2, v11, v12, v2);
}

uint64_t sub_2744CFA0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker);
  v2 = [v1 selectedRowInComponent_];
  v3 = [v1 selectedRowInComponent_];
  v4 = [v1 selectedRowInComponent_];
  v5 = v2 == 0;
  if (v3)
  {
    v5 = 1;
  }

  if (v4)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

_BYTE *storeEnumTagSinglePayload for DurationPickerView.Component(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2744CFC84()
{
  result = qword_28094E980;
  if (!qword_28094E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E980);
  }

  return result;
}

uint64_t sub_2744CFCD8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_27463B70C(a2, a3);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_27463C38C();

    v17 = sub_274412BBC();
    v16 = MEMORY[0x277D837D0];
    sub_27463C0FC();
    MEMORY[0x277C57EA0](0xD000000000000010, 0x800000027468ABB0);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v7 = qword_28094BB00;
    v8 = sub_27463B66C();

    v9 = sub_27463B66C();

    v10 = [v7 localizedStringForKey:v8 value:v9 table:{0, v16, v17, v17, v17, 32, 0xE100000000000000, 10, 0xE100000000000000}];

    sub_27463B6AC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D83B88];
  *(v11 + 16) = xmmword_274648570;
  v13 = MEMORY[0x277D83C10];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = a1;
  v14 = sub_27463B67C();

  return v14;
}

void sub_2744CFEF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a1;
  v9 = sub_2744D03B0(a1, 0);
  v10 = v9;
  if (!v9)
  {
    if ((a4 & 1) == 0)
    {
      v16 = sub_2744D02D0();
      [v4 addSubview_];
      sub_2744D0744(a2, a3, v16);
      sub_2744D04F4(v16, v8);
      v15 = 0;
LABEL_16:
      v28 = v15;
      sub_2744D0744(a2, a3, v16);
      sub_2744D04F4(v16, v8);

      goto LABEL_17;
    }

    v15 = 0;
LABEL_12:
    v29 = v15;
    v17 = sub_2744D02D0();
    [v4 addSubview_];
    sub_2744D0744(a2, a3, v17);
    sub_2744D04F4(v17, v8);
    [v17 setAlpha_];
    v18 = objc_opt_self();
    OUTLINED_FUNCTION_5();
    v19 = swift_allocObject();
    *(v19 + 16) = v10;
    v34 = sub_2744D079C;
    v35 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_27443E0E8;
    v33 = &block_descriptor_17;
    v20 = _Block_copy(&aBlock);
    v21 = v29;

    OUTLINED_FUNCTION_5();
    v22 = swift_allocObject();
    *(v22 + 16) = v10;
    v34 = sub_2744D07D0;
    v35 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_2745AA044;
    v33 = &block_descriptor_25_0;
    v23 = _Block_copy(&aBlock);
    v24 = v21;

    [v18 animateWithDuration:0 delay:v20 options:v23 animations:0.2 completion:0.0];
    _Block_release(v23);
    _Block_release(v20);
    OUTLINED_FUNCTION_5();
    v25 = swift_allocObject();
    *(v25 + 16) = v17;
    v34 = sub_2744D07E8;
    v35 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_27443E0E8;
    v33 = &block_descriptor_31;
    v26 = _Block_copy(&aBlock);
    v27 = v17;

    [v18 animateWithDuration:0x20000 delay:v26 options:0 animations:0.2 completion:0.0];

    _Block_release(v26);
    return;
  }

  v28 = v9;
  v11 = sub_2744D07FC(v28);
  if (!v12)
  {
LABEL_8:

    v15 = v28;
    v16 = v28;
    if ((a4 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v11 == a2 && v12 == a3)
  {
  }

  else
  {
    v14 = sub_27463C6BC();

    if ((v14 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  sub_2744D04A0(v28, v8);

LABEL_17:
}

id sub_2744D02D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() boldSystemFontOfSize_];
  [v0 setFont_];

  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_2744D03B0(uint64_t a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0;
      v5 = (v2 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_minutesLabel);
      if (!*(v2 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_minutesLabel) && (a2 & 1) != 0)
      {
        v6 = "min";
LABEL_12:
        v7 = 3;
        goto LABEL_13;
      }
    }

    else
    {
      v4 = 0;
      v5 = (v2 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_secondsLabel);
      if (!*(v2 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_secondsLabel) && (a2 & 1) != 0)
      {
        v6 = "sec";
        goto LABEL_12;
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = (v2 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_hoursLabel);
    if (!*(v2 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_hoursLabel) && (a2 & 1) != 0)
    {
      v6 = "hours";
      v7 = 5;
LABEL_13:
      v8 = sub_2744CFCD8(0, v6, v7);
      sub_2744CFEF0(a1, v8, v9, 0);

      v4 = *v5;
      v10 = *v5;
    }
  }

  return v4;
}

void sub_2744D04A0(void *a1, char a2)
{
  v3 = *off_279EDB570[a2];
  v5 = *(v2 + v3);
  *(v2 + v3) = a1;
  v4 = a1;
}

void sub_2744D04F4(void *a1, char a2)
{
  v5 = WFShouldReverseLayoutDirection();
  if (a2)
  {
    v6 = v5 == 0;
    if (a2 == 1)
    {
      v7 = 161.0;
      v8 = 173.0;
    }

    else
    {
      v7 = 271.0;
      v8 = 283.0;
    }
  }

  else
  {
    v6 = v5 == 0;
    v7 = 51.0;
    v8 = 69.0;
  }

  if (v6)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  LODWORD(v7) = 1148846080;
  [a1 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v10) = 1148846080;
  [a1 setContentCompressionResistancePriority:0 forAxis:v10];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_27464AEE0;
  v13 = [a1 leadingAnchor];
  v14 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker);
  v15 = [v14 leadingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:v9];

  *(v12 + 32) = v16;
  v17 = [a1 centerYAnchor];
  v18 = [v14 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:1.0];

  *(v12 + 40) = v19;
  sub_274412734(0, &qword_28094E990, 0x277CCAAD0);
  v20 = sub_27463B7FC();

  [v11 activateConstraints_];
}

void sub_2744D0744(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();
  [a3 setText_];
}

id sub_2744D079C()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

id sub_2744D07D0()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result removeFromSuperview];
  }

  return result;
}

uint64_t sub_2744D07FC(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B6AC();

  return v3;
}

unint64_t sub_2744D0860()
{
  result = qword_280953420;
  if (!qword_280953420)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953420);
  }

  return result;
}

uint64_t sub_2744D0914@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 32);
  v7 = *(v1 + 24);
  v15 = v7;
  v8 = v16;

  if ((v8 & 1) == 0)
  {
    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2744D0C50(&v15);
    (*(v4 + 8))(v6, v3);
    v7 = v14[1];
  }

  if (v7)
  {
    sub_2746383DC();
    sub_2744D0D6C(&qword_28094E9A8, MEMORY[0x277D7BEC0], &protocol conformance descriptor for WFTriggerInputAction);

    v10 = sub_27463920C();
    sub_2745212EC(v10);

    sub_27446F35C(a1);

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = type metadata accessor for ActionView(0);
  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v12);
}

uint64_t sub_2744D0B44@<X0>(uint64_t *a2@<X8>)
{
  sub_2746383DC();
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

uint64_t sub_2744D0B9C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744D0BDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2744D0C50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E9A0, &qword_2746575B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2744D0CB8()
{
  result = qword_28094E9B0;
  if (!qword_28094E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E9B8, &unk_274653310);
    sub_2744D0D6C(&qword_28094E9C0, type metadata accessor for ActionView, &protocol conformance descriptor for ActionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E9B0);
  }

  return result;
}

uint64_t sub_2744D0D6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2744D0E1C(uint64_t a1, uint64_t a2)
{
  sub_27463C74C();
  sub_2744FABE8(v5, a1);
  MEMORY[0x277C58EA0](a2);
  return sub_27463C7AC();
}

uint64_t sub_2744D0E84(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_27463C74C();
  sub_2744FABE8(v5, v2);
  MEMORY[0x277C58EA0](v3);
  return sub_27463C7AC();
}

id EditorDragItem.moveParameters.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void *EditorDragItem.sourceView.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

double sub_2744D0F3C()
{
  v1 = 96;
  if (*(v0 + 104))
  {
    v1 = 88;
  }

  return *(v0 + v1);
}

void sub_2744D0F58()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = 96;
  if (*(v1 + 104))
  {
    v3 = 88;
  }

  *(v1 + 112) = (*((*MEMORY[0x277D85000] & *v2) + 0xE0))(*(v1 + v3));
}

uint64_t EditorDragItem.__allocating_init(moveParameters:sourceView:item:width:)(_OWORD *a1, void *a2, void *a3, double a4)
{
  v8 = swift_allocObject();
  EditorDragItem.init(moveParameters:sourceView:item:width:)(a1, a2, a3, a4);
  return v8;
}

uint64_t EditorDragItem.init(moveParameters:sourceView:item:width:)(_OWORD *a1, void *a2, void *a3, double a4)
{
  v5 = v4;
  *(v5 + 96) = 0;
  *(v5 + 104) = 1;
  *(v5 + 112) = 0;
  *(v5 + 16) = *a1;
  *(v5 + 32) = a2;
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  v11 = *(v10 + 32);
  v12 = a2;
  v13 = v11(v9, v10);
  *(v5 + 40) = v13;
  sub_2744306B8(a3, v5 + 48);
  *(v5 + 88) = a4;
  *(v13 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_host + 8) = &off_288368D08;
  swift_unknownObjectWeakAssign();
  sub_2744D0F58();

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v5;
}

uint64_t EditorDragItem.__deallocating_deinit()
{
  EditorDragItem.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2744D1324()
{
  sub_27463C74C();
  MEMORY[0x277C58EA0](v0);
  return sub_27463C7AC();
}

uint64_t sub_2744D1384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_27463C74C();
  a4(v6);
  return sub_27463C7AC();
}

uint64_t sub_2744D1414(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2744D1458(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744D1498(uint64_t result, int a2, int a3)
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

unint64_t sub_2744D14E8()
{
  result = qword_28094E9D8[0];
  if (!qword_28094E9D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28094E9D8);
  }

  return result;
}

uint64_t sub_2744D1558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2744D1594(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744D15D4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2744D1634(uint64_t a1)
{
  v2 = v1;
  v9 = *v1;
  v10 = *(v1 + 4);
  v11 = v1[1];
  v12 = v10;
  v3 = sub_2744D16B4(v9, a1);
  v5 = v4;
  v7 = v6;
  result = sub_2744D2D90(&v11);
  v2[2] = v3;
  v2[3] = v5;
  v2[4] = v7;
  return result;
}

uint64_t sub_2744D16B4(uint64_t a1, uint64_t a2)
{
  result = sub_27463B8BC();
  if (result < 1)
  {
    v5 = MEMORY[0x277D84F90];
    v19 = *(MEMORY[0x277D84F90] + 16);
LABEL_15:
    v23 = v19;
    if (v19 < 0xB)
    {
      v29 = v5;
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
      do
      {
        v25 = 0;
        v26 = 0;
        v27 = (v5 + 48);
        v28 = 10;
        v29 = v24;
        v54 = v23;
        v55 = v5;
        do
        {
          if (v23 >= v28)
          {
            v30 = v28;
          }

          else
          {
            v30 = v23;
          }

          v31 = v26 + 10;
          if (__OFADD__(v26, 10))
          {
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          if (v23 >= v31)
          {
            v32 = v26 + 10;
          }

          else
          {
            v32 = v23;
          }

          if (v32 < v26)
          {
            goto LABEL_58;
          }

          v33 = *(v5 + 16);
          if (v33 < v26 || v33 < v32)
          {
            goto LABEL_59;
          }

          v57 = v27;
          v59 = v25;
          if (v26 == v32)
          {

            v35 = 0;
            v36 = 0.0;
            v37 = v24;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v37 = v24;
            }

            else
            {
LABEL_46:
              sub_274450838();
              v29 = v51;
            }
          }

          else
          {
            if (v26 >= v32)
            {
              goto LABEL_60;
            }

            v56 = v29;
            v38 = v30 + v25;

            v35 = 0;
            v36 = 0.0;
            v39 = v27;
            v37 = v24;
            do
            {
              v40 = *(v39 - 2);
              v41 = *(v39 - 1);
              v29 = *v39;
              swift_bridgeObjectRetain_n();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_274450738(0, *(v37 + 16) + 1, 1, v37);
                v37 = v46;
              }

              v43 = *(v37 + 16);
              v42 = *(v37 + 24);
              if (v43 >= v42 >> 1)
              {
                sub_274450738(v42 > 1, v43 + 1, 1, v37);
                v37 = v47;
              }

              *(v37 + 16) = v43 + 1;
              v44 = v37 + 32 * v43;
              *(v44 + 32) = v40;
              *(v44 + 40) = v41;
              *(v44 + 48) = v29;
              *(v44 + 56) = 1;

              v45 = __OFADD__(v35, v29);
              v35 += v29;
              if (v45)
              {
                __break(1u);
                goto LABEL_54;
              }

              v39 += 3;
              v36 = v36 + v41;
              --v38;
            }

            while (v38);
            v29 = v56;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v23 = v54;
            v5 = v55;
            v24 = MEMORY[0x277D84F90];
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          v49 = *(v29 + 16);
          if (v49 >= *(v29 + 24) >> 1)
          {
            sub_274450838();
            v29 = v52;
          }

          *(v29 + 16) = v49 + 1;
          v50 = v29 + 24 * v49;
          *(v50 + 32) = v37;
          v28 += 10;
          *(v50 + 40) = v36;
          *(v50 + 48) = v35;
          v25 = v59 - 10;
          v27 = v57 + 30;
          v26 = v31;
        }

        while (v31 < v23);

        v23 = *(v29 + 16);
        v5 = v29;
      }

      while (v23 > 0xA);
    }

    if (v23 == 1)
    {
LABEL_54:
      v53 = *(v29 + 32);
    }

    else if (v23)
    {
      return sub_2744D270C(v29);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v53;
  }

  else
  {
    v3 = result;
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v6 = v4 + 10;
      if (__OFADD__(v4, 10))
      {
        break;
      }

      if (v3 >= v6)
      {
        v7 = v4 + 10;
      }

      else
      {
        v7 = v3;
      }

      if (v7 < v4)
      {
        goto LABEL_62;
      }

      v8 = sub_27463B93C();
      sub_2744D22D8(v8, v9, v10, v11, a2);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274450838();
        v5 = v21;
      }

      v18 = *(v5 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v5 + 24) >> 1)
      {
        sub_274450838();
        v5 = v22;
      }

      result = swift_unknownObjectRelease();
      *(v5 + 16) = v19;
      v20 = (v5 + 24 * v18);
      v20[4] = v13;
      v20[5] = v15;
      v20[6] = v17;
      v4 += 10;
      if (v6 >= v3)
      {
        goto LABEL_15;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  return result;
}

uint64_t sub_2744D1AB4(uint64_t a1, uint64_t a2)
{

  *v2 = a1;

  return sub_2744D1634(a2);
}

void sub_2744D1B00(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *&v4[2] = a3;
  *&v4[3] = a4;
  sub_2744D1B40(a1, sub_2744D2D80, v4, a2);
}

void sub_2744D1B40(uint64_t a1, void (*a2)(double *), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v20 = *(*(a4 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2744D1D68(a1, a2, a3);
  if ((v14 & 0x100) == 0)
  {
    v15 = v12;
    v16 = v13;
    v17 = v14;
    sub_27463B94C();
    sub_27463C39C();
    (*(v8 + 8))(v11, v7);
    v21 = v15;
    v22 = v16;
    v23 = v17 & 1;
    v24 = 0;
    swift_getAssociatedConformanceWitness();
    sub_27463B51C();
    sub_27463B54C();
  }
}

uint64_t sub_2744D1D50(uint64_t result)
{
  if ((*(result + 16) & 1) == 0)
  {
    *(result + 8) = 1;
    *(result + 16) = 1;
  }

  return result;
}

void sub_2744D1D68(uint64_t a1, void (*a2)(double *), uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = *v3;
  v13 = 56;
  while (*(*v3 + 16) != v11)
  {
    v14 = a1 - v10;
    if (__OFSUB__(a1, v10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v5 = *(v12 + v13 - 8);
    v4 = *(v12 + v13);
    if (v4)
    {
      if (v14 < v5)
      {
        v24 = v3;
        v8 = *(v12 + v13 - 16);
        v26 = *(v12 + v13 - 24);
        v27 = *&v8;
        v28 = v5;
        sub_2744D200C(v26, v8, v5, 1);

        sub_2744D1D68(v14, a2, a3);
        sub_2744D2018(v26, v8, v5, 1);
        v5 = v26;
        v7 = *&v8;
        v6 = v28;

        goto LABEL_23;
      }
    }

    else
    {
      if (v14 < 1)
      {
        v24 = v3;
        v16 = *(v12 + v13 - 16);
        v26 = *(v12 + v13 - 24);
        v8 = v26;
        v27 = v16;
        LOBYTE(v28) = v5 & 1;
        a2(&v26);
        v7 = v27;
        v6 = v28;
        if (*&v26 != *&v8)
        {
          goto LABEL_22;
        }

        if (v28)
        {
          if (v27 == 0.0)
          {
            if ((v5 & 1) == 0)
            {
              goto LABEL_22;
            }

            v5 = v26;
          }

          else
          {
            if (v5)
            {
              v5 = v26;
              goto LABEL_23;
            }

LABEL_22:
            v5 = v26;
          }
        }

        else
        {
          if (v5 & 1 | (v27 != v16))
          {
            goto LABEL_22;
          }

          v5 = v26;
        }

LABEL_23:
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_24:
          if (v11 >= *(v12 + 16))
          {
            __break(1u);
          }

          else
          {
            v17 = (v12 + v13);
            v18 = *(v12 + v13 - 24);
            v19 = *(v12 + v13 - 16);
            v20 = *(v12 + v13 - 8);
            v21 = *(v12 + v13);
            *(v17 - 3) = v5;
            *(v17 - 2) = v7;
            *(v17 - 1) = v6;
            *v17 = v4;
            sub_2744D2018(v18, v19, v20, v21);
            v22 = v24;
            *v24 = v12;
            if (v4)
            {
              sub_2744D2018(v5, *&v7, v6, 1);
              v22 = v24;
            }

            else
            {
              v7 = *&v5;
            }

            *(v22 + 1) = *(v22 + 1) + v7 - *&v8;
          }

          return;
        }

LABEL_30:
        sub_27453AD44(v12);
        v12 = v23;
        goto LABEL_24;
      }

      v5 = 1;
    }

    v13 += 32;
    ++v11;
    v15 = __OFADD__(v10, v5);
    v10 += v5;
    if (v15)
    {
      __break(1u);
      return;
    }
  }
}

uint64_t sub_2744D200C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return v4;
}

uint64_t sub_2744D2018(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_2744D202C(uint64_t a1, uint64_t a2)
{
  sub_2744D2190(a1, *(v2 + 16), v6, 0.0);
  if ((v7 & 1) == 0)
  {
    return v6[1];
  }

  sub_27463C38C();

  v4 = sub_27463C66C();
  MEMORY[0x277C57EA0](v4);

  MEMORY[0x277C57EA0](2109216, 0xE300000000000000);
  sub_27463B8BC();
  v5 = sub_27463C66C();
  MEMORY[0x277C57EA0](v5);

  result = sub_27463C56C();
  __break(1u);
  return result;
}

uint64_t sub_2744D2190@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = *(a2 + 16);
  v6 = 0uLL;
  v7 = 0.0;
  if (v5)
  {
    v9 = 0;
    v10 = (a2 + 56);
    while (1)
    {
      v11 = result - v9;
      if (__OFSUB__(result, v9))
      {
        break;
      }

      v12 = *(v10 - 1);
      if (*v10)
      {
        v13 = *(v10 - 2);
        if (v11 < v12)
        {
          v17 = *(v10 - 3);

          sub_2744D2190(v11, v17, &v19, a4);
          v18 = v19;
          v15 = v20;
          v7 = v21;
          v16 = v22;
          result = sub_2744D2018(v17, v13, v12, 1);
          v6 = v18;
          goto LABEL_14;
        }

        v14 = __OFADD__(v9, v12);
        v9 += v12;
        if (v14)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v11 < 1)
        {
          v16 = 0;
          v15 = *(v10 - 1) & 1;
          v7 = a4;
          v6 = *(v10 - 24);
          goto LABEL_14;
        }

        v14 = __OFADD__(v9++, 1);
        if (v14)
        {
          goto LABEL_18;
        }

        v13 = *(v10 - 3);
      }

      a4 = a4 + *&v13;
      v10 += 32;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_13:
    v15 = 0;
    v16 = 1;
LABEL_14:
    *a3 = v6;
    *(a3 + 16) = v15;
    *(a3 + 24) = v7;
    *(a3 + 32) = v16;
  }

  return result;
}

void sub_2744D22D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 16);
  v7 = *(a5 + 24);
  v44 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v42 = &v32 - v10;
  v11 = *(v8 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v41 = &v32 - v16;
  v17 = sub_27463C14C();
  v49 = v17;
  if (v17 == sub_27463C17C())
  {
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = *(v40 + 8);
    v36 = v11 + 16;
    v37 = v19;
    v34 = (v9 + 8);
    v35 = v11 + 32;
    v32 = v7 + 16;
    v18 = MEMORY[0x277D84F90];
    v33 = (v11 + 8);
    v39 = v7;
    v40 = a4;
    v38 = v11;
    do
    {
      sub_27463C16C();
      sub_27463C15C();
      v20 = a2 + *(v11 + 72) * v17;
      v21 = v41;
      (*(v11 + 16))(v41, v20, v8);
      sub_27463C18C();
      (*(v11 + 32))(v14, v21, v8);
      v22 = v42;
      sub_27463C39C();
      v23 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      sub_27463B53C();
      (*v34)(v22, v23);
      if (v48)
      {
        v24 = (*(v7 + 16))(v8, v7);
        v25 = 0;
        v26 = 1;
      }

      else
      {
        v25 = v46;
        v24 = v45;
        v26 = v47;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274450754();
        v18 = v30;
      }

      v27 = *(v18 + 16);
      if (v27 >= *(v18 + 24) >> 1)
      {
        sub_274450754();
        v18 = v31;
      }

      (*v33)(v14, v8);
      *(v18 + 16) = v27 + 1;
      v28 = v18 + 24 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      *(v28 + 48) = v26 & 1;
      v29 = sub_27463C17C();
      v17 = v49;
      v11 = v38;
      v7 = v39;
    }

    while (v49 != v29);
  }

  sub_2744D284C(v18);
}

uint64_t sub_2744D270C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 48);
    v4 = MEMORY[0x277D84F90];
    v5 = 0.0;
    while (1)
    {
      v6 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *v3;
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274450738(0, *(v4 + 16) + 1, 1, v4);
        v4 = v14;
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_274450738(v9 > 1, v10 + 1, 1, v4);
        v4 = v15;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 32 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v7;
      *(v11 + 48) = v8;
      *(v11 + 56) = 1;

      v13 = __OFADD__(v2, *&v8);
      v2 += *&v8;
      if (v13)
      {
        break;
      }

      v3 += 3;
      v5 = v5 + v7;
      if (!--v1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_11:

    return v4;
  }

  return result;
}

double sub_2744D284C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 48);
    v3 = MEMORY[0x277D84F90];
    v4 = 0.0;
    do
    {
      v5 = *(v2 - 2);
      v6 = *(v2 - 1);
      v7 = *v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274450738(0, *(v3 + 16) + 1, 1, v3);
        v3 = v11;
      }

      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_274450738(v8 > 1, v9 + 1, 1, v3);
        v3 = v12;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 32 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v6;
      *(v10 + 48) = v7;
      *(v10 + 56) = 0;
      v4 = v4 + v5;
      v2 += 3;
      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

uint64_t sub_2744D2960@<X0>(uint64_t *a3@<X8>)
{
  v5 = sub_27463B87C();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_27463B87C();
  swift_getAssociatedConformanceWitness();
  result = sub_27463B4DC();
  *a3 = v5;
  a3[1] = result;
  v7 = MEMORY[0x277D84F90];
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = v7;
  return result;
}

uint64_t sub_2744D2A50(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = *&a1 == *&a3;
  if (a4)
  {
    v4 = 0;
  }

  v5 = a4 & (a3 == 0);
  if (*&a1 != 0.0)
  {
    v5 = a4 & (a3 != 0);
  }

  if (a2)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2744D2A94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x277C58EA0](v4);
  }

  else
  {
    MEMORY[0x277C58EA0](1);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x277C58ED0](v5);
  }
}

uint64_t sub_2744D2AE8(uint64_t a1, char a2)
{
  sub_27463C74C();
  sub_2744D2A94(v5, a1, a2 & 1);
  return sub_27463C7AC();
}

BOOL sub_2744D2B38(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  if (a5 == a6)
  {
    if (a2)
    {
      if (*&a1 == 0.0)
      {
        if (a4)
        {
          return a3 == 0;
        }
      }

      else if (a4)
      {
        return a3 != 0;
      }
    }

    else if ((a4 & 1) == 0 && *&a1 == *&a3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2744D2B8C(double a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x277C58ED0](*&a1);
  if (a4)
  {
    if (a3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x277C58EA0](v6);
  }

  else
  {
    MEMORY[0x277C58EA0](1);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0;
    }

    return MEMORY[0x277C58ED0](v7);
  }
}

uint64_t sub_2744D2C00(uint64_t a1, char a2, double a3)
{
  sub_27463C74C();
  sub_2744D2B8C(a3, v7, a1, a2 & 1);
  return sub_27463C7AC();
}

uint64_t sub_2744D2C78(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_27463C74C();
  sub_2744D2A94(v5, v2, v3);
  return sub_27463C7AC();
}

uint64_t sub_2744D2D00(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_27463C74C();
  sub_2744D2B8C(v2, v6, v3, v4);
  return sub_27463C7AC();
}

__n128 sub_2744D2D80(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = 0;
  return result;
}

uint64_t sub_2744D2DCC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744D2E0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Value(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Value(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_2744D2EE0()
{
  result = qword_28094EA60;
  if (!qword_28094EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094EA60);
  }

  return result;
}

unint64_t sub_2744D2F48()
{
  result = qword_28094EA68;
  if (!qword_28094EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094EA68);
  }

  return result;
}

uint64_t sub_2744D2F9C(unint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      return sub_2744F5644(a1, a4) & (a2 == a5);
    }

    return 0;
  }

  if (a3 != 1)
  {
    return a6 == 2 && !(a5 | a4);
  }

  if (a6 != 1)
  {
    return 0;
  }

  return sub_2744D3EA8(a1, a4);
}

void sub_2744D303C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    MEMORY[0x277C58EA0](1);
    sub_2744FABE8(a1, a2);
    v7 = a3;
LABEL_8:
    MEMORY[0x277C58EA0](v7);
    return;
  }

  if (a4 != 1)
  {
    v7 = 0;
    goto LABEL_8;
  }

  MEMORY[0x277C58EA0](2, a2, a3);

  sub_2744DE090(a1, a2);
}

uint64_t sub_2744D30D0(uint64_t a1, uint64_t a2, char a3)
{
  sub_27463C74C();
  if (!a3)
  {
    MEMORY[0x277C58EA0](1);
    sub_2744FABE8(__src, a1);
    v6 = a2;
LABEL_6:
    MEMORY[0x277C58EA0](v6);
    return sub_27463C7AC();
  }

  if (a3 != 1)
  {
    v6 = 0;
    goto LABEL_6;
  }

  MEMORY[0x277C58EA0](2);
  sub_2744DE090(__src, a1);
  return sub_27463C7AC();
}

uint64_t sub_2744D318C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_27463C74C();
  if (!v4)
  {
    MEMORY[0x277C58EA0](1);
    sub_2744FABE8(__src, v2);
    v5 = v3;
LABEL_6:
    MEMORY[0x277C58EA0](v5);
    return sub_27463C7AC();
  }

  if (v4 != 1)
  {
    v5 = 0;
    goto LABEL_6;
  }

  MEMORY[0x277C58EA0](2);
  sub_2744DE090(__src, v2);
  return sub_27463C7AC();
}

id TableCell.init(contentView:)(void *a1)
{
  OUTLINED_FUNCTION_56(&v1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_currentLayoutAtomIndex]);
  OUTLINED_FUNCTION_70_1(&v1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_host]);
  v1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_isHovered] = 0;
  v1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_isSelected] = 0;
  v1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_isEmphasized] = 0;
  *&v1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_contentView] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TableCell();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAutoresizingMask_];
  [v4 addSubview_];

  return v4;
}

id TableCell.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_64_0()) initWithCoder_];

  return v1;
}

void TableCell.init(coder:)()
{
  OUTLINED_FUNCTION_56(v0 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_currentLayoutAtomIndex);
  OUTLINED_FUNCTION_70_1(v0 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_host);
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_isHovered) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_isEmphasized) = 0;
  OUTLINED_FUNCTION_37_2("Fatal error", v1, v2, v3, v4, "WorkflowEditor/ScrollableTableView.swift", v5, v6, 156, 0);
  __break(1u);
}

id sub_2744D34E0()
{
  sub_2744D3560();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TableCell();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

id sub_2744D3560()
{
  [v0 bounds];
  CGRectGetWidth(v6);
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditor9TableCell_contentView];
  v7.origin.x = OUTLINED_FUNCTION_7_16();
  Width = CGRectGetWidth(v7);
  v8.origin.x = OUTLINED_FUNCTION_7_16();
  Height = CGRectGetHeight(v8);

  return [v1 setFrame_];
}

uint64_t sub_2744D3604()
{
  [v0 setNeedsLayout];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v2 = OUTLINED_FUNCTION_43_3();
    v3(v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2744D36C0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor9TableCell_isHovered;
  OUTLINED_FUNCTION_32_4(a1);
  return *(v1 + v2);
}

void sub_2744D36F4(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor9TableCell_isHovered;
  OUTLINED_FUNCTION_31_4(a1);
  *(v1 + v3) = v2;
}

uint64_t sub_2744D3780(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor9TableCell_isSelected;
  OUTLINED_FUNCTION_32_4(a1);
  return *(v1 + v2);
}

void sub_2744D37B4(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor9TableCell_isSelected;
  OUTLINED_FUNCTION_31_4(a1);
  *(v1 + v3) = v2;
}

uint64_t sub_2744D3840(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor9TableCell_isEmphasized;
  OUTLINED_FUNCTION_32_4(a1);
  return *(v1 + v2);
}

void sub_2744D3874(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor9TableCell_isEmphasized;
  OUTLINED_FUNCTION_31_4(a1);
  *(v1 + v3) = v2;
}

id TableCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_1_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_0_0();

  return [v2 v3];
}

void sub_2744D3A18()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SelfSizingTableCell.LayoutHost();
  objc_msgSendSuper2(&v7, sel__layoutMetricsInvalidatedForHostedView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_isCalculatingHeight) & 1) != 0 || (v3 = Strong + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_cachedHeight, *v3 = 0, *(v3 + 8) = 0, *(v3 + 16) = 1, v4 = Strong + OBJC_IVAR____TtC14WorkflowEditor9TableCell_host, !swift_unknownObjectWeakLoadStrong()))
    {
    }

    else
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v2, 1, ObjectType, v5);

      swift_unknownObjectRelease();
    }
  }
}

id sub_2744D3B44(void *a1)
{
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelfSizingTableCell.LayoutHost();
  v3 = objc_msgSendSuper2(&v5, sel_initWithHostedView_, a1);

  return v3;
}

char *sub_2744D3C38(void *a1)
{
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_isCalculatingHeight) = 0;
  v3 = v1 + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_cachedHeight;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = [objc_allocWithZone(type metadata accessor for SelfSizingTableCell.LayoutHost()) initWithHostedView_];
  v5 = OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_layoutHost;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_layoutHost) = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v1 + v5) setAutoresizingMask_];
  v6 = TableCell.init(contentView:)(*(v1 + v5));

  swift_unknownObjectWeakAssign();
  return v6;
}

void sub_2744D3D04(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_cachedHeight;
  if ((*(v1 + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_cachedHeight + 16) & 1) != 0 || *v3 != a1)
  {
    v4 = sub_2744D3D64(a1);
    *v3 = a1;
    *(v3 + 8) = v4;
    *(v3 + 16) = 0;
  }
}

double sub_2744D3D64(double a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_isCalculatingHeight;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_isCalculatingHeight) = 1;
  [*(v1 + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_layoutHost) sizeThatFits_];
  result = ceil(v3 + 0.0);
  *(v1 + v2) = 0;
  return result;
}

id sub_2744D3DE8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2744D3EA8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x2821FCF40](a1, a2);
    }

    v5 = a2;
    v6 = v2;
    goto LABEL_18;
  }

  if (v4)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = v3;
LABEL_18:

    return sub_2744DD9D8(v5, v6);
  }

  if (a1 != a2)
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v8 = 0;
      v9 = 1 << *(a1 + 32);
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = v10 & *(a1 + 56);
      v12 = (v9 + 63) >> 6;
LABEL_27:
      if (!v11)
      {
        v14 = v8;
        while (1)
        {
          v8 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v8 >= v12)
          {
            return 1;
          }

          v15 = *(v3 + 56 + 8 * v8);
          ++v14;
          if (v15)
          {
            v13 = __clz(__rbit64(v15));
            v11 = (v15 - 1) & v15;
            goto LABEL_34;
          }
        }

        __break(1u);
        return MEMORY[0x2821FCF40](a1, a2);
      }

      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_34:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v8 << 6)));
      sub_27463C74C();
      MEMORY[0x277C58EA0](v16);
      a1 = sub_27463C7AC();
      v17 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v18 = a1 & v17;
        if (((*(v2 + 56 + (((a1 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (a1 & v17)) & 1) == 0)
        {
          break;
        }

        a1 = v18 + 1;
        if (*(*(v2 + 48) + 8 * v18) == v16)
        {
          goto LABEL_27;
        }
      }
    }

    return 0;
  }

  return 1;
}

void sub_2744D40AC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_46_3();
    if (v4)
    {
      v5 = 0;
      v6 = 1 << *(a1 + 32);
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      else
      {
        v7 = -1;
      }

      v8 = v7 & *(a1 + 56);
      v9 = (v6 + 63) >> 6;
LABEL_8:
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_15:
        v14 = *(*(a1 + 48) + 8 * (v10 | (v5 << 6)));
        sub_27463C74C();
        MEMORY[0x277C58EA0](v14);
        v15 = sub_27463C7AC();
        v16 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v17 = v15 & v16;
          if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {
            break;
          }

          v15 = v17 + 1;
          if (*(*(a2 + 48) + 8 * v17) == v14)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        v11 = v5;
        while (1)
        {
          v5 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v5 >= v9)
          {
            return;
          }

          ++v11;
          if (*(a1 + 56 + 8 * v5))
          {
            OUTLINED_FUNCTION_28_0();
            v8 = v13 & v12;
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_2744D41F8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_46_3();
    if (v24)
    {
      v4 = 0;
      v5 = v3 + 56;
      OUTLINED_FUNCTION_42_3();
      v9 = v8 & v7;
      v11 = (v10 + 63) >> 6;
      v26 = v11;
      v27 = v6;
      if (v9)
      {
        while (2)
        {
          v12 = __clz(__rbit64(v9));
          v28 = (v9 - 1) & v9;
LABEL_11:
          v16 = *(*(v6 + 48) + 8 * (v12 | (v4 << 6)));
          sub_27463B6AC();
          sub_27463C74C();
          v29 = v16;
          sub_27463B71C();
          v17 = sub_27463C7AC();

          OUTLINED_FUNCTION_36_2();
          v19 = ~v18;
          while (1)
          {
            if (((*(a2 + 56 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
            {

              return;
            }

            v20 = sub_27463B6AC();
            v22 = v21;
            v24 = v20 == sub_27463B6AC() && v22 == v23;
            if (v24)
            {
              break;
            }

            v25 = sub_27463C6BC();

            v17 = (v17 & v19) + 1;
            if (v25)
            {

              goto LABEL_20;
            }
          }

LABEL_20:
          v11 = v26;
          v6 = v27;
          v9 = v28;
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v13 = v4;
      while (1)
      {
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v4 >= v11)
        {
          return;
        }

        ++v13;
        if (*(v5 + 8 * v4))
        {
          OUTLINED_FUNCTION_28_0();
          v28 = v15 & v14;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

void sub_2744D43E8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_46_3();
    if (v24)
    {
      v4 = 0;
      v5 = v3 + 56;
      OUTLINED_FUNCTION_42_3();
      v9 = v8 & v7;
      v11 = (v10 + 63) >> 6;
      v26 = v6;
      if ((v8 & v7) != 0)
      {
        while (2)
        {
          v12 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
LABEL_11:
          v16 = (*(v6 + 48) + 16 * (v12 | (v4 << 6)));
          v18 = *v16;
          v17 = v16[1];
          sub_27463C74C();

          sub_27463B71C();
          sub_27463C7AC();
          OUTLINED_FUNCTION_36_2();
          v21 = ~v20;
          do
          {
            v22 = v19 & v21;
            if (((*(a2 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
            {

              return;
            }

            v23 = (*(a2 + 48) + 16 * v22);
            v24 = *v23 == v18 && v23[1] == v17;
            if (v24)
            {
              break;
            }

            v25 = sub_27463C6BC();
            v19 = v22 + 1;
          }

          while ((v25 & 1) == 0);

          v6 = v26;
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v13 = v4;
      while (1)
      {
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v4 >= v11)
        {
          return;
        }

        ++v13;
        if (*(v5 + 8 * v4))
        {
          OUTLINED_FUNCTION_28_0();
          v9 = v15 & v14;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_2744D45E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_35_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 16);

  return v6(a1, &v1[v3], v4);
}

uint64_t sub_2744D46D8(uint64_t a1)
{
  OUTLINED_FUNCTION_69_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094EF30, &unk_274653E60);
  OUTLINED_FUNCTION_68_1(v1, v2, v3, v4, MEMORY[0x277D840B8]);
  OUTLINED_FUNCTION_45_3();
  sub_27463B53C();
  if (v6)
  {
    return v6;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2744D4788(uint64_t a1)
{
  OUTLINED_FUNCTION_69_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094EF30, &unk_274653E60);
  OUTLINED_FUNCTION_68_1(v1, v2, v3, v4, MEMORY[0x277D840B8]);
  OUTLINED_FUNCTION_45_3();
  sub_27463B53C();
  if (v6)
  {
    return v6;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2744D4838(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094EF30, &unk_274653E60);
  OUTLINED_FUNCTION_35_3(0, AssociatedTypeWitness, v3);
  OUTLINED_FUNCTION_40_3();
  sub_27463B87C();
  swift_getAssociatedConformanceWitness();
  v4 = sub_27463B4DC();
  OUTLINED_FUNCTION_40_3();
  sub_27463B87C();
  sub_27463B4DC();
  return v4;
}

uint64_t sub_2744D492C()
{

  return OUTLINED_FUNCTION_5_0();
}

uint64_t sub_2744D4988()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xA8) + 16);
  v2 = OUTLINED_FUNCTION_5_0();
  sub_2744DE41C(v2, v3, v1);
  return OUTLINED_FUNCTION_5_0();
}

double sub_2744D4A18@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0xB8));
  OUTLINED_FUNCTION_54_2(a1, v10);
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  *a2 = *v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;

  return result;
}

int *sub_2744D4B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  result = type metadata accessor for ScrollableTableView.Element(0, a7, a8, v17);
  *(a9 + result[9]) = a2;
  *(a9 + result[10]) = a3;
  *(a9 + result[11]) = a4;
  v19 = a9 + result[12];
  *v19 = a5;
  *(v19 + 8) = a6 & 1;
  return result;
}

uint64_t sub_2744D4D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ScrollableTableView.ReuseIdentifier(0, a3, a4, a4);
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(&v15, a1, v6);
  v8(&v17, a2, v6);
  if (!v16)
  {
    if (!*(&v18 + 1))
    {
      (*(v7 + 8))(&v15, v6);
      v9 = 1;
      return v9 & 1;
    }

LABEL_7:
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 8))(&v15, TupleTypeMetadata2);
    v9 = 0;
    return v9 & 1;
  }

  v8(v14, &v15, v6);
  if (!*(&v18 + 1))
  {
    sub_274430664(v14);
    goto LABEL_7;
  }

  v12[0] = v17;
  v12[1] = v18;
  v13 = v19;
  v9 = MEMORY[0x277C58A40](v14, v12);
  sub_274430664(v12);
  sub_274430664(v14);
  (*(v7 + 8))(&v15, v6);
  return v9 & 1;
}

uint64_t sub_2744D4ED4(uint64_t a1, uint64_t a2)
{
  (*(*(a2 - 8) + 16))(&v6, v2, a2);
  if (!*(&v7 + 1))
  {
    return MEMORY[0x277C58EA0](0);
  }

  v4[0] = v6;
  v4[1] = v7;
  v5 = v8;
  MEMORY[0x277C58EA0](1);
  sub_27463C30C();
  return sub_274430664(v4);
}

uint64_t sub_2744D4F7C(uint64_t a1)
{
  sub_27463C74C();
  sub_2744D4ED4(v3, a1);
  return sub_27463C7AC();
}

uint64_t sub_2744D4FCC(uint64_t a1, uint64_t a2)
{
  sub_27463C74C();
  sub_2744D4ED4(v4, a2);
  return sub_27463C7AC();
}

char *sub_2744D50B0()
{
  v1 = v0;
  OUTLINED_FUNCTION_1_0();
  v2 = *v0;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_70_1(v1 + *((*MEMORY[0x277D85000] & v2) + 0x60));
  OUTLINED_FUNCTION_0_26();
  v6 = *(v5 + 104);
  v7 = *((v4 & v2) + 0x50);
  *(v1 + v6) = sub_27463B87C();
  v8 = MEMORY[0x277D84FA0];
  *(v1 + *((*v3 & *v1) + 0x70)) = MEMORY[0x277D84FA0];
  OUTLINED_FUNCTION_0_26();
  v10 = MEMORY[0x277D84F90];
  *(v1 + *(v9 + 120)) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v11 + 128)) = v10;
  OUTLINED_FUNCTION_0_26();
  v13 = *(v12 + 136);
  v14 = *((v4 & v2) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v16 + 144)) = v10;
  OUTLINED_FUNCTION_0_26();
  v18 = (v1 + *(v17 + 152));
  *v18 = sub_2744D4838(v7, v14);
  v18[1] = v19;
  OUTLINED_FUNCTION_0_26();
  v21 = *(v20 + 160);
  v22 = OUTLINED_FUNCTION_15_6();
  _s11OverlayHostCMa(v22, v23, v24, v25);
  *(v1 + v21) = sub_274540FC8();
  OUTLINED_FUNCTION_0_26();
  v27 = v1 + *(v26 + 168);
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = 2;
  OUTLINED_FUNCTION_0_26();
  v29 = v1 + *(v28 + 176);
  *v29 = 0;
  v29[8] = 0;
  OUTLINED_FUNCTION_0_26();
  v31 = v1 + *(v30 + 184);
  v32 = OUTLINED_FUNCTION_15_6();
  type metadata accessor for ScrollableTableView.LayoutItem(v32, v33, v34, v35);
  OUTLINED_FUNCTION_1_17();
  swift_getWitnessTable();
  sub_2744D2960(v137);
  v36 = v137[1];
  *v31 = v137[0];
  *(v31 + 1) = v36;
  *(v31 + 4) = v138;
  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v37 + 192)) = v8;
  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v38 + 200)) = 0;
  OUTLINED_FUNCTION_0_26();
  v40 = *(v39 + 208);
  v41 = MEMORY[0x277D83B88];
  v42 = OUTLINED_FUNCTION_28_7();
  v44 = OUTLINED_FUNCTION_35_3(v42, v43, v41);
  OUTLINED_FUNCTION_34_4(v44, v45);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v1 + v40) = sub_27463B4DC();
  OUTLINED_FUNCTION_0_26();
  v48 = *(v47 + 216);
  v49 = OUTLINED_FUNCTION_15_6();
  v53 = type metadata accessor for ScrollableTableView.Element(v49, v50, v51, v52);
  *(v1 + v48) = OUTLINED_FUNCTION_34_4(v53, v54);
  OUTLINED_FUNCTION_0_26();
  v56 = v1 + *(v55 + 224);
  *v56 = xmmword_274653780;
  *(v56 + 1) = xmmword_274653780;
  *(v56 + 4) = 0;
  *(v56 + 5) = 0;
  v56[48] = 1;
  OUTLINED_FUNCTION_0_26();
  v58 = *(v57 + 232);
  v59 = swift_getAssociatedTypeWitness();
  v60 = OUTLINED_FUNCTION_28_7();
  v62 = OUTLINED_FUNCTION_35_3(v60, v61, v59);
  OUTLINED_FUNCTION_34_4(v62, v63);
  OUTLINED_FUNCTION_29_5();
  *(v1 + v58) = sub_27463B4DC();
  OUTLINED_FUNCTION_0_26();
  v65 = *(v64 + 240);
  type metadata accessor for ScrollableTableView.AccessoryID(255, v7, v14, v66);
  v67 = type metadata accessor for TableCell();
  v68 = OUTLINED_FUNCTION_16_7(v67);
  OUTLINED_FUNCTION_34_4(v68, v69);
  OUTLINED_FUNCTION_11_8();
  WitnessTable = swift_getWitnessTable();
  *(v1 + v65) = OUTLINED_FUNCTION_33_2(WitnessTable);
  OUTLINED_FUNCTION_0_26();
  v72 = *(v71 + 248);
  type metadata accessor for ScrollableTableView.ReuseIdentifier(255, v7, v14, v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EF10, &qword_274653E18);
  v75 = OUTLINED_FUNCTION_16_7(v74);
  OUTLINED_FUNCTION_34_4(v75, v76);
  OUTLINED_FUNCTION_9_9();
  v77 = swift_getWitnessTable();
  *(v1 + v72) = OUTLINED_FUNCTION_33_2(v77);
  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v78 + 272)) = 0;
  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v79 + 280)) = 0;
  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v80 + 288)) = 0;
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_56(v1 + *(v81 + 296));
  OUTLINED_FUNCTION_28_7();
  v82 = sub_27463B87C();
  if (sub_27463B8BC())
  {
    sub_2744DDCAC(v82, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
  }

  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v83 + 304)) = v84;
  OUTLINED_FUNCTION_0_26();
  __swift_storeEnumTagSinglePayload(v1 + *(v85 + 312), 1, 1, AssociatedTypeWitness);
  v86 = objc_allocWithZone(MEMORY[0x277D759D8]);
  v87 = OUTLINED_FUNCTION_0_0();
  [v88 v89];
  OUTLINED_FUNCTION_0_26();
  v91 = *(v90 + 256);
  *(v1 + v91) = v92;
  [v92 setShowsVerticalScrollIndicator_];
  [*(v1 + v91) setShowsHorizontalScrollIndicator_];
  [*(v1 + v91) setAlwaysBounceVertical_];
  v93 = *(v1 + v91);
  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v94 + 264)) = v93;
  v95 = OUTLINED_FUNCTION_15_6();
  type metadata accessor for ScrollableTableView(v95, v96, v97, v98);
  v99 = v93;
  v100 = OUTLINED_FUNCTION_0_0();
  v103 = objc_msgSendSuper2(v101, v102, v100);
  v104 = *(v103 + *((*v3 & *v103) + 0x108));
  v105 = v103;
  [v104 setTranslatesAutoresizingMaskIntoConstraints_];
  v106 = OUTLINED_FUNCTION_15_6();
  type metadata accessor for ScrollableTableView.ScrollableTableViewScrollDelegate(v106, v107, v108, v109);
  sub_2744D594C(v105);
  OUTLINED_FUNCTION_8_13();
  v111 = *(v110 + 272);
  v112 = *(v105 + v111);
  *(v105 + v111) = v113;
  v114 = v113;

  OUTLINED_FUNCTION_8_13();
  v116 = *(v115 + 256);
  v117 = *(v105 + v116);
  [v117 setDelegate_];

  [*(v105 + v116) setTranslatesAutoresizingMaskIntoConstraints_];
  v118 = *(v105 + v116);
  v119 = v105;
  [v119 addSubview_];
  v136 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_274653790;
  v121 = [*(v105 + v116) leadingAnchor];
  v122 = [v119 leadingAnchor];
  v123 = OUTLINED_FUNCTION_53_2();

  *(v120 + 32) = v123;
  v124 = [*(v105 + v116) trailingAnchor];
  v125 = [v119 trailingAnchor];

  v126 = OUTLINED_FUNCTION_53_2();
  *(v120 + 40) = v126;
  v127 = [*(v105 + v116) topAnchor];
  v128 = [v119 topAnchor];

  v129 = OUTLINED_FUNCTION_53_2();
  *(v120 + 48) = v129;
  v130 = [*(v105 + v116) bottomAnchor];
  v131 = [v119 bottomAnchor];

  v132 = [v130 constraintEqualToAnchor_];
  *(v120 + 56) = v132;
  sub_274412734(0, &qword_28094E990, 0x277CCAAD0);
  v133 = sub_27463B7FC();

  [v136 activateConstraints_];

  OUTLINED_FUNCTION_8_13();
  [v119 addSubview_];

  return v119;
}

void sub_2744D59A4()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_70_1(v1 + *((*MEMORY[0x277D85000] & v3) + 0x60));
  OUTLINED_FUNCTION_52_2();
  v6 = *(v5 + 104);
  v7 = *((v4 & v3) + 0x50);
  *(v1 + v6) = sub_27463B87C();
  v8 = MEMORY[0x277D84FA0];
  *(v1 + *((*v2 & *v1) + 0x70)) = MEMORY[0x277D84FA0];
  OUTLINED_FUNCTION_52_2();
  v10 = MEMORY[0x277D84F90];
  *(v1 + *(v9 + 120)) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_52_2();
  *(v1 + *(v11 + 128)) = v10;
  OUTLINED_FUNCTION_52_2();
  v13 = *(v12 + 136);
  v14 = *((v4 & v3) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_52_2();
  *(v1 + *(v16 + 144)) = v10;
  OUTLINED_FUNCTION_52_2();
  v18 = (v1 + *(v17 + 152));
  *v18 = sub_2744D4838(v7, v14);
  v18[1] = v19;
  OUTLINED_FUNCTION_52_2();
  v21 = *(v20 + 160);
  _s11OverlayHostCMa(0, v7, v14, v22);
  *(v1 + v21) = sub_274540FC8();
  OUTLINED_FUNCTION_52_2();
  v24 = v1 + *(v23 + 168);
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 2;
  OUTLINED_FUNCTION_52_2();
  v26 = v1 + *(v25 + 176);
  *v26 = 0;
  v26[8] = 0;
  OUTLINED_FUNCTION_52_2();
  v28 = v1 + *(v27 + 184);
  type metadata accessor for ScrollableTableView.LayoutItem(0, v7, v14, v29);
  OUTLINED_FUNCTION_1_17();
  swift_getWitnessTable();
  sub_2744D2960(v78);
  v30 = v78[1];
  *v28 = v78[0];
  *(v28 + 1) = v30;
  *(v28 + 4) = v79;
  OUTLINED_FUNCTION_52_2();
  *(v1 + *(v31 + 192)) = v8;
  OUTLINED_FUNCTION_52_2();
  *(v1 + *(v32 + 200)) = 0;
  OUTLINED_FUNCTION_52_2();
  v34 = *(v33 + 208);
  v35 = OUTLINED_FUNCTION_35_3(0, AssociatedTypeWitness, MEMORY[0x277D83B88]);
  OUTLINED_FUNCTION_34_4(v35, v36);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v1 + v34) = sub_27463B4DC();
  OUTLINED_FUNCTION_52_2();
  v39 = *(v38 + 216);
  v41 = type metadata accessor for ScrollableTableView.Element(0, v7, v14, v40);
  *(v1 + v39) = OUTLINED_FUNCTION_34_4(v41, v42);
  OUTLINED_FUNCTION_52_2();
  v44 = v1 + *(v43 + 224);
  *v44 = xmmword_274653780;
  *(v44 + 1) = xmmword_274653780;
  *(v44 + 4) = 0;
  *(v44 + 5) = 0;
  v44[48] = 1;
  OUTLINED_FUNCTION_52_2();
  v46 = *(v45 + 232);
  v47 = swift_getAssociatedTypeWitness();
  v48 = OUTLINED_FUNCTION_35_3(0, AssociatedTypeWitness, v47);
  OUTLINED_FUNCTION_34_4(v48, v49);
  *(v1 + v46) = sub_27463B4DC();
  OUTLINED_FUNCTION_52_2();
  v51 = *(v50 + 240);
  type metadata accessor for ScrollableTableView.AccessoryID(255, v7, v14, v52);
  v53 = type metadata accessor for TableCell();
  v54 = OUTLINED_FUNCTION_16_7(v53);
  OUTLINED_FUNCTION_34_4(v54, v55);
  OUTLINED_FUNCTION_11_8();
  WitnessTable = swift_getWitnessTable();
  *(v1 + v51) = OUTLINED_FUNCTION_33_2(WitnessTable);
  OUTLINED_FUNCTION_52_2();
  v58 = *(v57 + 248);
  v60 = type metadata accessor for ScrollableTableView.ReuseIdentifier(255, v7, v14, v59);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EF10, &qword_274653E18);
  v62 = OUTLINED_FUNCTION_35_3(0, v60, v61);
  OUTLINED_FUNCTION_34_4(v62, v63);
  OUTLINED_FUNCTION_9_9();
  swift_getWitnessTable();
  *(v1 + v58) = sub_27463B4DC();
  OUTLINED_FUNCTION_52_2();
  *(v1 + *(v64 + 272)) = 0;
  OUTLINED_FUNCTION_52_2();
  *(v1 + *(v65 + 280)) = 0;
  OUTLINED_FUNCTION_52_2();
  *(v1 + *(v66 + 288)) = 0;
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_56(v1 + *(v67 + 296));
  v68 = sub_27463B87C();
  if (sub_27463B8BC())
  {
    sub_2744DDCAC(v68, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
  }

  OUTLINED_FUNCTION_52_2();
  *(v1 + *(v69 + 304)) = v70;
  OUTLINED_FUNCTION_52_2();
  __swift_storeEnumTagSinglePayload(v1 + *(v71 + 312), 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_37_2("Fatal error", v72, v73, v74, v75, "WorkflowEditor/ScrollableTableView.swift", v76, v77, 521, 0);
  __break(1u);
}

id sub_2744D603C()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_2744D6230();
  v4 = type metadata accessor for ScrollableTableView(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v3);
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_layoutSubviews);
}

void sub_2744D60C0(void *a1)
{
  v1 = a1;
  sub_2744D603C();
}

__n128 sub_2744D6108@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  v10 = sub_27463C0AC();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = a5 + *(type metadata accessor for ScrollableTableView.AccessoryID(0, a3, a4, v11) + 36);
  result = *a2;
  v14 = *(a2 + 16);
  *v12 = *a2;
  *(v12 + 16) = v14;
  *(v12 + 32) = *(a2 + 32);
  return result;
}

unint64_t sub_2744D61CC()
{
  if (*v0 >> 62)
  {
    result = sub_27463C27C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  result = sub_2745A87DC();
  if (!result)
  {
    v2 = sub_274453594();
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      return sub_274595980(result);
    }
  }

  return result;
}

uint64_t sub_2744D6230()
{
  v1 = v0;
  sub_2744D6628();
  sub_2744D6340();
  sub_2744D7F18();
  v2 = MEMORY[0x277D85000];
  v3 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xA0));
  [v1 bounds];
  [v3 setFrame_];
  sub_2744D46B0();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);

      v7(v8);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v1 + *((*v2 & *v1) + 0x90)) = MEMORY[0x277D84F90];
}

double sub_2744D6340()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x100));
  [v1 contentOffset];
  v3 = v2;
  [v1 bounds];
  return v3;
}

id sub_2744D63CC(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6 = type metadata accessor for ScrollableTableView.ScrollableTableViewScrollDelegate(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v5);
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

void sub_2744D6484()
{
  v0 = sub_2744D63BC();
  if (v0)
  {
    v4 = v0;
    sub_2744D6004(0);
    if (sub_2744D3E30())
    {
      v2 = v1;
      ObjectType = swift_getObjectType();
      (*(v2 + 48))(ObjectType, v2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_2744D6544(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2744D6484();
}

void sub_2744D6628()
{
  ObjectType = swift_getObjectType();
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  OUTLINED_FUNCTION_40_3();
  v135 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v134 = v4;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v6);
  v7 = sub_27463800C();
  OUTLINED_FUNCTION_1();
  v138 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *((v2 & v1) + 0x58);
  v13 = OUTLINED_FUNCTION_40_3();
  v16 = type metadata accessor for ScrollableTableView.Element(v13, v14, v12, v15);
  OUTLINED_FUNCTION_1();
  v140 = v17;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v19);
  v159 = v12;
  v20 = *(v12 + 8);
  OUTLINED_FUNCTION_41_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v161 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0();
  v150 = v24;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3(v26);
  OUTLINED_FUNCTION_4_0();
  v160 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0();
  v136 = v29;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_50_3();
  v163 = v31;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3(v33);
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_35_0();
  v164 = v34;
  v157 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_0();
  v156 = v36;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3(v38);
  if (*(v0 + *((v2 & v1) + 0xC8)) == 1)
  {
    v133 = v11;
    v132 = v7;
    v40 = v39;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_34_4(TupleTypeMetadata2, v42);
    v162 = v20;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v146 = AssociatedTypeWitness;
    v141 = AssociatedConformanceWitness;
    v169 = sub_27463B4DC();
    OUTLINED_FUNCTION_21_8();
    v168 = sub_27463B87C();
    v153 = v0;
    sub_2744D3E80();
    v170[0] = v44;
    v154 = v3;
    v45 = sub_27463B92C();
    OUTLINED_FUNCTION_18_6();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x277C57F10](&v165, v45, WitnessTable);

    v167 = v165;
    OUTLINED_FUNCTION_41_3();
    sub_27463C5BC();
    sub_27463C58C();
    OUTLINED_FUNCTION_41_3();
    v148 = sub_27463C5AC();
    v147 = v40 + 32;
    v142 = (v160 + 32);
    v143 = v160 + 16;
    v144 = (v161 + 8);
    v145 = v160 + 8;
    v158 = v16;
    v47 = v155;
    v48 = (v161 + 8);
    while (1)
    {
      v49 = v156;
      sub_27463C59C();
      OUTLINED_FUNCTION_38_3();
      v50(v47, v49, v157);
      if (__swift_getEnumTagSinglePayload(v47, 1, v164) == 1)
      {
        break;
      }

      v161 = *v47;
      v51 = v161;
      v52 = v47 + *(v164 + 48);
      v53 = v152;
      v54 = v154;
      (*v142)(v152, v52, v154);
      v55 = v149;
      OUTLINED_FUNCTION_44_2();
      sub_27463C39C();
      v165 = v51;
      v166 = 0;
      v56 = v146;
      sub_27463B51C();
      sub_27463B54C();
      OUTLINED_FUNCTION_38_3();
      v57(v163, v53, v54);
      OUTLINED_FUNCTION_44_2();
      sub_27463C39C();
      sub_2744D492C();
      v58 = v159;
      v160 = sub_2744D46D8(v55);

      v59 = *v48;
      (*v48)(v55, v56);
      v60 = v150;
      OUTLINED_FUNCTION_44_2();
      sub_27463C39C();
      sub_2744D492C();
      v61 = sub_2744D4788(v60);

      v59(v60, v56);
      v62 = v58;
      v16 = v158;
      sub_2744D4B7C(v163, v160, v61, 0, v161, 0, v54, v62, v151);
      OUTLINED_FUNCTION_21_8();
      sub_27463B92C();
      sub_27463B8CC();
      OUTLINED_FUNCTION_38_3();
      v63 = v54;
      v47 = v155;
      v64(v53, v63);
    }

    v65 = v153;
    v66 = v153;
    v67 = sub_2744D4988();
    v70 = v67;
    if (v69)
    {
      v71 = v154;
      if (v69 != 1)
      {
LABEL_35:
        MEMORY[0x28223BE20](v67);
        *(&v132 - 2) = v65;
        OUTLINED_FUNCTION_21_8();
        v117 = sub_27463B92C();
        OUTLINED_FUNCTION_19_6(v117);
        OUTLINED_FUNCTION_23_5();
        sub_27463BB6C();
        v118 = v168;

        sub_2744D4C40(v119);
        sub_2744D4590();
        v121 = v120;
        sub_2744D45B8();
        v124 = sub_2744D76F0(v118, v121, v122, v123);

        v125 = MEMORY[0x277D85000];
        swift_beginAccess();
        v127 = type metadata accessor for ScrollableTableView.LayoutItem(255, v71, v159, v126);
        OUTLINED_FUNCTION_1_17();
        v128 = swift_getWitnessTable();
        v130 = type metadata accessor for LazyStackLayoutEngine(0, v127, v128, v129);
        sub_2744D1AB4(v124, v130);
        swift_endAccess();
        sub_2744D4B54(v169);
        *(v65 + *((*v125 & *v65) + 0xC8)) = 0;
        return;
      }

      if ((v67 & 0xC000000000000001) != 0)
      {
        sub_27463C23C();
        v66 = type metadata accessor for EditorDropItem();
        sub_2744DE2CC(&qword_28094EF08, type metadata accessor for EditorDropItem, &unk_274653488);
        OUTLINED_FUNCTION_5_0();
        sub_27463BA7C();
        v70 = v170[0];
        v72 = v170[1];
        v73 = v170[2];
        v74 = v170[3];
        v75 = v170[4];
      }

      else
      {
        v74 = 0;
        OUTLINED_FUNCTION_36_2();
        v72 = v70 + 56;
        OUTLINED_FUNCTION_57_1();
        v75 = v82 & v83;
      }

      v164 = v73;
      v16 = (v73 + 64) >> 6;
      if (v70 < 0)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v84 = v74;
        v85 = v74;
        if (!v75)
        {
          break;
        }

LABEL_20:
        OUTLINED_FUNCTION_28_0();
        v88 = v87 & v86;
        v65 = *(*(v70 + 48) + ((v85 << 9) | (8 * v89)));

        if (!v65)
        {
LABEL_26:
          v67 = sub_274406A24(v70);
          v65 = v153;
          v71 = v154;
          goto LABEL_35;
        }

        while (1)
        {
          v91 = v65[2];
          v92 = v70;
          v93 = v158;
          sub_27463B92C();
          sub_27463B86C();
          sub_27457FF48(v91, v168, v93);

          OUTLINED_FUNCTION_30_5();
          v96 = v94 + v95 * v91;
          v97 = *(v93 + 44);
          v70 = v92;
          *(v96 + v97) = 1;
          v66 = &v168;
          CGSizeMake();
          v74 = v85;
          v75 = v88;
          if ((v92 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_22:
          v90 = sub_27463C2BC();
          if (v90)
          {
            v167 = v90;
            type metadata accessor for EditorDropItem();
            swift_dynamicCast();
            v65 = v165;
            v85 = v74;
            v88 = v75;
            if (v165)
            {
              continue;
            }
          }

          goto LABEL_26;
        }
      }

      while (1)
      {
        v85 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        if (v85 >= v16)
        {
          goto LABEL_26;
        }

        ++v84;
        if (*(v72 + 8 * v85))
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v74 = v68;
      v66 = v67;
      v70 = v133;
      sub_274637FFC();
      OUTLINED_FUNCTION_21_8();
      v165 = sub_27463B87C();
      v72 = v66 & 0xC000000000000001;
      sub_2744535A4();
      v164 = v66;
      if ((v66 & 0xC000000000000001) == 0)
      {
        v72 = *(v66 + 32);

        goto LABEL_11;
      }
    }

    MEMORY[0x277C58B20](0, v66);
    v131 = OUTLINED_FUNCTION_64_0();
    sub_2744DE3D0(v131, v74, 0);
LABEL_11:
    v71 = v154;
    v76 = v146;
    v77 = *(v72 + 16);
    if (v77)
    {
      v78 = *(v72 + 24);
      sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
      v79 = v77;
      if (sub_27463BF7C())
      {
        OUTLINED_FUNCTION_21_8();
        sub_27463B92C();
        sub_27463B86C();
        sub_27457FF48(v78, v168, v16);
        OUTLINED_FUNCTION_30_5();
        *(v80 + v81 * v78 + *(v16 + 44)) = 1;
        CGSizeMake();
        sub_274637FCC();

        goto LABEL_32;
      }
    }

    sub_2744306B8(v72 + 48, v170);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094EF20, &qword_274653E58);
    v98 = v137;
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_65_1();
      __swift_storeEnumTagSinglePayload(v99, v100, v101, v71);
      OUTLINED_FUNCTION_38_3();
      v102 = v136;
      v103(v136, v98, v71);
      OUTLINED_FUNCTION_38_3();
      v104(v152, v102, v71);
      v161 = v72;
      OUTLINED_FUNCTION_61_2();
      sub_27463C39C();
      sub_2744D492C();
      v105 = OUTLINED_FUNCTION_5_0();
      v163 = v74;
      v106 = v159;
      v160 = sub_2744D46D8(v105);

      v107 = *v144;
      (*v144)(v72, v76);
      OUTLINED_FUNCTION_61_2();
      sub_27463C39C();
      sub_2744D492C();
      v108 = sub_2744D4788(v72);

      v107(v72, v146);
      v109 = v108;
      v110 = v106;
      v74 = v163;
      v70 = v133;
      sub_2744D4B7C(v152, v160, v109, 1, 0, 1, v71, v110, v151);
      OUTLINED_FUNCTION_21_8();
      sub_27463B92C();
      sub_27463B8CC();
      OUTLINED_FUNCTION_38_3();
      v112 = v136;
      v113 = v71;
    }

    else
    {
      v114 = OUTLINED_FUNCTION_43_3();
      __swift_storeEnumTagSinglePayload(v114, v115, 1, v71);
      v111 = *(v134 + 8);
      v112 = v98;
      v113 = v135;
    }

    v111(v112, v113);
LABEL_32:
    if ((sub_274637FEC() & 1) == 0)
    {
      OUTLINED_FUNCTION_21_8();
      v116 = sub_27463B92C();
      OUTLINED_FUNCTION_19_6(v116);
      sub_27463B5AC();
    }

    v170[0] = v165;
    v167 = v74;
    OUTLINED_FUNCTION_21_8();
    sub_27463B92C();
    OUTLINED_FUNCTION_23_5();
    OUTLINED_FUNCTION_17_7();
    swift_getWitnessTable();
    sub_27463BB5C();
    sub_2744DE3D0(v164, v74, 0);

    v67 = (*(v138 + 8))(v70, v132);
    goto LABEL_35;
  }
}