uint64_t static FullWidthItemDescriptor.== infix(_:_:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v116 = a1;
  v117 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098130, &qword_1E68B9D00);
  MEMORY[0x1EEE9AC00](v107, v6);
  v102 = &v96[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v106 = &v96[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68, &qword_1E68B4840);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v100 = &v96[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v103 = &v96[-v16];
  MEMORY[0x1EEE9AC00](v17, v18);
  v110 = &v96[-v19];
  MEMORY[0x1EEE9AC00](v20, v21);
  v111 = &v96[-v22];
  v113 = sub_1E68B1820();
  v115 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v23);
  v101 = &v96[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25, v26);
  v105 = &v96[-v27];
  v108 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v96[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v109 = a3;
  v104 = a4;
  v33 = type metadata accessor for FullWidthItemDescriptor(0, a3, a4, v32);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v96[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v96[-v40];
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v96[-v44];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v114 = *(TupleTypeMetadata2 - 8);
  v48 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v47);
  v50 = &v96[-v49];
  v52 = &v96[*(v51 + 48) - v49];
  v112 = v34;
  v53 = *(v34 + 2);
  v53(&v96[-v49], v116, v33, v48);
  (v53)(v52, v117, v33);
  v117 = v50;
  v54 = v33;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v56 = v117;
      (v53)(v41, v117, v33);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v57 = v115;
        v58 = v105;
        v59 = v113;
        (*(v115 + 32))(v105, v52, v113);
        v60 = sub_1E68B17A0();
        v61 = *(v57 + 8);
        v61(v58, v59);
        v61(v41, v59);
        v62 = v112;
        goto LABEL_33;
      }

      (*(v115 + 8))(v41, v113);
LABEL_14:
      v60 = 0;
      v62 = v114;
      v54 = TupleTypeMetadata2;
      goto LABEL_33;
    }

    v56 = v117;
    (v53)(v37, v117, v33);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096FF8, &unk_1E68C02F0);
    v66 = v65[12];
    v67 = v65[16];
    v68 = *&v37[v67 + 8];
    v116 = *&v37[v67];
    v69 = v65[20];
    v70 = *&v37[v69 + 8];
    v109 = *&v37[v69];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      sub_1E6744A10(&v37[v66], &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v37, &qword_1ED096E68, &qword_1E68B4840);
      goto LABEL_14;
    }

    v114 = v68;
    v71 = *&v52[v67 + 8];
    v104 = *&v52[v67];
    v72 = *&v52[v69 + 8];
    v99 = *&v52[v69];
    v108 = v72;
    sub_1E6774DF4(&v37[v66], v111);
    sub_1E6774DF4(&v52[v66], v110);
    v73 = v106;
    v74 = *(v107 + 48);
    sub_1E6774DF4(v37, v106);
    sub_1E6774DF4(v52, &v73[v74]);
    v75 = *(v115 + 48);
    v76 = v113;
    if (v75(v73, 1, v113) == 1)
    {
      v77 = v75(&v73[v74], 1, v76);
      v62 = v112;
      if (v77 != 1)
      {
LABEL_22:

        goto LABEL_25;
      }

      sub_1E6744A10(v73, &qword_1ED096E68, &qword_1E68B4840);
    }

    else
    {
      v105 = v71;
      v79 = v103;
      sub_1E682854C(v73, v103);
      v80 = v75(&v73[v74], 1, v76);
      v62 = v112;
      if (v80 == 1)
      {

        (*(v115 + 8))(v79, v76);
LABEL_25:
        sub_1E6744A10(v73, &qword_1ED098130, &qword_1E68B9D00);
LABEL_32:
        sub_1E6744A10(v110, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v111, &qword_1ED096E68, &qword_1E68B4840);
        v60 = 0;
        goto LABEL_33;
      }

      v81 = v115;
      v82 = &v73[v74];
      v83 = v79;
      v84 = v101;
      (*(v115 + 32))(v101, v82, v76);
      sub_1E682ABCC(&qword_1EE2EDE90, MEMORY[0x1E6968860]);
      v98 = v70;
      v97 = sub_1E68B3190();
      v85 = *(v81 + 8);
      v85(v84, v76);
      v85(v83, v76);
      v56 = v117;
      v70 = v98;
      sub_1E6744A10(v73, &qword_1ED096E68, &qword_1E68B4840);
      v71 = v105;
      if ((v97 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v86 = *(v107 + 48);
    v73 = v102;
    sub_1E682854C(v111, v102);
    sub_1E682854C(v110, &v73[v86]);
    if (v75(v73, 1, v76) == 1)
    {
      if (v75(&v73[v86], 1, v76) == 1)
      {
        sub_1E6744A10(v73, &qword_1ED096E68, &qword_1E68B4840);
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    v98 = v70;
    v87 = v100;
    sub_1E682854C(v73, v100);
    if (v75(&v73[v86], 1, v76) == 1)
    {

      (*(v115 + 8))(v87, v76);
      goto LABEL_25;
    }

    v88 = v115;
    v89 = *(v115 + 32);
    v105 = v71;
    v90 = v101;
    v89(v101, &v73[v86], v76);
    sub_1E682ABCC(&qword_1EE2EDE90, MEMORY[0x1E6968860]);
    v91 = sub_1E68B3190();
    v92 = *(v88 + 8);
    v93 = v90;
    v71 = v105;
    v92(v93, v76);
    v92(v87, v76);
    sub_1E6744A10(v73, &qword_1ED096E68, &qword_1E68B4840);
    v70 = v98;
    if (v91)
    {
LABEL_27:
      if (v116 == v104 && v114 == v71)
      {

LABEL_35:
        if (v109 == v99 && v70 == v108)
        {

          sub_1E6744A10(v110, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v111, &qword_1ED096E68, &qword_1E68B4840);
          v60 = 1;
        }

        else
        {
          v60 = sub_1E68B3B00();

          sub_1E6744A10(v110, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v111, &qword_1ED096E68, &qword_1E68B4840);
        }

        goto LABEL_33;
      }

      v95 = sub_1E68B3B00();

      if (v95)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

LABEL_30:

LABEL_31:

    goto LABEL_32;
  }

  v64 = v108;
  v63 = v109;
  (v53)(v45, v117, v54);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v64 + 8))(v45, v63);
    v60 = 0;
    v62 = v114;
    v54 = TupleTypeMetadata2;
  }

  else
  {
    (*(v64 + 32))(v31, v52, v63);
    v60 = sub_1E68B3190();
    v78 = *(v64 + 8);
    v78(v31, v63);
    v78(v45, v63);
    v62 = v112;
  }

  v56 = v117;
LABEL_33:
  (*(v62 + 1))(v56, v54);
  return v60 & 1;
}

uint64_t sub_1E682854C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68, &qword_1E68B4840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E68285BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E6828634(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEF656C7469546465)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E68286B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F74747562 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69646E61707865 && a2 == 0xED00007478655467)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E68287D0(char a1)
{
  if (!a1)
  {
    return 0x6B726F77747261;
  }

  if (a1 == 1)
  {
    return 0x6E6F74747562;
  }

  return 0x6E69646E61707865;
}

uint64_t sub_1E6828830(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7475626972747461 && a2 == 0xEF656C7469546465;
  if (v3 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00747865546465 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2E70 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2E90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E68289AC(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1E6828A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68285BC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E6828A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6828AD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6828B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6828634(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E6828B80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6828BD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6828C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68286B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6828C7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E67BF598();
  *a1 = result;
  return result;
}

uint64_t sub_1E6828CA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6828CFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6828D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_1E68B3B70();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1E68B3BB0();
}

uint64_t sub_1E6828DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6828830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6828DE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E67BF588();
  *a1 = result;
  return result;
}

uint64_t sub_1E6828E10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6828E64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FullWidthItemDescriptor.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = a1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for FullWidthItemDescriptor.ExpandingTextCodingKeys(255, v5, v6, a4);
  WitnessTable = swift_getWitnessTable();
  v87 = v7;
  v8 = sub_1E68B3AC0();
  v91 = *(v8 - 8);
  v92 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v89 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68, &qword_1E68B4840);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v90 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v93 = &v72 - v16;
  v18 = type metadata accessor for FullWidthItemDescriptor.ButtonCodingKeys(255, v5, v6, v17);
  v19 = swift_getWitnessTable();
  v80 = v18;
  v78 = v19;
  v20 = sub_1E68B3AC0();
  v83 = *(v20 - 8);
  v84 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v81 = &v72 - v22;
  v95 = sub_1E68B1820();
  v82 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v23);
  v79 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FullWidthItemDescriptor.ArtworkCodingKeys(255, v5, v6, v25);
  v74 = swift_getWitnessTable();
  v77 = sub_1E68B3AC0();
  v73 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v26);
  v75 = &v72 - v27;
  v76 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v94 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v72 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v5;
  v85 = v6;
  type metadata accessor for FullWidthItemDescriptor.CodingKeys(255, v5, v6, v36);
  swift_getWitnessTable();
  v37 = sub_1E68B3AC0();
  v38 = *(v37 - 8);
  v98 = v37;
  v99 = v38;
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = (&v72 - v40);
  __swift_project_boxed_opaque_existential_1(v100, v100[3]);
  v100 = v41;
  sub_1E68B3BD0();
  (*(v31 + 16))(v35, v96, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v50 = v73;
    v51 = v76;
    v52 = v88;
    (*(v76 + 32))(v94, v35, v88);
    v101 = 0;
    v53 = v75;
    v47 = v98;
    v48 = v100;
    sub_1E68B3A30();
    v54 = v77;
    sub_1E68B3AB0();
    (*(v50 + 8))(v53, v54);
    (*(v51 + 8))(v94, v52);
    return (*(v99 + 8))(v48, v47);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v43 = v82;
    v44 = v79;
    v45 = v95;
    (*(v82 + 32))(v79, v35, v95);
    v102 = 1;
    v46 = v81;
    v47 = v98;
    v48 = v100;
    sub_1E68B3A30();
    sub_1E682ABCC(&qword_1EE2EDEA0, MEMORY[0x1E6968850]);
    v49 = v84;
    sub_1E68B3AB0();
    (*(v83 + 8))(v46, v49);
    (*(v43 + 8))(v44, v45);
    return (*(v99 + 8))(v48, v47);
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096FF8, &unk_1E68C02F0);
  v57 = v56[12];
  v58 = &v35[v56[16]];
  v60 = *v58;
  v59 = *(v58 + 1);
  v88 = v60;
  v94 = v59;
  v61 = &v35[v56[20]];
  v63 = *v61;
  v62 = *(v61 + 1);
  v85 = v63;
  v96 = v62;
  v64 = v93;
  sub_1E6774DF4(v35, v93);
  v65 = v90;
  sub_1E6774DF4(&v35[v57], v90);
  v107 = 2;
  v66 = v89;
  v67 = v98;
  sub_1E68B3A30();
  v106 = 0;
  sub_1E682ABCC(&qword_1EE2EDEA0, MEMORY[0x1E6968850]);
  v68 = v92;
  v69 = v97;
  sub_1E68B3A60();
  if (v69)
  {

    (*(v91 + 8))(v66, v68);
    sub_1E6744A10(v65, &qword_1ED096E68, &qword_1E68B4840);
    v70 = v64;
  }

  else
  {
    v105 = 1;
    sub_1E68B3A60();
    v104 = 2;
    sub_1E68B3A70();

    v103 = 3;
    sub_1E68B3A70();
    v71 = v93;

    (*(v91 + 8))(v66, v68);
    sub_1E6744A10(v65, &qword_1ED096E68, &qword_1E68B4840);
    v70 = v71;
  }

  sub_1E6744A10(v70, &qword_1ED096E68, &qword_1E68B4840);
  return (*(v99 + 8))(v100, v67);
}

uint64_t FullWidthItemDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v116 = a5;
  v8 = type metadata accessor for FullWidthItemDescriptor.ExpandingTextCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v112 = v8;
  v105 = sub_1E68B3A20();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v9);
  v113 = &v94 - v10;
  v12 = type metadata accessor for FullWidthItemDescriptor.ButtonCodingKeys(255, a2, a3, v11);
  v13 = swift_getWitnessTable();
  v110 = v12;
  v109 = v13;
  v102 = sub_1E68B3A20();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v115 = &v94 - v15;
  v17 = type metadata accessor for FullWidthItemDescriptor.ArtworkCodingKeys(255, a2, a3, v16);
  v18 = swift_getWitnessTable();
  v107 = v17;
  v106 = v18;
  v100 = sub_1E68B3A20();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v19);
  v108 = &v94 - v20;
  type metadata accessor for FullWidthItemDescriptor.CodingKeys(255, a2, a3, v21);
  v121 = swift_getWitnessTable();
  v120 = sub_1E68B3A20();
  v118 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v22);
  v24 = &v94 - v23;
  v117 = a2;
  v103 = a3;
  v26 = type metadata accessor for FullWidthItemDescriptor(0, a2, a3, v25);
  v114 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v94 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v94 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v94 - v40;
  v42 = a1;
  v43 = a1[3];
  v122 = v42;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v119 = v24;
  v44 = v127;
  sub_1E68B3BC0();
  v127 = v44;
  if (!v44)
  {
    v95 = v37;
    v96 = v33;
    v97 = v29;
    v98 = v41;
    v121 = v26;
    v46 = v119;
    v45 = v120;
    *&v123 = sub_1E68B3A10();
    sub_1E68B33B0();
    swift_getWitnessTable();
    *&v125 = sub_1E68B37A0();
    *(&v125 + 1) = v47;
    *&v126 = v48;
    *(&v126 + 1) = v49;
    sub_1E68B3790();
    swift_getWitnessTable();
    sub_1E68B36B0();
    v50 = v123;
    if (v123 != 3)
    {
      v94 = v125;
      v123 = v125;
      v124 = v126;
      if (sub_1E68B36E0())
      {
        if (v50)
        {
          v51 = v98;
          if (v50 == 1)
          {
            LOBYTE(v123) = 1;
            v52 = v127;
            sub_1E68B3970();
            v53 = v116;
            v54 = v45;
            v55 = v118;
            v56 = v114;
            v127 = v52;
            if (v52)
            {
              (*(v118 + 8))(v46, v54);
LABEL_16:
              swift_unknownObjectRelease();
              return __swift_destroy_boxed_opaque_existential_1(v122);
            }

            sub_1E68B1820();
            sub_1E682ABCC(&qword_1ED097DB8, MEMORY[0x1E6968868]);
            v68 = v96;
            v69 = v102;
            v70 = v115;
            v71 = v127;
            sub_1E68B3A00();
            v127 = v71;
            if (v71)
            {
              (*(v101 + 8))(v70, v69);
              (*(v55 + 8))(v46, v120);
              goto LABEL_16;
            }

            (*(v101 + 8))(v70, v69);
            (*(v55 + 8))(v46, v120);
            swift_unknownObjectRelease();
            v78 = v121;
            swift_storeEnumTagMultiPayload();
            v79 = v68;
          }

          else
          {
            LOBYTE(v123) = 2;
            v64 = v113;
            v65 = v127;
            sub_1E68B3970();
            v53 = v116;
            v66 = v46;
            v67 = v118;
            v127 = v65;
            if (v65)
            {
              (*(v118 + 8))(v66, v45);
              goto LABEL_16;
            }

            sub_1E68B1820();
            LOBYTE(v123) = 0;
            sub_1E682ABCC(&qword_1ED097DB8, MEMORY[0x1E6968868]);
            v76 = v105;
            v77 = v127;
            sub_1E68B39B0();
            if (v77)
            {
              (*(v104 + 8))(v64, v76);
              (*(v67 + 8))(v119, v120);
              swift_unknownObjectRelease();
              v127 = v77;
              return __swift_destroy_boxed_opaque_existential_1(v122);
            }

            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096FF8, &unk_1E68C02F0);
            v82 = v81[12];
            LOBYTE(v123) = 1;
            sub_1E68B39B0();
            v127 = 0;
            v83 = v82;
            LOBYTE(v123) = 2;
            v84 = v105;
            v85 = sub_1E68B39C0();
            v127 = 0;
            v86 = v97;
            v87 = &v97[v81[16]];
            *v87 = v85;
            v87[1] = v88;
            LOBYTE(v123) = 3;
            v89 = v127;
            v91 = sub_1E68B39C0();
            v127 = v89;
            if (v89)
            {
              (*(v104 + 8))(v64, v84);
              (*(v67 + 8))(v119, v120);

              swift_unknownObjectRelease();
              sub_1E6744A10(v86 + v83, &qword_1ED096E68, &qword_1E68B4840);
              sub_1E6744A10(v86, &qword_1ED096E68, &qword_1E68B4840);
              return __swift_destroy_boxed_opaque_existential_1(v122);
            }

            v92 = (v86 + v81[20]);
            v93 = v90;
            (*(v104 + 8))(v64, v84);
            (*(v67 + 8))(v119, v120);
            swift_unknownObjectRelease();
            *v92 = v91;
            v92[1] = v93;
            v78 = v121;
            swift_storeEnumTagMultiPayload();
            v79 = v86;
            v56 = v114;
            v51 = v98;
          }
        }

        else
        {
          LOBYTE(v123) = 0;
          v62 = v108;
          v63 = v127;
          sub_1E68B3970();
          v51 = v98;
          v127 = v63;
          if (v63)
          {
            (*(v118 + 8))(v46, v45);
            goto LABEL_16;
          }

          v72 = v95;
          v73 = v100;
          sub_1E68B3A00();
          v74 = v118;
          v127 = 0;
          (*(v99 + 8))(v62, v73);
          (*(v74 + 8))(v46, v45);
          swift_unknownObjectRelease();
          v78 = v121;
          swift_storeEnumTagMultiPayload();
          v56 = v114;
          v79 = v72;
          v53 = v116;
        }

        v80 = *(v56 + 32);
        v80(v51, v79, v78);
        v80(v53, v51, v78);
        return __swift_destroy_boxed_opaque_existential_1(v122);
      }
    }

    v57 = sub_1E68B3870();
    v58 = swift_allocError();
    v59 = v45;
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
    *v61 = v121;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v57 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v57);
    v127 = v58;
    swift_willThrow();
    (*(v118 + 8))(v46, v59);
    goto LABEL_16;
  }

  return __swift_destroy_boxed_opaque_existential_1(v122);
}

