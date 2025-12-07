double E5Trainer.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_25AAC44C8();
  swift_getWitnessTable();
  sub_25AAC4558();
  if (v8)
  {
    sub_25AAA4B4C(&v7, a3);
  }

  else
  {
    sub_25AAA5640(&v7, &qword_27FA0FE38, &unk_25AAC5410);
    return E5Trainer.morpheusExtension(for:)(a1, a2, a3);
  }

  return result;
}

double E5Trainer.morpheusExtension(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v6 - 8, v7);
  if (a1 == 1684107116 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v8 = swift_allocObject();
    v8[1] = xmmword_25AAC5400;
    v8[2] = 0u;
    v8[3] = 0u;
    v9 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v9);
    v10 = sub_25AAC45B8();
    swift_allocObject();
LABEL_9:
    v12 = sub_25AAC45A8();
    *(a3 + 24) = v10;
    *a3 = v12;
    return result;
  }

  if (a1 == 0x5774636172747865 && a2 == 0xEE00737468676965 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x4F74636172747865 && a2 == 0xEE00737475707475 || (sub_25AAC4AF8() & 1) != 0)
  {
    goto LABEL_8;
  }

  if (a1 == 0x6E69617274 && a2 == 0xE500000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25AAC59E0;
    v15 = MEMORY[0x277D83B88];
    *(v14 + 32) = 1;
    *(v14 + 88) = MEMORY[0x277D837D0];
    *(v14 + 56) = v15;
    *(v14 + 64) = 0x6D6F646E6172;
    *(v14 + 72) = 0xE600000000000000;
    *(v14 + 120) = MEMORY[0x277D839B0];
    *(v14 + 96) = 0;
    v16 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v16);
    v10 = sub_25AAC45B8();
    swift_allocObject();
    goto LABEL_9;
  }

  if (a1 == 1818326629 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
LABEL_8:
    v11 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v11);
    v10 = sub_25AAC45B8();
    swift_allocObject();
    goto LABEL_9;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_25AAB93B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v5 = sub_25AAC42E8();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v33 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = v14 == 7696487 && v15 == 0xE300000000000000;
  if (v16 || (sub_25AAC4AF8() & 1) != 0)
  {
    v17 = MEMORY[0x277D413A0];
LABEL_7:
    v18 = *v17;
    v19 = sub_25AAC43D8();
    v20 = *(v19 - 8);
    (*(v20 + 104))(a3, v18, v19);
    return (*(v20 + 56))(a3, 0, 1, v19);
  }

  if (v14 == 6647393 && v15 == 0xE300000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    v17 = MEMORY[0x277D41390];
    goto LABEL_7;
  }

  if (v14 == 0x5F63697373616C63 && v15 == 0xEB00000000757063 || (sub_25AAC4AF8() & 1) != 0)
  {
    (*(v6 + 104))(v13, *MEMORY[0x277D41320], v5);
    v22 = v34;
    v23 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_25AAAC71C(0, v23[2] + 1, 1, v23);
      *v34 = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = sub_25AAAC71C((v25 > 1), v26 + 1, 1, v23);
      *v34 = v23;
    }

    v23[2] = v26 + 1;
    (*(v6 + 32))(v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v13, v5);
  }

  else if (v14 == 1936617058 && v15 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    (*(v6 + 104))(v10, *MEMORY[0x277D41328], v5);
    v28 = v34;
    v29 = *v34;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *v28 = v29;
    if ((v30 & 1) == 0)
    {
      v29 = sub_25AAAC71C(0, v29[2] + 1, 1, v29);
      *v34 = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_25AAAC71C((v31 > 1), v32 + 1, 1, v29);
      *v34 = v29;
    }

    v29[2] = v32 + 1;
    (*(v6 + 32))(v29 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v32, v10, v5);
  }

  v27 = sub_25AAC43D8();
  return (*(*(v27 - 8) + 56))(a3, 1, 1, v27);
}

char *sub_25AAB9818(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10040, &unk_25AAC5B30);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v26 - v7;
  v9 = sub_25AAC43D8();
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v29 = &v26 - v16;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v27 = v15;
  v30 = (v15 + 32);
  v31 = (v15 + 48);
  v18 = (a1 + 40);
  v33 = MEMORY[0x277D84F90];
  v26 = v13;
  v28 = a2;
  while (1)
  {
    v19 = *v18;
    v32[0] = *(v18 - 1);
    v32[1] = v19;

    sub_25AAB93B4(v32, a2, v8);
    if (v2)
    {
      break;
    }

    if ((*v31)(v8, 1, v9) == 1)
    {
      sub_25AAA5640(v8, &qword_27FA10040, &unk_25AAC5B30);
    }

    else
    {
      v20 = v29;
      v21 = *v30;
      (*v30)(v29, v8, v9);
      v21(v13, v20, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_25AAAC6F4(0, *(v33 + 2) + 1, 1, v33);
      }

      v23 = *(v33 + 2);
      v22 = *(v33 + 3);
      if (v23 >= v22 >> 1)
      {
        v33 = sub_25AAAC6F4((v22 > 1), v23 + 1, 1, v33);
      }

      v24 = v33;
      *(v33 + 2) = v23 + 1;
      v13 = v26;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v26, v9);
      a2 = v28;
    }

    v18 += 2;
    if (!--v17)
    {
      return v33;
    }
  }

  return v33;
}

uint64_t sub_25AAB9B10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = MEMORY[0x277D41428];
  v7 = *(*a2 + *MEMORY[0x277D41428]);
  v8 = sub_25AAC48D8();
  v61 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v47 - v10;
  if (!*(a1 + 16))
  {
    goto LABEL_37;
  }

  v12 = sub_25AAA48F0(1752457584, 0xE400000000000000);
  if ((v13 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v12, &v58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v55 = a3;
  v14 = v57[1];
  if (!*(a1 + 16))
  {
    goto LABEL_32;
  }

  v53 = v57[0];
  v15 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE900000000000073);
  if ((v16 & 1) == 0)
  {
    goto LABEL_32;
  }

  v54 = v14;
  sub_25AAA5378(*(a1 + 56) + 32 * v15, v57);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_34;
  }

  v51 = v17;
  if (!*(&v59 + 1))
  {
LABEL_34:

    goto LABEL_35;
  }

  v52 = v60;
  __swift_project_boxed_opaque_existential_1Tm(&v58, *(&v59 + 1));
  v18 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  v19 = sub_25AAB163C(v18);

  if (!v19)
  {
LABEL_54:

    goto LABEL_37;
  }

  v52 = v19;
  if (!*(a1 + 16) || (v20 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000), (v21 & 1) == 0))
  {

LABEL_39:

    v58 = 0u;
    v59 = 0u;
    v60 = 0;
LABEL_42:
    v38 = &qword_27FA10018;
    v39 = &qword_25AAC5AE0;
    goto LABEL_36;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v20, v57);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_41;
  }

  if (!*(&v59 + 1))
  {
LABEL_41:

    goto LABEL_42;
  }

  v49 = v22;
  v50 = v60;
  __swift_project_boxed_opaque_existential_1Tm(&v58, *(&v59 + 1));
  v23 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  if (!*(a1 + 16))
  {
    goto LABEL_43;
  }

  v24 = sub_25AAA48F0(0x7374757074756FLL, 0xE700000000000000);
  if ((v25 & 1) == 0)
  {
    goto LABEL_43;
  }

  v50 = v23;
  sub_25AAA5378(*(a1 + 56) + 32 * v24, v57);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_45;
  }

  if (!*(&v59 + 1))
  {
LABEL_45:

    goto LABEL_41;
  }

  v48 = v60;
  __swift_project_boxed_opaque_existential_1Tm(&v58, *(&v59 + 1));
  v26 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  if (!*(a1 + 16) || (v27 = sub_25AAA48F0(0x73746867696577, 0xE700000000000000), (v28 & 1) == 0))
  {

LABEL_43:

    goto LABEL_39;
  }

  v48 = v26;
  sub_25AAA5378(*(a1 + 56) + 32 * v27, v57);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_48;
  }

  if (!*(&v59 + 1))
  {
LABEL_48:

    goto LABEL_45;
  }

  v47 = v60;
  __swift_project_boxed_opaque_existential_1Tm(&v58, *(&v59 + 1));
  v47 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  if (!*(a1 + 16) || (v29 = sub_25AAA48F0(0x73656369766564, 0xE700000000000000), (v30 & 1) == 0))
  {

LABEL_32:

    v58 = 0u;
    v59 = 0u;
    v60 = 0;
LABEL_35:
    v38 = &qword_27FA10008;
    v39 = &qword_25AAC5AD0;
LABEL_36:
    sub_25AAA5640(&v58, v38, v39);
LABEL_37:
    sub_25AAA5558();
    swift_allocError();
    *v40 = 3;
    return swift_willThrow();
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v29, v57);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_51;
  }

  if (!*(&v59 + 1))
  {
LABEL_51:

    goto LABEL_34;
  }

  v51 = v60;
  __swift_project_boxed_opaque_existential_1Tm(&v58, *(&v59 + 1));
  v31 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  v32 = sub_25AAB163C(v31);

  v51 = v32;
  if (!v32)
  {

    goto LABEL_54;
  }

  if (!*(a1 + 16) || (v33 = sub_25AAA48F0(0x7A69536863746162, 0xEA00000000007365), (v34 & 1) == 0))
  {

    goto LABEL_39;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v33, v57);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_56;
  }

  if (!*(&v59 + 1))
  {
LABEL_56:

    goto LABEL_48;
  }

  v49 = v60;
  __swift_project_boxed_opaque_existential_1Tm(&v58, *(&v59 + 1));
  v49 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  v35 = *(v5 + *v6 + 8);
  v36 = v56;
  sub_25AABF57C(v50);
  if (v36)
  {
  }

  else
  {

    v56 = sub_25AABF57C(v48);

    v50 = sub_25AABF57C(v47);

    v43 = *(a1 + 16);
    if (v43)
    {
      v41 = sub_25AAA48F0(0x676E696E7261656CLL, 0xEC00000065746152);
      if (v42)
      {
        sub_25AAA5378(*(a1 + 56) + 32 * v41, &v58);
        sub_25AABFED8();
        v41 = swift_dynamicCast();
        v43 = v57[0];
        if (!v41)
        {
          v43 = 0;
        }
      }

      else
      {
        v43 = 0;
      }
    }

    v47 = v43;
    v48 = &v47;
    *&v58 = v43;
    MEMORY[0x28223BE20](v41, v42);
    v45 = v7;
    v46 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10028, &unk_25AAC5AF0);
    sub_25AABA6D8(sub_25AABF8DC, (&v47 - 4), MEMORY[0x277D84A98], v7, v44, v11);

    *(v55 + 24) = MEMORY[0x277D84F78] + 8;
    sub_25AABFD98(v51);

    sub_25AABF8FC(v49);

    v45 = v11;
    sub_25AAC44A8();
    (*(v61 + 8))(v11, v8);
  }
}

