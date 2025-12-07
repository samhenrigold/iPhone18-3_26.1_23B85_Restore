uint64_t sub_26C079E14(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC590;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 56) = v4;
  *(inited + 64) = &protocol witness table for Expression<A>;
  v5 = MEMORY[0x277D84F90];
  *(inited + 40) = 0xEB00000000454C42;
  *(inited + 48) = v5;
  if (v1[5])
  {
    v6 = v1[4];
    v7 = v1[5];
  }

  else
  {
    v6 = v1[2];
    v7 = v1[3];
  }

  sub_26C069100(v6, v7, (inited + 72));

  *(inited + 136) = v4;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 0x5420454D414E4552;
  *(inited + 120) = 0xE90000000000004FLL;
  *(inited + 128) = v5;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(inited + 176) = v4;
  *(inited + 184) = &protocol witness table for Expression<A>;
  *(inited + 152) = sub_26C067104(34, 0xE100000000000000, v8, v9);
  *(inited + 160) = v10;
  *(inited + 168) = v5;
  sub_26C0688D8(inited, v13);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  __swift_destroy_boxed_opaque_existential_1(v13);
  return countAndFlagsBits;
}

uint64_t Table.createIndex(_:unique:ifNotExists:)(uint64_t a1, char a2, char a3)
{
  v35 = *v3;
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 128);
  v43 = *(v3 + 112);
  v44 = v11;
  v45 = *(v3 + 144);
  v46 = *(v3 + 160);
  v12 = *(v3 + 64);
  v39 = *(v3 + 48);
  v40 = v12;
  v13 = *(v3 + 96);
  v41 = *(v3 + 80);
  v42 = v13;
  *&v36 = v8;
  *(&v36 + 1) = v7;
  v37 = v9;
  v38 = v10;
  sub_26C07A3CC(a1, v47);
  if (a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  sub_26C073CCC(0x5845444E49, 0xE500000000000000, v47, v14, a3, v51);
  __swift_destroy_boxed_opaque_existential_1(v47);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v51[9] = &protocol witness table for Expression<A>;
  v51[5] = 20047;
  v51[6] = 0xE200000000000000;
  v16 = MEMORY[0x277D84F90];
  v51[7] = MEMORY[0x277D84F90];
  v51[8] = v15;
  if (v10)
  {
    v7 = v10;
  }

  else
  {

    v9 = v8;
  }

  v51[13] = v15;
  v51[14] = &protocol witness table for Expression<A>;

  v17 = sub_26C067104(34, 0xE100000000000000, v9, v7);
  v19 = v18;

  v51[10] = v17;
  v51[11] = v19;
  v51[12] = v16;
  v52[3] = v15;
  v52[4] = &protocol witness table for Expression<A>;
  sub_26C0688D8(a1, &v35);
  sub_26C06E148(&v35, 0, 0xE000000000000000, v52);
  __swift_destroy_boxed_opaque_existential_1(&v35);
  for (i = 32; i != 192; i += 40)
  {
    sub_26C067878(&v50[i], &v35, &qword_280479360, &qword_26C0AC5D8);
    v32[0] = v35;
    v32[1] = v36;
    v33 = v37;
    if (*(&v36 + 1))
    {
      sub_26C06A3A8(v32, v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_26C06A23C(0, v16[2] + 1, 1, v16, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v34 = v16;
      }

      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        v16 = sub_26C06A23C((v22 > 1), v23 + 1, 1, v16, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v34 = v16;
      }

      v25 = v48;
      v24 = v49;
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
      MEMORY[0x28223BE20](v26);
      v28 = v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v28);
      sub_26C06A410(v23, v28, &v34, v25, v24);
      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    else
    {
      sub_26C06A56C(v32, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v16, &v35);

  __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  __swift_destroy_boxed_opaque_existential_1(&v35);
  return countAndFlagsBits;
}

uint64_t sub_26C07A3CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[9];
  v50 = v2[8];
  v51 = v5;
  v52 = *(v2 + 20);
  v6 = v2[5];
  v46 = v2[4];
  v47 = v6;
  v7 = v2[7];
  v48 = v2[6];
  v49 = v7;
  v8 = v2[1];
  v42 = *v2;
  v43 = v8;
  v9 = v2[3];
  v44 = v2[2];
  v45 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C8, &qword_26C0AC818);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26C0AC540;
  *(v10 + 32) = 0x7865646E69;
  *(v10 + 40) = 0xE500000000000000;
  v11 = *(&v43 + 1);
  *(v10 + 48) = v43;
  *(v10 + 56) = v11;
  *(v10 + 64) = 28271;
  *(v10 + 72) = 0xE200000000000000;
  v12 = *(a1 + 16);
  if (v12)
  {
    v41 = MEMORY[0x277D84F90];

    sub_26C06B938(0, v12, 0);
    v13 = v41;
    v14 = a1 + 32;
    do
    {
      sub_26C06B6BC(v14, v38);
      v15 = v39;
      v16 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      (*(v16 + 8))(&v36, v15, v16);
      v17 = v36;
      v18 = v37;

      __swift_destroy_boxed_opaque_existential_1(v38);
      v41 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_26C06B938((v19 > 1), v20 + 1, 1);
        v13 = v41;
      }

      *(v13 + 16) = v20 + 1;
      v21 = v13 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v14 += 40;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v38[0] = v10;
  sub_26C085D9C(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
  sub_26C0826B4();
  sub_26C0AB810();

  v22 = sub_26C0AB8A0();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  v38[0] = v22;
  v38[1] = v24;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  v38[2] = 0;
  v39 = v25;

  v26 = sub_26C0AB930();
  if (!v27)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
LABEL_38:

    sub_26C069100(v30, v31, a2);
  }

  v28 = v26;
  v29 = v27;
  v30 = 0;
  v31 = 0xE000000000000000;
  while (v28 == 34 && v29 == 0xE100000000000000 || (sub_26C0ABC70() & 1) != 0)
  {

LABEL_13:
    v28 = sub_26C0AB930();
    v29 = v32;
    if (!v32)
    {
      goto LABEL_38;
    }
  }

  result = sub_26C0ABC70();
  if ((result & 1) == 0)
  {
    if (v28 != 97 || v29 != 0xE100000000000000)
    {
      if (sub_26C0ABC70())
      {
        goto LABEL_23;
      }

      if (v28 == 122 && v29 == 0xE100000000000000)
      {
        goto LABEL_35;
      }
    }

    if ((sub_26C0ABC70() & 1) == 0)
    {
LABEL_35:
      v36 = v30;
      v37 = v31;

      v34 = v28;
      v35 = v29;
      goto LABEL_36;
    }

LABEL_23:
    result = sub_26C0ABC70();
    if (result)
    {
      goto LABEL_40;
    }

    if (v28 != 48 || v29 != 0xE100000000000000)
    {
      if (sub_26C0ABC70())
      {
        goto LABEL_29;
      }

      if (v28 == 57 && v29 == 0xE100000000000000)
      {
        goto LABEL_35;
      }
    }

    if ((sub_26C0ABC70() & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_29:
    v36 = v30;
    v37 = v31;

    v34 = 95;
    v35 = 0xE100000000000000;
LABEL_36:
    MEMORY[0x26D69A890](v34, v35);

    v30 = v36;
    v31 = v37;
    goto LABEL_13;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t Table.dropIndex(_:ifExists:)(uint64_t a1, char a2)
{
  sub_26C07A3CC(a1, v5);
  v3 = sub_26C073520(0x5845444E49, 0xE500000000000000, v5, a2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_26C07A8B4(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[9];
  v58 = v5[8];
  v59 = v11;
  v60 = *(v5 + 20);
  v12 = v5[5];
  v54 = v5[4];
  v55 = v12;
  v13 = v5[7];
  v56 = v5[6];
  v57 = v13;
  v14 = v5[1];
  v50 = *v5;
  v51 = v14;
  v16 = v5[2];
  v15 = v5[3];
  v52 = v16;
  v53 = v15;
  if (*(&v16 + 1))
  {
    v17 = v52;
    v18 = *(&v16 + 1);
  }

  else
  {
    v18 = *(&v51 + 1);
    v17 = v51;
  }

  sub_26C069100(v17, v18, &v44);

  if (a2)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  sub_26C073CCC(a4, a5, &v44, v19, a3 & 1, v48);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v48[9] = &protocol witness table for Expression<A>;
  v21 = MEMORY[0x277D84F90];
  v48[5] = 21313;
  v48[6] = 0xE200000000000000;
  v48[7] = MEMORY[0x277D84F90];
  v48[8] = v20;
  v22 = a1[3];
  v23 = a1[4];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v49[3] = v22;
  v49[4] = *(v23 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v24, v22);
  for (i = 32; i != 152; i += 40)
  {
    sub_26C067878(&v47[i], &v44, &qword_280479360, &qword_26C0AC5D8);
    v38[0] = v44;
    v38[1] = v45;
    v39 = v46;
    if (*(&v45 + 1))
    {
      sub_26C06A3A8(v38, v40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_26C06A23C(0, v21[2] + 1, 1, v21, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v43 = v21;
      }

      v29 = v21[2];
      v28 = v21[3];
      if (v29 >= v28 >> 1)
      {
        v21 = sub_26C06A23C((v28 > 1), v29 + 1, 1, v21, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v43 = v21;
      }

      v31 = v41;
      v30 = v42;
      v32 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      MEMORY[0x28223BE20](v32);
      v34 = v38 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v35 + 16))(v34);
      sub_26C06A410(v29, v34, &v43, v31, v30);
      __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      sub_26C06A56C(v38, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v21, &v44);

  __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  __swift_destroy_boxed_opaque_existential_1(&v44);
  return countAndFlagsBits;
}

Swift::String __swiftcall View.drop(ifExists:)(Swift::Bool ifExists)
{
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v27 = *(v1 + 20);
  v4 = v1[5];
  v21 = v1[4];
  v22 = v4;
  v5 = v1[7];
  v23 = v1[6];
  v24 = v5;
  v6 = v1[1];
  v17 = *v1;
  v18 = v6;
  v7 = v1[3];
  v19 = v1[2];
  v20 = v7;
  if (*(&v19 + 1))
  {
    v8 = *(&v19 + 1);
    v9 = v19;
  }

  else
  {
    v8 = *(&v18 + 1);
    v9 = v18;
  }

  sub_26C069100(v9, v8, v16);

  v10 = sub_26C073520(1464158550, 0xE400000000000000, v16, ifExists);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1(v16);
  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t VirtualTable.create(_:ifNotExists:)(uint64_t *a1, char a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = v2[9];
  v48 = v2[8];
  v49 = v7;
  v50 = *(v2 + 20);
  v8 = v2[5];
  v44 = v2[4];
  v45 = v8;
  v9 = v2[7];
  v46 = v2[6];
  v47 = v9;
  v10 = v2[1];
  v40 = *v2;
  v41 = v10;
  v12 = v2[2];
  v11 = v2[3];
  v42 = v12;
  v43 = v11;
  if (*(&v12 + 1))
  {
    v13 = v42;
    v14 = *(&v12 + 1);
  }

  else
  {
    v14 = *(&v41 + 1);
    v13 = v41;
  }

  sub_26C069100(v13, v14, &v35);

  sub_26C073CCC(0x204C415554524956, 0xED0000454C424154, &v35, 2u, a2 & 1, v39);
  __swift_destroy_boxed_opaque_existential_1(&v35);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v39[5] = 0x474E495355;
  v39[6] = 0xE500000000000000;
  v39[13] = &type metadata for Module;
  v39[14] = &protocol witness table for Module;
  v16 = MEMORY[0x277D84F90];
  v39[7] = MEMORY[0x277D84F90];
  v39[8] = v15;
  v39[9] = &protocol witness table for Expression<A>;
  v39[10] = v5;
  v39[11] = v4;
  v39[12] = v6;

  for (i = 32; i != 152; i += 40)
  {
    sub_26C067878(&v38[i], &v35, &qword_280479360, &qword_26C0AC5D8);
    v29[0] = v35;
    v29[1] = v36;
    v30 = v37;
    if (*(&v36 + 1))
    {
      sub_26C06A3A8(v29, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_26C06A23C(0, v16[2] + 1, 1, v16, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v34 = v16;
      }

      v20 = v16[2];
      v19 = v16[3];
      if (v20 >= v19 >> 1)
      {
        v16 = sub_26C06A23C((v19 > 1), v20 + 1, 1, v16, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v34 = v16;
      }

      v22 = v32;
      v21 = v33;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      MEMORY[0x28223BE20](v23);
      v25 = v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v25);
      sub_26C06A410(v20, v25, &v34, v22, v21);
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {
      sub_26C06A56C(v29, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v16, &v35);

  __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  __swift_destroy_boxed_opaque_existential_1(&v35);
  return countAndFlagsBits;
}

uint64_t VirtualTable.rename(_:)(uint64_t a1)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v14 = *(a1 + 160);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = v1[9];
  v23 = v1[8];
  v24 = v7;
  v25 = *(v1 + 20);
  v8 = v1[5];
  v19 = v1[4];
  v20 = v8;
  v9 = v1[7];
  v21 = v1[6];
  v22 = v9;
  v10 = v1[1];
  v15 = *v1;
  v16 = v10;
  v11 = v1[3];
  v17 = v1[2];
  v18 = v11;
  return sub_26C079E14(v13);
}

uint64_t TableBuilder.column<A>(_:unique:check:defaultValue:)(uint64_t *a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a4[1];
  v35 = *a4;
  v14 = a4[2];
  v43[0] = *a1;
  v43[1] = v8;
  v43[2] = v9;
  v15 = *(a6 + 40);

  v17 = v15(a5, a6);
  v19 = v18;
  v42 = 2;
  if (v11)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v21 = &protocol witness table for Expression<A>;
    v22 = v10;
    v23 = v11;
    v24 = v12;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
  }

  v25 = v12;
  v41[0] = v22;
  v41[1] = v23;
  v41[2] = v24;
  v41[3] = v20;
  v41[4] = v21;
  if (v13)
  {
    v26 = type metadata accessor for Expression(0, a5, v12, v16);
    v25 = v12;
    v27 = &protocol witness table for Expression<A>;
    v28 = v35;
    v29 = v13;
    v30 = v14;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v26 = 0;
    v27 = 0;
  }

  v40[0] = v28;
  v40[1] = v29;
  v40[2] = v30;
  v40[3] = v26;
  v40[4] = v27;
  v38 = xmmword_26C0AC5B0;
  memset(v39, 0, sizeof(v39));
  sub_26C06E874(v10, v11, v25);
  sub_26C06E874(v35, v13, v14);
  v33 = type metadata accessor for Expression(0, a5, v31, v32);
  sub_26C08114C(v43, v17, v19, &v42, 0, a2 & 1, v41, v40, v39, &v38, v36, v33, &protocol witness table for Expression<A>);

  sub_26C06A56C(v39, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v40, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v41, &qword_280479360, &qword_26C0AC5D8);
}

{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a4[1];
  v30 = *a4;
  v14 = a4[2];
  v39[0] = *a1;
  v39[1] = v8;
  v39[2] = v9;
  v15 = *(a6 + 40);

  v31 = v15(a5, a6);
  v17 = v16;
  v38 = 2;
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v37[4] = &protocol witness table for Expression<A>;
  v37[0] = v10;
  v37[1] = v11;
  v37[2] = v12;
  if (v13)
  {
    v20 = type metadata accessor for Expression(0, a5, v18, v19);
    v21 = &protocol witness table for Expression<A>;
    v22 = v30;
    v23 = v30;
    v24 = v13;
    v25 = v14;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v20 = 0;
    v21 = 0;
    v22 = v30;
  }

  v36[0] = v23;
  v36[1] = v24;
  v36[2] = v25;
  v36[3] = v20;
  v36[4] = v21;
  v34 = xmmword_26C0AC5B0;
  memset(v35, 0, sizeof(v35));

  sub_26C06E874(v22, v13, v14);
  v28 = type metadata accessor for Expression(0, a5, v26, v27);
  sub_26C08114C(v39, v31, v17, &v38, 0, a2 & 1, v37, v36, v35, &v34, v32, v28, &protocol witness table for Expression<A>);

  sub_26C06A56C(v35, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v36, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v37, &qword_280479360, &qword_26C0AC5D8);
}

{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a4[1];
  v36 = *a4;
  v14 = a4[2];
  v44[0] = *a1;
  v44[1] = v8;
  v44[2] = v9;
  v15 = *(a6 + 40);

  v17 = v15(a5, a6);
  v19 = v18;
  v43 = 2;
  if (v11)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v21 = &protocol witness table for Expression<A>;
    v22 = v10;
    v23 = v11;
    v24 = v12;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
  }

  v25 = v12;
  v42[0] = v22;
  v42[1] = v23;
  v42[2] = v24;
  v42[3] = v20;
  v42[4] = v21;
  if (v13)
  {
    v26 = type metadata accessor for Expression(0, a5, v12, v16);
    v25 = v12;
    v27 = &protocol witness table for Expression<A>;
    v28 = v36;
    v29 = v13;
    v30 = v14;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v26 = 0;
    v27 = 0;
  }

  v41[0] = v28;
  v41[1] = v29;
  v41[2] = v30;
  v41[3] = v26;
  v41[4] = v27;
  v39 = xmmword_26C0AC5B0;
  memset(v40, 0, sizeof(v40));
  sub_26C06E874(v10, v11, v25);
  sub_26C06E874(v36, v13, v14);
  v31 = sub_26C0ABAF0();
  v34 = type metadata accessor for Expression(0, v31, v32, v33);
  sub_26C08114C(v44, v17, v19, &v43, 1, a2 & 1, v42, v41, v40, &v39, v37, v34, &protocol witness table for Expression<A>);

  sub_26C06A56C(v40, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v41, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v42, &qword_280479360, &qword_26C0AC5D8);
}

{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a4[1];
  v28 = *a4;
  v14 = a4[2];
  v38[0] = *a1;
  v38[1] = v8;
  v38[2] = v9;
  v15 = *(a6 + 40);

  v16 = v15(a5, a6);
  v18 = v17;
  v37 = 2;
  if (v11)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v20 = &protocol witness table for Expression<A>;
    v21 = v10;
    v22 = v11;
    v23 = v12;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v19 = 0;
    v20 = 0;
  }

  v36[0] = v21;
  v36[1] = v22;
  v36[2] = v23;
  v36[3] = v19;
  v36[4] = v20;
  v24 = sub_26C0ABAF0();
  v34 = type metadata accessor for Expression(0, v24, v25, v26);
  v35 = &protocol witness table for Expression<A>;
  v33[0] = v28;
  v33[1] = v13;
  v33[2] = v14;
  v31 = xmmword_26C0AC5B0;
  memset(v32, 0, sizeof(v32));
  sub_26C06E874(v10, v11, v12);

  sub_26C08114C(v38, v16, v18, &v37, 1, a2 & 1, v36, v33, v32, &v31, v29, v34, &protocol witness table for Expression<A>);

  sub_26C06A56C(v32, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v33, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v36, &qword_280479360, &qword_26C0AC5D8);
}

{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a4[1];
  v31 = *a4;
  v14 = a4[2];
  v40[0] = *a1;
  v40[1] = v8;
  v40[2] = v9;
  v15 = *(a6 + 40);

  v32 = v15(a5, a6);
  v17 = v16;
  v39 = 2;
  v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v38[4] = &protocol witness table for Expression<A>;
  v38[0] = v10;
  v38[1] = v11;
  v38[2] = v12;
  if (v13)
  {
    v20 = type metadata accessor for Expression(0, a5, v18, v19);
    v21 = &protocol witness table for Expression<A>;
    v22 = v31;
    v23 = v31;
    v24 = v13;
    v25 = v14;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v20 = 0;
    v21 = 0;
    v22 = v31;
  }

  v37[0] = v23;
  v37[1] = v24;
  v37[2] = v25;
  v37[3] = v20;
  v37[4] = v21;
  v35 = xmmword_26C0AC5B0;
  memset(v36, 0, sizeof(v36));

  sub_26C06E874(v22, v13, v14);
  v26 = sub_26C0ABAF0();
  v29 = type metadata accessor for Expression(0, v26, v27, v28);
  sub_26C08114C(v40, v32, v17, &v39, 1, a2 & 1, v38, v37, v36, &v35, v33, v29, &protocol witness table for Expression<A>);

  sub_26C06A56C(v36, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v37, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v38, &qword_280479360, &qword_26C0AC5D8);
}

{
  v8 = a1[1];
  v9 = a1[2];
  v11 = *a3;
  v10 = a3[1];
  v12 = a3[2];
  v13 = a4[1];
  v23 = *a4;
  v14 = a4[2];
  v33[0] = *a1;
  v33[1] = v8;
  v33[2] = v9;
  v15 = *(a6 + 40);

  v16 = v15(a5, a6);
  v18 = v17;
  v32 = 2;
  v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v31[4] = &protocol witness table for Expression<A>;
  v31[0] = v11;
  v31[1] = v10;
  v31[2] = v12;
  v19 = sub_26C0ABAF0();
  v29 = type metadata accessor for Expression(0, v19, v20, v21);
  v30 = &protocol witness table for Expression<A>;
  v28[0] = v23;
  v28[1] = v13;
  v28[2] = v14;
  v26 = xmmword_26C0AC5B0;
  memset(v27, 0, sizeof(v27));

  sub_26C08114C(v33, v16, v18, &v32, 1, a2, v31, v28, v27, &v26, v24, v29, &protocol witness table for Expression<A>);

  sub_26C06A56C(v27, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v28, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v31, &qword_280479360, &qword_26C0AC5D8);
}

uint64_t TableBuilder.column<A>(_:unique:check:defaultValue:)(uint64_t *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *a3;
  v14 = a3[1];
  v15 = a3[2];
  v37[0] = *a1;
  v37[1] = v11;
  v37[2] = v12;
  v16 = *(a6 + 40);

  v17 = v16(a5, a6);
  v19 = v18;
  v36 = 2;
  if (v14)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v21 = &protocol witness table for Expression<A>;
    v22 = v13;
    v23 = v14;
    v24 = v15;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
  }

  v35[0] = v22;
  v35[1] = v23;
  v35[2] = v24;
  v35[3] = v20;
  v35[4] = v21;
  v25 = *(a6 + 8);
  v34[3] = a5;
  v34[4] = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a4, a5);
  v32 = xmmword_26C0AC5B0;
  memset(v33, 0, sizeof(v33));
  sub_26C06E874(v13, v14, v15);
  v29 = type metadata accessor for Expression(0, a5, v27, v28);
  sub_26C08114C(v37, v17, v19, &v36, 0, a2 & 1, v35, v34, v33, &v32, v7, v29, &protocol witness table for Expression<A>);

  sub_26C06A56C(v33, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v34, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v35, &qword_280479360, &qword_26C0AC5D8);
}

{
  v7 = v6;
  v11 = a1[1];
  v12 = a1[2];
  v14 = *a3;
  v13 = a3[1];
  v15 = a3[2];
  v32[0] = *a1;
  v32[1] = v11;
  v32[2] = v12;
  v16 = *(a6 + 40);

  v17 = v16(a5, a6);
  v19 = v18;
  v31 = 2;
  v30[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v30[4] = &protocol witness table for Expression<A>;
  v30[0] = v14;
  v30[1] = v13;
  v30[2] = v15;
  v20 = *(a6 + 8);
  v29[3] = a5;
  v29[4] = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a4, a5);
  v27 = xmmword_26C0AC5B0;
  memset(v28, 0, sizeof(v28));
  v24 = type metadata accessor for Expression(0, a5, v22, v23);

  sub_26C08114C(v32, v17, v19, &v31, 0, a2, v30, v29, v28, &v27, v7, v24, &protocol witness table for Expression<A>);

  sub_26C06A56C(v28, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v29, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v30, &qword_280479360, &qword_26C0AC5D8);
}

{
  v7 = v6;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *a3;
  v14 = a3[1];
  v15 = a3[2];
  v38[0] = *a1;
  v38[1] = v11;
  v38[2] = v12;
  v16 = *(a6 + 40);

  v17 = v16(a5, a6);
  v19 = v18;
  v37 = 2;
  if (v14)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v21 = &protocol witness table for Expression<A>;
    v22 = v13;
    v23 = v14;
    v24 = v15;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
  }

  v36[0] = v22;
  v36[1] = v23;
  v36[2] = v24;
  v36[3] = v20;
  v36[4] = v21;
  v25 = *(a6 + 8);
  v35[3] = a5;
  v35[4] = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a4, a5);
  v33 = xmmword_26C0AC5B0;
  memset(v34, 0, sizeof(v34));
  sub_26C06E874(v13, v14, v15);
  v27 = sub_26C0ABAF0();
  v30 = type metadata accessor for Expression(0, v27, v28, v29);
  sub_26C08114C(v38, v17, v19, &v37, 1, a2 & 1, v36, v35, v34, &v33, v7, v30, &protocol witness table for Expression<A>);

  sub_26C06A56C(v34, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v35, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v36, &qword_280479360, &qword_26C0AC5D8);
}

{
  v7 = v6;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *a3;
  v14 = a3[1];
  v15 = a3[2];
  v33[0] = *a1;
  v33[1] = v11;
  v33[2] = v12;
  v16 = *(a6 + 40);

  v17 = v16(a5, a6);
  v19 = v18;
  v32 = 2;
  v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v31[4] = &protocol witness table for Expression<A>;
  v31[0] = v13;
  v31[1] = v14;
  v31[2] = v15;
  v20 = *(a6 + 8);
  v30[3] = a5;
  v30[4] = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a4, a5);
  v28 = xmmword_26C0AC5B0;
  memset(v29, 0, sizeof(v29));
  v22 = sub_26C0ABAF0();
  v25 = type metadata accessor for Expression(0, v22, v23, v24);

  sub_26C08114C(v33, v17, v19, &v32, 1, a2, v31, v30, v29, &v28, v7, v25, &protocol witness table for Expression<A>);

  sub_26C06A56C(v29, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v30, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v31, &qword_280479360, &qword_26C0AC5D8);
}

uint64_t TableBuilder.column<A>(_:primaryKey:check:defaultValue:)(uint64_t *a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a4[1];
  v36 = a4[2];
  v37 = *a4;
  v44[0] = *a1;
  v44[1] = v9;
  v44[2] = v10;
  v15 = *(a6 + 40);

  v18 = v15(a5, a6);
  v20 = v19;
  if (a2)
  {
    v21 = 0;
  }

  else
  {
    v21 = 2;
  }

  v43 = v21;
  if (v12)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v23 = &protocol witness table for Expression<A>;
    v24 = v11;
    v25 = v12;
    v26 = v13;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v22 = 0;
    v23 = 0;
  }

  v42[0] = v24;
  v42[1] = v25;
  v42[2] = v26;
  v42[3] = v22;
  v42[4] = v23;
  if (v14)
  {
    v27 = type metadata accessor for Expression(0, a5, v16, v17);
    v28 = &protocol witness table for Expression<A>;
    v29 = v37;
    v30 = v14;
    v31 = v36;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v27 = 0;
    v28 = 0;
  }

  v41[0] = v29;
  v41[1] = v30;
  v41[2] = v31;
  v41[3] = v27;
  v41[4] = v28;
  v39 = xmmword_26C0AC5B0;
  memset(v40, 0, sizeof(v40));
  sub_26C06E874(v11, v12, v13);
  sub_26C06E874(v37, v14, v36);
  v34 = type metadata accessor for Expression(0, a5, v32, v33);
  sub_26C08114C(v44, v18, v20, &v43, 0, 0, v42, v41, v40, &v39, v38, v34, &protocol witness table for Expression<A>);

  sub_26C06A56C(v40, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v41, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v42, &qword_280479360, &qword_26C0AC5D8);
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = a3[1];
  v12 = a3[2];
  v13 = a4[1];
  v32 = *a3;
  v33 = *a4;
  v14 = a4[2];
  v40[0] = *a1;
  v40[1] = v9;
  v40[2] = v10;
  v15 = *(a6 + 40);

  v16 = v15(a5, a6);
  v18 = v17;
  if (a2)
  {
    v19 = 0;
  }

  else
  {
    v19 = 2;
  }

  v39 = v19;
  v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v38[4] = &protocol witness table for Expression<A>;
  v38[0] = v32;
  v38[1] = v11;
  v38[2] = v12;
  if (v13)
  {
    v22 = type metadata accessor for Expression(0, a5, v20, v21);
    v23 = &protocol witness table for Expression<A>;
    v24 = v33;
    v25 = v33;
    v26 = v13;
    v27 = v14;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v22 = 0;
    v23 = 0;
    v24 = v33;
  }

  v37[0] = v25;
  v37[1] = v26;
  v37[2] = v27;
  v37[3] = v22;
  v37[4] = v23;
  v35 = xmmword_26C0AC5B0;
  memset(v36, 0, sizeof(v36));

  sub_26C06E874(v24, v13, v14);
  v30 = type metadata accessor for Expression(0, a5, v28, v29);
  sub_26C08114C(v40, v16, v18, &v39, 0, 0, v38, v37, v36, &v35, v34, v30, &protocol witness table for Expression<A>);

  sub_26C06A56C(v36, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v37, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v38, &qword_280479360, &qword_26C0AC5D8);
}

uint64_t TableBuilder.column<A>(_:primaryKey:check:)(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a2;
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  v34[0] = *a1;
  v34[1] = v9;
  v34[2] = v10;
  v15 = *(a5 + 40);

  v16 = v15(a4, a5);
  v18 = v17;
  v33 = v11;
  if (v13)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v20 = &protocol witness table for Expression<A>;
    v21 = v12;
    v22 = v13;
    v23 = v14;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v19 = 0;
    v20 = 0;
  }

  v32[0] = v21;
  v32[1] = v22;
  v32[2] = v23;
  v32[3] = v19;
  v32[4] = v20;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v28 = xmmword_26C0AC5B0;
  memset(v29, 0, sizeof(v29));
  sub_26C06E874(v12, v13, v14);
  v26 = type metadata accessor for Expression(0, a4, v24, v25);
  sub_26C08114C(v34, v16, v18, &v33, 0, 0, v32, v30, v29, &v28, v6, v26, &protocol witness table for Expression<A>);

  sub_26C06A56C(v29, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v30, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v32, &qword_280479360, &qword_26C0AC5D8);
}

{
  v6 = v5;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a2;
  v13 = *a3;
  v12 = a3[1];
  v14 = a3[2];
  v29[0] = *a1;
  v29[1] = v9;
  v29[2] = v10;
  v15 = *(a5 + 40);

  v16 = v15(a4, a5);
  v18 = v17;
  v28 = v11;
  v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v27[4] = &protocol witness table for Expression<A>;
  v27[0] = v13;
  v27[1] = v12;
  v27[2] = v14;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v23 = xmmword_26C0AC5B0;
  memset(v24, 0, sizeof(v24));
  v21 = type metadata accessor for Expression(0, a4, v19, v20);

  sub_26C08114C(v29, v16, v18, &v28, 0, 0, v27, v25, v24, &v23, v6, v21, &protocol witness table for Expression<A>);

  sub_26C06A56C(v24, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v25, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v27, &qword_280479360, &qword_26C0AC5D8);
}

uint64_t TableBuilder.column<A>(_:unique:check:references:_:)(uint64_t *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a5[1];
  v29 = *a5;
  v15 = a5[2];
  v44[0] = *a1;
  v44[1] = v9;
  v44[2] = v10;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  v43 = 2;
  if (v12)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v21 = &protocol witness table for Expression<A>;
    v22 = v11;
    v23 = v12;
    v24 = v13;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
  }

  v42[0] = v22;
  v42[1] = v23;
  v42[2] = v24;
  v42[3] = v20;
  v42[4] = v21;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_26C06B6BC(a4, v34);
  v27 = type metadata accessor for Expression(0, a6, v25, v26);
  v38 = v27;
  v39 = &protocol witness table for Expression<A>;
  v35 = v29;
  v36 = v14;
  v37 = v15;
  v33 = xmmword_26C0AC5B0;
  sub_26C06E874(v11, v12, v13);

  sub_26C08114C(v44, v17, v19, &v43, 0, a2 & 1, v42, v40, v34, &v33, v31, v27, &protocol witness table for Expression<A>);

  sub_26C06A56C(v40, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v34, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v42, &qword_280479360, &qword_26C0AC5D8);
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a5[1];
  v25 = *a5;
  v15 = a5[2];
  v39[0] = *a1;
  v39[1] = v9;
  v39[2] = v10;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  v38 = 2;
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v37[4] = &protocol witness table for Expression<A>;
  v37[0] = v11;
  v37[1] = v12;
  v37[2] = v13;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_26C06B6BC(a4, v29);
  v22 = type metadata accessor for Expression(0, a6, v20, v21);
  v33 = v22;
  v34 = &protocol witness table for Expression<A>;
  v30 = v25;
  v31 = v14;
  v32 = v15;
  v28 = xmmword_26C0AC5B0;

  sub_26C08114C(v39, v17, v19, &v38, 0, a2, v37, v35, v29, &v28, v26, v22, &protocol witness table for Expression<A>);

  sub_26C06A56C(v35, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v29, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v37, &qword_280479360, &qword_26C0AC5D8);
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a5[1];
  v32 = *a5;
  v15 = a5[2];
  v47[0] = *a1;
  v47[1] = v9;
  v47[2] = v10;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  v46 = 2;
  if (v12)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v21 = &protocol witness table for Expression<A>;
    v22 = v11;
    v23 = v12;
    v24 = v13;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
  }

  v45[0] = v22;
  v45[1] = v23;
  v45[2] = v24;
  v45[3] = v20;
  v45[4] = v21;
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  sub_26C06B6BC(a4, v37);
  v41 = type metadata accessor for Expression(0, a6, v25, v26);
  v42 = &protocol witness table for Expression<A>;
  v38 = v32;
  v39 = v14;
  v40 = v15;
  v36 = xmmword_26C0AC5B0;
  sub_26C06E874(v11, v12, v13);
  v27 = sub_26C0ABAF0();
  v30 = type metadata accessor for Expression(0, v27, v28, v29);

  sub_26C08114C(v47, v17, v19, &v46, 1, a2 & 1, v45, v43, v37, &v36, v35, v30, &protocol witness table for Expression<A>);

  sub_26C06A56C(v43, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v37, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v45, &qword_280479360, &qword_26C0AC5D8);
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a5[1];
  v28 = *a5;
  v15 = a5[2];
  v42[0] = *a1;
  v42[1] = v9;
  v42[2] = v10;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  v41 = 2;
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v40[4] = &protocol witness table for Expression<A>;
  v40[0] = v11;
  v40[1] = v12;
  v40[2] = v13;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_26C06B6BC(a4, v32);
  v36 = type metadata accessor for Expression(0, a6, v20, v21);
  v37 = &protocol witness table for Expression<A>;
  v33 = v28;
  v34 = v14;
  v35 = v15;
  v31 = xmmword_26C0AC5B0;
  v22 = sub_26C0ABAF0();
  v25 = type metadata accessor for Expression(0, v22, v23, v24);

  sub_26C08114C(v42, v17, v19, &v41, 1, a2, v40, v38, v32, &v31, v29, v25, &protocol witness table for Expression<A>);

  sub_26C06A56C(v38, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v32, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v40, &qword_280479360, &qword_26C0AC5D8);
}

uint64_t TableBuilder.column<A>(_:unique:check:defaultValue:collate:)(uint64_t *a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = a1[1];
  v10 = a1[2];
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v14 = *a4;
  v15 = a4[1];
  v38 = a4[2];
  v39 = *a5;
  v37 = a5[1];
  v48[0] = *a1;
  v48[1] = v9;
  v48[2] = v10;
  v16 = *(a7 + 40);

  v18 = v16(a6, a7);
  v20 = v19;
  v47 = 2;
  if (v11)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v22 = &protocol witness table for Expression<A>;
    v23 = v12;
    v24 = v11;
    v25 = v13;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v21 = 0;
    v22 = 0;
  }

  v26 = v13;
  v46[0] = v23;
  v46[1] = v24;
  v46[2] = v25;
  v46[3] = v21;
  v46[4] = v22;
  if (v15)
  {
    v27 = type metadata accessor for Expression(0, a6, v13, v17);
    v26 = v13;
    v28 = &protocol witness table for Expression<A>;
    v29 = v14;
    v30 = v15;
    v31 = v38;
    v32 = v38;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v32 = 0;
    v27 = 0;
    v28 = 0;
    v31 = v38;
  }

  v45[0] = v29;
  v45[1] = v30;
  v45[2] = v32;
  v45[3] = v27;
  v45[4] = v28;
  memset(v44, 0, sizeof(v44));
  v42 = v39;
  v43 = v37;
  sub_26C06E874(v12, v11, v26);
  sub_26C06E874(v14, v15, v31);
  sub_26C082220(v39, v37);
  v35 = type metadata accessor for Expression(0, a6, v33, v34);
  sub_26C08114C(v48, v18, v20, &v47, 0, a2 & 1, v46, v45, v44, &v42, v40, v35, &protocol witness table for Expression<A>);

  sub_26C082248(v42, v43);
  sub_26C06A56C(v44, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v45, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v46, &qword_280479360, &qword_26C0AC5D8);
}

{
  v9 = a1[1];
  v10 = a1[2];
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v14 = *a4;
  v15 = a4[1];
  v35 = a4[2];
  v31 = a5[1];
  v32 = *a5;
  v42[0] = *a1;
  v42[1] = v9;
  v42[2] = v10;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  v41 = 2;
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v40[4] = &protocol witness table for Expression<A>;
  v40[0] = v12;
  v40[1] = v11;
  v40[2] = v13;
  if (v15)
  {
    v22 = type metadata accessor for Expression(0, a6, v20, v21);
    v23 = &protocol witness table for Expression<A>;
    v24 = v14;
    v25 = v15;
    v26 = v35;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v22 = 0;
    v23 = 0;
  }

  v39[0] = v24;
  v39[1] = v25;
  v39[2] = v26;
  v39[3] = v22;
  v39[4] = v23;
  memset(v38, 0, sizeof(v38));
  v36 = v32;
  v37 = v31;

  sub_26C06E874(v14, v15, v35);
  sub_26C082220(v32, v31);
  v29 = type metadata accessor for Expression(0, a6, v27, v28);
  sub_26C08114C(v42, v17, v19, &v41, 0, a2 & 1, v40, v39, v38, &v36, v33, v29, &protocol witness table for Expression<A>);

  sub_26C082248(v36, v37);
  sub_26C06A56C(v38, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v39, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v40, &qword_280479360, &qword_26C0AC5D8);
}

{
  v9 = a1[1];
  v10 = a1[2];
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v14 = *a4;
  v15 = a4[1];
  v39 = a4[2];
  v40 = *a5;
  v38 = a5[1];
  v49[0] = *a1;
  v49[1] = v9;
  v49[2] = v10;
  v16 = *(a7 + 40);

  v18 = v16(a6, a7);
  v20 = v19;
  v48 = 2;
  if (v11)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v22 = &protocol witness table for Expression<A>;
    v23 = v12;
    v24 = v11;
    v25 = v13;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v21 = 0;
    v22 = 0;
  }

  v26 = v13;
  v47[0] = v23;
  v47[1] = v24;
  v47[2] = v25;
  v47[3] = v21;
  v47[4] = v22;
  if (v15)
  {
    v27 = type metadata accessor for Expression(0, a6, v13, v17);
    v26 = v13;
    v28 = &protocol witness table for Expression<A>;
    v29 = v14;
    v30 = v15;
    v31 = v39;
    v32 = v39;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v32 = 0;
    v27 = 0;
    v28 = 0;
    v31 = v39;
  }

  v46[0] = v29;
  v46[1] = v30;
  v46[2] = v32;
  v46[3] = v27;
  v46[4] = v28;
  memset(v45, 0, sizeof(v45));
  v43 = v40;
  v44 = v38;
  sub_26C06E874(v12, v11, v26);
  sub_26C06E874(v14, v15, v31);
  sub_26C082220(v40, v38);
  v33 = sub_26C0ABAF0();
  v36 = type metadata accessor for Expression(0, v33, v34, v35);
  sub_26C08114C(v49, v18, v20, &v48, 1, a2 & 1, v47, v46, v45, &v43, v41, v36, &protocol witness table for Expression<A>);

  sub_26C082248(v43, v44);
  sub_26C06A56C(v45, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v46, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v47, &qword_280479360, &qword_26C0AC5D8);
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a4[1];
  v28 = *a4;
  v15 = a4[2];
  v30 = a5[1];
  v31 = *a5;
  v42[0] = *a1;
  v42[1] = v9;
  v42[2] = v10;
  v16 = *(a7 + 40);

  v29 = v16(a6, a7);
  v18 = v17;
  v41 = 2;
  if (v12)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v20 = &protocol witness table for Expression<A>;
    v21 = v11;
    v22 = v12;
    v23 = v13;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v19 = 0;
    v20 = 0;
  }

  v40[0] = v21;
  v40[1] = v22;
  v40[2] = v23;
  v40[3] = v19;
  v40[4] = v20;
  v24 = sub_26C0ABAF0();
  v38 = type metadata accessor for Expression(0, v24, v25, v26);
  v39 = &protocol witness table for Expression<A>;
  v37[0] = v28;
  v37[1] = v14;
  v37[2] = v15;
  memset(v36, 0, sizeof(v36));
  v34 = v31;
  v35 = v30;
  sub_26C06E874(v11, v12, v13);

  sub_26C082220(v31, v30);
  sub_26C08114C(v42, v29, v18, &v41, 1, a2 & 1, v40, v37, v36, &v34, v32, v38, &protocol witness table for Expression<A>);

  sub_26C082248(v34, v35);
  sub_26C06A56C(v36, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v37, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v40, &qword_280479360, &qword_26C0AC5D8);
}

