void sub_26B1E87BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = a1 == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v8 || (sub_26B213E30() & 1) != 0)
  {
    a5[3] = MEMORY[0x277CC9318];
    a5[4] = &protocol witness table for Data;
    *a5 = a3;
    a5[1] = a4;

    sub_26B14F044(a3, a4);
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
    sub_26B2138F0();
    sub_26B2139E0();
    __break(1u);
  }
}

uint64_t sub_26B1E8900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = a1 == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v8 || (sub_26B213E30() & 1) != 0)
  {
    a5[3] = MEMORY[0x277D837D0];
    a5[4] = &protocol witness table for String;
    *a5 = a3;
    a5[1] = a4;

    return sub_26B2128F0();
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
    sub_26B2138F0();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1E8A40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (result = sub_26B213E30(), (result & 1) != 0))
  {
    *(a4 + 24) = MEMORY[0x277D839B0];
    *(a4 + 32) = &protocol witness table for Bool;
    *a4 = a3 & 1;
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
    sub_26B2138F0();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1E8B64@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (result = sub_26B213E30(), (result & 1) != 0))
  {
    *(a3 + 24) = MEMORY[0x277D839F8];
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = a4;
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
    sub_26B2138F0();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1E8C8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v6 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (result = sub_26B213E30(), (result & 1) != 0))
  {
    *(a3 + 24) = MEMORY[0x277D83A90];
    *(a3 + 32) = &protocol witness table for Float;
    *a3 = a4;
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
    sub_26B2138F0();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

void sub_26B1E8DB4(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  OUTLINED_FUNCTION_13_19();
  v11 = v9 == v10 && v8 == 0xE700000000000000;
  if (v11 || (OUTLINED_FUNCTION_22_12(), (sub_26B213E30() & 1) != 0))
  {
    a4[3] = a2;
    a4[4] = a3;
    *a4 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_32_9();
    OUTLINED_FUNCTION_11_15();
    v12 = OUTLINED_FUNCTION_17_13();
    MEMORY[0x26D670040](v12);
    sub_26B2138F0();
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_0_37();
    sub_26B2139E0();
    __break(1u);
  }
}

uint64_t _SQLBindableElement<>.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_13_19();
  v9 = *v7 == v8 && v7[1] == 0xE700000000000000;
  if (v9 || (OUTLINED_FUNCTION_22_12(), (sub_26B213E30() & 1) != 0))
  {
    a3[3] = a1;
    a3[4] = *(*(a2 + 24) + 16);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    v11 = *(*(a1 - 8) + 16);

    return v11(boxed_opaque_existential_0, v3, a1);
  }

  else
  {
    OUTLINED_FUNCTION_32_9();
    OUTLINED_FUNCTION_11_15();
    v13 = OUTLINED_FUNCTION_17_13();
    MEMORY[0x26D670040](v13);
    sub_26B2138F0();
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_0_37();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

void Collection<>.filter(columns:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_6();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v37[1] = v30;
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v31);
  v35 = *v33;
  v34 = v33[1];
  (*(v36 + 16))(v37 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v37[4] = v27;
  v37[5] = v25;
  v37[6] = v23;
  v37[7] = v29;
  v37[8] = v35;
  v37[9] = v34;
  sub_26B212DB0();
  if (!v21)
  {
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_18_12();
    sub_26B212F50();
    swift_dynamicCast();
  }

  OUTLINED_FUNCTION_10_2();
}

uint64_t sub_26B1E9174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[0] = a3;
  v12[1] = a4;
  v9 = *(a7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v9(a2, v12, AssociatedTypeWitness, a7) & 1;
}

uint64_t static Collection<>.result(of:from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v7 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_26B2128F0();
  v7(v10, AssociatedTypeWitness, a5);
}

uint64_t sub_26B1E92EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return static Collection<>.columns()(a1, WitnessTable, v3);
}

uint64_t sub_26B1E93BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static Collection<>.result(of:from:)(a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26B1E943C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return static Collection<>.columns()(a1, WitnessTable, v3);
}

uint64_t sub_26B1E950C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static Collection<>.result(of:from:)(a1, a2, a3, WitnessTable, v7);
}

uint64_t static Dictionary<>.columns()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26B16CB64(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26B216070;
  *(v9 + 32) = 7955819;
  *(v9 + 40) = 0xE300000000000000;
  (*(a3 + 32))(a1, a3);
  *(v9 + 56) = 0x65756C6176;
  *(v9 + 64) = 0xE500000000000000;
  (*(a5 + 32))(a2, a5);
  return v9;
}

void Dictionary<>.filter(columns:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_11_6();
  v89 = v22;
  v82 = v24;
  v83 = v23;
  v92 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v79[0] = a21;
  v79[1] = v32;
  v91 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_22_0();
  v88 = v36 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = v79 - v39;
  v41 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_22_0();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  v49 = *v31;
  v94 = v31[1];
  v95 = v49;
  v93 = v79 - v50;
  OUTLINED_FUNCTION_30_9();
  v80 = v29;
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v29);
  v90 = v40;
  OUTLINED_FUNCTION_30_9();
  v81 = v27;
  v57 = __swift_storeEnumTagSinglePayload(v54, v55, v56, v27);
  v58 = 0;
  v85 = v34;
  v86 = (v34 + 40);
  v59 = *(v83 + 16);
  v84 = v43;
  v60 = (v43 + 40);
  v61 = (v83 + 40);
  v87 = v41;
  while (1)
  {
    if (v59 == v58)
    {
      MEMORY[0x28223BE20](v57);
      v73 = v81;
      v79[-8] = v80;
      v79[-7] = v73;
      v74 = v93;
      v75 = v82;
      v79[-6] = v92;
      v79[-5] = v75;
      v76 = v90;
      v77 = v79[0];
      v79[-4] = v89;
      v79[-3] = v77;
      v79[-2] = v74;
      v79[-1] = v76;
      sub_26B2128F0();
      sub_26B212900();
      (*(v85 + 8))(v76, v91);
      (*(v84 + 8))(v74, v41);
      goto LABEL_22;
    }

    v62 = *(v61 - 1);
    v63 = *v61;
    v64 = v62 == 7955819 && v63 == 0xE300000000000000;
    if (!v64 && (OUTLINED_FUNCTION_33_7(7955819, 0xE300000000000000, *(v61 - 1)) & 1) == 0)
    {
      break;
    }

    v96 = *(v92 + 8);
    OUTLINED_FUNCTION_7_19();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_25_9();
    SQLTableFunctionCursorArguments.subscript.getter(v58, v41, v41, v65);
    if (v21)
    {
      v78 = v91;
      goto LABEL_21;
    }

    v57 = (*v60)(v93, v47, v41);
LABEL_10:
    v61 += 2;
    ++v58;
  }

  if (v62 != 0x65756C6176 || v63 != 0xE500000000000000)
  {
    v57 = OUTLINED_FUNCTION_33_7(0x65756C6176, 0xE500000000000000, v62);
    if ((v57 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v67 = v60;
  v68 = v47;
  v69 = v59;
  OUTLINED_FUNCTION_7_19();
  v70 = v91;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_25_9();
  v71 = v88;
  SQLTableFunctionCursorArguments.subscript.getter(v58, v70, v70, v72);
  if (!v21)
  {
    v57 = (*v86)(v90, v71, v70);
    v59 = v69;
    v47 = v68;
    v60 = v67;
    v41 = v87;
    goto LABEL_10;
  }

  v78 = v70;
  v41 = v87;
LABEL_21:
  (*(v85 + 8))(v90, v78);
  (*(v84 + 8))(v93, v41);
LABEL_22:
  OUTLINED_FUNCTION_10_2();
}

BOOL sub_26B1E9A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v45 = a1;
  v37 = a8;
  v38 = a4;
  v42 = a2;
  v43 = a3;
  v12 = sub_26B2133E0();
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v39 = &v35 - v14;
  v46 = *(a6 - 8);
  MEMORY[0x28223BE20](v13);
  v36 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26B2133E0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  v21 = *(a5 - 8);
  MEMORY[0x28223BE20](v18);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v26 = &v35 - v25;
  (*(v21 + 16))(&v35 - v25, v45, a5);
  v45 = TupleTypeMetadata2;
  (*(v46 + 16))(&v26[*(TupleTypeMetadata2 + 48)], v42, a6);
  (*(v17 + 16))(v20, v43, v16);
  if (__swift_getEnumTagSinglePayload(v20, 1, a5) == 1)
  {
    (*(v17 + 8))(v20, v16);
  }

  else
  {
    (*(v21 + 32))(v23, v20, a5);
    v27 = sub_26B212A20();
    (*(v21 + 8))(v23, a5);
    if ((v27 & 1) == 0)
    {
      (*(v44 + 8))(v26, v45);
      return 0;
    }
  }

  v29 = v39;
  v28 = v40;
  v30 = v41;
  (*(v40 + 16))(v39, v38, v41);
  if (__swift_getEnumTagSinglePayload(v29, 1, a6) == 1)
  {
    (*(v44 + 8))(v26, v45);
    (*(v28 + 8))(v29, v30);
    return 1;
  }

  v31 = v46;
  v32 = v36;
  (*(v46 + 32))(v36, v29, a6);
  v33 = sub_26B212A20();
  (*(v31 + 8))(v32, a6);
  (*(v44 + 8))(v26, v45);
  return (v33 & 1) != 0;
}

void static Dictionary<>.result(of:from:)()
{
  OUTLINED_FUNCTION_11_6();
  v48 = v1;
  v49 = v0;
  v3 = v2;
  v5 = v4;
  v52 = v6;
  v53 = v7;
  v9 = v8;
  v11 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9_0();
  v51 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v22 = *v11;
  v21 = v11[1];
  v23 = *(v5 - 8);
  (*(v23 + 16))(&v48 - v19, v9, v5);
  v24 = *(TupleTypeMetadata2 + 48);
  v25 = *(v3 - 8);
  v26 = *(v25 + 16);
  v27 = v52;
  v52 = v3;
  v26(&v20[v24], v27, v3);
  v50 = v22;
  v28 = v22 == 7955819 && v21 == 0xE300000000000000;
  if (v28 || (sub_26B213E30() & 1) != 0)
  {
    v29 = OUTLINED_FUNCTION_24_7();
    v30(v29);
    v31 = *(TupleTypeMetadata2 + 48);
    v32 = *(v49 + 16);
    v33 = v53;
    v53[3] = v5;
    v33[4] = v32;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    (*(v23 + 32))(boxed_opaque_existential_0, v17, v5);
    v35 = OUTLINED_FUNCTION_28_8();
    v36(v35);
    (*(v25 + 8))(v17 + v31, v52);
LABEL_13:
    OUTLINED_FUNCTION_10_2();
    return;
  }

  v37 = v50 == 0x65756C6176 && v21 == 0xE500000000000000;
  if (v37 || (OUTLINED_FUNCTION_33_7(0x65756C6176, 0xE500000000000000, v50) & 1) != 0)
  {
    v38 = OUTLINED_FUNCTION_24_7();
    v39(v38);
    v40 = *(TupleTypeMetadata2 + 48);
    v41 = *(v48 + 16);
    v43 = v52;
    v42 = v53;
    v53[3] = v52;
    v42[4] = v41;
    v44 = __swift_allocate_boxed_opaque_existential_0(v42);
    (*(v25 + 32))(v44, v17 + v40, v43);
    v45 = OUTLINED_FUNCTION_28_8();
    v46(v45);
    (*(v23 + 8))(v17, v5);
    goto LABEL_13;
  }

  v56 = 0;
  v57 = 0xE000000000000000;
  sub_26B2136C0();
  OUTLINED_FUNCTION_11_15();
  v47 = OUTLINED_FUNCTION_17_13();
  MEMORY[0x26D670040](v47);
  v54 = v50;
  v55 = v21;
  sub_26B2138F0();
  OUTLINED_FUNCTION_0_37();
  sub_26B2139E0();
  __break(1u);
}

uint64_t SQLBindPair.columnName.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_26B2128F0();
}

void *SQLBindPair.init(name:keyPath:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = a2;
  return result;
}

uint64_t SQLBindPair.column.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  *a1 = v4;
  a1[1] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 24);
  v8 = *(v7 + 32);
  sub_26B2128F0();
  return v8(AssociatedTypeWitness, v7);
}

uint64_t static SQLBindElement.columns()(uint64_t a1, uint64_t a2)
{
  v11[11] = (*(a2 + 16))();
  v11[6] = a1;
  v11[7] = a2;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = swift_getKeyPath();
  v11[9] = a1;
  OUTLINED_FUNCTION_2_34();
  swift_getExtendedExistentialTypeMetadata();
  OUTLINED_FUNCTION_18_12();
  v4 = sub_26B212F50();
  sub_26B1E6640();
  v6 = v5;
  WitnessTable = swift_getWitnessTable();
  v9 = sub_26B14B604(sub_26B1EA66C, v11, v4, v6, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  return v9;
}

uint64_t sub_26B1EA5F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 56))(v9, &v8, v3, v4);
  v6 = v9[1];
  v7 = v8;
  *a2 = v9[0];
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

void SQLBindElement.filter(columns:arguments:)()
{
  OUTLINED_FUNCTION_11_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9[1];
  v25 = *v9;
  v26 = v0;
  v24 = v10;
  v27 = (*(v3 + 16))(v5, v3);
  v38 = 0;
  v39 = 0;
  v37 = v8;
  sub_26B2128F0();
  while (1)
  {
    sub_26B1E4EF0(&v32);
    v12 = v34;
    if (!v34)
    {

      goto LABEL_9;
    }

    v28 = &v23;
    v13 = v32;
    v14 = v33;
    MEMORY[0x28223BE20](v11);
    *(&v23 - 4) = v6;
    *(&v23 - 3) = v4;
    v21 = v14;
    v22 = v12;
    v29 = v6;
    OUTLINED_FUNCTION_2_34();
    swift_getExtendedExistentialTypeMetadata();
    OUTLINED_FUNCTION_18_12();
    v15 = sub_26B212F50();
    OUTLINED_FUNCTION_10_18(v15);
    sub_26B212DA0();
    if (!v31)
    {
      break;
    }

    v16 = v2;

    sub_26B150514(&v30, &v32);
    v17 = v35;
    v18 = v36;
    v19 = __swift_project_boxed_opaque_existential_1(&v32, v35);
    v20 = sub_26B1EA93C(v19, v25, v24, v13, v26, v6, v17, v4, v18);
    v2 = v16;
    if (v16 || (v20 & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(&v32);
LABEL_9:
      OUTLINED_FUNCTION_10_2();
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(&v32);
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_26B2136C0();
  OUTLINED_FUNCTION_11_15();
  MEMORY[0x26D670040](0xD000000000000017);
  *&v30 = v14;
  *(&v30 + 1) = v12;
  sub_26B2138F0();
  LODWORD(v22) = 0;
  v21 = 312;
  OUTLINED_FUNCTION_0_37();
  sub_26B2139E0();
  __break(1u);
}

uint64_t sub_26B1EA93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[1] = a1;
  v24[2] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  v19 = *(swift_getAssociatedConformanceWitness() + 24);
  v26[0] = a2;
  v26[1] = a3;
  v20 = v26;
  v21 = v26[3];
  SQLTableFunctionCursorArguments.subscript.getter(a4, AssociatedTypeWitness, AssociatedTypeWitness, v19);
  if (!v21)
  {
    (*(a9 + 48))(a7, a9);
    swift_getAtKeyPath();

    swift_getAssociatedConformanceWitness();
    LOBYTE(v20) = sub_26B212A20();
    v22 = *(v25 + 8);
    v22(v16, AssociatedTypeWitness);
    v22(v18, AssociatedTypeWitness);
  }

  return v20 & 1;
}

uint64_t SQLBindElement.subscript.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *x8_0@<X8>)
{
  v14 = (*(a3 + 16))(a2, a3);
  OUTLINED_FUNCTION_2_34();
  swift_getExtendedExistentialTypeMetadata();
  OUTLINED_FUNCTION_18_12();
  v5 = sub_26B212F50();
  OUTLINED_FUNCTION_10_18(v5);
  sub_26B212DA0();
  if (v10)
  {

    sub_26B150514(&v9, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, v12);
    sub_26B1EADC0(v6, v7, x8_0);
    return __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    sub_26B2136C0();
    OUTLINED_FUNCTION_11_15();
    MEMORY[0x26D670040](0xD000000000000017);
    sub_26B2138F0();
    OUTLINED_FUNCTION_0_37();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1EAD10(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 40))(v10, v5, v6);
  if (v10[0] == a2 && v10[1] == a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26B213E30();
  }

  return v8 & 1;
}

uint64_t sub_26B1EADC0@<X0>(uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  (*(a3 + 48))(a2, a3);
  a4[3] = swift_getAssociatedTypeWitness();
  a4[4] = *(swift_getAssociatedConformanceWitness() + 32);
  __swift_allocate_boxed_opaque_existential_0(a4);
  swift_getAtKeyPath();
}

uint64_t sub_26B1EAE98(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B1EAED4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B1EAF10(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B1EB088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B1EB4CC(uint64_t a1)
{
  OUTLINED_FUNCTION_1_32();
  WitnessTable = swift_getWitnessTable();
  return static _SQLBindableElement<>.columns()(a1, WitnessTable);
}

uint64_t sub_26B1EB510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_32();
  swift_getWitnessTable();
  _SQLBindableElement<>.filter(columns:arguments:)();
  return v3 & 1;
}

uint64_t sub_26B1EB578@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_1_32();
  WitnessTable = swift_getWitnessTable();
  return _SQLBindableElement<>.subscript.getter(a1, WitnessTable, a2);
}

void sub_26B1EB634(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a5 >> 62)
  {
    case 1uLL:
      v10 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        __break(1u);
      }

      v9 = a4;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_9:
      v8 = sub_26B1EB7A0(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v8 = 1;
LABEL_10:
        *a1 = v8 & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a4;
      v12 = a5;
      v13 = BYTE2(a5);
      v14 = BYTE3(a5);
      v15 = BYTE4(a5);
      v16 = BYTE5(a5);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v8 = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      goto LABEL_10;
  }
}

