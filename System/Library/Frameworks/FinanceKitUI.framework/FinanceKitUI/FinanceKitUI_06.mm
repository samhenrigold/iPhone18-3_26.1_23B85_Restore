uint64_t sub_2384A2EE0(uint64_t a1)
{
  v2 = sub_238759D30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_23849CDC8(&qword_27DF0B0C8, MEMORY[0x277CC7C98], MEMORY[0x277CC7CA0]);
  result = MEMORY[0x23EE63960](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_238709120(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_2384A307C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2387583E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v51 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v16 = sub_238758450();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x277CC6F50])
  {
    (*(v5 + 8))(a2, v4);
    (*(v17 + 8))(a1, v16);
    return 10;
  }

  v53 = a1;
  v23 = a2;
  if (v21 == *MEMORY[0x277CC6F38])
  {
    (*(v5 + 8))(a2, v4);
    (*(v17 + 8))(v53, v16);
    return 11;
  }

  v24 = v4;
  if (v21 == *MEMORY[0x277CC6F18])
  {
    (*(v5 + 8))(v23, v4);
    (*(v17 + 8))(v53, v16);
    return 12;
  }

  if (v21 == *MEMORY[0x277CC6F48])
  {
    v25 = *(v5 + 16);
    v25(v15, v23, v4);
    v25(v12, v15, v4);
    v26 = (*(v5 + 88))(v12, v4);
    if (v26 == *MEMORY[0x277CC6EE8])
    {
      v27 = *(v5 + 8);
      v27(v23, v4);
      (*(v17 + 8))(v53, v16);
      v27(v15, v4);
      return 0;
    }

    if (v26 == *MEMORY[0x277CC6EE0])
    {
      v32 = *(v5 + 8);
      v32(v23, v4);
      (*(v17 + 8))(v53, v16);
      v32(v15, v4);
      return 1;
    }

    if (v26 == *MEMORY[0x277CC6EF0])
    {
      v34 = *(v5 + 8);
      v34(v23, v4);
      (*(v17 + 8))(v53, v16);
      v34(v15, v4);
      return 2;
    }

    if (v26 == *MEMORY[0x277CC6EC8])
    {
      v37 = *(v5 + 8);
      v37(v23, v4);
      (*(v17 + 8))(v53, v16);
      v37(v15, v4);
      return 3;
    }

    if (v26 == *MEMORY[0x277CC6F08])
    {
      v39 = *(v5 + 8);
      v39(v23, v4);
      (*(v17 + 8))(v53, v16);
      v39(v15, v4);
      return 4;
    }

    if (v26 == *MEMORY[0x277CC6F00])
    {
      v41 = *(v5 + 8);
      v41(v23, v4);
      (*(v17 + 8))(v53, v16);
      v41(v15, v4);
      return 7;
    }

    if (v26 == *MEMORY[0x277CC6ED8])
    {
      v43 = *(v5 + 8);
      v43(v23, v4);
      (*(v17 + 8))(v53, v16);
      v43(v15, v4);
      return 8;
    }

    if (v26 == *MEMORY[0x277CC6ED0])
    {
      v45 = *(v5 + 8);
      v45(v23, v4);
      (*(v17 + 8))(v53, v16);
      v45(v15, v4);
      return 5;
    }

    if (v26 == *MEMORY[0x277CC6EF8])
    {
      v47 = *(v5 + 8);
      v47(v23, v4);
      (*(v17 + 8))(v53, v16);
      v47(v15, v4);
      return 6;
    }

    if (v26 == *MEMORY[0x277CC6EC0])
    {
      v49 = *(v5 + 8);
      v49(v23, v4);
      (*(v17 + 8))(v53, v16);
      v49(v15, v4);
      return 9;
    }

    goto LABEL_57;
  }

  v52 = v23;
  if (v21 != *MEMORY[0x277CC6F40])
  {
    if (v21 == *MEMORY[0x277CC6F30])
    {
      (*(v5 + 8))(v52, v4);
      (*(v17 + 8))(v53, v16);
      return 13;
    }

    v35 = v53;
    if (v21 == *MEMORY[0x277CC6F10])
    {
      (*(v5 + 8))(v52, v24);
      (*(v17 + 8))(v35, v16);
      return 14;
    }

    if (v21 == *MEMORY[0x277CC6F28])
    {
      (*(v5 + 8))(v52, v24);
      (*(v17 + 8))(v35, v16);
      return 15;
    }

    if (v21 == *MEMORY[0x277CC6F20])
    {
      (*(v5 + 8))(v52, v24);
      (*(v17 + 8))(v35, v16);
      return 16;
    }

    goto LABEL_57;
  }

  v28 = *(v5 + 16);
  v29 = v54;
  v28(v54, v52, v4);
  v28(v7, v29, v4);
  v30 = (*(v5 + 88))(v7, v4);
  if (v30 == *MEMORY[0x277CC6EE8])
  {
    v31 = *(v5 + 8);
    v31(v52, v4);
    (*(v17 + 8))(v53, v16);
    v31(v29, v4);
    return 0;
  }

  if (v30 == *MEMORY[0x277CC6EE0])
  {
    v33 = *(v5 + 8);
    v33(v52, v4);
    (*(v17 + 8))(v53, v16);
    v33(v29, v4);
    return 1;
  }

  if (v30 == *MEMORY[0x277CC6EF0])
  {
    v36 = *(v5 + 8);
    v36(v52, v4);
    (*(v17 + 8))(v53, v16);
    v36(v29, v4);
    return 2;
  }

  if (v30 == *MEMORY[0x277CC6EC8])
  {
    v38 = *(v5 + 8);
    v38(v52, v4);
    (*(v17 + 8))(v53, v16);
    v38(v29, v4);
    return 3;
  }

  if (v30 == *MEMORY[0x277CC6F08])
  {
    v40 = *(v5 + 8);
    v40(v52, v4);
    (*(v17 + 8))(v53, v16);
    v40(v29, v4);
    return 4;
  }

  if (v30 == *MEMORY[0x277CC6F00])
  {
    v42 = *(v5 + 8);
    v42(v52, v4);
    (*(v17 + 8))(v53, v16);
    v42(v29, v4);
    return 7;
  }

  if (v30 == *MEMORY[0x277CC6ED8])
  {
    v44 = *(v5 + 8);
    v44(v52, v4);
    (*(v17 + 8))(v53, v16);
    v44(v29, v4);
    return 8;
  }

  if (v30 == *MEMORY[0x277CC6ED0])
  {
    v46 = *(v5 + 8);
    v46(v52, v4);
    (*(v17 + 8))(v53, v16);
    v46(v29, v4);
    return 5;
  }

  if (v30 == *MEMORY[0x277CC6EF8])
  {
    v48 = *(v5 + 8);
    v48(v52, v4);
    (*(v17 + 8))(v53, v16);
    v48(v29, v4);
    return 6;
  }

  if (v30 != *MEMORY[0x277CC6EC0])
  {
    while (1)
    {
LABEL_57:
      sub_23875F520();
      __break(1u);
    }
  }

  v50 = *(v5 + 8);
  v50(v23, v4);
  (*(v17 + 8))(v53, v16);
  v50(v54, v4);
  return 9;
}

uint64_t sub_2384A3D28(uint64_t a1)
{
  v2 = sub_2387583E0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CC6EE8])
  {
    v8 = 0;
LABEL_21:
    (*(v3 + 8))(a1, v2);
    return v8;
  }

  if (v7 == *MEMORY[0x277CC6EE0])
  {
    v8 = 1;
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x277CC6EF0])
  {
    v8 = 2;
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x277CC6EC8])
  {
    v8 = 3;
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x277CC6F08])
  {
    v8 = 4;
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x277CC6F00])
  {
    v8 = 7;
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x277CC6ED8])
  {
    v8 = 8;
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x277CC6ED0])
  {
    v8 = 5;
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x277CC6EF8])
  {
    v8 = 6;
    goto LABEL_21;
  }

  if (v7 == *MEMORY[0x277CC6EC0])
  {
    v8 = 9;
    goto LABEL_21;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2384A3F7C(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  if (sub_23875BBD0())
  {
    v4 = *a1;
    v5 = a1[1];
    v7 = a1[2];
    v6 = a1[3];
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = *(a1 + 56);
    v12 = *a2;
    v13 = a2[2];
    v14 = a2[3];
    v15 = a2[5];
    v16 = a2[6];
    v17 = *(a2 + 56);
    if (v11)
    {
      if (v11 != 1 || !*(a2 + 56))
      {
        return 1;
      }

      if (v17 == 1)
      {
        if (v7 != v13 || v6 != v14)
        {
LABEL_66:

          return sub_23875F630();
        }

        return 0;
      }

      v46 = v10;
      sub_2384A463C(*a2, a2[1], v13, a2[3], a2[4], v15, v16, 2);
      sub_2384A463C(v4, v5, v7, v6, v8, v9, v46, 1);

      v20 = v4;
      v21 = v5;
      v22 = v7;
      v23 = v6;
      v24 = v8;
      v25 = v9;
      v26 = v46;
      v27 = 1;
    }

    else
    {
      if (!*(a2 + 56))
      {
        v28 = a2[5];
        if (v6 == v14 && v8 == a2[4] || (v29 = a2[6], v30 = v10, v31 = sub_23875F630(), v10 = v30, v16 = v29, (v31 & 1) != 0))
        {
          v32 = 1;
          v33 = 2;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          switch(v4)
          {
            case 1:
              v34 = 0;
              v35 = 0;
              v32 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v42 = 1;
              v33 = 4;
              break;
            case 2:
              v34 = 0;
              v35 = 0;
              v32 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v41 = 1;
              v33 = 5;
              break;
            case 3:
              v34 = 0;
              v35 = 0;
              v32 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v40 = 1;
              v33 = 6;
              break;
            case 4:
              v34 = 0;
              v35 = 0;
              v32 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v39 = 1;
              v33 = 7;
              break;
            case 5:
              v34 = 0;
              v35 = 0;
              v32 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v44 = 0;
              v45 = 0;
              v43 = 1;
              v33 = 3;
              break;
            case 6:
              v34 = 0;
              v35 = 0;
              v32 = 0;
              v36 = 0;
              v37 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v38 = 1;
              v33 = 8;
              break;
            case 7:
            case 13:
              v34 = 0;
              v35 = 0;
              v32 = 0;
              v36 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v37 = 1;
              v33 = 9;
              break;
            case 8:
            case 14:
              v34 = 0;
              v35 = 0;
              v32 = 0;
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v36 = 1;
              v33 = 10;
              break;
            case 9:
            case 12:
              v34 = 0;
              v35 = 0;
              v32 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v45 = 0;
              v44 = 1;
              v33 = 1;
              break;
            case 11:
              break;
            case 15:
              v34 = 0;
              v32 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v35 = 1;
              v33 = 11;
              break;
            case 16:
              v35 = 0;
              v32 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v34 = 1;
              v33 = 12;
              break;
            default:
              v34 = 0;
              v35 = 0;
              v32 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v33 = 0;
              v45 = 1;
              break;
          }

          switch(v12)
          {
            case 1:
              if (v42)
              {
                goto LABEL_62;
              }

              v47 = 4;
              return v33 < v47;
            case 2:
              if (v41)
              {
                goto LABEL_62;
              }

              v47 = 5;
              return v33 < v47;
            case 3:
              if (v40)
              {
                goto LABEL_62;
              }

              v47 = 6;
              return v33 < v47;
            case 4:
              if (v39)
              {
                goto LABEL_62;
              }

              v47 = 7;
              return v33 < v47;
            case 5:
              if (v43)
              {
                goto LABEL_62;
              }

              v47 = 3;
              return v33 < v47;
            case 6:
              if (v38)
              {
                goto LABEL_62;
              }

              v47 = 8;
              return v33 < v47;
            case 7:
            case 13:
              if (v37)
              {
                goto LABEL_62;
              }

              v47 = 9;
              return v33 < v47;
            case 8:
            case 14:
              if (v36)
              {
                goto LABEL_62;
              }

              v47 = 10;
              return v33 < v47;
            case 9:
            case 12:
              if (v44)
              {
                goto LABEL_62;
              }

              v47 = 1;
              return v33 < v47;
            case 11:
              if (v32)
              {
                goto LABEL_62;
              }

              v47 = 2;
              return v33 < v47;
            case 15:
              if (v35)
              {
                goto LABEL_62;
              }

              v47 = 11;
              return v33 < v47;
            case 16:
              if (v34)
              {
                goto LABEL_62;
              }

              v47 = 12;
              return v33 < v47;
            default:
              if ((v45 & 1) == 0)
              {
                v47 = 0;
                return v33 < v47;
              }

LABEL_62:
              if (!v10 || !v16 || v9 == v28 && v10 == v16)
              {
                return 0;
              }

              break;
          }
        }

        goto LABEL_66;
      }

      if (v17 == 1)
      {
        return 0;
      }

      v19 = v10;
      sub_2384A463C(*a2, a2[1], v13, a2[3], a2[4], v15, v16, 2);
      sub_2384A463C(v4, v5, v7, v6, v8, v9, v19, 0);

      v20 = v4;
      v21 = v5;
      v22 = v7;
      v23 = v6;
      v24 = v8;
      v25 = v9;
      v26 = v19;
      v27 = 0;
    }

    sub_2384A46CC(v20, v21, v22, v23, v24, v25, v26, v27);
    return 0;
  }

  return sub_23875BB50();
}

double sub_2384A463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a8)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a8 != 1)
  {
    if (a8 != 2)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:

  return result;
}

void sub_2384A46CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a8)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a8 != 1)
  {
    if (a8 != 2)
    {
      return;
    }

    goto LABEL_4;
  }

LABEL_5:
}

uint64_t sub_2384A475C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2384A47CC(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

uint64_t sub_2384A47DC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2387632F0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_238448C58(v4, v5, v6);
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v7 = qword_2814F0880;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_2814F1B90;
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  sub_23875EA80();
  v13 = sub_23875EAA0();

  return v13;
}

uint64_t sub_2384A4964(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 != 5)
      {
LABEL_27:
        if (qword_2814F0880 != -1)
        {
          swift_once();
        }

        v1 = qword_2814F1B90;
        goto LABEL_30;
      }

      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
    }

    else
    {
      if (a1 == 7)
      {
LABEL_18:
        if (qword_2814F0880 != -1)
        {
          swift_once();
        }

        v1 = qword_2814F1B90;
        goto LABEL_30;
      }

      if (a1 != 8)
      {
        goto LABEL_21;
      }

      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
    }
  }

  else
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        if (a1 == 3)
        {
          goto LABEL_27;
        }

        goto LABEL_18;
      }

LABEL_21:
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
      goto LABEL_30;
    }

    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v1 = qword_2814F1B90;
  }

LABEL_30:
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_23875EA80();
  return v6;
}

double sub_2384A4C58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int64x2_t *a7@<X8>)
{
  v25.i64[1] = a5;
  v26 = a6;
  v24.i64[1] = a3;
  v25.i64[0] = a4;
  v23.i64[1] = a1;
  v24.i64[0] = a2;
  v8 = sub_238758850();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.i64[0] = 0;
  v28.i8[8] = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B1E8, &qword_238767C10);
  sub_23875E1A0();
  v12 = v34.i64[0];
  v13 = v34.i8[8];
  v23.i64[0] = v35;
  sub_238449184(0, &qword_27DF0B1F0, 0x277CC1E90);
  sub_238758810();
  v14 = sub_238758840();
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  v17 = sub_23860E554(v14, v16);
  v28 = vdupq_n_s64(0x4046800000000000uLL);
  v29.i64[0] = v12;
  v29.i8[8] = v13;
  *(&v29.i32[2] + 1) = v43[0];
  v29.i32[3] = *(v43 + 3);
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v33.i64[0] = v26;
  v33.i64[1] = v17;
  v34 = v28;
  v35 = v12;
  v36 = v13;
  *v37 = v43[0];
  *&v37[3] = *(v43 + 3);
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v42 = v17;
  sub_2384A61B4(&v28, &v27);
  sub_2384A61EC(&v34);
  v18 = v31;
  a7[2] = v30;
  a7[3] = v18;
  v19 = v33;
  a7[4] = v32;
  a7[5] = v19;
  result = *v28.i64;
  v21 = v29;
  *a7 = v28;
  a7[1] = v21;
  return result;
}

uint64_t sub_2384A4E78(uint64_t a1)
{
  v2 = sub_238758680();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_23849CDC8(&qword_27DF0B0F0, MEMORY[0x277CC6F70], MEMORY[0x277CC6F78]);
  result = MEMORY[0x23EE63960](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_238709400(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_2384A5014(uint64_t a1)
{
  v2 = sub_23875BCB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_23849CDC8(&qword_27DF0A200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x23EE63960](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2387096E0(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_2384A51B0(uint64_t a1)
{
  v2 = sub_238757AD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_23849CDC8(&qword_27DF0B168, MEMORY[0x277CC6B60], MEMORY[0x277CC6B68]);
  result = MEMORY[0x23EE63960](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_238709CA0(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_2384A537C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_238449184(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t *sub_2384A53FC(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23875F3A0())
  {
    v12 = sub_238449184(0, a2, a3);
    v13 = sub_2384A537C(a4, a2, a3);
    result = MEMORY[0x23EE63960](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x23EE63F70](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_23875F3A0();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
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

uint64_t sub_2384A5568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2384A55B0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2384A5620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2384A5668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2384A56D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2384A5720(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_2384A57C4(uint64_t a1)
{
  type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2384A58C0(319, &qword_2814F09B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2384A58C0(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384A58C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2384A5960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedEmailContents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384A59C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2384A5A2C()
{
  result = qword_27DF0B158;
  if (!qword_27DF0B158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B148, &qword_2387679D8);
    sub_23849CDC8(&qword_27DF0B160, type metadata accessor for RelatedEmailContents, &unk_238767B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B158);
  }

  return result;
}

uint64_t sub_2384A5AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2384A5B40(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23EE63960](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_23870A23C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_2384A5C00(uint64_t a1)
{
  sub_2384561E8();
  if (v1 <= 0x3F)
  {
    sub_2384A58C0(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23875BC40();
      if (v3 <= 0x3F)
      {
        sub_2384A58C0(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for OrderDetailsRelatedEmailView.ViewModel.ShippingStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OrderDetailsRelatedEmailView.ViewModel.ShippingStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrderDetailsRelatedEmailView.ViewModel.MerchantEmail.EmailType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_20;
  }

  v2 = a2 + 16;
  if (a2 + 16 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 16;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 16;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0xA)
  {
    v8 = v7 - 9;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 8)
  {
    return v8 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OrderDetailsRelatedEmailView.ViewModel.MerchantEmail.EmailType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 16;
  if (a3 + 16 >= 0xFFFF00)
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

  if (a3 < 0xF0)
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2384A5FE8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xA)
  {
    return v1 - 9;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2384A5FFC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 9;
  }

  return result;
}

unint64_t sub_2384A601C()
{
  result = qword_27DF0B180;
  if (!qword_27DF0B180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B188, qword_238767A50);
    sub_2384A5A2C();
    sub_23849CDC8(&qword_27DF0B160, type metadata accessor for RelatedEmailContents, &unk_238767B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B180);
  }

  return result;
}

unint64_t sub_2384A60DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0B190;
  if (!qword_27DF0B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B190);
  }

  return result;
}

double sub_2384A614C()
{
  v1 = *(type metadata accessor for RelatedEmailContents(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23849D6BC(v2);
}

uint64_t sub_2384A621C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_23843980C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2384A626C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_2384397FC(result, a2, a3 & 1);
  }

  return result;
}

void sub_2384A62BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
  }
}

double sub_2384A630C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FinanceKitUI11MessageIcon33_A3EDBECB49885BD10E3889C340818FDALLV0E4TypeOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_2384A63A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2384A63F0(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_2384A6458()
{
  result = qword_27DF0B1F8;
  if (!qword_27DF0B1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B1B8, &qword_238767B80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B198, &qword_238767B70);
    sub_23875C950();
    sub_23843A3E8(&qword_27DF0B1B0, &qword_27DF0B198, &qword_238767B70, MEMORY[0x277CDF028]);
    sub_23849CDC8(&qword_27DF0A778, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B1F8);
  }

  return result;
}

uint64_t sub_2384A65C0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_2384A00DC(v0 + 16);
}

unint64_t sub_2384A6654()
{
  result = qword_27DF0B260;
  if (!qword_27DF0B260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B258, &unk_238767E38);
    sub_2384A6738(&qword_27DF0B268, &qword_27DF0B270, &unk_238767E48, sub_238449688);
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B260);
  }

  return result;
}

uint64_t sub_2384A6738(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2384A67DC()
{
  result = qword_27DF0B278;
  if (!qword_27DF0B278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B280, &qword_238767E68);
    sub_23843A3E8(&qword_27DF0B218, &qword_27DF0B208, &qword_238767DB0, MEMORY[0x277CE11A8]);
    sub_2384A6738(&qword_27DF0A8E0, &qword_27DF0A890, &qword_238766090, sub_23847E248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B278);
  }

  return result;
}

uint64_t sub_2384A68D8()
{
  swift_getKeyPath("x+{E");
  sub_2384AA9E0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel, &unk_238767F78);
  sub_23875BE90();
}

uint64_t sub_2384A697C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("x+{E");
  sub_2384AA9E0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel, &unk_238767F78);
  sub_23875BE90();

  *a2 = *(v3 + 16);
}

double sub_2384A6A54(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath("x+{E");
    MEMORY[0x28223BE20](KeyPath);
    sub_2384AA9E0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel, &unk_238767F78);
    sub_23875BE80();
  }

  return result;
}

uint64_t sub_2384A6B88()
{
  v1 = v0;
  started = type metadata accessor for SharingStartDate(0);
  v3 = MEMORY[0x28223BE20](started);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath("x+{E", v3);
  v18 = v0;
  sub_2384AA9E0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel, &unk_238767F78);
  sub_23875BE90();

  v6 = *(v0 + 16);
  swift_getKeyPath("X+{E");
  v18 = v6;
  sub_2384AA9E0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel, &unk_238769CCC);

  sub_23875BE90();

  v7 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);

  if (v7 == 1)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v8 = qword_2814F1B90;
    v9 = sub_23875EA50();
  }

  else
  {
    swift_getKeyPath("x+{E");
    v18 = v1;
    sub_23875BE90();

    v10 = *(v1 + 16);
    swift_getKeyPath("8+{E");
    v18 = v10;

    sub_23875BE90();

    v11 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
    swift_beginAccess();
    sub_2384AA36C(v10 + v11, v5);

    sub_2384AA698(v5, type metadata accessor for SharingStartDate);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v8 = qword_2814F1B90;
    v9 = sub_23875EA50();
  }

  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = [v8 localizedStringForKey:v9 value:v12 table:v13];

  v15 = sub_23875EA80();
  return v15;
}

uint64_t sub_2384A6F20()
{

  v1 = OBJC_IVAR____TtC12FinanceKitUI21AccountStartDateModel_account;
  v2 = sub_238758680();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI21AccountStartDateModel___observationRegistrar;
  v4 = sub_23875BED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

double sub_2384A7004@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = sub_23875D030();
  LOBYTE(v34) = 1;
  sub_2384A72D8(a1, v31);
  *&v30[7] = v31[0];
  *&v30[23] = v31[1];
  *&v30[39] = v31[2];
  *&v30[55] = v31[3];
  v28 = v34;
  v34 = sub_2384A6B88();
  v35 = v4;
  sub_2384397A8(v34, v4, v5);
  v6 = sub_23875DAA0();
  v8 = v7;
  v10 = v9;
  LODWORD(v34) = sub_23875D440();
  v11 = sub_23875DA20();
  v13 = v12;
  v15 = v14;
  sub_2384397FC(v6, v8, v10 & 1);

  sub_23875D820();
  v16 = sub_23875DA60();
  v18 = v17;
  v27 = v19;
  v21 = v20;

  sub_2384397FC(v11, v13, v15 & 1);

  v32[0] = v29;
  v32[1] = 0;
  v33[0] = v28;
  *&v33[1] = *v30;
  *&v33[33] = *&v30[32];
  *&v33[17] = *&v30[16];
  *&v33[49] = *&v30[48];
  *&v33[64] = *&v30[63];
  v22 = *v33;
  *a2 = v29;
  *(a2 + 16) = v22;
  v23 = *&v33[16];
  v24 = *&v33[48];
  v25 = *&v33[64];
  *(a2 + 48) = *&v33[32];
  *(a2 + 64) = v24;
  *(a2 + 32) = v23;
  *(a2 + 80) = v25;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = v16;
  *(a2 + 112) = v18;
  *(a2 + 120) = v27 & 1;
  *(a2 + 128) = v21;
  sub_23843981C(v32, &v34, &qword_27DF0B3F8, &unk_238768110);
  sub_23843980C(v16, v18, v27 & 1);

  sub_2384397FC(v16, v18, v27 & 1);

  v34 = v29;
  v35 = 0;
  v36 = v28;
  v38 = *&v30[16];
  v39 = *&v30[32];
  *v40 = *&v30[48];
  *&v40[15] = *&v30[63];
  v37 = *v30;
  sub_238439884(&v34, &qword_27DF0B3F8, &unk_238768110);

  return result;
}

uint64_t sub_2384A72D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v3 = sub_238757FC0();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238758A00();
  v64 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v63 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = v57 - v8;
  sub_23875ED50();
  v66 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = OBJC_IVAR____TtC12FinanceKitUI21AccountStartDateModel_account;
  v69 = sub_2387585B0();
  v70 = v10;
  v57[1] = sub_2384397A8(v69, v10, v11);
  v12 = sub_23875DAA0();
  v14 = v13;
  v16 = v15;
  LODWORD(v69) = sub_23875D420();
  v17 = sub_23875DA20();
  v19 = v18;
  v21 = v20;
  v61 = a1;
  sub_2384397FC(v12, v14, v16 & 1);

  sub_23875D820();
  v22 = sub_23875DA60();
  v24 = v23;
  v65 = v25;
  v27 = v26;

  sub_2384397FC(v17, v19, v21 & 1);

  v57[0] = v9;
  v28 = v62;
  sub_238758580();
  v30 = v63;
  v29 = v64;
  (*(v64 + 104))(v63, *MEMORY[0x277CC7158], v5);
  sub_2384AA9E0(&unk_27DF0B400, MEMORY[0x277CC7180], MEMORY[0x277CC7198]);
  sub_23875EC40();
  sub_23875EC40();
  v31 = *(v29 + 8);
  v31(v30, v5);
  v31(v28, v5);
  if (v69 == v68)
  {
    v32 = v58;
    sub_2387585C0();
    v33 = sub_238757FB0();
    v35 = v34;
    (*(v59 + 8))(v32, v60);
    v69 = v33;
    v70 = v35;
    v36 = sub_23875DAA0();
    v38 = v37;
    LOBYTE(v32) = v39;
    LODWORD(v69) = sub_23875D440();
    v40 = sub_23875DA20();
    v42 = v41;
    v44 = v43;
    v64 = v27;
    sub_2384397FC(v36, v38, v32 & 1);

    sub_23875D970();
    v45 = sub_23875DA60();
    v47 = v46;
    v63 = v24;
    v48 = v22;
    v50 = v49;
    v52 = v51;

    sub_2384397FC(v40, v42, v44 & 1);
    v27 = v64;

    v53 = v50 & 1;
    v22 = v48;
    v24 = v63;
    sub_23843980C(v45, v47, v53);
  }

  else
  {
    v45 = 0;
    v47 = 0;
    v53 = 0;
    v52 = 0;
  }

  v54 = v65 & 1;
  sub_23843980C(v22, v24, v65 & 1);

  sub_238476F5C(v45, v47, v53, v52);
  sub_238476FA0(v45, v47, v53, v52);
  LOBYTE(v69) = v54;
  v55 = v67;
  *v67 = v22;
  v55[1] = v24;
  *(v55 + 16) = v54;
  v55[3] = v27;
  v55[4] = v45;
  v55[5] = v47;
  v55[6] = v53;
  v55[7] = v52;
  sub_238476FA0(v45, v47, v53, v52);
  sub_2384397FC(v22, v24, v54);
}

uint64_t sub_2384A7848()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2387632F0;
  v3 = [v1 localizedName];
  v4 = sub_23875EA80();
  v6 = v5;

  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_238448C58(v7, v8, v9);
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v10 = qword_2814F1B90;
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = [v10 localizedStringForKey:v11 value:v12 table:v13];

  sub_23875EA80();
  v15 = sub_23875EAA0();

  return v15;
}

