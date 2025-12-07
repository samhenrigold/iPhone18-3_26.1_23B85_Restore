uint64_t sub_2168CF038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicEvent.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168CF09C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168CF10C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168CF17C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2168CF1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_21700D284();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2168CF258(int *a1, unsigned int a2, uint64_t a3)
{
  v30 = *(a3 + 16);
  v31 = *(a3 + 24);
  v5 = *(v31 - 8);
  v6 = *(v5 + 84);
  v7 = *(v30 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  result = sub_21700D284();
  v11 = *(result - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  v16 = *(v11 + 80);
  if (!a2)
  {
    return 0;
  }

  v17 = result;
  v18 = *(v5 + 64) + v14;
  v19 = *(*(result - 8) + 64) + 7;
  if (v13 >= a2)
  {
LABEL_30:
    if (v6 == v13)
    {
      v28 = a1;
      v12 = v6;
      v17 = v31;
    }

    else
    {
      v28 = ((a1 + v18) & ~v14);
      if (v8 == v13)
      {
        v12 = v8;
        v17 = v30;
      }

      else
      {
        v28 = ((v28 + v15 + v16) & ~v16);
        if (v12 != v13)
        {
          v29 = *(((v28 + v19) & 0xFFFFFFFFFFFFFFF8) + 24);
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          if ((v29 + 1) >= 2)
          {
            return v29;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return __swift_getEnumTagSinglePayload(v28, v12, v17);
  }

  v20 = ((v19 + ((v15 + v16 + (v18 & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 40;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v13 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  switch(v24)
  {
    case 1:
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    case 2:
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    case 3:
      __break(1u);
      return result;
    case 4:
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_30;
      }

LABEL_27:
      v26 = v25 - 1;
      if (v21)
      {
        v26 = 0;
        v27 = *a1;
      }

      else
      {
        v27 = 0;
      }

      result = v13 + (v27 | v26) + 1;
      break;
    default:
      goto LABEL_30;
  }

  return result;
}

void sub_2168CF51C(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v29 = *(a4 + 16);
  v30 = *(a4 + 24);
  v6 = *(v30 - 8);
  v7 = *(v6 + 84);
  v8 = *(v29 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_21700D284();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(v8 + 80);
  v16 = *(v6 + 64) + v15;
  v17 = *(v8 + 64);
  v18 = *(v12 + 80);
  v19 = *(*(v11 - 8) + 64) + 7;
  v20 = ((v19 + ((v17 + v18 + (v16 & ~v15)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v14 >= a3)
  {
    v23 = 0;
  }

  else
  {
    if (((v19 + ((v17 + v18 + (v16 & ~v15)) & ~v18)) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v21 = a3 - v14 + 1;
    }

    else
    {
      v21 = 2;
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
  }

  v24 = a1;
  if (a2 <= v14)
  {
    switch(v23)
    {
      case 1:
        *(a1 + v20) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 2:
        *(a1 + v20) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 3:
LABEL_51:
        __break(1u);
        return;
      case 4:
        *(a1 + v20) = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (!a2)
        {
          return;
        }

LABEL_37:
        if (v7 == v14)
        {
          v27 = a1;
          v13 = v7;
          v11 = v30;
        }

        else
        {
          v27 = ((a1 + v16) & ~v15);
          if (v9 == v14)
          {
            v13 = v9;
            v11 = v29;
          }

          else
          {
            v27 = ((v27 + v17 + v18) & ~v18);
            if (v13 != v14)
            {
              v28 = (v27 + v19) & 0xFFFFFFFFFFFFFFF8;
              if (a2 > 0x7FFFFFFE)
              {
                *(v28 + 32) = 0;
                *v28 = 0u;
                *(v28 + 16) = 0u;
                *v28 = a2 - 0x7FFFFFFF;
              }

              else
              {
                *(v28 + 24) = a2;
              }

              return;
            }
          }
        }

        __swift_storeEnumTagSinglePayload(v27, a2, v13, v11);
        break;
    }
  }

  else
  {
    if (((v19 + ((v17 + v18 + (v16 & ~v15)) & ~v18)) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v25 = a2 - v14;
    }

    else
    {
      v25 = 1;
    }

    if (((v19 + ((v17 + v18 + (v16 & ~v15)) & ~v18)) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v26 = ~v14 + a2;
      bzero(v24, v20);
      *v24 = v26;
    }

    switch(v23)
    {
      case 1:
        *(v24 + v20) = v25;
        break;
      case 2:
        *(v24 + v20) = v25;
        break;
      case 3:
        goto LABEL_51;
      case 4:
        *(v24 + v20) = v25;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2168CF840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB900, &qword_217024708);
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB908, &qword_217024710);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB910, &qword_217024718);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  sub_2170093C4();
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB918, &qword_217024720);
  sub_2166D9530(&qword_27CABB920, &qword_27CABB918, &qword_217024720, MEMORY[0x277CE14C0]);
  sub_217006594();
  sub_21700B3B4();
  OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_3_48();
  (*(v7 + 32))(v13, v9, v26);
  memcpy(&v13[*(v11 + 44)], __src, 0x70uLL);
  v17 = sub_217009C74();
  v18 = *(a1 + 8);
  v19 = *(a1 + 33);
  if (v18 != 1)
  {
    if ((*(a1 + 33) & 1) == 0)
    {
      OUTLINED_FUNCTION_1_48();
    }
  }

  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  sub_21678818C(v13, v16, &qword_27CABB908, &qword_217024710);
  v20 = &v16[*(v27 + 36)];
  *v20 = v17;
  *(v20 + 1) = v2;
  *(v20 + 2) = v3;
  *(v20 + 3) = v4;
  *(v20 + 4) = v5;
  v20[40] = 0;
  v21 = sub_217009CE4();
  if (v18 != 1)
  {
    if ((v19 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_48();
    }
  }

  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v22 = v28;
  sub_21678818C(v16, v28, &qword_27CABB910, &qword_217024718);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB928, &qword_217024728);
  v24 = v22 + *(result + 36);
  *v24 = v21;
  *(v24 + 8) = v2;
  *(v24 + 16) = v3;
  *(v24 + 24) = v4;
  *(v24 + 32) = v5;
  *(v24 + 40) = 0;
  return result;
}

uint64_t sub_2168CFBC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA248, &qword_21701F8C0);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = v60 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB930, &qword_217024730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v60 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB938, &qword_217024738);
  v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB940, &qword_217024740);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v60 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v60 - v23;
  v25 = a1[1];
  v62 = a1[2];
  v66 = a1[3];
  v71 = v6;
  v70 = v12;
  v69 = v18;
  v68 = v9;
  v67 = v60 - v23;
  if (v25 >= 2)
  {
    v60[1] = *a1;
    if ((a1[4] & 0x100) != 0)
    {
      sub_21700DF14();
    }

    else
    {
      v27 = sub_21700F7D4();
      sub_21700DF14();

      if ((v27 & 1) == 0)
      {
        if (qword_27CAB5998 == -1)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    if (qword_27CAB59A0 == -1)
    {
LABEL_9:

      v28 = sub_21700A094();
      v30 = v29;
      v32 = v31;
      v34 = v33;

      KeyPath = swift_getKeyPath();
      v36 = sub_21700ACF4();
      v37 = swift_getKeyPath();
      v81 = v32 & 1;
      *&v77 = v28;
      *(&v77 + 1) = v30;
      LOBYTE(v78) = v32 & 1;
      *(&v78 + 1) = v34;
      *&v79 = KeyPath;
      BYTE8(v79) = 0;
      *&v80 = v37;
      *(&v80 + 1) = v36;
      v73 = v77;
      v74 = v78;
      v75 = v79;
      v76 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB958, qword_217024758);
      sub_2168D0FE4();
      sub_21700A2A4();
      sub_216697664(&v77, &qword_27CABB958, qword_217024758);
      sub_217006484();
      (*(v61 + 8))(v15, v13);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB948, &qword_217024748);
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v38);
      v6 = v71;
      v12 = v70;
      v18 = v69;
      v9 = v68;
      v24 = v67;
      goto LABEL_10;
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB948, &qword_217024748);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v26);
LABEL_10:
  sub_21678818C(v21, v24, &qword_27CABB940, &qword_217024740);
  v39 = 1;
  if (v25 != 1 && v66)
  {
    v40 = qword_27CAB59A8;
    sub_21700DF14();
    if (v40 != -1)
    {
      swift_once();
    }

    v41 = sub_21700A094();
    v43 = v42;
    v45 = v44;

    sub_21700ACF4();
    v46 = sub_21700A034();
    v48 = v47;
    v50 = v49;
    v52 = v51;

    sub_21678817C(v41, v43, v45 & 1);

    v53 = swift_getKeyPath();
    *&v77 = v46;
    *(&v77 + 1) = v48;
    LOBYTE(v78) = v50 & 1;
    *(&v78 + 1) = v52;
    *&v79 = v53;
    BYTE8(v79) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA298, &qword_21701F910);
    sub_21686C2B4();
    v54 = v63;
    sub_21700A2A4();
    sub_21678817C(v46, v48, v50 & 1);

    v9 = v68;
    v55 = v65;
    sub_217006484();
    (*(v64 + 8))(v54, v55);
    v39 = 0;
    v6 = v71;
    v12 = v70;
    v18 = v69;
    v24 = v67;
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA250, &qword_21701F8C8);
  __swift_storeEnumTagSinglePayload(v9, v39, 1, v56);
  sub_21678818C(v9, v12, &qword_27CABB930, &qword_217024730);
  sub_2166A6E54(v24, v18, &qword_27CABB940, &qword_217024740);
  sub_2166A6E54(v12, v6, &qword_27CABB930, &qword_217024730);
  v57 = v72;
  sub_2166A6E54(v18, v72, &qword_27CABB940, &qword_217024740);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB950, &qword_217024750);
  sub_2166A6E54(v6, v57 + *(v58 + 48), &qword_27CABB930, &qword_217024730);
  sub_216697664(v12, &qword_27CABB930, &qword_217024730);
  sub_216697664(v24, &qword_27CABB940, &qword_217024740);
  sub_216697664(v6, &qword_27CABB930, &qword_217024730);
  return sub_216697664(v18, &qword_27CABB940, &qword_217024740);
}

void *sub_2168D0408@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = sub_2170093B4();
  v24 = 0;
  sub_2168D05A8(a1, a2, __src);
  memcpy(__dst, __src, 0x2A1uLL);
  memcpy(v27, __src, 0x2A1uLL);
  sub_2166A6E54(__dst, v21, &qword_27CABB8F8, &qword_217024608);
  sub_216697664(v27, &qword_27CABB8F8, &qword_217024608);
  memcpy(&v23[7], __dst, 0x2A1uLL);
  v11 = v24;
  sub_21700B3B4();
  OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_3_48();
  memcpy(&v25[7], __src, 0x70uLL);
  LOBYTE(a2) = sub_217009C74();
  sub_217007F24();
  OUTLINED_FUNCTION_1_27();
  v25[120] = 0;
  LOBYTE(a1) = sub_217009CE4();
  sub_217007F24();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  *a3 = v10;
  *(a3 + 8) = 0;
  *(a3 + 16) = v11;
  memcpy((a3 + 17), v23, 0x2A8uLL);
  result = memcpy((a3 + 697), v25, 0x77uLL);
  *(a3 + 816) = a2;
  *(a3 + 824) = v3;
  *(a3 + 832) = v4;
  *(a3 + 840) = v5;
  *(a3 + 848) = v6;
  *(a3 + 856) = 0;
  *(a3 + 864) = a1;
  *(a3 + 872) = v13;
  *(a3 + 880) = v15;
  *(a3 + 888) = v17;
  *(a3 + 896) = v19;
  *(a3 + 904) = 0;
  return result;
}

uint64_t sub_2168D05A8@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 82);
  v9 = *(a1 + 80);
  v86 = v6;
  v88 = *(a1 + 40);
  v76 = v5;
  if (v4 == 1)
  {
    v10 = *(a1 + 72);
    v74 = 0;
    v83 = 0;
LABEL_18:
    v18 = 2;
    goto LABEL_19;
  }

  if (v5)
  {
    v11 = sub_216B80C28(v5);
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    v83 = v14 != 0;
    if (v4)
    {
LABEL_7:
      v15 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v15 = v88 & 0xFFFFFFFFFFFFLL;
      }

      v74 = v15 != 0;
      if (v7)
      {
        goto LABEL_10;
      }

LABEL_17:
      v10 = v7;
      goto LABEL_18;
    }
  }

  else
  {
    v83 = 0;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  v74 = 0;
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_10:
  v16 = HIBYTE(v7) & 0xF;
  v10 = v7;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v16 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v17 = v16 == 0;
  v18 = 1;
  if (v17)
  {
    v18 = 2;
  }

LABEL_19:
  v82 = v18;
  v19 = v9 | (v8 << 16);
  v20 = memcpy(v103, a2, sizeof(v103));
  MEMORY[0x28223BE20](v20);
  type metadata accessor for SocialBadgingRequestCoordinator(0);
  sub_2168D0F94(&qword_280E2FFC0, type metadata accessor for SocialBadgingRequestCoordinator, &unk_21703F3B8);
  KeyPath = swift_getKeyPath();
  sub_2166A6E54(a2, v97, &qword_27CABA180, &qword_21701F7B0);
  v21 = sub_217008CF4();
  v79 = v22;
  v80 = v21;
  v102 = 0;
  v101 = 0;
  sub_21700B3D4();
  sub_217008BB4();
  memcpy(&v104[7], __src, 0x70uLL);
  v78 = sub_217009CA4();
  sub_217007F24();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v104[120] = 0;
  if (v4 == 1)
  {
    LOBYTE(v31) = 0;
    v88 = 0;
    v32 = 0;
  }

  else
  {
    v31 = HIWORD(v19) & 1;
    sub_21700DF14();
    v32 = v4;
  }

  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_2168D0F94(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter, &unk_21701ED38);
  v34 = sub_217008CF4();
  if (v32)
  {
    v35 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v35 = v88 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      v72 = v33;
      goto LABEL_30;
    }

    v34 = 0;
    v72 = 0;
    v88 = 0;
    v32 = 0;
  }

  else
  {

    v34 = 0;
    v72 = 0;
    v88 = 0;
  }

  LOBYTE(v31) = 0;
LABEL_30:
  if (qword_27CAB59B0 != -1)
  {
    swift_once();
  }

  v36 = qword_27CABB8E0;
  v70 = swift_getKeyPath();
  v69 = swift_getKeyPath();
  v71 = v36;

  v68 = sub_21700ACF4();
  v67 = swift_getKeyPath();
  v65 = swift_getKeyPath();
  v37 = 0;
  v100 = 0;
  v38 = 0;
  v39 = 0;
  if (v4 != 1 && v76)
  {
    v37 = sub_216B80C28(v76);
    v39 = MEMORY[0x277D84F90];
  }

  v63 = v39;
  v64 = v38;
  v66 = v37;
  if (qword_27CAB59B8 != -1)
  {
    swift_once();
  }

  v77 = v31;
  v40 = qword_27CABB8E8;
  v61 = swift_getKeyPath();
  v62 = v40;

  v60 = sub_21700ACF4();
  v59 = swift_getKeyPath();
  v58 = swift_getKeyPath();
  v57 = swift_getKeyPath();
  v99 = 0;
  if (v4)
  {
    LOBYTE(v41) = 0;
  }

  else
  {
    v41 = HIWORD(v19) & 1;
  }

  if (v74)
  {
    v42 = v86;
    if (v83)
    {
      v43 = 1;
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v42 = v86;
  if (v83)
  {
LABEL_44:
    v43 = 2;
    goto LABEL_46;
  }

  v43 = 3;
LABEL_46:
  v75 = v43;
  if (v4 == 1)
  {
    v42 = 0;
    v10 = 0;
  }

  else
  {
    sub_21700DF14();
  }

  v45 = sub_217008CF4();
  v73 = v34;
  if (!v10)
  {

    v45 = 0;
    v44 = 0;
    v42 = 0;
    goto LABEL_55;
  }

  v46 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v46 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {

    v45 = 0;
    v44 = 0;
    v42 = 0;
    v10 = 0;
LABEL_55:
    LOBYTE(v41) = 0;
  }

  v55 = v44;
  v56 = v41;
  v47 = v32;
  v84 = v10;
  v87 = v42;
  if (qword_27CAB59C0 != -1)
  {
    swift_once();
  }

  v48 = qword_27CABB8F0;
  v49 = swift_getKeyPath();

  v50 = sub_21700ACF4();
  v51 = swift_getKeyPath();
  v52 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v97[352] = 0;
  memcpy(v92, v103, 0x78uLL);
  v92[15] = sub_2168D0DF4;
  v92[16] = 0;
  v92[17] = KeyPath;
  LOBYTE(v92[18]) = 0;
  v92[19] = v80;
  v92[20] = v79;
  v92[21] = sub_216B0E6FC;
  v92[22] = 0;
  LOBYTE(v92[23]) = 0;
  memcpy(&v92[23] + 1, v104, 0x77uLL);
  LOBYTE(v92[38]) = v78;
  v91[0] = v73;
  v91[1] = v72;
  v91[2] = v88;
  v91[3] = v47;
  v92[39] = v24;
  v92[40] = v26;
  v92[41] = v28;
  v92[42] = v30;
  LOBYTE(v92[43]) = 0;
  LOBYTE(v91[4]) = v77;
  v91[5] = v70;
  v91[6] = v71;
  v91[7] = v69;
  LOBYTE(v91[8]) = 1;
  v91[9] = v67;
  v91[10] = v68;
  v91[11] = v65;
  v91[12] = 1;
  LOBYTE(v91[13]) = 0;
  v93[0] = v92;
  v93[1] = v91;
  v90[0] = v66;
  v90[1] = v64;
  v90[2] = 0;
  v90[3] = v63;
  v90[4] = v61;
  v90[5] = v62;
  v90[6] = v59;
  v90[7] = v60;
  v90[8] = v58;
  LOBYTE(v90[9]) = 1;
  *(&v90[9] + 1) = *v98;
  HIDWORD(v90[9]) = *&v98[3];
  v90[10] = v57;
  v90[11] = v82;
  LOBYTE(v90[12]) = 0;
  v89[0] = v45;
  v89[1] = v55;
  v89[2] = v87;
  v89[3] = v84;
  LOBYTE(v89[4]) = v56;
  v89[5] = v49;
  v89[6] = v48;
  v89[7] = v51;
  v89[8] = v50;
  v89[9] = v52;
  LOBYTE(v89[10]) = 1;
  v89[11] = v53;
  v89[12] = v75;
  LOBYTE(v89[13]) = 0;
  v93[2] = v90;
  v93[3] = v89;
  sub_2168AA968(v93, a3);
  memcpy(v94, v89, 0x69uLL);
  sub_216697664(v94, &qword_27CABB300, &qword_217023410);
  memcpy(v95, v90, 0x61uLL);
  sub_216697664(v95, &qword_27CABB2F8, &qword_217023408);
  memcpy(v96, v91, 0x69uLL);
  sub_216697664(v96, &qword_27CABB2F0, &qword_217023400);
  memcpy(v97, v92, 0x159uLL);
  return sub_216697664(v97, &qword_27CABB2E8, &qword_2170233F8);
}

uint64_t sub_2168D0DFC()
{
  result = sub_217009EA4();
  qword_27CABB8C8 = result;
  return result;
}

uint64_t sub_2168D0E1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0, &unk_21701AFF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_217009D94();
  v3 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = sub_217009DF4();
  result = sub_216697664(v2, &qword_27CAB81D0, &unk_21701AFF0);
  qword_27CABB8D0 = v4;
  return result;
}

uint64_t sub_2168D0EF0(uint64_t a1)
{
  result = sub_217009D54();
  qword_27CABB8D8 = result;
  return result;
}

uint64_t sub_2168D0F10(uint64_t a1)
{
  sub_217009D44();
  sub_217009D94();
  v1 = sub_217009E34();

  qword_27CABB8E0 = v1;
  return result;
}

uint64_t sub_2168D0F54(uint64_t a1)
{
  result = sub_217009D44();
  qword_27CABB8E8 = result;
  return result;
}

uint64_t sub_2168D0F74(uint64_t a1)
{
  result = sub_217009D44();
  qword_27CABB8F0 = result;
  return result;
}

uint64_t sub_2168D0F94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2168D0FE4()
{
  result = qword_27CABB960;
  if (!qword_27CABB960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB958, qword_217024758);
    sub_21686C2B4();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB960);
  }

  return result;
}

void sub_2168D1128(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_21667E91C(v3, v4);
  v5 = [objc_opt_self() defaultCenter];
  v6 = v5;
  if (qword_280E29C88 != -1)
  {
    OUTLINED_FUNCTION_0_62(&qword_280E29C88);
    v5 = v6;
  }

  [v5 addObserver:v2 selector:sel_eventDidFire name:qword_280E739F8 object:0];
}

void sub_2168D11F4()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_280E29C88 != -1)
  {
    OUTLINED_FUNCTION_0_62(&qword_280E29C88);
    v1 = v2;
  }

  [v1 removeObserver:v0 name:qword_280E739F8 object:0];
}

uint64_t sub_2168D1294()
{
  v0 = sub_216B127F4();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2168D1300()
{
  result = sub_21700E4D4();
  qword_280E739F8 = result;
  return result;
}

uint64_t sub_2168D1398(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MusicAppDestination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB968, qword_217035FC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v19 - v8;
  v10 = type metadata accessor for ShareableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppDestinationPageProviderBox();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v14 = v19[1];
  v15 = type metadata accessor for ShareMusicItemAction(0);
  sub_216681B04(a1 + *(v15 + 20), v9, &qword_27CABB968, qword_217035FC0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_216697664(v9, &qword_27CABB968, qword_217035FC0);
LABEL_6:
    v17 = sub_2168D1B58(a1, a2);

    return v17;
  }

  sub_2168D2070(v9, v13);
  sub_2168D2170(v13, v6, type metadata accessor for ShareableMusicItem);
  swift_storeEnumTagMultiPayload();
  v16 = (*(*v14 + 80))(v6, 1);
  sub_2168D21D0(v6, type metadata accessor for MusicAppDestination);
  if ((v16 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_49();
    goto LABEL_6;
  }

  v17 = sub_2168D1614(a1, a2);

  OUTLINED_FUNCTION_1_49();
  return v17;
}

uint64_t sub_2168D1614(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v27 - v3;
  v28 = type metadata accessor for PresentSheetAction(0);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicAppDestination(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v29 = &v27 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB968, qword_217035FC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = type metadata accessor for ShareableMusicItem(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for ShareMusicItemAction(0) + 20);
  v30 = a1;
  sub_216681B04(a1 + v17, v13, &qword_27CABB968, qword_217035FC0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_216697664(v13, &qword_27CABB968, qword_217035FC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
    sub_2168D20D4();
    swift_allocError();
    return sub_21700E1E4();
  }

  else
  {
    sub_2168D2070(v13, v16);
    type metadata accessor for ObjectGraph(0);
    v19 = v29;
    sub_21700E094();
    sub_2168D2170(v16, v8, type metadata accessor for ShareableMusicItem);
    swift_storeEnumTagMultiPayload();
    v20 = v28;
    sub_2168D2170(v8, &v5[*(v28 + 20)], type metadata accessor for MusicAppDestination);
    type metadata accessor for ModalActionModelDestinations.Destination(0);
    swift_storeEnumTagMultiPayload();
    v21 = sub_21700D284();
    (*(*(v21 - 8) + 16))(v5, v30, v21);
    v36[3] = v20;
    v36[4] = sub_2168D2128(qword_280E3EA78, type metadata accessor for PresentSheetAction, &unk_217045370);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    sub_2168D2170(v5, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
    v24 = v32;
    v23 = v33;
    v25 = v35;
    (*(v33 + 104))(v32, *MEMORY[0x277D21E18], v35);
    v18 = sub_21700D5E4();
    (*(v23 + 8))(v24, v25);
    sub_2168D21D0(v5, type metadata accessor for PresentSheetAction);
    sub_2168D21D0(v8, type metadata accessor for MusicAppDestination);
    (*(v31 + 8))(v19, v9);
    sub_2168D21D0(v16, type metadata accessor for ShareableMusicItem);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  return v18;
}

uint64_t sub_2168D1B58(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v27 - v3;
  v4 = type metadata accessor for ModalFlowAction(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_217005EF4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ShareMusicItemAction(0);
  sub_216681B04(v32 + *(v17 + 24), v12, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_216697664(v12, &qword_27CABA820, &unk_217018CE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
    sub_2168D20D4();
    swift_allocError();
    return sub_21700E1E4();
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    type metadata accessor for ObjectGraph(0);
    sub_21700E094();
    sub_21700D234();
    v19 = *(v4 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB978, &qword_2170248D0);
    v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_217013DA0;
    (*(v14 + 16))(v21 + v20, v16, v13);
    *&v6[v19] = v21;
    type metadata accessor for FlowAction.Destination(0);
    swift_storeEnumTagMultiPayload();
    *&v6[*(v4 + 24)] = xmmword_217015580;
    v34[3] = v4;
    v34[4] = sub_2168D2128(qword_280E426A8, type metadata accessor for ModalFlowAction, &unk_217063664);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    sub_2168D2170(v6, boxed_opaque_existential_1, type metadata accessor for ModalFlowAction);
    v24 = v29;
    v23 = v30;
    v25 = v31;
    (*(v30 + 104))(v29, *MEMORY[0x277D21E18], v31);
    v18 = sub_21700D5E4();
    (*(v23 + 8))(v24, v25);
    sub_2168D21D0(v6, type metadata accessor for ModalFlowAction);
    (*(v28 + 8))(v9, v7);
    (*(v14 + 8))(v16, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  return v18;
}

uint64_t sub_2168D2070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareableMusicItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2168D20D4()
{
  result = qword_27CABB970;
  if (!qword_27CABB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB970);
  }

  return result;
}

uint64_t sub_2168D2128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2168D2170(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2168D21D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *sub_2168D2228(_BYTE *result, int a2, int a3)
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

unint64_t sub_2168D22E0()
{
  result = qword_27CABB980;
  if (!qword_27CABB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB980);
  }

  return result;
}

id sub_2168D2334(uint64_t a1, uint64_t a2)
{
  sub_2169F15B8();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277D546D8]);
  return sub_2168D24E8(v3, 0);
}

uint64_t sub_2168D239C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2168D25C8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2168D2400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2168D25C8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2168D2464(uint64_t a1)
{
  sub_2168D25C8();
  sub_217009AF4();
  __break(1u);
}

unint64_t sub_2168D2494()
{
  result = qword_27CABB988;
  if (!qword_27CABB988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB988);
  }

  return result;
}

id sub_2168D24E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700E804();

  if (a2)
  {
    sub_2168D2584();
    v5 = sub_21700E804();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 initWithActivityItems:v4 applicationActivities:v5];

  return v6;
}

unint64_t sub_2168D2584()
{
  result = qword_27CABB990;
  if (!qword_27CABB990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CABB990);
  }

  return result;
}

unint64_t sub_2168D25C8()
{
  result = qword_27CABB998;
  if (!qword_27CABB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB998);
  }

  return result;
}

id sub_2168D261C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = _s6ActionVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[1])
  {
    sub_21700DF14();
    v10 = sub_21700E4D4();
  }

  else
  {
    v10 = 0;
  }

  if (a1[4])
  {
    sub_21700DF14();
    v11 = sub_21700E4D4();
  }

  else
  {
    v11 = 0;
  }

  v12 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v10 message:v11 preferredStyle:a2];

  v13 = a1[2];
  v19 = v13;
  v14 = *(v13 + 16);
  v15 = v12;
  for (i = 0; ; ++i)
  {
    if (v14 == i)
    {

      sub_21669987C(&v19, &qword_27CAB6BA0, qword_217037400);

      return v15;
    }

    if (i >= *(v13 + 16))
    {
      break;
    }

    sub_2168D29EC(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * i, v9);
    sub_2168D2840(v9, a3, v15);
    sub_2168D2A50(v9);
  }

  __break(1u);

  result = sub_2168D2A50(v9);
  __break(1u);
  return result;
}

void sub_2168D2840(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = _s6ActionVMa(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2168D2AAC();
  v12 = *(a1 + 24);
  v20 = *(a1 + 16);
  v21 = v11;
  v13 = *(v7 + 28);
  sub_21700DF14();
  v14 = sub_2168D2AF0(a1 + v13);
  sub_2168D29EC(a1, v10);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_21681622C(v10, v17 + v15);
  *(v17 + v16) = a2;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

  v18 = sub_2169442E8(v20, v12, v14, sub_2168D35AC, v17);
  [a3 addAction_];
}

uint64_t sub_2168D29EC(uint64_t a1, uint64_t a2)
{
  v4 = _s6ActionVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168D2A50(uint64_t a1)
{
  v2 = _s6ActionVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2168D2AAC()
{
  result = qword_27CABB9B8;
  if (!qword_27CABB9B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CABB9B8);
  }

  return result;
}

uint64_t sub_2168D2AF0(uint64_t a1)
{
  v2 = sub_217007F04();
  v41 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9C8, qword_217024A90);
  MEMORY[0x28223BE20](v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  MEMORY[0x28223BE20](v9 - 8);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  sub_216681B64(a1, &v36 - v21, &qword_27CAB70A8, &qword_21701B9E0);
  sub_217007EF4();
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v2);
  v40 = v4;
  v23 = *(v4 + 48);
  sub_216681B64(v19, v8, &qword_27CAB70A8, &qword_21701B9E0);
  sub_216681B64(v22, &v8[v23], &qword_27CAB70A8, &qword_21701B9E0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_21669987C(v19, &qword_27CAB70A8, &qword_21701B9E0);
    if (__swift_getEnumTagSinglePayload(&v8[v23], 1, v2) == 1)
    {
      sub_21669987C(v8, &qword_27CAB70A8, &qword_21701B9E0);
LABEL_15:
      sub_21669987C(v22, &qword_27CAB70A8, &qword_21701B9E0);
      return 1;
    }

    goto LABEL_6;
  }

  sub_216681B64(v8, v16, &qword_27CAB70A8, &qword_21701B9E0);
  if (__swift_getEnumTagSinglePayload(&v8[v23], 1, v2) == 1)
  {
    sub_21669987C(v19, &qword_27CAB70A8, &qword_21701B9E0);
    (*(v41 + 8))(v16, v2);
LABEL_6:
    sub_21669987C(v8, &qword_27CABB9C8, qword_217024A90);
    goto LABEL_7;
  }

  v28 = v41;
  v29 = v38;
  (*(v41 + 32))(v38, &v8[v23], v2);
  sub_2168D3744();
  v30 = sub_21700E494();
  v31 = *(v28 + 8);
  v31(v29, v2);
  sub_21669987C(v19, &qword_27CAB70A8, &qword_21701B9E0);
  v31(v16, v2);
  sub_21669987C(v8, &qword_27CAB70A8, &qword_21701B9E0);
  if (v30)
  {
    goto LABEL_15;
  }

LABEL_7:
  sub_217007ED4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v2);
  v24 = v39;
  v25 = *(v40 + 48);
  sub_216681B64(v13, v39, &qword_27CAB70A8, &qword_21701B9E0);
  sub_2168D36D4(v22, v24 + v25);
  if (__swift_getEnumTagSinglePayload(v24, 1, v2) != 1)
  {
    v26 = v37;
    sub_216681B64(v24, v37, &qword_27CAB70A8, &qword_21701B9E0);
    if (__swift_getEnumTagSinglePayload(v24 + v25, 1, v2) != 1)
    {
      v32 = v41;
      v33 = v38;
      (*(v41 + 32))(v38, v24 + v25, v2);
      sub_2168D3744();
      v34 = sub_21700E494();
      v35 = *(v32 + 8);
      v35(v33, v2);
      sub_21669987C(v13, &qword_27CAB70A8, &qword_21701B9E0);
      v35(v26, v2);
      sub_21669987C(v24, &qword_27CAB70A8, &qword_21701B9E0);
      if (v34)
      {
        return 2;
      }

      return 0;
    }

    sub_21669987C(v13, &qword_27CAB70A8, &qword_21701B9E0);
    (*(v41 + 8))(v26, v2);
LABEL_12:
    sub_21669987C(v24, &qword_27CABB9C8, qword_217024A90);
    return 0;
  }

  sub_21669987C(v13, &qword_27CAB70A8, &qword_21701B9E0);
  if (__swift_getEnumTagSinglePayload(v24 + v25, 1, v2) != 1)
  {
    goto LABEL_12;
  }

  sub_21669987C(v24, &qword_27CAB70A8, &qword_21701B9E0);
  return 2;
}

uint64_t sub_2168D30F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21700DA84();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v8 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9C0, &unk_21705C170);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v32 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  sub_216681B64(a2 + 32, &v34, &qword_27CAB6DB0, &qword_217016C00);
  if (!v35)
  {
    return sub_21669987C(&v34, &qword_27CAB6DB0, &qword_217016C00);
  }

  sub_2166A0F18(&v34, v36);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v30 = a3;
  sub_21700D4B4();
  sub_216681B64(v16, v13, &qword_27CABB9C0, &unk_21705C170);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    sub_21669987C(v13, &qword_27CABB9C0, &unk_21705C170);
    if (qword_27CAB59D0 != -1)
    {
      swift_once();
    }

    v20 = sub_217007CA4();
    __swift_project_value_buffer(v20, qword_27CABB9A0);
    v21 = sub_217007C84();
    v22 = sub_21700ED84();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v16;
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_216679000, v21, v22, "Not processing metrics because the metrics fields context is missing from the object graph", v24, 2u);
      v25 = v24;
      v16 = v23;
      MEMORY[0x21CEA1440](v25, -1, -1);
    }

    v26 = MEMORY[0x277D21E18];
  }

  else
  {
    v28 = *(v31 + 32);
    v28(v7, v13, v5);
    v28(v10, v7, v5);
    v26 = MEMORY[0x277D21E10];
  }

  v29 = v33;
  (*(v8 + 104))(v10, *v26, v33);
  sub_21700D5E4();

  (*(v8 + 8))(v10, v29);
  sub_21669987C(v16, &qword_27CABB9C0, &unk_21705C170);
  (*(v32 + 8))(v19, v17);
  return __swift_destroy_boxed_opaque_existential_1Tm(v36);
}