uint64_t sub_25AABA650@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v6 = *a1;
  sub_25AAC43C8();
  return (*(*(a2 - 8) + 56))(a4, 0, 1, a2);
}

uint64_t sub_25AABA6D8@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v28 = a5;
  v29 = a2;
  v30 = a1;
  v27 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v10, v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v24);
  if ((*(v15 + 48))(v22, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v19, v22, v14);
  v30(v19, v12);
  result = (*(v15 + 8))(v19, v14);
  if (v6)
  {
    return (*(v27 + 32))(v28, v12, a3);
  }

  return result;
}

uint64_t sub_25AABA980@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000), (v7 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v6, v11), (swift_dynamicCast() & 1) != 0))
  {
    v8 = sub_25AAC4478();

    if (!v3)
    {
      result = sub_25AAC4828();
      a3[3] = result;
      *a3 = v8;
    }
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v10 = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AABAAC8@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000), (v6 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v5, v10), (swift_dynamicCast() & 1) != 0))
  {
    v7 = sub_25AAC4468();

    sub_25AAC4828();
    result = sub_25AAC4628();
    a3[3] = result;
    *a3 = v7;
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v9 = 7;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AABAC20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = sub_25AAC4308();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_34;
  }

  v12 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000);
  if ((v13 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v12, &v113);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  v116 = v8;
  v14 = *(&v110 + 1);
  if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

  v104 = v110;
  v15 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v16 & 1) == 0)
  {
    goto LABEL_29;
  }

  v105 = v14;
  sub_25AAA5378(*(a1 + 56) + 32 * v15, &v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
    goto LABEL_31;
  }

  v102 = a3;
  if (!*(&v114 + 1))
  {
LABEL_31:

    goto LABEL_32;
  }

  v103 = v115;
  __swift_project_boxed_opaque_existential_1Tm(&v113, *(&v114 + 1));
  v17 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v113);
  if (!*(a1 + 16) || (v18 = sub_25AAA48F0(0x5365727574616566, 0xEC00000073657A69), (v19 & 1) == 0))
  {

LABEL_29:

    v113 = 0u;
    v114 = 0u;
    v115 = 0;
LABEL_32:
    v32 = &qword_27FA10018;
    v33 = &qword_25AAC5AE0;
    v34 = &v113;
LABEL_33:
    sub_25AAA5640(v34, v32, v33);
LABEL_34:
    sub_25AAA5558();
    swift_allocError();
    *v35 = 8;
    return swift_willThrow();
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v18, &v110);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
    goto LABEL_37;
  }

  if (!*(&v114 + 1))
  {
LABEL_37:

    goto LABEL_31;
  }

  v103 = v17;
  __swift_project_boxed_opaque_existential_1Tm(&v113, *(&v114 + 1));
  v20 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v113);
  if (!*(a1 + 16) || (v21 = sub_25AAA48F0(0x6C706D61536D756ELL, 0xEA00000000007365), (v22 & 1) == 0))
  {

    v110 = 0u;
    v111 = 0u;
    v112 = 0;
LABEL_41:
    v32 = &qword_27FA0FEE8;
    v33 = &unk_25AAC5540;
    v34 = &v110;
    goto LABEL_33;
  }

  v101 = v20;
  sub_25AAA5378(*(a1 + 56) + 32 * v21, &v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    goto LABEL_40;
  }

  if (!*(&v111 + 1))
  {
LABEL_40:

    goto LABEL_41;
  }

  sub_25AAA5864(&v110, &v113);
  if (!*(a1 + 16) || (v23 = sub_25AAA48F0(0x7368636F7065, 0xE600000000000000), (v24 & 1) == 0))
  {

    v107 = 0u;
    v108 = 0u;
    v109 = 0;
LABEL_45:
    sub_25AAA5640(&v107, &qword_27FA0FEE8, &unk_25AAC5540);
LABEL_46:
    __swift_destroy_boxed_opaque_existential_1Tm(&v113);
    goto LABEL_34;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v23, v106);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v109 = 0;
    v107 = 0u;
    v108 = 0u;
    goto LABEL_44;
  }

  if (!*(&v108 + 1))
  {
LABEL_44:

    goto LABEL_45;
  }

  sub_25AAA5864(&v107, &v110);
  if (!*(a1 + 16))
  {
    goto LABEL_48;
  }

  v25 = sub_25AAA48F0(0x4D656C6666756873, 0xED0000646F687465);
  if ((v26 & 1) == 0)
  {
    goto LABEL_48;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v25, &v107);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_48;
  }

  v27 = v106[1];
  if (!*(a1 + 16) || (v28 = v106[0], v29 = sub_25AAA48F0(0x637461426C6C7566, 0xE900000000000068), (v30 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v29, &v107), (swift_dynamicCast() & 1) == 0))
  {

LABEL_48:

    __swift_destroy_boxed_opaque_existential_1Tm(&v110);
    goto LABEL_46;
  }

  v99 = LOBYTE(v106[0]);
  if (v28 == 0x6D6F646E6172 && v27 == 0xE600000000000000)
  {

    v31 = MEMORY[0x277D41358];
  }

  else
  {
    v37 = sub_25AAC4AF8();

    v31 = MEMORY[0x277D41360];
    if (v37)
    {
      v31 = MEMORY[0x277D41358];
    }
  }

  (*(v116 + 104))(v11, *v31, v7);
  *(v102 + 24) = MEMORY[0x277D84F78] + 8;
  v100 = sub_25AABE650(v103, *(v6 + *MEMORY[0x277D41428]), *(v6 + *MEMORY[0x277D41428] + 8));
  if (v3)
  {
    goto LABEL_52;
  }

  v98 = sub_25AABEC14(v101);
  v103 = 0;

  v39 = *(&v114 + 1);
  v38 = v115;
  v40 = __swift_project_boxed_opaque_existential_1Tm(&v113, *(&v114 + 1));
  v97 = v91;
  MEMORY[0x28223BE20](v40, v40);
  v96 = v41;
  v42 = v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v43;
  (*(v43 + 16))(v42);
  v44 = v38;
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() <= 64)
  {
    goto LABEL_67;
  }

  *&v107 = 0x8000000000000000;
  if (sub_25AAC4928())
  {
    v45 = sub_25AAC4918();
    if (v45 < 64)
    {
      goto LABEL_66;
    }

LABEL_61:
    v95 = v91;
    MEMORY[0x28223BE20](v45, v46);
    v49 = v91 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v50 = sub_25AAC4668();
    result = (*(v101 + 8))(v49, v39);
    if (v50)
    {
      goto LABEL_90;
    }

    goto LABEL_67;
  }

  v47 = sub_25AAC4928();
  v45 = sub_25AAC4918();
  if (v47)
  {
    if (v45 <= 64)
    {
      v94 = v44;
      v92 = *(v44[3] + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v95 = v91;
      MEMORY[0x28223BE20](AssociatedTypeWitness, v52);
      swift_getAssociatedConformanceWitness();
      v53 = sub_25AAC4B18();
      v93 = v91;
      MEMORY[0x28223BE20](v53, v54);
      v56 = v91 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAC4AD8();
      v57 = sub_25AAC4668();
      result = (*(v101 + 8))(v56, v39);
      if (v57)
      {
        goto LABEL_90;
      }

      goto LABEL_66;
    }

    goto LABEL_61;
  }

  if (v45 < 64)
  {
LABEL_66:
    sub_25AAC4908();
  }

LABEL_67:
  if (sub_25AAC4918() > 64 || sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
  {
    *&v107 = 0x7FFFFFFFFFFFFFFFLL;
    v58 = sub_25AAC4928();
    v59 = sub_25AAC4918();
    if ((v58 & 1) == 0)
    {
      goto LABEL_74;
    }

    if (v59 < 65)
    {
LABEL_75:
      sub_25AAC4908();
    }

    else
    {
      while (1)
      {
        v95 = v91;
        MEMORY[0x28223BE20](v59, v60);
        v62 = v91 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAA54EC();
        sub_25AAC48F8();
        v63 = sub_25AAC4668();
        v59 = (*(v101 + 8))(v62, v39);
        if ((v63 & 1) == 0)
        {
          break;
        }

        __break(1u);
LABEL_74:
        if (v59 < 64)
        {
          goto LABEL_75;
        }
      }
    }
  }

  v95 = sub_25AAC4908();
  (*(v101 + 8))(v42, v39);
  v65 = *(&v111 + 1);
  v64 = v112;
  v66 = __swift_project_boxed_opaque_existential_1Tm(&v110, *(&v111 + 1));
  v94 = v91;
  MEMORY[0x28223BE20](v66, v66);
  v93 = v67;
  v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = v69;
  v70 = *(v69 + 16);
  v97 = v91 - v68;
  v70();
  v101 = v64;
  if (sub_25AAC4928() & 1) == 0 || (v71 = swift_getAssociatedTypeWitness(), v92 = v91, MEMORY[0x28223BE20](v71, v72), swift_getAssociatedConformanceWitness(), v73 = sub_25AAC4B18(), v91[1] = v91, MEMORY[0x28223BE20](v73, v74), sub_25AAC4AD8(), v75 = sub_25AAC4678(), result = (*(v96 + 8))(v91 - v68, v65), (v75))
  {
    if (sub_25AAC4918() <= 31)
    {
      goto LABEL_87;
    }

    LODWORD(v107) = -1;
    v76 = sub_25AAC4928();
    v77 = sub_25AAC4918();
    if (v76)
    {
      if (v77 <= 32)
      {
        v79 = swift_getAssociatedTypeWitness();
        v92 = v91;
        MEMORY[0x28223BE20](v79, v80);
        swift_getAssociatedConformanceWitness();
        v81 = sub_25AAC4B18();
        MEMORY[0x28223BE20](v81, v82);
        v84 = v91 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAC4AD8();
        v85 = sub_25AAC4658();
        (*(v96 + 8))(v84, v65);
        if ((v85 & 1) == 0)
        {
LABEL_87:
          v89 = v97;
          sub_25AAC4908();
          (*(v96 + 8))(v89, v65);
          v90 = v103;
          sub_25AAC44B8();
          if (!v90)
          {
            (*(v116 + 8))(v11, v7);

            goto LABEL_53;
          }

LABEL_52:
          (*(v116 + 8))(v11, v7);

          __swift_deallocate_boxed_opaque_existential_0(v102);
LABEL_53:
          __swift_destroy_boxed_opaque_existential_1Tm(&v110);
          return __swift_destroy_boxed_opaque_existential_1Tm(&v113);
        }

LABEL_86:
        sub_25AAC4908();
        goto LABEL_87;
      }
    }

    else if (v77 < 33)
    {
      goto LABEL_86;
    }

    MEMORY[0x28223BE20](v77, v78);
    v87 = v91 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AABFF80();
    sub_25AAC48F8();
    v88 = sub_25AAC4668();
    (*(v96 + 8))(v87, v65);
    if ((v88 & 1) == 0)
    {
      goto LABEL_87;
    }

    __break(1u);
    goto LABEL_86;
  }

  __break(1u);
LABEL_90:
  __break(1u);
  return result;
}

uint64_t sub_25AABBFB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v6 = *a2;
  v7 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000);
  if ((v8 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v7, &v63);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v9 = v60;
  v10 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v11 & 1) == 0)
  {
    goto LABEL_18;
  }

  v66 = *(&v60 + 1);
  sub_25AAA5378(*(a1 + 56) + 32 * v10, &v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    goto LABEL_20;
  }

  v57 = v9;
  if (!*(&v64 + 1))
  {
LABEL_20:

    goto LABEL_21;
  }

  v58 = v65;
  __swift_project_boxed_opaque_existential_1Tm(&v63, *(&v64 + 1));
  v12 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v63);
  if (!*(a1 + 16) || (v13 = sub_25AAA48F0(0x5365727574616566, 0xEC00000073657A69), (v14 & 1) == 0))
  {

LABEL_18:

    v63 = 0u;
    v64 = 0u;
    v65 = 0;
LABEL_21:
    v18 = &qword_27FA10018;
    v19 = &qword_25AAC5AE0;
    v20 = &v63;
LABEL_22:
    sub_25AAA5640(v20, v18, v19);
LABEL_23:
    sub_25AAA5558();
    swift_allocError();
    *v21 = 9;
    return swift_willThrow();
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v13, &v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    goto LABEL_26;
  }

  if (!*(&v64 + 1))
  {
LABEL_26:

    goto LABEL_20;
  }

  v58 = v65;
  __swift_project_boxed_opaque_existential_1Tm(&v63, *(&v64 + 1));
  v15 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v63);
  if (!*(a1 + 16) || (v16 = sub_25AAA48F0(0x6C706D61536D756ELL, 0xEA00000000007365), (v17 & 1) == 0))
  {

    v60 = 0u;
    v61 = 0u;
    v62 = 0;
LABEL_30:
    v18 = &qword_27FA0FEE8;
    v19 = &unk_25AAC5540;
    v20 = &v60;
    goto LABEL_22;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v16, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    goto LABEL_29;
  }

  if (!*(&v61 + 1))
  {
LABEL_29:

    goto LABEL_30;
  }

  sub_25AAA5864(&v60, &v63);
  sub_25AABE650(v12, *(v6 + *MEMORY[0x277D41428]), *(v6 + *MEMORY[0x277D41428] + 8));
  if (v3)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(&v63);
  }

  v55 = sub_25AABEC14(v15);

  v24 = *(&v64 + 1);
  v23 = v65;
  v25 = __swift_project_boxed_opaque_existential_1Tm(&v63, *(&v64 + 1));
  v53 = v50;
  MEMORY[0x28223BE20](v25, v25);
  v52 = v26;
  v54 = v27;
  v28 = *(v27 + 16);
  v56 = v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28();
  v58 = v23;
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() <= 64)
  {
    goto LABEL_46;
  }

  *&v60 = 0x8000000000000000;
  if (sub_25AAC4928())
  {
    v29 = sub_25AAC4918();
    if (v29 < 64)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  v31 = sub_25AAC4928();
  v29 = sub_25AAC4918();
  if (v31)
  {
    if (v29 > 64)
    {
LABEL_40:
      v51 = v50;
      MEMORY[0x28223BE20](v29, v30);
      v33 = v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v34 = sub_25AAC4668();
      result = (*(v54 + 8))(v33, v24);
      if ((v34 & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_57:
      __break(1u);
      return result;
    }

    v50[0] = *(*(v58 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v51 = v50;
    MEMORY[0x28223BE20](AssociatedTypeWitness, v36);
    swift_getAssociatedConformanceWitness();
    v37 = sub_25AAC4B18();
    v50[1] = v50;
    MEMORY[0x28223BE20](v37, v38);
    v40 = v50 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAC4AD8();
    v41 = sub_25AAC4668();
    result = (*(v54 + 8))(v40, v24);
    if (v41)
    {
      goto LABEL_57;
    }

LABEL_45:
    sub_25AAC4908();
    goto LABEL_46;
  }

  if (v29 < 64)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_51;
  }

  while (1)
  {
    *&v60 = 0x7FFFFFFFFFFFFFFFLL;
    v42 = sub_25AAC4928();
    v43 = sub_25AAC4918();
    if ((v42 & 1) == 0)
    {
      break;
    }

    if (v43 < 65)
    {
      goto LABEL_55;
    }

LABEL_49:
    v51 = v50;
    MEMORY[0x28223BE20](v43, v44);
    v46 = v50 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v47 = sub_25AAC4668();
    (*(v54 + 8))(v46, v24);
    if (v47)
    {
      __break(1u);
LABEL_51:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_56;
  }

  if (v43 >= 64)
  {
    goto LABEL_49;
  }

LABEL_55:
  sub_25AAC4908();
LABEL_56:
  v48 = v56;
  sub_25AAC4908();
  (*(v54 + 8))(v48, v24);
  v49 = sub_25AAC4498();

  sub_25AAC4828();
  sub_25AAC4628();
  a3[3] = sub_25AAC4828();
  *a3 = v49;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v63);
}

Swift::Bool __swiftcall E5Trainer.has(attribute:)(Swift::String attribute)
{
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v3 = sub_25AAA506C(&unk_286C1ABC0);
  swift_arrayDestroy();
  LOBYTE(object) = sub_25AAA2D08(countAndFlagsBits, object, v3);

  return object & 1;
}

uint64_t sub_25AABCA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_25AAA506C(a5);
  swift_arrayDestroy();
  v10 = sub_25AAA2D08(a1, a2, v9);

  return v10 & 1;
}

unint64_t sub_25AABCABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25AAC4648();

  return sub_25AABCB18(a1, v6, a2, a3);
}

unint64_t sub_25AABCB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1, a2);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_25AAC4688();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

