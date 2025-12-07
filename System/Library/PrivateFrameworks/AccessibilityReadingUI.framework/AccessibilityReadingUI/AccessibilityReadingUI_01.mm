uint64_t sub_23D84F2F0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v4 = sub_23D8DD750();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED970, &qword_23D8E1320);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED968, &qword_23D8E1318);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  sub_23D8DD740();
  v16[4] = a1;
  sub_23D8DCD70();
  v13 = sub_23D835AD0(&qword_27E2ED978, &qword_27E2ED970, &qword_23D8E1320, MEMORY[0x277CDD7A8]);
  MEMORY[0x23EEEF8F0](v8, v5, v13);
  (*(v6 + 8))(v8, v5);
  v16[6] = v5;
  v16[7] = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x23EEEF8F0](v12, v9, OpaqueTypeConformance2);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_23D84F564()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDAF8, &qword_23D8E1410);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_23D84F688(&v6 - v2);
  v4 = sub_23D835AD0(&qword_27E2EDB00, &qword_27E2EDAF8, &qword_23D8E1410, MEMORY[0x277CDDF68]);
  MEMORY[0x23EEEF8F0](v3, v0, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_23D84F688@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBA0, &qword_23D8E14F8);
  MEMORY[0x28223BE20](v18);
  v3 = &v16 - v2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBA8, &qword_23D8E1500);
  v4 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v6 = &v16 - v5;
  v7 = sub_23D8DD750();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED970, &qword_23D8E1320);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  sub_23D8DD740();
  v21 = v1;
  sub_23D8DCD70();
  sub_23D8DD730();
  v20 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBB0, &unk_23D8E1508);
  sub_23D835AD0(&qword_27E2EDBB8, &qword_27E2EDBB0, &unk_23D8E1508, MEMORY[0x277CDF028]);
  sub_23D8DCD70();
  v12 = *(v18 + 48);
  (*(v9 + 16))(v3, v11, v8);
  v13 = &v3[v12];
  v14 = v17;
  (*(v4 + 16))(v13, v6, v17);
  sub_23D8DD5D0();
  (*(v4 + 8))(v6, v14);
  return (*(v9 + 8))(v11, v8);
}

double sub_23D84F9B4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x23EEF0780](0.25, 1.0, 0.0);
  sub_23D8DCE60();

  return result;
}

uint64_t sub_23D84FA24(uint64_t a1)
{
  v2 = sub_23D8DD4D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-v7];
  if (AXDeviceIsPad())
  {
    sub_23D8DD4A0();
  }

  else
  {
    sub_23D8DD4B0();
  }

  v9 = type metadata accessor for AXRFullScreenView(0);
  (*(v3 + 16))(v6, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E8, &qword_23D8E0EB8);
  sub_23D8DE330();
  (*(v3 + 8))(v8, v2);
  v10 = (a1 + *(v9 + 96));
  v11 = *v10;
  v12 = *(v10 + 1);
  v19 = v11;
  v20 = v12;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();
  v13 = (a1 + *(v9 + 40));
  v14 = *v13;
  v15 = *(v13 + 1);
  v19 = v14;
  v20 = v15;
  v18 = 0;
  return sub_23D8DE330();
}

uint64_t sub_23D84FC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23D83E0FC();
  sub_23D83CB18();
  v4 = sub_23D8DDCB0();
  if (*(a1 + 16))
  {
    v7 = v4;
    v8 = v5;
    v9 = v6;
    sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);

    sub_23D8DC960();

    sub_23D8DC7E0();

    v10 = sub_23D8DEB80();
    v11 = sub_23D8DEB70();

    if (v11)
    {
      sub_23D8DE220();
    }

    else
    {
      sub_23D8DE240();
    }

    v12 = sub_23D8DDC00();
    v14 = v13;
    v16 = v15;

    sub_23D83CB6C(v7, v8, v9 & 1);

    v17 = sub_23D8DDC20();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_23D83CB6C(v12, v14, v16 & 1);

    *a2 = v17;
    *(a2 + 8) = v19;
    *(a2 + 16) = v21 & 1;
    *(a2 + 24) = v23;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D84FDEC(uint64_t a1)
{
  v2 = type metadata accessor for AXRFullScreenView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_23D8DCC10();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8DCC00();
  sub_23D853140(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_23D855DF8(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AXRFullScreenView);
  return MEMORY[0x23EEF04C0](v7, sub_23D854890, v9);
}

uint64_t sub_23D84FF54(uint64_t a1, char a2)
{
  type metadata accessor for AXRFullScreenView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  return sub_23D8DE330();
}

uint64_t sub_23D84FFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v5 = qword_27E2F3C80;
    v6 = sub_23D8DE830();
    v7 = sub_23D8DE830();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  v9 = sub_23D8DDCB0();
  if (*(a1 + 16))
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);

    sub_23D8DC960();

    sub_23D8DC7E0();

    v15 = sub_23D8DEB80();
    v16 = sub_23D8DEB70();

    if (v16)
    {
      sub_23D8DE220();
    }

    else
    {
      sub_23D8DE240();
    }

    v17 = sub_23D8DDC00();
    v19 = v18;
    v21 = v20;

    sub_23D83CB6C(v12, v13, v14 & 1);

    v22 = sub_23D8DDC20();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_23D83CB6C(v17, v19, v21 & 1);

    *a2 = v22;
    *(a2 + 8) = v24;
    *(a2 + 16) = v26 & 1;
    *(a2 + 24) = v28;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D850280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v51 = a3;
  swift_getWitnessTable();
  v5 = sub_23D8DD7F0();
  v6 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v8 = *(a2 + 24);
  v57 = v5;
  v58 = v6;
  v53 = v8;
  v54 = v6;
  v59 = WitnessTable;
  v60 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v45 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = v43 - v12;
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v43 - v18;
  v20 = sub_23D8DD6C0();
  v50 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v52 = v43 - v21;
  if (*v3)
  {
    sub_23D8361EC();
    sub_23D8361EC();
    v57 = v13;
    v58 = v54;
    v59 = WitnessTable;
    v60 = v53;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_23D889578(v17, v13, OpaqueTypeMetadata2, WitnessTable, OpaqueTypeConformance2);
    v23 = *(v14 + 8);
    v23(v17, v13);
    v23(v19, v13);
  }

  else
  {
    v24 = sub_23D8508B4();
    v43[1] = v25;
    v43[2] = v24;
    LODWORD(v48) = v26;
    v61[0] = *(v3 + 8);
    v43[0] = *(v3 + 56);
    v27 = swift_allocObject();
    v28 = v54;
    v44 = v20;
    v29 = v53;
    *(v27 + 16) = v54;
    *(v27 + 24) = v29;
    v30 = *(v3 + 16);
    *(v27 + 32) = *v3;
    *(v27 + 48) = v30;
    v31 = *(v3 + 48);
    *(v27 + 64) = *(v3 + 32);
    *(v27 + 80) = v31;
    v32 = swift_allocObject();
    *(v32 + 16) = v28;
    *(v32 + 24) = v29;
    v33 = *(v3 + 16);
    *(v32 + 32) = *v3;
    *(v32 + 48) = v33;
    v34 = *(v3 + 48);
    *(v32 + 64) = *(v3 + 32);
    *(v32 + 80) = v34;
    sub_23D85265C(v61, &v57);

    sub_23D85265C(v61, &v57);

    v48 = WitnessTable;
    v35 = v45;
    sub_23D8DDFB0();

    v57 = v13;
    v58 = v28;
    v59 = v48;
    v60 = v29;
    v20 = v44;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = v46;
    sub_23D8361EC();
    v38 = *(v47 + 8);
    v38(v35, OpaqueTypeMetadata2);
    sub_23D8361EC();
    sub_23D889670(v35, v13, OpaqueTypeMetadata2, v48, v36);
    v39 = v35;
    WitnessTable = v48;
    v38(v39, OpaqueTypeMetadata2);
    v38(v37, OpaqueTypeMetadata2);
  }

  v57 = v13;
  v58 = v54;
  v59 = WitnessTable;
  v60 = v53;
  v40 = swift_getOpaqueTypeConformance2();
  v55 = WitnessTable;
  v56 = v40;
  swift_getWitnessTable();
  v41 = v52;
  sub_23D8361EC();
  return (*(v50 + 8))(v41, v20);
}

uint64_t sub_23D8508B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED798, &unk_23D8E11A0);
  sub_23D8DE470();
  return v1;
}

uint64_t sub_23D850910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v79 = a1;
  v84 = a3;
  swift_getWitnessTable();
  v6 = sub_23D8DD7F0();
  v72 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - v9;
  v77 = sub_23D8DD880();
  v70 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v12 = (&v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v15 = *(a2 + 24);
  *&v89 = v6;
  *(&v89 + 1) = v13;
  v90 = WitnessTable;
  v91 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v78 = &v63 - v17;
  *&v89 = v6;
  *(&v89 + 1) = v13;
  v73 = v13;
  v85 = WitnessTable;
  v90 = WitnessTable;
  v91 = v15;
  v76 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = OpaqueTypeMetadata2;
  *&v89 = OpaqueTypeMetadata2;
  *(&v89 + 1) = MEMORY[0x277D839B0];
  v82 = OpaqueTypeConformance2;
  v90 = OpaqueTypeConformance2;
  v91 = MEMORY[0x277D839C8];
  v19 = swift_getOpaqueTypeMetadata2();
  v69 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v74 = &v63 - v23;
  v24 = sub_23D8DD6C0();
  v80 = *(v24 - 8);
  v81 = v24;
  MEMORY[0x28223BE20](v24);
  v86 = &v63 - v25;
  if (*v4)
  {
    v66 = sub_23D8508B4();
    v65 = v26;
    v64 = v27;
    sub_23D8DE700();
    *v12 = v28;
    v12[1] = v29;
    v30 = v70;
    (*(v70 + 104))(v12, *MEMORY[0x277CDE250], v77);
    v63 = v12;
    v31 = *(v4 + 8);
    v67 = *(v4 + 16);
    v92 = v31;
    v68 = *(v4 + 40);
    v71 = *(v4 + 56);
    v32 = swift_allocObject();
    v33 = v73;
    v72 = v22;
    v34 = v76;
    *(v32 + 16) = v73;
    *(v32 + 24) = v34;
    v35 = v34;
    v36 = *(v4 + 16);
    *(v32 + 32) = *v4;
    *(v32 + 48) = v36;
    v37 = *(v4 + 48);
    *(v32 + 64) = *(v4 + 32);
    *(v32 + 80) = v37;
    sub_23D85265C(&v92, &v89);

    v62 = v35;
    v38 = v63;
    sub_23D833000(v66, v65, v64 & 1, v63, 4, sub_23D857098, v32, v6, v33, v85, v62);

    (*(v30 + 8))(v38, v77);
    v89 = *(v4 + 8);
    LOBYTE(v90) = *(v4 + 24);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED798, &unk_23D8E11A0);
    MEMORY[0x23EEF05A0](&v93, v39);
    v40 = swift_allocObject();
    v41 = v76;
    *(v40 + 16) = v33;
    *(v40 + 24) = v41;
    v42 = v85;
    v43 = *(v4 + 16);
    *(v40 + 32) = *v4;
    *(v40 + 48) = v43;
    v44 = *(v4 + 48);
    *(v40 + 64) = *(v4 + 32);
    *(v40 + 80) = v44;
    sub_23D85265C(&v92, &v89);

    v45 = v72;
    v46 = v82;
    v47 = v83;
    v48 = MEMORY[0x277D839B0];
    v49 = MEMORY[0x277D839C8];
    v50 = v78;
    sub_23D8DE060();
    v51 = v46;

    (*(v75 + 8))(v50, v47);
    *&v89 = v47;
    *(&v89 + 1) = v48;
    v90 = v46;
    v91 = v49;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = v74;
    sub_23D8361EC();
    v54 = *(v69 + 8);
    v54(v45, v19);
    sub_23D8361EC();
    sub_23D889578(v45, v19, v6, v52, v42);
    v54(v45, v19);
    v54(v53, v19);
  }

  else
  {
    v55 = v10;
    v42 = v85;
    sub_23D8361EC();
    v56 = v71;
    sub_23D8361EC();
    v51 = v82;
    v47 = v83;
    *&v89 = v83;
    *(&v89 + 1) = MEMORY[0x277D839B0];
    v90 = v82;
    v91 = MEMORY[0x277D839C8];
    v57 = swift_getOpaqueTypeConformance2();
    sub_23D889670(v56, v19, v6, v57, v42);
    v58 = *(v72 + 1);
    v58(v56, v6);
    v58(v55, v6);
  }

  *&v89 = v47;
  *(&v89 + 1) = MEMORY[0x277D839B0];
  v90 = v51;
  v91 = MEMORY[0x277D839C8];
  v87 = swift_getOpaqueTypeConformance2();
  v88 = v42;
  v59 = v81;
  swift_getWitnessTable();
  v60 = v86;
  sub_23D8361EC();
  return (*(v80 + 8))(v60, v59);
}

uint64_t sub_23D8511CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v12 - v8;
  (*(v7 + 32))();
  sub_23D8361EC();
  v10 = *(v3 + 8);
  v10(v6, a2);
  sub_23D8361EC();
  return (v10)(v9, a2);
}

void sub_23D85133C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  qword_27E2F3C68 = v2;
}

uint64_t sub_23D8513E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D83C67C(a1, &v5 - v3, &qword_27E2EE9E0, &qword_23D8E26D0);
  return sub_23D8DD290();
}

uint64_t sub_23D851510(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C8, &qword_23D8E2050);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[7];
LABEL_19:
    v18 = *(v11 + 48);

    return v18(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D0, &unk_23D8E0E90);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[12];
    goto LABEL_19;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[14];
    goto LABEL_19;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D8, &unk_23D8E0EA0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v10 = v15;
    v11 = *(v15 - 8);
    v12 = a3[16];
    goto LABEL_19;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v10 = v16;
    v11 = *(v16 - 8);
    v12 = a3[17];
    goto LABEL_19;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E0, &qword_23D8E0EB0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v10 = v17;
    v11 = *(v17 - 8);
    v12 = a3[20];
    goto LABEL_19;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E8, &qword_23D8E0EB8);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[23];

  return v20(v21, a2, v19);
}

char *sub_23D851810(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C8, &qword_23D8E2050);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_15:
    v17 = *(v10 + 56);

    return v17(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D0, &unk_23D8E0E90);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_15;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[14];
    goto LABEL_15;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D8, &unk_23D8E0EA0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[16];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[17];
    goto LABEL_15;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E0, &qword_23D8E0EB0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[20];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E8, &qword_23D8E0EB8);
  v19 = *(*(v18 - 8) + 56);
  v20 = &v5[a4[23]];

  return v19(v20, a2, a2, v18);
}

void sub_23D851AF0(uint64_t a1)
{
  sub_23D83675C(319);
  if (v1 <= 0x3F)
  {
    sub_23D8366C8(319);
    if (v2 <= 0x3F)
    {
      sub_23D851E88(319);
      if (v3 <= 0x3F)
      {
        sub_23D851F68(319, &qword_27E2ED608, &qword_27E2EE9E0, &qword_23D8E26D0, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_23D851F68(319, &qword_27E2ED268, &qword_27E2ED270, &qword_23D8E0900, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23D851F1C(319, &qword_27E2ED018, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              sub_23D851FCC(319, &qword_27E2ED610, MEMORY[0x277CDF6E0], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_23D851FCC(319, &qword_27E2ED618, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_23D851FCC(319, &qword_27E2ED620, MEMORY[0x277CDD968], MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
                  {
                    sub_23D851F68(319, &qword_27E2ED258, &qword_27E2ED260, &qword_23D8E08F8, MEMORY[0x277CE10B8]);
                    if (v10 <= 0x3F)
                    {
                      sub_23D851F1C(319, &qword_27E2ED028, MEMORY[0x277D85048]);
                      if (v11 <= 0x3F)
                      {
                        sub_23D851F68(319, &qword_27E2ED628, &qword_27E2ED5A8, &unk_23D8E0D70, MEMORY[0x277CE10B8]);
                        if (v12 <= 0x3F)
                        {
                          sub_23D851F68(319, &qword_27E2ED630, &qword_27E2ED5C0, &qword_23D8E0DF0, MEMORY[0x277CE10B8]);
                          if (v13 <= 0x3F)
                          {
                            sub_23D851FCC(319, &qword_27E2ED638, MEMORY[0x277CDDE90], MEMORY[0x277CE10B8]);
                            if (v14 <= 0x3F)
                            {
                              sub_23D852030(319);
                              if (v15 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_23D851E88(uint64_t a1)
{
  if (!qword_27E2ED600)
  {
    sub_23D8DC900();
    sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);
    v1 = sub_23D8DCD50();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2ED600);
    }
  }
}

void sub_23D851F1C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23D8DE350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23D851F68(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_23D851FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23D852030(uint64_t a1)
{
  if (!qword_27E2ED640)
  {
    type metadata accessor for AXRScrollCoordinator();
    sub_23D856D84(&qword_27E2ED648, type metadata accessor for AXRScrollCoordinator, &unk_23D8E2A38);
    v1 = sub_23D8DCD50();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2ED640);
    }
  }
}

unint64_t sub_23D8520C8()
{
  result = qword_27E2ED650;
  if (!qword_27E2ED650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED658, &qword_23D8E0ED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED660, &qword_23D8E0EE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED668, &unk_23D8E0EE8);
    sub_23D835AD0(&qword_27E2ED670, &qword_27E2ED668, &unk_23D8E0EE8, MEMORY[0x277CDDA18]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(qword_27E2ED678, &qword_27E2ED570, &qword_23D8E0D00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED650);
  }

  return result;
}

uint64_t sub_23D852234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AXRStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXRStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23D852400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23D85243C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23D852484(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23D852578()
{
  result = qword_27E2ED790;
  if (!qword_27E2ED790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED790);
  }

  return result;
}

unint64_t sub_23D8526B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_23D8DED10();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_23D852754(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    return (*(v2 + 80))(a1);
  }

  return a1;
}

unint64_t sub_23D852790()
{
  result = qword_27E2ED7B8;
  if (!qword_27E2ED7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED7B0, &qword_23D8E11B8);
    sub_23D852848();
    sub_23D835AD0(&qword_27E2ED8E0, &qword_27E2ED8E8, &qword_23D8E1268, &unk_23D8E1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED7B8);
  }

  return result;
}

unint64_t sub_23D852848()
{
  result = qword_27E2ED7C0;
  if (!qword_27E2ED7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED7C8, &qword_23D8E11C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED7D0, &qword_23D8E11C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED7D8, &qword_23D8E11D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED7E0, &qword_23D8E11D8);
    sub_23D852988();
    swift_getOpaqueTypeConformance2();
    sub_23D853084();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED7C0);
  }

  return result;
}

unint64_t sub_23D852988()
{
  result = qword_27E2ED7E8;
  if (!qword_27E2ED7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED7E0, &qword_23D8E11D8);
    sub_23D852A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED7E8);
  }

  return result;
}

unint64_t sub_23D852A14()
{
  result = qword_27E2ED7F0;
  if (!qword_27E2ED7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED7F8, &qword_23D8E11E0);
    sub_23D852ACC();
    sub_23D835AD0(&qword_27E2ED8C0, &qword_27E2ED8C8, &qword_23D8E1260, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED7F0);
  }

  return result;
}

unint64_t sub_23D852ACC()
{
  result = qword_27E2ED800;
  if (!qword_27E2ED800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED808, &qword_23D8E11E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED810, &qword_23D8E11F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED818, &qword_23D8E11F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED820, &qword_23D8E1200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED828, &qword_23D8E1208);
    sub_23D852CA0();
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2ED8A8, &qword_27E2ED820, &qword_23D8E1200, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED800);
  }

  return result;
}

unint64_t sub_23D852CA0()
{
  result = qword_27E2ED830;
  if (!qword_27E2ED830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED828, &qword_23D8E1208);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED838, &unk_23D8E1210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED0B8, &qword_23D8E01E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED840, &qword_23D8E1220);
    sub_23D8DC250();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED848, &qword_23D8E1228);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED850, &qword_23D8E1230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED858, &qword_23D8E1238);
    sub_23D852F1C();
    sub_23D852FD4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D856D84(&qword_27E2ED890, MEMORY[0x277CE7208], MEMORY[0x277CE7210]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2ED0D0, &qword_27E2ED0B8, &qword_23D8E01E8, MEMORY[0x277CDFB18]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2ED898, &qword_27E2ED8A0, &unk_23D8E1250, &unk_23D8E3590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED830);
  }

  return result;
}

unint64_t sub_23D852F1C()
{
  result = qword_27E2ED860;
  if (!qword_27E2ED860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED850, &qword_23D8E1230);
    sub_23D835AD0(&qword_27E2ED868, &qword_27E2ED870, &unk_23D8E1240, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED860);
  }

  return result;
}

unint64_t sub_23D852FD4()
{
  result = qword_27E2ED878;
  if (!qword_27E2ED878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED858, &qword_23D8E1238);
    sub_23D835AD0(&qword_27E2ED880, &qword_27E2ED888, &qword_23D8E3CB0, MEMORY[0x277D83D20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED878);
  }

  return result;
}

unint64_t sub_23D853084()
{
  result = qword_27E2ED8D0;
  if (!qword_27E2ED8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED7D8, &qword_23D8E11D0);
    sub_23D856D84(&qword_27E2ED8D8, MEMORY[0x277CE71C8], MEMORY[0x277CE71D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED8D0);
  }

  return result;
}

uint64_t sub_23D853140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRFullScreenView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23D8531FC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXRFullScreenView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_23D847474(a1, a2, v6);
}

unint64_t sub_23D853304()
{
  result = qword_27E2ED980;
  if (!qword_27E2ED980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED940, &qword_23D8E12F8);
    sub_23D853390();
    sub_23D853CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED980);
  }

  return result;
}

unint64_t sub_23D853390()
{
  result = qword_27E2ED988;
  if (!qword_27E2ED988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED990, &qword_23D8E1328);
    sub_23D85341C();
    sub_23D85388C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED988);
  }

  return result;
}

unint64_t sub_23D85341C()
{
  result = qword_27E2ED998;
  if (!qword_27E2ED998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED9A0, &qword_23D8E1330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED9A8, &qword_23D8E1338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED9B0, &qword_23D8E1340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED9B8, &qword_23D8E1348);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED9C0, &unk_23D8E1350);
    sub_23D8536BC();
    type metadata accessor for AXRColorSelectionToolbar(255);
    sub_23D856D84(&qword_27E2ED9D8, type metadata accessor for AXRColorSelectionToolbar, &unk_23D8E433C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED9E0, &qword_23D8E1360);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED9E8, &qword_23D8E1368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED9F0, &qword_23D8E1370);
    sub_23D8537A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED998);
  }

  return result;
}

unint64_t sub_23D8536BC()
{
  result = qword_27E2ED9C8;
  if (!qword_27E2ED9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED9B8, &qword_23D8E1348);
    sub_23D856D84(&qword_27E2ED9D0, type metadata accessor for AXRTextColorSelectionView, &unk_23D8E33AC);
    sub_23D835AD0(&qword_27E2ED350, &qword_27E2ED358, &qword_23D8E0A90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED9C8);
  }

  return result;
}

unint64_t sub_23D8537A4()
{
  result = qword_27E2ED9F8;
  if (!qword_27E2ED9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED9F0, &qword_23D8E1370);
    sub_23D856D84(&qword_27E2EDA00, type metadata accessor for AXRBackgroundColorSelectionView, &unk_23D8E2420);
    sub_23D835AD0(&qword_27E2ED350, &qword_27E2ED358, &qword_23D8E0A90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED9F8);
  }

  return result;
}

unint64_t sub_23D85388C()
{
  result = qword_27E2EDA08;
  if (!qword_27E2EDA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA10, &qword_23D8E1378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA18, &qword_23D8E1380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA20, &qword_23D8E1388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA28, &qword_23D8E1390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED9C0, &unk_23D8E1350);
    sub_23D853B2C();
    type metadata accessor for AXRColorSelectionToolbar(255);
    sub_23D856D84(&qword_27E2ED9D8, type metadata accessor for AXRColorSelectionToolbar, &unk_23D8E433C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA40, &qword_23D8E1398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA48, &qword_23D8E13A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA50, &qword_23D8E13A8);
    sub_23D853C14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDA08);
  }

  return result;
}