uint64_t CustomizeAccountListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13 = v1[2];
  v14 = v3;
  v15 = *(v1 + 8);
  v4 = v1[1];
  v11 = *v1;
  v12 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B288, &qword_238767E70);
  sub_23843A3E8(&qword_27DF0B290, &qword_27DF0B288, &qword_238767E70, MEMORY[0x277CE1198]);
  sub_23875C8F0();
  v5 = swift_allocObject();
  v6 = v14;
  *(v5 + 48) = v13;
  *(v5 + 64) = v6;
  *(v5 + 80) = v15;
  v7 = v12;
  *(v5 + 16) = v11;
  *(v5 + 32) = v7;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B298, &qword_238767E78) + 36));
  *v8 = sub_2384A9648;
  v8[1] = v5;
  v8[2] = 0;
  v8[3] = 0;
  return sub_2384A9650(&v11, v10);
}

double sub_2384A7B20@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B2E0, &unk_238768010);
  sub_2384A7BFC(a1, (a2 + *(v4 + 44)));

  return result;
}

double sub_2384A7BFC@<D0>(char *a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B2E8, &unk_238784130);
  MEMORY[0x28223BE20](v32);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B2F0, &qword_238768020);
  v7 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  sub_23875ED50();
  v33 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v30 - 2) = a1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B2F8, &qword_238768028);
  sub_2384AA578();
  v14 = sub_23875C410();
  v30 = v12;
  MEMORY[0x28223BE20](v14);
  *(&v30 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  sub_23843A3E8(&qword_27DF0AAE0, &qword_27DF0AAD8, &qword_23876B8C0, &unk_23877E960);
  sub_23875D1D0();
  v15 = sub_23875D770();
  sub_23875C3D0();
  v16 = &v6[*(v32 + 36)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v21 = *(v7 + 16);
  v22 = v9;
  v23 = v9;
  v24 = v31;
  v21(v23, v12, v31);
  v25 = v35;
  sub_23843981C(v6, v35, &qword_27DF0B2E8, &unk_238784130);
  v26 = v34;
  v21(v34, v22, v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B318, &qword_238768040);
  sub_23843981C(v25, &v26[*(v27 + 48)], &qword_27DF0B2E8, &unk_238784130);
  sub_238439884(v6, &qword_27DF0B2E8, &unk_238784130);
  v28 = *(v7 + 8);
  v28(v30, v24);
  sub_238439884(v25, &qword_27DF0B2E8, &unk_238784130);
  v28(v22, v24);

  return result;
}

double sub_2384A8010@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B310, &unk_238768030);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B2F8, &qword_238768028);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v6 = sub_23875D020();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B330, &qword_238768058);
  sub_2384A8230(a1, &v6[*(v10 + 44)]);
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2384396E4(v6, v9, &qword_27DF0B310, &unk_238768030);
  v11 = &v9[*(v7 + 36)];
  v12 = v16[5];
  *(v11 + 4) = v16[4];
  *(v11 + 5) = v12;
  *(v11 + 6) = v16[6];
  v13 = v16[1];
  *v11 = v16[0];
  *(v11 + 1) = v13;
  v14 = v16[3];
  *(v11 + 2) = v16[2];
  *(v11 + 3) = v14;
  sub_2384396E4(v9, a2, &qword_27DF0B2F8, &qword_238768028);

  return result;
}

void sub_2384A8230(__int128 *a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  v3 = sub_23875D310();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x28223BE20](v3);
  v69 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B338, &qword_238768060);
  v64 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v59 = &v56 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B340, &qword_238768068);
  v65 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v60 = &v56 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B348, &qword_238768070);
  v67 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v62 = &v56 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B350, &qword_238768078);
  v66 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v61 = &v56 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B358, &unk_238768080);
  MEMORY[0x28223BE20](v63);
  v76 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = &v56 - v11;
  sub_23875ED50();
  v77 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v80 = sub_23875D030();
  v110 = 0;
  sub_2384A8CB0(&v92);
  v113 = v92;
  v114 = *v93;
  v115 = *&v93[16];
  v116 = *&v93[32];
  v117[0] = v92;
  v117[1] = *v93;
  v117[2] = *&v93[16];
  v117[3] = *&v93[32];
  sub_23843981C(&v113, v91, &qword_27DF0B360, &qword_23877AE40);
  sub_238439884(v117, &qword_27DF0B360, &qword_23877AE40);
  *&v109[7] = v113;
  *&v109[23] = v114;
  *&v109[39] = v115;
  *&v109[55] = v116;
  v79 = v110;
  sub_23875E4B0();
  sub_23875C9C0();
  v58 = sub_23875D770();
  sub_23875C3D0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v111 = 0;
  v57 = sub_23875D7A0();
  sub_23875C3D0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v112 = 0;
  v92 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B320, &qword_238768048);
  sub_23875E1B0();
  v28 = v91[0];
  swift_getKeyPath(byte_238768090);
  v29 = swift_allocObject();
  v30 = a1[3];
  *(v29 + 48) = a1[2];
  *(v29 + 64) = v30;
  *(v29 + 80) = *(a1 + 8);
  v31 = a1[1];
  *(v29 + 16) = *a1;
  *(v29 + 32) = v31;
  v91[0] = v28;
  MEMORY[0x28223BE20](v29);
  sub_2384A9650(a1, &v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B368, &qword_2387680D0);
  sub_2384AA77C();
  v32 = v59;
  sub_23875D9C0();

  v33 = v69;
  sub_23875D300();
  v34 = sub_23843A3E8(&qword_27DF0B3A8, &qword_27DF0B338, &qword_238768060, MEMORY[0x277CDE5A0]);
  v35 = MEMORY[0x277CDE0D0];
  v36 = v60;
  v37 = v68;
  v38 = v74;
  sub_23875DF50();
  (*(v73 + 8))(v33, v38);
  (*(v64 + 8))(v32, v37);
  *&v92 = v37;
  *(&v92 + 1) = v38;
  *v93 = v34;
  *&v93[8] = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v62;
  v41 = v71;
  sub_23875DD80();
  (*(v65 + 8))(v36, v41);
  *&v92 = v41;
  *(&v92 + 1) = OpaqueTypeConformance2;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v61;
  v44 = v72;
  sub_23875DB70();
  (*(v67 + 8))(v40, v44);
  *&v92 = v44;
  *(&v92 + 1) = v42;
  swift_getOpaqueTypeConformance2();
  v45 = v75;
  v46 = v70;
  sub_23875DE10();
  (*(v66 + 8))(v43, v46);
  LOBYTE(v32) = sub_23875D770();
  sub_23875C3D0();
  v47 = v45 + *(v63 + 36);
  *v47 = v32;
  *(v47 + 8) = v48;
  *(v47 + 16) = v49;
  *(v47 + 24) = v50;
  *(v47 + 32) = v51;
  *(v47 + 40) = 0;
  v52 = v76;
  sub_238401BE4(v45, v76);
  v91[0] = v80;
  v91[1] = 0;
  LOBYTE(v91[2]) = v79;
  *(&v91[4] + 1) = *&v109[16];
  *(&v91[6] + 1) = *&v109[32];
  *(&v91[8] + 1) = *&v109[48];
  v91[10] = *&v109[63];
  *(&v91[2] + 1) = *v109;
  *&v91[11] = v84;
  *&v91[13] = v85;
  *&v91[15] = v86;
  *&v91[23] = v90;
  *&v91[21] = v89;
  *&v91[19] = v88;
  *&v91[17] = v87;
  LOBYTE(v37) = v57;
  LOBYTE(v36) = v58;
  LOBYTE(v91[25]) = v58;
  HIDWORD(v91[25]) = *&v83[3];
  *(&v91[25] + 1) = *v83;
  v91[26] = v13;
  v91[27] = v15;
  v91[28] = v17;
  v91[29] = v19;
  LOBYTE(v91[30]) = 0;
  HIDWORD(v91[30]) = *&v82[3];
  *(&v91[30] + 1) = *v82;
  LOBYTE(v91[31]) = v57;
  HIDWORD(v91[31]) = *&v81[3];
  *(&v91[31] + 1) = *v81;
  v91[32] = v21;
  v91[33] = v23;
  v91[34] = v25;
  v91[35] = v27;
  LOBYTE(v91[36]) = 0;
  v53 = v78;
  memcpy(v78, v91, 0x121uLL);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B3B0, &qword_2387680F0);
  sub_238401BE4(v52, &v53[*(v54 + 48)]);
  v55 = &v53[*(v54 + 64)];
  *v55 = 0;
  v55[8] = 1;
  sub_23843981C(v91, &v92, &qword_27DF0B3B8, &qword_23877F7B0);
  sub_238401C54(v45);
  sub_238401C54(v52);
  *&v93[17] = *&v109[16];
  *&v93[33] = *&v109[32];
  *v94 = *&v109[48];
  *&v93[1] = *v109;
  *&v94[71] = v87;
  *&v94[87] = v88;
  *&v94[103] = v89;
  *&v94[119] = v90;
  *&v94[23] = v84;
  *&v94[39] = v85;
  v92 = v80;
  v93[0] = v79;
  *&v94[15] = *&v109[63];
  *&v94[55] = v86;
  v94[135] = v36;
  *&v95[3] = *&v83[3];
  *v95 = *v83;
  v96 = v13;
  v97 = v15;
  v98 = v17;
  v99 = v19;
  v100 = 0;
  *v101 = *v82;
  *&v101[3] = *&v82[3];
  v102 = v37;
  *&v103[3] = *&v81[3];
  *v103 = *v81;
  v104 = v21;
  v105 = v23;
  v106 = v25;
  v107 = v27;
  v108 = 0;
  sub_238439884(&v92, &qword_27DF0B3B8, &qword_23877F7B0);
}

uint64_t sub_2384A8CB0@<X0>(uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v3 = qword_2814F1B90;
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  sub_23875EA80();
  sub_2384397A8(v8, v9, v10);
  v11 = sub_23875DAA0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_2384A7848();
  v18 = sub_23875DAA0();
  v20 = v19;
  v22 = v21 & 1;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21 & 1;
  *(a2 + 56) = v23;
  sub_23843980C(v11, v13, v15 & 1);

  sub_23843980C(v18, v20, v22);

  sub_2384397FC(v18, v20, v22);

  sub_2384397FC(v11, v13, v15 & 1);
}

uint64_t sub_2384A8F38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  started = type metadata accessor for SingleAccountStartDateSelectionView(0);
  MEMORY[0x28223BE20](started);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a2 + 48);

  v11 = sub_238652958(v9, v10, v8);
  MEMORY[0x28223BE20](v11);
  v14[-2] = a2;
  v14[-1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B3C8, &qword_2387680F8);
  sub_2384AA928();
  sub_2384AA9E0(&qword_27DF0B3E8, type metadata accessor for SingleAccountStartDateSelectionView, &protocol conformance descriptor for SingleAccountStartDateSelectionView);
  sub_23875C750();
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  v14[1] = qword_27DF2F920;

  v12 = sub_23875E2D0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B380, &qword_2387680D8);
  *(a3 + *(result + 36)) = v12;
  return result;
}

double sub_2384A917C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875CE60();
  v31 = 1;
  sub_2384A7004(a1, &v21);
  v38 = v27;
  v39 = v28;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v32 = v21;
  v33 = v22;
  v41[6] = v27;
  v41[7] = v28;
  v41[2] = v23;
  v41[3] = v24;
  v41[4] = v25;
  v41[5] = v26;
  v40 = v29;
  v42 = v29;
  v41[0] = v21;
  v41[1] = v22;
  sub_23843981C(&v32, &v20, &qword_27DF0B3F0, &qword_238768108);
  sub_238439884(v41, &qword_27DF0B3F0, &qword_238768108);
  *&v30[87] = v37;
  *&v30[103] = v38;
  *&v30[119] = v39;
  *&v30[23] = v33;
  *&v30[39] = v34;
  *&v30[55] = v35;
  *&v30[71] = v36;
  *&v30[135] = v40;
  *&v30[7] = v32;
  v5 = v31;
  v6 = sub_23875D7D0();
  sub_23875C3D0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = *&v30[64];
  *(a2 + 97) = *&v30[80];
  v16 = *&v30[112];
  *(a2 + 113) = *&v30[96];
  *(a2 + 129) = v16;
  *(a2 + 144) = *&v30[127];
  v17 = *v30;
  *(a2 + 33) = *&v30[16];
  result = *&v30[32];
  v19 = *&v30[48];
  *(a2 + 49) = *&v30[32];
  *(a2 + 65) = v19;
  *(a2 + 81) = v15;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 17) = v17;
  *(a2 + 160) = v6;
  *(a2 + 168) = v8;
  *(a2 + 176) = v10;
  *(a2 + 184) = v12;
  *(a2 + 192) = v14;
  *(a2 + 200) = 0;
  return result;
}

void sub_2384A9388(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v4 = qword_2814F1B90;
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

  v9 = sub_23875EA80();
  v11 = v10;

  v12 = swift_allocObject();
  v13 = *(a1 + 48);
  *(v12 + 48) = *(a1 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(a1 + 64);
  v14 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  sub_2384A9650(a1, v17);
  sub_23875D610();

  *a2 = v9;
  a2[1] = v11;
  *(a2 + *(v15 + 40)) = 0;
  v16 = (a2 + *(v15 + 44));
  *v16 = sub_2384AA638;
  v16[1] = v12;
}

uint64_t sub_2384A9588(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 48);
  v3 = sub_23854B138(MEMORY[0x277D84F90]);
  sub_23844C218(v2, 24, v3);
}

uint64_t sub_2384A96A4()
{
  v1 = type metadata accessor for SelectAccountsResult(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_238759510();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BC40();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[1];
  v34 = *v0;
  v33 = v10;
  v35 = v0[2];
  v11 = v0[5];
  v37 = v0[4];
  v36 = v11;
  v32 = v0[6];
  v12 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v14 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v15 = sub_23875EA80();
  v16 = MEMORY[0x277D38390];
  *(inited + 40) = v15;
  *(inited + 48) = v17;
  v18 = *v16;
  *(inited + 56) = *v16;
  *(inited + 64) = 0x6572616873;
  v19 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = v19;
  *(inited + 88) = 0xD000000000000016;
  *(inited + 96) = 0x8000000238785020;
  v20 = v14;
  v21 = v18;
  v22 = v19;
  v23 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[0] = v23;
  sub_2385C33E4(v12, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v42);

  v25 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384AA9E0(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v26 = sub_23875E910();

  [v25 subject:v32 sendEvent:v26];

  sub_23875BBF0();
  v42[0] = v34;
  v42[1] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B320, &qword_238768048);
  v27 = sub_23875E1B0();
  v28 = v41;
  MEMORY[0x28223BE20](v27);
  *(&v31 - 2) = v9;
  sub_2384C8BB8(MEMORY[0x277D84F98], sub_2384AA67C, (&v31 - 4), v28);

  sub_238759500();
  v29 = v40;
  (*(v4 + 16))(v3, v6, v40);
  (*(v4 + 56))(v3, 0, 1, v29);
  v37(v3);
  sub_2384AA698(v3, type metadata accessor for SelectAccountsResult);
  (*(v4 + 8))(v6, v29);
  return (*(v38 + 8))(v9, v39);
}

double sub_2384A9B98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v29 = a3;
  v26 = a1;
  v4 = sub_23875BCB0();
  MEMORY[0x28223BE20](v4 - 8);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_23875BC40();
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  MEMORY[0x28223BE20](v9 - 8);
  v24 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = sub_2387587E0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  sub_23875ED50();
  v27 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath("x+{E");
  v30 = v18;
  sub_2384AA9E0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel, &unk_238767F78);
  sub_23875BE90();

  (*(v6 + 16))(v8, v29, v28);

  sub_2384C8518(v19, v8, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_238439884(v13, &qword_27DF0B328, &qword_238768050);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v20 = v25;
    sub_238758640();
    v21 = v24;
    (*(v15 + 16))(v24, v17, v14);
    (*(v15 + 56))(v21, 0, 1, v14);
    sub_2386C3EA4(v21, v20);
    (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_2384A9F88@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13 = v1[2];
  v14 = v3;
  v15 = *(v1 + 8);
  v4 = v1[1];
  v11 = *v1;
  v12 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B288, &qword_238767E70);
  sub_23843A3E8(&qword_27DF0B290, &qword_27DF0B288, &qword_238767E70, MEMORY[0x277CE1198]);
  sub_23875C8F0();
  v5 = swift_allocObject();
  v6 = v14;
  *(v5 + 48) = v13;
  *(v5 + 64) = v6;
  *(v5 + 80) = v15;
  v7 = v12;
  *(v5 + 16) = v11;
  *(v5 + 32) = v7;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B298, &qword_238767E78) + 36));
  *v8 = sub_2384AAA28;
  v8[1] = v5;
  v8[2] = 0;
  v8[3] = 0;
  return sub_2384A9650(&v11, v10);
}

uint64_t type metadata accessor for AccountStartDateModel(uint64_t a1)
{
  result = qword_27DF0B2A8;
  if (!qword_27DF0B2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2384AA10C(uint64_t a1)
{
  result = sub_238758680();
  if (v2 <= 0x3F)
  {
    result = sub_23875BED0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2384AA20C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2384AA254(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2384AA2B4()
{
  result = qword_27DF0B2B8;
  if (!qword_27DF0B2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B298, &qword_238767E78);
    sub_23843A3E8(&qword_27DF0B2C0, &qword_27DF0B2C8, &qword_238767F70, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B2B8);
  }

  return result;
}

uint64_t sub_2384AA36C(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SharingStartDate(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

void sub_2384AA3D0()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_2384AA40C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE50, &qword_2387672C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B380, &qword_2387680D8);
  sub_23843A3E8(&qword_27DF0B3C0, &qword_27DF0AE50, &qword_2387672C0, MEMORY[0x277D83980]);
  sub_2384AA9E0(&qword_27DF09508, MEMORY[0x277CC8058], MEMORY[0x277CC8068]);
  sub_2384AA800();
  return sub_23875E370();
}

unint64_t sub_2384AA578()
{
  result = qword_27DF0B300;
  if (!qword_27DF0B300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B2F8, &qword_238768028);
    sub_23843A3E8(&qword_27DF0B308, &qword_27DF0B310, &unk_238768030, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B300);
  }

  return result;
}

uint64_t sub_2384AA698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t sub_2384AA77C()
{
  result = qword_27DF0B370;
  if (!qword_27DF0B370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B368, &qword_2387680D0);
    sub_2384AA800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B370);
  }

  return result;
}

unint64_t sub_2384AA800()
{
  result = qword_27DF0B378;
  if (!qword_27DF0B378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B380, &qword_2387680D8);
    sub_23843A3E8(&qword_27DF0B388, &qword_27DF0B390, &unk_2387680E0, MEMORY[0x277CDD938]);
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B378);
  }

  return result;
}

