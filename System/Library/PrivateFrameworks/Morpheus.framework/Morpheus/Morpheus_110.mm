uint64_t sub_25A88EBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25A998B88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v8 = sub_25A8F3600(1701667182, 0xE400000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v8, &v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 16) || (v39 = *(&v31 + 1), v27 = v31, v10 = sub_25A8F3600(6972015, 0xE300000000000000), (v11 & 1) == 0))
  {

LABEL_12:
    sub_25A874F54();
    swift_allocError();
    *v18 = -110;
    return swift_willThrow();
  }

  sub_25A87500C(*(a1 + 56) + 32 * v10, &v34);
  sub_25A872D74(&v34, v38);
  if (*(a1 + 16) && (v12 = sub_25A8F3600(6972015, 0xE300000000000000), (v13 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v12, &v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045D8, &unk_25A9FBFC0);
    if (swift_dynamicCast())
    {
      if (*(&v32 + 1))
      {
        sub_25A87817C(&v31, &v34);
        v14 = *(&v35 + 1);
        v15 = v36;
        __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
        (*(v15 + 8))(&v31, v27, v39, v14, v15);

        v16 = *(&v32 + 1) != 0;
        sub_25A878194(&v31, &qword_27FA04458, &unk_25A9F7FB0);
        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = v16;
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        v17 = &v34;
        return __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }
    }

    else
    {
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
  }

  v26 = a2;
  sub_25A878194(&v31, &qword_27FA045E0, &qword_25A9F8790);
  sub_25A92D814(v38, &v34);
  sub_25A998B48();
  sub_25A998B78();
  sub_25A9987A8();

  sub_25A9988A8();
  if (!v37)
  {
LABEL_25:
    (*(v5 + 8))(v7, v4);

    v24 = v26;
    *(v26 + 24) = MEMORY[0x277D839B0];
    *v24 = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v31 = v34;
    sub_25A872D74(&v35, &v32);
    sub_25A8952F0(&v31, &v28, &qword_27FA047F0, &qword_25A9FD9E0);
    v20 = v29;
    if (!v29)
    {
      sub_25A878194(&v31, &qword_27FA047F0, &qword_25A9FD9E0);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      goto LABEL_17;
    }

    v21 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    if (v21 == v27 && v20 == v39)
    {
      break;
    }

    v23 = sub_25A9989E8();

    if (v23)
    {
      goto LABEL_28;
    }

    sub_25A878194(&v31, &qword_27FA047F0, &qword_25A9FD9E0);
LABEL_17:
    sub_25A9988A8();
    if (!v37)
    {
      goto LABEL_25;
    }
  }

LABEL_28:

  v25 = v26;
  *(v26 + 24) = MEMORY[0x277D839B0];

  *v25 = 1;
  sub_25A878194(&v31, &qword_27FA047F0, &qword_25A9FD9E0);
  (*(v5 + 8))(v7, v4);
LABEL_29:
  v17 = v38;
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t sub_25A88F0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(7564387, 0xE300000000000000), (v5 & 1) == 0))
  {
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_13;
  }

  if (!*(&v30 + 1))
  {
LABEL_13:
    sub_25A878194(&v29, &qword_27FA047F8, L"D\a\t");
    sub_25A874F54();
    swift_allocError();
    *v17 = 120;
    return swift_willThrow();
  }

  sub_25A87817C(&v29, v32);
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x666E697373616C63, 0xE90000000000006FLL), (v7 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v6, v25);
    if (swift_dynamicCast())
    {
      if (*(&v27 + 1))
      {
        sub_25A87817C(&v26, &v29);
        v8 = v33;
        v9 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v10 = (*(v9 + 56))(v8, v9);
        v12 = v11;
        v13 = *(&v30 + 1);
        v14 = v31;
        __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
        if (v10 == (*(v14 + 56))(v13, v14) && v12 == v15)
        {

          v16 = 1;
        }

        else
        {
          v20 = sub_25A9989E8();

          if (v20)
          {
            v16 = 1;
          }

          else
          {
            v21 = v33;
            v22 = v34;
            __swift_project_boxed_opaque_existential_1(v32, v33);
            v23 = (*(v22 + 72))(v21, v22);
            MEMORY[0x28223BE20](v23);
            v24[2] = &v29;
            v16 = sub_25A96289C(sub_25A895454, v24, v23);
          }
        }

        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = v16 & 1;
        __swift_destroy_boxed_opaque_existential_0Tm(&v29);
        return __swift_destroy_boxed_opaque_existential_0Tm(v32);
      }
    }

    else
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
  }

  sub_25A878194(&v26, &qword_27FA047F8, L"D\a\t");
  sub_25A874F54();
  swift_allocError();
  *v19 = 120;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0Tm(v32);
}