char *sub_25AABCCA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25AABCD20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25AABCCC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25AABCE2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25AABCCE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25AABCF3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25AABCD00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25AABD040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25AABCD20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFE8, &unk_25AAC59D0);
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

char *sub_25AABCE2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF70, &qword_25AAC5780);
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

char *sub_25AABCF3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100B8, &qword_25AAC5B90);
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

void *sub_25AABD040(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10088, &qword_25AAC5B60);
  v10 = *(sub_25AAC43B8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25AAC43B8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_25AABD218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE70, &qword_25AAC5B10);
  v34 = v4;
  result = sub_25AAC4AA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_25AAC4B78();
      sub_25AAC4738();
      result = sub_25AAC4B98();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25AABD4B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_25AAC4AA8();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_25AAC4B78();
      sub_25AAC4738();
      result = sub_25AAC4B98();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_25AABD758(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_25AAA48F0(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_25AABD4B8(v22, a4 & 1, a6, a7);
      v17 = sub_25AAA48F0(a2, a3);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_25AAC4B28();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      a5();
      v17 = v25;
    }
  }

  v27 = *v11;
  if (v23)
  {
    *(v27[7] + 8 * v17) = a1;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v29 = (v27[6] + 16 * v17);
  *v29 = a2;
  v29[1] = a3;
  *(v27[7] + 8 * v17) = a1;
  v30 = v27[2];
  v21 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v31;
}

