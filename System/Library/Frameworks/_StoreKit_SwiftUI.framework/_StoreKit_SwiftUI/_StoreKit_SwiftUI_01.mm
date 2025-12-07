_BYTE *storeEnumTagSinglePayload for RestorePurchasesButton.Context(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23B989AC8);
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

unint64_t sub_23B989B18()
{
  result = qword_27E198358;
  if (!qword_27E198358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198360, &qword_23BBE52A8);
    sub_23B989428();
    sub_23B989BD4(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198358);
  }

  return result;
}

uint64_t sub_23B989BD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B989C20()
{
  result = qword_27E198370;
  if (!qword_27E198370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198350, &qword_23BBE5298);
    sub_23B989CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198370);
  }

  return result;
}

unint64_t sub_23B989CAC()
{
  result = qword_27E198378;
  if (!qword_27E198378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198328, &qword_23BBE5220);
    sub_23B989D64();
    sub_23B97B518(&qword_27E198388, &qword_27E198390, qword_23BBE52B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198378);
  }

  return result;
}

unint64_t sub_23B989D64()
{
  result = qword_27E198380;
  if (!qword_27E198380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198348, &qword_23BBE5260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198330, &qword_23BBE5258);
    sub_23B97B518(&qword_27E198338, &qword_27E198330, &qword_23BBE5258, MEMORY[0x277CE04B0]);
    sub_23B9898BC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198380);
  }

  return result;
}

unint64_t sub_23B989E78()
{
  result = qword_27E198398;
  if (!qword_27E198398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198398);
  }

  return result;
}

uint64_t sub_23B989ECC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_23B989F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  OUTLINED_FUNCTION_3_2();
  v5 = v4;
  v46 = *(v6 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  OUTLINED_FUNCTION_3_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[1] = v16;
  v18 = *(v17 + 40);
  v40 = *(v17 + 24);
  v41 = v18;
  v20 = type metadata accessor for AdaptivePageView(255, v40, v18, v19);
  v44 = v20;
  v39 = *(a1 + 32);
  v21 = v39;
  v43 = OUTLINED_FUNCTION_5_2();
  v49 = v11;
  v50 = v20;
  v51 = v21;
  v52 = v43;
  v42 = sub_23BBDAEC8();
  v22 = sub_23BBDBE28();
  OUTLINED_FUNCTION_3_2();
  v45 = v23;
  MEMORY[0x28223BE20](v24);
  v26 = v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v38 - v29;
  (*(v13 + 16))(v16, v2, v11, v28);
  v31 = v9;
  (*(v5 + 16))(v9, v2, a1);
  v32 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v33 = swift_allocObject();
  *&v34 = v11;
  *(&v34 + 1) = v40;
  *&v35 = v39;
  *(&v35 + 1) = v41;
  *(v33 + 16) = v34;
  *(v33 + 32) = v35;
  (*(v5 + 32))(v33 + v32, v31, a1);
  sub_23BBDBE08();
  OUTLINED_FUNCTION_4_3();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v36 = *(v45 + 8);
  v36(v26, v22);
  sub_23B9D2D88();
  return (v36)(v30, v22);
}

uint64_t sub_23B98A2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a3;
  v33 = a5;
  v30 = a2;
  v31 = a1;
  v34 = a7;
  v9 = sub_23BBDC138();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_23BBDAA98();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a6;
  v17 = type metadata accessor for AdaptivePageView(0, a4, a6, v16);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v29 - v23;
  (*(v13 + 16))(v15, v31, v12, v22);
  v35[0] = v32;
  v35[1] = a4;
  v35[2] = v33;
  v35[3] = a6;
  v25 = type metadata accessor for PageView(0, v35);
  v26 = *(v30 + *(v25 + 52));
  LOBYTE(v13) = *(v30 + *(v25 + 56));

  sub_23B989F4C(v25);
  sub_23B98A578(v15, v26, v13, v11, v29, v20);
  swift_getWitnessTable();
  sub_23B9D2D88();
  v27 = *(v18 + 8);
  v27(v20, v17);
  sub_23B9D2D88();
  return (v27)(v24, v17);
}

uint64_t sub_23B98A578@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *a2;
  v14 = sub_23BBDAA98();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  v16 = type metadata accessor for AdaptivePageView(0, *(v13 + *MEMORY[0x277D84DE8] + 8), a5, v15);
  *(a6 + v16[9]) = a2;
  *(a6 + v16[10]) = a3;
  v17 = v16[11];
  v18 = sub_23BBDC138();
  (*(*(v18 - 8) + 32))(a6 + v17, a4, v18);
  v19 = a6 + v16[12];
  result = sub_23B98E7F0(0, 1);
  *v19 = result;
  *(v19 + 8) = v21 & 1;
  *(v19 + 16) = v22;
  return result;
}

uint64_t sub_23B98A6D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a2;
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v16 = *(v15 + *MEMORY[0x277D84DE8] + 8);
  v21[0] = a5;
  v21[1] = v16;
  v21[2] = a6;
  v21[3] = a7;
  v17 = type metadata accessor for PageView(0, v21);
  *(a8 + v17[13]) = a2;
  *(a8 + v17[14]) = a3;
  v18 = v17[15];
  v19 = sub_23BBDC138();
  return (*(*(v19 - 8) + 32))(a8 + v18, a4, v19);
}

uint64_t sub_23B98A818(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_23BBDA288();
    result = sub_23BBDDC08();
    if (v3 <= 0x3F)
    {
      result = sub_23BBDC138();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23B98A8D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(*(v5 - 8) + 64);
  v11 = *(v7 + 80);
  if (v6 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(*(v5 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v11 | 7;
  v14 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v15 = *(*(v4 - 8) + 64) - ((-17 - v11) | v11) - ((-10 - (((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v13)) | v13) - 2;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_28:
      if (v6 >= v9)
      {
        v8 = *(*(v5 - 8) + 84);
        v4 = v5;
      }

      else
      {
        v23 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) == 0)
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }

        a1 = ((v11 + ((((v23 + v13 + 9) & ~v13) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11);
      }

      return __swift_getEnumTagSinglePayload(a1, v8, v4);
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_28;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (*(*(v4 - 8) + 64) - ((-17 - v11) | v11) - ((-10 - (((v10 + 7) & 0xFFFFFFF8) + v13)) | v13) == 2)
  {
    v22 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v21 = *(*(v4 - 8) + 64) - ((-17 - v11) | v11) - ((-10 - (((v10 + 7) & 0xFFFFFFF8) + v13)) | v13) - 2;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  return v12 + (v22 | v20) + 1;
}

void sub_23B98AB20(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(v6 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v8 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(*(v7 - 8) + 84);
  }

  v13 = *(*(v7 - 8) + 64);
  v14 = *(v9 + 80);
  v15 = -2 - (((-17 - v14) | v14) - *(*(v6 - 8) + 64) + ((-17 - v13 - (v14 | 7)) | v14 | 7));
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

  if (v12 < a2)
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
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v15] = v21;
        return;
      case 2:
        *&a1[v15] = v21;
        return;
      case 3:
        goto LABEL_51;
      case 4:
        *&a1[v15] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 3:
LABEL_51:
      __break(1u);
      JUMPOUT(0x23B98AE14);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (!a2)
      {
        return;
      }

LABEL_30:
      if (v8 >= v11)
      {
        v27 = a1;
        v10 = v8;
        v6 = v7;
      }

      else
      {
        v25 = (&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v26 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v26 = (a2 - 1);
          }

          *v25 = v26;
          return;
        }

        v27 = ((v14 + ((((v25 + (v14 | 7) + 9) & ~(v14 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14);
      }

      __swift_storeEnumTagSinglePayload(v27, a2, v10, v6);
      return;
  }
}

uint64_t sub_23B98AEC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  sub_23BBDC138();
  sub_23BBDC0F8();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_23B98AFC0(uint64_t a1)
{
  v2 = sub_23BBDA188();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_23BBDBF58();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_23B98B0D4()
{
  v3 = *(v0 + 40);
  v11 = *(v0 + 16);
  v2 = v11;
  v12 = *(v0 + 24);
  v10 = v12;
  v13 = v3;
  type metadata accessor for PageView(0, &v11);
  OUTLINED_FUNCTION_20_1();
  v5 = v0 + ((*(v4 + 80) + 48) & ~*(v4 + 80));
  (*(*(v2 - 8) + 8))(v5, v2);

  v6 = v5 + *(v1 + 68);

  OUTLINED_FUNCTION_21_1();
  sub_23BBDC138();
  OUTLINED_FUNCTION_19_1();
  (*(v7 + 8))(v6 + v8, v10);
  OUTLINED_FUNCTION_6_2();
  return swift_deallocObject();
}

uint64_t sub_23B98B21C()
{
  OUTLINED_FUNCTION_15_2();
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v5 = type metadata accessor for PageView(0, &v12);
  OUTLINED_FUNCTION_13_0(v5);
  v6 = OUTLINED_FUNCTION_1_3();

  return sub_23B98A2D4(v6, v7, v8, v9, v3, v4, v10);
}

uint64_t sub_23B98B2B8(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = v16[15];
  }

  if (v9 > 1)
  {
    v14 = 0;
  }

  else
  {
    v11 = v1 + *(a1 + 60);
    v12 = *v11;
    if (*(v11 + 8) != 1)
    {

      sub_23BBDD5A8();
      v13 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v12, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v12) = v16[14];
    }

    v14 = v12 ^ 1;
  }

  return v14 & 1;
}

uint64_t sub_23B98B4D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v32 = v6;
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = sub_23BBDC138();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v27 - v12);
  v14 = sub_23B98B2B8(a1);
  if (v14)
  {
    v31 = a2;
    MEMORY[0x28223BE20](v14);
    v27 = *(a1 + 24);
    v15 = v27;
    v28 = v13;
    *(&v27 - 2) = v9;
    *(&v27 - 1) = v15;
    KeyPath = swift_getKeyPath();
    v29 = v10;
    v30 = v11;
    v17 = KeyPath;
    v18 = *(v5 + 16);
    v18(v7, v2, a1);
    sub_23BAD2624(v17, v7, v13);
    v19 = swift_allocObject();
    v20 = v27;
    *(v19 + 16) = v9;
    *(v19 + 24) = v20;
    v18(v7, v2, a1);
    v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v20;
    (*(v5 + 32))(v22 + v21, v7, a1);
    v23 = sub_23BBDA188();
    v25 = v28;
    v24 = v29;
    sub_23BAD2888(sub_23B994284, v19, sub_23B994414, v22, v29, v23, v31);

    return (*(v30 + 8))(v25, v24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E198610, &qword_23BBE55E8);
    return sub_23BBDBF88();
  }
}

uint64_t sub_23B98B7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v13 - v7;
  (*(v9 + 16))(&v13 - v7, v6);
  v11 = type metadata accessor for PageViewInternal(0, v4, v5, v10);
  return sub_23B98AEC4(v8, v11);
}

uint64_t sub_23B98B8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return sub_23BBDA148();
}

uint64_t sub_23B98B9A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_23BBDD648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  sub_23BBDA168();
  if (__swift_getEnumTagSinglePayload(v9, 1, a1) != 1)
  {
    return (*(*(a1 - 8) + 32))(a3, v9, a1);
  }

  v11 = type metadata accessor for PageViewInternal(0, a1, a2, v10);
  sub_23B98AE80(v11);
  result = __swift_getEnumTagSinglePayload(v9, 1, a1);
  if (result != 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_23B98BB18(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B98AE80(v6);
  v7 = sub_23B98BBF8(v5, a1);
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_23B98BBF8(uint64_t a1, uint64_t a2)
{
  v3[1] = *(a2 + 16);
  v4 = a1;
  return sub_23B98E2E4(sub_23B993F24, v3);
}

void sub_23B98BC4C(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_23BBDD648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v18 - v9);
  v11 = *(v6 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v18 - v16;
  if ((a2 & 1) == 0)
  {
    sub_23B98BE58(a1, a3, v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v6) == 1)
    {
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      (*(v11 + 32))(v17, v10, v6);
      (*(v11 + 16))(v14, v17, v6);
      sub_23B98AEC4(v14, a3);
      (*(v11 + 8))(v17, v6);
    }
  }
}

uint64_t sub_23B98BE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = a3;
  v5 = sub_23BBDA288();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDC208();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_23B98E518() > a1 || v13 <= a1)
  {
    v15 = *(a2 + 16);
    v16 = v20;

    return __swift_storeEnumTagSinglePayload(v16, 1, 1, v15);
  }

  else
  {
    sub_23BBDAAA8();
    sub_23BBDC1D8();
    (*(v10 + 8))(v12, v9);
    v17 = v20;
    swift_getAtKeyPath();
    (*(v6 + 8))(v8, v5);
    return __swift_storeEnumTagSinglePayload(v17, 0, 1, *(a2 + 16));
  }
}

uint64_t sub_23B98C064(uint64_t a1)
{
  v3 = sub_23BBDA188();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = sub_23BBDD648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  if (sub_23B98B2B8(a1))
  {
    return sub_23B98BB18(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E198610, &qword_23BBE55E8);
  sub_23BBDBF68();
  v13 = *(a1 + 24);
  sub_23BBDA168();
  (*(v4 + 8))(v6, v3);
  v15 = sub_23B98C2C8(v1, v7, v13, v14);
  v17 = v16;
  MEMORY[0x28223BE20](v15);
  v19[-4] = v7;
  v19[-3] = v13;
  v19[-2] = v18;
  v19[-1] = v17;
  sub_23BA8D4D0(sub_23B993E70, &v19[-6], v8, MEMORY[0x277D84A98]);
  (*(v9 + 8))(v11, v8);

  return v19[2];
}

uint64_t (*sub_23B98C2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = type metadata accessor for PageViewInternal(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_23B993EB8;
}

uint64_t sub_23B98C444(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v20 = *(v2 + 16);
  v20(&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_23BBDD308();
  v5 = sub_23BBDD2F8();
  v6 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 2) = v5;
  *(v7 + 3) = v8;
  v9 = *(a1 + 16);
  v18 = *(a1 + 24);
  v10 = v18;
  v19 = v9;
  *(v7 + 4) = v9;
  *(v7 + 5) = v10;
  v11 = *(v2 + 32);
  v11(&v7[v6], &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (v20)(&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21, a1);
  v12 = sub_23BBDD2F8();
  v13 = swift_allocObject();
  *(v13 + 2) = v12;
  v14 = v18;
  v15 = v19;
  *(v13 + 3) = MEMORY[0x277D85700];
  *(v13 + 4) = v15;
  *(v13 + 5) = v14;
  v11(&v13[v6], &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_23BBDC128();
  return v22;
}

uint64_t sub_23B98C63C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v4 = type metadata accessor for PageViewInternal(0, a1, a2, a1);
  result = sub_23B98BB18(v4);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = result;
  }

  *a3 = v7;
  return result;
}

void sub_23B98C680(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = type metadata accessor for PageViewInternal(0, a5, a6, a4);
  sub_23B98BC4C(v6, 0, v7);
}

uint64_t sub_23B98C6C4(double a1)
{
  sub_23BBDAA98();
  sub_23B995050(&qword_27E1984F8, MEMORY[0x277CE0150], MEMORY[0x277CE0170]);
  sub_23BBDD438();
  sub_23BBDD4A8();
  return sub_23BBDD498();
}

BOOL sub_23B98C768(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = v12[15];
  }

  return v9 < 2;
}

double sub_23B98C8C8(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return dbl_23BBE5900[v8];
}

uint64_t sub_23B98CA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v97 = *(a1 - 8);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](a1);
  v96 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 16);
  v101 = v5;
  v99 = *(v5 - 8);
  MEMORY[0x28223BE20](v4);
  v95 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_23BBDAD18();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1985A0, &qword_23BBE55B8);
  MEMORY[0x28223BE20](v8 - 8);
  v90 = (v64 - v9);
  v85 = sub_23BBDAA98();
  v80 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v78 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);
  v13 = type metadata accessor for PageViewScrollView(0, v5, v11, v12);
  v89 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v77 = v64 - v14;
  WitnessTable = swift_getWitnessTable();
  v105 = v13;
  v106 = WitnessTable;
  v16 = WitnessTable;
  v66 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v88 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v71 = v64 - v17;
  sub_23BBDB038();
  v18 = sub_23BBDA358();
  v87 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v75 = v64 - v19;
  v105 = v13;
  v106 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = OpaqueTypeConformance2;
  v21 = sub_23B995050(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v111 = OpaqueTypeConformance2;
  v112 = v21;
  v22 = swift_getWitnessTable();
  v105 = v18;
  v106 = v22;
  v23 = v22;
  v64[1] = v22;
  v67 = swift_getOpaqueTypeMetadata2();
  v81 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = v64 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1985B0, &qword_23BBE55C0);
  v25 = sub_23BBDA358();
  v74 = v25;
  v91 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v70 = v64 - v26;
  v105 = v18;
  v106 = v23;
  v27 = swift_getOpaqueTypeConformance2();
  v64[2] = v27;
  v28 = sub_23B97B518(&qword_27E1985B8, &qword_27E1985B0, &qword_23BBE55C0, MEMORY[0x277CE01C8]);
  v109 = v27;
  v110 = v28;
  v73 = swift_getWitnessTable();
  v72 = *(v11 + 8);
  v105 = v25;
  v106 = v101;
  v107 = v73;
  v108 = v72;
  v82 = MEMORY[0x277CE0E40];
  v83 = swift_getOpaqueTypeMetadata2();
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v69 = v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v76 = v64 - v32;
  v33 = v78;
  v34 = v86;
  (*(v80 + 16))(v78, v86, v85, v31);
  v35 = a1;
  v36 = *(v34 + *(a1 + 36));

  v37 = sub_23B98C8C8(a1);
  v38 = v77;
  sub_23B98D664(v33, v36, *(v34 + *(a1 + 44)), v11, v77, v37);
  v39 = v90;
  sub_23B98B4D4(a1, v90);
  sub_23BBDC448();
  v40 = v71;
  sub_23BBDB868();
  sub_23B9846E8(v39, &qword_27E1985A0, &qword_23BBE55B8);
  (*(v89 + 8))(v38, v13);
  v41 = sub_23BBDB388();
  v42 = sub_23B98C8C8(a1);
  v43 = v75;
  v44 = OpaqueTypeMetadata2;
  sub_23BB2FA54(v41, *&v42, 0, OpaqueTypeMetadata2, v68, v42);
  (*(v88 + 8))(v40, v44);
  sub_23B993AF0();
  v45 = v92;
  sub_23BBDAFA8();
  v46 = v65;
  sub_23BBDB878();
  (*(v93 + 8))(v45, v94);
  (*(v87 + 8))(v43, v18);
  v47 = v101;
  v102 = v101;
  v103 = v11;
  v48 = v11;
  v104 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1985C8, &qword_23BBE55C8);
  sub_23B993B50();
  v49 = v67;
  sub_23B9BE15C(v67);
  v50 = v70;
  sub_23BBDB808();
  (*(v81 + 8))(v46, v49);
  v51 = v95;
  sub_23B98AE80(v35);
  v53 = v96;
  v52 = v97;
  (*(v97 + 16))(v96, v34, v35);
  v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v47;
  *(v55 + 24) = v48;
  (*(v52 + 32))(v55 + v54, v53, v35);
  v56 = v74;
  v57 = v73;
  v58 = v72;
  OUTLINED_FUNCTION_0_2();
  v59 = v69;
  sub_23BBDBC18();

  (*(v99 + 8))(v51, v47);
  (*(v91 + 8))(v50, v56);
  v105 = v56;
  v106 = v47;
  v107 = v57;
  v108 = v58;
  swift_getOpaqueTypeConformance2();
  v60 = v76;
  v61 = v83;
  sub_23B9D2D88();
  v62 = *(v84 + 8);
  v62(v59, v61);
  sub_23B9D2D88();
  return (v62)(v60, v61);
}

uint64_t sub_23B98D664@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = *a2;
  v13 = sub_23BBDAA98();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v15 = type metadata accessor for PageViewScrollView(0, *(v12 + *MEMORY[0x277D84DE8] + 8), a4, v14);
  *(a5 + v15[9]) = a2;
  *(a5 + v15[10]) = a6;
  *(a5 + v15[11]) = a3;
  v16 = a5 + v15[12];
  result = swift_getKeyPath();
  *v16 = result;
  *(v16 + 8) = 0;
  return result;
}

uint64_t sub_23B98D768@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1985E0, &qword_23BBE55D0);
  MEMORY[0x28223BE20](v6);
  v8 = v33 - v7;
  v10 = type metadata accessor for PageViewInternal(0, a1, a2, v9);
  if (sub_23B98C768(v10))
  {
    v11 = sub_23B98C444(v10);
    v13 = v12;
    v15 = v14;
    v17 = sub_23B98C6C4(v16);
    v18 = sub_23BBDB3A8();
    sub_23BBD9B18();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v35[0] = 0;
    v27 = sub_23BBDB3B8();
    sub_23BBD9B18();
    v34 = 0;
    v33[0] = v11;
    v33[1] = v13;
    v33[2] = v15;
    v33[3] = v17;
    LOBYTE(v33[4]) = v18;
    v33[5] = v20;
    v33[6] = v22;
    v33[7] = v24;
    v33[8] = v26;
    LOBYTE(v33[9]) = 0;
    LOBYTE(v33[10]) = v27;
    v33[11] = v28;
    v33[12] = v29;
    v33[13] = v30;
    v33[14] = v31;
    LOBYTE(v33[15]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1985F0, &qword_23BBE55D8);
    sub_23B993CBC(&qword_27E1985E8, &qword_27E1985F0, &qword_23BBE55D8, sub_23B993D2C);
    sub_23BBDB958();
    memcpy(v35, v33, 0x79uLL);
    sub_23B9846E8(v35, &qword_27E1985F0, &qword_23BBE55D8);
    sub_23B993F48(v8, a3);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }
}

