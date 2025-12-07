uint64_t sub_237D089B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_4_31();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  result = OUTLINED_FUNCTION_4_31();
  if (__OFSUB__(result, 1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result == 1)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 == 0x8000000000000000 && result == 0)
  {
    goto LABEL_14;
  }

  v12 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_237E643FC(v12, v14, v15, v16);
    v12 = v17;
    *a5 = v17;
  }

  result = UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  *a5 = v12;
  return result;
}

void sub_237D08AB0()
{
  OUTLINED_FUNCTION_13_4();
  v50 = v1;
  v48 = v2;
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[5];
  v45 = v3[4];
  v46 = v5;
  v44 = v6;
  v7 = v3[7];
  v53 = v3[6];
  v54 = v4;
  v43 = v7;
  v8 = v3[9];
  v55 = v3[8];
  *&v56 = v5;
  *(&v56 + 1) = v4;
  v57 = v45;
  v58 = v6;
  v59 = v53;
  v60 = v7;
  v61 = v55;
  v62 = v8;
  v47 = type metadata accessor for LinearSupportVectorClassifierModel.Storage(0, &v56);
  OUTLINED_FUNCTION_1();
  v49 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v42 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  v21 = *v0;
  v40 = *(v0 + 1);
  *&v56 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_237F03530;
  *(v22 + 32) = *(v21 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8, &qword_237F0F350);
  sub_237C96710(&qword_280C8CCE0, &qword_27DEB02F8, &qword_237F0F350, MEMORY[0x277D84268]);
  sub_237EF7E40();
  v51 = v14;
  v52 = v12;
  (*(v14 + 16))(v17, v20, v12);
  v41 = v8;
  v39 = v8;
  v23 = v48;
  v24 = v42;
  sub_237D08E98(v17, v46, v54, v45, v44, v53, v43, v55, v42, v39);
  v25 = *(v23 + 24);
  v26 = *(v23 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v23, v25);
  v27 = *(v26 + 8);
  v28 = v47;
  WitnessTable = swift_getWitnessTable();
  v30 = v50;
  v27(v24, v28, WitnessTable, v25, v26);
  v31 = OUTLINED_FUNCTION_7_24();
  v32(v31);
  if (v30)
  {
    (*(v51 + 8))(v20, v52);
  }

  else
  {
    v56 = v40;
    v33 = *(v23 + 24);
    v34 = *(v23 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v23, v33);
    v35 = v20;
    v36 = *(v34 + 8);
    v37 = type metadata accessor for LabelEncoder(0, v54, v53, v41);
    v38 = swift_getWitnessTable();
    v36(&v56, v37, v38, v33, v34);
    (*(v51 + 8))(v35, v52);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D08E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = 0;
  *(a9 + 1) = 0;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a8;
  v15[7] = a10;
  v12 = *(type metadata accessor for LinearSupportVectorClassifierModel.Storage(0, v15) + 84);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  return (*(*(v13 - 8) + 32))(&a9[v12], a1, v13);
}

void sub_237D08F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_13_4();
  v76 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v67 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_1();
  v74 = v40;
  v75 = v39;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19();
  v73 = v42;
  v77 = v35;
  v78 = v33;
  v69 = v33;
  v70 = v27;
  v79 = v31;
  v80 = v29;
  v81 = v27;
  v82 = v25;
  v71 = v25;
  v83 = v23;
  v84 = a21;
  v68 = a21;
  v43 = type metadata accessor for LinearSupportVectorClassifierModel.Storage(0, &v77);
  OUTLINED_FUNCTION_1();
  v72 = v44;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v45);
  v47 = &v67 - v46;
  v49 = *(v37 + 24);
  v48 = *(v37 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v37, v49);
  v50 = *(v48 + 8);
  WitnessTable = swift_getWitnessTable();
  v52 = v76;
  v50(v43, v43, WitnessTable, v49, v48);
  if (!v52)
  {
    (*(v74 + 16))(v73, &v47[*(v43 + 84)], v75);
    v53 = type metadata accessor for LabelEncoder(0, v69, v70, v68);
    v54 = *(v37 + 24);
    v55 = *(v37 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v37, v54);
    v56 = *(v55 + 8);
    v57 = swift_getWitnessTable();
    v56(&v77, v53, v53, v57, v54, v55);
    v58 = v78;
    v76 = v77;
    sub_237C96710(qword_280C8CD78, &qword_27DEAEA60, &unk_237F07350, MEMORY[0x277CBFD28]);
    v59 = v75;
    v60 = v73;
    v77 = sub_237EF7F50();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8, &qword_237F15D00);
    v62 = sub_237C96710(&qword_280C8CD38, &qword_27DEAECA8, &qword_237F15D00, MEMORY[0x277D83970]);
    sub_237D07114(&v77, v76, v58, v61, v67, v63, v64, v65, v66, v62);
    (*(v74 + 8))(v60, v59);
    (*(v72 + 8))(0, v43);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D092A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C5FFA4;

  return LinearSupportVectorClassifierModel.applied(to:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t sub_237D09370(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746867696577 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237D09434(char a1)
{
  if (a1)
  {
    return 0x73746867696577;
  }

  else
  {
    return 0x6C65646F6DLL;
  }
}

void sub_237D09468()
{
  OUTLINED_FUNCTION_13_4();
  v14 = v0;
  v3 = v2;
  v5 = v4[2];
  v15[0] = v4[1];
  v15[1] = v5;
  v6 = v4[4];
  v15[2] = v4[3];
  v15[3] = v6;
  type metadata accessor for LinearSupportVectorClassifierModel.Storage.CodingKeys(255, v15);
  OUTLINED_FUNCTION_1_34();
  swift_getWitnessTable();
  v7 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v13 - v11;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_237EFA1B0();
  LOBYTE(v15[0]) = 0;
  sub_237EF99D0();
  if (!v1)
  {
    LOBYTE(v15[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
    sub_237D0A15C(&qword_280C8CD70, MEMORY[0x277D83A08], MEMORY[0x277CBFD38]);
    sub_237EF9A70();
  }

  (*(v9 + 8))(v12, v7);
  OUTLINED_FUNCTION_12_6();
}

void sub_237D0962C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_13_4();
  v66 = v22;
  v67 = v21;
  v24 = v23;
  v76 = v23;
  v25 = v22;
  v27 = v26;
  v65 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v60 = v38;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_1();
  v59 = v39;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_19();
  v62 = v41;
  v68 = v35;
  v69 = v33;
  v70 = v31;
  v71 = v29;
  v72 = v27;
  v73 = v25;
  v74 = v24;
  v75 = a21;
  type metadata accessor for LinearSupportVectorClassifierModel.Storage.CodingKeys(255, &v68);
  OUTLINED_FUNCTION_1_34();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43_0();
  v64 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v61 = v42;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v43);
  v68 = v35;
  v69 = v33;
  v70 = v31;
  v71 = v29;
  v72 = v65;
  v73 = v66;
  v74 = v76;
  v75 = a21;
  v44 = type metadata accessor for LinearSupportVectorClassifierModel.Storage(0, &v68);
  OUTLINED_FUNCTION_1();
  v66 = v45;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v46);
  v48 = (&v58 - v47);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  v49 = v67;
  sub_237EFA190();
  if (v49)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v50 = v48;
    v67 = v44;
    v51 = v62;
    v52 = v63;
    LOBYTE(v68) = 0;
    *v50 = sub_237EF98D0();
    v50[1] = v53;
    LOBYTE(v68) = 1;
    sub_237D0A15C(&qword_280C8CD68, MEMORY[0x277D83A30], MEMORY[0x277CBFD48]);
    sub_237EF9970();
    v54 = OUTLINED_FUNCTION_3_35();
    v55(v54);
    v56 = v67;
    (*(v59 + 32))(v50 + *(v67 + 84), v51, v52);
    v57 = v66;
    (*(v66 + 16))(v60, v50, v56);
    __swift_destroy_boxed_opaque_existential_1(v37);
    (*(v57 + 8))(v50, v56);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D09A6C(uint64_t a1)
{
  sub_237EFA120();
  sub_237C5ED64(v3, *v1);
  return sub_237EFA170();
}

uint64_t sub_237D09B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D09370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D09B88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C787C4();
  *a1 = result;
  return result;
}

uint64_t sub_237D09BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D09C24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D09CD0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237D09D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18CreateMLComponents14OptimizerStateVySdGSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_237D09D68(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_237D09DA8(uint64_t result, int a2, int a3)
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
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237D09E34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB0300, &qword_237F0ADD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_237D09F64()
{
  result = qword_27DEADDB0[0];
  if (!qword_27DEADDB0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEADDA0, &qword_237F0A6B0);
    sub_237C85170();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEADDB0);
  }

  return result;
}

void sub_237D09FF0(uint64_t a1)
{
  sub_237D0A09C();
  if (v1 <= 0x3F)
  {
    sub_237D0A0EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237D0A09C()
{
  if (!qword_280C8CD50)
  {
    v0 = sub_237EF90F0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C8CD50);
    }
  }
}

void sub_237D0A0EC()
{
  if (!qword_280C8CD60)
  {
    v0 = sub_237EF7E90();
    if (!v1)
    {
      atomic_store(v0, &qword_280C8CD60);
    }
  }
}

uint64_t sub_237D0A15C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEA60, &unk_237F07350);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_237D0A1C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_31()
{

  return sub_237E5E170(v1, v2, v0, v4, v3);
}

uint64_t AudioReader.applied(to:eventHandler:)()
{
  sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_15_20(v1, v5);
  v3(v2);
  return OUTLINED_FUNCTION_25_11();
}

uint64_t static AudioReader.read(contentsOf:configuration:)()
{
  sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_15_20(v1, v5);
  v3(v2);
  return OUTLINED_FUNCTION_25_11();
}

uint64_t *static AudioReader.read<A>(_:configuration:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v79 = a2;
  v76 = type metadata accessor for AudioReader.AsyncBuffers(0);
  OUTLINED_FUNCTION_1();
  v66 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v74 = v10;
  MEMORY[0x28223BE20](v11);
  v78 = &v65 - v12;
  MEMORY[0x28223BE20](v13);
  v73 = &v65 - v14;
  v70 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v75 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v68 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v65 - v19;
  MEMORY[0x28223BE20](v21);
  v77 = &v65 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED68, &unk_237F07320);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v65 - v24;
  v71 = *(a3 - 8);
  MEMORY[0x28223BE20](v26);
  AssociatedConformanceWitness = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v65 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v65 - v30;
  v32 = *v79;
  v33 = sub_237EF8710();
  sub_237D0B8D4(0, v33 & ~(v33 >> 63), 0, MEMORY[0x277D84F90], sub_237E98844, type metadata accessor for AudioReader.AsyncBuffers, type metadata accessor for AudioReader.AsyncBuffers);
  v79 = v34;
  (*(v71 + 2))(AssociatedConformanceWitness, a1, a3);
  v71 = v31;
  sub_237EF86F0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v67 = (v75 + 4);
  v35 = (v75 + 2);
  ++v75;
  while (1)
  {
    sub_237EF91A0();
    v36 = v70;
    if (__swift_getEnumTagSinglePayload(v25, 1, v70) == 1)
    {
      (*(v65 + 8))(v71, AssociatedTypeWitness);
      return v79;
    }

    v37 = v77;
    v38 = v25;
    (*v67)(v77, v25, v36);
    v39 = *v35;
    (*v35)(v20, v37, v36);
    v40 = v78;
    v39(v78, v20, v36);
    *&v40[*(v76 + 24)] = v32;
    v41 = v68;
    v39(v68, v20, v36);
    v42 = objc_allocWithZone(MEMORY[0x277CB8398]);
    v43 = sub_237D0B204(v41);
    if (v5)
    {
      v64 = *v75;
      (*v75)(v20, v36);
      v64(v77, v36);
      (*(v65 + 8))(v71, AssociatedTypeWitness);
      v64(v78, v36);
      v63 = v79;

      return v63;
    }

    v44 = v43;
    v45 = [v43 length];

    v46 = *v75;
    v47 = v36;
    v48 = v20;
    v49 = v20;
    v50 = v47;
    result = (*v75)(v49);
    v52 = &v45[v32];
    if (__OFADD__(v45, v32))
    {
      break;
    }

    v53 = __OFSUB__(v52, 1);
    v54 = v52 - 1;
    if (v53)
    {
      goto LABEL_18;
    }

    if (!v32)
    {
      goto LABEL_19;
    }

    if (v54 == 0x8000000000000000 && v32 == -1)
    {
      goto LABEL_20;
    }

    v56 = v78;
    v57 = &v78[*(v76 + 20)];
    *v57 = v54 / v32;
    v57[8] = 0;
    v58 = v73;
    sub_237D0C5B0(v56, v73);
    sub_237D0C614(v58, v74);
    v60 = v79[2];
    v59 = v79[3];
    if (v60 >= v59 >> 1)
    {
      sub_237D0B8D4(v59 > 1, v60 + 1, 1, v79, sub_237E98844, type metadata accessor for AudioReader.AsyncBuffers, type metadata accessor for AudioReader.AsyncBuffers);
      v79 = v62;
    }

    sub_237D0C678(v73);
    v46(v77, v50);
    v61 = v79;
    v79[2] = v60 + 1;
    sub_237D0C5B0(v74, v61 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v60);
    v5 = 0;
    v20 = v48;
    v25 = v38;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t static AudioReader.read<A, B>(_:configuration:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a2;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = v9;
  v10 = type metadata accessor for AudioReader.AsyncBuffers(255);
  v12 = type metadata accessor for AnnotatedFeature(0, v10, a4, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return sub_237C8FFEC(sub_237D0C6D4, v15, a3, v12, v13, a5, MEMORY[0x277D84950], &v16);
}

uint64_t sub_237D0AC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X6>, uint64_t a5@<X8>)
{
  v47 = a4;
  v43 = a5;
  v44 = a3;
  v41 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_237EF5EF0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for AudioReader.AsyncBuffers(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v9 + 16);
  v42 = a1;
  v20 = a1;
  v22 = v21;
  v19(v14, v20, v8, v16);
  (v19)(v18, v14, v8);
  v23 = *(v22 + 24);
  v46 = a2;
  *&v18[v23] = a2;
  (v19)(v11, v14, v8);
  v24 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v25 = v48;
  v26 = sub_237D0B204(v11);
  if (v25)
  {
    v27 = *(v9 + 8);
    v27(v14, v8);
    result = (v27)(v18, v8);
    *v47 = v25;
    return result;
  }

  v29 = v26;
  v30 = v45;
  v31 = [v26 length];

  result = (*(v9 + 8))(v14, v8);
  v33 = &v31[v46];
  if (__OFADD__(v31, v46))
  {
    __break(1u);
    goto LABEL_13;
  }

  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v46)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v35 == 0x8000000000000000 && v46 == -1)
  {
    goto LABEL_15;
  }

  v37 = &v18[*(v22 + 20)];
  *v37 = v35 / v46;
  v37[8] = 0;
  v38 = v44;
  v39 = type metadata accessor for AnnotatedFeature(0, v8, v44, v32);
  (*(v41 + 16))(v30, v42 + *(v39 + 36), v38);
  return AnnotatedFeature.init(feature:annotation:)(v18, v30, v22, v38, v43);
}