uint64_t sub_2384AA8E4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

unint64_t sub_2384AA928()
{
  result = qword_27DF0B3D0;
  if (!qword_27DF0B3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B3C8, &qword_2387680F8);
    sub_23843A3E8(&qword_27DF0B3D8, &qword_27DF0B3E0, &qword_238768100, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B3D0);
  }

  return result;
}

uint64_t sub_2384AA9E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2384AAA48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_23875EFB0();
  v14 = v8[8];
  v15 = sub_23875A9A0();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = v8[9];
  v17 = *MEMORY[0x277CC8260];
  v18 = sub_23875AB40();
  (*(*(v18 - 8) + 104))(&v13[v16], v17, v18);
  *&v13[v8[7]] = a1;
  v13[v8[10]] = 0;
  sub_2384AD678(v13, v10, type metadata accessor for BankConnectAuthorizationFlowConfig);
  v19 = objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));
  v20 = a1;

  v21 = sub_2384AC768(v10, a3, a4);

  sub_2384AD6E0(v13, type metadata accessor for BankConnectAuthorizationFlowConfig);
  return v21;
}

uint64_t sub_2384AB158@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B520, &qword_2387681F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_23875BCB0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = sub_23875A910();
  if (v17 == 2)
  {
    sub_23875A920();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v21 = sub_23875A9A0();
      (*(*(v21 - 8) + 8))(a1, v21);
      v22 = *(v11 + 32);
      v22(v16, v9, v10);
      v22(a2, v16, v10);
      v20 = MEMORY[0x277CC8258];
      goto LABEL_7;
    }

    sub_238439884(v9, &unk_27DF0B520, &qword_2387681F0);
    goto LABEL_14;
  }

  if (v17 == 1)
  {
    sub_23875A920();
    if ((*(v11 + 48))(v6, 1, v10) != 1)
    {
      v18 = sub_23875A9A0();
      (*(*(v18 - 8) + 8))(a1, v18);
      v19 = *(v11 + 32);
      v19(v13, v6, v10);
      v19(a2, v13, v10);
      v20 = MEMORY[0x277CC8268];
LABEL_7:
      v23 = *v20;
      v24 = sub_23875AB40();
      return (*(*(v24 - 8) + 104))(a2, v23, v24);
    }

    sub_238439884(v6, &unk_27DF0B520, &qword_2387681F0);
    goto LABEL_14;
  }

  if (v17)
  {
LABEL_14:
    result = sub_23875F520();
    __break(1u);
    return result;
  }

  v26 = sub_23875A9A0();
  (*(*(v26 - 8) + 8))(a1, v26);
  v27 = *MEMORY[0x277CC8260];
  v28 = sub_23875AB40();
  v29 = *(*(v28 - 8) + 104);

  return v29(a2, v27, v28);
}

id BankConnectAuthorizationViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectAuthorizationViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectAuthorizationViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2384AB80C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2384AD678(a1, v6, type metadata accessor for BankConnectAuthorizationFlowResult);
  v7 = type metadata accessor for BankConnectAuthorizationError(0);
  if ((*(*(v7 - 8) + 48))(v6, 2, v7) == 1)
  {
    return a2();
  }

  (a2)(0);
  return sub_2384AD6E0(v6, type metadata accessor for BankConnectAuthorizationFlowResult);
}

uint64_t sub_2384AB91C()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

id sub_2384ABA68(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2384ABAB0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23875B940();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875B8B0();
  v8 = a1;
  sub_23850A5BC(v7);
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_2384ABC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

uint64_t *sub_2384ABCA4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v78 = a7;
  v77 = a6;
  v76 = a5;
  v80 = a4;
  v65 = a3;
  v74 = a2;
  v73 = a1;
  v79 = *a8;
  v83 = sub_23875AB40();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3D0, &qword_2387681F8);
  v70 = *(v71 - 1);
  MEMORY[0x28223BE20](v71);
  v69 = &v63 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  MEMORY[0x28223BE20](v68);
  v67 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F30, &qword_23876D080);
  v17 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v19 = &v63 - v18;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v64);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B550, &qword_238768200);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v63 - v27;
  v29 = sub_23875A820();
  v97[3] = v29;
  v97[4] = MEMORY[0x277CC7F70];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v97);
  v75 = v29;
  (*(*(v29 - 8) + 32))(boxed_opaque_existential_1, v65, v29);
  *(a8 + 72) = 0;
  v30 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_connectedConsent;
  v31 = sub_238758BB0();
  (*(*(v31 - 8) + 56))(a8 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_contextProvider;
  *(a8 + v32) = [objc_allocWithZone(type metadata accessor for WebAuthenticationPresentationContextProvider()) init];
  *(a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_authenticationSession) = 0;
  *(a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_didStartWebAuthorization) = 0;
  v33 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__navigationPath;
  *&v94 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D030, &qword_238768208);
  sub_23875C290();
  (*(v26 + 32))(a8 + v33, v28, v25);
  v34 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__redirectURL;
  v35 = sub_23875B940();
  (*(*(v35 - 8) + 56))(v24, 1, 1, v35);
  sub_23843981C(v24, v21, &qword_27DF0D040, &qword_2387676A0);
  sub_23875C290();
  sub_238439884(v24, &qword_27DF0D040, &qword_2387676A0);
  (*(v17 + 32))(a8 + v34, v19, v66);
  v36 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__error;
  v37 = type metadata accessor for BankConnectAuthorizationError(0);
  (*(*(v37 - 8) + 56))(v16, 1, 1, v37);
  sub_23843981C(v16, v67, &unk_27DF0B540, &qword_238765900);
  v38 = v69;
  sub_23875C290();
  sub_238439884(v16, &unk_27DF0B540, &qword_238765900);
  (*(v70 + 32))(a8 + v36, v38, v71);
  swift_unknownObjectWeakInit();
  v71 = type metadata accessor for BankConnectAuthorizationFlowConfig;
  v39 = v73;
  sub_2384AD678(v73, a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration, type metadata accessor for BankConnectAuthorizationFlowConfig);
  *(a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowType) = v74 & 1;
  a8[2] = v76;
  sub_23845C998(v97, (a8 + 3));
  v40 = (a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
  v41 = v78;
  *v40 = v77;
  v40[1] = v41;

  v42 = v72;
  sub_238505694(v39, v72);
  sub_2384AD614(v42, a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_rootDestination);
  a8[8] = v80;

  v43 = sub_238758010();
  LOBYTE(v36) = sub_23851764C(v39, v43);

  *(a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_isExistingConnection) = v36 & 1;
  v44 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v45 = v82;
  v46 = v81;
  v47 = v83;
  (*(v82 + 16))(v81, v39 + *(v44 + 28), v83);
  sub_238758CC0();
  v48 = sub_238758CB0();
  v49 = sub_238758380();
  swift_allocObject();
  v50 = sub_238758370();
  v95 = v49;
  v96 = MEMORY[0x277CC6EB0];
  *&v94 = v50;
  v51 = sub_2387593B0();
  v52 = sub_2387593A0();
  v92 = v51;
  v93 = MEMORY[0x277CC78C0];
  *&v91 = v52;
  v53 = type metadata accessor for BankConnectAppAuthorizationHandler();
  v54 = swift_allocObject();
  v90[3] = v53;
  v90[4] = &off_284B2FCB8;
  v90[0] = v54;
  type metadata accessor for BankConnectAuthorizationFlowManager(0);
  v55 = swift_allocObject();
  v56 = __swift_mutable_project_boxed_opaque_existential_1(v90, v53);
  v57 = MEMORY[0x28223BE20](v56);
  v59 = (&v63 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v60 + 16))(v59, v57);
  v61 = *v59;
  v89 = &off_284B2FCB8;
  v88 = v53;
  *&v87 = v61;
  v86 = 0;
  sub_238757A30();
  v85[3] = v75;
  v85[4] = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v85);
  sub_23875A7E0();
  sub_238757A00();
  *(v55 + 16) = v48;
  sub_2384347C0(&v94, v55 + 24);
  sub_2384347C0(&v91, v55 + 64);
  sub_2384347C0(&v87, v55 + 104);
  (*(v45 + 32))(v55 + OBJC_IVAR____TtC12FinanceKitUI35BankConnectAuthorizationFlowManager_authorizationConfiguration, v46, v47);
  __swift_destroy_boxed_opaque_existential_1(v90);
  *(a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowManager) = v55;
  sub_23867B910(boxed_opaque_existential_1);

  sub_2384AD6E0(v39, v71);
  __swift_destroy_boxed_opaque_existential_1(v97);
  return a8;
}

uint64_t sub_2384AC768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v6 = sub_23875BCB0();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v10;
  v39 = type metadata accessor for BankConnectAuthorizationFlowView(0) - 8;
  MEMORY[0x28223BE20](v39);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_23875A820();
  v13 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for BankConnectAuthorizationFlowConfig;
  sub_2384AD678(a1, v21, type metadata accessor for BankConnectAuthorizationFlowConfig);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;

  sub_23875A7E0();
  sub_238758CC0();
  v23 = sub_238758CB0();
  sub_238758890();
  sub_238758880();
  v24 = sub_238758870();

  type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  v25 = swift_allocObject();
  v26 = v38;
  (*(v13 + 16))(v15, v18, v38);
  v27 = sub_2384ABCA4(v21, 1, v15, v23, v24, sub_2384AD604, v22, v25);

  (*(v13 + 8))(v18, v26);
  *(v43 + qword_27DF0B448) = v27;
  v28 = v39;
  v29 = sub_23875B940();
  v30 = v40;
  (*(*(v29 - 8) + 56))(v40, 1, 1, v29);
  sub_23843981C(v30, v41, &qword_27DF0D040, &qword_2387676A0);

  sub_23875E1A0();
  sub_238439884(v30, &qword_27DF0D040, &qword_2387676A0);
  v31 = *(v28 + 32);
  type metadata accessor for AnalyticsSession();
  v32 = swift_allocObject();
  v33 = v46;
  sub_23875BCA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v34 = swift_allocObject();
  *(v34 + ((*(*v34 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v47 + 32))(v34 + *(*v34 + *MEMORY[0x277D841D0] + 16), v33, v48);
  *&v12[v31] = v32;
  *(v32 + 16) = v34;
  *v12 = sub_2384AD60C;
  *(v12 + 1) = v27;
  v12[16] = 0;
  v35 = sub_23875D080();
  sub_2384AD6E0(v45, v44);
  return v35;
}

uint64_t sub_2384ACCD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  sub_23875EFB0();
  v15 = v9[8];
  v16 = sub_23875A9A0();
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  v17 = v9[9];
  sub_23875BC90();
  v18 = *MEMORY[0x277CC8268];
  v19 = sub_23875AB40();
  (*(*(v19 - 8) + 104))(&v14[v17], v18, v19);
  *&v14[v9[7]] = a1;
  v14[v9[10]] = 0;
  sub_2384AD678(v14, v11, type metadata accessor for BankConnectAuthorizationFlowConfig);
  v20 = objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));
  v21 = a1;

  v22 = sub_2384AC768(v11, a4, a5);

  sub_2384AD6E0(v14, type metadata accessor for BankConnectAuthorizationFlowConfig);
  return v22;
}

uint64_t sub_2384ACEAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  sub_23875EFB0();
  v15 = v9[8];
  v16 = sub_23875A9A0();
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  v17 = v9[9];
  sub_23875BC90();
  v18 = *MEMORY[0x277CC8258];
  v19 = sub_23875AB40();
  (*(*(v19 - 8) + 104))(&v14[v17], v18, v19);
  *&v14[v9[7]] = a1;
  v14[v9[10]] = 0;
  sub_2384AD678(v14, v11, type metadata accessor for BankConnectAuthorizationFlowConfig);
  v20 = objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));
  v21 = a1;

  v22 = sub_2384AC768(v11, a4, a5);

  sub_2384AD6E0(v14, type metadata accessor for BankConnectAuthorizationFlowConfig);
  return v22;
}

uint64_t sub_2384AD088(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v4 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875A9A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  sub_23875F100();
  sub_23875A940();
  if (v14)
  {
    v15 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
    v16 = sub_23875EA50();
    v29 = a1;
    v17 = v16;

    v18 = [v15 passWithFPANIdentifier_];

    a1 = v29;
  }

  else
  {
    v18 = 0;
  }

  v19 = [a1 institution];
  sub_23875EFB0();

  v20 = v4[6];
  v21 = *(v8 + 16);
  v21(&v6[v20], v13, v7);
  (*(v8 + 56))(&v6[v20], 0, 1, v7);
  v21(v10, v13, v7);
  v22 = v4[7];
  v23 = v18;
  sub_2384AB158(v10, &v6[v22]);
  *&v6[v4[5]] = v18;
  v6[v4[8]] = 0;
  v24 = objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));
  v25 = v31;

  v26 = sub_2384AC768(v6, v30, v25);

  (*(v8 + 8))(v13, v7);
  return v26;
}

void sub_2384AD398(uint64_t a1)
{
  sub_238757B60();
  if (v1 <= 0x3F)
  {
    sub_2384AD4D8(319, &qword_27DF0B430, sub_2384AD48C);
    if (v2 <= 0x3F)
    {
      sub_2384AD4D8(319, &qword_27DF0B440, MEMORY[0x277CC8048]);
      if (v3 <= 0x3F)
      {
        sub_23875AB40();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2384AD48C()
{
  result = qword_27DF096A8;
  if (!qword_27DF096A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF096A8);
  }

  return result;
}

void sub_2384AD4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2384AD614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384AD678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384AD6E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_2384AD744()
{
  v0 = sub_238759710();
  v1 = sub_238759770();
  [v0 setPredicate_];

  [v0 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_238763E70;
  v3 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v4 = sub_23875EA50();
  v5 = [v3 initWithKey:v4 ascending:0];

  *(v2 + 32) = v5;
  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  v6 = sub_23875EC60();

  [v0 setSortDescriptors_];

  return v0;
}

uint64_t sub_2384AD87C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v33 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v38 = *(a1 + 96);
  v39 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  sub_23875E310();
  v32 = v35;
  v29 = v37;
  v30 = v36;
  v38 = *(a1 + 72);
  v39 = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
  sub_23875E310();
  v8 = v35;
  v9 = v36;
  v31 = v37;
  v10 = *(a1 + 32);
  v35 = v10;
  LOBYTE(v36) = *(a1 + 40);
  if (v36 == 1)
  {
    v27 = v10;
  }

  else
  {

    sub_23875EFF0();
    v11 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_238439884(&v35, &qword_27DF0B760, &qword_2387688A0);
    (*(v5 + 8))(v7, v4);
    v27 = v38;
  }

  v38 = *(a1 + 48);
  v39 = *(a1 + 64);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B768, &qword_2387688A8);
  MEMORY[0x23EE62DC0](&v34, v12);
  v28 = v34;
  type metadata accessor for GroupedTransactionsView(0);
  sub_23875BDB0();
  v13 = v31;
  v15 = v29;
  v14 = v30;
  a2[6] = v32;
  a2[7] = v14;
  a2[8] = v15;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v13;
  type metadata accessor for GroupedTransactionsViewDataProvider(0);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84F90];
  v16[4] = MEMORY[0x277D84F90];
  v16[5] = v17;
  v16[6] = v17;
  v16[7] = 20;

  sub_23875BEC0();
  v26 = a1;
  v18 = v27;
  v16[2] = v27;
  sub_23875A2D0();
  swift_allocObject();
  v19 = v18;
  v16[3] = sub_23875A2B0();

  *a2 = v16;
  a2[1] = 0;
  a2[5] = v28;
  v20 = sub_23875E4A0();
  v22 = v21;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B770, &qword_2387688B0) + 36);
  sub_2384ADC6C(v26, v23);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B778, &qword_2387688B8);
  v25 = &v23[*(result + 36)];
  *v25 = v20;
  v25[1] = v22;
  return result;
}

double sub_2384ADC6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B780, &qword_2387688C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B788, &qword_2387688C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-v9];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath("8${E");
  swift_getKeyPath(byte_2387688F8);
  sub_23875C2D0();

  if (v15[15] == 1)
  {
    *v7 = sub_23875E4A0();
    v7[1] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B790, qword_238768918);
    sub_2384ADEC4(a1, (v7 + *(v12 + 44)));
    sub_2384396E4(v7, v10, &qword_27DF0B780, &qword_2387688C0);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  (*(v5 + 56))(v10, v13, 1, v4);
  sub_2384396E4(v10, a2, &qword_27DF0B788, &qword_2387688C8);

  return result;
}

double sub_2384ADEC4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for TransactionSearchList(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  sub_23875ED50();
  v24 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = [objc_opt_self() systemBackgroundColor];
  v10 = sub_23875DFB0();
  v23 = sub_23875D780();
  v28 = *(a1 + 96);
  v29 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  sub_23875E310();
  v11 = v26;
  v22 = v27;
  v28 = *(a1 + 72);
  v29 = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
  sub_23875E310();
  v12 = v26;
  v21 = v27;
  v28 = *(a1 + 48);
  v29 = *(a1 + 64);

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B768, &qword_2387688A8);
  MEMORY[0x23EE62DC0](&v26, v13);
  v14 = v26;
  *v8 = v11;
  v15 = v21;
  *(v8 + 8) = v22;
  *(v8 + 3) = v12;
  *(v8 + 2) = v15;
  sub_23875A230();
  KeyPath = swift_getKeyPath(byte_238768948);
  MEMORY[0x23EE5ECA0](0, KeyPath);

  swift_getKeyPath(byte_238768980);
  swift_getKeyPath(byte_2387689A8);
  sub_23875C2D0();

  sub_23875C510();
  *&v8[*(v3 + 32)] = v14;
  type metadata accessor for TransactionSearchModel(0);
  sub_2384B6248(&qword_27DF0B598, type metadata accessor for TransactionSearchModel, &unk_238783C08);
  *(v8 + 6) = sub_23875C7A0();
  *(v8 + 7) = v17;
  sub_2384B5E6C(v8, v5, type metadata accessor for TransactionSearchList);
  v18 = v25;
  *v25 = v10;
  *(v18 + 8) = v23;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B798, &qword_2387689C8);
  sub_2384B5E6C(v5, v18 + *(v19 + 48), type metadata accessor for TransactionSearchList);

  sub_2384B5ED4(v8);
  sub_2384B5ED4(v5);

  return result;
}

uint64_t sub_2384AE240@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 80);
  v6[4] = *(v1 + 64);
  v6[5] = v2;
  v6[6] = *(v1 + 96);
  v7 = *(v1 + 112);
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v4 = *(v1 + 48);
  v6[2] = *(v1 + 32);
  v6[3] = v4;
  return sub_2384AD87C(v6, a1);
}