uint64_t sub_23B98D9D4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_23BBDD648();
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (v32 - v8);
  v10 = *(v3 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v32 - v15;
  result = sub_23B98B2B8(a1);
  if (result)
  {
    return result;
  }

  result = sub_23B98BB18(a1);
  if (v18)
  {
    return result;
  }

  v19 = floor(*(v1 + *(a1 + 40)));
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = result;
  v34 = v10;
  v21 = v19;
  result = sub_23B98C064(a1);
  if (v22)
  {
    if (v20 >= v21)
    {
      v23 = sub_23BBDC358();
      MEMORY[0x28223BE20](v23);
      v24 = *(a1 + 24);
      v32[-4] = v3;
      v32[-3] = v24;
      v32[-2] = v1;
      sub_23BBDA038();
    }

    return result;
  }

  v25 = result + v21;
  if (__OFADD__(result, v21))
  {
    goto LABEL_25;
  }

  v26 = v34;
  if (v20 >= v25)
  {
    v33 = result;
    v27 = __OFADD__(result++, 1);
    if (v27)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    sub_23B98BE58(result, a1, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
    {
      (*(v35 + 8))(v9, v4);
    }

    else
    {
      (*(v26 + 32))(v16, v9, v3);
      v28 = sub_23BBDC358();
      v32[1] = v32;
      MEMORY[0x28223BE20](v28);
      v29 = *(a1 + 24);
      v32[-4] = v3;
      v32[-3] = v29;
      v32[-2] = v1;
      v32[-1] = v16;
      sub_23BBDA038();

      v26 = v34;
      (*(v34 + 8))(v16, v3);
    }

    result = v33;
  }

  v27 = __OFSUB__(result--, 1);
  if (v27)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (result >= v20)
  {
    sub_23B98BE58(result, a1, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v3) == 1)
    {
      return (*(v35 + 8))(v6, v4);
    }

    else
    {
      (*(v26 + 32))(v13, v6, v3);
      v30 = sub_23BBDC358();
      MEMORY[0x28223BE20](v30);
      v31 = *(a1 + 24);
      v32[-4] = v3;
      v32[-3] = v31;
      v32[-2] = v1;
      v32[-1] = v13;
      sub_23BBDA038();

      return (*(v26 + 8))(v13, v3);
    }
  }

  return result;
}

uint64_t sub_23B98DE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a3;
  v5 = sub_23BBDA188();
  MEMORY[0x28223BE20](v5 - 8);
  v14[0] = a2;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PageViewInternal(0, a2, a3, v10);
  sub_23B98AE80(v11);
  sub_23BBDC458();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E198610, &qword_23BBE55E8);
  sub_23BBDBF68();
  v12 = v14[0];
  sub_23BBDA178();
  (*(v6 + 8))(v9, v12);
  return sub_23BBDBF78();
}

uint64_t sub_23B98E014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23BBDA188();
  v7 = OUTLINED_FUNCTION_13_0(v6);
  MEMORY[0x28223BE20](v7);
  sub_23BBDC448();
  type metadata accessor for PageViewInternal(0, a3, a4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E198610, &qword_23BBE55E8);
  sub_23BBDBF68();
  sub_23BBDA178();
  return sub_23BBDBF78();
}

uint64_t sub_23B98E124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = a3;
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BBDA288();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDC1D8();
  type metadata accessor for PageViewInternal(0, a4, a5, v14);
  swift_getAtKeyPath();
  (*(v11 + 8))(v13, v10);
  v15 = sub_23BBDCF38();
  (*(v7 + 8))(v9, a4);
  return v15 & 1;
}

uint64_t sub_23B98E2E4(uint64_t (*a1)(char *), uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v4 = sub_23BBDC208();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDAA98();
  sub_23B995050(&qword_27E1984F8, MEMORY[0x277CE0150], MEMORY[0x277CE0170]);
  sub_23BBDD438();
  v15 = (v5 + 16);
  v16 = (v5 + 8);
  while (1)
  {
    sub_23BBDD4A8();
    v7 = v21;
    if (v21 == v20[0])
    {
      return 0;
    }

    v8 = v2;
    v9 = sub_23BBDD558();
    v10 = v17;
    (*v15)(v17);
    v9(v20, 0);
    v11 = v18(v10);
    if (v3)
    {
      return (*v16)(v10, v4);
    }

    v12 = v11;
    (*v16)(v10, v4);
    if (v12)
    {
      break;
    }

    v2 = v8;
    sub_23BBDD4B8();
  }

  return v7;
}

uint64_t sub_23B98E518()
{
  sub_23BBDAA98();
  sub_23B995050(&qword_27E1984F8, MEMORY[0x277CE0150], MEMORY[0x277CE0170]);
  sub_23BBDD438();
  sub_23BBDD4A8();
  result = v2;
  if (v1 < v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23B98E5B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14 = *a2;
  v15 = sub_23BBDA188();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23BBDAA98();
  (*(*(v18 - 8) + 32))(a6, a1, v18);
  v20 = type metadata accessor for PageViewInternal(0, *(v14 + *MEMORY[0x277D84DE8] + 8), a5, v19);
  *(a6 + v20[9]) = a2;
  *(a6 + v20[10]) = a7;
  *(a6 + v20[11]) = a3;
  v21 = v20[12];
  v22 = sub_23BBDC138();
  (*(*(v22 - 8) + 32))(a6 + v21, a4, v22);
  sub_23BBDA158();
  sub_23B98AFC0(v17);
  v23 = a6 + v20[14];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = a6 + v20[15];
  result = swift_getKeyPath();
  *v24 = result;
  *(v24 + 8) = 0;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PageViewGeometry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PageViewGeometry(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

uint64_t sub_23B98E89C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B98E8B8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

void sub_23B98E8E8(uint64_t a1, double a2)
{
  sub_23BBDAA98();
  if (v2 <= 0x3F)
  {
    sub_23BBDA288();
    sub_23BBDDC08();
    if (v3 <= 0x3F)
    {
      sub_23BBDC138();
      if (v4 <= 0x3F)
      {
        sub_23B993908(319, &qword_27E1984B0, &type metadata for PageViewGeometry, MEMORY[0x277CE10B8]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23B98E9E0(_DWORD *a1, unsigned int a2, uint64_t a3, double a4)
{
  v7 = sub_23BBDAA98();
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(*(v7 - 8) + 84);
  }

  v14 = *(*(v7 - 8) + 64);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (!a2)
  {
    return 0;
  }

  v17 = v15 | 7;
  if (v13 < a2)
  {
    v18 = ((v16 - ((-17 - v15) | v15) - ((-10 - ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) - v17) | v17) + 5) & 0xFFFFFFFFFFFFFFF8) + 24;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v13 + 1;
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

    switch(v21)
    {
      case 1:
        v22 = *(a1 + v18);
        if (!*(a1 + v18))
        {
          break;
        }

        goto LABEL_25;
      case 2:
        v22 = *(a1 + v18);
        if (*(a1 + v18))
        {
          goto LABEL_25;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B98EC30);
      case 4:
        v22 = *(a1 + v18);
        if (!v22)
        {
          break;
        }

LABEL_25:
        v24 = v22 - 1;
        if ((v18 & 0xFFFFFFF8) != 0)
        {
          v24 = 0;
          v25 = *a1;
        }

        else
        {
          v25 = 0;
        }

        return v13 + (v25 | v24) + 1;
      default:
        break;
    }
  }

  if (v8 >= v12)
  {
    v28 = a1;
    v11 = *(*(v7 - 8) + 84);
    v9 = v7;
  }

  else
  {
    v26 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) == 0)
    {
      v27 = *v26;
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }

    v28 = ((v15 + ((((v26 + v17 + 9) & ~v17) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15);
  }

  return __swift_getEnumTagSinglePayload(v28, v11, v9);
}

void sub_23B98EC44(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4, double a5)
{
  v9 = sub_23BBDAA98();
  v10 = *(*(v9 - 8) + 84);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  if (v10 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(*(v9 - 8) + 84);
  }

  v16 = *(*(v9 - 8) + 64);
  v17 = *(v12 + 80);
  v18 = ((-2 - (((-17 - v17) | v17) - *(v12 + 64)) - (((-17 - v16 - (v17 | 7)) | v17) & 0xFFFFFFFFFFFFFFF8)) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v15 >= a3)
  {
    v21 = 0;
  }

  else
  {
    if (((-2 - (((-17 - v17) | v17) - *(v12 + 64)) - (((-17 - v16 - (v17 | 7)) | v17) & 0xFFFFFFF8)) & 0xFFFFFFF8) == 0xFFFFFFE8)
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
  }

  if (a2 > v15)
  {
    if (v18)
    {
      v22 = 1;
    }

    else
    {
      v22 = a2 - v15;
    }

    if (v18)
    {
      v23 = ~v15 + a2;
      bzero(a1, v18);
      *a1 = v23;
    }

    switch(v21)
    {
      case 1:
        *(a1 + v18) = v22;
        return;
      case 2:
        *(a1 + v18) = v22;
        return;
      case 3:
        goto LABEL_49;
      case 4:
        *(a1 + v18) = v22;
        return;
      default:
        return;
    }
  }

  switch(v21)
  {
    case 1:
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    case 2:
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    case 3:
LABEL_49:
      __break(1u);
      JUMPOUT(0x23B98EEE8);
    case 4:
      *(a1 + v18) = 0;
      goto LABEL_34;
    default:
LABEL_34:
      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v10 >= v14)
      {
        v26 = a1;
        v27 = a2;
        v13 = v10;
        v11 = v9;
      }

      else
      {
        v24 = ((a1 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v15 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v25 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v25 = (a2 - 1);
          }

          *v24 = v25;
          return;
        }

        v26 = ((v17 + ((((v24 + (v17 | 7) + 9) & ~(v17 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v17);
        v27 = a2;
      }

      __swift_storeEnumTagSinglePayload(v26, v27, v13, v11);
      return;
  }
}

uint64_t sub_23B98EF10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AdaptivePageView(255, a1[1], a1[3], a4);
  OUTLINED_FUNCTION_5_2();
  sub_23BBDAEC8();
  sub_23BBDBE28();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  return swift_getWitnessTable();
}

uint64_t sub_23B98EF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = *(a1 - 8);
  v39 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1984C0, &qword_23BBE54C0);
  v7 = *(a1 + 24);
  v8 = *(a1 + 16);
  type metadata accessor for PageViewInternal(255, v8, v7, v9);
  sub_23BBDACE8();
  v10 = sub_23B98FE9C();
  WitnessTable = swift_getWitnessTable();
  v49 = v10;
  v50 = WitnessTable;
  swift_getWitnessTable();
  v37 = sub_23BBDC098();
  v40 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v35 = &v32 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1984E0, &qword_23BBE54D0);
  v13 = sub_23BBDA358();
  v14 = *(v13 - 8);
  v41 = v13;
  v42 = v14;
  MEMORY[0x28223BE20](v13);
  v36 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v38 = &v32 - v18;
  v32 = v8;
  v44 = v8;
  v45 = v7;
  v34 = v2;
  v46 = v2;
  sub_23B9C2924(v17);
  sub_23BBDC088();
  v33 = *(v4 + 16);
  v33(v6, v2, a1);
  v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v7;
  v21 = *(v4 + 32);
  v21(v20 + v19, v6, a1);
  v33(v6, v34, a1);
  v22 = swift_allocObject();
  *(v22 + 16) = v32;
  *(v22 + 24) = v7;
  v21(v22 + v19, v6, a1);
  v23 = v37;
  v24 = swift_getWitnessTable();
  sub_23B98FDEC();
  v25 = v35;
  v26 = v36;
  sub_23BBDB8D8();

  (*(v40 + 8))(v25, v23);
  v27 = sub_23B97B518(&qword_27E1984E8, &qword_27E1984E0, &qword_23BBE54D0, MEMORY[0x277CE06A8]);
  v47 = v24;
  v48 = v27;
  v28 = v41;
  swift_getWitnessTable();
  v29 = v38;
  sub_23B9D2D88();
  v30 = *(v42 + 8);
  v30(v26, v28);
  sub_23B9D2D88();
  return (v30)(v29, v28);
}

uint64_t sub_23B98F488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v7 = sub_23BBDC138();
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v47 - v8;
  v47 = sub_23BBDAA98();
  v9 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PageViewInternal(0, a2, a3, v12);
  v50 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v47 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1984C0, &qword_23BBE54C0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = sub_23BBDACE8();
  v53 = *(v21 - 8);
  v54 = v21;
  MEMORY[0x28223BE20](v21);
  v51 = &v47 - v22;
  v52 = a3;
  v24 = type metadata accessor for AdaptivePageView(0, a2, a3, v23);
  v25 = (a1 + v24[12]);
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = v25[2];
  v60 = v26;
  v61 = v27;
  v62 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1984F0, &qword_23BBE54D8);
  sub_23BBDBF68();
  if (v59)
  {
    *v20 = sub_23BBDA9D8();
    *(v20 + 1) = 0x4030000000000000;
    v20[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198500, &qword_23BBE54E0);
    sub_23B98F9D4(a1, &v20[*(v29 + 44)]);
    v30 = sub_23BBDB388();
    sub_23BBD9B18();
    v31 = &v20[*(v18 + 36)];
    *v31 = v30;
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *(v31 + 3) = v34;
    *(v31 + 4) = v35;
    v31[40] = 0;
    sub_23B98FE9C();
    swift_getWitnessTable();
    v36 = v51;
    sub_23BA82D64();
    sub_23B9846E8(v20, &qword_27E1984C0, &qword_23BBE54C0);
  }

  else
  {
    v37 = v58;
    (*(v9 + 16))(v11, a1, v47);
    v38 = *(a1 + v24[9]);
    v39 = *(a1 + v24[10]);

    v40 = v48;
    sub_23B98E7AC(v24);
    sub_23B98E5B8(v11, v38, v39, v40, v52, v15, v37);
    swift_getWitnessTable();
    v41 = v49;
    sub_23B9D2D88();
    v42 = *(v50 + 8);
    v42(v15, v13);
    sub_23B9D2D88();
    sub_23B98FE9C();
    v36 = v51;
    sub_23BA82E14();
    v42(v15, v13);
    v42(v41, v13);
  }

  v43 = sub_23B98FE9C();
  WitnessTable = swift_getWitnessTable();
  v56 = v43;
  v57 = WitnessTable;
  v45 = v54;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v53 + 8))(v36, v45);
}

void *sub_23B98F9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BBDC318();
  sub_23BBDA488();
  v5 = sub_23BBDAA98();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E198508, &qword_23BBE54E8);
  return memcpy((a2 + *(v6 + 36)), __src, 0x70uLL);
}

void sub_23B98FAAC(uint64_t a1@<X8>)
{
  sub_23BBDAA98();
  sub_23B995050(&qword_27E1984F8, MEMORY[0x277CE0150], MEMORY[0x277CE0170]);
  sub_23BBDD438();
  sub_23BBDD4A8();
  v3 = sub_23BBDD498();
  sub_23BBD9E68();
  sub_23B98FB88(v3, 0, v4);
  *a1 = v5;
  *(a1 + 8) = v6 & 1;
}

double sub_23B98FB88(uint64_t a1, uint64_t a2, double a3)
{
  v3 = sub_23BB5150C(a2, a3);
  if (v3 - 1) <= 6u && ((0x71u >> (v3 - 1)))
  {
    return dbl_23BBE5888[(v3 - 1)];
  }

  v5 = v3;
  if ((v3 & 0xFE) == 0)
  {
    return 1;
  }

  return v5;
}

uint64_t sub_23B98FC04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AdaptivePageView(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1984F0, &qword_23BBE54D8);
  return sub_23BBDBF78();
}

BOOL sub_23B98FC9C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return *&a1 == *&a3;
}

uint64_t sub_23B98FCD0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x23EEB63A0](0, a2);
  }

  MEMORY[0x23EEB63A0](1);
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x23EEB63C0](v5);
}

uint64_t sub_23B98FD18(uint64_t a1, char a2)
{
  sub_23BBDDBB8();
  sub_23B98FCD0(v5, a1, a2 & 1);
  return sub_23BBDDBF8();
}

uint64_t sub_23B98FD80(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_23BBDDBB8();
  sub_23B98FCD0(v5, v2, v3);
  return sub_23BBDDBF8();
}

unint64_t sub_23B98FDEC()
{
  result = qword_27E1984B8;
  if (!qword_27E1984B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1984B8);
  }

  return result;
}

unint64_t sub_23B98FE9C()
{
  result = qword_27E1984C8;
  if (!qword_27E1984C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1984C0, &qword_23BBE54C0);
    sub_23B97B518(&qword_27E1984D0, &qword_27E1984D8, &qword_23BBE54C8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1984C8);
  }

  return result;
}

void sub_23B98FF64()
{
  OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_12_2();
  v4 = type metadata accessor for AdaptivePageView(v1, v2, v0, v3);
  OUTLINED_FUNCTION_13_0(v4);
  OUTLINED_FUNCTION_1_3();

  sub_23B98FAAC(v5);
}

uint64_t objectdestroy_13Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = OUTLINED_FUNCTION_21_1();
  type metadata accessor for AdaptivePageView(v4, v5, v6, v7);
  OUTLINED_FUNCTION_20_1();
  v9 = v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  sub_23BBDAA98();
  OUTLINED_FUNCTION_12_1();
  (*(v10 + 8))(v9);

  v11 = v9 + *(v2 + 52);

  OUTLINED_FUNCTION_21_1();
  sub_23BBDC138();
  OUTLINED_FUNCTION_19_1();
  (*(v12 + 8))(v11 + v13, v3);

  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

uint64_t sub_23B990110()
{
  v0 = OUTLINED_FUNCTION_7_2();
  v4 = type metadata accessor for AdaptivePageView(v0, v1, v2, v3);
  OUTLINED_FUNCTION_13_0(v4);
  v5 = OUTLINED_FUNCTION_13_2();

  return sub_23B98FC04(v5, v6, v7, v8);
}

double sub_23B99017C(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return dbl_23BBE58C0[v8];
}

uint64_t sub_23B9902DC(uint64_t a1)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986E0, &qword_23BBE5788);
  v1 = sub_23BBDD7D8();

  return v1;
}

uint64_t sub_23B990350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_23BBDB2D8();
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDB2F8();
  v52 = v5;
  v68 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v66 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBDB0F8();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDB048();
  v10 = *(a1 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986A0, &unk_23BBE5740);
  v12 = sub_23B995050(&qword_27E1986A8, MEMORY[0x277CE0668], MEMORY[0x277CE0678]);
  v13 = *(a1 + 24);
  v74 = v9;
  v75 = v10;
  v60 = v13;
  v61 = v10;
  v76 = v11;
  v77 = v12;
  v78 = v13;
  v14 = v13;
  sub_23BBDC1A8();
  sub_23BBDA358();
  v15 = sub_23B99495C();
  v74 = v11;
  v75 = v10;
  v76 = v15;
  v77 = v14;
  sub_23BBDBFF8();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986C0, &unk_23BBF2AA0);
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v16 = sub_23BBDBFE8();
  WitnessTable = swift_getWitnessTable();
  v74 = v16;
  v75 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = v16;
  v75 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = OpaqueTypeMetadata2;
  v75 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeMetadata2();
  v74 = OpaqueTypeMetadata2;
  v75 = OpaqueTypeConformance2;
  v58 = swift_getOpaqueTypeConformance2();
  v21 = sub_23BBD9B38();
  v59 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v24 = swift_getWitnessTable();
  v74 = v21;
  v75 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v57 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v51 = &v48 - v26;
  v74 = v21;
  v75 = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v74 = v25;
  v75 = v27;
  v28 = v27;
  v48 = v27;
  v29 = swift_getOpaqueTypeMetadata2();
  v53 = v29;
  v56 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v49 = &v48 - v30;
  v74 = v25;
  v75 = v28;
  v50 = swift_getOpaqueTypeConformance2();
  v74 = v29;
  v75 = v5;
  v76 = v50;
  v77 = MEMORY[0x277CDE478];
  v54 = MEMORY[0x277CDEB68];
  v31 = swift_getOpaqueTypeMetadata2();
  v55 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v48 - v35;
  v37 = sub_23BBDB348();
  v71 = v61;
  v72 = v60;
  v73 = v65;
  sub_23BA6AFDC(v37, sub_23B994A3C, v70, v20, v58);
  v38 = v62;
  sub_23BBDAD38();
  sub_23BA6AFF4();
  v39 = v51;
  sub_23BBDB8E8();
  (*(v63 + 8))(v38, v64);
  (*(v59 + 8))(v23, v21);
  j__OUTLINED_FUNCTION_13();
  v40 = v49;
  sub_23BBDB928();
  (*(v57 + 8))(v39, v25);
  sub_23BBDB2C8();
  v41 = v66;
  sub_23BBDB2E8();
  v42 = v53;
  v43 = v52;
  v44 = v50;
  v45 = MEMORY[0x277CDE478];
  sub_23BBDB9A8();
  (*(v68 + 8))(v41, v43);
  (*(v56 + 8))(v40, v42);
  v74 = v42;
  v75 = v43;
  v76 = v44;
  v77 = v45;
  swift_getOpaqueTypeConformance2();
  sub_23B9D2D88();
  v46 = *(v55 + 8);
  v46(v33, v31);
  sub_23B9D2D88();
  return (v46)(v36, v31);
}

