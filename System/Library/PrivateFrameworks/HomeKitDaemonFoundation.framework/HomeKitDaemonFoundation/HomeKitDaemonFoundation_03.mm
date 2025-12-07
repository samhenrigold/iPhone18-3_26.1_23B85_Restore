uint64_t sub_2531A2918@<X0>(void *a1@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = v5;
  v8 = v4;
  v9 = v6;
  if (v6 != 255)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  if (v9 >= *(v10 + 16))
  {
    goto LABEL_15;
  }

  if (v9 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = v10 + 24 * v9;
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  v14 = *(v11 + 48);
  *(v1 + 32) = v12;
  *(v1 + 40) = v13;
  *(v1 + 48) = v14;
  sub_25316D004(v12, v13, v14);
  result = sub_253170AB0(v5, v4, 0xFFu);
  v9 = *(v1 + 48);
  if (v9 != 255)
  {
    v7 = *(v1 + 32);
    v8 = *(v1 + 40);
    sub_25316D004(v7, v8, *(v1 + 48));
LABEL_6:
    v38 = v4;
    v39 = v7;
    v15 = *(v1 + 8);
    v16 = *(v1 + 24);
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    if (v15 >> 62)
    {
      if (v15 >> 62 != 1)
      {
        v20 = 1;
        goto LABEL_11;
      }

      v18 = ((v15 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v18 = (v15 + 64);
    }

    v19 = *v18;

    v20 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
LABEL_11:
      v37 = v5;
      *(v17 + 32) = v20;
      v21 = *(*v1 + 16);
      v22 = v16;
      v23 = _s12ValueDecoderV14ImplementationCMa();
      v24 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1A0, &qword_2531E48A0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2531E14E0;
      *(v25 + 32) = v39;
      *(v25 + 40) = v8;
      *(v25 + 48) = v9;
      v24[3] = v25;
      v24[4] = v17 | 0x4000000000000000;
      v24[2] = v21;
      a1[3] = v23;
      result = sub_2531A4AA0(&qword_27F58D718, &unk_2531E5EA4);
      a1[4] = result;
      *a1 = v24;
      if (!__OFADD__(v22, 1))
      {
        *(v1 + 24) = v22 + 1;
        v26 = *(v1 + 32);
        v27 = *(v1 + 40);
        v28 = *(v1 + 48);
        sub_2531A8148(v37, v38, v6);

        result = sub_253170AB0(v26, v27, v28);
        *(v1 + 32) = 0;
        *(v1 + 40) = 0;
        *(v1 + 48) = -1;
        return result;
      }

      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
LABEL_15:
    v29 = result;
    v30 = sub_2531DAC24();
    swift_allocError();
    v32 = v31;
    *v31 = v29;
    v33 = *(v1 + 8);
    result = swift_allocObject();
    v34 = result;
    *(result + 16) = v9;
    *(result + 24) = v33;
    if (v33 >> 62)
    {
      v35 = 0;
      if (v33 >> 62 != 1)
      {
        goto LABEL_20;
      }

      v36 = ((v33 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v36 = (v33 + 64);
    }

    v35 = *v36;

LABEL_20:
    if (!__OFADD__(v35, 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      *(v34 + 32) = v35 + 1;
      sub_25316B2C4(v34 | 0x4000000000000000);

      sub_2531DAC14();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84170], v30);
      result = swift_willThrow();
      if (!__OFADD__(v9, 1))
      {
        *(v1 + 24) = v9 + 1;
        result = sub_253170AB0(*(v1 + 32), *(v1 + 40), *(v1 + 48));
        *(v1 + 32) = 0;
        *(v1 + 40) = 0;
        *(v1 + 48) = -1;
        return result;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2531A2ECC()
{
  result = sub_2531DAF74();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A2F1C()
{
  result = sub_2531DAF84();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A2FC4()
{
  result = sub_2531DAFB4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A3014()
{
  result = sub_2531DAF94();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A3154()
{
  result = sub_2531DAFC4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A31A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_2531A3244()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2531B472C(0, v2, 0);
    result = v12;
    v4 = *(v12 + 16);
    v5 = 12 * v4;
    v6 = (v1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v13 = result;
      v9 = *(result + 24);
      v10 = v4 + 1;
      if (v4 >= v9 >> 1)
      {
        sub_2531B472C((v9 > 1), v4 + 1, 1);
        result = v13;
      }

      *(result + 16) = v10;
      v11 = result + v5;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v5 += 12;
      v6 += 40;
      v4 = v10;
      --v2;
    }

    while (v2);
  }

  return result;
}

BOOL sub_2531A3324(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = __ROR8__(*a1, 32);
  v4 = *(v2 + 16);
  v5 = *a1;
  if (!*(a1 + 8))
  {
    v5 = v3;
  }

  v6 = (v2 + 40);
  v7 = v4 + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v10 = *(v6 - 1);
    v8 = *v6;
    v6 += 40;
    v9 = __ROR8__(v10, 32);
    v10 = v10;
    if (!v8)
    {
      v10 = v9;
    }
  }

  while (v10 != v5);
  return v7 != 0;
}

uint64_t sub_2531A3380(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = __ROR8__(*a1, 32);
  if (v3)
  {
    v6 = *a1;
  }

  v7 = v4 + 24;
  v8 = *(v4 + 16) + 1;
  do
  {
    if (!--v8)
    {
      v14 = sub_2531DAC24();
      swift_allocError();
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18);
      *(v16 + 24) = &_s3TagO14CodingKeyProxyVN;
      *(v16 + 32) = sub_253168DD0();
      *v16 = v2;
      *(v16 + 8) = v3;
      sub_25316B2C4(v5);
      sub_2531DABC4();

      v17 = MTR.Tag.description.getter();
      MEMORY[0x259BFE570](v17);

      MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
      sub_2531690C0();
      v18 = sub_2531DAF34();
      MEMORY[0x259BFE570](v18);

      MEMORY[0x259BFE570](11817, 0xE200000000000000);
      sub_2531DAC14();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84158], v14);
      swift_willThrow();
      return v13 & 1;
    }

    v9 = (v7 + 40);
    v10 = __ROR8__(*(v7 + 8), 32);
    v11 = *(v7 + 8);
    if (!*(v7 + 16))
    {
      v11 = v10;
    }

    v7 += 40;
  }

  while (v11 != v6);
  if (*v9 == 10 && *(v9 - 1) == 0)
  {
    sub_25316D004(0, 0, 0xAu);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_2531A35E8@<X0>(uint64_t *a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v10 = *(v4 + 8);
  v9 = *(v4 + 16);
  v11 = __ROR8__(*a1, 32);
  if (v8)
  {
    v11 = *a1;
  }

  v12 = v9 + 24;
  v13 = *(v9 + 16) + 1;
  while (--v13)
  {
    v14 = (v12 + 40);
    v15 = __ROR8__(*(v12 + 8), 32);
    v16 = *(v12 + 8);
    if (!*(v12 + 16))
    {
      v16 = v15;
    }

    v12 += 40;
    if (v16 == v11)
    {
      v17 = *(v14 - 1);
      v18 = *v14;
      v29 = *(v14 - 2);
      v30 = v17;
      v31 = v18;
      v27 = v7;
      v28 = v8;
      sub_25316D004(v29, v17, v18);
      v20 = sub_253168DD0();
      sub_25319D118(&v29, a2, v10, &v27, a2, &_s3TagO14CodingKeyProxyVN, a3, v20, a4);
      return sub_25316D2BC(v29, v30, v31);
    }
  }

  v22 = sub_2531DAC24();
  swift_allocError();
  v24 = v23;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18) + 48);
  *(v24 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v24 + 32) = sub_253168DD0();
  *v24 = v7;
  *(v24 + 8) = v8;
  sub_25316B2C4(v10);
  sub_2531DABC4();

  v29 = 0xD00000000000001DLL;
  v30 = 0x80000002531DCC40;
  v25 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v25);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  v27 = v7;
  v28 = v8;
  sub_2531690C0();
  v26 = sub_2531DAF34();
  MEMORY[0x259BFE570](v26);

  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84158], v22);
  return swift_willThrow();
}

uint64_t sub_2531A388C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *v4;
  v11 = v5[1];
  v10 = v5[2];
  v12 = __ROR8__(*a2, 32);
  if (*(a2 + 8))
  {
    v12 = *a2;
  }

  v13 = v10 + 24;
  v14 = *(v10 + 16) + 1;
  do
  {
    if (!--v14)
    {
      v24 = sub_2531DAC24();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18);
      *(v26 + 24) = &_s3TagO14CodingKeyProxyVN;
      *(v26 + 32) = sub_253168DD0();
      *v26 = v7;
      *(v26 + 8) = v8;
      sub_25316B2C4(v11);
      sub_2531DABC4();

      v38[0] = 0xD00000000000001DLL;
      v38[1] = 0x80000002531DCC40;
      v27 = MTR.Tag.description.getter();
      MEMORY[0x259BFE570](v27);

      MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
      sub_2531690C0();
      v28 = sub_2531DAF34();
      MEMORY[0x259BFE570](v28);

      MEMORY[0x259BFE570](11817, 0xE200000000000000);
      sub_2531DAC14();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84158], v24);
      return swift_willThrow();
    }

    v15 = (v13 + 40);
    v16 = __ROR8__(*(v13 + 8), 32);
    v17 = *(v13 + 8);
    if (!*(v13 + 16))
    {
      v17 = v16;
    }

    v13 += 40;
  }

  while (v17 != v12);
  v19 = *(v15 - 2);
  v18 = *(v15 - 1);
  v20 = *v15;
  v39 = v11;
  v21 = swift_allocObject();
  *(v21 + 40) = &_s3TagO14CodingKeyProxyVN;
  v22 = sub_253168DD0();
  *(v21 + 16) = v7;
  *(v21 + 24) = v8;
  *(v21 + 48) = v22;
  *(v21 + 56) = v11;
  v37 = a4;
  if (v11 >> 62)
  {
    if (v11 >> 62 != 1)
    {
      v31 = 1;
      goto LABEL_14;
    }

    v23 = 32;
  }

  else
  {
    v23 = 64;
  }

  v30 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + v23);
  sub_2531AA970(&v39, v38);
  v31 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  *(v21 + 64) = v31;
  v8 = *(v9 + 32);
  *(v9 + 32) = v21;
  swift_beginAccess();
  v11 = *(v9 + 24);
  sub_25316D004(v19, v18, v20);
  sub_25316D004(v19, v18, v20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + 24) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_20:
    v11 = sub_25316A3D4(0, *(v11 + 16) + 1, 1, v11);
    *(v9 + 24) = v11;
  }

  v34 = *(v11 + 16);
  v33 = *(v11 + 24);
  if (v34 >= v33 >> 1)
  {
    v11 = sub_25316A3D4((v33 > 1), v34 + 1, 1, v11);
  }

  *(v11 + 16) = v34 + 1;
  v35 = v11 + 24 * v34;
  *(v35 + 32) = v19;
  *(v35 + 40) = v18;
  *(v35 + 48) = v20;
  *(v9 + 24) = v11;
  swift_endAccess();
  sub_25319B7DC(a3, a3, v37);
  *(v9 + 32) = v8;

  sub_25319B61C();

  return sub_25316D2BC(v19, v18, v20);
}

uint64_t sub_2531A3C80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *v2;
  v8 = v3[1];
  v7 = v3[2];
  v9 = __ROR8__(*a1, 32);
  if (*(a1 + 8))
  {
    v9 = *a1;
  }

  v10 = v7 + 24;
  v11 = *(v7 + 16) + 1;
  do
  {
    if (!--v11)
    {
      v21 = sub_2531DAC24();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18);
      *(v23 + 24) = &_s3TagO14CodingKeyProxyVN;
      *(v23 + 32) = sub_253168DD0();
      *v23 = v4;
      *(v23 + 8) = v5;
      sub_25316B2C4(v8);
      sub_2531DABC4();

      v24 = MTR.Tag.description.getter();
      MEMORY[0x259BFE570](v24);

      MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
      sub_2531690C0();
      v25 = sub_2531DAF34();
      MEMORY[0x259BFE570](v25);

      MEMORY[0x259BFE570](11817, 0xE200000000000000);
      sub_2531DAC14();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84158], v21);
      return swift_willThrow();
    }

    v12 = (v10 + 40);
    v13 = __ROR8__(*(v10 + 8), 32);
    v14 = *(v10 + 8);
    if (!*(v10 + 16))
    {
      v14 = v13;
    }

    v10 += 40;
  }

  while (v14 != v9);
  v16 = *(v12 - 2);
  v15 = *(v12 - 1);
  v17 = *v12;
  v18 = swift_allocObject();
  *(v18 + 40) = &_s3TagO14CodingKeyProxyVN;
  v19 = sub_253168DD0();
  *(v18 + 16) = v4;
  *(v18 + 24) = v5;
  *(v18 + 48) = v19;
  *(v18 + 56) = v8;
  if (v8 >> 62)
  {
    if (v8 >> 62 != 1)
    {
      v28 = 1;
      goto LABEL_14;
    }

    v20 = ((v8 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v20 = (v8 + 64);
  }

  v27 = *v20;

  v28 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  *(v18 + 64) = v28;
  v5 = *(v6 + 32);
  *(v6 + 32) = v18;
  swift_beginAccess();
  v8 = *(v6 + 24);
  sub_25316D004(v16, v15, v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 24) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_20:
    v8 = sub_25316A3D4(0, *(v8 + 16) + 1, 1, v8);
    *(v6 + 24) = v8;
  }

  v31 = *(v8 + 16);
  v30 = *(v8 + 24);
  if (v31 >= v30 >> 1)
  {
    v8 = sub_25316A3D4((v30 > 1), v31 + 1, 1, v8);
  }

  *(v8 + 16) = v31 + 1;
  v32 = v8 + 24 * v31;
  *(v32 + 32) = v16;
  *(v32 + 40) = v15;
  *(v32 + 48) = v17;
  *(v6 + 24) = v8;
  swift_endAccess();
  sub_25316D004(v16, v15, v17);
  sub_25319BBF0(a2);
  *(v6 + 32) = v5;

  sub_25319B61C();

  return sub_25316D2BC(v16, v15, v17);
}

uint64_t sub_2531A4058@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v8 = __ROR8__(*a1, 32);
  if (v4)
  {
    v8 = *a1;
  }

  v9 = v7 + 24;
  v10 = *(v7 + 16) + 1;
  while (--v10)
  {
    v11 = (v9 + 40);
    v12 = __ROR8__(*(v9 + 8), 32);
    v13 = *(v9 + 8);
    if (!*(v9 + 16))
    {
      v13 = v12;
    }

    v9 += 40;
    if (v13 == v8)
    {
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;
      sub_25316D004(v14, v15, *v11);
      goto LABEL_10;
    }
  }

  v17 = sub_2531DAC24();
  v18 = swift_allocError();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18);
  *(v20 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v20 + 32) = sub_253168DD0();
  *v20 = v3;
  *(v20 + 8) = v4;
  sub_25316B2C4(v5);
  sub_2531DABC4();

  v21 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v21);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v22 = sub_2531DAF34();
  MEMORY[0x259BFE570](v22);

  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v17 - 8) + 104))(v20, *MEMORY[0x277D84158], v17);
  swift_willThrow();

  v14 = 0;
  v15 = 0;
  v16 = 10;