uint64_t sub_25AABD8F8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_25AAAC6F4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_25AAC43D8();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_25AABDC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_25AAC4808())
  {
    sub_25AAC4AC8();
    v14 = sub_25AAC4AB8();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  result = sub_25AAC4808();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_25AAC47F8())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_25AAC49C8();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_25AABCABC(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

void *sub_25AABDFB8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_25AAB0E84(a1);
  if (v3)
  {
    return v3;
  }

  v50 = v1;
  v4 = sub_25AAA4F34(MEMORY[0x277D84F90]);
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v54 = v9;
  v51 = v2 + 64;
  v52 = v2;
  while (v8)
  {
    v13 = v10;
LABEL_17:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = v16 | (v13 << 6);
    sub_25AABFF24(*(v2 + 48) + 40 * v17, v57);
    sub_25AAA5378(*(v2 + 56) + 32 * v17, v56);
    v59 = v57[0];
    v60 = v57[1];
    *&v61 = v58;
    sub_25AAA4B4C(v56, (&v61 + 8));
LABEL_18:
    v66[0] = v61;
    v66[1] = v62;
    v67 = v63;
    v64 = v59;
    v65 = v60;
    if (!*(&v60 + 1))
    {

      return v4;
    }

    sub_25AAA4B4C((v66 + 8), v57);
    v59 = v64;
    v60 = v65;
    *&v61 = *&v66[0];
    if (!swift_dynamicCast())
    {
      goto LABEL_55;
    }

    v18 = v56[0];
    sub_25AAA5378(v57, &v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100A8, &qword_25AAC5B78);
    if (swift_dynamicCast())
    {
      v55 = *&v56[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v59 = v4;
      v20 = sub_25AAA48F0(v18, *(&v18 + 1));
      v22 = v4[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_58;
      }

      v26 = v21;
      if (v4[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_37;
        }

        v47 = v20;
        sub_25AAC3818();
        v20 = v47;
        v9 = v54;
        if (v26)
        {
          goto LABEL_6;
        }

LABEL_38:
        v4 = v59;
        *(v59 + 8 * (v20 >> 6) + 64) |= 1 << v20;
        *(v4[6] + 16 * v20) = v18;
        *(v4[7] + 8 * v20) = v55;
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        v39 = v4[2];
        v24 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v24)
        {
          goto LABEL_60;
        }

        v4[2] = v40;
        v2 = v52;
      }

      else
      {
        sub_25AABD4B8(v25, isUniquelyReferenced_nonNull_native, &qword_27FA0FE88, &qword_25AAC5500);
        v20 = sub_25AAA48F0(v18, *(&v18 + 1));
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_61;
        }

LABEL_37:
        v9 = v54;
        if ((v26 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_6:
        v11 = v20;

        v12 = v59;
        *(*(v59 + 56) + 8 * v11) = v55;
        v4 = v12;

        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        v2 = v52;
      }
    }

    else
    {
      sub_25AAA5378(v57, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
      if (!swift_dynamicCast())
      {

        *&v61 = 0;
        v59 = 0u;
        v60 = 0u;
        sub_25AAA5640(&v59, &qword_27FA10008, &qword_25AAC5AD0);
        goto LABEL_55;
      }

      v53 = v4;
      v4 = __swift_project_boxed_opaque_existential_1Tm(&v59, *(&v60 + 1));
      v28 = sub_25AAC4588();
      __swift_destroy_boxed_opaque_existential_1Tm(&v59);
      v29 = sub_25AAB1550(v28);

      if (!v29)
      {

LABEL_55:

        sub_25AAA5558();
        swift_allocError();
        *v48 = 0;
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        return v4;
      }

      v30 = *(&v18 + 1);
      if (v29 >> 62)
      {
        v31 = sub_25AAC4A88();
        if (!v31)
        {
LABEL_47:

          v32 = MEMORY[0x277D84F90];
          v34 = v53;
          goto LABEL_48;
        }
      }

      else
      {
        v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v31)
        {
          goto LABEL_47;
        }
      }

      *&v59 = MEMORY[0x277D84F90];
      sub_25AABCCE0(0, v31 & ~(v31 >> 63), 0);
      if (v31 < 0)
      {
        goto LABEL_59;
      }

      v32 = v59;
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = 0;
        v34 = v53;
        do
        {
          [MEMORY[0x25F853130](v33 v29)];
          v36 = v35;
          swift_unknownObjectRelease();
          *&v59 = v32;
          v38 = *(v32 + 16);
          v37 = *(v32 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_25AABCCE0((v37 > 1), v38 + 1, 1);
            v34 = v53;
            v32 = v59;
          }

          ++v33;
          *(v32 + 16) = v38 + 1;
          *(v32 + 4 * v38 + 32) = v36;
        }

        while (v31 != v33);
      }

      else
      {
        v41 = (v29 + 32);
        v34 = v53;
        do
        {
          [*v41 floatValue];
          *&v59 = v32;
          v44 = *(v32 + 16);
          v43 = *(v32 + 24);
          if (v44 >= v43 >> 1)
          {
            v45 = v42;
            sub_25AABCCE0((v43 > 1), v44 + 1, 1);
            v34 = v53;
            v42 = v45;
            v32 = v59;
          }

          *(v32 + 16) = v44 + 1;
          *(v32 + 4 * v44 + 32) = v42;
          ++v41;
          --v31;
        }

        while (v31);
      }

      v2 = v52;
      v30 = *(&v18 + 1);
LABEL_48:
      v46 = swift_isUniquelyReferenced_nonNull_native();
      *&v59 = v34;
      sub_25AABD758(v32, v18, v30, v46, sub_25AAC3818, &qword_27FA0FE88, &qword_25AAC5500);

      v4 = v59;
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      v5 = v51;
      v9 = v54;
    }
  }

  if (v9 <= v10 + 1)
  {
    v14 = v10 + 1;
  }

  else
  {
    v14 = v9;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      v8 = 0;
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      v10 = v15;
      v59 = 0u;
      v60 = 0u;
      goto LABEL_18;
    }

    v8 = *(v5 + 8 * v13);
    ++v10;
    if (v8)
    {
      v10 = v13;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = sub_25AAC4B28();
  __break(1u);
  return result;
}

unint64_t sub_25AABE650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25AAC4828();
  v58 = a1;
  result = sub_25AAC4B08();
  if (result)
  {
    return result;
  }

  v39 = a2;
  v40 = a3;
  v44 = v3;
  v9 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v10 = sub_25AAC47E8();
  v11 = sub_25AABDC30(v10, v9, v7, MEMORY[0x277D837E0]);

  v13 = v58 + 64;
  v12 = *(v58 + 64);
  v57 = v11;
  v14 = 1 << *(v58 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  v38[1] = v7;
  if (!v16)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v19 = v18;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v58;
      sub_25AABFF24(*(v58 + 48) + 40 * v23, v46);
      sub_25AAA5378(*(v24 + 56) + 32 * v23, v45);
      v48 = v46[0];
      v49 = v46[1];
      *&v50 = v47;
      sub_25AAA4B4C(v45, (&v50 + 8));
      v21 = v19;
LABEL_16:
      v55[0] = v50;
      v55[1] = v51;
      v56 = v52;
      v53 = v48;
      v54 = v49;
      if (!*(&v49 + 1))
      {

        return v57;
      }

      sub_25AAA4B4C((v55 + 8), v46);
      v48 = v53;
      v49 = v54;
      *&v50 = *&v55[0];
      if (!swift_dynamicCast())
      {
        goto LABEL_28;
      }

      v25 = v45[0];
      sub_25AAA5378(v46, &v48);
      if (!swift_dynamicCast())
      {
        break;
      }

      v48 = v25;
      sub_25AAC4628();
      sub_25AAC4638();
      result = __swift_destroy_boxed_opaque_existential_1Tm(v46);
      v18 = v21;
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    v43 = v25;
    sub_25AAA5378(v46, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
    if (!swift_dynamicCast())
    {

      *&v50 = 0;
      v48 = 0u;
      v49 = 0u;
      sub_25AAA5640(&v48, &qword_27FA10008, &qword_25AAC5AD0);
      goto LABEL_29;
    }

    v42 = v21;
    __swift_project_boxed_opaque_existential_1Tm(&v48, *(&v49 + 1));
    v26 = sub_25AAC4588();
    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    v27 = sub_25AAB1550(v26);

    if (!v27)
    {

LABEL_28:

LABEL_29:
      sub_25AAA5558();
      swift_allocError();
      *v37 = 0;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v46);
    }

    v41 = v38;
    *&v48 = v27;
    MEMORY[0x28223BE20](v28, v29);
    v30 = v39;
    v31 = v40;
    v38[-2] = v39;
    v38[-1] = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10050, &qword_25AAC5B50);
    v33 = sub_25AAA968C(&qword_27FA10058, &qword_27FA10050, &qword_25AAC5B50, MEMORY[0x277D83988]);
    v34 = v44;
    v36 = sub_25AAAD0D4(sub_25AABFFD4, &v38[-4], v32, v30, MEMORY[0x277D84A98], v33, MEMORY[0x277D84AC0], v35);
    v44 = v34;

    *&v45[0] = v36;
    v48 = v43;
    sub_25AAC4628();
    sub_25AAC4638();
    result = __swift_destroy_boxed_opaque_existential_1Tm(v46);
    v18 = v42;
  }

  while (v16);
