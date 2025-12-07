uint64_t sub_237C9A114(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_11();
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SGDDenseLayer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SGDStorage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237C9A324()
{
  result = qword_27DEAE5F0;
  if (!qword_27DEAE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE5F0);
  }

  return result;
}

unint64_t sub_237C9A37C()
{
  result = qword_27DEAE5F8;
  if (!qword_27DEAE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE5F8);
  }

  return result;
}

unint64_t sub_237C9A3D4()
{
  result = qword_27DEAE600;
  if (!qword_27DEAE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE600);
  }

  return result;
}

unint64_t sub_237C9A42C()
{
  result = qword_27DEAE608;
  if (!qword_27DEAE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE608);
  }

  return result;
}

unint64_t sub_237C9A484()
{
  result = qword_27DEAE610;
  if (!qword_27DEAE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE610);
  }

  return result;
}

unint64_t sub_237C9A4DC()
{
  result = qword_27DEAE618[0];
  if (!qword_27DEAE618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEAE618);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_8(uint64_t a1, void *a2)
{
  *a2 = 0xD000000000000025;
  a2[1] = v2;

  return swift_willThrow();
}

uint64_t LinearTransformer.init(scale:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(*(a3 - 8) + 32);
  v13(a7, a1);
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v14 = type metadata accessor for LinearTransformer(0, v16);
  return (v13)(a7 + *(v14 + 52), a2, a3);
}

uint64_t LinearTransformer.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  LinearTransformer.scale.getter(v15, v11);
  sub_237EF8D30();
  v16 = *(v7 + 8);
  v16(v11, v5);
  LinearTransformer.offset.getter(a4, v11);
  sub_237EF9750();
  v16(v11, v5);
  return v16(v14, v5);
}

uint64_t LinearTransformer.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a4 + 16);
  v11 = a5;
  v12 = *(a4 + 24);
  v13 = *(a4 + 40);
  v14 = a6;
  v15 = a2;
  v16 = a3;
  return sub_237C8FFEC(sub_237C9A9AC, &v9, a5, v10, MEMORY[0x277D84A98], a6, MEMORY[0x277D84AC0], a8);
}

uint64_t sub_237C9A944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14[0] = a5;
  v14[1] = a7;
  v14[2] = a8;
  v14[3] = a9;
  v10 = type metadata accessor for LinearTransformer(0, v14);
  return LinearTransformer.applied(to:eventHandler:)(a1, v11, v12, v10);
}

uint64_t static LinearTransformer.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_237EF8520())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for LinearTransformer(0, v12);
    v10 = sub_237EF8520();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_237C9AA90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
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

uint64_t sub_237C9AB50(char a1)
{
  if (a1)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 0x656C616373;
  }
}

uint64_t sub_237C9AB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C9AA90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237C9ABC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237C9AC1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LinearTransformer.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 16);
  v14 = v13;
  v15 = v3;
  v16 = v12;
  type metadata accessor for LinearTransformer.CodingKeys(255, &v14);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_8_8();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_8_8();
  sub_237EFA1B0();
  LOBYTE(v14) = 0;
  OUTLINED_FUNCTION_9_3();
  v10 = v17;
  sub_237EF9A70();
  if (!v10)
  {
    LOBYTE(v14) = 1;
    OUTLINED_FUNCTION_9_3();
    sub_237EF9A70();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t LinearTransformer.hashValue.getter(uint64_t a1)
{
  sub_237EFA120();
  LinearTransformer.hash(into:)(v3, a1);
  return sub_237EFA170();
}

uint64_t LinearTransformer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  OUTLINED_FUNCTION_1_1();
  v46 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26();
  v44 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v48 = &v41 - v16;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  type metadata accessor for LinearTransformer.CodingKeys(255, &v51);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_8_8();
  v50 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v45 = v21;
  MEMORY[0x28223BE20](v22);
  v47 = a2;
  v51 = a2;
  v52 = a3;
  v49 = a4;
  v53 = a4;
  v54 = a5;
  v23 = type metadata accessor for LinearTransformer(0, &v51);
  OUTLINED_FUNCTION_1_1();
  v42 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v41 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_8_8();
  v28 = v55;
  sub_237EFA190();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v27;
  v55 = v23;
  v30 = v46;
  LOBYTE(v51) = 0;
  v31 = v47;
  OUTLINED_FUNCTION_7_9();
  v32 = *(v30 + 32);
  v41 = v29;
  v33 = v48;
  v48 = v32;
  (v32)(v29, v33, v31);
  LOBYTE(v51) = 1;
  v34 = v44;
  OUTLINED_FUNCTION_7_9();
  v35 = OUTLINED_FUNCTION_6_8();
  v36(v35);
  v37 = v55;
  v38 = v41;
  (v48)(&v41[*(v55 + 52)], v34, v31);
  v39 = v42;
  (*(v42 + 16))(v43, v38, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v39 + 8))(v38, v37);
}

uint64_t sub_237C9B218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LinearTransformer.applied(to:eventHandler:)(a2, a2, a3, a5);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237C9B28C(uint64_t a1, uint64_t a2)
{
  sub_237EFA120();
  LinearTransformer.hash(into:)(v4, a2);
  return sub_237EFA170();
}

uint64_t LinearTransformer.debugDescription.getter(uint64_t a1)
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000019, 0x8000000237EFBB70);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](0x74657366666F202CLL, 0xEA0000000000203ALL);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_237C9B408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v45 = sub_237EF7820();
  OUTLINED_FUNCTION_1_1();
  v44 = v4;
  MEMORY[0x28223BE20](v5);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_237EF7730();
  OUTLINED_FUNCTION_1_1();
  v42 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  v47 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v49 = &v42 - v18;
  v19 = *(v9 + 16);
  v20 = OUTLINED_FUNCTION_4_11();
  v19(v20);
  sub_237C65348();
  OUTLINED_FUNCTION_4_11();
  sub_237EF8190();
  v21 = *__dst;
  (v19)(v12, v2 + *(a1 + 52), v7);
  OUTLINED_FUNCTION_4_11();
  sub_237EF8190();
  v22 = v49;
  sub_237CFA100(v21, v51[0]);
  v23 = v42;
  v24 = *(v42 + 16);
  (v24)(v47, v22, v46);
  v25 = v48;
  sub_237EF7810();
  v26 = type metadata accessor for CoreMLPackage(0);
  v27 = v43;
  v28 = v43 + *(v26 + 24);
  *(v28 + 80) = 0;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  v29 = v27;
  v24();
  memcpy(__dst, v28, 0x58uLL);
  sub_237C9BD20(__dst);
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 0;
  v30 = v44;
  v31 = v45;
  (*(v44 + 16))(v29 + *(v26 + 20), v25, v45);
  v32 = sub_237E34060();
  v34 = v33;
  v35 = sub_237EF7780();
  v37 = v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v37;
  sub_237C91098(v32, v34, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
  *v37 = v50;
  v35(v51, 0);
  (*(v30 + 8))(v48, v31);
  v39 = *(v23 + 8);
  v40 = v46;
  v39(v47, v46);
  return (v39)(v49, v40);
}