uint64_t sub_2168D35AC(uint64_t a1)
{
  v3 = *(_s6ActionVMa(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2168D30F0(a1, v1 + v4, v5);
}

uint64_t sub_2168D3654()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABB9A0);
  __swift_project_value_buffer(v0, qword_27CABB9A0);
  return sub_217007C94();
}

uint64_t sub_2168D36D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2168D3744()
{
  result = qword_27CABB9D0;
  if (!qword_27CABB9D0)
  {
    sub_217007F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB9D0);
  }

  return result;
}

unint64_t sub_2168D37B0()
{
  result = qword_280E3F590[0];
  if (!qword_280E3F590[0])
  {
    type metadata accessor for UnblockUserAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3F590);
  }

  return result;
}

uint64_t sub_2168D38EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_2168D3960(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_2168D39D0(uint64_t a1, const void *a2)
{
  v3[17] = v2;
  memcpy(v3 + 2, a2, 0x78uLL);
  v4 = swift_task_alloc();
  v3[18] = v4;
  *v4 = v3;
  v4[1] = sub_2168D3A7C;

  return sub_216A97E28();
}

uint64_t sub_2168D3A7C(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_2168D3B7C, 0, 0);
}

uint64_t sub_2168D3B7C()
{
  v1 = v0[19];
  if (!v1)
  {
LABEL_5:
    v6 = v0[1];

    return v6();
  }

  v2 = *(v1 + 16);
  v3 = *(sub_2168D38EC() + 16);

  if (v2 == v3 || (sub_2168D38EC(), sub_216E210A8(), v5 = v4, , (v5 & 1) != 0))
  {

    goto LABEL_5;
  }

  sub_21700EA34();
  v0[20] = sub_21700EA24();
  v9 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2168D3CA0, v9, v8);
}

uint64_t sub_2168D3CA0()
{
  v1 = *(v0 + 152);

  sub_2168D3960(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2168D3D0C()
{
  v1 = OBJC_IVAR____TtC7MusicUI26SocialBadgingViewPresenter__profiles;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E0, &qword_217024B80);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for SocialBadgingViewPresenter(uint64_t a1)
{
  result = qword_280E33ED8;
  if (!qword_280E33ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168D3E08(uint64_t a1)
{
  sub_2168D3E98(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2168D3E98(uint64_t a1)
{
  if (!qword_280E483B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB9D8, &qword_217024B40);
    v1 = sub_217007E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E483B8);
    }
  }
}

uint64_t sub_2168D3EFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E0, &qword_217024B80);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - v3;
  v5 = OBJC_IVAR____TtC7MusicUI26SocialBadgingViewPresenter__profiles;
  v7[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9D8, &qword_217024B40);
  sub_217007DA4();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t sub_2168D4034@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_21700F164();
  OUTLINED_FUNCTION_34();
  v7 = *(v6 + 16);

  return v7(a3, a1, v5);
}

uint64_t sub_2168D4098(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;

  v14[0] = sub_2168E164C(a1, a2);
  v14[1] = v9;
  v14[2] = v10;
  v12 = type metadata accessor for PageViewEnvironmentModifier(0, *(v8 + 80), *(v8 + 88), v11);
  MEMORY[0x21CE9B900](v14, a3, v12, a4);
}

void sub_2168D416C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_49();
  v49 = v21;
  v44 = v22;
  v45 = v23;
  v25 = v24;
  v47 = v26;
  v48 = v27;
  v29 = *(*v28 + 88);
  v30 = *(*v28 + 80);
  v46 = a21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v36 = &v43 - v35;
  v38 = type metadata accessor for PageViewContentViewModifier(0, v30, v29, v37);
  OUTLINED_FUNCTION_1();
  v40 = v39;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_67_0();
  (*(v33 + 16))(v36, v44, AssociatedTypeWitness);
  v42 = *v25;
  v51 = v25[1];
  v52 = v42;
  swift_unknownObjectRetain();

  sub_2168282D4(&v52, v50, &qword_27CABAA40, &unk_217014260);
  sub_2168282D4(&v51, v50, &qword_27CABAA40, &unk_217014260);

  sub_2168E3008();
  MEMORY[0x21CE9B900](v30, v49, v38, v46);
  (*(v40 + 8))(v30, v38);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168D43D4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = type metadata accessor for CatalogPagePresenter(0, *(a1 + 16), *(a1 + 32), a4);
  WitnessTable = swift_getWitnessTable();

  return a2(v5, v6, v7, v8, WitnessTable);
}

uint64_t sub_2168D4468()
{
  OUTLINED_FUNCTION_26_20();
  v4 = sub_2168D43D4(v0, v1, v2, v3);

  return sub_2168E1688(v4);
}

void sub_2168D4494()
{
  OUTLINED_FUNCTION_49();
  v219 = v0;
  v2 = v1;
  v216 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E8, qword_217028D30);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v214 = v2;
  v215 = v6;
  v7 = v2;
  v8 = *(v2 + 16);
  v9 = *(v2 + 32);
  v11 = type metadata accessor for DefaultLoadingStyle(255, v8, v9, v10);
  OUTLINED_FUNCTION_23_16();
  WitnessTable = swift_getWitnessTable();
  v289 = v8;
  v290 = v11;
  v291 = v9;
  v292 = WitnessTable;
  v13 = OUTLINED_FUNCTION_22_11();
  v218 = type metadata accessor for PageLoadingView(v13, v14);
  v15 = OUTLINED_FUNCTION_36_12();
  type metadata accessor for CatalogPagePresenter.State(v15, v16, v17, v18);
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  OUTLINED_FUNCTION_34_4();
  v213 = sub_217007E04();
  v19 = OUTLINED_FUNCTION_36_12();
  v197 = type metadata accessor for SongDetailPageView(v19, v20, v21, v22);
  v23 = OUTLINED_FUNCTION_36_12();
  type metadata accessor for CatalogPagePresenter(v23, v24, v25, v26);
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  OUTLINED_FUNCTION_34_4();
  v196[2] = sub_217009B34();
  OUTLINED_FUNCTION_11_27();
  v200 = sub_2170089F4();
  v27 = OUTLINED_FUNCTION_36_12();
  v28 = v9;
  v203 = type metadata accessor for SearchPageListContentView(v27, v29, v30, v31);
  OUTLINED_FUNCTION_12_24();
  v205 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA40, &qword_217024F38);
  OUTLINED_FUNCTION_19_0();
  v206 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA48, &qword_217024F40);
  OUTLINED_FUNCTION_19_0();
  v196[1] = sub_217009564();
  v211 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA50, &qword_217024F48);
  v210 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA58, &unk_217024F50);
  v209 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9000, &qword_21701C310);
  v32 = v8;
  v217 = v8;
  v33 = v28;
  v212 = v28;
  v35 = type metadata accessor for CatalogSectionView(255, v8, v28, v34);
  OUTLINED_FUNCTION_15_22();
  v36 = swift_getWitnessTable();
  v289 = v35;
  v290 = v36;
  v37 = MEMORY[0x277D7EDB8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v196[0] = *(v7 + 24);
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v39 = sub_21700B084();
  OUTLINED_FUNCTION_32_15();
  v42 = sub_2166D9530(v40, &qword_27CAB9000, &qword_21701C310, v41);
  v289 = v35;
  v290 = v36;
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_14_20();
  v43 = swift_getWitnessTable();
  OUTLINED_FUNCTION_31_20();
  v46 = sub_2166B4B88(v44, v45, &unk_21706B560);
  v289 = v209;
  v290 = OpaqueTypeMetadata2;
  v291 = v39;
  v292 = v32;
  v293 = v42;
  v294 = v37;
  v295 = v43;
  v296 = v33;
  v297 = &off_280E43BE0;
  v298 = v46;
  v47 = OUTLINED_FUNCTION_22_11();
  type metadata accessor for PaginatingShelfCollection(v47, v48);
  _s27BannerNavigationItemAdaptorVMa(255);
  OUTLINED_FUNCTION_19_0();
  v196[3] = sub_2170089F4();
  v196[4] = sub_217009564();
  v196[5] = sub_217009564();
  v196[6] = sub_217009564();
  v196[7] = sub_21700F164();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA60, &unk_217024F60);
  OUTLINED_FUNCTION_19_0();
  v196[9] = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA68, &qword_217057700);
  OUTLINED_FUNCTION_37_15();
  v196[10] = sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA70, &unk_217024F70);
  OUTLINED_FUNCTION_19_0();
  v196[12] = sub_2170089F4();
  OUTLINED_FUNCTION_12_24();
  v196[8] = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA78, &unk_2170708C0);
  OUTLINED_FUNCTION_19_0();
  v196[11] = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA80, &qword_217024F80);
  OUTLINED_FUNCTION_19_0();
  v196[13] = sub_2170089F4();
  OUTLINED_FUNCTION_11_27();
  v196[14] = sub_217009564();
  OUTLINED_FUNCTION_37_15();
  v196[16] = sub_217009564();
  v196[15] = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9278, &qword_21701C850);
  OUTLINED_FUNCTION_19_0();
  v199 = sub_2170089F4();
  v198 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9290, &unk_21701C860);
  OUTLINED_FUNCTION_37_15();
  v202 = sub_2170089F4();
  v201 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9298, &unk_2170544C0);
  OUTLINED_FUNCTION_19_0();
  v204 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92A0, &unk_21701C870);
  OUTLINED_FUNCTION_19_0();
  v207 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA88, &qword_217024F88);
  OUTLINED_FUNCTION_19_0();
  v208 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92A8, &unk_217024F90);
  OUTLINED_FUNCTION_19_0();
  v209 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92B0, &unk_21701C880);
  OUTLINED_FUNCTION_19_0();
  v210 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92B8, &qword_217024FA0);
  OUTLINED_FUNCTION_19_0();
  v211 = sub_2170089F4();
  OUTLINED_FUNCTION_25_15();
  v49 = swift_getWitnessTable();
  v50 = MEMORY[0x277CE0868];
  v51 = swift_getWitnessTable();
  v287 = v49;
  v288 = v51;
  v52 = swift_getWitnessTable();
  OUTLINED_FUNCTION_24_16();
  v53 = swift_getWitnessTable();
  v285 = v52;
  v286 = v53;
  v54 = swift_getWitnessTable();
  v55 = sub_2168E41B0();
  v283 = v54;
  v284 = v55;
  v56 = swift_getWitnessTable();
  v57 = sub_2168E42C0();
  v281 = v56;
  v282 = v57;
  v58 = swift_getWitnessTable();
  v59 = sub_2168E4548();
  OUTLINED_FUNCTION_21_7();
  v62 = sub_2166D9530(v60, &qword_27CABBA58, &unk_217024F50, v61);
  OUTLINED_FUNCTION_20_19();
  v63 = swift_getWitnessTable();
  OUTLINED_FUNCTION_18_18();
  v66 = sub_2166B4B88(v64, v65, &unk_21706FBF8);
  v279 = v63;
  v280 = v66;
  v67 = swift_getWitnessTable();
  v277 = v62;
  v278 = v67;
  v68 = swift_getWitnessTable();
  v275 = v59;
  v276 = v68;
  v69 = swift_getWitnessTable();
  v273 = v58;
  v274 = v69;
  v272 = swift_getWitnessTable();
  OUTLINED_FUNCTION_17_26();
  v70 = swift_getWitnessTable();
  OUTLINED_FUNCTION_16_6();
  v73 = sub_2166D9530(v71, &qword_27CABBA60, &unk_217024F60, v72);
  v270 = v70;
  v271 = v73;
  v74 = swift_getWitnessTable();
  v75 = sub_2166D9530(&qword_280E2A7B0, &qword_27CABBA68, &qword_217057700, v50);
  v268 = v74;
  v269 = v75;
  v266 = swift_getWitnessTable();
  v267 = v75;
  v76 = swift_getWitnessTable();
  v77 = MEMORY[0x277CE0328];
  v78 = sub_2166D9530(&qword_280E2AC10, &qword_27CABBA70, &unk_217024F70, MEMORY[0x277CE0328]);
  v264 = v76;
  v265 = v78;
  v79 = swift_getWitnessTable();
  v262 = v76;
  v263 = v79;
  v80 = swift_getWitnessTable();
  v81 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78, &unk_2170708C0, v77);
  v260 = v76;
  v261 = v81;
  v82 = swift_getWitnessTable();
  v83 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80, &qword_217024F80, v77);
  v258 = v76;
  v259 = v83;
  v84 = swift_getWitnessTable();
  v256 = v82;
  v257 = v84;
  v85 = swift_getWitnessTable();
  v254 = v80;
  v255 = v85;
  v252 = swift_getWitnessTable();
  v253 = v76;
  v86 = swift_getWitnessTable();
  v87 = sub_2166D9530(&qword_280E2A738, &qword_27CAB9278, &qword_21701C850, v50);
  v250 = v86;
  v251 = v87;
  v248 = swift_getWitnessTable();
  v249 = v51;
  v88 = swift_getWitnessTable();
  v89 = sub_2166D9530(&qword_280E2A768, &qword_27CAB9290, &unk_21701C860, v50);
  v246 = v88;
  v247 = v89;
  v244 = swift_getWitnessTable();
  v245 = v89;
  v90 = swift_getWitnessTable();
  v91 = sub_2166D9530(&qword_280E2A778, &qword_27CAB9298, &unk_2170544C0, v50);
  v242 = v90;
  v243 = v91;
  v92 = swift_getWitnessTable();
  v93 = sub_2166D9530(&qword_280E2A7B8, &qword_27CAB92A0, &unk_21701C870, v50);
  v240 = v92;
  v241 = v93;
  v94 = swift_getWitnessTable();
  v95 = sub_2166D9530(&qword_280E2A790, &qword_27CABBA88, &qword_217024F88, v50);
  v238 = v94;
  v239 = v95;
  v96 = swift_getWitnessTable();
  v97 = sub_2166D9530(&qword_280E2A770, &qword_27CAB92A8, &unk_217024F90, v50);
  v236 = v96;
  v237 = v97;
  v98 = swift_getWitnessTable();
  v99 = sub_2166D9530(&qword_280E2A788, &qword_27CAB92B0, &unk_21701C880, v50);
  v234 = v98;
  v235 = v99;
  v100 = swift_getWitnessTable();
  v101 = sub_2166D9530(&qword_280E2A7F8, &qword_27CAB92B8, &qword_217024FA0, v50);
  v232 = v100;
  v233 = v101;
  v102 = v211;
  v103 = swift_getWitnessTable();
  v289 = v102;
  v290 = v103;
  v104 = swift_getOpaqueTypeMetadata2();
  v289 = v102;
  v290 = v103;
  v105 = OUTLINED_FUNCTION_46_12();
  v289 = v104;
  v290 = v105;
  v106 = swift_getOpaqueTypeMetadata2();
  v289 = v104;
  v290 = v105;
  v107 = OUTLINED_FUNCTION_46_12();
  v289 = v106;
  v290 = v107;
  v108 = swift_getOpaqueTypeMetadata2();
  v289 = v106;
  v290 = v107;
  v109 = OUTLINED_FUNCTION_46_12();
  v289 = v108;
  v290 = v109;
  v110 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22_25();
  v111 = v213;
  v112 = swift_getWitnessTable();
  v289 = v108;
  v290 = v109;
  v113 = v219;
  v114 = v212;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v289 = v111;
  v290 = v110;
  v291 = v112;
  v292 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_22_11();
  v116 = sub_217008B74();
  type metadata accessor for PageViewContentViewModifier(255, v217, v114, v117);
  OUTLINED_FUNCTION_19_0();
  v197 = v116;
  v198 = v118;
  v199 = sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_19_0();
  v200 = v119;
  v120 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9150, &qword_21701C740);
  OUTLINED_FUNCTION_72_0();
  v201 = v120;
  v121 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v203 = v122;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_105();
  v202 = v124;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBAA0, &qword_217024FC0);
  OUTLINED_FUNCTION_72_0();
  v204 = v121;
  v125 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v127 = v126;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_105();
  v206 = v129;
  v130 = OUTLINED_FUNCTION_11_27();
  type metadata accessor for PageViewEnvironmentModifier(v130, v131, v114, v132);
  OUTLINED_FUNCTION_72_0();
  v205 = v133;
  v134 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v136 = v135;
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_77();
  v207 = v138 - v139;
  MEMORY[0x28223BE20](v140);
  v208 = v196 - v141;
  OUTLINED_FUNCTION_26_20();
  v142 = v214;
  sub_2168D43D4(v214, v143, v144, v145);
  v146 = *(v113 + *(v142 + 92));
  if (v146)
  {
    v209 = v127;
    v210 = v125;
    v211 = v136;
    v213 = v134;
    v147 = *(v113 + *(v142 + 60));
    v148 = (v113 + *(v142 + 108));
    v149 = *v148;
    if (*v148)
    {
      v150 = v148[1];

      v151 = v149;
    }

    else
    {
      v152 = *(v142 + 40);

      v289 = v217;
      v290 = v196[0];
      v291 = v114;
      v292 = v152;
      type metadata accessor for PageView.ImpressionTracker(0, &v289);
      swift_getWitnessTable();
      v151 = *(sub_2170081B4() + 16);

      v150 = MEMORY[0x277D221C0];
    }

    swift_unknownObjectRetain();
    v153 = sub_216A40014(v146, v147, v151, v150);
    v217 = v153;
    swift_unknownObjectRelease();

    v154 = MEMORY[0x277CDF490];
    v212 = MEMORY[0x277CDF490];
    v157 = sub_2168D43D4(v142, MEMORY[0x277CDF490], v155, v156);
    v158 = v202;
    sub_2168D579C(v157, v153, v142, v202);

    swift_getKeyPath();
    sub_2168D43D4(v142, v154, v159, v160);
    v161 = v215;
    sub_216A4027C();

    v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38, &qword_217024F30);
    __swift_storeEnumTagSinglePayload(v161, 0, 1, v162);
    OUTLINED_FUNCTION_30_16();
    v163 = swift_getWitnessTable();
    OUTLINED_FUNCTION_29_16();
    v164 = swift_getWitnessTable();
    OUTLINED_FUNCTION_1_50();
    v165 = swift_getWitnessTable();
    v230 = v164;
    v231 = v165;
    v228 = swift_getWitnessTable();
    v229 = MEMORY[0x277CE0790];
    v166 = swift_getWitnessTable();
    v226 = v163;
    v227 = v166;
    v167 = swift_getWitnessTable();
    OUTLINED_FUNCTION_28_2();
    v172 = sub_2166D9530(v168, v169, v170, v171);
    v224 = v167;
    v225 = v172;
    v173 = v142;
    v174 = v204;
    v175 = swift_getWitnessTable();
    v176 = v206;
    sub_21700A3D4();

    sub_2166997CC(v161, &qword_27CABB9E8, qword_217028D30);
    (*(v203 + 8))(v158, v174);
    sub_2168D43D4(v173, v212, v177, v178);
    v179 = sub_2166D9530(&qword_280E2A748, &qword_27CABBAA0, &qword_217024FC0, MEMORY[0x277CE0868]);
    v222 = v175;
    v223 = v179;
    v180 = v210;
    v181 = swift_getWitnessTable();
    v182 = v207;
    OUTLINED_FUNCTION_49_11();
    sub_2168D4098(v183, v184, v185, v186);

    (*(v209 + 8))(v176, v180);
    OUTLINED_FUNCTION_6_32();
    v187 = swift_getWitnessTable();
    v220 = v181;
    v221 = v187;
    v188 = v213;
    v189 = swift_getWitnessTable();
    sub_2166C24DC(v182, v188, v189);
    v190 = *(v211 + 8);
    v190(v182, v188);
    v191 = OUTLINED_FUNCTION_53_0();
    sub_2166C24DC(v191, v192, v189);
    v193 = OUTLINED_FUNCTION_53_0();
    (v190)(v193);
    OUTLINED_FUNCTION_26();
  }

  else
  {
    type metadata accessor for MusicStackAuthority(0);
    OUTLINED_FUNCTION_19_22();
    sub_2166B4B88(v194, v195, &protocol conformance descriptor for MusicStackAuthority);
    sub_217008CD4();
    __break(1u);
  }
}

