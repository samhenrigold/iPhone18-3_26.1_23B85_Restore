void sub_216927B20()
{
  if (!qword_280E4A490)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E4A490);
    }
  }
}

uint64_t sub_216927BD4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v18[0] = v0[2];
  v18[1] = v1;
  v18[2] = v2;
  v18[3] = v3;
  v18[4] = v4;
  v18[5] = v5;
  v18[6] = v7;
  v18[7] = v6;
  v8 = type metadata accessor for ShelfCollection(0, v18);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_5_39();
  return sub_216922C80(v9, v10, v11, v12, v13, v14, v15, v16, v7, v6);
}

uint64_t sub_216927C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[9];
  v17[0] = v3[2];
  v17[1] = v5;
  v17[2] = v6;
  v17[3] = v7;
  v17[4] = v8;
  v17[5] = v9;
  v17[6] = v10;
  v17[7] = v11;
  v12 = type metadata accessor for ShelfCollection(0, v17);
  OUTLINED_FUNCTION_2(v12);
  return sub_216923620(a1, a2, v3 + ((*(v13 + 80) + 80) & ~*(v13 + 80)), v5, a3, v8);
}

void sub_216927DEC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_216927B20();
    if (v2 <= 0x3F)
    {
      sub_2166B0B84();
      if (v3 <= 0x3F)
      {
        sub_2169294B0(319, &qword_280E29DF0, &qword_27CABCC98, &unk_21702A060, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216927EE0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10;
    v9 = (a2 - v7 + 0xFFFF) >> 16;
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

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_216928040(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
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
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 23] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10);
    if (v10 <= 3)
    {
      v16 = HIWORD(v15) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216928254()
{
  v0 = OUTLINED_FUNCTION_12_30();
  v2 = type metadata accessor for _ShelfCollection(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_5_39();

  return sub_2169240C4(v3, v4, v5, v6, v7);
}

void sub_216928304(uint64_t a1)
{
  sub_216927B20();
  if (v1 <= 0x3F)
  {
    sub_2166B0B84();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_2169294B0(319, &qword_280E29DF0, &qword_27CABCC98, &unk_21702A060, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_2169294B0(319, &qword_280E2B478, &qword_27CABB9E8, qword_217028D30, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2169294B0(319, &qword_280E2B4A8, &qword_27CAB7930, &qword_21701A250, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_2167CBB2C(319);
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

uint64_t sub_2169284A0(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v55 = *(a3 + 16);
  v75 = *(v55 - 8);
  if (*(v75 + 84) <= 0x7FFFFFFFu)
  {
    v3 = 0x7FFFFFFF;
  }

  else
  {
    v3 = *(v75 + 84);
  }

  v58 = *(v75 + 84);
  v59 = v3;
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38, &qword_217024F30) - 8);
  v70 = *(v57 + 84);
  v69 = *(v57 + 64);
  v4 = *(sub_217005EF4() - 8);
  v67 = *(v4 + 84);
  v5 = *(v4 + 80);
  v68 = *(v4 + 64);
  v6 = *(sub_21700C384() - 8);
  v63 = *(v6 + 80);
  v74 = *(v6 + 64);
  v7 = *(sub_21700DFD4() - 8);
  v62 = *(v7 + 80);
  v73 = *(v7 + 64);
  v8 = *(sub_217009124() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v56 = *(sub_21700D7A4() - 8);
  v11 = *(v56 + 84);
  v66 = *(v56 + 64);
  v12 = *(sub_21700C4B4() - 8);
  v61 = *(v12 + 80);
  v13 = *(sub_21700C444() - 8);
  v14 = *(v13 + 80);
  LODWORD(v65) = *(v13 + 84);
  HIDWORD(v65) = *(v12 + 84);
  v64 = *(v12 + 64);
  v15 = *(v13 + 64);
  v16 = *(sub_2170067A4() - 8);
  v71 = *(v16 + 80);
  v72 = *(v16 + 64);
  v17 = *(sub_21700C8E4() - 8);
  v18 = *(v17 + 80);
  v19 = *(sub_21700C924() - 8);
  if (*(v19 + 84))
  {
    v20 = *(v19 + 64);
  }

  else
  {
    v20 = *(v19 + 64) + 1;
  }

  v21 = v69;
  if (!v70)
  {
    v21 = v69 + 1;
  }

  v22 = 8;
  if (v21 <= 8)
  {
    v21 = 8;
  }

  if (v67)
  {
    v23 = v68;
  }

  else
  {
    v23 = v68 + 1;
  }

  v24 = *(v19 + 80);
  v25 = v24 | v18;
  v26 = ((v9 + 32) & ~v9) + v10;
  v27 = v20 + ((*(v17 + 64) + v24) & ~v24);
  v28 = *(v75 + 80);
  v29 = ((v5 + 113) & ~v5) + v23;
  v30 = v14 | v61;
  v31 = v66;
  if (!v11)
  {
    v31 = v66 + 1;
  }

  v32 = ((v5 + 16 + ((((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v5) + v23 + v30;
  if (v65)
  {
    v33 = 0;
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 - (((v64 + v14) & ~v14) + v15);
  v35 = (v34 - (v32 | v30) - 2) | v30;
  v36 = v9 | 7;
  v37 = ((((((v73 + ((((v29 + v63) & ~v63) + v74 + v62) & ~v62) + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + (v9 | 7) + 16) & ~(v9 | 7)) + v26;
  v38 = (((v9 | 7) + v29 + (((v5 | 7) + v15 - ((-9 - v14) | v14) - ((v34 - (v14 | 7) + v35) | v14 | 7) - 2) & ~(v5 | 7))) & ~(v9 | 7)) + v26;
  if (v38 > v37)
  {
    v37 = v38;
  }

  v39 = 7;
  if (!HIDWORD(v65))
  {
    v39 = 8;
  }

  v40 = ((v68 + v36 + ((v5 + 16 + ((((((v39 + v64) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v5) + 2) & ~v36) + v26;
  if (v40 > v37)
  {
    v37 = v40;
  }

  v41 = (((v29 + v71) & ~v71) + v72 + v25) & ~v25;
  if (v27 <= 1)
  {
    v27 = 1;
  }

  v42 = ((v36 + v27 + v41 + 1) & ~v36) + v26;
  if (v42 <= v37)
  {
    v42 = v37;
  }

  if (((((v10 + ((v9 + 120) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > v42)
  {
    v42 = ((((v10 + ((v9 + 120) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v42 + 1 > 8)
  {
    v22 = v42 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  result = v59;
  if (v59 >= a2)
  {
LABEL_55:
    v53 = a1 & 0xFFFFFFFFFFFFFFF8;
    if ((v58 & 0x80000000) != 0)
    {

      return __swift_getEnumTagSinglePayload((v53 + v28 + 48) & ~v28, v58, v55);
    }

    else
    {
      v54 = *(v53 + 32);
      if (v54 >= 0xFFFFFFFF)
      {
        LODWORD(v54) = -1;
      }

      return (v54 + 1);
    }
  }

  else
  {
    v44 = *(v57 + 80) & 0xF8 | 7;
    v45 = (v44 + ((*(v75 + 64) + ((v28 + 48) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v44;
    LODWORD(v44) = v63 | v5 | *(v56 + 80) & 0xF8 | v62 | v9 | v61;
    v46 = ((v22 + ((v21 + (v44 | v14 | v71 | v25 | 7) + v45 + 1) & ~(v44 | v14 | v71 | v25 | 7)) + 32) & 0xFFFFFFFFFFFFFFF8) + 8;
    v47 = v46 & 0xFFFFFFF8;
    if ((v46 & 0xFFFFFFF8) != 0)
    {
      v48 = 2;
    }

    else
    {
      v48 = a2 - v59 + 1;
    }

    if (v48 >= 0x10000)
    {
      v49 = 4;
    }

    else
    {
      v49 = 2;
    }

    if (v48 < 0x100)
    {
      v49 = 1;
    }

    if (v48 >= 2)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    switch(v50)
    {
      case 1:
        v51 = *(a1 + v46);
        if (!v51)
        {
          goto LABEL_55;
        }

        goto LABEL_51;
      case 2:
        v51 = *(a1 + v46);
        if (!v51)
        {
          goto LABEL_55;
        }

        goto LABEL_51;
      case 3:
        __break(1u);
        return result;
      case 4:
        v51 = *(a1 + v46);
        if (!v51)
        {
          goto LABEL_55;
        }

LABEL_51:
        v52 = v51 - 1;
        if (v47)
        {
          v52 = 0;
          LODWORD(v47) = *a1;
        }

        result = v59 + (v47 | v52) + 1;
        break;
      default:
        goto LABEL_55;
    }
  }

  return result;
}

void sub_216928C7C(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v55 = *(a4 + 16);
  v73 = *(v55 - 8);
  v56 = *(v73 + 84);
  if (v56 <= 0x7FFFFFFF)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = *(v73 + 84);
  }

  v75 = v4;
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38, &qword_217024F30) - 8);
  v63 = *(v72 + 84);
  v62 = *(v72 + 64);
  v5 = *(sub_217005EF4() - 8);
  v60 = *(v5 + 84);
  v6 = *(v5 + 80);
  v61 = *(v5 + 64);
  v7 = *(sub_21700C384() - 8);
  v68 = *(v7 + 80);
  v71 = *(v7 + 64);
  v8 = *(sub_21700DFD4() - 8);
  v9 = *(v8 + 80);
  v70 = *(v8 + 64);
  v10 = *(sub_217009124() - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64);
  v59 = *(sub_21700D7A4() - 8);
  v57 = *(v59 + 84);
  v67 = *(v59 + 64);
  v13 = *(sub_21700C4B4() - 8);
  v58 = *(v13 + 80);
  v14 = *(sub_21700C444() - 8);
  v15 = *(v14 + 80);
  LODWORD(v66) = *(v14 + 84);
  HIDWORD(v66) = *(v13 + 84);
  v65 = *(v13 + 64);
  v64 = *(v14 + 64);
  v16 = *(sub_2170067A4() - 8);
  v17 = *(v16 + 80);
  v69 = *(v16 + 64);
  v18 = *(sub_21700C8E4() - 8);
  v19 = *(v18 + 80);
  v20 = *(sub_21700C924() - 8);
  if (*(v20 + 84))
  {
    v21 = *(v20 + 64);
  }

  else
  {
    v21 = *(v20 + 64) + 1;
  }

  if (v63)
  {
    v22 = v62;
  }

  else
  {
    v22 = v62 + 1;
  }

  if (v22 <= 8)
  {
    v23 = 8;
  }

  else
  {
    v23 = v22;
  }

  if (v60)
  {
    v24 = v61;
  }

  else
  {
    v24 = v61 + 1;
  }

  v25 = *(v20 + 80);
  v26 = v25 | v19;
  v27 = (*(v18 + 64) + v25) & ~v25;
  v28 = ((v11 + 32) & ~v11) + v12;
  v29 = v21 + v27;
  v30 = *(v73 + 80);
  v31 = *(v72 + 80) & 0xF8 | 7;
  v32 = (v31 + ((*(v73 + 64) + ((v30 + 48) & ~v30) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v31;
  v33 = v68 | v6 | *(v59 + 80) & 0xF8 | v9 | v11 | v58 | v15 | v17 | v26 | 7;
  v34 = (v23 + v33 + v32 + 1) & ~v33;
  v35 = ((v6 + 113) & ~v6) + v24;
  v36 = v15 | v58;
  v37 = v67;
  if (!v57)
  {
    v37 = v67 + 1;
  }

  v38 = ((v6 + 16 + ((((v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v6) + v24 + v36;
  if (v66)
  {
    v39 = 0;
  }

  else
  {
    v39 = -1;
  }

  v40 = (v39 - (((v65 + v15) & ~v15) + v64) - (v15 | 7) + ((v39 - (((v65 + v15) & ~v15) + v64) - (v38 | v36) - 2) | v36)) | v15 | 7;
  v41 = v11 | 7;
  v42 = (((v11 | 7) + v35 + (((v6 | 7) + v64 - ((-9 - v15) | v15) - v40 - 2) & ~(v6 | 7))) & ~(v11 | 7)) + v28;
  if (v42 <= ((((((v70 + ((((v35 + v68) & ~v68) + v71 + v9) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + (v11 | 7) + 16) & ~(v11 | 7)) + v28)
  {
    v42 = ((((((v70 + ((((v35 + v68) & ~v68) + v71 + v9) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + (v11 | 7) + 16) & ~(v11 | 7)) + v28;
  }

  v43 = 7;
  if (!HIDWORD(v66))
  {
    v43 = 8;
  }

  v44 = ((v61 + v41 + ((v6 + 16 + ((((((v43 + v65) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v6) + 2) & ~v41) + v28;
  if (v44 > v42)
  {
    v42 = v44;
  }

  v45 = (((v35 + v17) & ~v17) + v69 + v26) & ~v26;
  if (v29 <= 1)
  {
    v29 = 1;
  }

  v46 = ((v41 + v29 + v45 + 1) & ~v41) + v28;
  if (v46 <= v42)
  {
    v46 = v42;
  }

  if (((((v12 + ((v11 + 120) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > v46)
  {
    v46 = ((((v12 + ((v11 + 120) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v46 + 1 > 8)
  {
    v47 = v46 + 1;
  }

  else
  {
    v47 = 8;
  }

  v48 = ((v47 + v34 + 32) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v75 >= a3)
  {
    v51 = 0;
  }

  else
  {
    if (((v47 + v34 + 32) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v49 = a3 - v75 + 1;
    }

    else
    {
      v49 = 2;
    }

    if (v49 >= 0x10000)
    {
      v50 = 4;
    }

    else
    {
      v50 = 2;
    }

    if (v49 < 0x100)
    {
      v50 = 1;
    }

    if (v49 >= 2)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }
  }

  if (a2 <= v75)
  {
    switch(v51)
    {
      case 1:
        *(a1 + v48) = 0;
        if (a2)
        {
          goto LABEL_64;
        }

        break;
      case 2:
        *(a1 + v48) = 0;
        if (a2)
        {
          goto LABEL_64;
        }

        break;
      case 3:
LABEL_75:
        __break(1u);
        break;
      case 4:
        *(a1 + v48) = 0;
        goto LABEL_63;
      default:
LABEL_63:
        if (a2)
        {
LABEL_64:
          v53 = a1 & 0xFFFFFFFFFFFFFFF8;
          if ((v56 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v53 + v30 + 48) & ~v30, a2, v56, v55);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v54 = a2 & 0x7FFFFFFF;
              *(v53 + 40) = 0;
            }

            else
            {
              v54 = a2 - 1;
            }

            *(v53 + 32) = v54;
          }
        }

        break;
    }
  }

  else
  {
    if (v48)
    {
      v52 = 1;
    }

    else
    {
      v52 = a2 - v75;
    }

    if (v48)
    {
      bzero(a1, v48);
      *a1 = ~v75 + a2;
    }

    switch(v51)
    {
      case 1:
        *(a1 + v48) = v52;
        break;
      case 2:
        *(a1 + v48) = v52;
        break;
      case 3:
        goto LABEL_75;
      case 4:
        *(a1 + v48) = v52;
        break;
      default:
        return;
    }
  }
}

void sub_2169294B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_216929540()
{
  v0 = OUTLINED_FUNCTION_12_30();
  v2 = type metadata accessor for _ShelfCollection.ContentView(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_5_39();

  return sub_216926678(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_2169295D0()
{
  v1 = *(v0 + 56);
  v2 = OUTLINED_FUNCTION_23_21();
  v4 = type metadata accessor for _ShelfCollection.ContentView(v2, v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_24_20();
  sub_216926720(v5, v6, v7, v8, v9, v10, v11, v12, v1);
}

void objectdestroy_65Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_149();
  a26 = v28;
  a27 = v29;
  v30 = v27[2];
  a13 = v27[1];
  v31 = v27[3];
  a14 = v30;
  a15 = v31;
  v32 = type metadata accessor for _ShelfCollection.ContentView(0, &a13);
  v33 = v27 + ((*(*(v32 - 1) + 80) + 64) & ~*(*(v32 - 1) + 80));

  OUTLINED_FUNCTION_31_23();
  (*(v34 + 8))(&v33[v35]);

  v36 = v32[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA0, &qword_217028CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38, &qword_217024F30);
    if (!__swift_getEnumTagSinglePayload(&v33[v36], 1, v37))
    {
      OUTLINED_FUNCTION_50();
      (*(v38 + 8))(&v33[v36], v37);
    }
  }

  else
  {
  }

  v39 = &v33[v32[23]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7920, &unk_217028D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = type metadata accessor for ToolbarConfiguration(0);
    if (!OUTLINED_FUNCTION_9_1(v40))
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v41 = type metadata accessor for ContentDescriptor(0);
          if (!OUTLINED_FUNCTION_9_1(v41))
          {

            v42 = *(v36 + 24);
            v43 = sub_217005EF4();
            if (!OUTLINED_FUNCTION_20_1(&v39[v42]))
            {
              OUTLINED_FUNCTION_50();
              (*(v44 + 8))(&v39[v42], v43);
            }
          }

          v45 = type metadata accessor for ArtistPageToolbarContent(0);
          v46 = v45[5];
          sub_21700C384();
          OUTLINED_FUNCTION_9_0();
          (*(v47 + 8))(&v39[v46]);
          v48 = v45[6];
          sub_21700DFD4();
          OUTLINED_FUNCTION_9_0();
          (*(v49 + 8))(&v39[v48]);

          sub_2166B8588(*&v39[v45[8]], *&v39[v45[8] + 8]);

          v50 = type metadata accessor for ArtistPageToolbarContentProvider(0);
          goto LABEL_43;
        case 1u:
          v70 = sub_21700D7A4();
          if (!OUTLINED_FUNCTION_9_1(v70))
          {
            OUTLINED_FUNCTION_50();
            (*(v71 + 8))(v39, v36);
          }

          v72 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
          __swift_destroy_boxed_opaque_existential_1Tm(&v39[v72[5]]);
          OUTLINED_FUNCTION_7_7(v72[6]);

          v73 = v72[7];
          v95 = sub_217005EF4();
          if (!__swift_getEnumTagSinglePayload(&v39[v73], 1, v95))
          {
            OUTLINED_FUNCTION_50();
            (*(v74 + 8))(&v39[v73]);
          }

          v75 = &v39[v72[8]];
          v76 = type metadata accessor for Artwork(0);
          if (!OUTLINED_FUNCTION_20_1(v75))
          {
            sub_21700C4B4();
            OUTLINED_FUNCTION_9_0();
            (*(v77 + 8))(v75);
            v94 = *(v76 + 20);
            sub_21700C444();
            OUTLINED_FUNCTION_9_0();
            (*(v78 + 8))(v75 + v94);
          }

          v79 = &v39[v72[10]];
          if (!OUTLINED_FUNCTION_20_1(v79))
          {
            sub_21700C4B4();
            OUTLINED_FUNCTION_9_0();
            (*(v80 + 8))(v79);
            v81 = *(v76 + 20);
            sub_21700C444();
            OUTLINED_FUNCTION_9_0();
            (*(v82 + 8))(v79 + v81);
          }

          v83 = &v39[v72[11]];
          v84 = type metadata accessor for VideoArtwork(0);
          if (!__swift_getEnumTagSinglePayload(v83, 1, v84))
          {

            v85 = *(v84 + 20);
            sub_21700C444();
            OUTLINED_FUNCTION_9_0();
            (*(v86 + 8))(v83 + v85);
          }

          v87 = &v39[v72[12]];
          v88 = type metadata accessor for ContentDescriptor(0);
          if (!OUTLINED_FUNCTION_20_1(v87))
          {

            v89 = *(v88 + 24);
            if (!__swift_getEnumTagSinglePayload(v87 + v89, 1, v95))
            {
              OUTLINED_FUNCTION_50();
              (*(v90 + 8))(v87 + v89);
            }
          }

          v50 = type metadata accessor for CuratorPageToolbarContentProvider(0);
          goto LABEL_43;
        case 2u:
          v53 = sub_21700C4B4();
          if (!OUTLINED_FUNCTION_9_1(v53))
          {
            OUTLINED_FUNCTION_50();
            (*(v54 + 8))(v39, v36);
          }

          v55 = type metadata accessor for SocialProfileDescriptor(0);
          OUTLINED_FUNCTION_7_7(v55[5]);

          OUTLINED_FUNCTION_7_7(v55[6]);

          OUTLINED_FUNCTION_7_7(v55[7]);

          v56 = v55[8];
          sub_217005EF4();
          OUTLINED_FUNCTION_9_0();
          (*(v57 + 8))(&v39[v56]);
          v50 = type metadata accessor for SocialProfilePageToolbarContentProvider(0);
          goto LABEL_43;
        case 3u:
          v58 = type metadata accessor for ContentDescriptor(0);
          if (!OUTLINED_FUNCTION_9_1(v58))
          {

            v59 = *(v36 + 24);
            v60 = sub_217005EF4();
            if (!OUTLINED_FUNCTION_20_1(&v39[v59]))
            {
              OUTLINED_FUNCTION_50();
              (*(v61 + 8))(&v39[v59], v60);
            }
          }

          v62 = type metadata accessor for GenericMusicItemToolbarContent(0);
          v63 = *(v62 + 20);
          sub_2170067A4();
          OUTLINED_FUNCTION_9_0();
          (*(v64 + 8))(&v39[v63]);
          v65 = &v39[*(v62 + 24)];
          type metadata accessor for MenuContext(0);
          if (!swift_getEnumCaseMultiPayload())
          {
            sub_21700C8E4();
            OUTLINED_FUNCTION_9_0();
            (*(v66 + 8))(v65);
            v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
            v68 = sub_21700C924();
            if (!__swift_getEnumTagSinglePayload(&v65[v67], 1, v68))
            {
              OUTLINED_FUNCTION_50();
              (*(v69 + 8))(&v65[v67], v68);
            }
          }

          v50 = type metadata accessor for GenericMusicItemToolbarContentProvider(0);
LABEL_43:
          v91 = &v39[*(v50 + 20)];

          v92 = *(type metadata accessor for ToolbarProperties(0) + 24);
          sub_217009124();
          OUTLINED_FUNCTION_9_0();
          (*(v93 + 8))(&v91[v92]);
          break;
        case 4u:
          if (*(v39 + 3))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v39);
          }

          if (*(v39 + 8))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v39 + 5);
          }

          v51 = *(type metadata accessor for ReplayPageToolbarProvider(0) + 36);
          sub_217009124();
          OUTLINED_FUNCTION_9_0();
          (*(v52 + 8))(&v39[v51]);

          swift_unknownObjectRelease();
          break;
        default:
          break;
      }
    }
  }

  else
  {
  }

  sub_2166B8588(*&v33[v32[24]], *&v33[v32[24] + 8]);
  swift_deallocObject();
  OUTLINED_FUNCTION_148_0();
}

int *sub_216929F78()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v16[0] = v0[2];
  v16[1] = v1;
  v16[2] = v2;
  v16[3] = v3;
  v16[4] = v4;
  v16[5] = v5;
  v6 = type metadata accessor for _ShelfCollection.ContentView(0, v16);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_24_20();

  return sub_216926834(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21692A060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21692A0AC(uint64_t a1)
{
  sub_21692A98C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *sub_21692A14C()
{
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  return sub_21692A1A4();
}

char *sub_21692A1A4()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 280);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60, &unk_21705EF20);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();

  OUTLINED_FUNCTION_0_1();
  *(v0 + *(v7 + 272)) = v8;
  return sub_216B12724(v3, v2, v1 & 1);
}

uint64_t sub_21692A270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB90, &qword_217028E98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18[-1] - v8;
  v10 = v3[2];
  v11 = v3[3];
  v3[2] = a1;
  v3[3] = a2;

  sub_21667E91C(v10, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = *(v6 + 264);
  *(v13 + 24) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD68, &unk_217043AC0);
  sub_2166D9530(&qword_280E2A2F0, &qword_27CABCD68, &unk_217043AC0, MEMORY[0x277D21A98]);

  sub_21700D1D4();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60, &unk_21705EF20);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  v15 = *(*v3 + 280);
  swift_beginAccess();
  sub_21692AB48(v9, v3 + v15);
  return swift_endAccess();
}

void sub_21692A4B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB90, &qword_217028E98);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60, &unk_21705EF20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - v6;
  OUTLINED_FUNCTION_0_1();
  v9 = *(v8 + 280);
  swift_beginAccess();
  sub_21692A9F0(v0 + v9, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_21692AA60(v3);
    if (qword_27CAB5A68 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_27CABCCC8);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_2166A85FC(0x2928706F7473, 0xE600000000000000, &v22);
      *(v13 + 12) = 2082;
      v15 = [objc_opt_self() callStackSymbols];
      v16 = sub_21700E824();

      v21[1] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
      sub_2166D9530(&qword_280E29E38, &qword_27CAB74F8, &unk_217017160, MEMORY[0x277D83958]);
      v17 = sub_21700E454();
      v19 = v18;

      v20 = sub_2166A85FC(v17, v19, &v22);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_216679000, v11, v12, "Unbalanced call to %{public}s\nStack:\n%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    OUTLINED_FUNCTION_0_1();

    sub_21700CC24();

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_21692A870()
{
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  v3 = v0 + *(v2 + 280);

  return sub_21692AA60(v3);
}

char *sub_21692A8C0()
{
  v0 = sub_216B127F4();

  sub_21692AA60(&v0[*(*v0 + 280)]);
  return v0;
}

uint64_t sub_21692A920()
{
  v0 = sub_21692A8C0();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_21692A98C(uint64_t a1)
{
  if (!qword_280E2A1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCD60, &unk_21705EF20);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A1C8);
    }
  }
}

uint64_t sub_21692A9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB90, &qword_217028E98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21692AA60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB90, &qword_217028E98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21692AAC8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABCCC8);
  __swift_project_value_buffer(v0, qword_27CABCCC8);
  return sub_217007C94();
}

uint64_t sub_21692AB48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB90, &qword_217028E98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21692ABB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD98, &qword_217028F10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - v2, *MEMORY[0x277D85778], v1);
  return sub_21700EAD4();
}

uint64_t sub_21692ACA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78, &qword_217028EF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_21692AE6C();
  v10 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  (*(v3 + 16))(v5, a1, v2);
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v9;
  (*(v3 + 32))(&v12[v11], v5, v2);
  sub_21677BBA0();
}

uint64_t sub_21692AE6C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD80, &qword_217028EF8);
    v1 = swift_allocObject();
    swift_defaultActor_initialize();
    sub_217006224();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78, &qword_217028EF0);
    sub_2166A8A94();
    *(v1 + 112) = sub_21700E384();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_21692AF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_217006224();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v5[6] = *(v8 + 64);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21692B008, a4, 0);
}

uint64_t sub_21692B008()
{
  OUTLINED_FUNCTION_33();
  sub_216A50A8C(*(v0 + 24));

  return MEMORY[0x2822009F8](sub_21692B070, 0, 0);
}

uint64_t sub_21692B070()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  v5 = v0[2];
  (*(v3 + 16))(v1, v2, v4);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v1, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78, &qword_217028EF0);
  sub_21700EA84();
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_21692B1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_217006224();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_21677BBA0();
}

uint64_t sub_21692B374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_21692B394, a4, 0);
}

uint64_t sub_21692B394()
{
  OUTLINED_FUNCTION_33();
  sub_216A50F70();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21692B3EC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v10;
  v12[8] = v9;

  sub_21692B6BC(v7, v8, v10, v9);
  sub_21677BBA0();
}

uint64_t sub_21692B500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_21692B528, 0, 0);
}

uint64_t sub_21692B528()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_21692AE6C();
  *(v0 + 56) = v1;

  return MEMORY[0x2822009F8](sub_21692B590, v1, 0);
}

uint64_t sub_21692B590()
{
  OUTLINED_FUNCTION_33();
  sub_21692B908(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_21692B5F8()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20_0(v5);
  *v6 = v7;
  v6[1] = sub_2167C6858;
  v8 = OUTLINED_FUNCTION_1_12();

  return sub_21692B500(v8, v9, v10, v11, v1, v2, v3, v4);
}

void sub_21692B6BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
    sub_21700DF14();

    sub_21700DF14();
  }
}

uint64_t sub_21692B704(int a1)
{
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCDA0, &qword_217028F38);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v23 = v22 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7840, qword_217028F40);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_37();
  v12 = OUTLINED_FUNCTION_2_50();
  v14 = v13 >> 6;
  v15 = (v5 + 8);
  v22[0] = v10 + 8;
  v22[1] = v10 + 16;
  v26 = v12;
  result = sub_21700DF14();
  v17 = 0;
  if (v1)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_3_60();
      (*(v10 + 16))(v2, v20 + *(v10 + 72) * v19, v8);
      v27[0] = v25;
      v21 = v23;
      sub_21700EA94();
      (*v15)(v21, v24);
      (*(v10 + 8))(v2, v8);
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
    }

    ++v17;
    if (*(v3 + 8 * v18))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21692B908(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v26 = a1;
  v27 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD70, &qword_217028EE8);
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78, &qword_217028EF0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  swift_beginAccess();
  v11 = *(v4 + 112);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = (v5 + 8);
  v23[0] = v8 + 8;
  v23[1] = v8 + 16;
  v30 = v11;
  result = sub_21700DF14();
  for (i = 0; v15; result = (*(v8 + 8))(v10, v7))
  {
    v20 = i;
LABEL_9:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v8 + 16))(v10, *(v30 + 56) + *(v8 + 72) * (v21 | (v20 << 6)), v7);
    v31 = v26;
    v32 = v27;
    v33 = v28;
    v34 = v29;
    sub_21692B6BC(v26, v27, v28, v29);
    v22 = v24;
    sub_21700EA94();
    (*v17)(v22, v25);
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v16)
    {
    }

    v15 = *(v12 + 8 * v20);
    ++i;
    if (v15)
    {
      i = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21692BB9C(char a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD88, &unk_217028F00);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD90, &unk_217029E00);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_37();
  v13 = OUTLINED_FUNCTION_2_50();
  v15 = v14 >> 6;
  v25 = v11 + 16;
  v24 = a1 & 1;
  v16 = (v6 + 8);
  v23 = v11 + 8;
  v28 = v13;
  result = sub_21700DF14();
  v18 = 0;
  if (v1)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_3_60();
      (*(v11 + 16))(v2, v21 + *(v11 + 72) * v20, v9);
      v29[0] = v24;
      v22 = v26;
      sub_21700EA94();
      (*v16)(v22, v27);
      (*(v11 + 8))(v2, v9);
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
    }

    ++v18;
    if (*(v3 + 8 * v19))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21692BDB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78, &qword_217028EF0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_7_11();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_2167C6580;
  v4 = OUTLINED_FUNCTION_1_12();

  return sub_21692AF30(v4, v5, v6, v7, v8);
}

uint64_t sub_21692BE90(uint64_t a1)
{
  v3 = sub_217006224();
  OUTLINED_FUNCTION_36(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_21692B1B8(a1, v5, v6);
}

uint64_t sub_21692BF00()
{
  v0 = sub_217006224();
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_7_11();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_2167C6858;
  v4 = OUTLINED_FUNCTION_1_12();

  return sub_21692B374(v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for MusicPageMetricsModifier(uint64_t a1)
{
  result = qword_27CABCDC0;
  if (!qword_27CABCDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21692C044(uint64_t a1)
{
  type metadata accessor for MusicMetrics.PageFields(319);
  if (v1 <= 0x3F)
  {
    sub_2166B44E8(319, &qword_27CAB7180, &qword_27CAB7188, &unk_217015F90);
    if (v2 <= 0x3F)
    {
      sub_2166B44E8(319, &qword_27CAB71A0, &qword_27CAB71A8, &qword_217015FA0);
      if (v3 <= 0x3F)
      {
        sub_217007CA4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21692C144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MusicPageMetricsModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  KeyPath = swift_getKeyPath();
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCDD0, &qword_217028FF8) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCDD8, &qword_217029000) + 28);
  sub_21692C950(v2, v9 + v10);
  v11 = type metadata accessor for MusicMetrics.PageFields(0);
  __swift_storeEnumTagSinglePayload(v9 + v10, 0, 1, v11);
  *v9 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCDE0, &qword_217029008);
  OUTLINED_FUNCTION_34();
  (*(v12 + 16))(a2, a1);
  sub_21692C950(v2, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_21692CC2C(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCDE8, &unk_217029010);
  v16 = (a2 + *(result + 36));
  *v16 = sub_21692C9AC;
  v16[1] = v14;
  v16[2] = 0;
  v16[3] = 0;
  return result;
}

void *sub_21692C358()
{
  sub_21692CBD8();

  return sub_217009104();
}

uint64_t sub_21692C3C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7198, &qword_217029020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21692CB68(a1, &v6 - v3);
  return sub_21692C454(v4);
}

uint64_t sub_21692C454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7198, &qword_217029020);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21692CB68(a1, &v5 - v3);
  sub_21692CBD8();
  sub_217009114();
  return sub_216697664(a1, &qword_27CAB7198, &qword_217029020);
}

void sub_21692C514(uint64_t a1)
{
  v2 = type metadata accessor for MusicMetrics.PageFields(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50, &qword_217016010);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22[-1] - v6;
  v8 = sub_21700D574();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicPageMetricsModifier(0);
  sub_216C0C3A0(v22);
  v12 = v23;
  if (v23)
  {
    v13 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v13 + 8))(v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_21692C950(a1, v4);
      sub_216C0C3D8(v22);
      v14 = v23;
      if (v23)
      {
        v15 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        v14 = (*(v15 + 8))(v14, v15);
        v17 = v16;
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
      }

      else
      {
        sub_216697664(v22, &qword_27CAB71A8, &qword_217015FA0);
        v17 = 0;
      }

      sub_216C947C0(v4, v11, v14, v17);

      sub_21692CB0C(v4);
      (*(v9 + 8))(v11, v8);
      return;
    }
  }

  else
  {
    sub_216697664(v22, &qword_27CAB7188, &unk_217015F90);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  }

  sub_216697664(v7, &unk_27CABFB50, &qword_217016010);
  v18 = sub_217007C84();
  v19 = sub_21700ED84();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_216679000, v18, v19, "No Metrics Pipeline found on the bootstrap, skipping Page metrics. Did you remember to call the Music Metrics Context modifier?", v20, 2u);
    MEMORY[0x21CEA1440](v20, -1, -1);
  }
}

uint64_t sub_21692C88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21692CC2C(a1, a2);
  v3 = type metadata accessor for MusicPageMetricsModifier(0);
  v4 = a2 + *(v3 + 20);
  *v4 = swift_getKeyPath();
  *(v4 + 40) = 0;
  v5 = a2 + *(v3 + 24);
  *v5 = swift_getKeyPath();
  *(v5 + 40) = 0;
  return sub_217007C94();
}

uint64_t sub_21692C950(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(a2, v2);
  return a2;
}

void sub_21692C9AC()
{
  v1 = *(type metadata accessor for MusicPageMetricsModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21692C514(v2);
}

uint64_t sub_21692CA0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7198, &qword_217029020);
  __swift_allocate_value_buffer(v0, qword_27CABCDA8);
  v1 = __swift_project_value_buffer(v0, qword_27CABCDA8);
  v2 = type metadata accessor for MusicMetrics.PageFields(0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_21692CA88@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB5A70 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7198, &qword_217029020);
  v3 = __swift_project_value_buffer(v2, qword_27CABCDA8);

  return sub_21692CB68(v3, a1);
}

uint64_t sub_21692CB0C(uint64_t a1)
{
  v2 = type metadata accessor for MusicMetrics.PageFields(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21692CB68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7198, &qword_217029020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21692CBD8()
{
  result = qword_27CABCDF0;
  if (!qword_27CABCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCDF0);
  }

  return result;
}

uint64_t sub_21692CC2C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_21692CC98()
{
  result = qword_27CABCDF8;
  if (!qword_27CABCDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCDE8, &unk_217029010);
    sub_21692CD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCDF8);
  }

  return result;
}

unint64_t sub_21692CD24()
{
  result = qword_27CABCE00;
  if (!qword_27CABCE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCDD0, &qword_217028FF8);
    sub_2166D9530(&qword_27CABCE08, &qword_27CABCDE0, &qword_217029008, MEMORY[0x277CE04B0]);
    sub_2166D9530(&qword_27CABCE10, &qword_27CABCDD8, &qword_217029000, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCE00);
  }

  return result;
}

uint64_t type metadata accessor for ShuffleAction(uint64_t a1)
{
  result = qword_280E438F0;
  if (!qword_280E438F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21692CE7C(uint64_t a1)
{
  v1 = sub_21700D284();
  if (v2 <= 0x3F)
  {
    sub_21692CF60(319);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688154();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_2166D90EC(319);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_21692CF60(uint64_t a1)
{
  if (!qword_280E29FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB71D8, &qword_2170160A8);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E29FA8);
    }
  }
}

uint64_t sub_21692CFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v48 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v55 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v53 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v49 = v15;
  MEMORY[0x28223BE20](v16);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v46 = v17;
  MEMORY[0x28223BE20](v18);
  v19 = type metadata accessor for ShuffleAction(0);
  *(a3 + *(v19 + 36)) = 1;
  v47 = v19;
  v20 = *(v19 + 40);
  v51 = a3;
  *(a3 + v20) = 0;
  v21 = a1;
  sub_21700CE04();
  v22 = v56;
  v54 = v7;
  v50 = *(v7 + 16);
  v50(v12, v56, v5);
  v23 = v52;
  sub_21700D224();
  if (v23)
  {
    (*(v54 + 8))(v22, v5);
    return (*(v53 + 8))(v21, v55);
  }

  else
  {
    v25 = *(v46 + 32);
    v52 = 0;
    v26 = v51;
    v25();
    v27 = v49;
    sub_21700CE04();
    v28 = v48;
    v45 = v5;
    v50(v48, v22, v5);
    sub_216AC609C();
    v29 = v47;
    *(v26 + *(v47 + 20)) = v30;
    sub_21700CE04();
    v31 = sub_21700CDB4();
    v33 = v32;
    v53 = *(v53 + 8);
    (v53)(v27, v55);
    v34 = (v26 + *(v29 + 24));
    *v34 = v31;
    v34[1] = v33;
    type metadata accessor for ContentDescriptor(0);
    sub_21700CE04();
    v35 = v45;
    v50(v28, v56, v45);
    sub_21692D50C(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    v36 = v51;
    sub_21700D734();
    sub_21700CE04();
    v37 = sub_21700CDB4();
    v39 = v38;
    (*(v54 + 8))(v56, v35);
    v40 = v21;
    v41 = v55;
    v42 = v53;
    (v53)(v40, v55);
    result = v42(v27, v41);
    v43 = (v36 + *(v29 + 32));
    *v43 = v37;
    v43[1] = v39;
  }

  return result;
}

uint64_t sub_21692D4B4(uint64_t a1)
{
  result = sub_21692D50C(qword_280E43910, type metadata accessor for ShuffleAction, &unk_21702913C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21692D50C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PlacementID.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a2;
  v5 = sub_21700CDF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  sub_21700CE04();
  v12 = sub_21700CDB4();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (v14 || (sub_21700CE04(), v12 = sub_21700CDB4(), v14 = v16, v15(v8, v5), v14))
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v17 + 8))(v23);
    result = (v15)(a1, v5);
    *a3 = v12;
    a3[1] = v14;
  }

  else
  {
    v19 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    *v20 = 0x6E656D6563616C70;
    v20[1] = 0xEB00000000444974;
    v20[2] = &type metadata for PlacementID;
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D22530], v19);
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v21 + 8))(v23);
    return (v15)(a1, v5);
  }

  return result;
}

uint64_t PlacementID.rawValue.getter()
{
  v1 = *v0;
  sub_21700DF14();
  return v1;
}

uint64_t sub_21692DA90@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = PlacementID.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_21692DAD0@<X0>(uint64_t *a1@<X8>)
{
  result = PlacementID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *sub_21692DB64(_BYTE *result, int a2, int a3)
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

uint64_t sub_21692DC18(uint64_t a1, uint64_t a2)
{
  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(a2);
  sub_21700CDF4();
  OUTLINED_FUNCTION_9_0();
  return (*(v5 + 8))(a1);
}

void *sub_21692DCE8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE18, &qword_2170293B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &__src[-v4];
  *v5 = sub_2170093B4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE20, &qword_2170293B8);
  sub_21692DE30(v1, &v5[*(v6 + 44)]);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167A4788();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE28, &qword_2170293C0);
  return memcpy((a1 + *(v7 + 36)), __src, 0x70uLL);
}

void *sub_21692DE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v61 = sub_2170090F4();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  FriendsButtonView = type metadata accessor for SocialProfileFindFriendsButtonView(0);
  v6 = FriendsButtonView - 8;
  v7 = *(FriendsButtonView - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](FriendsButtonView);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE30, &unk_2170293C8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v59 - v11);
  FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel(0);
  sub_21692E9E8(a1 + *(FriendsButtonComponentModel + 28), v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE38, &unk_2170293D8);
  v15 = v14[11];
  v16 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v12 + v15, 1, 1, v16);
  sub_21692EC18();
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_21692EA58(v9, v18 + v17);
  v19 = v14[12];
  *(v12 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v20 = v12 + v14[13];
  *v20 = swift_getKeyPath();
  v20[40] = 0;
  v12[5] = sub_21692EABC;
  v12[6] = v18;
  v12[7] = 0;
  v12[8] = 0;
  KeyPath = swift_getKeyPath();
  v22 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE40, &qword_217029480) + 36);
  *v22 = KeyPath;
  v22[8] = 0;
  v23 = a1 + *(v6 + 28);
  v25 = *v23;
  v24 = *(v23 + 16);
  LOBYTE(v23) = *(v23 + 32);
  v64 = v24;
  v63 = v25;
  if ((v23 & 1) == 0)
  {
    v26 = v25;

    sub_21700ED94();
    v27 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v26, *(&v63 + 1), v64, *(&v64 + 1), 0);
    (*(v60 + 8))(v4, v61);
    v64 = __src[1];
    v63 = __src[0];
  }

  v28 = sub_217009C84();
  v29 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE48, &qword_217029488) + 36);
  *v29 = v28;
  *(v29 + 24) = v64;
  *(v29 + 8) = v63;
  v29[40] = 0;
  v30 = sub_217009C74();
  sub_217007F24();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE50, &qword_217029490) + 36);
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = sub_217009C94();
  sub_217007F24();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE58, &qword_217029498) + 36);
  *v49 = v40;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  v50 = sub_217009CA4();
  sub_217007F24();
  v51 = v12 + *(v10 + 36);
  *v51 = v50;
  *(v51 + 1) = v52;
  *(v51 + 2) = v53;
  *(v51 + 3) = v54;
  *(v51 + 4) = v55;
  v51[40] = 0;
  sub_21700B3B4();
  sub_217008BB4();
  v56 = v62;
  sub_2167A4788();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE60, &qword_2170294A0);
  return memcpy((v56 + *(v57 + 36)), __src, 0x70uLL);
}

uint64_t sub_21692E398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE68, &qword_2170294A8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v31 - v6;
  v8 = (a1 + *(type metadata accessor for SocialProfileFindFriendsButtonComponentModel(0) + 24));
  v9 = *v8;
  v10 = v8[1];
  sub_21700DF14();
  v11 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v31[0] = v9;
  v31[1] = v10;
  v31[2] = 0;
  v31[3] = MEMORY[0x277D84F90];
  v31[4] = KeyPath;
  v31[5] = v11;
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD8, &unk_217018240);
  sub_2167D2750();
  sub_21700A304();

  LOBYTE(v9) = sub_217009C74();
  sub_217007F24();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C48, &qword_2170182C8) + 36)];
  *v21 = v9;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = swift_getKeyPath();
  v23 = &v7[*(v5 + 44)];
  *v23 = v22;
  *(v23 + 1) = 0;
  v23[16] = 1;
  LOBYTE(v9) = sub_217009C84();
  sub_2167130B8();
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE70, &qword_217029510) + 36);
  *v24 = v9;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 1;
  v25 = sub_21700B3B4();
  v27 = v26;
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE78, &qword_217029518) + 36);
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8760, &qword_217029520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE80, &qword_217029528);
  sub_2167FD26C();
  sub_21692EB60();
  sub_21700B324();
  sub_216713118(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCEA0, &unk_217029540);
  v30 = (v28 + *(result + 36));
  *v30 = v25;
  v30[1] = v27;
  return result;
}

void *sub_21692E684@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780, &unk_217029530);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &__src[-v4];
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_217009294();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  *&v5[*(v3 + 60)] = sub_21700AC54();
  *&v5[*(v3 + 64)] = 256;
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167A4788();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8760, &qword_217029520);
  return memcpy((a1 + *(v8 + 36)), __src, 0x70uLL);
}