{
  v9 = a1[1];
  v10 = a1[2];
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v14 = *a4;
  v15 = a4[1];
  v36 = a4[2];
  v32 = a5[1];
  v33 = *a5;
  v43[0] = *a1;
  v43[1] = v9;
  v43[2] = v10;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  v42 = 2;
  v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v41[4] = &protocol witness table for Expression<A>;
  v41[0] = v12;
  v41[1] = v11;
  v41[2] = v13;
  if (v15)
  {
    v22 = type metadata accessor for Expression(0, a6, v20, v21);
    v23 = &protocol witness table for Expression<A>;
    v24 = v14;
    v25 = v15;
    v26 = v36;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v22 = 0;
    v23 = 0;
  }

  v40[0] = v24;
  v40[1] = v25;
  v40[2] = v26;
  v40[3] = v22;
  v40[4] = v23;
  memset(v39, 0, sizeof(v39));
  v37 = v33;
  v38 = v32;

  sub_26C06E874(v14, v15, v36);
  sub_26C082220(v33, v32);
  v27 = sub_26C0ABAF0();
  v30 = type metadata accessor for Expression(0, v27, v28, v29);
  sub_26C08114C(v43, v17, v19, &v42, 1, a2 & 1, v41, v40, v39, &v37, v34, v30, &protocol witness table for Expression<A>);

  sub_26C082248(v37, v38);
  sub_26C06A56C(v39, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v40, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v41, &qword_280479360, &qword_26C0AC5D8);
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a4[1];
  v15 = a4[2];
  v26 = *a5;
  v24 = *a4;
  v25 = a5[1];
  v37[0] = *a1;
  v37[1] = v9;
  v37[2] = v10;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  v36 = 2;
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v35[4] = &protocol witness table for Expression<A>;
  v35[0] = v11;
  v35[1] = v12;
  v35[2] = v13;
  v20 = sub_26C0ABAF0();
  v33 = type metadata accessor for Expression(0, v20, v21, v22);
  v34 = &protocol witness table for Expression<A>;
  v32[0] = v24;
  v32[1] = v14;
  v32[2] = v15;
  memset(v31, 0, sizeof(v31));
  v29 = v26;
  v30 = v25;

  sub_26C082220(v26, v25);
  sub_26C08114C(v37, v17, v19, &v36, 1, a2, v35, v32, v31, &v29, v27, v33, &protocol witness table for Expression<A>);

  sub_26C082248(v29, v30);
  sub_26C06A56C(v31, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v32, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v35, &qword_280479360, &qword_26C0AC5D8);
}