uint64_t sub_237C9B828(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237C9B898(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_237C9B9E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
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
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
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
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237C9BC00(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237C9BD20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7B0, &unk_237F03CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_7_9()
{

  return sub_237EF9970();
}

void sub_237C9BE18(uint64_t a1)
{
  sub_237C9BF28(319);
  if (v3 <= 0x3F)
  {
    type metadata accessor for AdamWStorage.Moment(255, *(a1 + 16), *(a1 + 24), v2);
    sub_237EF82B0();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237C9BF28(uint64_t a1)
{
  if (!qword_27DEAE7A0[0])
  {
    sub_237EF6580();
    v1 = sub_237EF90F0();
    if (!v2)
    {
      atomic_store(v1, qword_27DEAE7A0);
    }
  }
}

void sub_237C9BF98(uint64_t a1)
{
  sub_237C86290();
  if (v1 <= 0x3F)
  {
    sub_237C862E8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_237C9C044(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1885697139 && a2 == 0xE400000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E696E7261656CLL && a2 == 0xEC00000065746152;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x3161746562 && a2 == 0xE500000000000000;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x3261746562 && a2 == 0xE500000000000000;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F6C69737065 && a2 == 0xE700000000000000;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x8000000237EFBBA0 == a2;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6544746867696577 && a2 == 0xEB00000000796163;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x746E656964617267 && a2 == 0xED0000656C616353;
                if (v12 || (sub_237EF9D40() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x73746E656D6F6DLL && a2 == 0xE700000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_237EF9D40();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_237C9C324(char a1)
{
  result = 1885697139;
  switch(a1)
  {
    case 1:
      result = 0x676E696E7261656CLL;
      break;
    case 2:
      result = 0x3161746562;
      break;
    case 3:
      result = 0x3261746562;
      break;
    case 4:
      result = 0x6E6F6C69737065;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6544746867696577;
      break;
    case 7:
      result = 0x746E656964617267;
      break;
    case 8:
      result = 0x73746E656D6F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237C9C430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  v42 = v21;
  v43 = v20;
  v23 = v22;
  v25 = v24;
  v26 = *(v22 + 16);
  v40 = *(v23 + 24);
  v41 = v26;
  type metadata accessor for AdamWStorage.CodingKeys(255, v26, v40, v27);
  OUTLINED_FUNCTION_5_9();
  swift_getWitnessTable();
  v28 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  v33 = &v39 - v32;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_237EFA1B0();
  v34 = v42;
  sub_237EF9A50();
  if (!v34)
  {
    v35 = v40;
    v36 = v41;
    OUTLINED_FUNCTION_1_11(1);
    OUTLINED_FUNCTION_1_11(2);
    OUTLINED_FUNCTION_1_11(3);
    OUTLINED_FUNCTION_1_11(4);
    sub_237EF6580();
    sub_237C9D7A4(&qword_27DEAE828, MEMORY[0x277D2CDA8]);
    sub_237EF9A00();
    OUTLINED_FUNCTION_1_11(6);
    OUTLINED_FUNCTION_1_11(7);
    v46 = 8;
    type metadata accessor for AdamWStorage.Moment(255, v36, v35, v37);
    sub_237EF82B0();
    WitnessTable = swift_getWitnessTable();
    v44 = MEMORY[0x277D837D8];
    v45 = WitnessTable;
    swift_getWitnessTable();
    sub_237EF9A70();
  }

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_12_6();
}

void sub_237C9C74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  v69 = v20;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v62[1] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8, &unk_237F06050);
  OUTLINED_FUNCTION_18(v28);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19();
  v66 = v30;
  type metadata accessor for AdamWStorage.CodingKeys(255, v24, v22, v31);
  OUTLINED_FUNCTION_5_9();
  swift_getWitnessTable();
  v67 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v65 = v32;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  v35 = v62 - v34;
  v63 = v24;
  v64 = v22;
  v37 = type metadata accessor for AdamWStorage(0, v24, v22, v36);
  OUTLINED_FUNCTION_1();
  v62[0] = v38;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v39);
  v41 = v62 - v40;
  v43 = *(v42 + 52);
  v44 = sub_237EF6580();
  v71 = v43;
  v45 = v41;
  __swift_storeEnumTagSinglePayload(&v41[v43], 1, 1, v44);
  v46 = v26[3];
  v70 = v26;
  __swift_project_boxed_opaque_existential_1(v26, v46);
  v68 = v35;
  v47 = v69;
  sub_237EFA190();
  if (v47)
  {
    v50 = v71;
    __swift_destroy_boxed_opaque_existential_1(v70);
    sub_237C65484(&v45[v50], &qword_27DEAD2D8, &unk_237F06050);
  }

  else
  {
    v48 = v65;
    v49 = v66;
    v51 = v45;
    *v45 = sub_237EF9950();
    sub_237EF9940();
    *(v45 + 2) = v52;
    OUTLINED_FUNCTION_2_13(2);
    *(v45 + 3) = v53;
    OUTLINED_FUNCTION_2_13(3);
    *(v45 + 4) = v54;
    OUTLINED_FUNCTION_2_13(4);
    *(v45 + 5) = v55;
    LOBYTE(a10) = 5;
    sub_237C9D7A4(qword_27DEAE830, MEMORY[0x277D2CDB0]);
    sub_237EF9900();
    sub_237C9D800(v49, &v45[v71], &qword_27DEAD2D8, &unk_237F06050);
    OUTLINED_FUNCTION_2_13(6);
    *&v45[v37[14]] = v56;
    OUTLINED_FUNCTION_2_13(7);
    *&v45[v37[15]] = v57;
    type metadata accessor for AdamWStorage.Moment(255, v63, v64, v58);
    sub_237EF82B0();
    v74 = 8;
    WitnessTable = swift_getWitnessTable();
    v72 = MEMORY[0x277D83808];
    v73 = WitnessTable;
    swift_getWitnessTable();
    sub_237EF9970();
    (*(v48 + 8))(v68, v67);
    *&v45[v37[16]] = a10;
    v60 = v62[0];
    OUTLINED_FUNCTION_18_5();
    v61();
    __swift_destroy_boxed_opaque_existential_1(v70);
    (*(v60 + 8))(v51, v37);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237C9CC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C9C044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237C9CC8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C9C31C();
  *a1 = result;
  return result;
}

uint64_t sub_237C9CCBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237C9CD10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237C9CD9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E6F636573 && a2 == 0xE600000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x536D756D6978616DLL && a2 == 0xED0000646E6F6365)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_237C9CEAC(char a1)
{
  if (!a1)
  {
    return 0x7473726966;
  }

  if (a1 == 1)
  {
    return 0x646E6F636573;
  }

  return 0x536D756D6978616DLL;
}

void sub_237C9CF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_4();
  v26 = v25;
  v28 = v27;
  v29 = *(v25 + 16);
  v38 = v26;
  v39 = v24;
  type metadata accessor for AdamWStorage.Moment.CodingKeys(255, v29, *(v26 + 24), v30);
  OUTLINED_FUNCTION_6_9();
  swift_getWitnessTable();
  v31 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  v36 = &v38 - v35;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_237EFA1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  sub_237C86400(&qword_27DEADE78, MEMORY[0x277D83AA0], MEMORY[0x277CBFD38]);
  OUTLINED_FUNCTION_7_10();
  v37 = v39;
  sub_237EF9A70();
  if (!v37)
  {
    OUTLINED_FUNCTION_7_10();
    sub_237EF9A70();
    OUTLINED_FUNCTION_7_10();
    sub_237EF9A00();
  }

  (*(v33 + 8))(v36, v31);
  OUTLINED_FUNCTION_12_6();
}

void sub_237C9D0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_13_4();
  v77 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v68 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  OUTLINED_FUNCTION_18(v31);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19();
  v69 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_1();
  v71 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_2();
  v70 = v37;
  MEMORY[0x28223BE20](v38);
  v72 = &v66 - v39;
  type metadata accessor for AdamWStorage.Moment.CodingKeys(255, v27, v25, v40);
  OUTLINED_FUNCTION_6_9();
  swift_getWitnessTable();
  v76 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v74 = v41;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v42);
  v44 = &v66 - v43;
  v46 = type metadata accessor for AdamWStorage.Moment(0, v27, v25, v45);
  OUTLINED_FUNCTION_1();
  v48 = v47;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v49);
  v51 = &v66 - v50;
  v53 = *(v52 + 40);
  v78 = v51;
  v79 = v53;
  v73 = v34;
  __swift_storeEnumTagSinglePayload(&v51[v53], 1, 1, v34);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v75 = v44;
  v54 = v77;
  sub_237EFA190();
  if (v54)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_237C65484(&v78[v79], &qword_27DEAD600, &unk_237F049C0);
  }

  else
  {
    v66 = v48;
    v67 = v46;
    v77 = v29;
    v55 = sub_237C86400(&qword_27DEADE88, MEMORY[0x277D83AC8], MEMORY[0x277CBFD48]);
    v56 = v72;
    v57 = v73;
    sub_237EF9970();
    v58 = *(v71 + 32);
    v59 = v78;
    v58(v78, v56, v57);
    v60 = v70;
    v72 = v55;
    sub_237EF9970();
    v61 = v67;
    v58(&v59[*(v67 + 36)], v60, v57);
    v62 = v69;
    sub_237EF9900();
    v63 = OUTLINED_FUNCTION_11_5();
    v64(v63, v76);
    sub_237C9D800(v62, &v59[v79], &qword_27DEAD600, &unk_237F049C0);
    v65 = v66;
    (*(v66 + 16))(v68, v59, v61);
    __swift_destroy_boxed_opaque_existential_1(v77);
    (*(v65 + 8))(v59, v61);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237C9D5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_237EFA120();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_237EFA170();
}

uint64_t sub_237C9D620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C9CD9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237C9D67C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C6DF34();
  *a1 = result;
  return result;
}

uint64_t sub_237C9D6AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237C9D700(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237C9D7A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_237EF6580();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237C9D800(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_21_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_237C9D850@<X0>(uint64_t a1@<X0>, float *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v85 = a1;
  v112 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v92 = v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_1();
  v107 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v87 = v14;
  MEMORY[0x28223BE20](v15);
  v102 = &v82 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  OUTLINED_FUNCTION_18(v17);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19();
  v101 = v19;
  OUTLINED_FUNCTION_18_5();
  v24 = type metadata accessor for AdamWStorage.Moment(v20, v21, v22, v23);
  v84 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v83 = v25;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19();
  v96 = v27;
  v106 = *(v24 - 8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19();
  v111 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8, &unk_237F06050);
  OUTLINED_FUNCTION_18(v30);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  v33 = &v82 - v32;
  OUTLINED_FUNCTION_18_5();
  v34 = sub_237EF67A0();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v37);
  v39 = &v82 - v38;
  OUTLINED_FUNCTION_18_5();
  v44 = type metadata accessor for AdamWStorage(v40, v41, v42, v43);
  sub_237C9E294(a2 + *(v44 + 52), v33, &qword_27DEAD2D8, &unk_237F06050);
  v98 = v44;
  v99 = a2;
  sub_237EF6770();
  v82 = v36;
  v45 = v34;
  (*(v36 + 32))(v112, v39, v34);
  v94 = a4;
  v46 = sub_237EF6870();
  sub_237EF6C60();
  v97 = a3;
  v47 = v111;
  sub_237EF9650();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v115 = sub_237EF8920();
  v95 = v46 + 32;
  v89 = v106 + 32;
  v108 = (v107 + 16);
  v104 = (v107 + 8);
  v86 = v107 + 32;
  v88 = v106 + 8;
  v109 = v24;
  v91 = v46;
  v90 = TupleTypeMetadata2;
  v103 = v45;
  while (1)
  {
    v49 = sub_237EF8A00();
    v50 = v115;
    if (v115 == v49)
    {
      OUTLINED_FUNCTION_8_9();
      (*(v73 + 8))(v85);

      OUTLINED_FUNCTION_8_9();
      return (*(v74 + 8))(v75, v76);
    }

    v51 = sub_237EF89D0();
    sub_237EF8960();
    if ((v51 & 1) == 0)
    {
      break;
    }

    v52 = (v95 + 24 * v50);
    v54 = *v52;
    v53 = v52[1];
    sub_237EF8260();

    sub_237EF8A40();
    v113 = v54;
    v114 = v53;
    v55 = v96;
    sub_237EF82F0();

    if (__swift_getEnumTagSinglePayload(v55, 1, v24) == 1)
    {

      (*(v83 + 8))(v55, v84);
      sub_237C6514C();
      v78 = swift_allocError();
      *v79 = 0xD000000000000025;
      v79[1] = 0x8000000237EFB480;
      v110 = v78;
      swift_willThrow();

      OUTLINED_FUNCTION_8_9();
      (*(v80 + 8))(v85);
      OUTLINED_FUNCTION_8_9();
      (*(v81 + 8))();
      return (*(v82 + 8))(v112, v45);
    }

    OUTLINED_FUNCTION_19_1();
    v56(v47, v55, v24);
    v106 = *v108;
    v24 = v102;
    v57 = v93;
    (v106)(v102, v47, v93);
    v107 = sub_237C651A0();
    v58 = sub_237EF6B10();

    OUTLINED_FUNCTION_10();
    v105 = v59;
    v60 = v101;
    OUTLINED_FUNCTION_10_7();
    sub_237EF7F00();
    v110 = v5;
    v61 = *v104;
    (*v104)(v24, v57);
    __swift_storeEnumTagSinglePayload(v60, 0, 1, v58);
    v62 = sub_237EF6630();
    sub_237EF6650();
    (v106)(v24, v111 + *(v109 + 36), v57);

    OUTLINED_FUNCTION_10_7();
    sub_237EF7F00();
    v63 = OUTLINED_FUNCTION_14_5();
    v105 = v61;
    (v61)(v63);
    v64 = v92;
    v100 = v58;
    __swift_storeEnumTagSinglePayload(v60, 0, 1, v58);
    v45 = v103;
    v47 = v111;
    sub_237EF6650();
    sub_237C9E294(v47 + *(v24 + 40), v64, &qword_27DEAD600, &unk_237F049C0);
    if (__swift_getEnumTagSinglePayload(v64, 1, v57) == 1)
    {
      OUTLINED_FUNCTION_19_1();
      v65(v47, v24);

      sub_237C65484(v64, &qword_27DEAD600, &unk_237F049C0);
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      v66 = v87;
      v67(v87, v64, v57);
      if (__swift_getEnumTagSinglePayload(v112 + *(v45 + 72), 1, v62))
      {

        v105(v66, v57);
      }

      else
      {
        v24 = v102;
        (v106)(v102, v66, v57);
        OUTLINED_FUNCTION_10();
        v106 = v62;
        v68 = v100;
        v69 = v101;
        OUTLINED_FUNCTION_10_7();
        sub_237EF7F00();
        v70 = OUTLINED_FUNCTION_14_5();
        v71 = v105;
        (v105)(v70);
        __swift_storeEnumTagSinglePayload(v69, 0, 1, v68);
        sub_237EF6650();
        v71(v87, v57);
      }

      OUTLINED_FUNCTION_19_1();
      v47 = v111;
      v72(v111, v24);
      v45 = v103;
    }
  }

  result = sub_237EF93A0();
  __break(1u);
  return result;
}

uint64_t sub_237C9E294(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_21_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(v4, v5);
  return v4;
}

_BYTE *sub_237C9E2E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237C9E3B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_237C9E438(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_11@<X0>(char a1@<W8>)
{
  *(v2 - 72) = a1;

  return sub_237EF9A40();
}

uint64_t OUTLINED_FUNCTION_2_13@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_237EF9940();
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void TimeSeriesClassifier.Model.export(to:)(uint64_t a1, const char *a2)
{
  v5 = type metadata accessor for CoreMLPackage(0);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_237C9E780(a2, v8 - v7);
  if (!v2)
  {
    sub_237E33BC0(a1);
    OUTLINED_FUNCTION_4_12();
    sub_237C9FF8C(v9, v10);
  }
}

void sub_237C9E780(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a1;
  v139 = a2;
  sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v140 = v3;
  v141 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_3();
  v160 = v4;
  OUTLINED_FUNCTION_12_1();
  v5 = sub_237EF7D20();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  v136 = v7;
  OUTLINED_FUNCTION_12_1();
  v154 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v134 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  v135 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7A8, &qword_237F0CCF0);
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  v133 = (&v132 - v13);
  OUTLINED_FUNCTION_12_1();
  sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v163 = v15;
  v164 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_3();
  v162 = v16;
  OUTLINED_FUNCTION_12_1();
  sub_237EF6E30();
  OUTLINED_FUNCTION_1();
  v158 = v18;
  v159 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_3();
  v161 = v19;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v156 = v21;
  v157 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v155 = v22;
  MEMORY[0x28223BE20](v23);
  v170 = &v132 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE938, &unk_237F06390);
  v26 = OUTLINED_FUNCTION_18(v25);
  MEMORY[0x28223BE20](v26);
  v152 = (&v132 - v27);
  OUTLINED_FUNCTION_12_1();
  sub_237EF7BC0();
  OUTLINED_FUNCTION_1();
  v137 = v29;
  v138 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_3();
  v169 = v30;
  OUTLINED_FUNCTION_12_1();
  sub_237EF64C0();
  OUTLINED_FUNCTION_1();
  v149 = v32;
  v150 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_3();
  v147 = v33;
  v34 = OUTLINED_FUNCTION_12_1();
  v148 = type metadata accessor for LSTMFCN(v34);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_3();
  v167 = v36;
  OUTLINED_FUNCTION_12_1();
  v37 = sub_237EF7B10();
  v144 = v37;
  v173 = *(v37 - 8);
  v38 = v173;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;
  v142 = v40 - v39;
  sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v165 = v43;
  v166 = v42;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_2();
  v151 = v44;
  MEMORY[0x28223BE20](v45);
  v172 = &v132 - v46;
  MEMORY[0x28223BE20](v47);
  v171 = &v132 - v48;
  sub_237E651E4(&v182[3]);
  v182[0] = MEMORY[0x277D84F98];
  v182[1] = MEMORY[0x277D84F98];
  v182[2] = MEMORY[0x277D84F90];
  v49 = *MEMORY[0x277D252E0];
  v50 = *(v38 + 104);
  v145 = v38 + 104;
  v146 = v50;
  v50(v41, v49, v37);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD370, &qword_237F030D8);
  v51 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v53 = v52;
  v55 = *(v54 + 72);
  v56 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v57 = swift_allocObject();
  v176 = xmmword_237F04760;
  *(v57 + 16) = xmmword_237F04760;
  v58 = v57 + v56;
  *(v57 + v56) = 0;
  v59 = *(v53 + 104);
  v59(v57 + v56, *MEMORY[0x277D25270], v51);
  v168 = *(v174 + *(v175 + 92));
  *(v58 + v55) = v168;
  v59(v58 + v55, *MEMORY[0x277D25278], v51);
  v60 = v142;
  sub_237EF7CC0();

  v61 = *(v173 + 8);
  v173 += 8;
  v62 = v144;
  v61(v60, v144);
  OUTLINED_FUNCTION_5_10();
  sub_237CF0C9C();
  v146(v60, *MEMORY[0x277D252D0], v62);
  *(swift_allocObject() + 16) = xmmword_237F03530;
  sub_237EF78D0();
  sub_237EF7CC0();

  v61(v60, v62);
  OUTLINED_FUNCTION_3_12();
  sub_237CF0C9C();
  v64 = v149;
  v63 = v150;
  v65 = v147;
  (*(v149 + 104))(v147, *MEMORY[0x277D2CD48], v150);
  sub_237C962B0();
  v66 = v174;
  sub_237EF68D0();
  (*(v64 + 8))(v65, v63);
  __dst[0] = *(v66 + *(v175 + 88));
  v177[2] = *(v175 + 16);
  v178 = *(v175 + 24);
  v179 = *(v175 + 40);
  v180 = *(v175 + 56);
  v181 = *(v175 + 72);
  v67 = sub_237EF8A60();
  sub_237EF8260();
  WitnessTable = swift_getWitnessTable();
  v69 = v153;
  sub_237C9339C(sub_237C9FEA4, v177, v67, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable);
  v71 = v70;
  v173 = v69;

  sub_237D8ECF0(v182, v168, v71);

  sub_237EF7BB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
  v72 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v72);
  v73 = swift_allocObject();
  v74 = OUTLINED_FUNCTION_10_8(v73);
  v75 = v166;
  v76 = *(v165 + 16);
  v77 = v151;
  v76(v151, v171, v166, v74);
  OUTLINED_FUNCTION_5_10();
  sub_237EF7880();
  (v76)(v77, v172, v75);
  v78 = v168;
  OUTLINED_FUNCTION_3_12();
  sub_237EF7880();
  sub_237EF7B90();
  sub_237EF7B70();
  sub_237EF8260();
  v79 = v152;
  sub_237EF7930();
  v80 = sub_237EF7940();
  __swift_storeEnumTagSinglePayload(v79, 0, 1, v80);
  v81 = sub_237EF7B40();
  sub_237E60E08();
  v81(__dst, 0);
  sub_237EF7720();
  v82 = *MEMORY[0x277D25100];
  v152 = *(v163 + 104);
  v153 = v163 + 104;
  v152(v162, v82, v164);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v83 = swift_allocObject();
  OUTLINED_FUNCTION_10_8(v83);
  v84 = v174;
  v85 = v175;
  v86 = *(v174 + *(v175 + 96));
  *(v87 + 32) = v86;
  *(v87 + 40) = v78;
  v88 = v161;
  sub_237EF6DD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7C0, &unk_237F03CB0);
  v89 = sub_237EF7D30();
  OUTLINED_FUNCTION_6_1(v89);
  v90 = swift_allocObject();
  OUTLINED_FUNCTION_10_8(v90);
  if (*(v84 + *(v85 + 100)) < v86)
  {
    __break(1u);
  }

  else
  {
    v92 = v91;
    v175 = "dropoutProbability";
    sub_237EF7D40();
    sub_237EF7D40();
    v93 = v133;
    *v133 = v92;
    v94 = *MEMORY[0x277D25110];
    v95 = sub_237EF6DF0();
    OUTLINED_FUNCTION_4();
    (*(v96 + 104))(v93, v94, v95);
    __swift_storeEnumTagSinglePayload(v93, 0, 1, v95);
    sub_237EF6E00();
    v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    v97 = sub_237EF70E0();
    OUTLINED_FUNCTION_6_1(v97);
    v150 = *(v98 + 72);
    v168 = ((*(v99 + 80) + 32) & ~*(v99 + 80)) + 2 * v150;
    v100 = swift_allocObject();
    v101 = OUTLINED_FUNCTION_10_8(v100);
    v102 = v135;
    (*(v158 + 16))(v135, v88, v159, v101);
    v103 = *MEMORY[0x277D250A0];
    v151 = *(v134 + 104);
    v151(v102, v103, v154);
    v104 = OUTLINED_FUNCTION_5_10();
    OUTLINED_FUNCTION_8_10(v104, v105);
    v106 = v162;
    v107 = v164;
    v152(v162, *MEMORY[0x277D250E8], v164);
    sub_237EF6CF0();
    (*(v163 + 8))(v106, v107);
    v108 = OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_8_10(v108, v109);
    v110 = v170;
    sub_237EF76B0();
    v111 = swift_allocObject();
    OUTLINED_FUNCTION_10_8(v111);
    sub_237EF6DB0();
    v151(v102, *MEMORY[0x277D25130], v154);
    OUTLINED_FUNCTION_8_10(0x6C6562616CLL, 0xE500000000000000);
    sub_237EF6E50();
    OUTLINED_FUNCTION_8_10(0xD000000000000012, v175 | 0x8000000000000000);
    sub_237EF7700();
    sub_237EF7D10();
    sub_237EF7660();
    sub_237EF7620();
    sub_237EF7600();
    sub_237EF7640();
    sub_237EF75E0();
    v112 = v155;
    v113 = *(v156 + 16);
    v114 = v157;
    v113(v155, v110, v157);
    memcpy(v183, &v182[3], sizeof(v183));
    memcpy(v184, &v182[3], sizeof(v184));
    sub_237C9FEDC(v183, __dst);
    v115 = v160;
    sub_237EF7810();
    v116 = type metadata accessor for CoreMLPackage(0);
    v117 = v139;
    v118 = (v139 + *(v116 + 24));
    v118[10] = 0;
    *(v118 + 3) = 0u;
    *(v118 + 4) = 0u;
    *(v118 + 1) = 0u;
    *(v118 + 2) = 0u;
    *v118 = 0u;
    v113(v117, v112, v114);
    memcpy(v185, v118, sizeof(v185));
    sub_237C9FEDC(v183, __dst);
    sub_237C9BD20(v185);
    memcpy(v118, v184, 0x58uLL);
    v120 = v140;
    v119 = v141;
    (*(v140 + 16))(v117 + *(v116 + 20), v115, v141);
    v121 = sub_237E34060();
    v123 = v122;
    v124 = sub_237EF7780();
    v126 = v125;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v187 = *v126;
    sub_237C91098(v121, v123, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
    *v126 = v187;
    v124(__dst, 0);
    sub_237C9FF38(v183);
    (*(v120 + 8))(v160, v119);
    v128 = *(v156 + 8);
    v129 = v157;
    v128(v155, v157);
    (*(v158 + 8))(v161, v159);
    v128(v170, v129);
    (*(v137 + 8))(v169, v138);
    sub_237C9FF8C(v167, type metadata accessor for LSTMFCN);
    v130 = v166;
    v131 = *(v165 + 8);
    v131(v172, v166);
    v131(v171, v130);
    memcpy(__dst, v182, 0x70uLL);
    sub_237C9FFE4(__dst);
  }
}

void TimeSeriesClassifier.Model.export(to:metadata:)(uint64_t a1, uint64_t *a2, const char *a3)
{
  v15 = a1;
  type metadata accessor for CoreMLPackage(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = a2[8];
  sub_237C9E780(a3, v8 - v7);
  if (!v3)
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
    v11 = sub_237EF7780();
    sub_237C9FB0C(v10, sub_237C9FE58, 0, v12);
    v11(v14, 0);
    sub_237E33BC0(v15);
    OUTLINED_FUNCTION_4_12();
    sub_237C9FF8C(v9, v13);
  }
}

uint64_t sub_237C9F9DC@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = sub_237EF85D0();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_237C9FAC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;
  sub_237EF8260();
  sub_237EF8260();
  return a2;
}

uint64_t sub_237C9FB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_237C9FB80(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_237C9FB80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  sub_237E39F80(a1, a2, a3, v50);
  v6 = v50[1];
  v7 = v50[3];
  v8 = v50[4];
  v45 = v50[5];
  v46 = v50[0];
  v9 = (v50[2] + 64) >> 6;
  sub_237EF8260();

  v43 = v9;
  v44 = v6;
  if (v8)
  {
    while (1)
    {
      v47 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v46 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v46 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v49[0] = v14;
      v49[1] = v15;
      v49[2] = v17;
      v49[3] = v18;
      sub_237EF8260();
      sub_237EF8260();
      v45(v48, v49);

      v20 = v48[0];
      v19 = v48[1];
      v21 = v48[2];
      v22 = v48[3];
      v23 = *v51;
      v25 = sub_237D2FC30(v48[0]);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if ((v47 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2D0, &qword_237F05598);
          sub_237EF96C0();
        }
      }

      else
      {
        sub_237D2848C(v28, v47 & 1);
        v30 = sub_237D2FC30(v20);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_24;
        }

        v25 = v30;
      }

      v8 &= v8 - 1;
      v32 = *v51;
      if (v29)
      {
        v33 = (v32[7] + 16 * v25);
        v35 = *v33;
        v34 = v33[1];
        sub_237EF8260();

        v36 = (v32[7] + 16 * v25);
        *v36 = v35;
        v36[1] = v34;
      }

      else
      {
        v32[(v25 >> 6) + 8] |= 1 << v25;
        v37 = (v32[6] + 16 * v25);
        *v37 = v20;
        v37[1] = v19;
        v38 = (v32[7] + 16 * v25);
        *v38 = v21;
        v38[1] = v22;
        v39 = v32[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v32[2] = v41;
      }

      a4 = 1;
      v7 = v10;
      v9 = v43;
      v6 = v44;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_237C9FE9C();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v47 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_237EFA020();
  __break(1u);
  return result;
}

uint64_t sub_237C9FE58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237C9FAC0(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_237C9FF8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t a1, uint64_t a2)
{

  return sub_237EF7090();
}

__n128 OUTLINED_FUNCTION_10_8(__n128 *a1)
{
  result = v1[22];
  a1[1] = result;
  return result;
}

void OrdinalEncoder.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  if ((sub_237D0510C() & 1) == 0)
  {
    sub_237D05198(0x456C616E6964724FLL, 0xEE007265646F636ELL);
  }

  (*(v9 + 16))(v13, v5, v1);
  v14 = v3[2];
  sub_237EF90F0();
  v15 = v3[6];
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v16 = sub_237EF8D00();
  OrdinalEncoder.Transformer.init(categories:)(v16, v14, v3[3], v3[4], v3[5], v15, v7);
  OUTLINED_FUNCTION_12_6();
}

uint64_t OrdinalEncoder.Transformer.init(categories:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v23 = a1;
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v22[5] = a5;
  v22[6] = a6;
  sub_237EF90F0();
  v22[7] = a6;
  sub_237EF8260();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v12 = sub_237EF8CF0();
  v13 = type metadata accessor for ComparableOptional(0, a2, a3, a6);
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237CA1344, v22, v12, v13, MEMORY[0x277D84A98], WitnessTable);
  v16 = v15;

  v23 = v16;
  sub_237EF8A60();
  OUTLINED_FUNCTION_3_13();
  v17 = swift_getWitnessTable();
  swift_getWitnessTable();
  v18 = sub_237EF8D00();
  v19 = OUTLINED_FUNCTION_7_11();
  result = sub_237E86E14(v18, v13, v19, v17);
  *a7 = a1;
  a7[1] = result;
  a7[2] = v21;
  return result;
}