void *sub_21692E800@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE98, &qword_21703B430);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &__src[-v4];
  v6 = *(sub_217008B44() + 20);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_217009294();
  (*(*(v8 - 8) + 104))(&v5[v6], v7, v8);
  __asm { FMOV            V0.2D, #8.0 }

  *v5 = _Q0;
  *&v5[*(v3 + 60)] = sub_21700AC54();
  *&v5[*(v3 + 64)] = 256;
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167A4788();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE80, &qword_217029528);
  return memcpy((a1 + *(v14 + 36)), __src, 0x70uLL);
}

uint64_t type metadata accessor for SocialProfileFindFriendsButtonView(uint64_t a1)
{
  result = qword_280E2EA68;
  if (!qword_280E2EA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21692E9E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DB0, &qword_217016C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21692EA58(uint64_t a1, uint64_t a2)
{
  FriendsButtonView = type metadata accessor for SocialProfileFindFriendsButtonView(0);
  (*(*(FriendsButtonView - 8) + 32))(a2, a1, FriendsButtonView);
  return a2;
}

uint64_t sub_21692EABC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SocialProfileFindFriendsButtonView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21692E398(v4, a1);
}

unint64_t sub_21692EB60()
{
  result = qword_27CABCE88;
  if (!qword_27CABCE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCE80, &qword_217029528);
    sub_2166D9530(&qword_27CABCE90, &qword_27CABCE98, &qword_21703B430, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCE88);
  }

  return result;
}