uint64_t sub_2168D579C@<X0>(char *a1@<X0>, uint64_t (*a2)()@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v354 = a2;
  v394 = a1;
  v372 = a4;
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9150, &qword_21701C740);
  v339 = *(v393 - 8);
  MEMORY[0x28223BE20](v393);
  v338 = &v282 - v5;
  v387 = a3;
  v6 = *--a3;
  v347 = v6;
  MEMORY[0x28223BE20](v7);
  v344 = v8;
  v346 = &v282 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3[3];
  v10 = a3[5];
  v371 = type metadata accessor for CatalogPagePresenter.State(255, v9, v10, v11);
  v370 = sub_21700F164();
  v386 = sub_217007E04();
  v345 = *(v386 - 8);
  MEMORY[0x28223BE20](v386);
  v343 = &v282 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  MEMORY[0x28223BE20](v13 - 8);
  v350 = &v282 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180, &qword_21701C770);
  MEMORY[0x28223BE20](v15 - 8);
  v340 = &v282 - v16;
  v342 = sub_2170080D4();
  v349 = *(v342 - 8);
  MEMORY[0x28223BE20](v342);
  v348 = &v282 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8, &unk_2170575E0);
  MEMORY[0x28223BE20](v18 - 8);
  v337 = &v282 - v19;
  v368 = type metadata accessor for SongDetailPageView(255, v9, v10, v20);
  v341 = type metadata accessor for CatalogPagePresenter(255, v9, v10, v21);
  sub_21700F164();
  v356 = sub_217009B34();
  v369 = sub_2170089F4();
  v385 = type metadata accessor for SearchPageListContentView(255, v9, v10, v22);
  v389 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA40, &qword_217024F38);
  v392 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA48, &qword_217024F40);
  v355 = sub_217009564();
  v384 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA50, &qword_217024F48);
  v383 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA58, &unk_217024F50);
  v382 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9000, &qword_21701C310);
  v391 = v9;
  v390 = v10;
  v24 = type metadata accessor for CatalogSectionView(255, v9, v10, v23);
  WitnessTable = swift_getWitnessTable();
  *&v482 = v24;
  *(&v482 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v351 = a3[4];
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v27 = sub_21700B084();
  v28 = sub_2166D9530(&qword_280E29FC0, &qword_27CAB9000, &qword_21701C310, MEMORY[0x277D83980]);
  *&v482 = v24;
  *(&v482 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = swift_getWitnessTable();
  v31 = sub_2166B4B88(&qword_280E43BC8, type metadata accessor for MappedSection, &unk_21706B560);
  *&v482 = v382;
  *(&v482 + 1) = OpaqueTypeMetadata2;
  *&v483 = v27;
  *(&v483 + 1) = v9;
  v484 = v28;
  v485 = OpaqueTypeConformance2;
  v486 = v30;
  v487 = v10;
  v488 = &off_280E43BE0;
  v489 = v31;
  type metadata accessor for PaginatingShelfCollection(255, &v482);
  _s27BannerNavigationItemAdaptorVMa(255);
  v362 = sub_2170089F4();
  v364 = sub_217009564();
  v366 = sub_217009564();
  v367 = sub_217009564();
  v373 = sub_21700F164();
  v314 = *(v373 - 8);
  MEMORY[0x28223BE20](v373);
  v311 = &v282 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA60, &unk_217024F60);
  v375 = sub_2170089F4();
  v318 = *(v375 - 8);
  MEMORY[0x28223BE20](v375);
  v313 = &v282 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA68, &qword_217057700);
  v374 = sub_2170089F4();
  v317 = *(v374 - 8);
  MEMORY[0x28223BE20](v374);
  v312 = &v282 - v34;
  v35 = sub_2170089F4();
  v321 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v316 = &v282 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA70, &unk_217024F70);
  v360 = sub_2170089F4();
  v357 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA78, &unk_2170708C0);
  v359 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA80, &qword_217024F80);
  v361 = sub_2170089F4();
  AssociatedTypeWitness = sub_217009564();
  v365 = sub_217009564();
  v377 = sub_217009564();
  v324 = *(v377 - 8);
  MEMORY[0x28223BE20](v377);
  v352 = &v282 - v37;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9278, &qword_21701C850);
  v376 = sub_2170089F4();
  v319 = *(v376 - 8);
  MEMORY[0x28223BE20](v376);
  v315 = &v282 - v38;
  v379 = sub_2170089F4();
  v326 = *(v379 - 8);
  MEMORY[0x28223BE20](v379);
  v322 = &v282 - v39;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9290, &unk_21701C860);
  v358 = sub_2170089F4();
  v378 = sub_2170089F4();
  v325 = *(v378 - 8);
  MEMORY[0x28223BE20](v378);
  v320 = &v282 - v40;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9298, &unk_2170544C0);
  v380 = sub_2170089F4();
  v327 = *(v380 - 8);
  MEMORY[0x28223BE20](v380);
  v323 = &v282 - v41;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92A0, &unk_21701C870);
  v381 = sub_2170089F4();
  v331 = *(v381 - 8);
  MEMORY[0x28223BE20](v381);
  v328 = &v282 - v42;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA88, &qword_217024F88);
  v382 = sub_2170089F4();
  v333 = *(v382 - 8);
  MEMORY[0x28223BE20](v382);
  v329 = &v282 - v43;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92A8, &unk_217024F90);
  v383 = sub_2170089F4();
  v334 = *(v383 - 8);
  MEMORY[0x28223BE20](v383);
  v330 = &v282 - v44;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92B0, &unk_21701C880);
  v384 = sub_2170089F4();
  v335 = *(v384 - 8);
  MEMORY[0x28223BE20](v384);
  v332 = &v282 - v45;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92B8, &qword_217024FA0);
  v46 = sub_2170089F4();
  v336 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v353 = &v282 - v47;
  v48 = swift_getWitnessTable();
  v49 = MEMORY[0x277CE0868];
  v368 = swift_getWitnessTable();
  v480 = v48;
  v481 = v368;
  v50 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  v478 = v50;
  v479 = v51;
  v52 = swift_getWitnessTable();
  v53 = sub_2168E41B0();
  v476 = v52;
  v477 = v53;
  v54 = swift_getWitnessTable();
  v55 = sub_2168E42C0();
  v474 = v54;
  v475 = v55;
  v56 = swift_getWitnessTable();
  v57 = sub_2168E4548();
  v58 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
  v59 = swift_getWitnessTable();
  v60 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
  v472 = v59;
  v473 = v60;
  v61 = swift_getWitnessTable();
  v470 = v58;
  v471 = v61;
  v62 = swift_getWitnessTable();
  v468 = v57;
  v469 = v62;
  v63 = swift_getWitnessTable();
  v466 = v56;
  v467 = v63;
  v465 = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  v65 = sub_2166D9530(&qword_280E2A8E0, &qword_27CABBA60, &unk_217024F60, MEMORY[0x277CE04A0]);
  v285 = v64;
  v463 = v64;
  v464 = v65;
  v66 = swift_getWitnessTable();
  v67 = sub_2166D9530(&qword_280E2A7B0, &qword_27CABBA68, &qword_217057700, v49);
  v286 = v66;
  v461 = v66;
  v462 = v67;
  v287 = swift_getWitnessTable();
  v459 = v287;
  v460 = v67;
  v356 = v35;
  v68 = swift_getWitnessTable();
  v69 = MEMORY[0x277CE0328];
  v70 = sub_2166D9530(&qword_280E2AC10, &qword_27CABBA70, &unk_217024F70, MEMORY[0x277CE0328]);
  v457 = v68;
  v458 = v70;
  v71 = swift_getWitnessTable();
  v455 = v68;
  v456 = v71;
  v72 = swift_getWitnessTable();
  v73 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78, &unk_2170708C0, v69);
  v453 = v68;
  v454 = v73;
  v74 = swift_getWitnessTable();
  v75 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80, &qword_217024F80, v69);
  v451 = v68;
  v452 = v75;
  v76 = swift_getWitnessTable();
  v449 = v74;
  v450 = v76;
  v77 = swift_getWitnessTable();
  v447 = v72;
  v448 = v77;
  v445 = swift_getWitnessTable();
  v290 = v68;
  v446 = v68;
  v78 = swift_getWitnessTable();
  v79 = sub_2166D9530(&qword_280E2A738, &qword_27CAB9278, &qword_21701C850, v49);
  v288 = v78;
  v443 = v78;
  v444 = v79;
  v289 = swift_getWitnessTable();
  v441 = v289;
  v442 = v368;
  v80 = swift_getWitnessTable();
  v81 = sub_2166D9530(&qword_280E2A768, &qword_27CAB9290, &unk_21701C860, v49);
  v291 = v80;
  v439 = v80;
  v440 = v81;
  v437 = swift_getWitnessTable();
  v438 = v81;
  v82 = swift_getWitnessTable();
  v83 = sub_2166D9530(&qword_280E2A778, &qword_27CAB9298, &unk_2170544C0, v49);
  v292 = v82;
  v435 = v82;
  v436 = v83;
  v84 = swift_getWitnessTable();
  v85 = sub_2166D9530(&qword_280E2A7B8, &qword_27CAB92A0, &unk_21701C870, v49);
  v293 = v84;
  v433 = v84;
  v434 = v85;
  v86 = swift_getWitnessTable();
  v87 = sub_2166D9530(&qword_280E2A790, &qword_27CABBA88, &qword_217024F88, v49);
  v294 = v86;
  v431 = v86;
  v432 = v87;
  v88 = swift_getWitnessTable();
  v89 = sub_2166D9530(&qword_280E2A770, &qword_27CAB92A8, &unk_217024F90, v49);
  v295 = v88;
  v429 = v88;
  v430 = v89;
  v90 = swift_getWitnessTable();
  v91 = sub_2166D9530(&qword_280E2A788, &qword_27CAB92B0, &unk_21701C880, v49);
  v296 = v90;
  v427 = v90;
  v428 = v91;
  v92 = swift_getWitnessTable();
  v93 = sub_2166D9530(&qword_280E2A7F8, &qword_27CAB92B8, &qword_217024FA0, v49);
  v297 = v92;
  v425 = v92;
  v426 = v93;
  v94 = swift_getWitnessTable();
  *&v482 = v46;
  *(&v482 + 1) = v94;
  v95 = swift_getOpaqueTypeMetadata2();
  v359 = v46;
  *&v482 = v46;
  *(&v482 + 1) = v94;
  v304 = v94;
  v96 = swift_getOpaqueTypeConformance2();
  *&v482 = v95;
  *(&v482 + 1) = v96;
  v97 = swift_getOpaqueTypeMetadata2();
  *&v482 = v95;
  *(&v482 + 1) = v96;
  v98 = swift_getOpaqueTypeConformance2();
  *&v482 = v97;
  *(&v482 + 1) = v98;
  v99 = swift_getOpaqueTypeMetadata2();
  v301 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v299 = &v282 - v100;
  *&v482 = v97;
  *(&v482 + 1) = v98;
  v101 = swift_getOpaqueTypeConformance2();
  *&v482 = v99;
  *(&v482 + 1) = v101;
  v102 = swift_getOpaqueTypeMetadata2();
  v306 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v305 = &v282 - v103;
  v104 = v386;
  v105 = swift_getWitnessTable();
  v303 = v99;
  *&v482 = v99;
  *(&v482 + 1) = v101;
  v298 = v101;
  v106 = swift_getOpaqueTypeConformance2();
  *&v482 = v104;
  *(&v482 + 1) = v102;
  v307 = v102;
  v302 = v105;
  *&v483 = v105;
  *(&v483 + 1) = v106;
  v300 = v106;
  v107 = sub_217008B74();
  v310 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v360 = &v282 - v108;
  v109 = v391;
  v110 = v390;
  v112 = type metadata accessor for PageViewContentViewModifier(255, v391, v390, v111);
  v389 = v107;
  v113 = sub_2170089F4();
  v355 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v309 = &v282 - v114;
  v367 = v115;
  v116 = sub_2170089F4();
  v358 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v357 = &v282 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v118);
  v308 = &v282 - v119;
  MEMORY[0x28223BE20](v120);
  v362 = &v282 - v121;
  v284 = *(v110 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v361 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v364 = (&v282 - v122);
  v124 = type metadata accessor for DefaultLoadingStyle(255, v109, v110, v123);
  v125 = swift_getWitnessTable();
  *&v482 = v109;
  *(&v482 + 1) = v124;
  *&v483 = v110;
  *(&v483 + 1) = v125;
  v392 = type metadata accessor for PageLoadingView(255, &v482);
  v126 = v116;
  v127 = sub_217009564();
  v366 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v365 = &v282 - v128;
  v129 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v129 - 8);
  v131 = (&v282 - v130);
  v132 = sub_217009564();
  v133 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v368 = &v282 - v134;
  sub_216A40254();
  v135 = swift_checkMetadataState();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v131, 1, v135);
  v385 = v112;
  v370 = v132;
  v369 = v133;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_5;
  }

  v283 = v127;
  v371 = v126;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v127 = v283;
    if (EnumCaseMultiPayload == 1)
    {
      v138 = *v131;
      v139 = *v131;

      v140 = v338;
      sub_217007564();
      v141 = swift_getWitnessTable();
      v142 = swift_getWitnessTable();
      v143 = swift_getWitnessTable();
      v423 = v142;
      v424 = v143;
      v421 = swift_getWitnessTable();
      v422 = MEMORY[0x277CE0790];
      v144 = swift_getWitnessTable();
      v419 = v141;
      v420 = v144;
      swift_getWitnessTable();
      sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
      v145 = v393;
      v146 = v368;
      sub_2166C2CB0();

      (*(v339 + 8))(v140, v145);
      goto LABEL_6;
    }

LABEL_5:
    *&v482 = sub_2168D4468();
    *(&v482 + 1) = v147;
    v148 = v394;

    sub_216B5551C(&v482, v148, v124, &v403, v125);
    v401 = v403;
    v402 = v404;
    v149 = v392;
    v150 = swift_getWitnessTable();
    sub_2166C24DC(&v401, v149, v150);

    v394 = *(&v482 + 1);
    v391 = *(&v483 + 1);
    v401 = v482;
    v402 = v483;
    sub_2166C24DC(&v401, v149, v150);
    v390 = *(&v403 + 1);
    v401 = v403;
    v402 = v404;
    v151 = swift_getWitnessTable();
    v152 = swift_getWitnessTable();
    v399 = v151;
    v400 = v152;
    v397 = swift_getWitnessTable();
    v398 = MEMORY[0x277CE0790];
    v153 = swift_getWitnessTable();
    v154 = v365;
    sub_2166C2718();
    v395 = v150;
    v396 = v153;
    swift_getWitnessTable();
    sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
    v146 = v368;
    sub_2166C2718();
    (*(v366 + 8))(v154, v127);

    goto LABEL_6;
  }

  v164 = v364;
  (*(v361 + 32))(v364, v131, AssociatedTypeWitness);
  v165 = v311;
  sub_2168D90C0(v164, v354, v387, v311);
  v166 = sub_2168D4468();
  sub_216B55518(v166);

  sub_2170083F4();
  sub_2170083E4();

  v167 = v313;
  v168 = v373;
  sub_21700A344();

  (*(v314 + 8))(v165, v168);
  v169 = v337;
  sub_216A402F8();
  v170 = type metadata accessor for BackgroundConfiguration(0);
  __swift_storeEnumTagSinglePayload(v169, 0, 1, v170);
  v171 = v312;
  v172 = v375;
  sub_2169850F0(v169, v375, v286);
  sub_2166997CC(v169, &qword_27CABBAA8, &unk_2170575E0);
  (*(v318 + 8))(v167, v172);
  sub_216A4030C();
  __swift_storeEnumTagSinglePayload(v169, 0, 1, v170);
  v173 = v316;
  v174 = v374;
  sub_2169850FC(v169, v374, v287);
  sub_2166997CC(v169, &qword_27CABBAA8, &unk_2170575E0);
  (*(v317 + 8))(v171, v174);
  sub_216A402F8();
  __swift_storeEnumTagSinglePayload(v169, 0, 1, v170);
  v175 = v356;
  sub_216985178(v169, v356, v290, v352);
  sub_2166997CC(v169, &qword_27CABBAA8, &unk_2170575E0);
  (*(v321 + 8))(v173, v175);
  v176 = v340;
  sub_216A40268();
  v177 = v342;
  v178 = __swift_getEnumTagSinglePayload(v176, 1, v342);
  if (v178 == 1)
  {
    v186 = v387;
    v187 = v388;
    v188 = v348;
    sub_216C0C924(v178, v179, v180, v181, v182, v183, v184, v185, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293);
    v189 = __swift_getEnumTagSinglePayload(v176, 1, v177) == 1;
    v190 = v176;
    v191 = v187;
    v192 = v350;
    v193 = v349;
    if (!v189)
    {
      sub_2166997CC(v190, &qword_27CAB9180, &qword_21701C770);
    }
  }

  else
  {
    v193 = v349;
    v188 = v348;
    (*(v349 + 32))(v348, v176, v177);
    v191 = v388;
    v186 = v387;
    v192 = v350;
  }

  v194 = v315;
  v195 = v377;
  v196 = v352;
  sub_21700A384();
  (*(v193 + 8))(v188, v177);
  (*(v324 + 8))(v196, v195);
  swift_getWitnessTable();
  v197 = v322;
  v198 = v394;
  v199 = v376;
  sub_21700A654();
  (*(v319 + 8))(v194, v199);
  v200 = *&v198[*(*v198 + 176)];
  type metadata accessor for SocialBadgingRequestCoordinator(0);
  v201 = sub_2166B4B88(&qword_280E2FFC0, type metadata accessor for SocialBadgingRequestCoordinator, &unk_21703F3B8);
  v202 = v320;
  v203 = v379;
  sub_2168532E4(v200, v291, v201, v320);
  (*(v326 + 8))(v197, v203);
  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_2166B4B88(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
  v204 = v323;
  v205 = v378;
  sub_21700A654();
  (*(v325 + 8))(v202, v205);
  type metadata accessor for SocialGraphController(0);
  sub_2166B4B88(&qword_280E39AC8, type metadata accessor for SocialGraphController, &unk_217070E24);
  v206 = v328;
  v207 = v380;
  sub_21700A654();
  (*(v327 + 8))(v204, v207);
  type metadata accessor for SingConnectedStatusWrapper();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_2166B4B88(qword_280E33F98, type metadata accessor for SingConnectedStatusWrapper, &unk_217053F2C);
  v208 = v329;
  v209 = v381;
  sub_21700A654();

  (*(v331 + 8))(v206, v209);
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_2166B4B88(&qword_280E30FC8, type metadata accessor for SubscriptionStatusCoordinator, &unk_217065168);
  v210 = v330;
  v211 = v382;
  sub_21700A654();
  (*(v333 + 8))(v208, v211);
  type metadata accessor for CloudLibraryStatusController(0);
  sub_2166B4B88(&qword_280E32560, type metadata accessor for CloudLibraryStatusController, &unk_217044B7C);
  v212 = v332;
  v213 = v383;
  sub_21700A654();
  (*(v334 + 8))(v210, v213);
  type metadata accessor for MusicTabChangePublisher(0);
  sub_2166B4B88(&qword_280E46AC8, type metadata accessor for MusicTabChangePublisher, &unk_2170554F8);
  v214 = v384;
  sub_21700A654();
  (*(v335 + 8))(v212, v214);
  v215 = v391;
  swift_getAssociatedConformanceWitness();
  sub_21700E324();
  v216 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v192, 0, 1, v216);
  v217 = (v191 + *(v186 + 27));
  v219 = *v217;
  v218 = v217[1];
  v383 = v218;
  v384 = v219;
  if (v219)
  {
    v220 = v219;
    v221 = v191;
  }

  else
  {
    v221 = v191;
    v222 = v186[5];
    *&v482 = v215;
    *(&v482 + 1) = v351;
    *&v483 = v390;
    *(&v483 + 1) = v222;
    type metadata accessor for PageView.ImpressionTracker(0, &v482);
    swift_getWitnessTable();
    v219 = *(sub_2170081B4() + 16);

    v220 = 0;
    v218 = MEMORY[0x277D221C0];
  }

  v223 = (v221 + *(v186 + 16));
  v224 = *v223;
  v225 = v223[1];
  v226 = *&v394[*(*v394 + 160)];
  v382 = v220;
  swift_unknownObjectRetain_n();
  v227 = v299;
  v228 = v218;
  v229 = v225;
  v230 = v387;
  v231 = v226;
  v232 = v359;
  v233 = v353;
  sub_216AD2BF8(v192, v219, v228, v224, v229, v231, v359, v304, v299);
  swift_unknownObjectRelease();
  sub_2166997CC(v192, &qword_27CAB8DF8, qword_21701B930);
  (*(v336 + 8))(v233, v232);
  v237 = sub_2168DDAA8(v230, v234, v235, v236);
  v239 = v238;
  v240 = v305;
  v241 = v303;
  sub_21700A1B4();
  sub_21686CE9C(v237, v239);
  (*(v301 + 8))(v227, v241);
  v242 = v221;
  sub_2168D43D4(v230, MEMORY[0x277CDF490], v243, v244);
  v245 = v343;
  sub_216A401A0();

  v246 = v347;
  v247 = v346;
  (*(v347 + 16))(v346, v242, v230);
  v248 = (*(v246 + 80) + 48) & ~*(v246 + 80);
  v249 = swift_allocObject();
  v250 = v351;
  *(v249 + 2) = v391;
  *(v249 + 3) = v250;
  v251 = v230[5];
  v252 = v390;
  *(v249 + 4) = v390;
  *(v249 + 5) = v251;
  (*(v246 + 32))(&v249[v248], v247, v230);
  v253 = v307;
  v254 = v386;
  sub_21700ABE4();

  (*(v345 + 8))(v245, v254);
  (*(v306 + 8))(v240, v253);
  v255 = v388;
  if (v384)
  {
    v256 = v389;
    v257 = MEMORY[0x277CE0790];
    v258 = v383;
    v259 = v382;
  }

  else
  {
    *&v482 = v391;
    *(&v482 + 1) = v351;
    *&v483 = v252;
    *(&v483 + 1) = v251;
    type metadata accessor for PageView.ImpressionTracker(0, &v482);
    swift_getWitnessTable();
    v255 = v388;
    v259 = *(sub_2170081B4() + 16);

    v258 = MEMORY[0x277D221C0];
    v256 = v389;
    v257 = MEMORY[0x277CE0790];
  }

  v260 = (v255 + *(v230 + 14));
  v261 = v260[1];
  v482 = *v260;
  v483 = v261;
  LOWORD(v484) = *(v260 + 16);
  v262 = *(v255 + *(v230 + 22));
  v263 = swift_getWitnessTable();
  v264 = v309;
  v265 = v262;
  v266 = v360;
  sub_2168D416C(v354, v394, v364, v259, v258, &v482, v265, v256, v263, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
  swift_unknownObjectRelease();
  (*(v310 + 8))(v266, v256);
  v267 = swift_getWitnessTable();
  v409 = v263;
  v410 = v267;
  v268 = v367;
  v269 = swift_getWitnessTable();
  v270 = v308;
  sub_21700AAF4();
  (*(v355 + 8))(v264, v268);
  v407 = v269;
  v408 = v257;
  v271 = v371;
  v272 = swift_getWitnessTable();
  v273 = v362;
  sub_2166C24DC(v270, v271, v272);
  v394 = *(v358 + 8);
  (v394)(v270, v271);
  v274 = v357;
  sub_2166C24DC(v273, v271, v272);
  v275 = swift_getWitnessTable();
  v276 = v365;
  sub_2166C2CB0();
  v405 = v275;
  v406 = v272;
  v277 = v283;
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
  v278 = v368;
  sub_2166C2718();
  (*(v366 + 8))(v276, v277);
  v279 = v274;
  v146 = v278;
  v280 = v394;
  (v394)(v279, v271);
  (v280)(v362, v271);
  (*(v361 + 8))(v364, AssociatedTypeWitness);
LABEL_6:
  v155 = swift_getWitnessTable();
  v156 = swift_getWitnessTable();
  v157 = swift_getWitnessTable();
  v417 = v156;
  v418 = v157;
  v415 = swift_getWitnessTable();
  v416 = MEMORY[0x277CE0790];
  v158 = swift_getWitnessTable();
  v413 = v155;
  v414 = v158;
  v159 = swift_getWitnessTable();
  v160 = sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
  v411 = v159;
  v412 = v160;
  v161 = v370;
  v162 = swift_getWitnessTable();
  sub_2166C24DC(v146, v161, v162);
  return (*(v369 + 8))(v146, v161);
}

void *sub_2168D87E0()
{
  sub_2168E31E4();

  return sub_217009104();
}

uint64_t sub_2168D8828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E8, qword_217028D30);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_49_11();
  sub_2168282D4(v4, v5, v6, v7);
  sub_2168E31E4();
  sub_217009114();
  return sub_2166997CC(a1, &qword_27CABB9E8, qword_217028D30);
}

