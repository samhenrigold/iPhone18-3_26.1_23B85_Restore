double BMSQLDatabase.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v8 - 8, v9);
  sub_25AAA55AC(0, &qword_27FA0FE28, 0x277CF1A88);
  sub_25AAA51D4(&qword_27FA0FE30, &qword_27FA0FE28, 0x277CF1A88, &protocol conformance descriptor for BMSQLDatabase);
  sub_25AAC4558();
  if (v16)
  {
    sub_25AAA4B4C(&v15, v17);
    sub_25AAA4B4C(v17, a3);
  }

  else
  {
    sub_25AAA5640(&v15, &qword_27FA0FE38, &unk_25AAC5410);
    if (a1 == 0x5F65747563657865 && a2 == 0xED00007972657571 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x7265747369676572 && a2 == 0xEC0000006664755FLL || (sub_25AAC4AF8() & 1) != 0)
    {
      v11 = MEMORY[0x277D84F90];
      sub_25AAC45D8();
      *(swift_allocObject() + 16) = v4;
      v12 = v4;
      sub_25AAA4A20(v11);
      v13 = sub_25AAC45B8();
      swift_allocObject();
      v14 = sub_25AAC45A8();
      *(a3 + 24) = v13;
      *a3 = v14;
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

void sub_25AAA1DD0(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_25AAA48F0(0x6E656D6574617473, 0xE900000000000074), (v6 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v5, v10), (swift_dynamicCast() & 1) != 0))
  {
    v7 = sub_25AAC4898();

    v8 = v7;
    sub_25AAA4B5C(v8);

    if (v2)
    {
    }

    else
    {
      a2[3] = sub_25AAA55AC(0, &qword_27FA0FE40, 0x277CF1A98);
      *a2 = v8;
    }
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v9 = 27;
    swift_willThrow();
  }
}

uint64_t sub_25AAA1F0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v68 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

  v6 = sub_25AAA48F0(1701667182, 0xE400000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v6, &aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!*(a1 + 16) || (v8 = sub_25AAA48F0(0x736772615F6D756ELL, 0xE800000000000000), (v9 & 1) == 0))
  {

    aBlock = 0u;
    v61 = 0u;
    v62 = 0;
LABEL_19:
    sub_25AAA5640(&aBlock, &qword_27FA0FEE8, &unk_25AAC5540);
LABEL_20:
    sub_25AAA5558();
    swift_allocError();
    *v21 = 29;
    return swift_willThrow();
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v8, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v62 = 0;
    aBlock = 0u;
    v61 = 0u;
    goto LABEL_18;
  }

  if (!*(&v61 + 1))
  {
LABEL_18:

    goto LABEL_19;
  }

  sub_25AAA5540(&aBlock, &v65);
  if (!*(a1 + 16) || (v10 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000), (v11 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v10, &aBlock), sub_25AAC45B8(), (swift_dynamicCast() & 1) == 0))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v65);
    goto LABEL_20;
  }

  v12 = *&v64[0];
  *(a3 + 24) = MEMORY[0x277D84F78] + 8;
  v59 = sub_25AAC4698();

  v13 = v66;
  v14 = v67;
  v15 = __swift_project_boxed_opaque_existential_1Tm(&v65, v66);
  v58 = v54;
  v16 = *(v13 - 8);
  MEMORY[0x28223BE20](v15, v15);
  v56 = v17;
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18);
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() <= 32)
  {
    goto LABEL_33;
  }

  LODWORD(aBlock) = 0x80000000;
  if ((sub_25AAC4928() & 1) == 0)
  {
    v57 = v12;
    v23 = sub_25AAC4928();
    v24 = sub_25AAC4918();
    if (v23)
    {
      if (v24 > 32)
      {
        v55 = v54;
        MEMORY[0x28223BE20](v24, v25);
        v27 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAA57B8();
        sub_25AAC48F8();
        v28 = sub_25AAC4668();
        result = (*(v16 + 8))(v27, v13);
        v12 = v57;
        if (v28)
        {
          goto LABEL_47;
        }

        goto LABEL_33;
      }

      v55 = *(*(v14 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v54[2] = v54;
      MEMORY[0x28223BE20](AssociatedTypeWitness, v34);
      v54[0] = v54 - v35;
      swift_getAssociatedConformanceWitness();
      v36 = sub_25AAC4B18();
      v54[1] = v54;
      MEMORY[0x28223BE20](v36, v37);
      v39 = v54 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAC4AD8();
      v40 = sub_25AAC4668();
      result = (*(v16 + 8))(v39, v13);
      if (v40)
      {
        goto LABEL_47;
      }
    }

    else if (v24 >= 32)
    {
      goto LABEL_32;
    }

    sub_25AAC4908();
LABEL_32:
    v12 = v57;
    goto LABEL_33;
  }

  v19 = sub_25AAC4918();
  if (v19 < 32)
  {
    sub_25AAC4908();
    goto LABEL_33;
  }

  v55 = v54;
  MEMORY[0x28223BE20](v19, v20);
  v57 = v12;
  v30 = v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AAA57B8();
  sub_25AAC48F8();
  v31 = sub_25AAC4668();
  v32 = v30;
  v12 = v57;
  result = (*(v16 + 8))(v32, v13);
  if (v31)
  {
LABEL_47:
    __break(1u);
    return result;
  }

LABEL_33:
  if (sub_25AAC4918() <= 32)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v57 = v12;
    LODWORD(aBlock) = 0x7FFFFFFF;
    v41 = sub_25AAC4928();
    v42 = sub_25AAC4918();
    if ((v41 & 1) == 0)
    {
      break;
    }

    if (v42 < 33)
    {
      goto LABEL_42;
    }

LABEL_36:
    v55 = v54;
    MEMORY[0x28223BE20](v42, v43);
    v45 = v54 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA57B8();
    sub_25AAC48F8();
    v46 = sub_25AAC4668();
    (*(v16 + 8))(v45, v13);
    v12 = v57;
    if (v46)
    {
      __break(1u);
LABEL_38:
      if (sub_25AAC4918() == 32 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  if (v42 >= 32)
  {
    goto LABEL_36;
  }

LABEL_42:
  sub_25AAC4908();
  v12 = v57;
LABEL_43:
  v47 = sub_25AAC4908();
  (*(v16 + 8))(v18, v13);
  sub_25AAA56A0(&v65, v64);
  v48 = swift_allocObject();
  sub_25AAA5540(v64, v48 + 16);
  *(v48 + 56) = v12;
  v62 = sub_25AAA5744;
  v63 = v48;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v61 = sub_25AAA2AA4;
  *(&v61 + 1) = &block_descriptor;
  v49 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v50 = v59;
  v51 = [a2 registerFunctionWithName:v59 numArgs:v47 function:v49 error:&aBlock];
  _Block_release(v49);

  if (v51)
  {
    v52 = aBlock;
  }

  else
  {
    v53 = aBlock;
    sub_25AAC4258();

    swift_willThrow();

    __swift_deallocate_boxed_opaque_existential_0(a3);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&v65);
}

double sub_25AAA2870@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = a3[3];
  __swift_project_boxed_opaque_existential_1Tm(a3, v9);
  v10 = *(a1 + 16);
  v11 = sub_25AAC4928();
  v12 = sub_25AAC4918();
  if (v11)
  {
    if (v12 <= 64)
    {
      goto LABEL_3;
    }

LABEL_7:
    v21[0] = v21;
    v21[1] = a4;
    v16 = *(v9 - 8);
    MEMORY[0x28223BE20](v12, v13);
    v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21[3] = v10;
    sub_25AAA54EC();
    sub_25AAC48F8();
    v19 = sub_25AAC4688();
    (*(v16 + 8))(v18, v9);
    if ((v19 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    sub_25AAA4A20(MEMORY[0x277D84F90]);
    sub_25AAC4598();

    return result;
  }

  if (v12 > 63)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v10 == sub_25AAC4908())
  {
    goto LABEL_8;
  }

LABEL_4:
  if (a2)
  {
    sub_25AAA5558();
    v14 = swift_allocError();
    *v15 = 28;
    *a2 = sub_25AAC4248();
  }

  result = 0.0;
  *a5 = 0u;
  a5[1] = 0u;
  return result;
}

id sub_25AAA2AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_25AAC47D8();

  v4(v13, v5, a3);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7, v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_25AAC4AE8();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

Swift::Bool __swiftcall BMSQLDatabase.has(attribute:)(Swift::String attribute)
{
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v3 = sub_25AAA506C(&unk_286C19A30);
  swift_arrayDestroy();
  v4 = sub_25AAA2D08(countAndFlagsBits, object, v3);

  if (v4)
  {
    return 1;
  }

  sub_25AAA55AC(0, &qword_27FA0FE28, 0x277CF1A88);
  sub_25AAA51D4(&qword_27FA0FE30, &qword_27FA0FE28, 0x277CF1A88, &protocol conformance descriptor for BMSQLDatabase);
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAA2D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25AAC4B78();
  sub_25AAC4738();
  v6 = sub_25AAC4B98();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_25AAC4AF8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25AAA2E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25AAA506C(&unk_286C19A30);
  swift_arrayDestroy();
  v7 = sub_25AAA2D08(a1, a2, v6);

  if (v7)
  {
    return 1;
  }

  sub_25AAA55AC(0, &qword_27FA0FE28, 0x277CF1A88);
  return sub_25AAC4568() & 1;
}

double BMSQLResultSet.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v8 - 8, v9);
  sub_25AAA55AC(0, &qword_27FA0FE40, 0x277CF1A98);
  sub_25AAA51D4(&qword_27FA0FE48, &qword_27FA0FE40, 0x277CF1A98, &protocol conformance descriptor for BMSQLResultSet);
  sub_25AAC4558();
  if (v21)
  {
    sub_25AAA4B4C(&v20, v22);
    sub_25AAA4B4C(v22, a3);
    return result;
  }

  sub_25AAA5640(&v20, &qword_27FA0FE38, &unk_25AAC5410);
  if (a1 == 0x72615F64315F7361 && a2 == 0xEB00000000796172 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_25AAC5400;
    *(v11 + 56) = MEMORY[0x277D83B88];
    *(v11 + 32) = 0;
    v12 = MEMORY[0x277D84F90];
    sub_25AAC45D8();
    *(swift_allocObject() + 16) = v4;
    v13 = v4;
    sub_25AAA4A20(v12);
    v14 = sub_25AAC45B8();
    swift_allocObject();
LABEL_7:
    v15 = sub_25AAC45A8();
    *(a3 + 24) = v14;
    *a3 = v15;
    return result;
  }

  if (a1 == 0x72615F64325F7361 && a2 == 0xEB00000000796172 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x726F6365725F7361 && a2 == 0xEA00000000007364 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x72616C616373 && a2 == 0xE600000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    v16 = MEMORY[0x277D84F90];
    sub_25AAC45D8();
    *(swift_allocObject() + 16) = v4;
    v17 = v4;
    sub_25AAA4A20(v16);
    v14 = sub_25AAC45B8();
    swift_allocObject();
    goto LABEL_7;
  }

  if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    v18 = [v3 columns];
    v19 = sub_25AAC47D8();

    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE50, &unk_25AAC5B40);
    *a3 = v19;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25AAA34B8(uint64_t a1, void *a2)
{
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(0x6E6D756C6F63, 0xE600000000000000), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v52), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEB8, &qword_25AAC5520), (swift_dynamicCast() & 1) != 0) && v51)
  {
    sub_25AAA5540(&v50, v52);
  }

  else
  {
    v53 = MEMORY[0x277D83B88];
    v54 = sub_25AAA5444();
    v52[0] = 0;
  }

  v6 = [a2 columns];
  v7 = sub_25AAC47D8();

  v9 = v53;
  v8 = v54;
  v10 = __swift_project_boxed_opaque_existential_1Tm(v52, v53);
  v55 = v45;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v10);
  (*(v11 + 16))(v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v8 + 8);
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() <= 64)
  {
    goto LABEL_20;
  }

  *&v50 = 0x8000000000000000;
  if (sub_25AAC4928())
  {
    v14 = sub_25AAC4918();
    if (v14 < 64)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v16 = sub_25AAC4928();
  v14 = sub_25AAC4918();
  if (v16)
  {
    if (v14 <= 64)
    {
      v46 = *(*(v13 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v45[2] = v45;
      MEMORY[0x28223BE20](AssociatedTypeWitness, v20);
      v45[0] = v45 - v21;
      swift_getAssociatedConformanceWitness();
      v22 = sub_25AAC4B18();
      v45[1] = v45;
      MEMORY[0x28223BE20](v22, v23);
      sub_25AAC4AD8();
      v24 = sub_25AAC4668();
      result = (*(v11 + 8))(v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      if (v24)
      {
LABEL_47:
        __break(1u);
        return result;
      }

      goto LABEL_19;
    }

LABEL_14:
    v46 = v45;
    MEMORY[0x28223BE20](v14, v15);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v17 = sub_25AAC4668();
    result = (*(v11 + 8))(v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    if (v17)
    {
      goto LABEL_47;
    }

    goto LABEL_20;
  }

  if (v14 < 64)
  {
LABEL_19:
    sub_25AAC4908();
  }

LABEL_20:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_25;
  }

  while (1)
  {
    *&v50 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = sub_25AAC4928();
    v26 = sub_25AAC4918();
    if ((v25 & 1) == 0)
    {
      break;
    }

    if (v26 < 65)
    {
      goto LABEL_29;
    }

LABEL_23:
    v46 = v45;
    MEMORY[0x28223BE20](v26, v27);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v28 = sub_25AAC4668();
    (*(v11 + 8))(v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    if (v28)
    {
      __break(1u);
LABEL_25:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_30;
  }

  if (v26 >= 64)
  {
    goto LABEL_23;
  }

LABEL_29:
  sub_25AAC4908();
LABEL_30:
  v29 = sub_25AAC4908();
  result = (*(v11 + 8))(v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v29 >= *(v7 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v30 = v7 + 16 * v29;
  v32 = *(v30 + 32);
  v31 = *(v30 + 40);

  v33 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84030];
  while ([a2 next])
  {
    v35 = [a2 row];
    if (v35)
    {
      v36 = v35;
      v37 = v34;
      v38 = sub_25AAC4618();

      *&v49 = v32;
      *(&v49 + 1) = v31;

      sub_25AAC4988();
      if (*(v38 + 16) && (v39 = sub_25AAC31A0(&v50), (v40 & 1) != 0))
      {
        sub_25AAA5378(*(v38 + 56) + 32 * v39, v48);
        sub_25AAA5498(&v50);
      }

      else
      {

        sub_25AAA5498(&v50);
        memset(v48, 0, sizeof(v48));
      }

      sub_25AAC4518();
      sub_25AAA5640(v48, &qword_27FA0FE38, &unk_25AAC5410);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_25AAAC4D8(0, *(v33 + 2) + 1, 1, v33);
      }

      v42 = *(v33 + 2);
      v41 = *(v33 + 3);
      if (v42 >= v41 >> 1)
      {
        v33 = sub_25AAAC4D8((v41 > 1), v42 + 1, 1, v33);
      }

      *(v33 + 2) = v42 + 1;
      sub_25AAA4B4C(&v49, &v33[32 * v42 + 32]);
      v34 = v37;
    }
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
  v44 = v47;
  v47[3] = v43;
  *v44 = v33;
  return __swift_destroy_boxed_opaque_existential_1Tm(v52);
}

uint64_t sub_25AAA3C94@<X0>(id a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v29 = MEMORY[0x277D84F90];
  while ([a1 next])
  {
    v6 = [a1 row];
    if (v6)
    {
      v23 = a2;
      v24 = v3;
      v7 = v6;
      v8 = sub_25AAC4618();

      v9 = [a1 columns];
      v10 = sub_25AAC47D8();

      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = (v10 + 40);
        v13 = MEMORY[0x277D84F90];
        do
        {
          v14 = *v12;
          *&v28 = *(v12 - 1);
          *(&v28 + 1) = v14;

          sub_25AAC4988();
          if (*(v8 + 16) && (v15 = sub_25AAC31A0(&v26), (v16 & 1) != 0))
          {
            sub_25AAA5378(*(v8 + 56) + 32 * v15, v25);
            sub_25AAA5498(&v26);
          }

          else
          {
            sub_25AAA5498(&v26);
            memset(v25, 0, sizeof(v25));
          }

          sub_25AAC4518();
          sub_25AAA5640(v25, &qword_27FA0FE38, &unk_25AAC5410);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_25AAAC4D8(0, *(v13 + 2) + 1, 1, v13);
          }

          v18 = *(v13 + 2);
          v17 = *(v13 + 3);
          if (v18 >= v17 >> 1)
          {
            v13 = sub_25AAAC4D8((v17 > 1), v18 + 1, 1, v13);
          }

          *(v13 + 2) = v18 + 1;
          sub_25AAA4B4C(&v28, &v13[32 * v18 + 32]);
          v12 += 2;
          --v11;
        }

        while (v11);
      }

      else
      {

        v13 = MEMORY[0x277D84F90];
      }

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
      *&v26 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_25AAAC4D8(0, *(v29 + 2) + 1, 1, v29);
      }

      a2 = v23;
      v3 = v24;
      v20 = *(v29 + 2);
      v19 = *(v29 + 3);
      if (v20 >= v19 >> 1)
      {
        v29 = sub_25AAAC4D8((v19 > 1), v20 + 1, 1, v29);
      }

      v21 = v29;
      *(v29 + 2) = v20 + 1;
      sub_25AAA4B4C(&v26, &v21[32 * v20 + 32]);
    }
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
  a2[3] = result;
  *a2 = v29;
  return result;
}

char *sub_25AAA3FA8@<X0>(id a1@<X1>, char **a2@<X8>)
{
  v3 = v2;
  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F70];
  v8 = MEMORY[0x277D84030];
  while ([a1 next])
  {
    v9 = [a1 row];
    if (v9)
    {
      v19 = v3;
      v10 = v7;
      v11 = v9;
      v12 = v8;
      v13 = sub_25AAC4618();

      v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEC0, &qword_25AAC5528);
      v17[0] = v13;
      sub_25AAC4518();
      sub_25AAA5640(v17, &qword_27FA0FE38, &unk_25AAC5410);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_25AAAC4D8(0, *(v6 + 2) + 1, 1, v6);
      }

      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        v6 = sub_25AAAC4D8((v14 > 1), v15 + 1, 1, v6);
      }

      *(v6 + 2) = v15 + 1;
      sub_25AAA4B4C(v18, &v6[32 * v15 + 32]);
      v7 = v10;
      v8 = v12;
      v3 = v19;
    }
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
  a2[3] = result;
  *a2 = v6;
  return result;
}

void sub_25AAA414C(int a1, id a2)
{
  if (![a2 next] || (v3 = objc_msgSend(a2, sel_row)) == 0)
  {
LABEL_9:
    sub_25AAA5558();
    swift_allocError();
    *v13 = 26;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = sub_25AAC4618();

  v6 = [a2 columns];
  v7 = sub_25AAC47D8();

  if (v7[2])
  {
    v9 = v7[4];
    v8 = v7[5];

    *&v14[0] = v9;
    *(&v14[0] + 1) = v8;
    sub_25AAC4988();
    if (*(v5 + 16) && (v10 = sub_25AAC31A0(v15), (v11 & 1) != 0))
    {
      sub_25AAA5378(*(v5 + 56) + 32 * v10, v14);
      sub_25AAA5498(v15);

      sub_25AAA4B4C(v14, v16);
      sub_25AAA5378(v16, v15);
      sub_25AAA55AC(0, &qword_27FA0FED0, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v12 = *&v14[0];
        sub_25AAC48B8();

        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        return;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {

      sub_25AAA5498(v15);
    }

    goto LABEL_9;
  }

  __break(1u);
}

Swift::Bool __swiftcall BMSQLResultSet.has(attribute:)(Swift::String attribute)
{
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v3 = sub_25AAA506C(&unk_286C19AA0);
  swift_arrayDestroy();
  v4 = sub_25AAA2D08(countAndFlagsBits, object, v3);

  if (v4)
  {
    return 1;
  }

  sub_25AAA55AC(0, &qword_27FA0FE40, 0x277CF1A98);
  sub_25AAA51D4(&qword_27FA0FE48, &qword_27FA0FE40, 0x277CF1A98, &protocol conformance descriptor for BMSQLResultSet);
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAA445C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25AAA506C(&unk_286C19AA0);
  swift_arrayDestroy();
  v7 = sub_25AAA2D08(a1, a2, v6);

  if (v7)
  {
    return 1;
  }

  sub_25AAA55AC(0, &qword_27FA0FE40, 0x277CF1A98);
  return sub_25AAC4568() & 1;
}

uint64_t static Biome.extendMorpheus()()
{
  v0 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_25AAC4548();
  v2 = MEMORY[0x277D84F90];
  sub_25AAA4A20(MEMORY[0x277D84F90]);
  sub_25AAC4528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE60, qword_25AAC5580);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6573616261746144;
  *(inited + 16) = xmmword_25AAC5400;
  *(inited + 40) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25AAC5400;
  *(v4 + 56) = MEMORY[0x277D839B0];
  *(v4 + 32) = 0;
  sub_25AAC45D8();
  sub_25AAA4A20(v2);
  v5 = sub_25AAC45B8();
  swift_allocObject();
  v6 = sub_25AAC45A8();
  *(inited + 72) = v5;
  *(inited + 48) = v6;
  sub_25AAA4A20(inited);
  swift_setDeallocating();
  sub_25AAA5640(inited + 32, &qword_27FA0FE68, qword_25AAC5430);
  sub_25AAC4528();
}

uint64_t sub_25AAA4768@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(0xD000000000000015, 0x800000025AAC5F00), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v10), swift_dynamicCast()))
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CF1A88]) initWithPrivileges:0 isColumnAccessLoggingEnabled:v6];
  result = sub_25AAA55AC(0, &qword_27FA0FE28, 0x277CF1A88);
  a2[3] = result;
  *a2 = v7;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25AAA489C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_25AAA48F0(uint64_t a1, uint64_t a2)
{
  sub_25AAC4B78();
  sub_25AAC4738();
  v4 = sub_25AAC4B98();

  return sub_25AAA4968(a1, a2, v4);
}