uint64_t sub_21692EC18()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

void sub_21692EC98(uint64_t a1)
{
  type metadata accessor for SocialProfileFindFriendsButtonComponentModel(319);
  if (v1 <= 0x3F)
  {
    sub_21692ED34();
    if (v2 <= 0x3F)
    {
      sub_2167D1C30(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21692ED34()
{
  if (!qword_280E2B468)
  {
    v0 = sub_2170080E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B468);
    }
  }
}

unint64_t sub_21692ED84()
{
  result = qword_27CABCEA8;
  if (!qword_27CABCEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCE28, &qword_2170293C0);
    sub_2166D9530(&qword_27CABCEB0, &qword_27CABCE18, &qword_2170293B0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCEA8);
  }

  return result;
}

uint64_t sub_21692EE90()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_47();
  sub_21692EECC(v1);
  return v0;
}

void *sub_21692EECC(uint64_t a1)
{
  type metadata accessor for AsyncQueue(0);
  v1[2] = 0;
  v1[3] = 0;
  swift_allocObject();
  v1[5] = sub_216CA9FD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABCEB8, &unk_21705F010);
  v1[6] = sub_21700E244();
  v1[4] = a1;

  sub_216CA9EA0(&unk_217029670, v1);

  return v1;
}

uint64_t sub_21692EF94(uint64_t a1)
{
  v1[2] = a1;
  sub_21700EA34();
  v1[3] = sub_21700EA24();
  v3 = sub_21700E9B4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_21692F02C, v3, v2);
}

uint64_t sub_21692F02C()
{
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABCEB8, &unk_21705F010);
  sub_216930BA8();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_99_0(v1);

  return MEMORY[0x282180360](v2);
}

uint64_t sub_21692F0EC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    v9 = sub_216930FBC;
  }

  else
  {
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    v9 = sub_21692F1F8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21692F1F8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21692F250()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 40);
    swift_unknownObjectRetain();
    v0 = v3(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return v0;
}

