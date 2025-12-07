uint64_t sub_240FF5F68(uint64_t a1)
{
  v2 = v1[9];
  v72 = v1[8];
  v73 = v2;
  v3 = v1[11];
  v74 = v1[10];
  v75 = v3;
  v4 = v1[5];
  v68 = v1[4];
  v69 = v4;
  v5 = v1[7];
  v70 = v1[6];
  v71 = v5;
  v6 = v1[1];
  v66[0] = *v1;
  v66[1] = v6;
  v7 = v1[3];
  v66[2] = v1[2];
  v67 = v7;
  if (BYTE8(v70))
  {
    return 0;
  }

  v9 = BYTE8(v66[0]);
  v11 = *(&v67 + 1);
  v10 = v68;
  if (BYTE8(v74))
  {
    v14 = *(&v69 + 1);
    v13 = v70;
    v64 = 58;
    v65 = 0xE100000000000000;
    v15 = BYTE7(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v15 = *(&v69 + 1) & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
    }

    else
    {
      sub_24102CC00(v66, &v62);
      v14 = v62;
      v13 = v63;
    }

    MEMORY[0x245CD70E0](v14, v13);

    MEMORY[0x245CD70E0](58, 0xE100000000000000);
    v18 = sub_240FF664C(a1);
    MEMORY[0x245CD70E0](v18);

    v16 = v64;
    v17 = v65;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v19 = *&v66[0];
  if (*&v66[0] >= 2uLL)
  {
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v21 = *(v20 + 16);

  if (!v21)
  {
    v24 = 0xE000000000000000;
    goto LABEL_57;
  }

  if (v21 == 1)
  {
    if (v19 >= 2 && (v9 & 2) != 0)
    {
      v22 = 42;
      if ((BYTE1(v73) & 0xFD) != 0)
      {
        v22 = 0;
      }

      v23 = 0xE000000000000000;
      if ((BYTE1(v73) & 0xFD) == 0)
      {
        v23 = 0xE100000000000000;
      }

      v64 = v22;
      v65 = v23;
    }

    else
    {
      v64 = 0;
      v65 = 0xE000000000000000;
      if (v19 < 2)
      {
        v19 = MEMORY[0x277D84F90];
LABEL_41:
        if (*(v19 + 16))
        {
          v39 = *(v19 + 32);
          v40 = *(v19 + 40);
          v41 = *(v19 + 48);
          sub_240FF0D90(v39, v40, v41);

          v42 = sub_241034020(v39, v40, v41);
          v44 = v43;
          sub_240FF0D30(v39, v40, v41);
          MEMORY[0x245CD70E0](v42, v44);

          v45 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v45 = v11 & 0xFFFFFFFFFFFFLL;
          }

          if (v45)
          {
            goto LABEL_54;
          }

          goto LABEL_55;
        }

        __break(1u);
        return result;
      }
    }

    goto LABEL_41;
  }

  v61 = v9;
  v25 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  if (v19 >= 2)
  {

    v26 = v19;
  }

  v27 = *(v26 + 16);
  if (!v27)
  {

    v28 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  v58 = v11;
  v59 = v16;
  v60 = v17;
  v62 = v25;
  sub_240FE41A0(0, v27, 0);
  v28 = v62;
  v29 = (v26 + 48);
  do
  {
    v30 = *(v29 - 2);
    v31 = *(v29 - 1);
    v32 = *v29;
    if (v32 >> 6)
    {
      if (v32 >> 6 == 1)
      {
        v64 = 0;
        v65 = 0xE000000000000000;

        MEMORY[0x245CD70E0](45, 0xE100000000000000);
        sub_241046A98();
        goto LABEL_34;
      }

      v64 = 45;
      v33 = 0xE100000000000000;
    }

    else
    {
      v64 = 11565;
      v33 = 0xE200000000000000;
    }

    v65 = v33;
    sub_240FF0D90(v30, v31, v32);
    MEMORY[0x245CD70E0](v30, v31);
LABEL_34:
    sub_240FF0D30(v30, v31, v32);
    v34 = v64;
    v35 = v65;
    v62 = v28;
    v37 = *(v28 + 16);
    v36 = *(v28 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_240FE41A0((v36 > 1), v37 + 1, 1);
      v28 = v62;
    }

    v29 += 24;
    *(v28 + 16) = v37 + 1;
    v38 = v28 + 16 * v37;
    *(v38 + 32) = v34;
    *(v38 + 40) = v35;
    --v27;
  }

  while (v27);

  v16 = v59;
  v17 = v60;
  v11 = v58;
LABEL_47:
  if (v19 >= 2 && (v61 & 2) != 0 && (BYTE1(v73) & 0xFD) == 0)
  {
    v47 = 0xE100000000000000;
    v48 = 42;
  }

  else
  {
    v64 = 40;
    v65 = 0xE100000000000000;
    v62 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
    v46 = sub_241046AA8();
    MEMORY[0x245CD70E0](v46);

    MEMORY[0x245CD70E0](41, 0xE100000000000000);
    v48 = v64;
    v47 = v65;
  }

  v64 = v48;
  v65 = v47;
  MEMORY[0x245CD70E0](31527, 0xE200000000000000);
  v62 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
  v49 = sub_241046AA8();
  v51 = v50;

  MEMORY[0x245CD70E0](v49, v51);

  MEMORY[0x245CD70E0](10109, 0xE200000000000000);
  v52 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v52 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {
LABEL_54:
    v62 = 91;
    v63 = 0xE100000000000000;
    sub_240FE05E8();
    sub_241046EE8();
    v53 = sub_241046EE8();
    v55 = v54;

    MEMORY[0x245CD70E0](v53, v55);

    MEMORY[0x245CD70E0](93, 0xE100000000000000);
    v56 = v62;
    v57 = v63;
    goto LABEL_56;
  }

LABEL_55:
  v56 = 0;
  v57 = 0xE000000000000000;
LABEL_56:
  MEMORY[0x245CD70E0](v56, v57);

  v21 = v64;
  v24 = v65;
LABEL_57:
  v64 = 39;
  v65 = 0xE100000000000000;
  MEMORY[0x245CD70E0](v21, v24);

  MEMORY[0x245CD70E0](v16, v17);

  MEMORY[0x245CD70E0](39, 0xE100000000000000);
  return v64;
}

uint64_t sub_240FF664C(uint64_t result)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  if (v4 <= 1)
  {
    if (*(v1 + 144))
    {
      v11 = *(v2 + 16);
      if (v11)
      {
        v25 = MEMORY[0x277D84F90];
        sub_240FE41A0(0, v11, 0);
        v12 = (v2 + 40);
        do
        {
          v13 = *(v12 - 1);
          v14 = *v12;

          MEMORY[0x245CD70E0](v13, v14);

          v16 = *(v25 + 16);
          v15 = *(v25 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_240FE41A0((v15 > 1), v16 + 1, 1);
          }

          *(v25 + 16) = v16 + 1;
          v17 = v25 + 16 * v16;
          *(v17 + 32) = 11818;
          *(v17 + 40) = 0xE200000000000000;
          v12 += 2;
          --v11;
        }

        while (v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
        sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
        v18 = sub_241046AA8();
        v20 = v19;

        MEMORY[0x245CD70E0](v18, v20);

        MEMORY[0x245CD70E0](39, 0xE100000000000000);
      }

      v24 = 0x73656C69665FLL;
      sub_240FE05E8();
      sub_241046EE8();

      v21 = sub_241046EE8();
      v23 = v22;

      MEMORY[0x245CD70E0](v21, v23);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
      sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
      v10 = sub_241046AA8();
      v24 = 40;
      MEMORY[0x245CD70E0](v10);

      MEMORY[0x245CD70E0](41, 0xE100000000000000);
    }

    return v24;
  }

  if (v4 == 2)
  {
    v24 = 0;
    sub_241047058();
    MEMORY[0x245CD70E0](0xD00000000000001ELL, 0x800000024104E940);
    MEMORY[0x245CD70E0](v2, v3);
    MEMORY[0x245CD70E0](0xD00000000000001ALL, 0x800000024104E960);
    return v24;
  }

  if (v4 == 3)
  {
    if (*(result + 16))
    {
      v5 = result;
      (*(*(result + 40) + 24))(*(result + 32));
      sub_240FE05E8();
      v6 = sub_241046EE8();
      v8 = v7;

      sub_241047058();

      MEMORY[0x245CD70E0](v6, v8);

      MEMORY[0x245CD70E0](0x646E616D6D6F635FLL, 0xED000020656D616ELL);
      v9 = sub_240FF2EF0(v5);
      MEMORY[0x245CD70E0](v9);

      MEMORY[0x245CD70E0](0x7D7364726F772420, 0xE800000000000000);
      return 0xD000000000000016;
    }

    else
    {
      __break(1u);
    }
  }

  else if (v2 | v3)
  {
    return 0x2D2073656C69665FLL;
  }

  else
  {
    return 0;
  }

  return result;
}

double sub_240FF6C48@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    for (i = a1 + 40; ; i += 16)
    {
      (*(*i + 16))(&v21);
      v33[6] = v27;
      v33[7] = v28;
      v33[8] = v29;
      v34 = v30;
      v33[2] = v23;
      v33[3] = v24;
      v33[4] = v25;
      v33[5] = v26;
      v33[0] = v21;
      v33[1] = v22;
      v6 = v26;

      sub_240FE724C(v33);

      v7 = HIBYTE(*(&v6 + 1)) & 0xFLL;
      if ((*(&v6 + 1) & 0x2000000000000000) == 0)
      {
        v7 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_8;
      }

      --v4;
    }

    v8 = sub_2410390E8(0, 0xE000000000000000, 0, 0);
    v10 = v9;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_241047BF0;
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
    *(v13 + 48) = v12;

    *&v21 = &unk_2852DA550;
    *(&v21 + 1) = 1;
    v22 = 0uLL;
    *&v23 = v13;
    *(&v23 + 1) = MEMORY[0x277D84F90];
    LOBYTE(v24) = 0;
    *(&v24 + 1) = 0xD000000000000011;
    v25 = 0x800000024104E9A0;
    v26 = 0xE000000000000000;
    *&v27 = 0xE000000000000000;
    BYTE8(v27) = 0;
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    v29 = 0uLL;
    LOWORD(v30) = 4;
    *(&v30 + 1) = nullsub_1;
    *&v31 = 0;
    BYTE8(v31) = 0;
    *&v32 = nullsub_1;
    *(&v32 + 1) = 0;
    nullsub_1();
  }

  else
  {
LABEL_8:
    sub_240FE5898(&v21);
  }

  v14 = v30;
  a2[8] = v29;
  a2[9] = v14;
  v15 = v32;
  a2[10] = v31;
  a2[11] = v15;
  v16 = v26;
  a2[4] = v25;
  a2[5] = v16;
  v17 = v28;
  a2[6] = v27;
  a2[7] = v17;
  v18 = v22;
  *a2 = v21;
  a2[1] = v18;
  result = *&v23;
  v20 = v24;
  a2[2] = v23;
  a2[3] = v20;
  return result;
}

double sub_240FF6E68@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = sub_240FF7000(0, a1);
  if (*(v3 + 2))
  {
    v4 = sub_2410390E8(0, 0xE000000000000000, 0, 0);
    v6 = v5;
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_241047BF0;
    *(v9 + 32) = v4;
    *(v9 + 40) = v6;
    *(v9 + 48) = v8;

    *&v17 = v3;
    *(&v17 + 1) = 1;
    v18 = 0uLL;
    *&v19 = v9;
    *(&v19 + 1) = MEMORY[0x277D84F90];
    LOBYTE(v20) = 0;
    *(&v20 + 1) = 0xD000000000000016;
    v21 = 0x800000024104E980;
    v22 = 0xE000000000000000;
    *&v23 = 0xE000000000000000;
    BYTE8(v23) = 0;
    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    v25 = 0uLL;
    LOWORD(v26) = 4;
    *(&v26 + 1) = nullsub_1;
    *&v27 = 0;
    BYTE8(v27) = 0;
    *&v28 = nullsub_1;
    *(&v28 + 1) = 0;
    nullsub_1();
  }

  else
  {

    sub_240FE5898(&v17);
  }

  v10 = v26;
  a2[8] = v25;
  a2[9] = v10;
  v11 = v28;
  a2[10] = v27;
  a2[11] = v11;
  v12 = v22;
  a2[4] = v21;
  a2[5] = v12;
  v13 = v24;
  a2[6] = v23;
  a2[7] = v13;
  v14 = v18;
  *a2 = v17;
  a2[1] = v14;
  result = *&v19;
  v16 = v20;
  a2[2] = v19;
  a2[3] = v16;
  return result;
}

char *sub_240FF7000(char a1, uint64_t a2)
{
  v18 = a2;
  v3 = *(a2 + 16);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = 1 - v3;
  v5 = a2 + 16 * v3 + 24;
  while (1)
  {
    (*(*v5 + 16))(v12);
    v15[6] = v12[6];
    v15[7] = v12[7];
    v16 = v13;
    v17 = v14;
    v15[2] = v12[2];
    v15[3] = v12[3];
    v15[4] = v12[4];
    v15[5] = v12[5];
    v15[0] = v12[0];
    v15[1] = v12[1];
    v6 = *(&v13 + 1);

    sub_240FE724C(v15);
    if (v6)
    {
      break;
    }

    ++v4;
    v5 -= 16;
    if (v4 == 1)
    {
      goto LABEL_9;
    }
  }

  MEMORY[0x28223BE20](v7);
  *&v12[0] = -v4;
  sub_240FF7510(v12, v15);
  if (!*&v15[0])
  {
LABEL_9:
    *&v15[0] = MEMORY[0x277D84FA0];
    v11 = sub_240FE0C08(&unk_2852DA490);
    swift_arrayDestroy();

    *&v15[0] = v11;
    LOBYTE(v12[0]) = a1;
    v10 = sub_240FFEBA4(v12);
    goto LABEL_10;
  }

  (*(*(&v15[0] + 1) + 16))(v15);
  v8 = *(&v16 + 1);

  result = sub_240FE724C(v15);
  if (v8)
  {
    *&v12[0] = v8;
    LOBYTE(v18) = a1;
    v10 = sub_240FFEBA4(&v18);
LABEL_10:

    return v10;
  }

  __break(1u);
  return result;
}

void *sub_240FF720C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v7 = a3;
  result = a1(&v6, &v7);
  if (!v4)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_240FF7268(uint64_t a1)
{
  result = sub_240FF4E24(0, a1);
  v3 = result;
  v5 = v4;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = result + 32;
    v9 = MEMORY[0x277D84F90];
    v28 = result + 32;
    do
    {
      v10 = (v8 + 192 * v7);
      v11 = v7;
      while (1)
      {
        if (v11 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *v10;
        v13 = v10[1];
        v14 = v10[3];
        v44 = v10[2];
        v45 = v14;
        v42 = v12;
        v43 = v13;
        v15 = v10[4];
        v16 = v10[5];
        v17 = v10[7];
        v48 = v10[6];
        v49 = v17;
        v46 = v15;
        v47 = v16;
        v18 = v10[8];
        v19 = v10[9];
        v20 = v10[11];
        v52 = v10[10];
        v53 = v20;
        v50 = v18;
        v51 = v19;
        v7 = v11 + 1;
        v38 = v18;
        v39 = v19;
        v40 = v52;
        v41 = v20;
        v34 = v46;
        v35 = v47;
        v36 = v48;
        v37 = v49;
        v30 = v42;
        v31 = v43;
        v32 = v44;
        v33 = v45;
        sub_240FE0990(&v42, v29);
        v21 = sub_240FF5F68(a1);
        v23 = v22;
        result = sub_240FF0CCC(&v42);
        if (v23)
        {
          break;
        }

        v10 += 12;
        ++v11;
        if (v6 == v7)
        {
          goto LABEL_15;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v27 = v5;
      if ((result & 1) == 0)
      {
        result = sub_240FE2E68(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
      }

      v25 = *(v9 + 16);
      v24 = *(v9 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_240FE2E68((v24 > 1), v25 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v25 + 1;
      v26 = v9 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v5 = v27;
      v8 = v28;
    }

    while (v6 - 1 != v11);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

LABEL_15:

  return v9;
}

unint64_t sub_240FF7468()
{
  result = qword_27E51F528;
  if (!qword_27E51F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F528);
  }

  return result;
}

unint64_t sub_240FF74BC()
{
  result = qword_27E51F540;
  if (!qword_27E51F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F540);
  }

  return result;
}

unint64_t *sub_240FF7510@<X0>(unint64_t *result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = **(v2 + 16);
    if (v3 < *(v4 + 16))
    {
      *a2 = *(v4 + 16 * v3 + 32);
      return result;
    }
  }

  __break(1u);
  return result;
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

uint64_t sub_240FF7560(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_240FF75A8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_240FF7610()
{
  v1 = sub_241046AE8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_241046948();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - v7;
  v9 = v0[3];
  v30 = v0[2];
  v31 = v9;
  v10 = v0[5];
  v32 = v0[4];
  v33 = v10;
  v11 = v0[1];
  v28 = *v0;
  v29 = v11;
  sub_241046998();
  swift_allocObject();
  sub_240FF78E4(&v28, &v22);
  sub_241046988();
  sub_241046938();
  sub_241046968();
  sub_241046928();
  v12 = sub_241046958();
  sub_240FF7940(v8, v6);
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v8, v2);
  v12(&v22, 0);
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  sub_240FF7C18();
  v14 = sub_241046978();
  v16 = v15;
  v21[2] = v24;
  v21[3] = v25;
  v21[4] = v26;
  v21[5] = v27;
  v21[0] = v22;
  v21[1] = v23;
  sub_240FF7C6C(v21);
  sub_241046AD8();
  v17 = sub_241046AC8();
  if (v18)
  {
    v19 = v17;
    sub_240FF7CC0(v14, v16);

    return v19;
  }

  else
  {
    sub_240FF7CC0(v14, v16);

    return 0;
  }
}

uint64_t sub_240FF7940(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F550, &qword_241048558);
  v5 = MEMORY[0x28223BE20](v4);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = sub_241046948();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = *(v10 + 16);
  v25 = v2;
  v16(v13, v2, v9);
  v23 = sub_240FF7D14(&qword_27E51F558, MEMORY[0x277CC8730]);
  sub_241046F18();
  sub_240FF7D14(&qword_27E51F560, MEMORY[0x277CC8720]);
  v24 = a2;
  v17 = sub_241046AB8();
  v27 = v4;
  v18 = *(v4 + 48);
  *v8 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v10 + 32))(&v8[v18], v15, v9);
  }

  else
  {
    (*(v10 + 8))(v15, v9);
    v19 = v24;
    v16(&v8[v18], v24, v9);
    v16(v13, v19, v9);
    sub_241046F28();
  }

  v20 = v26;
  sub_240FF7D58(v8, v26);
  v21 = *v20;
  (*(v10 + 32))(v28, &v20[*(v27 + 48)], v9);
  return v21;
}

unint64_t sub_240FF7C18()
{
  result = qword_27E51F548;
  if (!qword_27E51F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F548);
  }

  return result;
}

uint64_t sub_240FF7CC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_240FF7D14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_241046948();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_240FF7D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F550, &qword_241048558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240FF7DC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = (a1 + 16 + 16 * v1);
    v4 = *v3;
    v5 = *(v3[1] + 8);
    LOBYTE(v46[0]) = 2;
    v47 = sub_240FDF86C(v4, v5, v46, 0, 0, 0);
    v48 = v6;
    sub_240FF6C48(a1, &v34);
    v46[8] = v42;
    v46[9] = v43;
    v46[10] = v44;
    v46[11] = v45;
    v46[4] = v38;
    v46[5] = v39;
    v46[6] = v40;
    v46[7] = v41;
    v46[0] = v34;
    v46[1] = v35;
    v46[2] = v36;
    v46[3] = v37;
    if (sub_240FE5818(v46) != 1)
    {
      v30 = v42;
      v31 = v43;
      v32 = v44;
      v33 = v45;
      v26 = v38;
      v27 = v39;
      v28 = v40;
      v29 = v41;
      v22 = v34;
      v23 = v35;
      v24 = v36;
      v25 = v37;
      sub_24101DC78(&v22);
      sub_240FE07E8(&v34, &qword_27E51F460, &unk_24104AF30);
    }

    sub_240FF6E68(a1, &v10);
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    if (sub_240FE5818(&v22) != 1)
    {
      v9[8] = v18;
      v9[9] = v19;
      v9[10] = v20;
      v9[11] = v21;
      v9[4] = v14;
      v9[5] = v15;
      v9[6] = v16;
      v9[7] = v17;
      v9[0] = v10;
      v9[1] = v11;
      v9[2] = v12;
      v9[3] = v13;
      sub_24101DC78(v9);
      sub_240FE07E8(&v10, &qword_27E51F460, &unk_24104AF30);
    }

    return v47;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    sub_240FFBBA4(MEMORY[0x277D84F90]);
  }

  return v7;
}