unint64_t sub_25AAA4968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25AAC4AF8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25AAA4A20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE98, &unk_25AAC5510);
    v3 = sub_25AAC4AB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_25AAA53D4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_25AAA48F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25AAA4B4C(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_25AAA4B4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_25AAA4B5C(void *a1)
{
  v2 = sub_25AAC44F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v8 = result;
    sub_25AAC42F8();
    v9 = v8;
    v10 = sub_25AAC44D8();
    v11 = sub_25AAC48A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v8;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_25AAA0000, v10, v11, "%@", v12, 0xCu);
      sub_25AAA5640(v13, &qword_27FA0FEE0, &qword_25AAC5538);
      MEMORY[0x25F8538C0](v13, -1, -1);
      MEMORY[0x25F8538C0](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_25AAA4D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE90, &qword_25AAC5508);
    v3 = sub_25AAC4AB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25AAA48F0(v5, v6);
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

unint64_t sub_25AAA4E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE70, &qword_25AAC5B10);
    v3 = sub_25AAC4AB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25AAA48F0(v5, v6);
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

unint64_t sub_25AAA4F70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_25AAC4AB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_25AAA48F0(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_25AAA506C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FED8, &qword_25AAC5530);
    v3 = sub_25AAC4998();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_25AAC4B78();

      sub_25AAC4738();
      result = sub_25AAC4B98();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_25AAC4AF8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_25AAA51D4(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_25AAA55AC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Biome(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Biome(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_25AAA5378(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25AAA53D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE68, qword_25AAC5430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AAA5444()
{
  result = qword_27FA0FEA0;
  if (!qword_27FA0FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FEA0);
  }

  return result;
}

unint64_t sub_25AAA54EC()
{
  result = qword_27FA0FEB0;
  if (!qword_27FA0FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FEB0);
  }

  return result;
}

uint64_t sub_25AAA5540(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_25AAA5558()
{
  result = qword_27FA0FEC8;
  if (!qword_27FA0FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FEC8);
  }

  return result;
}

uint64_t sub_25AAA55AC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_25AAA5640(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25AAA56A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25AAA5704()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x25F8538C0);
  }

  return result;
}

unint64_t sub_25AAA57B8()
{
  result = qword_27FA0FEF8;
  if (!qword_27FA0FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FEF8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_25AAA5868()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);

  result = sub_25AAA9218(v3, v2, 0);
  if (v1)
  {

    return 0;
  }

  return result;
}

uint64_t sub_25AAA58D8@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF18, &qword_25AAC5740);
  a1[4] = sub_25AAA968C(&qword_27FA0FF20, &qword_27FA0FF18, &qword_25AAC5740, MEMORY[0x277D85AC0]);
  __swift_allocate_boxed_opaque_existential_1(a1);

  result = sub_25AAC42D8();
  if (v1)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a1);
  }

  return result;
}

uint64_t sub_25AAA5998()
{
  v1 = *v0;

  return v1;
}

id sub_25AAA59C8()
{
  v1 = sub_25AAC46D8();
  MEMORY[0x28223BE20](v1 - 8, v2);
  sub_25AAC46C8();
  v3 = sub_25AAC46B8();
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = v4;
  v7 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25AAA9218(v5, v6, 0);
  if (v0)
  {

    return 0;
  }

  return result;
}

uint64_t sub_25AAA5AA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25AAC46D8();
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_25AAC46C8();
  result = sub_25AAC46B8();
  if (v6)
  {
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF18, &qword_25AAC5740);
    *(a1 + 32) = sub_25AAA968C(&qword_27FA0FF20, &qword_27FA0FF18, &qword_25AAC5740, MEMORY[0x277D85AC0]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    result = sub_25AAC42D8();
    if (v1)
    {
      return __swift_deallocate_boxed_opaque_existential_0(a1);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25AAA5BD8()
{
  v0 = sub_25AAC46D8();
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_25AAC46C8();
  return sub_25AAC46B8();
}

double NSRegularExpression.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v8 - 8, v9);
  sub_25AAA55AC(0, &qword_27FA0FF00, 0x277CCAC68);
  sub_25AAA915C();
  sub_25AAC4558();
  if (v20)
  {
    sub_25AAA4B4C(&v19, v21);
    sub_25AAA4B4C(v21, a3);
    return result;
  }

  sub_25AAA5640(&v19, &qword_27FA0FE38, &unk_25AAC5410);
  if (a1 == 0x6C6C61646E6966 && a2 == 0xE700000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25AAC45D8();
    *(swift_allocObject() + 16) = v4;
    v12 = v4;
    sub_25AAA4A20(v11);
    v13 = sub_25AAC45B8();
    swift_allocObject();
LABEL_7:
    v14 = sub_25AAC45A8();
    *(a3 + 24) = v13;
    *a3 = v14;
    return result;
  }

  if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x686374616DLL && a2 == 0xE500000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D83B88];
    *(v15 + 16) = xmmword_25AAC5560;
    *(v15 + 56) = v16;
    *(v15 + 32) = 0;
    *(v15 + 64) = 0u;
    *(v15 + 80) = 0u;
    v17 = MEMORY[0x277D84F90];
    sub_25AAC45D8();
    *(swift_allocObject() + 16) = v4;
    v18 = v4;
    sub_25AAA4A20(v17);
    v13 = sub_25AAC45B8();
    swift_allocObject();
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_25AAA60F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 16) && (v5 = v3, v8 = sub_25AAA48F0(0x676E69727473, 0xE600000000000000), (v9 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v8, v37), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v35;
    v11 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v11 = v35;
    }

    v12 = 7;
    if (((v36 >> 60) & ((v35 & 0x800000000000000) == 0)) != 0)
    {
      v12 = 11;
    }

    v37[0] = 15;
    v37[1] = v12 | (v11 << 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF58, &qword_25AAC5770);
    sub_25AAA968C(&qword_27FA0FF60, &qword_27FA0FF58, &qword_25AAC5770, MEMORY[0x277D83D30]);
    sub_25AAA9638();
    v13 = sub_25AAC48C8();
    v15 = v14;
    v16 = sub_25AAC4698();
    v17 = [a2 matchesInString:v16 options:0 range:{v13, v15}];

    sub_25AAA55AC(0, &qword_27FA0FF50, 0x277CCACC0);
    v18 = sub_25AAC47D8();

    if (v18 >> 62)
    {
      goto LABEL_25;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      while (1)
      {
        v32 = a3;
        v33 = v5;
        v37[0] = MEMORY[0x277D84F90];
        result = sub_25AABCCA0(0, v19 & ~(v19 >> 63), 0);
        if (v19 < 0)
        {
          break;
        }

        v21 = 0;
        v22 = v37[0];
        v34 = v10;
        while (!__OFADD__(v21, 1))
        {
          v38 = v21 + 1;
          if ((v18 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x25F853130](v21, v18);
          }

          else
          {
            if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v23 = *(v18 + 8 * v21 + 32);
          }

          v24 = v23;
          [v23 range];
          result = sub_25AAC4888();
          if (v25)
          {
            goto LABEL_29;
          }

          v26 = sub_25AAC47A8();
          v27 = MEMORY[0x25F852E70](v26);
          a3 = v28;

          v37[0] = v22;
          v5 = *(v22 + 16);
          v29 = *(v22 + 24);
          if (v5 >= v29 >> 1)
          {
            sub_25AABCCA0((v29 > 1), v5 + 1, 1);
            v22 = v37[0];
          }

          *(v22 + 16) = v5 + 1;
          v30 = v22 + 16 * v5;
          *(v30 + 32) = v27;
          *(v30 + 40) = a3;
          ++v21;
          v10 = v34;
          if (v38 == v19)
          {

            a3 = v32;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v19 = sub_25AAC4A88();
        if (!v19)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
    }

    else
    {
LABEL_26:

      v22 = MEMORY[0x277D84F90];
LABEL_27:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE50, &unk_25AAC5B40);
      a3[3] = result;
      *a3 = v22;
    }
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v31 = 13;
    return swift_willThrow();
  }

  return result;
}

void *sub_25AAA64B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v6 = sub_25AAA48F0(0x676E69727473, 0xE600000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v6, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 16) || (v8 = sub_25AAA48F0(7565168, 0xE300000000000000), (v9 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v8, v22), sub_25AAA55AC(0, &qword_27FA0FED0, 0x277CCABB0), (swift_dynamicCast() & 1) == 0))
  {

LABEL_12:
    sub_25AAA5558();
    swift_allocError();
    *v13 = 20;
    return swift_willThrow();
  }

  v23 = [v20 integerValue];

  if (*(a1 + 16) && (v10 = sub_25AAA48F0(0x736F70646E65, 0xE600000000000000), (v11 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v10, v22), (swift_dynamicCast() & 1) != 0))
  {
    v12 = [v20 integerValue];
  }

  else
  {
    v12 = sub_25AAC4748();
  }

  v15 = v23;
  if (v23 < 0 || (v16 = &v12[-v23], v12 <= v23) || sub_25AAC4748() < v12)
  {

    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v17 = sub_25AAC4698();
    v18 = [a2 firstMatchInString:v17 options:0 range:{v15, v16}];

    if (v18)
    {
      v19 = type metadata accessor for RegexMatch();
      result = swift_allocObject();
      result[2] = v18;
      result[3] = v20;
      result[4] = v21;
      *(a3 + 24) = v19;
      *a3 = result;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  return result;
}

void *RegexMatch.__allocating_init(match:string:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *sub_25AAA67A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v6 = sub_25AAA48F0(0x676E69727473, 0xE600000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v6, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 16) || (v8 = sub_25AAA48F0(7565168, 0xE300000000000000), (v9 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v8, v22), sub_25AAA55AC(0, &qword_27FA0FED0, 0x277CCABB0), (swift_dynamicCast() & 1) == 0))
  {

LABEL_12:
    sub_25AAA5558();
    swift_allocError();
    *v13 = 21;
    return swift_willThrow();
  }

  v23 = [v20 integerValue];

  if (*(a1 + 16) && (v10 = sub_25AAA48F0(0x736F70646E65, 0xE600000000000000), (v11 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v10, v22), (swift_dynamicCast() & 1) != 0))
  {
    v12 = [v20 integerValue];
  }

  else
  {
    v12 = sub_25AAC4748();
  }

  v15 = v23;
  if ((v23 & 0x8000000000000000) == 0)
  {
    v16 = &v12[-v23];
    if (v12 > v23 && sub_25AAC4748() >= v12)
    {
      v17 = sub_25AAC4698();
      v18 = [a2 firstMatchInString:v17 options:0 range:{v15, v16}];

      if (v18)
      {
        if ([v18 range] == v15)
        {
          v19 = type metadata accessor for RegexMatch();
          result = swift_allocObject();
          result[2] = v18;
          result[3] = v20;
          result[4] = v21;
          *(a3 + 24) = v19;
          *a3 = result;
          return result;
        }
      }
    }
  }

  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

Swift::Bool __swiftcall NSRegularExpression.has(attribute:)(Swift::String attribute)
{
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v3 = sub_25AAA506C(&unk_286C19C10);
  swift_arrayDestroy();
  v4 = sub_25AAA2D08(countAndFlagsBits, object, v3);

  if (v4)
  {
    return 1;
  }

  sub_25AAA55AC(0, &qword_27FA0FF00, 0x277CCAC68);
  sub_25AAA915C();
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAA6B04@<X0>(uint64_t *a1@<X8>)
{
  v4 = [*v1 pattern];
  sub_25AAC46A8();

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF18, &qword_25AAC5740);
  a1[4] = sub_25AAA968C(&qword_27FA0FF20, &qword_27FA0FF18, &qword_25AAC5740, MEMORY[0x277D85AC0]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  result = sub_25AAC42D8();
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a1);
  }

  return result;
}

void *sub_25AAA6BE0()
{
  v1 = *v0;
  v2 = v1;
  return v1;
}

uint64_t sub_25AAA6C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25AAA506C(&unk_286C19C10);
  swift_arrayDestroy();
  v7 = sub_25AAA2D08(a1, a2, v6);

  if (v7)
  {
    return 1;
  }

  sub_25AAA55AC(0, &qword_27FA0FF00, 0x277CCAC68);
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAA6CF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
}

void sub_25AAA6D98(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_25AAA6DF0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_25AAA6E34(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_25AAA6E94()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void *RegexMatch.init(match:string:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

double sub_25AAA6EF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v6 - 8, v7);
  type metadata accessor for RegexMatch();
  sub_25AAA9350();
  sub_25AAC4558();
  if (v14)
  {
    sub_25AAA4B4C(&v13, v15);
    sub_25AAA4B4C(v15, a3);
  }

  else
  {
    sub_25AAA5640(&v13, &qword_27FA0FE38, &unk_25AAC5410);
    if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_25AAC4AF8() & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_25AAC5400;
      *(v9 + 56) = MEMORY[0x277D83B88];
      *(v9 + 32) = 0;
      v10 = MEMORY[0x277D84F90];
      sub_25AAC45D8();

      sub_25AAA4A20(v10);
      v11 = sub_25AAC45B8();
      swift_allocObject();
      v12 = sub_25AAC45A8();
      *(a3 + 24) = v11;
      *a3 = v12;
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

uint64_t sub_25AAA711C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_25AAA48F0(7890025, 0xE300000000000000), (v7 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v6, v24), sub_25AAA55AC(0, &qword_27FA0FED0, 0x277CCABB0), (swift_dynamicCast() & 1) != 0) && (v8 = [v23 integerValue], v23, swift_beginAccess(), objc_msgSend(*(a2 + 16), sel_rangeAtIndex_, v8), swift_beginAccess(), , sub_25AAC4888(), v10 = v9, , (v10 & 1) == 0))
  {

    v13 = sub_25AAC47A8();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = MEMORY[0x25F852E70](v13, v15, v17, v19);
    v22 = v21;

    a3[3] = MEMORY[0x277D837D0];
    *a3 = v20;
    a3[1] = v22;
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v11 = 14;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AAA730C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C19C90);
  sub_25AAA93C0(&unk_286C19CB0);
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  type metadata accessor for RegexMatch();
  sub_25AAA9350();
  return sub_25AAC4568() & 1;
}

uint64_t RegexMatch.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_25AAA7430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25AAA506C(&unk_286C19C90);
  sub_25AAA93C0(&unk_286C19CB0);
  v7 = sub_25AAA2D08(a1, a2, v6);

  if (v7)
  {
    return 1;
  }

  type metadata accessor for RegexMatch();
  return sub_25AAC4568() & 1;
}

uint64_t static Re.extendMorpheus()()
{
  v0 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_25AAC4548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE60, qword_25AAC5580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AAC5570;
  *(inited + 32) = 6452595;
  *(inited + 40) = 0xE300000000000000;
  v3 = MEMORY[0x277D84F90];
  sub_25AAC45D8();
  sub_25AAA4A20(v3);
  v4 = sub_25AAC45B8();
  swift_allocObject();
  *(inited + 48) = sub_25AAC45A8();
  *(inited + 72) = v4;
  *(inited + 80) = 0x656C69706D6F63;
  *(inited + 88) = 0xE700000000000000;
  sub_25AAC45D8();
  sub_25AAA4A20(v3);
  swift_allocObject();
  *(inited + 96) = sub_25AAC45A8();
  *(inited + 120) = v4;
  *(inited + 128) = 0x686374616DLL;
  *(inited + 136) = 0xE500000000000000;
  sub_25AAC45D8();
  sub_25AAA4A20(v3);
  swift_allocObject();
  *(inited + 144) = sub_25AAC45A8();
  *(inited + 168) = v4;
  *(inited + 176) = 0x6C6C61646E6966;
  *(inited + 184) = 0xE700000000000000;
  sub_25AAC45D8();
  sub_25AAA4A20(v3);
  swift_allocObject();
  *(inited + 192) = sub_25AAC45A8();
  *(inited + 216) = v4;
  *(inited + 224) = 0x686372616573;
  *(inited + 232) = 0xE600000000000000;
  sub_25AAC45D8();
  sub_25AAA4A20(v3);
  swift_allocObject();
  v5 = sub_25AAC45A8();
  *(inited + 264) = v4;
  *(inited + 240) = v5;
  sub_25AAA4A20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE68, qword_25AAC5430);
  swift_arrayDestroy();
  sub_25AAC4528();
}

uint64_t sub_25AAA7928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v5 = sub_25AAA48F0(0x676E69727473, 0xE600000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v5, v65);
  v7 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v8 = *(&v62 + 1);
  v9 = v62;
  if (!*(a1 + 16) || (v10 = sub_25AAA48F0(0x6E726574746170, 0xE700000000000000), (v11 & 1) == 0))
  {
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
    goto LABEL_12;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v10, &v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF80, &qword_25AAC5788);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    goto LABEL_12;
  }

  if (!*(&v63 + 1))
  {
LABEL_12:
    sub_25AAA5640(&v62, &qword_27FA0FF68, &qword_25AAC5778);
    goto LABEL_13;
  }

  sub_25AAA5540(&v62, v65);
  v12 = v66;
  v13 = v67;
  __swift_project_boxed_opaque_existential_1Tm(v65, v66);
  (*(v13 + 8))(&v59, v12, v13);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  if (!v60)
  {
    sub_25AAA5640(&v59, &qword_27FA0FF88, &qword_25AAC5790);
    goto LABEL_39;
  }

  sub_25AAA5540(&v59, &v62);
  if (!*(a1 + 16) || (v23 = sub_25AAA48F0(1819305330, 0xE400000000000000), (v24 & 1) == 0))
  {
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
    goto LABEL_37;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v23, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF98, &unk_25AAC57A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    goto LABEL_37;
  }

  if (!*(&v57 + 1))
  {
LABEL_37:
    sub_25AAA5640(&v56, &qword_27FA0FF90, &qword_25AAC5798);
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
LABEL_39:
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    goto LABEL_13;
  }

  sub_25AAA5540(&v56, &v59);
  v25 = v60;
  v26 = v61;
  __swift_project_boxed_opaque_existential_1Tm(&v59, v60);
  (*(v26 + 8))(v25, v26);
  if (v27)
  {
    v68 = __swift_project_boxed_opaque_existential_1Tm(&v62, *(&v63 + 1));
    v55[0] = v9;
    v55[1] = v8;
    sub_25AAA9728();
    sub_25AAA96D4();
    sub_25AAC4878();

    v28 = v56;
    *(a2 + 24) = v7;
    *a2 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(&v59);
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
    return __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v59);
  __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