uint64_t sub_2384AE28C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v124 = a1;
  if (sub_2384AF488())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B600, &qword_2387685E0);
    v116 = *(v3 - 8);
    v117 = v3;
    MEMORY[0x28223BE20](v3);
    v115 = v96 - v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B608, &qword_2387685E8);
    v114 = v96;
    v123 = v5;
    MEMORY[0x28223BE20](v5);
    v113 = v96 - v6;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B620, &qword_2387685F0);
    v112 = v96;
    v110 = *(v111 - 8);
    MEMORY[0x28223BE20](v111);
    v122 = v96 - v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B628, &qword_2387685F8);
    v103 = v96;
    v108 = v8;
    v107 = *(v8 - 8);
    MEMORY[0x28223BE20](v8);
    v119 = v96 - v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E00, &qword_238768600);
    v106 = v96;
    v118 = v10;
    v105 = *(v10 - 8);
    MEMORY[0x28223BE20](v10);
    v12 = v96 - v11;
    MEMORY[0x28223BE20](v13);
    v96[-2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B630, &qword_238768608);
    v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B638, &qword_238768610);
    v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B5E8, &qword_2387685D0);
    v16 = sub_2384B4B74();
    v17 = sub_23843A3E8(&qword_27DF0B5F0, &qword_27DF0B5E8, &qword_2387685D0, MEMORY[0x277CDDF68]);
    v126 = v14;
    v127 = v15;
    v128 = v16;
    v129 = v17;
    swift_getOpaqueTypeConformance2();
    v104 = v12;
    sub_23875C8F0();
    v121 = type metadata accessor for TransactionListSearchContainer(0);
    v18 = *(v121 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v121);
    sub_2384B5E6C(v1, v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransactionListSearchContainer);
    sub_23875ED50();
    v20 = sub_23875ED40();
    v21 = *(v18 + 80);
    v102 = ~v21;
    v22 = (v21 + 32) & ~v21;
    v109 = v19;
    v120 = v21;
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    *(v23 + 16) = v20;
    *(v23 + 24) = v24;
    sub_2384B4EA4(v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    v25 = sub_23875ED80();
    v101 = v96;
    v100 = v25;
    v26 = *(v25 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x28223BE20](v25);
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
    v29 = v96 - v28;
    sub_23875ED60();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v98 = sub_23875C830();
      v99 = v96;
      v97 = *(v98 - 8);
      MEMORY[0x28223BE20](v98);
      v31 = v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      v126 = 0;
      v127 = 0xE000000000000000;
      sub_23875F470();

      v126 = 0xD000000000000035;
      v127 = 0x8000000238788230;
      v125 = 141;
      v32 = sub_23875F600();
      MEMORY[0x23EE63650](v32);

      v96[1] = v96;
      v34 = MEMORY[0x28223BE20](v33);
      v35 = v96 - v28;
      v36 = v96 - v28;
      v37 = v100;
      (*(v26 + 16))(v35, v36, v100, v34);
      sub_23875C820();
      (*(v26 + 8))(v29, v37);
      v39 = v118;
      v38 = v119;
      (*(v105 + 4))(v119, v104, v118);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E08, &unk_238761C90);
      (*(v97 + 32))(&v38[*(v40 + 36)], v31, v98);
    }

    else
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E10, &unk_2387686B0);
      v57 = v119;
      v58 = &v119[*(v56 + 36)];
      v59 = sub_23875C6E0();
      (*(v26 + 32))(&v58[*(v59 + 20)], v96 - v28, v100);
      *v58 = &unk_238768648;
      *(v58 + 1) = v23;
      v39 = v118;
      (*(v105 + 4))(v57, v104, v118);
    }

    swift_getKeyPath("h&{E");
    swift_getKeyPath("H&{E");
    sub_23875C2D0();

    v125 = v126;
    v61 = v109;
    MEMORY[0x28223BE20](v60);
    v118 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
    v62 = v96 - v118;
    v105 = type metadata accessor for TransactionListSearchContainer;
    sub_2384B5E6C(v2, v96 - v118, type metadata accessor for TransactionListSearchContainer);
    v63 = (v120 + 16) & v102;
    v104 = v63;
    v64 = swift_allocObject();
    sub_2384B4EA4(v62, v64 + v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B660, &unk_238768630);
    v106 = MEMORY[0x277CDDA18];
    v65 = sub_23843A3E8(&qword_27DF0B688, &qword_27DF08E00, &qword_238768600, MEMORY[0x277CDDA18]);
    v126 = v39;
    v127 = v65;
    swift_getOpaqueTypeConformance2();
    sub_2384B4FFC();
    v66 = v108;
    v67 = v119;
    sub_23875DF20();

    (*(v107 + 8))(v67, v66);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
    v119 = v96;
    v69 = v2;
    v70 = *(v68 - 8);
    MEMORY[0x28223BE20](v68);
    v72 = v96 - v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
    sub_23875C500();
    v73 = v123;
    sub_23843A3E8(&qword_27DF0B6A0, &qword_27DF09E80, &unk_2387686A0, MEMORY[0x277CDD8C8]);
    v74 = v113;
    sub_23875EC30();
    v75 = (*(v70 + 8))(v72, v68);
    MEMORY[0x28223BE20](v75);
    v76 = v96 - v118;
    v77 = v69;
    v78 = v105;
    sub_2384B5E6C(v69, v96 - v118, v105);
    v79 = v104;
    v80 = swift_allocObject();
    sub_2384B4EA4(v76, &v79[v80]);
    (*(v110 + 32))(v74, v122, v111);
    v81 = (v74 + *(v73 + 56));
    *v81 = sub_2384B50D4;
    v81[1] = v80;
    v82 = v77 + *(v121 + 44);
    v83 = *v82;
    v84 = *(v82 + 8);
    LOBYTE(v126) = v83;
    v127 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    v85 = sub_23875E1B0();
    LOBYTE(v126) = v125;
    MEMORY[0x28223BE20](v85);
    v86 = v96 - v118;
    sub_2384B5E6C(v77, v96 - v118, v78);
    v87 = swift_allocObject();
    sub_2384B4EA4(v86, &v79[v87]);
    v88 = sub_23843A3E8(&qword_27DF0B610, &qword_27DF0B608, &qword_2387685E8, MEMORY[0x277CDDB50]);
    v89 = v115;
    v90 = v123;
    sub_23875DF10();

    sub_238439884(v74, &qword_27DF0B608, &qword_2387685E8);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5F8, &qword_2387685D8);
    v92 = MEMORY[0x28223BE20](v91);
    v94 = v116;
    v93 = v117;
    (*(v116 + 16))(v96 - v95, v89, v117, v92);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5D8, &qword_2387685B8);
    v126 = v90;
    v127 = MEMORY[0x277D839B0];
    v128 = v88;
    v129 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0B618, &qword_27DF0B5D8, &qword_2387685B8, v106);
    sub_23875D1B0();
    return (*(v94 + 8))(v89, v93);
  }

  else
  {
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5D8, &qword_2387685B8);
    v41 = *(v123 - 8);
    MEMORY[0x28223BE20](v123);
    v43 = v96 - v42;
    v122 = v96;
    MEMORY[0x28223BE20](v44);
    v96[-2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5E0, &unk_2387685C0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A270, &qword_238765368);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B5E8, &qword_2387685D0);
    v47 = sub_23843A3E8(&qword_27DF0A280, &qword_27DF0A270, &qword_238765368, MEMORY[0x277CDE158]);
    v48 = sub_23843A3E8(&qword_27DF0B5F0, &qword_27DF0B5E8, &qword_2387685D0, MEMORY[0x277CDDF68]);
    v126 = v45;
    v127 = v46;
    v128 = v47;
    v129 = v48;
    swift_getOpaqueTypeConformance2();
    sub_23875C8F0();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5F8, &qword_2387685D8);
    v50 = MEMORY[0x28223BE20](v49);
    v52 = v123;
    (*(v41 + 16))(v96 - v51, v43, v123, v50);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B600, &qword_2387685E0);
    v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B608, &qword_2387685E8);
    v54 = sub_23843A3E8(&qword_27DF0B610, &qword_27DF0B608, &qword_2387685E8, MEMORY[0x277CDDB50]);
    v126 = v53;
    v127 = MEMORY[0x277D839B0];
    v128 = v54;
    v129 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0B618, &qword_27DF0B5D8, &qword_2387685B8, MEMORY[0x277CDDA18]);
    sub_23875D1B0();
    return (*(v41 + 8))(v43, v52);
  }
}

BOOL sub_2384AF488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B748, &qword_238768890);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14[-1] - v5;
  type metadata accessor for TransactionListSearchContainer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B578, &unk_2387683B0);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF0B750, &qword_27DF0B748, &qword_238768890, MEMORY[0x277CDD8D8]);
  sub_23875EED0();
  sub_23875EF00();
  v7 = *(v1 + 8);
  v7(v6, v0);
  if (v14[0] == v15)
  {
    return 1;
  }

  sub_23875C500();
  sub_23875EED0();
  sub_23875EF00();
  if (v15 != v14[0])
  {
    v8 = sub_23875EF20();
    v10 = *v9;
    v8(v14, 0);
    v7(v3, v0);
    v11 = [v10 integerValue];

    return v11 > 0;
  }

  v7(v3, v0);
  return 0;
}

double sub_2384AF700@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = sub_23875D700();
  v115 = *(v3 - 8);
  v116 = v3;
  MEMORY[0x28223BE20](v3);
  v114 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875C7F0();
  v112 = *(v5 - 8);
  v113 = v5;
  MEMORY[0x28223BE20](v5);
  v111 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TransactionListSearchContainer(0);
  v93 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v119 = v8;
  v120 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875D230();
  v94 = *(v9 - 8);
  v95 = v9;
  MEMORY[0x28223BE20](v9);
  v118 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B658, &qword_238768628);
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = &v73 - v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B650, &qword_238768620);
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B648, &qword_238768618);
  v104 = *(v13 - 8);
  v105 = v13;
  MEMORY[0x28223BE20](v13);
  v101 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6B8, &qword_238768740);
  v106 = *(v15 - 8);
  v107 = v15;
  MEMORY[0x28223BE20](v15);
  v103 = &v73 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B638, &qword_238768610);
  MEMORY[0x28223BE20](v110);
  v109 = &v73 - v17;
  sub_23875ED50();
  v108 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = (a1 + v7[14]);
  v20 = *v18;
  v19 = v18[1];
  *&v133[0] = v20;
  *(&v133[0] + 1) = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6B0, &qword_2387686E0);
  sub_23875E1D0();
  v92 = *v142;
  v91 = *&v142[8];
  v21 = (a1 + v7[15]);
  v23 = *v21;
  v22 = v21[1];
  *&v133[0] = v23;
  *(&v133[0] + 1) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C0, &qword_238768748);
  sub_23875E1D0();
  v90 = *v142;
  v89 = *&v142[8];
  v24 = a1 + v7[8];
  *v142 = *v24;
  *&v142[8] = *(v24 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  sub_23875E310();
  v25 = *&v133[0];
  type metadata accessor for TransactionSearchModel(0);
  v86 = v7;
  sub_2384B6248(&qword_27DF0B598, type metadata accessor for TransactionSearchModel, &unk_238783C08);
  v88 = *(v133 + 8);
  v26 = sub_23875C7A0();
  v28 = v27;
  KeyPath = swift_getKeyPath(byte_238768758);
  v141 = 0;
  v139 = 0;
  *&v133[0] = v26;
  *(&v133[0] + 1) = v28;
  *&v133[1] = KeyPath;
  BYTE8(v133[1]) = 0;
  *(&v133[1] + 9) = *v140;
  HIDWORD(v133[1]) = *&v140[3];
  *&v134 = v30;
  BYTE8(v134) = 0;
  *(&v134 + 9) = *v138;
  HIDWORD(v134) = *&v138[3];
  *(v135 + 8) = v91;
  *&v135[0] = v92;
  *(&v135[1] + 1) = v90;
  v136 = v89;
  *v137 = v25;
  *&v137[8] = v88;
  sub_23875C7B0();
  swift_getKeyPath(byte_2387686F8);
  sub_23875C7C0();

  v80 = v129;
  v92 = v130;
  v87 = v131;
  *&v89 = v132;
  sub_23875C7B0();
  swift_getKeyPath("h&{E");
  sub_23875C7C0();

  v90 = v127;
  *&v91 = v126;
  v123 = v126;
  v124 = v127;
  *&v88 = v128;
  v125 = v128;
  v31 = a1 + v86[11];
  v32 = *v31;
  v33 = *(v31 + 1);
  LOBYTE(v121) = v32;
  v122 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v84 = *&v142[8];
  v86 = *v142;
  v81 = v142[16];
  sub_23875D210();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v34 = qword_2814F1B90;
  v35 = sub_23875EA50();
  v36 = sub_23875EA50();
  v37 = sub_23875EA50();
  v38 = [v34 localizedStringForKey:v35 value:v36 table:v37];

  v39 = sub_23875EA80();
  v41 = v40;
  v79 = v40;

  v121 = v39;
  v122 = v41;
  v85 = type metadata accessor for TransactionListSearchContainer;
  v42 = v120;
  sub_2384B5E6C(a1, v120, type metadata accessor for TransactionListSearchContainer);
  v93 = *(v93 + 80);
  v43 = (v93 + 16) & ~v93;
  v83 = v43;
  v44 = swift_allocObject();
  v82 = a1;
  sub_2384B4EA4(v42, v44 + v43);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B660, &unk_238768630);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  *&v76 = sub_2384B4DF0(v75, v45, v46);
  *(&v76 + 1) = sub_23843A3E8(&qword_27DF0B670, &qword_27DF0B660, &unk_238768630, MEMORY[0x277D83980]);
  *&v77 = sub_23843A3E8(&qword_27DF0B678, &qword_27DF0B660, &unk_238768630, MEMORY[0x277D83990]);
  *(&v77 + 1) = sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  *&v78 = sub_2384397A8(*(&v77 + 1), v47, v48);
  *(&v78 + 1) = sub_2384B4E44(v78, v49, v50);
  v51 = v118;
  v52 = v96;
  sub_23875DB10();

  (*(v94 + 8))(v51, v95);

  v145 = v135[1];
  v146 = v136;
  v147 = *v137;
  v148 = *&v137[16];
  *v142 = v133[0];
  *&v142[16] = v133[1];
  v143 = v134;
  v144 = v135[0];
  sub_2384B5768(v142);
  *&v133[0] = &type metadata for TransactionsView;
  *(&v133[0] + 1) = v74;
  *&v133[1] = v75;
  *(&v133[1] + 1) = MEMORY[0x277D837D0];
  v134 = v76;
  v135[0] = v77;
  v135[1] = v78;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v98;
  v54 = v99;
  MEMORY[0x23EE62890](1, v99, OpaqueTypeConformance2);
  (*(v97 + 8))(v52, v54);
  v56 = v111;
  sub_23875C7E0();
  v57 = v120;
  sub_2384B5E6C(v82, v120, v85);
  v58 = v83;
  v59 = swift_allocObject();
  sub_2384B4EA4(v57, v59 + v58);
  *&v133[0] = v54;
  *(&v133[0] + 1) = OpaqueTypeConformance2;
  v60 = swift_getOpaqueTypeConformance2();
  v62 = v101;
  v61 = v102;
  sub_23875DF30();

  (*(v112 + 8))(v56, v113);
  (*(v100 + 8))(v55, v61);
  v63 = v114;
  sub_23875D6F0();
  *&v133[0] = v61;
  *(&v133[0] + 1) = v60;
  swift_getOpaqueTypeConformance2();
  v64 = v103;
  v65 = v105;
  sub_23875DE80();
  (*(v115 + 8))(v63, v116);
  (*(v104 + 8))(v62, v65);
  sub_23875E4A0();
  sub_23875C9C0();
  v66 = v109;
  v67 = (*(v106 + 32))(v109, v64, v107);
  v68 = (v66 + *(v110 + 36));
  v69 = v136;
  v68[4] = v135[1];
  v68[5] = v69;
  v68[6] = *v137;
  v70 = v133[1];
  *v68 = v133[0];
  v68[1] = v70;
  v71 = v135[0];
  v68[2] = v134;
  v68[3] = v71;
  MEMORY[0x28223BE20](v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5E8, &qword_2387685D0);
  sub_2384B4B74();
  sub_23843A3E8(&qword_27DF0B5F0, &qword_27DF0B5E8, &qword_2387685D0, MEMORY[0x277CDDF68]);
  sub_23875DEF0();
  sub_238439884(v66, &qword_27DF0B638, &qword_238768610);

  return result;
}

void sub_2384B05D0(void *a2@<X8>)
{
  swift_getKeyPath(byte_2387686F8);
  swift_getKeyPath(byte_238768720);
  sub_23875C2D0();

  *a2 = v3;
  a2[1] = v4;
}

void sub_2384B0650(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_2387374A0(v1, v2);
}

void sub_2384B0690(void *a2@<X8>)
{
  swift_getKeyPath("h&{E");
  swift_getKeyPath("H&{E");
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_2384B0710(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath("h&{E");
  swift_getKeyPath("H&{E");

  return sub_23875C2E0();
}

double sub_2384B078C()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_2385BA5E8(v4);
  sub_2384397A8(v0, v1, v2);

  sub_23875E190();
  sub_2384B5DE4(v4);

  return result;
}

double sub_2384B0884(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath(byte_238768848);
  swift_getKeyPath(byte_238768870);

  sub_23875C2E0();

  return result;
}

uint64_t sub_2384B095C@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B710, &qword_2387687E8);
  MEMORY[0x28223BE20](v18[0]);
  v3 = v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DD0, &qword_2387687F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = sub_23875D2A0();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B718, &qword_2387687F8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  sub_23875D260();
  v20 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B720, &unk_238768800);
  sub_2384B58A4();
  sub_23875C4D0();
  v13 = sub_23875D250();
  v19 = v1;
  sub_2384B5A24(v13, v14, v15);
  sub_23875C4D0();
  v16 = *(v18[0] + 48);
  (*(v10 + 16))(v3, v12, v9);
  (*(v5 + 16))(&v3[v16], v7, v4);
  sub_23875D070();
  (*(v5 + 8))(v7, v4);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2384B0C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_23875ED50();
  v3[3] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v3[4] = v5;
  v3[5] = v4;

  return MEMORY[0x2822009F8](sub_2384B0CF0, v5, v4);
}

uint64_t sub_2384B0CF0()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2384B0D84;

  return sub_238737658();
}

uint64_t sub_2384B0D84()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2384473D0, v3, v2);
}

double sub_2384B0EA4(uint64_t a1)
{
  v2 = type metadata accessor for TransactionListSearchContainer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_23875ED50();
  sub_23875ED40();
  v9 = MEMORY[0x277D85700];
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_23875ED80();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_2384B5E6C(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransactionListSearchContainer);
  v11 = sub_23875ED40();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v9;
  sub_2384B4EA4(v5, v13 + v12);
  sub_2386C3BA4(0, 0, v8, &unk_2387686F0, v13);

  return result;
}

uint64_t sub_2384B10E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_23875ED50();
  v4[5] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_2384B1178, v6, v5);
}

uint64_t sub_2384B1178()
{
  swift_getKeyPath(byte_2387686F8);
  swift_getKeyPath(byte_238768720);
  sub_23875C2D0();

  v1 = v0[2];
  v2 = v0[3];
  v0[8] = v2;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_2384B1268;

  return sub_238738554(v1, v2);
}

uint64_t sub_2384B1268()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_2384B13AC, v3, v2);
}

uint64_t sub_2384B13AC()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_2384B140C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TransactionListSearchContainer(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  sub_23875ED50();
  sub_23875ED40();
  v10 = MEMORY[0x277D85700];
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_23875ED80();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_2384B5E6C(a2, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransactionListSearchContainer);
  v12 = sub_23875ED40();
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v10;
  sub_2384B4EA4(v6, v14 + v13);
  sub_2386C3BA4(0, 0, v9, &unk_2387686C8, v14);

  return result;
}

uint64_t sub_2384B1648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v4[14] = swift_task_alloc();
  v5 = sub_238758680();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6A8, &qword_2387686D8);
  v4[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = sub_23875ED50();
  v4[26] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v4[27] = v8;
  v4[28] = v7;

  return MEMORY[0x2822009F8](sub_2384B1834, v8, v7);
}

uint64_t sub_2384B1834()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v38 = type metadata accessor for TransactionListSearchContainer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  (*(v4 + 16))(v2, v1, v3);
  sub_23843A3E8(&qword_27DF0B6A0, &qword_27DF09E80, &unk_2387686A0, MEMORY[0x277CDD8C8]);
  sub_23875EC20();
  v7 = *(v5 + 36);
  v8 = sub_23843A3E8(&qword_27DF09E88, &qword_27DF09E80, &unk_2387686A0, MEMORY[0x277CDD8D8]);
  sub_23875EF00();
  if (*(v6 + v7) == v0[10])
  {
    v43 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = v0[16];
    v42 = (v19 + 56);
    v39 = v19;
    v40 = (v19 + 32);
    v41 = (v19 + 48);
    v43 = MEMORY[0x277D84F90];
    do
    {
      v20 = v0[14];
      v44 = v0[15];
      v21 = v8;
      v22 = v7;
      v23 = v6;
      v24 = sub_23875EF20();
      v26 = *v25;
      v24(v0 + 2, 0);
      v6 = v23;
      v7 = v22;
      v8 = v21;
      sub_23875EF10();
      v27 = v26;
      sub_238758690();
      (*v42)(v20, 0, 1, v44);

      if ((*v41)(v20, 1, v44) == 1)
      {
        sub_238439884(v0[14], &qword_27DF09520, &unk_2387637E0);
      }

      else
      {
        v28 = v0[17];
        v29 = v0[18];
        v30 = v0[15];
        v31 = *v40;
        (*v40)(v29, v0[14], v30);
        v31(v28, v29, v30);
        v32 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_238497F74(0, v43[2] + 1, 1, v43);
        }

        v34 = v32[2];
        v33 = v32[3];
        if (v34 >= v33 >> 1)
        {
          v32 = sub_238497F74((v33 > 1), v34 + 1, 1, v32);
        }

        v35 = v0[17];
        v36 = v0[15];
        v32[2] = v34 + 1;
        v43 = v32;
        v31(v32 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v34, v35, v36);
      }

      sub_23875EF00();
    }

    while (*(v6 + v7) != v0[10]);
  }

  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[22];
  v12 = v0[13];
  sub_238439884(v0[20], &qword_27DF0B6A8, &qword_2387686D8);
  (*(v11 + 8))(v9, v10);
  v13 = sub_2384A4E78(v43);

  v14 = (v12 + *(v38 + 56));
  v15 = *v14;
  v16 = v14[1];
  v0[6] = *v14;
  v0[7] = v16;
  v0[11] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6B0, &qword_2387686E0);
  sub_23875E1C0();
  v0[29] = *(v12 + 8);
  v0[8] = v15;
  v0[9] = v16;
  sub_23875E1B0();
  v0[30] = v0[12];
  v0[31] = sub_23875ED40();
  v18 = sub_23875ECE0();
  v0[32] = v18;
  v0[33] = v17;

  return MEMORY[0x2822009F8](sub_2384B1CC0, v18, v17);
}

uint64_t sub_2384B1CC0()
{
  v1 = *(*(v0 + 232) + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_tokenManager);
  *(v0 + 272) = v1;

  return MEMORY[0x2822009F8](sub_2384B1D44, v1, 0);
}

uint64_t sub_2384B1D44()
{
  sub_23873C4FC(v0[30]);

  v1 = v0[32];
  v2 = v0[33];

  return MEMORY[0x2822009F8](sub_2384B1DC0, v1, v2);
}

uint64_t sub_2384B1DC0()
{

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_2384B1E24, v1, v2);
}

uint64_t sub_2384B1E24()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_2384B1ED4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v2)
  {
    sub_2384B1F70();
  }

  return result;
}

void sub_2384B1F70()
{
  v0 = sub_23875EA50();
  v1 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v4;
  v5 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 0x686372616573;
  v6 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v6;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x8000000238785080;
  v7 = v3;
  v8 = v5;
  v9 = v6;
  v10 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v10;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v14);

  v12 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384B6248(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v13 = sub_23875E910();

  [v12 subject:v0 sendEvent:v13];
}

double sub_2384B21A8@<D0>(uint64_t a2@<X8>)
{
  v8[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A270, &qword_238765368);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - v4;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_23875D400();
  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5E8, &qword_2387685D0);
  sub_23843A3E8(&qword_27DF0A280, &qword_27DF0A270, &qword_238765368, MEMORY[0x277CDE158]);
  sub_23843A3E8(&qword_27DF0B5F0, &qword_27DF0B5E8, &qword_2387685D0, MEMORY[0x277CDDF68]);
  sub_23875DEF0();
  (*(v3 + 8))(v5, v2);

  return result;
}

void sub_2384B244C(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  v15 = v14;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v15;
}

double sub_2384B25F4@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v34 = a4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6D0, &qword_2387687B8);
  MEMORY[0x28223BE20](v33);
  v32 = &v25 - v5;
  v6 = sub_23875D2A0();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6D8, &qword_2387687C0);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6E0, &qword_2387687C8);
  v26 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = &v25 - v10;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6E8, &qword_2387687D0);
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = &v25 - v13;
  sub_23875ED50();
  v25 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384B095C(v14);
  v15 = sub_23875D280();
  MEMORY[0x28223BE20](v15);
  *(&v25 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6F0, &qword_2387687D8);
  sub_23843A3E8(&qword_27DF0B6F8, &qword_27DF0B6F0, &qword_2387687D8, MEMORY[0x277CE14C0]);
  sub_23875C990();
  v16 = sub_23843A3E8(&qword_27DF0B700, &qword_27DF0B6D8, &qword_2387687C0, MEMORY[0x277CDDB60]);
  v17 = v29;
  MEMORY[0x23EE61E80](v9, v29, v16);
  (*(v28 + 8))(v9, v17);
  v18 = v32;
  v19 = *(v33 + 48);
  v20 = v27;
  (*(v12 + 16))(v32, v14, v27);
  v21 = v26;
  v22 = &v18[v19];
  v23 = v30;
  (*(v26 + 16))(v22, v11, v30);
  sub_23875D070();
  (*(v21 + 8))(v11, v23);
  (*(v12 + 8))(v14, v20);

  return result;
}

__n128 sub_2384B2A60@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TransactionListSearchContainer(0);
  v4 = (v1 + v3[8]);
  v13 = *v4;
  v15 = *(v4 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  sub_23875E310();
  v5 = v10;
  v11 = *(v1 + v3[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C0, &qword_238768748);
  sub_23875E1D0();
  v6 = v13;
  v9 = v15;
  v7 = (v1 + v3[14]);
  v14 = *v7;
  v15.n128_u64[0] = v7[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6B0, &qword_2387686E0);
  sub_23875E1B0();
  sub_23875E1A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B558, &qword_238768210);
  sub_23875E1A0();
  *a1 = v5;
  result = v9;
  *(a1 + 8) = v12;
  *(a1 + 24) = v6;
  *(a1 + 32) = v9;
  *(a1 + 48) = v14;
  *(a1 + 56) = v15.n128_u64[0];
  *(a1 + 64) = v14;
  *(a1 + 72) = v15.n128_u64[0];
  *(a1 + 80) = v11;
  return result;
}

