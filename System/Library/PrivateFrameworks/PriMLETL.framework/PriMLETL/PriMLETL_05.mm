uint64_t sub_25F5D1D38@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7E8, &qword_25F5EAD00);
  sub_25F5E3BD4();

  v2 = MEMORY[0x25F8E2B40]();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F5D1DDC@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7E0, &qword_25F5EACD8);
  sub_25F5E3BE4();

  v2 = v9;
  while (1)
  {
    if ((v2 ^ v10) < 0x4000)
    {

      v8 = 32;
      goto LABEL_9;
    }

    v3 = sub_25F5E4824();
    v5 = v4;
    v2 = sub_25F5E4804();
    result = sub_25F5D25A4(v3, v5);
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    v7 = result;

    if ((v7 - 14) > 0xFFFFFFFB || (v7 - 8232) < 2 || v7 == 133)
    {

      v8 = 10;
LABEL_9:
      *a1 = v8;
      a1[1] = 0xE100000000000000;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F5D1F20@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7E0, &qword_25F5EACD8);
  sub_25F5E3BF4();
  sub_25F5D4F6C();
  sub_25F58C444();
  v2 = sub_25F5E4844();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F5D1FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;

    do
    {
      sub_25F5D4EFC(v5, v8);
      __swift_project_boxed_opaque_existential_1Tm(v8, v8[3]);
      sub_25F571874();
      sub_25F5718C8();
      sub_25F5E4734();
      __swift_destroy_boxed_opaque_existential_1Tm(v8);

      a2 = v7;
      v5 += 56;
      --v4;
    }

    while (v4);
  }

  else
  {
  }

  return a2;
}

id sub_25F5D2108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25F5E43C4();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_25F5E34F4();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_25F5D21E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25F5E45B4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_25F578650(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_25F578650((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25F5E4594();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25F5E44D4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25F5E44D4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25F5E45B4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_25F578650(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25F5E45B4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_25F578650(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_25F578650((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25F5E44D4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25F5D25A4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_25F5D26F4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_25F5E4944();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_25F5E49A4() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_25F5D26F4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_25F5D278C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_25F5D2800(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_25F5D278C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_25F5D2924(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25F5D2800(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_25F5E49A4();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_25F5D2924(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25F5E4564();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F8E2C00](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_25F5D29A0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E818, &qword_25F5EAD18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F5E5EF0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7C0, &qword_25F5EACA8);
  *(inited + 56) = v5;
  v6 = sub_25F5AB824(&qword_27FD9E7C8, &qword_27FD9E7C0, &qword_25F5EACA8, MEMORY[0x277D85AC0]);
  *(inited + 64) = v6;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 32));
  sub_25F5E3BC4();
  *(inited + 72) = 10;
  *(inited + 80) = 0xE100000000000000;
  *(inited + 112) = v5;
  *(inited + 120) = v6;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 88));
  sub_25F5E3BC4();
  *(inited + 128) = 0;
  *(inited + 136) = 0xE000000000000000;
  *(inited + 168) = v5;
  *(inited + 176) = v6;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 144));
  sub_25F5E3BC4();
  *(inited + 184) = 47;
  *(inited + 192) = 0xE100000000000000;
  v7 = sub_25F5D1FFC(inited, a1, a2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E820, &unk_25F5EAD20);
  swift_arrayDestroy();
  return v7;
}

id sub_25F5D2B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = sub_25F5E35D4();
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_25F5D35DC();
  v7 = sub_25F5E42F4();

  v12[0] = 0;
  v8 = [v4 initWithData:v6 options:v7 documentAttributes:a4 error:v12];

  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_25F5E34F4();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_25F5D2C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5E3464();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F5E4444();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F5E4424();
  v14 = sub_25F5E4404();
  v16 = v15;
  v40 = *(v10 + 8);
  v40(v13, v9);
  if (v16 >> 60 == 15)
  {
  }

  else
  {
    v35 = v8;
    v38 = a1;
    v36 = v5;
    v39 = a2;
    v37 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7F0, &qword_25F5EAD08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F5E77E0;
    v18 = *MEMORY[0x277D74098];
    *(inited + 32) = *MEMORY[0x277D74098];
    v19 = *MEMORY[0x277D740C8];
    type metadata accessor for DocumentType(0);
    *(inited + 40) = v19;
    v20 = *MEMORY[0x277D74088];
    *(inited + 64) = v21;
    *(inited + 72) = v20;
    sub_25F5D35C8(v14, v16);
    v22 = v18;
    v23 = v19;
    v24 = v20;
    sub_25F5E4424();
    v25 = sub_25F5E4434();
    v40(v13, v9);
    *(inited + 104) = MEMORY[0x277D83E88];
    *(inited + 80) = v25;
    v26 = sub_25F5720F0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC48, &qword_25F5E68A8);
    swift_arrayDestroy();
    v27 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v28 = sub_25F5D2B74(v14, v16, v26, 0);
    sub_25F5AEEFC(v14, v16);
    if (v28)
    {
      v29 = [v28 string];
      v30 = sub_25F5E43F4();
      v32 = v31;

      v41 = v30;
      v42 = v32;
      v33 = v35;
      sub_25F5E3454();
      sub_25F58C444();
      a1 = sub_25F5E4834();

      sub_25F5AEEFC(v14, v16);
      (*(v36 + 8))(v33, v37);
    }

    else
    {
      sub_25F5AEEFC(v14, v16);

      return v38;
    }
  }

  return a1;
}

uint64_t sub_25F5D3038(unint64_t a1, unint64_t a2)
{
  sub_25F58C444();
  sub_25F5E4864();
  v2 = sub_25F5E4514();
  v4 = v3;
  if (v3)
  {
    v5 = v2;
    do
    {
      v7 = sub_25F5D1BEC(v5, v4);
      if ((v7 & 0x100000000) == 0)
      {
        v8 = dword_287194548 <= v7 && unk_28719454C >= v7;
        if (v8 || (dword_287194550 <= v7 ? (v9 = unk_287194554 >= v7) : (v9 = 0), v9 || (dword_287194558 <= v7 ? (v10 = unk_28719455C >= v7) : (v10 = 0), v10 || dword_287194560 <= v7 && dword_287194564 >= v7 || dword_287194568 <= v7 && dword_28719456C >= v7 || dword_287194570 <= v7 && dword_287194574 >= v7)))
        {
          MEMORY[0x25F8E2BB0](v5, v4);
        }
      }

      v5 = sub_25F5E4514();
      v4 = v6;
    }

    while (v6);
  }

  return sub_25F5E45A4();
}

uint64_t sub_25F5D31E8(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7B8, &qword_25F5EACA0);
  v5 = *(v4 - 8);
  v24 = v4;
  v25 = v5;
  MEMORY[0x28223BE20](v4, v6);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7C0, &qword_25F5EACA8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v22 - v12;
  v28 = sub_25F5D159C(a1, a2);
  v29 = v14;
  sub_25F5E3BC4();
  v26 = 32;
  v27 = 0xE100000000000000;
  sub_25F571874();
  sub_25F5718C8();
  v15 = MEMORY[0x277D85AC0];
  v22[0] = sub_25F5AB824(&qword_27FD9E7C8, &qword_27FD9E7C0, &qword_25F5EACA8, MEMORY[0x277D85AC0]);
  sub_25F5E4734();
  v16 = *(v10 + 8);
  v22[1] = v10 + 8;
  v23 = v16;
  v16(v13, v9);

  v17 = sub_25F5D199C(v30, v31);
  v19 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7D0, &qword_25F5EACB0);
  sub_25F5E3BC4();
  v28 = v17;
  v29 = v19;
  sub_25F5AB824(&qword_27FD9E7D8, &qword_27FD9E7B8, &qword_25F5EACA0, v15);
  v20 = v24;
  sub_25F5E4724();

  v28 = v30;
  v29 = v31;
  sub_25F5E3BC4();
  sub_25F5E4724();
  v23(v13, v9);

  (*(v25 + 8))(v8, v20);
  return v30;
}

uint64_t sub_25F5D35C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F5717CC(result, a2);
  }

  return result;
}

unint64_t sub_25F5D35DC()
{
  result = qword_27FD9D9F0;
  if (!qword_27FD9D9F0)
  {
    type metadata accessor for DocumentReadingOptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9D9F0);
  }

  return result;
}

uint64_t sub_25F5D3634(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E818, &qword_25F5EAD18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F5EAC90;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7C0, &qword_25F5EACA8);
  *(inited + 56) = v3;
  v4 = MEMORY[0x277D85AC0];
  v5 = sub_25F5AB824(&qword_27FD9E7C8, &qword_27FD9E7C0, &qword_25F5EACA8, MEMORY[0x277D85AC0]);
  *(inited + 64) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 32));
  sub_25F5E3BC4();
  *(inited + 72) = 42;
  *(inited + 80) = 0xE100000000000000;
  *(inited + 112) = v3;
  *(inited + 120) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 88));
  sub_25F5E3BC4();
  *(inited + 128) = 46;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 168) = v3;
  *(inited + 176) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 144));
  sub_25F5E3BC4();
  *(inited + 184) = 43;
  *(inited + 192) = 0xE100000000000000;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7B8, &qword_25F5EACA0);
  *(inited + 224) = v6;
  v7 = sub_25F5AB824(&qword_27FD9E7D8, &qword_27FD9E7B8, &qword_25F5EACA0, v4);
  *(inited + 232) = v7;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 200));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7D0, &qword_25F5EACB0);
  sub_25F5E3BC4();
  *(inited + 240) = 61;
  *(inited + 248) = 0xE100000000000000;
  *(inited + 280) = v6;
  *(inited + 288) = v7;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 256));
  sub_25F5E3BC4();
  *(inited + 296) = 45;
  *(inited + 304) = 0xE100000000000000;
  *(inited + 336) = v6;
  *(inited + 344) = v7;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 312));
  sub_25F5E3BC4();
  *(inited + 352) = 45;
  *(inited + 360) = 0xE100000000000000;
  *(inited + 392) = v3;
  *(inited + 400) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 368));
  sub_25F5E3BC4();
  *(inited + 408) = 61;
  *(inited + 416) = 0xE100000000000000;
  *(inited + 448) = v3;
  *(inited + 456) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 424));
  sub_25F5E3BC4();
  *(inited + 464) = 45;
  *(inited + 472) = 0xE100000000000000;
  *(inited + 504) = v3;
  *(inited + 512) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 480));
  sub_25F5E3BC4();
  *(inited + 520) = 95;
  *(inited + 528) = 0xE100000000000000;
  *(inited + 560) = v3;
  *(inited + 568) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 536));
  sub_25F5E3BC4();
  *(inited + 576) = 126;
  *(inited + 584) = 0xE100000000000000;
  *(inited + 616) = v3;
  *(inited + 624) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 592));
  sub_25F5E3BC4();
  *(inited + 632) = 60;
  *(inited + 640) = 0xE100000000000000;
  *(inited + 672) = v3;
  *(inited + 680) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 648));
  sub_25F5E3BC4();
  *(inited + 688) = 62;
  *(inited + 696) = 0xE100000000000000;
  *(inited + 728) = v3;
  *(inited + 736) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 704));
  sub_25F5E3BC4();
  *(inited + 744) = 33;
  *(inited + 752) = 0xE100000000000000;
  *(inited + 784) = v3;
  *(inited + 792) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 760));
  sub_25F5E3BC4();
  *(inited + 800) = 63;
  *(inited + 808) = 0xE100000000000000;
  *(inited + 840) = v3;
  *(inited + 848) = v5;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 816));
  sub_25F5E3BC4();
  *(inited + 856) = 36;
  *(inited + 864) = 0xE100000000000000;
  v8 = sub_25F5D1FFC(inited, a1, a2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E820, &unk_25F5EAD20);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_25F5D3AAC(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7C0, &qword_25F5EACA8);
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v41 = &v41 - v6;
  v55 = sub_25F5E3464();
  v44 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v7);
  v54 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v10 = sub_25F5D2108(0xD00000000000001DLL, 0x800000025F5ECBB0, 0);
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1;
  }

  v12 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v12 = 11;
  }

  v63 = 15;
  v64 = v12 | (v11 << 16);
  v61 = a1;
  v62 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E800, &qword_25F5EAD10);
  sub_25F5AB824(&qword_27FD9E808, &qword_27FD9E800, &qword_25F5EAD10, MEMORY[0x277D83D30]);
  v53 = sub_25F58C444();
  v13 = sub_25F5E47D4();
  v15 = v14;
  v63 = a1;
  v64 = a2;

  v16 = sub_25F5E43C4();
  v17 = [v10 matchesInString:v16 options:0 range:{v13, v15}];

  sub_25F5D4EB0();
  v18 = sub_25F5E4624();

  v45 = v18;
  v43 = v4;
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_22:

    v59 = v63;
    v60 = v64;
    v36 = v41;
    sub_25F5E3BC4();
    v57 = 32;
    v58 = 0xE100000000000000;
    sub_25F571874();
    sub_25F5718C8();
    sub_25F5AB824(&qword_27FD9E7C8, &qword_27FD9E7C0, &qword_25F5EACA8, MEMORY[0x277D85AC0]);
    v37 = v43;
    sub_25F5E4734();
    (*(v42 + 8))(v36, v37);

    v38 = v54;
    sub_25F5E3454();
    v39 = sub_25F5E4834();

    (*(v44 + 8))(v38, v55);

    return v39;
  }

LABEL_21:
  v19 = sub_25F5E49C4();
  if (!v19)
  {
    goto LABEL_22;
  }

LABEL_7:
  v51 = v45 & 0xFFFFFFFFFFFFFF8;
  v52 = v45 & 0xC000000000000001;
  v46 = v45 + 32;
  v47 = (v44 + 8);
  v48 = a2;
  v49 = a1;
  v50 = v10;
  while (1)
  {
    if (__OFSUB__(v19--, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v52)
    {
      v21 = MEMORY[0x25F8E3030](v19, v45);
    }

    else
    {
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      if (v19 >= *(v51 + 16))
      {
        goto LABEL_20;
      }

      v21 = *(v46 + 8 * v19);
    }

    v22 = v21;
    [v21 rangeAtIndex_];
    sub_25F5E4744();
    if (v23)
    {
      break;
    }

    v56 = v22;
    v24 = sub_25F5E45B4();
    v25 = MEMORY[0x25F8E2B40](v24);
    v27 = v26;

    v61 = v25;
    v62 = v27;
    v28 = v54;
    sub_25F5E3444();
    v29 = sub_25F5E4834();
    v31 = v30;
    (*v47)(v28, v55);
    v61 = v25;
    v62 = v27;
    v59 = v29;
    v60 = v31;
    v57 = 0;
    v58 = 0xE000000000000000;
    v32 = sub_25F5E4844();
    v34 = v33;

    sub_25F5E4744();
    if ((v35 & 1) == 0)
    {
      v61 = v32;
      v62 = v34;
      sub_25F5718C8();
      sub_25F5E4494();
    }

    a1 = v49;
    v10 = v50;
    a2 = v48;
    if (!v19)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_25F5D40F8(uint64_t a1, unint64_t a2, int a3)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7C0, &qword_25F5EACA8);
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v7);
  v36 = &v34 - v8;
  v42 = 32;
  v43 = 0xE100000000000000;
  v41 = &v42;

  v10 = sub_25F5D21E4(0x7FFFFFFFFFFFFFFFLL, 1, sub_25F5D4E04, v40, a1, a2, v9);
  v11 = *(v10 + 16);
  v34 = v10;
  if (v11)
  {
    v12 = a3;
    v35 = (v6 + 8);
    v13 = (v10 + 56);
    v14 = MEMORY[0x277D84F90];
    do
    {
      v22 = *(v13 - 3);
      v23 = *(v13 - 2);
      v25 = *(v13 - 1);
      v24 = *v13;

      if (sub_25F5E4814() >= v12 && (v42 = v22, v43 = v23, v44 = v25, v45 = v24, v39 = v14, v15 = v36, sub_25F5E3BC4(), v38 = sub_25F5D4E5C(), sub_25F5AB824(&qword_27FD9E7C8, &qword_27FD9E7C0, &qword_25F5EACA8, MEMORY[0x277D85AC0]), v16 = v12, v17 = v37, v18 = sub_25F5E4344(), v19 = v15, v14 = v39, v20 = v17, v12 = v16, (*v35)(v19, v20), v21 = *(v18 + 16), , v21))
      {
      }

      else
      {
        v26 = MEMORY[0x25F8E2B40](v22, v23, v25, v24);
        v28 = v27;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_25F578544(0, *(v14 + 2) + 1, 1, v14);
        }

        v30 = *(v14 + 2);
        v29 = *(v14 + 3);
        if (v30 >= v29 >> 1)
        {
          v14 = sub_25F578544((v29 > 1), v30 + 1, 1, v14);
        }

        *(v14 + 2) = v30 + 1;
        v31 = &v14[16 * v30];
        *(v31 + 4) = v26;
        *(v31 + 5) = v28;
      }

      v13 += 4;
      --v11;
    }

    while (v11);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v42 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
  sub_25F5AB824(&qword_27FD9E550, &qword_27FD9DB58, &qword_25F5E5F50, MEMORY[0x277D83958]);
  v32 = sub_25F5E4364();

  return v32;
}