LABEL_10:
  v23 = swift_allocObject();
  *(v23 + 40) = &_s3TagO14CodingKeyProxyVN;
  v24 = sub_253168DD0();
  *(v23 + 16) = v3;
  *(v23 + 24) = v4;
  *(v23 + 48) = v24;
  *(v23 + 56) = v5;
  if (v5 >> 62)
  {
    if (v5 >> 62 != 1)
    {
      v28 = 1;
      goto LABEL_15;
    }

    v25 = ((v5 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v25 = (v5 + 64);
  }

  v26 = *v25;

  v28 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
LABEL_15:
    *(v23 + 64) = v28;
    v29 = *(v6 + 16);
    v30 = _s12ValueDecoderV14ImplementationCMa();
    v31 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1A0, &qword_2531E48A0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2531E14E0;
    *(v32 + 32) = v14;
    *(v32 + 40) = v15;
    *(v32 + 48) = v16;
    v31[3] = v32;
    v31[4] = v23;
    v31[2] = v29;
    a2[3] = v30;
    a2[4] = sub_2531A4AA0(&qword_27F58D718, &unk_2531E5EA4);
    *a2 = v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_2531A4688()
{
  result = sub_2531DB1E4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A46D8()
{
  result = sub_2531DB1F4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A4780()
{
  result = sub_2531DB224();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A47D0()
{
  result = sub_2531DB204();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A4910()
{
  result = sub_2531DB234();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A4960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_2531A4A5C(uint64_t a1)
{
  result = sub_2531A4AA0(&qword_27F58D718, &unk_2531E5EA4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2531A4AA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s12ValueDecoderV14ImplementationCMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2531A4AE4()
{
  result = qword_27F58DA98;
  if (!qword_27F58DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DA98);
  }

  return result;
}

uint64_t sub_2531A4B50(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 5);
  v5 = *(v1 + 48);
  v14 = *v1;
  v15 = v3;
  v16 = *(v1 + 24);
  v17 = v4;
  v18 = v5;
  v13 = sub_2531A3244();
  v12 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DB38, &qword_2531E64F0);
  v7 = sub_2531ABFD8();
  v9 = sub_25316C670(sub_2531ABFB8, v11, v6, v12, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);

  return v9;
}

uint64_t sub_2531A4C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_2531DAAF4();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  if (*(a1 + 8) != 1 && (result = __ROR8__(*a1, 32), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_2531DB514();
    v11 = *(a2 - 8);
    result = (*(v11 + 48))(v9, 1, a2);
    if (result != 1)
    {
      return (*(v11 + 32))(a4, v9, a2);
    }
  }

  __break(1u);
  return result;
}

BOOL sub_2531A4D60(uint64_t a1, uint64_t a2)
{
  v2 = sub_2531DB504();
  if (v3)
  {
    return 0;
  }

  v5 = v2;
  v6 = sub_2531A3244();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v7 - 1;
    v9 = (v6 + 40);
    while (1)
    {
      if (*v9 == 1)
      {
        v10 = *(v9 - 1);
      }

      else
      {
        v10 = __ROR8__(*(v9 - 1), 32);
        if (v10 < 0)
        {
          __break(1u);
          break;
        }
      }

      v4 = v10 == v5;
      v11 = v10 == v5 || v8-- == 0;
      v9 += 12;
      if (v11)
      {
        goto LABEL_14;
      }
    }
  }

  v4 = 0;
LABEL_14:

  return v4;
}

uint64_t sub_2531A4E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v32 = a3;
  v4 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  v7 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v13 = *(v3 + 48);
  v25 = v8;
  v26 = v7;
  v27 = v10;
  v28 = v9;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v15 = *(v14 + 16);
  v22[1] = v16;
  v15(v6);

  sub_2531A8148(v11, v12, v13);
  MTR.Tag.init<A>(codingKey:)(v6, v4, &v23);
  if (v24 == 255)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v24) = v24 & 1;
    v17 = v32(&v23);
    v18 = v29;
    v19 = v30;
    v20 = v31;

    sub_253170AB0(v18, v19, v20);
    return v17 & 1;
  }

  return result;
}

unint64_t *sub_2531A5084(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v12 = *(v2 + 48);
  v24 = v7;
  v25 = v6;
  v26 = v9;
  v27 = v8;
  v28 = v11;
  v29 = v10;
  v30 = v12;
  v14 = *(v13 + 16);
  v21 = v15;
  v14(v5);

  sub_2531A8148(v11, v10, v12);
  MTR.Tag.init<A>(codingKey:)(v5, v3, &v22);
  if (v23 == 255)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v23) = v23 & 1;
    v16 = sub_2531AAC58(&v22);
    v17 = v28;
    v18 = v29;
    v19 = v30;

    sub_253170AB0(v17, v18, v19);
    return v16;
  }

  return result;
}

uint64_t sub_2531A52C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v12 = *(v2 + 48);
  v23 = v7;
  v24 = v6;
  v25 = v9;
  v26 = v8;
  v27 = v11;
  v28 = v10;
  v29 = v12;
  v14 = *(v13 + 16);
  v20[1] = v15;
  v14(v5);

  sub_2531A8148(v11, v10, v12);
  MTR.Tag.init<A>(codingKey:)(v5, v3, &v21);
  if (v22 == 255)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v22) = v22 & 1;
    sub_2531AAF08(&v21);
    v16 = v27;
    v17 = v28;
    v18 = v29;

    return sub_253170AB0(v16, v17, v18);
  }

  return result;
}

uint64_t sub_2531A5500(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v12 = *(v2 + 48);
  v23 = v7;
  v24 = v6;
  v25 = v9;
  v26 = v8;
  v27 = v11;
  v28 = v10;
  v29 = v12;
  v14 = *(v13 + 16);
  v20[1] = v15;
  v14(v5);

  sub_2531A8148(v11, v10, v12);
  MTR.Tag.init<A>(codingKey:)(v5, v3, &v21);
  if (v22 == 255)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v22) = v22 & 1;
    sub_2531AB19C(&v21);
    v16 = v27;
    v17 = v28;
    v18 = v29;

    return sub_253170AB0(v16, v17, v18);
  }

  return result;
}

unint64_t *sub_2531A573C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v32 = a3;
  v4 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  v7 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v13 = *(v3 + 48);
  v25 = v8;
  v26 = v7;
  v27 = v10;
  v28 = v9;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v15 = *(v14 + 16);
  v22[1] = v16;
  v15(v6);

  sub_2531A8148(v11, v12, v13);
  MTR.Tag.init<A>(codingKey:)(v6, v4, &v23);
  if (v24 == 255)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v24) = v24 & 1;
    v17 = sub_2531ABBEC(&v23, v32);
    v18 = v29;
    v19 = v30;
    v20 = v31;

    sub_253170AB0(v18, v19, v20);
    return v17;
  }

  return result;
}

unint64_t *sub_2531A5978(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v32 = a3;
  v4 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  v7 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v13 = *(v3 + 48);
  v25 = v8;
  v26 = v7;
  v27 = v10;
  v28 = v9;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v15 = *(v14 + 16);
  v22[1] = v16;
  v15(v6);

  sub_2531A8148(v11, v12, v13);
  MTR.Tag.init<A>(codingKey:)(v6, v4, &v23);
  if (v24 == 255)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v24) = v24 & 1;
    v17 = sub_2531AB430(&v23, v32);
    v18 = v29;
    v19 = v30;
    v20 = v31;

    sub_253170AB0(v18, v19, v20);
    return v17;
  }

  return result;
}

unint64_t *sub_2531A5BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v32 = a3;
  v4 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  v7 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v13 = *(v3 + 48);
  v25 = v8;
  v26 = v7;
  v27 = v10;
  v28 = v9;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v15 = *(v14 + 16);
  v22[1] = v16;
  v15(v6);

  sub_2531A8148(v11, v12, v13);
  MTR.Tag.init<A>(codingKey:)(v6, v4, &v23);
  if (v24 == 255)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v24) = v24 & 1;
    v17 = sub_2531AB6C4(&v23, v32);
    v18 = v29;
    v19 = v30;
    v20 = v31;

    sub_253170AB0(v18, v19, v20);
    return v17;
  }

  return result;
}

unint64_t *sub_2531A5DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v32 = a3;
  v4 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  v7 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v13 = *(v3 + 48);
  v25 = v8;
  v26 = v7;
  v27 = v10;
  v28 = v9;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v15 = *(v14 + 16);
  v22[1] = v16;
  v15(v6);

  sub_2531A8148(v11, v12, v13);
  MTR.Tag.init<A>(codingKey:)(v6, v4, &v23);
  if (v24 == 255)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v24) = v24 & 1;
    v17 = sub_2531AB958(&v23, v32);
    v18 = v29;
    v19 = v30;
    v20 = v31;

    sub_253170AB0(v18, v19, v20);
    return v17;
  }

  return result;
}

uint64_t sub_2531A602C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v24 = a5;
  v6 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v5;
  v10 = v5[1];
  v12 = v5[2];
  v11 = v5[3];
  v13 = v5[4];
  v14 = v5[5];
  v15 = *(v5 + 48);
  v29 = v9;
  v30 = v10;
  v31 = v12;
  v32 = v11;
  v33 = v13;
  v34 = v14;
  v35 = v15;
  v17 = *(v16 + 16);
  v23[1] = v18;
  v17(v8);

  sub_2531A8148(v13, v14, v15);
  MTR.Tag.init<A>(codingKey:)(v8, v6, &v27);
  if (v28 == 255)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v28) = v28 & 1;
    sub_2531A35E8(&v27, v25, v26, v24);
    v19 = v33;
    v20 = v34;
    v21 = v35;

    return sub_253170AB0(v19, v20, v21);
  }

  return result;
}

uint64_t sub_2531A6268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v23[1] = a5;
  v24 = a1;
  v6 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v5;
  v10 = v5[1];
  v12 = v5[2];
  v11 = v5[3];
  v13 = v5[4];
  v14 = v5[5];
  v15 = *(v5 + 48);
  v29 = v9;
  v30 = v10;
  v31 = v12;
  v32 = v11;
  v33 = v13;
  v34 = v14;
  v35 = v15;
  v17 = *(v16 + 16);
  v23[0] = v18;
  v17(v8);

  sub_2531A8148(v13, v14, v15);
  MTR.Tag.init<A>(codingKey:)(v8, v6, &v27);
  if (v28 == 255)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v28) = v28 & 1;
    sub_2531A388C(v24, &v27, v25, v26);
    v19 = v33;
    v20 = v34;
    v21 = v35;

    return sub_253170AB0(v19, v20, v21);
  }

  return result;
}

uint64_t sub_2531A64A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v22[1] = a4;
  v5 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v4;
  v8 = v4[1];
  v11 = v4[2];
  v10 = v4[3];
  v12 = v4[4];
  v13 = v4[5];
  v14 = *(v4 + 48);
  v25 = v9;
  v26 = v8;
  v27 = v11;
  v28 = v10;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v16 = *(v15 + 16);
  v22[0] = v17;
  v16(v7);

  sub_2531A8148(v12, v13, v14);
  MTR.Tag.init<A>(codingKey:)(v7, v5, &v23);
  if (v24 == 255)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v24) = v24 & 1;
    v32(&v23);
    v18 = v29;
    v19 = v30;
    v20 = v31;

    return sub_253170AB0(v18, v19, v20);
  }

  return result;
}

unint64_t sub_2531A6A0C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2531A6C18(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2531A6A9C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2531A6C7C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 16) = v11;
    result = memmove(v9, (v9 + 24), 24 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_2531A6B38()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_2531A6C18(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A6B9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v3 + 24 * v5;
      v7 = *(v6 + 24);
      *a1 = *(v6 + 8);
      *(a1 + 16) = v7;
      *(v3 + 16) = v5 - 1;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_2531A6C7C(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2531A6C18(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2531DAD44();
  }

  return sub_2531DAC04();
}

uint64_t sub_2531A6C90(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a5;
  v41 = a3;
  v42 = a2;
  v45 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2531DAAF4();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v17 = &v36 - v16;
  v18 = *a1;
  v19 = a1[1];
  v20 = *(a1 + 16);
  if (v20 != 6)
  {
    if (v20 == 10 && !(v19 | v18))
    {
      v24 = v14;
      v25 = v15;
      v39 = sub_2531DAC24();
      swift_allocError();
      v37 = v25;
      v38 = v26;
      *v26 = MEMORY[0x277CC9318];
      v27 = *(v25 + 16);
      v27(v17, v41, v24);
      v28 = v24;
      v27(v13, v17, v24);
      v29 = v45;
      if ((*(v45 + 48))(v13, 1, a4) == 1)
      {
        v30 = *(v37 + 8);
        v30(v13, v28);
        sub_25316B2C4(v42);
        v30(v17, v28);
      }

      else
      {
        (*(v29 + 32))(v9, v13, a4);
        v31 = sub_25316B2C4(v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        v33 = v40;
        *(inited + 56) = a4;
        *(inited + 64) = v33;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(v29 + 16))(boxed_opaque_existential_0, v9, a4);
        v43 = v31;
        sub_25318DDCC(inited);
        (*(v29 + 8))(v9, a4);
        (*(v37 + 8))(v17, v28);
      }

      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](1635017028, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      v35 = v38;
      sub_2531DAC14();
      (*(*(v39 - 8) + 104))(v35, *MEMORY[0x277D84170]);
    }

    else
    {
      v21 = *(v5 + 32);

      sub_25316B2C4(v21);

      sub_2531DAC24();
      swift_allocError();
      sub_253198EA4(v20, v22);
    }

    swift_willThrow();
  }

  return v18;
}

uint64_t sub_2531A7104(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v10 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D837D0];
      sub_25316B2C4(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        sub_2531A7D7C(a5, a6, a7, a8);
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x676E69727453, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v10 - 8) + 104))(v19, *MEMORY[0x277D84170], v10);
      goto LABEL_6;
    }
  }

  else if (a3 == 5)
  {
    return v10;
  }

  v11 = *(v8 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_25319936C(a3, v12);

LABEL_6:
  swift_willThrow();
  return v10;
}

uint64_t sub_2531A73C0()
{
  result = swift_beginAccess();
  v3 = *(v0 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 24 * v4;
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    v9 = *(v0 + 32);
    sub_25316D004(v6, v7, v8);

    v10 = sub_2531A7104(v6, v7, v8, v9, 0, 0, 0, 255);
    if (!v1)
    {
    }

    sub_25316D2BC(v6, v7, v8);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A74B4()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 24 * v3;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v0 + 32);
    v8 = *(v4 + 24);
    sub_25316D004(v5, v6, v8);

    v9 = sub_25319C134(v5, v6, v8, v7, 0, 0, 0, 255);

    sub_25316D2BC(v5, v6, v8);
    return v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A758C(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v8 = sub_2531DAC24();
      swift_allocError();
      v16 = v15;
      *v15 = MEMORY[0x277D837D0];
      sub_25316B2C4(a4);
      if (a6 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x676E69727453, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v8 - 8) + 104))(v16, *MEMORY[0x277D84170], v8);
      goto LABEL_6;
    }
  }

  else if (a3 == 5)
  {
    return v8;
  }

  v9 = *(v6 + 32);

  sub_25316B2C4(v9);

  sub_2531DAC24();
  swift_allocError();
  sub_25319936C(a3, v10);

LABEL_6:
  swift_willThrow();
  return v8;
}

uint64_t sub_2531A781C()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 24 * v3;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v0 + 32);
    v8 = *(v4 + 24);
    sub_25316D004(v5, v6, v8);

    sub_25319C668(v5, v6, v8, v7, 0, 0, 0, 255);

    return sub_25316D2BC(v5, v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A78FC()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 24 * v3;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v0 + 32);
    v8 = *(v4 + 24);
    sub_25316D004(v5, v6, v8);

    sub_25319CBD4(v5, v6, v8, v7, 0, 0, 0, 255);

    return sub_25316D2BC(v5, v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A79DC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, uint64_t))
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 24 * v5;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    v9 = *(v1 + 32);
    v10 = *(v6 + 24);
    sub_25316D004(v7, v8, *(v6 + 24));

    v11 = a1(v7, v8, v10, v9, 0, 0, 0, 255);

    sub_25316D2BC(v7, v8, v10);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A7AC4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, uint64_t))
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 24 * v5;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    v9 = *(v1 + 32);
    v10 = *(v6 + 24);
    sub_25316D004(v7, v8, *(v6 + 24));

    v11 = a1(v7, v8, v10, v9, 0, 0, 0, 255);

    sub_25316D2BC(v7, v8, v10);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A7BAC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, uint64_t))
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 24 * v5;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    v9 = *(v1 + 32);
    v10 = *(v6 + 24);
    sub_25316D004(v7, v8, *(v6 + 24));

    v11 = a1(v7, v8, v10, v9, 0, 0, 0, 255);

    sub_25316D2BC(v7, v8, v10);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A7C94(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, uint64_t))
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 24 * v5;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    v9 = *(v1 + 32);
    v10 = *(v6 + 24);
    sub_25316D004(v7, v8, *(v6 + 24));

    v11 = a1(v7, v8, v10, v9, 0, 0, 0, 255);

    sub_25316D2BC(v7, v8, v10);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A7D7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3 || a4 == 0)
  {
  }

  return result;
}

uint64_t sub_2531A7D98(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = a1;
  if (a3 != 6)
  {
    if (a3 == 10 && !(a2 | a1))
    {
      v9 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277CC9318];
      sub_25316B2C4(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        sub_2531A7D7C(a5, a6, a7, a8);
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](1635017028, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v9 - 8) + 104))(v19, *MEMORY[0x277D84170], v9);
    }

    else
    {
      v11 = *(v8 + 32);

      sub_25316B2C4(v11);

      sub_2531DAC24();
      swift_allocError();
      sub_253198EA4(a3, v12);
    }

    swift_willThrow();
  }

  return v9;
}