uint64_t static AudioReader.readMicrophone(configuration:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = a1;
  v2[3] = v3;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_237D0B034;

  return sub_237C968DC();
}

uint64_t sub_237D0B034()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_237D0B164, 0, 0);
  }
}

uint64_t sub_237D0B184()
{
  AudioReader.applied(to:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

id sub_237D0B204(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_237EF5E50();
  v14[0] = 0;
  v5 = [v2 initForReading:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_237EF5EF0();
    OUTLINED_FUNCTION_4();
    v9 = *(v8 + 8);
    v10 = v6;
    v9(a1, v7);
  }

  else
  {
    v11 = v14[0];
    sub_237EF5DC0();

    swift_willThrow();
    sub_237EF5EF0();
    OUTLINED_FUNCTION_4();
    (*(v12 + 8))(a1);
  }

  return v5;
}

void sub_237D0B354()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_6_24();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400, &unk_237F106F0);
    v7 = OUTLINED_FUNCTION_30();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_35();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_20_14();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_237D0B424()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_6_24();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD420, &unk_237F0B090);
    v7 = OUTLINED_FUNCTION_30();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_3();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[v2 + 4] <= v7 + 4)
    {
      memmove(v7 + 4, v0 + 4, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD428, &qword_237F03140);
    OUTLINED_FUNCTION_19_17(v10);
  }
}

void sub_237D0B510()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_4_32();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0470, &qword_237F0B068);
    v7 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_8_28(v7);
    OUTLINED_FUNCTION_3_36(v8);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_13_15();
  if (v1)
  {
    if (v2 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_237D0B614()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_6_24();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0408, &qword_237F0AFC0);
    v7 = OUTLINED_FUNCTION_30();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_14_21();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_20_14();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_237D0B6E8()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_6_24();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418, &qword_237F0AFD0);
    v8 = OUTLINED_FUNCTION_26_10(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_22_15(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || v0 + 32 + 40 * v2 <= (v8 + 32))
    {
      memmove((v8 + 32), (v0 + 32), 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0420, &qword_237F0AFD8);
    OUTLINED_FUNCTION_19_17(v11);
  }
}

void sub_237D0B7D4()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_4_32();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0490, &qword_237F0B0C0);
    v7 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_8_28(v7);
    OUTLINED_FUNCTION_3_36(v8);
  }

  v9 = OUTLINED_FUNCTION_13_15();
  if (v1)
  {
    OUTLINED_FUNCTION_23_14();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_237D0B8D4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_7();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_25();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_237D0CF94(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_237D0B9C8()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_4_32();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0410, &qword_237F0AFC8);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_8_28(v7);
    OUTLINED_FUNCTION_3_36(v8);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_13_15();
  if (v1)
  {
    if (v2 != v0 || &v10[64 * v3] <= v9)
    {
      memmove(v9, v10, v3 << 6);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, v3 << 6);
  }
}