uint64_t sub_237CA038C()
{
  OrdinalEncoder.fitted<A>(to:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t OrdinalEncoder.makeTransformer()@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  sub_237EF90F0();
  v5 = a1[6];
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v6 = sub_237EF8130();
  return OrdinalEncoder.Transformer.init(categories:)(v6, v4, a1[3], a1[4], a1[5], v5, a2);
}

void OrdinalEncoder.update<A>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v51 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v48 = v5[2];
  v11 = sub_237EF90F0();
  OUTLINED_FUNCTION_12_7();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v44 = v13;
  v45 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  OUTLINED_FUNCTION_1_1();
  v47 = v17;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v46 = &v40 - v19;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  (*(v23 + 16))(v22 - v21, v8, v4);
  v49 = v6[6];
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v50 = v2;
  v24 = sub_237EF8D00();
  v25 = sub_237EF8CB0();
  if (v25)
  {

    *v10 = v24;
  }

  else
  {
    v43 = &v40;
    v52 = v24;
    MEMORY[0x28223BE20](v25);
    v26 = v48;
    *(&v40 - 8) = v48;
    *(&v40 - 7) = v4;
    v27 = v6[3];
    v41 = v6[4];
    v28 = v41;
    v42 = v27;
    *(&v40 - 6) = v27;
    *(&v40 - 5) = v28;
    v40 = v6[5];
    v30 = v49;
    v29 = v50;
    *(&v40 - 4) = v40;
    *(&v40 - 3) = v30;
    *(&v40 - 2) = v29;
    *(&v40 - 1) = v10;
    OUTLINED_FUNCTION_12_7();
    sub_237EF8CF0();
    swift_getWitnessTable();
    sub_237EF87D0();

    if (__swift_getEnumTagSinglePayload(v16, 1, v11) == 1)
    {
      (*(v44 + 8))(v16, v45);
    }

    else
    {
      v32 = v46;
      v31 = v47;
      v33 = (*(v47 + 32))(v46, v16, v11);
      MEMORY[0x28223BE20](v33);
      *(&v40 - 8) = v26;
      *(&v40 - 7) = v4;
      v34 = v41;
      *(&v40 - 6) = v42;
      *(&v40 - 5) = v34;
      v36 = v49;
      v35 = v50;
      *(&v40 - 4) = v40;
      *(&v40 - 3) = v36;
      *(&v40 - 2) = v35;
      sub_237CA0A1C();
      if (v53)
      {
        v37 = v52;
      }

      else
      {
        v37 = 7104878;
      }

      if (v53)
      {
        v38 = v53;
      }

      else
      {
        v38 = 0xE300000000000000;
      }

      sub_237C84150();
      swift_allocError();
      *v39 = xmmword_237F063A0;
      *(v39 + 16) = v37;
      *(v39 + 24) = v38;
      *(v39 + 32) = 3;
      swift_willThrow();
      (*(v31 + 8))(v32, v11);
    }
  }

  OUTLINED_FUNCTION_12_6();
}

BOOL sub_237CA08A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_237EF90F0();
  sub_237EF8260();
  swift_getWitnessTable();
  v3 = sub_237EF8CD0();

  return (v3 & 1) == 0;
}

uint64_t sub_237CA094C@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = sub_237EF85D0();
  *a3 = result;
  a3[1] = v8;
  return result;
}

void sub_237CA0A1C()
{
  OUTLINED_FUNCTION_13_4();
  v29 = v2;
  v30 = v1;
  v31 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_1_1();
  v27 = v7;
  v28 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v13 = *(v12 + 16);
  OUTLINED_FUNCTION_1_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21, v25);
  v26 = 1;
  if (__swift_getEnumTagSinglePayload(v23, 1, v13) == 1)
  {
    goto LABEL_5;
  }

  (*(v15 + 32))(v19, v23, v13);
  v30(v19, v11);
  (*(v15 + 8))(v19, v13);
  if (!v0)
  {
    v26 = 0;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v5, v26, 1, v31);
    goto LABEL_6;
  }

  (*(v27 + 32))(v29, v11, v28);
LABEL_6:
  OUTLINED_FUNCTION_12_6();
}

uint64_t OrdinalEncoder.encodeWithOptimizer(_:to:)(__int128 *a1, uint64_t a2, __n128 *a3)
{
  v4 = *(a1 + 2);
  v14 = *a1;
  v15 = v4;
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_14_6(a3[3].n128_i64[0], a3[1], a3[2], v11, v12, v13);
  WitnessTable = swift_getWitnessTable();
  return v7(&v14, v8, WitnessTable, v5, v6);
}

uint64_t OrdinalEncoder.decodeWithOptimizer(from:)(uint64_t a1, __n128 *a2)
{
  v3 = OUTLINED_FUNCTION_14_6(a2[3].n128_i64[0], a2[1], a2[2], v9, v10, v11);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  v6 = *(v5 + 8);
  WitnessTable = swift_getWitnessTable();
  return v6(v3, v3, WitnessTable, v4, v5);
}

uint64_t sub_237CA0DE4()
{
  OrdinalEncoder.update<A>(_:with:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t OrdinalEncoder.Transformer.categories.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

BOOL sub_237CA0EF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  return v2 != 0;
}

uint64_t sub_237CA0F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237CA0FB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237CA101C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237CA108C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_237CA10FC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237CA0EF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_237CA116C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CA0F38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CA11A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237CA11F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237CA124C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237EF90F0();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1, v7);
  return sub_237C66C14(v9, a2, a3);
}

void OrdinalEncoder.Transformer.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v18 = v0;
  v19 = v1;
  v3 = v2;
  v4 = v2[2];
  v5 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v20 = type metadata accessor for ComparableOptional(0, v4, v3[3], v3[6]);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v17 - v14;
  v16 = *(v18 + 2);
  v21 = *v18;
  v22 = v16;
  (*(v7 + 16))(v10, v19, v5);
  sub_237C66C14(v10, v4, v15);
  sub_237CA1598(v15, v3);
  (*(v12 + 8))(v15, v20);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237CA1598(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v6 = sub_237EF90F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v11 = *(v2 + 8);
  v10 = *(v2 + 16);
  v12 = type metadata accessor for ComparableOptional(0, v5, a2[3], a2[6]);
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  result = sub_237E87024(a1, v11, v10, v12, WitnessTable, v14);
  if (v16)
  {
    (*(v7 + 16))(v9, a1, v6);
    v17 = sub_237EF85D0();
    v19 = v18;
    sub_237C84150();
    swift_allocError();
    *v20 = xmmword_237F063A0;
    *(v20 + 16) = v17;
    *(v20 + 24) = v19;
    *(v20 + 32) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t OrdinalEncoder.Transformer.applied<A>(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(v6 + 2);
  v13[2] = *(a4 + 16);
  v13[3] = a5;
  v10 = *(a4 + 40);
  v14 = *(a4 + 24);
  v15 = v10;
  v16 = a6;
  v17 = *v6;
  v18 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return sub_237C8FFEC(sub_237CA1A3C, v13, a5, MEMORY[0x277D83B88], v11, a6, MEMORY[0x277D84950], &v19);
}

uint64_t sub_237CA1818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v31 = a3;
  v32 = a4;
  v29 = a8;
  v30 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a7;
  v14 = sub_237EF90F0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v18 = type metadata accessor for ComparableOptional(0, a5, a6, a10);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  v36[5] = v30;
  v36[6] = v31;
  v36[7] = v32;
  (*(v15 + 16))(v17, v33, v14, v20);
  sub_237C66C14(v17, a5, v22);
  v36[0] = a5;
  v36[1] = a6;
  v36[2] = v35;
  v36[3] = v34;
  v36[4] = a10;
  v23 = type metadata accessor for OrdinalEncoder.Transformer(0, v36);
  v24 = v36[9];
  v25 = sub_237CA1598(v22, v23);
  if (v24)
  {
    result = (*(v19 + 8))(v22, v18);
    *a12 = v24;
  }

  else
  {
    v27 = v25;
    result = (*(v19 + 8))(v22, v18);
    *v29 = v27;
  }

  return result;
}

uint64_t OrdinalEncoder.Transformer.category(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_12_7();
  v9 = type metadata accessor for ComparableOptional(v5, v6, v7, v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v14 = *(v2 + 8);
  v13 = *(v2 + 16);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_3_13();
  swift_getWitnessTable();
  sub_237E8701C(a1, v14, v13, v9);
  OUTLINED_FUNCTION_12_7();
  v15 = sub_237EF90F0();
  return (*(*(v15 - 8) + 32))(a2, v12, v15);
}

uint64_t sub_237CA1B7C(void *a1)
{
  OrdinalEncoder.Transformer.applied(to:eventHandler:)();
  *a1 = v3;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t OrdinalEncoder.Transformer.debugDescription.getter(uint64_t a1)
{
  sub_237EF8260();
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000027, 0x8000000237EFBBE0);
  sub_237EF90F0();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  sub_237EF8CF0();
  swift_getWitnessTable();
  sub_237EF9D00();

  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

void OrdinalEncoder.Transformer.encode(to:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v13 = *(v3 + 48);
  v14 = v5;
  v12 = *(v3 + 16);
  v18 = v12;
  v19 = v4;
  v20 = v5;
  v21 = v13;
  type metadata accessor for OrdinalEncoder.Transformer.CodingKeys(255, &v18);
  OUTLINED_FUNCTION_5_11();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v15 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  v11 = *v0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237EF8260();
  sub_237EFA1B0();
  *&v18 = v11;
  sub_237EF90F0();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  sub_237EF8CF0();
  v17 = v14;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_237EF9A70();

  (*(v15 + 8))(v10, v6);
  OUTLINED_FUNCTION_12_6();
}

void OrdinalEncoder.Transformer.init(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v19 = v7;
  v22 = v8;
  v23 = v9;
  *&v27 = v8;
  *(&v27 + 1) = v3;
  v28 = v9;
  v29 = v1;
  v21 = v10;
  v30 = v10;
  type metadata accessor for OrdinalEncoder.Transformer.CodingKeys(255, &v27);
  OUTLINED_FUNCTION_5_11();
  swift_getWitnessTable();
  v24 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v20 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_237EFA190();
  if (!v0)
  {
    v15 = v20;
    sub_237EF90F0();
    v16 = v21;
    OUTLINED_FUNCTION_0_12();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_13_5();
    sub_237EF8CF0();
    v26 = v23;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_237EF9970();
    OrdinalEncoder.Transformer.init(categories:)(v27, v22, v4, v23, v2, v16, &v27);
    (*(v15 + 8))(v14, v24);
    v17 = v28;
    v18 = v19;
    *v19 = v27;
    *(v18 + 2) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237CA219C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_237CA2200()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v89 = v3;
  v4 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v9 - v8);
  v87 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v86 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v13 - v12);
  v84 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v83 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v17 - v16);
  v91 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v88 = v18;
  MEMORY[0x28223BE20](v19);
  v90 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v78 - v22;
  v24 = v2[2];
  if (swift_dynamicCastMetatype())
  {
    v79 = v6;
    v80 = v4;
    v81 = v0;
    v78 = "ransformer<categories: ";
    sub_237EF7720();
    sub_237EF7620();
    type metadata accessor for ComparableOptional(0, v24, v2[3], v2[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD490, &qword_237F07150);
    OUTLINED_FUNCTION_3_13();
    swift_getWitnessTable();
    sub_237CA2DC4();
    v25 = sub_237EF9840();
    v26 = 0;
    v28 = v25 + 64;
    v27 = *(v25 + 64);
    *&v96 = v25;
    v29 = 1 << *(v25 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & v27;
    v32 = MEMORY[0x277D84F98];
    v33 = (v29 + 63) >> 6;
    v94 = v25 + 64;
    v95 = v23;
    v93 = v33;
    if ((v30 & v27) != 0)
    {
LABEL_9:
      while (1)
      {
        v35 = __clz(__rbit64(v31)) | (v26 << 6);
        v36 = (*(v96 + 48) + 16 * v35);
        v38 = *v36;
        v37 = v36[1];
        v97 = *(*(v96 + 56) + 8 * v35);
        v39 = v37 ? v38 : 0;
        v40 = v37 ? v37 : 0xE000000000000000;
        sub_237EF8260();
        swift_isUniquelyReferenced_nonNull_native();
        v99[0] = v32;
        v41 = sub_237D2FC30(v39);
        if (__OFADD__(v32[2], (v42 & 1) == 0))
        {
          break;
        }

        v43 = v41;
        v44 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2D8, &unk_237F066B0);
        if (sub_237EF96B0())
        {
          v45 = sub_237D2FC30(v39);
          if ((v44 & 1) != (v46 & 1))
          {
            goto LABEL_31;
          }

          v43 = v45;
        }

        if (v44)
        {

          v32 = v99[0];
          *(*(v99[0] + 56) + 8 * v43) = v97;
        }

        else
        {
          v32 = v99[0];
          *(v99[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v47 = (v32[6] + 16 * v43);
          *v47 = v39;
          v47[1] = v40;
          *(v32[7] + 8 * v43) = v97;
          v48 = v32[2];
          v49 = __OFADD__(v48, 1);
          v50 = v48 + 1;
          if (v49)
          {
            goto LABEL_30;
          }

          v32[2] = v50;
        }

        v31 &= v31 - 1;
        v28 = v94;
        v23 = v95;
        v33 = v93;
        if (!v31)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      while (1)
      {
        v34 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v34 >= v33)
        {

          v51 = v82;
          sub_237EF74D0();
          (*(v83 + 104))(v51, *MEMORY[0x277D25360], v84);
          sub_237EF7660();
          v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
          sub_237EF70E0();
          v52 = swift_allocObject();
          v96 = xmmword_237F03530;
          *(v52 + 16) = xmmword_237F03530;
          v53 = v85;
          sub_237EF6DB0();
          v54 = *(v86 + 104);
          v55 = v87;
          v54(v53, *MEMORY[0x277D25130], v87);
          sub_237EF7090();
          sub_237EF76B0();
          *(swift_allocObject() + 16) = v96;
          sub_237EF6D00();
          v54(v53, *MEMORY[0x277D25118], v55);
          sub_237EF7090();
          sub_237EF7700();
          v56 = v88;
          v57 = *(v88 + 16);
          v58 = v90;
          v59 = v91;
          v57(v90, v23, v91);
          sub_237EF7810();
          v60 = type metadata accessor for CoreMLPackage(0);
          v61 = v89;
          v62 = &v89[*(v60 + 24)];
          *(v62 + 10) = 0;
          *(v62 + 3) = 0u;
          *(v62 + 4) = 0u;
          *(v62 + 1) = 0u;
          *(v62 + 2) = 0u;
          *v62 = 0u;
          v57(v61, v58, v59);
          memcpy(v99, v62, 0x58uLL);
          sub_237C9BD20(v99);
          *v62 = 0u;
          *(v62 + 1) = 0u;
          *(v62 + 2) = 0u;
          *(v62 + 3) = 0u;
          *(v62 + 4) = 0u;
          *(v62 + 10) = 0;
          v63 = v79;
          v64 = v92;
          v65 = v80;
          (*(v79 + 16))(&v61[*(v60 + 20)], v92, v80);
          v66 = sub_237E34060();
          v68 = v67;
          v97 = sub_237EF7780();
          v70 = v69;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v100 = *v70;
          sub_237C91098(v66, v68, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
          *v70 = v100;
          v97(&v98, 0);
          (*(v63 + 8))(v64, v65);
          v72 = *(v56 + 8);
          v73 = v91;
          v72(v90, v91);
          v72(v95, v73);
          goto LABEL_27;
        }

        v31 = *(v28 + 8 * v34);
        ++v26;
        if (v31)
        {
          v26 = v34;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    sub_237EFA020();
    __break(1u);
  }

  else
  {
    type metadata accessor for SerializationError(0);
    sub_237CA2D6C();
    swift_allocError();
    v75 = v74;
    v99[0] = 0;
    v99[1] = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000002DLL, 0x8000000237EFBC30);
    v76 = sub_237EFA220();
    MEMORY[0x2383E0710](v76);

    MEMORY[0x2383E0710](0x64616574736E6920, 0xE90000000000002ELL);
    v77 = v99[1];
    *v75 = v99[0];
    v75[1] = v77;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_27:
    OUTLINED_FUNCTION_12_6();
  }
}

uint64_t sub_237CA2B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237CA2BAC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_237CA2BEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HumanBodyPoseExtractor(unsigned int *a1, int a2)
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

_BYTE *sub_237CA2C7C(_BYTE *result, int a2, int a3)
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

unint64_t sub_237CA2D6C()
{
  result = qword_280C8E658[0];
  if (!qword_280C8E658[0])
  {
    type metadata accessor for SerializationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C8E658);
  }

  return result;
}

unint64_t sub_237CA2DC4()
{
  result = qword_27DEAE948[0];
  if (!qword_27DEAE948[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD490, &qword_237F07150);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEAE948);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_11()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_14_6@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4, __n128 a5, uint64_t a6)
{
  a4 = a2;
  a5 = a3;
  a6 = a1;

  return type metadata accessor for OrdinalEncoder.Transformer(0, &a4);
}

uint64_t sub_237CA2F10(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_237CA46AC(a3, a1, a2);
  OUTLINED_FUNCTION_13_6();
  sub_237EF8D90();
  OUTLINED_FUNCTION_13_6();
  sub_237EF8DE0();
  OUTLINED_FUNCTION_2_14();
  if (v7)
  {
    return 1;
  }

  v8 = OUTLINED_FUNCTION_14_7(v6);
  v10 = *v9;
  v11 = sub_237EF8260();
  v19 = OUTLINED_FUNCTION_10_9(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);
  v8(v19);
  return v10;
}

uint64_t sub_237CA2FF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return *(a1 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237CA3018@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA68, &qword_237F068D0);
  sub_237CA46AC(&qword_27DEAEA70, &qword_27DEAEA68, &qword_237F068D0);
  OUTLINED_FUNCTION_5_12();
  sub_237EF8D90();
  OUTLINED_FUNCTION_5_12();
  sub_237EF8DE0();
  OUTLINED_FUNCTION_2_14();
  if (!v3)
  {
    v4 = OUTLINED_FUNCTION_7_12(v2);
    v6 = sub_237C6FDA0(v5, a1, &qword_27DEAEA78, &qword_237F068D8);
    v14 = OUTLINED_FUNCTION_10_9(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18);
    v4(v14);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78, &qword_237F068D8);
  return OUTLINED_FUNCTION_6_10(v15);
}

uint64_t sub_237CA3104@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA80, &unk_237F068E0);
  sub_237CA46AC(&qword_27DEAEA88, &qword_27DEAEA80, &unk_237F068E0);
  OUTLINED_FUNCTION_5_12();
  sub_237EF8D90();
  OUTLINED_FUNCTION_5_12();
  sub_237EF8DE0();
  OUTLINED_FUNCTION_2_14();
  if (!v3)
  {
    v4 = OUTLINED_FUNCTION_7_12(v2);
    v6 = sub_237C6FDA0(v5, a1, &qword_27DEAD600, &unk_237F049C0);
    v14 = OUTLINED_FUNCTION_10_9(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18);
    v4(v14);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  return OUTLINED_FUNCTION_6_10(v15);
}

uint64_t sub_237CA31F0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA90, &unk_237F068F0);
  sub_237CA46AC(&qword_27DEAEA98, &qword_27DEAEA90, &unk_237F068F0);
  OUTLINED_FUNCTION_5_12();
  sub_237EF8D90();
  OUTLINED_FUNCTION_5_12();
  sub_237EF8DE0();
  OUTLINED_FUNCTION_2_14();
  if (!v3)
  {
    v4 = OUTLINED_FUNCTION_7_12(v2);
    v6 = sub_237C6FDA0(v5, a1, &qword_27DEAEAA0, &unk_237F07330);
    v14 = OUTLINED_FUNCTION_10_9(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18);
    v4(v14);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0, &unk_237F07330);
  return OUTLINED_FUNCTION_6_10(v15);
}

uint64_t sub_237CA32DC()
{
  v1 = OUTLINED_FUNCTION_5_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  sub_237CA46AC(&qword_27DEAEAB0, &qword_27DEAEAA8, &unk_237F06900);
  OUTLINED_FUNCTION_13_6();
  sub_237EF8D90();
  OUTLINED_FUNCTION_13_6();
  sub_237EF8DE0();
  OUTLINED_FUNCTION_2_14();
  if (v4)
  {
    return 1;
  }

  v5 = OUTLINED_FUNCTION_14_7(v3);
  v7 = *v6;
  v8 = *v6;
  v16 = OUTLINED_FUNCTION_10_9(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19);
  v5(v16);
  return v7;
}

id sub_237CA338C(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_237EF9710();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_237C85538();
  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x2383E1490](0, a1);
  }

  else
  {
    return *(a1 + 32);
  }
}