uint64_t sub_2168D88F8()
{
  v0 = sub_2168D88D8();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2168D8928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_2168D897C(uint64_t a1)
{
  sub_216820E14();
  if (v2 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      type metadata accessor for ObjectGraph(319);
      if (v7 <= 0x3F)
      {
        type metadata accessor for CatalogPagePresenter(255, v4, v3, v6);
        swift_getWitnessTable();
        sub_2170086B4();
        if (v8 <= 0x3F)
        {
          type metadata accessor for UnifiedMessages.Coordinator(319);
          if (v9 <= 0x3F)
          {
            sub_2168E4118(319, &qword_280E2B448, MEMORY[0x277CDE160]);
            if (v10 <= 0x3F)
            {
              sub_2166B49AC(319);
              if (v11 <= 0x3F)
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

uint64_t sub_2168D8AF8(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = sub_217009804();
  v11 = *(v9 - 8);
  result = v9 - 8;
  v12 = v11;
  v13 = *(v11 + 64);
  v14 = 8;
  if (v13 > 8)
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_28:
    if ((v7 & 0x80000000) != 0)
    {

      return __swift_getEnumTagSinglePayload((a1 + v15 + 16) & ~v15, v7, AssociatedTypeWitness);
    }

    else
    {
      v24 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  else
  {
    v16 = *(v12 + 80) & 0xF8 | 7;
    v17 = ((v14 + ((v16 + ((((((((*(v6 + 64) + ((v15 + 16) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
    v18 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v8 + 1;
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
        v22 = *(a1 + v17);
        if (!v22)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      case 2:
        v22 = *(a1 + v17);
        if (!v22)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      case 3:
        __break(1u);
        return result;
      case 4:
        v22 = *(a1 + v17);
        if (!v22)
        {
          goto LABEL_28;
        }

LABEL_24:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          LODWORD(v18) = *a1;
        }

        result = v8 + (v18 | v23) + 1;
        break;
      default:
        goto LABEL_28;
    }
  }

  return result;
}

void sub_2168D8D54(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_217009804() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v14 + ((((((((*(v8 + 64) + ((v13 + 16) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if (v15)
    {
      v16 = 2;
    }

    else
    {
      v16 = a3 - v10 + 1;
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
  }

  if (a2 <= v10)
  {
    switch(v18)
    {
      case 1:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *(a1 + v15) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          if ((v9 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((a1 + v13 + 16) & ~v13, a2, v9, AssociatedTypeWitness);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v20 = a2 & 0x7FFFFFFF;
              a1[1] = 0;
            }

            else
            {
              v20 = (a2 - 1);
            }

            *a1 = v20;
          }
        }

        break;
    }
  }

  else
  {
    if (v15)
    {
      v19 = 1;
    }

    else
    {
      v19 = a2 - v10;
    }

    if (v15)
    {
      bzero(a1, v15);
      *a1 = ~v10 + a2;
    }

    switch(v18)
    {
      case 1:
        *(a1 + v15) = v19;
        break;
      case 2:
        *(a1 + v15) = v19;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *(a1 + v15) = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2168D906C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 96);
  v5[0] = *(a1 + 80);
  v5[1] = v3;
  type metadata accessor for PageView.ImpressionTracker(0, v5);
  result = sub_217007D64();
  *a2 = result;
  return result;
}

uint64_t sub_2168D90C0@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t (*a2)()@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v534 = a2;
  v544 = a1;
  v542 = a4;
  v556 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA58, &unk_217024F50);
  v555 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9000, &qword_21701C310);
  v5 = a3[2];
  v6 = a3[4];
  type metadata accessor for CatalogSectionView(255, v5, v6, v7);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v513 = a3;
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  *&v672 = v555;
  *(&v672 + 1) = OpaqueTypeMetadata2;
  *&v673 = sub_21700B084();
  *(&v673 + 1) = v5;
  *&v674 = sub_2166D9530(&qword_280E29FC0, &qword_27CAB9000, &qword_21701C310, MEMORY[0x277D83980]);
  *(&v674 + 1) = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v676 = v6;
  v9 = v6;
  v677 = &off_280E43BE0;
  v678 = sub_2166B4B88(&qword_280E43BC8, type metadata accessor for MappedSection, &unk_21706B560);
  v10 = type metadata accessor for PaginatingShelfCollection(255, &v672);
  _s27BannerNavigationItemAdaptorVMa(255);
  v551 = v10;
  v548 = sub_2170089F4();
  v11 = sub_217009564();
  v510 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v525 = &v454 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v524 = &v454 - v14;
  v508 = type metadata accessor for SocialProfileFollowRequestsPageView(0);
  MEMORY[0x28223BE20](v508);
  v507 = &v454 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel(0);
  MEMORY[0x28223BE20](v16 - 8);
  v472 = &v454 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v506 = &v454 - v19;
  v498 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAB0, &qword_217025060);
  MEMORY[0x28223BE20](v498);
  v504 = &v454 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA50, &qword_217024F48);
  MEMORY[0x28223BE20](v21);
  v509 = &v454 - v22;
  v522 = v23;
  v555 = v11;
  v24 = sub_217009564();
  v523 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v529 = &v454 - v25;
  v500 = type metadata accessor for UserNotificationSettingsPageView(0);
  MEMORY[0x28223BE20](v500);
  v505 = &v454 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v470 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(0);
  MEMORY[0x28223BE20](v470);
  v471 = &v454 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v503 = &v454 - v29;
  v30 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(0);
  MEMORY[0x28223BE20](v30 - 8);
  v469 = &v454 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v499 = &v454 - v33;
  v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAB8, &qword_217025068);
  MEMORY[0x28223BE20](v490);
  v492 = (&v454 - v34);
  v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA98, &unk_217024FB0);
  MEMORY[0x28223BE20](v520);
  v495 = &v454 - v35;
  v491 = type metadata accessor for SocialOnboardingPrivacySettingsPageView(0);
  MEMORY[0x28223BE20](v491);
  v497 = &v454 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0);
  MEMORY[0x28223BE20](v37 - 8);
  v468 = &v454 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v496 = &v454 - v40;
  FriendsPageView = type metadata accessor for SocialOnboardingFindFriendsPageView(0);
  MEMORY[0x28223BE20](FriendsPageView);
  v494 = &v454 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(0);
  MEMORY[0x28223BE20](FriendsPageSectionLockup - 8);
  v467 = &v454 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v493 = &v454 - v45;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAC0, &qword_217025070);
  MEMORY[0x28223BE20](v517);
  v519 = &v454 - v46;
  v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAC8, &unk_217025078);
  MEMORY[0x28223BE20](v483);
  v485 = &v454 - v47;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA90, &qword_217024FA8);
  MEMORY[0x28223BE20](v518);
  v487 = &v454 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA48, &qword_217024F40);
  MEMORY[0x28223BE20](v49);
  v521 = &v454 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A20, &unk_217017F20);
  MEMORY[0x28223BE20](v51 - 8);
  v465 = &v454 - v52;
  v482 = type metadata accessor for SocialOnboardingProfileCreationPageView(0);
  MEMORY[0x28223BE20](v482);
  v488 = &v454 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v464 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(0);
  MEMORY[0x28223BE20](v464);
  v486 = &v454 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = type metadata accessor for SocialProfileEditorPageView(0);
  MEMORY[0x28223BE20](v475);
  v484 = &v454 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAD0, &qword_217025088);
  MEMORY[0x28223BE20](v473);
  v474 = &v454 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA40, &qword_217024F38);
  MEMORY[0x28223BE20](v57);
  v476 = &v454 - v58;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v527 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v528 = &v454 - v59;
  v60 = v5;
  v62 = type metadata accessor for SearchPageListContentView(0, v5, v9, v61);
  v512 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v466 = &v454 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v480 = &v454 - v65;
  v67 = type metadata accessor for SongDetailPageView(255, v5, v9, v66);
  v502 = v9;
  v463 = type metadata accessor for CatalogPagePresenter(255, v5, v9, v68);
  sub_21700F164();
  v545 = sub_217009B34();
  v69 = sub_2170089F4();
  v549 = v62;
  v70 = sub_217009564();
  v481 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v479 = &v454 - v71;
  v556 = v72;
  v515 = v57;
  v73 = sub_217009564();
  v516 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v514 = &v454 - v74;
  v553 = v75;
  v531 = v49;
  v76 = sub_217009564();
  v532 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v533 = &v454 - v77;
  v552 = v67;
  v462 = *(v67 - 8);
  MEMORY[0x28223BE20](v78);
  v461 = &v454 - v79;
  v550 = v69;
  v511 = *(v69 - 8);
  MEMORY[0x28223BE20](v80);
  v478 = &v454 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v477 = &v454 - v83;
  v536 = type metadata accessor for MappedSection.Content(0);
  MEMORY[0x28223BE20](v536);
  v530 = &v454 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAD8, &unk_217025090);
  MEMORY[0x28223BE20](v535);
  v86 = &v454 - v85;
  v547 = v76;
  v554 = v24;
  v87 = sub_217009564();
  v538 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v537 = &v454 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v89);
  v539 = &v454 - v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0, qword_2170400E0);
  MEMORY[0x28223BE20](v91 - 8);
  v93 = &v454 - v92;
  v94 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v94);
  v460 = &v454 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v96);
  v98 = &v454 - v97;
  v99 = v87;
  v541 = sub_21700F164();
  v540 = *(v541 - 8);
  MEMORY[0x28223BE20](v541);
  v101 = &v454 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v102);
  v546 = &v454 - v103;
  v501 = v60;
  v104 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v106 = *(AssociatedConformanceWitness + 56);
  v526 = AssociatedConformanceWitness;
  v459 = v106;
  v107 = (v106)(v104);
  sub_216CE0B38(v107, v93);

  if (__swift_getEnumTagSinglePayload(v93, 1, v94) == 1)
  {
    sub_2166997CC(v93, &qword_27CABBAE0, qword_2170400E0);
    v108 = v101;
    __swift_storeEnumTagSinglePayload(v101, 1, 1, v99);
    v109 = swift_getWitnessTable();
    v110 = swift_getWitnessTable();
    v671[92] = v109;
    v671[93] = v110;
    v111 = swift_getWitnessTable();
    v112 = swift_getWitnessTable();
    v671[90] = v111;
    v671[91] = v112;
    v113 = swift_getWitnessTable();
    v114 = sub_2168E41B0();
    v671[88] = v113;
    v671[89] = v114;
    v115 = swift_getWitnessTable();
    v116 = sub_2168E42C0();
    v671[86] = v115;
    v671[87] = v116;
    v117 = swift_getWitnessTable();
    v118 = sub_2168E4548();
    v119 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
    v120 = swift_getWitnessTable();
    v121 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
    v671[84] = v120;
    v671[85] = v121;
    v122 = swift_getWitnessTable();
    v671[82] = v119;
    v671[83] = v122;
    v123 = swift_getWitnessTable();
    v671[80] = v118;
    v671[81] = v123;
    v124 = swift_getWitnessTable();
    v671[78] = v117;
    v671[79] = v124;
    swift_getWitnessTable();
  }

  else
  {
    v456 = v101;
    v457 = v99;
    sub_2168E4BA0(v93, v98, type metadata accessor for MappedSection);
    v125 = *&v98[*(v94 + 32)];
    v126 = *(v535 + 48);
    sub_2168E47BC(&v98[*(v94 + 28)], v86, type metadata accessor for MappedSection.Content);
    v86[v126] = v125 == 512;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v458 = v98;
    v128 = v556;
    switch(EnumCaseMultiPayload)
    {
      case '""':
        v455 = v86;
        v248 = v530;
        sub_2168E47BC(v86, v530, type metadata accessor for MappedSection.Content);
        v249 = v503;
        sub_2168E4BA0(v248, v503, type metadata accessor for SocialOnboardingNotificationSettingsPageLockup);
        v250 = v471;
        sub_2168E47BC(v249, v471, type metadata accessor for SocialOnboardingNotificationSettingsPageLockup);
        v251 = v500;
        v252 = v505;
        v253 = (v505 + *(v500 + 20));
        type metadata accessor for UserSocialProfileCoordinator(0);
        sub_2166B4B88(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
        *v253 = sub_217008CF4();
        v253[1] = v254;
        v255 = (v252 + v251[6]);
        type metadata accessor for SubscriptionStatusCoordinator();
        sub_2166B4B88(&qword_280E30FC8, type metadata accessor for SubscriptionStatusCoordinator, &unk_217065168);
        *v255 = sub_217008CF4();
        v255[1] = v256;
        v257 = v252 + v251[7];
        *v257 = swift_getKeyPath();
        *(v257 + 40) = 0;
        v258 = v251[8];
        *(v252 + v258) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
        swift_storeEnumTagMultiPayload();
        sub_2168E47BC(v250, v252, type metadata accessor for SocialOnboardingNotificationSettingsPageLockup);
        v259 = v470;
        v260 = v252 + v251[9];
        *v260 = *(v250 + *(v470 + 28));
        *(v260 + 8) = 0;
        v261 = v252 + v251[10];
        *v261 = *(v250 + *(v259 + 24));
        *(v261 + 8) = 0;
        LOBYTE(v258) = sub_216A91B10();
        v544 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup;
        sub_2168E4BFC(v250, type metadata accessor for SocialOnboardingNotificationSettingsPageLockup);
        v262 = v252 + v251[11];
        *v262 = v258 & 1;
        *(v262 + 8) = 0;
        sub_2168E47BC(v252, v504, type metadata accessor for UserNotificationSettingsPageView);
        swift_storeEnumTagMultiPayload();
        sub_2166B4B88(qword_280E2F4D0, type metadata accessor for UserNotificationSettingsPageView, &unk_21703EFE0);
        sub_2166B4B88(qword_280E2E3F0, type metadata accessor for SocialProfileFollowRequestsPageView, &unk_21706BD44);
        v263 = v509;
        sub_217009554();
        AssociatedTypeWitness = sub_2168E4548();
        v264 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
        v265 = swift_getWitnessTable();
        v266 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
        v671[15] = v265;
        v671[16] = v266;
        v267 = swift_getWitnessTable();
        v671[13] = v264;
        v671[14] = v267;
        v268 = swift_getWitnessTable();
        v269 = v529;
        sub_2166C2718();
        sub_2166997CC(v263, &qword_27CABBA50, &qword_217024F48);
        v270 = swift_getWitnessTable();
        v271 = swift_getWitnessTable();
        v671[11] = v270;
        v671[12] = v271;
        v272 = v554;
        v273 = swift_getWitnessTable();
        v274 = swift_getWitnessTable();
        v671[9] = v273;
        v671[10] = v274;
        v275 = swift_getWitnessTable();
        v276 = sub_2168E41B0();
        v671[7] = v275;
        v671[8] = v276;
        v277 = swift_getWitnessTable();
        v278 = sub_2168E42C0();
        v671[5] = v277;
        v671[6] = v278;
        swift_getWitnessTable();
        v671[3] = AssociatedTypeWitness;
        v671[4] = v268;
        swift_getWitnessTable();
        sub_2166C2CB0();
        (*(v523 + 8))(v269, v272);
        sub_2168E4BFC(v505, type metadata accessor for UserNotificationSettingsPageView);
        v225 = v503;
        goto LABEL_12;
      case '#':
        v455 = v86;
        v198 = v530;
        sub_2168E47BC(v86, v530, type metadata accessor for MappedSection.Content);
        v199 = v198;
        v200 = v496;
        sub_2168E4BA0(v199, v496, type metadata accessor for SocialOnboardingPrivacySettingsPageLockup);
        v201 = v468;
        sub_2168E47BC(v200, v468, type metadata accessor for SocialOnboardingPrivacySettingsPageLockup);
        v202 = v528;
        v203 = AssociatedTypeWitness;
        (*(v527 + 16))(v528, v544, AssociatedTypeWitness);
        v204 = v534;

        v205 = v497;
        sub_2167D5B88(v201, v202, v204, v203, v526, v497);
        sub_2168E47BC(v205, v492, type metadata accessor for SocialOnboardingPrivacySettingsPageView);
        swift_storeEnumTagMultiPayload();
        sub_2166B4B88(&qword_280E2D930, type metadata accessor for SocialOnboardingPrivacySettingsPageView, &unk_2170188C8);
        sub_2168E44F4();
        v206 = v495;
        sub_217009554();
        sub_2168282D4(v206, v519, &qword_27CABBA98, &unk_217024FB0);
        swift_storeEnumTagMultiPayload();
        sub_2168E434C();
        sub_2168E4438();
        v207 = v521;
        sub_217009554();
        sub_2166997CC(v206, &qword_27CABBA98, &unk_217024FB0);
        v208 = swift_getWitnessTable();
        v209 = swift_getWitnessTable();
        v655 = v208;
        v656 = v209;
        v210 = swift_getWitnessTable();
        v211 = swift_getWitnessTable();
        v653 = v210;
        v654 = v211;
        v212 = swift_getWitnessTable();
        v213 = sub_2168E41B0();
        v651 = v212;
        v652 = v213;
        v214 = swift_getWitnessTable();
        v215 = sub_2168E42C0();
        v216 = v533;
        sub_2166C2CB0();
        sub_2166997CC(v207, &qword_27CABBA48, &qword_217024F40);
        v649 = v214;
        v650 = v215;
        v217 = v547;
        swift_getWitnessTable();
        v218 = sub_2168E4548();
        v219 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
        v220 = swift_getWitnessTable();
        v221 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
        v647 = v220;
        v648 = v221;
        v222 = swift_getWitnessTable();
        v645 = v219;
        v646 = v222;
        v223 = swift_getWitnessTable();
        v643 = v218;
        v644 = v223;
        swift_getWitnessTable();
        sub_2166C2718();
        (*(v532 + 8))(v216, v217);
        sub_2168E4BFC(v497, type metadata accessor for SocialOnboardingPrivacySettingsPageView);
        v224 = type metadata accessor for SocialOnboardingPrivacySettingsPageLockup;
        v225 = v496;
        goto LABEL_17;
      case '$':
      case '&':
      case '\'':
      case ')':
      case '*':
      case '+':
      case '-':
      case '0':
      case '2':
      case '3':
      case '4':
      case '5':
      case '7':
        goto LABEL_8;
      case '%':
        v455 = v86;
        v279 = v530;
        sub_2168E47BC(v86, v530, type metadata accessor for MappedSection.Content);
        v280 = v279;
        v281 = v486;
        sub_2168E4BA0(v280, v486, type metadata accessor for SocialOnboardingUserNameHandlePageLockup);
        v282 = v465;
        sub_2168E47BC(v281, v465, type metadata accessor for SocialOnboardingUserNameHandlePageLockup);
        __swift_storeEnumTagSinglePayload(v282, 0, 1, v464);
        v283 = v528;
        v284 = AssociatedTypeWitness;
        (*(v527 + 16))(v528, v544, AssociatedTypeWitness);
        v285 = v534;

        v286 = v488;
        sub_2167CD3B0(v282, v283, v285, v284, v526, v488);
        sub_2168E47BC(v286, v485, type metadata accessor for SocialOnboardingProfileCreationPageView);
        swift_storeEnumTagMultiPayload();
        sub_2166B4B88(qword_280E2D888, type metadata accessor for SocialOnboardingProfileCreationPageView, &unk_217018018);
        sub_2166B4B88(&qword_280E2E520, type metadata accessor for SocialOnboardingFindFriendsPageView, &unk_21705A834);
        v287 = v487;
        sub_217009554();
        sub_2168282D4(v287, v519, &qword_27CABBA90, &qword_217024FA8);
        swift_storeEnumTagMultiPayload();
        sub_2168E434C();
        sub_2168E4438();
        v288 = v521;
        sub_217009554();
        sub_2166997CC(v287, &qword_27CABBA90, &qword_217024FA8);
        v289 = swift_getWitnessTable();
        v290 = swift_getWitnessTable();
        v627 = v289;
        v628 = v290;
        v291 = swift_getWitnessTable();
        v292 = swift_getWitnessTable();
        v625 = v291;
        v626 = v292;
        v293 = swift_getWitnessTable();
        v294 = sub_2168E41B0();
        v623 = v293;
        v624 = v294;
        v295 = swift_getWitnessTable();
        v296 = sub_2168E42C0();
        v297 = v533;
        sub_2166C2CB0();
        sub_2166997CC(v288, &qword_27CABBA48, &qword_217024F40);
        v621 = v295;
        v622 = v296;
        v298 = v547;
        swift_getWitnessTable();
        v299 = sub_2168E4548();
        v300 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
        v301 = swift_getWitnessTable();
        v302 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
        v619 = v301;
        v620 = v302;
        v303 = swift_getWitnessTable();
        v617 = v300;
        v618 = v303;
        v304 = swift_getWitnessTable();
        v615 = v299;
        v616 = v304;
        swift_getWitnessTable();
        sub_2166C2718();
        (*(v532 + 8))(v297, v298);
        sub_2168E4BFC(v488, type metadata accessor for SocialOnboardingProfileCreationPageView);
        v224 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup;
        v225 = v486;
        goto LABEL_17;
      case '(':
        (*(v527 + 16))(v528, v544, AssociatedTypeWitness);

        v334 = v484;
        sub_216F126A0();
        sub_2168E47BC(v334, v474, type metadata accessor for SocialProfileEditorPageView);
        swift_storeEnumTagMultiPayload();
        sub_2168E426C();
        sub_2166B4B88(qword_280E32E70, type metadata accessor for SocialProfileEditorPageView, &unk_2170717FC);
        v335 = v476;
        sub_217009554();
        v336 = swift_getWitnessTable();
        v337 = swift_getWitnessTable();
        v613 = v336;
        v614 = v337;
        v338 = swift_getWitnessTable();
        v455 = v86;
        v339 = swift_getWitnessTable();
        v611 = v338;
        v612 = v339;
        v340 = swift_getWitnessTable();
        v341 = sub_2168E41B0();
        v342 = v514;
        sub_2166C2CB0();
        sub_2166997CC(v335, &qword_27CABBA40, &qword_217024F38);
        v609 = v340;
        v610 = v341;
        v343 = v553;
        v344 = swift_getWitnessTable();
        v345 = sub_2168E42C0();
        v346 = v533;
        sub_2166C2718();
        (*(v516 + 8))(v342, v343);
        v607 = v344;
        v608 = v345;
        v347 = v547;
        swift_getWitnessTable();
        v348 = sub_2168E4548();
        v349 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
        v350 = swift_getWitnessTable();
        v351 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
        v605 = v350;
        v606 = v351;
        v352 = swift_getWitnessTable();
        v603 = v349;
        v604 = v352;
        v353 = swift_getWitnessTable();
        v601 = v348;
        v602 = v353;
        swift_getWitnessTable();
        sub_2166C2718();
        (*(v532 + 8))(v346, v347);
        v224 = type metadata accessor for SocialProfileEditorPageView;
        v225 = v484;
        goto LABEL_17;
      case ',':
        v455 = v86;
        v226 = v530;
        sub_2168E47BC(v86, v530, type metadata accessor for MappedSection.Content);
        v227 = v506;
        sub_2168E4BA0(v226, v506, type metadata accessor for SocialProfileFollowRequestsPageComponentModel);
        v228 = v472;
        sub_2168E47BC(v227, v472, type metadata accessor for SocialProfileFollowRequestsPageComponentModel);
        v229 = v507;
        sub_2168E47BC(v228, v507, type metadata accessor for SocialProfileFollowRequestsPageComponentModel);
        type metadata accessor for UserSocialProfileCoordinator(0);
        type metadata accessor for ObjectGraph(0);
        v230 = v534;
        sub_21700E094();
        v231 = v508;
        *(v229 + *(v508 + 24)) = v672;
        type metadata accessor for SocialGraphController(0);
        sub_21700E094();
        v544 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel;
        sub_2168E4BFC(v228, type metadata accessor for SocialProfileFollowRequestsPageComponentModel);
        *(v229 + *(v231 + 28)) = v672;
        *(v229 + *(v231 + 20)) = v230;
        sub_2168E47BC(v229, v504, type metadata accessor for SocialProfileFollowRequestsPageView);
        swift_storeEnumTagMultiPayload();
        sub_2166B4B88(qword_280E2F4D0, type metadata accessor for UserNotificationSettingsPageView, &unk_21703EFE0);
        sub_2166B4B88(qword_280E2E3F0, type metadata accessor for SocialProfileFollowRequestsPageView, &unk_21706BD44);

        v232 = v509;
        sub_217009554();
        AssociatedTypeWitness = sub_2168E4548();
        v233 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
        v234 = swift_getWitnessTable();
        v235 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
        v671[29] = v234;
        v671[30] = v235;
        v236 = swift_getWitnessTable();
        v671[27] = v233;
        v671[28] = v236;
        v237 = swift_getWitnessTable();
        v238 = v529;
        sub_2166C2718();
        sub_2166997CC(v232, &qword_27CABBA50, &qword_217024F48);
        v239 = swift_getWitnessTable();
        v240 = swift_getWitnessTable();
        v671[25] = v239;
        v671[26] = v240;
        v241 = v554;
        v242 = swift_getWitnessTable();
        v243 = swift_getWitnessTable();
        v671[23] = v242;
        v671[24] = v243;
        v244 = swift_getWitnessTable();
        v245 = sub_2168E41B0();
        v671[21] = v244;
        v671[22] = v245;
        v246 = swift_getWitnessTable();
        v247 = sub_2168E42C0();
        v671[19] = v246;
        v671[20] = v247;
        swift_getWitnessTable();
        v671[17] = AssociatedTypeWitness;
        v671[18] = v237;
        swift_getWitnessTable();
        sub_2166C2CB0();
        (*(v523 + 8))(v238, v241);
        sub_2168E4BFC(v507, type metadata accessor for SocialProfileFollowRequestsPageView);
        v225 = v506;
LABEL_12:
        v224 = v544;
        goto LABEL_17;
      case '.':
        v455 = v86;
        v305 = v530;
        sub_2168E47BC(v86, v530, type metadata accessor for MappedSection.Content);
        v306 = v305;
        v307 = v499;
        sub_2168E4BA0(v306, v499, type metadata accessor for SocialOnboardingSharedPlaylistPageLockup);
        v308 = v469;
        sub_2168E47BC(v307, v469, type metadata accessor for SocialOnboardingSharedPlaylistPageLockup);
        v309 = v528;
        v310 = AssociatedTypeWitness;
        (*(v527 + 16))(v528, v544, AssociatedTypeWitness);
        v311 = v534;

        sub_216B75320(v308, v309, v311, v310, v526, &v672);
        v312 = v673;
        v571 = v672;
        v572 = v673;
        v680[0] = *(&v673 + 1);
        v313 = v674;
        v679 = v674;
        v314 = v492;
        *v492 = v672;
        v314[1] = v312;
        v314[2] = v313;
        v315 = WitnessTable;
        *(v314 + 6) = WitnessTable;
        v544 = v315;
        swift_storeEnumTagMultiPayload();
        sub_2168282D4(&v571, v671, &qword_27CABBAE8, &qword_217025108);
        sub_2168282D4(v680, v671, &qword_27CABBAF0, &qword_217025110);
        sub_2168282D4(&v679, v671, &qword_27CABAA40, &unk_217014260);
        sub_2166B4B88(&qword_280E2D930, type metadata accessor for SocialOnboardingPrivacySettingsPageView, &unk_2170188C8);
        sub_2168E44F4();

        v316 = v495;
        sub_217009554();
        sub_2168282D4(v316, v519, &qword_27CABBA98, &unk_217024FB0);
        swift_storeEnumTagMultiPayload();
        sub_2168E434C();
        sub_2168E4438();
        v317 = v521;
        sub_217009554();
        sub_2166997CC(v316, &qword_27CABBA98, &unk_217024FB0);
        v318 = swift_getWitnessTable();
        v319 = swift_getWitnessTable();
        v669 = v318;
        v670 = v319;
        v320 = swift_getWitnessTable();
        v321 = swift_getWitnessTable();
        v667 = v320;
        v668 = v321;
        v322 = swift_getWitnessTable();
        v323 = sub_2168E41B0();
        v665 = v322;
        v666 = v323;
        v324 = swift_getWitnessTable();
        v325 = sub_2168E42C0();
        v326 = v533;
        sub_2166C2CB0();
        sub_2166997CC(v317, &qword_27CABBA48, &qword_217024F40);
        v663 = v324;
        v664 = v325;
        v327 = v547;
        swift_getWitnessTable();
        v328 = sub_2168E4548();
        v329 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
        v330 = swift_getWitnessTable();
        v331 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
        v661 = v330;
        v662 = v331;
        v332 = swift_getWitnessTable();
        v659 = v329;
        v660 = v332;
        v333 = swift_getWitnessTable();
        v657 = v328;
        v658 = v333;
        swift_getWitnessTable();
        sub_2166C2718();
        sub_2166997CC(&v571, &qword_27CABBAE8, &qword_217025108);
        sub_2166997CC(v680, &qword_27CABBAF0, &qword_217025110);
        sub_2166997CC(&v679, &qword_27CABAA40, &unk_217014260);

        (*(v532 + 8))(v326, v327);
        v224 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup;
        v225 = v499;
        goto LABEL_17;
      case '/':
        v455 = v86;
        v354 = v530;
        sub_2168E47BC(v86, v530, type metadata accessor for MappedSection.Content);
        v355 = v354;
        v356 = v493;
        sub_2168E4BA0(v355, v493, type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup);
        v357 = v467;
        sub_2168E47BC(v356, v467, type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup);
        v358 = v528;
        v359 = AssociatedTypeWitness;
        (*(v527 + 16))(v528, v544, AssociatedTypeWitness);
        v360 = v534;

        v361 = v494;
        sub_216C7E9E0(v357, v358, v360, v359, v526, v494);
        sub_2168E47BC(v361, v485, type metadata accessor for SocialOnboardingFindFriendsPageView);
        swift_storeEnumTagMultiPayload();
        sub_2166B4B88(qword_280E2D888, type metadata accessor for SocialOnboardingProfileCreationPageView, &unk_217018018);
        sub_2166B4B88(&qword_280E2E520, type metadata accessor for SocialOnboardingFindFriendsPageView, &unk_21705A834);
        v362 = v487;
        sub_217009554();
        sub_2168282D4(v362, v519, &qword_27CABBA90, &qword_217024FA8);
        swift_storeEnumTagMultiPayload();
        sub_2168E434C();
        sub_2168E4438();
        v363 = v521;
        sub_217009554();
        sub_2166997CC(v362, &qword_27CABBA90, &qword_217024FA8);
        v364 = swift_getWitnessTable();
        v365 = swift_getWitnessTable();
        v641 = v364;
        v642 = v365;
        v366 = swift_getWitnessTable();
        v367 = swift_getWitnessTable();
        v639 = v366;
        v640 = v367;
        v368 = swift_getWitnessTable();
        v369 = sub_2168E41B0();
        v637 = v368;
        v638 = v369;
        v370 = swift_getWitnessTable();
        v371 = sub_2168E42C0();
        v372 = v533;
        sub_2166C2CB0();
        sub_2166997CC(v363, &qword_27CABBA48, &qword_217024F40);
        v635 = v370;
        v636 = v371;
        v373 = v547;
        swift_getWitnessTable();
        v374 = sub_2168E4548();
        v375 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
        v376 = swift_getWitnessTable();
        v377 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
        v633 = v376;
        v634 = v377;
        v378 = swift_getWitnessTable();
        v631 = v375;
        v632 = v378;
        v379 = swift_getWitnessTable();
        v629 = v374;
        v630 = v379;
        swift_getWitnessTable();
        sub_2166C2718();
        (*(v532 + 8))(v372, v373);
        sub_2168E4BFC(v494, type metadata accessor for SocialOnboardingFindFriendsPageView);
        v224 = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup;
        v225 = v493;
LABEL_17:
        sub_2168E4BFC(v225, v224);
        goto LABEL_18;
      case '1':
        v421 = v530;
        sub_2168E47BC(v86, v530, type metadata accessor for MappedSection.Content);
        v422 = *(v421 + 16);
        v672 = *v421;
        v673 = v422;
        v674 = *(v421 + 32);
        WitnessTable = *(v421 + 48);
        sub_2167CC348(&v672, &v571);
        v423 = v460;
        sub_2168E47BC(v98, v460, type metadata accessor for MappedSection);
        v424 = v461;
        sub_2167CB8E4(&v571, v423, v534, v501, v502, v461);

        sub_2168D43D4(v513, MEMORY[0x277CDF490], v425, v426);
        v427 = v552;
        v428 = swift_getWitnessTable();
        swift_getWitnessTable();
        v429 = v478;
        sub_21700A654();

        (*(v462 + 8))(v424, v427);
        v430 = swift_getWitnessTable();
        v569 = v428;
        v570 = v430;
        AssociatedTypeWitness = MEMORY[0x277CDFAD8];
        v431 = v550;
        v432 = swift_getWitnessTable();
        v433 = v477;
        sub_2166C24DC(v429, v431, v432);
        v434 = *(v511 + 8);
        v511 += 8;
        v544 = v434;
        (v434)(v429, v431);
        sub_2166C24DC(v433, v431, v432);
        v435 = swift_getWitnessTable();
        v436 = v479;
        sub_2166C2718();
        v567 = v432;
        v568 = v435;
        v437 = swift_getWitnessTable();
        v438 = v128;
        v439 = sub_2168E41B0();
        v440 = v514;
        sub_2166C2718();
        (*(v481 + 8))(v436, v438);
        v565 = v437;
        v566 = v439;
        v441 = v553;
        v442 = swift_getWitnessTable();
        v443 = sub_2168E42C0();
        sub_2166C2718();
        (*(v516 + 8))(v440, v441);
        v563 = v442;
        v564 = v443;
        v444 = v547;
        swift_getWitnessTable();
        v445 = sub_2168E4548();
        v446 = v86;
        v447 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
        v448 = swift_getWitnessTable();
        v449 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
        v561 = v448;
        v562 = v449;
        v450 = swift_getWitnessTable();
        v559 = v447;
        v560 = v450;
        v451 = swift_getWitnessTable();
        v557 = v445;
        v558 = v451;
        swift_getWitnessTable();
        v452 = v533;
        sub_2166C2718();
        (*(v532 + 8))(v452, v444);
        v453 = v544;
        (v544)(v478, v431);
        (v453)(v477, v431);
        sub_2168E4818(&v672);
        sub_2168E4BFC(v458, type metadata accessor for MappedSection);
        v155 = type metadata accessor for MappedSection.Content;
        v156 = v446;
        goto LABEL_19;
      case '6':
      case '8':
        if (v125 != 512)
        {
          goto LABEL_8;
        }

        sub_2168E4BFC(v86, type metadata accessor for MappedSection.Content);
        v129 = v528;
        (*(v527 + 16))(v528, v544, AssociatedTypeWitness);
        v130 = v466;
        sub_21681D520(v129, v534, v501, v502, v466);
        v131 = v549;
        v132 = swift_getWitnessTable();
        v133 = v480;
        sub_2166C24DC(v130, v131, v132);
        v134 = *(v512 + 8);
        v512 += 8;
        v544 = v134;

        (v134)(v130, v131);
        sub_2166C24DC(v133, v131, v132);
        v135 = swift_getWitnessTable();
        v136 = swift_getWitnessTable();
        v585 = v135;
        v586 = v136;
        v137 = swift_getWitnessTable();
        v138 = v479;
        sub_2166C2CB0();
        v583 = v137;
        v584 = v132;
        v139 = swift_getWitnessTable();
        v140 = v128;
        v141 = sub_2168E41B0();
        v142 = v514;
        sub_2166C2718();
        (*(v481 + 8))(v138, v140);
        v581 = v139;
        v582 = v141;
        v143 = v553;
        v144 = swift_getWitnessTable();
        v145 = sub_2168E42C0();
        sub_2166C2718();
        (*(v516 + 8))(v142, v143);
        v579 = v144;
        v580 = v145;
        v146 = v547;
        swift_getWitnessTable();
        v147 = sub_2168E4548();
        v148 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
        v149 = swift_getWitnessTable();
        v150 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
        v577 = v149;
        v578 = v150;
        v151 = swift_getWitnessTable();
        v575 = v148;
        v576 = v151;
        v152 = swift_getWitnessTable();
        v573 = v147;
        v574 = v152;
        swift_getWitnessTable();
        v153 = v533;
        sub_2166C2718();
        (*(v532 + 8))(v153, v146);
        v154 = v544;
        (v544)(v130, v131);
        (v154)(v480, v131);
        v155 = type metadata accessor for MappedSection;
        v156 = v458;
        goto LABEL_19;
      default:
        if (EnumCaseMultiPayload == 20)
        {
          v157 = v459(AssociatedTypeWitness, v526);
          v158 = v534;

          sub_216E0ACB0(v157, v158, &v672);
          sub_2168E470C(&v672, v474);
          swift_storeEnumTagMultiPayload();
          sub_2168E426C();
          sub_2166B4B88(qword_280E32E70, type metadata accessor for SocialProfileEditorPageView, &unk_2170717FC);
          v159 = v476;
          sub_217009554();
          v160 = swift_getWitnessTable();
          v161 = swift_getWitnessTable();
          v599 = v160;
          v600 = v161;
          v162 = swift_getWitnessTable();
          v455 = v86;
          v163 = swift_getWitnessTable();
          v597 = v162;
          v598 = v163;
          v164 = swift_getWitnessTable();
          v165 = sub_2168E41B0();
          v166 = v514;
          sub_2166C2CB0();
          sub_2166997CC(v159, &qword_27CABBA40, &qword_217024F38);
          v595 = v164;
          v596 = v165;
          v167 = v553;
          v168 = swift_getWitnessTable();
          v169 = sub_2168E42C0();
          v170 = v533;
          sub_2166C2718();
          (*(v516 + 8))(v166, v167);
          v593 = v168;
          v594 = v169;
          v171 = v547;
          swift_getWitnessTable();
          v172 = sub_2168E4548();
          v173 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
          v174 = swift_getWitnessTable();
          v175 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
          v591 = v174;
          v592 = v175;
          v176 = swift_getWitnessTable();
          v589 = v173;
          v590 = v176;
          v177 = swift_getWitnessTable();
          v587 = v172;
          v588 = v177;
          swift_getWitnessTable();
          sub_2166C2718();
          (*(v532 + 8))(v170, v171);
          sub_2168E4768(&v672);
LABEL_18:
          sub_2168E4BFC(v458, type metadata accessor for MappedSection);
          v155 = type metadata accessor for MappedSection.Content;
          v156 = v455;
LABEL_19:
          sub_2168E4BFC(v156, v155);
        }

        else
        {
LABEL_8:
          v178 = v525;
          sub_2168DE2C0(v544, v534, v513, v525);
          v179 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
          v180 = swift_getWitnessTable();
          v181 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
          v671[59] = v180;
          v671[60] = v181;
          v182 = swift_getWitnessTable();
          v671[57] = v179;
          v671[58] = v182;
          v183 = v555;
          v184 = swift_getWitnessTable();
          v185 = v524;
          sub_2166C24DC(v178, v183, v184);
          v455 = v86;
          v544 = *(v510 + 8);
          (v544)(v178, v183);
          sub_2166C24DC(v185, v183, v184);
          v186 = sub_2168E4548();
          sub_2166C2CB0();
          v187 = swift_getWitnessTable();
          v188 = swift_getWitnessTable();
          v671[55] = v187;
          v671[56] = v188;
          v189 = v554;
          v190 = swift_getWitnessTable();
          v191 = swift_getWitnessTable();
          v671[53] = v190;
          v671[54] = v191;
          v192 = swift_getWitnessTable();
          v193 = sub_2168E41B0();
          v671[51] = v192;
          v671[52] = v193;
          v194 = swift_getWitnessTable();
          v195 = sub_2168E42C0();
          v671[49] = v194;
          v671[50] = v195;
          swift_getWitnessTable();
          v671[47] = v186;
          v671[48] = v184;
          swift_getWitnessTable();
          v196 = v529;
          sub_2166C2CB0();
          (*(v523 + 8))(v196, v189);
          v197 = v544;
          (v544)(v525, v183);
          (v197)(v524, v183);
          sub_2168E4BFC(v458, type metadata accessor for MappedSection);
          sub_2166997CC(v455, &qword_27CABBAD8, &unk_217025090);
        }

        v380 = swift_getWitnessTable();
        v381 = swift_getWitnessTable();
        v671[45] = v380;
        v671[46] = v381;
        v382 = swift_getWitnessTable();
        v383 = swift_getWitnessTable();
        v671[43] = v382;
        v671[44] = v383;
        v384 = swift_getWitnessTable();
        v385 = sub_2168E41B0();
        v671[41] = v384;
        v671[42] = v385;
        v386 = swift_getWitnessTable();
        v387 = sub_2168E42C0();
        v671[39] = v386;
        v671[40] = v387;
        v388 = swift_getWitnessTable();
        v389 = sub_2168E4548();
        v390 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
        v391 = swift_getWitnessTable();
        v392 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
        v671[37] = v391;
        v671[38] = v392;
        v393 = swift_getWitnessTable();
        v671[35] = v390;
        v671[36] = v393;
        v394 = swift_getWitnessTable();
        v671[33] = v389;
        v671[34] = v394;
        v395 = swift_getWitnessTable();
        v671[31] = v388;
        v671[32] = v395;
        v396 = v457;
        v397 = swift_getWitnessTable();
        v398 = v537;
        v399 = v539;
        sub_2166C24DC(v539, v396, v397);
        v400 = v538;
        (*(v538 + 8))(v399, v396);
        v108 = v456;
        (*(v400 + 32))(v456, v398, v396);
        __swift_storeEnumTagSinglePayload(v108, 0, 1, v396);
        break;
    }
  }

  sub_2168D4034(v108, v546);
  v545 = *(v540 + 8);
  v401 = v541;
  v545(v108, v541);
  v402 = swift_getWitnessTable();
  v403 = swift_getWitnessTable();
  v671[76] = v402;
  v671[77] = v403;
  v404 = swift_getWitnessTable();
  v405 = swift_getWitnessTable();
  v671[74] = v404;
  v671[75] = v405;
  v406 = swift_getWitnessTable();
  v407 = sub_2168E41B0();
  v671[72] = v406;
  v671[73] = v407;
  v408 = swift_getWitnessTable();
  v409 = sub_2168E42C0();
  v671[70] = v408;
  v671[71] = v409;
  v410 = swift_getWitnessTable();
  v411 = sub_2168E4548();
  v412 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
  v413 = swift_getWitnessTable();
  v414 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
  v671[68] = v413;
  v671[69] = v414;
  v415 = swift_getWitnessTable();
  v671[66] = v412;
  v671[67] = v415;
  v416 = swift_getWitnessTable();
  v671[64] = v411;
  v671[65] = v416;
  v417 = swift_getWitnessTable();
  v671[62] = v410;
  v671[63] = v417;
  v671[61] = swift_getWitnessTable();
  v418 = swift_getWitnessTable();
  v419 = v546;
  sub_2166C24DC(v546, v401, v418);
  return (v545)(v419, v401);
}

uint64_t sub_2168DDAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(v4 + *(a1 + 108)))
  {
    return 0;
  }

  v6 = sub_2168D43D4(a1, MEMORY[0x277CDF498], a3, a4);
  MEMORY[0x28223BE20](v6);
  v9 = *(a1 + 32);
  v10 = *(a1 + 16);
  swift_getKeyPath();
  type metadata accessor for CatalogPagePresenter(255, v10, v9, v7);
  swift_getWitnessTable();
  sub_2170086A4();

  return v11;
}

uint64_t sub_2168DDBB4(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t a1), void *a6)
{
  v58 = a1;
  v10 = sub_21700B5A4();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v51 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21700B5E4();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_21700B604();
  v48 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v45 - v15;
  v17 = type metadata accessor for CatalogPagePresenter.State(255, a3, a5, v16);
  v18 = sub_21700F164();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v45 - v23;
  aBlock = a3;
  v60 = a4;
  v61 = a5;
  v62 = a6;
  v25 = type metadata accessor for PageView(0, &aBlock);
  result = sub_2168DDAA8(v25, v26, v27, v28);
  if (v30)
  {
    v32 = v30;
    LODWORD(v46) = v31;
    v57 = result;
    v33 = *(v19 + 16);
    v33(v24, v58, v18);
    if (__swift_getEnumTagSinglePayload(v24, 1, v17) == 1)
    {
    }

    else
    {
      v33(v21, v24, v18);
      if (!swift_getEnumCaseMultiPayload())
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        (*(*(AssociatedTypeWitness - 8) + 8))(v21, AssociatedTypeWitness);
        (*(v19 + 8))(v24, v18);
        v35 = v57;
        aBlock = v57;
        v60 = v32;
        v36 = v46 & 1;
        LOBYTE(v61) = v46 & 1;
        v65[0] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
        sub_21700B0D4();
        sub_2166AF2EC();
        v46 = sub_21700EE84();
        v37 = v47;
        sub_21700B5F4();
        sub_21700B634();
        v58 = *(v48 + 8);
        v58(v37, v56);
        v38 = swift_allocObject();
        *(v38 + 16) = v35;
        *(v38 + 24) = v32;
        *(v38 + 32) = v36;
        v63 = sub_2168E4700;
        v64 = v38;
        aBlock = MEMORY[0x277D85DD0];
        v60 = 1107296256;
        v61 = sub_2169F0990;
        v62 = &block_descriptor_59;
        v39 = _Block_copy(&aBlock);

        v40 = v49;
        sub_21700B5C4();
        aBlock = MEMORY[0x277D84F90];
        sub_2166B4B88(&qword_280E2A480, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
        sub_2166D9530(&qword_280E29E50, &unk_27CABC970, &unk_2170187C0, MEMORY[0x277D83970]);
        v41 = v51;
        v42 = v54;
        sub_21700F214();
        v43 = v55;
        v44 = v46;
        MEMORY[0x21CE9FC70](v55, v40, v41, v39);
        _Block_release(v39);

        (*(v53 + 8))(v41, v42);
        (*(v50 + 8))(v40, v52);
        return (v58)(v43, v56);
      }

      (*(*(v17 - 8) + 8))(v21, v17);
    }

    return (*(v19 + 8))(v24, v18);
  }

  return result;
}

void *sub_2168DE228(uint64_t a1, uint64_t a2, char a3)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
  result = MEMORY[0x21CE9BEE0](&v7);
  if ((v7 & 1) == 0)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3 & 1;
    v7 = 1;
    return sub_21700B0D4();
  }

  return result;
}

uint64_t sub_2168DE2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v115 = a2;
  v123 = a1;
  v119 = a4;
  v98 = type metadata accessor for Page.Header(0);
  MEMORY[0x28223BE20](v98);
  v99 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(a3 - 1);
  MEMORY[0x28223BE20](v6);
  v113 = v7;
  v114 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9000, &qword_21701C310);
  v8 = a3[2];
  v9 = a3[4];
  v11 = type metadata accessor for CatalogSectionView(255, v8, v9, v10);
  WitnessTable = swift_getWitnessTable();
  *__src = v11;
  *&__src[8] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v126 = a3[3];
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v14 = sub_21700B084();
  v15 = sub_2166D9530(&qword_280E29FC0, &qword_27CAB9000, &qword_21701C310, MEMORY[0x277D83980]);
  *__src = v11;
  *&__src[8] = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = swift_getWitnessTable();
  v18 = sub_2166B4B88(&qword_280E43BC8, type metadata accessor for MappedSection, &unk_21706B560);
  *__src = v122;
  *&__src[8] = OpaqueTypeMetadata2;
  v105 = v14;
  v106 = OpaqueTypeMetadata2;
  *&__src[16] = v14;
  *&__src[24] = v8;
  v103 = OpaqueTypeConformance2;
  v104 = v15;
  *&__src[32] = v15;
  *&__src[40] = OpaqueTypeConformance2;
  v102 = v17;
  *&__src[48] = v17;
  *&__src[56] = v9;
  *&__src[64] = &off_280E43BE0;
  *&__src[72] = v18;
  v101 = v18;
  v19 = type metadata accessor for PaginatingShelfCollection(255, __src);
  _s27BannerNavigationItemAdaptorVMa(255);
  v118 = v19;
  v20 = sub_2170089F4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v110 = v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v108 = v89 - v24;
  MEMORY[0x28223BE20](v25);
  v109 = v89 - v26;
  v127 = v9;
  v125 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v112 = *(AssociatedTypeWitness - 8);
  v111 = *(v112 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v120 = v89 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA58, &unk_217024F50);
  v29 = sub_217009564();
  v116 = *(v29 - 8);
  v117 = v29;
  MEMORY[0x28223BE20](v29);
  v31 = v89 - v30;
  v32 = v123;
  v33 = a3;
  v34 = v121;
  if (sub_2168DEF4C(v123, a3))
  {
    v35 = v112;
    v36 = v120;
    v37 = AssociatedTypeWitness;
    (*(v112 + 16))(v120, v32, AssociatedTypeWitness);
    v38 = (*(v35 + 80) + 48) & ~*(v35 + 80);
    v39 = swift_allocObject();
    v40 = v126;
    *(v39 + 2) = v125;
    *(v39 + 3) = v40;
    v41 = v33[5];
    *(v39 + 4) = v127;
    *(v39 + 5) = v41;
    (*(v35 + 32))(&v39[v38], v36, v37);
    *__src = sub_2168E4A7C;
    *&__src[8] = v39;
    sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
    v42 = swift_getWitnessTable();
    v43 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
    v128 = v42;
    v129 = v43;
    swift_getWitnessTable();
    sub_2166C2718();

    v44 = v31;
  }

  else
  {
    v94 = v21;
    v95 = v28;
    v96 = v31;
    v97 = v20;
    v45 = AssociatedTypeWitness;
    v46 = v125;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __dst[0] = (*(AssociatedConformanceWitness + 56))(v45, AssociatedConformanceWitness);
    v47 = v34;
    v92 = sub_2168D43D4(a3, MEMORY[0x277CDF490], v48, v49);
    v100 = a3[5];
    v91 = sub_2168DF450(v32, v46, v126, v127);
    v90 = sub_2168DF728(v32, a3);
    v50 = v107;
    v51 = *(v107 + 16);
    v52 = v114;
    v51(v114, v47, v33);
    v53 = v51;
    v54 = *(v50 + 80);
    v55 = (v54 + 48) & ~v54;
    v89[1] = v54 | 7;
    v56 = (v113 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    v58 = v126;
    v57[2] = v125;
    v57[3] = v58;
    v59 = v100;
    v57[4] = v127;
    v57[5] = v59;
    v107 = *(v50 + 32);
    (v107)(v57 + v55, v52, v33);
    *(v57 + v56) = v115;
    v60 = v112;
    (*(v112 + 16))(v120, v123, AssociatedTypeWitness);
    v53(v52, v121, v33);
    v61 = (*(v60 + 80) + 48) & ~*(v60 + 80);
    v62 = (v111 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    v64 = v126;
    v63[2] = v125;
    v63[3] = v64;
    v65 = v100;
    v63[4] = v127;
    v63[5] = v65;
    v66 = v63 + v61;
    v67 = AssociatedTypeWitness;
    (*(v60 + 32))(v66, v120, AssociatedTypeWitness);
    v68 = v114;
    *(v63 + v62) = v115;
    (v107)(v63 + ((v54 + v62 + 8) & ~v54), v68, v33);
    swift_retain_n();
    sub_216DF5300(__dst, 0, 0, v92, v91 & 1, v90, sub_2168E486C, v57, __src, sub_2168E4950, v63, v122, v106, v105, v104, v103, v102, &off_280E43BE0, v101);
    memcpy(__dst, __src, 0x49uLL);
    v69 = (*(AssociatedConformanceWitness + 32))(v67);
    if (v69)
    {
      v70 = v99;
      sub_216DE8DC8();

      v71 = (v70 + *(v98 + 52));
      v72 = *v71;
      v69 = v71[1];
      sub_21700DF14();
      sub_2168E4BFC(v70, type metadata accessor for Page.Header);
    }

    else
    {
      v72 = 0;
    }

    v44 = v96;
    v73 = v97;
    v74 = v118;
    v136 = v72;
    v137 = v69;
    v75 = swift_getWitnessTable();
    v76 = v108;
    sub_216EF31A4();

    memcpy(v138, __dst, 0x49uLL);
    (*(*(v74 - 8) + 8))(v138, v74);
    v77 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
    v134 = v75;
    v135 = v77;
    v78 = swift_getWitnessTable();
    v79 = v109;
    sub_2166C24DC(v76, v73, v78);
    v80 = *(v94 + 8);
    v80(v76, v73);
    v81 = v110;
    sub_2166C24DC(v79, v73, v78);
    sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
    sub_2166C2CB0();
    v80(v81, v73);
    v80(v79, v73);
  }

  v82 = sub_2166D9530(&qword_280E2B358, &qword_27CABBA58, &unk_217024F50, MEMORY[0x277CDF7D8]);
  v83 = swift_getWitnessTable();
  v84 = sub_2166B4B88(&qword_280E41798, _s27BannerNavigationItemAdaptorVMa, &unk_21706FBF8);
  v132 = v83;
  v133 = v84;
  v85 = swift_getWitnessTable();
  v130 = v82;
  v131 = v85;
  v86 = v117;
  v87 = swift_getWitnessTable();
  sub_2166C24DC(v44, v86, v87);
  return (*(v116 + 8))(v44, v86);
}

uint64_t sub_2168DEF4C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0, qword_2170400E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 56);
  v7 = swift_checkMetadataState();
  v8 = v6(v7, AssociatedConformanceWitness);
  sub_216CE0B38(v8, v4);

  v9 = type metadata accessor for MappedSection(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v9) == 1)
  {
    sub_2166997CC(v4, &qword_27CABBAE0, qword_2170400E0);
    return 0;
  }

  v10 = v4[*(v9 + 52)];
  sub_2168E4BFC(v4, type metadata accessor for MappedSection);
  if (v10 == 62)
  {
    return 0;
  }

  sub_216C275C8(v10);
  if (v12 == 0xD000000000000018 && 0x8000000217080F90 == v11)
  {
    goto LABEL_27;
  }

  v14 = sub_21700F7D4();

  if (v14)
  {
    return 0;
  }

  sub_216C275C8(v10);
  if (v16 == 0xD000000000000017 && 0x8000000217080F10 == v15)
  {
    goto LABEL_27;
  }

  v18 = sub_21700F7D4();

  if (v18)
  {
    return 0;
  }

  sub_216C275C8(v10);
  if (v20 == 0xD00000000000001ALL && 0x80000002170811B0 == v19)
  {
    goto LABEL_27;
  }

  v22 = sub_21700F7D4();

  if (v22)
  {
    return 0;
  }

  sub_216C275C8(v10);
  if (v24 == 0xD000000000000019 && 0x8000000217081600 == v23)
  {
LABEL_27:

    return 0;
  }

  v26 = sub_21700F7D4();

  if (v26)
  {
    return 0;
  }

  if (qword_280E2B930 != -1)
  {
    swift_once();
  }

  return byte_280E73A85;
}