uint64_t sub_240FF7F90(unint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84F90];
  v159 = MEMORY[0x277D84F90];
  v160 = sub_240FFBBA4(MEMORY[0x277D84F90]);
  v5 = *(a1 + 16);

  v117 = a2;

  v119 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = a1 + 32;
    v9 = v5;
    v115 = a1 + 32;
    v116 = a1;
    while (v7 < v9)
    {
      v10 = (v8 + 192 * v7);
      v11 = v10[9];
      v12 = v10[7];
      v143 = v10[8];
      v144 = v11;
      v13 = v10[9];
      v14 = v10[11];
      v145 = v10[10];
      v146 = v14;
      v15 = v10[5];
      v16 = v10[3];
      v139 = v10[4];
      v140 = v15;
      v17 = v10[5];
      v18 = v10[7];
      v141 = v10[6];
      v142 = v18;
      v19 = v10[1];
      v136[0] = *v10;
      v136[1] = v19;
      v20 = v10[3];
      v22 = *v10;
      v21 = v10[1];
      v137 = v10[2];
      v138 = v20;
      v155 = v143;
      v156 = v13;
      v23 = v10[11];
      v157 = v145;
      v158 = v23;
      v151 = v139;
      v152 = v17;
      v153 = v141;
      v154 = v12;
      v147 = v22;
      v148 = v21;
      v24 = v7 + 1;
      v149 = v137;
      v150 = v16;
      if (v20 == 1)
      {
        v25 = sub_240FF9A18(v7 + 1, v9, a1, &v147);
        if (v26)
        {
          v27 = v9;
        }

        else
        {
          v27 = v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
        result = swift_allocObject();
        v28 = v155;
        v29 = v154;
        v132 = v155;
        v133 = v156;
        v30 = v157;
        v134 = v157;
        v135 = v158;
        v31 = v151;
        v32 = v150;
        v128 = v151;
        v129 = v152;
        v33 = v152;
        v34 = v153;
        v130 = v153;
        v131 = v154;
        v124 = v147;
        v125 = v148;
        v36 = v147;
        v35 = v148;
        v37 = v149;
        v126 = v149;
        v127 = v150;
        *(result + 176) = v156;
        *(result + 192) = v30;
        *(result + 208) = v158;
        *(result + 112) = v33;
        *(result + 128) = v34;
        *(result + 144) = v29;
        *(result + 160) = v28;
        *(result + 16) = xmmword_241047BF0;
        *(result + 32) = v36;
        *(result + 48) = v35;
        *(result + 64) = v37;
        v120 = v124;
        *(result + 80) = v32;
        *(result + 96) = v31;
        if (v27 <= v7)
        {
          goto LABEL_111;
        }

        if (v9 < v27)
        {
          goto LABEL_112;
        }

        *&v122[0] = result;

        sub_240FE0990(v136, v123);
        sub_240FE0990(&v124, v123);
        v118 = v27;
        result = sub_240FE243C(v24, v27, a1, v117);
        v38 = *&v122[0];
        v39 = MEMORY[0x277D84F90];
        v121 = *&v122[0];
        if (v120 >= 2)
        {
          v40 = *(*&v122[0] + 16);
          if (v40)
          {
            v41 = 0;
            v42 = (*&v122[0] + 32);
            v43 = MEMORY[0x277D84F90];
            while (v41 < v38[2])
            {
              result = *v42;
              if (*v42 >= 2)
              {
                v44 = *v42;
              }

              else
              {
                v44 = v39;
              }

              v45 = *(v44 + 16);
              v46 = *(v43 + 16);
              v47 = v46 + v45;
              if (__OFADD__(v46, v45))
              {
                goto LABEL_106;
              }

              sub_240FF0D20(result);
              result = swift_isUniquelyReferenced_nonNull_native();
              if (!result || v47 > *(v43 + 24) >> 1)
              {
                if (v46 <= v47)
                {
                  v48 = v46 + v45;
                }

                else
                {
                  v48 = v46;
                }

                result = sub_240FE30A8(result, v48, 1, v43);
                v43 = result;
              }

              v38 = v121;
              if (*(v44 + 16))
              {
                if ((*(v43 + 24) >> 1) - *(v43 + 16) < v45)
                {
                  goto LABEL_108;
                }

                swift_arrayInitWithCopy();

                if (v45)
                {
                  v49 = *(v43 + 16);
                  v50 = __OFADD__(v49, v45);
                  v51 = v49 + v45;
                  if (v50)
                  {
                    goto LABEL_109;
                  }

                  *(v43 + 16) = v51;
                }
              }

              else
              {

                if (v45)
                {
                  goto LABEL_107;
                }
              }

              ++v41;
              v42 += 24;
              if (v40 == v41)
              {
                goto LABEL_34;
              }
            }

LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            break;
          }

          v43 = MEMORY[0x277D84F90];
LABEL_34:
          sub_240FF9BBC(v120);
          *&v147 = v43;
        }

        v52 = v38[2];
        if (v52)
        {
          *&v123[0] = v39;
          sub_240FE41A0(0, v52, 0);
          v53 = *&v123[0];
          v54 = (v38 + 16);
          v55 = v52;
          do
          {
            v57 = *(v54 - 1);
            v56 = *v54;
            v58 = HIBYTE(*v54) & 0xF;
            if ((*v54 & 0x2000000000000000) == 0)
            {
              v58 = v57 & 0xFFFFFFFFFFFFLL;
            }

            if (v58)
            {
            }

            else
            {
              v59 = *(v54 - 8);
              v60 = v39;
              if (*(v54 - 12) >= 2)
              {
              }

              v57 = sub_24102BED8(v60);
              v56 = v61;
              v63 = v62;

              if (v63 > 0xFD)
              {
                if (v59[2])
                {
                  v64 = v59[4];
                  v65 = v59[5];

                  v57 = sub_240FE58B8(45, 0xE100000000000000, v64, v65);
                  v56 = v66;
                }

                else
                {
                  v56 = 0xE500000000000000;
                  v57 = 0x65756C6176;
                }
              }

              v39 = MEMORY[0x277D84F90];
            }

            *&v123[0] = v53;
            v68 = v53[2];
            v67 = v53[3];
            v69 = v68 + 1;
            if (v68 >= v67 >> 1)
            {
              sub_240FE41A0((v67 > 1), v68 + 1, 1);
              v53 = *&v123[0];
            }

            v53[2] = v69;
            v70 = &v53[2 * v68];
            v70[4] = v57;
            v70[5] = v56;
            v54 += 24;
            --v55;
          }

          while (v55);
          v38 = v121;
        }

        else
        {
          v69 = *(v39 + 16);
          v53 = v39;
        }

        v71 = v53 + 5;
        v72 = v69 + 1;
        while (--v72)
        {
          v74 = *(v71 - 1);
          v73 = *v71;
          v71 += 2;
          v75 = HIBYTE(v73) & 0xF;
          if ((v73 & 0x2000000000000000) == 0)
          {
            v75 = v74 & 0xFFFFFFFFFFFFLL;
          }

          if (v75)
          {

            goto LABEL_60;
          }
        }

        v74 = 0;
        v73 = 0xE000000000000000;
LABEL_60:

        v76 = 0;
        *(&v152 + 1) = v74;
        *&v153 = v73;
        v77 = v38 + 7;
        v78 = v39;
        v79 = v38[2];
LABEL_61:
        v80 = &v77[24 * v76];
        while (v79 != v76)
        {
          if (v76 >= v38[2])
          {
            __break(1u);
            goto LABEL_105;
          }

          v81 = v80 + 24;
          ++v76;
          v82 = *v80;
          v80 += 24;
          if (v82)
          {
            v83 = *(v81 - 25);

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_240FE2E68(0, *(v78 + 16) + 1, 1, v78);
              v78 = result;
            }

            v85 = *(v78 + 16);
            v84 = *(v78 + 24);
            if (v85 >= v84 >> 1)
            {
              result = sub_240FE2E68((v84 > 1), v85 + 1, 1, v78);
              v78 = result;
            }

            *(v78 + 16) = v85 + 1;
            v86 = v78 + 16 * v85;
            *(v86 + 32) = v83;
            *(v86 + 40) = v82;
            v38 = v121;
            goto LABEL_61;
          }
        }

        if (*(v78 + 16))
        {
          v88 = *(v78 + 32);
          v87 = *(v78 + 40);
        }

        else
        {
          v88 = 0;
          v87 = 0;
        }

        *&v148 = v88;
        *(&v148 + 1) = v87;
        if (v52)
        {
          *&v123[0] = v39;
          sub_240FE41A0(0, v52, 0);
          v89 = *&v123[0];
          v90 = v38 + 12;
          v91 = v52;
          do
          {
            v93 = *(v90 - 1);
            v92 = *v90;
            *&v123[0] = v89;
            v95 = v89[2];
            v94 = v89[3];
            v96 = v95 + 1;

            if (v95 >= v94 >> 1)
            {
              sub_240FE41A0((v94 > 1), v95 + 1, 1);
              v89 = *&v123[0];
            }

            v89[2] = v96;
            v97 = &v89[2 * v95];
            v97[4] = v93;
            v97[5] = v92;
            v90 += 24;
            --v91;
          }

          while (v91);
          v39 = MEMORY[0x277D84F90];
        }

        else
        {
          v96 = *(v39 + 16);
          v89 = v39;
        }

        v98 = v89 + 5;
        v99 = v96 + 1;
        while (--v99)
        {
          v101 = *(v98 - 1);
          v100 = *v98;
          v98 += 2;
          v102 = HIBYTE(v100) & 0xF;
          if ((v100 & 0x2000000000000000) == 0)
          {
            v102 = v101 & 0xFFFFFFFFFFFFLL;
          }

          if (v102)
          {

            goto LABEL_87;
          }
        }

        v101 = 0;
        v100 = 0xE000000000000000;
LABEL_87:

        *(&v150 + 1) = v101;
        *&v151 = v100;
        if (v52)
        {
          *&v123[0] = v39;
          sub_240FE41A0(0, v52, 0);
          v103 = *&v123[0];
          v104 = v121 + 14;
          do
          {
            v106 = *(v104 - 1);
            v105 = *v104;
            *&v123[0] = v103;
            v108 = v103[2];
            v107 = v103[3];

            if (v108 >= v107 >> 1)
            {
              sub_240FE41A0((v107 > 1), v108 + 1, 1);
              v103 = *&v123[0];
            }

            v103[2] = v108 + 1;
            v109 = &v103[2 * v108];
            v109[4] = v106;
            v109[5] = v105;
            v104 += 24;
            --v52;
          }

          while (v52);
        }

        else
        {

          v103 = v39;
        }

        v110 = v103 + 5;
        v111 = v103[2] + 1;
        a1 = v116;
        v24 = v118;
        while (--v111)
        {
          v113 = *(v110 - 1);
          v112 = *v110;
          v110 += 2;
          v114 = HIBYTE(v112) & 0xF;
          if ((v112 & 0x2000000000000000) == 0)
          {
            v114 = v113 & 0xFFFFFFFFFFFFLL;
          }

          if (v114)
          {

            goto LABEL_101;
          }
        }

        v113 = 0;
        v112 = 0xE000000000000000;
LABEL_101:

        *(&v151 + 1) = v113;
        *&v152 = v112;
        v8 = v115;
      }

      else
      {
        sub_240FE0990(v136, &v124);
      }

      v122[8] = v155;
      v122[9] = v156;
      v122[10] = v157;
      v122[11] = v158;
      v122[4] = v151;
      v122[5] = v152;
      v122[6] = v153;
      v122[7] = v154;
      v122[0] = v147;
      v122[1] = v148;
      v122[2] = v149;
      v122[3] = v150;
      v132 = v155;
      v133 = v156;
      v134 = v157;
      v135 = v158;
      v128 = v151;
      v129 = v152;
      v130 = v153;
      v131 = v154;
      v124 = v147;
      v125 = v148;
      v126 = v149;
      v127 = v150;
      sub_240FE0990(v122, v123);
      sub_24101DC78(&v124);
      v123[8] = v132;
      v123[9] = v133;
      v123[10] = v134;
      v123[11] = v135;
      v123[4] = v128;
      v123[5] = v129;
      v123[6] = v130;
      v123[7] = v131;
      v123[0] = v124;
      v123[1] = v125;
      v123[2] = v126;
      v123[3] = v127;
      sub_240FF0CCC(v123);
      v132 = v155;
      v133 = v156;
      v134 = v157;
      v135 = v158;
      v128 = v151;
      v129 = v152;
      v130 = v153;
      v131 = v154;
      v124 = v147;
      v125 = v148;
      v126 = v149;
      v127 = v150;
      result = sub_240FF0CCC(&v124);
      v7 = v24;
      v9 = v119;
      if (v24 == v119)
      {
        v4 = v159;
        goto LABEL_103;
      }
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
  }

  else
  {
LABEL_103:

    return v4;
  }

  return result;
}

uint64_t sub_240FF88D0@<X0>(uint64_t result@<X0>, char **a2@<X8>)
{
  v84 = result;
  v3 = *(result + 16);
  if (!v3)
  {
LABEL_66:
    __break(1u);
    return result;
  }

  v4 = (result + 16 + 16 * v3);
  v5 = *v4;
  v83 = v4[1];
  v6 = MEMORY[0x277D84F90];
  v7 = v3 - 1;
  if (v3 == 1)
  {

    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    *&v118 = MEMORY[0x277D84F90];

    result = sub_240FE41A0(0, v7, 0);
    v8 = v118;
    v9 = v84 + 40;
    do
    {
      if (!v7)
      {
        __break(1u);
        goto LABEL_65;
      }

      result = (*(*v9 + 24))();
      *&v118 = v8;
      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v14 = result;
        v15 = v10;
        sub_240FE41A0((v11 > 1), v12 + 1, 1);
        v10 = v15;
        result = v14;
        v8 = v118;
      }

      *(v8 + 2) = v12 + 1;
      v13 = &v8[16 * v12];
      *(v13 + 4) = result;
      *(v13 + 5) = v10;
      v9 += 16;
      --v7;
    }

    while (v7);
    (*(*(v84 + 40) + 16))(&v97);
    v124 = v103;
    v125 = v104;
    v126 = v105;
    *&v127 = v106;
    v120 = v99;
    v121 = v100;
    v122 = v101;
    v123 = v102;
    v118 = v97;
    v119 = v98;
    v16 = v98;

    sub_240FE724C(&v118);
    if (*(&v16 + 1))
    {
      v17 = *(v8 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v140 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v17 >= *(v8 + 3) >> 1)
      {
        v8 = sub_240FE2E68(isUniquelyReferenced_nonNull_native, v17 + 1, 1, v8);
        v140 = v8;
      }

      sub_240FF9894(0, 0, 1, v16, *(&v16 + 1));
    }
  }

  v19 = *(v83 + 16);
  (v19)(v134, v5);
  v136[6] = v134[6];
  v137 = v134[7];
  v138 = v134[8];
  v139 = v135;
  v136[2] = v134[2];
  v136[3] = v134[3];
  v136[4] = v134[4];
  v136[5] = v134[5];
  v136[0] = v134[0];
  v136[1] = v134[1];
  sub_240FE724C(v136);
  if (*(&v137 + 1))
  {
    (*(v138 + 16))(&v97);
    v124 = v103;
    v125 = v104;
    v126 = v105;
    *&v127 = v106;
    v120 = v99;
    v121 = v100;
    v122 = v101;
    v123 = v102;
    v118 = v97;
    v119 = v98;
    v82 = v97;

    sub_240FE724C(&v118);
  }

  else
  {
    v82 = 0uLL;
  }

  v80 = v5;
  v81 = a2;
  v19(&v118, v5, v83);
  v132[6] = v124;
  v132[7] = v125;
  v132[8] = v126;
  v132[2] = v120;
  v132[3] = v121;
  v132[4] = v122;
  v132[5] = v123;
  v132[0] = v118;
  v132[1] = v119;
  v103 = v124;
  v104 = v125;
  v105 = v126;
  v99 = v120;
  v100 = v121;
  v101 = v122;
  v102 = v123;
  v133 = v127;
  *&v106 = v127;
  v97 = v118;
  v98 = v119;
  CommandConfiguration.subcommands.getter();
  v21 = v20;
  sub_240FE724C(v132);
  v22 = *(v21 + 16);
  v79 = v19;
  if (v22)
  {
    *&v130[0] = v6;
    sub_240FE42B8(0, v22, 0);
    v23 = *&v130[0];
    v24 = v22 - 1;
    for (i = 32; ; i += 16)
    {
      v85 = *(v21 + i);

      v26 = swift_isUniquelyReferenced_nonNull_native();
      v27 = v84;
      if ((v26 & 1) == 0)
      {
        v27 = sub_240FE2D64(0, *(v84 + 16) + 1, 1, v84);
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_240FE2D64((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      *&v27[16 * v29 + 32] = v85;
      sub_240FF88D0(v27, &v87);
      *&v130[0] = v23;
      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_240FE42B8((v30 > 1), v31 + 1, 1);
        v23 = *&v130[0];
      }

      *(v23 + 16) = v31 + 1;
      v32 = v23 + 88 * v31;
      v33 = v88;
      *(v32 + 32) = v87;
      *(v32 + 48) = v33;
      v34 = v89;
      v35 = v90;
      v36 = v91;
      *(v32 + 112) = v92;
      *(v32 + 80) = v35;
      *(v32 + 96) = v36;
      *(v32 + 64) = v34;
      if (!v24)
      {
        break;
      }

      --v24;
    }
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v37 = sub_240FF7DC8(v84);
  v39 = v38;

  v40 = sub_240FF7F90(v37, v39);

  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = 0;
    v43 = v40 + 32;
    v44 = MEMORY[0x277D84F90];
LABEL_31:
    v45 = (v43 + 192 * v42);
    v46 = v42;
    while (v46 < *(v40 + 16))
    {
      v47 = *v45;
      v48 = v45[1];
      v49 = v45[3];
      v120 = v45[2];
      v121 = v49;
      v118 = v47;
      v119 = v48;
      v50 = v45[4];
      v51 = v45[5];
      v52 = v45[7];
      v124 = v45[6];
      v125 = v52;
      v122 = v50;
      v123 = v51;
      v53 = v45[8];
      v54 = v45[9];
      v55 = v45[11];
      v128 = v45[10];
      v129 = v55;
      v126 = v53;
      v127 = v54;
      v42 = v46 + 1;
      v105 = v53;
      v106 = v54;
      v107 = v128;
      v108 = v55;
      v101 = v122;
      v102 = v123;
      v103 = v124;
      v104 = v125;
      v97 = v118;
      v98 = v119;
      v99 = v120;
      v100 = v121;
      sub_240FE0990(&v118, &v87);
      sub_240FF9238(&v97, &v109);
      v130[6] = v115;
      v130[7] = v116;
      v131 = v117;
      v130[2] = v111;
      v130[3] = v112;
      v130[4] = v113;
      v130[5] = v114;
      v130[0] = v109;
      v130[1] = v110;
      if (sub_240FF96E0(v130) != 1)
      {
        v103 = v115;
        v104 = v116;
        *&v105 = v117;
        v99 = v111;
        v100 = v112;
        v101 = v113;
        v102 = v114;
        v97 = v109;
        v98 = v110;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_240FE3B7C(0, *(v44 + 16) + 1, 1, v44);
          v44 = result;
        }

        v57 = *(v44 + 16);
        v56 = *(v44 + 24);
        v58 = v57 + 1;
        if (v57 >= v56 >> 1)
        {
          result = sub_240FE3B7C((v56 > 1), v57 + 1, 1, v44);
          v58 = v57 + 1;
          v44 = result;
        }

        v89 = v99;
        v90 = v100;
        *&v95 = v105;
        v93 = v103;
        v94 = v104;
        v91 = v101;
        v92 = v102;
        v87 = v97;
        v88 = v98;
        *(v44 + 16) = v58;
        v59 = v44 + 136 * v57;
        *(v59 + 32) = v87;
        v60 = v88;
        v61 = v89;
        v62 = v91;
        *(v59 + 80) = v90;
        *(v59 + 96) = v62;
        *(v59 + 48) = v60;
        *(v59 + 64) = v61;
        v63 = v92;
        v64 = v93;
        v65 = v94;
        *(v59 + 160) = v95;
        *(v59 + 128) = v64;
        *(v59 + 144) = v65;
        *(v59 + 112) = v63;
        v43 = v40 + 32;
        if (v41 - 1 != v46)
        {
          goto LABEL_31;
        }

        goto LABEL_43;
      }

      v103 = v115;
      v104 = v116;
      *&v105 = v117;
      v99 = v111;
      v100 = v112;
      v101 = v113;
      v102 = v114;
      v97 = v109;
      v98 = v110;
      result = sub_240FE07E8(&v97, &qword_27E51F568, &qword_241048560);
      v45 += 12;
      ++v46;
      if (v41 == v42)
      {
        goto LABEL_43;
      }
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v44 = MEMORY[0x277D84F90];
LABEL_43:
  v78 = v44;

  v86 = (*(v83 + 24))(v80, v83);
  v67 = v66;
  v79(&v97, v80, v83);
  v69 = *(&v99 + 1);
  v68 = v99;

  sub_240FE724C(&v97);
  v79(&v87, v80, v83);
  swift_unknownObjectRelease();
  v124 = v93;
  v125 = v94;
  v126 = v95;
  *&v127 = v96;
  v120 = v89;
  v121 = v90;
  v122 = v91;
  v123 = v92;
  v118 = v87;
  v119 = v88;
  v70 = *(&v91 + 1);
  v71 = v91;

  result = sub_240FE724C(&v118);
  if (!*(v8 + 2))
  {

    v8 = 0;
  }

  v72 = v82;
  v73 = (v69 >> 56) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v73 = v68 & 0xFFFFFFFFFFFFLL;
  }

  v74 = *(&v82 + 1);
  if (!v73)
  {

    v74 = *(&v82 + 1);
    v68 = 0;
    v69 = 0;
  }

  v75 = (v70 >> 56) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v75 = v71 & 0xFFFFFFFFFFFFLL;
  }

  if (v75)
  {
    if (v74)
    {
      goto LABEL_53;
    }
  }

  else
  {

    v74 = *(&v82 + 1);
    v71 = 0;
    v70 = 0;
    if (*(&v82 + 1))
    {
LABEL_53:
      v76 = (v74 >> 56) & 0xF;
      if ((v74 & 0x2000000000000000) == 0)
      {
        v76 = v82 & 0xFFFFFFFFFFFFLL;
      }

      if (!v76)
      {

        v72 = 0;
        v74 = 0;
      }

      if (*(v23 + 16))
      {
        goto LABEL_58;
      }

      goto LABEL_63;
    }
  }

  v72 = 0;
  if (!*(v23 + 16))
  {
LABEL_63:

    v23 = 0;
  }

LABEL_58:
  v77 = v78;
  if (!*(v78 + 16))
  {

    v77 = 0;
  }

  *v81 = v8;
  v81[1] = v86;
  v81[2] = v67;
  v81[3] = v68;
  v81[4] = v69;
  v81[5] = v71;
  v81[6] = v70;
  v81[7] = v72;
  v81[8] = v74;
  v81[9] = v23;
  v81[10] = v77;
  return result;
}