LABEL_8:
  if (v17 <= v18 + 1)
  {
    v20 = v18 + 1;
  }

  else
  {
    v20 = v17;
  }

  v21 = v20 - 1;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
      v16 = 0;
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      goto LABEL_16;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void *sub_25AABEC14(uint64_t a1)
{
  v2 = a1;
  v3 = sub_25AAB0BB8(a1);
  if (v3)
  {
    return v3;
  }

  v61 = v1;
  v4 = sub_25AAA4E38(MEMORY[0x277D84F90]);
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v62 = v2;
  v63 = v9;
  v64 = v2 + 64;
  while (v8)
  {
    v12 = v10;
LABEL_18:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v12 << 6);
    sub_25AABFF24(*(v2 + 48) + 40 * v16, &v71);
    sub_25AAA5378(*(v2 + 56) + 32 * v16, v70);
    v74 = v71;
    v75 = v72;
    *&v76 = v73;
    sub_25AAA4B4C(v70, (&v76 + 8));
LABEL_19:
    v81[0] = v76;
    v81[1] = v77;
    v82 = v78;
    v79 = v74;
    v80 = v75;
    if (!*(&v75 + 1))
    {

      return v4;
    }

    sub_25AAA4B4C((v81 + 8), v70);
    v74 = v79;
    v75 = v80;
    *&v76 = *&v81[0];
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_60:
      sub_25AAA5558();
      swift_allocError();
      *v57 = 1;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      return v4;
    }

    v17 = *(&v71 + 1);
    v83 = v71;
    sub_25AAA5378(v70, &v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v73 = 0;
      v71 = 0u;
      v72 = 0u;

      sub_25AAA5640(&v71, &qword_27FA0FEE8, &unk_25AAC5540);
      goto LABEL_60;
    }

    v66 = v17;
    v67 = v4;
    sub_25AAA5864(&v71, &v74);
    v18 = *(&v75 + 1);
    v19 = v76;
    v20 = __swift_project_boxed_opaque_existential_1Tm(&v74, *(&v75 + 1));
    v65 = v59;
    v21 = *(*(v18 - 8) + 64);
    MEMORY[0x28223BE20](v20, v20);
    v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = v23;
    (*(v23 + 16))(v22);
    if ((sub_25AAC4928() & 1) != 0 && sub_25AAC4918() > 64)
    {
      *&v71 = 0x8000000000000000;
      if (sub_25AAC4928())
      {
        v24 = sub_25AAC4918();
        if (v24 < 64)
        {
          goto LABEL_34;
        }

        v60 = v59;
        MEMORY[0x28223BE20](v24, v25);
        sub_25AAA54EC();
        sub_25AAC48F8();
        v26 = sub_25AAC4668();
        v2 = v62;
        (*(v68 + 8))(v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
        if (v26)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v27 = sub_25AAC4928();
        v28 = sub_25AAC4918();
        if (v27)
        {
          if (v28 <= 64)
          {
            v60 = *(*(v19 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v59[2] = v59;
            MEMORY[0x28223BE20](AssociatedTypeWitness, v32);
            v59[0] = v59 - v33;
            swift_getAssociatedConformanceWitness();
            v34 = sub_25AAC4B18();
            v59[1] = v59;
            MEMORY[0x28223BE20](v34, v35);
            sub_25AAC4AD8();
            v36 = sub_25AAC4668();
            (*(v68 + 8))(v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
            if (v36)
            {
              goto LABEL_66;
            }

            sub_25AAC4908();
            v2 = v62;
          }

          else
          {
            v60 = v59;
            MEMORY[0x28223BE20](v28, v29);
            sub_25AAA54EC();
            sub_25AAC48F8();
            v30 = sub_25AAC4668();
            (*(v68 + 8))(v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
            v2 = v62;
            if (v30)
            {
              goto LABEL_66;
            }
          }
        }

        else
        {
          v2 = v62;
          if (v28 < 64)
          {
LABEL_34:
            sub_25AAC4908();
          }
        }
      }
    }

    if (sub_25AAC4918() > 64 || sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
    {
      *&v71 = 0x7FFFFFFFFFFFFFFFLL;
      v37 = sub_25AAC4928();
      v38 = sub_25AAC4918();
      if (v37)
      {
        if (v38 < 65)
        {
          goto LABEL_46;
        }
      }

      else if (v38 < 64)
      {
LABEL_46:
        sub_25AAC4908();
        v2 = v62;
        goto LABEL_47;
      }

      MEMORY[0x28223BE20](v38, v39);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v40 = sub_25AAC4668();
      (*(v68 + 8))(v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      v2 = v62;
      if (v40)
      {
        goto LABEL_65;
      }
    }

LABEL_47:
    v41 = sub_25AAC4908();
    (*(v68 + 8))(v22, v18);
    v42 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v71 = v42;
    v44 = v66;
    v45 = sub_25AAA48F0(v83, v66);
    v47 = v42[2];
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
      goto LABEL_63;
    }

    v51 = v46;
    if (v42[3] < v50)
    {
      sub_25AABD218(v50, isUniquelyReferenced_nonNull_native);
      v45 = sub_25AAA48F0(v83, v44);
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_67;
      }

LABEL_52:
      if (v51)
      {
        goto LABEL_6;
      }

      goto LABEL_53;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_52;
    }

    v56 = v45;
    sub_25AAC36B0();
    v45 = v56;
    if (v51)
    {
LABEL_6:
      v11 = v45;

      v4 = v71;
      *(*(v71 + 56) + 8 * v11) = v41;
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      goto LABEL_7;
    }

LABEL_53:
    v4 = v71;
    *(v71 + 8 * (v45 >> 6) + 64) |= 1 << v45;
    v53 = (v4[6] + 16 * v45);
    *v53 = v83;
    v53[1] = v44;
    *(v4[7] + 8 * v45) = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    v54 = v4[2];
    v49 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v49)
    {
      goto LABEL_64;
    }

    v4[2] = v55;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(&v74);
    v9 = v63;
    v5 = v64;
  }

  if (v9 <= v10 + 1)
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v8 = 0;
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v10 = v14;
      v74 = 0u;
      v75 = 0u;
      goto LABEL_19;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = sub_25AAC4B28();
  __break(1u);
  return result;
}

uint64_t sub_25AABF57C(uint64_t a1)
{
  v1 = a1;
  result = sub_25AAB1164(a1, &qword_27FA0FE80, &qword_25AAC54F8, &qword_27FA0FE50, &unk_25AAC5B40);
  if (!result)
  {
    v3 = sub_25AAA4F48(MEMORY[0x277D84F90]);
    v5 = v1 + 64;
    v4 = *(v1 + 64);
    v32 = v3;
    v6 = 1 << *(v1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v4;
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    v33 = v1;
    if (v8)
    {
      while (1)
      {
        v11 = v10;
LABEL_13:
        v14 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v15 = v14 | (v11 << 6);
        sub_25AABFF24(*(v1 + 48) + 40 * v15, v21);
        sub_25AAA5378(*(v1 + 56) + 32 * v15, v20);
        v23 = v21[0];
        v24 = v21[1];
        *&v25 = v22;
        sub_25AAA4B4C(v20, (&v25 + 8));
        v13 = v11;
LABEL_14:
        v30[0] = v25;
        v30[1] = v26;
        v31 = v27;
        v28 = v23;
        v29 = v24;
        if (!*(&v24 + 1))
        {

          return v32;
        }

        sub_25AAA4B4C((v30 + 8), v21);
        v23 = v28;
        v24 = v29;
        *&v25 = *&v30[0];
        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_25;
        }

        v16 = v20[0];
        sub_25AAA5378(v21, v20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
        if (!swift_dynamicCast())
        {

          *&v25 = 0;
          v23 = 0u;
          v24 = 0u;
          sub_25AAA5640(&v23, &qword_27FA10008, &qword_25AAC5AD0);
          goto LABEL_25;
        }

        __swift_project_boxed_opaque_existential_1Tm(&v23, *(&v24 + 1));
        v17 = sub_25AAC4588();
        __swift_destroy_boxed_opaque_existential_1Tm(&v23);
        v18 = sub_25AAB163C(v17);

        if (!v18)
        {
          break;
        }

        sub_25AAB1434(v18, v16, *(&v16 + 1));
        result = __swift_destroy_boxed_opaque_existential_1Tm(v21);
        v10 = v13;
        v1 = v33;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

LABEL_25:
      sub_25AAA5558();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    else
    {
LABEL_6:
      if (v9 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          v8 = 0;
          v27 = 0;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v11);
        ++v10;
        if (v8)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_25AABF8FC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  result = sub_25AAB1164(a1, &qword_27FA0FE78, &qword_25AAC54F0, &qword_27FA10038, &unk_25AAC5B20);
  if (result)
  {
    return result;
  }

  v51 = sub_25AAA4F5C(MEMORY[0x277D84F90]);
  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v37 = v3 + 64;
  v38 = v3;
  v36 = v9;
  while (v8)
  {
    v11 = v10;
LABEL_16:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v11 << 6);
    sub_25AABFF24(*(v3 + 48) + 40 * v15, v40);
    sub_25AAA5378(*(v3 + 56) + 32 * v15, v39);
    v42 = v40[0];
    v43 = v40[1];
    *&v44 = v41;
    sub_25AAA4B4C(v39, (&v44 + 8));
    v13 = v11;
LABEL_17:
    v49[0] = v44;
    v49[1] = v45;
    v50 = v46;
    v47 = v42;
    v48 = v43;
    if (!*(&v43 + 1))
    {

      return v51;
    }

    sub_25AAA4B4C((v49 + 8), v40);
    v42 = v47;
    v43 = v48;
    *&v44 = *&v49[0];
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_35;
    }

    v16 = v39[0];
    sub_25AAA5378(v40, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
    if (!swift_dynamicCast())
    {

      *&v44 = 0;
      v42 = 0u;
      v43 = 0u;
      sub_25AAA5640(&v42, &qword_27FA10018, &qword_25AAC5AE0);
LABEL_35:

      sub_25AAA5558();
      swift_allocError();
      *v35 = 1;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v40);
    }

    __swift_project_boxed_opaque_existential_1Tm(&v42, *(&v43 + 1));
    v17 = sub_25AAC4578();
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    v18 = sub_25AABEC14(v17);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
    }

    v19 = v18;

    v20 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v42 = v20;
    v23 = sub_25AAA48F0(v16, *(&v16 + 1));
    v24 = *(v20 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_39;
    }

    v27 = v22;
    if (*(v20 + 24) >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v30 = v13;
        if (v22)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_25AAC3840();
        v30 = v13;
        if (v27)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_25AABD4B8(v26, isUniquelyReferenced_nonNull_native, &qword_27FA0FE78, &qword_25AAC54F0);
      v28 = sub_25AAA48F0(v16, *(&v16 + 1));
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_41;
      }

      v23 = v28;
      v30 = v13;
      if (v27)
      {
LABEL_5:

        v51 = v42;
        *(*(v42 + 56) + 8 * v23) = v19;

        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        goto LABEL_6;
      }
    }

    v31 = v42;
    *(v42 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    *(v31[6] + 16 * v23) = v16;
    *(v31[7] + 8 * v23) = v19;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v32 = v31[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_40;
    }

    v51 = v31;
    v31[2] = v34;
LABEL_6:
    v10 = v30;
    v5 = v37;
    v3 = v38;
    v2 = 0;
    v9 = v36;
  }

  if (v9 <= v10 + 1)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      v8 = 0;
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      goto LABEL_17;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_25AAC4B28();
  __break(1u);
  return result;
}

char *sub_25AABFD98(uint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  v1 = sub_25AAB9818(a1, &v8);
  v2 = v8;
  if (*(v8 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFD0, &qword_25AAC59B8);
    v3 = sub_25AAC43D8();
    v4 = *(v3 - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_25AAC5400;
    *(v6 + v5) = v2;
    (*(v4 + 104))(v6 + v5, *MEMORY[0x277D41398], v3);

    sub_25AABD8F8(v6);
  }

  return v1;
}

unint64_t sub_25AABFED8()
{
  result = qword_27FA0FED0;
  if (!qword_27FA0FED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA0FED0);
  }

  return result;
}

unint64_t sub_25AABFF80()
{
  result = qword_27FA10048;
  if (!qword_27FA10048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA10048);
  }

  return result;
}

uint64_t sub_25AAC01EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25AAC0234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10090, &qword_25AAC5B68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AAC02A4()
{
  result = qword_27FA100A0;
  if (!qword_27FA100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA100A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MorpheusExtensionsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MorpheusExtensionsError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25AAC0828()
{
  v1 = *v0;
  sub_25AAC4B78();
  MEMORY[0x25F8532E0](qword_25AAC5CD0[v1]);
  return sub_25AAC4B98();
}

uint64_t sub_25AAC08B0(uint64_t a1)
{
  v2 = *v1;
  sub_25AAC4B78();
  MEMORY[0x25F8532E0](qword_25AAC5CD0[v2]);
  return sub_25AAC4B98();
}

uint64_t sub_25AAC08FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25AAC0AA4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_25AAC0944()
{
  result = qword_27FA100F0;
  if (!qword_27FA100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA100F0);
  }

  return result;
}

uint64_t sub_25AAC099C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAC09FC();
  v5 = sub_25AAC0A50();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

unint64_t sub_25AAC09FC()
{
  result = qword_27FA100F8;
  if (!qword_27FA100F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA100F8);
  }

  return result;
}

unint64_t sub_25AAC0A50()
{
  result = qword_27FA10100;
  if (!qword_27FA10100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA10100);
  }

  return result;
}

uint64_t sub_25AAC0AA4(uint64_t a1)
{
  v1 = a1 - 9401;
  result = 1;
  switch(v1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = 9;
      break;
    case 10:
      result = 10;
      break;
    case 30:
      result = 11;
      break;
    case 31:
      result = 12;
      break;
    case 50:
      result = 13;
      break;
    case 51:
      result = 14;
      break;
    case 52:
      result = 15;
      break;
    case 53:
      result = 16;
      break;
    case 54:
      result = 17;
      break;
    case 55:
      result = 18;
      break;
    case 56:
      result = 19;
      break;
    case 57:
      result = 20;
      break;
    case 58:
      result = 21;
      break;
    case 70:
      result = 22;
      break;
    case 71:
      result = 23;
      break;
    case 72:
      result = 24;
      break;
    case 73:
      result = 25;
      break;
    case 80:
      result = 26;
      break;
    case 81:
      result = 27;
      break;
    case 82:
      result = 28;
      break;
    case 83:
      result = 29;
      break;
    case 84:
      result = 30;
      break;
    case 85:
      result = 31;
      break;
    case 86:
      result = 32;
      break;
    default:
      result = 33;
      break;
  }

  return result;
}

uint64_t static Math.extendMorpheus()()
{
  v0 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_25AAC4548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE60, qword_25AAC5580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AAC5560;
  *(inited + 32) = 0x6574696E69667369;
  *(inited + 40) = 0xE800000000000000;
  v3 = MEMORY[0x277D84F90];
  sub_25AAC45D8();
  sub_25AAA4A20(v3);
  v4 = sub_25AAC45B8();
  swift_allocObject();
  *(inited + 48) = sub_25AAC45A8();
  *(inited + 72) = v4;
  *(inited + 80) = 0x65736F6C637369;
  *(inited + 88) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25AAC5560;
  v6 = MEMORY[0x277D839F8];
  *(v5 + 32) = 0x3EB0C6F7A0B5ED8DLL;
  *(v5 + 88) = MEMORY[0x277D83B88];
  *(v5 + 56) = v6;
  *(v5 + 64) = 0;
  sub_25AAC45D8();
  sub_25AAA4A20(v3);
  swift_allocObject();
  v7 = sub_25AAC45A8();
  *(inited + 120) = v4;
  *(inited + 96) = v7;
  sub_25AAA4A20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE68, qword_25AAC5430);
  swift_arrayDestroy();
  sub_25AAC4528();
}

void sub_25AAC1038(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(120, 0xE100000000000000), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v10), sub_25AABFED8(), (swift_dynamicCast() & 1) != 0))
  {
    [v9 doubleValue];
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
    *(a2 + 24) = MEMORY[0x277D839B0];

    *a2 = v7;
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v8 = 11;
    swift_willThrow();
  }
}