double sub_2384B2BD0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23875CF70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v22[-v7];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875CF60();
  v9 = sub_2384B2A60(&v23);
  v10 = *(v3 + 16);
  (v10)(v5, v8, v2, v9);
  v22[0] = 1;
  v10(a1, v5, v2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B708, &qword_2387687E0);
  v12 = a1 + *(v11 + 48);
  v13 = v22[0];
  *v12 = 0;
  *(v12 + 8) = v13;
  v14 = *(v11 + 64);
  v15 = v25;
  v16 = v26;
  v29[2] = v25;
  v29[3] = v26;
  v17 = v24;
  v29[0] = v23;
  v29[1] = v24;
  v18 = v27;
  v29[4] = v27;
  v19 = a1 + v14;
  *v19 = v23;
  *(v19 + 16) = v17;
  v30 = v28;
  *(v19 + 80) = v28;
  *(v19 + 48) = v16;
  *(v19 + 64) = v18;
  *(v19 + 32) = v15;
  sub_2384B57EC(v29, v31);
  v20 = *(v3 + 8);
  v20(v8, v2);
  v31[2] = v25;
  v31[3] = v26;
  v31[4] = v27;
  v32 = v28;
  v31[0] = v23;
  v31[1] = v24;
  sub_2384B5848(v31);
  v20(v5, v2);

  return result;
}

uint64_t sub_2384B2E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_23875CE80();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TransactionListSearchContainer(0);
  v32 = *(v36 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v36);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  sub_23875ED50();
  v35 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v9 = qword_2814F1B90;
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = sub_23875EA80();
  v16 = v15;

  v17 = v39;
  sub_2384B5E6C(v39, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransactionListSearchContainer);
  v18 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v19 = swift_allocObject();
  v20 = sub_2384B4EA4(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v42 = v14;
  *&v43 = v16;
  MEMORY[0x28223BE20](v20);
  *(&v31 - 4) = &v42;
  *(&v31 - 3) = 0x70752E776F727261;
  *(&v31 - 2) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();

  sub_23875CE70();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
  sub_2384B6248(&qword_27DF0B740, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v21 = v40;
  v22 = v34;
  v23 = v38;
  sub_23875DB00();
  (*(v37 + 8))(v4, v23);
  (*(v33 + 8))(v8, v22);
  v24 = v17 + *(v36 + 32);
  v42 = *v24;
  v43 = *(v24 + 8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](&v41, v25);
  v26 = *(v41 + 16);

  LOBYTE(v23) = v26 == 0;
  KeyPath = swift_getKeyPath(byte_238768818);
  v28 = swift_allocObject();
  *(v28 + 16) = v23;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B720, &unk_238768800);
  v30 = (v21 + *(result + 36));
  *v30 = KeyPath;
  v30[1] = sub_238477BAC;
  v30[2] = v28;
  return result;
}

uint64_t sub_2384B33FC(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875EA50();
  v3 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v5 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v6;
  v7 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 0x6572616873;
  v8 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = v8;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x8000000238785080;
  v9 = v5;
  v10 = v7;
  v11 = v8;
  v12 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v12;
  sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v22);

  v14 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384B6248(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v15 = sub_23875E910();

  [v14 subject:v2 sendEvent:v15];

  sub_2384B3710();
  v16 = type metadata accessor for TransactionListSearchContainer(0);
  v17 = *(a1 + *(v16 + 36));
  v18 = a1 + *(v16 + 32);
  v22 = *v18;
  v23 = *(v18 + 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](&v21, v19);
  v17(v21);
}

uint64_t sub_2384B3710()
{
  v1 = v0 + *(type metadata accessor for TransactionListSearchContainer(0) + 32);
  v11 = *v1;
  v12 = *(v1 + 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](&v10, v2);
  v3 = *(v10 + 16);

  v4 = sub_23875EA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  if (v3 <= 2)
  {
    v11 = v3;
    v7 = sub_23875F600();
  }

  else
  {
    v6 = 0xE800000000000000;
    v7 = 0x656C7069746C756DLL;
  }

  *(inited + 40) = v7;
  *(inited + 48) = v6;
  v8 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844CA94(v4, 27, v8);
}

void sub_2384B3884(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TransactionListSearchContainer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  v12 = sub_23875EA80();
  v14 = v13;

  sub_2384B5E6C(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransactionListSearchContainer);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_2384B4EA4(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);

  *a2 = v12;
  a2[1] = v14;
  a2[2] = sub_2384B5A78;
  a2[3] = v16;
}

uint64_t sub_2384B3AD8(uint64_t a1)
{
  v2 = sub_23875EA50();
  v3 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v5 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v6;
  v7 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 0x6C65636E6163;
  v8 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v8;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x8000000238785080;
  v9 = v5;
  v10 = v7;
  v11 = v8;
  v12 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v12;
  sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v18);

  v14 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384B6248(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v15 = sub_23875E910();

  [v14 subject:v2 sendEvent:v15];

  sub_2384B3710();
  v16 = type metadata accessor for TransactionListSearchContainer(0);
  return (*(a1 + *(v16 + 40)))();
}

uint64_t sub_2384B3D40()
{
  type metadata accessor for TransactionSearchModel(0);
  swift_allocObject();
  return sub_23873AECC();
}

uint64_t sub_2384B3D78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2384B5F30(v1 + 40, v9);
  if (v10 == 1)
  {
    return sub_2384347C0(v9, a1);
  }

  sub_23875EFF0();
  v8 = sub_23875D730();
  sub_23875C110();

  sub_23875CDA0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t TransactionPickerView.init(confirmAction:cancelAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_2384B3D40;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B558, &qword_238768210);
  sub_23875E1A0();
  *(a5 + 24) = v11;
  *(a5 + 32) = v12;
  result = swift_getKeyPath(byte_238768218);
  *(a5 + 40) = result;
  *(a5 + 80) = 0;
  *(a5 + 88) = a1;
  *(a5 + 96) = a2;
  *(a5 + 104) = a3;
  *(a5 + 112) = a4;
  return result;
}

double TransactionPickerView.body.getter@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B560, &qword_238768240);
  return sub_2384B3FD8(v2, (a2 + *(v4 + 44)));
}

double sub_2384B3FD8@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for TransactionSearchModel(0);
  sub_2384B6248(&qword_27DF0B598, type metadata accessor for TransactionSearchModel, &unk_238783C08);
  sub_23875C490();
  v4 = a1[4];
  v33 = a1[3];
  v34 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B7A0, &qword_2387689D0);
  sub_23875E1D0();
  v26 = v31;
  v5 = a1[12];
  v27 = v30;
  v28 = a1[11];
  v6 = a1[14];
  v29 = a1[13];
  KeyPath = swift_getKeyPath("X#{E");
  v8 = type metadata accessor for TransactionListSearchContainer(0);
  *(a2 + v8[6]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v9 = sub_23854B370(MEMORY[0x277D84F90]);

  *a2 = sub_23875C7A0();
  a2[1] = v10;
  v11 = v8[5];
  *(a2 + v11) = swift_getKeyPath("0#{E");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + v8[7];
  v12[8] = 0;
  v13 = a2 + v8[8];
  *v13 = v27;
  *(v13 + 8) = v26;
  v14 = (a2 + v8[9]);
  *v14 = v28;
  v14[1] = v5;
  v15 = (a2 + v8[10]);
  *v15 = v29;
  v15[1] = v6;
  v16 = a2 + v8[11];
  LOBYTE(v33) = 0;
  sub_23875E1A0();
  v17 = v31;
  *v16 = v30;
  *(v16 + 1) = v17;
  sub_23875A230();
  sub_23875A200();
  sub_23875E500();
  sub_238449184(0, &qword_27DF0B0A0, 0x277CCABB0);
  sub_23875C4F0();
  sub_238759780();
  sub_2384AD744();
  sub_23875E500();
  sub_23875C4F0();
  v18 = (a2 + v8[14]);
  v33 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5C0, &unk_2387683E0);
  sub_23875E1A0();
  v19 = v31;
  *v18 = v30;
  v18[1] = v19;
  v20 = (a2 + v8[15]);
  v33 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5D0, &qword_23877B640);
  sub_23875E1A0();
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  sub_2384B3D78(&v30);
  __swift_project_boxed_opaque_existential_1(&v30, v32);
  v23 = sub_238758A10();
  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B7A8, &qword_238768A38) + 36));
  *v24 = v22;
  v24[1] = v23;
  __swift_destroy_boxed_opaque_existential_1(&v30);

  return result;
}

double sub_2384B43E0@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B560, &qword_238768240);
  return sub_2384B3FD8(v2, (a2 + *(v4 + 44)));
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

uint64_t sub_2384B4474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2384B44BC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t type metadata accessor for TransactionListSearchContainer(uint64_t a1)
{
  result = qword_27DF0B580;
  if (!qword_27DF0B580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384B459C(uint64_t a1)
{
  sub_2384B4864(319);
  if (v1 <= 0x3F)
  {
    sub_2384B48F8(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2384B48F8(319, &qword_2814F09B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2384B495C(319, &qword_27DF0B5A0, &qword_2814F0888, 0x277CBE440, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2384B4A14(319, &qword_27DF0B5A8, &qword_27DF0B558, &qword_238768210, MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            sub_23846D0DC();
            if (v6 <= 0x3F)
            {
              sub_2384B49C4();
              if (v7 <= 0x3F)
              {
                sub_2384B495C(319, &qword_27DF0B5B0, &qword_27DF0B0A0, 0x277CCABB0, MEMORY[0x277CDD7C8]);
                if (v8 <= 0x3F)
                {
                  sub_2384B48F8(319, &qword_27DF09E18, MEMORY[0x277CC7A70], MEMORY[0x277CDD7C8]);
                  if (v9 <= 0x3F)
                  {
                    sub_2384B4A14(319, &qword_27DF0B5B8, &qword_27DF0B5C0, &unk_2387683E0, MEMORY[0x277CE10B8]);
                    if (v10 <= 0x3F)
                    {
                      sub_2384B4A14(319, &qword_27DF0B5C8, &qword_27DF0B5D0, &qword_23877B640, MEMORY[0x277CE10B8]);
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
      }
    }
  }
}

void sub_2384B4864(uint64_t a1)
{
  if (!qword_27DF0B590)
  {
    type metadata accessor for TransactionSearchModel(255);
    sub_2384B6248(&qword_27DF0B598, type metadata accessor for TransactionSearchModel, &unk_238783C08);
    v1 = sub_23875C7D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0B590);
    }
  }
}

void sub_2384B48F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2384B495C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_238449184(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2384B49C4()
{
  if (!qword_27DF0A0B0)
  {
    v0 = sub_23875E1E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0A0B0);
    }
  }
}

void sub_2384B4A14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_2384B4A78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2384B4AC0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2384B4B74()
{
  result = qword_27DF0B640;
  if (!qword_27DF0B640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B638, &qword_238768610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B648, &qword_238768618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B650, &qword_238768620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B658, &qword_238768628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B660, &unk_238768630);
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A2F0, &unk_23876BB30);
    sub_2384B4DF0(v1, v2, v3);
    sub_23843A3E8(&qword_27DF0B670, &qword_27DF0B660, &unk_238768630, MEMORY[0x277D83980]);
    sub_23843A3E8(&qword_27DF0B678, &qword_27DF0B660, &unk_238768630, MEMORY[0x277D83990]);
    v4 = sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
    v7 = sub_2384397A8(v4, v5, v6);
    sub_2384B4E44(v7, v8, v9);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B640);
  }

  return result;
}

unint64_t sub_2384B4DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0B668;
  if (!qword_27DF0B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B668);
  }

  return result;
}

unint64_t sub_2384B4E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0B680;
  if (!qword_27DF0B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B680);
  }

  return result;
}

double sub_2384B4E98(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_2384B4EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionListSearchContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384B4F08()
{
  v2 = *(type metadata accessor for TransactionListSearchContainer(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_238449A7C;

  return sub_2384B0C58(v4, v5, v0 + v3);
}

unint64_t sub_2384B4FFC()
{
  result = qword_27DF0B690;
  if (!qword_27DF0B690)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B660, &unk_238768630);
    sub_2384B5080(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B690);
  }

  return result;
}

unint64_t sub_2384B5080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0B698;
  if (!qword_27DF0B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B698);
  }

  return result;
}

double sub_2384B50D4(uint64_t a1)
{
  v3 = *(type metadata accessor for TransactionListSearchContainer(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2384B140C(a1, v4);
}

double sub_2384B5144(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for TransactionListSearchContainer(0);

  return sub_2384B1ED4(a1, a2);
}

uint64_t sub_2384B51C4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2384397A8(a1, a2, a3);

  return sub_23875E190();
}

uint64_t sub_2384B5244(uint64_t a1)
{
  v4 = *(type metadata accessor for TransactionListSearchContainer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2384494A4;

  return sub_2384B1648(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for TransactionListSearchContainer(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C880();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C450();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_2384B4E98(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  v10 = v1[12];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B578, &unk_2387683B0);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v1[13];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384B55F8(uint64_t a1)
{
  v4 = *(type metadata accessor for TransactionListSearchContainer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_2384B10E0(a1, v6, v7, v1 + v5);
}

double sub_2384B56E8()
{
  type metadata accessor for TransactionListSearchContainer(0);

  return sub_2384B078C();
}

unint64_t sub_2384B58A4()
{
  result = qword_27DF0B728;
  if (!qword_27DF0B728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B720, &unk_238768800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B730, &unk_23876B800);
    sub_23875CE80();
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
    sub_2384B6248(&qword_27DF0B740, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B728);
  }

  return result;
}

unint64_t sub_2384B5A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0D350;
  if (!qword_27DF0D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D350);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{
  v1 = type metadata accessor for TransactionListSearchContainer(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C880();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C450();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_2384B4E98(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  v10 = v1[12];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B578, &unk_2387683B0);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v1[13];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384B5D64(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TransactionListSearchContainer(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2384B5E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384B5ED4(uint64_t a1)
{
  v2 = type metadata accessor for TransactionSearchList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2384B5F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B7B0, &unk_238768A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2384B5FA0()
{
  result = qword_27DF0B7B8;
  if (!qword_27DF0B7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B7C0, &qword_238768A50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B608, &qword_2387685E8);
    sub_23843A3E8(&qword_27DF0B610, &qword_27DF0B608, &qword_2387685E8, MEMORY[0x277CDDB50]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0B618, &qword_27DF0B5D8, &qword_2387685B8, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B7B8);
  }

  return result;
}

unint64_t sub_2384B60DC()
{
  result = qword_27DF0B7C8;
  if (!qword_27DF0B7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B7D0, &qword_238768A58);
    sub_2384B6160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B7C8);
  }

  return result;
}

unint64_t sub_2384B6160()
{
  result = qword_27DF0B7D8;
  if (!qword_27DF0B7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B770, &qword_2387688B0);
    sub_2384B6248(&qword_27DF0B7E0, type metadata accessor for GroupedTransactionsView, &unk_23876A7F8);
    sub_23843A3E8(&qword_27DF0B7E8, &qword_27DF0B778, &qword_2387688B8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B7D8);
  }

  return result;
}

uint64_t sub_2384B6248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2384B62A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v12 = v1[1];
  v13 = v3;
  sub_238477AFC(&v13, v11);
  sub_238477AFC(&v12, v11);
  v4 = sub_23875E030();
  v5 = *(v1 + 4);
  sub_2384B6AB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2387632F0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B810, &qword_238768AC8);
  *(v6 + 64) = sub_23843A3E8(&qword_27DF0B818, &qword_27DF0B810, &qword_238768AC8, MEMORY[0x277CC9C50]);
  *(v6 + 32) = v5;

  v7 = sub_23875EF80();
  *(a1 + 56) = 0xD000000000000010;
  *(a1 + 64) = 0x8000000238788370;
  v8 = v12;
  v9 = v13;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0xD000000000000010;
  *(a1 + 48) = 0x8000000238788350;
  *a1 = v9;
  *(a1 + 16) = v8;
  result = swift_allocObject();
  *(result + 16) = v7;
  *(a1 + 72) = &unk_2387654B0;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2384B6440(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2384B649C(a1, a2, a3);
  v5 = *(v3 + 8);

  return v5(v4);
}

uint64_t sub_2384B649C(void *a1, uint64_t a2, uint64_t a3)
{
  v67 = a2;
  v68 = a1;
  v65 = sub_23875BF90();
  v4 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v6 = sub_2384521E4(a3);
    if (v6)
    {
      v7 = v6;
      v8 = v67;
      result = sub_23875EB40();
      if (result >= 2)
      {
        v10 = *(v7 + 16);
        v11 = MEMORY[0x277D84F90];
        if (v10)
        {
          v12 = 0;
          v62 = (v4 + 8);
          v63 = v7;
          v13 = v7 + 48;
          v60 = v10;
          v57 = v10 - 1;
          v58 = v7 + 48;
          do
          {
            v59 = v11;
            v14 = (v13 + 24 * v12);
            v15 = v12;
            while (1)
            {
              if (v15 >= *(v7 + 16))
              {
                __break(1u);
                return result;
              }

              v16 = *(v14 - 2);
              v17 = *(v14 - 1);
              v18 = *v14;
              v66 = v15 + 1;
              v61 = v16;
              v71 = v16;
              v72 = v17;

              v19 = v64;
              sub_23875C080();
              v69 = &unk_284B24E68;
              v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B7F0, &unk_238771D20);
              sub_2384B6A0C(v20, v21, v22);
              sub_23843A3E8(&qword_27DF0B800, &qword_27DF0B7F0, &unk_238771D20, MEMORY[0x277D83988]);
              sub_2384B6A60();
              v23 = v65;
              sub_23875EF30();
              (*v62)(v19, v23);
              v24 = sub_23875EAE0();
              v26 = v25;

              *&v73 = v24;
              *(&v73 + 1) = v26;
              v71 = v68;
              v72 = v67;
              sub_2384397A8(v27, v28, v29);
              v69 = sub_23875F240();
              v70 = v30;
              v31 = sub_23875F280();

              if (v31)
              {
                break;
              }

              v14 += 3;
              v8 = v67;
              v15 = v66;
              v7 = v63;
              if (v60 == v66)
              {
                v11 = v59;
                goto LABEL_16;
              }
            }

            v32 = v61;
            v12 = v66;
            v11 = v59;
            result = swift_isUniquelyReferenced_nonNull_native();
            v74 = v11;
            if ((result & 1) == 0)
            {
              result = sub_2385FE9A0(0, v11[2] + 1, 1);
              v11 = v74;
            }

            v34 = v11[2];
            v33 = v11[3];
            if (v34 >= v33 >> 1)
            {
              result = sub_2385FE9A0((v33 > 1), v34 + 1, 1);
              v11 = v74;
            }

            v11[2] = v34 + 1;
            v35 = &v11[3 * v34];
            v35[4] = v32;
            v35[5] = v17;
            v35[6] = v18;
            v13 = v58;
            v8 = v67;
            v7 = v63;
          }

          while (v57 != v15);
        }

LABEL_16:

        v36 = v11[2];
        if (v36)
        {
          *&v73 = MEMORY[0x277D84F90];
          sub_2385FE980(0, v36, 0);
          v37 = v73;
          v59 = v11;
          v38 = v11 + 6;
          do
          {
            v40 = *(v38 - 2);
            v39 = *(v38 - 1);
            v41 = *v38;
            *&v73 = v37;
            v43 = v37[2];
            v42 = v37[3];

            if (v43 >= v42 >> 1)
            {
              sub_2385FE980((v42 > 1), v43 + 1, 1);
              v37 = v73;
            }

            v37[2] = v43 + 1;
            v44 = &v37[5 * v43];
            v44[4] = v68;
            v44[5] = v8;
            v44[6] = v40;
            v44[7] = v39;
            v44[8] = v41;
            v38 += 3;
            --v36;
          }

          while (v36);

          v45 = v37[2];
          if (v45)
          {
            goto LABEL_22;
          }
        }

        else
        {

          v37 = MEMORY[0x277D84F90];
          v45 = *(MEMORY[0x277D84F90] + 16);
          if (v45)
          {
LABEL_22:
            v71 = MEMORY[0x277D84F90];
            sub_2385FE78C(0, v45, 0);
            v68 = v37;
            v46 = v37 + 8;
            v47 = v71;
            do
            {
              v48 = *(v46 - 4);
              v49 = *(v46 - 3);
              v50 = *(v46 - 2);
              v51 = *(v46 - 1);
              v52 = *v46;
              v53 = swift_allocObject();
              v53[2] = v48;
              v53[3] = v49;
              v53[4] = v50;
              v53[5] = v51;
              v53[6] = v52;
              v71 = v47;
              v54 = v47[2];
              v55 = v47[3];

              if (v54 >= v55 >> 1)
              {
                sub_2385FE78C((v55 > 1), v54 + 1, 1);
                v47 = v71;
              }

              v47[2] = v54 + 1;
              v56 = &v47[6 * v54];
              v56[4] = v53;
              *(v56 + 5) = v73;
              v56[7] = &type metadata for InstitutionNameTokenProvider;
              v56[8] = &off_284B279D8;
              *(v56 + 72) = 2;
              v46 += 5;
              --v45;
            }

            while (v45);

            return v47;
          }
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2384B6A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0B7F8;
  if (!qword_27DF0B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B7F8);
  }

  return result;
}

unint64_t sub_2384B6A60()
{
  result = qword_27DF0B808;
  if (!qword_27DF0B808)
  {
    sub_23875BF90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B808);
  }

  return result;
}

unint64_t sub_2384B6AB8()
{
  result = qword_27DF130B0;
  if (!qword_27DF130B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF130B0);
  }

  return result;
}

uint64_t type metadata accessor for TransactionView(uint64_t a1)
{
  result = qword_27DF0B838;
  if (!qword_27DF0B838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384B6B78(uint64_t a1)
{
  sub_2384B6CE8(319, &qword_27DF0B5A0, sub_2384B6C9C);
  if (v1 <= 0x3F)
  {
    sub_2384B6CE8(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_238758F50();
      if (v3 <= 0x3F)
      {
        sub_238758680();
        if (v4 <= 0x3F)
        {
          sub_23846D0DC();
          if (v5 <= 0x3F)
          {
            sub_23875C880();
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

unint64_t sub_2384B6C9C()
{
  result = qword_2814F0888;
  if (!qword_2814F0888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814F0888);
  }

  return result;
}

void sub_2384B6CE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875C470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2384B6D58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = type metadata accessor for TransactionView(0);
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = v4;
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23875D590();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B848, &qword_238768B38);
  MEMORY[0x28223BE20](v7);
  v9 = (&v27 - v8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B850, &qword_238768B40);
  MEMORY[0x28223BE20](v28);
  v11 = &v27 - v10;
  v12 = sub_23875C880();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2384D5138(v15);
  sub_2384B9D08(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v16 = sub_23875E9C0();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v34 = sub_23875CE60();
    v35 = 0;
    v36 = 1;
    sub_2384B9CB4(v34, v17, v18);
  }

  else
  {
    v34 = sub_23875D030();
    v35 = 0;
    v36 = 1;
    sub_2384B9960(v34, v19, v20);
  }

  *v9 = sub_23875E520();
  v21 = *(v7 + 44);

  sub_2384B7194(v2, v9 + v21);
  sub_23875D580();
  sub_2384B99B4();
  sub_23875DD60();
  (*(v27 + 8))(v6, v29);
  sub_238439884(v9, &qword_27DF0B848, &qword_238768B38);
  v11[*(v28 + 36)] = 0;
  v22 = v2;
  v23 = v32;
  sub_2384B9A98(v22, v32);
  v24 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v25 = swift_allocObject();
  sub_2384B9AFC(v23, v25 + v24);
  sub_2384B9BC0();
  sub_23875DBC0();

  return sub_238402B74(v11);
}

double sub_2384B7194@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B898, &qword_238768B58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8A0, &qword_238768B60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v15 = sub_23875CE60();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8A8, &qword_238768B68);
  sub_2384B7448(&v15[*(v16 + 44)]);
  *v9 = sub_23875D030();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8B0, &qword_238768B70);
  sub_2384B8148(a1, &v9[*(v17 + 44)]);
  sub_23843981C(v15, v12, &qword_27DF0B8A0, &qword_238768B60);
  sub_23843981C(v9, v6, &qword_27DF0B898, &qword_238768B58);
  sub_23843981C(v12, a2, &qword_27DF0B8A0, &qword_238768B60);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8B8, &qword_238768B78);
  sub_23843981C(v6, a2 + *(v18 + 48), &qword_27DF0B898, &qword_238768B58);
  sub_238439884(v9, &qword_27DF0B898, &qword_238768B58);
  sub_238439884(v15, &qword_27DF0B8A0, &qword_238768B60);
  sub_238439884(v6, &qword_27DF0B898, &qword_238768B58);
  sub_238439884(v12, &qword_27DF0B8A0, &qword_238768B60);

  return result;
}

void sub_2384B7448(uint64_t a2@<X8>)
{
  v56 = a2;
  v2 = sub_23875D990();
  v53 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875C880();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8E8, &qword_238768C38);
  MEMORY[0x28223BE20](v9);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  sub_23875ED50();
  v55 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384B7B10(v13);
  v14 = sub_23875D7C0();
  sub_23875C3D0();
  v15 = &v13[*(v9 + 36)];
  *v15 = v14;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  sub_2384B7E64(&v66);
  v59 = v66;
  v58 = v67;
  v57 = v68;
  v60 = sub_23875D7C0();
  sub_23875C3D0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  type metadata accessor for TransactionView(0);
  sub_2384D5138(v8);
  sub_2384B9D08(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v28 = sub_23875E990();
  (*(v6 + 8))(v8, v5);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (v28)
  {
    v66 = sub_2384B8FDC();
    v67 = v34;
    sub_2384397A8(v66, v34, v35);
    v36 = sub_23875DAA0();
    v38 = v37;
    v40 = v39;
    v41 = v53;
    (*(v53 + 104))(v4, *MEMORY[0x277CE0A68], v2);
    MEMORY[0x23EE62380](0x502D687361434653, 0xEC0000006E69616CLL, v4, 17.0);
    (*(v41 + 8))(v4, v2);
    v30 = sub_23875DA60();
    v31 = v42;
    v44 = v43;
    v33 = v45;

    sub_2384397FC(v36, v38, v40 & 1);

    v32 = v44 & 1;
    sub_23843980C(v30, v31, v44 & 1);

    sub_2384397FC(v30, v31, v44 & 1);

    sub_23843980C(v30, v31, v44 & 1);

    v29 = 1;
  }

  v46 = v54;
  sub_23843981C(v13, v54, &qword_27DF0B8E8, &qword_238768C38);
  v47 = v56;
  sub_23843981C(v46, v56, &qword_27DF0B8E8, &qword_238768C38);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8F0, &qword_238768C40);
  v49 = v47 + *(v48 + 48);
  *&v61 = v59;
  *(&v61 + 1) = v58;
  LOBYTE(v62) = v57;
  *(&v62 + 1) = v78[0];
  DWORD1(v62) = *(v78 + 3);
  BYTE8(v62) = v60;
  HIDWORD(v62) = *&v77[3];
  *(&v62 + 9) = *v77;
  *&v63 = v21;
  *(&v63 + 1) = v23;
  *&v64 = v25;
  *(&v64 + 1) = v27;
  v65 = 0;
  *(v49 + 64) = 0;
  v50 = v62;
  *v49 = v61;
  *(v49 + 16) = v50;
  v51 = v64;
  *(v49 + 32) = v63;
  *(v49 + 48) = v51;
  v52 = (v47 + *(v48 + 64));
  sub_23843981C(&v61, &v66, &qword_27DF0B8F8, &qword_238768C48);
  sub_2384B9D50(0, v29, v30, v31, v32, v33);
  sub_2384B9D9C(0, v29, v30, v31, v32, v33);
  *v52 = 0;
  v52[1] = v29;
  v52[2] = v30;
  v52[3] = v31;
  v52[4] = v32;
  v52[5] = v33;
  sub_238439884(v13, &qword_27DF0B8E8, &qword_238768C38);
  sub_2384B9D9C(0, v29, v30, v31, v32, v33);
  v66 = v59;
  v67 = v58;
  v68 = v57;
  *v69 = v78[0];
  *&v69[3] = *(v78 + 3);
  v70 = v60;
  *v71 = *v77;
  *&v71[3] = *&v77[3];
  v72 = v21;
  v73 = v23;
  v74 = v25;
  v75 = v27;
  v76 = 0;
  sub_238439884(&v66, &qword_27DF0B8F8, &qword_238768C48);
  sub_238439884(v46, &qword_27DF0B8E8, &qword_238768C38);
}

uint64_t sub_2384B7B10@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B900, &qword_238768C50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v30 - v4;
  v6 = *(v1 + *(type metadata accessor for TransactionView(0) + 32));
  v7 = sub_23875E0D0();
  if (v6 == 1)
  {
    v8 = sub_23875DFC0();
    v31 = v7;
    v32 = v8;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v9 = qword_2814F1B90;
  }

  else
  {
    v10 = sub_23875E080();
    v31 = v7;
    v32 = v10;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v9 = qword_2814F1B90;
  }

  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = [v9 localizedStringForKey:v11 value:v12 table:v13];

  v15 = sub_23875EA80();
  v17 = v16;

  v30[2] = v15;
  v30[3] = v17;
  sub_2384397A8(v18, v19, v20);
  v21 = sub_23875DAA0();
  v23 = v22;
  LOBYTE(v14) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B908, &qword_238773820);
  sub_2384B9DE8();
  sub_23875DBE0();
  sub_2384397FC(v21, v23, v14 & 1);

  v25 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B918, &qword_238768C58) + 36));
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B920, &qword_238768C60) + 28);
  v27 = *MEMORY[0x277CE1058];
  v28 = sub_23875E130();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  *v25 = swift_getKeyPath("p!{E");
  return sub_2384396E4(v5, a1, &qword_27DF0B900, &qword_238768C50);
}