uint64_t sub_2531A8050()
{
  result = swift_beginAccess();
  v3 = *(v0 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 24 * v4;
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    v9 = *(v0 + 32);
    sub_25316D004(v6, v7, v8);

    v10 = sub_2531A7D98(v6, v7, v8, v9, 0, 0, 0, 255);
    v12 = v10;
    if (!v1)
    {
      sub_25316D050(v10, v11);
    }

    sub_25316D2BC(v6, v7, v8);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A8148(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_25316D004(result, a2, a3);
  }

  return result;
}

void sub_2531A815C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = v2;
  v6 = v3;
  LOBYTE(v7) = *(v0 + 48);
  if (v4 == 255)
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v9 < *(v8 + 16))
    {
      if (v9 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      v11 = v8 + 24 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 48);
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
      *(v0 + 48) = v14;
      sub_25316D004(v12, v13, v14);
      sub_253170AB0(v2, v3, 0xFFu);
      v7 = *(v0 + 48);
      if (v7 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      sub_25316D004(v5, v6, *(v0 + 48));
      LOBYTE(v4) = v10;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v17 = MEMORY[0x277D839B0];
    v18 = sub_2531DAC24();
    swift_allocError();
    v20 = v19;
    *v19 = v17;
    v21 = *(v0 + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v21;
    if (v21 >> 62)
    {
      v23 = 0;
      if (v21 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v23, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        *(v22 + 32) = v23 + 1;
        sub_25316B2C4(v22 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
        swift_willThrow();
        return;
      }

      v24 = ((v21 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = (v21 + 64);
    }

    v23 = *v24;

    goto LABEL_14;
  }

LABEL_6:
  v15 = *(v0 + 8);
  v16 = *(v0 + 24);
  sub_2531A8148(v2, v3, v4);
  sub_25319C134(v5, v6, v7, v15, v16, 0, 0, 2);
  sub_25316D2BC(v5, v6, v7);
  if (!v1)
  {
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 24) = v16 + 1;
      sub_253170AB0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A8434()
{
  v2 = v0;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = v3;
  v7 = v4;
  LOBYTE(v8) = *(v0 + 48);
  if (v5 != 255)
  {
    goto LABEL_6;
  }

  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  if (v10 >= *(v9 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v18 = MEMORY[0x277D837D0];
    v19 = sub_2531DAC24();
    swift_allocError();
    v21 = v20;
    *v20 = v18;
    v22 = *(v2 + 8);
    v23 = swift_allocObject();
    *(v23 + 16) = v10;
    *(v23 + 24) = v22;
    if (v22 >> 62)
    {
      v24 = 0;
      if (v22 >> 62 != 1)
      {
        goto LABEL_15;
      }

      v25 = ((v22 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v25 = (v22 + 64);
    }

    v24 = *v25;

LABEL_15:
    if (!__OFADD__(v24, 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      *(v23 + 32) = v24 + 1;
      sub_25316B2C4(v23 | 0x4000000000000000);

      sub_2531DAC14();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84170], v19);
      swift_willThrow();
      return;
    }

    goto LABEL_19;
  }

  if (v10 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(v0 + 48);
  v12 = v9 + 24 * v10;
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  v15 = *(v12 + 48);
  *(v0 + 32) = v13;
  *(v0 + 40) = v14;
  *(v0 + 48) = v15;
  sub_25316D004(v13, v14, v15);
  sub_253170AB0(v3, v4, 0xFFu);
  v8 = *(v0 + 48);
  if (v8 != 255)
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    sub_25316D004(v6, v7, *(v0 + 48));
    LOBYTE(v5) = v11;
LABEL_6:
    v16 = *(v0 + 8);
    v17 = *(v0 + 24);
    sub_2531A8148(v3, v4, v5);
    sub_2531A7104(v6, v7, v8, v16, v17, 0, 0, 2);
    if (v1)
    {
      sub_25316D2BC(v6, v7, v8);
      return;
    }

    sub_25316D2BC(v6, v7, v8);
    if (!__OFADD__(v17, 1))
    {
      *(v0 + 24) = v17 + 1;
      sub_253170AB0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

void sub_2531A8730()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = v2;
  v6 = v3;
  LOBYTE(v7) = *(v0 + 48);
  if (v4 == 255)
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v9 < *(v8 + 16))
    {
      if (v9 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      v11 = v8 + 24 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 48);
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
      *(v0 + 48) = v14;
      sub_25316D004(v12, v13, v14);
      sub_253170AB0(v2, v3, 0xFFu);
      v7 = *(v0 + 48);
      if (v7 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      sub_25316D004(v5, v6, *(v0 + 48));
      LOBYTE(v4) = v10;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v17 = MEMORY[0x277D839F8];
    v18 = sub_2531DAC24();
    swift_allocError();
    v20 = v19;
    *v19 = v17;
    v21 = *(v0 + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v21;
    if (v21 >> 62)
    {
      v23 = 0;
      if (v21 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v23, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        *(v22 + 32) = v23 + 1;
        sub_25316B2C4(v22 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
        swift_willThrow();
        return;
      }

      v24 = ((v21 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = (v21 + 64);
    }

    v23 = *v24;

    goto LABEL_14;
  }

LABEL_6:
  v15 = *(v0 + 8);
  v16 = *(v0 + 24);
  sub_2531A8148(v2, v3, v4);
  sub_25319C668(v5, v6, v7, v15, v16, 0, 0, 2);
  sub_25316D2BC(v5, v6, v7);
  if (!v1)
  {
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 24) = v16 + 1;
      sub_253170AB0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A8A18()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = v2;
  v6 = v3;
  LOBYTE(v7) = *(v0 + 48);
  if (v4 == 255)
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v9 < *(v8 + 16))
    {
      if (v9 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      v11 = v8 + 24 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 48);
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
      *(v0 + 48) = v14;
      sub_25316D004(v12, v13, v14);
      sub_253170AB0(v2, v3, 0xFFu);
      v7 = *(v0 + 48);
      if (v7 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      sub_25316D004(v5, v6, *(v0 + 48));
      LOBYTE(v4) = v10;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v17 = MEMORY[0x277D83A90];
    v18 = sub_2531DAC24();
    swift_allocError();
    v20 = v19;
    *v19 = v17;
    v21 = *(v0 + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v21;
    if (v21 >> 62)
    {
      v23 = 0;
      if (v21 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v23, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        *(v22 + 32) = v23 + 1;
        sub_25316B2C4(v22 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
        swift_willThrow();
        return;
      }

      v24 = ((v21 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = (v21 + 64);
    }

    v23 = *v24;

    goto LABEL_14;
  }

LABEL_6:
  v15 = *(v0 + 8);
  v16 = *(v0 + 24);
  sub_2531A8148(v2, v3, v4);
  sub_25319CBD4(v5, v6, v7, v15, v16, 0, 0, 2);
  sub_25316D2BC(v5, v6, v7);
  if (!v1)
  {
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 24) = v16 + 1;
      sub_253170AB0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A8D00()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = v2;
  v6 = v3;
  LOBYTE(v7) = *(v0 + 48);
  if (v4 == 255)
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v9 < *(v8 + 16))
    {
      if (v9 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      v11 = v8 + 24 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 48);
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
      *(v0 + 48) = v14;
      sub_25316D004(v12, v13, v14);
      sub_253170AB0(v2, v3, 0xFFu);
      v7 = *(v0 + 48);
      if (v7 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      sub_25316D004(v5, v6, *(v0 + 48));
      LOBYTE(v4) = v10;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v17 = MEMORY[0x277D83B88];
    v18 = sub_2531DAC24();
    swift_allocError();
    v20 = v19;
    *v19 = v17;
    v21 = *(v0 + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v21;
    if (v21 >> 62)
    {
      v23 = 0;
      if (v21 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v23, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        *(v22 + 32) = v23 + 1;
        sub_25316B2C4(v22 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
        swift_willThrow();
        return;
      }

      v24 = ((v21 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = (v21 + 64);
    }

    v23 = *v24;

    goto LABEL_14;
  }

LABEL_6:
  v15 = *(v0 + 8);
  v16 = *(v0 + 24);
  sub_2531A8148(v2, v3, v4);
  sub_25319DAD4(v5, v6, v7, v15, v16, 0, 0, 2);
  sub_25316D2BC(v5, v6, v7);
  if (!v1)
  {
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 24) = v16 + 1;
      sub_253170AB0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A8FD8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = v2;
  v6 = v3;
  LOBYTE(v7) = *(v0 + 48);
  if (v4 == 255)
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v9 < *(v8 + 16))
    {
      if (v9 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      v11 = v8 + 24 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 48);
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
      *(v0 + 48) = v14;
      sub_25316D004(v12, v13, v14);
      sub_253170AB0(v2, v3, 0xFFu);
      v7 = *(v0 + 48);
      if (v7 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      sub_25316D004(v5, v6, *(v0 + 48));
      LOBYTE(v4) = v10;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v17 = MEMORY[0x277D84900];
    v18 = sub_2531DAC24();
    swift_allocError();
    v20 = v19;
    *v19 = v17;
    v21 = *(v0 + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v21;
    if (v21 >> 62)
    {
      v23 = 0;
      if (v21 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v23, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        *(v22 + 32) = v23 + 1;
        sub_25316B2C4(v22 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
        swift_willThrow();
        return;
      }

      v24 = ((v21 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = (v21 + 64);
    }

    v23 = *v24;

    goto LABEL_14;
  }

LABEL_6:
  v15 = *(v0 + 8);
  v16 = *(v0 + 24);
  sub_2531A8148(v2, v3, v4);
  sub_25319DD88(v5, v6, v7, v15, v16, 0, 0, 2);
  sub_25316D2BC(v5, v6, v7);
  if (!v1)
  {
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 24) = v16 + 1;
      sub_253170AB0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A92B0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = v2;
  v6 = v3;
  LOBYTE(v7) = *(v0 + 48);
  if (v4 == 255)
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v9 < *(v8 + 16))
    {
      if (v9 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      v11 = v8 + 24 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 48);
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
      *(v0 + 48) = v14;
      sub_25316D004(v12, v13, v14);
      sub_253170AB0(v2, v3, 0xFFu);
      v7 = *(v0 + 48);
      if (v7 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      sub_25316D004(v5, v6, *(v0 + 48));
      LOBYTE(v4) = v10;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v17 = MEMORY[0x277D84958];
    v18 = sub_2531DAC24();
    swift_allocError();
    v20 = v19;
    *v19 = v17;
    v21 = *(v0 + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v21;
    if (v21 >> 62)
    {
      v23 = 0;
      if (v21 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v23, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        *(v22 + 32) = v23 + 1;
        sub_25316B2C4(v22 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
        swift_willThrow();
        return;
      }

      v24 = ((v21 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = (v21 + 64);
    }

    v23 = *v24;

    goto LABEL_14;
  }

LABEL_6:
  v15 = *(v0 + 8);
  v16 = *(v0 + 24);
  sub_2531A8148(v2, v3, v4);
  sub_25319E0AC(v5, v6, v7, v15, v16, 0, 0, 2);
  sub_25316D2BC(v5, v6, v7);
  if (!v1)
  {
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 24) = v16 + 1;
      sub_253170AB0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A9588()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = v2;
  v6 = v3;
  LOBYTE(v7) = *(v0 + 48);
  if (v4 == 255)
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v9 < *(v8 + 16))
    {
      if (v9 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      v11 = v8 + 24 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 48);
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
      *(v0 + 48) = v14;
      sub_25316D004(v12, v13, v14);
      sub_253170AB0(v2, v3, 0xFFu);
      v7 = *(v0 + 48);
      if (v7 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      sub_25316D004(v5, v6, *(v0 + 48));
      LOBYTE(v4) = v10;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v17 = MEMORY[0x277D849A8];
    v18 = sub_2531DAC24();
    swift_allocError();
    v20 = v19;
    *v19 = v17;
    v21 = *(v0 + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v21;
    if (v21 >> 62)
    {
      v23 = 0;
      if (v21 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v23, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        *(v22 + 32) = v23 + 1;
        sub_25316B2C4(v22 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
        swift_willThrow();
        return;
      }

      v24 = ((v21 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = (v21 + 64);
    }

    v23 = *v24;

    goto LABEL_14;
  }

LABEL_6:
  v15 = *(v0 + 8);
  v16 = *(v0 + 24);
  sub_2531A8148(v2, v3, v4);
  sub_25319E3D8(v5, v6, v7, v15, v16, 0, 0, 2);
  sub_25316D2BC(v5, v6, v7);
  if (!v1)
  {
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 24) = v16 + 1;
      sub_253170AB0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A9860()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = v2;
  v6 = v3;
  LOBYTE(v7) = *(v0 + 48);
  if (v4 == 255)
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v9 < *(v8 + 16))
    {
      if (v9 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      v11 = v8 + 24 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 48);
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
      *(v0 + 48) = v14;
      sub_25316D004(v12, v13, v14);
      sub_253170AB0(v2, v3, 0xFFu);
      v7 = *(v0 + 48);
      if (v7 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      sub_25316D004(v5, v6, *(v0 + 48));
      LOBYTE(v4) = v10;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v17 = MEMORY[0x277D84A28];
    v18 = sub_2531DAC24();
    swift_allocError();
    v20 = v19;
    *v19 = v17;
    v21 = *(v0 + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v21;
    if (v21 >> 62)
    {
      v23 = 0;
      if (v21 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v23, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        *(v22 + 32) = v23 + 1;
        sub_25316B2C4(v22 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
        swift_willThrow();
        return;
      }

      v24 = ((v21 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = (v21 + 64);
    }

    v23 = *v24;

    goto LABEL_14;
  }

LABEL_6:
  v15 = *(v0 + 8);
  v16 = *(v0 + 24);
  sub_2531A8148(v2, v3, v4);
  sub_25319E704(v5, v6, v7, v15, v16, 0, 0, 2);
  sub_25316D2BC(v5, v6, v7);
  if (!v1)
  {
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 24) = v16 + 1;
      sub_253170AB0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A9B38()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = v2;
  v6 = v3;
  LOBYTE(v7) = *(v0 + 48);
  if (v4 == 255)
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v9 < *(v8 + 16))
    {
      if (v9 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      v11 = v8 + 24 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 48);
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
      *(v0 + 48) = v14;
      sub_25316D004(v12, v13, v14);
      sub_253170AB0(v2, v3, 0xFFu);
      v7 = *(v0 + 48);
      if (v7 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      sub_25316D004(v5, v6, *(v0 + 48));
      LOBYTE(v4) = v10;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v17 = MEMORY[0x277D83E88];
    v18 = sub_2531DAC24();
    swift_allocError();
    v20 = v19;
    *v19 = v17;
    v21 = *(v0 + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v21;
    if (v21 >> 62)
    {
      v23 = 0;
      if (v21 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v23, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        *(v22 + 32) = v23 + 1;
        sub_25316B2C4(v22 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
        swift_willThrow();
        return;
      }

      v24 = ((v21 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = (v21 + 64);
    }

    v23 = *v24;

    goto LABEL_14;
  }

LABEL_6:
  v15 = *(v0 + 8);
  v16 = *(v0 + 24);
  sub_2531A8148(v2, v3, v4);
  sub_25319F7C0(v5, v6, v7, v15, v16, 0, 0, 2);
  sub_25316D2BC(v5, v6, v7);
  if (!v1)
  {
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 24) = v16 + 1;
      sub_253170AB0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A9E10()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = v2;
  v6 = v3;
  LOBYTE(v7) = *(v0 + 48);
  if (v4 == 255)
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v9 < *(v8 + 16))
    {
      if (v9 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      v11 = v8 + 24 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 48);
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
      *(v0 + 48) = v14;
      sub_25316D004(v12, v13, v14);
      sub_253170AB0(v2, v3, 0xFFu);
      v7 = *(v0 + 48);
      if (v7 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      sub_25316D004(v5, v6, *(v0 + 48));
      LOBYTE(v4) = v10;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v17 = MEMORY[0x277D84B78];
    v18 = sub_2531DAC24();
    swift_allocError();
    v20 = v19;
    *v19 = v17;
    v21 = *(v0 + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v21;
    if (v21 >> 62)
    {
      v23 = 0;
      if (v21 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v23, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        *(v22 + 32) = v23 + 1;
        sub_25316B2C4(v22 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
        swift_willThrow();
        return;
      }

      v24 = ((v21 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = (v21 + 64);
    }

    v23 = *v24;

    goto LABEL_14;
  }

LABEL_6:
  v15 = *(v0 + 8);
  v16 = *(v0 + 24);
  sub_2531A8148(v2, v3, v4);
  sub_25319FA74(v5, v6, v7, v15, v16, 0, 0, 2);
  sub_25316D2BC(v5, v6, v7);
  if (!v1)
  {
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 24) = v16 + 1;
      sub_253170AB0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531AA0E8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = v2;
  v6 = v3;
  LOBYTE(v7) = *(v0 + 48);
  if (v4 == 255)
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v9 < *(v8 + 16))
    {
      if (v9 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      v11 = v8 + 24 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 48);
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
      *(v0 + 48) = v14;
      sub_25316D004(v12, v13, v14);
      sub_253170AB0(v2, v3, 0xFFu);
      v7 = *(v0 + 48);
      if (v7 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      sub_25316D004(v5, v6, *(v0 + 48));
      LOBYTE(v4) = v10;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v17 = MEMORY[0x277D84C58];
    v18 = sub_2531DAC24();
    swift_allocError();
    v20 = v19;
    *v19 = v17;
    v21 = *(v0 + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v21;
    if (v21 >> 62)
    {
      v23 = 0;
      if (v21 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v23, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        *(v22 + 32) = v23 + 1;
        sub_25316B2C4(v22 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
        swift_willThrow();
        return;
      }

      v24 = ((v21 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = (v21 + 64);
    }

    v23 = *v24;

    goto LABEL_14;
  }

LABEL_6:
  v15 = *(v0 + 8);
  v16 = *(v0 + 24);
  sub_2531A8148(v2, v3, v4);
  sub_25319FDA0(v5, v6, v7, v15, v16, 0, 0, 2);
  sub_25316D2BC(v5, v6, v7);
  if (!v1)
  {
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 24) = v16 + 1;
      sub_253170AB0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531AA3C0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = v2;
  v6 = v3;
  LOBYTE(v7) = *(v0 + 48);
  if (v4 == 255)
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v9 < *(v8 + 16))
    {
      if (v9 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      v11 = v8 + 24 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 48);
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
      *(v0 + 48) = v14;
      sub_25316D004(v12, v13, v14);
      sub_253170AB0(v2, v3, 0xFFu);
      v7 = *(v0 + 48);
      if (v7 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      sub_25316D004(v5, v6, *(v0 + 48));
      LOBYTE(v4) = v10;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v17 = MEMORY[0x277D84CC0];
    v18 = sub_2531DAC24();
    swift_allocError();
    v20 = v19;
    *v19 = v17;
    v21 = *(v0 + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v21;
    if (v21 >> 62)
    {
      v23 = 0;
      if (v21 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v23, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        *(v22 + 32) = v23 + 1;
        sub_25316B2C4(v22 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
        swift_willThrow();
        return;
      }

      v24 = ((v21 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = (v21 + 64);
    }

    v23 = *v24;

    goto LABEL_14;
  }

LABEL_6:
  v15 = *(v0 + 8);
  v16 = *(v0 + 24);
  sub_2531A8148(v2, v3, v4);
  sub_2531A00CC(v5, v6, v7, v15, v16, 0, 0, 2);
  sub_25316D2BC(v5, v6, v7);
  if (!v1)
  {
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 24) = v16 + 1;
      sub_253170AB0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531AA698()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = v2;
  v6 = v3;
  LOBYTE(v7) = *(v0 + 48);
  if (v4 == 255)
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v9 < *(v8 + 16))
    {
      if (v9 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      v11 = v8 + 24 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 48);
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
      *(v0 + 48) = v14;
      sub_25316D004(v12, v13, v14);
      sub_253170AB0(v2, v3, 0xFFu);
      v7 = *(v0 + 48);
      if (v7 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      sub_25316D004(v5, v6, *(v0 + 48));
      LOBYTE(v4) = v10;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v17 = MEMORY[0x277D84D38];
    v18 = sub_2531DAC24();
    swift_allocError();
    v20 = v19;
    *v19 = v17;
    v21 = *(v0 + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v21;
    if (v21 >> 62)
    {
      v23 = 0;
      if (v21 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v23, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        *(v22 + 32) = v23 + 1;
        sub_25316B2C4(v22 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
        swift_willThrow();
        return;
      }

      v24 = ((v21 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = (v21 + 64);
    }

    v23 = *v24;

    goto LABEL_14;
  }

LABEL_6:
  v15 = *(v0 + 8);
  v16 = *(v0 + 24);
  sub_2531A8148(v2, v3, v4);
  sub_2531A03F8(v5, v6, v7, v15, v16, 0, 0, 2);
  sub_25316D2BC(v5, v6, v7);
  if (!v1)
  {
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 24) = v16 + 1;
      sub_253170AB0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

uint64_t sub_2531AA9CC(void *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = __ROR8__(*a1, 32);
  if (v3)
  {
    v6 = *a1;
  }

  v7 = v4 + 24;
  v8 = *(v4 + 16) + 1;
  while (--v8)
  {
    v9 = (v7 + 40);
    v10 = __ROR8__(*(v7 + 8), 32);
    v11 = *(v7 + 8);
    if (!*(v7 + 16))
    {
      v11 = v10;
    }

    v7 += 40;
    if (v11 == v6)
    {
      v12 = *(v9 - 2);
      v13 = *(v9 - 1);
      v14 = *v9;
      sub_25316D004(v12, v13, *v9);
      LOBYTE(v15) = sub_25319C3E4(v12, v13, v14, v5, v2, v3);
      sub_25316D2BC(v12, v13, v14);
      return v15 & 1;
    }
  }

  v16 = sub_2531DAC24();
  swift_allocError();
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18);
  *(v18 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v18 + 32) = sub_253168DD0();
  *v18 = v2;
  *(v18 + 8) = v3;
  sub_25316B2C4(v5);
  sub_2531DABC4();

  v22[0] = 0xD00000000000001DLL;
  v22[1] = 0x80000002531DCC40;
  v19 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v19);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v20 = sub_2531DAF34();
  MEMORY[0x259BFE570](v20);

  v15 = v22;
  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84158], v16);
  swift_willThrow();
  return v15 & 1;
}

unint64_t *sub_2531AAC58(void *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *v1;
  v8 = v3[1];
  v7 = v3[2];
  v9 = __ROR8__(*a1, 32);
  if (v5)
  {
    v9 = *a1;
  }

  v10 = v7 + 24;
  v11 = *(v7 + 16) + 1;
  do
  {
    if (!--v11)
    {
      v19 = sub_2531DAC24();
      swift_allocError();
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18);
      *(v21 + 24) = &_s3TagO14CodingKeyProxyVN;
      *(v21 + 32) = sub_253168DD0();
      *v21 = v4;
      *(v21 + 8) = v5;
      sub_25316B2C4(v8);
      sub_2531DABC4();

      v25[0] = 0xD00000000000001DLL;
      v25[1] = 0x80000002531DCC40;
      v22 = MTR.Tag.description.getter();
      MEMORY[0x259BFE570](v22);

      MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
      sub_2531690C0();
      v23 = sub_2531DAF34();
      MEMORY[0x259BFE570](v23);

      v6 = v25;
      MEMORY[0x259BFE570](11817, 0xE200000000000000);
      sub_2531DAC14();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84158], v19);
      swift_willThrow();
      return v6;
    }

    v12 = (v10 + 40);
    v13 = __ROR8__(*(v10 + 8), 32);
    v14 = *(v10 + 8);
    if (!*(v10 + 16))
    {
      v14 = v13;
    }

    v10 += 40;
  }

  while (v14 != v9);
  v15 = *(v12 - 2);
  v16 = *(v12 - 1);
  v17 = *v12;
  sub_25316D004(v15, v16, *v12);
  v18 = sub_2531A758C(v15, v16, v17, v8, v4, v5);
  if (!v2)
  {
    v6 = v18;
  }

  sub_25316D2BC(v15, v16, v17);
  return v6;
}

double sub_2531AAF08(void *a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(v1 + 8);
  v5 = *(v1 + 16);
  v7 = __ROR8__(*a1, 32);
  if (v4)
  {
    v7 = *a1;
  }

  v8 = v5 + 24;
  v9 = *(v5 + 16) + 1;
  while (--v9)
  {
    v10 = (v8 + 40);
    v11 = __ROR8__(*(v8 + 8), 32);
    v12 = *(v8 + 8);
    if (!*(v8 + 16))
    {
      v12 = v11;
    }

    v8 += 40;
    if (v12 == v7)
    {
      v13 = *(v10 - 2);
      v14 = *(v10 - 1);
      v15 = *v10;
      sub_25316D004(v13, v14, *v10);
      sub_25319C934(v13, v14, v15, v6, v3, v4);
      v2 = v16;
      sub_25316D2BC(v13, v14, v15);
      return v2;
    }
  }

  v17 = sub_2531DAC24();
  swift_allocError();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18);
  *(v19 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v19 + 32) = sub_253168DD0();
  *v19 = v3;
  *(v19 + 8) = v4;
  sub_25316B2C4(v6);
  sub_2531DABC4();

  v20 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v20);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v21 = sub_2531DAF34();
  MEMORY[0x259BFE570](v21);

  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84158], v17);
  swift_willThrow();
  return v2;
}

float sub_2531AB19C(void *a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(v1 + 8);
  v5 = *(v1 + 16);
  v7 = __ROR8__(*a1, 32);
  if (v4)
  {
    v7 = *a1;
  }

  v8 = v5 + 24;
  v9 = *(v5 + 16) + 1;
  while (--v9)
  {
    v10 = (v8 + 40);
    v11 = __ROR8__(*(v8 + 8), 32);
    v12 = *(v8 + 8);
    if (!*(v8 + 16))
    {
      v12 = v11;
    }

    v8 += 40;
    if (v12 == v7)
    {
      v13 = *(v10 - 2);
      v14 = *(v10 - 1);
      v15 = *v10;
      sub_25316D004(v13, v14, *v10);
      sub_25319CE8C(v13, v14, v15, v6, v3, v4);
      v2 = v16;
      sub_25316D2BC(v13, v14, v15);
      return v2;
    }
  }

  v17 = sub_2531DAC24();
  swift_allocError();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18);
  *(v19 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v19 + 32) = sub_253168DD0();
  *v19 = v3;
  *(v19 + 8) = v4;
  sub_25316B2C4(v6);
  sub_2531DABC4();

  v20 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v20);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v21 = sub_2531DAF34();
  MEMORY[0x259BFE570](v21);

  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84158], v17);
  swift_willThrow();
  return v2;
}

unint64_t *sub_2531AB430(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = __ROR8__(*a1, 32);
  if (*(a1 + 8))
  {
    v8 = *a1;
  }

  v9 = v6 + 24;
  v10 = *(v6 + 16) + 1;
  while (--v10)
  {
    v11 = (v9 + 40);
    v12 = __ROR8__(*(v9 + 8), 32);
    v13 = *(v9 + 8);
    if (!*(v9 + 16))
    {
      v13 = v12;
    }

    v9 += 40;
    if (v13 == v8)
    {
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;
      sub_25316D004(v14, v15, *v11);
      v17 = a2(v14, v15, v16, v7, v4, v5);
      sub_25316D2BC(v14, v15, v16);
      return v17;
    }
  }

  v18 = sub_2531DAC24();
  swift_allocError();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18);
  *(v20 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v20 + 32) = sub_253168DD0();
  *v20 = v4;
  *(v20 + 8) = v5;
  sub_25316B2C4(v7);
  sub_2531DABC4();

  v24[0] = 0xD00000000000001DLL;
  v24[1] = 0x80000002531DCC40;
  v21 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v21);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v22 = sub_2531DAF34();
  MEMORY[0x259BFE570](v22);

  v17 = v24;
  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84158], v18);
  swift_willThrow();
  return v17;
}

unint64_t *sub_2531AB6C4(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = __ROR8__(*a1, 32);
  if (*(a1 + 8))
  {
    v8 = *a1;
  }

  v9 = v6 + 24;
  v10 = *(v6 + 16) + 1;
  while (--v10)
  {
    v11 = (v9 + 40);
    v12 = __ROR8__(*(v9 + 8), 32);
    v13 = *(v9 + 8);
    if (!*(v9 + 16))
    {
      v13 = v12;
    }

    v9 += 40;
    if (v13 == v8)
    {
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;
      sub_25316D004(v14, v15, *v11);
      v17 = a2(v14, v15, v16, v7, v4, v5);
      sub_25316D2BC(v14, v15, v16);
      return v17;
    }
  }

  v18 = sub_2531DAC24();
  swift_allocError();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18);
  *(v20 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v20 + 32) = sub_253168DD0();
  *v20 = v4;
  *(v20 + 8) = v5;
  sub_25316B2C4(v7);
  sub_2531DABC4();

  v24[0] = 0xD00000000000001DLL;
  v24[1] = 0x80000002531DCC40;
  v21 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v21);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v22 = sub_2531DAF34();
  MEMORY[0x259BFE570](v22);

  v17 = v24;
  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84158], v18);
  swift_willThrow();
  return v17;
}

unint64_t *sub_2531AB958(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = __ROR8__(*a1, 32);
  if (*(a1 + 8))
  {
    v8 = *a1;
  }

  v9 = v6 + 24;
  v10 = *(v6 + 16) + 1;
  while (--v10)
  {
    v11 = (v9 + 40);
    v12 = __ROR8__(*(v9 + 8), 32);
    v13 = *(v9 + 8);
    if (!*(v9 + 16))
    {
      v13 = v12;
    }

    v9 += 40;
    if (v13 == v8)
    {
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;
      sub_25316D004(v14, v15, *v11);
      v17 = a2(v14, v15, v16, v7, v4, v5);
      sub_25316D2BC(v14, v15, v16);
      return v17;
    }
  }

  v18 = sub_2531DAC24();
  swift_allocError();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18);
  *(v20 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v20 + 32) = sub_253168DD0();
  *v20 = v4;
  *(v20 + 8) = v5;
  sub_25316B2C4(v7);
  sub_2531DABC4();

  v24[0] = 0xD00000000000001DLL;
  v24[1] = 0x80000002531DCC40;
  v21 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v21);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v22 = sub_2531DAF34();
  MEMORY[0x259BFE570](v22);

  v17 = v24;
  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84158], v18);
  swift_willThrow();
  return v17;
}

unint64_t *sub_2531ABBEC(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = __ROR8__(*a1, 32);
  if (*(a1 + 8))
  {
    v8 = *a1;
  }

  v9 = v6 + 24;
  v10 = *(v6 + 16) + 1;
  while (--v10)
  {
    v11 = (v9 + 40);
    v12 = __ROR8__(*(v9 + 8), 32);
    v13 = *(v9 + 8);
    if (!*(v9 + 16))
    {
      v13 = v12;
    }

    v9 += 40;
    if (v13 == v8)
    {
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;
      sub_25316D004(v14, v15, *v11);
      v17 = a2(v14, v15, v16, v7, v4, v5);
      sub_25316D2BC(v14, v15, v16);
      return v17;
    }
  }

  v18 = sub_2531DAC24();
  swift_allocError();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18);
  *(v20 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v20 + 32) = sub_253168DD0();
  *v20 = v4;
  *(v20 + 8) = v5;
  sub_25316B2C4(v7);
  sub_2531DABC4();

  v24[0] = 0xD00000000000001DLL;
  v24[1] = 0x80000002531DCC40;
  v21 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v21);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v22 = sub_2531DAF34();
  MEMORY[0x259BFE570](v22);

  v17 = v24;
  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84158], v18);
  swift_willThrow();
  return v17;
}

uint64_t sub_2531ABE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_23HomeKitDaemonFoundation3MTRO5ValueOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 0xA)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
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

uint64_t sub_2531ABF08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2531ABF50(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2531ABFD8()
{
  result = qword_27F58DB40;
  if (!qword_27F58DB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58DB38, &qword_2531E64F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DB40);
  }

  return result;
}

uint64_t MTR.Value.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25316B6E4(a1, &v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DB48, &qword_2531E64F8);
  if (swift_dynamicCast())
  {
    sub_253168604(v10, v14);
    v5 = v15;
    v6 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v6 + 16))(&v12, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (!v2)
    {
      v7 = v13;
      *a2 = v12;
      *(a2 + 16) = v7;
    }

    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_2531AC3F8(v10, &qword_27F58DB50, &qword_2531E6500);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000048, 0x80000002531DCD80);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v9 = sub_2531DB544();
    MEMORY[0x259BFE570](v9);

    MEMORY[0x259BFE570](41, 0xE100000000000000);
    result = sub_2531DAD34();
    __break(1u);
  }

  return result;
}

uint64_t MTR.Value.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  sub_25316B6E4(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DB58, &qword_2531E6508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DB60, &qword_2531E6510);
  if (swift_dynamicCast())
  {
    sub_253168604(v10, v14);
    v6 = v15;
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v12[0] = v3;
    v12[1] = v4;
    v13 = v5;
    (*(v7 + 16))(v12, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_2531AC3F8(v10, &qword_27F58DB68, &qword_2531E6518);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000048, 0x80000002531DCDD0);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v9 = sub_2531DB544();
    MEMORY[0x259BFE570](v9);

    MEMORY[0x259BFE570](41, 0xE100000000000000);
    result = sub_2531DAD34();
    __break(1u);
  }

  return result;
}

uint64_t sub_2531AC3F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t REST.StaticURLComponents.init(urlString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((*(a4 + 24))(a3, a4) == a1 && v9 == a2)
  {
  }

  else
  {
    v11 = sub_2531DB144();

    if ((v11 & 1) == 0)
    {
      v12 = 1;
      goto LABEL_9;
    }
  }

  (*(a4 + 16))(a3, a4);
  v12 = 0;
LABEL_9:
  v13 = *(*(a3 - 8) + 56);

  return v13(a5, v12, 1, a3);
}

uint64_t static MTR.Cluster.AppleAlvaradoGuidanceConsumer.Thermostat.readAlvaradoStateEnabled(device:endpoint:)(void *a1, __int16 *a2)
{
  v3 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v8[0] = v3;
  v9 = 323615749;
  MTR.Device.readCachedAttributeValue<A>(from:of:)(v8, v4, MEMORY[0x277D839B0], v5, MEMORY[0x277D839D0], &v10);
  if (!v2)
  {
    v6 = v10;
  }

  return v6 & 1;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadStateEnum.description.getter()
{
  if (*v0)
  {
    return 28271;
  }

  else
  {
    return 6710895;
  }
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadStateEnum.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

_BYTE *sub_2531AC780@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.signalID.getter()
{
  v1 = *(v0 + 8);
  sub_2531AC91C(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_2531AC91C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25316D050(result, a2);
  }

  return result;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.signalID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2531AC968(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_2531AC968(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25316D308(result, a2);
  }

  return result;
}

unint64_t sub_2531AC99C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_253167F80(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2531AC9C8()
{
  v1 = 0x7461745364616F6CLL;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x44496C616E676973;
  }

  if (*v0)
  {
    v1 = 0x6576654C64616F6CLL;
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

uint64_t sub_2531ACA4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2531AE924(a2, a3);
  *a1 = result;
  return result;
}

unint64_t sub_2531ACA74@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_253167F80(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2531ACA9C(uint64_t a1)
{
  v2 = sub_2531AE32C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2531ACAD8(uint64_t a1)
{
  v2 = sub_2531AE32C();

  return MEMORY[0x2821FE720](a1, v2);
}

double static MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.loadEventStruct(from:)@<D0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_2531DA6D4();
  if (!*(a1 + 16))
  {

LABEL_6:
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 2;
    return result;
  }

  v6 = sub_25317D998(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_25317E5F0(*(a1 + 56) + 32 * v6, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  MTR.Value.init(from:)(v14, &v14);
  v10 = v14;
  v11 = v15;
  v12 = v16;
  sub_2531730E4(v14, v15, v16, MEMORY[0x277D84F98], v17);
  sub_25316D2BC(v10, v11, v12);
  v13 = 0x10000;
  if (!v17[2])
  {
    v13 = 0;
  }

  *a2 = v17[0] | (v17[1] << 8) | v13;
  result = v18[0];
  *(a2 + 1) = *v18;
  return result;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.guidanceID.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if (v4 >> 60 != 15)
  {
    v6 = *(v2 + 8);
    v7 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v7 != 2)
      {
        goto LABEL_21;
      }

      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      v10 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
LABEL_13:
        sub_25316D050(v6, v4);
        if (v10 == 16)
        {
LABEL_14:
          if (v7 == 2)
          {
            v15 = *(v6 + 16);
            v16 = sub_2531DA044();
            if (!v16)
            {
LABEL_34:
              sub_2531DA064();
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            v17 = v16;
            v18 = sub_2531DA074();
            if (!__OFSUB__(v15, v18))
            {
              v19 = v15 - v18 + v17;
              sub_2531DA064();
              if (v19)
              {
                goto LABEL_25;
              }

              goto LABEL_35;
            }

            goto LABEL_32;
          }

          if (v7 != 1)
          {
            goto LABEL_25;
          }

          if (v6 <= v6 >> 32)
          {
            v11 = sub_2531DA044();
            if (!v11)
            {
LABEL_36:
              result = sub_2531DA064();
              __break(1u);
              return result;
            }

            v12 = v11;
            v13 = sub_2531DA074();
            if (!__OFSUB__(v6, v13))
            {
              v14 = v6 - v13 + v12;
              sub_2531DA064();
              if (!v14)
              {
                __break(1u);
                goto LABEL_21;
              }

LABEL_25:
              sub_2531DA1E4();
              v5 = 0;
              goto LABEL_26;
            }

            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_21:
        v5 = 1;
LABEL_26:
        sub_2531AC968(v6, v4);
        goto LABEL_27;
      }

      __break(1u);
    }

    else if (!v7)
    {
      if (BYTE6(v4) != 16)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    if (__OFSUB__(HIDWORD(v6), v6))
    {
      __break(1u);
      goto LABEL_31;
    }

    v10 = HIDWORD(v6) - v6;
    goto LABEL_13;
  }

  v5 = 1;
LABEL_27:
  v20 = sub_2531DA204();
  v21 = *(*(v20 - 8) + 56);

  return v21(a2, v5, 1, v20);
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.description.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_2531AC91C(*(v0 + 1), *(v0 + 2));
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD00000000000001BLL, 0x80000002531DCE20);
  if (v1)
  {
    v3 = 28271;
  }

  else
  {
    v3 = 6710895;
  }

  if (v1)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x259BFE570](v3, v4);

  MEMORY[0x259BFE570](0x654C64616F6C202CLL, 0xED0000203A6C6576);
  v5 = sub_2531DAF34();
  MEMORY[0x259BFE570](v5);

  MEMORY[0x259BFE570](0xD000000000000017, 0x80000002531DCE40);
  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x259BFE570](v6, v7);

  MEMORY[0x259BFE570](0x6C616E676973202CLL, 0xEC000000203A4449);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D3A0, &qword_2531E29A0);
  v8 = sub_2531DA6F4();
  MEMORY[0x259BFE570](v8);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DB70, &qword_2531E6680);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v19 = v1[1];
  v16 = v1[2];
  v9 = *(v1 + 1);
  v14 = *(v1 + 2);
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531AE32C();
  sub_2531DB4D4();
  LOBYTE(v17) = v8;
  v20 = 0;
  sub_2531AE380();
  sub_2531DAED4();
  if (!v2)
  {
    v11 = v14;
    v10 = v15;
    LOBYTE(v17) = 1;
    sub_2531DAEE4();
    LOBYTE(v17) = 2;
    sub_2531DAEC4();
    v17 = v10;
    v18 = v11;
    v20 = 3;
    sub_2531AC91C(v10, v11);
    sub_25317E240();
    sub_2531DAE94();
    sub_2531AC968(v17, v18);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB414();
  if (v2 >> 60 == 15)
  {
    return sub_2531DB414();
  }

  sub_2531DB414();

  return sub_2531DA164();
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB414();
  if (v1 >> 60 != 15)
  {
    sub_2531DA164();
  }

  return sub_2531DB454();
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DB88, &qword_2531E6688);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531AE32C();
  sub_2531DB4B4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v18 = 0;
    sub_2531AE3D4();
    sub_2531DAE14();
    v9 = v16[0];
    LOBYTE(v16[0]) = 1;
    v10 = sub_2531DAE24();
    LOBYTE(v16[0]) = 2;
    v17 = sub_2531DAE04();
    v18 = 3;
    sub_253175240();
    sub_2531DADD4();
    v17 &= 1u;
    (*(v6 + 8))(v8, v5);
    v12 = v16[0];
    v13 = v16[1];
    sub_2531AC968(0, 0xF000000000000000);
    *a2 = v9;
    *(a2 + 1) = v10;
    *(a2 + 2) = v17;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    sub_2531AC91C(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v14 = v12;
    v15 = v13;
  }

  return sub_2531AC968(v14, v15);
}

uint64_t sub_2531AD700(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB414();
  if (v2 >> 60 == 15)
  {
    return sub_2531DB414();
  }

  sub_2531DB414();

  return sub_2531DA164();
}

uint64_t sub_2531AD7A4(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB414();
  if (v2 >> 60 != 15)
  {
    sub_2531DA164();
  }

  return sub_2531DB454();
}

uint64_t sub_2531AD88C()
{
  sub_2531DB3F4();
  MEMORY[0x259BFF230](0);
  return sub_2531DB454();
}

uint64_t sub_2531AD8F8(uint64_t a1)
{
  sub_2531DB3F4();
  MEMORY[0x259BFF230](0);
  return sub_2531DB454();
}

uint64_t sub_2531AD970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000002531DCEC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2531DB144();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2531ADA20(uint64_t a1)
{
  v2 = sub_2531AE428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2531ADA5C(uint64_t a1)
{
  v2 = sub_2531AE428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.ReducePeriodEventStruct.init(endOfCurrentReducePeriod:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = sub_2531DA1A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  if (qword_27F58D0E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_27F58DC20);
  sub_2531DA174();
  v9 = v8;
  v10 = v8;
  v11 = *(v5 + 8);
  v11(a1, v4);
  result = (v11)(v7, v4);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 < 4294967300.0)
  {
    *a2 = v9;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *MTR.Cluster.AppleAlvaradoGuidanceConsumer.ReducePeriodEventStruct.init(from:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_2531DA6D4();
  if (!*(a1 + 16))
  {

    goto LABEL_7;
  }

  v7 = sub_25317D998(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_25317E5F0(*(a1 + 56) + 32 * v7, &v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v14 = objc_opt_self();
    v15 = sub_2531DA6C4();
    [v14 hmfErrorWithCode:3 reason:v15];

    return swift_willThrow();
  }

  result = MTR.Value.init(from:)(v16, &v17);
  if (!v2)
  {
    v11 = v17;
    v12 = v18;
    v13 = v19;
    sub_253173308(v17, v18, v19, MEMORY[0x277D84F98], &v16);
    result = sub_25316D2BC(v11, v12, v13);
    *a2 = v16;
  }

  return result;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.ReducePeriodEventStruct.description.getter()
{
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD000000000000032, 0x80000002531DCE60);
  sub_25317289C();
  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.ReducePeriodEventStruct.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DB98, &qword_2531E6690);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531AE428();
  sub_2531DB4D4();
  v10 = v7;
  sub_25317E4F4();
  sub_2531DAED4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.ReducePeriodEventStruct.hashValue.getter()
{
  sub_2531DB3F4();
  sub_2531DB434();
  return sub_2531DB454();
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.ReducePeriodEventStruct.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DBA8, &qword_2531E6698);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531AE428();
  sub_2531DB4B4();
  if (!v2)
  {
    sub_2531757D4();
    sub_2531DAE14();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s23HomeKitDaemonFoundation3MTRO7ClusterO29AppleAlvaradoGuidanceConsumerO15LoadEventStructV2eeoiySbAI_AItFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    v6 = *(a1 + 1);
    v5 = *(a1 + 2);
    v8 = *(a2 + 1);
    v7 = *(a2 + 2);
    if (v5 >> 60 == 15)
    {
      if (v7 >> 60 == 15)
      {
        sub_2531AC91C(v6, v5);
        sub_2531AC91C(v8, v7);
        sub_2531AC968(v6, v5);
        return 1;
      }
    }

    else if (v7 >> 60 != 15)
    {
      sub_2531AC91C(v6, v5);
      sub_2531AC91C(v8, v7);
      v9 = sub_25317DEF0(v6, v5, v8, v7);
      sub_2531AC968(v8, v7);
      sub_2531AC968(v6, v5);
      return v9;
    }

    sub_2531AC91C(v6, v5);
    sub_2531AC91C(v8, v7);
    sub_2531AC968(v6, v5);
    sub_2531AC968(v8, v7);
    return 0;
  }

  return result;
}

unint64_t sub_2531AE32C()
{
  result = qword_27F58DB78;
  if (!qword_27F58DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DB78);
  }

  return result;
}

unint64_t sub_2531AE380()
{
  result = qword_27F58DB80;
  if (!qword_27F58DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DB80);
  }

  return result;
}

unint64_t sub_2531AE3D4()
{
  result = qword_27F58DB90;
  if (!qword_27F58DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DB90);
  }

  return result;
}

unint64_t sub_2531AE428()
{
  result = qword_27F58DBA0;
  if (!qword_27F58DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBA0);
  }

  return result;
}

unint64_t sub_2531AE480()
{
  result = qword_27F58DBB0;
  if (!qword_27F58DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBB0);
  }

  return result;
}

unint64_t sub_2531AE4D8()
{
  result = qword_27F58DBB8;
  if (!qword_27F58DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBB8);
  }

  return result;
}

unint64_t sub_2531AE530()
{
  result = qword_27F58DBC0;
  if (!qword_27F58DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2531AE5DC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2531AE620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2531AE6C4(uint64_t a1)
{
  result = sub_2531AE32C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2531AE6F0()
{
  result = qword_27F58DBC8;
  if (!qword_27F58DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBC8);
  }

  return result;
}

unint64_t sub_2531AE744(uint64_t a1)
{
  result = sub_2531AE428();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2531AE770()
{
  result = qword_27F58DBD0;
  if (!qword_27F58DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBD0);
  }

  return result;
}

unint64_t sub_2531AE7C8()
{
  result = qword_27F58DBD8;
  if (!qword_27F58DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBD8);
  }

  return result;
}

unint64_t sub_2531AE820()
{
  result = qword_27F58DBE0;
  if (!qword_27F58DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBE0);
  }

  return result;
}

unint64_t sub_2531AE878()
{
  result = qword_27F58DBE8;
  if (!qword_27F58DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBE8);
  }

  return result;
}

unint64_t sub_2531AE8D0()
{
  result = qword_27F58DBF0;
  if (!qword_27F58DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBF0);
  }

  return result;
}

uint64_t sub_2531AE924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065;
  if (v4 || (sub_2531DB144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576654C64616F6CLL && a2 == 0xE90000000000006CLL || (sub_2531DB144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002531DCEA0 == a2 || (sub_2531DB144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44496C616E676973 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2531DB144();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_2531AEA9C()
{
  result = qword_27F58DBF8;
  if (!qword_27F58DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBF8);
  }

  return result;
}

void *MTRDeviceController.Adapter.controllerNodeID.getter@<X0>(uint64_t a1@<X8>)
{
  result = [*v1 controllerNodeID];
  if (result)
  {
    v4 = result;
    v5 = [result unsignedLongLongValue];

    result = MTR.Node.ID.init(rawValue:)(v5, &v8);
    v6 = v8;
    v7 = v9;
  }

  else
  {
    v6 = 0;
    v7 = -1;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  return result;
}

id MTRDeviceController.Adapter.makeDevice(nodeID:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *v1;
  if (v3 <= 2)
  {
    if (*(a1 + 8))
    {
      if (v3 == 1)
      {
        v2 = *a1 | 0xFFFFFFFE00000000;
      }

      else
      {
        v10 = v2 | 0xFF00;
        if (BYTE2(v2) != 1)
        {
          v10 = 0;
        }

        if (BYTE2(v2))
        {
          LOWORD(v11) = v10;
        }

        else
        {
          v11 = *a1;
        }

        v2 = v11 | 0xFFFFFFFFFFFF0000;
      }
    }
  }

  else
  {
    if (v3 == 5)
    {
      v5 = *a1;
    }

    else
    {
      v5 = 0;
    }

    v6 = *a1 | 0xFFFFFFFB00000000;
    if (v3 != 3)
    {
      v6 = *a1 | 0xFFFFFFFD00000000;
    }

    if (*(a1 + 8) <= 4u)
    {
      v2 = v6;
    }

    else
    {
      v2 = v5;
    }
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v8 = [objc_opt_self() deviceWithNodeID:v7 controller:v4];

  return v8;
}

uint64_t MTRDeviceController.Adapter.addServerEndpoint(_:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2531AECAC, 0, 0);
}

uint64_t sub_2531AECAC()
{
  if (![*(v0 + 24) addServerEndpoint_])
  {
    v2 = objc_opt_self();
    v3 = sub_2531DA6C4();
    [v2 hmfErrorWithCode:11 reason:v3];

    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MTRDeviceController.Adapter.removeServerEndpoint(_:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2531AEDB8, 0, 0);
}

uint64_t sub_2531AEDB8()
{
  [*(v0 + 24) removeServerEndpoint_];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MTRDeviceController.Adapter.removeServerEndpoint(_:queue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a3;
  v5[11] = a4;
  v5[8] = a1;
  v5[9] = a2;
  v5[12] = *v4;
  return MEMORY[0x2822009F8](sub_2531AEE50, 0, 0);
}

uint64_t sub_2531AEE50()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v0[8] + 16);
  v0[6] = v0[10];
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2531AEF50;
  v0[5] = &block_descriptor_1;
  v5 = _Block_copy(v0 + 2);

  [v2 removeServerEndpoint:v4 queue:v3 completion:v5];
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_2531AEF50(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2531AEFB0(uint64_t a1)
{
  v13 = v2;
  v4 = [*v1 controllerNodeID];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 unsignedLongLongValue];

    MTR.Node.ID.init(rawValue:)(v6, &v11);
    v7 = v11;
    v8 = v12;
  }

  else
  {
    v7 = 0;
    v8 = -1;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  v9 = *(v2 + 8);

  return v9();
}

id sub_2531AF080@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = MTRDeviceController.Adapter.makeDevice(nodeID:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2531AF0A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_253170160;

  return MTRDeviceController.Adapter.addServerEndpoint(_:)(a1);
}

uint64_t sub_2531AF13C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2531AEDB8, 0, 0);
}

uint64_t sub_2531AF160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a3;
  v5[11] = a4;
  v5[8] = a1;
  v5[9] = a2;
  v5[12] = *v4;
  return MEMORY[0x2822009F8](sub_2531AF18C, 0, 0);
}

uint64_t sub_2531AF18C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v0[8] + 16);
  v0[6] = v0[10];
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2531AEF50;
  v0[5] = &block_descriptor_20_0;
  v5 = _Block_copy(v0 + 2);

  [v2 removeServerEndpoint:v4 queue:v3 completion:v5];
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

void *MTRDeviceController.Adapter.ServerAttribute.rawValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) value];
  v4 = sub_2531DA624();

  return MTR.Value.init(from:)(v4, a1);
}

void MTRDeviceController.Adapter.ServerAttribute.setRawValue(_:)()
{
  v1 = *(v0 + 16);
  v2 = MTR.Value.makeDataValue()();
  sub_253180BA0(v2);

  v3 = sub_2531DA604();

  [v1 setValue_];
}

void *sub_2531AF474@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) value];
  v4 = sub_2531DA624();

  return MTR.Value.init(from:)(v4, a1);
}

void sub_2531AF4F4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = *a1;
  LOBYTE(v8) = *(a1 + 16);
  v5 = MTR.Value.makeDataValue()();
  sub_253180BA0(v5);

  v6 = sub_2531DA604();

  [v4 setValue_];
}

void sub_2531AF5B4(SEL *a1@<X0>, unsigned int *a2@<X8>)
{
  v4 = [*(v2 + 16) *a1];
  v5 = [v4 unsignedIntValue];

  *a2 = v5;
}

uint64_t MTRDeviceController.Adapter.ServerCluster.__allocating_init(serverCluster:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_2531AF6F0(uint64_t *a1, SEL *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 4);
  sub_253181ED8(0, &qword_27F58DC08, 0x277CD51B0);
  v9 = v5;
  LOWORD(v10) = v6;
  v7 = MTRAccessGrant.init(from:)(&v9);
  if (v7)
  {
    v8 = v7;
    [*(v3 + 16) *a2];
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000012, 0x80000002531DCF50);
    sub_2531DAD24();
    MEMORY[0x259BFE570](0xD00000000000001ALL, 0x80000002531DCF70);
    sub_2531DAD34();
    __break(1u);
  }
}

uint64_t MTRDeviceController.Adapter.ServerCluster.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_2531AF8B4(SEL *a1@<X2>, unsigned int *a2@<X8>)
{
  v4 = [*(v2 + 16) *a1];
  v5 = [v4 unsignedIntValue];

  *a2 = v5;
}

void sub_2531AF934(SEL *a1@<X0>, unsigned __int16 *a2@<X8>)
{
  v4 = [*(v2 + 16) *a1];
  v5 = [v4 unsignedShortValue];

  *a2 = v5;
}

char *MTRDeviceController.Adapter.ServerEndpoint.deviceTypes.getter()
{
  v1 = [*(v0 + 16) deviceTypes];
  sub_253181ED8(0, &qword_27F58DC10, 0x277CD5340);
  v2 = sub_2531DA8A4();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v3 = sub_2531DAD44();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_2531B474C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v16;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259BFEA20](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 deviceTypeID];
      v10 = [v9 unsignedIntValue];

      v11 = [v8 deviceTypeRevision];
      v12 = [v11 unsignedShortValue];

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2531B474C((v13 > 1), v14 + 1, 1);
      }

      ++v5;
      *(v16 + 16) = v14 + 1;
      v15 = v16 + 8 * v14;
      *(v15 + 32) = v10;
      *(v15 + 36) = v12;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2531AFBA4(SEL *a1, unint64_t *a2, void *a3, uint64_t (*a4)(void))
{
  v8 = [*(v4 + 16) *a1];
  sub_253181ED8(0, a2, a3);
  v9 = sub_2531DA8A4();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v10 = sub_2531DAD44();
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  v15 = MEMORY[0x277D84F90];
  result = sub_2531DAC94();
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x259BFEA20](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      a4();
      *(swift_allocObject() + 16) = v14;
      sub_2531DAC64();
      sub_2531DACA4();
      sub_2531DACB4();
      sub_2531DAC74();
    }

    while (v10 != v12);

    return v15;
  }

  return result;
}

char *MTRDeviceController.Adapter.ServerEndpoint.accessGrants.getter()
{
  v1 = [*(v0 + 16) accessGrants];
  sub_253181ED8(0, &qword_27F58DC08, 0x277CD51B0);
  v2 = sub_2531DA8A4();

  if (v2 >> 62)
  {
    v3 = sub_2531DAD44();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_36:

    return MEMORY[0x277D84F90];
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_36;
  }

LABEL_3:
  v19 = MEMORY[0x277D84F90];
  result = sub_2531B476C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v19;
    while (1)
    {
      v7 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x259BFEA20](v5, v2) : *(v2 + 8 * v5 + 32);
      v8 = v7;
      v9 = [v7 subjectID];
      if (v9)
      {
        break;
      }

      LODWORD(v12) = [v8 grantedPrivilege];

      v12 = v12;
      v14 = 128;
LABEL_19:
      v17 = *(v19 + 16);
      v16 = *(v19 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2531B476C((v16 > 1), v17 + 1, 1);
      }

      ++v5;
      *(v19 + 16) = v17 + 1;
      v18 = v19 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v14;
      if (v3 == v5)
      {

        return v6;
      }
    }

    v10 = v9;
    v11 = [v9 unsignedLongLongValue];
    v12 = v11;
    if (v11)
    {
      if (v11 > 0xFFFFFFEFFFFFFFFFLL)
      {
        if (v11 >= 0xFFFFFFFB00000000)
        {
          if (v11 <= 0xFFFFFFFBFFFFFFFFLL)
          {
            v12 = v11;
            v13 = 3;
            goto LABEL_18;
          }

          if (v11 >= 0xFFFFFFFD00000000)
          {
            if (v11 <= 0xFFFFFFFDFFFFFFFFLL)
            {
              v12 = v11;
              v13 = 4;
              goto LABEL_18;
            }

            if (v11 <= 0xFFFFFFFEFFFFFFFFLL)
            {
              v12 = v11;
              v13 = 1;
              goto LABEL_18;
            }

            if (v11 >= 0xFFFFFFFFFFFF0000)
            {
              if (v11)
              {
                if (v11 > 0xFEFEu)
                {
                  v12 = v11 & 0x100FF;
                }

                else
                {
                  v12 = v11;
                }

                v13 = 2;
              }

              else
              {
                v13 = 2;
                v12 = 0x20000;
              }

              goto LABEL_18;
            }
          }
        }

        v13 = 5;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 6;
    }

LABEL_18:
    v15 = [v8 grantedPrivilege];

    v14 = v13 | (v15 << 8);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_2531B0008(int *a1, uint64_t (*a2)(void), SEL *a3)
{
  v3 = *a1;
  v4 = a2();
  v5 = v4;
  if (v4 >> 62)
  {
LABEL_15:
    v6 = sub_2531DAD44();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x259BFEA20](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return v8;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_12;
          }
        }

        v10 = [*(v8 + 16) *a3];
        v11 = [v10 unsignedIntValue];

        if (v11 == v3)
        {
          goto LABEL_13;
        }

        ++v7;
      }

      while (v9 != v6);
    }
  }

  return 0;
}

void sub_2531B0178(SEL *a1@<X2>, unsigned __int16 *a2@<X8>)
{
  v4 = [*(v2 + 16) *a1];
  v5 = [v4 unsignedShortValue];

  *a2 = v5;
}

uint64_t MTRDeviceController.Adapter.ServerEndpointFactory.makeReadOnlyAttribute(attributeID:initialValue:requiredPrivilege:)(unsigned int *a1, uint64_t *a2, unsigned __int8 a3)
{
  v4 = *a1;
  v5 = sub_2531DB484();
  v6 = MTR.Value.makeDataValue()();
  sub_253180BA0(v6);

  v7 = objc_allocWithZone(MEMORY[0x277CD54E0]);
  v8 = sub_2531DA604();

  v9 = [v7 initReadonlyAttributeWithID:v5 initialValue:v8 requiredPrivilege:a3];

  if (v9)
  {
    type metadata accessor for MTRDeviceController.Adapter.ServerAttribute();
    result = swift_allocObject();
    *(result + 16) = v9;
  }

  else
  {
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD00000000000002ALL, 0x80000002531DCF90);
    sub_253172A64(v4);
    MEMORY[0x259BFE570](0x2065756C6176203ALL, 0xE800000000000000);
    sub_2531DAD24();
    result = sub_2531DAD34();
    __break(1u);
  }

  return result;
}

uint64_t MTRDeviceController.Adapter.ServerEndpointFactory.makeCluster(clusterID:revision:attributes:)(unsigned int *a1, unsigned __int16 *a2, unint64_t a3)
{
  v4 = *a1;
  v5 = sub_2531DB484();
  v6 = sub_2531DB474();
  v7 = [objc_allocWithZone(MEMORY[0x277CD54E8]) initWithClusterID:v5 revision:v6];

  if (!v7)
  {
    goto LABEL_13;
  }

  if (a3 >> 62)
  {
    v4 = sub_2531DAD44();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_11:
    type metadata accessor for MTRDeviceController.Adapter.ServerCluster();
    result = swift_allocObject();
    *(result + 16) = v7;
    return result;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x259BFEA20](i, a3);
      }

      else
      {
        v9 = *(a3 + 8 * i + 32);
      }

      [v7 addAttribute_];
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD00000000000001ALL, 0x80000002531DCFC0);
  sub_253172A3C(v4);
  result = sub_2531DAD34();
  __break(1u);
  return result;
}

uint64_t MTRDeviceController.Adapter.ServerEndpointFactory.makeEndpoint(endpointID:deviceTypes:serverClusters:)(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  v19 = *a1;
  v21 = sub_2531DB474();
  v22 = MEMORY[0x277D84F90];
  v5 = *(a2 + 16);
  v20 = a2;
  if (v5)
  {
    v6 = a2 + 36;
    do
    {
      v7 = objc_allocWithZone(MEMORY[0x277CD5340]);
      v8 = sub_2531DB484();
      v9 = sub_2531DB474();
      v10 = [v7 initWithDeviceTypeID:v8 revision:v9];

      if (v10)
      {
        MEMORY[0x259BFE6B0]();
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2531DA8C4();
        }

        sub_2531DA904();
      }

      v6 += 8;
      --v5;
    }

    while (v5);
  }

  v11 = objc_allocWithZone(MEMORY[0x277CD54F0]);
  sub_253181ED8(0, &qword_27F58DC10, 0x277CD5340);
  v12 = sub_2531DA894();

  v13 = [v11 initWithEndpointID:v21 deviceTypes:v12];

  if (!v13)
  {
    goto LABEL_20;
  }

  if (a3 >> 62)
  {
    v14 = sub_2531DAD44();
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_18:
    type metadata accessor for MTRDeviceController.Adapter.ServerEndpoint();
    result = swift_allocObject();
    *(result + 16) = v13;
    return result;
  }

  v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x259BFEA20](i, a3);
      }

      else
      {
        v16 = *(a3 + 8 * i + 32);
      }

      [v13 addServerCluster_];
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_20:
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD00000000000001BLL, 0x80000002531DCFE0);
  sub_253172968(v19);
  MEMORY[0x259BFE570](0xD000000000000010, 0x80000002531DD000);
  v18 = MEMORY[0x259BFE6E0](v20, &type metadata for MTR.DeviceType);
  MEMORY[0x259BFE570](v18);

  result = sub_2531DAD34();
  __break(1u);
  return result;
}