uint64_t sub_23B990C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v47 = a4;
  v6 = sub_23BBDB148();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BBDB048();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986A0, &unk_23BBE5740);
  v10 = sub_23B995050(&qword_27E1986A8, MEMORY[0x277CE0668], MEMORY[0x277CE0678]);
  v51 = v8;
  v52 = a2;
  v53 = v9;
  v54 = v10;
  v55 = a3;
  sub_23BBDC1A8();
  sub_23BBDA358();
  v11 = sub_23B99495C();
  v51 = v9;
  v52 = a2;
  v53 = v11;
  v54 = a3;
  sub_23BBDBFF8();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986C0, &unk_23BBF2AA0);
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v40 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_23BBDBFE8();
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v38 = &v34 - v13;
  v14 = swift_getWitnessTable();
  v51 = v12;
  v52 = v14;
  v15 = v14;
  v34 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = &v34 - v17;
  v51 = v12;
  v52 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = OpaqueTypeMetadata2;
  v52 = OpaqueTypeConformance2;
  v36 = MEMORY[0x277CDEAE8];
  v19 = swift_getOpaqueTypeMetadata2();
  v37 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - v23;
  v25 = a3;
  v27 = type metadata accessor for PageViewScrollView(0, a2, a3, v26);
  v28 = v43;
  sub_23B99017C(v27);
  v48 = a2;
  v49 = v25;
  v50 = v28;
  sub_23BA6AFD0(v40);
  v29 = v38;
  sub_23BBDBFD8();
  sub_23BBDB948();
  (*(v42 + 8))(v29, v12);
  v30 = v44;
  sub_23BBDB138();
  v31 = OpaqueTypeConformance2;
  sub_23BBDB968();
  (*(v45 + 8))(v30, v46);
  (*(v41 + 8))(v18, OpaqueTypeMetadata2);
  v51 = OpaqueTypeMetadata2;
  v52 = v31;
  swift_getOpaqueTypeConformance2();
  sub_23B9D2D88();
  v32 = *(v37 + 8);
  v32(v21, v19);
  sub_23B9D2D88();
  return (v32)(v24, v19);
}

uint64_t sub_23B99119C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v126 = a4;
  v106 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v105 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986A0, &unk_23BBE5740);
  MEMORY[0x28223BE20](v8);
  v101 = &v97 - v9;
  v129 = sub_23B99495C();
  v147 = v8;
  v148 = a2;
  v10 = v8;
  v113 = v8;
  v149 = v129;
  v150 = a3;
  v11 = sub_23BBDBFF8();
  v102 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v99 = &v97 - v12;
  v133 = v13;
  v14 = sub_23BBDA358();
  v103 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v100 = &v97 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986C0, &unk_23BBF2AA0);
  v132 = v14;
  v16 = sub_23BBDA358();
  v109 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v107 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v104 = &v97 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986C8, &qword_23BBE5750);
  MEMORY[0x28223BE20](v20 - 8);
  v114 = &v97 - v21;
  v115 = sub_23BBDC208();
  v98 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v97 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v16;
  v124 = sub_23BBDD648();
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v131 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v123 = &v97 - v25;
  v128 = a3;
  v127 = type metadata accessor for PageViewScrollView(0, a2, a3, v26);
  v121 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v120 = &v97 - v27;
  v116 = sub_23BBDAA98();
  v28 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23BBDB048();
  v118 = v31;
  MEMORY[0x28223BE20](v31);
  v111 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_23B995050(&qword_27E1986A8, MEMORY[0x277CE0668], MEMORY[0x277CE0678]);
  v147 = v31;
  v148 = a2;
  v149 = v10;
  v150 = v117;
  v151 = a3;
  v33 = sub_23BBDC1A8();
  v119 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v112 = &v97 - v34;
  v35 = sub_23BBDA358();
  v130 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v38);
  v134 = &v97 - v40;
  v41 = *(v28 + 16);
  v110 = a1;
  v42 = v41(v30, a1, v116, v39);
  sub_23B9921FC(1, v42);
  v43 = v127;
  sub_23B9902DC(v127);
  v44 = v121;
  v45 = v120;
  (*(v121 + 16))(v120, a1, v43);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  v108 = a2;
  *(v47 + 16) = a2;
  *(v47 + 24) = v128;
  (*(v44 + 32))(v47 + v46, v45, v43);
  v48 = v129;
  v49 = v112;
  v50 = v113;
  sub_23BBDC188();
  v51 = v110;
  v52 = *(v110 + *(v43 + 44));
  v146[8] = v48;
  WitnessTable = swift_getWitnessTable();
  sub_23B992444(0, v52, v33, WitnessTable, 0.92);
  v54 = v51;
  (*(v119 + 8))(v49, v33);
  v55 = sub_23B994BF0();
  v146[6] = WitnessTable;
  v146[7] = v55;
  v56 = v114;
  v116 = swift_getWitnessTable();
  sub_23B9D2D88();
  v57 = *(v130 + 8);
  v120 = v37;
  v121 = v35;
  v119 = v130 + 8;
  v118 = v57;
  v57(v37, v35);
  sub_23BBAF4F8(v56);
  v58 = v115;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v115);
  v117 = v55;
  if (EnumTagSinglePayload == 1)
  {
    sub_23B9846E8(v56, &qword_27E1986C8, &qword_23BBE5750);
    v60 = v125;
    __swift_storeEnumTagSinglePayload(v131, 1, 1, v125);
    v146[4] = swift_getWitnessTable();
    v146[5] = v55;
    v61 = swift_getWitnessTable();
    v62 = sub_23B97B518(&qword_27E1986D8, &qword_27E1986C0, &unk_23BBF2AA0, MEMORY[0x277CE08A0]);
    v146[2] = v61;
    v146[3] = v62;
    swift_getWitnessTable();
  }

  else
  {
    v63 = v98;
    v64 = *(v98 + 32);
    LODWORD(v112) = v52;
    v65 = v97;
    v64(v97, v56, v58);
    v66 = v127;
    v67 = *(v54 + *(v127 + 40));
    v68 = v67 + v67;
    v69 = sub_23BBDAB48();
    v70 = v101;
    (*(v63 + 16))(v101, v65, v58);
    v71 = v70 + *(v50 + 36);
    *v71 = 259;
    *(v71 + 8) = v68;
    *(v71 + 16) = 0x3FF0000000000000;
    *(v71 + 24) = v69;
    *(v71 + 32) = 1;
    sub_23B9902DC(v66);
    v72 = v105;
    swift_getAtKeyPath();

    v73 = v99;
    v74 = v108;
    sub_23BBDBA98();
    (*(v106 + 8))(v72, v74);
    sub_23B9846E8(v70, &qword_27E1986A0, &unk_23BBE5740);
    v75 = v133;
    v76 = swift_getWitnessTable();
    v77 = v100;
    sub_23B992444(1, v112, v75, v76, 0.92);
    (*(v102 + 8))(v73, v75);
    v137 = v76;
    v138 = v55;
    v78 = v132;
    v79 = swift_getWitnessTable();
    v80 = v107;
    sub_23B995424(1, v78, v79);
    (*(v103 + 8))(v77, v78);
    (*(v63 + 8))(v65, v58);
    v81 = sub_23B97B518(&qword_27E1986D8, &qword_27E1986C0, &unk_23BBF2AA0, MEMORY[0x277CE08A0]);
    v135 = v79;
    v136 = v81;
    v60 = v125;
    swift_getWitnessTable();
    v82 = v104;
    sub_23B9D2D88();
    v83 = v109;
    v84 = *(v109 + 8);
    v84(v80, v60);
    sub_23B9D2D88();
    v84(v82, v60);
    v85 = v131;
    (*(v83 + 32))(v131, v80, v60);
    __swift_storeEnumTagSinglePayload(v85, 0, 1, v60);
  }

  v86 = v123;
  v87 = v131;
  sub_23BB2F9F4(v131, v60);
  v88 = v122;
  v89 = *(v122 + 8);
  v90 = v124;
  v89(v87, v124);
  v91 = v120;
  v92 = v121;
  (*(v130 + 16))(v120, v134, v121);
  v147 = v91;
  (*(v88 + 16))(v87, v86, v90);
  v148 = v87;
  v146[0] = v92;
  v146[1] = v90;
  v144 = v116;
  v142 = swift_getWitnessTable();
  v143 = v117;
  v93 = swift_getWitnessTable();
  v94 = sub_23B97B518(&qword_27E1986D8, &qword_27E1986C0, &unk_23BBF2AA0, MEMORY[0x277CE08A0]);
  v140 = v93;
  v141 = v94;
  v139 = swift_getWitnessTable();
  v145 = swift_getWitnessTable();
  sub_23BB6739C(&v147, 2, v146);
  v89(v86, v90);
  v95 = v118;
  v118(v134, v92);
  v89(v87, v90);
  return v95(v91, v92);
}

uint64_t sub_23B9921FC(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = sub_23BBDAA98();
  sub_23B995050(&qword_27E1984F8, MEMORY[0x277CE0150], MEMORY[0x277CE0170]);
  result = sub_23BBDD458();
  if (__OFSUB__(result, v3))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_23BBDD438();
  sub_23BBDD4A8();
  sub_23BBDD468();
  if (v6)
  {
    sub_23BBDD4A8();
  }

  else
  {
    v8 = v5;
  }

  result = sub_23BBDD438();
  if (v8 >= v7)
  {
    sub_23BBDD548();
    return (*(*(v4 - 8) + 8))(v2, v4);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23B992368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a2 + *(type metadata accessor for PageViewScrollView(0, a3, a4, a4) + 40));
  v9 = v8 + v8;
  v10 = sub_23BBDAB48();
  v11 = sub_23BBDC208();
  (*(*(v11 - 8) + 16))(a5, a1, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986A0, &unk_23BBE5740);
  v13 = a5 + *(result + 36);
  *v13 = 259;
  *(v13 + 8) = v9;
  *(v13 + 16) = 0x3FF0000000000000;
  *(v13 + 24) = v10;
  *(v13 + 32) = 1;
  return result;
}

uint64_t sub_23B992444(char a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = a5;
  v9 = a1;
  v10 = a2;
  KeyPath = swift_getKeyPath();
  v12 = 0;
  MEMORY[0x23EEB43C0](&v8, a3, &type metadata for ScalingScrollTransitionModifier, a4);
}

uint64_t sub_23B9924EC@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v33 = a3;
  v34 = sub_23BBDB1E8();
  v5 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_23BBDB208();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23BBDA928();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_23BBDD5A8();
    v17 = v9;
    v18 = v5;
    v19 = v14;
    v20 = v13;
    v21 = sub_23BBDB338();
    sub_23BBD9978();

    v22 = v20;
    v23 = v19;
    v5 = v18;
    v9 = v17;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a1, 0);
    (*(v23 + 8))(v16, v22);

    sub_23BBDD5A8();
    v24 = v22;
    v25 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a1, 0);
    (*(v23 + 8))(v16, v24);
  }

  sub_23BBDB1A8();
  v26 = v30;
  sub_23BBDB1D8();
  sub_23BBDB1C8();
  v27 = *(v5 + 8);
  v28 = v34;
  v27(v26, v34);
  sub_23BBDB1F8();
  v27(v9, v28);
  return (*(v31 + 8))(v12, v32);
}