uint64_t TableBuilder.column<A>(_:unique:check:defaultValue:collate:)(uint64_t *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = *a5;
  v15 = a5[1];
  v40[0] = *a1;
  v40[1] = v9;
  v40[2] = v10;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  v39 = 2;
  if (v12)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v21 = &protocol witness table for Expression<A>;
    v22 = v11;
    v23 = v12;
    v24 = v13;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
  }

  v38[0] = v22;
  v38[1] = v23;
  v38[2] = v24;
  v38[3] = v20;
  v38[4] = v21;
  v25 = *(a7 + 8);
  v37[3] = a6;
  v37[4] = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a4, a6);
  memset(v36, 0, sizeof(v36));
  v34 = v14;
  v35 = v15;
  sub_26C06E874(v11, v12, v13);
  sub_26C082220(v14, v15);
  v29 = type metadata accessor for Expression(0, a6, v27, v28);
  sub_26C08114C(v40, v17, v19, &v39, 0, a2 & 1, v38, v37, v36, &v34, v32, v29, &protocol witness table for Expression<A>);

  sub_26C082248(v34, v35);
  sub_26C06A56C(v36, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v37, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v38, &qword_280479360, &qword_26C0AC5D8);
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = *a5;
  v15 = a5[1];
  v35[0] = *a1;
  v35[1] = v9;
  v35[2] = v10;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  v34 = 2;
  v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v33[4] = &protocol witness table for Expression<A>;
  v33[0] = v11;
  v33[1] = v12;
  v33[2] = v13;
  v20 = *(a7 + 8);
  v32[3] = a6;
  v32[4] = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a4, a6);
  memset(v31, 0, sizeof(v31));
  v29 = v14;
  v30 = v15;

  sub_26C082220(v14, v15);
  v24 = type metadata accessor for Expression(0, a6, v22, v23);
  sub_26C08114C(v35, v17, v19, &v34, 0, a2, v33, v32, v31, &v29, v27, v24, &protocol witness table for Expression<A>);

  sub_26C082248(v29, v30);
  sub_26C06A56C(v31, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v32, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v33, &qword_280479360, &qword_26C0AC5D8);
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = *a5;
  v15 = a5[1];
  v41[0] = *a1;
  v41[1] = v9;
  v41[2] = v10;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  v40 = 2;
  if (v12)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v21 = &protocol witness table for Expression<A>;
    v22 = v11;
    v23 = v12;
    v24 = v13;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
  }

  v39[0] = v22;
  v39[1] = v23;
  v39[2] = v24;
  v39[3] = v20;
  v39[4] = v21;
  v25 = *(a7 + 8);
  v38[3] = a6;
  v38[4] = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a4, a6);
  memset(v37, 0, sizeof(v37));
  v35 = v14;
  v36 = v15;
  sub_26C06E874(v11, v12, v13);
  sub_26C082220(v14, v15);
  v27 = sub_26C0ABAF0();
  v30 = type metadata accessor for Expression(0, v27, v28, v29);
  sub_26C08114C(v41, v17, v19, &v40, 1, a2 & 1, v39, v38, v37, &v35, v33, v30, &protocol witness table for Expression<A>);

  sub_26C082248(v35, v36);
  sub_26C06A56C(v37, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v38, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v39, &qword_280479360, &qword_26C0AC5D8);
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = *a5;
  v15 = a5[1];
  v36[0] = *a1;
  v36[1] = v9;
  v36[2] = v10;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  v35 = 2;
  v34[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v34[4] = &protocol witness table for Expression<A>;
  v34[0] = v11;
  v34[1] = v12;
  v34[2] = v13;
  v20 = *(a7 + 8);
  v33[3] = a6;
  v33[4] = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a4, a6);
  memset(v32, 0, sizeof(v32));
  v30 = v14;
  v31 = v15;

  sub_26C082220(v14, v15);
  v22 = sub_26C0ABAF0();
  v25 = type metadata accessor for Expression(0, v22, v23, v24);
  sub_26C08114C(v36, v17, v19, &v35, 1, a2, v34, v33, v32, &v30, v28, v25, &protocol witness table for Expression<A>);

  sub_26C082248(v30, v31);
  sub_26C06A56C(v32, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v33, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v34, &qword_280479360, &qword_26C0AC5D8);
}