uint64_t sub_21692F2E8(uint64_t a1, char a2)
{
  v5 = *v2;
  OUTLINED_FUNCTION_143();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = *(v5 + 80);
  *(v7 + 24) = *(v5 + 88);
  *(v7 + 32) = v6;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2 & 1;

  sub_21700DF14();
  sub_216CA9EA0(&unk_217029660, v7);
}

uint64_t sub_21692F3EC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 96) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  sub_21700EA34();
  *(v3 + 56) = sub_21700EA24();
  v5 = sub_21700E9B4();
  *(v3 + 64) = v5;
  *(v3 + 72) = v4;

  return MEMORY[0x2822009F8](sub_21692F488, v5, v4);
}

uint64_t sub_21692F488()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 80) = *(Strong + 32);

    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_21692F594;

    return sub_216E582CC();
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v4();
  }
}

uint64_t sub_21692F594()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;

  OUTLINED_FUNCTION_119_0();
  if (v0)
  {

    v4 = *(v2 + 64);
    v5 = *(v2 + 72);
    v6 = sub_216930FC0;
  }

  else
  {

    v4 = *(v2 + 64);
    v5 = *(v2 + 72);
    v6 = sub_21692F6C8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21692F6C8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21692F720(uint64_t a1, unint64_t a2, char a3)
{
  v7 = *v3;
  OUTLINED_FUNCTION_143();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v7 + 80);
  *(v9 + 24) = *(v7 + 88);
  *(v9 + 32) = v8;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  *(v9 + 56) = a3 & 1;

  sub_21677A404(a1, a2);
  sub_216CA9EA0(&unk_217029650, v9);
}

uint64_t sub_21692F82C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 104) = a4;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  sub_21700EA34();
  *(v4 + 64) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 72) = v6;
  *(v4 + 80) = v5;

  return MEMORY[0x2822009F8](sub_21692F8CC, v6, v5);
}

uint64_t sub_21692F8CC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 88) = *(Strong + 32);

    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_21692F9D8;

    return sub_216E587F0();
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v4();
  }
}

uint64_t sub_21692F9D8()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;

  OUTLINED_FUNCTION_119_0();
  if (v0)
  {

    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    v6 = sub_216930FC4;
  }

  else
  {

    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    v6 = sub_21692FB0C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21692FB0C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21692FB64()
{
  OUTLINED_FUNCTION_33();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *v0;
  v1[5] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE8, &unk_2170142F0);
  v1[6] = swift_task_alloc();
  v5 = *(v4 + 80);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v1[9] = *(v6 + 64);
  v1[10] = swift_task_alloc();
  sub_21700EA34();
  v1[11] = sub_21700EA24();
  OUTLINED_FUNCTION_47();
  v8 = sub_21700E9B4();
  v1[12] = v8;
  v1[13] = v7;

  return MEMORY[0x2822009F8](sub_21692FCCC, v8, v7);
}

uint64_t sub_21692FCCC()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[3];
  OUTLINED_FUNCTION_143();
  v6 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v1, v5, v2);
  v7 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = v2;
  v9 = *(v4 + 88);
  v0[14] = v9;
  *(v8 + 3) = v9;
  *(v8 + 4) = v6;
  (*(v3 + 32))(&v8[v7], v1, v2);
  sub_216D07F2C();
  v11 = v10;
  v0[15] = v10;

  v12 = swift_task_alloc();
  v0[16] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B78, &qword_21705EE00);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  *v12 = v0;
  v12[1] = sub_21692FE94;
  v18 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 18, v11, v13, v14, v18, v15, v16, v17);
}

uint64_t sub_21692FE94()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_216930134;
  }

  else
  {
    v8 = sub_21692FFD4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21692FFD4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[4];

  v2 = *(*(v1 + 32) + 16);
  sub_217006964();
  sub_217006A94();
  v3 = OUTLINED_FUNCTION_47();
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v4 = v0[14];
    v5 = v0[7];
    sub_216913EB0(v0[6]);
    type metadata accessor for PageUpdateMappingCoordinator.Error(0, v5, v4, v6);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(*(v2 - 8) + 32))(v0[2], v0[6], v2);
  }

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_216930134()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2169301A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_21700EA34();
  v3[8] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](sub_216930240, v5, v4);
}

uint64_t sub_216930240()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_216930334;

    return sub_2169307A8();
  }

  else
  {

    **(v0 + 40) = *(v0 + 88) == 0;
    OUTLINED_FUNCTION_3();

    return v4();
  }
}

uint64_t sub_216930334()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_2169304A8;
  }

  else
  {

    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_216930438;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216930438()
{
  OUTLINED_FUNCTION_33();

  **(v0 + 40) = *(v0 + 88) == 0;
  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_2169304A8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216930510()
{
  OUTLINED_FUNCTION_33();
  v1[2] = v0;
  sub_21700EA34();
  v1[3] = sub_21700EA24();
  OUTLINED_FUNCTION_47();
  v3 = sub_21700E9B4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_2169305A0, v3, v2);
}

uint64_t sub_2169305A0()
{
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABCEB8, &unk_21705F010);
  sub_216930BA8();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_99_0(v1);

  return MEMORY[0x282180360](v2);
}

uint64_t sub_216930660()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;

  if (v0)
  {
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 40);

  return MEMORY[0x2822009F8](sub_216930FBC, v7, v8);
}

uint64_t sub_21693076C(uint64_t a1)
{
  sub_21700F8F4();
  sub_216775848();
  return sub_21700F944();
}

uint64_t sub_2169307A8()
{
  OUTLINED_FUNCTION_33();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  sub_21700EA34();
  v1[5] = sub_21700EA24();
  OUTLINED_FUNCTION_47();
  v4 = sub_21700E9B4();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_216930860, v4, v3);
}

uint64_t sub_216930860()
{
  OUTLINED_FUNCTION_33();
  v0[8] = (*(*(*(v0[4] + 88) + 16) + 56))(*(v0[4] + 80));
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_99_0(v1);

  return sub_216E58D24();
}

uint64_t sub_21693091C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_216930A7C;
  }

  else
  {

    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_216930A20;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216930A20()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216930A7C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216930AE4()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_216930B1C()
{
  sub_216930AE4();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216930B94(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

unint64_t sub_216930BA8()
{
  result = qword_280E2A108;
  if (!qword_280E2A108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CABCEB8, &unk_21705F010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A108);
  }

  return result;
}

uint64_t sub_216930C0C(uint64_t a1)
{
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 40) & ~*(*(*(v1 + 16) - 8) + 80);
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_5(v5);
  *v6 = v7;
  v6[1] = sub_2166AB4A4;

  return sub_2169301A4(a1, v4, v1 + v3);
}

uint64_t sub_216930D10()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_5(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_99_0(v6);

  return sub_21692F82C(v1, v2, v3, v4);
}

uint64_t sub_216930DCC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_5(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_99_0(v5);

  return sub_21692F3EC(v1, v2, v3);
}

uint64_t sub_216930E80()
{
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_5(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_99_0(v2);

  return sub_21692EF94(v0);
}

_BYTE *sub_216930F04(_BYTE *result, int a2, int a3)
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

uint64_t sub_21693100C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_216932DA0(a1, a5, type metadata accessor for CuratorDetailHeaderComponentModel);
  result = type metadata accessor for CuratorDetailHeaderLockupView(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_216931074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  sub_216931470(v2, a2);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = *(a1 + 16);
  (*(v5 + 32))(v8 + v7, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF40, qword_2170297B0);
  v10 = (a2 + *(result + 36));
  *v10 = sub_2169314EC;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

void sub_2169311C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  if (*(a1 + *(type metadata accessor for CuratorDetailHeaderLockupView(0, a2, a3, v15) + 36)))
  {
    sub_216A3FFDC();
    v16 = type metadata accessor for ToolbarConfiguration(0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1 || (sub_216681B04(v14, v11, &qword_27CAB7930, &qword_21701A250), EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_216932F6C(v11, type metadata accessor for ToolbarConfiguration), EnumCaseMultiPayload == 3))
    {
      sub_2166997CC(v14, &qword_27CAB7930, &qword_21701A250);
      sub_2169313CC(v8);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
      sub_216A3FFF0(v8);
      return;
    }
  }

  else
  {
    v18 = type metadata accessor for ToolbarConfiguration(0);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v18);
  }

  sub_2166997CC(v14, &qword_27CAB7930, &qword_21701A250);
}

double sub_2169313CC@<D0>(uint64_t a1@<X8>)
{
  sub_216931470(v2, a1);
  v4 = (a1 + *(type metadata accessor for CuratorPageToolbarContentProvider(0) + 20));
  v5 = *(type metadata accessor for ToolbarProperties(0) + 24);
  v6 = *MEMORY[0x277CDDDC0];
  v7 = sub_217009124();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  result = 0.0;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  return result;
}

uint64_t sub_216931470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2169314EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for CuratorDetailHeaderLockupView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  sub_2169311C8(v8, v5, v6);
}

uint64_t sub_216931570@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF68, &qword_217029870);
  return sub_2169315C0(v2, a2 + *(v4 + 44));
}

uint64_t sub_2169315C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_217009314();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2170099D4();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF70, &qword_217029878);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v8 = v36 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF78, &qword_217029880);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = v36 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF80, &unk_217029888);
  MEMORY[0x28223BE20](v47);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v38 = v36 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v36 - v16;
  v18 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v18);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
  sub_216681B04(a1 + *(v21 + 32), v17, &qword_27CAB6D60, &qword_217014E40);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_2166997CC(v17, &qword_27CAB6D60, &qword_217014E40);
    return __swift_storeEnumTagSinglePayload(v48, 1, 1, v47);
  }

  else
  {
    v23 = sub_216932DA0(v17, v20, type metadata accessor for Artwork);
    v36[3] = v36;
    MEMORY[0x28223BE20](v23);
    MEMORY[0x28223BE20](v24);
    v36[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF88, &qword_217029898);
    v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF90, &qword_2170298A0);
    v25 = type metadata accessor for ArtworkContentView(255);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCF98, &qword_2170298A8);
    v27 = sub_216932E30(&qword_27CABC4B0, type metadata accessor for ArtworkContentView, &unk_217029960);
    v28 = sub_216932E78();
    v49 = v25;
    v50 = MEMORY[0x277CE1350];
    v51 = v26;
    v52 = v27;
    v53 = MEMORY[0x277CE1340];
    v54 = v28;
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_27CABCFB8, &qword_27CABCF90, &qword_2170298A0, MEMORY[0x277CE1138]);
    sub_217006574();
    sub_2170099A4();
    v29 = sub_2166D9530(&qword_27CABCFC0, &qword_27CABCF70, &qword_217029878, MEMORY[0x277D26A78]);
    v30 = v39;
    sub_21700A784();
    (*(v41 + 8))(v6, v43);
    (*(v37 + 8))(v8, v30);
    sub_216983738(17);
    v49 = v30;
    v50 = v29;
    swift_getOpaqueTypeConformance2();
    v31 = v42;
    sub_21700A6A4();

    (*(v40 + 8))(v10, v31);
    v32 = v44;
    sub_2170092E4();
    v33 = v38;
    v34 = v47;
    sub_2170089A4();
    (*(v45 + 8))(v32, v46);
    sub_216713A40(v12);
    v35 = v48;
    sub_216713A9C(v33, v48);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v34);
    return sub_216932F6C(v20, type metadata accessor for Artwork);
  }
}

uint64_t sub_216931D0C(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkContentView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21700C4B4();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  v6 = *(type metadata accessor for Artwork(0) + 20);
  v7 = v2[5];
  v8 = sub_21700C444();
  (*(*(v8 - 8) + 16))(&v4[v7], a1 + v6, v8);
  v9 = &v4[v2[6]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = &v4[v2[7]];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF98, &qword_2170298A8);
  sub_216932E30(&qword_27CABC4B0, type metadata accessor for ArtworkContentView, &unk_217029960);
  sub_216932E78();
  sub_21700AB44();
  return sub_216932F6C(v4, type metadata accessor for ArtworkContentView);
}

uint64_t sub_216931F24(uint64_t a1)
{
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFB0, &qword_2170298B0);
  type metadata accessor for ArtworkContentView(0);
  sub_2166D9530(&qword_27CABCFA8, &qword_27CABCFB0, &qword_2170298B0, MEMORY[0x277CDE1F8]);
  sub_216932E30(&qword_27CABC4B0, type metadata accessor for ArtworkContentView, &unk_217029960);
  return sub_21700B324();
}

uint64_t sub_216932050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFC8, &qword_2170298B8);
  return sub_2169320A8(a1, a2 + *(v4 + 44));
}

uint64_t sub_2169320A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFD0, &qword_2170298C0);
  MEMORY[0x28223BE20](v53);
  v52 = &v49 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFD8, &qword_2170298C8);
  MEMORY[0x28223BE20](v50);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - v9;
  v11 = sub_21700C4B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
  sub_216681B04(a1 + *(v21 + 40), v10, &qword_27CAB6D60, &qword_217014E40);
  v22 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v22) == 1)
  {
    sub_2166997CC(v10, &qword_27CAB6D60, &qword_217014E40);
    v23 = 1;
    v24 = v54;
  }

  else
  {
    v25 = *(v12 + 16);
    v25(v17, v10, v11);
    sub_216932F6C(v10, type metadata accessor for Artwork);
    (*(v12 + 32))(v20, v17, v11);
    v25(v14, v20, v11);
    sub_217007484();
    *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFE0, &qword_2170298D0) + 36)] = 256;
    sub_21700ACC4();
    v26 = sub_21700AD04();

    v27 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFE8, &qword_2170298D8) + 36)];
    *v27 = v26;
    *(v27 + 8) = xmmword_217029750;
    *(v27 + 3) = 0x4024000000000000;
    v28 = sub_217009CB4();
    sub_217007F24();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFF0, &qword_2170298E0) + 36)];
    *v37 = v28;
    *(v37 + 1) = v30;
    *(v37 + 2) = v32;
    *(v37 + 3) = v34;
    *(v37 + 4) = v36;
    v37[40] = 0;
    v38 = sub_217009CA4();
    sub_217007F24();
    v39 = v51;
    v40 = &v7[*(v50 + 36)];
    *v40 = v38;
    *(v40 + 1) = v41;
    *(v40 + 2) = v42;
    *(v40 + 3) = v43;
    *(v40 + 4) = v44;
    v40[40] = 0;
    sub_216681B04(v7, v39, &qword_27CABCFD8, &qword_2170298C8);
    v45 = v52;
    sub_216681B04(v39, v52, &qword_27CABCFD8, &qword_2170298C8);
    v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFF8, &qword_2170298E8) + 48);
    *v46 = 0;
    *(v46 + 8) = 1;
    sub_2166997CC(v7, &qword_27CABCFD8, &qword_2170298C8);
    (*(v12 + 8))(v20, v11);
    sub_2166997CC(v39, &qword_27CABCFD8, &qword_2170298C8);
    v47 = v54;
    sub_216932FC0(v45, v54);
    v23 = 0;
    v24 = v47;
  }

  return __swift_storeEnumTagSinglePayload(v24, v23, 1, v53);
}

uint64_t sub_216932584@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_217007474();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_216681B04(v1, v8, &qword_27CABF770, &unk_21701A670);
  v15 = v1 + *(type metadata accessor for ArtworkContentView(0) + 24);
  v16 = *v15;
  if (*(v15 + 8) != 1)
  {

    sub_21700ED94();
    v26 = v2;
    v17 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v16, 0);
    (*(v3 + 8))(v5, v26);
  }

  sub_2169328F4();
  sub_217007434();
  sub_2170073E4();
  v18 = v28;
  v19 = *(v27 + 8);
  v19(v11, v28);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  v20 = v29;
  sub_2170073F4();

  v19(v14, v18);
  v21 = sub_217009CE4();
  v22 = sub_217008A34();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD020, &unk_2170299B0);
  v24 = v20 + *(result + 36);
  *v24 = v22;
  *(v24 + 8) = v21;
  return result;
}