uint64_t FullWidthItemDescriptor.hash(into:)(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68, &qword_1E68B4840);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v43 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v42 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v45 = v42 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v44 = v42 - v16;
  v17 = sub_1E68B1820();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 16);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32, v2, a2, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v18 + 32))(v21, v32, v17);
      MEMORY[0x1E69523D0](1);
      sub_1E682ABCC(&qword_1EE2EDE98, MEMORY[0x1E6968858]);
      sub_1E68B3140();
      return (*(v18 + 8))(v21, v17);
    }

    else
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096FF8, &unk_1E68C02F0);
      v37 = v36[12];
      v38 = *&v32[v36[20]];
      v42[0] = *&v32[v36[16]];
      v42[1] = v38;
      v39 = v44;
      sub_1E6774DF4(v32, v44);
      sub_1E6774DF4(&v32[v37], v45);
      MEMORY[0x1E69523D0](2);
      sub_1E682854C(v39, v10);
      v40 = *(v18 + 48);
      if (v40(v10, 1, v17) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v18 + 32))(v21, v10, v17);
        sub_1E68B3B90();
        sub_1E682ABCC(&qword_1EE2EDE98, MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v18 + 8))(v21, v17);
      }

      v41 = v43;
      sub_1E682854C(v45, v43);
      if (v40(v41, 1, v17) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v18 + 32))(v21, v41, v17);
        sub_1E68B3B90();
        sub_1E682ABCC(&qword_1EE2EDE98, MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v18 + 8))(v21, v17);
      }

      sub_1E68B31F0();

      sub_1E68B31F0();

      sub_1E6744A10(v45, &qword_1ED096E68, &qword_1E68B4840);
      return sub_1E6744A10(v44, &qword_1ED096E68, &qword_1E68B4840);
    }
  }

  else
  {
    (*(v23 + 32))(v27, v32, v22);
    MEMORY[0x1E69523D0](0);
    sub_1E68B3140();
    return (*(v23 + 8))(v27, v22);
  }
}

uint64_t sub_1E682ABCC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E68B1820();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FullWidthItemDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  FullWidthItemDescriptor.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E682AC60(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  FullWidthItemDescriptor.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E682ACCC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(sub_1E68B1820() - 8);
  v7 = *(v6 + 64);
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 64);
  }

  v9 = *(v6 + 84);
  v10 = *(v6 + 80);
  if (!v9)
  {
    ++v7;
  }

  v11 = ((((v7 + ((v7 + v10) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_31;
  }

  v13 = v12 + 1;
  v14 = 8 * (v12 + 1);
  if ((v12 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 253) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v17 < 2)
    {
LABEL_31:
      v19 = *(a1 + v12);
      if (v19 >= 3)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_31;
  }

LABEL_20:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return (v13 | v18) + 254;
}

void sub_1E682AE88(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(sub_1E68B1820() - 8);
  v9 = *(v8 + 64);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 64);
  }

  v11 = *(v8 + 84);
  v12 = *(v8 + 80);
  if (!v11)
  {
    ++v9;
  }

  v13 = ((((v9 + ((v9 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 <= v10)
  {
    v13 = v10;
  }

  v14 = v13 + 1;
  if (a3 < 0xFE)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 + ~(-1 << (8 * v14)) - 253) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFD)
  {
    v16 = a2 - 254;
    if (v14 >= 4)
    {
      bzero(a1, v13 + 1);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v17 = (v16 >> (8 * v14)) + 1;
    if (v13 != -1)
    {
      v20 = v16 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v20;
          if (v15 > 1)
          {
LABEL_44:
            if (v15 == 2)
            {
              *&a1[v14] = v17;
            }

            else
            {
              *&a1[v14] = v17;
            }

            return;
          }
        }

        else
        {
          *a1 = v16;
          if (v15 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }

      *a1 = v20;
      a1[2] = BYTE2(v20);
    }

    if (v15 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v13] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_29;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

unint64_t sub_1E682B230(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000014;
    if (a1 != 6)
    {
      v6 = 0x6269737365636361;
    }

    if (a1 <= 8u)
    {
      return v6;
    }

    else
    {
      return 0x6269737365636361;
    }
  }

  else
  {
    v1 = 0x616D536172747865;
    v2 = 0x656772616CLL;
    v3 = 0x72614C6172747865;
    if (a1 != 4)
    {
      v3 = 0x7478456172747865;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C6C616D73;
    if (a1 != 1)
    {
      v4 = 0x6D756964656DLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E682B3DC(uint64_t a1)
{
  v2 = sub_1E682C714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B418(uint64_t a1)
{
  v2 = sub_1E682C714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B454(uint64_t a1)
{
  v2 = sub_1E682C6C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B490(uint64_t a1)
{
  v2 = sub_1E682C6C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B4CC(uint64_t a1)
{
  v2 = sub_1E682C66C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B508(uint64_t a1)
{
  v2 = sub_1E682C66C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B544(uint64_t a1)
{
  v2 = sub_1E682C618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B580(uint64_t a1)
{
  v2 = sub_1E682C618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B5BC(uint64_t a1)
{
  v2 = sub_1E682C5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B5F8(uint64_t a1)
{
  v2 = sub_1E682C5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B63C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E682CAE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E682B670(uint64_t a1)
{
  v2 = sub_1E682C570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B6AC(uint64_t a1)
{
  v2 = sub_1E682C570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B6E8(uint64_t a1)
{
  v2 = sub_1E682C768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B724(uint64_t a1)
{
  v2 = sub_1E682C768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B760(uint64_t a1)
{
  v2 = sub_1E682C7BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B79C(uint64_t a1)
{
  v2 = sub_1E682C7BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B7D8(uint64_t a1)
{
  v2 = sub_1E682C810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B814(uint64_t a1)
{
  v2 = sub_1E682C810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B850(uint64_t a1)
{
  v2 = sub_1E682C960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B88C(uint64_t a1)
{
  v2 = sub_1E682C960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B8C8(uint64_t a1)
{
  v2 = sub_1E682C864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B904(uint64_t a1)
{
  v2 = sub_1E682C864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B940(uint64_t a1)
{
  v2 = sub_1E682C8B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B97C(uint64_t a1)
{
  v2 = sub_1E682C8B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B9B8(uint64_t a1)
{
  v2 = sub_1E682C90C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B9F4(uint64_t a1)
{
  v2 = sub_1E682C90C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicTypeSize.encode(to:)(void *a1, int a2)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099328, &qword_1E68C08C0);
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v83 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099330, &qword_1E68C08C8);
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v80 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099338, &qword_1E68C08D0);
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v77 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099340, &qword_1E68C08D8);
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v74 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099348, &qword_1E68C08E0);
  v72 = *(v15 - 8);
  v73 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v71 = &v54 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099350, &qword_1E68C08E8);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v18);
  v68 = &v54 - v19;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099358, &qword_1E68C08F0);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v20);
  v65 = &v54 - v21;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099360, &qword_1E68C08F8);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v22);
  v62 = &v54 - v23;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099368, &qword_1E68C0900);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v24);
  v59 = &v54 - v25;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099370, &qword_1E68C0908);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v26);
  v56 = &v54 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099378, &qword_1E68C0910);
  v55 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v54 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099380, &qword_1E68C0918);
  v54 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v54 - v34;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099388, &qword_1E68C0920);
  v36 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v37);
  v39 = &v54 - v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E682C570();
  v87 = v39;
  sub_1E68B3BD0();
  v40 = (v36 + 8);
  if (v86 > 5u)
  {
    if (v86 > 8u)
    {
      if (v86 == 9)
      {
        v98 = 9;
        sub_1E682C66C();
        v43 = v77;
        v42 = v87;
        v41 = v88;
        sub_1E68B3A30();
        v45 = v78;
        v44 = v79;
      }

      else if (v86 == 10)
      {
        v99 = 10;
        sub_1E682C618();
        v43 = v80;
        v42 = v87;
        v41 = v88;
        sub_1E68B3A30();
        v45 = v81;
        v44 = v82;
      }

      else
      {
        v100 = 11;
        sub_1E682C5C4();
        v43 = v83;
        v42 = v87;
        v41 = v88;
        sub_1E68B3A30();
        v45 = v84;
        v44 = v85;
      }
    }

    else
    {
      if (v86 == 6)
      {
        v95 = 6;
        sub_1E682C768();
        v50 = v68;
        v42 = v87;
        v41 = v88;
        sub_1E68B3A30();
        (*(v69 + 8))(v50, v70);
        return (*v40)(v42, v41);
      }

      if (v86 == 7)
      {
        v96 = 7;
        sub_1E682C714();
        v43 = v71;
        v42 = v87;
        v41 = v88;
        sub_1E68B3A30();
        v45 = v72;
        v44 = v73;
      }

      else
      {
        v97 = 8;
        sub_1E682C6C0();
        v43 = v74;
        v42 = v87;
        v41 = v88;
        sub_1E68B3A30();
        v45 = v75;
        v44 = v76;
      }
    }

    (*(v45 + 8))(v43, v44);
    return (*v40)(v42, v41);
  }

  if (v86 > 2u)
  {
    if (v86 == 3)
    {
      v92 = 3;
      sub_1E682C864();
      v51 = v59;
      v42 = v87;
      v41 = v88;
      sub_1E68B3A30();
      (*(v60 + 8))(v51, v61);
    }

    else if (v86 == 4)
    {
      v93 = 4;
      sub_1E682C810();
      v46 = v62;
      v42 = v87;
      v41 = v88;
      sub_1E68B3A30();
      (*(v63 + 8))(v46, v64);
    }

    else
    {
      v94 = 5;
      sub_1E682C7BC();
      v53 = v65;
      v42 = v87;
      v41 = v88;
      sub_1E68B3A30();
      (*(v66 + 8))(v53, v67);
    }
  }

  else
  {
    if (!v86)
    {
      v89 = 0;
      sub_1E682C960();
      v47 = v87;
      v48 = v88;
      sub_1E68B3A30();
      (*(v54 + 8))(v35, v32);
      return (*v40)(v47, v48);
    }

    if (v86 == 1)
    {
      v90 = 1;
      sub_1E682C90C();
      v42 = v87;
      v41 = v88;
      sub_1E68B3A30();
      (*(v55 + 8))(v31, v28);
    }

    else
    {
      v91 = 2;
      sub_1E682C8B8();
      v52 = v56;
      v42 = v87;
      v41 = v88;
      sub_1E68B3A30();
      (*(v57 + 8))(v52, v58);
    }
  }

  return (*v40)(v42, v41);
}

unint64_t sub_1E682C570()
{
  result = qword_1EE2EBDC0;
  if (!qword_1EE2EBDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDC0);
  }

  return result;
}

unint64_t sub_1E682C5C4()
{
  result = qword_1ED099390;
  if (!qword_1ED099390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099390);
  }

  return result;
}

unint64_t sub_1E682C618()
{
  result = qword_1ED099398;
  if (!qword_1ED099398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099398);
  }

  return result;
}

unint64_t sub_1E682C66C()
{
  result = qword_1ED0993A0;
  if (!qword_1ED0993A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993A0);
  }

  return result;
}

unint64_t sub_1E682C6C0()
{
  result = qword_1ED0993A8;
  if (!qword_1ED0993A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993A8);
  }

  return result;
}

unint64_t sub_1E682C714()
{
  result = qword_1ED0993B0;
  if (!qword_1ED0993B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993B0);
  }

  return result;
}

unint64_t sub_1E682C768()
{
  result = qword_1ED0993B8;
  if (!qword_1ED0993B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993B8);
  }

  return result;
}

unint64_t sub_1E682C7BC()
{
  result = qword_1ED0993C0;
  if (!qword_1ED0993C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993C0);
  }

  return result;
}

unint64_t sub_1E682C810()
{
  result = qword_1ED0993C8;
  if (!qword_1ED0993C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993C8);
  }

  return result;
}

unint64_t sub_1E682C864()
{
  result = qword_1EE2EBDA8;
  if (!qword_1EE2EBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDA8);
  }

  return result;
}

unint64_t sub_1E682C8B8()
{
  result = qword_1ED0993D0;
  if (!qword_1ED0993D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993D0);
  }

  return result;
}

unint64_t sub_1E682C90C()
{
  result = qword_1ED0993D8;
  if (!qword_1ED0993D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993D8);
  }

  return result;
}

unint64_t sub_1E682C960()
{
  result = qword_1ED0993E0;
  if (!qword_1ED0993E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993E0);
  }

  return result;
}

uint64_t sub_1E682C9CC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E682CEB8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t DynamicTypeSize.hashValue.getter(unsigned __int8 a1)
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E682CAE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D536172747865 && a2 == 0xEA00000000006C6CLL || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEA00000000006567 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7478456172747865 && a2 == 0xEF656772614C6172 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E68E2EB0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00317974696C69 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00327974696C69 || (sub_1E68B3B00() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00337974696C69 || (sub_1E68B3B00() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00347974696C69 || (sub_1E68B3B00() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00357974696C69)
  {

    return 11;
  }

  else
  {
    v5 = sub_1E68B3B00();

    if (v5)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1E682CEB8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0993F0, &qword_1E68C1438);
  v93 = *(v2 - 8);
  v94 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v99 = &v68 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0993F8, &qword_1E68C1440);
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v104 = &v68 - v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099400, &qword_1E68C1448);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v8);
  v103 = &v68 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099408, &qword_1E68C1450);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v10);
  v98 = &v68 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099410, &qword_1E68C1458);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v12);
  v97 = &v68 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099418, &qword_1E68C1460);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v14);
  v96 = &v68 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099420, &qword_1E68C1468);
  v82 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v16);
  v102 = &v68 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099428, &qword_1E68C1470);
  v80 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v18);
  v101 = &v68 - v19;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099430, &qword_1E68C1478);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v20);
  v100 = &v68 - v21;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099438, &qword_1E68C1480);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v22);
  v95 = &v68 - v23;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099440, &qword_1E68C1488);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v24);
  v26 = &v68 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099448, &qword_1E68C1490);
  v72 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v68 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099450, &qword_1E68C1498);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v68 - v34;
  v36 = a1[3];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1E682C570();
  v37 = v105;
  sub_1E68B3BC0();
  if (v37)
  {
    goto LABEL_12;
  }

  v69 = v30;
  v68 = v27;
  v70 = v26;
  v38 = v100;
  v39 = v101;
  v40 = v102;
  v41 = v103;
  v71 = 0;
  v42 = v104;
  v105 = v32;
  v43 = sub_1E68B3A10();
  v44 = (2 * *(v43 + 16)) | 1;
  v107 = v43;
  v108 = v43 + 32;
  v109 = 0;
  v110 = v44;
  v45 = sub_1E6768D94();
  v46 = v35;
  if (v45 != 12 && v109 == v110 >> 1)
  {
    v32 = v45;
    if (v45 <= 5u)
    {
      if (v45 <= 2u)
      {
        v47 = v71;
        if (v45)
        {
          if (v45 == 1)
          {
            v111 = 1;
            sub_1E682C90C();
            v48 = v70;
            sub_1E68B3970();
            if (!v47)
            {
              (*(v73 + 8))(v48, v74);
LABEL_45:
              v54 = v105;
              goto LABEL_47;
            }
          }

          else
          {
            v111 = 2;
            sub_1E682C8B8();
            v64 = v95;
            sub_1E68B3970();
            if (!v47)
            {
              (*(v75 + 8))(v64, v76);
              goto LABEL_45;
            }
          }
        }

        else
        {
          v111 = 0;
          sub_1E682C960();
          v60 = v69;
          sub_1E68B3970();
          if (!v47)
          {
            (*(v72 + 8))(v60, v68);
            goto LABEL_45;
          }
        }

        v54 = v105;
        goto LABEL_41;
      }

      v54 = v105;
      v57 = v71;
      if (v45 == 3)
      {
        v111 = 3;
        sub_1E682C864();
        sub_1E68B3970();
        if (!v57)
        {
          (*(v77 + 8))(v38, v78);
          goto LABEL_47;
        }
      }

      else if (v45 == 4)
      {
        v111 = 4;
        sub_1E682C810();
        sub_1E68B3970();
        if (!v57)
        {
          (*(v80 + 8))(v39, v79);
          goto LABEL_47;
        }
      }

      else
      {
        v111 = 5;
        sub_1E682C7BC();
        sub_1E68B3970();
        if (!v57)
        {
          (*(v82 + 8))(v40, v81);
          goto LABEL_47;
        }
      }

      goto LABEL_41;
    }

    if (v45 <= 8u)
    {
      v54 = v105;
      if (v45 == 6)
      {
        v111 = 6;
        sub_1E682C768();
        v61 = v96;
        v62 = v71;
        sub_1E68B3970();
        if (!v62)
        {
          (*(v83 + 8))(v61, v84);
          goto LABEL_47;
        }
      }

      else
      {
        v55 = v71;
        if (v45 == 7)
        {
          v111 = 7;
          sub_1E682C714();
          v56 = v97;
          sub_1E68B3970();
          if (!v55)
          {
            (*(v85 + 8))(v56, v86);
LABEL_47:
            (*(v54 + 8))(v46, v31);
LABEL_50:
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v106);
            return v32;
          }
        }

        else
        {
          v111 = 8;
          sub_1E682C6C0();
          v65 = v98;
          sub_1E68B3970();
          if (!v55)
          {
            (*(v87 + 8))(v65, v88);
            goto LABEL_47;
          }
        }
      }

LABEL_41:
      (*(v54 + 8))(v46, v31);
      goto LABEL_11;
    }

    v58 = v105;
    if (v45 == 9)
    {
      v111 = 9;
      sub_1E682C66C();
      v63 = v71;
      sub_1E68B3970();
      if (!v63)
      {
        (*(v89 + 8))(v41, v90);
        goto LABEL_49;
      }
    }

    else if (v45 == 10)
    {
      v111 = 10;
      sub_1E682C618();
      v59 = v71;
      sub_1E68B3970();
      if (!v59)
      {
        (*(v91 + 8))(v42, v92);
LABEL_49:
        (*(v58 + 8))(v46, v31);
        goto LABEL_50;
      }
    }

    else
    {
      v111 = 11;
      sub_1E682C5C4();
      v66 = v99;
      v67 = v71;
      sub_1E68B3970();
      if (!v67)
      {
        (*(v93 + 8))(v66, v94);
        goto LABEL_49;
      }
    }

    (*(v58 + 8))(v46, v31);
    goto LABEL_11;
  }

  v49 = v31;
  v50 = sub_1E68B3870();
  swift_allocError();
  v52 = v51;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20) + 48);
  *v52 = &type metadata for DynamicTypeSize;
  sub_1E68B3980();
  sub_1E68B3860();
  (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
  swift_willThrow();
  (*(v105 + 8))(v46, v49);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v106);
  return v32;
}