LABEL_13:
  if (!*(a1 + 16) || (v15 = sub_25AAA48F0(1819305330, 0xE400000000000000), (v16 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v15, v65), sub_25AAC45B8(), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_23;
  }

  if (!*(a1 + 16) || (v17 = sub_25AAA48F0(0x6E726574746170, 0xE700000000000000), (v18 & 1) == 0))
  {

    v62 = 0u;
    v63 = 0u;
    v64 = 0;
LABEL_35:
    sub_25AAA5640(&v62, &qword_27FA0FF28, &qword_25AAC5748);
    goto LABEL_23;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v17, &v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF30, &qword_25AAC5750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    goto LABEL_34;
  }

  if (!*(&v63 + 1))
  {
LABEL_34:

    goto LABEL_35;
  }

  sub_25AAA5540(&v62, v65);
  v19 = v66;
  v20 = v67;
  __swift_project_boxed_opaque_existential_1Tm(v65, v66);
  v21 = (*(v20 + 8))(v19, v20);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  if (v21)
  {
    v29 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v29 = v9;
    }

    v30 = 7;
    if (((v8 >> 60) & ((v9 & 0x800000000000000) == 0)) != 0)
    {
      v30 = 11;
    }

    *&v62 = 15;
    *(&v62 + 1) = v30 | (v29 << 16);
    *&v59 = v9;
    *(&v59 + 1) = v8;
    v31 = v21;
    v51 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF58, &qword_25AAC5770);
    sub_25AAA968C(&qword_27FA0FF60, &qword_27FA0FF58, &qword_25AAC5770, MEMORY[0x277D83D30]);
    sub_25AAA9638();
    v32 = sub_25AAC48C8();
    v34 = v33;
    v35 = sub_25AAC4698();
    v36 = [v31 matchesInString:v35 options:0 range:{v32, v34}];

    v37 = sub_25AAC4698();
    v38 = [v51 matchesInString:v37 options:0 range:{v32, v34}];

    sub_25AAA55AC(0, &qword_27FA0FF50, 0x277CCACC0);
    v39 = sub_25AAC47D8();

    *&v59 = v9;
    *(&v59 + 1) = v8;
    v52 = v39;
    if (v39 >> 62)
    {
      v40 = sub_25AAC4A88();
      if (v40)
      {
LABEL_47:
        v68 = v39 & 0xC000000000000001;
        v53 = v39 + 32;
        v54 = v39 & 0xFFFFFFFFFFFFFF8;
        while (!__OFSUB__(v40--, 1))
        {
          if (v68)
          {
            v42 = MEMORY[0x25F853130](v40, v52);
          }

          else
          {
            if ((v40 & 0x8000000000000000) != 0)
            {
              goto LABEL_63;
            }

            if (v40 >= *(v54 + 16))
            {
              goto LABEL_64;
            }

            v42 = *(v53 + 8 * v40);
          }

          v43 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF70, &qword_25AAC5780);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_25AAC5400;
          v45 = v59;
          v46 = type metadata accessor for RegexMatch();
          v47 = swift_allocObject();
          *(v47 + 16) = v43;
          *(v47 + 24) = v45;
          *(v44 + 56) = v46;
          *(v44 + 32) = v47;
          v48 = v43;

          sub_25AAC4598();

          if (swift_dynamicCast())
          {
            v49 = v56;
            [v48 range];
            sub_25AAC4888();
            if ((v50 & 1) == 0)
            {
              v62 = v49;
              sub_25AAA96D4();
              sub_25AAC4728();
            }
          }

          if (!v40)
          {
            goto LABEL_65;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v8 = *(&v59 + 1);
        v9 = v59;
      }
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40)
      {
        goto LABEL_47;
      }
    }

    *(a2 + 24) = MEMORY[0x277D837D0];

    *a2 = v9;
    *(a2 + 8) = v8;
    return __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v65);
LABEL_23:
  sub_25AAA5558();
  swift_allocError();
  *v22 = 15;
  return swift_willThrow();
}

uint64_t sub_25AAA8230@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_25AAA48F0(0x6E726574746170, 0xE700000000000000), (v6 & 1) == 0))
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    goto LABEL_10;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v5, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF30, &qword_25AAC5750);
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
    sub_25AAA5640(&v14, &qword_27FA0FF28, &qword_25AAC5748);
    goto LABEL_11;
  }

  sub_25AAA5540(&v14, v17);
  v7 = v18;
  v8 = v19;
  __swift_project_boxed_opaque_existential_1Tm(v17, v18);
  v9 = (*(v8 + 8))(v7, v8);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  if (v9)
  {
    v10 = v9;
    a2[3] = sub_25AAA55AC(0, &qword_27FA0FF00, 0x277CCAC68);
    *a2 = v10;
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
LABEL_11:
  sub_25AAA5558();
  swift_allocError();
  *v12 = 16;
  return swift_willThrow();
}

uint64_t sub_25AAA83D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_25AAA48F0(0x6E726574746170, 0xE700000000000000), (v6 & 1) == 0))
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_8;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v5, &v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF30, &qword_25AAC5750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_8;
  }

  if (!*(&v32 + 1))
  {
LABEL_8:
    sub_25AAA5640(&v31, &qword_27FA0FF28, &qword_25AAC5748);
LABEL_9:
    sub_25AAA5558();
    swift_allocError();
    *v11 = 17;
    return swift_willThrow();
  }

  sub_25AAA5540(&v31, v34);
  v7 = v35;
  v8 = v36;
  __swift_project_boxed_opaque_existential_1Tm(v34, v35);
  v9 = (*(v8 + 8))(v7, v8);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  if (!v9)
  {
    goto LABEL_28;
  }

  if (!*(a1 + 16))
  {

    goto LABEL_28;
  }

  v12 = v9;
  v13 = sub_25AAA48F0(0x676E69727473, 0xE600000000000000);
  if ((v14 & 1) == 0 || (sub_25AAA5378(*(a1 + 56) + 32 * v13, &v31), (swift_dynamicCast() & 1) == 0))
  {

LABEL_28:
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    goto LABEL_9;
  }

  v16 = v29;
  v15 = v30;
  v17 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v17 = v29;
  }

  v18 = 7;
  if (((v30 >> 60) & ((v29 & 0x800000000000000) == 0)) != 0)
  {
    v18 = 11;
  }

  *&v31 = 15;
  *(&v31 + 1) = v18 | (v17 << 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF58, &qword_25AAC5770);
  sub_25AAA968C(&qword_27FA0FF60, &qword_27FA0FF58, &qword_25AAC5770, MEMORY[0x277D83D30]);
  sub_25AAA9638();
  v19 = sub_25AAC48C8();
  v21 = v20;
  v22 = sub_25AAC4698();
  v23 = [v12 matchesInString:v22 options:0 range:{v19, v21}];

  sub_25AAA55AC(0, &qword_27FA0FF50, 0x277CCACC0);
  v24 = sub_25AAC47D8();

  if (v24 >> 62)
  {
    result = sub_25AAC4A88();
    if (result)
    {
      goto LABEL_21;
    }

LABEL_31:

    goto LABEL_32;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_21:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x25F853130](0, v24);
    goto LABEL_24;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v24 + 32);
LABEL_24:
    v26 = v25;

    if (![v26 range])
    {
      v27 = type metadata accessor for RegexMatch();
      v28 = swift_allocObject();
      v28[2] = v26;
      v28[3] = v16;
      v28[4] = v15;
      *(a2 + 24) = v27;

      *a2 = v28;
      return __swift_destroy_boxed_opaque_existential_1Tm(v34);
    }

LABEL_32:

    *a2 = 0u;
    *(a2 + 16) = 0u;
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  __break(1u);
  return result;
}

char *sub_25AAA87BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v5 = sub_25AAA48F0(0x676E69727473, 0xE600000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v5, v37);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = *(&v34 + 1);
  if (!*(a1 + 16) || (v8 = v34, v9 = sub_25AAA48F0(0x6E726574746170, 0xE700000000000000), (v10 & 1) == 0))
  {

    v34 = 0u;
    v35 = 0u;
    v36 = 0;
LABEL_13:
    sub_25AAA5640(&v34, &qword_27FA0FF28, &qword_25AAC5748);
LABEL_14:
    sub_25AAA5558();
    swift_allocError();
    *v14 = 18;
    return swift_willThrow();
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v9, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF30, &qword_25AAC5750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    goto LABEL_12;
  }

  if (!*(&v35 + 1))
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_25AAA5540(&v34, v37);
  v11 = v38;
  v12 = v39;
  __swift_project_boxed_opaque_existential_1Tm(v37, v38);
  v13 = (*(v12 + 8))(v11, v12);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  if (!v13)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    goto LABEL_14;
  }

  v29 = v13;
  v16 = sub_25AAC4698();
  v33[0] = 15;
  *&v34 = v8;
  *(&v34 + 1) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF38, &qword_25AAC5758);
  sub_25AAA968C(&qword_27FA0FF40, &qword_27FA0FF38, &qword_25AAC5758, MEMORY[0x277D84338]);
  sub_25AAA9638();
  v17 = v29;
  v18 = sub_25AAC48C8();
  v20 = [v29 matchesInString:v16 options:0 range:{v18, v19}];

  sub_25AAA55AC(0, &qword_27FA0FF50, 0x277CCACC0);
  v21 = sub_25AAC47D8();

  if (v21 >> 62)
  {
    goto LABEL_32;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
LABEL_33:

    v24 = MEMORY[0x277D84F90];
LABEL_34:
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);

    *a2 = v24;
    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  while (1)
  {
    v17 = v21;
    v33[0] = MEMORY[0x277D84F90];
    v21 = v33;
    result = sub_25AABCCC0(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
      break;
    }

    v23 = 0;
    v24 = v33[0];
    v25 = v17;
    v32 = v17 & 0xC000000000000001;
    v30 = v17 & 0xFFFFFFFFFFFFFF8;
    v31 = v17;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v32)
      {
        v27 = MEMORY[0x25F853130](v23, v25);
      }

      else
      {
        if (v23 >= *(v30 + 16))
        {
          goto LABEL_31;
        }

        v27 = *(v25 + 8 * v23 + 32);
      }

      v21 = v27;
      v40 = v27;
      sub_25AAA8C50(&v40, &v34);

      v33[0] = v24;
      v17 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v17 >= v28 >> 1)
      {
        v21 = v33;
        sub_25AABCCC0((v28 > 1), v17 + 1, 1);
        v24 = v33[0];
      }

      *(v24 + 16) = v17 + 1;
      sub_25AAA4B4C(&v34, (v24 + 32 * v17 + 32));
      ++v23;
      v25 = v31;
      if (v26 == v22)
      {

        v17 = v29;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v22 = sub_25AAC4A88();
    if (!v22)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25AAA8C50@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  if ([*a1 numberOfRanges] < 2)
  {
    [v4 range];
    result = sub_25AAC4888();
    if ((v7 & 1) == 0)
    {
      v8 = sub_25AAC47A8();
      v9 = MEMORY[0x25F852E70](v8);
      v11 = v10;

      a2[3] = MEMORY[0x277D837D0];
      *a2 = v9;
      a2[1] = v11;
      return result;
    }
  }

  else
  {
    result = [v4 numberOfRanges];
    v23 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      v21 = a2;
      v22 = v2;
      v6 = MEMORY[0x277D84F90];
      if (result == 1)
      {
LABEL_5:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE50, &unk_25AAC5B40);
        v21[3] = result;
        *v21 = v6;
        return result;
      }

      v12 = 1;
      while (1)
      {
        [v4 rangeAtIndex_];
        result = sub_25AAC4888();
        if (v13)
        {
          break;
        }

        v14 = sub_25AAC47A8();
        v15 = MEMORY[0x25F852E70](v14);
        v17 = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_25AAAC5E8(0, *(v6 + 2) + 1, 1, v6);
        }

        v19 = *(v6 + 2);
        v18 = *(v6 + 3);
        if (v19 >= v18 >> 1)
        {
          v6 = sub_25AAAC5E8((v18 > 1), v19 + 1, 1, v6);
        }

        ++v12;
        *(v6 + 2) = v19 + 1;
        v20 = &v6[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v17;
        if (v23 == v12)
        {
          goto LABEL_5;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25AAA8E3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v5 = sub_25AAA48F0(0x676E69727473, 0xE600000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v5, v27);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = *(&v24 + 1);
  if (!*(a1 + 16) || (v8 = v24, v9 = sub_25AAA48F0(0x6E726574746170, 0xE700000000000000), (v10 & 1) == 0))
  {

    v24 = 0u;
    v25 = 0u;
    v26 = 0;
LABEL_13:
    sub_25AAA5640(&v24, &qword_27FA0FF28, &qword_25AAC5748);
    goto LABEL_14;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v9, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF30, &qword_25AAC5750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    goto LABEL_12;
  }

  if (!*(&v25 + 1))
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_25AAA5540(&v24, v27);
  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1Tm(v27, v28);
  v13 = (*(v12 + 8))(v11, v12);
  if (!v2)
  {
    v16 = v13;
    if (v13)
    {
      v17 = sub_25AAC4698();
      v23[0] = 15;
      *&v24 = v8;
      *(&v24 + 1) = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FF38, &qword_25AAC5758);
      sub_25AAA968C(&qword_27FA0FF40, &qword_27FA0FF38, &qword_25AAC5758, MEMORY[0x277D84338]);
      sub_25AAA9638();
      v18 = sub_25AAC48C8();
      v20 = [v16 firstMatchInString:v17 options:0 range:{v18, v19}];

      if (v20)
      {
        v21 = type metadata accessor for RegexMatch();
        v22 = swift_allocObject();
        v22[2] = v20;
        v22[3] = v8;
        v22[4] = v7;
      }

      else
      {

        v22 = 0;
        v21 = 0;
        a2[1] = 0;
        a2[2] = 0;
      }

      *a2 = v22;
      a2[3] = v21;
      return __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v27);
LABEL_14:
    sub_25AAA5558();
    swift_allocError();
    *v14 = 19;
    return swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

unint64_t sub_25AAA915C()
{
  result = qword_27FA0FF08;
  if (!qword_27FA0FF08)
  {
    sub_25AAA55AC(255, &qword_27FA0FF00, 0x277CCAC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FF08);
  }

  return result;
}

uint64_t sub_25AAA91C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_25AAA9218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25AAC4698();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_25AAC4258();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_25AAA9350()
{
  result = qword_27FA0FF10;
  if (!qword_27FA0FF10)
  {
    type metadata accessor for RegexMatch();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FF10);
  }

  return result;
}

id sub_25AAA9414@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_25AAA9470@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25AAA9638()
{
  result = qword_27FA0FF48;
  if (!qword_27FA0FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FF48);
  }

  return result;
}

uint64_t sub_25AAA968C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_25AAA96D4()
{
  result = qword_27FA0FF78;
  if (!qword_27FA0FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FF78);
  }

  return result;
}

unint64_t sub_25AAA9728()
{
  result = qword_27FA0FFA0;
  if (!qword_27FA0FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA0FFA0);
  }

  return result;
}

uint64_t Connection.__allocating_init(db:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_25AAA97C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v11 = *(v6 + 16);
  v12 = sub_25AAC4708();
  LODWORD(v11) = sqlite3_prepare_v2(v11, (v12 + 32), -1, ppStmt, 0);

  if (v11 || (v14 = ppStmt[0]) == 0)
  {
    sub_25AAA5558();
    swift_allocError();
    *v13 = 24;
    swift_willThrow();
  }

  else
  {
    sub_25AAA9958(a3, v24);
    sub_25AAA9958(a4, v23);
    sub_25AAA9958(a5, v22);
    sub_25AAA9958(a6, v21);
    type metadata accessor for Statement();
    a6 = swift_allocObject();
    *(a6 + 168) = 0;
    *(a6 + 176) = 1;
    *(a6 + 16) = v14;
    *(a6 + 24) = v6;

    v15 = sqlite3_column_count(v14);
    v16 = v24[1];
    *(a6 + 40) = v24[0];
    *(a6 + 56) = v16;
    v17 = v23[1];
    *(a6 + 72) = v23[0];
    *(a6 + 88) = v17;
    v18 = v22[1];
    *(a6 + 104) = v22[0];
    *(a6 + 120) = v18;
    v19 = v21[0];
    *(a6 + 152) = v21[1];
    *(a6 + 32) = v15;
    *(a6 + 136) = v19;
  }

  return a6;
}

uint64_t sub_25AAA9958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE38, &unk_25AAC5410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Statement.__allocating_init(stmt:conn:realNullDefault:integerNullDefault:numericNullDefault:textNullDefault:)(sqlite3_stmt *a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, __int128 *a6)
{
  v12 = swift_allocObject();
  *(v12 + 168) = 0;
  *(v12 + 176) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = sqlite3_column_count(a1);
  v14 = a3[1];
  *(v12 + 40) = *a3;
  *(v12 + 56) = v14;
  v15 = a4[1];
  *(v12 + 72) = *a4;
  *(v12 + 88) = v15;
  v16 = a5[1];
  *(v12 + 104) = *a5;
  *(v12 + 120) = v16;
  v17 = *a6;
  *(v12 + 152) = a6[1];
  *(v12 + 32) = v13;
  *(v12 + 136) = v17;
  return v12;
}