uint64_t sub_237CA3454(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  a2(0);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_9_4();
    v4(v3);
  }

  v5 = OUTLINED_FUNCTION_8_11();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_237CA3504@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    sub_237CA45BC(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
  }

  v9 = OUTLINED_FUNCTION_8_11();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void *sub_237CA35B4(uint64_t a1)
{
  result = sub_237D299E0();
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_237CA461C(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_237CA3690(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_9_4();
    v5(v4);
  }

  v6 = OUTLINED_FUNCTION_8_11();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t AnnotatedBatch.features.getter@<X0>(uint64_t a2@<X8>)
{
  sub_237EF7E90();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t AnnotatedBatch.features.setter(uint64_t a1, uint64_t a2)
{
  sub_237EF7E90();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 40);

  return v6(v2, a1, v4);
}

uint64_t AnnotatedBatch.annotations.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  sub_237EF7E90();
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t AnnotatedBatch.annotations.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  sub_237EF7E90();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t AnnotatedBatch.count.getter(uint64_t a1)
{
  sub_237EF7E90();
  v1 = sub_237EF7E20();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t AnnotatedBatch.init(features:annotations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_237EF7E90();
  v11 = sub_237EF7E20();
  if (!*(v11 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = *(v11 + 32);

  v13 = sub_237EF7E20();
  if (!*(v13 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = *(v13 + 32);

  if (v12 != v14)
  {
LABEL_9:
    result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000045, 0x8000000237EFBC90, "CreateMLComponents/AnnotatedBatch.swift", 39, 2, 35);
    __break(1u);
    return result;
  }

  v18 = *(*(v10 - 8) + 32);
  v18(a5, a1, v10);
  v16 = a5 + *(type metadata accessor for AnnotatedBatch(0, a3, a4, v15) + 36);

  return (v18)(v16, a2, v10);
}

uint64_t sub_237CA3ACC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365727574616566 && a2 == 0xE800000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEB00000000736E6FLL)
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

uint64_t sub_237CA3B98(char a1)
{
  if (a1)
  {
    return 0x697461746F6E6E61;
  }

  else
  {
    return 0x7365727574616566;
  }
}

uint64_t sub_237CA3BE8(uint64_t a1)
{
  sub_237EFA120();
  sub_237C5ED64(v3, *v1);
  return sub_237EFA170();
}

uint64_t sub_237CA3C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CA3ACC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CA3C98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C787C4();
  *a1 = result;
  return result;
}

uint64_t sub_237CA3CC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237CA3D1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t AnnotatedBatch<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v15 = a2;
  type metadata accessor for AnnotatedBatch.CodingKeys(255, v5, v6, a4);
  OUTLINED_FUNCTION_3_14();
  swift_getWitnessTable();
  v7 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v17 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  v21 = 0;
  sub_237EF7E90();
  v19 = v16;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_8();
  v12 = v18;
  sub_237EF9A70();
  if (v12)
  {
    return (*(v17 + 8))(v11, v7);
  }

  v14 = v17;
  v20 = 1;
  OUTLINED_FUNCTION_12_8();
  sub_237EF9A70();
  return (*(v14 + 8))(v11, v7);
}

uint64_t AnnotatedBatch<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v34 = a5;
  v41 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v36 = v8;
  MEMORY[0x28223BE20](v9);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v32 - v12;
  type metadata accessor for AnnotatedBatch.CodingKeys(255, a2, a3, v13);
  OUTLINED_FUNCTION_3_14();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v38 = v14;
  v39 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = type metadata accessor for AnnotatedBatch(0, a2, a3, v16);
  OUTLINED_FUNCTION_1();
  v33 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = v42;
  sub_237EFA190();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v21;
  v32 = v17;
  v23 = v35;
  v24 = v36;
  v45 = 0;
  v43 = v37;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_6();
  v25 = v40;
  v40 = *(v24 + 32);
  (v40)(v42, v25, v41);
  v44 = 1;
  OUTLINED_FUNCTION_11_6();
  v26 = OUTLINED_FUNCTION_4_13();
  v27(v26);
  v28 = v32;
  v29 = v42;
  (v40)(&v42[*(v32 + 36)], v23, v41);
  v30 = v33;
  (*(v33 + 16))(v34, v29, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v30 + 8))(v29, v28);
}

uint64_t static AnnotatedBatch<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((sub_237EF7E80() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AnnotatedBatch(0, a3, a4, v7);

  return sub_237EF7E80();
}

uint64_t sub_237CA4404(uint64_t a1)
{
  result = sub_237EF7E90();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_237CA449C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237CA45BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void *sub_237CA461C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;
    sub_237EF8260();
    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_237CA46AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_7_12(uint64_t a1, ...)
{

  return sub_237EF8F00();
}

void *OUTLINED_FUNCTION_11_6()
{

  return sub_237EF9970();
}

uint64_t OUTLINED_FUNCTION_14_7(uint64_t a1, ...)
{

  return sub_237EF8F00();
}

uint64_t sub_237CA4820(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v33 = MEMORY[0x277D84F90];
  sub_237C63670(0, v6, 0);
  v7 = v6;
  result = v33;
  v31 = a1;
  v32 = a2;
  if (!v6)
  {
    v14 = v4;
    v15 = v5;
    goto LABEL_13;
  }

  v9 = (a1 + 32);
  v10 = (a2 + 32);
  v11 = v7;
  v12 = v4;
  v13 = v5;
  v14 = v4;
  v15 = v5;
  while (v12)
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    v16 = *v9;
    v17 = *v10;
    v34 = result;
    v19 = *(result + 16);
    v18 = *(result + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v29 = v7;
      v27 = v15;
      v28 = v14;
      sub_237C63670(v18 > 1, v19 + 1, 1);
      v20 = v19 + 1;
      v7 = v29;
      v15 = v27;
      v14 = v28;
      result = v34;
    }

    --v13;
    *(result + 16) = v20;
    *(result + 4 * v19 + 32) = v16 / v17;
    --v12;
    ++v10;
    ++v9;
    if (!--v11)
    {
LABEL_13:
      while (v14 != v7)
      {
        if (v7 >= v14)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v7, 1))
        {
          goto LABEL_25;
        }

        if (v15 == v7)
        {
          return result;
        }

        if (v7 >= v15)
        {
          goto LABEL_26;
        }

        v21 = *(v31 + 32 + 8 * v7);
        v22 = *(v32 + 32 + 8 * v7);
        v35 = result;
        v24 = *(result + 16);
        v23 = *(result + 24);
        if (v24 >= v23 >> 1)
        {
          v30 = v7;
          v25 = v14;
          v26 = v15;
          sub_237C63670(v23 > 1, v24 + 1, 1);
          v7 = v30;
          v15 = v26;
          v14 = v25;
          result = v35;
        }

        *(result + 16) = v24 + 1;
        *(result + 4 * v24 + 32) = v21 / v22;
        ++v7;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_237CA4A20(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v28 = MEMORY[0x277D84F90];
  sub_237C636A4(0, v6, 0);
  result = v28;
  v26 = a2;
  v27 = v4;
  v25 = a1;
  if (!v6)
  {
    v12 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v5;
  while (v4)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    v13 = *v8;
    v14 = *v9;
    v29 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      v24 = v12;
      sub_237C636A4(v15 > 1, v16 + 1, 1);
      v12 = v24;
      result = v29;
    }

    *(result + 16) = v16 + 1;
    v17 = result + 8 * v16;
    --v11;
    *(v17 + 32) = v13;
    *(v17 + 36) = v14;
    --v4;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v27 != v6)
      {
        if (v6 >= v27)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v12 == v6)
        {
          return result;
        }

        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v25 + 32 + 4 * v6);
        v19 = *(v26 + 32 + 4 * v6);
        v30 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v23 = v12;
          sub_237C636A4(v20 > 1, v21 + 1, 1);
          v12 = v23;
          result = v30;
        }

        *(result + 16) = v21 + 1;
        v22 = result + 8 * v21;
        *(v22 + 32) = v18;
        *(v22 + 36) = v19;
        ++v6;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A, B>(classifications:groundTruth:labels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_19_5();
  v65 = v25;
  v66 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v70 = v34;
  v64 = a23;
  v73 = v30;
  v74 = v28;
  v75 = v25;
  v76 = a23;
  sub_237EF9380();
  v35 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_43_0();
  sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v68 = v36;
  v69 = v37;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v38);
  v72 = &v61 - v39;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  v41 = OUTLINED_FUNCTION_14_8();
  v71 = v33;
  v62 = v27;
  v43 = type metadata accessor for ClassificationDistribution(v41, v33, v27, v42);
  sub_237EF8CF0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_43_0();
  v44 = sub_237EF9640();
  OUTLINED_FUNCTION_1();
  v67 = v45;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_15_6();
  v47 = v65;
  v48 = v64;
  sub_237EFA000();
  MEMORY[0x2383E08A0](v23, v35);
  v49 = OUTLINED_FUNCTION_31_0();
  v50(v49);
  v51 = swift_allocObject();
  v52 = v71;
  v51[2] = v71;
  v51[3] = v31;
  v53 = v29;
  v54 = v62;
  v51[4] = v29;
  v51[5] = v54;
  v51[6] = v47;
  v51[7] = v48;
  v55 = v47;
  v56 = v48;
  v57 = swift_allocObject();
  v57[2] = v52;
  v57[3] = v31;
  v57[4] = v53;
  v57[5] = v54;
  v57[6] = v55;
  v57[7] = v56;
  v57[8] = sub_237CA4F38;
  v57[9] = v51;
  swift_getWitnessTable();
  sub_237EF9860();

  v58 = OUTLINED_FUNCTION_31_0();
  v59(v58);
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A>(_:labels:)(v43, v70, v71, v44, v54, WitnessTable);
  (*(v67 + 8))(v43, v44);
  OUTLINED_FUNCTION_18_6();
}

uint64_t sub_237CA4F50@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(a3, a1, *(a1 + 8));
  *(a3 + 8) = result;
  return result;
}

float static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A>(_:labels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[9] = a2;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a1;
  v6 = sub_237EF8CF0();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237CA5454, v14, v6, MEMORY[0x277D83A90], MEMORY[0x277D84A98], WitnessTable);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32);
    v11 = 0.0;
    do
    {
      v12 = *v10++;
      v11 = v11 + v12;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  return v11 / sub_237EF8C70();
}

void static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A, B>(classifications:groundTruth:)()
{
  OUTLINED_FUNCTION_19_5();
  v43 = v2;
  v44 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v45 = v9;
  v46 = v10;
  v50 = v11;
  v51 = v5;
  v12 = v11;
  v52 = v1;
  v53 = v2;
  sub_237EF9380();
  v13 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_43_0();
  sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v48 = v14;
  v49 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v38 = &v38 - v17;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_14_8();
  v39 = v8;
  v40 = v4;
  v21 = type metadata accessor for ClassificationDistribution(v19, v8, v4, v20);
  sub_237EF8CF0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_43_0();
  v42 = sub_237EF9640();
  OUTLINED_FUNCTION_1();
  v47 = v22;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15_6();
  v24 = v12;
  v25 = v43;
  v26 = v44;
  sub_237EFA000();
  MEMORY[0x2383E08A0](v0, v13);
  v27 = OUTLINED_FUNCTION_31_0();
  v28(v27);
  v29 = swift_allocObject();
  v31 = v39;
  v30 = v40;
  v29[2] = v39;
  v29[3] = v24;
  v29[4] = v6;
  v29[5] = v30;
  v29[6] = v26;
  v29[7] = v25;
  v32 = v25;
  v33 = swift_allocObject();
  v33[2] = v31;
  v33[3] = v24;
  v33[4] = v6;
  v33[5] = v30;
  v33[6] = v26;
  v33[7] = v32;
  v33[8] = sub_237CA4F38;
  v33[9] = v29;
  swift_getWitnessTable();
  sub_237EF9860();

  v34 = OUTLINED_FUNCTION_31_0();
  v35(v34);
  OUTLINED_FUNCTION_1_5();
  v36 = v42;
  WitnessTable = swift_getWitnessTable();
  static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A>(_:)(v21, v31, v36, v30, WitnessTable);
  (*(v47 + 8))(v21, v36);
  OUTLINED_FUNCTION_18_6();
}

float static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_237CA5A14(a1, a2, a3, a4, a5);
  v11 = static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A>(_:labels:)(a1, v10, a2, a3, a4, a5);

  return v11;
}

void sub_237CA5454(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_237CA549C(v2[6], a1, v2[2], v2[3], v2[4], v2[5]);
  if ((v4 & 0x100000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
}

void sub_237CA549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_19_5();
  v7 = v6;
  v65 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v20 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v69 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v64 - v23;
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DEAEB10, &unk_237F0FD90);
  v66 = sub_237EF9640();
  OUTLINED_FUNCTION_1();
  v68 = v25;
  OUTLINED_FUNCTION_9();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v64 - v28;
  MEMORY[0x2383E08A0](v10, v7, v27);
  (*(v16 + 16))(v20, v14, v12);
  v30 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = v12;
  *(v31 + 3) = v10;
  v32 = v65;
  *(v31 + 4) = v65;
  *(v31 + 5) = v7;
  (*(v16 + 32))(&v31[v30], v20, v12);
  v33 = swift_allocObject();
  v33[2] = v12;
  v33[3] = v10;
  v33[4] = v32;
  v33[5] = v7;
  v33[6] = sub_237CA6EA0;
  v33[7] = v31;
  v34 = v67;
  swift_getWitnessTable();
  sub_237EF9860();

  (*(v69 + 8))(v24, v34);
  OUTLINED_FUNCTION_1_5();
  v35 = v66;
  swift_getWitnessTable();
  v36 = sub_237EF8800();
  (*(v68 + 8))(v29, v35);
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = OUTLINED_FUNCTION_12_9();
    sub_237C62DB0(v38, v39, v40);
    v41 = v70;
    v42 = *(v70 + 16);
    v43 = 40;
    do
    {
      v44 = *(v36 + v43);
      v70 = v41;
      v45 = *(v41 + 24);
      if (v42 >= v45 >> 1)
      {
        sub_237C62DB0(v45 > 1, v42 + 1, 1);
        v41 = v70;
      }

      *(v41 + 16) = v42 + 1;
      *(v41 + 8 * v42 + 32) = v44;
      v43 += 16;
      ++v42;
      --v37;
    }

    while (v37);
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  v46 = sub_237D610C8(v41);

  v47 = sub_237ED81A4(v46);
  if ((v48 & 1) != 0 || (v49 = v47, v47 < 1))
  {

    v63 = 1;
LABEL_17:
    LOBYTE(v70) = v63;
    OUTLINED_FUNCTION_18_6();
    return;
  }

  v50 = *(v46 + 16);
  if (v50)
  {
    v51 = sub_237EC93D0(1, *(v46 + 16));
    v52 = sub_237EF8260();
    v53 = sub_237CA4820(v52, v51);

    v54 = OUTLINED_FUNCTION_12_9();
    sub_237C63670(v54, v55, v56);
    v57 = v70;
    v58 = *(v70 + 16);
    v59 = 32;
    do
    {
      v60 = *(v46 + v59);
      v70 = v57;
      v61 = *(v57 + 24);
      if (v58 >= v61 >> 1)
      {
        sub_237C63670(v61 > 1, v58 + 1, 1);
        v57 = v70;
      }

      *(v57 + 16) = v58 + 1;
      *(v57 + 4 * v58 + 32) = v60 / v49;
      v59 += 8;
      ++v58;
      --v50;
    }

    while (v50);

    v62 = sub_237CA4A20(v53, v57);

    sub_237CA5D3C(v62);

    v63 = 0;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_237CA59D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 64))(a2, a1, *(a1 + 8));
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_237CA5A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v8 = sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v19 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  sub_237EF8CF0();
  sub_237EF9640();
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  v17[1] = swift_getWitnessTable();
  sub_237EF95F0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43_0();
  sub_237EF9340();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x2383E08A0](a3, a5, v14);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v18;
  v15[5] = a5;
  swift_getWitnessTable();
  sub_237EF9870();

  (*(v19 + 8))(v12, v8);
  swift_getWitnessTable();
  return sub_237EF8D00();
}

float sub_237CA5C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for ClassificationDistribution(0, a4, a6, a4);
  v10 = ClassificationDistribution.subscript.getter(a3, v7, v8, v9);
  if ((v10 & 0x100000000) != 0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = *&v10;
  }

  sub_237EF8CD0();
  return v11;
}