unint64_t sub_1E682DC98()
{
  result = qword_1EE2EBCF8;
  if (!qword_1EE2EBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBCF8);
  }

  return result;
}

uint64_t sub_1E682DCFC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E682DD8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E682DF10()
{
  result = qword_1ED0993E8;
  if (!qword_1ED0993E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993E8);
  }

  return result;
}

unint64_t sub_1E682DF68()
{
  result = qword_1EE2EBD58;
  if (!qword_1EE2EBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD58);
  }

  return result;
}

unint64_t sub_1E682DFC0()
{
  result = qword_1EE2EBD60;
  if (!qword_1EE2EBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD60);
  }

  return result;
}

unint64_t sub_1E682E018()
{
  result = qword_1EE2EBD88;
  if (!qword_1EE2EBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD88);
  }

  return result;
}

unint64_t sub_1E682E070()
{
  result = qword_1EE2EBD90;
  if (!qword_1EE2EBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD90);
  }

  return result;
}

unint64_t sub_1E682E0C8()
{
  result = qword_1EE2EBD78;
  if (!qword_1EE2EBD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD78);
  }

  return result;
}

unint64_t sub_1E682E120()
{
  result = qword_1EE2EBD80;
  if (!qword_1EE2EBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD80);
  }

  return result;
}

unint64_t sub_1E682E178()
{
  result = qword_1EE2EBD98;
  if (!qword_1EE2EBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD98);
  }

  return result;
}

unint64_t sub_1E682E1D0()
{
  result = qword_1EE2EBDA0;
  if (!qword_1EE2EBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDA0);
  }

  return result;
}

unint64_t sub_1E682E228()
{
  result = qword_1EE2EBD68;
  if (!qword_1EE2EBD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD68);
  }

  return result;
}

unint64_t sub_1E682E280()
{
  result = qword_1EE2EBD70;
  if (!qword_1EE2EBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD70);
  }

  return result;
}

unint64_t sub_1E682E2D8()
{
  result = qword_1EE2EBDD8;
  if (!qword_1EE2EBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDD8);
  }

  return result;
}

unint64_t sub_1E682E330()
{
  result = qword_1EE2EBDE0[0];
  if (!qword_1EE2EBDE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EBDE0);
  }

  return result;
}

unint64_t sub_1E682E388()
{
  result = qword_1EE2EBDC8;
  if (!qword_1EE2EBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDC8);
  }

  return result;
}

unint64_t sub_1E682E3E0()
{
  result = qword_1EE2EBDD0;
  if (!qword_1EE2EBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDD0);
  }

  return result;
}

unint64_t sub_1E682E438()
{
  result = qword_1EE2EBD48;
  if (!qword_1EE2EBD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD48);
  }

  return result;
}

unint64_t sub_1E682E490()
{
  result = qword_1EE2EBD50;
  if (!qword_1EE2EBD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD50);
  }

  return result;
}

unint64_t sub_1E682E4E8()
{
  result = qword_1EE2EBD38;
  if (!qword_1EE2EBD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD38);
  }

  return result;
}

unint64_t sub_1E682E540()
{
  result = qword_1EE2EBD40;
  if (!qword_1EE2EBD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD40);
  }

  return result;
}

unint64_t sub_1E682E598()
{
  result = qword_1EE2EBD28;
  if (!qword_1EE2EBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD28);
  }

  return result;
}

unint64_t sub_1E682E5F0()
{
  result = qword_1EE2EBD30;
  if (!qword_1EE2EBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD30);
  }

  return result;
}

unint64_t sub_1E682E648()
{
  result = qword_1EE2EBD18;
  if (!qword_1EE2EBD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD18);
  }

  return result;
}

unint64_t sub_1E682E6A0()
{
  result = qword_1EE2EBD20;
  if (!qword_1EE2EBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD20);
  }

  return result;
}

unint64_t sub_1E682E6F8()
{
  result = qword_1EE2EBD08;
  if (!qword_1EE2EBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD08);
  }

  return result;
}

unint64_t sub_1E682E750()
{
  result = qword_1EE2EBD10;
  if (!qword_1EE2EBD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD10);
  }

  return result;
}

unint64_t sub_1E682E7A8()
{
  result = qword_1EE2EBDB0;
  if (!qword_1EE2EBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDB0);
  }

  return result;
}

unint64_t sub_1E682E800()
{
  result = qword_1EE2EBDB8;
  if (!qword_1EE2EBDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDB8);
  }

  return result;
}

uint64_t Set<>.transformed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E68B1EF0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1E682EBBC(&qword_1EE2EA670, MEMORY[0x1E697EA78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099458, &qword_1E68C14B8);
  sub_1E682EB58();
  v22 = a2;
  sub_1E68B37B0();
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v20 = (v5 + 8);
  v23 = a1;

  v13 = 0;
  while (v10)
  {
LABEL_10:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = *(*(v23 + 48) + (v16 | (v13 << 6)));
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = v21;
        sub_1E68B1EC0();
        goto LABEL_4;
      }
    }

    else
    {
      v18 = v21;
      if (v17)
      {
        sub_1E68B1EE0();
      }

      else
      {
        sub_1E68B1ED0();
      }

LABEL_4:
      sub_1E682EBBC(&qword_1EE2EA678, MEMORY[0x1E697EA68]);
      v14 = v22;
      sub_1E68B3320();
      v19 = *v20;
      v19(v14, v4);
      sub_1E68B3320();
      v26 = v24 | v25;
      sub_1E682EBBC(&qword_1EE2EA668, MEMORY[0x1E697EA80]);
      sub_1E68B3C00();
      result = (v19)(v18, v4);
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
    }

    v10 = *(a1 + 56 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E682EB58()
{
  result = qword_1EE2EA4A8;
  if (!qword_1EE2EA4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099458, &qword_1E68C14B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA4A8);
  }

  return result;
}

uint64_t sub_1E682EBBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E68B1EF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t View.magicPocketTarget()(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E68B1E40();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = v16 - v11;
  MEMORY[0x1E69512E0](v10);
  v13 = sub_1E682ED8C();
  v16[0] = a2;
  v16[1] = v13;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v14 = *(v4 + 8);
  v14(v7, v3);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v14)(v12, v3);
}

unint64_t sub_1E682ED8C()
{
  result = qword_1ED099468[0];
  if (!qword_1ED099468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED099468);
  }

  return result;
}

uint64_t View.magicPocket<A, B>(backgroundStyle:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v45 = a7;
  v40 = a5;
  v41 = a8;
  v38 = a4;
  v43 = a3;
  v44 = a2;
  v42 = a1;
  v46 = a9;
  v11 = *(a6 - 8);
  v39 = a10;
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[0] = v14;
  v49[1] = v15;
  v49[2] = v16;
  v49[3] = v17;
  v18 = type metadata accessor for MagicPocketViewModifier(0, v49);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v38 - v21;
  v23 = sub_1E68B1E40();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v38 - v31;
  (*(v11 + 16))(v13, v42, a6, v30);
  v33 = v43;

  sub_1E682F104(v13, v44, v33, v40, a6, v41, v39, v22);
  v34 = v45;
  MEMORY[0x1E69512E0](v22, v38, v18, v45);
  (*(v19 + 8))(v22, v18);
  WitnessTable = swift_getWitnessTable();
  v47 = v34;
  v48 = WitnessTable;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v36 = *(v24 + 8);
  v36(v27, v23);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v36)(v32, v23);
}

uint64_t sub_1E682F104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v15 = type metadata accessor for MagicPocketViewModifier(0, &v20);
  v16 = (a8 + *(v15 + 52));
  *v16 = a2;
  v16[1] = a3;
  v17 = (a8 + *(v15 + 56));
  v24 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0994F8, qword_1E68C14D8);
  result = sub_1E68B2BC0();
  v19 = v21;
  *v17 = v20;
  v17[1] = v19;
  return result;
}

void sub_1E682F1F0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E67482E4();
    if (v2 <= 0x3F)
    {
      sub_1E682F5A0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E682F290(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

_BYTE *sub_1E682F3D4(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
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

      else if (v13)
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_1E682F5A0(uint64_t a1)
{
  if (!qword_1ED0994F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0994F8, qword_1E68C14D8);
    v1 = sub_1E68B2C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED0994F0);
    }
  }
}

uint64_t sub_1E682F658@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099510, &qword_1E68C15C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E68B74F0;
  *(v4 + 32) = a1;
  *a2 = v4;
}

uint64_t sub_1E682F6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E68B2C10();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099500, &qword_1E68C15B0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099508, &qword_1E68C15B8);
  v7 = (a2 + *(result + 36));
  *v7 = v4;
  v7[1] = sub_1E682F658;
  v7[2] = 0;
  return result;
}

uint64_t sub_1E682F788(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_1E68B3850();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099538, &qword_1E68C15D0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E682F88C@<X0>(void *a1@<X8>)
{
  if (qword_1ED096D60 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ED099460;
}

uint64_t sub_1E682F948@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v50 = a3;
  v47 = *(a2 - 1);
  v49 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v46 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_1E68B22E0();
  *&v44 = a2[2];
  sub_1E68B1E40();
  v5 = a2[3];
  *&v43 = a2[5];
  sub_1E68B23C0();
  sub_1E68B1E40();
  sub_1E68B2220();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E6981580];
  v64 = MEMORY[0x1E6981580];
  v65 = WitnessTable;
  v8 = MEMORY[0x1E697E858];
  v62 = swift_getWitnessTable();
  v63 = v7;
  swift_getWitnessTable();
  sub_1E68B1D70();
  swift_getWitnessTable();
  sub_1E68B21F0();
  sub_1E68B1E40();
  v60 = a2[4];
  v9 = v60;
  v61 = MEMORY[0x1E697EBF8];
  v40 = v8;
  v10 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v58 = v10;
  v59 = v11;
  swift_getWitnessTable();
  v38[1] = sub_1E68B2170();
  v12 = sub_1E68B1E40();
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v38 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099518, &qword_1E68C15C8);
  v16 = sub_1E68B1E40();
  v42 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v38[0] = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v39 = v38 - v21;
  *&v22 = v44;
  *(&v22 + 1) = v5;
  v44 = v22;
  *&v23 = v9;
  *(&v23 + 1) = v43;
  v43 = v23;
  v51 = v22;
  v52 = v23;
  v24 = v45;
  v53 = v45;
  sub_1E68B21C0();
  v37 = swift_getWitnessTable();
  sub_1E68B2830();
  v25 = v47;
  v26 = v46;
  (*(v47 + 16))(v46, v24, a2);
  v27 = (*(v25 + 80) + 48) & ~*(v25 + 80);
  v28 = swift_allocObject();
  v29 = v43;
  *(v28 + 16) = v44;
  *(v28 + 32) = v29;
  (*(v25 + 32))(v28 + v27, v26, a2);
  v30 = swift_getWitnessTable();
  v56 = v37;
  v57 = v30;
  v31 = swift_getWitnessTable();
  sub_1E6830F34();
  sub_1E6830F88();
  v32 = v38[0];
  sub_1E68B28D0();

  (*(v41 + 8))(v15, v12);
  v33 = sub_1E673F530(&qword_1ED099548, &qword_1ED099518, &qword_1E68C15C8, MEMORY[0x1E6980620]);
  v54 = v31;
  v55 = v33;
  swift_getWitnessTable();
  v34 = v39;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v35 = *(v42 + 8);
  v35(v32, v16);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v35)(v34, v16);
}

uint64_t sub_1E682FFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a1;
  v46 = a6;
  v44 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v42 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E68B1E40();
  v45 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v11);
  v41 = &v33 - v12;
  v35 = a3;
  v34 = a5;
  sub_1E68B23C0();
  sub_1E68B1E40();
  sub_1E68B2220();
  WitnessTable = swift_getWitnessTable();
  v14 = MEMORY[0x1E6981580];
  v56[6] = MEMORY[0x1E6981580];
  v56[7] = WitnessTable;
  v40 = MEMORY[0x1E697E858];
  v56[4] = swift_getWitnessTable();
  v56[5] = v14;
  swift_getWitnessTable();
  v37 = sub_1E68B1D70();
  v38 = swift_getWitnessTable();
  v39 = sub_1E68B21F0();
  v15 = sub_1E68B1E40();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v33 - v22;
  v56[0] = a2;
  v56[1] = a3;
  v56[2] = a4;
  v56[3] = a5;
  v24 = type metadata accessor for MagicPocketViewModifier(0, v56);
  v25 = v43;
  v26 = v42;
  (*(v43 + *(v24 + 52)))();
  sub_1E68B2E80();
  v27 = v41;
  sub_1E68B2A00();
  (*(v44 + 8))(v26, a2);
  v47 = a2;
  v48 = v35;
  v49 = a4;
  v50 = v34;
  v51 = v25;
  sub_1E68B2E80();
  v54 = a4;
  v55 = MEMORY[0x1E697EBF8];
  v28 = v36;
  v29 = swift_getWitnessTable();
  sub_1E68B2740();
  (*(v45 + 8))(v27, v28);
  v30 = swift_getWitnessTable();
  v52 = v29;
  v53 = v30;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v31 = *(v16 + 8);
  v31(v19, v15);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v31)(v23, v15);
}

uint64_t sub_1E6830504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[1] = a6;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v11 = type metadata accessor for MagicPocketViewModifier(0, &v30);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v23 - v15;
  (*(v12 + 16))(v23 - v15, a1, v11, v14);
  v17 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = a3;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  (*(v12 + 32))(&v18[v17], v16, v11);
  sub_1E68B23C0();
  sub_1E68B1E40();
  sub_1E68B2220();
  WitnessTable = swift_getWitnessTable();
  v20 = MEMORY[0x1E6981580];
  v28 = MEMORY[0x1E6981580];
  v29 = WitnessTable;
  v26 = swift_getWitnessTable();
  v27 = v20;
  swift_getWitnessTable();
  v24 = sub_1E68B1D60();
  v25 = v21;
  sub_1E68B1D70();
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();

  v24 = v30;
  v25 = v31;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
}

uint64_t sub_1E68307A0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a1;
  v42 = a7;
  v41 = sub_1E68B23C0();
  v11 = sub_1E68B1E40();
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v37 - v17;
  v19 = sub_1E68B2220();
  v20 = *(v19 - 8);
  v39 = v19;
  v40 = v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v37 - v22;
  v51[0] = a3;
  v51[1] = a4;
  v51[2] = a5;
  v51[3] = a6;
  v24 = type metadata accessor for MagicPocketViewModifier(0, v51);
  v25 = sub_1E6830B8C(v38, v24);
  v26 = sub_1E68B2B20();
  v27 = MEMORY[0x1E6981580];
  v51[0] = v26;
  if (v25)
  {
    sub_1E68B2500();
    v28 = MEMORY[0x1E69815C0];
    sub_1E68B2750();

    WitnessTable = swift_getWitnessTable();
    v43 = v27;
    v44 = WitnessTable;
    v30 = swift_getWitnessTable();
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v31 = *(v37 + 8);
    v31(v14, v11);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    sub_1E6744CC0(v14, v11, v28, v30, v27);
    v31(v14, v11);
    v31(v18, v11);
  }

  else
  {
    v32 = swift_getWitnessTable();
    v49 = v27;
    v50 = v32;
    v33 = swift_getWitnessTable();
    sub_1E6744DB8(v51, v11, MEMORY[0x1E69815C0], v33, v27);
  }

  v34 = swift_getWitnessTable();
  v47 = v27;
  v48 = v34;
  v45 = swift_getWitnessTable();
  v46 = v27;
  v35 = v39;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v40 + 8))(v23, v35);
}

uint64_t sub_1E6830B8C(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 56));
  v5 = *v4;
  v6 = v4[1];
  v18 = *v4;
  v19 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099550, &qword_1E68C15D8);
  sub_1E68B2BD0();
  v7 = *(v17 + 16);

  if (v7)
  {
    sub_1E68B1C60();
    v9 = v8;
    v11 = v10;
    v18 = v5;
    v19 = v6;
    v12 = sub_1E68B2BD0();
    MEMORY[0x1EEE9AC00](v12, v13);
    v16[3] = 0;
    v16[4] = 0;
    v16[2] = a1;
    v16[5] = v9;
    v16[6] = v11;
    v14 = sub_1E6830DB4(sub_1E68312D0, v16, v17);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1E6830CA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v6 = (a2 + *(type metadata accessor for MagicPocketViewModifier(0, &v10) + 56));
  v8 = *v6;
  v7 = v6[1];
  v10 = v8;
  v11 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099550, &qword_1E68C15D8);
  return sub_1E68B2BE0();
}

BOOL sub_1E6830D24(uint64_t *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  type metadata accessor for CGRect(0);
  sub_1E68B1CA0();
  v11.origin.x = a2;
  v11.origin.y = a3;
  v11.size.width = a4;
  v11.size.height = a5;
  return CGRectIntersectsRect(v11, v10);
}

uint64_t sub_1E6830DB4(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_1E6830E88(uint64_t *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for MagicPocketViewModifier(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1E6830CA4(a1, v8, v3, v4, v5, v6);
}

unint64_t sub_1E6830F34()
{
  result = qword_1ED099520;
  if (!qword_1ED099520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099520);
  }

  return result;
}

unint64_t sub_1E6830F88()
{
  result = qword_1ED099528;
  if (!qword_1ED099528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0994F8, qword_1E68C14D8);
    sub_1E683100C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099528);
  }

  return result;
}