uint64_t TableBuilder.primaryKey<A>(_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC5C0;
  *(inited + 56) = type metadata accessor for Expression(0, a2, v7, v8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  *&v26 = 0x205952414D495250;
  *(&v26 + 1) = 0xEB0000000059454BLL;

  MEMORY[0x26D69A890](32, 0xE100000000000000);
  sub_26C0688D8(inited, &v26);
  v24 = 0x205952414D495250;
  v25 = 0xEB0000000059454BLL;

  MEMORY[0x26D69A890](40, 0xE100000000000000);
  v9 = v28;
  v10 = v29;
  __swift_project_boxed_opaque_existential_1(&v26, v28);
  v11 = v10[1];
  v11(v23, v9, v10);
  v12 = v23[0];
  v13 = v23[1];

  MEMORY[0x26D69A890](v12, v13);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  v15 = v24;
  v14 = v25;
  v11(v23, v9, v10);
  v16 = v23[2];

  __swift_destroy_boxed_opaque_existential_1(&v26);

  swift_beginAccess();
  v17 = *(v22 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_26C06A23C(0, v17[2] + 1, 1, v17, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v22 + 16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_26C06A23C((v19 > 1), v20 + 1, 1, v17, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v22 + 16) = v17;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v29 = &protocol witness table for Expression<A>;
  *&v26 = v15;
  *(&v26 + 1) = v14;
  v27 = v16;
  v17[2] = v20 + 1;
  sub_26C06A3A8(&v26, &v17[5 * v20 + 4]);
  *(v22 + 16) = v17;

  swift_endAccess();
}

uint64_t TableBuilder.primaryKey<A, B>(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  *(inited + 56) = type metadata accessor for Expression(0, a3, v13, v14);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v7;
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  *(inited + 96) = type metadata accessor for Expression(0, a4, v15, v16);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v10;
  *(inited + 80) = v9;
  *(inited + 88) = v11;
  *&v34 = 0x205952414D495250;
  *(&v34 + 1) = 0xEB0000000059454BLL;

  MEMORY[0x26D69A890](32, 0xE100000000000000);
  sub_26C0688D8(inited, &v34);
  v32 = 0x205952414D495250;
  v33 = 0xEB0000000059454BLL;

  MEMORY[0x26D69A890](40, 0xE100000000000000);
  v17 = v36;
  v18 = v37;
  __swift_project_boxed_opaque_existential_1(&v34, v36);
  v19 = v18[1];
  v19(v31, v17, v18);
  v20 = v31[0];
  v21 = v31[1];

  MEMORY[0x26D69A890](v20, v21);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  v23 = v32;
  v22 = v33;
  v19(v31, v17, v18);
  v24 = v31[2];

  __swift_destroy_boxed_opaque_existential_1(&v34);

  swift_beginAccess();
  v25 = *(v30 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v30 + 16) = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_26C06A23C(0, v25[2] + 1, 1, v25, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v30 + 16) = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_26C06A23C((v27 > 1), v28 + 1, 1, v25, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v30 + 16) = v25;
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v37 = &protocol witness table for Expression<A>;
  *&v34 = v23;
  *(&v34 + 1) = v22;
  v35 = v24;
  v25[2] = v28 + 1;
  sub_26C06A3A8(&v34, &v25[5 * v28 + 4]);
  *(v30 + 16) = v25;

  swift_endAccess();
}

uint64_t TableBuilder.primaryKey<A, B, C>(_:_:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = a3[1];
  v36 = *a3;
  v14 = a3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC540;
  *(inited + 56) = type metadata accessor for Expression(0, a4, v16, v17);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v8;
  *(inited + 40) = v7;
  *(inited + 48) = v9;
  *(inited + 96) = type metadata accessor for Expression(0, a5, v18, v19);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v11;
  *(inited + 80) = v10;
  *(inited + 88) = v12;
  *(inited + 136) = type metadata accessor for Expression(0, a6, v20, v21);
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = v36;
  *(inited + 120) = v13;
  *(inited + 128) = v14;
  *&v42 = 0x205952414D495250;
  *(&v42 + 1) = 0xEB0000000059454BLL;

  MEMORY[0x26D69A890](32, 0xE100000000000000);
  sub_26C0688D8(inited, &v42);
  v40 = 0x205952414D495250;
  v41 = 0xEB0000000059454BLL;

  MEMORY[0x26D69A890](40, 0xE100000000000000);
  v22 = v44;
  v23 = v45;
  __swift_project_boxed_opaque_existential_1(&v42, v44);
  v24 = v23[1];
  v24(v39, v22, v23);
  v25 = v39[0];
  v26 = v39[1];

  MEMORY[0x26D69A890](v25, v26);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  v28 = v40;
  v27 = v41;
  v24(v39, v22, v23);
  v29 = v39[2];

  __swift_destroy_boxed_opaque_existential_1(&v42);

  swift_beginAccess();
  v30 = *(v38 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v38 + 16) = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_26C06A23C(0, v30[2] + 1, 1, v30, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v38 + 16) = v30;
  }

  v33 = v30[2];
  v32 = v30[3];
  if (v33 >= v32 >> 1)
  {
    v30 = sub_26C06A23C((v32 > 1), v33 + 1, 1, v30, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v38 + 16) = v30;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v45 = &protocol witness table for Expression<A>;
  *&v42 = v28;
  *(&v42 + 1) = v27;
  v43 = v29;
  v30[2] = v33 + 1;
  sub_26C06A3A8(&v42, &v30[5 * v33 + 4]);
  *(v38 + 16) = v30;

  swift_endAccess();
}

uint64_t TableBuilder.primaryKey<A, B, C, D>(_:_:_:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v40 = *a3;
  v39 = a3[1];
  v16 = a3[2];
  v42 = a4[1];
  v43 = *a4;
  v44 = a4[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC590;
  *(inited + 56) = type metadata accessor for Expression(0, a5, v18, v19);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v10;
  *(inited + 40) = v11;
  *(inited + 48) = v12;
  *(inited + 96) = type metadata accessor for Expression(0, a6, v20, v21);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v13;
  *(inited + 80) = v14;
  *(inited + 88) = v15;
  *(inited + 136) = type metadata accessor for Expression(0, a7, v22, v23);
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = v40;
  *(inited + 120) = v39;
  *(inited + 128) = v16;
  *(inited + 176) = type metadata accessor for Expression(0, a8, v24, v25);
  *(inited + 184) = &protocol witness table for Expression<A>;
  *(inited + 152) = v43;
  *(inited + 160) = v42;
  *(inited + 168) = v44;
  *&v50 = 0x205952414D495250;
  *(&v50 + 1) = 0xEB0000000059454BLL;

  MEMORY[0x26D69A890](32, 0xE100000000000000);
  sub_26C0688D8(inited, &v50);
  v48 = 0x205952414D495250;
  v49 = 0xEB0000000059454BLL;

  MEMORY[0x26D69A890](40, 0xE100000000000000);
  v26 = v52;
  v27 = v53;
  __swift_project_boxed_opaque_existential_1(&v50, v52);
  v28 = v27[1];
  v28(v47, v26, v27);
  v29 = v47[0];
  v30 = v47[1];

  MEMORY[0x26D69A890](v29, v30);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  v32 = v48;
  v31 = v49;
  v28(v47, v26, v27);
  v33 = v47[2];

  __swift_destroy_boxed_opaque_existential_1(&v50);

  swift_beginAccess();
  v34 = *(v46 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v46 + 16) = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_26C06A23C(0, v34[2] + 1, 1, v34, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v46 + 16) = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    v34 = sub_26C06A23C((v36 > 1), v37 + 1, 1, v34, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v46 + 16) = v34;
  }

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v53 = &protocol witness table for Expression<A>;
  *&v50 = v32;
  *(&v50 + 1) = v31;
  v51 = v33;
  v34[2] = v37 + 1;
  sub_26C06A3A8(&v50, &v34[5 * v37 + 4]);
  *(v46 + 16) = v34;

  swift_endAccess();
}

uint64_t sub_26C07F9C4(uint64_t a1)
{
  v2 = v1;
  *&v20 = 0x455551494E55;
  *(&v20 + 1) = 0xE600000000000000;
  MEMORY[0x26D69A890](32, 0xE100000000000000);
  sub_26C0688D8(a1, &v20);
  v18 = 0x455551494E55;
  v19 = 0xE600000000000000;

  MEMORY[0x26D69A890](40, 0xE100000000000000);
  v4 = v22;
  v5 = v23;
  __swift_project_boxed_opaque_existential_1(&v20, v22);
  v6 = v5[1];
  v6(v17, v4, v5);
  v7 = v17[0];
  v8 = v17[1];

  MEMORY[0x26D69A890](v7, v8);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  v10 = v18;
  v9 = v19;
  v6(v17, v4, v5);
  v11 = v17[2];

  __swift_destroy_boxed_opaque_existential_1(&v20);
  swift_beginAccess();
  v12 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_26C06A23C(0, v12[2] + 1, 1, v12, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v2 + 16) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_26C06A23C((v14 > 1), v15 + 1, 1, v12, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v2 + 16) = v12;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v23 = &protocol witness table for Expression<A>;
  *&v20 = v10;
  *(&v20 + 1) = v9;
  v21 = v11;
  v12[2] = v15 + 1;
  sub_26C06A3A8(&v20, &v12[5 * v15 + 4]);
  *(v2 + 16) = v12;

  swift_endAccess();
}

uint64_t TableBuilder.check(_:)(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;

  TableBuilder.check(_:)(v4);
}

{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v18 = &protocol witness table for Expression<A>;
  *&v15 = v4;
  *(&v15 + 1) = v3;
  v16 = v5;

  MEMORY[0x26D69A890](40, 0xE100000000000000);
  v6 = __swift_project_boxed_opaque_existential_1(&v15, v17);
  v8 = *(&v15 + 1);
  v7 = v15;

  MEMORY[0x26D69A890](v7, v8);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  v9 = v6[2];

  __swift_destroy_boxed_opaque_existential_1(&v15);
  swift_beginAccess();
  v10 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_26C06A23C(0, v10[2] + 1, 1, v10, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v2 + 16) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_26C06A23C((v12 > 1), v13 + 1, 1, v10, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v2 + 16) = v10;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v18 = &protocol witness table for Expression<A>;
  *&v15 = 0x204B43454843;
  *(&v15 + 1) = 0xE600000000000000;
  v16 = v9;
  v10[2] = v13 + 1;
  sub_26C06A3A8(&v15, &v10[5 * v13 + 4]);
  *(v2 + 16) = v10;

  swift_endAccess();
}

SwiftSQLite::TableBuilder::Dependency_optional __swiftcall TableBuilder.Dependency.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26C0ABC20();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TableBuilder.Dependency.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4F49544341204F4ELL;
  v3 = 0x4C4C554E20544553;
  v4 = 0x4146454420544553;
  if (v1 != 3)
  {
    v4 = 0x45444143534143;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5443495254534552;
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

uint64_t sub_26C07FFE0()
{
  sub_26C0ABD60();
  sub_26C0AB8D0();

  return sub_26C0ABD80();
}

uint64_t sub_26C0800D0(uint64_t a1)
{
  sub_26C0AB8D0();
}

uint64_t sub_26C0801AC(uint64_t a1)
{
  sub_26C0ABD60();
  sub_26C0AB8D0();

  return sub_26C0ABD80();
}

void sub_26C0802A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000004ELL;
  v4 = 0x4F49544341204F4ELL;
  v5 = 0xE800000000000000;
  v6 = 0x4C4C554E20544553;
  v7 = 0xEB00000000544C55;
  v8 = 0x4146454420544553;
  if (v2 != 3)
  {
    v8 = 0x45444143534143;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5443495254534552;
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

uint64_t TableBuilder.foreignKey<A>(_:references:_:update:delete:)(uint64_t *a1, uint64_t a2, uint64_t *a3, char *a4, char *a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = *a4;
  v14 = *a5;
  v20[0] = *a1;
  v20[1] = v8;
  v20[2] = v9;
  v19[0] = v10;
  v19[1] = v11;
  v19[2] = v12;
  v18 = v13;
  v17 = v14;
  v15 = type metadata accessor for Expression(0, a6, a3, a4);

  sub_26C081A30(v20, a2, v19, &v18, &v17, v6, v15, v15, &protocol witness table for Expression<A>, &protocol witness table for Expression<A>);
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = *a4;
  v15 = *a5;
  v27[0] = *a1;
  v27[1] = v9;
  v27[2] = v10;
  v26[0] = v11;
  v26[1] = v12;
  v26[2] = v13;
  v25 = v14;
  v24 = v15;
  v16 = sub_26C0ABAF0();
  v19 = type metadata accessor for Expression(0, v16, v17, v18);
  v22 = type metadata accessor for Expression(0, a6, v20, v21);

  sub_26C081A30(v27, a2, v26, &v25, &v24, v6, v19, v22, &protocol witness table for Expression<A>, &protocol witness table for Expression<A>);
}

uint64_t TableBuilder.foreignKey<A, B>(_:references:_:update:delete:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, char *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = a2[1];
  v31 = *a2;
  v14 = a2[2];
  v32 = a4[1];
  v34 = *a4;
  v35 = a5[1];
  v36 = *a5;
  v37 = a5[2];
  v38 = *a7;
  v39 = *a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;

  v18 = type metadata accessor for Expression(0, a8, v16, v17);
  *(inited + 56) = v18;
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v11;
  *(inited + 40) = v10;
  *(inited + 48) = v12;
  v21 = type metadata accessor for Expression(0, a9, v19, v20);
  *(inited + 96) = v21;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v31;
  *(inited + 80) = v13;
  *(inited + 88) = v14;

  sub_26C0688D8(inited, v49);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  sub_26C06B6BC(a3, v47);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_26C0AC580;

  *(v22 + 56) = v18;
  *(v22 + 64) = &protocol witness table for Expression<A>;
  *(v22 + 32) = v34;
  *(v22 + 40) = v32;
  *(v22 + 48) = v23;
  *(v22 + 96) = v21;
  *(v22 + 104) = &protocol witness table for Expression<A>;
  *(v22 + 72) = v36;
  *(v22 + 80) = v35;
  *(v22 + 88) = v37;

  sub_26C0688D8(v22, v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_26C067878(v47, v43, &qword_280479378, &qword_26C0AC5F0);
  v42 = v39;
  v41 = v38;
  v24 = v50;
  v25 = v51;
  v26 = __swift_project_boxed_opaque_existential_1(v49, v50);
  v27 = v45;
  v28 = v46;
  v29 = __swift_project_boxed_opaque_existential_1(v44, v45);
  sub_26C081A30(v26, v43, v29, &v42, &v41, v40, v24, v27, v25, v28);
  sub_26C06A56C(v47, &qword_280479378, &qword_26C0AC5F0);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t TableBuilder.foreignKey<A, B, C>(_:references:_:update:delete:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, char *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v15 = a2[1];
  v16 = a2[2];
  v36 = *a2;
  v37 = a3[1];
  v38 = a3[2];
  v39 = *a3;
  v17 = a5[1];
  v18 = a5[2];
  v43 = *a5;
  v44 = a6[2];
  v45 = *a6;
  v46 = a7[1];
  v47 = a7[2];
  v48 = *a7;
  v49 = *a9;
  v50 = *a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC540;

  v41 = type metadata accessor for Expression(0, a10, v20, v21);
  *(inited + 56) = v41;
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v13;
  *(inited + 40) = v12;
  *(inited + 48) = v14;

  v40 = type metadata accessor for Expression(0, a11, v22, v23);
  *(inited + 96) = v40;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v36;
  *(inited + 80) = v15;
  *(inited + 88) = v16;

  v26 = type metadata accessor for Expression(0, a12, v24, v25);
  *(inited + 136) = v26;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = v39;
  *(inited + 120) = v37;
  *(inited + 128) = v38;
  sub_26C0688D8(inited, v60);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  sub_26C06B6BC(a4, v58);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_26C0AC540;

  *(v27 + 56) = v41;
  *(v27 + 64) = &protocol witness table for Expression<A>;
  *(v27 + 32) = v43;
  *(v27 + 40) = v17;
  *(v27 + 48) = v18;

  *(v27 + 72) = v45;
  *(v27 + 80) = v28;
  *(v27 + 96) = v40;
  *(v27 + 104) = &protocol witness table for Expression<A>;
  *(v27 + 88) = v44;

  *(v27 + 136) = v26;
  *(v27 + 144) = &protocol witness table for Expression<A>;
  *(v27 + 112) = v48;
  *(v27 + 120) = v46;
  *(v27 + 128) = v47;
  sub_26C0688D8(v27, v59);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_26C067878(v58, v54, &qword_280479378, &qword_26C0AC5F0);
  v53 = v50;
  v52 = v49;
  v29 = v61;
  v30 = v62;
  v31 = __swift_project_boxed_opaque_existential_1(v60, v61);
  v32 = v56;
  v33 = v57;
  v34 = __swift_project_boxed_opaque_existential_1(v55, v56);
  sub_26C081A30(v31, v54, v34, &v53, &v52, v51, v29, v32, v30, v33);
  sub_26C06A56C(v58, &qword_280479378, &qword_26C0AC5F0);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_26C080BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_26C06B6BC(a1, v11);
  sub_26C06B6BC(a2, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC540;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(inited + 56) = v6;
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x434E455245464552;
  v7 = MEMORY[0x277D84F90];
  *(inited + 40) = 0xEA00000000005345;
  *(inited + 48) = v7;
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_26C0A0E5C(0, v8, v9, (inited + 72));
  *(inited + 136) = v6;
  *(inited + 144) = &protocol witness table for Expression<A>;
  sub_26C06E148(v14, 0, 0xE000000000000000, (inited + 112));
  sub_26C0688D8(inited, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  return sub_26C06A56C(v11, &qword_280479378, &qword_26C0AC5F0);
}

uint64_t TableBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PrimaryKey.hashValue.getter()
{
  v1 = *v0;
  sub_26C0ABD60();
  MEMORY[0x26D69AD00](v1);
  return sub_26C0ABD80();
}

uint64_t sub_26C080E64()
{
  v1 = *v0;
  sub_26C0ABD60();
  MEMORY[0x26D69AD00](v1);
  return sub_26C0ABD80();
}

uint64_t sub_26C080ED8(uint64_t a1)
{
  v2 = *v1;
  sub_26C0ABD60();
  MEMORY[0x26D69AD00](v2);
  return sub_26C0ABD80();
}

uint64_t Module.init(_:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_26C067104(34, 0xE100000000000000, a1, a2);
  v8 = v7;

  *a4 = v6;
  a4[1] = v8;
  a4[2] = a3;
  return result;
}

uint64_t Module.expression.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  sub_26C0688D8(v1[2], v6);
  sub_26C06E148(v6, v3, v4, a1);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_26C080FE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  sub_26C0688D8(v1[2], v6);
  sub_26C06E148(v6, v3, v4, a1);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

char *sub_26C081048(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793F8, &qword_26C0AC848);
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

uint64_t sub_26C08114C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v66 = a8;
  v90[3] = a12;
  v90[4] = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
  (*(*(a12 - 8) + 16))(boxed_opaque_existential_1, a1, a12);
  v21 = *a4;
  v22 = a10[1];
  v65 = *a10;
  sub_26C06B6BC(v90, v79);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v24 = v23;
  v79[9] = &protocol witness table for Expression<A>;
  v79[5] = a2;
  v79[6] = a3;
  v79[7] = MEMORY[0x277D84F90];
  v79[8] = v23;
  if (v21 == 2)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v26 = 0x800000026C0AE020;
    v25 = 0x205952414D495250;
    if (v21)
    {
      v25 = 0xD000000000000019;
    }

    else
    {
      v26 = 0xEB0000000059454BLL;
    }

    v29 = &protocol witness table for Expression<A>;
    v27 = MEMORY[0x277D84F90];
    v28 = v23;
  }

  v79[10] = v25;
  v79[11] = v26;
  v79[12] = v27;
  v79[13] = v28;
  v79[14] = v29;
  if (a5)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v34 = &protocol witness table for Expression<A>;
    v32 = MEMORY[0x277D84F90];
    v31 = 0xE800000000000000;
    v30 = 0x4C4C554E20544F4ELL;
    v33 = v23;
  }

  v79[15] = v30;
  v79[16] = v31;
  v79[17] = v32;
  v79[18] = v33;
  v79[19] = v34;
  if (a6)
  {
    v35 = xmmword_26C0AC5A0;
    v36 = MEMORY[0x277D84F90];
    v37 = &protocol witness table for Expression<A>;
    v38 = v23;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0uLL;
  }

  v82 = v38;
  v83 = v37;
  v80 = v35;
  v81 = v36;
  sub_26C067878(a7, &v73, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v74 + 1))
  {
    sub_26C06A3A8(&v73, &v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_26C0AC580;
    *(v39 + 56) = v24;
    *(v39 + 64) = &protocol witness table for Expression<A>;
    *(v39 + 32) = 0x4B43454843;
    *(v39 + 40) = 0xE500000000000000;
    *(v39 + 48) = MEMORY[0x277D84F90];
    sub_26C06B6BC(&v67, v39 + 72);

    sub_26C0688D8(v39, v84);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v67);
  }

  else
  {
    memset(v84, 0, sizeof(v84));
  }

  sub_26C067878(v66, &v73, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v74 + 1))
  {
    sub_26C06A3A8(&v73, &v67);
    *(&v86 + 1) = v24;
    v87 = &protocol witness table for Expression<A>;
    sub_26C06E148(&v67, 0x20544C5541464544, 0xE800000000000000, &v85);
    __swift_destroy_boxed_opaque_existential_1(&v67);
  }

  else
  {
    v87 = 0;
    v85 = 0u;
    v86 = 0u;
  }

  sub_26C067878(a9, &v73, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v74 + 1))
  {
    v69[0] = v75;
    v69[1] = v76;
    v69[2] = v77;
    v67 = v73;
    v68 = v74;
    sub_26C080BEC(&v67, v69 + 8, v88);
    sub_26C06A56C(&v67, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {
    memset(v88, 0, sizeof(v88));
  }

  v66 = a11;
  if (v22 == 3)
  {
    memset(v89, 0, sizeof(v89));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v40 = swift_allocObject();
    *(v40 + 32) = 0x4554414C4C4F43;
    *(v40 + 16) = xmmword_26C0AC580;
    *(v40 + 56) = v24;
    *(v40 + 64) = &protocol witness table for Expression<A>;
    *(v40 + 40) = 0xE700000000000000;
    *(v40 + 48) = MEMORY[0x277D84F90];
    *(v40 + 96) = &type metadata for Collation;
    *(v40 + 104) = &protocol witness table for Collation;
    v41 = v65;
    *(v40 + 72) = v65;
    *(v40 + 80) = v22;
    sub_26C082220(v41, v22);
    sub_26C0688D8(v40, v89);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  v42 = MEMORY[0x277D84F90];
  for (i = 32; i != 392; i += 40)
  {
    sub_26C067878(&v78[i], &v73, &qword_280479360, &qword_26C0AC5D8);
    v70[0] = v73;
    v70[1] = v74;
    v71 = v75;
    if (*(&v74 + 1))
    {
      sub_26C06A3A8(v70, &v67);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = sub_26C06A23C(0, v42[2] + 1, 1, v42, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v72 = v42;
      }

      v46 = v42[2];
      v45 = v42[3];
      if (v46 >= v45 >> 1)
      {
        v42 = sub_26C06A23C((v45 > 1), v46 + 1, 1, v42, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v72 = v42;
      }

      v48 = *(&v68 + 1);
      v47 = *&v69[0];
      v49 = __swift_mutable_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
      MEMORY[0x28223BE20](v49);
      v51 = &v65 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      sub_26C06A410(v46, v51, &v72, v48, v47);
      __swift_destroy_boxed_opaque_existential_1(&v67);
    }

    else
    {
      sub_26C06A56C(v70, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v42, &v73);

  v53 = v66;
  swift_beginAccess();
  v54 = *(v53 + 16);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  *(v53 + 16) = v54;
  if ((v55 & 1) == 0)
  {
    v54 = sub_26C06A23C(0, v54[2] + 1, 1, v54, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v53 + 16) = v54;
  }

  v57 = v54[2];
  v56 = v54[3];
  if (v57 >= v56 >> 1)
  {
    v54 = sub_26C06A23C((v56 > 1), v57 + 1, 1, v54, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v53 + 16) = v54;
  }

  v58 = *(&v74 + 1);
  v59 = v75;
  v60 = __swift_mutable_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
  MEMORY[0x28223BE20](v60);
  v62 = &v65 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v63 + 16))(v62);
  sub_26C06A410(v57, v62, (v53 + 16), v58, v59);
  __swift_destroy_boxed_opaque_existential_1(&v73);
  *(v53 + 16) = v54;
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v90);
}

uint64_t sub_26C081A30(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v54 = a6;
  v69[3] = a7;
  v69[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  v68[3] = a8;
  v68[4] = a10;
  v18 = __swift_allocate_boxed_opaque_existential_1(v68);
  (*(*(a8 - 8) + 16))(v18, a3, a8);
  sub_26C06B6BC(a2, v66);
  sub_26C06B6BC(v68, &v67);
  v19 = *a4;
  v20 = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC590;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(inited + 56) = v22;
  *(inited + 64) = &protocol witness table for Expression<A>;
  sub_26C06E148(v69, 0x204E474945524F46, 0xEC0000002059454BLL, (inited + 32));
  sub_26C067878(v66, &v62, &qword_280479378, &qword_26C0AC5F0);
  sub_26C080BEC(&v62, v65, (inited + 72));
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  v23 = MEMORY[0x277D84F90];
  if (v19 == 5)
  {
    *(inited + 144) = 0;
    *(inited + 112) = 0u;
    *(inited + 128) = 0u;
    if (v20 != 5)
    {
LABEL_3:
      *&v62 = 0x54454C4544204E4FLL;
      *(&v62 + 1) = 0xEA00000000002045;
      if (v20 <= 1)
      {
        if (v20)
        {
          v25 = 0xE800000000000000;
          v24 = 0x5443495254534552;
        }

        else
        {
          v24 = 0x4F49544341204F4ELL;
          v25 = 0xE90000000000004ELL;
        }
      }

      else if (v20 == 2)
      {
        v25 = 0xE800000000000000;
        v24 = 0x4C4C554E20544553;
      }

      else if (v20 == 3)
      {
        v24 = 0x4146454420544553;
        v25 = 0xEB00000000544C55;
      }

      else
      {
        v25 = 0xE700000000000000;
        v24 = 0x45444143534143;
      }

      MEMORY[0x26D69A890](v24, v25);

      v28 = v62;
      *(inited + 176) = v22;
      *(inited + 184) = &protocol witness table for Expression<A>;
      *(inited + 152) = v28;
      *(inited + 168) = v23;
      goto LABEL_24;
    }
  }

  else
  {
    *&v62 = 0x5441445055204E4FLL;
    *(&v62 + 1) = 0xEA00000000002045;
    if (v19 <= 1)
    {
      if (v19)
      {
        v27 = 0xE800000000000000;
        v26 = 0x5443495254534552;
      }

      else
      {
        v26 = 0x4F49544341204F4ELL;
        v27 = 0xE90000000000004ELL;
      }
    }

    else if (v19 == 2)
    {
      v27 = 0xE800000000000000;
      v26 = 0x4C4C554E20544553;
    }

    else if (v19 == 3)
    {
      v26 = 0x4146454420544553;
      v27 = 0xEB00000000544C55;
    }

    else
    {
      v27 = 0xE700000000000000;
      v26 = 0x45444143534143;
    }

    MEMORY[0x26D69A890](v26, v27);

    v29 = v62;
    *(inited + 136) = v22;
    *(inited + 144) = &protocol witness table for Expression<A>;
    *(inited + 112) = v29;
    *(inited + 128) = v23;
    if (v20 != 5)
    {
      goto LABEL_3;
    }
  }

  *(inited + 184) = 0;
  *(inited + 168) = 0u;
  *(inited + 152) = 0u;
LABEL_24:
  v30 = MEMORY[0x277D84F90];
  v31 = 32;
  v55 = inited;
  do
  {
    sub_26C067878(inited + v31, &v62, &qword_280479360, &qword_26C0AC5D8);
    v56[0] = v62;
    v56[1] = v63;
    v57 = v64;
    if (*(&v63 + 1))
    {
      sub_26C06A3A8(v56, v58);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_26C06A23C(0, v30[2] + 1, 1, v30, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v61 = v30;
      }

      v34 = v30[2];
      v33 = v30[3];
      if (v34 >= v33 >> 1)
      {
        v30 = sub_26C06A23C((v33 > 1), v34 + 1, 1, v30, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v61 = v30;
      }

      v35 = v59;
      v36 = v60;
      v37 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
      MEMORY[0x28223BE20](v37);
      v39 = &v54 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v39);
      sub_26C06A410(v34, v39, &v61, v35, v36);
      __swift_destroy_boxed_opaque_existential_1(v58);
      inited = v55;
    }

    else
    {
      sub_26C06A56C(v56, &qword_280479360, &qword_26C0AC5D8);
    }

    v31 += 40;
  }

  while (v31 != 192);

  sub_26C0688D8(v30, &v62);

  v41 = v54;
  swift_beginAccess();
  v42 = *(v41 + 16);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  *(v41 + 16) = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_26C06A23C(0, v42[2] + 1, 1, v42, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v54 + 16) = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_26C06A23C((v44 > 1), v45 + 1, 1, v42, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
    *(v54 + 16) = v42;
  }

  v46 = *(&v63 + 1);
  v47 = v64;
  v48 = __swift_mutable_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
  MEMORY[0x28223BE20](v48);
  v50 = &v54 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v50);
  v52 = v54;
  sub_26C06A410(v45, v50, (v54 + 16), v46, v47);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  *(v52 + 16) = v42;
  swift_endAccess();
  sub_26C06A56C(v66, &qword_280479378, &qword_26C0AC5F0);
  __swift_destroy_boxed_opaque_existential_1(v69);
  return __swift_destroy_boxed_opaque_existential_1(v68);
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

uint64_t sub_26C082220(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_26C082234(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_26C082248(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_26C082234(a1, a2);
  }

  return a1;
}

unint64_t sub_26C08225C()
{
  result = qword_2804793A0;
  if (!qword_2804793A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804793A0);
  }

  return result;
}

unint64_t sub_26C0822B4()
{
  result = qword_2804793A8;
  if (!qword_2804793A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804793A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TableBuilder.Dependency(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TableBuilder.Dependency(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PrimaryKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrimaryKey(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26C0825CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26C082614(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for ComparisonResult()
{
  if (!qword_2804793B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2804793B0);
    }
  }
}

unint64_t sub_26C0826B4()
{
  result = qword_280B5B098;
  if (!qword_280B5B098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280479408, &qword_26C0AC858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B5B098);
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

uint64_t sub_26C082768(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_26C0ABA50();
  if (!v19)
  {
    return sub_26C0AB9D0();
  }

  v41 = v19;
  v45 = sub_26C0ABBB0();
  v32 = sub_26C0ABBC0();
  sub_26C0ABB90();
  result = sub_26C0ABA40();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_26C0ABA70();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_26C0ABBA0();
      result = sub_26C0ABA60();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C082B88(char a1)
{
  result = 7561825;
  switch(a1)
  {
    case 1:
      result = 0x646E756F72;
      break;
    case 2:
      result = 0x6D6F646E6172;
      break;
    case 3:
      result = 0x6C626D6F646E6172;
      break;
    case 4:
      result = 0x626F6C626F72657ALL;
      break;
    case 5:
      result = 0x6874676E656CLL;
      break;
    case 6:
      result = 0x7265776F6CLL;
      break;
    case 7:
      result = 0x7265707075;
      break;
    case 8:
      result = 0x6D6972746CLL;
      break;
    case 9:
      result = 0x6D69727472;
      break;
    case 10:
      result = 1835627124;
      break;
    case 11:
      result = 0x6563616C706572;
      break;
    case 12:
      result = 0x727473627573;
      break;
    case 13:
      result = 1162561868;
      break;
    case 14:
      result = 20041;
      break;
    case 15:
      result = 1112493127;
      break;
    case 16:
      result = 0x484354414DLL;
      break;
    case 17:
      result = 0x505845474552;
      break;
    case 18:
      result = 0x4554414C4C4F43;
      break;
    case 19:
      result = 0x6C6C756E6669;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26C082D3C@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = sub_26C082B88(a2);
  sub_26C06E288(a1, v5, v6, a3);
}

uint64_t sub_26C082DA8@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = sub_26C082B88(a2);
  v7 = v6;
  sub_26C0688D8(a1, v9);
  sub_26C06E288(v9, v5, v7, a3);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t ExpressionType<>.absoluteValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 8);
  v9[3] = a1;
  v9[4] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  swift_getAssociatedTypeWitness();
  sub_26C082D3C(v9, 0, a3);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

{
  v6 = *(a2 + 8);
  v9[3] = a1;
  v9[4] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  swift_getAssociatedTypeWitness();
  sub_26C082D3C(v9, 0, a3);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t ExpressionType<>.round(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  if (a2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC5C0;
    *(inited + 56) = a3;
    *(inited + 64) = *(a4 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v6, a3);
    sub_26C0688D8(inited, v17);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  else
  {
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_26C0AC580;
    *(v14 + 56) = a3;
    *(v14 + 64) = *(a4 + 8);
    v15 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
    (*(*(a3 - 8) + 16))(v15, v6, a3);
    *(v14 + 96) = MEMORY[0x277D83B88];
    *(v14 + 104) = &protocol witness table for Int;
    *(v14 + 72) = a1;
    sub_26C0688D8(v14, v17);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  sub_26C06E24C(v17, a5, 0x646E756F72, 0xE500000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

{
  v6 = v5;
  if (a2)
  {
    v10 = *(a4 + 8);
    v16[3] = a3;
    v16[4] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v6, a3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    *(inited + 56) = a3;
    *(inited + 64) = *(a4 + 8);
    v14 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(a3 - 8) + 16))(v14, v6, a3);
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = a1;
    sub_26C0688D8(inited, v16);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  sub_26C06E24C(v16, a5, 0x646E756F72, 0xE500000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t static ExpressionType<>.random()@<X0>(void *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = MEMORY[0x277D84F90];

  return sub_26C082DA8(v4, 2, a3);
}

uint64_t sub_26C083388@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, void *a3@<X8>)
{
  sub_26C0688D8(MEMORY[0x277D84F90], v7);
  sub_26C06E24C(v7, a3, a1, a2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t ExpressionType<>.length.getter(uint64_t a1, uint64_t a2)
{
  return sub_26C083E80(a1, a2, 0x6874676E656CLL, 0xE600000000000000, sub_26C06E24C);
}

{
  return sub_26C083E80(a1, a2, 0x6874676E656CLL, 0xE600000000000000, sub_26C06E24C);
}

uint64_t ExpressionType<>.lowercaseString.getter(uint64_t a1, uint64_t a2)
{
  return sub_26C083E80(a1, a2, 0x7265776F6CLL, 0xE500000000000000, sub_26C06E24C);
}

{
  return sub_26C083E80(a1, a2, 0x7265776F6CLL, 0xE500000000000000, sub_26C06E24C);
}

uint64_t ExpressionType<>.uppercaseString.getter(uint64_t a1, uint64_t a2)
{
  return sub_26C083E80(a1, a2, 0x7265707075, 0xE500000000000000, sub_26C06E24C);
}

{
  return sub_26C083E80(a1, a2, 0x7265707075, 0xE500000000000000, sub_26C06E24C);
}

void *ExpressionType<>.like(_:escape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  return sub_26C083F6C(a1, a2, a3, a4, a5, a6, &qword_280479390, &qword_26C0AD880, a7, sub_26C06E24C);
}

{
  return sub_26C083F6C(a1, a2, a3, a4, a5, a6, &qword_280479398, &qword_26C0AC610, a7, sub_26C06E24C);
}

uint64_t ExpressionType<>.like(_:escape:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  return sub_26C084230(a1, a2, a3, a4, a5, &qword_280479390, &qword_26C0AD880, sub_26C06E24C, a6);
}

{
  return sub_26C084230(a1, a2, a3, a4, a5, &qword_280479398, &qword_26C0AC610, sub_26C06E24C, a6);
}

uint64_t ExpressionType<>.glob(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v11 = *(a4 + 8);
  v16[3] = a3;
  v16[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v6, a3);
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = &protocol witness table for String;
  v15[0] = a1;
  v15[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v16, inited + 32);
  sub_26C06B6BC(v15, inited + 72);

  sub_26C06D83C(inited, 1, 1112493127, 0xE400000000000000, &qword_280479390, &qword_26C0AD880, sub_26C06E24C, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

{
  v6 = v5;
  v11 = *(a4 + 8);
  v16[3] = a3;
  v16[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v6, a3);
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = &protocol witness table for String;
  v15[0] = a1;
  v15[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v16, inited + 32);
  sub_26C06B6BC(v15, inited + 72);

  sub_26C06D83C(inited, 1, 1112493127, 0xE400000000000000, &qword_280479398, &qword_26C0AC610, sub_26C06E24C, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t ExpressionType<>.match(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v11 = *(a4 + 8);
  v16[3] = a3;
  v16[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v6, a3);
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = &protocol witness table for String;
  v15[0] = a1;
  v15[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v16, inited + 32);
  sub_26C06B6BC(v15, inited + 72);

  sub_26C06D83C(inited, 1, 0x484354414DLL, 0xE500000000000000, &qword_280479390, &qword_26C0AD880, sub_26C06E24C, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t ExpressionType<>.regexp(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v11 = *(a4 + 8);
  v16[3] = a3;
  v16[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v6, a3);
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = &protocol witness table for String;
  v15[0] = a1;
  v15[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v16, inited + 32);
  sub_26C06B6BC(v15, inited + 72);

  sub_26C06D83C(inited, 1, 0x505845474552, 0xE600000000000000, &qword_280479390, &qword_26C0AD880, sub_26C06E24C, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

{
  v6 = v5;
  v11 = *(a4 + 8);
  v16[3] = a3;
  v16[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v6, a3);
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = &protocol witness table for String;
  v15[0] = a1;
  v15[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v16, inited + 32);
  sub_26C06B6BC(v15, inited + 72);

  sub_26C06D83C(inited, 1, 0x505845474552, 0xE600000000000000, &qword_280479398, &qword_26C0AC610, sub_26C06E24C, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t ExpressionType<>.collate(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  return sub_26C084910(a1, a2, a3, &qword_280479410, &qword_26C0AC868, sub_26C06E24C, a4);
}

{
  return sub_26C084910(a1, a2, a3, &qword_280479430, &qword_26C0AC888, sub_26C06E24C, a4);
}

uint64_t ExpressionType<>.ltrim(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_26C0839B8(a1, a2, a3, 0x6D6972746CLL, 0xE500000000000000, sub_26C06E24C);
}

{
  return sub_26C0839B8(a1, a2, a3, 0x6D6972746CLL, 0xE500000000000000, sub_26C06E24C);
}

uint64_t ExpressionType<>.rtrim(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_26C0839B8(a1, a2, a3, 0x6D69727472, 0xE500000000000000, sub_26C06E24C);
}

{
  return sub_26C0839B8(a1, a2, a3, 0x6D69727472, 0xE500000000000000, sub_26C06E24C);
}

uint64_t sub_26C0839B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t))
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    *(inited + 56) = a2;
    *(inited + 64) = *(a3 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v6, a2);
    v20[0] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479418, &qword_26C0AC870);
    sub_26C068F2C(&qword_280479420, &qword_280479418, &qword_26C0AC870, MEMORY[0x277D83B68]);
    v15 = sub_26C0AB970();
    *(inited + 96) = MEMORY[0x277D837D0];
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = v15;
    *(inited + 80) = v16;
    sub_26C0688D8(inited, v20);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  else
  {
    v17 = *(a3 + 8);
    v20[3] = a2;
    v20[4] = v17;
    v18 = __swift_allocate_boxed_opaque_existential_1(v20);
    (*(*(a2 - 8) + 16))(v18, v6, a2);
  }

  a6(v20, a4, a5);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t ExpressionType<>.trim(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    *(inited + 56) = a2;
    *(inited + 64) = *(a3 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v5, a2);
    v17[0] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479418, &qword_26C0AC870);
    sub_26C068F2C(&qword_280479420, &qword_280479418, &qword_26C0AC870, MEMORY[0x277D83B68]);
    v12 = sub_26C0AB970();
    *(inited + 96) = MEMORY[0x277D837D0];
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = v12;
    *(inited + 80) = v13;
    sub_26C0688D8(inited, v17);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_26C0AC5C0;
    *(v14 + 56) = a2;
    *(v14 + 64) = *(a3 + 8);
    v15 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
    (*(*(a2 - 8) + 16))(v15, v5, a2);
    sub_26C0688D8(v14, v17);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v14 + 32));
  }

  sub_26C06E24C(v17, a4, 1835627124, 0xE400000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t ExpressionType<>.replace(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_26C084B10(a1, a2, a3, a4, a5, a6, sub_26C06E24C);
}

{
  return sub_26C084B10(a1, a2, a3, a4, a5, a6, sub_26C06E24C);
}

uint64_t ExpressionType<>.substring(_:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_26C084C9C(a1, a2, a3, a4, a5, sub_26C06E24C);
}

{
  return sub_26C084C9C(a1, a2, a3, a4, a5, sub_26C06E24C);
}

uint64_t ExpressionType<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_26C084EC8(a1, a2, a3, a4, ExpressionType<>.substring(_:length:));
}

{
  return sub_26C084EC8(a1, a2, a3, a4, ExpressionType<>.substring(_:length:));
}

uint64_t sub_26C083E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t))
{
  v10 = *(a2 + 8);
  v13[3] = a1;
  v13[4] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v5, a1);
  a5(v13, a3, a4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void *sub_26C083F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>, void (*a10)(uint64_t *, void, unint64_t))
{
  if (a4)
  {

    sub_26C0ABB30();

    v29[0] = 40;
    v29[1] = 0xE100000000000000;
    v17 = (*(a6 + 24))(a5, a6);
    MEMORY[0x26D69A890](v17);

    MEMORY[0x26D69A890](0xD000000000000011, 0x800000026C0AE040);
    v18 = (*(a6 + 32))(a5, a6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
    inited = swift_initStackObject();
    v20 = MEMORY[0x277D837D0];
    *(inited + 16) = xmmword_26C0AC580;
    *(inited + 56) = v20;
    *(inited + 64) = &protocol witness table for String;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 96) = v20;
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = a3;
    *(inited + 80) = a4;

    result = sub_26C085C94(inited);
    *a9 = 40;
    a9[1] = 0xE100000000000000;
    a9[2] = v18;
  }

  else
  {
    v24 = *(a6 + 8);
    v29[3] = a5;
    v29[4] = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, v10, a5);
    v28[3] = MEMORY[0x277D837D0];
    v28[4] = &protocol witness table for String;
    v28[0] = a1;
    v28[1] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_26C0AC580;
    sub_26C06B6BC(v29, v26 + 32);
    sub_26C06B6BC(v28, v26 + 72);

    sub_26C06D83C(v26, 1, 1162561868, 0xE400000000000000, a7, a8, a10, a9);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(v28);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  return result;
}

uint64_t sub_26C084230@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, void (*a8)(uint64_t *, void, unint64_t)@<X7>, uint64_t *a9@<X8>)
{
  v10 = v9;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  if (a3)
  {
    v17 = *(a5 + 8);
    v49 = a4;
    v50 = v17;
    v18 = __swift_allocate_boxed_opaque_existential_1(&v47);
    (*(*(a4 - 8) + 16))(v18, v10, a4);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479410, &qword_26C0AC868);
    v46 = &protocol witness table for Expression<A>;
    v42 = v13;
    v43 = v14;
    v44 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    sub_26C06B6BC(&v47, inited + 32);
    sub_26C06B6BC(&v42, inited + 72);
    v39[0] = 32;
    v39[1] = 0xE100000000000000;

    MEMORY[0x26D69A890](1162561868, 0xE400000000000000);
    MEMORY[0x26D69A890](32, 0xE100000000000000);
    sub_26C0688D8(inited, v39);

    v20 = v40;
    v21 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    (*(v21 + 8))(v38, v20, v21);
    v23 = v38[0];
    v22 = v38[1];
    v24 = v38[2];
    __swift_destroy_boxed_opaque_existential_1(v39);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(&v42);
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v47 = 40;
    v48 = 0xE100000000000000;

    MEMORY[0x26D69A890](v23, v22);

    MEMORY[0x26D69A890](0x2045504143534520, 0xEA0000000000293FLL);
    v25 = v47;
    v26 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
    v27 = swift_initStackObject();
    v28 = MEMORY[0x277D837D0];
    *(v27 + 16) = xmmword_26C0AC5C0;
    *(v27 + 56) = v28;
    *(v27 + 64) = &protocol witness table for String;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    v47 = v24;

    sub_26C085C94(v27);

    v30 = v47;
    *a9 = v25;
    a9[1] = v26;
    a9[2] = v30;
  }

  else
  {
    v34 = *(a5 + 8);
    v49 = a4;
    v50 = v34;
    v35 = __swift_allocate_boxed_opaque_existential_1(&v47);
    (*(*(a4 - 8) + 16))(v35, v10, a4);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479410, &qword_26C0AC868);
    v46 = &protocol witness table for Expression<A>;
    v42 = v13;
    v43 = v14;
    v44 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_26C0AC580;
    sub_26C06B6BC(&v47, v36 + 32);
    sub_26C06B6BC(&v42, v36 + 72);

    sub_26C06D83C(v36, 1, 1162561868, 0xE400000000000000, a6, a7, a8, a9);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(&v42);
    return __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  return result;
}

uint64_t sub_26C084910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void (*a6)(uint64_t *, void, unint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v11 = v7;
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a3 + 8);
  v21[3] = a2;
  v21[4] = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v11, a2);
  v20[3] = &type metadata for Collation;
  v20[4] = &protocol witness table for Collation;
  v20[0] = v14;
  v20[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v21, inited + 32);
  sub_26C06B6BC(v20, inited + 72);
  sub_26C082220(v14, v15);
  sub_26C06D83C(inited, 1, 0x4554414C4C4F43, 0xE700000000000000, a4, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_26C084B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t, unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC540;
  *(inited + 56) = a5;
  *(inited + 64) = *(a6 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, v7, a5);
  v17 = MEMORY[0x277D837D0];
  *(inited + 96) = MEMORY[0x277D837D0];
  *(inited + 104) = &protocol witness table for String;
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  *(inited + 136) = v17;
  *(inited + 144) = &protocol witness table for String;
  *(inited + 112) = a3;
  *(inited + 120) = a4;

  sub_26C0688D8(inited, v19);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  a7(v19, 0x6563616C706572, 0xE700000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_26C084C9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  if (a3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    *(inited + 56) = a4;
    *(inited + 64) = *(a5 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v6, a4);
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = a1;
    sub_26C0688D8(inited, v19);
  }

  else
  {
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_26C0AC540;
    *(v15 + 56) = a4;
    *(v15 + 64) = *(a5 + 8);
    v16 = __swift_allocate_boxed_opaque_existential_1((v15 + 32));
    (*(*(a4 - 8) + 16))(v16, v6, a4);
    v17 = MEMORY[0x277D83B88];
    *(v15 + 96) = MEMORY[0x277D83B88];
    *(v15 + 104) = &protocol witness table for Int;
    *(v15 + 72) = a1;
    *(v15 + 136) = v17;
    *(v15 + 144) = &protocol witness table for Int;
    *(v15 + 112) = a2;
    sub_26C0688D8(v15, v19);
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  a6(v19, 0x727473627573, 0xE600000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_26C084EC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v5 = __OFSUB__(a2, result);
  v6 = a2 - result;
  if (!v5)
  {
    return a5(result, v6, 0, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t Collection<>.contains(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = sub_26C0ABA50();
  sub_26C085F58(0x3F, 0xE100000000000000, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
  sub_26C068F2C(&qword_280B5B098, &qword_280479408, &qword_26C0AC858, MEMORY[0x277D83958]);
  v11 = sub_26C0AB810();
  v13 = v12;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33[3] = type metadata accessor for Expression(0, AssociatedTypeWitness, v15, v16);
  v33[4] = &protocol witness table for Expression<A>;
  v33[0] = v7;
  v33[1] = v8;
  v33[2] = v9;
  v28 = 40;
  v29 = 0xE100000000000000;

  MEMORY[0x26D69A890](v11, v13);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  v19 = sub_26C082768(sub_26C085FF4, v24, a2, v17, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v18);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v32 = &protocol witness table for Expression<A>;
  v28 = 40;
  v29 = 0xE100000000000000;
  v30 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v33, inited + 32);
  sub_26C06B6BC(&v28, inited + 72);
  sub_26C06D83C(inited, 1, 20041, 0xE200000000000000, &qword_280479390, &qword_26C0AD880, sub_26C06E24C, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = sub_26C0ABA50();
  sub_26C085F58(0x3F, 0xE100000000000000, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
  sub_26C068F2C(&qword_280B5B098, &qword_280479408, &qword_26C0AC858, MEMORY[0x277D83958]);
  v11 = sub_26C0AB810();
  v13 = v12;

  swift_getAssociatedTypeWitness();
  v14 = sub_26C0ABAF0();
  v33[3] = type metadata accessor for Expression(0, v14, v15, v16);
  v33[4] = &protocol witness table for Expression<A>;
  v33[0] = v7;
  v33[1] = v8;
  v33[2] = v9;
  v28 = 40;
  v29 = 0xE100000000000000;

  MEMORY[0x26D69A890](v11, v13);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  v19 = sub_26C082768(sub_26C086024, v24, a2, v17, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v18);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v32 = &protocol witness table for Expression<A>;
  v28 = 40;
  v29 = 0xE100000000000000;
  v30 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v33, inited + 32);
  sub_26C06B6BC(&v28, inited + 72);
  sub_26C06D83C(inited, 1, 20041, 0xE200000000000000, &qword_280479398, &qword_26C0AC610, sub_26C06E24C, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_26C085468@<X0>(uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(a3 + 56);
  swift_getAssociatedTypeWitness();
  a4[3] = swift_getAssociatedTypeWitness();
  a4[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = swift_checkMetadataState();
  return v6(v7, a3);
}

uint64_t String.like(_:escape:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  if (a3)
  {
    v12 = MEMORY[0x277D837D0];
    v36 = MEMORY[0x277D837D0];
    v37 = &protocol witness table for String;
    v34 = a4;
    v35 = a5;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479410, &qword_26C0AC868);
    v33 = &protocol witness table for Expression<A>;
    v29 = v8;
    v30 = v7;
    v31 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    sub_26C06B6BC(&v34, inited + 32);
    sub_26C06B6BC(&v29, inited + 72);
    v26[0] = 32;
    v26[1] = 0xE100000000000000;

    MEMORY[0x26D69A890](1162561868, 0xE400000000000000);
    MEMORY[0x26D69A890](32, 0xE100000000000000);
    sub_26C0688D8(inited, v26);

    v14 = v27;
    v15 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v15 + 8))(v25, v14, v15);
    v17 = v25[0];
    v16 = v25[1];
    v18 = v25[2];
    __swift_destroy_boxed_opaque_existential_1(v26);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(&v29);
    __swift_destroy_boxed_opaque_existential_1(&v34);
    v34 = 40;
    v35 = 0xE100000000000000;

    MEMORY[0x26D69A890](v17, v16);

    MEMORY[0x26D69A890](0x2045504143534520, 0xEA0000000000293FLL);
    v19 = v34;
    v20 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_26C0AC5C0;
    *(v21 + 56) = v12;
    *(v21 + 64) = &protocol witness table for String;
    *(v21 + 32) = a2;
    *(v21 + 40) = a3;
    v34 = v18;

    sub_26C085C94(v21);

    v23 = v34;
    *a6 = v19;
    a6[1] = v20;
    a6[2] = v23;
  }

  else
  {
    v36 = MEMORY[0x277D837D0];
    v37 = &protocol witness table for String;
    v34 = a4;
    v35 = a5;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479410, &qword_26C0AC868);
    v33 = &protocol witness table for Expression<A>;
    v29 = v8;
    v30 = v7;
    v31 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_26C0AC580;
    sub_26C06B6BC(&v34, v24 + 32);
    sub_26C06B6BC(&v29, v24 + 72);

    sub_26C06D83C(v24, 1, 1162561868, 0xE400000000000000, &qword_280479390, &qword_26C0AD880, sub_26C06E24C, a6);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(&v29);
    return __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  return result;
}

uint64_t ?? infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  v13 = sub_26C0ABAF0();
  v16 = type metadata accessor for Expression(0, v13, v14, v15);
  *(inited + 32) = v10;
  *(inited + 56) = v16;
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 40) = v9;
  *(inited + 48) = v11;
  *(inited + 96) = a3;
  *(inited + 104) = *(a4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);

  sub_26C082DA8(inited, 19, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  return swift_arrayDestroy();
}

uint64_t ?? infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  v12 = sub_26C0ABAF0();
  *(inited + 56) = type metadata accessor for Expression(0, v12, v13, v14);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v6;
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  *(inited + 96) = type metadata accessor for Expression(0, a3, v15, v16);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v9;
  *(inited + 80) = v8;
  *(inited + 88) = v10;

  sub_26C082DA8(inited, 19, a4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  return swift_arrayDestroy();
}

uint64_t ?? infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  v11 = sub_26C0ABAF0();
  v14 = type metadata accessor for Expression(0, v11, v12, v13);
  *(inited + 56) = v14;
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 96) = v14;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v8;
  *(inited + 80) = v7;
  *(inited + 88) = v9;

  sub_26C082DA8(inited, 19, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  return swift_arrayDestroy();
}

void *sub_26C085C94(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26C068DE4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_26C085D9C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26C068CD4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26C085F58(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_26C0AB9E0();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

void *static Module.RTree<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26C0AC5C0;
  *(v11 + 56) = type metadata accessor for Expression(0, a3, v12, v13);
  *(v11 + 64) = &protocol witness table for Expression<A>;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = v10;
  v16 = type metadata accessor for Expression(255, a4, v14, v15);

  v38 = v16;
  swift_getTupleTypeMetadata2();
  result = sub_26C0ABA10();
  if (result)
  {
    v18 = 0;
    v19 = (a2 + 72);
    v20 = v11;
    while (1)
    {
      v21 = sub_26C0AB9F0();
      result = sub_26C0AB9C0();
      if ((v21 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v18, 1))
      {
        goto LABEL_21;
      }

      v39 = (v18 + 1);
      v23 = *(v19 - 1);
      v22 = *v19;
      v24 = *(v19 - 3);
      v40 = *(v19 - 2);
      v25 = v20;
      v27 = *(v19 - 5);
      v26 = *(v19 - 4);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C0AC580;

      *(inited + 32) = v27;
      v20 = v25;
      *(inited + 56) = v38;
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 40) = v26;
      *(inited + 48) = v24;
      *(inited + 96) = v38;
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = v40;
      *(inited + 80) = v23;
      *(inited + 88) = v22;
      v29 = v25[2];
      v30 = v29 + 2;
      v31 = __OFADD__(v29, 2);

      if (v31)
      {
        goto LABEL_22;
      }

      v32 = v20[3] >> 1;
      if (v32 < v30)
      {
        if (v29 <= v30)
        {
          v36 = v29 + 2;
        }

        else
        {
          v36 = v29;
        }

        result = sub_26C06A384(1, v36, 1, v20);
        v20 = result;
        v29 = result[2];
        v32 = result[3] >> 1;
      }

      if ((v32 - v29) < 2)
      {
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayInitWithCopy();

      v33 = v20[2];
      v34 = __OFADD__(v33, 2);
      v35 = v33 + 2;
      if (v34)
      {
        goto LABEL_24;
      }

      v20[2] = v35;
      result = sub_26C0ABA10();
      ++v18;
      v19 += 6;
      if (v39 == result)
      {
        goto LABEL_19;
      }
    }

    result = sub_26C0ABB40();
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v20 = v11;
LABEL_19:
    *a5 = 0x6565727472;
    a5[1] = 0xE500000000000000;
    a5[2] = v20;
  }

  return result;
}

void * infix(_:_:)(void *a1@<X8>)
{
  *a1 = 42;
  a1[1] = 0xE100000000000000;
  a1[2] = MEMORY[0x277D84F90];
}

uint64_t sub_26C086344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v14[-v9 - 8];
  v11 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v11);
  sub_26C06B6BC(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
  swift_dynamicCast();
  (*(a3 + 48))(v10, a2, a3);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return swift_dynamicCast();
}

uint64_t sub_26C086510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C06DF6C(a1, v7);
  if (v7[3])
  {
    sub_26C086344(v7, a2, a3);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Data.fromDatatypeValue(_:)(void *a1)
{

  v2 = sub_26C06C7A0(v1);

  return v2;
}

uint64_t sub_26C08663C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_26C071078(v4, v3);
  return sub_26C070EEC(v4, v3, v4, v3, a1);
}

void static Date.fromDatatypeValue(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_280B5A8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280B5A8F0;
  v3 = sub_26C0AB830();
  v4 = [v2 dateFromString_];

  if (v4)
  {
    sub_26C0AB700();
  }

  else
  {
    __break(1u);
  }
}

uint64_t Date.datatypeValue.getter()
{
  if (qword_280B5A8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_280B5A8F0;
  v1 = sub_26C0AB6F0();
  v2 = [v0 stringFromDate_];

  v3 = sub_26C0AB840();
  return v3;
}

void sub_26C086868(uint64_t *a1@<X8>)
{
  if (qword_280B5A8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280B5A8F0;
  v3 = sub_26C0AB6F0();
  v4 = [v2 stringFromDate_];

  v5 = sub_26C0AB840();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
}

id sub_26C086938()
{
  result = sub_26C086958();
  qword_280B5A8F0 = result;
  return result;
}

id sub_26C086958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479448, &qword_26C0AC940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_26C0AB770();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v8 = sub_26C0AB830();
  [v7 setDateFormat_];

  sub_26C0AB750();
  v9 = sub_26C0AB760();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  sub_26C0AB780();
  v10 = sub_26C0AB7A0();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v2, 1, v10) != 1)
  {
    v12 = sub_26C0AB790();
    (*(v11 + 8))(v2, v10);
  }

  [v7 setTimeZone_];

  return v7;
}

id dateFormatter.getter()
{
  if (qword_280B5A8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_280B5A8F0;

  return v0;
}

void dateFormatter.setter(uint64_t a1)
{
  if (qword_280B5A8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280B5A8F0;
  qword_280B5A8F0 = a1;
}

uint64_t (*dateFormatter.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280B5A8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static UUID.fromDatatypeValue(_:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479440, &qword_26C0AC8D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_26C0AB720();
  v7 = sub_26C0AB740();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a3, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C086E58@<X0>(uint64_t *a1@<X8>)
{
  result = _s10Foundation4UUIDV11SwiftSQLiteE13datatypeValueSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26C086E80(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_26C086F38(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_26C0AB6D0();
  swift_allocObject();
  result = sub_26C0AB690();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26C0AB6E0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

__n128 sub_26C086FCC@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = sub_26C0ABAF0();
  *(a4 + 24) = type metadata accessor for Expression(0, v10, v11, v12);
  *(a4 + 32) = &protocol witness table for Expression<A>;
  *a4 = v8;
  *(a4 + 8) = *(a1 + 1);
  *(a4 + 64) = type metadata accessor for Expression(0, a3, v13, v14);
  *(a4 + 72) = &protocol witness table for Expression<A>;
  *(a4 + 40) = v9;
  result = *(a2 + 1);
  *(a4 + 48) = result;
  return result;
}

__n128 sub_26C087064@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = sub_26C0ABAF0();
  v11 = type metadata accessor for Expression(0, v8, v9, v10);
  *(a3 + 24) = v11;
  *(a3 + 32) = &protocol witness table for Expression<A>;
  *a3 = v6;
  *(a3 + 8) = *(a1 + 1);
  *(a3 + 64) = v11;
  *(a3 + 72) = &protocol witness table for Expression<A>;
  *(a3 + 40) = v7;
  result = *(a2 + 1);
  *(a3 + 48) = result;
  return result;
}

uint64_t Setter.expression.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v1, inited + 32);
  sub_26C06B6BC(v1 + 40, inited + 72);
  v11[0] = 32;
  v11[1] = 0xE100000000000000;
  MEMORY[0x26D69A890](61, 0xE100000000000000);
  MEMORY[0x26D69A890](32, 0xE100000000000000);
  sub_26C0688D8(inited, v11);

  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v5 + 8))(&v9, v4, v5);
  v6 = v9;
  v8 = v10;
  __swift_destroy_boxed_opaque_existential_1(v11);
  *a1 = v6;
  *(a1 + 8) = v8;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  return swift_arrayDestroy();
}

uint64_t sub_26C087228@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v1, inited + 32);
  sub_26C06B6BC(v1 + 40, inited + 72);
  sub_26C085E90(inited, 0, 61, 0xE100000000000000, a1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  return swift_arrayDestroy();
}

uint64_t <- infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = type metadata accessor for Expression(0, a3, a3, a4);
  *a5 = v7;
  a5[1] = v6;
  a5[2] = v8;
  a5[3] = v12;
  a5[8] = v12;
  a5[9] = &protocol witness table for Expression<A>;
  a5[4] = &protocol witness table for Expression<A>;
  a5[5] = v10;
  a5[6] = v9;
  a5[7] = v11;
}

uint64_t <- infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_26C0873AC(a1, a2, a3, a4, sub_26C086FCC);
}

{
  return sub_26C0873AC(a1, a2, a3, a4, sub_26C087064);
}

uint64_t sub_26C0873AC(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void *))
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v12[0] = *a1;
  v12[1] = v5;
  v12[2] = v6;
  v11[0] = v7;
  v11[1] = v8;
  v11[2] = v9;
  (a5)(v12, v11, a3, a4);
}

uint64_t += infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  return sub_26C0874D4(a1, a2, + infix(_:_:), &qword_280479410, &qword_26C0AC868, a3);
}

{
  return sub_26C0874D4(a1, a2, + infix(_:_:), &qword_280479430, &qword_26C0AC888, a3);
}

{
  return sub_26C0874D4(a1, a2, + infix(_:_:), &qword_280479430, &qword_26C0AC888, a3);
}

uint64_t += infix(_:_:)@<X0>(void *a1@<X0>, uint64_t x8_0@<X8>)
{
  return sub_26C0875C4(a1, + infix(_:_:), &qword_280479410, &qword_26C0AC868, x8_0);
}

{
  return sub_26C0875C4(a1, + infix(_:_:), &qword_280479430, &qword_26C0AC888, x8_0);
}

uint64_t sub_26C0874D4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t *__return_ptr, void *, uint64_t *)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a1[1];
  v11 = a1[2];
  v12 = *a2;
  v18[0] = *a1;
  v10 = v18[0];
  v18[1] = v9;
  v18[2] = v11;
  v16 = v12;
  v17 = *(a2 + 1);
  a3(&v19, v18, &v16);
  v13 = v19;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  *a6 = v10;
  *(a6 + 8) = v9;
  *(a6 + 16) = v11;
  *(a6 + 24) = v14;
  *(a6 + 64) = v14;
  *(a6 + 72) = &protocol witness table for Expression<A>;
  *(a6 + 32) = &protocol witness table for Expression<A>;
  *(a6 + 40) = v13;
  *(a6 + 48) = v20;
}

uint64_t sub_26C0875C4@<X0>(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *)@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = a1[1];
  v10 = a1[2];
  v14[0] = *a1;
  v9 = v14[0];
  v14[1] = v8;
  v14[2] = v10;
  a2(&v15, v14);
  v11 = v15;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  *a5 = v9;
  *(a5 + 8) = v8;
  *(a5 + 16) = v10;
  *(a5 + 24) = v12;
  *(a5 + 64) = v12;
  *(a5 + 72) = &protocol witness table for Expression<A>;
  *(a5 + 32) = &protocol witness table for Expression<A>;
  *(a5 + 40) = v11;
  *(a5 + 48) = v16;
}

uint64_t += infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_26C0876D8(a1, a2, a3, a4, a5, + infix<A>(_:_:));
}

{
  return sub_26C0876D8(a1, a2, a3, a4, a5, + infix<A>(_:_:));
}

uint64_t sub_26C0876D8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, uint64_t *, uint64_t *))
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a2;
  v18[0] = *a1;
  v18[1] = v8;
  v18[2] = v9;
  v14 = v18[0];
  v15 = v8;
  v16 = v9;
  v12 = v10;
  v13 = *(a2 + 1);
  (a6)(v17, &v14, &v12, a3, a4, a5);
  v14 = v17[0];
  v15 = v17[1];
  v16 = v17[2];
  <- infix<A>(_:_:)(v18, &v14, a3, a4);
}

uint64_t sub_26C0877E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479428, &qword_26C0AC880);
  v11[3] = MEMORY[0x277D83B88];
  v11[4] = &protocol witness table for Int;
  v11[0] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v12, inited + 32);
  sub_26C06B6BC(v11, inited + 72);

  sub_26C085F30(inited, 1, a5, 0xE100000000000000, a6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t -= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_26C0876D8(a1, a2, a3, a4, a5, - infix<A>(_:_:));
}

{
  return sub_26C0876D8(a1, a2, a3, a4, a5, - infix<A>(_:_:));
}

uint64_t sub_26C087964(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, uint64_t *))
{
  v8 = a1[1];
  v9 = a1[2];
  v15[0] = *a1;
  v15[1] = v8;
  v15[2] = v9;
  v11 = v15[0];
  v12 = v8;
  v13 = v9;
  (a6)(v14, &v11, a2, a3, a4, a5);
  v11 = v14[0];
  v12 = v14[1];
  v13 = v14[2];
  <- infix<A>(_:_:)(v15, &v11, a3, a4);
}

uint64_t *= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_26C0876D8(a1, a2, a3, a4, a5, * infix<A>(_:_:));
}

{
  return sub_26C0876D8(a1, a2, a3, a4, a5, * infix<A>(_:_:));
}

uint64_t sub_26C087AA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t *, uint64_t *)@<X5>, void *a5@<X8>)
{
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a2;
  v18[0] = *a1;
  v18[1] = v7;
  v18[2] = v8;
  v14 = v18[0];
  v15 = v7;
  v16 = v8;
  v12 = v9;
  v13 = *(a2 + 1);
  a4(v17, &v14, &v12);
  v14 = v17[0];
  v15 = v17[1];
  v16 = v17[2];
  <- infix<A>(_:_:)(v18, &v14, a3, v10, a5);
}

uint64_t sub_26C087B68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void (*a3)(uint64_t *__return_ptr, uint64_t *)@<X5>, void *a4@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v14[0] = *a1;
  v14[1] = v6;
  v14[2] = v7;
  v10 = v14[0];
  v11 = v6;
  v12 = v7;
  a3(v13, &v10);
  v10 = v13[0];
  v11 = v13[1];
  v12 = v13[2];
  <- infix<A>(_:_:)(v14, &v10, a2, v8, a4);
}

uint64_t /= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_26C0876D8(a1, a2, a3, a4, a5, / infix<A>(_:_:));
}

{
  return sub_26C0876D8(a1, a2, a3, a4, a5, / infix<A>(_:_:));
}

uint64_t %= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_26C087CAC(a1, a2, a3, a4, % infix<A>(_:_:));
}

{
  return sub_26C087CAC(a1, a2, a3, a4, % infix<A>(_:_:));
}

uint64_t sub_26C087CAC(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, uint64_t *))
{
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a2;
  v17[0] = *a1;
  v17[1] = v7;
  v17[2] = v8;
  v13 = v17[0];
  v14 = v7;
  v15 = v8;
  v11 = v9;
  v12 = *(a2 + 1);
  a5(v16, &v13, &v11);
  v13 = v16[0];
  v14 = v16[1];
  v15 = v16[2];
  <- infix<A>(_:_:)(v17, &v13, a3, a4);
}

uint64_t <<= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_26C087CAC(a1, a2, a3, a4, << infix<A>(_:_:));
}