void sub_237D0BAA8()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_4_32();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    v9 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_8_28(v9);
    OUTLINED_FUNCTION_3_36(v10);
  }

  v11 = OUTLINED_FUNCTION_13_15();
  if (v1)
  {
    OUTLINED_FUNCTION_23_14();
    if (v16)
    {
      v17 = v15 > v13;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      memmove(v13, v14, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_237D0BB60()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_6_24();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0430, &unk_237F1CD00);
    v8 = OUTLINED_FUNCTION_26_10(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_22_15(v9);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_20_14();
  if (v1)
  {
    if (v8 != v0 || &v11[40 * v2] <= v10)
    {
      memmove(v10, v11, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_237D0BEC0()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_4_32();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0, &unk_237F07370);
    v7 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_8_28(v7);
    OUTLINED_FUNCTION_3_36(v8);
  }

  v9 = OUTLINED_FUNCTION_13_15();
  if (v1)
  {
    OUTLINED_FUNCTION_23_14();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_237D0BFC0()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_4_32();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD398, &unk_237F0B050);
    v7 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_8_28(v7);
    OUTLINED_FUNCTION_3_36(v8);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_13_15();
  if (v1)
  {
    if (v2 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

void sub_237D0C0AC()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_4_32();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD360, &qword_237F030C8);
    v7 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_8_28(v7);
    OUTLINED_FUNCTION_3_36(v8);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_13_15();
  if (v1)
  {
    if (v2 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

void sub_237D0C170()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_6_24();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3E0, &unk_237F0B0B0);
    v7 = OUTLINED_FUNCTION_30();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_35();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[2 * v2 + 4] <= v7 + 4)
    {
      memmove(v7 + 4, v0 + 4, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3E8, &qword_237F03128);
    OUTLINED_FUNCTION_19_17(v10);
  }
}

void sub_237D0C284(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t *a6, uint64_t *a7)
{
  if (a3)
  {
    OUTLINED_FUNCTION_7();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_25();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a6, a7) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_237D0CE78(a4 + v17, v14, v15 + v17, a6, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_237D0C4A8(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    OUTLINED_FUNCTION_7();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_25();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = OUTLINED_FUNCTION_30();
    _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_3();
    v17[2] = v15;
    v17[3] = v18;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v17 != a4 || &a4[v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 8 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_237D0C5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioReader.AsyncBuffers(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D0C614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioReader.AsyncBuffers(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D0C678(uint64_t a1)
{
  v2 = type metadata accessor for AudioReader.AsyncBuffers(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_237D0C734()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_6_24();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0488, &qword_237F0B0A8);
    v7 = OUTLINED_FUNCTION_30();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_14_21();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_20_14();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_237D0C804()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_4_32();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD408, &qword_237F0B070);
    v7 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_8_28(v7);
    OUTLINED_FUNCTION_3_36(v8);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_13_15();
  v11 = 16 * v3;
  if (v1)
  {
    if (v2 != v0 || &v10[v11] <= v9)
    {
      memmove(v9, v10, v11);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, v11);
  }
}

void sub_237D0C8C4()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_6_24();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3F0, &qword_237F0B080);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_20_14();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_237D0C994()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_4_32();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0478, &qword_237F0B078);
    v7 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_8_28(v7);
    OUTLINED_FUNCTION_3_36(v8);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_13_15();
  if (v1)
  {
    if (v2 != v0 || &v10[32 * v3] <= v9)
    {
      memmove(v9, v10, 32 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 32 * v3);
  }
}

void sub_237D0CA58()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_4_32();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0480, &qword_237F0B088);
    v7 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_8_28(v7);
    OUTLINED_FUNCTION_3_36(v8);
  }

  v9 = OUTLINED_FUNCTION_13_15();
  if (v1)
  {
    OUTLINED_FUNCTION_23_14();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_237D0CB18()
{
  OUTLINED_FUNCTION_12_22();
  if (v4)
  {
    OUTLINED_FUNCTION_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  OUTLINED_FUNCTION_4_32();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0468, &qword_237F0B060);
    v7 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_8_28(v7);
    OUTLINED_FUNCTION_3_36(v8);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_13_15();
  if (v1)
  {
    if (v2 != v0 || &v10[2 * v3] <= v9)
    {
      memmove(v9, v10, 2 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 2 * v3);
  }
}

char *sub_237D0CC1C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

char *sub_237D0CC58(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

char *sub_237D0CC78(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

char *sub_237D0CCD0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[152 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

char *sub_237D0CE28(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[12 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

char *sub_237D0CE50(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

void sub_237D0CE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_21_16();
  if (v10 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_4(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v12 = OUTLINED_FUNCTION_10_26();

      MEMORY[0x2821FE820](v12);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v13 = OUTLINED_FUNCTION_10_26();

    MEMORY[0x2821FE828](v13);
  }
}

char *sub_237D0CF58(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_17_18(a3, result, a2);
  }

  return result;
}

void sub_237D0CF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_21_16();
  if (v8 && (a4(0), OUTLINED_FUNCTION_4(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = OUTLINED_FUNCTION_10_26();

      MEMORY[0x2821FE820](v10);
    }
  }

  else
  {
    a4(0);
    v11 = OUTLINED_FUNCTION_10_26();

    MEMORY[0x2821FE828](v11);
  }
}

uint64_t OUTLINED_FUNCTION_19_17(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_22_15(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_11()
{

  return sub_237D9A0D4(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_26_10(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t AnyTemporalSequence.init<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  *(a5 + 24) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  (*(v11 + 16))(boxed_opaque_existential_1, a1, a3);
  *(a5 + 32) = (*(a4 + 24))(a3, a4);
  *(a5 + 40) = v17 & 1;
  v18 = *(v11 + 32);
  v18(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v19 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  result = (v18)(v20 + v19, &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *(a5 + 48) = sub_237D0DD28;
  *(a5 + 56) = v20;
  return result;
}

uint64_t AnyTemporalIterator.next()(uint64_t a1)
{
  v7 = (*v1 + **v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v2 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_237C6A904;

  return v7(a1);
}

uint64_t sub_237D0D458(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v3[7] = v4;
  v5 = OUTLINED_FUNCTION_27_0();
  v3[8] = v5;
  v9 = OUTLINED_FUNCTION_8_29(v5, v6, v7, v8, MEMORY[0x277D85640]);
  v3[9] = v9;
  v3[10] = *(v9 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  sub_237EF90F0();
  v3[13] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v3[14] = v10;
  v11 = OUTLINED_FUNCTION_27_0();
  v3[15] = v11;
  v15 = OUTLINED_FUNCTION_8_29(v11, v12, v13, v14, MEMORY[0x277D85620]);
  v3[16] = v15;
  v3[17] = *(v15 - 8);
  v3[18] = OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](sub_237D0D674, 0, 0);
}

uint64_t sub_237D0D674()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[5];
  v4 = v0[3];
  v0[2] = sub_237EF8110();
  (*(v2 + 16))(v1, v3, v4);
  sub_237EF8BC0();
  v0[19] = swift_getAssociatedConformanceWitness();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[20] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_26(v5);

  return MEMORY[0x282200310](v7);
}

uint64_t sub_237D0D764()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  if (v0)
  {

    v7 = sub_237D0DA0C;
  }

  else
  {
    v7 = sub_237D0D864;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237D0D864()
{
  v1 = v0[13];
  v2 = v0[6];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v3 = v0[2];

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v1, v2);
    sub_237EF8A60();
    sub_237EF8A20();
    v0[19] = swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[20] = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_0_26(v6);

    return MEMORY[0x282200310](v8);
  }
}

uint64_t sub_237D0DA0C()
{
  v1 = *(v0[10] + 32);
  v1(v0[11], v0[12], v0[9]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_237EF9CD0();
  v3 = v0[11];
  if (v2)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
  }

  else
  {
    v4 = v0[9];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[17] + 8))(v0[18], v0[16]);

  OUTLINED_FUNCTION_3_0();

  return v6();
}

void *sub_237D0DB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v20 - v13;
  (*(v8 + 16))(v10, a1, a3, v12);
  sub_237EF8BC0();
  v17 = type metadata accessor for TemporalFeature(0, a2, v15, v16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_237D0DD40(v14, v17, AssociatedTypeWitness, AssociatedConformanceWitness, a4);
}

void *sub_237D0DD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocBox();
  (*(*(a3 - 8) + 32))(v11, a1, a3);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = v10;
  *a5 = &unk_237F0B290;
  a5[1] = result;
  return result;
}

uint64_t AnyTemporalSequence.init<A>(_:count:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  *(a7 + 24) = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7);
  (*(v15 + 16))(boxed_opaque_existential_1, a1, a5);
  *(a7 + 32) = a2;
  *(a7 + 40) = a3 & 1;
  v21 = *(v15 + 32);
  v21(&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5);
  v22 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  result = (v21)(v23 + v22, &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
  *(a7 + 48) = sub_237D0E16C;
  *(a7 + 56) = v23;
  return result;
}

void *sub_237D0DF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v21 - v14;
  (*(v9 + 16))(v11, a1, a3, v13);
  sub_237EF8BC0();
  v18 = type metadata accessor for TemporalFeature(0, a2, v16, v17);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_237D0DD40(v15, v18, AssociatedTypeWitness, AssociatedConformanceWitness, a5);
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_237D0E1E8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237D0E240(uint64_t a1)
{
  AnyTemporalSequence.makeAsyncIterator()();
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t sub_237D0E2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v5[8] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_237D0E314, 0, 0);
}

uint64_t sub_237D0E314()
{
  OUTLINED_FUNCTION_2_0();
  swift_beginAccess();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[9] = v1;
  *v1 = v2;
  v1[1] = sub_237D0E3BC;
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[6];

  return MEMORY[0x282200308](v4, v5, v3);
}

uint64_t sub_237D0E3BC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_237D0E4DC, 0, 0);
  }

  else
  {
    swift_endAccess();
    OUTLINED_FUNCTION_3_0();

    return v7();
  }
}

uint64_t sub_237D0E4DC()
{
  OUTLINED_FUNCTION_2_0();
  swift_endAccess();
  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237D0E538(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237C6B728;

  return AnyTemporalIterator.next()(a1);
}

uint64_t sub_237D0E5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_237D0E6A4;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_237D0E6A4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237D0E794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D0E7D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_237D0E810(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_237D0E878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D0E8CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_237C6A904;

  return sub_237D0E2A0(a1, v6, v4, v5, v7);
}

uint64_t OUTLINED_FUNCTION_8_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t ModelMetadata.description.setter()
{
  OUTLINED_FUNCTION_1_35();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ModelMetadata.version.setter()
{
  OUTLINED_FUNCTION_1_35();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ModelMetadata.author.setter()
{
  OUTLINED_FUNCTION_1_35();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ModelMetadata.license.setter()
{
  OUTLINED_FUNCTION_1_35();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ModelMetadata.creatorDefined.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

void __swiftcall ModelMetadata.init(description:version:author:license:creatorDefined:)(CreateMLComponents::ModelMetadata *__return_ptr retstr, Swift::String description, Swift::String version, Swift::String author, Swift::String license, Swift::OpaquePointer creatorDefined)
{
  object = license._object;
  countAndFlagsBits = license._countAndFlagsBits;
  v8 = author._object;
  v9 = author._countAndFlagsBits;
  v10 = version._object;
  v11 = version._countAndFlagsBits;
  v12 = description._object;
  v13 = description._countAndFlagsBits;
  sub_237EF8230();

  retstr->description._countAndFlagsBits = v13;
  retstr->description._object = v12;
  retstr->version._countAndFlagsBits = v11;
  retstr->version._object = v10;
  retstr->author._countAndFlagsBits = v9;
  retstr->author._object = v8;
  retstr->license._countAndFlagsBits = countAndFlagsBits;
  retstr->license._object = object;
  retstr->creatorDefined = creatorDefined;
}

uint64_t static ModelMetadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v19 = a1[7];
  v20 = a1[6];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v17 = a2[8];
  v18 = a1[8];
  if (!v12 && (sub_237EF9D40() & 1) == 0)
  {
    return 0;
  }

  v13 = v2 == v6 && v3 == v7;
  if (!v13 && (sub_237EF9D40() & 1) == 0)
  {
    return 0;
  }

  v14 = v4 == v8 && v5 == v9;
  if (!v14 && (sub_237EF9D40() & 1) == 0)
  {
    return 0;
  }

  v15 = v20 == v10 && v19 == v11;
  if (!v15 && (sub_237EF9D40() & 1) == 0)
  {
    return 0;
  }

  return sub_237D0F01C(v18, v17);
}

BOOL sub_237D0EE18(_BOOL8 result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
LABEL_13:
    v14 = v10 | (v4 << 6);
    v15 = *(*(v3 + 48) + 16 * v14 + 8);
    v16 = *(v3 + 56) + 40 * v14;
    v18 = *v16;
    v17 = *(v16 + 8);
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v21 = *(v16 + 32);
    sub_237EF8260();
    sub_237EF8260();
    if (!v15)
    {
      return v15 == 0;
    }

    v35 = v11;
    v22 = v3;
    v23 = sub_237D30F88();
    v25 = v24;

    if ((v25 & 1) == 0)
    {

      return 0;
    }

    v26 = *(a2 + 56) + 40 * v23;
    v28 = *(v26 + 16);
    v27 = *(v26 + 24);
    v29 = *(v26 + 32);
    if (*v26 == v18 && v17 == *(v26 + 8))
    {

      v33 = v28 == v20 && v27 == v19 && v29 == v21;
      v3 = v22;
    }

    else
    {
      v31 = sub_237EF9D40();

      if ((v31 & 1) == 0)
      {
        return v15 == 0;
      }

      v3 = v22;
      v33 = v28 == v20 && v27 == v19 && v29 == v21;
    }

    v8 = v35;
    result = v15 == 0;
    if (!v33)
    {
      return result;
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237D0F01C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v24 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = *(*(result + 48) + 16 * v12);
    v15 = (*(result + 56) + 16 * v12);
    v17 = *v15;
    v16 = v15[1];
    sub_237EF8260();
    sub_237EF8260();
    v18 = sub_237D2FC30(v14);
    v20 = v19;

    if ((v20 & 1) == 0)
    {

      return 0;
    }

    v21 = (*(a2 + 56) + 16 * v18);
    if (*v21 == v17 && v21[1] == v16)
    {

      result = v13;
      v7 = v24;
    }

    else
    {
      v23 = sub_237EF9D40();

      result = v13;
      v7 = v24;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v24 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ModelMetadata.hash(into:)(uint64_t a1)
{
  sub_237EF8610();
  sub_237EF8610();
  sub_237EF8610();
  sub_237EF8610();
  v1 = OUTLINED_FUNCTION_36();

  return sub_237D0F3C8(v1, v2);
}

uint64_t ModelMetadata.hashValue.getter()
{
  v1 = *(v0 + 64);
  sub_237EFA120();
  sub_237EF8610();
  sub_237EF8610();
  sub_237EF8610();
  sub_237EF8610();
  sub_237D0F3C8(v3, v1);
  return sub_237EFA170();
}

uint64_t sub_237D0F310(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_237EFA120();
  sub_237EF8610();
  sub_237EF8610();
  sub_237EF8610();
  sub_237EF8610();
  sub_237D0F3C8(v4, v2);
  return sub_237EFA170();
}

uint64_t sub_237D0F3C8(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_237EF8260();
  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x2383E2210](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        memcpy(__dst, a1, sizeof(__dst));
        sub_237EF8260();
        sub_237EF8260();
        sub_237EF8610();

        sub_237EF8610();

        result = sub_237EFA170();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_237D0F52C()
{
  result = qword_27DEB05A8;
  if (!qword_27DEB05A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB05A8);
  }

  return result;
}

uint64_t sub_237D0F588(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_237D0F5C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Transformer.export(to:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for CoreMLPackage(0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  (*(v13 + 16))(v12 - v11, v2, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB05B0, &qword_237F0B378);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v20, &v22);
    v14 = v24;
    v15 = v25;
    __swift_project_boxed_opaque_existential_1(&v22, v24);
    (*(v15 + 8))(v14, v15);
    if (!v3)
    {
      sub_237E33BC0(a1);
      sub_237D0F8BC(v9);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_237D0F854(v20);
    type metadata accessor for SerializationError(0);
    sub_237CA2D6C();
    swift_allocError();
    v18 = v17;
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_237EF9CF0();
    v19 = v23;
    *v18 = v22;
    v18[1] = v19;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_237D0F854(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB05B8, &qword_237F0B380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D0F8BC(uint64_t a1)
{
  v2 = type metadata accessor for CoreMLPackage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Transformer.export(to:metadata:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v31 = a1;
  v8 = type metadata accessor for CoreMLPackage(0);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = a2[8];
  (*(v16 + 16))(v14 - v13, v5, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB05B0, &qword_237F0B378);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v25, &v27);
    v17 = v29;
    v18 = v30;
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    (*(v18 + 8))(v17, v18);
    if (!v4)
    {
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF7770();
      sub_237EF7800();
      sub_237EF77C0();
      sub_237EF77E0();
      v19 = sub_237EF7780();
      sub_237C9FB0C(v15, sub_237C9FE58, 0, v20);
      v19(v25, 0);
      sub_237E33BC0(v31);
      sub_237D0F8BC(v11);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_237D0F854(v25);
    type metadata accessor for SerializationError(0);
    sub_237CA2D6C();
    swift_allocError();
    v23 = v22;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_237EF9CF0();
    v24 = v28;
    *v23 = v27;
    v23[1] = v24;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

void sub_237D0FC4C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 8);
  v9 = *(v8 + 16);
  if (v9)
  {
    v6 = a1;
    v7 = a2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_237E642C0(v8, a3, a4, a5);
  v8 = v12;
LABEL_3:
  v10 = v6 % v9;
  if (v6 % v9 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = *(v8 + 16);
  if (v10 >= v11)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v8 + 8 * v10 + 32) = v7;
  *(v5 + 8) = v8;
  if (v11 <= v6)
  {
    sub_237E610D0(v8, v5, v7);
  }
}

void Collection<>.mean()()
{
  OUTLINED_FUNCTION_37_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_30();
  if (sub_237EF8DD0())
  {
    sub_237EF9790();
  }

  else
  {
    Collection<>.sum()();
    sub_237EF8DA0();
    sub_237EF83A0();
    sub_237EF8330();
    v9 = *(v3 + 8);
    v9(v7, AssociatedTypeWitness);
    v9(v0, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_38_0();
}

void Sequence<>.mean()()
{
  OUTLINED_FUNCTION_37_0();
  v80 = v0;
  v2 = v1;
  v4 = v3;
  v65 = v5;
  v78 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43_3();
  v8 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v81 = &v63 - v10;
  OUTLINED_FUNCTION_1_1();
  v79 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v77 = v14 - v13;
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v64 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  v63 = v2;
  v20 = *(*(v2 + 16) + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_1();
  v73 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_26();
  v70 = v24 - v25;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_16();
  v69 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_16();
  v68 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8_16();
  v67 = v31;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8_16();
  v71 = v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_13_16();
  MEMORY[0x28223BE20](v35);
  v37 = &v63 - v36;
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v74 = v37;
  sub_237EF9D20();
  v38 = *(v20 + 8);
  v39 = AssociatedTypeWitness;
  v75 = v2;
  v66 = v38;
  sub_237EF9790();
  (*(v79 + 16))(v77, v80, v4);
  v76 = v19;
  sub_237EF86F0();
  v77 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = 0;
  v80 = (v73 + 4);
  v72 = AssociatedConformanceWitness;
  ++v73;
  v42 = v71;
  v43 = v69;
  while (1)
  {
    v44 = v81;
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v44, 1, v39) == 1)
    {
      break;
    }

    v78 = *v80;
    v78(v42, v81, v39);
    v45 = v67;
    v79 = v41;
    v46 = v75;
    v47 = v39;
    sub_237EF9760();
    v48 = v68;
    v49 = v74;
    OUTLINED_FUNCTION_12_23();
    sub_237EF9750();
    v50 = v70;
    sub_237EF9760();
    OUTLINED_FUNCTION_12_23();
    sub_237EF9760();
    v51 = *v73;
    (*v73)(v50, v47);
    v51(v45, v47);
    v51(v42, v47);
    v51(v46, v47);
    v51(v49, v47);
    v52 = v46;
    v54 = v78;
    v53 = v79;
    v78(v52, v43, v47);
    v55 = v48;
    v39 = v47;
    v54(v49, v55, v47);
    v56 = __OFADD__(v53, 1);
    v41 = v53 + 1;
    if (v56)
    {
      __break(1u);
      break;
    }
  }

  (*(v64 + 8))(v76, v77);
  if (v41)
  {
    v57 = v71;
    sub_237EF83A0();
    v58 = v65;
    v59 = v74;
    sub_237EF8330();
    v60 = *v73;
    (*v73)(v57, v39);
    v60(v75, v39);
    v60(v59, v39);
    v61 = 0;
  }

  else
  {
    v62 = *v73;
    (*v73)(v75, v39);
    v62(v74, v39);
    v61 = 1;
    v58 = v65;
  }

  __swift_storeEnumTagSinglePayload(v58, v61, 1, v39);
  OUTLINED_FUNCTION_38_0();
}

void Collection<>.sum()()
{
  OUTLINED_FUNCTION_37_0();
  v61 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43_3();
  v10 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_1_1();
  v60 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v47 = v18;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  OUTLINED_FUNCTION_1_1();
  v58 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_26();
  v55 = v24 - v25;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_16();
  v54 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_16();
  v52 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8_16();
  v51 = v31;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8_16();
  v50 = v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8_30();
  v35 = *(*(*(v4 + 16) + 8) + 8);
  v56 = v8;
  sub_237EF9790();
  v62 = v1;
  v49 = v35;
  sub_237EF9790();
  (*(v60 + 16))(v16, v61, v6);
  v59 = v21;
  sub_237EF86F0();
  v60 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = (v58 + 4);
  v57 = AssociatedConformanceWitness;
  ++v58;
  v53 = v2;
  v37 = v51;
  v38 = v54;
  while (1)
  {
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v2, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    v61 = *v48;
    v39 = v50;
    v61(v50, v2, AssociatedTypeWitness);
    sub_237EF9760();
    v40 = v52;
    v41 = v56;
    sub_237EF9750();
    v42 = v55;
    sub_237EF9760();
    sub_237EF9760();
    v43 = *v58;
    (*v58)(v42, AssociatedTypeWitness);
    v43(v37, AssociatedTypeWitness);
    v43(v39, AssociatedTypeWitness);
    v44 = v62;
    v43(v62, AssociatedTypeWitness);
    v43(v41, AssociatedTypeWitness);
    v45 = v61;
    v61(v44, v38, AssociatedTypeWitness);
    v46 = v41;
    v2 = v53;
    v45(v46, v40, AssociatedTypeWitness);
  }

  (*(v47 + 8))(v59, v60);
  (*v58)(v62, AssociatedTypeWitness);
  OUTLINED_FUNCTION_38_0();
}

void sub_237D10984()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v35 = *(*(v0 + 16) + 8);
  v4 = *(v35 + 16);
  swift_getAssociatedTypeWitness();
  v38 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v34 = v32 - v6;
  v7 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1_1();
  v37 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26();
  v33 = v10 - v11;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  v14 = v32 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v32 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v32 - v19;
  if ((sub_237EF8DD0() & 1) == 0)
  {
    v32[1] = v1;
    sub_237EF8850();
    v21 = sub_237EF8DA0();
    if (__OFSUB__(v21, 1))
    {
      __break(1u);
    }

    else
    {
      v22 = vcvts_n_f32_s64(v21 - 1, 1uLL);
      v23 = floorf(v22);
      if ((LODWORD(v23) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (v23 > -9.2234e18)
        {
          if (v23 < 9.2234e18)
          {
            v24 = ceilf(v22);
            if ((LODWORD(v24) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              if (v24 > -9.2234e18)
              {
                if (v24 < 9.2234e18)
                {
                  if (v23 != v24)
                  {
                    OUTLINED_FUNCTION_14_22();
                    sub_237EF8AC0();
                    OUTLINED_FUNCTION_14_22();
                    sub_237EF8AC0();

                    sub_237EF9750();
                    swift_getAssociatedConformanceWitness();
                    sub_237EF9FB0();
                    v30 = v33;
                    sub_237EF9D20();
                    OUTLINED_FUNCTION_14_22();
                    sub_237EF8330();
                    v31 = *(v37 + 8);
                    v31(v30, v7);
                    v31(v14, v7);
                    v31(v17, v7);
                    v31(v20, v7);
                    __swift_storeEnumTagSinglePayload(v3, 0, 1, v7);
                    OUTLINED_FUNCTION_38_0();
                    return;
                  }

                  if ((LODWORD(v22) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                  {
                    if (v22 > -9.2234e18)
                    {
                      if (v22 < 9.2234e18)
                      {
                        OUTLINED_FUNCTION_14_22();
                        sub_237EF8AC0();

                        goto LABEL_14;
                      }

LABEL_27:
                      __break(1u);
                      return;
                    }

LABEL_26:
                    __break(1u);
                    goto LABEL_27;
                  }

LABEL_25:
                  __break(1u);
                  goto LABEL_26;
                }

LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  OUTLINED_FUNCTION_38_0();

  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

void sub_237D10DA8()
{
  OUTLINED_FUNCTION_37_0();
  v39 = v0;
  v2 = v1;
  v4 = v3;
  v43 = v5;
  v35 = *(v6 + 8);
  v7 = v35;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v38 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v17);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  OUTLINED_FUNCTION_1_1();
  v36 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v34 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v37 = v26;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_18();
  v41 = *(v2 + 16);
  v42 = v2;
  v40 = *(v41 + 8);
  OUTLINED_FUNCTION_43_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_23();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  sub_237EF9D20();
  (*(v36 + 16))(v25, v39, v4);
  v29 = v7;
  sub_237EF86F0();
  v30 = v34;
  swift_getAssociatedConformanceWitness();
  v31 = (v38 + 32);
  v32 = (v38 + 8);
  while (1)
  {
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v20, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v31)(v16, v20, AssociatedTypeWitness);
    sub_237EF9FD0();
    sub_237EF9770();
    v33 = *v32;
    (*v32)(v13, AssociatedTypeWitness);
    v33(v16, AssociatedTypeWitness);
  }

  (*(v37 + 8))(v29, v30);
  OUTLINED_FUNCTION_38_0();
}

void sub_237D11194()
{
  OUTLINED_FUNCTION_37_0();
  v45 = v0;
  v4 = v3;
  v6 = v5;
  v41 = v7;
  v38 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  OUTLINED_FUNCTION_1_1();
  v39 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  v37 = v17 - v16;
  OUTLINED_FUNCTION_43_3();
  v36 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v40 = v18;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_18();
  v20 = *(*(v4 + 16) + 8);
  v42 = v4;
  v43 = v20;
  OUTLINED_FUNCTION_43_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_1();
  v35 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_26();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_13_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_12_23();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v44 = v1;
  sub_237EF9D20();
  (*(v39 + 16))(v37, v45, v6);
  v45 = v2;
  sub_237EF86F0();
  v29 = v36;
  swift_getAssociatedConformanceWitness();
  v30 = (v35 + 32);
  v31 = (v35 + 8);
  while (1)
  {
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v13, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v30)(v4, v13, AssociatedTypeWitness);
    sub_237EF8D30();
    sub_237EF9770();
    v32 = *v31;
    (*v31)(v26, AssociatedTypeWitness);
    v32(v4, AssociatedTypeWitness);
  }

  (*(v40 + 8))(v45, v29);
  v33 = v44;
  sub_237EF8320();
  (*v31)(v33, AssociatedTypeWitness);
  OUTLINED_FUNCTION_38_0();
}

uint64_t ImputeTransformer.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = a3 + *(type metadata accessor for ImputeTransformer(0, a2, a4, a5) + 44);
  result = (*(*(a2 - 8) + 32))(a3, a1, a2);
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t ImputeTransformer.applied(to:eventHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  (*(v9 + 16))(&v15 - v12, a1, v7, v11);
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) != 1)
  {
    return (*(*(v6 - 8) + 32))(a3, v13, v6);
  }

  ImputeTransformer.value.getter(a2, a3);
  result = __swift_getEnumTagSinglePayload(v13, 1, v6);
  if (result != 1)
  {
    return (*(v9 + 8))(v13, v7);
  }

  return result;
}

uint64_t sub_237D1187C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237D11944(char a1)
{
  if (a1)
  {
    return 0x746E756F63;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_237D119AC(uint64_t a1)
{
  sub_237EFA120();
  sub_237C5ED64(v3, *v1);
  return sub_237EFA170();
}

uint64_t sub_237D11A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D1187C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D11A6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C787C4();
  *a1 = result;
  return result;
}

uint64_t sub_237D11AA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D11AF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ImputeTransformer.encode(to:)(void *a1, void *a2)
{
  v13 = a2[2];
  v3 = a2[3];
  v12 = a2[4];
  type metadata accessor for ImputeTransformer.CodingKeys(255, v13, v3, v12);
  OUTLINED_FUNCTION_3_37();
  swift_getWitnessTable();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  v16 = 0;
  v10 = v14;
  sub_237EF9A70();
  if (!v10)
  {
    v15 = 1;
    sub_237EF99F0();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t ImputeTransformer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a5;
  OUTLINED_FUNCTION_1_1();
  v42 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v46 = v13 - v12;
  type metadata accessor for ImputeTransformer.CodingKeys(255, v14, v15, v16);
  OUTLINED_FUNCTION_3_37();
  swift_getWitnessTable();
  v45 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v41 = v17;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_9_19();
  v43 = a2;
  v44 = a3;
  v20 = type metadata accessor for ImputeTransformer(v19, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  v39 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = v47;
  sub_237EFA190();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v24;
  v47 = a1;
  v38 = v20;
  v28 = v41;
  v27 = v42;
  v49 = 0;
  v29 = v45;
  v30 = v43;
  sub_237EF9970();
  (*(v27 + 32))(v26, v46, v30);
  v48 = 1;
  v31 = sub_237EF98F0();
  v32 = v38;
  v33 = &v26[*(v38 + 44)];
  v34 = *(v28 + 8);
  LOBYTE(v28) = v35;
  v34(v5, v29);
  *v33 = v31;
  v33[8] = v28 & 1;
  v36 = v39;
  (*(v39 + 16))(v40, v26, v32);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return (*(v36 + 8))(v26, v32);
}

uint64_t sub_237D12044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ImputeTransformer.applied(to:eventHandler:)(a2, a5, a1);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t ImputeTransformer.debugDescription.getter(uint64_t a1)
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000019, 0x8000000237EFD660);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t static ImputeTransformer<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_237EF8520() & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for ImputeTransformer(0, a3, a4, a5) + 44);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ImputeTransformer<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237EF83E0();
  v5 = (v3 + *(a2 + 44));
  if (*(v5 + 8) == 1)
  {
    return sub_237EFA140();
  }

  v7 = *v5;
  sub_237EFA140();
  return MEMORY[0x2383E2210](v7);
}

uint64_t ImputeTransformer<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_237EFA120();
  ImputeTransformer<>.hash(into:)(v5, a1, a2);
  return sub_237EFA170();
}

uint64_t sub_237D1230C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_237EFA120();
  ImputeTransformer<>.hash(into:)(v6, a2, v4);
  return sub_237EFA170();
}

uint64_t sub_237D123A8@<X0>(uint64_t a2@<X8>)
{
  v91 = a2;
  v93 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v92 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v99 = v6 - v5;
  v89 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v88 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v87 = v10 - v9;
  v98 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v90 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26();
  v97 = v13 - v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  v102 = &v84 - v16;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v18 = sub_237EF7110();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  v24 = (v23 - v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB06C8, &unk_237F0B630);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_19();
  v101 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v94 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_26();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v84 - v32;
  v96 = sub_237EF7140();
  OUTLINED_FUNCTION_1();
  v95 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5();
  v100 = v37 - v36;
  if (swift_dynamicCastMetatype())
  {
    v38 = sub_237EF7120();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v38);
    v39 = OUTLINED_FUNCTION_7_25();
    v41 = v40(v39);
    OUTLINED_FUNCTION_10_27(v41, v42, v43, MEMORY[0x277D837D0]);
    v44 = __dst[1];
    *v24 = __dst[0];
    v24[1] = v44;
    (*(v20 + 104))(v24, *MEMORY[0x277D251D8], v18);
    sub_237EF7130();
    sub_237EF6DB0();
    v45 = MEMORY[0x277D25130];
    v46 = v33;
  }

  else
  {
    *&v84 = v18;
    if (!swift_dynamicCastMetatype())
    {
      type metadata accessor for SerializationError(0);
      sub_237CA2D6C();
      swift_allocError();
      v81 = v80;
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000043, 0x8000000237EFD680);
      v82 = sub_237EFA220();
      MEMORY[0x2383E0710](v82);

      MEMORY[0x2383E0710](46, 0xE100000000000000);
      v83 = __dst[1];
      *v81 = __dst[0];
      v81[1] = v83;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v47 = sub_237EF7120();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v47);
    v48 = OUTLINED_FUNCTION_7_25();
    v50 = v49(v48);
    OUTLINED_FUNCTION_10_27(v50, v51, v52, MEMORY[0x277D839F8]);
    *v24 = __dst[0];
    (*(v20 + 104))(v24, *MEMORY[0x277D251D0], v84);
    sub_237EF7130();
    v46 = v33;
    sub_237EF6DA0();
    v45 = MEMORY[0x277D25128];
  }

  v53 = v94;
  (*(v94 + 104))(v46, *v45, v101);
  sub_237EF7720();
  sub_237EF7620();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
  sub_237EF70E0();
  v54 = swift_allocObject();
  v84 = xmmword_237F03530;
  *(v54 + 16) = xmmword_237F03530;
  v55 = *(v53 + 16);
  v85 = v46;
  v56 = v101;
  v55(v30, v46, v101);
  sub_237EF7090();
  v57 = v102;
  sub_237EF76B0();
  *(swift_allocObject() + 16) = v84;
  v55(v30, v46, v56);
  sub_237EF7090();
  sub_237EF7700();
  v58 = v87;
  (*(v95 + 16))(v87, v100, v96);
  (*(v88 + 104))(v58, *MEMORY[0x277D253C0], v89);
  sub_237EF7660();
  v59 = v90;
  v60 = *(v90 + 16);
  v61 = v97;
  v62 = v98;
  v60(v97, v57, v98);
  v63 = v99;
  sub_237EF7810();
  v64 = type metadata accessor for CoreMLPackage(0);
  v65 = v91;
  v66 = v91 + *(v64 + 24);
  *(v66 + 80) = 0;
  *(v66 + 48) = 0u;
  *(v66 + 64) = 0u;
  *(v66 + 16) = 0u;
  *(v66 + 32) = 0u;
  *v66 = 0u;
  v60(v65, v61, v62);
  memcpy(__dst, v66, sizeof(__dst));
  sub_237C9BD20(__dst);
  *v66 = 0u;
  *(v66 + 16) = 0u;
  *(v66 + 32) = 0u;
  *(v66 + 48) = 0u;
  *(v66 + 64) = 0u;
  *(v66 + 80) = 0;
  v67 = v92;
  v68 = v63;
  v69 = v93;
  (*(v92 + 16))(v65 + *(v64 + 20), v68, v93);
  v70 = sub_237E34060();
  v72 = v71;
  v73 = sub_237EF7780();
  v75 = v74;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v75;
  sub_237C91098(v70, v72, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
  *v75 = v105;
  v73(v103, 0);
  (*(v67 + 8))(v99, v69);
  v77 = *(v59 + 8);
  v78 = v98;
  v77(v97, v98);
  v77(v102, v78);
  (*(v94 + 8))(v85, v101);
  return (*(v95 + 8))(v100, v96);
}

void sub_237D12D80(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_237D130D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unsigned __int8 *sub_237D12E08(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v7 = (a2 - v5 + 255) >> 8;
    if (v6 <= 3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v9 = 1;
    }

    if (v8 >= 2)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    switch(v10)
    {
      case 1:
        v11 = result[v6];
        if (result[v6])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v11 = *&result[v6];
        if (*&result[v6])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v11 = *&result[v6];
        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_18:
        v12 = (v11 - 1) << (8 * v6);
        if (v6 <= 3)
        {
          v13 = *result;
        }

        else
        {
          v12 = 0;
          v13 = *result;
        }

        return (v5 + (v13 | v12) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(result, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(result, v5, v4);
}

void sub_237D12F24(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
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
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_27;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    bzero(a1, v8);
    if (v8 <= 3)
    {
      v14 = (v13 >> 8) + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v13;
    }

    else
    {
      *a1 = v13;
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
        goto LABEL_35;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

void sub_237D130D4()
{
  if (!qword_27DEB0640[0])
  {
    v0 = sub_237EF90F0();
    if (!v1)
    {
      atomic_store(v0, qword_27DEB0640);
    }
  }
}

_BYTE *sub_237D13124(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237D13244(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a3;
  v62 = a5;
  v65 = a1;
  v58 = a2;
  v6 = *(a2 + 16);
  v7 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v68 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = v52 - v10;
  sub_237EF90F0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = v52 - v13;
  OUTLINED_FUNCTION_1_1();
  v63 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v61 = v18 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v56 = v20;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  v23 = v52 - v22;
  v54 = *(a4 + 16);
  v55 = *(*(v54 + 16) + 8);
  v24 = *(v55 + 16);
  v25 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  v28 = v52 - v27;
  OUTLINED_FUNCTION_1_1();
  v67 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_26();
  v53 = v31 - v32;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8_16();
  v57 = v34;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8_16();
  v64 = v36;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v37);
  v39 = v52 - v38;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52[3] = v25;
  v52[1] = AssociatedConformanceWitness;
  sub_237EF9FB0();
  v66 = v39;
  v52[2] = v28;
  v52[4] = v24;
  sub_237EF9D20();
  v63[2](v61, v65, v60);
  sub_237EF86F0();
  swift_getAssociatedConformanceWitness();
  v41 = 0;
  v42 = (v68 + 32);
  v43 = (v68 + 8);
  v63 = (v67 + 32);
  v65 = (v67 + 8);
LABEL_2:
  v68 = v41;
  while (1)
  {
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v14, 1, v7) == 1)
    {
      break;
    }

    (*v42)(v11, v14, v7);
    if (__swift_getEnumTagSinglePayload(v11, 1, v6) != 1)
    {
      (*v63)(v64, v11, v6);
      sub_237EF9770();
      (*v65)(v64, v6);
      v41 = v68 + 1;
      if (!__OFADD__(v68, 1))
      {
        goto LABEL_2;
      }

      __break(1u);
      break;
    }

    (*v43)(v11, v7);
  }

  (*(v56 + 8))(v23, AssociatedTypeWitness);
  v44 = v59;
  v45 = v59 + *(v58 + 44);
  v46 = v68;
  *v45 = v68;
  *(v45 + 8) = 0;
  if (v46 < 1)
  {
    sub_237EF9FB0();
    v48 = v57;
    sub_237EF9D20();
    (*v65)(v66, v6);
  }

  else
  {
    v47 = v53;
    sub_237EF83A0();
    v48 = v57;
    v49 = v66;
    sub_237EF8330();
    v50 = *v65;
    (*v65)(v47, v6);
    v50(v49, v6);
  }

  return (*(v67 + 40))(v44, v48, v6);
}

uint64_t sub_237D13838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v56 = a5;
  v50 = a4;
  v53 = a2;
  v9 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v46 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_26();
  v49 = v12 - v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_16();
  v51 = v15;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_16();
  v48 = v17;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  sub_237EF90F0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  OUTLINED_FUNCTION_1_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v45 = v31;
  OUTLINED_FUNCTION_9();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v45 - v34;
  (*(v25 + 16))(v29, a1, a3, v33);
  v55 = v35;
  sub_237EF86F0();
  v56 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = (v46 + 32);
  v36 = (v46 + 8);
  v47 = v23;
  v37 = v51;
  while (1)
  {
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v23, 1, v9) == 1)
    {
      return (*(v45 + 8))(v55, v56);
    }

    result = (*v52)(v20, v23, v9);
    v39 = v6;
    v40 = v6 + *(v53 + 44);
    if (*(v40 + 8))
    {
      break;
    }

    if (__OFADD__(*v40, 1))
    {
      __break(1u);
      break;
    }

    ++*v40;
    result = sub_237EF9760();
    if (*(v40 + 8))
    {
      goto LABEL_10;
    }

    v41 = v20;
    v42 = v49;
    sub_237EF83A0();
    v43 = v48;
    sub_237EF8330();
    v44 = *v36;
    (*v36)(v42, v9);
    v44(v37, v9);
    sub_237EF9770();
    v44(v43, v9);
    v44(v41, v9);
    v6 = v39;
    v20 = v41;
    v23 = v47;
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_237D13D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_237EF7E90();
  v8 = sub_237EF7E20();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32);
    v11 = MEMORY[0x277D84F90];
    do
    {
      v13 = *v10++;
      v12 = v13;
      if (v13 != 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237C62DB0(0, *(v11 + 16) + 1, 1);
        }

        v15 = *(v11 + 16);
        v14 = *(v11 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_237C62DB0(v14 > 1, v15 + 1, 1);
        }

        *(v11 + 16) = v15 + 1;
        *(v11 + 8 * v15 + 32) = v12;
      }

      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v16 = 0xD000000000000028;

  v17 = *(v11 + 16);

  if (v17 <= 1)
  {
    v19 = sub_237EF7E20();
    v20 = sub_237C60C7C(v19, a2);

    if (v20)
    {
      return result;
    }

    v18 = "n imputing but got ";
  }

  else
  {
    v18 = "all have the same shape.";
    v16 = 0xD000000000000040;
  }

  v22 = sub_237EF7E20();
  sub_237C84150();
  swift_allocError();
  *v23 = v22;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18 | 0x8000000000000000;
  *(v23 + 24) = 0;
  *(v23 + 32) = 6;
  return swift_willThrow();
}

uint64_t UniformRandomIntegerParameter.range.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_37();
  v4 = *(v3 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_2_37();
  OUTLINED_FUNCTION_2_37();
  OUTLINED_FUNCTION_0_27();
  sub_237EF8F10();
  OUTLINED_FUNCTION_4();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t UniformRandomIntegerParameter.range.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_2_37();
  v4 = *(v3 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_2_37();
  OUTLINED_FUNCTION_2_37();
  OUTLINED_FUNCTION_0_27();
  sub_237EF8F10();
  OUTLINED_FUNCTION_4();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*UniformRandomIntegerParameter.range.modify(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_6_25();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t UniformRandomIntegerParameter.__allocating_init<A>(range:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_237D141E0(a1, a2, a3, a4, UniformRandomIntegerParameter.init<A>(range:_:));
}

{
  return sub_237D141E0(a1, a2, a3, a4, UniformRandomIntegerParameter.init<A>(range:_:));
}

uint64_t UniformRandomIntegerParameter.init<A>(range:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_18();
  v8 = *(v7 + 112);
  OUTLINED_FUNCTION_18_18();
  OUTLINED_FUNCTION_0_27();
  sub_237EF8F10();
  OUTLINED_FUNCTION_4();
  (*(v9 + 32))(v3 + v8, a1);
  OUTLINED_FUNCTION_6_25();
  v11 = (v3 + *(v10 + 120));
  *v11 = a2;
  v11[1] = a3;
  return v3;
}

{
  v25 = a2;
  v26 = a3;
  OUTLINED_FUNCTION_18_18();
  OUTLINED_FUNCTION_18_18();
  v24[1] = *(v5 + 104);
  v6 = sub_237EF84E0();
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = sub_237EF8F10();
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v24 - v17;
  (*(v8 + 16))(v11, a1, v6, v16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_237EF8F20();
  (*(v8 + 8))(a1, v6);
  OUTLINED_FUNCTION_6_25();
  (*(v14 + 32))(v3 + *(v19 + 112), v18, v12);
  OUTLINED_FUNCTION_6_25();
  v21 = (v3 + *(v20 + 120));
  v22 = v26;
  *v21 = v25;
  v21[1] = v22;
  return v3;
}

uint64_t sub_237D141E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v9 = swift_allocObject();
  a5(a1, a2, a3);
  return v9;
}

uint64_t UniformRandomIntegerParameter.applied<A>(to:generator:eventHandler:)()
{
  OUTLINED_FUNCTION_12_2();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[5] = v7;
  v1[6] = v8;
  v9 = *v0;
  v1[13] = *v0;
  v1[14] = v9[10];
  OUTLINED_FUNCTION_1_1();
  v1[15] = v10;
  v1[16] = swift_task_alloc();
  v11 = v9[11];
  v1[17] = v11;
  v1[18] = v9[13];
  OUTLINED_FUNCTION_0_27();
  v12 = sub_237EF8F10();
  v1[19] = v12;
  v1[20] = *(v12 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = *(v11 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237D1466C, 0, 0);
}

void sub_237D1466C()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = v0[12];
  v10 = v0[13];
  v6 = *(*v5 + 112);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v6, v4);
  sub_237EF96A0();
  (*(v3 + 8))(v2, v4);
  v7 = *(v5 + *(*v5 + 120));

  v7(v1);

  v11 = *(*(v10 + 96) + 24) + **(*(v10 + 96) + 24);
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_237D148A0;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237D148A0()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  *(*v1 + 200) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_237D14A94;
  }

  else
  {
    v5 = sub_237D14A0C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237D14A0C()
{
  OUTLINED_FUNCTION_12_2();
  v1 = OUTLINED_FUNCTION_5_28();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_237D14A94()
{
  OUTLINED_FUNCTION_12_2();
  v1 = OUTLINED_FUNCTION_5_28();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t UniformRandomIntegerParameter.deinit()
{
  OUTLINED_FUNCTION_18_18();
  v2 = *(v1 + 112);
  OUTLINED_FUNCTION_18_18();
  OUTLINED_FUNCTION_0_27();
  sub_237EF8F10();
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_6_25();

  return v0;
}

uint64_t UniformRandomIntegerParameter.__deallocating_deinit()
{
  UniformRandomIntegerParameter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_237D14C18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C5FFA4;

  return UniformRandomIntegerParameter.applied<A>(to:generator:eventHandler:)();
}

uint64_t sub_237D14D00(uint64_t a1)
{
  result = sub_237EF8F10();
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

uint64_t dispatch thunk of UniformRandomIntegerParameter.__allocating_init<A>(range:_:)()
{
  return (*(v0 + 128))();
}

{
  return (*(v0 + 136))();
}

void *sub_237D14F64(void *__src, uint64_t a2, uint64_t a3)
{
  if (__src && (a2 - __src + 3) >= 7)
  {
    v3 = (a2 - __src) / 4;
    if (*(a3 + 8) < v3)
    {
      __break(1u);
    }

    else
    {
      return memcpy(*a3, __src, 4 * v3);
    }
  }

  return __src;
}

uint64_t sub_237D14FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a1;
  v11 = sub_237EF90F0();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x28223BE20](v11);
  v28 = &v25 - v12;
  v13 = *(a5 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v25 - v18;
  v31 = a4;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a2;
  v27 = a2;
  v37 = a3;
  v20 = v32;
  sub_237EF8730();
  if (v39 != 1)
  {
    return v38;
  }

  (*(v13 + 16))(v16, v20, a5);
  v21 = sub_237EF8700();
  swift_getAssociatedConformanceWitness();
  v22 = v28;
  sub_237EF91A0();
  (*(v26 + 8))(v19, AssociatedTypeWitness);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v31);
  (*(v29 + 8))(v22, v30);
  if (EnumTagSinglePayload != 1)
  {
    __break(1u);
    return v38;
  }

  return v21;
}

uint64_t sub_237D152D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_237EF6A30();
  sub_237EF6440();
  (*(v10 + 8))(v13, v8);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a1;
  sub_237EF7DE0();
  v14 = sub_237EF6B10();
  return (*(*(v14 - 8) + 8))(a1, v14);
}

uint64_t sub_237D1548C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = (a2 - a1) / 4;
  if (!a1)
  {
    v7 = 0;
  }

  v18[0] = a1;
  v18[1] = v7;
  MEMORY[0x28223BE20](a1);
  v17[2] = v8;
  v17[3] = v9;
  v17[4] = v10;
  v17[5] = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0750, &qword_237F0B6B8);
  v12 = sub_237D16988();
  sub_237C9339C(sub_237D16950, v17, v11, a4, MEMORY[0x277D84A98], v12);
  v18[0] = v13;
  v14 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  sub_237D14FD4(v18, v5, v6, a4, v14, WitnessTable);
}

uint64_t sub_237D155D0@<X0>(void (*a1)(char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t)@<X1>, void (*a3)(char *, uint64_t)@<X2>, void (*a4)(char *, uint64_t)@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v56 = a6;
  v49 = *(a3 - 1);
  MEMORY[0x28223BE20](a1);
  v48 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v51 = v13;
  v52 = v12;
  MEMORY[0x28223BE20](v12);
  v50 = &v44 - v14;
  v57 = a2;
  v58 = a4;
  v15 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v53 = v16;
  MEMORY[0x28223BE20](v17);
  v47 = &v44 - v18;
  v19 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v44 - v26;
  v54 = a1;
  v55 = a5;
  sub_237EF8E80();
  if (__swift_getEnumTagSinglePayload(v27, 1, v15) == 1)
  {
    (*(v21 + 8))(v27, v19);
    v59 = sub_237EF89A0();
    sub_237EF8A60();
    swift_getWitnessTable();
    return sub_237EF7E40();
  }

  else
  {
    v45 = v21;
    v46 = v19;
    v29 = sub_237EF7E20();
    v44 = *(v53 + 8);
    v44(v27, v15);
    (*(v49 + 16))(v48, v54, a3);
    v30 = v50;
    v31 = v55;
    v32 = sub_237EF8EE0();
    v48 = &v44;
    MEMORY[0x28223BE20](v32);
    v33 = v58;
    *(&v44 - 6) = v57;
    *(&v44 - 5) = a3;
    *(&v44 - 4) = v33;
    *(&v44 - 3) = v31;
    v49 = v29;
    *(&v44 - 2) = v29;
    v34 = v52;
    swift_getAssociatedConformanceWitness();
    sub_237EF87D0();
    (*(v51 + 8))(v30, v34);
    if (__swift_getEnumTagSinglePayload(v24, 1, v15) == 1)
    {
      (*(v45 + 8))(v24, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_237F03530;
      v37 = v54;
      v36 = v55;
      *(v35 + 32) = sub_237EF8DA0();
      v59 = v35;
      v38 = v49;
      v39 = sub_237EF8260();
      sub_237E481CC(v39);
      MEMORY[0x28223BE20](v59);
      v40 = v58;
      *(&v44 - 6) = v57;
      *(&v44 - 5) = a3;
      *(&v44 - 4) = v40;
      *(&v44 - 3) = v36;
      *(&v44 - 2) = v38;
      *(&v44 - 1) = v37;
      sub_237EF7DE0();
    }

    else
    {

      v41 = v47;
      (*(v53 + 32))(v47, v24, v15);
      v42 = sub_237EF7E20();
      sub_237C84150();
      swift_allocError();
      *v43 = v42;
      *(v43 + 8) = 0xD00000000000002BLL;
      *(v43 + 16) = 0x8000000237EFD750;
      *(v43 + 24) = 0;
      *(v43 + 32) = 6;
      swift_willThrow();
      return (v44)(v41, v15);
    }
  }
}

BOOL sub_237D15BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237EF7E90();
  v6 = sub_237EF7E20();
  LOBYTE(a2) = sub_237C60C7C(v6, a2);

  return (a2 & 1) == 0;
}

uint64_t sub_237D15C0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a5;
  v44 = a2;
  v46 = a1;
  v41 = a7;
  v11 = sub_237EF7E90();
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_237EF90F0();
  MEMORY[0x28223BE20](v14 - 8);
  v48 = &v37 - v15;
  v16 = *(a6 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a8;
  v50 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = &v37 - v22;
  (*(v16 + 16))(v19, a4, a6, v21);
  v49 = v23;
  sub_237EF86F0();
  v40 = a6;
  v50 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = 0;
  v45 = (v39 + 32);
  v43 = v51 - 8;
  v25 = (v39 + 8);
  while (1)
  {
    v26 = v48;
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v26, 1, v11) == 1)
    {
      return (*(v38 + 8))(v49, v50);
    }

    (*v45)(v13, v26, v11);
    result = sub_237EF9140();
    if (!result)
    {
      goto LABEL_10;
    }

    if (!*(v44 + 16))
    {
      break;
    }

    v28 = *(v44 + 32);
    v29 = v13;
    v30 = v51;
    v31 = sub_237EF9160();
    MEMORY[0x28223BE20](v31);
    *(&v37 - 6) = v30;
    v13 = v29;
    v32 = v41;
    *(&v37 - 5) = v40;
    *(&v37 - 4) = v32;
    *(&v37 - 3) = v42;
    *(&v37 - 2) = v33;
    *(&v37 - 1) = v34;
    WitnessTable = swift_getWitnessTable();
    sub_237EBA460(sub_237D1680C, (&v37 - 8), v11, MEMORY[0x277D84F78] + 8, WitnessTable);
    (*v25)(v29, v11);
    v36 = __OFADD__(v24, v28);
    v24 += v28;
    if (v36)
    {
      __break(1u);
      return (*(v38 + 8))(v49, v50);
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_237D16048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ScalarSequence(0, a4, a6, a4);
  swift_getWitnessTable();
  sub_237EF9110();
}

uint64_t sub_237D1611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_237EF8260();
  sub_237EF8260();
  a5(a1, a2, a3, a4);
}

uint64_t sub_237D161B0(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = a1[1];
  sub_237EF8260();
  sub_237EF8260();
  a4(v7, v8, a2, a3);
}

uint64_t sub_237D162A4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3[2] != 2)
  {
    goto LABEL_13;
  }

  if (a4[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v10 = a3[4];
    v11 = a3[5];
    v12 = a4[5];
    v28 = a5;
    if (v12 != 1)
    {
      if (a4[4] != 1)
      {
        sub_237EF9330();

        v19 = MEMORY[0x2383E0A10](a4, MEMORY[0x277D83B88]);
        MEMORY[0x2383E0710](v19);

        MEMORY[0x2383E0710](0xD000000000000020, 0x8000000237EFD820);
        result = sub_237EF9740("Fatal error", 11, 2, 0x73656469727453, 0xE700000000000000, "CreateMLComponents/MLShapedArrayExtensions.swift", 48, 2, 114);
        goto LABEL_15;
      }

      swift_getAssociatedTypeWitness();
      v13 = sub_237EF8530();
      if (v13)
      {
        v15 = v10;
        v16 = v11;
        v14 = v12;
        v17 = 1;
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    swift_getAssociatedTypeWitness();
    v13 = sub_237EF8530();
    if (v13)
    {
      v14 = a4[4];
      v15 = v10;
      v16 = v11;
      v17 = 0;
LABEL_9:
      UnsafeMatrixPointer.init(start:rowCount:columnCount:leadingDimension:layout:)(v13, v15, v16, v14, v17, &v20);
      v24 = v20;
      v25 = v21;
      v26 = v22;
      v27 = v23;
      return v28(&v24);
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000028, 0x8000000237EFD7F0, "CreateMLComponents/MLShapedArrayExtensions.swift", 48, 2, 90);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_237D1651C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_36();
  sub_237EF90F0();
  return sub_237EF7F00();
}

uint64_t sub_237D16598@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  if (*(a3 + 16) != 1)
  {
    goto LABEL_9;
  }

  swift_getAssociatedTypeWitness();
  if (!sub_237EF8530())
  {
LABEL_8:
    __break(1u);
LABEL_9:
    result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000027, 0x8000000237EFD7C0, "CreateMLComponents/MLShapedArrayExtensions.swift", 48, 2, 124);
    __break(1u);
    return result;
  }

  if (!*(a4 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  UnsafeVectorPointer.init(start:count:stride:)();
  result = a5();
  if (!v9)
  {
    return __swift_storeEnumTagSinglePayload(a8, 0, 1, a7);
  }

  return result;
}

uint64_t sub_237D166DC(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = a1 + 32;
  while (v5 != v4)
  {
    v7 = *(a2 + 16);
    if (v4 == v7)
    {
      break;
    }

    if (v4 >= v7)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v8 = *(v6 + 8 * v4);
    v9 = *(a2 + 32 + 8 * v4);
    v10 = v8 * v9;
    if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
    {
      goto LABEL_11;
    }

    ++v4;
    v11 = __OFADD__(result, v10);
    result += v10;
    if (v11)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_237D16744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v8 = sub_237D166DC(a1, a3);
  v9 = *(a4 - 8);
  v10 = *(v9 + 16);
  v11 = a2 + *(v9 + 72) * v8;

  return v10(a5, v11, a4);
}

unint64_t sub_237D16988()
{
  result = qword_27DEB0758[0];
  if (!qword_27DEB0758[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB0750, &qword_237F0B6B8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB0758);
  }

  return result;
}

uint64_t sub_237D169EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a4 = v5;
    return result;
  }

  if (a3 >= a2)
  {
    result = sub_237EF9080();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D16A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D16ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_19_0();
  v12 = v11;
  (*(*(v13 - 8) + 32))(v11, v14);
  v17 = v8;
  v18 = v7;
  v19 = v6;
  v20 = a6;
  v15 = type metadata accessor for ComposedUpdatableTabularEstimator(0, &v17);
  return (*(*(v7 - 8) + 32))(v12 + *(v15 + 52), v9, v7);
}

uint64_t sub_237D16B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_19_0();
  v11 = v10;
  v14 = type metadata accessor for TabularTransformerToUpdatableEstimatorAdaptor(0, v12, v13, v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v20 - v16;
  TabularTransformerToUpdatableEstimatorAdaptor.init(_:)(v9, v7, &v20 - v16);
  OUTLINED_FUNCTION_13_2();
  WitnessTable = swift_getWitnessTable();
  return sub_237D16ADC(v11, v17, v8, v14, v6, WitnessTable);
}

uint64_t sub_237D16C70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v20 = *(v3 + 8);
  v21 = a2;
  v19 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = a1[4];
  v9 = a1[2];
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  (*(v8 + 16))(v9, v8, v12);
  (*(v3 + 16))(v19, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  return ComposedTabularTransformer.init(_:_:)(v14, v7, v10, AssociatedTypeWitness, AssociatedConformanceWitness, v16, v21);
}

uint64_t sub_237D16E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a5[5] + 8);
  v6[9] = a5[3];
  v6[10] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v6[11] = v11;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = sub_237EF61A0();
  OUTLINED_FUNCTION_15_0();
  v6[15] = v12;
  v6[16] = swift_task_alloc();
  v13 = *(a5[4] + 8);
  v6[17] = v13;
  v14 = a5[2];
  v6[18] = v14;
  v6[19] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v6[20] = v15;
  v6[21] = swift_task_alloc();
  v16 = swift_task_alloc();
  v6[22] = v16;
  OUTLINED_FUNCTION_0_23(v13);
  v21 = (v17 + *v17);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v6[23] = v18;
  *v18 = v19;
  v18[1] = sub_237D170EC;

  return v21(v16, a2, a3, a4, v14, v13);
}

uint64_t sub_237D170EC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D171E4(uint64_t a1)
{
  v2 = v1[24];
  sub_237EF8B90();
  if (v2)
  {
    (*(v1[20] + 8))(v1[22], v1[19]);

    OUTLINED_FUNCTION_3_0();

    return v3();
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v1[25] = AssociatedConformanceWitness;
    v6 = *(AssociatedConformanceWitness + 8);
    OUTLINED_FUNCTION_0_23(v6);
    v15 = (v7 + *v7);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v1[26] = v8;
    *v8 = v9;
    v8[1] = sub_237D173B0;
    v10 = v1[19];
    v11 = v1[16];
    v12 = v1[4];
    v13 = v1[5];
    v14 = v1[3];

    return v15(v11, v14, v12, v13, v10, v6);
  }
}

uint64_t sub_237D173B0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D174A8(uint64_t a1)
{
  v2 = v1[27];
  sub_237EF8B90();
  if (v2)
  {
    v3 = v1[22];
    v4 = v1[19];
    v5 = v1[20];
    (*(v1[15] + 8))(v1[16], v1[14]);
    (*(v5 + 8))(v3, v4);

    OUTLINED_FUNCTION_3_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_0_23(v1[8]);
    v17 = (v8 + *v8);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v1[28] = v9;
    *v9 = v10;
    v9[1] = sub_237D17674;
    v11 = v1[16];
    v12 = v1[13];
    v14 = v1[8];
    v13 = v1[9];
    v15 = v1[4];
    v16 = v1[5];

    return v17(v12, v11, v15, v16, v13, v14);
  }
}

uint64_t sub_237D17674()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_237D1776C()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v13 = v0[25];
  v5 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v12 = v0[2];
  (*(v0[15] + 8))();
  (*(v3 + 32))(v1, v2, v4);
  (*(v7 + 32))(v5, v6, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTabularTransformer.init(_:_:)(v1, v5, v4, v8, v13, AssociatedConformanceWitness, v12);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_237D178B4()
{
  OUTLINED_FUNCTION_15_21();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237D17940()
{
  (*(v0[20] + 8))(v0[22], v0[19]);
  OUTLINED_FUNCTION_15_21();

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237D179E4()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_15_21();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237D17AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v6[12] = sub_237EF61A0();
  OUTLINED_FUNCTION_15_0();
  v6[13] = v12;
  v6[14] = swift_task_alloc();
  v13 = *(a5 + 32);
  v6[15] = v13;
  v14 = *(a5 + 16);
  v6[16] = v14;
  OUTLINED_FUNCTION_15_0();
  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  v6[17] = v16;
  *v16 = v6;
  v16[1] = sub_237D17C5C;

  return v18(a1, a2, a3, a4, v14, v13);
}

uint64_t sub_237D17C5C()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v3 + 144) = v0;

  if (v0)
  {

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_237D17D9C(uint64_t a1)
{
  v2 = v1[18];
  sub_237EF8B90();
  if (v2)
  {

    OUTLINED_FUNCTION_3_0();

    return v3();
  }

  else
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v1[19] = AssociatedConformanceWitness;
    v6 = *(AssociatedConformanceWitness + 8);
    v7 = *(v6 + 24);
    v8 = swift_checkMetadataState();
    v1[20] = v8;
    v15 = (v7 + *v7);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v1[21] = v9;
    *v9 = v10;
    v9[1] = sub_237D17F78;
    v11 = v1[14];
    v12 = v1[8];
    v13 = v1[9];
    v14 = v1[7];

    return v15(v11, v14, v12, v13, v8, v6);
  }
}

uint64_t sub_237D17F78()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_237D18070(uint64_t a1)
{
  v2 = v1[22];
  sub_237EF8B90();
  if (v2)
  {
    (*(v1[13] + 8))(v1[14], v1[12]);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_49_0();

    __asm { BRAA            X1, X16 }
  }

  v5 = v1[19];
  v6 = v1[20];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1[2] = v6;
  v1[3] = AssociatedTypeWitness;
  v1[4] = v5;
  v1[5] = AssociatedConformanceWitness;
  type metadata accessor for ComposedTabularTransformer(0, (v1 + 2));
  OUTLINED_FUNCTION_15_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v1[23] = v9;
  *v9 = v10;
  v9[1] = sub_237C88640;
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X6, X16 }
}

uint64_t sub_237D1827C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(*(a3 + 32) + 8) + 32))(a1, a2, *(a3 + 16), *(*(a3 + 32) + 8));
  if (!v3)
  {
    v12[5] = *(a3 + 52);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(*(a3 + 40) + 8);
    v11 = *(a3 + 24);
    v12[0] = AssociatedTypeWitness;
    v12[1] = swift_getAssociatedTypeWitness();
    v12[2] = swift_getAssociatedConformanceWitness();
    v12[3] = swift_getAssociatedConformanceWitness();
    v10 = type metadata accessor for ComposedTabularTransformer(0, v12);
    return (*(v9 + 32))(a1 + *(v10 + 52), a2, v11, v9);
  }

  return result;
}

uint64_t sub_237D183EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = a2[3];
  v40 = *(a2[5] + 8);
  v42 = v5;
  OUTLINED_FUNCTION_40_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v35 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v41 = &v33 - v12;
  v13 = *(a2[4] + 8);
  v14 = a2[2];
  OUTLINED_FUNCTION_40_0();
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v38 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26();
  v20 = v18 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v33 - v23;
  v25 = *(v13 + 40);
  v39 = a1;
  v26 = v43;
  result = v25(a1, v14, v13, v22);
  if (!v26)
  {
    v33 = v14;
    v34 = v20;
    v43 = v15;
    v28 = AssociatedTypeWitness;
    (*(v40 + 40))(v39, v42, v40);
    v29 = v34;
    v30 = v43;
    (*(v38 + 32))(v34, v24, v43);
    (*(v35 + 32))(v10, v41, v28);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = swift_getAssociatedConformanceWitness();
    return ComposedTabularTransformer.init(_:_:)(v29, v10, v30, v28, AssociatedConformanceWitness, v32, v36);
  }

  return result;
}

uint64_t sub_237D186DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a3 + 32) + 32))(a1, a2, *(a3 + 16), *(a3 + 32));
  if (!v3)
  {
    v12[5] = *(a3 + 52);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v11 = *(a3 + 40);
    v8 = *(a3 + 24);
    v12[0] = AssociatedTypeWitness;
    v12[1] = swift_getAssociatedTypeWitness();
    v12[2] = swift_getAssociatedConformanceWitness();
    v12[3] = swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ComposedTabularTransformer(0, v12);
    return (*(v11 + 32))(a1 + *(v9 + 52), a2, v8);
  }

  return result;
}

uint64_t sub_237D18850@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v43 = a3;
  v50 = a2[5];
  v7 = a2[3];
  v42 = *(v50 + 8);
  v51 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v41 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26();
  v45 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v48 = &v38 - v13;
  v14 = a2[4];
  v15 = *(v14 + 8);
  v16 = a2[2];
  v17 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v44 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_26();
  v22 = v20 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v38 - v25;
  v27 = *(v14 + 40);
  v49 = a1;
  v47 = v4;
  v28 = v52;
  result = v27(a1, v16, v14, v24);
  if (!v28)
  {
    v39 = v22;
    v40 = v16;
    v38 = v15;
    v52 = v17;
    v30 = v44;
    v31 = v45;
    v32 = AssociatedTypeWitness;
    v33 = v48;
    (*(v50 + 40))(v49, v51);
    v34 = v39;
    v35 = v52;
    (*(v30 + 32))(v39, v26, v52);
    (*(v41 + 32))(v31, v33, v32);
    OUTLINED_FUNCTION_40_0();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_40_0();
    v37 = swift_getAssociatedConformanceWitness();
    return ComposedTabularTransformer.init(_:_:)(v34, v31, v35, v32, AssociatedConformanceWitness, v37, v43);
  }

  return result;
}

uint64_t sub_237D18B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C6A904;

  return sub_237D17AA8(a1, a2, a3, a4, a5);
}

uint64_t sub_237D18C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C6B728;

  return sub_237D16E30(a1, a2, a3, a4, a5);
}

uint64_t UpdatableTabularEstimator.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_237D18D80(a1, a2, a3, a4, a5, sub_237D16B98);
}

{
  return sub_237D18D80(a1, a2, a3, a4, a5, sub_237D16ADC);
}

uint64_t sub_237D18D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_19_0();
  v12 = v11;
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_1();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23, v9, v19);
  (*(v14 + 16))(v17, v12, v8);
  return a6(v21, v17, v9, v8, v7, v6);
}

uint64_t sub_237D18F10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
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

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237D190D8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237D19364(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_29()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_15_21()
{
}

uint64_t PreprocessingUpdatableTemporalEstimator.init(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v12 + 32))(a6);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v13 = type metadata accessor for PreprocessingUpdatableTemporalEstimator(0, v15);
  return (*(*(a3 - 8) + 32))(a6 + *(v13 + 52), a1, a3);
}

uint64_t PreprocessingUpdatableTemporalEstimator.preprocessed<A>(from:eventHandler:)()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v1[11] = v4;
  v1[12] = v0;
  v1[9] = v5;
  v1[10] = v6;
  v1[7] = v7;
  v1[8] = v2;
  v1[5] = v8;
  v1[6] = v9;
  v1[13] = *(v2 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_27_0();
  v1[16] = *(v3 + 32);
  v1[17] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v1[18] = v11;
  v1[19] = swift_task_alloc();
  v12 = swift_task_alloc();
  v1[20] = v12;
  v1[21] = OUTLINED_FUNCTION_8_29(v12, v13, v14, v15, MEMORY[0x277D83390]);
  OUTLINED_FUNCTION_1_1();
  v1[22] = v16;
  v1[23] = OUTLINED_FUNCTION_27_0();
  sub_237EF90F0();
  v1[24] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[25] = v17;
  v18 = OUTLINED_FUNCTION_27_0();
  v1[26] = v18;
  v1[27] = OUTLINED_FUNCTION_8_29(v18, v19, v20, v21, MEMORY[0x277D833C8]);
  OUTLINED_FUNCTION_15_0();
  v1[28] = v22;
  v1[29] = OUTLINED_FUNCTION_27_0();
  v23 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

void sub_237D19818()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[9];
  v4 = v0[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[30] = AssociatedTypeWitness;
  v0[31] = type metadata accessor for PreprocessedFeatureSequence(0, AssociatedTypeWitness, v6, v7);
  v0[2] = sub_237EF8110();
  (*(v2 + 16))(v1, v4, v3);
  sub_237EF86F0();
  v8 = v0[24];
  v9 = v0[21];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    v10 = v0[29];
    OUTLINED_FUNCTION_13_17();
    (*(v11 + 8))(v10);

    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_29_11();

    __asm { BRAA            X2, X16 }
  }

  v14 = v0[15];
  v15 = v0[8];
  (*(v0[22] + 32))(v0[23], v0[24], v0[21]);
  PreprocessingUpdatableTemporalEstimator.preprocessor.getter(v15, v14);
  OUTLINED_FUNCTION_15_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[32] = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_3_38(v16);
  OUTLINED_FUNCTION_29_11();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237D19AA0()
{
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[33] = v0;

  if (v0)
  {
    (*(v3[14] + 8))(v3[15], v3[13]);

    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_15_19();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v12 = v3[19];
    v11 = v3[20];
    v13 = v3[17];
    v14 = v3[18];
    (*(v3[14] + 8))(v3[15], v3[13]);
    (*(v14 + 16))(v12, v11, v13);
    v15 = swift_task_alloc();
    v3[34] = v15;
    swift_getAssociatedConformanceWitness();
    *v15 = v5;
    v15[1] = sub_237D19C9C;
    OUTLINED_FUNCTION_15_19();

    return PreprocessedFeatureSequence.init<A>(_:)(v16, v17, v18, v19, v20);
  }
}

uint64_t sub_237D19C9C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_237D19DA0()
{
  v0[4] = v0[3];
  v1 = v0[22];
  v18 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  sub_237EF8A60();
  sub_237EF8260();
  sub_237EF8A20();

  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v18, v2);
  v6 = v0[24];
  v7 = v0[21];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v8 = v0[29];
    OUTLINED_FUNCTION_13_17();
    (*(v9 + 8))(v8);

    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_18_3();

    __asm { BRAA            X2, X16 }
  }

  v12 = v0[15];
  v13 = v0[8];
  (*(v0[22] + 32))(v0[23], v0[24], v0[21]);
  PreprocessingUpdatableTemporalEstimator.preprocessor.getter(v13, v12);
  OUTLINED_FUNCTION_15_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[32] = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_3_38(v14);
  OUTLINED_FUNCTION_18_3();

  __asm { BRAA            X8, X16 }
}

void sub_237D1A024()
{
  OUTLINED_FUNCTION_19_18();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_13_17();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_19();

  __asm { BRAA            X1, X16 }
}

void sub_237D1A100()
{
  OUTLINED_FUNCTION_19_18();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  (*(v0[18] + 8))(v0[20], v0[17]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_13_17();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_19();

  __asm { BRAA            X1, X16 }
}

uint64_t PreprocessingUpdatableTemporalEstimator.fitted(toPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v4;
  v1[6] = v5;
  v1[3] = v6;
  v1[4] = v7;
  v1[9] = *(v2 + 16);
  OUTLINED_FUNCTION_22_3();
  v1[10] = OUTLINED_FUNCTION_27_0();
  v1[11] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_27_0();
  v1[14] = *(*(v3 + 40) + 8);
  v1[15] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v1[16] = v9;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_237D1A34C()
{
  OUTLINED_FUNCTION_19_18();
  v1 = v0[7];
  v2 = v0[4];
  PreprocessingUpdatableTemporalEstimator.estimator.getter(v1, v0[13]);
  v0[2] = v2;
  OUTLINED_FUNCTION_15_0();
  v8 = v3 + *v3;
  v4 = swift_task_alloc();
  v0[19] = v4;
  v0[20] = *(v1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for PreprocessedFeatureSequence(255, AssociatedTypeWitness, v6, v7);
  sub_237EF8A60();
  OUTLINED_FUNCTION_11_23();
  OUTLINED_FUNCTION_7_26();
  swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_237D1A4FC;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237D1A4FC()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[11];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 168) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_237D1A654()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v11 = v0[20];
  v5 = v0[10];
  v10 = v0[9];
  v6 = v0[3];
  PreprocessingUpdatableTemporalEstimator.preprocessor.getter(v0[7], v5);
  (*(v4 + 32))(v2, v1, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(v5, v2, v10, v3, v11, AssociatedConformanceWitness, v6);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  __asm { BRAA            X1, X16 }
}

uint64_t PreprocessingUpdatableTemporalEstimator.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_17_19();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_14_23(v6);

  return PreprocessingUpdatableTemporalEstimator.preprocessed<A>(from:eventHandler:)();
}

uint64_t sub_237D1A814()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_237D1A934()
{
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 72);
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 80) = v4;
    *v4 = v5;
    v4[1] = sub_237D1AA1C;

    return PreprocessingUpdatableTemporalEstimator.fitted(toPreprocessed:eventHandler:)();
  }
}

uint64_t sub_237D1AA1C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void PreprocessingUpdatableTemporalEstimator.makeTransformer()()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v24 = v2;
  v3 = *(v0 + 24);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v11 = *(v10 + 40);
  v23 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = *(v1 + 16);
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  PreprocessingUpdatableTemporalEstimator.preprocessor.getter(v1, v19 - v18);
  PreprocessingUpdatableTemporalEstimator.estimator.getter(v1, v9);
  (*(v11 + 16))(v3, v11);
  (*(v5 + 8))(v9, v3);
  v21 = *(v1 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(v20, v15, v16, AssociatedTypeWitness, v21, AssociatedConformanceWitness, v24);
  OUTLINED_FUNCTION_38_0();
}

uint64_t PreprocessingUpdatableTemporalEstimator.update<A>(_:withPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[9] = v5;
  v1[10] = v6;
  v1[7] = v7;
  v1[8] = v8;
  v1[6] = v9;
  v1[15] = *(v6 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[16] = v10;
  v1[17] = OUTLINED_FUNCTION_27_0();
  v11 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_237D1AD98()
{
  v1 = v0[10];
  PreprocessingUpdatableTemporalEstimator.estimator.getter(v1, v0[17]);
  v2 = *(v1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(v1 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[2] = v2;
  v0[3] = AssociatedTypeWitness;
  v0[4] = v4;
  v0[5] = AssociatedConformanceWitness;
  type metadata accessor for ComposedTemporalTransformer(0, (v0 + 2));
  OUTLINED_FUNCTION_15_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[18] = v6;
  *v6 = v7;
  v6[1] = sub_237D1AF54;
  OUTLINED_FUNCTION_29_11();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237D1AF54()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = v5[17];
  v7 = v5[16];
  v8 = v5[15];
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  *(v3 + 152) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v14();
  }
}

uint64_t sub_237D1B0E4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableTemporalEstimator.update<A>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_17_19();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v1[12] = *(v2 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v7 = swift_task_alloc();
  v1[15] = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_14_23(v7);

  return PreprocessingUpdatableTemporalEstimator.preprocessed<A>(from:eventHandler:)();
}

uint64_t sub_237D1B234()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 128) = v6;
  *(v3 + 136) = v0;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_237D1B374(uint64_t a1)
{
  v2 = v1[17];
  sub_237EF8B90();
  if (!v2)
  {
    v5 = v1[16];
    v6 = v1[10];
    PreprocessingUpdatableTemporalEstimator.estimator.getter(v6, v1[14]);
    v1[6] = v5;
    v7 = *(v6 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(v6 + 32);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v1[2] = v7;
    v1[3] = AssociatedTypeWitness;
    v1[4] = v9;
    v1[5] = AssociatedConformanceWitness;
    type metadata accessor for ComposedTemporalTransformer(0, (v1 + 2));
    OUTLINED_FUNCTION_15_0();
    v11 = swift_task_alloc();
    v1[18] = v11;
    v12 = swift_getAssociatedTypeWitness();
    type metadata accessor for PreprocessedFeatureSequence(255, v12, v13, v14);
    sub_237EF8A60();
    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_7_26();
    swift_getWitnessTable();
    *v11 = v1;
    v11[1] = sub_237CAA33C;
    OUTLINED_FUNCTION_18_3();

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t PreprocessingUpdatableTemporalEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[5] + 8);
  v5 = a3[2];
  v6 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a3[4];
  v14[0] = v5;
  v14[1] = AssociatedTypeWitness;
  v14[2] = v8;
  v14[3] = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for ComposedTemporalTransformer(0, v14);
  v10 = OUTLINED_FUNCTION_27_12(v9);
  return v11(v10, a2, v6, v4);
}

uint64_t PreprocessingUpdatableTemporalEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v22 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v25 = v10 - v9;
  v12 = *(*(v11 + 40) + 8);
  v13 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v21 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_34_2();
  OUTLINED_FUNCTION_24_9();
  result = v18(a1, v13, v12);
  if (!v26)
  {
    (*(v22 + 16))(v25, v4, v24);
    (*(v21 + 32))(v5, v3, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_36_4(v25, AssociatedConformanceWitness, a3);
  }

  return result;
}

uint64_t PreprocessingUpdatableTemporalEstimator.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[5];
  v5 = a3[2];
  v6 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a3[4];
  v14[0] = v5;
  v14[1] = AssociatedTypeWitness;
  v14[2] = v8;
  v14[3] = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for ComposedTemporalTransformer(0, v14);
  v10 = OUTLINED_FUNCTION_27_12(v9);
  return v11(v10, a2, v6, v4);
}

uint64_t PreprocessingUpdatableTemporalEstimator.decodeWithOptimizer(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v22 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v25 = v10 - v9;
  v12 = *(v11 + 40);
  v13 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_34_2();
  OUTLINED_FUNCTION_24_9();
  result = v19(a1, v13, v12);
  if (!v27)
  {
    (*(v22 + 16))(v25, v4, v24);
    (*(v16 + 32))(v5, v3, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_36_4(v25, AssociatedConformanceWitness, a3);
  }

  return result;
}

uint64_t sub_237D1BB94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return PreprocessingUpdatableTemporalEstimator.update<A>(_:with:eventHandler:)();
}

uint64_t sub_237D1BCB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return PreprocessingUpdatableTemporalEstimator.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237D1C2D8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237D1C314(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
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

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237D1C4DC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_11_23()
{

  return swift_getWitnessTable();
}

void LinearTimeSeriesForecaster.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_0_28(a1, a2, a3);
  sub_237D3501C();
  if (!v3)
  {
    sub_237D35810();
  }
}

void LinearTimeSeriesForecaster.decodeWithOptimizer(from:)(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_237D353C8();
  if (!v2)
  {
    v7 = type metadata accessor for LinearTimeSeriesForecaster.Model(0, v4, v5, v6);
    sub_237D35840(a1, v7);
  }
}

uint64_t OUTLINED_FUNCTION_0_28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v5 = a3[4];
  v6 = a3[3];

  return type metadata accessor for LinearTimeSeriesForecaster.Model(0, v4, v6, v5);
}

uint64_t sub_237D1CAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *(*a4 + 80);
  v18 = *(*a4 + 88);
  v21[0] = a5;
  v21[1] = a6;
  v21[2] = v17;
  v21[3] = a7;
  v21[4] = a8;
  v21[5] = a10;
  v21[6] = v18;
  v19 = type metadata accessor for UpsampledAugmentationSequence(0, v21);
  (*(*(a5 - 8) + 32))(a9 + v19[19], a1, a5);
  *(a9 + v19[20]) = a2;
  result = (*(*(a6 - 8) + 32))(a9, a3, a6);
  *(a9 + v19[21]) = a4;
  return result;
}

uint64_t UpsampledAugmentationSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 24);
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  OUTLINED_FUNCTION_1_1();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v17, v3 + *(v18 + 76), v13, v15);
  v20 = *(v3 + *(a1 + 80));
  (*(v8 + 16))(v11, v3, v6);
  v21 = *(v3 + *(a1 + 84));
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);

  return sub_237D1CDA4(v17, v20, v11, v21, v13, v6, v22, v23, a2, v24);
}

uint64_t sub_237D1CDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a7;
  v35 = a1;
  v36 = a3;
  v31 = a2;
  v15 = *a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v34 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  v33 = *(v15 + 80);
  v32 = *(v15 + 88);
  v37[0] = a5;
  v37[1] = a6;
  v37[2] = v33;
  v37[3] = v29;
  v37[4] = a8;
  v37[5] = a10;
  v37[6] = v32;
  v21 = type metadata accessor for UpsampledAugmentationSequence.AsyncIterator(0, v37);
  *(a9 + v21[23]) = 0;
  *(a9 + v21[24]) = 1;
  v22 = *(a5 - 8);
  (*(v22 + 16))(a9, v35, a5);
  *(a9 + v21[19]) = v31;
  v23 = v21[20];
  v24 = a6;
  v30 = a6;
  v25 = *(a6 - 8);
  (*(v25 + 16))(a9 + v23, v36, v24);
  *(a9 + v21[21]) = a4;

  sub_237EF8DC0();
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  v26 = sub_237EF8820();
  (*(v34 + 8))(v20, AssociatedTypeWitness);
  swift_endAccess();

  (*(v25 + 8))(v36, v30);
  result = (*(v22 + 8))(v35, a5);
  *(a9 + v21[22]) = v26;
  return result;
}

uint64_t sub_237D1D08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UpsampledAugmentationSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t UpsampledAugmentationSequence.AsyncIterator.next()(uint64_t a1, void *a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v5 = a2[5];
  v3[15] = v5;
  OUTLINED_FUNCTION_1_1();
  v3[16] = v6;
  v3[17] = swift_task_alloc();
  v3[18] = a2[7];
  v3[19] = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[20] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_1_1();
  v3[21] = v8;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = a2[6];
  v3[25] = a2[2];
  v9 = swift_getAssociatedTypeWitness();
  v3[26] = v9;
  v3[27] = *(v9 - 8);
  v3[28] = swift_task_alloc();
  v11 = type metadata accessor for AnnotatedFeature(0, AssociatedTypeWitness, v5, v10);
  v3[29] = v11;
  v3[30] = *(v11 - 8);
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237D1D31C, 0, 0);
}

uint64_t sub_237D1D31C()
{
  if ((sub_237EF8DD0() & 1) == 0)
  {
    v1 = v0[14];
    v2 = *(v0[13] + 92);
    v3 = *(v1 + v2);
    if (v3 >= sub_237EF8A00())
    {
      v5 = v0[13];
      v4 = v0[14];
      v6 = *(v5 + 96);
      v7 = *(v4 + v6);
      if (v7 < *(v4 + *(v5 + 76)))
      {
        *(v1 + v2) = 0;
        *(v4 + v6) = v7 + 1;
        swift_beginAccess();
        sub_237EF8A60();
        swift_getWitnessTable();
        swift_getWitnessTable();
        sub_237EF84C0();
        swift_endAccess();
        v3 = 0;
      }
    }

    if (v3 < sub_237EF8A00())
    {
      v8 = v0[30];
      v17 = v0[31];
      v9 = v0[28];
      v10 = v0[27];
      v20 = v0[18];
      v16 = v0[13];
      v11 = v0[26];
      sub_237EF8AC0();
      v12 = sub_237EF8F00();
      (*(v8 + 16))(v17);
      v12(v0 + 2, 0);
      (*(v10 + 8))(v9, v11);
      swift_beginAccess();
      v18 = *(v20 + 24) + **(v20 + 24);
      v13 = swift_task_alloc();
      v0[32] = v13;
      v0[33] = *(v16 + 32);
      v0[34] = *(v16 + 64);
      *v13 = v0;
      v13[1] = sub_237D1D6E4;

      __asm { BRAA            X8, X16 }
    }
  }

  __swift_storeEnumTagSinglePayload(v0[12], 1, 1, v0[29]);
  OUTLINED_FUNCTION_3_39();

  OUTLINED_FUNCTION_3_0();

  return v14();
}

uint64_t sub_237D1D6E4()
{
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v2 = v5;
  *(v5 + 280) = v0;

  if (v0)
  {
    v3 = sub_237D1D960;
  }

  else
  {
    swift_endAccess();
    v3 = sub_237D1D7F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_237D1D7F8()
{
  v18 = v0[33];
  v19 = v0[34];
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v16 = v0[25];
  v17 = v0[24];
  v4 = v0[22];
  v5 = v0[20];
  v14 = v0[19];
  v15 = v0[18];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v13 = v0[14];
  v9 = v0[12];
  (*(v0[21] + 32))(v4, v0[23], v5);
  (*(v7 + 16))(v6, v1 + *(v3 + 36), v8);
  (*(v2 + 8))(v1, v3);
  AnnotatedFeature.init(feature:annotation:)(v4, v6, v5, v8, v9);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v3);
  sub_237D1DA6C(v13, v16, v14, v18, v8, v17, v15, v19, v10);
  OUTLINED_FUNCTION_3_39();

  OUTLINED_FUNCTION_3_0();

  return v11();
}

uint64_t sub_237D1D960()
{
  v13 = v0[33];
  v14 = v0[34];
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[14];
  v9 = v0[15];
  swift_endAccess();
  v10 = (*(v1 + 8))(v2, v3);
  sub_237D1DA6C(v8, v4, v7, v13, v9, v5, v6, v14, v10);

  OUTLINED_FUNCTION_3_0();

  return v11();
}

uint64_t sub_237D1DA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a8;
  result = type metadata accessor for UpsampledAugmentationSequence.AsyncIterator(0, v15);
  v11 = *(result + 92);
  v12 = *(a1 + v11);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a1 + v11) = v14;
  }

  return result;
}

uint64_t sub_237D1DAE4(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237C78AF8;

  return UpsampledAugmentationSequence.AsyncIterator.next()(a1, a2);
}

uint64_t sub_237D1DB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_237D1DC60;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_237D1DC60()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t sub_237D1DD60(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for RandomNumberGeneratorReference(319, a1[4], a1[8], v4);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237D1DE14(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v5 - 8) + 64) + v11;
  v14 = *(*(v7 - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_28:
    if (v6 != v12)
    {
      result = (v13 + result) & ~v11;
      if (v9 != v12)
      {
        v24 = *((((v14 + result) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }

      v6 = v9;
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(result, v6, v5);
  }

  v15 = ((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a2 - v12;
  v17 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v16 + 1;
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

  switch(v20)
  {
    case 1:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

LABEL_25:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        v23 = *result;
      }

      else
      {
        v23 = 0;
      }

      result = v12 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void sub_237D1DFE8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 24);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64) + 7;
  v17 = ((((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = a3 - v12;
    if (((((v16 + v15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = v18 + 1;
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
  }

  if (a2 <= v12)
  {
    switch(v21)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v8 == v12)
        {
          goto LABEL_37;
        }

        a1 = (&a1[v14] & ~v13);
        if (v11 == v12)
        {
          v8 = v11;
          v7 = v9;
LABEL_37:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v7);
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

          *(((&a1[v16] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = v24;
        }

        break;
    }
  }

  else
  {
    if (((((v16 + v15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v22 = a2 - v12;
    }

    else
    {
      v22 = 1;
    }

    if (((((v16 + v15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v23 = ~v12 + a2;
      bzero(a1, ((((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *v6 = v23;
    }

    switch(v21)
    {
      case 1:
        *(v6 + v17) = v22;
        break;
      case 2:
        *(v6 + v17) = v22;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(v6 + v17) = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237D1E26C(void *a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = swift_checkMetadataState();
    if (v6 > 0x3F)
    {
      return v4;
    }

    v4 = type metadata accessor for RandomNumberGeneratorReference(319, a1[4], a1[8], v5);
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_getAssociatedTypeWitness();
      v2 = sub_237EF8A60();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

unint64_t sub_237D1E384(unint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(*(v5 - 8) + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(*(v5 - 8) + 64);
  v11 = *(v7 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v4 - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_28:
    if (v6 == v12)
    {
      v8 = *(*(v5 - 8) + 84);
      v4 = v5;
    }

    else
    {
      result = (((result + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11;
      if (v8 != v12)
      {
        v23 = *((v13 + result) & 0xFFFFFFFFFFFFFFF8);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }

    return __swift_getEnumTagSinglePayload(result, v8, v4);
  }

  v14 = ((((((((v13 + ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = a2 - v12;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
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
      v20 = *(result + v14);
      if (!v20)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2:
      v20 = *(result + v14);
      if (!v20)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v20 = *(result + v14);
      if (!v20)
      {
        goto LABEL_28;
      }

LABEL_25:
      v21 = v20 - 1;
      if (v16)
      {
        v21 = 0;
        v22 = *result;
      }

      else
      {
        v22 = 0;
      }

      result = v12 + (v22 | v21) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void sub_237D1E574(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = a1;
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(v6 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(*(v7 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(*(v7 - 8) + 64);
  v13 = *(v9 + 80);
  v14 = *(*(v6 - 8) + 64) + 7;
  v15 = ((((((((v14 + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 >= a3)
  {
    v19 = 0;
  }

  else
  {
    v16 = a3 - v11;
    if (((((((((v14 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = v16 + 1;
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
  }

  if (a2 <= v11)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v8 == v11)
        {
          v10 = v8;
          v6 = v7;
        }

        else
        {
          a1 = (((&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13);
          if (v10 != v11)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v22 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v22 = (a2 - 1);
            }

            *(&a1[v14] & 0xFFFFFFFFFFFFFFF8) = v22;
            return;
          }
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v10, v6);
        break;
    }
  }

  else
  {
    if (((((((((v14 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v20 = a2 - v11;
    }

    else
    {
      v20 = 1;
    }

    if (((((((((v14 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v21 = ~v11 + a2;
      bzero(a1, ((((((((v14 + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *v5 = v21;
    }

    switch(v19)
    {
      case 1:
        *(v5 + v15) = v20;
        break;
      case 2:
        *(v5 + v15) = v20;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(v5 + v15) = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_3_39()
{
}

void sub_237D1E82C(void *a1, OSType a2, uint64_t a3, uint64_t a4)
{
  pixelBufferOut[1] = *MEMORY[0x277D85DE8];
  pixelBufferOut[0] = 0;
  [a1 extent];
  Width = CGRectGetWidth(v15);
  v10 = Width;
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [a1 extent];
  Height = CGRectGetHeight(v16);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  if (Height >= 9.22337204e18)
  {
    goto LABEL_17;
  }

  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v10, Height, a2, 0, pixelBufferOut))
  {
    sub_237EF8260();
    sub_237EF9330();

    v12 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v12);

    MEMORY[0x2383E0710](11817, 0xE200000000000000);
    sub_237C84150();
    swift_allocError();
    *v13 = a3;
    *(v13 + 8) = a4;
    *(v13 + 16) = 0xD000000000000029;
    *(v13 + 24) = 0x8000000237EFD850;
    *(v13 + 32) = 4;
    swift_willThrow();

    return;
  }

  if (!pixelBufferOut[0])
  {
    __break(1u);
    goto LABEL_19;
  }

  [v4 render:a1 toCVPixelBuffer:?];
  if (!pixelBufferOut[0])
  {
LABEL_19:
    __break(1u);
  }
}

uint64_t sub_237D1EA98()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[3];
  type metadata accessor for VNImageOption(0);
  OUTLINED_FUNCTION_0_29();
  sub_237D1F91C(v2, v3, &unk_237F02AFC);
  v4 = sub_237EF8230();
  v5 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  v6 = sub_237D1F688(v1, v4);
  v0[4] = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277CE2C90]) init];
  v0[5] = v7;
  [v7 setRevision_];
  v8 = swift_task_alloc();
  v0[6] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_task_alloc();
  v0[7] = v9;
  *(v9 + 16) = v7;
  v10 = v7;
  v11 = swift_task_alloc();
  v0[8] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB09E0, &qword_237F0B9C8);
  *v11 = v0;
  v11[1] = sub_237D1EC64;

  return MEMORY[0x282200830](v0 + 2, &unk_237F0B9C0, v8, sub_237D1F7DC, v9, 0, 0, v12);
}

uint64_t sub_237D1EC64()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = sub_237D1EDEC;
  }

  else
  {

    v7 = sub_237D1ED84;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237D1ED84()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 32);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_237D1EDEC()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t sub_237D1EE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_237D1EE90, 0, 0);
}

uint64_t sub_237D1EE90()
{
  OUTLINED_FUNCTION_12_2();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB09E0, &qword_237F0B9C8);
  *v2 = v0;
  v2[1] = sub_237D1EF94;
  v4 = *(v0 + 16);

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000019, 0x8000000237EFD880, sub_237D1F898, v1, v3);
}

uint64_t sub_237D1EF94()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_237D1F0B4, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v7();
  }
}

uint64_t sub_237D1F0B4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

void sub_237D1F110(uint64_t a1, void *a2, void *a3)
{
  v3 = sub_237D1F180(a2, a3);
  sub_237D1F97C(v3, 0);

  sub_237D1F8A0(v3, 0);
}

void *sub_237D1F180(void *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  sub_237EF8B90();
  if (v2)
  {
    return a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF168, &qword_237F07D70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_237F07A80;
  *(v5 + 32) = a1;
  sub_237C75918(0, &qword_27DEB09E8, 0x277CE2DF0);
  v6 = a1;
  v7 = sub_237EF8900();

  v33[0] = 0;
  v8 = [a2 performRequests:v7 error:v33];

  a2 = v33[0];
  if (!v8)
  {
    v12 = v33[0];
    sub_237EF5DC0();

LABEL_8:
    swift_willThrow();
    return a2;
  }

  v9 = v33[0];
  v10 = sub_237D1F8AC(v6);
  if (!v10)
  {
    sub_237EF8B10();
    sub_237D1F91C(&qword_27DEB09F0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_237EF8120();
    goto LABEL_8;
  }

  v11 = v10;
  sub_237EF8B90();
  if (!sub_237D6DA5C() || (v14 = sub_237D6DA5C()) == 0)
  {

    return MEMORY[0x277D84F90];
  }

  v15 = v14;
  v34 = MEMORY[0x277D84F90];
  sub_237C63728(0, v14 & ~(v14 >> 63), 0);
  if (v15 < 0)
  {
LABEL_29:
    __break(1u);
  }

  v16 = 0;
  a2 = v34;
  v31 = v11;
  v32 = v11 & 0xC000000000000001;
  v30 = v11 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v32)
    {
      v18 = MEMORY[0x2383E1490](v16, v11);
    }

    else
    {
      if (v16 >= *(v30 + 16))
      {
        goto LABEL_28;
      }

      v18 = *(v11 + 8 * v16 + 32);
    }

    v19 = v18;
    Pose.init(_:)(v19);
    if (v20)
    {
      break;
    }

    v21 = v15;

    v22 = v33[0];
    v23 = v33[1];
    v24 = v33[2];
    v34 = a2;
    v26 = a2[2];
    v25 = a2[3];
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      sub_237C63728((v25 > 1), v26 + 1, 1);
      v27 = v26 + 1;
      a2 = v34;
    }

    a2[2] = v27;
    v28 = &a2[3 * v26];
    v28[4] = v22;
    v28[5] = v23;
    v28[6] = v24;
    ++v16;
    v15 = v21;
    v29 = v17 == v21;
    v11 = v31;
    if (v29)
    {
      goto LABEL_5;
    }
  }

LABEL_5:

  return a2;
}

uint64_t sub_237D1F4BC(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_237D1F554;

  return HumanBodyPoseExtractor.applied(to:eventHandler:)(v3);
}

uint64_t sub_237D1F554()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

id sub_237D1F688(void *a1, uint64_t a2)
{
  type metadata accessor for VNImageOption(0);
  OUTLINED_FUNCTION_0_29();
  sub_237D1F91C(v4, v5, &unk_237F02AFC);
  v6 = sub_237EF8200();

  v7 = [v2 initWithCIImage:a1 options:v6];

  return v7;
}

uint64_t sub_237D1F734()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_237C6A904;

  return sub_237D1EE6C(v3, v5, v4);
}

_BYTE *storeEnumTagSinglePayload for HumanBodyPoseExtractor(_BYTE *result, int a2, int a3)
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

void sub_237D1F8A0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_237D1F8AC(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_237C75918(0, &qword_27DEB09F8, 0x277CE2D20);
  v3 = sub_237EF8910();

  return v3;
}

uint64_t sub_237D1F91C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237D1F97C(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0A00, &qword_237F0BAB8);
    return sub_237EF8AE0();
  }

  else
  {
    sub_237EF8260();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0A00, &qword_237F0BAB8);
    return sub_237EF8AF0();
  }
}

uint64_t sub_237D1FA14()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[3];
  type metadata accessor for VNImageOption(0);
  sub_237D1F91C(&qword_27DEAD168, type metadata accessor for VNImageOption, &unk_237F02AFC);
  v2 = sub_237EF8230();
  v3 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  v4 = sub_237D1F688(v1, v2);
  v0[4] = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277CE2C98]) init];
  v0[5] = v5;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *(v7 + 16) = v5;
  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB09E0, &qword_237F0B9C8);
  *v8 = v0;
  v8[1] = sub_237D1FBD8;

  return MEMORY[0x282200830](v0 + 2, &unk_237F0BA40, v6, sub_237D1F7DC, v7, 0, 0, v9);
}

uint64_t sub_237D1FBD8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = sub_237D1FCE4;
  }

  else
  {

    v7 = sub_237D1ED84;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237D1FCE4()
{
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_3_0();

  return v2();
}

uint64_t sub_237D1FD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_237D1FD84, 0, 0);
}

uint64_t sub_237D1FD84()
{
  OUTLINED_FUNCTION_12_2();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB09E0, &qword_237F0B9C8);
  *v2 = v0;
  v2[1] = sub_237D1EF94;
  v4 = *(v0 + 16);

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000019, 0x8000000237EFD880, sub_237D2045C, v1, v3);
}

void sub_237D1FE88(uint64_t a1, void *a2, void *a3)
{
  v3 = sub_237D1FEF8(a2, a3);
  sub_237D1F97C(v3, 0);

  sub_237D1F8A0(v3, 0);
}

void *sub_237D1FEF8(void *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  sub_237EF8B90();
  if (v2)
  {
    return a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF168, &qword_237F07D70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_237F07A80;
  *(v5 + 32) = a1;
  sub_237C75918(0, &qword_27DEB09E8, 0x277CE2DF0);
  v6 = a1;
  v7 = sub_237EF8900();

  v33[0] = 0;
  v8 = [a2 performRequests:v7 error:v33];

  a2 = v33[0];
  if (!v8)
  {
    v12 = v33[0];
    sub_237EF5DC0();

LABEL_8:
    swift_willThrow();
    return a2;
  }

  v9 = v33[0];
  v10 = sub_237D20464(v6);
  if (!v10)
  {
    sub_237EF8B10();
    sub_237D1F91C(&qword_27DEB09F0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_237EF8120();
    goto LABEL_8;
  }

  v11 = v10;
  sub_237EF8B90();
  if (!sub_237D6DA5C() || (v14 = sub_237D6DA5C()) == 0)
  {

    return MEMORY[0x277D84F90];
  }

  v15 = v14;
  v34 = MEMORY[0x277D84F90];
  sub_237C63728(0, v14 & ~(v14 >> 63), 0);
  if (v15 < 0)
  {
LABEL_29:
    __break(1u);
  }

  v16 = 0;
  a2 = v34;
  v31 = v11;
  v32 = v11 & 0xC000000000000001;
  v30 = v11 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v32)
    {
      v18 = MEMORY[0x2383E1490](v16, v11);
    }

    else
    {
      if (v16 >= *(v30 + 16))
      {
        goto LABEL_28;
      }

      v18 = *(v11 + 8 * v16 + 32);
    }

    v19 = v18;
    Pose.init(_:)(v19);
    if (v20)
    {
      break;
    }

    v21 = v15;

    v22 = v33[0];
    v23 = v33[1];
    v24 = v33[2];
    v34 = a2;
    v26 = a2[2];
    v25 = a2[3];
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      sub_237C63728((v25 > 1), v26 + 1, 1);
      v27 = v26 + 1;
      a2 = v34;
    }

    a2[2] = v27;
    v28 = &a2[3 * v26];
    v28[4] = v22;
    v28[5] = v23;
    v28[6] = v24;
    ++v16;
    v15 = v21;
    v29 = v17 == v21;
    v11 = v31;
    if (v29)
    {
      goto LABEL_5;
    }
  }

LABEL_5:

  return a2;
}

uint64_t sub_237D20234(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_237D1F554;

  return HumanHandPoseExtractor.applied(to:eventHandler:)(v3);
}

uint64_t sub_237D20308()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_237C6A904;

  return sub_237D1FD60(v3, v5, v4);
}

_BYTE *storeEnumTagSinglePayload for HumanHandPoseExtractor(_BYTE *result, int a2, int a3)
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