uint64_t MTR.Time.EpochSeconds.init(_:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (qword_27F58D0E8 != -1)
  {
    swift_once();
  }

  v4 = sub_2531DA1A4();
  __swift_project_value_buffer(v4, qword_27F58DC20);
  sub_2531DA174();
  v6 = v5;
  v7 = v5;
  result = (*(*(v4 - 8) + 8))(a1, v4);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 < 4294967300.0)
  {
    *a2 = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2531B0B18()
{
  v0 = sub_2531DA1A4();
  __swift_allocate_value_buffer(v0, qword_27F58DC20);
  __swift_project_value_buffer(v0, qword_27F58DC20);
  return sub_2531DA194();
}

uint64_t MTR.Time.EpochSeconds.date.getter()
{
  v1 = *v0;
  if (qword_27F58D0E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2531DA1A4();
  v3 = __swift_project_value_buffer(v2, qword_27F58DC20);

  v4.n128_f64[0] = v1;
  return MEMORY[0x28211D9B8](v3, v4);
}

uint64_t MTR.Time.EpochSeconds.description.getter()
{
  sub_2531DABC4();

  strcpy(v2, "EpochSeconds(");
  v0 = sub_2531DAF34();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return v2[0];
}

unint64_t sub_2531B0D5C()
{
  result = qword_27F58DC38;
  if (!qword_27F58DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC38);
  }

  return result;
}

unint64_t sub_2531B0DD4()
{
  result = qword_27F58DC40;
  if (!qword_27F58DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC40);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t MTR.Vendor.ID.description.getter()
{
  sub_253168D7C();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  return 30768;
}

uint64_t MTR.Vendor.ID.debugDescription.getter()
{
  strcpy(v2, "Vendor.ID(0x");
  sub_253168D7C();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return v2[0];
}

unint64_t sub_2531B1054()
{
  result = qword_27F58DC48;
  if (!qword_27F58DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC48);
  }

  return result;
}

uint64_t sub_2531B10A8()
{
  strcpy(v2, "Vendor.ID(0x");
  sub_253168D7C();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return v2[0];
}

unint64_t sub_2531B115C()
{
  result = qword_27F58DC50;
  if (!qword_27F58DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC50);
  }

  return result;
}