uint64_t sub_23B9928D4@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v43 = a1;
  v44 = a5;
  v42 = a2 & 0x100;
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_23BBDB208();
  v14 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  if ((a2 & 0x100) == 0)
  {
    sub_23BBDB1B8();
LABEL_17:
    sub_23BBDB1B8();
    goto LABEL_20;
  }

  v40 = v10;
  v41 = v22;
  if (a4)
  {
    v25 = a3;
  }

  else
  {

    sub_23BBDD5A8();
    v39 = v24;
    v26 = sub_23BBDB338();
    v24 = v39;
    sub_23BBD9978();

    v27 = v40;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a3, 0);
    (*(v11 + 8))(v13, v27);
    v25 = v46;
  }

  if (v25 <= 1)
  {
    if (a2)
    {
      sub_23B9924EC(a3, a4 & 1, v20);
    }

    else
    {
      sub_23BBDB1A8();
    }

    (*(v14 + 32))(v24, v20, v45);
    if (a4)
    {
      goto LABEL_13;
    }

LABEL_10:

    sub_23BBDD5A8();
    v28 = a4;
    v29 = sub_23BBDB338();
    sub_23BBD9978();

    a4 = v28;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a3, 0);
    (*(v11 + 8))(v13, v40);
    v30 = v46;
    goto LABEL_14;
  }

  sub_23BBDB1B8();
  if ((a4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v30 = a3;
LABEL_14:
  v31 = v41;
  if (v30 > 1)
  {
    goto LABEL_17;
  }

  if (a2)
  {
    sub_23BBDB1A8();
  }

  else
  {
    sub_23B9924EC(a3, a4 & 1, v41);
  }

  (*(v14 + 32))(v17, v31, v45);
LABEL_20:
  v32 = swift_allocObject();
  *(v32 + 16) = a6;
  *(v32 + 24) = a2 & 1;
  *(v32 + 25) = BYTE1(v42);
  *(v32 + 32) = a3;
  *(v32 + 40) = a4 & 1;
  sub_23B995044(a3, a4 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986E8, &qword_23BBE5870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986F0, &unk_23BBE5878);
  sub_23B97B518(&qword_27E1986F8, &qword_27E1986E8, &qword_23BBE5870, MEMORY[0x277CE04B0]);
  v33 = sub_23BBDA578();
  v34 = sub_23B995050(&qword_27E198700, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  v46 = v33;
  v47 = v34;
  swift_getOpaqueTypeConformance2();
  sub_23BBDB8F8();

  v35 = *(v14 + 8);
  v36 = v45;
  v35(v17, v45);
  return (v35)(v24, v36);
}

uint64_t sub_23B992E40(double a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23BBDAE38();
  if (sub_23BBDAE48())
  {
    sub_23BBDC448();
  }

  else
  {
    sub_23BBDC458();
  }

  v7 = v5;
  v8 = v6;
  if (v4)
  {
    a1 = 1.0;
  }

  v9 = sub_23BBDA578();
  v10 = sub_23B995050(&qword_27E198700, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  return MEMORY[0x23EEB25B0](v9, v10, a1, v7, v8);
}

uint64_t sub_23B992F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_23B9928D4(a1, v3 | *(v2 + 8), *(v2 + 16), *(v2 + 24), a2, *v2);
}

uint64_t sub_23B992F50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B975AD0();
  *a1 = result & 1;
  return result;
}

void sub_23B992F80(uint64_t a1, double a2)
{
  sub_23BBDAA98();
  if (v2 <= 0x3F)
  {
    sub_23BBDA288();
    sub_23BBDDC08();
    if (v3 <= 0x3F)
    {
      sub_23BBDC138();
      if (v4 <= 0x3F)
      {
        sub_23B9938B0(319);
        if (v5 <= 0x3F)
        {
          sub_23B993908(319, &qword_27E198598, &type metadata for CommonUIHorizontalSizeClass, MEMORY[0x277CDF468]);
          if (v6 <= 0x3F)
          {
            sub_23B993908(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
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

uint64_t sub_23B9930DC(unsigned __int8 *a1, unsigned int a2, uint64_t a3, double a4)
{
  v7 = sub_23BBDAA98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v34 = *(a3 + 16);
  v35 = v7;
  v10 = *(v34 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = sub_23BBDA188();
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v12 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = v12;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = *(v8 + 64);
  v18 = *(v10 + 80);
  if (!a2)
  {
    return 0;
  }

  v19 = v13;
  v20 = v18 | 7;
  v21 = *(v14 + 80) & 0xF8 | 7;
  v22 = ((v18 + 16) & ~v18) + *(v10 + 64) + v21;
  if (a2 <= v16)
  {
    goto LABEL_26;
  }

  v23 = ((*(*(v13 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v22 + ((v20 + ((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v20)) & ~v21) + 33;
  v24 = 8 * v23;
  if (v23 > 3)
  {
LABEL_15:
    v26 = a1[v23];
    if (!a1[v23])
    {
      goto LABEL_26;
    }

LABEL_19:
    v28 = (v26 - 1) << v24;
    if (v23 >= 4)
    {
      v28 = 0;
    }

    if (v23 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }

    return v16 + (v29 | v28) + 1;
  }

  v25 = ((a2 - v16 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v25))
  {
    v26 = *&a1[v23];
    if (v26)
    {
      goto LABEL_19;
    }
  }

  else if (v25 > 0xFF)
  {
    v26 = *&a1[v23];
    if (*&a1[v23])
    {
      goto LABEL_19;
    }
  }

  else if (v25 >= 2)
  {
    goto LABEL_15;
  }

LABEL_26:
  if (v9 == v16)
  {
    v30 = a1;
    v15 = v9;
    v19 = v35;
    goto LABEL_28;
  }

  v31 = (&a1[v17 + 7] & 0xFFFFFFFFFFFFFFF8);
  if ((v16 & 0x80000000) != 0)
  {
    v33 = (((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + v20 + 9) & ~v20;
    if (v11 == v16)
    {
      v30 = ((v18 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v18);
      v15 = v11;
      v19 = v34;
    }

    else
    {
      v30 = ((v22 + v33) & ~v21);
    }

LABEL_28:

    return __swift_getEnumTagSinglePayload(v30, v15, v19);
  }

  v32 = *v31;
  if (*v31 >= 0xFFFFFFFF)
  {
    LODWORD(v32) = -1;
  }

  return (v32 + 1);
}

void sub_23B9933E8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4, double a5)
{
  v46 = sub_23BBDAA98();
  v8 = *(v46 - 8);
  v9 = *(v8 + 84);
  v44 = *(a4 + 16);
  v10 = *(v44 - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v45 = v12;
  if (v9 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(v8 + 84);
  }

  v14 = sub_23BBDA188();
  v15 = *(v14 - 8);
  v16 = *(v15 + 84);
  if (v16 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = *(v15 + 84);
  }

  if (v13 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v13;
  }

  v19 = *(v8 + 64);
  v20 = *(v10 + 80);
  v21 = v20 | 7;
  v22 = ((v20 + 16) & ~v20) + *(v10 + 64);
  v23 = *(v15 + 80) & 0xF8 | 7;
  v24 = v22 + v23;
  v25 = (*(*(v14 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = v25 + ((v22 + v23 + (((v20 | 7) + ((((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~(v20 | 7))) & ~v23) + 33;
  v27 = 8 * v26;
  if (a3 <= v18)
  {
    v29 = 0;
    v28 = a2;
  }

  else
  {
    v28 = a2;
    if (v26 <= 3)
    {
      v34 = ((a3 - v18 + ~(-1 << v27)) >> v27) + 1;
      if (HIWORD(v34))
      {
        v29 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v29 = v35;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }
  }

  if (v18 < v28)
  {
    v30 = ~v18 + v28;
    if (v26 < 4)
    {
      v31 = (v30 >> v27) + 1;
      bzero(a1, v26);
      if (v26 == 1)
      {
        *a1 = v30;
LABEL_45:
        switch(v29)
        {
          case 1:
            a1[v26] = v31;
            return;
          case 2:
            *&a1[v26] = v31;
            return;
          case 3:
            goto LABEL_73;
          case 4:
            *&a1[v26] = v31;
            return;
          default:
            return;
        }
      }

      v30 &= ~(-1 << v27);
    }

    else
    {
      bzero(a1, v26);
      v31 = 1;
    }

    *a1 = v30;
    goto LABEL_45;
  }

  v32 = ~v21;
  v33 = ~v23;
  switch(v29)
  {
    case 1:
      a1[v26] = 0;
      if (!v28)
      {
        return;
      }

      goto LABEL_34;
    case 2:
      *&a1[v26] = 0;
      if (!v28)
      {
        return;
      }

      goto LABEL_34;
    case 3:
LABEL_73:
      __break(1u);
      JUMPOUT(0x23B993878);
    case 4:
      *&a1[v26] = 0;
      goto LABEL_33;
    default:
LABEL_33:
      if (!v28)
      {
        return;
      }

LABEL_34:
      if (v9 == v18)
      {
        v36 = a1;
        v37 = v28;
        v16 = v9;
        v14 = v46;
LABEL_36:

        __swift_storeEnumTagSinglePayload(v36, v37, v16, v14);
        return;
      }

      v38 = (&a1[v19 + 7] & 0xFFFFFFFFFFFFFFF8);
      if ((v18 & 0x80000000) == 0)
      {
        if ((v28 & 0x80000000) != 0)
        {
          v39 = v28 & 0x7FFFFFFF;
        }

        else
        {
          v39 = (v28 - 1);
        }

        *v38 = v39;
        return;
      }

      v40 = ((((v38 + 15) & 0xFFFFFFFFFFFFFFF8) + v21 + 9) & v32);
      if (v11 == v18)
      {
        if (v45 >= v28)
        {
          v36 = ((v20 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v20);
          v37 = v28;
          v16 = v11;
          v14 = v44;
          goto LABEL_36;
        }

        if (v22 <= 3)
        {
          v41 = ~(-1 << (8 * v22));
        }

        else
        {
          v41 = -1;
        }

        if (v22)
        {
          v42 = v41 & (~v45 + v28);
          if (v22 <= 3)
          {
            v43 = v22;
          }

          else
          {
            v43 = 4;
          }

          bzero(((((v38 + 15) & 0xFFFFFFFFFFFFFFF8) + v21 + 9) & v32), v22);
          switch(v43)
          {
            case 2:
              *v40 = v42;
              break;
            case 3:
              *v40 = v42;
              v40[2] = BYTE2(v42);
              break;
            case 4:
              goto LABEL_68;
            default:
              *v40 = v42;
              break;
          }
        }
      }

      else
      {
        v40 = (&v40[v24] & v33);
        if (v17 >= v28)
        {
          v36 = v40;
          v37 = v28;
          goto LABEL_36;
        }

        if (v25 != -8)
        {
          v42 = ~v17 + v28;
          bzero(v40, (v25 + 8));
LABEL_68:
          *v40 = v42;
        }
      }

      return;
  }
}

void sub_23B9938B0(uint64_t a1)
{
  if (!qword_27E198590)
  {
    sub_23BBDA188();
    v1 = sub_23BBDBF98();
    if (!v2)
    {
      atomic_store(v1, &qword_27E198590);
    }
  }
}

void sub_23B993908(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23B993958(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1984C0, &qword_23BBE54C0);
  type metadata accessor for PageViewInternal(255, v1, v2, v3);
  sub_23BBDACE8();
  sub_23B98FE9C();
  OUTLINED_FUNCTION_16_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC098();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1984E0, &qword_23BBE54D0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_16_1();
  sub_23B97B518(&qword_27E1984E8, &qword_27E1984E0, &qword_23BBE54D0, MEMORY[0x277CE06A8]);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

unint64_t sub_23B993AF0()
{
  result = qword_27E1985C0;
  if (!qword_27E1985C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1985C0);
  }

  return result;
}

unint64_t sub_23B993B50()
{
  result = qword_27E1985D0;
  if (!qword_27E1985D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1985C8, &qword_23BBE55C8);
    sub_23B993BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1985D0);
  }

  return result;
}

unint64_t sub_23B993BD4()
{
  result = qword_27E1985D8;
  if (!qword_27E1985D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1985E0, &qword_23BBE55D0);
    sub_23B993CBC(&qword_27E1985E8, &qword_27E1985F0, &qword_23BBE55D8, sub_23B993D2C);
    sub_23B995050(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1985D8);
  }

  return result;
}

uint64_t sub_23B993CBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    OUTLINED_FUNCTION_2_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B993D5C()
{
  result = qword_27E198608;
  if (!qword_27E198608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198608);
  }

  return result;
}

uint64_t sub_23B993DB4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = OUTLINED_FUNCTION_21_1();
  v7 = type metadata accessor for PageViewInternal(v4, v5, v3, v6);
  OUTLINED_FUNCTION_13_0(v7);
  v10 = v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_23B98D9A8(v10, v2, v3, v8);
}

uint64_t sub_23B993E70@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_23B993EB8()
{
  v0 = OUTLINED_FUNCTION_7_2();
  v4 = type metadata accessor for PageViewInternal(v0, v1, v2, v3);
  OUTLINED_FUNCTION_13_0(v4);
  v5 = OUTLINED_FUNCTION_13_2();

  return sub_23B98C400(v5, v6, v7, v8);
}

uint64_t sub_23B993F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1985E0, &qword_23BBE55D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B993FBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = OUTLINED_FUNCTION_7_2();
  v9 = type metadata accessor for PageViewInternal(v5, v6, v7, v8);
  OUTLINED_FUNCTION_13_0(v9);

  return sub_23B98C63C(v3, v4, a1);
}

uint64_t objectdestroy_38Tm(uint64_t a1)
{
  v3 = *(v2 + 32);
  v4 = OUTLINED_FUNCTION_12_2();
  type metadata accessor for PageViewInternal(v4, v5, v6, v7);
  OUTLINED_FUNCTION_8_3();
  v9 = *(v8 + 80);
  swift_unknownObjectRelease();
  v10 = v2 + ((v9 + 48) & ~v9);
  sub_23BBDAA98();
  OUTLINED_FUNCTION_12_1();
  (*(v11 + 8))(v10);

  v12 = v10 + v1[14];

  OUTLINED_FUNCTION_12_2();
  sub_23BBDC138();
  OUTLINED_FUNCTION_19_1();
  (*(v13 + 8))(v12 + v14, v3);
  v15 = v10 + v1[15];
  sub_23BBDA188();
  OUTLINED_FUNCTION_12_1();
  (*(v16 + 8))(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E198610, &qword_23BBE55E8);

  OUTLINED_FUNCTION_11_2(v1[16]);
  OUTLINED_FUNCTION_11_2(v1[17]);
  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

void sub_23B9941D0(uint64_t *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = OUTLINED_FUNCTION_7_2();
  v9 = type metadata accessor for PageViewInternal(v5, v6, v7, v8);
  OUTLINED_FUNCTION_13_0(v9);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1 + ((*(v10 + 80) + 48) & ~*(v10 + 80));

  sub_23B98C680(a1, v11, v12, v13, v3, v4);
}

__n128 sub_23B994268(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t objectdestroy_32Tm(uint64_t a1)
{
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_12_2();
  type metadata accessor for PageViewInternal(v4, v5, v6, v7);
  OUTLINED_FUNCTION_8_3();
  v9 = v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  sub_23BBDAA98();
  OUTLINED_FUNCTION_12_1();
  (*(v10 + 8))(v9);

  v11 = v9 + v1[14];

  OUTLINED_FUNCTION_12_2();
  sub_23BBDC138();
  OUTLINED_FUNCTION_19_1();
  (*(v12 + 8))(v11 + v13, v3);
  v14 = v9 + v1[15];
  sub_23BBDA188();
  OUTLINED_FUNCTION_12_1();
  (*(v15 + 8))(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E198610, &qword_23BBE55E8);

  OUTLINED_FUNCTION_11_2(v1[16]);
  OUTLINED_FUNCTION_11_2(v1[17]);
  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

void sub_23B994450(uint64_t a1, double a2)
{
  sub_23BBDAA98();
  if (v2 <= 0x3F)
  {
    sub_23BBDA288();
    sub_23BBDDC08();
    if (v3 <= 0x3F)
    {
      sub_23B993908(319, &qword_27E198598, &type metadata for CommonUIHorizontalSizeClass, MEMORY[0x277CDF468]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B99454C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = sub_23BBDAA98();
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 36));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_23B99460C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  result = sub_23BBDAA98();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B9946B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PageViewScrollView(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDB038();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  sub_23B995050(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1985B0, &qword_23BBE55C0);
  OUTLINED_FUNCTION_4();
  v4 = sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  sub_23B97B518(&qword_27E1985B8, &qword_27E1985B0, &qword_23BBE55C0, MEMORY[0x277CE01C8]);
  WitnessTable = swift_getWitnessTable();
  return OUTLINED_FUNCTION_17_2(WitnessTable, v5, v6, v7, v8, v9, v10, v11, v4);
}

unint64_t sub_23B9948C4()
{
  result = qword_27E198698;
  if (!qword_27E198698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198698);
  }

  return result;
}

unint64_t sub_23B99495C()
{
  result = qword_27E1986B0;
  if (!qword_27E1986B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986A0, &unk_23BBE5740);
    sub_23B9949E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1986B0);
  }

  return result;
}

unint64_t sub_23B9949E8()
{
  result = qword_27E1986B8;
  if (!qword_27E1986B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1986B8);
  }

  return result;
}

uint64_t sub_23B994A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PageViewScrollView(0, *(v5 + 16), *(v5 + 24), a4);
  OUTLINED_FUNCTION_8_3();
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  sub_23BBDAA98();
  OUTLINED_FUNCTION_12_1();
  (*(v8 + 8))(v5 + v7);

  OUTLINED_FUNCTION_11_2(*(v4 + 56));

  return swift_deallocObject();
}

uint64_t sub_23B994B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_15_2();
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_13_0(v5);
  v6 = OUTLINED_FUNCTION_1_3();

  return a3(v6);
}

unint64_t sub_23B994BF0()
{
  result = qword_27E1986D0;
  if (!qword_27E1986D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1986D0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23B994C68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B994CB4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23B994D0C(uint64_t *a1, double a2)
{
  v2 = *a1;
  sub_23BBDB048();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986A0, &unk_23BBE5740);
  sub_23B995050(&qword_27E1986A8, MEMORY[0x277CE0668], MEMORY[0x277CE0678]);
  sub_23BBDC1A8();
  sub_23BBDA358();
  sub_23B99495C();
  sub_23BBDBFF8();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986C0, &unk_23BBF2AA0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDD648();
  OUTLINED_FUNCTION_4();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_4();
  v3 = sub_23BBDBFE8();
  v42 = OUTLINED_FUNCTION_16_1();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = OUTLINED_FUNCTION_18_2(OpaqueTypeMetadata2, v5, v6, v7, v8, v9, v10, v11, v38, v3, v42);
  v12 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22_1(v12, v13, v14, v15, v16, v17, v18, v19, v39, v2, v43);
  OUTLINED_FUNCTION_4();
  v20 = sub_23BBD9B38();
  v44 = OUTLINED_FUNCTION_16_1();
  v21 = swift_getOpaqueTypeMetadata2();
  v45 = OUTLINED_FUNCTION_18_2(v21, v22, v23, v24, v25, v26, v27, v28, v40, v20, v44);
  swift_getOpaqueTypeMetadata2();
  v29 = sub_23BBDB2F8();
  OUTLINED_FUNCTION_22_1(v29, v30, v31, v32, v33, v34, v35, v36, v41, v2, v45);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23B994FD8()
{
  sub_23B97B450(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_23B995044(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_23B995050(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B995098()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986E8, &qword_23BBE5870);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986F0, &unk_23BBE5878);
  sub_23B97B518(&qword_27E1986F8, &qword_27E1986E8, &qword_23BBE5870, MEMORY[0x277CE04B0]);
  v1 = sub_23BBDA578();
  v2 = sub_23B995050(&qword_27E198700, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  v18 = OUTLINED_FUNCTION_17_2(v2, v3, v4, v5, v6, v7, v8, v9, v1);
  return OUTLINED_FUNCTION_17_2(v18, v10, v11, v12, v13, v14, v15, v16, v0);
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_2@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_23B97B450(v4, v5);
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_17_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23B99539C()
{
  if (sub_23BB51588() > 1u)
  {
    return 0;
  }

  v0 = sub_23B995A24();
  OUTLINED_FUNCTION_0_3(&type metadata for SubscriptionPickerAnimationOptions, v1, v0, v2);
  return (v4 >> 1) & 1;
}

unint64_t sub_23B9953EC()
{
  v0 = sub_23B995A24();
  OUTLINED_FUNCTION_0_3(&type metadata for SubscriptionPickerAnimationOptions, v1, v0, v2);
  return (v4 >> 2) & 1;
}

uint64_t sub_23B995458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B9956CC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23B9954BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B9A0004();
  *a1 = result;
  return result;
}

uint64_t sub_23B9954F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BB07DE4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23B995520@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23B9A1670(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23B995550@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BB07DFC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23B995588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23BB07DE0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_23B9955BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23BB07DD0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_23B995608@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BB07DE8(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_23B995678@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B9956A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BB05E34();
  *a1 = result;
  return result;
}

unint64_t sub_23B9956CC()
{
  result = qword_27E198708;
  if (!qword_27E198708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198708);
  }

  return result;
}

unint64_t sub_23B995724()
{
  result = qword_27E198710;
  if (!qword_27E198710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198710);
  }

  return result;
}

unint64_t sub_23B99577C()
{
  result = qword_27E198718;
  if (!qword_27E198718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198718);
  }

  return result;
}

unint64_t sub_23B9957D4()
{
  result = qword_27E198720;
  if (!qword_27E198720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198720);
  }

  return result;
}

uint64_t sub_23B995828()
{
  v0 = sub_23B995A24();
  OUTLINED_FUNCTION_0_3(&type metadata for SubscriptionPickerAnimationOptions, v1, v0, v2);
  return v4;
}

uint64_t sub_23B995898()
{
  v0 = sub_23B995A24();
  v3 = OUTLINED_FUNCTION_0_3(&type metadata for SubscriptionPickerAnimationOptions, v1, v0, v2);
  if (v5)
  {
    return MEMORY[0x23EEB4B20](v3, 0.2, 1.0, 0.0);
  }

  else
  {
    return 0;
  }
}

unint64_t *sub_23B9958EC(unint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if (v2)
    {
      return result;
    }

    v3 = v2 | 1;
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  *result = v3;
  return result;
}

uint64_t sub_23B995930(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  sub_23BBDB9B8();
}

unint64_t *sub_23B9959DC(unint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFFFDLL;
  }

  else
  {
    if ((v2 & 2) != 0)
    {
      return result;
    }

    v3 = v2 | 2;
  }

  *result = v3;
  return result;
}

unint64_t *sub_23B995A00(unint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 4) != 0)
    {
      return result;
    }

    v3 = v2 | 4;
  }

  else
  {
    if ((v2 & 4) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFFFBLL;
  }

  *result = v3;
  return result;
}

unint64_t sub_23B995A24()
{
  result = qword_27E198728[0];
  if (!qword_27E198728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E198728);
  }

  return result;
}

_DWORD *sub_23B995A90(_DWORD *result)
{
  if (*(v1 + 16) == 1)
  {
    if ((~*result & 3) == 0)
    {
      return result;
    }

    v2 = *result | 3;
  }

  else
  {
    v2 = 0;
  }

  *result = v2;
  return result;
}

void *OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_23BBDA958();
}

uint64_t sub_23B995AE4(void *a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for SubscriptionStoreControlConfiguration(319, a1[3], a1[5], v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B995B84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_23BBDCDB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0xFD)
  {
    v11 = 253;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = v11 - 1;
  if ((v11 - 1) <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v11 - 1;
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(v8 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v16 = v8;
  v17 = *(v9 + 80) & 0xF8;
  v18 = v17 | 7;
  v19 = *(v6 + 64) + (v17 | 7);
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v20 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + ((v17 + 87) & ~v18) + (v19 & ~v18) + 12;
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v14 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v24 < 2)
    {
LABEL_31:
      if (v7 >= v13)
      {

        return __swift_getEnumTagSinglePayload(a1, v7, v5);
      }

      else
      {
        v28 = ((((a1 + v19) & ~v18) + 23) & 0xFFFFFFFFFFFFFFF8);
        if (v12 < 0)
        {
          v30 = (v18 + ((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v18;
          if (v10 < 0xFD)
          {
            v32 = *(((v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v32 >= 2)
            {
              v33 = (v32 + 2147483646) & 0x7FFFFFFF;
            }

            else
            {
              v33 = -1;
            }

            if ((v33 + 1) >= 2)
            {
              EnumTagSinglePayload = v33;
            }

            else
            {
              EnumTagSinglePayload = 0;
            }
          }

          else
          {
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, v10, v16);
          }

          if (EnumTagSinglePayload >= 2)
          {
            return EnumTagSinglePayload - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v29 = *v28;
          if (*v28 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          return (v29 + 1);
        }
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_31;
  }

LABEL_21:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    switch(v26)
    {
      case 2:
        v27 = *a1;
        break;
      case 3:
        v27 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v27 = *a1;
        break;
      default:
        v27 = *a1;
        break;
    }
  }

  else
  {
    v27 = 0;
  }

  return v14 + (v27 | v25) + 1;
}

void sub_23B995E80(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_23BBDCDB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0xFD)
  {
    v13 = 253;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = v13 - 1;
  if ((v13 - 1) <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v13 - 1;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v11 + 80) & 0xF8;
  v18 = v17 | 7;
  v19 = (v17 + 87) & ~(v17 | 7);
  v20 = *(*(v10 - 8) + 64);
  v21 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v22 = *(v8 + 64) + (v17 | 7);
  v23 = v19 + v21;
  v24 = v19 + v21 + (v22 & ~(v17 | 7)) + 3;
  v25 = 8 * v24;
  if (a3 <= v16)
  {
    v26 = 0;
  }

  else if (v24 <= 3)
  {
    v30 = ((a3 - v16 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v30))
    {
      v26 = 4;
    }

    else
    {
      if (v30 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v30 >= 2)
      {
        v26 = v31;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v26 = 1;
  }

  if (v16 < a2)
  {
    v27 = ~v16 + a2;
    if (v24 < 4)
    {
      v28 = (v27 >> v25) + 1;
      if (v24)
      {
        v32 = v27 & ~(-1 << v25);
        bzero(a1, v24);
        if (v24 == 3)
        {
          *a1 = v32;
          a1[2] = BYTE2(v32);
        }

        else if (v24 == 2)
        {
          *a1 = v32;
        }

        else
        {
          *a1 = v27;
        }
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v27;
      v28 = 1;
    }

    switch(v26)
    {
      case 1:
        a1[v24] = v28;
        return;
      case 2:
        *&a1[v24] = v28;
        return;
      case 3:
        goto LABEL_72;
      case 4:
        *&a1[v24] = v28;
        return;
      default:
        return;
    }
  }

  v29 = ~v18;
  switch(v26)
  {
    case 1:
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_72:
      __break(1u);
      JUMPOUT(0x23B996290);
    case 4:
      *&a1[v24] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v9 >= v15)
      {
        v37 = a1;
        v38 = a2;
        v12 = v9;
        v10 = v7;
      }

      else
      {
        v33 = (&a1[v22] & v29);
        if (v15 < a2)
        {
          if (v23 <= 2)
          {
            v34 = ~(-1 << (8 * (v23 + 1)));
          }

          else
          {
            v34 = -1;
          }

          v35 = v34 & (~v15 + a2);
          if (v23 <= 2)
          {
            v36 = v23 + 1;
          }

          else
          {
            v36 = 4;
          }

          bzero(v33, v23 + 1);
          switch(v36)
          {
            case 2:
              *v33 = v35;
              break;
            case 3:
              *v33 = v35;
              v33[2] = BYTE2(v35);
              break;
            case 4:
              goto LABEL_61;
            default:
              goto LABEL_62;
          }

          return;
        }

        v39 = ((v33 + 23) & 0xFFFFFFFFFFFFFFF8);
        if ((v14 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v40 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v40 = (a2 - 1);
          }

          *v39 = v40;
          return;
        }

        v33 = ((v18 + ((((v39 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & v29);
        if (v14 < a2)
        {
          v35 = a2 - v13;
          bzero(((v18 + ((((v39 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & v29), ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
          if (v21 <= 3)
          {
LABEL_62:
            *v33 = v35;
          }

          else
          {
LABEL_61:
            *v33 = v35;
          }

          return;
        }

        v38 = (a2 + 1);
        if (v12 < 0xFD)
        {
          v41 = &v33[v20 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFC)
          {
            *v41 = 0;
            *(v41 + 8) = 0;
            *v41 = a2 - 253;
          }

          else
          {
            *(v41 + 8) = a2 + 3;
          }

          return;
        }

        v37 = ((v18 + ((((v39 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & v29);
      }

      __swift_storeEnumTagSinglePayload(v37, v38, v12, v10);
      return;
  }
}

uint64_t sub_23B9962E0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v6 = v5;
  v22 = a4;
  v10 = *(a2 + 24);
  v11 = *(a2 + 40);
  type metadata accessor for SubscriptionStoreControlConfiguration(0, v10, v11, a4);
  OUTLINED_FUNCTION_3_2();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  (*(v16 + 16))(&v21 - v14, v6 + *(a2 + 52), v13);
  v17 = *(v6 + *(a2 + 56));
  v18 = *(v6 + *(a2 + 60));
  OUTLINED_FUNCTION_1_4();
  (*(v19 + 8))(v6, a2);
  return sub_23B996434(v15, v17, v18, a3, v10, v22, v11, x8_0);
}

uint64_t sub_23B996434@<X0>(uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  (*(v17 + 32))(a9);
  v23[0] = a5;
  v23[1] = a6;
  v23[2] = a7;
  v23[3] = a8;
  v18 = type metadata accessor for SubscriptionStoreContainerContext(0, v23);
  v19 = v18[13];
  type metadata accessor for SubscriptionStoreControlConfiguration(0, a6, a8, v20);
  OUTLINED_FUNCTION_1_4();
  result = (*(v21 + 32))(a9 + v19, a2);
  *(a9 + v18[14]) = a3;
  *(a9 + v18[15]) = a4;
  return result;
}

uint64_t sub_23B99652C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v32[0] = a4;
  v32[1] = a2;
  v33 = a1;
  v34 = a6;
  v11 = *(a3 + 16);
  OUTLINED_FUNCTION_3_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SubscriptionStoreControlConfiguration(0, *(v17 + 24), *(v17 + 40), v18);
  OUTLINED_FUNCTION_3_2();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = v32 - v23;
  v26 = type metadata accessor for SubscriptionStoreControlConfiguration(0, a4, a5, v25);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = v32 - v28;
  (*(v21 + 16))(v24, v7 + *(a3 + 52), v19, v27);
  v33(v24);
  (*(v13 + 16))(v16, v7, v11);
  LOBYTE(v21) = *(v7 + *(a3 + 56));
  LOBYTE(v24) = *(v7 + *(a3 + 60));
  OUTLINED_FUNCTION_1_4();
  (*(v30 + 8))(v7, a3);
  return sub_23B996434(v29, v21, v24, v11, v32[0], *(a3 + 32), a5, v34);
}

uint64_t sub_23B996780(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 688))
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

uint64_t sub_23B9967C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 680) = 0;
    *(result + 248) = 0u;
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
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 688) = 1;
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

    *(result + 688) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B9968C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_27E1BF870, sizeof(__dst));
  memcpy(__src, &qword_27E1BF870, sizeof(__src));
  sub_23B996E0C(__dst, v6);
  swift_getAtKeyPath();
  memcpy(v6, __src, 0x2B0uLL);
  sub_23B996E44(v6);
  sub_23BBDBA28();
}

void sub_23B9969B4()
{
  qword_27E1BF870 = 0xD00000000000001DLL;
  *algn_27E1BF878 = 0x800000023BBDFAC0;
  qword_27E1BF888 = 0x800000023BBDFAE0;
  unk_27E1BF890 = 0xD00000000000001DLL;
  qword_27E1BF898 = 0x800000023BBDFB00;
  qword_27E1BF8A8 = 0x800000023BBDFB20;
  qword_27E1BF8B0 = 0xD00000000000002ALL;
  unk_27E1BF8B8 = 0x800000023BBDFB50;
  qword_27E1BF8C8 = 0x800000023BBDFB80;
  qword_27E1BF8D8 = 0x800000023BBDFBB0;
  qword_27E1BF8E0 = 0xD00000000000001BLL;
  unk_27E1BF8E8 = 0x800000023BBDFBD0;
  qword_27E1BF8F8 = 0x800000023BBDFBF0;
  strcpy(&qword_27E1BF900, "Subtitle Text");
  unk_27E1BF90E = -4864;
  qword_27E1BF910 = 0x6554206563697250;
  unk_27E1BF918 = 0xEA00000000007478;
  qword_27E1BF928 = 0x800000023BBDFC10;
  qword_27E1BF938 = 0x800000023BBDFC40;
  qword_27E1BF948 = 0x800000023BBDFC70;
  qword_27E1BF950 = 0xD000000000000016;
  unk_27E1BF958 = 0x800000023BBDFCA0;
  qword_27E1BF968 = 0x800000023BBDFCC0;
  qword_27E1BF970 = 0xD000000000000014;
  unk_27E1BF978 = 0x800000023BBDFCF0;
  qword_27E1BF960 = 0xD000000000000021;
  qword_27E1BF980 = 0xD000000000000021;
  unk_27E1BF988 = 0x800000023BBDFD10;
  qword_27E1BF998 = 0x800000023BBDFD40;
  qword_27E1BF9A8 = 0x800000023BBDFD60;
  qword_27E1BF9B0 = 0xD000000000000011;
  unk_27E1BF9B8 = 0x800000023BBDFD80;
  qword_27E1BF8F0 = 0xD00000000000001ALL;
  qword_27E1BF9C0 = 0xD00000000000001ALL;
  unk_27E1BF9C8 = 0x800000023BBDFDA0;
  qword_27E1BF920 = 0xD000000000000024;
  qword_27E1BF9D0 = 0xD000000000000024;
  unk_27E1BF9D8 = 0x800000023BBDFDC0;
  qword_27E1BF9E8 = 0x800000023BBDFDF0;
  qword_27E1BF9F8 = 0x800000023BBDFE20;
  qword_27E1BF940 = 0xD000000000000025;
  qword_27E1BFA00 = 0xD000000000000025;
  unk_27E1BFA08 = 0x800000023BBDFE40;
  qword_27E1BF8A0 = 0xD000000000000028;
  qword_27E1BF8C0 = 0xD000000000000028;
  qword_27E1BFA10 = 0xD000000000000028;
  unk_27E1BFA18 = 0x800000023BBDFE70;
  qword_27E1BFA20 = 0xD00000000000002ELL;
  unk_27E1BFA28 = 0x800000023BBDFEA0;
  qword_27E1BFA30 = 0xD000000000000031;
  unk_27E1BFA38 = 0x800000023BBDFED0;
  qword_27E1BFA48 = 0x800000023BBDFF10;
  qword_27E1BFA50 = 0xD00000000000001ELL;
  unk_27E1BFA58 = 0x800000023BBDFF40;
  qword_27E1BFA60 = 0xD000000000000027;
  unk_27E1BFA68 = 0x800000023BBDFF60;
  qword_27E1BF880 = 0xD00000000000001FLL;
  qword_27E1BFA70 = 0xD00000000000002FLL;
  qword_27E1BFA78 = 0x800000023BBDFF90;
  qword_27E1BFA80 = 0xD000000000000046;
  qword_27E1BFA88 = 0x800000023BBDFFC0;
  qword_27E1BFA40 = 0xD00000000000002BLL;
  qword_27E1BFA90 = 0xD00000000000002BLL;
  qword_27E1BFA98 = 0x800000023BBE0010;
  qword_27E1BF930 = 0xD000000000000026;
  qword_27E1BFAA0 = 0xD000000000000026;
  qword_27E1BFAA8 = 0x800000023BBE0040;
  qword_27E1BFAB0 = 0xD000000000000010;
  qword_27E1BFAB8 = 0x800000023BBE0070;
  qword_27E1BFAC0 = 6581857;
  qword_27E1BFAC8 = 0xE300000000000000;
  strcpy(&qword_27E1BFAD0, "Privacy Policy");
  HIBYTE(qword_27E1BFAD8) = -18;
  qword_27E1BFAE0 = 0xD00000000000001FLL;
  qword_27E1BFAE8 = 0x800000023BBE0090;
  qword_27E1BF9F0 = 0xD00000000000001CLL;
  qword_27E1BFAF0 = 0xD00000000000001CLL;
  qword_27E1BFAF8 = 0x800000023BBE00B0;
  qword_27E1BF9E0 = 0xD000000000000023;
  qword_27E1BFB00 = 0xD000000000000023;
  qword_27E1BFB08 = 0x800000023BBE00D0;
  qword_27E1BF8D0 = 0xD000000000000019;
  qword_27E1BF990 = 0xD000000000000019;
  qword_27E1BF9A0 = 0xD000000000000019;
  qword_27E1BFB10 = 0xD000000000000012;
  qword_27E1BFB18 = 0x800000023BBE0100;
}

uint64_t sub_23B996E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  v7 = type metadata accessor for ProductViewButtonConfiguration(0);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B996F38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ProductViewButtonConfiguration(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B996FD8(uint64_t a1)
{
  result = type metadata accessor for ProductViewButtonConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B997068(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_12_3();
  _s11PriceStringOMa(v6);
  OUTLINED_FUNCTION_10_2();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0, &unk_23BBE5DE0);
    OUTLINED_FUNCTION_10_2();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      if (a2 == 0x7FFFFFFF)
      {
        return OUTLINED_FUNCTION_18_0(*(v3 + a3[6]));
      }

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C8, &unk_23BBF3BC0);
      v13 = a3[7];
    }

    v10 = v3 + v13;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_23B997190(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_12_3();
  _s11PriceStringOMa(v8);
  OUTLINED_FUNCTION_10_2();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0, &unk_23BBE5DE0);
    OUTLINED_FUNCTION_10_2();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v4 + a4[6]) = (a2 - 1);
        return;
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C8, &unk_23BBF3BC0);
      v15 = a4[7];
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void sub_23B9972AC(uint64_t a1)
{
  _s11PriceStringOMa(319);
  if (v1 <= 0x3F)
  {
    sub_23B9973A0(319, &qword_27E1987E0, _s11PriceStringOMa);
    if (v2 <= 0x3F)
    {
      sub_23B975E04();
      if (v3 <= 0x3F)
      {
        sub_23B9973A0(319, &qword_27E1987E8, MEMORY[0x277CC9130]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23B9973A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBDD648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23B9973F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v137 = a4;
  v140 = a5;
  v141 = a3;
  LODWORD(v136) = a2;
  v142 = sub_23BBD96B8();
  OUTLINED_FUNCTION_7();
  v123 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_1();
  v121 = v8 - v9;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v10);
  v124 = &v118 - v11;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_3();
  v122 = v13;
  v14 = OUTLINED_FUNCTION_5_3();
  v120 = _s20LocalizationResourceVMa(v14);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v130 = v17 - v16;
  OUTLINED_FUNCTION_5_3();
  v133 = sub_23BBD9848();
  OUTLINED_FUNCTION_7();
  v131 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_1();
  v132 = v20 - v21;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_3();
  v129 = v23;
  v24 = OUTLINED_FUNCTION_5_3();
  v25 = _s22LocalizedPriceResourceVMa(v24);
  v26 = OUTLINED_FUNCTION_13_0(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v119 = v28 - v27;
  OUTLINED_FUNCTION_5_3();
  sub_23BBDCD08();
  OUTLINED_FUNCTION_7();
  v127 = v30;
  v128 = v29;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_1();
  v125 = v31 - v32;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_3();
  v126 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v36 = OUTLINED_FUNCTION_13_0(v35);
  MEMORY[0x28223BE20](v36);
  v38 = &v118 - v37;
  v39 = sub_23BBDC8A8();
  OUTLINED_FUNCTION_7();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_1();
  v135 = (v43 - v44);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v45);
  v47 = &v118 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v118 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C8, &unk_23BBF3BC0);
  v52 = OUTLINED_FUNCTION_13_0(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_1();
  v55 = v53 - v54;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_3();
  v139 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0, &unk_23BBE5DE0);
  v59 = OUTLINED_FUNCTION_13_0(v58);
  MEMORY[0x28223BE20](v59);
  v138 = &v118 - v60;
  v61 = OUTLINED_FUNCTION_5_3();
  v143 = _s11PriceStringOMa(v61);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_1();
  v65 = v63 - v64;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_3();
  v144 = v67;
  sub_23BBDCD28();
  sub_23BBDC878();
  v134 = sub_23B99835C(v68);
  v69 = sub_23BBDCF38();
  v70 = *(v41 + 8);
  v70(v47, v39);
  v70(v50, v39);
  if (v69 & 1) != 0 && (v136)
  {
    v71 = sub_23BBDC8E8();
    v73 = v143;
    v72 = v144;
    *v144 = v71;
    v72[1] = v74;
    swift_storeEnumTagMultiPayload();
    sub_23BBDC8E8();
    v75 = sub_23BBDD088();

    v76 = v138;
    __swift_storeEnumTagSinglePayload(v138, 1, 1, v73);
    sub_23BBDC8F8();
    v77 = sub_23BBDCB58();
    if (__swift_getEnumTagSinglePayload(v38, 1, v77) == 1)
    {
      sub_23B979910(v38, &qword_27E197B90, &qword_23BBE3F90);
      v78 = 1;
    }

    else
    {
      v85 = v125;
      sub_23BBDCA98();
      v136 = v75;
      v86 = v126;
      sub_23BACBE14(v126);
      v87 = *(v127 + 8);
      v88 = v85;
      v89 = v128;
      v87(v88, v128);
      (*(*(v77 - 8) + 8))(v38, v77);
      sub_23BB72A48();
      v90 = v86;
      v75 = v136;
      v87(v90, v89);
      v78 = 0;
    }

    v91 = v137;
    v92 = v141;
    v93 = v139;
    __swift_storeEnumTagSinglePayload(v55, v78, 1, v142);
    sub_23B99840C(v55, v93, &qword_27E1987C8, &unk_23BBF3BC0);
  }

  else
  {
    v79 = v144;
    sub_23BAE1994();
    sub_23B9983B4(v79, v65);
    v80 = v143;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v82 = v119;
        v83 = sub_23B998468(v65, v119);
        v84 = v129;
        MEMORY[0x23EEB50B0](v83);
        v136 = sub_23B997E48(v82, v84);
        (*(v131 + 8))(v84, v133);
        sub_23B9984C0(v82, _s22LocalizedPriceResourceVMa);
      }

      else
      {
        v94 = v130;
        v95 = sub_23B998468(v65, v130);
        MEMORY[0x23EEB50B0](v95);
        v96 = v124;
        if (*(v94 + *(v120 + 20)) == 6)
        {
          sub_23BB74064();
        }

        else
        {
          sub_23BB72A48();
        }

        v97 = v123;
        v98 = v122;
        v99 = v142;
        (*(v123 + 32))(v122, v96, v142);
        v100 = v131;
        (*(v131 + 16))(v129, v132, v133);
        sub_23BBD96A8();
        v101 = OUTLINED_FUNCTION_17_0();
        v102(v101);
        sub_23BBDD028();
        v136 = sub_23BBDD088();

        (*(v97 + 8))(v98, v99);
        (*(v100 + 8))(v132, v133);
        sub_23B9984C0(v130, _s20LocalizationResourceVMa);
        v80 = v143;
      }
    }

    else
    {
      v136 = sub_23BBDD088();
    }

    v91 = v137;
    v103 = v135;
    sub_23BBDCD28();
    sub_23BBDC878();
    v104 = sub_23BBDCF38();
    v70(v47, v39);
    v70(v103, v39);
    if (v104)
    {
      v76 = v138;
      sub_23BAE1994();
      v105 = 0;
    }

    else
    {
      v105 = 1;
      v76 = v138;
    }

    v93 = v139;
    v92 = v141;
    __swift_storeEnumTagSinglePayload(v76, v105, 1, v80);
    __swift_storeEnumTagSinglePayload(v93, 1, 1, v142);
    v75 = v136;
  }

  v106 = sub_23BBDC8C8();
  v108 = v107;
  v109 = sub_23BBDC8B8();
  v111 = v110;
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_4_1();
  (*(v112 + 8))(a1);
  v113 = v140;
  *v140 = v106;
  v113[1] = v108;
  v113[2] = v109;
  v113[3] = v111;
  v114 = v113 + *(type metadata accessor for ProductViewConfiguration(0) + 24);
  sub_23B998468(v144, v114);
  v115 = type metadata accessor for ProductViewButtonConfiguration(0);
  sub_23B99840C(v76, v114 + v115[5], &qword_27E1987C0, &unk_23BBE5DE0);
  v116 = (v114 + v115[6]);
  *v116 = v92;
  v116[1] = v91;
  result = sub_23B99840C(v93, v114 + v115[7], &qword_27E1987C8, &unk_23BBF3BC0);
  *(v114 + v115[8]) = v75;
  return result;
}

uint64_t sub_23B997E48(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BBD9848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBD96B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  sub_23BAE1EA0();
  (*(v4 + 16))(v6, a2, v3);
  sub_23BBD96A8();
  (*(v8 + 16))(v10, v13, v7);
  sub_23BBDD028();
  v14 = sub_23BBDD088();

  (*(v8 + 8))(v13, v7);
  return v14;
}

uint64_t sub_23B998028@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Product.TaskState(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  v11 = OUTLINED_FUNCTION_13_0(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_1();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v30 - v22;
  v24 = type metadata accessor for ProductViewStyleConfiguration(0);
  sub_23B9983B4(a1 + *(v24 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v16 + 32))(v13, v9, v14);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    sub_23B9984C0(v9, type metadata accessor for Product.TaskState);
  }

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    OUTLINED_FUNCTION_1_5();
    sub_23B979910(v13, &qword_27E1987F0, &unk_23BBE5E10);
LABEL_9:
    v27 = 1;
    goto LABEL_10;
  }

  (*(v16 + 32))(v23, v13, v14);
  v25 = *a1;
  if (!*a1)
  {
    OUTLINED_FUNCTION_1_5();
    (*(v16 + 8))(v23, v14);
    goto LABEL_9;
  }

  v26 = a1[1];
  (*(v16 + 16))(v20, v23, v14);

  sub_23B9973F4(v20, a2 & 1, v25, v26, a3);
  OUTLINED_FUNCTION_1_5();
  (*(v16 + 8))(v23, v14);
  v27 = 0;
LABEL_10:
  v28 = type metadata accessor for ProductViewConfiguration(0);
  return __swift_storeEnumTagSinglePayload(a3, v27, 1, v28);
}

unint64_t sub_23B99835C(double a1)
{
  result = qword_27E1987F8;
  if (!qword_27E1987F8)
  {
    sub_23BBDC8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1987F8);
  }

  return result;
}

uint64_t sub_23B9983B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

uint64_t sub_23B99840C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

uint64_t sub_23B998468(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

uint64_t sub_23B9984C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return sub_23B9984C0(v0, type metadata accessor for ProductViewStyleConfiguration);
}

uint64_t sub_23B998590(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800, qword_23BBE5E20);
    OUTLINED_FUNCTION_10_2();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[8];
    }

    else
    {
      type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
      OUTLINED_FUNCTION_10_2();
      if (*(v14 + 84) == a2)
      {
        v9 = v13;
        v10 = a3[9];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
        v10 = a3[10];
      }
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_23B998718(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
    OUTLINED_FUNCTION_10_2();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800, qword_23BBE5E20);
      OUTLINED_FUNCTION_10_2();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[8];
      }

      else
      {
        type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
        OUTLINED_FUNCTION_10_2();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[9];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
          v11 = a4[10];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_23B998894(uint64_t a1)
{
  sub_23B9989D8(319, &qword_27E197B20, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(319);
    if (v2 <= 0x3F)
    {
      sub_23B9989D8(319, &qword_27E198818, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_23B998A24(319, &qword_27E198820, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SubscriptionOfferViewButtonConfiguration(319);
          if (v5 <= 0x3F)
          {
            sub_23B998A24(319, &qword_27E198828, MEMORY[0x277CDD330]);
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

void sub_23B9989D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23BBDD648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B998A24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBDD648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23B998A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23BBD96B8();
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_23B998B3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_23BBD96B8();
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

unint64_t sub_23B998BE0(uint64_t a1)
{
  result = sub_23BBD96B8();
  if (v2 <= 0x3F)
  {
    result = sub_23B975E04();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B998C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v293 = a1;
  v291 = a2;
  v258 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_13_3(v4 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800, qword_23BBE5E20);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v7);
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198840, &unk_23BBE5EB0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  v14 = OUTLINED_FUNCTION_13_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_3();
  v269 = v16;
  v17 = OUTLINED_FUNCTION_5_3();
  v255 = type metadata accessor for SubscriptionStoreCopyWriter(v17);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  v22 = OUTLINED_FUNCTION_13_0(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_3();
  v274 = v27;
  v28 = OUTLINED_FUNCTION_5_3();
  v275 = type metadata accessor for Subscription(v28);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198850, &qword_23BBE5EC0);
  OUTLINED_FUNCTION_13_0(v33);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22_2();
  v273 = v35;
  v36 = OUTLINED_FUNCTION_5_3();
  v272 = type metadata accessor for SubscriptionComparator.Compared(v36);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_1();
  v265 = v39 - v38;
  v40 = OUTLINED_FUNCTION_5_3();
  v41 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(v40);
  OUTLINED_FUNCTION_7();
  v278 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v279 = &v241 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = OUTLINED_FUNCTION_5_3();
  v47 = type metadata accessor for SubscriptionOfferViewButtonConfiguration(v46);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3_1();
  v51 = v50 - v49;
  v52 = sub_23BBDCFC8();
  v53 = OUTLINED_FUNCTION_13_0(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_1();
  v280 = v55 - v54;
  OUTLINED_FUNCTION_5_3();
  sub_23BBD96B8();
  OUTLINED_FUNCTION_7();
  v288 = v57;
  v289 = v56;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v59);
  v61 = &v241 - v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_3();
  v286 = v63;
  OUTLINED_FUNCTION_5_3();
  sub_23BBD9848();
  OUTLINED_FUNCTION_7();
  v276 = v65;
  v277 = v64;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_3_5();
  v283 = v66;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_6_3();
  v287 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  v70 = OUTLINED_FUNCTION_13_0(v69);
  MEMORY[0x28223BE20](v70);
  v72 = &v241 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v75 = &v241 - v74;
  v76 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v282 = v77;
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v79);
  v81 = &v241 - v80;
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_6_3();
  v285 = v83;
  v84 = OUTLINED_FUNCTION_5_3();
  type metadata accessor for SubscriptionOfferViewConfiguration(v84);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_3_1();
  v88 = (v87 - v86);
  v88[2] = 0;
  v88[3] = 0;
  v262 = *(v89 + 28);
  *(v88 + v262) = 2;
  v292 = v89;
  v290 = *(v89 + 32);
  OUTLINED_FUNCTION_8_1();
  v281 = v47;
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v47);
  v284 = v41;
  v93 = v293 + *(v41 + 40);
  if (*(v93 + 16) == 1)
  {
    sub_23BAC74B0(*v93, v75);
    OUTLINED_FUNCTION_16_2(v75);
    if (!v212)
    {
      v248 = v81;
      v101 = v282;
      v102 = *(v282 + 32);
      v249 = v76;
      v247 = v282 + 32;
      v246 = v102;
      v103 = (v102)(v285, v75);
      v104 = v287;
      MEMORY[0x23EEB50B0](v103);
      v250 = v88;
      sub_23BBDCF48();
      sub_23BBD9838();
      v105 = v286;
      sub_23BB73D2C();
      v106 = sub_23B99A29C(v105, v104);
      v107 = (v288 + 2);
      v245 = v288[2];
      v245(v61, v105, v289);
      sub_23B99A918();
      v108 = swift_allocObject();
      sub_23B99A8C0();
      result = sub_23BBDC2A8();
      if ((result & 1) == 0 && __OFADD__(v106++, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      v111 = v288[4];
      v278 = v288 + 4;
      v279 = v107;
      v111(v51, v61, v289);
      v112 = v281;
      v113 = (v51 + *(v281 + 20));
      *v113 = sub_23B99A864;
      v113[1] = v108;
      *(v51 + *(v112 + 24)) = v106;
      v97 = v292;
      v114 = v250;
      sub_23B99A8C0();
      v115 = v293;
      sub_23B979510();
      sub_23B979510();
      v116 = v249;
      if (__swift_getEnumTagSinglePayload(v72, 1, v249) == 1)
      {
        sub_23B979910(v72, &qword_27E1987F0, &unk_23BBE5E10);
        v117 = SubscriptionOfferViewStyleConfiguration.subscriptionGroupDisplayName.getter();
        v119 = v118;
        *v114 = v117;
        v114[1] = v118;
        v120 = v273;
        sub_23B979510();
        if (__swift_getEnumTagSinglePayload(v120, 1, v272) == 1)
        {
          v121 = OUTLINED_FUNCTION_10_3();
          v122(v121);
          v123 = OUTLINED_FUNCTION_9_3();
          v124(v123);
          v125 = OUTLINED_FUNCTION_23_1();
          v126(v125);
          OUTLINED_FUNCTION_0_4();
          sub_23B99A4FC(v115, v127);
          sub_23B979910(v120, &qword_27E198850, &qword_23BBE5EC0);

LABEL_22:
          sub_23B979910(v114 + v290, &qword_27E198800, qword_23BBE5E20);
          sub_23B99A4FC(v114 + *(v97 + 36), type metadata accessor for SubscriptionOfferViewButtonConfiguration);
          sub_23B979910(v114 + *(v97 + 40), &qword_27E1987F0, &unk_23BBE5E10);
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_28();
        sub_23B99A8C0();
        sub_23BAB2FCC(v119, v266);
        sub_23B99A4FC(v119, type metadata accessor for SubscriptionComparator.Compared);
        v139 = OUTLINED_FUNCTION_10_3();
        v140(v139);
        v141 = OUTLINED_FUNCTION_9_3();
        v142(v141);
        v143 = OUTLINED_FUNCTION_23_1();
        v144(v143);
        OUTLINED_FUNCTION_0_4();
        sub_23B99A4FC(v115, v145);
        sub_23B99A8C0();
        type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
        swift_storeEnumTagMultiPayload();
LABEL_44:
        sub_23B99A918();
        OUTLINED_FUNCTION_20_2();
        __swift_storeEnumTagSinglePayload(v238, v239, v240, v97);
        return sub_23B99A4FC(v114, type metadata accessor for SubscriptionOfferViewConfiguration);
      }

      v273 = v111;
      v128 = v248;
      v246(v248, v72, v116);
      v129 = v271;
      (*(v101 + 16))(v271, v128, v116);
      v130 = v274;
      sub_23BBA7878(v129, 0, 1, v274);
      v131 = v275;
      if (__swift_getEnumTagSinglePayload(v130, 1, v275) == 1)
      {
        v132 = v130;
        v133 = *(v101 + 8);
        v133(v128, v116);
        v134 = OUTLINED_FUNCTION_10_3();
        v135(v134);
        v136 = OUTLINED_FUNCTION_9_3();
        v137(v136);
        v133(v285, v116);
        OUTLINED_FUNCTION_0_4();
        sub_23B99A4FC(v115, v138);
        sub_23B979910(v132, qword_27E197A68, qword_23BBE3D90);
LABEL_21:
        v114 = v250;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_28();
      sub_23B99A8C0();
      v146 = (v115 + *(v284 + 28));
      if (!*v146)
      {
        OUTLINED_FUNCTION_1_6();
        sub_23B99A4FC(v130, v155);
        v156 = *(v101 + 8);
        v157 = v249;
        v156(v248, v249);
        v158 = OUTLINED_FUNCTION_10_3();
        v159(v158);
        v160 = OUTLINED_FUNCTION_9_3();
        v161(v160);
        v156(v285, v157);
        OUTLINED_FUNCTION_0_4();
        sub_23B99A4FC(v115, v162);
        goto LABEL_21;
      }

      v243 = *v146;
      v147 = v146[1];
      OUTLINED_FUNCTION_7_4();
      v148 = v254;
      sub_23B99A918();
      sub_23B979510();
      OUTLINED_FUNCTION_28();
      sub_23B979510();
      v242 = v147;

      v149 = sub_23BAB34DC(v148, v130);
      v151 = v150;
      v152 = v148 + *(v131 + 20);
      v153 = *(v152 + 8);
      if (v153 == 2)
      {
        v271 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
        v272 = v154;
      }

      else
      {
        v271 = *v152;
        v272 = v153 & 1;
      }

      v284 = sub_23BBDC8C8();
      v274 = v163;
      v266 = sub_23BBDC8B8();
      v265 = v164;
      v247 = sub_23BBDC8E8();
      v246 = v165;
      KeyPath = swift_getKeyPath();
      sub_23B9FF918(KeyPath);

      v167 = sub_23BBDCD08();
      OUTLINED_FUNCTION_20_2();
      __swift_storeEnumTagSinglePayload(v168, v169, v170, v167);
      v171 = 0;
      if ((v151 & 1) == 0)
      {
        swift_getKeyPath();
        sub_23B9FCC2C();
        v173 = v172;

        if (v173 >= v149)
        {
          swift_getKeyPath();
          sub_23B9FCC2C();
          v175 = v174;

          if (v149 == v175)
          {
            v171 = 4;
          }

          else
          {
            v171 = 2;
          }
        }

        else
        {
          v171 = 8;
        }
      }

      v244 = v153 == 2;
      v176 = v269;
      sub_23B979510();
      v177 = v255;
      v178 = v256;
      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v179, v180, v181, v167);
      v182 = *(v177 + 36);
      sub_23B979910(v268, qword_27E197A68, qword_23BBE3D90);
      sub_23B979910(v176, &unk_27E19FEF0, &unk_23BBE3E40);
      OUTLINED_FUNCTION_1_6();
      sub_23B99A4FC(v148, v183);
      *(v178 + v182) = 0;
      sub_23BBDCC88();
      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v184, v185, v186, v187);
      v188 = v272;
      *v178 = v271;
      *(v178 + 8) = v188;
      *(v178 + 16) = v244;
      v189 = v274;
      *(v178 + 24) = v284;
      *(v178 + 32) = v189;
      v190 = v265;
      *(v178 + 40) = v266;
      *(v178 + 48) = v190;
      v191 = v246;
      *(v178 + 56) = v247;
      *(v178 + 64) = v191;
      sub_23B99A974();
      *(v178 + v182) = v171;
      sub_23B99A974();
      v192 = v261;
      sub_23B99A8C0();
      v193 = v270;
      v194 = sub_23BBDC8C8();
      v195 = v250;
      *v250 = v194;
      v195[1] = v196;
      v195[2] = sub_23BBDC8B8();
      v195[3] = v197;
      v198 = v195 + *(v292 + 24);
      sub_23BB95108();
      sub_23BB95108();
      _s11PriceStringOMa(0);
      OUTLINED_FUNCTION_20_2();
      __swift_storeEnumTagSinglePayload(v199, v200, v201, v202);
      type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
      swift_storeEnumTagMultiPayload();
      v203 = v264;
      sub_23B979510();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_28();
      sub_23B99A918();
      OUTLINED_FUNCTION_20_2();
      __swift_storeEnumTagSinglePayload(v204, v205, v206, v275);
      v207 = *(v259 + 48);
      v208 = v260;
      sub_23B979510();
      sub_23B979510();
      OUTLINED_FUNCTION_16_2(v208);
      if (v212)
      {
        OUTLINED_FUNCTION_29(v198);
        OUTLINED_FUNCTION_29(v203);
        OUTLINED_FUNCTION_16_2(v207 + v208);
        v209 = v289;
        if (v212)
        {
          sub_23B979910(v208, qword_27E197A68, qword_23BBE3D90);
          OUTLINED_FUNCTION_24_1();
          *(v211 + v210) = 1;
          OUTLINED_FUNCTION_17_3();
LABEL_41:
          sub_23BBDCFD8();
          sub_23BBD9838();
          v216 = v257;
          sub_23BB73D2C();
          v217 = 1;
LABEL_42:
          v220 = (v245)(v207, v216, v209);
          MEMORY[0x23EEB50B0](v220);
          v289 = sub_23B99A29C(v216, v203);
          v221 = v277;
          v222 = *(v276 + 8);
          v222(v203, v277);
          v223 = v193;
          v224 = v288[1];
          v224(v216, v209);
          sub_23B99A4FC(v192, type metadata accessor for SubscriptionStoreCopyWriter);
          OUTLINED_FUNCTION_1_6();
          sub_23B99A4FC(v223, v225);
          v226 = *(v282 + 8);
          v227 = v249;
          v226(v248, v249);
          v224(v286, v209);
          v222(v287, v221);
          v226(v285, v227);
          OUTLINED_FUNCTION_0_4();
          result = sub_23B99A4FC(v293, v228);
          v229 = v289 + v217;
          if (!__OFADD__(v289, v217))
          {
            v230 = v253;
            v273(v253, v267, v209);
            v231 = v281;
            v232 = (v230 + *(v281 + 20));
            v233 = v242;
            *v232 = v243;
            v232[1] = v233;
            *(v230 + *(v231 + 24)) = v229;
            OUTLINED_FUNCTION_20_2();
            __swift_storeEnumTagSinglePayload(v234, v235, v236, v237);
            v114 = v250;
            sub_23B99A974();
            v97 = v292;
            goto LABEL_44;
          }

LABEL_46:
          __break(1u);
          return result;
        }
      }

      else
      {
        v203 = v252;
        sub_23B979510();
        OUTLINED_FUNCTION_16_2(v207 + v208);
        v209 = v289;
        if (!v212)
        {
          OUTLINED_FUNCTION_8_4();
          v218 = v251;
          sub_23B99A8C0();
          v219 = sub_23BBA82BC(v203, v218);
          sub_23B99A4FC(v218, type metadata accessor for Subscription);
          v207 = qword_27E197A68;
          sub_23B979910(v263, qword_27E197A68, qword_23BBE3D90);
          sub_23B979910(v264, qword_27E197A68, qword_23BBE3D90);
          sub_23B99A4FC(v203, type metadata accessor for Subscription);
          v193 = v270;
          sub_23B979910(v208, qword_27E197A68, qword_23BBE3D90);
          *(v250 + v262) = v219 & 1;
          OUTLINED_FUNCTION_17_3();
          if (v219)
          {
            goto LABEL_41;
          }

LABEL_39:
          v216 = v257;
          sub_23BB9459C();
          v217 = 0;
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_29(v263);
        OUTLINED_FUNCTION_29(v264);
        OUTLINED_FUNCTION_1_6();
        sub_23B99A4FC(v203, v213);
      }

      sub_23B979910(v208, &qword_27E198840, &unk_23BBE5EB0);
      OUTLINED_FUNCTION_24_1();
      *(v215 + v214) = 0;
      OUTLINED_FUNCTION_17_3();
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_0_4();
    sub_23B99A4FC(v293, v94);
    sub_23B979910(v75, &qword_27E1987F0, &unk_23BBE5E10);
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    sub_23B99A4FC(v95, v96);
  }

  sub_23B979910(v88 + v290, &qword_27E198800, qword_23BBE5E20);
  v97 = v292;
LABEL_7:
  OUTLINED_FUNCTION_8_1();
  return __swift_storeEnumTagSinglePayload(v98, v99, v100, v97);
}

uint64_t sub_23B99A29C(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BBD9848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBD96B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  sub_23BBD9738();
  (*(v4 + 16))(v6, a2, v3);
  sub_23BBD96A8();
  (*(v8 + 16))(v10, v13, v7);
  sub_23BBDD028();
  v14 = sub_23BBDD088();

  (*(v8 + 8))(v13, v7);
  return v14;
}

uint64_t sub_23B99A484(uint64_t a1)
{
  result = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  v3 = (a1 + *(result + 24));
  if (*v3)
  {
    return (*v3)();
  }

  return result;
}

uint64_t sub_23B99A4FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B99A554()
{
  v1 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for Subscription(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v5 + 8))(v0 + v2);
  }

  v6 = v3 + v1[5];
  v7 = type metadata accessor for SubscriptionComparator.Compared(0);
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v8 + 8))(v6);
    v9 = *(v7 + 20);
    v10 = sub_23BBDCC88();
    if (!__swift_getEnumTagSinglePayload(v6 + v9, 1, v10))
    {
      (*(*(v10 - 8) + 8))(v6 + v9, v10);
    }
  }

  if (*(v3 + v1[6]))
  {
  }

  if (*(v3 + v1[7]))
  {
  }

  v11 = v1[8];
  v12 = sub_23BBDCC88();
  if (!__swift_getEnumTagSinglePayload(v3 + v11, 1, v12))
  {
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  sub_23B99A808(*(v3 + v1[10]), *(v3 + v1[10] + 8), *(v3 + v1[10] + 16));

  v13 = v1[12];
  v14 = sub_23BBDCDB8();
  if (!__swift_getEnumTagSinglePayload(v3 + v13, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v3 + v13, v14);
  }

  return swift_deallocObject();
}

void sub_23B99A808(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_23B99A864()
{
  v1 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  OUTLINED_FUNCTION_13_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_23B99A484(v3);
}

uint64_t sub_23B99A8C0()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23B99A918()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23B99A974()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_17_0();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1)
{

  return sub_23B979910(a1, v1, v2);
}

BOOL sub_23B99AB20(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

BOOL sub_23B99AB4C(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t PagedProminentPickerSubscriptionStoreControlStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_5_4();
  sub_23B99B814(a1, v2, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198858, &unk_23BBE5F30);
  v7 = v6[14];
  v8 = v6[15];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  __swift_storeEnumTagSinglePayload(a2 + v8, 1, 1, v9);
  v10 = a2 + v6[16];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  v11 = a2 + v6[17];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a2 + v6[18];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868, &qword_23BBEE720) + 48));
  sub_23B99B870(v2, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  *v13 = sub_23B99ADC8;
  v13[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198870, &qword_23BBE5FE0);
  swift_storeEnumTagMultiPayload();
  v14 = (a2 + v6[13]);
  *v14 = sub_23B99AECC;
  v14[1] = 0;
  *(a2 + v7) = 2;
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = 17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198878, &qword_23BBE6010);
  v18 = (a2 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = sub_23B99B524;
  v18[2] = v16;
  return result;
}

uint64_t sub_23B99ADC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99B814(a1, v6, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  sub_23B99B870(v6, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988C8, &qword_23BBE91F0);
  v8 = a2 + *(v7 + 40);
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  v10 = (a2 + *(v7 + 36));
  *v10 = sub_23B9D11BC;
  v10[1] = 0;
  return result;
}

uint64_t sub_23B99AECC(uint64_t a1)
{
  v2 = sub_23BBDABB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SubscriptionStoreButton(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23B99B814(a1, v8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v9 = &v8[v6[5]];
  v9[48] = 0;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;
  v10 = &v8[v6[6]];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 16) = 0;
  v11 = &v8[v6[7]];
  KeyPath = swift_getKeyPath();
  v17[15] = 0;
  *v11 = KeyPath;
  v11[73] = 0;
  v13 = &v8[v6[8]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &v8[v6[9]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  sub_23BBDABA8();
  sub_23B99B770(&qword_27E1988B8, type metadata accessor for SubscriptionStoreButton, &protocol conformance descriptor for SubscriptionStoreButton);
  sub_23B99B770(&qword_27E1988C0, MEMORY[0x277CDDF40], MEMORY[0x277CDDF38]);
  sub_23BBDB6E8();
  v15 = (*(v3 + 8))(v5, v2);
  return sub_23B99B7B8(v8, v15);
}

double sub_23B99B154()
{
  OUTLINED_FUNCTION_1_7();
  v1.n128_f64[0] = sub_23BB1AF04(v0);
  *&result = OUTLINED_FUNCTION_0_5(v2, v3, v4, v5, v6, v7, v8, v9, v1, v12, v10, v13, v14).n128_u64[0];
  return result;
}

double sub_23B99B184()
{
  OUTLINED_FUNCTION_1_7();
  v1.n128_f64[0] = sub_23BB1AF04(v0);
  *&result = OUTLINED_FUNCTION_0_5(v2, v3, v4, v5, v6, v7, v8, v9, v1, v12, v10, v13, v14).n128_u64[0];
  return result;
}

double sub_23B99B208()
{
  OUTLINED_FUNCTION_1_7();
  v1.n128_f64[0] = sub_23BB491B0(v0);
  *&result = OUTLINED_FUNCTION_0_5(v2, v3, v4, v5, v6, v7, v8, v9, v1, v12, v10, v13, v14).n128_u64[0];
  return result;
}

uint64_t sub_23B99B260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(_OWORD *))
{
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = *(a1 + 32);
  sub_23B972538(v11, v10, a5, a6);
  return a7(v11);
}

uint64_t sub_23B99B304(uint64_t a1)
{
  v3 = sub_23BBDA308();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_4();
  (*(v4 + 16))(v1, a1);
  return sub_23BBDA6C8();
}

uint64_t sub_23B99B3C0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA2E8();
  *v0 = result & 1;
  return result;
}

uint64_t sub_23B99B3EC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA2E8();
  *v0 = result & 1;
  return result;
}

double sub_23B99B418()
{
  OUTLINED_FUNCTION_1_7();
  v1.n128_f64[0] = sub_23BB491B0(v0);
  *&result = OUTLINED_FUNCTION_0_5(v2, v3, v4, v5, v6, v7, v8, v9, v1, v12, v10, v13, v14).n128_u64[0];
  return result;
}

uint64_t sub_23B99B474()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BAC7148();
  *v0 = result;
  return result;
}

uint64_t sub_23B99B49C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BAC7148();
  *v0 = result;
  return result;
}

unint64_t sub_23B99B54C()
{
  result = qword_27E198880;
  if (!qword_27E198880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198880);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PagedProminentPickerSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23B99B63CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23B99B678()
{
  result = qword_27E198888;
  if (!qword_27E198888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198878, &qword_23BBE6010);
    sub_23B97B518(&qword_27E198890, &qword_27E198858, &unk_23BBE5F30, &protocol conformance descriptor for SubscriptionStorePicker<A, B>);
    sub_23B97B518(&qword_27E198898, &qword_27E1988A0, &unk_23BBE7DB0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198888);
  }

  return result;
}

uint64_t sub_23B99B770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B99B7B8(uint64_t a1, double a2)
{
  v3 = type metadata accessor for SubscriptionStoreButton(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23B99B814(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B99B870(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

__n128 OUTLINED_FUNCTION_0_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, uint64_t a9, __n128 a11, __int128 a12, char a13)
{
  result = a11;
  *v13 = a11;
  *(v13 + 16) = a12;
  *(v13 + 32) = a13;
  return result;
}

uint64_t sub_23B99B94C()
{

  OUTLINED_FUNCTION_14_2(OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_purchaseTimestamp);
  OUTLINED_FUNCTION_14_2(OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_appearTimestamp);
  OUTLINED_FUNCTION_14_2(OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_disappearTimestamp);
  return v0;
}

uint64_t sub_23B99B9B0()
{
  sub_23B99B94C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for StoreViewEventConfiguration(uint64_t a1)
{
  result = qword_27E1988D0;
  if (!qword_27E1988D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B99BA5C(uint64_t a1)
{
  sub_23B99BB44(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23B99BB44(uint64_t a1)
{
  if (!qword_27E1988E0)
  {
    sub_23BBD9828();
    v1 = sub_23BBDD648();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1988E0);
    }
  }
}

uint64_t sub_23B99BB9C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = sub_23BBD9828();
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_appliesSubscriptionOffer) = 3;
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v1);
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_initializer) = 3;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_style) = 5;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyCustomPlaceholder) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyIcon) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseCompletion) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseOptions) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseStart) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_prefersPromotionalIcon) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_purchaseResult) = 4;
  v11 = v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsRequested;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsLoaded;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_displaysRestorePurchases) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_didSendAppearEvent) = 0;
  return v0;
}

void *sub_23B99BD20(void *result, void *a2, void *a3, void *a4)
{
  *(v4 + *a2) = *result != 0;
  *(v4 + *a3) = result[4] != 0;
  *(v4 + *a4) = result[2] != 0;
  return result;
}

void sub_23B99BD60()
{
  v1 = OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_didSendAppearEvent;
  if ((*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_didSendAppearEvent) & 1) == 0)
  {
    sub_23B99C844(&v4);
    if (v5 != 1)
    {
      v8[0] = v4;
      v8[1] = v5;
      v9 = v6;
      v10[0] = v7[0];
      *(v10 + 11) = *(v7 + 11);
      *(v0 + v1) = 1;
      if (qword_27E197798 != -1)
      {
        OUTLINED_FUNCTION_6_4(&qword_27E197798);
      }

      v2 = type metadata accessor for SKLogger(0);
      v3 = __swift_project_value_buffer(v2, qword_27E1BFD50);
      sub_23BB13224(v8, v3);
      sub_23B979910(&v4, &qword_27E1988F8, &qword_23BBE6278);
    }
  }
}

uint64_t sub_23B99BE24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198908, &qword_23BBE6288);
  OUTLINED_FUNCTION_13_0(v0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - v2;
  v4 = type metadata accessor for StoreViewDisappearEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  sub_23B99C8F4(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_23B979910(v3, &qword_27E198908, &qword_23BBE6288);
  }

  sub_23B99D320(v3, v8, type metadata accessor for StoreViewDisappearEvent);
  if (qword_27E197798 != -1)
  {
    OUTLINED_FUNCTION_6_4(&qword_27E197798);
  }

  v10 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v10, qword_27E1BFD50);
  sub_23BB133F4();
  return sub_23B99D2C8(v8, type metadata accessor for StoreViewDisappearEvent);
}

uint64_t sub_23B99BFA4@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v44 = a4;
  v45 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900, &qword_23BBE6280);
  v10 = OUTLINED_FUNCTION_13_0(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = sub_23BBD9828();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  v23 = *a2;
  swift_beginAccess();
  sub_23B99D380(v5 + v23, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_23B979910(v15, &qword_27E198900, &qword_23BBE6280);
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v24 = type metadata accessor for SKLogger(0);
    OUTLINED_FUNCTION_16_3(v24, qword_27E1BFC88);
    v25 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_13_4(v25))
    {
      swift_slowAlloc();
      v47[0] = OUTLINED_FUNCTION_5_5();
      *v22 = 136446466;
      *(v22 + 4) = sub_23BA5AB90(0, 0xE000000000000000, v47);
      *(v22 + 6) = 2082;
      *(v22 + 14) = sub_23BA5AB90(0xD000000000000032, 0x800000023BBE0380, v47);
      OUTLINED_FUNCTION_18_4(&dword_23B970000, v26, v27, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    type metadata accessor for MintDisappearBaseEvent(0);
  }

  else
  {
    v42 = v17;
    v43 = a5;
    v28 = *(v17 + 32);
    v28(v22, v15, v16);
    v29 = *a3;
    swift_beginAccess();
    sub_23B99D380(v5 + v29, v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v16) != 1)
    {
      v28(v19, v12, v16);
      v38 = v43;
      v28(v43, v22, v16);
      v39 = type metadata accessor for MintDisappearBaseEvent(0);
      v28(&v38[v39[5]], v19, v16);
      v38[v39[6]] = *(v5 + *v44);
      v38[v39[7]] = v45 & 1;
      OUTLINED_FUNCTION_20_2();
      v37 = v39;
      return __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    }

    sub_23B979910(v12, &qword_27E198900, &qword_23BBE6280);
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v30 = type metadata accessor for SKLogger(0);
    v31 = OUTLINED_FUNCTION_16_3(v30, qword_27E1BFC88);
    v32 = sub_23BBD9988();
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v33 = 136446466;
      *(v33 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v46);
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_23BA5AB90(0xD000000000000035, 0x800000023BBE03C0, &v46);
      _os_log_impl(&dword_23B970000, v32, v31, "%{public}s%{public}s", v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    (*(v42 + 8))(v22, v16);
    type metadata accessor for MintDisappearBaseEvent(0);
  }

  OUTLINED_FUNCTION_8_1();
  return __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
}

uint64_t sub_23B99C4B8(uint64_t a1, char a2, void *a3, unsigned int a4, uint64_t a5, char a6)
{
  v24 = a5;
  v23 = a4;
  v22 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900, &qword_23BBE6280);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  sub_23BBD9818();
  sub_23BBD9828();
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_appearTimestamp;
  swift_beginAccess();
  sub_23B99D3F0(v13, v6 + v18);
  swift_endAccess();
  *(v6 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_initializer) = a2 & 1;
  *(v6 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyIcon) = a6;
  v19 = sub_23BA8CE60(a1);
  v20 = v6 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsRequested;
  *v20 = v19;
  *(v20 + 8) = 0;
  sub_23B99BD20(v22, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseStart, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseOptions, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseCompletion);
  *(v6 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_displaysRestorePurchases) = sub_23BBD9BD8() & 1;
  return sub_23B99C640(v24);
}

uint64_t sub_23B99C640(uint64_t a1)
{
  v2 = swift_dynamicCastMetatype();
  if (v2 || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || (result = swift_dynamicCastMetatype()) != 0)
  {
    result = swift_dynamicCastMetatype();
    v4 = result == 0;
    if (!(v2 | result))
    {
      result = swift_dynamicCastMetatype();
      if (result)
      {
        v4 = 3;
      }

      else
      {
        result = swift_dynamicCastMetatype();
        if (result)
        {
          v4 = 2;
        }

        else
        {
          v4 = 4;
        }
      }
    }
  }

  else
  {
    v4 = 4;
  }

  *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_style) = v4;
  return result;
}

uint64_t sub_23B99C72C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900, &qword_23BBE6280);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  sub_23BBD9818();
  sub_23BBD9828();
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_disappearTimestamp;
  swift_beginAccess();
  sub_23B99D3F0(v9, v3 + v14);
  swift_endAccess();
  sub_23B99BD20(a1, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseStart, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseOptions, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseCompletion);
  *(v3 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_displaysRestorePurchases) = sub_23BBD9BD8() & 1;
  return sub_23B99C640(a2);
}

uint64_t sub_23B99C844@<X0>(uint64_t a1@<X8>)
{
  sub_23B99CDE4(&v11);
  v2 = v11;
  if ((v11 & 0xFF0000) == 0x20000)
  {
    result = 0;
    v2 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0uLL;
    v8 = 1;
  }

  else
  {
    v5 = v14 | (v15 << 16);
    v4 = v13;
    v10 = v12;
    result = sub_23BB11FBC();
    v7 = v10;
    v6 = v9 & 0xFFFFFF;
  }

  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v6;
  *(a1 + 24) = v2;
  *(a1 + 32) = v7;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 58) = BYTE2(v5);
  return result;
}

uint64_t sub_23B99C8F4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198910, &qword_23BBE6290);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for MintDisappearBaseEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99CDE4(&v22);
  v8 = v22;
  if ((v22 & 0xFF0000) != 0x20000)
  {
    sub_23B99BFA4(0, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_appearTimestamp, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_disappearTimestamp, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_purchaseResult, v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      sub_23B99D320(v4, v7, type metadata accessor for MintDisappearBaseEvent);
      v12 = sub_23BB11FBC();
      v14 = v13;
      v16 = v15;
      v17 = v15 >> 8;
      v18 = HIWORD(v15);
      v19 = type metadata accessor for StoreViewDisappearEvent(0);
      sub_23B99D320(v7, a1 + *(v19 + 24), type metadata accessor for MintDisappearBaseEvent);
      *a1 = v12;
      *(a1 + 8) = v14;
      *(a1 + 16) = v16;
      *(a1 + 17) = v17;
      *(a1 + 18) = v18;
      *(a1 + 24) = v8;
      *(a1 + 32) = v23[0];
      *(a1 + 43) = *(v23 + 11);
      v10 = a1;
      v11 = 0;
      v9 = v19;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    }

    sub_23B979910(v4, &qword_27E198910, &qword_23BBE6290);
  }

  v9 = type metadata accessor for StoreViewDisappearEvent(0);
  v10 = a1;
  v11 = 1;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

uint64_t sub_23B99CAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988E8, &qword_23BBFC980);
  OUTLINED_FUNCTION_13_0(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = type metadata accessor for MintViewBasePurchaseEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v47 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988F0, &qword_23BBE6270);
  OUTLINED_FUNCTION_13_0(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for ProductViewBaseEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  sub_23B99CDE4(&v48);
  v21 = v48;
  if ((v48 & 0xFF0000) == 0x20000)
  {
    goto LABEL_9;
  }

  if (a1)
  {
    sub_23BB65634(v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      OUTLINED_FUNCTION_4_6();
      sub_23B99D320(v15, v20, v22);
      sub_23BB120B0();
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
      {
        v34 = v47;
        sub_23B99D320(v7, v47, type metadata accessor for MintViewBasePurchaseEvent);
        v35 = sub_23BB11FBC();
        v37 = v36;
        v39 = v38;
        v45 = HIWORD(v38);
        v46 = v38 >> 8;
        v40 = type metadata accessor for StoreViewPurchaseEvent(0);
        OUTLINED_FUNCTION_4_6();
        sub_23B99D320(v20, a2 + v41, v42);
        sub_23B99D320(v34, a2 + *(v40 + 28), type metadata accessor for MintViewBasePurchaseEvent);
        *a2 = v35;
        *(a2 + 8) = v37;
        *(a2 + 16) = v39;
        v43 = v45;
        *(a2 + 17) = v46;
        *(a2 + 18) = v43;
        *(a2 + 24) = v21;
        *(a2 + 32) = v49[0];
        *(a2 + 43) = *(v49 + 11);
        OUTLINED_FUNCTION_20_2();
        v32 = v40;
        return __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
      }

      sub_23B99D2C8(v20, type metadata accessor for ProductViewBaseEvent);
      v23 = &qword_27E1988E8;
      v24 = &qword_23BBFC980;
      v25 = v7;
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v16);
  }

  v23 = &qword_27E1988F0;
  v24 = &qword_23BBE6270;
  v25 = v15;
LABEL_8:
  sub_23B979910(v25, v23, v24);
LABEL_9:
  type metadata accessor for StoreViewPurchaseEvent(0);
  OUTLINED_FUNCTION_8_1();
  return __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
}

void sub_23B99CDE4(uint64_t a1@<X8>)
{
  v5 = v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_initializer];
  if (v5 == 3)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v6 = type metadata accessor for SKLogger(0);
    OUTLINED_FUNCTION_16_3(v6, qword_27E1BFC88);
    v7 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v7))
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  v12 = v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_prefersPromotionalIcon];
  if (v12 == 2)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v13 = type metadata accessor for SKLogger(0);
    OUTLINED_FUNCTION_16_3(v13, qword_27E1BFC88);
    v14 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v14))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v17 = OUTLINED_FUNCTION_3_7(4.8752e-34, v15, v16);
    OUTLINED_FUNCTION_1_8(v17);
    v11 = v18 + 11;
    goto LABEL_21;
  }

  if (v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsRequested + 8])
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v19 = type metadata accessor for SKLogger(0);
    OUTLINED_FUNCTION_16_3(v19, qword_27E1BFC88);
    v20 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v20))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v23 = OUTLINED_FUNCTION_3_7(4.8752e-34, v21, v22);
    OUTLINED_FUNCTION_1_8(v23);
    v11 = v24 + 6;
    goto LABEL_21;
  }

  v25 = v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_style];
  if (v25 == 5)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v26 = type metadata accessor for SKLogger(0);
    OUTLINED_FUNCTION_16_3(v26, qword_27E1BFC88);
    v27 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v27))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v30 = OUTLINED_FUNCTION_3_7(4.8752e-34, v28, v29);
    OUTLINED_FUNCTION_1_8(v30);
    v11 = v31 - 6;
    goto LABEL_21;
  }

  v39 = v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyIcon];
  if (v39 == 2)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v40 = type metadata accessor for SKLogger(0);
    OUTLINED_FUNCTION_16_3(v40, qword_27E1BFC88);
    v41 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v41))
    {
      goto LABEL_23;
    }