{
  return sub_26C087CAC(a1, a2, a3, a4, << infix<A>(_:_:));
}

uint64_t sub_26C087DFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *))
{
  v7 = a1[1];
  v8 = a1[2];
  v14[0] = *a1;
  v14[1] = v7;
  v14[2] = v8;
  v10 = v14[0];
  v11 = v7;
  v12 = v8;
  (a5)(v13, &v10, a2);
  v10 = v13[0];
  v11 = v13[1];
  v12 = v13[2];
  <- infix<A>(_:_:)(v14, &v10, a3, a4);
}

uint64_t >>= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_26C087CAC(a1, a2, a3, a4, >> infix<A>(_:_:));
}

{
  return sub_26C087CAC(a1, a2, a3, a4, >> infix<A>(_:_:));
}

uint64_t &= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_26C087CAC(a1, a2, a3, a4, & infix<A>(_:_:));
}

{
  return sub_26C087CAC(a1, a2, a3, a4, & infix<A>(_:_:));
}

uint64_t |= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_26C087CAC(a1, a2, a3, a4, | infix<A>(_:_:));
}

{
  return sub_26C087CAC(a1, a2, a3, a4, | infix<A>(_:_:));
}

uint64_t sub_26C088028@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t *, uint64_t *)@<X4>, void *a5@<X8>)
{
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a2;
  v18[0] = *a1;
  v18[1] = v7;
  v18[2] = v8;
  v14 = v18[0];
  v15 = v7;
  v16 = v8;
  v12 = v9;
  v13 = *(a2 + 1);
  a4(v17, &v14, &v12);
  v14 = v17[0];
  v15 = v17[1];
  v16 = v17[2];
  <- infix<A>(_:_:)(v18, &v14, a3, v10, a5);
}