uint64_t sub_25F5D4478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7B8, &qword_25F5EACA0);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v57 = v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7C0, &qword_25F5EACA8);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v54 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v52 - v13;
  v15 = sub_25F5D29A0(a1, a2);
  v17 = sub_25F5D2C88(v15, v16);
  v19 = v18;

  v20 = sub_25F5D3038(v17, v19);
  v22 = v21;

  v23 = sub_25F5D31E8(v20, v22);
  v25 = v24;

  v62 = v23;
  v63 = v25;
  sub_25F5E3BC4();
  v60 = 32;
  v61 = 0xE100000000000000;
  v26 = sub_25F571874();
  v27 = sub_25F5718C8();
  sub_25F5AB824(&qword_27FD9E7C8, &qword_27FD9E7C0, &qword_25F5EACA8, MEMORY[0x277D85AC0]);
  sub_25F5E4734();
  v28 = *(v8 + 8);
  v52[1] = v8 + 8;
  v53 = v28;
  v28(v14, v7);

  v62 = 2621;
  v63 = 0xE200000000000000;
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_25F58C444();
  v29 = sub_25F5E4844();
  v31 = v30;

  v32 = v54;
  sub_25F5E3BC4();
  v62 = v29;
  v63 = v31;
  v55 = v27;
  v56 = v26;
  v33 = v32;
  sub_25F5E4724();
  swift_bridgeObjectRelease_n();
  v34 = v64;
  v35 = v65;

  v36 = sub_25F5E4854();
  v38 = v37;
  v53(v33, v7);

  if (v38)
  {

    v34 = v36;
    v35 = v38;
  }

  v39 = sub_25F5D3634(v34, v35);
  v41 = v40;

  v62 = v39;
  v63 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7D0, &qword_25F5EACB0);
  v42 = v57;
  sub_25F5E3BC4();
  v60 = 10;
  v61 = 0xE100000000000000;
  sub_25F5AB824(&qword_27FD9E7D8, &qword_27FD9E7B8, &qword_25F5EACA0, MEMORY[0x277D85AC0]);
  v43 = v59;
  sub_25F5E4734();
  (*(v58 + 8))(v42, v43);

  v44 = sub_25F5D29A0(v64, v65);
  v46 = v45;

  v47 = sub_25F5D3AAC(v44, v46);
  v49 = v48;

  v50 = sub_25F5D40F8(v47, v49, 5);

  return v50;
}

uint64_t sub_25F5D49F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != 1)
  {

    return a1;
  }

  if (*(a3 + 1) == 1 && *(a3 + 8) != 0)
  {
    v6 = qword_27FD9D8B0;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_25F5E3FB4();
    __swift_project_value_buffer(v7, qword_27FD9EA20);
    v8 = sub_25F5E3F94();
    v9 = sub_25F5E47A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_25F56A000, v8, v9, "Use Morpheus to cleanup.", v10, 2u);
      MEMORY[0x25F8E3B70](v10, -1, -1);
    }

    sub_25F5E3C14();
    sub_25F5C7E78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E718, &qword_25F5EAA18);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_25F5E5EE0;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;

    sub_25F571A78(MEMORY[0x277D84F90]);
    sub_25F5E4004();

    *v18 = *&v18[5];
    *&v18[2] = v19;
    if (*(&v19 + 1))
    {
      if (swift_dynamicCast())
      {
        return v17;
      }
    }

    else
    {
      sub_25F575F64(v18);
    }
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v13 = sub_25F5E3FB4();
  __swift_project_value_buffer(v13, qword_27FD9EA20);
  v14 = sub_25F5E3F94();
  v15 = sub_25F5E47A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_25F56A000, v14, v15, "Use native to cleanup.", v16, 2u);
    MEMORY[0x25F8E3B70](v16, -1, -1);
  }

  return sub_25F5D4478(a1, a2);
}

uint64_t sub_25F5D4E04(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F5E4B84() & 1;
  }
}

unint64_t sub_25F5D4E5C()
{
  result = qword_27FD9E7F8;
  if (!qword_27FD9E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E7F8);
  }

  return result;
}

unint64_t sub_25F5D4EB0()
{
  result = qword_27FD9E810;
  if (!qword_27FD9E810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD9E810);
  }

  return result;
}

uint64_t sub_25F5D4EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E820, &unk_25F5EAD20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F5D4F6C()
{
  result = qword_27FD9E828;
  if (!qword_27FD9E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E828);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataProcessingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataProcessingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F5D5110()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20401);
  return sub_25F5E4C54();
}

uint64_t sub_25F5D5190()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20401);
  return sub_25F5E4C54();
}

uint64_t sub_25F5D51D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F5D531C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_25F5D521C()
{
  result = qword_27FD9E830;
  if (!qword_27FD9E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E830);
  }

  return result;
}

uint64_t sub_25F5D5270(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5D52C8();
  v5 = sub_25F5739D8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

unint64_t sub_25F5D52C8()
{
  result = qword_27FD9E838;
  if (!qword_27FD9E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E838);
  }

  return result;
}

uint64_t sub_25F5D531C(uint64_t a1)
{
  if ((a1 - 20401) >= 0x11)
  {
    return 17;
  }

  else
  {
    return a1 - 20401;
  }
}

uint64_t sub_25F5D5334()
{
  v1 = *v0;
  v2 = 0x75706E4974786574;
  v3 = 0x6174744174786574;
  if (v1 != 5)
  {
    v3 = 0x614665726F6E6769;
  }

  v4 = 0x636E657265666E69;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x706E496567616D69;
  if (v1 != 1)
  {
    v5 = 0x654B74757074756FLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F5D5454@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F5D8CE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F5D547C(uint64_t a1)
{
  v2 = sub_25F5D6A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5D54B8(uint64_t a1)
{
  v2 = sub_25F5D6A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MultiModalCompletionStepConfig.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E840, &qword_25F5EAE30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v29 - v8;
  v10 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v10);
  sub_25F5D6A80();
  sub_25F5E4C74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
  }

  else
  {
    v33 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
    LOBYTE(v34) = 0;
    sub_25F574164();
    v11 = v5;
    sub_25F5E4AD4();
    v32 = v46[0];
    LOBYTE(v34) = 1;
    sub_25F5E4AD4();
    v12 = v46[0];
    LOBYTE(v46[0]) = 2;
    v13 = sub_25F5E4A94();
    v15 = v14;
    v30 = v13;
    v61 = 3;
    sub_25F5D6AD4();
    sub_25F5E4AD4();
    v31 = v12;
    v78 = v68;
    v79 = v69;
    v80 = v70;
    v81 = v71;
    v74 = v64;
    v75 = v65;
    v76 = v66;
    v77 = v67;
    v72 = v62;
    v73 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB30, &qword_25F5E5F30);
    LOBYTE(v34) = 4;
    sub_25F571DEC();
    v29[1] = 0;
    sub_25F5E4A84();
    v16 = v46[0];
    LOBYTE(v34) = 5;
    sub_25F5E4A84();
    v17 = v46[0];
    v60 = 6;
    v18 = sub_25F5E4AA4();
    (*(v33 + 8))(v9, v11);
    LODWORD(v33) = v18 & 1;
    v19 = v31;
    v20 = v32;
    *&v34 = v32;
    *(&v34 + 1) = v31;
    v21 = v30;
    *&v35 = v30;
    *(&v35 + 1) = v15;
    v42 = v78;
    v43 = v79;
    v44 = v80;
    LOBYTE(v45[0]) = v81;
    v38 = v74;
    v39 = v75;
    v40 = v76;
    v41 = v77;
    v36 = v72;
    v37 = v73;
    *(&v45[0] + 1) = v16;
    *&v45[1] = v17;
    BYTE8(v45[1]) = v33;
    v22 = v77;
    a2[6] = v76;
    a2[7] = v22;
    v23 = v43;
    a2[8] = v42;
    a2[9] = v23;
    v24 = v37;
    a2[2] = v36;
    a2[3] = v24;
    v25 = v39;
    a2[4] = v38;
    a2[5] = v25;
    v26 = v35;
    *a2 = v34;
    a2[1] = v26;
    v27 = v45[0];
    a2[10] = v44;
    a2[11] = v27;
    *(a2 + 185) = *(v45 + 9);
    sub_25F5D6B28(&v34, v46);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    v46[0] = v20;
    v46[1] = v19;
    v46[2] = v21;
    v46[3] = v15;
    v53 = v78;
    v54 = v79;
    v55 = v80;
    v56 = v81;
    v49 = v74;
    v50 = v75;
    v51 = v76;
    v52 = v77;
    v47 = v72;
    v48 = v73;
    v57 = v16;
    v58 = v17;
    v59 = v33;
    return sub_25F5D6B60(v46);
  }
}

uint64_t sub_25F5D5AD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v135 = a2;
  v3 = sub_25F5E3884();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v131 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE80, &unk_25F5E7800);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v127 = &v123 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v132 = &v123 - v11;
  v12 = sub_25F5E4444();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v130 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE78, &qword_25F5E77F8);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v129 = &v123 - v17;
  v18 = sub_25F5E3AD4();
  v19 = *(v18 - 8);
  v141 = v18;
  v142 = v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v138 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v144 = &v123 - v24;
  v25 = *(a1 + 40);
  v146 = *(a1 + 32);
  v26 = *(a1 + 56);
  v148 = *(a1 + 64);
  v150 = *(a1 + 72);
  v149 = *(a1 + 80);
  v27 = 0.0;
  if (*(a1 + 112) & 1) != 0 || (*(a1 + 96))
  {
    LODWORD(v140) = 1;
    v28 = 0.0;
  }

  else
  {
    LODWORD(v140) = 0;
    v27 = *(a1 + 88);
    v28 = *(a1 + 104);
  }

  v143 = *(a1 + 48);
  v128 = *(a1 + 120);
  v29 = *(a1 + 144);
  v136 = *(a1 + 128);
  v137 = v29;
  v134 = *(a1 + 152);
  v133 = *(a1 + 160);
  v139 = *(a1 + 168);
  v30 = *(a1 + 176);
  v31 = type metadata accessor for MultiModalLLMInference(0);
  v147 = swift_allocObject();

  v32 = v148;
  v33 = v150;
  v34 = v149;
  sub_25F57B79C(v148, v150, v149);
  v36 = v145;
  v35 = v146;
  sub_25F580714(v146, v25, v37, v38);
  if (v36)
  {

    sub_25F581A78(v32, v33, v34);
    return swift_deallocPartialClassInstance();
  }

  v126 = v30;
  static MultiModalLLMInference.getSessionConfig(modelBundleID:usecaseId:)(v35, v25, v143, v26, v144);
  v39 = v31;

  sub_25F5E3864();
  swift_allocObject();
  v40 = sub_25F5E3854();
  v41 = sub_25F5E3844();
  v145 = 0;
  v43 = v41;
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v44 = sub_25F5E3FB4();
  v45 = __swift_project_value_buffer(v44, qword_27FD9EA20);
  v46 = v43;
  v123 = v45;
  v47 = sub_25F5E3F94();
  v48 = sub_25F5E47A4();

  v49 = os_log_type_enabled(v47, v48);
  v143 = v40;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v151 = v46;
    v152[0] = v51;
    v52 = v51;
    *v50 = 136315138;
    sub_25F5E38A4();
    v53 = v46;
    v54 = sub_25F5E4474();
    v56 = sub_25F570AF8(v54, v55, v152);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_25F56A000, v47, v48, "Multimodal model's resource information: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x25F8E3B70](v52, -1, -1);
    MEMORY[0x25F8E3B70](v50, -1, -1);
  }

  v57 = sub_25F5E3894();
  if (!v57)
  {
    v59 = 0xE700000000000000;
    v63 = 0x6E776F6E6B6E75;
    goto LABEL_21;
  }

  v58 = v57;
  if (!*(v57 + 16))
  {
    v59 = 0xE700000000000000;
    goto LABEL_19;
  }

  v59 = 0xE700000000000000;
  v60 = sub_25F5709C8(0x6E6F6973726576, 0xE700000000000000);
  if ((v61 & 1) == 0)
  {
LABEL_19:
    v63 = 0x6E776F6E6B6E75;
    goto LABEL_20;
  }

  v62 = (*(v58 + 56) + 16 * v60);
  v63 = *v62;
  v59 = v62[1];

LABEL_20:

LABEL_21:
  v64 = v147;
  v65 = (v147 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion);
  *v65 = v63;
  v65[1] = v59;
  v66 = v64 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize;
  *v66 = v27;
  *(v66 + 8) = v28;
  *(v66 + 16) = v140;
  v67 = v149;
  if (v149 > 1)
  {
    v140 = v46;
    v124 = v65;
    if (v149 == 2)
    {

      v79 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
      v80 = sub_25F5E3D64();
      v73 = v147;
      (*(*(v80 - 8) + 56))(v147 + v79, 1, 1, v80);
      v81 = v150;

      v82 = v129;
      v83 = v148;
      v84 = v145;
      sub_25F5E4214();
      if (!v84)
      {
        v125 = v39;
        v145 = 0;
        sub_25F581A78(v83, v81, 2u);
        v103 = sub_25F5E4244();
        (*(*(v103 - 8) + 56))(v82, 0, 1, v103);
        sub_25F57B86C(v82, v73 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
        v104 = (v73 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
LABEL_37:
        *v104 = 0;
        v104[1] = 0;
        v77 = v141;
        v76 = v142;
        v78 = v144;
        v110 = v136;
        v46 = v140;
        goto LABEL_40;
      }

      v85 = 0;
    }

    else
    {

      v94 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
      v95 = sub_25F5E3D64();
      v85 = 1;
      v96 = v147;
      (*(*(v95 - 8) + 56))(v147 + v94, 1, 1, v95);
      v97 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
      v98 = sub_25F5E4244();
      v73 = v96;
      (*(*(v98 - 8) + 56))(v96 + v97, 1, 1, v98);
      sub_25F5E4424();
      v83 = v148;
      v81 = v150;
      v99 = v145;
      v100 = sub_25F5E43B4();
      v145 = v99;
      if (!v99)
      {
        v111 = v100;
        v112 = v101;
        v125 = v39;
        sub_25F581A78(v83, v81, 3u);
        v113 = (v73 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
        *v113 = v111;
        v113[1] = v112;
        v77 = v141;
        v76 = v142;
        v78 = v144;
        v46 = v140;
        goto LABEL_39;
      }

      v67 = v149;
    }

    sub_25F581A78(v83, v81, v67);
    (*(v142 + 8))(v144, v141);

    sub_25F57C148(v73 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
    v102 = v73;
    if (!v85)
    {
      return swift_deallocPartialClassInstance();
    }

    goto LABEL_49;
  }

  v125 = v39;
  if (v149)
  {
    v140 = v46;
    v86 = v150;

    v87 = sub_25F5E3F94();
    v88 = sub_25F5E4794();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v152[0] = v90;
      *v89 = 136315138;
      *(v89 + 4) = sub_25F570AF8(v148, v86, v152);
      _os_log_impl(&dword_25F56A000, v87, v88, "Using prompt_template_id=%s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      MEMORY[0x25F8E3B70](v90, -1, -1);
      MEMORY[0x25F8E3B70](v89, -1, -1);
    }

    v91 = v145;
    sub_25F5E3874();
    v92 = v150;
    v93 = v148;
    if (v91)
    {

      sub_25F581A78(v93, v92, 1u);
      sub_25F581A78(v93, v92, 1u);

      (*(v142 + 8))(v144, v141);

      return swift_deallocPartialClassInstance();
    }

    v124 = v65;
    v145 = 0;
    v105 = v127;
    sub_25F5E3D54();
    sub_25F581A78(v93, v92, 1u);
    v106 = sub_25F5E3D64();
    (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
    v107 = v147;
    sub_25F57B86C(v105, v147 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
    v108 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
    v109 = sub_25F5E4244();
    (*(*(v109 - 8) + 56))(v107 + v108, 1, 1, v109);
    v73 = v107;
    v104 = (v107 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
    goto LABEL_37;
  }

  v124 = v65;

  v68 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
  v69 = sub_25F5E3D64();
  v70 = v147;
  (*(*(v69 - 8) + 56))(v147 + v68, 1, 1, v69);
  v71 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
  v72 = sub_25F5E4244();
  (*(*(v72 - 8) + 56))(v70 + v71, 1, 1, v72);
  v73 = v70;
  v74 = (v70 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
  v75 = v150;
  *v74 = v148;
  v74[1] = v75;
  v77 = v141;
  v76 = v142;
  v78 = v144;
LABEL_39:
  v110 = v136;
LABEL_40:
  (*(v76 + 16))(v138, v78, v77);
  sub_25F5E39D4();
  swift_allocObject();
  *(v73 + 16) = sub_25F5E39C4();
  v114 = v139;
  if ((v110 & 1) == 0)
  {
    if (v137)
    {
      v117 = v132;
      sub_25F5E3A54();
LABEL_46:

      (*(v76 + 8))(v78, v77);
      v118 = sub_25F5E3A64();
      (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
      result = sub_25F57B86C(v117, v73 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);
      goto LABEL_47;
    }

    sub_25F581FD8();
    swift_allocError();
    *v122 = 5;
    swift_willThrow();

    (*(v76 + 8))(v78, v77);

    sub_25F57C148(v73 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
    v102 = v73;
LABEL_49:
    sub_25F57C148(v102 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
    return swift_deallocPartialClassInstance();
  }

  if ((v137 & 1) == 0)
  {
    v117 = v132;
    sub_25F5E3A44();
    goto LABEL_46;
  }

  (*(v76 + 8))(v78, v77);

  v115 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
  v116 = sub_25F5E3A64();
  result = (*(*(v116 - 8) + 56))(v73 + v115, 1, 1, v116);
LABEL_47:
  v119 = v73 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature;
  *v119 = v134;
  *(v119 + 8) = v133;
  v120 = v73 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed;
  *v120 = v114;
  *(v120 + 8) = v126;
  v121 = v135;
  v135[3] = v125;
  v121[4] = &protocol witness table for MultiModalLLMInference;
  *v121 = v73;
  return result;
}

unint64_t sub_25F5D6A80()
{
  result = qword_27FD9E848;
  if (!qword_27FD9E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E848);
  }

  return result;
}

unint64_t sub_25F5D6AD4()
{
  result = qword_27FD9E850;
  if (!qword_27FD9E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E850);
  }

  return result;
}

uint64_t (*static MultiModalCompletionStep.multiModalCompleterFactory.getter())()
{
  swift_beginAccess();
  v0 = off_281E8E2A8;

  return v0;
}

uint64_t static MultiModalCompletionStep.multiModalCompleterFactory.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  off_281E8E2A8 = a1;
  qword_281E8E2B0 = a2;
}

uint64_t sub_25F5D6C98(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  swift_beginAccess();
  off_281E8E2A8 = v2;
  qword_281E8E2B0 = v1;
}

uint64_t MultiModalCompletionStep.init(config:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[9];
  v5 = a1[11];
  v44 = a1[10];
  v45[0] = v5;
  *(v45 + 9) = *(a1 + 185);
  v6 = a1[5];
  v7 = a1[7];
  v40 = a1[6];
  v8 = v40;
  v41 = v7;
  v9 = a1[7];
  v10 = a1[9];
  v42 = a1[8];
  v11 = v42;
  v43 = v10;
  v12 = a1[1];
  v13 = a1[3];
  v36 = a1[2];
  v14 = v36;
  v37 = v13;
  v15 = a1[3];
  v16 = a1[5];
  v38 = a1[4];
  v17 = v38;
  v39 = v16;
  v18 = a1[1];
  v34 = *a1;
  v19 = v34;
  v35 = v18;
  v20 = a1[11];
  a2[10] = v44;
  a2[11] = v20;
  *(a2 + 185) = *(a1 + 185);
  a2[6] = v8;
  a2[7] = v9;
  a2[8] = v11;
  a2[9] = v4;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v17;
  a2[5] = v6;
  *a2 = v19;
  a2[1] = v12;
  swift_beginAccess();
  v21 = off_281E8E2A8;
  v31[10] = v44;
  v32[0] = v45[0];
  *(v32 + 9) = *(v45 + 9);
  v31[6] = v40;
  v31[7] = v41;
  v31[8] = v42;
  v31[9] = v43;
  v31[2] = v36;
  v31[3] = v37;
  v31[4] = v38;
  v31[5] = v39;
  v31[0] = v34;
  v31[1] = v35;
  sub_25F5D6B28(&v34, v29);

  (v21)(v33, v31);

  sub_25F5D6B60(&v34);
  if (!v2)
  {
    return sub_25F573A2C(v33, (a2 + 13));
  }

  v22 = a2[11];
  v29[10] = a2[10];
  v30[0] = v22;
  *(v30 + 9) = *(a2 + 185);
  v23 = a2[7];
  v29[6] = a2[6];
  v29[7] = v23;
  v24 = a2[9];
  v29[8] = a2[8];
  v29[9] = v24;
  v25 = a2[3];
  v29[2] = a2[2];
  v29[3] = v25;
  v26 = a2[5];
  v29[4] = a2[4];
  v29[5] = v26;
  v27 = a2[1];
  v29[0] = *a2;
  v29[1] = v27;
  return sub_25F5D6B60(v29);
}

uint64_t MultiModalCompletionStep.process(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F5D6ED8, 0, 0);
}

uint64_t sub_25F5D6ED8()
{
  v1 = v0[3];
  v2 = *(v1 + 200);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F57CC44;
  v5 = v0[2];

  return sub_25F5A1F60(v5, v2, &unk_25F5EAE48, v3);
}

uint64_t sub_25F5D6FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[57] = a2;
  v3[58] = a3;
  v3[56] = a1;
  v4 = sub_25F5E3554();
  v3[59] = v4;
  v3[60] = *(v4 - 8);
  v3[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5D7084, 0, 0);
}

void sub_25F5D7084()
{
  v1 = v0;
  v2 = *(v0 + 464);
  if (*(v2 + 80) - 1 > 1)
  {
    v10 = *v2;
    if (*(*v2 + 16) != 1 || (v11 = v2[1], v11[2] != 1))
    {
      sub_25F5748D4();
      swift_allocError();
      *v56 = 7;
      goto LABEL_111;
    }

    v12 = *(v0 + 456);
    if (!*(v12 + 16))
    {
      goto LABEL_110;
    }

    v13 = *(v10 + 32);
    v14 = *(v10 + 40);

    v15 = sub_25F5709C8(v13, v14);
    v17 = v16;

    v18 = *(v0 + 456);
    if ((v17 & 1) == 0)
    {
      goto LABEL_109;
    }

    sub_25F573A4C(*(v18 + 56) + 32 * v15, v0 + 16);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_109;
    }

    v20 = *(v0 + 400);
    v19 = *(v0 + 408);
    *(v0 + 528) = v19;
    if (!v11[2])
    {
      goto LABEL_135;
    }

    if (!*(v12 + 16))
    {
      goto LABEL_108;
    }

    v22 = v11[4];
    v21 = v11[5];

    v23 = sub_25F5709C8(v22, v21);
    LOBYTE(v22) = v24;

    if ((v22 & 1) == 0)
    {
      goto LABEL_108;
    }

    sub_25F573A4C(*(v18 + 56) + 32 * v23, v0 + 80);
    sub_25F571D88((v0 + 80), (v0 + 48));
    __swift_project_boxed_opaque_existential_1Tm((v0 + 48), *(v0 + 72));
    v25 = sub_25F5E4B74();
    v26 = CFGetTypeID(v25);
    swift_unknownObjectRelease();
    if (v26 == CGImageGetTypeID())
    {
      v27 = *(v0 + 464);
      sub_25F573A4C(v0 + 48, v0 + 112);
      type metadata accessor for CGImage(0);
      swift_dynamicCast();
      v28 = *(v0 + 432);
      *(v0 + 536) = v28;
      v29 = v27[29];
      v30 = v27[30];
      __swift_project_boxed_opaque_existential_1Tm(v27 + 26, v29);
      v160 = (*(v30 + 16) + **(v30 + 16));
      v31 = swift_task_alloc();
      *(v0 + 544) = v31;
      *v31 = v0;
      v31[1] = sub_25F5D8388;

      v160(v20, v19, v28, v29, v30);
      return;
    }

LABEL_124:

    sub_25F5748D4();
    swift_allocError();
    *v147 = 15;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 48));
    goto LABEL_112;
  }

  v3 = MEMORY[0x277D84F90];
  v159 = sub_25F571EB0(MEMORY[0x277D84F90]);
  v156 = sub_25F572854(v3);
  v157 = v0;
  v4 = v2[23];
  if (v4)
  {
    v5 = -1;
    v6 = -1 << *(v4 + 32);
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v4 + 64);
    v8 = (63 - v6) >> 6;
    v148 = (*(v1 + 480) + 8);

    v9 = 0;
    while (v7)
    {
      v35 = v9;
LABEL_25:
      v36 = (*(v4 + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v7)))));
      v37 = v36[1];
      v152 = *v36;

      sub_25F5E3504();

      v38 = sub_25F5E3514();
      v39 = CGImageSourceCreateWithURL(v38, 0);

      if (!v39)
      {

        sub_25F5748D4();
        v137 = swift_allocError();
        *v138 = 16;
        swift_willThrow();
LABEL_104:
        v1 = v157;
        (*v148)(*(v157 + 488), *(v157 + 472));

        sub_25F5748D4();
        swift_allocError();
        *v140 = 16;
        swift_willThrow();

        goto LABEL_112;
      }

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v39, 0, 0);
      if (!ImageAtIndex)
      {

        sub_25F5748D4();
        v137 = swift_allocError();
        *v139 = 16;
        swift_willThrow();

        goto LABEL_104;
      }

      v41 = ImageAtIndex;
      (*v148)(*(v157 + 488), *(v157 + 472));

      v42 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = sub_25F5709C8(v152, v37);
      v46 = v156[2];
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        goto LABEL_129;
      }

      v50 = v45;
      if (v156[3] >= v49)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = v44;
          sub_25F57B570();
          v44 = v55;
        }
      }

      else
      {
        sub_25F57A3C4(v49, isUniquelyReferenced_nonNull_native);
        v44 = sub_25F5709C8(v152, v37);
        if ((v50 & 1) != (v51 & 1))
        {
LABEL_98:

          sub_25F5E4BC4();
          return;
        }
      }

      v7 &= v7 - 1;
      if (v50)
      {
        v32 = v44;

        v33 = v156[7];
        v34 = *(v33 + 8 * v32);
        *(v33 + 8 * v32) = v42;
      }

      else
      {
        v156[(v44 >> 6) + 8] |= 1 << v44;
        v52 = (v156[6] + 16 * v44);
        *v52 = v152;
        v52[1] = v37;
        *(v156[7] + 8 * v44) = v42;

        v53 = v156[2];
        v48 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v48)
        {
          goto LABEL_133;
        }

        v156[2] = v54;
      }

      v9 = v35;
      v1 = v157;
    }

    while (1)
    {
      v35 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_123;
      }

      if (v35 >= v8)
      {
        break;
      }

      v7 = *(v4 + 64 + 8 * v35);
      ++v9;
      if (v7)
      {
        goto LABEL_25;
      }
    }
  }

  v57 = *(v1 + 464);
  v149 = v57[24];
  if (!v149)
  {
    goto LABEL_59;
  }

  v58 = v149 + 64;
  v59 = -1;
  v60 = -1 << *(v149 + 32);
  if (-v60 < 64)
  {
    v59 = ~(-1 << -v60);
  }

  v61 = v59 & *(v149 + 64);
  v62 = (63 - v60) >> 6;

  v63 = 0;
  while (v61)
  {
    v66 = v63;
LABEL_49:
    v67 = (v66 << 10) | (16 * __clz(__rbit64(v61)));
    v68 = (*(v149 + 48) + v67);
    v70 = *v68;
    v69 = v68[1];
    v71 = (*(v149 + 56) + v67);
    v72 = v71[1];
    v153 = *v71;

    v73 = swift_isUniquelyReferenced_nonNull_native();
    v74 = sub_25F5709C8(v70, v69);
    v76 = v159[2];
    v77 = (v75 & 1) == 0;
    v48 = __OFADD__(v76, v77);
    v78 = v76 + v77;
    if (v48)
    {
      goto LABEL_127;
    }

    v79 = v75;
    if (v159[3] >= v78)
    {
      if ((v73 & 1) == 0)
      {
        v85 = v74;
        sub_25F57ADD8();
        v74 = v85;
      }
    }

    else
    {
      sub_25F579590(v78, v73);
      v74 = sub_25F5709C8(v70, v69);
      if ((v79 & 1) != (v80 & 1))
      {
        goto LABEL_98;
      }
    }

    v61 &= v61 - 1;
    if (v79)
    {
      v64 = v74;

      v65 = (v159[7] + 16 * v64);
      *v65 = v153;
      v65[1] = v72;
    }

    else
    {
      v159[(v74 >> 6) + 8] |= 1 << v74;
      v81 = (v159[6] + 16 * v74);
      *v81 = v70;
      v81[1] = v69;
      v82 = (v159[7] + 16 * v74);
      *v82 = v153;
      v82[1] = v72;
      v83 = v159[2];
      v48 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v48)
      {
        goto LABEL_132;
      }

      v159[2] = v84;
    }

    v63 = v66;
    v1 = v157;
    v58 = v149 + 64;
  }

  while (1)
  {
    v66 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    if (v66 >= v62)
    {
      break;
    }

    v61 = *(v58 + 8 * v66);
    ++v63;
    if (v61)
    {
      goto LABEL_49;
    }
  }

  v57 = *(v1 + 464);
LABEL_59:
  v86 = *v57;
  v154 = *(*v57 + 16);
  if (!v154)
  {
    goto LABEL_80;
  }

  v87 = 0;
  v88 = *(v1 + 456);
  v89 = (v86 + 40);
  v150 = v88;
  while (1)
  {
    if (v87 >= *(v86 + 16))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      return;
    }

    if (!*(v88 + 16))
    {
      goto LABEL_107;
    }

    v93 = *(v89 - 1);
    v92 = *v89;

    v94 = sub_25F5709C8(v93, v92);
    if ((v95 & 1) == 0)
    {
      break;
    }

    sub_25F573A4C(*(v88 + 56) + 32 * v94, v1 + 208);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v97 = *(v1 + 416);
    v96 = *(v1 + 424);
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v99 = sub_25F5709C8(v93, v92);
    v101 = v159[2];
    v102 = (v100 & 1) == 0;
    v48 = __OFADD__(v101, v102);
    v103 = v101 + v102;
    if (v48)
    {
      goto LABEL_126;
    }

    v104 = v100;
    if (v159[3] < v103)
    {
      sub_25F579590(v103, v98);
      v99 = sub_25F5709C8(v93, v92);
      if ((v104 & 1) != (v105 & 1))
      {
        goto LABEL_98;
      }

LABEL_72:
      v1 = v157;
      if ((v104 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_61;
    }

    if (v98)
    {
      goto LABEL_72;
    }

    v110 = v99;
    sub_25F57ADD8();
    v99 = v110;
    v1 = v157;
    if ((v104 & 1) == 0)
    {
LABEL_73:
      v159[(v99 >> 6) + 8] |= 1 << v99;
      v106 = (v159[6] + 16 * v99);
      *v106 = v93;
      v106[1] = v92;
      v107 = (v159[7] + 16 * v99);
      *v107 = v97;
      v107[1] = v96;
      v108 = v159[2];
      v48 = __OFADD__(v108, 1);
      v109 = v108 + 1;
      if (v48)
      {
        goto LABEL_131;
      }

      v159[2] = v109;
      goto LABEL_62;
    }

LABEL_61:
    v90 = v99;

    v91 = (v159[7] + 16 * v90);
    *v91 = v97;
    v91[1] = v96;

LABEL_62:
    ++v87;
    v89 += 2;
    v88 = v150;
    if (v154 == v87)
    {
      v57 = *(v1 + 464);
LABEL_80:
      *(v1 + 496) = v159;
      v111 = v57[1];
      v155 = *(v111 + 16);
      if (!v155)
      {
LABEL_117:
        *(v1 + 504) = v156;
        v144 = v57[29];
        v145 = v57[30];
        __swift_project_boxed_opaque_existential_1Tm(v57 + 26, v144);
        v158 = (*(v145 + 24) + **(v145 + 24));
        v146 = swift_task_alloc();
        *(v1 + 512) = v146;
        *v146 = v1;
        v146[1] = sub_25F5D7FF4;

        v158(v159, v156, v144, v145);
        return;
      }

      v112 = 0;
      v113 = *(v1 + 456);
      v114 = (v111 + 40);
      v151 = v113;
      while (1)
      {
        if (v112 >= *(v111 + 16))
        {
          goto LABEL_128;
        }

        if (!*(v113 + 16))
        {
          goto LABEL_107;
        }

        v119 = *(v114 - 1);
        v118 = *v114;

        v120 = sub_25F5709C8(v119, v118);
        if ((v121 & 1) == 0)
        {

          goto LABEL_107;
        }

        sub_25F573A4C(*(v113 + 56) + 32 * v120, v1 + 272);
        sub_25F571D88((v1 + 272), (v1 + 240));
        __swift_project_boxed_opaque_existential_1Tm((v1 + 240), *(v1 + 264));
        v122 = sub_25F5E4B74();
        v123 = CFGetTypeID(v122);
        swift_unknownObjectRelease();
        if (v123 != CGImageGetTypeID())
        {

          sub_25F5748D4();
          swift_allocError();
          *v143 = 15;
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_1Tm((v1 + 240));
          goto LABEL_112;
        }

        sub_25F573A4C(v1 + 240, v1 + 304);
        type metadata accessor for CGImage(0);
        swift_dynamicCast();
        v124 = *(v1 + 440);
        v125 = swift_isUniquelyReferenced_nonNull_native();
        v126 = sub_25F5709C8(v119, v118);
        v128 = v156[2];
        v129 = (v127 & 1) == 0;
        v48 = __OFADD__(v128, v129);
        v130 = v128 + v129;
        if (v48)
        {
          goto LABEL_130;
        }

        v131 = v127;
        if (v156[3] < v130)
        {
          break;
        }

        if (v125)
        {
          goto LABEL_93;
        }

        v136 = v126;
        sub_25F57B570();
        v126 = v136;
        v1 = v157;
        if ((v131 & 1) == 0)
        {
LABEL_94:
          v156[(v126 >> 6) + 8] |= 1 << v126;
          v133 = (v156[6] + 16 * v126);
          *v133 = v119;
          v133[1] = v118;
          *(v156[7] + 8 * v126) = v124;

          v134 = v156[2];
          v48 = __OFADD__(v134, 1);
          v135 = v134 + 1;
          if (v48)
          {
            goto LABEL_134;
          }

          v156[2] = v135;
          goto LABEL_83;
        }

LABEL_82:
        v115 = v126;

        v116 = v156[7];
        v117 = *(v116 + 8 * v115);
        *(v116 + 8 * v115) = v124;

LABEL_83:
        ++v112;
        __swift_destroy_boxed_opaque_existential_1Tm((v1 + 240));
        v114 += 2;
        v113 = v151;
        if (v155 == v112)
        {
          v57 = *(v1 + 464);
          goto LABEL_117;
        }
      }

      sub_25F57A3C4(v130, v125);
      v126 = sub_25F5709C8(v119, v118);
      if ((v131 & 1) != (v132 & 1))
      {
        goto LABEL_98;
      }

LABEL_93:
      v1 = v157;
      if ((v131 & 1) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_82;
    }
  }

LABEL_107:

LABEL_108:

LABEL_109:

LABEL_110:
  sub_25F5748D4();
  swift_allocError();
  *v141 = 0;
LABEL_111:
  swift_willThrow();
LABEL_112:

  v142 = *(v1 + 8);

  v142();
}

uint64_t sub_25F5D7FF4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[42] = v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = v2;
  v4[65] = v2;

  if (v2)
  {

    v5 = sub_25F5D8700;
  }

  else
  {
    v5 = sub_25F5D8170;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F5D8170()
{
  v20 = v0;
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = qword_27FD9D8B0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_25F5E3FB4();
  __swift_project_value_buffer(v4, qword_27FD9EA20);

  v5 = sub_25F5E3F94();
  v6 = sub_25F5E4794();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 448);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_25F570AF8(v2, v1, &v19);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_25F56A000, v5, v6, "Multimodal completion for item %ld: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 456);
  v11 = *(v0 + 464);
  v13 = *(v11 + 16);
  v14 = *(v11 + 24);
  *(v0 + 168) = MEMORY[0x277D837D0];
  *(v0 + 144) = v2;
  *(v0 + 152) = v1;
  sub_25F571D88((v0 + 144), (v0 + 176));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v12;
  sub_25F5710A0((v0 + 176), v13, v14, isUniquelyReferenced_nonNull_native);
  v16 = v19;

  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_25F5D8388(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[46] = v3;
  v4[47] = a1;
  v4[48] = a2;
  v4[49] = v2;
  v4[69] = v2;

  if (v2)
  {

    v5 = sub_25F5D8764;
  }

  else
  {
    v5 = sub_25F5D84D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F5D84D8()
{
  v20 = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = qword_27FD9D8B0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_25F5E3FB4();
  __swift_project_value_buffer(v4, qword_27FD9EA20);

  v5 = sub_25F5E3F94();
  v6 = sub_25F5E4794();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 448);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_25F570AF8(v2, v1, &v19);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_25F56A000, v5, v6, "Multimodal completion for item %ld: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 456);
  v11 = *(v0 + 464);
  v13 = *(v11 + 16);
  v14 = *(v11 + 24);
  *(v0 + 168) = MEMORY[0x277D837D0];
  *(v0 + 144) = v2;
  *(v0 + 152) = v1;
  sub_25F571D88((v0 + 144), (v0 + 176));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v12;
  sub_25F5710A0((v0 + 176), v13, v14, isUniquelyReferenced_nonNull_native);
  v16 = v19;

  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_25F5D8700()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F5D8764()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F5D87D8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F57E7F4;

  return sub_25F5D6FC0(a1, a2, v6);
}

uint64_t sub_25F5D8884(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F5D88A4, 0, 0);
}

uint64_t sub_25F5D88A4()
{
  v1 = v0[3];
  v2 = *(v1 + 200);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F57DE74;
  v5 = v0[2];

  return sub_25F5A1F60(v5, v2, &unk_25F5EB1A0, v3);
}

uint64_t sub_25F5D898C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_281E8E2B0;
  *a1 = off_281E8E2A8;
  a1[1] = v2;
}

uint64_t sub_25F5D89E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
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

uint64_t sub_25F5D8A28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_25F5D8AF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_25F5D8B40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F5D8BE0()
{
  result = qword_27FD9E858;
  if (!qword_27FD9E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E858);
  }

  return result;
}