unint64_t sub_23D853B2C()
{
  result = qword_27E2EDA30;
  if (!qword_27E2EDA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA28, &qword_23D8E1390);
    sub_23D856D84(&qword_27E2EDA38, type metadata accessor for AXRHighlightColorSelectionView, &unk_23D8E3E34);
    sub_23D835AD0(&qword_27E2ED350, &qword_27E2ED358, &qword_23D8E0A90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDA30);
  }

  return result;
}

unint64_t sub_23D853C14()
{
  result = qword_27E2EDA58;
  if (!qword_27E2EDA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA50, &qword_23D8E13A8);
    sub_23D856D84(&qword_27E2EDA60, type metadata accessor for AXRHyperlinkColorSelectionView, &unk_23D8E4444);
    sub_23D835AD0(&qword_27E2ED350, &qword_27E2ED358, &qword_23D8E0A90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDA58);
  }

  return result;
}

unint64_t sub_23D853CFC()
{
  result = qword_27E2EDA68;
  if (!qword_27E2EDA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA70, &qword_23D8E13B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA78, &qword_23D8E13B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA80, &qword_23D8E13C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA50, &qword_23D8E13A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED950, &qword_23D8E1308);
    sub_23D853C14();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED968, &qword_23D8E1318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED970, &qword_23D8E1320);
    sub_23D835AD0(&qword_27E2ED978, &qword_27E2ED970, &qword_23D8E1320, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D853F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDA68);
  }

  return result;
}

unint64_t sub_23D853F2C()
{
  result = qword_27E2EDA88;
  if (!qword_27E2EDA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA90, &qword_23D8E13C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDA98, &qword_23D8E13D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDAA0, &qword_23D8E13D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDAA8, &qword_23D8E13E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDAB0, &qword_23D8E13E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDAB8, &qword_23D8E13F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDAC0, &qword_23D8E13F8);
    sub_23D8541A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDAF8, &qword_23D8E1410);
    sub_23D835AD0(&qword_27E2EDB00, &qword_27E2EDAF8, &qword_23D8E1410, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDA88);
  }

  return result;
}

unint64_t sub_23D8541A4()
{
  result = qword_27E2EDAC8;
  if (!qword_27E2EDAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDAC0, &qword_23D8E13F8);
    sub_23D85425C();
    sub_23D835AD0(&qword_27E2ED350, &qword_27E2ED358, &qword_23D8E0A90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDAC8);
  }

  return result;
}

unint64_t sub_23D85425C()
{
  result = qword_27E2EDAD0;
  if (!qword_27E2EDAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDAD8, &qword_23D8E1400);
    sub_23D856D84(&qword_27E2EDAE0, type metadata accessor for AXRTextFormatterSheet, &unk_23D8E52F8);
    sub_23D835AD0(&qword_27E2EDAE8, &qword_27E2EDAF0, &qword_23D8E1408, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDAD0);
  }

  return result;
}

uint64_t sub_23D854344(uint64_t a1)
{
  v2 = sub_23D8DD4D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB18, &qword_23D8E1420);
    v9 = sub_23D8DEC30();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_23D856D84(&qword_27E2EDB20, MEMORY[0x277CDDE90], MEMORY[0x277CDDE98]);
      v16 = sub_23D8DE7E0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_23D856D84(&qword_27E2EDB28, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
          v23 = sub_23D8DE820();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23D854694@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AXRFullScreenView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D84A4A8(a1, v6, a2);
}

uint64_t sub_23D8547F4(uint64_t a1)
{
  v2 = type metadata accessor for AXRColorSelectionToolbar(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D854968()
{
  v1 = type metadata accessor for AXRFullScreenView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_23D8531A4(*(v5 + 32), *(v5 + 40));
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DD850();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  if (*(v5 + v1[8]) >= 2uLL)
  {
  }

  v9 = v1[12];
  v10 = sub_23D8DCE10();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DCCB0();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  v14 = v5 + v1[16];
  v15 = sub_23D8DCEE0();
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D8, &unk_23D8E0EA0);

  v16 = v5 + v1[17];
  v17 = sub_23D8DC140();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);

  v19 = v5 + v1[20];
  v20 = sub_23D8DD060();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v19, 1, v20))
  {
    (*(v21 + 8))(v19, v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E0, &qword_23D8E0EB0);

  v22 = v5 + v1[23];
  v23 = sub_23D8DD4D0();
  (*(*(v23 - 8) + 8))(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E8, &qword_23D8E0EB8);

  sub_23D8531A4(*(v5 + v1[25]), *(v5 + v1[25] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D854EA0(uint64_t a1)
{
  v4 = *(type metadata accessor for AXRFullScreenView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D835CB4;

  return sub_23D846F34(a1, v6, v7, v1 + v5);
}

unint64_t sub_23D854F98()
{
  result = qword_27E2EDC70;
  if (!qword_27E2EDC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDC20, &qword_23D8E1598);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDC18, &qword_23D8E1590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDC10, &qword_23D8E1588);
    sub_23D835AD0(&qword_27E2EDC68, &qword_27E2EDC10, &qword_23D8E1588, MEMORY[0x277CDDB60]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDC70);
  }

  return result;
}

unint64_t sub_23D8550F4()
{
  result = qword_27E2EDC88;
  if (!qword_27E2EDC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDC80, &qword_23D8E15D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDC90, &qword_23D8E15D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDC98, &qword_23D8E15E0);
    sub_23D855248();
    sub_23D835AD0(&qword_27E2EDCF8, &qword_27E2EDC98, &qword_23D8E15E0, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EDD00, &qword_27E2EDD08, &qword_23D8E1610, &unk_23D8E1020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDC88);
  }

  return result;
}

unint64_t sub_23D855248()
{
  result = qword_27E2EDCA0;
  if (!qword_27E2EDCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDC90, &qword_23D8E15D8);
    sub_23D855304();
    sub_23D856D84(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDCA0);
  }

  return result;
}

unint64_t sub_23D855304()
{
  result = qword_27E2EDCA8;
  if (!qword_27E2EDCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDCB0, &qword_23D8E15E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDCB8, &qword_23D8E15F0);
    sub_23D8DD770();
    sub_23D855448();
    sub_23D856D84(&qword_27E2ED300, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EDCE8, &qword_27E2EDCF0, &qword_23D8E1608, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDCA8);
  }

  return result;
}

unint64_t sub_23D855448()
{
  result = qword_27E2EDCC0;
  if (!qword_27E2EDCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDCB8, &qword_23D8E15F0);
    sub_23D855500();
    sub_23D835AD0(qword_27E2ED678, &qword_27E2ED570, &qword_23D8E0D00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDCC0);
  }

  return result;
}

unint64_t sub_23D855500()
{
  result = qword_27E2EDCC8;
  if (!qword_27E2EDCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDCD0, &qword_23D8E15F8);
    sub_23D835AD0(&qword_27E2EDCD8, &qword_27E2EDCE0, &qword_23D8E1600, MEMORY[0x277CDE5B0]);
    sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDCC8);
  }

  return result;
}

unint64_t sub_23D8555E4()
{
  result = qword_27E2EDD18;
  if (!qword_27E2EDD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDD10, &qword_23D8E1618);
    sub_23D856D84(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDD18);
  }

  return result;
}

double sub_23D8556A0(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return sub_23D8556B0(result, a2);
  }

  return v2;
}

double sub_23D8556B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_23D8556C8()
{
  result = qword_27E2EDD28;
  if (!qword_27E2EDD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDD20, &qword_23D8E1620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDD30, &qword_23D8E1628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDD38, &qword_23D8E1630);
    sub_23D8557F0();
    sub_23D835AD0(&qword_27E2EDD60, &qword_27E2EDD38, &qword_23D8E1630, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDD28);
  }

  return result;
}

unint64_t sub_23D8557F0()
{
  result = qword_27E2EDD40;
  if (!qword_27E2EDD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDD30, &qword_23D8E1628);
    sub_23D8558A8();
    sub_23D835AD0(&qword_27E2ED350, &qword_27E2ED358, &qword_23D8E0A90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDD40);
  }

  return result;
}

unint64_t sub_23D8558A8()
{
  result = qword_27E2EDD48;
  if (!qword_27E2EDD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDD50, &qword_23D8E1638);
    sub_23D855960();
    sub_23D835AD0(&qword_27E2EDAE8, &qword_27E2EDAF0, &qword_23D8E1408, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDD48);
  }

  return result;
}

unint64_t sub_23D855960()
{
  result = qword_27E2EDD58;
  if (!qword_27E2EDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDD58);
  }

  return result;
}

uint64_t sub_23D8559B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_23D855A1C()
{
  result = qword_27E2EDD90;
  if (!qword_27E2EDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDD90);
  }

  return result;
}

uint64_t sub_23D855A8C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AXRFullScreenView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23D855B84(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AXRFullScreenView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_23D855C08()
{
  result = qword_27E2EDE18;
  if (!qword_27E2EDE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDE10, &qword_23D8E16C8);
    sub_23D855C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDE18);
  }

  return result;
}

unint64_t sub_23D855C94()
{
  result = qword_27E2EDE20;
  if (!qword_27E2EDE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDE28, &unk_23D8E16D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDE20);
  }

  return result;
}

void sub_23D855D18(double a1)
{
  v3 = *(type metadata accessor for AXRFullScreenView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_23D84397C(v4, a1);
}

uint64_t sub_23D855D88(char a1)
{
  v3 = *(type metadata accessor for AXRFullScreenView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D843A00(a1, v4);
}

uint64_t sub_23D855DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D855F20()
{
  v1 = *(type metadata accessor for AXRFullScreenView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_23D840488(v2);
}

uint64_t sub_23D855F80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D8DD2C0();
  *a1 = result;
  return result;
}

void sub_23D855FDC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXRFullScreenView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_23D840520(a1, a2, v6);
}

uint64_t sub_23D856074(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AXRFullScreenView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_23D856108(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXRFullScreenView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D840EF4(a1, a2, v6);
}

uint64_t objectdestroy_47Tm()
{
  v1 = type metadata accessor for AXRFullScreenView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_23D8531A4(*(v5 + 32), *(v5 + 40));
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DD850();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  if (*(v5 + v1[8]) >= 2uLL)
  {
  }

  v9 = v1[12];
  v10 = sub_23D8DCE10();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DCCB0();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  v14 = v5 + v1[16];
  v15 = sub_23D8DCEE0();
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D8, &unk_23D8E0EA0);

  v16 = v5 + v1[17];
  v17 = sub_23D8DC140();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);

  v19 = v5 + v1[20];
  v20 = sub_23D8DD060();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v19, 1, v20))
  {
    (*(v21 + 8))(v19, v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E0, &qword_23D8E0EB0);

  v22 = v5 + v1[23];
  v23 = sub_23D8DD4D0();
  (*(*(v23 - 8) + 8))(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E8, &qword_23D8E0EB8);

  sub_23D8531A4(*(v5 + v1[25]), *(v5 + v1[25] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8566D0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AXRFullScreenView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_23D856774(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_23D8567BC()
{
  v1 = type metadata accessor for AXRFullScreenView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_23D8531A4(*(v5 + 32), *(v5 + 40));
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DD850();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  if (*(v5 + v1[8]) >= 2uLL)
  {
  }

  v9 = v1[12];
  v10 = sub_23D8DCE10();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DCCB0();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  v14 = v5 + v1[16];
  v15 = sub_23D8DCEE0();
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D8, &unk_23D8E0EA0);

  v16 = v5 + v1[17];
  v17 = sub_23D8DC140();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);

  v19 = v5 + v1[20];
  v20 = sub_23D8DD060();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v19, 1, v20))
  {
    (*(v21 + 8))(v19, v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E0, &qword_23D8E0EB0);

  v22 = v5 + v1[23];
  v23 = sub_23D8DD4D0();
  (*(*(v23 - 8) + 8))(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E8, &qword_23D8E0EB8);

  sub_23D8531A4(*(v5 + v1[25]), *(v5 + v1[25] + 8));

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_23D856CF8()
{
  v1 = *(type metadata accessor for AXRFullScreenView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_23D8412A0((v0 + v2), v3);
}

uint64_t sub_23D856D84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D856DE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AccessibilitySheetThemePresentation(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_23D8DD7F0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD6C0();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_23D856F04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AccessibilityPopoverThemePresentation(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_23D8DD7F0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD6C0();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for SSJindoRootView(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SSJindoRootView(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t Binding.wrappedToOptional()(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_23D8DE4A0();
}

uint64_t sub_23D857308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23D857444(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AXRCustomizationColorButton(uint64_t a1)
{
  result = qword_27E2EDE78;
  if (!qword_27E2EDE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D8575B4(uint64_t a1)
{
  sub_23D857704(319, &qword_27E2ED618, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_23D857704(319, &qword_27E2ED228, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_23D857758(319, &qword_27E2EDE88, MEMORY[0x277CE0F78], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_23D857758(319, &qword_27E2ED018, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23D857704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23D8DCD20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23D857758(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23D8577C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23D83C67C(v2, &v14 - v9, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCCB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_23D8579C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AXRCustomizationColorButton(0);
  sub_23D83C67C(v1 + *(v10 + 20), v9, &qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCF90();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D857BCC@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v59 = sub_23D8DD530();
  v52 = *(v59 - 8);
  v2 = MEMORY[0x28223BE20](v59);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v57 = &v49 - v4;
  v5 = type metadata accessor for AXRCustomizationColorButton(0);
  v6 = (v5 - 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE90, &qword_23D8E1850);
  MEMORY[0x28223BE20](v51);
  v56 = &v49 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE98, &qword_23D8E1858);
  MEMORY[0x28223BE20](v53);
  v58 = &v49 - v10;
  sub_23D859088(v1, &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_23D8592B8(&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v60 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDEA0, &unk_23D8E1870);
  sub_23D835AD0(&qword_27E2EDEA8, &qword_27E2EDEA0, &unk_23D8E1870, MEMORY[0x277CE1138]);
  sub_23D8DE360();
  v13 = v1 + v6[13];
  v14 = *v13;
  v15 = *(v13 + 8);
  LOBYTE(v71[0]) = v14;
  *(&v71[0] + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE340();
  v16 = *v74;
  v17 = *(v1 + v6[10]);
  v49 = *(v1 + v6[11]);
  v50 = v74[16];
  v18 = v1 + v6[12];
  *v74 = *v18;
  *&v74[8] = *(v18 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDEB0, &qword_23D8E1880);
  sub_23D8DE470();
  sub_23D8DE4A0();
  v19 = (v1 + v6[8]);
  v21 = *v19;
  v20 = v19[1];
  v67 = v16;
  v68[0] = v50;
  *&v68[8] = *v74;
  *&v68[24] = *&v74[16];
  LOBYTE(v69) = v17;
  BYTE1(v69) = v49;
  BYTE2(v69) = 1;
  *(&v69 + 1) = v21;
  v70 = v20;
  v22 = sub_23D8DE5F0();
  v24 = v23;
  v64 = *&v68[16];
  v65 = v69;
  v66 = v70;
  v62 = v67;
  v63 = *v68;
  sub_23D859384(&v67, v74);

  v25 = v64;
  v26 = v65;
  v27 = v64;
  v28 = v65;
  v71[2] = v64;
  v71[3] = v65;
  v29 = v63;
  v30 = v62;
  v31 = v63;
  v71[0] = v62;
  v71[1] = v63;
  v32 = v66;
  *&v72 = v66;
  *(&v72 + 1) = v22;
  v73 = v24;
  v33 = &v56[*(v51 + 36)];
  *v33 = v62;
  *(v33 + 1) = v29;
  v34 = v72;
  *(v33 + 3) = v26;
  *(v33 + 4) = v34;
  *(v33 + 2) = v25;
  *(v33 + 10) = v24;
  v75 = v27;
  v76 = v28;
  *v74 = v30;
  *&v74[16] = v31;
  v77 = v32;
  v78 = v22;
  v79 = v24;
  sub_23D83C67C(v71, v61, &qword_27E2EDEB8, &qword_23D8E1888);
  sub_23D83C6E4(v74, &qword_27E2EDEB8, &qword_23D8E1888);
  v35 = *(v1 + v6[9]);
  v36 = MEMORY[0x277D84F90];
  if (v35 == 1)
  {
    v61[0] = MEMORY[0x277D84F90];
    sub_23D859744(&qword_27E2EDEC8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDED0, &qword_23D8E1898);
    sub_23D835AD0(&qword_27E2EDED8, &qword_27E2EDED0, &qword_23D8E1898, MEMORY[0x277D83970]);
    v37 = v59;
    sub_23D8DEBF0();
    v38 = v52;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDEC0, &qword_23D8E1890);
    v39 = v52;
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_23D8E0890;
    sub_23D8DD500();
    v61[0] = v40;
    sub_23D859744(&qword_27E2EDEC8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDED0, &qword_23D8E1898);
    sub_23D835AD0(&qword_27E2EDED8, &qword_27E2EDED0, &qword_23D8E1898, MEMORY[0x277D83970]);
    v37 = v59;
    sub_23D8DEBF0();
    v38 = v39;
  }

  sub_23D8593E0();
  v41 = v57;
  v42 = v56;
  sub_23D8DDED0();
  v43 = *(v38 + 8);
  v43(v41, v37);
  sub_23D83C6E4(v42, &qword_27E2EDE90, &qword_23D8E1850);
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDEC0, &qword_23D8E1890);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_23D8E0890;
    sub_23D8DD500();
    v61[0] = v44;
  }

  else
  {
    v61[0] = v36;
  }

  sub_23D859744(&qword_27E2EDEC8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDED0, &qword_23D8E1898);
  sub_23D835AD0(&qword_27E2EDED8, &qword_27E2EDED0, &qword_23D8E1898, MEMORY[0x277D83970]);
  v45 = v54;
  v46 = v59;
  sub_23D8DEBF0();
  v47 = v58;
  sub_23D8DD010();
  v43(v45, v46);
  return sub_23D83C6E4(v47, &qword_27E2EDE98, &qword_23D8E1858);
}

uint64_t sub_23D8583D8(uint64_t a1)
{
  type metadata accessor for AXRCustomizationColorButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  return sub_23D8DE330();
}

double sub_23D85844C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DD420();
  v23 = 1;
  sub_23D858650(a1, &v13);
  v30 = v19;
  v31 = v20;
  v32[0] = v21[0];
  *(v32 + 9) = *(v21 + 9);
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v24 = v13;
  v25 = v14;
  v33[6] = v19;
  v33[7] = v20;
  v34[0] = v21[0];
  *(v34 + 9) = *(v21 + 9);
  v33[2] = v15;
  v33[3] = v16;
  v33[4] = v17;
  v33[5] = v18;
  v33[0] = v13;
  v33[1] = v14;
  sub_23D83C67C(&v24, &v12, &qword_27E2EDEF8, &qword_23D8E18A8);
  sub_23D83C6E4(v33, &qword_27E2EDEF8, &qword_23D8E18A8);
  *(&v22[3] + 7) = v27;
  *(&v22[2] + 7) = v26;
  *(&v22[6] + 7) = v30;
  *(&v22[7] + 7) = v31;
  *(&v22[8] + 7) = v32[0];
  v22[9] = *(v32 + 9);
  *(&v22[4] + 7) = v28;
  *(&v22[5] + 7) = v29;
  *(v22 + 7) = v24;
  *(&v22[1] + 7) = v25;
  v5 = v22[7];
  *(a2 + 113) = v22[6];
  *(a2 + 129) = v5;
  v6 = v22[9];
  *(a2 + 145) = v22[8];
  *(a2 + 161) = v6;
  v7 = v22[3];
  *(a2 + 49) = v22[2];
  *(a2 + 65) = v7;
  v8 = v22[5];
  *(a2 + 81) = v22[4];
  *(a2 + 97) = v8;
  result = *v22;
  v10 = v22[1];
  *(a2 + 17) = v22[0];
  v11 = v23;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 33) = v10;
  return result;
}

void sub_23D858650(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v81 = a2;
  v3 = sub_23D8DCCB0();
  v79 = *(v3 - 8);
  v80 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v78 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v77 = &v74 - v6;
  v7 = sub_23D8DCF90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23D8DE2D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AXRCustomizationColorButton(0);
  v16 = *(a1 + *(v15 + 28));
  v76 = v15;
  if (v16 == 1)
  {
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v17 = qword_27E2F3C80;
    v18 = sub_23D8DE830();
    v19 = [objc_opt_self() imageNamed:v18 inBundle:v17];

    if (!v19)
    {
      __break(1u);
      return;
    }

    sub_23D8DE2B0();
    (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v11);
    v75 = sub_23D8DE300();

    (*(v12 + 8))(v14, v11);
    sub_23D8579C4(v10);
    v20 = sub_23D8DCF80();
    v21 = *(v8 + 8);
    v21(v10, v7);
    if (v20)
    {
      v22 = [objc_opt_self() mainScreen];
      [v22 bounds];
    }

    sub_23D8579C4(v10);
    v35 = sub_23D8DCF80();
    v21(v10, v7);
    if (v35)
    {
      v36 = [objc_opt_self() mainScreen];
      [v36 bounds];
    }

    sub_23D8DE5F0();
    sub_23D8DCDB0();
    v37 = v98;
    v38 = BYTE8(v98);
    v39 = v99;
    v40 = BYTE8(v99);
    v41 = v100;
    v42 = sub_23D8DDA30();
    sub_23D8DCC20();
    LOBYTE(v95[0]) = v38;
    LOBYTE(v90[0]) = v40;
    LOBYTE(v84) = 0;
    v83 = 0;
    *&v92[0] = v75;
    *(&v92[0] + 1) = v37;
    LOBYTE(v92[1]) = v38;
    *(&v92[1] + 1) = v39;
    LOBYTE(v92[2]) = v40;
    *(&v92[2] + 8) = v41;
    BYTE8(v92[3]) = v42;
    *&v93 = v43;
    *(&v93 + 1) = v44;
    *&v94[0] = v45;
    *(&v94[0] + 1) = v46;
    LOBYTE(v94[1]) = 0;
    BYTE9(v94[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDF00, &qword_23D8E18B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDF08, &qword_23D8E18B8);
    sub_23D859548(&qword_27E2EDF10, &qword_27E2EDF00, &qword_23D8E18B0, sub_23D8594C4);
    sub_23D859548(&qword_27E2EDF28, &qword_27E2EDF08, &qword_23D8E18B8, sub_23D8595CC);
    sub_23D8DD6B0();
  }

  else
  {
    v23 = a1 + *(v15 + 40);
    *&v92[0] = *v23;
    *(v92 + 8) = *(v23 + 8);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDEB0, &qword_23D8E1880);
    MEMORY[0x23EEF05A0](&v101, v24);
    v74 = v101;
    v75 = a1;
    sub_23D8579C4(v10);
    v25 = sub_23D8DCF80();
    v26 = *(v8 + 8);
    v26(v10, v7);
    if (v25)
    {
      v27 = [objc_opt_self() mainScreen];
      [v27 bounds];
    }

    sub_23D8579C4(v10);
    v28 = sub_23D8DCF80();
    v26(v10, v7);
    if (v28)
    {
      v29 = [objc_opt_self() &off_278BEC328];
      [v29 &selRef_scrollViewWillBeginDragging_];
    }

    sub_23D8DE5F0();
    sub_23D8DCDB0();
    *&v97[6] = v98;
    *&v97[22] = v99;
    *&v97[38] = v100;
    v30 = sub_23D8DDA30();
    sub_23D8DCC20();
    LOBYTE(v95[0]) = 0;
    LOBYTE(v90[0]) = 1;
    *&v92[0] = v74;
    WORD4(v92[0]) = 256;
    *(v92 + 10) = *v97;
    *(&v92[1] + 10) = *&v97[16];
    *(&v92[2] + 10) = *&v97[32];
    *(&v92[3] + 1) = *&v97[46];
    LOBYTE(v93) = v30;
    *(&v93 + 1) = v31;
    *&v94[0] = v32;
    *(&v94[0] + 1) = v33;
    *&v94[1] = v34;
    WORD4(v94[1]) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDF00, &qword_23D8E18B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDF08, &qword_23D8E18B8);
    sub_23D859548(&qword_27E2EDF10, &qword_27E2EDF00, &qword_23D8E18B0, sub_23D8594C4);
    sub_23D859548(&qword_27E2EDF28, &qword_27E2EDF08, &qword_23D8E18B8, sub_23D8595CC);
    sub_23D8DD6B0();
    a1 = v75;
  }

  v47 = (a1 + *(v76 + 24));
  v48 = v47[1];
  *&v92[0] = *v47;
  *(&v92[0] + 1) = v48;
  sub_23D83CB18();

  v49 = sub_23D8DDCB0();
  v51 = v50;
  v53 = v52;
  v76 = v54;
  v55 = v77;
  sub_23D8577C4(v77);
  v57 = v78;
  v56 = v79;
  v58 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x277CDF3C0], v80);
  LOBYTE(v48) = sub_23D8DCCA0();
  v59 = *(v56 + 8);
  v59(v57, v58);
  v59(v55, v58);
  if (v48)
  {
    v60 = sub_23D8DE240();
  }

  else
  {
    v60 = sub_23D8DE220();
  }

  *&v92[0] = v60;
  v61 = sub_23D8DDC10();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  sub_23D83CB6C(v49, v51, v53 & 1);

  v88 = v105;
  v89[0] = v106[0];
  *(v89 + 10) = *(v106 + 10);
  v84 = v101;
  v85 = v102;
  v90[0] = v101;
  v90[1] = v102;
  *(v91 + 10) = *(v106 + 10);
  v90[4] = v105;
  v91[0] = v106[0];
  v86 = v103;
  v87 = v104;
  v90[2] = v103;
  v90[3] = v104;
  v92[0] = v101;
  v92[1] = v102;
  *(v94 + 10) = *(v106 + 10);
  v93 = v105;
  v94[0] = v106[0];
  v92[2] = v103;
  v92[3] = v104;
  v83 = v65 & 1;
  v82 = 1;
  v68 = v102;
  v69 = v81;
  *v81 = v101;
  v69[1] = v68;
  v70 = v92[2];
  v71 = v92[3];
  v72 = v93;
  v73 = v94[1];
  v69[5] = v94[0];
  v69[6] = v73;
  v69[3] = v71;
  v69[4] = v72;
  v69[2] = v70;
  *(v69 + 14) = v61;
  *(v69 + 15) = v63;
  *(v69 + 128) = v65 & 1;
  *(v69 + 17) = v67;
  *(v69 + 18) = 0;
  *(v69 + 152) = 1;
  sub_23D83C67C(v90, v95, &qword_27E2EDF50, &qword_23D8E18D8);
  sub_23D834028(v61, v63, v65 & 1);

  sub_23D83CB6C(v61, v63, v65 & 1);

  v95[4] = v88;
  *v96 = v89[0];
  *&v96[10] = *(v89 + 10);
  v95[0] = v84;
  v95[1] = v85;
  v95[2] = v86;
  v95[3] = v87;
  sub_23D83C6E4(v95, &qword_27E2EDF50, &qword_23D8E18D8);
}

uint64_t sub_23D859088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRCustomizationColorButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8590EC()
{
  v1 = type metadata accessor for AXRCustomizationColorButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D8DCCB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCF90();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8592B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRCustomizationColorButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D85931C()
{
  v1 = *(type metadata accessor for AXRCustomizationColorButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23D8583D8(v2);
}

unint64_t sub_23D8593E0()
{
  result = qword_27E2EDEE0;
  if (!qword_27E2EDEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDE90, &qword_23D8E1850);
    sub_23D835AD0(&qword_27E2EDEE8, &qword_27E2EDEF0, &qword_23D8E18A0, MEMORY[0x277CDF028]);
    sub_23D835AD0(&qword_27E2EFC90, &qword_27E2EDEB8, &qword_23D8E1888, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDEE0);
  }

  return result;
}

unint64_t sub_23D8594C4()
{
  result = qword_27E2EDF18;
  if (!qword_27E2EDF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDF20, &qword_23D8E18C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDF18);
  }

  return result;
}

uint64_t sub_23D859548(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23D8595CC()
{
  result = qword_27E2EDF30;
  if (!qword_27E2EDF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDF38, &qword_23D8E18C8);
    sub_23D835AD0(&qword_27E2EDF40, &qword_27E2EDF48, &qword_23D8E18D0, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDF30);
  }

  return result;
}

unint64_t sub_23D859688()
{
  result = qword_27E2EDF58;
  if (!qword_27E2EDF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDE98, &qword_23D8E1858);
    sub_23D8593E0();
    sub_23D859744(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDF58);
  }

  return result;
}

uint64_t sub_23D859744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AXRmacOSThemeSelectionMenu.ThemeType.hashValue.getter()
{
  v1 = *v0;
  sub_23D8DED50();
  MEMORY[0x23EEF0EB0](v1);
  return sub_23D8DED80();
}

uint64_t AXRmacOSThemeSelectionMenu.themes.getter()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {

      return sub_23D8DC4F0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED378, &qword_23D8E18F0);
      v2 = sub_23D8DC510();
      v3 = *(v2 - 8);
      v4 = *(v3 + 72);
      v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_23D8E0880;
      v7 = v6 + v5;
      v8 = *(v3 + 104);
      v8(v7, *MEMORY[0x277CE7278], v2);
      v8(v7 + v4, *MEMORY[0x277CE7298], v2);
      v8(v7 + 2 * v4, *MEMORY[0x277CE7288], v2);
      v8(v7 + 3 * v4, *MEMORY[0x277CE7270], v2);
      v8(v7 + 4 * v4, *MEMORY[0x277CE7268], v2);
      v8(v7 + 5 * v4, *MEMORY[0x277CE7280], v2);
      return v6;
    }
  }

  else
  {

    return sub_23D8DC4E0();
  }
}

double AXRmacOSThemeSelectionMenu.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v18[0] = *v1;
  v18[1] = v3;
  v18[2] = v1[2];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = sub_23D8DC4F0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED378, &qword_23D8E18F0);
      v5 = sub_23D8DC510();
      v6 = *(v5 - 8);
      v7 = *(v6 + 72);
      v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_23D8E0880;
      v9 = v4 + v8;
      v10 = *(v6 + 104);
      v10(v9, *MEMORY[0x277CE7278], v5);
      v10(v9 + v7, *MEMORY[0x277CE7298], v5);
      v10(v9 + 2 * v7, *MEMORY[0x277CE7288], v5);
      v10(v9 + 3 * v7, *MEMORY[0x277CE7270], v5);
      v10(v9 + 4 * v7, *MEMORY[0x277CE7268], v5);
      v10(v9 + 5 * v7, *MEMORY[0x277CE7280], v5);
    }
  }

  else
  {
    v4 = sub_23D8DC4E0();
  }

  *a1 = sub_23D8DD560();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDF60, &qword_23D8E18F8);
  v17 = v4;
  v11 = swift_allocObject();
  v12 = v1[1];
  v11[1] = *v1;
  v11[2] = v12;
  v11[3] = v1[2];
  sub_23D85A1D0(v18, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDF68, &qword_23D8E1900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDF70, &qword_23D8E1908);
  sub_23D835AD0(&qword_27E2EDF78, &qword_27E2EDF68, &qword_23D8E1900, MEMORY[0x277D83980]);
  sub_23D85A208();
  sub_23D85A394(&qword_27E2EDFA0, MEMORY[0x277CE72A0], MEMORY[0x277CE72B8]);
  sub_23D8DE4D0();
  v13 = sub_23D8DD9E0();
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDFA8, &qword_23D8E1920) + 36);
  *v14 = v13;
  result = 0.0;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 1;
  return result;
}