double sub_2169328F4()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArtworkContentView(0);
  v6 = v0 + *(v5 + 28);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = *v6;
  }

  else
  {

    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v7, 0);
    (*(v2 + 8))(v4, v1);
    v8 = LOBYTE(v19);
  }

  v10 = v0 + *(v5 + 24);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (v8 >= 2)
  {
    if (v12)
    {
      v13 = *&v11;
    }

    else
    {

      sub_21700ED94();
      v16 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216684F5C(v11, 0);
      (*(v2 + 8))(v4, v1);
      v13 = v19;
    }

    v15 = 2.28571429;
  }

  else
  {
    if (v12)
    {
      v13 = *&v11;
    }

    else
    {

      sub_21700ED94();
      v14 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216684F5C(v11, 0);
      (*(v2 + 8))(v4, v1);
      v13 = v19;
    }

    v15 = 1.5;
  }

  return v13 / v15;
}

uint64_t sub_216932C0C(uint64_t a1)
{
  result = type metadata accessor for CuratorDetailHeaderComponentModel(319);
  if (v4 <= 0x3F)
  {
    type metadata accessor for CatalogPagePresenter(255, *(a1 + 16), *(a1 + 24), v3);
    result = sub_21700F164();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_216932CC8()
{
  result = qword_27CABCF58;
  if (!qword_27CABCF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCF40, qword_2170297B0);
    sub_216932E30(&qword_27CABCF60, type metadata accessor for CuratorDetailHeaderContent, &unk_217029820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCF58);
  }

  return result;
}

uint64_t sub_216932DA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216932E30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216932E78()
{
  result = qword_27CABCFA0;
  if (!qword_27CABCFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCF98, &qword_2170298A8);
    sub_2166D9530(&qword_27CABCFA8, &qword_27CABCFB0, &qword_2170298B0, MEMORY[0x277CDE1F8]);
    sub_216932E30(&qword_27CABC4B0, type metadata accessor for ArtworkContentView, &unk_217029960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCFA0);
  }

  return result;
}

uint64_t sub_216932F6C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216932FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCFD0, &qword_2170298C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_216933068(uint64_t a1)
{
  sub_2166880FC(319);
  if (v1 <= 0x3F)
  {
    sub_21700C444();
    if (v2 <= 0x3F)
    {
      sub_2168AEB44(319, &qword_280E2B480, MEMORY[0x277D85048]);
      if (v3 <= 0x3F)
      {
        sub_2168AEB44(319, &qword_280E2B488, &_s9SizeClassON);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_216933158()
{
  result = qword_27CABD028;
  if (!qword_27CABD028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD020, &unk_2170299B0);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD028);
  }

  return result;
}

uint64_t sub_216933210@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &__src[-v13 - 8];
  sub_2167ADC3C(v2, __src);
  sub_216934118(a1, v14);
  sub_217006214();
  v15 = sub_2170061F4();
  v17 = v16;
  (*(v7 + 8))(v11, v5);
  v18 = _s6ActionVMa(0);
  v19 = &a2[*(v18 + 24)];
  *v19 = v15;
  *(v19 + 1) = v17;
  memcpy(a2, __src, 0x48uLL);
  return sub_2168D36D4(v14, &a2[*(v18 + 20)]);
}

void sub_216933384(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  if (!*(a3 + 16))
  {
    v39 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
    v19 = (_s6ActionVMa(0) - 8);
    v38 = a5;
    v20 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_217013DA0;
    v21 = a3 + v20;
    v22 = sub_216983738(181);
    v35 = v23;
    v36 = v22;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0;
    sub_217006214();
    v37 = a4;
    v24 = sub_2170061F4();
    v25 = a2;
    v27 = v26;
    v28 = *(v13 + 8);
    v28(v18, v39);
    *v21 = v24;
    *(v21 + 8) = v27;
    a2 = v25;
    *(v21 + 16) = v36;
    *(v21 + 24) = v35;
    v29 = v19[7];
    v30 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v21 + v29, 1, 1, v30);
    sub_217006214();
    v31 = sub_2170061F4();
    v33 = v32;
    v28(v18, v39);
    v34 = (v21 + v19[8]);
    *v34 = v31;
    v34[1] = v33;
    a5 = v38;
    a4 = v37;
  }

  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
}

uint64_t sub_2169335B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v25 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  sub_21700CE04();
  v18 = sub_21700CDB4();
  v29 = v19;
  v30 = v18;
  v20 = *(v13 + 8);
  v20(v17, v11);
  v26 = a1;
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v27 = v22;
  v28 = v21;
  v20(v17, v11);
  sub_21700CE04();
  (*(v6 + 16))(v10, a2, v31);
  _s6ActionVMa(0);
  sub_21693428C(&qword_27CABD040, _s6ActionVMa, &unk_217029B50);
  v23 = sub_21700E944();
  (*(v25 + 8))(a2, v31);
  result = (v20)(v26, v11);
  *a3 = v30;
  a3[1] = v29;
  a3[2] = v23;
  a3[3] = v28;
  a3[4] = v27;
  return result;
}

double sub_216933838@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2169335B0(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

uint64_t sub_216933880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v50 = a2;
  v48 = a3;
  v49 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v45 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v41 = v6;
  MEMORY[0x28223BE20](v7);
  v42 = v40 - v8;
  v9 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v52 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  v15 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v40[1] = v19;
  MEMORY[0x28223BE20](v20);
  v22 = v40 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v40 - v24;
  sub_21700CE04();
  v26 = sub_21700CDB4();
  v28 = v27;
  v29 = *(v17 + 8);
  v46 = v17 + 8;
  v47 = v15;
  v43 = v29;
  v29(v25, v15);
  if (!v28)
  {
    sub_217006214();
    v26 = sub_2170061F4();
    v28 = v30;
    (*(v52 + 8))(v14, v9);
  }

  v40[0] = _s6ActionVMa(0);
  v31 = v48;
  v32 = &v48[*(v40[0] + 24)];
  *v32 = v26;
  v32[1] = v28;
  sub_21700CE04();
  v33 = v45;
  v52 = a1;
  v34 = *(v45 + 16);
  v35 = v42;
  v36 = v49;
  v37 = v50;
  v34(v42, v50, v49);
  v38 = v44;
  sub_216E13688(v22, v35, __src);
  if (v38)
  {
    (*(v33 + 8))(v37, v36);
    v43(v52, v47);
  }

  else
  {
    memcpy(v31, __src, 0x48uLL);
    v44 = sub_217007F04();
    sub_21700CE04();
    v34(v41, v37, v36);
    sub_21693428C(qword_27CABD048, MEMORY[0x277CDD650], &protocol conformance descriptor for ButtonRole);
    sub_21700D734();
    (*(v33 + 8))(v37, v36);
    return (v43)(v52, v47);
  }
}

uint64_t sub_216933C80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_21700DF14();
}

uint64_t sub_216933CAC(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216933D00(char a1)
{
  if (a1)
  {
    return 0x7463757274736564;
  }

  else
  {
    return 0x6C65636E6163;
  }
}

uint64_t sub_216933D60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216933CAC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_216933D90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216933D00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ButtonRole.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  sub_216933E94();
  sub_21700CCD4();
  if (!v2)
  {
    if (v8)
    {
      sub_217007ED4();
    }

    else
    {
      sub_217007EF4();
    }
  }

  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(a2);
  sub_21700CDF4();
  OUTLINED_FUNCTION_9_0();
  return (*(v6 + 8))(a1);
}

unint64_t sub_216933E94()
{
  result = qword_27CABD030;
  if (!qword_27CABD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD030);
  }

  return result;
}

_BYTE *_s12JSButtonRoleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216933FDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_21693401C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_216934078()
{
  result = qword_27CABD038;
  if (!qword_27CABD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABD038);
  }

  return result;
}

uint64_t _s6ActionVMa(uint64_t a1)
{
  result = qword_280E2A6A0;
  if (!qword_280E2A6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216934118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2169341B0(uint64_t a1)
{
  sub_216934234(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_216934234(uint64_t a1)
{
  if (!qword_280E2B500[0])
  {
    sub_217007F04();
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, qword_280E2B500);
    }
  }
}

uint64_t sub_21693428C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2169342D4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_216934234(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21693436C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_217007F04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v9 + 80);
  v17 = *(*(v8 - 8) + 64);
  if (!v10)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v8;
  if (a2 <= v13)
  {
    goto LABEL_30;
  }

  v19 = v17 + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v13 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v23 < 2)
    {
LABEL_30:
      if ((v12 & 0x80000000) != 0)
      {
        v26 = (a1 + v14 + 16) & ~v14;
        if (v7 == v13)
        {

          return __swift_getEnumTagSinglePayload(v26, v7, v5);
        }

        else
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v26 + v15 + v16) & ~v16, v10, v18);
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

      else
      {
        v25 = *(a1 + 1);
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        return (v25 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_30;
  }

LABEL_22:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 > 3)
    {
      LODWORD(v19) = 4;
    }

    switch(v19)
    {
      case 2:
        LODWORD(v19) = *a1;
        break;
      case 3:
        LODWORD(v19) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v19) = *a1;
        break;
      default:
        LODWORD(v19) = *a1;
        break;
    }
  }

  return v13 + (v19 | v24) + 1;
}

void sub_2169345F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_217007F04();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v9 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 80);
  v18 = *(v8 + 64);
  v19 = *(v12 + 80);
  v20 = (v18 + v19 + ((v17 + 16) & ~v17)) & ~v19;
  v21 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v21;
  }

  v22 = v20 + v21;
  v23 = 8 * (v20 + v21);
  if (a3 > v16)
  {
    if (v22 <= 3)
    {
      v24 = ((a3 - v16 + ~(-1 << v23)) >> v23) + 1;
      if (HIWORD(v24))
      {
        v11 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v11 = v25;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v16 >= a2)
  {
    switch(v11)
    {
      case 1:
        a1[v22] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        *&a1[v22] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 3:
LABEL_53:
        __break(1u);
        break;
      case 4:
        *&a1[v22] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          if ((v15 & 0x80000000) != 0)
          {
            v29 = &a1[v17 + 16] & ~v17;
            if (v9 == v16)
            {
              v30 = a2;
              v13 = v9;
              v10 = v7;
            }

            else
            {
              v29 = (v29 + v18 + v19) & ~v19;
              v30 = (a2 + 1);
            }

            __swift_storeEnumTagSinglePayload(v29, v30, v13, v10);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v26 = ~v16 + a2;
    if (v22 < 4)
    {
      v27 = (v26 >> v23) + 1;
      if (v22)
      {
        v28 = v26 & ~(-1 << v23);
        bzero(a1, v22);
        if (v22 == 3)
        {
          *a1 = v28;
          a1[2] = BYTE2(v28);
        }

        else if (v22 == 2)
        {
          *a1 = v28;
        }

        else
        {
          *a1 = v26;
        }
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v26;
      v27 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v22] = v27;
        break;
      case 2:
        *&a1[v22] = v27;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v22] = v27;
        break;
      default:
        return;
    }
  }
}

void MusicStackAuthority.push<A>(_:)()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  ObjectType = *(v4 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_77();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v62 - v15;
  v17 = sub_21700D404();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  sub_2167AF90C(v1 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType, v69);
  if (v69[3])
  {
    v62 = v10;
    v63 = v3;
    swift_getDynamicType();
    sub_21700D414();
    v24 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_bindings;
    swift_beginAccess();
    v25 = sub_216934EDC(v23, *(v1 + v24));
    if (v25)
    {
      v26 = v25;
      swift_endAccess();
      (*(v19 + 8))(v23, v17);
      *(&v67 + 1) = v5;
      v68 = v63;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
      v28 = ObjectType;
      v29 = *(ObjectType + 16);
      v29(boxed_opaque_existential_1, v7, v5);
      v30 = (*(*v26 + 80))(&v66);
      __swift_destroy_boxed_opaque_existential_1Tm(&v66);
      if (v30)
      {
        v29(v16, v7, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0D0, &qword_217029BB0);
        v31 = v30;
        if (swift_dynamicCast())
        {
          __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
          v32 = OUTLINED_FUNCTION_53_0();
          v34 = v33(v32);
          v36 = v35;
          v37 = __swift_destroy_boxed_opaque_existential_1Tm(&v66);
        }

        else
        {
          v68 = 0;
          v66 = 0u;
          v67 = 0u;
          v37 = sub_216697664(&v66, &qword_27CABD0D8, &qword_217029BB8);
          v34 = 0;
          v36 = 0xF000000000000000;
        }

        v50 = v1 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
        OUTLINED_FUNCTION_76_7(v37, &v65);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v51 = *(v50 + 8);
          ObjectType = swift_getObjectType();
          *&v66 = (*(v63 + 16))(v5);
          *(&v66 + 1) = v52;
          *&v67 = v34;
          *(&v67 + 1) = v36;
          v53 = *(v51 + 8);
          v54 = OUTLINED_FUNCTION_53_0();
          sub_21677A3F0(v54, v55);
          v53(v31, &v66, ObjectType, v51);

          swift_unknownObjectRelease();

          v56 = OUTLINED_FUNCTION_53_0();
          sub_21677A510(v56, v57);

          v58 = OUTLINED_FUNCTION_8();
          sub_21677A510(v58, v59);
        }

        else
        {

          v60 = OUTLINED_FUNCTION_53_0();
          sub_21677A510(v60, v61);
        }

        goto LABEL_16;
      }
    }

    else
    {
      swift_endAccess();
      (*(v19 + 8))(v23, v17);
      v28 = ObjectType;
      v29 = *(ObjectType + 16);
    }

    v39 = OUTLINED_FUNCTION_53_0();
    (v29)(v39);
    v40 = sub_217007C84();
    v41 = sub_21700ED84();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v62;
    if (v42)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v66 = v45;
      *v44 = 136446210;
      v29(v43, v13, v5);
      sub_21700E594();
      (*(v28 + 8))(v13, v5);
      v46 = OUTLINED_FUNCTION_54_3();
      v49 = sub_2166A85FC(v46, v47, v48);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_216679000, v40, v41, "Failed to push element %{public}s, could not create viewController", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      (*(v28 + 8))(v13, v5);
    }

LABEL_16:
    sub_2167AFA24(v69);
    goto LABEL_17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v38 = sub_217007DD4();
  sub_217008644();
  v38(&v66, 0);

LABEL_17:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216934EDC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_2166B75C8();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_57_11(v2);
}

double sub_216934F28()
{
  OUTLINED_FUNCTION_56_11();
  if (!v2)
  {
    return OUTLINED_FUNCTION_69_10();
  }

  v3 = sub_2166AF66C(v0, v1);
  if ((v4 & 1) == 0)
  {
    return OUTLINED_FUNCTION_69_10();
  }

  v5 = OUTLINED_FUNCTION_39_13(v3);

  sub_2166A6DF8(v5, v6);
  return result;
}

double sub_216934FBC()
{
  OUTLINED_FUNCTION_80_7();
  if (!v1)
  {
    return OUTLINED_FUNCTION_69_10();
  }

  v2 = sub_216E68120(v0);
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_69_10();
  }

  v4 = OUTLINED_FUNCTION_39_13(v2);

  sub_2166A6DF8(v4, v5);
  return result;
}