void sub_25AAC1138(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(97, 0xE100000000000000), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v29), sub_25AABFED8(), (swift_dynamicCast() & 1) != 0) && (v6 = v30, [v30 floatValue], v8 = v7, v6, *(a1 + 16)) && (v9 = sub_25AAA48F0(98, 0xE100000000000000), (v10 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v9, v29), (swift_dynamicCast() & 1) != 0) && (v11 = v30, objc_msgSend(v30, sel_floatValue), v13 = v12, v11, *(a1 + 16)) && (v14 = sub_25AAA48F0(0x6C6F745F6C6572, 0xE700000000000000), (v15 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v14, v29), (swift_dynamicCast() & 1) != 0) && (v16 = v30, objc_msgSend(v30, sel_floatValue), v18 = v17, v16, *(a1 + 16)) && (v19 = sub_25AAA48F0(0x6C6F745F736261, 0xE700000000000000), (v20 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v19, v29), (swift_dynamicCast() & 1) != 0))
  {
    v21 = v30;
    [v30 floatValue];
    v23 = v22;

    v24 = vabds_f32(v8, v13);
    v25 = fabsf(v8);
    v26 = fabsf(v13);
    if (v25 <= v26)
    {
      v25 = v26;
    }

    v27 = v25 * v18;
    if (v27 <= v23)
    {
      v27 = v23;
    }

    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = v24 <= v27;
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v28 = 12;
    swift_willThrow();
  }
}