uint64_t Connection.__deallocating_deinit()
{
  sqlite3_close_v2(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

double sub_25AAA9AF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v6 - 8, v7);
  type metadata accessor for Connection();
  sub_25AAACBA4(&qword_27FA0FFA8, type metadata accessor for Connection, &protocol conformance descriptor for Connection);
  sub_25AAC4558();
  if (v14)
  {
    sub_25AAA4B4C(&v13, v15);
    sub_25AAA4B4C(v15, a3);
  }

  else
  {
    sub_25AAAC454(&v13);
    if (a1 == 0x65726170657270 && a2 == 0xE700000000000000 || (sub_25AAC4AF8() & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
      v9 = swift_allocObject();
      v9[1] = xmmword_25AAC57B0;
      v9[2] = 0u;
      v9[3] = 0u;
      v9[4] = 0u;
      v9[5] = 0u;
      v9[6] = 0u;
      v9[7] = 0u;
      v9[8] = 0u;
      v9[9] = 0u;
      v10 = MEMORY[0x277D84F90];
      sub_25AAC45D8();

      sub_25AAA4A20(v10);
      v11 = sub_25AAC45B8();
      swift_allocObject();
      v12 = sub_25AAC45A8();
      *(a3 + 24) = v11;
      *a3 = v12;
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

uint64_t sub_25AAA9D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v6 = sub_25AAA48F0(0x6E656D6574617473, 0xE900000000000074), (v7 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v6, v37), (swift_dynamicCast() & 1) == 0))
  {
    sub_25AAA5558();
    swift_allocError();
    *v10 = 23;
    return swift_willThrow();
  }

  if (*(a1 + 16) && (v8 = sub_25AAA48F0(0xD000000000000011, 0x800000025AAC5F20), (v9 & 1) != 0))
  {
    sub_25AAA5378(*(a1 + 56) + 32 * v8, v37);
    if (!*(a1 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    memset(v37, 0, 32);
    if (!*(a1 + 16))
    {
      goto LABEL_13;
    }
  }

  v12 = sub_25AAA48F0(0xD000000000000014, 0x800000025AAC5F40);
  if (v13)
  {
    sub_25AAA5378(*(a1 + 56) + 32 * v12, v36);
    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_13:
  memset(v36, 0, sizeof(v36));
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

LABEL_14:
  v14 = sub_25AAA48F0(0xD000000000000014, 0x800000025AAC5F60);
  if (v15)
  {
    sub_25AAA5378(*(a1 + 56) + 32 * v14, v35);
    if (!*(a1 + 16))
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_17:
  memset(v35, 0, sizeof(v35));
  if (!*(a1 + 16))
  {
LABEL_20:
    memset(v34, 0, sizeof(v34));
    goto LABEL_21;
  }

LABEL_18:
  v16 = sub_25AAA48F0(0xD000000000000011, 0x800000025AAC5F80);
  if ((v17 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v16, v34);
LABEL_21:
  ppStmt = 0;
  v18 = *(a2 + 16);
  v19 = sub_25AAC4708();

  LODWORD(v18) = sqlite3_prepare_v2(v18, (v19 + 32), -1, &ppStmt, 0);

  if (v18 || (v21 = ppStmt) == 0)
  {
    sub_25AAA5558();
    swift_allocError();
    *v20 = 24;
    swift_willThrow();
    sub_25AAAC454(v34);
    sub_25AAAC454(v35);
    sub_25AAAC454(v36);
    return sub_25AAAC454(v37);
  }

  else
  {
    sub_25AAA9958(v37, v32);
    sub_25AAA9958(v36, v31);
    sub_25AAA9958(v35, v30);
    sub_25AAA9958(v34, v29);
    v22 = type metadata accessor for Statement();
    v23 = swift_allocObject();
    *(v23 + 168) = 0;
    *(v23 + 176) = 1;
    *(v23 + 16) = v21;
    *(v23 + 24) = a2;

    v24 = sqlite3_column_count(v21);
    sub_25AAAC454(v34);
    sub_25AAAC454(v35);
    sub_25AAAC454(v36);
    result = sub_25AAAC454(v37);
    v25 = v32[1];
    *(v23 + 40) = v32[0];
    *(v23 + 56) = v25;
    v26 = v31[1];
    *(v23 + 72) = v31[0];
    *(v23 + 88) = v26;
    v27 = v30[1];
    *(v23 + 104) = v30[0];
    *(v23 + 120) = v27;
    v28 = v29[0];
    *(v23 + 152) = v29[1];
    *(v23 + 32) = v24;
    *(v23 + 136) = v28;
    a3[3] = v22;
    *a3 = v23;
  }

  return result;
}

uint64_t sub_25AAAA110(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C19E70);
  sub_25AAA93C0(&unk_286C19E90);
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  type metadata accessor for Connection();
  sub_25AAACBA4(&qword_27FA0FFA8, type metadata accessor for Connection, &protocol conformance descriptor for Connection);
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAAA1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25AAA506C(&unk_286C19E70);
  sub_25AAA93C0(&unk_286C19E90);
  v7 = sub_25AAA2D08(a1, a2, v6);

  if (v7)
  {
    return 1;
  }

  type metadata accessor for Connection();
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAAA298(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

uint64_t Statement.init(stmt:conn:realNullDefault:integerNullDefault:numericNullDefault:textNullDefault:)(sqlite3_stmt *a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, __int128 *a6)
{
  *(v6 + 168) = 0;
  *(v6 + 176) = 1;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v11 = sqlite3_column_count(a1);
  v12 = a3[1];
  *(v6 + 40) = *a3;
  *(v6 + 56) = v12;
  v13 = a4[1];
  *(v6 + 72) = *a4;
  *(v6 + 88) = v13;
  v14 = a5[1];
  *(v6 + 104) = *a5;
  *(v6 + 120) = v14;
  v15 = *a6;
  *(v6 + 152) = a6[1];
  *(v6 + 32) = v11;
  *(v6 + 136) = v15;
  return v6;
}

uint64_t Statement.deinit()
{
  sqlite3_finalize(*(v0 + 16));

  sub_25AAAC454(v0 + 40);
  sub_25AAAC454(v0 + 72);
  sub_25AAAC454(v0 + 104);
  sub_25AAAC454(v0 + 136);
  return v0;
}

uint64_t Statement.__deallocating_deinit()
{
  sqlite3_finalize(*(v0 + 16));

  sub_25AAAC454(v0 + 40);
  sub_25AAAC454(v0 + 72);
  sub_25AAAC454(v0 + 104);
  sub_25AAAC454(v0 + 136);

  return MEMORY[0x2821FE8D8](v0, 177, 7);
}

uint64_t sub_25AAAA498()
{
  if (sqlite3_step(*(v0 + 16)) == 100)
  {
    return sqlite3_column_int(*(v0 + 16), 0);
  }

  else
  {
    return 0;
  }
}

char *sub_25AAAA4D8()
{
  v0 = sub_25AAAA5D0();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  do
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
    *&v6 = v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_25AAAC4D8(0, *(v2 + 2) + 1, 1, v2);
    }

    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_25AAAC4D8((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    sub_25AAA4B4C(&v6, &v2[32 * v4 + 32]);
    v1 = sub_25AAAA5D0();
  }

  while (v1);
  return v2;
}

char *sub_25AAAA5D0()
{
  if (sqlite3_step(*(v0 + 16)) != 100)
  {
    sqlite3_reset(*(v0 + 16));
    return 0;
  }

  result = swift_beginAccess();
  v2 = *(v0 + 32);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (v2)
    {
      v3 = 0;
      v4 = MEMORY[0x277D84F90];
      v5 = &unk_286C1B0F0;
      while (1)
      {
        if (v3 == 0x80000000)
        {
          __break(1u);
          goto LABEL_56;
        }

        v6 = sqlite3_column_type(*(v0 + 16), v3);
        if (v6 > 2)
        {
          break;
        }

        if (v6 == 1)
        {
          v17 = sqlite3_column_int(*(v0 + 16), v3);
          v26 = MEMORY[0x277D849A8];
          LODWORD(v25) = v17;
        }

        else
        {
          if (v6 != 2)
          {
            goto LABEL_37;
          }

          v9 = sqlite3_column_double(*(v0 + 16), v3);
          v26 = MEMORY[0x277D839F8];
          *&v25 = v9;
        }

LABEL_38:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_25AAAC4D8(0, *(v4 + 2) + 1, 1, v4);
        }

        v20 = *(v4 + 2);
        v19 = *(v4 + 3);
        if (v20 >= v19 >> 1)
        {
          v4 = sub_25AAAC4D8((v19 > 1), v20 + 1, 1, v4);
        }

        *(v4 + 2) = v20 + 1;
        result = sub_25AAA4B4C(&v25, &v4[32 * v20 + 32]);
LABEL_6:
        if (v2 == ++v3)
        {
          return v4;
        }
      }

      if ((v6 - 3) < 2)
      {
        result = sqlite3_column_text(*(v0 + 16), v3);
        if (!result)
        {
          goto LABEL_57;
        }

        v7 = sub_25AAC4768();
        v26 = MEMORY[0x277D837D0];
        *&v25 = v7;
        *(&v25 + 1) = v8;
        goto LABEL_38;
      }

      if (v6 == 5)
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE38, &unk_25AAC5410);
        v10 = v5;
        v11 = swift_allocObject();
        *&v25 = v11;
        *(v11 + 16) = 0u;
        *(v11 + 32) = 0u;
        if (sqlite3_column_decltype(*(v0 + 16), v3))
        {
          sub_25AAC4758();
          v12 = sub_25AAC46F8();
          v14 = v13;

          if ((sub_25AAC4788() & 1) == 0 && (sub_25AAC4788() & 1) == 0 && (sub_25AAC4788() & 1) == 0)
          {
LABEL_22:
            if (sub_25AAC4788() & 1) != 0 || (sub_25AAC4798())
            {
              sub_25AAA9958(v0 + 72, &v22);
              if (v23)
              {
                goto LABEL_30;
              }

              sub_25AAAC454(&v22);
            }

            *&v24[0] = v12;
            *(&v24[0] + 1) = v14;
            *&v22 = 1918986339;
            *(&v22 + 1) = 0xE400000000000000;
            sub_25AAA9638();
            if (sub_25AAC48E8() & 1) != 0 || (*&v24[0] = v12, *(&v24[0] + 1) = v14, *&v22 = 1954047348, *(&v22 + 1) = 0xE400000000000000, (sub_25AAC48E8()) || (*&v24[0] = v12, *(&v24[0] + 1) = v14, *&v22 = 1651469411, *(&v22 + 1) = 0xE400000000000000, (sub_25AAC48E8()))
            {
              sub_25AAA9958(v0 + 136, &v22);
              if (v23)
              {
                goto LABEL_30;
              }

              sub_25AAAC454(&v22);
            }

            if (sub_25AAC4788() & 1) != 0 || (sub_25AAC4788() & 1) != 0 || (sub_25AAC4788())
            {
            }

            else
            {
              v21 = sub_25AAC4788();

              if ((v21 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            sub_25AAA9958(v0 + 104, &v22);
            if (v23)
            {
              sub_25AAA4B4C(&v22, v24);
              __swift_destroy_boxed_opaque_existential_1Tm(&v25);
              sub_25AAA4B4C(v24, &v25);
            }

            else
            {
              sub_25AAAC454(&v22);
            }

            goto LABEL_31;
          }

          sub_25AAA9958(v0 + 40, &v22);
          if (!v23)
          {
            sub_25AAAC454(&v22);
            goto LABEL_22;
          }

LABEL_30:

          sub_25AAA4B4C(&v22, v24);
          __swift_destroy_boxed_opaque_existential_1Tm(&v25);
          sub_25AAA4B4C(v24, &v25);
        }

LABEL_31:
        sub_25AAA5378(&v25, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_25AAAC4D8(0, *(v4 + 2) + 1, 1, v4);
        }

        v16 = *(v4 + 2);
        v15 = *(v4 + 3);
        if (v16 >= v15 >> 1)
        {
          v4 = sub_25AAAC4D8((v15 > 1), v16 + 1, 1, v4);
        }

        v5 = v10;
        *(v4 + 2) = v16 + 1;
        sub_25AAA4B4C(v24, &v4[32 * v16 + 32]);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v25);
        goto LABEL_6;
      }

LABEL_37:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE38, &unk_25AAC5410);
      v18 = swift_allocObject();
      *&v25 = v18;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      goto LABEL_38;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

double sub_25AAAABB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v6 - 8, v7);
  type metadata accessor for Statement();
  sub_25AAACBA4(&qword_27FA0FFB0, type metadata accessor for Statement, &protocol conformance descriptor for Statement);
  sub_25AAC4558();
  if (v15)
  {
    sub_25AAA4B4C(&v14, v16);
    sub_25AAA4B4C(v16, a3);
    return result;
  }

  sub_25AAAC454(&v14);
  if (a1 == 0x72615F64315F7361 && a2 == 0xEB00000000796172 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25AAC5400;
    *(v9 + 56) = MEMORY[0x277D83B88];
    *(v9 + 32) = 0;
    v10 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v10);
    v11 = sub_25AAC45B8();
    swift_allocObject();
LABEL_7:
    v12 = sub_25AAC45A8();
    *(a3 + 24) = v11;
    *a3 = v12;
    return result;
  }

  if (a1 == 0x72615F64325F7361 && a2 == 0xEB00000000796172 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x72616C616373 && a2 == 0xE600000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    v13 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v13);
    v11 = sub_25AAC45B8();
    swift_allocObject();
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_25AAAAFA0(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  if (*(a1 + 16) && (v3 = sub_25AAA48F0(0x6E6D756C6F63, 0xE600000000000000), (v4 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v3, v64), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEB8, &qword_25AAC5520), (swift_dynamicCast() & 1) != 0) && v66)
  {
    sub_25AAA5864(&v65, v67);
  }

  else
  {
    v68 = MEMORY[0x277D83B88];
    v69 = sub_25AAA5444();
    v67[0] = 0;
  }

  v5 = sub_25AAAA5D0();
  if (!v5)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_54:
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
    v56 = v59;
    v59[3] = v55;
    *v56 = v7;
    return __swift_destroy_boxed_opaque_existential_1Tm(v67);
  }

  v6 = v5;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v70 = v7;
    v8 = v68;
    v9 = v69;
    __swift_project_boxed_opaque_existential_1Tm(v67, v68);
    v10 = *(v6 + 2);
    v11 = *(v9 + 8);
    if (sub_25AAC4928())
    {
      v12 = sub_25AAC4918();
      if (v12 >= 64)
      {
        goto LABEL_14;
      }

LABEL_21:
      if (sub_25AAC4908() >= v10)
      {
        goto LABEL_55;
      }

      goto LABEL_22;
    }

    v14 = sub_25AAC4928();
    v12 = sub_25AAC4918();
    if (v14)
    {
      if (v12 > 64)
      {
LABEL_14:
        v15 = *(v8 - 8);
        MEMORY[0x28223BE20](v12, v13);
        v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        *&v65 = v10;
        sub_25AAA54EC();
        sub_25AAC48F8();
        v18 = sub_25AAC4668();
        (*(v15 + 8))(v17, v8);
        if ((v18 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_22;
      }

      v60 = *(*(v11 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v62 = &v58;
      MEMORY[0x28223BE20](AssociatedTypeWitness, v24);
      swift_getAssociatedConformanceWitness();
      v25 = sub_25AAC4B18();
      v61 = &v58;
      v26 = *(v8 - 8);
      MEMORY[0x28223BE20](v25, v27);
      v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAC4AD8();
      v30 = sub_25AAC4668();
      (*(v26 + 8))(v29, v8);
      if (v30)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (v12 < 64)
    {
      goto LABEL_21;
    }

    if (!v10 || (v19 = *(v8 - 8), MEMORY[0x28223BE20](v12, v13), v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), *&v65 = v10, sub_25AAA54EC(), sub_25AAC48F8(), v22 = sub_25AAC4668(), (*(v19 + 8))(v21, v8), (v22 & 1) == 0))
    {
LABEL_55:

      sub_25AAA5558();
      swift_allocError();
      *v57 = 25;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1Tm(v67);
    }

LABEL_22:
    v32 = v68;
    v31 = v69;
    v33 = __swift_project_boxed_opaque_existential_1Tm(v67, v68);
    v34 = *(v32 - 8);
    v35 = *(v34 + 64);
    MEMORY[0x28223BE20](v33, v33);
    v36 = &v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v36);
    v37 = *(v31 + 8);
    if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() <= 64)
    {
      goto LABEL_35;
    }

    *&v65 = 0x8000000000000000;
    if (sub_25AAC4928())
    {
      v38 = sub_25AAC4918();
      if (v38 < 64)
      {
        goto LABEL_34;
      }

      v62 = &v58;
LABEL_29:
      MEMORY[0x28223BE20](v38, v39);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v41 = sub_25AAC4668();
      result = (*(v34 + 8))(&v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
      if (v41)
      {
        goto LABEL_59;
      }

      goto LABEL_35;
    }

    v40 = sub_25AAC4928();
    v38 = sub_25AAC4918();
    if (v40)
    {
      v62 = &v58;
      if (v38 <= 64)
      {
        v61 = *(*(v37 + 24) + 16);
        v43 = swift_getAssociatedTypeWitness();
        v60 = &v58;
        MEMORY[0x28223BE20](v43, v44);
        swift_getAssociatedConformanceWitness();
        v45 = sub_25AAC4B18();
        v58 = &v58;
        MEMORY[0x28223BE20](v45, v46);
        sub_25AAC4AD8();
        v47 = sub_25AAC4668();
        result = (*(v34 + 8))(&v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
        if (v47)
        {
          goto LABEL_59;
        }

LABEL_34:
        sub_25AAC4908();
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    if (v38 < 64)
    {
      goto LABEL_34;
    }

LABEL_35:
    if (sub_25AAC4918() > 64 || sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
    {
      *&v65 = 0x7FFFFFFFFFFFFFFFLL;
      v48 = sub_25AAC4928();
      v49 = sub_25AAC4918();
      if (v48)
      {
        if (v49 < 65)
        {
          goto LABEL_44;
        }
      }

      else if (v49 < 64)
      {
LABEL_44:
        sub_25AAC4908();
        goto LABEL_45;
      }

      MEMORY[0x28223BE20](v49, v50);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v51 = sub_25AAC4668();
      result = (*(v34 + 8))(&v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
      if (v51)
      {
        goto LABEL_58;
      }
    }

LABEL_45:
    v52 = sub_25AAC4908();
    result = (*(v34 + 8))(v36, v32);
    if ((v52 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v52 >= *(v6 + 2))
    {
      goto LABEL_57;
    }

    sub_25AAA5378(&v6[32 * v52 + 32], &v65);

    v7 = v70;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_25AAAC4D8(0, *(v7 + 2) + 1, 1, v7);
    }

    v54 = *(v7 + 2);
    v53 = *(v7 + 3);
    if (v54 >= v53 >> 1)
    {
      v7 = sub_25AAAC4D8((v53 > 1), v54 + 1, 1, v7);
    }

    *(v7 + 2) = v54 + 1;
    sub_25AAA4B4C(&v65, &v7[32 * v54 + 32]);
    v6 = sub_25AAAA5D0();
    if (!v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

char *sub_25AAABA70@<X0>(char **a1@<X8>)
{
  v2 = sub_25AAAA5D0();
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
      *&v8 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_25AAAC4D8(0, *(v4 + 2) + 1, 1, v4);
      }

      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      if (v6 >= v5 >> 1)
      {
        v4 = sub_25AAAC4D8((v5 > 1), v6 + 1, 1, v4);
      }

      *(v4 + 2) = v6 + 1;
      sub_25AAA4B4C(&v8, &v4[32 * v6 + 32]);
      v3 = sub_25AAAA5D0();
    }

    while (v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
  a1[3] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_25AAABB98@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = sqlite3_step(*(a1 + 16));
  if (result == 100)
  {
    result = sqlite3_column_int(*(a1 + 16), 0);
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  a2[3] = MEMORY[0x277D83B88];
  *a2 = v5;
  return result;
}

uint64_t sub_25AAABC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AAA506C(&unk_286C19ED0);
  swift_arrayDestroy();
  v5 = sub_25AAA2D08(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  type metadata accessor for Statement();
  sub_25AAACBA4(&qword_27FA0FFB0, type metadata accessor for Statement, &protocol conformance descriptor for Statement);
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAABCD8()
{
  if (*(v0 + 176) != 1)
  {
    return *(v0 + 168);
  }

  sqlite3_reset(*(v0 + 16));
  v1 = *(sub_25AAAC920() + 2);

  sqlite3_reset(*(v0 + 16));
  result = v1;
  *(v0 + 168) = v1;
  *(v0 + 176) = 0;
  return result;
}

uint64_t sub_25AAABD34(uint64_t result)
{
  *(v1 + 168) = result;
  *(v1 + 176) = 0;
  return result;
}

uint64_t (*sub_25AAABD40(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_25AAABCD8();
  return sub_25AAABD88;
}

void *sub_25AAABD88(void *result)
{
  v1 = result[1];
  *(v1 + 168) = *result;
  *(v1 + 176) = 0;
  return result;
}

uint64_t sub_25AAABD98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFB8, &qword_25AAC57C8);
  v1 = swift_allocObject();
  *(v1 + 16) = sub_25AAACB0C;
  *(v1 + 24) = v0;

  return v1;
}

uint64_t sub_25AAABDF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AAAA5D0();
  v3 = result;
  if (result)
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEA8, &unk_25AAC5760);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  return result;
}

char *sub_25AAABE68()
{
  v0 = sub_25AAAC920();

  return v0;
}

void *sub_25AAABEC4(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  if (!a2 || !a3)
  {
LABEL_9:
    *v4 = v3;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = sub_25AAAA5D0();
    v5 = 0;
    if (v8)
    {
      while (1)
      {
        *(a2 + 8 * v5) = v8;
        if (a3 - 1 == v5)
        {
          break;
        }

        v8 = sub_25AAAA5D0();
        ++v5;
        if (!v8)
        {
          goto LABEL_9;
        }
      }

      v5 = a3;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

char *sub_25AAABFB0@<X0>(char **a1@<X8>)
{
  result = sub_25AAAA5D0();
  *a1 = result;
  return result;
}

uint64_t sub_25AAAC000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25AAA506C(&unk_286C19ED0);
  swift_arrayDestroy();
  v7 = sub_25AAA2D08(a1, a2, v6);

  if (v7)
  {
    return 1;
  }

  type metadata accessor for Statement();
  return sub_25AAC4568() & 1;
}

uint64_t sub_25AAAC0A8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFB8, &qword_25AAC57C8);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_25AAACFB4;
  *(v2 + 24) = v1;

  return v2;
}

uint64_t sub_25AAAC130(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821892B0](a1, WitnessTable);
}

uint64_t static SQLite.extendMorpheus()()
{
  v0 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_25AAC4548();
  v2 = MEMORY[0x277D84F90];
  sub_25AAC45D8();
  sub_25AAA4A20(v2);
  sub_25AAC45B8();
  swift_allocObject();
  sub_25AAC45A8();
  sub_25AAC4538();
}

uint64_t sub_25AAAC2D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  ppDb[1] = *MEMORY[0x277D85DE8];
  ppDb[0] = 0;
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(0x6573616261746164, 0xE800000000000000), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v12), (swift_dynamicCast() & 1) != 0) && (v6 = sub_25AAC4708(), , v7 = sqlite3_open((v6 + 32), ppDb), , !v7) && (v10 = ppDb[0]) != 0)
  {
    v11 = type metadata accessor for Connection();
    result = swift_allocObject();
    *(result + 16) = v10;
    a2[3] = v11;
    *a2 = result;
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v8 = 22;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AAAC454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE38, &unk_25AAC5410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_25AAAC4D8(char *result, int64_t a2, char a3, char *a4)
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

char *sub_25AAAC5E8(char *result, int64_t a2, char a3, char *a4)
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

void *sub_25AAAC744(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_25AAAC920()
{
  result = sub_25AAAA5D0();
  v1 = MEMORY[0x277D84F90];
  v2 = 0;
  if (result)
  {
    v3 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      if (!v2)
      {
        v4 = v1[3];
        if (((v4 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v5 = result;
        v6 = v4 & 0xFFFFFFFFFFFFFFFELL;
        if (v6 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFE0, &qword_25AAC59C8);
        v8 = swift_allocObject();
        v9 = _swift_stdlib_malloc_size(v8);
        v10 = v9 - 32;
        if (v9 < 32)
        {
          v10 = v9 - 25;
        }

        v11 = v10 >> 3;
        v8[2] = v7;
        v8[3] = 2 * (v10 >> 3);
        v12 = (v8 + 4);
        v13 = v1[3] >> 1;
        if (v1[2])
        {
          if (v8 != v1 || v12 >= &v1[v13 + 4])
          {
            memmove(v8 + 4, v1 + 4, 8 * v13);
          }

          v1[2] = 0;
        }

        v3 = (v12 + 8 * v13);
        v2 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v1 = v8;
        result = v5;
      }

      v15 = __OFSUB__(v2--, 1);
      if (v15)
      {
        break;
      }

      *v3++ = result;
      result = sub_25AAAA5D0();
      if (!result)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v16 = v1[3];
  if (v16 < 2)
  {
    return v1;
  }

  v17 = v16 >> 1;
  v15 = __OFSUB__(v17, v2);
  v18 = v17 - v2;
  if (!v15)
  {
    v1[2] = v18;
    return v1;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25AAACA78()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25AAACBA4(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25AAACBE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_25AAACC38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_25AAACC80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_25AAACCC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AAABCD8();
  *a1 = result;
  return result;
}

void *sub_25AAACCF0(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 168) = *result;
  *(v2 + 176) = 0;
  return result;
}

uint64_t sub_25AAACFB8()
{
  v0 = sub_25AAC44F8();
  __swift_allocate_value_buffer(v0, qword_27FA10AC0);
  __swift_project_value_buffer(v0, qword_27FA10AC0);
  return sub_25AAC44E8();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25AAAD0D4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_25AAC4848();
  if (!v22)
  {
    return sub_25AAC47E8();
  }

  v44 = v22;
  v48 = sub_25AAC4A68();
  v35 = sub_25AAC4A78();
  sub_25AAC4A18();
  result = sub_25AAC4838();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_25AAC4868();
      v26 = v15;
      v27 = v15;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_25AAC4A58();
      result = sub_25AAC4858();
      ++v24;
      v15 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25AAAD4F4()
{
  v0 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v0 - 8, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100C8, &qword_25AAC5BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AAC59E0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000025AAC6440;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D837D0];
  *(v3 + 16) = xmmword_25AAC5400;
  *(v3 + 56) = v4;
  *(v3 + 32) = 7104877;
  *(v3 + 40) = 0xE300000000000000;
  v5 = MEMORY[0x277D84F90];
  sub_25AAC45D8();
  sub_25AAA4A20(v5);
  sub_25AAC45B8();
  swift_allocObject();
  *(inited + 48) = sub_25AAC45A8();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x800000025AAC6460;
  sub_25AAC45D8();
  sub_25AAA4A20(v5);
  swift_allocObject();
  *(inited + 72) = sub_25AAC45A8();
  *(inited + 80) = 0x656E696172543545;
  *(inited + 88) = 0xE900000000000072;
  sub_25AAC45D8();
  sub_25AAA4A20(v5);
  swift_allocObject();
  *(inited + 96) = sub_25AAC45A8();
  v6 = sub_25AAA4D34(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100D0, &qword_25AAC5BA8);
  result = swift_arrayDestroy();
  qword_27FA10AD8 = v6;
  return result;
}

uint64_t sub_25AAAD82C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(1701869940, 0xE400000000000000), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v11), (swift_dynamicCast() & 1) != 0) && v9 == 7498085 && v10 == 0xE300000000000000)
  {
  }

  else
  {
    v6 = sub_25AAC4AF8();

    if ((v6 & 1) == 0)
    {
      sub_25AAC4458();
      swift_allocObject();
      sub_25AAC4448();
      v7 = sub_25AAC4428();
      swift_allocObject();
      result = sub_25AAC4438();
      goto LABEL_10;
    }
  }

  sub_25AAC4458();
  swift_allocObject();
  sub_25AAC4448();
  v7 = sub_25AAC4408();
  swift_allocObject();
  result = sub_25AAC4418();
LABEL_10:
  a2[3] = v7;
  *a2 = result;
  return result;
}

uint64_t sub_25AAAD9B8@<X0>(uint64_t *a1@<X8>)
{
  sub_25AAC4458();
  swift_allocObject();
  sub_25AAC4448();
  v2 = sub_25AAC43E8();
  swift_allocObject();
  result = sub_25AAC43F8();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_25AAADA38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25AAA48F0(0x6570797464, 0xE500000000000000), (v5 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v4, v15), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v13;
    v7 = v14 == 0xE700000000000000;
    if (v13 == 0x363174616F6C66 && v14 == 0xE700000000000000)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0x323374616F6C66;
    v7 = 1;
  }

  if (sub_25AAC4AF8())
  {
LABEL_9:

    v8 = &unk_27FA100E8;
    v9 = &unk_25AAC5BC0;
    goto LABEL_15;
  }

  if (v6 == 0x343674616F6C66 && v7)
  {
  }

  else
  {
    v10 = sub_25AAC4AF8();

    if ((v10 & 1) == 0)
    {
      v8 = &unk_27FA100D8;
      v9 = &unk_25AAC5BB0;
      goto LABEL_15;
    }
  }

  v8 = &unk_27FA100E0;
  v9 = &unk_25AAC5BB8;
LABEL_15:
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  swift_allocObject();
  result = sub_25AAC4488();
  a2[3] = v11;
  *a2 = result;
  return result;
}

uint64_t static OnDeviceML.extendMorpheus()()
{
  if (qword_27FA0FE20 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v1 = qword_27FA10AD8 + 64;
    v2 = 1 << *(qword_27FA10AD8 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(qword_27FA10AD8 + 64);
    v5 = (v2 + 63) >> 6;

    v6 = 0;
    if (v4)
    {
      break;
    }

LABEL_6:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {
      }

      v4 = *(v1 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  while (1)
  {
    v7 = v6;
LABEL_9:
    sub_25AAC4548();

    sub_25AAC4538();
    if (v0)
    {
      break;
    }

    v4 &= v4 - 1;

    v6 = v7;
    if (!v4)
    {
      goto LABEL_6;
    }
  }
}

double EspressoMILTrainer.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_25AAC4428();
  sub_25AAC01EC(&qword_27FA0FFF0, MEMORY[0x277D413D8], &protocol conformance descriptor for EspressoMILTrainer);
  sub_25AAC4558();
  if (v8)
  {
    sub_25AAA4B4C(&v7, a3);
  }

  else
  {
    sub_25AAA5640(&v7, &qword_27FA0FE38, &unk_25AAC5410);
    return sub_25AAADE80(a1, a2, a3);
  }

  return result;
}

double sub_25AAADE80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v6 - 8, v7);
  if (a1 == 0x64616F6C6E75 && a2 == 0xE600000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25AAC5560;
    v9 = MEMORY[0x277D837D0];
    *(v8 + 32) = 0x697461756C617665;
    *(v8 + 40) = 0xEA00000000006E6FLL;
    *(v8 + 88) = v9;
    *(v8 + 56) = v9;
    *(v8 + 64) = 0x676E696E69617274;
    *(v8 + 72) = 0xE800000000000000;
    v10 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v10);
    v11 = sub_25AAC45B8();
    swift_allocObject();
LABEL_9:
    v13 = sub_25AAC45A8();
    *(a3 + 24) = v11;
    *a3 = v13;
    return result;
  }

  if (a1 == 1684107116 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0xD000000000000012 && 0x800000025AAC5FA0 == a2 || (sub_25AAC4AF8() & 1) != 0)
  {
    goto LABEL_8;
  }

  if (a1 == 0x657A696C616E6966 && a2 == 0xE800000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v15 = swift_allocObject();
    v15[1] = xmmword_25AAC5400;
    v15[2] = 0u;
    v15[3] = 0u;
    v16 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v16);
    v11 = sub_25AAC45B8();
    swift_allocObject();
    goto LABEL_9;
  }

  if (a1 == 0x5774636172747865 && a2 == 0xEE00737468676965 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x4F74636172747865 && a2 == 0xEE00737475707475 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x6E69617274 && a2 == 0xE500000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 1818326629 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
LABEL_8:
    v12 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v12);
    v11 = sub_25AAC45B8();
    swift_allocObject();
    goto LABEL_9;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_25AAAE658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v6 - 8, v7);
  if (a1 == 0x64616F6C6E75 && a2 == 0xE600000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25AAC5560;
    v9 = MEMORY[0x277D837D0];
    *(v8 + 32) = 0x697461756C617665;
    *(v8 + 40) = 0xEA00000000006E6FLL;
    *(v8 + 88) = v9;
    *(v8 + 56) = v9;
    *(v8 + 64) = 0x676E696E69617274;
    *(v8 + 72) = 0xE800000000000000;
    v10 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v10);
    v11 = sub_25AAC45B8();
    swift_allocObject();
LABEL_9:
    v13 = sub_25AAC45A8();
    *(a3 + 24) = v11;
    *a3 = v13;
    return result;
  }

  if (a1 == 1684107116 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0xD000000000000012 && 0x800000025AAC5FA0 == a2 || (sub_25AAC4AF8() & 1) != 0)
  {
    goto LABEL_8;
  }

  if (a1 == 0x657A696C616E6966 && a2 == 0xE800000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v15 = swift_allocObject();
    v15[1] = xmmword_25AAC5400;
    v15[2] = 0u;
    v15[3] = 0u;
    v16 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v16);
    v11 = sub_25AAC45B8();
    swift_allocObject();
    goto LABEL_9;
  }

  if (a1 == 0x5774636172747865 && a2 == 0xEE00737468676965 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x4F74636172747865 && a2 == 0xEE00737475707475 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x6E69617274 && a2 == 0xE500000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 1818326629 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
LABEL_8:
    v12 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v12);
    v11 = sub_25AAC45B8();
    swift_allocObject();
    goto LABEL_9;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_25AAAEE30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v6 - 8, v7);
  if (a1 == 0x64616F6C6E75 && a2 == 0xE600000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25AAC5560;
    v9 = MEMORY[0x277D837D0];
    *(v8 + 32) = 0x697461756C617665;
    *(v8 + 40) = 0xEA00000000006E6FLL;
    *(v8 + 88) = v9;
    *(v8 + 56) = v9;
    *(v8 + 64) = 0x676E696E69617274;
    *(v8 + 72) = 0xE800000000000000;
    v10 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v10);
    v11 = sub_25AAC45B8();
    swift_allocObject();
LABEL_9:
    v13 = sub_25AAC45A8();
    *(a3 + 24) = v11;
    *a3 = v13;
    return result;
  }

  if (a1 == 1684107116 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0xD000000000000012 && 0x800000025AAC5FA0 == a2 || (sub_25AAC4AF8() & 1) != 0)
  {
    goto LABEL_8;
  }

  if (a1 == 0x657A696C616E6966 && a2 == 0xE800000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v15 = swift_allocObject();
    v15[1] = xmmword_25AAC5400;
    v15[2] = 0u;
    v15[3] = 0u;
    v16 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v16);
    v11 = sub_25AAC45B8();
    swift_allocObject();
    goto LABEL_9;
  }

  if (a1 == 0x5774636172747865 && a2 == 0xEE00737468676965 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x4F74636172747865 && a2 == 0xEE00737475707475 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x6E69617274 && a2 == 0xE500000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 1818326629 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
LABEL_8:
    v12 = MEMORY[0x277D84F90];
    sub_25AAC45D8();

    sub_25AAA4A20(v12);
    v11 = sub_25AAC45B8();
    swift_allocObject();
    goto LABEL_9;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double EspressoTrainer.morpheusExtension(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v32 = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = sub_25AAC45E8();
  MEMORY[0x28223BE20](v12 - 8, v13);
  if (a1 == 0x64616F6C6E75 && a2 == 0xE600000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25AAC5560;
    v15 = MEMORY[0x277D837D0];
    *(v14 + 32) = 0x697461756C617665;
    *(v14 + 40) = 0xEA00000000006E6FLL;
    *(v14 + 88) = v15;
    *(v14 + 56) = v15;
    *(v14 + 64) = 0x676E696E69617274;
    *(v14 + 72) = 0xE800000000000000;
    v16 = MEMORY[0x277D84F90];
    sub_25AAC45D8();
    (*(v10 + 16))(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    (*(v10 + 32))(v18 + v17, &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    sub_25AAA4A20(v16);
    v19 = sub_25AAC45B8();
    swift_allocObject();
LABEL_9:
    v23 = sub_25AAC45A8();
    v25 = v32;
    v32[3] = v19;
    *v25 = v23;
    return result;
  }

  if (a1 == 1684107116 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0xD000000000000012 && 0x800000025AAC5FA0 == a2 || (sub_25AAC4AF8() & 1) != 0)
  {
    goto LABEL_8;
  }

  if (a1 == 0x657A696C616E6966 && a2 == 0xE800000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE58, &unk_25AAC5420);
    v26 = swift_allocObject();
    v26[1] = xmmword_25AAC5400;
    v26[2] = 0u;
    v26[3] = 0u;
    v27 = MEMORY[0x277D84F90];
    sub_25AAC45D8();
    (*(v10 + 16))(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
    v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = a3;
    *(v29 + 24) = a4;
    (*(v10 + 32))(v29 + v28, &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    sub_25AAA4A20(v27);
    v19 = sub_25AAC45B8();
    swift_allocObject();
    goto LABEL_9;
  }

  if (a1 == 0x5774636172747865 && a2 == 0xEE00737468676965 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x4F74636172747865 && a2 == 0xEE00737475707475 || (sub_25AAC4AF8() & 1) != 0 || a1 == 0x6E69617274 && a2 == 0xE500000000000000 || (sub_25AAC4AF8() & 1) != 0 || a1 == 1818326629 && a2 == 0xE400000000000000 || (sub_25AAC4AF8() & 1) != 0)
  {
LABEL_8:
    v20 = MEMORY[0x277D84F90];
    sub_25AAC45D8();
    (*(v10 + 16))(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
    v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;
    (*(v10 + 32))(v22 + v21, &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    sub_25AAA4A20(v20);
    v19 = sub_25AAC45B8();
    swift_allocObject();
    goto LABEL_9;
  }

  result = 0.0;
  v30 = v32;
  *v32 = 0u;
  *(v30 + 1) = 0u;
  return result;
}

Swift::Bool __swiftcall EspressoTrainer.has(attribute:)(Swift::String attribute)
{
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v3 = sub_25AAA506C(&unk_286C1A930);
  swift_arrayDestroy();
  LOBYTE(object) = sub_25AAA2D08(countAndFlagsBits, object, v3);

  return object & 1;
}

double EspressoEIRTrainer.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_25AAC4408();
  sub_25AAC01EC(&qword_27FA0FFF8, MEMORY[0x277D413C8], &protocol conformance descriptor for EspressoEIRTrainer);
  sub_25AAC4558();
  if (v8)
  {
    sub_25AAA4B4C(&v7, a3);
  }

  else
  {
    sub_25AAA5640(&v7, &qword_27FA0FE38, &unk_25AAC5410);
    return sub_25AAAE658(a1, a2, a3);
  }

  return result;
}

_OWORD *sub_25AAB032C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(uint64_t, uint64_t)@<X5>, _OWORD *a6@<X8>)
{
  a4(0);
  sub_25AAC4558();
  if (v12)
  {
    return sub_25AAA4B4C(&v11, a6);
  }

  sub_25AAA5640(&v11, &qword_27FA0FE38, &unk_25AAC5410);
  return a5(a1, a2);
}

double EspressoE5Trainer.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_25AAC43E8();
  sub_25AAC01EC(&qword_27FA10000, MEMORY[0x277D413B8], &protocol conformance descriptor for EspressoE5Trainer);
  sub_25AAC4558();
  if (v8)
  {
    sub_25AAA4B4C(&v7, a3);
  }

  else
  {
    sub_25AAA5640(&v7, &qword_27FA0FE38, &unk_25AAC5410);
    return sub_25AAAEE30(a1, a2, a3);
  }

  return result;
}

void *sub_25AAB0520(uint64_t a1)
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
    if ((swift_dynamicCast() & 1) == 0)
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
      if ((swift_dynamicCast() & 1) == 0)
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

unint64_t sub_25AAB0BB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE70, &qword_25AAC5B10);
    v2 = sub_25AAC4AB8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_25AABFF24(*(a1 + 48) + 40 * v12, v24);
        sub_25AAA5378(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_25AABFF24(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_25AAA5640(v21, &qword_27FA10030, &qword_25AAC5B18);

          goto LABEL_23;
        }

        sub_25AAA5378(v22 + 8, v20);
        sub_25AAA5640(v21, &qword_27FA10030, &qword_25AAC5B18);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_25AAA48F0(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_25AAB0E84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FE88, &qword_25AAC5500);
    v2 = sub_25AAC4AB8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_25AABFF24(*(a1 + 48) + 40 * v11, v24);
        sub_25AAA5378(*(a1 + 56) + 32 * v11, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_25AABFF24(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_25AAA5640(v21, &qword_27FA10030, &qword_25AAC5B18);

          goto LABEL_23;
        }

        sub_25AAA5378(v22 + 8, v20);
        sub_25AAA5640(v21, &qword_27FA10030, &qword_25AAC5B18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100A8, &qword_25AAC5B78);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_25AAA48F0(v18, v19);
        v12 = result;
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;

          *(v2[7] + 8 * v12) = v18;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_25AAB1164(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v6 = sub_25AAC4AB8();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v6;
    }

    v9 = *(a1 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v9)) | (v14 << 6);
        sub_25AABFF24(*(a1 + 48) + 40 * v15, v30);
        sub_25AAA5378(*(a1 + 56) + 32 * v15, v31 + 8);
        v28[0] = v31[0];
        v28[1] = v31[1];
        v29 = v32;
        v27[0] = v30[0];
        v27[1] = v30[1];
        sub_25AABFF24(v27, v26);
        if (!swift_dynamicCast())
        {
          sub_25AAA5640(v27, &qword_27FA10030, &qword_25AAC5B18);

          goto LABEL_23;
        }

        sub_25AAA5378(v28 + 8, v26);
        sub_25AAA5640(v27, &qword_27FA10030, &qword_25AAC5B18);
        __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v9 &= v9 - 1;
        result = sub_25AAA48F0(v24, v25);
        v16 = result;
        if (v17)
        {
          v13 = (v6[6] + 16 * result);
          *v13 = v24;
          v13[1] = v25;

          *(v6[7] + 8 * v16) = v24;

          v12 = v14;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v6[2] >= v6[3])
          {
            goto LABEL_26;
          }

          *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v6[6] + 16 * result);
          *v18 = v24;
          v18[1] = v25;
          *(v6[7] + 8 * result) = v24;
          v19 = v6[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_27;
          }

          v6[2] = v21;
          v12 = v14;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v12;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25AAB1434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_25AABD758(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_25AAC382C, &qword_27FA0FE80, &qword_25AAC54F8);

    *v3 = v15;
  }

  else
  {
    v10 = sub_25AAA48F0(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_25AAC382C();
        v14 = v16;
      }

      result = sub_25AAC3350(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_25AAB1550(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_25AAC4A28();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_25AAA5378(i, v5);
    sub_25AABFED8();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_25AAC49F8();
    sub_25AAC4A38();
    sub_25AAC4A48();
    sub_25AAC4A08();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_25AAB163C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_25AABCCA0(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25AAA5378(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25AABCCA0((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_25AAB1750(uint64_t a1)
{
  v2 = a1;
  v3 = sub_25AAB0BB8(a1);
  if (v3)
  {
    return v3;
  }

  v55[3] = v1;
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
  v57 = v2;
  v58 = v9;
  v59 = v2 + 64;
  while (v8)
  {
    v12 = v10;
LABEL_18:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v12 << 6);
    sub_25AABFF24(*(v2 + 48) + 40 * v16, &v66);
    sub_25AAA5378(*(v2 + 56) + 32 * v16, v65);
    v69 = v66;
    v70 = v67;
    *&v71 = v68;
    sub_25AAA4B4C(v65, (&v71 + 8));
LABEL_19:
    v76[0] = v71;
    v76[1] = v72;
    v77 = v73;
    v74 = v69;
    v75 = v70;
    if (!*(&v70 + 1))
    {

      return v4;
    }

    sub_25AAA4B4C((v76 + 8), v65);
    v69 = v74;
    v70 = v75;
    *&v71 = *&v76[0];
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_59:
      sub_25AAA5558();
      swift_allocError();
      *v53 = 1;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      return v4;
    }

    v17 = *(&v66 + 1);
    v78 = v66;
    sub_25AAA5378(v65, &v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v68 = 0;
      v66 = 0u;
      v67 = 0u;

      sub_25AAA5640(&v66, &qword_27FA0FEE8, &unk_25AAC5540);
      goto LABEL_59;
    }

    v61 = v17;
    v62 = v4;
    sub_25AAA5864(&v66, &v69);
    v18 = *(&v70 + 1);
    v19 = v71;
    v20 = __swift_project_boxed_opaque_existential_1Tm(&v69, *(&v70 + 1));
    v60 = v55;
    v21 = *(*(v18 - 8) + 64);
    MEMORY[0x28223BE20](v20, v20);
    v22 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = v23;
    (*(v23 + 16))(v22);
    if ((sub_25AAC4928() & 1) != 0 && sub_25AAC4918() >= 65)
    {
      *&v66 = 0x8000000000000000;
      if (sub_25AAC4928())
      {
        v24 = sub_25AAC4918();
        if (v24 < 64)
        {
          goto LABEL_33;
        }

LABEL_30:
        v56 = v55;
        MEMORY[0x28223BE20](v24, v25);
        sub_25AAA54EC();
        sub_25AAC48F8();
        v26 = sub_25AAC4668();
        (*(v63 + 8))(v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
        v2 = v57;
        if (v26)
        {
          goto LABEL_65;
        }

        goto LABEL_36;
      }

      LODWORD(v56) = sub_25AAC4928();
      v24 = sub_25AAC4918();
      if (v56)
      {
        if (v24 > 64)
        {
          goto LABEL_30;
        }

        v56 = *(*(v19 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v55[2] = v55;
        MEMORY[0x28223BE20](AssociatedTypeWitness, v28);
        v55[0] = v55 - v29;
        swift_getAssociatedConformanceWitness();
        v30 = sub_25AAC4B18();
        v55[1] = v55;
        MEMORY[0x28223BE20](v30, v31);
        sub_25AAC4AD8();
        v32 = sub_25AAC4668();
        (*(v63 + 8))(v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
        if (v32)
        {
          goto LABEL_65;
        }

        sub_25AAC4908();
        v2 = v57;
      }

      else if (v24 < 64)
      {
LABEL_33:
        sub_25AAC4908();
      }
    }

LABEL_36:
    if (sub_25AAC4918() > 64 || sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
    {
      *&v66 = 0x7FFFFFFFFFFFFFFFLL;
      v33 = sub_25AAC4928();
      v34 = sub_25AAC4918();
      if (v33)
      {
        if (v34 <= 64)
        {
          goto LABEL_45;
        }
      }

      else if (v34 < 64)
      {
LABEL_45:
        sub_25AAC4908();
        v2 = v57;
        goto LABEL_46;
      }

      MEMORY[0x28223BE20](v34, v35);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v36 = sub_25AAC4668();
      (*(v63 + 8))(v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      v2 = v57;
      if (v36)
      {
        goto LABEL_64;
      }
    }

LABEL_46:
    v37 = sub_25AAC4908();
    (*(v63 + 8))(v22, v18);
    v38 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v66 = v38;
    v40 = v61;
    v41 = sub_25AAA48F0(v78, v61);
    v43 = v38[2];
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      goto LABEL_62;
    }

    v47 = v42;
    if (v38[3] < v46)
    {
      sub_25AABD218(v46, isUniquelyReferenced_nonNull_native);
      v41 = sub_25AAA48F0(v78, v40);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_66;
      }

LABEL_51:
      if (v47)
      {
        goto LABEL_6;
      }

      goto LABEL_52;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_51;
    }

    v52 = v41;
    sub_25AAC36B0();
    v41 = v52;
    if (v47)
    {
LABEL_6:
      v11 = v41;

      v4 = v66;
      *(*(v66 + 56) + 8 * v11) = v37;
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      goto LABEL_7;
    }

LABEL_52:
    v4 = v66;
    *(v66 + 8 * (v41 >> 6) + 64) |= 1 << v41;
    v49 = (v4[6] + 16 * v41);
    *v49 = v78;
    v49[1] = v40;
    *(v4[7] + 8 * v41) = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    v50 = v4[2];
    v45 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (v45)
    {
      goto LABEL_63;
    }

    v4[2] = v51;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(&v69);
    v9 = v58;
    v5 = v59;
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
      v73 = 0;
      v71 = 0u;
      v72 = 0u;
      v10 = v14;
      v69 = 0u;
      v70 = 0u;
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
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_25AAC4B28();
  __break(1u);
  return result;
}

uint64_t sub_25AAB2014@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X8>)
{
  v4 = sub_25AAC43B8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v56 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v49 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v57 = v49 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v50 = v49 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = v49 - v20;
  v22 = *(a1 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v53 = v12;
    v54 = a2;
    v58 = MEMORY[0x277D84F90];
    sub_25AABCD00(0, v22, 0);
    v24 = v58;
    v55 = v5 + 32;
    v25 = (a1 + 40);
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      v28 = v26 == 0x697461756C617665 && v27 == 0xEA00000000006E6FLL;
      if (v28 || (sub_25AAC4AF8() & 1) != 0)
      {
        sub_25AAC4398();
      }

      else
      {
        if (v26 != 0x676E696E69617274 || v27 != 0xE800000000000000)
        {
          sub_25AAC4AF8();
        }

        sub_25AAC43A8();
      }

      v30 = v24;
      v58 = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_25AABCD00((v31 > 1), v32 + 1, 1);
        v30 = v58;
      }

      *(v30 + 16) = v32 + 1;
      v24 = v30;
      (*(v5 + 32))(v30 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v32, v21, v4);
      v25 += 2;
      --v22;
    }

    while (v22);
    v12 = v53;
    a2 = v54;
    v33 = v24;
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v58 = v23;
  v34 = sub_25AAC01EC(&qword_27FA10060, MEMORY[0x277D41370], MEMORY[0x277D41380]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10068, &qword_25AAC5B58);
  sub_25AAA968C(&qword_27FA10070, &qword_27FA10068, &qword_25AAC5B58, MEMORY[0x277D83970]);
  v35 = v50;
  v36 = v34;
  sub_25AAC4948();
  v37 = a2;
  v38 = a2;
  v39 = *(v5 + 16);
  v39(v38, v35, v4);
  v40 = *(v33 + 16);
  if (v40)
  {
    v41 = v33 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v53 = *(v5 + 72);
    v54 = v39;
    v55 = v5 + 16;
    v42 = (v5 + 8);
    v51 = v36;
    v52 = (v5 + 32);
    v49[1] = v33;
    v49[2] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43 = v57;
    do
    {
      v44 = v54;
      v54(v43, v41, v4);
      v45 = MEMORY[0x277D41370];
      sub_25AAC01EC(&qword_27FA10078, MEMORY[0x277D41370], MEMORY[0x277D41378]);
      sub_25AAC47C8();
      v46 = v45;
      v43 = v57;
      sub_25AAC01EC(&qword_27FA10080, v46, MEMORY[0x277D41388]);
      sub_25AAC4BA8();
      v44(v56, v43, v4);
      sub_25AAC4938();
      v47 = *v42;
      (*v42)(v43, v4);
      v47(v37, v4);
      (*v52)(v37, v12, v4);
      v41 += v53;
      --v40;
    }

    while (v40);
  }

  else
  {

    v47 = *(v5 + 8);
  }

  return (v47)(v50, v4);
}

uint64_t sub_25AAB2560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a5@<X8>)
{
  v9 = sub_25AAC43B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  if (!*(a1 + 16) || (v14 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE900000000000073), (v15 & 1) == 0))
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_8;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v14, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_8;
  }

  if (!*(&v23 + 1))
  {
LABEL_8:
    sub_25AAA5640(&v22, &qword_27FA10008, &qword_25AAC5AD0);
    goto LABEL_9;
  }

  v20[1] = v24;
  __swift_project_boxed_opaque_existential_1Tm(&v22, *(&v23 + 1));
  v16 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  v17 = sub_25AAB163C(v16);

  if (v17)
  {
    *(a5 + 24) = MEMORY[0x277D84F78] + 8;
    sub_25AAB2014(v17, v13);

    a3(0);
    sub_25AAC4378();
    return (*(v10 + 8))(v13, v9);
  }

LABEL_9:
  sub_25AAA5558();
  swift_allocError();
  *v19 = 2;
  return swift_willThrow();
}

uint64_t sub_25AAB27C0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = sub_25AAC43B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v12 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE900000000000073), (v13 & 1) == 0))
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    goto LABEL_8;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v12, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    goto LABEL_8;
  }

  v23 = a3;
  if (!*(&v21 + 1))
  {
LABEL_8:
    sub_25AAA5640(&v20, &qword_27FA10008, &qword_25AAC5AD0);
    goto LABEL_9;
  }

  v18[1] = v22;
  __swift_project_boxed_opaque_existential_1Tm(&v20, *(&v21 + 1));
  v14 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v20);
  v15 = sub_25AAB163C(v14);

  if (v15)
  {
    *(a4 + 24) = MEMORY[0x277D84F78] + 8;
    sub_25AAB2014(v15, v11);

    sub_25AAC4378();
    return (*(v8 + 8))(v11, v7);
  }

LABEL_9:
  sub_25AAA5558();
  swift_allocError();
  *v17 = 2;
  return swift_willThrow();
}

uint64_t sub_25AAB2A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a5@<X8>)
{
  v42 = a5;
  v9 = sub_25AAC43B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v14 = sub_25AAA48F0(1752457584, 0xE400000000000000);
  if ((v15 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v14, &v44);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v16 = v43[1];
  if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

  v40 = v43[0];
  v17 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE900000000000073);
  if ((v18 & 1) == 0)
  {
    goto LABEL_29;
  }

  v41 = v16;
  sub_25AAA5378(*(a1 + 56) + 32 * v17, v43);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_27;
  }

  v38 = v19;
  if (!*(&v45 + 1))
  {
LABEL_27:

LABEL_30:
    sub_25AAA5640(&v44, &qword_27FA10008, &qword_25AAC5AD0);
LABEL_31:
    sub_25AAA5558();
    swift_allocError();
    *v35 = 3;
    return swift_willThrow();
  }

  v39 = v46;
  __swift_project_boxed_opaque_existential_1Tm(&v44, *(&v45 + 1));
  v20 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  v21 = sub_25AAB163C(v20);

  if (!v21)
  {
LABEL_43:

    goto LABEL_31;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_28;
  }

  v39 = v21;
  v22 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v23 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v22, v43);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_33;
  }

  if (!*(&v45 + 1))
  {
LABEL_33:

    goto LABEL_27;
  }

  v37 = v46;
  __swift_project_boxed_opaque_existential_1Tm(&v44, *(&v45 + 1));
  v24 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  v25 = sub_25AAB163C(v24);

  if (!v25)
  {
LABEL_42:

    goto LABEL_43;
  }

  if (!*(a1 + 16) || (v37 = v25, v26 = sub_25AAA48F0(0x7374757074756FLL, 0xE700000000000000), (v27 & 1) == 0))
  {

LABEL_28:

LABEL_29:

    v44 = 0u;
    v45 = 0u;
    v46 = 0;
    goto LABEL_30;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v26, v43);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_36;
  }

  if (!*(&v45 + 1))
  {
LABEL_36:

    goto LABEL_27;
  }

  v36[1] = v46;
  __swift_project_boxed_opaque_existential_1Tm(&v44, *(&v45 + 1));
  v28 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  v29 = sub_25AAB163C(v28);

  if (!v29)
  {
LABEL_41:

    goto LABEL_42;
  }

  if (!*(a1 + 16) || (v30 = sub_25AAA48F0(0x73746867696577, 0xE700000000000000), (v31 & 1) == 0))
  {

    goto LABEL_29;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v30, v43);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_39;
  }

  if (!*(&v45 + 1))
  {
LABEL_39:

    goto LABEL_36;
  }

  v38 = v46;
  __swift_project_boxed_opaque_existential_1Tm(&v44, *(&v45 + 1));
  v32 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  v33 = sub_25AAB163C(v32);

  if (!v33)
  {

    goto LABEL_41;
  }

  *(v42 + 24) = MEMORY[0x277D84F78] + 8;
  sub_25AAB2014(v39, v13);

  a3(0);
  sub_25AAC4358();
  (*(v10 + 8))(v13, v9);

  if (!v5)
  {
  }

  return __swift_deallocate_boxed_opaque_existential_0(v42);
}