uint64_t sub_26C0880F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void (*a3)(uint64_t *__return_ptr, uint64_t *)@<X4>, void *a4@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v14[0] = *a1;
  v14[1] = v6;
  v14[2] = v7;
  v10 = v14[0];
  v11 = v6;
  v12 = v7;
  a3(v13, &v10);
  v10 = v13[0];
  v11 = v13[1];
  v12 = v13[2];
  <- infix<A>(_:_:)(v14, &v10, a2, v8, a4);
}

uint64_t ^= infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_26C087CAC(a1, a2, a3, a4, ^ infix<A>(_:_:));
}

{
  return sub_26C087CAC(a1, a2, a3, a4, ^ infix<A>(_:_:));
}

unint64_t sub_26C0881DC()
{
  result = qword_280479458;
  if (!qword_280479458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280479428, &qword_26C0AC880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280479458);
  }

  return result;
}

double sub_26C088250@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479428, &qword_26C0AC880);
  v21 = v8;
  *&v22 = v7;
  *(&v22 + 1) = v9;
  v13 = type metadata accessor for Expression(0, a2, v11, v12);
  v14 = sub_26C0881DC();

  WitnessTable = swift_getWitnessTable();
  ExpressionType.init<A>(_:)(&v21, v10, v13, v14, WitnessTable);
  v16 = v23;
  v17 = v24;
  v18 = v25;
  sub_26C0877E0(v23, v24, v25, 1, a3, &v21);
  v19 = v21;
  *a4 = v16;
  *(a4 + 8) = v17;
  *(a4 + 16) = v18;
  *(a4 + 24) = v10;
  *(a4 + 64) = v10;
  *(a4 + 72) = &protocol witness table for Expression<A>;
  *(a4 + 32) = &protocol witness table for Expression<A>;
  *(a4 + 40) = v19;
  result = *&v22;
  *(a4 + 48) = v22;
  return result;
}

double sub_26C088370@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479428, &qword_26C0AC880);
  v20 = v6;
  *&v21 = v5;
  *(&v21 + 1) = v7;
  v9 = sub_26C0ABAF0();
  v12 = type metadata accessor for Expression(0, v9, v10, v11);
  v13 = sub_26C0881DC();

  WitnessTable = swift_getWitnessTable();
  ExpressionType.init<A>(_:)(&v20, v8, v12, v13, WitnessTable);
  v15 = v22;
  v16 = v23;
  v17 = v24;
  sub_26C0877E0(v22, v23, v24, 1, a2, &v20);
  v18 = v20;
  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v8;
  *(a3 + 64) = v8;
  *(a3 + 72) = &protocol witness table for Expression<A>;
  *(a3 + 32) = &protocol witness table for Expression<A>;
  *(a3 + 40) = v18;
  result = *&v21;
  *(a3 + 48) = v21;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_26C0884B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26C0884F8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t Blob.description.getter()
{
  countAndFlagsBits = Blob.toHex()()._countAndFlagsBits;
  MEMORY[0x26D69A890](countAndFlagsBits);

  MEMORY[0x26D69A890](39, 0xE100000000000000);
  return 10104;
}

Swift::String __swiftcall Blob.toHex()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v20 = MEMORY[0x277D84F90];
    sub_26C06B938(0, v2, 0);
    v3 = (v1 + 32);
    sub_26C08888C();
    do
    {
      v4 = *v3++;
      v5 = v4 >= 0x10;
      if (v4 >= 0x10)
      {
        v6 = 0;
      }

      else
      {
        v6 = 48;
      }

      if (v5)
      {
        v7 = 0xE000000000000000;
      }

      else
      {
        v7 = 0xE100000000000000;
      }

      v8 = sub_26C0AB950();
      v10 = v9;

      MEMORY[0x26D69A890](v8, v10);

      v12 = *(v20 + 16);
      v11 = *(v20 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_26C06B938((v11 > 1), v12 + 1, 1);
      }

      *(v20 + 16) = v12 + 1;
      v13 = v20 + 16 * v12;
      *(v13 + 32) = v6;
      *(v13 + 40) = v7;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
  sub_26C0826B4();
  v14 = sub_26C0AB810();
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t sub_26C088758()
{
  countAndFlagsBits = Blob.toHex()()._countAndFlagsBits;
  MEMORY[0x26D69A890](countAndFlagsBits);

  MEMORY[0x26D69A890](39, 0xE100000000000000);
  return 10104;
}

uint64_t == infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C088830(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26C08888C()
{
  result = qword_280479468;
  if (!qword_280479468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280479468);
  }

  return result;
}

uint64_t sub_26C0888EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_26C088934(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_26C088980(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C088A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26C0889A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C088B88(a1, a2, a3, *v3, &qword_280479470, &qword_26C0ACA30, &qword_280479478, &qword_26C0ACA38);
  *v3 = result;
  return result;
}

void *sub_26C0889E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C088B88(a1, a2, a3, *v3, &qword_280479480, &qword_26C0ACA40, &qword_280479488, &qword_26C0ACA48);
  *v3 = result;
  return result;
}

char *sub_26C088A20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C088CBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26C088A40(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26C088B88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_26C088CBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479400, &qword_26C0AC850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::String __swiftcall Expressible.asSQL()()
{
  (*(v0 + 8))(&v19);
  v1 = v21;
  v2 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v2 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v22 = v19;
  v23 = v20;
  v24 = 0;
  v25 = v2;

  v3 = sub_26C0AB930();
  if (!v4)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
LABEL_22:

    v3 = v8;
    v4 = v9;
    goto LABEL_25;
  }

  v5 = v3;
  v6 = v4;
  v7 = 0;
  v8 = 0;
  v9 = 0xE000000000000000;
  while (1)
  {
    if (v5 != 63 || v6 != 0xE100000000000000)
    {
      v3 = sub_26C0ABC70();
      if ((v3 & 1) == 0)
      {

        v10 = v6;
        goto LABEL_7;
      }
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v1 + 16))
    {
      goto LABEL_24;
    }

    sub_26C06DF6C(v1 + 32 + 40 * v7, &v19);
    sub_26C06DF6C(&v19, &v16);
    if (v17)
    {
      sub_26C06A3A8(&v16, v18);
      sub_26C06B6BC(v18, &v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
      if (swift_dynamicCast())
      {
        v14 = 10104;
        v15 = 0xE200000000000000;
        countAndFlagsBits = Blob.toHex()()._countAndFlagsBits;
        MEMORY[0x26D69A890](countAndFlagsBits);

        MEMORY[0x26D69A890](39, 0xE100000000000000);

        v5 = v14;
        v10 = v15;
      }

      else
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_26C06A3A8(&v16, &v14);
          sub_26C0ABBD0();
          v5 = 0;
          v10 = 0xE000000000000000;
          __swift_destroy_boxed_opaque_existential_1(&v14);
          __swift_destroy_boxed_opaque_existential_1(v18);
          goto LABEL_6;
        }

        v5 = sub_26C067104(39, 0xE100000000000000, v14, v15);
        v10 = v12;
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(&v16);
    }

    else
    {
      sub_26C071BDC(&v16);
      v10 = 0xE400000000000000;
      v5 = 1280070990;
    }

LABEL_6:
    sub_26C071BDC(&v19);
    ++v7;
LABEL_7:
    v19 = v8;
    v20 = v9;

    MEMORY[0x26D69A890](v5, v10);

    v8 = v19;
    v9 = v20;
    v3 = sub_26C0AB930();
    v5 = v3;
    v6 = v4;
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t ExpressionType.init(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26C067104(34, 0xE100000000000000, a1, a2);
  v8 = v7;

  v9 = *(a4 + 40);
  v10 = MEMORY[0x277D84F90];

  return v9(v6, v8, v10, a3, a4);
}

uint64_t sub_26C0891AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C0AC5C0;
  *(v4 + 56) = &type metadata for Blob;
  *(v4 + 64) = &protocol witness table for Blob;
  *(v4 + 32) = a1;

  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

uint64_t sub_26C089238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26C0AC5C0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = &protocol witness table for String;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *a3 = 63;
  a3[1] = 0xE100000000000000;
  a3[2] = v6;
}

uint64_t Expression.template.getter()
{
  v0 = sub_26C0696D0();

  return v0;
}

uint64_t Expression.template.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Expression.bindings.getter()
{
  sub_26C06C114();
}

uint64_t Expression.bindings.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_26C0893F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  *(inited + 56) = a1;
  *(inited + 64) = *(a2 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v8, a1);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  *(inited + 88) = MEMORY[0x277D84F90];
  *(inited + 96) = v14;
  sub_26C0688D8(inited, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  return swift_arrayDestroy();
}

uint64_t static ExpressionType<>.null.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_26C0ABAF0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  (*(*(AssociatedTypeWitness - 8) + 56))(&v14 - v11, 1, 1, AssociatedTypeWitness);
  return ExpressionType<>.init(value:)(v12, a1, a2, a4, a5);
}