uint64_t sub_25AAC13B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC42C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10110, &qword_25AAC5E60);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v31[-1] - v13;
  sub_25AAC4020(a1, v34, &qword_27FA0FE38, &unk_25AAC5410);
  if (!v35)
  {
    goto LABEL_21;
  }

  sub_25AAC4020(v34, v33, &qword_27FA0FE38, &unk_25AAC5410);
  if (swift_dynamicCast())
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    v16 = sub_25AAC4698();

    v17 = [v15 dateFromString_];

    if (v17)
    {
      sub_25AAC42A8();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    (*(v7 + 56))(v14, v18, 1, v6);
    sub_25AAC3FB0(v14, a3);
    goto LABEL_14;
  }

  sub_25AABFED8();
  if (swift_dynamicCast())
  {
    v19 = v31[0];
    [v31[0] doubleValue];
    if (a2)
    {
      sub_25AAC4298();
    }

    else
    {
      sub_25AAC4268();
    }

    (*(v7 + 56))(a3, 0, 1, v6);
    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    (*(v7 + 32))(a3, v10, v6);
    (*(v7 + 56))(a3, 0, 1, v6);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    return sub_25AAA5640(v34, &qword_27FA0FE38, &unk_25AAC5410);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  if (qword_27FA0FE18 != -1)
  {
    swift_once();
  }

  v20 = sub_25AAC44F8();
  __swift_project_value_buffer(v20, qword_27FA10AC0);
  sub_25AAC4020(a1, v33, &qword_27FA0FE38, &unk_25AAC5410);
  v21 = sub_25AAC44D8();
  v22 = sub_25AAC48A8();
  if (!os_log_type_enabled(v21, v22))
  {

    sub_25AAA5640(v33, &qword_27FA0FE38, &unk_25AAC5410);
    goto LABEL_21;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v32 = v24;
  *v23 = 136315138;
  result = sub_25AAC4020(v33, v31, &qword_27FA0FE38, &unk_25AAC5410);
  if (v31[3])
  {
    v26 = sub_25AAC46E8();
    v28 = v27;
    sub_25AAA5640(v33, &qword_27FA0FE38, &unk_25AAC5410);
    v29 = sub_25AAC2BF8(v26, v28, &v32);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_25AAA0000, v21, v22, "Unable to convert %s into Date", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x25F8538C0](v24, -1, -1);
    MEMORY[0x25F8538C0](v23, -1, -1);

LABEL_21:
    (*(v7 + 56))(a3, 1, 1, v6);
    return sub_25AAA5640(v34, &qword_27FA0FE38, &unk_25AAC5410);
  }

  __break(1u);
  return result;
}