double sub_216935010()
{
  OUTLINED_FUNCTION_56_11();
  if (v4 && (v5 = v3, v6 = sub_2166AF66C(v1, v2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 40 * v6;

    sub_216788294(v8, v0);
  }

  else
  {
    *(v0 + 32) = 0;
    return OUTLINED_FUNCTION_69_10();
  }

  return result;
}

uint64_t sub_216935074()
{
  OUTLINED_FUNCTION_80_7();
  if (v0 && (sub_216E68214(), (v1 & 1) != 0))
  {
    v2 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
    OUTLINED_FUNCTION_34();
    sub_21693B574();
    v3 = OUTLINED_FUNCTION_44_3();
    v6 = v2;
  }

  else
  {
    type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
    v3 = OUTLINED_FUNCTION_21();
  }

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_216935118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_216E69548(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_57_11(v3);
}

uint64_t sub_216935164()
{
  OUTLINED_FUNCTION_56_11();
  if (v4 && (v5 = v3, v6 = sub_216E69548(v1, v2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_217006FE4();
    OUTLINED_FUNCTION_34();
    (*(v11 + 16))(v0, v9 + *(v11 + 72) * v8, v10);
    v12 = OUTLINED_FUNCTION_44_3();
    v15 = v10;
  }

  else
  {
    sub_217006FE4();
    v12 = OUTLINED_FUNCTION_21();
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_216935208()
{
  OUTLINED_FUNCTION_80_7();
  if (v2 && (v3 = v1, v4 = sub_216E67EE8(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = sub_217006EC4();
    OUTLINED_FUNCTION_34();
    (*(v9 + 16))(v0, v7 + *(v9 + 72) * v6, v8);
    v10 = OUTLINED_FUNCTION_44_3();
    v13 = v8;
  }

  else
  {
    sub_217006EC4();
    v10 = OUTLINED_FUNCTION_21();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

double sub_2169352B0()
{
  OUTLINED_FUNCTION_80_7();
  if (!v1)
  {
    return OUTLINED_FUNCTION_69_10();
  }

  v2 = sub_216E68398(v0);
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_69_10();
  }

  v4 = OUTLINED_FUNCTION_39_13(v2);

  sub_2166A6DF8(v4, v5);
  return result;
}

uint64_t sub_216935344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_56_11();
  if (v6 && (v5(), (v7 & 1) != 0))
  {
    v8 = a4(0);
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_71_0();
    sub_21693B574();
    v9 = OUTLINED_FUNCTION_44_3();
    v12 = v8;
  }

  else
  {
    a4(0);
    v9 = OUTLINED_FUNCTION_21();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_2169353F0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_216E68488();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_57_11(v2);
  return sub_21700DF14();
}

uint64_t sub_21693543C(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_216E68424(a1 & 1), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_40_12(v2);
  }

  else
  {
    OUTLINED_FUNCTION_78_8();
  }

  return OUTLINED_FUNCTION_8();
}

void sub_216935484()
{
  OUTLINED_FUNCTION_56_11();
  if (v3 && (v4 = sub_2166AF66C(v1, v2), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_39_13(v4);

    sub_216697C8C(v6, v7);
  }

  else
  {
    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
    v0[3] = 1;
  }
}

uint64_t sub_216935520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v3 = sub_216E69548(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  OUTLINED_FUNCTION_57_11(v3);
}

void *sub_21693556C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2166AF66C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_2169355B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_2166AF66C(a1, a2), (v5 & 1) != 0))
  {
    v6 = *(*(a3 + 56) + 24 * v4 + 16);
    sub_21700DF14();
    v7 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_78_8();
  }

  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216935620(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_216E68550(a1), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_40_12(v2);
  }

  else
  {
    OUTLINED_FUNCTION_78_8();
  }

  return OUTLINED_FUNCTION_8();
}

uint64_t sub_2169356A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 6;
  }

  v4 = sub_2166AF66C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 6;
  }
}

void sub_2169356F0()
{
  OUTLINED_FUNCTION_56_11();
  if (v4 && (v5 = v3, v6 = sub_216E69548(v1, v2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + (v6 << 6);

    sub_21693B4B0(v8, v0);
  }

  else
  {
    OUTLINED_FUNCTION_69_10();
    v0[4] = 0;
    v0[5] = 254;
    v0[6] = 0;
    v0[7] = 0;
  }
}

uint64_t sub_216935758(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_216E685D0(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_57_11(v2);
}

uint64_t sub_2169357A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_2166AF66C(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_57_11(v3);
  return sub_21700DF14();
}

Swift::Void __swiftcall MusicStackAuthority.popToRoot()()
{
  OUTLINED_FUNCTION_75_6();
  sub_217008674();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v2 = sub_2167AF90C(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType, v14);
  if (v14[3])
  {
    v3 = v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
    OUTLINED_FUNCTION_76_7(v2, v13);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 24))(ObjectType, v4);
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = sub_217007C84();
      v10 = sub_21700ED84();
      if (os_log_type_enabled(v9, v10))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_50_0(&dword_216679000, v11, v12, "Failed to pop to root, could not resolve navigationControllerDelegate");
        OUTLINED_FUNCTION_6();
      }
    }

    sub_2167AFA24(v14);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_217007DE4();

    sub_217008634();
    v6 = OUTLINED_FUNCTION_7_4();
    v7(v6);
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_71_0();
    v8 = sub_217007DD4();
    sub_2170085E4();
    v8(v13, 0);
  }

  OUTLINED_FUNCTION_65_2();
}

uint64_t MusicStackAuthority.path.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_4();
  sub_217007DE4();
}

void MusicStackAuthority.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E0, &qword_217029C08);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_66();
  v28 = sub_217008674();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority__path;
  sub_217008664();
  v36 = OUTLINED_FUNCTION_108();
  v37(v36);
  sub_217007DA4();
  (*(v30 + 8))(v34, v28);
  (*(v26 + 32))(v20 + v35, v21, v24);
  *(v20 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v38 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_bindings;
  sub_21700D404();
  type metadata accessor for AbstractBindingBox();
  OUTLINED_FUNCTION_33_19();
  sub_2166B0DF0(v39, v40, MEMORY[0x277D21D60]);
  OUTLINED_FUNCTION_71_0();
  *(v20 + v38) = sub_21700E384();
  OUTLINED_FUNCTION_53_11();
  v41 = v20 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType;
  *v41 = 0u;
  *(v41 + 16) = 0u;
  *(v41 + 32) = 0;
  OUTLINED_FUNCTION_26();
}

uint64_t (*MusicStackAuthority.path.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_227();
  v2[6] = sub_217007DD4();
  return sub_216935DEC;
}

void sub_216935DEC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

Swift::Void __swiftcall MusicStackAuthority.pop()()
{
  sub_217008674();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v2 = sub_2167AF90C(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType, v15);
  if (v16)
  {
    v3 = v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
    OUTLINED_FUNCTION_76_7(v2, v14);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(ObjectType, v4);
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = sub_217007C84();
      v11 = sub_21700ED84();
      if (os_log_type_enabled(v10, v11))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_50_0(&dword_216679000, v12, v13, "Failed to pop element, could not resolve navigationControllerDelegate");
        OUTLINED_FUNCTION_6();
      }
    }

    sub_2167AFA24(v15);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_217007DE4();

    v6 = sub_217008654();
    v7 = OUTLINED_FUNCTION_7_4();
    v8(v7);
    if ((v6 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_71_0();
      v9 = sub_217007DD4();
      sub_2170085E4();
      v9(v14, 0);
    }
  }
}

uint64_t MusicStackAuthority.count.getter()
{
  sub_217008674();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  sub_2167AF90C(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType, &v10);
  if (v11)
  {
    sub_2166A0F18(&v10, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v2 = OUTLINED_FUNCTION_29_20();
    v4 = *(v3(v2) + 16);

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_47_15(KeyPath);

    v4 = sub_217008634();
    v6 = OUTLINED_FUNCTION_62_6();
    v7(v6);
  }

  return v4;
}

void MusicStackAuthority.featureNames.getter()
{
  OUTLINED_FUNCTION_75_6();
  sub_217008674();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  v23 = MEMORY[0x277D84F90];
  sub_2167AF90C(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType, &v21);
  if (v22)
  {
    sub_2166A0F18(&v21, v20);
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v2 = OUTLINED_FUNCTION_29_20();
    v4 = v3(v2);
    v5 = 0;
    v6 = *(v4 + 16);
    v7 = MEMORY[0x277D84F90];
LABEL_3:
    v8 = v4 + 32 * v5;
    while (1)
    {
      if (v6 == v5)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        goto LABEL_14;
      }

      if (v5 >= *(v4 + 16))
      {
        break;
      }

      ++v5;
      v9 = (v8 + 32);
      v10 = *(v8 + 40);
      v8 += 32;
      if (v10)
      {
        v11 = *v9;
        sub_21700DF14();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21693776C();
          v7 = v14;
        }

        v12 = *(v7 + 16);
        if (v12 >= *(v7 + 24) >> 1)
        {
          sub_21693776C();
          v7 = v15;
        }

        *(v7 + 16) = v12 + 1;
        v13 = v7 + 16 * v12;
        *(v13 + 32) = v11;
        *(v13 + 40) = v10;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_47_15(KeyPath);

    MEMORY[0x28223BE20](v17);
    sub_217008624();
    v18 = OUTLINED_FUNCTION_62_6();
    v19(v18);
LABEL_14:
    OUTLINED_FUNCTION_65_2();
  }
}

uint64_t sub_216936424(uint64_t a1, uint64_t *a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC78, &qword_217029F70);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = sub_217008604();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  v8 = *(v4 + 44);
  sub_2166B0DF0(&qword_27CABCC60, MEMORY[0x277CDD948], MEMORY[0x277CDD958]);
  sub_21700EC54();
  v9 = &qword_217029F78;
  while (1)
  {
    sub_21700EC94();
    if (*&v6[v8] == v32[0])
    {
      break;
    }

    v10 = sub_21700ECE4();
    sub_2167B7D58(v11, v35);
    v10(v32, 0);
    sub_21700ECA4();
    sub_2166A0F18(v35, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD258, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD220, &qword_217029F38);
    if (swift_dynamicCast())
    {
      v12 = v9;
      sub_2166A0F18(v29, v32);
      v13 = v33;
      v14 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      v15 = (*(v14 + 16))(v13, v14);
      if (v16)
      {
        v17 = v15;
        v18 = v16;
        v19 = v28;
        v20 = *v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v19 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21693776C();
          v20 = v24;
          *v28 = v24;
        }

        v22 = *(v20 + 16);
        if (v22 >= *(v20 + 24) >> 1)
        {
          sub_21693776C();
          v20 = v25;
          *v28 = v25;
        }

        *(v20 + 16) = v22 + 1;
        v23 = v20 + 16 * v22;
        *(v23 + 32) = v17;
        *(v23 + 40) = v18;
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
      }

      v9 = v12;
    }

    else
    {
      v30 = 0;
      memset(v29, 0, sizeof(v29));
      sub_216697664(v29, &qword_27CABD260, &unk_217029F80);
    }
  }

  return sub_216697664(v6, &qword_27CABCC78, &qword_217029F70);
}

void sub_21693678C()
{
  OUTLINED_FUNCTION_102();
  sub_217008674();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  v1 = OUTLINED_FUNCTION_227();
  v2(v1);
  MusicStackAuthority.path.setter();
}

void MusicStackAuthority.path.setter()
{
  OUTLINED_FUNCTION_75_6();
  v1 = v0;
  v2 = sub_217008674();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_71_0();
  v6();

  sub_217007DF4();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_65_2();
}

uint64_t MusicStackAuthority.$path.getter()
{
  OUTLINED_FUNCTION_120_0(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority__path, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E0, &qword_217029C08);
  sub_217007DB4();
  return swift_endAccess();
}

uint64_t sub_2169369A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E8, &qword_217029C28);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return MusicStackAuthority.$path.setter(v5);
}

uint64_t MusicStackAuthority.$path.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E8, &qword_217029C28);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_71_0();
  v7();
  OUTLINED_FUNCTION_120_0(v1 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority__path, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E0, &qword_217029C08);
  sub_217007DC4();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*MusicStackAuthority.$path.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E8, &qword_217029C28);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_120_0(v1 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority__path, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E0, &qword_217029C08);
  sub_217007DB4();
  swift_endAccess();
  return sub_216936CB0;
}

void sub_216936CB0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    MusicStackAuthority.$path.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    MusicStackAuthority.$path.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_216936D64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_216936DC0(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

void (*MusicStackAuthority.navigationControllerDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  v6 = OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_120_0(v6, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v9;
  return sub_216936EF4;
}

void sub_216936EF4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_216936F7C()
{
  sub_217008674();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  v27 = xmmword_217029BA0;
  sub_2167AF90C(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType, &v25);
  if (v26)
  {
    sub_2166A0F18(&v25, v24);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v2 = OUTLINED_FUNCTION_29_20();
    v4 = v3(v2);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32 * v5;
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      sub_21700DF14();
      v9 = OUTLINED_FUNCTION_8();
      sub_21677A3F0(v9, v10);

      v11 = OUTLINED_FUNCTION_8();
      sub_21677A3F0(v11, v12);

      v13 = OUTLINED_FUNCTION_8();
      sub_21677A510(v13, v14);
    }

    else
    {

      v7 = 0;
      v8 = 0xF000000000000000;
    }

    sub_21677A510(0, 0xF000000000000000);
    *&v27 = v7;
    *(&v27 + 1) = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_47_15(KeyPath);

    MEMORY[0x28223BE20](v16);
    sub_217008624();
    v17 = OUTLINED_FUNCTION_62_6();
    v18(v17);
  }

  v19 = OUTLINED_FUNCTION_8();
  sub_21677A3F0(v19, v20);
  v21 = OUTLINED_FUNCTION_8();
  sub_21677A510(v21, v22);
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216937180(double a1, uint64_t a2, uint64_t *a3)
{
  result = sub_216E9A414();
  if ((result & 1) == 0)
  {
    v5 = MEMORY[0x21CE99410]();
    v6 = __OFSUB__(v5, 1);
    result = v5 - 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      sub_217008614();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD258, &qword_217029F78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0D0, &qword_217029BB0);
      if (swift_dynamicCast())
      {
        sub_2166A0F18(v13, v15);
        v7 = v16;
        v8 = v17;
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v9 = (*(v8 + 8))(v7, v8);
        v10 = *a3;
        v11 = a3[1];
        *a3 = v9;
        a3[1] = v12;
        sub_21677A510(v10, v11);
        return __swift_destroy_boxed_opaque_existential_1Tm(v15);
      }

      else
      {
        v14 = 0;
        memset(v13, 0, sizeof(v13));
        return sub_216697664(v13, &qword_27CABD0D8, &qword_217029BB8);
      }
    }
  }

  return result;
}

uint64_t MusicStackAuthority.deinit()
{
  v1 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority__path;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E0, &qword_217029C08);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  sub_216781DA8(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate);
  sub_2167AFA24(v0 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType);

  v3 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_logger;
  sub_217007CA4();
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t MusicStackAuthority.__deallocating_deinit()
{
  MusicStackAuthority.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_21693740C(uint64_t a1)
{
  v2 = *(*v1 + 12);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10[-v4 - 8];
  sub_2167B7D58(v6, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD220, &qword_217029F38);
  swift_dynamicCast();
  v7 = (v1)[2](v5);
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_216937540()
{
  v0 = sub_216937520();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_216937614(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_7_37();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_26_23();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
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
    sub_21693981C(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_21693776C()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0, &qword_21703F4E0);
    v8 = OUTLINED_FUNCTION_61_8(v7);
    _swift_stdlib_malloc_size_0(v8);
    OUTLINED_FUNCTION_17_30();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_216937838()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD188, &qword_217029E88);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size_0(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_37_20();
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

void sub_2169379AC()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978, &unk_2170239B0);
    v8 = OUTLINED_FUNCTION_46_14(v7);
    OUTLINED_FUNCTION_13_23(v8);
  }

  OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    OUTLINED_FUNCTION_70_7();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 72 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_216937ABC()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228, &unk_217029EB0);
    v8 = OUTLINED_FUNCTION_61_8(v7);
    _swift_stdlib_malloc_size_0(v8);
    OUTLINED_FUNCTION_17_30();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[2 * v2 + 4] <= v8 + 4)
    {
      v11 = OUTLINED_FUNCTION_108();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
    OUTLINED_FUNCTION_108();
    swift_arrayInitWithCopy();
  }
}