uint64_t sub_237CA5D3C(uint64_t result)
{
  v1 = 0.0;
  if (*(result + 16) >= 2uLL)
  {
    v2 = result;
    v4 = *(result + 32);
    v3 = *(result + 36);
    sub_237EF8260();
    result = sub_237C60B7C(1, v2);
    v8 = (v7 >> 1) - v6;
    if (v7 >> 1 == v6)
    {
      return swift_unknownObjectRelease();
    }

    else if ((v7 >> 1) <= v6)
    {
      __break(1u);
    }

    else
    {
      v9 = (v5 + 8 * v6 + 4);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        v1 = v1 + ((v4 + v10) * (*v9 - v3));
        v9 += 2;
        v3 = v11;
        v4 = v10;
        --v8;
      }

      while (v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_237CA5DEC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  sub_237EF8260();
  v8 = type metadata accessor for ClassificationDistribution(0, a2, a3, v7);
  sub_237D65E6C(v8);
  sub_237EF8CF0();
  swift_getWitnessTable();
  result = sub_237EF8C80();
  *a4 = result;
  return result;
}

void sub_237CA5F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAF8, &qword_237F18FA0);
  sub_237EF82F0();
  if (v8)
  {
    v5 = sub_237CA6780(1, 1);
    v6 = sub_237CA61A0(1, a3);
    sub_237CA67D4(v7, v8, v9, v10, v11, v12);
    if (__OFADD__(v5, v6))
    {
      __break(1u);
    }
  }
}

uint64_t sub_237CA6020(uint64_t a1)
{

  return sub_237CA61A0(a1, sub_237CA6E64);
}

uint64_t sub_237CA60A0(uint64_t *a1)
{

  return sub_237CA64D4(a1, sub_237CA6DE4);
}

uint64_t sub_237CA6120(uint64_t a1)
{

  return sub_237CA61A0(a1, sub_237CA6E34);
}