uint64_t sub_23D859D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v5 = type metadata accessor for AXRThemeButton(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDF90, &unk_23D8E1910);
  v34 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v32 = &v29 - v12;
  v13 = sub_23D8DC510();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v16, *MEMORY[0x277CE7290], v13);
  sub_23D85A394(&qword_27E2ED368, MEMORY[0x277CE72A0], MEMORY[0x277CE72A8]);
  v17 = a1;
  LOBYTE(a1) = sub_23D8DE820();
  (*(v14 + 8))(v16, v13);
  v18 = 1;
  if (a1)
  {
    return (*(v34 + 56))(a3, v18, 1, v8);
  }

  v30 = a3;
  v31 = v8;
  (*(v14 + 16))(v7 + v5[5], v17, v13);
  v19 = v33;
  v38 = *(v33 + 24);
  v39 = *(v33 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
  sub_23D8DE340();
  v29 = v35;
  v21 = v36;
  v20 = v37;
  sub_23D8DC9F0();
  sub_23D85A394(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  *v7 = sub_23D8DD140();
  v7[1] = v22;
  *(v7 + v5[6]) = 1;
  v23 = v7 + v5[7];
  *v23 = v29;
  *(v23 + 2) = v21;
  *(v23 + 3) = v20;
  v24 = *v19;
  if (*v19)
  {

    v25 = sub_23D8DCB10();
    sub_23D85B1E8(v7, v11, type metadata accessor for AXRThemeButton);
    v8 = v31;
    v26 = v32;
    v27 = &v11[*(v31 + 36)];
    *v27 = v25;
    v27[1] = v24;
    sub_23D83C744(v11, v26, &qword_27E2EDF90, &unk_23D8E1910);
    a3 = v30;
    sub_23D83C744(v26, v30, &qword_27E2EDF90, &unk_23D8E1910);
    v18 = 0;
    return (*(v34 + 56))(a3, v18, 1, v8);
  }

  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D85A180()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_23D85A208()
{
  result = qword_27E2EDF80;
  if (!qword_27E2EDF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDF70, &qword_23D8E1908);
    sub_23D85A28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDF80);
  }

  return result;
}

unint64_t sub_23D85A28C()
{
  result = qword_27E2EDF88;
  if (!qword_27E2EDF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDF90, &unk_23D8E1910);
    sub_23D85A394(&qword_27E2EDF98, type metadata accessor for AXRThemeButton, &unk_23D8E1A90);
    sub_23D835AD0(&qword_27E2ED350, &qword_27E2ED358, &qword_23D8E0A90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDF88);
  }

  return result;
}

uint64_t sub_23D85A394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23D85A3E0()
{
  result = qword_27E2EDFB0;
  if (!qword_27E2EDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDFB0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23D85A468(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D85A4B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23D85A520()
{
  result = qword_27E2EDFB8;
  if (!qword_27E2EDFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDFA8, &qword_23D8E1920);
    sub_23D835AD0(&qword_27E2EDFC0, &qword_27E2EDFC8, &qword_23D8E1A78, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDFB8);
  }

  return result;
}

uint64_t sub_23D85A5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D8DC510();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_23D85A6C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23D8DC510();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23D85A784(uint64_t a1)
{
  sub_23D8366C8(319);
  if (v1 <= 0x3F)
  {
    sub_23D8DC510();
    if (v2 <= 0x3F)
    {
      sub_23D85B558(319, &qword_27E2EDFE0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23D85A868(char *a1)
{
  v2 = sub_23D8DC510();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v6 = type metadata accessor for AXRThemeButton(0);
    (*(v3 + 16))(v5, &a1[*(v6 + 20)], v2);

    sub_23D8DC980();
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D85A394(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    sub_23D8DD120();
    __break(1u);
  }
}

uint64_t sub_23D85A9BC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AXRThemeDisplayView(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AXRThemeButton(0);
  v9 = v8[5];
  v10 = v5[7];
  v11 = sub_23D8DC510();
  (*(*(v11 - 8) + 16))(v7 + v10, &a1[v9], v11);
  LOBYTE(v10) = a1[v8[6]];
  v12 = &a1[v8[7]];
  v13 = *v12;
  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  v35 = v13;
  v36 = v15;
  v37 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE010, &unk_23D8E1AF0);
  sub_23D8DE470();
  v31 = v32;
  v16 = v33;
  v17 = v34;
  sub_23D8DC9F0();
  sub_23D85A394(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  *v7 = sub_23D8DD140();
  v7[1] = v18;
  *(v7 + v5[10]) = 25;
  v19 = v7 + v5[11];
  LOBYTE(v32) = 0;
  sub_23D8DE310();
  v20 = *(&v35 + 1);
  *v19 = v35;
  *(v19 + 1) = v20;
  v21 = v7 + v5[13];
  *&v32 = 0;
  *(&v32 + 1) = 0xE000000000000000;
  sub_23D8DE310();
  v22 = v36;
  *v21 = v35;
  *(v21 + 2) = v22;
  v23 = v7 + v5[14];
  *v23 = sub_23D8DCC50() & 1;
  *(v23 + 1) = v24;
  v23[16] = v25 & 1;
  *(v7 + v5[8]) = v10;
  *(v7 + v5[9]) = 0;
  v26 = v7 + v5[12];
  *v26 = v31;
  *(v26 + 2) = v16;
  *(v26 + 3) = v17;
  v27 = *a1;
  if (*a1)
  {

    v28 = sub_23D8DCB10();
    sub_23D85B1E8(v7, a2, type metadata accessor for AXRThemeDisplayView);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDFF0, &qword_23D8E1AE8);
    v30 = (a2 + *(result + 36));
    *v30 = v28;
    v30[1] = v27;
  }

  else
  {
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D85AC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = sub_23D8DD770();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDFE8, &qword_23D8E1AE0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - v13;
  sub_23D85F758(v2, v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRThemeButton);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_23D85B1E8(v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AXRThemeButton);
  v19 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDFF0, &qword_23D8E1AE8);
  sub_23D85B0E0();
  sub_23D8DE360();
  sub_23D8DD760();
  sub_23D835AD0(&qword_27E2EE008, &qword_27E2EDFE8, &qword_23D8E1AE0, MEMORY[0x277CDF028]);
  sub_23D85A394(&qword_27E2ED300, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  sub_23D8DDD10();
  (*(v5 + 8))(v8, v4);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_23D85AF9C()
{
  v1 = (type metadata accessor for AXRThemeButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_23D8DC510();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_23D85B0E0()
{
  result = qword_27E2EDFF8;
  if (!qword_27E2EDFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDFF0, &qword_23D8E1AE8);
    sub_23D85A394(&qword_27E2EE000, type metadata accessor for AXRThemeDisplayView, &unk_23D8E1B14);
    sub_23D835AD0(&qword_27E2ED350, &qword_27E2ED358, &qword_23D8E0A90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EDFF8);
  }

  return result;
}

uint64_t sub_23D85B1E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D85B264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D8DC510();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_23D85B33C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23D8DC510();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23D85B3FC(uint64_t a1)
{
  sub_23D8366C8(319);
  if (v1 <= 0x3F)
  {
    sub_23D8DC510();
    if (v2 <= 0x3F)
    {
      sub_23D85B558(319, &qword_27E2ED018, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_23D85B558(319, &qword_27E2EDFE0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_23D85B558(319, &qword_27E2EE030, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_23D85B5A8();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23D85B558(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23D85B5A8()
{
  if (!qword_27E2EE038)
  {
    v0 = sub_23D8DCC60();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2EE038);
    }
  }
}

uint64_t sub_23D85B600()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDFE8, &qword_23D8E1AE0);
  sub_23D8DD770();
  sub_23D835AD0(&qword_27E2EE008, &qword_27E2EDFE8, &qword_23D8E1AE0, MEMORY[0x277CDF028]);
  sub_23D85A394(&qword_27E2ED300, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D85B6FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a1;
  v144 = a2;
  v2 = type metadata accessor for AXRThemeDisplayView(0);
  v135 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v137 = v3;
  v138 = v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE048, &qword_23D8E1B70);
  MEMORY[0x28223BE20](v136);
  v140 = (v112 - v4);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE050, &qword_23D8E1B78);
  v5 = MEMORY[0x28223BE20](v139);
  v143 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v141 = v112 - v8;
  MEMORY[0x28223BE20](v7);
  v142 = v112 - v9;
  v120 = sub_23D8DC510();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE058, &qword_23D8E1B80);
  MEMORY[0x28223BE20](v11 - 8);
  v125 = v112 - v12;
  v13 = sub_23D8DE4B0();
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v123 = v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = v112 - v16;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE060, &qword_23D8E1B88);
  MEMORY[0x28223BE20](v113);
  v18 = v112 - v17;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE068, &qword_23D8E1B90);
  MEMORY[0x28223BE20](v115);
  v117 = v112 - v19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE070, &qword_23D8E1B98);
  MEMORY[0x28223BE20](v116);
  v122 = v112 - v20;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE078, &qword_23D8E1BA0);
  v21 = MEMORY[0x28223BE20](v132);
  v121 = v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v124 = v112 - v23;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE080, &unk_23D8E1BA8);
  MEMORY[0x28223BE20](v130);
  v131 = v112 - v24;
  v128 = sub_23D8DE150();
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v127 = v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23D8DD090();
  MEMORY[0x28223BE20](v26);
  v28 = v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED530, &qword_23D8E0C90);
  MEMORY[0x28223BE20](v29);
  v31 = v112 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE088, &qword_23D8E1BB8);
  MEMORY[0x28223BE20](v32);
  v34 = v112 - v33;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE090, &qword_23D8E1BC0);
  v35 = MEMORY[0x28223BE20](v129);
  v37 = v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = v112 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE098, &qword_23D8E1BC8);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v134 = v112 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v133 = v112 - v43;
  v145 = v2;
  v44 = *(v2 + 28);
  v45 = v146;
  if (*(v146 + v44) != 1)
  {
    v61 = *MEMORY[0x277CE0118];
    v62 = sub_23D8DD4E0();
    v63 = *(*(v62 - 8) + 104);
    v64 = v114;
    v63(v114, v61, v62);
    if (!*v45)
    {
      goto LABEL_13;
    }

    v112[1] = *(v145 + 20);

    sub_23D8DC9D0();

    v65 = sub_23D8DC7E0();

    sub_23D85B1E8(v64, v18, MEMORY[0x277CE1260]);
    v66 = v113;
    *&v18[*(v113 + 52)] = v65;
    *&v18[*(v66 + 56)] = 256;
    sub_23D8DE5F0();
    sub_23D8DCDB0();
    v67 = v117;
    sub_23D83C744(v18, v117, &qword_27E2EE060, &qword_23D8E1B88);
    v68 = (v67 + *(v115 + 36));
    v69 = v148;
    *v68 = v147;
    v68[1] = v69;
    v68[2] = v149;
    (*(v126 + 104))(v127, *MEMORY[0x277CE0ED0], v128);
    v70 = sub_23D8DE280();
    v71 = v122;
    sub_23D83C744(v67, v122, &qword_27E2EE068, &qword_23D8E1B90);
    v72 = (v71 + *(v116 + 36));
    *v72 = v70;
    v72[1] = 0x3FF0000000000000;
    v72[2] = 0;
    v72[3] = 0;
    v73 = v123;
    v63(v123, v61, v62);

    v74 = v118;
    sub_23D8DC970();

    sub_23D85A394(&qword_27E2ED448, MEMORY[0x277CE72A0], MEMORY[0x277CE72B0]);
    v75 = v120;
    sub_23D8DE980();
    sub_23D8DE980();
    v60 = v45;
    if (v153 == v150)
    {
      (*(v119 + 8))(v74, v75);

      v59 = v133;
    }

    else
    {
      v76 = sub_23D8DED20();
      (*(v119 + 8))(v74, v75);

      v59 = v133;
      if ((v76 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    if (*(v45 + *(v145 + 24)) == 1)
    {
      sub_23D8DE140();
      v77 = sub_23D8DE250();

LABEL_11:
      sub_23D8DCD60();
      v78 = v125;
      sub_23D85F758(v73, v125, MEMORY[0x277CE1260]);
      v79 = v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE0A0, &qword_23D8E1BD0) + 36);
      v80 = v151;
      *v79 = v150;
      *(v79 + 16) = v80;
      *(v79 + 32) = v152;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE0A8, &qword_23D8E1BD8);
      *(v78 + *(v81 + 52)) = v77;
      *(v78 + *(v81 + 56)) = 256;
      v82 = sub_23D8DE5F0();
      v84 = v83;
      sub_23D85F7C0(v73);
      v85 = (v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE0B0, &qword_23D8E1BE0) + 36));
      *v85 = v82;
      v85[1] = v84;
      v86 = sub_23D8DE5F0();
      v88 = v87;
      v89 = v121;
      v90 = &v121[*(v132 + 36)];
      sub_23D83C744(v78, v90, &qword_27E2EE058, &qword_23D8E1B80);
      v91 = (v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE0B8, &qword_23D8E1BE8) + 36));
      *v91 = v86;
      v91[1] = v88;
      sub_23D83C744(v71, v89, &qword_27E2EE070, &qword_23D8E1B98);
      v92 = v124;
      sub_23D83C744(v89, v124, &qword_27E2EE078, &qword_23D8E1BA0);
      sub_23D83C67C(v92, v131, &qword_27E2EE078, &qword_23D8E1BA0);
      swift_storeEnumTagMultiPayload();
      sub_23D85F9B8(&qword_27E2EE0C0, &qword_27E2EE090, &qword_23D8E1BC0, sub_23D85F81C);
      sub_23D85F8D4();
      sub_23D8DD6B0();
      sub_23D83C6E4(v92, &qword_27E2EE078, &qword_23D8E1BA0);
      goto LABEL_12;
    }

LABEL_10:
    v77 = sub_23D8DE230();
    goto LABEL_11;
  }

  v46 = *(v26 + 20);
  v47 = *MEMORY[0x277CE0118];
  v48 = sub_23D8DD4E0();
  (*(*(v48 - 8) + 104))(&v28[v46], v47, v48);
  __asm { FMOV            V0.2D, #10.0 }

  *v28 = _Q0;
  if (*v45)
  {

    sub_23D8DC9D0();

    v54 = sub_23D8DC7E0();

    sub_23D85B1E8(v28, v31, MEMORY[0x277CDFC08]);
    *&v31[*(v29 + 52)] = v54;
    *&v31[*(v29 + 56)] = 256;
    sub_23D8DE5F0();
    sub_23D8DCDB0();
    sub_23D83C744(v31, v34, &qword_27E2ED530, &qword_23D8E0C90);
    v55 = &v34[*(v32 + 36)];
    v56 = v148;
    *v55 = v147;
    *(v55 + 1) = v56;
    *(v55 + 2) = v149;
    (*(v126 + 104))(v127, *MEMORY[0x277CE0ED0], v128);
    v57 = sub_23D8DE280();
    sub_23D83C744(v34, v37, &qword_27E2EE088, &qword_23D8E1BB8);
    v58 = &v37[*(v129 + 36)];
    *v58 = v57;
    v58[1] = 0x3FF0000000000000;
    v58[2] = 0;
    v58[3] = 0;
    sub_23D83C744(v37, v39, &qword_27E2EE090, &qword_23D8E1BC0);
    sub_23D83C67C(v39, v131, &qword_27E2EE090, &qword_23D8E1BC0);
    swift_storeEnumTagMultiPayload();
    sub_23D85F9B8(&qword_27E2EE0C0, &qword_27E2EE090, &qword_23D8E1BC0, sub_23D85F81C);
    sub_23D85F8D4();
    v59 = v133;
    sub_23D8DD6B0();
    sub_23D83C6E4(v39, &qword_27E2EE090, &qword_23D8E1BC0);
    v60 = v146;
LABEL_12:
    v93 = sub_23D8DD420();
    v94 = v140;
    *v140 = v93;
    *(v94 + 8) = 0;
    *(v94 + 16) = 1;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE100, &qword_23D8E1BF0);
    sub_23D85C9EC(v60, v94 + *(v95 + 44));
    v96 = v138;
    sub_23D85F758(v60, v138, type metadata accessor for AXRThemeDisplayView);
    v97 = (*(v135 + 80) + 16) & ~*(v135 + 80);
    v98 = swift_allocObject();
    sub_23D85B1E8(v96, v98 + v97, type metadata accessor for AXRThemeDisplayView);
    v99 = (v94 + *(v136 + 36));
    *v99 = sub_23D85FAF8;
    v99[1] = v98;
    sub_23D8DE600();
    sub_23D8DD0D0();
    v100 = v141;
    sub_23D83C744(v94, v141, &qword_27E2EE048, &qword_23D8E1B70);
    v101 = (v100 + *(v139 + 36));
    v102 = v156;
    v103 = v158;
    v104 = v159;
    v101[4] = v157;
    v101[5] = v103;
    v101[6] = v104;
    v105 = v154;
    *v101 = v153;
    v101[1] = v105;
    v101[2] = v155;
    v101[3] = v102;
    v106 = v142;
    sub_23D83C744(v100, v142, &qword_27E2EE050, &qword_23D8E1B78);
    v107 = v134;
    sub_23D83C67C(v59, v134, &qword_27E2EE098, &qword_23D8E1BC8);
    v108 = v143;
    sub_23D83C67C(v106, v143, &qword_27E2EE050, &qword_23D8E1B78);
    v109 = v144;
    sub_23D83C67C(v107, v144, &qword_27E2EE098, &qword_23D8E1BC8);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE108, &unk_23D8E1BF8);
    sub_23D83C67C(v108, v109 + *(v110 + 48), &qword_27E2EE050, &qword_23D8E1B78);
    sub_23D83C6E4(v106, &qword_27E2EE050, &qword_23D8E1B78);
    sub_23D83C6E4(v59, &qword_27E2EE098, &qword_23D8E1BC8);
    sub_23D83C6E4(v108, &qword_27E2EE050, &qword_23D8E1B78);
    return sub_23D83C6E4(v107, &qword_27E2EE098, &qword_23D8E1BC8);
  }