uint64_t sub_25AAB3050@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v42 = a4;
  v6 = sub_25AAC43B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_30;
  }

  v11 = sub_25AAA48F0(1752457584, 0xE400000000000000);
  if ((v12 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v11, &v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v36 = v38[0];
  v37 = v38[1];
  v13 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE900000000000073);
  if ((v14 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v13, v38);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_28;
  }

  if (!*(&v40 + 1))
  {
LABEL_28:

    goto LABEL_29;
  }

  v33 = *(&v40 + 1);
  v34 = v41;
  __swift_project_boxed_opaque_existential_1Tm(&v39, *(&v40 + 1));
  v15 = sub_25AAC4588();
  v34 = v15;
  __swift_destroy_boxed_opaque_existential_1Tm(&v39);
  v16 = sub_25AAB163C(v15);

  v34 = v16;
  if (!v16)
  {
LABEL_43:

    goto LABEL_30;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_37;
  }

  v17 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v18 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v17, v38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_32;
  }

  if (!*(&v40 + 1))
  {
LABEL_32:

    goto LABEL_28;
  }

  v32 = *(&v40 + 1);
  v33 = v41;
  __swift_project_boxed_opaque_existential_1Tm(&v39, *(&v40 + 1));
  v19 = sub_25AAC4588();
  v33 = v19;
  __swift_destroy_boxed_opaque_existential_1Tm(&v39);
  v20 = sub_25AAB163C(v19);

  v33 = v20;
  if (!v20)
  {
LABEL_42:

    goto LABEL_43;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_36;
  }

  v21 = sub_25AAA48F0(0x7374757074756FLL, 0xE700000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v21, v38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_34;
  }

  if (!*(&v40 + 1))
  {
LABEL_34:

    goto LABEL_28;
  }

  v31[1] = *(&v40 + 1);
  v32 = v41;
  __swift_project_boxed_opaque_existential_1Tm(&v39, *(&v40 + 1));
  v23 = sub_25AAC4588();
  v32 = v23;
  __swift_destroy_boxed_opaque_existential_1Tm(&v39);
  v24 = sub_25AAB163C(v23);

  v32 = v24;
  if (!v24)
  {
LABEL_41:

    goto LABEL_42;
  }

  if (!*(a1 + 16) || (v25 = sub_25AAA48F0(0x73746867696577, 0xE700000000000000), (v26 & 1) == 0))
  {

LABEL_36:

LABEL_37:

LABEL_26:

    v39 = 0u;
    v40 = 0u;
    v41 = 0;
LABEL_29:
    sub_25AAA5640(&v39, &qword_27FA10008, &qword_25AAC5AD0);
LABEL_30:
    sub_25AAA5558();
    swift_allocError();
    *v30 = 3;
    return swift_willThrow();
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v25, v38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_39;
  }

  if (!*(&v40 + 1))
  {
LABEL_39:

    goto LABEL_34;
  }

  v35 = v41;
  __swift_project_boxed_opaque_existential_1Tm(&v39, *(&v40 + 1));
  v27 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v39);
  v28 = sub_25AAB163C(v27);

  v35 = v28;
  if (!v28)
  {

    goto LABEL_41;
  }

  *(v42 + 24) = MEMORY[0x277D84F78] + 8;
  sub_25AAB2014(v34, v10);

  sub_25AAC4358();
  (*(v7 + 8))(v10, v6);

  if (!v4)
  {
  }

  return __swift_deallocate_boxed_opaque_existential_0(v42);
}