LABEL_5:
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    *(v2 + 4) = OUTLINED_FUNCTION_3_7(4.8752e-34, v8, v9);
    *(v2 + 12) = 2082;
    v10 = v3 | 0x8000000000000000;
    v11 = 0xD00000000000002ALL;
LABEL_22:
    *(v2 + 14) = sub_23BA5AB90(v11, v10, &v49);
    OUTLINED_FUNCTION_18_4(&dword_23B970000, v32, v33, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
    goto LABEL_23;
  }

  v42 = v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyCustomPlaceholder];
  if (v42 != 2)
  {
    v36 = *&v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsRequested];
    v34 = *&v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsLoaded];
    v38 = (v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_displaysRestorePurchases] | (v5 << 8)) & 0xFFFFFFFFFFFEFFFFLL | ((v12 & 1) << 16);
    v35 = v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsLoaded + 8];
    v37 = v25 & 0xFFFEFEFF | ((v39 & 1) << 8) | ((v42 & 1) << 16);
    goto LABEL_24;
  }

  if (qword_27E1976D0 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
  }

  v43 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_16_3(v43, qword_27E1BFC88);
  v44 = sub_23BBD9988();
  if (OUTLINED_FUNCTION_13_4(v44))
  {
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v47 = OUTLINED_FUNCTION_3_7(4.8752e-34, v45, v46);
    OUTLINED_FUNCTION_1_8(v47);
    v11 = v48 + 13;
LABEL_21:
    v10 = v3 | 0x8000000000000000;
    goto LABEL_22;
  }