void *sub_2168DF244@<X0>(void *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 56);
  v6 = swift_checkMetadataState();
  v7 = v5(v6, AssociatedConformanceWitness);
  sub_217008444();
  sub_217008444();
  sub_21700B3B4();
  sub_2170083C4();
  sub_217008444();
  v9 = sub_216A1204C(v8);
  v10 = qword_217025178[v9];
  KeyPath = swift_getKeyPath();
  v14[80] = v26;
  v14[72] = v28;
  v13 = swift_getKeyPath();
  __src[0] = v7;
  __src[1] = v25;
  LOBYTE(__src[2]) = v26;
  __src[3] = v27;
  LOBYTE(__src[4]) = v28;
  __src[5] = v29;
  __src[6] = v30;
  __src[7] = KeyPath;
  LOBYTE(__src[8]) = v9;
  memcpy(__dst, __src, 0x41uLL);
  v16[0] = v7;
  v16[1] = v25;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v21 = v30;
  v22 = KeyPath;
  v23 = v9;
  sub_2168282D4(__src, v14, &qword_27CABBAF8, &unk_217025168);
  sub_2166997CC(v16, &qword_27CABBAF8, &unk_217025168);
  result = memcpy(a3, __dst, 0x48uLL);
  a3[9] = v13;
  a3[10] = 0;
  a3[11] = v10;
  a3[12] = 0;
  a3[13] = v10;
  return result;
}

uint64_t sub_2168DF450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0, qword_2170400E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB00, &unk_217048F10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState();
  v16 = v14(v15, AssociatedConformanceWitness);
  sub_216CE0B38(v16, v6);

  v17 = type metadata accessor for MappedSection(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v17) == 1)
  {
    sub_2166997CC(v6, &qword_27CABBAE0, qword_2170400E0);
    v18 = type metadata accessor for MappedSection.Content(0);
    v19 = 1;
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
  }

  else
  {
    sub_2168E47BC(&v6[*(v17 + 28)], v12, type metadata accessor for MappedSection.Content);
    sub_2168E4BFC(v6, type metadata accessor for MappedSection);
    v20 = type metadata accessor for MappedSection.Content(0);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v20);
    sub_2168282D4(v12, v9, &qword_27CABBB00, &unk_217048F10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 23 || EnumCaseMultiPayload == 0)
    {
      sub_2168E4BFC(v9, type metadata accessor for MappedSection.Content);
      v19 = 0;
    }

    else
    {
      sub_2168E4BFC(v9, type metadata accessor for MappedSection.Content);
      v19 = 1;
    }
  }

  sub_2166997CC(v12, &qword_27CABBB00, &unk_217048F10);
  return v19;
}

BOOL sub_2168DF728(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - v3;
  v30 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
  MEMORY[0x28223BE20](v30);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArtistDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0, qword_2170400E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB00, &unk_217048F10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(AssociatedConformanceWitness + 56);
  v20 = swift_checkMetadataState();
  v21 = v19(v20, AssociatedConformanceWitness);
  sub_216CE0B38(v21, v11);

  v22 = type metadata accessor for MappedSection(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v22) == 1)
  {
    sub_2166997CC(v11, &qword_27CABBAE0, qword_2170400E0);
    v23 = type metadata accessor for MappedSection.Content(0);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v23);
LABEL_8:
    v26 = 0;
    goto LABEL_9;
  }

  sub_2168E47BC(&v11[*(v22 + 28)], v17, type metadata accessor for MappedSection.Content);
  sub_2168E4BFC(v11, type metadata accessor for MappedSection);
  v24 = type metadata accessor for MappedSection.Content(0);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v24);
  sub_2168282D4(v17, v14, &qword_27CABBB00, &unk_217048F10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 9)
  {
    sub_2168E4BA0(v14, v5, type metadata accessor for CuratorDetailHeaderComponentModel);
    v27 = v31;
    sub_2168282D4(&v5[*(v30 + 32)], v31, &qword_27CAB6D60, &qword_217014E40);
    sub_2168E4BFC(v5, type metadata accessor for CuratorDetailHeaderComponentModel);
    v28 = type metadata accessor for Artwork(0);
    v26 = __swift_getEnumTagSinglePayload(v27, 1, v28) != 1;
    sub_2166997CC(v27, &qword_27CAB6D60, &qword_217014E40);
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_2168E4BFC(v14, type metadata accessor for MappedSection.Content);
      goto LABEL_8;
    }

    sub_2168ABE5C();
    v26 = sub_216AD18DC();

    sub_2168E4BFC(v8, type metadata accessor for ArtistDetailHeaderLockup);
  }

LABEL_9:
  sub_2166997CC(v17, &qword_27CABBB00, &unk_217048F10);
  return v26;
}

uint64_t sub_2168DFBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29[1] = a4;
  v30 = a2;
  v31 = a3;
  v33 = a9;
  v32 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v32);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CatalogSectionView(0, a6, a8, v17);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v29 - v20;
  sub_2168E47BC(a1, v16, type metadata accessor for MappedSection);
  v34[0] = a6;
  v34[1] = a7;
  v34[2] = a8;
  v34[3] = a10;
  v22 = type metadata accessor for PageView(0, v34);
  v25 = sub_2168D43D4(v22, MEMORY[0x277CDF490], v23, v24);

  v26 = v30;
  sub_216E69B04(v16, v25, v30, v31, a5, v21);
  WitnessTable = swift_getWitnessTable();
  sub_2166B4B88(&qword_280E43BD8, type metadata accessor for MappedSection, &unk_21706B638);
  sub_216BE57CC(v26, 0, v18, v32, WitnessTable, v33);
  return (*(v19 + 8))(v21, v18);
}

uint64_t sub_2168DFDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getTupleTypeMetadata2();
  v7 = sub_21700B4E4();
  swift_getWitnessTable();
  sub_216E69898(v7);
  return sub_21700B074();
}