void sub_216938194()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_30_20();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2A0, &unk_217029FD0);
    v7 = OUTLINED_FUNCTION_64_10();
    _swift_stdlib_malloc_size_0(v7);
    OUTLINED_FUNCTION_17_30();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_68_9();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_216938280()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_30_20();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1B8, &unk_217029EC0);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_50_10(v7);
    v7[2] = v3;
    v7[3] = 2 * (v8 / 24);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_68_9();
  if (v1)
  {
    if (v7 != v0 || &v10[24 * v3] <= v9)
    {
      memmove(v9, v10, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_21693836C()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2F0, &qword_21702A040);
    v8 = OUTLINED_FUNCTION_46_14(v7);
    OUTLINED_FUNCTION_13_23(v8);
  }

  OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    OUTLINED_FUNCTION_70_7();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 112 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2169384A4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t *a6, uint64_t *a7)
{
  if (a3)
  {
    OUTLINED_FUNCTION_7_37();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_26_23();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = OUTLINED_FUNCTION_227();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v16, v17) - 8);
  if (a1)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    sub_2169398E4(a4 + v19, v14, v15 + v19, a6, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_216938598()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD290, &qword_217029FB8);
    v7 = OUTLINED_FUNCTION_64_10();
    OUTLINED_FUNCTION_50_10(v7);
    OUTLINED_FUNCTION_49_14();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_37_20();
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

void sub_2169386CC()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD148, &qword_217029E50);
    v8 = OUTLINED_FUNCTION_46_14(v7);
    OUTLINED_FUNCTION_13_23(v8);
  }

  OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    OUTLINED_FUNCTION_70_7();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 88 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_216938800()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_30_20();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2A8, &unk_217029FE0);
    v7 = OUTLINED_FUNCTION_64_10();
    OUTLINED_FUNCTION_50_10(v7);
    OUTLINED_FUNCTION_49_14();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_68_9();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_2169388CC()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD308, &qword_21702A058);
    v8 = OUTLINED_FUNCTION_61_8(v7);
    _swift_stdlib_malloc_size_0(v8);
    OUTLINED_FUNCTION_17_30();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[2 * v2 + 4] <= v8 + 4)
    {
      v11 = OUTLINED_FUNCTION_108();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC98, &unk_21702A060);
    OUTLINED_FUNCTION_108();
    swift_arrayInitWithCopy();
  }
}

void sub_216938ADC()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_30_20();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD110, &qword_217029E18);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_50_10(v7);
    v7[2] = v3;
    v7[3] = 2 * (v8 / 40);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_68_9();
  if (v1)
  {
    if (v7 != v0 || &v10[40 * v3] <= v9)
    {
      memmove(v9, v10, 40 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_216938BEC()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD280, &qword_217029FA8);
    v8 = OUTLINED_FUNCTION_46_14(v7);
    OUTLINED_FUNCTION_13_23(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 40 * v2 <= (v3 + 32))
    {
      v10 = OUTLINED_FUNCTION_108();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD288, &qword_217029FB0);
    OUTLINED_FUNCTION_108();
    swift_arrayInitWithCopy();
  }
}

void sub_216938D1C()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0F0, &unk_217029DF0);
    v8 = OUTLINED_FUNCTION_46_14(v7);
    OUTLINED_FUNCTION_13_23(v8);
  }

  OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    OUTLINED_FUNCTION_70_7();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 120 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_216938E10()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_79_11();
  if (v5)
  {
    OUTLINED_FUNCTION_7_37();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_26_23();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_50_10(v11);
    v11[2] = v9;
    v11[3] = 2 * (v12 / 40);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v11 != v0 || &v0[5 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_54_3();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_227();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_54_3();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_65_2();
}

void sub_216938F34()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_79_11();
  if (v5)
  {
    OUTLINED_FUNCTION_7_37();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_26_23();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v11 = OUTLINED_FUNCTION_64_10();
    OUTLINED_FUNCTION_50_10(v11);
    OUTLINED_FUNCTION_49_14();
    v11[2] = v9;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v11 != v0 || &v0[v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_54_3();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_227();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_54_3();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_65_2();
}

void sub_216939108()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_30_20();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2D8, &qword_21702A028);
    v7 = OUTLINED_FUNCTION_64_10();
    OUTLINED_FUNCTION_50_10(v7);
    OUTLINED_FUNCTION_49_14();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_68_9();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_2169391D4()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2D0, &qword_21702A020);
    v8 = OUTLINED_FUNCTION_46_14(v7);
    OUTLINED_FUNCTION_13_23(v8);
  }

  OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    OUTLINED_FUNCTION_70_7();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 56 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2169392F8()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size_0(v9);
    v9[2] = v2;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_2169393C0()
{
  OUTLINED_FUNCTION_27_21();
  if (v4)
  {
    OUTLINED_FUNCTION_7_37();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26_23();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_37();
    }
  }

  OUTLINED_FUNCTION_12_31();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD230, &qword_217029F48);
    v8 = OUTLINED_FUNCTION_61_8(v7);
    _swift_stdlib_malloc_size_0(v8);
    OUTLINED_FUNCTION_17_30();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_37_20();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_21693955C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_77(a3, result);
  }

  return result;
}

char *sub_2169395C8(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_34_17(result, a3, a2);
  }

  return result;
}

char *sub_2169395FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_77(a3, result);
  }

  return result;
}

char *sub_2169396E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_77(a3, result);
  }

  return result;
}

char *sub_2169397C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_77(a3, result);
  }

  return result;
}

void sub_21693981C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_85_8();
  if (v8 && (a4(0), OUTLINED_FUNCTION_34(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_22_28();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_22_28();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void sub_2169398E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_85_8();
  if (v10 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_34(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_22_28();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_22_28();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void sub_2169399B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_29();
  sub_2170071B4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_24_21();
  sub_216E67EE8();
  OUTLINED_FUNCTION_1_63();
  if (v14)
  {
    __break(1u);
LABEL_11:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_82_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1A0, &qword_217029EA0);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    OUTLINED_FUNCTION_58_11();
    sub_216E67EE8();
    OUTLINED_FUNCTION_43_17();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    sub_217006EC4();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_26();

    v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_23_22();
    v25(v24);
    v26 = OUTLINED_FUNCTION_25_21();
    sub_21693AED8(v26, v27, v28, v29);
    OUTLINED_FUNCTION_26();
  }
}

uint64_t get_enum_tag_for_layout_string_7MusicUI0A14StackAuthorityC14NavigationTypeO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_216939BE4(uint64_t a1, unsigned int a2)
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

uint64_t sub_216939C34(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_216939C90(uint64_t a1, int a2)
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

void sub_216939D04()
{
  OUTLINED_FUNCTION_75_6();
  v5 = OUTLINED_FUNCTION_4_38(v3, v4);
  sub_2166AF66C(v5, v6);
  OUTLINED_FUNCTION_1_63();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_84_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD160, ">5\a");
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v0 = *v0;
    v8 = OUTLINED_FUNCTION_45_0();
    sub_2166AF66C(v8, v9);
    OUTLINED_FUNCTION_20_22();
    if (!v11)
    {
      goto LABEL_12;
    }

    v1 = v10;
  }

  if (v2)
  {
    v12 = OUTLINED_FUNCTION_67_7();
    v13 = _s7SectionVMa(v12);
    v14 = OUTLINED_FUNCTION_36(v13);
    OUTLINED_FUNCTION_74_9(v14, v0 + *(v15 + 72) * v1);
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    OUTLINED_FUNCTION_19_26();
    sub_2166C6400(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_65_2();

    sub_21700DF14();
  }
}

void sub_216939E2C()
{
  OUTLINED_FUNCTION_75_6();
  v5 = OUTLINED_FUNCTION_4_38(v3, v4);
  sub_2166AF66C(v5, v6);
  OUTLINED_FUNCTION_1_63();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_84_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD170, &qword_217039E50);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v0 = *v0;
    v8 = OUTLINED_FUNCTION_45_0();
    sub_2166AF66C(v8, v9);
    OUTLINED_FUNCTION_20_22();
    if (!v11)
    {
      goto LABEL_12;
    }

    v1 = v10;
  }

  if (v2)
  {
    v12 = OUTLINED_FUNCTION_67_7();
    v13 = type metadata accessor for SectionContent(v12);
    v14 = OUTLINED_FUNCTION_36(v13);
    OUTLINED_FUNCTION_74_9(v14, v0 + *(v15 + 72) * v1);
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    OUTLINED_FUNCTION_19_26();
    sub_2166C6400(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_65_2();

    sub_21700DF14();
  }
}

void sub_216939F54(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_60_8(a1, a2);
  sub_216E68120(v5);
  OUTLINED_FUNCTION_1_63();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_21700F824();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1C0, &unk_21702B640);
  if (OUTLINED_FUNCTION_87_8(v11))
  {
    v12 = OUTLINED_FUNCTION_58_11();
    sub_216E68120(v12);
    OUTLINED_FUNCTION_14_27();
    if (!v14)
    {
      goto LABEL_12;
    }

    v9 = v13;
  }

  v15 = *v4;
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(v15 + 56) + 32 * v9));
    v16 = OUTLINED_FUNCTION_8();

    sub_2166EF9C4(v16, v17);
  }

  else
  {
    sub_216788294(v3, v18);
    sub_21693AFF8(v9, v18, v2, v15);
  }
}

uint64_t sub_21693A068()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  v8 = OUTLINED_FUNCTION_2_51(v6, v7);
  sub_2166AF66C(v8, v9);
  OUTLINED_FUNCTION_1_63();
  if (v10)
  {
    __break(1u);
LABEL_13:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  OUTLINED_FUNCTION_10_33();
  v11 = sub_21700F554();
  if (v11)
  {
    v15 = OUTLINED_FUNCTION_18_24();
    sub_2166AF66C(v15, v16);
    OUTLINED_FUNCTION_14_27();
    if (!v17)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_42_18(v11, v12, v13, v14, *v0);
    OUTLINED_FUNCTION_26();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_15_27();
    sub_21693B5D0(v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_26();

    return sub_21700DF14();
  }
}

uint64_t sub_21693A140(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_60_8(a1, a2);
  sub_216E68214();
  OUTLINED_FUNCTION_1_63();
  if (v5)
  {
    __break(1u);
LABEL_10:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  v6 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1A8, &qword_217039EA0);
  if (OUTLINED_FUNCTION_87_8(v7))
  {
    OUTLINED_FUNCTION_58_11();
    sub_216E68214();
    OUTLINED_FUNCTION_14_27();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v6)
  {
    v9 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
    OUTLINED_FUNCTION_36(v9);
    OUTLINED_FUNCTION_32_17();
    return sub_2166CE0B8();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_45_0();
    sub_21693B048(v11, v12, v2, v13);
    return sub_2168387D4(v3, v14);
  }
}

uint64_t sub_21693A228()
{
  OUTLINED_FUNCTION_75_6();
  v4 = OUTLINED_FUNCTION_2_51(v2, v3);
  sub_216E69548(v4, v5);
  OUTLINED_FUNCTION_1_63();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD100, &qword_21703F540);
  OUTLINED_FUNCTION_10_33();
  v7 = sub_21700F554();
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_18_24();
    sub_216E69548(v11, v12);
    OUTLINED_FUNCTION_14_27();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_42_18(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_15_27();
    sub_21693B0C4(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_65_2();

    return sub_21700DF14();
  }
}

void sub_21693A300(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  sub_216E68334();
  OUTLINED_FUNCTION_1_63();
  if (v10)
  {
    __break(1u);
LABEL_14:
    sub_21700F824();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2ED0, &qword_217046110);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    sub_216E68334();
    OUTLINED_FUNCTION_20_22();
    if (!v14)
    {
      goto LABEL_14;
    }

    v11 = v13;
  }

  v15 = *v4;
  if (v12)
  {
    v16 = v15[7] + 24 * v11;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    *v16 = a1;
    *(v16 + 8) = a2;
    *(v16 + 16) = a3 & 1;

    sub_21693B50C(v17, v18, v19);
  }

  else
  {
    sub_21693B10C(v11, a4, a1, a2, a3 & 1, v15);

    v20 = a4;
  }
}

void sub_21693A464()
{
  OUTLINED_FUNCTION_75_6();
  v2 = OUTLINED_FUNCTION_4_38(v0, v1);
  sub_216E69548(v2, v3);
  OUTLINED_FUNCTION_1_63();
  if (v5)
  {
    __break(1u);
LABEL_11:
    sub_21700F824();
    __break(1u);
    return;
  }

  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD200, &qword_21704AFF0);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v7 = OUTLINED_FUNCTION_45_0();
    sub_216E69548(v7, v8);
    OUTLINED_FUNCTION_20_22();
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  if (v6)
  {
    v10 = OUTLINED_FUNCTION_67_7();
    v11 = type metadata accessor for PopoverBubbleTipDismissContext(v10);
    OUTLINED_FUNCTION_36(v11);
    OUTLINED_FUNCTION_31_24();
    sub_2166CE0B8();
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    OUTLINED_FUNCTION_19_26();
    sub_21693B160(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_65_2();

    sub_21700DF14();
  }
}

void sub_21693A574()
{
  OUTLINED_FUNCTION_75_6();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_2166AF66C(v5, v3);
  OUTLINED_FUNCTION_1_63();
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD118, &qword_217029E20);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v10 = OUTLINED_FUNCTION_18_24();
    sub_2166AF66C(v10, v11);
    OUTLINED_FUNCTION_14_27();
    if (!v13)
    {
      goto LABEL_12;
    }

    v2 = v12;
  }

  v14 = *v0;
  if (v1)
  {
    *(*(v14 + 56) + v2) = v8;
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    sub_21693B1D0(v2, v6, v4, v8, v14);
    OUTLINED_FUNCTION_65_2();

    sub_21700DF14();
  }
}

uint64_t sub_21693A668()
{
  OUTLINED_FUNCTION_75_6();
  v3 = OUTLINED_FUNCTION_2_51(v1, v2);
  sub_2166AF66C(v3, v4);
  OUTLINED_FUNCTION_1_63();
  if (v5)
  {
    __break(1u);
LABEL_13:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD210, &qword_217029F20);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v6 = OUTLINED_FUNCTION_18_24();
    sub_2166AF66C(v6, v7);
    OUTLINED_FUNCTION_14_27();
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_65_2();

    return sub_216697EC4(v9, v10);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15_27();
    sub_21693B204(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_65_2();

    return sub_21700DF14();
  }
}

void sub_21693A748()
{
  OUTLINED_FUNCTION_75_6();
  v5 = OUTLINED_FUNCTION_4_38(v3, v4);
  sub_2166AF66C(v5, v6);
  OUTLINED_FUNCTION_1_63();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_84_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD208, &unk_217029F10);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v0 = *v0;
    v8 = OUTLINED_FUNCTION_45_0();
    sub_2166AF66C(v8, v9);
    OUTLINED_FUNCTION_20_22();
    if (!v11)
    {
      goto LABEL_12;
    }

    v1 = v10;
  }

  if (v2)
  {
    v12 = OUTLINED_FUNCTION_67_7();
    v13 = type metadata accessor for SocialContactsCoordinator.Contact(v12);
    v14 = OUTLINED_FUNCTION_36(v13);
    OUTLINED_FUNCTION_74_9(v14, v0 + *(v15 + 72) * v1);
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    OUTLINED_FUNCTION_19_26();
    sub_2166C6400(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_65_2();

    sub_21700DF14();
  }
}

uint64_t sub_21693A870()
{
  OUTLINED_FUNCTION_75_6();
  v4 = OUTLINED_FUNCTION_2_51(v2, v3);
  sub_216E69548(v4, v5);
  OUTLINED_FUNCTION_1_63();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD228, &qword_217029F40);
  OUTLINED_FUNCTION_10_33();
  v7 = sub_21700F554();
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_18_24();
    sub_216E69548(v11, v12);
    OUTLINED_FUNCTION_14_27();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_42_18(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_15_27();
    sub_21693B0C4(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_65_2();

    return sub_21700DF14();
  }
}

void sub_21693A948()
{
  OUTLINED_FUNCTION_75_6();
  v4 = OUTLINED_FUNCTION_2_51(v2, v3);
  sub_2166AF66C(v4, v5);
  OUTLINED_FUNCTION_1_63();
  if (v6)
  {
    __break(1u);
LABEL_13:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1E8, &qword_217029EF0);
  OUTLINED_FUNCTION_10_33();
  v7 = sub_21700F554();
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_18_24();
    sub_2166AF66C(v11, v12);
    OUTLINED_FUNCTION_14_27();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_42_18(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_15_27();
    sub_21693B0C4(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_65_2();

    sub_21700DF14();
  }
}

unint64_t sub_21693AA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_6();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_216E68550(v13);
  OUTLINED_FUNCTION_1_63();
  if (v19)
  {
    __break(1u);
LABEL_14:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1E0, &qword_217039F40);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    sub_216E68550(v14);
    OUTLINED_FUNCTION_14_27();
    if (!v21)
    {
      goto LABEL_14;
    }

    v12 = v20;
  }

  if (v11)
  {
    v22 = (*(*v10 + 56) + 16 * v12);
    *v22 = v18;
    v22[1] = v16;
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    OUTLINED_FUNCTION_65_2();

    return sub_21693B254(v25, v26, v27, v28, v29);
  }
}