unint64_t sub_1E683100C()
{
  result = qword_1ED099530;
  if (!qword_1ED099530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099538, &qword_1E68C15D0);
    sub_1E6831090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099530);
  }

  return result;
}

unint64_t sub_1E6831090()
{
  result = qword_1ED099540;
  if (!qword_1ED099540)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099540);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v4 = v6;
  v7 = v1;
  v2 = *(type metadata accessor for MagicPocketViewModifier(0, &v5) - 8);
  (*(*(v4 - 8) + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E6831214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v10[0] = v2[2];
  v5 = v10[0];
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  type metadata accessor for MagicPocketViewModifier(0, v10);

  return sub_1E68307A0(a1, v5, v6, v7, v8, a2);
}

unint64_t sub_1E6831308()
{
  result = qword_1ED099558;
  if (!qword_1ED099558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099508, &qword_1E68C15B8);
    sub_1E673F530(&qword_1ED099560, &qword_1ED099500, &qword_1E68C15B0, MEMORY[0x1E697FDF8]);
    sub_1E673F530(&qword_1ED099568, &qword_1ED099570, &qword_1E68C1608, MEMORY[0x1E697FF70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099558);
  }

  return result;
}

uint64_t CanvasLayout.densityFactor<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v92 = a5;
  v93 = a1;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = type metadata accessor for CanvasVerticalGridLayout(0, v7, v8, a4);
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v82 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v83 = &v80 - v14;
  v16 = type metadata accessor for CanvasHorizontalGridLayout(0, v7, v8, v15);
  v84 = *(v16 - 8);
  v85 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v80 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v81 = &v80 - v21;
  v23 = type metadata accessor for CanvasGridAxis(0, v7, v8, v22);
  v89 = *(v23 - 8);
  v90 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v88 = &v80 - v29;
  v91 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v80 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v80 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v80 - v44;
  v94 = v7;
  v95 = a3;
  v96 = v8;
  v97 = a4;
  v46 = type metadata accessor for CanvasSectionLayout(0, &v94);
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  v50 = &v80 - v49;
  (*(v51 + 16))(&v80 - v49, v93, v46, v48);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      goto LABEL_11;
    }

    v64 = v91;
    (*(v91 + 32))(v45, v50, v7);
    sub_1E68B3110();
    result = (*(v64 + 8))(v45, v7);
  }

  else
  {
    if (result != 2)
    {
      if (result == 3)
      {
        v54 = v88;
        v53 = v89;
        v55 = v90;
        (*(v89 + 32))(v88, v50, v90);
        (*(v53 + 16))(v26, v54, v55);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v56 = v84;
          v57 = v81;
          v58 = v26;
          v59 = v85;
          (*(v84 + 32))(v81, v58, v85);
          v60 = v80;
          (*(v56 + 16))(v80, v57, v59);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
            v62 = v60;
            v63 = v91;
            (*(v91 + 32))(v41, v62 + *(TupleTypeMetadata2 + 48), v7);
            sub_1E68B3110();
            (*(v63 + 8))(v41, v7);
            (*(v56 + 8))(v57, v59);
LABEL_15:
            result = (*(v53 + 8))(v54, v55);
            goto LABEL_16;
          }

          (*(v56 + 8))(v57, v59);
          result = (*(v53 + 8))(v54, v55);
          v78 = *v60;
          v79 = v60[2];
        }

        else
        {
          v68 = v86;
          v67 = v87;
          v69 = v83;
          (*(v86 + 32))(v83, v26, v87);
          v70 = v82;
          (*(v68 + 16))(v82, v69, v67);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v71 = v70;
            v72 = v69;
            v73 = v91;
            (*(v91 + 32))(v37, v71, v7);
            sub_1E68B3110();
            (*(v73 + 8))(v37, v7);
            (*(v68 + 8))(v72, v67);
            goto LABEL_15;
          }

          (*(v68 + 8))(v69, v67);
          result = (*(v53 + 8))(v54, v55);
          v78 = *v70;
          v79 = v70[1];
        }

        v66 = v92;
        *v92 = v78;
        v66[1] = v79;
LABEL_12:
        v66[2] = 1;
        return result;
      }

      result = (*(*(*&a3 - 8) + 8))(v50, COERCE_DOUBLE(*&a3));
LABEL_11:
      v66 = v92;
      *v92 = 1;
      v66[1] = 0;
      goto LABEL_12;
    }

    v65 = v91;
    (*(v91 + 32))(v33, v50, v7);
    sub_1E68B3110();
    result = (*(v65 + 8))(v33, v7);
  }

LABEL_16:
  v74 = v96;
  v75 = v95;
  if (v97)
  {
    v76 = 1;
  }

  else
  {
    v76 = v94;
  }

  if (v97)
  {
    v75 = 0.0;
    v74 = 1;
  }

  v77 = v92;
  *v92 = v76;
  *(v77 + 1) = v75;
  v77[2] = v74;
  return result;
}

uint64_t CanvasSectionDescriptor.transformed()@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v26 = *(a1 + 56);
  v27 = a2;
  v4 = sub_1E68B3750();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - v7;
  v9 = *(a1 + 16);
  v24 = *(a1 + 72);
  v25 = v9;
  v10 = *(a1 + 88);
  v11 = *(a1 + 160);
  v28[0] = v9;
  v28[1] = v24;
  v28[2] = v10;
  v28[3] = v11;
  type metadata accessor for CanvasSectionHeader(255, v28);
  v12 = sub_1E68B3750();
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v22 - v15;
  v17 = v2[1];
  v23 = *v2;
  (*(v18 + 16))(&v22 - v15, v2 + *(a1 + 184), v14);
  v19 = *(a1 + 192);
  LOBYTE(v28[0]) = *(v2 + *(a1 + 188));
  v20 = *(v2 + v19);
  (*(v5 + 16))(v8, v2 + *(a1 + 196), v4);
  CanvasSectionViewDescriptor.init(identifier:header:footer:items:metrics:)(v23, v17, v16, v28, v20, v8, v25, *(a1 + 24), v27, *(a1 + 32), *(a1 + 48), v26, v24, *(a1 + 80), v10, *(a1 + 96), *(a1 + 112), *(a1 + 128), *(a1 + 144), v11, *(a1 + 168));
}

uint64_t LazyCanvasSectionViewDescriptor.transformed(with:missingPlaceholders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = v4;
  v54.i64[0] = a2;
  v53.i64[0] = a1;
  v48 = a4;
  v55 = *(a3 + 56);
  v7 = sub_1E68B3750();
  v46 = *(v7 - 8);
  v47 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v45 = &v37 - v10;
  v11 = *(a3 + 64);
  v12 = *(a3 + 144);
  v51 = *(a3 + 16);
  v69 = v51;
  v70.i64[0] = v11;
  v13 = v11;
  v39 = v11;
  v40 = v12;
  v9.i64[0] = v51;
  v52 = v9;
  v70.i64[1] = *(a3 + 80);
  v71.i64[0] = v12;
  v14 = v12;
  v15 = v70.u64[1];
  v38 = v70.i64[1];
  type metadata accessor for CanvasSectionHeader(255, &v69);
  v16 = sub_1E68B3750();
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v43 = &v37 - v19;
  v20 = v5[1];
  v44 = *v5;
  v42 = v20;
  v22 = (*(v21 + 16))(&v37 - v19, v5 + *(a3 + 164), v18);
  v23 = *(a3 + 172);
  v79[0] = *(v5 + *(a3 + 168));
  v78 = *(v5 + v23);
  v24 = *(a3 + 72);
  v22.i64[0] = v15;
  v50 = v22;
  v41 = *(a3 + 136);
  v64 = v41;
  v65 = v14;
  v66 = *(a3 + 152);
  v25 = v66;
  v67 = v53.i64[0];
  v68 = v54.i64[0];

  v53 = *(a3 + 24);
  v26 = *(a3 + 40);
  *&v27 = vdupq_laneq_s64(v26, 1).u64[0];
  *(&v27 + 1) = v55;
  v70 = v53;
  *&v28 = v13;
  *(&v28 + 1) = v24;
  v58 = v27;
  v59 = v28;
  v54 = v26;
  v56 = vzip1q_s64(v52, v53);
  v57 = vzip1q_s64(vdupq_laneq_s64(v53, 1), v26);
  v71 = v26;
  v29 = v51;
  v69 = v51;
  v52 = *(a3 + 88);
  v30 = vzip1q_s64(v50, v52);
  v74 = v52;
  v31 = *(a3 + 104);
  v49 = *(a3 + 120);
  v50 = v31;
  v63 = v49.i64[1];
  v60 = v30;
  v61 = vzip1q_s64(vdupq_laneq_s64(v52, 1), v31);
  v62 = vextq_s8(v31, v49, 8uLL);
  v76 = v49;
  v75 = v31;
  v32 = v38;
  v72 = v24;
  v73 = v38;
  v77 = v25;
  type metadata accessor for LazyCanvasItemDescriptor(255, &v69);
  sub_1E68B33B0();
  v70 = v53;
  v71 = v54;
  v69 = v29;
  v72 = v24;
  v73 = v32;
  v74 = v52;
  v75 = v50;
  v76 = v49;
  v33 = v32;
  v77 = v25;
  type metadata accessor for CanvasItemDescriptor(0, &v69);
  swift_getWitnessTable();
  v34 = sub_1E68B32E0();

  v35 = v45;
  (*(v46 + 16))(v45, v5 + *(a3 + 176), v47);
  return CanvasSectionViewDescriptor.init(identifier:header:footer:items:metrics:)(v44, v42, v43, v79, v34, v35, v51, v53.i64[0], v48, *&vextq_s8(v53, v54, 8uLL), v54.i64[1], v55, v39, v24, v33, *&v52, *&v50, *&v49, v41, v40, v25);
}

uint64_t sub_1E6832230@<X0>(ValueMetadata *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a11;
  v39 = a12;
  v40 = a13;
  v41 = a14;
  v42 = a15;
  v43 = a16;
  v44 = a17;
  v45 = a18;
  v46 = a21;
  v24 = type metadata accessor for LazyCanvasItemDescriptor(0, &v33);
  LazyCanvasItemDescriptor.transformed(with:missingPlaceholders:)(a1, a2, v24, a8);
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a11;
  v39 = a12;
  v40 = a13;
  v41 = a14;
  v42 = a15;
  v43 = a16;
  v44 = a17;
  v45 = a18;
  v46 = a21;
  v25 = type metadata accessor for CanvasItemDescriptor(0, &v33);
  return (*(*(v25 - 8) + 56))(a8, 0, 1, v25);
}

uint64_t sub_1E68323D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v25 = *(a1 + 32);
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  swift_storeEnumTagMultiPayload();
  v27 = type metadata accessor for SummaryCardView(0, a17, a18, v26);
  v28 = &a9[v27[9]];
  v29 = *(a1 + 16);
  *v28 = *a1;
  *(v28 + 1) = v29;
  *(v28 + 4) = v25;
  (*(*(a17 - 8) + 32))(&a9[v27[10]], a2, a17);
  v30 = v27[11];
  v31 = sub_1E68B1A10();
  (*(*(v31 - 8) + 32))(&a9[v30], a3, v31);
  v32 = &a9[v27[12]];
  *v32 = a4;
  *(v32 + 1) = a5;
  *(v32 + 2) = a6;
  *(v32 + 3) = a7;
  v33 = &a9[v27[13]];
  *v33 = a8;
  *(v33 + 8) = a10;
  *(v33 + 3) = a11;
  v34 = &a9[v27[14]];
  *v34 = a12;
  *(v34 + 2) = a13;
  *(v34 + 3) = a14;
  v35 = &a9[v27[15]];
  result = swift_allocObject();
  *(result + 16) = a15;
  *(result + 24) = a16;
  *v35 = sub_1E673F5E0;
  *(v35 + 1) = result;
  return result;
}

double static SummaryCardViewLayout.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ED096D68 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&qword_1ED099598;
  v2 = unk_1ED099588;
  *a1 = xmmword_1ED099578;
  *(a1 + 16) = v2;
  *(a1 + 32) = result;
  return result;
}

__n128 SummaryCardViewLayout.contentMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 SummaryCardViewLayout.init(chinHeight:contentMargins:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  result = *a1;
  v4 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_1E6832664()
{
  if (*v0)
  {
    return 0x4D746E65746E6F63;
  }

  else
  {
    return 0x676965486E696863;
  }
}

uint64_t sub_1E68326B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676965486E696863 && a2 == 0xEA00000000007468;
  if (v6 || (sub_1E68B3B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E68B3B00();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E683279C(uint64_t a1)
{
  v2 = sub_1E68349DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68327D8(uint64_t a1)
{
  v2 = sub_1E68349DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummaryCardViewLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0995A0, &qword_1E68C1690);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v12 = *(v1 + 3);
  v13 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68349DC();
  sub_1E68B3BD0();
  *&v14 = v9;
  v16 = 0;
  sub_1E67621E8();
  sub_1E68B3AB0();
  if (!v2)
  {
    v14 = v13;
    v15 = v12;
    v16 = 1;
    sub_1E67F4B08();
    sub_1E68B3AB0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SummaryCardViewLayout.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v1);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1E69523F0](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1E69523F0](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x1E69523F0](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  return MEMORY[0x1E69523F0](*&v9);
}

uint64_t SummaryCardViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  SummaryCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t SummaryCardViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0995B0, &qword_1E68C1698);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68349DC();
  sub_1E68B3BC0();
  if (!v2)
  {
    v15 = 0;
    sub_1E6762A60();
    sub_1E68B3A00();
    v10 = *&v14[0];
    v15 = 1;
    sub_1E67F4BB0();
    sub_1E68B3A00();
    (*(v6 + 8))(v9, v5);
    v11 = v14[0];
    v12 = v14[1];
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E6832CBC()
{
  sub_1E68B3B70();
  SummaryCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6832D14(uint64_t a1)
{
  sub_1E68B3B70();
  SummaryCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

double sub_1E6832D68()
{
  result = 42.0;
  xmmword_1ED099578 = xmmword_1E68C1660;
  unk_1ED099588 = xmmword_1E68C1670;
  qword_1ED099598 = 0x402E000000000000;
  return result;
}

uint64_t sub_1E6832D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = sub_1E68B1DE0();
  v4 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099630, &qword_1E68C1958);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099620, &qword_1E68C1950);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099610, &qword_1E68C1948);
  v22 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v45 - v24;
  *v15 = sub_1E68B21D0();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099648, &qword_1E68C1968);
  sub_1E683316C(v2, *(a1 + 16), *(a1 + 24), &v15[*(v26 + 44)]);
  sub_1E68B2E90();
  sub_1E68B1F30();
  sub_1E6761420(v15, v20, &qword_1ED099630, &qword_1E68C1958);
  v27 = &v20[*(v17 + 44)];
  v28 = v54;
  *(v27 + 4) = v53;
  *(v27 + 5) = v28;
  *(v27 + 6) = v55;
  v29 = v50;
  *v27 = v49;
  *(v27 + 1) = v29;
  v30 = v52;
  *(v27 + 2) = v51;
  *(v27 + 3) = v30;
  v31 = v2 + *(a1 + 36);
  v32 = *(v31 + 24);
  v45 = *(v31 + 8);
  v46 = v32;
  LOBYTE(v15) = sub_1E68B2500();
  sub_1E6761420(v20, v25, &qword_1ED099620, &qword_1E68C1950);
  v33 = &v25[*(v22 + 44)];
  *&v35 = v45;
  v34 = *(&v46 + 1);
  *(&v36 + 1) = *(&v45 + 1);
  *&v36 = v46;
  *v33 = v15;
  *(&v35 + 1) = v34;
  *(v33 + 24) = v35;
  *(v33 + 8) = v36;
  v33[40] = 0;
  sub_1E677A200(v11);
  v37 = v47;
  (*(v4 + 104))(v7, *MEMORY[0x1E697E6C0], v47);
  LOBYTE(v22) = sub_1E68B1DD0();
  v38 = *(v4 + 8);
  v38(v7, v37);
  v38(v11, v37);
  if (v22)
  {
    v39 = sub_1E68B2B20();
  }

  else
  {
    sub_1E68B19F0();
    v39 = sub_1E68B2B70();
  }

  v40 = v39;
  v41 = sub_1E68B2500();
  v42 = v48;
  sub_1E6761420(v25, v48, &qword_1ED099610, &qword_1E68C1948);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0995D8, &qword_1E68C1928);
  v44 = v42 + *(result + 36);
  *v44 = v40;
  *(v44 + 8) = v41;
  return result;
}