uint64_t sub_2384B7E64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238758F50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for TransactionView(0);
  v14 = *(v7 + 16);
  v14(v12, v1 + *(v13 + 24), v6);
  v15 = *v1;
  if (*(v1 + 8) == 1)
  {
    v16 = v15;
  }

  else
  {

    sub_23875EFF0();
    v17 = sub_23875D730();
    v23 = v9;
    v18 = a1;
    v19 = v17;
    sub_23875C110();

    a1 = v18;
    v9 = v23;
    sub_23875CDA0();
    swift_getAtKeyPath();
    v20 = sub_2384B4E98(v15, 0);
    (*(v24 + 8))(v5, v25, v20);
    v16 = v26;
  }

  sub_2387588A0();
  v14(v9, v12, v6);
  type metadata accessor for TransactionIconImage.Loader(0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  sub_23875BEC0();
  (*(v7 + 8))(v12, v6);
  *(v21 + 24) = vdupq_n_s64(0x4045000000000000uLL);
  result = (*(v7 + 32))(v21 + OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader_transaction, v9, v6);
  *(v21 + OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader_context) = v16;
  *a1 = v21;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

double sub_2384B8148@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v69 = sub_23875BC40();
  v61 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v66 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8C0, &qword_238768B80);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v60 - v9;
  sub_23875ED50();
  v70 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_23875CE40();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8C8, &qword_238768B88);
  sub_2384B86D8(&v10[*(v11 + 44)]);
  v73 = sub_2384B932C();
  v74 = v12;
  sub_2384397A8(v73, v12, v13);
  v14 = sub_23875DAA0();
  v68 = v10;
  v16 = v15;
  v60 = a1;
  v18 = v17;
  sub_23875D7F0();
  v19 = sub_23875DA60();
  v21 = v20;
  v23 = v22;

  sub_2384397FC(v14, v16, v18 & 1);

  LODWORD(v73) = sub_23875D440();
  v24 = sub_23875DA20();
  v63 = v25;
  v64 = v24;
  v62 = v26;
  v65 = v27;
  sub_2384397FC(v19, v21, v23 & 1);

  if (qword_27DF08CD0 != -1)
  {
    swift_once();
  }

  v28 = sub_238759140();
  __swift_project_value_buffer(v28, qword_27DF0B820);
  type metadata accessor for TransactionView(0);
  v29 = v66;
  sub_238758E80();
  v30 = v67;
  sub_23875BBF0();
  v31 = sub_238759130();
  v33 = v32;
  v34 = *(v61 + 8);
  v35 = v30;
  v36 = v69;
  v34(v35, v69);
  v34(v29, v36);
  v73 = v31;
  v74 = v33;
  v37 = sub_23875DAA0();
  v39 = v38;
  LOBYTE(v29) = v40;
  sub_23875D7F0();
  v41 = sub_23875DA60();
  v43 = v42;
  LOBYTE(v34) = v44;

  sub_2384397FC(v37, v39, v29 & 1);

  LODWORD(v73) = sub_23875D440();
  v45 = sub_23875DA20();
  v47 = v46;
  LODWORD(v69) = v48;
  v50 = v49;
  sub_2384397FC(v41, v43, v34 & 1);

  v51 = v68;
  v52 = v72;
  sub_23843981C(v68, v72, &qword_27DF0B8C0, &qword_238768B80);
  LOBYTE(v34) = v62 & 1;
  LOBYTE(v73) = v62 & 1;
  v53 = v71;
  sub_23843981C(v52, v71, &qword_27DF0B8C0, &qword_238768B80);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8D0, &qword_238768B90);
  v55 = v53 + *(v54 + 48);
  v57 = v63;
  v56 = v64;
  *v55 = v64;
  *(v55 + 8) = v57;
  *(v55 + 16) = v34;
  *(v55 + 24) = v65;
  v58 = v53 + *(v54 + 64);
  *v58 = v45;
  *(v58 + 8) = v47;
  LOBYTE(v53) = v69 & 1;
  *(v58 + 16) = v69 & 1;
  *(v58 + 24) = v50;
  sub_23843980C(v56, v57, v34);

  sub_23843980C(v45, v47, v53);

  sub_238439884(v51, &qword_27DF0B8C0, &qword_238768B80);
  sub_2384397FC(v45, v47, v53);

  sub_2384397FC(v56, v57, v73);

  sub_238439884(v52, &qword_27DF0B8C0, &qword_238768B80);

  return result;
}

double sub_2384B86D8@<D0>(uint64_t a2@<X8>)
{
  v40 = a2;
  v2 = sub_23875D990();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875C880();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8D8, &qword_238768B98);
  MEMORY[0x28223BE20](v9 - 8);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  sub_23875ED50();
  v38 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384B8BB4(v13);
  type metadata accessor for TransactionView(0);
  sub_2384D5138(v8);
  sub_2384B9D08(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v14 = sub_23875E9C0();
  (*(v6 + 8))(v8, v5);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v14)
  {
    v41 = sub_2384B8FDC();
    v42 = v20;
    sub_2384397A8(v41, v20, v21);
    v22 = sub_23875DAA0();
    v24 = v23;
    v26 = v25;
    v27 = v37;
    (*(v3 + 104))(v37, *MEMORY[0x277CE0A68], v2);
    MEMORY[0x23EE62380](0x502D687361434653, 0xEC0000006E69616CLL, v27, 17.0);
    (*(v3 + 8))(v27, v2);
    v16 = sub_23875DA60();
    v17 = v28;
    v30 = v29;
    v19 = v31;

    sub_2384397FC(v22, v24, v26 & 1);

    v18 = v30 & 1;
    sub_23843980C(v16, v17, v30 & 1);

    sub_2384397FC(v16, v17, v30 & 1);

    sub_23843980C(v16, v17, v30 & 1);

    v15 = 1;
  }

  v32 = v39;
  sub_23843981C(v13, v39, &qword_27DF0B8D8, &qword_238768B98);
  v33 = v40;
  sub_23843981C(v32, v40, &qword_27DF0B8D8, &qword_238768B98);
  v34 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8E0, &qword_238768BA0) + 48));
  sub_2384B9D50(0, v15, v16, v17, v18, v19);
  sub_2384B9D9C(0, v15, v16, v17, v18, v19);
  *v34 = 0;
  v34[1] = v15;
  v34[2] = v16;
  v34[3] = v17;
  v34[4] = v18;
  v34[5] = v19;
  sub_238439884(v13, &qword_27DF0B8D8, &qword_238768B98);
  sub_2384B9D9C(0, v15, v16, v17, v18, v19);
  sub_238439884(v32, &qword_27DF0B8D8, &qword_238768B98);

  return result;
}

uint64_t sub_2384B8BB4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_23875C880();
  v2 = *(v1 - 8);
  v38 = v1;
  v39 = v2;
  MEMORY[0x28223BE20](v1);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0) - 8;
  MEMORY[0x28223BE20](v37);
  v5 = &v34 - v4;
  type metadata accessor for TransactionView(0);
  v41 = sub_238758EB0();
  v42 = v6;
  sub_2384397A8(v41, v6, v7);
  v8 = sub_23875DAA0();
  v10 = v9;
  v12 = v11;
  v13 = sub_23875DA50();
  v15 = v14;
  v17 = v16;
  sub_2384397FC(v8, v10, v12 & 1);

  sub_23875D820();
  v18 = sub_23875DA60();
  v20 = v19;
  LOBYTE(v8) = v21;
  v35 = v22;

  sub_2384397FC(v13, v15, v17 & 1);

  v23 = v36;
  sub_2384D5138(v36);
  sub_2384B9D08(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v24 = v38;
  LOBYTE(v10) = sub_23875E9C0();
  (*(v39 + 8))(v23, v24);
  KeyPath = swift_getKeyPath(byte_238768BA8);
  v26 = &v5[*(v37 + 44)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0) + 28);
  v28 = *MEMORY[0x277CE0B28];
  v29 = sub_23875DA00();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v26 = swift_getKeyPath(byte_238768BD8);
  *v5 = v18;
  *(v5 + 1) = v20;
  v5[16] = v8 & 1;
  *(v5 + 3) = v35;
  *(v5 + 4) = KeyPath;
  *(v5 + 5) = v10 & 1;
  v5[48] = (v10 & 1) == 0;
  v30 = swift_getKeyPath(byte_238768C08);
  v31 = v40;
  sub_2384396E4(v5, v40, &qword_27DF0A028, &qword_238764FC0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8D8, &qword_238768B98);
  v33 = v31 + *(result + 36);
  *v33 = v30;
  *(v33 + 8) = 1;
  return result;
}

double sub_2384B8F1C(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for TransactionView(0);
  (*(a1 + *(v2 + 36)))((*(a1 + *(v2 + 32)) & 1) == 0);

  return result;
}

uint64_t sub_2384B8FDC()
{
  v0 = sub_23875BD20();
  v20 = *(v0 - 8);
  v21 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_238758090();
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2387591B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23875B7C0();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TransactionView(0);
  sub_238758EC0();
  v13 = (*(v7 + 88))(v9, v6);
  if (v13 == *MEMORY[0x277CC7790])
  {
    sub_23875B7A0();
LABEL_5:
    sub_238758EA0();
    sub_23875BCC0();
    v14 = sub_238758070();
    (*(v20 + 8))(v2, v21);
    (*(v18 + 8))(v5, v19);
    (*(v10 + 8))(v12, v17);
    return v14;
  }

  if (v13 == *MEMORY[0x277CC7788])
  {
    sub_23875B790();
    goto LABEL_5;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2384B932C()
{
  v28 = sub_238757FC0();
  v0 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_238758A00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  type metadata accessor for TransactionView(0);
  sub_238758580();
  (*(v4 + 104))(v6, *MEMORY[0x277CC7158], v3);
  sub_2384B9D08(&unk_27DF0B400, MEMORY[0x277CC7180], MEMORY[0x277CC7198]);
  sub_23875EC40();
  sub_23875EC40();
  v10 = *(v4 + 8);
  v10(v6, v3);
  v10(v9, v3);
  if (v30 != v29)
  {
    return sub_2387585B0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_238763B60;
  v12 = sub_2387585B0();
  v14 = v13;
  v15 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v17 = sub_238448C58(v12, v13, v16);
  *(v11 + 64) = v17;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_2387585C0();
  v18 = sub_238757FB0();
  v20 = v19;
  (*(v0 + 8))(v2, v28);
  *(v11 + 96) = v15;
  *(v11 + 104) = v17;
  *(v11 + 72) = v18;
  *(v11 + 80) = v20;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v21 = qword_2814F1B90;
  v22 = sub_23875EA50();
  v23 = sub_23875EA50();
  v24 = sub_23875EA50();
  v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

  sub_23875EA80();
  v26 = sub_23875EAA0();

  return v26;
}

uint64_t sub_2384B9708()
{
  v0 = sub_23875BE40();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23875BE20();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23875BD20();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2387595E0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_238759120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238759140();
  __swift_allocate_value_buffer(v8, qword_27DF0B820);
  __swift_project_value_buffer(v8, qword_27DF0B820);
  (*(v5 + 104))(v7, *MEMORY[0x277CC7748], v4);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  return sub_238759110();
}

unint64_t sub_2384B9960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0B858;
  if (!qword_27DF0B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B858);
  }

  return result;
}

unint64_t sub_2384B99B4()
{
  result = qword_27DF0B860;
  if (!qword_27DF0B860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B848, &qword_238768B38);
    sub_23843A3E8(&qword_27DF0B868, &qword_27DF0B870, &qword_238768B48, MEMORY[0x277CDF510]);
    sub_23843A3E8(&qword_27DF0B878, &qword_27DF0B880, &qword_238768B50, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B860);
  }

  return result;
}

uint64_t sub_2384B9A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384B9AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2384B9B60()
{
  v1 = *(type metadata accessor for TransactionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2384B8F1C(v2);
}

unint64_t sub_2384B9BC0()
{
  result = qword_27DF0B888;
  if (!qword_27DF0B888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B850, &qword_238768B40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B848, &qword_238768B38);
    sub_2384B99B4();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B888);
  }

  return result;
}

unint64_t sub_2384B9CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0B890;
  if (!qword_27DF0B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B890);
  }

  return result;
}

uint64_t sub_2384B9D08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2384B9D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_23843980C(a3, a4, a5 & 1);
  }

  return result;
}

void sub_2384B9D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_2384397FC(a3, a4, a5 & 1);
  }
}

unint64_t sub_2384B9DE8()
{
  result = qword_27DF0B910;
  if (!qword_27DF0B910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B908, &qword_238773820);
    sub_23843A3E8(&qword_27DF0A490, &qword_27DF0A498, &qword_23876AB20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B910);
  }

  return result;
}

uint64_t sub_2384B9EA0(uint64_t a1)
{
  v2 = sub_23875E130();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23875CA00();
}

uint64_t type metadata accessor for ClassicOrderImageView(uint64_t a1)
{
  result = qword_27DF0B930;
  if (!qword_27DF0B930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384B9FDC(uint64_t a1)
{
  type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(319);
  if (v1 <= 0x3F)
  {
    sub_2384BA16C(319, &qword_2814F09B0, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      sub_2384BA16C(319, &qword_27DF0B940, MEMORY[0x277CDFAA0]);
      if (v3 <= 0x3F)
      {
        sub_2384BA108(319);
        if (v4 <= 0x3F)
        {
          sub_2384BA16C(319, &qword_2814F09C0, MEMORY[0x277CE3AF8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2384BA108(uint64_t a1)
{
  if (!qword_27DF0B948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B950, qword_2387747F0);
    v1 = sub_23875C470();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0B948);
    }
  }
}

void sub_2384BA16C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875C470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2384BA1DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875C980();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2384BA4D8(a1);
  v8 = type metadata accessor for ClassicOrderImageView(0);
  sub_23875E4A0();
  sub_23875C5C0();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B958, &unk_238768D20) + 36));
  v10 = v32;
  *v9 = *&v31[8];
  v9[1] = v10;
  v9[2] = v33;
  v11 = *(v2 + *(v8 + 28));
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B960, &unk_238768E00) + 36));
  v13 = *(v5 + 28);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_23875CF50();
  v16 = *(*(v15 - 8) + 104);
  v16(&v12[v13], v14, v15);
  *v12 = v11;
  *(v12 + 1) = v11;
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
  v16(&v7[*(v5 + 28)], v14, v15);
  *v7 = v11;
  *(v7 + 1) = v11;
  sub_23875E000();
  v17 = sub_23875E060();

  sub_23875C4C0();
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B968, &unk_238768E10) + 36);
  sub_23846E86C(v7, v18);
  v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A440, &unk_238768D30) + 36);
  v20 = v35;
  *v19 = v34;
  *(v19 + 16) = v20;
  *(v19 + 32) = v36;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A448, &qword_2387662E0);
  *(v18 + *(v21 + 52)) = v17;
  *(v18 + *(v21 + 56)) = 256;
  v22 = sub_23875E4A0();
  v24 = v23;
  sub_2384BB7CC(v7, MEMORY[0x277CDFC08]);
  v25 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A450, &unk_238768D40) + 36));
  *v25 = v22;
  v25[1] = v24;
  v26 = sub_23875E4A0();
  v28 = v27;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A430, &unk_238768E20);
  v30 = (v18 + *(result + 36));
  *v30 = v26;
  v30[1] = v28;
  return result;
}

double sub_2384BA4D8@<D0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B970, &unk_238768D50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_23875E0E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B978, &unk_238780610);
  MEMORY[0x28223BE20](v26);
  v9 = &v22 - v8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B980, &unk_238768D60);
  MEMORY[0x28223BE20](v23);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B988, &unk_238768E30);
  MEMORY[0x28223BE20](v12 - 8);
  v25 = &v22 - v13;
  sub_23875ED50();
  v24 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_2384BAA08();
  if (v14)
  {
    v15 = v14;
    sub_23875E0C0();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    sub_23875E150();

    (*(v5 + 8))(v7, v4);
    sub_23875E7B0();
    v16 = sub_23875E7C0();
    (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
    sub_23875E140();

    sub_238439884(v3, &qword_27DF0B970, &unk_238768D50);
    v17 = &v9[*(v26 + 36)];
    *v17 = 0;
    *(v17 + 4) = 1;
    sub_2384030AC(v9, v11);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B990, &unk_238768D70);
    sub_2384BB728();
    sub_23843A3E8(&qword_27DF0B9A0, &qword_27DF0B990, &unk_238768D70, MEMORY[0x277CE1198]);
    v18 = v25;
    sub_23875D1B0();

    sub_23840311C(v9);
  }

  else
  {
    v19 = sub_23875D040();
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v20 = sub_23875E0D0();

    *v11 = v19;
    *(v11 + 1) = 0;
    v11[16] = 1;
    *(v11 + 3) = v20;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B990, &unk_238768D70);
    sub_2384BB728();
    sub_23843A3E8(&qword_27DF0B9A0, &qword_27DF0B990, &unk_238768D70, MEMORY[0x277CE1198]);
    v18 = v25;
    sub_23875D1B0();
  }

  sub_23840303C(v18, v27);

  return result;
}