LABEL_23:

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0x20000;
LABEL_24:
  *a1 = v38;
  *(a1 + 8) = v34;
  *(a1 + 16) = v35;
  *(a1 + 24) = v36;
  *(a1 + 32) = v37;
  *(a1 + 34) = BYTE2(v37);
}

uint64_t sub_23B99D1DC()
{
  sub_23B99D468();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23B99D254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23BBDB748();
}

uint64_t sub_23B99D2C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B99D320(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23B99D380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900, &qword_23BBE6280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B99D3F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900, &qword_23BBE6280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B99D468()
{
  result = qword_27E198918[0];
  if (!qword_27E198918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E198918);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

unint64_t OUTLINED_FUNCTION_3_7(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v3 = a1;

  return sub_23BA5AB90(0, 0xE000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_13_4(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_14_2@<X0>(uint64_t a1@<X8>)
{

  return sub_23B979910(v2 + a1, v1, v3);
}

void OUTLINED_FUNCTION_15_3()
{

  JUMPOUT(0x23EEB6DC0);
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_23BBDD588();
}

void OUTLINED_FUNCTION_18_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_23B99D650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23BBDD848();
  OUTLINED_FUNCTION_6_5(0, a1, v5);
  OUTLINED_FUNCTION_7_6();
  v6 = sub_23BBDD278();

  return MEMORY[0x28214E6C8](v6, a1, v5, a3);
}

uint64_t sub_23B99D6BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_23BBD98C8();
  OUTLINED_FUNCTION_21_1();
  v3 = sub_23BBDD848();
  OUTLINED_FUNCTION_21_1();
  v4 = sub_23BBDD278();
  MEMORY[0x23EEB5FD0](v4, v3);
  OUTLINED_FUNCTION_21_1();
  sub_23BBDD848();
  sub_23BBDD808();
  return v2;
}

void sub_23B99D750()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v42 = v8;
  OUTLINED_FUNCTION_3_2();
  v38 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_3_2();
  v36[1] = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_6_5(255, v19, v20);
  OUTLINED_FUNCTION_7_6();
  v43 = v21;
  sub_23BBDD648();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v22);
  v24 = v36 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_2();
  v37 = v26;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  v29 = v36 - v28;
  v39 = v1;
  v44 = sub_23B99D650(v7, v5, v1);
  v45 = v30;
  v46 = v31;
  v41 = v29;
  sub_23BBDD188();
  v42 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_5_6();
  while (1)
  {
    sub_23BBDD688();
    if (__swift_getEnumTagSinglePayload(v24, 1, v43) == 1)
    {
      break;
    }

    v32 = OUTLINED_FUNCTION_3_8();
    v33(v32);
    v34 = OUTLINED_FUNCTION_8_5();
    v35(v34);
    type metadata accessor for OrderedMultiMap(0, v7, v5, v39);
    OUTLINED_FUNCTION_14_3();
    (*v3)(v13, v5);
    (*v1)(v18, v7);
  }

  (*(v37 + 8))(v41, v42);
  OUTLINED_FUNCTION_9_1();
}

void sub_23B99DA30()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v5 = *(v1 + 24);
  OUTLINED_FUNCTION_3_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = swift_allocObject();
  v13 = *(v2 + 16);
  v12[2] = v13;
  v12[3] = v5;
  v14 = *(v2 + 32);
  v12[4] = v14;
  (*(v7 + 16))(v11, v4, v5);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v5;
  v15[4] = v14;
  v15[5] = sub_23B99EA64;
  v15[6] = v12;
  v16 = sub_23BBDD848();
  sub_23BBD9938();
  v18 = sub_23BBD9908();
  sub_23BBDD818();
  sub_23B99EA7C(v0, &v18, &v17, v13, v16, v14);

  OUTLINED_FUNCTION_9_1();
}