LABEL_13:
  sub_23D8DC9F0();
  sub_23D85A394(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D85C9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v84 = sub_23D8DD770();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AXRThemeDisplayView(0);
  v74[0] = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v74[1] = v5;
  v75 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE110, &qword_23D8E1C08);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = v74 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE118, &qword_23D8E1C10);
  MEMORY[0x28223BE20](v76);
  v86 = v74 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE120, &qword_23D8E1C18);
  v96 = *(v98 - 8);
  v8 = MEMORY[0x28223BE20](v98);
  v79 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE128, &qword_23D8E1C20);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v99 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v97 = v74 - v14;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE130, &qword_23D8E1C28);
  MEMORY[0x28223BE20](v93);
  v85 = v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE138, &qword_23D8E1C30);
  MEMORY[0x28223BE20](v16);
  v18 = v74 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE140, &qword_23D8E1C38);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v74 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE148, &qword_23D8E1C40);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v94 = v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = v74 - v26;
  v27 = (a1 + *(v4 + 40));
  v28 = *v27;
  v29 = v27[1];
  v31 = v27[2];
  v30 = v27[3];
  v91 = v29;
  v92 = v28;
  v104 = v28;
  v105 = v29;
  v89 = v30;
  v90 = v31;
  v106 = v31;
  v107 = v30;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE010, &unk_23D8E1AF0);
  MEMORY[0x23EEF05A0](&v102);
  v33 = v102;
  v32 = v103;
  v95 = v4;
  v87 = *(v4 + 20);
  if (v33 == sub_23D8DC500() && v32 == v34)
  {

LABEL_5:
    v36 = a1;
    sub_23D85D664(v22);
    (*(v20 + 16))(v18, v22, v19);
    swift_storeEnumTagMultiPayload();
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE150, &qword_23D8E1C48);
    v38 = sub_23D85FB68();
    v104 = v37;
    v105 = MEMORY[0x277D837D0];
    v106 = v38;
    v107 = MEMORY[0x277D837F8];
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EE1F0, &qword_27E2EE130, &qword_23D8E1C28, MEMORY[0x277CE14C0]);
    sub_23D8DD6B0();
    (*(v20 + 8))(v22, v19);
    goto LABEL_7;
  }

  v35 = sub_23D8DED20();

  if (v35)
  {
    goto LABEL_5;
  }

  v39 = v85;
  v36 = a1;
  sub_23D85E390(v85);
  sub_23D83C67C(v39, v18, &qword_27E2EE130, &qword_23D8E1C28);
  swift_storeEnumTagMultiPayload();
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE150, &qword_23D8E1C48);
  v41 = sub_23D85FB68();
  v104 = v40;
  v105 = MEMORY[0x277D837D0];
  v106 = v41;
  v107 = MEMORY[0x277D837F8];
  swift_getOpaqueTypeConformance2();
  sub_23D835AD0(&qword_27E2EE1F0, &qword_27E2EE130, &qword_23D8E1C28, MEMORY[0x277CE14C0]);
  sub_23D8DD6B0();
  sub_23D83C6E4(v39, &qword_27E2EE130, &qword_23D8E1C28);
LABEL_7:
  v43 = v97;
  v42 = v98;
  v44 = v95;
  if (*(v36 + *(v95 + 28)))
  {
    v45 = 1;
  }

  else
  {
    v104 = v92;
    v105 = v91;
    v106 = v90;
    v107 = v89;
    MEMORY[0x23EEF05A0](&v102, v88);
    v47 = v102;
    v46 = v103;
    if (v47 == sub_23D8DC500() && v46 == v48)
    {

      v45 = 1;
    }

    else
    {
      v49 = sub_23D8DED20();

      v45 = 1;
      if ((v49 & 1) == 0)
      {
        v50 = v75;
        sub_23D85F758(v36, v75, type metadata accessor for AXRThemeDisplayView);
        v51 = (*(v74[0] + 80) + 16) & ~*(v74[0] + 80);
        v52 = swift_allocObject();
        v53 = sub_23D85B1E8(v50, v52 + v51, type metadata accessor for AXRThemeDisplayView);
        MEMORY[0x28223BE20](v53);
        v74[-2] = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE1F8, &qword_23D8E1CA8);
        sub_23D860288();
        v54 = v77;
        sub_23D8DE360();
        v55 = v82;
        sub_23D8DD760();
        sub_23D835AD0(&qword_27E2EE208, &qword_27E2EE110, &qword_23D8E1C08, MEMORY[0x277CDF028]);
        sub_23D85A394(&qword_27E2ED300, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
        v56 = v81;
        v57 = v84;
        sub_23D8DDD10();
        (*(v83 + 8))(v55, v57);
        (*(v80 + 8))(v54, v56);
        v58 = sub_23D8DD9E0();
        v59 = v86;
        v60 = &v86[*(v76 + 36)];
        *v60 = v58;
        *(v60 + 8) = 0u;
        *(v60 + 24) = 0u;
        v60[40] = 1;
        v61 = v36 + *(v44 + 36);
        v62 = *v61;
        v63 = *(v61 + 8);
        LOBYTE(v104) = v62;
        v105 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
        sub_23D8DE320();
        if (v102)
        {
          v64 = 1.0;
        }

        else
        {
          v64 = 0.0;
        }

        v65 = v79;
        sub_23D83C744(v59, v79, &qword_27E2EE118, &qword_23D8E1C10);
        *(v65 + *(v42 + 36)) = v64;
        v66 = v65;
        v67 = v78;
        sub_23D83C744(v66, v78, &qword_27E2EE120, &qword_23D8E1C18);
        sub_23D83C744(v67, v43, &qword_27E2EE120, &qword_23D8E1C18);
        v45 = 0;
      }
    }
  }

  (*(v96 + 56))(v43, v45, 1, v42);
  v68 = v101;
  v69 = v94;
  sub_23D83C67C(v101, v94, &qword_27E2EE148, &qword_23D8E1C40);
  v70 = v99;
  sub_23D83C67C(v43, v99, &qword_27E2EE128, &qword_23D8E1C20);
  v71 = v100;
  sub_23D83C67C(v69, v100, &qword_27E2EE148, &qword_23D8E1C40);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE210, &qword_23D8E1CB0);
  sub_23D83C67C(v70, v71 + *(v72 + 48), &qword_27E2EE128, &qword_23D8E1C20);
  sub_23D83C6E4(v43, &qword_27E2EE128, &qword_23D8E1C20);
  sub_23D83C6E4(v68, &qword_27E2EE148, &qword_23D8E1C40);
  sub_23D83C6E4(v70, &qword_27E2EE128, &qword_23D8E1C20);
  return sub_23D83C6E4(v69, &qword_27E2EE148, &qword_23D8E1C40);
}

uint64_t sub_23D85D664@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v99 = a1;
  v3 = sub_23D8DCF40();
  v96 = *(v3 - 8);
  v97 = v3;
  MEMORY[0x28223BE20](v3);
  v95 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AXRThemeDisplayView(0);
  v94 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v102 = v6;
  v98 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D8DCCB0();
  v92 = *(v7 - 1);
  v93 = v7;
  MEMORY[0x28223BE20](v7);
  v91 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_23D8DD590();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE1A0, &qword_23D8E1C70);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v69 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE188, &qword_23D8E1C68);
  MEMORY[0x28223BE20](v69);
  v15 = &v69 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE180, &qword_23D8E1C60);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v69 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE218, &qword_23D8E1CB8);
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v69 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE178, &qword_23D8E1C58);
  MEMORY[0x28223BE20](v70);
  v78 = &v69 - v18;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE160, &qword_23D8E1C50);
  MEMORY[0x28223BE20](v101);
  v85 = &v69 - v19;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE220, &qword_23D8E1CC0);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v69 - v20;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE150, &qword_23D8E1C48);
  MEMORY[0x28223BE20](v89);
  v90 = &v69 - v21;
  sub_23D8DD480();
  v22 = v5;
  v23 = (v2 + *(v5 + 44));
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  v84 = v24;
  v106 = v24;
  v107 = v25;
  v83 = v25;
  v82 = v26;
  v108 = v26;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
  sub_23D8DE340();
  sub_23D8DE6C0();
  KeyPath = swift_getKeyPath();
  v28 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE1B0, &qword_23D8E1C78) + 36)];
  *v28 = KeyPath;
  v28[8] = 0;
  v29 = sub_23D8DD9D0();
  v30 = &v13[*(v11 + 44)];
  *v30 = v29;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  if (*v2)
  {

    v31 = v2;
    v100 = v2;
    sub_23D8DC9D0();

    v32 = sub_23D8DC800();

    v33 = swift_getKeyPath();
    sub_23D83C744(v13, v15, &qword_27E2EE1A0, &qword_23D8E1C70);
    v34 = v69;
    v35 = &v15[*(v69 + 36)];
    *v35 = v33;
    v35[1] = v32;
    v36 = v31 + *(v22 + 48);
    v37 = *v36;
    v38 = *(v36 + 1);
    LOBYTE(v36) = v36[16];
    LOBYTE(v103) = v37;
    v104 = v38;
    LOBYTE(v105) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE228, &qword_23D8E1D28);
    sub_23D8DCC40();
    v39 = sub_23D85FE68();
    v40 = v73;
    sub_23D8DDFF0();

    sub_23D83C6E4(v15, &qword_27E2EE188, &qword_23D8E1C68);
    v41 = v77;
    sub_23D8DD580();
    v103 = v34;
    v104 = v39;
    swift_getOpaqueTypeConformance2();
    sub_23D85A394(&qword_27E2EE1D8, MEMORY[0x277CDDF20], MEMORY[0x277CDDF18]);
    v42 = v71;
    v43 = v76;
    v44 = v80;
    sub_23D8DDDB0();
    (*(v79 + 8))(v41, v44);
    (*(v75 + 8))(v40, v43);
    v45 = swift_getKeyPath();
    v46 = v78;
    (*(v72 + 32))(v78, v42, v74);
    v47 = v46 + *(v70 + 36);
    *v47 = v45;
    *(v47 + 8) = 1;
    *(v47 + 16) = 0;
    sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);

    v48 = v100;
    sub_23D8DC9D0();

    sub_23D8DC7E0();

    v49 = sub_23D8DEB80();
    LOBYTE(v45) = sub_23D8DEB70();

    v51 = v91;
    v50 = v92;
    v52 = MEMORY[0x277CDF3D0];
    if ((v45 & 1) == 0)
    {
      v52 = MEMORY[0x277CDF3C0];
    }

    v53 = v93;
    (*(v92 + 104))(v91, *v52, v93);
    v54 = swift_getKeyPath();
    v55 = v85;
    v56 = &v85[*(v101 + 36)];
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v50 + 32))(v56 + *(v57 + 28), v51, v53);
    *v56 = v54;
    sub_23D83C744(v46, v55, &qword_27E2EE178, &qword_23D8E1C58);
    v58 = v98;
    v93 = type metadata accessor for AXRThemeDisplayView;
    sub_23D85F758(v48, v98, type metadata accessor for AXRThemeDisplayView);
    v59 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v60 = swift_allocObject();
    v94 = type metadata accessor for AXRThemeDisplayView;
    sub_23D85B1E8(v58, v60 + v59, type metadata accessor for AXRThemeDisplayView);
    v61 = v95;
    sub_23D8DCF30();
    sub_23D85FC30();
    v62 = v86;
    sub_23D8DE080();

    (*(v96 + 8))(v61, v97);
    sub_23D83C6E4(v55, &qword_27E2EE160, &qword_23D8E1C50);
    v63 = v100;
    sub_23D85F758(v100, v58, type metadata accessor for AXRThemeDisplayView);
    v64 = swift_allocObject();
    sub_23D85B1E8(v58, v64 + v59, type metadata accessor for AXRThemeDisplayView);
    v65 = v90;
    (*(v87 + 32))(v90, v62, v88);
    v66 = (v65 + *(v89 + 36));
    *v66 = 0;
    v66[1] = 0;
    v66[2] = sub_23D860408;
    v66[3] = v64;
    v103 = v84;
    v104 = v83;
    v105 = v82;
    sub_23D8DE320();
    v103 = v106;
    v104 = v107;
    sub_23D85F758(v63, v58, v93);
    v67 = swift_allocObject();
    sub_23D85B1E8(v58, v67 + v59, v94);
    sub_23D85FB68();
    sub_23D8DE060();

    return sub_23D83C6E4(v65, &qword_27E2EE150, &qword_23D8E1C48);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D85A394(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D85E390@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE230, &qword_23D8E1D98);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v63 - v3;
  v69 = sub_23D8DC510();
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_23D8DCA70();
  v5 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE238, &unk_23D8E1DA0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v74 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v63 - v11;
  if (!*v1)
  {
    sub_23D8DC9F0();
    sub_23D85A394(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  v72 = type metadata accessor for AXRThemeDisplayView(0);
  v12 = *(v72 + 20);

  v67 = v12;
  sub_23D8DC9D0();

  v13 = sub_23D8DC870();
  v15 = v14;

  *&v80 = v13;
  *(&v80 + 1) = v15;
  v71 = sub_23D83CB18();
  v16 = sub_23D8DDCB0();
  v18 = v17;
  v20 = v19;
  v66 = v21;

  sub_23D8DC9D0();

  sub_23D8DC840();

  sub_23D8DCA30();
  (*(v5 + 8))(v7, v76);
  sub_23D8DCA20();
  sub_23D8DDB20();

  v22 = sub_23D8DDC40();
  v76 = v1;
  v65 = v23;
  LOBYTE(v13) = v24;

  sub_23D83CB6C(v16, v18, v20 & 1);

  sub_23D8DC9D0();

  sub_23D8DC800();

  v25 = v13;
  v26 = v65;
  v66 = sub_23D8DDC00();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = v22;
  v34 = v76;
  sub_23D83CB6C(v33, v26, v25 & 1);

  v35 = sub_23D8DDA10();
  v84 = v30 & 1;
  v83 = 1;
  *&v80 = v66;
  *(&v80 + 1) = v28;
  LOBYTE(v81) = v30 & 1;
  *(&v81 + 1) = v32;
  v82[0] = v35;
  memset(&v82[8], 0, 32);
  v82[40] = 1;

  v36 = v68;
  sub_23D8DC970();

  sub_23D85A394(&qword_27E2ED448, MEMORY[0x277CE72A0], MEMORY[0x277CE72B0]);
  v37 = v69;
  sub_23D8DE980();
  sub_23D8DE980();
  if (v77[0] == v79)
  {
    (*(v70 + 8))(v36, v37);

    v38 = v75;
    v39 = v74;
LABEL_5:
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    if (qword_27E2F3C80)
    {
      v41 = qword_27E2F3C80;
      v42 = sub_23D8DE830();
      v43 = sub_23D8DE830();
      v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

      sub_23D8DE870();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE250, &qword_23D8E2360);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_23D8E0890;

    sub_23D8DC9D0();

    v46 = sub_23D8DC870();
    v48 = v47;

    *(v45 + 56) = MEMORY[0x277D837D0];
    *(v45 + 64) = sub_23D8605B0();
    *(v45 + 32) = v46;
    *(v45 + 40) = v48;
    v49 = sub_23D8DE880();
    v51 = v50;

    goto LABEL_11;
  }

  v40 = sub_23D8DED20();
  (*(v70 + 8))(v36, v37);

  v38 = v75;
  v39 = v74;
  if (v40)
  {
    goto LABEL_5;
  }

  sub_23D8DC9D0();

  v49 = sub_23D8DC870();
  v51 = v52;

LABEL_11:
  v53 = v73;
  *&v79 = v49;
  *(&v79 + 1) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED458, &qword_23D8E0BF8);
  sub_23D86052C();
  sub_23D8DDE10();

  v77[2] = *v82;
  v78[0] = *&v82[16];
  *(v78 + 9) = *&v82[25];
  v77[1] = v81;
  v77[0] = v80;
  sub_23D83C6E4(v77, &qword_27E2ED458, &qword_23D8E0BF8);
  if (*(v34 + *(v72 + 28)) == 1)
  {
    sub_23D8DE2C0();
    v54 = v64;
    sub_23D8DD5A0();
    v55 = sub_23D8DD5C0();
    v56 = 1;
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v57 = sub_23D8DE2F0();

    sub_23D83C6E4(v54, &qword_27E2EE230, &qword_23D8E1D98);
    v58 = sub_23D8DD9E0();
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v56 = 0;
  }

  sub_23D83C67C(v53, v39, &qword_27E2EE238, &unk_23D8E1DA0);
  sub_23D83C67C(v39, v38, &qword_27E2EE238, &unk_23D8E1DA0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE248, &unk_23D8E1DB0);
  v60 = v38 + *(v59 + 48);
  *v60 = 0;
  *(v60 + 8) = 1;
  v61 = v38 + *(v59 + 64);
  *v61 = v57;
  *(v61 + 8) = v58;
  *(v61 + 16) = 0u;
  *(v61 + 32) = 0u;
  *(v61 + 48) = v56;
  sub_23D83C6E4(v53, &qword_27E2EE238, &unk_23D8E1DA0);

  return sub_23D83C6E4(v39, &qword_27E2EE238, &unk_23D8E1DA0);
}

uint64_t sub_23D85ED7C(char a1, uint64_t a2)
{
  type metadata accessor for AXRThemeDisplayView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  return sub_23D8DE330();
}

uint64_t sub_23D85EDF0()
{
  type metadata accessor for AXRThemeDisplayView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
  sub_23D8DE320();

  v2 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v2 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    if (*v0)
    {

      sub_23D8DC9D0();

      sub_23D8DE320();
      sub_23D8DC880();

      sub_23D8DC940();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE228, &qword_23D8E1D28);
      return sub_23D8DCC30();
    }

    else
    {
      sub_23D8DC9F0();
      sub_23D85A394(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
      result = sub_23D8DD120();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23D85EFB8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = sub_23D8DE8F0();
  result = type metadata accessor for AXRThemeDisplayView(0);
  v8 = *(a3 + *(result + 32));
  if (v8 < v6)
  {

    v10 = sub_23D8CAD78(v8, v5, v4, v9);
    v12 = v11;
    v14 = v13;
    v16 = v15;

    MEMORY[0x23EEF09F0](v10, v12, v14, v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
    return sub_23D8DE330();
  }

  return result;
}

uint64_t sub_23D85F0BC(void *a1)
{
  v2 = sub_23D8DE750();
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D8DE780();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AXRThemeDisplayView(0);
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_23D8DC500();
  v11 = a1 + *(v8 + 40);
  v12 = *v11;
  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  aBlock = v12;
  v32 = v14;
  v33 = v13;
  v36 = v10;
  v37 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE010, &unk_23D8E1AF0);
  sub_23D8DE460();
  if (*a1)
  {

    sub_23D8DC9D0();

    v16 = sub_23D8DC870();
    v18 = v17;

    v19 = a1 + *(v8 + 44);
    v20 = *v19;
    v21 = *(v19 + 2);
    aBlock = v20;
    v32 = v21;
    v36 = v16;
    v37 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
    sub_23D8DE330();
    sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
    v22 = sub_23D8DEAF0();
    sub_23D85F758(a1, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRThemeDisplayView);
    v23 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v24 = swift_allocObject();
    sub_23D85B1E8(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for AXRThemeDisplayView);
    v34 = sub_23D8604E8;
    v35 = v24;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v32 = sub_23D876358;
    v33 = &block_descriptor_0;
    v25 = _Block_copy(&aBlock);

    sub_23D8DE770();
    *&aBlock = MEMORY[0x277D84F90];
    sub_23D85A394(&qword_27E2EDE68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
    sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740, MEMORY[0x277D83970]);
    sub_23D8DEBF0();
    MEMORY[0x23EEF0C50](0, v7, v4, v25);
    _Block_release(v25);

    (*(v30 + 8))(v4, v2);
    return (*(v28 + 8))(v7, v29);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D85A394(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D85F590(uint64_t a1)
{
  type metadata accessor for AXRThemeDisplayView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE228, &qword_23D8E1D28);
  return sub_23D8DCC30();
}

uint64_t sub_23D85F60C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23D8DE2C0();
  if (*a1)
  {
    v5 = v4;
    type metadata accessor for AXRThemeDisplayView(0);

    sub_23D8DC9D0();

    v6 = sub_23D8DC800();

    result = swift_getKeyPath();
    *a2 = v5;
    a2[1] = result;
    a2[2] = v6;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D85A394(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D85F70C@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_23D8DE5F0();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE040, &qword_23D8E1B68);
  return sub_23D85B6FC(v2, a2 + *(v5 + 44));
}

uint64_t sub_23D85F758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D85F7C0(uint64_t a1)
{
  v2 = sub_23D8DE4B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D85F81C()
{
  result = qword_27E2EE0C8;
  if (!qword_27E2EE0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE088, &qword_23D8E1BB8);
    sub_23D835AD0(&qword_27E2EE0D0, &qword_27E2ED530, &qword_23D8E0C90, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE0C8);
  }

  return result;
}

unint64_t sub_23D85F8D4()
{
  result = qword_27E2EE0D8;
  if (!qword_27E2EE0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE078, &qword_23D8E1BA0);
    sub_23D85F9B8(&qword_27E2EE0E0, &qword_27E2EE070, &qword_23D8E1B98, sub_23D85FA3C);
    sub_23D835AD0(&qword_27E2EE0F8, &qword_27E2EE0B8, &qword_23D8E1BE8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE0D8);
  }

  return result;
}

uint64_t sub_23D85F9B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23D85FA3C()
{
  result = qword_27E2EE0E8;
  if (!qword_27E2EE0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE068, &qword_23D8E1B90);
    sub_23D835AD0(&qword_27E2EE0F0, &qword_27E2EE060, &qword_23D8E1B88, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE0E8);
  }

  return result;
}

uint64_t sub_23D85FAF8(char a1)
{
  v3 = *(type metadata accessor for AXRThemeDisplayView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D85ED7C(a1, v4);
}

unint64_t sub_23D85FB68()
{
  result = qword_27E2EE158;
  if (!qword_27E2EE158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE150, &qword_23D8E1C48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE160, &qword_23D8E1C50);
    sub_23D85FC30();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE158);
  }

  return result;
}

unint64_t sub_23D85FC30()
{
  result = qword_27E2EE168;
  if (!qword_27E2EE168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE160, &qword_23D8E1C50);
    sub_23D85FCE8();
    sub_23D835AD0(qword_27E2ED678, &qword_27E2ED570, &qword_23D8E0D00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE168);
  }

  return result;
}

unint64_t sub_23D85FCE8()
{
  result = qword_27E2EE170;
  if (!qword_27E2EE170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE178, &qword_23D8E1C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE180, &qword_23D8E1C60);
    sub_23D8DD590();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE188, &qword_23D8E1C68);
    sub_23D85FE68();
    swift_getOpaqueTypeConformance2();
    sub_23D85A394(&qword_27E2EE1D8, MEMORY[0x277CDDF20], MEMORY[0x277CDDF18]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EE1E0, &qword_27E2EE1E8, &unk_23D8E1C98, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE170);
  }

  return result;
}

unint64_t sub_23D85FE68()
{
  result = qword_27E2EE190;
  if (!qword_27E2EE190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE188, &qword_23D8E1C68);
    sub_23D85FF20();
    sub_23D835AD0(&qword_27E2ED4B8, &qword_27E2ED4C0, &qword_23D8E0C30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE190);
  }

  return result;
}

unint64_t sub_23D85FF20()
{
  result = qword_27E2EE198;
  if (!qword_27E2EE198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE1A0, &qword_23D8E1C70);
    sub_23D85FFAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE198);
  }

  return result;
}