uint64_t sub_25AAB3654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a5@<X8>)
{
  v25 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v9 = sub_25AAA48F0(1752457584, 0xE400000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v9, &v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v11 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v12 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v11, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_17;
  }

  if (!*(&v23 + 1))
  {
LABEL_17:

LABEL_20:
    sub_25AAA5640(&v22, &qword_27FA10008, &qword_25AAC5AD0);
LABEL_21:
    sub_25AAA5558();
    swift_allocError();
    *v20 = 4;
    return swift_willThrow();
  }

  __swift_project_boxed_opaque_existential_1Tm(&v22, *(&v23 + 1));
  v13 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  v14 = sub_25AAB163C(v13);

  if (!v14)
  {
LABEL_26:

    goto LABEL_21;
  }

  if (!*(a1 + 16) || (v15 = sub_25AAA48F0(0x7374757074756FLL, 0xE700000000000000), (v16 & 1) == 0))
  {

LABEL_19:

    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_20;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v15, &v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_24;
  }

  if (!*(&v23 + 1))
  {
LABEL_24:

    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v22, *(&v23 + 1));
  v17 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  v18 = sub_25AAB163C(v17);

  if (!v18)
  {

    goto LABEL_26;
  }

  *(a5 + 24) = MEMORY[0x277D84F78] + 8;
  a3(0);
  sub_25AAC4338();

  if (v5)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a5);
  }

  return result;
}

uint64_t sub_25AAB398C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v7 = sub_25AAA48F0(1752457584, 0xE400000000000000);
  if ((v8 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v7, &v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

  v9 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_20;
  }

  v23 = v19[1];
  sub_25AAA5378(*(a1 + 56) + 32 * v9, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10010, &qword_25AAC5AD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    goto LABEL_18;
  }

  if (!*(&v21 + 1))
  {
LABEL_18:

LABEL_21:
    sub_25AAA5640(&v20, &qword_27FA10008, &qword_25AAC5AD0);
LABEL_22:
    sub_25AAA5558();
    swift_allocError();
    *v18 = 4;
    return swift_willThrow();
  }

  __swift_project_boxed_opaque_existential_1Tm(&v20, *(&v21 + 1));
  v11 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v20);
  v12 = sub_25AAB163C(v11);

  if (!v12)
  {
LABEL_26:

    goto LABEL_22;
  }

  if (!*(a1 + 16) || (v13 = sub_25AAA48F0(0x7374757074756FLL, 0xE700000000000000), (v14 & 1) == 0))
  {

LABEL_20:

    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    goto LABEL_21;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v13, v19);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    goto LABEL_24;
  }

  if (!*(&v21 + 1))
  {
LABEL_24:

    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v20, *(&v21 + 1));
  v15 = sub_25AAC4588();
  __swift_destroy_boxed_opaque_existential_1Tm(&v20);
  v16 = sub_25AAB163C(v15);

  if (!v16)
  {

    goto LABEL_26;
  }

  *(a4 + 24) = MEMORY[0x277D84F78] + 8;
  sub_25AAC4338();
  if (v4)
  {
    __swift_deallocate_boxed_opaque_existential_0(a4);
  }
}