uint64_t sub_25AAC1894(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10110, &qword_25AAC5E60);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v47 = &v46 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v46 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v46 - v14;
  v16 = sub_25AAC42C8();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v48 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v50 = &v46 - v22;
  sub_25AAC42B8();
  v52 = a1;

  sub_25AAC32AC(0x6D6954746E657665, 0xEE00706D61747365, &v53);
  sub_25AAA5640(&v53, &qword_27FA0FE38, &unk_25AAC5410);
  sub_25AAC32AC(0x4173646E6F636573, 0xEA00000000006F67, &v53);
  sub_25AAA5640(&v53, &qword_27FA0FE38, &unk_25AAC5410);
  v23 = v52;
  if (*(v52 + 16) && (v24 = sub_25AAA48F0(0x6D6954746E657665, 0xEE00706D61747365), (v25 & 1) != 0))
  {
    sub_25AAA5378(*(v23 + 56) + 32 * v24, &v53);
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  v26 = v49;
  type metadata accessor for BiomeWriter();
  sub_25AAC13B0(&v53, 1, v15);
  sub_25AAA5640(&v53, &qword_27FA0FE38, &unk_25AAC5410);
  if (*(v23 + 16) && (v27 = sub_25AAA48F0(0x4173646E6F636573, 0xEA00000000006F67), (v28 & 1) != 0))
  {
    sub_25AAA5378(*(v23 + 56) + 32 * v27, &v53);
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  sub_25AAC3CB0(&v53);
  v30 = v29;
  sub_25AAA5640(&v53, &qword_27FA0FE38, &unk_25AAC5410);
  if ((v30 & 1) == 0)
  {
    sub_25AAC4020(v15, v12, &qword_27FA10110, &qword_25AAC5E60);
    if ((*(v17 + 48))(v12, 1, v16) == 1)
    {
      sub_25AAA5640(v12, &qword_27FA10110, &qword_25AAC5E60);
      v31 = v47;
      sub_25AAC4288();
      sub_25AAA5640(v15, &qword_27FA10110, &qword_25AAC5E60);
      (*(v17 + 56))(v31, 0, 1, v16);
      sub_25AAC3FB0(v31, v15);
    }

    else
    {
      sub_25AAA5640(v12, &qword_27FA10110, &qword_25AAC5E60);
    }
  }

  v32 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_25AAC1F20(v23);
  v34 = sub_25AAC4608();

  *&v53 = 0;
  v35 = [v32 eventOfType:ObjCClassFromMetadata jsonDictionary:v34 error:&v53];

  v36 = v53;
  if (v35)
  {
    sub_25AAC4020(v15, v26, &qword_27FA10110, &qword_25AAC5E60);
    if ((*(v17 + 48))(v26, 1, v16) == 1)
    {
      v37 = v36;
      sub_25AAA5640(v26, &qword_27FA10110, &qword_25AAC5E60);
      [*(v51 + 16) sendEvent_];

      sub_25AAA5640(v15, &qword_27FA10110, &qword_25AAC5E60);
      (*(v17 + 8))(v50, v16);
    }

    else
    {
      v40 = v48;
      (*(v17 + 32))(v48, v26, v16);
      v41 = *(v51 + 16);
      v42 = v36;
      v43 = v35;
      v44 = sub_25AAC4278();
      [v41 sendEvent:v43 date:v44];

      v45 = *(v17 + 8);
      v45(v40, v16);
      sub_25AAA5640(v15, &qword_27FA10110, &qword_25AAC5E60);
      v45(v50, v16);
    }
  }

  else
  {
    v38 = v53;
    sub_25AAC4258();

    swift_willThrow();
    sub_25AAA5640(v15, &qword_27FA10110, &qword_25AAC5E60);
    (*(v17 + 8))(v50, v16);
  }
}

uint64_t sub_25AAC1F20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10118, &qword_25AAC5E68);
    v2 = sub_25AAC4AB8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_25AAA5378(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_25AAA4B4C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_25AAA4B4C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_25AAA4B4C(v31, v32);
    result = sub_25AAC4968();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_25AAA4B4C(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

double sub_25AAC21E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v6 - 8, v7);
  type metadata accessor for BiomeWriter();
  sub_25AAC2400();
  sub_25AAC4558();
  if (v13)
  {
    sub_25AAA4B4C(&v12, v14);
    sub_25AAA4B4C(v14, a3);
  }

  else
  {
    sub_25AAA5640(&v12, &qword_27FA0FE38, &unk_25AAC5410);
    if (a1 == 6579297 && a2 == 0xE300000000000000 || (sub_25AAC4AF8() & 1) != 0)
    {
      v9 = MEMORY[0x277D84F90];
      sub_25AAC45D8();

      sub_25AAA4A20(v9);
      v10 = sub_25AAC45B8();
      swift_allocObject();
      v11 = sub_25AAC45A8();
      *(a3 + 24) = v10;
      *a3 = v11;
    }

    else
    {
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  return result;
}

unint64_t sub_25AAC2400()
{
  result = qword_27FA10108;
  if (!qword_27FA10108)
  {
    type metadata accessor for BiomeWriter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA10108);
  }

  return result;
}

uint64_t sub_25AAC2454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_25AAA48F0(0x746E657665, 0xE500000000000000), (v6 & 1) == 0))
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    goto LABEL_10;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v5, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_10;
  }

  if (!*(&v15 + 1))
  {
LABEL_10:
    sub_25AAA5640(&v14, &qword_27FA10018, &qword_25AAC5AE0);
LABEL_11:
    sub_25AAA5558();
    swift_allocError();
    *v12 = 32;
    return swift_willThrow();
  }

  sub_25AAA5540(&v14, v17);
  v7 = v18;
  v8 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
  v13[3] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v8, v7);
  sub_25AAC4508();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10128, &unk_25AAC5E80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    goto LABEL_11;
  }

  v10 = v13[0];
  *(a2 + 24) = MEMORY[0x277D84F78] + 8;
  sub_25AAC1894(v10);

  if (v2)
  {
    __swift_deallocate_boxed_opaque_existential_0(a2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

uint64_t sub_25AAC2680(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C1AD18);
  sub_25AAA93C0(&unk_286C1AD38);
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  type metadata accessor for BiomeWriter();
  sub_25AAC2400();
  return sub_25AAC4568() & 1;
}

uint64_t static BiomeWriter.extendMorpheus()()
{
  v0 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_25AAC4548();
  v2 = MEMORY[0x277D84F90];
  sub_25AAA4A20(MEMORY[0x277D84F90]);
  sub_25AAC4528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE60, qword_25AAC5580);
  inited = swift_initStackObject();
  *(inited + 32) = 0x697257656D6F6942;
  *(inited + 16) = xmmword_25AAC5400;
  *(inited + 40) = 0xEB00000000726574;
  sub_25AAC45D8();
  sub_25AAA4A20(v2);
  v4 = sub_25AAC45B8();
  swift_allocObject();
  v5 = sub_25AAC45A8();
  *(inited + 72) = v4;
  *(inited + 48) = v5;
  sub_25AAA4A20(inited);
  swift_setDeallocating();
  sub_25AAA5640(inited + 32, &qword_27FA0FE68, qword_25AAC5430);
  sub_25AAC4528();
}

uint64_t sub_25AAC2930@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(0x6D6165727473, 0xE600000000000000), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v15), (swift_dynamicCast() & 1) != 0))
  {
    v6 = objc_opt_self();
    v7 = sub_25AAC4698();

    v8 = [v6 lookupStreamBase_];

    if (v8)
    {
      v9 = type metadata accessor for BiomeWriter();
      v10 = swift_allocObject();
      *(v10 + 16) = [v8 source];
      v11 = [v8 configuration];
      [v11 eventClass];

      result = swift_getObjCClassMetadata();
      *(v10 + 24) = result;
      a2[3] = v9;
      *a2 = v10;
      return result;
    }

    v13 = 30;
  }

  else
  {
    v13 = 31;
  }

  sub_25AAA5558();
  swift_allocError();
  *v14 = v13;
  return swift_willThrow();
}

uint64_t BiomeWriter.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_25AAC2B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25AAA506C(&unk_286C1AD18);
  sub_25AAA93C0(&unk_286C1AD38);
  v7 = sub_25AAA2D08(a1, a2, v6);

  if (v7)
  {
    return 1;
  }

  type metadata accessor for BiomeWriter();
  return sub_25AAC4568() & 1;
}

unint64_t sub_25AAC2BF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25AAC2CC4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25AAA5378(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_25AAC2CC4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25AAC2DD0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25AAC49E8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25AAC2DD0(uint64_t a1, unint64_t a2)
{
  v3 = sub_25AAC2E1C(a1, a2);
  sub_25AAC2F4C(&unk_286C1ACC0);
  return v3;
}

void *sub_25AAC2E1C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25AAC3038(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25AAC49E8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25AAC4778();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25AAC3038(v10, 0);
        result = sub_25AAC49A8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25AAC2F4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25AAC30AC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25AAC3038(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10120, &unk_25AAC5E70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25AAC30AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10120, &unk_25AAC5E70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_25AAC31A0(uint64_t a1)
{
  v2 = sub_25AAC4968();

  return sub_25AAC31E4(a1, v2);
}

unint64_t sub_25AAC31E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25AABFF24(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F8530D0](v9, a1);
      sub_25AAA5498(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_25AAC32AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_25AAA48F0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25AAC39B4();
      v10 = v12;
    }

    sub_25AAA4B4C((*(v10 + 56) + 32 * v8), a3);
    sub_25AAC3500(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_25AAC3350(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25AAC4958() + 1) & ~v5;
    do
    {
      sub_25AAC4B78();

      sub_25AAC4738();
      v9 = sub_25AAC4B98();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25AAC3500(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25AAC4958() + 1) & ~v5;
    do
    {
      sub_25AAC4B78();

      sub_25AAC4738();
      v10 = sub_25AAC4B98();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_25AAC36B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE70, &qword_25AAC5B10);
  v2 = *v0;
  v3 = sub_25AAC4A98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void *sub_25AAC3854(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25AAC4A98();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

  return result;
}

void *sub_25AAC39B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE98, &unk_25AAC5510);
  v2 = *v0;
  v3 = sub_25AAC4A98();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25AAA5378(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25AAA4B4C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

BOOL sub_25AAC3B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_25AAC49B8();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_25AAC3CB0(uint64_t a1)
{
  sub_25AAC4020(a1, v19, &qword_27FA0FE38, &unk_25AAC5410);
  if (!v20)
  {
    goto LABEL_15;
  }

  sub_25AAC4020(v19, v18, &qword_27FA0FE38, &unk_25AAC5410);
  if (swift_dynamicCast())
  {
    v17 = 0;
    v2 = sub_25AAC3B58(v16[0], v16[1], &v17);

    if (v2)
    {
      v3 = v17;
    }

    else
    {
      v3 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    goto LABEL_16;
  }

  sub_25AABFED8();
  if (swift_dynamicCast())
  {
    [v16[0] doubleValue];
    v5 = v4;

    v3 = v5;
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
LABEL_16:
    sub_25AAA5640(v19, &qword_27FA0FE38, &unk_25AAC5410);
    return v3;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  if (qword_27FA0FE18 != -1)
  {
    swift_once();
  }

  v6 = sub_25AAC44F8();
  __swift_project_value_buffer(v6, qword_27FA10AC0);
  sub_25AAC4020(a1, v18, &qword_27FA0FE38, &unk_25AAC5410);
  v7 = sub_25AAC44D8();
  v8 = sub_25AAC48A8();
  if (!os_log_type_enabled(v7, v8))
  {

    sub_25AAA5640(v18, &qword_27FA0FE38, &unk_25AAC5410);
    goto LABEL_15;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v17 = v10;
  *v9 = 136315138;
  result = sub_25AAC4020(v18, v16, &qword_27FA0FE38, &unk_25AAC5410);
  if (v16[3])
  {
    v12 = sub_25AAC46E8();
    v14 = v13;
    sub_25AAA5640(v18, &qword_27FA0FE38, &unk_25AAC5410);
    v15 = sub_25AAC2BF8(v12, v14, &v17);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_25AAA0000, v7, v8, "Unable to convert %s into Double", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x25F8538C0](v10, -1, -1);
    MEMORY[0x25F8538C0](v9, -1, -1);

LABEL_15:
    v3 = 0;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25AAC3FB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10110, &qword_25AAC5E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AAC4020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_BYTE *sub_25AAC4088@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}