uint64_t sub_25A88F428(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  if (v2 == (*(v5 + 56))(v4, v5) && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A88F4D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x656C626172657469, 0xE900000000000073), (v6 & 1) == 0))
  {
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    goto LABEL_36;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, &v55);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_36;
  }

  v8 = *(&v59 + 1);
  if (!*(&v59 + 1))
  {
LABEL_36:
    v42 = &qword_27FA04728;
    v43 = &unk_25A9FD740;
    v44 = &v58;
LABEL_37:
    sub_25A878194(v44, v42, v43);
    sub_25A874F54();
    swift_allocError();
    *v45 = 66;
    return swift_willThrow();
  }

  v9 = v60;
  __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
  v10 = (*(v9 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(&v58);
  if (!*(a1 + 16) || (v11 = sub_25A8F3600(1668183398, 0xE400000000000000), (v12 & 1) == 0))
  {

    v55 = 0u;
    v56 = 0u;
    v57 = 0;
LABEL_42:
    v42 = &qword_27FA04760;
    v43 = &unk_25A9F9BB0;
    v44 = &v55;
    goto LABEL_37;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v11, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    goto LABEL_41;
  }

  if (!*(&v56 + 1))
  {
LABEL_41:

    goto LABEL_42;
  }

  result = sub_25A87817C(&v55, &v58);
  v61 = *(v10 + 16);
  if (v61)
  {
    v14 = 0;
    v15 = v10 + 32;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    v50 = v10 + 32;
    v51 = a2;
    v53 = v10;
    while (1)
    {
      if (v14 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      sub_25A87500C(v15, v54);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      ++v14;
      v17 = *(&v56 + 1);
      v18 = v57;
      __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      v19 = (*(v18 + 8))(v17, v18);
      __swift_destroy_boxed_opaque_existential_0Tm(&v55);
      v20 = *(v19 + 16);

      if (v20 < v16)
      {
        v16 = v20;
      }

      v10 = v53;
      v15 += 32;
      if (v61 == v14)
      {
        if (!v16)
        {
          goto LABEL_43;
        }

        v21 = 0;
        v22 = v16 & ~(v16 >> 63);
        v23 = MEMORY[0x277D84F90];
        v47 = v22;
LABEL_18:
        v49 = v23;
        if (v21 != v22)
        {
          v24 = 0;
          v52 = v21;
          v48 = v21 + 1;
          v25 = v50;
          v26 = MEMORY[0x277D84F90];
          while (v24 < *(v10 + 16))
          {
            sub_25A87500C(v25, v54);
            if ((swift_dynamicCast() & 1) == 0)
            {

              v57 = 0;
              v55 = 0u;
              v56 = 0u;
              sub_25A878194(&v55, &qword_27FA04728, &unk_25A9FD740);

              goto LABEL_47;
            }

            v27 = v16;
            v28 = v7;
            v29 = v26;
            v30 = *(&v56 + 1);
            v31 = v57;
            __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
            v32 = (*(v31 + 8))(v30, v31);
            result = __swift_destroy_boxed_opaque_existential_0Tm(&v55);
            if (v52 >= *(v32 + 16))
            {
              goto LABEL_52;
            }

            sub_25A87500C(v32 + 32 * v52 + 32, &v55);

            v33 = v29;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_25A967488(0, *(v29 + 2) + 1, 1, v29);
            }

            v10 = v53;
            v7 = v28;
            v35 = *(v33 + 2);
            v34 = *(v33 + 3);
            v36 = v33;
            v16 = v27;
            if (v35 >= v34 >> 1)
            {
              v36 = sub_25A967488((v34 > 1), v35 + 1, 1, v33);
            }

            ++v24;
            *(v36 + 2) = v35 + 1;
            v26 = v36;
            result = sub_25A872D74(&v55, &v36[32 * v35 + 32]);
            v25 += 32;
            if (v61 == v24)
            {
              v38 = *(&v59 + 1);
              v37 = v60;
              __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
              v39 = sub_25A92BDB4(MEMORY[0x277D84F90]);
              (*(v37 + 16))(&v55, v26, v39, v38, v37);
              if (v2)
              {

                return __swift_destroy_boxed_opaque_existential_0Tm(&v58);
              }

              sub_25A87500C(&v55, v54);
              v23 = v49;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v23 = sub_25A967488(0, *(v49 + 2) + 1, 1, v49);
              }

              v10 = v53;
              a2 = v51;
              v41 = *(v23 + 2);
              v40 = *(v23 + 3);
              if (v41 >= v40 >> 1)
              {
                v23 = sub_25A967488((v40 > 1), v41 + 1, 1, v23);
              }

              __swift_destroy_boxed_opaque_existential_0Tm(&v55);
              *(v23 + 2) = v41 + 1;
              result = sub_25A872D74(v54, &v23[32 * v41 + 32]);
              v21 = v48;
              v22 = v47;
              if (v48 == v16)
              {

                goto LABEL_44;
              }

              goto LABEL_18;
            }
          }

LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    sub_25A878194(&v55, &qword_27FA04728, &unk_25A9FD740);
LABEL_47:
    sub_25A874F54();
    swift_allocError();
    *v46 = 66;
    swift_willThrow();
  }

  else
  {
LABEL_43:

    v23 = MEMORY[0x277D84F90];
LABEL_44:
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
    *a2 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(&v58);
}

_OWORD *sub_25A88FB78@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_25A998B88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v8 = sub_25A8F3600(1701667182, 0xE400000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v8, &v30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (!*(a1 + 16) || (v35 = *(&v27 + 1), v24 = v27, v10 = sub_25A8F3600(6972015, 0xE300000000000000), (v11 & 1) == 0))
  {

LABEL_9:
    sub_25A874F54();
    swift_allocError();
    *v15 = -104;
    return swift_willThrow();
  }

  sub_25A87500C(*(a1 + 56) + 32 * v10, &v30);
  sub_25A872D74(&v30, v34);
  sub_25A87500C(v34, &v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045D8, &unk_25A9FBFC0);
  if (swift_dynamicCast())
  {
    sub_25A87817C(&v27, &v30);
    v12 = *(&v31 + 1);
    v13 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    (*(v13 + 8))(v24, v35, v12, v13);

    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v30);
  }

  v23 = a2;
  *&v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_25A878194(&v27, &qword_27FA045E0, &qword_25A9F8790);
  sub_25A92D814(v34, &v30);
  sub_25A998B48();
  sub_25A998B78();
  sub_25A9987A8();

  sub_25A9988A8();
  if (!v33)
  {
LABEL_21:
    (*(v5 + 8))(v7, v4);

    sub_25A874F54();
    swift_allocError();
    *v22 = -105;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  v16 = &qword_27FA047F0;
  while (1)
  {
    v27 = v30;
    sub_25A872D74(&v31, &v28);
    sub_25A8952F0(&v27, &v25, v16, &qword_25A9FD9E0);
    v17 = *(&v25 + 1);
    if (*(&v25 + 1))
    {
      break;
    }

    sub_25A878194(&v27, v16, &qword_25A9FD9E0);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
LABEL_13:
    sub_25A9988A8();
    if (!v33)
    {
      goto LABEL_21;
    }
  }

  v18 = v16;
  v19 = v25;
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  if (v19 == v24 && v17 == v35)
  {

    goto LABEL_24;
  }

  v21 = sub_25A9989E8();

  if ((v21 & 1) == 0)
  {
    v16 = v18;
    sub_25A878194(&v27, v18, &qword_25A9FD9E0);
    goto LABEL_13;
  }

LABEL_24:

  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  v25 = v27;
  v26[0] = v28;
  v26[1] = v29;

  return sub_25A872D74(v26, v23);
}

uint64_t sub_25A890008()
{
  sub_25A8952F0(v0, &v12, &qword_27FA04458, &unk_25A9F7FB0);
  if (v13)
  {
    sub_25A872D74(&v12, v11);
    sub_25A87500C(v11, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
    if (swift_dynamicCast())
    {
      sub_25A87817C(v5, v8);
      v1 = v9;
      v2 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      v3 = (*(v2 + 8))(v1, v2);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      sub_25A878194(v5, &qword_27FA047E8, &unk_25A9FBF80);
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_25A890138(uint64_t a1)
{
  sub_25A936F00(a1);
  sub_25A874F54();
  swift_allocError();
  *v1 = -111;
  swift_willThrow();
}

uint64_t sub_25A8901F0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>, uint64_t a3@<X0>)
{
  sub_25A936F00(a3);
  sub_25A87E064(v5, a1, a2);
}

void sub_25A890248(uint64_t a1)
{
  sub_25A936F00(a1);
  sub_25A998818();
  __break(1u);
}

void sub_25A8902B0(uint64_t a1)
{
  sub_25A936F00(a1);
  sub_25A998818();
  __break(1u);
}

void sub_25A890318(uint64_t a1)
{
  sub_25A936F00(a1);
  sub_25A998818();
  __break(1u);
}

void sub_25A890380(uint64_t a1)
{
  sub_25A936F00(a1);
  sub_25A998818();
  __break(1u);
}

uint64_t sub_25A890414(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

uint64_t sub_25A890624@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  sub_25A936F00(a2);
  v3 = type metadata accessor for PyObjectInstance();
  v4 = swift_allocObject();
  a1[3] = v3;
  *a1 = v4;
}

_BYTE *sub_25A8909F4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_25A890A64(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25A892B6C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25A890B54(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25A890AD0(char *a1, uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_25A892B6C(v5);
  }

  result = sub_25A890C50(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_25A890B54(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25A998958();
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
        v5 = sub_25A998158();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25A891094(v7, v8, a1, v4);
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
    return sub_25A890D5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25A890C50(char *a1, uint64_t a2)
{
  v5 = v2[1];
  result = sub_25A998958();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_25A998158();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_25A8918C0(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_25A890F74(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_25A890D5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v7 = result;
    v8 = *a4;
    type metadata accessor for Comparison();
    v9 = (v8 + 32 * v5);
    v10 = v7 - v5;
    v18 = a2;
    while (2)
    {
      v29 = v5;
      v19 = v10;
      v20 = v9;
      v11 = v10;
      do
      {
        sub_25A87500C(v9, v28);
        sub_25A87500C((v9 - 2), v27);
        sub_25A8E2098(v28, 4, v27, v23);
        if (v4)
        {
          goto LABEL_13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v22 = 0;
          memset(v21, 0, sizeof(v21));
          sub_25A878194(v21, &qword_27FA047E8, &unk_25A9FBF80);
          sub_25A874F54();
          swift_allocError();
          *v17 = 75;
          swift_willThrow();
LABEL_13:
          __swift_destroy_boxed_opaque_existential_0Tm(v27);
          return __swift_destroy_boxed_opaque_existential_0Tm(v28);
        }

        sub_25A87817C(v21, &v24);
        v12 = v25;
        v13 = v26;
        __swift_project_boxed_opaque_existential_1(&v24, v25);
        v14 = (*(v13 + 8))(v12, v13);
        __swift_destroy_boxed_opaque_existential_0Tm(&v24);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v28);
        if ((v14 & 1) == 0)
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return result;
        }

        sub_25A872D74(v9, &v24);
        v15 = *(v9 - 1);
        *v9 = *(v9 - 2);
        v9[1] = v15;
        result = sub_25A872D74(&v24, v9 - 2);
        v9 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      v5 = v29 + 1;
      v9 = v20 + 2;
      v10 = v19 - 1;
      if (v29 + 1 != v18)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_25A890F74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *, void *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = (*v4 + 32 * a3);
    v10 = result - a3;
LABEL_4:
    v15 = v10;
    v18 = v9;
    while (1)
    {
      sub_25A87500C(v9, v17);
      sub_25A87500C((v9 - 2), v16);
      v11 = a4(v17, v16);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v17);
      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        sub_25A872D74(v9, v17);
        v12 = *(v9 - 1);
        *v9 = *(v9 - 2);
        v9[1] = v12;
        result = sub_25A872D74(v17, v9 - 2);
        v9 -= 2;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v18 + 2;
      v10 = v15 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_25A891094(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v94 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v94;
    if (*v94)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_98;
    }

    goto LABEL_139;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v19 = v8 + 1;
      goto LABEL_22;
    }

    v11 = *v6;
    sub_25A87500C(*v6 + 32 * (v8 + 1), &v101);
    sub_25A87500C(v11 + 32 * v8, v98);
    v12 = sub_25A8879D4(&v101, v98);
    if (v4)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v98);
      v87 = &v101;
      goto LABEL_109;
    }

    v13 = v12;
    v96 = v7;
    __swift_destroy_boxed_opaque_existential_0Tm(v98);
    result = __swift_destroy_boxed_opaque_existential_0Tm(&v101);
    v14 = v8 + 2;
    v91 = v8;
    v15 = 32 * v8;
    v16 = v11 + 32 * v8 + 64;
    do
    {
      if (v96 == v14)
      {
        v19 = v96;
        v10 = v91;
        if ((v13 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }

      sub_25A87500C(v16, v105);
      sub_25A87500C(v16 - 32, v104);
      type metadata accessor for Comparison();
      sub_25A8E2098(v105, 4, v104, v100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_107:
        v99 = 0;
        memset(v98, 0, sizeof(v98));
        sub_25A878194(v98, &qword_27FA047E8, &unk_25A9FBF80);
        sub_25A874F54();
        swift_allocError();
        *v86 = 75;
        swift_willThrow();
LABEL_108:
        __swift_destroy_boxed_opaque_existential_0Tm(v104);
        v87 = v105;
LABEL_109:
        __swift_destroy_boxed_opaque_existential_0Tm(v87);
      }

      sub_25A87817C(v98, &v101);
      v5 = v102;
      v17 = v103;
      __swift_project_boxed_opaque_existential_1(&v101, v102);
      v18 = (*(v17 + 8))(v5, v17);
      __swift_destroy_boxed_opaque_existential_0Tm(&v101);
      __swift_destroy_boxed_opaque_existential_0Tm(v104);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v105);
      ++v14;
      v16 += 32;
    }

    while (((v13 ^ v18) & 1) == 0);
    v19 = v14 - 1;
    v10 = v91;
    if ((v13 & 1) == 0)
    {
LABEL_20:
      v6 = a3;
      goto LABEL_22;
    }

LABEL_13:
    if (v19 < v10)
    {
      goto LABEL_133;
    }

    if (v10 >= v19)
    {
      goto LABEL_20;
    }

    v20 = v19;
    v21 = 32 * v19 - 32;
    v97 = v19;
    v22 = v10;
    do
    {
      if (v22 != --v20)
      {
        v23 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v24 = (v23 + v15);
        v5 = v23 + v21;
        sub_25A872D74((v23 + v15), &v101);
        v25 = *(v5 + 16);
        *v24 = *v5;
        v24[1] = v25;
        result = sub_25A872D74(&v101, v5);
      }

      ++v22;
      v21 -= 32;
      v15 += 32;
    }

    while (v22 < v20);
    v6 = a3;
    v19 = v97;
LABEL_22:
    v26 = v6[1];
    if (v19 >= v26)
    {
      goto LABEL_31;
    }

    if (__OFSUB__(v19, v10))
    {
      goto LABEL_129;
    }

    if (v19 - v10 >= a4)
    {
LABEL_31:
      v8 = v19;
      if (v19 < v10)
      {
        goto LABEL_128;
      }

      goto LABEL_32;
    }

    if (__OFADD__(v10, a4))
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      return result;
    }

    if (v10 + a4 >= v26)
    {
      v27 = v6[1];
    }

    else
    {
      v27 = v10 + a4;
    }

    if (v27 < v10)
    {
      goto LABEL_132;
    }

    if (v19 == v27)
    {
      goto LABEL_31;
    }

    v74 = *v6;
    type metadata accessor for Comparison();
    v93 = v74;
    v5 = v74 + 32 * v19;
    v75 = v10 - v19;
    v88 = v27;
    do
    {
      v76 = v19;
      v89 = v75;
      v90 = v5;
      while (1)
      {
        sub_25A87500C(v5, v105);
        sub_25A87500C(v5 - 32, v104);
        sub_25A8E2098(v105, 4, v104, v100);
        if (v4)
        {
          goto LABEL_108;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_107;
        }

        sub_25A87817C(v98, &v101);
        v77 = v102;
        v78 = v103;
        __swift_project_boxed_opaque_existential_1(&v101, v102);
        v79 = (*(v78 + 8))(v77, v78);
        __swift_destroy_boxed_opaque_existential_0Tm(&v101);
        __swift_destroy_boxed_opaque_existential_0Tm(v104);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v105);
        if ((v79 & 1) == 0)
        {
          break;
        }

        v6 = a3;
        if (!v93)
        {
          goto LABEL_136;
        }

        sub_25A872D74(v5, &v101);
        v80 = *(v5 - 16);
        *v5 = *(v5 - 32);
        *(v5 + 16) = v80;
        sub_25A872D74(&v101, (v5 - 32));
        v5 -= 32;
        if (__CFADD__(v75++, 1))
        {
          goto LABEL_92;
        }
      }

      v6 = a3;
LABEL_92:
      v19 = v76 + 1;
      v5 = v90 + 32;
      v75 = v89 - 1;
      v8 = v88;
    }

    while (v76 + 1 != v88);
    if (v88 < v10)
    {
      goto LABEL_128;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25A89295C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_25A89295C((v28 > 1), v29 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v30;
    v31 = &v9[16 * v29];
    *(v31 + 4) = v10;
    *(v31 + 5) = v8;
    v32 = *v94;
    if (!*v94)
    {
      goto LABEL_138;
    }

    if (v29)
    {
      break;
    }

LABEL_80:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_96;
    }
  }

  while (1)
  {
    v33 = v30 - 1;
    if (v30 >= 4)
    {
      v38 = &v9[16 * v30 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_117;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_118;
      }

      v45 = &v9[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_120;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_123;
      }

      if (v49 >= v41)
      {
        v67 = &v9[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_127;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

    if (v30 == 3)
    {
      v34 = *(v9 + 4);
      v35 = *(v9 + 5);
      v44 = __OFSUB__(v35, v34);
      v36 = v35 - v34;
      v37 = v44;
LABEL_51:
      if (v37)
      {
        goto LABEL_119;
      }

      v50 = &v9[16 * v30];
      v52 = *v50;
      v51 = *(v50 + 1);
      v53 = __OFSUB__(v51, v52);
      v54 = v51 - v52;
      v55 = v53;
      if (v53)
      {
        goto LABEL_122;
      }

      v56 = &v9[16 * v33 + 32];
      v58 = *v56;
      v57 = *(v56 + 1);
      v44 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v44)
      {
        goto LABEL_125;
      }

      if (__OFADD__(v54, v59))
      {
        goto LABEL_126;
      }

      if (v54 + v59 >= v36)
      {
        if (v36 < v59)
        {
          v33 = v30 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_65;
    }

    v60 = &v9[16 * v30];
    v62 = *v60;
    v61 = *(v60 + 1);
    v44 = __OFSUB__(v61, v62);
    v54 = v61 - v62;
    v55 = v44;
LABEL_65:
    if (v55)
    {
      goto LABEL_121;
    }

    v63 = &v9[16 * v33];
    v65 = *(v63 + 4);
    v64 = *(v63 + 5);
    v44 = __OFSUB__(v64, v65);
    v66 = v64 - v65;
    if (v44)
    {
      goto LABEL_124;
    }

    if (v66 < v54)
    {
      goto LABEL_80;
    }

LABEL_72:
    v71 = v33 - 1;
    if (v33 - 1 >= v30)
    {
      break;
    }

    if (!*v6)
    {
      goto LABEL_134;
    }

    v72 = *&v9[16 * v71 + 32];
    v5 = *&v9[16 * v33 + 40];
    sub_25A891FBC((*v6 + 32 * v72), (*v6 + 32 * *&v9[16 * v33 + 32]), (*v6 + 32 * v5), v32);
    if (v4)
    {
    }

    if (v5 < v72)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_25A892948(v9);
    }

    if (v71 >= *(v9 + 2))
    {
      goto LABEL_114;
    }

    v73 = &v9[16 * v71];
    *(v73 + 4) = v72;
    *(v73 + 5) = v5;
    v106 = v9;
    result = sub_25A8928BC(v33);
    v9 = v106;
    v30 = *(v106 + 2);
    if (v30 <= 1)
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
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
  result = sub_25A892948(v9);
  v9 = result;
LABEL_98:
  v106 = v9;
  v82 = *(v9 + 2);
  if (v82 >= 2)
  {
    while (*v6)
    {
      v83 = *&v9[16 * v82];
      v84 = *&v9[16 * v82 + 24];
      sub_25A891FBC((*v6 + 32 * v83), (*v6 + 32 * *&v9[16 * v82 + 16]), (*v6 + 32 * v84), v5);
      if (v4)
      {
      }

      if (v84 < v83)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_25A892948(v9);
      }

      if (v82 - 2 >= *(v9 + 2))
      {
        goto LABEL_116;
      }

      v85 = &v9[16 * v82];
      *v85 = v83;
      *(v85 + 1) = v84;
      v106 = v9;
      result = sub_25A8928BC(v82 - 1);
      v9 = v106;
      v82 = *(v106 + 2);
      if (v82 <= 1)
      {
      }
    }

    goto LABEL_135;
  }
}

uint64_t sub_25A8918C0(uint64_t result, uint64_t a2, uint64_t *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v95 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_94:
    v10 = a4;
    a4 = *v95;
    if (*v95)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_96;
    }

    goto LABEL_134;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((v10 + 1) >= v9)
    {
      v22 = (v10 + 1);
    }

    else
    {
      v12 = a4;
      v13 = *a3;
      sub_25A87500C(*a3 + 32 * (v10 + 1), v103);
      sub_25A87500C(v13 + 32 * v10, v102);
      v14 = (v12)(v103, v102);
      if (v6)
      {
LABEL_105:
        __swift_destroy_boxed_opaque_existential_0Tm(v102);
        __swift_destroy_boxed_opaque_existential_0Tm(v103);
      }

      v15 = v14;
      v96 = a5;
      v98 = v12;
      __swift_destroy_boxed_opaque_existential_0Tm(v102);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v103);
      v16 = 0;
      v88 = v9 - 1;
      v91 = v10;
      v92 = v9;
      v17 = &v10[-v9 + 2];
      v18 = 32 * v10;
      v19 = v13 + 32 * v10 + 64;
      do
      {
        if (!(v17 + v16))
        {
          v10 = v91;
          v22 = v92;
          v21 = v88;
          if ((v15 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }

        sub_25A87500C(v19, v103);
        sub_25A87500C(v19 - 32, v102);
        v20 = (v98)(v103, v102);
        __swift_destroy_boxed_opaque_existential_0Tm(v102);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v103);
        ++v16;
        v19 += 32;
      }

      while (((v15 ^ v20) & 1) == 0);
      v10 = v91;
      v21 = &v91[v16];
      v22 = &v91[v16 + 1];
      if ((v15 & 1) == 0)
      {
LABEL_15:
        a5 = v96;
        a4 = v98;
        goto LABEL_23;
      }

LABEL_13:
      if (v22 < v10)
      {
        goto LABEL_128;
      }

      if (v10 > v21)
      {
        goto LABEL_15;
      }

      v23 = 32 * v22 - 32;
      v93 = v22;
      do
      {
        if (v10 != --v22)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v24 = (v27 + v18);
          v25 = (v27 + v23);
          sub_25A872D74((v27 + v18), v103);
          v26 = v25[1];
          *v24 = *v25;
          v24[1] = v26;
          result = sub_25A872D74(v103, v25);
        }

        ++v10;
        v23 -= 32;
        v18 += 32;
      }

      while (v10 < v22);
      a5 = v96;
      a4 = v98;
      v10 = v91;
      v22 = v93;
    }

LABEL_23:
    v28 = a3[1];
    if (v22 >= v28)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v22, v10))
    {
      goto LABEL_124;
    }

    if (v22 - v10 >= a6)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v10, a6))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v94 = v22;
    if (&v10[a6] >= v28)
    {
      v29 = a3[1];
    }

    else
    {
      v29 = &v10[a6];
    }

    if (v29 < v10)
    {
      goto LABEL_127;
    }

    if (v94 == v29)
    {
      v22 = v94;
LABEL_33:
      if (v22 < v10)
      {
        goto LABEL_123;
      }

      goto LABEL_34;
    }

    v76 = a5;
    v77 = *a3;
    v78 = (*a3 + 32 * v94);
    v79 = &v10[-v94];
    v100 = v29;
    do
    {
      v89 = v79;
      v97 = v78;
      do
      {
        sub_25A87500C(v78, v103);
        sub_25A87500C((v78 - 2), v102);
        v80 = (a4)(v103, v102);
        if (v6)
        {
          goto LABEL_105;
        }

        v81 = v80;
        __swift_destroy_boxed_opaque_existential_0Tm(v102);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v103);
        if ((v81 & 1) == 0)
        {
          break;
        }

        if (!v77)
        {
          goto LABEL_130;
        }

        sub_25A872D74(v78, v103);
        v82 = *(v78 - 1);
        *v78 = *(v78 - 2);
        v78[1] = v82;
        sub_25A872D74(v103, v78 - 2);
        v78 -= 2;
      }

      while (!__CFADD__(v79++, 1));
      v22 = v100;
      v78 = v97 + 2;
      v79 = v89 - 1;
      ++v94;
    }

    while (v94 != v100);
    a5 = v76;
    if (v100 < v10)
    {
      goto LABEL_123;
    }

LABEL_34:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25A89295C(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v31 = *(v11 + 2);
    v30 = *(v11 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_25A89295C((v30 > 1), v31 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v32;
    v33 = &v11[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v22;
    v10 = *v95;
    if (!*v95)
    {
      goto LABEL_133;
    }

    v99 = v22;
    if (v31)
    {
      break;
    }

LABEL_3:
    v10 = v99;
    v9 = a3[1];
    if (v99 >= v9)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v34 = v32 - 1;
    if (v32 >= 4)
    {
      v39 = &v11[16 * v32 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_110;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_111;
      }

      v46 = &v11[16 * v32];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_113;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_116;
      }

      if (v50 >= v42)
      {
        v68 = &v11[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_122;
        }

        if (v37 < v71)
        {
          v34 = v32 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v32 == 3)
    {
      v35 = *(v11 + 4);
      v36 = *(v11 + 5);
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_53:
      if (v38)
      {
        goto LABEL_112;
      }

      v51 = &v11[16 * v32];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_115;
      }

      v57 = &v11[16 * v34 + 32];
      v59 = *v57;
      v58 = *(v57 + 1);
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_119;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v32 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    v61 = &v11[16 * v32];
    v63 = *v61;
    v62 = *(v61 + 1);
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_67:
    if (v56)
    {
      goto LABEL_114;
    }

    v64 = &v11[16 * v34];
    v66 = *(v64 + 4);
    v65 = *(v64 + 5);
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_117;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_74:
    v72 = v34 - 1;
    if (v34 - 1 >= v32)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_129;
    }

    v73 = *&v11[16 * v72 + 32];
    v74 = *&v11[16 * v34 + 40];
    sub_25A892550((*a3 + 32 * v73), (*a3 + 32 * *&v11[16 * v34 + 32]), (*a3 + 32 * v74), v10, a4, a5);
    if (v6)
    {
    }

    if (v74 < v73)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_25A892948(v11);
    }

    if (v72 >= *(v11 + 2))
    {
      goto LABEL_109;
    }

    v75 = &v11[16 * v72];
    *(v75 + 4) = v73;
    *(v75 + 5) = v74;
    v104 = v11;
    result = sub_25A8928BC(v34);
    v11 = v104;
    v32 = *(v104 + 2);
    if (v32 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  result = sub_25A892948(v11);
  v11 = result;
LABEL_96:
  v104 = v11;
  v84 = *(v11 + 2);
  if (v84 < 2)
  {
  }

  while (*a3)
  {
    v85 = *&v11[16 * v84];
    v86 = *&v11[16 * v84 + 24];
    sub_25A892550((*a3 + 32 * v85), (*a3 + 32 * *&v11[16 * v84 + 16]), (*a3 + 32 * v86), a4, v10, a5);
    if (v6)
    {
    }

    if (v86 < v85)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_25A892948(v11);
    }

    if (v84 - 2 >= *(v11 + 2))
    {
      goto LABEL_121;
    }

    v87 = &v11[16 * v84];
    *v87 = v85;
    *(v87 + 1) = v86;
    v104 = v11;
    result = sub_25A8928BC(v84 - 1);
    v11 = v104;
    v84 = *(v104 + 2);
    if (v84 <= 1)
    {
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_25A891FBC(char *__src, char *__dst, char *a3, char *a4)
{
  v5 = v4;
  v6 = a4;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v10 = __dst - __src;
  }

  v11 = v10 >> 5;
  v12 = a3 - __dst;
  v13 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v13 = a3 - __dst;
  }

  v14 = v13 >> 5;
  if (v11 >= v13 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v14] <= a4)
    {
      v25 = a3;
      memmove(a4, __dst, 32 * v14);
      a3 = v25;
    }

    v50 = (v6 + 32 * v14);
    if (v12 >= 32 && v7 > v8)
    {
      v26 = -v6;
      v49 = -v6;
      while (1)
      {
        v27 = (v7 - 32);
        v28 = v50 - 2;
        v29 = v50 + v26;
        v30 = a3 - 32;
        while (1)
        {
          v60 = v30;
          sub_25A87500C(v28, v59);
          sub_25A87500C(v27, v58);
          type metadata accessor for Comparison();
          sub_25A8E2098(v59, 4, v58, v54);
          if (v5)
          {
            goto LABEL_49;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v53 = 0;
            v51 = 0u;
            v52 = 0u;
            sub_25A878194(&v51, &qword_27FA047E8, &unk_25A9FBF80);
            sub_25A874F54();
            swift_allocError();
            *v45 = 75;
            swift_willThrow();
LABEL_49:
            __swift_destroy_boxed_opaque_existential_0Tm(v58);
            __swift_destroy_boxed_opaque_existential_0Tm(v59);
            if (v29 >= 0)
            {
              v46 = v29;
            }

            else
            {
              v46 = v29 + 31;
            }

            if (v7 >= v6 && v7 < v6 + (v46 & 0xFFFFFFFFFFFFFFE0) && v7 == v6)
            {
              return 1;
            }

            v44 = 32 * (v46 >> 5);
            v24 = v7;
            goto LABEL_63;
          }

          v33 = v27;
          v34 = v7;
          v35 = v6;
          sub_25A87817C(&v51, v55);
          v37 = v56;
          v36 = v57;
          __swift_project_boxed_opaque_existential_1(v55, v56);
          v38 = (*(v36 + 8))(v37, v36);
          __swift_destroy_boxed_opaque_existential_0Tm(v55);
          __swift_destroy_boxed_opaque_existential_0Tm(v58);
          __swift_destroy_boxed_opaque_existential_0Tm(v59);
          if (v38)
          {
            break;
          }

          v39 = v60;
          v6 = v35;
          v27 = v33;
          if (v60 + 32 != (v28 + 2))
          {
            v40 = v28[1];
            *v60 = *v28;
            *(v39 + 1) = v40;
          }

          v31 = v28 - 2;
          v29 -= 32;
          v30 = v39 - 32;
          v32 = v28 > v35;
          v28 -= 2;
          v7 = v34;
          v5 = 0;
          if (!v32)
          {
            v50 = v31 + 2;
            goto LABEL_56;
          }
        }

        a3 = v60;
        v6 = v35;
        v24 = v33;
        if (v60 + 32 != v34)
        {
          v41 = *(v33 + 1);
          *v60 = *v33;
          *(a3 + 1) = v41;
        }

        v50 = v28 + 2;
        v5 = 0;
        v26 = v49;
        if ((v28 + 2) > v35)
        {
          v7 = v33;
          if (v33 > v8)
          {
            continue;
          }
        }

        v50 = v28 + 2;
        goto LABEL_57;
      }
    }

LABEL_56:
    v24 = v7;
LABEL_57:
    v47 = v50 - v6 + 31;
    if ((v50 - v6) >= 0)
    {
      v47 = v50 - v6;
    }

    if (v24 >= v6 && v24 < v6 + (v47 & 0xFFFFFFFFFFFFFFE0) && v24 == v6)
    {
      return 1;
    }

    v44 = 32 * (v47 >> 5);
LABEL_63:
    memmove(v24, v6, v44);
    return 1;
  }

  if (a4 != __src || &__src[32 * v11] <= a4)
  {
    v15 = a3;
    memmove(a4, __src, 32 * v11);
    a3 = v15;
  }

  v50 = (v6 + 32 * v11);
  if (v9 < 32 || v7 >= a3)
  {
LABEL_21:
    v24 = v8;
    goto LABEL_57;
  }

  while (1)
  {
    v16 = a3;
    sub_25A87500C(v7, v59);
    sub_25A87500C(v6, v58);
    type metadata accessor for Comparison();
    sub_25A8E2098(v59, 4, v58, v54);
    if (v4)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      sub_25A878194(&v51, &qword_27FA047E8, &unk_25A9FBF80);
      sub_25A874F54();
      swift_allocError();
      *v42 = 75;
      swift_willThrow();
      break;
    }

    v17 = v6;
    sub_25A87817C(&v51, v55);
    v19 = v56;
    v18 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v20 = (*(v18 + 8))(v19, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    if ((v20 & 1) == 0)
    {
      v21 = v17;
      v6 = (v17 + 32);
      a3 = v16;
      if (v8 == v17)
      {
        goto LABEL_19;
      }

LABEL_18:
      v23 = *(v21 + 1);
      *v8 = *v21;
      *(v8 + 1) = v23;
      goto LABEL_19;
    }

    v21 = v7;
    v22 = v8 == v7;
    v7 += 32;
    v6 = v17;
    a3 = v16;
    if (!v22)
    {
      goto LABEL_18;
    }

LABEL_19:
    v8 += 32;
    if (v6 >= v50 || v7 >= a3)
    {
      goto LABEL_21;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v58);
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  v43 = v50 - v6 + 31;
  if ((v50 - v6) >= 0)
  {
    v43 = v50 - v6;
  }

  if (v8 < v6 || v8 >= v6 + (v43 & 0xFFFFFFFFFFFFFFE0) || v8 != v6)
  {
    v44 = 32 * (v43 >> 5);
    v24 = v8;
    goto LABEL_63;
  }

  return 1;
}

uint64_t sub_25A892550(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(void *, void *), uint64_t a6)
{
  v41[5] = a6;
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v12 = __src - __dst;
  }

  v13 = v12 >> 5;
  v14 = a3 - __src;
  v15 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v15 = a3 - __src;
  }

  v16 = v15 >> 5;
  if (v13 < v15 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v13] <= a4)
    {
      memmove(a4, __dst, 32 * v13);
    }

    v17 = (v7 + 32 * v13);
    if (v11 < 32)
    {
LABEL_10:
      v9 = v10;
      goto LABEL_51;
    }

    while (1)
    {
      if (v9 >= v8)
      {
        goto LABEL_10;
      }

      sub_25A87500C(v9, v41);
      sub_25A87500C(v7, v40);
      v21 = a5(v41, v40);
      if (v6)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        v35 = v17 - v7 + 31;
        if ((v17 - v7) >= 0)
        {
          v35 = v17 - v7;
        }

        if (v10 < v7 || v10 >= v7 + (v35 & 0xFFFFFFFFFFFFFFE0) || v10 != v7)
        {
          v34 = 32 * (v35 >> 5);
          v33 = v10;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      if (v22)
      {
        break;
      }

      v18 = v7;
      v19 = v10 == v7;
      v7 += 32;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v10 += 32;
      if (v7 >= v17)
      {
        goto LABEL_10;
      }
    }

    v18 = v9;
    v19 = v10 == v9;
    v9 += 32;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v20 = v18[1];
    *v10 = *v18;
    *(v10 + 1) = v20;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v16] <= a4)
  {
    memmove(a4, __src, 32 * v16);
  }

  v17 = (v7 + 32 * v16);
  if (v14 < 32 || v9 <= v10)
  {
LABEL_51:
    v36 = v17 - v7 + 31;
    if ((v17 - v7) >= 0)
    {
      v36 = v17 - v7;
    }

    if (v9 < v7 || v9 >= v7 + (v36 & 0xFFFFFFFFFFFFFFE0) || v9 != v7)
    {
      v34 = 32 * (v36 >> 5);
      v33 = v9;
      goto LABEL_57;
    }

    return 1;
  }

  v23 = -v7;
LABEL_26:
  v38 = v9;
  v9 -= 32;
  v24 = v17 - 2;
  v25 = v17 + v23;
  v8 -= 32;
  while (1)
  {
    sub_25A87500C(v24, v41);
    sub_25A87500C(v9, v40);
    v28 = a5(v41, v40);
    if (v6)
    {
      break;
    }

    v29 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    if (v29)
    {
      if (v8 + 32 != v38)
      {
        v31 = *(v9 + 1);
        *v8 = *v9;
        *(v8 + 1) = v31;
      }

      v17 = v24 + 2;
      v23 = -v7;
      if ((v24 + 2) <= v7 || v9 <= v10)
      {
        v17 = v24 + 2;
        goto LABEL_51;
      }

      goto LABEL_26;
    }

    if (v8 + 32 != (v24 + 2))
    {
      v30 = v24[1];
      *v8 = *v24;
      *(v8 + 1) = v30;
    }

    v26 = v24 - 2;
    v25 -= 32;
    v8 -= 32;
    v27 = v24 > v7;
    v24 -= 2;
    if (!v27)
    {
      v17 = v26 + 2;
      v9 = v38;
      goto LABEL_51;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  __swift_destroy_boxed_opaque_existential_0Tm(v41);
  if (v25 >= 0)
  {
    v32 = v25;
  }

  else
  {
    v32 = v25 + 31;
  }

  v33 = v38;
  if (v38 < v7 || v38 >= v7 + (v32 & 0xFFFFFFFFFFFFFFE0) || v38 != v7)
  {
    v34 = 32 * (v32 >> 5);
LABEL_57:
    memmove(v33, v7, v34);
  }

  return 1;
}

uint64_t sub_25A8928BC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25A892948(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_25A89295C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04848, &qword_25A9F8EC8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

BOOL sub_25A892A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
      {
        return 0;
      }

      v5 = _swift_stdlib_strtof_clocale();
      if (!v5)
      {
        return 0;
      }

      return *v5 == 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0 || (v5 = _swift_stdlib_strtof_clocale()) == 0)
      {
        return 0;
      }

      return *v5 == 0;
    }
  }

  sub_25A9985C8();
  if (!v3)
  {
    return v8;
  }

  return v6;
}

unint64_t sub_25A892BD4()
{
  result = qword_27FA04718;
  if (!qword_27FA04718)
  {
    type metadata accessor for PyBuiltInClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04718);
  }

  return result;
}

uint64_t sub_25A892C2C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25A892C6C()
{
  type metadata accessor for LexicalContext();
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6E776F6E6B6E55;
  *(v0 + 24) = 0xE700000000000000;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v3 + 16) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = sub_25A98E67C(v1);
  *(v0 + 16) = 0x6C61626F6C67;
  *(v0 + 24) = 0xE600000000000000;
  v4 = MEMORY[0x277D837D0];
  *(&v190 + 1) = MEMORY[0x277D837D0];
  *&v189 = 0x7463656A626FLL;
  *(&v189 + 1) = 0xE600000000000000;
  if (qword_27FA042D0 != -1)
  {
LABEL_50:
    swift_once();
  }

  v5 = qword_27FA046A0;
  v6 = type metadata accessor for PyBuiltInClass();
  *(&v185 + 1) = v6;
  *&v184 = v5;
  v133 = v5;
  swift_retain_n();
  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  *&v189 = 1701869940;
  *(&v189 + 1) = 0xE400000000000000;
  if (qword_27FA042E0 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA046B0;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  *&v189 = 7500915;
  *(&v189 + 1) = 0xE300000000000000;
  if (qword_27FA04348 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA0FC60;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  *&v189 = 1819242338;
  *(&v189 + 1) = 0xE400000000000000;
  if (qword_27FA04350 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA0FC68;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  *&v189 = 7630441;
  *(&v189 + 1) = 0xE300000000000000;
  if (qword_27FA04360 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA0FC78;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  *&v189 = 0x74616F6C66;
  *(&v189 + 1) = 0xE500000000000000;
  if (qword_27FA04340 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA0FC58;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  *&v189 = 7628147;
  *(&v189 + 1) = 0xE300000000000000;
  if (qword_27FA04368 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA0FC80;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  *&v189 = 0x656C707574;
  *(&v189 + 1) = 0xE500000000000000;
  if (qword_27FA04370 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA0FC88;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  *&v189 = 0x6563696C73;
  *(&v189 + 1) = 0xE500000000000000;
  if (qword_27FA04378 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA0FC90;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  *&v189 = 1952672100;
  *(&v189 + 1) = 0xE400000000000000;
  if (qword_27FA04380 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA0FC98;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  *&v189 = 1953720684;
  *(&v189 + 1) = 0xE400000000000000;
  if (qword_27FA04388 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA0FCA0;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  *&v189 = 0x7365747962;
  *(&v189 + 1) = 0xE500000000000000;
  if (qword_27FA04358 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA0FC70;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  strcpy(&v189, "BaseException");
  HIWORD(v189) = -4864;
  if (qword_27FA04320 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA046F0;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  strcpy(&v189, "Exception");
  WORD5(v189) = 0;
  HIDWORD(v189) = -385875968;
  if (qword_27FA04328 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA046F8;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  strcpy(&v189, "ValueError");
  BYTE11(v189) = 0;
  HIDWORD(v189) = -369098752;
  if (qword_27FA04330 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA04700;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  strcpy(&v189, "RuntimeError");
  BYTE13(v189) = 0;
  HIWORD(v189) = -5120;
  if (qword_27FA04338 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA04708;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  strcpy(&v189, "staticmethod");
  BYTE13(v189) = 0;
  HIWORD(v189) = -5120;
  if (qword_27FA04310 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA046E0;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  strcpy(&v189, "classmethod");
  HIDWORD(v189) = -352321536;
  if (qword_27FA04318 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA046E8;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  *&v189 = 0x616974696E496552;
  *(&v189 + 1) = 0xEF656C62617A696CLL;
  if (qword_27FA042D8 != -1)
  {
    swift_once();
  }

  *(&v185 + 1) = v6;
  *&v184 = qword_27FA046A8;

  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v4;
  *&v189 = 0x746E697270;
  *(&v189 + 1) = 0xE500000000000000;
  v7 = MEMORY[0x277D84F90];
  v8 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v9 = type metadata accessor for PyBuiltInFunctionOrMethod();
  v10 = swift_allocObject();
  v10[4] = v7;
  v10[5] = v7;
  v10[6] = v7;

  v10[7] = v7;

  v10[8] = v7;

  v10[9] = 0;
  v10[10] = 0;

  v10[11] = 0;
  v10[12] = 0;

  v10[13] = sub_25A92BDB4(v7);
  v10[2] = 0x746E697270;
  v10[3] = 0xE500000000000000;
  v11 = *(v10 + 5);
  v158[2] = *(v10 + 4);
  v158[3] = v11;
  v159 = v10[12];
  v12 = *(v10 + 3);
  v158[0] = *(v10 + 2);
  v158[1] = v12;
  v10[4] = v7;
  v10[5] = v7;
  v10[6] = v7;
  v10[7] = v7;
  v10[8] = v7;
  *(v10 + 9) = xmmword_25A9F8DE0;
  v10[11] = 0;
  v10[12] = 0;
  sub_25A892B80(v158);
  swift_beginAccess();
  v10[13] = v8;

  v10[14] = sub_25A890684;
  v10[15] = 0;
  *(&v185 + 1) = v9;
  *&v184 = v10;
  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = MEMORY[0x277D837D0];
  *&v189 = 7234924;
  *(&v189 + 1) = 0xE300000000000000;
  v13 = sub_25A92BDB4(v7);
  v14 = swift_allocObject();
  v14[4] = v7;
  v14[5] = v7;
  v14[6] = v7;

  v14[7] = v7;

  v14[8] = v7;

  v14[9] = 0;
  v14[10] = 0;

  v14[11] = 0;
  v14[12] = 0;

  v14[13] = sub_25A92BDB4(v7);
  v14[2] = 7234924;
  v14[3] = 0xE300000000000000;
  v15 = *(v14 + 5);
  v160[2] = *(v14 + 4);
  v160[3] = v15;
  v161 = v14[12];
  v16 = *(v14 + 3);
  v160[0] = *(v14 + 2);
  v160[1] = v16;
  v14[4] = v7;
  v14[5] = &unk_286C0B198;
  v14[6] = v7;
  v14[7] = v7;
  v14[8] = v7;
  *(v14 + 9) = 0u;
  *(v14 + 11) = 0u;
  sub_25A892B80(v160);
  swift_beginAccess();
  v14[13] = v13;

  v14[14] = sub_25A8906B0;
  v14[15] = 0;
  *(&v185 + 1) = v9;
  *&v184 = v14;
  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  v17 = MEMORY[0x277D837D0];
  *(&v190 + 1) = MEMORY[0x277D837D0];
  v129 = v6;
  *&v189 = 0x646574726F73;
  *(&v189 + 1) = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25A9F8D80;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 88) = MEMORY[0x277D839B0];
  *(v18 + 64) = 0;
  v19 = sub_25A92BDB4(v7);
  v20 = swift_allocObject();
  v20[4] = v7;
  v20[5] = v7;
  v20[6] = v7;

  v20[7] = v7;

  v20[8] = v7;

  v20[9] = 0;
  v20[10] = 0;

  v20[11] = 0;
  v20[12] = 0;

  v21 = sub_25A92BDB4(v7);
  v22 = *(v20 + 2);
  v162[1] = *(v20 + 3);
  v23 = *(v20 + 5);
  v162[2] = *(v20 + 4);
  v162[3] = v23;
  v20[13] = v21;
  v20[2] = 0x646574726F73;
  v20[3] = 0xE600000000000000;
  v163 = v20[12];
  v162[0] = v22;
  v20[4] = &unk_286C0B1C8;
  v20[5] = &unk_286C0B208;
  v20[6] = v7;
  v20[7] = v7;
  v20[8] = v18;
  *(v20 + 9) = 0u;
  *(v20 + 11) = 0u;
  sub_25A892B80(v162);
  swift_beginAccess();
  v20[13] = v19;

  v20[14] = sub_25A8906DC;
  v20[15] = 0;
  *(&v185 + 1) = v9;
  *&v184 = v20;
  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v17;
  strcpy(&v189, "reversed");
  BYTE9(v189) = 0;
  WORD5(v189) = 0;
  HIDWORD(v189) = -402653184;
  v24 = sub_25A92BDB4(v7);
  v25 = swift_allocObject();
  v25[4] = v7;
  v25[5] = v7;
  v25[6] = v7;

  v25[7] = v7;

  v25[8] = v7;

  v25[9] = 0;
  v25[10] = 0;

  v25[11] = 0;
  v25[12] = 0;

  v26 = sub_25A92BDB4(v7);
  v27 = *(v25 + 2);
  v164[1] = *(v25 + 3);
  v28 = *(v25 + 5);
  v164[2] = *(v25 + 4);
  v164[3] = v28;
  v25[13] = v26;
  v25[2] = 0x6465737265766572;
  v25[3] = 0xE800000000000000;
  v165 = v25[12];
  v164[0] = v27;
  v25[4] = v7;
  v25[5] = &unk_286C0B238;
  v25[6] = v7;
  v25[7] = v7;
  v25[8] = v7;
  *(v25 + 9) = 0u;
  *(v25 + 11) = 0u;
  sub_25A892B80(v164);
  swift_beginAccess();
  v25[13] = v24;

  v25[14] = sub_25A890708;
  v25[15] = 0;
  *(&v185 + 1) = v9;
  *&v184 = v25;
  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v17;
  *&v189 = 7105633;
  *(&v189 + 1) = 0xE300000000000000;
  v29 = sub_25A92BDB4(v7);
  v30 = swift_allocObject();
  v30[4] = v7;
  v30[5] = v7;
  v30[6] = v7;

  v30[7] = v7;

  v30[8] = v7;

  v30[9] = 0;
  v30[10] = 0;

  v30[11] = 0;
  v30[12] = 0;

  v31 = sub_25A92BDB4(v7);
  v32 = *(v30 + 2);
  v166[1] = *(v30 + 3);
  v33 = *(v30 + 5);
  v166[2] = *(v30 + 4);
  v166[3] = v33;
  v30[13] = v31;
  v30[2] = 7105633;
  v30[3] = 0xE300000000000000;
  v167 = v30[12];
  v166[0] = v32;
  v30[4] = v7;
  v30[5] = &unk_286C0B268;
  v30[6] = v7;
  v30[7] = v7;
  v30[8] = v7;
  *(v30 + 9) = 0u;
  *(v30 + 11) = 0u;
  sub_25A892B80(v166);
  swift_beginAccess();
  v30[13] = v29;

  v30[14] = sub_25A890734;
  v30[15] = 0;
  *(&v185 + 1) = v9;
  *&v184 = v30;
  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v17;
  *&v189 = 7958113;
  *(&v189 + 1) = 0xE300000000000000;
  v34 = sub_25A92BDB4(v7);
  v35 = swift_allocObject();
  v35[4] = v7;
  v35[5] = v7;
  v35[6] = v7;

  v35[7] = v7;

  v35[8] = v7;

  v35[9] = 0;
  v35[10] = 0;

  v35[11] = 0;
  v35[12] = 0;

  v36 = sub_25A92BDB4(v7);
  v37 = *(v35 + 2);
  v168[1] = *(v35 + 3);
  v38 = *(v35 + 5);
  v168[2] = *(v35 + 4);
  v168[3] = v38;
  v35[13] = v36;
  v35[2] = 7958113;
  v35[3] = 0xE300000000000000;
  v169 = v35[12];
  v168[0] = v37;
  v35[4] = v7;
  v35[5] = &unk_286C0B298;
  v35[6] = v7;
  v35[7] = v7;
  v35[8] = v7;
  *(v35 + 9) = 0u;
  *(v35 + 11) = 0u;
  sub_25A892B80(v168);
  swift_beginAccess();
  v35[13] = v34;

  v35[14] = sub_25A890760;
  v35[15] = 0;
  *(&v185 + 1) = v9;
  *&v184 = v35;
  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v17;
  strcpy(&v189, "enumerate");
  WORD5(v189) = 0;
  HIDWORD(v189) = -385875968;
  v39 = sub_25A92BDB4(v7);
  v40 = swift_allocObject();
  v40[4] = v7;
  v40[5] = v7;
  v40[6] = v7;

  v40[7] = v7;

  v40[8] = v7;

  v40[9] = 0;
  v40[10] = 0;

  v40[11] = 0;
  v40[12] = 0;

  v41 = sub_25A92BDB4(v7);
  v42 = *(v40 + 2);
  v170[1] = *(v40 + 3);
  v43 = *(v40 + 5);
  v170[2] = *(v40 + 4);
  v170[3] = v43;
  v40[13] = v41;
  v40[2] = 0x746172656D756E65;
  v40[3] = 0xE900000000000065;
  v171 = v40[12];
  v170[0] = v42;
  v40[4] = &unk_286C0B2C8;
  v40[5] = v7;
  v40[6] = v7;
  v40[7] = v7;
  v40[8] = v7;
  *(v40 + 9) = 0u;
  *(v40 + 11) = 0u;
  sub_25A892B80(v170);
  swift_beginAccess();
  v40[13] = v39;

  v40[14] = sub_25A89078C;
  v40[15] = 0;
  *(&v185 + 1) = v9;
  *&v184 = v40;
  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v17;
  *&v189 = 0x65676E6172;
  *(&v189 + 1) = 0xE500000000000000;
  v44 = swift_allocObject();
  v44[1] = xmmword_25A9F8DB0;
  v44[2] = 0u;
  v44[3] = 0u;
  v44[4] = 0u;
  v44[5] = 0u;
  v44[6] = 0u;
  v44[7] = 0u;
  v45 = sub_25A92BDB4(v7);
  v46 = swift_allocObject();
  v46[4] = v7;
  v46[5] = v7;
  v46[6] = v7;

  v46[7] = v7;

  v46[8] = v7;

  v46[9] = 0;
  v46[10] = 0;

  v46[11] = 0;
  v46[12] = 0;

  v47 = sub_25A92BDB4(v7);
  v48 = *(v46 + 2);
  v172[1] = *(v46 + 3);
  v49 = *(v46 + 5);
  v172[2] = *(v46 + 4);
  v172[3] = v49;
  v46[13] = v47;
  v46[2] = 0x65676E6172;
  v46[3] = 0xE500000000000000;
  v173 = v46[12];
  v172[0] = v48;
  v46[4] = &unk_286C0B2F8;
  v46[5] = v7;
  v46[6] = v7;
  v46[7] = v7;
  v46[8] = v44;
  *(v46 + 9) = 0u;
  *(v46 + 11) = 0u;
  sub_25A892B80(v172);
  swift_beginAccess();
  v46[13] = v45;

  v46[14] = sub_25A8907B8;
  v46[15] = 0;
  *(&v185 + 1) = v9;
  *&v184 = v46;
  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  v50 = MEMORY[0x277D837D0];
  *(&v190 + 1) = MEMORY[0x277D837D0];
  *&v189 = 7367034;
  *(&v189 + 1) = 0xE300000000000000;
  v51 = sub_25A92BDB4(v7);
  v52 = swift_allocObject();
  v52[4] = v7;
  v52[5] = v7;
  v52[6] = v7;

  v52[7] = v7;

  v52[8] = v7;

  v52[9] = 0;
  v52[10] = 0;

  v52[11] = 0;
  v52[12] = 0;

  v53 = sub_25A92BDB4(v7);
  v54 = *(v52 + 2);
  v174[1] = *(v52 + 3);
  v55 = *(v52 + 5);
  v174[2] = *(v52 + 4);
  v174[3] = v55;
  v52[13] = v53;
  v52[2] = 7367034;
  v52[3] = 0xE300000000000000;
  v175 = v52[12];
  v174[0] = v54;
  v52[4] = v7;
  v52[5] = v7;
  v52[6] = v7;
  v52[7] = v7;
  v52[8] = v7;
  *(v52 + 9) = xmmword_25A9F8DF0;
  v52[11] = 0;
  v52[12] = 0;
  sub_25A892B80(v174);
  swift_beginAccess();
  v52[13] = v51;

  v52[14] = sub_25A8907E4;
  v52[15] = 0;
  *(&v185 + 1) = v9;
  *&v184 = v52;
  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v50;
  *&v189 = 0x7265746C6966;
  *(&v189 + 1) = 0xE600000000000000;
  v56 = sub_25A92BDB4(v7);
  v57 = swift_allocObject();
  v57[4] = v7;
  v57[5] = v7;
  v57[6] = v7;

  v57[7] = v7;

  v57[8] = v7;

  v57[9] = 0;
  v57[10] = 0;

  v57[11] = 0;
  v57[12] = 0;

  v58 = sub_25A92BDB4(v7);
  v59 = *(v57 + 2);
  v176[1] = *(v57 + 3);
  v60 = *(v57 + 5);
  v176[2] = *(v57 + 4);
  v176[3] = v60;
  v57[13] = v58;
  v57[2] = 0x7265746C6966;
  v57[3] = 0xE600000000000000;
  v177 = v57[12];
  v176[0] = v59;
  v57[4] = v7;
  v57[5] = &unk_286C0B348;
  v57[6] = v7;
  v57[7] = v7;
  v57[8] = v7;
  *(v57 + 9) = 0u;
  *(v57 + 11) = 0u;
  sub_25A892B80(v176);
  swift_beginAccess();
  v57[13] = v56;

  v57[14] = sub_25A890810;
  v57[15] = 0;
  *(&v185 + 1) = v9;
  *&v184 = v57;
  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  v61 = MEMORY[0x277D837D0];
  *(&v190 + 1) = MEMORY[0x277D837D0];
  *&v189 = 7235949;
  *(&v189 + 1) = 0xE300000000000000;
  v62 = sub_25A92BDB4(v7);
  v63 = swift_allocObject();
  v63[4] = v7;
  v63[5] = v7;
  v63[6] = v7;

  v63[7] = v7;

  v63[8] = v7;

  v63[9] = 0;
  v63[10] = 0;

  v63[11] = 0;
  v63[12] = 0;

  v64 = sub_25A92BDB4(v7);
  v65 = *(v63 + 2);
  v178[1] = *(v63 + 3);
  v66 = *(v63 + 5);
  v178[2] = *(v63 + 4);
  v178[3] = v66;
  v63[13] = v64;
  v63[2] = 7235949;
  v63[3] = 0xE300000000000000;
  v179 = v63[12];
  v178[0] = v65;
  v63[4] = v7;
  v63[5] = v7;
  v63[6] = v7;
  v63[7] = v7;
  v63[8] = v7;
  *(v63 + 9) = xmmword_25A9F8DA0;
  v63[11] = 0;
  v63[12] = 0;
  sub_25A892B80(v178);
  swift_beginAccess();
  v63[13] = v62;

  v63[14] = sub_25A89083C;
  v63[15] = 0;
  *(&v185 + 1) = v9;
  *&v184 = v63;
  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v61;
  *&v189 = 7889261;
  *(&v189 + 1) = 0xE300000000000000;
  v67 = sub_25A92BDB4(v7);
  v68 = swift_allocObject();
  v68[4] = v7;
  v68[5] = v7;
  v68[6] = v7;

  v68[7] = v7;

  v68[8] = v7;

  v68[9] = 0;
  v68[10] = 0;

  v68[11] = 0;
  v68[12] = 0;

  v69 = sub_25A92BDB4(v7);
  v70 = *(v68 + 2);
  v180[1] = *(v68 + 3);
  v71 = *(v68 + 5);
  v180[2] = *(v68 + 4);
  v180[3] = v71;
  v68[13] = v69;
  v68[2] = 7889261;
  v68[3] = 0xE300000000000000;
  v181 = v68[12];
  v180[0] = v70;
  v68[4] = v7;
  v68[5] = v7;
  v68[6] = v7;
  v68[7] = v7;
  v68[8] = v7;
  *(v68 + 9) = xmmword_25A9F8DA0;
  v68[11] = 0;
  v68[12] = 0;
  sub_25A892B80(v180);
  swift_beginAccess();
  v68[13] = v67;

  v68[14] = sub_25A890868;
  v68[15] = 0;
  *(&v185 + 1) = v9;
  *&v184 = v68;
  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v61;
  *&v189 = 7561825;
  *(&v189 + 1) = 0xE300000000000000;
  v72 = sub_25A92BDB4(v7);
  v73 = swift_allocObject();
  v73[4] = v7;
  v73[5] = v7;
  v73[6] = v7;

  v73[7] = v7;

  v73[8] = v7;

  v73[9] = 0;
  v73[10] = 0;

  v73[11] = 0;
  v73[12] = 0;

  v74 = sub_25A92BDB4(v7);
  v75 = *(v73 + 2);
  v182[1] = *(v73 + 3);
  v76 = *(v73 + 5);
  v182[2] = *(v73 + 4);
  v182[3] = v76;
  v73[13] = v74;
  v73[2] = 7561825;
  v73[3] = 0xE300000000000000;
  v183 = v73[12];
  v182[0] = v75;
  v73[4] = &unk_286C0B388;
  v73[5] = v7;
  v73[6] = v7;
  v73[7] = v7;
  v73[8] = v7;
  *(v73 + 9) = 0u;
  *(v73 + 11) = 0u;
  sub_25A892B80(v182);
  swift_beginAccess();
  v73[13] = v72;

  v73[14] = sub_25A890894;
  v73[15] = 0;
  *(&v185 + 1) = v9;
  *&v184 = v73;
  LexicalContext.store(key:obj:)(&v189, &v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  *(&v190 + 1) = v61;
  *&v189 = 0x646E756F72;
  *(&v189 + 1) = 0xE500000000000000;
  v77 = swift_allocObject();
  v77[1] = xmmword_25A9F8D90;
  v77[2] = 0u;
  v77[3] = 0u;
  v78 = sub_25A92BDB4(v7);
  v79 = swift_allocObject();
  v79[4] = v7;
  v79[5] = v7;
  v79[6] = v7;

  v79[7] = v7;

  v79[8] = v7;

  v79[9] = 0;
  v79[10] = 0;

  v79[11] = 0;
  v79[12] = 0;

  v80 = sub_25A92BDB4(v7);
  v81 = *(v79 + 2);
  v185 = *(v79 + 3);
  v82 = *(v79 + 5);
  v186 = *(v79 + 4);
  v187 = v82;
  v79[13] = v80;
  v79[2] = 0x646E756F72;
  v79[3] = 0xE500000000000000;
  v188 = v79[12];
  v184 = v81;
  v79[4] = &unk_286C0B3B8;
  v79[5] = v7;
  v79[6] = v7;
  v79[7] = v7;
  v79[8] = v77;
  *(v79 + 9) = 0u;
  *(v79 + 11) = 0u;
  sub_25A892B80(&v184);
  swift_beginAccess();
  v79[13] = v78;

  v79[14] = sub_25A8908C0;
  v79[15] = 0;
  v127 = v9;
  v128 = v0;
  *(&v151 + 1) = v9;
  *&v150 = v79;
  LexicalContext.store(key:obj:)(&v189, &v150);
  __swift_destroy_boxed_opaque_existential_0Tm(&v150);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  v157[3] = MEMORY[0x277D837D0];
  v157[0] = 0x7265707573;
  v157[1] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25A9F8D90;
  *(v4 + 56) = v6;
  *(v4 + 64) = sub_25A892BD4();
  *(v4 + 32) = v133;
  v83 = sub_25A92BDB4(v7);
  v130 = type metadata accessor for Function();
  v84 = swift_allocObject();
  v84[4] = v7;
  v84[5] = v7;
  v84[6] = v7;

  v84[7] = v7;

  v84[8] = v7;

  v84[9] = 0;
  v84[10] = 0;

  v84[11] = 0;
  v84[12] = 0;

  v85 = sub_25A92BDB4(v7);
  v86 = *(v84 + 2);
  v190 = *(v84 + 3);
  v87 = *(v84 + 5);
  v191 = *(v84 + 4);
  v192 = v87;
  v84[13] = v85;
  v84[2] = 0x7265707573;
  v84[3] = 0xE500000000000000;
  v193 = v84[12];
  v189 = v86;
  v84[4] = &unk_286C0B3F8;
  v84[5] = v7;
  v84[6] = v7;
  v84[7] = v7;
  v84[8] = v7;
  *(v84 + 9) = 0u;
  *(v84 + 11) = 0u;
  sub_25A892B80(&v189);
  swift_beginAccess();
  v84[13] = v83;

  v84[14] = sub_25A8908EC;
  v84[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_25A9F8D90;
  *(v88 + 32) = 0x7463656A626FLL;
  *(v88 + 40) = 0xE600000000000000;
  v0 = sub_25A98E67C(v7);
  v89 = swift_allocObject();
  v89[10] = v84;

  v90 = sub_25A967378(1, 2, 1, v88);
  v155 = v90;
  sub_25A96B0BC(0, 0, 1, 0x7265707573, 0xE500000000000000);
  v89[2] = 0x7265707573;
  v89[3] = 0xE500000000000000;
  v89[4] = 0x7265707573;
  v89[5] = 0xE500000000000000;
  v89[6] = v4;
  v89[7] = v90;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v89[8] = sub_25A936284();
  v131 = v89;
  v132 = v0;
  v89[9] = &off_286C11D08;
  v91 = v0 + 64;
  v92 = 1 << *(v0 + 32);
  v93 = -1;
  if (v92 < 64)
  {
    v93 = ~(-1 << v92);
  }

  v94 = v93 & *(v0 + 64);
  swift_beginAccess();
  v95 = 0;
  v96 = (v92 + 63) >> 6;
  if (v94)
  {
    while (1)
    {
      v97 = v95;
LABEL_46:
      v98 = __clz(__rbit64(v94));
      v94 &= v94 - 1;
      v99 = v98 | (v97 << 6);
      v100 = (*(v132 + 48) + 16 * v99);
      v4 = v100[1];
      v135 = *v100;
      v101 = *(*(v132 + 56) + 8 * v99);
      v102 = v131[9];
      ObjectType = swift_getObjectType();
      *(&v151 + 1) = v130;
      *&v150 = v101;
      v0 = *(v102 + 64);
      swift_retain_n();

      swift_unknownObjectRetain();
      (v0)(v135, v4, &v150, ObjectType, v102);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(&v150);
      if (!v94)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
LABEL_42:
    v97 = v95 + 1;
    if (__OFADD__(v95, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v97 >= v96)
    {
      break;
    }

    v94 = *(v91 + 8 * v97);
    ++v95;
    if (v94)
    {
      v95 = v97;
      goto LABEL_46;
    }
  }

  v156[3] = v129;
  v156[0] = v131;
  LexicalContext.store(key:obj:)(v157, v156);
  __swift_destroy_boxed_opaque_existential_0Tm(v156);
  __swift_destroy_boxed_opaque_existential_0Tm(v157);
  *(&v151 + 1) = MEMORY[0x277D837D0];
  v103 = MEMORY[0x277D837D0];
  *&v150 = 0x6E6174736E697369;
  *(&v150 + 1) = 0xEA00000000006563;
  v104 = MEMORY[0x277D84F90];
  v105 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v106 = swift_allocObject();
  v106[4] = v104;
  v106[5] = v104;
  v106[6] = v104;

  v106[7] = v104;

  v106[8] = v104;

  v106[9] = 0;
  v106[10] = 0;

  v106[11] = 0;
  v106[12] = 0;

  v106[13] = sub_25A92BDB4(v104);
  v106[2] = 0x6E6174736E697369;
  v106[3] = 0xEA00000000006563;
  v107 = *(v106 + 5);
  v139[2] = *(v106 + 4);
  v139[3] = v107;
  v140 = v106[12];
  v108 = *(v106 + 3);
  v139[0] = *(v106 + 2);
  v139[1] = v108;
  v106[4] = &unk_286C0B438;
  v106[5] = v104;
  v106[6] = v104;
  v106[7] = v104;
  v106[8] = v104;
  *(v106 + 9) = 0u;
  *(v106 + 11) = 0u;
  sub_25A892B80(v139);
  swift_beginAccess();
  v106[13] = v105;

  v106[14] = sub_25A890918;
  v106[15] = 0;
  *(&v146 + 1) = v127;
  *&v145 = v106;
  LexicalContext.store(key:obj:)(&v150, &v145);
  __swift_destroy_boxed_opaque_existential_0Tm(&v145);
  __swift_destroy_boxed_opaque_existential_0Tm(&v150);
  v109 = v103;
  *(&v151 + 1) = v103;
  *&v150 = 0x72747461736168;
  *(&v150 + 1) = 0xE700000000000000;
  v110 = sub_25A92BDB4(v104);
  v111 = swift_allocObject();
  v111[4] = v104;
  v111[5] = v104;
  v111[6] = v104;

  v111[7] = v104;

  v111[8] = v104;

  v111[9] = 0;
  v111[10] = 0;

  v111[11] = 0;
  v111[12] = 0;

  v111[13] = sub_25A92BDB4(v104);
  v111[2] = 0x72747461736168;
  v111[3] = 0xE700000000000000;
  v112 = *(v111 + 5);
  v141[2] = *(v111 + 4);
  v141[3] = v112;
  v142 = v111[12];
  v113 = *(v111 + 3);
  v141[0] = *(v111 + 2);
  v141[1] = v113;
  v111[4] = &unk_286C0B478;
  v111[5] = v104;
  v111[6] = v104;
  v111[7] = v104;
  v111[8] = v104;
  *(v111 + 9) = 0u;
  *(v111 + 11) = 0u;
  sub_25A892B80(v141);
  swift_beginAccess();
  v111[13] = v110;

  v111[14] = sub_25A890944;
  v111[15] = 0;
  *(&v146 + 1) = v127;
  *&v145 = v111;
  LexicalContext.store(key:obj:)(&v150, &v145);
  __swift_destroy_boxed_opaque_existential_0Tm(&v145);
  __swift_destroy_boxed_opaque_existential_0Tm(&v150);
  *(&v151 + 1) = v109;
  *&v150 = 0x616C636275737369;
  *(&v150 + 1) = 0xEA00000000007373;
  v114 = sub_25A92BDB4(v104);
  v115 = swift_allocObject();
  v115[4] = v104;
  v115[5] = v104;
  v115[6] = v104;

  v115[7] = v104;

  v115[8] = v104;

  v115[9] = 0;
  v115[10] = 0;

  v115[11] = 0;
  v115[12] = 0;

  v115[13] = sub_25A92BDB4(v104);
  v115[2] = 0x616C636275737369;
  v115[3] = 0xEA00000000007373;
  v116 = *(v115 + 5);
  v143[2] = *(v115 + 4);
  v143[3] = v116;
  v144 = v115[12];
  v117 = *(v115 + 3);
  v143[0] = *(v115 + 2);
  v143[1] = v117;
  v115[4] = &unk_286C0B4B8;
  v115[5] = v104;
  v115[6] = v104;
  v115[7] = v104;
  v115[8] = v104;
  *(v115 + 9) = 0u;
  *(v115 + 11) = 0u;
  sub_25A892B80(v143);
  swift_beginAccess();
  v115[13] = v114;

  v115[14] = sub_25A890970;
  v115[15] = 0;
  *(&v146 + 1) = v127;
  *&v145 = v115;
  LexicalContext.store(key:obj:)(&v150, &v145);
  __swift_destroy_boxed_opaque_existential_0Tm(&v145);
  __swift_destroy_boxed_opaque_existential_0Tm(&v150);
  *(&v151 + 1) = v109;
  *&v150 = 7364973;
  *(&v150 + 1) = 0xE300000000000000;
  v118 = sub_25A92BDB4(v104);
  v119 = swift_allocObject();
  v119[4] = v104;
  v119[5] = v104;
  v119[6] = v104;

  v119[7] = v104;

  v119[8] = v104;

  v119[9] = 0;
  v119[10] = 0;

  v119[11] = 0;
  v119[12] = 0;

  v119[13] = sub_25A92BDB4(v104);
  v119[2] = 7364973;
  v119[3] = 0xE300000000000000;
  v120 = *(v119 + 5);
  v147 = *(v119 + 4);
  v148 = v120;
  v149 = v119[12];
  v121 = *(v119 + 3);
  v145 = *(v119 + 2);
  v146 = v121;
  v119[4] = v104;
  v119[5] = &unk_286C0B4F8;
  v119[6] = v104;
  v119[7] = v104;
  v119[8] = v104;
  *(v119 + 9) = xmmword_25A9F8DF0;
  v119[11] = 0;
  v119[12] = 0;
  sub_25A892B80(&v145);
  swift_beginAccess();
  v119[13] = v118;

  v119[14] = sub_25A89099C;
  v119[15] = 0;
  v138 = v127;
  v137[0] = v119;
  LexicalContext.store(key:obj:)(&v150, v137);
  __swift_destroy_boxed_opaque_existential_0Tm(v137);
  __swift_destroy_boxed_opaque_existential_0Tm(&v150);
  v138 = v109;
  v137[0] = 0x72747461746567;
  v137[1] = 0xE700000000000000;
  v122 = sub_25A92BDB4(v104);
  v123 = swift_allocObject();
  v123[4] = v104;
  v123[5] = v104;
  v123[6] = v104;

  v123[7] = v104;

  v123[8] = v104;

  v123[9] = 0;
  v123[10] = 0;

  v123[11] = 0;
  v123[12] = 0;

  v123[13] = sub_25A92BDB4(v104);
  v123[2] = 0x72747461746567;
  v123[3] = 0xE700000000000000;
  v124 = *(v123 + 5);
  v152 = *(v123 + 4);
  v153 = v124;
  v154 = v123[12];
  v125 = *(v123 + 3);
  v150 = *(v123 + 2);
  v151 = v125;
  v123[4] = &unk_286C0B528;
  v123[5] = v104;
  v123[6] = v104;
  v123[7] = v104;
  v123[8] = v104;
  *(v123 + 9) = 0u;
  *(v123 + 11) = 0u;
  sub_25A892B80(&v150);
  swift_beginAccess();
  v123[13] = v122;

  v123[14] = sub_25A8909C8;
  v123[15] = 0;
  v136[3] = v127;
  v136[0] = v123;
  LexicalContext.store(key:obj:)(v137, v136);
  __swift_destroy_boxed_opaque_existential_0Tm(v136);
  __swift_destroy_boxed_opaque_existential_0Tm(v137);
  return v128;
}

unint64_t sub_25A89522C()
{
  result = qword_27FA047D0;
  if (!qword_27FA047D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA047D0);
  }

  return result;
}

unint64_t sub_25A895280()
{
  result = qword_27FA047D8;
  if (!qword_27FA047D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA047D8);
  }

  return result;
}

uint64_t sub_25A8952F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_25A8953BC()
{
  result = qword_27FA04878;
  if (!qword_27FA04878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA04870, &qword_25A9F8EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04878);
  }

  return result;
}

uint64_t sub_25A895474(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65756C6176;
  if (v2 != 1)
  {
    v4 = 0x6F746172656E6567;
    v3 = 0xEA00000000007372;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7955819;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65756C6176;
  if (*a2 != 1)
  {
    v8 = 0x6F746172656E6567;
    v7 = 0xEA00000000007372;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7955819;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A895570()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A89560C(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A895694(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A89572C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A89638C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A89575C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  if (v2 != 1)
  {
    v5 = 0x6F746172656E6567;
    v4 = 0xEA00000000007372;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7955819;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A8957B4()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x6F746172656E6567;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

unint64_t sub_25A895808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A89638C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A895830(uint64_t a1)
{
  v2 = sub_25A896220();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A89586C(uint64_t a1)
{
  v2 = sub_25A896220();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8958F4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04880, &qword_25A9F8F18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A896220();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for DictComp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A90BEBC(v8, 0);
    v1[6] = v10;
    v1[7] = sub_25A90BEBC(v8, 1);
    v1[8] = v11;
    v1[9] = sub_25A946C18(v8, 2);
    sub_25A872F24(a1, v13);
    v3 = sub_25A8963D8(v13);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A895B24@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v6 = sub_25A936284();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = v4[4];
  swift_beginAccess();
  v6[3] = Strong;
  v6[4] = v8;
  swift_unknownObjectRelease();
  v9 = v4[6];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 48);
  swift_unknownObjectRetain();

  v11(v12, &off_286C11D08, ObjectType, v9);
  swift_unknownObjectRelease();
  v13 = v4[8];
  v14 = swift_getObjectType();
  v15 = *(v13 + 48);

  swift_unknownObjectRetain();
  v15(v6, &off_286C11D08, v14, v13);
  swift_unknownObjectRelease();
  v16 = v4[9];
  v17 = *(v16 + 16);
  if (v17)
  {
    v29 = v4;
    v30 = a1;

    v18 = (v16 + 40);
    do
    {
      v19 = *v18;
      v20 = swift_getObjectType();
      v21 = *(v19 + 48);

      swift_unknownObjectRetain();
      v21(v6, &off_286C11D08, v20, v19);
      swift_unknownObjectRelease();
      v18 += 2;
      --v17;
    }

    while (v17);

    v4 = v29;
    v22 = *(v29[9] + 16);
    v32 = MEMORY[0x277D84F98];
    if (v22)
    {
      v31 = MEMORY[0x277D84F90];
      swift_retain_n();

      sub_25A998748();
      type metadata accessor for Comprehension();
      v23 = 32;
      do
      {
        swift_dynamicCastClassUnconditional();
        swift_unknownObjectRetain();
        sub_25A998718();
        sub_25A998758();
        sub_25A998768();
        sub_25A998728();
        v23 += 16;
        --v22;
      }

      while (v22);
      a1 = v30;
      v24 = v31;
      goto LABEL_11;
    }

    a1 = v30;
  }

  else
  {
    v32 = MEMORY[0x277D84F98];
  }

  swift_retain_n();

  v24 = MEMORY[0x277D84F90];
LABEL_11:

  sub_25A9351F0(0, v24, v6, &off_286C11D08, &v32, v4);

  if (v3)
  {
  }

  else
  {

    v26 = v32;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
    v28 = swift_allocObject();
    *(v28 + 16) = MEMORY[0x277D84F98];
    swift_beginAccess();
    *(v28 + 16) = v26;
    *(a1 + 24) = v27;

    *a1 = v28;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A895EF8(uint64_t a1, void *a2)
{
  v4 = a2[6];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 64);
  swift_unknownObjectRetain();
  v6(v16, ObjectType, v4);
  result = swift_unknownObjectRelease();
  if (!v2)
  {
    sub_25A896580(v19);
    sub_25A872CE0(v16);
    v8 = a2[8];
    v9 = swift_getObjectType();
    v10 = *(v8 + 64);
    swift_unknownObjectRetain();
    v10(v16, v9, v8);
    swift_unknownObjectRelease();
    sub_25A896580(v18);
    sub_25A872CE0(v16);
    sub_25A87500C(v19, v15);
    if (swift_dynamicCast())
    {
      v16[0] = v12;
      v16[1] = v13;
      v17 = v14;
      sub_25A874FB0(v16, &v12);
      sub_25A87500C(v18, v15);
      sub_25A8F2E14(v15, &v12);
      sub_25A8795A0(v16);
    }

    else
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
      sub_25A8961B8(&v12);
      sub_25A874F54();
      swift_allocError();
      *v11 = 108;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    return __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  return result;
}

uint64_t sub_25A8960EC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_25A896124()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A8961B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04610, &qword_25A9FDA50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25A896220()
{
  result = qword_27FA04888;
  if (!qword_27FA04888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04888);
  }

  return result;
}

unint64_t sub_25A896288()
{
  result = qword_27FA04890;
  if (!qword_27FA04890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04890);
  }

  return result;
}

unint64_t sub_25A8962E0()
{
  result = qword_27FA04898;
  if (!qword_27FA04898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04898);
  }

  return result;
}

unint64_t sub_25A896338()
{
  result = qword_27FA048A0;
  if (!qword_27FA048A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA048A0);
  }

  return result;
}

unint64_t sub_25A89638C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A8963D8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048B8, &unk_25A9FBD80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A896DA0();
  sub_25A998BF8();
  if (v2)
  {
    sub_25A872F88(v1 + 24);
    type metadata accessor for BaseOp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = 1;
    v8 = sub_25A998928();
    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v8;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

double sub_25A896580@<D0>(uint64_t *a1@<X8>)
{
  sub_25A872C84(v1, v5);
  if (v6 && (sub_25A872CE0(v5), sub_25A872C84(v1, v5), v6 != 1))
  {
    sub_25A872CE0(v5);
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
    v4 = swift_allocObject();
    *a1 = v4;
    result = 0.0;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
  }

  else
  {
    v7[0] = v5[0];
    v7[1] = v5[1];
    sub_25A92DE50(v7, a1);
    sub_25A872D84(v7);
  }

  return result;
}

void (*sub_25A896680(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_25A896714;
}

void sub_25A896714(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
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

uint64_t sub_25A896798(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F6E656E696CLL;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6F6E656E696CLL;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A896834()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8968AC(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A896910(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A896984@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

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

void sub_25A8969E4(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x6F6E656E696CLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A896A18()
{
  if (*v0)
  {
    return 0x6F6E656E696CLL;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_25A896A48@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

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

uint64_t sub_25A896AAC(uint64_t a1)
{
  v2 = sub_25A896DA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A896AE8(uint64_t a1)
{
  v2 = sub_25A896DA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A896B24(void *a1)
{
  v2 = swift_allocObject();
  sub_25A8963D8(a1);
  return v2;
}

double sub_25A896B74@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_25A896B84()
{
  sub_25A872F88(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25A896BE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_25A896CBC(uint64_t a1)
{
  *(a1 + 8) = sub_25A896D24(&qword_27FA048A8, &unk_25A9F90A8);
  result = sub_25A896D24(&qword_27FA048B0, &unk_25A9F90EC);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25A896D24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BaseOp();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25A896D64@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_25A896DA0()
{
  result = qword_27FA048C0;
  if (!qword_27FA048C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA048C0);
  }

  return result;
}

uint64_t sub_25A896DF4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8Morpheus8OpResultO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
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

uint64_t sub_25A896E7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25A896EB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_25A896F04(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_25A896F4C()
{
  result = qword_27FA048C8;
  if (!qword_27FA048C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA048C8);
  }

  return result;
}

unint64_t sub_25A896FA4()
{
  result = qword_27FA048D0;
  if (!qword_27FA048D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA048D0);
  }

  return result;
}

unint64_t sub_25A896FFC()
{
  result = qword_27FA048D8;
  if (!qword_27FA048D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA048D8);
  }

  return result;
}

double sub_25A897054@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t sub_25A897080(void *a1)
{
  swift_allocObject();
  sub_25A872F24(a1, v4);
  v2 = sub_25A8963D8(v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v2;
}

uint64_t sub_25A89711C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 6779489;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x65756C6176;
  }

  else
  {
    v5 = 6779489;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
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
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A8971B8()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A897230(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A897294(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A897308@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

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

void sub_25A897368(uint64_t *a1@<X8>)
{
  v2 = 6779489;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A89739C()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 6779489;
  }
}

uint64_t sub_25A8973CC@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

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

uint64_t sub_25A897430(uint64_t a1)
{
  v2 = sub_25A897A4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A89746C(uint64_t a1)
{
  v2 = sub_25A897A4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8974F4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048F8, &unk_25A9FBDE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  v1[5] = 0;
  v1[6] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A897A4C();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    type metadata accessor for Keyword();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v13[0]) = 0;
    v1[5] = sub_25A9988F8();
    v1[6] = v9;

    v1[7] = sub_25A910D18(v8, 1);
    v1[8] = v11;
    sub_25A872F24(a1, v13);
    v3 = sub_25A8963D8(v13);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A897704@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[8];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = v1[4];
  v10 = *(v6 + 48);
  swift_unknownObjectRetain();
  v10(Strong, v9, ObjectType, v6);
  swift_unknownObjectRelease();
  v11 = v1[8];
  v12 = swift_getObjectType();
  v13 = *(v11 + 64);
  swift_unknownObjectRetain();
  v13(v19, v12, v11);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    sub_25A91185C(v20);
    sub_25A872CE0(v19);
    v15 = v1[6];
    if (v15)
    {
      v16 = v4[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048E0, ",K\a");
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25A9F8D90;
      *(inited + 32) = v16;
      *(inited + 40) = v15;

      sub_25A92DE50(v20, (inited + 48));
      v18 = sub_25A92BDB4(inited);
      swift_setDeallocating();
      sub_25A878194(inited + 32, &qword_27FA048E8, &unk_25A9FD760);
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048F0, "2K\a");
      *a1 = v18;
    }

    else
    {
      sub_25A92DE50(v20, a1);
    }

    result = sub_25A878194(v20, &qword_27FA04458, &unk_25A9F7FB0);
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A8978F0()
{
  if (*(v0 + 48))
  {
    v3 = *(v0 + 40);

    MEMORY[0x25F850290](2112800, 0xE300000000000000);
  }

  else
  {
    v3 = 10794;
  }

  swift_getObjectType();
  v1 = sub_25A998968();
  MEMORY[0x25F850290](v1);

  return v3;
}

uint64_t sub_25A897990()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_25A8979C0()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A897A4C()
{
  result = qword_27FA04900;
  if (!qword_27FA04900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04900);
  }

  return result;
}

unint64_t sub_25A897AB4()
{
  result = qword_27FA04908;
  if (!qword_27FA04908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04908);
  }

  return result;
}

unint64_t sub_25A897B0C()
{
  result = qword_27FA04910;
  if (!qword_27FA04910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04910);
  }

  return result;
}

unint64_t sub_25A897B64()
{
  result = qword_27FA04918;
  if (!qword_27FA04918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04918);
  }

  return result;
}

uint64_t sub_25A897BC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v0 = swift_allocObject();
  v0[1] = xmmword_25A9F8D90;
  v0[2] = 0u;
  v0[3] = 0u;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for PyBuiltInFunctionOrMethod();
  v3 = swift_allocObject();
  v3[4] = v1;
  v3[5] = v1;
  v3[6] = v1;

  v3[7] = v1;

  v3[8] = v1;

  v3[9] = 0;
  v3[10] = 0;

  v3[11] = 0;
  v3[12] = 0;

  v3[13] = sub_25A92BDB4(v1);
  v3[2] = 0x79617272612E706ELL;
  v3[3] = 0xE800000000000000;
  v4 = *(v3 + 5);
  v7[2] = *(v3 + 4);
  v7[3] = v4;
  v8 = v3[12];
  v5 = *(v3 + 3);
  v7[0] = *(v3 + 2);
  v7[1] = v5;
  v3[4] = &unk_286C0BCF8;
  v3[5] = v1;
  v3[6] = v1;
  v3[7] = v1;
  v3[8] = v0;
  *(v3 + 9) = 0u;
  *(v3 + 11) = 0u;
  sub_25A892B80(v7);
  swift_beginAccess();
  v3[13] = v2;

  v3[14] = sub_25A8DBCC4;
  v3[15] = 0;
  qword_27FA0FCA8 = v3;
  return result;
}

uint64_t sub_25A897D44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_25A8F3600(97, 0xE100000000000000), (v6 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v5, v21);
    sub_25A872D74(v21, v22);
    if (*(a1 + 16) && (v7 = sub_25A8F3600(0x6570797464, 0xE500000000000000), (v8 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v7, v21), (swift_dynamicCast() & 1) != 0))
    {
      v9 = sub_25A8F139C(v19, v20);

      v10 = v9;
    }

    else
    {
      v10 = 13;
    }

    v17 = sub_25A8F0FA0(v22, v10);
    if (!v2)
    {
      v18 = v17;
      a2[3] = type metadata accessor for MLXArray();
      *a2 = v18;
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v11 = sub_25A997BD8();
    __swift_project_value_buffer(v11, qword_27FA0FCE8);
    v12 = sub_25A997BB8();
    v13 = sub_25A9983A8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25A232000, v12, v13, "Missing required args for numpy.array", v14, 2u);
      MEMORY[0x25F852800](v14, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v15 = 49;
    return swift_willThrow();
  }
}

uint64_t sub_25A897F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[33] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v6 = mlx_array_ndim(*(a1 + 16));
  v7 = *(a1 + 16);

  if (v6 == 1)
  {
    mlx_array_ndim(v7);
    v8 = mlx_array_dim(v7, 0);
    swift_beginAccess();
    swift_beginAccess();
    if (v8 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04938, &unk_25A9FF210);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25A9F8D90;
      *(inited + 32) = 0;
      *(inited + 56) = MEMORY[0x277D83B88];
      *(inited + 64) = &off_286C13520;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v30 = sub_25A9616C8(inited, v31[0]);

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 32));
      swift_beginAccess();
      v10 = mlx_array_dtype(*(v30 + 16));
      v11 = sub_25A956420(v10);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = 7;
      }

      v13 = sub_25A8BFCB4(0, v12);
      sub_25A998C58();
      v14 = v31[0];
      v31[0] = mlx_array_new();
      v15 = *(v30 + 16);
      swift_beginAccess();
      mlx_not_equal(v31, v15, *(v13 + 16), *(v14 + 16));
    }
  }

  else
  {
    mlx_array_ndim(v7);
    v16 = mlx_array_dim(v7, 0);
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = v16 & ~(v16 >> 31);
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04938, &unk_25A9FF210);
        v19 = swift_initStackObject();
        *(v19 + 16) = xmmword_25A9F8D90;
        *(v19 + 32) = v17;
        *(v19 + 56) = MEMORY[0x277D83B88];
        *(v19 + 64) = &off_286C13520;
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v20 = sub_25A9616C8(v19, v31[13]);

        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_0Tm((v19 + 32));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
        v21 = swift_initStackObject();
        *(v21 + 16) = xmmword_25A9F8D90;
        *(v21 + 32) = v17;
        v22 = *(a2 + 16);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v24 = a2, v25 = *(a2 + 24) >> 1, v25 <= v22))
        {
          v24 = sub_25A967040(isUniquelyReferenced_nonNull_native, v22 + 1, 1, a2);
          v25 = *(v24 + 3) >> 1;
        }

        v26 = *(v24 + 2);
        if (v25 <= v26)
        {
          __break(1u);
          __break(1u);
          __break(1u);
        }

        *&v24[8 * v26 + 32] = *(v21 + 32);

        ++*(v24 + 2);
        sub_25A897F48(v20, v24, a3, a4);
        ++v17;
      }

      while (v18 != v17);
    }
  }
}

void sub_25A8985D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8985D8);
  }

  _Unwind_Resume(a1);
}

void sub_25A89862C(uint64_t a1, uint64_t a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v4 = mlx_array_dtype(*(a1 + 16));
  v5 = sub_25A956420(v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 7;
  }

  v7 = sub_25A8BFCB4(a2, v6);
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v10[0] = mlx_array_new();
  v8 = *(a1 + 16);
  swift_beginAccess();
  mlx_not_equal(v10, v8, *(v7 + 16), *(v9 + 16));
}

void sub_25A898768(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A898770);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A898784(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_ndim(*(a1 + 16)) == 1)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v13 = mlx_array_new();
    mlx_argsort(&v13, *(a1 + 16), *(v12 + 16));
  }

  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v6 = sub_25A997BD8();
  __swift_project_value_buffer(v6, qword_27FA0FCE8);

  v7 = sub_25A997BB8();
  v8 = sub_25A9983A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = mlx_array_ndim(*(a1 + 16));

    _os_log_impl(&dword_25A232000, v7, v8, "Ndim of %ld is not supported for searchsorted", v9, 0xCu);
    MEMORY[0x25F852800](v9, -1, -1);
  }

  else
  {
  }

  sub_25A874F54();
  swift_allocError();
  *v10 = 48;
  return swift_willThrow();
}

void sub_25A898FD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A898FDCLL);
  }

  _Unwind_Resume(a1);
}

void sub_25A8990B0(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04938, &unk_25A9FF210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25A9F8D90;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA049E8, &qword_25A9F95A8);
  *(inited + 32) = -1;
  *(inited + 56) = v3;
  *(inited + 64) = &off_286C13550;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v4 = sub_25A9616C8(inited, v10[0]);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((inited + 32));
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_25A9F8D90;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA049F0, &qword_25A9F95B0);
  *(v5 + 32) = 1;
  *(v5 + 56) = v6;
  *(v5 + 64) = &off_286C13570;
  sub_25A998C58();
  v7 = sub_25A9616C8(v5, v10[0]);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v5 + 32));
  sub_25A998C58();
  v8 = v10[0];
  v10[0] = mlx_array_new();
  swift_beginAccess();
  v9 = *(v4 + 16);
  swift_beginAccess();
  mlx_less_equal(v10, v9, *(v7 + 16), *(v8 + 16));
}

void sub_25A89991C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A899924);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8999D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v23 = a2;
  type metadata accessor for MLXArray();
  if (swift_dynamicCast())
  {
    v8 = v22;
  }

  else
  {
    swift_beginAccess();
    v9 = mlx_array_dtype(*(a1 + 16));
    v10 = sub_25A956420(v9);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = 7;
    }

    v8 = sub_25A8BFCB4(a2, v11);
  }

  v22 = a3;
  if (swift_dynamicCast())
  {
    v12 = v20;
  }

  else
  {
    swift_beginAccess();
    v13 = mlx_array_dtype(*(a1 + 16));
    v14 = sub_25A956420(v13);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = 7;
    }

    v12 = sub_25A8BFCB4(a3, v15);
  }

  v21 = mlx_array_new();
  swift_beginAccess();
  v16 = *(a1 + 16);
  swift_beginAccess();
  v17 = *(v8 + 16);
  swift_beginAccess();
  mlx_clip(&v21, v16, v17, *(v12 + 16), *(a4 + 16));

  v18 = v21;
  result = swift_allocObject();
  *(result + 16) = v18;
  return result;
}

void sub_25A899BA8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A899BB0);
  }

  _Unwind_Resume(a1);
}