uint64_t sub_25AAB3CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a5@<X8>)
{
  v60 = a2;
  if (!*(a1 + 16) || (v9 = sub_25AAA48F0(0x7A69536863746162, 0xE900000000000065), (v10 & 1) == 0))
  {
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    goto LABEL_12;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v9, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    goto LABEL_12;
  }

  if (!*(&v55 + 1))
  {
LABEL_12:
    sub_25AAA5640(&v54, &qword_27FA0FEE8, &unk_25AAC5540);
    sub_25AAA5558();
    swift_allocError();
    *v18 = 5;
    return swift_willThrow();
  }

  sub_25AAA5864(&v54, v57);
  if (!*(a1 + 16) || (v11 = sub_25AAA48F0(0x676E696E7261656CLL, 0xEC00000065746152), (v12 & 1) == 0))
  {
    v17 = 0;
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
LABEL_15:
    v49 = 1;
    goto LABEL_16;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v11, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10098, &qword_25AAC5B70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    goto LABEL_15;
  }

  if (!*(&v55 + 1))
  {
    v17 = 0;
    goto LABEL_15;
  }

  result = sub_25AAC0234(&v54, v52);
  if (!v53)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v14 = __swift_project_boxed_opaque_existential_1Tm(v52, v53);
  MEMORY[0x28223BE20](v14, v14);
  (*(v16 + 16))(v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25AAC02A4();
  sub_25AAC45F8();
  v17 = v51;
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  v49 = 0;
LABEL_16:
  *(a5 + 24) = MEMORY[0x277D84F78] + 8;
  v19 = v58;
  v20 = v59;
  v21 = __swift_project_boxed_opaque_existential_1Tm(v57, v58);
  v48 = v44;
  MEMORY[0x28223BE20](v21, v21);
  v46 = v22;
  v23 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v24;
  (*(v24 + 16))(v23);
  if ((sub_25AAC4928() & 1) != 0 && sub_25AAC4918() >= 65)
  {
    v52[0] = 0x8000000000000000;
    if (sub_25AAC4928())
    {
      v25 = sub_25AAC4918();
      if (v25 >= 64)
      {
        v47 = v17;
LABEL_24:
        v45 = v44;
        MEMORY[0x28223BE20](v25, v26);
        v28 = v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAA54EC();
        sub_25AAC48F8();
        v29 = sub_25AAC4668();
        result = (*(v50 + 8))(v28, v19);
        v17 = v47;
        if (v29)
        {
          goto LABEL_44;
        }

        goto LABEL_31;
      }

LABEL_27:
      sub_25AAC4908();
      goto LABEL_31;
    }

    LODWORD(v47) = sub_25AAC4928();
    v25 = sub_25AAC4918();
    if (v47)
    {
      v47 = v17;
      if (v25 <= 64)
      {
        v45 = *(*(v20 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v44[3] = v44;
        MEMORY[0x28223BE20](AssociatedTypeWitness, v31);
        v44[1] = v44 - v32;
        swift_getAssociatedConformanceWitness();
        v33 = sub_25AAC4B18();
        v44[2] = v44;
        MEMORY[0x28223BE20](v33, v34);
        v36 = v44 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAC4AD8();
        v37 = sub_25AAC4668();
        result = (*(v50 + 8))(v36, v19);
        if (v37)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        sub_25AAC4908();
        v17 = v47;
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    if (v25 < 64)
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v47 = v17;
    v52[0] = 0x7FFFFFFFFFFFFFFFLL;
    v38 = sub_25AAC4928();
    v39 = sub_25AAC4918();
    if ((v38 & 1) == 0)
    {
      break;
    }

    if (v39 <= 64)
    {
      goto LABEL_40;
    }

LABEL_34:
    v45 = v44;
    MEMORY[0x28223BE20](v39, v40);
    v42 = v44 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v43 = sub_25AAC4668();
    (*(v50 + 8))(v42, v19);
    v17 = v47;
    if (v43)
    {
      __break(1u);
LABEL_36:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_41;
  }

  if (v39 >= 64)
  {
    goto LABEL_34;
  }

LABEL_40:
  sub_25AAC4908();
LABEL_41:
  sub_25AAC4908();
  (*(v50 + 8))(v23, v19);
  a3(0);
  LOBYTE(v52[0]) = v49;
  sub_25AAC4388();
  if (v5)
  {
    __swift_deallocate_boxed_opaque_existential_0(a5);
  }

  sub_25AAA5640(&v54, &qword_27FA10090, &qword_25AAC5B68);
  return __swift_destroy_boxed_opaque_existential_1Tm(v57);
}

uint64_t sub_25AAB4550@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (!*(a1 + 16) || (v8 = sub_25AAA48F0(0x7A69536863746162, 0xE900000000000065), (v9 & 1) == 0))
  {
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
    goto LABEL_12;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v8, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    goto LABEL_12;
  }

  if (!*(&v61 + 1))
  {
LABEL_12:
    sub_25AAA5640(&v60, &qword_27FA0FEE8, &unk_25AAC5540);
    sub_25AAA5558();
    swift_allocError();
    *v18 = 5;
    return swift_willThrow();
  }

  sub_25AAA5864(&v60, v63);
  v10 = *(a1 + 16);
  v56 = a3;
  if (!v10 || (v11 = sub_25AAA48F0(0x676E696E7261656CLL, 0xEC00000065746152), (v12 & 1) == 0))
  {
    v17 = 0;
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
LABEL_15:
    v66 = 1;
    goto LABEL_16;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v11, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10098, &qword_25AAC5B70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    goto LABEL_15;
  }

  if (!*(&v61 + 1))
  {
    v17 = 0;
    goto LABEL_15;
  }

  result = sub_25AAC0234(&v60, v58);
  if (!v59)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  v14 = __swift_project_boxed_opaque_existential_1Tm(v58, v59);
  MEMORY[0x28223BE20](v14, v14);
  (*(v16 + 16))(v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25AAC02A4();
  sub_25AAC45F8();
  v17 = v67;
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  v66 = 0;
LABEL_16:
  *(a4 + 24) = MEMORY[0x277D84F78] + 8;
  v19 = v64;
  v20 = v65;
  v21 = __swift_project_boxed_opaque_existential_1Tm(v63, v64);
  v55 = v51;
  MEMORY[0x28223BE20](v21, v21);
  v53 = v22;
  v23 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v24;
  (*(v24 + 16))(v23);
  if ((sub_25AAC4928() & 1) != 0 && sub_25AAC4918() > 64)
  {
    v58[0] = 0x8000000000000000;
    if (sub_25AAC4928())
    {
      v25 = sub_25AAC4918();
      if (v25 >= 64)
      {
        v52 = v51;
        MEMORY[0x28223BE20](v25, v26);
        v54 = v17;
        v28 = v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAA54EC();
        sub_25AAC48F8();
        v29 = sub_25AAC4668();
        v30 = v28;
        v17 = v54;
        result = (*(v57 + 8))(v30, v19);
        if (v29)
        {
          goto LABEL_45;
        }

        goto LABEL_32;
      }

      goto LABEL_28;
    }

    v54 = v17;
    v31 = sub_25AAC4928();
    v32 = sub_25AAC4918();
    if (v31)
    {
      if (v32 <= 64)
      {
        v52 = *(*(v20 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v51[2] = v51;
        MEMORY[0x28223BE20](AssociatedTypeWitness, v38);
        v51[0] = v51 - v39;
        swift_getAssociatedConformanceWitness();
        v40 = sub_25AAC4B18();
        v51[1] = v51;
        MEMORY[0x28223BE20](v40, v41);
        v43 = v51 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAC4AD8();
        v44 = sub_25AAC4668();
        result = (*(v57 + 8))(v43, v19);
        if (v44)
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        sub_25AAC4908();
        v17 = v54;
      }

      else
      {
        v52 = v51;
        MEMORY[0x28223BE20](v32, v33);
        v35 = v51 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25AAA54EC();
        sub_25AAC48F8();
        v36 = sub_25AAC4668();
        result = (*(v57 + 8))(v35, v19);
        v17 = v54;
        if (v36)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_32;
    }

    v17 = v54;
    if (v32 < 64)
    {
LABEL_28:
      sub_25AAC4908();
    }
  }

LABEL_32:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v54 = v17;
    v58[0] = 0x7FFFFFFFFFFFFFFFLL;
    v45 = sub_25AAC4928();
    v46 = sub_25AAC4918();
    if ((v45 & 1) == 0)
    {
      break;
    }

    if (v46 < 65)
    {
      goto LABEL_41;
    }

LABEL_35:
    v52 = v51;
    MEMORY[0x28223BE20](v46, v47);
    v49 = v51 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v50 = sub_25AAC4668();
    (*(v57 + 8))(v49, v19);
    v17 = v54;
    if (v50)
    {
      __break(1u);
LABEL_37:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_42;
  }

  if (v46 >= 64)
  {
    goto LABEL_35;
  }

LABEL_41:
  sub_25AAC4908();
LABEL_42:
  sub_25AAC4908();
  (*(v57 + 8))(v23, v19);
  LOBYTE(v58[0]) = v66;
  sub_25AAC4388();
  if (v4)
  {
    __swift_deallocate_boxed_opaque_existential_0(a4);
  }

  sub_25AAA5640(&v60, &qword_27FA10090, &qword_25AAC5B68);
  return __swift_destroy_boxed_opaque_existential_1Tm(v63);
}

uint64_t sub_25AAB4E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a5@<X8>)
{
  v10 = sub_25AAC43B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a2;
  if (*(a1 + 16) && (v15 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000), (v16 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v15, v29), (swift_dynamicCast() & 1) != 0))
  {
    v25 = a5;
    v17 = v27;
    v26 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFE8, &unk_25AAC59D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25AAC5400;
    *(inited + 32) = v17;
    v19 = inited + 32;
    *(inited + 40) = v26;
    sub_25AAB2014(inited, v14);
    swift_setDeallocating();
    sub_25AAA93C0(v19);
    a3(0);
    v20 = sub_25AAC4328();
    if (v5)
    {
      return (*(v11 + 8))(v14, v10);
    }

    else
    {
      v23 = v20;
      (*(v11 + 8))(v14, v10);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100A8, &qword_25AAC5B78);
      v24 = v25;
      v25[3] = result;
      *v24 = v23;
    }
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v22 = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AAB50C0@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v7 = sub_25AAC43B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v12 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000), (v13 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v12, v25), (swift_dynamicCast() & 1) != 0))
  {
    v26 = v23;
    v21 = a4;
    v22 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFE8, &unk_25AAC59D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25AAC5400;
    *(inited + 32) = v26;
    v15 = inited + 32;
    *(inited + 40) = v22;
    sub_25AAB2014(inited, v11);
    swift_setDeallocating();
    sub_25AAA93C0(v15);
    v16 = sub_25AAC4328();
    if (v4)
    {
      return (*(v8 + 8))(v11, v7);
    }

    else
    {
      v19 = v16;
      (*(v8 + 8))(v11, v7);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100A8, &qword_25AAC5B78);
      v20 = v21;
      v21[3] = result;
      *v20 = v19;
    }
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v18 = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AAB5304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a5@<X8>)
{
  v9 = sub_25AAC43B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  if (*(a1 + 16) && (v14 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000), (v15 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v14, v26), (swift_dynamicCast() & 1) != 0))
  {
    v22 = v25;
    v23 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFE8, &unk_25AAC59D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25AAC5400;
    v17 = v22;
    *(inited + 32) = v23;
    v18 = inited + 32;
    *(inited + 40) = v17;
    sub_25AAB2014(inited, v13);
    swift_setDeallocating();
    sub_25AAA93C0(v18);
    a3(0);
    v19 = sub_25AAC4318();
    (*(v10 + 8))(v13, v9);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100B0, &unk_25AAC5B80);
    a5[3] = result;
    *a5 = v19;
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v21 = 7;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AAB5524@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = sub_25AAC43B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v12 = sub_25AAA48F0(0x6E6F6974636E7566, 0xE800000000000000), (v13 & 1) != 0) && (sub_25AAA5378(*(a1 + 56) + 32 * v12, v23), (swift_dynamicCast() & 1) != 0))
  {
    v24 = v21;
    v20 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FFE8, &unk_25AAC59D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25AAC5400;
    v19 = a3;
    *(inited + 32) = v24;
    v15 = inited + 32;
    *(inited + 40) = v20;
    sub_25AAB2014(inited, v11);
    swift_setDeallocating();
    sub_25AAA93C0(v15);
    v16 = sub_25AAC4318();
    (*(v8 + 8))(v11, v7);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100B0, &unk_25AAC5B80);
    a4[3] = result;
    *a4 = v16;
  }

  else
  {
    sub_25AAA5558();
    swift_allocError();
    *v18 = 7;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AAB5740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a3;
  v10 = sub_25AAC4308();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_28;
  }

  v15 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v16 & 1) == 0)
  {
    goto LABEL_28;
  }

  v100 = a4;
  v101 = v11;
  sub_25AAA5378(*(a1 + 56) + 32 * v15, &v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    goto LABEL_29;
  }

  if (!*(&v111 + 1))
  {
LABEL_29:
    v32 = &qword_27FA10018;
    v33 = &qword_25AAC5AE0;
    v34 = &v110;
LABEL_30:
    sub_25AAA5640(v34, v32, v33);
LABEL_31:
    sub_25AAA5558();
    swift_allocError();
    *v35 = 8;
    return swift_willThrow();
  }

  v99 = a5;
  __swift_project_boxed_opaque_existential_1Tm(&v110, *(&v111 + 1));
  v17 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v110);
  if (!*(a1 + 16) || (v18 = sub_25AAA48F0(0x5365727574616566, 0xEC00000073657A69), (v19 & 1) == 0))
  {

LABEL_28:
    v110 = 0u;
    v111 = 0u;
    v112 = 0;
    goto LABEL_29;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v18, &v107);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    goto LABEL_33;
  }

  if (!*(&v111 + 1))
  {
LABEL_33:

    goto LABEL_29;
  }

  v98 = v17;
  __swift_project_boxed_opaque_existential_1Tm(&v110, *(&v111 + 1));
  v20 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v110);
  if (!*(a1 + 16) || (v21 = sub_25AAA48F0(0x6C706D61536D756ELL, 0xEA00000000007365), (v22 & 1) == 0))
  {

    v107 = 0u;
    v108 = 0u;
    v109 = 0;
LABEL_37:
    v32 = &qword_27FA0FEE8;
    v33 = &unk_25AAC5540;
    v34 = &v107;
    goto LABEL_30;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v21, &v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v109 = 0;
    v107 = 0u;
    v108 = 0u;
    goto LABEL_36;
  }

  if (!*(&v108 + 1))
  {
LABEL_36:

    goto LABEL_37;
  }

  sub_25AAA5864(&v107, &v110);
  if (!*(a1 + 16) || (v23 = sub_25AAA48F0(0x7368636F7065, 0xE600000000000000), (v24 & 1) == 0))
  {

    v104 = 0u;
    v105 = 0u;
    v106 = 0;
LABEL_41:
    sub_25AAA5640(&v104, &qword_27FA0FEE8, &unk_25AAC5540);
LABEL_42:
    __swift_destroy_boxed_opaque_existential_1Tm(&v110);
    goto LABEL_31;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v23, v103);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v106 = 0;
    v104 = 0u;
    v105 = 0u;
    goto LABEL_40;
  }

  if (!*(&v105 + 1))
  {
LABEL_40:

    goto LABEL_41;
  }

  sub_25AAA5864(&v104, &v107);
  if (!*(a1 + 16))
  {
    goto LABEL_45;
  }

  v25 = sub_25AAA48F0(0x4D656C6666756873, 0xED0000646F687465);
  if ((v26 & 1) == 0)
  {
    goto LABEL_45;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v25, &v104);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_45;
  }

  v27 = v103[1];
  if (!*(a1 + 16) || (v28 = v103[0], v29 = sub_25AAA48F0(0x637461426C6C7566, 0xE900000000000068), (v30 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v29, &v104), (swift_dynamicCast() & 1) == 0))
  {

LABEL_45:

    __swift_destroy_boxed_opaque_existential_1Tm(&v107);
    goto LABEL_42;
  }

  v96 = LOBYTE(v103[0]);
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

  (*(v101 + 104))(v14, *v31, v10);
  *(v99 + 24) = MEMORY[0x277D84F78] + 8;
  v97 = sub_25AAB0520(v98);
  if (v5)
  {
    goto LABEL_49;
  }

  v94 = sub_25AAB1750(v20);
  v98 = 0;

  v39 = *(&v111 + 1);
  v38 = v112;
  v40 = __swift_project_boxed_opaque_existential_1Tm(&v110, *(&v111 + 1));
  v95 = v88;
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v40, v40);
  v93 = v42;
  v43 = v88 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v43);
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() < 65)
  {
    goto LABEL_64;
  }

  *&v104 = 0x8000000000000000;
  if (sub_25AAC4928())
  {
    v44 = sub_25AAC4918();
    if (v44 < 64)
    {
      goto LABEL_63;
    }

    goto LABEL_58;
  }

  v46 = sub_25AAC4928();
  v44 = sub_25AAC4918();
  if (v46)
  {
    if (v44 <= 64)
    {
      v90 = *(*(v38 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v92 = v88;
      MEMORY[0x28223BE20](AssociatedTypeWitness, v51);
      swift_getAssociatedConformanceWitness();
      v52 = sub_25AAC4B18();
      v91 = v88;
      MEMORY[0x28223BE20](v52, v53);
      v55 = v88 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAC4AD8();
      v56 = sub_25AAC4668();
      result = (*(v41 + 8))(v55, v39);
      if (v56)
      {
LABEL_88:
        __break(1u);
        return result;
      }

      goto LABEL_63;
    }

LABEL_58:
    MEMORY[0x28223BE20](v44, v45);
    v48 = v88 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v49 = sub_25AAC4668();
    result = (*(v41 + 8))(v48, v39);
    if (v49)
    {
      goto LABEL_88;
    }

    goto LABEL_64;
  }

  if (v44 < 64)
  {
LABEL_63:
    sub_25AAC4908();
  }

LABEL_64:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_69;
  }

  while (1)
  {
    *&v104 = 0x7FFFFFFFFFFFFFFFLL;
    v57 = sub_25AAC4928();
    v58 = sub_25AAC4918();
    if ((v57 & 1) == 0)
    {
      break;
    }

    if (v58 <= 64)
    {
      goto LABEL_73;
    }

LABEL_67:
    MEMORY[0x28223BE20](v58, v59);
    v61 = v88 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v62 = sub_25AAC4668();
    (*(v41 + 8))(v61, v39);
    if (v62)
    {
      __break(1u);
LABEL_69:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_74;
  }

  if (v58 >= 64)
  {
    goto LABEL_67;
  }

LABEL_73:
  sub_25AAC4908();
LABEL_74:
  v92 = sub_25AAC4908();
  (*(v41 + 8))(v43, v39);
  v64 = *(&v108 + 1);
  v63 = v109;
  v65 = __swift_project_boxed_opaque_existential_1Tm(&v107, *(&v108 + 1));
  v91 = v88;
  MEMORY[0x28223BE20](v65, v65);
  v90 = v66;
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = v68;
  (*(v68 + 16))(v88 - v67);
  v95 = v63;
  if (sub_25AAC4928())
  {
    v69 = swift_getAssociatedTypeWitness();
    v89 = v88;
    MEMORY[0x28223BE20](v69, v70);
    swift_getAssociatedConformanceWitness();
    v71 = sub_25AAC4B18();
    v88[1] = v88;
    MEMORY[0x28223BE20](v71, v72);
    sub_25AAC4AD8();
    v73 = sub_25AAC4678();
    result = (*(v93 + 8))(v88 - v67, v64);
    if ((v73 & 1) == 0)
    {
      __break(1u);
      goto LABEL_88;
    }
  }

  if (sub_25AAC4918() < 32)
  {
    goto LABEL_85;
  }

  LODWORD(v104) = -1;
  v74 = sub_25AAC4928();
  v75 = sub_25AAC4918();
  if ((v74 & 1) == 0)
  {
    if (v75 <= 32)
    {
      goto LABEL_84;
    }

LABEL_82:
    MEMORY[0x28223BE20](v75, v76);
    v85 = v88 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AABFF80();
    sub_25AAC48F8();
    v86 = sub_25AAC4668();
    (*(v93 + 8))(v85, v64);
    if ((v86 & 1) == 0)
    {
      goto LABEL_85;
    }

    __break(1u);
    goto LABEL_84;
  }

  if (v75 > 32)
  {
    goto LABEL_82;
  }

  v77 = swift_getAssociatedTypeWitness();
  v89 = v88;
  MEMORY[0x28223BE20](v77, v78);
  swift_getAssociatedConformanceWitness();
  v79 = sub_25AAC4B18();
  MEMORY[0x28223BE20](v79, v80);
  v82 = v88 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AAC4AD8();
  v83 = sub_25AAC4658();
  (*(v93 + 8))(v82, v64);
  if (v83)
  {
LABEL_84:
    sub_25AAC4908();
  }

LABEL_85:
  sub_25AAC4908();
  (*(v93 + 8))(v88 - v67, v64);
  v102(0);
  v87 = v98;
  sub_25AAC4368();
  if (v87)
  {
LABEL_49:
    (*(v101 + 8))(v14, v10);

    __swift_deallocate_boxed_opaque_existential_0(v99);
    goto LABEL_50;
  }

  (*(v101 + 8))(v14, v10);

LABEL_50:
  __swift_destroy_boxed_opaque_existential_1Tm(&v107);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v110);
}