unint64_t sub_240FF91F4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

__n128 sub_240FF9238@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v86 = a1[8];
  v87 = v3;
  v4 = a1[11];
  v88 = a1[10];
  v89 = v4;
  v5 = a1[5];
  v82 = a1[4];
  v83 = v5;
  v6 = a1[7];
  v84 = a1[6];
  v85 = v6;
  v7 = a1[1];
  v79[0] = *a1;
  v79[1] = v7;
  v8 = a1[3];
  v80 = a1[2];
  v81 = v8;
  v9 = *&v79[0];
  if (*&v79[0])
  {
    if (*&v79[0] == 1)
    {
      sub_240FF0CCC(v79);
      sub_240FF9978(&v70);
      v10 = v77;
      *(a2 + 96) = v76;
      *(a2 + 112) = v10;
      *(a2 + 128) = v78;
      v11 = v73;
      *(a2 + 32) = v72;
      *(a2 + 48) = v11;
      v12 = v75;
      *(a2 + 64) = v74;
      *(a2 + 80) = v12;
      result = v71;
      *a2 = v70;
      *(a2 + 16) = result;
      return result;
    }

    if (BYTE8(v88))
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v65 = v14;
  }

  else
  {
    v65 = 0;
  }

  v90 = a1[1];
  v66 = a2;
  v67 = BYTE8(v79[0]);
  v15 = *(&v81 + 1);
  v69 = v82;
  v62 = v83;
  v63 = *(&v82 + 1);
  v17 = *(&v83 + 1);
  v16 = v84;
  v18 = HIBYTE(*(&v85 + 1)) & 0xFLL;
  if ((*(&v85 + 1) & 0x2000000000000000) == 0)
  {
    v18 = v85 & 0xFFFFFFFFFFFFLL;
  }

  v56 = BYTE8(v84);
  if (v18)
  {
    v54 = *(&v85 + 1);
    v55 = v85;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  v64 = *(&v80 + 1);
  v19 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  if (*&v79[0] >= 2uLL)
  {

    v20 = *&v79[0];
  }

  v21 = *(v20 + 16);
  if (v21)
  {
    v59 = *(&v83 + 1);
    *&v70 = v19;
    sub_240FE4408(0, v21, 0);
    v22 = v19;
    v23 = (v20 + 48);
    do
    {
      v24 = *(v23 - 2);
      v25 = *(v23 - 1);
      v26 = *v23;
      sub_240FF0D90(v24, v25, *v23);
      *&v70 = v22;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_240FE4408((v27 > 1), v28 + 1, 1);
        v22 = v70;
      }

      *(v22 + 16) = v28 + 1;
      v29 = v22 + 24 * v28;
      *(v29 + 32) = v26 >> 6;
      v23 += 24;
      *(v29 + 40) = v24;
      *(v29 + 48) = v25;
      --v21;
    }

    while (v21);

    v17 = v59;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v30 = v64;
  if (v9 >= 2)
  {
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v31 = sub_24102BED8(v9);
  v33 = v32;
  v35 = v34;
  v36 = v34;

  if (v36 <= 0xFD)
  {
    v37 = v35 >> 6;
  }

  else
  {
    v37 = 0;
  }

  v61 = v37;
  if (v36 <= 0xFD)
  {
    v38 = v31;
  }

  else
  {
    v38 = 0;
  }

  if (v36 <= 0xFD)
  {
    v39 = v33;
  }

  else
  {
    v39 = 0;
  }

  v58 = v39;
  v60 = v38;
  v40 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v40 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
  }

  else
  {
    sub_24102CC00(v79, &v70);
    v16 = *(&v70 + 1);
    v17 = v70;
  }

  v57 = v56 == 0;
  v91[0] = v90;
  if (*(v22 + 16))
  {
    sub_240FF99A8(v91, &v70);
  }

  else
  {
    sub_240FF99A8(v91, &v70);

    v22 = 0;
  }

  v41 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v41 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {

    v17 = 0;
    v16 = 0;
  }

  v68 = v16;
  v42 = v17;
  v43 = *(&v91[0] + 1);
  if (*(&v91[0] + 1))
  {
    v44 = *&v91[0];
    v45 = HIBYTE(*(&v91[0] + 1)) & 0xFLL;
    if ((*(&v91[0] + 1) & 0x2000000000000000) == 0)
    {
      v45 = *&v91[0] & 0xFFFFFFFFFFFFLL;
    }

    if (!v45)
    {
      sub_240FE07E8(v91, &qword_27E51F570, &qword_241048568);
      v44 = 0;
      v43 = 0;
    }

    if (*(v64 + 16))
    {
      goto LABEL_53;
    }

LABEL_55:
    v30 = 0;
    goto LABEL_56;
  }

  v44 = 0;
  if (!*(v64 + 16))
  {
    goto LABEL_55;
  }

LABEL_53:

LABEL_56:
  v46 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v46 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {
    v47 = v15;
  }

  else
  {
    v47 = 0;
    v69 = 0;
  }

  v49 = v62;
  v48 = v63;
  v50 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v50 = v63 & 0xFFFFFFFFFFFFLL;
  }

  if (v50)
  {
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  sub_240FF0CCC(v79);
  LOBYTE(v70) = v65;
  BYTE1(v70) = v57;
  *(&v70 + 1) = v55;
  v71.n128_u64[0] = v54;
  v71.n128_u8[8] = v67 & 1;
  v71.n128_u8[9] = (v67 & 2) != 0;
  *&v72 = v22;
  *(&v72 + 1) = v61;
  *&v73 = v60;
  *(&v73 + 1) = v58;
  *&v74 = v42;
  *(&v74 + 1) = v68;
  *&v75 = v44;
  *(&v75 + 1) = v43;
  *&v76 = v30;
  *(&v76 + 1) = v47;
  *&v77 = v69;
  *(&v77 + 1) = v48;
  v78 = v49;
  nullsub_1();
  v51 = v77;
  *(v66 + 96) = v76;
  *(v66 + 112) = v51;
  *(v66 + 128) = v78;
  v52 = v73;
  *(v66 + 32) = v72;
  *(v66 + 48) = v52;
  v53 = v75;
  *(v66 + 64) = v74;
  *(v66 + 80) = v53;
  result = v71;
  *v66 = v70;
  *(v66 + 16) = result;
  return result;
}

uint64_t sub_240FF96E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t (*sub_240FF9704(uint64_t (**a1)(), int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x240uLL);
  }

  *a1 = result;
  if (a2 < a3 || a2 >= a4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(a5 + 16) > a2)
  {
    v11 = (a5 + 192 * a2);
    v12 = v11[2];
    v13 = v11[3];
    v14 = v11[5];
    *(result + 2) = v11[4];
    *(result + 3) = v14;
    *result = v12;
    *(result + 1) = v13;
    v15 = v11[6];
    v16 = v11[7];
    v17 = v11[9];
    *(result + 6) = v11[8];
    *(result + 7) = v17;
    *(result + 4) = v15;
    *(result + 5) = v16;
    v18 = v11[10];
    v19 = v11[11];
    v20 = v11[13];
    *(result + 10) = v11[12];
    *(result + 11) = v20;
    *(result + 8) = v18;
    *(result + 9) = v19;
    v21 = v11[2];
    v22 = v11[3];
    v23 = v11[5];
    *(result + 14) = v11[4];
    *(result + 15) = v23;
    *(result + 12) = v21;
    *(result + 13) = v22;
    v24 = v11[6];
    v25 = v11[7];
    v26 = v11[9];
    *(result + 18) = v11[8];
    *(result + 19) = v26;
    *(result + 16) = v24;
    *(result + 17) = v25;
    v27 = v11[10];
    v28 = v11[11];
    v29 = v11[13];
    *(result + 22) = v11[12];
    *(result + 23) = v29;
    *(result + 20) = v27;
    *(result + 21) = v28;
    sub_240FE0990(result, result + 384);
    return sub_240FF9828;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_240FF9828(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 336);
  v1[32] = *(*a1 + 320);
  v1[33] = v2;
  v3 = v1[23];
  v1[34] = v1[22];
  v1[35] = v3;
  v4 = v1[17];
  v1[28] = v1[16];
  v1[29] = v4;
  v5 = v1[19];
  v1[30] = v1[18];
  v1[31] = v5;
  v6 = v1[13];
  v1[24] = v1[12];
  v1[25] = v6;
  v7 = v1[15];
  v1[26] = v1[14];
  v1[27] = v7;
  sub_240FF0CCC((v1 + 24));

  free(v1);
}

unint64_t sub_240FF9894(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

double sub_240FF9978(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

uint64_t sub_240FF99A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F570, &qword_241048568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240FF9A18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3 + 32;
  v28 = result;
  v5 = result;
  while (1)
  {
    if (v5 == a2)
    {
      return 0;
    }

    if (v5 >= a2)
    {
      break;
    }

    if (v28 < 0)
    {
      goto LABEL_38;
    }

    if (v5 >= *(a3 + 16))
    {
      goto LABEL_39;
    }

    v7 = *(v25 + 192 * v5 + 32);
    v8 = *(a4 + 32);
    v9 = *(v7 + 16);
    if (v9 != *(v8 + 16))
    {
      return v5;
    }

    if (v9)
    {
      v10 = v7 == v8;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = 0;
      v12 = v7 + 32;
      v13 = v8 + 32;
      while (v11 != v9)
      {
        v14 = (v12 + 24 * v11);
        result = *v14;
        v15 = v14[1];
        v16 = v14[2];
        v17 = (v13 + 24 * v11);
        v18 = v17[2];
        if (result != *v17 || v15 != v17[1])
        {
          result = sub_241047428();
          if ((result & 1) == 0)
          {
            return v5;
          }
        }

        v20 = *(v16 + 16);
        if (v20 != *(v18 + 16))
        {
          return v5;
        }

        if (v20)
        {
          v21 = v16 == v18;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v22 = (v16 + 40);
          v23 = (v18 + 40);
          while (v20)
          {
            result = *(v22 - 1);
            if (result != *(v23 - 1) || *v22 != *v23)
            {
              result = sub_241047428();
              if ((result & 1) == 0)
              {
                return v5;
              }
            }

            v22 += 2;
            v23 += 2;
            if (!--v20)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        if (++v11 == v9)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
      break;
    }

LABEL_2:
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_240FF9BBC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_240FF9BE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_240FF9C30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240FF9C90(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  sub_240FFBBA4(MEMORY[0x277D84F90]);

  v3 = *(a1 + 16);

  v43 = v3;
  if (!v3)
  {
    v5 = v2;
LABEL_33:

    if (v5[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F590, &unk_24104BC70);
      v39 = sub_241047228();
    }

    else
    {
      v39 = MEMORY[0x277D84F98];
    }

    v57 = v39;
    sub_240FFBCC0(v5, 1, &v57);

    return a1;
  }

  v4 = 0;
  v41 = a1;
  v42 = a1 + 32;
  v5 = v2;
  while (v4 < *(a1 + 16))
  {
    v6 = (v42 + 192 * v4);
    v7 = v6[7];
    v8 = v6[9];
    v53 = v6[8];
    v54 = v8;
    v9 = v6[11];
    v10 = v6[9];
    v55 = v6[10];
    v56 = v9;
    v11 = v6[5];
    v12 = v6[3];
    v49 = v6[4];
    v50 = v11;
    v13 = v6[7];
    v14 = v6[5];
    v51 = v6[6];
    v52 = v13;
    v15 = v6[1];
    v46[0] = *v6;
    v46[1] = v15;
    v16 = v6[3];
    v18 = *v6;
    v17 = v6[1];
    v47 = v6[2];
    v48 = v16;
    v65 = v7;
    v64 = v51;
    v63 = v14;
    v62 = v49;
    v69 = v6[11];
    v68 = v55;
    v67 = v10;
    v66 = v53;
    v58 = v18;
    v59 = v17;
    v60 = v47;
    v61 = v12;
    v57 = v4;
    v19 = v18;
    if (v18 >= 2)
    {
      v20 = v18;
    }

    else
    {
      v20 = v2;
    }

    v21 = v20[2];
    if (v21)
    {
      v44 = v5;
      sub_240FE0990(v46, v45);
      sub_240FF0D20(v19);
      v45[0] = v2;
      sub_240FE4428(0, v21, 0);
      v22 = v45[0];
      v23 = (v20 + 6);
      do
      {
        v24 = *(v23 - 2);
        v25 = *(v23 - 1);
        if ((*v23 & 0xC0) == 0x40)
        {
          v26 = 64;
        }

        else
        {
          v26 = *v23;
        }

        sub_240FF0D90(*(v23 - 2), *(v23 - 1), *v23);
        v45[0] = v22;
        v28 = v22[2];
        v27 = v22[3];
        if (v28 >= v27 >> 1)
        {
          sub_240FE4428((v27 > 1), v28 + 1, 1);
          v22 = v45[0];
        }

        v23 += 24;
        v22[2] = v28 + 1;
        v29 = &v22[4 * v28];
        v29[4] = v24;
        v29[5] = v25;
        *(v29 + 48) = v26;
        v29[7] = v4;
        --v21;
      }

      while (v21);

      sub_240FE07E8(&v57, &qword_27E51F588, &qword_241048708);
      a1 = v41;
      v5 = v44;
      v2 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_240FE0990(v46, v45);
      sub_240FF0D20(v19);

      sub_240FE07E8(&v57, &qword_27E51F588, &qword_241048708);
      v22 = v2;
    }

    v30 = v22[2];
    v31 = v5[2];
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_38;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && (v34 = v5[3] >> 1, v34 >= v32))
    {
      if (v22[2])
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v31 <= v32)
      {
        v35 = v31 + v30;
      }

      else
      {
        v35 = v31;
      }

      v5 = sub_240FE2F74(isUniquelyReferenced_nonNull_native, v35, 1, v5);
      v34 = v5[3] >> 1;
      if (v22[2])
      {
LABEL_28:
        if (v34 - v5[2] < v30)
        {
          goto LABEL_40;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3E0, &unk_241048710);
        swift_arrayInitWithCopy();

        if (v30)
        {
          v36 = v5[2];
          v37 = __OFADD__(v36, v30);
          v38 = v36 + v30;
          if (v37)
          {
            goto LABEL_41;
          }

          v5[2] = v38;
        }

        goto LABEL_4;
      }
    }

    if (v30)
    {
      goto LABEL_39;
    }

LABEL_4:
    if (++v4 == v43)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);

  MEMORY[0x245CD7E80](v4);

  __break(1u);
  return result;
}

uint64_t sub_240FFA058()
{
  v0 = MEMORY[0x277D84F90];
  v1 = sub_240FE0C08(MEMORY[0x277D84F90]);

  xmmword_280CC2370 = 0uLL;
  xmmword_280CC2360 = xmmword_241048580;
  *&xmmword_280CC2380 = 0xD000000000000021;
  *(&xmmword_280CC2380 + 1) = 0x800000024104E9C0;
  xmmword_280CC2390 = 0uLL;
  *&xmmword_280CC23A0 = 0;
  *(&xmmword_280CC23A0 + 1) = 0xE000000000000000;
  *&xmmword_280CC23B0 = 0;
  *(&xmmword_280CC23B0 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_280CC23C0) = 1;
  qword_280CC23D8 = 0;
  unk_280CC23E0 = 0;
  qword_280CC23E8 = v1;

  *(&xmmword_280CC23C0 + 1) = v0;
  unk_280CC23D0 = v0;
  qword_280CC23F0 = v0;
  return result;
}

double sub_240FFA118@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_240FE0C08(&unk_2852DA3B8);
  swift_arrayDestroy();

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  result = 0.0;
  *(v5 + 32) = xmmword_241047F10;
  *(v5 + 48) = xmmword_241047F10;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 2;
  *a2 = sub_240FFBA08;
  *(a2 + 8) = v5;
  *(a2 + 16) = 1;
  return result;
}

uint64_t _s22ArgumentParserInternal20ArrayParsingStrategyV9hashValueSivg_0()
{
  v1 = *v0;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

uint64_t sub_240FFA228(uint64_t a1)
{
  v2 = *v1;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v2);
  return sub_2410475E8();
}

uint64_t sub_240FFA26C()
{
  if (*v0)
  {
    return 1886152040;
  }

  else
  {
    return 0x616D6D6F63627573;
  }
}

uint64_t sub_240FFA2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x616D6D6F63627573 && a2 == 0xEB0000000073646ELL;
  if (v6 || (sub_241047428() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1886152040 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_241047428();

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

uint64_t sub_240FFA388(uint64_t a1)
{
  v2 = sub_240FFC22C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240FFA3C4(uint64_t a1)
{
  v2 = sub_240FFC22C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240FFA400@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F598, &qword_241048728);
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  v8 = MEMORY[0x277D84F90];
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 72) = v8;
  *(v7 + 96) = -1;
  v28 = 1;
  v20[0] = MEMORY[0x277D84FA0];
  v9 = sub_240FE0C08(&unk_2852DA3B8);
  swift_arrayDestroy();

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = 0;
  *(v10 + 32) = xmmword_241047F10;
  *(v10 + 48) = xmmword_241047F10;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 80) = 2;
  v27 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240FFC22C();
  sub_241047628();
  if (v2)
  {
    v20[0] = sub_240FFCEA4;
    v20[1] = v7;
    v21 = v28;
    v22 = sub_240FFCEA0;
    v23 = v10;
    v24 = v27;
    v25 = MEMORY[0x277D84F90];
    v26 = 0;
    sub_240FFC280(v20);
  }

  else
  {
    v11 = v17;
    v12 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    v29 = 0;
    sub_240FFC2B0();
    sub_2410472B8();

    v14 = v19;
    v28 = 0;
    LOBYTE(v19) = 1;
    v15 = sub_241047298();
    (*(v11 + 8))(v6, v4);

    v27 = 0;
    v16 = v28;
    *v12 = v14;
    *(v12 + 8) = 0;
    *(v12 + 16) = v16;
    *(v12 + 24) = v15 & 1;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 48) = MEMORY[0x277D84F90];
    *(v12 + 56) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_240FFA74C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0;
  v7 = MEMORY[0x277D84F90];
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  *(v6 + 72) = v7;
  *(v6 + 96) = -1;
  v8 = sub_240FE0C08(&unk_2852DA3B8);
  swift_arrayDestroy();

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0;
  *(v9 + 32) = xmmword_241047F10;
  *(v9 + 48) = xmmword_241047F10;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 80) = 2;
  v10 = *(a1 + 16);
  if (v10)
  {

    sub_240FE41A0(0, v10, 0);
    v11 = v7;
    v12 = a1 + 40;
    do
    {
      v13 = (*(*v12 + 24))();
      v21 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        v20 = v13;
        v18 = v14;
        sub_240FE41A0((v15 > 1), v16 + 1, 1);
        v14 = v18;
        v13 = v20;
        v11 = v21;
      }

      *(v11 + 16) = v16 + 1;
      v17 = v11 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v12 += 16;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  *a3 = v11;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = a1;
  *(a3 + 56) = v5;
  return result;
}

uint64_t sub_240FFA968@<X0>(uint64_t a1@<X8>)
{
  if (qword_280CC1E58 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_280CC23B0;
  v11[6] = xmmword_280CC23C0;
  v11[7] = unk_280CC23D0;
  v2 = unk_280CC23D0;
  v11[8] = unk_280CC23E0;
  v3 = xmmword_280CC2380;
  v4 = xmmword_280CC2370;
  v11[2] = xmmword_280CC2380;
  v11[3] = xmmword_280CC2390;
  v5 = xmmword_280CC2390;
  v6 = xmmword_280CC23A0;
  v11[4] = xmmword_280CC23A0;
  v11[5] = xmmword_280CC23B0;
  v7 = xmmword_280CC2360;
  v11[0] = xmmword_280CC2360;
  v11[1] = xmmword_280CC2370;
  *(a1 + 96) = xmmword_280CC23C0;
  *(a1 + 112) = v2;
  *(a1 + 128) = unk_280CC23E0;
  *(a1 + 32) = v3;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v1;
  v12 = qword_280CC23F0;
  *(a1 + 144) = qword_280CC23F0;
  *a1 = v7;
  *(a1 + 16) = v4;
  return sub_240FFB968(v11, v10);
}

uint64_t sub_240FFAA44()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_240FE71F8();
  swift_allocError();
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 9) = v5;
  *(v3 + 25) = v6;
  *(v3 + 72) = *&v8[15];
  *(v3 + 57) = *v8;
  *(v3 + 41) = v7;
  *(v3 + 88) = 0;
  swift_willThrow();
}

double sub_240FFAAE0@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v3 = MEMORY[0x277D84F90];
  *(v2 + 64) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 72) = v3;
  *(v2 + 96) = -1;
  *a1 = sub_240FFBA04;
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;
  sub_240FFA118(0, &v6);
  v4 = v7;
  result = *&v6;
  *(a1 + 24) = v6;
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;
  *(a1 + 56) = 0;
  return result;
}