unint64_t sub_23D85FFAC()
{
  result = qword_27E2EE1A8;
  if (!qword_27E2EE1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE1B0, &qword_23D8E1C78);
    sub_23D835AD0(&qword_27E2EE1B8, &qword_27E2EE1C0, &qword_23D8E1C80, MEMORY[0x277CDF1A8]);
    sub_23D835AD0(&qword_27E2EE1C8, &qword_27E2EE1D0, &unk_23D8E1C88, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE1A8);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{
  v1 = (type metadata accessor for AXRThemeDisplayView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_23D8DC510();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D860204(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_23D860288()
{
  result = qword_27E2EE200;
  if (!qword_27E2EE200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE1F8, &qword_23D8E1CA8);
    sub_23D835AD0(&qword_27E2ED4B8, &qword_27E2ED4C0, &qword_23D8E0C30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE200);
  }

  return result;
}

uint64_t sub_23D860340@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D8DD2A0();
  *a1 = result;
  return result;
}

uint64_t sub_23D86039C@<X0>(uint64_t a1@<X8>)
{
  result = sub_23D8DD390();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23D860468(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for AXRThemeDisplayView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D85EFB8(a1, a2, v6);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D86052C()
{
  result = qword_27E2EE240;
  if (!qword_27E2EE240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED458, &qword_23D8E0BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE240);
  }

  return result;
}

unint64_t sub_23D8605B0()
{
  result = qword_27E2EE258;
  if (!qword_27E2EE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE258);
  }

  return result;
}

double sub_23D86069C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D8DCB70();

  return v3;
}

double sub_23D860708()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D8DCB70();

  return result;
}

double sub_23D8607A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D8DCB70();

  return result;
}

uint64_t sub_23D860818()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D8DCB70();

  return v1;
}

uint64_t sub_23D86088C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D8DCB70();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D8DCB70();

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D8DCB80();
}

uint64_t sub_23D8609E0()
{
  v1 = OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__compactSize;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE2F0, &qword_23D8E2010);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__screenSize, v2);
  v4 = OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__location;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE2F8, &qword_23D8E2018);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__windowState;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE300, &qword_23D8E2020);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__pipDirection;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE308, &qword_23D8E2028);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__selectedAction;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE310, &qword_23D8E2030);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__speedMenuVisible;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE318, &qword_23D8E2038);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__showAppName, v13);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SSStore(uint64_t a1)
{
  result = qword_27E2EE2B0;
  if (!qword_27E2EE2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D860CA8(uint64_t a1)
{
  sub_23D860ED8(319, &qword_27E2EE2C0, type metadata accessor for CGSize);
  if (v1 <= 0x3F)
  {
    sub_23D860ED8(319, &qword_27E2EE2C8, type metadata accessor for CGPoint);
    if (v2 <= 0x3F)
    {
      sub_23D860F2C(319, &qword_27E2EE2D0, &type metadata for SSWindowState);
      if (v3 <= 0x3F)
      {
        sub_23D860F2C(319, &qword_27E2EE2D8, &type metadata for IconDirection);
        if (v4 <= 0x3F)
        {
          sub_23D860F2C(319, &qword_27E2EE2E0, &type metadata for SSActions);
          if (v5 <= 0x3F)
          {
            sub_23D860F2C(319, &qword_27E2EE2E8, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_23D860ED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23D8DCB90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23D860F2C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23D8DCB90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23D860F84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE318, &qword_23D8E2038);
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x28223BE20](v1);
  v41 = &v32 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE310, &qword_23D8E2030);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE308, &qword_23D8E2028);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE300, &qword_23D8E2020);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE2F8, &qword_23D8E2018);
  v10 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE2F0, &qword_23D8E2010);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__compactSize;
  type metadata accessor for CGSize(0);
  v44 = 0;
  v45 = 0;
  sub_23D8DCB60();
  v18 = *(v14 + 32);
  v18(v0 + v17, v16, v13);
  v19 = OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__screenSize;
  v44 = 0;
  v45 = 0;
  sub_23D8DCB60();
  v18(v0 + v19, v16, v13);
  v20 = OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__location;
  type metadata accessor for CGPoint(0);
  v44 = 0;
  v45 = 0;
  sub_23D8DCB60();
  (*(v10 + 32))(v0 + v20, v12, v32);
  v21 = OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__windowState;
  LOBYTE(v44) = 0;
  sub_23D8DCB60();
  (*(v33 + 32))(v0 + v21, v9, v34);
  v22 = OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__pipDirection;
  LOBYTE(v44) = 2;
  v23 = v35;
  sub_23D8DCB60();
  (*(v36 + 32))(v0 + v22, v23, v37);
  v24 = OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__selectedAction;
  LOBYTE(v44) = 0;
  v25 = v38;
  sub_23D8DCB60();
  (*(v39 + 32))(v0 + v24, v25, v40);
  v26 = OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__speedMenuVisible;
  LOBYTE(v44) = 0;
  v27 = v41;
  sub_23D8DCB60();
  v28 = v43;
  v29 = *(v42 + 32);
  v29(v0 + v26, v27, v43);
  v30 = OBJC_IVAR____TtC22AccessibilityReadingUI7SSStore__showAppName;
  LOBYTE(v44) = 0;
  sub_23D8DCB60();
  v29(v0 + v30, v27, v28);
  return v0;
}

uint64_t sub_23D8614BC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SSStore(0);
  result = sub_23D8DCB20();
  *a2 = result;
  return result;
}

double sub_23D861588@<D0>(_OWORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D8DCB70();

  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_23D861618(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D8DCB80();
}

void sub_23D861690(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D8DCB70();

  *a2 = v3;
}

void sub_23D861804(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D8DCB70();

  *a4 = v5;
}

uint64_t sub_23D861894(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D8DCB80();
}

void sub_23D861904(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D8DCB70();

  *a2 = v3;
}

uint64_t sub_23D861AB4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D8DCB70();

  if (qword_27E2ECEC0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D8DCB70();

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D8DCB80();
}

uint64_t sub_23D861CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C8, &qword_23D8E2050);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE320, &qword_23D8E2058);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 60);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23D861E50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C8, &qword_23D8E2050);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE320, &qword_23D8E2058);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 60);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for AXRBottomBar(uint64_t a1)
{
  result = qword_27E2EE328;
  if (!qword_27E2EE328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D861FDC(uint64_t a1)
{
  sub_23D862290(319, &qword_27E2ED608, &qword_27E2EE9E0, &qword_23D8E26D0, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23D836838(319);
    if (v2 <= 0x3F)
    {
      sub_23D83675C(319);
      if (v3 <= 0x3F)
      {
        sub_23D8366C8(319);
        if (v4 <= 0x3F)
        {
          sub_23D862290(319, &qword_27E2ED268, &qword_27E2ED270, &qword_23D8E0900, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23D86234C(319, &qword_27E2ED018, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_23D86234C(319, &qword_27E2ED028, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_23D86234C(319, &qword_27E2EE338, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
                if (v8 <= 0x3F)
                {
                  sub_23D86234C(319, &qword_27E2EE340, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
                  if (v9 <= 0x3F)
                  {
                    sub_23D862290(319, &qword_27E2EE348, &qword_27E2EE350, qword_23D8E2088, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      sub_23D8622F4(319);
                      if (v11 <= 0x3F)
                      {
                        sub_23D86234C(319, &qword_27E2EE030, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
                        if (v12 <= 0x3F)
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
      }
    }
  }
}

void sub_23D862290(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_23D8622F4(uint64_t a1)
{
  if (!qword_27E2EE358)
  {
    sub_23D8DD850();
    v1 = sub_23D8DE350();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2EE358);
    }
  }
}

void sub_23D86234C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23D8623B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 16);
  v104[0] = **a1;
  v104[1] = v4;
  v5 = v2[5];
  v7 = v2[2];
  v6 = v2[3];
  v104[4] = v2[4];
  v104[5] = v5;
  v104[2] = v7;
  v104[3] = v6;
  v8 = v2[9];
  v10 = v2[6];
  v9 = v2[7];
  v104[8] = v2[8];
  v104[9] = v8;
  v104[6] = v10;
  v104[7] = v9;
  v11 = *v3;
  v103 = *(v3 + 8);
  v12 = a1[2];
  v13 = a1[3];
  v14 = v12[3];
  v16 = *v12;
  v15 = v12[1];
  v105[2] = v12[2];
  v105[3] = v14;
  v105[0] = v16;
  v105[1] = v15;
  v17 = v12[7];
  v19 = v12[4];
  v18 = v12[5];
  v105[6] = v12[6];
  v105[7] = v17;
  v105[4] = v19;
  v105[5] = v18;
  v20 = *v12;
  v21 = v12[1];
  v22 = v12[2];
  *&v102[55] = v12[3];
  *&v102[39] = v22;
  *&v102[23] = v21;
  *&v102[7] = v20;
  v23 = v12[4];
  v24 = v12[5];
  v25 = v12[6];
  *&v102[119] = v12[7];
  *&v102[103] = v25;
  *&v102[87] = v24;
  *&v102[71] = v23;
  v26 = *v13;
  v101 = *(v13 + 8);
  v27 = a1[4];
  v28 = a1[5];
  v29 = *v27;
  v30 = v27[1];
  v31 = v27[3];
  v106[2] = v27[2];
  v106[3] = v31;
  v106[0] = v29;
  v106[1] = v30;
  v32 = v27[4];
  v33 = v27[5];
  v34 = v27[7];
  v106[6] = v27[6];
  v106[7] = v34;
  v106[4] = v32;
  v106[5] = v33;
  v35 = *v27;
  v36 = v27[1];
  v37 = v27[2];
  *&v100[55] = v27[3];
  *&v100[39] = v37;
  *&v100[23] = v36;
  *&v100[7] = v35;
  v38 = v27[4];
  v39 = v27[5];
  v40 = v27[6];
  *&v100[119] = v27[7];
  *&v100[103] = v40;
  *&v100[87] = v39;
  *&v100[71] = v38;
  v41 = *v28;
  v99 = *(v28 + 8);
  v43 = a1[6];
  v42 = a1[7];
  v44 = *v43;
  v45 = v43[1];
  v46 = v43[3];
  v107[2] = v43[2];
  v107[3] = v46;
  v107[0] = v44;
  v107[1] = v45;
  v47 = v43[4];
  v48 = v43[5];
  v49 = v43[7];
  v107[6] = v43[6];
  v107[7] = v49;
  v107[4] = v47;
  v107[5] = v48;
  v50 = *v43;
  v51 = v43[1];
  v52 = v43[2];
  *&v98[55] = v43[3];
  *&v98[39] = v52;
  *&v98[23] = v51;
  *&v98[7] = v50;
  v53 = v43[4];
  v54 = v43[5];
  v55 = v43[6];
  *&v98[119] = v43[7];
  *&v98[103] = v55;
  *&v98[87] = v54;
  *&v98[71] = v53;
  v56 = *v42;
  v97 = *(v42 + 8);
  v57 = a1[8];
  v108[0] = *v57;
  v58 = v57[1];
  v59 = v57[2];
  v60 = v57[4];
  v108[3] = v57[3];
  v108[4] = v60;
  v108[1] = v58;
  v108[2] = v59;
  v61 = v57[5];
  v62 = v57[6];
  v63 = v57[7];
  v109 = *(v57 + 16);
  v108[6] = v62;
  v108[7] = v63;
  v108[5] = v61;
  v64 = v57[4];
  *&v96[87] = v57[5];
  v65 = v57[7];
  *&v96[103] = v57[6];
  *&v96[119] = v65;
  *&v96[135] = *(v57 + 16);
  v66 = *v57;
  *&v96[23] = v57[1];
  v67 = v57[3];
  *&v96[39] = v57[2];
  *&v96[55] = v67;
  *&v96[71] = v64;
  *&v96[7] = v66;
  v68 = v103;
  v69 = v101;
  LOBYTE(v42) = v99;
  LOBYTE(v57) = v97;
  v70 = v2[7];
  *(a2 + 96) = v2[6];
  *(a2 + 112) = v70;
  v71 = v2[9];
  *(a2 + 128) = v2[8];
  *(a2 + 144) = v71;
  v72 = v2[3];
  *(a2 + 32) = v2[2];
  *(a2 + 48) = v72;
  v73 = v2[5];
  *(a2 + 64) = v2[4];
  *(a2 + 80) = v73;
  v74 = v2[1];
  *a2 = *v2;
  *(a2 + 16) = v74;
  *(a2 + 160) = v11;
  *(a2 + 168) = v68;
  v75 = *&v102[64];
  *(a2 + 249) = *&v102[80];
  v76 = *&v102[112];
  *(a2 + 265) = *&v102[96];
  *(a2 + 281) = v76;
  v77 = *&v102[127];
  v78 = *v102;
  *(a2 + 185) = *&v102[16];
  v79 = *&v102[48];
  *(a2 + 201) = *&v102[32];
  *(a2 + 217) = v79;
  *(a2 + 233) = v75;
  *(a2 + 169) = v78;
  *(a2 + 296) = v77;
  *(a2 + 304) = v26;
  *(a2 + 312) = v69;
  v80 = *&v100[112];
  *(a2 + 409) = *&v100[96];
  *(a2 + 425) = v80;
  v81 = *&v100[127];
  v82 = *&v100[48];
  *(a2 + 345) = *&v100[32];
  *(a2 + 361) = v82;
  v83 = *&v100[80];
  *(a2 + 377) = *&v100[64];
  *(a2 + 393) = v83;
  v84 = *&v100[16];
  *(a2 + 313) = *v100;
  *(a2 + 329) = v84;
  *(a2 + 440) = v81;
  *(a2 + 448) = v41;
  *(a2 + 456) = v42;
  v85 = *&v98[112];
  *(a2 + 553) = *&v98[96];
  *(a2 + 569) = v85;
  *(a2 + 584) = *&v98[127];
  v86 = *&v98[48];
  *(a2 + 489) = *&v98[32];
  *(a2 + 505) = v86;
  v87 = *&v98[80];
  *(a2 + 521) = *&v98[64];
  *(a2 + 537) = v87;
  v88 = *&v98[16];
  *(a2 + 457) = *v98;
  *(a2 + 473) = v88;
  *(a2 + 592) = v56;
  *(a2 + 600) = v57;
  v89 = (a2 + 601);
  v90 = *&v96[112];
  v89[6] = *&v96[96];
  v89[7] = v90;
  *(v89 + 127) = *&v96[127];
  v91 = *&v96[48];
  v89[2] = *&v96[32];
  v89[3] = v91;
  v92 = *&v96[80];
  v89[4] = *&v96[64];
  v89[5] = v92;
  v93 = *&v96[16];
  *v89 = *v96;
  v89[1] = v93;
  sub_23D83C67C(v104, &v95, &qword_27E2EE548, &qword_23D8E2308);
  sub_23D83C67C(v105, &v95, &qword_27E2EE540, &qword_23D8E2300);
  sub_23D83C67C(v106, &v95, &qword_27E2EE538, &qword_23D8E22F8);
  sub_23D83C67C(v107, &v95, &qword_27E2EE530, &qword_23D8E22F0);
  return sub_23D83C67C(v108, &v95, &qword_27E2EE528, &qword_23D8E22E8);
}

uint64_t sub_23D862760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE578, &qword_23D8E2368);
  sub_23D83C67C(*(a1 + 8), a2 + v5[12], &qword_27E2EE580, &qword_23D8E2370);
  v6 = a2 + v5[16];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  *v6 = v9;
  *(v6 + 8) = v8;
  sub_23D83C67C(v7, a2 + v5[20], &qword_27E2EE588, &qword_23D8E2378);
  v10 = a2 + v5[24];
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *v10 = v13;
  *(v10 + 8) = v12;
  sub_23D83C67C(v11, a2 + v5[28], &qword_27E2EE588, &qword_23D8E2378);
  v14 = a2 + v5[32];
  v16 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *v14 = v17;
  *(v14 + 8) = v16;
  sub_23D83C67C(v15, a2 + v5[36], &qword_27E2EE588, &qword_23D8E2378);
  v18 = a2 + v5[40];
  v20 = *(a1 + 64);
  v19 = *(a1 + 72);
  v21 = *v20;
  LOBYTE(v20) = *(v20 + 8);
  *v18 = v21;
  *(v18 + 8) = v20;
  result = sub_23D83C67C(v19, a2 + v5[44], &qword_27E2EE590, &qword_23D8E2380);
  v23 = a2 + v5[48];
  v24 = *(a1 + 80);
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  *v23 = v25;
  *(v23 + 8) = v24;
  return result;
}

uint64_t sub_23D8628D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_23D83C67C(v2, &v13 - v9, &qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23D83C744(v10, a1, &qword_27E2EE9E0, &qword_23D8E26D0);
  }

  sub_23D8DEAB0();
  v12 = sub_23D8DD990();
  sub_23D8DCAD0();

  sub_23D8DD3B0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23D862AB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v110 = a1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  MEMORY[0x28223BE20](v109);
  v108 = &v86 - v3;
  v4 = type metadata accessor for AXRBottomBar(0);
  v86 = v4;
  v106 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v114 = v5;
  v107 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_23D8DCCB0();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D8DD850();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v86 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE360, &qword_23D8E20E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v86 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE368, &qword_23D8E20E8);
  MEMORY[0x28223BE20](v17);
  v19 = &v86 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE370, &qword_23D8E20F0);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v87 = &v86 - v20;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE378, &qword_23D8E20F8);
  MEMORY[0x28223BE20](v90);
  v93 = &v86 - v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE380, &qword_23D8E2100);
  MEMORY[0x28223BE20](v92);
  v96 = &v86 - v22;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE388, &qword_23D8E2108);
  MEMORY[0x28223BE20](v91);
  v97 = &v86 - v23;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE390, &qword_23D8E2110);
  MEMORY[0x28223BE20](v112);
  v111 = &v86 - v24;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE398, &qword_23D8E2118);
  v102 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v113 = &v86 - v25;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE3A0, &qword_23D8E2120);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v86 - v26;
  *v16 = sub_23D8DD560();
  *(v16 + 1) = 0;
  v16[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE3A8, &qword_23D8E2128);
  sub_23D863924(v2);
  v27 = *(v4 + 60);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE320, &qword_23D8E2058);
  v89 = v27;
  v88 = v28;
  sub_23D8DE320();
  (*(v8 + 104))(v11, *MEMORY[0x277CE0558], v7);
  sub_23D8DD840();
  v29 = *(v8 + 8);
  v29(v11, v7);
  v29(v13, v7);
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  sub_23D83C744(v16, v19, &qword_27E2EE360, &qword_23D8E20E0);
  v30 = &v19[*(v17 + 36)];
  v31 = v120;
  *v30 = v119;
  *(v30 + 1) = v31;
  *(v30 + 2) = v121;
  sub_23D8DE5D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE3B0, &qword_23D8E2130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE3B8, &qword_23D8E2138);
  v32 = sub_23D867D20();
  v33 = sub_23D8DD090();
  v34 = sub_23D869194(&qword_27E2EE3D0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v115 = v17;
  v116 = v33;
  v117 = v32;
  v118 = v34;
  swift_getOpaqueTypeConformance2();
  sub_23D867DD8();
  v35 = v87;
  v36 = v86;
  sub_23D8DE0A0();
  sub_23D83C6E4(v19, &qword_27E2EE368, &qword_23D8E20E8);
  if (*(v2 + *(v36 + 28)))
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v37 = sub_23D8DEB80();
    v38 = sub_23D8DEB70();

    v39 = v99;
    v40 = MEMORY[0x277CDF3D0];
    if ((v38 & 1) == 0)
    {
      v40 = MEMORY[0x277CDF3C0];
    }

    v41 = v98;
    v42 = v100;
    (*(v99 + 104))(v98, *v40, v100);
    KeyPath = swift_getKeyPath();
    v44 = v93;
    v45 = &v93[*(v90 + 36)];
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v39 + 32))(v45 + *(v46 + 28), v41, v42);
    *v45 = KeyPath;
    (*(v94 + 32))(v44, v35, v95);
    LOBYTE(KeyPath) = sub_23D8DD9D0();
    sub_23D8DCC20();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = v96;
    sub_23D83C744(v44, v96, &qword_27E2EE378, &qword_23D8E20F8);
    v56 = v55 + *(v92 + 36);
    *v56 = KeyPath;
    *(v56 + 8) = v48;
    *(v56 + 16) = v50;
    *(v56 + 24) = v52;
    *(v56 + 32) = v54;
    *(v56 + 40) = 0;
    v57 = sub_23D8DE650();
    v58 = v97;
    v59 = &v97[*(v91 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE3E8, &unk_23D8E2180);
    sub_23D8DE320();
    *v59 = v57;
    sub_23D83C744(v55, v58, &qword_27E2EE380, &qword_23D8E2100);
    v60 = v107;
    sub_23D867E98(v2, v107);
    v61 = (*(v106 + 80) + 16) & ~*(v106 + 80);
    v62 = swift_allocObject();
    sub_23D867F00(v60, v62 + v61);
    v63 = v111;
    sub_23D83C67C(v58, v111, &qword_27E2EE388, &qword_23D8E2108);
    v64 = (v63 + *(v112 + 36));
    *v64 = sub_23D867F64;
    v64[1] = v62;
    v64[2] = 0;
    v64[3] = 0;
    sub_23D83C6E4(v58, &qword_27E2EE388, &qword_23D8E2108);
    v65 = *(v2 + *(v36 + 24));
    if (v65)
    {
      v66 = v65;
      v67 = sub_23D8DC410();

      v115 = v67;
      sub_23D867E98(v2, v60);
      v68 = swift_allocObject();
      sub_23D867F00(v60, v68 + v61);
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7D8, &qword_23D8E11D0);
      v69 = sub_23D867F94();
      v70 = sub_23D853084();
      v71 = v112;
      v72 = v111;
      sub_23D8DE060();

      sub_23D83C6E4(v72, &qword_27E2EE390, &qword_23D8E2110);
      v73 = v108;
      sub_23D8628D4(v108);
      sub_23D867E98(v2, v60);
      v74 = swift_allocObject();
      sub_23D867F00(v60, v74 + v61);
      v115 = v71;
      v116 = v106;
      v117 = v69;
      v118 = v70;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v76 = sub_23D868340();
      v77 = v101;
      v78 = v105;
      v79 = v109;
      v80 = v113;
      sub_23D8DE060();

      sub_23D83C6E4(v73, &qword_27E2EE9E0, &qword_23D8E26D0);
      (*(v102 + 8))(v80, v78);
      v115 = v78;
      v116 = v79;
      v117 = OpaqueTypeConformance2;
      v118 = v76;
      swift_getOpaqueTypeConformance2();
      v81 = v104;
      sub_23D8DDF00();
      return (*(v103 + 8))(v77, v81);
    }

    sub_23D8DC430();
    v83 = &unk_27E2F0420;
    v84 = MEMORY[0x277CE7230];
    v85 = MEMORY[0x277CE7228];
  }

  else
  {
    sub_23D8DC9F0();
    v83 = &qword_27E2ED238;
    v84 = MEMORY[0x277CE73F8];
    v85 = MEMORY[0x277CE73F0];
  }

  sub_23D869194(v83, v84, v85);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D863924(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v94 = v2;
  v3 = sub_23D8DD850();
  v92 = *(v3 - 8);
  v93 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v91 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v90 = &v85 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE428, &qword_23D8E21A8);
  MEMORY[0x28223BE20](v89);
  v8 = &v85 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE430, &qword_23D8E21B0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v99 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v95 = &v85 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE438, &qword_23D8E21B8);
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE440, &qword_23D8E21C0);
  v97 = *(v17 - 8);
  v98 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v96 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v85 - v20;
  sub_23D8642B4(v16);
  v22 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE448, &qword_23D8E21C8) + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE450, &qword_23D8E21D0) + 28);
  v24 = *MEMORY[0x277CDF418];
  v25 = sub_23D8DCCC0();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  LOBYTE(v24) = sub_23D8DD9D0();
  sub_23D8DCC20();
  v26 = &v16[*(v14 + 36)];
  *v26 = v24;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_23D8DE5D0();
  v100 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE458, &qword_23D8E2208);
  sub_23D86847C();
  sub_23D86899C();
  v31 = v21;
  v86 = v21;
  sub_23D8DE0A0();
  sub_23D83C6E4(v16, &qword_27E2EE438, &qword_23D8E21B8);
  *v8 = sub_23D8DD420();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE4F0, &qword_23D8E2250);
  sub_23D8654D8(v1, &v8[*(v32 + 44)]);
  sub_23D835AD0(&qword_27E2EE4F8, &qword_27E2EE428, &qword_23D8E21A8, MEMORY[0x277CE1138]);
  v33 = v95;
  sub_23D8DDE40();
  sub_23D83C6E4(v8, &qword_27E2EE428, &qword_23D8E21A8);
  LOBYTE(v24) = sub_23D8DD9D0();
  sub_23D8DCC20();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE500, &qword_23D8E2258) + 36);
  v43 = v33;
  *v42 = v24;
  *(v42 + 8) = v35;
  *(v42 + 16) = v37;
  *(v42 + 24) = v39;
  *(v42 + 32) = v41;
  *(v42 + 40) = 0;
  v44 = sub_23D8DDB80();
  KeyPath = swift_getKeyPath();
  v46 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE508, &qword_23D8E2290) + 36));
  *v46 = KeyPath;
  v46[1] = v44;
  LOBYTE(v44) = sub_23D8DDA00();
  sub_23D8DCC20();
  v47 = v33 + *(v10 + 44);
  *v47 = v44;
  *(v47 + 8) = v48;
  *(v47 + 16) = v49;
  *(v47 + 24) = v50;
  *(v47 + 32) = v51;
  *(v47 + 40) = 0;
  v89 = sub_23D8DD420();
  v119 = 1;
  sub_23D865C0C(v1, v102);
  memcpy(v125, v102, sizeof(v125));
  memcpy(v126, v102, 0x2E8uLL);
  sub_23D83C67C(v125, v101, &qword_27E2EE510, &qword_23D8E2298);
  sub_23D83C6E4(v126, &qword_27E2EE510, &qword_23D8E2298);
  memcpy(&v118[7], v125, 0x2E8uLL);
  v87 = v119;
  v88 = sub_23D8DDA00();
  type metadata accessor for AXRBottomBar(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE320, &qword_23D8E2058);
  v52 = v90;
  sub_23D8DE320();
  v54 = v91;
  v53 = v92;
  v55 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x277CE0558], v93);
  sub_23D8DD840();
  v56 = *(v53 + 8);
  v56(v54, v55);
  v56(v52, v55);
  sub_23D8DCC20();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v120 = 0;
  LOBYTE(v44) = sub_23D8DD9D0();
  sub_23D8DCC20();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v122 = 0;
  v73 = v96;
  v74 = *(v97 + 16);
  v75 = v31;
  v76 = v98;
  v74(v96, v75, v98);
  v77 = v99;
  sub_23D83C67C(v43, v99, &qword_27E2EE430, &qword_23D8E21B0);
  v78 = v94;
  v74(v94, v73, v76);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE518, &qword_23D8E22A0);
  sub_23D83C67C(v77, &v78[*(v79 + 48)], &qword_27E2EE430, &qword_23D8E21B0);
  v80 = *(v79 + 64);
  v81 = v89;
  v101[0] = v89;
  v101[1] = 0;
  LOBYTE(v76) = v87;
  LOBYTE(v101[2]) = v87;
  memcpy(&v101[2] + 1, v118, 0x2EFuLL);
  LOBYTE(v74) = v88;
  LOBYTE(v101[96]) = v88;
  *(&v101[96] + 1) = *v121;
  HIDWORD(v101[96]) = *&v121[3];
  v101[97] = v58;
  v101[98] = v60;
  v101[99] = v62;
  v101[100] = v64;
  LOBYTE(v101[101]) = 0;
  *(&v101[101] + 1) = *v124;
  HIDWORD(v101[101]) = *&v124[3];
  LOBYTE(v101[102]) = v44;
  *(&v101[102] + 1) = *v123;
  HIDWORD(v101[102]) = *&v123[3];
  v101[103] = v66;
  v101[104] = v68;
  v101[105] = v70;
  v101[106] = v72;
  LOBYTE(v101[107]) = 0;
  memcpy(&v78[v80], v101, 0x359uLL);
  sub_23D83C67C(v101, v102, &qword_27E2EE520, &unk_23D8E22A8);
  sub_23D83C6E4(v95, &qword_27E2EE430, &qword_23D8E21B0);
  v82 = v98;
  v83 = *(v97 + 8);
  v83(v86, v98);
  v102[0] = v81;
  v102[1] = 0;
  LOBYTE(v102[2]) = v76;
  memcpy(&v102[2] + 1, v118, 0x2EFuLL);
  v103 = v74;
  *v104 = *v121;
  *&v104[3] = *&v121[3];
  v105 = v58;
  v106 = v60;
  v107 = v62;
  v108 = v64;
  v109 = 0;
  *v110 = *v124;
  *&v110[3] = *&v124[3];
  v111 = v44;
  *v112 = *v123;
  *&v112[3] = *&v123[3];
  v113 = v66;
  v114 = v68;
  v115 = v70;
  v116 = v72;
  v117 = 0;
  sub_23D83C6E4(v102, &qword_27E2EE520, &unk_23D8E22A8);
  sub_23D83C6E4(v99, &qword_27E2EE430, &qword_23D8E21B0);
  return (v83)(v96, v82);
}