void sub_23B99DBE8()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v42 = v0;
  v40 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_3_2();
  v38 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_3_2();
  v36[1] = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_6_5(255, v17, v18);
  OUTLINED_FUNCTION_7_6();
  v43 = v19;
  sub_23BBDD648();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  v22 = v36 - v21;
  v23 = *(v1 + 8);
  OUTLINED_FUNCTION_21_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_2();
  v37 = v25;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  v28 = v36 - v27;
  v29 = sub_23BBDD458();
  v44 = sub_23B99D6BC(v29, v6);
  v45 = v30;
  v46 = v31;
  v41 = v28;
  sub_23BBDD188();
  v42 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_5_6();
  while (1)
  {
    sub_23BBDD688();
    if (__swift_getEnumTagSinglePayload(v22, 1, v43) == 1)
    {
      break;
    }

    v32 = OUTLINED_FUNCTION_3_8();
    v33(v32);
    v34 = OUTLINED_FUNCTION_8_5();
    v35(v34);
    type metadata accessor for OrderedMultiMap(0, v6, v4, v40);
    OUTLINED_FUNCTION_14_3();
    (*v23)(v11, v4);
    (*v28)(v16, v6);
  }

  (*(v37 + 8))(v41, v42);
  OUTLINED_FUNCTION_9_1();
}

void sub_23B99DED0(uint64_t a1, uint64_t a2)
{
  sub_23BBDD278();

  JUMPOUT(0x23EEB5FD0);
}

uint64_t sub_23B99DF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_23BBDD848();
  sub_23BBD9948();
  swift_getWitnessTable();
  return sub_23BBDD2B8();
}

uint64_t sub_23B99E010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

void sub_23B99E04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_5(255, a2, a3);
  OUTLINED_FUNCTION_7_6();
  sub_23BBDD2A8();
  swift_getWitnessTable();
  sub_23B99DBE8();
}

void sub_23B99E0D4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_23B99E04C(a1, *(a2 + 16), *(a2 + 24));
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
}

uint64_t sub_23B99E10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v13 = *(type metadata accessor for OrderedMultiMap.Iterator(0, a5, a6, a7) + 44);
  sub_23BBDD848();
  swift_getWitnessTable();
  sub_23BBDD8C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_storeEnumTagSinglePayload(&a8[v13], 1, 1, TupleTypeMetadata2);
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v15 = sub_23BBDD648();
  (*(*(v15 - 8) + 8))(&a8[v13], v15);

  return __swift_storeEnumTagSinglePayload(&a8[v13], 1, 1, TupleTypeMetadata2);
}

void sub_23B99E244()
{
  OUTLINED_FUNCTION_10_0();
  v92 = v0;
  v2 = v1;
  v90 = v3;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = sub_23BBDD848();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_7_6();
  v88 = v7;
  sub_23BBDD648();
  OUTLINED_FUNCTION_3_2();
  v82 = v9;
  v83 = v8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v87 = &v75 - v11;
  v12 = OUTLINED_FUNCTION_11_3();
  v81 = OUTLINED_FUNCTION_6_5(v12, v13, v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v80 = &v75 - v15;
  v91 = v4;
  v77 = *(v4 - 8);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v84 = v18 - v17;
  swift_getWitnessTable();
  v19 = sub_23BBDD8C8();
  v20 = OUTLINED_FUNCTION_6_5(255, v5, v19);
  v21 = sub_23BBDD648();
  OUTLINED_FUNCTION_3_2();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_5();
  v79 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v75 - v27;
  OUTLINED_FUNCTION_3_2();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_5();
  v78 = v32;
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v75 - v35;
  v37 = *(v23 + 16);
  v89 = v92 + *(v2 + 44);
  v37(v28, v34);
  if (__swift_getEnumTagSinglePayload(v28, 1, v20) == 1)
  {
    v84 = v30;
    (*(v23 + 8))(v28, v21);
    v38 = v91;
LABEL_5:
    OUTLINED_FUNCTION_11_3();
    sub_23BBD9928();
    v44 = v87;
    sub_23BBD9918();
    v45 = v88;
    if (__swift_getEnumTagSinglePayload(v44, 1, v88) != 1)
    {
      v51 = *(v44 + *(v45 + 48));
      v85 = v2;
      v86 = v21;
      v52 = v23;
      v53 = v44;
      v54 = v80;
      v55 = v81;
      v56 = *(v81 + 48);
      v57 = v84;
      v58 = *(v84 + 32);
      v58(v80, v53, v5);
      *&v54[v56] = v51;
      v59 = *&v54[*(v55 + 48)];
      v60 = v78;
      v58(v78, v54, v5);
      v61 = v79;
      v62 = (v79 + *(v20 + 48));
      (*(v57 + 16))(v79, v60, v5);
      *v62 = v59;

      v63 = sub_23BBDD7E8();

      v62[1] = v63;
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v20);
      (*(v52 + 40))(v89, v61, v86);
      sub_23B99E244();
      (*(v57 + 8))(v60, v5);
LABEL_11:
      OUTLINED_FUNCTION_9_1();
      return;
    }

    (*(v82 + 8))(v44, v83);
    v46 = OUTLINED_FUNCTION_11_3();
    v48 = OUTLINED_FUNCTION_6_5(v46, v47, v38);
    v49 = v90;
    v50 = 1;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v49, v50, 1, v48);
    goto LABEL_11;
  }

  v76 = v23;
  v85 = v2;
  v86 = v21;
  v39 = &v28[*(v20 + 48)];
  v41 = *v39;
  v40 = *(v39 + 1);
  v75 = *(v30 + 32);
  v75(v36, v28, v5);
  v93 = v40;
  v42 = *(v41 + 16);
  if (v40 == v42)
  {
    v84 = v30;
    (*(v30 + 8))(v36, v5);

    v23 = v76;
    v43 = v89;
    v21 = v86;
    (*(v76 + 8))(v89, v86);
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v20);
    v38 = v91;
    v2 = v85;
    goto LABEL_5;
  }

  if (v40 < v42)
  {
    v64 = v20;
    v65 = v77;
    v66 = v91;
    (*(v77 + 16))(v84, v41 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v40, v91);
    sub_23BBDD828();
    v67 = v89;
    (*(v76 + 8))(v89, v86);
    v68 = (v67 + *(v64 + 48));
    (*(v30 + 16))(v67, v36, v5);
    v69 = v93;
    *v68 = v41;
    v68[1] = v69;
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v64);
    v70 = OUTLINED_FUNCTION_11_3();
    v72 = OUTLINED_FUNCTION_6_5(v70, v71, v66);
    v73 = *(v72 + 48);
    v74 = v90;
    v75(v90, v36, v5);
    (*(v65 + 32))(v74 + v73, v84, v66);
    v49 = v74;
    v50 = 0;
    v48 = v72;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_23B99E8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{

  return sub_23B99E10C(a1, a2, a3, 0, a4, a5, a6, a7);
}

