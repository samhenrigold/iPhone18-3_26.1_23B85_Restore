void sub_26D1EABD8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0EA8, &qword_26D2319F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0EB0, &qword_26D2319F8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08B8, &qword_26D2304E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_26D22D6B4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0EB8, &qword_26D231A00);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0EC0, qword_26D231A08);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v49 - v20;
  v22 = a1;
  v23 = v59;
  v24 = sub_26D1E1120();
  if (v23)
  {

    return;
  }

  v56 = v11;
  v57 = v18;
  v51 = v5;
  v52 = v8;
  v53 = v12;
  v54 = v15;
  v55 = v13;
  v59 = v21;
  v25 = sub_26D1EC12C(v24, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

  v26 = sub_26D1E25A8();

  v27 = sub_26D1EC12C(v26, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

  sub_26D1DD300(0, v27, v59);
  sub_26D1DD86C(1, v27, v57);
  v28 = sub_26D1C9A0C(2, 0, v25);
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  v31 = v56;
  sub_26D1C9C8C(3, 0, v25, v56);
  v49 = v30;
  v50 = v27;
  v32 = v55;
  v33 = *(v55 + 48);
  v34 = v53;
  if (v33(v31, 1, v53) == 1)
  {
    (*(v32 + 104))(v54, *MEMORY[0x277CF2580], v34);
    if (v33(v31, 1, v34) != 1)
    {
      sub_26D1B950C(v31, &qword_2804E08B8, &qword_26D2304E0);
    }
  }

  else
  {
    (*(v32 + 32))(v54, v31, v34);
  }

  sub_26D1C9F34(4, 0, v25);
  v35 = sub_26D1C9A0C(5, 0, v25);
  v36 = v50;
  sub_26D1DD8AC(6, v50, v52);
  v56 = v35;
  sub_26D1DDD0C(7, v36, v51);

  v37 = sub_26D1CA1A4(8, 0, v25);
  v39 = v38;

  sub_26D1B7FCC();
  v40 = swift_allocError();
  v41 = v40;
  *v42 = 0xD00000000000001DLL;
  *(v42 + 8) = 0x800000026D23B180;
  *(v42 + 16) = 5;
  if (v39)
  {

    v43 = sub_26D1BE654(v37, v39, 0);
    if (v44 >> 60 == 15)
    {
      sub_26D1B950C(v51, &qword_2804E0EA8, &qword_26D2319F0);
      sub_26D1B950C(v52, &qword_2804E0EB0, &qword_26D2319F8);
      (*(v55 + 8))(v54, v53);
      sub_26D1B950C(v57, &qword_2804E0EB8, &qword_26D231A00);
      sub_26D1B950C(v59, &qword_2804E0EC0, qword_26D231A08);
      swift_willThrow();
      v45 = v41;

      return;
    }

    v46 = v43;
    v47 = v44;
    sub_26D22CD74();
    v55 = v48;
    sub_26D1BE640(v46, v47);
  }

  else
  {

    v55 = 0;
  }

  sub_26D22D6C4();
}

void sub_26D1EB4AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v8 = a1;
  v9 = sub_26D1E1120();
  if (!v2)
  {
    v10 = sub_26D1EC12C(v9, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

    sub_26D1C7368(0, 0, v10);
    sub_26D1C73A8(1, 0, v10, v7);
    sub_26D1C7558(2, 0, v10);
    v26 = sub_26D1C7558(3, 0, v10);
    v24 = sub_26D1E6CFC(4u, v10);
    v23 = sub_26D1E6CFC(5u, v10);
    v11 = sub_26D1C7368(6, 0, v10);
    v25 = v12;
    v22 = v11;
    v13 = sub_26D1C7368(7, 0, v10);
    v19 = v14;
    v20 = v13;
    v21 = a2;
    v18 = sub_26D1C7558(8, 0, v10);
    v15 = sub_26D1C7698(9, 0, v10);
    v17[0] = v16;
    v17[1] = v15;

    sub_26D22D504();
  }
}

void sub_26D1EB798(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - v7;
  v9 = a1;
  v10 = sub_26D1E1120();
  if (v1)
  {
    goto LABEL_3;
  }

  v11 = sub_26D1EC12C(v10, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

  v34 = sub_26D1C85D0(0, 0, v11);
  sub_26D1DF3E8(1u, v11);
  if (!v12)
  {
    sub_26D1B7F48();
    v18 = swift_allocError();
    *v19 = xmmword_26D231920;
    *(v19 + 16) = 0;
    *(v19 + 24) = 1;
    swift_willThrow();
    v32 = 0x6D616E5B6D726170;
    v33 = 0xEB00000000273D65;
    MEMORY[0x26D6B6C70](0x46657A695378614DLL, 0xED00007254656C69);
    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v14 = v32;
    v15 = v33;
    sub_26D1B7F48();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = v18;
    *(v16 + 24) = 7;
    swift_willThrow();

LABEL_3:

    return;
  }

  v17 = v13;
  v31 = sub_26D1E5A44(1, v17);

  sub_26D1C8878(2, 0, v11);
  sub_26D1C8B10(3, 0, v11, v8);
  sub_26D1C8B10(4, 0, v11, v6);
  v20 = sub_26D1C8E18(5, 0, v11);
  v30 = v21;
  v27 = sub_26D1C8E18(6, 0, v11);
  v28 = v20;
  v29 = v22;
  v26 = sub_26D1C8878(7, 0, v11);
  v25 = sub_26D1C85D0(8, 0, v11);
  v24[1] = v23;

  sub_26D22D854();
}

void sub_26D1EBC34(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08A8, &qword_26D2304D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - v5;
  v7 = sub_26D22D584();
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v27 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v27 - v17;
  v19 = a1;
  v20 = sub_26D1E1120();
  if (!v2)
  {
    v29 = v9;
    v30 = v6;
    v31 = v13;
    v32 = v16;
    v21 = sub_26D1EC12C(v20, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

    sub_26D1C7860(0, 0, v21, v18);
    sub_26D1C7860(1, 0, v21, v32);
    sub_26D1C7860(2, 0, v21, v31);
    v22 = sub_26D1C7AF0(3, 0, v21);
    v23 = sub_26D1C7AF0(4, 0, v21);
    v24 = v30;
    sub_26D1C7D10(5, 0, v21, v30);

    v28 = 0;
    v27[2] = v23;
    v27[3] = v22;
    v25 = v33;
    v26 = *(v33 + 48);
    if (v26(v24, 1, v7) == 1)
    {
      (*(v25 + 104))(v29, *MEMORY[0x277CF2468], v7);
      if (v26(v24, 1, v7) != 1)
      {
        sub_26D1B950C(v24, &qword_2804E08A8, &qword_26D2304D8);
      }
    }

    else
    {
      (*(v25 + 32))(v29, v24, v7);
    }

    sub_26D22D594();
  }
}

void *sub_26D1EC12C(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v5;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    swift_bridgeObjectRetain_n();
    v12 = v11;
    v14 = sub_26D1BDEEC(v10, v9);
    v15 = v5[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v17 = v13;
    if (v5[3] < v15 + v16)
    {
      a2();
      v5 = v38;
      v18 = sub_26D1BDEEC(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v14 = v18;
    }

    if (v17)
    {

      v20 = v5[7];
      v21 = *(v20 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v14) = v21;
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = a5(0, *(v21 + 16) + 1, 1, v21);
        *(v20 + 8 * v14) = v21;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = a5(v23 > 1, v24 + 1, 1, v21);
        v25 = v24 + 1;
        v21 = v26;
        *(v34 + 8 * v14) = v26;
      }

      *(v21 + 16) = v25;
      v8 = (v21 + 24 * v24);
      v8[4] = v10;
      v8[5] = v9;
      v8[6] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26D22F360;
      *(v27 + 32) = v10;
      *(v27 + 40) = v9;
      *(v27 + 48) = v12;
      v5[(v14 >> 6) + 8] |= 1 << v14;
      v28 = (v5[6] + 16 * v14);
      *v28 = v10;
      v28[1] = v9;
      *(v5[7] + 8 * v14) = v27;
      v29 = v5[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v5[2] = v31;
    }

    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

void sub_26D1EC370(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08C8, &qword_26D2304E8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v18 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v18 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  v15 = a1;
  v16 = sub_26D1E1120();
  if (!v1)
  {
    v17 = sub_26D1ED8A8(v16, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

    sub_26D1C926C(0, 0, v17, v14);
    sub_26D1C926C(1, 0, v17, v12);
    sub_26D1C926C(2, 0, v17, v9);
    sub_26D1C926C(3, 0, v17, v6);

    sub_26D22D944();
  }
}

void sub_26D1EC640(void *a1)
{
  v3 = sub_26D22D954();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = a1;
  v5 = sub_26D1E25A8();
  if (!v1)
  {
    v6 = sub_26D1ED8A8(v5, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

    sub_26D1C6094(v6);

    sub_26D22D804();
  }
}

void sub_26D1EC778(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0EC8, &qword_26D231AB0);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = (&v46 - v4);
  v69 = sub_26D22D664();
  v64 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08D8, &qword_26D2304F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v10 = sub_26D22CAD4();
  v60 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0ED0, &qword_26D231AB8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - v14;
  v16 = sub_26D22D654();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = v65;
  v22 = sub_26D1E1120();
  if (v21)
  {

    return;
  }

  v51 = v16;
  v52 = v9;
  v61 = v19;
  v62 = v10;
  v50 = v15;
  v63 = v12;
  v57 = v17;
  v23 = v69;
  v53 = v6;
  v24 = sub_26D1ED8A8(v22, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

  v25 = v20;
  v26 = sub_26D1E25A8();

  v27 = sub_26D1ED8A8(v26, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

  v28 = sub_26D1CA420(1, 0, v24);
  v49 = v27;
  v29 = v23;
  if (v30)
  {
    v46 = v25;
    v47 = v24;
    *&v66 = 44;
    *(&v66 + 1) = 0xE100000000000000;
    MEMORY[0x28223BE20](v28);
    v45 = &v66;
    v33 = sub_26D1ED0E0(0x7FFFFFFFFFFFFFFFLL, 1, sub_26D1D7848, (&v46 - 4), v31, v32, &v46);
    v34 = v33;
    v48 = 0;
    v56 = *(v33 + 16);
    if (v56)
    {
      v35 = 0;
      ++v60;
      v54 = (v57 + 32);
      v55 = (v57 + 48);
      v24 = (v33 + 56);
      v65 = MEMORY[0x277D84F90];
      v37 = v50;
      v36 = v51;
      v21 = v63;
      while (v35 < v34[2])
      {
        v38 = *(v24 - 1);
        v39 = *v24;
        v66 = *(v24 - 3);
        v67 = v38;
        v68 = v39;

        sub_26D22CAB4();
        sub_26D1D756C();
        sub_26D22E6B4();
        (*v60)(v21, v62);
        sub_26D22D644();

        if ((*v55)(v37, 1, v36) == 1)
        {
          LODWORD(v33) = sub_26D1B950C(v37, &qword_2804E0ED0, &qword_26D231AB8);
        }

        else
        {
          v40 = *v54;
          (*v54)(v61, v37, v36);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_26D22BB94(0, v65[2] + 1, 1, v65);
          }

          v42 = v65[2];
          v41 = v65[3];
          if (v42 >= v41 >> 1)
          {
            v65 = sub_26D22BB94((v41 > 1), v42 + 1, 1, v65);
          }

          v43 = v65;
          v65[2] = v42 + 1;
          LODWORD(v33) = (v40)(v43 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v42, v61, v36);
        }

        ++v35;
        v24 += 4;
        v29 = v69;
        v21 = v63;
        if (v56 == v35)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    v65 = MEMORY[0x277D84F90];
LABEL_17:

    v21 = v48;
    v35 = v52;
    v24 = v47;
    v25 = v46;
  }

  else
  {
    v65 = 0;
    v35 = v52;
  }

  sub_26D1CA694(0, 0, v24, v35);
  v44 = v53;
  if (v21)
  {

    return;
  }

  sub_26D1CA934(2, 0, v24);
  sub_26D1CA934(3, 0, v24);
  sub_26D1CA934(4, 0, v24);
  v34 = v25;
  sub_26D1DB870(5, v24, v44);
  LODWORD(v33) = sub_26D1CA934(6, 0, v24);
LABEL_22:
  LODWORD(v63) = v33;
  sub_26D1CA934(7, 0, v24);

  if (v21)
  {

    (*(v64 + 8))(v53, v29);
    sub_26D1B950C(v35, &qword_2804E08D8, &qword_26D2304F0);
  }

  else
  {
    sub_26D1DDD4C(8u, v59, v49);

    v45 = v59;
    sub_26D22D674();
  }
}

unint64_t sub_26D1ED0E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v7 = sub_26D22E534();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_26D22BBBC(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = sub_26D22BBBC((a7 > 1), v10, 1, v14);
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
        v19 = sub_26D22E514();
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

        v14 = sub_26D22E474();
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
        v18 = sub_26D22E474();
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
          v7 = sub_26D22E534();
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

        v14 = sub_26D22BBBC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_26D22E534();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_26D22BBBC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_26D22BBBC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_26D22E474();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_26D1ED4A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a9@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v17 = v10;
  v13 = a6;
  v18 = a5 >> 14;
  v14 = a6 >> 14;
  if (a1 && v18 != v14)
  {
    v9 = a4;
    v16 = MEMORY[0x277D84F90];
    v11 = a5;
    do
    {
      v19 = v11 >> 14;
      if (v11 >> 14 == v14)
      {
        break;
      }

      v41 = a1;
      v48 = v17;
      v43 = v16;
      v16 = a7;
      while (1)
      {
        while (1)
        {
          v47[0] = sub_26D22E684();
          v47[1] = v20;
          v21 = v48;
          v22 = a3(v47);
          v48 = v21;
          if (v21)
          {

            return v16;
          }

          v23 = v22;

          if (v23)
          {
            break;
          }

          v16 = a7;
          v19 = sub_26D22E664() >> 14;
          if (v19 == v14)
          {
            v16 = v43;
            goto LABEL_28;
          }
        }

        result = v11;
        if (v11 >> 14 != v19 || (a2 & 1) == 0)
        {
          break;
        }

        v16 = a7;
        v11 = sub_26D22E664();
        v19 = v11 >> 14;
        if (v11 >> 14 == v14)
        {
          v16 = v43;
          goto LABEL_28;
        }
      }

      if (v19 < v11 >> 14)
      {
        __break(1u);
        return result;
      }

      v44 = sub_26D22E694();
      v39 = v26;
      v40 = v25;
      v38 = v27;
      v16 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_26D22BBBC(0, *(v43 + 2) + 1, 1, v43);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = sub_26D22BBBC((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[32 * v29];
      *(v30 + 4) = v44;
      *(v30 + 5) = v40;
      *(v30 + 6) = v39;
      *(v30 + 7) = v38;
      v11 = sub_26D22E664();
      a1 = v41;
      v17 = v48;
    }

    while (*(v16 + 2) != v41);
LABEL_28:
    if (v11 >> 14 == v14 && (a2 & 1) != 0)
    {

      return v16;
    }

    if (v14 >= v11 >> 14)
    {
      v9 = sub_26D22E694();
      v11 = v34;
      v13 = v35;
      v14 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
LABEL_34:
      v12 = v15 + 1;
      if (v15 < a9 >> 1)
      {
LABEL_35:
        *(v16 + 2) = v12;
        v37 = &v16[32 * v15];
        *(v37 + 4) = v9;
        *(v37 + 5) = v11;
        *(v37 + 6) = v13;
        *(v37 + 7) = v14;
        return v16;
      }

LABEL_38:
      v16 = sub_26D22BBBC((a9 > 1), v12, 1, v16);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v16 = sub_26D22BBBC(0, *(v16 + 2) + 1, 1, v16);
    goto LABEL_33;
  }

  if (v18 != v14 || (a2 & 1) == 0)
  {
    if (v14 >= v18)
    {
      v9 = sub_26D22E694();
      v11 = v31;
      v13 = v32;
      v14 = v33;

      v16 = sub_26D22BBBC(0, 1, 1, MEMORY[0x277D84F90]);
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x277D84F90];
}

void *sub_26D1ED8A8(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v5;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    swift_bridgeObjectRetain_n();
    v12 = v11;
    v14 = sub_26D1BDEEC(v10, v9);
    v15 = v5[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v17 = v13;
    if (v5[3] < v15 + v16)
    {
      a2();
      v5 = v38;
      v18 = sub_26D1BDEEC(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v14 = v18;
    }

    if (v17)
    {

      v20 = v5[7];
      v21 = *(v20 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v14) = v21;
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = a5(0, *(v21 + 16) + 1, 1, v21);
        *(v20 + 8 * v14) = v21;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = a5(v23 > 1, v24 + 1, 1, v21);
        v25 = v24 + 1;
        v21 = v26;
        *(v34 + 8 * v14) = v26;
      }

      *(v21 + 16) = v25;
      v8 = (v21 + 24 * v24);
      v8[4] = v10;
      v8[5] = v9;
      v8[6] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26D22F360;
      *(v27 + 32) = v10;
      *(v27 + 40) = v9;
      *(v27 + 48) = v12;
      v5[(v14 >> 6) + 8] |= 1 << v14;
      v28 = (v5[6] + 16 * v14);
      *v28 = v10;
      v28[1] = v9;
      *(v5[7] + 8 * v14) = v27;
      v29 = v5[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v5[2] = v31;
    }

    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

void sub_26D1EDB2C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26D22D744();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  KeyPath = swift_getKeyPath();
  v13 = a1;
  v14 = sub_26D1BAB90(KeyPath, v13);

  v15 = sub_26D1E7618(v14);
  if (v2)
  {

    return;
  }

  v16 = v15;

  if (!v16)
  {
    sub_26D1B7F48();
    swift_allocError();
    *v26 = xmmword_26D231AC0;
    *(v26 + 16) = 0;
    *(v26 + 24) = 1;
    swift_willThrow();
LABEL_27:

    return;
  }

  v41 = v9;
  v42 = v6;
  v43 = v5;
  v44 = a2;
  v45 = 0;
  v47 = v13;
  v17 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v18 = *&v16[v17];
  v48 = v18 >> 62;
  v49 = v11;
  if (v18 >> 62)
  {
LABEL_30:
    v19 = sub_26D22E814();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v18 & 0xC000000000000001;
  v40 = v18 + 32;
  v46 = v16;

  v21 = 0;
  v16 = &unk_287E98FF8;
  while (v19 != v21)
  {
    if (v20)
    {
      v22 = MEMORY[0x26D6B6F50](v21, v18);
    }

    else
    {
      if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v22 = *(v18 + 8 * v21 + 32);
    }

    v23 = v22;

    v24 = sub_26D22E854();

    if (v24 < 4)
    {
      v19 = v21;
      break;
    }

    if (__OFADD__(v21++, 1))
    {
      goto LABEL_29;
    }
  }

  v27 = v49;
  if (!v48)
  {
    if (v19 != *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (v19 == sub_26D22E814())
  {
LABEL_26:
    v38 = v46;

    sub_26D1B7F48();
    swift_allocError();
    *v39 = 0xD000000000000035;
    *(v39 + 8) = 0x800000026D23B970;
    *(v39 + 16) = 0;
    *(v39 + 24) = 1;
    swift_willThrow();

    v13 = v47;
    goto LABEL_27;
  }

LABEL_20:
  if (v20)
  {
    v28 = MEMORY[0x26D6B6F50](v19, v18);
LABEL_23:
    v29 = v28;
    v30 = *&v28[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v31 = *&v28[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    v32 = sub_26D1F125C(v30, v31);

    if (v32 != 4)
    {
      v33 = v46;

      v35 = v41;
      v34 = v42;
      v36 = v43;
      (*(v42 + 104))(v41, **(&unk_279D955A0 + v32), v43);
      (*(v34 + 32))(v27, v35, v36);
      sub_26D22D734();
      v37 = v47;

      return;
    }

    goto LABEL_33;
  }

  if (v19 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v40 + 8 * v19);
    goto LABEL_23;
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_26D1EDF7C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0EE0, &qword_26D231B78);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = &v27 - v4;
  v5 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v31 = a1;
  v6 = *&a1[v5];
  v32 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_37:
    v7 = sub_26D22E814();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = v6 & 0xC000000000000001;
  v29 = v6 + 32;

  v9 = 0;
  while (v7 != v9)
  {
    if (v8)
    {
      v10 = MEMORY[0x26D6B6F50](v9, v6);
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;

    v12 = sub_26D22E854();

    if (v12 < 4)
    {
      v7 = v9;
      break;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_36;
    }
  }

  if (!v32)
  {
    if (v7 != *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_24:

    sub_26D1B7F48();
    swift_allocError();
    *v19 = 0xD000000000000035;
    *(v19 + 8) = 0x800000026D23B970;
    *(v19 + 16) = 0;
    *(v19 + 24) = 1;
    swift_willThrow();

    return;
  }

  if (v7 == sub_26D22E814())
  {
    goto LABEL_24;
  }

LABEL_16:
  if (v8)
  {
    v14 = MEMORY[0x26D6B6F50](v7, v6);
  }

  else
  {
    if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v14 = *(v29 + 8 * v7);
  }

  v7 = v14;
  v16 = *&v14[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
  v15 = *&v14[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

  v17 = sub_26D1F12A8(v16, v15);
  if (v17 == 4)
  {
LABEL_40:

    __break(1u);
    return;
  }

  if (v17 > 1)
  {

    if (v17 == 2)
    {
      v18 = MEMORY[0x277CF28A0];
    }

    else
    {
      v18 = MEMORY[0x277CF2870];
    }
  }

  else if (v17)
  {
    v20 = v27;
    v21 = v30;
    sub_26D1EE3B4(v7, v27);

    if (v21)
    {
      return;
    }

    v22 = sub_26D22D7A4();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v20, 1, v22) != 1)
    {
      v24 = v28;
      (*(v23 + 32))(v28, v20, v22);
      v18 = MEMORY[0x277CF2860];
      goto LABEL_32;
    }

    sub_26D1B950C(v20, &qword_2804E0EE0, &qword_26D231B78);
    v18 = MEMORY[0x277CF2880];
  }

  else
  {

    v18 = MEMORY[0x277CF2890];
  }

  v24 = v28;
LABEL_32:
  v25 = *v18;
  v26 = sub_26D22D7B4();
  (*(*(v26 - 8) + 104))(v24, v25, v26);
}

void sub_26D1EE3B4(char *a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v3 = sub_26D22D7A4();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v34 = &v32 - v7;
  MEMORY[0x28223BE20](v6);
  v32 = &v32 - v8;
  v9 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v39 = a1;
  v10 = *&a1[v9];
  v41 = v10 >> 62;
  if (v10 >> 62)
  {
LABEL_32:
    v11 = sub_26D22E814();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = v10 & 0xC000000000000001;
  v35 = v10 + 32;

  v13 = 0;
  while (v11 != v13)
  {
    if (v12)
    {
      v14 = MEMORY[0x26D6B6F50](v13, v10);
    }

    else
    {
      if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v14 = *(v10 + 8 * v13 + 32);
    }

    v15 = v14;

    v16 = sub_26D22E854();

    if (v16 < 2)
    {
      v11 = v13;
      break;
    }

    if (__OFADD__(v13++, 1))
    {
      goto LABEL_31;
    }
  }

  if (v41)
  {
    if (v11 != sub_26D22E814())
    {
LABEL_16:
      if (v12)
      {
        v18 = MEMORY[0x26D6B6F50](v11, v10);
      }

      else
      {
        if (v11 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v18 = *(v35 + 8 * v11);
      }

      v11 = v18;

      v19 = sub_26D22E854();

      if (!v19)
      {

        v20 = v33;
        v27 = v40;
        sub_26D1EE990(v11, v33);

        if (v27)
        {
          return;
        }

        v22 = MEMORY[0x277CF2858];
        goto LABEL_27;
      }

      if (v19 == 1)
      {

        v20 = v34;
        v21 = v40;
        sub_26D1EEF9C(v11, v34);

        if (v21)
        {
          return;
        }

        v22 = MEMORY[0x277CF2840];
LABEL_27:
        v26 = v36;
        v28 = v37;
        (*(v36 + 104))(v20, *v22, v37);
        v29 = *(v26 + 32);
        v30 = v32;
        v29(v32, v20, v28);
        v31 = v38;
        v29(v38, v30, v28);
        v25 = v28;
        v24 = v31;
        v23 = 0;
        goto LABEL_28;
      }

LABEL_35:

      __break(1u);
      return;
    }
  }

  else if (v11 != *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  v23 = 1;
  v25 = v37;
  v24 = v38;
  v26 = v36;
LABEL_28:
  (*(v26 + 56))(v24, v23, 1, v25);
}

unint64_t sub_26D1EE790(char a1)
{
  result = 0x636572726F636E69;
  switch(a1)
  {
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6E6569736E617274;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
    case 11:
      result = 0x2D64696C61766E69;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

void sub_26D1EE990(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26D22CF14();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v8 = *&a1[v7];
  v9 = v8 >> 62;
  if (v8 >> 62)
  {
    v10 = sub_26D22E814();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {

      v12 = MEMORY[0x26D6B6F50](0, v8);
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_48;
      }

      v11 = *(v8 + 32);

      v12 = v11;
    }

    v13 = v12;
    v14 = *&v12[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v15 = *&v12[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    sub_26D1F1340(v14, v15);

    v16 = v8 & 0xFFFFFFFFFFFFFF8;
    if (!v9)
    {
LABEL_8:
      if (*(v16 + 16))
      {
        goto LABEL_9;
      }

LABEL_16:

      sub_26D1B7F48();
      swift_allocError();
      *v24 = 0xD000000000000045;
      *(v24 + 8) = 0x800000026D23B9B0;
      *(v24 + 16) = 0;
      *(v24 + 24) = 1;
      swift_willThrow();

      return;
    }
  }

  else
  {

    v16 = v8 & 0xFFFFFFFFFFFFFF8;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  if (!sub_26D22E814())
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v8 + 32);
      goto LABEL_12;
    }

LABEL_48:
    __break(1u);
    JUMPOUT(0x26D1EEF64);
  }

  v17 = MEMORY[0x26D6B6F50](0, v8);
LABEL_12:
  v18 = v17;
  v19 = *&v17[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
  v20 = *&v17[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

  v21 = sub_26D1F1340(v19, v20);

  if (v21 == 14)
  {
    v22 = *MEMORY[0x277CF2838];
    v23 = sub_26D22D794();
    (*(*(v23 - 8) + 104))(a2, v22, v23);
  }

  else
  {
    v25 = sub_26D22D794();
    switch(v21)
    {
      case 1:
        v26 = MEMORY[0x277CF2790];
        break;
      case 2:
        v26 = MEMORY[0x277CF2828];
        break;
      case 3:
        v26 = MEMORY[0x277CF27E0];
        break;
      case 4:
        v26 = MEMORY[0x277CF2808];
        break;
      case 5:
        v26 = MEMORY[0x277CF27D8];
        break;
      case 6:
        v26 = MEMORY[0x277CF27B0];
        break;
      case 7:
        v26 = MEMORY[0x277CF27A8];
        break;
      case 8:
        v26 = MEMORY[0x277CF27F0];
        break;
      case 9:
        v26 = MEMORY[0x277CF2780];
        break;
      case 10:
        v26 = MEMORY[0x277CF27C0];
        break;
      case 11:
        v26 = MEMORY[0x277CF2778];
        break;
      case 12:
        v26 = MEMORY[0x277CF2818];
        break;
      case 13:
        v26 = MEMORY[0x277CF2750];
        break;
      default:
        v26 = MEMORY[0x277CF2760];
        break;
    }

    (*(*(v25 - 8) + 104))(a2, *v26, v25);
  }

  v27 = *&v18[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  if (!*(v27 + 16))
  {
    goto LABEL_39;
  }

  v28 = sub_26D1BDEEC(0x6F73616572627573, 0xEE00747865742D6ELL);
  if ((v29 & 1) == 0)
  {

LABEL_39:

    return;
  }

  v30 = (*(v27 + 56) + 16 * v28);
  v31 = *v30;
  v32 = v30[1];

  sub_26D22DA24();

  v33 = sub_26D22CEF4();
  v34 = sub_26D22E5F4();

  if (os_log_type_enabled(v33, v34))
  {
    v44 = v34;
    v45 = v31;
    v35 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50 = v43;
    *v35 = 136315394;
    if (v21 == 14)
    {
      v36 = 0;
      v37 = 0;
    }

    else
    {
      v36 = sub_26D1EE790(v21);
    }

    v48 = v36;
    v49 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0EE8, qword_26D231B80);
    v38 = sub_26D22E414();
    v40 = sub_26D1E9B10(v38, v39, &v50);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    v41 = sub_26D1E9B10(v45, v32, &v50);

    *(v35 + 14) = v41;
    _os_log_impl(&dword_26D1AF000, v33, v44, "IMDispositionNotification.DeliveryNotification.MlsServerFailureReason %s subreason-text: %s", v35, 0x16u);
    v42 = v43;
    swift_arrayDestroy();
    MEMORY[0x26D6B7800](v42, -1, -1);
    MEMORY[0x26D6B7800](v35, -1, -1);
  }

  else
  {
  }

  (*(v46 + 8))(v6, v47);
}

void sub_26D1EEF9C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v21 = a1;
  v4 = *&a1[v3];
  if (v4 >> 62)
  {
LABEL_37:
    v5 = sub_26D22E814();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v4 & 0xC000000000000001;

  v7 = 0;
  while (v5 != v7)
  {
    if (v6)
    {
      v8 = MEMORY[0x26D6B6F50](v7, v4);
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;

    v10 = sub_26D22E854();

    if (v10 < 6)
    {
      v5 = v7;
      break;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_36;
    }
  }

  if (!(v4 >> 62))
  {
    if (v5 != *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_25:

    sub_26D1B7F48();
    swift_allocError();
    *v19 = 0xD000000000000045;
    *(v19 + 8) = 0x800000026D23BA00;
    *(v19 + 16) = 0;
    *(v19 + 24) = 1;
    swift_willThrow();

    return;
  }

  if (v5 == sub_26D22E814())
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v6)
  {
    v12 = MEMORY[0x26D6B6F50](v5, v4);
  }

  else
  {
    if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v12 = *(v4 + 32 + 8 * v5);
  }

  v13 = v12;
  v15 = *&v12[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
  v14 = *&v12[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

  v16 = sub_26D1F12F4(v15, v14);

  if (v16 == 6)
  {
LABEL_40:
    __break(1u);
    return;
  }

  v17 = sub_26D22D784();
  if (v16 > 2)
  {
    if (v16 == 3)
    {
      v18 = MEMORY[0x277CF2700];
    }

    else if (v16 == 4)
    {
      v18 = MEMORY[0x277CF2738];
    }

    else
    {
      v18 = MEMORY[0x277CF2748];
    }
  }

  else if (v16)
  {
    if (v16 == 1)
    {
      v18 = MEMORY[0x277CF2718];
    }

    else
    {
      v18 = MEMORY[0x277CF26F8];
    }
  }

  else
  {
    v18 = MEMORY[0x277CF2720];
  }

  (*(*(v17 - 8) + 104))(a2, *v18, v17);
}

void sub_26D1EF2B8(void *a1)
{
  v3 = sub_26D22D7B4();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v7 = a1;
  v8 = sub_26D1BABE0(KeyPath, v7);

  v9 = sub_26D1E7618(v8);
  if (v1)
  {
  }

  else
  {
    v10 = v9;

    if (v10)
    {
      v11 = v10;
      sub_26D1EDF7C(v11, v5);
      sub_26D22D774();
    }

    else
    {
      sub_26D1B7F48();
      swift_allocError();
      *v12 = xmmword_26D231AC0;
      *(v12 + 16) = 0;
      *(v12 + 24) = 1;
      swift_willThrow();
    }
  }
}

void sub_26D1EF454(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26D22D764();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  KeyPath = swift_getKeyPath();
  v13 = a1;
  v14 = sub_26D1BABB8(KeyPath, v13);

  v15 = sub_26D1E7618(v14);
  if (v2)
  {

    return;
  }

  v16 = v15;

  if (!v16)
  {
    sub_26D1B7F48();
    swift_allocError();
    *v26 = xmmword_26D231AC0;
    *(v26 + 16) = 0;
    *(v26 + 24) = 1;
    swift_willThrow();
LABEL_27:

    return;
  }

  v39 = v9;
  v40 = v6;
  v41 = v5;
  v42 = a2;
  v43 = 0;
  v44 = v13;
  v17 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v18 = *&v16[v17];
  v46 = v18 >> 62;
  v47 = v11;
  if (v18 >> 62)
  {
LABEL_30:
    v19 = sub_26D22E814();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v18 & 0xC000000000000001;
  v38 = v18 + 32;
  v45 = v16;

  v21 = 0;
  v16 = &unk_287E98F10;
  while (v19 != v21)
  {
    if (v20)
    {
      v22 = MEMORY[0x26D6B6F50](v21, v18);
    }

    else
    {
      if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v22 = *(v18 + 8 * v21 + 32);
    }

    v23 = v22;

    v24 = sub_26D22E854();

    if (v24 < 3)
    {
      v19 = v21;
      break;
    }

    if (__OFADD__(v21++, 1))
    {
      goto LABEL_29;
    }
  }

  v27 = v47;
  if (!v46)
  {
    if (v19 != *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (v19 == sub_26D22E814())
  {
LABEL_26:
    v36 = v45;

    sub_26D1B7F48();
    swift_allocError();
    *v37 = 0xD000000000000034;
    *(v37 + 8) = 0x800000026D23BA50;
    *(v37 + 16) = 0;
    *(v37 + 24) = 1;
    swift_willThrow();

    v13 = v44;
    goto LABEL_27;
  }

LABEL_20:
  if (v20)
  {
    v28 = MEMORY[0x26D6B6F50](v19, v18);
LABEL_23:
    v29 = v28;

    v30 = sub_26D22E854();
    v31 = v45;

    if (v30 < 3)
    {
      v33 = v39;
      v32 = v40;
      v34 = v41;
      (*(v40 + 104))(v39, **(&unk_279D955C0 + v30), v41);
      (*(v32 + 32))(v27, v33, v34);
      sub_26D22D754();
      v35 = v44;

      return;
    }

    goto LABEL_33;
  }

  if (v19 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v38 + 8 * v19);
    goto LABEL_23;
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_26D1EF8C4()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D1EF914(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

void sub_26D1EF96C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26D22D714();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  KeyPath = swift_getKeyPath();
  v13 = a1;
  v14 = sub_26D1BAB68(KeyPath, v13);

  v15 = sub_26D1E7618(v14);
  if (v2)
  {

    return;
  }

  v16 = v15;

  if (!v16)
  {
    sub_26D1B7F48();
    swift_allocError();
    *v26 = xmmword_26D231AC0;
    *(v26 + 16) = 0;
    *(v26 + 24) = 1;
    swift_willThrow();
LABEL_27:

    return;
  }

  v41 = v9;
  v42 = v6;
  v43 = v5;
  v44 = a2;
  v45 = 0;
  v47 = v13;
  v17 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v18 = *&v16[v17];
  v48 = v18 >> 62;
  v49 = v11;
  if (v18 >> 62)
  {
LABEL_30:
    v19 = sub_26D22E814();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v18 & 0xC000000000000001;
  v40 = v18 + 32;
  v46 = v16;

  v21 = 0;
  v16 = &unk_287E98F78;
  while (v19 != v21)
  {
    if (v20)
    {
      v22 = MEMORY[0x26D6B6F50](v21, v18);
    }

    else
    {
      if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v22 = *(v18 + 8 * v21 + 32);
    }

    v23 = v22;

    v24 = sub_26D22E854();

    if (v24 < 4)
    {
      v19 = v21;
      break;
    }

    if (__OFADD__(v21++, 1))
    {
      goto LABEL_29;
    }
  }

  v27 = v49;
  if (!v48)
  {
    if (v19 != *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (v19 == sub_26D22E814())
  {
LABEL_26:
    v38 = v46;

    sub_26D1B7F48();
    swift_allocError();
    *v39 = 0xD000000000000043;
    *(v39 + 8) = 0x800000026D23BA90;
    *(v39 + 16) = 0;
    *(v39 + 24) = 1;
    swift_willThrow();

    v13 = v47;
    goto LABEL_27;
  }

LABEL_20:
  if (v20)
  {
    v28 = MEMORY[0x26D6B6F50](v19, v18);
LABEL_23:
    v29 = v28;
    v30 = *&v28[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v31 = *&v28[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    v32 = sub_26D1F11C4(v30, v31);

    if (v32 != 4)
    {
      v33 = v46;

      v35 = v41;
      v34 = v42;
      v36 = v43;
      (*(v42 + 104))(v41, **(&unk_279D955D8 + v32), v43);
      (*(v34 + 32))(v27, v35, v36);
      sub_26D22D704();
      v37 = v47;

      return;
    }

    goto LABEL_33;
  }

  if (v19 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v40 + 8 * v19);
    goto LABEL_23;
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_26D1EFDD8(char *a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v3 = sub_26D22D724();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v48 = &v47 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v47 = &v47 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v10);
  v51 = &v47 - v13;
  v14 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v56 = a1;
  v15 = *&a1[v14];
  v58 = v15 >> 62;
  v50 = v12;
  if (v15 >> 62)
  {
LABEL_61:
    v16 = sub_26D22E814();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = v15 & 0xC000000000000001;
  v52 = v15 + 32;

  v18 = 0;
  v19 = &unk_287E99078;
  while (v16 != v18)
  {
    if (v17)
    {
      v20 = MEMORY[0x26D6B6F50](v18, v15);
    }

    else
    {
      if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v20 = *(v15 + 8 * v18 + 32);
    }

    v21 = v20;

    v22 = sub_26D22E854();

    if (v22 < 4)
    {
      v16 = v18;
      break;
    }

    if (__OFADD__(v18++, 1))
    {
      goto LABEL_60;
    }
  }

  if (v58)
  {
    if (v16 != sub_26D22E814())
    {
LABEL_16:
      if (v17)
      {
        v24 = MEMORY[0x26D6B6F50](v16, v15);
      }

      else
      {
        if (v16 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_64;
        }

        v24 = *(v52 + 8 * v16);
      }

      v19 = v24;
      v25 = &v24[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v27 = *&v24[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v26 = *&v24[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

      v28 = sub_26D1F1210(v27, v26);
      v29 = v57;
      if (v28 != 4)
      {

        v30 = *v25;
        v31 = *(v25 + 1);
        if (v28 > 1)
        {
          if (v28 == 2)
          {
            v39 = v30 == 0xD000000000000017 && 0x800000026D23A300 == v31;
            if (v39 || (sub_26D22E964() & 1) != 0)
            {
              v33 = v48;
              sub_26D1EF96C(v19, v48);

              if (v29)
              {
                return;
              }

              v34 = MEMORY[0x277CF2678];
              goto LABEL_56;
            }
          }

          else
          {
            v41 = v30 == 0xD000000000000019 && 0x800000026D23A320 == v31;
            if (v41 || (sub_26D22E964() & 1) != 0)
            {
              v33 = v49;
              sub_26D1EDB2C(v19, v49);
              if (!v29)
              {

                v34 = MEMORY[0x277CF2688];
LABEL_56:
                v38 = v53;
                v43 = v54;
                (*(v53 + 104))(v33, *v34, v54);
                v44 = *(v38 + 32);
                v45 = v51;
                v44(v51, v33, v43);
                v46 = v55;
                v44(v55, v45, v43);
                v37 = v43;
                v36 = v46;
                v35 = 0;
                goto LABEL_57;
              }

              v19 = v56;
LABEL_54:

              return;
            }
          }
        }

        else if (v28)
        {
          v40 = v30 == 0xD000000000000014 && 0x800000026D23A2E0 == v31;
          if (v40 || (sub_26D22E964() & 1) != 0)
          {
            v33 = v47;
            sub_26D1EF454(v19, v47);

            if (v29)
            {
              return;
            }

            v34 = MEMORY[0x277CF26A0];
            goto LABEL_56;
          }
        }

        else
        {
          v32 = v30 == 0xD000000000000015 && 0x800000026D23A2C0 == v31;
          if (v32 || (sub_26D22E964() & 1) != 0)
          {
            v33 = v50;
            sub_26D1EF2B8(v19);

            if (v29)
            {
              return;
            }

            v34 = MEMORY[0x277CF26B0];
            goto LABEL_56;
          }
        }

        sub_26D1B7F48();
        swift_allocError();
        *v42 = v30;
        *(v42 + 8) = v31;
        *(v42 + 16) = 0;
        *(v42 + 24) = 0;
        swift_willThrow();

        goto LABEL_54;
      }

LABEL_64:

      __break(1u);
      return;
    }
  }

  else if (v16 != *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  v35 = 1;
  v37 = v54;
  v36 = v55;
  v38 = v53;
LABEL_57:
  (*(v38 + 56))(v36, v35, 1, v37);
}

uint64_t sub_26D1F03BC()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F0494(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1F0558(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D1F062C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1F138C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D1F065C(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006469;
  v3 = 0x2D6567617373656DLL;
  v4 = 0xED00006972752D74;
  v5 = 0x6E65697069636572;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x800000026D23A5F0;
  }

  if (*v1)
  {
    v3 = 0x656D697465746164;
    v2 = 0xE800000000000000;
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

void sub_26D1F06F0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0ED8, &unk_26D231B40);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = &v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v82 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v85 = &v74 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v84 = &v74 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v74 - v13;
  v15 = sub_26D22CE34();
  v86 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v74 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v74 - v22;
  KeyPath = swift_getKeyPath();
  v25 = a1;
  v26 = sub_26D1BACA8(KeyPath, v25);

  v27 = sub_26D1DFEB4(0, v26);
  if (v2)
  {

    return;
  }

  v28 = v27;
  v78 = v21;
  v80 = v18;
  v81 = v26;
  v77 = v14;
  v79 = v23;
  if (!v27)
  {

    sub_26D1B7F48();
    swift_allocError();
    v34 = xmmword_26D231AE0;
LABEL_7:
    *v33 = v34;
    *(v33 + 16) = 0;
    *(v33 + 24) = 1;
    swift_willThrow();
LABEL_9:

    return;
  }

  v76 = v15;
  v29 = &v27[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v30 = *(v29 + 1);
  if (!v30)
  {

    sub_26D1B7F48();
    swift_allocError();
    v35 = MEMORY[0x277D837D0];
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
    *v36 = v35;
    *(v36 + 24) = 5;
    swift_willThrow();

    goto LABEL_9;
  }

  v31 = *v29;

  v32 = sub_26D1DFEB4(1u, v81);
  if (!v32)
  {

    sub_26D1B7F48();
    swift_allocError();
    v34 = xmmword_26D231AD0;
    goto LABEL_7;
  }

  v37 = v32;
  v38 = &v32[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v39 = v38[1];
  if (!v39)
  {

    sub_26D1B7F48();
    swift_allocError();
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;
    *v42 = v76;
    *(v42 + 24) = 5;
    swift_willThrow();

    goto LABEL_9;
  }

  v40 = *v38;

  v41 = v80;
  sub_26D1BCF54(v40, v39, v80);

  v43 = *(v86 + 32);
  v44 = v78;
  v45 = v41;
  v46 = v76;
  v43(v78, v45, v76);
  v43(v79, v44, v46);
  v47 = v81;
  v48 = sub_26D1DFEB4(2u, v81);
  v74 = v31;
  v80 = 0;
  if (!v48)
  {
    v78 = v30;
LABEL_21:
    v56 = sub_26D22CCE4();
    v57 = v77;
    (*(*(v56 - 8) + 56))(v77, 1, 1, v56);
    v58 = v25;
    goto LABEL_23;
  }

  v75 = v48;
  v49 = &v48[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v50 = *(v49 + 1);
  if (!v50)
  {
    v78 = v30;

    goto LABEL_21;
  }

  v51 = *v49;

  v52 = v84;
  sub_26D22CCD4();
  v53 = sub_26D22CCE4();
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v52, 1, v53) == 1)
  {

    (*(v86 + 8))(v79, v76);
    sub_26D1B950C(v52, &qword_2804E0890, &qword_26D230770);
    sub_26D1B7F48();
    swift_allocError();
    *v55 = v51;
    *(v55 + 8) = v50;
    *(v55 + 16) = 0;
    *(v55 + 24) = 4;
    swift_willThrow();

    goto LABEL_9;
  }

  v78 = v30;

  v57 = v77;
  (*(v54 + 32))(v77, v52, v53);
  (*(v54 + 56))(v57, 0, 1, v53);
  v58 = v25;
  v47 = v81;
LABEL_23:
  v59 = v80;
  v60 = sub_26D1DFEB4(3u, v47);
  v61 = v76;
  v62 = v85;
  if (!v59)
  {
    v63 = v60;

    if (v63)
    {
      v64 = &v63[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
      swift_beginAccess();
      v65 = *(v64 + 1);
      if (v65)
      {
        v66 = *v64;

        v67 = v82;
        v84 = v66;
        sub_26D22CCD4();
        v68 = sub_26D22CCE4();
        v69 = *(v68 - 8);
        if ((*(v69 + 48))(v67, 1, v68) == 1)
        {

          sub_26D1B950C(v77, &qword_2804E0890, &qword_26D230770);
          (*(v86 + 8))(v79, v61);
          sub_26D1B950C(v82, &qword_2804E0890, &qword_26D230770);
          sub_26D1B7F48();
          swift_allocError();
          *v70 = v84;
          *(v70 + 8) = v65;
          *(v70 + 16) = 0;
          *(v70 + 24) = 4;
          swift_willThrow();

          goto LABEL_9;
        }

        v73 = v85;
        (*(v69 + 32))(v85, v82, v68);
        (*(v69 + 56))(v73, 0, 1, v68);
        v58 = v25;
      }

      else
      {

        v72 = sub_26D22CCE4();
        (*(*(v72 - 8) + 56))(v85, 1, 1, v72);
      }
    }

    else
    {
      v71 = sub_26D22CCE4();
      (*(*(v71 - 8) + 56))(v62, 1, 1, v71);
    }

    v25 = v58;
    sub_26D1EFDD8(v25, v83);
    sub_26D22D7C4();
    goto LABEL_9;
  }

  sub_26D1B950C(v57, &qword_2804E0890, &qword_26D230770);
  (*(v86 + 8))(v79, v61);
}

unint64_t sub_26D1F11C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1F1210(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1F125C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1F12A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1F12F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1F1340(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1F138C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t _s13XMLCodingKeysOwet_3(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s13XMLCodingKeysOwst_3(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26D1F156C()
{
  result = qword_2804E0EF0;
  if (!qword_2804E0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0EF0);
  }

  return result;
}

unint64_t sub_26D1F15C4()
{
  result = qword_2804E0EF8;
  if (!qword_2804E0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0EF8);
  }

  return result;
}

unint64_t sub_26D1F161C()
{
  result = qword_2804E0F00;
  if (!qword_2804E0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F00);
  }

  return result;
}

unint64_t sub_26D1F1674()
{
  result = qword_2804E0F08;
  if (!qword_2804E0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F08);
  }

  return result;
}

unint64_t sub_26D1F16CC()
{
  result = qword_2804E0F10;
  if (!qword_2804E0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F10);
  }

  return result;
}

uint64_t sub_26D1F173C()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F1808(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1F18C0(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D1F1988@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1F21CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D1F19B8(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6574617473;
  v4 = 0xEB00000000657079;
  v5 = 0x74746E65746E6F63;
  if (*v1 != 2)
  {
    v5 = 0x68736572666572;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x697463617473616CLL;
    v2 = 0xEA00000000006576;
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

void sub_26D1F1A40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_26D22CE34();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_26D22D694();
  v61 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  KeyPath = swift_getKeyPath();
  v19 = a1;
  v20 = sub_26D1BAB40(KeyPath, v19);

  v21 = v62;
  v22 = sub_26D1DF190(0, v20);
  if (v21)
  {

    goto LABEL_3;
  }

  v56 = v15;
  v57 = v12;
  v52 = v5;
  v62 = v20;
  v53 = v8;
  v23 = v61;
  v55 = v17;
  if (!v22)
  {

    sub_26D1B7F48();
    swift_allocError();
    *v30 = xmmword_26D231F20;
    *(v30 + 16) = 0;
    *(v30 + 24) = 1;
    swift_willThrow();
    goto LABEL_3;
  }

  v54 = v9;
  v24 = &v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  v25 = v22;
  swift_beginAccess();
  if (!*(v24 + 1))
  {

    sub_26D1B7F48();
    swift_allocError();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = v54;
    v32 = 5;
    goto LABEL_14;
  }

  v26 = sub_26D22E854();

  if (v26)
  {
    v28 = v56;
    v27 = v57;
    if (v26 == 1)
    {
      v29 = MEMORY[0x277CF2568];
      goto LABEL_12;
    }

    sub_26D1B7F48();
    swift_allocError();
    *v31 = 0xD00000000000001DLL;
    *(v31 + 8) = 0x800000026D23BAE0;
    *(v31 + 16) = 0;
    v32 = 1;
LABEL_14:
    *(v31 + 24) = v32;
    swift_willThrow();

    goto LABEL_3;
  }

  v29 = MEMORY[0x277CF2558];
  v28 = v56;
  v27 = v57;
LABEL_12:

  v33 = v54;
  (v23)[13](v27, *v29, v54);
  v34 = v23[4];
  v34(v28, v27, v33);
  v34(v55, v28, v33);
  v35 = v62;
  v36 = sub_26D1DF190(1u, v62);
  if (v36)
  {
    v61 = v36;
    v37 = &v36[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
    swift_beginAccess();
    v38 = v37[1];
    v40 = v59;
    v39 = v60;
    if (v38)
    {
      v41 = *v37;

      v42 = v52;
      sub_26D1BCF54(v41, v38, v52);

      v43 = v53;
      (*(v40 + 32))(v53, v42, v39);
      v44 = 0;
    }

    else
    {

      v44 = 1;
      v43 = v53;
    }

    v35 = v62;
  }

  else
  {
    v44 = 1;
    v43 = v53;
    v40 = v59;
    v39 = v60;
  }

  (*(v40 + 56))(v43, v44, 1, v39);
  v45 = sub_26D1DF190(2u, v35);
  if (v45)
  {
    v46 = v45;
    swift_beginAccess();
  }

  v47 = sub_26D1DF190(3u, v62);

  if (v47)
  {
    v48 = &v47[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
    swift_beginAccess();
    v49 = v48[1];
    if (v49)
    {
      v50 = *v48;

      sub_26D1BA284(v50, v49);
    }
  }

  sub_26D22D684();
LABEL_3:
}

uint64_t sub_26D1F2164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26D1F21CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1F222C()
{
  result = qword_2804E0F18;
  if (!qword_2804E0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F18);
  }

  return result;
}

uint64_t sub_26D1F2280(char a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26D22E8A4();
  if (!v3)
  {
    if (v5)
    {
      v6 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v6 = result & 0xFFFFFFFFFFFFLL;
      }

      if (!v6)
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26D1F2300@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1188, &unk_26D232158);
  if (sub_26D22E924())
  {
    result = sub_26D22E934();
    if (!v2)
    {
      v5 = result;
      v6 = sub_26D22DEF4();
      v7 = v6;
      if (v5)
      {
        return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
      }

      else
      {
        sub_26D1FD028(&qword_2804E1360, MEMORY[0x277CF2D78], &protocol conformance descriptor for Chatbot.Menu);
        sub_26D22E884();
        return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
      }
    }
  }

  else
  {
    v8 = sub_26D22DEF4();
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  return result;
}

uint64_t sub_26D1F2484@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v36 = a4;
  v39 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v32 - v12;
  v14 = sub_26D22CAD4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v37) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26D22E8A4();
  if (!v7)
  {
    v34 = v13;
    v33 = a1;
    v20 = v39;
    if (v19)
    {
      v32[2] = 0;
      v21 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v21 = result & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        v32[1] = v6;
        v37 = result;
        v38 = v19;
        sub_26D22CAB4();
        sub_26D1B1F48();
        sub_26D22E6B4();
        (*(v15 + 8))(v17, v14);

        v22 = v34;
        sub_26D22CCD4();

        v23 = sub_26D22CCE4();
        v24 = *(v23 - 8);
        if ((*(v24 + 48))(v22, 1, v23) == 1)
        {
          sub_26D1B950C(v22, &qword_2804E0890, &qword_26D230770);
          v25 = sub_26D22E794();
          swift_allocError();
          v27 = v26;
          v28 = sub_26D22E894();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26D22F360;
          v30 = v35;
          *(inited + 56) = v36;
          *(inited + 64) = v30();
          *(inited + 32) = v33;
          v37 = v28;
          sub_26D223EA4(inited);
          sub_26D22E784();
          (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84168], v25);
          return swift_willThrow();
        }

        else
        {
          (*(v24 + 32))(v20, v22, v23);
          return (*(v24 + 56))(v20, 0, 1, v23);
        }
      }
    }

    v31 = sub_26D22CCE4();
    return (*(*(v31 - 8) + 56))(v20, 1, 1, v31);
  }

  return result;
}

uint64_t sub_26D1F287C@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  v8 = sub_26D22CCE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26D1F2484(a1, &qword_2804E1110, &unk_26D232118, &_s21DecodingConfigurationV10CodingKeysON_3, sub_26D1FB5E4, v7);
  if (!v2)
  {
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_26D1B950C(v7, &qword_2804E0890, &qword_26D230770);
    }

    else
    {
      v13 = *(v9 + 32);
      v13(v11, v7, v8);
      sub_26D22CCC4();
      if (v14)
      {

        v13(a2, v11, v8);
        v15 = 0;
        return (*(v9 + 56))(a2, v15, 1, v8);
      }

      (*(v9 + 8))(v11, v8);
    }

    v15 = 1;
    return (*(v9 + 56))(a2, v15, 1, v8);
  }

  return result;
}

uint64_t sub_26D1F2AA8()
{
  v0 = sub_26D22CF14();
  __swift_allocate_value_buffer(v0, qword_2804E0F20);
  __swift_project_value_buffer(v0, qword_2804E0F20);
  return sub_26D22CF04();
}

uint64_t sub_26D1F2BAC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26D22E854();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26D1F2C04(uint64_t a1)
{
  v2 = sub_26D1F2EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F2C40(uint64_t a1)
{
  v2 = sub_26D1F2EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.TelephoneNumber.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v3 = sub_26D22DCC4();
  v14 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0F38, &qword_26D232050);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1F2EA8();
  v10 = v15;
  sub_26D22EA24();
  if (!v10)
  {
    v11 = v14;
    v15 = v3;
    sub_26D22E8A4();
    sub_26D22DCB4();
    (*(v7 + 8))(v9, v6);
    (*(v11 + 32))(v13, v5, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26D1F2EA8()
{
  result = qword_2804E0F40;
  if (!qword_2804E0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F40);
  }

  return result;
}

uint64_t sub_26D1F2F14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x626E2D6C6574;
  if (v2 != 1)
  {
    v4 = 0x657079742D6C6574;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x626E2D6C6574;
  if (*a2 != 1)
  {
    v8 = 0x657079742D6C6574;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D1F300C()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F30A8(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1F3130(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D1F31C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1FCE60(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D1F31F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x626E2D6C6574;
  if (v2 != 1)
  {
    v5 = 0x657079742D6C6574;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6562616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D1F3250()
{
  v1 = 0x626E2D6C6574;
  if (*v0 != 1)
  {
    v1 = 0x657079742D6C6574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

unint64_t sub_26D1F32A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26D1FCE60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26D1F32D8(uint64_t a1)
{
  v2 = sub_26D1F36E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F3314(uint64_t a1)
{
  v2 = sub_26D1F36E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.TelephoneInfo.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_26D22DCC4();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v4 = sub_26D22DC34();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0F48, &qword_26D232058);
  MEMORY[0x28223BE20](v18);
  v8 = &v13 - v7;
  v9 = a1[3];
  v20 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_26D1F36E4();
  v10 = v19;
  sub_26D22EA24();
  if (!v10)
  {
    v19 = v6;
    v14 = v4;
    v23 = 0;
    v13 = sub_26D22E8D4();
    v22 = 1;
    sub_26D1FD028(&qword_2804E0F58, MEMORY[0x277CF2C78], &protocol conformance descriptor for Chatbot.TelephoneNumber);
    sub_26D22E884();
    v21 = 2;
    sub_26D22E8D4();
    v12 = v19;
    sub_26D22DC24();
    MEMORY[8](v8, v18);
    (*(v15 + 32))(v16, v12, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

unint64_t sub_26D1F36E4()
{
  result = qword_2804E0F50;
  if (!qword_2804E0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F50);
  }

  return result;
}

uint64_t sub_26D1F3750(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xED0000657079742DLL;
  v4 = 0x6C6562616CLL;
  if (v2 == 1)
  {
    v4 = 0x6972752D72646461;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6972752D72646461;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xED0000657079742DLL;
  v8 = 0x6C6562616CLL;
  if (*a2 == 1)
  {
    v8 = 0x6972752D72646461;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6972752D72646461;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D1F3844()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F38E0(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1F3968(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D1F3A00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1FCFDC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D1F3A30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xED0000657079742DLL;
  v5 = 0x6972752D72646461;
  if (v2 != 1)
  {
    v5 = 0x6C6562616CLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6972752D72646461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D1F3A98()
{
  v1 = 0x6C6562616CLL;
  if (*v0 == 1)
  {
    v1 = 0x6972752D72646461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6972752D72646461;
  }
}

unint64_t sub_26D1F3AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26D1FCFDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26D1F3B14(uint64_t a1)
{
  v2 = sub_26D1F3FC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F3B50(uint64_t a1)
{
  v2 = sub_26D1F3FC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.URIEntry.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = sub_26D22E064();
  MEMORY[0x28223BE20](v25);
  v24 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26D22E074();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v6 = sub_26D22E084();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0F60, &qword_26D232060);
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = v17 - v10;
  v12 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_26D1F3FC8();
  sub_26D22EA24();
  if (!v2)
  {
    v18 = v6;
    v19 = v8;
    v13 = v9;
    v30 = 0;
    v17[0] = sub_26D22E8D4();
    v17[1] = v14;
    v29 = 1;
    sub_26D1FD028(&qword_2804E0F70, MEMORY[0x277CF2F20], MEMORY[0x277CF2F28]);
    sub_26D22E914();
    v28 = 2;
    sub_26D1FD028(&qword_2804E0F78, MEMORY[0x277CF2F00], MEMORY[0x277CF2F08]);
    sub_26D22E914();
    v15 = v19;
    sub_26D22E054();
    (*(v13 + 8))(v11, v26);
    (*(v20 + 32))(v21, v15, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

unint64_t sub_26D1F3FC8()
{
  result = qword_2804E0F68;
  if (!qword_2804E0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F68);
  }

  return result;
}

uint64_t sub_26D1F4034(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72746E652D697275;
  }

  else
  {
    v3 = 7103860;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE900000000000079;
  }

  if (*a2)
  {
    v5 = 0x72746E652D697275;
  }

  else
  {
    v5 = 7103860;
  }

  if (*a2)
  {
    v6 = 0xE900000000000079;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D1F40D8()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F4158(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1F41C4(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D1F424C(uint64_t *a1@<X8>)
{
  v2 = 7103860;
  if (*v1)
  {
    v2 = 0x72746E652D697275;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000079;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D1F4288()
{
  if (*v0)
  {
    return 0x72746E652D697275;
  }

  else
  {
    return 7103860;
  }
}

uint64_t sub_26D1F42D8(uint64_t a1)
{
  v2 = sub_26D1F46A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F4314(uint64_t a1)
{
  v2 = sub_26D1F46A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.CommunicationAddress.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_26D22DC34();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26D22DDA4();
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0F80, &qword_26D232068);
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v14 - v10;
  v12 = a1[3];
  v20 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_26D1F46A8();
  sub_26D22EA24();
  if (!v2)
  {
    v14 = v6;
    v22 = 0;
    sub_26D1FD028(&qword_2804E0F90, MEMORY[0x277CF2C10], &protocol conformance descriptor for Chatbot.TelephoneInfo);
    sub_26D22E884();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0F98, &unk_26D232070);
    v21 = 1;
    sub_26D1F46FC();
    sub_26D22E884();
    sub_26D22DD94();
    (*(v9 + 8))(v11, v19);
    (*(v16 + 32))(v15, v8, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

unint64_t sub_26D1F46A8()
{
  result = qword_2804E0F88;
  if (!qword_2804E0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0F88);
  }

  return result;
}

unint64_t sub_26D1F46FC()
{
  result = qword_2804E0FA0;
  if (!qword_2804E0FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E0F98, &unk_26D232070);
    sub_26D1FD028(&qword_2804E0FA8, MEMORY[0x277CF2F30], &protocol conformance descriptor for Chatbot.URIEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0FA0);
  }

  return result;
}

uint64_t sub_26D1F47C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72707265676E6966;
  }

  else
  {
    v3 = 0x72752D616964656DLL;
  }

  if (v2)
  {
    v4 = 0xE90000000000006CLL;
  }

  else
  {
    v4 = 0xEB00000000746E69;
  }

  if (*a2)
  {
    v5 = 0x72707265676E6966;
  }

  else
  {
    v5 = 0x72752D616964656DLL;
  }

  if (*a2)
  {
    v6 = 0xEB00000000746E69;
  }

  else
  {
    v6 = 0xE90000000000006CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D1F487C()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F490C(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1F4988(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D1F4A20(uint64_t *a1@<X8>)
{
  v2 = 0x72752D616964656DLL;
  if (*v1)
  {
    v2 = 0x72707265676E6966;
  }

  v3 = 0xE90000000000006CLL;
  if (*v1)
  {
    v3 = 0xEB00000000746E69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D1F4A6C()
{
  if (*v0)
  {
    return 0x72707265676E6966;
  }

  else
  {
    return 0x72752D616964656DLL;
  }
}

uint64_t sub_26D1F4AC0(uint64_t a1)
{
  v2 = sub_26D1F4E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F4AFC(uint64_t a1)
{
  v2 = sub_26D1F4E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.Media.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v4 - 8);
  v20 = &v16 - v5;
  v6 = sub_26D22DF14();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0FB0, &qword_26D232080);
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1F4E58();
  sub_26D22EA24();
  if (!v2)
  {
    v12 = v8;
    v17 = v6;
    v13 = v19;
    sub_26D22CCE4();
    v23 = 0;
    sub_26D1FD028(&qword_2804E0FC0, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v14 = v21;
    sub_26D22E8C4();
    v22 = 1;
    sub_26D22E8A4();
    sub_26D22DF04();
    (*(v9 + 8))(v11, v14);
    (*(v18 + 32))(v13, v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26D1F4E58()
{
  result = qword_2804E0FB8;
  if (!qword_2804E0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0FB8);
  }

  return result;
}

uint64_t sub_26D1F4EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x616964656DLL;
  if (v2 != 1)
  {
    v5 = 0x6F632D616964656DLL;
    v4 = 0xED0000746E65746ELL;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x616964656DLL;
  if (*a2 != 1)
  {
    v8 = 0x6F632D616964656DLL;
    v3 = 0xED0000746E65746ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D1F4FD0()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F5078(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1F510C(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D1F51B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1FCE14(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D1F51E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x616964656DLL;
  if (v2 != 1)
  {
    v5 = 0x6F632D616964656DLL;
    v4 = 0xED0000746E65746ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6562616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D1F5244()
{
  v1 = 0x616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x6F632D616964656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

unint64_t sub_26D1F52A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26D1FCE14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26D1F52CC(uint64_t a1)
{
  v2 = sub_26D1F5828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F5308(uint64_t a1)
{
  v2 = sub_26D1F5828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MediaEntry.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v24 = sub_26D22DA34();
  MEMORY[0x28223BE20](v24);
  v23 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_26D22DF14();
  v22 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26D22DA54();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D22DA64();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0FC8, &qword_26D232088);
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v13 = &v18 - v12;
  v14 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_26D1F5828();
  v28 = v13;
  v15 = v30;
  sub_26D22EA24();
  if (!v15)
  {
    v30 = v10;
    v19 = v8;
    v34 = 0;
    sub_26D1FD028(&qword_2804E0FD8, MEMORY[0x277CF2A68], MEMORY[0x277CF2A70]);
    sub_26D22E914();
    v18 = v7;
    v33 = 1;
    sub_26D1FD028(&qword_2804E0FE0, MEMORY[0x277CF2D80], &protocol conformance descriptor for Chatbot.Media);
    sub_26D22E884();
    v32 = 2;
    sub_26D1FD028(&qword_2804E0FE8, MEMORY[0x277CF2A50], MEMORY[0x277CF2A58]);
    sub_26D22E914();
    v17 = v30;
    sub_26D22DA44();
    (*(v11 + 8))(v28, v29);
    (*(v20 + 32))(v21, v17, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

unint64_t sub_26D1F5828()
{
  result = qword_2804E0FD0;
  if (!qword_2804E0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0FD0);
  }

  return result;
}

uint64_t sub_26D1F5944@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26D22E854();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26D1F599C(uint64_t a1)
{
  v2 = sub_26D1F5C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F59D8(uint64_t a1)
{
  v2 = sub_26D1F5C64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MediaList.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_26D22E184();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0FF0, &qword_26D232090);
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1F5C64();
  sub_26D22EA24();
  if (!v2)
  {
    v10 = v15;
    v11 = v16;
    v14 = v4;
    v12 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1000, &qword_26D232098);
    sub_26D1F5CB8();
    sub_26D22E874();
    sub_26D22E174();
    (*(v10 + 8))(v9, v7);
    (*(v11 + 32))(v12, v6, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26D1F5C64()
{
  result = qword_2804E0FF8;
  if (!qword_2804E0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0FF8);
  }

  return result;
}

unint64_t sub_26D1F5CB8()
{
  result = qword_2804E1008;
  if (!qword_2804E1008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1000, &qword_26D232098);
    sub_26D1FD028(&qword_2804E1010, MEMORY[0x277CF2A78], &protocol conformance descriptor for Chatbot.MediaEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1008);
  }

  return result;
}

uint64_t Chatbot.CategoryList.Entry.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26D22DB24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D22EA14();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_26D22E974();
    sub_26D22DB14();
    (*(v6 + 32))(a2, v8, v5);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D1F5FC8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26D22E854();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26D1F6020(uint64_t a1)
{
  v2 = sub_26D1F62E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F605C(uint64_t a1)
{
  v2 = sub_26D1F62E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.CategoryList.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_26D22DB34();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1018, &qword_26D2320A0);
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1F62E8();
  sub_26D22EA24();
  if (!v2)
  {
    v10 = v15;
    v11 = v16;
    v14 = v4;
    v12 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1028, &qword_26D2320A8);
    sub_26D1F633C();
    sub_26D22E874();
    sub_26D22DB04();
    (*(v10 + 8))(v9, v7);
    (*(v11 + 32))(v12, v6, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26D1F62E8()
{
  result = qword_2804E1020;
  if (!qword_2804E1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1020);
  }

  return result;
}

unint64_t sub_26D1F633C()
{
  result = qword_2804E1030;
  if (!qword_2804E1030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1028, &qword_26D2320A8);
    sub_26D1FD028(&qword_2804E1038, MEMORY[0x277CF2B18], &protocol conformance descriptor for Chatbot.CategoryList.Entry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1030);
  }

  return result;
}

uint64_t sub_26D1F6408(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656D616E2D67726FLL;
  }

  else
  {
    v3 = 0x2D79616C70736964;
  }

  if (v2)
  {
    v4 = 0xEC000000656D616ELL;
  }

  else
  {
    v4 = 0xED0000657079742DLL;
  }

  if (*a2)
  {
    v5 = 0x656D616E2D67726FLL;
  }

  else
  {
    v5 = 0x2D79616C70736964;
  }

  if (*a2)
  {
    v6 = 0xED0000657079742DLL;
  }

  else
  {
    v6 = 0xEC000000656D616ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D1F64C4()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F655C(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1F65E0(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D1F6680(uint64_t *a1@<X8>)
{
  v2 = 0x2D79616C70736964;
  if (*v1)
  {
    v2 = 0x656D616E2D67726FLL;
  }

  v3 = 0xEC000000656D616ELL;
  if (*v1)
  {
    v3 = 0xED0000657079742DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D1F66D4()
{
  if (*v0)
  {
    return 0x656D616E2D67726FLL;
  }

  else
  {
    return 0x2D79616C70736964;
  }
}

uint64_t sub_26D1F6730(uint64_t a1)
{
  v2 = sub_26D1F6AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F676C(uint64_t a1)
{
  v2 = sub_26D1F6AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.OrganizationName.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_26D22DCD4();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26D22DCF4();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1040, &qword_26D2320B0);
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v14 - v8;
  v10 = a1[3];
  v19 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_26D1F6AC4();
  v11 = v18;
  sub_26D22EA24();
  if (!v11)
  {
    v18 = v4;
    v12 = v16;
    v21 = 0;
    v14 = sub_26D22E8D4();
    v20 = 1;
    sub_26D1FD028(&qword_2804E1050, MEMORY[0x277CF2C88], MEMORY[0x277CF2C90]);
    sub_26D22E914();
    sub_26D22DCE4();
    (*(v7 + 8))(v9, v17);
    (*(v15 + 32))(v12, v6, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

unint64_t sub_26D1F6AC4()
{
  result = qword_2804E1048;
  if (!qword_2804E1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1048);
  }

  return result;
}

uint64_t sub_26D1F6B3C()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F6C40(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1F6D30(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D1F6E30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1FCEF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D1F6E60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0x6464612D6D6D6F63;
  v5 = 0xE800000000000000;
  v6 = 0x656D616E2D67726FLL;
  v7 = 0xEF6E6F6974706972;
  v8 = 0x637365642D67726FLL;
  if (v2 != 3)
  {
    v8 = 0x79726F6765746163;
    v7 = 0xED00007473696C2DLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x696C2D616964656DLL;
    v3 = 0xEA00000000007473;
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

uint64_t sub_26D1F6F20()
{
  v1 = *v0;
  v2 = 0x6464612D6D6D6F63;
  v3 = 0x656D616E2D67726FLL;
  v4 = 0x637365642D67726FLL;
  if (v1 != 3)
  {
    v4 = 0x79726F6765746163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696C2D616964656DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_26D1F6FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26D1FCEF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26D1F7010(uint64_t a1)
{
  v2 = sub_26D1F7800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F704C(uint64_t a1)
{
  v2 = sub_26D1F7800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.OrganizationDetails.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1058, &qword_26D2320B8);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1060, &qword_26D2320C0);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v32 - v6;
  v7 = sub_26D22DD64();
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1068, &qword_26D2320C8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v39 = &v32 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1070, &qword_26D2320D0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v32 - v21;
  v23 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_26D1F7800();
  v24 = v41;
  sub_26D22EA24();
  if (!v24)
  {
    v41 = v14;
    v32 = v10;
    v33 = v18;
    v34 = v20;
    sub_26D22DDA4();
    v47 = 0;
    sub_26D1FD028(&qword_2804E1080, MEMORY[0x277CF2CD8], &protocol conformance descriptor for Chatbot.CommunicationAddress);
    v25 = v39;
    sub_26D22E874();
    v26 = v25;
    v27 = v33;
    sub_26D1FB3C4(v26, v33);
    v28 = v34;
    sub_26D1F7854(v27, v41);
    sub_26D22E184();
    v46 = 1;
    sub_26D1FD028(&qword_2804E1088, MEMORY[0x277CF2FD0], &protocol conformance descriptor for Chatbot.MediaList);
    sub_26D22E874();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1090, &unk_26D2320D8);
    v45 = 2;
    sub_26D1F78C4();
    sub_26D22E874();
    v44 = 3;
    v39 = sub_26D22E8A4();
    v40 = v30;
    sub_26D22DB34();
    v43 = 4;
    sub_26D1FD028(&qword_2804E10A8, MEMORY[0x277CF2B20], &protocol conformance descriptor for Chatbot.CategoryList);
    sub_26D22E874();
    v31 = v32;
    sub_26D22DD54();
    sub_26D1B950C(v27, &qword_2804E1068, &qword_26D2320C8);
    (*(v28 + 8))(v22, v19);
    (*(v36 + 32))(v37, v31, v35);
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

unint64_t sub_26D1F7800()
{
  result = qword_2804E1078;
  if (!qword_2804E1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1078);
  }

  return result;
}

uint64_t sub_26D1F7854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1068, &qword_26D2320C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26D1F78C4()
{
  result = qword_2804E1098;
  if (!qword_2804E1098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1090, &unk_26D2320D8);
    sub_26D1FD028(&qword_2804E10A0, MEMORY[0x277CF2C98], &protocol conformance descriptor for Chatbot.OrganizationName);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1098);
  }

  return result;
}

uint64_t sub_26D1F7990(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657079742D636370;
  }

  else
  {
    v3 = 0x617465642D67726FLL;
  }

  if (v2)
  {
    v4 = 0xEB00000000736C69;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x657079742D636370;
  }

  else
  {
    v5 = 0x617465642D67726FLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEB00000000736C69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D1F7A40()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F7ACC(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1F7B44(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D1F7BD8(uint64_t *a1@<X8>)
{
  v2 = 0x617465642D67726FLL;
  if (*v1)
  {
    v2 = 0x657079742D636370;
  }

  v3 = 0xEB00000000736C69;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D1F7C20()
{
  if (*v0)
  {
    return 0x657079742D636370;
  }

  else
  {
    return 0x617465642D67726FLL;
  }
}

uint64_t sub_26D1F7C70(uint64_t a1)
{
  v2 = sub_26D1FB434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F7CAC(uint64_t a1)
{
  v2 = sub_26D1FB434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.PersonalContactCard.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E10B0, &qword_26D2320E8);
  MEMORY[0x28223BE20](v4 - 8);
  v20 = &v16 - v5;
  v6 = sub_26D22DD84();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E10B8, &qword_26D2320F0);
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1FB434();
  sub_26D22EA24();
  if (!v2)
  {
    v12 = v8;
    v17 = v6;
    v13 = v19;
    sub_26D22DD64();
    v23 = 0;
    sub_26D1FD028(&qword_2804E10C8, MEMORY[0x277CF2CC8], &protocol conformance descriptor for Chatbot.OrganizationDetails);
    v14 = v21;
    sub_26D22E874();
    v22 = 1;
    sub_26D22E8A4();
    sub_26D22DD74();
    (*(v9 + 8))(v11, v14);
    (*(v18 + 32))(v13, v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D1F8020(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6562616CLL;
  }

  else
  {
    v3 = 0x7274732D72646461;
  }

  if (v2)
  {
    v4 = 0xEB00000000676E69;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6562616CLL;
  }

  else
  {
    v5 = 0x7274732D72646461;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEB00000000676E69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D1F80CC()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F8154(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1F81C8(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D1F8258(uint64_t *a1@<X8>)
{
  v2 = 0x7274732D72646461;
  if (*v1)
  {
    v2 = 0x6C6562616CLL;
  }

  v3 = 0xEB00000000676E69;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D1F829C()
{
  if (*v0)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x7274732D72646461;
  }
}

uint64_t sub_26D1F82E8(uint64_t a1)
{
  v2 = sub_26D1FB488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F8324(uint64_t a1)
{
  v2 = sub_26D1FB488();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.AddressEntry.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_26D22DAF4();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E10D0, &qword_26D2320F8);
  v7 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1FB488();
  sub_26D22EA24();
  if (!v2)
  {
    v10 = v7;
    v15 = v4;
    v11 = v17;
    v12 = v18;
    v20 = 0;
    v14[1] = sub_26D22E8A4();
    v19 = 1;
    sub_26D22E8D4();
    sub_26D22DAE4();
    (*(v10 + 8))(v9, v12);
    (*(v16 + 32))(v11, v6, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D1F86D4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26D22E854();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26D1F872C(uint64_t a1)
{
  v2 = sub_26D1FB4DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F8768(uint64_t a1)
{
  v2 = sub_26D1FB4DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.Address.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_26D22DFF4();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E10E0, &qword_26D232100);
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1FB4DC();
  sub_26D22EA24();
  if (!v2)
  {
    v10 = v15;
    v11 = v16;
    v14 = v4;
    v12 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E10F0, &qword_26D232108);
    sub_26D1FB530();
    sub_26D22E874();
    sub_26D22DFE4();
    (*(v10 + 8))(v9, v7);
    (*(v11 + 32))(v12, v6, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D1F89F4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 6513520;
    v6 = 0x72656469766F7270;
    if (a1 != 2)
    {
      v6 = 0x6C69616D65;
    }

    if (a1)
    {
      v5 = 0x6E6F6973726576;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65746973626577;
    v2 = 0x656761504354;
    if (a1 != 7)
    {
      v2 = 0x73736572646461;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x72756F6C6F63;
    if (a1 != 4)
    {
      v3 = 0x756F72676B636162;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_26D1F8B2C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D2231E0(v3, v1);
  return sub_26D22EA04();
}

uint64_t sub_26D1F8B7C(uint64_t a1)
{
  v2 = *v1;
  sub_26D22E9E4();
  sub_26D2231E0(v4, v2);
  return sub_26D22EA04();
}

unint64_t sub_26D1F8BC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1FCF90(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26D1F8BF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D1F89F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26D1F8C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26D1FCF90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26D1F8C6C(uint64_t a1)
{
  v2 = sub_26D1FB5E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F8CA8(uint64_t a1)
{
  v2 = sub_26D1FB5E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.BotInfo.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1108, &qword_26D232110);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v39 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v40 = v33 - v9;
  MEMORY[0x28223BE20](v8);
  v41 = v33 - v10;
  v11 = sub_26D22DD84();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v12 = sub_26D22E014();
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1110, &unk_26D232118);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v33 - v17;
  v19 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_26D1FB5E4();
  v20 = v44;
  sub_26D22EA24();
  if (!v20)
  {
    v44 = v14;
    v35 = v12;
    v48 = 4;
    v21 = sub_26D22E8A4();
    if (v22)
    {
      v23 = v21;
      v24 = sub_26D22CD14();
      if (v25 >> 60 != 15)
      {
        v34 = v23;
        sub_26D1BE640(v24, v25);
        goto LABEL_7;
      }
    }

    v34 = 0;
LABEL_7:
    v47 = 0;
    sub_26D1FD028(&qword_2804E1120, MEMORY[0x277CF2CD0], &protocol conformance descriptor for Chatbot.PersonalContactCard);
    sub_26D22E884();
    v27 = sub_26D1F2280(1, &qword_2804E1110, &unk_26D232118);
    v29 = v28;
    v30 = v27;
    v33[5] = sub_26D1F2280(2, &qword_2804E1110, &unk_26D232118);
    v43 = v31;
    v33[2] = sub_26D1F2280(3, &qword_2804E1110, &unk_26D232118);
    v33[3] = v32;
    v33[4] = v29;
    sub_26D1F2484(5, &qword_2804E1110, &unk_26D232118, &_s21DecodingConfigurationV10CodingKeysON_3, sub_26D1FB5E4, v41);
    sub_26D1F287C(6, v40);
    v33[1] = v30;
    sub_26D1F2484(7, &qword_2804E1110, &unk_26D232118, &_s21DecodingConfigurationV10CodingKeysON_3, sub_26D1FB5E4, v39);
    sub_26D22DFF4();
    v46 = 8;
    sub_26D1FD028(&qword_2804E1128, MEMORY[0x277CF2EB0], &protocol conformance descriptor for Chatbot.Address);
    sub_26D22E874();
    v33[0] = v15;
    sub_26D22E004();
    (*(v16 + 8))(v18, v33[0]);
    (*(v36 + 32))(v37, v44, v35);
  }

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_26D1F94F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEB0000000079622DLL;
  v4 = 0x73657269707865;
  if (v2 == 1)
  {
    v4 = 0x6465696669726576;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6465696669726576;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xEB0000000079622DLL;
  v8 = 0x73657269707865;
  if (*a2 == 1)
  {
    v8 = 0x6465696669726576;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6465696669726576;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D1F95E8()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F9684(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1F970C(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D1F97A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1FCEAC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D1F97D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB0000000079622DLL;
  v5 = 0x6465696669726576;
  if (v2 != 1)
  {
    v5 = 0x73657269707865;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465696669726576;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D1F983C()
{
  v1 = 0x73657269707865;
  if (*v0 == 1)
  {
    v1 = 0x6465696669726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465696669726576;
  }
}

unint64_t sub_26D1F9890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26D1FCEAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26D1F98B8(uint64_t a1)
{
  v2 = sub_26D1FB638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1F98F4(uint64_t a1)
{
  v2 = sub_26D1FB638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.VerificationInfo.VerifiedInfo.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - v4;
  v6 = sub_26D22DD34();
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1130, &qword_26D232128);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - v11;
  v13 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_26D1FB638();
  v14 = v23;
  sub_26D22EA24();
  if (!v14)
  {
    v23 = v8;
    v28 = 0;
    v15 = sub_26D22E8E4();
    v27 = 1;
    v20[1] = sub_26D22E8A4();
    v26 = 2;
    sub_26D1F2280(2, &qword_2804E1130, &qword_26D232128);
    v25 = v15;
    if (v16)
    {

      v18 = sub_26D22CE34();
      sub_26D1FD028(&qword_2804E1140, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
      v20[0] = v18;
      sub_26D22E914();
      (*(*(v20[0] - 8) + 56))(v5, 0, 1);
    }

    else
    {
      v19 = *(*(sub_26D22CE34() - 8) + 56);
      v19(v5, 1, 1);
    }

    sub_26D22DD24();
    (*(v10 + 8))(v12, v9);
    (*(v22 + 32))(v21, v23, v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_26D1F9D4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0x6465696669726576;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x800000026D23A820;
  }

  if (*a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0x6465696669726576;
  }

  if (*a2)
  {
    v6 = 0x800000026D23A820;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D1F9DF8()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F9E80(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1F9EF4(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1F9F84@<X0>(char *a3@<X8>)
{
  v4 = sub_26D22E854();

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

void sub_26D1F9FE0(unint64_t *a1@<X8>)
{
  v2 = 0x800000026D23A820;
  v3 = 0x6465696669726576;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_26D1FA024()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x6465696669726576;
  }
}

uint64_t sub_26D1FA070@<X0>(char *a4@<X8>)
{
  v5 = sub_26D22E854();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_26D1FA0D0(uint64_t a1)
{
  v2 = sub_26D1FB68C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1FA10C(uint64_t a1)
{
  v2 = sub_26D1FB68C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.VerificationInfo.init(from:configuration:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1148, &qword_26D232130);
  v5 = *(v4 - 8);
  v39 = v4;
  v40 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = sub_26D22DD44();
  v37 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1FB68C();
  v42 = v7;
  sub_26D22EA24();
  if (v2)
  {
    v15 = a1;
  }

  else
  {
    v35 = v13;
    v36 = v8;
    v17 = v37;
    v16 = v38;
    LOBYTE(v41[0]) = 0;
    v18 = v39;
    v19 = v42;
    if (sub_26D22E924())
    {
      v15 = v14;
      sub_26D1FB6E0(v14, v41);
      v20 = v11;
      Chatbot.VerificationInfo.VerifiedInfo.init(from:configuration:)(v41, v11);
      (*(v40 + 8))(v19, v18);
      v21 = v17;
      v22 = *(v17 + 104);
      v23 = v36;
      v22(v20, *MEMORY[0x277CF2CB8], v36);
      v24 = *(v21 + 32);
      v25 = v35;
      v24(v35, v20, v23);
      v26 = v25;
    }

    else
    {
      LOBYTE(v41[0]) = 1;
      v15 = v14;
      if ((sub_26D22E924() & 1) == 0)
      {
        v29 = sub_26D22E794();
        swift_allocError();
        v31 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138);
        *v31 = v36;
        v32 = v42;
        sub_26D22E894();
        sub_26D22E784();
        (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84170], v29);
        swift_willThrow();
        (*(v40 + 8))(v32, v18);
        return __swift_destroy_boxed_opaque_existential_1(v15);
      }

      v27 = v17;
      (*(v40 + 8))(v42, v18);
      v28 = *(v17 + 104);
      v26 = v35;
      v23 = v36;
      v28(v35, *MEMORY[0x277CF2CA8], v36);
      v24 = *(v27 + 32);
    }

    v24(v16, v26, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_26D1FA550()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D1FA5C4(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D1FA660@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26D22E854();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26D1FA6B8(uint64_t a1)
{
  v2 = sub_26D1FB744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1FA6F4(uint64_t a1)
{
  v2 = sub_26D1FB744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.BotVerification.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = sub_26D22DD44();
  MEMORY[0x28223BE20](v20);
  v21 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26D22DC94();
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1160, &qword_26D232140);
  v17 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1FB744();
  sub_26D22EA24();
  if (!v2)
  {
    v11 = v17;
    v12 = v18;
    v16 = v5;
    v13 = v19;
    sub_26D1FD028(&qword_2804E1170, MEMORY[0x277CF2CC0], &protocol conformance descriptor for Chatbot.VerificationInfo);
    sub_26D22E884();
    sub_26D22DC84();
    (*(v11 + 8))(v10, v8);
    (*(v12 + 32))(v13, v7, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D1FAA0C()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1FAAE8(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1FABB0(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D1FAC88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1FCF44(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D1FACB8(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6F666E69746F62;
  v4 = 0x800000026D23A940;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000026D23A960;
  }

  if (*v1)
  {
    v3 = 0x6574736973726570;
    v2 = 0xEF756E656D2D746ELL;
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

unint64_t sub_26D1FAD50()
{
  v1 = 0x6F666E69746F62;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6574736973726570;
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

unint64_t sub_26D1FADE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26D1FCF44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26D1FAE18(uint64_t a1)
{
  v2 = sub_26D1FB798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1FAE54(uint64_t a1)
{
  v2 = sub_26D1FB798();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.Info.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1178, &qword_26D232148);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1180, &qword_26D232150);
  MEMORY[0x28223BE20](v7 - 8);
  v28 = &v24 - v8;
  v9 = sub_26D22E014();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v30 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26D22DED4();
  v26 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1188, &unk_26D232158);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  v18 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_26D1FB798();
  v33 = v17;
  v19 = v34;
  sub_26D22EA24();
  if (!v19)
  {
    v34 = v13;
    v25 = v11;
    v20 = v15;
    v21 = v32;
    v37 = 0;
    sub_26D1FD028(&qword_2804E1198, MEMORY[0x277CF2EB8], &protocol conformance descriptor for Chatbot.BotInfo);
    sub_26D22E884();
    sub_26D1F2300(v28);
    sub_26D1F2484(2, &qword_2804E1188, &unk_26D232158, &_s21DecodingConfigurationV10CodingKeysON, sub_26D1FB798, v27);
    sub_26D22DC94();
    v36 = 3;
    sub_26D1FD028(&qword_2804E11A0, MEMORY[0x277CF2C60], &protocol conformance descriptor for Chatbot.BotVerification);
    sub_26D22E874();
    v23 = v34;
    sub_26D22DEC4();
    (*(v20 + 8))(v33, v14);
    (*(v26 + 32))(v21, v23, v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_26D1FB3C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1068, &qword_26D2320C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26D1FB434()
{
  result = qword_2804E10C0;
  if (!qword_2804E10C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E10C0);
  }

  return result;
}

unint64_t sub_26D1FB488()
{
  result = qword_2804E10D8;
  if (!qword_2804E10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E10D8);
  }

  return result;
}

unint64_t sub_26D1FB4DC()
{
  result = qword_2804E10E8;
  if (!qword_2804E10E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E10E8);
  }

  return result;
}

unint64_t sub_26D1FB530()
{
  result = qword_2804E10F8;
  if (!qword_2804E10F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E10F0, &qword_26D232108);
    sub_26D1FD028(&qword_2804E1100, MEMORY[0x277CF2B10], &protocol conformance descriptor for Chatbot.AddressEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E10F8);
  }

  return result;
}

unint64_t sub_26D1FB5E4()
{
  result = qword_2804E1118;
  if (!qword_2804E1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1118);
  }

  return result;
}

unint64_t sub_26D1FB638()
{
  result = qword_2804E1138;
  if (!qword_2804E1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1138);
  }

  return result;
}

unint64_t sub_26D1FB68C()
{
  result = qword_2804E1150;
  if (!qword_2804E1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1150);
  }

  return result;
}

uint64_t sub_26D1FB6E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_26D1FB744()
{
  result = qword_2804E1168;
  if (!qword_2804E1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1168);
  }

  return result;
}

unint64_t sub_26D1FB798()
{
  result = qword_2804E1190;
  if (!qword_2804E1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1190);
  }

  return result;
}

uint64_t _s21DecodingConfigurationV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s21DecodingConfigurationV10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26D1FBB88()
{
  result = qword_2804E11A8;
  if (!qword_2804E11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11A8);
  }

  return result;
}

unint64_t sub_26D1FBBE0()
{
  result = qword_2804E11B0;
  if (!qword_2804E11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11B0);
  }

  return result;
}

unint64_t sub_26D1FBC38()
{
  result = qword_2804E11B8;
  if (!qword_2804E11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11B8);
  }

  return result;
}

unint64_t sub_26D1FBC90()
{
  result = qword_2804E11C0;
  if (!qword_2804E11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11C0);
  }

  return result;
}

unint64_t sub_26D1FBCE8()
{
  result = qword_2804E11C8;
  if (!qword_2804E11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11C8);
  }

  return result;
}

unint64_t sub_26D1FBD40()
{
  result = qword_2804E11D0;
  if (!qword_2804E11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11D0);
  }

  return result;
}

unint64_t sub_26D1FBD98()
{
  result = qword_2804E11D8;
  if (!qword_2804E11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11D8);
  }

  return result;
}

unint64_t sub_26D1FBDF0()
{
  result = qword_2804E11E0;
  if (!qword_2804E11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11E0);
  }

  return result;
}

unint64_t sub_26D1FBE48()
{
  result = qword_2804E11E8;
  if (!qword_2804E11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11E8);
  }

  return result;
}

unint64_t sub_26D1FBEA0()
{
  result = qword_2804E11F0;
  if (!qword_2804E11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11F0);
  }

  return result;
}

unint64_t sub_26D1FBEF8()
{
  result = qword_2804E11F8;
  if (!qword_2804E11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E11F8);
  }

  return result;
}

unint64_t sub_26D1FBF50()
{
  result = qword_2804E1200;
  if (!qword_2804E1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1200);
  }

  return result;
}

unint64_t sub_26D1FBFA8()
{
  result = qword_2804E1208;
  if (!qword_2804E1208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1208);
  }

  return result;
}

unint64_t sub_26D1FC000()
{
  result = qword_2804E1210;
  if (!qword_2804E1210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1210);
  }

  return result;
}

unint64_t sub_26D1FC058()
{
  result = qword_2804E1218;
  if (!qword_2804E1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1218);
  }

  return result;
}

unint64_t sub_26D1FC0B0()
{
  result = qword_2804E1220;
  if (!qword_2804E1220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1220);
  }

  return result;
}

unint64_t sub_26D1FC108()
{
  result = qword_2804E1228;
  if (!qword_2804E1228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1228);
  }

  return result;
}

unint64_t sub_26D1FC160()
{
  result = qword_2804E1230;
  if (!qword_2804E1230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1230);
  }

  return result;
}

unint64_t sub_26D1FC1B8()
{
  result = qword_2804E1238;
  if (!qword_2804E1238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1238);
  }

  return result;
}

unint64_t sub_26D1FC210()
{
  result = qword_2804E1240;
  if (!qword_2804E1240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1240);
  }

  return result;
}

unint64_t sub_26D1FC268()
{
  result = qword_2804E1248;
  if (!qword_2804E1248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1248);
  }

  return result;
}

unint64_t sub_26D1FC2C0()
{
  result = qword_2804E1250;
  if (!qword_2804E1250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1250);
  }

  return result;
}

unint64_t sub_26D1FC318()
{
  result = qword_2804E1258;
  if (!qword_2804E1258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1258);
  }

  return result;
}

unint64_t sub_26D1FC370()
{
  result = qword_2804E1260;
  if (!qword_2804E1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1260);
  }

  return result;
}

unint64_t sub_26D1FC3C8()
{
  result = qword_2804E1268;
  if (!qword_2804E1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1268);
  }

  return result;
}

unint64_t sub_26D1FC420()
{
  result = qword_2804E1270;
  if (!qword_2804E1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1270);
  }

  return result;
}

unint64_t sub_26D1FC478()
{
  result = qword_2804E1278;
  if (!qword_2804E1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1278);
  }

  return result;
}

unint64_t sub_26D1FC4D0()
{
  result = qword_2804E1280;
  if (!qword_2804E1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1280);
  }

  return result;
}

unint64_t sub_26D1FC528()
{
  result = qword_2804E1288;
  if (!qword_2804E1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1288);
  }

  return result;
}

unint64_t sub_26D1FC580()
{
  result = qword_2804E1290;
  if (!qword_2804E1290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1290);
  }

  return result;
}

unint64_t sub_26D1FC5D8()
{
  result = qword_2804E1298;
  if (!qword_2804E1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1298);
  }

  return result;
}

unint64_t sub_26D1FC630()
{
  result = qword_2804E12A0;
  if (!qword_2804E12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12A0);
  }

  return result;
}

unint64_t sub_26D1FC688()
{
  result = qword_2804E12A8;
  if (!qword_2804E12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12A8);
  }

  return result;
}

unint64_t sub_26D1FC6E0()
{
  result = qword_2804E12B0;
  if (!qword_2804E12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12B0);
  }

  return result;
}

unint64_t sub_26D1FC738()
{
  result = qword_2804E12B8;
  if (!qword_2804E12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12B8);
  }

  return result;
}

unint64_t sub_26D1FC790()
{
  result = qword_2804E12C0;
  if (!qword_2804E12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12C0);
  }

  return result;
}

unint64_t sub_26D1FC7E8()
{
  result = qword_2804E12C8;
  if (!qword_2804E12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12C8);
  }

  return result;
}

unint64_t sub_26D1FC840()
{
  result = qword_2804E12D0;
  if (!qword_2804E12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12D0);
  }

  return result;
}

unint64_t sub_26D1FC898()
{
  result = qword_2804E12D8;
  if (!qword_2804E12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12D8);
  }

  return result;
}

unint64_t sub_26D1FC8F0()
{
  result = qword_2804E12E0;
  if (!qword_2804E12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12E0);
  }

  return result;
}

unint64_t sub_26D1FC948()
{
  result = qword_2804E12E8;
  if (!qword_2804E12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12E8);
  }

  return result;
}

unint64_t sub_26D1FC9A0()
{
  result = qword_2804E12F0;
  if (!qword_2804E12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12F0);
  }

  return result;
}

unint64_t sub_26D1FC9F8()
{
  result = qword_2804E12F8;
  if (!qword_2804E12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E12F8);
  }

  return result;
}

unint64_t sub_26D1FCA50()
{
  result = qword_2804E1300;
  if (!qword_2804E1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1300);
  }

  return result;
}

unint64_t sub_26D1FCAA8()
{
  result = qword_2804E1308;
  if (!qword_2804E1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1308);
  }

  return result;
}

unint64_t sub_26D1FCB00()
{
  result = qword_2804E1310;
  if (!qword_2804E1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1310);
  }

  return result;
}

unint64_t sub_26D1FCB58()
{
  result = qword_2804E1318;
  if (!qword_2804E1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1318);
  }

  return result;
}

unint64_t sub_26D1FCBB0()
{
  result = qword_2804E1320;
  if (!qword_2804E1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1320);
  }

  return result;
}

unint64_t sub_26D1FCC08()
{
  result = qword_2804E1328;
  if (!qword_2804E1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1328);
  }

  return result;
}

unint64_t sub_26D1FCC60()
{
  result = qword_2804E1330;
  if (!qword_2804E1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1330);
  }

  return result;
}

unint64_t sub_26D1FCCB8()
{
  result = qword_2804E1338;
  if (!qword_2804E1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1338);
  }

  return result;
}

unint64_t sub_26D1FCD10()
{
  result = qword_2804E1340;
  if (!qword_2804E1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1340);
  }

  return result;
}

unint64_t sub_26D1FCD68()
{
  result = qword_2804E1348;
  if (!qword_2804E1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1348);
  }

  return result;
}

unint64_t sub_26D1FCDC0()
{
  result = qword_2804E1350;
  if (!qword_2804E1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1350);
  }

  return result;
}

unint64_t sub_26D1FCE14(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1FCE60(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1FCEAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1FCEF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1FCF44(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1FCF90(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1FCFDC(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26D1FD028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26D1FD094()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1FD144(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1FD1E0(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D1FD28C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1FDAD0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D1FD2BC(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000004449;
  v3 = 0x2D6567617373654DLL;
  v4 = 0xE400000000000000;
  v5 = 1836020294;
  if (*v1 != 2)
  {
    v5 = 28500;
    v4 = 0xE200000000000000;
  }

  if (*v1)
  {
    v3 = 0x746C75736572;
    v2 = 0xE600000000000000;
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

void sub_26D1FD328(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1368, &qword_26D233C60);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v39 - v7;
  KeyPath = swift_getKeyPath();
  v10 = a1;
  v11 = sub_26D1BAC08(KeyPath, v10);

  v12 = sub_26D1DFAB8(0, v11);
  if (v1)
  {
    goto LABEL_2;
  }

  if (!v12)
  {

    sub_26D1B7F48();
    swift_allocError();
    v18 = xmmword_26D233C30;
    goto LABEL_8;
  }

  v13 = v12;
  v14 = &v12[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  if (!*(v14 + 1))
  {

LABEL_10:
    sub_26D1B7F48();
    swift_allocError();
    v19 = MEMORY[0x277D837D0];
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *v20 = v19;
    *(v20 + 24) = 5;
    swift_willThrow();

    goto LABEL_3;
  }

  v15 = *v14;

  v16 = sub_26D1DFAB8(1u, v11);
  if (!v16)
  {
    v29 = sub_26D22E284();
    (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
    goto LABEL_19;
  }

  v41 = v15;
  v21 = v16;
  v22 = &v16[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v44 = *(v22 + 1);
  if (!v44)
  {

    v30 = sub_26D22E284();
    (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
LABEL_18:
    v15 = v41;
LABEL_19:
    v31 = sub_26D1DFAB8(2u, v11);
    if (v31)
    {
      v41 = v15;
      v32 = v31;
      v33 = &v31[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
      swift_beginAccess();
      if (!*(v33 + 1))
      {

        sub_26D1FD9A8(v8);
        sub_26D1B7F48();
        swift_allocError();
        v35 = MEMORY[0x277D837D0];
        *(v36 + 8) = 0;
        *(v36 + 16) = 0;
        *v36 = v35;
        *(v36 + 24) = 5;
        swift_willThrow();

        goto LABEL_3;
      }

      v34 = *v33;

      v37 = sub_26D1DFAB8(3u, v11);
      v44 = v34;

      if (v37)
      {
        v13 = v37;
        v38 = &v37[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
        swift_beginAccess();
        if (*(v38 + 1))
        {

          sub_26D22E274();
          goto LABEL_3;
        }

        sub_26D1FD9A8(v8);
        goto LABEL_10;
      }

      sub_26D1FD9A8(v8);
      sub_26D1B7F48();
      swift_allocError();
      v18 = xmmword_26D233C10;
    }

    else
    {

      sub_26D1FD9A8(v8);
      sub_26D1B7F48();
      swift_allocError();
      v18 = xmmword_26D233C20;
    }

LABEL_8:
    *v17 = v18;
    *(v17 + 16) = 0;
    *(v17 + 24) = 1;
    swift_willThrow();
    goto LABEL_3;
  }

  v40 = v21;
  v23 = *v22;
  v24 = sub_26D22E284();
  v39[0] = v23;
  v42 = v23;
  v43 = v44;
  v39[1] = sub_26D1FDA10();
  swift_bridgeObjectRetain_n();
  v25 = v24;
  sub_26D22E554();
  v26 = *(v24 - 8);
  if ((*(v26 + 48))(v6, 1, v25) != 1)
  {
    swift_bridgeObjectRelease_n();

    (*(v26 + 32))(v8, v6, v25);
    (*(v26 + 56))(v8, 0, 1, v25);
    goto LABEL_18;
  }

  sub_26D1FD9A8(v6);
  sub_26D1B7F48();
  swift_allocError();
  v27 = v44;
  *v28 = v39[0];
  *(v28 + 8) = v27;
  *(v28 + 16) = 0;
  *(v28 + 24) = 3;
  swift_willThrow();

LABEL_2:

LABEL_3:
}

uint64_t sub_26D1FD9A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1368, &qword_26D233C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26D1FDA10()
{
  result = qword_2804E1370;
  if (!qword_2804E1370)
  {
    sub_26D22E284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1370);
  }

  return result;
}

unint64_t sub_26D1FDA7C()
{
  result = qword_2804E1378;
  if (!qword_2804E1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1378);
  }

  return result;
}

unint64_t sub_26D1FDAD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26D1FDB1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6910581;
  }

  else
  {
    v3 = 0x2D79616C70736964;
  }

  if (v2)
  {
    v4 = 0xEC000000656D616ELL;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6910581;
  }

  else
  {
    v5 = 0x2D79616C70736964;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xEC000000656D616ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D1FDBC4()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1FDC48(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1FDCB8(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1FDD38@<X0>(char *a2@<X8>)
{
  v3 = sub_26D22E854();

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

void sub_26D1FDD98(uint64_t *a1@<X8>)
{
  v2 = 6910581;
  if (!*v1)
  {
    v2 = 0x2D79616C70736964;
  }

  v3 = 0xEC000000656D616ELL;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_26D1FDE44(uint64_t a1@<X8>)
{
  strcpy(a1, "display-name");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void sub_26D1FDE68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v83 = sub_26D22D364();
  v88 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v84 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_26D22D324();
  v85 = *(v82 - 8);
  v5 = MEMORY[0x28223BE20](v82);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v67 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v67 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v67 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v67 - v17;
  KeyPath = swift_getKeyPath();
  v20 = a1;
  v21 = sub_26D1BA9D8(KeyPath, v20);

  v22 = sub_26D1E51F8(v21);

  v89 = v2;
  if (v2)
  {
  }

  else
  {
    v23 = v88;
    v77 = v18;
    v78 = v16;
    v79 = v13;
    v80 = v10;
    v81 = v7;
    if (v22)
    {
      v24 = &v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
      swift_beginAccess();
      v25 = *(v24 + 1);
      v68 = *v24;
      v69 = v25;
    }

    else
    {
      v68 = 0;
      v69 = 0;
    }

    v26 = v23;
    v27 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
    swift_beginAccess();
    v28 = *&v20[v27];
    if (v28 >> 62)
    {
      goto LABEL_45;
    }

    for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26D22E814())
    {
      v70 = v20;

      if (!i)
      {
        break;
      }

      v20 = i;
      v30 = 0;
      v87 = v28 & 0xFFFFFFFFFFFFFF8;
      v88 = v28 & 0xC000000000000001;
      v74 = (v26 + 32);
      v73 = *MEMORY[0x277CF21A0];
      v72 = (v85 + 104);
      v31 = MEMORY[0x277D84F90];
      v86 = (v85 + 32);
      v75 = i;
      v76 = v28;
      while (1)
      {
        if (v88)
        {
          v32 = MEMORY[0x26D6B6F50](v30, v28);
        }

        else
        {
          if (v30 >= *(v87 + 16))
          {
            goto LABEL_44;
          }

          v32 = *(v28 + 8 * v30 + 32);
        }

        v33 = v32;
        v34 = (v30 + 1);
        if (__OFADD__(v30, 1))
        {
          break;
        }

        v26 = &v32[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];

        v35 = sub_26D22E854();

        if (v35)
        {
        }

        else
        {
          v36 = *v26 == 0x7972746E65 && *(v26 + 1) == 0xE500000000000000;
          if (!v36 && (sub_26D22E964() & 1) == 0)
          {

            v63 = *v26;
            v62 = *(v26 + 1);
            sub_26D1B7F48();
            v64 = swift_allocError();
            *v65 = v63;
            *(v65 + 8) = v62;
            *(v65 + 16) = 0;
            *(v65 + 24) = 0;
            v89 = v64;
            swift_willThrow();

            v66 = v70;
            goto LABEL_41;
          }

          v37 = swift_getKeyPath();
          v38 = v33;
          v39 = sub_26D1BAA00(v37, v38);

          if (v39[2] && (v40 = sub_26D1BDEEC(0x2D79616C70736964, 0xEC000000656D616ELL), (v41 & 1) != 0) && (v42 = *(v39[7] + 8 * v40), *(v42 + 16)))
          {
            v43 = v31;
            v44 = *(v42 + 32);

            swift_beginAccess();

            v31 = v43;
          }

          else
          {
          }

          if (!*(*&v38[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes] + 16))
          {
            goto LABEL_38;
          }

          sub_26D1BDEEC(6910581, 0xE300000000000000);
          if ((v45 & 1) == 0)
          {

LABEL_38:
            sub_26D1B7F48();
            v59 = swift_allocError();
            *v60 = xmmword_26D233D90;
            *(v60 + 16) = 0;
            *(v60 + 24) = 2;
            v89 = v59;
            swift_willThrow();
            v61 = v70;

LABEL_40:

LABEL_41:

            return;
          }

          v46 = v84;
          v47 = v89;
          sub_26D22D354();
          v89 = v47;
          if (v47)
          {
            v61 = v70;

            goto LABEL_40;
          }

          v48 = v80;
          (*v74)(v80, v46, v83);

          v49 = v82;
          (*v72)(v48, v73, v82);
          v26 = *v86;
          v50 = v79;
          (*v86)(v79, v48, v49);
          v51 = v78;
          (v26)(v78, v50, v49);
          v52 = v77;
          (v26)(v77, v51, v49);
          v53 = v81;
          (v26)(v81, v52, v49);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_26D22B9E0(0, v31[2] + 1, 1, v31);
          }

          v54 = v85;
          v56 = v31[2];
          v55 = v31[3];
          if (v56 >= v55 >> 1)
          {
            v31 = sub_26D22B9E0((v55 > 1), v56 + 1, 1, v31);
          }

          v31[2] = v56 + 1;
          (v26)(v31 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v56, v53, v49);
          v28 = v76;
          v20 = v75;
        }

        ++v30;
        if (v34 == v20)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      ;
    }

LABEL_36:

    v57 = v89;
    sub_26D22D314();
    v58 = v70;

    v89 = v57;
  }
}

unint64_t sub_26D1FE754()
{
  result = qword_2804E1380;
  if (!qword_2804E1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1380);
  }

  return result;
}

unint64_t sub_26D1FE7AC()
{
  result = qword_2804E1388;
  if (!qword_2804E1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1388);
  }

  return result;
}

unint64_t sub_26D1FE804()
{
  result = qword_2804E1390;
  if (!qword_2804E1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1390);
  }

  return result;
}

void *sub_26D1FE858@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_26D22EA14();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = sub_26D22E974();
    sub_26D1BCF54(v5, v6, a2);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

unint64_t sub_26D1FE960()
{
  result = qword_2804E1398;
  if (!qword_2804E1398)
  {
    sub_26D22D2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1398);
  }

  return result;
}

uint64_t sub_26D1FEA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v118 = a2;
  v119 = a3;
  v115 = a1;
  v3 = sub_26D22CF24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v109 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26D22CF54();
  v108 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v107 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_26D22CF34();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_26D22CE34();
  v9 = *(v121 - 8);
  v10 = MEMORY[0x28223BE20](v121);
  v102 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v103 = &v90 - v12;
  v13 = sub_26D22CC54();
  v117 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v116 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26D22CE74();
  v113 = *(v15 - 8);
  v114 = v15;
  MEMORY[0x28223BE20](v15);
  v112 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26D22CCE4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v120 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v111 = &v90 - v22;
  MEMORY[0x28223BE20](v21);
  v122 = &v90 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v90 - v25;
  v27 = type metadata accessor for TapToRadarDraft(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_variant_has_internal_content();
  if (result)
  {
    v94 = v6;
    v101 = v18;
    v96 = v3;
    if (qword_2804E0430 != -1)
    {
      swift_once();
    }

    v99 = v13;
    v110 = v17;
    v95 = v4;
    v31 = sub_26D22CF14();
    v100 = __swift_project_value_buffer(v31, qword_2804E0438);
    v32 = sub_26D22CEF4();
    v33 = sub_26D22E5E4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26D1AF000, v32, v33, "Prompting for TTR...", v34, 2u);
      MEMORY[0x26D6B7800](v34, -1, -1);
    }

    *v29 = 0x4449656C646E7542;
    *(v29 + 1) = 0xE800000000000000;
    strcpy(v29 + 72, "Classification");
    v29[87] = -18;
    v29[88] = 10;
    *(v29 + 12) = 0x6375646F72706552;
    *(v29 + 13) = 0xEF7974696C696269;
    v29[112] = 6;
    *(v29 + 15) = 0x656C746954;
    *(v29 + 16) = 0xE500000000000000;
    *(v29 + 17) = 0;
    *(v29 + 18) = 0;
    *(v29 + 19) = 0x7470697263736544;
    *(v29 + 20) = 0xEB000000006E6F69;
    *(v29 + 21) = 0;
    *(v29 + 22) = 0;
    v35 = MEMORY[0x277D84F90];
    *(v29 + 23) = 0x7364726F7779654BLL;
    *(v29 + 24) = 0xE800000000000000;
    *(v29 + 25) = v35;
    v36 = &v29[v27[11]];
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0498, &qword_26D234D30) + 36);
    v93 = v9;
    v97 = *(v9 + 56);
    v37 = v121;
    v97(&v36[v98], 1, 1, v121);
    *v36 = 0x7349664F656D6954;
    *(v36 + 1) = 0xEB00000000657573;
    v38 = &v29[v27[12]];
    *v38 = 0x656D686361747441;
    *(v38 + 1) = 0xEB0000000073746ELL;
    v92 = v38;
    *(v38 + 2) = v35;
    v39 = &v29[v27[13]];
    *v39 = 0xD000000000000011;
    *(v39 + 1) = 0x800000026D23AC10;
    *(v39 + 2) = v35;
    v40 = &v29[v27[14]];
    *v40 = 0xD000000000000014;
    *(v40 + 1) = 0x800000026D23AC30;
    *(v40 + 2) = v35;
    v41 = &v29[v27[15]];
    strcpy(v41, "DeleteOnAttach");
    v41[15] = -18;
    v91 = v41;
    v41[16] = 0;
    v42 = &v29[v27[16]];
    *v42 = 0x4449656369766544;
    *(v42 + 1) = 0xE900000000000073;
    *(v42 + 2) = v35;
    v43 = &v29[v27[17]];
    strcpy(v43, "DeviceClasses");
    *(v43 + 7) = -4864;
    *(v43 + 2) = v35;
    v44 = &v29[v27[18]];
    strcpy(v44, "DeviceModels");
    v44[13] = 0;
    *(v44 + 7) = -5120;
    *(v44 + 2) = v35;
    v45 = &v29[v27[19]];
    *v45 = 0xD000000000000016;
    *(v45 + 1) = 0x800000026D23AC50;
    *(v45 + 2) = 0;
    v46 = &v29[v27[20]];
    *v46 = 0xD00000000000001ALL;
    *(v46 + 1) = 0x800000026D23AC70;
    v46[16] = 0;
    v47 = &v29[v27[21]];
    *v47 = 0x676169446F747541;
    *(v47 + 1) = 0xEF73636974736F6ELL;
    v47[16] = 0;
    v48 = &v29[v27[22]];
    *v48 = 0xD00000000000001BLL;
    *(v48 + 1) = 0x800000026D23AC90;
    *(v48 + 2) = v35;
    v49 = &v29[v27[23]];
    *v49 = 0xD000000000000018;
    *(v49 + 1) = 0x800000026D23ACB0;
    *(v49 + 2) = 0;
    *(v49 + 3) = 0;
    v50 = &v29[v27[24]];
    *v50 = 0xD000000000000012;
    *(v50 + 1) = 0x800000026D23ACD0;
    *(v50 + 2) = 0;
    *(v50 + 3) = 0;
    *(v29 + 2) = xmmword_26D22F340;
    *(v29 + 3) = xmmword_26D22F350;
    *(v29 + 8) = 0xE300000000000000;
    v29[88] = 1;
    v29[112] = 5;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_26D22E744();
    MEMORY[0x26D6B6C70](0xD00000000000003CLL, 0x800000026D23ACF0);
    MEMORY[0x26D6B6C70](0x7373654D746F6F52, 0xEB00000000656761);
    MEMORY[0x26D6B6C70](39, 0xE100000000000000);
    v51 = *(&aBlock + 1);
    *(v29 + 17) = aBlock;
    *(v29 + 18) = v51;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_26D22E744();
    MEMORY[0x26D6B6C70](0xD00000000000001ALL, 0x800000026D23AD30);
    MEMORY[0x26D6B6C70](0x7373654D746F6F52, 0xEB00000000656761);
    MEMORY[0x26D6B6C70](2112039, 0xE300000000000000);
    sub_26D22E2E4();
    sub_26D22E804();
    MEMORY[0x26D6B6C70](46, 0xE100000000000000);
    v52 = *(&aBlock + 1);
    *(v29 + 21) = aBlock;
    *(v29 + 22) = v52;
    sub_26D22CE24();
    v97(v26, 0, 1, v37);
    sub_26D1B1ED8(v26, &v36[v98]);
    v53 = [objc_opt_self() defaultManager];
    v54 = [v53 temporaryDirectory];

    v55 = v122;
    sub_26D22CC94();

    strcpy(&aBlock, "RootMessage_");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v56 = v112;
    sub_26D22CE64();
    v57 = sub_26D22CE54();
    v59 = v58;
    (*(v113 + 8))(v56, v114);
    MEMORY[0x26D6B6C70](v57, v59);

    v61 = v116;
    v60 = v117;
    v62 = v99;
    (*(v117 + 104))(v116, *MEMORY[0x277CC91D8], v99);
    sub_26D1B1F48();
    sub_26D22CCB4();
    (*(v60 + 8))(v61, v62);

    sub_26D22CC84();
    sub_26D22CD84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04C8, &unk_26D22F380);
    v63 = v101;
    v64 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_26D22F360;
    (*(v63 + 16))(v65 + v64, v55, v110);
    *(v92 + 2) = v65;
    v91[16] = 1;
    sub_26D208AB4(v120);
    (*(v63 + 32))();
    v66 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
    v67 = sub_26D22E3B4();
    [v66 setTitle_];

    v68 = sub_26D22E3B4();
    [v66 setBody_];

    v69 = sub_26D22CC74();
    [v66 setDefaultActionURL_];

    [v66 setShouldSuppressScreenLightUp_];
    v70 = v102;
    sub_26D22CE24();
    v71 = v103;
    sub_26D22CE04();
    v72 = *(v93 + 8);
    v73 = v121;
    v72(v70, v121);
    v74 = sub_26D22CDF4();
    v72(v71, v73);
    [v66 setExpirationDate_];

    v75 = sub_26D22E3B4();
    v76 = [objc_opt_self() iconForApplicationIdentifier_];

    [v66 setIcon_];
    sub_26D1B2060();
    v77 = v105;
    v78 = v104;
    v79 = v106;
    (*(v105 + 104))(v104, *MEMORY[0x277D851C8], v106);
    v121 = sub_26D22E644();
    (*(v77 + 8))(v78, v79);
    v80 = swift_allocObject();
    *(v80 + 16) = v66;
    v127 = sub_26D1B20E4;
    v128 = v80;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v125 = sub_26D1B1E14;
    v126 = &block_descriptor_1;
    v81 = _Block_copy(&aBlock);
    v82 = v66;
    v83 = v107;
    sub_26D22CF44();
    v123 = MEMORY[0x277D84F90];
    sub_26D201968(&qword_2804E04B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v84 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04B8, &unk_26D234120);
    sub_26D201914(&qword_2804E04C0, &qword_2804E04B8, &unk_26D234120);
    v85 = v109;
    v86 = v96;
    sub_26D22E704();
    v87 = v121;
    MEMORY[0x26D6B6E00](0, v83, v85, v81);
    _Block_release(v81);

    (*(v95 + 8))(v85, v86);
    (*(v108 + 8))(v83, v94);
    v88 = *(v84 + 8);
    v89 = v110;
    v88(v111, v110);
    v88(v122, v89);

    return sub_26D201864(v29, type metadata accessor for TapToRadarDraft);
  }

  return result;
}

uint64_t sub_26D1FFD00()
{
  v0 = sub_26D22CF14();
  __swift_allocate_value_buffer(v0, qword_2804E13A0);
  __swift_project_value_buffer(v0, qword_2804E13A0);
  return sub_26D22CF04();
}

uint64_t BlastDoorClient.__allocating_init()()
{
  v0 = swift_allocObject();
  BlastDoorClient.init()();
  return v0;
}

uint64_t BlastDoorClient.init()()
{
  v11 = sub_26D22E614();
  v0 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26D22E604();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26D22CF54();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_26D22CF94();
  v10[3] = "Invalid URL string.";
  v10[4] = v5;
  v6 = *MEMORY[0x277CF30B0];
  v10[2] = sub_26D1B2060();
  v10[1] = v6;
  sub_26D22CF44();
  v13 = MEMORY[0x277D84F90];
  sub_26D201968(&qword_2804E13B8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E13C0, &qword_26D2340D0);
  sub_26D201914(&qword_2804E13C8, &qword_2804E13C0, &qword_26D2340D0);
  sub_26D22E704();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v11);
  sub_26D22E634();
  v7 = sub_26D22CF64();
  v8 = v12;
  *(v12 + 16) = v7;
  return v8;
}

void sub_26D200050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = a1;
  sub_26D200A74(a2, a3, sub_26D2003F8, v5, a4, a5);
}

uint64_t sub_26D2000A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a6;
  v27 = a5;
  v29 = a4;
  v30 = a1;
  v31 = a2;
  v28 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E13D0, &unk_26D234110);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_26D22DA84();
  v24 = *(v11 - 8);
  v25 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26D22DAC4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26D22DAD4();
  if (MEMORY[0x28223BE20](v18) == a3)
  {
    (*(v24 + 104))(v13, *MEMORY[0x277CF2AB8], v25);
    v21 = sub_26D22DA94();
    MEMORY[0x28223BE20](v21);
    v22 = v30;
    *(&v24 - 2) = v29;
    *(&v24 - 1) = v17;
    v23 = v32;
    sub_26D200418(v22, v31, sub_26D201848);
    if (v23)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      (*(v15 + 8))(v17, v14);
      return swift_dynamicCast();
    }
  }

  else
  {
    v19 = sub_26D22D384();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    sub_26D22CF74();
    return sub_26D1B950C(v10, &qword_2804E13D0, &unk_26D234110);
  }
}

void sub_26D200418(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = sub_26D22E2E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v45 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E90, &unk_26D231850);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v45 - v15;
  v49 = a1;
  v50 = a2;
  v17 = v52;
  a3(a1, a2);
  if (v17)
  {
    v53 = v17;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
    if (swift_dynamicCast())
    {
      v19 = v6;

      v20 = v7;
      v21 = v51;
      (*(v7 + 32))(v51, v13, v19);
      if (qword_2804E0488 != -1)
      {
        swift_once();
      }

      v22 = sub_26D22CF14();
      __swift_project_value_buffer(v22, qword_2804E13A0);
      v23 = v48;
      v52 = *(v7 + 16);
      v52(v48, v21, v19);
      v24 = sub_26D22CEF4();
      v25 = sub_26D22E5E4();
      v26 = v16;
      if (os_log_type_enabled(v24, v25))
      {
        v27 = swift_slowAlloc();
        v46 = v27;
        v47 = swift_slowAlloc();
        *v27 = 138412290;
        sub_26D201968(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
        swift_allocError();
        v52(v28, v23, v19);
        v29 = _swift_stdlib_bridgeErrorToNSError();
        v45 = *(v20 + 8);
        v45(v23, v19);
        v30 = v46;
        v31 = v47;
        *(v46 + 1) = v29;
        *v31 = v29;
        v21 = v51;
        v32 = v25;
        v33 = v30;
        _os_log_impl(&dword_26D1AF000, v24, v32, "Detected a BlastDoor explosion: %@", v30, 0xCu);
        sub_26D1B950C(v31, &unk_2804E0DB0, &qword_26D231180);
        MEMORY[0x26D6B7800](v31, -1, -1);
        MEMORY[0x26D6B7800](v33, -1, -1);

        v34 = v45;
      }

      else
      {

        v34 = *(v20 + 8);
        v34(v23, v19);
      }

      v43 = v52;
      sub_26D1FEA14(v21, v49, v50);
      v43(v26, v21, v19);
      (*(v20 + 56))(v26, 0, 1, v19);
      sub_26D201534(v26);
      sub_26D1B950C(v26, &qword_2804E0E90, &unk_26D231850);
      sub_26D201968(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
      swift_allocError();
      v43(v44, v21, v19);
      swift_willThrow();
      v34(v21, v19);
    }

    else
    {

      if (qword_2804E0488 != -1)
      {
        swift_once();
      }

      v35 = sub_26D22CF14();
      __swift_project_value_buffer(v35, qword_2804E13A0);
      v36 = v17;
      v37 = sub_26D22CEF4();
      v38 = sub_26D22E5F4();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v17;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_26D1AF000, v37, v38, "Detected error while unpacking: %@", v39, 0xCu);
        sub_26D1B950C(v40, &unk_2804E0DB0, &qword_26D231180);
        MEMORY[0x26D6B7800](v40, -1, -1);
        MEMORY[0x26D6B7800](v39, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    (*(v7 + 56))(v16, 1, 1, v6);
    sub_26D201534(v16);
    sub_26D1B950C(v16, &qword_2804E0E90, &unk_26D231850);
  }
}

void sub_26D200A74(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a5;
  v54 = a6;
  v9 = sub_26D22E2E4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v53 = &v47 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E90, &unk_26D231850);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - v18;
  v51 = a1;
  v52 = a2;
  v20 = v56;
  a3(a1, a2);
  if (v20)
  {
    v57 = v20;
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
    if (swift_dynamicCast())
    {
      v22 = v9;

      v23 = v53;
      (*(v10 + 32))(v53, v16, v9);
      if (qword_2804E0488 != -1)
      {
        swift_once();
      }

      v24 = sub_26D22CF14();
      __swift_project_value_buffer(v24, qword_2804E13A0);
      v25 = v50;
      v56 = *(v10 + 16);
      v56(v50, v23, v9);
      v26 = sub_26D22CEF4();
      v27 = v10;
      v28 = sub_26D22E5E4();
      v29 = v19;
      if (os_log_type_enabled(v26, v28))
      {
        v30 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v30 = 138412290;
        sub_26D201968(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
        swift_allocError();
        v56(v31, v25, v22);
        v32 = _swift_stdlib_bridgeErrorToNSError();
        v33 = *(v27 + 8);
        v49 = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v50 = v33;
        (v33)(v25, v22);
        *(v30 + 4) = v32;
        v34 = v48;
        *v48 = v32;
        v23 = v53;
        _os_log_impl(&dword_26D1AF000, v26, v28, "Detected a BlastDoor explosion: %@", v30, 0xCu);
        sub_26D1B950C(v34, &unk_2804E0DB0, &qword_26D231180);
        MEMORY[0x26D6B7800](v34, -1, -1);
        MEMORY[0x26D6B7800](v30, -1, -1);
      }

      else
      {

        v43 = *(v27 + 8);
        v49 = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v50 = v43;
        (v43)(v25, v22);
      }

      v44 = v55;
      sub_26D1B0790(v23, v55, v51, v52);
      v45 = v56;
      v56(v29, v23, v22);
      (*(v27 + 56))(v29, 0, 1, v22);
      sub_26D1EA464(v44, v29);
      sub_26D1B950C(v29, &qword_2804E0E90, &unk_26D231850);
      sub_26D201968(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
      swift_allocError();
      v45(v46, v23, v22);
      swift_willThrow();
      (v50)(v23, v22);
    }

    else
    {

      if (qword_2804E0488 != -1)
      {
        swift_once();
      }

      v35 = sub_26D22CF14();
      __swift_project_value_buffer(v35, qword_2804E13A0);
      v36 = v20;
      v37 = sub_26D22CEF4();
      v38 = sub_26D22E5F4();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v20;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_26D1AF000, v37, v38, "Detected error while unpacking: %@", v39, 0xCu);
        sub_26D1B950C(v40, &unk_2804E0DB0, &qword_26D231180);
        MEMORY[0x26D6B7800](v40, -1, -1);
        MEMORY[0x26D6B7800](v39, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    (*(v10 + 56))(v19, 1, 1, v9);
    sub_26D1EA464(v55, v19);
    sub_26D1B950C(v19, &qword_2804E0E90, &unk_26D231850);
  }
}

void sub_26D2010F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[5] = a1;
  v6[6] = a4;
  sub_26D200A74(a2, a3, sub_26D2013F8, v6, a5, *(a6 + 8));
}

uint64_t sub_26D201148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E13D0, &unk_26D234110);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_26D22DAD4();
  v7 = sub_26D22D384();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_26D201968(&qword_2804E13E0, MEMORY[0x277CF2B08], MEMORY[0x277CF2B00]);
  sub_26D22CF84();
  return sub_26D1B950C(v6, &qword_2804E13D0, &unk_26D234110);
}

uint64_t sub_26D2012B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[1] = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E13D0, &unk_26D234110);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v12 - v8;
  v10 = sub_26D22D384();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_26D22CF84();
  return sub_26D1B950C(v9, &qword_2804E13D0, &unk_26D234110);
}

uint64_t BlastDoorClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26D201534(uint64_t a1)
{
  v2 = type metadata accessor for RCSBlastDoorDecodingResultEvent(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26D22DAD4();
  sub_26D201968(&qword_2804E13D8, MEMORY[0x277CF2B08], MEMORY[0x277CF2AF8]);
  if (v5 == sub_26D22D6A4())
  {
    v6 = 0;
  }

  else if (v5 == sub_26D22D534())
  {
    v6 = 1;
  }

  else if (v5 == sub_26D22D204())
  {
    v6 = 2;
  }

  else if (v5 == sub_26D22D914())
  {
    v6 = 3;
  }

  else if (v5 == sub_26D22D7F4())
  {
    v6 = 4;
  }

  else if (v5 == sub_26D22D7D4())
  {
    v6 = 5;
  }

  else if (v5 == sub_26D22D374())
  {
    v6 = 6;
  }

  else if (v5 == sub_26D22D4B4())
  {
    v6 = 7;
  }

  else if (v5 == sub_26D22D4F4())
  {
    v6 = 8;
  }

  else if (v5 == sub_26D22DED4())
  {
    v6 = 9;
  }

  else
  {
    v6 = 10;
  }

  if (qword_2804E0478 != -1)
  {
    swift_once();
  }

  v7 = sub_26D22CF14();
  __swift_project_value_buffer(v7, qword_2804E0E78);
  v8 = sub_26D22CEF4();
  v9 = sub_26D22E5E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_26D1E9B10(0x7373654D746F6F52, 0xEB00000000656761, &v14);
    *(v10 + 12) = 2048;
    *(v10 + 14) = (v6 + 1);
    _os_log_impl(&dword_26D1AF000, v8, v9, "Sending decoding result event for type: %s (%ld)", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x26D6B7800](v11, -1, -1);
    MEMORY[0x26D6B7800](v10, -1, -1);
  }

  sub_26D1EA664(a1, &v4[*(v2 + 20)]);
  *v4 = v6;
  sub_26D1EA1B0(v4);
  return sub_26D201864(v4, type metadata accessor for RCSBlastDoorDecodingResultEvent);
}

uint64_t sub_26D201864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26D2018C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26D201914(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26D201968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ChatbotRootMessageUnpacker.unpack(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26D22DA84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26D22DAC4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277CF2AB8], v6);
  sub_26D22DA94();
  ChatbotRootMessageUnpacker.unpack(from:with:)(a1, a2, a3);
  return (*(v11 + 8))(v13, v10);
}

uint64_t ChatbotRootMessageUnpacker.unpack(from:with:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v19[0] = sub_26D22CA54();
  v5 = *(v19[0] - 8);
  MEMORY[0x28223BE20](v19[0]);
  v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_26D22E404();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_26D22DA84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D22DAA4();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == *MEMORY[0x277CF2AB8])
  {
    goto LABEL_2;
  }

  if (v13 == *MEMORY[0x277CF2AC8])
  {
    sub_26D1BCB48(a1, a2);
    v14 = sub_26D1BE440(a1, a2, 0);
    if (v15 >> 60 == 15)
    {
LABEL_9:
      sub_26D22E2E4();
      sub_26D201FFC(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
      swift_allocError();
      sub_26D22E2A4();
      return swift_willThrow();
    }

LABEL_10:
    a1 = v14;
    a2 = v15;
    goto LABEL_11;
  }

  if (v13 == *MEMORY[0x277CF2AE0])
  {
    sub_26D22E3F4();
    v16 = sub_26D22E3E4();
    if (!v17)
    {
      goto LABEL_9;
    }

    v14 = sub_26D1BE654(v16, v17, 0);
    if (v15 >> 60 == 15)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  (*(v10 + 8))(v12, v9);
LABEL_2:
  sub_26D1BCB48(a1, a2);
LABEL_11:
  sub_26D22DAB4();
  sub_26D22CAA4();
  swift_allocObject();
  sub_26D22CA94();
  *v7 = sub_26D1FE858;
  v7[1] = 0;
  (*(v5 + 104))(v7, *MEMORY[0x277CC86C8], v19[0]);
  sub_26D22CA64();
  sub_26D22CA74();
  sub_26D22DAD4();
  sub_26D201FFC(&qword_2804E13E8, MEMORY[0x277CF2B08], &protocol conformance descriptor for Chatbot.RootMessage);
  sub_26D22CA84();
  sub_26D1BCB9C(a1, a2);
}

uint64_t sub_26D201FFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26D202054(void *a1)
{
  v3 = sub_26D22D604();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  v7 = sub_26D1E25A8();
  if (!v1)
  {
    v8 = sub_26D202154(v7);

    sub_26D1C6300(v8, v5);

    sub_26D22D6D4();
  }
}

void *sub_26D202154(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v6 = *(i - 2);
    v5 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v8 = v7;
    v10 = sub_26D1BDEEC(v6, v5);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_26D1E3740(v13, 1);
      v1 = v31;
      v15 = sub_26D1BDEEC(v6, v5);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {

      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v30 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_26D22BA58(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = sub_26D22BA58((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v30 + 8 * v10) = v23;
      }

      *(v18 + 2) = v22;
      v4 = &v18[24 * v21];
      *(v4 + 4) = v6;
      *(v4 + 5) = v5;
      *(v4 + 6) = v8;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07D0, &qword_26D230D80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_26D22F360;
      *(v24 + 32) = v6;
      *(v24 + 40) = v5;
      *(v24 + 48) = v8;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = (v1[6] + 16 * v10);
      *v25 = v6;
      v25[1] = v5;
      *(v1[7] + 8 * v10) = v24;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

unint64_t sub_26D2023A4()
{
  result = qword_2804E13F0;
  if (!qword_2804E13F0)
  {
    sub_26D22D914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E13F0);
  }

  return result;
}

unint64_t sub_26D202444()
{
  result = qword_2804E13F8;
  if (!qword_2804E13F8)
  {
    sub_26D22D7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E13F8);
  }

  return result;
}

unint64_t sub_26D2024E4()
{
  result = qword_2804E1400;
  if (!qword_2804E1400)
  {
    sub_26D22D7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1400);
  }

  return result;
}

void sub_26D20266C(void *a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 3u)
  {
    if (a4 <= 5u)
    {
      if (a4 != 4)
      {
        sub_26D22EA64();
      }
    }

    else
    {
      if (a4 == 6)
      {
        swift_getErrorValue();
        sub_26D22E994();
        sub_26D22E2A4();
        sub_26D1B7E60(a1, a2, a3, 6u);
        return;
      }

      if (a4 == 7)
      {

        sub_26D22E2A4();

        sub_26D1B7E60(a1, a2, a3, 7u);
        return;
      }
    }
  }

  sub_26D22E2A4();
}

uint64_t sub_26D2029BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26D22E2E4();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26D22D064();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - v12;
  v14 = type metadata accessor for CPIMMessageUnpacker.Error(0);
  MEMORY[0x28223BE20](v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D1CD590(a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v25 = *(v16 + 1);
      v26 = *(v16 + 2);
      v38 = sub_26D22EA64();
      v39 = v27;
      MEMORY[0x26D6B6C70](8250, 0xE200000000000000);
      MEMORY[0x26D6B6C70](v25, v26);
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 3)
  {
LABEL_12:
    sub_26D22E2A4();
    return sub_26D1CD5F4(a1);
  }

  v31[1] = a2;
  v18 = *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E09E0, &unk_26D2306B0) + 48)];
  (*(v8 + 32))(v13, v16, v7);
  v19 = v18;
  sub_26D22E2F4();
  v38 = sub_26D22E2B4();
  v39 = v20;
  MEMORY[0x26D6B6C70](46, 0xE100000000000000);
  v21 = sub_26D22E2D4();
  MEMORY[0x26D6B6C70](v21);

  v22 = sub_26D22E2C4();
  if (v23)
  {
    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v36 = 45;
      v37 = 0xE100000000000000;
      MEMORY[0x26D6B6C70]();

      MEMORY[0x26D6B6C70](v36, v37);
    }
  }

  v36 = 0xD000000000000014;
  v37 = 0x800000026D23BDE0;
  (*(v8 + 16))(v11, v13, v7);
  v29 = sub_26D1D732C(v11);
  if (v29 != 16)
  {
    v30 = v29;
    v34 = 0;
    v35 = 0xE000000000000000;
    MEMORY[0x26D6B6C70](10272, 0xE200000000000000);
    v33 = v30;
    sub_26D22E804();
    MEMORY[0x26D6B6C70](41, 0xE100000000000000);
    MEMORY[0x26D6B6C70](v34, v35);
  }

  sub_26D22E2A4();

  sub_26D1CD5F4(a1);
  (*(v32 + 8))(v6, v4);
  return (*(v8 + 8))(v13, v7);
}

unint64_t sub_26D202EF8()
{
  v1 = sub_26D22E2E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E90, &unk_26D231850);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = *(type metadata accessor for RCSBlastDoorDecodingResultEvent(0) + 20);
  sub_26D1D7738(&v0[v10], v9, &qword_2804E0E90, &unk_26D231850);
  v25 = v2;
  v11 = *(v2 + 48);
  v12 = v11(v9, 1, v1) == 1;
  sub_26D2032F8(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1408, &qword_26D234338);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D230530;
  strcpy((inited + 32), "is_successful");
  *(inited + 46) = -4864;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 56), "payload_type");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v14 = sub_26D203E48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1410, &unk_26D234340);
  swift_arrayDestroy();
  sub_26D1D7738(&v0[v10], v7, &qword_2804E0E90, &unk_26D231850);
  if (v11(v7, 1, v1) == 1)
  {
    sub_26D2032F8(v7);
  }

  else
  {
    v16 = v24;
    v15 = v25;
    (*(v25 + 32))(v24, v7, v1);
    sub_26D22E2B4();
    v17 = sub_26D22E3B4();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v14;
    sub_26D2034E0(v17, 0x6F645F726F727265, 0xEC0000006E69616DLL, isUniquelyReferenced_nonNull_native);
    v19 = v26;
    sub_26D22E2D4();
    v20 = sub_26D22E3B4();

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v19;
    sub_26D2034E0(v20, 0x5F6572756C696166, 0xEE006E6F73616572, v21);
    v14 = v26;
    (*(v15 + 8))(v16, v1);
  }

  return v14;
}

uint64_t type metadata accessor for RCSBlastDoorDecodingResultEvent(uint64_t a1)
{
  result = qword_2804E1418;
  if (!qword_2804E1418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D2032F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E90, &unk_26D231850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D203360(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26D1BDEEC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_26D203870();
      goto LABEL_7;
    }

    sub_26D1E3D6C(v15, a4 & 1);
    v26 = sub_26D1BDEEC(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26D22E984();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_26D22D1D4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_26D203658(v12, a2, a3, a1, v18);
}

uint64_t sub_26D2034E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26D1BDEEC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26D1E40EC(v16, a4 & 1);
      v11 = sub_26D1BDEEC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_26D22E984();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_26D203AF0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}