uint64_t sub_1E683316C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099650, &qword_1E68C1970);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099658, &qword_1E68C1978);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v84 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v63 - v17;
  v20 = type metadata accessor for SummaryCardView(0, a2, a3, v19);
  v21 = (a1 + v20[14]);
  v22 = *v21;
  v81 = v21[1];
  v82 = v22;
  v24 = v21[2];
  v23 = v21[3];
  v83 = v24;
  v80 = v23;
  if (v23)
  {
    KeyPath = swift_getKeyPath();
    v25 = v18;
    v26 = &v11[*(v7 + 36)];
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8, &qword_1E68C3A30) + 28);
    v87 = a1;
    v28 = *MEMORY[0x1E6980FD8];
    v29 = sub_1E68B2690();
    v30 = *(v29 - 8);
    (*(v30 + 104))(v26 + v27, v28, v29);
    (*(v30 + 56))(v26 + v27, 0, 1, v29);
    *v26 = swift_getKeyPath();
    v18 = v25;
    v31 = v81;
    *v11 = v82;
    *(v11 + 1) = v31;
    v11[16] = v83 & 1;
    v32 = KeyPath;
    *(v11 + 3) = v80;
    *(v11 + 4) = v32;
    *(v11 + 5) = 1;
    a1 = v87;
    v11[48] = 0;
    sub_1E6761420(v11, v25, &qword_1ED099650, &qword_1E68C1970);
    (*(v8 + 56))(v25, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v18, 1, 1, v7);
  }

  v33 = (a1 + v20[12]);
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[2];
  v78 = v33[3];
  v75 = v36;
  if (v78)
  {
    v87 = swift_getKeyPath();
    v37 = v36 & 1;
    v89 = v36 & 1;
    v88 = 0;
    LODWORD(KeyPath) = 0x10000;
    v85 = 2;
    v38 = v34;
    v39 = v35;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v87 = 0;
    v85 = 0;
    LODWORD(KeyPath) = 0;
  }

  v76 = v35;
  v77 = v34;
  v40 = (a1 + v20[13]);
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  v69 = v40[3];
  v67 = v42;
  v66 = v43;
  v65 = v41;
  if (v69)
  {
    v44 = swift_getKeyPath();
    v73 = v43 & 1;
    sub_1E673F26C(v41, v42, v43 & 1);

    v74 = v44;

    v71 = v41;
    v72 = 1;
    v70 = v42;
  }

  else
  {
    v70 = 0;
    v71 = 0;
    v73 = 0;
    v74 = 0;
    v72 = 0;
  }

  v45 = v84;
  sub_1E67612FC(v18, v84, &qword_1ED099658, &qword_1E68C1978);
  v46 = v45;
  v47 = v79;
  sub_1E67612FC(v46, v79, &qword_1ED099658, &qword_1E68C1978);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099660, &qword_1E68C1980);
  v49 = v47 + *(v48 + 48);
  *v49 = v38;
  *(v49 + 8) = v39;
  v50 = v78;
  *(v49 + 16) = v37;
  *(v49 + 24) = v50;
  v64 = v37;
  v51 = v87;
  v52 = v85;
  *(v49 + 32) = v87;
  *(v49 + 40) = v52;
  v85 = v52;
  v53 = KeyPath;
  *(v49 + 50) = BYTE2(KeyPath);
  *(v49 + 48) = v53;
  LODWORD(KeyPath) = v53;
  v54 = *(v48 + 64);
  v68 = v18;
  v55 = v47 + v54;
  sub_1E673F228(v82, v81, v83, v80);
  sub_1E673F228(v77, v76, v75, v50);
  v56 = v69;
  sub_1E673F228(v65, v67, v66, v69);
  sub_1E677EFE4(v38, v39, v37, v50, v51);
  v58 = v70;
  v57 = v71;
  v59 = v73;
  v60 = v74;
  v61 = v72;
  sub_1E677EFE4(v71, v70, v73, v56, v74);
  sub_1E677F034(v57, v58, v59, v56, v60);
  *v55 = v57;
  *(v55 + 8) = v58;
  *(v55 + 16) = v59;
  *(v55 + 24) = v56;
  *(v55 + 32) = v60;
  *(v55 + 40) = v61;
  *(v55 + 48) = 0;
  sub_1E6744A10(v68, &qword_1ED099658, &qword_1E68C1978);
  sub_1E677F034(v57, v58, v59, v56, v60);
  sub_1E677F034(v38, v39, v64, v50, v87);
  return sub_1E6744A10(v84, &qword_1ED099658, &qword_1E68C1978);
}

uint64_t sub_1E6833708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v72 = a2;
  v3 = *(a1 + 16);
  sub_1E68B1E40();
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995D8, &qword_1E68C1928);
  swift_getTupleTypeMetadata2();
  v4 = sub_1E68B2F00();
  WitnessTable = swift_getWitnessTable();
  v67 = v4;
  v5 = sub_1E68B2CC0();
  v70 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v62 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v69 = v61 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E0, &qword_1E68C1930);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8, &qword_1E68C1938);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  v61[1] = swift_getWitnessTable();
  v11 = sub_1E68B2CC0();
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v61 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995F0, &qword_1E68C1940);
  v76 = v11;
  v15 = sub_1E68B1E40();
  v65 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v64 = v61 - v21;
  v22 = sub_1E68B1DE0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E68B2220();
  v74 = *(v27 - 8);
  v75 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v73 = v61 - v29;
  sub_1E677A200(v26);
  v30 = (*(v23 + 88))(v26, v22);
  if (v30 == *MEMORY[0x1E697E718] || v30 == *MEMORY[0x1E697E6F0] || v30 == *MEMORY[0x1E697E6F8] || v30 == *MEMORY[0x1E697E6E8] || v30 == *MEMORY[0x1E697E708] || v30 == *MEMORY[0x1E697E720] || v30 == *MEMORY[0x1E697E728])
  {
    MEMORY[0x1EEE9AC00](v30, v31);
    v43 = *(v71 + 24);
    v61[-4] = v3;
    v61[-3] = v43;
    v61[-2] = v2;
    sub_1E68B21C0();
    sub_1E68B2CB0();
    v44 = sub_1E68B2E70();
    v71 = v5;
    MEMORY[0x1EEE9AC00](v44, v45);
    v61[-4] = v3;
    v61[-3] = v43;
    v61[-2] = v2;
    v70 = MEMORY[0x1E6981870];
    v46 = v76;
    v47 = swift_getWitnessTable();
    sub_1E68353D4();
    sub_1E68B2A40();
    v48 = v71;
    (*(v63 + 8))(v14, v46);
    v49 = sub_1E673F530(&qword_1ED0995F8, &qword_1ED0995F0, &qword_1E68C1940, MEMORY[0x1E697EC18]);
    v77 = v47;
    v78 = v49;
    v50 = swift_getWitnessTable();
    v51 = v64;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v52 = *(v65 + 8);
    v52(v18, v15);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v53 = swift_getWitnessTable();
    v42 = v73;
    sub_1E6744CC0(v18, v15, v48, v50, v53);
    v52(v18, v15);
    v52(v51, v15);
    goto LABEL_15;
  }

  if (v30 == *MEMORY[0x1E697E6C0] || v30 == *MEMORY[0x1E697E6C8] || v30 == *MEMORY[0x1E697E6D0] || v30 == *MEMORY[0x1E697E6D8] || v30 == *MEMORY[0x1E697E6E0])
  {
    v32 = sub_1E68B21D0();
    MEMORY[0x1EEE9AC00](v32, v33);
    v34 = *(v71 + 24);
    v61[-4] = v3;
    v61[-3] = v34;
    v61[-2] = v2;
    v35 = v62;
    sub_1E68B2CB0();
    v36 = swift_getWitnessTable();
    v37 = v69;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v38 = *(v70 + 8);
    v38(v35, v5);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v39 = swift_getWitnessTable();
    v40 = sub_1E673F530(&qword_1ED0995F8, &qword_1ED0995F0, &qword_1E68C1940, MEMORY[0x1E697EC18]);
    v83 = v39;
    v84 = v40;
    v41 = swift_getWitnessTable();
    v42 = v73;
    sub_1E6744DB8(v35, v15, v5, v41, v36);
    v38(v35, v5);
    v38(v37, v5);
LABEL_15:
    v55 = v74;
    v54 = v75;
    v56 = swift_getWitnessTable();
    v57 = sub_1E673F530(&qword_1ED0995F8, &qword_1ED0995F0, &qword_1E68C1940, MEMORY[0x1E697EC18]);
    v81 = v56;
    v82 = v57;
    v58 = swift_getWitnessTable();
    v59 = swift_getWitnessTable();
    v79 = v58;
    v80 = v59;
    swift_getWitnessTable();
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    return (*(v55 + 8))(v42, v54);
  }

  result = sub_1E68B3AF0();
  __break(1u);
  return result;
}

uint64_t sub_1E68340E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v7 = sub_1E68B1E40();
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v36 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E0, &qword_1E68C1930);
  v11 = sub_1E68B1E40();
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v43 = &v36 - v17;
  type metadata accessor for SummaryCardView(0, a2, a3, v18);
  v39 = a1;
  sub_1E68B2780();
  sub_1E68B2E70();
  v44 = a2;
  v45 = a3;
  v46 = a1;
  v56[4] = a3;
  v56[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E68355DC();
  sub_1E68B2A40();
  (*(v40 + 8))(v10, v7);
  v20 = sub_1E673F530(&qword_1ED099668, &qword_1ED0995E0, &qword_1E68C1930, MEMORY[0x1E697EC18]);
  v56[2] = WitnessTable;
  v56[3] = v20;
  v37 = v11;
  v38 = swift_getWitnessTable();
  v21 = v43;
  v22 = v14;
  v36 = v14;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v23 = v41;
  v40 = *(v41 + 8);
  (v40)(v22, v11);
  sub_1E68B19F0();
  v24 = sub_1E68B2B70();
  sub_1E68B2E80();
  sub_1E68B1C50();
  v25 = v56[6];
  LOBYTE(a3) = v57;
  v26 = v58;
  v27 = v59;
  v28 = v60;
  v29 = v61;
  v30 = *(v23 + 16);
  v31 = v36;
  v32 = v21;
  v33 = v37;
  v30(v36, v32, v37);
  v50[0] = v24;
  v50[1] = v25;
  v51 = a3;
  v52 = v26;
  v53 = v27;
  v54 = v28;
  v55 = v29;
  v56[0] = v31;
  v56[1] = v50;

  v49[0] = v33;
  v49[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0995E8, &qword_1E68C1938);
  v47 = v38;
  v48 = sub_1E6835630();
  sub_1E6848F14(v56, 2uLL, v49);

  v34 = v40;
  (v40)(v43, v33);

  return v34(v31, v33);
}

double sub_1E683456C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0981F8, &qword_1E68C19F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E68C1680;
  type metadata accessor for SummaryCardView(0, a1, a2, v7);
  sub_1E68B19F0();
  *(v6 + 32) = sub_1E68B2B70();
  sub_1E68B19F0();
  sub_1E68B2B70();
  v8 = sub_1E68B2B40();

  *(v6 + 40) = v8;
  sub_1E68B19F0();
  sub_1E68B2B70();
  v9 = sub_1E68B2B40();

  *(v6 + 48) = v9;
  sub_1E68B2F40();
  sub_1E68B2F50();
  MEMORY[0x1E69515E0](v6);
  sub_1E68B1D90();
  result = *&v11;
  *a3 = v11;
  *(a3 + 16) = v12;
  *(a3 + 32) = v13;
  return result;
}

uint64_t sub_1E68346B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v30 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0995D8, &qword_1E68C1928);
  MEMORY[0x1EEE9AC00](v29, v6);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v27 - v10;
  v12 = sub_1E68B1E40();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v27 - v19;
  v22 = type metadata accessor for SummaryCardView(0, a2, a3, v21);
  sub_1E68B2780();
  v34[2] = a3;
  v34[3] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v24 = *(v13 + 8);
  v24(v16, v12);
  sub_1E6832D90(v22, v11);
  (*(v13 + 16))(v16, v20, v12);
  v34[0] = v16;
  v25 = v28;
  sub_1E67612FC(v11, v28, &qword_1ED0995D8, &qword_1E68C1928);
  v34[1] = v25;
  v33[0] = v12;
  v33[1] = v29;
  v31 = WitnessTable;
  v32 = sub_1E68353D4();
  sub_1E6848F14(v34, 2uLL, v33);
  sub_1E6744A10(v11, &qword_1ED0995D8, &qword_1E68C1928);
  v24(v20, v12);
  sub_1E6744A10(v25, &qword_1ED0995D8, &qword_1E68C1928);
  return (v24)(v16, v12);
}

uint64_t _s15FitnessCanvasUI21SummaryCardViewLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E68349DC()
{
  result = qword_1ED0995A8;
  if (!qword_1ED0995A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0995A8);
  }

  return result;
}