uint64_t sub_21693AB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_6();
  v13 = OUTLINED_FUNCTION_2_51(v11, v12);
  sub_216E69548(v13, v14);
  OUTLINED_FUNCTION_1_63();
  if (v15)
  {
    __break(1u);
LABEL_13:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD238, &qword_217029F50);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v16 = OUTLINED_FUNCTION_18_24();
    sub_216E69548(v16, v17);
    OUTLINED_FUNCTION_14_27();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v10)
  {
    OUTLINED_FUNCTION_65_2();

    return sub_21693B3F8(v19, v20);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_15_27();
    sub_21693B29C(v23, v24, v25, v26, v27);
    OUTLINED_FUNCTION_65_2();

    return sub_21700DF14();
  }
}

void sub_21693AC2C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_29();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_24_21();
  sub_2166ABD84();
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_82_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD140, &qword_217029E48);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    OUTLINED_FUNCTION_58_11();
    sub_2166ABD84();
    OUTLINED_FUNCTION_43_17();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_81_5();
    OUTLINED_FUNCTION_26();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_23_22();
    v6(v5);
    v7 = OUTLINED_FUNCTION_25_21();
    sub_2166B7A4C(v7, v8, v9, v10);
    OUTLINED_FUNCTION_26();
  }
}

void sub_21693AD84()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_29();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_24_21();
  sub_2166ABD84();
  OUTLINED_FUNCTION_1_63();
  if (v4)
  {
    __break(1u);
LABEL_11:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_82_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1D8, &unk_217029EE0);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    OUTLINED_FUNCTION_58_11();
    sub_2166ABD84();
    OUTLINED_FUNCTION_43_17();
    if (!v6)
    {
      goto LABEL_11;
    }

    v1 = v5;
  }

  if (v2)
  {
    v7 = *(*v0 + 56);
    v8 = type metadata accessor for PushNotifications.Subscription(0);
    v9 = OUTLINED_FUNCTION_36(v8);
    OUTLINED_FUNCTION_74_9(v9, v7 + *(v10 + 72) * v1);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_23_22();
    v12(v11);
    v13 = OUTLINED_FUNCTION_25_21();
    sub_21693B308(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_26();
}

void sub_21693AED8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_40(a1, a2, a3, a4);
  v9 = *(v8 + 48);
  sub_2170071B4();
  OUTLINED_FUNCTION_34();
  (*(v10 + 32))(v9 + *(v10 + 72) * a1, a2);
  v11 = *(a4 + 56);
  sub_217006EC4();
  OUTLINED_FUNCTION_34();
  (*(v12 + 32))(v11 + *(v12 + 72) * a1, a3);
  OUTLINED_FUNCTION_52_10();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v13;
  }
}

void sub_21693AFF8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_5_40(a1, a2, a3, a4);
  OUTLINED_FUNCTION_71_10(v5, v6, v7, v8);
  *(v10 + 32) = *(v9 + 32);
  sub_2166EF9C4(v13, (*(v11 + 56) + 32 * v12));
  OUTLINED_FUNCTION_52_10();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }
}

void sub_21693B048(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_5_40(a1, a2, a3, a4);
  OUTLINED_FUNCTION_71_10(v5, v6, v7, v8);
  *(v10 + 32) = *(v9 + 32);
  v11 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_32_17();
  sub_2166C6358();
  OUTLINED_FUNCTION_52_10();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

unint64_t sub_21693B0C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_21693B10C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5 & 1;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

void sub_21693B160(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_8_34(a1, a2, a3, a4, a5);
  v6 = type metadata accessor for PopoverBubbleTipDismissContext(0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_31_24();
  sub_2166C6358();
  OUTLINED_FUNCTION_52_10();
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v7;
  }
}

unint64_t sub_21693B1D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_8_34(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

unint64_t sub_21693B204(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 32 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_21693B254(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_21693B29C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21693B454(a4, a5[7] + (a1 << 6));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_21693B308(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  v7 = *(a4 + 48);
  v8 = sub_217006224();
  (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a2, v8);
  type metadata accessor for PushNotifications.Subscription(0);
  result = sub_2166C6358();
  v10 = *(a4 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }

  return result;
}

void sub_21693B50C(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21693B574()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

unint64_t sub_21693B5D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_8_34(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

uint64_t sub_21693B624@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v22 = a3;
  OUTLINED_FUNCTION_1_64();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170097A4();
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v29[0] = a2[2];
  v4 = v29[0];
  v29[1] = v5;
  v29[2] = v6;
  v29[3] = v7;
  type metadata accessor for SimpleChinViewModifier.SimpleChinView(255, v29);
  sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_19_0();
  swift_getTupleTypeMetadata2();
  v8 = sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  v9 = sub_21700B084();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v20;
  v28 = v21;
  sub_216E69898(v8);
  sub_21700B074();
  OUTLINED_FUNCTION_0_78();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v12, v9, WitnessTable);
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_2166C24DC(v15, v9, WitnessTable);
  return (v17)(v15, v9);
}

uint64_t sub_21693B854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v66 = a6;
  MEMORY[0x28223BE20](a1);
  v60 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v14;
  v72 = v15;
  v16 = v15;
  v51 = v15;
  v73 = v17;
  v74 = v18;
  v19 = type metadata accessor for SimpleChinViewModifier.SimpleChinView(0, &v71);
  v63 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v52 = &v51 - v20;
  v21 = sub_2170089F4();
  v64 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v55 = &v51 - v22;
  v61 = sub_2170089F4();
  v65 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v62 = &v51 - v25;
  v71 = a3;
  v72 = v16;
  v73 = a4;
  v74 = a5;
  type metadata accessor for SimpleChinViewModifier(255, &v71);
  swift_getWitnessTable();
  v26 = sub_2170097A4();
  v53 = v26;
  v67 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v58 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v54 = &v51 - v29;
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(a1, v26, WitnessTable);
  v30 = *a2;
  v31 = *(a2 + 16);
  v32 = *a2;
  v33 = v56;
  v34 = v31(v32);
  v35 = v60;
  (*(a2 + 32))(v34);
  v36 = v52;
  sub_21693BEF4(v30, v33, v35, a3, v51, v52, a4, a5);
  v50 = swift_getWitnessTable();
  sub_2166BF464();
  v37 = v55;
  sub_21700A9D4();
  (*(v63 + 8))(v36, v19);
  v70[4] = v50;
  v70[5] = MEMORY[0x277CDFC60];
  v38 = swift_getWitnessTable();
  sub_2166BF464();
  v39 = v59;
  sub_21700A9C4();
  (*(v64 + 8))(v37, v21);
  v70[2] = v38;
  v70[3] = MEMORY[0x277CDF678];
  v40 = v61;
  v41 = swift_getWitnessTable();
  v42 = v62;
  sub_2166C24DC(v39, v40, v41);
  v43 = v65;
  v44 = *(v65 + 8);
  v44(v39, v40);
  v45 = v58;
  v46 = v54;
  v47 = v53;
  (*(v67 + 16))(v58, v54, v53);
  v71 = v45;
  (*(v43 + 16))(v39, v42, v40);
  v72 = v39;
  v70[0] = v47;
  v70[1] = v40;
  v68 = WitnessTable;
  v69 = v41;
  sub_216984F84(&v71, 2, v70);
  v44(v42, v40);
  v48 = *(v67 + 8);
  v48(v46, v47);
  v44(v39, v40);
  return (v48)(v45, v47);
}

uint64_t sub_21693BEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  *a6 = a1;
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a7;
  v15[3] = a8;
  v13 = type metadata accessor for SimpleChinViewModifier.SimpleChinView(0, v15);
  (*(*(a4 - 8) + 32))(&a6[*(v13 + 52)], a2, a4);
  return (*(*(a5 - 8) + 32))(&a6[*(v13 + 56)], a3, a5);
}

uint64_t sub_21693BFC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = result;
  *(a6 + 8) = a7;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  return result;
}

void sub_21693C018(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD420, &qword_21702A1D0);
  *&v33 = a1[2];
  sub_217009564();
  v3 = sub_21693D4B8();
  v4 = a1[4];
  v59 = v3;
  v60 = v4;
  WitnessTable = swift_getWitnessTable();
  v35 = sub_217009534();
  v5 = sub_2170089F4();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210, &qword_21702A200);
  v8 = sub_2170089F4();
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v32 = &v29 - v9;
  v11 = a1[5];
  v31 = a1[3];
  v10 = v31;
  v12 = v11;
  v30 = v11;
  v41 = sub_217008BC4();
  v13 = sub_2170089F4();
  v43 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v36 = &v29 - v14;
  v15 = sub_2170089F4();
  v44 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v37 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v40 = &v29 - v18;
  v58 = sub_21700ACD4();
  sub_21700B394();
  *&v19 = v33;
  *(&v19 + 1) = v10;
  v33 = v19;
  *&v20 = v4;
  *(&v20 + 1) = v12;
  v29 = v20;
  v49 = v19;
  v50 = v20;
  v21 = v38;
  v51 = v38;
  v22 = MEMORY[0x277CE0F70];
  sub_21700A2D4();

  v23 = swift_getWitnessTable();
  v56 = v22;
  v57 = v23;
  v24 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_4();
  v25 = v32;
  sub_21700AA64();
  (*(v39 + 8))(v7, v5);
  v47 = v29;
  v46 = v33;
  v48 = v21;
  v26 = sub_2166D9530(&qword_280E2B380, &qword_27CABC210, &qword_21702A200, MEMORY[0x277CDF4F0]);
  v54 = v24;
  v55 = v26;
  v27 = swift_getWitnessTable();
  sub_2166BF464();
  sub_21700AA94();
  (*(v42 + 8))(v25, v8);
  v28 = swift_getWitnessTable();
  v52 = v27;
  v53 = v28;
  swift_getWitnessTable();
  sub_216BFAEC8();
}

uint64_t sub_21693C5C0()
{
  (*(*(v5 - 328) + 8))(v4, v2);
  v6 = MEMORY[0x277CE03D0];
  *(v5 - 176) = v0;
  *(v5 - 168) = v6;
  WitnessTable = swift_getWitnessTable();
  v8 = *(v5 - 352);
  sub_2166C24DC(v3, v1, WitnessTable);
  v9 = *(*(v5 - 320) + 8);
  v9(v3, v1);
  sub_2166C24DC(v8, v1, WitnessTable);
  return (v9)(v8, v1);
}

uint64_t sub_21693C688@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a5;
  v41 = a4;
  v37 = a3;
  v42 = a6;
  v9 = sub_21700ADC4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD420, &qword_21702A1D0);
  v20 = sub_217009564();
  v40 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  if (*a1)
  {
    v23 = *a1;
    sub_21700ADA4();
    (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
    v24 = sub_21700AE04();

    (*(v10 + 8))(v12, v9);
    sub_21700B564();
    v26 = v25;
    v28 = v27;
    LOBYTE(__dst[0]) = 1;
    sub_21700ACC4();
    v29 = sub_21700AD04();

    v30 = sub_217009C84();
    __src[0] = v24;
    __src[1] = 0;
    LOWORD(__src[2]) = 257;
    *&__src[3] = xmmword_21702A070;
    __src[5] = v26;
    __src[6] = v28;
    *&__src[7] = xmmword_21702A080;
    LOBYTE(__src[9]) = 1;
    __src[10] = v29;
    LOBYTE(__src[11]) = v30;
    sub_21693D4B8();
    v31 = v41;
    sub_2166C2718();

    memcpy(__dst, __src, 0x59uLL);
    sub_21669987C(__dst, &qword_27CABD420, &qword_21702A1D0);
  }

  else
  {
    __dst[0] = a2;
    __dst[1] = v37;
    v31 = v41;
    __dst[2] = v41;
    __dst[3] = v38;
    v32 = type metadata accessor for SimpleChinViewModifier.SimpleChinView(0, __dst);
    sub_2166C24DC(a1 + *(v32 + 52), a2, v31);
    sub_2166C24DC(v19, a2, v31);
    sub_21693D4B8();
    sub_2166C2CB0();
    v33 = *(v13 + 8);
    v33(v16, a2);
    v33(v19, a2);
  }

  __dst[12] = sub_21693D4B8();
  __dst[13] = v31;
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v22, v20, WitnessTable);
  return (*(v40 + 8))(v22, v20);
}

uint64_t sub_21693CB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  v15 = type metadata accessor for SimpleChinViewModifier.SimpleChinView(0, v17);
  sub_2166C24DC(a1 + *(v15 + 56), a3, a5);
  sub_2166C24DC(v10, a3, a5);
  return (*(v8 + 8))(v10, a3);
}

uint64_t sub_21693CC1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19[5] = a5;
  v20 = a1;
  v19[0] = a1;
  *&v19[1] = a7;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v15 = a1;

  v18[0] = a8;
  v18[1] = a9;
  v18[2] = a11;
  v18[3] = a12;
  v16 = type metadata accessor for SimpleChinViewModifier(0, v18);
  MEMORY[0x21CE9B900](v19, a6, v16, a10);
  sub_21669987C(&v20, qword_27CABD310, &qword_21702A090);
}

uint64_t sub_21693CD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21693CD50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_21693CD90(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_21693CE1C(uint64_t a1)
{
  sub_21693D3D0(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21693CEC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  if (v7 <= *(v9 + 84))
  {
    v10 = *(v9 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v6 + 80);
  v12 = *(*(v5 - 8) + 64);
  v13 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = ((v12 + v13 + ((v11 + 8) & ~v11)) & ~v13) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_28:
      if (v10 > 0x7FFFFFFE)
      {
        v25 = (a1 + v11 + 8) & ~v11;
        if (v7 != v14)
        {
          v25 = (v25 + v12 + v13) & ~v13;
          v7 = *(v9 + 84);
          v5 = v8;
        }

        return __swift_getEnumTagSinglePayload(v25, v7, v5);
      }

      else
      {
        v24 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v24) = -1;
        }

        if ((v24 + 1) >= 2)
        {
          return v24;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_28;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v14 + (v23 | v21) + 1;
}

void sub_21693D0E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = ((v16 + v17 + ((v15 + 8) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  v20 = a3 >= v14;
  v21 = a3 - v14;
  if (v21 != 0 && v20)
  {
    if (v18 <= 3)
    {
      v25 = ((v21 + ~(-1 << v19)) >> v19) + 1;
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

  if (v14 >= a2)
  {
    switch(v22)
    {
      case 1:
        a1[v18] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *&a1[v18] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_49:
        __break(1u);
        break;
      case 4:
        *&a1[v18] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          if (v13 > 0x7FFFFFFE)
          {
            v28 = &a1[v15 + 8] & ~v15;
            if (v9 != v14)
            {
              v28 = (v28 + v16 + v17) & ~v17;
              v9 = v12;
              v7 = v10;
            }

            __swift_storeEnumTagSinglePayload(v28, a2, v9, v7);
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *a1 = 0;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *a1 = a2;
          }
        }

        break;
    }
  }

  else
  {
    v23 = ~v14 + a2;
    if (v18 < 4)
    {
      v24 = (v23 >> v19) + 1;
      if (v18)
      {
        v27 = v23 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else if (v18 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        a1[v18] = v24;
        break;
      case 2:
        *&a1[v18] = v24;
        break;
      case 3:
        goto LABEL_49;
      case 4:
        *&a1[v18] = v24;
        break;
      default:
        return;
    }
  }
}

void sub_21693D3D0(uint64_t a1)
{
  if (!qword_27CABD418)
  {
    sub_21693D428();
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_27CABD418);
    }
  }
}

unint64_t sub_21693D428()
{
  result = qword_280E29B40;
  if (!qword_280E29B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29B40);
  }

  return result;
}