uint64_t sub_23D8642B4@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v112 = sub_23D8DC250();
  v108 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v106 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AXRBottomBar(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE4C0, &unk_23D8E2240);
  v97 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v8 = &v92 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE4B0, &qword_23D8E2238);
  MEMORY[0x28223BE20](v96);
  v10 = &v92 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE498, &qword_23D8E2230);
  MEMORY[0x28223BE20](v116);
  v12 = &v92 - v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE490, &qword_23D8E2228);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = &v92 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE488, &qword_23D8E2220);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v92 - v14;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE480, &qword_23D8E2218);
  v107 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v103 = &v92 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE568, &qword_23D8E2328);
  v110 = *(v16 - 8);
  v111 = v16;
  MEMORY[0x28223BE20](v16);
  v109 = &v92 - v17;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE478, &qword_23D8E2210);
  MEMORY[0x28223BE20](v113);
  v119 = &v92 - v18;
  v19 = (v1 + *(v3 + 40));
  v20 = *v19;
  v21 = v19[1];
  *&v126 = v20;
  v95 = v21;
  *(&v126 + 1) = v21;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
  sub_23D8DE340();
  v126 = xmmword_23D8E2040;
  sub_23D867E98(v1, v6);
  v22 = *(v4 + 80);
  v23 = (v22 + 16) & ~v22;
  v120 = v5;
  v121 = v22;
  v24 = swift_allocObject();
  v98 = v23;
  sub_23D867F00(v6, v24 + v23);
  sub_23D868BC4();
  sub_23D8DE3D0();
  v117 = v3;
  if (!*(v1 + *(v3 + 28)))
  {
    sub_23D8DC9F0();
    v89 = &qword_27E2ED238;
    v90 = MEMORY[0x277CE73F8];
    v91 = MEMORY[0x277CE73F0];
LABEL_16:
    sub_23D869194(v89, v90, v91);
    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  v25 = v1;
  sub_23D8380E8();

  sub_23D8DC960();

  sub_23D8DC7E0();

  v26 = sub_23D8DEB80();
  v27 = sub_23D8DEB70();

  if (v27)
  {
    v28 = sub_23D8DE220();
  }

  else
  {
    v28 = sub_23D8DE240();
  }

  v29 = v28;
  KeyPath = swift_getKeyPath();
  v122 = v29;
  v31 = sub_23D8DCDC0();
  (*(v97 + 32))(v10, v8, v115);
  v32 = &v10[*(v96 + 36)];
  *v32 = KeyPath;
  v32[1] = v31;
  sub_23D867E98(v25, v6);
  v33 = v98;
  v34 = swift_allocObject();
  sub_23D867F00(v6, v34 + v33);
  sub_23D83C744(v10, v12, &qword_27E2EE4B0, &qword_23D8E2238);
  v35 = &v12[*(v116 + 36)];
  *v35 = sub_23D868C70;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  v122 = v20;
  v123 = v95;
  sub_23D8DE320();
  sub_23D867E98(v25, v6);
  v36 = swift_allocObject();
  sub_23D867F00(v6, v36 + v33);
  v37 = sub_23D8687D8();
  v38 = sub_23D868948();
  v39 = v99;
  v115 = v38;
  sub_23D8DE060();

  sub_23D83C6E4(v12, &qword_27E2EE498, &qword_23D8E2230);
  v40 = *(v25 + *(v117 + 24));
  if (!v40)
  {
    sub_23D8DC430();
    v89 = &unk_27E2F0420;
    v90 = MEMORY[0x277CE7230];
    v91 = MEMORY[0x277CE7228];
    goto LABEL_16;
  }

  v41 = v40;
  v42 = sub_23D8DC380();

  LOBYTE(v126) = v42 & 1;
  sub_23D867E98(v25, v6);
  v43 = swift_allocObject();
  sub_23D867F00(v6, v43 + v33);
  v122 = v116;
  v123 = MEMORY[0x277D85048];
  v124 = v37;
  v125 = v115;
  v116 = MEMORY[0x277CE0E30];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v25;
  v93 = v25;
  v46 = v100;
  v47 = v102;
  sub_23D8DE060();

  (v101)[1](v39, v47);
  v48 = v41;
  v49 = v106;
  sub_23D8DC2A0();
  v101 = v48;

  sub_23D867E98(v45, v6);
  v50 = swift_allocObject();
  sub_23D867F00(v6, v50 + v33);
  v122 = v47;
  v123 = MEMORY[0x277D839B0];
  v124 = OpaqueTypeConformance2;
  v125 = MEMORY[0x277D839C8];
  v102 = swift_getOpaqueTypeConformance2();
  v51 = sub_23D869194(&qword_27E2ED890, MEMORY[0x277CE7208], MEMORY[0x277CE7210]);
  v52 = v103;
  v53 = v105;
  v54 = v112;
  sub_23D8DE060();

  (*(v108 + 8))(v49, v54);
  (*(v104 + 8))(v46, v53);
  v55 = v93;
  v56 = (v93 + *(v117 + 44));
  v57 = v56[1];
  v58 = v56[2];
  v122 = *v56;
  v123 = v57;
  v124 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE420, &qword_23D8E21A0);
  MEMORY[0x23EEF05A0](&v126, v59);
  sub_23D867E98(v55, v6);
  v60 = swift_allocObject();
  sub_23D867F00(v6, v60 + v33);
  v122 = v53;
  v123 = v54;
  v124 = v102;
  v125 = v51;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v109;
  v63 = v118;
  v64 = v115;
  sub_23D8DE060();

  (*(v107 + 8))(v52, v63);
  v65 = 0x800000023D8E61B0;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v66 = qword_27E2F3C80;
  if (qword_27E2F3C80)
  {
    v67 = qword_27E2F3C80;
    v68 = sub_23D8DE830();
    v69 = sub_23D8DE830();
    v70 = [v67 localizedStringForKey:v68 value:0 table:v69];

    v71 = sub_23D8DE870();
    v65 = v72;
  }

  else
  {
    v71 = 0xD000000000000015;
  }

  *&v126 = v71;
  *(&v126 + 1) = v65;
  v122 = v118;
  v123 = MEMORY[0x277D85048];
  v124 = v61;
  v125 = v64;
  swift_getOpaqueTypeConformance2();
  sub_23D83CB18();
  v73 = MEMORY[0x277D837D0];
  v74 = v111;
  sub_23D8DDE10();

  (*(v110 + 8))(v62, v74);
  if (v66)
  {
    v75 = sub_23D8DE830();
    v76 = sub_23D8DE830();
    v77 = [v66 localizedStringForKey:v75 value:0 table:v76];

    sub_23D8DE870();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE250, &qword_23D8E2360);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_23D8E0D60;
  v79 = v101;
  sub_23D8DC2F0();

  v80 = Double.timeDisplayString()();
  *(v78 + 56) = v73;
  v81 = sub_23D8605B0();
  *(v78 + 64) = v81;
  *(v78 + 32) = v80;
  v82 = v79;
  MEMORY[0x23EEEE480]();

  v83 = Double.timeDisplayString()();
  *(v78 + 96) = v73;
  *(v78 + 104) = v81;
  *(v78 + 72) = v83;
  v84 = sub_23D8DE880();
  v86 = v85;

  v122 = v84;
  v123 = v86;
  v87 = v119;
  sub_23D8DCFE0();

  return sub_23D83C6E4(v87, &qword_27E2EE478, &qword_23D8E2210);
}

uint64_t sub_23D865238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DD850();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = sub_23D8DD9F0();
  type metadata accessor for AXRBottomBar(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE320, &qword_23D8E2058);
  sub_23D8DE320();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0558], v4);
  sub_23D8DD840();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  sub_23D8DCC20();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_23D83C67C(a1, a2, &qword_27E2EE438, &qword_23D8E21B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE458, &qword_23D8E2208);
  v22 = a2 + *(result + 36);
  *v22 = v11;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_23D865434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DD9F0();
  sub_23D8DCC20();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_23D83C67C(a1, a2, &qword_27E2EE438, &qword_23D8E21B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE458, &qword_23D8E2208);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_23D8654D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v3 = sub_23D8DCF90();
  v4 = *(v3 - 8);
  v83 = v3;
  v84 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE550, &qword_23D8E2310);
  v75 = *(v82 - 8);
  v7 = MEMORY[0x28223BE20](v82);
  v74 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE558, &qword_23D8E2318);
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v77 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = v65 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v73 = v65 - v16;
  MEMORY[0x28223BE20](v15);
  v81 = v65 - v17;
  v18 = *(a1 + *(type metadata accessor for AXRBottomBar(0) + 24));
  if (v18)
  {
    v19 = v18;
    v67 = v19;
    sub_23D8DC2F0();

    v85 = Double.timeDisplayString()();
    v71 = sub_23D83CB18();
    v20 = sub_23D8DDCB0();
    v22 = v21;
    v24 = v23;
    LODWORD(v85._countAndFlagsBits) = sub_23D8DD800();
    v25 = sub_23D8DDC10();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_23D83CB6C(v20, v22, v24 & 1);

    v85._countAndFlagsBits = v25;
    v85._object = v27;
    LOBYTE(v20) = v29 & 1;
    v86 = v29 & 1;
    v87 = v31;
    v70 = *MEMORY[0x277CDF9D8];
    v32 = v84;
    v33 = *(v84 + 104);
    v68 = v84 + 104;
    v69 = v33;
    v34 = v83;
    v33(v6);
    v35 = MEMORY[0x277CE0BD8];
    v36 = v72;
    sub_23D8DDDC0();
    v37 = *(v32 + 8);
    v84 = v32 + 8;
    v66 = v37;
    v37(v6, v34);
    sub_23D83CB6C(v25, v27, v20);

    v85._countAndFlagsBits = v35;
    v85._object = MEMORY[0x277CE0BC8];
    v65[1] = swift_getOpaqueTypeConformance2();
    v38 = v82;
    sub_23D8DDF80();
    v75 = *(v75 + 8);
    (v75)(v36, v38);
    v39 = v67;
    MEMORY[0x23EEEE480]();

    v85 = Double.timeDisplayString()();
    v40 = sub_23D8DDCB0();
    v42 = v41;
    LOBYTE(v38) = v43;
    LODWORD(v85._countAndFlagsBits) = sub_23D8DD800();
    v44 = sub_23D8DDC10();
    v46 = v45;
    LOBYTE(v35) = v47;
    v49 = v48;
    sub_23D83CB6C(v40, v42, v38 & 1);

    v85._countAndFlagsBits = v44;
    v85._object = v46;
    v86 = v35 & 1;
    v87 = v49;
    v50 = v83;
    v69(v6, v70, v83);
    v51 = v74;
    sub_23D8DDDC0();
    v66(v6, v50);
    sub_23D83CB6C(v44, v46, v35 & 1);

    v52 = v73;
    v53 = v82;
    sub_23D8DDF80();
    (v75)(v51, v53);
    v55 = v78;
    v54 = v79;
    v56 = *(v78 + 16);
    v57 = v76;
    v58 = v81;
    v56(v76, v81, v79);
    v59 = v77;
    v56(v77, v52, v54);
    v60 = v80;
    v56(v80, v57, v54);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE560, &qword_23D8E2320);
    v62 = &v60[*(v61 + 48)];
    *v62 = 0;
    v62[8] = 1;
    v56(&v60[*(v61 + 64)], v59, v54);
    v63 = *(v55 + 8);
    v63(v52, v54);
    v63(v58, v54);
    v63(v59, v54);
    return (v63)(v57, v54);
  }

  else
  {
    sub_23D8DC430();
    sub_23D869194(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D865C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = sub_23D8DD850();
  v108 = *(v75 - 8);
  v4 = MEMORY[0x28223BE20](v75);
  v6 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v66 - v7;
  v9 = type metadata accessor for AXRBottomBar(0);
  v10 = *(a1 + v9[5] + 8);
  v11 = (a1 + v9[9]);
  v12 = *v11;
  v13 = *(v11 + 1);
  v98 = v12;
  LOBYTE(v158) = v12;
  v97 = v13;
  *(&v158 + 1) = v13;

  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE340();
  v14 = v177;
  v15 = v178;

  v111 = v10;
  sub_23D8B3250(v14, *(&v14 + 1), v15, v207);
  v16 = v9[6];
  v115 = a1;
  v17 = *(a1 + v16);
  if (!v17)
  {
    sub_23D8DC430();
    v63 = &unk_27E2F0420;
    v64 = MEMORY[0x277CE7230];
    v65 = MEMORY[0x277CE7228];
LABEL_10:
    sub_23D869194(v63, v64, v65);
    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  v100 = a2;
  v18 = sub_23D8DC430();
  v19 = sub_23D869194(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  v99 = v17;
  v114 = v17;
  v95 = sub_23D8DCB10();
  v206 = v208;
  v205 = v207[5];
  v204 = v207[4];
  v202 = v207[2];
  v203 = v207[3];
  v201 = v207[1];
  v200 = v207[0];
  v116 = v9;
  v20 = *(v115 + v9[7]);
  if (!v20)
  {
    sub_23D8DC9F0();
    v63 = &qword_27E2ED238;
    v64 = MEMORY[0x277CE73F8];
    v65 = MEMORY[0x277CE73F0];
    goto LABEL_10;
  }

  v21 = sub_23D8DC9F0();
  v22 = sub_23D869194(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);

  v109 = v20;
  v92 = sub_23D8DCB10();
  v197 = v204;
  v198 = v205;
  v199 = v206;
  v193 = v200;
  v194 = v201;
  v196 = v203;
  v195 = v202;
  KeyPath = swift_getKeyPath();
  v91 = swift_allocObject();
  *(v91 + 16) = 1;
  v105 = v22;
  v23 = sub_23D8DD140();
  v93 = v24;
  v94 = v23;
  v102 = sub_23D8DC900();
  v101 = sub_23D869194(&qword_27E2ED250, MEMORY[0x277CE73E8], MEMORY[0x277CE73E0]);

  *&v89 = sub_23D8DCEF0();
  *(&v89 + 1) = v25;
  v106 = v18;
  v26 = sub_23D8DD140();
  v87 = v27;
  v88 = v26;
  v77 = v114;
  v86 = sub_23D8DCB10();

  v104 = v21;
  v85 = sub_23D8DCB10();
  v114 = v116[15];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE320, &qword_23D8E2058);
  sub_23D8DE320();
  v113 = *MEMORY[0x277CE0558];
  v107 = v19;
  v28 = v108;
  v30 = v108 + 104;
  v29 = *(v108 + 104);
  v31 = v75;
  v29(v6);
  v112 = v30;
  LODWORD(v84) = sub_23D8DD840();
  v33 = *(v28 + 8);
  v32 = v28 + 8;
  v116 = v33;
  (v33)(v6, v31);
  (v33)(v8, v31);
  sub_23D8DE320();
  v34 = v113;
  (v29)(v6, v113, v31);
  v103 = v29;
  sub_23D8DD840();
  v35 = v116;
  (v116)(v6, v31);
  (v35)(v8, v31);
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  sub_23D8DE320();
  (v29)(v6, v34, v31);
  LOBYTE(v29) = sub_23D8DD840();
  v36 = v116;
  (v116)(v6, v31);
  (v36)(v8, v31);
  v37 = 0x4045000000000000;
  if (v29)
  {
    v37 = 0x4038000000000000;
  }

  v82 = v37;
  v38 = sub_23D8DD140();
  v83 = v39;
  v84 = v38;

  v40 = sub_23D8DCEF0();
  v80 = v41;
  v81 = v40;
  v42 = sub_23D8DD140();
  v78 = v43;
  v79 = v42;
  v69 = v77;
  v77 = sub_23D8DCB10();

  v76 = sub_23D8DCB10();
  sub_23D8DE320();
  v44 = v113;
  v45 = v103;
  (v103)(v6, v113, v31);
  LODWORD(v74) = sub_23D8DD840();
  v46 = v116;
  (v116)(v6, v31);
  (v46)(v8, v31);
  sub_23D8DE320();
  v45(v6, v44, v31);
  sub_23D8DD840();
  v47 = v116;
  (v116)(v6, v31);
  (v47)(v8, v31);
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  sub_23D8DE320();
  (v103)(v6, v113, v31);
  LOBYTE(v46) = sub_23D8DD840();
  v48 = v116;
  v108 = v32;
  (v116)(v6, v31);
  (v48)(v8, v31);
  v49 = 0x4045000000000000;
  if (v46)
  {
    v49 = 0x4038000000000000;
  }

  v72 = v49;
  v50 = sub_23D8DD140();
  v73 = v51;
  v74 = v50;

  v52 = sub_23D8DCEF0();
  v101 = v53;
  v102 = v52;
  v54 = sub_23D8DD140();
  v70 = v55;
  v71 = v54;
  v67 = v69;
  v69 = sub_23D8DCB10();

  v68 = sub_23D8DCB10();
  sub_23D8DE320();
  v56 = v103;
  (v103)(v6, v113, v31);
  v66[1] = sub_23D8DD840();
  v57 = v116;
  (v116)(v6, v31);
  (v57)(v8, v31);
  sub_23D8DE320();
  (v56)(v6, v113, v31);
  sub_23D8DD840();
  (v57)(v6, v31);
  (v57)(v8, v31);
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  LOBYTE(v158) = v98;
  *(&v158 + 1) = v97;
  sub_23D8DE340();
  sub_23D8B3250(v177, *(&v177 + 1), v178, v209);
  v58 = v67;
  v59 = sub_23D8DCB10();
  v60 = v109;

  v61 = sub_23D8DCB10();
  *(&v164 + 1) = v95;
  *(&v165 + 1) = v92;
  *(&v166 + 1) = KeyPath;
  *&v164 = v199;
  *&v165 = v99;
  *&v166 = v60;
  v162 = v197;
  v163 = v198;
  v158 = v193;
  v159 = v194;
  v161 = v196;
  v160 = v195;
  *&v167 = sub_23D83B780;
  *(&v167 + 1) = v91;
  v168[0] = &v158;
  v168[1] = &v156;
  v148 = v89;
  v156 = 0;
  v157 = 1;
  *&v149 = v88;
  *(&v149 + 1) = v87;
  *&v150 = v94;
  *(&v150 + 1) = v93;
  *&v151 = v86;
  *(&v151 + 1) = v99;
  *&v152 = v85;
  *(&v152 + 1) = v60;
  v153 = v190;
  v154 = v191;
  v155 = v192;
  v146 = v82;
  v147 = 0;
  v168[2] = &v148;
  v168[3] = &v146;
  *&v138 = v81;
  *(&v138 + 1) = v80;
  *&v139 = v79;
  *(&v139 + 1) = v78;
  *&v140 = v84;
  *(&v140 + 1) = v83;
  *&v141 = v77;
  *(&v141 + 1) = v99;
  *&v142 = v76;
  *(&v142 + 1) = v60;
  v143 = v187;
  v144 = v188;
  v145 = v189;
  v136 = v72;
  v137 = 0;
  v168[4] = &v138;
  v168[5] = &v136;
  *&v128 = v102;
  *(&v128 + 1) = v101;
  *&v129 = v71;
  *(&v129 + 1) = v70;
  *&v130 = v74;
  *(&v130 + 1) = v73;
  *&v131 = v69;
  *(&v131 + 1) = v99;
  *&v132 = v68;
  *(&v132 + 1) = v60;
  v133 = v169;
  v134 = v170;
  v135 = v171;
  v126 = 0;
  v127 = 1;
  v168[6] = &v128;
  v168[7] = &v126;
  v121 = v209[4];
  v122 = v209[5];
  v117 = v209[0];
  v118 = v209[1];
  v119 = v209[2];
  v120 = v209[3];
  *&v123 = v210;
  *(&v123 + 1) = v59;
  *&v124 = v99;
  *(&v124 + 1) = v61;
  v125 = v60;
  v168[8] = &v117;
  sub_23D8623B8(v168, v100);
  v172[6] = v123;
  v172[7] = v124;
  v173 = v125;
  v172[2] = v119;
  v172[3] = v120;
  v172[5] = v122;
  v172[4] = v121;
  v172[1] = v118;
  v172[0] = v117;
  sub_23D83C6E4(v172, &qword_27E2EE528, &qword_23D8E22E8);
  v174[4] = v132;
  v174[5] = v133;
  v174[6] = v134;
  v174[7] = v135;
  v174[0] = v128;
  v174[1] = v129;
  v174[2] = v130;
  v174[3] = v131;
  sub_23D83C6E4(v174, &qword_27E2EE530, &qword_23D8E22F0);
  v175[4] = v142;
  v175[5] = v143;
  v175[6] = v144;
  v175[7] = v145;
  v175[0] = v138;
  v175[1] = v139;
  v175[2] = v140;
  v175[3] = v141;
  sub_23D83C6E4(v175, &qword_27E2EE538, &qword_23D8E22F8);
  v176[4] = v152;
  v176[5] = v153;
  v176[6] = v154;
  v176[7] = v155;
  v176[0] = v148;
  v176[1] = v149;
  v176[2] = v150;
  v176[3] = v151;
  sub_23D83C6E4(v176, &qword_27E2EE540, &qword_23D8E2300);
  v183 = v164;
  v184 = v165;
  v185 = v166;
  v186 = v167;
  v179 = v160;
  v180 = v161;
  v181 = v162;
  v182 = v163;
  v177 = v158;
  v178 = v159;
  return sub_23D83C6E4(&v177, &qword_27E2EE548, &qword_23D8E2308);
}

uint64_t sub_23D866A40()
{
  v0 = sub_23D8DD090();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v1 + 20);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_23D8DD4E0();
  (*(*(v6 - 8) + 104))(&v3->i8[v4], v5, v6);
  *v3 = vdupq_n_s64(0x4041000000000000uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE368, &qword_23D8E20E8);
  sub_23D867D20();
  sub_23D869194(&qword_27E2EE3D0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  sub_23D8DDCC0();
  return sub_23D868410(v3);
}

uint64_t sub_23D866B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE3B8, &qword_23D8E2138) + 36);
  sub_23D8DE5A0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED568, &qword_23D8E2140);
  v6 = (v4 + *(v5 + 52));
  v7 = *(sub_23D8DD090() + 20);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_23D8DD4E0();
  (*(*(v9 - 8) + 104))(&v6->i8[v7], v8, v9);
  *v6 = vdupq_n_s64(0x4041000000000000uLL);
  *(v4 + *(v5 + 56)) = 256;
  return sub_23D83C67C(a1, a2, &qword_27E2EE368, &qword_23D8E20E8);
}