unint64_t sub_1E6834A34()
{
  result = qword_1ED0995B8;
  if (!qword_1ED0995B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0995B8);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E6834A9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E6834ABC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

void sub_1E6834B10(uint64_t a1)
{
  sub_1E674828C(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1E68B1A10();
      if (v3 <= 0x3F)
      {
        sub_1E673ED38();
        if (v4 <= 0x3F)
        {
          sub_1E673ED88(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E6834BF0(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1E68B1DE0() - 8) + 64);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  if (v6 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(v8 + 84);
  v11 = sub_1E68B1A10();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v12 + 80);
  if (v10 <= v13)
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(v11 - 8) + 64) + 7;
  if (v17 >= a2)
  {
    goto LABEL_32;
  }

  v19 = ((((((((v18 + ((v15 + v16 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v14 + 48) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v17 + 1;
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

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v17 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  v28 = (((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8) + v14 + 40) & ~v14;
  if (v10 == v17)
  {
    v29 = *(v8 + 48);

    return v29(v28, v10, v7);
  }

  else
  {
    v30 = (v28 + v15 + v16) & ~v16;
    if (v13 == v17)
    {
      v31 = *(v12 + 48);

      return v31(v30);
    }

    else
    {
      v32 = *((((((((v18 + v30) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
      if (v32 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      return (v32 + 1);
    }
  }
}

void sub_1E6834EE8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1E68B1DE0() - 8) + 64);
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  if (v8 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v10 + 84);
  v13 = sub_1E68B1A10();
  v14 = v10;
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  v19 = *(v15 + 80);
  if (v12 <= v16)
  {
    v20 = *(v15 + 84);
  }

  else
  {
    v20 = v12;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  v21 = *(*(v13 - 8) + 64) + 7;
  v22 = ((((((((v21 + ((v18 + v19 + (((v11 & 0xFFFFFFFFFFFFFFF8) + v17 + 48) & ~v17)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 >= a3)
  {
    v25 = 0;
    v26 = a2 - v20;
    if (a2 <= v20)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((((((v21 + ((v18 + v19 + (((v11 & 0xFFFFFFF8) + v17 + 48) & ~v17)) & ~v19)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v23 = a3 - v20 + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = a2 - v20;
    if (a2 <= v20)
    {
LABEL_22:
      if (v25 > 1)
      {
        if (v25 != 2)
        {
          *(a1 + v22) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v22) = 0;
      }

      else if (v25)
      {
        *(a1 + v22) = 0;
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
      v29 = (((a1 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) + v17 + 40) & ~v17;
      if (v12 == v20)
      {
        v30 = *(v14 + 56);

        v30(v29, a2, v12, v9);
      }

      else
      {
        v31 = (v29 + v18 + v19) & ~v19;
        if (v16 == v20)
        {
          v32 = *(v15 + 56);

          v32(v31, a2);
        }

        else
        {
          v33 = ((((((((v21 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v33 = a2 & 0x7FFFFFFF;
            v33[1] = 0;
          }

          else
          {
            *v33 = (a2 - 1);
          }
        }
      }

      return;
    }
  }

  if (((((((((v21 + ((v18 + v19 + (((v11 & 0xFFFFFFF8) + v17 + 48) & ~v17)) & ~v19)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 1;
  }

  if (((((((((v21 + ((v18 + v19 + (((v11 & 0xFFFFFFF8) + v17 + 48) & ~v17)) & ~v19)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v28 = ~v20 + a2;
    bzero(a1, ((((((((v21 + ((v18 + v19 + (((v11 & 0xFFFFFFFFFFFFFFF8) + v17 + 48) & ~v17)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v28;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      *(a1 + v22) = v27;
    }

    else
    {
      *(a1 + v22) = v27;
    }
  }

  else if (v25)
  {
    *(a1 + v22) = v27;
  }
}

unint64_t sub_1E683523C()
{
  result = qword_1ED0995C0;
  if (!qword_1ED0995C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0995C0);
  }

  return result;
}

unint64_t sub_1E6835294()
{
  result = qword_1ED0995C8;
  if (!qword_1ED0995C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0995C8);
  }

  return result;
}

unint64_t sub_1E68352EC()
{
  result = qword_1ED0995D0;
  if (!qword_1ED0995D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0995D0);
  }

  return result;
}

unint64_t sub_1E68353D4()
{
  result = qword_1ED099600;
  if (!qword_1ED099600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995D8, &qword_1E68C1928);
    sub_1E683548C();
    sub_1E673F530(&qword_1ED099638, &qword_1ED099640, &qword_1E68C1960, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099600);
  }

  return result;
}

unint64_t sub_1E683548C()
{
  result = qword_1ED099608;
  if (!qword_1ED099608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099610, &qword_1E68C1948);
    sub_1E6835518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099608);
  }

  return result;
}

unint64_t sub_1E6835518()
{
  result = qword_1ED099618;
  if (!qword_1ED099618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099620, &qword_1E68C1950);
    sub_1E673F530(&qword_1ED099628, &qword_1ED099630, &qword_1E68C1958, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099618);
  }

  return result;
}

unint64_t sub_1E68355DC()
{
  result = qword_1EE2EA850;
  if (!qword_1EE2EA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA850);
  }

  return result;
}

unint64_t sub_1E6835630()
{
  result = qword_1EE2EA7B8;
  if (!qword_1EE2EA7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8, &qword_1E68C1938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7B8);
  }

  return result;
}

uint64_t sub_1E68356C8()
{
  v1 = 0x6C6F686563616C70;
  v2 = 0x6164696C61766E69;
  if (*v0 != 2)
  {
    v2 = 0x6F5464656C696166;
  }

  if (*v0)
  {
    v1 = 0x79636176697270;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E6835760@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E6836AE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E6835788(uint64_t a1)
{
  v2 = sub_1E6835E18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68357C4(uint64_t a1)
{
  v2 = sub_1E6835E18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6835800(uint64_t a1)
{
  v2 = sub_1E6835E6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E683583C(uint64_t a1)
{
  v2 = sub_1E6835E6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6835878(uint64_t a1)
{
  v2 = sub_1E6835EC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68358B4(uint64_t a1)
{
  v2 = sub_1E6835EC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E68358F0(uint64_t a1)
{
  v2 = sub_1E6835F68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E683592C(uint64_t a1)
{
  v2 = sub_1E6835F68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6835968(uint64_t a1)
{
  v2 = sub_1E6835F14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68359A4(uint64_t a1)
{
  v2 = sub_1E6835F14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CanvasItemRedactionReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099670, &qword_1E68C1A30);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v35 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099678, &qword_1E68C1A38);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v32 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099680, &qword_1E68C1A40);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v29 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099688, &qword_1E68C1A48);
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099690, &qword_1E68C1A50);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v27 - v19;
  v21 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6835E18();
  sub_1E68B3BD0();
  v22 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v40 = 2;
      sub_1E6835EC0();
      v23 = v32;
      sub_1E68B3A30();
      v25 = v33;
      v24 = v34;
    }

    else
    {
      v41 = 3;
      sub_1E6835E6C();
      v23 = v35;
      sub_1E68B3A30();
      v25 = v36;
      v24 = v37;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v39 = 1;
    sub_1E6835F14();
    v23 = v29;
    sub_1E68B3A30();
    v25 = v30;
    v24 = v31;
LABEL_8:
    (*(v25 + 8))(v23, v24);
    return (*v22)(v20, v16);
  }

  v38 = 0;
  sub_1E6835F68();
  sub_1E68B3A30();
  (*(v27 + 8))(v15, v28);
  return (*v22)(v20, v16);
}

unint64_t sub_1E6835E18()
{
  result = qword_1EE2ECA00[0];
  if (!qword_1EE2ECA00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2ECA00);
  }

  return result;
}

unint64_t sub_1E6835E6C()
{
  result = qword_1ED099698;
  if (!qword_1ED099698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099698);
  }

  return result;
}

unint64_t sub_1E6835EC0()
{
  result = qword_1ED0996A0;
  if (!qword_1ED0996A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0996A0);
  }

  return result;
}

unint64_t sub_1E6835F14()
{
  result = qword_1ED0996A8;
  if (!qword_1ED0996A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0996A8);
  }

  return result;
}

unint64_t sub_1E6835F68()
{
  result = qword_1EE2EC9C8;
  if (!qword_1EE2EC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9C8);
  }

  return result;
}

uint64_t CanvasItemRedactionReason.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996B0, &qword_1E68C1A58);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v3);
  v49 = &v39 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996B8, &qword_1E68C1A60);
  v43 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v5);
  v48 = &v39 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996C0, &qword_1E68C1A68);
  v41 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996C8, &qword_1E68C1A70);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996D0, &unk_1E68C1A78);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v39 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1E6835E18();
  v20 = v51;
  sub_1E68B3BC0();
  if (!v20)
  {
    v21 = v13;
    v39 = v10;
    v40 = 0;
    v22 = v9;
    v23 = v48;
    v24 = v49;
    v51 = v15;
    v25 = v50;
    v26 = v18;
    v27 = sub_1E68B3A10();
    v28 = (2 * *(v27 + 16)) | 1;
    v53 = v27;
    v54 = v27 + 32;
    v55 = 0;
    v56 = v28;
    v29 = sub_1E676F5C4();
    if (v29 == 4 || v55 != v56 >> 1)
    {
      v31 = sub_1E68B3870();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v33 = &type metadata for CanvasItemRedactionReason;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
LABEL_9:
      (*(v51 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    v57 = v29;
    if (v29 <= 1u)
    {
      if (v29)
      {
        v58 = 1;
        sub_1E6835F14();
        v37 = v40;
        sub_1E68B3970();
        if (!v37)
        {
          (*(v41 + 8))(v22, v45);
          goto LABEL_17;
        }
      }

      else
      {
        v58 = 0;
        sub_1E6835F68();
        v30 = v40;
        sub_1E68B3970();
        if (!v30)
        {
          (*(v42 + 8))(v21, v39);
LABEL_17:
          (*(v51 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v25 = v57;
          return __swift_destroy_boxed_opaque_existential_1(v52);
        }
      }

      goto LABEL_9;
    }

    v35 = v51;
    if (v29 == 2)
    {
      v58 = 2;
      sub_1E6835EC0();
      v36 = v40;
      sub_1E68B3970();
      if (!v36)
      {
        (*(v43 + 8))(v23, v47);
LABEL_21:
        (*(v35 + 8))(v26, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v58 = 3;
      sub_1E6835E6C();
      v38 = v40;
      sub_1E68B3970();
      if (!v38)
      {
        (*(v44 + 8))(v24, v46);
        goto LABEL_21;
      }
    }

    (*(v35 + 8))(v26, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t CanvasItemRedactionReason.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E6836720()
{
  result = qword_1ED0996D8;
  if (!qword_1ED0996D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0996D8);
  }

  return result;
}

unint64_t sub_1E6836778()
{
  result = qword_1EE2EC9B8;
  if (!qword_1EE2EC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9B8);
  }

  return result;
}

unint64_t sub_1E68367D0()
{
  result = qword_1EE2EC9C0;
  if (!qword_1EE2EC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9C0);
  }

  return result;
}

unint64_t sub_1E6836828()
{
  result = qword_1EE2EC9E0;
  if (!qword_1EE2EC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9E0);
  }

  return result;
}

unint64_t sub_1E6836880()
{
  result = qword_1EE2EC9E8;
  if (!qword_1EE2EC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9E8);
  }

  return result;
}

unint64_t sub_1E68368D8()
{
  result = qword_1EE2EC9D0;
  if (!qword_1EE2EC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9D0);
  }

  return result;
}

unint64_t sub_1E6836930()
{
  result = qword_1EE2EC9D8;
  if (!qword_1EE2EC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9D8);
  }

  return result;
}

unint64_t sub_1E6836988()
{
  result = qword_1EE2EC9A8;
  if (!qword_1EE2EC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9A8);
  }

  return result;
}

unint64_t sub_1E68369E0()
{
  result = qword_1EE2EC9B0;
  if (!qword_1EE2EC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9B0);
  }

  return result;
}

unint64_t sub_1E6836A38()
{
  result = qword_1EE2EC9F0;
  if (!qword_1EE2EC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9F0);
  }

  return result;
}

unint64_t sub_1E6836A90()
{
  result = qword_1EE2EC9F8;
  if (!qword_1EE2EC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9F8);
  }

  return result;
}

uint64_t sub_1E6836AE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636176697270 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEB00000000646574 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xED00006863746546)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E6836C5C()
{
  if (*v0)
  {
    return 0x676E697373696DLL;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1E6836C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E68B3B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E697373696DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E68B3B00();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E6836D6C(uint64_t a1)
{
  v2 = sub_1E6837E0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6836DA8(uint64_t a1)
{
  v2 = sub_1E6837E0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6836DE4(uint64_t a1)
{
  v2 = sub_1E6837E60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6836E20(uint64_t a1)
{
  v2 = sub_1E6837E60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E6836E5C()
{
  v1 = 1701080931;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1E6836EB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E6838350(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E6836ED8(uint64_t a1)
{
  v2 = sub_1E6837EB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6836F14(uint64_t a1)
{
  v2 = sub_1E6837EB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DataItemResolutionError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996E0, &qword_1E68C1F90);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v22 = v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996E8, &qword_1E68C1F98);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996F0, &qword_1E68C1FA0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v21 - v13;
  v15 = v1[1];
  v25 = *v1;
  v16 = v1[2];
  v21[1] = v1[3];
  v21[2] = v16;
  v21[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6837E0C();
  sub_1E68B3BD0();
  if (v15)
  {
    v32 = 0;
    sub_1E6837EB4();
    sub_1E68B3A30();
    v31 = 0;
    v18 = v27;
    v17 = v28;
    sub_1E68B3A70();
    if (v17)
    {
      (*(v26 + 8))(v9, v18);
    }

    else
    {
      v30 = 1;
      sub_1E68B3AA0();
      v29 = 2;
      sub_1E68B3A70();
      (*(v26 + 8))(v9, v18);
    }

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v33 = 1;
    sub_1E6837E60();
    v20 = v22;
    sub_1E68B3A30();
    (*(v23 + 8))(v20, v24);
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t DataItemResolutionError.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1E69523D0](1);
  }

  v2 = *(v1 + 16);
  MEMORY[0x1E69523D0](0);
  sub_1E68B31F0();
  MEMORY[0x1E69523D0](v2);

  return sub_1E68B31F0();
}

uint64_t DataItemResolutionError.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E68B3B70();
  if (v1)
  {
    MEMORY[0x1E69523D0](0);
    sub_1E68B31F0();
    MEMORY[0x1E69523D0](v2);
    sub_1E68B31F0();
  }

  else
  {
    MEMORY[0x1E69523D0](1);
  }

  return sub_1E68B3BB0();
}

uint64_t DataItemResolutionError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099710, &qword_1E68C1FA8);
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099718, &qword_1E68C1FB0);
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099720, &unk_1E68C1FB8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v41 - v15;
  v17 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1E6837E0C();
  v18 = v47;
  sub_1E68B3BC0();
  if (!v18)
  {
    v47 = v13;
    v19 = v46;
    v20 = sub_1E68B3A10();
    v21 = (2 * *(v20 + 16)) | 1;
    v49 = v20;
    v50 = v20 + 32;
    v51 = 0;
    v52 = v21;
    v22 = sub_1E676F5C8();
    v23 = v12;
    if (v22 == 2 || v51 != v52 >> 1)
    {
      v25 = sub_1E68B3870();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v27 = &type metadata for DataItemResolutionError;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v47 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v22)
      {
        v53 = 1;
        sub_1E6837E60();
        sub_1E68B3970();
        v24 = v47;
        (*(v44 + 8))(v7, v43);
        (*(v24 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
      }

      else
      {
        v53 = 0;
        sub_1E6837EB4();
        v29 = v11;
        sub_1E68B3970();
        v30 = v47;
        v53 = 0;
        v43 = sub_1E68B39C0();
        v44 = v36;
        v53 = 1;
        v41 = sub_1E68B39F0();
        v42 = v23;
        v53 = 2;
        v37 = sub_1E68B39C0();
        v38 = v8;
        v39 = v29;
        v34 = v37;
        v35 = v40;
        (*(v45 + 8))(v39, v38);
        (*(v30 + 8))(v16, v42);
        swift_unknownObjectRelease();
        v31 = v43;
        v32 = v44;
        v33 = v41;
      }

      *v19 = v31;
      v19[1] = v32;
      v19[2] = v33;
      v19[3] = v34;
      v19[4] = v35;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t sub_1E6837A04()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E68B3B70();
  if (v1)
  {
    MEMORY[0x1E69523D0](0);
    sub_1E68B31F0();
    MEMORY[0x1E69523D0](v2);
    sub_1E68B31F0();
  }

  else
  {
    MEMORY[0x1E69523D0](1);
  }

  return sub_1E68B3BB0();
}

uint64_t sub_1E6837AA0(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1E69523D0](1);
  }

  v2 = *(v1 + 16);
  MEMORY[0x1E69523D0](0);
  sub_1E68B31F0();
  MEMORY[0x1E69523D0](v2);

  return sub_1E68B31F0();
}

uint64_t sub_1E6837B50(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1E68B3B70();
  if (v2)
  {
    MEMORY[0x1E69523D0](0);
    sub_1E68B31F0();
    MEMORY[0x1E69523D0](v3);
    sub_1E68B31F0();
  }

  else
  {
    MEMORY[0x1E69523D0](1);
  }

  return sub_1E68B3BB0();
}

uint64_t _s15FitnessCanvasUI23DataItemResolutionErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  if (!v3)
  {
    if (!v8)
    {
      sub_1E678A228(*a1, 0, v4, v5, v6);
      v13 = v7;
      v14 = 0;
      v15 = v10;
      v16 = v9;
      v17 = v11;
      goto LABEL_15;
    }

LABEL_13:
    sub_1E683846C(v7, v8, v10, v9, v11);
    sub_1E683846C(v2, v3, v4, v5, v6);
    sub_1E678A228(v2, v3, v4, v5, v6);
    sub_1E678A228(v7, v8, v10, v9, v11);
    return 0;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  v12 = v2 == v7 && v3 == v8;
  if (!v12 && (sub_1E68B3B00() & 1) == 0 || v4 != v10)
  {
    goto LABEL_13;
  }

  if (v5 == v9 && v6 == v11)
  {
    sub_1E683846C(v7, v8, v4, v5, v6);
    sub_1E683846C(v2, v3, v4, v5, v6);
    sub_1E678A228(v2, v3, v4, v5, v6);
    v13 = v7;
    v14 = v8;
    v15 = v4;
    v16 = v5;
    v17 = v6;
LABEL_15:
    sub_1E678A228(v13, v14, v15, v16, v17);
    return 1;
  }

  v19 = sub_1E68B3B00();
  sub_1E683846C(v7, v8, v4, v9, v11);
  sub_1E683846C(v2, v3, v4, v5, v6);
  sub_1E678A228(v2, v3, v4, v5, v6);
  sub_1E678A228(v7, v8, v4, v9, v11);
  return v19 & 1;
}

unint64_t sub_1E6837E0C()
{
  result = qword_1ED0996F8;
  if (!qword_1ED0996F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0996F8);
  }

  return result;
}

unint64_t sub_1E6837E60()
{
  result = qword_1ED099700;
  if (!qword_1ED099700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099700);
  }

  return result;
}

unint64_t sub_1E6837EB4()
{
  result = qword_1ED099708;
  if (!qword_1ED099708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099708);
  }

  return result;
}

unint64_t sub_1E6837F0C()
{
  result = qword_1ED099728;
  if (!qword_1ED099728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099728);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15FitnessCanvasUI23DataItemResolutionErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E6837F78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E6837FC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_1E6838024(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1E6838094()
{
  result = qword_1ED099730;
  if (!qword_1ED099730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099730);
  }

  return result;
}

unint64_t sub_1E68380EC()
{
  result = qword_1ED099738;
  if (!qword_1ED099738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099738);
  }

  return result;
}

unint64_t sub_1E6838144()
{
  result = qword_1ED099740;
  if (!qword_1ED099740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099740);
  }

  return result;
}

unint64_t sub_1E683819C()
{
  result = qword_1ED099748;
  if (!qword_1ED099748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099748);
  }

  return result;
}

unint64_t sub_1E68381F4()
{
  result = qword_1ED099750;
  if (!qword_1ED099750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099750);
  }

  return result;
}

unint64_t sub_1E683824C()
{
  result = qword_1ED099758;
  if (!qword_1ED099758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099758);
  }

  return result;
}

unint64_t sub_1E68382A4()
{
  result = qword_1ED099760;
  if (!qword_1ED099760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099760);
  }

  return result;
}

unint64_t sub_1E68382FC()
{
  result = qword_1ED099768;
  if (!qword_1ED099768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099768);
  }

  return result;
}

uint64_t sub_1E6838350(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E68E2EF0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1E683846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_1E68384DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F5464656C696166 && a2 == 0xED00006863746546)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E68B3B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E683856C(uint64_t a1)
{
  v2 = sub_1E6838834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68385A8(uint64_t a1)
{
  v2 = sub_1E6838834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E68385E4(uint64_t a1)
{
  v2 = sub_1E6838888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6838620(uint64_t a1)
{
  v2 = sub_1E6838888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CanvasSectionRedactionReason.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099770, &qword_1E68C2430);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099778, &qword_1E68C2438);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6838834();
  sub_1E68B3BD0();
  sub_1E6838888();
  sub_1E68B3A30();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1E6838834()
{
  result = qword_1EE2EC760[0];
  if (!qword_1EE2EC760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EC760);
  }

  return result;
}

unint64_t sub_1E6838888()
{
  result = qword_1EE2EC748;
  if (!qword_1EE2EC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC748);
  }

  return result;
}

uint64_t CanvasSectionRedactionReason.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099780, &qword_1E68C2440);
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099788, &unk_1E68C2448);
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6838834();
  sub_1E68B3BC0();
  if (v1)
  {
    goto LABEL_6;
  }

  v21 = a1;
  v11 = v27;
  v12 = v22;
  v13 = sub_1E68B3A10();
  v14 = (2 * *(v13 + 16)) | 1;
  v23 = v13;
  v24 = v13 + 32;
  v25 = 0;
  v26 = v14;
  if ((sub_1E676F5BC() & 1) != 0 || v25 != v26 >> 1)
  {
    v15 = v7;
    v16 = sub_1E68B3870();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
    *v18 = &type metadata for CanvasSectionRedactionReason;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v12 + 8))(v10, v15);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_6:
    v20 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  sub_1E6838888();
  sub_1E68B3970();
  (*(v11 + 8))(v6, v3);
  (*(v12 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v20 = v21;
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1E6838C40(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099770, &qword_1E68C2430);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099778, &qword_1E68C2438);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6838834();
  sub_1E68B3BD0();
  sub_1E6838888();
  sub_1E68B3A30();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t CanvasSectionRedactionReason.hashValue.getter()
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](0);
  return sub_1E68B3BB0();
}

unint64_t sub_1E6838E88()
{
  result = qword_1EE2EC720;
  if (!qword_1EE2EC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC720);
  }

  return result;
}

unint64_t sub_1E6838F10()
{
  result = qword_1ED099790;
  if (!qword_1ED099790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099790);
  }

  return result;
}

unint64_t sub_1E6838F68()
{
  result = qword_1EE2EC738;
  if (!qword_1EE2EC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC738);
  }

  return result;
}

unint64_t sub_1E6838FC0()
{
  result = qword_1EE2EC740;
  if (!qword_1EE2EC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC740);
  }

  return result;
}

unint64_t sub_1E6839018()
{
  result = qword_1EE2EC750;
  if (!qword_1EE2EC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC750);
  }

  return result;
}

unint64_t sub_1E6839070()
{
  result = qword_1EE2EC758;
  if (!qword_1EE2EC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC758);
  }

  return result;
}

uint64_t sub_1E68390C4(uint64_t a1)
{
  v2 = sub_1E68B1DE0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x1E697E718])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x1E697E6F0])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x1E697E6F8])
  {
    return 2;
  }

  if (v4 == *MEMORY[0x1E697E6E8])
  {
    return 3;
  }

  if (v4 == *MEMORY[0x1E697E708])
  {
    return 4;
  }

  if (v4 == *MEMORY[0x1E697E720])
  {
    return 5;
  }

  if (v4 == *MEMORY[0x1E697E728])
  {
    return 6;
  }

  if (v4 == *MEMORY[0x1E697E6C0])
  {
    return 7;
  }

  if (v4 == *MEMORY[0x1E697E6C8])
  {
    return 8;
  }

  if (v4 == *MEMORY[0x1E697E6D0])
  {
    return 9;
  }

  if (v4 == *MEMORY[0x1E697E6D8])
  {
    return 10;
  }

  if (v4 != *MEMORY[0x1E697E6E0])
  {
    (*(v3 + 8))(a1, v2);
    return 3;
  }

  return 11;
}

uint64_t CanvasSectionDensityFactor.init(count:span:spacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_1E683931C()
{
  v1 = 0x676E6963617073;
  if (*v0 != 1)
  {
    v1 = 1851879539;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_1E683936C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E6839BB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E6839394(uint64_t a1)
{
  v2 = sub_1E68395CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68393D0(uint64_t a1)
{
  v2 = sub_1E68395CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CanvasSectionDensityFactor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099798, &qword_1E68C2710);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  v9 = *(v1 + 8);
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68395CC();
  sub_1E68B3BD0();
  v15 = 0;
  sub_1E68B3AA0();
  if (!v2)
  {
    v14 = v9;
    v13 = 1;
    sub_1E67621E8();
    sub_1E68B3AB0();
    v12 = 2;
    sub_1E68B3AA0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E68395CC()
{
  result = qword_1EE2EC888[0];
  if (!qword_1EE2EC888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EC888);
  }

  return result;
}

uint64_t CanvasSectionDensityFactor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0997A0, &qword_1E68C2718);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68395CC();
  sub_1E68B3BC0();
  if (!v2)
  {
    v16 = 0;
    v10 = sub_1E68B39F0();
    v14[15] = 1;
    sub_1E6762A60();
    sub_1E68B3A00();
    v12 = v15;
    v14[14] = 2;
    v13 = sub_1E68B39F0();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CanvasSectionDensityFactor.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x1E69523D0](*v0);
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x1E69523F0](*&v3);
  return MEMORY[0x1E69523D0](v2);
}

uint64_t CanvasSectionDensityFactor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](*&v1);
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x1E69523F0](*&v4);
  MEMORY[0x1E69523D0](v3);
  return sub_1E68B3BB0();
}

uint64_t sub_1E683992C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x1E69523D0](*v0);
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x1E69523F0](*&v3);
  return MEMORY[0x1E69523D0](v2);
}

uint64_t sub_1E683998C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 2);
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](*&v2);
  v5 = 0.0;
  if (v3 != 0.0)
  {
    v5 = v3;
  }

  MEMORY[0x1E69523F0](*&v5);
  MEMORY[0x1E69523D0](v4);
  return sub_1E68B3BB0();
}

unint64_t sub_1E6839A10()
{
  result = qword_1EE2EC868;
  if (!qword_1EE2EC868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC868);
  }

  return result;
}

unint64_t sub_1E6839AB0()
{
  result = qword_1ED0997A8[0];
  if (!qword_1ED0997A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED0997A8);
  }

  return result;
}

unint64_t sub_1E6839B08()
{
  result = qword_1EE2EC878;
  if (!qword_1EE2EC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC878);
  }

  return result;
}

unint64_t sub_1E6839B60()
{
  result = qword_1EE2EC880;
  if (!qword_1EE2EC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC880);
  }

  return result;
}

uint64_t sub_1E6839BB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1851879539 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E6839CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_15FitnessCanvasUI0B20LayoutProviderSourceOyxq_G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E6839D1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E6839D6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1E6839DC8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E6839E24()
{
  if (*v0)
  {
    return 0x72656469766964;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1E6839E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E68B3B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72656469766964 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E68B3B00();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E6839F34(uint64_t a1)
{
  v2 = sub_1E683A34C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6839F70(uint64_t a1)
{
  v2 = sub_1E683A34C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6839FAC(uint64_t a1)
{
  v2 = sub_1E683A3A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6839FE8(uint64_t a1)
{
  v2 = sub_1E683A3A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E683A024(uint64_t a1)
{
  v2 = sub_1E683A3F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E683A060(uint64_t a1)
{
  v2 = sub_1E683A3F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CanvasSectionFooter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099830, &qword_1E68C29F0);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v21 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099838, &qword_1E68C29F8);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099840, &qword_1E68C2A00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E683A34C();
  sub_1E68B3BD0();
  v16 = (v11 + 8);
  if (v15)
  {
    v25 = 1;
    sub_1E683A3A0();
    v17 = v21;
    sub_1E68B3A30();
    (*(v22 + 8))(v17, v23);
  }

  else
  {
    v24 = 0;
    sub_1E683A3F4();
    sub_1E68B3A30();
    (*(v19 + 8))(v9, v20);
  }

  return (*v16)(v14, v10);
}

unint64_t sub_1E683A34C()
{
  result = qword_1EE2ED250[0];
  if (!qword_1EE2ED250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2ED250);
  }

  return result;
}

unint64_t sub_1E683A3A0()
{
  result = qword_1ED099848;
  if (!qword_1ED099848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099848);
  }

  return result;
}

unint64_t sub_1E683A3F4()
{
  result = qword_1EE2ED238;
  if (!qword_1EE2ED238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED238);
  }

  return result;
}

uint64_t CanvasSectionFooter.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099850, &qword_1E68C2A08);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099858, &qword_1E68C2A10);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099860, &unk_1E68C2A18);
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E683A34C();
  v15 = v34;
  sub_1E68B3BC0();
  if (v15)
  {
    v16 = a1;
  }

  else
  {
    v28 = v7;
    v34 = a1;
    v17 = v31;
    v18 = v32;
    v19 = sub_1E68B3A10();
    v20 = (2 * *(v19 + 16)) | 1;
    v35 = v19;
    v36 = v19 + 32;
    v37 = 0;
    v38 = v20;
    v21 = sub_1E676F5C8();
    if (v21 == 2 || v37 != v38 >> 1)
    {
      v23 = sub_1E68B3870();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v25 = &type metadata for CanvasSectionFooter;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v33 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v21;
      if (v21)
      {
        v40 = 1;
        sub_1E683A3A0();
        sub_1E68B3970();
        v22 = v33;
        (*(v30 + 8))(v6, v17);
      }

      else
      {
        v40 = 0;
        sub_1E683A3F4();
        sub_1E68B3970();
        v22 = v33;
        (*(v29 + 8))(v10, v28);
      }

      (*(v22 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v18 = v39 & 1;
    }

    v16 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t CanvasSectionFooter.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E683A9AC()
{
  result = qword_1ED099868;
  if (!qword_1ED099868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099868);
  }

  return result;
}

unint64_t sub_1E683AA44()
{
  result = qword_1ED099870;
  if (!qword_1ED099870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099870);
  }

  return result;
}

unint64_t sub_1E683AA9C()
{
  result = qword_1EE2ED228;
  if (!qword_1EE2ED228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED228);
  }

  return result;
}

unint64_t sub_1E683AAF4()
{
  result = qword_1EE2ED230;
  if (!qword_1EE2ED230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED230);
  }

  return result;
}

unint64_t sub_1E683AB4C()
{
  result = qword_1EE2ED218;
  if (!qword_1EE2ED218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED218);
  }

  return result;
}

unint64_t sub_1E683ABA4()
{
  result = qword_1EE2ED220;
  if (!qword_1EE2ED220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED220);
  }

  return result;
}

unint64_t sub_1E683ABFC()
{
  result = qword_1EE2ED240;
  if (!qword_1EE2ED240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED240);
  }

  return result;
}

unint64_t sub_1E683AC54()
{
  result = qword_1EE2ED248;
  if (!qword_1EE2ED248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED248);
  }

  return result;
}

uint64_t sub_1E683AD10()
{
  type metadata accessor for CanvasItemPlaceholderFetcherProvider();
  v0 = swift_allocObject();
  v1 = type metadata accessor for CanvasItemPlaceholderCacheProvider();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099880, &qword_1E68C2ED0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = result;
  v0[5] = v1;
  v0[6] = &off_1F5FDD078;
  v0[2] = v2;
  qword_1EE2EC670 = v0;
  return result;
}

uint64_t static CanvasItemPlaceholderFetcherProvider.shared.getter()
{
  if (qword_1EE2EC668 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CanvasItemPlaceholderFetcherProvider.shared.setter(uint64_t a1)
{
  if (qword_1EE2EC668 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE2EC670 = a1;
}

uint64_t (*static CanvasItemPlaceholderFetcherProvider.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE2EC668 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1E683AF30@<X0>(void *a1@<X8>)
{
  if (qword_1EE2EC668 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EE2EC670;
}

uint64_t sub_1E683AFB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EE2EC668;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE2EC670 = v1;
}

uint64_t CanvasItemPlaceholderFetcherProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t CanvasItemPlaceholderFetcherProvider.makeFetcher<A, B, C, D, E, F>(fetchItemForPlaceholders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = v17[5];
  v19 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v20);
  (*(v19 + 8))(v63, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, v20, v19);
  v37 = a3;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v53 = a7;
  v54 = a8;
  v55 = a10;
  v56 = a11;
  v57 = a12;
  v58 = a13;
  v59 = a14;
  v60 = a15;
  v61 = a16;
  v62 = a17;
  v21 = type metadata accessor for CanvasItemPlaceholderFetcher(0, &v49);

  v22 = sub_1E6843ADC(v63, a1, a2);

  if (qword_1EE2EAA00 != -1)
  {
    swift_once();
  }

  v23 = sub_1E68B1AE0();
  __swift_project_value_buffer(v23, qword_1EE2F8440);
  sub_1E677AFF0(v63, v48);

  v24 = sub_1E68B1AC0();
  v25 = sub_1E68B3740();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v47 = v27;
    *v26 = 136315394;
    v28 = sub_1E68436A8();
    v30 = v29;

    v31 = sub_1E683B478(v28, v30, &v47);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    sub_1E677AFF0(v48, v46);
    v49 = v37;
    v50 = a4;
    v51 = a5;
    v52 = a6;
    v53 = a7;
    v54 = a8;
    swift_getExtendedExistentialTypeMetadata();
    v32 = sub_1E68B31B0();
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v35 = sub_1E683B478(v32, v34, &v47);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_1E6725000, v24, v25, "Making a new fetcher (%s) from %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E6952A70](v27, -1, -1);
    MEMORY[0x1E6952A70](v26, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  a9[3] = v21;
  a9[4] = swift_getWitnessTable();
  *a9 = v22;
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

unint64_t sub_1E683B478(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E683B544(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E680B940(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E683B544(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E683B650(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1E68B38A0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1E683B650(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E683B69C(a1, a2);
  sub_1E683B7CC(&unk_1F5FD7520);
  return v3;
}

void *sub_1E683B69C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E683B8B8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E68B38A0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E68B3230();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E683B8B8(v10, 0);
        result = sub_1E68B3810();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E683B7CC(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1E683B92C(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E683B8B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099878, &qword_1E68C2EC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E683B92C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099878, &qword_1E68C2EC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1E683BAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097040, &qword_1E68B4CD8);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for WideBrickView(0, a13, a14, v21);
  (*(*(a13 - 8) + 32))(&a9[v22[9]], a1, a13);
  v23 = &a9[v22[11]];
  *v23 = a2;
  *(v23 + 1) = a3;
  *(v23 + 2) = a4;
  *(v23 + 3) = a5;
  v24 = &a9[v22[12]];
  *v24 = a6;
  *(v24 + 1) = a7;
  *(v24 + 2) = a8;
  *(v24 + 3) = a10;
  v25 = &a9[v22[10]];
  result = swift_allocObject();
  *(result + 16) = a11;
  *(result + 24) = a12;
  *v25 = sub_1E673F5E0;
  *(v25 + 1) = result;
  return result;
}

uint64_t WideBrickView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v62 = a2;
  v3 = sub_1E68B1EB0();
  v48 = v3;
  v61 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v60 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a1 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099888, &qword_1E68C2ED8);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  v10 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v11 = sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v77 = MEMORY[0x1E697F568];
  v12 = swift_getWitnessTable();
  v13 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v74 = v12;
  v75 = v13;
  v14 = swift_getWitnessTable();
  v15 = MEMORY[0x1E6981CD8];
  v66 = v10;
  v67 = MEMORY[0x1E6981CD8];
  v68 = v11;
  v69 = v11;
  v16 = MEMORY[0x1E6981CD0];
  v70 = v12;
  v71 = MEMORY[0x1E6981CD0];
  v72 = v14;
  v73 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = v10;
  v67 = v15;
  v68 = v11;
  v69 = v11;
  v70 = v12;
  v71 = v16;
  v72 = v14;
  v73 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_1E68B2C30();
  v54 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v49 = &v45 - v19;
  v20 = swift_getWitnessTable();
  v47 = v20;
  v46 = sub_1E681132C(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v66 = v17;
  v67 = v3;
  v68 = v20;
  v69 = v46;
  v50 = MEMORY[0x1E697CDB0];
  v21 = swift_getOpaqueTypeMetadata2();
  v51 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v45 = &v45 - v28;
  v29 = v57;
  v30 = v59;
  v31 = v55;
  (*(v57 + 16))(v9, v59, v55, v27);
  v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v33 = swift_allocObject();
  v34 = v31;
  v35 = *(v31 + 24);
  v36 = v56;
  *(v33 + 16) = v56;
  *(v33 + 24) = v35;
  (*(v29 + 32))(v33 + v32, v9, v34);
  v63 = v36;
  v64 = v35;
  v65 = v30;
  v37 = v49;
  sub_1E68B2C20();
  v38 = v60;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v39 = v48;
  v40 = v47;
  v41 = v46;
  sub_1E68B2790();
  (*(v61 + 8))(v38, v39);
  (*(v54 + 8))(v37, v17);
  v66 = v17;
  v67 = v39;
  v68 = v40;
  v69 = v41;
  swift_getOpaqueTypeConformance2();
  v42 = v45;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v43 = *(v51 + 8);
  v43(v24, v21);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v43)(v42, v21);
}

uint64_t sub_1E683C2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for WideBrickView(0, a2, a3, a4) + 40);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;

  sub_1E677A174(v5);
}

uint64_t sub_1E683C358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for WideBrickView(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1E683C2C0(v9, v5, v6, v7);
}

uint64_t sub_1E683C3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v43 = a1;
  v45 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099888, &qword_1E68C2ED8);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1E68B2CE0();
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v33 - v7;
  v36 = v5;
  v9 = sub_1E68B1E40();
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v39 = v33 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v12 = sub_1E68B1E40();
  v35 = swift_getWitnessTable();
  v63 = v35;
  v64 = MEMORY[0x1E697F568];
  v13 = swift_getWitnessTable();
  v14 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v61 = v13;
  v62 = v14;
  v34 = v13;
  v15 = swift_getWitnessTable();
  v53 = v9;
  v54 = MEMORY[0x1E6981CD8];
  v33[1] = v12;
  v55 = v12;
  v56 = v12;
  v57 = v13;
  v58 = MEMORY[0x1E6981CD0];
  v59 = v15;
  v60 = v15;
  v37 = MEMORY[0x1E6981460];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v17);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v33 - v22;
  v24 = a2;
  v50 = a2;
  v25 = v42;
  v51 = v42;
  v52 = v43;
  sub_1E68B2E80();
  sub_1E68B2CD0();
  v26 = v39;
  v27 = v36;
  sub_1E68B2770();
  (*(v41 + 8))(v8, v27);
  sub_1E68B2E00();
  v48 = v24;
  v49 = v25;
  v46 = v24;
  v47 = v25;
  v28 = swift_checkMetadataState();
  v29 = v34;
  v30 = MEMORY[0x1E6981CD8];
  sub_1E68B2AD0();
  (*(v44 + 8))(v26, v9);
  v53 = v9;
  v54 = v30;
  v55 = v28;
  v56 = v28;
  v57 = v29;
  v58 = MEMORY[0x1E6981CD0];
  v59 = v15;
  v60 = v15;
  swift_getOpaqueTypeConformance2();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v31 = *(v38 + 8);
  v31(v19, OpaqueTypeMetadata2);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v31)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_1E683C9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099888, &qword_1E68C2ED8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v42 - v12;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v42 - v21;
  type metadata accessor for WideBrickView(0, a2, a3, v23);
  v43 = a3;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  *v13 = sub_1E68B2140();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099890, &qword_1E68C2F58);
  sub_1E683CD0C(a1, a2, a3, &v13[*(v24 + 44)]);
  LOBYTE(a1) = sub_1E68B2500();
  sub_1E68B1B30();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099898, &qword_1E68C2F60) + 36)];
  *v33 = a1;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  KeyPath = swift_getKeyPath();
  v35 = &v13[*(v7 + 36)];
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0971F8, &qword_1E68B5280) + 28);
  v37 = *MEMORY[0x1E697E7D0];
  v38 = sub_1E68B1E00();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = KeyPath;
  (*(v14 + 16))(v18, v22, a2);
  v49[0] = v18;
  v39 = v44;
  sub_1E67612FC(v13, v44, &qword_1ED099888, &qword_1E68C2ED8);
  v49[1] = v39;
  v48[0] = a2;
  v48[1] = v7;
  v46 = v43;
  v47 = sub_1E683E4B8();
  sub_1E6848F14(v49, 2uLL, v48);
  sub_1E6744A10(v13, &qword_1ED099888, &qword_1E68C2ED8);
  v40 = *(v14 + 8);
  v40(v22, a2);
  sub_1E6744A10(v39, &qword_1ED099888, &qword_1E68C2ED8);
  return (v40)(v18, a2);
}

uint64_t sub_1E683CD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a2;
  v48 = a3;
  v53 = a4;
  v5 = sub_1E68B1E00();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998C0, &qword_1E68C2FA0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v45 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998C8, &qword_1E68C2FA8);
  MEMORY[0x1EEE9AC00](v49, v18);
  v52 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v50 = &v45 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v51 = &v45 - v25;
  sub_1E677A48C(v13);
  v26 = *(v6 + 104);
  v46 = *MEMORY[0x1E697E7D0];
  v45 = v26;
  v26(v9);
  v27 = sub_1E68B1DF0();
  v28 = *(v6 + 8);
  v28(v9, v5);
  v28(v13, v5);
  if (v27)
  {
    v29 = sub_1E68B21D0();
  }

  else
  {
    v29 = sub_1E68B21E0();
  }

  *v17 = v29;
  *(v17 + 1) = 0x4014000000000000;
  v17[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998D0, &qword_1E68C2FB0);
  sub_1E683D21C(a1, v47, v48, &v17[*(v30 + 44)]);
  sub_1E677A48C(v13);
  v45(v9, v46, v5);
  v31 = sub_1E68B1DF0();
  v28(v9, v5);
  v28(v13, v5);
  if (v31)
  {
    sub_1E68B2E30();
  }

  else
  {
    sub_1E68B2E40();
  }

  sub_1E68B1F30();
  v32 = v50;
  sub_1E6761420(v17, v50, &qword_1ED0998C0, &qword_1E68C2FA0);
  v33 = (v32 + *(v49 + 36));
  v34 = v61;
  v33[4] = v60;
  v33[5] = v34;
  v33[6] = v62;
  v35 = v57;
  *v33 = v56;
  v33[1] = v35;
  v36 = v59;
  v33[2] = v58;
  v33[3] = v36;
  v37 = v51;
  sub_1E6761420(v32, v51, &qword_1ED0998C8, &qword_1E68C2FA8);
  sub_1E68B2E80();
  sub_1E68B1F30();
  *&v54[55] = v66;
  *&v54[71] = v67;
  *&v54[87] = v68;
  *&v54[103] = v69;
  *&v54[7] = v63;
  *&v54[23] = v64;
  v55 = 1;
  *&v54[39] = v65;
  v38 = v52;
  sub_1E67612FC(v37, v52, &qword_1ED0998C8, &qword_1E68C2FA8);
  v39 = v53;
  sub_1E67612FC(v38, v53, &qword_1ED0998C8, &qword_1E68C2FA8);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998D8, &qword_1E68C2FB8) + 48);
  v41 = *&v54[80];
  *(v40 + 73) = *&v54[64];
  *(v40 + 89) = v41;
  *(v40 + 105) = *&v54[96];
  v42 = *&v54[16];
  *(v40 + 9) = *v54;
  *(v40 + 25) = v42;
  v43 = *&v54[48];
  *(v40 + 41) = *&v54[32];
  *v40 = 0;
  *(v40 + 8) = 1;
  *(v40 + 120) = *&v54[111];
  *(v40 + 57) = v43;
  sub_1E6744A10(v37, &qword_1ED0998C8, &qword_1E68C2FA8);
  return sub_1E6744A10(v38, &qword_1ED0998C8, &qword_1E68C2FA8);
}

uint64_t sub_1E683D21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a4;
  v100 = sub_1E68B1E00();
  v7 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v8);
  v10 = &v74[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v74[-v13];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097290, &qword_1E68B53F0) - 8;
  MEMORY[0x1EEE9AC00](v99, v15);
  v97 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v74[-v19];
  MEMORY[0x1EEE9AC00](v21, v22);
  v96 = &v74[-v23];
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v74[-v26];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097298, &qword_1E68B53F8) - 8;
  MEMORY[0x1EEE9AC00](v94, v28);
  v95 = &v74[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v74[-v32];
  MEMORY[0x1EEE9AC00](v34, v35);
  v101 = &v74[-v36];
  v93 = type metadata accessor for WideBrickView(0, a2, a3, v37);
  v38 = *(v93 + 48);
  v87 = a1;
  v39 = (a1 + v38);
  v40 = v39[1];
  v81 = *v39;
  v80 = v40;
  v41 = v39[3];
  v79 = v39[2];
  v78 = v41;
  sub_1E673F228(v81, v40, v79, v41);
  v77 = sub_1E68B2310();
  KeyPath = swift_getKeyPath();
  v42 = v14;
  sub_1E677A48C(v14);
  v92 = *MEMORY[0x1E697E7D0];
  v91 = *(v7 + 104);
  v88 = v10;
  v43 = v100;
  v91(v10);
  v86 = v42;
  v44 = sub_1E68B1DF0();
  v45 = *(v7 + 8);
  v90 = v7 + 8;
  v45(v10, v43);
  v45(v42, v43);
  if (v44)
  {
    v46 = 0;
  }

  else
  {
    v46 = 2;
  }

  v103 = 0;
  v47 = swift_getKeyPath();
  v75 = v103;
  v48 = &v27[*(v99 + 44)];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972A8, &qword_1E68B5408);
  v49 = *(v89 + 28);
  v84 = *MEMORY[0x1E6980FA8];
  v50 = v84;
  v83 = sub_1E68B2650();
  v51 = *(v83 - 8);
  v82 = *(v51 + 104);
  v85 = v51 + 104;
  v82(v48 + v49, v50, v83);
  *v48 = swift_getKeyPath();
  v52 = v80;
  *v27 = v81;
  *(v27 + 1) = v52;
  v53 = v78;
  *(v27 + 2) = v79;
  *(v27 + 3) = v53;
  *(v27 + 8) = v77;
  *(v27 + 5) = KeyPath;
  *(v27 + 6) = 3;
  v27[56] = v75;
  *(v27 + 8) = v47;
  v27[72] = v46;
  sub_1E6761420(v27, v33, &qword_1ED097290, &qword_1E68B53F0);
  *&v33[*(v94 + 44)] = 0x4000000000000000;
  sub_1E6761420(v33, v101, &qword_1ED097298, &qword_1E68B53F8);
  v54 = (v87 + *(v93 + 44));
  v55 = *v54;
  v56 = v54[1];
  v57 = v54[2];
  v58 = v54[3];
  sub_1E673F228(*v54, v56, v57, v58);
  LODWORD(v94) = sub_1E68B2310();
  v93 = swift_getKeyPath();
  v59 = v86;
  sub_1E677A48C(v86);
  v60 = v88;
  v61 = v100;
  (v91)(v88, v92, v100);
  v62 = v60;
  LOBYTE(v60) = sub_1E68B1DF0();
  v45(v62, v61);
  v45(v59, v61);
  if (v60)
  {
    v63 = 0;
  }

  else
  {
    v63 = 2;
  }

  v102 = 0;
  v64 = swift_getKeyPath();
  v65 = v102;
  v66 = &v20[*(v99 + 44)];
  v82(v66 + *(v89 + 28), v84, v83);
  *v66 = swift_getKeyPath();
  *v20 = v55;
  *(v20 + 1) = v56;
  *(v20 + 2) = v57;
  *(v20 + 3) = v58;
  *(v20 + 8) = v94;
  *(v20 + 5) = v93;
  *(v20 + 6) = 2;
  v20[56] = v65;
  *(v20 + 8) = v64;
  v20[72] = v63;
  v67 = v96;
  sub_1E6761420(v20, v96, &qword_1ED097290, &qword_1E68B53F0);
  v68 = v101;
  v69 = v95;
  sub_1E67612FC(v101, v95, &qword_1ED097298, &qword_1E68B53F8);
  v70 = v97;
  sub_1E67612FC(v67, v97, &qword_1ED097290, &qword_1E68B53F0);
  v71 = v98;
  sub_1E67612FC(v69, v98, &qword_1ED097298, &qword_1E68B53F8);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998E0, &unk_1E68C3050);
  sub_1E67612FC(v70, v71 + *(v72 + 48), &qword_1ED097290, &qword_1E68B53F0);
  sub_1E6744A10(v67, &qword_1ED097290, &qword_1E68B53F0);
  sub_1E6744A10(v68, &qword_1ED097298, &qword_1E68B53F8);
  sub_1E6744A10(v70, &qword_1ED097290, &qword_1E68B53F0);
  return sub_1E6744A10(v69, &qword_1ED097298, &qword_1E68B53F8);
}