unint64_t sub_25F5D8C38()
{
  result = qword_27FD9E860;
  if (!qword_27FD9E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E860);
  }

  return result;
}

unint64_t sub_25F5D8C90()
{
  result = qword_27FD9E868;
  if (!qword_27FD9E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E868);
  }

  return result;
}

uint64_t sub_25F5D8CE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75706E4974786574 && a2 == 0xED00007379654B74;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x706E496567616D69 && a2 == 0xEE007379654B7475 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654B74757074756FLL && a2 == 0xE900000000000079 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636E657265666E69 && a2 == 0xEF6769666E6F4365 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F5ECC60 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174744174786574 && a2 == 0xEF73746E656D6863 || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614665726F6E6769 && a2 == 0xEE00736572756C69)
  {

    return 6;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_25F5D8F64(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F57E6F8;

  return sub_25F5D6FC0(a1, a2, v6);
}

uint64_t ExecutionState.lastCompletion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F5E3694();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ExecutionState(uint64_t a1)
{
  result = qword_27FD9E8A0;
  if (!qword_27FD9E8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExecutionState.init(lastCompletion:lastItemDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25F5E3694();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for ExecutionState(0) + 20);

  return sub_25F5B6F80(a2, v7);
}

uint64_t ExecutionState.init(dictionary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F5E3694();
  v47 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v42 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v42 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v42 - v17;
  v19 = type metadata accessor for ExecutionState(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  if (*(a1 + 16) && (v25 = sub_25F5709C8(0x706D6F437473616CLL, 0xEE006E6F6974656CLL), (v26 & 1) != 0) && (sub_25F573A4C(*(a1 + 56) + 32 * v25, v48), (swift_dynamicCast() & 1) != 0))
  {
    v44 = a2;
    v45 = v4;
    v27 = sub_25F5E43C4();

    v28 = [v24 dateFromString_];

    if (v28)
    {
      sub_25F5E3674();

      v29 = v15;
      v30 = v47;
      v31 = v45;
      v43 = *(v47 + 32);
      v43(v18, v29, v45);
      (*(v30 + 16))(v23, v18, v31);
      if (*(a1 + 16) && (v32 = sub_25F5709C8(0x6D6574497473616CLL, 0xEC00000065746144), (v33 & 1) != 0))
      {
        sub_25F573A4C(*(a1 + 56) + 32 * v32, v48);

        if (swift_dynamicCast())
        {
          v34 = sub_25F5E43C4();

          v35 = [v24 dateFromString_];

          if (v35)
          {
            sub_25F5E3674();

            v36 = v45;
            (*(v30 + 8))(v18, v45);
            v37 = v43;
            v43(v11, v46, v36);
            v38 = *(v19 + 20);
            v37(&v23[v38], v11, v36);
            (*(v30 + 56))(&v23[v38], 0, 1, v36);
            a2 = v44;
LABEL_16:
            sub_25F5DA5E0(v23, a2);
            v39 = 0;
            return (*(v20 + 56))(a2, v39, 1, v19);
          }
        }

        v41 = v45;
        (*(v30 + 8))(v18, v45);
      }

      else
      {

        v41 = v45;
        (*(v30 + 8))(v18, v45);
      }

      a2 = v44;
      (*(v30 + 56))(&v23[*(v19 + 20)], 1, 1, v41);
      goto LABEL_16;
    }

    v39 = 1;
    a2 = v44;
  }

  else
  {

    v39 = 1;
  }

  return (*(v20 + 56))(a2, v39, 1, v19);
}

uint64_t ExecutionState.asDictionary.getter()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = sub_25F5E33F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F5E3434();
  swift_allocObject();
  sub_25F5E3424();
  (*(v1 + 104))(v4, *MEMORY[0x277CC8778], v0);
  sub_25F5E3404();
  type metadata accessor for ExecutionState(0);
  sub_25F5DAEE4(&qword_27FD9E870, type metadata accessor for ExecutionState, &protocol conformance descriptor for ExecutionState);
  v5 = sub_25F5E3414();
  v7 = v6;
  v8 = objc_opt_self();
  v9 = sub_25F5E35D4();
  sub_25F571820(v5, v7);
  *&v17 = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:&v17];

  v11 = v17;
  if (v10)
  {
    sub_25F5E48C4();

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = v11;
    v14 = sub_25F5E34F4();

    swift_willThrow();

    v17 = 0u;
    v18 = 0u;
  }

  v16[0] = v17;
  v16[1] = v18;
  if (*(&v18 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDF8, &unk_25F5E7220);
    if (swift_dynamicCast())
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_25F57C148(v16, &qword_27FD9DD20, &unk_25F5E6DE0);
    return 0;
  }
}

uint64_t static ExecutionState.get(forKey:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E878, &qword_25F5EB1A8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v28[-v12];
  v14 = type metadata accessor for ExecutionState(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = sub_25F5E43C4();
  v17 = [v15 dictionaryForKey_];

  if (v17)
  {
    v18 = sub_25F5E4304();

    ExecutionState.init(dictionary:)(v18, v10);
    sub_25F5DA644(v10, v13);
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v19 = sub_25F5E3FB4();
  __swift_project_value_buffer(v19, qword_27FD9EA20);

  v20 = sub_25F5E3F94();
  v21 = sub_25F5E47A4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_25F570AF8(a1, a2, v29);
    *(v22 + 12) = 2080;
    swift_beginAccess();
    v24 = sub_25F5E47E4();
    v26 = sub_25F570AF8(v24, v25, v29);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_25F56A000, v20, v21, "Execution state for %s: %s.", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8E3B70](v23, -1, -1);
    MEMORY[0x25F8E3B70](v22, -1, -1);
  }

  swift_beginAccess();
  sub_25F573B94(v13, a3, &qword_27FD9E878, &qword_25F5EB1A8);
  return sub_25F57C148(v13, &qword_27FD9E878, &qword_25F5EB1A8);
}

void static ExecutionState.set(forKey:state:)(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  if (ExecutionState.asDictionary.getter())
  {
    v5 = sub_25F5E42F4();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_25F5E43C4();
  [v4 setValue:v5 forKey:v6];

  swift_unknownObjectRelease();
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v7 = sub_25F5E3FB4();
  __swift_project_value_buffer(v7, qword_27FD9EA20);

  oslog = sub_25F5E3F94();
  v8 = sub_25F5E4794();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_25F570AF8(a1, a2, &v12);
    _os_log_impl(&dword_25F56A000, oslog, v8, "Execution state saved for %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x25F8E3B70](v10, -1, -1);
    MEMORY[0x25F8E3B70](v9, -1, -1);
  }
}

uint64_t sub_25F5D9E84()
{
  if (*v0)
  {
    return 0x6D6574497473616CLL;
  }

  else
  {
    return 0x706D6F437473616CLL;
  }
}

uint64_t sub_25F5D9ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x706D6F437473616CLL && a2 == 0xEE006E6F6974656CLL;
  if (v6 || (sub_25F5E4B84() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6574497473616CLL && a2 == 0xEC00000065746144)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25F5E4B84();

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

uint64_t sub_25F5D9FBC(uint64_t a1)
{
  v2 = sub_25F5DAA08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5D9FF8(uint64_t a1)
{
  v2 = sub_25F5DAA08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExecutionState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E880, &qword_25F5EB1B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5DAA08();
  sub_25F5E4C84();
  v9[15] = 0;
  sub_25F5E3694();
  sub_25F5DAEE4(&qword_27FD9E890, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_25F5E4B24();
  if (!v1)
  {
    type metadata accessor for ExecutionState(0);
    v9[14] = 1;
    sub_25F5E4B14();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ExecutionState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v25 - v6;
  v34 = sub_25F5E3694();
  v30 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v8);
  v31 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E898, &qword_25F5EB1B8);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for ExecutionState(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5DAA08();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v15;
  v27 = v7;
  v28 = v18;
  v36 = 0;
  sub_25F5DAEE4(&qword_27FD9E380, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v19 = v31;
  v20 = v32;
  v21 = v34;
  sub_25F5E4AD4();
  (*(v30 + 32))(v28, v19, v21);
  v35 = 1;
  v22 = v27;
  sub_25F5E4A84();
  (*(v33 + 8))(v14, v20);
  v23 = v28;
  sub_25F5B6F80(v22, &v28[*(v26 + 20)]);
  sub_25F5DAA5C(v23, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_25F5DAAC0(v23);
}

uint64_t sub_25F5DA5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutionState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5DA644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E878, &qword_25F5EB1A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s8PriMLETL14ExecutionStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5E3694();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E8C8, &qword_25F5EB370);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v24 - v15;
  if ((sub_25F5E3664() & 1) == 0)
  {
    return 0;
  }

  v25 = v8;
  v17 = *(type metadata accessor for ExecutionState(0) + 20);
  v18 = *(v13 + 48);
  sub_25F573B94(a1 + v17, v16, &unk_27FD9E500, &unk_25F5EA410);
  sub_25F573B94(a2 + v17, &v16[v18], &unk_27FD9E500, &unk_25F5EA410);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_25F57C148(v16, &unk_27FD9E500, &unk_25F5EA410);
      return 1;
    }

    goto LABEL_7;
  }

  sub_25F573B94(v16, v12, &unk_27FD9E500, &unk_25F5EA410);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_25F57C148(v16, &qword_27FD9E8C8, &qword_25F5EB370);
    return 0;
  }

  v21 = v25;
  (*(v5 + 32))(v25, &v16[v18], v4);
  sub_25F5DAEE4(&qword_27FD9E8D0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v22 = sub_25F5E4394();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v12, v4);
  sub_25F57C148(v16, &unk_27FD9E500, &unk_25F5EA410);
  return (v22 & 1) != 0;
}

unint64_t sub_25F5DAA08()
{
  result = qword_27FD9E888;
  if (!qword_27FD9E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E888);
  }

  return result;
}

uint64_t sub_25F5DAA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutionState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5DAAC0(uint64_t a1)
{
  v2 = type metadata accessor for ExecutionState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F5DAB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F5E3694();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25F5DAC40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F5E3694();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_25F5DAD48(uint64_t a1)
{
  sub_25F5E3694();
  if (v1 <= 0x3F)
  {
    sub_25F5B2AE4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_25F5DADE0()
{
  result = qword_27FD9E8B0;
  if (!qword_27FD9E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E8B0);
  }

  return result;
}

unint64_t sub_25F5DAE38()
{
  result = qword_27FD9E8B8;
  if (!qword_27FD9E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E8B8);
  }

  return result;
}

unint64_t sub_25F5DAE90()
{
  result = qword_27FD9E8C0;
  if (!qword_27FD9E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E8C0);
  }

  return result;
}

uint64_t sub_25F5DAEE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void TaggingStepConfig.updateProperties(from:)()
{
  v1 = v0;
  if (*(v0 + 80) == 3)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);

    v4 = sub_25F5E3D14();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      sub_25F581A78(v2, v3, 3u);
      v2 = v6;
      v3 = v7;
    }

    sub_25F581A78(*(v1 + 64), *(v1 + 72), *(v1 + 80));
    *(v1 + 64) = v2;
    *(v1 + 72) = v3;
    *(v1 + 80) = 3;
  }
}

void sub_25F5DAFC8()
{
  v1 = v0;
  if (*(v0 + 80) == 3)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);

    v4 = sub_25F5E3D14();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      sub_25F581A78(v2, v3, 3u);
      v2 = v6;
      v3 = v7;
    }

    sub_25F581A78(*(v1 + 64), *(v1 + 72), *(v1 + 80));
    *(v1 + 64) = v2;
    *(v1 + 72) = v3;
    *(v1 + 80) = 3;
  }
}

uint64_t PerSampleMorpheusStepConfig.updateProperties(from:)()
{
  v2 = sub_25F5E4444();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_25F5E3554();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32) == 1)
  {
    v10 = v0;
    sub_25F5E3D14();
    if (!v11)
    {
      sub_25F5748D4();
      swift_allocError();
      v16 = 4;
      goto LABEL_6;
    }

    sub_25F5E3504();

    sub_25F5E4424();
    v12 = sub_25F5E43A4();
    v14 = (v5 + 8);
    if (v1)
    {

      (*v14)(v9, v4);
      sub_25F5748D4();
      swift_allocError();
      v16 = 5;
LABEL_6:
      *v15 = v16;
      return swift_willThrow();
    }

    v17 = v12;
    v18 = v13;
    (*v14)(v9, v4);
    result = sub_25F5741E0(*(v10 + 16), *(v10 + 24));
    *(v10 + 16) = v17;
    *(v10 + 24) = v18;
    *(v10 + 32) = 0;
  }

  return result;
}

void TextCompletionStepConfig.updateProperties(from:)()
{
  v1 = v0;
  if (*(v0 + 72) == 3)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);

    v4 = sub_25F5E3D14();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      sub_25F581A78(v2, v3, 3u);
      v2 = v6;
      v3 = v7;
    }

    sub_25F581A78(*(v1 + 56), *(v1 + 64), *(v1 + 72));
    *(v1 + 56) = v2;
    *(v1 + 64) = v3;
    *(v1 + 72) = 3;
  }
}

void sub_25F5DB320()
{
  v1 = v0;
  if (*(v0 + 72) == 3)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);

    v4 = sub_25F5E3D14();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      sub_25F581A78(v2, v3, 3u);
      v2 = v6;
      v3 = v7;
    }

    sub_25F581A78(*(v1 + 56), *(v1 + 64), *(v1 + 72));
    *(v1 + 56) = v2;
    *(v1 + 64) = v3;
    *(v1 + 72) = 3;
  }
}

uint64_t MultiModalCompletionStepConfig.updateProperties(from:)(uint64_t result)
{
  v2 = v1;
  if (*(v1 + 80) == 3)
  {
    v3 = *(v1 + 64);
    v4 = *(v1 + 72);

    v5 = sub_25F5E3D14();
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      sub_25F581A78(v3, v4, 3u);
      v3 = v7;
      v4 = v8;
    }

    result = sub_25F581A78(*(v2 + 64), *(v2 + 72), *(v2 + 80));
    *(v2 + 64) = v3;
    *(v2 + 72) = v4;
    *(v2 + 80) = 3;
  }

  v9 = *(v2 + 184);
  if (v9)
  {
    v44 = v2;

    v10 = sub_25F571EB0(MEMORY[0x277D84F90]);
    v11 = 0;
    v12 = v9 + 64;
    v13 = 1 << *(v9 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v9 + 64);
    v16 = (v13 + 63) >> 6;
    v45 = v9 + 64;
    v46 = v16;
    v47 = v9;
    while (v15)
    {
      v18 = v11;
LABEL_16:
      v19 = (v18 << 10) | (16 * __clz(__rbit64(v15)));
      v20 = (*(v9 + 48) + v19);
      v21 = v20[1];
      v49 = *v20;
      v22 = (*(v9 + 56) + v19);
      v23 = *v22;
      v24 = v22[1];

      v25 = sub_25F5E3D14();
      if (v26)
      {
        v27 = v25;
        v28 = v26;

        v48 = v27;
        v24 = v28;
      }

      else
      {
        v48 = v23;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v21;
      v32 = sub_25F5709C8(v49, v21);
      v33 = v10[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_31;
      }

      v36 = v31;
      if (v10[3] >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25F57ADD8();
        }
      }

      else
      {
        sub_25F579590(v35, isUniquelyReferenced_nonNull_native);
        v37 = sub_25F5709C8(v49, v30);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_33;
        }

        v32 = v37;
      }

      v15 &= v15 - 1;
      if (v36)
      {

        v17 = (v10[7] + 16 * v32);
        *v17 = v48;
        v17[1] = v24;
      }

      else
      {
        v10[(v32 >> 6) + 8] |= 1 << v32;
        v39 = (v10[6] + 16 * v32);
        *v39 = v49;
        v39[1] = v30;
        v40 = (v10[7] + 16 * v32);
        *v40 = v48;
        v40[1] = v24;
        v41 = v10[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_32;
        }

        v10[2] = v43;
      }

      v11 = v18;
      v16 = v46;
      v9 = v47;
      v12 = v45;
    }

    while (1)
    {
      v18 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        *(v44 + 184) = v10;
        return result;
      }

      v15 = *(v12 + 8 * v18);
      ++v11;
      if (v15)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_25F5E4BC4();
    __break(1u);
  }

  return result;
}