unint64_t sub_240FFAB9C(uint64_t a1)
{
  result = sub_240FFABC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240FFABC4()
{
  result = qword_280CC1E50;
  if (!qword_280CC1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1E50);
  }

  return result;
}

unint64_t sub_240FFAC18(uint64_t a1)
{
  result = sub_240FFAC40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240FFAC40()
{
  result = qword_280CC1E40;
  if (!qword_280CC1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1E40);
  }

  return result;
}

uint64_t sub_240FFAC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v15 = a9;
  v36 = a4[2];
  v16 = a4[5];
  v38 = a4[4];
  v39 = a4[3];
  v37 = *(a4 + 48);
  if (*(a6 + 16))
  {
    v41 = a6;
    v42 = sub_240FFB904;
    v43 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F578, &unk_2410486F8);
    sub_240FFBA18();
    v17 = sub_241046AA8();
    v32 = v18;
    v33 = v17;
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_241047BF0;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 48) = a3;
  v20 = a4[1];
  if (v20)
  {
    v30 = *a4;
    v41 = *a4;
    v42 = v20;
    v31 = v20;
    if (v16)
    {
      v21 = a6;
      sub_240FFBB48(&v41, v40);

      v22 = a7;
      sub_240FFBA9C(a7, a8, a9);

      v29 = v16;
      goto LABEL_10;
    }

    sub_240FFBB48(&v41, v40);
  }

  else
  {
    v37 = 0;
    v30 = 0;
    v36 = 0;
    v31 = 0xE000000000000000;
    v23 = 0xE000000000000000;
  }

  v39 = v23;
  v21 = a6;
  v22 = a7;
  sub_240FFBA9C(a7, a8, a9);

  v38 = 0;
  v29 = 0xE000000000000000;
LABEL_10:
  if (a9 == 255)
  {
    v15 = 4;
    a8 = 0;
    v22 = 0;
  }

  v24 = swift_allocObject();
  v24[2] = sub_240FFB8E4;
  v24[3] = 0;
  v24[4] = a1;
  v24[5] = a2;
  v24[6] = a3;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = v21;
  v25[4] = a1;
  v25[5] = a2;
  v25[6] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_241047BF0;
  *(v26 + 32) = xmmword_241048590;
  *(v26 + 48) = v33;
  *(v26 + 56) = v32;
  v27 = MEMORY[0x277D84F90];
  *(v26 + 64) = v19;
  *(v26 + 72) = v27;
  *(v26 + 80) = 0;
  *(v26 + 88) = v30;
  *(v26 + 96) = v31;
  *(v26 + 104) = v36;
  *(v26 + 112) = v39;
  *(v26 + 120) = v38;
  *(v26 + 128) = v29;
  *(v26 + 136) = v37;
  *(v26 + 144) = 0;
  *(v26 + 152) = 0xE000000000000000;
  *(v26 + 160) = v22;
  *(v26 + 168) = a8;
  *(v26 + 176) = v15;
  *(v26 + 177) = a5;
  *(v26 + 184) = sub_240FFBAF0;
  *(v26 + 192) = v24;
  *(v26 + 200) = 1;
  *(v26 + 208) = sub_240FFBB24;
  *(v26 + 216) = v25;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  return sub_240FF9C90(v26);
}

void *sub_240FFAFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, void *(*a8)(void *__return_ptr, void, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, __int128 a10, uint64_t a11)
{
  result = a8(v33, a10, *(&a10 + 1), a11, a1, a2, a3, a4, a5, a6);
  if (v11)
  {
    return result;
  }

  v15 = v33[0];
  v14 = v33[1];
  v16 = *a7;
  if (*(*a7 + 16) && (v17 = sub_24102FB5C(a10, *(&a10 + 1), a11), (v18 & 1) != 0))
  {
    sub_240FFC198(*(v16 + 56) + 72 * v17, &v24);
    v30[1] = v26;
    v31 = v27;
    v32 = v28;
    v29 = v24;
    v30[0] = v25;
  }

  else
  {
    v29 = a10;
    *&v30[0] = a11;
    *(&v30[0] + 1) = MEMORY[0x277D84F90];
    *&v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    *(&v31 + 1) = MEMORY[0x277D84FA0];
    v32 = 1;
  }

  sub_240FE088C(v30 + 8, &v24, &qword_27E51F328, &qword_241048720);
  if (!*(&v25 + 1))
  {
    sub_240FE07E8(&v24, &qword_27E51F328, &qword_241048720);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  if (!swift_dynamicCast())
  {
LABEL_10:
    v19 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v19 = v33[4];
LABEL_11:
  if (v32 == 1)
  {

    v32 = 0;
    v19 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_240FE2E68(0, *(v19 + 2) + 1, 1, v19);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_240FE2E68((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[16 * v21];
  *(v22 + 4) = v15;
  *(v22 + 5) = v14;
  *(&v25 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  *&v24 = v19;
  sub_240FFC128(&v24, v30 + 8);

  sub_24102EFE4(v23);
  sub_24102F0DC(&v29);
  sub_240FFBF78(&v29);
}

void *sub_240FFB2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *(*a8)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result = a8(v19, a10, a11, a12, a1, a2, a3, a4, a5, a6);
  if (!v12)
  {
    v18[3] = MEMORY[0x277D837D0];
    v18[0] = v19[0];
    v18[1] = v19[1];
    sub_240FE088C(v18, v16, &qword_27E51F328, &qword_241048720);
    v15[0] = a10;
    v15[1] = a11;
    v15[2] = a12;
    v16[4] = a1;
    v17 = 1;

    sub_24102F0DC(v15);
    sub_240FFBF78(v15);
    sub_240FE07E8(v18, &qword_27E51F328, &qword_241048720);
  }

  return result;
}

void *sub_240FFB3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *(*a8)(void *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result = a8(v19, a10, a11, a12, a1, a2, a3, a4, a5, a6);
  if (!v12)
  {
    v18[3] = MEMORY[0x277D84F70] + 8;
    v18[0] = swift_allocObject();
    sub_240FE078C(v19, v18[0] + 16);
    sub_240FE088C(v18, v16, &qword_27E51F328, &qword_241048720);
    v15[0] = a10;
    v15[1] = a11;
    v15[2] = a12;
    v16[4] = a1;
    v17 = 1;

    sub_24102F0DC(v15);
    sub_240FFBF78(v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    return sub_240FE07E8(v18, &qword_27E51F328, &qword_241048720);
  }

  return result;
}

uint64_t sub_240FFB524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 != 1)
  {
    v11 = a1;

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v12 = 0;
    v18[1] = 0;
    v18[2] = 0;
    goto LABEL_6;
  }

  v11 = sub_24102AECC(&unk_2852DA810);
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  v13 = a4;
LABEL_6:
  v18[0] = v13;
  v18[3] = v12;
  sub_240FE088C(v18, v16, &qword_27E51F328, &qword_241048720);
  v15[0] = a5;
  v15[1] = a6;
  v15[2] = a7;
  v16[4] = v11;
  v17 = 1;

  sub_24102F0DC(v15);
  sub_240FFBF78(v15);
  return sub_240FE07E8(v18, &qword_27E51F328, &qword_241048720);
}

uint64_t sub_240FFB650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 != 1)
  {
    v13 = a1;

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    a4 = 0;
    v15 = 0;
    v14 = 0;
    v20[2] = 0;
    goto LABEL_6;
  }

  v13 = sub_24102AECC(&unk_2852DA848);
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = MEMORY[0x277D837D0];
  v15 = a5;
LABEL_6:
  v20[0] = a4;
  v20[1] = v15;
  v20[3] = v14;
  sub_240FE088C(v20, v18, &qword_27E51F328, &qword_241048720);
  v17[0] = a6;
  v17[1] = a7;
  v17[2] = a8;
  v18[4] = v13;
  v19 = 1;

  sub_24102F0DC(v17);
  sub_240FFBF78(v17);
  return sub_240FE07E8(v20, &qword_27E51F328, &qword_241048720);
}

uint64_t sub_240FFB77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 == 1)
  {
    v11 = sub_24102AECC(&unk_2852DA880);
  }

  else
  {
    v11 = a1;
  }

  sub_240FE088C(a4, &v13, &qword_27E51F328, &qword_241048720);
  if (v15[0])
  {
    *(&v18 + 1) = MEMORY[0x277D84F70] + 8;
    *&v17 = swift_allocObject();
    sub_240FFC32C(&v13, (v17 + 16));
  }

  else
  {
    sub_240FE07E8(&v13, &qword_27E51F328, &qword_241048720);
    v17 = 0u;
    v18 = 0u;
  }

  sub_240FE088C(&v17, v15, &qword_27E51F328, &qword_241048720);
  *&v13 = a5;
  *(&v13 + 1) = a6;
  v14 = a7;
  v15[4] = v11;
  v16 = 1;

  sub_24102F0DC(&v13);
  sub_240FFBF78(&v13);
  return sub_240FE07E8(&v17, &qword_27E51F328, &qword_241048720);
}

uint64_t sub_240FFB8E4@<X0>(uint64_t a1@<X7>, void *a2@<X8>, uint64_t a3)
{
  *a2 = a1;
  a2[1] = a3;
}

uint64_t sub_240FFB904@<X0>(void *a2@<X8>)
{
  result = sub_241047128();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_240FFB9C4(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  if (a3 == 3)
  {
  }

  return v3;
}

unint64_t sub_240FFBA18()
{
  result = qword_27E51F580;
  if (!qword_27E51F580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F578, &unk_2410486F8);
    sub_240FF28F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F580);
  }

  return result;
}

uint64_t sub_240FFBA9C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_240FFBAB0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_240FFBAB0(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  if (a3 == 3)
  {
  }

  return v3;
}

void *sub_240FFBAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  *&v9[16] = *(v7 + 40);
  *v9 = *(v7 + 24);
  return sub_240FFAFF4(a1, a2, a3, a4, a5, a6, a7, *(v7 + 16), *(v7 + 24), *&v9[8], *(v7 + 48));
}

unint64_t sub_240FFBBA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F590, &unk_24104BC70);
    v3 = sub_241047228();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_240FF0D90(v5, v6, *(i - 8));
      result = sub_24102FC34(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_240FFBCC0(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v37 = *(result + 56);
  v10 = *a3;
  sub_240FF0D90(v8, v7, v9);
  result = sub_24102FC34(v8, v7, v9);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_241030478(v15, i & 1);
    result = sub_24102FC34(v8, v7, v9);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_241047518();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v22 = v18[6] + 24 * result;
    *v22 = v8;
    *(v22 + 8) = v7;
    *(v22 + 16) = v9;
    *(v18[7] + 8 * result) = v37;
    v23 = v18[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v24;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_24102FE50();
  result = v21;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = *(v18[7] + 8 * result);
  v20 = result;
  result = sub_240FF0D30(v8, v7, v9);
  *(v18[7] + 8 * v20) = v19;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 88); ; i += 4)
    {
      v7 = *(i - 3);
      v9 = *(i - 2);
      v6 = *(i - 8);
      v3 = *i;
      v27 = *a3;
      sub_240FF0D90(v7, v9, *(i - 8));
      result = sub_24102FC34(v7, v9, v6);
      v29 = v27[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        break;
      }

      v8 = v28;
      if (v27[3] < v31)
      {
        sub_241030478(v31, 1);
        result = sub_24102FC34(v7, v9, v6);
        if ((v8 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v8)
      {
        v25 = *(v33[7] + 8 * result);
        v26 = result;
        result = sub_240FF0D30(v7, v9, v6);
        *(v33[7] + 8 * v26) = v25;
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        v34 = v33[6] + 24 * result;
        *v34 = v7;
        *(v34 + 8) = v9;
        *(v34 + 16) = v6;
        *(v33[7] + 8 * result) = v3;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v33[2] = v36;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

unint64_t sub_240FFBFCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5D0, &qword_241048750);
    v3 = sub_241047228();
    v4 = a1 + 32;

    while (1)
    {
      sub_240FE088C(v4, &v18, &qword_27E51F5D8, &qword_241048758);
      v5 = v18;
      v6 = v19;
      v7 = v20;
      result = sub_24102FB5C(v18, v19, v20);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 24 * result);
      *v10 = v5;
      v10[1] = v6;
      v10[2] = v7;
      v11 = v3[7] + 72 * result;
      *v11 = v21;
      v12 = v22;
      v13 = v23;
      v14 = v24;
      *(v11 + 64) = v25;
      *(v11 + 32) = v13;
      *(v11 + 48) = v14;
      *(v11 + 16) = v12;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 96;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_240FFC128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_240FFC22C()
{
  result = qword_27E51F5A0;
  if (!qword_27E51F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F5A0);
  }

  return result;
}

unint64_t sub_240FFC2B0()
{
  result = qword_27E51F5A8;
  if (!qword_27E51F5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F448, &qword_241048080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F5A8);
  }

  return result;
}

_OWORD *sub_240FFC32C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_240FFC33C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5C0, &qword_241048740);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5C8, &qword_241048748);
    v7 = sub_241047228();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_240FE088C(v9, v5, &qword_27E51F5C0, &qword_241048740);
      result = sub_24102FD08(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_241047168();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_240FFC32C(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_240FFC528(void *a1)
{
  v2 = MEMORY[0x277D84F90];
  sub_240FFBBA4(MEMORY[0x277D84F90]);

  v3 = sub_24100AC58(a1);
  v4 = v3[2];

  v41 = v4;
  if (!v4)
  {
    v6 = v2;
LABEL_33:

    if (v6[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F590, &unk_24104BC70);
      v37 = sub_241047228();
    }

    else
    {
      v37 = MEMORY[0x277D84F98];
    }

    v56 = v37;
    sub_240FFBCC0(v6, 1, &v56);

    return v3;
  }

  v5 = 0;
  v39 = v3;
  v40 = v3 + 4;
  v6 = v2;
  while (v5 < v3[2])
  {
    v7 = &v40[24 * v5];
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[3];
    v55[2] = v7[2];
    v55[3] = v10;
    v55[0] = v8;
    v55[1] = v9;
    v11 = v7[4];
    v12 = v7[5];
    v13 = v7[7];
    v55[6] = v7[6];
    v55[7] = v13;
    v55[4] = v11;
    v55[5] = v12;
    v14 = v7[8];
    v15 = v7[9];
    v16 = v7[11];
    v55[10] = v7[10];
    v55[11] = v16;
    v55[8] = v14;
    v55[9] = v15;
    v51 = v7[8];
    v52 = v7[9];
    v53 = v7[10];
    v54 = v7[11];
    v47 = v7[4];
    v48 = v7[5];
    v49 = v7[6];
    v50 = v7[7];
    v43 = *v7;
    v44 = v7[1];
    v45 = v7[2];
    v46 = v7[3];
    v56 = v5;
    v57 = v43;
    v58 = v44;
    v59 = v45;
    v60 = v46;
    v64 = v50;
    v63 = v49;
    v62 = v48;
    v61 = v47;
    v68 = v54;
    v67 = v53;
    v66 = v52;
    v65 = v51;
    v17 = v43;
    if (v43 >= 2)
    {
      v18 = v43;
    }

    else
    {
      v18 = v2;
    }

    v19 = v18[2];
    if (v19)
    {
      v42 = v6;
      sub_240FE0990(v55, &v43);
      sub_240FF0D20(v17);
      *&v43 = v2;
      sub_240FE4428(0, v19, 0);
      v20 = v43;
      v21 = (v18 + 6);
      do
      {
        v22 = *(v21 - 2);
        v23 = *(v21 - 1);
        if ((*v21 & 0xC0) == 0x40)
        {
          v24 = 64;
        }

        else
        {
          v24 = *v21;
        }

        sub_240FF0D90(*(v21 - 2), *(v21 - 1), *v21);
        *&v43 = v20;
        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          sub_240FE4428((v25 > 1), v26 + 1, 1);
          v20 = v43;
        }

        v21 += 24;
        v20[2] = v26 + 1;
        v27 = &v20[4 * v26];
        v27[4] = v22;
        v27[5] = v23;
        *(v27 + 48) = v24;
        v27[7] = v5;
        --v19;
      }

      while (v19);

      sub_240FE07E8(&v56, &qword_27E51F588, &qword_241048708);
      v3 = v39;
      v6 = v42;
      v2 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_240FE0990(v55, &v43);
      sub_240FF0D20(v17);

      sub_240FE07E8(&v56, &qword_27E51F588, &qword_241048708);
      v20 = v2;
    }

    v28 = v20[2];
    v29 = v6[2];
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      goto LABEL_38;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && (v32 = v6[3] >> 1, v32 >= v30))
    {
      if (v20[2])
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v29 <= v30)
      {
        v33 = v29 + v28;
      }

      else
      {
        v33 = v29;
      }

      v6 = sub_240FE2F74(isUniquelyReferenced_nonNull_native, v33, 1, v6);
      v32 = v6[3] >> 1;
      if (v20[2])
      {
LABEL_28:
        if (v32 - v6[2] < v28)
        {
          goto LABEL_40;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3E0, &unk_241048710);
        swift_arrayInitWithCopy();

        if (v28)
        {
          v34 = v6[2];
          v35 = __OFADD__(v34, v28);
          v36 = v34 + v28;
          if (v35)
          {
            goto LABEL_41;
          }

          v6[2] = v36;
        }

        goto LABEL_4;
      }
    }

    if (v28)
    {
      goto LABEL_39;
    }

LABEL_4:
    if (++v5 == v41)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);

  MEMORY[0x245CD7E80](v5);

  __break(1u);
  return result;
}

unint64_t sub_240FFC958(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5B8, &qword_24104BC90);
    v3 = sub_241047228();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24102FD6C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_240FFCA5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5B0, &unk_241048730);
  v3 = sub_241047228();
  v13 = *(a1 + 32);
  result = sub_24102FDE4(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_24102FDE4(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 24))
  {
  }

  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_240FFB9C4(*(v0 + 80), *(v0 + 88), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t objectdestroy_3Tm()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t getEnumTagSinglePayload for HelpCommand.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HelpCommand.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_240FFCD9C()
{
  result = qword_27E51F5E0;
  if (!qword_27E51F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F5E0);
  }

  return result;
}

unint64_t sub_240FFCDF4()
{
  result = qword_27E51F5E8;
  if (!qword_27E51F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F5E8);
  }

  return result;
}

unint64_t sub_240FFCE4C()
{
  result = qword_27E51F5F0;
  if (!qword_27E51F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F5F0);
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

uint64_t sub_240FFCECC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_240FFCF14(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_240FFCF70(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_241046C78();
  }

  __break(1u);
  return result;
}

uint64_t sub_240FFCFBC(uint64_t result, char a2)
{
  v76 = result;
  if (a2)
  {
    result = sub_24100C580();
    v76 = result;
    v5 = v4;
    if (v4 & 1) != 0 || (v3)
    {
      result = sub_24100C8D8();
      v7 = 80;
      if ((v6 & 1) == 0)
      {
        v7 = result;
      }

      v8 = v76;
      if (v5)
      {
        v8 = v7;
      }

      v76 = v8;
    }
  }

  v75 = v2;
  v9 = v2[5];
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v78 = MEMORY[0x277D84F90];
    sub_240FE41A0(0, v10, 0);
    v11 = v78;
    v12 = v9 + 40;
    do
    {
      v13 = *(v12 - 8);
      v14 = *v12;
      v15 = *(v12 + 16);
      v16 = *(v12 + 8);
      sub_241001F08(v13, *v12, v16);

      v17 = sub_241001A30(v76, v13, v14, v16, v15);
      v19 = v18;
      sub_241001F20(v13, v14, v16);

      v78 = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        result = sub_240FE41A0((v20 > 1), v21 + 1, 1);
        v11 = v78;
      }

      *(v11 + 16) = v22;
      v23 = v11 + 16 * v21;
      *(v23 + 32) = v17;
      *(v23 + 40) = v19;
      v12 += 56;
      --v10;
    }

    while (v10);
  }

  else
  {
    v22 = *(MEMORY[0x277D84F90] + 16);
  }

  v24 = 0;
  v25 = MEMORY[0x277D84F90];