id sub_2384BAA08()
{
  v78 = sub_23875C1E0();
  v77[1] = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77[0] = v77 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_23875C8A0();
  v90 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v89 = v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2387589C0();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v84 = v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v85 = v77 - v5;
  v80 = sub_238758970();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v93 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2387589A0();
  MEMORY[0x28223BE20](v7 - 8);
  v92 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2387589D0();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for OrderImageModel(0);
  MEMORY[0x28223BE20](v98);
  v99 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875C450();
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x28223BE20](v11);
  v95 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875E7A0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v77 - v18;
  v20 = sub_238758960();
  v100 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v91 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v94 = v77 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v77 - v25;
  v27 = type metadata accessor for ClassicOrderImageView(0);
  v28 = v0;
  sub_2384D5188(v19);
  sub_23875E790();
  v29 = sub_23875E780();
  v30 = *(v14 + 8);
  v30(v16, v13);
  v30(v19, v13);
  if (v29)
  {
    v31 = v100;
    (*(v100 + 104))(v26, *MEMORY[0x277CC7130], v20);
    v32 = v20;
    v33 = v26;
    v34 = v27;
  }

  else
  {
    v35 = v100;
    v32 = v20;
    v36 = v28;
    v37 = v95;
    sub_2384D4E38(v95);
    v39 = v96;
    v38 = v97;
    v40 = (*(v96 + 88))(v37, v97);
    v34 = v27;
    if (v40 == *MEMORY[0x277CDF3D0])
    {
      v31 = v35;
      v41 = v94;
      (*(v35 + 104))(v94, *MEMORY[0x277CC7120], v32);
      v33 = v26;
    }

    else
    {
      v42 = v38;
      v43 = *(v35 + 104);
      v33 = v26;
      v41 = v94;
      if (v40 == *MEMORY[0x277CDF3C0])
      {
        v43(v94, *MEMORY[0x277CC7118], v32);
      }

      else
      {
        v43(v94, *MEMORY[0x277CC7128], v32);
        (*(v39 + 8))(v37, v42);
      }

      v31 = v35;
    }

    (*(v31 + 32))(v33, v41, v32);
    v28 = v36;
  }

  v44 = sub_2387588A0();
  v45 = *(v28 + *(v34 + 24));
  v46 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  v47 = *(v28 + *(v46 + 24));
  if (*(v47 + 16))
  {
    v48 = v46;
    v96 = v32;
    v97 = v33;
    v49 = v98;
    v50 = *(v98 + 24);
    v51 = sub_23875AF90();
    v52 = v99;
    (*(*(v51 - 8) + 16))(&v99[v50], v28, v51);
    v53 = v49[9];

    sub_2384D4E38(v52 + v53);
    sub_2384D5200(v52 + v49[10]);
    *v52 = v45;
    v52[1] = v45;
    v52[2] = v47;
    *(v52 + v49[7]) = 1;
    *(v52 + v49[8]) = v44;
    sub_2384D5228(v101);
    v54 = v102;
    v55 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v56 = (*(v55 + 24))(v52, v54, v55);
    if (v56)
    {
      v57 = v56;
      __swift_destroy_boxed_opaque_existential_1(v101);
      v58 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v57 scale:0 orientation:1.0];

      sub_2384BB7CC(v52, type metadata accessor for OrderImageModel);
      (*(v100 + 8))(v97, v96);
      return v58;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v101);
      v98 = *(v28 + *(v48 + 20));
      sub_238758980();
      v60 = v100;
      (*(v100 + 16))(v91, v97, v96);
      (*(v79 + 104))(v93, *MEMORY[0x277CC7140], v80);
      v61 = v89;
      sub_2384D5200(v89);
      v62 = v87;
      v63 = (*(v90 + 88))(v61, v87);
      if (v63 == *MEMORY[0x277CDFA88])
      {
        v64 = v86;
        v65 = v84;
        v66 = v88;
        (*(v86 + 104))(v84, *MEMORY[0x277CC7148], v88);
        v67 = v99;
      }

      else
      {
        v68 = v63;
        v69 = *MEMORY[0x277CDFA90];
        v70 = v86;
        v65 = v84;
        v66 = v88;
        (*(v86 + 104))(v84, *MEMORY[0x277CC7150], v88);
        v71 = v68 == v69;
        v64 = v70;
        v67 = v99;
        if (!v71)
        {
          (*(v90 + 8))(v89, v62);
        }
      }

      (*(v64 + 32))(v85, v65, v66);
      v72 = v81;
      sub_2387589B0();
      v73 = sub_238758950();
      (*(v82 + 8))(v72, v83);
      sub_2384D5228(v101);
      v74 = v102;
      v75 = v103;
      __swift_project_boxed_opaque_existential_1(v101, v102);
      (*(v75 + 8))(v73, v67, v74, v75);
      __swift_destroy_boxed_opaque_existential_1(v101);
      v76 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v73 scale:0 orientation:1.0];

      sub_2384BB7CC(v67, type metadata accessor for OrderImageModel);
      (*(v60 + 8))(v97, v96);
      return v76;
    }
  }

  else
  {
    (*(v31 + 8))(v33, v32);
    return 0;
  }
}

unint64_t sub_2384BB728()
{
  result = qword_27DF0B998;
  if (!qword_27DF0B998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B978, &unk_238780610);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B998);
  }

  return result;
}

uint64_t sub_2384BB7CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2384BB82C()
{
  result = qword_27DF0B9A8;
  if (!qword_27DF0B9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B968, &unk_238768E10);
    sub_2384BB8E4();
    sub_23843A3E8(&qword_27DF0A4A0, &qword_27DF0A430, &unk_238768E20, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B9A8);
  }

  return result;
}

unint64_t sub_2384BB8E4()
{
  result = qword_27DF0B9B0;
  if (!qword_27DF0B9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B960, &unk_238768E00);
    sub_2384BB99C();
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B9B0);
  }

  return result;
}

unint64_t sub_2384BB99C()
{
  result = qword_27DF0B9B8;
  if (!qword_27DF0B9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B958, &unk_238768D20);
    sub_2384BBA28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B9B8);
  }

  return result;
}

unint64_t sub_2384BBA28()
{
  result = qword_27DF0B9C0;
  if (!qword_27DF0B9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B9C8, &unk_238768D80);
    sub_2384BBAAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B9C0);
  }

  return result;
}

unint64_t sub_2384BBAAC()
{
  result = qword_27DF0B9D0;
  if (!qword_27DF0B9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B988, &unk_238768E30);
    sub_2384BB728();
    sub_23843A3E8(&qword_27DF0B9A0, &qword_27DF0B990, &unk_238768D70, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B9D0);
  }

  return result;
}

uint64_t type metadata accessor for ExtractedOrderImageView(uint64_t a1)
{
  result = qword_27DF0B9D8;
  if (!qword_27DF0B9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2384BBBD8(uint64_t a1)
{
  result = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2384BBC70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875C980();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2384BBF58(v2, a1);
  v8 = type metadata accessor for ExtractedOrderImageView(0);
  sub_23875E4A0();
  sub_23875C5C0();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B958, &unk_238768D20) + 36));
  v10 = v32;
  *v9 = *&v31[8];
  v9[1] = v10;
  v9[2] = v33;
  v11 = *(v2 + *(v8 + 24));
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B960, &unk_238768E00) + 36));
  v13 = *(v5 + 28);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_23875CF50();
  v16 = *(*(v15 - 8) + 104);
  v16(&v12[v13], v14, v15);
  *v12 = v11;
  *(v12 + 1) = v11;
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
  v16(&v7[*(v5 + 28)], v14, v15);
  *v7 = v11;
  *(v7 + 1) = v11;
  sub_23875E000();
  v17 = sub_23875E060();

  sub_23875C4C0();
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B968, &unk_238768E10) + 36);
  sub_23846E86C(v7, v18);
  v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A440, &unk_238768D30) + 36);
  v20 = v35;
  *v19 = v34;
  *(v19 + 16) = v20;
  *(v19 + 32) = v36;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A448, &qword_2387662E0);
  *(v18 + *(v21 + 52)) = v17;
  *(v18 + *(v21 + 56)) = 256;
  v22 = sub_23875E4A0();
  v24 = v23;
  sub_23846E8D0(v7);
  v25 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A450, &unk_238768D40) + 36));
  *v25 = v22;
  v25[1] = v24;
  v26 = sub_23875E4A0();
  v28 = v27;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A430, &unk_238768E20);
  v30 = (v18 + *(result + 36));
  *v30 = v26;
  v30[1] = v28;
  return result;
}

double sub_2384BBF58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B980, &unk_238768D60);
  MEMORY[0x28223BE20](v35);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B970, &unk_238768D50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_23875E0E0();
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B978, &unk_238780610);
  MEMORY[0x28223BE20](v34);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B988, &unk_238768E30);
  MEMORY[0x28223BE20](v14 - 8);
  v33 = &v28 - v15;
  sub_23875ED50();
  v32 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(a1 + 72);
  if (v16 >> 60 != 15)
  {
    v30 = a2;
    v17 = *(a1 + 64);
    v18 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_23844C8EC(v17, v16);
    sub_23844C8EC(v17, v16);
    v19 = sub_23875B980();
    v20 = [v18 initWithData_];

    sub_23844C940(v17, v16);
    if (v20)
    {
      v29 = v20;
      sub_23875E0C0();
      v21 = v31;
      (*(v31 + 104))(v11, *MEMORY[0x277CE0FE0], v9);
      sub_23875E150();

      (*(v21 + 8))(v11, v9);
      sub_23875E7B0();
      v22 = sub_23875E7C0();
      (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
      sub_23875E140();

      sub_2384BC514(v8);
      v23 = &v13[*(v34 + 36)];
      *v23 = 0;
      *(v23 + 4) = 1;
      sub_2384030AC(v13, v5);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B990, &unk_238768D70);
      sub_2384BB728();
      sub_23843A3E8(&qword_27DF0B9A0, &qword_27DF0B990, &unk_238768D70, MEMORY[0x277CE1198]);
      v24 = v33;
      sub_23875D1B0();

      sub_23844C940(v17, v16);
      sub_23840311C(v13);
      a2 = v30;
      goto LABEL_10;
    }

    sub_23844C940(v17, v16);
    a2 = v30;
  }

  v25 = sub_23875D040();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = sub_23875E0D0();

  *v5 = v25;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(v5 + 3) = v26;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B990, &unk_238768D70);
  sub_2384BB728();
  sub_23843A3E8(&qword_27DF0B9A0, &qword_27DF0B990, &unk_238768D70, MEMORY[0x277CE1198]);
  v24 = v33;
  sub_23875D1B0();
LABEL_10:
  sub_23840303C(v24, a2);

  return result;
}

uint64_t sub_2384BC514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B970, &unk_238768D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2384BC57C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BA78, &qword_238768F58);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - v3;
  v5 = type metadata accessor for OrderPaymentTransactionRow.ViewModel(0);
  v7 = *(v5 + 24);
  v6 = *(v5 + 28);
  v8 = *(v2 + 56);
  v9 = sub_23875AFB0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4, v0 + v6, v9);
  v11 = sub_23875B000();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v4[v8], v0 + v7, v11);
  v13 = (*(v10 + 88))(v4, v9);
  if (v13 == *MEMORY[0x277CC8500])
  {
    v14 = *v0;
    v15 = *(v12 + 8);

    v15(&v4[v8], v11);
  }

  else if (v13 == *MEMORY[0x277CC84F8])
  {
    v16 = (*(v12 + 88))(&v4[v8], v11);
    v17 = *MEMORY[0x277CC8508];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2387632F0;
    v20 = *v0;
    v19 = v0[1];
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_238448C58(v18, v21, v22);
    *(v18 + 32) = v20;
    *(v18 + 40) = v19;
    v23 = qword_2814F0880;

    if (v16 == v17)
    {
      if (v23 != -1)
      {
        swift_once();
      }

      v24 = qword_2814F1B90;
      v25 = sub_23875EA50();
      v26 = sub_23875EA50();
      v27 = sub_23875EA50();
      v28 = [v24 localizedStringForKey:v25 value:v26 table:v27];

      sub_23875EA80();
      v14 = sub_23875EAA0();
    }

    else
    {
      if (v23 != -1)
      {
        swift_once();
      }

      v29 = qword_2814F1B90;
      v30 = sub_23875EA50();
      v31 = sub_23875EA50();
      v32 = sub_23875EA50();
      v33 = [v29 localizedStringForKey:v30 value:v31 table:v32];

      sub_23875EA80();
      v14 = sub_23875EAA0();

      (*(v12 + 8))(&v4[v8], v11);
    }
  }

  else
  {
    v14 = *v0;

    sub_238439884(v4, &qword_27DF0BA78, &qword_238768F58);
  }

  return v14;
}

uint64_t sub_2384BC9E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2387632F0;
  type metadata accessor for OrderPaymentTransactionRow.ViewModel(0);
  v1 = sub_23875AFE0();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_238448C58(v1, v2, v4);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_23875EA80();
  v10 = sub_23875EAA0();

  return v10;
}

uint64_t sub_2384BCB80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OrderPaymentTransactionRow(0);
  sub_23843981C(v1 + *(v10 + 20), v9, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C880();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t OrderPaymentTransactionRow.body.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B9E8, &unk_238768E40);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v36 = sub_23875CE60();
  LOBYTE(v37) = 0;
  sub_2384BDF0C(v1, sub_2384BD2A8, &v51);
  v46 = v55;
  v47 = v56;
  v48 = v57[0];
  v42 = v51;
  v43 = v52;
  v44 = v53;
  v45 = v54;
  v49[0] = v51;
  v49[1] = v52;
  v49[2] = v53;
  v49[3] = v54;
  v49[4] = v55;
  v49[5] = v56;
  v50 = v57[0];
  sub_23843981C(&v42, &v39, &qword_27DF0B9F0, &qword_23877EEF0);
  sub_238439884(v49, &qword_27DF0B9F0, &qword_23877EEF0);
  *&v41[55] = v45;
  *&v41[71] = v46;
  *&v41[87] = v47;
  *&v41[7] = v42;
  *&v41[23] = v43;
  v41[103] = v48;
  *&v41[39] = v44;
  v34 = v37;
  sub_2384BD53C(v1, &v39);
  sub_23875D890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B9F8, &qword_238768E50);
  sub_2384BE73C();
  v35 = v7;
  sub_23875DAF0();
  v55 = v40[3];
  v56 = v40[4];
  v57[0] = v40[5];
  *(v57 + 10) = *(&v40[5] + 10);
  v51 = v39;
  v52 = v40[0];
  v53 = v40[1];
  v54 = v40[2];
  sub_238439884(&v51, &qword_27DF0B9F8, &qword_238768E50);
  v8 = *(v1 + 24);
  if (v8)
  {
    v30 = *(v2 + 16);
    LOBYTE(v37) = 0;

    sub_23875E1A0();
    v29 = v39;
    v9 = *(&v39 + 1);
    KeyPath = swift_getKeyPath("h {E");
    v27 = v9;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v27 = 0;
    KeyPath = 0;
  }

  v11 = v31;
  v12 = v32;
  v13 = *(v32 + 16);
  v14 = v33;
  v13(v31, v35, v33);
  *(&v38[5] + 1) = *&v41[80];
  *(&v38[4] + 1) = *&v41[64];
  *(&v38[3] + 1) = *&v41[48];
  *(&v38[1] + 1) = *&v41[16];
  v37 = v36;
  LOBYTE(v38[0]) = v34;
  *(&v38[6] + 1) = *&v41[96];
  *(v38 + 1) = *v41;
  *(&v38[2] + 1) = *&v41[32];
  v15 = v38[4];
  v16 = v28;
  v28[4] = v38[3];
  v16[5] = v15;
  v16[6] = v38[5];
  *(v16 + 105) = *(&v38[5] + 9);
  v17 = v38[0];
  *v16 = v37;
  v16[1] = v17;
  v18 = v38[2];
  v16[2] = v38[1];
  v16[3] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BA30, &qword_238768E70);
  v13(v16 + *(v19 + 48), v11, v14);
  v20 = v16 + *(v19 + 64);

  sub_23843981C(&v37, &v39, &qword_27DF0BA28, &qword_238768E68);
  v22 = v29;
  v21 = v30;
  v23 = v27;
  sub_2384BE8A0(v30, v8, v29, v27, KeyPath, 0);
  sub_2384BE90C(v21, v8, v22, v23, KeyPath, 0);
  *v20 = v21;
  *(v20 + 1) = v8;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = KeyPath;
  v20[40] = 0;
  v24 = *(v12 + 8);
  v24(v35, v14);
  sub_2384BE90C(v21, v8, v22, v23, KeyPath, 0);
  v24(v11, v14);
  *(&v40[3] + 1) = *&v41[48];
  *(&v40[4] + 1) = *&v41[64];
  *(&v40[5] + 1) = *&v41[80];
  *(v40 + 1) = *v41;
  *(&v40[1] + 1) = *&v41[16];
  v39 = v36;
  LOBYTE(v40[0]) = v34;
  *(&v40[6] + 1) = *&v41[96];
  *(&v40[2] + 1) = *&v41[32];
  return sub_238439884(&v39, &qword_27DF0BA28, &qword_238768E68);
}

uint64_t sub_2384BD2A8@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_2384BC9E8();
  sub_2384397A8(v2, v3, v4);
  v5 = sub_23875DAA0();
  v7 = v6;
  v9 = v8;
  sub_23875D890();
  v10 = sub_23875D9E0();
  v33 = v11;
  v34 = v10;
  v32 = v12;
  v35 = v13;
  sub_2384397FC(v5, v7, v9 & 1);

  sub_2384BC57C();
  v14 = sub_23875DAA0();
  v16 = v15;
  v18 = v17;
  sub_23875D7F0();
  v19 = sub_23875DA60();
  v21 = v20;
  v23 = v22;

  sub_2384397FC(v14, v16, v18 & 1);

  sub_23875D440();
  v24 = sub_23875DA20();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_2384397FC(v19, v21, v23 & 1);

  *a1 = v34;
  *(a1 + 8) = v33;
  *(a1 + 16) = v32 & 1;
  *(a1 + 24) = v35;
  *(a1 + 32) = v24;
  *(a1 + 40) = v26;
  *(a1 + 48) = v28 & 1;
  *(a1 + 56) = v30;
  sub_23843980C(v34, v33, v32 & 1);

  sub_23843980C(v24, v26, v28 & 1);

  sub_2384397FC(v24, v26, v28 & 1);

  sub_2384397FC(v34, v33, v32 & 1);
}

double sub_2384BD53C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  sub_23875ED50();
  v20 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384BCB80(v9);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF9F0], v3);
  sub_23848987C();
  v10 = sub_23875E9C0();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  if (v10)
  {
    v12 = sub_23875CE50();
    LOBYTE(v23) = 0;
    sub_2384BDA20(a1, &v47);
    v33 = v49;
    v34 = v50;
    v35 = v51;
    v31 = v47;
    v32 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v38 = v47;
    v39 = v48;
    sub_23843981C(&v31, &v45, &qword_27DF0A248, &unk_238765310);
    sub_238439884(&v38, &qword_27DF0A248, &unk_238765310);
    *&v22[71] = v35;
    *&v22[55] = v34;
    *&v22[39] = v33;
    *&v22[23] = v32;
    *&v22[7] = v31;
    v45 = v12;
    LOBYTE(v46[0]) = v23;
    *(&v46[1] + 1) = *&v22[16];
    *(v46 + 1) = *v22;
    *&v46[5] = *(&v35 + 1);
    *(&v46[4] + 1) = *&v22[64];
    *(&v46[3] + 1) = *&v22[48];
    *(&v46[2] + 1) = *&v22[32];
    sub_2384BEC18(&v45);
  }

  else
  {
    v13 = sub_23875CE60();
    LOBYTE(v23) = 0;
    sub_2384BDF0C(a1, sub_2384BE0D0, &v47);
    v35 = v51;
    v36 = v52;
    v37 = v53[0];
    v31 = v47;
    v32 = v48;
    v33 = v49;
    v34 = v50;
    v38 = v47;
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53[0];
    sub_23843981C(&v31, &v45, &qword_27DF0B9F0, &qword_23877EEF0);
    sub_238439884(&v38, &qword_27DF0B9F0, &qword_23877EEF0);
    *&v30[55] = v34;
    *&v30[71] = v35;
    *&v30[87] = v36;
    v30[103] = v37;
    *&v30[7] = v31;
    *&v30[23] = v32;
    *&v30[39] = v33;
    v45 = v13;
    LOBYTE(v46[0]) = v23;
    *(&v46[2] + 1) = *&v30[32];
    *(&v46[1] + 1) = *&v30[16];
    *(v46 + 1) = *v30;
    *(&v46[6] + 1) = *&v30[96];
    *(&v46[5] + 1) = *&v30[80];
    *(&v46[4] + 1) = *&v30[64];
    *(&v46[3] + 1) = *&v30[48];
    sub_2384BEC0C(&v45);
  }

  v51 = v46[3];
  v52 = v46[4];
  v53[0] = v46[5];
  *(v53 + 10) = *(&v46[5] + 10);
  v47 = v45;
  v48 = v46[0];
  v49 = v46[1];
  v50 = v46[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A250, &qword_238768E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BA28, &qword_238768E68);
  v14 = MEMORY[0x277CE1138];
  sub_23843A3E8(&qword_27DF0BA18, &qword_27DF0A250, &qword_238768E60, MEMORY[0x277CE1138]);
  sub_23843A3E8(&qword_27DF0BA20, &qword_27DF0BA28, &qword_238768E68, v14);
  sub_23875D1B0();

  v53[0] = v29[0];
  *(v53 + 10) = *(v29 + 10);
  v47 = v23;
  v48 = v24;
  v49 = v25;
  v50 = v26;
  v15 = v28;
  v16 = v21;
  v21[4] = v27;
  v16[5] = v15;
  v16[6] = v53[0];
  *(v16 + 106) = *(v53 + 10);
  v17 = v48;
  *v16 = v47;
  v16[1] = v17;
  result = *&v49;
  v19 = v50;
  v16[2] = v49;
  v16[3] = v19;
  return result;
}

uint64_t sub_2384BDA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v3 = sub_23875BD20();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_23875AFB0();
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_23875B7C0();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  v52 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v12 = qword_2814F1B90;
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = [v12 localizedStringForKey:v13 value:v14 table:v15];

  v17 = sub_23875EA80();
  v19 = v18;

  v59 = v17;
  v60 = v19;
  sub_2384397A8(v20, v21, v22);
  v23 = sub_23875DAA0();
  v25 = v24;
  v46 = v26;
  v28 = v27;
  v29 = type metadata accessor for OrderPaymentTransactionRow.ViewModel(0);
  v30 = v54;
  v31 = v53;
  (*(v54 + 16))(v8, v55 + *(v29 + 28), v53);
  v32 = (*(v30 + 88))(v8, v31);
  if (v32 == *MEMORY[0x277CC8500])
  {
    sub_23875B7B0();
  }

  else if (v32 == *MEMORY[0x277CC84F8])
  {
    sub_23875B7A0();
  }

  else
  {
    sub_23875B7B0();
    (*(v54 + 8))(v8, v53);
  }

  v33 = v47;
  sub_23875BCC0();
  v34 = sub_238758070();
  v36 = v35;
  (*(v50 + 8))(v33, v51);
  (*(v48 + 8))(v11, v49);
  v59 = v34;
  v60 = v36;
  v37 = sub_23875DAA0();
  v39 = v38;
  v40 = v46 & 1;
  LOBYTE(v59) = v46 & 1;
  v58 = v46 & 1;
  v57 = 1;
  v42 = v41 & 1;
  v56 = v41 & 1;
  *a2 = v23;
  *(a2 + 8) = v25;
  *(a2 + 16) = v40;
  *(a2 + 24) = v28;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v37;
  *(a2 + 56) = v38;
  *(a2 + 64) = v41 & 1;
  *(a2 + 72) = v43;
  sub_23843980C(v23, v25, v40);

  sub_23843980C(v37, v39, v42);

  sub_2384397FC(v37, v39, v42);

  sub_2384397FC(v23, v25, v59);
}