uint64_t sub_2168DFEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a3;
  v39 = a7;
  v41 = a8;
  v42 = a2;
  v10 = *(a5 - 8);
  v34 = a5;
  v35 = v10;
  MEMORY[0x28223BE20](a1);
  v43 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v40 = &v34 - v13;
  v14 = type metadata accessor for Page.Header(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a6;
  swift_getAssociatedTypeWitness();
  v36 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(AssociatedConformanceWitness + 32);
  v19 = swift_checkMetadataState();
  if (v18(v19, AssociatedConformanceWitness))
  {
    sub_216DE8DC8();

    v20 = &v16[*(v14 + 52)];
    v22 = *v20;
    v21 = *(v20 + 1);
    sub_21700DF14();
    sub_2168E4BFC(v16, type metadata accessor for Page.Header);
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = v18(v19, AssociatedConformanceWitness);
  if (v23)
  {
    sub_216DE8DC8();

    v24 = &v16[*(v14 + 56)];
    v25 = *v24;
    v23 = *(v24 + 1);
    sub_21700DF14();
    sub_2168E4BFC(v16, type metadata accessor for Page.Header);
  }

  else
  {
    v25 = 0;
  }

  v26 = v34;
  v47 = v36;
  v48 = v34;
  v27 = v39;
  v49 = v37;
  v50 = v39;
  v28 = type metadata accessor for PageView(0, &v47);
  v29 = v40;
  sub_2166C24DC(v38 + *(v28 + 52), v26, v27);
  v47 = v22;
  v48 = v21;
  v49 = v25;
  v50 = v23;
  v30 = v43;
  v51 = v42;
  v52[0] = &v47;
  v31 = v35;
  (*(v35 + 16))(v43, v29, v26);
  v52[1] = v30;
  sub_21700DF14();
  swift_retain_n();
  sub_21700DF14();
  v46[0] = &type metadata for UnifiedMessagesHeaderView;
  v46[1] = v26;
  v44 = sub_2168E4B4C();
  v45 = v27;
  sub_216984F84(v52, 2, v46);

  v32 = *(v31 + 8);
  v32(v29, v26);
  v32(v30, v26);
}

uint64_t sub_2168E024C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v124 = a5;
  v122 = a4;
  v151 = a3;
  v145 = a2;
  v148 = a1;
  v153 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v8 - 8);
  v152 = &v98 - v9;
  type metadata accessor for PageViewEnvironmentModifier(255, a4, a5, v10);
  swift_getWitnessTable();
  v11 = sub_2170097A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB9F8, &unk_217054400);
  v123 = v11;
  v12 = sub_2170089F4();
  v146 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v140 = &v98 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA00, &qword_217024DD0);
  v127 = v12;
  v14 = sub_2170089F4();
  v147 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v142 = &v98 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA08, &qword_217024DD8);
  v133 = v14;
  v16 = sub_2170089F4();
  v149 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v143 = &v98 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA10, &unk_217024DE0);
  v136 = v16;
  v18 = sub_2170089F4();
  v150 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v144 = &v98 - v19;
  v20 = type metadata accessor for PopoverBubbleTipRequestManager(255);
  WitnessTable = swift_getWitnessTable();
  v120 = WitnessTable;
  v22 = MEMORY[0x277CE0868];
  v23 = sub_2166D9530(&qword_280E2A7F0, &qword_27CABB9F8, &unk_217054400, MEMORY[0x277CE0868]);
  v175 = WitnessTable;
  v176 = v23;
  v24 = MEMORY[0x277CDFAD8];
  v25 = swift_getWitnessTable();
  v125 = v25;
  v26 = sub_2166D9530(&qword_280E2A7D8, &qword_27CABBA00, &qword_217024DD0, v22);
  v173 = v25;
  v174 = v26;
  v27 = swift_getWitnessTable();
  v131 = v27;
  v28 = sub_2166D9530(&qword_280E2A7E0, &qword_27CABBA08, &qword_217024DD8, v22);
  v171 = v27;
  v172 = v28;
  v154 = v24;
  v29 = swift_getWitnessTable();
  v134 = v29;
  v30 = sub_2166D9530(&qword_280E2A7C0, &qword_27CABBA10, &unk_217024DE0, v22);
  v169 = v29;
  v170 = v30;
  v31 = v18;
  v32 = swift_getWitnessTable();
  v33 = sub_2166B4B88(&qword_280E30968, type metadata accessor for PopoverBubbleTipRequestManager, &unk_21703A2E0);
  v165 = v18;
  v166 = v20;
  v108 = v18;
  v102 = v20;
  v167 = v32;
  v168 = v33;
  v110 = v32;
  v109 = v33;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v139 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v130 = &v98 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA18, &unk_2170543F0);
  v35 = sub_2170089F4();
  v141 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v132 = &v98 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA20, &qword_217024DF0);
  v128 = v35;
  v37 = sub_2170089F4();
  v138 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v135 = &v98 - v38;
  v39 = type metadata accessor for ObjectGraph(255);
  v165 = v31;
  v166 = v20;
  v167 = v32;
  v168 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v118 = OpaqueTypeConformance2;
  v41 = sub_2166D9530(&qword_280E2A7E8, &qword_27CABBA18, &unk_2170543F0, v22);
  v163 = OpaqueTypeConformance2;
  v164 = v41;
  v42 = swift_getWitnessTable();
  v126 = v42;
  v43 = sub_2166D9530(&qword_280E2A7A8, &qword_27CABBA20, &qword_217024DF0, v22);
  v161 = v42;
  v162 = v43;
  v44 = swift_getWitnessTable();
  v165 = v37;
  v166 = v39;
  v100 = v37;
  v167 = v44;
  v45 = v44;
  v101 = v44;
  v117 = swift_getOpaqueTypeMetadata2();
  v129 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v98 - v46;
  v121 = type metadata accessor for CatalogPagePresenter(255, v122, v124, v47);
  type metadata accessor for ViewAppearanceLifecycleModifier(255, v121, &off_282924570, v48);
  v49 = sub_2170089F4();
  v124 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v111 = &v98 - v50;
  v165 = v37;
  v166 = v39;
  v167 = v45;
  v51 = swift_getOpaqueTypeConformance2();
  v103 = v51;
  v52 = swift_getWitnessTable();
  v159 = v51;
  v160 = v52;
  v107 = v49;
  v106 = swift_getWitnessTable();
  v165 = v49;
  v166 = v106;
  v114 = MEMORY[0x277D7EE20];
  v105 = swift_getOpaqueTypeMetadata2();
  v115 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v98 = &v98 - v53;
  type metadata accessor for PageRenderMetricsViewModifier(255);
  v112 = sub_2170089F4();
  v119 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v99 = &v98 - v54;
  v55 = sub_2170089F4();
  v122 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v104 = &v98 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v113 = &v98 - v58;
  type metadata accessor for MusicEntityAnnotationWrapper();
  swift_checkMetadataState();
  v59 = v145;
  sub_21700E094();
  sub_2166B4B88(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  v60 = v140;
  sub_21700A654();

  type metadata accessor for PlaybackPresenter(0);
  sub_21700E094();
  sub_2166B4B88(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter, &unk_217058AC0);
  v61 = v142;
  v62 = v127;
  sub_21700A654();

  (*(v146 + 8))(v60, v62);
  _s18HighlightsProviderCMa(0);
  sub_21700E094();
  v63 = v165;
  sub_2166B4B88(&qword_280E43A00, _s18HighlightsProviderCMa, &unk_217051480);
  v64 = v143;
  v65 = v133;
  sub_21700A654();

  (*(v147 + 8))(v61, v65);
  swift_getKeyPath();
  v66 = v151;

  v67 = v152;
  sub_216A3FFDC();
  v68 = v144;
  v69 = v136;
  sub_21700A3D4();

  sub_2166997CC(v67, &qword_27CAB7930, &qword_21701A250);
  (*(v149 + 8))(v64, v69);
  swift_checkMetadataState();
  sub_21700E094();
  v70 = v130;
  v71 = v108;
  sub_21700A3C4();

  (*(v150 + 8))(v68, v71);
  sub_216A403DC(v59);
  type metadata accessor for MenuBuilder();
  sub_2166B4B88(qword_280E45220, type metadata accessor for MenuBuilder, &unk_21705881C);
  v72 = v132;
  v73 = OpaqueTypeMetadata2;
  sub_21700A654();

  (*(v139 + 8))(v70, v73);
  sub_216A40464(v59);
  type metadata accessor for AddToPlaylistMenuBuilder();
  sub_2166B4B88(qword_280E36F00, type metadata accessor for AddToPlaylistMenuBuilder, &unk_21706FD4C);
  v74 = v135;
  v75 = v128;
  sub_21700A654();

  (*(v141 + 8))(v72, v75);
  v76 = v116;
  v77 = v100;
  sub_21700A1E4();
  (*(v138 + 8))(v74, v77);
  v165 = v66;
  v78 = v111;
  v79 = v117;
  sub_2167C9688(&v165, v117, v121, v103);
  (*(v129 + 8))(v76, v79);
  v80 = *(*v66 + 120);
  v81 = v66;

  v82 = v98;
  v83 = v107;
  v84 = v106;
  sub_21700A214();

  (*(v124 + 8))(v78, v83);
  v85 = *&v81[v80];

  v165 = v83;
  v166 = v84;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v99;
  v88 = v105;
  sub_216A0A894(v85, v105, v86);

  (*(v115 + 8))(v82, v88);
  v89 = sub_2166B4B88(&qword_280E314E0, type metadata accessor for PageRenderMetricsViewModifier, &unk_217034F58);
  v157 = v86;
  v158 = v89;
  v90 = v112;
  v91 = swift_getWitnessTable();
  v92 = v104;
  sub_216BE820C(v90, v91);
  (*(v119 + 8))(v87, v90);
  v93 = sub_2168E341C();
  v155 = v91;
  v156 = v93;
  v94 = swift_getWitnessTable();
  v95 = v113;
  sub_2166C24DC(v92, v55, v94);
  v96 = *(v122 + 8);
  v96(v92, v55);
  sub_2166C24DC(v95, v55, v94);
  return (v96)(v95, v55);
}

uint64_t sub_2168E15BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_49_11();
  sub_2168282D4(v3, v4, v5, v6);
  return sub_216B51EF4(v0);
}

uint64_t sub_2168E168C(void *a1)
{
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8();

  return sub_217008684();
}

void sub_2168E172C()
{
  OUTLINED_FUNCTION_49();
  v150 = v0;
  v3 = v2;
  v142 = v4;
  v148 = v5;
  OUTLINED_FUNCTION_16();
  v146 = v6;
  v147 = *(v7 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_70(&v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = sub_217006624();
  OUTLINED_FUNCTION_1();
  v141 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_70(&v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_1_50();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v13 = sub_2170097A4();
  OUTLINED_FUNCTION_7_31();
  WitnessTable = swift_getWitnessTable();
  v153 = v13;
  v154 = WitnessTable;
  v117 = v13;
  v15 = WitnessTable;
  v118 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v131 = sub_2170064D4();
  OUTLINED_FUNCTION_1();
  v134 = v17;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v19);
  v120 = sub_21700D194();
  OUTLINED_FUNCTION_1();
  v119 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_21700D8E4();
  OUTLINED_FUNCTION_1();
  v121 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_70(&v109 - v30);
  OUTLINED_FUNCTION_16();
  v124 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_67_0();
  v153 = v13;
  v154 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v153 = OpaqueTypeMetadata2;
  v154 = OpaqueTypeConformance2;
  v34 = OpaqueTypeConformance2;
  v111 = OpaqueTypeConformance2;
  v123 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v125 = v35;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v37);
  type metadata accessor for PageNavigationModifier(255);
  OUTLINED_FUNCTION_72_0();
  v38 = sub_2170089F4();
  v129 = v38;
  OUTLINED_FUNCTION_16();
  v139 = v39;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_105();
  v149 = v41;
  v153 = OpaqueTypeMetadata2;
  v154 = v34;
  v42 = swift_getOpaqueTypeConformance2();
  v114 = v42;
  OUTLINED_FUNCTION_27_17();
  v45 = sub_2166B4B88(v43, v44, &unk_21706B898);
  v158 = v42;
  v159 = v45;
  v144 = MEMORY[0x277CDFAD8];
  v128 = swift_getWitnessTable();
  v153 = v38;
  v154 = v128;
  v135 = MEMORY[0x277D7EF20];
  v132 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v137 = v46;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v48);
  v136 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v138 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_77();
  v130 = v51 - v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_70(&v109 - v54);
  v110 = v3;
  v55 = *(v3 + 36);
  v56 = *(v3 + 16);
  v113 = *(v3 + 24);
  v112 = v56;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v109 = v55;
  sub_21700E324();
  sub_21700D8A4();
  OUTLINED_FUNCTION_67();
  v59(v23, v120);
  v60 = *((*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness) + 16);

  v155 = MEMORY[0x277D83B88];
  v153 = v60;
  v61 = v115;
  sub_21700D8C4();
  v62 = *(v121 + 8);
  v63 = v28;
  v64 = v122;
  v62(v63, v122);
  sub_2166997CC(&v153, &unk_27CABF7A0, &unk_217014D20);
  swift_checkMetadataState();
  sub_21700A204();
  v62(v61, v64);
  v65 = v127;
  sub_21700A2A4();
  OUTLINED_FUNCTION_67();
  v66(v1, OpaqueTypeMetadata2);
  v67 = v141;
  v68 = v140;
  v69 = v143;
  (*(v141 + 104))(v140, *MEMORY[0x277D26AB0], v143);
  v70 = v116;
  v71 = v131;
  sub_217006494();
  (*(v67 + 8))(v68, v69);
  OUTLINED_FUNCTION_67();
  v72(v65, v71);
  v73 = v150;
  v74 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v75 = v110;
  v76 = v73 + *(v110 + 48);
  v77 = *(v76 + 16);
  v160[0] = *v76;
  v160[1] = v77;
  v161 = *(v76 + 32);
  v78 = v123;
  sub_216EB110C(v74, v160, *(v73 + *(v110 + 40)), v123, v114);

  OUTLINED_FUNCTION_67();
  v79(v70, v78);
  v153 = 0;
  v154 = 0xE000000000000000;
  sub_21700F3B4();

  v156 = 0xD000000000000010;
  v157 = 0x8000000217083E30;
  v80 = sub_2168E1708();
  v81 = *(*v80 + 152);
  swift_beginAccess();
  v82 = v113;
  v83 = v112;
  v85 = type metadata accessor for AnyProtoRequestConvertibleIntent(0, v112, *(v113 + 24), v84);
  v86 = *(v85 - 8);
  (*(v86 + 16))(&v153, v80 + v81, v85);

  v87 = sub_2169426B4();
  v89 = v88;
  (*(v86 + 8))(&v153, v85);
  MEMORY[0x21CE9F490](v87, v89);

  MEMORY[0x21CE9F490](41, 0xE100000000000000);
  v90 = v126;
  v91 = v129;
  v92 = v128;
  v93 = v149;
  sub_21700A274();

  OUTLINED_FUNCTION_67();
  v94(v93, v91);
  v95 = v146;
  v96 = v145;
  (*(v146 + 16))(v145, v150, v75);
  v97 = (*(v95 + 80) + 32) & ~*(v95 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = v83;
  *(v98 + 24) = v82;
  (*(v95 + 32))(v98 + v97, v96, v75);
  v153 = v91;
  v154 = v92;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = v132;
  sub_21700AAF4();

  OUTLINED_FUNCTION_67();
  v101(v90, v100);
  v151 = v99;
  v152 = MEMORY[0x277CE0790];
  v102 = v136;
  v103 = swift_getWitnessTable();
  v104 = v133;
  v105 = OUTLINED_FUNCTION_53_0();
  sub_2166C24DC(v105, v106, v103);
  v107 = *(v138 + 8);
  v108 = OUTLINED_FUNCTION_53_0();
  v107(v108);
  sub_2166C24DC(v104, v102, v103);
  (v107)(v104, v102);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168E23D4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v31 - v7;
  v43 = sub_21700DFD4();
  v39 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageViewContentViewModifier(0, a2, a3, v9);
  v11 = *(v10 - 8);
  v41 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v38 = &v31 - v12;
  if (qword_280E29CB0 != -1)
  {
    swift_once();
  }

  v13 = qword_280E29CB8;
  v14 = sub_2168E1708();
  v15 = *(*v14 + 152);
  swift_beginAccess();
  v17 = type metadata accessor for AnyProtoRequestConvertibleIntent(0, a2, *(a3 + 24), v16);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v44, v14 + v15, v17);

  v19 = v13;
  v20 = a2;
  v33 = a3;
  v34 = a2;
  v21 = a3;
  sub_2168E294C(v19, v44, a2, a3);
  (*(v18 + 8))(v44, v17);
  v36 = objc_opt_self();
  v35 = [v36 sharedApplication];
  v37 = *(v11 + 16);
  v22 = v38;
  v37(v38, a1, v10);
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v21;
  v32 = *(v11 + 32);
  v32(v24 + v23, v22, v10);
  sub_2168E2D4C(sub_2168E3488, v24);

  v35 = *(a1 + *(v10 + 40));
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v36 = [v36 sharedApplication];
  v37(v22, a1, v10);
  v25 = swift_allocObject();
  v26 = v33;
  *(v25 + 16) = v34;
  *(v25 + 24) = v26;
  v32(v25 + v23, v22, v10);
  v27 = v42;
  sub_2168E2E88();

  sub_2169FCF54(v35);
  strcpy(v44, "appLevelSheet");
  v44[7] = -4864;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v28 = v40;
  sub_21700E324();
  v29 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
  sub_2169FD04C();
  sub_2166997CC(v28, &qword_27CAB8DF8, qword_21701B930);

  return (*(v39 + 8))(v27, v43);
}

void sub_2168E294C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA30, &qword_217024E28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  v9 = MEMORY[0x277D837D0];
  sub_21700F364();
  type metadata accessor for AnyProtoRequestConvertibleIntent(0, a3, *(a4 + 24), v10);
  v11 = sub_2169426B4();
  *(inited + 96) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  sub_21700E384();
  v13 = sub_21700E344();

  [v7 postNotificationName:a1 object:0 userInfo:v13];
}

uint64_t sub_2168E2AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2170090F4();
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9310, &qword_21701C9A8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = sub_217009804();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PageViewContentViewModifier(0, a2, a3, v16);
  sub_2168282D4(a1 + *(v17 + 56), v11, &qword_27CAB9310, &qword_21701C9A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  else
  {
    sub_21700ED94();
    v18 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v20 + 8))(v8, v21);
  }

  sub_2170097F4();
  return (*(v13 + 8))(v15, v12);
}

void sub_2168E2D4C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedApplication];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_2166EFCD4;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2169F0990;
  v7[3] = &block_descriptor_29;
  v6 = _Block_copy(v7);

  [v4 _performBlockAfterCATransactionCommits_];
  _Block_release(v6);
}

void sub_2168E2E88()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v26 = v2;
  v27 = v3;
  v5 = v4;
  v25 = v6;
  v8 = v7;
  v9 = sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v16, v8, v9, v15);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v11 + 32))(v20 + v17, v16, v9);
  v21 = (v20 + v18);
  *v21 = v25;
  v21[1] = v5;
  v22 = v27;
  *(v20 + v19) = v26;
  v23 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v22;
  v23[1] = v1;
  sub_21700DF14();

  sub_2168E2D4C(sub_2168E3AE4, v20);

  OUTLINED_FUNCTION_26();
}

void sub_2168E3008()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v4;
  *v11 = v13;
  *(v11 + 1) = v14;
  v15 = type metadata accessor for PageViewContentViewModifier(0, *(v12 + 80), *(v12 + 88), v6);
  v16 = v15[9];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_34();
  (*(v17 + 32))(&v11[v16], v9);
  *&v11[v15[10]] = v7;
  v18 = &v11[v15[11]];
  *v18 = sub_2168E168C(v5);
  v18[1] = v19;
  v20 = &v11[v15[12]];
  v21 = *(v3 + 16);
  *v20 = *v3;
  *(v20 + 1) = v21;
  *(v20 + 16) = *(v3 + 32);
  *&v11[v15[13]] = v1;
  v22 = v15[14];
  *&v11[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9310, &qword_21701C9A8);
  swift_storeEnumTagMultiPayload();
  v23 = &v11[v15[15]];
  type metadata accessor for MusicStackAuthority(0);
  OUTLINED_FUNCTION_19_22();
  sub_2166B4B88(v24, v25, &protocol conformance descriptor for MusicStackAuthority);
  *v23 = sub_217008CF4();
  v23[1] = v26;
  OUTLINED_FUNCTION_26();
}

unint64_t sub_2168E31E4()
{
  result = qword_280E2AC60;
  if (!qword_280E2AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AC60);
  }

  return result;
}

uint64_t sub_2168E3238()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E8, qword_217028D30);
  __swift_allocate_value_buffer(v0, qword_280E2AC70);
  v1 = __swift_project_value_buffer(v0, qword_280E2AC70);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38, &qword_217024F30);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_2168E32C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_280E2AC68 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E8, qword_217028D30);
  v3 = __swift_project_value_buffer(v2, qword_280E2AC70);
  return sub_2168282D4(v3, a1, &qword_27CABB9E8, qword_217028D30);
}

uint64_t sub_2168E3350()
{
  sub_2168E33C8();
  sub_217009104();
  return v1;
}

unint64_t sub_2168E33C8()
{
  result = qword_27CABB9F0;
  if (!qword_27CABB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB9F0);
  }

  return result;
}

unint64_t sub_2168E341C()
{
  result = qword_280E3D8B0;
  if (!qword_280E3D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3D8B0);
  }

  return result;
}

uint64_t sub_2168E34B8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for PageViewContentViewModifier(0, v5, v6, a4);
  OUTLINED_FUNCTION_36(v7);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a1(v9, v5, v6);
}

uint64_t sub_2168E354C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v34[1] = a1;
  v35 = a4;
  v40 = sub_21700B5A4();
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700B5E4();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700B594();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34[0] = sub_21700B604();
  v44 = *(v34[0] - 8);
  MEMORY[0x28223BE20](v34[0]);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA28, &qword_2170514E0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v34 - v20;
  v22 = sub_21700E4D4();
  sub_21700DF54();

  v45 = v35;
  sub_21700DFA4();
  (*(v19 + 8))(v21, v18);
  v23 = aBlock[0];
  sub_2166AF2EC();
  v35 = sub_21700EE84();
  sub_21700B5F4();
  *v12 = v23;
  (*(v10 + 104))(v12, *MEMORY[0x277D85188], v9);
  MEMORY[0x21CE9C440](v14, v12);
  (*(v10 + 8))(v12, v9);
  v24 = *(v44 + 8);
  v44 += 8;
  v25 = v34[0];
  v24(v14, v34[0]);
  v26 = swift_allocObject();
  v27 = v38;
  *(v26 + 16) = v37;
  *(v26 + 24) = v27;
  aBlock[4] = sub_2168E4C64;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F0990;
  aBlock[3] = &block_descriptor_5;
  v28 = _Block_copy(aBlock);

  v29 = v36;
  sub_21700B5C4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2166B4B88(&qword_280E2A480, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
  sub_2166D9530(&qword_280E29E50, &unk_27CABC970, &unk_2170187C0, MEMORY[0x277D83970]);
  v31 = v39;
  v30 = v40;
  sub_21700F214();
  v32 = v35;
  MEMORY[0x21CE9FC70](v17, v29, v31, v28);
  _Block_release(v28);

  (*(v43 + 8))(v31, v30);
  (*(v41 + 8))(v29, v42);
  return v24(v17, v25);
}