uint64_t sub_25AAB68F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v113 = a2;
  v10 = sub_25AAC4308();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_28;
  }

  v15 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v16 & 1) == 0)
  {
    goto LABEL_28;
  }

  v101 = a3;
  v102 = a4;
  sub_25AAA5378(*(a1 + 56) + 32 * v15, &v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    goto LABEL_29;
  }

  v100 = v11;
  if (!*(&v111 + 1))
  {
LABEL_29:
    v31 = &qword_27FA10018;
    v32 = &qword_25AAC5AE0;
    v33 = &v110;
LABEL_30:
    sub_25AAA5640(v33, v31, v32);
LABEL_31:
    sub_25AAA5558();
    swift_allocError();
    *v34 = 8;
    return swift_willThrow();
  }

  v99 = a5;
  __swift_project_boxed_opaque_existential_1Tm(&v110, *(&v111 + 1));
  v17 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v110);
  if (!*(a1 + 16) || (v18 = sub_25AAA48F0(0x5365727574616566, 0xEC00000073657A69), (v19 & 1) == 0))
  {

LABEL_28:
    v110 = 0u;
    v111 = 0u;
    v112 = 0;
    goto LABEL_29;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v18, &v107);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    goto LABEL_33;
  }

  if (!*(&v111 + 1))
  {
LABEL_33:

    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v110, *(&v111 + 1));
  v20 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v110);
  if (!*(a1 + 16) || (v21 = sub_25AAA48F0(0x6C706D61536D756ELL, 0xEA00000000007365), (v22 & 1) == 0))
  {

    v107 = 0u;
    v108 = 0u;
    v109 = 0;
LABEL_37:
    v31 = &qword_27FA0FEE8;
    v32 = &unk_25AAC5540;
    v33 = &v107;
    goto LABEL_30;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v21, &v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v109 = 0;
    v107 = 0u;
    v108 = 0u;
    goto LABEL_36;
  }

  if (!*(&v108 + 1))
  {
LABEL_36:

    goto LABEL_37;
  }

  sub_25AAA5864(&v107, &v110);
  if (!*(a1 + 16) || (v23 = sub_25AAA48F0(0x7368636F7065, 0xE600000000000000), (v24 & 1) == 0))
  {

    v104 = 0u;
    v105 = 0u;
    v106 = 0;
LABEL_41:
    sub_25AAA5640(&v104, &qword_27FA0FEE8, &unk_25AAC5540);
LABEL_42:
    __swift_destroy_boxed_opaque_existential_1Tm(&v110);
    goto LABEL_31;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v23, v103);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v106 = 0;
    v104 = 0u;
    v105 = 0u;
    goto LABEL_40;
  }

  if (!*(&v105 + 1))
  {
LABEL_40:

    goto LABEL_41;
  }

  sub_25AAA5864(&v104, &v107);
  if (!*(a1 + 16))
  {
    goto LABEL_44;
  }

  v25 = sub_25AAA48F0(0x4D656C6666756873, 0xED0000646F687465);
  if ((v26 & 1) == 0)
  {
    goto LABEL_44;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v25, &v104);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_44;
  }

  v27 = v103[1];
  if (!*(a1 + 16) || (v98 = v103[0], v28 = sub_25AAA48F0(0x637461426C6C7566, 0xE900000000000068), (v29 & 1) == 0) || (sub_25AAA5378(*(a1 + 56) + 32 * v28, &v104), (swift_dynamicCast() & 1) == 0))
  {

LABEL_44:

    __swift_destroy_boxed_opaque_existential_1Tm(&v107);
    goto LABEL_42;
  }

  v97 = LOBYTE(v103[0]);
  if (v98 == 0x6D6F646E6172 && v27 == 0xE600000000000000)
  {

    v30 = MEMORY[0x277D41358];
  }

  else
  {
    v36 = sub_25AAC4AF8();

    v30 = MEMORY[0x277D41360];
    if (v36)
    {
      v30 = MEMORY[0x277D41358];
    }
  }

  (*(v100 + 104))(v14, *v30, v10);
  *(v99 + 24) = MEMORY[0x277D84F78] + 8;
  v98 = sub_25AABDFB8(v17);
  if (v5)
  {
    goto LABEL_48;
  }

  v94 = sub_25AABEC14(v20);
  v96 = 0;

  v38 = *(&v111 + 1);
  v37 = v112;
  v39 = __swift_project_boxed_opaque_existential_1Tm(&v110, *(&v111 + 1));
  v93 = v88;
  MEMORY[0x28223BE20](v39, v39);
  v92 = v40;
  v41 = v88 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v42;
  (*(v42 + 16))(v41);
  v43 = v37;
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() <= 64)
  {
    goto LABEL_63;
  }

  *&v104 = 0x8000000000000000;
  if (sub_25AAC4928())
  {
    v44 = sub_25AAC4918();
    if (v44 < 64)
    {
      goto LABEL_62;
    }

    goto LABEL_57;
  }

  v46 = sub_25AAC4928();
  v44 = sub_25AAC4918();
  if (v46)
  {
    if (v44 <= 64)
    {
      v90 = v43;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v91 = v88;
      MEMORY[0x28223BE20](AssociatedTypeWitness, v51);
      swift_getAssociatedConformanceWitness();
      v52 = sub_25AAC4B18();
      v89 = v88;
      MEMORY[0x28223BE20](v52, v53);
      v55 = v88 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAC4AD8();
      v56 = sub_25AAC4668();
      result = (*(v95 + 8))(v55, v38);
      if (v56)
      {
LABEL_87:
        __break(1u);
        return result;
      }

      goto LABEL_62;
    }

LABEL_57:
    MEMORY[0x28223BE20](v44, v45);
    v48 = v88 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v49 = sub_25AAC4668();
    result = (*(v95 + 8))(v48, v38);
    if (v49)
    {
      goto LABEL_87;
    }

    goto LABEL_63;
  }

  if (v44 < 64)
  {
LABEL_62:
    sub_25AAC4908();
  }

LABEL_63:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_68;
  }

  while (1)
  {
    *&v104 = 0x7FFFFFFFFFFFFFFFLL;
    v57 = sub_25AAC4928();
    v58 = sub_25AAC4918();
    if ((v57 & 1) == 0)
    {
      break;
    }

    if (v58 < 65)
    {
      goto LABEL_72;
    }

LABEL_66:
    MEMORY[0x28223BE20](v58, v59);
    v61 = v88 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v62 = sub_25AAC4668();
    (*(v95 + 8))(v61, v38);
    if (v62)
    {
      __break(1u);
LABEL_68:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_73;
  }

  if (v58 >= 64)
  {
    goto LABEL_66;
  }

LABEL_72:
  sub_25AAC4908();
LABEL_73:
  v92 = sub_25AAC4908();
  (*(v95 + 8))(v41, v38);
  v64 = *(&v108 + 1);
  v63 = v109;
  v65 = __swift_project_boxed_opaque_existential_1Tm(&v107, *(&v108 + 1));
  v91 = v88;
  MEMORY[0x28223BE20](v65, v65);
  v90 = v66;
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = v68;
  (*(v68 + 16))(v88 - v67);
  v95 = v63;
  if (sub_25AAC4928())
  {
    v69 = swift_getAssociatedTypeWitness();
    v89 = v88;
    MEMORY[0x28223BE20](v69, v70);
    swift_getAssociatedConformanceWitness();
    v71 = sub_25AAC4B18();
    v88[1] = v88;
    MEMORY[0x28223BE20](v71, v72);
    sub_25AAC4AD8();
    v73 = sub_25AAC4678();
    result = (v93[1])(v88 - v67, v64);
    if ((v73 & 1) == 0)
    {
      __break(1u);
      goto LABEL_87;
    }
  }

  if (sub_25AAC4918() <= 31)
  {
    goto LABEL_84;
  }

  LODWORD(v104) = -1;
  v74 = sub_25AAC4928();
  v75 = sub_25AAC4918();
  if ((v74 & 1) == 0)
  {
    if (v75 < 33)
    {
      goto LABEL_83;
    }

LABEL_81:
    MEMORY[0x28223BE20](v75, v76);
    v85 = v88 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AABFF80();
    sub_25AAC48F8();
    v86 = sub_25AAC4668();
    (v93[1])(v85, v64);
    if ((v86 & 1) == 0)
    {
      goto LABEL_84;
    }

    __break(1u);
    goto LABEL_83;
  }

  if (v75 > 32)
  {
    goto LABEL_81;
  }

  v77 = swift_getAssociatedTypeWitness();
  v89 = v88;
  MEMORY[0x28223BE20](v77, v78);
  swift_getAssociatedConformanceWitness();
  v79 = sub_25AAC4B18();
  MEMORY[0x28223BE20](v79, v80);
  v82 = v88 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AAC4AD8();
  v83 = sub_25AAC4658();
  (v93[1])(v82, v64);
  if (v83)
  {
LABEL_83:
    sub_25AAC4908();
  }

LABEL_84:
  sub_25AAC4908();
  (v93[1])(v88 - v67, v64);
  v87 = v96;
  sub_25AAC4368();
  if (v87)
  {
LABEL_48:
    (*(v100 + 8))(v14, v10);

    __swift_deallocate_boxed_opaque_existential_0(v99);
    goto LABEL_49;
  }

  (*(v100 + 8))(v14, v10);

LABEL_49:
  __swift_destroy_boxed_opaque_existential_1Tm(&v107);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v110);
}

uint64_t sub_25AAB7AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a5@<X8>)
{
  v70 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v9 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v9, &v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    goto LABEL_18;
  }

  if (!*(&v68 + 1))
  {
LABEL_18:
    v18 = &qword_27FA10018;
    v19 = &qword_25AAC5AE0;
    v20 = &v67;
LABEL_19:
    sub_25AAA5640(v20, v18, v19);
    sub_25AAA5558();
    swift_allocError();
    *v21 = 9;
    return swift_willThrow();
  }

  v62 = a5;
  __swift_project_boxed_opaque_existential_1Tm(&v67, *(&v68 + 1));
  v11 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v67);
  if (!*(a1 + 16) || (v12 = sub_25AAA48F0(0x5365727574616566, 0xEC00000073657A69), (v13 & 1) == 0))
  {

LABEL_17:
    v67 = 0u;
    v68 = 0u;
    v69 = 0;
    goto LABEL_18;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v12, &v64);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    goto LABEL_21;
  }

  if (!*(&v68 + 1))
  {
LABEL_21:

    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v67, *(&v68 + 1));
  v14 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v67);
  if (!*(a1 + 16) || (v15 = sub_25AAA48F0(0x6C706D61536D756ELL, 0xEA00000000007365), (v16 & 1) == 0))
  {

    v64 = 0u;
    v65 = 0u;
    v66 = 0;
LABEL_25:
    v18 = &qword_27FA0FEE8;
    v19 = &unk_25AAC5540;
    v20 = &v64;
    goto LABEL_19;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v15, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    goto LABEL_24;
  }

  if (!*(&v65 + 1))
  {
LABEL_24:

    goto LABEL_25;
  }

  sub_25AAA5864(&v64, &v67);
  v17 = sub_25AAB0520(v11);
  if (v5)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(&v67);
  }

  v61 = v17;

  v59 = sub_25AAB1750(v14);

  v23 = *(&v68 + 1);
  v24 = v69;
  v25 = __swift_project_boxed_opaque_existential_1Tm(&v67, *(&v68 + 1));
  MEMORY[0x28223BE20](v25, v25);
  v58 = v26;
  v27 = v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v28;
  (*(v28 + 16))(v27);
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() < 65)
  {
    goto LABEL_40;
  }

  v57 = v55;
  *&v64 = 0x8000000000000000;
  if (sub_25AAC4928())
  {
    v29 = sub_25AAC4918();
    if (v29 >= 64)
    {
      MEMORY[0x28223BE20](v29, v30);
      v32 = v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v33 = sub_25AAC4668();
      result = (*(v60 + 8))(v32, v23);
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  v34 = sub_25AAC4928();
  v35 = sub_25AAC4918();
  if (v34)
  {
    if (v35 > 64)
    {
      v56 = v55;
      MEMORY[0x28223BE20](v35, v36);
      v38 = v55 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v33 = sub_25AAC4668();
      result = (*(v60 + 8))(v38, v23);
LABEL_34:
      if (v33)
      {
        goto LABEL_52;
      }

      goto LABEL_40;
    }

    v55[1] = *(*(v24 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v56 = v55;
    MEMORY[0x28223BE20](AssociatedTypeWitness, v40);
    swift_getAssociatedConformanceWitness();
    v41 = sub_25AAC4B18();
    v55[2] = v55;
    MEMORY[0x28223BE20](v41, v42);
    v44 = v55 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAC4AD8();
    v45 = sub_25AAC4668();
    result = (*(v60 + 8))(v44, v23);
    if (v45)
    {
LABEL_52:
      __break(1u);
      return result;
    }

    goto LABEL_39;
  }

  if (v35 < 64)
  {
LABEL_39:
    sub_25AAC4908();
  }

LABEL_40:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_45;
  }

  while (1)
  {
    *&v64 = 0x7FFFFFFFFFFFFFFFLL;
    v46 = sub_25AAC4928();
    v47 = sub_25AAC4918();
    if ((v46 & 1) == 0)
    {
      break;
    }

    if (v47 <= 64)
    {
      goto LABEL_49;
    }

LABEL_43:
    v57 = v55;
    MEMORY[0x28223BE20](v47, v48);
    v50 = v55 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v51 = sub_25AAC4668();
    (*(v60 + 8))(v50, v23);
    if (v51)
    {
      __break(1u);
LABEL_45:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_50;
  }

  if (v47 >= 64)
  {
    goto LABEL_43;
  }

LABEL_49:
  sub_25AAC4908();
LABEL_50:
  sub_25AAC4908();
  (*(v60 + 8))(v27, v23);
  a3(0);
  v52 = sub_25AAC4348();

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100C0, &qword_25AAC5B98);
  v54 = v62;
  v62[3] = v53;
  *v54 = v52;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v67);
}

uint64_t sub_25AAB8424@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v8 = sub_25AAA48F0(0x737475706E69, 0xE600000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v8, &v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10020, &qword_25AAC5AE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    goto LABEL_18;
  }

  v65 = a3;
  if (!*(&v63 + 1))
  {
LABEL_18:
    v17 = &qword_27FA10018;
    v18 = &qword_25AAC5AE0;
    v19 = &v62;
LABEL_19:
    sub_25AAA5640(v19, v17, v18);
    sub_25AAA5558();
    swift_allocError();
    *v20 = 9;
    return swift_willThrow();
  }

  v57 = a4;
  __swift_project_boxed_opaque_existential_1Tm(&v62, *(&v63 + 1));
  v10 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  if (!*(a1 + 16) || (v11 = sub_25AAA48F0(0x5365727574616566, 0xEC00000073657A69), (v12 & 1) == 0))
  {

LABEL_17:
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
    goto LABEL_18;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v11, &v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    goto LABEL_21;
  }

  if (!*(&v63 + 1))
  {
LABEL_21:

    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v62, *(&v63 + 1));
  v13 = sub_25AAC4578();
  __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  if (!*(a1 + 16) || (v14 = sub_25AAA48F0(0x6C706D61536D756ELL, 0xEA00000000007365), (v15 & 1) == 0))
  {

    v59 = 0u;
    v60 = 0u;
    v61 = 0;
LABEL_25:
    v17 = &qword_27FA0FEE8;
    v18 = &unk_25AAC5540;
    v19 = &v59;
    goto LABEL_19;
  }

  sub_25AAA5378(*(a1 + 56) + 32 * v14, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA0FEF0, &unk_25AAC5B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    goto LABEL_24;
  }

  if (!*(&v60 + 1))
  {
LABEL_24:

    goto LABEL_25;
  }

  sub_25AAA5864(&v59, &v62);
  v16 = sub_25AABDFB8(v10);
  if (v4)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  }

  v56 = v16;

  v54 = sub_25AABEC14(v13);

  v22 = *(&v63 + 1);
  v23 = v64;
  v24 = __swift_project_boxed_opaque_existential_1Tm(&v62, *(&v63 + 1));
  MEMORY[0x28223BE20](v24, v24);
  v53 = v25;
  v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v27;
  (*(v27 + 16))(v26);
  if ((sub_25AAC4928() & 1) == 0 || sub_25AAC4918() <= 64)
  {
    goto LABEL_39;
  }

  v52 = v50;
  *&v59 = 0x8000000000000000;
  if (sub_25AAC4928())
  {
    v28 = sub_25AAC4918();
    if (v28 < 64)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v30 = sub_25AAC4928();
  v28 = sub_25AAC4918();
  if (v30)
  {
    if (v28 > 64)
    {
LABEL_33:
      v51 = v50;
      MEMORY[0x28223BE20](v28, v29);
      v32 = v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25AAA54EC();
      sub_25AAC48F8();
      v33 = sub_25AAC4668();
      result = (*(v55 + 8))(v32, v22);
      if ((v33 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_51:
      __break(1u);
      return result;
    }

    v50[1] = *(*(v23 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v51 = v50;
    MEMORY[0x28223BE20](AssociatedTypeWitness, v35);
    swift_getAssociatedConformanceWitness();
    v36 = sub_25AAC4B18();
    v50[2] = v50;
    MEMORY[0x28223BE20](v36, v37);
    v39 = v50 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAC4AD8();
    v40 = sub_25AAC4668();
    result = (*(v55 + 8))(v39, v22);
    if (v40)
    {
      goto LABEL_51;
    }

LABEL_38:
    sub_25AAC4908();
    goto LABEL_39;
  }

  if (v28 < 64)
  {
    goto LABEL_38;
  }

LABEL_39:
  if (sub_25AAC4918() <= 64)
  {
    goto LABEL_44;
  }

  while (1)
  {
    *&v59 = 0x7FFFFFFFFFFFFFFFLL;
    v41 = sub_25AAC4928();
    v42 = sub_25AAC4918();
    if ((v41 & 1) == 0)
    {
      break;
    }

    if (v42 < 65)
    {
      goto LABEL_48;
    }

LABEL_42:
    v52 = v50;
    MEMORY[0x28223BE20](v42, v43);
    v45 = v50 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25AAA54EC();
    sub_25AAC48F8();
    v46 = sub_25AAC4668();
    (*(v55 + 8))(v45, v22);
    if (v46)
    {
      __break(1u);
LABEL_44:
      if (sub_25AAC4918() == 64 && (sub_25AAC4928() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_49;
  }

  if (v42 >= 64)
  {
    goto LABEL_42;
  }

LABEL_48:
  sub_25AAC4908();
LABEL_49:
  sub_25AAC4908();
  (*(v55 + 8))(v26, v22);
  v47 = sub_25AAC4348();

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA100C0, &qword_25AAC5B98);
  v49 = v57;
  v57[3] = v48;
  *v49 = v47;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v62);
}