double sub_2384BDF0C@<D0>(uint64_t a1@<X0>, void (*a3)(_OWORD *__return_ptr, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875D030();
  LOBYTE(v23[0]) = 0;
  a3(v19, a1);
  *&v18[55] = v20;
  *&v18[39] = v19[2];
  *&v18[23] = v19[1];
  *&v18[7] = v19[0];
  v8 = v23[0];
  *&v21 = v7;
  *(&v21 + 1) = 0x4010000000000000;
  v22[0] = v23[0];
  v9 = *v18;
  *&v22[1] = *v18;
  *&v22[64] = *(&v20 + 1);
  v10 = *&v18[48];
  *&v22[49] = *&v18[48];
  v11 = *&v18[32];
  *&v22[33] = *&v18[32];
  v12 = *&v18[16];
  *&v22[17] = *&v18[16];
  v13 = *v22;
  *a4 = v21;
  *(a4 + 16) = v13;
  v14 = *&v22[16];
  v15 = *&v22[48];
  *(a4 + 48) = *&v22[32];
  *(a4 + 64) = v15;
  *(a4 + 32) = v14;
  v25 = v9;
  v17[88] = 0;
  *(a4 + 80) = *&v22[64];
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  v23[0] = v7;
  v23[1] = 0x4010000000000000;
  v24 = v8;
  *&v28[15] = *&v18[63];
  *v28 = v10;
  v27 = v11;
  v26 = v12;
  sub_23843981C(&v21, v17, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v23, &qword_27DF0BA70, &unk_238769590);

  return result;
}

uint64_t sub_2384BE0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v51 = sub_23875BD20();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v46 = &v44[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_23875AFB0();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_23875B7C0();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  v50 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v11 = qword_2814F1B90;
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

  v16 = sub_23875EA80();
  v18 = v17;

  v57 = v16;
  v58 = v18;
  sub_2384397A8(v19, v20, v21);
  v22 = sub_23875DAA0();
  v24 = v23;
  v45 = v25;
  v27 = v26;
  v28 = type metadata accessor for OrderPaymentTransactionRow.ViewModel(0);
  v29 = v53;
  v30 = v52;
  (*(v53 + 16))(v7, v54 + *(v28 + 28), v52);
  v31 = (*(v29 + 88))(v7, v30);
  if (v31 == *MEMORY[0x277CC8500])
  {
    sub_23875B7B0();
  }

  else if (v31 == *MEMORY[0x277CC84F8])
  {
    sub_23875B7A0();
  }

  else
  {
    sub_23875B7B0();
    (*(v53 + 8))(v7, v52);
  }

  v32 = v46;
  sub_23875BCC0();
  v33 = sub_238758070();
  v35 = v34;
  (*(v49 + 8))(v32, v51);
  (*(v47 + 8))(v10, v48);
  v57 = v33;
  v58 = v35;
  v36 = sub_23875DAA0();
  v38 = v37;
  v39 = v45 & 1;
  v55 = v45 & 1;
  LOBYTE(v57) = v45 & 1;
  v41 = v40 & 1;
  v56 = v40 & 1;
  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v39;
  *(a2 + 24) = v27;
  *(a2 + 32) = v36;
  *(a2 + 40) = v37;
  *(a2 + 48) = v40 & 1;
  *(a2 + 56) = v42;
  sub_23843980C(v22, v24, v39);

  sub_23843980C(v36, v38, v41);

  sub_2384397FC(v36, v38, v41);

  sub_2384397FC(v22, v24, v55);
}

void *sub_2384BE5B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_2384BEBB8(a2, a3, a4);
  result = sub_23875CDC0();
  *a1 = v6;
  return result;
}

uint64_t _s12FinanceKitUI26OrderPaymentTransactionRowV9ViewModelV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = type metadata accessor for OrderPaymentTransactionRow.ViewModel(0);
  if ((sub_23875AFF0() & 1) == 0 || (sub_23875AFA0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v8 + 32);

  return MEMORY[0x2821174A8](a1 + v9, a2 + v9);
}

unint64_t sub_2384BE73C()
{
  result = qword_27DF0BA00;
  if (!qword_27DF0BA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B9F8, &qword_238768E50);
    sub_2384BE7C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BA00);
  }

  return result;
}

unint64_t sub_2384BE7C0()
{
  result = qword_27DF0BA08;
  if (!qword_27DF0BA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BA10, &qword_238768E58);
    v1 = MEMORY[0x277CE1138];
    sub_23843A3E8(&qword_27DF0BA18, &qword_27DF0A250, &qword_238768E60, MEMORY[0x277CE1138]);
    sub_23843A3E8(&qword_27DF0BA20, &qword_27DF0BA28, &qword_238768E68, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BA08);
  }

  return result;
}

void sub_2384BE8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a2)
  {

    sub_2384BE900(a5, a6 & 1);
  }
}

uint64_t sub_2384BE900(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

void sub_2384BE90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a2)
  {

    sub_2384348B8(a5, a6 & 1);
  }
}

void sub_2384BE9F0(uint64_t a1)
{
  type metadata accessor for OrderPaymentTransactionRow.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2384BEA74(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2384BEA74(uint64_t a1)
{
  if (!qword_2814F09A8)
  {
    sub_23875C880();
    v1 = sub_23875C470();
    if (!v2)
    {
      atomic_store(v1, &qword_2814F09A8);
    }
  }
}

void sub_2384BEAF4(uint64_t a1)
{
  sub_2384561E8();
  if (v1 <= 0x3F)
  {
    sub_23875B000();
    if (v2 <= 0x3F)
    {
      sub_23875AFB0();
      if (v3 <= 0x3F)
      {
        sub_238758090();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2384BEBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0BA68;
  if (!qword_27DF0BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BA68);
  }

  return result;
}

uint64_t type metadata accessor for OrderWidgetMoreTextView(uint64_t a1)
{
  result = qword_27DF0BA80;
  if (!qword_27DF0BA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384BEC94(uint64_t a1)
{
  sub_23875E7A0();
  if (v1 <= 0x3F)
  {
    sub_2384BEA74(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_2384BED44@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_23875C880();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v46 - v6;
  v7 = sub_2387591F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2387632F0;
  v12 = *v1;
  v13 = MEMORY[0x277D83C10];
  *(v11 + 56) = MEMORY[0x277D83B88];
  *(v11 + 64) = v13;
  *(v11 + 32) = v12;
  (*(v8 + 104))(v10, *MEMORY[0x277CC77B0], v7);
  v14 = sub_238758A50();
  v16 = v15;

  v17 = (*(v8 + 8))(v10, v7);
  *&v56 = v14;
  *(&v56 + 1) = v16;
  sub_2384397A8(v17, v18, v19);
  v20 = sub_23875DAA0();
  v51 = v21;
  v52 = v20;
  LOBYTE(v7) = v22;
  v50 = v23;
  LOBYTE(v14) = sub_23875D790();
  type metadata accessor for OrderWidgetMoreTextView(0);
  v24 = v47;
  sub_2384D5138(v47);
  v26 = v48;
  v25 = v49;
  (*(v49 + 104))(v48, *MEMORY[0x277CDFA00], v3);
  sub_23848987C();
  sub_23875E9B0();
  v27 = *(v25 + 8);
  v27(v26, v3);
  v27(v24, v3);
  sub_23875C3D0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v54 = v7 & 1;
  v53 = 0;
  sub_23875E4B0();
  sub_23875C9C0();
  *(&v55[3] + 7) = v59;
  *(&v55[4] + 7) = v60;
  *(&v55[5] + 7) = v61;
  *(&v55[6] + 7) = v62;
  *(v55 + 7) = v56;
  *(&v55[1] + 7) = v57;
  *(&v55[2] + 7) = v58;
  v36 = sub_23875D440();
  v37 = sub_23875D960();
  KeyPath = swift_getKeyPath(byte_238768FD0);
  v39 = swift_getKeyPath("x {E");
  v40 = swift_getKeyPath("P {E");
  v41 = v51;
  *a1 = v52;
  *(a1 + 8) = v41;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v50;
  *(a1 + 32) = v14;
  *(a1 + 40) = v29;
  *(a1 + 48) = v31;
  *(a1 + 56) = v33;
  *(a1 + 64) = v35;
  *(a1 + 72) = 0;
  v42 = v55[5];
  *(a1 + 137) = v55[4];
  *(a1 + 153) = v42;
  *(a1 + 169) = v55[6];
  *(a1 + 184) = *(&v55[6] + 15);
  v43 = v55[1];
  *(a1 + 73) = v55[0];
  *(a1 + 89) = v43;
  result = *&v55[2];
  v45 = v55[3];
  *(a1 + 105) = v55[2];
  *(a1 + 121) = v45;
  *(a1 + 192) = v36;
  *(a1 + 200) = KeyPath;
  *(a1 + 208) = v37;
  *(a1 + 216) = v39;
  *(a1 + 224) = 1;
  *(a1 + 232) = v40;
  *(a1 + 240) = 1;
  *(a1 + 248) = 0;
  return result;
}

unint64_t sub_2384BF1BC()
{
  result = qword_27DF0BA90;
  if (!qword_27DF0BA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BA98, &qword_238769060);
    sub_2384BF274();
    sub_23843A3E8(&qword_2814F0928, &qword_27DF09360, &unk_23876F830, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BA90);
  }

  return result;
}

unint64_t sub_2384BF274()
{
  result = qword_27DF0BAA0;
  if (!qword_27DF0BAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BAA8, &qword_238769068);
    sub_2384BF32C();
    sub_23843A3E8(&qword_27DF0BAF0, &qword_27DF0BAF8, &unk_2387690A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BAA0);
  }

  return result;
}

unint64_t sub_2384BF32C()
{
  result = qword_27DF0BAB0;
  if (!qword_27DF0BAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BAB8, &qword_238769070);
    sub_2384BF3E4();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BAB0);
  }

  return result;
}

unint64_t sub_2384BF3E4()
{
  result = qword_27DF0BAC0;
  if (!qword_27DF0BAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BAC8, &qword_238769078);
    sub_2384BF49C();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BAC0);
  }

  return result;
}

unint64_t sub_2384BF49C()
{
  result = qword_27DF0BAD0;
  if (!qword_27DF0BAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BAD8, &unk_238769080);
    sub_2384BF528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BAD0);
  }

  return result;
}

unint64_t sub_2384BF528()
{
  result = qword_27DF0BAE0;
  if (!qword_27DF0BAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BAE8, &unk_23876A630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BAE0);
  }

  return result;
}

uint64_t sub_2384BF5C8@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2384BF5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2384C0F60(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2384BF634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2384C0F60(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2384BF670@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2384BF9A0(a2);
  *a1 = result;
  return result;
}

uint64_t sub_2384BF6C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB40, &qword_238769200);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2384C0F60(v6, v7, v8);
  sub_23875F790();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2384BF844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0BB00;
  if (!qword_27DF0BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BB00);
  }

  return result;
}

unint64_t sub_2384BF89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0BB08;
  if (!qword_27DF0BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BB08);
  }

  return result;
}

unint64_t sub_2384BF8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0BB10;
  if (!qword_27DF0BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BB10);
  }

  return result;
}

unint64_t sub_2384BF94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0BB18;
  if (!qword_27DF0BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BB18);
  }

  return result;
}

uint64_t sub_2384BF9A0(uint64_t a1)
{
  v168 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB20, &unk_2387691E0);
  v150 = *(v1 - 8);
  v151 = v1;
  MEMORY[0x28223BE20](v1);
  v143 = &v134 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v135 = &v134 - v4;
  MEMORY[0x28223BE20](v5);
  v149 = &v134 - v6;
  MEMORY[0x28223BE20](v7);
  v148 = &v134 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB28, &unk_23876D610);
  v162 = *(v9 - 8);
  v163 = v9;
  MEMORY[0x28223BE20](v9);
  v155 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v147 = &v134 - v12;
  MEMORY[0x28223BE20](v13);
  v161 = &v134 - v14;
  v160 = sub_23875AF00();
  v166 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v165 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_23875AE10();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_23875ACE0();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB30, &unk_2387691F0);
  v153 = *(v18 - 8);
  v154 = v18;
  MEMORY[0x28223BE20](v18);
  v152 = &v134 - v19;
  v20 = sub_23875B120();
  v157 = *(v20 - 8);
  v158 = v20;
  MEMORY[0x28223BE20](v20);
  v156 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_238757C30();
  v164 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v144 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v136 = &v134 - v24;
  MEMORY[0x28223BE20](v25);
  v159 = &v134 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v134 - v28;
  MEMORY[0x28223BE20](v30);
  v146 = &v134 - v31;
  MEMORY[0x28223BE20](v32);
  v145 = &v134 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v134 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v134 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v134 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v134 - v45;
  v47 = sub_23875B0A0();
  v48 = *(v47 - 8);
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v134 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v48 + 16))(v51, v168, v47, v49);
  v52 = (*(v48 + 88))(v51, v47);
  if (v52 == *MEMORY[0x277CC8520])
  {
    (*(v48 + 96))(v51, v47);
    (*(v41 + 32))(v46, v51, v40);
    (*(v41 + 16))(v43, v46, v40);
    v53 = (*(v41 + 88))(v43, v40);
    if (v53 == *MEMORY[0x277CC83B8])
    {
      (*(v41 + 96))(v43, v40);
      v54 = v164;
      v55 = v167;
      (*(v164 + 32))(v39, v43, v167);
      (*(v54 + 16))(v36, v39, v55);
      v56 = (*(v54 + 88))(v36, v55);
      if (v56 == *MEMORY[0x277CC6B98] || (v57 = v56, v56 == *MEMORY[0x277CC6BA8]))
      {
        v60 = sub_23875E030();
        (*(v54 + 8))(v39, v55);
        (*(v41 + 8))(v46, v40);
      }

      else
      {
        v58 = *MEMORY[0x277CC6BA0];
        v168 = sub_23875E070();
        v59 = *(v54 + 8);
        v59(v39, v55);
        (*(v41 + 8))(v46, v40);
        if (v57 != v58)
        {
          v59(v36, v55);
        }

        return v168;
      }
    }

    else
    {
      v74 = (v41 + 8);
      if (v53 == *MEMORY[0x277CC83B0])
      {
        v75 = sub_23875E070();
      }

      else
      {
        v75 = sub_23875E080();
      }

      v60 = v75;
      v98 = *v74;
      (*v74)(v46, v40);
      v98(v43, v40);
    }

    return v60;
  }

  if (v52 == *MEMORY[0x277CC8528])
  {
    (*(v48 + 96))(v51, v47);
    v61 = v160;
    (*(v166 + 32))(v165, v51, v160);
    v62 = v161;
    sub_23875AED0();
    v64 = v162;
    v63 = v163;
    v65 = (*(v162 + 88))(v62, v163);
    if (v65 == *MEMORY[0x277CC83B8])
    {
      v66 = v155;
      (*(v64 + 16))(v155, v62, v63);
      (*(v64 + 96))(v66, v63);
      v67 = v164;
      v68 = v167;
      (*(v164 + 32))(v29, v66, v167);
      v69 = v159;
      (*(v67 + 16))(v159, v29, v68);
      v70 = (*(v67 + 88))(v69, v68);
      if (v70 != *MEMORY[0x277CC6B98])
      {
        v71 = v70;
        if (v70 != *MEMORY[0x277CC6BA8])
        {
          v72 = *MEMORY[0x277CC6BA0];
          v168 = sub_23875E070();
          v73 = *(v67 + 8);
          v73(v29, v68);
          (*(v166 + 8))(v165, v61);
          if (v71 != v72)
          {
            v73(v159, v68);
          }

          v60 = v168;
          goto LABEL_55;
        }
      }

      v60 = sub_23875E030();
      (*(v67 + 8))(v29, v68);
LABEL_54:
      (*(v166 + 8))(v165, v61);
LABEL_55:
      (*(v64 + 8))(v62, v63);
      return v60;
    }

    if (v65 == *MEMORY[0x277CC83A8])
    {
      v94 = v147;
      (*(v64 + 16))(v147, v62, v63);
      (*(v64 + 96))(v94, v63);
      v95 = sub_23875ACF0();
      v96 = *(v95 - 8);
      v97 = (*(v96 + 88))(v94, v95);
      if (v97 == *MEMORY[0x277CC83E8] || v97 == *MEMORY[0x277CC83E0] || v97 == *MEMORY[0x277CC83D8] || v97 == *MEMORY[0x277CC83F8])
      {
        (*(v64 + 8))(v62, v63);
        v124 = sub_23875E030();
      }

      else
      {
        if (v97 != *MEMORY[0x277CC83F0] && v97 != *MEMORY[0x277CC8400])
        {
          (*(v96 + 8))(v94, v95);
          goto LABEL_53;
        }

        (*(v64 + 8))(v62, v63);
        v124 = sub_23875E070();
      }

      v60 = v124;
      (*(v166 + 8))(v165, v61);
      return v60;
    }

LABEL_53:
    v60 = sub_23875E070();
    goto LABEL_54;
  }

  if (v52 != *MEMORY[0x277CC8538])
  {
    if (v52 != *MEMORY[0x277CC8530])
    {
      v122 = sub_23875E070();
      v123 = v51;
      v60 = v122;
      (*(v48 + 8))(v123, v47);
      return v60;
    }

    (*(v48 + 96))(v51, v47);
    v100 = v150;
    v99 = v151;
    v101 = v148;
    (*(v150 + 32))(v148, v51, v151);
    v102 = *(v100 + 16);
    v103 = v149;
    v102(v149, v101, v99);
    v104 = (*(v100 + 88))(v103, v99);
    if (v104 == *MEMORY[0x277CC83B8])
    {
      v105 = v143;
      v102(v143, v103, v99);
      (*(v100 + 96))(v105, v99);
      v106 = v164;
      v107 = v136;
      v108 = v167;
      (*(v164 + 32))(v136, v105, v167);
      v109 = v144;
      (*(v106 + 16))(v144, v107, v108);
      v110 = (*(v106 + 88))(v109, v108);
      if (v110 == *MEMORY[0x277CC6B98] || (v111 = v110, v110 == *MEMORY[0x277CC6BA8]))
      {
        v60 = sub_23875E030();
        (*(v106 + 8))(v107, v167);
        v115 = *(v100 + 8);
        v115(v101, v99);
      }

      else
      {
        LODWORD(v166) = *MEMORY[0x277CC6BA0];
        v168 = sub_23875E070();
        v112 = *(v106 + 8);
        v113 = v107;
        v114 = v167;
        v112(v113, v167);
        v115 = *(v100 + 8);
        v115(v101, v99);
        if (v111 != v166)
        {
          v112(v144, v114);
        }

        v60 = v168;
      }

      v115(v103, v99);
      return v60;
    }

    if (v104 == *MEMORY[0x277CC83A8])
    {
      v126 = v135;
      v102(v135, v103, v99);
      (*(v100 + 96))(v126, v99);
      v127 = sub_23875AD40();
      v128 = *(v127 - 8);
      v129 = (*(v128 + 88))(v126, v127);
      if (v129 == *MEMORY[0x277CC8410] || v129 == *MEMORY[0x277CC8420] || v129 == *MEMORY[0x277CC8408])
      {
        goto LABEL_75;
      }

      if (v129 == *MEMORY[0x277CC8418])
      {
LABEL_64:
        v130 = *(v100 + 8);
        v130(v103, v99);
        v131 = sub_23875E070();
LABEL_76:
        v60 = v131;
        v130(v101, v99);
        return v60;
      }

      if (v129 == *MEMORY[0x277CC8430])
      {
LABEL_75:
        v130 = *(v100 + 8);
        v130(v103, v99);
        v131 = sub_23875E030();
        goto LABEL_76;
      }

      if (v129 == *MEMORY[0x277CC8428])
      {
        goto LABEL_64;
      }

      (*(v128 + 8))(v126, v127);
    }

    v60 = sub_23875E070();
    v132 = *(v100 + 8);
    v132(v101, v99);
    v132(v103, v99);
    return v60;
  }

  (*(v48 + 96))(v51, v47);
  v77 = v156;
  v76 = v157;
  v78 = v158;
  (*(v157 + 32))(v156, v51, v158);
  v79 = v152;
  sub_23875B0B0();
  v81 = v153;
  v80 = v154;
  v82 = (*(v153 + 88))(v79, v154);
  if (v82 == *MEMORY[0x277CC83B8])
  {
    (*(v81 + 96))(v79, v80);
    v83 = v164;
    v84 = v145;
    v85 = v79;
    v86 = v167;
    (*(v164 + 32))(v145, v85, v167);
    v87 = v146;
    (*(v83 + 16))(v146, v84, v86);
    v88 = (*(v83 + 88))(v87, v86);
    if (v88 != *MEMORY[0x277CC6B98])
    {
      v89 = v88;
      if (v88 != *MEMORY[0x277CC6BA8])
      {
        v90 = *MEMORY[0x277CC6BA0];
        v91 = sub_23875E070();
        v92 = v84;
        v93 = *(v83 + 8);
        v93(v92, v86);
        (*(v76 + 8))(v77, v78);
        if (v89 != v90)
        {
          v93(v87, v86);
        }

        return v91;
      }
    }

    v125 = sub_23875E030();
    (*(v83 + 8))(v84, v86);
    v60 = v125;
    goto LABEL_68;
  }

  if (v82 != *MEMORY[0x277CC83A8])
  {
    v60 = sub_23875E070();
    (*(v76 + 8))(v77, v78);
    (*(v81 + 8))(v79, v80);
    return v60;
  }

  (*(v81 + 96))(v79, v80);
  v116 = v141;
  v117 = v140;
  v118 = v142;
  (*(v141 + 32))(v140, v79, v142);
  v119 = v137;
  sub_23875ACD0();
  v120 = (*(v138 + 88))(v119, v139);
  if (v120 == *MEMORY[0x277CC8468] || v120 == *MEMORY[0x277CC8458] || v120 == *MEMORY[0x277CC8480] || v120 == *MEMORY[0x277CC8460] || v120 == *MEMORY[0x277CC8490] || v120 == *MEMORY[0x277CC8478])
  {
    v121 = sub_23875E030();
    goto LABEL_67;
  }

  if (v120 == *MEMORY[0x277CC8470] || v120 == *MEMORY[0x277CC8488])
  {
    v121 = sub_23875E070();
LABEL_67:
    v60 = v121;
    (*(v116 + 8))(v117, v118);
LABEL_68:
    (*(v76 + 8))(v77, v78);
    return v60;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}