uint64_t sub_23B99E970@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  sub_23B99E8DC(*v2, v2[1], v2[2], a1[2], a1[3], a1[4], a2);
}

uint64_t sub_23B99EA10@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

uint64_t sub_23B99EAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23B99EB24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23B99EB64(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23B99EBA4(uint64_t a1)
{
  sub_23BBDD848();
  result = sub_23BBD9928();
  if (v2 <= 0x3F)
  {
    swift_getWitnessTable();
    sub_23BBDD8C8();
    swift_getTupleTypeMetadata2();
    result = sub_23BBDD648();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B99EC94(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v5 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = *(*(v4 - 8) + 64) + 7;
  if (v9 < a2)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + ((v10 + 39) & ~v11) + 16;
    v14 = a2 - v9;
    v15 = v13 & 0xFFFFFFF8;
    if ((v13 & 0xFFFFFFF8) != 0)
    {
      v16 = 2;
    }

    else
    {
      v16 = v14 + 1;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    switch(v18)
    {
      case 1:
        v19 = *(a1 + v13);
        if (!v19)
        {
          break;
        }

        goto LABEL_25;
      case 2:
        v19 = *(a1 + v13);
        if (v19)
        {
          goto LABEL_25;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B99EE3CLL);
      case 4:
        v19 = *(a1 + v13);
        if (!v19)
        {
          break;
        }

LABEL_25:
        v21 = v19 - 1;
        if (v15)
        {
          v21 = 0;
          LODWORD(v15) = *a1;
        }

        return v9 + (v15 | v21) + 1;
      default:
        break;
    }
  }

  if ((v8 & 0x80000000) != 0)
  {
    v23 = (a1 + v11 + 32) & ~v11;
    if (v6 < 0x7FFFFFFF)
    {
      v25 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      EnumTagSinglePayload = v25 + 1;
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, v6, v4);
    }

    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v22 = *(a1 + 8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }
}

void sub_23B99EE50(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = v9 - 1;
  if ((v9 - 1) <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9 - 1;
  }

  v12 = *(v7 + 80) & 0xF8;
  v13 = v12 | 7;
  v14 = *(*(v6 - 8) + 64) + 7;
  v15 = ((v12 + 39) & ~(v12 | 7)) + (v14 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v15)
  {
    v16 = 2;
  }

  else
  {
    v16 = a3 - v11 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v11 < a3)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (a2 > v11)
  {
    if (v15)
    {
      v20 = 1;
    }

    else
    {
      v20 = a2 - v11;
    }

    if (v15)
    {
      v21 = ~v11 + a2;
      bzero(a1, v15);
      *a1 = v21;
    }

    switch(v19)
    {
      case 1:
        a1[v15] = v20;
        return;
      case 2:
        *&a1[v15] = v20;
        return;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v15] = v20;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    case 3:
LABEL_53:
      __break(1u);
      JUMPOUT(0x23B99F0A0);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_35;
    default:
LABEL_35:
      if (a2)
      {
LABEL_36:
        if ((v10 & 0x80000000) != 0)
        {
          v22 = (&a1[v13 + 32] & ~v13);
          if (v10 >= a2)
          {
            if (v8 < 0x7FFFFFFF)
            {
              v26 = ((v22 + v14) & 0xFFFFFFFFFFFFFFF8);
              if (((a2 + 1) & 0x80000000) != 0)
              {
                *v26 = a2 - 0x7FFFFFFF;
                v26[1] = 0;
              }

              else
              {
                *v26 = a2;
              }
            }

            else
            {
              v24 = &a1[v13 + 32] & ~v13;
              v25 = a2 + 1;

              __swift_storeEnumTagSinglePayload(v24, v25, v8, v6);
            }
          }

          else if ((v14 & 0xFFFFFFF8) != 0xFFFFFFF0)
          {
            v23 = a2 - v9;
            bzero((&a1[v13 + 32] & ~v13), (v14 & 0xFFFFFFFFFFFFFFF8) + 16);
            *v22 = v23;
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *(a1 + 2) = 0;
          *(a1 + 3) = 0;
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = a2 - 1;
        }
      }

      return;
  }
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getTupleTypeMetadata2();
}

void OUTLINED_FUNCTION_14_3()
{

  sub_23B99DA30();
}

uint64_t sub_23B99F17C(uint64_t a1)
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

uint64_t sub_23B99F280()
{
  sub_23B99F210();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23B99F31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDB388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AA0, &qword_23BBE6588);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AA8, &qword_23BBE6590) + 36);
  *v6 = v4;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  if (qword_27E197680 != -1)
  {
    swift_once();
  }

  v20 = *&qword_27E1BFC20;
  v21 = xmmword_27E1BFC10;
  v7 = sub_23BBDB398();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AB0, &qword_23BBE6598) + 36);
  *v8 = v7;
  *(v8 + 24) = v20;
  *(v8 + 8) = v21;
  *(v8 + 40) = 0;
  if (qword_27E197670 != -1)
  {
    swift_once();
  }

  v9 = qword_27E1BFC00;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AB8, &unk_23BBE65A0) + 36));
  v11 = *(sub_23BBDA468() + 20);
  v12 = *MEMORY[0x277CE0118];
  sub_23BBDAA88();
  OUTLINED_FUNCTION_4_1();
  (*(v13 + 104))(v10 + v11, v12);
  *v10 = v9;
  v10[1] = v9;
  *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AC0, &qword_23BBF33B0) + 36)) = 256;
  v14 = sub_23BBDC318();
  v16 = v15;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AC8, &qword_23BBE65B0) + 36));
  sub_23B99F560(v17);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AD0, &qword_23BBE65B8);
  v19 = (v17 + *(result + 36));
  *v19 = v14;
  v19[1] = v16;
  return result;
}

uint64_t sub_23B99F560@<X0>(void *a1@<X8>)
{
  v54 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AD8, &qword_23BBE65C0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v52 - v2);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AE0, &qword_23BBE65C8);
  MEMORY[0x28223BE20](v53);
  v5 = &v52 - v4;
  v6 = sub_23BBDA468();
  MEMORY[0x28223BE20](v6);
  v8 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AE8, &qword_23BBE65D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AF0, &qword_23BBE65D8);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  if (sub_23BBDC2A8())
  {
    if (qword_27E197670 != -1)
    {
      swift_once();
    }

    v15 = qword_27E1BFC00;
    v16 = *(v6 + 20);
    v17 = *MEMORY[0x277CE0118];
    v18 = sub_23BBDAA88();
    (*(*(v18 - 8) + 104))(v8 + v16, v17, v18);
    *v8 = v15;
    v8[1] = v15;
    sub_23BBDBD08();
    v19 = sub_23BBDBD58();

    sub_23BBD9C68();
    sub_23B987944(v8, v11, v20);
    v21 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198B18, &qword_23BBE65F8) + 36)];
    v22 = v56;
    *v21 = v55;
    *(v21 + 1) = v22;
    *(v21 + 4) = v57;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198B20, &qword_23BBE6600);
    *&v11[*(v23 + 52)] = v19;
    *&v11[*(v23 + 56)] = 256;
    v24 = sub_23BBDC318();
    v26 = v25;
    sub_23B987438(v8, v27);
    v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198B28, &qword_23BBE6608) + 36)];
    *v28 = v24;
    v28[1] = v26;
    sub_23B987944(v11, v14, v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198B30, &qword_23BBE6610);
    *&v14[*(v30 + 52)] = 3;
    *&v14[*(v30 + 56)] = 256;
    v31 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198B38, &qword_23BBE6618) + 36)];
    sub_23B99FCE0(v11, v31, &qword_27E198AE8, &qword_23BBE65D0);
    v32 = sub_23BBDC318();
    v34 = v33;
    sub_23B979910(v11, &qword_27E198AE8, &qword_23BBE65D0);
    v35 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198B40, &unk_23BBE6620) + 36));
    *v35 = v32;
    v35[1] = v34;
    v36 = &qword_27E198AF0;
    v37 = &qword_23BBE65D8;
    sub_23B99FCE0(v14, v5, &qword_27E198AF0, &qword_23BBE65D8);
    swift_storeEnumTagMultiPayload();
    sub_23B97B518(&qword_27E198B00, &qword_27E198AF0, &qword_23BBE65D8, MEMORY[0x277CDF6D8]);
    sub_23B99FC28();
    sub_23BBDACD8();
    v38 = v14;
  }

  else
  {
    if (qword_27E197670 != -1)
    {
      swift_once();
    }

    v39 = qword_27E1BFC00;
    v40 = *(v6 + 20);
    v41 = *MEMORY[0x277CE0118];
    v42 = sub_23BBDAA88();
    (*(*(v42 - 8) + 104))(v3 + v40, v41, v42);
    *v3 = v39;
    v3[1] = v39;
    v43 = sub_23BBDBD38();
    v44 = [objc_opt_self() systemGray5Color];
    v45 = sub_23BBDBCA8();
    *&v55 = v43;
    *(&v55 + 1) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198270, &unk_23BBE65E0);
    sub_23B987F20();
    sub_23B97B518(&qword_27E198298, &qword_27E198270, &unk_23BBE65E0, &unk_23BBEAA18);
    v46 = sub_23BBDBDE8();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AF8, &qword_23BBE65F0);
    *(v3 + *(v47 + 52)) = v46;
    *(v3 + *(v47 + 56)) = 256;
    sub_23BBDBD18();
    v48 = sub_23BBDBD58();

    if (qword_27E197678 != -1)
    {
      swift_once();
    }

    v49 = qword_27E1BFC08;
    v50 = (v3 + *(v1 + 36));
    *v50 = v48;
    v50[1] = v49;
    v50[2] = 0;
    v50[3] = 0;
    v36 = &qword_27E198AD8;
    v37 = &qword_23BBE65C0;
    sub_23B99FCE0(v3, v5, &qword_27E198AD8, &qword_23BBE65C0);
    swift_storeEnumTagMultiPayload();
    sub_23B97B518(&qword_27E198B00, &qword_27E198AF0, &qword_23BBE65D8, MEMORY[0x277CDF6D8]);
    sub_23B99FC28();
    sub_23BBDACD8();
    v38 = v3;
  }

  return sub_23B979910(v38, v36, v37);
}

unint64_t sub_23B99FC28()
{
  result = qword_27E198B08;
  if (!qword_27E198B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198AD8, &qword_23BBE65C0);
    sub_23B97B518(&qword_27E198B10, &qword_27E198AF8, &qword_23BBE65F0, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198B08);
  }

  return result;
}

uint64_t sub_23B99FCE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_23B99FD44()
{
  result = qword_27E198B48;
  if (!qword_27E198B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198AC8, &qword_23BBE65B0);
    sub_23B99FDFC();
    sub_23B97B518(&qword_27E198B78, &qword_27E198AD0, &qword_23BBE65B8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198B48);
  }

  return result;
}

unint64_t sub_23B99FDFC()
{
  result = qword_27E198B50;
  if (!qword_27E198B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198AB8, &unk_23BBE65A0);
    sub_23B99FEB4();
    sub_23B97B518(&qword_27E198B70, &qword_27E198AC0, &qword_23BBF33B0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198B50);
  }

  return result;
}

unint64_t sub_23B99FEB4()
{
  result = qword_27E198B58;
  if (!qword_27E198B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198AB0, &qword_23BBE6598);
    sub_23B99FF40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198B58);
  }

  return result;
}

unint64_t sub_23B99FF40()
{
  result = qword_27E198B60;
  if (!qword_27E198B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198AA8, &qword_23BBE6590);
    sub_23B97B518(&qword_27E198B68, &qword_27E198AA0, &qword_23BBE6588, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198B60);
  }

  return result;
}

uint64_t sub_23B9A00DC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEF64657472617453;
  v3 = 0x6573616863727570;
  v4 = a1;
  v5 = 0x6573616863727570;
  v6 = 0xEF64657472617453;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000011;
      v6 = 0x800000023BBDF6E0;
      break;
    case 2:
      v5 = 0x6E657053656D6974;
      v6 = 0xEF776569566E4974;
      break;
    case 3:
      v6 = 0xEE00746C75736552;
      v5 = 0x6573616863727570;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000011;
      v2 = 0x800000023BBDF6E0;
      break;
    case 2:
      v3 = 0x6E657053656D6974;
      v2 = 0xEF776569566E4974;
      break;
    case 3:
      v2 = 0xEE00746C75736552;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_4(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_23B9A0274(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEE004449656C646ELL;
  v3 = 0x7542646568736168;
  v4 = a1;
  v5 = 0x7542646568736168;
  v6 = 0xEE004449656C646ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x7250646568736168;
      v6 = 0xEF4449746375646FLL;
      break;
    case 2:
      v6 = 0x800000023BBDF670;
      v5 = 0xD00000000000001BLL;
      break;
    case 3:
      v6 = 0x800000023BBDF650;
      v5 = 0xD000000000000018;
      break;
    case 4:
      v6 = 0x800000023BBDF630;
      v5 = 0xD000000000000016;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x7250646568736168;
      v2 = 0xEF4449746375646FLL;
      break;
    case 2:
      v2 = 0x800000023BBDF670;
      v3 = 0xD00000000000001BLL;
      break;
    case 3:
      v2 = 0x800000023BBDF650;
      v3 = 0xD000000000000018;
      break;
    case 4:
      v2 = 0x800000023BBDF630;
      v3 = 0xD000000000000016;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_4(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_23B9A0458(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  if (v5 == a3(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_23BBDDA88();
  }

  return v10 & 1;
}

uint64_t sub_23B9A04E8(unsigned __int8 a1, char a2)
{
  v2 = 0x746E6572727563;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746E6572727563;
  switch(v4)
  {
    case 1:
      v5 = 0x646172676E776F64;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0x61726773736F7263;
      v3 = 0xEA00000000006564;
      break;
    case 3:
      v5 = 0x65646172677075;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 7105633;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x646172676E776F64;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0x61726773736F7263;
      v6 = 0xEA00000000006564;
      break;
    case 3:
      v2 = 0x65646172677075;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 7105633;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23BBDDA88();
  }

  return v8 & 1;
}

uint64_t sub_23B9A0714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_23B9A15F4(a4, a5, a6);
  sub_23BBDD218();
  sub_23BBDD218();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_4(v15, v9, v13);
  }

  return v11 & 1;
}

uint64_t sub_23B9A0828@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(type metadata accessor for AutomaticSubscriptionStorePickerOptionLabel(0) + 20));
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v7 + 32);
  LODWORD(v7) = *(v7 + 33);
  v11 = v9;
  v17 = v9;
  v18 = v8;
  if (v7 == 1)
  {
    result = sub_23B9A165C(v9, *(&v9 + 1), v8);
    v14 = v17;
    v13 = v18;
  }

  else
  {

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v16 = sub_23B9A163C(v11, *(&v17 + 1), v18, *(&v18 + 1), v10, 0);
    result = (*(v4 + 8))(v6, v3, v16);
    v14 = v19;
    v13 = v20;
    LOBYTE(v10) = v21;
  }

  *a1 = v14;
  *(a1 + 16) = v13;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_23B9A09D4()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for AutomaticSubscriptionStorePickerOptionLabel(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_23BBDD5A8();
    v7 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t AutomaticSubscriptionStorePickerOptionLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v60 = v7 - v6;
  v8 = sub_23BBDAA38();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_3_1();
  v9 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  v18 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v22 = (v21 - v20);
  sub_23B9A1020(v2, v17, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  sub_23B9A1020(v17, v12, type metadata accessor for SubscriptionStoreControlOption);
  sub_23B9A10D8(v17, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  sub_23B9A0828(v61);
  sub_23BB9494C();
  v23 = *(v22 + *(v19 + 44));
  if ((v23 & 8) != 0)
  {
    sub_23BBDAA28();
    sub_23BBDAA18();
    sub_23BBDAA08();
    sub_23BBDAA18();
    v24 = sub_23BBDAA58();
  }

  else if ((v23 & 6) != 0)
  {
    v24 = sub_23BB747BC(v22[3], v22[4]);
  }

  else
  {

    v24 = sub_23BBDAA48();
  }

  v28 = v24;
  v29 = v25;
  v59 = v26;
  v58 = v27;
  sub_23BB95108();
  v30 = *(v4 + 20);
  sub_23BB95108();
  v31 = _s11PriceStringOMa(0);
  __swift_storeEnumTagSinglePayload(v60 + v30, 0, 1, v31);
  v56 = v22[6];
  v57 = v22[5];
  v32 = *(v2 + *(v13 + 20));

  sub_23B9A0828(v62);
  v34 = v63;
  v33 = v64;
  v35 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  if (v33 >= 2)
  {
    if (v34 == v35 && v33 == v36)
    {

      sub_23B9A11EC(v62);
      v37 = 1;
    }

    else
    {
      v37 = sub_23BBDDA88();

      sub_23B9A11EC(v62);
    }
  }

  else
  {

    v37 = 0;
  }

  v39 = *(v2 + *(type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0) + 20));
  if (v39)
  {
    v53 = v37;
    v54 = v32;
    v55 = v29;
    v40 = v28;
    v41 = v2 + *(type metadata accessor for Subscription(0) + 20);
    v42 = *(v41 + 8);
    if (v42 == 2)
    {
      v43 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v45 = v44;
    }

    else
    {
      v43 = *v41;
      v45 = v42 & 1;
    }

    v47 = v42 == 2;
    v46 = v39(v43, v45, v47);
    sub_23B979A38(v43, v45, v47);
    v28 = v40;
    v29 = v55;
    v37 = v53;
    v32 = v54;
  }

  else
  {
    v46 = 0;
  }

  v48 = sub_23B9A09D4();
  sub_23B9A10D8(v22, type metadata accessor for SubscriptionStoreCopyWriter);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198B80, &qword_23BBE6630);
  *(a1 + v49[14]) = v46;
  *a1 = v28;
  *(a1 + 8) = v29;
  *(a1 + 16) = v59 & 1;
  *(a1 + 24) = v58;
  sub_23B9A1130(v60, a1 + v49[9]);
  v50 = (a1 + v49[10]);
  *v50 = v57;
  v50[1] = v56;
  *(a1 + v49[11]) = 0;
  *(a1 + v49[12]) = v32;
  *(a1 + v49[13]) = v37 & 1;
  *(a1 + v49[15]) = v48;
  v51 = a1 + v49[16];
  result = swift_getKeyPath();
  *v51 = result;
  *(v51 + 8) = 0;
  return result;
}

uint64_t sub_23B9A1020(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B9A1080@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA49CC8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B9A10D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B9A1130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9A1194@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA49CC8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B9A11EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988B0, &qword_23BBE6660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B9A1284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 33);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B9A1344(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 33) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for AutomaticSubscriptionStorePickerOptionLabel(uint64_t a1)
{
  result = qword_27E198B88;
  if (!qword_27E198B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B9A143C(uint64_t a1)
{
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(319);
  if (v1 <= 0x3F)
  {
    sub_23B9A14D8(319);
    if (v2 <= 0x3F)
    {
      sub_23B9A153C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23B9A14D8(uint64_t a1)
{
  if (!qword_27E198B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1988B0, &qword_23BBE6660);
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E198B98);
    }
  }
}

void sub_23B9A153C()
{
  if (!qword_27E198BA0)
  {
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E198BA0);
    }
  }
}

unint64_t sub_23B9A1590()
{
  result = qword_27E198BA8;
  if (!qword_27E198BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198B80, &qword_23BBE6630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198BA8);
  }

  return result;
}

uint64_t sub_23B9A15F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_23B9A163C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_23B9A1648(a1, a2, a3);
  }

  else
  {
  }

  return result;
}

uint64_t sub_23B9A1648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_23B9A165C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_23BBDDA88();
}

uint64_t StoreProminentButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v33 = a2;
  v30 = sub_23BBDB588();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for StoreKitProminentButtonStyle(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BBDB308();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198BC8, &qword_23BBE6710);
  OUTLINED_FUNCTION_7();
  v20 = v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v30 - v23;
  (*(v14 + 16))(v17, v31, v12, v22);
  v25 = v30;
  sub_23BBDBFB8();
  KeyPath = swift_getKeyPath();
  v35 = 0;
  *v11 = KeyPath;
  v11[73] = 0;
  (*(v3 + 104))(v8, *MEMORY[0x277CE0AC0], v25);
  if (qword_27E197708 != -1)
  {
    swift_once();
  }

  v34 = qword_27E1BFCB0;
  (*(v3 + 16))(v32, v8, v25);
  sub_23B974940();
  sub_23BBD9D18();
  (*(v3 + 8))(v8, v25);
  v11[*(v9 + 24)] = 0;
  v11[*(v9 + 28)] = 0;
  sub_23B9A1A44();
  sub_23B9A1AA8(v27);
  sub_23BBDB738();
  sub_23B9A1B00(v11, v28);
  return (*(v20 + 8))(v24, v18);
}

unint64_t sub_23B9A1A44()
{
  result = qword_27E198BD0;
  if (!qword_27E198BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198BC8, &qword_23BBE6710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198BD0);
  }

  return result;
}