char *sub_26B1EB7A0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_26B211D10();
  v8 = result;
  if (result)
  {
    result = sub_26B211D40();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_26B211D30();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t sub_26B1EB944(uint64_t a1, uint64_t a2)
{
  sub_26B1EC100(0, &qword_2803E7080, &type metadata for SQLVirtualTableIndexResults.ConstraintUsage);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B1EB9B8(uint64_t a1)
{
  sub_26B1EC100(0, &qword_2803E7080, &type metadata for SQLVirtualTableIndexResults.ConstraintUsage);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26B1EBA24(uint64_t a1)
{
  sub_26B213A10();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_26B2133E0();
    if (v2 <= 0x3F)
    {
      sub_26B1EC100(319, &qword_2803E8580, MEMORY[0x277D84A28]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26B1EBB10(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = 7;
  }

  else
  {
    v14 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8;
  if (v12 < a2)
  {
    v16 = ((v14 + *(*(result - 8) + 64) + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v16 <= 3)
    {
      v17 = ((a2 - v12 + 255) >> 8) + 1;
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

    switch(v19)
    {
      case 1:
        v20 = a1[v16];
        if (a1[v16])
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      case 2:
        v20 = *&a1[v16];
        if (*&a1[v16])
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      case 3:
        __break(1u);
        return result;
      case 4:
        v20 = *&a1[v16];
        if (!v20)
        {
          goto LABEL_31;
        }

LABEL_27:
        v21 = (v20 - 1) << (8 * v16);
        if (v16 <= 3)
        {
          v22 = *a1;
        }

        else
        {
          v21 = 0;
          v22 = *a1;
        }

        return v12 + (v22 | v21) + 1;
      default:
LABEL_31:
        if (v12)
        {
          break;
        }

        return 0;
    }
  }

  if (v7 >= v11)
  {

    return __swift_getEnumTagSinglePayload(a1, v7, AssociatedTypeWitness);
  }

  else
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v15] & ~v13, v10, result);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_26B1EBD94(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = *(v12 + 80);
  if (v13)
  {
    v18 = *(*(v10 - 8) + 64);
  }

  else
  {
    v18 = *(*(v10 - 8) + 64) + 1;
  }

  v19 = ((v18 + ((v16 + v17) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v15 < a3)
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }
  }

  if (v15 < a2)
  {
    v22 = ~v15 + a2;
    bzero(a1, v19);
    if (v19 <= 3)
    {
      v23 = (v22 >> 8) + 1;
    }

    else
    {
      v23 = 1;
    }

    if (v19 > 3)
    {
      *a1 = v22;
    }

    else
    {
      *a1 = v22;
    }

    switch(v11)
    {
      case 1:
        a1[v19] = v23;
        break;
      case 2:
        *&a1[v19] = v23;
        break;
      case 3:
        goto LABEL_63;
      case 4:
        *&a1[v19] = v23;
        break;
      default:
        return;
    }

    return;
  }

  switch(v11)
  {
    case 1:
      a1[v19] = 0;
      if (a2)
      {
        goto LABEL_36;
      }

      return;
    case 2:
      *&a1[v19] = 0;
      if (a2)
      {
        goto LABEL_36;
      }

      return;
    case 3:
LABEL_63:
      __break(1u);
      return;
    case 4:
      *&a1[v19] = 0;
      goto LABEL_35;
    default:
LABEL_35:
      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 < v14)
      {
        a1 = (&a1[v16 + v17] & ~v17);
        if (v14 < a2)
        {
          if (v18 <= 3)
          {
            v24 = ~(-1 << (8 * v18));
          }

          else
          {
            v24 = -1;
          }

          if (v18)
          {
            v25 = v24 & (~v14 + a2);
            if (v18 <= 3)
            {
              v26 = v18;
            }

            else
            {
              v26 = 4;
            }

            bzero(a1, v18);
            switch(v26)
            {
              case 2:
                *a1 = v25;
                break;
              case 3:
                *a1 = v25;
                a1[2] = BYTE2(v25);
                break;
              case 4:
                goto LABEL_50;
              default:
                *a1 = v25;
                break;
            }
          }

          return;
        }

        v27 = (a2 + 1);
        v28 = a1;
        goto LABEL_57;
      }

      if (v9 >= a2)
      {
        v28 = a1;
        v27 = a2;
        v13 = v9;
        v10 = AssociatedTypeWitness;
LABEL_57:

        __swift_storeEnumTagSinglePayload(v28, v27, v13, v10);
        return;
      }

      if (v16)
      {
        v25 = ~v9 + a2;
        bzero(a1, v16);
LABEL_50:
        *a1 = v25;
      }

      return;
  }
}

void sub_26B1EC100(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26B2133E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_10_18(uint64_t a1)
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_31_7()
{

  JUMPOUT(0x26D670040);
}

uint64_t OUTLINED_FUNCTION_32_9()
{

  return sub_26B2136C0();
}

uint64_t OUTLINED_FUNCTION_33_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26B213E30();
}

uint64_t SQLDynamicValue.description.getter()
{
  v6[1] = *v0;
  SQLDynamicValue.nativeValue.getter(&v7);
  sub_26B150514(&v7, v8);
  v1 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  MEMORY[0x28223BE20](v1);
  (*(v3 + 16))(v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_26B212AE0();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v4;
}

sqlite3_stmt *SQLDynamicValue.init(statement:index:)@<X0>(uint64_t iCol@<X1>, sqlite3_stmt *result@<X0>, sqlite3_stmt **a3@<X8>)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (iCol > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = sqlite3_column_value(result, iCol);
  if (v4)
  {
    v5 = v4;
    type metadata accessor for SQLDynamicValue.Box();
    swift_allocObject();
    result = sub_26B1EC55C(v5);
    *a3 = result;
  }

  else
  {
    sub_26B2136C0();

    v6 = sub_26B213B90();
    MEMORY[0x26D670040](v6);

    sub_26B1B34BC();
    swift_allocError();
    *v7 = 0xD000000000000022;
    v7[1] = 0x800000026B220F50;
    return swift_willThrow();
  }

  return result;
}

sqlite3_value *sub_26B1EC55C(const sqlite3_value *a1)
{
  result = sqlite3_value_dup(a1);
  if (result)
  {
    *(v1 + 16) = result;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1EC584()
{
  sqlite3_value_free(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26B1EC5E8()
{
  sub_26B214030();
  MEMORY[0x26D671480](*(v0 + 16));
  return sub_26B214070();
}

uint64_t SQLDynamicValue.datatype.getter@<X0>(_BYTE *a1@<X8>)
{
  result = sqlite3_value_type(*(*v1 + 16));
  if ((result - 1) > 4)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0x4030201uLL >> (8 * (result - 1));
  }

  return result;
}

void SQLDynamicValue.nativeValue.getter(sqlite3_int64 *a1@<X8>)
{
  v4 = *v1;
  switch(sqlite3_value_type(*(v4 + 16)))
  {
    case 1:
      a1[3] = MEMORY[0x277D83B88];
      a1[4] = &protocol witness table for Int;
      *a1 = sqlite3_value_int64(*(v4 + 16));
      return;
    case 2:
      a1[3] = MEMORY[0x277D839F8];
      a1[4] = &protocol witness table for Double;
      *a1 = sqlite3_value_double(*(v4 + 16));
      return;
    case 3:
      a1[3] = MEMORY[0x277D837D0];
      a1[4] = &protocol witness table for String;
      v5 = *(v4 + 16);
      v6 = sqlite3_value_text(v5);
      sqlite3_value_bytes(v5);
      v7 = sub_26B1F0DA8(v6);
      goto LABEL_8;
    case 4:
      a1[3] = MEMORY[0x277CC9318];
      a1[4] = sub_26B1B3400();
      v14 = *(v4 + 16);
      v15 = sqlite3_value_blob(v14);
      v16 = sqlite3_value_bytes(v14);
      v7 = sub_26B1F2CF4(v15, v16);
LABEL_8:
      if (v2)
      {
        goto LABEL_9;
      }

      *a1 = v7;
      a1[1] = v8;
      break;
    case 5:
      a1[3] = &type metadata for SQLNull;
      a1[4] = sub_26B1B3510();
      v9 = *(v4 + 16);
      if (sqlite3_value_type(v9) == 5)
      {
        return;
      }

      sub_26B2136C0();

      OUTLINED_FUNCTION_0_38();
      v17 = v11;
      v18 = v10;
      sqlite3_value_type(v9);
      v12 = sub_26B213B90();
      MEMORY[0x26D670040](v12);

      MEMORY[0x26D670040](0x65756C617620, 0xE600000000000000);
      sub_26B1B34BC();
      swift_allocError();
      *v13 = v17;
      v13[1] = v18;
      swift_willThrow();
LABEL_9:
      __swift_deallocate_boxed_opaque_existential_2(a1);
      break;
    default:
      __break(1u);
      return;
  }
}

uint64_t sub_26B1EC8F8(uint64_t a1)
{
  sub_26B1B3454(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SQLDynamicValue.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](*(v1 + 16));
  return sub_26B214070();
}

uint64_t sub_26B1ECA0C(uint64_t a1)
{
  v2 = *v1;
  sub_26B214030();
  MEMORY[0x26D671480](*(v2 + 16));
  return sub_26B214070();
}

uint64_t SQLDynamicValue.debugSQL.getter()
{
  v7 = *v0;
  SQLDynamicValue.nativeValue.getter(v4);
  v2 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(*(v1 + 8) + 16))(v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

sqlite3_value *sub_26B1ECB24@<X0>(const sqlite3_value *a1@<X0>, sqlite3_value **a2@<X8>)
{
  type metadata accessor for SQLDynamicValue.Box();
  swift_allocObject();
  result = sub_26B1EC55C(a1);
  *a2 = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLDynamicValue.bind(to:index:)(Swift::OpaquePointer to, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (index > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return;
  }

  if (sqlite3_bind_value(to._rawValue, index, *(*v2 + 16)))
  {
    sub_26B2136C0();

    OUTLINED_FUNCTION_0_38();
    v7 = v4;
    v8 = v3;
    v5 = sub_26B213B90();
    MEMORY[0x26D670040](v5);

    sub_26B1B34BC();
    swift_allocError();
    *v6 = v7;
    v6[1] = v8;
    swift_willThrow();
  }
}

unint64_t sub_26B1ECCF4()
{
  result = qword_2803E8588;
  if (!qword_2803E8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8588);
  }

  return result;
}

unint64_t sub_26B1ECD48(uint64_t a1)
{
  result = sub_26B1ECD70();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26B1ECD70()
{
  result = qword_2803E8590;
  if (!qword_2803E8590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8590);
  }

  return result;
}

unint64_t sub_26B1ECDD8()
{
  result = qword_2803E8598;
  if (!qword_2803E8598)
  {
    type metadata accessor for SQLDynamicValue.Box();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8598);
  }

  return result;
}

uint64_t sub_26B1ECE68@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 117;
    }

    else
    {
      v4 = 27504;
    }

    if (v3 == 1)
    {
      v5 = 0xE100000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }
  }

  else
  {
    v4 = 99;
    v5 = 0xE100000000000000;
  }

  MEMORY[0x26D670040](v4, v5);
  MEMORY[0x26D670040](39, 0xE100000000000000);

  *a2 = 39;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_26B1ECF00@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0x564953554C435845;
  }

  else
  {
    v4 = 0x4C414D524F4ELL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE900000000000045;
  }

  MEMORY[0x26D670040](v4, v5);
  MEMORY[0x26D670040](39, 0xE100000000000000);

  *a2 = 39;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_26B1ECF9C@<X0>(void *a1@<X8>, char a2@<W0>)
{
  v3 = sub_26B1ED744(a2);
  MEMORY[0x26D670040](v3);
  MEMORY[0x26D670040](39, 0xE100000000000000);

  *a1 = 39;
  a1[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_26B1ED030@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B213B90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B1ED07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_26B2128F0();
  MEMORY[0x26D670040](a1, a2);
  MEMORY[0x26D670040](39, 0xE100000000000000);

  *a3 = 39;
  a3[1] = 0xE100000000000000;
  return result;
}

uint64_t SQLFunctionResult<>.debugSQL.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  (*(a2 + 64))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 16))(AssociatedTypeWitness);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_26B1ED27C(Swift::OpaquePointer a1)
{
  sub_26B2128F0();
  String.result(for:)(a1);
}

uint64_t SQLFunctionResult<>.result(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  result = (*(a3 + 64))(a2, a3);
  if (!v3)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(*(AssociatedConformanceWitness + 24) + 16) + 16))(a1, AssociatedTypeWitness);
    return (*(v9 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_26B1ED434@<X0>(uint64_t *a1@<X8>, sqlite3_value *a2@<X0>)
{
  result = sub_26B1ED55C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_26B1ED460(sqlite3_value *a1)
{
  result = sqlite3_value_type(a1);
  if (result != 5)
  {
    sub_26B2136C0();

    sqlite3_value_type(a1);
    v3 = sub_26B213B90();
    MEMORY[0x26D670040](v3);

    MEMORY[0x26D670040](0x65756C617620, 0xE600000000000000);
    sub_26B1B34BC();
    swift_allocError();
    *v4 = 0xD00000000000001ELL;
    v4[1] = 0x800000026B220150;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26B1ED55C(sqlite3_value *a1)
{
  v2 = sqlite3_value_text(a1);
  sqlite3_value_bytes(a1);
  return sub_26B1F0DA8(v2);
}

uint64_t SQLFunctionArgument<>.init(functionArgument:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = (*(AssociatedConformanceWitness + 40))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v3)
  {
    return (*(a3 + 56))(v9, a2, a3);
  }

  return result;
}

uint64_t sub_26B1ED6D8(char a1)
{
  if (!a1)
  {
    return 99;
  }

  if (a1 == 1)
  {
    return 117;
  }

  return 27504;
}

uint64_t sub_26B1ED70C(char a1)
{
  if (a1)
  {
    return 0x564953554C435845;
  }

  else
  {
    return 0x4C414D524F4ELL;
  }
}

uint64_t sub_26B1ED744(char a1)
{
  result = 0x4554454C4544;
  switch(a1)
  {
    case 1:
      result = 0x455441434E555254;
      break;
    case 2:
      result = 0x54534953524550;
      break;
    case 3:
      result = 0x59524F4D454DLL;
      break;
    case 4:
      result = 4997463;
      break;
    case 5:
      result = 4605519;
      break;
    default:
      return result;
  }

  return result;
}

const char *SQLValueObject<>.bind(to:index:)(sqlite3_stmt *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a4 + 32);
  swift_unknownObjectRetain();
  result = v10(a3, a4);
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result)
  {
    return sqlite3_bind_pointer(a1, a2, v5, result, sub_26B1EDD00);
  }

LABEL_9:
  __break(1u);
  return result;
}

void SQLValueObject<>.result(for:)(sqlite3_context *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 32);
  swift_unknownObjectRetain();
  v9 = v8(a2, a3);
  if (v10)
  {
    __break(1u);
  }

  else if (v9)
  {
    sqlite3_result_pointer(a1, v4, v9, sub_26B1EDCFC);
    return;
  }

  __break(1u);
}

const char *sub_26B1ED9A0@<X0>(sqlite3_value *a1@<X0>, const char **a2@<X8>)
{
  result = SQLValueObject<>.init(functionArgument:)(a1, v2, &off_287BC11C0);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

const char *SQLValueObject<>.init(functionArgument:)(sqlite3_value *a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 32))(a2, a3);
  if (v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (sqlite3_value_pointer(a1, result))
  {
    v10 = swift_unknownObjectRetain();
    result = (*(*(a2 - 8) + 32))(&v11, &v10, a2);
    if (!v3)
    {
      return v11;
    }
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000032, 0x800000026B221050);
    v10 = a1;
    sub_26B2138F0();
    MEMORY[0x26D670040](0xD000000000000010, 0x800000026B221090);
    v8 = sub_26B2136E0();
    MEMORY[0x26D670040](v8);

    sub_26B1B34BC();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26B1EDC5C(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1EDD30@<X0>(_BYTE *a3@<X8>)
{
  v4 = sub_26B213AA0();
  if (v4 >= 3)
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
    MEMORY[0x26D670040](0x7079547865646E49, 0xE900000000000065);
    MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
    sub_26B2138F0();
    sub_26B1B34BC();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0xE000000000000000;
    swift_willThrow();
  }

  else
  {
    v5 = v4;

    *a3 = v5;
  }

  return result;
}

uint64_t sub_26B1EDE7C@<X0>(char *a3@<X8>)
{
  v4 = sub_26B213AA0();
  if (!v4)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = 1;
LABEL_5:

    *a3 = v5;
    return result;
  }

  sub_26B2136C0();
  MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
  MEMORY[0x26D670040](0x4D676E696B636F4CLL, 0xEB0000000065646FLL);
  MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
  sub_26B2138F0();
  sub_26B1B34BC();
  swift_allocError();
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  swift_willThrow();
}

uint64_t sub_26B1EDFD0@<X0>(_BYTE *a3@<X8>)
{
  sub_26B2128F0();
  SQLDatabase.Options.JournalMode.init(rawValue:)(&v9);
  v4 = v9;
  if (v9 == 6)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
    MEMORY[0x26D670040](0x4D6C616E72756F4ALL, 0xEB0000000065646FLL);
    MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
    sub_26B2138F0();
    v5 = v9;
    v6 = v10;
    sub_26B1B34BC();
    swift_allocError();
    *v7 = v5;
    v7[1] = v6;
    swift_willThrow();
  }

  else
  {

    *a3 = v4;
  }

  return result;
}

unint64_t sub_26B1EE124@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
    MEMORY[0x26D670040](0x756361566F747541, 0xEE0065646F4D6D75);
    MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
    sub_26B2138F0();
    sub_26B1B34BC();
    swift_allocError();
    *v2 = 0;
    v2[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

void RawRepresentable<>.init(nativeValue:)()
{
  OUTLINED_FUNCTION_11_6();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v44 = v10;
  sub_26B2133E0();
  OUTLINED_FUNCTION_0();
  v42 = v12;
  v43 = v11;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v13);
  v48 = &v41 - v14;
  v45 = v5;
  v47 = v7;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_13();
  v19 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0();
  v46 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v41 - v26;
  (*(v17 + 16))(v1, v9, AssociatedTypeWitness);
  (*(v3 + 56))(v1, v19, v3);
  if (v0)
  {
    (*(v17 + 8))(v9, AssociatedTypeWitness);
  }

  else
  {
    v51 = AssociatedTypeWitness;
    v41 = v9;
    (*(v46 + 16))(v24, v27, v19);
    v28 = v47;
    v29 = v48;
    sub_26B212E00();
    OUTLINED_FUNCTION_15_11(v29);
    if (v30)
    {
      (*(v42 + 8))(v48, v43);
      OUTLINED_FUNCTION_8_25();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_7_20();
      v31 = OUTLINED_FUNCTION_50_4();
      MEMORY[0x26D670040](v31);

      OUTLINED_FUNCTION_12_18();
      sub_26B213DF0();
      v32 = v49;
      v33 = v50;
      v34 = sub_26B1B34BC();
      OUTLINED_FUNCTION_24_4(&type metadata for SQLValueError, v34);
      *v35 = v32;
      v35[1] = v33;
      swift_willThrow();
      (*(v17 + 8))(v41, v51);
      v36 = OUTLINED_FUNCTION_40_4();
      v37(v36);
    }

    else
    {
      (*(v17 + 8))(v41, v51);
      v38 = OUTLINED_FUNCTION_40_4();
      v39(v38);
      OUTLINED_FUNCTION_11_16();
      (*(v40 + 32))(v44, v48, v28);
    }
  }

  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_10_2();
}

void RawRepresentable<>.nativeValue.getter()
{
  OUTLINED_FUNCTION_11_6();
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_20();
  (*(v1 + 64))(AssociatedTypeWitness, v1);
  v4 = OUTLINED_FUNCTION_20_5();
  v5(v4);
  OUTLINED_FUNCTION_10_2();
}

void RawRepresentable<>.result(for:)()
{
  OUTLINED_FUNCTION_11_6();
  v1 = v0;
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_20();
  (*(v1 + 16))(v3, AssociatedTypeWitness, v1);
  v6 = OUTLINED_FUNCTION_20_5();
  v7(v6);
  OUTLINED_FUNCTION_10_2();
}

uint64_t sub_26B1EE9F8@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, _BYTE *a3@<X8>)
{
  result = String.init(statement:index:)(a1, a2)._countAndFlagsBits;
  if (!v5)
  {
    sub_26B2128F0();
    v6 = sub_26B213AA0();

    if (v6 >= 3)
    {
      sub_26B2136C0();
      MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
      MEMORY[0x26D670040](0x7079547865646E49, 0xE900000000000065);
      MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
      sub_26B2138F0();
      sub_26B1B34BC();
      swift_allocError();
      *v7 = 0;
      v7[1] = 0xE000000000000000;
      swift_willThrow();
    }

    else
    {

      *a3 = v6;
    }
  }

  return result;
}

uint64_t sub_26B1EEB5C@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, char *a3@<X8>)
{
  result = String.init(statement:index:)(a1, a2)._countAndFlagsBits;
  if (!v5)
  {
    sub_26B2128F0();
    v6 = sub_26B213AA0();

    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }

    if (v6 == 1)
    {
      v7 = 1;
LABEL_6:

      *a3 = v7;
      return result;
    }

    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
    MEMORY[0x26D670040](0x4D676E696B636F4CLL, 0xEB0000000065646FLL);
    MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
    sub_26B2138F0();
    sub_26B1B34BC();
    swift_allocError();
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_26B1EECD4@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, _BYTE *a3@<X8>)
{
  result = String.init(statement:index:)(a1, a2)._countAndFlagsBits;
  if (!v5)
  {
    sub_26B2128F0();
    SQLDatabase.Options.JournalMode.init(rawValue:)(&v10);
    v6 = v10;
    if (v10 == 6)
    {
      v10 = 0;
      v11 = 0xE000000000000000;
      sub_26B2136C0();
      MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
      MEMORY[0x26D670040](0x4D6C616E72756F4ALL, 0xEB0000000065646FLL);
      MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
      sub_26B2138F0();
      v7 = v10;
      v8 = v11;
      sub_26B1B34BC();
      swift_allocError();
      *v9 = v7;
      v9[1] = v8;
      swift_willThrow();
    }

    else
    {

      *a3 = v6;
    }
  }

  return result;
}

sqlite3_stmt *sub_26B1EEE30@<X0>(sqlite3_stmt *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_column_int64(result, a2);
  if (result >= 3)
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
    MEMORY[0x26D670040](0x756361566F747541, 0xEE0065646F4D6D75);
    MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
    sub_26B2138F0();
    sub_26B1B34BC();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void RawRepresentable<>.init(statement:index:)()
{
  OUTLINED_FUNCTION_11_6();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v33 = v12;
  v13 = sub_26B2133E0();
  OUTLINED_FUNCTION_0();
  v34 = v14;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_21_9();
  v35 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v36 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v33 - v23;
  (*(v3 + 8))(v11, v9, AssociatedTypeWitness, v3);
  if (!v0)
  {
    v25 = v34;
    v37 = v13;
    v26 = v36;
    (*(v36 + 16))(v21, v24, AssociatedTypeWitness);
    sub_26B212E00();
    OUTLINED_FUNCTION_15_11(v1);
    if (v27)
    {
      (*(v25 + 8))(v1, v37);
      OUTLINED_FUNCTION_8_25();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_7_20();
      v28 = OUTLINED_FUNCTION_50_4();
      MEMORY[0x26D670040](v28);

      OUTLINED_FUNCTION_12_18();
      sub_26B213DF0();
      v29 = sub_26B1B34BC();
      v30 = OUTLINED_FUNCTION_24_4(&type metadata for SQLValueError, v29);
      OUTLINED_FUNCTION_29_9(v30, v31);
      (*(v26 + 8))(v24, AssociatedTypeWitness);
    }

    else
    {
      (*(v26 + 8))(v24, AssociatedTypeWitness);
      OUTLINED_FUNCTION_11_16();
      (*(v32 + 32))(v33, v1, v7);
    }
  }

  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_10_2();
}

sqlite3_stmt *sub_26B1EF3D4(sqlite3_stmt *result, uint64_t a2, unsigned __int8 a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_int64(result, a2, a3);
  }

  __break(1u);
  return result;
}

void RawRepresentable<>.bind(to:index:)()
{
  OUTLINED_FUNCTION_11_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_20();
  (*(v1 + 8))(v5, v3, AssociatedTypeWitness, v1);
  v8 = OUTLINED_FUNCTION_20_5();
  v9(v8);
  OUTLINED_FUNCTION_10_2();
}

uint64_t sub_26B1EF538@<X0>(sqlite3_value *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sqlite3_value_text(a1);
  sqlite3_value_bytes(a1);
  result = sub_26B1F0DA8(v5);
  if (!v2)
  {
    sub_26B2128F0();
    v7 = sub_26B213AA0();

    if (v7 >= 3)
    {
      sub_26B2136C0();
      MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
      MEMORY[0x26D670040](0x7079547865646E49, 0xE900000000000065);
      MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
      sub_26B2138F0();
      sub_26B1B34BC();
      swift_allocError();
      *v8 = 0;
      v8[1] = 0xE000000000000000;
      swift_willThrow();
    }

    else
    {

      *a2 = v7;
    }
  }

  return result;
}

uint64_t sub_26B1EF6BC@<X0>(sqlite3_value *a1@<X0>, char *a2@<X8>)
{
  v5 = sqlite3_value_text(a1);
  sqlite3_value_bytes(a1);
  result = sub_26B1F0DA8(v5);
  if (!v2)
  {
    sub_26B2128F0();
    v7 = sub_26B213AA0();

    if (!v7)
    {
      v8 = 0;
      goto LABEL_6;
    }

    if (v7 == 1)
    {
      v8 = 1;
LABEL_6:

      *a2 = v8;
      return result;
    }

    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
    MEMORY[0x26D670040](0x4D676E696B636F4CLL, 0xEB0000000065646FLL);
    MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
    sub_26B2138F0();
    sub_26B1B34BC();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    swift_willThrow();
  }

  return result;
}

unint64_t sub_26B1EF854@<X0>(sqlite3_value *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sqlite3_value_int64(a1);
  if (result >= 3)
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
    MEMORY[0x26D670040](0x756361566F747541, 0xEE0065646F4D6D75);
    MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
    sub_26B2138F0();
    sub_26B1B34BC();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26B1EF978@<X0>(sqlite3_value *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sqlite3_value_text(a1);
  sqlite3_value_bytes(a1);
  result = sub_26B1F0DA8(v5);
  if (!v2)
  {
    sub_26B2128F0();
    SQLDatabase.Options.JournalMode.init(rawValue:)(&v11);
    v7 = v11;
    if (v11 == 6)
    {
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_26B2136C0();
      MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
      MEMORY[0x26D670040](0x4D6C616E72756F4ALL, 0xEB0000000065646FLL);
      MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
      sub_26B2138F0();
      v8 = v11;
      v9 = v12;
      sub_26B1B34BC();
      swift_allocError();
      *v10 = v8;
      v10[1] = v9;
      swift_willThrow();
    }

    else
    {

      *a2 = v7;
    }
  }

  return result;
}

void RawRepresentable<>.init(functionArgument:)()
{
  sub_26B1F2868();
}

{
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_20_10(v2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_28_9();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_38_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_39_5();
  v6 = OUTLINED_FUNCTION_30_10();
  v7(v6);
  if (!v0)
  {
    v8 = OUTLINED_FUNCTION_5_23();
    v9(v8);
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_15_11(v1);
    if (v10)
    {
      v11 = OUTLINED_FUNCTION_19_11();
      v12(v11);
      OUTLINED_FUNCTION_8_25();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_7_20();
      v13 = OUTLINED_FUNCTION_50_4();
      MEMORY[0x26D670040](v13);

      OUTLINED_FUNCTION_12_18();
      sub_26B213DF0();
      v14 = sub_26B1B34BC();
      v15 = OUTLINED_FUNCTION_24_4(&type metadata for SQLValueError, v14);
      OUTLINED_FUNCTION_29_9(v15, v16);
      v19 = OUTLINED_FUNCTION_4_29();
    }

    else
    {
      v17 = OUTLINED_FUNCTION_4_29();
      v18(v17);
      OUTLINED_FUNCTION_11_16();
      v19 = OUTLINED_FUNCTION_37_5();
    }

    v20(v19);
  }

  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_10_2();
}

{
  RawRepresentable<>.init(functionArgument:)();
}

uint64_t sub_26B1EFB28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B1ED70C(*v1);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_26B1EFBDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B1ED7DC(*v1);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_26B1EFCBC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  result = a1(*v2);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_26B1EFD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1280070990 && a2 == 0xE400000000000000;
  if (v5 || (OUTLINED_FUNCTION_16_12(1280070990) & 1) != 0)
  {

    v8 = 0;
  }

  else
  {
    v9 = a1 == 0x52454745544E49 && a2 == 0xE700000000000000;
    if (v9 || (sub_26B213E30() & 1) != 0)
    {

      v8 = 1;
    }

    else
    {
      v10 = a1 == 1279346002 && a2 == 0xE400000000000000;
      if (v10 || (OUTLINED_FUNCTION_16_12(1279346002) & 1) != 0)
      {

        v8 = 2;
      }

      else
      {
        v11 = a1 == 1415071060 && a2 == 0xE400000000000000;
        if (v11 || (OUTLINED_FUNCTION_16_12(1415071060) & 1) != 0)
        {

          v8 = 3;
        }

        else
        {
          v12 = a1 == 1112493122 && a2 == 0xE400000000000000;
          if (v12 || (OUTLINED_FUNCTION_16_12(1112493122) & 1) != 0)
          {

            v8 = 4;
          }

          else if (a1 == 0x4E4544444948 && a2 == 0xE600000000000000)
          {

            v8 = 5;
          }

          else
          {
            v14 = sub_26B213E30();

            if (v14)
            {
              v8 = 5;
            }

            else
            {
              v8 = 6;
            }
          }
        }
      }
    }
  }

  *a3 = v8;
  return result;
}

uint64_t SQLDataType.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

void sub_26B1EFF9C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  sub_26B14F044(a1, a2);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLNull.init(raw:)(Swift::OpaquePointer raw)
{
  if (sqlite3_value_type(raw._rawValue) != 5)
  {
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();

    OUTLINED_FUNCTION_42_4();
    sqlite3_value_type(raw._rawValue);
    v2 = sub_26B213B90();
    MEMORY[0x26D670040](v2);

    OUTLINED_FUNCTION_49_2();
    v3 = sub_26B1B34BC();
    OUTLINED_FUNCTION_24_4(&type metadata for SQLValueError, v3);
    *v4 = v5;
    v4[1] = v6;
    swift_willThrow();
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLNull.init(statement:index:)(Swift::OpaquePointer statement, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = index;
  if (index > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return;
  }

  if (sqlite3_column_type(statement._rawValue, index) != 5)
  {
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();

    OUTLINED_FUNCTION_42_4();
    sqlite3_column_type(statement._rawValue, v2);
    v4 = sub_26B213B90();
    MEMORY[0x26D670040](v4);

    OUTLINED_FUNCTION_49_2();
    v5 = sub_26B1B34BC();
    OUTLINED_FUNCTION_24_4(&type metadata for SQLValueError, v5);
    *v6 = v7;
    v6[1] = v8;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLNull.bind(to:index:)(Swift::OpaquePointer to, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (index <= 0x7FFFFFFF)
  {
    sqlite3_bind_null(to._rawValue, index);
    return;
  }

  __break(1u);
}

uint64_t Bool.debugSQL.getter@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 48;
  if (result)
  {
    v2 = 49;
  }

  *a2 = v2;
  a2[1] = 0xE100000000000000;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Bool.init(statement:index:)(Swift::OpaquePointer statement, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (index > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
    return statement._rawValue;
  }

  LOBYTE(statement._rawValue) = sqlite3_column_int(statement._rawValue, index) != 0;
  return statement._rawValue;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Bool.bind(to:index:)(Swift::OpaquePointer to, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (index <= 0x7FFFFFFF)
  {
    sqlite3_bind_int(to._rawValue, index, v2 & 1);
    return;
  }

  __break(1u);
}

uint64_t sub_26B1F0518@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26B1B33A4(*a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_26B1F054C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B1B33A4(*v1);
  *a1 = result & 1;
  return result;
}

BOOL sub_26B1F05A0@<W0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, _BYTE *a3@<X8>)
{
  result = Bool.init(statement:index:)(a1, a2);
  if (!v5)
  {
    *a3 = result;
  }

  return result;
}

void sub_26B1F0680(void *a1@<X8>)
{
  nullsub_1();
  if (!v1)
  {
    *a1 = v3;
  }
}

sqlite3_stmt *sub_26B1F06F8(sqlite3_stmt *result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_column_int64(result, a2);
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_26B1F0740(sqlite3_stmt *result, uint64_t a2, sqlite3_int64 a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_int64(result, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1F0810@<X0>(uint64_t *a3@<X8>)
{
  result = sub_26B213B90();
  *a3 = result;
  a3[1] = v5;
  return result;
}

sqlite3_int64 sub_26B1F0850(sqlite3_value *a1)
{
  result = sqlite3_value_int64(a1);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

sqlite3_int64 sub_26B1F0880(sqlite3_int64 result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sqlite3_column_int64(result, a2);
  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

sqlite3_stmt *sub_26B1F08D0(sqlite3_stmt *result, uint64_t a2, sqlite3_int64 a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    return sqlite3_bind_int64(result, a2, a3);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_26B1F0920(sqlite3_context *a1, sqlite3_int64 a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    sqlite3_result_int64(a1, a2);
  }
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Double.init(statement:index:)(Swift::OpaquePointer statement, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (index <= 0x7FFFFFFF)
  {
    return sqlite3_column_double(statement._rawValue, index);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Double.bind(to:index:)(Swift::OpaquePointer to, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (index <= 0x7FFFFFFF)
  {
    sqlite3_bind_double(to._rawValue, index, v2);
    return;
  }

  __break(1u);
}

void sub_26B1F0A84(void *a1@<X8>)
{
  nullsub_1();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_26B1F0B04(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, double *a3@<X8>)
{
  v4 = Double.init(statement:index:)(a1, a2);
  if (!v5)
  {
    *a3 = v4;
  }
}

Swift::Float __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Float.init(statement:index:)(Swift::OpaquePointer statement, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (index <= 0x7FFFFFFF)
  {
    return sqlite3_column_double(statement._rawValue, index);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Float.bind(to:index:)(Swift::OpaquePointer to, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (index <= 0x7FFFFFFF)
  {
    sqlite3_bind_double(to._rawValue, index, v2);
    return;
  }

  __break(1u);
}

void sub_26B1F0C88(_DWORD *a1@<X8>)
{
  nullsub_1();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_26B1F0D08(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, float *a3@<X8>)
{
  v4 = Float.init(statement:index:)(a1, a2);
  if (!v5)
  {
    *a3 = v4;
  }
}

void String.debugSQL.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x26D670040](a1, a2);
  v2 = MEMORY[0x26D670040](39, 0xE100000000000000);
  OUTLINED_FUNCTION_53_1(v2, v3, v4, v5, v6, v7, v8, v9, 39, 0xE100000000000000);
}

uint64_t sub_26B1F0DA8(uint64_t a1)
{
  if (a1)
  {
    result = sub_26B212A40();
    if (v2)
    {
      return result;
    }

    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD00000000000001ALL, 0x800000026B220130);
    sub_26B2138F0();
    v4 = v8;
    v3 = v9;
    v5 = sub_26B1B34BC();
    OUTLINED_FUNCTION_24_4(&type metadata for SQLValueError, v5);
  }

  else
  {
    v3 = 0x800000026B220100;
    v7 = sub_26B1B34BC();
    OUTLINED_FUNCTION_24_4(&type metadata for SQLValueError, v7);
    v4 = 0xD00000000000002DLL;
  }

  *v6 = v4;
  v6[1] = v3;
  return swift_willThrow();
}

void sub_26B1F0EA8(void *a1@<X8>)
{
  nullsub_1();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_26B1F0EDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B1EFFA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.init(statement:index:)(Swift::OpaquePointer statement, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = index;
  if (index > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  rawValue = statement._rawValue;
  v4 = sqlite3_column_text(statement._rawValue, index);
  sqlite3_column_bytes(rawValue, v2);
  statement._rawValue = sub_26B1F0DA8(v4);
LABEL_6:
  result._object = index;
  result._countAndFlagsBits = statement._rawValue;
  return result;
}

uint64_t sub_26B1F0FB4@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, Swift::String *a3@<X8>)
{
  v5 = String.init(statement:index:)(a1, a2);
  result = v5._countAndFlagsBits;
  if (!v6)
  {
    *a3 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.bind(to:index:)(Swift::OpaquePointer to, Swift::Int index)
{
  v3 = v2;
  sub_26B212AD0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  sub_26B212AC0();
  sub_26B14FCC8();
  v7 = sub_26B2134C0();
  v8 = OUTLINED_FUNCTION_31_3();
  v9(v8);
  if (v7)
  {
    if (index < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (index <= 0x7FFFFFFF)
    {
      v3 = *(v7 + 16);
      if (v3)
      {
        if (qword_2803E6AA8 == -1)
        {
LABEL_6:
          sqlite3_bind_text64(to._rawValue, index, (v7 + 32), v3 - 1, qword_2803F29B0, 1u);

          OUTLINED_FUNCTION_46_3();
          return;
        }

LABEL_10:
        OUTLINED_FUNCTION_2_35(&qword_2803E6AA8);
        goto LABEL_6;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  __break(1u);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.init(functionArgument:)(Swift::OpaquePointer functionArgument)
{
  v1 = sub_26B1F1184(functionArgument._rawValue);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_26B1F1184(sqlite3_value *a1)
{
  v2 = sqlite3_value_text(a1);
  sqlite3_value_bytes(a1);
  return sub_26B1F0DA8(v2);
}

uint64_t sub_26B1F11F8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.result(for:)(Swift::OpaquePointer a1)
{
  v2 = sub_26B212AD0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  sub_26B212AC0();
  sub_26B14FCC8();
  v9 = sub_26B2134C0();
  (*(v4 + 8))(v8, v2);
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      if (qword_2803E6AA8 == -1)
      {
LABEL_4:
        sqlite3_result_text64(a1._rawValue, (v9 + 32), v10 - 1, qword_2803F29B0, 1u);

        OUTLINED_FUNCTION_46_3();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_2_35(&qword_2803E6AA8);
    goto LABEL_4;
  }

  __break(1u);
}

void Optional<A>.debugSQL.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v14 = OUTLINED_FUNCTION_9_22(v13);
  v15(v14);
  OUTLINED_FUNCTION_48_4();
  if (v16)
  {
    OUTLINED_FUNCTION_36_5();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_45_2();
    v18(v17);
    (*(a2 + 16))(v21, v5, a2);
    (*(v7 + 8))(v11, v5);
    v20 = v21[0];
    v19 = v21[1];
  }

  *a3 = v20;
  a3[1] = v19;
}

{
  v6 = *(a1 + 16);
  OUTLINED_FUNCTION_9_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v15 = OUTLINED_FUNCTION_9_22(v14);
  v16(v15);
  OUTLINED_FUNCTION_48_4();
  if (v17)
  {
    OUTLINED_FUNCTION_36_5();
  }

  else
  {
    (*(v8 + 32))(v12, v3, v6);
    (*(*(a2 + 8) + 8))(v20, v6);
    (*(v8 + 8))(v12, v6);
    v19 = v20[0];
    v18 = v20[1];
  }

  *a3 = v19;
  a3[1] = v18;
}

{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v14 = OUTLINED_FUNCTION_9_22(v13);
  v15(v14);
  OUTLINED_FUNCTION_48_4();
  if (v16)
  {
    OUTLINED_FUNCTION_36_5();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_45_2();
    v18(v17);
    (*(a2 + 8))(v21, v5, a2);
    (*(v7 + 8))(v11, v5);
    v20 = v21[0];
    v19 = v21[1];
  }

  *a3 = v20;
  a3[1] = v19;
}

void Optional<A>.bind(to:index:)()
{
  OUTLINED_FUNCTION_11_6();
  v22 = v0;
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_29();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_8();
  v10 = v8 - v9;
  v12 = *(v11 + 16);
  OUTLINED_FUNCTION_29();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23_8();
  v18 = v16 - v17;
  (*(v6 + 16))(v10, v19);
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) != 1)
  {
    (*(v14 + 32))(v18, v10, v12);
    (*(v22 + 8))(v4, v2, v12);
    (*(v14 + 8))(v18, v12);
    goto LABEL_6;
  }

  v20 = OUTLINED_FUNCTION_31_3();
  v21(v20);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    sqlite3_bind_null(v4, v2);
LABEL_6:
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_10_2();
    return;
  }

  __break(1u);
}

void Optional<A>.init(statement:index:)()
{
  OUTLINED_FUNCTION_11_6();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_26B2133E0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_13();
  if (v7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (sqlite3_column_type(v9, v7) == 5)
  {
    OUTLINED_FUNCTION_14_17();
  }

  else
  {
    (*(v3 + 8))(v9, v7, v5, v3);
    if (!v0)
    {
      OUTLINED_FUNCTION_26_13(v1);
      v11 = OUTLINED_FUNCTION_34_6();
      v12(v11);
    }
  }

  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_10_2();
}

void Optional<A>.init(nativeValue:)()
{
  OUTLINED_FUNCTION_11_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v35 = v7;
  sub_26B2133E0();
  OUTLINED_FUNCTION_0();
  v31 = v9;
  v32 = v8;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v10);
  v34 = &v30 - v11;
  v33 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_26B2133E0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  OUTLINED_FUNCTION_9_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v30 - v26;
  (*(v15 + 16))(v18, v6, v13);
  if (__swift_getEnumTagSinglePayload(v18, 1, AssociatedTypeWitness) == 1)
  {
    v28 = *(v15 + 8);
    v28(v6, v13);
    v28(v18, v13);
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v4);
  }

  else
  {
    (*(v20 + 32))(v27, v18, AssociatedTypeWitness);
    (*(v20 + 16))(v24, v27, AssociatedTypeWitness);
    v29 = v34;
    (*(v33 + 56))(v24, v4);
    (*(v15 + 8))(v6, v13);
    (*(v20 + 8))(v27, AssociatedTypeWitness);
    if (!v0)
    {
      OUTLINED_FUNCTION_26_13(v29);
      (*(v31 + 32))(v35, v29, v32);
    }
  }

  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_10_2();
}

void Optional<A>.nativeValue.getter()
{
  OUTLINED_FUNCTION_11_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v14 = *(v13 + 16);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  (*(v8 + 16))(v12, v16, v4);
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
  {
    (*(v8 + 8))(v12, v4);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v18 = 1;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v6, v18, 1, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v19 = OUTLINED_FUNCTION_31_3();
  v20(v19);
  (*(v2 + 64))(v14, v2);
  v21 = OUTLINED_FUNCTION_40_4();
  v22(v21);
  if (!v0)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v18 = 0;
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_10_2();
}

void Optional<A>.init(raw:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_41_5(a1, a2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_13();
  if (sqlite3_value_type(v4) == 5)
  {
    OUTLINED_FUNCTION_14_17();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_44_4();
    v7(v6);
    if (!v2)
    {
      OUTLINED_FUNCTION_26_13(v3);
      v8 = OUTLINED_FUNCTION_34_6();
      v9(v8);
    }
  }

  OUTLINED_FUNCTION_46_3();
}

void Optional<A>.init(functionArgument:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_41_5(a1, a2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_13();
  if (sqlite3_value_type(v4) == 5)
  {
    OUTLINED_FUNCTION_14_17();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_44_4();
    v7(v6);
    if (!v2)
    {
      OUTLINED_FUNCTION_26_13(v3);
      v8 = OUTLINED_FUNCTION_34_6();
      v9(v8);
    }
  }

  OUTLINED_FUNCTION_46_3();
}

void Optional<A>.init(functionArgument:)(sqlite3_value *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_26B2133E0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v15 - v13;
  if (sqlite3_value_type(a1) == 5)
  {
    OUTLINED_FUNCTION_14_17();
  }

  else
  {
    (*(*(a3 + 8) + 16))(a1, a2);
    if (!v4)
    {
      OUTLINED_FUNCTION_26_13(v14);
      (*(v11 + 32))(a4, v14, v9);
    }
  }

  OUTLINED_FUNCTION_46_3();
}

uint64_t Optional<A>.init(functionArgument:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 + 8) + 16))();
  if (v3)
  {

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, a1);
}

void Optional<A>.result(for:)()
{
  OUTLINED_FUNCTION_11_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_29();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_8();
  v11 = v9 - v10;
  v13 = *(v12 + 16);
  OUTLINED_FUNCTION_29();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_23_8();
  v19 = v17 - v18;
  (*(v7 + 16))(v11, v20, v3);
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) == 1)
  {
    (*(v7 + 8))(v11, v3);
    sqlite3_result_null(v5);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_31_3();
    v22(v21);
    (*(v1 + 16))(v5, v13, v1);
    (*(v15 + 8))(v19, v13);
  }

  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_10_2();
}

void RawRepresentable<>.init(raw:)()
{
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_20_10(v2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_28_9();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_38_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_39_5();
  v6 = OUTLINED_FUNCTION_30_10();
  v7(v6);
  if (!v0)
  {
    v8 = OUTLINED_FUNCTION_5_23();
    v9(v8);
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_15_11(v1);
    if (v10)
    {
      v11 = OUTLINED_FUNCTION_19_11();
      v12(v11);
      OUTLINED_FUNCTION_8_25();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_7_20();
      v13 = OUTLINED_FUNCTION_50_4();
      MEMORY[0x26D670040](v13);

      OUTLINED_FUNCTION_12_18();
      sub_26B213DF0();
      v14 = sub_26B1B34BC();
      v15 = OUTLINED_FUNCTION_24_4(&type metadata for SQLValueError, v14);
      OUTLINED_FUNCTION_29_9(v15, v16);
      v19 = OUTLINED_FUNCTION_4_29();
    }

    else
    {
      v17 = OUTLINED_FUNCTION_4_29();
      v18(v17);
      OUTLINED_FUNCTION_11_16();
      v19 = OUTLINED_FUNCTION_37_5();
    }

    v20(v19);
  }

  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_10_2();
}

void sub_26B1F2868()
{
  OUTLINED_FUNCTION_11_6();
  v4 = v3;
  OUTLINED_FUNCTION_20_10(v5);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_21_9();
  v7 = OUTLINED_FUNCTION_28_9();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_38_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39_5();
  (*(*(v4 + 8) + 16))(v0, v7);
  if (!v1)
  {
    v10 = OUTLINED_FUNCTION_5_23();
    v11(v10);
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_15_11(v2);
    if (v12)
    {
      v13 = OUTLINED_FUNCTION_19_11();
      v14(v13);
      OUTLINED_FUNCTION_8_25();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_7_20();
      v15 = OUTLINED_FUNCTION_50_4();
      MEMORY[0x26D670040](v15);

      OUTLINED_FUNCTION_12_18();
      sub_26B213DF0();
      v16 = sub_26B1B34BC();
      v17 = OUTLINED_FUNCTION_24_4(&type metadata for SQLValueError, v16);
      OUTLINED_FUNCTION_29_9(v17, v18);
      v21 = OUTLINED_FUNCTION_4_29();
    }

    else
    {
      v19 = OUTLINED_FUNCTION_4_29();
      v20(v19);
      OUTLINED_FUNCTION_11_16();
      v21 = OUTLINED_FUNCTION_37_5();
    }

    v22(v21);
  }

  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_10_2();
}

void Data.debugSQL.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_26B211FD0();
  MEMORY[0x26D670040](v2);

  OUTLINED_FUNCTION_53_1(v3, v4, v5, v6, v7, v8, v9, v10, 0x28343665736162, 0xE700000000000000);
}

uint64_t sub_26B1F2CF4(uint64_t a1, unsigned int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  if (a1)
  {
    return MEMORY[0x26D66F430](a1, a2);
  }

  v3 = sub_26B1B34BC();
  OUTLINED_FUNCTION_24_4(&type metadata for SQLValueError, v3);
  *v4 = 0xD00000000000002BLL;
  v4[1] = 0x800000026B220E90;
  return swift_willThrow();
}

uint64_t sub_26B1F2E08(sqlite3_value *a1)
{
  v2 = sqlite3_value_blob(a1);
  v3 = sqlite3_value_bytes(a1);
  return sub_26B1F2CF4(v2, v3);
}

uint64_t sub_26B1F2E80@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Data.result(for:)(Swift::OpaquePointer a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = v2;
  v5 = v1;
  switch(v2 >> 62)
  {
    case 1uLL:
      if (v1 >> 32 < v1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 = sub_26B211D10();
      if (!v11)
      {
        goto LABEL_14;
      }

      v15 = sub_26B211D40();
      if (__OFSUB__(v5, v15))
      {
LABEL_26:
        __break(1u);
      }

      v11 += v5 - v15;
LABEL_14:
      v14 = (v5 >> 32) - v5;
LABEL_15:
      v16 = sub_26B211D30();
      if (v16 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = v16;
      }

      v18 = v17 + v11;
      if (v11)
      {
        LODWORD(v7) = v18;
      }

      else
      {
        LODWORD(v7) = 0;
      }

      v8 = v11;
LABEL_22:
      sub_26B1F30C4(v8, v7, a1._rawValue, v5, v4);
      v19 = OUTLINED_FUNCTION_20_5();
      sub_26B14FF4C(v19, v20);
      if (v3)
      {

        __break(1u);
      }

      return;
    case 2uLL:
      v9 = *(v1 + 16);
      v10 = *(v1 + 24);

      v11 = sub_26B211D10();
      if (!v11)
      {
        goto LABEL_6;
      }

      v12 = sub_26B211D40();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_25;
      }

      v11 += v9 - v12;
LABEL_6:
      v13 = __OFSUB__(v10, v9);
      v14 = v10 - v9;
      if (!v13)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_9:
      memset(v21, 0, 14);
      v8 = v21;
      v7 = v21;
      goto LABEL_22;
    case 3uLL:
      goto LABEL_9;
    default:
      v21[0] = v1;
      LOWORD(v21[1]) = v2;
      BYTE2(v21[1]) = BYTE2(v2);
      BYTE3(v21[1]) = BYTE3(v2);
      BYTE4(v21[1]) = BYTE4(v2);
      BYTE5(v21[1]) = BYTE5(v2);
      v7 = v21 + BYTE6(v2);
      v8 = v21;
      goto LABEL_22;
  }
}

void sub_26B1F30C4(void *a1, int a2, sqlite3_context *a3, uint64_t a4, unint64_t a5)
{
  v7 = 0;
  switch(a5 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        v7 = HIDWORD(a4) - a4;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v9 = *(a4 + 16);
      v8 = *(a4 + 24);
      v7 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
LABEL_6:
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
LABEL_7:
          if (qword_2803E6AA8 == -1)
          {
LABEL_8:
            sqlite3_result_blob64(a3, a1, v7, qword_2803F29B0);
            return;
          }
        }

        swift_once();
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
      return;
    case 3uLL:
      goto LABEL_7;
    default:
      v7 = BYTE6(a5);
      goto LABEL_7;
  }
}

sqlite3_stmt *Data.init(statement:index:)(sqlite3_stmt *result, uint64_t iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v2 = iCol;
    if (iCol <= 0x7FFFFFFF)
    {
      v3 = result;
      v4 = sqlite3_column_blob(result, iCol);
      v5 = sqlite3_column_bytes(v3, v2);
      return sub_26B1F2CF4(v4, v5);
    }
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_26B1F3234@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X8>)
{
  result = Data.init(statement:index:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Data.bind(to:index:)(Swift::OpaquePointer to, Swift::Int index)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = v2;
  switch(v3 >> 62)
  {
    case 1uLL:
      if (v2 > v2 >> 32)
      {
        goto LABEL_36;
      }

      v13 = sub_26B211D10();
      if (!v13)
      {
        goto LABEL_26;
      }

      v23 = sub_26B211D40();
      if (__OFSUB__(v4, v23))
      {
        goto LABEL_46;
      }

      v13 += v4 - v23;
LABEL_26:
      sub_26B211D30();
      if (index < 0xFFFFFFFF80000000)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_54_1();
      if (!(v8 ^ v9 | v7))
      {
        goto LABEL_43;
      }

      v24 = OUTLINED_FUNCTION_6_13();
      v16 = MEMORY[0x26D66F450](v24);
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_44;
    case 2uLL:
      goto LABEL_7;
    case 3uLL:
      goto LABEL_15;
    default:
      v27[0] = v2;
      LOWORD(v27[1]) = v3;
      BYTE2(v27[1]) = BYTE2(v3);
      BYTE3(v27[1]) = BYTE3(v3);
      BYTE4(v27[1]) = BYTE4(v3);
      BYTE5(v27[1]) = BYTE5(v3);
      if (index < 0xFFFFFFFF80000000)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_54_1();
      if (!(v8 ^ v9 | v7))
      {
        goto LABEL_39;
      }

      v10 = OUTLINED_FUNCTION_6_13();
      v11 = MEMORY[0x26D66F450](v10);
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_7:
      v12 = *(v4 + 16);

      v13 = sub_26B211D10();
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = sub_26B211D40();
      if (__OFSUB__(v12, v14))
      {
        goto LABEL_45;
      }

      v13 += v12 - v14;
LABEL_10:
      sub_26B211D30();
      if (index < 0xFFFFFFFF80000000)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_54_1();
      if (!(v8 ^ v9 | v7))
      {
        goto LABEL_40;
      }

      v15 = OUTLINED_FUNCTION_6_13();
      v16 = MEMORY[0x26D66F450](v15);
      if (v16 < 0)
      {
        __break(1u);
LABEL_15:
        memset(v27, 0, 14);
        if (index < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
        }

        OUTLINED_FUNCTION_54_1();
        if (!(v8 ^ v9 | v7))
        {
          goto LABEL_38;
        }

        v17 = OUTLINED_FUNCTION_6_13();
        v11 = MEMORY[0x26D66F450](v17);
        if (v11 < 0)
        {
          goto LABEL_42;
        }

LABEL_19:
        v18 = v11;
        if (qword_2803E6AA8 != -1)
        {
          OUTLINED_FUNCTION_2_35(&qword_2803E6AA8);
        }

        v19 = qword_2803F29B0;
        v20 = v27;
        rawValue = to._rawValue;
        v22 = index;
      }

      else
      {
LABEL_30:
        v18 = v16;
        if (qword_2803E6AA8 != -1)
        {
          OUTLINED_FUNCTION_2_35(&qword_2803E6AA8);
        }

        v19 = qword_2803F29B0;
        rawValue = to._rawValue;
        v22 = index;
        v20 = v13;
      }

      sqlite3_bind_blob64(rawValue, v22, v20, v18, v19);
      v25 = OUTLINED_FUNCTION_6_13();
      sub_26B14FF4C(v25, v26);
      return;
  }
}

void *sub_26B1F3550(void *(*a1)(unsigned int *__return_ptr, uint64_t *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v9 = WORD2(a4);
  v8 = a4;
  result = a1(&v6, &v7, &v7 + BYTE6(a4));
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_26B1F35E0(uint64_t (*a1)(uint64_t *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v7 = WORD2(a4);
  v6 = a4;
  return a1(&v5, &v5 + BYTE6(a4));
}

unint64_t sub_26B1F3664()
{
  result = qword_2803E85A0;
  if (!qword_2803E85A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E85A0);
  }

  return result;
}

unint64_t sub_26B1F36BC(uint64_t a1)
{
  result = sub_26B1F36E4();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26B1F36E4()
{
  result = qword_2803E85A8;
  if (!qword_2803E85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E85A8);
  }

  return result;
}

unint64_t sub_26B1F373C()
{
  result = qword_2803E85B0;
  if (!qword_2803E85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E85B0);
  }

  return result;
}

uint64_t sub_26B1F385C(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_26B1F3940(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_26B1F3A20(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

unint64_t sub_26B1F3ADC(uint64_t a1)
{
  result = sub_26B1F3B04();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26B1F3B04()
{
  result = qword_2803E85B8[0];
  if (!qword_2803E85B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803E85B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLDataType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLNull(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.init(raw:)(Swift::OpaquePointer raw)
{
  v3 = String.init(functionArgument:)(raw);
  object = v3._object;
  countAndFlagsBits = v3._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

void OUTLINED_FUNCTION_7_20()
{

  JUMPOUT(0x26D670040);
}

uint64_t OUTLINED_FUNCTION_14_17()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_18_13()
{

  return sub_26B212E00();
}

uint64_t OUTLINED_FUNCTION_26_13(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_29_9(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_41_5(uint64_t a1, uint64_t a2)
{

  return sub_26B2133E0();
}

void OUTLINED_FUNCTION_43_3()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

void OUTLINED_FUNCTION_49_2()
{

  JUMPOUT(0x26D670040);
}

uint64_t sub_26B1F42C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X1>, uint64_t a5@<X3>)
{
  *(a3 + *(type metadata accessor for AsyncNullSeparatedSequence.AsyncIterator(0, a4, a2, a5) + 36)) = MEMORY[0x277D84F90];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 32);

  return v8(a3, a1, AssociatedTypeWitness);
}

uint64_t AsyncNullSeparatedSequence.AsyncIterator.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(a1 + 24);
  v2[5] = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  v2[6] = v3;
  *v3 = v2;
  OUTLINED_FUNCTION_0_39(v3);

  return MEMORY[0x282200308](v2 + 8);
}

uint64_t sub_26B1F4460()
{
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_22();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_26B1F4764;
  }

  else
  {
    v7 = sub_26B1F456C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26B1F456C()
{
  v1 = *(v0 + 64);
  if (*(v0 + 65))
  {
    v2 = *(v0 + 24);
    v3 = *(*(v0 + 16) + 36);
    if (*(*(v2 + v3) + 16))
    {

      v4 = MEMORY[0x277D84F90];
      *(v2 + v3) = MEMORY[0x277D84F90];
    }

    else
    {
      v4 = 0;
    }

LABEL_14:
    v9 = *(v0 + 8);

    return v9(v4);
  }

  v5 = *(v0 + 24);
  v6 = *(*(v0 + 16) + 36);
  v4 = *(v5 + v6);
  if (!*(v0 + 64))
  {
    *(v5 + v6) = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B14D4CC();
    v4 = v10;
  }

  v7 = *(v4 + 16);
  if (v7 >= *(v4 + 24) >> 1)
  {
    sub_26B14D4CC();
    v4 = v11;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + v7 + 32) = v1;
  *(v5 + v6) = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_0_39(v8);

  return MEMORY[0x282200308](v0 + 64);
}

uint64_t sub_26B1F477C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26B1F4814;

  return AsyncNullSeparatedSequence.AsyncIterator.next()(a2);
}

uint64_t sub_26B1F4814(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_22();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_22();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_26B1F491C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  v5[4] = *(AssociatedTypeWitness - 8);
  v5[5] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[6] = v8;
  *v8 = v5;
  v8[1] = sub_26B1F4A6C;

  return MEMORY[0x282200320](a1);
}

uint64_t sub_26B1F4A6C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_22();
  *v5 = v4;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v6 = v4[1];

  return v6();
}

uint64_t AsyncNullSeparatedSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v12 = &v15 - v11;
  (*(v5 + 16))(v8, v2, v4);
  sub_26B213150();
  return sub_26B1F42C8(v12, v9, a2, v4, v13);
}

uint64_t sub_26B1F4CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AsyncNullSeparatedSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t AsyncSequence<>.nullSeparated.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t sub_26B1F4E1C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_26B1F4ED8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
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
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_26B1F5014(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

void sub_26B1F5230(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_26B18D1CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B1F52C8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(result - 8) + 84);
  }

  v8 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v16 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v6, result);
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = a2 - v7 + 1;
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

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *a1;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26B1F5458(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v12 = a3 - v9 + 1;
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

  if (v9 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v8 < 0x7FFFFFFF)
          {
            v18 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *v18 = v19;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v8, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v10 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t Box.value.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_26();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_4_30();
  swift_beginAccess();
  OUTLINED_FUNCTION_3_26();
  OUTLINED_FUNCTION_16();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*Box.value.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_1_33();
  OUTLINED_FUNCTION_9_23();
  return j_j__swift_endAccess_0;
}

uint64_t Box.init(value:)()
{
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_16();
  (*(v1 + 32))(v0 + v2);
  return v0;
}

uint64_t Box.__allocating_init<A>(from:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Box.init<A>(from:)(a1, a2);
  return v4;
}

char *Box.init<A>(from:)(void *a1, uint64_t a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_0_40();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_9_0();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16[-v12 - 8];
  sub_26B16BCF8(v11, v16);
  sub_26B2131B0();
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v3)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v9 + 32))(v4 + *(*v4 + 88), v13, v7);
  }

  return v4;
}

uint64_t sub_26B1F59D8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_26();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  OUTLINED_FUNCTION_3_26();
  OUTLINED_FUNCTION_16();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_26B1F5A68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = Box.wrappedValue.read();
  (*(*(v4 - 8) + 16))(a3);
  return (v5)(&v7, 0);
}

uint64_t (*Box.wrappedValue.read())(uint64_t a1)
{
  OUTLINED_FUNCTION_1_33();
  swift_beginAccess();
  return j_j__swift_endAccess_0;
}

uint64_t sub_26B1F5B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = Box.wrappedValue.modify();
  (*(*(v5 - 8) + 24))(v7, a1, v5);
  return (v6)(&v9, 0);
}

uint64_t (*Box.wrappedValue.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_1_33();
  OUTLINED_FUNCTION_9_23();
  return j__swift_endAccess_0;
}

uint64_t Box.wrappedValue.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_26();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_4_30();
  swift_beginAccess();
  OUTLINED_FUNCTION_3_26();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_16();
  v8 = v7;
  (*(v7 + 24))(v1 + v4, a1, v6);
  swift_endAccess();
  return (*(v8 + 8))(a1, v6);
}

uint64_t Box.deinit()
{
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_16();
  (*(v1 + 8))(v0 + v2);
  return v0;
}

uint64_t Box<A>.encode(to:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_40();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_29();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v11 = *(v10 + 88);
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  (*(v6 + 16))(v9, v2 + v11, v4);
  sub_26B212970();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_26B1F5EF0@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = Box.__allocating_init<A>(from:)(a1, *(a2 - 8));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t Box<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_40();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_29();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v11 = *(v10 + 88);
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  (*(v6 + 16))(v9, v2 + v11, v4);
  sub_26B2129A0();
  return (*(v6 + 8))(v9, v4);
}

uint64_t Box<A>.hashValue.getter(uint64_t a1)
{
  sub_26B214030();
  Box<A>.hash(into:)(v3, a1);
  return sub_26B214070();
}

uint64_t sub_26B1F60DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  sub_26B214030();
  Box<A>.hash(into:)(v5, v3);
  return sub_26B214070();
}

uint64_t static Box<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 80);
  OUTLINED_FUNCTION_9_0();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22[-v14];
  v16 = *(*v13 + 88);
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  v17 = *(v8 + 16);
  v17(v15, a1 + v16, v6);
  v18 = *(*a2 + 88);
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  v17(v12, a2 + v18, v6);
  v19 = sub_26B212A20();
  v20 = *(v8 + 8);
  v20(v12, v6);
  v20(v15, v6);
  return v19 & 1;
}

uint64_t *ActorBox.init(value:)(uint64_t a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 96), a1);
  return v1;
}

uint64_t ActorBox.withValue<A>(_:)(void (*a1)(uint64_t))
{
  v3 = *(*v1 + 96);
  OUTLINED_FUNCTION_4_30();
  swift_beginAccess();
  a1(v1 + v3);
  return swift_endAccess();
}

uint64_t ActorBox.deinit()
{
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_16();
  (*(v1 + 8))(v0 + v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ActorBox.__deallocating_deinit()
{
  ActorBox.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26B1F64E0(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t MutexBox.init(_:)()
{
  OUTLINED_FUNCTION_1_33();
  v3 = *(v2 + 80);
  v4 = sub_26B212130();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - v7;
  *(&v13 - v7) = 0;
  v9 = *(v6 + 36);
  v10 = sub_26B212140();
  bzero(&v8[v9], *(*(v10 - 8) + 64));
  OUTLINED_FUNCTION_16();
  (*(v11 + 32))(&v8[v9], v0, v3);
  memcpy((v1 + *(*v1 + 88)), v8, v5);
  return v1;
}

void _s15SonicFoundation8MutexBoxC8withLockyqd__qd__xzYuqd_0_YKYTXEqd_0_YKs5ErrorRd_0_Ri_d__r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a6;
  v22 = a5;
  v21 = a3;
  v9 = *v6;
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v6 + *(v9 + 88));
  os_unfair_lock_lock(v15);
  v16 = sub_26B212130();
  v17 = v20;
  a1(v15 + *(v16 + 28), v14);
  if (v17)
  {
    (*(v11 + 32))(v19, v14, a4);
  }

  OUTLINED_FUNCTION_8_26();
}

void _s15SonicFoundation8MutexBoxC19withLockIfAvailableyqd__Sgqd__xzYuqd_0_YKYTXEqd_0_YKs5ErrorRd_0_Ri_d__r0_lF(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v19[0] = a5;
  v19[1] = a2;
  v20 = a1;
  OUTLINED_FUNCTION_29();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v6 + *(v16 + 88));
  if (os_unfair_lock_trylock(v17))
  {
    v18 = sub_26B212130();
    v20(v17 + *(v18 + 28), v15);
    if (v7)
    {
      (*(v12 + 32))(v19[0], v15, a4);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(a6, 0, 1, a3);
    }

    os_unfair_lock_unlock(v17);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(a6, 1, 1, a3);
  }
}

uint64_t MutexBox.deinit()
{
  OUTLINED_FUNCTION_0_40();
  sub_26B212130();
  v1 = sub_26B212140();
  sub_26B1F6A38(v1);
  return v0;
}

uint64_t sub_26B1F69DC(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_26B1F6AE4(uint64_t a1)
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

uint64_t sub_26B1F6BC8(uint64_t a1)
{
  result = sub_26B212130();
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

uint64_t OUTLINED_FUNCTION_9_23()
{

  return swift_beginAccess();
}

uint64_t sub_26B1F6D04(unint64_t a1)
{
  v2 = *v1;
  v3 = *v1 >> 62;
  if (!v3)
  {
    goto LABEL_4;
  }

  if (v3 == 1)
  {
    v2 &= 0x3FFFFFFFFFFFFFFFuLL;
LABEL_4:
    v2 = *(v2 + 16);
  }

  v6 = a1;
  v7 = v2;
  sub_26B1F718C(v2);
  v4 = static Device.Family.== infix(_:_:)(&v7, &v6);
  sub_26B1F71A8(v2);
  return v4 & 1;
}

void sub_26B1F6DA0(unint64_t *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if ((deviceClassNumber - 1) > 0xA)
    {
      v5 = 0x8000000000000038;
    }

    else
    {
      v5 = qword_26B21DEA8[deviceClassNumber - 1];
    }

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

id sub_26B1F6E20@<X0>(uint64_t *a1@<X8>)
{
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  isSimulator = MobileGestalt_get_isSimulator();

  if (!isSimulator)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v8 = result;
      isVirtualDevice = MobileGestalt_get_isVirtualDevice();

      if (isVirtualDevice)
      {
        v7 = swift_allocObject();
        if (qword_2803E6AC0 != -1)
        {
          v10 = v7;
          swift_once();
          v7 = v10;
        }

        v6 = qword_2803F2A88;
        *(v7 + 16) = qword_2803F2A88;
      }

      else
      {
        if (qword_2803E6AC0 != -1)
        {
          swift_once();
        }

        v7 = qword_2803F2A88;
        v6 = qword_2803F2A88;
      }

      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  v5 = swift_allocObject();
  if (qword_2803E6AC0 != -1)
  {
    swift_once();
  }

  v6 = qword_2803F2A88;
  *(v5 + 16) = qword_2803F2A88;
  v7 = v5 | 0x4000000000000000;
LABEL_14:
  *a1 = v7;

  return sub_26B1F718C(v6);
}

uint64_t static Device.Family.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      v5 = *(v2 + 16);
      v6 = *(v3 + 16);
      goto LABEL_7;
    }

LABEL_25:
    sub_26B1F718C(v3);
    sub_26B1F718C(v2);
    sub_26B1F71A8(v2);
    sub_26B1F71A8(v3);
    v7 = 0;
    return v7 & 1;
  }

  if (v4 == 1)
  {
    if (v3 >> 62 == 1)
    {
      v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_7:
      v15 = v6;
      v16 = v5;
      sub_26B1F718C(v3);
      sub_26B1F718C(v2);
      v7 = static Device.Family.== infix(_:_:)(&v16, &v15);
      sub_26B1F71A8(v2);
      sub_26B1F71A8(v3);
      return v7 & 1;
    }

    goto LABEL_25;
  }

  switch(__ROR8__(v2 ^ 0x8000000000000000, 3))
  {
    case 1:
      OUTLINED_FUNCTION_5_24();
      if (v3 != v12)
      {
        goto LABEL_25;
      }

      sub_26B1F71A8(v2);
      v8 = 0x8000000000000008;
      goto LABEL_24;
    case 2:
      OUTLINED_FUNCTION_5_24();
      v10 = v11 + 8;
      goto LABEL_22;
    case 3:
      if (v3 != 0x8000000000000018)
      {
        goto LABEL_25;
      }

      sub_26B1F71A8(*a1);
      v8 = 0x8000000000000018;
      goto LABEL_24;
    case 4:
      OUTLINED_FUNCTION_5_24();
      v10 = v9 + 24;
      goto LABEL_22;
    case 5:
      if (v3 != 0x8000000000000028)
      {
        goto LABEL_25;
      }

      sub_26B1F71A8(*a1);
      v8 = 0x8000000000000028;
      goto LABEL_24;
    case 6:
      OUTLINED_FUNCTION_5_24();
      v10 = v13 + 40;
LABEL_22:
      if (v3 != v10)
      {
        goto LABEL_25;
      }

      sub_26B1F71A8(v2);
      v8 = v10;
LABEL_24:
      sub_26B1F71A8(v8);
      v7 = 1;
      break;
    case 7:
      if (v3 != 0x8000000000000038)
      {
        goto LABEL_25;
      }

      sub_26B1F71A8(*a1);
      v8 = 0x8000000000000038;
      goto LABEL_24;
    default:
      if (v3 != 0x8000000000000000)
      {
        goto LABEL_25;
      }

      sub_26B1F71A8(*a1);
      v8 = 0x8000000000000000;
      goto LABEL_24;
  }

  return v7 & 1;
}

unint64_t sub_26B1F718C(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_26B1F71A8(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t Device.Family.hash(into:)(uint64_t a1)
{
  v3 = *v1 >> 62;
  if (!v3)
  {
    v4 = 8;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 9;
LABEL_5:
    MEMORY[0x26D671480](v4);
    return Device.Family.hash(into:)(a1);
  }

  switch(__ROR8__(*v1 ^ 0x8000000000000000, 3))
  {
    case 1:
      v6 = 1;
      break;
    case 2:
      v6 = 2;
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    default:
      v6 = 0;
      break;
  }

  return MEMORY[0x26D671480](v6);
}

uint64_t Device.Family.hashValue.getter()
{
  v2[9] = *v0;
  sub_26B214030();
  Device.Family.hash(into:)(v2);
  return sub_26B214070();
}

uint64_t sub_26B1F72FC(uint64_t a1)
{
  v3[9] = *v1;
  sub_26B214030();
  Device.Family.hash(into:)(v3);
  return sub_26B214070();
}

unint64_t Device.family.getter@<X0>(void *a1@<X8>)
{
  if (qword_2803E6AC8 != -1)
  {
    swift_once();
  }

  v2 = qword_2803F2A90;
  *a1 = qword_2803F2A90;

  return sub_26B1F718C(v2);
}

void Device.nvram.getter()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_nVRAMDictionary_obj();

    if (v2)
    {
      v3 = sub_26B2128A0();

      sub_26B1F7568(v3);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_26B1F7568(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_26B1F8984();
    v2 = sub_26B213A40();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  result = sub_26B2128F0();
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    sub_26B1F89E8(*(a1 + 48) + 40 * v11, __src);
    sub_26B15CF98(*(a1 + 56) + 32 * v11, &__src[5]);
    memcpy(__dst, __src, sizeof(__dst));
    swift_dynamicCast();
    sub_26B165E08(&__dst[5], v22);
    sub_26B165E08(v22, v24);
    sub_26B165E08(v24, v25);
    sub_26B165E08(v25, &v23);
    result = sub_26B16E800(v20, v21);
    v12 = result;
    if (v13)
    {
      v14 = (v2[6] + 16 * result);
      *v14 = v20;
      v14[1] = v21;

      v15 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1(v15);
      result = sub_26B165E08(&v23, v15);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v2[6] + 16 * result);
      *v16 = v20;
      v16[1] = v21;
      result = sub_26B165E08(&v23, (v2[7] + 32 * result));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_20;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

id sub_26B1F780C(uint64_t (*a1)(void))
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = a1();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Device.isInternalCarry.getter()
{
  if (os_variant_has_internal_content() && (v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]), (v1 = sub_26B1F84B8(0x6C7070612E6D6F63, 0xEC00000061642E65)) != 0))
  {
    v2 = v1;
    OUTLINED_FUNCTION_3_27();
    v3 = sub_26B212A50();
    v4 = [v2 stringForKey_];

    if (!v4)
    {
      v11 = sub_26B212A50();
      v9 = [v2 stringForKey_];

      if (v9)
      {
        sub_26B212A80();

        sub_26B212AF0();

        v12 = sub_26B14FCC8();
        v19 = OUTLINED_FUNCTION_2_36(v12, MEMORY[0x277D837D0], v13, v14, v15, v16, v17, v18, 0x7972726163);
        if (v19)
        {

          LOBYTE(v9) = 1;
          return v9 & 1;
        }

        LOBYTE(v9) = OUTLINED_FUNCTION_2_36(v19, MEMORY[0x277D837D0], v20, v21, v22, v23, v24, v25, 0x756F62616B6C6177);
      }

      return v9 & 1;
    }

    v5 = sub_26B212A80();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    LOBYTE(v9) = v8 == 0;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

double Device.bootTime.getter()
{
  if (qword_2803E6AD0 != -1)
  {
    OUTLINED_FUNCTION_1_34(&qword_2803E6AD0);
  }

  return sub_26B1F7ACC();
}

double sub_26B1F7ACC()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_26B1F7E38();
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  return result;
}

uint64_t Device.bootUUID.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2803E6AD0 != -1)
  {
    OUTLINED_FUNCTION_1_34(&qword_2803E6AD0);
  }

  return sub_26B1F7B50(a1);
}

uint64_t sub_26B1F7B50@<X0>(uint64_t a1@<X8>)
{
  sub_26B1F8808(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC15SonicFoundation6Sysctl____lazy_storage___bootUUID;
  swift_beginAccess();
  sub_26B1F88BC(v1 + v12, v11);
  v13 = sub_26B2120D0();
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) != 1)
  {
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  sub_26B1F8860(v11);
  OUTLINED_FUNCTION_3_27();
  sub_26B1F7F54();
  if (v14)
  {
    sub_26B2120A0();

    if (__swift_getEnumTagSinglePayload(v9, 1, v13) != 1)
    {
      v15 = *(v13 - 8);
      (*(v15 + 32))(a1, v9, v13);
      (*(v15 + 16))(v6, a1, v13);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v13);
      swift_beginAccess();
      sub_26B1F8920(v6, v1 + v12);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26B1F7DCC()
{
  type metadata accessor for Sysctl(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtC15SonicFoundation6Sysctl____lazy_storage___bootUUID;
  v2 = sub_26B2120D0();
  result = __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  qword_2803F2A98 = v0;
  return result;
}

double sub_26B1F7E38()
{
  v0 = sub_26B1F7EDC(0x6F6F622E6E72656BLL, 0xED0000656D697474);
  if (v1 < 1)
  {
    return 0.0;
  }

  else
  {
    return v1 / 1000000.0 + v0;
  }
}

uint64_t sub_26B1F7EDC(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v4 = 16;
  v5 = 0;
  result = sub_26B1F802C(&v5, a1, a2, &v4);
  if (!v2)
  {
    return v5;
  }

  return result;
}

char *sub_26B1F7F54()
{
  v1 = sub_26B212AD0();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OUTLINED_FUNCTION_6_13();
  v6 = sub_26B1F8138(v4, v5);
  if (!v0)
  {
    v8 = v6;
    v9 = v7;
    sub_26B212AC0();
    v3 = sub_26B212AA0();
    sub_26B14FF4C(v8, v9);
  }

  return v3;
}

uint64_t sub_26B1F802C(void *a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  v8 = sub_26B212B10();
  v9 = sysctlbyname((v8 + 32), a1, a4, 0, 0);

  if (v9 || *a4 != 16)
  {
    sub_26B2136C0();

    MEMORY[0x26D670040](a2, a3);
    sub_26B161D38();
    swift_allocError();
    *v11 = v9;
    *(v11 + 8) = 0xD00000000000001ELL;
    *(v11 + 16) = 0x800000026B2211E0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26B1F8138(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v2 = sub_26B212B10();
  v3 = sysctlbyname((v2 + 32), 0, v14, 0, 0);

  if (v3 || (v8 = v14[0], v14[0] < 1))
  {
    sub_26B2136C0();

    v4 = OUTLINED_FUNCTION_6_13();
    MEMORY[0x26D670040](v4);
    v5 = 0xD00000000000001DLL;
    sub_26B161D38();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = 0xD00000000000001DLL;
    *(v6 + 16) = 0x800000026B2211A0;
    swift_willThrow();
  }

  else
  {
    if (v14[0] >> 60)
    {
      __break(1u);
    }

    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_13();
    v10 = sub_26B212B10();
    v11 = sysctlbyname((v10 + 32), v9, v14, 0, 0);

    if (v11)
    {
      sub_26B2136C0();

      v12 = OUTLINED_FUNCTION_6_13();
      MEMORY[0x26D670040](v12);
      v5 = 0xD000000000000018;
      sub_26B161D38();
      swift_allocError();
      *v13 = v11;
      *(v13 + 8) = 0xD000000000000018;
      *(v13 + 16) = 0x800000026B2211C0;
      swift_willThrow();
    }

    else
    {
      v5 = sub_26B1F837C(v9, v8);
    }

    MEMORY[0x26D6723F0](v9, -1, -1);
  }

  return v5;
}

uint64_t sub_26B1F837C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x1000000000000000) >> 61 == 7)
    {
      v3 = 8 * a2;
      if (8 * a2)
      {
        if (v3 <= 14)
        {
          return sub_26B211F00();
        }

        else
        {
          sub_26B211D50();
          swift_allocObject();
          sub_26B211D00();
          if (v3 >= 0x7FFFFFFF)
          {
            sub_26B211F60();
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 24) = v3;
          }

          else
          {
            return a2 << 35;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26B1F8454()
{
  sub_26B1F8860(v0 + OBJC_IVAR____TtC15SonicFoundation6Sysctl____lazy_storage___bootUUID);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_26B1F84B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_26B212A50();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_26B1F8520()
{
  result = qword_2803E87C0;
  if (!qword_2803E87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E87C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Device(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_15SonicFoundation6DeviceV6FamilyO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_26B1F862C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_26B1F8680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_26B1F86E0(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t type metadata accessor for Sysctl(uint64_t a1)
{
  result = qword_280D2CF18;
  if (!qword_280D2CF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26B1F876C(uint64_t a1)
{
  sub_26B1F8808(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26B1F8808(uint64_t a1)
{
  if (!qword_280D2DA60)
  {
    sub_26B2120D0();
    v1 = sub_26B2133E0();
    if (!v2)
    {
      atomic_store(v1, &qword_280D2DA60);
    }
  }
}

uint64_t sub_26B1F8860(uint64_t a1)
{
  sub_26B1F8808(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B1F88BC(uint64_t a1, uint64_t a2)
{
  sub_26B1F8808(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B1F8920(uint64_t a1, uint64_t a2)
{
  sub_26B1F8808(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_26B1F8984()
{
  if (!qword_2803E87C8)
  {
    v0 = sub_26B213A50();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E87C8);
    }
  }
}

uint64_t sub_26B1F8A50(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_26B18DE00();
  OUTLINED_FUNCTION_113_0();
  v7 = sub_26B2066E4(v4, v5, v6, a1);
  sub_26B152CD4(v9);
  if (v7 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_26B1F8B00(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_113_0();
  v6 = a3();
  sub_26B152CD4(v8);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_26B1F8B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x2822009F8](sub_26B1F8BE0, v3, 0);
}

void sub_26B1F8BE0()
{
  OUTLINED_FUNCTION_30();
  v2 = v0[8];
  v3 = v2[16];
  v4 = v2[17];
  if (v4 == v3)
  {
    OUTLINED_FUNCTION_41_6();
    v8 = v7 + 7;
    v10 = v9 | 0x8000000000000000;
LABEL_8:
    OUTLINED_FUNCTION_70_1("Fatal error", v5, v6, v8, v10, "SonicFoundation/ActorQueue.swift");
    OUTLINED_FUNCTION_126_0();
    return;
  }

  v11 = v2[15];
  if (v3 < v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v4 < v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v4 >= v3)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    MEMORY[0x2822008B0](v1);
    return;
  }

  v2[17] = v4 + 1;
  sub_26B174624();
  v12 = OUTLINED_FUNCTION_9();
  v14 = sub_26B174E88(v12, v13);

  if (v14)
  {
    v15 = v0[8];
    OUTLINED_FUNCTION_71_2();
    v0[2] = v34;
    v0[3] = v35;
    OUTLINED_FUNCTION_44_5();
    v0[4] = v15;
    OUTLINED_FUNCTION_98_1(v16, v17, v18, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
    OUTLINED_FUNCTION_72_1();
    sub_26B174624();
    MEMORY[0x26D670290]();
    OUTLINED_FUNCTION_100_1();
    v19 = OUTLINED_FUNCTION_26_0();
    MEMORY[0x26D670040](v19);

    OUTLINED_FUNCTION_56_3();
    goto LABEL_8;
  }

  v20 = v0[8];
  if ((*(v20 + 152) & 1) == 0)
  {
    v27 = swift_task_alloc();
    v0[10] = v27;
    *(v27 + 16) = v4;
    *(v27 + 24) = v20;
    v28 = swift_task_alloc();
    v0[11] = v28;
    *(v28 + 16) = v20;
    *(v28 + 24) = v4;
    OUTLINED_FUNCTION_3_28();
    sub_26B208240(v29, v30, &protocol conformance descriptor for ActorQueue);
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_113(v31);
    *v32 = v33;
    v32[1] = sub_26B1F8EB8;
    OUTLINED_FUNCTION_36_6();

    goto LABEL_19;
  }

  *(v20 + 144) = v4;
  *(v20 + 152) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[13] = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_108_1(v21);
  OUTLINED_FUNCTION_126_0();

  sub_26B1F9C48(v23, v24, v25);
}

uint64_t sub_26B1F8EB8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;

  if (!v0)
  {

    v8 = OUTLINED_FUNCTION_80_1();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  return result;
}

uint64_t sub_26B1F8FBC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B1F909C()
{
  OUTLINED_FUNCTION_25();
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 112) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_108_1(v1);

  return sub_26B1F9C48(v3, v4, v5);
}

uint64_t sub_26B1F9120(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  return MEMORY[0x2822009F8](sub_26B1F916C, v2, 0);
}

void sub_26B1F916C()
{
  OUTLINED_FUNCTION_30();
  v2 = v0[7];
  v3 = v2[16];
  v4 = v2[17];
  if (v4 == v3)
  {
    OUTLINED_FUNCTION_41_6();
    v8 = v7 + 7;
    v10 = v9 | 0x8000000000000000;
LABEL_8:
    OUTLINED_FUNCTION_70_1("Fatal error", v5, v6, v8, v10, "SonicFoundation/ActorQueue.swift");
    OUTLINED_FUNCTION_126_0();
    return;
  }

  v11 = v2[15];
  if (v3 < v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v4 < v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v4 >= v3)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    MEMORY[0x2822008B0](v1);
    return;
  }

  v2[17] = v4 + 1;
  sub_26B174624();
  v12 = OUTLINED_FUNCTION_9();
  v14 = sub_26B174E88(v12, v13);

  if (v14)
  {
    v15 = v0[7];
    OUTLINED_FUNCTION_71_2();
    v0[2] = v33;
    v0[3] = v34;
    OUTLINED_FUNCTION_44_5();
    v0[4] = v15;
    OUTLINED_FUNCTION_98_1(v16, v17, v18, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
    OUTLINED_FUNCTION_72_1();
    sub_26B174624();
    MEMORY[0x26D670290]();
    OUTLINED_FUNCTION_100_1();
    v19 = OUTLINED_FUNCTION_26_0();
    MEMORY[0x26D670040](v19);

    OUTLINED_FUNCTION_56_3();
    goto LABEL_8;
  }

  v20 = v0[7];
  if ((*(v20 + 152) & 1) == 0)
  {
    v27 = swift_task_alloc();
    v28 = OUTLINED_FUNCTION_114_0(v27);
    *(v28 + 16) = v4;
    *(v28 + 24) = v20;
    v29 = swift_task_alloc();
    v0[10] = v29;
    *(v29 + 16) = v20;
    *(v29 + 24) = v4;
    OUTLINED_FUNCTION_3_28();
    sub_26B208240(v30, v31, &protocol conformance descriptor for ActorQueue);
    v32 = swift_task_alloc();
    v0[11] = v32;
    *v32 = v0;
    v32[1] = sub_26B1F9440;
    OUTLINED_FUNCTION_36_6();

    goto LABEL_19;
  }

  *(v20 + 144) = v4;
  *(v20 + 152) = 0;
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_113(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_28_10(v22);
  OUTLINED_FUNCTION_126_0();

  sub_26B1FA01C(v24, v25);
}

uint64_t sub_26B1F9440()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;

  if (!v0)
  {

    v8 = OUTLINED_FUNCTION_80_1();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  return result;
}

uint64_t sub_26B1F9544()
{
  OUTLINED_FUNCTION_25();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_28_10(v1);

  return sub_26B1FA01C(v2, v3);
}

uint64_t sub_26B1F95C8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  return MEMORY[0x2822009F8](sub_26B1F9614, v2, 0);
}

void sub_26B1F9614()
{
  OUTLINED_FUNCTION_30();
  v2 = v0[7];
  v3 = v2[16];
  v4 = v2[17];
  if (v4 == v3)
  {
    OUTLINED_FUNCTION_41_6();
    v8 = v7 + 7;
    v10 = v9 | 0x8000000000000000;
LABEL_8:
    OUTLINED_FUNCTION_70_1("Fatal error", v5, v6, v8, v10, "SonicFoundation/ActorQueue.swift");
    OUTLINED_FUNCTION_126_0();
    return;
  }

  v11 = v2[15];
  if (v3 < v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v4 < v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v4 >= v3)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    MEMORY[0x2822008B0](v1);
    return;
  }

  v2[17] = v4 + 1;
  sub_26B174624();
  v12 = OUTLINED_FUNCTION_9();
  v14 = sub_26B174E88(v12, v13);

  if (v14)
  {
    v15 = v0[7];
    OUTLINED_FUNCTION_71_2();
    v0[2] = v33;
    v0[3] = v34;
    OUTLINED_FUNCTION_44_5();
    v0[4] = v15;
    OUTLINED_FUNCTION_98_1(v16, v17, v18, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
    OUTLINED_FUNCTION_72_1();
    sub_26B174624();
    MEMORY[0x26D670290]();
    OUTLINED_FUNCTION_100_1();
    v19 = OUTLINED_FUNCTION_26_0();
    MEMORY[0x26D670040](v19);

    OUTLINED_FUNCTION_56_3();
    goto LABEL_8;
  }

  v20 = v0[7];
  if ((*(v20 + 152) & 1) == 0)
  {
    v27 = swift_task_alloc();
    v28 = OUTLINED_FUNCTION_114_0(v27);
    *(v28 + 16) = v4;
    *(v28 + 24) = v20;
    v29 = swift_task_alloc();
    v0[10] = v29;
    *(v29 + 16) = v20;
    *(v29 + 24) = v4;
    OUTLINED_FUNCTION_3_28();
    sub_26B208240(v30, v31, &protocol conformance descriptor for ActorQueue);
    v32 = swift_task_alloc();
    v0[11] = v32;
    *v32 = v0;
    v32[1] = sub_26B1F98E8;
    OUTLINED_FUNCTION_36_6();

    goto LABEL_19;
  }

  *(v20 + 144) = v4;
  *(v20 + 152) = 0;
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_113(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_28_10(v22);
  OUTLINED_FUNCTION_126_0();

  sub_26B1FA328(v24, v25);
}

uint64_t sub_26B1F98E8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;

  if (!v0)
  {

    v8 = OUTLINED_FUNCTION_80_1();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  return result;
}

uint64_t sub_26B1F99EC()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;

  OUTLINED_FUNCTION_9_14();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26B1F9AD8()
{
  OUTLINED_FUNCTION_25();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_28_10(v1);

  return sub_26B1FA328(v2, v3);
}

uint64_t sub_26B1F9B5C()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;

  OUTLINED_FUNCTION_9_14();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26B1F9C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = *v3;
  return MEMORY[0x2822009F8](sub_26B1F9C94, v3, 0);
}

uint64_t sub_26B1F9C94()
{
  OUTLINED_FUNCTION_35_3();
  if (qword_2803E6A88 != -1)
  {
    OUTLINED_FUNCTION_6_9(&qword_2803E6A88);
  }

  v1 = sub_26B174624();
  OUTLINED_FUNCTION_6_25(v1, &qword_2803E6FC0, MEMORY[0x277D83690]);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_103_1(inited, xmmword_26B2162F0);
  sub_26B16898C(v3);
  v0[13] = v1;
  v0[7] = v1;
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_53_2(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_3_28();
  sub_26B208240(v14, v15, &protocol conformance descriptor for ActorQueue);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[15] = v16;
  *v16 = v17;
  v16[1] = sub_26B1F9E28;
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_101_1();

  return MEMORY[0x282200908](v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_26B1F9E28()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 128) = v0;

  v7 = *(v3 + 88);
  if (v0)
  {
    v8 = sub_26B1F9FC0;
  }

  else
  {
    v8 = sub_26B1F9F68;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26B1F9F68()
{
  OUTLINED_FUNCTION_25();
  sub_26B176188();
  OUTLINED_FUNCTION_20();

  return v0();
}

uint64_t sub_26B1F9FC0()
{
  OUTLINED_FUNCTION_25();
  sub_26B176188();
  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1FA01C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = *v2;
  return MEMORY[0x2822009F8](sub_26B1FA068, v2, 0);
}

uint64_t sub_26B1FA068()
{
  OUTLINED_FUNCTION_35_3();
  if (qword_2803E6A88 != -1)
  {
    OUTLINED_FUNCTION_6_9(&qword_2803E6A88);
  }

  v1 = sub_26B174624();
  OUTLINED_FUNCTION_6_25(v1, &qword_2803E6FC0, MEMORY[0x277D83690]);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_103_1(inited, xmmword_26B2162F0);
  sub_26B16898C(v3);
  v4 = OUTLINED_FUNCTION_117_0(v1);
  OUTLINED_FUNCTION_53_2(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_3_28();
  sub_26B208240(v14, v15, &protocol conformance descriptor for ActorQueue);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 120) = v16;
  *v16 = v17;
  v16[1] = sub_26B1FA1E8;
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_101_1();

  return MEMORY[0x282200908](v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_26B1FA1E8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 128) = v0;

  v7 = *(v3 + 88);
  if (v0)
  {
    v8 = sub_26B2085F0;
  }

  else
  {
    v8 = sub_26B2085F8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26B1FA328(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = *v2;
  return MEMORY[0x2822009F8](sub_26B1FA374, v2, 0);
}

uint64_t sub_26B1FA374()
{
  OUTLINED_FUNCTION_35_3();
  if (qword_2803E6A88 != -1)
  {
    OUTLINED_FUNCTION_6_9(&qword_2803E6A88);
  }

  v1 = sub_26B174624();
  OUTLINED_FUNCTION_6_25(v1, &qword_2803E6FC0, MEMORY[0x277D83690]);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_103_1(inited, xmmword_26B2162F0);
  sub_26B16898C(v3);
  v4 = OUTLINED_FUNCTION_117_0(v1);
  OUTLINED_FUNCTION_53_2(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_3_28();
  sub_26B208240(v14, v15, &protocol conformance descriptor for ActorQueue);
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  type metadata accessor for SQLDatabase(0);
  *v16 = v0;
  v16[1] = sub_26B1FA500;
  OUTLINED_FUNCTION_33_8();

  return MEMORY[0x282200908](v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_26B1FA500()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 128) = v0;

  v7 = *(v3 + 88);
  if (v0)
  {
    v8 = sub_26B1F9FC0;
  }

  else
  {
    v8 = sub_26B1FA640;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26B1FA640()
{
  OUTLINED_FUNCTION_25();
  sub_26B176188();
  OUTLINED_FUNCTION_9_14();

  return v0();
}

uint64_t sub_26B1FA6A0(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26B1FA790;

  return v4(v1 + 16);
}

uint64_t sub_26B1FA790()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1FA888(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26B1FA978;

  return v4(v1 + 16);
}

uint64_t sub_26B1FA978()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void *sub_26B1FAAB0(unint64_t a1)
{
  v1 = bswap64(a1);
  result = sub_26B2072D4(8, 0);
  result[4] = v1;
  return result;
}

void *sub_26B1FAB18(unsigned int a1)
{
  v1 = bswap32(a1);
  result = sub_26B2072D4(4, 0);
  *(result + 8) = v1;
  return result;
}

uint64_t sub_26B1FAB80(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26B208604, v2, 0);
}

uint64_t sub_26B1FABA4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26B1FABC8, v2, 0);
}

uint64_t sub_26B1FABC8()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[8];
  v2 = v0[7];
  *v2 = *(v0[9] + 128);
  v3 = *v1;
  v4 = *(v1 + 16);
  *(v2 + 40) = *(v1 + 32);
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;

  sub_26B1E23E0(v1, (v0 + 2));
  OUTLINED_FUNCTION_20();

  return v5();
}

uint64_t sub_26B1FAC4C()
{
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0x800000026B220730;
  *(v0 + 48) = 0;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_26B1FAD20;

  return (sub_26B1DD2E8)(v0 + 16);
}

uint64_t sub_26B1FAD20()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v2 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_10_0();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_9_14();

    return v6();
  }
}

uint64_t sub_26B1FAE4C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_26B1FAE6C, 0, 0);
}

uint64_t sub_26B1FAE6C()
{
  OUTLINED_FUNCTION_62();
  v3 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_29_5();
  sub_26B16AFCC();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6 >= *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_42_5();
    sub_26B16AFCC();
    v5 = v20;
  }

  v7 = *(v0 + 64);
  *(v5 + 16) = v6 + 1;
  v8 = v5 + 80 * v6;
  *(v8 + 32) = 0xD000000000000014;
  *(v8 + 40) = 0x800000026B220750;
  *(v8 + 104) = 0;
  *(v0 + 56) = v7;
  v9 = sub_26B213B90();
  v11 = v10;
  v12 = *(v5 + 16);
  v13 = v12 + 1;
  if (v12 >= *(v5 + 24) >> 1)
  {
    OUTLINED_FUNCTION_42_5();
    sub_26B16AFCC();
    v5 = v21;
  }

  *(v5 + 16) = v13;
  v14 = v5 + 80 * v12;
  *(v14 + 32) = v9;
  *(v14 + 40) = v11;
  OUTLINED_FUNCTION_0_34(v14, v23, v25, v27, v29, v31);
  v15 = *(v5 + 24);
  if ((v12 + 2) > (v15 >> 1))
  {
    OUTLINED_FUNCTION_18_14(v15);
    sub_26B16AFCC();
    v5 = v22;
  }

  *(v5 + 16) = v12 + 2;
  v16 = v5 + 80 * v13;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0xE000000000000000;
  OUTLINED_FUNCTION_0_34(v16, v24, v26, v28, v30, v32);
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v18 = *(v3 + 16);
  if (v18)
  {

    OUTLINED_FUNCTION_43_1();
    sub_26B2128F0();
    sub_26B2128F0();
    OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_41_1();

    *(v0 + 16) = v11;
    *(v0 + 24) = v12;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2;
    *(v0 + 48) = v18;
    v19 = swift_task_alloc();
    *(v0 + 80) = v19;
    *v19 = v0;
    v19[1] = sub_26B1FB100;

    return SQLDatabase.execute(_:)(v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1FB100()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 88) = v0;

  sub_26B1A85A8(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

void sub_26B1FB248(uint64_t a1)
{
  v2 = sub_26B1D0070();
  v4 = 0;
  v3 = MEMORY[0x277D839B0];
  sub_26B1CA544(MEMORY[0x277D839B0], &v4, v2, a1, 1, &v3, MEMORY[0x277D839B0]);
}

void sub_26B1FB2CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B1D0070();
  v5 = a2;
  v6 = 0;
  sub_26B1CA544(a2, &v6, v4, a1, 1, &v5, a2);
}

void sub_26B1FB350(uint64_t a1)
{
  v11 = sub_26B1D0070();
  v13 = 0;
  v2 = 32;
  v3 = MEMORY[0x277D837D0];
  while (v2 != 64)
  {
    if (v2 == 32)
    {
      v4 = v3;
      v5 = MEMORY[0x277D839F8];
    }

    else
    {
      v5 = MEMORY[0x277D839F8];
      sub_26B207D54(0, &qword_2803E8850, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      v4 = v6;
      sub_26B207DA4();
    }

    sub_26B207CC8(0);
    v8 = v7;
    v12[0] = v3;
    sub_26B207D54(0, &qword_2803E8850, v5, MEMORY[0x277D83D88]);
    v12[1] = v9;
    sub_26B207DA4();
    sub_26B1CA544(v4, &v13, v11, a1, 2, v12, v4);
    if (v1)
    {
      if (v2 != 32)
      {
        (*(*(v12[0] - 8) + 8))(&v12[2] + *(v8 + 32));
      }

      return;
    }

    v2 += 16;
  }
}

uint64_t sub_26B1FB5E0(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  swift_beginAccess();
  a1(&v5, v1 + 112);
  result = swift_endAccess();
  if (!v2)
  {
    return v5;
  }

  return result;
}

SonicFoundation::FileCacheError_optional __swiftcall FileCacheError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 1;
  switch(rawValue)
  {
    case 'd':
      break;
    case 'e':
      v2 = 2;
      break;
    case 'f':
      v2 = 3;
      break;
    case 'g':
      v2 = 4;
      break;
    case 'h':
      v2 = 5;
      break;
    default:
      if (rawValue == 202)
      {
        v3 = 8;
      }

      else
      {
        v3 = 9;
      }

      if (rawValue == 201)
      {
        v4 = 7;
      }

      else
      {
        v4 = v3;
      }

      if (rawValue == 200)
      {
        v2 = 6;
      }

      else
      {
        v2 = v4;
      }

      if (!rawValue)
      {
        v2 = 0;
      }

      break;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_26B1FB74C@<X0>(uint64_t *a1@<X8>)
{
  result = FileCacheError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t FileCache.Entry.url.getter()
{
  sub_26B211EF0();
  OUTLINED_FUNCTION_27();
  v0 = OUTLINED_FUNCTION_9();

  return v1(v0);
}

uint64_t FileCache.Entry.contentType.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for FileCache.Entry(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t FileCache.Entry.pathExtension.getter()
{
  type metadata accessor for FileCache.Entry(0);
  sub_26B2128F0();
  return OUTLINED_FUNCTION_9();
}

uint64_t FileCache.Entry.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_122_0();
  sub_26B211EF0();
  OUTLINED_FUNCTION_27();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v2, v4);
}

id FileCache.Entry.isCached.getter()
{
  OUTLINED_FUNCTION_122_0();
  v0 = [objc_opt_self() defaultManager];
  sub_26B211EA0();
  v1 = sub_26B212A50();

  v2 = [v0 fileExistsAtPath_];

  return v2;
}

uint64_t sub_26B1FB97C(uint64_t a1, _DWORD *a2, _BYTE *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  v7 = sub_26B211EF0();
  *(v4 + 32) = v7;
  v8 = *(v7 - 8);
  *(v4 + 40) = v8;
  *(v4 + 48) = *(v8 + 64);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 112) = *a2;
  *(v4 + 116) = *a3;

  return MEMORY[0x2822009F8](sub_26B1FBA5C, 0, 0);
}

uint64_t sub_26B1FBA5C()
{
  if (sub_26B211E10())
  {
    if (qword_2803E6AD8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_55_3(&qword_2803E6AD8);
LABEL_3:
  v14 = *(v0 + 112);
  v15 = *(v0 + 116);
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v0 + 64) = qword_2803E87D0;

  v7 = sub_26B211EA0();
  v17 = v8;
  v18 = v7;
  *(v0 + 72) = v8;
  (*(v4 + 16))(v1, v6, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v0 + 80) = v10;
  (*(v4 + 32))(v10 + v9, v1, v3);
  v11 = v10 + ((v9 + v2 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = v14;
  *(v11 + 4) = v15;
  *(v10 + ((v9 + v2 + 15) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v16 = OUTLINED_FUNCTION_75_1(&dword_26B21E1E0);

  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_26B1FBC3C;

  return v16(v18, v17, sub_26B20804C, v10);
}

uint64_t sub_26B1FBC3C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v7 + 96) = v6;
  *(v7 + 104) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_26B1FBD94()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    OUTLINED_FUNCTION_25();

    OUTLINED_FUNCTION_9_14();

    v2(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B1FBE00()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1FBE5C(char *a1)
{
  v102 = a1;
  v2 = v1;
  v106 = *MEMORY[0x277D85DE8];
  sub_26B211EF0();
  OUTLINED_FUNCTION_0();
  v99 = v3;
  v100 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_22_0();
  v98 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v94 = &v93 - v8;
  sub_26B1FD750(0);
  v10 = OUTLINED_FUNCTION_21(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_0();
  v97 = v11 - v12;
  v14 = MEMORY[0x28223BE20](v13);
  v95 = &v93 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v93 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v93 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v93 - v22;
  v24 = objc_opt_self();
  v25 = [v24 defaultManager];
  v96 = type metadata accessor for FileCache.Entry(0);
  v26 = *(v96 + 28);
  v27 = [v24 defaultManager];
  v103 = v26;
  sub_26B211EA0();
  v28 = sub_26B212A50();

  LODWORD(v24) = [v27 fileExistsAtPath_];

  v29 = v23;
  v30 = v99;
  OUTLINED_FUNCTION_42_5();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v35 = v101;
  if (!v24)
  {
    goto LABEL_5;
  }

  sub_26B211E80();
  OUTLINED_FUNCTION_2_37();
  sub_26B205B20();
  OUTLINED_FUNCTION_42_5();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  sub_26B207FF0(v21, v29, sub_26B1FD750);
  v93 = v2;
  v40 = sub_26B211E60();
  OUTLINED_FUNCTION_8_27();
  sub_26B208108(v29, v18, v41);
  OUTLINED_FUNCTION_105_1();
  result = __swift_getEnumTagSinglePayload(v42, v43, v44);
  if (result != 1)
  {
    v46 = sub_26B211E60();
    (*(v100 + 8))(v18, v30);
    v104 = 0;
    v47 = [v25 moveItemAtURL:v40 toURL:v46 error:&v104];

    if (!v47)
    {
      v80 = v104;
      sub_26B211E00();

      v66 = v25;
      goto LABEL_17;
    }

    v48 = v104;
    v35 = v101;
LABEL_5:
    sub_26B1FC650(v25);
    v49 = v25;
    if (!v35)
    {
      sub_26B158CFC();
      OUTLINED_FUNCTION_8_27();
      v82 = v95;
      sub_26B208108(v29, v95, v83);
      OUTLINED_FUNCTION_105_1();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84, v85, v86);
      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_2_37();
        sub_26B205B20();
      }

      else
      {
        v88 = v94;
        (*(v100 + 32))(v94, v82, v30);
        v89 = sub_26B211E60();
        v104 = 0;
        v90 = [v49 removeItemAtURL:v89 error:&v104];

        v91 = v104;
        if (v90)
        {
        }

        else
        {
          OUTLINED_FUNCTION_107_1();
          v92 = sub_26B211E00();

          swift_willThrow();
        }

        (*(v100 + 8))(v88, v30);
      }

      return sub_26B205B20();
    }

    OUTLINED_FUNCTION_102_1();
    sub_26B2136C0();

    OUTLINED_FUNCTION_88_1();
    v104 = v51;
    v105 = v50 | 0xEF2065766F6D0000;
    OUTLINED_FUNCTION_4_31();
    sub_26B208240(v52, v53, MEMORY[0x277CC9290]);
    v54 = sub_26B213B90();
    MEMORY[0x26D670040](v54);

    MEMORY[0x26D670040](544175136, 0xE400000000000000);
    v55 = sub_26B213B90();
    MEMORY[0x26D670040](v55);

    v56 = v104;
    v57 = v105;
    OUTLINED_FUNCTION_1_35();
    sub_26B1FD874(0, v58, v59, MEMORY[0x277D84560]);
    OUTLINED_FUNCTION_40();
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_26B2162F0;
    *(v60 + 32) = v35;
    sub_26B1FD8D8(0);
    OUTLINED_FUNCTION_0_42();
    sub_26B208240(v61, v62, &protocol conformance descriptor for SonicError<A>);
    v63 = swift_allocError();
    *v64 = 3;
    *(v64 + 8) = v56;
    *(v64 + 16) = v57;
    OUTLINED_FUNCTION_65_2(v63, v64);
    swift_willThrow();
    v65 = sub_26B211E60();
    v104 = 0;
    v66 = v101;
    v67 = [v101 removeItemAtURL:v65 error:&v104];

    v68 = v104;
    if (!v67)
    {
      OUTLINED_FUNCTION_107_1();
      v69 = sub_26B211E00();

      swift_willThrow();
    }

    v70 = v102;
    v71 = v97;
    OUTLINED_FUNCTION_8_27();
    sub_26B208108(v70, v71, v72);
    OUTLINED_FUNCTION_105_1();
    if (__swift_getEnumTagSinglePayload(v73, v74, v75) == 1)
    {
      OUTLINED_FUNCTION_2_37();
      sub_26B205B20();
    }

    else
    {
      (*(v100 + 32))(v98, v71, v30);
      v76 = sub_26B211E60();
      v77 = sub_26B211E60();
      v104 = 0;
      v78 = [v66 moveItemAtURL:v76 toURL:v77 error:&v104];

      v79 = v104;
      if (!v78)
      {
        OUTLINED_FUNCTION_107_1();
        v81 = sub_26B211E00();

        swift_willThrow();
      }

      (*(v100 + 8))(v98, v30);
    }

LABEL_17:
    swift_willThrow();

    return sub_26B205B20();
  }

  __break(1u);
  return result;
}

id sub_26B1FC650(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_26B211E60();
  type metadata accessor for FileCache.Entry(0);
  v3 = sub_26B211E60();
  v7[0] = 0;
  v4 = [a1 moveItemAtURL:v2 toURL:v3 error:v7];

  if (v4)
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_26B211E00();

  return swift_willThrow();
}

uint64_t FileCache.didFinishWriting(entry:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1FC754()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_122_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_26B1FC7FC;

  return sub_26B1FC8DC();
}

uint64_t sub_26B1FC7FC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B1FC8DC()
{
  OUTLINED_FUNCTION_25();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_26B212090();
  v1[5] = v3;
  OUTLINED_FUNCTION_1_7(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B1FC984()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 64) = *(*(v0 + 32) + 16);
  v1 = *(MEMORY[0x277D857C8] + 4);

  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_114_0(v2);
  type metadata accessor for SQLDatabase(0);
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_57_2();
  *v1 = v3;
  v1[1] = sub_26B1FCA40;
  v4 = OUTLINED_FUNCTION_43_4();

  return MEMORY[0x282200430](v4, v5, v6, v7, v8);
}

uint64_t sub_26B1FCA40()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26B1FCB60()
{
  OUTLINED_FUNCTION_35_3();
  v1 = v0[10];
  v2 = v0[2];
  v0[11] = v2;
  v3 = sub_26B211E50();
  v5 = v4;
  v0[12] = v4;
  v6 = sub_26B15965C();
  if (v1)
  {

    OUTLINED_FUNCTION_10_0();

    return v7();
  }

  else
  {
    v9 = v6;
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    sub_26B212080();
    sub_26B212070();
    v14 = v13;
    (*(v11 + 8))(v10, v12);
    if (qword_2803E6AE0 != -1)
    {
      OUTLINED_FUNCTION_11_17(&qword_2803E6AE0);
    }

    v0[13] = qword_2803F2AA0;
    v15 = swift_task_alloc();
    v0[14] = v15;
    v15[2] = v2;
    v15[3] = v3;
    v15[4] = v5;
    v15[5] = v14;
    v15[6] = v9;
    v17 = OUTLINED_FUNCTION_75_1(&dword_26B21E148);

    v16 = swift_task_alloc();
    v0[15] = v16;
    *v16 = v0;
    v16[1] = sub_26B1FCD38;

    return v17();
  }
}

uint64_t sub_26B1FCD38()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1FCE54()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_20();

  return v0();
}

uint64_t sub_26B1FCEB8()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1FCF14()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1FCFB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_26B211EF0();
  OUTLINED_FUNCTION_27();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

double FileCache.policy.getter@<D0>(double *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SonicFoundation9FileCache_policy;
  swift_beginAccess();
  result = *(v1 + v3);
  *a1 = result;
  return result;
}

uint64_t FileCache.policy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15SonicFoundation9FileCache_policy;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t FileCache.__allocating_init(containerURL:temporaryContainerURL:contentType:)(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = swift_allocObject();
  FileCache.init(containerURL:temporaryContainerURL:contentType:)(a1, a2, a3);
  return v6;
}

uint64_t *FileCache.init(containerURL:temporaryContainerURL:contentType:)(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v3;
  v71 = a2;
  v65 = *v6;
  v66 = v4;
  v9 = sub_26B211E20();
  OUTLINED_FUNCTION_0();
  v64 = v10;
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_74_1();
  sub_26B1FD750(v12);
  v14 = OUTLINED_FUNCTION_21(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26B211EF0();
  OUTLINED_FUNCTION_0();
  v67 = v17;
  v68 = v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v58[-v23];
  v25 = *a3;
  *(v6 + OBJC_IVAR____TtC15SonicFoundation9FileCache_policy) = 0x40F5180000000000;
  v26 = v66;
  sub_26B1FD784();
  if (v26)
  {
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_26B2136C0();

    OUTLINED_FUNCTION_77_0();
    v69 = 0xD00000000000001BLL;
    v70 = v27;
    OUTLINED_FUNCTION_4_31();
    sub_26B208240(v28, v29, MEMORY[0x277CC9290]);
    v30 = v67;
    v31 = sub_26B213B90();
    MEMORY[0x26D670040](v31);

    v32 = v69;
    v33 = v70;
    OUTLINED_FUNCTION_1_35();
    sub_26B1FD874(0, v34, v35, MEMORY[0x277D84560]);
    OUTLINED_FUNCTION_40();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26B2162F0;
    *(v36 + 32) = v26;
    sub_26B1FD8D8(0);
    OUTLINED_FUNCTION_0_42();
    sub_26B208240(v37, v38, &protocol conformance descriptor for SonicError<A>);
    v39 = swift_allocError();
    *v40 = 1;
    *(v40 + 8) = v32;
    *(v40 + 16) = v33;
    OUTLINED_FUNCTION_65_2(v39, v40);
    swift_willThrow();
    OUTLINED_FUNCTION_2_37();
    sub_26B205B20();
    (*(v68 + 8))(a1, v30);
    swift_deallocPartialClassInstance();
    return v6;
  }

  else
  {
    v61 = v25;
    v62 = 0;
    v63 = v21;
    v65 = v5;
    v66 = v9;
    v43 = v67;
    v42 = v68;
    (*(v68 + 16))(v6 + OBJC_IVAR____TtC15SonicFoundation9FileCache_containerURL, a1, v67);
    OUTLINED_FUNCTION_8_27();
    sub_26B208108(v71, v16, v44);
    v41 = v6;
    if (__swift_getEnumTagSinglePayload(v16, 1, v43) == 1)
    {
      v69 = 7368052;
      v70 = 0xE300000000000000;
      v45 = v64;
      v46 = v65;
      v47 = *(v64 + 104);
      v59 = *MEMORY[0x277CC91D8];
      v48 = v66;
      v47(v65);
      sub_26B14FCC8();
      v60 = a1;
      sub_26B211EE0();
      (*(v45 + 8))(v46, v48);
      if (__swift_getEnumTagSinglePayload(v16, 1, v43) != 1)
      {
        OUTLINED_FUNCTION_2_37();
        sub_26B205B20();
      }

      a1 = v60;
      v42 = v68;
      v49 = v64;
      v50 = v61;
      v51 = v59;
    }

    else
    {
      (*(v42 + 32))(v24, v16, v43);
      v51 = *MEMORY[0x277CC91D8];
      v49 = v64;
      v50 = v61;
    }

    (*(v42 + 32))(v6 + OBJC_IVAR____TtC15SonicFoundation9FileCache_temporaryContainerURL, v24, v43);
    *(v6 + OBJC_IVAR____TtC15SonicFoundation9FileCache_contentType) = v50;
    v69 = 0x62642E6568636143;
    v70 = 0xE800000000000000;
    v52 = v65;
    v53 = v51;
    v54 = v66;
    (*(v49 + 104))(v65, v53, v66);
    sub_26B14FCC8();
    v55 = a1;
    sub_26B211ED0();
    (*(v49 + 8))(v52, v54);
    type metadata accessor for FileCache.CacheDatabase();
    v56 = swift_allocObject();
    sub_26B202938();
    OUTLINED_FUNCTION_2_37();
    sub_26B205B20();
    (*(v42 + 8))(v55, v43);
    *(v6 + OBJC_IVAR____TtC15SonicFoundation9FileCache_cacheDB) = v56;
  }

  return v41;
}

id sub_26B1FD784()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_26B211E60();
  v5[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v5];

  if (v2)
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_26B211E00();

  return swift_willThrow();
}

void sub_26B1FD874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26B1FD8D8(uint64_t a1)
{
  if (!qword_2803E87E0)
  {
    v2 = sub_26B1FD934();
    v4 = type metadata accessor for SonicError(a1, &type metadata for FileCacheError, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_2803E87E0);
    }
  }
}

unint64_t sub_26B1FD934()
{
  result = qword_2803E87E8;
  if (!qword_2803E87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E87E8);
  }

  return result;
}

uint64_t FileCache.entry(for:pathExtension:purgeUrgency:)()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  *(v1 + 40) = v4;
  *(v1 + 48) = v0;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 16) = v7;
  v8 = type metadata accessor for FileCache.Entry(0);
  *(v1 + 56) = v8;
  OUTLINED_FUNCTION_21(v8);
  *(v1 + 64) = OUTLINED_FUNCTION_31();
  sub_26B1FD750(0);
  OUTLINED_FUNCTION_21(v9);
  *(v1 + 72) = OUTLINED_FUNCTION_31();
  v10 = sub_26B211EF0();
  *(v1 + 80) = v10;
  OUTLINED_FUNCTION_1_7(v10);
  *(v1 + 88) = v11;
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 169) = *v3;
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26B1FDACC()
{
  OUTLINED_FUNCTION_35_3();
  sub_26B1FE03C(*(v0 + 32), *(v0 + 40), *(v0 + 72));
  OUTLINED_FUNCTION_105_1();
  if (__swift_getEnumTagSinglePayload(v1, v2, v3) == 1)
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 16);
    OUTLINED_FUNCTION_2_37();
    sub_26B205B20();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v4);

    OUTLINED_FUNCTION_20();

    return v6();
  }

  else
  {
    v8 = *(v0 + 169);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 72);
    v14 = *(v0 + 80);
    v15 = *(v0 + 48);
    v16 = *(v0 + 24);
    v17 = *(v12 + 32);
    *(v0 + 120) = v17;
    *(v0 + 128) = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v17(v10, v13, v14);
    v18 = *(v12 + 16);
    v18(v9, v16, v14);
    LODWORD(v16) = *(v15 + OBJC_IVAR____TtC15SonicFoundation9FileCache_contentType);
    *(v0 + 164) = v16;
    v18(v11, v10, v14);
    v19 = *(v15 + OBJC_IVAR____TtC15SonicFoundation9FileCache_cacheDB);
    type metadata accessor for NoPurgeAssertion(0);
    *(v0 + 160) = v16;
    *(v0 + 168) = v8;
    v20 = swift_task_alloc();
    *(v0 + 136) = v20;
    *v20 = v0;
    v20[1] = sub_26B1FDCF0;
    v21 = OUTLINED_FUNCTION_66_0(*(v0 + 96));

    return sub_26B1FB97C(v21, (v0 + 160), (v0 + 168), v19);
  }
}

uint64_t sub_26B1FDCF0()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v5 + 144) = v0;

  if (!v0)
  {
    *(v5 + 152) = v3;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1FDDF8()
{
  v14 = *(v0 + 164);
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v15 = *(v0 + 96);
  v16 = *(v0 + 112);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 16);
  *(v5 + v6[8]) = *(v0 + 152);
  v1(v5, v2, v4);
  *(v5 + v6[5]) = v14;
  v10 = (v5 + v6[6]);
  *v10 = v8;
  v10[1] = v7;
  v1(v5 + v6[7], v15, v4);
  sub_26B207FF0(v5, v9, type metadata accessor for FileCache.Entry);
  v11 = *(v3 + 8);
  sub_26B2128F0();
  v11(v16, v4);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v6);

  OUTLINED_FUNCTION_20();

  return v12();
}

uint64_t sub_26B1FDF5C()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = *(v0[11] + 8);
  v5 = OUTLINED_FUNCTION_16_2();
  v4(v5);
  (v4)(v1, v3);
  (v4)(v2, v3);

  OUTLINED_FUNCTION_10_0();

  return v6();
}

uint64_t sub_26B1FE03C@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v48 = a1;
  v49 = a2;
  v47 = sub_26B211E20();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B211EF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B212790();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26B212780();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26B212AD0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B1FD750(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.coreURL.getter(v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_26B205B20();
    v21 = 1;
  }

  else
  {
    v39 = a3;
    sub_26B211E30();
    v38 = v6;
    (*(v6 + 8))(v20, v5);
    sub_26B212AC0();
    v22 = sub_26B212A90();
    v24 = v23;

    (*(v15 + 8))(v17, v14);
    if (v24 >> 60 == 15)
    {
      v21 = 1;
      a3 = v39;
    }

    else
    {
      sub_26B208240(&qword_2803E8860, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      v25 = v43;
      sub_26B212770();
      sub_26B14F044(v22, v24);
      sub_26B20792C(v22, v24);
      v37 = v22;
      sub_26B156574(v22, v24);
      sub_26B212760();
      (*(v42 + 8))(v10, v25);
      sub_26B18AFE8();
      v27 = v26;
      v29 = v28;
      (*(v40 + 8))(v13, v41);
      v50 = v27;
      v51 = v29;
      v30 = v46;
      v31 = v44;
      v32 = v47;
      (*(v46 + 104))(v44, *MEMORY[0x277CC91D8], v47);
      sub_26B14FCC8();
      v33 = v45;
      sub_26B211EE0();
      (*(v30 + 8))(v31, v32);

      v34 = HIBYTE(v49) & 0xF;
      if ((v49 & 0x2000000000000000) == 0)
      {
        v34 = v48 & 0xFFFFFFFFFFFFLL;
      }

      a3 = v39;
      if (v34)
      {
        sub_26B211E70();
      }

      sub_26B156574(v37, v24);
      (*(v38 + 32))(a3, v33, v5);
      v21 = 0;
    }
  }

  return __swift_storeEnumTagSinglePayload(a3, v21, 1, v5);
}

uint64_t FileCache.import(to:from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1FE5E0()
{
  OUTLINED_FUNCTION_35_3();
  sub_26B1FBE5C(*(v0 + 24));
  OUTLINED_FUNCTION_122_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_26B1FE804;
  OUTLINED_FUNCTION_101_1();

  return sub_26B1FC8DC();
}

uint64_t sub_26B1FE804()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

void sub_26B1FE918()
{
  OUTLINED_FUNCTION_35_3();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_120_0();

  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_4_31();
  sub_26B208240(v2, v3, MEMORY[0x277CC9290]);
  v4 = sub_26B213B90();
  MEMORY[0x26D670040](v4);

  OUTLINED_FUNCTION_96_0();
  v5 = sub_26B213B90();
  MEMORY[0x26D670040](v5);

  OUTLINED_FUNCTION_1_35();
  sub_26B1FD874(0, v6, v7, MEMORY[0x277D84560]);
  OUTLINED_FUNCTION_40();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26B2162F0;
  *(v8 + 32) = v1;
  sub_26B1FD8D8(0);
  OUTLINED_FUNCTION_0_42();
  sub_26B208240(v9, v10, &protocol conformance descriptor for SonicError<A>);
  OUTLINED_FUNCTION_30_11();
  v11 = swift_allocError();
  *v12 = 4;
  *(v12 + 8) = v15;
  *(v12 + 16) = v16;
  OUTLINED_FUNCTION_65_2(v11, v12);
  swift_willThrow();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_101_1();

  __asm { BRAA            X1, X16 }
}

uint64_t FileCache.temporaryDestinationURL(for:)@<X0>(uint64_t x8_0@<X8>)
{
  result = sub_26B1FEB90(v2, x8_0);
  if (v3)
  {
    OUTLINED_FUNCTION_1_35();
    sub_26B1FD874(0, v5, v6, MEMORY[0x277D84560]);
    OUTLINED_FUNCTION_40();
    v7 = swift_allocObject();
    v8 = OUTLINED_FUNCTION_78_1(v7, xmmword_26B2162F0);
    sub_26B1FD8D8(v8);
    OUTLINED_FUNCTION_0_42();
    sub_26B208240(v9, v10, &protocol conformance descriptor for SonicError<A>);
    OUTLINED_FUNCTION_30_11();
    v11 = swift_allocError();
    *v12 = 1;
    *(v12 + 8) = 0xD000000000000025;
    *(v12 + 16) = 0x800000026B221240;
    OUTLINED_FUNCTION_65_2(v11, v12);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26B1FEB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v28 = *MEMORY[0x277D85DE8];
  v25 = sub_26B211E20();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26B211EF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1 + OBJC_IVAR____TtC15SonicFoundation9FileCache_temporaryContainerURL, v6);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_26B211E60();
  v26 = 0;
  v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v26];

  if (v12)
  {
    v13 = v26;
    _s15SonicFoundation6NanoIDV6configA2C13ConfigurationV_tcfC_0(0xD000000000000040, 0x800000026B21FCB0, 0x15uLL);
    v26 = v14;
    v27 = v15;
    sub_26B2128F0();
    MEMORY[0x26D670040](45, 0xE100000000000000);

    v17 = v26;
    v16 = v27;
    type metadata accessor for FileCache.Entry(0);
    v18 = sub_26B211E50();
    v20 = v19;
    v26 = v17;
    v27 = v16;
    sub_26B2128F0();
    MEMORY[0x26D670040](v18, v20);

    v21 = v25;
    (*(v3 + 104))(v5, *MEMORY[0x277CC91D8], v25);
    sub_26B14FCC8();
    sub_26B211EE0();
    (*(v3 + 8))(v5, v21);
  }

  else
  {
    v23 = v26;
    sub_26B211E00();

    swift_willThrow();
  }

  return (*(v7 + 8))(v9, v6);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FileCache.clearTemporaryContainer()()
{
  v1 = [objc_opt_self() defaultManager];
  sub_26B211EA0();
  v2 = sub_26B212A50();

  v3 = [v1 fileExistsAtPath_];

  if (v3)
  {
    sub_26B1FF058();
    if (v0)
    {
      OUTLINED_FUNCTION_1_35();
      sub_26B1FD874(0, v4, v5, MEMORY[0x277D84560]);
      OUTLINED_FUNCTION_40();
      v6 = swift_allocObject();
      v7 = OUTLINED_FUNCTION_78_1(v6, xmmword_26B2162F0);
      sub_26B1FD8D8(v7);
      OUTLINED_FUNCTION_0_42();
      sub_26B208240(v8, v9, &protocol conformance descriptor for SonicError<A>);
      OUTLINED_FUNCTION_30_11();
      v10 = swift_allocError();
      *v11 = 2;
      *(v11 + 8) = 0xD000000000000025;
      *(v11 + 16) = 0x800000026B221270;
      OUTLINED_FUNCTION_65_2(v10, v11);
      swift_willThrow();
    }
  }
}

id sub_26B1FF058()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_26B211E60();
  v5[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v5];

  if (v2)
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_26B211E00();

  return swift_willThrow();
}

uint64_t sub_26B1FF160()
{
  OUTLINED_FUNCTION_12();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_26B1FF224;

  return sub_26B1FF444();
}

uint64_t sub_26B1FF224()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_9_14();

    return v12(v3);
  }
}

uint64_t sub_26B1FF340()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_35();
  sub_26B1FD874(0, v0, v1, MEMORY[0x277D84560]);
  OUTLINED_FUNCTION_40();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_78_1(v2, xmmword_26B2162F0);
  sub_26B1FD8D8(v3);
  OUTLINED_FUNCTION_0_42();
  sub_26B208240(v4, v5, &protocol conformance descriptor for SonicError<A>);
  OUTLINED_FUNCTION_30_11();
  v6 = swift_allocError();
  *v7 = 5;
  *(v7 + 8) = 0xD000000000000021;
  *(v7 + 16) = 0x800000026B2212A0;
  OUTLINED_FUNCTION_65_2(v6, v7);
  swift_willThrow();
  OUTLINED_FUNCTION_10_0();

  return v8();
}

uint64_t sub_26B1FF444()
{
  OUTLINED_FUNCTION_25();
  v1[4] = v0;
  v1[3] = v2;
  v3 = sub_26B212090();
  v1[5] = v3;
  OUTLINED_FUNCTION_1_7(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B1FF4F0()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 64) = *(*(v0 + 32) + 16);
  v1 = *(MEMORY[0x277D857C8] + 4);

  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_114_0(v2);
  type metadata accessor for SQLDatabase(0);
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_57_2();
  *v1 = v3;
  v1[1] = sub_26B1FF5AC;
  v4 = OUTLINED_FUNCTION_43_4();

  return MEMORY[0x282200430](v4, v5, v6, v7, v8);
}

uint64_t sub_26B1FF5AC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1FF6C0()
{
  OUTLINED_FUNCTION_30();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = *(v0 + 16);
  *(v0 + 88) = v5;
  sub_26B212080();
  sub_26B212070();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  if (qword_2803E6AE0 != -1)
  {
    OUTLINED_FUNCTION_11_17(&qword_2803E6AE0);
  }

  *(v0 + 96) = qword_2803F2AA0;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7 - v4;
  v11 = OUTLINED_FUNCTION_75_1(&dword_26B21E1B0);

  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_26B1FF818;

  return v11(&unk_26B21E1A8, v8);
}

uint64_t sub_26B1FF818()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (!v0)
  {

    *(v5 + 128) = v3;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1FF930()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_9_14();
  v2 = *(v0 + 128);

  return v1(v2);
}

uint64_t sub_26B1FF99C()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t FileCache.clean(markAllPurgeable:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1FFA2C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_26B1FFB00;

  return sub_26B1FFF4C(sub_26B202B10, v3);
}

uint64_t sub_26B1FFB00()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t sub_26B1FFC1C()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1FFC78(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v21 = a5;
  v25 = a3;
  v8 = sub_26B211E20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_26B211EF0();
  v12 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24[0] = a1;
  v24[1] = a2;
  (*(v9 + 104))(v11, *MEMORY[0x277CC91D8], v8);
  sub_26B14FCC8();
  sub_26B211ED0();
  (*(v9 + 8))(v11, v8);
  v15 = [objc_opt_self() defaultManager];
  sub_26B211EA0();
  v16 = sub_26B212A50();

  LOBYTE(a2) = [v15 fileExistsAtPath_];

  if (a2)
  {
    v17 = v22;
    if (v25 & 1) != 0 || (v21)
    {
      LODWORD(v24[0]) = *(a4 + OBJC_IVAR____TtC15SonicFoundation9FileCache_contentType);
      v26 = 0;
      v19 = v23;
      sub_26B158E70(v24, &v26);
      if (v19)
      {
      }

      (*(v12 + 8))(v14, v17);
      return 0;
    }

    else
    {
      (*(v12 + 8))(v14, v22);
      return 1;
    }
  }

  else
  {
    (*(v12 + 8))(v14, v22);
    return 0;
  }
}

uint64_t sub_26B1FFF4C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1FFF64()
{
  OUTLINED_FUNCTION_12();
  v0[6] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[7] = v1;
  type metadata accessor for SQLDatabase(0);
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_57_2();
  *v1 = v2;
  v1[1] = sub_26B200024;
  v3 = OUTLINED_FUNCTION_43_4();

  return MEMORY[0x282200430](v3, v4, v5, v6, v7);
}

uint64_t sub_26B200024()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B200138()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 16);
  *(v0 + 72) = v1;
  if (qword_2803E6AE0 != -1)
  {
    OUTLINED_FUNCTION_11_17(&qword_2803E6AE0);
  }

  *(v0 + 80) = qword_2803F2AA0;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v8 = OUTLINED_FUNCTION_75_1(&dword_26B21E148);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_113(v4);
  *v5 = v6;
  v5[1] = sub_26B200248;

  return v8();
}

uint64_t sub_26B200248()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B200350()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_20();

  return v0();
}

uint64_t sub_26B2003B0()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t FileCache.deinit()
{
  v1 = OBJC_IVAR____TtC15SonicFoundation9FileCache_containerURL;
  v2 = sub_26B211EF0();
  OUTLINED_FUNCTION_27();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC15SonicFoundation9FileCache_temporaryContainerURL, v2);

  return v0;
}

uint64_t FileCache.__deallocating_deinit()
{
  FileCache.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26B200510()
{
  sub_26B207884(0, &qword_2803E8828, type metadata accessor for NoPurgeAssertion, type metadata accessor for WeakCache);
  swift_allocObject();
  result = sub_26B205B74();
  qword_2803E87D0 = result;
  return result;
}

uint64_t sub_26B200580(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v9 = sub_26B211EF0();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  v17 = a2;
  v16 = a3;
  type metadata accessor for NoPurgeAssertion(0);
  swift_allocObject();

  result = sub_26B200888(v11, &v17, &v16, a4);
  if (v4)
  {
    return v14;
  }

  return result;
}

uint64_t sub_26B2006A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_26B2006CC, 0, 0);
}

uint64_t sub_26B2006CC()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[5];
  v2 = v0[4];
  v0[7] = *(v0[6] + 16);
  v3 = swift_task_alloc();
  v0[8] = v3;
  v3[2] = v0 + 2;
  v3[3] = v2;
  v3[4] = v1;

  v4 = OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, 0);
}