uint64_t DataProcessingStepConfig.updateProperties(from:)(uint64_t a1)
{
  v3 = v1;
  v202 = a1;
  v4 = sub_25F5E4444();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = sub_25F5E3554();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[9];
  v12 = v1[11];
  v198 = v1[10];
  v199[0] = v12;
  *(v199 + 9) = *(v1 + 185);
  v13 = v1[5];
  v14 = v1[7];
  v194 = v1[6];
  v195 = v14;
  v15 = v1[7];
  v16 = v1[8];
  v197 = v1[9];
  v196 = v16;
  v17 = v1[1];
  v18 = v1[3];
  v190 = v1[2];
  v191 = v18;
  v19 = v1[3];
  v20 = v1[4];
  v193 = v1[5];
  v192 = v20;
  v21 = *v1;
  v189 = v1[1];
  v188 = v21;
  v22 = v1[11];
  v200[10] = v198;
  v201[0] = v22;
  *(v201 + 9) = *(v1 + 185);
  v200[6] = v194;
  v200[7] = v15;
  v200[9] = v11;
  v200[8] = v16;
  v200[2] = v190;
  v200[3] = v19;
  v200[5] = v13;
  v200[4] = v20;
  v200[1] = v17;
  v200[0] = v21;
  v23 = sub_25F5A9C48(v200);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v60 = sub_25F5A9C54(v200);
      v174 = v198;
      v175[0] = v199[0];
      *(v175 + 9) = *(v199 + 9);
      v170 = v194;
      v171 = v195;
      v172 = v196;
      v173 = v197;
      v166 = v190;
      v167 = v191;
      v168 = v192;
      v169 = v193;
      v164 = v188;
      v165 = v189;
      v61 = sub_25F5A9C54(&v164);
      v62 = v3[11];
      v186 = v3[10];
      v187[0] = v62;
      *(v187 + 9) = *(v3 + 185);
      v63 = v3[7];
      v182 = v3[6];
      v183 = v63;
      v64 = v3[8];
      v185 = v3[9];
      v184 = v64;
      v65 = v3[2];
      v179 = v3[3];
      v66 = v3[4];
      v181 = v3[5];
      v180 = v66;
      v67 = *v3;
      v177 = v3[1];
      v178 = v65;
      v176 = v67;
      sub_25F57C964(v61, &v159);
      sub_25F5DC318(&v176);
      v68 = *(v60 + 16);
      v153 = *v60;
      v154 = v68;
      v155 = *(v60 + 32);
      v69 = *(v60 + 56);
      v156 = *(v60 + 48);
      v70 = *(v60 + 64);
      v71 = *(v60 + 72);
      v72 = *(v60 + 89);
      v73 = *(v60 + 121);
      v150 = *(v60 + 105);
      v151 = v73;
      v152 = *(v60 + 137);
      v148 = *(v60 + 73);
      v149 = v72;
      if (v71 == 3)
      {
        v136 = v2;

        v74 = sub_25F5E3D14();
        v76 = v69;
        v77 = v70;
        if (v75)
        {
          v78 = v74;
          v79 = v75;
          sub_25F581A78(v69, v70, 3u);
          v76 = v78;
          v77 = v79;
        }

        sub_25F581A78(v69, v70, 3u);
        v69 = v76;
        v70 = v77;
      }

      v159 = v153;
      v160 = v154;
      v161 = v155;
      *(&v163[1] + 9) = v149;
      *(&v163[2] + 9) = v150;
      *(&v163[3] + 9) = v151;
      *(&v163[4] + 9) = v152;
      *&v162 = v156;
      *(&v162 + 1) = v69;
      *&v163[0] = v70;
      BYTE8(v163[0]) = v71;
      *(v163 + 9) = v148;
      result = sub_25F5DC390(&v159);
    }

    else
    {
      if (v23 == 3)
      {
        sub_25F5A9C54(v200);
        v24 = v1[11];
        v174 = v1[10];
        v175[0] = v24;
        *(v175 + 9) = *(v1 + 185);
        v25 = v1[7];
        v170 = v1[6];
        v171 = v25;
        v26 = v1[9];
        v172 = v1[8];
        v173 = v26;
        v27 = v1[3];
        v166 = v1[2];
        v167 = v27;
        v28 = v1[5];
        v168 = v1[4];
        v169 = v28;
        v29 = v1[1];
        v164 = *v1;
        v165 = v29;
        v186 = v198;
        v187[0] = v199[0];
        *(v187 + 9) = *(v199 + 9);
        v182 = v194;
        v183 = v195;
        v185 = v197;
        v184 = v196;
        v179 = v191;
        v181 = v193;
        v180 = v192;
        v177 = v189;
        v178 = v190;
        v176 = v188;
        sub_25F5A9C54(&v176);

        result = sub_25F5DC318(&v164);
        v31 = v199[0];
        v1[10] = v198;
        v1[11] = v31;
        *(v1 + 185) = *(v199 + 9);
        v32 = v195;
        v1[6] = v194;
        v1[7] = v32;
        v33 = v197;
        v1[8] = v196;
        v1[9] = v33;
        v34 = v191;
        v1[2] = v190;
        v1[3] = v34;
        v35 = v193;
        v1[4] = v192;
        v1[5] = v35;
        v36 = v189;
        v37 = v188;
LABEL_26:
        *v3 = v37;
        v3[1] = v36;
        return result;
      }

      v80 = sub_25F5A9C54(v200);
      v173 = v80[9];
      v174 = v80[10];
      v175[0] = v80[11];
      *(v175 + 9) = *(v80 + 185);
      v169 = v80[5];
      v170 = v80[6];
      v171 = v80[7];
      v172 = v80[8];
      v165 = v80[1];
      v166 = v80[2];
      v167 = v80[3];
      v168 = v80[4];
      v164 = *v80;
      v179 = v191;
      v176 = v188;
      v177 = v189;
      v178 = v190;
      v183 = v195;
      v182 = v194;
      v180 = v192;
      v181 = v193;
      *(v187 + 9) = *(v199 + 9);
      v187[0] = v199[0];
      v186 = v198;
      v184 = v196;
      v185 = v197;
      v81 = sub_25F5A9C54(&v176);
      sub_25F5D6B28(v81, &v159);
      MultiModalCompletionStepConfig.updateProperties(from:)(v202);
      if (v2)
      {
        v163[6] = v174;
        v163[7] = v175[0];
        *(&v163[7] + 9) = *(v175 + 9);
        v163[2] = v170;
        v163[3] = v171;
        v163[4] = v172;
        v163[5] = v173;
        v161 = v166;
        v162 = v167;
        v163[0] = v168;
        v163[1] = v169;
        v159 = v164;
        v160 = v165;
        return sub_25F5D6B60(&v159);
      }

      v113 = v1[11];
      v157[10] = v1[10];
      v158[0] = v113;
      *(v158 + 9) = *(v1 + 185);
      v114 = v1[7];
      v157[6] = v1[6];
      v157[7] = v114;
      v115 = v1[9];
      v157[8] = v1[8];
      v157[9] = v115;
      v116 = v1[3];
      v157[2] = v1[2];
      v157[3] = v116;
      v117 = v1[5];
      v157[4] = v1[4];
      v157[5] = v117;
      v118 = v1[1];
      v157[0] = *v1;
      v157[1] = v118;
      sub_25F5DC318(v157);
      v163[6] = v174;
      v163[7] = v175[0];
      *(&v163[7] + 9) = *(v175 + 9);
      v163[2] = v170;
      v163[3] = v171;
      v163[4] = v172;
      v163[5] = v173;
      v161 = v166;
      v162 = v167;
      v163[0] = v168;
      v163[1] = v169;
      v159 = v164;
      v160 = v165;
      result = sub_25F5DC36C(&v159);
    }

LABEL_25:
    v119 = v163[7];
    v3[10] = v163[6];
    v3[11] = v119;
    *(v3 + 185) = *(&v163[7] + 9);
    v120 = v163[3];
    v3[6] = v163[2];
    v3[7] = v120;
    v121 = v163[5];
    v3[8] = v163[4];
    v3[9] = v121;
    v122 = v162;
    v3[2] = v161;
    v3[3] = v122;
    v123 = v163[1];
    v3[4] = v163[0];
    v3[5] = v123;
    v37 = v159;
    v36 = v160;
    goto LABEL_26;
  }

  if (!v23)
  {
    v38 = sub_25F5A9C54(v200);
    v174 = v198;
    v175[0] = v199[0];
    *(v175 + 9) = *(v199 + 9);
    v170 = v194;
    v171 = v195;
    v172 = v196;
    v173 = v197;
    v166 = v190;
    v167 = v191;
    v168 = v192;
    v169 = v193;
    v164 = v188;
    v165 = v189;
    v39 = sub_25F5A9C54(&v164);
    v40 = v3[11];
    v186 = v3[10];
    v187[0] = v40;
    *(v187 + 9) = *(v3 + 185);
    v41 = v3[7];
    v182 = v3[6];
    v183 = v41;
    v42 = v3[8];
    v185 = v3[9];
    v184 = v42;
    v43 = v3[2];
    v179 = v3[3];
    v44 = v3[4];
    v181 = v3[5];
    v180 = v44;
    v45 = *v3;
    v177 = v3[1];
    v178 = v43;
    v176 = v45;
    sub_25F5768F0(v39, &v159);
    sub_25F5DC318(&v176);
    v46 = *(v38 + 16);
    v144 = *v38;
    v145 = v46;
    v47 = *(v38 + 48);
    v146 = *(v38 + 32);
    v147 = v47;
    v49 = *(v38 + 64);
    v48 = *(v38 + 72);
    v50 = *(v38 + 80);
    v51 = *(v38 + 129);
    v52 = *(v38 + 161);
    v141 = *(v38 + 145);
    v142 = v52;
    v143 = *(v38 + 177);
    v53 = *(v38 + 97);
    v137 = *(v38 + 81);
    v138 = v53;
    v139 = *(v38 + 113);
    v140 = v51;
    if (v50 == 3)
    {
      v136 = v2;

      v54 = sub_25F5E3D14();
      v56 = v49;
      v57 = v48;
      if (v55)
      {
        v58 = v54;
        v59 = v55;
        sub_25F581A78(v49, v48, 3u);
        v56 = v58;
        v57 = v59;
      }

      sub_25F581A78(v49, v48, 3u);
      v48 = v57;
      v49 = v56;
    }

    v159 = v144;
    v160 = v145;
    v161 = v146;
    v162 = v147;
    *(&v163[4] + 1) = v140;
    *(&v163[5] + 1) = v141;
    *(&v163[6] + 1) = v142;
    *(&v163[1] + 1) = v137;
    *(&v163[2] + 1) = v138;
    *&v163[0] = v49;
    *(&v163[0] + 1) = v48;
    LOBYTE(v163[1]) = v50;
    BYTE1(v163[7]) = v143;
    *(&v163[3] + 1) = v139;
    result = sub_25F5DC3D8(&v159);
    goto LABEL_25;
  }

  v136 = v2;
  v82 = sub_25F5A9C54(v200);
  v83 = *v82;
  v133 = *(v82 + 8);
  v134 = v83;
  v84 = *(v82 + 24);
  v132 = *(v82 + 16);
  v135 = v84;
  v85 = *(v82 + 33);
  LOBYTE(v159) = *(v82 + 32);
  LOBYTE(v157[0]) = v85;
  if (v159 != 1)
  {
    v95 = v1[11];
    v174 = v1[10];
    v175[0] = v95;
    *(v175 + 9) = *(v1 + 185);
    v96 = v1[7];
    v170 = v1[6];
    v171 = v96;
    v97 = v1[9];
    v172 = v1[8];
    v173 = v97;
    v98 = v1[3];
    v166 = v1[2];
    v167 = v98;
    v99 = v1[5];
    v168 = v1[4];
    v169 = v99;
    v100 = v1[1];
    v164 = *v1;
    v165 = v100;
    v186 = v198;
    v187[0] = v199[0];
    *(v187 + 9) = *(v199 + 9);
    v182 = v194;
    v183 = v195;
    v185 = v197;
    v184 = v196;
    v179 = v191;
    v181 = v193;
    v180 = v192;
    v177 = v189;
    v178 = v190;
    v176 = v188;
    v101 = v85;
    v102 = sub_25F5A9C54(&v176);
    v103 = *(v102 + 16);
    v104 = *(v102 + 24);

    sub_25F57423C(v103, v104);
    sub_25F5DC318(&v164);
    v105 = v132;
    v106 = v135;
LABEL_23:
    *&v176 = v134;
    *(&v176 + 1) = v133;
    *&v177 = v105;
    *(&v177 + 1) = v106;
    LOBYTE(v178) = 0;
    BYTE1(v178) = v101;
    result = sub_25F5DC3B4(&v176);
    v107 = v187[0];
    v3[10] = v186;
    v3[11] = v107;
    *(v3 + 185) = *(v187 + 9);
    v108 = v183;
    v3[6] = v182;
    v3[7] = v108;
    v109 = v185;
    v3[8] = v184;
    v3[9] = v109;
    v110 = v179;
    v3[2] = v178;
    v3[3] = v110;
    v111 = v181;
    v3[4] = v180;
    v3[5] = v111;
    v112 = v177;
    *v3 = v176;
    v3[1] = v112;
    return result;
  }

  v186 = v198;
  v187[0] = v199[0];
  *(v187 + 9) = *(v199 + 9);
  v182 = v194;
  v183 = v195;
  v185 = v197;
  v184 = v196;
  v179 = v191;
  v181 = v193;
  v180 = v192;
  v177 = v189;
  v178 = v190;
  v176 = v188;
  v86 = sub_25F5A9C54(&v176);
  v87 = *(v86 + 16);
  v88 = *(v86 + 24);

  sub_25F57423C(v87, v88);
  v89 = v132;
  sub_25F5E3D14();
  if (!v90)
  {
    v94 = 4;
    goto LABEL_28;
  }

  sub_25F5E3504();

  sub_25F5E4424();
  v91 = v136;
  v92 = sub_25F5E43A4();
  if (!v91)
  {
    v105 = v92;
    v106 = v93;
    v136 = 0;
    v125 = v3[11];
    v174 = v3[10];
    v175[0] = v125;
    *(v175 + 9) = *(v3 + 185);
    v126 = v3[7];
    v170 = v3[6];
    v171 = v126;
    v127 = v3[9];
    v172 = v3[8];
    v173 = v127;
    v128 = v3[3];
    v166 = v3[2];
    v167 = v128;
    v129 = v3[5];
    v168 = v3[4];
    v169 = v129;
    v130 = v3[1];
    v164 = *v3;
    v165 = v130;
    sub_25F5DC318(&v164);
    (*(v7 + 8))(v10, v6);
    sub_25F5741E0(v89, v135);
    v101 = v157[0];
    goto LABEL_23;
  }

  (*(v7 + 8))(v10, v6);
  v94 = 5;
LABEL_28:
  sub_25F5748D4();
  swift_allocError();
  *v124 = v94;
  swift_willThrow();

  return sub_25F5741E0(v89, v135);
}

uint64_t sub_25F5DC36C(uint64_t result)
{
  v1 = *(result + 200);
  *(result + 176) &= 0x101uLL;
  *(result + 200) = v1 & 1 | 0x80;
  return result;
}

uint64_t sub_25F5DC390(uint64_t result)
{
  v1 = *(result + 200);
  *(result + 176) &= 0x101uLL;
  *(result + 200) = v1 & 1 | 0x40;
  return result;
}

uint64_t sub_25F5DC3B4(uint64_t result)
{
  v1 = *(result + 200);
  *(result + 176) &= 0x101uLL;
  *(result + 200) = v1 & 1 | 0x20;
  return result;
}

uint64_t sub_25F5DC3D8(uint64_t result)
{
  v1 = *(result + 200) & 1;
  *(result + 176) &= 0x101uLL;
  *(result + 200) = v1;
  return result;
}

__CFData *sub_25F5DC420(CGImage *a1)
{
  v2 = sub_25F5E3CF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  sub_25F5E3CE4();
  sub_25F5E3CD4();
  (*(v3 + 8))(v6, v2);
  v8 = sub_25F5E43C4();

  v9 = CGImageDestinationCreateWithData(v7, v8, 1uLL, 0);

  if (!v9)
  {
    sub_25F5748D4();
    swift_allocError();
    *v15 = 12;
    swift_willThrow();
    v9 = v7;
LABEL_6:

    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E8D8, &unk_25F5EB400);
  inited = swift_initStackObject();
  v11 = *MEMORY[0x277CD2D48];
  *(inited + 32) = *MEMORY[0x277CD2D48];
  *(inited + 16) = xmmword_25F5E5EE0;
  *(inited + 64) = MEMORY[0x277D839F8];
  *(inited + 40) = 0x3FECCCCCCCCCCCCDLL;
  v12 = v11;
  sub_25F572218(inited);
  swift_setDeallocating();
  sub_25F5DC6E0(inited + 32);
  type metadata accessor for CFString(0);
  sub_25F5DC748();
  v13 = sub_25F5E42F4();

  CGImageDestinationAddImage(v9, a1, v13);

  if (!CGImageDestinationFinalize(v9))
  {
    sub_25F5748D4();
    swift_allocError();
    *v16 = 12;
    swift_willThrow();

    goto LABEL_6;
  }

  v14 = v7;
  v7 = sub_25F5E35E4();

  return v7;
}

uint64_t sub_25F5DC6E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC30, &qword_25F5E6890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F5DC748()
{
  result = qword_27FD9D9C0;
  if (!qword_27FD9D9C0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9D9C0);
  }

  return result;
}

