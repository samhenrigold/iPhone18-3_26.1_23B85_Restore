uint64_t sub_224ADAF60(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_224DAFE68();
  sub_224DAEE78();
  v8 = sub_224DAFEA8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_224DAFD88() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_224AE1AC4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_224ADB0B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_224DAE0D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_224A3CE84(&qword_281350C70, MEMORY[0x277CF9E98], MEMORY[0x277CF9EA0]);
  v34 = a2;
  v12 = sub_224DAED88();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_224A3CE84(&qword_281350C68, MEMORY[0x277CF9E98], MEMORY[0x277CF9EA8]);
      v22 = sub_224DAEDD8();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_224AE1C44(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_224ADB390(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_224DA9688();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_224A3CE84(&qword_281351A80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v34 = a2;
  v12 = sub_224DAED88();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_224A3CE84(&qword_281351A78, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v22 = sub_224DAEDD8();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_224AE1F0C(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_224ADB670(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_224DAAF48();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_224A3CE84(&qword_281351738, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
  v34 = a2;
  v12 = sub_224DAED88();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_224A3CE84(&qword_281351730, MEMORY[0x277D46790], MEMORY[0x277D467B8]);
      v22 = sub_224DAEDD8();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_224AE2498(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_224ADB950(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_224DAFE68();
  sub_224DAA058();
  if (v7)
  {
    sub_224DAFE88();
    sub_224DAEE78();
  }

  else
  {
    sub_224DAFE88();
  }

  v8 = sub_224DAFEA8();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;

    sub_224AE2788(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v22 = v24;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  while (1)
  {

    v12 = sub_224DAA058();
    v14 = v13;
    v15 = sub_224DAA058();
    v17 = v16;
    if (!v14)
    {

      if (!v17)
      {
        goto LABEL_21;
      }

      goto LABEL_7;
    }

    if (!v16)
    {

LABEL_7:

      goto LABEL_8;
    }

    if (v12 == v15 && v14 == v16)
    {
      break;
    }

    v19 = sub_224DAFD88();

    if (v19)
    {
      goto LABEL_21;
    }

LABEL_8:
    v10 = (v10 + 1) & v11;
    if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_21:

  *a1 = *(*(v6 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_224ADBB84(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_224DAFE68();
  v7 = a2 & 1;
  MEMORY[0x22AA5E1E0](v7);
  v8 = sub_224DAFEA8();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_224AE29F0(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_224ADBCC0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - v9;
  v11 = *v2;
  sub_224A33088(&qword_27D6F36A8, &unk_27D6F56A0, &unk_224DB4150, MEMORY[0x277CFA018]);
  v32 = a2;
  v12 = sub_224DAED88();
  v30 = v11 + 56;
  v31 = v11;
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = a1;
    v29 = ~v13;
    v26 = v7;
    v16 = v7 + 16;
    v15 = *(v7 + 16);
    v17 = (v7 + 8);
    v18 = *(v16 + 56);
    v25[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v19 = v15;
      v15(v10, *(v31 + 48) + v18 * v14, v6);
      sub_224A33088(&qword_27D6F36B0, &unk_27D6F56A0, &unk_224DB4150, MEMORY[0x277CFA020]);
      v20 = sub_224DAEDD8();
      v21 = *v17;
      (*v17)(v10, v6);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v29;
      v15 = v19;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v27;
        a1 = v28;
        v7 = v26;
        goto LABEL_7;
      }
    }

    v21(v32, v6);
    v19(v28, *(v31 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v32;
    v15(v10, v32, v6);
    v33 = *v3;
    sub_224AE2FE8(v10, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v33;
    (*(v7 + 32))(a1, v23, v6);
    return 1;
  }
}

uint64_t sub_224ADBFA4(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = *(a2 + 40);
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v11 = *v2;
  sub_224DAFE68();
  v40 = v8;
  sub_224DAEE78();
  v38 = v10;
  v39 = v5;
  sub_224DAEE78();
  v35 = a2;
  v36 = a1;
  v34 = v2;
  sub_224DAFE88();
  if (v7 != 1)
  {
    MEMORY[0x22AA5E200](v6);
  }

  v12 = sub_224DAFEA8();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v37 = v6;
    v15 = ~v13;
    v16 = *(v11 + 48);
    do
    {
      v17 = v16 + 48 * v14;
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      v20 = *(v17 + 32);
      v21 = *(v17 + 40);
      v22 = *v17 == v9 && *(v17 + 8) == v40;
      if (v22 || (sub_224DAFD88() & 1) != 0)
      {
        v23 = v19 == v38 && v18 == v39;
        if (v23 || (sub_224DAFD88() & 1) != 0)
        {
          if (v21)
          {
            if (v7)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v24 = v7;
            if (v20 != v37)
            {
              v24 = 1;
            }

            if ((v24 & 1) == 0)
            {
LABEL_21:

              v25 = *(v11 + 48) + 48 * v14;
              v27 = *v25;
              v26 = *(v25 + 8);
              v28 = *(v25 + 16);
              v29 = *(v25 + 24);
              v30 = *(v25 + 32);
              LOBYTE(v25) = *(v25 + 40);
              *v36 = v27;
              *(v36 + 8) = v26;
              *(v36 + 16) = v28;
              *(v36 + 24) = v29;
              *(v36 + 32) = v30;
              *(v36 + 40) = v25;

              return 0;
            }
          }
        }
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v34;

  sub_224AE32AC(v35, v14, isUniquelyReferenced_nonNull_native);
  *v34 = v41;
  v33 = *(v35 + 1);
  *v36 = *v35;
  *(v36 + 16) = v33;
  *(v36 + 25) = *(v35 + 25);
  return 1;
}

uint64_t sub_224ADC248(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_224DAF858();

    if (v8)
    {

      sub_224DAB338();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_224DAF838();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_224ADD894(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_224AE0650(v17 + 1);
    }

    sub_224AE1958(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_224DAB338();
  sub_224A3CE84(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
  v10 = sub_224DAED88();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_224AE34F0(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_224A3CE84(&unk_281350FD0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
  while ((sub_224DAEDD8() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_224ADC50C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_224DAE588();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_224A3CE84(&qword_281350C58, MEMORY[0x277CE3AD8], MEMORY[0x277CE3AE0]);
  v34 = a2;
  v12 = sub_224DAED88();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_224A3CE84(&qword_281350C50, MEMORY[0x277CE3AD8], MEMORY[0x277CE3AE8]);
      v22 = sub_224DAEDD8();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_224AE36D8(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_224ADC7EC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - v9;
  v11 = *v2;
  sub_224A33088(&unk_27D6F3B50, &unk_27D6F6570, &qword_224DB3C40, MEMORY[0x277CFA018]);
  v32 = a2;
  v12 = sub_224DAED88();
  v30 = v11 + 56;
  v31 = v11;
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = a1;
    v29 = ~v13;
    v26 = v7;
    v16 = v7 + 16;
    v15 = *(v7 + 16);
    v17 = (v7 + 8);
    v18 = *(v16 + 56);
    v25[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v19 = v15;
      v15(v10, *(v31 + 48) + v18 * v14, v6);
      sub_224A33088(&qword_27D6F3670, &unk_27D6F6570, &qword_224DB3C40, MEMORY[0x277CFA020]);
      v20 = sub_224DAEDD8();
      v21 = *v17;
      (*v17)(v10, v6);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v29;
      v15 = v19;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v27;
        a1 = v28;
        v7 = v26;
        goto LABEL_7;
      }
    }

    v21(v32, v6);
    v19(v28, *(v31 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v32;
    v15(v10, v32, v6);
    v33 = *v3;
    sub_224AE39A0(v10, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v33;
    (*(v7 + 32))(a1, v23, v6);
    return 1;
  }
}

uint64_t sub_224ADCAF4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_224A3CE84(&qword_281350E50, MEMORY[0x277CF9978], MEMORY[0x277CF9988]);
  v34 = a2;
  v12 = sub_224DAED88();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_224A3CE84(&qword_281350E48, MEMORY[0x277CF9978], MEMORY[0x277CF9990]);
      v22 = sub_224DAEDD8();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_224AE3C64(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_224ADCDD4(_BYTE *a1, uint64_t a2)
{
  v4 = 0xEE006465676E6168;
  v5 = *v2;
  sub_224DAFE68();
  sub_224DAEE78();

  v6 = sub_224DAFEA8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  v30 = v5 + 56;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v29 = ~v7;
    while (1)
    {
      v9 = *(*(v5 + 48) + v8);
      v10 = 0xD000000000000014;
      v11 = v9 == 2 ? 0x64657472617473 : 0xD000000000000014;
      v12 = v9 == 2 ? 0xE700000000000000 : 0x8000000224DC4690;
      v13 = *(*(v5 + 48) + v8) ? 0x437363697274656DLL : 0xD000000000000012;
      v14 = *(*(v5 + 48) + v8) ? v4 : 0x8000000224DC4660;
      v15 = *(*(v5 + 48) + v8) <= 1u ? v13 : v11;
      v16 = *(*(v5 + 48) + v8) <= 1u ? v14 : v12;
      if (a2 == 2)
      {
        v10 = 0x64657472617473;
        v17 = 0xE700000000000000;
      }

      else
      {
        v17 = 0x8000000224DC4690;
      }

      v18 = a2 ? 0x437363697274656DLL : 0xD000000000000012;
      v19 = a2 ? v4 : 0x8000000224DC4660;
      v20 = a2 <= 1u ? v18 : v10;
      v21 = a2 <= 1u ? v19 : v17;
      v22 = v4;
      v23 = v5;
      if (v15 == v20 && v16 == v21)
      {
        break;
      }

      v24 = sub_224DAFD88();

      if (v24)
      {
        goto LABEL_42;
      }

      v8 = (v8 + 1) & v29;
      v5 = v23;
      v4 = v22;
      if (((*(v30 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_42:
    result = 0;
    LOBYTE(a2) = *(*(v23 + 48) + v8);
  }

  else
  {
LABEL_40:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v27;
    sub_224AE3F2C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v27 = v31;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_224ADD0D4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_224DAD448();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_224A3CE84(&unk_281350CE0, MEMORY[0x277CF9CE8], MEMORY[0x277CF9CF0]);
  v34 = a2;
  v12 = sub_224DAED88();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_224A3CE84(&qword_281350CD8, MEMORY[0x277CF9CE8], MEMORY[0x277CF9CF8]);
      v22 = sub_224DAEDD8();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_224AE420C(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_224ADD400(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_224DAF908();
    v21 = v8;
    sub_224DAF7E8();
    if (sub_224DAF878())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_224A5B698(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = sub_224DAF698();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_224DAF878());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_224ADD644(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_224DAF908();
    v23 = v10;
    sub_224DAF7E8();
    if (sub_224DAF878())
    {
      sub_224A3B79C(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_224A5B698(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_224DAF698();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_224DAF878());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_224ADD894(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3610, &qword_224DB3BE8);
    v2 = sub_224DAF908();
    v15 = v2;
    sub_224DAF7E8();
    if (sub_224DAF878())
    {
      sub_224DAB338();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_224AE0650(v9 + 1);
        }

        v2 = v15;
        sub_224A3CE84(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
        result = sub_224DAED88();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_224DAF878());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

void sub_224ADDB68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34B8, &qword_224DB3A48);
  v4 = sub_224DAF8F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_224DAFE68();
      sub_224DAEE78();
      v21 = sub_224DAFEA8();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_224ADDDC8(uint64_t a1)
{
  v2 = v1;
  v38 = sub_224DAE0D8();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34E8, &qword_224DB3A80);
  v7 = sub_224DAF8F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_224A3CE84(&qword_281350C70, MEMORY[0x277CF9E98], MEMORY[0x277CF9EA0]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_224ADE138(uint64_t a1)
{
  v2 = v1;
  v38 = sub_224DA9688();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3490, &qword_224DB39F8);
  v7 = sub_224DAF8F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_224A3CE84(&qword_281351A80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_224ADE494(uint64_t a1)
{
  v2 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - v5;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3708, &qword_224DB3CE0);
  v7 = sub_224DAF8F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_224ADE7F4(uint64_t a1)
{
  v2 = v1;
  v38 = sub_224DAAF48();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3558, &qword_224DB3B08);
  v7 = sub_224DAF8F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_224A3CE84(&qword_281351738, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_224ADEB50(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for _SessionPriorityInfo(0);
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3658, &qword_224DB3C30);
  v8 = sub_224DAF8F8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v32 = v1;
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      sub_224A72CFC(*(v7 + 48) + v21 * (v18 | (v10 << 6)), v6);
      sub_224DAFE68();
      MEMORY[0x22AA5E1E0](*v6);
      v22 = sub_224DAFEA8();
      v23 = -1 << *(v9 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      sub_224A72CFC(v6, *(v9 + 48) + v17 * v21);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v7 + 32);
    if (v30 >= 64)
    {
      bzero((v7 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v30;
    }

    v2 = v32;
    *(v7 + 16) = 0;
  }

  *v2 = v9;
}

void sub_224ADEE40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34C0, &unk_224DB3A50);
  v4 = sub_224DAF8F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_224DAFE68();
      sub_224DAA058();
      if (v21)
      {
        sub_224DAFE88();
        sub_224DAEE78();
      }

      else
      {
        sub_224DAFE88();
      }

      v22 = sub_224DAFEA8();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_224ADF0E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3718, &qword_224DB3CF0);
  v4 = sub_224DAF8F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_224DAFE68();
      MEMORY[0x22AA5E1E0](v17);
      v18 = sub_224DAFEA8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_224ADF338(uint64_t a1)
{
  v2 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - v5;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F35C0, &qword_224DB3B90);
  v7 = sub_224DAF8F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_224ADF698(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34E0, &unk_224DC1B70);
  v4 = sub_224DAF8F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_224DAFE68();
      if (v19)
      {
        MEMORY[0x22AA5E1E0](1);
        sub_224DAEE78();
      }

      else
      {
        MEMORY[0x22AA5E1E0](0);
      }

      v21 = sub_224DAFEA8();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_224ADF928(uint64_t a1)
{
  v2 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - v5;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3620, &qword_224DB3BF8);
  v7 = sub_224DAF8F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_224ADFC88(uint64_t a1)
{
  v2 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - v5;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F36B8, &unk_224DB3C80);
  v7 = sub_224DAF8F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_224A33088(&qword_27D6F36A8, &unk_27D6F56A0, &unk_224DB4150, MEMORY[0x277CFA018]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_224ADFFE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3760, &qword_224DB3D38);
  v4 = sub_224DAF8F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v36 = v1;
    v37 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    v38 = v4;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v39 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 48 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      v24 = *(v18 + 40);
      sub_224DAFE68();
      sub_224DAEE78();
      sub_224DAEE78();
      sub_224DAFE88();
      if (v24 != 1)
      {
        MEMORY[0x22AA5E200](v23);
      }

      v25 = sub_224DAFEA8();
      v5 = v38;
      v26 = -1 << *(v38 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v38 + 48) + 48 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      *(v14 + 40) = v24;
      ++*(v38 + 16);
      v3 = v37;
      v10 = v39;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      v34 = v5;
      bzero(v7, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v5 = v34;
    }

    else
    {
      *v7 = -1 << v33;
    }

    v2 = v36;
    *(v3 + 16) = 0;
  }

  v35 = v5;

  *v2 = v35;
}

void sub_224AE02F4(uint64_t a1)
{
  v2 = v1;
  v38 = sub_224DA9908();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3540, &unk_224DB3AE0);
  v7 = sub_224DAF8F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_224A3CE84(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_224AE0650(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3610, &qword_224DB3BE8);
  v4 = sub_224DAF8F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_224DAB338();
      sub_224A3CE84(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
      v18 = sub_224DAED88();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_224AE08E4(uint64_t a1)
{
  v2 = v1;
  v38 = sub_224DAE588();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F35A8, &qword_224DB3B60);
  v7 = sub_224DAF8F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_224A3CE84(&qword_281350C58, MEMORY[0x277CE3AD8], MEMORY[0x277CE3AE0]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_224AE0C40(uint64_t a1)
{
  v2 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - v5;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3668, &qword_224DB3C48);
  v7 = sub_224DAF8F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_224A33088(&unk_27D6F3B50, &unk_27D6F6570, &qword_224DB3C40, MEMORY[0x277CFA018]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_224AE0FA0(uint64_t a1)
{
  v2 = v1;
  v38 = sub_224DAC268();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3630, &qword_224DB3C08);
  v7 = sub_224DAF8F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_224A3CE84(&qword_281350E50, MEMORY[0x277CF9978], MEMORY[0x277CF9988]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_224AE12FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3640, &qword_224DB3C18);
  v4 = sub_224DAF8F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_224DAFE68();
      sub_224DAEE78();

      v13 = sub_224DAFEA8();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_224AE15FC(uint64_t a1)
{
  v2 = v1;
  v38 = sub_224DAD448();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F35F0, &qword_224DB3BC8);
  v7 = sub_224DAF8F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_224A3CE84(&unk_281350CE0, MEMORY[0x277CF9CE8], MEMORY[0x277CF9CF0]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

unint64_t sub_224AE1958(uint64_t a1, uint64_t a2)
{
  sub_224DAB338();
  sub_224A3CE84(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
  sub_224DAED88();
  result = sub_224DAF7C8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_224AE1A40(uint64_t a1, uint64_t a2)
{
  sub_224DAF698();
  result = sub_224DAF7C8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_224AE1AC4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_224ADDB68(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_224AE44D4();
      goto LABEL_16;
    }

    sub_224AE52D0(v8 + 1);
  }

  v10 = *v4;
  sub_224DAFE68();
  sub_224DAEE78();
  v11 = sub_224DAFEA8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_224DAFD88() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_224DAFDC8();
  __break(1u);
}

uint64_t sub_224AE1C44(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_224DAE0D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224ADDDC8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_224A5E4AC(MEMORY[0x277CF9E98], &qword_27D6F34E8, &qword_224DB3A80);
      goto LABEL_12;
    }

    sub_224AE5508(v11 + 1);
  }

  v13 = *v3;
  sub_224A3CE84(&qword_281350C70, MEMORY[0x277CF9E98], MEMORY[0x277CF9EA0]);
  v14 = sub_224DAED88();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_224A3CE84(&qword_281350C68, MEMORY[0x277CF9E98], MEMORY[0x277CF9EA8]);
      v22 = sub_224DAEDD8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

uint64_t sub_224AE1F0C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_224DA9688();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224ADE138(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_224A5E4AC(MEMORY[0x277CC9260], &qword_27D6F3490, &qword_224DB39F8);
      goto LABEL_12;
    }

    sub_224AE5824(v11 + 1);
  }

  v13 = *v3;
  sub_224A3CE84(&qword_281351A80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v14 = sub_224DAED88();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_224A3CE84(&qword_281351A78, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v22 = sub_224DAEDD8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

uint64_t sub_224AE21D4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224ADE494(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_224AE4EEC(&qword_27D6F3900, &unk_224DB4640, &qword_27D6F3708, &qword_224DB3CE0);
      goto LABEL_12;
    }

    sub_224AE5B40(v11 + 1);
  }

  v13 = *v3;
  sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
  v14 = sub_224DAED88();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = *(v18 + 56);
    do
    {
      v19(v10, *(v31 + 48) + v21 * a2, v6);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
      v22 = sub_224DAEDD8();
      (*(v18 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v29;
  v24 = *v30;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

uint64_t sub_224AE2498(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_224DAAF48();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224ADE7F4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_224A5E4AC(MEMORY[0x277D46790], &qword_27D6F3558, &qword_224DB3B08);
      goto LABEL_12;
    }

    sub_224AE5E60(v11 + 1);
  }

  v13 = *v3;
  sub_224A3CE84(&qword_281351738, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
  v14 = sub_224DAED88();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_224A3CE84(&qword_281351730, MEMORY[0x277D46790], MEMORY[0x277D467B8]);
      v22 = sub_224DAEDD8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

void sub_224AE2788(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_224ADEE40(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        sub_224AE4A3C(&qword_27D6F34C0, &unk_224DB3A50);
        goto LABEL_26;
      }

      sub_224AE617C(v8 + 1);
    }

    v10 = *v4;
    sub_224DAFE68();
    sub_224DAA058();
    if (v11)
    {
      sub_224DAFE88();
      sub_224DAEE78();
    }

    else
    {
      sub_224DAFE88();
    }

    v12 = sub_224DAFEA8();
    v13 = -1 << *(v10 + 32);
    a3 = v12 & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      while (1)
      {

        v15 = sub_224DAA058();
        v17 = v16;
        v18 = sub_224DAA058();
        v20 = v19;
        if (!v17)
        {
          break;
        }

        if (!v19)
        {

LABEL_14:

          goto LABEL_15;
        }

        if (v15 == v18 && v17 == v19)
        {
          goto LABEL_29;
        }

        v22 = sub_224DAFD88();

        if (v22)
        {
          goto LABEL_30;
        }

LABEL_15:
        a3 = (a3 + 1) & v14;
        if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_14;
    }
  }

LABEL_26:
  v23 = *v28;
  *(*v28 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v24 = (*(v23 + 48) + 16 * a3);
  *v24 = result;
  v24[1] = a2;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_29:

LABEL_30:
    sub_224DAFDC8();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }
}

void sub_224AE29F0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224ADF0E8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_224AE48C4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_224AE63FC(v5 + 1);
  }

  v8 = *v3;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](v4 & 1);
  v9 = sub_224DAFEA8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4 & 1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_224DAFDC8();
  __break(1u);
}

uint64_t sub_224AE2B44(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224ADF338(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_224AE4EEC(&unk_27D6F3920, &qword_224DB35B0, &qword_27D6F35C0, &qword_224DB3B90);
      goto LABEL_12;
    }

    sub_224AE661C(v11 + 1);
  }

  v13 = *v3;
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
  v14 = sub_224DAED88();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = *(v18 + 56);
    do
    {
      v19(v10, *(v31 + 48) + v21 * a2, v6);
      sub_224A33088(&unk_2813518F0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FB0]);
      v22 = sub_224DAEDD8();
      (*(v18 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v29;
  v24 = *v30;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

void sub_224AE2E08(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_224ADF698(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        sub_224AE4A3C(&qword_27D6F34E0, &unk_224DC1B70);
        goto LABEL_24;
      }

      sub_224AE693C(v8 + 1);
    }

    v10 = *v4;
    sub_224DAFE68();
    if (a2)
    {
      MEMORY[0x22AA5E1E0](1);
      sub_224DAEE78();
    }

    else
    {
      MEMORY[0x22AA5E1E0](0);
    }

    v11 = sub_224DAFEA8();
    v12 = -1 << *(v10 + 32);
    a3 = v11 & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      do
      {
        v14 = (*(v10 + 48) + 16 * a3);
        v15 = v14[1];
        if (v15)
        {
          if (a2)
          {
            v16 = *v14 == result && v15 == a2;
            if (v16 || (sub_224DAFD88() & 1) != 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
          }
        }

        else
        {

          if (!a2)
          {
            goto LABEL_27;
          }
        }

        a3 = (a3 + 1) & v13;
      }

      while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_24:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = result;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_27:

LABEL_28:
    sub_224DAFDC8();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }
}

uint64_t sub_224AE2FE8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224ADFC88(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_224AE4EEC(&unk_27D6F56A0, &unk_224DB4150, &qword_27D6F36B8, &unk_224DB3C80);
      goto LABEL_12;
    }

    sub_224AE6EB0(v11 + 1);
  }

  v13 = *v3;
  sub_224A33088(&qword_27D6F36A8, &unk_27D6F56A0, &unk_224DB4150, MEMORY[0x277CFA018]);
  v14 = sub_224DAED88();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = *(v18 + 56);
    do
    {
      v19(v10, *(v31 + 48) + v21 * a2, v6);
      sub_224A33088(&qword_27D6F36B0, &unk_27D6F56A0, &unk_224DB4150, MEMORY[0x277CFA020]);
      v22 = sub_224DAEDD8();
      (*(v18 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v29;
  v24 = *v30;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

void sub_224AE32AC(uint64_t *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_29;
  }

  if (a3)
  {
    sub_224ADFFE8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_224AE4BBC();
      goto LABEL_29;
    }

    sub_224AE71D0(v6 + 1);
  }

  v9 = result[3];
  v8 = result[4];
  v10 = *(result + 40);
  v11 = *result;
  v12 = result[1];
  v13 = result[2];
  v14 = *v3;
  sub_224DAFE68();
  sub_224DAEE78();
  v38 = v9;
  v39 = v13;
  sub_224DAEE78();
  v37 = v10;
  sub_224DAFE88();
  if (v10 != 1)
  {
    MEMORY[0x22AA5E200](v8);
  }

  v15 = sub_224DAFEA8();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v36 = v8;
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = v19 + 48 * a2;
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      v23 = *(v20 + 32);
      v24 = *(v20 + 40);
      v25 = *v20 == v11 && *(v20 + 8) == v12;
      if (v25 || (sub_224DAFD88() & 1) != 0)
      {
        v26 = v21 == v39 && v22 == v38;
        if (v26 || (sub_224DAFD88() & 1) != 0)
        {
          if (v24)
          {
            if (v37)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v27 = v37;
            if (v23 != v36)
            {
              v27 = 1;
            }

            if ((v27 & 1) == 0)
            {
LABEL_28:
              sub_224DAFDC8();
              __break(1u);
              break;
            }
          }
        }
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_29:
  v28 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v29 = (*(v28 + 48) + 48 * a2);
  v30 = *(result + 1);
  *v29 = *result;
  v29[1] = v30;
  *(v29 + 25) = *(result + 25);
  v31 = *(v28 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v33;
  }
}

void sub_224AE34F0(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224AE0650(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_224AE4D78();
      goto LABEL_12;
    }

    sub_224AE77C4(v6 + 1);
  }

  v8 = *v3;
  sub_224DAB338();
  sub_224A3CE84(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
  v9 = sub_224DAED88();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_224A3CE84(&unk_281350FD0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
    while ((sub_224DAEDD8() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_224DAFDC8();
  __break(1u);
}

uint64_t sub_224AE36D8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_224DAE588();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224AE08E4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_224A5E4AC(MEMORY[0x277CE3AD8], &qword_27D6F35A8, &qword_224DB3B60);
      goto LABEL_12;
    }

    sub_224AE7A3C(v11 + 1);
  }

  v13 = *v3;
  sub_224A3CE84(&qword_281350C58, MEMORY[0x277CE3AD8], MEMORY[0x277CE3AE0]);
  v14 = sub_224DAED88();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_224A3CE84(&qword_281350C50, MEMORY[0x277CE3AD8], MEMORY[0x277CE3AE8]);
      v22 = sub_224DAEDD8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

uint64_t sub_224AE39A0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224AE0C40(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_224AE4EEC(&unk_27D6F6570, &qword_224DB3C40, &qword_27D6F3668, &qword_224DB3C48);
      goto LABEL_12;
    }

    sub_224AE7D58(v11 + 1);
  }

  v13 = *v3;
  sub_224A33088(&unk_27D6F3B50, &unk_27D6F6570, &qword_224DB3C40, MEMORY[0x277CFA018]);
  v14 = sub_224DAED88();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = *(v18 + 56);
    do
    {
      v19(v10, *(v31 + 48) + v21 * a2, v6);
      sub_224A33088(&qword_27D6F3670, &unk_27D6F6570, &qword_224DB3C40, MEMORY[0x277CFA020]);
      v22 = sub_224DAEDD8();
      (*(v18 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v29;
  v24 = *v30;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

uint64_t sub_224AE3C64(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224AE0FA0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_224A5E4AC(MEMORY[0x277CF9978], &qword_27D6F3630, &qword_224DB3C08);
      goto LABEL_12;
    }

    sub_224AE8078(v11 + 1);
  }

  v13 = *v3;
  sub_224A3CE84(&qword_281350E50, MEMORY[0x277CF9978], MEMORY[0x277CF9988]);
  v14 = sub_224DAED88();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_224A3CE84(&qword_281350E48, MEMORY[0x277CF9978], MEMORY[0x277CF9990]);
      v22 = sub_224DAEDD8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

void sub_224AE3F2C(uint64_t result, unint64_t a2, char a3)
{
  v34 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_224AE12FC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_224AE5154();
      goto LABEL_47;
    }

    sub_224AE8394(v5 + 1);
  }

  v7 = 0xEE006465676E6168;
  v8 = *v3;
  sub_224DAFE68();
  sub_224DAEE78();

  v9 = sub_224DAFEA8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  v33 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v32 = v8;
    v11 = ~v10;
    do
    {
      v12 = *(*(v32 + 48) + a2);
      v13 = 0xD000000000000014;
      v14 = v12 == 2 ? 0x64657472617473 : 0xD000000000000014;
      v15 = v12 == 2 ? 0xE700000000000000 : 0x8000000224DC4690;
      v16 = *(*(v32 + 48) + a2) ? 0x437363697274656DLL : 0xD000000000000012;
      v17 = *(*(v32 + 48) + a2) ? v7 : 0x8000000224DC4660;
      v18 = *(*(v32 + 48) + a2) <= 1u ? v16 : v14;
      v19 = *(*(v32 + 48) + a2) <= 1u ? v17 : v15;
      if (v34 == 2)
      {
        v13 = 0x64657472617473;
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0x8000000224DC4690;
      }

      v21 = v34 ? 0x437363697274656DLL : 0xD000000000000012;
      v22 = v34 ? v7 : 0x8000000224DC4660;
      v23 = v34 <= 1u ? v21 : v13;
      v24 = v34 <= 1u ? v22 : v20;
      v25 = v7;
      if (v18 == v23 && v19 == v24)
      {
        goto LABEL_50;
      }

      v26 = sub_224DAFD88();

      if (v26)
      {
        goto LABEL_51;
      }

      a2 = (a2 + 1) & v11;
      v7 = v25;
    }

    while (((*(v33 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_47:
  v27 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + a2) = v34;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v27 + 16) = v30;
    return;
  }

  __break(1u);
LABEL_50:

LABEL_51:
  sub_224DAFDC8();
  __break(1u);
}

uint64_t sub_224AE420C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_224DAD448();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224AE15FC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_224A5E4AC(MEMORY[0x277CF9CE8], &qword_27D6F35F0, &qword_224DB3BC8);
      goto LABEL_12;
    }

    sub_224AE8650(v11 + 1);
  }

  v13 = *v3;
  sub_224A3CE84(&unk_281350CE0, MEMORY[0x277CF9CE8], MEMORY[0x277CF9CF0]);
  v14 = sub_224DAED88();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_224A3CE84(&qword_281350CD8, MEMORY[0x277CF9CE8], MEMORY[0x277CF9CF8]);
      v22 = sub_224DAEDD8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

void sub_224AE44D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34B8, &qword_224DB3A48);
  v2 = *v0;
  v3 = sub_224DAF8E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_224AE46B8()
{
  v1 = v0;
  v2 = type metadata accessor for _SessionPriorityInfo(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3658, &qword_224DB3C30);
  v7 = *v0;
  v8 = sub_224DAF8E8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v11 + 8 * v12)
    {
      memmove(v10, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_224A7358C(*(v7 + 48) + v22, v6);
        sub_224A72CFC(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }
}

void sub_224AE48C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3718, &qword_224DB3CF0);
  v2 = *v0;
  v3 = sub_224DAF8E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_224AE4A3C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_224DAF8E8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 16 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 16 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_224AE4BBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3760, &qword_224DB3D38);
  v2 = *v0;
  v3 = sub_224DAF8E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        LOBYTE(v18) = *(v18 + 40);
        v24 = *(v4 + 48) + v17;
        *v24 = v20;
        *(v24 + 8) = v19;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        *(v24 + 40) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_224AE4D78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3610, &qword_224DB3BE8);
  v2 = *v0;
  v3 = sub_224DAF8E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_224AE4EEC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *v4;
  v14 = sub_224DAF8E8();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v7;
    v16 = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || v16 >= v13 + 56 + 8 * v17)
    {
      memmove(v16, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v9 + 32;
    v31 = v9 + 16;
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v27 = *(v9 + 72) * (v24 | (v19 << 6));
      (*(v9 + 16))(v12, *(v13 + 48) + v27, v8);
      (*(v9 + 32))(*(v15 + 48) + v27, v12, v8);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v7 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v15;
  }
}

void sub_224AE5154()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3640, &qword_224DB3C18);
  v2 = *v0;
  v3 = sub_224DAF8E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_224AE52D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34B8, &qword_224DB3A48);
  v4 = sub_224DAF8F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_224DAFE68();

      sub_224DAEE78();
      v20 = sub_224DAFEA8();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_224AE5508(uint64_t a1)
{
  v2 = v1;
  v35 = sub_224DAE0D8();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34E8, &qword_224DB3A80);
  v8 = sub_224DAF8F8();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_224A3CE84(&qword_281350C70, MEMORY[0x277CF9E98], MEMORY[0x277CF9EA0]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_224AE5824(uint64_t a1)
{
  v2 = v1;
  v35 = sub_224DA9688();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3490, &qword_224DB39F8);
  v8 = sub_224DAF8F8();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_224A3CE84(&qword_281351A80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_224AE5B40(uint64_t a1)
{
  v2 = v1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - v5;
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3708, &qword_224DB3CE0);
  v8 = sub_224DAF8F8();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_224AE5E60(uint64_t a1)
{
  v2 = v1;
  v35 = sub_224DAAF48();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3558, &qword_224DB3B08);
  v8 = sub_224DAF8F8();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_224A3CE84(&qword_281351738, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_224AE617C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34C0, &unk_224DB3A50);
  v4 = sub_224DAF8F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_224DAFE68();

      sub_224DAA058();
      if (v21)
      {
        sub_224DAFE88();
        sub_224DAEE78();
      }

      else
      {
        sub_224DAFE88();
      }

      v22 = sub_224DAFEA8();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

void sub_224AE63FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3718, &qword_224DB3CF0);
  v4 = sub_224DAF8F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_224DAFE68();
      MEMORY[0x22AA5E1E0](v16);
      v17 = sub_224DAFEA8();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_224AE661C(uint64_t a1)
{
  v2 = v1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - v5;
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F35C0, &qword_224DB3B90);
  v8 = sub_224DAF8F8();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_224AE693C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34E0, &unk_224DC1B70);
  v4 = sub_224DAF8F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_224DAFE68();
      if (v18)
      {
        MEMORY[0x22AA5E1E0](1);

        sub_224DAEE78();
      }

      else
      {
        MEMORY[0x22AA5E1E0](0);
      }

      v20 = sub_224DAFEA8();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

void sub_224AE6B90(uint64_t a1)
{
  v2 = v1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - v5;
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3620, &qword_224DB3BF8);
  v8 = sub_224DAF8F8();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_224AE6EB0(uint64_t a1)
{
  v2 = v1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - v5;
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F36B8, &unk_224DB3C80);
  v8 = sub_224DAF8F8();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_224A33088(&qword_27D6F36A8, &unk_27D6F56A0, &unk_224DB4150, MEMORY[0x277CFA018]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_224AE71D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3760, &qword_224DB3D38);
  v4 = sub_224DAF8F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    v36 = v4;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 48 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v23 = *(v18 + 32);
      v24 = *(v18 + 40);
      sub_224DAFE68();

      sub_224DAEE78();
      sub_224DAEE78();
      sub_224DAFE88();
      if (v24 != 1)
      {
        MEMORY[0x22AA5E200](v23);
      }

      v25 = sub_224DAFEA8();
      v5 = v36;
      v26 = -1 << *(v36 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v36 + 48) + 48 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      v10 = v37;
      *(v14 + 16) = v22;
      *(v14 + 24) = v21;
      *(v14 + 32) = v23;
      *(v14 + 40) = v24;
      ++*(v36 + 16);
      v3 = v35;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        v33 = v5;

        v2 = v34;
        goto LABEL_28;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v37 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v33 = v4;

LABEL_28:
    *v2 = v33;
  }
}

void sub_224AE74A8(uint64_t a1)
{
  v2 = v1;
  v35 = sub_224DA9908();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3540, &unk_224DB3AE0);
  v8 = sub_224DAF8F8();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_224A3CE84(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_224AE77C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3610, &qword_224DB3BE8);
  v4 = sub_224DAF8F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_224DAB338();
      sub_224A3CE84(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);

      v18 = sub_224DAED88();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
      v10 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v27 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_224AE7A3C(uint64_t a1)
{
  v2 = v1;
  v35 = sub_224DAE588();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F35A8, &qword_224DB3B60);
  v8 = sub_224DAF8F8();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_224A3CE84(&qword_281350C58, MEMORY[0x277CE3AD8], MEMORY[0x277CE3AE0]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_224AE7D58(uint64_t a1)
{
  v2 = v1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - v5;
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3668, &qword_224DB3C48);
  v8 = sub_224DAF8F8();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_224A33088(&unk_27D6F3B50, &unk_27D6F6570, &qword_224DB3C40, MEMORY[0x277CFA018]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_224AE8078(uint64_t a1)
{
  v2 = v1;
  v35 = sub_224DAC268();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3630, &qword_224DB3C08);
  v8 = sub_224DAF8F8();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_224A3CE84(&qword_281350E50, MEMORY[0x277CF9978], MEMORY[0x277CF9988]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_224AE8394(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3640, &qword_224DB3C18);
  v4 = sub_224DAF8F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_224DAFE68();
      sub_224DAEE78();

      v12 = sub_224DAFEA8();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_224AE8650(uint64_t a1)
{
  v2 = v1;
  v35 = sub_224DAD448();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F35F0, &qword_224DB3BC8);
  v8 = sub_224DAF8F8();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_224A3CE84(&unk_281350CE0, MEMORY[0x277CF9CE8], MEMORY[0x277CF9CF0]);
      v22 = sub_224DAED88();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

uint64_t (*sub_224AE896C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA5DCC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_224AEA210;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_224AE89EC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA5DCC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_224AE8A6C;
  }

  __break(1u);
  return result;
}

void (*sub_224AE8A74(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA5DCC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_224A69AC8;
  }

  __break(1u);
  return result;
}

uint64_t sub_224AE8AF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA5D540](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_224ADAF60(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_224AE8B8C(uint64_t a1)
{
  v2 = sub_224DAE0D8();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_224A3CE84(&qword_281350C70, MEMORY[0x277CF9E98], MEMORY[0x277CF9EA0]);
  result = MEMORY[0x22AA5D540](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_224ADB0B0(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_224AE8D28(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = sub_224A3B79C(0, &qword_2813508D0, 0x277CFA318);
    v5 = sub_224A5D644(&unk_2813508C0, &qword_2813508D0, 0x277CFA318);
    result = MEMORY[0x22AA5D540](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CFA318uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA5DCC0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_224A5E830(&v12, v10, &qword_2813508D0, 0x277CFA318, &qword_27D6F35E0, &qword_224DB3BB8);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224AE8EB4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    v5 = sub_224A5D644(&qword_2813509C8, &unk_2813509D0, 0x277CFA378);
    result = MEMORY[0x22AA5D540](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CFA378uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA5DCC0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_224A5E830(&v12, v10, &unk_2813509D0, 0x277CFA378, &qword_27D6F3638, &qword_224DB3C10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224AE9040(uint64_t a1)
{
  v2 = sub_224DA9688();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_224A3CE84(&qword_281351A80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  result = MEMORY[0x22AA5D540](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_224ADB390(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_224AE924C(uint64_t a1)
{
  v2 = sub_224DAAF48();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_224A3CE84(&qword_281351738, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
  result = MEMORY[0x22AA5D540](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_224ADB670(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_224AE93E8(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = type metadata accessor for ExtensionTask(0);
    v5 = sub_224A3CE84(&qword_28135B9E8, type metadata accessor for ExtensionTask, MEMORY[0x277D85378]);
    result = MEMORY[0x22AA5D540](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AA5DCC0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_224A37578(&v11, v9, type metadata accessor for ExtensionTask, &qword_27D6F3530, &qword_224DB3AC8, type metadata accessor for ExtensionTask);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224AE9590(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_224AEA0C0();
  result = MEMORY[0x22AA5D540](v2, &type metadata for ProcessMonitor.SessionExemptReason, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_224ADBB84(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_224AE9634(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = sub_224A3B79C(0, &qword_281350970, 0x277CFA418);
    v5 = sub_224A5D644(&qword_281350968, &qword_281350970, 0x277CFA418);
    result = MEMORY[0x22AA5D540](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CFA418uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA5DCC0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_224A5E830(&v12, v10, &qword_281350970, 0x277CFA418, &qword_27D6F36E8, &qword_224DB3CB0);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224AE97C0(uint64_t a1)
{
  v2 = sub_224DAE588();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_224A3CE84(&qword_281350C58, MEMORY[0x277CE3AD8], MEMORY[0x277CE3AE0]);
  result = MEMORY[0x22AA5D540](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_224ADC50C(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_224AE995C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = sub_224A3B79C(0, &qword_281350908, 0x277CFA398);
    v5 = sub_224A5D644(&qword_281350900, &qword_281350908, 0x277CFA398);
    result = MEMORY[0x22AA5D540](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CFA398uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA5DCC0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_224A5E830(&v12, v10, &qword_281350908, 0x277CFA398, &qword_27D6F35A0, &qword_224DB3B58);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224AE9AE8(uint64_t a1)
{
  v2 = sub_224DA9908();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_224A3CE84(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x22AA5D540](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_224A5DF04(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_224AE9C84(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = sub_224A3B79C(0, &unk_281350A20, 0x277CFA400);
    v5 = sub_224A5D644(&unk_281350A10, &unk_281350A20, 0x277CFA400);
    result = MEMORY[0x22AA5D540](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CFA400uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA5DCC0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_224A5E830(&v12, v10, &unk_281350A20, 0x277CFA400, &qword_27D6F3680, &qword_224DB3C58);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224AE9E10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_224AEA06C();
  result = MEMORY[0x22AA5D540](v2, &type metadata for MobilePlaceholderService.CacheEvent, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_224ADCDD4(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_224AE9EB4(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(char *, char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v27 - v17;
  v19 = *(a1 + 16);
  v20 = sub_224A33088(a4, a2, a3, MEMORY[0x277CF9FA8]);
  result = MEMORY[0x22AA5D540](v19, v10, v20);
  v28 = result;
  if (v19)
  {
    v22 = v11 + 16;
    v27 = *(v11 + 16);
    v23 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = *(v11 + 72);
    v25 = a5;
    v26 = (v22 - 8);
    do
    {
      v27(v15, v23, v10);
      v25(v18, v15);
      (*v26)(v18, v10);
      v23 += v24;
      --v19;
    }

    while (v19);
    return v28;
  }

  return result;
}

unint64_t sub_224AEA06C()
{
  result = qword_281356198;
  if (!qword_281356198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281356198);
  }

  return result;
}

unint64_t sub_224AEA0C0()
{
  result = qword_28135B788;
  if (!qword_28135B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B788);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_224AEA140(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_224AEA188(uint64_t result, int a2, int a3)
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

uint64_t sub_224AEA218@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v207 = a1;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v5 = *(v206 - 8);
  MEMORY[0x28223BE20](v206, v6);
  v205 = &v171 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v213 = &v171 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v204 = &v171 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v210 = &v171 - v16;
  v221 = sub_224DA9878();
  v224 = *(v221 - 8);
  v18 = MEMORY[0x28223BE20](v221, v17);
  v189 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v192 = &v171 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v225 = &v171 - v24;
  v195 = sub_224DACB08();
  v201 = *(v195 - 8);
  MEMORY[0x28223BE20](v195, v25);
  v197 = &v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_224DACB28();
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200, v27);
  v196 = &v171 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_224DAE4F8();
  v29 = *(v220 - 8);
  MEMORY[0x28223BE20](v220, v30);
  v219 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_224DAB728();
  v32 = *(v218 - 8);
  MEMORY[0x28223BE20](v218, v33);
  v217 = &v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_224DAC2B8();
  v212 = *(v209 - 8);
  v36 = MEMORY[0x28223BE20](v209, v35);
  v186 = &v171 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v203 = &v171 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v202 = &v171 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v188 = &v171 - v46;
  MEMORY[0x28223BE20](v45, v47);
  v187 = &v171 - v48;
  v227 = sub_224DAE928();
  v49 = *(v227 - 1);
  MEMORY[0x28223BE20](v227, v50);
  v226 = &v171 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_224DACB98();
  v53 = *(v52 - 8);
  v55 = MEMORY[0x28223BE20](v52, v54);
  v198 = &v171 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v57);
  v59 = &v171 - v58;
  if (!sub_224D5D150(a2))
  {
LABEL_52:
    v127 = sub_224DACC88();
    return (*(*(v127 - 8) + 56))(a3, 1, 1, v127);
  }

  v208 = a3;
  sub_224DACC68();
  v60 = (*(v53 + 88))(v59, v52);
  v61 = *MEMORY[0x277CF9BF0];
  v181 = v53;
  v62 = *(v53 + 8);
  v182 = v52;
  v62(v59, v52);
  if (v60 != v61)
  {
LABEL_46:
    v116 = sub_224DABF28();
    v117 = v224;
    if (v116 && (v118 = sub_224DAC9E8(), , (v118 & 1) != 0))
    {
      v119 = v213;
      sub_224DA9868();
      v120 = v221;
      (*(v117 + 56))(v119, 0, 1, v221);
      sub_224DABEE8();
      v121 = sub_224DAC2A8();
      v122 = [v121 extensionIdentity];

      LOBYTE(v121) = [v122 isRemote];
      a3 = v208;
      if ((v121 & 1) == 0)
      {
        v123 = v189;
        sub_224DA9808();
        v124 = v196;
        sub_224DA9768();
        (*(v117 + 8))(v123, v120);
        (*(v199 + 104))(v124, *MEMORY[0x277CF9B58], v200);
        (*(v201 + 104))(v197, *MEMORY[0x277CF9B40], v195);
        (*(v181 + 104))(v198, *MEMORY[0x277CF9BD8], v182);
        sub_224DACC28();
        sub_224DACC18();

        v125 = sub_224DACC88();
        return (*(*(v125 - 8) + 56))(a3, 0, 1, v125);
      }
    }

    else
    {
      (*(v117 + 56))(v213, 1, 1, v221);
      sub_224DABEE8();
      a3 = v208;
    }

    goto LABEL_52;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v67 = -1 << *(a2 + 32);
    v64 = ~v67;
    v63 = a2 + 64;
    v68 = -v67;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    else
    {
      v69 = -1;
    }

    v65 = v69 & *(a2 + 64);
    v66 = a2;
  }

  v180 = v64;
  v70 = (v64 + 64) >> 6;
  v193 = *MEMORY[0x277CE3D90];
  v216 = (v49 + 104);
  v215 = (v49 + 8);
  v71 = 0;
  v191 = (v32 + 8);
  v190 = (v29 + 8);
  v183 = *MEMORY[0x277CE3D98];
  v179 = (v212 + 8);
  v177 = (v5 + 1);
  v176 = (v224 + 48);
  v172 = (v224 + 32);
  v178 = (v224 + 8);
  v72 = v65;
  v194 = v63;
  v211 = v66;
  if ((v66 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (!sub_224DAFB18())
  {
LABEL_45:
    sub_224A3B7E4(v66);
    goto LABEL_46;
  }

  v74 = v73;
  swift_unknownObjectRelease();
  *&v230 = v74;
  sub_224DABF48();
  swift_dynamicCast();
  v75 = v232;
  v76 = v71;
  v5 = v72;
  while (1)
  {
    if (!v75)
    {
      goto LABEL_45;
    }

    v79 = sub_224DABF28();
    if (!v79)
    {

      v71 = v76;
      v72 = v5;
      if ((v66 & 0x8000000000000000) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v214 = v5;
    v223 = v75;
    v185 = v71;
    v80 = v79;
    v81 = sub_224DAC9C8();
    v82 = *v216;
    v84 = v226;
    v83 = v227;
    (*v216)(v226, v193, v227);
    v85 = sub_224CD6930(v84, v81);

    v86 = *v215;
    (*v215)(v84, v83);
    v184 = v72;
    v228 = v80;
    if (v85)
    {
      v128 = v187;
      v129 = v209;
      (*(v212 + 16))(v187, v207, v209);
      v130 = sub_224DAB228();
      v131 = sub_224DAF2A8();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v232 = v133;
        *v132 = 136446210;
        sub_224AECAC4(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
        v134 = sub_224DAFD28();
        v136 = v135;
        (*v179)(v128, v129);
        v137 = sub_224A33F74(v134, v136, &v232);

        *(v132 + 4) = v137;
        _os_log_impl(&dword_224A2F000, v130, v131, "%{public}s Control will reload since it is stale", v132, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v133);
        MEMORY[0x22AA5EED0](v133, -1, -1);
        MEMORY[0x22AA5EED0](v132, -1, -1);

LABEL_62:
        v148 = v208;
        v149 = v197;
        v150 = v195;
        v151 = v201;
        v152 = v198;
        v153 = v182;
        v154 = v181;
        (*(v199 + 104))(v196, *MEMORY[0x277CF9B50], v200);
        (*(v151 + 104))(v149, *MEMORY[0x277CF9B40], v150);
        (*(v154 + 104))(v152, *MEMORY[0x277CF9BE8], v153);
        sub_224DACC48();
        sub_224DACC38();

        sub_224A3B7E4(v211);
        v155 = sub_224DACC88();
        return (*(*(v155 - 8) + 56))(v148, 0, 1, v155);
      }

LABEL_61:
      (*v179)(v128, v129);
      goto LABEL_62;
    }

    sub_224DABEB8();
    __swift_project_boxed_opaque_existential_1(&v232, v233);
    v87 = v217;
    sub_224DAD168();
    v88 = sub_224DAB668();
    v90 = v89;
    (*v191)(v87, v218);
    __swift_destroy_boxed_opaque_existential_1(&v232);
    sub_224DAC9F8();
    __swift_project_boxed_opaque_existential_1(&v232, v233);
    v91 = v219;
    sub_224DAE7E8();
    swift_getKeyPath();
    v92 = sub_224DAE4A8();

    (*v190)(v91, v220);
    if (v92)
    {
      if (v92[2])
      {
        v93 = v92[4];
        v29 = v92[5];
        sub_224A77FD0(v93, v29);
      }

      else
      {
        v93 = 0;
        v29 = 0xF000000000000000;
      }
    }

    else
    {
      v93 = 0;
      v29 = 0xF000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v232);
    if (v90 >> 60 == 15)
    {
      if (v29 >> 60 != 15)
      {
        goto LABEL_56;
      }

      v94 = v88;
      v95 = v90;
      goto LABEL_34;
    }

    if (v29 >> 60 == 15)
    {
LABEL_56:
      sub_224A77FD0(v88, v90);
      sub_224AECAB0(v93, v29);
      sub_224AC1D9C(v88, v90);
      sub_224AC1D9C(v93, v29);
LABEL_57:
      v128 = v188;
      v129 = v209;
      (*(v212 + 16))(v188, v207, v209);
      v138 = sub_224DAB228();
      v139 = sub_224DAF2A8();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v226 = v140;
        v227 = swift_slowAlloc();
        v232 = v227;
        *v140 = 136446210;
        sub_224AECAC4(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
        v141 = sub_224DAFD28();
        v143 = v142;
        (*v179)(v128, v129);
        v144 = sub_224A33F74(v141, v143, &v232);

        v145 = v226;
        *(v226 + 4) = v144;
        v146 = v145;
        _os_log_impl(&dword_224A2F000, v138, v139, "%{public}s Control will reload since its locale token is out of date", v145, 0xCu);
        v147 = v227;
        __swift_destroy_boxed_opaque_existential_1(v227);
        MEMORY[0x22AA5EED0](v147, -1, -1);
        MEMORY[0x22AA5EED0](v146, -1, -1);
        sub_224A78024(v88, v90);
        sub_224AC1D9C(v93, v29);

        goto LABEL_62;
      }

      sub_224A78024(v88, v90);
      sub_224AC1D9C(v93, v29);

      goto LABEL_61;
    }

    sub_224A77FD0(v88, v90);
    sub_224A77FD0(v88, v90);
    sub_224AECAB0(v93, v29);
    v96 = sub_224CCC88C(v88, v90, v93, v29);
    sub_224A78024(v88, v90);
    sub_224AC1D9C(v93, v29);
    sub_224AC1D9C(v88, v90);
    if (!v96)
    {
      goto LABEL_57;
    }

    sub_224A78024(v88, v90);
    v94 = v93;
    v95 = v29;
LABEL_34:
    sub_224AC1D9C(v94, v95);
    v5 = qword_224DB3ED8;
    sub_224A3796C(v222 + OBJC_IVAR____TtC10ChronoCore32ControlReloadConfigurationPolicy_reloadStateService, &v230, &qword_27D6F37A0, qword_224DB3ED8);
    v66 = v211;
    if (!v231)
    {

      sub_224A3311C(&v230, &qword_27D6F37A0, qword_224DB3ED8);
      goto LABEL_43;
    }

    sub_224A36F98(&v230, &v232);
    v97 = sub_224DAC9C8();
    v5 = v226;
    v29 = v227;
    v82(v226, v183, v227);
    v98 = sub_224CD6930(v5, v97);

    v86(v5, v29);
    if ((v98 & 1) == 0)
    {

      goto LABEL_42;
    }

    sub_224DAC9F8();
    __swift_project_boxed_opaque_existential_1(&v230, v231);
    sub_224DAE7F8();
    __swift_destroy_boxed_opaque_existential_1(&v230);
    v174 = v233;
    v175 = v234;
    v173 = __swift_project_boxed_opaque_existential_1(&v232, v233);
    v99 = v202;
    sub_224DABF08();
    v100 = sub_224DAC2A8();
    v101 = [v100 extensionIdentity];

    v102 = *v179;
    v103 = v209;
    (*v179)(v99, v209);
    v104 = v205;
    sub_224DAF528();

    v105 = v203;
    sub_224DABF08();
    v106 = sub_224DAC2A8();
    v107 = [v106 kind];

    sub_224DAEE18();
    v29 = v102;
    v102(v105, v103);
    v108 = v210;
    sub_224DAD1A8();

    (*v177)(v104, v206);
    v109 = v204;
    v5 = &qword_27D6F32B0;
    sub_224A3796C(v108, v204, &qword_27D6F32B0, &qword_224DB3EA0);
    v110 = v221;
    if ((*v176)(v109, 1, v221) != 1)
    {
      break;
    }

    sub_224A3311C(v108, &qword_27D6F32B0, &qword_224DB3EA0);
    (*v178)(v225, v110);
    sub_224A3311C(v109, &qword_27D6F32B0, &qword_224DB3EA0);
    v66 = v211;
LABEL_42:
    __swift_destroy_boxed_opaque_existential_1(&v232);
LABEL_43:
    v71 = v76;
    v72 = v214;
    v63 = v194;
    if ((v66 & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v77 = v71;
    v78 = v72;
    v76 = v71;
    if (!v72)
    {
      while (1)
      {
        v76 = (v77 + 1);
        if (__OFADD__(v77, 1))
        {
          break;
        }

        if (v76 >= v70)
        {
          goto LABEL_45;
        }

        v78 = *(v63 + 8 * v76);
        ++v77;
        if (v78)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_66;
    }

LABEL_18:
    v5 = ((v78 - 1) & v78);
    v75 = *(*(v66 + 56) + ((v76 << 9) | (8 * __clz(__rbit64(v78)))));
  }

  v111 = v192;
  (*v172)(v192, v109, v110);
  v112 = v225;
  v113 = sub_224DA9788();
  v66 = v211;
  if ((v113 & 1) == 0)
  {
    v114 = v110;

    v5 = v178;
    v115 = *v178;
    (*v178)(v111, v114);
    sub_224A3311C(v210, &qword_27D6F32B0, &qword_224DB3EA0);
    v115(v112, v114);
    goto LABEL_42;
  }

  v71 = v186;
  v63 = v209;
  (*(v212 + 16))(v186, v207, v209);
  v5 = sub_224DAB228();
  v156 = sub_224DAF2A8();
  if (os_log_type_enabled(v5, v156))
  {
    v157 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    *&v230 = v158;
    *v157 = 136446210;
    sub_224AECAC4(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
    v159 = sub_224DAFD28();
    v161 = v160;
    (v29)(v71, v63);
    v162 = sub_224A33F74(v159, v161, &v230);

    *(v157 + 4) = v162;
    _os_log_impl(&dword_224A2F000, v5, v156, "%{public}s Control will reload since it was previously removed from the store and its requested reload date is more recent than the archive creation date.", v157, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v158);
    MEMORY[0x22AA5EED0](v158, -1, -1);
    MEMORY[0x22AA5EED0](v157, -1, -1);

    goto LABEL_67;
  }

LABEL_66:

  (v29)(v71, v63);
LABEL_67:
  v163 = v208;
  v164 = v201;
  v165 = v198;
  v166 = v182;
  v167 = v181;
  (*(v199 + 104))(v196, *MEMORY[0x277CF9B50], v200);
  (*(v164 + 104))(v197, *MEMORY[0x277CF9B40], v195);
  (*(v167 + 104))(v165, *MEMORY[0x277CF9BE8], v166);
  sub_224DACC48();
  sub_224DACC38();

  sub_224A3B7E4(v211);
  v168 = *v178;
  v169 = v221;
  (*v178)(v192, v221);
  sub_224A3311C(v210, &qword_27D6F32B0, &qword_224DB3EA0);
  v168(v225, v169);
  v170 = sub_224DACC88();
  (*(*(v170 - 8) + 56))(v163, 0, 1, v170);
  return __swift_destroy_boxed_opaque_existential_1(&v232);
}

uint64_t sub_224AEBCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v84 = a5;
  v86 = a4;
  v8 = sub_224DACB08();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v81 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DA9878();
  v74 = *(v11 - 8);
  v75 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v73 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DABD68();
  v87 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v80 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DACB28();
  v78 = *(v17 - 8);
  v79 = v17;
  v19 = MEMORY[0x28223BE20](v17, v18);
  v77 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v82 = v70 - v22;
  v23 = sub_224DACB98();
  v85 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23, v24);
  v27 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = v70 - v30;
  v33 = MEMORY[0x28223BE20](v29, v32);
  v35 = v70 - v34;
  MEMORY[0x28223BE20](v33, v36);
  v83 = (v70 - v37);
  v38 = sub_224DAC2A8();
  v39 = [v38 extensionIdentity];

  LOBYTE(v38) = [v39 isRemote];
  if (v38)
  {
    v40 = sub_224DACC88();
    (*(*(v40 - 8) + 56))(a1, 1, 1, v40);
    v41 = *MEMORY[0x277CF98A8];
    v42 = *(v87 + 104);
    v43 = a2;
    v44 = v14;
  }

  else
  {
    v76 = v14;
    v71 = a1;
    v72 = a2;
    if (sub_224AEC7B4(v84))
    {
      v70[0] = a3;
      sub_224DACC68();
      v45 = v85;
      v46 = *(v85 + 104);
      v46(v31, *MEMORY[0x277CF9BF0], v23);
      v47 = sub_224DACB88();
      v48 = *(v45 + 8);
      v48(v31, v23);
      v48(v35, v23);
      v70[1] = v45 + 8;
      v84 = v48;
      if (v47 & 1) != 0 || (sub_224DACC68(), v46(v31, *MEMORY[0x277CF9B60], v23), v49 = sub_224DACB88(), v48(v31, v23), v48(v35, v23), (v49))
      {
        v50 = swift_allocObject();
        *(v50 + 16) = 0xD000000000000019;
        *(v50 + 24) = 0x8000000224DC58C0;
        v51 = v83;
        *v83 = v50;
        v46(v51, *MEMORY[0x277CF9B70], v23);
        v70[0] = sub_224DACBB8();
        v52 = MEMORY[0x277CF98B8];
        v53 = MEMORY[0x277CF9B50];
        v54 = v76;
      }

      else
      {
        v64 = sub_224DACBB8();
        v65 = v83;
        if (v64 < 1)
        {
          v66 = sub_224DAC2A8();

          sub_224DACC68();
          v67 = (*(v85 + 88))(v27, v23);
          v68 = *MEMORY[0x277CF9B80];
          if (v67 == v68)
          {
            v84(v27, v23);
            sub_224DACC68();
          }

          else
          {
            v70[0] = swift_allocBox();
            sub_224DACC68();
            *v65 = v70[0];
            v46(v65, v68, v23);
            v84(v27, v23);
          }

          v70[0] = sub_224DACBF8();
          v69 = v73;
          sub_224DA9868();
          sub_224DA9768();
          (*(v74 + 8))(v69, v75);
          v52 = MEMORY[0x277CF98B0];
          v53 = MEMORY[0x277CF9B58];
          v54 = v76;
          v51 = v83;
        }

        else
        {
          sub_224DACC68();
          result = sub_224DACBB8();
          if (__OFSUB__(result, 1))
          {
            __break(1u);
            return result;
          }

          v52 = MEMORY[0x277CF98B8];
          v53 = MEMORY[0x277CF9B50];
          v54 = v76;
          v51 = v83;
          v70[0] = result - 1;
        }
      }

      v56 = v78;
      v55 = v79;
      v57 = v82;
      (*(v78 + 104))(v82, *v53, v79);
      v58 = v80;
      (*(v87 + 104))(v80, *v52, v54);
      (*(v56 + 16))(v77, v57, v55);
      sub_224DACC08();
      (*(v85 + 16))(v35, v51, v23);
      sub_224DACBD8();
      sub_224DACC28();
      v59 = v71;
      sub_224DACC18();
      (*(v56 + 8))(v57, v55);
      v84(v51, v23);
      v60 = sub_224DACC88();
      (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
      return (*(v87 + 32))(v72, v58, v76);
    }

    v62 = sub_224DAC2A8();

    v63 = sub_224DACC88();
    (*(*(v63 - 8) + 56))(v71, 1, 1, v63);
    v41 = *MEMORY[0x277CF98B0];
    v42 = *(v87 + 104);
    v43 = v72;
    v44 = v76;
  }

  return v42(v43, v41, v44);
}

uint64_t sub_224AEC574()
{
  v1 = OBJC_IVAR____TtC10ChronoCore32ControlReloadConfigurationPolicy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore32ControlReloadConfigurationPolicy_reloadStateService, &qword_27D6F37A0, qword_224DB3ED8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControlReloadConfigurationPolicy(uint64_t a1)
{
  result = qword_281352F50;
  if (!qword_281352F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224AEC684(uint64_t a1)
{
  result = sub_224DAB258();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_224AEC7B4(void *a1)
{
  v2 = sub_224DAE6E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_224DAEE18();
  v10 = v9;

  v11 = [a1 code];
  if (sub_224DAEE18() == v8 && v12 == v10)
  {
  }

  else
  {
    v14 = sub_224DAFD88();

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C10], v2);
  v15 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v15 == v11)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (sub_224DAEE18() == v8 && v16 == v10)
  {
  }

  else
  {
    v18 = sub_224DAFD88();

    if ((v18 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C60], v2);
  v19 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v19 == v11)
  {
LABEL_17:

    return 0;
  }

LABEL_18:
  if (sub_224DAEE18() == v8 && v21 == v10)
  {
  }

  else
  {
    v22 = sub_224DAFD88();

    if ((v22 & 1) == 0)
    {

      return 1;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3BF0], v2);
  v23 = sub_224DAE6D8();

  (*(v3 + 8))(v6, v2);
  return v23 != v11;
}