uint64_t sub_26C089648()
{
  result = sub_26C067104(34, 0xE100000000000000, 0x4449574F52, 0xE500000000000000);
  qword_280479490 = result;
  *algn_280479498 = v1;
  qword_2804794A0 = MEMORY[0x277D84F90];
  return result;
}

uint64_t rowid.getter@<X0>(void *a1@<X8>)
{
  if (qword_280479350 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_280479498;
  v2 = qword_2804794A0;
  *a1 = qword_280479490;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t cast<A, B>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];

  MEMORY[0x26D69A890](v7, v8);
  MEMORY[0x26D69A890](542327072, 0xE400000000000000);
  v10 = (*(a3 + 40))(a2, a3);
  MEMORY[0x26D69A890](v10);

  result = MEMORY[0x26D69A890](41, 0xE100000000000000);
  *a4 = 0x282054534143;
  a4[1] = 0xE600000000000000;
  a4[2] = v9;
  return result;
}

{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];

  MEMORY[0x26D69A890](v7, v8);
  MEMORY[0x26D69A890](542327072, 0xE400000000000000);
  v10 = (*(a3 + 40))(a2, a3);
  MEMORY[0x26D69A890](v10);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  result = sub_26C0ABAF0();
  *a4 = 0x282054534143;
  a4[1] = 0xE600000000000000;
  a4[2] = v9;
  return result;
}

uint64_t sub_26C0898FC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_26C08997C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26C0899DC@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t (*Connection.createFunction<A>(_:deterministic:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a4;
  v14[5] = a5;

  v15 = sub_26C089DBC(a1, a2, 0, a3, sub_26C089D94, v14, a6, a7);
  v17 = v16;

  if (!v20)
  {
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = v15;
    v19[5] = v17;
    return sub_26C089ECC;
  }

  return result;
}

{
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a4;
  v14[5] = a5;

  v15 = sub_26C08A00C(a1, a2, 0, a3, sub_26C08CB20, v14, a6, a7);
  v17 = v16;

  if (!v20)
  {
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = v15;
    v19[5] = v17;
    return sub_26C08CB78;
  }

  return result;
}

uint64_t (*sub_26C089DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v12 = a4;
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a5;
  v16[5] = a6;

  Connection.createFunction(_:argumentCount:deterministic:_:)(a1, a2, a3, 0, v12, sub_26C08CB08, v16);

  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a1;
  v17[5] = a2;

  return sub_26C08CB14;
}

uint64_t (*sub_26C08A00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v12 = a4;
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a5;
  v16[5] = a6;

  Connection.createFunction(_:argumentCount:deterministic:_:)(a1, a2, a3, 0, v12, sub_26C08CA4C, v16);

  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a1;
  v17[5] = a2;

  return sub_26C08CAFC;
}

uint64_t (*Connection.createFunction<A, B>(_:deterministic:_:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a4;
  v16[7] = a5;

  v17 = sub_26C089DBC(a1, a2, 1, a3, sub_26C08A254, v16, a6, a8);
  v19 = v18;

  if (!v23)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = v17;
    v21[7] = v19;
    return sub_26C08A258;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a4;
  v16[7] = a5;

  v17 = sub_26C089DBC(a1, a2, 1, a3, sub_26C08A3A8, v16, a6, a8);
  v19 = v18;

  if (!v23)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = v17;
    v21[7] = v19;
    return sub_26C08A40C;
  }

  return result;
}

uint64_t (*Connection.createFunction<A, B>(_:deterministic:_:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a4;
  v16[7] = a5;

  v17 = sub_26C08A00C(a1, a2, 1, a3, sub_26C08CB68, v16, a6, a8);
  v19 = v18;

  if (!v23)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = v17;
    v21[7] = v19;
    return sub_26C08CB6C;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a4;
  v16[7] = a5;

  v17 = sub_26C08A00C(a1, a2, 1, a3, sub_26C08AA74, v16, a6, a8);
  v19 = v18;

  if (!v23)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = v17;
    v21[7] = v19;
    return sub_26C08CB70;
  }

  return result;
}

uint64_t sub_26C08A588(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  result = MEMORY[0x28223BE20](a1);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(result + 16))
  {
    sub_26C086510(result + 32, a5, v9);
    a2(v11);
    return (*(v7 + 8))(v11, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26C08A6A0(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26C0AC5C0;
  *(v10 + 56) = type metadata accessor for Expression(0, a5, v11, v12);
  *(v10 + 64) = &protocol witness table for Expression<A>;
  *(v10 + 32) = v8;
  *(v10 + 40) = v7;
  *(v10 + 48) = v9;

  a2(v10);
}

uint64_t sub_26C08A8AC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, char *))
{
  v25 = a4;
  v26 = a6;
  v14 = sub_26C0ABAF0();
  v15 = *(v14 - 8);
  result = MEMORY[0x28223BE20](v14);
  v18 = v23 - v17;
  if (*(a1 + 16))
  {
    v23[1] = v23;
    v24 = a2;
    v19 = MEMORY[0x28223BE20](result);
    v23[-2] = a5;
    v23[-1] = a7;
    MEMORY[0x28223BE20](v19);
    v20 = v26;
    v23[-6] = v25;
    v23[-5] = a5;
    v23[-4] = v20;
    v23[-3] = a7;
    v23[-2] = a8;
    v23[-1] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
    sub_26C0899DC(a9, &v23[-8], MEMORY[0x277D84A98], a5, v22, v18);
    v24(v18);
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26C08AAA0(uint64_t *a1, void (*a2)(uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26C0AC5C0;
  v7 = sub_26C0ABAF0();
  *(v6 + 56) = type metadata accessor for Expression(0, v7, v8, v9);
  *(v6 + 64) = &protocol witness table for Expression<A>;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v5;

  a2(v6);
}

uint64_t (*Connection.createFunction<A, B, C>(_:deterministic:_:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11))(uint64_t a1, uint64_t a2)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_26C089DBC(a1, a2, 2, a3, sub_26C08ACB8, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_26C08ACBC;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_26C089DBC(a1, a2, 2, a3, sub_26C08AE10, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_26C08AE98;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_26C089DBC(a1, a2, 2, a3, sub_26C08B028, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_26C08B068;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_26C089DBC(a1, a2, 2, a3, sub_26C08B5FC, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_26C08B69C;
  }

  return result;
}

uint64_t (*Connection.createFunction<A, B, C>(_:deterministic:_:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11))(uint64_t, uint64_t)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_26C08A00C(a1, a2, 2, a3, sub_26C08CB74, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_26C08CB58;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_26C08A00C(a1, a2, 2, a3, sub_26C08AE10, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_26C08CB5C;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_26C08A00C(a1, a2, 2, a3, sub_26C08B028, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_26C08CB60;
  }

  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a4;
  v16[9] = a5;

  v17 = sub_26C08A00C(a1, a2, 2, a3, sub_26C08C49C, v16, a6, a9);
  v19 = v18;

  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = a7;
    v21[4] = a8;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = a11;
    v21[8] = v17;
    v21[9] = v19;
    return sub_26C08CB64;
  }

  return result;
}

uint64_t sub_26C08B1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  result = MEMORY[0x28223BE20](v12);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(result + 16);
  if (v23)
  {
    v24 = v18;
    v26 = v19;
    result = sub_26C086510(a1 + 32, v19, v20);
    if (v23 != 1)
    {
      sub_26C086510(a1 + 72, a6, a9);
      v24(v22, v14);
      (*(v11 + 8))(v14, a6);
      return (*(v16 + 8))(v22, v26);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C08B3AC(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26C0AC580;
  *(v15 + 56) = type metadata accessor for Expression(0, a6, v16, v17);
  *(v15 + 64) = &protocol witness table for Expression<A>;
  *(v15 + 32) = v9;
  *(v15 + 40) = v10;
  *(v15 + 48) = v11;
  *(v15 + 96) = type metadata accessor for Expression(0, a7, v18, v19);
  *(v15 + 104) = &protocol witness table for Expression<A>;
  *(v15 + 72) = v12;
  *(v15 + 80) = v13;
  *(v15 + 88) = v14;

  a3(v15);
}

uint64_t sub_26C08B7F0@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(char *, char *))
{
  v37 = a4;
  v38 = a7;
  v35 = a9;
  v36 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26C0ABAF0();
  v21 = *(v20 - 8);
  result = MEMORY[0x28223BE20](v20);
  v24 = v31 - v23;
  v25 = *(a1 + 16);
  if (v25)
  {
    v31[0] = result;
    v31[1] = a3;
    v34 = v31;
    v32 = a2;
    v33 = a12;
    v26 = MEMORY[0x28223BE20](result);
    v31[-2] = a5;
    v31[-1] = a8;
    MEMORY[0x28223BE20](v26);
    v27 = v38;
    v31[-8] = v37;
    v31[-7] = a5;
    v31[-6] = a6;
    v31[-5] = v27;
    v31[-4] = a8;
    v31[-3] = a10;
    v31[-2] = v28;
    v31[-1] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
    result = sub_26C0899DC(v33, &v31[-10], MEMORY[0x277D84A98], a5, v30, v24);
    if (v25 != 1)
    {
      sub_26C086510(a1 + 72, a6, a10);
      v32(v24, v19);
      (*(v36 + 8))(v19, a6);
      return (*(v21 + 8))(v24, v31[0]);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C08BA68(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26C0AC580;
  v15 = sub_26C0ABAF0();
  *(v14 + 56) = type metadata accessor for Expression(0, v15, v16, v17);
  *(v14 + 64) = &protocol witness table for Expression<A>;
  *(v14 + 32) = v8;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 96) = type metadata accessor for Expression(0, a7, v18, v19);
  *(v14 + 104) = &protocol witness table for Expression<A>;
  *(v14 + 72) = v11;
  *(v14 + 80) = v12;
  *(v14 + 88) = v13;

  a3(v14);
}

uint64_t sub_26C08BCC4@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(char *, char *))
{
  v37 = a4;
  v38 = a7;
  v39 = a9;
  v40 = a3;
  v17 = sub_26C0ABAF0();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v22 = *(a5 - 8);
  result = MEMORY[0x28223BE20](v19);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 16);
  if (v26)
  {
    v36 = result;
    result = sub_26C086510(a1 + 32, a5, a8);
    if (v26 != 1)
    {
      v34 = &v34;
      v35 = a2;
      v27 = MEMORY[0x28223BE20](result);
      *(&v34 - 2) = a6;
      *(&v34 - 1) = v28;
      MEMORY[0x28223BE20](v27);
      v29 = v38;
      *(&v34 - 8) = v37;
      *(&v34 - 7) = a5;
      *(&v34 - 6) = a6;
      *(&v34 - 5) = v29;
      *(&v34 - 4) = a8;
      *(&v34 - 3) = v30;
      *(&v34 - 2) = v31;
      *(&v34 - 1) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
      sub_26C0899DC(a12, (&v34 - 10), MEMORY[0x277D84A98], a6, v33, v21);
      v35(v25, v21);
      (*(v18 + 8))(v21, v36);
      return (*(v22 + 8))(v25, a5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C08BF2C(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26C0AC580;
  *(v13 + 56) = type metadata accessor for Expression(0, a6, v14, v15);
  *(v13 + 64) = &protocol witness table for Expression<A>;
  *(v13 + 32) = v7;
  *(v13 + 40) = v8;
  *(v13 + 48) = v9;
  v16 = sub_26C0ABAF0();
  *(v13 + 96) = type metadata accessor for Expression(0, v16, v17, v18);
  *(v13 + 104) = &protocol witness table for Expression<A>;
  *(v13 + 72) = v10;
  *(v13 + 80) = v11;
  *(v13 + 88) = v12;

  a3(v13);
}

uint64_t sub_26C08C188@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(char *, char *), uint64_t a13, uint64_t a14)
{
  v53 = a7;
  v54 = a8;
  v52 = a4;
  v20 = sub_26C0ABAF0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v43 - v22;
  v24 = sub_26C0ABAF0();
  result = MEMORY[0x28223BE20](v24);
  v28 = &v43 - v27;
  v55 = a1;
  v29 = *(a1 + 16);
  if (v29)
  {
    v44 = v26;
    v45 = result;
    v46 = v21;
    v47 = a9;
    v48 = v20;
    v49 = a3;
    v50 = a2;
    v51 = &v43;
    v30 = MEMORY[0x28223BE20](result);
    v31 = v54;
    *(&v43 - 2) = a5;
    *(&v43 - 1) = v31;
    MEMORY[0x28223BE20](v30);
    v32 = v53;
    *(&v43 - 8) = v52;
    *(&v43 - 7) = a5;
    *(&v43 - 6) = a6;
    *(&v43 - 5) = v32;
    *(&v43 - 4) = v33;
    *(&v43 - 3) = a10;
    *(&v43 - 2) = v34;
    *(&v43 - 1) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
    result = sub_26C0899DC(a12, (&v43 - 10), MEMORY[0x277D84A98], a5, v36, v28);
    if (v29 != 1)
    {
      v37 = MEMORY[0x28223BE20](a14);
      *(&v43 - 2) = a6;
      *(&v43 - 1) = a10;
      v38 = MEMORY[0x28223BE20](v37);
      v39 = v53;
      *(&v43 - 8) = v52;
      *(&v43 - 7) = a5;
      *(&v43 - 6) = a6;
      *(&v43 - 5) = v39;
      *(&v43 - 4) = v54;
      *(&v43 - 3) = a10;
      *(&v43 - 2) = v40;
      *(&v43 - 1) = v41;
      sub_26C0899DC(v38, (&v43 - 10), MEMORY[0x277D84A98], a6, v42, v23);
      v50(v28, v23);
      (*(v46 + 8))(v23, v48);
      return (*(v44 + 8))(v28, v45);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C08C4F0(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C0AC580;
  v10 = sub_26C0ABAF0();
  *(v9 + 56) = type metadata accessor for Expression(0, v10, v11, v12);
  *(v9 + 64) = &protocol witness table for Expression<A>;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  v13 = sub_26C0ABAF0();
  *(v9 + 96) = type metadata accessor for Expression(0, v13, v14, v15);
  *(v9 + 104) = &protocol witness table for Expression<A>;
  *(v9 + 72) = v6;
  *(v9 + 80) = v7;
  *(v9 + 88) = v8;

  a3(v9);
}

uint64_t sub_26C08C684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  v12 = *(a3 + 56);
  a4[3] = swift_getAssociatedTypeWitness();
  a4[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a4);
  v12(a2, a3);
  return (*(v7 + 8))(v10, a2);
}

uint64_t sub_26C08C7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = sub_26C067104(34, 0xE100000000000000, a2, a3);
  v8 = v7;
  sub_26C0688D8(a1, v10);
  sub_26C06E288(v10, v6, v8, a4);

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_26C08C868@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_26C0ABAF0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  a2(a1);
  v14 = *(a3 - 8);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    result = (*(v11 + 8))(v13, v10);
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    v16 = *(a4 + 56);
    *(a5 + 24) = swift_getAssociatedTypeWitness();
    *(a5 + 32) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a5);
    v16(a3, a4);
    return (*(v14 + 8))(v13, a3);
  }

  return result;
}

uint64_t sub_26C08CA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = sub_26C067104(34, 0xE100000000000000, a2, a3);
  v8 = v7;
  sub_26C0688D8(a1, v10);
  sub_26C0ABAF0();
  sub_26C06E288(v10, v6, v8, a4);

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

unint64_t QueryError.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 24) > 1u)
  {
    if (*(v0 + 24) == 2)
    {
      sub_26C0ABB30();

      v9 = 0xD000000000000012;
      MEMORY[0x26D69A890](v2, v1);
      MEMORY[0x26D69A890](0xD000000000000018, 0x800000026C0AE0D0);
      v6 = MEMORY[0x26D69A940](v3, MEMORY[0x277D837D0]);
      MEMORY[0x26D69A890](v6);

      v4 = 41;
    }

    else
    {
      sub_26C0ABB30();

      v9 = 0xD000000000000022;
      MEMORY[0x26D69A890](v2, v1);
      v4 = 96;
    }

    v5 = 0xE100000000000000;
    goto LABEL_9;
  }

  if (!*(v0 + 24))
  {
    sub_26C0ABB30();

    v9 = 0x2068637573206F4ELL;
    v4 = v2;
    v5 = v1;
LABEL_9:
    MEMORY[0x26D69A890](v4, v5);
    return v9;
  }

  sub_26C0ABB30();

  v9 = 0xD000000000000010;
  MEMORY[0x26D69A890](v2, v1);
  MEMORY[0x26D69A890](0x6C6F63206E692060, 0xED000020736E6D75);
  v7 = MEMORY[0x26D69A940](v3, MEMORY[0x277D837D0]);
  MEMORY[0x26D69A890](v7);

  return v9;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26C08CDD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C08CE20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t static DateFunctions.date(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    sub_26C085F58(0x3F, 0xE100000000000000, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
    sub_26C0826B4();
    v8 = sub_26C0AB810();
    v10 = v9;

    MEMORY[0x26D69A890](v8, v10);

    MEMORY[0x26D69A890](41, 0xE100000000000000);
    v12 = 0x202C3F2865746164;
    v11 = 0xE800000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C8, &qword_26C0AC818);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC5C0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    v17 = inited;

    sub_26C085D9C(v14);
    v15 = sub_26C08D7B4(v17);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26C0AC5C0;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = &protocol witness table for String;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v11 = 0xE700000000000000;
    v12 = 0x293F2865746164;
  }

  *a4 = v12;
  a4[1] = v11;
  a4[2] = v15;
  return result;
}

uint64_t static DateFunctions.time(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    sub_26C085F58(0x3F, 0xE100000000000000, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
    sub_26C0826B4();
    v8 = sub_26C0AB810();
    v10 = v9;

    MEMORY[0x26D69A890](v8, v10);

    MEMORY[0x26D69A890](41, 0xE100000000000000);
    v12 = 0x202C3F28656D6974;
    v11 = 0xE800000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C8, &qword_26C0AC818);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC5C0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    v17 = inited;

    sub_26C085D9C(v14);
    v15 = sub_26C08D7B4(v17);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26C0AC5C0;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = &protocol witness table for String;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v11 = 0xE700000000000000;
    v12 = 0x293F28656D6974;
  }

  *a4 = v12;
  a4[1] = v11;
  a4[2] = v15;
  return result;
}

uint64_t static DateFunctions.datetime(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    sub_26C085F58(0x3F, 0xE100000000000000, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
    sub_26C0826B4();
    v8 = sub_26C0AB810();
    v10 = v9;

    strcpy(v17, "datetime(?, ");
    BYTE5(v17[1]) = 0;
    HIWORD(v17[1]) = -5120;
    MEMORY[0x26D69A890](v8, v10);

    MEMORY[0x26D69A890](41, 0xE100000000000000);
    v12 = v17[0];
    v11 = v17[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C8, &qword_26C0AC818);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC5C0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    v17[0] = inited;

    sub_26C085D9C(v14);
    v15 = sub_26C08D7B4(v17[0]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26C0AC5C0;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = &protocol witness table for String;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v11 = 0xEB00000000293F28;
    v12 = 0x656D697465746164;
  }

  *a4 = v12;
  a4[1] = v11;
  a4[2] = v15;
  return result;
}

uint64_t static DateFunctions.julianday(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    sub_26C085F58(0x3F, 0xE100000000000000, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
    sub_26C0826B4();
    v8 = sub_26C0AB810();
    v10 = v9;

    strcpy(v17, "julianday(?, ");
    HIWORD(v17[1]) = -4864;
    MEMORY[0x26D69A890](v8, v10);

    MEMORY[0x26D69A890](41, 0xE100000000000000);
    v12 = v17[0];
    v11 = v17[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C8, &qword_26C0AC818);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC5C0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    v17[0] = inited;

    sub_26C085D9C(v14);
    v15 = sub_26C08D7B4(v17[0]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26C0AC5C0;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = &protocol witness table for String;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v11 = 0xEC000000293F2879;
    v12 = 0x61646E61696C756ALL;
  }

  *a4 = v12;
  a4[1] = v11;
  a4[2] = v15;
  return result;
}

uint64_t static DateFunctions.strftime(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(a5 + 16);
  if (v11)
  {
    sub_26C085F58(0x3F, 0xE100000000000000, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
    sub_26C0826B4();
    v12 = sub_26C0AB810();
    v14 = v13;

    sub_26C0ABB30();

    MEMORY[0x26D69A890](v12, v14);

    MEMORY[0x26D69A890](41, 0xE100000000000000);
    v15 = 0xEF202C3F202C3F28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C8, &qword_26C0AC818);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = a3;
    *(inited + 56) = a4;
    v21 = inited;

    sub_26C085D9C(v17);
    v18 = sub_26C08D7B4(v21);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26C0AC580;
    v20 = MEMORY[0x277D837D0];
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = &protocol witness table for String;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;
    *(v18 + 96) = v20;
    *(v18 + 104) = &protocol witness table for String;
    *(v18 + 72) = a3;
    *(v18 + 80) = a4;

    v15 = 0xEE00293F202C3F28;
  }

  *a6 = 0x656D697466727473;
  a6[1] = v15;
  a6[2] = v18;
  return result;
}

uint64_t sub_26C08D7B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_26C088980(0, v1, 0);
    v2 = v12;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_26C088980((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26C08D8D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_26C07272C(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v15 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_26C07272C((v9 > 1), v8 + 1, 1);
        v2 = v15;
      }

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
      v14 = &protocol witness table for Expression<A>;
      *&v11 = v6;
      *(&v11 + 1) = v5;
      v12 = v7;
      *(v2 + 16) = v8 + 1;
      sub_26C06A3A8(&v11, v2 + 40 * v8 + 32);
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26C08DA6C(void (*a1)(uint64_t, uint64_t, void))
{
  type metadata accessor for DateFunctions();
  if (qword_280B5A8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280B5A8F0;
  v3 = sub_26C0AB6F0();
  v4 = [v2 stringFromDate_];

  v5 = sub_26C0AB840();
  v7 = v6;

  a1(v5, v7, MEMORY[0x277D84F90]);
}

uint64_t sub_26C08DBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];

  MEMORY[0x26D69A890](v5, v6);
  result = MEMORY[0x26D69A890](41, 0xE100000000000000);
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v7;
  return result;
}

uint64_t ExpressionType<>.distinct.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(a2 + 24))();
  MEMORY[0x26D69A890](v6);

  v7 = (*(a2 + 32))(a1, a2);
  swift_getAssociatedTypeWitness();

  return Expression.init(_:_:)(0x54434E4954534944, 0xE900000000000020, v7, a3);
}

{
  v6 = (*(a2 + 24))();
  MEMORY[0x26D69A890](v6);

  v7 = (*(a2 + 32))(a1, a2);
  swift_getAssociatedTypeWitness();

  return Expression.init(_:_:)(0x54434E4954534944, 0xE900000000000020, v7, a3);
}

uint64_t ExpressionType<>.count.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 8);
  v9[3] = a1;
  v9[4] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  sub_26C06E24C(v9, a3, 0x746E756F63, 0xE500000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t ExpressionType<>.max.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *x8_0@<X8>)
{
  return sub_26C08DF98(a1, a2, 7889261, x8_0);
}

{
  return sub_26C08E170(a1, a2, 7889261, x8_0);
}

uint64_t ExpressionType<>.min.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *x8_0@<X8>)
{
  return sub_26C08DF98(a1, a2, 7235949, x8_0);
}

{
  return sub_26C08E170(a1, a2, 7235949, x8_0);
}

uint64_t ExpressionType<>.sum.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *x8_0@<X8>)
{
  return sub_26C08DF98(a1, a2, 7173491, x8_0);
}

{
  return sub_26C08E170(a1, a2, 7173491, x8_0);
}

uint64_t sub_26C08DF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v8 = *(a2 + 8);
  v11[3] = a1;
  v11[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v4, a1);
  swift_getAssociatedTypeWitness();
  sub_26C0ABAF0();
  sub_26C06E288(v11, a3, 0xE300000000000000, a4);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_26C08E098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t, uint64_t))
{
  v12 = *(a2 + 8);
  v15[3] = a1;
  v15[4] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v7, a1);
  a7(v15, a5, a6);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_26C08E170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v8 = *(a2 + 8);
  v11[3] = a1;
  v11[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v4, a1);
  swift_getAssociatedTypeWitness();
  sub_26C06E288(v11, a3, 0xE300000000000000, a4);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_26C08E264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *, uint64_t, uint64_t))
{
  v13 = *(a2 + 8);
  v16[3] = a1;
  v16[4] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v8, a1);
  a8(v16, a6, a7);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t count(_:)@<X0>(void (*a1)(void *__return_ptr, void *, void *)@<X0>, void *a2@<X8>)
{
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v7[4] = &protocol witness table for Expression<A>;
  a1(v7, v6, v5);
  sub_26C06E24C(v7, a2, 0x746E756F63, 0xE500000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t Statement.deinit()
{
  swift_beginAccess();
  sqlite3_finalize(*(v0 + 16));

  return v0;
}

uint64_t Statement.columnCount.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*Statement.columnCount.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = Statement.columnCount.getter();
  return sub_26C08E44C;
}

void *sub_26C08E44C(void *result)
{
  v1 = result[1];
  *(v1 + 32) = *result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*Statement.columnNames.modify(int64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Statement.columnNames.getter();
  return sub_26C08E4B4;
}

void *Statement.row.setter(void *result)
{
  v2 = result[1];
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t (*Statement.row.modify(void *a1))()
{
  a1[2] = v1;
  Statement.row.getter(a1);
  return sub_26C08E518;
}

void *sub_26C08E518(void *result)
{
  v2 = result[1];
  v1 = result[2];
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Statement.bind(_:)(uint64_t a1)
{
  sub_26C06A5F0(a1);
}

{
  sub_26C06A5F0(a1);
}

{
  swift_beginAccess();
  sqlite3_reset(*(v1 + 16));
  sqlite3_clear_bindings(*(v1 + 16));
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v3 = *v12;
      v2 = v12[1];
      sub_26C06DF6C(*(a1 + 56) + 40 * v11, &v20);
      v18 = v20;
      v19 = v21;
      v13 = v22;

      if (!v2)
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      v22 = v13;
      v14 = *(v1 + 16);
      v15 = sub_26C0AB8B0();
      v16 = sqlite3_bind_parameter_index(v14, (v15 + 32));

      if (v16 < 1)
      {
        goto LABEL_14;
      }

      v7 &= v7 - 1;

      sub_26C06D998(&v20, v16);
      sub_26C071BDC(&v20);
      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_14:
    sub_26C0ABB30();

    MEMORY[0x26D69A890](v3, v2);
    result = sub_26C0ABBE0();
    __break(1u);
  }

  return result;
}

void Statement.scalar(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = sub_26C06A5F0(a1);
    swift_beginAccess();
    v5 = *(v4 + 16);

    sqlite3_reset(v5);
    Statement.step()();
    if (!v6)
    {
      Statement.row.getter(&v8);
      Cursor.subscript.getter(0, a2);
    }
  }

  else
  {
    swift_beginAccess();
    sqlite3_reset(*(v2 + 16));
    Statement.step()();
    if (!v7)
    {
      Statement.row.getter(&v8);
      Cursor.subscript.getter(0, a2);
    }
  }
}

uint64_t Statement.scalar(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_26C06A5F0(a1);
  swift_beginAccess();
  v4 = *(v3 + 16);

  sqlite3_reset(v4);
  Statement.step()();
  if (!v5)
  {
    Statement.row.getter(&v7);
    Cursor.subscript.getter(0, a2);
  }
}

{
  Statement.bind(_:)(a1);
  swift_beginAccess();
  sqlite3_reset(*(v2 + 16));
  Statement.step()();
  if (!v4)
  {
    Statement.row.getter(&v6);
    Cursor.subscript.getter(0, a2);
  }
}

uint64_t Statement.makeIterator()()
{
  swift_beginAccess();
  sqlite3_reset(*(v0 + 16));
}

uint64_t sub_26C08ECE8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  result = sqlite3_reset(*(v3 + 16));
  *a1 = v3;
  return result;
}

void *sub_26C08ED44()
{
  v1 = sub_26C08F704(*v0);

  return v1;
}

uint64_t Array.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26C0ABAF0();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v29 = *(a2 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v32 = sub_26C0AB7E0();
  v17 = *(a4 + 16);
  v18 = v31;
  v30 = a1;
  v31 = a3;
  v17(a3, a4);
  if (v18)
  {
    (*(*(v31 - 8) + 8))(v30);
  }

  else
  {
    v26 = v17;
    v27 = a4 + 16;
    v20 = *(v29 + 48);
    v19 = v29 + 48;
    v28 = a4;
    v29 = v20;
    v25 = (v19 - 16);
    while ((v29)(v11, 1, a2) != 1)
    {
      (*v25)(v16, v11, a2);
      (*(v19 - 32))(v14, v16, a2);
      sub_26C0ABA20();
      sub_26C0ABA00();
      (*(v19 - 40))(v16, a2);
      v26(v31, v28);
    }

    (*(*(v31 - 8) + 8))(v30);
    (*(v23 + 8))(v11, v24);
    return v32;
  }
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.failableNext()()
{
  v1 = Statement.step()();
  v2 = 0;
  if (!v3 && v1)
  {
    Statement.row.getter(v4);
    sub_26C06C95C(v4[0], v4[1]);
  }

  result.value._rawValue = v2;
  result.is_nil = v0;
  return result;
}

void sub_26C08F1F4(void *a1@<X8>)
{
  v2 = Statement.step()();
  if (!v3)
  {
    if (v2)
    {
      Statement.row.getter(v5);
      sub_26C06C95C(v5[0], v5[1]);
    }

    else
    {
      v4 = 0;
    }

    *a1 = v4;
  }
}

void sub_26C08F258(void *a1@<X8>)
{
  v2 = Statement.step()();
  if (v3)
  {
    MEMORY[0x26D69B350](v3);
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  if (!v2)
  {
    goto LABEL_5;
  }

  Statement.row.getter(v5);
  sub_26C06C95C(v5[0], v5[1]);
LABEL_6:
  *a1 = v4;
}

const char *Statement.description.getter()
{
  swift_beginAccess();
  result = sqlite3_sql(*(v0 + 16));
  if (result)
  {
    return sub_26C0AB910();
  }

  __break(1u);
  return result;
}

const char *sub_26C08F308()
{
  v1 = *v0;
  swift_beginAccess();
  result = sqlite3_sql(*(v1 + 16));
  if (result)
  {
    return sub_26C0AB910();
  }

  __break(1u);
  return result;
}

double Cursor.subscript.getter(uint64_t iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (iCol <= 0x7FFFFFFF)
  {
    return sqlite3_column_double(*v1, iCol);
  }

  __break(1u);
  return result;
}

uint64_t Cursor.subscript.getter(uint64_t iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (iCol > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  iCol = sqlite3_column_text(*v1, iCol);
  if (!iCol)
  {
LABEL_9:
    __break(1u);
    return iCol;
  }

  return sub_26C0AB920();
}

uint64_t Cursor.subscript.getter@<X0>(uint64_t iCol@<X0>, void *a2@<X8>)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = iCol;
  if (iCol > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return iCol;
  }

  v5 = *v2;
  iCol = sqlite3_column_blob(*v2, iCol);
  if (iCol)
  {
    v6 = iCol;
    v7 = sqlite3_column_bytes(v5, v4);

    return Blob.init(bytes:length:)(v6, v7, a2);
  }

  else
  {
    *a2 = MEMORY[0x277D84F90];
  }

  return iCol;
}

BOOL Cursor.subscript.getter(_BOOL8 iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (iCol <= 0x7FFFFFFF)
  {
    return sqlite3_column_int64(*v1, iCol) != 0;
  }

  __break(1u);
  return iCol;
}

sqlite3_int64 sub_26C08F4DC(sqlite3_int64 iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (iCol <= 0x7FFFFFFF)
  {
    return sqlite3_column_int64(*v1, iCol);
  }

  __break(1u);
  return iCol;
}

uint64_t Cursor.makeIterator()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804794A8, &qword_26C0ACC98);
  result = swift_allocObject();
  *(result + 16) = sub_26C08FEAC;
  *(result + 24) = v4;
  return result;
}

double sub_26C08F5A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6 >= a2)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *&result = 1;
    *(a3 + 24) = xmmword_26C0ACC80;
  }

  else
  {
    swift_beginAccess();
    *(a1 + 16) = v6 + 1;
    Cursor.subscript.getter(v6, a3);
  }

  return result;
}