uint64_t sub_1E683D8F4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v25[0] = a1;
  v25[1] = a3;
  v3 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099888, &qword_1E68C2ED8);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v7 = sub_1E68B1E40();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v25 - v14;
  sub_1E68B1A40();
  v17 = v16;
  v18 = *(v3 + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1E68B2160();
  (*(*(v20 - 8) + 104))(&v6[v18], v19, v20);
  *v6 = v17;
  *(v6 + 1) = v17;
  v25[4] = swift_getWitnessTable();
  v25[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E681132C(&qword_1EE2EA660, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  sub_1E68B2AE0();
  sub_1E6768D04(v6);
  v22 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v25[2] = WitnessTable;
  v25[3] = v22;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v23 = *(v8 + 8);
  v23(v11, v7);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v23)(v15, v7);
}

uint64_t sub_1E683DC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[0] = a1;
  v28[1] = a3;
  v3 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099888, &qword_1E68C2ED8);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v7 = sub_1E68B1E40();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v28 - v14;
  v16 = *(v3 + 20);
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_1E68B2160();
  (*(*(v18 - 8) + 104))(&v6[v16], v17, v18);
  __asm { FMOV            V0.2D, #8.0 }

  *v6 = _Q0;
  v28[4] = swift_getWitnessTable();
  v28[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E681132C(&qword_1EE2EA660, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  sub_1E68B2AE0();
  sub_1E6768D04(v6);
  v25 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v28[2] = WitnessTable;
  v28[3] = v25;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v26 = *(v8 + 8);
  v26(v11, v7);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v26)(v15, v7);
}

void sub_1E683DFE4(uint64_t a1)
{
  sub_1E67683F8(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1E673ED88(319);
      if (v3 <= 0x3F)
      {
        sub_1E673ED38();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E683E09C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1E68B1E00() - 8) + 64);
  v7 = 8;
  v8 = *(*(a3 + 16) - 8);
  if (v6 > 8)
  {
    v7 = v6;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v7 + v10 + 1;
  v14 = v11 + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((v14 + (v13 & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
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
  v24 = (a1 + v13) & ~v10;
  if (v9 < 0x7FFFFFFF)
  {
    v26 = *((v14 + v24) & 0xFFFFFFFFFFFFFFF8);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }

  else
  {
    v25 = *(*(*(a3 + 16) - 8) + 48);

    return v25(v24);
  }
}

void sub_1E683E278(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1E68B1E00() - 8) + 64);
  v9 = 8;
  v10 = *(*(a4 + 16) - 8);
  if (v8 > 8)
  {
    v9 = v8;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v10 + 84);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v12 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v12;
  }

  v16 = v9 + v13 + 1;
  v17 = v14 + 7;
  v18 = ((((((v17 + (v16 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v15 >= a3)
  {
    v21 = 0;
    v22 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((v17 + (v16 & ~v13)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v19 = a3 - v15 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_19:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v18) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v18) = 0;
      }

      else if (v21)
      {
        *(a1 + v18) = 0;
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
      v25 = (a1 + v16) & ~v13;
      if (v12 < 0x7FFFFFFF)
      {
        v27 = ((v17 + v25) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v27 = a2 & 0x7FFFFFFF;
          v27[1] = 0;
        }

        else
        {
          *v27 = (a2 - 1);
        }
      }

      else
      {
        v26 = *(v11 + 56);

        v26(v25, a2);
      }

      return;
    }
  }

  if (((((((v17 + (v16 & ~v13)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  if (((((((v17 + (v16 & ~v13)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v24 = ~v15 + a2;
    bzero(a1, v18);
    *a1 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v18) = v23;
    }

    else
    {
      *(a1 + v18) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v18) = v23;
  }
}

unint64_t sub_1E683E4B8()
{
  result = qword_1ED0998A0;
  if (!qword_1ED0998A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099888, &qword_1E68C2ED8);
    sub_1E683E570();
    sub_1E673F530(&qword_1ED097208, &qword_1ED0971F8, &qword_1E68B5280, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0998A0);
  }

  return result;
}

unint64_t sub_1E683E570()
{
  result = qword_1ED0998A8;
  if (!qword_1ED0998A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099898, &qword_1E68C2F60);
    sub_1E673F530(&qword_1ED0998B0, &qword_1ED0998B8, &qword_1E68C2F98, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0998A8);
  }

  return result;
}

uint64_t sub_1E683E64C(uint64_t a1)
{
  v2 = sub_1E68B2650();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1E68B1F90();
}

uint64_t CanvasSectionHeader.init(title:subtitle:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_1E68B1820();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = a7;
  v17 = type metadata accessor for CanvasSectionHeader(0, v23);
  v18 = *(v17 + 52);
  v19 = sub_1E68B3750();
  (*(*(v19 - 8) + 32))(a8 + v18, a2, v19);
  v20 = *(v17 + 56);
  v21 = sub_1E68B3750();
  return (*(*(v21 - 8) + 32))(a8 + v20, a3, v21);
}

uint64_t CanvasSectionHeader.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E68B1820();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CanvasSectionHeader.subtitle.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CanvasSectionHeader.action.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E683E9A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E683EAB4(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 0x656C746974627573;
  }

  return 0x6E6F69746361;
}

uint64_t sub_1E683EB3C(uint64_t a1)
{
  sub_1E68B3B70();
  sub_1E6739CF4(v3, *v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E683EB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E683E9A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E683EBCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E67BF598();
  *a1 = result;
  return result;
}

uint64_t sub_1E683EC00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E683EC54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasSectionHeader.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[5];
  v14 = a2[4];
  v15 = v4;
  v18[0] = v4;
  v18[1] = v3;
  v16 = v5;
  v17 = v3;
  v18[2] = v14;
  v18[3] = v5;
  type metadata accessor for CanvasSectionHeader.CodingKeys(255, v18);
  swift_getWitnessTable();
  v6 = sub_1E68B3AC0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68B3BD0();
  LOBYTE(v18[0]) = 0;
  sub_1E68B1820();
  sub_1E682ABCC(&qword_1EE2EDEA0, MEMORY[0x1E6968850]);
  v11 = v18[5];
  sub_1E68B3AB0();
  if (!v11)
  {
    LOBYTE(v18[0]) = 1;
    sub_1E68B3A60();
    LOBYTE(v18[0]) = 2;
    sub_1E68B3A60();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t CanvasSectionHeader.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a6;
  v11 = sub_1E68B3750();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v47 = &v39 - v13;
  v14 = sub_1E68B3750();
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v50 = &v39 - v16;
  v57 = sub_1E68B1820();
  v49 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v17);
  v58 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  type metadata accessor for CanvasSectionHeader.CodingKeys(255, &v60);
  swift_getWitnessTable();
  v19 = sub_1E68B3A20();
  v55 = *(v19 - 8);
  v56 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v39 - v21;
  v48 = a2;
  v60 = a2;
  v61 = a3;
  v53 = a3;
  v54 = a5;
  v46 = a4;
  v62 = a4;
  v63 = a5;
  v23 = type metadata accessor for CanvasSectionHeader(0, &v60);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v39 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v59 = v22;
  v28 = v64;
  sub_1E68B3BC0();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = v24;
  v42 = v27;
  v29 = v50;
  v41 = v23;
  v64 = a1;
  v30 = v51;
  v31 = v52;
  LOBYTE(v60) = 0;
  sub_1E682ABCC(&qword_1ED097DB8, MEMORY[0x1E6968868]);
  v32 = v57;
  v33 = v56;
  sub_1E68B3A00();
  (*(v49 + 32))(v42, v58, v32);
  LOBYTE(v60) = 1;
  sub_1E68B39B0();
  v34 = v41;
  (*(v30 + 32))(&v42[*(v41 + 52)], v29, v31);
  LOBYTE(v60) = 2;
  v35 = v47;
  sub_1E68B39B0();
  (*(v55 + 8))(v59, v33);
  v36 = v42;
  (*(v43 + 32))(&v42[*(v34 + 56)], v35, v44);
  v37 = v40;
  (*(v40 + 16))(v45, v36, v34);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return (*(v37 + 8))(v36, v34);
}

BOOL static CanvasSectionHeader.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v70 = a5;
  v71 = a6;
  v64 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v59 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E68B3750();
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v62 = &v53 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v14);
  v67 = &v53 - v15;
  v68 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v61 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E68B3750();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v69 = &v53 - v22;
  v23 = swift_getTupleTypeMetadata2();
  v65 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v53 - v25;
  v27 = a2;
  if ((sub_1E68B17A0() & 1) == 0)
  {
    return 0;
  }

  v56 = v11;
  v57 = a3;
  v72[0] = a3;
  v72[1] = a4;
  v72[2] = v70;
  v72[3] = v71;
  v53 = type metadata accessor for CanvasSectionHeader(0, v72);
  v28 = *(v53 + 52);
  v29 = a1;
  v30 = *(v23 + 48);
  v58 = v20;
  v31 = *(v20 + 16);
  v54 = v29;
  v31(v26, v29 + v28, v19);
  v55 = v27;
  v31(&v26[v30], v27 + v28, v19);
  v32 = v68;
  v33 = *(v68 + 48);
  if (v33(v26, 1, a4) != 1)
  {
    v31(v69, v26, v19);
    if (v33(&v26[v30], 1, a4) != 1)
    {
      v36 = v61;
      (*(v32 + 32))(v61, &v26[v30], a4);
      v37 = v69;
      v38 = sub_1E68B3190();
      v39 = *(v32 + 8);
      v39(v36, a4);
      v39(v37, a4);
      (*(v58 + 8))(v26, v19);
      v35 = v67;
      if ((v38 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    (*(v32 + 8))(v69, a4);
LABEL_7:
    (*(v65 + 8))(v26, v23);
    return 0;
  }

  v34 = v33(&v26[v30], 1, a4);
  v35 = v67;
  if (v34 != 1)
  {
    goto LABEL_7;
  }

  (*(v58 + 8))(v26, v19);
LABEL_9:
  v40 = *(v53 + 56);
  v41 = *(TupleTypeMetadata2 + 48);
  v42 = v63;
  v43 = *(v63 + 16);
  v44 = v56;
  v43(v35, v54 + v40, v56);
  v43(&v35[v41], v55 + v40, v44);
  v45 = v64;
  v46 = *(v64 + 48);
  v47 = v57;
  if (v46(v35, 1, v57) == 1)
  {
    if (v46(&v35[v41], 1, v47) == 1)
    {
      (*(v42 + 8))(v35, v44);
      return 1;
    }

    goto LABEL_14;
  }

  v43(v62, v35, v44);
  if (v46(&v35[v41], 1, v47) == 1)
  {
    (*(v45 + 8))(v62, v47);
LABEL_14:
    (*(v60 + 8))(v35, TupleTypeMetadata2);
    return 0;
  }

  v49 = v59;
  (*(v45 + 32))(v59, &v35[v41], v47);
  v50 = v62;
  v51 = sub_1E68B3190();
  v52 = *(v45 + 8);
  v52(v49, v47);
  v52(v50, v47);
  (*(v42 + 8))(v35, v44);
  return (v51 & 1) != 0;
}