uint64_t sub_23D866C9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_23D8DD850();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_23D8628D4(v2);
  v10 = *(v4 + 48);
  if (v10(v2, 1, v3) == 1)
  {
    (*(v4 + 104))(v9, *MEMORY[0x277CE0558], v3);
    if (v10(v2, 1, v3) != 1)
    {
      sub_23D83C6E4(v2, &qword_27E2EE9E0, &qword_23D8E26D0);
    }
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
  }

  type metadata accessor for AXRBottomBar(0);
  (*(v4 + 16))(v7, v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE320, &qword_23D8E2058);
  sub_23D8DE330();
  return (*(v4 + 8))(v9, v3);
}

void *sub_23D866ED8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_23D8DC170();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = type metadata accessor for AXRBottomBar(0);
  v11 = (a3 + v10[12]);
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v11) = *(v11 + 16);
  v35 = v12;
  v36 = v13;
  LOBYTE(v37) = v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED798, &unk_23D8E11A0);
  result = MEMORY[0x23EEF05A0](&v33, v14);
  if ((v33 & 1) == 0 && *(v9 + 16))
  {
    (*(v6 + 16))(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);
    v16 = sub_23D8DC160();
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = (a3 + v10[16]);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v35 = *v19;
    v36 = v21;
    v37 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE018, &unk_23D8E2190);
    sub_23D8DE320();
    if (v16 == v33 && v18 == v34)
    {
    }

    else
    {
      v24 = sub_23D8DED20();

      if ((v24 & 1) == 0)
      {
        v25 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v25 = v16 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {
          v26 = (a3 + v10[10]);
          v27 = *v26;
          v28 = v26[1];
          v35 = v27;
          v36 = v28;
          v33 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
          sub_23D8DE330();
          v29 = (a3 + v10[11]);
          v30 = v29[1];
          v31 = v29[2];
          v35 = *v29;
          v36 = v30;
          v37 = v31;
          v33 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE420, &qword_23D8E21A0);
          sub_23D8DE460();
          v35 = v20;
          v36 = v21;
          v37 = v22;
          v33 = v16;
          v34 = v18;
          return sub_23D8DE330();
        }
      }
    }
  }

  return result;
}

double sub_23D86717C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AXRBottomBar(0);
  sub_23D8DE650();
  sub_23D8DCE60();

  return result;
}

uint64_t sub_23D867200(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_23D8DD850();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  sub_23D83C67C(a2, v5, &qword_27E2EE9E0, &qword_23D8E26D0);
  v13 = *(v7 + 48);
  if (v13(v5, 1, v6) == 1)
  {
    (*(v7 + 104))(v12, *MEMORY[0x277CE0558], v6);
    if (v13(v5, 1, v6) != 1)
    {
      sub_23D83C6E4(v5, &qword_27E2EE9E0, &qword_23D8E26D0);
    }
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
  }

  type metadata accessor for AXRBottomBar(0);
  (*(v7 + 16))(v10, v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE320, &qword_23D8E2058);
  sub_23D8DE330();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_23D867464(uint64_t a1)
{
  v2 = type metadata accessor for AXRBottomBar(0);
  v3 = (a1 + *(v2 + 44));
  v4 = v3[1];
  v5 = v3[2];
  v12 = *v3;
  v13 = v4;
  v14 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE420, &qword_23D8E21A0);
  MEMORY[0x23EEF05A0](&v11, v6);
  v7 = (a1 + *(v2 + 40));
  v8 = *v7;
  v9 = v7[1];
  v12 = v8;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
  return sub_23D8DE330();
}

void *sub_23D867514(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = type metadata accessor for AXRBottomBar(0);
  v6 = (a3 + *(v5 + 48));
  v7 = *v6;
  v8 = v6[1];
  LOBYTE(v6) = *(v6 + 16);
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED798, &unk_23D8E11A0);
  result = MEMORY[0x23EEF05A0](&v12, v9);
  if (v12 == 1)
  {
    v11 = (a3 + *(v5 + 52));
    if (*v11)
    {
      return (*v11)(result, v4);
    }
  }

  return result;
}

void sub_23D8675C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for AXRBottomBar(0);
  v5 = (a3 + v4[12]);
  v6 = *v5;
  v7 = v5[1];
  LOBYTE(v5) = *(v5 + 16);
  v22 = v6;
  v23 = v7;
  v24 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED798, &unk_23D8E11A0);
  MEMORY[0x23EEF05A0](&v21, v8);
  if ((LOBYTE(v21) & 1) == 0)
  {
    v9 = *(a3 + v4[6]);
    if (v9)
    {
      v10 = v9;
      v11 = sub_23D8DC380();

      if (v11)
      {
        v12 = v10;
        sub_23D8DC2F0();
        v14 = v13;

        v15 = v12;
        v16 = MEMORY[0x23EEEE430]();

        v17 = v14 / v16;
        if (v14 / v16 < 0.0)
        {
          v17 = 0.0;
        }

        v18 = (a3 + v4[10]);
        v19 = *v18;
        v20 = v18[1];
        if (v17 > 1.0)
        {
          v17 = 1.0;
        }

        v23 = v20;
        v21 = v17;
        v22 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
        sub_23D8DE330();
      }
    }

    else
    {
      sub_23D8DC430();
      sub_23D869194(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
      sub_23D8DD120();
      __break(1u);
    }
  }
}

void *sub_23D867748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23D8DC250();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277CE71F8], v4);
  sub_23D869194(&qword_27E2EDE60, MEMORY[0x277CE7208], MEMORY[0x277CE7218]);
  sub_23D8DE980();
  sub_23D8DE980();
  if (v19 == v21)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v8 = sub_23D8DED20();
    (*(v5 + 8))(v7, v4);

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  v10 = type metadata accessor for AXRBottomBar(0);
  v11 = (a3 + *(v10 + 44));
  v12 = v11[1];
  v13 = v11[2];
  *&v19 = *v11;
  *(&v19 + 1) = v12;
  v20 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE420, &qword_23D8E21A0);
  result = MEMORY[0x23EEF05A0](&v21, v14);
  if (*&v21 > 0.95)
  {
    v15 = (a3 + *(v10 + 40));
    v16 = *v15;
    v17 = v15[1];
    *&v19 = v16;
    *(&v19 + 1) = v17;
    *&v21 = 0x3FF0000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
    return sub_23D8DE330();
  }

  return result;
}

void *sub_23D8679A8(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = sub_23D8DC250();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31[-1] - v10;
  v12 = *a2;
  v13 = type metadata accessor for AXRBottomBar(0);
  v14 = (a3 + v13[12]);
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v14) = *(v14 + 16);
  v32 = v15;
  v33 = v16;
  v34 = v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED798, &unk_23D8E11A0);
  result = MEMORY[0x23EEF05A0](v31, v17);
  if ((LOBYTE(v31[0]) & 1) == 0)
  {
    v19 = *(a3 + v13[6]);
    if (!v19)
    {
      sub_23D8DC430();
      sub_23D869194(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
      result = sub_23D8DD120();
      __break(1u);
      return result;
    }

    v20 = v19;
    sub_23D8DC2A0();

    (*(v6 + 104))(v9, *MEMORY[0x277CE71F8], v5);
    sub_23D869194(&qword_27E2EDE60, MEMORY[0x277CE7208], MEMORY[0x277CE7218]);
    sub_23D8DE980();
    sub_23D8DE980();
    if (v32 == *&v31[0] && v33 == *&v31[1])
    {
      v21 = *(v6 + 8);
      v21(v9, v5);
      v21(v11, v5);
    }

    else
    {
      v22 = sub_23D8DED20();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v11, v5);

      if ((v22 & 1) == 0)
      {
LABEL_8:
        v27 = (a3 + v13[10]);
        v28 = *v27;
        v29 = v27[1];
        v32 = v28;
        v33 = v29;
        v31[0] = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
        return sub_23D8DE330();
      }
    }

    v24 = (a3 + v13[10]);
    v25 = *v24;
    v26 = v24[1];
    v32 = v25;
    v33 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
    result = sub_23D8DE320();
    if (v12 < v31[0])
    {
      return result;
    }

    goto LABEL_8;
  }

  return result;
}

unint64_t sub_23D867D20()
{
  result = qword_27E2EE3C0;
  if (!qword_27E2EE3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE368, &qword_23D8E20E8);
    sub_23D835AD0(&qword_27E2EE3C8, &qword_27E2EE360, &qword_23D8E20E0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE3C0);
  }

  return result;
}

unint64_t sub_23D867DD8()
{
  result = qword_27E2EE3D8;
  if (!qword_27E2EE3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE3B8, &qword_23D8E2138);
    sub_23D867D20();
    sub_23D835AD0(&qword_27E2EE3E0, &qword_27E2ED568, &qword_23D8E2140, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE3D8);
  }

  return result;
}

uint64_t sub_23D867E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRBottomBar(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D867F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRBottomBar(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D867F94()
{
  result = qword_27E2EE3F0;
  if (!qword_27E2EE3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE390, &qword_23D8E2110);
    sub_23D868020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE3F0);
  }

  return result;
}

unint64_t sub_23D868020()
{
  result = qword_27E2EE3F8;
  if (!qword_27E2EE3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE388, &qword_23D8E2108);
    sub_23D8680D8();
    sub_23D835AD0(&qword_27E2EE410, &qword_27E2EE3E8, &unk_23D8E2180, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE3F8);
  }

  return result;
}

unint64_t sub_23D8680D8()
{
  result = qword_27E2EE400;
  if (!qword_27E2EE400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE380, &qword_23D8E2100);
    sub_23D868164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE400);
  }

  return result;
}

unint64_t sub_23D868164()
{
  result = qword_27E2EE408;
  if (!qword_27E2EE408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE378, &qword_23D8E20F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE368, &qword_23D8E20E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE3B0, &qword_23D8E2130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE3B8, &qword_23D8E2138);
    sub_23D867D20();
    sub_23D8DD090();
    sub_23D869194(&qword_27E2EE3D0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    swift_getOpaqueTypeConformance2();
    sub_23D867DD8();
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(qword_27E2ED678, &qword_27E2ED570, &qword_23D8E0D00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE408);
  }

  return result;
}

unint64_t sub_23D868340()
{
  result = qword_27E2EE418;
  if (!qword_27E2EE418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D869194(&qword_27E2EEA10, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE418);
  }

  return result;
}

uint64_t sub_23D868410(uint64_t a1)
{
  v2 = sub_23D8DD090();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D86847C()
{
  result = qword_27E2EE460;
  if (!qword_27E2EE460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE438, &qword_23D8E21B8);
    sub_23D868508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE460);
  }

  return result;
}

unint64_t sub_23D868508()
{
  result = qword_27E2EE468;
  if (!qword_27E2EE468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE448, &qword_23D8E21C8);
    sub_23D8685C0();
    sub_23D835AD0(&qword_27E2EE4E0, &qword_27E2EE450, &qword_23D8E21D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE468);
  }

  return result;
}

unint64_t sub_23D8685C0()
{
  result = qword_27E2EE470;
  if (!qword_27E2EE470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE478, &qword_23D8E2210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE480, &qword_23D8E2218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE488, &qword_23D8E2220);
    sub_23D8DC250();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE490, &qword_23D8E2228);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE498, &qword_23D8E2230);
    sub_23D8687D8();
    sub_23D868948();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D869194(&qword_27E2ED890, MEMORY[0x277CE7208], MEMORY[0x277CE7210]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D869194(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE470);
  }

  return result;
}

unint64_t sub_23D8687D8()
{
  result = qword_27E2EE4A0;
  if (!qword_27E2EE4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE498, &qword_23D8E2230);
    sub_23D868864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE4A0);
  }

  return result;
}

unint64_t sub_23D868864()
{
  result = qword_27E2EE4A8;
  if (!qword_27E2EE4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE4B0, &qword_23D8E2238);
    sub_23D835AD0(&qword_27E2EE4B8, &qword_27E2EE4C0, &unk_23D8E2240, MEMORY[0x277CDF048]);
    sub_23D835AD0(&qword_27E2EE4C8, &qword_27E2EE4D0, &qword_23D8E3A40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE4A8);
  }

  return result;
}

unint64_t sub_23D868948()
{
  result = qword_27E2EE4D8;
  if (!qword_27E2EE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE4D8);
  }

  return result;
}

unint64_t sub_23D86899C()
{
  result = qword_27E2EE4E8;
  if (!qword_27E2EE4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE458, &qword_23D8E2208);
    sub_23D86847C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE4E8);
  }

  return result;
}

uint64_t sub_23D868A28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D8DD300();
  *a1 = result;
  return result;
}

uint64_t sub_23D868A54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D8DD300();
  *a1 = result;
  return result;
}

uint64_t sub_23D868AD8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEEF470]();
  *a1 = result;
  return result;
}

uint64_t sub_23D868B48(char a1)
{
  v3 = type metadata accessor for AXRBottomBar(0);
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = (v1 + *(result + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
  if (*v6)
  {
    return (*v6)(a1 & 1);
  }

  return result;
}

unint64_t sub_23D868BC4()
{
  result = qword_27E2EE570;
  if (!qword_27E2EE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE570);
  }

  return result;
}

uint64_t sub_23D868C18@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEEF470]();
  *a1 = result;
  return result;
}