CGImage *sub_25F5DC7A0(CGImage *a1, double a2, double a3)
{
  v5 = a1;
  Width = CGImageGetWidth(a1);
  result = CGImageGetHeight(v5);
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (Width > a2)
  {
    goto LABEL_9;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a3 < 9.22337204e18)
  {
    if (result <= a3)
    {
      return v5;
    }

LABEL_9:
    v9 = a2 / Width;
    if (a3 / result < v9)
    {
      v9 = a3 / result;
    }

    v10 = v9 * Width;
    if (v10 > -9.22337204e18)
    {
      if (v10 < 9.22337204e18)
      {
        v11 = v9 * result;
        v12 = COERCE_UNSIGNED_INT64(fabs(v11)) > 0x7FEFFFFFFFFFFFFFLL;
        if (COERCE_UNSIGNED_INT64(fabs(v9 * Width)) <= 0x7FEFFFFFFFFFFFFFLL && !v12)
        {
          if (v11 > -9.22337204e18)
          {
            if (v11 < 9.22337204e18)
            {
              v13 = v10;
              v14 = v11;
              DeviceRGB = CGImageGetColorSpace(v5);
              if (!DeviceRGB)
              {
                DeviceRGB = CGColorSpaceCreateDeviceRGB();
              }

              BitmapInfo = CGImageGetBitmapInfo(v5);
              BitsPerComponent = CGImageGetBitsPerComponent(v5);
              v18 = __CGBitmapContextCreate(v13, v14, BitsPerComponent, DeviceRGB, BitmapInfo);
              if (v18)
              {
                v19 = v18;
                CGContextSetInterpolationQuality(v18, kCGInterpolationHigh);
                v5 = v19;
                sub_25F5E4774();
                Image = CGBitmapContextCreateImage(v19);
                if (Image)
                {
                  v5 = Image;

                  return v5;
                }

                sub_25F5748D4();
                swift_allocError();
                *v22 = 14;
                swift_willThrow();
              }

              else
              {
                sub_25F5748D4();
                swift_allocError();
                *v21 = 14;
                swift_willThrow();
                v19 = DeviceRGB;
              }

              return v5;
            }

            goto LABEL_34;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_25F5DCA74()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t sub_25F5DCAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v6 || (sub_25F5E4B84() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F5ECC80 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25F5E4B84();

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

uint64_t sub_25F5DCB90(uint64_t a1)
{
  v2 = sub_25F5DCDDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5DCBCC(uint64_t a1)
{
  v2 = sub_25F5DCDDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImagePlaygroundConfig.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E8E0, &qword_25F5EB410);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5DCDDC();
  sub_25F5E4C74();
  if (!v2)
  {
    v16 = 0;
    sub_25F5DCE30();
    sub_25F5E4AD4();
    v10 = v17;
    v14 = 1;
    sub_25F5DCE84();
    sub_25F5E4AD4();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    *a2 = v10;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_25F5DCDDC()
{
  result = qword_27FD9E8E8;
  if (!qword_27FD9E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E8E8);
  }

  return result;
}

unint64_t sub_25F5DCE30()
{
  result = qword_27FD9E8F0;
  if (!qword_27FD9E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E8F0);
  }

  return result;
}

unint64_t sub_25F5DCE84()
{
  result = qword_27FD9E8F8;
  if (!qword_27FD9E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E8F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImagePlaygroundConfig(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImagePlaygroundConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F5DD064()
{
  result = qword_27FD9E900;
  if (!qword_27FD9E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E900);
  }

  return result;
}

unint64_t sub_25F5DD0BC()
{
  result = qword_27FD9E908;
  if (!qword_27FD9E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E908);
  }

  return result;
}

unint64_t sub_25F5DD114()
{
  result = qword_27FD9E910;
  if (!qword_27FD9E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E910);
  }

  return result;
}

PriMLETL::ImageStyle_optional __swiftcall ImageStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F5E4A14();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ImageStyle.rawValue.getter()
{
  v1 = 0x6F6974616D696E61;
  v2 = 0x686374656B73;
  if (*v0 != 2)
  {
    v2 = 0x696A6F6D65;
  }

  if (*v0)
  {
    v1 = 0x61727473756C6C69;
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

uint64_t sub_25F5DD25C()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5DD324(uint64_t a1)
{
  sub_25F5E4334();
}

uint64_t sub_25F5DD3D8()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

void sub_25F5DD4A8(uint64_t *a1@<X8>)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F6974616D696E61;
  v4 = 0xE600000000000000;
  v5 = 0x686374656B73;
  if (*v1 != 2)
  {
    v5 = 0x696A6F6D65;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x61727473756C6C69;
    v2 = 0xEC0000006E6F6974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

PriMLETL::PersonalizationPolicy_optional __swiftcall PersonalizationPolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F5E4A14();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationPolicy.rawValue.getter()
{
  v1 = 0x64656C62616E65;
  if (*v0 != 1)
  {
    v1 = 0x64656C6261736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

unint64_t sub_25F5DD668()
{
  result = qword_27FD9E918;
  if (!qword_27FD9E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E918);
  }

  return result;
}

uint64_t sub_25F5DD6EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64656C62616E65;
  if (v2 != 1)
  {
    v4 = 0x64656C6261736964;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000063;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64656C62616E65;
  if (*a2 != 1)
  {
    v8 = 0x64656C6261736964;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000063;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F5E4B84();
  }

  return v11 & 1;
}

unint64_t sub_25F5DD7F4()
{
  result = qword_27FD9E930;
  if (!qword_27FD9E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E930);
  }

  return result;
}

uint64_t sub_25F5DD848()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5DD8F0(uint64_t a1)
{
  sub_25F5E4334();
}

uint64_t sub_25F5DD984()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

void sub_25F5DDA34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0xE700000000000000;
  v5 = 0x64656C62616E65;
  if (v2 != 1)
  {
    v5 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F5DDB28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t dispatch thunk of ImageGenerating.generateImages(prompt:numberOfImages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25F57E6F8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_25F5DDCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_25F5E3904();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v6 = sub_25F5E36D4();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E968, &qword_25F5EB878);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v7 = sub_25F5E3554();
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v8 = sub_25F5E38F4();
  v4[35] = v8;
  v4[36] = *(v8 - 8);
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E970, &qword_25F5EB880);
  v4[38] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E978, &qword_25F5EB888);
  v4[39] = v9;
  v4[40] = *(v9 - 8);
  v4[41] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E980, &qword_25F5EB890);
  v4[42] = v10;
  v4[43] = *(v10 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v11 = sub_25F5E3944();
  v4[46] = v11;
  v4[47] = *(v11 - 8);
  v4[48] = swift_task_alloc();
  v12 = sub_25F5E3994();
  v4[49] = v12;
  v4[50] = *(v12 - 8);
  v4[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5DE128, 0, 0);
}

uint64_t sub_25F5DE128()
{
  if (*(v0[16] + 24) > 1u)
  {
    if (*(v0[16] + 24) == 2)
    {
      sub_25F5E3974();
    }

    else
    {
      sub_25F5E3964();
    }
  }

  else if (*(v0[16] + 24))
  {
    sub_25F5E3954();
  }

  else
  {
    MEMORY[0x25F8E2040]();
  }

  v1 = v0[45];
  v2 = v0[43];
  v10 = v0[44];
  v3 = v0[42];
  (*(v0[47] + 104))(v0[48], **(&unk_279A84E20 + *(v0[16] + 25)), v0[46]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E988, &qword_25F5EB898);
  sub_25F5E39B4();
  *(swift_allocObject() + 16) = xmmword_25F5E5EE0;
  sub_25F5E39A4();
  v4 = MEMORY[0x277D84F90];
  v0[9] = MEMORY[0x277D84F90];
  sub_25F5E3914();

  (*(v2 + 16))(v10, v1, v3);
  v0[52] = swift_getOpaqueTypeConformance2();
  sub_25F5E46E4();
  v0[53] = OBJC_IVAR____TtC8PriMLETL24ImagePlaygroundInference_debugDirectory;
  v0[54] = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_task_alloc();
  v0[55] = v6;
  *v6 = v0;
  v6[1] = sub_25F5DE3CC;
  v7 = v0[38];
  v8 = v0[39];

  return MEMORY[0x282200310](v7, 0, 0, v0 + 10, v8, AssociatedConformanceWitness);
}

uint64_t sub_25F5DE3CC()
{
  *(*v1 + 448) = v0;

  if (v0)
  {

    v2 = sub_25F5DF5A8;
  }

  else
  {
    v2 = sub_25F5DE4E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F5DE4E8()
{
  v165 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 400);
    v5 = *(v0 + 408);
    v6 = *(v0 + 384);
    v7 = *(v0 + 376);
    v139 = *(v0 + 368);
    v140 = *(v0 + 392);
    v8 = *(v0 + 360);
    v10 = *(v0 + 336);
    v9 = *(v0 + 344);
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    (*(v9 + 8))(v8, v10);
    (*(v7 + 8))(v6, v139);
    (*(v4 + 8))(v5, v140);

    v11 = *(v0 + 8);
    v12 = *(v0 + 432);

    return v11(v12);
  }

  (*(v3 + 32))(*(v0 + 296), v1, v2);
  v14 = sub_25F5E38E4();
  MEMORY[0x25F8E2CC0]();
  if (*((*(v0 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_25F5E4644();
  }

  v15 = *(v0 + 424);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v18 = *(v0 + 216);
  v19 = *(v0 + 128);
  sub_25F5E4664();
  v20 = *(v0 + 72);
  sub_25F5DFEF0(v19 + v15, v18);
  v21 = *(v17 + 48);
  if (v21(v18, 1, v16) == 1)
  {
    v22 = *(v0 + 216);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));

    sub_25F57C148(v22, &qword_27FD9E968, &qword_25F5EB878);
LABEL_9:
    *(v0 + 432) = v20;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = swift_task_alloc();
    *(v0 + 440) = v24;
    *v24 = v0;
    v24[1] = sub_25F5DE3CC;
    v25 = *(v0 + 304);
    v26 = *(v0 + 312);

    return MEMORY[0x282200310](v25, 0, 0, v0 + 80, v26, AssociatedConformanceWitness);
  }

  v148 = v21;
  v157 = v20;
  v161 = *(v0 + 448);
  v28 = *(v0 + 224);
  v27 = *(v0 + 232);
  v151 = *(v0 + 272);
  v154 = *(v0 + 208);
  v30 = *(v0 + 184);
  v29 = *(v0 + 192);
  v159 = v14;
  v31 = *(v0 + 176);
  v145 = *(v27 + 32);
  v145();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  sub_25F5E4954();

  *(v0 + 40) = 0x65746172656E6567;
  *(v0 + 48) = 0xEA00000000005F64;
  sub_25F5E36C4();
  v32 = sub_25F5E36A4();
  v34 = v33;
  (*(v30 + 8))(v29, v31);
  v35 = sub_25F5C78D8(4, v32, v34);
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v42 = MEMORY[0x25F8E2B40](v35, v37, v39, v41);
  v44 = v43;

  MEMORY[0x25F8E2BC0](v42, v44);

  MEMORY[0x25F8E2BC0](1735420462, 0xE400000000000000);
  v45 = *(v27 + 16);
  v45(v154, v151, v28);
  (*(v27 + 56))(v154, 0, 1, v28);
  v46 = sub_25F5DC420(v159);
  if (!v161)
  {
    v55 = v47;
    v141 = v45;
    v153 = v46;
    v56 = *(v0 + 224);
    v57 = *(v0 + 200);
    sub_25F5DFEF0(*(v0 + 208), v57);
    v58 = v148(v57, 1, v56);
    v59 = *(v0 + 224);
    v60 = *(v0 + 200);
    if (v58 == 1)
    {
      v61 = [objc_opt_self() defaultManager];
      v62 = v55;
      v63 = [v61 temporaryDirectory];

      sub_25F5E3534();
      v55 = v62;
      v64 = v145;
      if (v148(v60, 1, v59) != 1)
      {
        sub_25F57C148(*(v0 + 200), &qword_27FD9E968, &qword_25F5EB878);
      }
    }

    else
    {
      v64 = v145;
      (v145)(*(v0 + 256), *(v0 + 200), *(v0 + 224));
    }

    sub_25F5E3524();

    sub_25F5E35F4();
    v65 = v55;
    v114 = *(v0 + 256);
    v115 = *(v0 + 264);
    v116 = *(v0 + 248);
    v118 = *(v0 + 224);
    v117 = *(v0 + 232);
    v119 = *(v0 + 208);
    sub_25F571820(v153, v65);
    v163 = *(v117 + 8);
    v163(v114, v118);
    sub_25F57C148(v119, &qword_27FD9E968, &qword_25F5EB878);
    (v64)(v115, v116, v118);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v120 = *(v0 + 264);
    v121 = *(v0 + 240);
    v122 = *(v0 + 224);
    v123 = sub_25F5E3FB4();
    __swift_project_value_buffer(v123, qword_27FD9EA20);
    v141(v121, v120, v122);
    v124 = sub_25F5E3F94();
    v125 = sub_25F5E4794();
    v126 = os_log_type_enabled(v124, v125);
    v127 = *(v0 + 288);
    v156 = *(v0 + 296);
    v129 = *(v0 + 272);
    v128 = *(v0 + 280);
    v130 = *(v0 + 264);
    v131 = *(v0 + 240);
    v132 = *(v0 + 224);
    if (v126)
    {
      v150 = *(v0 + 280);
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v164[0] = v134;
      *v133 = 136315138;
      v144 = v129;
      v147 = v127;
      v135 = sub_25F5E3544();
      v137 = v136;
      v163(v131, v132);
      v138 = sub_25F570AF8(v135, v137, v164);

      *(v133 + 4) = v138;
      _os_log_impl(&dword_25F56A000, v124, v125, "Saved generated image: %s", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v134);
      MEMORY[0x25F8E3B70](v134, -1, -1);
      MEMORY[0x25F8E3B70](v133, -1, -1);

      v163(v130, v132);
      v163(v144, v132);
      (*(v147 + 8))(v156, v150);
    }

    else
    {

      v163(v131, v132);
      v163(v130, v132);
      v163(v129, v132);
      (*(v127 + 8))(v156, v128);
    }

    v20 = v157;
    goto LABEL_9;
  }

  v48 = *(v0 + 344);
  v152 = *(v0 + 336);
  v155 = *(v0 + 360);
  v49 = *(v0 + 320);
  v146 = *(v0 + 312);
  v149 = *(v0 + 328);
  v50 = *(v0 + 288);
  v51 = *(v0 + 272);
  v142 = *(v0 + 280);
  v143 = *(v0 + 296);
  v53 = *(v0 + 224);
  v52 = *(v0 + 232);
  v54 = *(v0 + 208);

  sub_25F57C148(v54, &qword_27FD9E968, &qword_25F5EB878);
  (*(v52 + 8))(v51, v53);
  (*(v50 + 8))(v143, v142);
  (*(v49 + 8))(v149, v146);
  (*(v48 + 8))(v155, v152);

  *(v0 + 88) = v161;
  v66 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  if (swift_dynamicCast())
  {
    v67 = *(v0 + 160);
    v68 = *(v0 + 168);
    v69 = *(v0 + 136);
    v70 = *(v0 + 144);

    (*(v70 + 32))(v67, v68, v69);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v71 = *(v0 + 152);
    v72 = *(v0 + 160);
    v73 = *(v0 + 136);
    v74 = *(v0 + 144);
    v75 = sub_25F5E3FB4();
    __swift_project_value_buffer(v75, qword_27FD9EA20);
    v76 = *(v74 + 16);
    v76(v71, v72, v73);
    v77 = sub_25F5E3F94();
    v78 = sub_25F5E47B4();
    v79 = os_log_type_enabled(v77, v78);
    v81 = *(v0 + 144);
    v80 = *(v0 + 152);
    v82 = *(v0 + 136);
    if (v79)
    {
      v83 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *v83 = 138412290;
      sub_25F5DFE98();
      swift_allocError();
      v76(v84, v80, v82);
      v85 = _swift_stdlib_bridgeErrorToNSError();
      v162 = *(v81 + 8);
      v162(v80, v82);
      *(v83 + 4) = v85;
      *v160 = v85;
      _os_log_impl(&dword_25F56A000, v77, v78, "Failed to generate image, type=ImageCreator.Error, reason=%@", v83, 0xCu);
      sub_25F57C148(v160, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v160, -1, -1);
      MEMORY[0x25F8E3B70](v83, -1, -1);
    }

    else
    {

      v162 = *(v81 + 8);
      v162(v80, v82);
    }

    v105 = *(v0 + 400);
    v158 = *(v0 + 408);
    v107 = *(v0 + 384);
    v106 = *(v0 + 392);
    v109 = *(v0 + 368);
    v108 = *(v0 + 376);
    v110 = *(v0 + 160);
    v111 = *(v0 + 136);
    sub_25F5A2764();
    swift_allocError();
    sub_25F5E2E34(v110, v112);
    swift_willThrow();
    v162(v110, v111);
    (*(v108 + 8))(v107, v109);
    (*(v105 + 8))(v158, v106);
  }

  else
  {

    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v86 = sub_25F5E3FB4();
    __swift_project_value_buffer(v86, qword_27FD9EA20);
    v87 = v161;
    v88 = sub_25F5E3F94();
    v89 = sub_25F5E47B4();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v164[0] = v92;
      *v90 = 138412546;
      v93 = v161;
      v94 = _swift_stdlib_bridgeErrorToNSError();
      *(v90 + 4) = v94;
      *v91 = v94;
      *(v90 + 12) = 2080;
      swift_getErrorValue();
      swift_getDynamicType();
      v95 = sub_25F5E4D04();
      v97 = sub_25F570AF8(v95, v96, v164);

      *(v90 + 14) = v97;
      _os_log_impl(&dword_25F56A000, v88, v89, "Failed to generate image, reason=%@, type=%s", v90, 0x16u);
      sub_25F57C148(v91, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v91, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      MEMORY[0x25F8E3B70](v92, -1, -1);
      MEMORY[0x25F8E3B70](v90, -1, -1);
    }

    v99 = *(v0 + 400);
    v98 = *(v0 + 408);
    v101 = *(v0 + 384);
    v100 = *(v0 + 392);
    v102 = *(v0 + 368);
    v103 = *(v0 + 376);
    sub_25F5A2764();
    swift_allocError();
    *v104 = 8;
    swift_willThrow();

    (*(v103 + 8))(v101, v102);
    (*(v99 + 8))(v98, v100);
  }

  v113 = *(v0 + 8);

  return v113();
}

uint64_t sub_25F5DF5A8()
{
  v58 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 80);
  *(v0 + 88) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);

    (*(v9 + 32))(v7, v6, v8);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = sub_25F5E3FB4();
    __swift_project_value_buffer(v14, qword_27FD9EA20);
    v15 = *(v13 + 16);
    v15(v10, v11, v12);
    v16 = sub_25F5E3F94();
    v17 = sub_25F5E47B4();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 144);
    v19 = *(v0 + 152);
    v21 = *(v0 + 136);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v22 = 138412290;
      sub_25F5DFE98();
      swift_allocError();
      v15(v23, v19, v21);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v55 = *(v20 + 8);
      v55(v19, v21);
      *(v22 + 4) = v24;
      *v56 = v24;
      _os_log_impl(&dword_25F56A000, v16, v17, "Failed to generate image, type=ImageCreator.Error, reason=%@", v22, 0xCu);
      sub_25F57C148(v56, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v56, -1, -1);
      MEMORY[0x25F8E3B70](v22, -1, -1);
    }

    else
    {

      v55 = *(v20 + 8);
      v55(v19, v21);
    }

    v44 = *(v0 + 400);
    v54 = *(v0 + 408);
    v46 = *(v0 + 384);
    v45 = *(v0 + 392);
    v48 = *(v0 + 368);
    v47 = *(v0 + 376);
    v49 = *(v0 + 160);
    v50 = *(v0 + 136);
    sub_25F5A2764();
    swift_allocError();
    sub_25F5E2E34(v49, v51);
    swift_willThrow();
    v55(v49, v50);
    (*(v47 + 8))(v46, v48);
    (*(v44 + 8))(v54, v45);
  }

  else
  {

    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v25 = sub_25F5E3FB4();
    __swift_project_value_buffer(v25, qword_27FD9EA20);
    v26 = v4;
    v27 = sub_25F5E3F94();
    v28 = sub_25F5E47B4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v57 = v31;
      *v29 = 138412546;
      v32 = v4;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v33;
      *v30 = v33;
      *(v29 + 12) = 2080;
      swift_getErrorValue();
      swift_getDynamicType();
      v34 = sub_25F5E4D04();
      v36 = sub_25F570AF8(v34, v35, &v57);

      *(v29 + 14) = v36;
      _os_log_impl(&dword_25F56A000, v27, v28, "Failed to generate image, reason=%@, type=%s", v29, 0x16u);
      sub_25F57C148(v30, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x25F8E3B70](v31, -1, -1);
      MEMORY[0x25F8E3B70](v29, -1, -1);
    }

    v37 = *(v0 + 400);
    v38 = *(v0 + 408);
    v40 = *(v0 + 384);
    v39 = *(v0 + 392);
    v41 = *(v0 + 368);
    v42 = *(v0 + 376);
    sub_25F5A2764();
    swift_allocError();
    *v43 = 8;
    swift_willThrow();

    (*(v42 + 8))(v40, v41);
    (*(v37 + 8))(v38, v39);
  }

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_25F5DFC18()
{

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL24ImagePlaygroundInference_debugDirectory, &qword_27FD9E968, &qword_25F5EB878);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImagePlaygroundInference(uint64_t a1)
{
  result = qword_27FD9E950;
  if (!qword_27FD9E950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F5DFCE8(uint64_t a1)
{
  sub_25F5DFD90(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25F5DFD90(uint64_t a1)
{
  if (!qword_27FD9E960)
  {
    sub_25F5E3554();
    v1 = sub_25F5E47F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD9E960);
    }
  }
}

uint64_t sub_25F5DFDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F575BD4;

  return sub_25F5DDCEC(a1, a2, a3);
}

unint64_t sub_25F5DFE98()
{
  result = qword_27FD9E990;
  if (!qword_27FD9E990)
  {
    sub_25F5E3904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E990);
  }

  return result;
}

uint64_t sub_25F5DFEF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E968, &qword_25F5EB878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F5DFF60()
{
  result = qword_27FD9E998;
  if (!qword_27FD9E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E998);
  }

  return result;
}

unint64_t sub_25F5DFFB4()
{
  result = qword_27FD9E9A0;
  if (!qword_27FD9E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9A0);
  }

  return result;
}

uint64_t sub_25F5E0008(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574656D61726150;
  }

  else
  {
    v3 = 0x79546769666E6F43;
  }

  if (v2)
  {
    v4 = 0xEA00000000006570;
  }

  else
  {
    v4 = 0xEA00000000007372;
  }

  if (*a2)
  {
    v5 = 0x6574656D61726150;
  }

  else
  {
    v5 = 0x79546769666E6F43;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007372;
  }

  else
  {
    v6 = 0xEA00000000006570;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F5E4B84();
  }

  return v8 & 1;
}

uint64_t sub_25F5E00B4()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5E013C(uint64_t a1)
{
  sub_25F5E4334();
}

uint64_t sub_25F5E01B0()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5E0234@<X0>(char *a2@<X8>)
{
  v3 = sub_25F5E4A14();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25F5E0294(uint64_t *a1@<X8>)
{
  v2 = 0x79546769666E6F43;
  if (*v1)
  {
    v2 = 0x6574656D61726150;
  }

  v3 = 0xEA00000000006570;
  if (*v1)
  {
    v3 = 0xEA00000000007372;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F5E02D8()
{
  if (*v0)
  {
    return 0x6574656D61726150;
  }

  else
  {
    return 0x79546769666E6F43;
  }
}

uint64_t sub_25F5E0318@<X0>(char *a3@<X8>)
{
  v4 = sub_25F5E4A14();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25F5E037C(uint64_t a1)
{
  v2 = sub_25F5E0D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5E03B8(uint64_t a1)
{
  v2 = sub_25F5E0D70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F5E0400()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5E0500(uint64_t a1)
{
  sub_25F5E4334();
}

uint64_t sub_25F5E05EC()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

unint64_t sub_25F5E06E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F5E2BF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F5E0718(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x676E6967676154;
  v5 = 0xEE006E6F6974656CLL;
  v6 = 0x706D6F4374786554;
  v7 = 0xEF6E6F6974617265;
  v8 = 0x6E65476567616D49;
  if (v2 != 3)
  {
    v8 = 0xD000000000000014;
    v7 = 0x800000025F5EC0C0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7375656870726F4DLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t DataProcessingStepConfig.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E9A8, &qword_25F5EB8A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v21 - v8;
  v10 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v10);
  sub_25F5E0D70();
  sub_25F5E4C74();
  if (!v2)
  {
    v54 = 0;
    sub_25F5E0DC4();
    sub_25F5E4AD4();
    if (v55 <= 1u)
    {
      v31 = 1;
      if (v55)
      {
        sub_25F5E0F38();
        sub_25F5E4AD4();
        (*(v6 + 8))(v9, v5);
        v32[0] = v21[0];
        v32[1] = v21[1];
        LOWORD(v33) = v22;
        sub_25F5DC3B4(v32);
      }

      else
      {
        sub_25F5E0F8C();
        sub_25F5E4AD4();
        (*(v6 + 8))(v9, v5);
        v39[0] = v28[0];
        v39[1] = v28[1];
        v40 = v29;
        LOWORD(v41[0]) = *v30;
        v35 = v24;
        v36 = v25;
        v37 = v26;
        v38 = v27;
        v32[0] = v21[0];
        v32[1] = v21[1];
        v33 = v22;
        v34 = v23;
        sub_25F5DC3D8(v32);
      }

      v52 = v40;
      *v53 = v41[0];
      v12 = *(v41 + 9);
    }

    else
    {
      if (v55 == 2)
      {
        v31 = 1;
        sub_25F5E0EE4();
        sub_25F5E4AD4();
        (*(v6 + 8))(v9, v5);
        v37 = v26;
        v38 = v27;
        v39[0] = v28[0];
        *(v39 + 9) = *(v28 + 9);
        v33 = v22;
        v34 = v23;
        v35 = v24;
        v36 = v25;
        v32[0] = v21[0];
        v32[1] = v21[1];
        sub_25F5DC390(v32);
      }

      else
      {
        if (v55 != 3)
        {
          v31 = 1;
          sub_25F5E0E18();
          sub_25F5E4AD4();
          (*(v6 + 8))(v9, v5);
          v29 = v40;
          *v30 = v41[0];
          *&v30[9] = *(v41 + 9);
          v26 = v37;
          v27 = v38;
          v28[0] = v39[0];
          v28[1] = v39[1];
          v22 = v33;
          v23 = v34;
          v24 = v35;
          v25 = v36;
          v21[0] = v32[0];
          v21[1] = v32[1];
          sub_25F5DC36C(v21);
          v52 = v29;
          *v53 = *v30;
          *&v53[9] = *&v30[9];
          v48 = v26;
          v49 = v27;
          v50 = v28[0];
          v51 = v28[1];
          v44 = v22;
          v45 = v23;
          v46 = v24;
          v47 = v25;
          v20 = v21[0];
          v19 = v21[1];
LABEL_16:
          v42 = v20;
          v43 = v19;
          v13 = *v53;
          a2[10] = v52;
          a2[11] = v13;
          *(a2 + 185) = *&v53[9];
          v14 = v49;
          a2[6] = v48;
          a2[7] = v14;
          v15 = v51;
          a2[8] = v50;
          a2[9] = v15;
          v16 = v45;
          a2[2] = v44;
          a2[3] = v16;
          v17 = v47;
          a2[4] = v46;
          a2[5] = v17;
          v18 = v43;
          *a2 = v42;
          a2[1] = v18;
          return __swift_destroy_boxed_opaque_existential_1Tm(v56);
        }

        v31 = 1;
        sub_25F5E0E6C();
        sub_25F5E4AD4();
        (*(v6 + 8))(v9, v5);
        *&v32[0] = *&v21[0];
        *(v32 + 8) = *(v21 + 8);
        WORD4(v32[1]) = WORD4(v21[1]);
        BYTE10(v32[1]) = BYTE10(v21[1]);
        sub_25F5E0EC0(v32);
      }

      v52 = v40;
      *v53 = v41[0];
      v12 = *(v41 + 9);
    }

    *&v53[9] = v12;
    v48 = v37;
    v49 = v38;
    v50 = v39[0];
    v51 = v39[1];
    v44 = v33;
    v45 = v34;
    v46 = v35;
    v47 = v36;
    v20 = v32[0];
    v19 = v32[1];
    goto LABEL_16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v56);
}

unint64_t sub_25F5E0D70()
{
  result = qword_27FD9E9B0;
  if (!qword_27FD9E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9B0);
  }

  return result;
}

unint64_t sub_25F5E0DC4()
{
  result = qword_27FD9E9B8;
  if (!qword_27FD9E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9B8);
  }

  return result;
}

unint64_t sub_25F5E0E18()
{
  result = qword_27FD9E9C0;
  if (!qword_27FD9E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9C0);
  }

  return result;
}

unint64_t sub_25F5E0E6C()
{
  result = qword_27FD9E9C8;
  if (!qword_27FD9E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9C8);
  }

  return result;
}

uint64_t sub_25F5E0EC0(uint64_t result)
{
  v1 = *(result + 200);
  *(result + 176) &= 0x101uLL;
  *(result + 200) = v1 & 1 | 0x60;
  return result;
}

unint64_t sub_25F5E0EE4()
{
  result = qword_27FD9E9D0;
  if (!qword_27FD9E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9D0);
  }

  return result;
}

unint64_t sub_25F5E0F38()
{
  result = qword_27FD9E9D8;
  if (!qword_27FD9E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9D8);
  }

  return result;
}

unint64_t sub_25F5E0F8C()
{
  result = qword_27FD9E9E0;
  if (!qword_27FD9E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9E0);
  }

  return result;
}