uint64_t sub_2168E3AE4()
{
  v1 = sub_21700DFD4();
  OUTLINED_FUNCTION_2(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v0 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v8);
  v13 = (v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_2168E354C(v0 + v6, v10, v11, v12, v14, v15);
}

uint64_t sub_2168E3BB4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = sub_2170080D4();
  v11 = *(v9 - 8);
  result = v9 - 8;
  v12 = v11;
  v13 = *(v11 + 64);
  if (v13 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 64) + 7;
  if (v8 >= a2)
  {
LABEL_29:
    v25 = (a1 + v15 + 17) & ~v15;
    if (v7 < 0x7FFFFFFF)
    {
      v26 = *((((v16 + v25) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(v25, v7, v5);
    }
  }

  else
  {
    v17 = *(v12 + 80) & 0xF8 | 7;
    v18 = ((v14 + ((v17 + ((((((((((((((((((((v16 + ((v15 + 17) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17) + 48) & 0xFFFFFFFFFFFFFFF8) + 16;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v8 + 1;
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
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    switch(v22)
    {
      case 1:
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 2:
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_29;
        }

LABEL_25:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          LODWORD(v19) = *a1;
        }

        result = v8 + (v19 | v24) + 1;
        break;
      default:
        goto LABEL_29;
    }
  }

  return result;
}

void sub_2168E3E38(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_2170080D4() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v8 + 64) + 7;
  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = ((v12 + ((v15 + ((((((((((((((((((((v14 + ((v13 + 17) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v15) + 48) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v19 = 0;
  }

  else
  {
    if (((v12 + ((v15 + ((((((((((((((((((((v14 + ((v13 + 17) & ~v13)) & 0xFFFFFFF8) + 41) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 16) & ~v15) + 48) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a3 - v10 + 1;
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

  if (a2 <= v10)
  {
    switch(v19)
    {
      case 1:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_46:
        __break(1u);
        break;
      case 4:
        *(a1 + v16) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v21 = (a1 + v13 + 17) & ~v13;
          if (v9 < 0x7FFFFFFF)
          {
            v22 = ((((v14 + v21) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v23 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v23 = (a2 - 1);
            }

            *v22 = v23;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v21, a2, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    if (v16)
    {
      v20 = 1;
    }

    else
    {
      v20 = a2 - v10;
    }

    if (v16)
    {
      bzero(a1, v16);
      *a1 = ~v10 + a2;
    }

    switch(v19)
    {
      case 1:
        *(a1 + v16) = v20;
        break;
      case 2:
        *(a1 + v16) = v20;
        break;
      case 3:
        goto LABEL_46;
      case 4:
        *(a1 + v16) = v20;
        break;
      default:
        return;
    }
  }
}

void sub_2168E4118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2168E41B0()
{
  result = qword_280E2ABC0;
  if (!qword_280E2ABC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA40, &qword_217024F38);
    sub_2168E426C();
    sub_2166B4B88(qword_280E32E70, type metadata accessor for SocialProfileEditorPageView, &unk_2170717FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ABC0);
  }

  return result;
}

unint64_t sub_2168E426C()
{
  result = qword_280E37690[0];
  if (!qword_280E37690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E37690);
  }

  return result;
}

unint64_t sub_2168E42C0()
{
  result = qword_280E2A9B0;
  if (!qword_280E2A9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA48, &qword_217024F40);
    sub_2168E434C();
    sub_2168E4438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9B0);
  }

  return result;
}

unint64_t sub_2168E434C()
{
  result = qword_280E2AB20;
  if (!qword_280E2AB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA90, &qword_217024FA8);
    sub_2166B4B88(qword_280E2D888, type metadata accessor for SocialOnboardingProfileCreationPageView, &unk_217018018);
    sub_2166B4B88(&qword_280E2E520, type metadata accessor for SocialOnboardingFindFriendsPageView, &unk_21705A834);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB20);
  }

  return result;
}

unint64_t sub_2168E4438()
{
  result = qword_280E2AB28;
  if (!qword_280E2AB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA98, &unk_217024FB0);
    sub_2166B4B88(&qword_280E2D930, type metadata accessor for SocialOnboardingPrivacySettingsPageView, &unk_2170188C8);
    sub_2168E44F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB28);
  }

  return result;
}

unint64_t sub_2168E44F4()
{
  result = qword_280E2D7D0[0];
  if (!qword_280E2D7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2D7D0);
  }

  return result;
}

unint64_t sub_2168E4548()
{
  result = qword_280E2AB30;
  if (!qword_280E2AB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA50, &qword_217024F48);
    sub_2166B4B88(qword_280E2F4D0, type metadata accessor for UserNotificationSettingsPageView, &unk_21703EFE0);
    sub_2166B4B88(qword_280E2E3F0, type metadata accessor for SocialProfileFollowRequestsPageView, &unk_21706BD44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB30);
  }

  return result;
}

uint64_t sub_2168E4634(void (*a1)(char *, uint64_t))
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v11[0] = v1[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v7 = type metadata accessor for PageView(0, v11);
  OUTLINED_FUNCTION_36(v7);
  v9 = v1 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return sub_2168DDBB4(a1, v9, v3, v4, v5, v6);
}

uint64_t sub_2168E47BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_2168E486C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v10 = v5[2];
  v11 = v5[3];
  v12 = v5[4];
  v13 = v5[5];
  v14 = OUTLINED_FUNCTION_56_9(a1, a2, a3, a5);
  OUTLINED_FUNCTION_2(v14);
  v16 = v15;
  v18 = v17;
  v19 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  return sub_2168DFBAC(a1, a2, a3, v5 + v19, *(v5 + ((*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8)), v10, v11, v12, a4, v13);
}

uint64_t sub_2168E4950()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v9 = *(v8 + 64) + v7;
  v16[0] = v1;
  v16[1] = v2;
  v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16[2] = v3;
  v16[3] = v4;
  v11 = type metadata accessor for PageView(0, v16);
  OUTLINED_FUNCTION_36(v11);
  v13 = *(v0 + v10);
  v14 = v0 + ((v10 + *(v12 + 80) + 8) & ~*(v12 + 80));

  return sub_2168DFDE4(v0 + v7, v13, v14, v1, v2, v3, v4);
}

void *sub_2168E4A7C@<X0>(void *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_36(AssociatedTypeWitness);

  return sub_2168DF244(a1);
}

unint64_t sub_2168E4B4C()
{
  result = qword_280E34AB0[0];
  if (!qword_280E34AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E34AB0);
  }

  return result;
}

uint64_t sub_2168E4BA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_2168E4BFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168E4C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a4;
  v6[6] = v5;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v8 = sub_217007C24();
  v6[7] = v8;
  OUTLINED_FUNCTION_2(v8);
  v6[8] = v9;
  v6[9] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08, &qword_217025210);
  v6[10] = OUTLINED_FUNCTION_80();
  v6[11] = *(a5 + 8);
  v6[12] = swift_getAssociatedTypeWitness();
  v6[13] = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[14] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v6[15] = v11;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = *(a5 + 16);
  v12 = swift_getAssociatedTypeWitness();
  v6[19] = v12;
  v13 = sub_21700F164();
  v6[20] = v13;
  OUTLINED_FUNCTION_2(v13);
  v6[21] = v14;
  v6[22] = OUTLINED_FUNCTION_80();
  v6[23] = *(v12 - 8);
  v6[24] = OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2168E4EF0()
{
  if (*(v0[6] + 32) != 1)
  {
LABEL_4:
    v3 = swift_task_alloc();
    v0[27] = v3;
    *v3 = v0;
    v3[1] = sub_2168E5444;
    v4 = v0[11];
    v5 = v0[5];
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[2];

    return sub_2168E56AC(v8, v6, v7, v5, v4);
  }

  (*(v0[18] + 24))(v0[5]);
  v1 = v0[22];
  v2 = v0[19];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v1, v0[20]);
    goto LABEL_4;
  }

  (*(v0[23] + 32))(v0[24], v1, v2);
  v10 = swift_task_alloc();
  v0[25] = v10;
  swift_getAssociatedConformanceWitness();
  *v10 = v0;
  v10[1] = sub_2168E5150;

  return sub_216C46518();
}

uint64_t sub_2168E5150()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 208) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2168E5250()
{
  if (qword_27CAB5BC8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v29 = v0[24];
  v26 = v0[26];
  v27 = v0[19];
  v2 = v0[16];
  v4 = v0[14];
  v3 = v0[15];
  v24 = v0[17];
  v25 = v0[13];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v23 = v0[2];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10, &qword_217025220);
  v10 = __swift_project_value_buffer(v9, qword_27CB22950);
  (*(v7 + 16))(v5, v10, v8);
  sub_216BD7934(v5, "InitializeViewModel", 19, 2, v6);
  v11 = swift_checkMetadataState();
  v12 = v24;
  (*(v3 + 16))(v2, v24, v4);
  v13 = sub_216F76A38(v2, v11, v25);
  sub_216BD4F18(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25, v26, v27, v29);
  sub_2168E5D00(v6);
  (*(v3 + 8))(v12, v4);
  (*(v1 + 8))(v30, v28);
  OUTLINED_FUNCTION_8_28();

  OUTLINED_FUNCTION_3();

  return v21();
}

uint64_t sub_2168E5444()
{
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2168E55F0()
{
  (*(v0[23] + 8))(v0[24], v0[19]);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_2168E56AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_2168E56D4, 0, 0);
}

uint64_t sub_2168E56D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (sub_21669DAC4())
  {
    v17 = swift_task_alloc();
    v16[8] = v17;
    *v17 = v16;
    v17[1] = sub_2168E57D4;

    return sub_216A4F6C8();
  }

  else
  {
    v16[9] = *(v16[7] + 40);
    OUTLINED_FUNCTION_206();
    v19 = swift_task_alloc();
    v16[10] = v19;
    *v19 = v16;
    v27 = OUTLINED_FUNCTION_1_51(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29);

    return v27();
  }
}

uint64_t sub_2168E57D4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2168E58BC()
{
  v0[9] = *(v0[7] + 40);
  OUTLINED_FUNCTION_206();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v9 = OUTLINED_FUNCTION_1_51(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);

  return v9();
}

uint64_t sub_2168E5944(uint64_t a1)
{
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v5 + 88) = a1;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v5 + 96) = v10;
    *v10 = v6;
    v10[1] = sub_2168E5AE4;

    return sub_216E4E670();
  }
}

uint64_t sub_2168E5AE4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 104) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2168E5BE4()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2168E5C40()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2168E5C9C()
{

  return v0;
}

uint64_t sub_2168E5CCC()
{
  sub_2168E5C9C();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2168E5D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08, &qword_217025210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2168E5DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_49();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  OUTLINED_FUNCTION_35_14();
  sub_217006224();
  OUTLINED_FUNCTION_34();
  (*(v34 + 32))(v23, v22);
  v35 = OUTLINED_FUNCTION_33_1();
  v38 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor(v35, v36, a21, v37);
  OUTLINED_FUNCTION_39_11(v38);
  v39 = (v23 + v25[10]);
  *v39 = v21;
  v39[1] = v33;
  v40 = v23 + v25[11];
  v41 = *(v31 + 16);
  *v40 = *v31;
  *(v40 + 16) = v41;
  *(v40 + 32) = *(v31 + 32);
  *(v23 + v25[12]) = v29;
  *(v23 + v25[13]) = v27;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168E5EA0()
{
  OUTLINED_FUNCTION_49();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_35_14();
  sub_217006224();
  OUTLINED_FUNCTION_34();
  (*(v9 + 32))(v2, v1);
  v10 = OUTLINED_FUNCTION_34_15();
  v13 = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor(v10, v11, v4, v12);
  OUTLINED_FUNCTION_39_11(v13);
  v14 = v2 + v4[10];
  v15 = *(v0 + 16);
  *v14 = *v0;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v0 + 32);
  *(v2 + v4[11]) = v8;
  *(v2 + v4[12]) = v6;
  OUTLINED_FUNCTION_26();

  return sub_2168CF09C(v16, v17);
}

uint64_t sub_2168E5F6C()
{
  sub_217006224();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_8();

  return v1(v0);
}

uint64_t sub_2168E5FC8()
{
  sub_2168E6034();

  return v0;
}

uint64_t sub_2168E6034()
{
  v1 = *v0;
  sub_2168E7460();
  swift_beginAccess();
  v16 = v0;
  v3 = type metadata accessor for InvalidationCoordinator.SectionInvalidationEventDescriptor(255, *(v1 + 80), *(v1 + 88), v2);
  type metadata accessor for AnyInvalidationObserver(255, v3, v4, v5);
  sub_21700E984();
  v6 = sub_21700E3B4();
  result = swift_endAccess();
  v8 = 0;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;
  if (v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      swift_getTupleTypeMetadata2();
      sub_21700E894();
      v15 = sub_21700E384();
      swift_beginAccess();
      v16[11] = v15;
    }

    v11 = *(v6 + 64 + 8 * v13);
    ++v8;
    if (v11)
    {
      v8 = v13;
      do
      {
LABEL_8:
        sub_21700DF14();
        v17 = sub_21700E834();
        while (v17 != sub_21700E8D4())
        {
          v14 = sub_21700E8B4();
          sub_21700E864();
          if (v14)
          {
          }

          else
          {
            sub_21700F3F4();
          }

          sub_21700E974();
          sub_216B13138();
        }

        v11 &= v11 - 1;
      }

      while (v11);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2168E62C8()
{
  sub_2168E5FC8();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2168E6314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2168E6358(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2168E6398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2168E6404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor(319, v4, v5, v7);
    if (v9 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2168E64DC(uint64_t a1)
{
  sub_217006224();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MusicEvent(319);
    if (v2 <= 0x3F)
    {
      sub_2168E65F0(319);
      if (v3 <= 0x3F)
      {
        sub_21668A338(319, &qword_280E29E28, &qword_27CAB74F8, &unk_217017160);
        if (v4 <= 0x3F)
        {
          sub_2168E6684();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2168E65F0(uint64_t a1)
{
  if (!qword_280E2FA80)
  {
    v2 = type metadata accessor for SectionChangeInstruction(255);
    v3 = sub_2168EB41C(&qword_280E360D8, type metadata accessor for SectionChangeInstruction, &unk_21702DED0);
    v5 = type metadata accessor for AnyProtoRequestConvertibleIntent(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280E2FA80);
    }
  }
}

void sub_2168E6684()
{
  if (!qword_280E3D8A0)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E3D8A0);
    }
  }
}

void sub_2168E66D4(uint64_t a1)
{
  sub_217006224();
  if (v2 <= 0x3F)
  {
    type metadata accessor for MusicEvent(319);
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      v6 = *(a1 + 24);
      v7 = type metadata accessor for PageChangeInstruction(255, v5, v6, v3);
      WitnessTable = swift_getWitnessTable();
      type metadata accessor for AnyProtoRequestConvertibleIntent(319, v7, WitnessTable, v9);
      if (v11 <= 0x3F)
      {
        type metadata accessor for PageEventTrigger.InvalidationStrategy(319, v5, v6, v10);
        if (v12 <= 0x3F)
        {
          sub_21668A338(319, &qword_280E29F18, &qword_27CABBB20, qword_217025410);
          if (v13 <= 0x3F)
          {
            sub_2168E6844(319);
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2168E6844(uint64_t a1)
{
  if (!qword_280E4A4F0)
  {
    sub_2170061E4();
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E4A4F0);
    }
  }
}

void sub_2168E689C()
{
  OUTLINED_FUNCTION_49();
  v1 = *v0;
  v2 = _s7SectionVMa(0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  sub_2168E6034();
  sub_2168E6A88(0, 0);
  v9 = *(v1 + 88);
  v10 = *(v1 + 80);
  v11 = (*(v9 + 40))(v10, v9);
  if (v11 != 1)
  {
    v12 = v11;
    sub_2168E6C28(v11);
    sub_216783AAC(v12);
  }

  v13 = (*(*(v9 + 16) + 32))(v10);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      sub_2168EB464(v15, v8, _s7SectionVMa);
      v17 = *(v8 + *(v2 + 56));
      if (v17 != 1)
      {
        sub_2168E6C7C(v17);
      }

      sub_2168EB4C0(v8, _s7SectionVMa);
      v15 += v16;
      --v14;
    }

    while (v14);

    OUTLINED_FUNCTION_26();
  }

  else
  {
    OUTLINED_FUNCTION_26();
  }
}

uint64_t sub_2168E6A88(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = swift_allocObject();
  v7[2] = *(v6 + 80);
  v7[3] = *(v6 + 88);
  v7[4] = a1;
  v7[5] = a2;
  OUTLINED_FUNCTION_120_0((v3 + 7), v13);
  sub_2168EAE00(a1, a2);
  OUTLINED_FUNCTION_22_13();
  type metadata accessor for InvalidationCoordinator.DeferredUpdate(v8, v9, v10, v11);
  OUTLINED_FUNCTION_32();
  sub_21700E984();

  OUTLINED_FUNCTION_7_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_32();
  sub_21700ED04();
  swift_endAccess();

  OUTLINED_FUNCTION_120_0((v3 + 8), v13);

  OUTLINED_FUNCTION_9_32();
  sub_21700ED04();
  swift_endAccess();

  OUTLINED_FUNCTION_120_0((v3 + 9), v13);

  OUTLINED_FUNCTION_9_32();
  sub_21700ED04();
  swift_endAccess();
}

void sub_2168E6C28(uint64_t a1)
{
  sub_2168E7460();
  sub_2168E6A88(0, 1uLL);
  if (a1)
  {

    sub_2168E761C();
  }
}

void sub_2168E6C7C(uint64_t result)
{
  if (result)
  {
    sub_2168E6F74();
  }
}

void sub_2168E6C88(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_116();
  sub_2168E6D04(v2, v3);
  v4 = OUTLINED_FUNCTION_116();
  sub_2168E6A88(v4, v5);
  v6 = *(a1 + *(_s7SectionVMa(0) + 56));
  if (v6 != 1)
  {

    sub_2168E6C7C(v6);
  }
}

uint64_t sub_2168E6D04(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  swift_beginAccess();
  v5 = type metadata accessor for InvalidationCoordinator.SectionInvalidationEventDescriptor(255, *(v3 + 80), *(v3 + 88), v4);
  type metadata accessor for AnyInvalidationObserver(255, v5, v6, v7);
  sub_21700E984();
  sub_21700DF14();
  sub_21700E404();

  if (v11)
  {
    swift_endAccess();
    sub_21700DF14();
    v8 = sub_21700E834();

    while (v8 != sub_21700E8D4())
    {
      v10 = sub_21700E8B4();
      sub_21700E864();
      if (v10)
      {
      }

      else
      {
        sub_21700F3F4();
      }

      sub_21700E974();
      sub_216B13138();
    }

    swift_beginAccess();
    sub_21700E3F4();
    sub_21700DF14();
    sub_21700E414();
  }

  return swift_endAccess();
}

uint64_t sub_2168E6F2C(uint64_t a1, unint64_t a2)
{
  sub_2168E6D04(a1, a2);

  return sub_2168E6A88(a1, a2);
}

void sub_2168E6F74()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v1;
  v9 = type metadata accessor for MusicEvent(0);
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  swift_beginAccess();
  v64 = v5;
  v65 = v3;
  v15 = *(v8 + 88);
  v51 = *(v8 + 80);
  v50 = v15;
  v52 = type metadata accessor for InvalidationCoordinator.SectionInvalidationEventDescriptor(255, v51, v15, v16);
  type metadata accessor for AnyInvalidationObserver(255, v52, v17, v18);
  v19 = sub_21700E984();
  sub_21700DF14();
  sub_21700E404();

  v20 = *&v58[0];
  swift_endAccess();
  if (!v20)
  {
    v20 = sub_21700E894();
  }

  v66 = v20;
  v21 = *(v7 + 16);
  if (v21)
  {
    v49 = v10;
    v22 = 0;
    v23 = v7 + 32;
    v24 = v52;
    v47 = v52 - 8;
    v48 = v19;
    v42 = v21;
    v41 = v23;
    v46 = v5;
    do
    {
      sub_2168EB174(v23 + (v22 << 6), &v64);
      if (v64)
      {
        v25 = *(v64 + 16);
        if (v25)
        {
          v45 = v22;
          v56 = v1[5];
          v26 = v25;
          OUTLINED_FUNCTION_25_16();
          v54 = v27;
          v55 = v28;
          v53 = (v28 + 48) & ~v28;
          v44 = v29;
          sub_21700DF14();
          do
          {
            v57 = v26;
            OUTLINED_FUNCTION_0_63();
            sub_2168EB464(v23, v14, v30);
            sub_2168EB174(&v64, v58);
            v60[0] = v58[0];
            v60[1] = v58[1];
            *v61 = *v59;
            *&v61[9] = *&v59[9];
            v62 = v5;
            v63 = v3;
            sub_21700DF14();
            v31 = sub_2168CE82C(v60, v56, v24);
            OUTLINED_FUNCTION_143();
            v32 = v11;
            v33 = swift_allocObject();
            swift_weakInit();
            OUTLINED_FUNCTION_143();
            v34 = v14;
            v35 = swift_allocObject();
            swift_weakInit();
            sub_2168EB090(v34, v32);
            v36 = v53;
            v37 = swift_allocObject();
            v38 = v50;
            v37[2] = v51;
            v37[3] = v38;
            v37[4] = v33;
            v37[5] = v35;
            v11 = v32;
            v14 = v34;
            v39 = v57;
            sub_2168EB090(v32, v37 + v36);
            sub_216B130F8();
            v5 = v46;

            *&v58[0] = v31;
            sub_21700E8F4();
            v24 = v52;
            (*(*(v52 - 8) + 8))(v60, v52);
            v23 += v54;
            v26 = v39 - 1;
          }

          while (v26);

          v21 = v42;
          v22 = v45;
          v23 = v41;
        }
      }

      ++v22;
      sub_2168EB1D0(&v64);
    }

    while (v22 != v21);
    v20 = v66;
  }

  *&v58[0] = v20;
  v64 = v5;
  v65 = v3;
  OUTLINED_FUNCTION_120_0((v1 + 11), v60);
  sub_21700E3F4();
  sub_21700DF14();
  sub_21700E414();
  swift_endAccess();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168E7460()
{
  v1 = *v0;
  result = swift_beginAccess();
  if (v0[10])
  {
    type metadata accessor for MusicEvent(0);
    v4 = type metadata accessor for PageEventTrigger(255, *(v1 + 80), *(v1 + 88), v3);
    type metadata accessor for AnyInvalidationObserver(0, v4, v5, v6);
    sub_2168EB41C(&qword_280E46330, type metadata accessor for MusicEvent, &unk_2170438E8);
    sub_21700DF14();
    v7 = sub_21700E3B4();

    v8 = 0;
    v9 = 1 << *(v7 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v7 + 64);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {

        v0[10] = 0;
      }

      v11 = *(v7 + 64 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        do
        {
LABEL_10:
          v11 &= v11 - 1;

          sub_216B13138();
        }

        while (v11);
        continue;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2168E761C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = type metadata accessor for MusicEvent(0);
  OUTLINED_FUNCTION_1();
  v49[1] = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v49 - v11;
  v13 = v4;
  v14 = *(v4 + 80);
  v15 = *(v13 + 88);
  v17 = type metadata accessor for PageEventTrigger(255, v14, v15, v16);
  v20 = type metadata accessor for AnyInvalidationObserver(255, v17, v18, v19);
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_32();
  sub_21700E894();
  v55 = sub_2168EB41C(&qword_280E46330, type metadata accessor for MusicEvent, &unk_2170438E8);
  v56 = v20;
  v21 = sub_21700E384();
  v67 = v21;
  OUTLINED_FUNCTION_104_0();
  v22 = sub_21700E834();
  v66 = v22;
  OUTLINED_FUNCTION_104_0();
  if (v22 == sub_21700E8D4())
  {
LABEL_13:
    swift_beginAccess();
    v1[10] = v21;

    OUTLINED_FUNCTION_26();
  }

  else
  {
    v54 = v14;
    v50 = v3 + 32;
    v49[3] = v17 - 8;
    v49[0] = v3;
    v53 = v8;
    v52 = v15;
    v61 = v17;
    while (1)
    {
      OUTLINED_FUNCTION_104_0();
      v23 = sub_21700E8B4();
      sub_21700E864();
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = v50 + (v22 << 6);
      sub_21700E974();
      v25 = *(v17 - 8);
      (*(v25 + 16))(v65, v24, v17);
      if (v65[0])
      {
        v51 = v25;
        v26 = v17;
        v27 = *(v65[0] + 16);
        if (v27)
        {
          v60 = v1[5];
          OUTLINED_FUNCTION_25_16();
          v58 = v28;
          v59 = v29;
          v57 = (v29 + 48) & ~v29;
          v49[2] = v30;
          sub_21700DF14();
          do
          {
            v62 = type metadata accessor for MusicEvent;
            sub_2168EB464(v3, v12, type metadata accessor for MusicEvent);
            v31 = sub_2168CE82C(v65, v60, v61);
            OUTLINED_FUNCTION_143();
            v32 = swift_allocObject();
            swift_weakInit();
            OUTLINED_FUNCTION_143();
            v33 = v5;
            v34 = v1;
            v35 = swift_allocObject();
            swift_weakInit();
            v36 = OUTLINED_FUNCTION_30_17();
            sub_2168EB464(v36, v37, type metadata accessor for MusicEvent);
            v38 = v27;
            v39 = v12;
            v40 = v57;
            v41 = swift_allocObject();
            v42 = v52;
            v41[2] = v54;
            v41[3] = v42;
            v41[4] = v32;
            v41[5] = v35;
            v1 = v34;
            v5 = v33;
            v43 = v41 + v40;
            v12 = v39;
            v44 = v38;
            sub_2168EB090(v63, v43);

            sub_216B130F8();

            v45 = OUTLINED_FUNCTION_30_17();
            v46 = v62;
            sub_2168EB464(v45, v47, v62);
            v64 = v31;
            sub_21700E3F4();
            sub_21700E414();

            sub_2168EB4C0(v12, v46);
            v3 += v58;
            v27 = v44 - 1;
          }

          while (v27);

          v17 = v61;
          (*(v51 + 8))(v65, v61);
          v3 = v49[0];
        }

        else
        {
          v17 = v26;
          (*(v51 + 8))(v65, v26);
        }
      }

      else
      {
        (*(v25 + 8))(v65, v17);
      }

      OUTLINED_FUNCTION_104_0();
      v48 = sub_21700E8D4();
      v22 = v66;
      if (v66 == v48)
      {
        v21 = v67;
        goto LABEL_13;
      }
    }

    sub_21700F3F4();
    __break(1u);
  }
}

uint64_t sub_2168E7B50(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = *(v7 + 88);
  v10 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor(0, v8, v9, a4);
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v14 = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor(0, v8, v9, v13);
  v32 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v18 = type metadata accessor for InvalidationCoordinator.DeferredUpdate(0, v8, v9, v17);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v32 - v23;
  v35 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      swift_beginAccess();
      v36 = v5[8];
      sub_21700E984();
      swift_getWitnessTable();
      result = sub_21700ECD4();
      if (result)
      {
        return result;
      }
    }

    else
    {
      swift_beginAccess();
      v36 = v5[9];
      sub_21700E984();
      swift_getWitnessTable();
      result = sub_21700ECD4();
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v36 = v5[7];
    sub_21700E984();
    swift_getWitnessTable();
    result = sub_21700ECD4();
    if (result)
    {
      return result;
    }
  }

  swift_beginAccess();
  swift_getWitnessTable();
  sub_21700ECF4();
  swift_endAccess();
  sub_2168EAA00();
  (*(v19 + 16))(v21, v24, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v33;
    v26 = v34;
    (*(v33 + 32))(v12, v21, v34);
    sub_2168E9D6C();
    (*(v27 + 8))(v12, v26);
  }

  else
  {
    v31 = v32;
    (*(v32 + 32))(v16, v21, v14);
    sub_2168EA15C();
    (*(v31 + 8))(v16, v14);
  }

  sub_2168E7B50(v35, v28, v29, v30);
  return (*(v19 + 8))(v24, v18);
}

uint64_t sub_2168E804C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor(0, v7, v8, a2);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v14 = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor(0, v7, v8, v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v4, a1, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v21, v9);
    v23 = sub_217006224();
    (*(*(v23 - 8) + 16))(a3, v12, v23);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v15 + 32))(v17, v21, v14);
    v25 = sub_217006224();
    (*(*(v25 - 8) + 16))(a3, v17, v25);
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_2168E831C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor(0, v4, v5, a2);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v11 = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor(0, v4, v5, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v33, a1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v18, v6);
    v20 = *(v6 + 44);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB28, &unk_2170254D0);
    v22 = v34;
    v34[3] = v21;
    v22[4] = sub_2168EB02C();
    v23 = swift_allocObject();
    *v22 = v23;
    sub_2168282D4(&v9[v20], v23 + 16, &qword_27CABBB28, &unk_2170254D0);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v12 + 32))(v14, v18, v11);
    v25 = *(v11 + 40);
    v27 = type metadata accessor for PageChangeInstruction(255, v4, v5, v26);
    WitnessTable = swift_getWitnessTable();
    v30 = type metadata accessor for AnyProtoRequestConvertibleIntent(0, v27, WitnessTable, v29);
    v31 = v34;
    v34[3] = v30;
    v31[4] = swift_getWitnessTable();
    v32 = swift_allocObject();
    *v31 = v32;
    (*(*(v30 - 8) + 16))(v32 + 16, &v14[v25], v30);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2168E8694(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!v1[10])
  {
    return swift_endAccess();
  }

  v8 = type metadata accessor for PageEventTrigger(255, *(v3 + 80), *(v3 + 88), v7);
  type metadata accessor for AnyInvalidationObserver(0, v8, v9, v10);
  sub_2168EB41C(&qword_280E46330, type metadata accessor for MusicEvent, &unk_2170438E8);
  sub_21700E404();
  v11 = v13;
  result = swift_endAccess();
  if (v11)
  {
    sub_216B13138();
    swift_beginAccess();
    if (v1[10])
    {
      sub_2168EB464(a1, v6, type metadata accessor for MusicEvent);
      v13 = 0;
      sub_21700E3F4();
      sub_21700E414();
    }

    swift_endAccess();
  }

  return result;
}

uint64_t sub_2168E8874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  sub_216B13138();
  swift_beginAccess();
  v6 = type metadata accessor for InvalidationCoordinator.SectionInvalidationEventDescriptor(255, *(v4 + 80), *(v4 + 88), v5);
  type metadata accessor for AnyInvalidationObserver(255, v6, v7, v8);
  OUTLINED_FUNCTION_32();
  sub_21700E984();
  sub_21700DF14();
  sub_21700E404();

  if (v10)
  {
    v13 = v10;
    swift_endAccess();
    sub_21700DF14();
    swift_getWitnessTable();
    sub_21700ECB4();

    if (v12)
    {
    }

    sub_21700E904();

    OUTLINED_FUNCTION_120_0((v3 + 11), &v11);
    sub_21700E3F4();
    sub_21700DF14();
    sub_21700E414();
  }

  return swift_endAccess();
}

uint64_t sub_2168E8A64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_2168E8B10(a4, a1, Strong);
    }
  }

  return result;
}

uint64_t sub_2168E8B10(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a3;
  v29 = a1;
  v5 = *v3;
  v6 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217006224();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v5 + 80);
  v25 = *(v5 + 88);
  v30 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor(0, v27, v25, v11);
  v12 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v14 = &v23 - v13;
  v15 = a2[6];
  v16 = a2[9];
  v24 = a2[8];
  type metadata accessor for SectionChangeInstruction(0);
  sub_2168EB41C(&qword_280E360E0, type metadata accessor for SectionChangeInstruction, &unk_21702DE84);
  sub_2168EB41C(&qword_280E360D8, type metadata accessor for SectionChangeInstruction, &unk_21702DED0);
  sub_21700DF14();
  v17 = v28;
  sub_216B13178();
  sub_217006214();
  v18 = v26;
  sub_2168EB464(v29, v26, type metadata accessor for MusicEvent);
  sub_2168282D4(v32, v31, &qword_27CABBB28, &unk_2170254D0);
  v19 = *(a2 + 56);
  v20 = v24;
  sub_2168E5DE0(v10, v18, v24, v16, v31, v15, v19, v27, v25, v22, v23, v24, v25, v26, v27, v28, v29, v30, *v31, *&v31[8], *&v31[16]);
  sub_21700DF14();
  sub_2168E8874(v17, v20, v16);
  sub_2168E9228();
  (*(v12 + 8))(v14, v30);
  return sub_216697664(v32, &qword_27CABBB28, &unk_2170254D0);
}

uint64_t sub_2168E8E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_2168E8EB4(a4, a1);
    }
  }

  return result;
}

uint64_t sub_2168E8EB4(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v25 = a1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v24 - v6;
  v7 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v7 - 8);
  v26 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_217006224();
  MEMORY[0x28223BE20](v9 - 8);
  v24 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v2;
  v11 = *(v4 + 80);
  v12 = *(v4 + 88);
  v30 = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor(0, v11, v12, v13);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v15 = &v24 - v14;
  v17 = type metadata accessor for PageChangeInstruction(0, v11, v12, v16);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_216B13178();
  sub_217006214();
  sub_2168EB464(a1, v26, type metadata accessor for MusicEvent);
  v20 = type metadata accessor for AnyProtoRequestConvertibleIntent(0, v17, WitnessTable, v19);
  v21 = *(v20 - 8);
  (*(v21 + 16))(v32, v33, v20);
  sub_216B12C88(v11, v12, v31, v22);
  sub_2168E5EA0();
  sub_21700DF14();
  sub_2168E8694(v25);
  sub_2168E96E8();
  (*(v28 + 8))(v15, v30);
  return (*(v21 + 8))(v33, v20);
}

void sub_2168E9228()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  v5 = *(v4 + 88);
  v6 = OUTLINED_FUNCTION_33_1();
  v9 = type metadata accessor for InvalidationCoordinator.DeferredUpdate(v6, v7, v5, v8);
  OUTLINED_FUNCTION_1();
  v64 = v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v63 = &v55[-v12];
  v61 = type metadata accessor for MusicEvent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v60 = v15 - v14;
  v16 = OUTLINED_FUNCTION_33_1();
  v19 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor(v16, v17, v5, v18);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v55[-v27];
  if (qword_280E2C0F0 != -1)
  {
    OUTLINED_FUNCTION_1_52(&qword_280E2C0F0);
  }

  v29 = sub_217007CA4();
  __swift_project_value_buffer(v29, qword_280E2C0F8);
  v30 = *(v21 + 16);
  OUTLINED_FUNCTION_22_13();
  v30();
  v65 = v3;
  OUTLINED_FUNCTION_22_13();
  v62 = v30;
  v30();
  v31 = sub_217007C84();
  v32 = sub_21700EDA4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v56 = v32;
    v34 = v33;
    v57 = swift_slowAlloc();
    v66 = v57;
    *v34 = 136446466;
    v35 = &v28[v19[10]];
    v58 = v1;
    v59 = v9;
    v36 = *v35;
    v37 = v35[1];
    v38 = *(v21 + 8);
    sub_21700DF14();
    (v38)(v28, v19);
    v39 = sub_2166A85FC(v36, v37, &v66);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2082;
    OUTLINED_FUNCTION_0_63();
    sub_2168EB464(v25 + v40, v60, v41);
    v42 = sub_21700E594();
    v44 = v43;
    v45 = OUTLINED_FUNCTION_31_7();
    v38(v45);
    v46 = sub_2166A85FC(v42, v44, &v66);
    v1 = v58;

    *(v34 + 14) = v46;
    v9 = v59;
    _os_log_impl(&dword_216679000, v31, v56, "Section %{public}s invalidated by: %{public}s", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v47 = *(v21 + 8);
    v48 = OUTLINED_FUNCTION_31_7();
    v47(v48);
    (v47)(v28, v19);
  }

  v49 = *(v65 + v19[13]);
  if (v49 == 3)
  {
    if (*(v1 + 48) == 1)
    {
      sub_2168E9D6C();
    }

    else
    {
      if (!*(v65 + v19[12]))
      {
        sub_2168E6D04(*(v65 + v19[10]), *(v65 + v19[10] + 8));
      }

      v53 = v63;
      OUTLINED_FUNCTION_22_13();
      v54();
      OUTLINED_FUNCTION_116();
      swift_storeEnumTagMultiPayload();
      sub_2168E9A78();
      (*(v64 + 8))(v53, v9);
    }
  }

  else
  {
    v50 = v63;
    OUTLINED_FUNCTION_22_13();
    v51();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB38, &qword_2170254E0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_217013DA0;
    *(v52 + 32) = v49;
    OUTLINED_FUNCTION_30_17();
    sub_2168E9A78();

    (*(v64 + 8))(v50, v9);
  }

  OUTLINED_FUNCTION_26();
}

void sub_2168E96E8()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_16_0();
  v5 = *(v4 + 88);
  v6 = OUTLINED_FUNCTION_34_15();
  type metadata accessor for InvalidationCoordinator.DeferredUpdate(v6, v7, v5, v8);
  OUTLINED_FUNCTION_1();
  v49 = v10;
  v50 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v48 = &v45 - v12;
  type metadata accessor for MusicEvent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v17 = OUTLINED_FUNCTION_34_15();
  v20 = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor(v17, v18, v5, v19);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v25 = &v45 - v24;
  if (qword_280E2C0F0 != -1)
  {
    OUTLINED_FUNCTION_1_52(&qword_280E2C0F0);
  }

  v26 = sub_217007CA4();
  __swift_project_value_buffer(v26, qword_280E2C0F8);
  v27 = *(v22 + 16);
  v51 = v3;
  v47 = v27;
  v27(v25, v3, v20);
  v28 = sub_217007C84();
  v29 = sub_21700EDA4();
  if (os_log_type_enabled(v28, v29))
  {
    v5 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v46 = v1;
    v31 = v30;
    v52 = v30;
    *v5 = 136446210;
    OUTLINED_FUNCTION_0_63();
    sub_2168EB464(&v25[v32], v16, v33);
    v34 = sub_21700E594();
    v36 = v35;
    v37 = OUTLINED_FUNCTION_31_7();
    v38(v37);
    v39 = sub_2166A85FC(v34, v36, &v52);

    *(v5 + 4) = v39;
    _os_log_impl(&dword_216679000, v28, v29, "Page invalidated by: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v1 = v46;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v40 = OUTLINED_FUNCTION_31_7();
    v41(v40);
  }

  v42 = *(v51 + *(v20 + 48));
  if (v42 && *(v42 + 16))
  {
    goto LABEL_12;
  }

  if (*(v1 + 48) != 1)
  {
    if (*(v51 + *(v20 + 44)) != 2)
    {
      sub_2168E6034();
    }

LABEL_12:
    v43 = OUTLINED_FUNCTION_27_18();
    v44(v43);
    OUTLINED_FUNCTION_38_11();
    sub_2168E9A78();
    (*(v49 + 8))(v5, v22 + 16);
    goto LABEL_13;
  }

  sub_2168EA15C();
LABEL_13:
  OUTLINED_FUNCTION_26();
}

void sub_2168E9A78()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  v9 = type metadata accessor for InvalidationCoordinator.DeferredUpdate(0, v7, *(v6 + 88), v8);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  if (qword_280E2C0F0 != -1)
  {
    OUTLINED_FUNCTION_1_52(&qword_280E2C0F0);
  }

  v15 = sub_217007CA4();
  __swift_project_value_buffer(v15, qword_280E2C0F8);
  (*(v11 + 16))(v14, v5, v9);
  sub_21700DF14();
  v16 = sub_217007C84();
  v17 = sub_21700EDA4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v5;
    v19 = v18;
    v30 = swift_slowAlloc();
    v33[0] = v30;
    *v19 = 136446466;
    sub_2168E831C(v9, v20, v32);
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    v21 = sub_21700CEA4();
    v23 = v22;
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v24 = sub_2166A85FC(v21, v23, v33);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    v25 = MEMORY[0x21CE9F660](v3, &unk_282931A88);
    v27 = sub_2166A85FC(v25, v26, v33);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_216679000, v16, v17, "Deferred update: %{public}s until: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    v5 = v31;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v28 = (*(v11 + 8))(v14, v9);
  }

  MEMORY[0x28223BE20](v28);
  *(&v29 - 2) = v1;
  *(&v29 - 1) = v5;
  sub_216CE1594(sub_2168EB010, (&v29 - 4), v3);
  OUTLINED_FUNCTION_26();
}

void sub_2168E9D6C()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v4 = v3;
  v5 = *v0;
  v47 = type metadata accessor for MusicEvent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v46 = v8 - v7;
  v10 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor(0, *(v5 + 80), *(v5 + 88), v9);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19_23();
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  if (!*(v4 + *(v21 + 48)))
  {
    v22 = (v4 + *(v10 + 40));
    v23 = *v22;
    v24 = v22[1];
    sub_2168E6A88(*v22, v24);
    sub_2168E6D04(v23, v24);
  }

  if (qword_280E2C0F0 != -1)
  {
    OUTLINED_FUNCTION_1_52(&qword_280E2C0F0);
  }

  v25 = sub_217007CA4();
  __swift_project_value_buffer(v25, qword_280E2C0F8);
  v26 = *(v12 + 16);
  v26(v20, v4, v10);
  v27 = OUTLINED_FUNCTION_30_17();
  (v26)(v27);
  v26(v16, v4, v10);
  v28 = sub_217007C84();
  v29 = sub_21700EDA4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v45 = v2;
    v31 = v30;
    v44 = swift_slowAlloc();
    v48 = v44;
    *v31 = 136446722;
    v32 = &v20[*(v10 + 40)];
    v43 = v28;
    v42 = v29;
    v33 = *v32;
    v34 = *(v12 + 8);
    sub_21700DF14();
    v34(v20, v10);
    OUTLINED_FUNCTION_24_17();
    OUTLINED_FUNCTION_26_21();

    *(v31 + 4) = v33;
    *(v31 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(&v1[*(v10 + 44)], *&v1[*(v10 + 44) + 24]);
    OUTLINED_FUNCTION_26_21();
    v35 = sub_21700CEA4();
    v34(v1, v10);
    OUTLINED_FUNCTION_24_17();
    OUTLINED_FUNCTION_26_21();

    *(v31 + 14) = v35;
    *(v31 + 22) = 2082;
    OUTLINED_FUNCTION_0_63();
    sub_2168EB464(&v16[v36], v46, v37);
    v38 = sub_21700E594();
    v34(v16, v10);
    OUTLINED_FUNCTION_24_17();
    OUTLINED_FUNCTION_26_21();

    *(v31 + 24) = v38;
    v39 = v43;
    _os_log_impl(&dword_216679000, v43, v42, "Section %{public}s needs update from: %{public}s after: %{public}s", v31, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v40 = *(v12 + 8);
    v40(v16, v10);
    v40(v20, v10);
    v40(v1, v10);
  }

  sub_21700CC34();
  OUTLINED_FUNCTION_26();
}

void sub_2168EA15C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v4 = *v0;
  v79 = type metadata accessor for MusicEvent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v78 = v7 - v6;
  v8 = *(v4 + 80);
  v84 = v0;
  v80 = *(v4 + 88);
  v81 = v8;
  v10 = type metadata accessor for InvalidationCoordinator.PageInvalidationDescriptor(0, v8, v80, v9);
  OUTLINED_FUNCTION_1();
  v82 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  v83 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v77 - v16;
  MEMORY[0x28223BE20](v18);
  v77 = &v77 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v77 - v21;
  v23 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_19_23();
  MEMORY[0x28223BE20](v27);
  v29 = &v77 - v28;
  v30 = *(v10 + 52);
  v85 = v3;
  sub_2168282D4(v3 + v30, v22, &qword_27CAB74E8, &qword_217030A40);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_216697664(v22, &qword_27CAB74E8, &qword_217030A40);
LABEL_9:
    v51 = v85;
    v53 = v82;
    v52 = v83;
    if (*(v85 + *(v10 + 44)) != 2)
    {
      sub_2168E6A88(0, 0);
      sub_2168E6034();
    }

    if (qword_280E2C0F0 != -1)
    {
      OUTLINED_FUNCTION_1_52(&qword_280E2C0F0);
    }

    v54 = sub_217007CA4();
    __swift_project_value_buffer(v54, qword_280E2C0F8);
    v55 = *(v53 + 16);
    v55(v17, v51, v10);
    v55(v52, v51, v10);
    v56 = sub_217007C84();
    v57 = sub_21700EDA4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v58 = 136446466;
      type metadata accessor for PageChangeInstruction(255, v81, v80, v59);
      OUTLINED_FUNCTION_8_29();
      swift_getWitnessTable();
      v60 = OUTLINED_FUNCTION_33_1();
      type metadata accessor for AnyProtoRequestConvertibleIntent(v60, v61, v62, v63);
      sub_2169426B4();
      v64 = *(v53 + 8);
      v64(v17, v10);
      v65 = OUTLINED_FUNCTION_8();
      v68 = sub_2166A85FC(v65, v66, v67);

      *(v58 + 4) = v68;
      *(v58 + 12) = 2082;
      OUTLINED_FUNCTION_0_63();
      v69 = v83;
      sub_2168EB464(v83 + v70, v78, v71);
      sub_21700E594();
      v64(v69, v10);
      v72 = OUTLINED_FUNCTION_8();
      v75 = sub_2166A85FC(v72, v73, v74);

      *(v58 + 14) = v75;
      _os_log_impl(&dword_216679000, v56, v57, "Page needs update from: %{public}s after: %{public}s", v58, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      v76 = *(v53 + 8);
      v76(v52, v10);
      v76(v17, v10);
    }

    sub_21700CC34();
    goto LABEL_17;
  }

  (*(v25 + 32))(v29, v22, v23);
  sub_2170061D4();
  v31 = sub_217006144();
  v32 = *(v25 + 8);
  v32(v1, v23);
  if ((v31 & 1) == 0)
  {
    v32(v29, v23);
    goto LABEL_9;
  }

  v33 = v85;
  if (qword_280E2C0F0 != -1)
  {
    OUTLINED_FUNCTION_1_52(&qword_280E2C0F0);
  }

  v34 = sub_217007CA4();
  __swift_project_value_buffer(v34, qword_280E2C0F8);
  v35 = v82;
  v36 = v77;
  (*(v82 + 16))(v77, v33, v10);
  v37 = sub_217007C84();
  v38 = sub_21700EDA4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v83 = v39;
    v40 = swift_slowAlloc();
    v84 = v40;
    *v39 = 136446210;
    v85 = v32;
    v86 = v40;
    type metadata accessor for PageChangeInstruction(255, v81, v80, v41);
    OUTLINED_FUNCTION_8_29();
    swift_getWitnessTable();
    v42 = OUTLINED_FUNCTION_34_15();
    type metadata accessor for AnyProtoRequestConvertibleIntent(v42, v43, v44, v45);
    v46 = sub_2169426B4();
    v48 = v47;
    (*(v35 + 8))(v36, v10);
    v49 = sub_2166A85FC(v46, v48, &v86);

    v50 = v83;
    *(v83 + 1) = v49;
    _os_log_impl(&dword_216679000, v37, v38, "Ignoring page update from: %{public}s. End date surpassed.", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    v85(v29, v23);
  }

  else
  {

    (*(v35 + 8))(v36, v10);
    v32(v29, v23);
  }

LABEL_17:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168EA85C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for InvalidationCoordinator.DeferredUpdate(0, *(*a2 + 80), *(*a2 + 88), a4);
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v10 - v7, a3, v5, v6);
  swift_beginAccess();
  sub_21700E984();
  sub_21700E8F4();
  return swift_endAccess();
}

uint64_t sub_2168EAA00()
{
  OUTLINED_FUNCTION_16_0();
  v2 = *(v1 + 80);
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_120_0(v0 + 56, v7);
  type metadata accessor for InvalidationCoordinator.DeferredUpdate(255, v2, v4, v5);
  OUTLINED_FUNCTION_32();
  sub_21700E984();
  OUTLINED_FUNCTION_7_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_19();
  sub_21700ED04();
  swift_endAccess();
  OUTLINED_FUNCTION_120_0(v0 + 64, v7);
  OUTLINED_FUNCTION_18_19();
  sub_21700ED04();
  swift_endAccess();
  OUTLINED_FUNCTION_120_0(v0 + 72, v7);
  OUTLINED_FUNCTION_18_19();
  sub_21700ED04();
  return swift_endAccess();
}

uint64_t sub_2168EAB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for InvalidationCoordinator.SectionInvalidationDescriptor(0, a4, a5, a4);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  type metadata accessor for InvalidationCoordinator.UpdateType(255, a4, a5, v14);
  v16 = type metadata accessor for InvalidationCoordinator.DeferredUpdate(255, a4, a5, v15);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18.n128_f64[0] = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v20 = &v28 - v19;
  v22 = *(v21 + 56);
  v23 = *(v16 - 8);
  (*(v23 + 16))(&v28 + v22 - v19, a1, v16, v18);
  if (!a3)
  {
    goto LABEL_4;
  }

  if (a3 == 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
LABEL_4:
      (*(v23 + 8))(&v20[v22], v16);
      v24 = 1;
      return v24 & 1;
    }

LABEL_11:
    (*(v23 + 8))(&v20[v22], v16);
    v24 = 0;
    return v24 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_11;
  }

  (*(v11 + 32))(v13, &v20[v22], v10);
  v25 = &v13[*(v10 + 40)];
  if (*v25 == a2 && *(v25 + 1) == a3)
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_21700F7D4();
  }

  (*(v11 + 8))(v13, v10);
  return v24 & 1;
}

uint64_t sub_2168EAE00(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_2168EAE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_19_23();
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  v15 = type metadata accessor for InvalidationCoordinator.DeferredUpdate(0, a3, a4, v14);
  sub_2168E804C(v15, v16, v13);
  sub_2168E804C(v15, v17, v4);
  LOBYTE(a4) = sub_217006204();
  v18 = *(v9 + 8);
  v18(v4, v7);
  v18(v13, v7);
  return a4 & 1;
}

uint64_t sub_2168EAF70()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E2C0F8);
  v1 = OUTLINED_FUNCTION_8();
  __swift_project_value_buffer(v1, v2);
  return sub_217007C94();
}

unint64_t sub_2168EB02C()
{
  result = qword_27CABBB30;
  if (!qword_27CABBB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBB28, &unk_2170254D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBB30);
  }

  return result;
}

uint64_t sub_2168EB090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168EB0F4()
{
  type metadata accessor for MusicEvent(0);
  v0 = OUTLINED_FUNCTION_13_17();

  return sub_2168E8E08(v0, v1, v2, v3);
}

uint64_t objectdestroy_33Tm()
{
  OUTLINED_FUNCTION_49();
  v1 = *(type metadata accessor for MusicEvent(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);

  v3 = v0 + v2;
  type metadata accessor for MusicEvent.Event(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      v6 = sub_2170061E4();
      OUTLINED_FUNCTION_34();
      v8 = *(v7 + 8);
      v9 = OUTLINED_FUNCTION_116();
      v8(v9);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0, &qword_21705EE80) + 48);
      if (!__swift_getEnumTagSinglePayload(v3 + v10, 1, v6))
      {
        (v8)(v3 + v10, v6);
      }

      break;
    case 0:
      sub_2170061E4();
      OUTLINED_FUNCTION_34();
      (*(v5 + 8))(v0 + v2);
      break;
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2168EB3AC()
{
  type metadata accessor for MusicEvent(0);
  v0 = OUTLINED_FUNCTION_13_17();

  return sub_2168E8A64(v0, v1, v2, v3);
}

uint64_t sub_2168EB41C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2168EB464(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_2168EB4C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168EB518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI23InvalidationCoordinatorC10UpdateType33_F008FC58614C03950967F7D612A50909LLOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_2168EB5D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2168EB610(uint64_t result, int a2, int a3)
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

void sub_2168EB66C(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a2;
  v91 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v84 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v83 = &v80 - v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  v82 = &v80 - v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  v81 = &v80 - v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v80 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v80 - v25;
  sub_21700D7A4();
  OUTLINED_FUNCTION_0_7();
  sub_21700CE04();
  v87 = v6;
  v27 = v6;
  v28 = v12;
  v29 = a1;
  v30 = *(v27 + 16);
  v94 = v4;
  v31 = v91;
  v89 = v30;
  v90 = v27 + 16;
  v30(v9, v97, v4);
  v32 = v31;
  v88 = v9;
  sub_21700D734();
  v86 = v29;
  sub_21700CE04();
  v33 = sub_21700CDB4();
  v35 = v34;
  v36 = *(v28 + 8);
  v92 = v28 + 8;
  v93 = v10;
  v36(v23, v10);
  if (v35)
  {
    v37 = type metadata accessor for ListLockup(0);
    v95 = v33;
    v96 = v35;
    v38 = v32;
    sub_21700F364();
    type metadata accessor for Artwork(0);
    v39 = v86;
    sub_21700CE04();
    v89(v88, v97, v94);
    sub_2168EC478(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    sub_21700D734();
    OUTLINED_FUNCTION_10_24(1819568500);
    v40 = sub_21700CDB4();
    v42 = v41;
    v43 = v93;
    v36(v26, v93);
    v44 = (v38 + v37[6]);
    *v44 = v40;
    v44[1] = v42;
    sub_21700CE04();
    v45 = sub_21700CDB4();
    v47 = v46;
    v48 = OUTLINED_FUNCTION_8_30();
    (v36)(v48);
    v49 = (v38 + v37[7]);
    *v49 = v45;
    v49[1] = v47;
    v50 = v81;
    sub_21700CE04();
    sub_21700CD44();
    v36(v50, v43);
    OUTLINED_FUNCTION_6_34(v37[8]);
    OUTLINED_FUNCTION_11_0();
    v51 = v82;
    sub_21700CE04();
    sub_21700CD44();
    v36(v51, v43);
    v52 = v37;
    OUTLINED_FUNCTION_6_34(v37[9]);
    sub_21700CE04();
    sub_2167FEFD4();
    sub_21700CD14();
    v53 = OUTLINED_FUNCTION_8_30();
    (v36)(v53);
    *(v38 + v37[10]) = v95;
    v54 = v83;
    sub_21700CE04();
    sub_21700CD44();
    v36(v54, v43);
    OUTLINED_FUNCTION_6_34(v52[12]);
    OUTLINED_FUNCTION_0_7();
    sub_21700CE04();
    v55 = sub_21700CDB4();
    v85 = v36;
    v57 = v56;
    v58 = OUTLINED_FUNCTION_8_30();
    v59(v58);
    v60 = v52;
    v61 = (v38 + v52[14]);
    *v61 = v55;
    v61[1] = v57;
    v62 = type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_0_7();
    sub_21700CE04();
    v63 = v88;
    v64 = v97;
    v89(v88, v97, v94);
    v65 = sub_2168EC478(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    v82 = v62;
    v83 = v65;
    OUTLINED_FUNCTION_8_30();
    sub_21700D734();
    OUTLINED_FUNCTION_10_24(1969710451);
    sub_21700D2E4();
    v85(v26, v93);
    OUTLINED_FUNCTION_11_0();
    v66 = v39;
    sub_21700CE04();
    v67 = v63;
    v68 = v63;
    v69 = v94;
    v70 = v89;
    v89(v68, v64, v94);
    sub_2168EC4C0();
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    sub_21700CE04();
    v70(v67, v64, v69);
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    v71 = v84;
    sub_21700CE04();
    sub_21700CD44();
    (*(v87 + 8))(v64, v69);
    v72 = v93;
    v73 = v85;
    v85(v66, v93);
    v73(v71, v72);
    OUTLINED_FUNCTION_6_34(v60[17]);
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_64();
    sub_2168EC478(v74, v75, MEMORY[0x277D22550]);
    swift_allocError();
    v77 = v76;
    v78 = type metadata accessor for ListLockup(0);
    *v77 = 25705;
    v77[1] = 0xE200000000000000;
    v77[2] = v78;
    OUTLINED_FUNCTION_50();
    (*(v79 + 104))(v77);
    swift_willThrow();
    (*(v87 + 8))(v97, v94);
    v36(v86, v93);
    sub_2166997CC(v32, &qword_27CAB6D58, &unk_217014E30);
  }
}

uint64_t sub_2168EBF18@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v43 = a2;
  v5 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v37 - v12;
  sub_21700CE04();
  v14 = sub_21700CD44();
  v15 = v13;
  v16 = v5;
  v17 = *(v7 + 8);
  v17(v15, v16);
  if (v14 == 2)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_64();
    v20 = sub_2168EC478(v18, v19, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_11_28(v20);
    *v21 = 0xD000000000000012;
    v21[1] = 0x8000000217084140;
    v21[2] = &type metadata for ListLockup.ToggleDescriptor;
    OUTLINED_FUNCTION_50();
    (*(v22 + 104))();
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v23 + 8))(v43);
    v24 = a1;
    return (v17)(v24, v16);
  }

  *a3 = v14 & 1;
  sub_21700CE04();
  v25 = v43;
  v26 = v37[1];
  sub_21700D2D4();
  if (v26)
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v27 + 8))(v25);
    v17(a1, v16);
    v24 = v10;
    return (v17)(v24, v16);
  }

  v17(v10, v16);
  sub_2167B7D58(v42, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB50, &qword_217025698);
  if (swift_dynamicCast())
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v29 + 8))(v25);
    v17(a1, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    sub_2166A0F18(v38, v41);
    return sub_2166A0F18(v41, (a3 + 8));
  }

  else
  {
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    sub_2166997CC(v38, qword_27CABBB58, qword_2170256A0);
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_64();
    v32 = sub_2168EC478(v30, v31, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_11_28(v32);
    v33 = MEMORY[0x277D84F90];
    *v34 = 0x6E6F69746361;
    v34[1] = 0xE600000000000000;
    v34[2] = &type metadata for ListLockup.ToggleDescriptor;
    v34[3] = v33;
    OUTLINED_FUNCTION_50();
    (*(v35 + 104))();
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v36 + 8))(v25);
    v17(a1, v16);
    return __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }
}

uint64_t sub_2168EC478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2168EC4C0()
{
  result = qword_27CABBB48;
  if (!qword_27CABBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBB48);
  }

  return result;
}

uint64_t sub_2168EC5AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = v3[2];
  v6 = v3[3];
  v3[2] = a1;
  v3[3] = a2;

  sub_21667E91C(v5, v6);
  v7 = *MEMORY[0x277D27800];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v4 + 264);
  *(v9 + 24) = v8;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v3 + *(*v3 + 272)) = sub_2166B9AD0(v7, 0, 1, 1, sub_2168EC8FC, v9);
}

uint64_t sub_2168EC6D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!sub_217005964())
  {

    v5 = 0u;
    v6 = 0u;
    return sub_216697CFC(&v5);
  }

  sub_21700E514();
  sub_21700F364();
  sub_216934FBC();

  sub_216788110(v4);
  if (!*(&v6 + 1))
  {

    return sub_216697CFC(&v5);
  }

  v3 = swift_dynamicCast();
  if ((v3 & 1) != 0 && v4[0] == 1)
  {
    sub_216B12888(v3);
  }
}

char *sub_2168EC84C()
{
  v0 = sub_216B127F4();

  return v0;
}

uint64_t sub_2168EC890()
{
  v0 = sub_2168EC84C();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2168EC904@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v88 = a1;
  v3 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v86 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v87 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v85 - v15);
  v17 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v85 - v21);
  v23 = type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v27 = v26 - v25;
  OUTLINED_FUNCTION_3_49();
  sub_2168ED84C(v2, v27, v28);
  OUTLINED_FUNCTION_38();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0, &unk_217019010);
      OUTLINED_FUNCTION_8_31();
      sub_2168ED900(v27, v22);
      sub_2168ED3E8(v22, v9, v88);

      OUTLINED_FUNCTION_2_41();
      v30 = v22;
      return sub_2168ED8A8(v30, v29);
    case 6u:
      v52 = *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80E8, &unk_21701D6A0) + 48));
      v53 = *(v86 + 32);
      v53(v8, v27, v3);
      if (v52 == 2 || (v52 & 1) != 0)
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE0, &unk_2170638E0);
        v55 = (v88 + *(v54 + 48));
        v53(v88, v8, v3);
        type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for MusicAppDestination(0);
        *v55 = 0;
        v55[1] = 0;
      }

      else
      {
        v53(v88, v8, v3);
        type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for MusicAppDestination(0);
        OUTLINED_FUNCTION_38();
      }

      goto LABEL_21;
    case 0xAu:
      sub_21700C384();
      OUTLINED_FUNCTION_9();
      v50 = OUTLINED_FUNCTION_10_25();
      v51(v50);
      type metadata accessor for MusicAppDestination(0);
      OUTLINED_FUNCTION_30_15();
      goto LABEL_21;
    case 0xBu:
      sub_2170072A4();
      OUTLINED_FUNCTION_9();
      v43 = OUTLINED_FUNCTION_10_25();
      v44(v43);
      type metadata accessor for MusicAppDestination(0);
      OUTLINED_FUNCTION_30_15();
      goto LABEL_21;
    case 0xDu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0, &qword_21701D6B0);
      OUTLINED_FUNCTION_8_31();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE0, &unk_2170638E0);
      OUTLINED_FUNCTION_12_25();
      sub_21700C1E4();
      OUTLINED_FUNCTION_9();
      (*(v35 + 32))(v3, v27);
      type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
      swift_storeEnumTagMultiPayload();
      *v16 = v23;
      v16[1] = v9;
      type metadata accessor for MusicAppDestination(0);
      goto LABEL_21;
    case 0xEu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8, &unk_217019000);
      OUTLINED_FUNCTION_8_31();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4F0, &qword_217025718);
      OUTLINED_FUNCTION_12_25();
      sub_21700C924();
      OUTLINED_FUNCTION_9();
      (*(v36 + 32))(v3, v27);
      type metadata accessor for MusicAppDestination.PlaylistDescriptor(0);
      swift_storeEnumTagMultiPayload();
      *v16 = v23;
      v16[1] = v9;
      type metadata accessor for MusicAppDestination(0);
      goto LABEL_21;
    case 0xFu:
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8, &unk_217038C80) + 48);
      sub_2168ED900(v27, v19);
      v57 = v87;
      v58 = *(v87 + 32);
      v58(v16, v27 + v56, v9);
      if (*(v19 + 12))
      {
        goto LABEL_28;
      }

      if (*(v19 + 4))
      {
        sub_21700DF14();
LABEL_28:
        sub_21700DF14();
        v78 = sub_21700BA64();
        v80 = v79;
        OUTLINED_FUNCTION_2_41();
        sub_2168ED8A8(v19, v81);
        v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE8, &unk_2170638D0) + 48);
        v83 = v88;
        *v88 = v78;
        v83[1] = v80;
        type metadata accessor for MusicAppDestination.PlaylistDescriptor(0);
        swift_storeEnumTagMultiPayload();
        v58((v83 + v82), v16, v9);
        type metadata accessor for MusicAppDestination(0);
        swift_storeEnumTagMultiPayload();
LABEL_22:
        OUTLINED_FUNCTION_9_33();
      }

      else
      {
        OUTLINED_FUNCTION_2_41();
        sub_2168ED8A8(v19, v84);
        (*(v57 + 8))(v16, v9);
        type metadata accessor for MusicAppDestination(0);
        v69 = OUTLINED_FUNCTION_13_18();
      }

      return __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
    case 0x10u:
      v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0, &unk_217036050) + 48);
      sub_21700C1E4();
      OUTLINED_FUNCTION_9();
      (*(v60 + 32))(v88, v27);
      type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for MusicAppDestination(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_9_33();
      __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
      v65 = &qword_27CAB6AE8;
      v66 = qword_217014050;
      return sub_216697664(v27 + v59, v65, v66);
    case 0x11u:
      v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8, &unk_217018FF0) + 48);
      sub_21700C924();
      OUTLINED_FUNCTION_9();
      (*(v73 + 32))(v88, v27);
      type metadata accessor for MusicAppDestination(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_9_33();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
      v65 = qword_27CAB6AF0;
      v66 = &unk_21701D840;
      return sub_216697664(v27 + v59, v65, v66);
    case 0x12u:
      sub_21700C734();
      OUTLINED_FUNCTION_9();
      v67 = OUTLINED_FUNCTION_10_25();
      v68(v67);
      type metadata accessor for MusicAppDestination(0);
      OUTLINED_FUNCTION_30_15();
      goto LABEL_21;
    case 0x13u:
      v31 = *v27;
      v32 = *(v27 + 8);
      v33 = *(v27 + 16);
      v34 = v88;
      *v88 = v31;
      v34[1] = v32;
      *(v34 + 16) = v33;
      type metadata accessor for MusicAppDestination(0);
      OUTLINED_FUNCTION_38();
      goto LABEL_21;
    case 0x18u:
      v37 = *v27;
      v38 = *(v27 + 8);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0, &unk_217019020);
      v40 = *(v87 + 32);
      v40(v13, v27 + *(v39 + 48), v9);
      v41 = *(v39 + 48);
      v42 = v88;
      *v88 = v37;
      v42[1] = v38;
      v40(v42 + v41, v13, v9);
      type metadata accessor for MusicAppDestination(0);
      OUTLINED_FUNCTION_38();
      goto LABEL_21;
    case 0x1Bu:
      type metadata accessor for MusicAppDestination(0);
      OUTLINED_FUNCTION_38();
LABEL_21:
      swift_storeEnumTagMultiPayload();
      goto LABEL_22;
    default:
      type metadata accessor for MusicAppDestination(0);
      v45 = OUTLINED_FUNCTION_13_18();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
      v29 = type metadata accessor for FlowAction.Destination;
      v30 = v27;
      return sub_2168ED8A8(v30, v29);
  }
}