uint64_t sub_23D868C88(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AXRBottomBar(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_23D868D14(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXRBottomBar(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_23D8675C0(a1, a2, v6);
}

uint64_t sub_23D868DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AXRBottomBar(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for AXRBottomBar(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D8DD850();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
  }

  if (*(v5 + v1[8]) >= 2uLL)
  {
  }

  if (*(v5 + v1[13]))
  {
  }

  if (*(v5 + v1[14]))
  {
  }

  v8 = v5 + v1[15];
  v9 = sub_23D8DD850();
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE320, &qword_23D8E2058);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D869100(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AXRBottomBar(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_23D869194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23D8691E0()
{
  result = qword_27E2EE598;
  if (!qword_27E2EE598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE5A0, &qword_23D8E2388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE398, &qword_23D8E2118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE9E0, &qword_23D8E26D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE390, &qword_23D8E2110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED7D8, &qword_23D8E11D0);
    sub_23D867F94();
    sub_23D853084();
    swift_getOpaqueTypeConformance2();
    sub_23D868340();
    swift_getOpaqueTypeConformance2();
    sub_23D869194(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE598);
  }

  return result;
}

unint64_t AXRMoreActions.image.getter()
{
  v1 = *v0;
  v2 = 0x6E6F687064616568;
  if (v1)
  {
    v2 = 0xD000000000000010;
  }

  if (v1 == 2)
  {
    return 0x6D726F6674786574;
  }

  else
  {
    return v2;
  }
}

uint64_t AXRMoreActions.title.getter(__n128 a1)
{
  v2 = 0xD000000000000017;
  if (*v1 == 2)
  {
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    if (!qword_27E2F3C80)
    {
      return 0xD000000000000014;
    }

    goto LABEL_9;
  }

  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
LABEL_9:
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v2 = sub_23D8DE870();
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for AXRMoreActions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AXRMoreActions(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_23D8696D4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_23D8696F0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_23D86972C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23D869870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AXRBackgroundColorSelectionView(uint64_t a1)
{
  result = qword_27E2EE5A8;
  if (!qword_27E2EE5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D8699DC(uint64_t a1)
{
  sub_23D857704(319, &qword_27E2ED618, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_23D857704(319, &qword_27E2ED228, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_23D8366C8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23D869ACC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23D83C67C(v2, &v14 - v9, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCCB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_23D869CCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AXRBackgroundColorSelectionView(0);
  sub_23D83C67C(v1 + *(v10 + 20), v9, &qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCF90();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D869ED4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE618, &unk_23D8E3490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D8E23D0;
  *(inited + 32) = sub_23D8DE220();
  *(inited + 40) = sub_23D8DE1B0();
  *(inited + 48) = sub_23D8DE1C0();
  *(inited + 56) = sub_23D8DE1D0();
  *(inited + 64) = sub_23D8DE240();
  v5 = v0;
  v2 = sub_23D8A5668(sub_23D86C2CC, &v4, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2 & 1;
}

uint64_t sub_23D869FA4(uint64_t *a1, uint64_t a2)
{
  sub_23D86C2EC();

  sub_23D8DE2A0();
  if (*(a2 + *(type metadata accessor for AXRBackgroundColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    v3 = sub_23D8DC810();

    if (!v3)
    {
      sub_23D8DE220();
    }

    sub_23D8DE2A0();
    v4 = sub_23D8DE180();

    return v4 & 1;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D86A104@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_23D8DCCB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5B8, &unk_23D8E2470);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v21 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5C0, &unk_23D8E3400);
  sub_23D835AD0(&qword_27E2EE5C8, &qword_27E2EE5C0, &unk_23D8E3400, MEMORY[0x277CE14C0]);
  sub_23D8DDBC0();
  if (*(v1 + *(type metadata accessor for AXRBackgroundColorSelectionView(0) + 24)))
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v10 = sub_23D8DEB80();
    v11 = sub_23D8DEB70();

    v12 = MEMORY[0x277CDF3D0];
    if ((v11 & 1) == 0)
    {
      v12 = MEMORY[0x277CDF3C0];
    }

    (*(v3 + 104))(v5, *v12, v2);
    KeyPath = swift_getKeyPath();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5D0, &unk_23D8E24B0);
    v15 = v20;
    v16 = (v20 + *(v14 + 36));
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v3 + 32))(v16 + *(v17 + 28), v5, v2);
    *v16 = KeyPath;
    return (*(v7 + 32))(v15, v9, v6);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D86A43C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5D8, &unk_23D8E24C0);
  v3 = *(v32 - 8);
  v4 = MEMORY[0x28223BE20](v32);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5E0, &unk_23D8E3410);
  v31 = *(v9 - 8);
  v10 = v31;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5E8, &unk_23D8E24D0);
  sub_23D86BE68();
  v30 = v15;
  sub_23D8DE520();
  v34 = a1;
  type metadata accessor for AXRCustomizationColorButton(0);
  sub_23D86BF20(&qword_27E2EE608, type metadata accessor for AXRCustomizationColorButton, &unk_23D8E17FC);
  v16 = v8;
  v28 = v8;
  sub_23D8DE520();
  v17 = *(v10 + 16);
  v29 = v9;
  v17(v13, v15, v9);
  v18 = *(v3 + 16);
  v19 = v16;
  v20 = v32;
  v18(v6, v19, v32);
  v21 = v33;
  v17(v33, v13, v9);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE610, &qword_23D8E24E0);
  v23 = v6;
  v18(&v21[*(v22 + 48)], v6, v20);
  v24 = *(v3 + 8);
  v24(v28, v20);
  v25 = *(v31 + 8);
  v26 = v29;
  v25(v30, v29);
  v24(v23, v20);
  return (v25)(v13, v26);
}

uint64_t sub_23D86A78C(uint64_t a1)
{
  v2 = type metadata accessor for AXRBackgroundColorSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE618, &unk_23D8E3490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23D8E23D0;
  *(v5 + 32) = sub_23D8DE220();
  *(v5 + 40) = sub_23D8DE1B0();
  *(v5 + 48) = sub_23D8DE1C0();
  *(v5 + 56) = sub_23D8DE1D0();
  *(v5 + 64) = sub_23D8DE240();
  v9[1] = v5;
  swift_getKeyPath();
  sub_23D86BF68(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_23D86BFD0(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE628, &unk_23D8E2570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE600, &unk_23D8E3420);
  sub_23D835AD0(&qword_27E2EE630, &qword_27E2EE628, &unk_23D8E2570, MEMORY[0x277D83980]);
  sub_23D86C2EC();
  sub_23D835AD0(&qword_27E2EE5F8, &qword_27E2EE600, &unk_23D8E3420, MEMORY[0x277CDF028]);
  return sub_23D8DE4C0();
}

double sub_23D86A9CC(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRBackgroundColorSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v16 = *a1;
  v7 = v16;
  sub_23D86C2EC();

  v8 = sub_23D8DE2A0();
  sub_23D86BF68(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_23D86BFD0(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v13 = v7;
  v14 = a2;
  v15 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE638, &unk_23D8E34C0);
  sub_23D835AD0(&qword_27E2EE640, &qword_27E2EE638, &unk_23D8E34C0, MEMORY[0x277CE1138]);
  sub_23D8DE360();

  return result;
}

uint64_t sub_23D86ABA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_23D8DC510();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for AXRBackgroundColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    sub_23D8DC660();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D86AD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_23D8DD420();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE648, &unk_23D8E2580);
  return sub_23D86ADB8(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_23D86ADB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE650, &unk_23D8E34D0);
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x28223BE20](v7);
  v91 = &v82 - v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  v9 = MEMORY[0x28223BE20](v90);
  v96 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v82 - v12;
  MEMORY[0x28223BE20](v11);
  v95 = &v82 - v13;
  v14 = sub_23D8DCCB0();
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v84 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v82 - v17;
  v18 = sub_23D8DCF90();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8380E8();
  sub_23D8DEB40();
  v104 = sub_23D8DE130();
  sub_23D8DCD60();
  v22 = v151;
  v98 = v153;
  v99 = v152;
  v23 = v154;
  v97 = v155;
  v24 = v156;
  v25 = sub_23D8DE5F0();
  v102 = v26;
  v103 = v25;
  v27 = sub_23D8DE5F0();
  v100 = v28;
  v101 = v27;
  v106 = a1;

  v105 = a2;
  sub_23D869CCC(v21);
  v29 = sub_23D8DCF80();
  v30 = *(v19 + 8);
  v30(v21, v18);
  if (v29)
  {
    v31 = [objc_opt_self() mainScreen];
    [v31 bounds];
  }

  sub_23D869CCC(v21);
  v32 = sub_23D8DCF80();
  v30(v21, v18);
  if (v32)
  {
    v33 = [objc_opt_self() mainScreen];
    [v33 &selRef_scrollViewWillBeginDragging_];
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v88 = sub_23D8DDA30();
  sub_23D8DCC20();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v149 = 0;
  v120 = sub_23D8DE1A0();
  v121 = v42;
  sub_23D83CB18();
  v83 = sub_23D8DDCB0();
  v44 = v43;
  v46 = v45;
  v85 = v47;
  v48 = v82;
  sub_23D869ACC(v82);
  v49 = v86;
  v50 = v87;
  v51 = v84;
  (*(v86 + 104))(v84, *MEMORY[0x277CDF3C0], v87);
  v52 = sub_23D8DCCA0();
  v53 = *(v49 + 8);
  v53(v51, v50);
  v53(v48, v50);
  if (v52)
  {
    v54 = sub_23D8DE240();
  }

  else
  {
    v54 = sub_23D8DE220();
  }

  v55 = v91;
  v120 = v54;
  v56 = v83;
  v84 = sub_23D8DDC10();
  v87 = v57;
  v59 = v58;
  v61 = v60;
  sub_23D83CB6C(v56, v44, v46 & 1);

  v120 = sub_23D8DE2C0();
  sub_23D8DDF80();

  if (*(v105 + *(type metadata accessor for AXRBackgroundColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    v62 = sub_23D8DC650();

    v91 = v61;
    LODWORD(v86) = v59;
    v63 = v84;
    if (!v62)
    {
      v62 = sub_23D8DE220();
    }

    v120 = v62;
    sub_23D86C2EC();
    sub_23D8DE2A0();
    v64 = sub_23D8DE180();

    if (v64)
    {
      v65 = 1.0;
    }

    else
    {
      v65 = 0.0;
    }

    v66 = v89;
    (*(v93 + 32))(v89, v55, v94);
    *(v66 + *(v90 + 36)) = v65;
    v67 = v95;
    sub_23D86C79C(v66, v95);
    v107 = v146;
    v108 = v147;
    v109 = v148;
    v68 = v96;
    sub_23D86C80C(v67, v96);
    *&v110 = v106;
    WORD4(v110) = 256;
    *(&v110 + 10) = v159;
    HIWORD(v110) = v160;
    *&v111 = v22;
    *(&v111 + 1) = __PAIR64__(v98, v99);
    *&v112 = v23;
    *(&v112 + 1) = v97;
    *&v113 = v24;
    *(&v113 + 1) = v104;
    LOWORD(v114) = 256;
    *(&v114 + 2) = v157;
    WORD3(v114) = v158;
    *(&v114 + 1) = v103;
    *&v115 = v102;
    *(&v115 + 1) = v101;
    *&v116[0] = v100;
    *(v116 + 8) = v146;
    *(&v116[2] + 8) = v148;
    *(&v116[1] + 8) = v147;
    v69 = v88;
    BYTE8(v116[3]) = v88;
    *(&v116[3] + 9) = *v150;
    HIDWORD(v116[3]) = *&v150[3];
    *&v117 = v35;
    *(&v117 + 1) = v37;
    *&v118 = v39;
    *(&v118 + 1) = v41;
    v119 = 0;
    v70 = v116[3];
    v71 = v117;
    v72 = v118;
    *(a4 + 192) = 0;
    *(a4 + 160) = v71;
    *(a4 + 176) = v72;
    v73 = v110;
    v74 = v111;
    v75 = v113;
    *(a4 + 32) = v112;
    *(a4 + 48) = v75;
    v76 = v114;
    *a4 = v73;
    *(a4 + 16) = v74;
    v77 = v116[1];
    *(a4 + 128) = v116[2];
    *(a4 + 144) = v70;
    v78 = v115;
    *(a4 + 96) = v116[0];
    *(a4 + 112) = v77;
    *(a4 + 64) = v76;
    *(a4 + 80) = v78;
    v79 = v87;
    *(a4 + 200) = v63;
    *(a4 + 208) = v79;
    LOBYTE(v66) = v86 & 1;
    *(a4 + 216) = v86 & 1;
    *(a4 + 224) = v91;
    *(a4 + 232) = 0;
    *(a4 + 240) = 1;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE660, &unk_23D8E34E0);
    sub_23D86C80C(v68, a4 + *(v80 + 80));
    sub_23D83C67C(&v110, &v120, &qword_27E2EE668, &qword_23D8E25A0);
    sub_23D834028(v63, v79, v66);

    sub_23D86C87C(v67);
    sub_23D86C87C(v68);
    sub_23D83CB6C(v63, v79, v66);

    v120 = v106;
    LOWORD(v121) = 256;
    *(&v121 + 2) = v159;
    HIWORD(v121) = v160;
    v122 = v22;
    v123 = v99;
    v124 = v98;
    v125 = v23;
    v126 = v97;
    v127 = v24;
    v128 = v104;
    v129 = 256;
    v130 = v157;
    v131 = v158;
    v132 = v103;
    v133 = v102;
    v134 = v101;
    v135 = v100;
    v136 = v107;
    v137 = v108;
    v138 = v109;
    v139 = v69;
    *v140 = *v150;
    *&v140[3] = *&v150[3];
    v141 = v35;
    v142 = v37;
    v143 = v39;
    v144 = v41;
    v145 = 0;
    return sub_23D86C8E4(&v120);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void *sub_23D86B780@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AXRBackgroundColorSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = 0x800000023D8E6230;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v8 = 0xD000000000000010;
  if (qword_27E2F3C80)
  {
    v9 = qword_27E2F3C80;
    v10 = sub_23D8DE830();
    v11 = sub_23D8DE830();
    v12 = v5;
    v13 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v8 = sub_23D8DE870();
    v7 = v14;

    v5 = v12;
  }

  v35 = v8;
  v36 = v7;
  LODWORD(v34) = sub_23D869ED4();
  if (*(a1 + *(v4 + 24)))
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v15 = sub_23D8DEB80();
    v33 = sub_23D8DEB70();

    sub_23D86BF68(a1, &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_23D8DE9D0();
    v16 = sub_23D8DE9C0();
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v16;
    *(v18 + 24) = v19;
    sub_23D86BFD0(&v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17);
    sub_23D86BF68(a1, &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v20 = sub_23D8DE9C0();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    sub_23D86BFD0(&v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v17);
    sub_23D8DE480();
    v22 = v40;
    LOBYTE(v17) = v34 & 1;
    v23 = v33 & 1;
    v34 = v41;
    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v25 = type metadata accessor for AXRCustomizationColorButton(0);
    *(a2 + v25[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    v26 = (a2 + v25[6]);
    v27 = v36;
    *v26 = v35;
    v26[1] = v27;
    *(a2 + v25[7]) = v17;
    *(a2 + v25[8]) = v23;
    *(a2 + v25[9]) = 1;
    v28 = a2 + v25[10];
    *v28 = v22;
    *(v28 + 8) = v34;
    v29 = a2 + v25[11];
    v37 = 0;
    result = sub_23D8DE310();
    v31 = v39;
    *v29 = v38;
    *(v29 + 1) = v31;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void sub_23D86BBCC(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AXRBackgroundColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    v3 = sub_23D8DC650();

    if (!v3)
    {
      v3 = sub_23D8DE1F0();
    }

    *a2 = v3;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    sub_23D8DD120();
    __break(1u);
  }
}

uint64_t sub_23D86BCA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23D8DC510();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a4 + *(type metadata accessor for AXRBackgroundColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    sub_23D8DC660();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

unint64_t sub_23D86BE68()
{
  result = qword_27E2EE5F0;
  if (!qword_27E2EE5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE5E8, &unk_23D8E24D0);
    sub_23D835AD0(&qword_27E2EE5F8, &qword_27E2EE600, &unk_23D8E3420, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE5F0);
  }

  return result;
}

uint64_t sub_23D86BF20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D86BF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRBackgroundColorSelectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D86BFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRBackgroundColorSelectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23D86C034(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for AXRBackgroundColorSelectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_23D86BBCC(v4, a1);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for AXRBackgroundColorSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D8DCCB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCF90();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D86C248(uint64_t *a1)
{
  v3 = *(type metadata accessor for AXRBackgroundColorSelectionView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23D86BCA8(a1, v4, v5, v6);
}

unint64_t sub_23D86C2EC()
{
  result = qword_27E2EE620;
  if (!qword_27E2EE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE620);
  }

  return result;
}

uint64_t sub_23D86C340()
{
  v1 = type metadata accessor for AXRBackgroundColorSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D8DCCB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCF90();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_23D86C4D8(uint64_t *a1)
{
  v3 = *(type metadata accessor for AXRBackgroundColorSelectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D86A9CC(a1, v4);
}

uint64_t sub_23D86C558()
{
  v1 = type metadata accessor for AXRBackgroundColorSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D8DCCB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCF90();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_23D86C704()
{
  v1 = *(type metadata accessor for AXRBackgroundColorSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23D86ABA8(v0 + v2, v3);
}

uint64_t sub_23D86C79C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D86C80C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D86C87C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D86C8E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE668, &qword_23D8E25A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D86C950()
{
  result = qword_27E2EE670;
  if (!qword_27E2EE670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE5D0, &unk_23D8E24B0);
    sub_23D835AD0(&qword_27E2EE678, &qword_27E2EE5B8, &unk_23D8E2470, MEMORY[0x277CDE5A0]);
    sub_23D835AD0(qword_27E2ED678, &qword_27E2ED570, &qword_23D8E0D00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE670);
  }

  return result;
}

void AXRTextDisplayContentView.init(presetsManager:readerBlockManager:)(uint64_t *a3@<X8>)
{
  v4 = *(type metadata accessor for AXRTextDisplayContentView(0) + 24);
  *(a3 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  swift_storeEnumTagMultiPayload();
  sub_23D8DC9F0();
  sub_23D8708E4(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);

  *a3 = sub_23D8DCEF0();
  a3[1] = v5;
  sub_23D8DC430();
  sub_23D8708E4(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
  v6 = sub_23D8DCEF0();
  v8 = v7;

  a3[2] = v6;
  a3[3] = v8;
}

uint64_t type metadata accessor for AXRTextDisplayContentView(uint64_t a1)
{
  result = qword_27E2EE6F0;
  if (!qword_27E2EE6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D86CBBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for AXRTextDisplayContentView(0);
  sub_23D83C67C(v1 + *(v10 + 24), v9, &qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23D8701E0(v9, a1);
  }

  sub_23D8DEAB0();
  v12 = sub_23D8DD990();
  sub_23D8DCAD0();

  sub_23D8DD3B0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void AXRTextDisplayContentView.spacingAfter(_:size:isFirstBlock:)(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if ((sub_23D8DC210() & 1) == 0)
    {
      sub_23D8DC1B0();
    }

    sub_23D86F5A0(a2);
  }
}

uint64_t AXRTextDisplayContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AXRTextDisplayContentView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_23D8DD560();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE680, &unk_23D8E25F8);
  v9[1] = sub_23D8DC3B0();
  swift_getKeyPath();
  sub_23D86F910(v1, v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_23D86F978(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE688, &qword_23D8E2620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE690, &qword_23D8E2628);
  sub_23D835AD0(&qword_27E2EE698, &qword_27E2EE688, &qword_23D8E2620, MEMORY[0x277D83980]);
  sub_23D86F9E0();
  sub_23D86FAC4(&qword_27E2EE6B8, &qword_27E2EE690, &qword_23D8E2628, sub_23D86FA94);
  return sub_23D8DE4C0();
}

uint64_t sub_23D86D034@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v5 = sub_23D8DD850();
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v59[0] = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB8, &qword_23D8E26E0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v61 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v59 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v59 - v17;
  v19 = sub_23D8DD790();
  MEMORY[0x28223BE20](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE6E8, &qword_23D8E2648);
  v66 = *(v20 - 8);
  v67 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = v59 - v21;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE6D8, &qword_23D8E2640);
  MEMORY[0x28223BE20](v62);
  v65 = v59 - v23;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE6C8, &qword_23D8E2638);
  MEMORY[0x28223BE20](v63);
  v68 = v59 - v24;
  v70 = *a1;
  v71 = a2;
  sub_23D8DD560();
  LODWORD(v72) = 0;
  sub_23D8708E4(&qword_27E2ED2B8, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_23D8DED90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE720, &qword_23D8E26E8);
  sub_23D8700A4();
  v64 = v22;
  sub_23D8DCC70();
  v25 = a2;
  v26 = v60;
  v59[1] = v25;
  sub_23D86CBBC(v18);
  (*(v26 + 104))(v16, *MEMORY[0x277CE0560], v5);
  (*(v26 + 56))(v16, 0, 1, v5);
  v27 = *(v8 + 56);
  sub_23D83C67C(v18, v10, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C67C(v16, &v10[v27], &qword_27E2EE9E0, &qword_23D8E26D0);
  v28 = *(v26 + 48);
  if (v28(v10, 1, v5) != 1)
  {
    sub_23D83C67C(v10, v61, &qword_27E2EE9E0, &qword_23D8E26D0);
    if (v28(&v10[v27], 1, v5) != 1)
    {
      v30 = v59[0];
      (*(v26 + 32))(v59[0], &v10[v27], v5);
      sub_23D8708E4(&qword_27E2EEA10, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v31 = v61;
      v32 = sub_23D8DE820();
      v33 = *(v26 + 8);
      v33(v30, v5);
      sub_23D83C6E4(v16, &qword_27E2EE9E0, &qword_23D8E26D0);
      sub_23D83C6E4(v18, &qword_27E2EE9E0, &qword_23D8E26D0);
      v33(v31, v5);
      sub_23D83C6E4(v10, &qword_27E2EE9E0, &qword_23D8E26D0);
      v29 = v68;
      if ((v32 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_23D83C6E4(v16, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C6E4(v18, &qword_27E2EE9E0, &qword_23D8E26D0);
    (*(v26 + 8))(v61, v5);
LABEL_6:
    sub_23D83C6E4(v10, &qword_27E2EDDB8, &qword_23D8E26E0);
    v29 = v68;
    goto LABEL_9;
  }

  sub_23D83C6E4(v16, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C6E4(v18, &qword_27E2EE9E0, &qword_23D8E26D0);
  if (v28(&v10[v27], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_23D83C6E4(v10, &qword_27E2EE9E0, &qword_23D8E26D0);
  v29 = v68;
LABEL_8:
  sub_23D8DC960();
  sub_23D8DC7B0();

LABEL_9:
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v34 = v65;
  (*(v66 + 32))(v65, v64, v67);
  v35 = (v34 + *(v62 + 36));
  v36 = v73;
  *v35 = v72;
  v35[1] = v36;
  v35[2] = v74;
  v37 = sub_23D8DDA40();
  sub_23D8DCC20();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_23D83C744(v34, v29, &qword_27E2EE6D8, &qword_23D8E2640);
  v46 = v29 + *(v63 + 36);
  *v46 = v37;
  *(v46 + 8) = v39;
  *(v46 + 16) = v41;
  *(v46 + 24) = v43;
  *(v46 + 32) = v45;
  *(v46 + 40) = 0;
  LOBYTE(v34) = sub_23D8DDA00();
  v47 = sub_23D8DDA20();
  sub_23D8DDA20();
  if (sub_23D8DDA20() != v34)
  {
    v47 = sub_23D8DDA20();
  }

  sub_23D8DCC20();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v69;
  sub_23D83C744(v29, v69, &qword_27E2EE6C8, &qword_23D8E2638);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE690, &qword_23D8E2628);
  v58 = v56 + *(result + 36);
  *v58 = v47;
  *(v58 + 8) = v49;
  *(v58 + 16) = v51;
  *(v58 + 24) = v53;
  *(v58 + 32) = v55;
  *(v58 + 40) = 0;
  return result;
}

uint64_t sub_23D86D894(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextDisplayContentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23D86F3B0(a1);
  v12[1] = v7;
  swift_getKeyPath();
  sub_23D86F910(a2, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_23D86F978(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_23D8703F4;
  *(v10 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE750, &qword_23D8E2738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE738, &qword_23D8E26F0);
  sub_23D835AD0(&qword_27E2EE758, &qword_27E2EE750, &qword_23D8E2738, MEMORY[0x277D83980]);
  sub_23D8708E4(&qword_27E2EE760, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23D870128();
  return sub_23D8DE4C0();
}

uint64_t sub_23D86DAB0(uint64_t a1)
{
  v2 = sub_23D8DBF40();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D8DC1E0();
}

uint64_t sub_23D86DB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23D8DCF90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE748, &qword_23D8E26F8);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  *v14 = sub_23D8DD400();
  *(v14 + 1) = 0x4020000000000000;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE768, &qword_23D8E2740);
  sub_23D86DDC8(a2, a3, &v14[*(v15 + 44)]);
  sub_23D8DC1D0();
  v16 = sub_23D8DD9F0();
  sub_23D8DC960();
  sub_23D8DC720();

  if (a1)
  {
    if ((sub_23D8DC210() & 1) == 0)
    {
      sub_23D8DC1B0();
    }

    sub_23D86F5A0(v11);
  }

  (*(v9 + 8))(v11, v8);
  sub_23D8DCC20();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_23D83C744(v14, a4, &qword_27E2EE748, &qword_23D8E26F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE738, &qword_23D8E26F0);
  v26 = a4 + *(result + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_23D86DDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AXRTextDisplayContentView(0);
  v121 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v122 = v7;
  v123 = &v103[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = type metadata accessor for AXRTextBlockView(0);
  MEMORY[0x28223BE20](v125);
  v124 = &v103[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE770, &qword_23D8E2748);
  v128 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v127 = &v103[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v126 = &v103[-v12];
  v119 = sub_23D8DCF90();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v103[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_23D8DBF40();
  v132 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v131 = &v103[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v18 = &v103[-v17];
  v19 = sub_23D8DC250();
  v20 = *(v19 - 8);
  v138 = v19;
  v139 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v136 = &v103[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v135 = &v103[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v115 = &v103[-v26];
  MEMORY[0x28223BE20](v25);
  v114 = &v103[-v27];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE778, &qword_23D8E2750);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v116 = &v103[-v30];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE780, &qword_23D8E2758);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v120 = &v103[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32);
  v35 = &v103[-v34];
  v36 = sub_23D8DC1B0();
  v133 = v35;
  v134 = a1;
  v137 = a2;
  v129 = v9;
  v130 = a3;
  if (v36)
  {
    v110 = v29;
    v111 = v28;
    v112 = v18;
    v113 = v14;
    sub_23D8DD480();
    v37 = sub_23D8DDC90();
    v39 = v38;
    v41 = v40;
    v42 = *(a2 + 8);
    v43 = sub_23D8DC960();
    v44 = sub_23D8DC210();
    v45 = sub_23D8DC1A0();
    blockFont(forModel:isHeader:headingLevel:)(v43, v44 & 1, v45, v46 & 1);

    v47 = sub_23D8DDC40();
    v49 = v48;
    v51 = v50;

    sub_23D83CB6C(v37, v39, v41 & 1);

    v108 = v42;
    v52 = v138;
    sub_23D8DC960();
    sub_23D8DC800();

    v106 = sub_23D8DDC00();
    v105 = v53;
    v104 = v54;
    v107 = v55;

    sub_23D83CB6C(v47, v49, v51 & 1);

    v56 = v114;
    sub_23D8DC2A0();
    v57 = *MEMORY[0x277CE7200];
    v58 = v115;
    (*(v139 + 104))(v115, *MEMORY[0x277CE7200], v52);
    sub_23D8708E4(&qword_27E2EDE60, MEMORY[0x277CE7208], MEMORY[0x277CE7218]);
    sub_23D8DE980();
    sub_23D8DE980();
    v109 = v57;
    if (v140 == v145 && v141 == v146)
    {
      v59 = v138;
      v60 = *(v139 + 8);
      v60(v58, v138);
      v60(v56, v59);

      v14 = v113;
      v18 = v112;
    }

    else
    {
      v62 = sub_23D8DED20();
      v63 = v138;
      v64 = *(v139 + 8);
      v64(v58, v138);
      v64(v56, v63);

      v14 = v113;
      v18 = v112;
      if ((v62 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    sub_23D8DC2C0();
    sub_23D8DC1D0();

    v65 = v131;
    sub_23D8DC1D0();
    sub_23D8708E4(&qword_27E2EE7B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v66 = sub_23D8DE820();
    v67 = *(v132 + 8);
    v67(v65, v14);
    v67(v18, v14);
    if ((v66 & 1) == 0)
    {
      v68 = 0.2;
      goto LABEL_10;
    }

LABEL_8:
    v68 = 1.0;
LABEL_10:
    v69 = v106;
    v70 = v105;
    v140 = v106;
    v141 = v105;
    v71 = v104 & 1;
    v142 = v104 & 1;
    v143 = v107;
    v144 = v68;
    sub_23D8DC960();
    v72 = v117;
    sub_23D8DC720();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE7A0, &unk_23D8E27A0);
    sub_23D87085C();
    v73 = v116;
    sub_23D8DDDC0();
    (*(v118 + 8))(v72, v119);
    sub_23D83CB6C(v69, v70, v71);

    v74 = v110;
    v75 = v133;
    v76 = v111;
    (*(v110 + 32))(v133, v73, v111);
    (*(v74 + 56))(v75, 0, 1, v76);
    v61 = v109;
    goto LABEL_11;
  }

  (*(v29 + 56))(v35, 1, 1, v28);
  v61 = *MEMORY[0x277CE7200];
LABEL_11:
  v77 = v128;
  sub_23D8DC2C0();
  sub_23D8DC1D0();

  v78 = v18;
  v79 = v131;
  sub_23D8DC1D0();
  LODWORD(v128) = sub_23D8DBF30();
  v80 = *(v132 + 8);
  v80(v79, v14);
  v80(v78, v14);

  sub_23D8DC2A0();
  (*(v139 + 104))(v136, v61, v138);
  sub_23D8708E4(&qword_27E2EDE60, MEMORY[0x277CE7208], MEMORY[0x277CE7218]);
  sub_23D8DE980();
  sub_23D8DE980();
  if (v140 == v145 && v141 == v146)
  {
    v81 = 1;
  }

  else
  {
    v81 = sub_23D8DED20();
  }

  v82 = v129;
  v83 = v138;
  v84 = *(v139 + 8);
  v84(v136, v138);
  v84(v135, v83);

  KeyPath = swift_getKeyPath();
  v86 = v124;
  *&v124[*(v125 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE788, &qword_23D8E2790);
  swift_storeEnumTagMultiPayload();
  v87 = v134;
  *v86 = v134;
  *(v86 + 8) = v128 & 1;
  sub_23D8DC9F0();
  sub_23D8708E4(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);

  *(v86 + 16) = sub_23D8DCEF0();
  *(v86 + 24) = v88;
  *(v86 + 32) = 0x3FC999999999999ALL;
  *(v86 + 40) = v81 & 1;
  v89 = v123;
  sub_23D86F910(v137, v123);
  v90 = (*(v121 + 80) + 16) & ~*(v121 + 80);
  v91 = (v122 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  sub_23D86F978(v89, v92 + v90);
  *(v92 + v91) = v87;
  sub_23D8708E4(&qword_27E2EE790, type metadata accessor for AXRTextBlockView, "eْD");

  v93 = v126;
  sub_23D8DDD60();

  sub_23D870728(v86);
  v94 = v133;
  v95 = v120;
  sub_23D870784(v133, v120);
  v96 = *(v77 + 16);
  v97 = v127;
  v96(v127, v93, v82);
  v98 = v130;
  sub_23D870784(v95, v130);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE798, &qword_23D8E2798);
  v96((v98 + *(v99 + 48)), v97, v82);
  v100 = v98 + *(v99 + 64);
  *v100 = 0;
  *(v100 + 8) = 1;
  v101 = *(v77 + 8);
  v101(v93, v82);
  sub_23D8707F4(v94);
  v101(v97, v82);
  return sub_23D8707F4(v95);
}