uint64_t MTR.Endpoint.ID.description.getter()
{
  sub_2531DABC4();

  strcpy(v2, "Endpoint.ID(0x");
  sub_253168D7C();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return v2[0];
}

unint64_t sub_2531B1330()
{
  result = qword_27F58DC58;
  if (!qword_27F58DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC58);
  }

  return result;
}

unint64_t sub_2531B13A8()
{
  result = qword_27F58DC60;
  if (!qword_27F58DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC60);
  }

  return result;
}

unint64_t UUIDRegexComponent.consuming(_:startingAt:in:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v33 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DC68, &qword_2531E72A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_2531DA204();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2531B16E4(a3, a1, a2);
  v16 = v15;
  result = sub_2531DAB04();
  if (v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = result;
  }

  if (v19 >> 14 < v14 >> 14)
  {
    __break(1u);
  }

  else
  {
    v20 = sub_2531DAB14();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    MEMORY[0x259BFE550](v20, v22, v24, v26);
    sub_2531DA1B4();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      sub_2531B1730(v9);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DC70, &qword_2531E72A8);
      return (*(*(v27 - 8) + 56))(v33, 1, 1, v27);
    }

    else
    {
      v28 = *(v11 + 32);
      v28(v13, v9, v10);

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DC70, &qword_2531E72A8);
      v30 = *(v29 + 48);
      v31 = v33;
      *v33 = v22;
      v28(&v31[v30], v13, v10);
      return (*(*(v29 - 8) + 56))(v31, 0, 1, v29);
    }
  }

  return result;
}