uint64_t sub_25F5E0FE0(uint64_t a1)
{
  *(v2 + 2776) = v1;
  *(v2 + 2768) = a1;
  v3 = v1[11];
  *(v2 + 632) = v1[10];
  *(v2 + 648) = v3;
  *(v2 + 657) = *(v1 + 185);
  v4 = v1[7];
  *(v2 + 568) = v1[6];
  *(v2 + 584) = v4;
  v5 = v1[9];
  *(v2 + 600) = v1[8];
  *(v2 + 616) = v5;
  v6 = v1[3];
  *(v2 + 504) = v1[2];
  *(v2 + 520) = v6;
  v7 = v1[5];
  *(v2 + 536) = v1[4];
  *(v2 + 552) = v7;
  v8 = v1[1];
  *(v2 + 472) = *v1;
  *(v2 + 488) = v8;
  return MEMORY[0x2822009F8](sub_25F5E1040, 0, 0);
}

uint64_t sub_25F5E1040()
{
  v120 = v0;
  v1 = (v0 + 472);
  v2 = *(v0 + 2776);
  *(v0 + 264) = *v2;
  v3 = v2[4];
  v5 = v2[1];
  v4 = v2[2];
  *(v0 + 312) = v2[3];
  *(v0 + 328) = v3;
  *(v0 + 280) = v5;
  *(v0 + 296) = v4;
  v6 = v2[8];
  v8 = v2[5];
  v7 = v2[6];
  *(v0 + 376) = v2[7];
  *(v0 + 392) = v6;
  *(v0 + 344) = v8;
  *(v0 + 360) = v7;
  v10 = v2[10];
  v9 = v2[11];
  v11 = v2[9];
  *(v0 + 449) = *(v2 + 185);
  *(v0 + 424) = v10;
  *(v0 + 440) = v9;
  *(v0 + 408) = v11;
  v12 = sub_25F5A9C48(v0 + 264);
  if (v12 <= 1)
  {
    v25 = *(v0 + 2768);
    if (v12)
    {
      v78 = sub_25F5A9C54(v0 + 264);
      v79 = *(v78 + 16);
      v80 = *(v78 + 24);
      v81 = *(v78 + 32);
      v82 = *(v78 + 33);
      v83 = swift_allocObject();
      v84 = *v78;
      v25[3] = &type metadata for PerSampleMorpheusStep;
      v25[4] = &off_287195448;
      *v25 = v83;
      *(v83 + 16) = v84;
      *(v83 + 32) = v79;
      *(v83 + 40) = v80;
      *(v83 + 48) = v81;
      *(v83 + 49) = v82;
      v85 = *(v0 + 520);
      *(v0 + 1544) = *(v0 + 504);
      *(v0 + 1560) = v85;
      v86 = *(v0 + 488);
      *(v0 + 1512) = *v1;
      *(v0 + 1528) = v86;
      v87 = *(v0 + 584);
      *(v0 + 1608) = *(v0 + 568);
      *(v0 + 1624) = v87;
      v88 = *(v0 + 552);
      *(v0 + 1576) = *(v0 + 536);
      *(v0 + 1592) = v88;
      *(v0 + 1697) = *(v0 + 657);
      v89 = *(v0 + 648);
      *(v0 + 1672) = *(v0 + 632);
      *(v0 + 1688) = v89;
      v90 = *(v0 + 616);
      *(v0 + 1640) = *(v0 + 600);
      *(v0 + 1656) = v90;
      v91 = sub_25F5A9C54(v0 + 1512);
      v92 = *(v91 + 16);
      v93 = *(v91 + 24);

      sub_25F57423C(v92, v93);
    }

    else
    {
      v26 = sub_25F5A9C54(v0 + 264);
      v25[3] = &type metadata for TaggingStep;
      v25[4] = &protocol witness table for TaggingStep;
      v27 = swift_allocObject();
      *v25 = v27;
      *(v27 + 200) = 0u;
      *(v27 + 216) = 0u;
      *(v27 + 232) = 0;
      v28 = *(v26 + 48);
      v29 = *v26;
      v30 = *(v26 + 16);
      *(v27 + 48) = *(v26 + 32);
      *(v27 + 64) = v28;
      *(v27 + 16) = v29;
      *(v27 + 32) = v30;
      v31 = *(v26 + 112);
      v32 = *(v26 + 64);
      v33 = *(v26 + 80);
      *(v27 + 112) = *(v26 + 96);
      *(v27 + 128) = v31;
      *(v27 + 80) = v32;
      *(v27 + 96) = v33;
      v35 = *(v26 + 144);
      v34 = *(v26 + 160);
      v36 = *(v26 + 128);
      *(v27 + 192) = *(v26 + 176);
      *(v27 + 160) = v35;
      *(v27 + 176) = v34;
      *(v27 + 144) = v36;
      v37 = *(v0 + 520);
      *(v0 + 1752) = *(v0 + 504);
      *(v0 + 1768) = v37;
      v38 = *(v0 + 488);
      *(v0 + 1720) = *v1;
      *(v0 + 1736) = v38;
      v39 = *(v0 + 584);
      *(v0 + 1816) = *(v0 + 568);
      *(v0 + 1832) = v39;
      v40 = *(v0 + 552);
      *(v0 + 1784) = *(v0 + 536);
      *(v0 + 1800) = v40;
      *(v0 + 1905) = *(v0 + 657);
      v41 = *(v0 + 648);
      *(v0 + 1880) = *(v0 + 632);
      *(v0 + 1896) = v41;
      v42 = *(v0 + 616);
      *(v0 + 1848) = *(v0 + 600);
      *(v0 + 1864) = v42;
      v43 = sub_25F5A9C54(v0 + 1720);
      sub_25F5768F0(v43, v0 + 2128);
    }
  }

  else if (v12 == 2)
  {
    v44 = *(v0 + 2768);
    v45 = sub_25F5A9C54(v0 + 264);
    v44[3] = &type metadata for TextCompletionStep;
    v44[4] = &protocol witness table for TextCompletionStep;
    v46 = swift_allocObject();
    *v44 = v46;
    v47 = v45[1];
    *(v0 + 1928) = *v45;
    *(v0 + 1944) = v47;
    v48 = v45[5];
    v50 = v45[2];
    v49 = v45[3];
    *(v0 + 1992) = v45[4];
    *(v0 + 2008) = v48;
    *(v0 + 1960) = v50;
    *(v0 + 1976) = v49;
    v52 = v45[7];
    v51 = v45[8];
    v53 = v45[6];
    *(v0 + 2065) = *(v45 + 137);
    *(v0 + 2040) = v52;
    *(v0 + 2056) = v51;
    *(v0 + 2024) = v53;
    swift_beginAccess();
    v54 = off_281E8DB80;
    v55 = v45[7];
    v115 = v45[6];
    v116 = v55;
    *v117 = v45[8];
    *&v117[9] = *(v45 + 137);
    v56 = v45[3];
    v111 = v45[2];
    v112 = v56;
    v57 = v45[5];
    v113 = v45[4];
    v114 = v57;
    v58 = v45[1];
    v109 = *v45;
    v110 = v58;
    sub_25F5E2784(v0 + 472, v0 + 1304);

    (v54)(&v109);

    sub_25F573A2C((v0 + 2624), v0 + 2088);
    v94 = *(v0 + 2104);
    *(v46 + 176) = *(v0 + 2088);
    *(v46 + 192) = v94;
    *(v46 + 208) = *(v0 + 2120);
    v95 = *(v0 + 2040);
    *(v46 + 112) = *(v0 + 2024);
    *(v46 + 128) = v95;
    v96 = *(v0 + 2072);
    *(v46 + 144) = *(v0 + 2056);
    *(v46 + 160) = v96;
    v97 = *(v0 + 1976);
    *(v46 + 48) = *(v0 + 1960);
    *(v46 + 64) = v97;
    v98 = *(v0 + 2008);
    *(v46 + 80) = *(v0 + 1992);
    *(v46 + 96) = v98;
    v99 = *(v0 + 1944);
    *(v46 + 16) = *(v0 + 1928);
    *(v46 + 32) = v99;
  }

  else
  {
    if (v12 == 3)
    {
      v13 = *(v0 + 2768);
      v14 = sub_25F5A9C54(v0 + 264);
      v15 = *v14;
      v16 = *(v14 + 8);
      *(v0 + 2784) = v16;
      v17 = *(v14 + 16);
      *(v0 + 2792) = v17;
      v18 = *(v14 + 24);
      v19 = *(v14 + 25);
      v20 = *(v14 + 26);
      v13[3] = &type metadata for ImageGenerationStep;
      v13[4] = &protocol witness table for ImageGenerationStep;
      v21 = swift_allocObject();
      *(v0 + 2800) = v21;
      *v13 = v21;
      *(v0 + 2472) = v15;
      *(v0 + 2480) = v16;
      *(v0 + 2488) = v17;
      *(v0 + 2496) = v18;
      *(v0 + 2497) = v19;
      *(v0 + 2498) = v20;
      swift_beginAccess();
      v22 = off_281E8DB90;
      *(v0 + 2808) = qword_281E8DB98;
      *(v0 + 2664) = v15;
      *(v0 + 2672) = v16;
      *(v0 + 2680) = v17;
      *(v0 + 2688) = v18;
      *(v0 + 2689) = v19;
      *(v0 + 2690) = v20;
      sub_25F5E2784(v0 + 472, v0 + 1096);

      v108 = (v22 + *v22);
      v23 = swift_task_alloc();
      *(v0 + 2816) = v23;
      *v23 = v0;
      v23[1] = sub_25F5E17CC;

      return (v108)(v0 + 2584, v0 + 2664);
    }

    v59 = *(v0 + 2768);
    v60 = sub_25F5A9C54(v0 + 264);
    v59[3] = &type metadata for MultiModalCompletionStep;
    v59[4] = &protocol witness table for MultiModalCompletionStep;
    v61 = swift_allocObject();
    *v59 = v61;
    *(v0 + 16) = *v60;
    v62 = v60[4];
    v64 = v60[1];
    v63 = v60[2];
    *(v0 + 64) = v60[3];
    *(v0 + 80) = v62;
    *(v0 + 32) = v64;
    *(v0 + 48) = v63;
    v65 = v60[8];
    v67 = v60[5];
    v66 = v60[6];
    *(v0 + 128) = v60[7];
    *(v0 + 144) = v65;
    *(v0 + 96) = v67;
    *(v0 + 112) = v66;
    v69 = v60[10];
    v68 = v60[11];
    v70 = v60[9];
    *(v0 + 201) = *(v60 + 185);
    *(v0 + 176) = v69;
    *(v0 + 192) = v68;
    *(v0 + 160) = v70;
    swift_beginAccess();
    v71 = off_281E8E2A8;
    v72 = v60[11];
    v118 = v60[10];
    v119[0] = v72;
    *(v119 + 9) = *(v60 + 185);
    v73 = v60[7];
    v115 = v60[6];
    v116 = v73;
    v74 = v60[9];
    *v117 = v60[8];
    *&v117[16] = v74;
    v75 = v60[3];
    v111 = v60[2];
    v112 = v75;
    v76 = v60[5];
    v113 = v60[4];
    v114 = v76;
    v77 = v60[1];
    v109 = *v60;
    v110 = v77;
    sub_25F5E2784(v0 + 472, v0 + 680);

    (v71)(&v109);

    sub_25F573A2C((v0 + 2544), v0 + 224);
    v100 = *(v0 + 224);
    *(v61 + 208) = *(v0 + 208);
    *(v61 + 224) = v100;
    *(v61 + 240) = *(v0 + 240);
    *(v61 + 256) = *(v0 + 256);
    v101 = *(v0 + 160);
    *(v61 + 144) = *(v0 + 144);
    *(v61 + 160) = v101;
    v102 = *(v0 + 192);
    *(v61 + 176) = *(v0 + 176);
    *(v61 + 192) = v102;
    v103 = *(v0 + 96);
    *(v61 + 80) = *(v0 + 80);
    *(v61 + 96) = v103;
    v104 = *(v0 + 128);
    *(v61 + 112) = *(v0 + 112);
    *(v61 + 128) = v104;
    v105 = *(v0 + 32);
    *(v61 + 16) = *(v0 + 16);
    *(v61 + 32) = v105;
    v106 = *(v0 + 64);
    *(v61 + 48) = *(v0 + 48);
    *(v61 + 64) = v106;
  }

  v107 = *(v0 + 8);

  return v107();
}