LABEL_17:
  v26 = (v11 + 40 + 16 * v24);
  while (v22 != v24)
  {
    if (v24 >= *(v11 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    ++v24;
    v28 = *(v26 - 1);
    v27 = *v26;
    v26 += 2;
    v29 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v29 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v78 = v25;
      if ((result & 1) == 0)
      {
        result = sub_240FE41A0(0, *(v25 + 16) + 1, 1);
        v25 = v78;
      }

      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_240FE41A0((v30 > 1), v31 + 1, 1);
        v25 = v78;
      }

      *(v25 + 16) = v31 + 1;
      v32 = v25 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v27;
      goto LABEL_17;
    }
  }

  v78 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
  v33 = sub_241046AA8();
  v35 = v34;

  v36 = v75;
  v37 = v75[2];
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v75[1] & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    MEMORY[0x245CD70E0]();
    v39 = sub_240FFD654(v76, 0, 0x574549565245564FLL, 0xEA0000000000203ALL);
    v41 = v40;

    v78 = v39;
    v79 = v41;

    MEMORY[0x245CD70E0](2570, 0xE200000000000000);

    v42 = v39;
    v43 = v79;
  }

  else
  {
    v42 = 0;
    v43 = 0xE000000000000000;
  }

  result = sub_240FFEB48();
  if (result)
  {
    v44 = *v75;
    v45 = *(*v75 + 16);
    if (!v45)
    {
      goto LABEL_59;
    }

    v73 = v42;
    v74 = v43;
    v77 = v35;
    v46 = v33;
    v82 = MEMORY[0x277D84F90];
    sub_240FE41A0(0, v45, 0);
    v47 = v82;
    v48 = v44 + 40;
    do
    {
      v49 = (*(*v48 + 24))();
      v82 = v47;
      v52 = *(v47 + 2);
      v51 = *(v47 + 3);
      if (v52 >= v51 >> 1)
      {
        v72 = v49;
        v54 = v50;
        sub_240FE41A0((v51 > 1), v52 + 1, 1);
        v50 = v54;
        v49 = v72;
        v47 = v82;
      }

      *(v47 + 2) = v52 + 1;
      v53 = &v47[16 * v52];
      *(v53 + 4) = v49;
      *(v53 + 5) = v50;
      v48 += 16;
      --v45;
    }

    while (v45);
    (*(*(v44 + 40) + 16))(&v78);
    v58 = v80;
    v57 = v81;

    result = sub_240FE724C(&v78);
    if (v57)
    {
      v59 = *(v47 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v47;
      v33 = v46;
      if (!isUniquelyReferenced_nonNull_native || v59 >= *(v47 + 3) >> 1)
      {
        v47 = sub_240FE2E68(isUniquelyReferenced_nonNull_native, v59 + 1, 1, v47);
        v83 = v47;
      }

      v35 = v77;
      sub_240FF9894(0, 0, 1, v58, v57);
    }

    else
    {
      v33 = v46;
      v35 = v77;
    }

    v61 = *(v47 + 2);
    v43 = v74;
    if (!v61)
    {
LABEL_60:
      __break(1u);
      return result;
    }

    v62 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v47;
    if (!v62 || v61 >= *(v47 + 3) >> 1)
    {
      v83 = sub_240FE2E68(v62, v61 + 1, 1, v47);
    }

    v36 = v75;
    sub_240FF9894(1uLL, 1, 1, 1886152040, 0xE400000000000000);
    sub_241047058();

    v63 = sub_241046AA8();
    v65 = v64;

    MEMORY[0x245CD70E0](v63, v65);

    MEMORY[0x245CD70E0](0xD000000000000021, 0x800000024104E9F0);
    v55 = 0x272065655320200ALL;
    v56 = 0xE800000000000000;
    v42 = v73;
  }

  else
  {
    v55 = 0;
    v56 = 0xE000000000000000;
  }

  v66 = v36[3];
  v67 = v36[4];
  v68 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v68 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (v68)
  {
    v78 = 0x203A4547415355;
    v79 = 0xE700000000000000;
    v69 = sub_240FFE96C(7, v66, v67);
    MEMORY[0x245CD70E0](v69);

    MEMORY[0x245CD70E0](2570, 0xE200000000000000);
    v70 = v78;
    v71 = v79;
  }

  else
  {
    v70 = 0;
    v71 = 0xE000000000000000;
  }

  v78 = v42;
  v79 = v43;
  MEMORY[0x245CD70E0](v70, v71);

  MEMORY[0x245CD70E0](v33, v35);

  MEMORY[0x245CD70E0](v55, v56);

  return v78;
}

uint64_t sub_240FFD654(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1 - a2;
  if (!__OFSUB__(a1, a2))
  {
    if (v8 < 1)
    {
      return 0;
    }

    v9 = a4;
    v10 = a3;
    v111 = MEMORY[0x277D84F90];
    v11 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v100 = 4 * v11;
    v4 = 15;
    v102 = a1 - a2;
LABEL_11:
    v24 = sub_240FFCF70(v4, v10, v9);
    v5 = v25;
    v6 = v26;
    v27 = sub_241046E88();
    if (v28)
    {
      v29 = v5;
    }

    else
    {
      v29 = v27;
    }

    if (v29 >> 14 >= v24 >> 14)
    {
      v108 = v4 >> 14;
      v5 = sub_241046ED8();
      v31 = v30;

      v8 = v5 >> 14;
      v7 = v31;
      while (v8 != v7 >> 14)
      {
        v7 = sub_241046E78();
        v33 = sub_241046EB8();
        v6 = v34;
        if (v33 == 10 && v34 == 0xE100000000000000)
        {

LABEL_28:

          if (v108 > v7 >> 14)
          {
            goto LABEL_83;
          }

          v38 = sub_241046C78();
          v5 = v38;
          v4 = v39;
          v8 = v38 >> 14;
          v41 = v40 >> 14;
          if (v38 >> 14 == v40 >> 14)
          {
            v12 = sub_241046ED8();
            v14 = v13;
            v16 = v15;
            v18 = v17;

            v19 = sub_240FE33DC(0, 1, 1, MEMORY[0x277D84F90]);
            v21 = *(v19 + 2);
            v20 = *(v19 + 3);
            v22 = v21 + 1;
            if (v21 >= v20 >> 1)
            {
              v19 = sub_240FE33DC((v20 > 1), v21 + 1, 1, v19);
            }

            v8 = v102;
          }

          else
          {
            v109 = MEMORY[0x277D84F90];
            do
            {
              v106 = v38;
              while (1)
              {
                v42 = sub_241046EB8();
                v6 = v43;
                if (v42 == 10 && v43 == 0xE100000000000000)
                {
                  break;
                }

                v44 = sub_241047428();

                if (v44)
                {
                  goto LABEL_38;
                }

                v8 = sub_241046E68() >> 14;
                if (v8 == v41)
                {
                  v38 = v106;
                  goto LABEL_46;
                }
              }

LABEL_38:
              if (v8 < v106 >> 14)
              {
                goto LABEL_84;
              }

              v45 = sub_241046ED8();
              v107 = v46;
              v103 = v48;
              v104 = v47;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v49 = v109;
              }

              else
              {
                v49 = sub_240FE33DC(0, *(v109 + 2) + 1, 1, v109);
              }

              v51 = *(v49 + 2);
              v50 = *(v49 + 3);
              v6 = (v51 + 1);
              if (v51 >= v50 >> 1)
              {
                v49 = sub_240FE33DC((v50 > 1), v51 + 1, 1, v49);
              }

              *(v49 + 2) = v6;
              v109 = v49;
              v52 = &v49[32 * v51];
              *(v52 + 4) = v45;
              *(v52 + 5) = v107;
              *(v52 + 6) = v104;
              *(v52 + 7) = v103;
              v38 = sub_241046E68();
              v8 = v38 >> 14;
            }

            while (v38 >> 14 != v41);
LABEL_46:
            if (v41 < v38 >> 14)
            {
              goto LABEL_85;
            }

            v12 = sub_241046ED8();
            v14 = v53;
            v16 = v54;
            v18 = v55;

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v8 = v102;
              v19 = v109;
            }

            else
            {
              v19 = sub_240FE33DC(0, *(v109 + 2) + 1, 1, v109);
              v8 = v102;
            }

            v21 = *(v19 + 2);
            v56 = *(v19 + 3);
            v22 = v21 + 1;
            if (v21 >= v56 >> 1)
            {
              v19 = sub_240FE33DC((v56 > 1), v21 + 1, 1, v19);
            }
          }

          *(v19 + 2) = v22;
          v23 = &v19[32 * v21];
          *(v23 + 4) = v12;
          *(v23 + 5) = v14;
          *(v23 + 6) = v16;
          *(v23 + 7) = v18;
          sub_240FE2B68(v19);
          v9 = a4;
          v10 = a3;
LABEL_10:
          v4 = sub_241046B68();
          goto LABEL_11;
        }

        v32 = sub_241047428();

        if (v32)
        {
          goto LABEL_28;
        }
      }

      v7 = v31;
      if (v100 != v31 >> 14)
      {
        while (v8 != v7 >> 14)
        {
          v7 = sub_241046E78();
          v36 = sub_241046EB8();
          v6 = v37;
          if (v36 == 32 && v37 == 0xE100000000000000)
          {

LABEL_58:

            v10 = a3;
            if (v108 > v7 >> 14)
            {
              goto LABEL_86;
            }

LABEL_63:
            v64 = sub_241046C78();
            v66 = v65;
            v68 = v67;
            v70 = v69;
            v71 = v111;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = sub_240FE33DC(0, *(v111 + 2) + 1, 1, v111);
            }

            v73 = *(v71 + 2);
            v72 = *(v71 + 3);
            if (v73 >= v72 >> 1)
            {
              v71 = sub_240FE33DC((v72 > 1), v73 + 1, 1, v71);
            }

            *(v71 + 2) = v73 + 1;
            v74 = &v71[32 * v73];
            *(v74 + 4) = v64;
            *(v74 + 5) = v66;
            *(v74 + 6) = v68;
            *(v74 + 7) = v70;
            v111 = v71;
            v8 = v102;
            goto LABEL_10;
          }

          v35 = sub_241047428();

          if (v35)
          {
            goto LABEL_58;
          }
        }

        v57 = sub_240FFCF70(v4, a3, v9);
        v59 = v58 >> 14;
        v60 = v57 >> 14;
        if (v57 >> 14 == v58 >> 14)
        {
LABEL_69:

          v76 = v4;
          v77 = a3;
          v78 = a4;
          goto LABEL_71;
        }

        v5 = v57;
        v8 = v58;
        v7 = v57;
        while (1)
        {
          v61 = sub_241046EB8();
          v6 = v62;
          if (v61 == 32 && v62 == 0xE100000000000000)
          {
            break;
          }

          v63 = sub_241047428();

          if (v63)
          {
            goto LABEL_61;
          }

          v7 = sub_241046E68();
          v60 = v7 >> 14;
          if (v7 >> 14 == v59)
          {
            goto LABEL_69;
          }
        }

LABEL_61:

        v9 = a4;
        if (v60 >= v108)
        {
          v10 = a3;
          goto LABEL_63;
        }

        goto LABEL_88;
      }

      v76 = v4;
      v77 = a3;
      v78 = v9;
LABEL_71:
      v4 = sub_240FFCF70(v76, v77, v78);
      v5 = v79;
      v8 = v80;
      v7 = v81;
      v6 = v111;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_72;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  v6 = sub_240FE33DC(0, *(v6 + 2) + 1, 1, v6);
LABEL_72:
  v83 = *(v6 + 2);
  v82 = *(v6 + 3);
  v84 = v83 + 1;
  if (v83 >= v82 >> 1)
  {
    v6 = sub_240FE33DC((v82 > 1), v83 + 1, 1, v6);
  }

  *(v6 + 2) = v84;
  v85 = &v6[32 * v83];
  *(v85 + 4) = v4;
  *(v85 + 5) = v5;
  *(v85 + 6) = v8;
  *(v85 + 7) = v7;
  v110 = MEMORY[0x277D84F90];
  sub_240FE4298(0, v83 + 1, 0);
  v86 = (v6 + 56);
  do
  {
    v87 = *(v86 - 3);
    v88 = *(v86 - 2);
    v89 = *(v86 - 1);
    v90 = *v86;

    if ((v88 ^ v87) >= 0x4000)
    {
      sub_241046C38();
      sub_241046EA8();
      sub_241046B58();
      MEMORY[0x245CD7040](15, 7, 0, 0xE000000000000000);
      sub_241046BA8();

      v91 = sub_241046EC8();
      MEMORY[0x245CD7040](v91);

      sub_240FF7468();
      sub_241046BA8();
      v87 = sub_241046EC8();
      v88 = v92;
      v89 = v93;
      v95 = v94;

      v90 = v95;
    }

    v97 = *(v110 + 16);
    v96 = *(v110 + 24);
    if (v97 >= v96 >> 1)
    {
      sub_240FE4298((v96 > 1), v97 + 1, 1);
    }

    *(v110 + 16) = v97 + 1;
    v98 = (v110 + 32 * v97);
    v98[4] = v87;
    v98[5] = v88;
    v98[6] = v89;
    v98[7] = v90;
    v86 += 4;
    --v84;
  }

  while (v84);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F530, &qword_241048900);
  sub_240FF0D48(&qword_27E51F538, &qword_27E51F530, &qword_241048900, MEMORY[0x277D83970]);
  sub_240FF74BC();
  v75 = sub_241046CC8();

  return v75;
}

uint64_t sub_240FFE044(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_241046B78();
  return sub_241046C48();
}

uint64_t sub_240FFE0C4()
{
  sub_2410475A8();
  sub_241046A88();
  sub_241046A88();
  sub_241046A88();
  return sub_2410475E8();
}

uint64_t sub_240FFE148(uint64_t a1)
{
  sub_241046A88();
  sub_241046A88();

  return sub_241046A88();
}

uint64_t sub_240FFE1B4(uint64_t a1)
{
  sub_2410475A8();
  sub_241046A88();
  sub_241046A88();
  sub_241046A88();
  return sub_2410475E8();
}

uint64_t sub_240FFE234(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_241047428() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_241047428() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_241047428();
}

uint64_t sub_240FFE32C()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v7 = *v0;

      MEMORY[0x245CD70E0](0x6D6D6F6362755320, 0xEC00000073646E61);
      return v7;
    }

    else
    {
      v5 = v2 | v1;
      if (v2 ^ 1 | v1)
      {
        v6 = 0x736E6F6974704FLL;
      }

      else
      {
        v6 = 0x616D6D6F63627553;
      }

      if (v5)
      {
        return v6;
      }

      else
      {
        return 0x746E656D75677241;
      }
    }
  }

  else
  {
    v4 = *v0;

    return v4;
  }
}

uint64_t sub_240FFE418(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      if (v9 != 1)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (!(v4 | v5))
    {
      return v9 == 2 && (v8 | v7) == 0;
    }

    if (v4 ^ 1 | v5)
    {
      if (v9 != 2 || v7 != 2)
      {
        return 0;
      }
    }

    else if (v9 != 2 || v7 != 1)
    {
      return 0;
    }

    if (!v8)
    {
      return 1;
    }
  }

  else if (!v9)
  {
LABEL_6:
    if (v4 != v7 || v5 != v8)
    {
      return sub_241047428();
    }

    return 1;
  }

  return 0;
}

uint64_t sub_240FFE4C0@<X0>(uint64_t *a9@<X8>)
{
  result = sub_241002E6C();
  *a9 = result;
  a9[1] = v11;
  return result;
}

BOOL sub_240FFE524(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t sub_240FFE554@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = result;
  v6 = a3;
  v8 = *(a4 + 16);
  if (v8)
  {
    v9 = 0;
    v34 = MEMORY[0x277D84F90];
    v35 = *(a4 + 16);
    v10 = a4 + 40;
    v30 = a4 + 40;
    do
    {
      v11 = (v10 + 16 * v9);
      while (1)
      {
        if (v9 >= v8)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return result;
        }

        if (__OFADD__(v9, 1))
        {
          goto LABEL_24;
        }

        v36 = v9 + 1;
        v13 = *(v11 - 1);
        v12 = *v11;
        v14 = *(*v11 + 16);
        v14(&v58, v13, *v11);
        v69 = v64;
        v70 = v65;
        v71 = v66;
        v72 = v67;
        v68[2] = v60;
        v68[3] = v61;
        v68[4] = v62;
        v68[5] = v63;
        v68[0] = v58;
        v68[1] = v59;
        result = sub_240FE724C(v68);
        if (v69 == 1)
        {
          break;
        }

        ++v9;
        v11 += 2;
        v8 = v35;
        if (v36 == v35)
        {
          goto LABEL_22;
        }
      }

      v28 = v6;
      v29 = a6;
      v56 = (*(v12 + 24))(v13, v12);
      v57 = v15;
      v14(&v46, v13, v12);
      v64 = v52;
      v65 = v53;
      v66 = v54;
      v67 = v55;
      v60 = v48;
      v61 = v49;
      v62 = v50;
      v63 = v51;
      v58 = v46;
      v59 = v47;
      v16 = v55;

      sub_240FE724C(&v58);
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = (v16 + 40);
        do
        {
          v20 = *(v18 - 1);
          v19 = *v18;
          *&v46 = 8236;
          *(&v46 + 1) = 0xE200000000000000;

          MEMORY[0x245CD70E0](v20, v19);

          MEMORY[0x245CD70E0](v46, *(&v46 + 1));

          v18 += 2;
          --v17;
        }

        while (v17);
      }

      v21 = *(a5 + 120);
      if (v21 && v13 == v21)
      {
        MEMORY[0x245CD70E0](0x6C75616665642820, 0xEA00000000002974);
      }

      v22 = v56;
      v23 = v57;
      v14(v37, v13, v12);
      v52 = v42;
      v53 = v43;
      v54 = v44;
      v55 = v45;
      v48 = v38;
      v49 = v39;
      v50 = v40;
      v51 = v41;
      v46 = v37[0];
      v47 = v37[1];
      v24 = v38;

      sub_240FE724C(&v46);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_240FE3818(0, *(v34 + 16) + 1, 1, v34);
        v34 = result;
      }

      v6 = v28;
      v26 = *(v34 + 16);
      v25 = *(v34 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_240FE3818((v25 > 1), v26 + 1, 1, v34);
        v34 = result;
      }

      *(v34 + 16) = v26 + 1;
      v27 = v34 + 48 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v23;
      *(v27 + 48) = v24;
      *(v27 + 64) = 0;
      *(v27 + 72) = 0xE000000000000000;
      v8 = v35;
      v9 = v36;
      a6 = v29;
      v10 = v30;
    }

    while (v36 != v35);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

LABEL_22:
  result = sub_241001F08(v32, a2, v6);
  *a6 = v32;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = v34;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0xE000000000000000;
  *(a6 + 48) = 0;
  return result;
}

uint64_t sub_240FFE8EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = sub_240FFE96C(7, v1, v2);
  MEMORY[0x245CD70E0](v4);

  return 0x203A6567617355;
}

uint64_t sub_240FFE96C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v26 = 10;
  v27 = 0xE100000000000000;
  v25[2] = &v26;

  v7 = sub_240FF3E4C(1, 0, sub_240FF7448, v25, a2, a3, v6);
  v8 = v7;
  if (v7[2] == 2)
  {
    v9 = v7[4];
    v10 = v7[5];
    v11 = v7[6];
    v12 = v7[7];

    v13 = MEMORY[0x245CD7040](v9, v10, v11, v12);
    v15 = v14;

    v26 = v13;
    v27 = v15;
    result = MEMORY[0x245CD70E0](10, 0xE100000000000000);
    if (v8[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v17 = v8[8];
      v18 = v8[9];
      v19 = v8[10];
      v20 = v8[11];

      v21 = sub_240FF484C(a1, v17, v18, v19, v20);
      v23 = v22;

      MEMORY[0x245CD70E0](v21, v23);

      return v26;
    }
  }

  else
  {
    v26 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F530, &qword_241048900);
    sub_240FF0D48(&qword_27E51F538, &qword_27E51F530, &qword_241048900, MEMORY[0x277D83970]);
    sub_240FF74BC();
    v24 = sub_241046CC8();

    return v24;
  }

  return result;
}

BOOL sub_240FFEB48()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = v1 + 56; !*(i - 8) || *(i - 8) == 2 && *(i - 24) ^ 1 | *(i - 16); i += 56)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return *(*i + 16) != 0;
}