uint64_t sub_237CA61A0(char a1, uint64_t a2)
{
  LOBYTE(v6) = a1;
  v56 = *MEMORY[0x277D85DE8];
  HIBYTE(v48) = a1;
  v7 = *(v2 + 8);
  v49 = v7;
  OUTLINED_FUNCTION_6_11(&v48 + 7);
  if (!(!v10 & v9))
  {
    v11 = sub_237C6FDA0(&v49, &v47, &qword_27DEAEB08, &qword_237F06930);
    goto LABEL_3;
  }

  while (1)
  {
    v4 = v8;
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_5_13();
    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      break;
    }

    v11 = sub_237C65484(&v49, &qword_27DEAEB08, &qword_237F06930);
LABEL_3:
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_8_12(v12, v13, v14, v15, v16, v17, v18, v19, v46);
    OUTLINED_FUNCTION_9_5();
    v25 = v22 << v24;
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v23;
    while (v27)
    {
      v28 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v29 = v28 | (v21 << 6);
LABEL_13:
      if (*(*(v7 + 48) + v29) != (v6 & 1))
      {
        *(v4 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= v22 << v29;
        v32 = __OFADD__(v8++, 1);
        if (v32)
        {
          __break(1u);
LABEL_17:
          sub_237E16B0C(v4, v3, v8, v7);
          v3 = v33;
          v7 = 0;
          goto LABEL_18;
        }
      }
    }

    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= ((v25 + 63) >> 6))
      {
        goto LABEL_17;
      }

      v31 = *(v20 + 8 * v21);
      ++v30;
      if (v31)
      {
        v27 = (v31 - 1) & v31;
        v29 = __clz(__rbit64(v31)) | (v21 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  v44 = swift_slowAlloc();
  v3 = OUTLINED_FUNCTION_11_7(v44);
  sub_237C65484(&v49, &qword_27DEAEB08, &qword_237F06930);
  v33 = MEMORY[0x2383E2DF0](v44, -1, -1);
LABEL_18:
  v6 = &v46;
  MEMORY[0x28223BE20](v33);
  sub_237CD1B20(a2, v45, v3, v34, v35, v36, v37, v38, v45[0], v45[1], v2, &v48 + 7, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  a2 = v39;

  v40 = *(a2 + 16);
  if (v40)
  {
    v2 = 0;
    v41 = (a2 + 32);
    while (1)
    {
      v42 = *v41++;
      v32 = __OFADD__(v2, v42);
      v2 += v42;
      if (v32)
      {
        goto LABEL_26;
      }

      if (!--v40)
      {
        goto LABEL_24;
      }
    }
  }

  v2 = 0;
LABEL_24:

  return v2;
}

uint64_t sub_237CA6454(uint64_t *a1)
{

  return sub_237CA64D4(a1, sub_237CA6D74);
}

uint64_t sub_237CA64D4(uint64_t *a1, uint64_t a2)
{
  v6 = a1;
  v51 = *MEMORY[0x277D85DE8];
  v7 = *(v2 + 8);
  v49 = a1;
  v50[0] = v7;
  OUTLINED_FUNCTION_6_11(&v49);
  if (!(!v10 & v9))
  {
    v11 = sub_237C6FDA0(v50, v48, &qword_27DEAEB00, &qword_237F06928);
    goto LABEL_3;
  }

  while (1)
  {
    v4 = v8;
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_5_13();
    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      break;
    }

    v11 = sub_237C65484(v50, &qword_27DEAEB00, &qword_237F06928);
LABEL_3:
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_8_12(v12, v13, v14, v15, v16, v17, v18, v19, v47);
    OUTLINED_FUNCTION_9_5();
    v25 = v22 << v24;
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v23;
    v28 = (v25 + 63) >> 6;
    while (v27)
    {
      v29 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v30 = v29 | (v21 << 6);
LABEL_13:
      if (*(*(v7 + 48) + 8 * v30) != v6)
      {
        *(v4 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= v22 << v30;
        v33 = __OFADD__(v8++, 1);
        if (v33)
        {
          __break(1u);
LABEL_17:
          sub_237E16CC4(v4, v3, v8, v7);
          v3 = v34;
          v7 = 0;
          goto LABEL_18;
        }
      }
    }

    v31 = v21;
    while (1)
    {
      v21 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v21 >= v28)
      {
        goto LABEL_17;
      }

      v32 = *(v20 + 8 * v21);
      ++v31;
      if (v32)
      {
        v27 = (v32 - 1) & v32;
        v30 = __clz(__rbit64(v32)) | (v21 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  v45 = swift_slowAlloc();
  v3 = OUTLINED_FUNCTION_11_7(v45);
  sub_237C65484(v50, &qword_27DEAEB00, &qword_237F06928);
  v34 = MEMORY[0x2383E2DF0](v45, -1, -1);
LABEL_18:
  v6 = &v47;
  MEMORY[0x28223BE20](v34);
  sub_237CD1CD0(a2, v46, v3, v35, v36, v37, v38, v39, v46[0], v46[1], v2, &v49, v47, *v48, v49, v50[0], v50[1], v50[2], v50[3], v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  a2 = v40;

  v41 = *(a2 + 16);
  if (v41)
  {
    v2 = 0;
    v42 = (a2 + 32);
    while (1)
    {
      v43 = *v42++;
      v33 = __OFADD__(v2, v43);
      v2 += v43;
      if (v33)
      {
        goto LABEL_26;
      }

      if (!--v41)
      {
        goto LABEL_24;
      }
    }
  }

  v2 = 0;
LABEL_24:

  return v2;
}

uint64_t sub_237CA6780(char a1, char a2)
{
  v3 = *(v2 + 40);
  if (*(v3 + 16) && ((a2 & 1) == 0 ? (v4 = 0) : (v4 = 256), v5 = sub_237D2FFAC(v4 & 0xFFFFFFFE | a1 & 1), (v6 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    return 0;
  }
}

void sub_237CA67D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_237CA6838(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (*(v2 + 16) && (v3 = sub_237D30020(a1), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237CA6878(char a1, uint64_t a2, char a3)
{
  v3 = *(a2 + 40);
  if (*(v3 + 16) && ((a1 & 1) == 0 ? (v4 = 0) : (v4 = 256), v5 = sub_237D2FFAC(v4 & 0xFFFFFFFE | a3 & 1), (v6 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237CA68D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  if (*(v3 + 16) && (v4 = sub_237D30020(a3), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237CA6924(char a1, uint64_t a2, char a3)
{
  v3 = *(a2 + 40);
  if (*(v3 + 16) && ((a3 & 1) == 0 ? (v4 = 0) : (v4 = 256), v5 = sub_237D2FFAC(v4 & 0xFFFFFFFE | a1 & 1), (v6 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237CA6980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  if (*(v3 + 16) && (v4 = sub_237D30020(a1), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

void *sub_237CA69CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a6(v11, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

void sub_237CA6A6C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v22 = *(*(a3 + 48) + v16);
    v17 = a4(&v22);
    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(result + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_16:

        sub_237E16B0C(result, a2, v21, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_237CA6BC0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v22 = *(*(a3 + 48) + 8 * v16);
    v17 = a4(&v22);
    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(result + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_16:

        sub_237E16CC4(result, a2, v21, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_237CA6D14@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t (*a4)(void, uint64_t, void)@<X4>, uint64_t *a5@<X8>)
{
  result = a4(*a1, a2, *a3);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_237CA6DA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void, uint64_t, void)@<X4>, uint64_t *a5@<X8>)
{
  result = a4(*a1, a2, *a3);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_237CA6EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 48))(a1, *(a1 + 8));
  *a2 = v5;
  *(a2 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return sub_237C6FDA0(v2 - 120, v2 - 136, v0, v1);
}

uint64_t OUTLINED_FUNCTION_8_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237D28F08(0, v9, &a9 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0));
}

void *OUTLINED_FUNCTION_11_7(void *a1)
{

  return sub_237CA69CC(a1, v3, v2, v4, v5 - 112, v1);
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.init(_:_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v13 + 32))(a7);
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v14 = type metadata accessor for PreprocessingUpdatableSupervisedTemporalEstimator(0, v16);
  return (*(*(a4 - 8) + 32))(a7 + *(v14 + 52), a2, a4);
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.preprocessed<A, B>(from:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = a8;
  v9[13] = v8;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a2;
  v9[7] = a3;
  v9[5] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[14] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_4();
  v9[15] = OUTLINED_FUNCTION_27_0();
  v9[16] = a4[4];
  v9[17] = a4[2];
  v13 = swift_getAssociatedTypeWitness();
  v9[18] = v13;
  v16 = type metadata accessor for PreprocessedFeatureSequence(255, v13, v14, v15);
  v9[19] = v16;
  v9[20] = type metadata accessor for AnnotatedFeature(0, v16, AssociatedTypeWitness, v17);
  v9[21] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[22] = v18;
  v9[23] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[24] = v19;
  v9[25] = OUTLINED_FUNCTION_27_0();
  v9[26] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v9[27] = v20;
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v9[30] = type metadata accessor for AnnotatedFeature(0, a6, AssociatedTypeWitness, v21);
  OUTLINED_FUNCTION_1_1();
  v9[31] = v22;
  v9[32] = OUTLINED_FUNCTION_27_0();
  sub_237EF90F0();
  v9[33] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[34] = v23;
  v9[35] = OUTLINED_FUNCTION_27_0();
  v9[36] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v9[37] = v24;
  v9[38] = OUTLINED_FUNCTION_27_0();
  v25 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_237CA7624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v16 = v14[34];
  v15 = v14[35];
  v17 = v14[9];
  v18 = v14[5];
  v14[2] = sub_237EF8110();
  (*(v16 + 16))(v15, v18, v17);
  sub_237EF86F0();
  v19 = v14[33];
  v20 = v14[30];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v21 = v14[38];
    OUTLINED_FUNCTION_4_14();
    v49 = v14[15];
    (*(v22 + 8))(v21);
    v47 = v14[2];

    OUTLINED_FUNCTION_18_3();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, v47, v49, a12, a13, a14);
  }

  else
  {
    v50 = OUTLINED_FUNCTION_30_5();
    v32 = OUTLINED_FUNCTION_29_4();
    v33(v32);
    OUTLINED_FUNCTION_40_1();
    v51 = v50 + 40;
    OUTLINED_FUNCTION_15_0();
    v48 = v34 + *v34;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[39] = v35;
    *v35 = v36;
    OUTLINED_FUNCTION_10_10(v35);
    OUTLINED_FUNCTION_18_3();

    return v45(v37, v38, v39, v40, v41, v42, v43, v44, a9, v48, v51, a12, a13, a14);
  }
}

uint64_t sub_237CA7890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_21_0();
  v15 = v14;
  OUTLINED_FUNCTION_11_2();
  *v16 = v15;
  v17 = *v13;
  OUTLINED_FUNCTION_5_1();
  *v18 = v17;
  v15[40] = v12;

  if (v12)
  {
    v20 = v15[24];
    v19 = v15[25];
    v21 = v15[17];
    (*(v15[22] + 8))(v15[23], v15[10]);
    (*(v20 + 8))(v19, v21);

    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_45();

    return MEMORY[0x2822009F8](v22, v23, v24);
  }

  else
  {
    v27 = v15[28];
    v26 = v15[29];
    v28 = v15[26];
    v29 = v15[27];
    v31 = v15[24];
    v30 = v15[25];
    v32 = v15[17];
    (*(v15[22] + 8))(v15[23], v15[10]);
    (*(v31 + 8))(v30, v32);
    (*(v29 + 16))(v27, v26, v28);
    v33 = swift_task_alloc();
    v15[41] = v33;
    swift_getAssociatedConformanceWitness();
    *v33 = v17;
    v33[1] = sub_237CA7AC0;
    OUTLINED_FUNCTION_45();

    return PreprocessedFeatureSequence.init<A>(_:)(v34, v35, v36, v37, v38);
  }
}

uint64_t sub_237CA7AC0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CA7BC4()
{
  v0[4] = v0[3];
  v1 = v0[31];
  v19 = v0[32];
  v24 = v0[29];
  v2 = v0[27];
  v20 = v0[30];
  v21 = v0[26];
  v3 = v0[21];
  v4 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  AnnotatedFeature.annotation.getter(v20, v5);
  AnnotatedFeature.init(feature:annotation:)((v0 + 4), v5, v4, v6, v3);
  sub_237EF8A60();
  sub_237EF8260();
  sub_237EF8A20();

  (*(v2 + 8))(v24, v21);
  (*(v1 + 8))(v19, v20);
  v7 = v0[33];
  v8 = v0[30];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v9 = v0[38];
    OUTLINED_FUNCTION_4_14();
    (*(v10 + 8))(v9);
    v22 = v0[2];

    v11 = v0[1];

    return v11(v22);
  }

  else
  {
    OUTLINED_FUNCTION_30_5();
    v13 = OUTLINED_FUNCTION_29_4();
    v14(v13);
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_15_0();
    v23 = (v15 + *v15);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[39] = v16;
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_10_10(v16);

    return v23(v18);
  }
}

uint64_t sub_237CA7EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v14 = v12[37];
  v13 = v12[38];
  v15 = v12[36];
  (*(v12[31] + 8))(v12[32], v12[30]);
  (*(v14 + 8))(v13, v15);
  v25 = v12[40];
  OUTLINED_FUNCTION_4_14();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_237CA7FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v14 = v12[37];
  v13 = v12[38];
  v15 = v12[36];
  v17 = v12[31];
  v16 = v12[32];
  v18 = v12[30];
  (*(v12[27] + 8))(v12[29], v12[26]);
  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);
  v28 = v12[42];
  OUTLINED_FUNCTION_4_14();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.fitted(toPreprocessed:eventHandler:)()
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

void sub_237CA8210()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[7];
  v2 = v0[4];
  PreprocessingUpdatableSupervisedTemporalEstimator.estimator.getter(v1, v0[13]);
  v0[2] = v2;
  OUTLINED_FUNCTION_15_0();
  v11 = v3 + *v3;
  v4 = swift_task_alloc();
  v0[19] = v4;
  v0[20] = *(v1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for PreprocessedFeatureSequence(255, AssociatedTypeWitness, v6, v7);
  OUTLINED_FUNCTION_32_4();
  v9 = swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedFeature(255, v8, v9, v10);
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_15();
  swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_237CA8400;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237CA8400()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
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

uint64_t sub_237CA8638()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.fitted(toPreprocessed:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v4;
  v1[8] = v5;
  v1[5] = v6;
  v1[6] = v7;
  v1[4] = v8;
  v1[11] = *(v2 + 16);
  OUTLINED_FUNCTION_22_3();
  v1[12] = OUTLINED_FUNCTION_27_0();
  v1[13] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_27_0();
  v1[16] = *(*(v3 + 40) + 8);
  v1[17] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v1[18] = v10;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_237CA8814()
{
  OUTLINED_FUNCTION_26_2();
  v1 = *(v0 + 72);
  v10 = *(v0 + 40);
  PreprocessingUpdatableSupervisedTemporalEstimator.estimator.getter(v1, *(v0 + 120));
  *(v0 + 16) = v10;
  OUTLINED_FUNCTION_15_0();
  v11 = v2 + *v2;
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *(v0 + 176) = *(v1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for PreprocessedFeatureSequence(255, AssociatedTypeWitness, v5, v6);
  OUTLINED_FUNCTION_32_4();
  v8 = swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedFeature(255, v7, v8, v9);
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_15();
  swift_getWitnessTable();
  *v3 = v0;
  v3[1] = sub_237CA8A1C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237CA8A1C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[15];
  v6 = v4[14];
  v7 = v4[13];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 184) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237CA8C54()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.fitted<A, B>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_23_3();
  v13[5] = v14;
  v13[6] = v12;
  v13[3] = v15;
  v13[4] = v16;
  v13[2] = v17;
  v18 = swift_task_alloc();
  v13[7] = v18;
  *v18 = v13;
  OUTLINED_FUNCTION_16_6(v18);
  OUTLINED_FUNCTION_45();
  return OUTLINED_FUNCTION_39_2(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_237CA8D68()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
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

uint64_t sub_237CA8E84()
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
    v4[1] = sub_237CA8F6C;

    return PreprocessingUpdatableSupervisedTemporalEstimator.fitted(toPreprocessed:eventHandler:)();
  }
}

uint64_t sub_237CA8F6C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CA9064()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237CA90C0()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.fitted<A, B, C>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v21[10] = a20;
  v21[11] = v20;
  v21[8] = a17;
  v21[9] = a19;
  v21[6] = v22;
  v21[7] = v23;
  v21[4] = v24;
  v21[5] = v25;
  v21[2] = v26;
  v21[3] = v27;
  v28 = swift_task_alloc();
  v21[12] = v28;
  *v28 = v21;
  v28[1] = sub_237CA9200;
  OUTLINED_FUNCTION_45();

  return PreprocessingUpdatableSupervisedTemporalEstimator.preprocessed<A, B>(from:eventHandler:)(v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t sub_237CA9200()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;
  *(v2 + 112) = v0;

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

uint64_t sub_237CA931C()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[14];
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_237CA940C;
    v5 = v0[10];
    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[6];
    v9 = v0[7];
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];

    return PreprocessingUpdatableSupervisedTemporalEstimator.preprocessed<A, B>(from:eventHandler:)(v12, v10, v11, v8, v9, v6, v7, v5);
  }
}

uint64_t sub_237CA940C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237CA950C()
{
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 136);
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
    *(v0 + 144) = v4;
    *v4 = v5;
    v4[1] = sub_237CA9608;

    return PreprocessingUpdatableSupervisedTemporalEstimator.fitted(toPreprocessed:validateOn:eventHandler:)();
  }
}

uint64_t sub_237CA9608()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CA9700()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237CA9768()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237CA97C4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

void PreprocessingUpdatableSupervisedTemporalEstimator.makeTransformer()()
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
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = *(v1 + 16);
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  PreprocessingUpdatableSupervisedTemporalEstimator.preprocessor.getter(v1, v19 - v18);
  PreprocessingUpdatableSupervisedTemporalEstimator.estimator.getter(v1, v9);
  (*(v11 + 16))(v3, v11);
  (*(v5 + 8))(v9, v3);
  v21 = *(v1 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(v20, v15, v16, AssociatedTypeWitness, v21, AssociatedConformanceWitness, v24);
  OUTLINED_FUNCTION_38_0();
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.update<A, B>(_:withPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[14] = v16;
  v1[15] = v0;
  v1[12] = v2;
  v1[13] = v3;
  v1[10] = v4;
  v1[11] = v5;
  v1[8] = v6;
  v1[9] = v7;
  v1[6] = v8;
  v1[7] = v9;
  v1[16] = *(v4 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[17] = v10;
  v1[18] = OUTLINED_FUNCTION_27_0();
  v11 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_237CA9AB0()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[10];
  PreprocessingUpdatableSupervisedTemporalEstimator.estimator.getter(v1, v0[18]);
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
  v9 = v6 + *v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[19] = v7;
  *v7 = v8;
  v7[1] = sub_237CA9C74;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237CA9C74()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = v5[18];
  v7 = v5[17];
  v8 = v5[16];
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  *(v3 + 160) = v0;

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

uint64_t sub_237CA9E04()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.update<A, B>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_23_3();
  v13[10] = v14;
  v13[11] = v12;
  v13[8] = v15;
  v13[9] = v16;
  v13[7] = v17;
  v13[12] = *(v14 + 24);
  OUTLINED_FUNCTION_1_1();
  v13[13] = v18;
  v13[14] = OUTLINED_FUNCTION_27_0();
  v19 = swift_task_alloc();
  v13[15] = v19;
  *v19 = v13;
  OUTLINED_FUNCTION_16_6(v19);
  OUTLINED_FUNCTION_45();
  return OUTLINED_FUNCTION_39_2(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_237CA9F38()
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

uint64_t sub_237CAA078(uint64_t a1)
{
  v2 = v1[17];
  sub_237EF8B90();
  if (!v2)
  {
    v5 = v1[16];
    v6 = v1[10];
    PreprocessingUpdatableSupervisedTemporalEstimator.estimator.getter(v6, v1[14]);
    v1[6] = v5;
    v7 = *(v6 + 16);
    OUTLINED_FUNCTION_32_4();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(v6 + 32);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v1[2] = v7;
    v1[3] = AssociatedTypeWitness;
    v1[4] = v9;
    v1[5] = AssociatedConformanceWitness;
    type metadata accessor for ComposedTemporalTransformer(0, (v1 + 2));
    OUTLINED_FUNCTION_15_0();
    v19 = v11 + *v11;
    v12 = swift_task_alloc();
    v1[18] = v12;
    v13 = swift_getAssociatedTypeWitness();
    v16 = type metadata accessor for PreprocessedFeatureSequence(255, v13, v14, v15);
    OUTLINED_FUNCTION_32_4();
    v17 = swift_getAssociatedTypeWitness();
    type metadata accessor for AnnotatedFeature(255, v16, v17, v18);
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_2_15();
    swift_getWitnessTable();
    *v12 = v1;
    v12[1] = sub_237CAA33C;

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t sub_237CAA33C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[13] + 8))(v3[14], v3[12]);
    v7 = OUTLINED_FUNCTION_6_2();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    (*(v3[13] + 8))(v3[14], v3[12]);

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237CAA4A8()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[5] + 8);
  v6 = a3[2];
  v7 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = a3[4];
  v13[0] = v6;
  v13[1] = AssociatedTypeWitness;
  v13[2] = v9;
  v13[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ComposedTemporalTransformer(0, v13);
  return (*(v5 + 56))(a1 + *(v10 + 52), a2, v7, v5);
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v21 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v24 = v10 - v9;
  v12 = *(*(v11 + 40) + 8);
  v13 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v20 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_34_2();
  result = (*(v12 + 64))(a1, v13, v12);
  if (!v25)
  {
    (*(v21 + 16))(v24, v3, v23);
    (*(v20 + 32))(v5, v4, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_36_4(v24, AssociatedConformanceWitness, a3);
  }

  return result;
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[5];
  v6 = a3[2];
  v7 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = a3[4];
  v13[0] = v6;
  v13[1] = AssociatedTypeWitness;
  v13[2] = v9;
  v13[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ComposedTemporalTransformer(0, v13);
  return (*(v5 + 32))(a1 + *(v10 + 52), a2, v7, v5);
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.decodeWithOptimizer(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v21 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v24 = v10 - v9;
  v12 = *(v11 + 40);
  v13 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_34_2();
  result = (*(v12 + 40))(a1, v13, v12);
  if (!v26)
  {
    (*(v21 + 16))(v24, v3, v23);
    (*(v16 + 32))(v5, v4, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_36_4(v24, AssociatedConformanceWitness, a3);
  }

  return result;
}

uint64_t sub_237CAAADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v21 = swift_task_alloc();
  *(v12 + 16) = v21;
  *v21 = v12;
  v21[1] = sub_237C6A904;

  return PreprocessingUpdatableSupervisedTemporalEstimator.update<A, B>(_:with:eventHandler:)(a1, a2, a3, a4, a9, a5, a6, a7, a8, a10, a11, a12);
}

uint64_t sub_237CAAC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v21 = swift_task_alloc();
  *(v12 + 16) = v21;
  *v21 = v12;
  v21[1] = sub_237C6B728;

  return PreprocessingUpdatableSupervisedTemporalEstimator.fitted<A, B>(to:eventHandler:)(a1, a2, a3, a4, a9, a5, a6, a7, a8, a10, a11, a12);
}

uint64_t sub_237CAAD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v26 = swift_task_alloc();
  *(v20 + 16) = v26;
  *v26 = v20;
  v26[1] = sub_237C6B728;

  return PreprocessingUpdatableSupervisedTemporalEstimator.fitted<A, B, C>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, a10, a6, a7, a8, v32, v33, a9, a13, a14, a15, a16, a17, a18, a19, a20);
}

void Transformer.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v22 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v19 = type metadata accessor for TransformerToTemporalAdaptor(0, v17, v18, v18);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  Transformer.adaptedAsTemporal()(v6, v2);
  (*(v12 + 16))(v16, v8, v4);
  WitnessTable = swift_getWitnessTable();
  PreprocessingUpdatableSupervisedTemporalEstimator.init(_:_:)(v16, v19, v4, WitnessTable, v22, v10);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v31 = v3;
  v32 = v2;
  v5 = v4;
  v7 = v6;
  v30 = v8;
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v23 = type metadata accessor for TransformerToTemporalAdaptor(0, v21, v22, v22);
  OUTLINED_FUNCTION_22_3();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v29 - v26;
  (*(v16 + 16))(v20, v1, v7, v25);
  TransformerToTemporalAdaptor.init(_:)(v20, v7, v27);
  (*(v10 + 16))(v14, v30, v5);
  WitnessTable = swift_getWitnessTable();
  PreprocessingUpdatableTemporalEstimator.init(_:_:)(v14, v23, v5, WitnessTable, v32, v31);
  OUTLINED_FUNCTION_38_0();
}

void TemporalTransformer.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = type metadata accessor for UpdatableSupervisedEstimatorToTemporalAdaptor(0, v27, v23, v25);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5();
  (*(v38 + 16))(v40 - v39, v20, v30);
  UpdatableSupervisedEstimator<>.adaptedAsTemporal()(v28, v24);
  WitnessTable = swift_getWitnessTable();
  PreprocessingUpdatableSupervisedTemporalEstimator.init(_:_:)(v36, v30, v33, v26, WitnessTable, v32);
  OUTLINED_FUNCTION_38_0();
}

void TemporalTransformer.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  (*(v21 + 16))(v20 - v19, v22, v7);
  (*(v13 + 16))(v17, v9, v5);
  PreprocessingUpdatableSupervisedTemporalEstimator.init(_:_:)(v17, v7, v5, v3, v1, v11);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v28 = v3;
  v29 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v19 = type metadata accessor for UpdatableEstimatorToTemporalAdaptor(0, v16, v18, v17);
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v20);
  v22 = &v28 - v21;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  (*(v26 + 16))(v25 - v24, v1, v7);
  (*(v11 + 16))(v15, v9, v5);
  UpdatableEstimatorToTemporalAdaptor.init(_:)(v15, v5, v22);
  WitnessTable = swift_getWitnessTable();
  PreprocessingUpdatableTemporalEstimator.init(_:_:)(v22, v7, v19, v29, WitnessTable, v28);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  (*(v21 + 16))(v20 - v19, v22, v7);
  (*(v13 + 16))(v17, v9, v5);
  PreprocessingUpdatableTemporalEstimator.init(_:_:)(v17, v7, v5, v3, v1, v11);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237CAB240(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237CAB2A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237CAB468(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_27_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return ComposedTemporalTransformer.init(_:_:)(v13, v11, a9, v12, a10, a1, v10);
}

uint64_t OUTLINED_FUNCTION_36_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{

  return ComposedTemporalTransformer.init(_:_:)(a1, v5, v3, v6, v4, a2, a3);
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return PreprocessingUpdatableSupervisedTemporalEstimator.preprocessed<A, B>(from:eventHandler:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_40_1()
{
  PreprocessingUpdatableSupervisedTemporalEstimator.preprocessor.getter(v3, v2);

  return AnnotatedFeature.feature.getter(v0, v1);
}

uint64_t sub_237CAB8E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636972656D756ELL && a2 == 0xE700000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6564756C636E69 && a2 == 0xE700000000000000;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6564756C637865 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_237CABA34(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = 0x636972656D756ELL;
      break;
    case 2:
      result = 0x6564756C636E69;
      break;
    case 3:
      result = 0x6564756C637865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237CABAD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x614E6E6D756C6F63 && a2 == 0xEB0000000073656DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237CABB50()
{
  sub_237EFA120();
  MEMORY[0x2383E2210](0);
  return sub_237EFA170();
}

uint64_t sub_237CABBB4@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_31();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237CABBE0(uint64_t a1)
{
  v2 = sub_237CAC4BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CABC1C(uint64_t a1)
{
  v2 = sub_237CAC4BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CABC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CAB8E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CABC88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C8CFF4();
  *a1 = result;
  return result;
}

uint64_t sub_237CABCB0(uint64_t a1)
{
  v2 = sub_237CAC36C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CABCEC(uint64_t a1)
{
  v2 = sub_237CAC36C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CABD30(uint64_t a1)
{
  v2 = sub_237CAC3C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CABD6C(uint64_t a1)
{
  v2 = sub_237CAC3C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CABDA8(uint64_t a1)
{
  sub_237EFA120();
  MEMORY[0x2383E2210](0);
  return sub_237EFA170();
}

uint64_t sub_237CABDE8(uint64_t a1)
{
  v2 = sub_237CAC414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CABE24(uint64_t a1)
{
  v2 = sub_237CAC414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CABE60(uint64_t a1)
{
  v2 = sub_237CAC468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CABE9C(uint64_t a1)
{
  v2 = sub_237CAC468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ColumnSelection.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEB98, &qword_237F06A30);
  OUTLINED_FUNCTION_1();
  v42 = v5;
  v43 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v41 = &v35 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBA0, &qword_237F06A38);
  OUTLINED_FUNCTION_1();
  v39 = v9;
  v40 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBA8, &qword_237F06A40);
  OUTLINED_FUNCTION_1();
  v37 = v14;
  v38 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBB0, &qword_237F06A48);
  OUTLINED_FUNCTION_1();
  v35 = v19;
  v36 = v18;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBB8, &unk_237F06A50);
  OUTLINED_FUNCTION_1();
  v44 = v24;
  v45 = v23;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  v27 = &v35 - v26;
  v28 = *v2;
  v29 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237CAC36C();
  sub_237EFA1B0();
  if (!v29)
  {
    LOBYTE(v46) = 2;
    sub_237CAC414();
    OUTLINED_FUNCTION_14_9(&type metadata for ColumnSelection.IncludeCodingKeys, &v46);
    v46 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
    OUTLINED_FUNCTION_4_15(&qword_27DEAEBD8, MEMORY[0x277D837D8]);
    v32 = v40;
    sub_237EF9A70();
    (*(v39 + 8))(v12, v32);
    return (*(v44 + 8))(v27, v17);
  }

  if (v29 == 1)
  {
    LOBYTE(v46) = 3;
    sub_237CAC3C0();
    v30 = v41;
    OUTLINED_FUNCTION_14_9(&type metadata for ColumnSelection.ExcludeCodingKeys, &v46);
    v46 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
    OUTLINED_FUNCTION_4_15(&qword_27DEAEBD8, MEMORY[0x277D837D8]);
    v31 = v43;
    sub_237EF9A70();
    (*(v42 + 8))(v30, v31);
    return (*(v44 + 8))(v27, v17);
  }

  v34 = (v44 + 8);
  if (v28)
  {
    LOBYTE(v46) = 1;
    sub_237CAC468();
    OUTLINED_FUNCTION_15_7(&type metadata for ColumnSelection.NumericCodingKeys, &v46);
    (*(v37 + 8))(v17, v38);
  }

  else
  {
    LOBYTE(v46) = 0;
    sub_237CAC4BC();
    OUTLINED_FUNCTION_15_7(&type metadata for ColumnSelection.AllCodingKeys, &v46);
    (*(v35 + 8))(v22, v36);
  }

  return (*v34)(v27, v28);
}

unint64_t sub_237CAC36C()
{
  result = qword_27DEAEBC0;
  if (!qword_27DEAEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEBC0);
  }

  return result;
}

unint64_t sub_237CAC3C0()
{
  result = qword_27DEAEBC8;
  if (!qword_27DEAEBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEBC8);
  }

  return result;
}

unint64_t sub_237CAC414()
{
  result = qword_27DEAEBE0;
  if (!qword_27DEAEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEBE0);
  }

  return result;
}

unint64_t sub_237CAC468()
{
  result = qword_27DEAEBE8;
  if (!qword_27DEAEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEBE8);
  }

  return result;
}

unint64_t sub_237CAC4BC()
{
  result = qword_27DEAEBF0;
  if (!qword_27DEAEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEBF0);
  }

  return result;
}

void ColumnSelection.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBF8, &qword_237F06A60);
  OUTLINED_FUNCTION_1();
  v71 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v75 = &v60 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC00, &qword_237F06A68);
  OUTLINED_FUNCTION_1();
  v69 = v6;
  v70 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v74 = &v60 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC08, &qword_237F06A70);
  OUTLINED_FUNCTION_1();
  v67 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC10, &qword_237F06A78);
  OUTLINED_FUNCTION_1();
  v66 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC18, &unk_237F06A80);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - v23;
  v25 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_237CAC36C();
  v26 = v77;
  sub_237EFA190();
  if (v26)
  {
    goto LABEL_8;
  }

  v63 = v14;
  v64 = v18;
  v65 = v13;
  v27 = v73;
  v77 = v21;
  v28 = sub_237EF9980();
  sub_237CAD3B0(v28, 0);
  if (v31 == v32 >> 1)
  {
    goto LABEL_7;
  }

  v62 = 0;
  if (v31 >= (v32 >> 1))
  {
    __break(1u);
    return;
  }

  v61 = *(v30 + v31);
  sub_237CADB14(v31 + 1, v32 >> 1, v29, v30, v31, v32);
  v34 = v33;
  v36 = v35;
  swift_unknownObjectRelease();
  if (v34 != v36 >> 1)
  {
LABEL_7:
    v43 = v77;
    v44 = sub_237EF93E0();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    *v46 = &type metadata for ColumnSelection;
    sub_237EF98C0();
    sub_237EF93D0();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v24, v19);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v76);
    return;
  }

  v37 = v72;
  switch(v61)
  {
    case 1:
      v47 = v27;
      LOBYTE(v78) = 1;
      sub_237CAC468();
      v48 = v65;
      OUTLINED_FUNCTION_2_16(&type metadata for ColumnSelection.NumericCodingKeys, &v78);
      swift_unknownObjectRelease();
      (*(v67 + 8))(v48, v47);
      v49 = OUTLINED_FUNCTION_1_12();
      v50(v49);
      v42 = 2;
      v41 = 1;
      goto LABEL_12;
    case 2:
      LOBYTE(v78) = 2;
      sub_237CAC414();
      OUTLINED_FUNCTION_2_16(&type metadata for ColumnSelection.IncludeCodingKeys, &v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
      OUTLINED_FUNCTION_6_12(&qword_27DEAEC28, MEMORY[0x277D83808]);
      sub_237EF9970();
      swift_unknownObjectRelease();
      v51 = OUTLINED_FUNCTION_12_10();
      v52(v51);
      v53 = OUTLINED_FUNCTION_1_12();
      v54(v53);
      v42 = 0;
      v41 = v78;
      v55 = v76;
      break;
    case 3:
      LOBYTE(v78) = 3;
      sub_237CAC3C0();
      OUTLINED_FUNCTION_2_16(&type metadata for ColumnSelection.ExcludeCodingKeys, &v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
      OUTLINED_FUNCTION_6_12(&qword_27DEAEC28, MEMORY[0x277D83808]);
      sub_237EF9970();
      swift_unknownObjectRelease();
      v56 = OUTLINED_FUNCTION_11_8();
      v57(v56);
      v58 = OUTLINED_FUNCTION_1_12();
      v59(v58);
      v41 = v78;
      v42 = 1;
      v55 = v76;
      v37 = v72;
      break;
    default:
      LOBYTE(v78) = 0;
      sub_237CAC4BC();
      v38 = v64;
      OUTLINED_FUNCTION_2_16(&type metadata for ColumnSelection.AllCodingKeys, &v78);
      swift_unknownObjectRelease();
      (*(v66 + 8))(v38, v63);
      v39 = OUTLINED_FUNCTION_1_12();
      v40(v39);
      v41 = 0;
      v42 = 2;
LABEL_12:
      v55 = v76;
      break;
  }

  *v37 = v41;
  *(v37 + 8) = v42;
  __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t DataFrame.selecting(_:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  v3 = sub_237CACD68(&v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237CAD454();
  sub_237EF6180();
}

uint64_t sub_237CACD68(uint64_t *a1)
{
  sub_237EF6310();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v85 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    sub_237EF8260();
    return v11;
  }

  v13 = MEMORY[0x277D84F90];
  v90 = v8;
  v14 = v8;
  if (v12 == 1)
  {
    v15 = sub_237EF6170();
    v16 = *(v15 + 16);
    if (v16)
    {
      v87 = v11;
      v92 = v13;
      sub_237C62D90(0, v16, 0);
      v17 = v92;
      v18 = v3 + 16;
      v19 = *(v3 + 16);
      v20 = *(v3 + 80);
      v86 = v15;
      v21 = v15 + ((v20 + 32) & ~v20);
      v88 = *(v18 + 56);
      v89 = v19;
      v91 = v18;
      v22 = (v18 - 8);
      do
      {
        (v89)(v10, v21, v14);
        v23 = sub_237EF6300();
        v25 = v24;
        (*v22)(v10, v14);
        v92 = v17;
        v27 = *(v17 + 16);
        v26 = *(v17 + 24);
        if (v27 >= v26 >> 1)
        {
          v29 = OUTLINED_FUNCTION_17_0(v26);
          sub_237C62D90(v29, v27 + 1, 1);
          v17 = v92;
        }

        *(v17 + 16) = v27 + 1;
        v28 = v17 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        v21 += v88;
        --v16;
        v14 = v90;
      }

      while (v16);

      v11 = v87;
    }

    else
    {
    }

    v68 = sub_237CADF98();
    v69 = sub_237E15C00(v11, v68);
    return sub_237EC9254(v69);
  }

  v30 = sub_237EF6170();
  v31 = *(v30 + 16);
  if (v11)
  {
    if (v31)
    {
      v34 = *(v3 + 16);
      v32 = v3 + 16;
      v33 = v34;
      v35 = (*(v32 + 64) + 32) & ~*(v32 + 64);
      v86 = v30;
      v36 = v30 + v35;
      v11 = MEMORY[0x277D84F90];
      v91 = v32;
      v88 = *(v32 + 56);
      v89 = (v32 - 8);
      v87 = v34;
      while (1)
      {
        v33(v6, v36, v14);
        sub_237EF62F0();
        if (swift_dynamicCastMetatype())
        {
          sub_237EF6300();
          if ((OUTLINED_FUNCTION_10_11() & 1) == 0)
          {
            OUTLINED_FUNCTION_5_14();
            v11 = v60;
          }

          v37 = *(v11 + 16);
          v38 = v11;
          if (v37 >= *(v11 + 24) >> 1)
          {
            sub_237D0B354();
            v38 = v61;
          }

          v39 = OUTLINED_FUNCTION_8_13();
          v40(v39);
          *(v38 + 16) = v37 + 1;
          v11 = v38;
          v41 = v38 + 16 * v37;
          *(v41 + 32) = v6;
          *(v41 + 40) = v32;
          goto LABEL_40;
        }

        if (swift_dynamicCastMetatype())
        {
          v42 = v6;
          sub_237EF6300();
          if ((OUTLINED_FUNCTION_10_11() & 1) == 0)
          {
            OUTLINED_FUNCTION_5_14();
            v11 = v62;
          }

          v44 = *(v11 + 16);
          v43 = *(v11 + 24);
          v45 = v11;
          if (v44 >= v43 >> 1)
          {
            OUTLINED_FUNCTION_17_0(v43);
            sub_237D0B354();
            v45 = v63;
          }

          v14 = v90;
          v46 = OUTLINED_FUNCTION_8_13();
          v47(v46);
          *(v45 + 16) = v44 + 1;
          v11 = v45;
          v48 = v45 + 16 * v44;
        }

        else
        {
          if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
          {
            v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
            if (!OUTLINED_FUNCTION_9_6(v49))
            {
              v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0, &unk_237F0EF50);
              if (!OUTLINED_FUNCTION_9_6(v50))
              {
                v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8, &qword_237F07050);
                if (!OUTLINED_FUNCTION_9_6(v51))
                {
                  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8, &qword_237F15D00);
                  if (!OUTLINED_FUNCTION_9_6(v52))
                  {
                    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
                    if (!OUTLINED_FUNCTION_9_6(v53))
                    {
                      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
                      if (!OUTLINED_FUNCTION_9_6(v54))
                      {
                        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50, &unk_237F068C0);
                        if (!OUTLINED_FUNCTION_9_6(v55))
                        {
                          v66 = OUTLINED_FUNCTION_8_13();
                          v67(v66);
                          goto LABEL_40;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v42 = v6;
          sub_237EF6300();
          if ((OUTLINED_FUNCTION_10_11() & 1) == 0)
          {
            OUTLINED_FUNCTION_5_14();
            v11 = v64;
          }

          v57 = *(v11 + 16);
          v56 = *(v11 + 24);
          v58 = v11;
          if (v57 >= v56 >> 1)
          {
            OUTLINED_FUNCTION_17_0(v56);
            sub_237D0B354();
            v58 = v65;
          }

          v59 = v90;
          (*v89)(v6, v90);
          v11 = v58;
          v14 = v59;
          *(v11 + 16) = v57 + 1;
          v48 = v11 + 16 * v57;
        }

        *(v48 + 32) = v42;
        *(v48 + 40) = v32;
        v33 = v87;
LABEL_40:
        v36 += v88;
        if (!--v31)
        {
          goto LABEL_50;
        }
      }
    }

LABEL_51:

    return MEMORY[0x277D84F90];
  }

  if (!v31)
  {
    goto LABEL_51;
  }

  v92 = v13;
  v70 = v30;
  sub_237C62D90(0, v31, 0);
  v11 = v92;
  v72 = *(v3 + 16);
  v71 = v3 + 16;
  v73 = *(v71 + 64);
  v86 = v70;
  v74 = v70 + ((v73 + 32) & ~v73);
  v88 = *(v71 + 56);
  v89 = v72;
  v91 = v71;
  v75 = (v71 - 8);
  do
  {
    v76 = v90;
    (v89)(v10, v74, v90);
    v77 = sub_237EF6300();
    v79 = v78;
    (*v75)(v10, v76);
    v92 = v11;
    v81 = *(v11 + 16);
    v80 = *(v11 + 24);
    if (v81 >= v80 >> 1)
    {
      v83 = OUTLINED_FUNCTION_17_0(v80);
      sub_237C62D90(v83, v81 + 1, 1);
      v11 = v92;
    }

    *(v11 + 16) = v81 + 1;
    v82 = v11 + 16 * v81;
    *(v82 + 32) = v77;
    *(v82 + 40) = v79;
    v74 += v88;
    --v31;
  }

  while (v31);
LABEL_50:

  return v11;
}

void sub_237CAD3B0(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_14();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_237CAD3E8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEBD0, qword_237F0EC30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237CAD454()
{
  result = qword_27DEAEC30;
  if (!qword_27DEAEC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEBD0, qword_237F0EC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18CreateMLComponents15ColumnSelectionO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

_BYTE *storeEnumTagSinglePayload for ColumnSelection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_237CAD5F0(_BYTE *result, int a2, int a3)
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

unint64_t sub_237CAD6A0()
{
  result = qword_27DEAEC38;
  if (!qword_27DEAEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC38);
  }

  return result;
}

unint64_t sub_237CAD6F8()
{
  result = qword_27DEAEC40;
  if (!qword_27DEAEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC40);
  }

  return result;
}

unint64_t sub_237CAD750()
{
  result = qword_27DEAEC48;
  if (!qword_27DEAEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC48);
  }

  return result;
}

unint64_t sub_237CAD7A8()
{
  result = qword_27DEAEC50;
  if (!qword_27DEAEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC50);
  }

  return result;
}

unint64_t sub_237CAD800()
{
  result = qword_27DEAEC58;
  if (!qword_27DEAEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC58);
  }

  return result;
}

unint64_t sub_237CAD858()
{
  result = qword_27DEAEC60;
  if (!qword_27DEAEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC60);
  }

  return result;
}

unint64_t sub_237CAD8B0()
{
  result = qword_27DEAEC68;
  if (!qword_27DEAEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC68);
  }

  return result;
}

unint64_t sub_237CAD908()
{
  result = qword_27DEAEC70;
  if (!qword_27DEAEC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC70);
  }

  return result;
}

unint64_t sub_237CAD960()
{
  result = qword_27DEAEC78;
  if (!qword_27DEAEC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC78);
  }

  return result;
}

unint64_t sub_237CAD9B8()
{
  result = qword_27DEAEC80;
  if (!qword_27DEAEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC80);
  }

  return result;
}

unint64_t sub_237CADA10()
{
  result = qword_27DEAEC88;
  if (!qword_27DEAEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC88);
  }

  return result;
}

unint64_t sub_237CADA68()
{
  result = qword_27DEAEC90;
  if (!qword_27DEAEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC90);
  }

  return result;
}

unint64_t sub_237CADAC0()
{
  result = qword_27DEAEC98;
  if (!qword_27DEAEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC98);
  }

  return result;
}

uint64_t sub_237CADB14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1, uint64_t a2)
{

  return sub_237EF98B0();
}

uint64_t OUTLINED_FUNCTION_4_15(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83948];

  return sub_237CAD3E8(a1, a2, v3);
}

void OUTLINED_FUNCTION_5_14()
{

  sub_237D0B354();
}

uint64_t OUTLINED_FUNCTION_6_12(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83978];

  return sub_237CAD3E8(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_9_6(uint64_t a1)
{

  return swift_dynamicCastMetatype();
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_14_9(uint64_t a1, uint64_t a2)
{

  return sub_237EF99C0();
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1, uint64_t a2)
{

  return sub_237EF99C0();
}

void sub_237CADD10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v39 = MEMORY[0x277D84F90];
  sub_237C632DC(0);
  v8 = v39;
  v30 = v6;
  v31 = v5;
  v28 = a1;
  v27 = v7;
  if (v7)
  {
    v9 = a1 + 40;
    v10 = a2 + 40;
    while (v5)
    {
      if (!v6)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_4_16();
      a3();
      v35 = v33;
      v36 = v34;
      OUTLINED_FUNCTION_4_16();
      swift_getAtKeyPath();
      v11 = v33;
      v12 = v34;
      v39 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_237C632DC(v13 > 1);
        v12 = v34;
        v11 = v33;
        v8 = v39;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      --v6;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      --v5;
      v9 += 16;
      v10 += 16;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v27;
    v17 = v28;
    v29 = 16 * v27;
    for (i = a2; v31 != v16; i += 16)
    {
      if (v16 >= v31)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_24;
      }

      if (v30 == v16)
      {
        break;
      }

      if (v16 >= v30)
      {
        goto LABEL_25;
      }

      v19 = *(v17 + v29 + 40);
      v20 = *(i + v29 + 32);
      v21 = *(i + v29 + 40);
      v35 = *(v17 + v29 + 32);
      v36 = v19;
      v37 = v20;
      v38 = v21;
      (a3)(&v33, &v35);
      v35 = v33;
      v36 = v34;
      OUTLINED_FUNCTION_4_16();
      swift_getAtKeyPath();
      v22 = v33;
      v23 = v34;
      v39 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_237C632DC(v24 > 1);
        v8 = v39;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      v17 += 16;
      ++v16;
    }
  }
}

uint64_t sub_237CAE03C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_19_6(a1);
  v3 = MEMORY[0x2383E0D40](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v9 = v3;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_237E4C18C(&v8, *(v1 + v5));
      v5 += 8;
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

uint64_t sub_237CAE1B8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_19_6(a1);
  v3 = MEMORY[0x2383E0D40](v2, MEMORY[0x277D849A8], MEMORY[0x277D849B8]);
  v9 = v3;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_237E4C5F8(v8, *(v1 + v5));
      v5 += 4;
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

uint64_t sub_237CAE248(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECB0, &unk_237F1A490);
  v4 = sub_237CB21C0();
  v5 = MEMORY[0x2383E0D40](v2, v3, v4);
  v13 = v5;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v7 += 16;
      sub_237E4C6A8(v12, v8, v9);
      --v6;
    }

    while (v6);

    return v13;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

uint64_t sub_237CAE2F4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_19_6(a1);
  v3 = MEMORY[0x2383E0D40](v2, MEMORY[0x277D839B0], MEMORY[0x277D839C0]);
  v9 = v3;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_237E4C7EC(&v8, *(v1 + v5++));
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

uint64_t sub_237CAE384()
{
  OUTLINED_FUNCTION_11_9();
  if (v1)
  {
    v3 = 32;
    do
    {
      sub_237E4C5F8(&v6, *(v0 + v3));
      v3 += 4;
      --v1;
    }

    while (v1);

    return v7;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

uint64_t sub_237CAE3F8(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v3 += 16;
      sub_237E4C6A8(v8, v4, v5);
      --v2;
    }

    while (v2);

    return v9;
  }

  else
  {
    v6 = a2;
  }

  return v6;
}

unint64_t sub_237CAE474()
{
  OUTLINED_FUNCTION_11_9();
  if (v1)
  {
    v3 = 32;
    do
    {
      sub_237E4C18C(v6, *(v0 + v3));
      v3 += 8;
      --v1;
    }

    while (v1);

    return v6[1];
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

uint64_t sub_237CAE4E8()
{
  OUTLINED_FUNCTION_11_9();
  if (v1)
  {
    v3 = 32;
    do
    {
      sub_237E4C7EC(&v6, *(v0 + v3++));
      --v1;
    }

    while (v1);

    return v7;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

uint64_t BaseTreeClassifier.fitted(features:annotations:classCount:eventHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(__int128 *)@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = v6;
  v38 = a2;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(v8 + 2);
  *&v32 = *a1;
  *(&v32 + 1) = v13;
  LOBYTE(v33) = v14;
  *&v34 = v15;
  v17 = type metadata accessor for XGBoostMatrix();
  OUTLINED_FUNCTION_36_1(v17);

  result = sub_237D51C98(&v32);
  if (!v7)
  {
    v30 = v13;
    v31 = v16;
    v19 = result;
    sub_237D51B9C(v38);
    type metadata accessor for XGBooster();
    swift_allocObject();

    v21 = sub_237E88668(v20, 0);
    v22 = v21;
    v38 = v19;
    sub_237CAE8CC(v21, a3);
    v32 = *v8;
    v33 = v31;
    v34 = *(v8 + 24);
    v35 = *(v8 + 40);
    v36 = *(v8 + 56);
    v37 = *(v8 + 72);
    result = sub_237CAEA0C(v22, a3, v30, 0);
    if ((v31 & 0x8000000000000000) == 0)
    {
      v29 = v22;

      v23 = 0;
      v24 = a6;
      while (1)
      {
        if (v31 == v23)
        {

          *v24 = a3;
          v24[1] = v30;
          v24[2] = v29;
          v24[3] = v31;
          return result;
        }

        if (__OFADD__(v23, 1))
        {
          break;
        }

        sub_237EF8B90();
        OUTLINED_FUNCTION_8_14();
        result = sub_237E87F70(v25);
        if (a4 && (v23 >= 5 ? (v26 = 10 * (v23 / 0xA) == v23) : (v26 = 1), v26))
        {

          sub_237C70604(a4, a5);
          v27 = sub_237E87BCC();

          v28 = sub_237C908A4(v27);

          *&v32 = 0xD000000000000015;
          *(&v32 + 1) = 0x8000000237EFBD30;
          v33 = v23 + 1;
          *&v34 = v31;
          BYTE8(v34) = 0;
          *&v35 = v28;
          a4(&v32);
          sub_237C5EE40(a4, a5);

          v24 = a6;
        }

        else
        {
          v24 = a6;
        }

        ++v23;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id sub_237CAE8CC(uint64_t a1, uint64_t a2)
{
  if (a2 < 2)
  {
    sub_237C84150();
    swift_allocError();
    *v11 = 0xD00000000000001CLL;
    *(v11 + 8) = 0x8000000237EFBD90;
    *(v11 + 16) = 0xD000000000000027;
    *(v11 + 24) = 0x8000000237EFBED0;
    *(v11 + 32) = 5;
    return swift_willThrow();
  }

  if (a2 == 2)
  {
    v3 = OUTLINED_FUNCTION_12_11();
    result = sub_237E87DE0(v3, v4, v5, 0xE500000000000000);
    if (v2)
    {
      return result;
    }

    v7 = OUTLINED_FUNCTION_12_11();
    v10 = 0xE700000000000000;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_12_11();
    result = sub_237E87DE0(v12, v13, v14, 0xE600000000000000);
    if (v2)
    {
      return result;
    }

    v7 = OUTLINED_FUNCTION_12_11();
    v10 = 0xE800000000000000;
  }

  return sub_237E87DE0(v7, v8, v9, v10);
}

id sub_237CAEA0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = *v4;
  v8 = *(v4 + 8);
  v10 = *(v4 + 24);
  v9 = *(v4 + 32);
  v11 = *(v4 + 40);
  v12 = *(v4 + 56);
  v14 = *(v4 + 64);
  v13 = *(v4 + 72);
  v15 = *(v4 + 80);
  if ((a4 & 1) == 0)
  {
    sub_237EF9AB0();
    v16 = OUTLINED_FUNCTION_2_17();
    sub_237E87DE0(v16, v17, v18, v19);
    if (v5)
    {
    }

    v6 = a2;
  }

  result = sub_237E87DE0(0x74656D5F65657274, 0xEB00000000646F68, 1953720680, 0xE400000000000000);
  if (!v5)
  {
    if (v6 < 3)
    {
      sub_237E87DE0(0x76697463656A626FLL, 0xE900000000000065, 0x6C3A7972616E6962, 0xEF6369747369676FLL);
    }

    else
    {
      sub_237E87DE0(0x76697463656A626FLL, 0xE900000000000065, 0x6F733A69746C756DLL, 0xEE00626F72707466);
      v21 = sub_237EF9AB0();
      OUTLINED_FUNCTION_14_10(0x73616C635F6D756ELL, 0xE900000000000073, v21, v22);
    }

    sub_237CC9F60(v10, 0xD000000000000016, 0x8000000237EFBD70, 0xD00000000000001CLL, 0x8000000237EFBD90);
    OUTLINED_FUNCTION_7_15();
    sub_237EF8C10();
    OUTLINED_FUNCTION_8_14();
    sub_237E87DE0(v23, v24, v25, v26);

    if ((v12 & 1) == 0)
    {
      v27 = sub_237EF9AB0();
      OUTLINED_FUNCTION_14_10(0xD000000000000019, 0x8000000237EFBEB0, v27, v28);
    }

    v29 = sub_237EF9AB0();
    OUTLINED_FUNCTION_14_10(1684366707, 0xE400000000000000, v29, v30);

    sub_237CC9F60(v9, 0xD000000000000014, 0x8000000237EFBDB0, 0xD00000000000001CLL, 0x8000000237EFBD90);
    OUTLINED_FUNCTION_7_15();
    sub_237EF8C10();
    OUTLINED_FUNCTION_14_10(0xD000000000000010, 0x8000000237EFBDD0, v11, v58);

    sub_237CCA010(v8, 0x206D756D6978614DLL, 0xED00006874706564, 0xD00000000000001CLL, 0x8000000237EFBD90);
    v57 = v8;
    v31 = sub_237EF9AB0();
    OUTLINED_FUNCTION_14_10(0x747065645F78616DLL, 0xE900000000000068, v31, v32);

    if (v14 <= 0.0 || v14 > 1.0)
    {
      OUTLINED_FUNCTION_7_15();
      sub_237EF9330();
      v34 = 0x7362757320776F52;
      v35 = 0xED0000656C706D61;
    }

    else
    {
      OUTLINED_FUNCTION_7_15();
      sub_237EF8C10();
      OUTLINED_FUNCTION_8_14();
      sub_237E87DE0(v38, v39, v40, v41);

      if (v13 > 0.0 && v13 <= 1.0)
      {
        OUTLINED_FUNCTION_7_15();
        sub_237EF8C10();
        OUTLINED_FUNCTION_8_14();
        sub_237E87DE0(v43, v44, v45, v46);

        sub_237CCA010(v15, 0xD000000000000013, 0x8000000237EFBE50, 0xD00000000000001CLL, 0x8000000237EFBD90);
        v57 = v15;
        sub_237EF9AB0();
        OUTLINED_FUNCTION_8_14();
        sub_237E87DE0(v47, v48, v49, v50);

        if (v7 >= 0.0 && v7 <= 1.0)
        {
          OUTLINED_FUNCTION_7_15();
          sub_237EF8C10();
          OUTLINED_FUNCTION_8_14();
          sub_237E87DE0(v52, v53, v54, v55);
        }

        OUTLINED_FUNCTION_7_15();
        sub_237EF9330();
        MEMORY[0x2383E0710](0x676E696E7261654CLL, 0xED00006574617220);
        v36 = " should be in the range [";
LABEL_18:
        MEMORY[0x2383E0710](0xD000000000000019, (v36 - 32) | 0x8000000000000000);
        sub_237EF8C10();
        MEMORY[0x2383E0710](8236, 0xE200000000000000);
        sub_237EF8C10();
        MEMORY[0x2383E0710](11869, 0xE200000000000000);
        sub_237C84150();
        swift_allocError();
        *v37 = 0xD00000000000001CLL;
        *(v37 + 8) = 0x8000000237EFBD90;
        *(v37 + 16) = v57;
        *(v37 + 24) = v58;
        *(v37 + 32) = 5;
        return swift_willThrow();
      }

      OUTLINED_FUNCTION_7_15();
      sub_237EF9330();
      v35 = 0x8000000237EFBE10;
      v34 = 0xD000000000000010;
    }

    MEMORY[0x2383E0710](v34, v35);
    v36 = " should be in the range (";
    goto LABEL_18;
  }

  return result;
}

uint64_t BaseTreeClassifier.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:classCount:eventHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = v6;
  v31 = a2;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = a3[1];
  v24 = *a3;
  *&v25 = *a1;
  v13 = *(a3 + 16);
  v14 = a3[3];
  *(&v25 + 1) = v9;
  LOBYTE(v26) = v10;
  *&v27 = v11;
  v15 = type metadata accessor for XGBoostMatrix();
  OUTLINED_FUNCTION_36_1(v15);

  result = sub_237D51C98(&v25);
  if (!v7)
  {
    v17 = result;
    sub_237D51B9C(v31);
    v31 = v17;
    *&v25 = v24;
    *(&v25 + 1) = v12;
    LOBYTE(v26) = v13;
    *&v27 = v14;
    OUTLINED_FUNCTION_36_1(v15);

    v18 = sub_237D51C98(&v25);
    sub_237D51B9C(a4);
    type metadata accessor for XGBooster();
    swift_allocObject();
    v19 = v31;

    v20 = sub_237E88668(v19, v18);
    sub_237CAE8CC(v20, a5);
    v25 = *v8;
    v26 = 0;
    v27 = *(v8 + 24);
    v28 = *(v8 + 40);
    v29 = *(v8 + 56);
    v30 = *(v8 + 72);
    sub_237CAEA0C(v20, a5, v9, 0);

    *a6 = a5;
    a6[1] = v9;
    a6[2] = v20;
    a6[3] = 0;
  }

  return result;
}

uint64_t BaseTreeClassifier.makeTransformer(classCount:featureCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for XGBooster();
  swift_allocObject();
  result = sub_237E88668(0, 0);
  if (!v3)
  {
    v8 = result;
    result = sub_237CAEA0C(result, a1, a2, 0);
    *a3 = a1;
    a3[1] = a2;
    a3[2] = v8;
    a3[3] = 0;
  }

  return result;
}

uint64_t BaseTreeClassifier.update(_:features:annotations:eventHandler:)(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(v5 + 16);
  *&v65 = *a2;
  *(&v65 + 1) = v9;
  LOBYTE(v66) = v11;
  v67 = v12;
  v14 = type metadata accessor for XGBoostMatrix();
  OUTLINED_FUNCTION_36_1(v14);

  result = sub_237D51C98(&v65);
  if (!v6)
  {
    v16 = result;
    v61 = v9;
    v60 = v13;
    sub_237D51B9C(a3);
    v17 = a1;
    if (sub_237E87EDC())
    {
      if (v61 != sub_237E87EDC())
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        v19 = OUTLINED_FUNCTION_36_1(v18);
        *(v19 + 16) = xmmword_237F04760;
        *(v19 + 32) = v10;
        *(v19 + 40) = v61;
        *&v65 = 0;
        *(&v65 + 1) = 0xE000000000000000;
        sub_237EF9330();

        *&v65 = 0x6465746365707845;
        *(&v65 + 1) = 0xE900000000000020;
        v70[0] = sub_237E87EDC();
        v20 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v20);

        MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFBD50);
        v70[0] = v61;
        v21 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v21);

        v22 = v65;
        sub_237C84150();
        swift_allocError();
        *v23 = v19;
        *(v23 + 8) = v22;
        *(v23 + 24) = 0;
        *(v23 + 32) = 6;
        swift_willThrow();
      }
    }

    else
    {
      *(a1 + 1) = v61;
      *&v65 = v61;
      sub_237EF9AB0();
      v24 = OUTLINED_FUNCTION_2_17();
      sub_237E87DE0(v24, v25, v26, v27);
    }

    sub_237EF8B90();
    result = sub_237E87F70(v16);
    v59 = a3;
    v28 = *(a1 + 3);
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return result;
    }

    *(v17 + 3) = v29;
    if (!a4)
    {
    }

    v30 = *(v17 + 2);
    v65 = *v17;
    v66 = v30;
    v67 = v28 + 1;
    v70[0] = v10;
    v70[1] = v61;
    v71 = v11;
    v72 = v12;
    sub_237C70604(a4, a5);

    v31 = BaseTreeClassifierModel.applied(features:eventHandler:)(v70);
    v62 = v29;

    v32 = *(v31 + 16);
    if (v32)
    {
      *&v65 = MEMORY[0x277D84F90];
      sub_237C632DC(0);
      v33 = 32;
      v34 = v65;
      do
      {
        v35 = *(v31 + v33);
        v36 = *(v35 + 16);
        if (v36)
        {
          v37 = *(v35 + 32);
        }

        else
        {
          v37 = 0;
        }

        *&v65 = v34;
        v39 = *(v34 + 16);
        v38 = *(v34 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_237C632DC(v38 > 1);
          v34 = v65;
        }

        *(v34 + 16) = v39 + 1;
        v40 = v34 + 16 * v39;
        *(v40 + 32) = v37;
        *(v40 + 40) = v36 == 0;
        v33 += 8;
        --v32;
      }

      while (v32);
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    v41 = sub_237CAFED8(v59);
    MEMORY[0x28223BE20](v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECB0, &unk_237F1A490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECB8, &qword_237F07080);
    sub_237CB21C0();
    sub_237C96710(&qword_27DEAECC8, &qword_27DEAECB8, &qword_237F07080, MEMORY[0x277D842F0]);
    swift_getKeyPath();

    sub_237CADD10(v34, v41, sub_237CB2164);
    v43 = v42;

    v44 = sub_237CAE248(v43);
    MEMORY[0x28223BE20](v44);
    swift_getKeyPath();

    v45 = OUTLINED_FUNCTION_16_7();
    sub_237CADD10(v45, v46, v47);
    v49 = v48;

    sub_237CAE3F8(v49, v44);
    v50 = OUTLINED_FUNCTION_16_7();
    sub_237CB07EC(v50, v51, v52, v53, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7D0, &unk_237F03CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x8000000237EFB8A0;
    sub_237CB0070(sub_237CB17D4, sub_237CB17D4, sub_237D299E0);
    v57 = v56;
    sub_237CB223C(v73);
    *(inited + 72) = MEMORY[0x277D839F8];
    *(inited + 48) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0, &qword_237F03CE0);
    sub_237C758C4();
    v58 = sub_237EF8230();
    *&v65 = 0xD000000000000015;
    *(&v65 + 1) = 0x8000000237EFBD30;
    v66 = v62;
    v67 = v60;
    v68 = 0;
    v69 = v58;
    a4(&v65);

    sub_237C5EE40(a4, a5);
  }

  return result;
}

uint64_t sub_237CAFED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_237C632DC(0);
    v2 = v11;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECB0, &unk_237F1A490);
      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_237C632DC(v5 > 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237CB0070(uint64_t (*a1)(char *, unint64_t, uint64_t), uint64_t (*a2)(void *, uint64_t, uint64_t), uint64_t (*a3)(uint64_t))
{
  v7 = 0;
  v8 = 0;
  result = *(v3 + 40);
  v10 = 1 << *(result + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(result + 64);
  v13 = (v10 + 63) >> 6;
  do
  {
    if (!v12)
    {
      while (1)
      {
        v14 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
          goto LABEL_13;
        }

        v12 = *(result + 64 + 8 * v14);
        ++v7;
        if (v12)
        {
          v7 = v14;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v14 = v7;
LABEL_10:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = *(*(result + 56) + ((v14 << 9) | (8 * v15)));
    v17 = __OFADD__(v8, v16);
    v8 += v16;
  }

  while (!v17);
  __break(1u);
LABEL_13:
  v18 = sub_237CB1568(result, a1, a2);
  v19 = v18[2];
  if (!v19)
  {

    v20 = MEMORY[0x277D84F90];
LABEL_34:
    v68 = *(v20 + 16);
    if (!v68)
    {
    }

    v69 = 0;
    for (i = 32; ; i += 8)
    {
      v71 = *(v20 + i);
      v17 = __OFADD__(v69, v71);
      v69 += v71;
      if (v17)
      {
        break;
      }

      if (!--v68)
      {
      }
    }

    goto LABEL_41;
  }

  v72 = v8;
  v77 = v18;
  v78 = MEMORY[0x277D84F90];
  v76 = v18[2];
  sub_237C62DB0(0, v19, 0);
  v20 = v78;
  v22 = a3(v77);
  v23 = v76;
  result = v77;
  v25 = v24;
  v26 = 0;
  v27 = v77 + 64;
  v28 = v24;
  v73 = v77 + 72;
  v74 = v24;
  v29 = 1;
  v30 = -2;
  v75 = v77 + 64;
  while ((v22 & 0x8000000000000000) == 0 && v22 < v29 << *(result + 32))
  {
    v31 = v22 >> 6;
    v32 = v29 << v22;
    if ((*(v27 + 8 * (v22 >> 6)) & (v29 << v22)) == 0)
    {
      goto LABEL_43;
    }

    if (*(result + 36) != v25)
    {
      goto LABEL_44;
    }

    v33 = *(*(result + 56) + 8 * v22);
    v79 = v20;
    v35 = *(v20 + 16);
    v34 = *(v20 + 24);
    if (v35 >= v34 >> 1)
    {
      v60 = v21;
      sub_237C62DB0(v34 > 1, v35 + 1, 1);
      result = OUTLINED_FUNCTION_3_16(v61, v62, v60, v63, v64, v65, v66, v67, v72, v73, v74, v75, v76, v77);
      v20 = v79;
    }

    *(v20 + 16) = v35 + 1;
    *(v20 + 8 * v35 + 32) = v33;
    v36 = v29 << *(result + 32);
    if (v22 >= v36)
    {
      goto LABEL_45;
    }

    v37 = *(v27 + 8 * v31);
    if ((v37 & v32) == 0)
    {
      goto LABEL_46;
    }

    if (*(result + 36) != v25)
    {
      goto LABEL_47;
    }

    v38 = v37 & (v30 << (v22 & 0x3F));
    if (v38)
    {
      v36 = __clz(__rbit64(v38)) | v22 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v39 = v31 << 6;
      v40 = v31 + 1;
      v41 = (v73 + 8 * v31);
      while (v40 < (v36 + 63) >> 6)
      {
        v43 = *v41++;
        v42 = v43;
        v39 += 64;
        ++v40;
        if (v43)
        {
          v44 = sub_237CB231C(v22, v25, v21 & 1);
          result = OUTLINED_FUNCTION_3_16(v44, v45, v46, v47, v48, v49, v50, v51, v72, v73, v74, v75, v76, v77);
          v36 = __clz(__rbit64(v42)) + v39;
          goto LABEL_31;
        }
      }

      v52 = sub_237CB231C(v22, v25, v21 & 1);
      result = OUTLINED_FUNCTION_3_16(v52, v53, v54, v55, v56, v57, v58, v59, v72, v73, v74, v75, v76, v77);
    }

LABEL_31:
    v21 = 0;
    ++v26;
    v22 = v36;
    v25 = v28;
    if (v26 == v23)
    {

      goto LABEL_34;
    }
  }

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
LABEL_47:
  __break(1u);
  return result;
}

void sub_237CB03A0(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, void **)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a2;
  v9 = a1;
  v68 = a6;
  v80 = *(a1 + 16);
  v77 = a2 + 32;
  v78 = a1 + 32;
  sub_237EF8260();
  sub_237EF8260();

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v15 = MEMORY[0x277D84F98];
  v69 = v9;
  v70 = a4;
  v75 = v8;
  while (2)
  {
    v73 = v11;
    v74 = v10;
    v71 = v13;
    v16 = v12;
    do
    {
LABEL_3:
      if (v16 == v80)
      {
        goto LABEL_37;
      }

      if (v16 >= *(v9 + 16))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v17 = *(v8 + 16);
      if (v16 == v17)
      {
        goto LABEL_37;
      }

      if (v16 >= v17)
      {
        goto LABEL_39;
      }

      v18 = *(v77 + 4 * v16);
      v19 = v16 + 1;
      LODWORD(v83) = *(v78 + 4 * v16);
      HIDWORD(v83) = v18;
      a3(&v82, &v83);
      v16 = v19;
    }

    while (!a5[2]);
    v81 = v19;
    v20 = a5[5];
    v76 = v82;
    v21 = v82;
    MEMORY[0x2383E21E0](v20, v82, 4);
    OUTLINED_FUNCTION_9_7();
    do
    {
      OUTLINED_FUNCTION_0_13();
      if ((v23 & 1) == 0)
      {
        v16 = v81;
        v8 = v75;
        goto LABEL_3;
      }

      v24 = a5[6];
    }

    while (*(v24 + 4 * v22) != v21);
    MEMORY[0x2383E21E0](v20, HIDWORD(v76), 4);
    do
    {
      OUTLINED_FUNCTION_0_13();
      if ((v26 & 1) == 0)
      {
        v16 = v81;
        v9 = v69;
        v8 = v75;
        goto LABEL_3;
      }
    }

    while (*(v24 + 4 * v25) != HIDWORD(v76));
    sub_237C5EE40(v74, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v83 = v15;
    sub_237D2FDB8(HIDWORD(v76));
    OUTLINED_FUNCTION_21_4();
    if (v27)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v30 = v28;
    v31 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECE0, &qword_237F07100);
    v32 = sub_237EF96B0();
    v15 = v83;
    if (v32)
    {
      sub_237D2FDB8(HIDWORD(v76));
      OUTLINED_FUNCTION_10_12();
      if (!v40)
      {
        goto LABEL_46;
      }

      v30 = v32;
    }

    if ((v31 & 1) == 0)
    {
      sub_237CF63F8(&v83);
      OUTLINED_FUNCTION_6_13(&v15[v30 >> 6]);
      *(v15[6] + 4 * v30) = HIDWORD(v76);
      *(v15[7] + 8 * v30) = v83;
      v41 = v15[2];
      v27 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v27)
      {
        goto LABEL_44;
      }

      v15[2] = v42;
    }

    v43 = v15[7];
    v44 = *(v43 + 8 * v30);
    v27 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v27)
    {
      goto LABEL_41;
    }

    *(v43 + 8 * v30) = v45;
    OUTLINED_FUNCTION_22_4(v32, v33, v34, v35, v36, v37, v38, v39, v67, v68, v69, v70, v71, v73);
    swift_isUniquelyReferenced_nonNull_native();
    v83 = v14;
    sub_237D2FE00(v21 | (HIDWORD(v76) << 32));
    OUTLINED_FUNCTION_5_15();
    if (v27)
    {
LABEL_42:
      __break(1u);
      break;
    }

    v48 = v46;
    v49 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECE8, &qword_237F07108);
    v50 = sub_237EF96B0();
    v14 = v83;
    if (v50)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECF0, &unk_237F07110);
      v51 = sub_237D2FE00(v21 | (HIDWORD(v76) << 32));
      if ((v49 & 1) != (v52 & 1))
      {
        goto LABEL_46;
      }

      v48 = v51;
    }

    v8 = v75;
    v12 = v81;
    if ((v49 & 1) == 0)
    {
      sub_237CF63F8(&v83);
      OUTLINED_FUNCTION_6_13(&v14[v48 >> 6]);
      *(v14[6] + 8 * v48) = v76;
      *(v14[7] + 8 * v48) = v83;
      v53 = v14[2];
      v27 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v27)
      {
        goto LABEL_45;
      }

      v14[2] = v54;
    }

    v55 = v14[7];
    v56 = *(v55 + 8 * v48);
    v27 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (!v27)
    {
      *(v55 + 8 * v48) = v57;
      v11 = sub_237CF63F8;
      v10 = sub_237CF63F8;
      v13 = v71 + 1;
      v9 = v69;
      if (!__OFADD__(v71, 1))
      {
        continue;
      }

      __break(1u);
LABEL_37:

      v58 = sub_237C5EE40(v74, 0);
      OUTLINED_FUNCTION_22_4(v58, v59, v60, v61, v62, v63, v64, v65, v67, v68, v69, v70, v71, v73);
      OUTLINED_FUNCTION_15_8(v72);
      *(v66 + 32) = MEMORY[0x277D84F98];
      *(v66 + 40) = v14;
      return;
    }

    break;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  sub_237EFA020();
  __break(1u);
}