uint64_t sub_25F5E17CC()
{
  *(*v1 + 2824) = v0;

  if (v0)
  {
    v2 = sub_25F5E1980;
  }

  else
  {
    v2 = sub_25F5E18F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F5E18F0()
{
  v1 = *(v0 + 2800);
  sub_25F573A2C((v0 + 2584), v0 + 2504);
  *(v1 + 16) = *(v0 + 2472);
  v3 = *(v0 + 2504);
  v2 = *(v0 + 2520);
  v4 = *(v0 + 2488);
  *(v1 + 80) = *(v0 + 2536);
  *(v1 + 48) = v3;
  *(v1 + 64) = v2;
  *(v1 + 32) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25F5E1980()
{
  v1 = *(v0 + 2768);

  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t runPipeline(stepsConfigs:initial:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 864) = a2;
  *(v2 + 856) = a1;
  return MEMORY[0x2822009F8](sub_25F5E1A38, 0, 0);
}

uint64_t sub_25F5E1A38()
{
  v1 = *(v0 + 856);
  v2 = *(v1 + 16);
  *(v0 + 872) = v2;
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    *(v0 + 888) = 0;
    *(v0 + 880) = v3;
    *(v0 + 16) = *(v1 + 32);
    v4 = *(v1 + 48);
    v5 = *(v1 + 64);
    v6 = *(v1 + 96);
    *(v0 + 64) = *(v1 + 80);
    *(v0 + 80) = v6;
    *(v0 + 32) = v4;
    *(v0 + 48) = v5;
    v7 = *(v1 + 112);
    v8 = *(v1 + 128);
    v9 = *(v1 + 160);
    *(v0 + 128) = *(v1 + 144);
    *(v0 + 144) = v9;
    *(v0 + 96) = v7;
    *(v0 + 112) = v8;
    v10 = *(v1 + 176);
    v11 = *(v1 + 192);
    v12 = *(v1 + 208);
    *(v0 + 201) = *(v1 + 217);
    *(v0 + 176) = v11;
    *(v0 + 192) = v12;
    *(v0 + 160) = v10;
    *(v0 + 224) = *(v1 + 32);
    v13 = *(v1 + 48);
    v14 = *(v1 + 64);
    v15 = *(v1 + 96);
    *(v0 + 272) = *(v1 + 80);
    *(v0 + 288) = v15;
    *(v0 + 240) = v13;
    *(v0 + 256) = v14;
    v16 = *(v1 + 112);
    v17 = *(v1 + 128);
    v18 = *(v1 + 160);
    *(v0 + 336) = *(v1 + 144);
    *(v0 + 352) = v18;
    *(v0 + 304) = v16;
    *(v0 + 320) = v17;
    v19 = *(v1 + 176);
    v20 = *(v1 + 192);
    v21 = *(v1 + 208);
    *(v0 + 409) = *(v1 + 217);
    *(v0 + 384) = v20;
    *(v0 + 400) = v21;
    *(v0 + 368) = v19;
    sub_25F5E2784(v0 + 16, v0 + 432);
    v22 = swift_task_alloc();
    *(v0 + 896) = v22;
    *v22 = v0;
    v22[1] = sub_25F5E1D58;

    return sub_25F5E0FE0(v0 + 736);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
    *(v0 + 912) = MEMORY[0x277D84F90];
    v25 = *(v0 + 864);
    v26 = *(v24 + 16);
    *(v0 + 920) = v26;
    *(v0 + 928) = v25;

    if (v26)
    {
      *(v0 + 688) = 0;
      sub_25F57C0E4(v24 + 32, v0 + 696);
      v27 = *(v0 + 688);
      v28 = *(v0 + 704);
      v29 = 1;
      v30 = *(v0 + 720);
    }

    else
    {
      v29 = 0;
      v27 = 0uLL;
      v28 = 0uLL;
      v30 = 0uLL;
    }

    *(v0 + 944) = v29;
    *(v0 + 936) = v27;
    *(v0 + 640) = v27;
    *(v0 + 656) = v28;
    *(v0 + 672) = v30;
    if (v30)
    {
      sub_25F573A2C((v0 + 648), v0 + 816);
      v31 = *(v0 + 840);
      v32 = *(v0 + 848);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 816), v31);
      v35 = (*(v32 + 8) + **(v32 + 8));
      v33 = swift_task_alloc();
      *(v0 + 952) = v33;
      *v33 = v0;
      v33[1] = sub_25F5E2254;

      return v35(v25, v31, v32);
    }

    else
    {

      v34 = *(v0 + 8);

      return v34(v25);
    }
  }
}

uint64_t sub_25F5E1D58()
{
  v2 = *v1;
  *(*v1 + 904) = v0;

  if (v0)
  {

    v3 = sub_25F5E26BC;
  }

  else
  {
    sub_25F5DC318(v2 + 16);
    v3 = sub_25F5E1E7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F5E1E7C()
{
  sub_25F57C0E4(v0 + 736, v0 + 776);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 880);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_25F578EE8(0, v2[2] + 1, 1, *(v0 + 880));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_25F578EE8((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 872);
  v6 = *(v0 + 888) + 1;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 736));
  v2[2] = v4 + 1;
  sub_25F573A2C((v0 + 776), &v2[5 * v4 + 4]);
  if (v6 == v5)
  {
    *(v0 + 912) = v2;
    v7 = *(v0 + 864);
    v8 = v2[2];
    *(v0 + 920) = v8;
    *(v0 + 928) = v7;

    if (v8)
    {
      if (!v2[2])
      {
        __break(1u);
        return result;
      }

      *(v0 + 688) = 0;
      sub_25F57C0E4((v2 + 4), v0 + 696);
      v10 = *(v0 + 688);
      v11 = *(v0 + 704);
      v12 = 1;
      v13 = *(v0 + 720);
    }

    else
    {
      v12 = 0;
      v10 = 0uLL;
      v11 = 0uLL;
      v13 = 0uLL;
    }

    *(v0 + 944) = v12;
    *(v0 + 936) = v10;
    *(v0 + 640) = v10;
    *(v0 + 656) = v11;
    *(v0 + 672) = v13;
    if (v13)
    {
      sub_25F573A2C((v0 + 648), v0 + 816);
      v35 = *(v0 + 840);
      v36 = *(v0 + 848);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 816), v35);
      v39 = (*(v36 + 8) + **(v36 + 8));
      v37 = swift_task_alloc();
      *(v0 + 952) = v37;
      *v37 = v0;
      v37[1] = sub_25F5E2254;

      return v39(v7, v35, v36);
    }

    else
    {

      v38 = *(v0 + 8);

      return v38(v7);
    }
  }

  else
  {
    v14 = *(v0 + 888);
    *(v0 + 888) = v14 + 1;
    *(v0 + 880) = v2;
    v15 = (*(v0 + 856) + 208 * v14);
    *(v0 + 16) = v15[15];
    v16 = v15[19];
    v18 = v15[16];
    v17 = v15[17];
    *(v0 + 64) = v15[18];
    *(v0 + 80) = v16;
    *(v0 + 32) = v18;
    *(v0 + 48) = v17;
    v19 = v15[23];
    v21 = v15[20];
    v20 = v15[21];
    *(v0 + 128) = v15[22];
    *(v0 + 144) = v19;
    *(v0 + 96) = v21;
    *(v0 + 112) = v20;
    v23 = v15[25];
    v22 = v15[26];
    v24 = v15[24];
    *(v0 + 201) = *(v15 + 425);
    *(v0 + 176) = v23;
    *(v0 + 192) = v22;
    *(v0 + 160) = v24;
    *(v0 + 224) = v15[15];
    v25 = v15[16];
    v26 = v15[17];
    v27 = v15[19];
    *(v0 + 272) = v15[18];
    *(v0 + 288) = v27;
    *(v0 + 240) = v25;
    *(v0 + 256) = v26;
    v28 = v15[20];
    v29 = v15[21];
    v30 = v15[23];
    *(v0 + 336) = v15[22];
    *(v0 + 352) = v30;
    *(v0 + 304) = v28;
    *(v0 + 320) = v29;
    v31 = v15[24];
    v32 = v15[25];
    v33 = v15[26];
    *(v0 + 409) = *(v15 + 425);
    *(v0 + 384) = v32;
    *(v0 + 400) = v33;
    *(v0 + 368) = v31;
    sub_25F5E2784(v0 + 16, v0 + 432);
    v34 = swift_task_alloc();
    *(v0 + 896) = v34;
    *v34 = v0;
    v34[1] = sub_25F5E1D58;

    return sub_25F5E0FE0(v0 + 736);
  }
}

uint64_t sub_25F5E2254(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 960) = a1;
  *(v3 + 968) = v1;

  if (v1)
  {

    v4 = sub_25F5E2720;
  }

  else
  {
    v4 = sub_25F5E23A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F5E23A4()
{
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v1 = sub_25F5E3FB4();
  __swift_project_value_buffer(v1, qword_27FD9EA20);

  v2 = sub_25F5E3F94();
  v3 = sub_25F5E4794();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 936);
    result = swift_slowAlloc();
    *result = 134218240;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v6 = *(v0 + 912);
    *(result + 4) = v4 + 1;
    *(result + 12) = 2048;
    *(result + 14) = *(v6 + 16);
    v7 = result;

    _os_log_impl(&dword_25F56A000, v2, v3, "Completed data processing step %ld/%ld", v7, 0x16u);
    MEMORY[0x25F8E3B70](v7, -1, -1);
  }

  else
  {
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 816));
  v8 = *(v0 + 960);
  v9 = *(v0 + 944);
  *(v0 + 928) = v8;
  v10 = 0uLL;
  if (v9 == *(v0 + 920))
  {
    v11 = 0uLL;
    v12 = 0uLL;
    goto LABEL_11;
  }

  v13 = *(v0 + 912);
  if (v9 >= *(v13 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v14 = v9 + 1;
  *(v0 + 688) = v9;
  sub_25F57C0E4(v13 + 40 * v9 + 32, v0 + 696);
  v10 = *(v0 + 688);
  v11 = *(v0 + 704);
  v9 = v14;
  v12 = *(v0 + 720);
LABEL_11:
  *(v0 + 944) = v9;
  *(v0 + 936) = v10;
  *(v0 + 640) = v10;
  *(v0 + 656) = v11;
  *(v0 + 672) = v12;
  if (v12)
  {
    sub_25F573A2C((v0 + 648), v0 + 816);
    v15 = *(v0 + 840);
    v16 = *(v0 + 848);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 816), v15);
    v19 = (*(v16 + 8) + **(v16 + 8));
    v17 = swift_task_alloc();
    *(v0 + 952) = v17;
    *v17 = v0;
    v17[1] = sub_25F5E2254;

    return v19(v8, v15, v16);
  }

  else
  {

    v18 = *(v0 + 8);

    return v18(v8);
  }
}

uint64_t sub_25F5E26BC()
{
  sub_25F5DC318(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F5E2720()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 816));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of DataProcessingStep.process(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F57E6F8;

  return v9(a1, a2, a3);
}

uint64_t sub_25F5E28F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 176) >> 2) & 0xFFFFFF80 | (*(a1 + 176) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_25F5E2944(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 200) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 201) = 1;
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
      result = 0.0;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 184) = 0;
      *(a1 + 192) = 0;
      *(a1 + 176) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 200) = 0;
      return result;
    }

    *(a1 + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F5E29E8(uint64_t result, char a2)
{
  v2 = *(result + 200) & 1 | (32 * a2);
  *(result + 176) &= 0x101uLL;
  *(result + 200) = v2;
  return result;
}

unint64_t sub_25F5E2A40()
{
  result = qword_27FD9E9E8;
  if (!qword_27FD9E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9E8);
  }

  return result;
}

unint64_t sub_25F5E2A98()
{
  result = qword_27FD9E9F0;
  if (!qword_27FD9E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9F0);
  }

  return result;
}

unint64_t sub_25F5E2AF0()
{
  result = qword_27FD9E9F8;
  if (!qword_27FD9E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E9F8);
  }

  return result;
}

unint64_t sub_25F5E2B48()
{
  result = qword_27FD9EA00;
  if (!qword_27FD9EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9EA00);
  }

  return result;
}

unint64_t sub_25F5E2B9C()
{
  result = qword_27FD9EA08;
  if (!qword_27FD9EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9EA08);
  }

  return result;
}

unint64_t sub_25F5E2BF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F5E4A14();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F5E2C3C()
{

  sub_25F581A78(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 224));

  return MEMORY[0x2821FE8E8](v0, 264, 7);
}

uint64_t sub_25F5E2CB8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_25F5E2D00()
{

  sub_25F581A78(*(v0 + 72), *(v0 + 80), *(v0 + 88));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t sub_25F5E2D6C()
{

  sub_25F5741E0(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_25F5E2DB8()
{

  sub_25F581A78(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  if (*(v0 + 224))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
  }

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t sub_25F5E2E34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_25F5E3904();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x277CD3740])
  {
    *a2 = 1;
  }

  else if (result == *MEMORY[0x277CD3738])
  {
    *a2 = 2;
  }

  else if (result == *MEMORY[0x277CD3750])
  {
    *a2 = 3;
  }

  else if (result == *MEMORY[0x277CD3730])
  {
    *a2 = 4;
  }

  else if (result == *MEMORY[0x277CD3758])
  {
    *a2 = 5;
  }

  else if (result == *MEMORY[0x277CD3728])
  {
    *a2 = 6;
  }

  else if (result == *MEMORY[0x277CD3760])
  {
    *a2 = 7;
  }

  else if (result == *MEMORY[0x277CD3748])
  {
    *a2 = 8;
  }

  else if (result == *MEMORY[0x277CD3768])
  {
    *a2 = 9;
  }

  else
  {
    *a2 = 10;
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

PriMLETL::PriMLETLError_optional __swiftcall PriMLETLError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 121;
  if ((rawValue - 20601) >= 0xB)
  {
    v2 = 11;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_25F5E3090()
{
  result = qword_27FD9EA10;
  if (!qword_27FD9EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9EA10);
  }

  return result;
}

uint64_t sub_25F5E30E4()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20601);
  return sub_25F5E4C54();
}

uint64_t sub_25F5E3164()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20601);
  return sub_25F5E4C54();
}

uint64_t sub_25F5E31C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5E3370();
  v5 = sub_25F5739D8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for PriMLETLError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PriMLETLError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F5E3370()
{
  result = qword_27FD9EA18;
  if (!qword_27FD9EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9EA18);
  }

  return result;
}