uint64_t sub_26C08F64C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804794A8, &qword_26C0ACC98);
  result = swift_allocObject();
  *(result + 16) = sub_26C090070;
  *(result + 24) = v6;
  *a1 = result;
  return result;
}

void *sub_26C08F704(uint64_t a1)
{
  swift_beginAccess();
  sqlite3_reset(*(a1 + 16));
  sub_26C06CD30();
  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90] + 32;
  v7 = *(a1 + 24);
  v65 = v7;
  v66 = a1;
  while (1)
  {
    if (qword_280B5AF70 != -1)
    {
      swift_once();
    }

    sub_26C0ABAA0();
    v8 = v74;
    v9 = v75;
    v10 = sub_26C06CD98();
    if ((v9 & 1) != 0 || v8 != v10)
    {
      v17 = *(v7 + 88);
      sub_26C0ABAD0();

      if ((v77 & 1) == 0)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v11 = sqlite3_step(*(a1 + 16));
      if (qword_280B5B0A0 != -1)
      {
        swift_once();
      }

      v12 = off_280B5B0A8;
      if (!*(off_280B5B0A8 + 2) || (v13 = MEMORY[0x26D69ACD0](*(off_280B5B0A8 + 5), v11, 4), v14 = -1 << v12[32], v15 = v13 & ~v14, ((*&v12[((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v15) & 1) == 0))
      {
LABEL_79:
        swift_beginAccess();
        v13 = *(v7 + 16);
        if (!v13)
        {
          goto LABEL_94;
        }

        v13 = sqlite3_errmsg(v13);
        if (!v13)
        {
          goto LABEL_95;
        }

        sub_26C0AB910();

LABEL_82:
        v59 = v5[3];
        if (v59 >= 2)
        {
          v60 = v59 >> 1;
          v42 = __OFSUB__(v60, v3);
          v61 = v60 - v3;
          if (v42)
          {
            goto LABEL_92;
          }

          v5[2] = v61;
        }

        return v5;
      }

      v16 = ~v14;
      while (*(*(v12 + 6) + 4 * v15) != v11)
      {
        v15 = (v15 + 1) & v16;
        if (((*&v12[((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v15) & 1) == 0)
        {
          goto LABEL_79;
        }
      }

      if (v11 != 100)
      {
        goto LABEL_82;
      }
    }

    v69 = v5;
    v70 = v6;
    v67 = v3;
    v68 = v4;
    LODWORD(v13) = Statement.row.getter(&v74);
    if (v75 >= 1)
    {
      break;
    }

    v19 = 0;
    v73 = MEMORY[0x277D84F90];
    v23 = v1;
LABEL_57:
    v43 = v73;
    v44 = v73[3];
    v45 = v70;
    if (v44 >= 2)
    {
      v46 = v44 >> 1;
      v42 = __OFSUB__(v46, v19);
      v47 = v46 - v19;
      if (v42)
      {
        goto LABEL_90;
      }

      v73[2] = v47;
    }

    if (v67)
    {
      v1 = v23;
      v7 = v65;
      a1 = v66;
      v4 = v68;
      v5 = v69;
      v3 = v67 - 1;
      if (__OFSUB__(v67, 1))
      {
        goto LABEL_89;
      }
    }

    else
    {
      v4 = v68;
      v48 = v69[3];
      a1 = v66;
      if (((v48 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_91;
      }

      v1 = v23;
      v49 = v48 & 0xFFFFFFFFFFFFFFFELL;
      if (v49 <= 1)
      {
        v50 = 1;
      }

      else
      {
        v50 = v49;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804794C8, "b!");
      v51 = swift_allocObject();
      v52 = _swift_stdlib_malloc_size(v51);
      v53 = v52 - 32;
      if (v52 < 32)
      {
        v53 = v52 - 25;
      }

      v54 = v53 >> 3;
      v51[2] = v50;
      v51[3] = 2 * (v53 >> 3);
      v55 = (v51 + 4);
      v56 = v69[3] >> 1;
      if (v69[2])
      {
        v57 = v69 + 4;
        if (v51 != v69 || v55 >= v57 + 8 * v56)
        {
          memmove(v51 + 4, v57, 8 * v56);
        }

        v69[2] = 0;
      }

      v45 = (v55 + 8 * v56);
      v58 = (v54 & 0x7FFFFFFFFFFFFFFFLL) - v56;

      v5 = v51;
      v7 = v65;
      v43 = v73;
      v42 = __OFSUB__(v58, 1);
      v3 = v58 - 1;
      if (v42)
      {
        goto LABEL_89;
      }
    }

    *v45 = v43;
    v6 = (v45 + 1);
  }

  v18 = 0;
  v19 = 0;
  v20 = v74;
  v71 = v75;
  v21 = (MEMORY[0x277D84F90] + 32);
  v72 = v74;
  v73 = MEMORY[0x277D84F90];
  v22 = v75;
  v23 = v1;
  while (v18 != 0x80000000)
  {
    LODWORD(v13) = sqlite3_column_type(v20, v18);
    if (v13 <= 2)
    {
      if (v13 == 1)
      {
        v13 = sqlite3_column_int64(v20, v18);
        v24 = *&v13;
        v25 = MEMORY[0x277D84A28];
        v26 = &protocol witness table for Int64;
        if (v19)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_96;
        }

        v24 = sqlite3_column_double(v20, v18);
        v25 = MEMORY[0x277D839F8];
        v26 = &protocol witness table for Double;
        if (v19)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      switch(v13)
      {
        case 3:
          v13 = sqlite3_column_text(v20, v18);
          if (!v13)
          {
            goto LABEL_93;
          }

          v13 = sub_26C0AB920();
          v24 = *&v13;
          v23 = v27;
          v25 = MEMORY[0x277D837D0];
          v26 = &protocol witness table for String;
          if (v19)
          {
            goto LABEL_53;
          }

          break;
        case 5:
          v23 = 0;
          v24 = 0.0;
          v25 = 0;
          v26 = 0;
          if (v19)
          {
            goto LABEL_53;
          }

          break;
        case 4:
          v13 = sqlite3_column_blob(v20, v18);
          v28 = v20;
          if (v13)
          {
            v29 = v13;
            LODWORD(v13) = sqlite3_column_bytes(v28, v18);
            if (v13)
            {
              v30 = v23;
              v31 = v13;
              if (v13 <= 0)
              {
                v24 = MEMORY[0x277D84F90];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479460, "~#");
                v24 = COERCE_DOUBLE(swift_allocObject());
                v32 = _swift_stdlib_malloc_size(*&v24);
                *(*&v24 + 16) = v31;
                *(*&v24 + 24) = 2 * v32 - 64;
              }

              LODWORD(v13) = memcpy((*&v24 + 32), v29, v31);
              v23 = v30;
              v22 = v71;
            }

            else
            {
              v24 = MEMORY[0x277D84F90];
            }

            v25 = &type metadata for Blob;
            v26 = &protocol witness table for Blob;
            v20 = v72;
            if (v19)
            {
              goto LABEL_53;
            }
          }

          else
          {
            v24 = MEMORY[0x277D84F90];
            v25 = &type metadata for Blob;
            v26 = &protocol witness table for Blob;
            if (v19)
            {
              goto LABEL_53;
            }
          }

          break;
        default:
          goto LABEL_96;
      }
    }

    v33 = v73[3];
    if (((v33 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_88;
    }

    v34 = v23;
    v35 = v33 & 0xFFFFFFFFFFFFFFFELL;
    if (v35 <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = v35;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
    v37 = swift_allocObject();
    v38 = (_swift_stdlib_malloc_size(v37) - 32) / 40;
    v37[2] = v36;
    v37[3] = 2 * v38;
    v39 = (v37 + 4);
    v40 = v73[3] >> 1;
    if (v73[2])
    {
      v41 = v73 + 4;
      if (v37 != v73 || v39 >= v41 + 40 * v40)
      {
        memmove(v37 + 4, v41, 40 * v40);
      }

      v73[2] = 0;
    }

    v21 = (v39 + 40 * v40);
    v19 = (v38 & 0x7FFFFFFFFFFFFFFFLL) - v40;

    v73 = v37;
    v23 = v34;
    v22 = v71;
    v20 = v72;
LABEL_53:
    v42 = __OFSUB__(v19--, 1);
    if (v42)
    {
      goto LABEL_87;
    }

    ++v18;
    *v21 = v24;
    *(v21 + 1) = v23;
    v21[2] = 0.0;
    *(v21 + 3) = v25;
    *(v21 + 4) = v26;
    v21 += 5;
    if (v22 == v18)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  v77 = 0;
  v78 = 0xE000000000000000;
  v63 = v13;
  sub_26C0ABB30();

  v77 = 0xD000000000000019;
  v78 = 0x800000026C0AE190;
  v76 = v63;
  v64 = sub_26C0ABC60();
  MEMORY[0x26D69A890](v64);

  result = sub_26C0ABBE0();
  __break(1u);
  return result;
}

unint64_t sub_26C08FE58()
{
  result = qword_280B5A8E0;
  if (!qword_280B5A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B5A8E0);
  }

  return result;
}