void sub_25A899BCC(uint64_t a1, uint64_t a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v4 = mlx_array_dtype(*(a1 + 16));
  v5 = sub_25A956420(v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 7;
  }

  v7 = sub_25A8BFCB4(a2, v6);
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v10[0] = mlx_array_new();
  v8 = *(a1 + 16);
  swift_beginAccess();
  mlx_subtract(v10, v8, *(v7 + 16), *(v9 + 16));
}

void sub_25A899D08(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A899D10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A899D24(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048E0, ",K\a");
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25A9F94F0;
  *(v1 + 32) = 6712937;
  *(v1 + 40) = 0xE300000000000000;
  v2 = MEMORY[0x277D83A90];
  *(v1 + 48) = 2139095040;
  *(v1 + 72) = v2;
  *(v1 + 80) = 7233902;
  *(v1 + 88) = 0xE300000000000000;
  *(v1 + 96) = 2143289344;
  *(v1 + 120) = v2;
  *(v1 + 128) = 0x79617272617361;
  *(v1 + 136) = 0xE700000000000000;
  if (qword_27FA04390 != -1)
  {
    swift_once();
  }

  v3 = qword_27FA0FCA8;
  v4 = type metadata accessor for PyBuiltInFunctionOrMethod();
  *(v1 + 144) = v3;
  *(v1 + 168) = v4;
  *(v1 + 176) = 0x7961727261;
  *(v1 + 184) = 0xE500000000000000;
  *(v1 + 192) = v3;
  *(v1 + 216) = v4;
  *(v1 + 224) = 0x727261796E617361;
  *(v1 + 232) = 0xEA00000000007961;
  *(v1 + 240) = v3;
  *(v1 + 264) = v4;
  *(v1 + 272) = 0x5F6C6F6F62;
  v5 = MEMORY[0x277D837D0];
  *(v1 + 280) = 0xE500000000000000;
  *(v1 + 288) = 0x5F6C6F6F62;
  *(v1 + 296) = 0xE500000000000000;
  *(v1 + 312) = v5;
  *(v1 + 320) = 0x323374616F6C66;
  *(v1 + 328) = 0xE700000000000000;
  *(v1 + 336) = 0x323374616F6C66;
  *(v1 + 344) = 0xE700000000000000;
  *(v1 + 360) = v5;
  *(v1 + 368) = 947154537;
  *(v1 + 376) = 0xE400000000000000;
  *(v1 + 384) = 947154537;
  *(v1 + 392) = 0xE400000000000000;
  *(v1 + 408) = v5;
  *(v1 + 416) = 0x3233746E69;
  *(v1 + 424) = 0xE500000000000000;
  *(v1 + 432) = 0x3233746E69;
  *(v1 + 440) = 0xE500000000000000;
  *(v1 + 456) = v5;
  *(v1 + 464) = 0x3436746E69;
  *(v1 + 472) = 0xE500000000000000;
  *(v1 + 480) = 0x3436746E69;
  *(v1 + 488) = 0xE500000000000000;
  *(v1 + 504) = v5;
  *(v1 + 512) = 0x38746E6975;
  *(v1 + 520) = 0xE500000000000000;
  *(v1 + 552) = v5;
  *(v1 + 528) = 0x38746E6975;
  *(v1 + 536) = 0xE500000000000000;
  *(v1 + 560) = 0x3233746E6975;
  *(v1 + 568) = 0xE600000000000000;
  *(v1 + 600) = v5;
  *(v1 + 576) = 0x3233746E6975;
  *(v1 + 584) = 0xE600000000000000;
  *(v1 + 608) = 0x7961727261646ELL;
  *(v1 + 616) = 0xE700000000000000;
  v6 = qword_27FA042F8;
  swift_retain_n();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27FA046C8;
  *(v1 + 648) = type metadata accessor for PyBuiltInClass();
  *(v1 + 624) = v7;
  *(v1 + 656) = 6579297;
  *(v1 + 664) = 0xE300000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25A9F8D90;
  *(v8 + 32) = 0x656375646572;
  *(v8 + 40) = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25A9F8D90;
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 32) = 0;

  v10 = MEMORY[0x277D84F90];
  v11 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v12 = swift_allocObject();
  v12[4] = v10;
  v12[5] = v10;

  v12[6] = v10;

  v12[7] = v10;

  v12[8] = v10;

  v12[9] = 0;
  v12[10] = 0;

  v12[11] = 0;
  v12[12] = 0;

  v12[13] = sub_25A92BDB4(v10);
  v12[2] = 0x656375646572;
  v12[3] = 0xE600000000000000;
  v13 = *(v12 + 5);
  v408[2] = *(v12 + 4);
  v408[3] = v13;
  v409 = v12[12];
  v14 = *(v12 + 2);
  v408[1] = *(v12 + 3);
  v408[0] = v14;
  v12[4] = &unk_286C0BD78;
  v12[5] = v10;
  v12[6] = v10;
  v12[7] = v10;
  v12[8] = v9;
  *(v12 + 9) = 0u;
  *(v12 + 11) = 0u;
  sub_25A892B80(v408);
  swift_beginAccess();
  v12[13] = v11;

  v12[14] = sub_25A8DBCF0;
  v12[15] = 0;
  *(v8 + 72) = v4;
  *(v8 + 48) = v12;
  v15 = sub_25A92BDB4(v8);
  swift_setDeallocating();
  sub_25A878194(v8 + 32, &qword_27FA048E8, &unk_25A9FD760);
  swift_deallocClassInstance();
  v16 = swift_allocObject();
  v16[4] = v10;
  v16[5] = v10;

  v16[6] = v10;

  v16[7] = v10;

  v16[8] = v10;

  v16[9] = 0;
  v16[10] = 0;

  v16[11] = 0;
  v16[12] = 0;

  v16[13] = sub_25A92BDB4(v10);
  v16[2] = 0x6464612E706ELL;
  v16[3] = 0xE600000000000000;
  v17 = *(v16 + 5);
  v410[2] = *(v16 + 4);
  v410[3] = v17;
  v411 = v16[12];
  v18 = *(v16 + 2);
  v410[1] = *(v16 + 3);
  v410[0] = v18;
  v16[4] = &unk_286C0BD38;
  v16[5] = v10;
  v16[6] = v10;
  v16[7] = v10;
  v16[8] = v10;
  *(v16 + 9) = 0u;
  *(v16 + 11) = 0u;
  sub_25A892B80(v410);
  swift_beginAccess();
  v16[13] = v15;

  v16[14] = sub_25A8DBD1C;
  v16[15] = 0;
  *(v1 + 696) = v4;
  *(v1 + 672) = v16;
  *(v1 + 704) = 0x796C7069746C756DLL;
  *(v1 + 712) = 0xE800000000000000;
  v19 = swift_allocObject();
  *(v19 + 32) = 0x656375646572;
  *(v19 + 16) = xmmword_25A9F8D90;
  *(v19 + 40) = 0xE600000000000000;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25A9F8D90;
  *(v20 + 56) = MEMORY[0x277D83B88];
  *(v20 + 32) = 0;
  v21 = sub_25A92BDB4(v10);
  v22 = swift_allocObject();
  v22[4] = v10;
  v22[5] = v10;

  v22[6] = v10;

  v22[7] = v10;

  v22[8] = v10;

  v22[9] = 0;
  v22[10] = 0;

  v22[11] = 0;
  v22[12] = 0;

  v22[13] = sub_25A92BDB4(v10);
  v22[2] = 0xD000000000000012;
  v22[3] = 0x800000025AA68AC0;
  v23 = *(v22 + 5);
  v412[2] = *(v22 + 4);
  v412[3] = v23;
  v413 = v22[12];
  v24 = *(v22 + 2);
  v412[1] = *(v22 + 3);
  v412[0] = v24;
  v22[4] = &unk_286C0BDF8;
  v22[5] = v10;
  v22[6] = v10;
  v22[7] = v10;
  v22[8] = v20;
  *(v22 + 9) = 0u;
  *(v22 + 11) = 0u;
  sub_25A892B80(v412);
  swift_beginAccess();
  v22[13] = v21;

  v22[14] = sub_25A8DBD48;
  v22[15] = 0;
  *(v19 + 72) = v4;
  *(v19 + 48) = v22;
  v25 = sub_25A92BDB4(v19);
  swift_setDeallocating();
  sub_25A878194(v19 + 32, &qword_27FA048E8, &unk_25A9FD760);
  swift_deallocClassInstance();
  v26 = swift_allocObject();
  v26[4] = v10;
  v26[5] = v10;

  v26[6] = v10;

  v26[7] = v10;

  v26[8] = v10;

  v26[9] = 0;
  v26[10] = 0;

  v26[11] = 0;
  v26[12] = 0;

  v26[13] = sub_25A92BDB4(v10);
  v26[2] = 0x69746C756D2E706ELL;
  v26[3] = 0xEB00000000796C70;
  v27 = *(v26 + 5);
  v414[2] = *(v26 + 4);
  v414[3] = v27;
  v415 = v26[12];
  v28 = *(v26 + 2);
  v414[1] = *(v26 + 3);
  v414[0] = v28;
  v26[4] = &unk_286C0BDB8;
  v26[5] = v10;
  v26[6] = v10;
  v26[7] = v10;
  v26[8] = v10;
  *(v26 + 9) = 0u;
  *(v26 + 11) = 0u;
  sub_25A892B80(v414);
  swift_beginAccess();
  v26[13] = v25;

  v26[14] = sub_25A8DBD74;
  v26[15] = 0;
  *(v1 + 744) = v4;
  *(v1 + 720) = v26;
  *(v1 + 752) = 0x656469766964;
  *(v1 + 760) = 0xE600000000000000;
  v29 = sub_25A92BDB4(v10);
  v30 = swift_allocObject();
  v30[4] = v10;
  v30[5] = v10;

  v30[6] = v10;

  v30[7] = v10;

  v30[8] = v10;

  v30[9] = 0;
  v30[10] = 0;

  v30[11] = 0;
  v30[12] = 0;

  v30[13] = sub_25A92BDB4(v10);
  v30[2] = 0x64697669642E706ELL;
  v30[3] = 0xE900000000000065;
  v31 = *(v30 + 5);
  v416[2] = *(v30 + 4);
  v416[3] = v31;
  v417 = v30[12];
  v32 = *(v30 + 2);
  v416[1] = *(v30 + 3);
  v416[0] = v32;
  v30[4] = &unk_286C0BE38;
  v30[5] = v10;
  v30[6] = v10;
  v30[7] = v10;
  v30[8] = v10;
  *(v30 + 9) = 0u;
  *(v30 + 11) = 0u;
  sub_25A892B80(v416);
  swift_beginAccess();
  v30[13] = v29;

  v30[14] = sub_25A8DBDA0;
  v30[15] = 0;
  *(v1 + 792) = v4;
  *(v1 + 768) = v30;
  *(v1 + 800) = 0x65706168736572;
  *(v1 + 808) = 0xE700000000000000;
  v33 = sub_25A92BDB4(v10);
  v34 = swift_allocObject();
  v34[4] = v10;
  v34[5] = v10;

  v34[6] = v10;

  v34[7] = v10;

  v34[8] = v10;

  v34[9] = 0;
  v34[10] = 0;

  v34[11] = 0;
  v34[12] = 0;

  v34[13] = sub_25A92BDB4(v10);
  v34[2] = 0x61687365722E706ELL;
  v34[3] = 0xEA00000000006570;
  v35 = *(v34 + 5);
  v418[2] = *(v34 + 4);
  v418[3] = v35;
  v419 = v34[12];
  v36 = *(v34 + 2);
  v418[1] = *(v34 + 3);
  v418[0] = v36;
  v34[4] = &unk_286C0BE78;
  v34[5] = v10;
  v34[6] = v10;
  v34[7] = v10;
  v34[8] = v10;
  *(v34 + 9) = 0u;
  *(v34 + 11) = 0u;
  sub_25A892B80(v418);
  swift_beginAccess();
  v34[13] = v33;

  v34[14] = sub_25A8DBDCC;
  v34[15] = 0;
  *(v1 + 840) = v4;
  *(v1 + 816) = v34;
  *(v1 + 848) = 0x657571696E75;
  *(v1 + 856) = 0xE600000000000000;
  v37 = sub_25A92BDB4(v10);
  v38 = type metadata accessor for Function();
  v39 = swift_allocObject();
  v39[4] = v10;
  v39[5] = v10;

  v39[6] = v10;

  v39[7] = v10;

  v39[8] = v10;

  v39[9] = 0;
  v39[10] = 0;

  v39[11] = 0;
  v39[12] = 0;

  v39[13] = sub_25A92BDB4(v10);
  v39[2] = 0x7571696E752E706ELL;
  v39[3] = 0xE900000000000065;
  v40 = *(v39 + 5);
  v420[2] = *(v39 + 4);
  v420[3] = v40;
  v421 = v39[12];
  v41 = *(v39 + 2);
  v420[1] = *(v39 + 3);
  v420[0] = v41;
  v39[4] = &unk_286C0BEB8;
  v39[5] = v10;
  v39[6] = v10;
  v39[7] = v10;
  v39[8] = v10;
  *(v39 + 9) = 0u;
  *(v39 + 11) = 0u;
  sub_25A892B80(v420);
  swift_beginAccess();
  v39[13] = v37;

  v39[14] = sub_25A8DBDF8;
  v39[15] = 0;
  *(v1 + 888) = v38;
  *(v1 + 864) = v39;
  *(v1 + 896) = 0x6C61757165;
  *(v1 + 904) = 0xE500000000000000;
  v42 = sub_25A92BDB4(v10);
  v43 = swift_allocObject();
  v43[4] = v10;
  v43[5] = v10;

  v43[6] = v10;

  v43[7] = v10;

  v43[8] = v10;

  v43[9] = 0;
  v43[10] = 0;

  v43[11] = 0;
  v43[12] = 0;

  v43[13] = sub_25A92BDB4(v10);
  v43[2] = 0x6C617571652E706ELL;
  v44 = *(v43 + 5);
  v422[2] = *(v43 + 4);
  v422[3] = v44;
  v423 = v43[12];
  v45 = *(v43 + 2);
  v422[1] = *(v43 + 3);
  v422[0] = v45;
  v43[3] = 0xE800000000000000;
  v43[4] = &unk_286C0BEE8;
  v43[5] = v10;
  v43[6] = v10;
  v43[7] = v10;
  v43[8] = v10;
  *(v43 + 9) = 0u;
  *(v43 + 11) = 0u;
  sub_25A892B80(v422);
  swift_beginAccess();
  v43[13] = v42;

  v43[14] = sub_25A8DBE24;
  v43[15] = 0;
  *(v1 + 936) = v38;
  *(v1 + 912) = v43;
  *(v1 + 944) = 0x74726F73677261;
  *(v1 + 952) = 0xE700000000000000;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_25A9F8D90;
  v47 = MEMORY[0x277D83B88];
  *(v46 + 56) = MEMORY[0x277D83B88];
  *(v46 + 32) = -1;
  v48 = sub_25A92BDB4(v10);
  v49 = swift_allocObject();
  v49[4] = v10;
  v49[5] = v10;

  v49[6] = v10;

  v49[7] = v10;

  v49[8] = v10;

  v49[9] = 0;
  v49[10] = 0;

  v49[11] = 0;
  v49[12] = 0;

  v49[13] = sub_25A92BDB4(v10);
  v49[2] = 0x6F736772612E706ELL;
  v49[3] = 0xEA00000000007472;
  v50 = *(v49 + 5);
  v424[2] = *(v49 + 4);
  v424[3] = v50;
  v425 = v49[12];
  v51 = *(v49 + 2);
  v424[1] = *(v49 + 3);
  v424[0] = v51;
  v49[4] = &unk_286C0BF28;
  v49[5] = v10;
  v49[6] = v10;
  v49[7] = v10;
  v49[8] = v46;
  *(v49 + 9) = 0u;
  *(v49 + 11) = 0u;
  sub_25A892B80(v424);
  swift_beginAccess();
  v49[13] = v48;

  v49[14] = sub_25A8DBE50;
  v49[15] = 0;
  *(v1 + 984) = v38;
  *(v1 + 960) = v49;
  *(v1 + 992) = 1717987684;
  *(v1 + 1000) = 0xE400000000000000;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_25A9F9500;
  *(v52 + 32) = 1;
  *(v52 + 88) = v47;
  *(v52 + 56) = v47;
  *(v52 + 64) = -1;
  *(v52 + 96) = 0u;
  *(v52 + 112) = 0u;
  *(v52 + 128) = 0u;
  *(v52 + 144) = 0u;
  v53 = sub_25A92BDB4(v10);
  v54 = swift_allocObject();
  v54[4] = v10;
  v54[5] = v10;

  v54[6] = v10;

  v54[7] = v10;

  v54[8] = v10;

  v54[9] = 0;
  v54[10] = 0;

  v54[11] = 0;
  v54[12] = 0;

  v54[13] = sub_25A92BDB4(v10);
  v54[2] = 0x666669642E706ELL;
  v55 = *(v54 + 5);
  v426[2] = *(v54 + 4);
  v426[3] = v55;
  v427 = v54[12];
  v56 = *(v54 + 2);
  v426[1] = *(v54 + 3);
  v426[0] = v56;
  v54[3] = 0xE700000000000000;
  v54[4] = &unk_286C0BF68;
  v54[5] = v10;
  v54[6] = v10;
  v54[7] = v10;
  v54[8] = v52;
  *(v54 + 9) = 0u;
  *(v54 + 11) = 0u;
  sub_25A892B80(v426);
  swift_beginAccess();
  v54[13] = v53;

  v54[14] = sub_25A8DBE7C;
  v54[15] = 0;
  *(v1 + 1032) = v38;
  *(v1 + 1008) = v54;
  *(v1 + 1040) = 0x6572656877;
  *(v1 + 1048) = 0xE500000000000000;
  v57 = swift_allocObject();
  v57[1] = xmmword_25A9F8D80;
  v57[2] = 0u;
  v57[3] = 0u;
  v57[4] = 0u;
  v57[5] = 0u;
  v58 = sub_25A92BDB4(v10);
  v59 = swift_allocObject();
  v59[4] = v10;
  v59[5] = v10;

  v59[6] = v10;

  v59[7] = v10;

  v59[8] = v10;

  v59[9] = 0;
  v59[10] = 0;

  v59[11] = 0;
  v59[12] = 0;

  v59[13] = sub_25A92BDB4(v10);
  v59[2] = 0x65726568772E706ELL;
  v60 = *(v59 + 5);
  v428[2] = *(v59 + 4);
  v428[3] = v60;
  v429 = v59[12];
  v61 = *(v59 + 2);
  v428[1] = *(v59 + 3);
  v428[0] = v61;
  v59[3] = 0xE800000000000000;
  v59[4] = &unk_286C0BFD8;
  v59[5] = v10;
  v59[6] = v10;
  v59[7] = v10;
  v59[8] = v57;
  *(v59 + 9) = 0u;
  *(v59 + 11) = 0u;
  sub_25A892B80(v428);
  swift_beginAccess();
  v59[13] = v58;

  v59[14] = sub_25A8DBEA8;
  v59[15] = 0;
  *(v1 + 1080) = v38;
  *(v1 + 1056) = v59;
  *(v1 + 1088) = 0x6E657461636E6F63;
  *(v1 + 1096) = 0xEB00000000657461;
  v62 = swift_allocObject();
  v62[1] = xmmword_25A9F8D90;
  v62[2] = 0u;
  v62[3] = 0u;
  v63 = sub_25A92BDB4(v10);
  v64 = swift_allocObject();
  *(v64 + 32) = v10;
  *(v64 + 40) = v10;

  *(v64 + 48) = v10;

  *(v64 + 56) = v10;

  *(v64 + 64) = v10;

  *(v64 + 72) = 0;
  *(v64 + 80) = 0;

  *(v64 + 88) = 0;
  *(v64 + 96) = 0;

  *(v64 + 104) = sub_25A92BDB4(v10);
  strcpy((v64 + 16), "np.concatenate");
  *(v64 + 31) = -18;
  v65 = *(v64 + 80);
  v430[2] = *(v64 + 64);
  v430[3] = v65;
  v431 = *(v64 + 96);
  v66 = *(v64 + 32);
  v430[1] = *(v64 + 48);
  v430[0] = v66;
  *(v64 + 32) = &unk_286C0C028;
  *(v64 + 40) = v10;
  *(v64 + 48) = v10;
  *(v64 + 56) = v10;
  *(v64 + 64) = v62;
  *(v64 + 72) = 0u;
  *(v64 + 88) = 0u;
  sub_25A892B80(v430);
  swift_beginAccess();
  *(v64 + 104) = v63;

  *(v64 + 112) = sub_25A8DBED4;
  *(v64 + 120) = 0;
  *(v1 + 1128) = v38;
  *(v1 + 1104) = v64;
  *(v1 + 1136) = 0x6D75736D7563;
  *(v1 + 1144) = 0xE600000000000000;
  v67 = swift_allocObject();
  v67[1] = xmmword_25A9F8D90;
  v67[2] = 0u;
  v67[3] = 0u;
  v68 = sub_25A92BDB4(v10);
  v69 = swift_allocObject();
  v69[4] = v10;
  v69[5] = v10;

  v69[6] = v10;

  v69[7] = v10;

  v69[8] = v10;

  v69[9] = 0;
  v69[10] = 0;

  v69[11] = 0;
  v69[12] = 0;

  v69[13] = sub_25A92BDB4(v10);
  v69[2] = 0x75736D75632E706ELL;
  v69[3] = 0xE90000000000006DLL;
  v70 = *(v69 + 5);
  v432[2] = *(v69 + 4);
  v432[3] = v70;
  v433 = v69[12];
  v71 = *(v69 + 2);
  v432[1] = *(v69 + 3);
  v432[0] = v71;
  v69[4] = &unk_286C0C068;
  v69[5] = v10;
  v69[6] = v10;
  v69[7] = v10;
  v69[8] = v67;
  *(v69 + 9) = 0u;
  *(v69 + 11) = 0u;
  sub_25A892B80(v432);
  swift_beginAccess();
  v69[13] = v68;

  v69[14] = sub_25A8DBF00;
  v69[15] = 0;
  *(v1 + 1176) = v38;
  *(v1 + 1152) = v69;
  *(v1 + 1184) = 0x5F6C616369676F6CLL;
  *(v1 + 1192) = 0xEA0000000000726FLL;
  v72 = sub_25A92BDB4(v10);
  v73 = swift_allocObject();
  *(v73 + 32) = v10;
  *(v73 + 40) = v10;

  *(v73 + 48) = v10;

  *(v73 + 56) = v10;

  *(v73 + 64) = v10;

  *(v73 + 72) = 0;
  *(v73 + 80) = 0;

  *(v73 + 88) = 0;
  *(v73 + 96) = 0;

  *(v73 + 104) = sub_25A92BDB4(v10);
  strcpy((v73 + 16), "np.logical_or");
  *(v73 + 30) = -4864;
  v74 = *(v73 + 80);
  v434[2] = *(v73 + 64);
  v434[3] = v74;
  v435 = *(v73 + 96);
  v75 = *(v73 + 32);
  v434[1] = *(v73 + 48);
  v434[0] = v75;
  *(v73 + 32) = &unk_286C0C0A8;
  *(v73 + 40) = v10;
  *(v73 + 48) = v10;
  *(v73 + 56) = v10;
  *(v73 + 64) = v10;
  *(v73 + 72) = 0u;
  *(v73 + 88) = 0u;
  sub_25A892B80(v434);
  swift_beginAccess();
  *(v73 + 104) = v72;

  *(v73 + 112) = sub_25A8DBF2C;
  *(v73 + 120) = 0;
  *(v1 + 1224) = v38;
  *(v1 + 1200) = v73;
  *(v1 + 1232) = 0x6F72657A6E6F6ELL;
  *(v1 + 1240) = 0xE700000000000000;
  v76 = sub_25A92BDB4(v10);
  v77 = swift_allocObject();
  v77[4] = v10;
  v77[5] = v10;

  v77[6] = v10;

  v77[7] = v10;

  v77[8] = v10;

  v77[9] = 0;
  v77[10] = 0;

  v77[11] = 0;
  v77[12] = 0;

  v77[13] = sub_25A92BDB4(v10);
  v77[2] = 0x657A6E6F6E2E706ELL;
  v77[3] = 0xEA00000000006F72;
  v78 = *(v77 + 5);
  v436[2] = *(v77 + 4);
  v436[3] = v78;
  v437 = v77[12];
  v79 = *(v77 + 2);
  v436[1] = *(v77 + 3);
  v436[0] = v79;
  v77[4] = &unk_286C0C0E8;
  v77[5] = v10;
  v77[6] = v10;
  v77[7] = v10;
  v77[8] = v10;
  *(v77 + 9) = 0u;
  *(v77 + 11) = 0u;
  sub_25A892B80(v436);
  swift_beginAccess();
  v77[13] = v76;

  v77[14] = sub_25A8DBF58;
  v77[15] = 0;
  *(v1 + 1272) = v38;
  *(v1 + 1248) = v77;
  strcpy((v1 + 1280), "searchsorted");
  *(v1 + 1293) = 0;
  *(v1 + 1294) = -5120;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_25A9F8D90;
  *(v80 + 56) = MEMORY[0x277D837D0];
  *(v80 + 32) = 1952867692;
  *(v80 + 40) = 0xE400000000000000;
  v81 = sub_25A92BDB4(v10);
  v82 = swift_allocObject();
  v82[4] = v10;
  v82[5] = v10;

  v82[6] = v10;

  v82[7] = v10;

  v82[8] = v10;

  v82[9] = 0;
  v82[10] = 0;

  v82[11] = 0;
  v82[12] = 0;

  v82[13] = sub_25A92BDB4(v10);
  v82[2] = 0x63726165732E706ELL;
  v82[3] = 0xEF646574726F7368;
  v83 = *(v82 + 5);
  v438[2] = *(v82 + 4);
  v438[3] = v83;
  v439 = v82[12];
  v84 = *(v82 + 2);
  v438[1] = *(v82 + 3);
  v438[0] = v84;
  v82[4] = &unk_286C0C118;
  v82[5] = v10;
  v82[6] = v10;
  v82[7] = v10;
  v82[8] = v80;
  *(v82 + 9) = 0u;
  *(v82 + 11) = 0u;
  sub_25A892B80(v438);
  swift_beginAccess();
  v82[13] = v81;

  v82[14] = sub_25A8DBF84;
  v82[15] = 0;
  *(v1 + 1320) = v38;
  *(v1 + 1296) = v82;
  *(v1 + 1328) = 0x707265746E69;
  *(v1 + 1336) = 0xE600000000000000;
  v85 = sub_25A92BDB4(v10);
  v86 = swift_allocObject();
  v86[4] = v10;
  v86[5] = v10;

  v86[6] = v10;

  v86[7] = v10;

  v86[8] = v10;

  v86[9] = 0;
  v86[10] = 0;

  v86[11] = 0;
  v86[12] = 0;

  v86[13] = sub_25A92BDB4(v10);
  v86[2] = 0x7265746E692E706ELL;
  v86[3] = 0xE900000000000070;
  v87 = *(v86 + 5);
  v440[2] = *(v86 + 4);
  v440[3] = v87;
  v441 = v86[12];
  v88 = *(v86 + 2);
  v440[1] = *(v86 + 3);
  v440[0] = v88;
  v86[4] = &unk_286C0C168;
  v86[5] = v10;
  v86[6] = v10;
  v86[7] = v10;
  v86[8] = v10;
  *(v86 + 9) = 0u;
  *(v86 + 11) = 0u;
  sub_25A892B80(v440);
  swift_beginAccess();
  v86[13] = v85;

  v86[14] = sub_25A8DBFB0;
  v86[15] = 0;
  *(v1 + 1368) = v38;
  *(v1 + 1344) = v86;
  *(v1 + 1376) = 0x646E65707061;
  *(v1 + 1384) = 0xE600000000000000;
  v89 = swift_allocObject();
  v89[1] = xmmword_25A9F8D90;
  v89[2] = 0u;
  v89[3] = 0u;
  v90 = sub_25A92BDB4(v10);
  v91 = swift_allocObject();
  v91[4] = v10;
  v91[5] = v10;

  v91[6] = v10;

  v91[7] = v10;

  v91[8] = v10;

  v91[9] = 0;
  v91[10] = 0;

  v91[11] = 0;
  v91[12] = 0;

  v91[13] = sub_25A92BDB4(v10);
  v91[2] = 0x6E657070612E706ELL;
  v91[3] = 0xE900000000000064;
  v92 = *(v91 + 5);
  v442[2] = *(v91 + 4);
  v442[3] = v92;
  v443 = v91[12];
  v93 = *(v91 + 2);
  v442[1] = *(v91 + 3);
  v442[0] = v93;
  v91[4] = &unk_286C0C1B8;
  v91[5] = v10;
  v91[6] = v10;
  v91[7] = v10;
  v91[8] = v89;
  *(v91 + 9) = 0u;
  *(v91 + 11) = 0u;
  sub_25A892B80(v442);
  swift_beginAccess();
  v91[13] = v90;

  v91[14] = sub_25A8DBFDC;
  v91[15] = 0;
  *(v1 + 1416) = v38;
  *(v1 + 1392) = v91;
  *(v1 + 1424) = 7958113;
  *(v1 + 1432) = 0xE300000000000000;
  v94 = swift_allocObject();
  v94[1] = xmmword_25A9F8D90;
  v94[2] = 0u;
  v94[3] = 0u;
  v95 = sub_25A92BDB4(v10);
  v96 = swift_allocObject();
  v96[4] = v10;
  v96[5] = v10;

  v96[6] = v10;

  v96[7] = v10;

  v96[8] = v10;

  v96[9] = 0;
  v96[10] = 0;

  v96[11] = 0;
  v96[12] = 0;

  v96[13] = sub_25A92BDB4(v10);
  v96[2] = 0x796E612E706ELL;
  v96[3] = 0xE600000000000000;
  v97 = *(v96 + 5);
  v444[2] = *(v96 + 4);
  v444[3] = v97;
  v445 = v96[12];
  v98 = *(v96 + 2);
  v444[1] = *(v96 + 3);
  v444[0] = v98;
  v96[4] = &unk_286C0C208;
  v96[5] = v10;
  v96[6] = v10;
  v96[7] = v10;
  v96[8] = v94;
  *(v96 + 9) = 0u;
  *(v96 + 11) = 0u;
  sub_25A892B80(v444);
  swift_beginAccess();
  v96[13] = v95;

  v96[14] = sub_25A8DC008;
  v96[15] = 0;
  *(v1 + 1464) = v38;
  *(v1 + 1440) = v96;
  *(v1 + 1472) = 7105633;
  *(v1 + 1480) = 0xE300000000000000;
  v99 = swift_allocObject();
  v99[1] = xmmword_25A9F8D90;
  v99[2] = 0u;
  v99[3] = 0u;
  v100 = sub_25A92BDB4(v10);
  v101 = swift_allocObject();
  v101[4] = v10;
  v101[5] = v10;

  v101[6] = v10;

  v101[7] = v10;

  v101[8] = v10;

  v101[9] = 0;
  v101[10] = 0;

  v101[11] = 0;
  v101[12] = 0;

  v101[13] = sub_25A92BDB4(v10);
  v101[2] = 0x6C6C612E706ELL;
  v101[3] = 0xE600000000000000;
  v102 = *(v101 + 5);
  v446[2] = *(v101 + 4);
  v446[3] = v102;
  v447 = v101[12];
  v103 = *(v101 + 2);
  v446[1] = *(v101 + 3);
  v446[0] = v103;
  v101[4] = &unk_286C0C248;
  v101[5] = v10;
  v101[6] = v10;
  v101[7] = v10;
  v101[8] = v99;
  *(v101 + 9) = 0u;
  *(v101 + 11) = 0u;
  sub_25A892B80(v446);
  swift_beginAccess();
  v101[13] = v100;

  v101[14] = sub_25A8DC034;
  v101[15] = 0;
  *(v1 + 1512) = v38;
  *(v1 + 1488) = v101;
  *(v1 + 1520) = 0x65676E617261;
  *(v1 + 1528) = 0xE600000000000000;
  v104 = swift_allocObject();
  v104[1] = xmmword_25A9F9500;
  v104[2] = 0u;
  v104[3] = 0u;
  v104[4] = 0u;
  v104[5] = 0u;
  v104[6] = 0u;
  v104[7] = 0u;
  v104[8] = 0u;
  v104[9] = 0u;
  v105 = sub_25A92BDB4(v10);
  v106 = swift_allocObject();
  v106[4] = v10;
  v106[5] = v10;

  v106[6] = v10;

  v106[7] = v10;

  v106[8] = v10;

  v106[9] = 0;
  v106[10] = 0;

  v106[11] = 0;
  v106[12] = 0;

  v106[13] = sub_25A92BDB4(v10);
  v106[2] = 0x676E6172612E706ELL;
  v106[3] = 0xE900000000000065;
  v107 = *(v106 + 5);
  v448[2] = *(v106 + 4);
  v448[3] = v107;
  v449 = v106[12];
  v108 = *(v106 + 2);
  v448[1] = *(v106 + 3);
  v448[0] = v108;
  v106[4] = &unk_286C0C288;
  v106[5] = v10;
  v106[6] = v10;
  v106[7] = v10;
  v106[8] = v104;
  *(v106 + 9) = 0u;
  *(v106 + 11) = 0u;
  sub_25A892B80(v448);
  swift_beginAccess();
  v106[13] = v105;

  v106[14] = sub_25A8DC060;
  v106[15] = 0;
  *(v1 + 1560) = v38;
  *(v1 + 1536) = v106;
  *(v1 + 1568) = 7173491;
  *(v1 + 1576) = 0xE300000000000000;
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_25A9F8D80;
  *(v109 + 32) = 0u;
  *(v109 + 48) = 0u;
  *(v109 + 88) = MEMORY[0x277D839B0];
  *(v109 + 64) = 0;
  v110 = sub_25A92BDB4(v10);
  v111 = swift_allocObject();
  v111[4] = v10;
  v111[5] = v10;

  v111[6] = v10;

  v111[7] = v10;

  v111[8] = v10;

  v111[9] = 0;
  v111[10] = 0;

  v111[11] = 0;
  v111[12] = 0;

  v111[13] = sub_25A92BDB4(v10);
  v111[2] = 0x6D75732E706ELL;
  v111[3] = 0xE600000000000000;
  v112 = *(v111 + 5);
  v450[2] = *(v111 + 4);
  v450[3] = v112;
  v451 = v111[12];
  v113 = *(v111 + 2);
  v450[1] = *(v111 + 3);
  v450[0] = v113;
  v111[4] = &unk_286C0C2E8;
  v111[5] = v10;
  v111[6] = v10;
  v111[7] = v10;
  v111[8] = v109;
  *(v111 + 9) = 0u;
  *(v111 + 11) = 0u;
  sub_25A892B80(v450);
  swift_beginAccess();
  v111[13] = v110;

  v111[14] = sub_25A8DC08C;
  v111[15] = 0;
  *(v1 + 1608) = v38;
  *(v1 + 1584) = v111;
  *(v1 + 1616) = 0x736F72657ALL;
  *(v1 + 1624) = 0xE500000000000000;
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_25A9F8D90;
  v115 = MEMORY[0x277D837D0];
  *(v114 + 56) = MEMORY[0x277D837D0];
  *(v114 + 32) = 0x323374616F6C66;
  *(v114 + 40) = 0xE700000000000000;
  v116 = sub_25A92BDB4(v10);
  v117 = swift_allocObject();
  v117[4] = v10;
  v117[5] = v10;

  v117[6] = v10;

  v117[7] = v10;

  v117[8] = v10;

  v117[9] = 0;
  v117[10] = 0;

  v117[11] = 0;
  v117[12] = 0;

  v117[13] = sub_25A92BDB4(v10);
  v117[2] = 0x736F72657A2E706ELL;
  v117[3] = 0xE800000000000000;
  v118 = *(v117 + 5);
  v452[2] = *(v117 + 4);
  v452[3] = v118;
  v453 = v117[12];
  v119 = *(v117 + 2);
  v452[1] = *(v117 + 3);
  v452[0] = v119;
  v117[4] = &unk_286C0C338;
  v117[5] = v10;
  v117[6] = v10;
  v117[7] = v10;
  v117[8] = v114;
  *(v117 + 9) = 0u;
  *(v117 + 11) = 0u;
  sub_25A892B80(v452);
  swift_beginAccess();
  v117[13] = v116;

  v117[14] = sub_25A8DC0B8;
  v117[15] = 0;
  *(v1 + 1656) = v38;
  *(v1 + 1632) = v117;
  *(v1 + 1664) = 0x696C5F736F72657ALL;
  *(v1 + 1672) = 0xEA0000000000656BLL;
  v120 = sub_25A92BDB4(v10);
  v121 = swift_allocObject();
  *(v121 + 32) = v10;
  *(v121 + 40) = v10;

  *(v121 + 48) = v10;

  *(v121 + 56) = v10;

  *(v121 + 64) = v10;

  *(v121 + 72) = 0;
  *(v121 + 80) = 0;

  *(v121 + 88) = 0;
  *(v121 + 96) = 0;

  *(v121 + 104) = sub_25A92BDB4(v10);
  strcpy((v121 + 16), "np.zeros_like");
  *(v121 + 30) = -4864;
  v122 = *(v121 + 80);
  v454[2] = *(v121 + 64);
  v454[3] = v122;
  v455 = *(v121 + 96);
  v123 = *(v121 + 32);
  v454[1] = *(v121 + 48);
  v454[0] = v123;
  *(v121 + 32) = &unk_286C0C378;
  *(v121 + 40) = v10;
  *(v121 + 48) = v10;
  *(v121 + 56) = v10;
  *(v121 + 64) = v10;
  *(v121 + 72) = 0u;
  *(v121 + 88) = 0u;
  sub_25A892B80(v454);
  swift_beginAccess();
  *(v121 + 104) = v120;

  *(v121 + 112) = sub_25A8DC0E4;
  *(v121 + 120) = 0;
  *(v1 + 1704) = v38;
  *(v1 + 1680) = v121;
  *(v1 + 1712) = 1936027247;
  *(v1 + 1720) = 0xE400000000000000;
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_25A9F8D90;
  *(v124 + 56) = v115;
  *(v124 + 32) = 0x323374616F6C66;
  *(v124 + 40) = 0xE700000000000000;
  v125 = sub_25A92BDB4(v10);
  v126 = swift_allocObject();
  v126[4] = v10;
  v126[5] = v10;

  v126[6] = v10;

  v126[7] = v10;

  v126[8] = v10;

  v126[9] = 0;
  v126[10] = 0;

  v126[11] = 0;
  v126[12] = 0;

  v126[13] = sub_25A92BDB4(v10);
  v126[2] = 0x73656E6F2E706ELL;
  v126[3] = 0xE700000000000000;
  v127 = *(v126 + 5);
  v456[2] = *(v126 + 4);
  v456[3] = v127;
  v457 = v126[12];
  v128 = *(v126 + 2);
  v456[1] = *(v126 + 3);
  v456[0] = v128;
  v126[4] = &unk_286C0C3A8;
  v126[5] = v10;
  v126[6] = v10;
  v126[7] = v10;
  v126[8] = v124;
  *(v126 + 9) = 0u;
  *(v126 + 11) = 0u;
  sub_25A892B80(v456);
  swift_beginAccess();
  v126[13] = v125;

  v126[14] = sub_25A8DC110;
  v126[15] = 0;
  *(v1 + 1752) = v38;
  *(v1 + 1728) = v126;
  *(v1 + 1760) = 0x6B696C5F73656E6FLL;
  *(v1 + 1768) = 0xE900000000000065;
  v129 = sub_25A92BDB4(v10);
  v130 = swift_allocObject();
  *(v130 + 32) = v10;
  *(v130 + 40) = v10;

  *(v130 + 48) = v10;

  *(v130 + 56) = v10;

  *(v130 + 64) = v10;

  *(v130 + 72) = 0;
  *(v130 + 80) = 0;

  *(v130 + 88) = 0;
  *(v130 + 96) = 0;

  *(v130 + 104) = sub_25A92BDB4(v10);
  strcpy((v130 + 16), "np.ones_like");
  *(v130 + 29) = 0;
  *(v130 + 30) = -5120;
  v131 = *(v130 + 80);
  v458[2] = *(v130 + 64);
  v458[3] = v131;
  v459 = *(v130 + 96);
  v132 = *(v130 + 32);
  v458[1] = *(v130 + 48);
  v458[0] = v132;
  *(v130 + 32) = &unk_286C0C3E8;
  *(v130 + 40) = v10;
  *(v130 + 48) = v10;
  *(v130 + 56) = v10;
  *(v130 + 64) = v10;
  *(v130 + 72) = 0u;
  *(v130 + 88) = 0u;
  sub_25A892B80(v458);
  swift_beginAccess();
  *(v130 + 104) = v129;

  *(v130 + 112) = sub_25A8DC13C;
  *(v130 + 120) = 0;
  *(v1 + 1800) = v38;
  *(v1 + 1776) = v130;
  *(v1 + 1808) = 0x65636170736E696CLL;
  *(v1 + 1816) = 0xE800000000000000;
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_25A9F8D80;
  v134 = MEMORY[0x277D83B88];
  *(v133 + 56) = MEMORY[0x277D83B88];
  *(v133 + 32) = 50;
  *(v133 + 64) = 0u;
  *(v133 + 80) = 0u;
  v135 = sub_25A92BDB4(v10);
  v136 = swift_allocObject();
  v136[4] = v10;
  v136[5] = v10;

  v136[6] = v10;

  v136[7] = v10;

  v136[8] = v10;

  v136[9] = 0;
  v136[10] = 0;

  v136[11] = 0;
  v136[12] = 0;

  v136[13] = sub_25A92BDB4(v10);
  v136[2] = 0x70736E696C2E706ELL;
  v136[3] = 0xEB00000000656361;
  v137 = *(v136 + 5);
  v460[2] = *(v136 + 4);
  v460[3] = v137;
  v461 = v136[12];
  v138 = *(v136 + 2);
  v460[1] = *(v136 + 3);
  v460[0] = v138;
  v136[4] = &unk_286C0C418;
  v136[5] = v10;
  v136[6] = v10;
  v136[7] = v10;
  v136[8] = v133;
  *(v136 + 9) = 0u;
  *(v136 + 11) = 0u;
  sub_25A892B80(v460);
  swift_beginAccess();
  v136[13] = v135;

  v136[14] = sub_25A8DC168;
  v136[15] = 0;
  *(v1 + 1848) = v38;
  *(v1 + 1824) = v136;
  *(v1 + 1856) = 0x736F70736E617274;
  *(v1 + 1864) = 0xE900000000000065;
  v139 = swift_allocObject();
  v139[1] = xmmword_25A9F8D90;
  v139[2] = 0u;
  v139[3] = 0u;
  v140 = sub_25A92BDB4(v10);
  v141 = swift_allocObject();
  *(v141 + 32) = v10;
  *(v141 + 40) = v10;

  *(v141 + 48) = v10;

  *(v141 + 56) = v10;

  *(v141 + 64) = v10;

  *(v141 + 72) = 0;
  *(v141 + 80) = 0;

  *(v141 + 88) = 0;
  *(v141 + 96) = 0;

  *(v141 + 104) = sub_25A92BDB4(v10);
  strcpy((v141 + 16), "np.transpose");
  *(v141 + 29) = 0;
  *(v141 + 30) = -5120;
  v142 = *(v141 + 80);
  v462[2] = *(v141 + 64);
  v462[3] = v142;
  v463 = *(v141 + 96);
  v143 = *(v141 + 32);
  v462[1] = *(v141 + 48);
  v462[0] = v143;
  *(v141 + 32) = &unk_286C0C478;
  *(v141 + 40) = v10;
  *(v141 + 48) = v10;
  *(v141 + 56) = v10;
  *(v141 + 64) = v139;
  *(v141 + 72) = 0u;
  *(v141 + 88) = 0u;
  sub_25A892B80(v462);
  swift_beginAccess();
  *(v141 + 104) = v140;

  *(v141 + 112) = sub_25A8DC194;
  *(v141 + 120) = 0;
  *(v1 + 1896) = v38;
  *(v1 + 1872) = v141;
  *(v1 + 1904) = 0x6B63617473;
  *(v1 + 1912) = 0xE500000000000000;
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_25A9F8D90;
  *(v144 + 56) = v134;
  *(v144 + 32) = 0;
  v145 = sub_25A92BDB4(v10);
  v146 = swift_allocObject();
  v146[4] = v10;
  v146[5] = v10;

  v146[6] = v10;

  v146[7] = v10;

  v146[8] = v10;

  v146[9] = 0;
  v146[10] = 0;

  v146[11] = 0;
  v146[12] = 0;

  v146[13] = sub_25A92BDB4(v10);
  v146[2] = 0x6B636174732E706ELL;
  v147 = *(v146 + 5);
  v464[2] = *(v146 + 4);
  v464[3] = v147;
  v465 = v146[12];
  v148 = *(v146 + 2);
  v464[1] = *(v146 + 3);
  v464[0] = v148;
  v146[3] = 0xE800000000000000;
  v146[4] = &unk_286C0C4B8;
  v146[5] = v10;
  v146[6] = v10;
  v146[7] = v10;
  v146[8] = v144;
  *(v146 + 9) = 0u;
  *(v146 + 11) = 0u;
  sub_25A892B80(v464);
  swift_beginAccess();
  v146[13] = v145;

  v146[14] = sub_25A8DC1C0;
  v146[15] = 0;
  *(v1 + 1944) = v38;
  *(v1 + 1920) = v146;
  *(v1 + 1952) = 0x74696C7073;
  *(v1 + 1960) = 0xE500000000000000;
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_25A9F8D90;
  *(v149 + 56) = v134;
  *(v149 + 32) = 0;
  v150 = sub_25A92BDB4(v10);
  v151 = swift_allocObject();
  v151[4] = v10;
  v151[5] = v10;

  v151[6] = v10;

  v151[7] = v10;

  v151[8] = v10;

  v151[9] = 0;
  v151[10] = 0;

  v151[11] = 0;
  v151[12] = 0;

  v151[13] = sub_25A92BDB4(v10);
  v151[2] = 0x74696C70732E706ELL;
  v152 = *(v151 + 5);
  v466[2] = *(v151 + 4);
  v466[3] = v152;
  v467 = v151[12];
  v153 = *(v151 + 2);
  v466[1] = *(v151 + 3);
  v466[0] = v153;
  v151[3] = 0xE800000000000000;
  v151[4] = &unk_286C0C4F8;
  v151[5] = v10;
  v151[6] = v10;
  v151[7] = v10;
  v151[8] = v149;
  *(v151 + 9) = 0u;
  *(v151 + 11) = 0u;
  sub_25A892B80(v466);
  swift_beginAccess();
  v151[13] = v150;

  v151[14] = sub_25A8DC1EC;
  v151[15] = 0;
  *(v1 + 1992) = v38;
  *(v1 + 1968) = v151;
  *(v1 + 2000) = 0x7463617274627573;
  *(v1 + 2008) = 0xE800000000000000;
  v154 = sub_25A92BDB4(v10);
  v155 = swift_allocObject();
  v155[4] = v10;
  v155[5] = v10;

  v155[6] = v10;

  v155[7] = v10;

  v155[8] = v10;

  v155[9] = 0;
  v155[10] = 0;

  v155[11] = 0;
  v155[12] = 0;

  v155[13] = sub_25A92BDB4(v10);
  v155[2] = 0x72746275732E706ELL;
  v155[3] = 0xEB00000000746361;
  v156 = *(v155 + 5);
  v468[2] = *(v155 + 4);
  v468[3] = v156;
  v469 = v155[12];
  v157 = *(v155 + 2);
  v468[1] = *(v155 + 3);
  v468[0] = v157;
  v155[4] = &unk_286C0C548;
  v155[5] = v10;
  v155[6] = v10;
  v155[7] = v10;
  v155[8] = v10;
  *(v155 + 9) = 0u;
  *(v155 + 11) = 0u;
  sub_25A892B80(v468);
  swift_beginAccess();
  v155[13] = v154;

  v155[14] = sub_25A8DC218;
  v155[15] = 0;
  *(v1 + 2040) = v38;
  *(v1 + 2016) = v155;
  *(v1 + 2048) = 7370853;
  *(v1 + 2056) = 0xE300000000000000;
  v158 = sub_25A92BDB4(v10);
  v159 = swift_allocObject();
  v159[4] = v10;
  v159[5] = v10;

  v159[6] = v10;

  v159[7] = v10;

  v159[8] = v10;

  v159[9] = 0;
  v159[10] = 0;

  v159[11] = 0;
  v159[12] = 0;

  v159[13] = sub_25A92BDB4(v10);
  v159[2] = 0x7078652E706ELL;
  v159[3] = 0xE600000000000000;
  v160 = *(v159 + 5);
  v470[2] = *(v159 + 4);
  v470[3] = v160;
  v471 = v159[12];
  v161 = *(v159 + 2);
  v470[1] = *(v159 + 3);
  v470[0] = v161;
  v159[4] = &unk_286C0C588;
  v159[5] = v10;
  v159[6] = v10;
  v159[7] = v10;
  v159[8] = v10;
  *(v159 + 9) = 0u;
  *(v159 + 11) = 0u;
  sub_25A892B80(v470);
  swift_beginAccess();
  v159[13] = v158;

  v159[14] = sub_25A8DC244;
  v159[15] = 0;
  *(v1 + 2088) = v38;
  *(v1 + 2064) = v159;
  *(v1 + 2096) = 6778732;
  *(v1 + 2104) = 0xE300000000000000;
  v162 = sub_25A92BDB4(v10);
  v163 = swift_allocObject();
  v163[4] = v10;
  v163[5] = v10;

  v163[6] = v10;

  v163[7] = v10;

  v163[8] = v10;

  v163[9] = 0;
  v163[10] = 0;

  v163[11] = 0;
  v163[12] = 0;

  v163[13] = sub_25A92BDB4(v10);
  v163[2] = 0x676F6C2E706ELL;
  v163[3] = 0xE600000000000000;
  v164 = *(v163 + 5);
  v472[2] = *(v163 + 4);
  v472[3] = v164;
  v473 = v163[12];
  v165 = *(v163 + 2);
  v472[1] = *(v163 + 3);
  v472[0] = v165;
  v163[4] = &unk_286C0C5B8;
  v163[5] = v10;
  v163[6] = v10;
  v163[7] = v10;
  v163[8] = v10;
  *(v163 + 9) = 0u;
  *(v163 + 11) = 0u;
  sub_25A892B80(v472);
  swift_beginAccess();
  v163[13] = v162;

  v163[14] = sub_25A8DC270;
  v163[15] = 0;
  *(v1 + 2136) = v38;
  *(v1 + 2112) = v163;
  *(v1 + 2144) = 1953657203;
  *(v1 + 2152) = 0xE400000000000000;
  v166 = sub_25A92BDB4(v10);
  v167 = swift_allocObject();
  v167[4] = v10;
  v167[5] = v10;

  v167[6] = v10;

  v167[7] = v10;

  v167[8] = v10;

  v167[9] = 0;
  v167[10] = 0;

  v167[11] = 0;
  v167[12] = 0;

  v167[13] = sub_25A92BDB4(v10);
  v167[2] = 0x747271732E706ELL;
  v168 = *(v167 + 5);
  v474[2] = *(v167 + 4);
  v474[3] = v168;
  v475 = v167[12];
  v169 = *(v167 + 2);
  v474[1] = *(v167 + 3);
  v474[0] = v169;
  v167[3] = 0xE700000000000000;
  v167[4] = &unk_286C0C5E8;
  v167[5] = v10;
  v167[6] = v10;
  v167[7] = v10;
  v167[8] = v10;
  *(v167 + 9) = 0u;
  *(v167 + 11) = 0u;
  sub_25A892B80(v474);
  swift_beginAccess();
  v167[13] = v166;

  v167[14] = sub_25A8DC29C;
  v167[15] = 0;
  *(v1 + 2184) = v38;
  *(v1 + 2160) = v167;
  *(v1 + 2192) = 1851876717;
  *(v1 + 2200) = 0xE400000000000000;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_25A9F8D80;
  *(v170 + 32) = 0u;
  *(v170 + 48) = 0u;
  v171 = MEMORY[0x277D839B0];
  *(v170 + 88) = MEMORY[0x277D839B0];
  *(v170 + 64) = 0;
  v172 = sub_25A92BDB4(v10);
  v173 = swift_allocObject();
  v173[4] = v10;
  v173[5] = v10;

  v173[6] = v10;

  v173[7] = v10;

  v173[8] = v10;

  v173[9] = 0;
  v173[10] = 0;

  v173[11] = 0;
  v173[12] = 0;

  v173[13] = sub_25A92BDB4(v10);
  v173[2] = 0x6E61656D2E706ELL;
  v174 = *(v173 + 5);
  v476[2] = *(v173 + 4);
  v476[3] = v174;
  v477 = v173[12];
  v175 = *(v173 + 2);
  v476[1] = *(v173 + 3);
  v476[0] = v175;
  v173[3] = 0xE700000000000000;
  v173[4] = &unk_286C0C618;
  v173[5] = v10;
  v173[6] = v10;
  v173[7] = v10;
  v173[8] = v170;
  *(v173 + 9) = 0u;
  *(v173 + 11) = 0u;
  sub_25A892B80(v476);
  swift_beginAccess();
  v173[13] = v172;

  v173[14] = sub_25A8DC2C8;
  v173[15] = 0;
  *(v1 + 2232) = v38;
  *(v1 + 2208) = v173;
  *(v1 + 2240) = 1685025392;
  *(v1 + 2248) = 0xE400000000000000;
  v176 = swift_allocObject();
  *(v176 + 16) = xmmword_25A9F8D80;
  *(v176 + 32) = 0u;
  *(v176 + 48) = 0u;
  *(v176 + 88) = v171;
  *(v176 + 64) = 0;
  v177 = sub_25A92BDB4(v10);
  v178 = swift_allocObject();
  v178[4] = v10;
  v178[5] = v10;

  v178[6] = v10;

  v178[7] = v10;

  v178[8] = v10;

  v178[9] = 0;
  v178[10] = 0;

  v178[11] = 0;
  v178[12] = 0;

  v178[13] = sub_25A92BDB4(v10);
  v178[2] = 0x646F72702E706ELL;
  v179 = *(v178 + 5);
  v478[2] = *(v178 + 4);
  v478[3] = v179;
  v479 = v178[12];
  v180 = *(v178 + 2);
  v478[1] = *(v178 + 3);
  v478[0] = v180;
  v178[3] = 0xE700000000000000;
  v178[4] = &unk_286C0C668;
  v178[5] = v10;
  v178[6] = v10;
  v178[7] = v10;
  v178[8] = v176;
  *(v178 + 9) = 0u;
  *(v178 + 11) = 0u;
  sub_25A892B80(v478);
  swift_beginAccess();
  v178[13] = v177;

  v178[14] = sub_25A8DC2F4;
  v178[15] = 0;
  *(v1 + 2280) = v38;
  *(v1 + 2256) = v178;
  *(v1 + 2288) = 7235949;
  *(v1 + 2296) = 0xE300000000000000;
  v181 = swift_allocObject();
  *(v181 + 16) = xmmword_25A9F8D80;
  *(v181 + 32) = 0u;
  *(v181 + 48) = 0u;
  *(v181 + 88) = v171;
  *(v181 + 64) = 0;
  v182 = sub_25A92BDB4(v10);
  v183 = swift_allocObject();
  v183[4] = v10;
  v183[5] = v10;

  v183[6] = v10;

  v183[7] = v10;

  v183[8] = v10;

  v183[9] = 0;
  v183[10] = 0;

  v183[11] = 0;
  v183[12] = 0;

  v183[13] = sub_25A92BDB4(v10);
  v183[2] = 0x6E696D2E706ELL;
  v184 = *(v183 + 5);
  v480[2] = *(v183 + 4);
  v480[3] = v184;
  v481 = v183[12];
  v185 = *(v183 + 2);
  v480[1] = *(v183 + 3);
  v480[0] = v185;
  v183[3] = 0xE600000000000000;
  v183[4] = &unk_286C0C6B8;
  v183[5] = v10;
  v183[6] = v10;
  v183[7] = v10;
  v183[8] = v181;
  *(v183 + 9) = 0u;
  *(v183 + 11) = 0u;
  sub_25A892B80(v480);
  swift_beginAccess();
  v183[13] = v182;

  v183[14] = sub_25A8DC320;
  v183[15] = 0;
  *(v1 + 2328) = v38;
  *(v1 + 2304) = v183;
  *(v1 + 2336) = 7889261;
  *(v1 + 2344) = 0xE300000000000000;
  v186 = swift_allocObject();
  *(v186 + 16) = xmmword_25A9F8D80;
  *(v186 + 32) = 0u;
  *(v186 + 48) = 0u;
  *(v186 + 88) = v171;
  *(v186 + 64) = 0;
  v187 = sub_25A92BDB4(v10);
  v188 = swift_allocObject();
  v188[4] = v10;
  v188[5] = v10;

  v188[6] = v10;

  v188[7] = v10;

  v188[8] = v10;

  v188[9] = 0;
  v188[10] = 0;

  v188[11] = 0;
  v188[12] = 0;

  v188[13] = sub_25A92BDB4(v10);
  v188[2] = 0x78616D2E706ELL;
  v189 = *(v188 + 5);
  v482[2] = *(v188 + 4);
  v482[3] = v189;
  v483 = v188[12];
  v190 = *(v188 + 2);
  v482[1] = *(v188 + 3);
  v482[0] = v190;
  v188[3] = 0xE600000000000000;
  v188[4] = &unk_286C0C708;
  v188[5] = v10;
  v188[6] = v10;
  v188[7] = v10;
  v188[8] = v186;
  *(v188 + 9) = 0u;
  *(v188 + 11) = 0u;
  sub_25A892B80(v482);
  swift_beginAccess();
  v188[13] = v187;

  v188[14] = sub_25A8DC34C;
  v188[15] = 0;
  *(v1 + 2376) = v38;
  *(v1 + 2352) = v188;
  *(v1 + 2384) = 0x6E696D677261;
  *(v1 + 2392) = 0xE600000000000000;
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_25A9F8D80;
  *(v191 + 32) = 0u;
  *(v191 + 48) = 0u;
  v192 = MEMORY[0x277D839B0];
  *(v191 + 88) = MEMORY[0x277D839B0];
  *(v191 + 64) = 0;
  v193 = sub_25A92BDB4(v10);
  v194 = swift_allocObject();
  v194[4] = v10;
  v194[5] = v10;

  v194[6] = v10;

  v194[7] = v10;

  v194[8] = v10;

  v194[9] = 0;
  v194[10] = 0;

  v194[11] = 0;
  v194[12] = 0;

  v194[13] = sub_25A92BDB4(v10);
  v194[2] = 0x696D6772612E706ELL;
  v194[3] = 0xE90000000000006ELL;
  v195 = *(v194 + 5);
  v484[2] = *(v194 + 4);
  v484[3] = v195;
  v485 = v194[12];
  v196 = *(v194 + 2);
  v484[1] = *(v194 + 3);
  v484[0] = v196;
  v194[4] = &unk_286C0C758;
  v194[5] = v10;
  v194[6] = v10;
  v194[7] = v10;
  v194[8] = v191;
  *(v194 + 9) = 0u;
  *(v194 + 11) = 0u;
  sub_25A892B80(v484);
  swift_beginAccess();
  v194[13] = v193;

  v194[14] = sub_25A8DC378;
  v194[15] = 0;
  *(v1 + 2424) = v38;
  *(v1 + 2400) = v194;
  *(v1 + 2432) = 0x78616D677261;
  *(v1 + 2440) = 0xE600000000000000;
  v197 = swift_allocObject();
  *(v197 + 16) = xmmword_25A9F8D80;
  *(v197 + 32) = 0u;
  *(v197 + 48) = 0u;
  *(v197 + 88) = v192;
  *(v197 + 64) = 0;
  v198 = sub_25A92BDB4(v10);
  v199 = swift_allocObject();
  v199[4] = v10;
  v199[5] = v10;

  v199[6] = v10;

  v199[7] = v10;

  v199[8] = v10;

  v199[9] = 0;
  v199[10] = 0;

  v199[11] = 0;
  v199[12] = 0;

  v199[13] = sub_25A92BDB4(v10);
  v199[2] = 0x616D6772612E706ELL;
  v199[3] = 0xE900000000000078;
  v200 = *(v199 + 5);
  v486[2] = *(v199 + 4);
  v486[3] = v200;
  v487 = v199[12];
  v201 = *(v199 + 2);
  v486[1] = *(v199 + 3);
  v486[0] = v201;
  v199[4] = &unk_286C0C7A8;
  v199[5] = v10;
  v199[6] = v10;
  v199[7] = v10;
  v199[8] = v197;
  *(v199 + 9) = 0u;
  *(v199 + 11) = 0u;
  sub_25A892B80(v486);
  swift_beginAccess();
  v199[13] = v198;

  v199[14] = sub_25A8DC3A4;
  v199[15] = 0;
  *(v1 + 2472) = v38;
  *(v1 + 2448) = v199;
  *(v1 + 2480) = 1953656691;
  *(v1 + 2488) = 0xE400000000000000;
  v202 = swift_allocObject();
  *(v202 + 16) = xmmword_25A9F8D90;
  v203 = MEMORY[0x277D83B88];
  *(v202 + 56) = MEMORY[0x277D83B88];
  *(v202 + 32) = -1;
  v204 = sub_25A92BDB4(v10);
  v205 = swift_allocObject();
  v205[4] = v10;
  v205[5] = v10;

  v205[6] = v10;

  v205[7] = v10;

  v205[8] = v10;

  v205[9] = 0;
  v205[10] = 0;

  v205[11] = 0;
  v205[12] = 0;

  v205[13] = sub_25A92BDB4(v10);
  v205[2] = 0x74726F732E706ELL;
  v206 = *(v205 + 5);
  v488[2] = *(v205 + 4);
  v488[3] = v206;
  v489 = v205[12];
  v207 = *(v205 + 2);
  v488[1] = *(v205 + 3);
  v488[0] = v207;
  v205[3] = 0xE700000000000000;
  v205[4] = &unk_286C0C7F8;
  v205[5] = v10;
  v205[6] = v10;
  v205[7] = v10;
  v205[8] = v202;
  *(v205 + 9) = 0u;
  *(v205 + 11) = 0u;
  sub_25A892B80(v488);
  swift_beginAccess();
  v205[13] = v204;

  v205[14] = sub_25A8DC3D0;
  v205[15] = 0;
  *(v1 + 2520) = v38;
  *(v1 + 2496) = v205;
  *(v1 + 2528) = 0x6C756D74616DLL;
  *(v1 + 2536) = 0xE600000000000000;
  v208 = sub_25A92BDB4(v10);
  v209 = swift_allocObject();
  v209[4] = v10;
  v209[5] = v10;

  v209[6] = v10;

  v209[7] = v10;

  v209[8] = v10;

  v209[9] = 0;
  v209[10] = 0;

  v209[11] = 0;
  v209[12] = 0;

  v209[13] = sub_25A92BDB4(v10);
  v209[2] = 0x756D74616D2E706ELL;
  v209[3] = 0xE90000000000006CLL;
  v210 = *(v209 + 5);
  v490[2] = *(v209 + 4);
  v490[3] = v210;
  v491 = v209[12];
  v211 = *(v209 + 2);
  v490[1] = *(v209 + 3);
  v490[0] = v211;
  v209[4] = &unk_286C0C838;
  v209[5] = v10;
  v209[6] = v10;
  v209[7] = v10;
  v209[8] = v10;
  *(v209 + 9) = 0u;
  *(v209 + 11) = 0u;
  sub_25A892B80(v490);
  swift_beginAccess();
  v209[13] = v208;

  v209[14] = sub_25A8DC3FC;
  v209[15] = 0;
  *(v1 + 2568) = v38;
  *(v1 + 2544) = v209;
  *(v1 + 2576) = 6583411;
  *(v1 + 2584) = 0xE300000000000000;
  v212 = swift_allocObject();
  *(v212 + 16) = xmmword_25A9F8DB0;
  *(v212 + 32) = 0u;
  *(v212 + 48) = 0u;
  *(v212 + 64) = 0;
  *(v212 + 120) = v203;
  v213 = MEMORY[0x277D839B0];
  *(v212 + 88) = MEMORY[0x277D839B0];
  *(v212 + 96) = 0;
  v214 = sub_25A92BDB4(v10);
  v215 = swift_allocObject();
  v215[4] = v10;
  v215[5] = v10;

  v215[6] = v10;

  v215[7] = v10;

  v215[8] = v10;

  v215[9] = 0;
  v215[10] = 0;

  v215[11] = 0;
  v215[12] = 0;

  v215[13] = sub_25A92BDB4(v10);
  v215[2] = 0x6474732E706ELL;
  v216 = *(v215 + 5);
  v492[2] = *(v215 + 4);
  v492[3] = v216;
  v493 = v215[12];
  v217 = *(v215 + 2);
  v492[1] = *(v215 + 3);
  v492[0] = v217;
  v215[3] = 0xE600000000000000;
  v215[4] = &unk_286C0C878;
  v215[5] = v10;
  v215[6] = v10;
  v215[7] = v10;
  v215[8] = v212;
  *(v215 + 9) = 0u;
  *(v215 + 11) = 0u;
  sub_25A892B80(v492);
  swift_beginAccess();
  v215[13] = v214;

  v215[14] = sub_25A8DC428;
  v215[15] = 0;
  *(v1 + 2616) = v38;
  *(v1 + 2592) = v215;
  *(v1 + 2624) = 7496054;
  *(v1 + 2632) = 0xE300000000000000;
  v218 = swift_allocObject();
  *(v218 + 16) = xmmword_25A9F8DB0;
  *(v218 + 32) = 0u;
  *(v218 + 48) = 0u;
  *(v218 + 64) = 0;
  *(v218 + 120) = v203;
  *(v218 + 88) = v213;
  *(v218 + 96) = 0;
  v219 = v213;
  v220 = sub_25A92BDB4(v10);
  v221 = swift_allocObject();
  v221[4] = v10;
  v221[5] = v10;

  v221[6] = v10;

  v221[7] = v10;

  v221[8] = v10;

  v221[9] = 0;
  v221[10] = 0;

  v221[11] = 0;
  v221[12] = 0;

  v221[13] = sub_25A92BDB4(v10);
  v221[2] = 0x7261762E706ELL;
  v222 = *(v221 + 5);
  v494[2] = *(v221 + 4);
  v494[3] = v222;
  v495 = v221[12];
  v223 = *(v221 + 2);
  v494[1] = *(v221 + 3);
  v494[0] = v223;
  v221[3] = 0xE600000000000000;
  v221[4] = &unk_286C0C8D8;
  v221[5] = v10;
  v221[6] = v10;
  v221[7] = v10;
  v221[8] = v218;
  *(v221 + 9) = 0u;
  *(v221 + 11) = 0u;
  sub_25A892B80(v494);
  swift_beginAccess();
  v221[13] = v220;

  v221[14] = sub_25A8DC454;
  v221[15] = 0;
  *(v1 + 2664) = v38;
  *(v1 + 2640) = v221;
  strcpy((v1 + 2672), "floor_divide");
  *(v1 + 2685) = 0;
  *(v1 + 2686) = -5120;
  v224 = sub_25A92BDB4(v10);
  v225 = swift_allocObject();
  v225[4] = v10;
  v225[5] = v10;

  v225[6] = v10;

  v225[7] = v10;

  v225[8] = v10;

  v225[9] = 0;
  v225[10] = 0;

  v225[11] = 0;
  v225[12] = 0;

  v225[13] = sub_25A92BDB4(v10);
  v225[2] = 0x726F6F6C662E706ELL;
  v225[3] = 0xEF6564697669645FLL;
  v226 = *(v225 + 5);
  v496[2] = *(v225 + 4);
  v496[3] = v226;
  v497 = v225[12];
  v227 = *(v225 + 2);
  v496[1] = *(v225 + 3);
  v496[0] = v227;
  v225[4] = &unk_286C0C938;
  v225[5] = v10;
  v225[6] = v10;
  v225[7] = v10;
  v225[8] = v10;
  *(v225 + 9) = 0u;
  *(v225 + 11) = 0u;
  sub_25A892B80(v496);
  swift_beginAccess();
  v225[13] = v224;

  v225[14] = sub_25A8DC480;
  v225[15] = 0;
  *(v1 + 2712) = v38;
  *(v1 + 2688) = v225;
  *(v1 + 2720) = 0x65736F6C636C6C61;
  *(v1 + 2728) = 0xE800000000000000;
  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_25A9F8DB0;
  v229 = MEMORY[0x277D839F8];
  *(v228 + 32) = 0x3EE4F8B588E368F1;
  *(v228 + 88) = v229;
  *(v228 + 56) = v229;
  *(v228 + 64) = 0x3E45798EE2308C3ALL;
  *(v228 + 120) = v219;
  *(v228 + 96) = 0;
  v230 = sub_25A92BDB4(v10);
  v231 = swift_allocObject();
  v231[4] = v10;
  v231[5] = v10;

  v231[6] = v10;

  v231[7] = v10;

  v231[8] = v10;

  v231[9] = 0;
  v231[10] = 0;

  v231[11] = 0;
  v231[12] = 0;

  v231[13] = sub_25A92BDB4(v10);
  v231[2] = 0x6C636C6C612E706ELL;
  v231[3] = 0xEB0000000065736FLL;
  v232 = *(v231 + 5);
  v498[2] = *(v231 + 4);
  v498[3] = v232;
  v499 = v231[12];
  v233 = *(v231 + 2);
  v498[1] = *(v231 + 3);
  v498[0] = v233;
  v231[4] = &unk_286C0C978;
  v231[5] = v10;
  v231[6] = v10;
  v231[7] = v10;
  v231[8] = v228;
  *(v231 + 9) = 0u;
  *(v231 + 11) = 0u;
  sub_25A892B80(v498);
  swift_beginAccess();
  v231[13] = v230;

  v231[14] = sub_25A8DC4AC;
  v231[15] = 0;
  *(v1 + 2760) = v38;
  *(v1 + 2736) = v231;
  *(v1 + 2768) = 0x6574756C6F736261;
  *(v1 + 2776) = 0xE800000000000000;
  v234 = sub_25A92BDB4(v10);
  v235 = swift_allocObject();
  v235[4] = v10;
  v235[5] = v10;

  v235[6] = v10;

  v235[7] = v10;

  v235[8] = v10;

  v235[9] = 0;
  v235[10] = 0;

  v235[11] = 0;
  v235[12] = 0;

  v235[13] = sub_25A92BDB4(v10);
  v235[2] = 0x6C6F7362612E706ELL;
  v235[3] = 0xEB00000000657475;
  v236 = *(v235 + 5);
  v500[2] = *(v235 + 4);
  v500[3] = v236;
  v501 = v235[12];
  v237 = *(v235 + 2);
  v500[1] = *(v235 + 3);
  v500[0] = v237;
  v235[4] = &unk_286C0C9E8;
  v235[5] = v10;
  v235[6] = v10;
  v235[7] = v10;
  v235[8] = v10;
  *(v235 + 9) = 0u;
  *(v235 + 11) = 0u;
  sub_25A892B80(v500);
  swift_beginAccess();
  v235[13] = v234;

  v235[14] = sub_25A8DC4D8;
  v235[15] = 0;
  *(v1 + 2808) = v38;
  *(v1 + 2784) = v235;
  *(v1 + 2816) = 0x71655F7961727261;
  *(v1 + 2824) = 0xEB000000006C6175;
  v238 = swift_allocObject();
  *(v238 + 16) = xmmword_25A9F8D90;
  *(v238 + 56) = MEMORY[0x277D839B0];
  *(v238 + 32) = 0;
  v239 = sub_25A92BDB4(v10);
  v240 = swift_allocObject();
  *(v240 + 32) = v10;
  *(v240 + 40) = v10;

  *(v240 + 48) = v10;

  *(v240 + 56) = v10;

  *(v240 + 64) = v10;

  *(v240 + 72) = 0;
  *(v240 + 80) = 0;

  *(v240 + 88) = 0;
  *(v240 + 96) = 0;

  *(v240 + 104) = sub_25A92BDB4(v10);
  strcpy((v240 + 16), "np.array_equal");
  *(v240 + 31) = -18;
  v241 = *(v240 + 80);
  v502[2] = *(v240 + 64);
  v502[3] = v241;
  v503 = *(v240 + 96);
  v242 = *(v240 + 32);
  v502[1] = *(v240 + 48);
  v502[0] = v242;
  *(v240 + 32) = &unk_286C0CA18;
  *(v240 + 40) = v10;
  *(v240 + 48) = v10;
  *(v240 + 56) = v10;
  *(v240 + 64) = v238;
  *(v240 + 72) = 0u;
  *(v240 + 88) = 0u;
  sub_25A892B80(v502);
  swift_beginAccess();
  *(v240 + 104) = v239;

  *(v240 + 112) = sub_25A8DC504;
  *(v240 + 120) = 0;
  *(v1 + 2856) = v38;
  *(v1 + 2832) = v240;
  *(v1 + 2864) = 0x72657461657267;
  *(v1 + 2872) = 0xE700000000000000;
  v243 = sub_25A92BDB4(v10);
  v244 = swift_allocObject();
  v244[4] = v10;
  v244[5] = v10;

  v244[6] = v10;

  v244[7] = v10;

  v244[8] = v10;

  v244[9] = 0;
  v244[10] = 0;

  v244[11] = 0;
  v244[12] = 0;

  v244[13] = sub_25A92BDB4(v10);
  v244[2] = 0x74616572672E706ELL;
  v244[3] = 0xEA00000000007265;
  v245 = *(v244 + 5);
  v504[2] = *(v244 + 4);
  v504[3] = v245;
  v505 = v244[12];
  v246 = *(v244 + 2);
  v504[1] = *(v244 + 3);
  v504[0] = v246;
  v244[4] = &unk_286C0CA68;
  v244[5] = v10;
  v244[6] = v10;
  v244[7] = v10;
  v244[8] = v10;
  *(v244 + 9) = 0u;
  *(v244 + 11) = 0u;
  sub_25A892B80(v504);
  swift_beginAccess();
  v244[13] = v243;

  v244[14] = sub_25A8DC530;
  v244[15] = 0;
  *(v1 + 2904) = v38;
  *(v1 + 2880) = v244;
  strcpy((v1 + 2912), "greater_equal");
  *(v1 + 2926) = -4864;
  v247 = sub_25A92BDB4(v10);
  v248 = swift_allocObject();
  v248[4] = v10;
  v248[5] = v10;

  v248[6] = v10;

  v248[7] = v10;

  v248[8] = v10;

  v248[9] = 0;
  v248[10] = 0;

  v248[11] = 0;
  v248[12] = 0;

  v248[13] = sub_25A92BDB4(v10);
  v248[2] = 0xD000000000000010;
  v248[3] = 0x800000025AA68AE0;
  v249 = *(v248 + 5);
  v506[2] = *(v248 + 4);
  v506[3] = v249;
  v507 = v248[12];
  v250 = *(v248 + 2);
  v506[1] = *(v248 + 3);
  v506[0] = v250;
  v248[4] = &unk_286C0CAA8;
  v248[5] = v10;
  v248[6] = v10;
  v248[7] = v10;
  v248[8] = v10;
  *(v248 + 9) = 0u;
  *(v248 + 11) = 0u;
  sub_25A892B80(v506);
  swift_beginAccess();
  v248[13] = v247;

  v248[14] = sub_25A8DC55C;
  v248[15] = 0;
  *(v1 + 2952) = v38;
  *(v1 + 2928) = v248;
  *(v1 + 2960) = 1936942444;
  *(v1 + 2968) = 0xE400000000000000;
  v251 = sub_25A92BDB4(v10);
  v252 = swift_allocObject();
  v252[4] = v10;
  v252[5] = v10;

  v252[6] = v10;

  v252[7] = v10;

  v252[8] = v10;

  v252[9] = 0;
  v252[10] = 0;

  v252[11] = 0;
  v252[12] = 0;

  v252[13] = sub_25A92BDB4(v10);
  v252[2] = 0x7373656C2E706ELL;
  v252[3] = 0xE700000000000000;
  v253 = *(v252 + 5);
  v508[2] = *(v252 + 4);
  v508[3] = v253;
  v509 = v252[12];
  v254 = *(v252 + 2);
  v508[1] = *(v252 + 3);
  v508[0] = v254;
  v252[4] = &unk_286C0CAE8;
  v252[5] = v10;
  v252[6] = v10;
  v252[7] = v10;
  v252[8] = v10;
  *(v252 + 9) = 0u;
  *(v252 + 11) = 0u;
  sub_25A892B80(v508);
  swift_beginAccess();
  v252[13] = v251;

  v252[14] = sub_25A8DC588;
  v252[15] = 0;
  *(v1 + 3000) = v38;
  *(v1 + 2976) = v252;
  *(v1 + 3008) = 0x7571655F7373656CLL;
  *(v1 + 3016) = 0xEA00000000006C61;
  v255 = sub_25A92BDB4(v10);
  v256 = swift_allocObject();
  *(v256 + 32) = v10;
  *(v256 + 40) = v10;

  *(v256 + 48) = v10;

  *(v256 + 56) = v10;

  *(v256 + 64) = v10;

  *(v256 + 72) = 0;
  *(v256 + 80) = 0;

  *(v256 + 88) = 0;
  *(v256 + 96) = 0;

  *(v256 + 104) = sub_25A92BDB4(v10);
  strcpy((v256 + 16), "np.less_equal");
  *(v256 + 30) = -4864;
  v257 = *(v256 + 80);
  v510[2] = *(v256 + 64);
  v510[3] = v257;
  v511 = *(v256 + 96);
  v258 = *(v256 + 32);
  v510[1] = *(v256 + 48);
  v510[0] = v258;
  *(v256 + 32) = &unk_286C0CB28;
  *(v256 + 40) = v10;
  *(v256 + 48) = v10;
  *(v256 + 56) = v10;
  *(v256 + 64) = v10;
  *(v256 + 72) = 0u;
  *(v256 + 88) = 0u;
  sub_25A892B80(v510);
  swift_beginAccess();
  *(v256 + 104) = v255;

  *(v256 + 112) = sub_25A8DC5B4;
  *(v256 + 120) = 0;
  *(v1 + 3048) = v38;
  *(v1 + 3024) = v256;
  *(v1 + 3056) = 0x617571655F746F6ELL;
  *(v1 + 3064) = 0xE90000000000006CLL;
  v259 = sub_25A92BDB4(v10);
  v260 = swift_allocObject();
  *(v260 + 32) = v10;
  *(v260 + 40) = v10;

  *(v260 + 48) = v10;

  *(v260 + 56) = v10;

  *(v260 + 64) = v10;

  *(v260 + 72) = 0;
  *(v260 + 80) = 0;

  *(v260 + 88) = 0;
  *(v260 + 96) = 0;

  *(v260 + 104) = sub_25A92BDB4(v10);
  strcpy((v260 + 16), "np.not_equal");
  *(v260 + 29) = 0;
  *(v260 + 30) = -5120;
  v261 = *(v260 + 80);
  v512[2] = *(v260 + 64);
  v512[3] = v261;
  v513 = *(v260 + 96);
  v262 = *(v260 + 32);
  v512[1] = *(v260 + 48);
  v512[0] = v262;
  *(v260 + 32) = &unk_286C0CB68;
  *(v260 + 40) = v10;
  *(v260 + 48) = v10;
  *(v260 + 56) = v10;
  *(v260 + 64) = v10;
  *(v260 + 72) = 0u;
  *(v260 + 88) = 0u;
  sub_25A892B80(v512);
  swift_beginAccess();
  *(v260 + 104) = v259;

  *(v260 + 112) = sub_25A8DC5E0;
  *(v260 + 120) = 0;
  *(v1 + 3096) = v38;
  *(v1 + 3072) = v260;
  *(v1 + 3104) = 0x6E616E7369;
  *(v1 + 3112) = 0xE500000000000000;
  v263 = sub_25A92BDB4(v10);
  v264 = swift_allocObject();
  v264[4] = v10;
  v264[5] = v10;

  v264[6] = v10;

  v264[7] = v10;

  v264[8] = v10;

  v264[9] = 0;
  v264[10] = 0;

  v264[11] = 0;
  v264[12] = 0;

  v264[13] = sub_25A92BDB4(v10);
  v264[2] = 0x6E616E73692E706ELL;
  v264[3] = 0xE800000000000000;
  v265 = *(v264 + 5);
  v514[2] = *(v264 + 4);
  v514[3] = v265;
  v515 = v264[12];
  v266 = *(v264 + 2);
  v514[1] = *(v264 + 3);
  v514[0] = v266;
  v264[4] = &unk_286C0CBA8;
  v264[5] = v10;
  v264[6] = v10;
  v264[7] = v10;
  v264[8] = v10;
  *(v264 + 9) = 0u;
  *(v264 + 11) = 0u;
  sub_25A892B80(v514);
  swift_beginAccess();
  v264[13] = v263;

  v264[14] = sub_25A8DC60C;
  v264[15] = 0;
  *(v1 + 3144) = v38;
  *(v1 + 3120) = v264;
  *(v1 + 3152) = 0x6D756D6978616DLL;
  *(v1 + 3160) = 0xE700000000000000;
  v267 = swift_allocObject();
  *(v267 + 16) = xmmword_25A9F8D90;
  *(v267 + 32) = 0x616C756D75636361;
  *(v267 + 40) = 0xEA00000000006574;
  v268 = swift_allocObject();
  *(v268 + 16) = xmmword_25A9F8D90;
  *(v268 + 56) = MEMORY[0x277D83B88];
  *(v268 + 32) = 0;
  v269 = sub_25A92BDB4(v10);
  v270 = swift_allocObject();
  v270[4] = v10;
  v270[5] = v10;

  v270[6] = v10;

  v270[7] = v10;

  v270[8] = v10;

  v270[9] = 0;
  v270[10] = 0;

  v270[11] = 0;
  v270[12] = 0;

  v270[13] = sub_25A92BDB4(v10);
  v270[2] = 0xD000000000000015;
  v270[3] = 0x800000025AA68B00;
  v271 = *(v270 + 5);
  v516[2] = *(v270 + 4);
  v516[3] = v271;
  v517 = v270[12];
  v272 = *(v270 + 2);
  v516[1] = *(v270 + 3);
  v516[0] = v272;
  v270[4] = &unk_286C0CC18;
  v270[5] = v10;
  v270[6] = v10;
  v270[7] = v10;
  v270[8] = v268;
  *(v270 + 9) = 0u;
  *(v270 + 11) = 0u;
  sub_25A892B80(v516);
  swift_beginAccess();
  v270[13] = v269;

  v270[14] = sub_25A8DC638;
  v270[15] = 0;
  *(v267 + 72) = v38;
  *(v267 + 48) = v270;
  v273 = sub_25A92BDB4(v267);
  swift_setDeallocating();
  sub_25A878194(v267 + 32, &qword_27FA048E8, &unk_25A9FD760);
  swift_deallocClassInstance();
  v274 = swift_allocObject();
  v274[4] = v10;
  v274[5] = v10;

  v274[6] = v10;

  v274[7] = v10;

  v274[8] = v10;

  v274[9] = 0;
  v274[10] = 0;

  v274[11] = 0;
  v274[12] = 0;

  v274[13] = sub_25A92BDB4(v10);
  v274[2] = 0x6D6978616D2E706ELL;
  v274[3] = 0xEA00000000006D75;
  v275 = *(v274 + 5);
  v518[2] = *(v274 + 4);
  v518[3] = v275;
  v519 = v274[12];
  v276 = *(v274 + 2);
  v518[1] = *(v274 + 3);
  v518[0] = v276;
  v274[4] = &unk_286C0CBD8;
  v274[5] = v10;
  v274[6] = v10;
  v274[7] = v10;
  v274[8] = v10;
  *(v274 + 9) = 0u;
  *(v274 + 11) = 0u;
  sub_25A892B80(v518);
  swift_beginAccess();
  v274[13] = v273;

  v274[14] = sub_25A8DC664;
  v274[15] = 0;
  *(v1 + 3192) = v38;
  *(v1 + 3168) = v274;
  *(v1 + 3200) = 0x6D756D696E696DLL;
  *(v1 + 3208) = 0xE700000000000000;
  v277 = sub_25A92BDB4(v10);
  v278 = swift_allocObject();
  v278[4] = v10;
  v278[5] = v10;

  v278[6] = v10;

  v278[7] = v10;

  v278[8] = v10;

  v278[9] = 0;
  v278[10] = 0;

  v278[11] = 0;
  v278[12] = 0;

  v278[13] = sub_25A92BDB4(v10);
  v278[2] = 0x6D696E696D2E706ELL;
  v278[3] = 0xEA00000000006D75;
  v279 = *(v278 + 5);
  v520[2] = *(v278 + 4);
  v520[3] = v279;
  v521 = v278[12];
  v280 = *(v278 + 2);
  v520[1] = *(v278 + 3);
  v520[0] = v280;
  v278[4] = &unk_286C0CC58;
  v278[5] = v10;
  v278[6] = v10;
  v278[7] = v10;
  v278[8] = v10;
  *(v278 + 9) = 0u;
  *(v278 + 11) = 0u;
  sub_25A892B80(v520);
  swift_beginAccess();
  v278[13] = v277;

  v278[14] = sub_25A8DC690;
  v278[15] = 0;
  *(v1 + 3240) = v38;
  *(v1 + 3216) = v278;
  *(v1 + 3248) = 0x657669746167656ELL;
  *(v1 + 3256) = 0xE800000000000000;
  v281 = sub_25A92BDB4(v10);
  v282 = swift_allocObject();
  v282[4] = v10;
  v282[5] = v10;

  v282[6] = v10;

  v282[7] = v10;

  v282[8] = v10;

  v282[9] = 0;
  v282[10] = 0;

  v282[11] = 0;
  v282[12] = 0;

  v282[13] = sub_25A92BDB4(v10);
  v282[2] = 0x746167656E2E706ELL;
  v282[3] = 0xEB00000000657669;
  v283 = *(v282 + 5);
  v522[2] = *(v282 + 4);
  v522[3] = v283;
  v523 = v282[12];
  v284 = *(v282 + 2);
  v522[1] = *(v282 + 3);
  v522[0] = v284;
  v282[4] = &unk_286C0CC98;
  v282[5] = v10;
  v282[6] = v10;
  v282[7] = v10;
  v282[8] = v10;
  *(v282 + 9) = 0u;
  *(v282 + 11) = 0u;
  sub_25A892B80(v522);
  swift_beginAccess();
  v282[13] = v281;

  v282[14] = sub_25A8DC6BC;
  v282[15] = 0;
  *(v1 + 3288) = v38;
  *(v1 + 3264) = v282;
  *(v1 + 3296) = 1701536116;
  *(v1 + 3304) = 0xE400000000000000;
  v285 = swift_allocObject();
  v285[1] = xmmword_25A9F8D90;
  v285[2] = 0u;
  v285[3] = 0u;
  v286 = sub_25A92BDB4(v10);
  v287 = swift_allocObject();
  v287[4] = v10;
  v287[5] = v10;

  v287[6] = v10;

  v287[7] = v10;

  v287[8] = v10;

  v287[9] = 0;
  v287[10] = 0;

  v287[11] = 0;
  v287[12] = 0;

  v287[13] = sub_25A92BDB4(v10);
  v287[2] = 0x656B61742E706ELL;
  v287[3] = 0xE700000000000000;
  v288 = *(v287 + 5);
  v524[2] = *(v287 + 4);
  v524[3] = v288;
  v525 = v287[12];
  v289 = *(v287 + 2);
  v524[1] = *(v287 + 3);
  v524[0] = v289;
  v287[4] = &unk_286C0CCC8;
  v287[5] = v10;
  v287[6] = v10;
  v287[7] = v10;
  v287[8] = v285;
  *(v287 + 9) = 0u;
  *(v287 + 11) = 0u;
  sub_25A892B80(v524);
  swift_beginAccess();
  v287[13] = v286;

  v287[14] = sub_25A8DC6E8;
  v287[15] = 0;
  *(v1 + 3336) = v38;
  *(v1 + 3312) = v287;
  *(v1 + 3344) = 0x6F6C615F656B6174;
  *(v1 + 3352) = 0xEF736978615F676ELL;
  v290 = swift_allocObject();
  v290[1] = xmmword_25A9F8D90;
  v290[2] = 0u;
  v290[3] = 0u;
  v291 = sub_25A92BDB4(v10);
  v292 = swift_allocObject();
  v292[4] = v10;
  v292[5] = v10;

  v292[6] = v10;

  v292[7] = v10;

  v292[8] = v10;

  v292[9] = 0;
  v292[10] = 0;

  v292[11] = 0;
  v292[12] = 0;

  v292[13] = sub_25A92BDB4(v10);
  v292[2] = 0xD000000000000012;
  v292[3] = 0x800000025AA68B20;
  v293 = *(v292 + 5);
  v526[2] = *(v292 + 4);
  v526[3] = v293;
  v527 = v292[12];
  v294 = *(v292 + 2);
  v526[1] = *(v292 + 3);
  v526[0] = v294;
  v292[4] = &unk_286C0CD18;
  v292[5] = v10;
  v292[6] = v10;
  v292[7] = v10;
  v292[8] = v290;
  *(v292 + 9) = 0u;
  *(v292 + 11) = 0u;
  sub_25A892B80(v526);
  swift_beginAccess();
  v292[13] = v291;

  v292[14] = sub_25A8DC714;
  v292[15] = 0;
  *(v1 + 3384) = v38;
  *(v1 + 3360) = v292;
  *(v1 + 3392) = 0x657A6565757173;
  *(v1 + 3400) = 0xE700000000000000;
  v295 = swift_allocObject();
  v295[1] = xmmword_25A9F8D90;
  v295[2] = 0u;
  v295[3] = 0u;
  v296 = sub_25A92BDB4(v10);
  v297 = swift_allocObject();
  v297[4] = v10;
  v297[5] = v10;

  v297[6] = v10;

  v297[7] = v10;

  v297[8] = v10;

  v297[9] = 0;
  v297[10] = 0;

  v297[11] = 0;
  v297[12] = 0;

  v297[13] = sub_25A92BDB4(v10);
  v297[2] = 0x65657571732E706ELL;
  v297[3] = 0xEA0000000000657ALL;
  v298 = *(v297 + 5);
  v528[2] = *(v297 + 4);
  v528[3] = v298;
  v529 = v297[12];
  v299 = *(v297 + 2);
  v528[1] = *(v297 + 3);
  v528[0] = v299;
  v297[4] = &unk_286C0CD68;
  v297[5] = v10;
  v297[6] = v10;
  v297[7] = v10;
  v297[8] = v295;
  *(v297 + 9) = 0u;
  *(v297 + 11) = 0u;
  sub_25A892B80(v528);
  swift_beginAccess();
  v297[13] = v296;

  v297[14] = sub_25A8DC740;
  v297[15] = 0;
  *(v1 + 3432) = v38;
  *(v1 + 3408) = v297;
  *(v1 + 3440) = 0x746165706572;
  *(v1 + 3448) = 0xE600000000000000;
  v300 = swift_allocObject();
  v300[1] = xmmword_25A9F8D90;
  v300[2] = 0u;
  v300[3] = 0u;
  v301 = sub_25A92BDB4(v10);
  v302 = swift_allocObject();
  v302[4] = v10;
  v302[5] = v10;

  v302[6] = v10;

  v302[7] = v10;

  v302[8] = v10;

  v302[9] = 0;
  v302[10] = 0;

  v302[11] = 0;
  v302[12] = 0;

  v302[13] = sub_25A92BDB4(v10);
  v302[2] = 0x61657065722E706ELL;
  v302[3] = 0xE900000000000074;
  v303 = *(v302 + 5);
  v530[2] = *(v302 + 4);
  v530[3] = v303;
  v531 = v302[12];
  v304 = *(v302 + 2);
  v530[1] = *(v302 + 3);
  v530[0] = v304;
  v302[4] = &unk_286C0CDA8;
  v302[5] = v10;
  v302[6] = v10;
  v302[7] = v10;
  v302[8] = v300;
  *(v302 + 9) = 0u;
  *(v302 + 11) = 0u;
  sub_25A892B80(v530);
  swift_beginAccess();
  v302[13] = v301;

  v302[14] = sub_25A8DC76C;
  v302[15] = 0;
  *(v1 + 3480) = v38;
  *(v1 + 3456) = v302;
  *(v1 + 3488) = 1819047270;
  *(v1 + 3496) = 0xE400000000000000;
  v305 = sub_25A92BDB4(v10);
  v306 = swift_allocObject();
  v306[4] = v10;
  v306[5] = v10;

  v306[6] = v10;

  v306[7] = v10;

  v306[8] = v10;

  v306[9] = 0;
  v306[10] = 0;

  v306[11] = 0;
  v306[12] = 0;

  v306[13] = sub_25A92BDB4(v10);
  v306[2] = 0x6C6C75662E706ELL;
  v306[3] = 0xE700000000000000;
  v307 = *(v306 + 5);
  v532[2] = *(v306 + 4);
  v532[3] = v307;
  v533 = v306[12];
  v308 = *(v306 + 2);
  v532[1] = *(v306 + 3);
  v532[0] = v308;
  v306[4] = &unk_286C0CDF8;
  v306[5] = v10;
  v306[6] = v10;
  v306[7] = v10;
  v306[8] = v10;
  *(v306 + 9) = 0u;
  *(v306 + 11) = 0u;
  sub_25A892B80(v532);
  swift_beginAccess();
  v306[13] = v305;

  v306[14] = sub_25A8DC798;
  v306[15] = 0;
  *(v1 + 3528) = v38;
  *(v1 + 3504) = v306;
  *(v1 + 3536) = 0x6B696C5F6C6C7566;
  *(v1 + 3544) = 0xE900000000000065;
  v309 = sub_25A92BDB4(v10);
  v310 = swift_allocObject();
  *(v310 + 32) = v10;
  *(v310 + 40) = v10;

  *(v310 + 48) = v10;

  *(v310 + 56) = v10;

  *(v310 + 64) = v10;

  *(v310 + 72) = 0;
  *(v310 + 80) = 0;

  *(v310 + 88) = 0;
  *(v310 + 96) = 0;

  *(v310 + 104) = sub_25A92BDB4(v10);
  strcpy((v310 + 16), "np.full_like");
  *(v310 + 29) = 0;
  *(v310 + 30) = -5120;
  v311 = *(v310 + 80);
  v534[2] = *(v310 + 64);
  v534[3] = v311;
  v535 = *(v310 + 96);
  v312 = *(v310 + 32);
  v534[1] = *(v310 + 48);
  v534[0] = v312;
  *(v310 + 32) = &unk_286C0CE38;
  *(v310 + 40) = v10;
  *(v310 + 48) = v10;
  *(v310 + 56) = v10;
  *(v310 + 64) = v10;
  *(v310 + 72) = 0u;
  *(v310 + 88) = 0u;
  sub_25A892B80(v534);
  swift_beginAccess();
  *(v310 + 104) = v309;

  *(v310 + 112) = sub_25A8DC7C4;
  *(v310 + 120) = 0;
  *(v1 + 3576) = v38;
  *(v1 + 3552) = v310;
  *(v1 + 3584) = 1885957219;
  *(v1 + 3592) = 0xE400000000000000;
  v313 = swift_allocObject();
  v313[1] = xmmword_25A9F8D80;
  v313[2] = 0u;
  v313[3] = 0u;
  v313[4] = 0u;
  v313[5] = 0u;
  v314 = sub_25A92BDB4(v10);
  v315 = swift_allocObject();
  v315[4] = v10;
  v315[5] = v10;

  v315[6] = v10;

  v315[7] = v10;

  v315[8] = v10;

  v315[9] = 0;
  v315[10] = 0;

  v315[11] = 0;
  v315[12] = 0;

  v315[13] = sub_25A92BDB4(v10);
  v315[2] = 0x70696C632E706ELL;
  v315[3] = 0xE700000000000000;
  v316 = *(v315 + 5);
  v536[2] = *(v315 + 4);
  v536[3] = v316;
  v537 = v315[12];
  v317 = *(v315 + 2);
  v536[1] = *(v315 + 3);
  v536[0] = v317;
  v315[4] = &unk_286C0CE78;
  v315[5] = v10;
  v315[6] = v10;
  v315[7] = v10;
  v315[8] = v313;
  *(v315 + 9) = 0u;
  *(v315 + 11) = 0u;
  sub_25A892B80(v536);
  swift_beginAccess();
  v315[13] = v314;

  v315[14] = sub_25A8DC7F0;
  v315[15] = 0;
  *(v1 + 3624) = v38;
  *(v1 + 3600) = v315;
  *(v1 + 3632) = 1818846563;
  *(v1 + 3640) = 0xE400000000000000;
  v318 = sub_25A92BDB4(v10);
  v319 = swift_allocObject();
  v319[4] = v10;
  v319[5] = v10;

  v319[6] = v10;

  v319[7] = v10;

  v319[8] = v10;

  v319[9] = 0;
  v319[10] = 0;

  v319[11] = 0;
  v319[12] = 0;

  v319[13] = sub_25A92BDB4(v10);
  v319[2] = 0x6C6965632E706ELL;
  v319[3] = 0xE700000000000000;
  v320 = *(v319 + 5);
  v538[2] = *(v319 + 4);
  v538[3] = v320;
  v539 = v319[12];
  v321 = *(v319 + 2);
  v538[1] = *(v319 + 3);
  v538[0] = v321;
  v319[4] = &unk_286C0CEC8;
  v319[5] = v10;
  v319[6] = v10;
  v319[7] = v10;
  v319[8] = v10;
  *(v319 + 9) = 0u;
  *(v319 + 11) = 0u;
  sub_25A892B80(v538);
  swift_beginAccess();
  v319[13] = v318;

  v319[14] = sub_25A8DC81C;
  v319[15] = 0;
  *(v1 + 3672) = v38;
  *(v1 + 3648) = v319;
  *(v1 + 3680) = 0x726F6F6C66;
  *(v1 + 3688) = 0xE500000000000000;
  v322 = sub_25A92BDB4(v10);
  v323 = swift_allocObject();
  v323[4] = v10;
  v323[5] = v10;

  v323[6] = v10;

  v323[7] = v10;

  v323[8] = v10;

  v323[9] = 0;
  v323[10] = 0;

  v323[11] = 0;
  v323[12] = 0;

  v323[13] = sub_25A92BDB4(v10);
  v323[2] = 0x726F6F6C662E706ELL;
  v323[3] = 0xE800000000000000;
  v324 = *(v323 + 5);
  v540[2] = *(v323 + 4);
  v540[3] = v324;
  v541 = v323[12];
  v325 = *(v323 + 2);
  v540[1] = *(v323 + 3);
  v540[0] = v325;
  v323[4] = &unk_286C0CEF8;
  v323[5] = v10;
  v323[6] = v10;
  v323[7] = v10;
  v323[8] = v10;
  *(v323 + 9) = 0u;
  *(v323 + 11) = 0u;
  sub_25A892B80(v540);
  swift_beginAccess();
  v323[13] = v322;

  v323[14] = sub_25A8DC848;
  v323[15] = 0;
  *(v1 + 3720) = v38;
  *(v1 + 3696) = v323;
  *(v1 + 3728) = 0x646E756F72;
  *(v1 + 3736) = 0xE500000000000000;
  v326 = swift_allocObject();
  *(v326 + 16) = xmmword_25A9F8D90;
  *(v326 + 56) = MEMORY[0x277D83B88];
  *(v326 + 32) = 0;
  v327 = sub_25A92BDB4(v10);
  v328 = swift_allocObject();
  v328[4] = v10;
  v328[5] = v10;

  v328[6] = v10;

  v328[7] = v10;

  v328[8] = v10;

  v328[9] = 0;
  v328[10] = 0;

  v328[11] = 0;
  v328[12] = 0;

  v328[13] = sub_25A92BDB4(v10);
  v328[2] = 0x646E756F722E706ELL;
  v328[3] = 0xE800000000000000;
  v329 = *(v328 + 5);
  v542[2] = *(v328 + 4);
  v542[3] = v329;
  v543 = v328[12];
  v330 = *(v328 + 2);
  v542[1] = *(v328 + 3);
  v542[0] = v330;
  v328[4] = &unk_286C0CF28;
  v328[5] = v10;
  v328[6] = v10;
  v328[7] = v10;
  v328[8] = v326;
  *(v328 + 9) = 0u;
  *(v328 + 11) = 0u;
  sub_25A892B80(v542);
  swift_beginAccess();
  v328[13] = v327;

  v328[14] = sub_25A8DC874;
  v328[15] = 0;
  *(v1 + 3768) = v38;
  *(v1 + 3744) = v328;
  strcpy((v1 + 3776), "broadcast_to");
  *(v1 + 3789) = 0;
  *(v1 + 3790) = -5120;
  v331 = sub_25A92BDB4(v10);
  v332 = swift_allocObject();
  v332[4] = v10;
  v332[5] = v10;

  v332[6] = v10;

  v332[7] = v10;

  v332[8] = v10;

  v332[9] = 0;
  v332[10] = 0;

  v332[11] = 0;
  v332[12] = 0;

  v332[13] = sub_25A92BDB4(v10);
  v332[2] = 0x64616F72622E706ELL;
  v332[3] = 0xEF6F745F74736163;
  v333 = *(v332 + 5);
  v544[2] = *(v332 + 4);
  v544[3] = v333;
  v545 = v332[12];
  v334 = *(v332 + 2);
  v544[1] = *(v332 + 3);
  v544[0] = v334;
  v332[4] = &unk_286C0CF68;
  v332[5] = v10;
  v332[6] = v10;
  v332[7] = v10;
  v332[8] = v10;
  *(v332 + 9) = 0u;
  *(v332 + 11) = 0u;
  sub_25A892B80(v544);
  swift_beginAccess();
  v332[13] = v331;

  v332[14] = sub_25A8DC8A0;
  v332[15] = 0;
  *(v1 + 3816) = v38;
  *(v1 + 3792) = v332;
  *(v1 + 3824) = 0x6E5F6F745F6E616ELL;
  *(v1 + 3832) = 0xEA00000000006D75;
  v335 = swift_allocObject();
  *(v335 + 16) = xmmword_25A9F8DB0;
  *(v335 + 56) = MEMORY[0x277D83A90];
  *(v335 + 32) = 0;
  *(v335 + 64) = 0u;
  *(v335 + 80) = 0u;
  *(v335 + 96) = 0u;
  *(v335 + 112) = 0u;
  v336 = sub_25A92BDB4(v10);
  v337 = swift_allocObject();
  *(v337 + 32) = v10;
  *(v337 + 40) = v10;

  *(v337 + 48) = v10;

  *(v337 + 56) = v10;

  *(v337 + 64) = v10;

  *(v337 + 72) = 0;
  *(v337 + 80) = 0;

  *(v337 + 88) = 0;
  *(v337 + 96) = 0;

  *(v337 + 104) = sub_25A92BDB4(v10);
  strcpy((v337 + 16), "np.nan_to_num");
  *(v337 + 30) = -4864;
  v338 = *(v337 + 80);
  v546[2] = *(v337 + 64);
  v546[3] = v338;
  v547 = *(v337 + 96);
  v339 = *(v337 + 32);
  v546[1] = *(v337 + 48);
  v546[0] = v339;
  *(v337 + 32) = &unk_286C0CFA8;
  *(v337 + 40) = v10;
  *(v337 + 48) = v10;
  *(v337 + 56) = v10;
  *(v337 + 64) = v335;
  *(v337 + 72) = 0u;
  *(v337 + 88) = 0u;
  sub_25A892B80(v546);
  swift_beginAccess();
  *(v337 + 104) = v336;

  *(v337 + 112) = sub_25A8DC8CC;
  *(v337 + 120) = 0;
  *(v1 + 3864) = v38;
  *(v1 + 3840) = v337;
  *(v1 + 3872) = 0x6D6F646E6172;
  *(v1 + 3880) = 0xE600000000000000;
  v340 = swift_allocObject();
  *(v340 + 16) = xmmword_25A9F9510;
  *(v340 + 32) = 0x746E69646E6172;
  *(v340 + 40) = 0xE700000000000000;
  v341 = swift_allocObject();
  *(v341 + 16) = xmmword_25A9F8D80;
  *(v341 + 32) = 0u;
  *(v341 + 48) = 0u;
  *(v341 + 88) = MEMORY[0x277D837D0];
  *(v341 + 64) = 0x3436746E69;
  *(v341 + 72) = 0xE500000000000000;
  v342 = sub_25A92BDB4(v10);
  v343 = swift_allocObject();
  v343[4] = v10;
  v343[5] = v10;

  v343[6] = v10;

  v343[7] = v10;

  v343[8] = v10;

  v343[9] = 0;
  v343[10] = 0;

  v343[11] = 0;
  v343[12] = 0;

  v343[13] = sub_25A92BDB4(v10);
  v343[2] = 0xD000000000000011;
  v343[3] = 0x800000025AA68B40;
  v344 = *(v343 + 5);
  v548[2] = *(v343 + 4);
  v548[3] = v344;
  v549 = v343[12];
  v345 = *(v343 + 2);
  v548[1] = *(v343 + 3);
  v548[0] = v345;
  v343[4] = &unk_286C0D008;
  v343[5] = v10;
  v343[6] = v10;
  v343[7] = v10;
  v343[8] = v341;
  *(v343 + 9) = 0u;
  *(v343 + 11) = 0u;
  sub_25A892B80(v548);
  swift_beginAccess();
  v343[13] = v342;

  v343[14] = sub_25A8DC8F8;
  v343[15] = 0;
  *(v340 + 48) = v343;
  *(v340 + 72) = v38;
  *(v340 + 80) = 0x6D6F646E6172;
  *(v340 + 88) = 0xE600000000000000;
  v346 = swift_allocObject();
  v346[1] = xmmword_25A9F8D90;
  v346[2] = 0u;
  v346[3] = 0u;
  v347 = sub_25A92BDB4(v10);
  v348 = swift_allocObject();
  v348[4] = v10;
  v348[5] = v10;

  v348[6] = v10;

  v348[7] = v10;

  v348[8] = v10;

  v348[9] = 0;
  v348[10] = 0;

  v348[11] = 0;
  v348[12] = 0;

  v348[13] = sub_25A92BDB4(v10);
  v348[2] = 0xD000000000000010;
  v348[3] = 0x800000025AA68B60;
  v349 = *(v348 + 5);
  v550[2] = *(v348 + 4);
  v550[3] = v349;
  v551 = v348[12];
  v350 = *(v348 + 2);
  v550[1] = *(v348 + 3);
  v550[0] = v350;
  v348[4] = &unk_286C0D068;
  v348[5] = v10;
  v348[6] = v10;
  v348[7] = v10;
  v348[8] = v346;
  *(v348 + 9) = 0u;
  *(v348 + 11) = 0u;
  sub_25A892B80(v550);
  swift_beginAccess();
  v348[13] = v347;

  v348[14] = sub_25A8DC924;
  v348[15] = 0;
  *(v340 + 96) = v348;
  *(v340 + 120) = v38;
  *(v340 + 128) = 1684955506;
  *(v340 + 136) = 0xE400000000000000;
  v351 = sub_25A92BDB4(v10);
  v352 = swift_allocObject();
  *(v352 + 32) = v10;
  *(v352 + 40) = v10;

  *(v352 + 48) = v10;

  *(v352 + 56) = v10;

  *(v352 + 64) = v10;

  *(v352 + 72) = 0;
  *(v352 + 80) = 0;

  *(v352 + 88) = 0;
  *(v352 + 96) = 0;

  *(v352 + 104) = sub_25A92BDB4(v10);
  strcpy((v352 + 16), "np.random.rand");
  *(v352 + 31) = -18;
  v353 = *(v352 + 80);
  v552[2] = *(v352 + 64);
  v552[3] = v353;
  v553 = *(v352 + 96);
  v354 = *(v352 + 32);
  v552[1] = *(v352 + 48);
  v552[0] = v354;
  *(v352 + 32) = v10;
  *(v352 + 40) = v10;
  *(v352 + 48) = v10;
  *(v352 + 56) = v10;
  *(v352 + 64) = v10;
  *(v352 + 72) = xmmword_25A9F9520;
  *(v352 + 88) = 0;
  *(v352 + 96) = 0;
  sub_25A892B80(v552);
  swift_beginAccess();
  *(v352 + 104) = v351;

  *(v352 + 112) = sub_25A8DC950;
  *(v352 + 120) = 0;
  *(v340 + 144) = v352;
  *(v340 + 168) = v38;
  *(v340 + 176) = 0x6E646E6172;
  *(v340 + 184) = 0xE500000000000000;
  v355 = sub_25A92BDB4(v10);
  v356 = swift_allocObject();
  v356[4] = v10;
  v356[5] = v10;

  v356[6] = v10;

  v356[7] = v10;

  v356[8] = v10;

  v356[9] = 0;
  v356[10] = 0;

  v356[11] = 0;
  v356[12] = 0;

  v356[13] = sub_25A92BDB4(v10);
  v356[2] = 0x6F646E61722E706ELL;
  v356[3] = 0xEF6E646E61722E6DLL;
  v357 = *(v356 + 5);
  v554[2] = *(v356 + 4);
  v554[3] = v357;
  v555 = v356[12];
  v358 = *(v356 + 2);
  v554[1] = *(v356 + 3);
  v554[0] = v358;
  v356[4] = v10;
  v356[5] = v10;
  v356[6] = v10;
  v356[7] = v10;
  v356[8] = v10;
  *(v356 + 9) = xmmword_25A9F9520;
  v356[11] = 0;
  v356[12] = 0;
  sub_25A892B80(v554);
  swift_beginAccess();
  v356[13] = v355;

  v356[14] = sub_25A8DC97C;
  v356[15] = 0;
  *(v340 + 192) = v356;
  *(v340 + 216) = v38;
  *(v340 + 224) = 0x6563696F6863;
  *(v340 + 232) = 0xE600000000000000;
  v359 = swift_allocObject();
  *(v359 + 16) = xmmword_25A9F8DB0;
  *(v359 + 32) = 0u;
  *(v359 + 48) = 0u;
  *(v359 + 88) = MEMORY[0x277D839B0];
  *(v359 + 64) = 1;
  *(v359 + 96) = 0u;
  *(v359 + 112) = 0u;
  v360 = sub_25A92BDB4(v10);
  v361 = swift_allocObject();
  v361[4] = v10;
  v361[5] = v10;

  v361[6] = v10;

  v361[7] = v10;

  v361[8] = v10;

  v361[9] = 0;
  v361[10] = 0;

  v361[11] = 0;
  v361[12] = 0;

  v361[13] = sub_25A92BDB4(v10);
  v361[2] = 0xD000000000000010;
  v361[3] = 0x800000025AA68B80;
  v362 = *(v361 + 5);
  v556[2] = *(v361 + 4);
  v556[3] = v362;
  v557 = v361[12];
  v363 = *(v361 + 2);
  v556[1] = *(v361 + 3);
  v556[0] = v363;
  v361[4] = &unk_286C0D098;
  v361[5] = v10;
  v361[6] = v10;
  v361[7] = v10;
  v361[8] = v359;
  *(v361 + 9) = 0u;
  *(v361 + 11) = 0u;
  sub_25A892B80(v556);
  swift_beginAccess();
  v361[13] = v360;

  v361[14] = sub_25A8DC9A8;
  v361[15] = 0;
  *(v340 + 264) = v38;
  *(v340 + 240) = v361;
  v364 = sub_25A92BDB4(v340);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048E8, &unk_25A9FD760);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v365 = swift_allocObject();
  v365[4] = v10;
  v365[5] = v10;

  v365[6] = v10;

  v365[7] = v10;

  v365[8] = v10;

  v365[9] = 0;
  v365[10] = 0;

  v365[11] = 0;
  v365[12] = 0;

  v365[13] = sub_25A92BDB4(v10);
  v365[2] = 0x6F646E61722E706ELL;
  v366 = *(v365 + 5);
  v558[2] = *(v365 + 4);
  v558[3] = v366;
  v559 = v365[12];
  v367 = *(v365 + 2);
  v558[1] = *(v365 + 3);
  v558[0] = v367;
  v365[3] = 0xE90000000000006DLL;
  v365[4] = v10;
  v365[5] = v10;
  v365[6] = v10;
  v365[7] = v10;
  v365[8] = v10;
  *(v365 + 9) = 0u;
  *(v365 + 11) = 0u;
  sub_25A892B80(v558);
  swift_beginAccess();
  v365[13] = v364;

  v368 = swift_allocObject();
  swift_weakInit();
  v365[14] = sub_25A8DF24C;
  v365[15] = v368;
  swift_beginAccess();
  swift_weakAssign();
  *(v1 + 3912) = v38;
  *(v1 + 3888) = v365;
  *(v1 + 3920) = 0x6B6361747368;
  *(v1 + 3928) = 0xE600000000000000;
  v369 = sub_25A92BDB4(v10);
  v370 = swift_allocObject();
  v370[4] = v10;
  v370[5] = v10;

  v370[6] = v10;

  v370[7] = v10;

  v370[8] = v10;

  v370[9] = 0;
  v370[10] = 0;

  v370[11] = 0;
  v370[12] = 0;

  v370[13] = sub_25A92BDB4(v10);
  v370[2] = 0x63617473682E706ELL;
  v370[3] = 0xE90000000000006BLL;
  v371 = *(v370 + 5);
  v560[2] = *(v370 + 4);
  v560[3] = v371;
  v561 = v370[12];
  v372 = *(v370 + 2);
  v560[1] = *(v370 + 3);
  v560[0] = v372;
  v370[4] = &unk_286C0D0F8;
  v370[5] = v10;
  v370[6] = v10;
  v370[7] = v10;
  v370[8] = v10;
  *(v370 + 9) = 0u;
  *(v370 + 11) = 0u;
  sub_25A892B80(v560);
  swift_beginAccess();
  v370[13] = v369;

  v370[14] = sub_25A8DC9D4;
  v370[15] = 0;
  *(v1 + 3960) = v38;
  *(v1 + 3936) = v370;
  *(v1 + 3968) = 0x5F6C616369676F6CLL;
  *(v1 + 3976) = 0xEB00000000746F6ELL;
  v373 = sub_25A92BDB4(v10);
  v374 = swift_allocObject();
  *(v374 + 32) = v10;
  *(v374 + 40) = v10;

  *(v374 + 48) = v10;

  *(v374 + 56) = v10;

  *(v374 + 64) = v10;

  *(v374 + 72) = 0;
  *(v374 + 80) = 0;

  *(v374 + 88) = 0;
  *(v374 + 96) = 0;

  *(v374 + 104) = sub_25A92BDB4(v10);
  strcpy((v374 + 16), "np.logical_not");
  *(v374 + 31) = -18;
  v375 = *(v374 + 80);
  v562[2] = *(v374 + 64);
  v562[3] = v375;
  v563 = *(v374 + 96);
  v376 = *(v374 + 32);
  v562[1] = *(v374 + 48);
  v562[0] = v376;
  *(v374 + 32) = &unk_286C0D128;
  *(v374 + 40) = v10;
  *(v374 + 48) = v10;
  *(v374 + 56) = v10;
  *(v374 + 64) = v10;
  *(v374 + 72) = 0u;
  *(v374 + 88) = 0u;
  sub_25A892B80(v562);
  swift_beginAccess();
  *(v374 + 104) = v373;

  *(v374 + 112) = sub_25A8DCA00;
  *(v374 + 120) = 0;
  *(v1 + 4008) = v38;
  *(v1 + 3984) = v374;
  *(v1 + 4016) = 0x5F6C616369676F6CLL;
  *(v1 + 4024) = 0xEB00000000646E61;
  v377 = sub_25A92BDB4(v10);
  v378 = swift_allocObject();
  *(v378 + 32) = v10;
  *(v378 + 40) = v10;

  *(v378 + 48) = v10;

  *(v378 + 56) = v10;

  *(v378 + 64) = v10;

  *(v378 + 72) = 0;
  *(v378 + 80) = 0;

  *(v378 + 88) = 0;
  *(v378 + 96) = 0;

  *(v378 + 104) = sub_25A92BDB4(v10);
  strcpy((v378 + 16), "np.logical_and");
  *(v378 + 31) = -18;
  v379 = *(v378 + 80);
  v564[2] = *(v378 + 64);
  v564[3] = v379;
  v565 = *(v378 + 96);
  v380 = *(v378 + 32);
  v564[1] = *(v378 + 48);
  v564[0] = v380;
  *(v378 + 32) = &unk_286C0D158;
  *(v378 + 40) = v10;
  *(v378 + 48) = v10;
  *(v378 + 56) = v10;
  *(v378 + 64) = v10;
  *(v378 + 72) = 0u;
  *(v378 + 88) = 0u;
  sub_25A892B80(v564);
  swift_beginAccess();
  *(v378 + 104) = v377;

  *(v378 + 112) = sub_25A8DCA2C;
  *(v378 + 120) = 0;
  *(v1 + 4056) = v38;
  *(v1 + 4032) = v378;
  *(v1 + 4064) = 0x645F646E61707865;
  *(v1 + 4072) = 0xEB00000000736D69;
  v381 = sub_25A92BDB4(v10);
  v382 = swift_allocObject();
  *(v382 + 32) = v10;
  *(v382 + 40) = v10;

  *(v382 + 48) = v10;

  *(v382 + 56) = v10;

  *(v382 + 64) = v10;

  *(v382 + 72) = 0;
  *(v382 + 80) = 0;

  *(v382 + 88) = 0;
  *(v382 + 96) = 0;

  *(v382 + 104) = sub_25A92BDB4(v10);
  strcpy((v382 + 16), "np.expand_dims");
  *(v382 + 31) = -18;
  v383 = *(v382 + 80);
  v566[2] = *(v382 + 64);
  v566[3] = v383;
  v567 = *(v382 + 96);
  v384 = *(v382 + 32);
  v566[1] = *(v382 + 48);
  v566[0] = v384;
  *(v382 + 32) = &unk_286C0D198;
  *(v382 + 40) = v10;
  *(v382 + 48) = v10;
  *(v382 + 56) = v10;
  *(v382 + 64) = v10;
  *(v382 + 72) = 0u;
  *(v382 + 88) = 0u;
  sub_25A892B80(v566);
  swift_beginAccess();
  *(v382 + 104) = v381;

  *(v382 + 112) = sub_25A8DCA58;
  *(v382 + 120) = 0;
  *(v1 + 4104) = v38;
  *(v1 + 4080) = v382;
  *(v1 + 4112) = 0x6B6361747376;
  *(v1 + 4120) = 0xE600000000000000;
  v385 = sub_25A92BDB4(v10);
  v386 = swift_allocObject();
  v386[4] = v10;
  v386[5] = v10;

  v386[6] = v10;

  v386[7] = v10;

  v386[8] = v10;

  v386[9] = 0;
  v386[10] = 0;

  v386[11] = 0;
  v386[12] = 0;

  v386[13] = sub_25A92BDB4(v10);
  v386[2] = 0x63617473762E706ELL;
  v386[3] = 0xE90000000000006BLL;
  v387 = *(v386 + 5);
  v568[2] = *(v386 + 4);
  v568[3] = v387;
  v569 = v386[12];
  v388 = *(v386 + 2);
  v568[1] = *(v386 + 3);
  v568[0] = v388;
  v386[4] = &unk_286C0D1D8;
  v386[5] = v10;
  v386[6] = v10;
  v386[7] = v10;
  v386[8] = v10;
  *(v386 + 9) = 0u;
  *(v386 + 11) = 0u;
  sub_25A892B80(v568);
  swift_beginAccess();
  v386[13] = v385;

  v386[14] = sub_25A8DCA84;
  v386[15] = 0;
  *(v1 + 4152) = v38;
  *(v1 + 4128) = v386;
  *(v1 + 4160) = 0x5F747361656C7461;
  *(v1 + 4168) = 0xEA00000000006432;
  v389 = sub_25A92BDB4(v10);
  v390 = swift_allocObject();
  *(v390 + 32) = v10;
  *(v390 + 40) = v10;

  *(v390 + 48) = v10;

  *(v390 + 56) = v10;

  *(v390 + 64) = v10;

  *(v390 + 72) = 0;
  *(v390 + 80) = 0;

  *(v390 + 88) = 0;
  *(v390 + 96) = 0;

  *(v390 + 104) = sub_25A92BDB4(v10);
  strcpy((v390 + 16), "np.atleast_2d");
  *(v390 + 30) = -4864;
  v391 = *(v390 + 80);
  v570[2] = *(v390 + 64);
  v570[3] = v391;
  v571 = *(v390 + 96);
  v392 = *(v390 + 32);
  v570[1] = *(v390 + 48);
  v570[0] = v392;
  *(v390 + 32) = v10;
  *(v390 + 40) = v10;
  *(v390 + 48) = v10;
  *(v390 + 56) = v10;
  *(v390 + 64) = v10;
  *(v390 + 72) = xmmword_25A9F9530;
  *(v390 + 88) = 0;
  *(v390 + 96) = 0;
  sub_25A892B80(v570);
  swift_beginAccess();
  *(v390 + 104) = v389;

  *(v390 + 112) = sub_25A8DCAB0;
  *(v390 + 120) = 0;
  *(v1 + 4200) = v38;
  *(v1 + 4176) = v390;
  *(v1 + 4208) = 0x5F747361656C7461;
  *(v1 + 4216) = 0xEA00000000006431;
  v393 = sub_25A92BDB4(v10);
  v394 = swift_allocObject();
  *(v394 + 32) = v10;
  *(v394 + 40) = v10;

  *(v394 + 48) = v10;

  *(v394 + 56) = v10;

  *(v394 + 64) = v10;

  *(v394 + 72) = 0;
  *(v394 + 80) = 0;

  *(v394 + 88) = 0;
  *(v394 + 96) = 0;

  *(v394 + 104) = sub_25A92BDB4(v10);
  strcpy((v394 + 16), "np.atleast_1d");
  *(v394 + 30) = -4864;
  v395 = *(v394 + 80);
  v572[2] = *(v394 + 64);
  v572[3] = v395;
  v573 = *(v394 + 96);
  v396 = *(v394 + 32);
  v572[1] = *(v394 + 48);
  v572[0] = v396;
  *(v394 + 32) = v10;
  *(v394 + 40) = v10;
  *(v394 + 48) = v10;
  *(v394 + 56) = v10;
  *(v394 + 64) = v10;
  *(v394 + 72) = xmmword_25A9F9530;
  *(v394 + 88) = 0;
  *(v394 + 96) = 0;
  sub_25A892B80(v572);
  swift_beginAccess();
  *(v394 + 104) = v393;

  *(v394 + 112) = sub_25A8DCADC;
  *(v394 + 120) = 0;
  *(v1 + 4248) = v38;
  *(v1 + 4224) = v394;
  *(v1 + 4256) = 0x5F747361656C7461;
  *(v1 + 4264) = 0xEA00000000006433;
  v397 = sub_25A92BDB4(v10);
  v398 = swift_allocObject();
  *(v398 + 32) = v10;
  *(v398 + 40) = v10;

  *(v398 + 48) = v10;

  *(v398 + 56) = v10;

  *(v398 + 64) = v10;

  *(v398 + 72) = 0;
  *(v398 + 80) = 0;

  *(v398 + 88) = 0;
  *(v398 + 96) = 0;

  *(v398 + 104) = sub_25A92BDB4(v10);
  strcpy((v398 + 16), "np.atleast_3d");
  *(v398 + 30) = -4864;
  v399 = *(v398 + 80);
  v574[2] = *(v398 + 64);
  v574[3] = v399;
  v575 = *(v398 + 96);
  v400 = *(v398 + 48);
  v574[0] = *(v398 + 32);
  v574[1] = v400;
  *(v398 + 32) = v10;
  *(v398 + 40) = v10;
  *(v398 + 48) = v10;
  *(v398 + 56) = v10;
  *(v398 + 64) = v10;
  *(v398 + 72) = xmmword_25A9F9530;
  *(v398 + 88) = 0;
  *(v398 + 96) = 0;
  sub_25A892B80(v574);
  swift_beginAccess();
  *(v398 + 104) = v397;

  *(v398 + 112) = sub_25A8DCB08;
  *(v398 + 120) = 0;
  *(v1 + 4296) = v38;
  *(v1 + 4272) = v398;
  *(v1 + 4304) = 1819045746;
  *(v1 + 4312) = 0xE400000000000000;
  v401 = swift_allocObject();
  *(v401 + 16) = xmmword_25A9F8D90;
  *(v401 + 56) = MEMORY[0x277D83B88];
  *(v401 + 32) = 0;
  v402 = sub_25A92BDB4(v10);
  v403 = swift_allocObject();
  v403[4] = v10;
  v403[5] = v10;

  v403[6] = v10;

  v403[7] = v10;

  v403[8] = v10;

  v403[9] = 0;
  v403[10] = 0;

  v403[11] = 0;
  v403[12] = 0;

  v403[13] = sub_25A92BDB4(v10);
  v403[2] = 0x6C6C6F722E706ELL;
  v404 = *(v403 + 5);
  v576[2] = *(v403 + 4);
  v576[3] = v404;
  v577 = v403[12];
  v405 = *(v403 + 3);
  v576[0] = *(v403 + 2);
  v576[1] = v405;
  v403[3] = 0xE700000000000000;
  v403[4] = &unk_286C0D208;
  v403[5] = v10;
  v403[6] = v10;
  v403[7] = v10;
  v403[8] = v401;
  *(v403 + 9) = 0u;
  *(v403 + 11) = 0u;
  sub_25A892B80(v576);
  swift_beginAccess();
  v403[13] = v402;

  v403[14] = sub_25A8DCB34;
  v403[15] = 0;
  *(v1 + 4344) = v38;
  *(v1 + 4320) = v403;
  v406 = sub_25A92BDB4(v1);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FA0FCB0 = v406;
  return result;
}