uint64_t sub_2531B16E4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_2531B1730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DC68, &qword_2531E72A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2531B17B0(uint64_t a1)
{
  v2 = sub_2531B1868();

  return MEMORY[0x282200AF8](a1, v2);
}

unint64_t sub_2531B1804()
{
  result = qword_27F58DC78;
  if (!qword_27F58DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC78);
  }

  return result;
}

unint64_t sub_2531B1868()
{
  result = qword_27F58DC80;
  if (!qword_27F58DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC80);
  }

  return result;
}

void *MTR.Value.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_2531DA0C4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v105 - v11;
  v13 = sub_2531DA6D4();
  if (!*(a1 + 16))
  {

LABEL_10:

    v28 = objc_opt_self();
    v29 = sub_2531DA6C4();
    v30 = [v28 hmfErrorWithCode:3 reason:v29];
    goto LABEL_11;
  }

  v111 = a2;
  v15 = sub_25317D998(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_25317E5F0(*(a1 + 56) + 32 * v15, &v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v110 = *(&v120[0] + 1);
  v18 = *&v120[0];
  v19 = sub_2531DA6D4();
  if (!*(a1 + 16))
  {

    goto LABEL_14;
  }

  v109 = v18;
  v21 = sub_25317D998(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {

    v18 = v109;
LABEL_14:
    v32 = v110;
    if (v18 == sub_2531DA6D4() && v32 == v33)
    {

LABEL_18:
      v35 = 0;
      v36 = 0;
      v37 = 10;
LABEL_19:
      v38 = v111;
      *v111 = v35;
      v38[1] = v36;
      *(v38 + 16) = v37;
      return result;
    }

    v34 = sub_2531DB144();

    if (v34)
    {
      goto LABEL_18;
    }

    v39 = objc_opt_self();
    v29 = sub_2531DA6C4();
    v30 = [v39 hmfErrorWithCode:3 reason:v29];
LABEL_11:
    v30;

    return swift_willThrow();
  }

  sub_25317E5F0(*(a1 + 56) + 32 * v21, &v116);

  sub_2531675D4(&v116, v120);
  v24 = sub_2531DA6D4();
  v26 = v109;
  v27 = v110;
  if (v24 == v109 && v25 == v110)
  {

    goto LABEL_22;
  }

  v40 = sub_2531DB144();

  if (v40)
  {
LABEL_22:
    sub_25317E5F0(v120, &v116);
    sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
    if (swift_dynamicCast())
    {

      v41 = v113;
      v35 = [v113 longLongValue];

      result = __swift_destroy_boxed_opaque_existential_1(v120);
      v36 = 0;
      v37 = 1;
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  if (sub_2531DA6D4() == v26 && v45 == v27)
  {

    goto LABEL_30;
  }

  v46 = sub_2531DB144();

  if (v46)
  {
LABEL_30:
    sub_25317E5F0(v120, &v116);
    sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
    if (swift_dynamicCast())
    {

      v47 = v113;
      v35 = [v113 unsignedLongLongValue];

      result = __swift_destroy_boxed_opaque_existential_1(v120);
      v36 = 0;
      v37 = 2;
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  if (sub_2531DA6D4() == v26 && v48 == v27)
  {

    goto LABEL_37;
  }

  v49 = sub_2531DB144();

  if (v49)
  {
LABEL_37:
    sub_25317E5F0(v120, &v116);
    sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
    if (swift_dynamicCast())
    {

      v50 = v113;
      [v113 floatValue];
      v52 = v51;

      result = __swift_destroy_boxed_opaque_existential_1(v120);
      v36 = 0;
      v35 = v52;
      v37 = 3;
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  if (sub_2531DA6D4() == v26 && v53 == v27)
  {

    goto LABEL_44;
  }

  v54 = sub_2531DB144();

  if (v54)
  {
LABEL_44:
    sub_25317E5F0(v120, &v116);
    sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
    if (swift_dynamicCast())
    {

      v55 = v113;
      [v113 doubleValue];
      v57 = v56;

      result = __swift_destroy_boxed_opaque_existential_1(v120);
      v36 = 0;
      v35 = v57;
      v37 = 4;
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  if (sub_2531DA6D4() == v26 && v58 == v27)
  {

    goto LABEL_51;
  }

  v59 = sub_2531DB144();

  if (v59)
  {
LABEL_51:
    sub_25317E5F0(v120, &v116);
    sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
    if (swift_dynamicCast())
    {

      v60 = v113;
      v61 = [v113 BOOLValue];

      result = __swift_destroy_boxed_opaque_existential_1(v120);
      v36 = 0;
      v37 = 0;
      v35 = v61;
      goto LABEL_19;
    }

LABEL_24:
    v42 = objc_opt_self();
    *&v116 = 0;
    *(&v116 + 1) = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD00000000000001ALL, 0x80000002531DD1B0);
    MEMORY[0x259BFE570](v26, v27);

    MEMORY[0x259BFE570](0xD000000000000017, 0x80000002531DD260);
    v43 = sub_2531DA6C4();

    v44 = [v42 hmfErrorWithCode:3 reason:v43];
LABEL_25:
    v44;

    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v120);
  }

  if (sub_2531DA6D4() == v26 && v62 == v27)
  {

LABEL_58:
    sub_25317E5F0(v120, &v116);
    sub_253181ED8(0, &qword_27F58DCA0, 0x277CCACA8);
    if (swift_dynamicCast())
    {

      v64 = v113;
      v35 = sub_2531DA6D4();
      v36 = v65;

      result = __swift_destroy_boxed_opaque_existential_1(v120);
      v37 = 5;
      goto LABEL_19;
    }

    v66 = objc_opt_self();
    *&v116 = 0;
    *(&v116 + 1) = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD00000000000001ALL, 0x80000002531DD1B0);
    MEMORY[0x259BFE570](v109, v110);

    MEMORY[0x259BFE570](0xD000000000000017, 0x80000002531DD240);
    v43 = sub_2531DA6C4();

    v44 = [v66 hmfErrorWithCode:3 reason:v43];
    goto LABEL_25;
  }

  v63 = sub_2531DB144();

  if (v63)
  {
    goto LABEL_58;
  }

  if (sub_2531DA6D4() == v109 && v67 == v110)
  {

LABEL_65:
    sub_25317E5F0(v120, &v116);
    sub_253181ED8(0, &qword_27F58DC98, 0x277CBEA90);
    if (swift_dynamicCast())
    {

      v69 = v113;
      v35 = sub_2531DA154();
      v36 = v70;

      result = __swift_destroy_boxed_opaque_existential_1(v120);
      v37 = 6;
      goto LABEL_19;
    }

    v71 = objc_opt_self();
    *&v116 = 0;
    *(&v116 + 1) = 0xE000000000000000;
    sub_2531DABC4();

    *&v116 = 0xD00000000000001ALL;
    *(&v116 + 1) = 0x80000002531DD1B0;
    MEMORY[0x259BFE570](v109, v110);

    MEMORY[0x259BFE570](0xD000000000000015, 0x80000002531DD220);
    v43 = sub_2531DA6C4();

    v44 = [v71 hmfErrorWithCode:3 reason:v43];
    goto LABEL_25;
  }

  v68 = sub_2531DB144();

  if (v68)
  {
    goto LABEL_65;
  }

  if (sub_2531DA6D4() == v109 && v72 == v110)
  {

LABEL_72:
    __swift_destroy_boxed_opaque_existential_1(v120);

    goto LABEL_18;
  }

  v73 = sub_2531DB144();

  if (v73)
  {
    goto LABEL_72;
  }

  if (sub_2531DA6D4() == v109 && v74 == v110)
  {
  }

  else
  {
    v75 = sub_2531DB144();

    if ((v75 & 1) == 0)
    {
      if (sub_2531DA6D4() == v109 && v89 == v110)
      {
      }

      else
      {
        v90 = sub_2531DB144();

        if ((v90 & 1) == 0)
        {
          result = __swift_destroy_boxed_opaque_existential_1(v120);
          v37 = 9;
          v35 = v109;
          v36 = v110;
          goto LABEL_19;
        }
      }

      sub_25317E5F0(v120, &v116);
      sub_253181ED8(0, &qword_27F58DC88, 0x277CBEA60);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v98 = objc_opt_self();
        *&v116 = 0;
        *(&v116 + 1) = 0xE000000000000000;
        sub_2531DABC4();
        MEMORY[0x259BFE570](0xD00000000000001ALL, 0x80000002531DD1B0);
        MEMORY[0x259BFE570](v109, v110);

        MEMORY[0x259BFE570](0xD000000000000026, 0x80000002531DD1D0);
        v43 = sub_2531DA6C4();

        v44 = [v98 hmfErrorWithCode:3 reason:v43];
        goto LABEL_25;
      }

      v91 = v113;
      v92 = [v113 count];
      v119 = MEMORY[0x277D84F90];
      v109 = swift_allocObject();
      sub_2531B4614(0, v92 & ~(v92 >> 63), 0);
      v110 = v119;
      v105[0] = v91;
      result = sub_2531DAAE4();
      if ((v92 & 0x8000000000000000) == 0)
      {
        if (v92)
        {
          v105[1] = sub_2531B4634();
          do
          {
            result = sub_2531DAB24();
            if (!v115)
            {
              goto LABEL_127;
            }

            sub_2531B3F70(&v113, &v112, &v116);
            if (v3)
            {

              (*(v7 + 8))(v10, v6);
              __swift_destroy_boxed_opaque_existential_1(v120);

              __swift_destroy_boxed_opaque_existential_1(&v113);
              return swift_deallocUninitializedObject();
            }

            v3 = 0;
            __swift_destroy_boxed_opaque_existential_1(&v113);
            v107 = v116;
            v93 = BYTE8(v116);
            v108 = v117;
            LODWORD(v106) = v118;
            v119 = v110;
            v95 = *(v110 + 16);
            v94 = *(v110 + 24);
            if (v95 >= v94 >> 1)
            {
              sub_2531B4614((v94 > 1), v95 + 1, 1);
              v110 = v119;
            }

            v96 = v110;
            *(v110 + 16) = v95 + 1;
            v97 = v96 + 40 * v95;
            *(v97 + 32) = v107;
            *(v97 + 40) = v93;
            *(v97 + 48) = v108;
            *(v97 + 64) = v106;
          }

          while (--v92);
        }

        v106 = sub_2531B4634();
        while (1)
        {
          sub_2531DAB24();
          if (!*(&v117 + 1))
          {

            (*(v7 + 8))(v10, v6);
            __swift_destroy_boxed_opaque_existential_1(v120);
            result = sub_2531AC3F8(&v116, &qword_27F58D958, &qword_2531E55E0);
            v36 = 0;
            v35 = v109;
            *(v109 + 16) = v110;
            v37 = 8;
            goto LABEL_19;
          }

          sub_2531675D4(&v116, &v113);
          sub_2531B3F70(&v113, &v112, &v116);
          if (v3)
          {
            break;
          }

          v3 = 0;
          __swift_destroy_boxed_opaque_existential_1(&v113);
          v99 = v116;
          LODWORD(v107) = BYTE8(v116);
          v108 = v117;
          v100 = v118;
          v119 = v110;
          v102 = *(v110 + 16);
          v101 = *(v110 + 24);
          if (v102 >= v101 >> 1)
          {
            sub_2531B4614((v101 > 1), v102 + 1, 1);
            v110 = v119;
          }

          v103 = v110;
          *(v110 + 16) = v102 + 1;
          v104 = v103 + 40 * v102;
          *(v104 + 32) = v99;
          *(v104 + 40) = v107;
          *(v104 + 48) = v108;
          *(v104 + 64) = v100;
        }

        __swift_destroy_boxed_opaque_existential_1(&v113);
        (*(v7 + 8))(v10, v6);
        goto LABEL_122;
      }

LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      return result;
    }
  }

  sub_25317E5F0(v120, &v116);
  sub_253181ED8(0, &qword_27F58DC88, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v83 = objc_opt_self();
    *&v116 = 0;
    *(&v116 + 1) = 0xE000000000000000;
    sub_2531DABC4();

    *&v116 = 0xD00000000000001ALL;
    *(&v116 + 1) = 0x80000002531DD1B0;
    MEMORY[0x259BFE570](v109, v110);

    MEMORY[0x259BFE570](0xD000000000000016, 0x80000002531DD200);
    v43 = sub_2531DA6C4();

    v44 = [v83 hmfErrorWithCode:3 reason:v43];
    goto LABEL_25;
  }

  v76 = v113;
  v77 = [v113 count];
  v119 = MEMORY[0x277D84F90];
  v109 = swift_allocObject();
  sub_2531B468C(0, v77 & ~(v77 >> 63), 0);
  v110 = v119;
  v106 = v76;
  result = sub_2531DAAE4();
  if (v77 < 0)
  {
    __break(1u);
    goto LABEL_125;
  }

  if (v77)
  {
    v107 = sub_2531B4634();
    do
    {
      result = sub_2531DAB24();
      if (!*(&v117 + 1))
      {
        goto LABEL_126;
      }

      sub_2531B3C08(&v116, &v112, &v113);
      if (v3)
      {

        (*(v7 + 8))(v12, v6);
        __swift_destroy_boxed_opaque_existential_1(v120);

        __swift_destroy_boxed_opaque_existential_1(&v116);
        return swift_deallocUninitializedObject();
      }

      v3 = 0;
      __swift_destroy_boxed_opaque_existential_1(&v116);
      v108 = v113;
      v78 = v114;
      v119 = v110;
      v80 = *(v110 + 16);
      v79 = *(v110 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_2531B468C((v79 > 1), v80 + 1, 1);
        v110 = v119;
      }

      v81 = v110;
      *(v110 + 16) = v80 + 1;
      v82 = v81 + 24 * v80;
      *(v82 + 32) = v108;
      *(v82 + 48) = v78;
    }

    while (--v77);
  }

  sub_2531B4634();
  while (1)
  {
    sub_2531DAB24();
    if (!v115)
    {

      (*(v7 + 8))(v12, v6);
      __swift_destroy_boxed_opaque_existential_1(v120);
      result = sub_2531AC3F8(&v113, &qword_27F58D958, &qword_2531E55E0);
      v36 = 0;
      v35 = v109;
      *(v109 + 16) = v110;
      v37 = 7;
      goto LABEL_19;
    }

    sub_2531675D4(&v113, &v116);
    sub_2531B3C08(&v116, &v112, &v113);
    if (v3)
    {
      break;
    }

    v3 = 0;
    __swift_destroy_boxed_opaque_existential_1(&v116);
    v108 = v113;
    v84 = v114;
    v119 = v110;
    v86 = *(v110 + 16);
    v85 = *(v110 + 24);
    if (v86 >= v85 >> 1)
    {
      sub_2531B468C((v85 > 1), v86 + 1, 1);
      v110 = v119;
    }

    v87 = v110;
    *(v110 + 16) = v86 + 1;
    v88 = v87 + 24 * v86;
    *(v88 + 32) = v108;
    *(v88 + 48) = v84;
  }

  __swift_destroy_boxed_opaque_existential_1(&v116);
  (*(v7 + 8))(v12, v6);
LABEL_122:
  __swift_destroy_boxed_opaque_existential_1(v120);

  return swift_deallocUninitializedObject();
}

uint64_t MTR.Value.makeDataValue()()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 4)
  {
    if (*(v0 + 16) <= 1u)
    {
      if (!*(v0 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_2531E53E0;
        *(v3 + 32) = sub_2531DA6D4();
        *(v3 + 40) = v17;
        v18 = sub_2531DA6D4();
        *(v3 + 72) = MEMORY[0x277D837D0];
        *(v3 + 48) = v18;
        *(v3 + 56) = v19;
        *(v3 + 80) = sub_2531DA6D4();
        *(v3 + 88) = v20;
        *(v3 + 120) = MEMORY[0x277D839B0];
        *(v3 + 96) = v1 & 1;
        goto LABEL_40;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_2531E53E0;
      *(v3 + 32) = sub_2531DA6D4();
      *(v3 + 40) = v96;
      v97 = sub_2531DA6D4();
      *(v3 + 72) = MEMORY[0x277D837D0];
      *(v3 + 48) = v97;
      *(v3 + 56) = v98;
      *(v3 + 80) = sub_2531DA6D4();
      *(v3 + 88) = v99;
      v62 = MEMORY[0x277D84A28];
    }

    else
    {
      if (v2 != 2)
      {
        if (v2 == 3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
          v3 = swift_allocObject();
          *(v3 + 16) = xmmword_2531E53E0;
          *(v3 + 32) = sub_2531DA6D4();
          *(v3 + 40) = v4;
          v5 = sub_2531DA6D4();
          *(v3 + 72) = MEMORY[0x277D837D0];
          *(v3 + 48) = v5;
          *(v3 + 56) = v6;
          *(v3 + 80) = sub_2531DA6D4();
          *(v3 + 88) = v7;
          *(v3 + 120) = MEMORY[0x277D83A90];
          *(v3 + 96) = v1;
LABEL_40:
          v100 = sub_2531B5270(v3);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCB8, &qword_2531E7348);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          return v100;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E53E0;
        *(inited + 32) = sub_2531DA6D4();
        *(inited + 40) = v68;
        v69 = sub_2531DA6D4();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 48) = v69;
        *(inited + 56) = v70;
        *(inited + 80) = sub_2531DA6D4();
        *(inited + 88) = v71;
        *(inited + 120) = MEMORY[0x277D839F8];
        *(inited + 96) = v1;
        goto LABEL_29;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_2531E53E0;
      *(v3 + 32) = sub_2531DA6D4();
      *(v3 + 40) = v58;
      v59 = sub_2531DA6D4();
      *(v3 + 72) = MEMORY[0x277D837D0];
      *(v3 + 48) = v59;
      *(v3 + 56) = v60;
      *(v3 + 80) = sub_2531DA6D4();
      *(v3 + 88) = v61;
      v62 = MEMORY[0x277D84D38];
    }

    *(v3 + 120) = v62;
    *(v3 + 96) = v1;
    goto LABEL_40;
  }

  if (*(v0 + 16) <= 7u)
  {
    v8 = *(v0 + 8);
    if (v2 == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2531E53E0;
      *(inited + 32) = sub_2531DA6D4();
      *(inited + 40) = v63;
      v64 = sub_2531DA6D4();
      v65 = MEMORY[0x277D837D0];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v64;
      *(inited + 56) = v66;
      *(inited + 80) = sub_2531DA6D4();
      *(inited + 88) = v67;
      *(inited + 120) = v65;
      *(inited + 96) = v1;
      *(inited + 104) = v8;
      v14 = v1;
      v15 = v8;
      v16 = 5;
      goto LABEL_27;
    }

    if (v2 == 6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2531E53E0;
      *(inited + 32) = sub_2531DA6D4();
      *(inited + 40) = v10;
      v11 = sub_2531DA6D4();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v11;
      *(inited + 56) = v12;
      *(inited + 80) = sub_2531DA6D4();
      *(inited + 88) = v13;
      *(inited + 120) = MEMORY[0x277CC9318];
      *(inited + 96) = v1;
      *(inited + 104) = v8;
      v14 = v1;
      v15 = v8;
      v16 = 6;
LABEL_27:
      sub_25316D004(v14, v15, v16);
LABEL_29:
      v72 = sub_2531B5270(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCB8, &qword_2531E7348);
LABEL_46:
      swift_arrayDestroy();
      return v72;
    }

    v73 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_2531E53E0;
    *(v22 + 32) = sub_2531DA6D4();
    *(v22 + 40) = v74;
    v75 = sub_2531DA6D4();
    *(v22 + 72) = MEMORY[0x277D837D0];
    *(v22 + 48) = v75;
    *(v22 + 56) = v76;
    *(v22 + 80) = sub_2531DA6D4();
    *(v22 + 88) = v77;
    v78 = *(v73 + 16);
    v79 = MEMORY[0x277D84F90];
    if (v78)
    {
      v107 = v22;
      v116 = MEMORY[0x277D84F90];

      sub_2531B45D4(0, v78, 0);
      v79 = v116;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCC8, &qword_2531E7358);
      v80 = (v73 + 48);
      while (1)
      {
        v109 = v78;
        v81 = *(v80 - 2);
        v82 = *(v80 - 1);
        v83 = *v80;
        v84 = sub_2531DA6D4();
        v86 = v85;
        v110[0] = v84;
        v110[1] = v85;
        v111 = v81;
        v112 = v82;
        LOBYTE(v113[0]) = v83;
        sub_25316D004(v81, v82, v83);
        v87 = MTR.Value.makeDataValue()();
        v110[2] = v87;
        v88 = sub_2531DAD74();

        v89 = sub_25317D998(v84, v86);
        if (v90)
        {
          break;
        }

        v88[(v89 >> 6) + 8] |= 1 << v89;
        v91 = (v88[6] + 16 * v89);
        *v91 = v84;
        v91[1] = v86;
        *(v88[7] + 8 * v89) = v87;
        v92 = v88[2];
        v47 = __OFADD__(v92, 1);
        v93 = v92 + 1;
        if (v47)
        {
          goto LABEL_51;
        }

        v88[2] = v93;

        sub_2531AC3F8(v110, &qword_27F58DCD0, &qword_2531E7360);
        sub_25316D2BC(v81, v82, v83);
        v116 = v79;
        v95 = *(v79 + 16);
        v94 = *(v79 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_2531B45D4((v94 > 1), v95 + 1, 1);
          v79 = v116;
        }

        v80 += 24;
        *(v79 + 16) = v95 + 1;
        *(v79 + 8 * v95 + 32) = v88;
        v78 = v109 - 1;
        if (v109 == 1)
        {

          v22 = v107;
          goto LABEL_43;
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_43:
    *(v22 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCD8, &qword_2531E7368);
    *(v22 + 96) = v79;
    goto LABEL_45;
  }

  if (v2 == 8)
  {
    v21 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_2531E53E0;
    *(v22 + 32) = sub_2531DA6D4();
    *(v22 + 40) = v23;
    v24 = sub_2531DA6D4();
    *(v22 + 72) = MEMORY[0x277D837D0];
    *(v22 + 48) = v24;
    *(v22 + 56) = v25;
    *(v22 + 80) = sub_2531DA6D4();
    *(v22 + 88) = v26;
    v27 = *(v21 + 16);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v106 = v22;
      v116 = MEMORY[0x277D84F90];

      sub_2531B4594(0, v27, 0);
      v28 = v116;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCB0, &qword_2531E7340);
      v29 = (v21 + 64);
      while (1)
      {
        v108 = v28;
        v30 = *(v29 - 4);
        v31 = *(v29 - 24);
        v32 = *(v29 - 2);
        v33 = *(v29 - 1);
        v34 = *v29;
        v35 = sub_2531DA6D4();
        v36 = __ROR8__(v30, 32);
        v114[0] = v35;
        v114[1] = v37;
        if (v31)
        {
          v36 = v30;
        }

        v114[5] = MEMORY[0x277D84D38];
        v114[2] = v36;
        v115[0] = sub_2531DA6D4();
        v115[1] = v38;
        v111 = v32;
        v112 = v33;
        LOBYTE(v113[0]) = v34;
        sub_25316D004(v32, v33, v34);
        sub_25316D004(v32, v33, v34);
        v39 = MTR.Value.makeDataValue()();
        sub_25316D2BC(v32, v33, v34);
        v115[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D178, &qword_2531E11F8);
        v115[2] = v39;
        v40 = sub_2531DAD74();

        sub_2531B5834(v114, &v111, &qword_27F58DCB8, &qword_2531E7348);
        v41 = v111;
        v42 = v112;
        v43 = sub_25317D998(v111, v112);
        if (v44)
        {
          break;
        }

        *(v40 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v43;
        v45 = (v40[6] + 16 * v43);
        *v45 = v41;
        v45[1] = v42;
        sub_2531675D4(v113, (v40[7] + 32 * v43));
        v46 = v40[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_49;
        }

        v40[2] = v48;
        sub_2531B5834(v115, &v111, &qword_27F58DCB8, &qword_2531E7348);
        v49 = v111;
        v50 = v112;
        v51 = sub_25317D998(v111, v112);
        if (v52)
        {
          break;
        }

        *(v40 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v51;
        v53 = (v40[6] + 16 * v51);
        *v53 = v49;
        v53[1] = v50;
        sub_2531675D4(v113, (v40[7] + 32 * v51));
        v54 = v40[2];
        v47 = __OFADD__(v54, 1);
        v55 = v54 + 1;
        if (v47)
        {
          goto LABEL_49;
        }

        v40[2] = v55;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCB8, &qword_2531E7348);
        swift_arrayDestroy();
        sub_25316D2BC(v32, v33, v34);
        v28 = v108;
        v116 = v108;
        v57 = *(v108 + 16);
        v56 = *(v108 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_2531B4594((v56 > 1), v57 + 1, 1);
          v28 = v116;
        }

        v29 += 40;
        *(v28 + 16) = v57 + 1;
        *(v28 + 8 * v57 + 32) = v40;
        if (!--v27)
        {

          v22 = v106;
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_44:
    *(v22 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCC0, &qword_2531E7350);
    *(v22 + 96) = v28;
LABEL_45:
    v72 = sub_2531B5270(v22);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCB8, &qword_2531E7348);
    goto LABEL_46;
  }

  if (v2 == 10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
    v102 = swift_initStackObject();
    *(v102 + 16) = xmmword_2531E14E0;
    *(v102 + 32) = sub_2531DA6D4();
    *(v102 + 40) = v103;
    v104 = sub_2531DA6D4();
    *(v102 + 72) = MEMORY[0x277D837D0];
    *(v102 + 48) = v104;
    *(v102 + 56) = v105;
    v72 = sub_2531B5270(v102);
    swift_setDeallocating();
    sub_2531AC3F8(v102 + 32, &qword_27F58DCB8, &qword_2531E7348);
    return v72;
  }

LABEL_52:
  result = sub_2531DAD34();
  __break(1u);
  return result;
}

void sub_2531B3C08(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_25317E5F0(a1, v23);
  sub_253181ED8(0, &qword_27F58DD38, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v9 = objc_opt_self();
    v10 = sub_2531DA6C4();
    v11 = [v9 hmfErrorWithCode:3 reason:v10];

    swift_willThrow();
    goto LABEL_15;
  }

  v6 = v20;
  *&v21 = sub_2531DA6D4();
  *(&v21 + 1) = v7;
  v8 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_2531DAB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (!*(&v22 + 1))
  {
    sub_2531AC3F8(v23, &qword_27F58D958, &qword_2531E55E0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v15 = objc_opt_self();
    v16 = sub_2531DA6C4();
    v11 = [v15 hmfErrorWithCode:3 reason:v16];

    swift_willThrow();
    goto LABEL_15;
  }

  *&v23[0] = 0;
  sub_2531DA614();
  if (*&v23[0])
  {
    MTR.Value.init(from:)(*&v23[0], a3);
    if (!v3)
    {

      return;
    }

    v12 = objc_opt_self();
    v13 = sub_2531DA6C4();
    v14 = sub_2531DA0A4();
    v11 = [v12 hmfErrorWithCode:3 reason:v13 suggestion:0 underlyingError:v14];

    swift_willThrow();
  }

  else
  {
    v17 = objc_opt_self();
    v18 = sub_2531DA6C4();
    v11 = [v17 hmfErrorWithCode:3 reason:v18];

    swift_willThrow();
  }

LABEL_15:
  *a2 = v11;
}

double sub_2531B3F70@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_25317E5F0(a1, &v39);
  sub_253181ED8(0, &qword_27F58DD38, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v9 = objc_opt_self();
    v10 = sub_2531DA6C4();
    v11 = [v9 hmfErrorWithCode:3 reason:v10];

    swift_willThrow();
    goto LABEL_25;
  }

  v6 = v34;
  *&v35 = sub_2531DA6D4();
  *(&v35 + 1) = v7;
  v8 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_2531DAB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v38 = 0u;
  }

  v39 = v35;
  v40 = v38;
  if (!*(&v38 + 1))
  {
    sub_2531AC3F8(&v39, &qword_27F58D958, &qword_2531E55E0);
    goto LABEL_11;
  }

  sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v17 = objc_opt_self();
    v18 = sub_2531DA6C4();
    v11 = [v17 hmfErrorWithCode:3 reason:v18];

    swift_willThrow();
    goto LABEL_25;
  }

  v13 = v41;
  *&v36 = sub_2531DA6D4();
  *(&v36 + 1) = v14;
  v15 = v6;
  v16 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v16)
  {
    sub_2531DAB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v38 = 0u;
  }

  v39 = v36;
  v40 = v38;
  if (!*(&v38 + 1))
  {
    sub_2531AC3F8(&v39, &qword_27F58D958, &qword_2531E55E0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v26 = objc_opt_self();
    v27 = sub_2531DA6C4();
    v11 = [v26 hmfErrorWithCode:3 reason:v27];

    swift_willThrow();
    goto LABEL_25;
  }

  v19 = v41;
  *&v39 = 0;
  sub_2531DA614();
  v20 = v39;
  if (v39)
  {
    MTR.Tag.init(rawValue:)([v13 unsignedLongLongValue], &v39);
    v21 = BYTE8(v39);
    if (BYTE8(v39) == 255)
    {

      v30 = objc_opt_self();
      *&v39 = 0;
      *(&v39 + 1) = 0xE000000000000000;
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD00000000000004BLL, 0x80000002531DD550);
      v37 = [v13 unsignedLongLongValue];
      v31 = sub_2531DAF34();
      MEMORY[0x259BFE570](v31);

      MEMORY[0x259BFE570](41, 0xE100000000000000);
      v32 = sub_2531DA6C4();

      v11 = [v30 hmfErrorWithCode:3 reason:{v32, v37}];

      swift_willThrow();
    }

    else
    {
      v22 = v39;
      MTR.Value.init(from:)(v20, &v39);
      if (!v3)
      {

        v33 = v40;
        *a3 = v22;
        *(a3 + 8) = v21 & 1;
        result = *&v39;
        *(a3 + 16) = v39;
        *(a3 + 32) = v33;
        return result;
      }

      v23 = objc_opt_self();
      v24 = sub_2531DA6C4();
      v25 = sub_2531DA0A4();
      v11 = [v23 hmfErrorWithCode:3 reason:v24 suggestion:0 underlyingError:v25];

      swift_willThrow();
    }
  }

  else
  {
    v28 = objc_opt_self();
    v29 = sub_2531DA6C4();
    v11 = [v28 hmfErrorWithCode:3 reason:v29];

    swift_willThrow();
  }

LABEL_25:
  *a2 = v11;
  return result;
}

char *sub_2531B4574(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2531B478C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2531B4594(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2531B4D1C(a1, a2, a3, *v3, &qword_27F58D218, &qword_2531E14B8, &qword_27F58D178, &qword_2531E11F8);
  *v3 = result;
  return result;
}

void *sub_2531B45D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2531B4D1C(a1, a2, a3, *v3, &qword_27F58DD28, &qword_2531E73B0, &qword_27F58DD30, &qword_2531E73B8);
  *v3 = result;
  return result;
}

char *sub_2531B4614(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2531B4898(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2531B4634()
{
  result = qword_27F58DC90;
  if (!qword_27F58DC90)
  {
    sub_2531DA0C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC90);
  }

  return result;
}

char *sub_2531B468C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2531B4AFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2531B46AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2531B4C18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2531B46CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2531B4D1C(a1, a2, a3, *v3, &qword_27F58D1C0, &qword_2531E1468, &qword_27F58D170, &qword_2531E2AB0);
  *v3 = result;
  return result;
}

char *sub_2531B470C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2531B4E50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2531B472C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2531B4F60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2531B474C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2531B5070(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2531B476C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2531B5170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2531B478C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D200, &qword_2531E14A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2531B4898(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD40, &qword_2531E73C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2531B49B4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA68, &qword_2531E5820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD48, &qword_2531E73C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2531B4AFC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1A0, &qword_2531E48A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2531B4C18(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD20, &qword_2531E73A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_2531B4D1C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2531B4E50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD10, &qword_2531E7398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2531B4F60(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCE0, &qword_2531E7370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 12 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_2531B5070(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD08, &qword_2531E7390);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_2531B5170(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD00, &qword_2531E7388);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

unint64_t sub_2531B5270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCB0, &qword_2531E7340);
    v3 = sub_2531DAD74();
    v4 = a1 + 32;

    while (1)
    {
      sub_2531B5834(v4, &v13, &qword_27F58DCB8, &qword_2531E7348);
      v5 = v13;
      v6 = v14;
      result = sub_25317D998(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2531675D4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void *sub_2531B53A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCE8, &unk_2531E7CF0);
  v3 = sub_2531DAD74();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_25317DA10(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = v3[6] + 12 * v9;
    *v12 = v4;
    *(v12 + 8) = v5 & 1;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 8);
    v17 = *v11;

    v9 = sub_25317DA10(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2531B54D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D770, &qword_2531E4948);
    v3 = sub_2531DAD74();
    v4 = a1 + 32;

    while (1)
    {
      sub_2531B5834(v4, &v13, &qword_27F58DA38, &qword_2531E5800);
      v5 = v13;
      v6 = v14;
      result = sub_25317D998(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2531675D4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_2531B5608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCF0, &qword_2531E7378);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCF8, &qword_2531E7380);
    v7 = sub_2531DAD74();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2531B5834(v9, v5, &qword_27F58DCF0, &qword_2531E7378);
      result = sub_25317DA90(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2531DA204();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D888, &unk_2531E5090);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

uint64_t sub_2531B5834(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2531B589C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD18, &qword_2531E73A0);
    v3 = sub_2531DAD74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25317D998(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
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

uint64_t MTR.Node.ID.description.getter()
{
  sub_2531B5B08();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  return 30768;
}

unint64_t MTR.Node.ID.rawValue.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 2)
  {
    if (*(v0 + 8))
    {
      if (v2 == 1)
      {
        return *v0 | 0xFFFFFFFE00000000;
      }

      else
      {
        v5 = result | 0xFF00;
        if (BYTE2(result) != 1)
        {
          v5 = 0;
        }

        if (BYTE2(result))
        {
          LOWORD(v6) = v5;
        }

        else
        {
          v6 = *v0;
        }

        return v6 | 0xFFFFFFFFFFFF0000;
      }
    }
  }

  else
  {
    if (v2 == 5)
    {
      v3 = *v0;
    }

    else
    {
      v3 = 0;
    }

    v4 = *v0 | 0xFFFFFFFB00000000;
    if (v2 != 3)
    {
      v4 = *v0 | 0xFFFFFFFD00000000;
    }

    if (*(v0 + 8) <= 4u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

unint64_t sub_2531B5B08()
{
  result = qword_27F58DD50;
  if (!qword_27F58DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DD50);
  }

  return result;
}

unint64_t MTR.Node.ID.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    if (result >= 0xFFFFFFF000000000)
    {
      if (result < 0xFFFFFFFB00000000)
      {
        goto LABEL_6;
      }

      if (result <= 0xFFFFFFFBFFFFFFFFLL)
      {
        result = result;
        v2 = 3;
        goto LABEL_9;
      }

      if (result < 0xFFFFFFFD00000000)
      {
        goto LABEL_6;
      }

      if (result <= 0xFFFFFFFDFFFFFFFFLL)
      {
        result = result;
        v2 = 4;
        goto LABEL_9;
      }

      if (result <= 0xFFFFFFFEFFFFFFFFLL)
      {
        result = result;
        v2 = 1;
        goto LABEL_9;
      }

      if (result < 0xFFFFFFFFFFFF0000)
      {
LABEL_6:
        v2 = 5;
      }

      else if (result)
      {
        if (result > 0xFEFEu)
        {
          result &= 0x100FFuLL;
        }

        else
        {
          result = result;
        }

        v2 = 2;
      }

      else
      {
        v2 = 2;
        result = 0x20000;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 6;
  }

LABEL_9:
  *a2 = result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t MTR.Node.ID.debugDescription.getter()
{
  sub_2531B5B08();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0x2844492E65646F4ELL;
}

uint64_t MTR.Node.ID.kind.getter()
{
  v1 = *(v0 + 8);
  v2 = 0x6669636570736E75;
  if (v1 == 5)
  {
    v2 = 0x6465767265736572;
  }

  v3 = 0x79654B656B6170;
  if (v1 != 3)
  {
    v3 = 0x67615465736163;
  }

  if (*(v0 + 8) <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6F6974617265706FLL;
  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x646F4E70756F7267;
  }

  if (*(v0 + 8))
  {
    v4 = v5;
  }

  if (*(v0 + 8) <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2531B5E34@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MTR.Node.ID.init(rawValue:)(*a1, &v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

unint64_t sub_2531B5E78@<X0>(unint64_t *a1@<X8>)
{
  result = MTR.Node.ID.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2531B5F54()
{
  result = qword_27F58DD58;
  if (!qword_27F58DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DD58);
  }

  return result;
}

uint64_t sub_2531B5FA8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2531DB3F4();
  sub_253188BAC(v4, v1, v2);
  return sub_2531DB454();
}

uint64_t sub_2531B6004(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_2531DB3F4();
  sub_253188BAC(v5, v2, v3);
  return sub_2531DB454();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s4NodeO2IDOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 9))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 8);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s4NodeO2IDOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2531B6120(uint64_t a1)
{
  if (*(a1 + 8) <= 5u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_2531B6138(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_2531B6160()
{
  result = qword_27F58DD60;
  if (!qword_27F58DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DD60);
  }

  return result;
}

uint64_t MTR.Event.ID.description.getter()
{
  sub_253169338();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0x44492E746E657645;
}

uint64_t sub_2531B6308()
{
  sub_253169338();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0x44492E746E657645;
}

_WORD *MTR.Event.Path.init(_:_:_:)@<X0>(_WORD *result@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  *(a4 + 4) = v4;
  *(a4 + 8) = v5;
  return result;
}

_WORD *MTR.Event.Path.init(_:_:eventID:)@<X0>(_WORD *result@<X0>, int *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = *result;
  *(a4 + 4) = v4;
  *(a4 + 8) = a3;
  return result;
}

_WORD *MTR.Event.Path.init(_:clusterID:eventID:)@<X0>(_WORD *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 4) = a2;
  *(a4 + 8) = a3;
  return result;
}

void MTR.Event.Path.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 endpoint];
  v5 = [v4 unsignedShortValue];

  v6 = [v3 cluster];
  v7 = [v6 unsignedIntValue];

  v8 = [v3 event];
  v9 = [v8 unsignedIntValue];

  *a2 = v5;
  *(a2 + 4) = v7;
  *(a2 + 8) = v9;
}

MTREventPath __swiftcall MTR.Event.Path.makeEventPath()()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v7 = [objc_opt_self() eventPathWithEndpointID:v4 clusterID:v5 eventID:v6];

  return v7;
}