char *sub_240FFEBA4(unsigned __int8 *a1)
{
  v2 = *a1;
  v20[0] = *v1;
  v3 = sub_2410390E8(1886152040, 0xE400000000000000, 0, 0);
  v5 = v4;
  v6 = sub_241018548(v3, v4);

  v7 = 0;
  v8 = -*(v6 + 2);
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = v7 + 1;
  v11 = &v6[24 * v7 + 32];
  while (1)
  {
    v7 = v10;
    if (v8 + v10 == 1)
    {

      v20[0] = v9;

      sub_240FFEE64(v20);

      return v20[0];
    }

    if ((v10 - 1) >= *(v6 + 2))
    {
      break;
    }

    v12 = *(v11 + 16);
    if (!v2)
    {
      v15 = *v11;
      v16 = *(v11 + 8);
      sub_240FF0D90(*v11, v16, *(v11 + 16));
LABEL_11:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_240FE30A8(0, *(v9 + 2) + 1, 1, v9);
      }

      v5 = *(v9 + 2);
      v17 = *(v9 + 3);
      if (v5 >= v17 >> 1)
      {
        v9 = sub_240FE30A8((v17 > 1), v5 + 1, 1, v9);
      }

      *(v9 + 2) = v5 + 1;
      v18 = &v9[24 * v5];
      *(v18 + 4) = v15;
      *(v18 + 5) = v16;
      v18[48] = v12;
      goto LABEL_2;
    }

    ++v10;
    v11 += 24;
    if (v12 >> 6 != 1)
    {
      v13 = *(v11 - 24);
      v14 = *(v11 - 16);
      v20[0] = 0;
      v20[1] = 0xE000000000000000;

      MEMORY[0x245CD70E0](v13, v14);
      MEMORY[0x245CD70E0](45, 0xE100000000000000);
      sub_241047128();
      sub_240FF0D30(v13, v14, v12);
      if (v12 >> 6)
      {
        v15 = 0;
        v16 = 0xE000000000000000;
        LOBYTE(v12) = 0x80;
      }

      else
      {
        LOBYTE(v12) = 0;
        v15 = 0;
        v16 = 0xE000000000000000;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  MEMORY[0x245CD7E80](v5);

  __break(1u);
  return result;
}

uint64_t sub_240FFEE64(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_241024E40(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_240FFEED0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_240FFEED0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_241047348();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_241046D48();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_240FFF288(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_240FFEFC8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_240FFEFC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 24 * a3;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v23 = v5;
    v6 = v4;
    while (1)
    {
      v33 = *v4;
      v28 = *(v4 + 8);
      v7 = *(v4 + 16);
      v9 = *(v6 - 24);
      v6 -= 24;
      v8 = v9;
      v10 = *(v4 - 16);
      v11 = *(v4 - 8);
      if (v11 >> 6)
      {
        if (v11 >> 6 == 1)
        {
          v29 = 0;
          v31 = 0xE000000000000000;
          sub_240FF0D90(v33, v28, v7);
          sub_240FF0D90(v8, v10, v11);
          MEMORY[0x245CD70E0](45, 0xE100000000000000);
          sub_241046A98();
          goto LABEL_13;
        }

        v29 = 45;
        v12 = 0xE100000000000000;
      }

      else
      {
        v29 = 11565;
        v12 = 0xE200000000000000;
      }

      v31 = v12;
      sub_240FF0D90(v33, v28, v7);
      sub_240FF0D90(v8, v10, v11);
      MEMORY[0x245CD70E0](v8, v10);
LABEL_13:
      v13 = v7;
      v14 = v29;
      v15 = v31;
      v27 = v13;
      v16 = v13 >> 6;
      if (!v16)
      {
        v30 = 11565;
        v17 = 0xE200000000000000;
LABEL_18:
        v32 = v17;
        MEMORY[0x245CD70E0](v33, v28);
        goto LABEL_19;
      }

      if (v16 != 1)
      {
        v30 = 45;
        v17 = 0xE100000000000000;
        goto LABEL_18;
      }

      v30 = 0;
      v32 = 0xE000000000000000;
      MEMORY[0x245CD70E0](45, 0xE100000000000000);
      sub_241046A98();
LABEL_19:
      if (v14 == v30 && v15 == v32)
      {

        sub_240FF0D30(v8, v10, v11);
        result = sub_240FF0D30(v33, v28, v27);
LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 24;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v18 = sub_241047428();

      sub_240FF0D30(v8, v10, v11);
      result = sub_240FF0D30(v33, v28, v27);
      if ((v18 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        __break(1u);
        return result;
      }

      v19 = *(v4 + 16);
      v20 = *v4;
      *v4 = *v6;
      *(v4 + 16) = *(v6 + 16);
      *(v4 - 24) = v20;
      *(v4 - 8) = v19;
      v4 = v6;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_240FFF288(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v123 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_123:
    v9 = *v123;
    if (!*v123)
    {
      goto LABEL_162;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_125:
      v116 = v5;
      v117 = *(v8 + 2);
      if (v117 >= 2)
      {
        while (*a3)
        {
          v118 = *&v8[16 * v117];
          v5 = *&v8[16 * v117 + 24];
          sub_240FFFD14((*a3 + 24 * v118), (*a3 + 24 * *&v8[16 * v117 + 16]), *a3 + 24 * v5, v9);
          if (v116)
          {
          }

          if (v5 < v118)
          {
            goto LABEL_149;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_241024BE8(v8);
          }

          if (v117 - 2 >= *(v8 + 2))
          {
            goto LABEL_150;
          }

          v119 = &v8[16 * v117];
          *v119 = v118;
          *(v119 + 1) = v5;
          result = sub_241024B5C(v117 - 1);
          v117 = *(v8 + 2);
          if (v117 <= 1)
          {
          }
        }

        goto LABEL_160;
      }
    }

LABEL_156:
    result = sub_241024BE8(v8);
    v8 = result;
    goto LABEL_125;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (2)
  {
    v9 = v7++;
    v130 = v8;
    if (v7 >= v6)
    {
      goto LABEL_40;
    }

    v128 = v6;
    v121 = v5;
    v10 = v9;
    v11 = *a3;
    v12 = *a3 + 24 * v7;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v124 = v10;
    v16 = *a3 + 24 * v10;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_240FF0D90(v13, v14, v15);
    sub_240FF0D90(v17, v18, v19);
    v20 = sub_241034020(v17, v18, v19);
    v22 = v21;
    if (v20 == sub_241034020(v13, v14, v15) && v22 == v23)
    {
      v134 = 0;
    }

    else
    {
      v134 = sub_241047428();
    }

    sub_240FF0D30(v17, v18, v19);
    result = sub_240FF0D30(v13, v14, v15);
    v25 = 0;
    v26 = v124 + 2;
    v27 = (v11 + 24 * v124 + 64);
    v28 = 24 * v124;
    v8 = v130;
    do
    {
      v7 = v26;
      v30 = v25;
      v5 = v28;
      if (v26 >= v128)
      {
        break;
      }

      v132 = v26;
      v31 = *(v27 - 2);
      v32 = *(v27 - 1);
      v33 = *v27;
      v34 = *(v27 - 5);
      v35 = *(v27 - 4);
      v36 = *(v27 - 24);
      v140 = v31;
      v138 = v32;
      v136 = v34;
      if (v36 >> 6)
      {
        if (v36 >> 6 == 1)
        {
          v142 = 0;
          v146 = 0xE000000000000000;
          sub_240FF0D90(v31, v32, v33);
          sub_240FF0D90(v34, v35, v36);
          MEMORY[0x245CD70E0](45, 0xE100000000000000);
          sub_241046A98();
          goto LABEL_21;
        }

        v142 = 45;
        v37 = 0xE100000000000000;
      }

      else
      {
        v142 = 11565;
        v37 = 0xE200000000000000;
      }

      v146 = v37;
      sub_240FF0D90(v31, v32, v33);
      sub_240FF0D90(v34, v35, v36);
      MEMORY[0x245CD70E0](v34, v35);
LABEL_21:
      v39 = v142;
      v38 = v146;
      if (v33 >> 6)
      {
        if (v33 >> 6 == 1)
        {
          v143 = 0;
          v147 = 0xE000000000000000;
          MEMORY[0x245CD70E0](45, 0xE100000000000000);
          sub_241046A98();
          goto LABEL_27;
        }

        v143 = 45;
        v40 = 0xE100000000000000;
      }

      else
      {
        v143 = 11565;
        v40 = 0xE200000000000000;
      }

      v147 = v40;
      MEMORY[0x245CD70E0](v140, v138);
LABEL_27:
      if (v39 == v143 && v38 == v147)
      {
        v29 = 0;
      }

      else
      {
        v29 = sub_241047428();
      }

      sub_240FF0D30(v136, v35, v36);
      result = sub_240FF0D30(v140, v138, v33);
      v7 = v132;
      v26 = v132 + 1;
      v27 += 24;
      v25 = v30 + 1;
      v28 = v5 + 24;
      v8 = v130;
    }

    while (((v134 ^ v29) & 1) == 0);
    if (v134)
    {
      v9 = v124;
      if (v7 < v124)
      {
        goto LABEL_153;
      }

      v41 = 24 * v124;
      if (v124 < v7)
      {
        v42 = 0;
        do
        {
          if (v124 + v42 != v124 + v30 + 1)
          {
            v43 = *a3;
            if (!*a3)
            {
              goto LABEL_159;
            }

            v44 = (v43 + v41);
            v45 = v43 + v5;
            v46 = v41;
            v47 = *(v44 + 16);
            v48 = *v44;
            v49 = *(v45 + 40);
            *v44 = *(v45 + 24);
            *(v44 + 2) = v49;
            *(v45 + 24) = v48;
            *(v45 + 40) = v47;
            v41 = v46;
          }

          --v30;
          ++v42;
          v5 -= 24;
          v41 += 24;
        }

        while (v42 + v124 < v124 + v30 + 2);
      }

      v5 = v121;
    }

    else
    {
      v5 = v121;
      v9 = v124;
    }

LABEL_40:
    v50 = a3[1];
    if (v7 >= v50)
    {
      goto LABEL_72;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_152;
    }

    if (v7 - v9 >= a4)
    {
LABEL_72:
      if (v7 < v9)
      {
        goto LABEL_151;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_240FE34E8(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v71 = *(v8 + 2);
      v70 = *(v8 + 3);
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        result = sub_240FE34E8((v70 > 1), v71 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v72;
      v73 = &v8[16 * v71];
      *(v73 + 4) = v9;
      *(v73 + 5) = v7;
      v74 = *v123;
      if (!*v123)
      {
        goto LABEL_161;
      }

      if (!v71)
      {
LABEL_3:
        v6 = a3[1];
        if (v7 >= v6)
        {
          goto LABEL_123;
        }

        continue;
      }

      while (1)
      {
        v9 = v72 - 1;
        if (v72 >= 4)
        {
          break;
        }

        if (v72 == 3)
        {
          v75 = *(v8 + 4);
          v76 = *(v8 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_92:
          if (v78)
          {
            goto LABEL_140;
          }

          v91 = &v8[16 * v72];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_143;
          }

          v97 = &v8[16 * v9 + 32];
          v99 = *v97;
          v98 = *(v97 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_146;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_147;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              v9 = v72 - 2;
            }

            goto LABEL_113;
          }

          goto LABEL_106;
        }

        v101 = &v8[16 * v72];
        v103 = *v101;
        v102 = *(v101 + 1);
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_106:
        if (v96)
        {
          goto LABEL_142;
        }

        v104 = &v8[16 * v9];
        v106 = *(v104 + 4);
        v105 = *(v104 + 5);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_145;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_113:
        v112 = v9 - 1;
        if (v9 - 1 >= v72)
        {
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

        if (!*a3)
        {
          goto LABEL_158;
        }

        v113 = *&v8[16 * v112 + 32];
        v114 = *&v8[16 * v9 + 40];
        sub_240FFFD14((*a3 + 24 * v113), (*a3 + 24 * *&v8[16 * v9 + 32]), *a3 + 24 * v114, v74);
        if (v5)
        {
        }

        if (v114 < v113)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_241024BE8(v8);
        }

        if (v112 >= *(v8 + 2))
        {
          goto LABEL_137;
        }

        v115 = &v8[16 * v112];
        *(v115 + 4) = v113;
        *(v115 + 5) = v114;
        result = sub_241024B5C(v9);
        v72 = *(v8 + 2);
        if (v72 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = &v8[16 * v72 + 32];
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_138;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_139;
      }

      v86 = &v8[16 * v72];
      v88 = *v86;
      v87 = *(v86 + 1);
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_141;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_144;
      }

      if (v90 >= v82)
      {
        v108 = &v8[16 * v9 + 32];
        v110 = *v108;
        v109 = *(v108 + 1);
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_148;
        }

        if (v77 < v111)
        {
          v9 = v72 - 2;
        }

        goto LABEL_113;
      }

      goto LABEL_92;
    }

    break;
  }

  v51 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_154;
  }

  if (v51 >= v50)
  {
    v51 = a3[1];
  }

  if (v51 < v9)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v7 == v51)
  {
    goto LABEL_72;
  }

  v122 = v5;
  v135 = *a3;
  v52 = *a3 + 24 * v7;
  v125 = v9;
  v126 = v51;
  v53 = v9 - v7;
  while (2)
  {
    v133 = v7;
    v127 = v53;
    v129 = v52;
    v54 = v52;
LABEL_52:
    v55 = *v52;
    v56 = *(v52 + 8);
    v57 = *(v52 + 16);
    v59 = *(v54 - 24);
    v54 -= 24;
    v58 = v59;
    v60 = *(v52 - 16);
    v61 = *(v52 - 8);
    v141 = *v52;
    v139 = v56;
    v137 = *(v52 - 8);
    if (v61 >> 6)
    {
      if (v61 >> 6 == 1)
      {
        v144 = 0;
        v148 = 0xE000000000000000;
        sub_240FF0D90(v55, v56, v57);
        sub_240FF0D90(v58, v60, v61);
        MEMORY[0x245CD70E0](45, 0xE100000000000000);
        sub_241046A98();
        goto LABEL_58;
      }

      v144 = 45;
      v62 = 0xE100000000000000;
    }

    else
    {
      v144 = 11565;
      v62 = 0xE200000000000000;
    }

    v148 = v62;
    sub_240FF0D90(v55, v56, v57);
    sub_240FF0D90(v58, v60, v61);
    MEMORY[0x245CD70E0](v58, v60);
LABEL_58:
    v64 = v144;
    v63 = v148;
    if (!(v57 >> 6))
    {
      v145 = 11565;
      v65 = 0xE200000000000000;
LABEL_63:
      v149 = v65;
      MEMORY[0x245CD70E0](v141, v139);
      goto LABEL_64;
    }

    if (v57 >> 6 != 1)
    {
      v145 = 45;
      v65 = 0xE100000000000000;
      goto LABEL_63;
    }

    v145 = 0;
    v149 = 0xE000000000000000;
    MEMORY[0x245CD70E0](45, 0xE100000000000000);
    sub_241046A98();
LABEL_64:
    if (v64 == v145 && v63 == v149)
    {

      sub_240FF0D30(v58, v60, v137);
      sub_240FF0D30(v141, v139, v57);
LABEL_50:
      v7 = v133 + 1;
      v52 = v129 + 24;
      v53 = v127 - 1;
      if (v133 + 1 == v126)
      {
        v7 = v126;
        v5 = v122;
        v8 = v130;
        v9 = v125;
        goto LABEL_72;
      }

      continue;
    }

    break;
  }

  v66 = sub_241047428();

  sub_240FF0D30(v58, v60, v137);
  result = sub_240FF0D30(v141, v139, v57);
  if ((v66 & 1) == 0)
  {
    goto LABEL_50;
  }

  if (v135)
  {
    v67 = *(v52 + 16);
    v68 = *v52;
    *v52 = *v54;
    *(v52 + 16) = *(v54 + 16);
    *(v52 - 24) = v68;
    *(v52 - 8) = v67;
    v52 = v54;
    if (__CFADD__(v53++, 1))
    {
      goto LABEL_50;
    }

    goto LABEL_52;
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_240FFFD14(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    v30 = 24 * v11;
    if (a4 != __dst || &__dst[v30] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
    }

    v13 = &v4[v30];
    if (v10 < 24 || v6 <= v7)
    {
LABEL_63:
      v29 = v6;
      goto LABEL_64;
    }

    v64 = v4;
    v60 = v7;
    while (1)
    {
      v31 = 0;
      v32 = v13;
      v52 = v6 - 24;
      v53 = v13;
      v74 = v6;
      v62 = v5;
      while (1)
      {
        v33 = &v32[v31];
        v34 = *&v32[v31 - 24];
        v35 = *&v32[v31 - 16];
        v36 = v32[v31 - 8];
        v37 = *(v6 - 3);
        v38 = *(v6 - 2);
        v39 = *(v6 - 8);
        v54 = &v32[v31 - 24];
        v55 = v38;
        v56 = v37;
        if (v39 >> 6)
        {
          if (v39 >> 6 == 1)
          {
            v67 = 0;
            v71 = 0xE000000000000000;
            sub_240FF0D90(v34, v35, v36);
            sub_240FF0D90(v37, v38, v39);
            MEMORY[0x245CD70E0](45, 0xE100000000000000);
            sub_241046A98();
            goto LABEL_45;
          }

          v67 = 45;
          v40 = 0xE100000000000000;
        }

        else
        {
          v67 = 11565;
          v40 = 0xE200000000000000;
        }

        v71 = v40;
        sub_240FF0D90(v34, v35, v36);
        sub_240FF0D90(v37, v38, v39);
        MEMORY[0x245CD70E0](v37, v38);
LABEL_45:
        v42 = v67;
        v41 = v71;
        v58 = v36;
        if (!(v36 >> 6))
        {
          v68 = 11565;
          v43 = 0xE200000000000000;
LABEL_50:
          v72 = v43;
          MEMORY[0x245CD70E0](v34, v35);
          goto LABEL_51;
        }

        if (v36 >> 6 != 1)
        {
          v68 = 45;
          v43 = 0xE100000000000000;
          goto LABEL_50;
        }

        v68 = 0;
        v72 = 0xE000000000000000;
        MEMORY[0x245CD70E0](45, 0xE100000000000000);
        sub_241046A98();
LABEL_51:
        v44 = v35;
        if (v42 == v68 && v41 == v72)
        {
          v45 = v34;
          v46 = 0;
        }

        else
        {
          v45 = v34;
          v46 = sub_241047428();
        }

        v47 = (v62 + v31 - 24);
        sub_240FF0D30(v56, v55, v39);
        sub_240FF0D30(v45, v44, v58);
        if (v46)
        {
          break;
        }

        v6 = v74;
        v32 = v53;
        if ((v62 + v31) != v33)
        {
          v48 = *v54;
          *(v62 + v31 - 8) = *(v54 + 16);
          *v47 = v48;
        }

        v31 -= 24;
        v13 = &v53[v31];
        v4 = v64;
        if (&v53[v31] <= v64)
        {
          goto LABEL_63;
        }
      }

      v29 = v52;
      if ((v62 + v31) != v74)
      {
        v49 = *v52;
        *(v62 + v31 - 8) = *(v52 + 2);
        *v47 = v49;
      }

      v13 = &v53[v31];
      v4 = v64;
      if (&v53[v31] > v64)
      {
        v5 = v62 + v31 - 24;
        v6 = v52;
        if (v52 > v60)
        {
          continue;
        }
      }

      v13 = &v53[v31];
      goto LABEL_64;
    }
  }

  v12 = 24 * v9;
  if (a4 != __src || &__src[v12] <= a4)
  {
    memmove(a4, __src, v12);
  }

  v13 = &v4[v12];
  if (v8 >= 24 && v6 < v5)
  {
    v57 = &v4[v12];
    v61 = v5;
    do
    {
      v59 = v7;
      v15 = *v6;
      v14 = *(v6 + 1);
      v73 = v6;
      v16 = v6[16];
      v18 = *v4;
      v17 = *(v4 + 1);
      v19 = v4[16];
      v63 = v4;
      if (v19 >> 6)
      {
        if (v19 >> 6 == 1)
        {
          v65 = 0;
          v69 = 0xE000000000000000;
          sub_240FF0D90(v15, v14, v16);
          sub_240FF0D90(v18, v17, v19);
          MEMORY[0x245CD70E0](45, 0xE100000000000000);
          sub_241046A98();
          goto LABEL_14;
        }

        v65 = 45;
        v20 = 0xE100000000000000;
      }

      else
      {
        v65 = 11565;
        v20 = 0xE200000000000000;
      }

      v69 = v20;
      sub_240FF0D90(v15, v14, v16);
      sub_240FF0D90(v18, v17, v19);
      MEMORY[0x245CD70E0](v18, v17);
LABEL_14:
      v22 = v65;
      v21 = v69;
      if (!(v16 >> 6))
      {
        v66 = 11565;
        v23 = 0xE200000000000000;
LABEL_19:
        v70 = v23;
        MEMORY[0x245CD70E0](v15, v14);
        goto LABEL_20;
      }

      if (v16 >> 6 != 1)
      {
        v66 = 45;
        v23 = 0xE100000000000000;
        goto LABEL_19;
      }

      v66 = 0;
      v70 = 0xE000000000000000;
      MEMORY[0x245CD70E0](45, 0xE100000000000000);
      sub_241046A98();
LABEL_20:
      if (v22 == v66 && v21 == v70)
      {

        sub_240FF0D30(v18, v17, v19);
        sub_240FF0D30(v15, v14, v16);
LABEL_25:
        v25 = v63;
        v4 = v63 + 24;
        v26 = v59;
        v27 = v59 == v63;
        v6 = v73;
        goto LABEL_26;
      }

      v24 = sub_241047428();

      sub_240FF0D30(v18, v17, v19);
      sub_240FF0D30(v15, v14, v16);
      if ((v24 & 1) == 0)
      {
        goto LABEL_25;
      }

      v25 = v73;
      v6 = v73 + 24;
      v26 = v59;
      v27 = v59 == v73;
      v4 = v63;
LABEL_26:
      v13 = v57;
      if (!v27)
      {
        v28 = *v25;
        *(v26 + 2) = *(v25 + 2);
        *v26 = v28;
      }

      v7 = v26 + 24;
    }

    while (v4 < v57 && v6 < v61);
  }

  v29 = v7;
LABEL_64:
  v50 = 24 * ((v13 - v4) / 24);
  if (v29 != v4 || v29 >= &v4[v50])
  {
    memmove(v29, v4, v50);
  }

  return 1;
}

uint64_t sub_241000360(unint64_t a1, unsigned __int8 *a2)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1;
  v147 = *(a1 + 16);
  v148 = a1 + 16;
  v3 = *a2;
  v4 = MEMORY[0x277D84F90];
  v156 = sub_240FFC958(MEMORY[0x277D84F90]);
  v5 = sub_240FF4E24(v3, v2);
  v152 = v7;
  v8 = *(v5 + 16);
  v168 = v5;
  if (!v8)
  {
    v149 = 0;
    v150 = v4;
    v151 = v4;
LABEL_120:
    (*(*(v148 + 16 * v147 + 8) + 16))(&v184);
    v171 = MEMORY[0x277D84F90];
    v115 = *(&v190 + 1);
    if (!*(*(&v190 + 1) + 16))
    {
      goto LABEL_123;
    }

    sub_240FFE554(1, 0, 2, v115, &v184, v196);

    v6 = sub_240FE3938(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v6 + 2);
    v10 = *(v6 + 3);
    v2 = v3 + 1;
    if (v3 >= v10 >> 1)
    {
      goto LABEL_155;
    }

    goto LABEL_122;
  }

  v9 = 0;
  v149 = 0;
  v163 = v5 + 32;
  v10 = &unk_241048000;
  v4 = MEMORY[0x277D84F90];
  v150 = MEMORY[0x277D84F90];
  v151 = MEMORY[0x277D84F90];
  v167 = *(v5 + 16);
LABEL_4:
  if (v9 >= v8)
  {
    goto LABEL_149;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_150;
  }

  v10 = *(v5 + 16);
  if (v9 >= v10)
  {
    goto LABEL_151;
  }

  v161 = v4;
  v11 = (v163 + 192 * v9);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  v186 = v11[2];
  v187 = v14;
  v184 = v12;
  v185 = v13;
  v15 = v11[4];
  v16 = v11[5];
  v17 = v11[7];
  v190 = v11[6];
  v191 = v17;
  v188 = v15;
  v189 = v16;
  v18 = v11[8];
  v19 = v11[9];
  v20 = v11[11];
  v194 = v11[10];
  v195 = v20;
  v192 = v18;
  v193 = v19;
  v153 = v9;
  v164 = v9 + 1;
  v3 = *(&v185 + 1);
  v21 = v185;
  v22 = *(&v186 + 1);
  v169 = v186;
  v158 = v187;
  v4 = *(&v187 + 1);
  v157 = *(&v188 + 1);
  v23 = v188;
  v159 = v189;
  v160 = v191;
  v2 = *(*(&v186 + 1) + 16);
  sub_240FE0990(&v184, &v172);
  v24 = 0;
  v25 = v22 + 40;
  v26 = MEMORY[0x277D84F90];
LABEL_8:
  v10 = v25 + 16 * v24;
  while (1)
  {
    if (v2 == v24)
    {
      if (v3)
      {
        v35 = v3;
      }

      else
      {
        v21 = 0;
        v35 = 0xE000000000000000;
      }

      if ((v35 & 0x2000000000000000) != 0)
      {
        v36 = HIBYTE(v35) & 0xF;
      }

      else
      {
        v36 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (*(v26 + 16))
      {
        if (!v36)
        {

          *&v172 = 0x3A7365756C617628;
          *(&v172 + 1) = 0xE900000000000020;
          *&v198[0] = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
          sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
          v41 = sub_241046AA8();
          v35 = v42;

          v40 = v41;
LABEL_32:
          MEMORY[0x245CD70E0](v40, v35);

          MEMORY[0x245CD70E0](41, 0xE100000000000000);
          v44 = *(&v172 + 1);
          v43 = v172;
          if (v158)
          {
            goto LABEL_33;
          }

          goto LABEL_74;
        }

        *&v172 = 0;
        *(&v172 + 1) = 0xE000000000000000;

        sub_241047058();

        *&v172 = 0x3A7365756C617628;
        *(&v172 + 1) = 0xE900000000000020;
        *&v198[0] = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
        sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
        v37 = sub_241046AA8();
        v39 = v38;

        MEMORY[0x245CD70E0](v37, v39);

        MEMORY[0x245CD70E0](0x6C7561666564203BLL, 0xEB00000000203A74);
      }

      else
      {

        if (!v36)
        {

          v43 = 0;
          v44 = 0xE000000000000000;
          if (v158)
          {
LABEL_33:
            v2 = v168;
            v45 = v169;
            v3 = v169 + 32;
            v46 = v164;
            while (1)
            {
              v48 = v167;
              if (v46 == v167)
              {
                v46 = v167;
                goto LABEL_64;
              }

              v10 = *(v2 + 16);
              if (v46 >= v10)
              {
                goto LABEL_148;
              }

              v10 = *(v163 + 192 * v46 + 32);
              v49 = *(v10 + 16);
              if (v49 != *(v45 + 16))
              {
                goto LABEL_64;
              }

              if (v49 && v10 != v45)
              {
                break;
              }

LABEL_34:
              v47 = __OFADD__(v46++, 1);
              v2 = v168;
              if (v47)
              {
                goto LABEL_152;
              }
            }

            v2 = 0;
            v51 = v10 + 32;
            while (1)
            {
              if (v2 == v49)
              {
                goto LABEL_146;
              }

              v52 = (v51 + 24 * v2);
              v53 = *v52;
              v54 = v52[1];
              v4 = v52[2];
              v55 = (v3 + 24 * v2);
              v6 = *(v55 + 1);
              v56 = *(v55 + 2);
              v57 = v53 == *v55 && v54 == v6;
              if (!v57 && (sub_241047428() & 1) == 0)
              {
                break;
              }

              v58 = *(v4 + 2);
              v10 = *(v56 + 16);
              if (v58 != v10)
              {
                break;
              }

              if (v58)
              {
                v59 = v4 == v56;
              }

              else
              {
                v59 = 1;
              }

              if (!v59)
              {
                v4 += 40;
                v60 = (v56 + 40);
                while (v58)
                {
                  v6 = *v60;
                  v61 = *(v4 - 1) == *(v60 - 1) && *v4 == v6;
                  if (!v61 && (sub_241047428() & 1) == 0)
                  {
                    goto LABEL_63;
                  }

                  v4 += 16;
                  v60 += 2;
                  if (!--v58)
                  {
                    goto LABEL_43;
                  }
                }

                goto LABEL_145;
              }

LABEL_43:
              ++v2;
              v45 = v169;
              if (v2 == v49)
              {
                goto LABEL_34;
              }
            }

LABEL_63:
            v48 = v167;
            v2 = v168;
LABEL_64:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
            v62 = swift_allocObject();
            v63 = v192;
            v64 = v194;
            v65 = v195;
            v62[11] = v193;
            v62[12] = v64;
            v62[13] = v65;
            v66 = v188;
            v67 = v190;
            v68 = v191;
            v62[7] = v189;
            v62[8] = v67;
            v62[9] = v68;
            v62[10] = v63;
            v69 = v184;
            v70 = v185;
            v62[1] = xmmword_241047BF0;
            v62[2] = v69;
            v71 = v186;
            v72 = v187;
            v62[3] = v70;
            v62[4] = v71;
            v62[5] = v72;
            v62[6] = v66;
            v10 = v153;
            if (v46 <= v153)
            {
              goto LABEL_153;
            }

            if (v48 < v46)
            {
              goto LABEL_154;
            }

            *&v198[0] = v62;
            sub_240FE0990(&v184, &v172);

            sub_240FE243C(v164, v46, v2, v152);
            v73 = *&v198[0];
            *&v172 = *&v198[0];
            *(&v172 + 1) = sub_240FFE4C0;
            *&v173 = 0;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F608, &qword_241048918);
            sub_241001FF8();
            v170 = sub_241046AA8();
            v75 = v74;

            v76 = (v73 + 96);
            v77 = *(v73 + 16) + 1;
            while (--v77)
            {
              v4 = *(v76 - 1);
              v23 = *v76;
              v76 += 24;
              v78 = HIBYTE(v23) & 0xF;
              if ((v23 & 0x2000000000000000) == 0)
              {
                v78 = v4 & 0xFFFFFFFFFFFFLL;
              }

              if (v78)
              {

                v9 = v46;
                goto LABEL_75;
              }
            }

            v4 = 0;
            v23 = 0xE000000000000000;
            v9 = v46;
LABEL_75:
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
            v80 = swift_allocObject();
            *(v80 + 16) = xmmword_241048380;
            *(v80 + 32) = v4;
            *(v80 + 40) = v23;
            *(v80 + 48) = v43;
            *(v80 + 56) = v44;
            *&v172 = v80;
            *(&v172 + 1) = sub_240FFE524;
            *&v173 = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5F8, &unk_241048908);
            sub_241001F38();
            v81 = sub_241046AA8();
            v83 = v82;

            v84 = HIBYTE(*(&v160 + 1)) & 0xFLL;
            if ((*(&v160 + 1) & 0x2000000000000000) == 0)
            {
              v84 = v160 & 0xFFFFFFFFFFFFLL;
            }

            v2 = v184;
            if (!v84)
            {
              if (v184)
              {

                v4 = v161;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v150 = sub_240FE3818(0, *(v150 + 2) + 1, 1, v150);
                }

                v3 = *(v150 + 2);
                v91 = *(v150 + 3);
                v2 = v3 + 1;
                if (v3 >= v91 >> 1)
                {
                  v150 = sub_240FE3818((v91 > 1), v3 + 1, 1, v150);
                }

                sub_240FF0CCC(&v184);
                *(v150 + 2) = v2;
                v10 = &v150[48 * v3];
                *(v10 + 32) = v170;
              }

              else
              {

                v4 = v161;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v4 = sub_240FE3818(0, *(v161 + 2) + 1, 1, v161);
                }

                v3 = *(v4 + 2);
                v85 = *(v4 + 3);
                v2 = v3 + 1;
                if (v3 >= v85 >> 1)
                {
                  v4 = sub_240FE3818((v85 > 1), v3 + 1, 1, v4);
                }

                sub_240FF0CCC(&v184);
                *(v4 + 2) = v2;
                v10 = &v4[48 * v3];
                *(v10 + 32) = v170;
              }

              *(v10 + 40) = v75;
              *(v10 + 48) = v81;
              *(v10 + 56) = v83;
              *(v10 + 64) = v157;
              *(v10 + 72) = v159;
              v8 = v167;
              v5 = v168;
              if (v9 == v167)
              {
                goto LABEL_120;
              }

              goto LABEL_4;
            }

            v86 = v156[2];
            swift_bridgeObjectRetain_n();
            v87 = *(&v160 + 1);

            sub_240FF0D20(v2);
            if (v86 && (, sub_24102FD6C(v160, *(&v160 + 1)), v89 = v88, , (v89 & 1) != 0))
            {
              v90 = v160;
            }

            else
            {

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v92 = v151;
              }

              else
              {
                v92 = sub_240FE2E68(0, *(v151 + 2) + 1, 1, v151);
              }

              v94 = *(v92 + 2);
              v93 = *(v92 + 3);
              if (v94 >= v93 >> 1)
              {
                v92 = sub_240FE2E68((v93 > 1), v94 + 1, 1, v92);
              }

              *(v92 + 2) = v94 + 1;
              v151 = v92;
              v95 = &v92[16 * v94];
              v87 = *(&v160 + 1);
              v90 = v160;
              *(v95 + 2) = v160;
            }

            sub_241001FE8(v149, 0);
            v96 = v156;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v172 = v156;
            v99 = sub_24102FD6C(v90, v87);
            v100 = v156[2];
            v101 = (v98 & 1) == 0;
            v102 = v100 + v101;
            if (__OFADD__(v100, v101))
            {
              __break(1u);
LABEL_157:
              result = sub_241047518();
              __break(1u);
              return result;
            }

            if (v156[3] < v102)
            {
              v165 = v98;
              sub_241030784(v102, isUniquelyReferenced_nonNull_native);
              v103 = v90;
              v104 = v172;
              v105 = sub_24102FD6C(v103, *(&v160 + 1));
              if ((v165 & 1) != (v106 & 1))
              {
                goto LABEL_157;
              }

              v99 = v105;
              v96 = v104;
              v90 = v160;
              if ((v165 & 1) == 0)
              {
                goto LABEL_110;
              }

LABEL_107:

              goto LABEL_111;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              if (v98)
              {
                goto LABEL_107;
              }
            }

            else
            {
              v107 = v98;
              sub_24102FFC4();
              v96 = v172;
              if (v107)
              {
                goto LABEL_107;
              }
            }

LABEL_110:
            sub_24103157C(v99, v90, *(&v160 + 1), MEMORY[0x277D84F90], v96);
LABEL_111:
            v156 = v96;
            v108 = v96[7];
            v3 = *(v108 + 8 * v99);
            v109 = swift_isUniquelyReferenced_nonNull_native();
            *(v108 + 8 * v99) = v3;
            if (v109)
            {
              v110 = v99;
            }

            else
            {
              v3 = sub_240FE3818(0, *(v3 + 16) + 1, 1, v3);
              v110 = v99;
              *(v108 + 8 * v99) = v3;
            }

            v112 = *(v3 + 16);
            v111 = *(v3 + 24);
            if (v112 >= v111 >> 1)
            {
              *(v108 + 8 * v110) = sub_240FE3818((v111 > 1), v112 + 1, 1, v3);
            }

            sub_240FF9BBC(v2);

            sub_240FF0CCC(&v184);
            v113 = *(v108 + 8 * v110);
            *(v113 + 16) = v112 + 1;
            v10 = v113 + 48 * v112;
            v5 = v168;
            *(v10 + 32) = v170;
            *(v10 + 40) = v75;
            *(v10 + 48) = v81;
            *(v10 + 56) = v83;
            *(v10 + 64) = v157;
            *(v10 + 72) = v159;
            v149 = sub_240FFE544;
            v8 = v167;
            v4 = v161;
            if (v9 == v167)
            {
              goto LABEL_120;
            }

            goto LABEL_4;
          }

LABEL_74:
          v180 = v192;
          v181 = v193;
          v182 = v194;
          v183 = v195;
          v176 = v188;
          v177 = v189;
          v178 = v190;
          v179 = v191;
          v172 = v184;
          v173 = v185;
          v174 = v186;
          v175 = v187;
          v170 = sub_241002E6C();
          v75 = v79;

          v9 = v164;
          goto LABEL_75;
        }

        *&v172 = 0x746C756166656428;
        *(&v172 + 1) = 0xEA0000000000203ALL;
      }

      v40 = v21;
      goto LABEL_32;
    }

    if (v24 >= *(v22 + 16))
    {
      break;
    }

    ++v24;
    v27 = *(v10 - 8);
    v28 = *v10;
    v10 += 16;
    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v155 = v25;

      v30 = swift_isUniquelyReferenced_nonNull_native();
      *&v172 = v26;
      v154 = v21;
      if ((v30 & 1) == 0)
      {
        sub_240FE41A0(0, *(v26 + 16) + 1, 1);
        v26 = v172;
      }

      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      v33 = v32 + 1;
      v25 = v155;
      if (v32 >= v31 >> 1)
      {
        sub_240FE41A0((v31 > 1), v32 + 1, 1);
        v33 = v32 + 1;
        v25 = v155;
        v26 = v172;
      }

      *(v26 + 16) = v33;
      v34 = v26 + 16 * v32;
      *(v34 + 32) = v27;
      *(v34 + 40) = v28;
      v21 = v154;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    v6 = sub_240FE3938((v10 > 1), v2, 1, v6);
LABEL_122:
    *(v6 + 2) = v2;
    v116 = &v6[56 * v3];
    v117 = v196[1];
    *(v116 + 2) = v196[0];
    *(v116 + 3) = v117;
    *(v116 + 4) = v196[2];
    v116[80] = v197;
    v171 = v6;
LABEL_123:
    v162 = v4;
    v178 = v190;
    v179 = v191;
    v180 = v192;
    *&v181 = v193;
    v174 = v186;
    v175 = v187;
    v176 = v188;
    v177 = v189;
    v172 = v184;
    v173 = v185;
    v3 = &v172;
    v118 = CommandConfiguration.groupedSubcommands.getter();
    v2 = v118;
    v4 = *(v118 + 16);
    v119 = MEMORY[0x277D84F90];
    if (!v4)
    {
      break;
    }

    v120 = 0;
    v121 = (v118 + 48);
    while (1)
    {
      v10 = *(v2 + 16);
      if (v120 >= v10)
      {
        break;
      }

      v123 = *(v121 - 1);
      v122 = *v121;
      v124 = *(v121 - 2);

      sub_240FFE554(v124, v123, 1, v122, &v184, v198);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = sub_240FE3938(0, *(v119 + 2) + 1, 1, v119);
      }

      v126 = *(v119 + 2);
      v125 = *(v119 + 3);
      v3 = v126 + 1;
      if (v126 >= v125 >> 1)
      {
        v119 = sub_240FE3938((v125 > 1), v126 + 1, 1, v119);
      }

      ++v120;
      *(v119 + 2) = v3;
      v127 = &v119[56 * v126];
      v128 = v198[0];
      v129 = v198[1];
      v130 = v198[2];
      v127[80] = v199;
      *(v127 + 3) = v129;
      *(v127 + 4) = v130;
      *(v127 + 2) = v128;
      v121 += 3;
      if (v4 == v120)
      {
        goto LABEL_131;
      }
    }
  }

LABEL_131:

  sub_240FE724C(&v184);
  sub_240FE2344(v119);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F470, &qword_2410480A8);
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_241047BF0;
  *(v131 + 32) = 0;
  *(v131 + 40) = 0;
  *(v131 + 48) = 2;
  *(v131 + 56) = v162;
  *(v131 + 64) = 0;
  *(v131 + 72) = 0xE000000000000000;
  *(v131 + 80) = 0;
  v132 = *(v151 + 2);
  if (v132)
  {
    v166 = v131;
    v133 = MEMORY[0x277D84F90];
    *&v172 = MEMORY[0x277D84F90];

    sub_240FE4278(0, v132, 0);
    v134 = v172;
    v135 = (v151 + 40);
    v136 = v156;
    do
    {
      v138 = *(v135 - 1);
      v137 = *v135;
      v139 = v136[2];

      if (v139)
      {

        v140 = sub_24102FD6C(v138, v137);
        v136 = v156;
        if (v141)
        {
          v133 = *(v156[7] + 8 * v140);
        }
      }

      *&v172 = v134;
      v143 = *(v134 + 16);
      v142 = *(v134 + 24);
      if (v143 >= v142 >> 1)
      {
        sub_240FE4278((v142 > 1), v143 + 1, 1);
        v136 = v156;
        v134 = v172;
      }

      *(v134 + 16) = v143 + 1;
      v144 = v134 + 56 * v143;
      *(v144 + 32) = v138;
      *(v144 + 40) = v137;
      *(v144 + 48) = 0;
      *(v144 + 56) = v133;
      *(v144 + 64) = 0;
      *(v144 + 72) = 0xE000000000000000;
      *(v144 + 80) = 0;
      v135 += 2;
      --v132;
      v133 = MEMORY[0x277D84F90];
    }

    while (v132);

    v131 = v166;
  }

  else
  {

    v134 = MEMORY[0x277D84F90];
  }

  sub_240FE2344(v134);
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_241047BF0;
  *(v145 + 32) = xmmword_241048880;
  *(v145 + 48) = 2;
  *(v145 + 56) = v150;
  *(v145 + 64) = 0;
  *(v145 + 72) = 0xE000000000000000;
  *(v145 + 80) = 0;
  sub_240FE2344(v145);
  sub_240FE2344(v171);

  v114 = v131;
  sub_241001FE8(v149, 0);
  return v114;
}

uint64_t sub_24100140C@<X0>(unint64_t a1@<X0>, char *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    result = sub_2410471B8();
    __break(1u);
    return result;
  }

  v4 = a1;
  v6 = *a2;
  v7 = a1 + 16 * v3;
  v8 = *(v7 + 16);
  v54 = *(v7 + 24);
  v9 = *(v54 + 8);
  v51 = v6;
  LOBYTE(v76[0]) = v6;
  v50 = sub_240FDF86C(v8, v9, v76, 0, 0, 0);
  v11 = v10;
  v78 = v4;
  v77 = MEMORY[0x277D84F90];

  sub_240FE41A0(0, v3, 0);
  v12 = v77;
  v13 = v4 + 40;
  v53 = v4;
  do
  {
    v14 = (*(*v13 + 24))();
    v77 = v12;
    v17 = *(v12 + 16);
    v16 = *(v12 + 24);
    if (v17 >= v16 >> 1)
    {
      v19 = v14;
      v20 = v15;
      sub_240FE41A0((v16 > 1), v17 + 1, 1);
      v15 = v20;
      v14 = v19;
      v4 = v53;
      v12 = v77;
    }

    *(v12 + 16) = v17 + 1;
    v18 = v12 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    v13 += 16;
    --v3;
  }

  while (v3);
  v52 = a3;
  v76[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
  v21 = sub_241046AA8();
  v23 = v22;

  (*(*(v4 + 40) + 16))(v76);
  v24 = v76[2];
  v25 = v76[3];

  sub_240FE724C(v76);
  if (v25)
  {
    v75[0] = v24;
    v75[1] = v25;
    MEMORY[0x245CD70E0](32, 0xE100000000000000);
    MEMORY[0x245CD70E0](v21, v23);

    v21 = v24;
    v23 = v25;
  }

  v26 = v54;
  v27 = *(v54 + 16);
  v27(v75, v8, v54);
  v28 = v75[6];
  v29 = v75[7];

  sub_240FE724C(v75);
  if (!v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F400, &qword_241048030);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_241047BF0;
    *(v31 + 32) = v50;
    *(v31 + 40) = v11;
    v32 = sub_240FFC528(v31);
    v34 = v33;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v28 = sub_2410026EC(v21, v23, v32, v34);
    v29 = v35;

    v55 = v28;
    v56 = v29;
    v27(v68, v8, v54);
    v64 = v71;
    v65 = v72;
    v66 = v73;
    v67 = v74;
    v60 = v68[2];
    v61 = v68[3];
    v62 = v69;
    v63 = v70;
    v59[0] = v68[0];
    v59[1] = v68[1];
    CommandConfiguration.subcommands.getter();
    v37 = v36;
    sub_240FE724C(v68);
    v38 = *(v37 + 16);

    if (!v38)
    {
      v30 = v52;
      v26 = v54;
LABEL_19:
      v80 = v28;
      v81 = v29;
      goto LABEL_20;
    }

    v39 = sub_240FFE044(v28, v29);
    v30 = v52;
    v26 = v54;
    if (v40)
    {
      if (v39 == 32 && v40 == 0xE100000000000000)
      {

LABEL_18:
        MEMORY[0x245CD70E0](0x6D6D6F636275733CLL, 0xEC0000003E646E61);
        v28 = v55;
        v29 = v56;
        goto LABEL_19;
      }

      v41 = sub_241047428();
      v26 = v54;

      if (v41)
      {
        goto LABEL_18;
      }
    }

    MEMORY[0x245CD70E0](32, 0xE100000000000000);
    goto LABEL_18;
  }

  v80 = v28;
  v81 = v29;
  v30 = v52;
LABEL_20:
  v27(v59, v8, v26);
  v42 = *(&v60 + 1);
  v43 = v60;

  sub_240FE724C(v59);
  v79 = __PAIR128__(v42, v43);
  v27(v68, v8, v26);
  v44 = v69;

  sub_240FE724C(v68);

  v45 = HIBYTE(*(&v44 + 1)) & 0xFLL;
  if ((*(&v44 + 1) & 0x2000000000000000) == 0)
  {
    v45 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {
    v46 = HIBYTE(v42) & 0xF;
    if ((v42 & 0x2000000000000000) == 0)
    {
      v46 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {
      MEMORY[0x245CD70E0](10, 0xE100000000000000);
    }

    v27(&v55, v8, v54);
    v47 = v57;
    v48 = v58;

    sub_240FE724C(&v55);
    MEMORY[0x245CD70E0](v47, v48);

    MEMORY[0x245CD70E0](10, 0xE100000000000000);

    v42 = *(&v79 + 1);
    v43 = v79;
    v28 = v80;
    v29 = v81;
  }

  LOBYTE(v55) = v51;
  result = sub_241000360(v53, &v55);
  *v30 = v78;
  v30[1] = v43;
  v30[2] = v42;
  v30[3] = v28;
  v30[4] = v29;
  v30[5] = result;
  v30[6] = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_241001A30(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    return 0;
  }

  v51 = MEMORY[0x277D84F90];
  sub_240FE41A0(0, v5, 0);
  v7 = v51;
  v8 = (a5 + 72);
  do
  {
    v46 = v5;
    v47 = v7;
    v9 = *(v8 - 5);
    v10 = *(v8 - 4);
    v11 = *(v8 - 3);
    v12 = *(v8 - 2);
    v13 = *(v8 - 1);
    v14 = *v8;

    *&v48 = sub_241046C38();
    *(&v48 + 1) = v15;

    MEMORY[0x245CD70E0](v9, v10);

    v16 = v48;
    v17 = sub_240FFD654(a1, 26, v11, v12);
    v19 = v18;
    v20 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v20 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v49 = sub_240FFD654(a1, 8, v13, v14);
      v50 = v21;

      MEMORY[0x245CD70E0](10, 0xE100000000000000);

      v22 = v50;
      v20 = v49;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v45 = v20;
    v23 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v23 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      if (sub_241046B58() >= 26)
      {
        MEMORY[0x245CD70E0](v17, v19);

        v34 = 0xE100000000000000;
        v32 = 10;
      }

      else
      {
        v24 = sub_241046B58();
        v25 = sub_241039038(v24, v17, v19);
        v27 = v26;
        v29 = v28;
        v43 = v22;
        v31 = v30;

        v32 = MEMORY[0x245CD7040](v25, v27, v29, v31);
        v34 = v33;
        v22 = v43;
      }
    }

    else
    {

      v32 = 0;
      v34 = 0xE000000000000000;
    }

    MEMORY[0x245CD70E0](v32, v34);

    MEMORY[0x245CD70E0](10, 0xE100000000000000);

    MEMORY[0x245CD70E0](v45, v22);

    v7 = v47;
    v36 = *(v47 + 16);
    v35 = *(v47 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_240FE41A0((v35 > 1), v36 + 1, 1);
      v7 = v47;
    }

    v8 += 6;
    *(v16 + 16) = v36 + 1;
    *(v16 + 16 * v36 + 32) = v16;
    v5 = v46 - 1;
  }

  while (v46 != 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
  v37 = sub_241046AA8();
  v39 = v38;

  if (a4)
  {
    if (a4 == 1)
    {

      MEMORY[0x245CD70E0](0x6D6D6F6362755320, 0xEC00000073646E61);
    }
  }

  else
  {
  }

  v41 = sub_241046A38();

  MEMORY[0x245CD70E0](2618, 0xE200000000000000);

  MEMORY[0x245CD70E0](v37, v39);

  return v41;
}

uint64_t sub_241001F08(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_241001F20(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_241001F38()
{
  result = qword_27E51F600;
  if (!qword_27E51F600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F5F8, &unk_241048908);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F600);
  }

  return result;
}

uint64_t sub_241001FE8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_241001FF8()
{
  result = qword_27E51F610;
  if (!qword_27E51F610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F608, &qword_241048918);
    sub_240FF0D48(&qword_27E51F618, &qword_27E51F620, &unk_241048920, MEMORY[0x277D83958]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F610);
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

uint64_t sub_2410020BC(uint64_t a1, int a2)
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

uint64_t sub_241002104(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24100216C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2410021B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22ArgumentParserInternal13HelpGeneratorV7SectionV6HeaderO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24100223C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_241002284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2410022E8()
{
  result = qword_27E51F628;
  if (!qword_27E51F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F628);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_241002350(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_241002398(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2410023DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_241002404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241047BF0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_240FE2060(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
  v6 = sub_241046AA8();
  v8 = v7;

  MEMORY[0x245CD70E0](v6, v8);
}

uint64_t sub_241002528()
{
  v1 = v0[9];
  v31 = v0[8];
  v32 = v1;
  v2 = v0[11];
  v33 = v0[10];
  v34 = v2;
  v3 = v0[5];
  v27[4] = v0[4];
  v28 = v3;
  v4 = v0[7];
  v29 = v0[6];
  v30 = v4;
  v5 = v0[1];
  v27[0] = *v0;
  v27[1] = v5;
  v6 = v0[3];
  v27[2] = v0[2];
  v27[3] = v6;
  if (*&v27[0])
  {
    if (*&v27[0] == 1)
    {
      return 0;
    }

    v8 = sub_24102BED8(*&v27[0]);
    if (v10 > 0xFDu)
    {
      result = sub_2410471B8();
      __break(1u);
      return result;
    }

    if ((BYTE8(v33) & 1) == 0)
    {
      v20 = v8;
      v21 = v9;
      v22 = v10;
      v23 = sub_241034020(v8, v9, v10);
      sub_240FF47C4(v20, v21, v22);
      return v23;
    }

    v11 = v8;
    v12 = v9;
    v13 = v10;
    v14 = sub_241034020(v8, v9, v10);
    v16 = v15;
    sub_240FF47C4(v11, v12, v13);
    v25 = v14;
    v26 = v16;
    MEMORY[0x245CD70E0](15392, 0xE200000000000000);
  }

  else
  {
    v25 = 60;
    v26 = 0xE100000000000000;
  }

  v18 = *(&v28 + 1);
  v17 = v29;
  v19 = BYTE7(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v19 = *(&v28 + 1) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
  }

  else
  {
    sub_24102CC00(v27, v24);
    v18 = v24[0];
    v17 = v24[1];
  }

  MEMORY[0x245CD70E0](v18, v17);

  MEMORY[0x245CD70E0](62, 0xE100000000000000);
  return v25;
}

uint64_t sub_2410026EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a3 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    v10 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_19:

    return v5;
  }

  v10 = sub_240FE7054(*(a3 + 16), 0);
  v11 = sub_241024BFC(&v99, v10 + 32, v6, a3, a4);

  if (v11 != v6)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  v12 = v10[2];
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_4:
  *&v83 = v5;
  *(&v83 + 1) = a2;
  if (v12 < 0xD)
  {
    sub_240FE41A0(0, v12, 0);
    v39 = v7;
    v40 = (v10 + 178);
    while (1)
    {
      v41 = *(v40 - 146);
      v42 = *(v40 - 138);
      v100 = *(v40 - 130);
      v43 = *(v40 - 114);
      v44 = *(v40 - 98);
      v45 = *(v40 - 66);
      v103 = *(v40 - 82);
      v104 = v45;
      v101 = v43;
      v102 = v44;
      v46 = *(v40 - 50);
      v47 = *(v40 - 34);
      v48 = *(v40 - 18);
      v108[0] = *(v40 - 2);
      v106 = v47;
      v107 = v48;
      v105 = v46;
      v49 = *(v40 - 1);
      *&v108[2] = *v40;
      *&v108[18] = v40[1];
      *&v108[32] = *(v40 + 30);
      *&v99 = v41;
      *(&v99 + 1) = v42;
      v108[1] = v49;
      v50 = sub_241002528();
      *&v91[0] = v50;
      *(&v91[0] + 1) = v51;
      if ((v42 & 2) == 0)
      {
        break;
      }

      MEMORY[0x245CD70E0](774778400, 0xE400000000000000);
      v52 = *(&v91[0] + 1);
      v50 = *&v91[0];
      if (v42)
      {
        goto LABEL_25;
      }

LABEL_26:
      if (v49 == 5)
      {
        *&v99 = 2108717;
        *(&v99 + 1) = 0xE300000000000000;
        MEMORY[0x245CD70E0](v50, v52);

        v52 = *(&v99 + 1);
        v50 = v99;
      }

      v86 = v39;
      v54 = *(v39 + 16);
      v53 = *(v39 + 24);
      if (v54 >= v53 >> 1)
      {
        v56 = v50;
        sub_240FE41A0((v53 > 1), v54 + 1, 1);
        v50 = v56;
        v39 = v86;
      }

      *(v39 + 16) = v54 + 1;
      v55 = v39 + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v52;
      v40 += 12;
      if (!--v12)
      {

        *&v99 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
        sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
        v57 = sub_241046AA8();
        v59 = v58;

        v99 = v83;

        MEMORY[0x245CD70E0](32, 0xE100000000000000);
        v60 = v57;
        goto LABEL_47;
      }
    }

    v52 = v51;
    if ((v42 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_25:
    *&v99 = 91;
    *(&v99 + 1) = 0xE100000000000000;
    MEMORY[0x245CD70E0](v50, v52);

    MEMORY[0x245CD70E0](93, 0xE100000000000000);
    v52 = *(&v99 + 1);
    v50 = v99;
    v91[0] = v99;
    goto LABEL_26;
  }

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  do
  {
    v15 = v10[2];
    v16 = (192 * v13) | 0x20;
    v17 = v13;
    while (1)
    {
      if (v17 >= v15)
      {
        __break(1u);
        goto LABEL_51;
      }

      v18 = *(v10 + v16);
      v19 = *(v10 + v16 + 16);
      v20 = *(v10 + v16 + 48);
      v101 = *(v10 + v16 + 32);
      v102 = v20;
      v99 = v18;
      v100 = v19;
      v21 = *(v10 + v16 + 64);
      v22 = *(v10 + v16 + 80);
      v23 = *(v10 + v16 + 112);
      v105 = *(v10 + v16 + 96);
      v106 = v23;
      v103 = v21;
      v104 = v22;
      v24 = *(v10 + v16 + 128);
      v25 = *(v10 + v16 + 144);
      v26 = *(v10 + v16 + 176);
      *&v108[16] = *(v10 + v16 + 160);
      *&v108[32] = v26;
      v107 = v24;
      *v108 = v25;
      v13 = v17 + 1;
      if (!v99 || (BYTE8(v99) & 1) == 0)
      {
        break;
      }

      v16 += 192;
      ++v17;
      if (v12 == v13)
      {
        goto LABEL_32;
      }
    }

    sub_240FE0990(&v99, v91);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_240FE4160(0, *(v14 + 16) + 1, 1);
    }

    v28 = *(v14 + 16);
    v27 = *(v14 + 24);
    if (v28 >= v27 >> 1)
    {
      result = sub_240FE4160((v27 > 1), v28 + 1, 1);
    }

    *(v14 + 16) = v28 + 1;
    v29 = (v14 + 192 * v28);
    v30 = v99;
    v31 = v100;
    v32 = v102;
    v29[4] = v101;
    v29[5] = v32;
    v29[2] = v30;
    v29[3] = v31;
    v33 = v103;
    v34 = v104;
    v35 = v106;
    v29[8] = v105;
    v29[9] = v35;
    v29[6] = v33;
    v29[7] = v34;
    v36 = v107;
    v37 = *v108;
    v38 = *&v108[32];
    v29[12] = *&v108[16];
    v29[13] = v38;
    v29[10] = v36;
    v29[11] = v37;
  }

  while (v12 - 1 != v17);
LABEL_32:

  v61 = *(v14 + 16);
  if ((v61 - 13) < 0xFFFFFFFFFFFFFFF4)
  {

    v99 = v83;

    MEMORY[0x245CD70E0](0x6E6F6974706F3C20, 0xEA00000000003E73);
    return v99;
  }

  v89 = MEMORY[0x277D84F90];
  sub_240FE41A0(0, v61, 0);
  v62 = v61 - 1;
  v63 = v89;
  v64 = (v14 + 178);
  while (2)
  {
    v65 = *(v64 - 146);
    v66 = *(v64 - 138);
    v67 = *(v64 - 98);
    v68 = *(v64 - 66);
    v69 = *(v64 - 114);
    v93 = *(v64 - 82);
    v94 = v68;
    v91[1] = v69;
    v92 = v67;
    v70 = *(v64 - 34);
    v71 = *(v64 - 18);
    v72 = *(v64 - 50);
    v98 = *(v64 - 2);
    v96 = v70;
    v97 = v71;
    v95 = v72;
    v91[0] = *(v64 - 130);
    v73 = *(v64 - 1);
    *&v88[14] = *(v64 + 30);
    v87 = *v64;
    *v88 = v64[1];
    *&v99 = v65;
    *(&v99 + 1) = v66;
    v106 = v70;
    v107 = v71;
    v108[0] = v98;
    v102 = v92;
    v103 = v93;
    v104 = v94;
    v105 = v72;
    v100 = v91[0];
    v101 = v69;
    v108[1] = v73;
    *&v108[2] = v87;
    *&v108[18] = *v88;
    *&v108[32] = *&v88[14];
    v74 = sub_241002528();
    v84 = v74;
    v85 = v75;
    if ((v66 & 2) != 0)
    {
      MEMORY[0x245CD70E0](774778400, 0xE400000000000000);
      v76 = v85;
      v74 = v84;
      if ((v66 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v76 = v75;
    if (v66)
    {
LABEL_39:
      *&v99 = 91;
      *(&v99 + 1) = 0xE100000000000000;
      MEMORY[0x245CD70E0](v74, v76);

      MEMORY[0x245CD70E0](93, 0xE100000000000000);
      v76 = *(&v99 + 1);
      v74 = v99;
    }

LABEL_40:
    if (v73 == 5)
    {
      *&v99 = 2108717;
      *(&v99 + 1) = 0xE300000000000000;
      MEMORY[0x245CD70E0](v74, v76);

      v76 = *(&v99 + 1);
      v74 = v99;
    }

    v90 = v63;
    v78 = *(v63 + 16);
    v77 = *(v63 + 24);
    if (v78 >= v77 >> 1)
    {
      v80 = v74;
      sub_240FE41A0((v77 > 1), v78 + 1, 1);
      v74 = v80;
      v63 = v90;
    }

    *(v63 + 16) = v78 + 1;
    v79 = v63 + 16 * v78;
    *(v79 + 32) = v74;
    *(v79 + 40) = v76;
    if (v62)
    {
      --v62;
      v64 += 12;
      continue;
    }

    break;
  }

  *&v99 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
  v81 = sub_241046AA8();
  v59 = v82;

  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  sub_241047058();

  v99 = v83;
  MEMORY[0x245CD70E0](0x6F6974706F3C5B20, 0xED0000205D3E736ELL);
  v60 = v81;
LABEL_47:
  MEMORY[0x245CD70E0](v60, v59);

  return v99;
}

uint64_t sub_241002E6C()
{
  v1 = v0[9];
  v35 = v0[8];
  v36 = v1;
  v2 = v0[11];
  v37 = v0[10];
  v38 = v2;
  v3 = v0[5];
  v31[4] = v0[4];
  v32 = v3;
  v4 = v0[7];
  v33 = v0[6];
  v34 = v4;
  v5 = v0[1];
  v31[0] = *v0;
  v31[1] = v5;
  v6 = v0[3];
  v31[2] = v0[2];
  v31[3] = v6;
  if (*&v31[0])
  {
    if (*&v31[0] == 1)
    {
      return 0;
    }

    v9 = sub_241003178(v8);
    sub_240FF9BBC(*&v31[0]);
    v10 = *(v9 + 16);
    if (v10)
    {
      v28[0] = MEMORY[0x277D84F90];
      sub_240FE41A0(0, v10, 0);
      v11 = v28[0];
      v12 = (v9 + 48);
      while (1)
      {
        v14 = *(v12 - 2);
        v13 = *(v12 - 1);
        v15 = *v12;
        if (!(v15 >> 6))
        {
          break;
        }

        if (v15 >> 6 != 1)
        {
          v29 = 45;
          v16 = 0xE100000000000000;
          goto LABEL_12;
        }

        v29 = 0;
        v30 = 0xE000000000000000;

        MEMORY[0x245CD70E0](45, 0xE100000000000000);
        sub_241046A98();
LABEL_13:
        sub_240FF0D30(v14, v13, v15);
        v17 = v29;
        v18 = v30;
        v28[0] = v11;
        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_240FE41A0((v19 > 1), v20 + 1, 1);
          v11 = v28[0];
        }

        v12 += 24;
        *(v11 + 16) = v20 + 1;
        v21 = v11 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v18;
        if (!--v10)
        {

          goto LABEL_18;
        }
      }

      v29 = 11565;
      v16 = 0xE200000000000000;
LABEL_12:
      v30 = v16;
      sub_240FF0D90(v14, v13, v15);
      MEMORY[0x245CD70E0](v14, v13);
      goto LABEL_13;
    }

    v11 = MEMORY[0x277D84F90];
LABEL_18:
    v29 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
    v22 = sub_241046AA8();
    v24 = v23;

    if ((BYTE8(v37) & 1) == 0)
    {
      return v22;
    }

    v29 = v22;
    v30 = v24;
    MEMORY[0x245CD70E0](15392, 0xE200000000000000);
  }

  else
  {
    v29 = 60;
    v30 = 0xE100000000000000;
  }

  v26 = *(&v32 + 1);
  v25 = v33;
  v27 = BYTE7(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v27 = *(&v32 + 1) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
  }

  else
  {
    sub_24102CC00(v31, v28);
    v26 = v28[0];
    v25 = v28[1];
  }

  MEMORY[0x245CD70E0](v26, v25);

  MEMORY[0x245CD70E0](62, 0xE100000000000000);
  return v29;
}